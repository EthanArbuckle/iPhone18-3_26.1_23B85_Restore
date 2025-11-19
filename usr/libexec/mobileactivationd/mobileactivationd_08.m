uint64_t sub_10019F1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v21 = v7 - 1;
  v22 = __ROR8__((v16 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((a6 - v22) & a7) + v22 - 0x6AF7234D0CC131D5 - ((v22 - 0x6AF7234D0CC131D5) & a7);
  v24 = v23 ^ v13;
  v25 = v23 ^ v14;
  v26 = (__ROR8__(v24, 8) + v25) ^ v17;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = ((a2 | (2 * (v28 + v27))) - (v28 + v27) + v18) ^ a3;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - (a4 & (2 * (v31 + v30))) + a5) ^ v9;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v15;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v12;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v20;
  v39 = __ROR8__(v38, 8);
  v40 = __ROR8__(v37, 61);
  *(a1 + v21) = ((((v11 & (2 * (v39 + (v38 ^ v40)))) - (v39 + (v38 ^ v40)) + v10) ^ 0xE831AF248D427C36) >> (8 * ((v16 + v21) & 7))) ^ *(v16 + v21);
  return (*(v19 + 8 * ((210 * (v21 != 0)) ^ (v8 - 1156))))();
}

uint64_t sub_10019FE94@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v57 = (a1 ^ 0xBC59953u) + STACK[0x210];
  STACK[0x930] = v57;
  return (*(v56 + 8 * ((a56 + 6657) ^ (26 * (v57 <= a21)))))();
}

uint64_t sub_10019FEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1875091903 * ((&a14 + 2088443143 - 2 * (&a14 & 0x7C7B1D07)) ^ 0x4A0E9E84);
  a15 = (v20 ^ 0x793DFFAB) + ((2 * v20) & 0xF27BFF56) - 1495353601 + v23;
  a16 = v23 + 7724;
  a17 = a11;
  (*(v22 + 77160))(&a14);
  v24 = 1824088897 * ((((2 * &a14) | 0x69D59FE2) - &a14 - 887803889) ^ 0x6C831C93);
  a16 = (v19 ^ 0xFEF6FF8A) + ((2 * v19) & 0xFDEDFF14) - v24 + 1336797952;
  a14 = v24 + 3757;
  a17 = v18;
  a18 = a11;
  v25 = (*(v22 + 77048))(&a14);
  return (*(v22 + 8 * ((10204 * (a15 == v21)) ^ 0x5E2u)))(v25);
}

uint64_t sub_1001A005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 4484) | 0x1104;
  v6 = ((v5 - 552) ^ 0xFFFFFFFFFFFFE63BLL) + v2;
  *(a1 + v6) = *(a2 + v6);
  return (*(v4 + 8 * ((1920 * (v6 != 0)) ^ v5)))();
}

uint64_t sub_1001A00A0()
{
  v3 = 608 * (v0 ^ 0x1775);
  (*(v2 + 8 * (v0 + 3597)))();
  *(v1 + 24) = 0;
  v4 = (*(v2 + 8 * (v3 + 8388)))(v1);
  return sub_1001A00EC(v4);
}

uint64_t sub_1001A0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, int a16, char a17, uint64_t a18, char a19, __int16 a20, char a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, char *a27)
{
  a27 = &a19;
  a26 = (v27 + 1305607037) ^ (1358806181 * (&a22 ^ 0x3F2F6C83));
  a24 = a18;
  a25 = &a15;
  (*(v28 + 8 * (v27 + 8586)))(&a22);
  a27 = &a13;
  a24 = a18;
  a25 = &a17;
  a26 = (v27 + 1305607037) ^ (1358806181 * (((&a22 | 0x647A185) - (&a22 & 0x647A185)) ^ 0x3968CD06));
  (*(v28 + 8 * (v27 ^ 0x219A)))(&a22);
  a24 = a18;
  a25 = &a21;
  a23 = (v27 + 2132) ^ (33731311 * ((((&a22 | 0x174D279A) ^ 0xFFFFFFFE) - (~&a22 | 0xE8B2D865)) ^ 0xD1441246));
  (*(v28 + 8 * (v27 | 0x2121)))(&a22);
  LODWORD(a25) = v27 - 2008441969 * (&a22 ^ 0x4899540E) + 4565;
  a24 = a18;
  v29 = (*(v28 + 8 * (v27 + 8531)))(&a22);
  return (*(v28 + 8 * (((((v27 + 43) ^ (a22 == 16257999)) & 1) * ((v27 + 1958543477) & 0x1FFB ^ 0x448)) ^ v27)))(v29);
}

uint64_t sub_1001A03C0@<X0>(uint64_t a1@<X0>, int a2@<W8>, _DWORD *a3)
{
  *v3 = a1;
  *a3 = a2;
  return sub_1001BD6B0();
}

uint64_t sub_1001A0494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x478] + 24);
  STACK[0x798] = v4;
  return (*(STACK[0x400] + 8 * ((((((v3 + 712) ^ (v4 == 0)) & 1) == 0) * ((v3 + 1762327589) & 0x96F4FAEB ^ 0x1850)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001A04FC()
{
  v2 = *(STACK[0x640] + 24);
  STACK[0x920] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((5 * (v0 ^ 0x11D3)) ^ 0xFFFFE03E) + v0 + 1922)) ^ v0)))();
}

uint64_t sub_1001A054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71 == (STACK[0x390] & 0x2AD06BFE ^ 0xEC6A1DE8);
  LOBYTE(STACK[0x427]) = v73;
  return (*(v72 + 8 * ((12612 * v73) ^ (a71 - 1580))))();
}

uint64_t sub_1001A05D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  STACK[0x5F8] = *(v2 + 8 * v1);
  return sub_1001C0FDC(v3);
}

uint64_t sub_1001A06C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, __int16 a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25)
{
  a23 = (v27 - 1962) ^ (33731311 * ((&a22 + 1265067111 - 2 * (&a22 & 0x4B676467)) ^ 0x7291AE44));
  a24 = a10;
  a25 = &a12;
  (*(v26 + 8 * (v27 ^ 0x312Fu)))(&a22);
  a24 = a10;
  a25 = &a20;
  a23 = (v27 - 1962) ^ (33731311 * ((2 * (&a22 & 0x1AA66738) - &a22 - 447113018) ^ 0xDCAF52E5));
  (*(v26 + 8 * (v27 + 4387)))(&a22);
  a23 = (v27 - 1962) ^ (33731311 * ((((2 * &a22) | 0x493C83B2) - &a22 - 614351321) ^ 0x1D688BFA));
  a24 = a10;
  a25 = &a14;
  (*(v26 + 8 * (v27 ^ 0x312Fu)))(&a22);
  a23 = (v27 - 1962) ^ (33731311 * ((2 * (&a22 & 0x6861E750) - &a22 - 1751246674) ^ 0xAE68D28D));
  a24 = a10;
  a25 = &a18;
  (*(v26 + 8 * (v27 + 4387)))(&a22);
  a24 = a10;
  a25 = &a16;
  a23 = (v27 - 1962) ^ (33731311 * ((&a22 - 493678348 - 2 * (&a22 & 0xE29310F4)) ^ 0xDB65DAD7));
  (*(v26 + 8 * (v27 ^ 0x312Fu)))(&a22);
  LODWORD(a25) = v27 - 2008441969 * ((&a22 - 1525136382 - 2 * (&a22 & 0xA5184402)) ^ 0xED81100C) + 471;
  a24 = a10;
  v28 = (*(v26 + 8 * (v27 + 4437)))(&a22);
  return (*(v26 + 8 * (((a22 == v25) * ((v27 - 3644) ^ 0xD84)) ^ v27)))(v28);
}

uint64_t sub_1001A0908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x9D2]) = a7;
  LODWORD(STACK[0x340]) = a7;
  return sub_1000E78B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001A0928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a20 = a13;
  a21 = &a17;
  a19 = (v23 - 19) ^ (33731311 * ((2 * ((&a18 ^ 0xA2F137F3) & 0x4E1D1890) - (&a18 ^ 0xA2F137F3) - 1310529685) ^ 0x2AE51ABB));
  (*(v25 + 8 * (v23 + 6330)))(&a18);
  a22 = (v23 + 87) ^ (1710126949 * ((&a18 & 0x1D67650D | ~(&a18 | 0x1D67650D)) ^ 0xD083C162));
  a20 = a13;
  a21 = &a12;
  a23 = &a14;
  (*(v25 + 8 * (v23 ^ 0x29C0)))(&a18);
  a19 = (v23 - 19) ^ (33731311 * (((&a18 | 0x40516AB4) - (&a18 & 0x40516AB4)) ^ 0x79A7A097));
  a20 = a13;
  a21 = &a10;
  (*(v25 + 8 * (v23 + 6330)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * ((((2 * &a18) | 0x71BD1FFA) - &a18 - 954109949) ^ 0x7047DBF3) + 2414;
  a20 = a13;
  v26 = (*(v25 + 8 * (v23 + 6380)))(&a18);
  return (*(v25 + 8 * ((23 * (a18 == v24 + v23 - 724 + 2261)) ^ v23)))(v26);
}

uint64_t sub_1001A0B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = ~v6 + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v6 + v8 + v7 == v4) | (8 * (v6 + v8 + v7 == v4))) ^ (v2 + v5 + 2041))))();
}

uint64_t sub_1001A0CCC@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  *a26 = 1;
  v29 = *v26;
  *(a1 + 64) = a15;
  *(v28 - 144) = a2 + a16 + 295631711;
  *(v28 - 140) = a2 + a16 + 295632584;
  *(a1 + 88) = v29 ^ a16;
  *(v28 - 128) = a16 ^ 1;
  *(v28 - 152) = a2 + a16 + 295631709;
  *(v28 - 168) = (a2 + 1745243958) ^ a16;
  v30 = (*(v27 + 8 * (a2 + 195)))(v28 - 168);
  return (*(v27 + 8 * *(v28 - 148)))(v30);
}

void sub_1001A0CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x878] = 0;
  STACK[0x908] = *(a72 + 8 * (v72 - 5680));
  JUMPOUT(0x1000AA77CLL);
}

uint64_t sub_1001A0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14)
{
  v19 = 1875091903 * (((&a12 | 0xA191CEF5) - (&a12 & 0xA191CEF5)) ^ 0x97E44D76);
  a14 = a11;
  HIDWORD(a12) = (v17 ^ 0x24DFB6BB) + ((2 * v17) & 0x49BF6D76) - 79888401 + v19;
  a13 = v19 + 7724;
  (*(v18 + 77160))(&a12);
  v20 = 1875091903 * ((-514832813 - (&a12 | 0xE1504653) + (&a12 | 0x1EAFB9AC)) ^ 0x28DA3A2F);
  a14 = a11;
  HIDWORD(a12) = ((2 * HIDWORD(v16)) & 0x7DFDFFF6) + (HIDWORD(v16) ^ 0x3EFEFFFB) - 518146385 + v20;
  a13 = v20 + 7724;
  (*(v18 + 77160))(&a12);
  v21 = 1875091903 * ((&a12 & 0xE18712B3 | ~(&a12 | 0xE18712B3)) ^ 0x280D6ECF);
  a14 = a11;
  HIDWORD(a12) = (v16 ^ 0x371DB7BE) + ((2 * v16) & 0x6E3B6F7C) - 385941780 + v21;
  a13 = v21 + 7724;
  (*(v18 + 77160))(&a12);
  a14 = a11;
  a12 = v15;
  a13 = 1824088897 * ((2 * (&a12 & 0x42C3E28) - &a12 - 70008367) ^ 0xA3BA12B3) + 2305;
  (*(v18 + 76720))(&a12);
  v22 = 1875091903 * (((&a12 | 0x5D792ABA) - (&a12 & 0x5D792ABA)) ^ 0x6B0CA939);
  HIDWORD(a12) = (v14 ^ 0x219FFEBE) + ((2 * v14) & 0x433FFD7C) - 25380884 + v22;
  a13 = v22 + 7724;
  a14 = a11;
  v23 = (*(v18 + 77160))(&a12);
  return (*(v18 + 8 * ((104 * (a12 != 16257999)) ^ 0x72Cu)))(v23);
}

uint64_t sub_1001A1038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 + 383) ^ (33731311 * ((2 * (&a13 & 0x11FAB5C8) - &a13 - 301643209) ^ 0xD7F38014));
  a15 = a9;
  a16 = &a12;
  (*(v17 + 8 * (v16 ^ 0x2E74)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * (&a13 ^ 0x4899540E) + 2816;
  a15 = a9;
  v19 = (*(v17 + 8 * (v16 ^ 0x2E86)))(&a13);
  return (*(v17 + 8 * ((56 * (a13 == ((v16 - 1971600222) & 0x75843BE9 ^ (v18 + 2172)))) ^ v16)))(v19);
}

uint64_t sub_1001A11FC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v14 = v5 + a4;
  v15 = v5 - 1;
  v16 = __ROR8__((v4 + v15) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (v13 | (2 * (v16 - 0x6AF7234D0CC131D5))) - (v16 - 0x6AF7234D0CC131D5) + v7;
  v18 = (v6 + 3498) ^ 0xC50A0FD46BA5492ELL ^ v17;
  v19 = v17 ^ v8;
  v20 = __ROR8__(v18, 8);
  v21 = ((v9 | (2 * (v20 + v19))) - (v20 + v19) + v10) ^ v12;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(((a1 & (2 * (v23 + v22))) - (v23 + v22) + v11) ^ a2, 8);
  v25 = ((a1 & (2 * (v23 + v22))) - (v23 + v22) + v11) ^ a2 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x64C31C027084DE6CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xA5A39F44AA2858D8) + 0x52D1CFA255142C6CLL) ^ 0x48FB24461747836FLL;
  v34 = __ROR8__((v14 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = __ROR8__(v33, 8) + (v33 ^ __ROR8__(v31, 61));
  v36 = (v34 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v37 = (__ROR8__((v34 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v36) ^ 0xE49D77DF873DBF7ELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xF5A2F1B9B5D0B209;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5963B6C555D97F1FLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x61459D2AF01F24F7;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x64C31C027084DE6CLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  *(v14 + 9) = ((v35 ^ 0xAB3042D228875C41) >> (8 * ((v4 + v15) & 7))) ^ (((v49 + v48 - ((2 * (v49 + v48)) & 0xBCFFAF874FA44A5ALL) - 0x2180283C582DDAD3) ^ a3) >> (8 * ((v14 + 9) & 7))) ^ *(v4 + v15);
  return (*(STACK[0x3E8] + 8 * ((4479 * (v15 == 0)) ^ v6)))();
}

uint64_t sub_1001A1490(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 ^ 0x32FE)))(26, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 + 111) ^ 0x17E0)) ^ v1)))();
}

uint64_t sub_1001A1594()
{
  v3 = (*(v2 + 8 * ((v0 ^ 0xDBB) + 7145)))();
  *(v1 + 24) = 0;
  return sub_1001A15C4(v3);
}

void sub_1001A163C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x320] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x330] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x300] = vdupq_n_s64(v8);
  *&STACK[0x310] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2E0] = vdupq_n_s64(v10);
  *&STACK[0x2F0] = vdupq_n_s64(v9);
  *&STACK[0x2C0] = vdupq_n_s64(v12);
  *&STACK[0x2D0] = vdupq_n_s64(v11);
  *&STACK[0x2A0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2B0] = vdupq_n_s64(a1);
  *&STACK[0x390] = vdupq_n_s64(a3);
  *&STACK[0x3A0] = vdupq_n_s64(a2);
  *&STACK[0x280] = vdupq_n_s64(a4);
  *&STACK[0x290] = vdupq_n_s64(v13);
  *&STACK[0x270] = vdupq_n_s64(a5);
  *&STACK[0x240] = vdupq_n_s64(v7);
  *&STACK[0x250] = vdupq_n_s64(v6);
  *&STACK[0x380] = xmmword_100382E40;
  *&STACK[0x260] = vdupq_n_s64(a6);
  JUMPOUT(0x1001A1778);
}

void sub_1001A21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x408] = 0;
  STACK[0x3F0] = 0;
  STACK[0x848] = *(a4 + 8 * v4);
  JUMPOUT(0x1001A2220);
}

uint64_t sub_1001A2228@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x9F4]) = v3;
  STACK[0x9F8] = v4;
  return (*(a1 + 8 * (((a2 == 0) * ((((v2 - 2868) | 0x424) - 2167) ^ 0xB0F)) ^ v2)))();
}

uint64_t sub_1001A22BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = ((2 * (&a13 & 0x4BD730C0) - &a13 + 875089727) ^ 0x6C411C5D) * v19;
  a14 = v22 + 1592977536;
  a15 = a11;
  a16 = &a10;
  a17 = -654855621 - v22;
  a18 = v22 + v21 + 1674576097;
  v23 = (*(v20 + 8 * (v21 ^ 0x2E41u)))(&a13);
  return (*(v20 + 8 * (((a13 == v18) * (((v21 - 1301) | 0x1042) ^ (v21 - 1948471310) & 0x57E7 ^ 0x1235)) ^ v21)))(v23);
}

uint64_t sub_1001A23E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1939) ^ (1710126949 * ((&a18 & 0xDD9F1ED1 | ~(&a18 | 0xDD9F1ED1)) ^ 0x107BBABE));
  a23 = &a11;
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 8188)))(&a18);
  a19 = (v23 + 1833) ^ (33731311 * ((&a18 & 0x32986DAC | ~(&a18 | 0x32986DAC)) ^ 0xF4915870));
  a20 = a10;
  a21 = &a14;
  (*(v24 + 8 * (v23 + 8182)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * (((&a18 ^ 0x37A70492) & 0x9D2183A8 | ~(&a18 ^ 0x37A70492 | 0x9D2183A8)) ^ 0x1DE02CCB) + 4266;
  a20 = a10;
  v26 = (*(v24 + 8 * (v23 + 8232)))(&a18);
  return (*(v24 + 8 * (((a18 == v25) * (((v23 + 5966) ^ 0xE47) - 205)) ^ v23)))(v26);
}

uint64_t sub_1001A258C(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v26 = a16 - 16;
  v27.i64[0] = a13 + v26 + 11;
  v27.i64[1] = a13 + v26 + 10;
  v28.i64[0] = a13 + v26 + 13;
  v28.i64[1] = a13 + v26 + 12;
  v29.i64[0] = a13 + v26 + 15;
  v29.i64[1] = a13 + v26 + 14;
  v30.i64[0] = a13 + v26 + 21;
  v30.i64[1] = a13 + v26 + 20;
  v31.i64[0] = a13 + v26 + 23;
  v31.i64[1] = a13 + v26 + 22;
  v32.i64[0] = a13 + v26 + 25;
  v32.i64[1] = a13 + v26 + 24;
  v33.i64[0] = a13 + v26 + a14 - 3181;
  v33.i64[1] = a13 + v26 + 18;
  v34 = vandq_s8(v33, a1);
  v35 = vandq_s8(v32, a1);
  v36 = vandq_s8(v31, a1);
  v37 = vandq_s8(v30, a1);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4));
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4));
  v44 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4)), a5);
  v45 = vaddq_s64(vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), a3), a4)), a5);
  v46 = veorq_s8(v45, a6);
  v47 = veorq_s8(v44, a6);
  v48 = veorq_s8(v44, a7);
  v49 = veorq_s8(v45, a7);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), a8);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), a8);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), v17);
  v58 = veorq_s8(v56, v17);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), v18);
  v65 = veorq_s8(v63, v18);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v19), v70), v20), v21);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v19), v69), v20), v21);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v22);
  v78 = veorq_s8(v76, v22);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v23);
  v85 = veorq_s8(v83, v23);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v80.i64[0] = a13 + v26 + 17;
  v80.i64[1] = a13 + v26 + 16;
  v87 = vaddq_s64(v42, a5);
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v189.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v88 = veorq_s8(v87, a6);
  v89 = veorq_s8(v87, a7);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), a8);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v17);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v18);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), v19), v96), v20), v21);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v22);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v23);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL)));
  v103 = vandq_s8(v80, a1);
  v104 = vaddq_s64(v43, a5);
  v189.val[0] = vshlq_u64(veorq_s8(v102, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v105 = veorq_s8(v104, a6);
  v106 = veorq_s8(v104, a7);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a8);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v17);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v18);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v19), v113), v20), v21);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v22);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v23);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v121 = vandq_s8(v29, a1);
  v122 = vaddq_s64(v120, v119);
  v123 = vandq_s8(v28, a1);
  v189.val[3] = vshlq_u64(veorq_s8(v122, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v124 = vandq_s8(v27, a1);
  v125 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v129 = vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4));
  v130 = vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(vaddq_s64(v126, v126), a3), a4)), a5);
  v131 = vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(vaddq_s64(v125, v125), a3), a4)), a5);
  v126.i64[0] = vqtbl4q_s8(v189, v25).u64[0];
  v132 = veorq_s8(v131, a6);
  v189.val[0] = veorq_s8(v130, a6);
  v133 = veorq_s8(v130, a7);
  v134 = veorq_s8(v131, a7);
  v189.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v133), a8);
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v134), a8);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v137);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v136), v17);
  v139 = veorq_s8(v138, v17);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v141);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v140), v18);
  v143 = veorq_s8(v142, v18);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v145);
  v189.val[0] = vaddq_s64(v189.val[1], v144);
  v189.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189.val[0], v189.val[0]), v19), v189.val[0]), v20), v21);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v19), v146), v20), v21);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v149);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v148), v22);
  v151 = veorq_s8(v150, v22);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = veorq_s8(v189.val[0], v189.val[1]);
  v189.val[1] = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v153);
  v189.val[0] = veorq_s8(vaddq_s64(v189.val[1], v152), v23);
  v155 = veorq_s8(v154, v23);
  v156 = vaddq_s64(v129, a5);
  v189.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v157 = veorq_s8(v156, a6);
  v158 = veorq_s8(v156, a7);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), a8);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v17);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v18);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), v19), v165), v20), v21);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v22);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v23);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL)));
  v172 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v189.val[1] = vshlq_u64(veorq_s8(v171, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v173 = veorq_s8(v172, a6);
  v174 = veorq_s8(v172, a7);
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), a8);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v17);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v18);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v181, v181), v19), v181), v20), v21);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v22);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v23);
  v189.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a2)));
  v126.i64[1] = vqtbl4q_s8(v189, v25).u64[0];
  v187 = vrev64q_s8(v126);
  *(a13 + v26 + 10) = veorq_s8(vextq_s8(v187, v187, 8uLL), *(a15 + v26));
  return (*(STACK[0x3E8] + 8 * (((a11 + v26 != 0) * v16) ^ a12)))();
}

void sub_1001A2594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = v8;
  *v9 = v10;
  JUMPOUT(0x100150218);
}

uint64_t sub_1001A25C0()
{
  v3 = 457 * (v0 ^ 0xBC2);
  v9 = (v0 + 5329) ^ (1824088897 * (((&v7 | 0x605F177C) - (&v7 & 0x605F177C)) ^ 0x3836C41E));
  v8 = v5;
  (*(v1 + 8 * (v0 ^ 0x2E45)))(&v7);
  v8 = v6;
  v9 = (v3 + 3319) ^ (1824088897 * (&v7 ^ 0x5869D362));
  (*(v1 + 8 * (v3 ^ 0x362F)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_1001A26BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v19 - 89) ^ (33731311 * (((&a15 | 0xF9F95082) - (&a15 & 0xF9F95082)) ^ 0xC00F9AA1));
  a17 = a12;
  a18 = &a11;
  (*(v18 + 8 * (v19 + 6260)))(&a15);
  LODWORD(a18) = v19 - 2008441969 * (((&a15 | 0x96C23D70) - &a15 + (&a15 & 0x693DC288)) ^ 0xDE5B697E) + 2344;
  a17 = a12;
  v20 = (*(v18 + 8 * (v19 + 6310)))(&a15);
  return (*(v18 + 8 * ((474 * (a15 != (((v19 - 970) | 0x404) ^ 0xF81EE0))) ^ v19)))(v20);
}

uint64_t sub_1001A27C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a3 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v14 | (2 * (v19 + 0x2D9C56C6ED9D3E2ELL))) - (v19 + 0x2D9C56C6ED9D3E2ELL) + a6;
  v21 = v20 ^ (139 * (v7 ^ 0x17FAu) + 0x572C57D23556A95);
  v22 = v20 ^ a7;
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(((v11 & (2 * (v23 + v22))) - (v23 + v22) + v12) ^ v13, 8);
  v25 = ((v11 & (2 * (v23 + v22))) - (v23 + v22) + v12) ^ v13 ^ __ROR8__(v22, 61);
  v26 = ((v15 & (2 * (v24 + v25))) - (v24 + v25) + 0x365717C7E4CB1A76) ^ 0x8BD86B3AFACC8D6DLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v10 - ((v28 + v27) | v10) + ((v28 + v27) | 0x1323CE1A44C5F46ELL)) ^ 0xEEA89D249DAFB75ALL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xAC7DA0564C1838BLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0x2A5861B0BA21BA34) - (v33 + v32) - 0x152C30D85D10DD1BLL) ^ 0x8B436845DC92299CLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x8E4D6ECA343D275ELL;
  *v18 = ((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ 0x51BB4171AFEDC628) >> (8 * (v18 & 7u));
  return (*(v16 + 8 * ((30 * (v17 == 0)) ^ (v7 - 1794))))();
}

uint64_t sub_1001A2AA4()
{
  v2 = *(STACK[0x708] + 24);
  STACK[0x498] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 582641425) ^ 0xDD458DD4) + ((v0 + 582641425) & 0xDD458E7A))) ^ v0)))();
}

uint64_t sub_1001A2B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = **(&off_1003E6550 + ((v65 + 3996) & 0x8A3C8441));
  *(v66 - 232) = v65 + 3996 + 1710126949 * ((v66 - 1199643003 - 2 * ((v66 - 232) & 0xB87EE76D)) ^ 0x8A65BCFD) + 2122;
  *(v66 - 224) = v67;
  (*(v64 + 8 * ((v65 + 3996) ^ 0x3C59)))(v66 - 232);
  *(v66 - 228) = (v65 - 1451034739) ^ (956911519 * ((v66 - 232) ^ 0xEA917005));
  v68 = (*(a64 + 8 * (v65 + 7005)))(v66 - 232);
  v69 = *(v66 - 232) != ((v65 + 3996) ^ 0x1168) + 538289758;
  return (*(a64 + 8 * (((2 * v69) | (8 * v69)) ^ (v65 + 3996))))(v68);
}

uint64_t sub_1001A2E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x5C8] + 24);
  STACK[0x740] = v5;
  return (*(a4 + 8 * (((v5 == 0) * ((((v4 - 1212079769) ^ 0xB7C12776) - 1699) ^ (v4 - 1212079769) & 0x483ED7F7)) ^ v4)))();
}

uint64_t sub_1001A3A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAF8] = v73;
  v74 = STACK[0x6C0];
  STACK[0xB00] = STACK[0x6C0];
  return (*(a72 + 8 * (((v73 - v74 > 9) * ((((v72 + 2878) | 0x4C2) - 5612) ^ 0x1281)) ^ v72)))();
}

uint64_t sub_1001A3A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, int a20)
{
  v21 = 956911519 * ((((2 * &a17) | 0x4E96870C) - &a17 - 659243910) ^ 0xCDDA3383);
  HIDWORD(a17) = v21 + 543642718;
  a18 = v21 ^ 0x61FE7926;
  a19 = 1002199530 - v21;
  a20 = v21 ^ 0x1602;
  (*(v20 + 77008))(&a17);
  a17 = &a13;
  a19 = 1317436891 * ((2 * (&a17 & 0x7F305B58) - &a17 + 13608096) ^ 0xB0CC3CD6) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((1991 * (a18 == 16257999)) ^ 0xB7Eu)))(v22);
}

uint64_t sub_1001A3BCC@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8B8];
  v3 = &STACK[0xB60] + STACK[0x740];
  STACK[0x8C8] = v3;
  STACK[0x900] = (v3 + 16);
  STACK[0x7C0] = 0;
  STACK[0x4C8] = 0;
  LODWORD(STACK[0x854]) = 197499219;
  STACK[0x7A8] = 0;
  LODWORD(STACK[0x544]) = 197499219;
  STACK[0x620] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 + 1514598348) & 0xA5B8FDE7) - 2816)) ^ (a1 + 1514598348) & 0xA5B8FDE7)))();
}

uint64_t sub_1001A3C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x926]) = v63;
  LODWORD(STACK[0x350]) = v63;
  return sub_10007E6F4(v64 - 5288, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001A3C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, uint64_t a14, char a15, __int16 a16, char a17, uint64_t a18, int a19, char a20, int a21, unsigned int a22, uint64_t a23, char *a24)
{
  a22 = (v24 + 1286) ^ (33731311 * ((&a21 & 0x79A0A4ED | ~(&a21 | 0x79A0A4ED)) ^ 0xBFA99131));
  a23 = a18;
  a24 = &a13;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  a23 = a18;
  a24 = &a15;
  a22 = (v24 + 1286) ^ (33731311 * (((&a21 | 0x4CBC5882) - (&a21 & 0x4CBC5882)) ^ 0x754A92A1));
  (*(v26 + 8 * (v24 + 7635)))(&a21);
  a22 = (v24 + 1286) ^ (33731311 * (((&a21 | 0xB5DE600A) - (&a21 & 0xB5DE600A)) ^ 0x8C28AA29));
  a23 = a18;
  a24 = &a20;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  a23 = a18;
  a24 = &a11;
  a22 = (v24 + 1286) ^ (33731311 * ((((&a21 | 0xD2620A1A) ^ 0xFFFFFFFE) - (~&a21 | 0x2D9DF5E5)) ^ 0x146B3FC6));
  (*(v26 + 8 * (v24 + 7635)))(&a21);
  a22 = (v24 + 1286) ^ (33731311 * ((&a21 & 0x5A2894C7 | ~(&a21 | 0x5A2894C7)) ^ 0x9C21A11B));
  a23 = a18;
  a24 = &a17;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  LODWORD(a24) = v24 - 2008441969 * ((1638927686 - (&a21 ^ 0x3D302A96 | 0x61B00D46) + (&a21 ^ 0x3D302A96 | 0x9E4FF2B9)) ^ 0xEBE68C21) + 3719;
  a23 = a18;
  v28 = (*(v26 + 8 * (v24 ^ 0x220D)))(&a21);
  return (*(v26 + 8 * (((a21 == 16257999) * (v25 ^ (v27 - 60))) ^ v24)))(v28);
}

uint64_t sub_1001A3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  a19 = (v19 + 6079) ^ (((2 * (&a17 & 0x62D29FE0) - &a17 - 1657970659) ^ 0xC544B37F) * v20);
  a18 = a13;
  v22 = (*(v21 + 8 * (v19 + 7345)))(&a17);
  return sub_1001A3F80(v22);
}

uint64_t sub_1001A3F80()
{
  v7 = (v3 + 3841) ^ (((-1891601042 - (v6 | 0x8F40756E) + (v6 | 0x70BF8A91)) ^ 0x28D659F3) * v1);
  v6[1] = v5;
  (*(v2 + 8 * (v3 + 5107)))(v6);
  return (v0 - 16257999);
}

uint64_t sub_1001A4094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v6 - 32);
  v10 = (v7 - 32);
  v11 = *v10;
  *(v9 - 1) = *(v10 - 1);
  *v9 = v11;
  return (*(a4 + 8 * (((v5 == 32) * v8) ^ v4)))();
}

uint64_t sub_1001A4130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a13 = &a11;
  a15 = v16 + 1317436891 * ((2 * (&a13 & 0x359CA8D0) - &a13 - 899459284) ^ 0x7A60CF5A) + 4928;
  v17 = (*(v15 + 8 * (v16 ^ 0x293F)))(&a13);
  return (*(v15 + 8 * (((a14 == 16257999) * (((v16 + 1616641498) | 0x18010408) ^ 0x785D113A)) ^ v16)))(v17);
}

uint64_t sub_1001A41E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13, uint64_t a14)
{
  a14 = v15;
  a11 = v14;
  a12 = 2008441969 * ((-377644372 - (&a11 | 0xE97D9AAC) + (&a11 | 0x16826553)) ^ 0x5E1B315D) + 4055;
  (*(v16 + 77384))(&a11);
  return sub_10011DA00(a13);
}

void sub_1001A42AC(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = 1824 - 869295389 * ((&a4 + 1173547721 - 2 * (&a4 & 0x45F2EAC9)) ^ 0xF4A6C69A);
  a4 = a1;
  (*(a2 + 78128))(&a4);
  JUMPOUT(0x10011FC70);
}

uint64_t sub_1001A4318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v22 = 0x9908B0DF00000000;
  v25 = 1824088897 * ((a20 + 0x5D0499BBD91DACF1 - 2 * (a20 & 0x5D0499BBD91DACF1)) ^ 0xDFEB0387E12C9C16);
  v22[5] = **(v23 + 8 * (v20 - 741)) ^ v25;
  *(v24 - 112) = (v20 + 1365484860) ^ (1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16));
  *(v24 - 144) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16) + v20 + 1454889199;
  *(v24 - 140) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16) + v20 + 1365484860 + 52;
  *(v24 - 152) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16);
  v22[3] = v25;
  *(v24 - 128) = ((v20 + 1365484860) ^ 0x3AE) - 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16);
  v26 = (*(v21 + 8 * (v20 + 8696)))(v24 - 152);
  return (*(v21 + 8 * *(v24 - 148)))(v26);
}

uint64_t sub_1001A4520(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(a57 + (((a1 + 681) ^ 0x16EC597CDLL) & (2 * v57)) + (v57 ^ 0x7DEBD9FFB762DBEFLL) - 0x7DEBD9FFB762DBEFLL) = 0;
  *(a57 + ((2 * (v57 + 4)) & 0xDFEFFAB6) + ((v57 + 4) ^ 0x45FBCEBB6FF7FD5BLL) - 0x45FBCEBB6FF7FD5BLL) = -9392;
  v59 = (a41 & 0x45 | (2 * (a41 & 1))) ^ (a41 ^ 0x662027B6) & (2 * (a41 & 0x45));
  v60 = (2 * (a41 ^ 0x662027B6)) & 0x72 ^ 0x11 ^ ((2 * (a41 ^ 0x662027B6)) ^ 0x40A510E6) & (a41 ^ 0x662027B6);
  v61 = (4 * v59) & v60 ^ v59 ^ ((4 * v59) & 0x230 | 0xB042A840);
  v62 = (4 * v60) & 0xBC52EE70 ^ 0xC104633 ^ ((4 * v60) ^ 0x714BB9CC) & v60;
  v63 = (16 * v61) & 0xBC52EE70 ^ v61 ^ ((16 * v61) ^ 0x42A8400) & v62;
  v64 = (16 * v62) & 0xBC52EE70 ^ 0x38500843 ^ ((16 * v62) ^ 0xC52EE730) & v62;
  v65 = v63 ^ (v63 << 8) & 0xBC52EE00 ^ ((v63 << 8) ^ 0x402C4000) & v64 ^ 0x8128233;
  v66 = a41 ^ (2 * ((v65 << 16) & 0x3C520000 ^ v65 ^ ((v65 << 16) ^ 0x6E730000) & ((v64 << 8) & 0x3C520000 ^ 0x2C100000 ^ ((v64 << 8) ^ 0x52EE0000) & v64)));
  v67 = (a57 + ((2 * (v57 + 6)) & 0x1E8FDDF9ALL) + ((v57 + 6) ^ 0xDBEFB97BF47EEFCDLL) + 0x241046840B811033);
  *v67 = HIBYTE(v66) ^ 0xFA;
  v67[1] = BYTE2(v66) ^ 0x73;
  v67[2] = BYTE1(v66) ^ 0x15;
  v67[3] = v66 ^ 0x23;
  return (*(v58 + 8 * (a1 ^ (235 * ((840616331 - a51) - 840616315 < 8)))))(-840616316, 16215976);
}

uint64_t sub_1001A47FC()
{
  v5 = (*(v4 + 8 * (v3 ^ 0x70E)))();
  result = (*(v4 + 8 * (v3 | 0x4C3)))(v5, v1, 4096);
  if (result >= (((v3 + 720719350) & 0xD50AB5BF) - 9405))
  {
    v2 = 16257999;
  }

  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_1001A48F4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v20 = v12 - 1;
  v21 = __ROR8__((v16 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v23 = (a2 + 5087) ^ 0xE49D77DF873DA5DELL ^ (__ROR8__((v21 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v22);
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v17 & (2 * (v25 + v24))) - (v25 + v24) + a3) ^ v15;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0x45B996DFB575EE6) - (v28 + v27) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((a1 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = -2 - (((v18 - v32) | 0x2AB11F016CBDAD66) + ((v32 + 0x1508DCB2F33ECE2BLL) | 0xD54EE0FE93425299));
  v34 = __ROR8__(v33 ^ 0x63585D3A03AB4AB4, 8);
  v33 ^= 0xCB1EB8AD9A5D3BE8;
  v35 = (((2 * (v31 + v30)) & 0xE50EF93BD6C6A2AALL) - (v31 + v30) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v36 = v35 ^ __ROR8__(v30, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x64C31C027084DE6CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = ((v19 | (2 * (v34 + v33))) - (v34 + v33) + v4) ^ v5;
  v40 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  v41 = v39 ^ __ROR8__(v33, 61);
  v42 = (__ROR8__(v39, 8) + v41) ^ 0xF5A2F1B9B5D0B209;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5963B6C555D97F1FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61));
  v47 = (__ROR8__(v44, 8) + v45) ^ v14;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x64C31C027084DE6CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (a4 - ((v51 + v50) ^ v6 | a4) + ((v51 + v50) ^ v6 | v7)) ^ v8;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  *(a1 + v20) = ((((v9 & (2 * (v54 + v53))) - (v54 + v53) + v10) ^ v11) >> (8 * ((a1 + v20) & 7))) ^ *(v16 + v20) ^ (((((2 * v46) & 0x8D3B02A49A14CEA0) - v46 + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v16 + v20) & 7)));
  return (*(v13 + 8 * ((6077 * (v20 == 0)) ^ a2)))();
}

uint64_t sub_1001A4C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v7 = v6;
  *(v6 + 8) = *(a5 + 8);
  *(a5 + 8) = v6;
  return sub_100182AD4(a1, a2, a3, a4);
}

uint64_t sub_1001A4C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a21 = v21 - 2008441969 * ((&a19 & 0x1286EABC | ~(&a19 | 0x1286EABC)) ^ 0xA5E0414D) + 3383;
  a20 = a18;
  v24 = (*(v23 + 8 * (v21 ^ 0x2D7D)))(&a19);
  return (*(v23 + 8 * (((a19 == v22) * (v21 ^ 0x1860 ^ v21 ^ 0x196F ^ 0x16E1)) ^ v21)))(v24);
}

uint64_t sub_1001A4DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = STACK[0x648];
  STACK[0x6E0] = STACK[0x648];
  return (*(a4 + 8 * (((((v7 ^ (v8 == 0)) & 1) == 0) * (a6 ^ 0x1404)) ^ v6)))();
}

void sub_1001A4DEC(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x100047080);
}

uint64_t sub_1001A4E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(v8 + 8 * ((((a6 - 6101) | 0x1540u) + v6 - 6108 < ((a6 - 5103) | 0x108Au) - 5899) ^ a6));
  STACK[0x980] = *(v8 + 8 * v7);
  return v9(a1, a2, 0x321FCFCE9C141D67, a4, a5, *(a3 + 8 * (a6 - 6642)) - 8);
}

void sub_1001A4F08(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = *(STACK[0x5F8] + 120);
  v7 = STACK[0x5F8] + 104;
  v8 = 914963389 * ((1660318185 - ((v5 - 232) | 0x62F671E9) + ((v5 - 232) | 0x9D098E16)) ^ 0xB1F53F6D);
  *(v5 - 192) = ((*(STACK[0x5F8] + 100) ^ 0xEAA2A79B) + ((v3 - 1306) ^ 0x35FDFA24) + ((2 * *(STACK[0x5F8] + 100)) & 0xD5454F36)) ^ v8;
  *(v5 - 184) = v2;
  *(v5 - 168) = v7;
  *(v5 - 216) = (((v4 ^ 0xD3803A15) + 746571243) ^ ((v4 ^ 0xCC355F80) + 868917376) ^ ((v4 ^ 0x1470FCC6) - 342949062)) - v8 + 1996137537;
  *(v5 - 208) = v8 + (v6 ^ 0xCEFBBBBB) + ((2 * v6) & 0x9DF77776) + 1001225584;
  *(v5 - 224) = v2;
  *(v5 - 232) = 1491323843 - v8;
  *(v5 - 176) = v8 + v3 + 2153;
  *(v5 - 200) = a2;
  (*(a1 + 8 * (v3 + 7250)))(v5 - 232);
  JUMPOUT(0x1001A5074);
}

uint64_t sub_1001A5104@<X0>(int a1@<W8>)
{
  *STACK[0x418] = v1;
  LODWORD(STACK[0x824]) = v2;
  return (*(v3 + 8 * (((v2 == 16257999) * ((a1 - 6360) ^ 0xDB)) ^ (a1 - 4713))))();
}

uint64_t sub_1001A5284@<X0>(unint64_t a1@<X8>)
{
  STACK[0x760] = a1;
  LODWORD(STACK[0x998]) = v3;
  LOWORD(STACK[0x99E]) = v2;
  LODWORD(STACK[0x9A0]) = STACK[0x62C];
  LODWORD(STACK[0x9A4]) = STACK[0x89C];
  STACK[0x9A8] = STACK[0x588];
  STACK[0x750] = STACK[0x4E8];
  return (*(v4 + 8 * (((a1 != 0) * (((2 * v1) ^ 0x44EE) - 349)) ^ v1)))();
}

void sub_1001A56A8()
{
  v2 = v4[3] ^ 0x3C;
  v3 = ((*v4 ^ 0x3C) << 24) | ((v4[1] ^ 0x3C) << 16) | ((v4[2] ^ 0x3C) << 8) | v2;
  **(v0 + 16) = (v3 - 2 * (v3 & 0x11AB605A ^ v2 & 8) - 1851039662) ^ 0x91AB6052;
  *v0 = *(v1 + 24);
}

uint64_t sub_1001A57C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(v49 - 240) = *v47;
  *(v49 - 239) = v47[1];
  *(v49 - 238) = v47[2];
  *(v49 - 237) = v47[3];
  *(v49 - 236) = v47[4];
  *(v49 - 235) = v47[5];
  *(v49 - 234) = v47[6];
  *(v49 - 233) = v47[7];
  *(v49 - 232) = v47[8];
  *(v49 - 231) = v47[9];
  *(v49 - 230) = v47[10];
  *(v49 - 229) = v47[11];
  *(v49 - 228) = v47[12];
  *(v49 - 227) = v47[13];
  *(v49 - 226) = v47[14];
  *(v49 - 225) = v47[15];
  if (a8)
  {
    v50 = v49 == 240;
  }

  else
  {
    v50 = 1;
  }

  v53 = v50 || *(a1 + 48) == 0 || *(a1 + 64) == 0;
  return (*(v48 + 8 * (v53 ^ v46 ^ 0x292E)))(a1, a2, a3, v49 - 240, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1001A5894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x845A2815) - &a14 + (&a14 & 0x7BA5D7E8)) ^ 0xDC33FB77) * v21;
  a16 = a11;
  a17 = &a12;
  a15 = v23 + 1733649567;
  a18 = 1032869496 - v23;
  a19 = v23 + v22 + 1674577608;
  v24 = (*(v20 + 8 * (v22 ^ 0x206A)))(&a14);
  return (*(v20 + 8 * (((a14 == v19) * ((v22 - 523931047) & 0x17CC ^ 0x65B)) ^ v22)))(v24);
}

uint64_t sub_1001A5B78@<X0>(int a1@<W8>)
{
  v2 = STACK[0x5B8];
  v3 = *STACK[0x668];
  STACK[0x800] = *(v1 + 8 * a1);
  STACK[0x6C8] = v3;
  LODWORD(STACK[0x520]) = 1;
  STACK[0x598] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 + 616609973) & 0xDB3F4FEF) + 9476)) ^ (a1 + 2169))))();
}

uint64_t sub_1001A5BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16257999)
  {
    v75 = STACK[0x550];
    v76 = *(STACK[0x550] + 8);
    v77 = STACK[0x580];
    v77[1] = v76;
    *v77 = *v75;
    return (*(v73 + 8 * (((((v76 == 0) ^ (v71 - 70)) & 1) * (((v71 - 935) | 1) - 5046)) ^ (v71 + 3430))))();
  }

  else if (v72 == 16215947)
  {
    return (*(v73 + 8 * (((*(STACK[0x648] + 8) == 0) * ((a71 ^ 0x17C8) - 2223 + 761 * (a71 ^ 0x17C8))) ^ (a71 + 2817))))();
  }

  else
  {
    return (*(v73 + 8 * ((((((v71 - 6087) ^ (*(STACK[0x580] + 24) == 0)) & 1) == 0) * ((v71 - 4613) ^ 0x5DE)) ^ (v71 + 2207))))();
  }
}

uint64_t sub_1001A5E28()
{
  *(v1 + 108) = 0;
  v3 = STACK[0x788];
  *(v1 + 104) = 16;
  *(v1 + 103) = v3[23];
  *(v1 + 102) = v3[22];
  *(v1 + 101) = v3[21];
  *(v1 + 100) = v3[20];
  *(v1 + 99) = v3[19];
  *(v1 + 98) = v3[18];
  *(v1 + 97) = v3[17];
  *(v1 + 96) = v3[16];
  *(v1 + 95) = v3[15];
  *(v1 + 94) = v3[14];
  *(v1 + 93) = v3[13];
  *(v1 + 92) = v3[12];
  *(v1 + 91) = v3[11];
  *(v1 + 90) = v3[10];
  *(v1 + 89) = v3[9];
  *(v1 + 88) = v3[8];
  return (*(v2 + 8 * (((v3[4] == (v0 ^ 0x69)) * (((v0 - 3337) | 0x693) - 5980)) ^ v0)))();
}

void sub_1001A5F6C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1001A5FA0);
}

uint64_t sub_1001A5FB0()
{
  v0 = STACK[0x5D0];
  *v0 = 0u;
  v0[1] = 0u;
  return sub_1001A5FE0();
}

uint64_t sub_1001A5FE0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  STACK[0x5E8] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((((-109 * (v1 ^ 0xD5)) ^ (v4 == 0)) & 1) * (v1 - 6813)) ^ v1)))();
}

uint64_t sub_1001A672C()
{
  v2 = LOBYTE(STACK[0x77F]);
  LODWORD(STACK[0x800]) = STACK[0x70C];
  return (*(v1 + 8 * (((v2 != ((73 * (((v0 + 78) | 0x20) ^ 0x6C)) ^ 0x48)) * (((((v0 - 4786) | 0x1820) ^ 0x1B6C) + 991) ^ 0x302)) ^ ((v0 - 4786) | 0x1820))))();
}

uint64_t sub_1001A6798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, int a15, __int16 a16, int a17, uint64_t a18, char a19, uint64_t a20, unsigned int a21)
{
  v24 = (v23 - 4164) | 0x208;
  *v21 = a12;
  *(v21 + 4) = a17;
  *(v21 + 8) = a14;
  *(v21 + 10) = a16;
  v25 = (v24 - 1022) | 0x2003;
  a21 = (v24 + 6800) ^ (1824088897 * ((((&a19 | 0xCDE9504C) ^ 0xFFFFFFFE) - (~&a19 | 0x3216AFB3)) ^ 0x6A7F7CD1));
  a20 = a10;
  (*(v22 + 8 * (v24 ^ 0x2386)))(&a19);
  a21 = (v25 - 373) ^ (1824088897 * ((2 * (&a19 & 0x1183F450) - &a19 - 293860440) ^ 0xB615D8CA));
  a20 = a13;
  v26 = (*(v22 + 8 * (v25 ^ 0x783)))(&a19);
  return sub_1001B12F8(v26);
}

uint64_t sub_1001A6894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  STACK[0x820] = v5;
  if (v7)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(a4 + 8 * ((((((v6 ^ 0x45) + 1) ^ v9) & 1) * ((v6 + 642338432) & 0xD9B6AFFC ^ 0x291)) ^ v6)))();
}

uint64_t sub_1001A68FC(uint64_t a1)
{
  v1 = 1358806181 * (a1 ^ 0x3F2F6C83);
  v2 = *(a1 + 32) ^ v1;
  v3 = *(a1 + 48) + v1;
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 52) + v1;
  v7 = *(&off_1003E6550 + v2 - 915945387) - 8;
  if (v3 == 726920995 || v3 == 726920992)
  {
    __asm { BRAA            X19, X17 }
  }

  v9 = *(a1 + 8);
  v10 = 33731311 * ((2 * (v13 & 0x67C88B18) - v13 + 406287584) ^ 0x21C1BEC3);
  v14 = *(a1 + 24);
  v15 = v5;
  v13[1] = v6 - v10 - 805185212;
  v17 = v10 + v2 - 915938572;
  v16 = v9;
  v18 = v4;
  result = (*&v7[8 * (v2 ^ 0x36981D35)])(v13);
  *(a1 + 16) = v13[0];
  return result;
}

uint64_t sub_1001A6BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = a4 - 1;
  *(v6 + v10) = *(v7 + v10) ^ *(a1 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v4 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((59 * (v10 == ((v5 + 1461900446) & 0xA8DD1FD5 ^ 0xF11))) ^ v5)))();
}

void sub_1001A6C68()
{
  *&STACK[0x2D0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x300] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x310] = vdupq_n_s64(v1);
  *&STACK[0x2E0] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  JUMPOUT(0x1001A6ED4);
}

uint64_t sub_1001A84F0@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x7F8];
  STACK[0x9B0] = STACK[0x7F8];
  return (*(v2 + 8 * ((2448 * (v1 - v3 > ((a1 - 3125) | 0x1180u) - 5613)) ^ a1)))();
}

uint64_t sub_1001A8540@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x31A6)))(a1);
  *(STACK[0x790] + 24) = 0;
  return sub_1001A856C();
}

uint64_t sub_1001A856C()
{
  v2 = (*(v1 + 8 * (v0 + 6155)))();
  STACK[0x790] = 0;
  return sub_1001A8598(v2);
}

void df35957c4e0()
{
  v0 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403298) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 - dword_100403298) ^ 0xDF))] ^ 0x1F]) - 58);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + (byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 - v1) ^ 0xDF))] ^ 0x9B] ^ (-85 * ((dword_1004033E0 - v1) ^ 0xDF))) + 128);
  v3 = 2054362027 * ((&v7[1] + v1 + *v2) ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6 = 0;
  v5 = 0;
  v9 = &v5;
  v8[0] = 869295389 * ((1800565523 - (v8 | 0x6B527313) + (v8 | 0x94AD8CEC)) ^ 0x25F9A0BF) + 1903876051;
  LODWORD(v3) = 2054362027 * ((*v2 - *(v0 - 4)) ^ 0x3EF64BDF);
  v4 = *(&off_1003E6550 + ((-85 * (dword_100403298 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403298 ^ 0xDF ^ dword_1004033E0))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_10036976C[(byte_100382D1C[v3 - 12] ^ 0xE2) - 12] ^ v3) + 76816])(v8);
  v7[0] = 0;
  v8[0] = 869295389 * ((v8 & 0x6C6D09CE | ~(v8 | 0x6C6D09CE)) ^ 0x22C6DA62) + 1903876051;
  v9 = v7;
  (*&v4[8 * (byte_1003739DC[(byte_100369460[(-85 * ((*v2 - *(v0 - 4)) ^ 0xDF))] ^ 0x21) - 12] ^ (-85 * ((*v2 - *(v0 - 4)) ^ 0xDF))) + 76024])(v8);
  v8[0] = 476323082 - 1710126949 * ((((v8 | 0x15AA73E0) ^ 0xFFFFFFFE) - (~v8 | 0xEA558C1F)) ^ 0xD84ED78F);
  (*&v4[8 * ((-85 * ((*v2 - *(v0 - 4)) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((*v2 - *(v0 - 4)) ^ 0xDF))] ^ 0xBF]) + 75368])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001A88F8@<X0>(uint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  v4 = (v2 + 3856) | 2;
  v5 = v2 - 2685;
  *(v3 + 84) = *a2;
  v6 = STACK[0x4E8];
  STACK[0x630] = &STACK[0xA00] + STACK[0x4E8];
  STACK[0x4E8] = v6 + ((v2 - 959530343) & 0x39313BBF ^ 0xA9ELL);
  v7 = STACK[0x6F0];
  STACK[0x7D0] = STACK[0x6F0];
  STACK[0x678] = 0;
  STACK[0x4F0] = 0;
  STACK[0x568] = 0;
  LODWORD(STACK[0x560]) = 0;
  STACK[0x6A0] = 0;
  STACK[0x5B8] = 0;
  v8 = (*(a1 + 8 * (v2 ^ 0x31E5)))();
  if (v7)
  {
    v9 = LODWORD(STACK[0x618]) == v4 - 9079;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0x3E8] + 8 * ((993 * v10) ^ v5)))(v8);
}

void sub_1001A8B90(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x7FFD9340) + (~a1 | 0x80026CBF))) ^ 0xB9F4A69C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001A8D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x600] = v4;
  v6 = (*(a4 + 8 * (v5 ^ 0x3765)))(32, 0x103004054B5FA7DLL);
  v7 = STACK[0x3E8];
  STACK[0x4C0] = v6;
  return (*(v7 + 8 * (((v6 == 0) * (((v5 + 414) ^ 0xFFFFFD79) + (v5 ^ 0xA63))) ^ v5)))();
}

void WGrQCCz7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && a5 != 0 && a6 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001A9448()
{
  STACK[0x948] = v1;
  v3 = STACK[0x478];
  STACK[0x950] = STACK[0x478];
  return (*(v2 + 8 * ((3130 * (v1 - v3 > (4 * ((v0 - 1814264284) & 0x2C236F4A ^ 0xA15u)) - 371)) ^ v0)))();
}

uint64_t sub_1001A9574()
{
  v4 = (*(v3 + 8 * (v0 + 4623)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_1001A95F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = STACK[0x3F8] - 507;
  v44 = (v41 ^ v42) + a41;
  STACK[0xA10] = v44;
  return (*(STACK[0x400] + 8 * (v43 ^ (29 * (v44 > a34)))))();
}

uint64_t sub_1001A9658()
{
  v5 = (v2 - 1901) - v1 - 1800;
  v6 = *(v0 + v5 - 15);
  v7 = *(v0 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((6347 * (v1 == 96)) ^ v2)))();
}

uint64_t sub_1001A96A4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v5 - a2 - 712) ^ 0x1F0E)) ^ (v3 + v5 + 3252))))();
}

uint64_t sub_1001A96E0@<X0>(int8x16_t *a1@<X8>)
{
  v2.i64[0] = 0x7878787878787878;
  v2.i64[1] = 0x7878787878787878;
  v3 = vsubq_s8(v1[1], vandq_s8(vaddq_s8(v1[1], v1[1]), v2));
  v4 = vandq_s8(vaddq_s8(*v1, *v1), v2);
  v2.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v2.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *a1 = vaddq_s8(vsubq_s8(*v1, v4), v2);
  a1[1] = vaddq_s8(v3, v2);
  return sub_1001A9714();
}

uint64_t sub_1001A9714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v64 + 8 * (v65 ^ 0x34CA)))(v67, 0, 24);
  *(v66 + 104) = 0x1FA834112;
  *(v66 + 112) = 0x200000004;
  STACK[0x5B8] = v67;
  LODWORD(STACK[0x73C]) = 0;
  STACK[0x4D8] = 0;
  v68 = (*(a64 + 8 * (v65 ^ 0x34E8)))(128, 0x10800400FED9166);
  STACK[0x668] = v68;
  return (*(a64 + 8 * (((v68 == 0) * (((v65 - 4416) | 0xA40) ^ 0xA57)) ^ v65)))();
}

void sub_1001A97C4(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&STACK[0x310] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x320] = vdupq_n_s64(0x19C69BDE09677532uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x300] = vdupq_n_s64(v7);
  *&STACK[0x2D0] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  STACK[0x2C0] = a6 + v8;
  *&STACK[0x2A0] = vdupq_n_s64(v9);
  *&STACK[0x2B0] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x290] = vdupq_n_s64(a1);
  STACK[0x280] = v6 + v8 - 8512;
  *&STACK[0x260] = vdupq_n_s64(a3);
  *&STACK[0x270] = vdupq_n_s64(a2);
  *&STACK[0x240] = vdupq_n_s64(a5);
  *&STACK[0x250] = vdupq_n_s64(a4);
  *&STACK[0x220] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x230] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x200] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x210] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  JUMPOUT(0x1001A99B0);
}

uint64_t sub_1001AAC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 & 0xDACD8FDA | ~(&a14 | 0xDACD8FDA)) ^ 0x7D5BA347) * v21;
  a15 = v23 + 920149463;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674576251;
  a16 = a12;
  a17 = &a11;
  v24 = (*(v19 + 8 * (v22 ^ 0x2EA7u)))(&a14);
  return (*(v19 + 8 * (((a14 == v20) * ((((v22 - 557378418) & 0x37C7) - 3800) ^ 0x117B)) ^ v22)))(v24);
}

uint64_t sub_1001AADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 224) = (v64 - 2140796570) ^ (914963389 * ((v65 - 232) ^ 0x2CFCB17B));
  (*(v66 + 8 * (v64 + 9178)))(v65 - 232);
  v67 = *(STACK[0x668] + 8);
  STACK[0x5F8] = *(a64 + 8 * v64);
  return sub_1001C0FDC(v67);
}

uint64_t sub_1001AAEE0()
{
  v1.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v1.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1001AAF04((v0 + 2138297564) ^ 0x1866, 9512, v1);
}

uint64_t sub_1001AAF04(uint64_t a1, int a2, int8x16_t a3)
{
  v11 = ~v7 + v5;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = v9 + v11;
  *(v14 - 15) = veorq_s8(v12, a3);
  *(v14 - 31) = veorq_s8(v13, a3);
  return (*(v10 + 8 * (((a1 + v7 == v6) * a2) ^ (v4 + v8 + 1283))))();
}

uint64_t sub_1001AAF54@<X0>(unint64_t a1@<X8>)
{
  STACK[0x938] = v2;
  v4 = STACK[0x370];
  STACK[0x940] = STACK[0x370];
  return (*(v3 + 8 * ((1532 * (v2 - v4 > (((v1 ^ 0x1B45u) + 5274) ^ a1))) ^ v1)))();
}

void sub_1001AB03C(uint64_t a1)
{
  v1 = 869295389 * ((~a1 & 0xF52F98AE | a1 & 0xAD06751) ^ 0x447BB4FD);
  v2 = *(a1 + 12) - v1;
  v3 = (*(a1 + 8) - v1);
  if (*a1)
  {
    v4 = v3 == 12299;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AB17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = v20;
  STACK[0x310] = a5 & 0xFFFFFFF8;
  v28 = a16 - (a5 & 0xFFFFFFF8) + 8;
  v29 = a6 + v19 + a1 + v16 + a5 - a16;
  v30 = v17 + a5 - a16;
  v31.i64[0] = v30 - 7;
  v31.i64[1] = v30 - 8;
  v32.i64[0] = v30 - 3;
  v32.i64[1] = v30 - 4;
  v33.i64[0] = v30 - 1;
  v33.i64[1] = v30 - 2;
  v34 = (a3 + 3904) | 0x200u;
  v35.i64[0] = v30 - 5;
  v35.i64[1] = v30 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v36.i64[0] = v29 - 5;
  v36.i64[1] = v29 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v37.i64[0] = v29 - 1;
  v37.i64[1] = v29 - 2;
  v38.i64[0] = v29 - 3;
  v38.i64[1] = v29 - 4;
  v39.i64[0] = v29 - 7;
  v39.i64[1] = v29 - 8;
  v40 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v41 = vandq_s8(v35, v40);
  v42 = vandq_s8(v33, v40);
  v43 = vandq_s8(v32, v40);
  v44 = vandq_s8(v31, v40);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vdupq_n_s64(0x38uLL);
  v50 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v51 = vaddq_s64(v48, v50);
  v52 = vaddq_s64(v47, v50);
  v53 = vaddq_s64(v46, v50);
  v54 = vaddq_s64(v45, v50);
  v55 = vdupq_n_s64(v27);
  v56 = vdupq_n_s64(0xB30538E1A5AF13B6);
  v57 = vsubq_s64(vorrq_s8(v51, v55), vorrq_s8(v51, v56));
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(v54, v55), vorrq_s8(v54, v56)), v56);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(v53, v55), vorrq_s8(v53, v56)), v56);
  v60 = vaddq_s64(vsubq_s64(vorrq_s8(v52, v55), vorrq_s8(v52, v56)), v56);
  v61 = vdupq_n_s64(0x513852535460B9BuLL);
  v62 = vaddq_s64(v57, v56);
  v63 = veorq_s8(v62, v61);
  v64 = veorq_s8(v60, v61);
  v65 = veorq_s8(v59, v61);
  v66 = vdupq_n_s64(0xAD5560B2ACB07AC7);
  v67 = veorq_s8(v58, v61);
  v68 = veorq_s8(v58, v66);
  v69 = veorq_s8(v59, v66);
  v70 = veorq_s8(v60, v66);
  v71 = veorq_s8(v62, v66);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v74 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v75 = veorq_s8(vaddq_s64(v72, v68), v74);
  v76 = veorq_s8(v73, v74);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v70), v74);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v71), v74);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v81 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v82 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v82);
  v87 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v88 = veorq_s8(vaddq_s64(v83, v79), v87);
  v89 = veorq_s8(vaddq_s64(v84, v80), v87);
  v90 = veorq_s8(vaddq_s64(v85, v81), v87);
  v91 = veorq_s8(v86, v87);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v95 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v96 = veorq_s8(v90, v94);
  v97 = veorq_s8(v89, v93);
  v98 = veorq_s8(v88, v92);
  v99 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v98);
  v103 = vaddq_s64(v101, v97);
  v104 = vaddq_s64(v100, v96);
  v105 = vaddq_s64(v99, v95);
  v106 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v107 = vdupq_n_s64(0x343B3FDCD10949FuLL);
  v108 = vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), v106)), v107);
  v109 = vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v106)), v107);
  v110 = vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v106)), v107);
  v111 = vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v106)), v107);
  v112 = vdupq_n_s64(0x5A20053898C9EB80uLL);
  v113 = veorq_s8(v111, v112);
  v114 = veorq_s8(v110, v112);
  v115 = veorq_s8(v109, v112);
  v116 = veorq_s8(v108, v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v121 = veorq_s8(v115, v119);
  v122 = veorq_s8(v114, v118);
  v123 = veorq_s8(v113, v117);
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v123);
  v128 = vaddq_s64(v126, v122);
  v129 = vaddq_s64(v125, v121);
  v130 = vaddq_s64(v124, v120);
  v131 = vdupq_n_s64(0x20842EAD28A8535AuLL);
  v132 = vdupq_n_s64(0xDF7BD152D757ACA5);
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(v130, v131), vorrq_s8(v130, v132)), v132);
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(v129, v131), vorrq_s8(v129, v132)), v132);
  v135 = vaddq_s64(vsubq_s64(vorrq_s8(v128, v131), vorrq_s8(v128, v132)), v132);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(v127, v131), vorrq_s8(v127, v132)), v132);
  v137 = vdupq_n_s64(0x41C1B387D8B777ADuLL);
  v138 = veorq_s8(v136, v137);
  v139 = veorq_s8(v135, v137);
  v140 = veorq_s8(v134, v137);
  v141 = veorq_s8(v133, v137);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v143 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v144 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v145 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v145);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v144);
  v150 = vaddq_s64(v147, v143);
  v151 = vaddq_s64(v146, v142);
  v152 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v153 = vdupq_n_s64(0x629E5557E5EFD9B2uLL);
  v154 = vsubq_s64(vorrq_s8(v148, v152), vorrq_s8(v148, v153));
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(v151, v152), vorrq_s8(v151, v153)), v153);
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(v150, v152), vorrq_s8(v150, v153)), v153);
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(v149, v152), vorrq_s8(v149, v153)), v153);
  v158 = vdupq_n_s64(0xF9A2B6AA6A94F821);
  v159 = veorq_s8(vaddq_s64(v154, v153), v158);
  v160 = veorq_s8(v157, v158);
  v161 = veorq_s8(v156, v158);
  v162 = veorq_s8(v155, v158);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v164 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v165 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v166 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v169 = veorq_s8(vaddq_s64(v167, v163), v168);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164), v168);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v165), v168);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v166), v168);
  v173 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v176 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, v173));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, v174));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, v175));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v181 = vdupq_n_s64(0x170BF460A85E9EEEuLL);
  v182 = vdupq_n_s64(0xF47A05CFABD0B088);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v181), v177), v182);
  v184 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v181), v178), v182);
  v185 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v181), v179), v182);
  v186 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v181), v180), v182);
  v187 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v188 = veorq_s8(v186, v187);
  v189 = veorq_s8(v185, v187);
  v190 = veorq_s8(v184, v187);
  v191 = veorq_s8(v183, v187);
  v192 = vandq_s8(vshlq_n_s64(v31, 3uLL), v49);
  v193 = vandq_s8(vshlq_n_s64(v32, 3uLL), v49);
  v194 = vshlq_u64(v191, vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v49)));
  v195 = vshlq_u64(v190, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v49)));
  v196 = vshlq_u64(v189, vnegq_s64(v193));
  v197 = vshlq_u64(v188, vnegq_s64(v192));
  v198 = vandq_s8(v39, v40);
  v199 = vandq_s8(v38, v40);
  v200 = vandq_s8(v37, v40);
  v201 = vandq_s8(v36, v40);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v207 = vaddq_s64(v206, v205);
  v208 = vaddq_s64(v204, v205);
  v209 = vaddq_s64(v203, v205);
  v210 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v211 = vaddq_s64(v202, v205);
  v212 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v213 = vaddq_s64(vandq_s8(vsubq_s64(v210, v202), v212), v211);
  v214 = vaddq_s64(vandq_s8(vsubq_s64(v210, v203), v212), v209);
  v215 = vaddq_s64(vandq_s8(vsubq_s64(v210, v204), v212), v208);
  v216 = vaddq_s64(vandq_s8(vsubq_s64(v210, v206), v212), v207);
  v217 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v218 = vsubq_s64(v216, vandq_s8(v207, v217));
  v219 = vsubq_s64(v215, vandq_s8(v208, v217));
  v220 = vsubq_s64(v214, vandq_s8(v209, v217));
  v221 = vsubq_s64(v213, vandq_s8(v211, v217));
  v222 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(v220, v222);
  v225 = veorq_s8(v219, v222);
  v226 = veorq_s8(v218, v222);
  v227 = vdupq_n_s64(0xDB58A1A949065591);
  v228 = veorq_s8(v218, v227);
  v229 = veorq_s8(v219, v227);
  v230 = veorq_s8(v220, v227);
  v231 = veorq_s8(v221, v227);
  v232 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v229);
  v234 = vaddq_s64(v232, v228);
  v235 = vdupq_n_s64(0xBC7AB44B3A189480);
  v236 = veorq_s8(v234, v235);
  v237 = veorq_s8(v233, v235);
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v230), v235);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v231), v235);
  v240 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v241 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v242 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), v240), v236), v241);
  v243 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v240), v237), v241);
  v244 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v240), v238), v241);
  v245 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v239, v239), v240), v239), v241);
  v246 = vdupq_n_s64(a7);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v254 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v255 = veorq_s8(v248, v252);
  v256 = veorq_s8(v247, v251);
  v257 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v256);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v255);
  v261 = vaddq_s64(v258, v254);
  v262 = vaddq_s64(v257, v253);
  v263 = vdupq_n_s64(a8);
  v264 = vdupq_n_s64(v22);
  v265 = vdupq_n_s64(v23);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(v262, vandq_s8(vaddq_s64(v262, v262), v263)), v264), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v263)), v264), v265);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(v260, vandq_s8(vaddq_s64(v260, v260), v263)), v264), v265);
  v269 = veorq_s8(vaddq_s64(vsubq_s64(v259, vandq_s8(vaddq_s64(v259, v259), v263)), v264), v265);
  v270 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v273 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v274 = veorq_s8(v268, v272);
  v275 = veorq_s8(v267, v271);
  v276 = veorq_s8(v266, v270);
  v277 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v276);
  v281 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v282 = veorq_s8(vaddq_s64(v277, v273), v281);
  v283 = veorq_s8(vaddq_s64(v278, v274), v281);
  v284 = veorq_s8(vaddq_s64(v279, v275), v281);
  v285 = veorq_s8(v280, v281);
  v286 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v289 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v290 = veorq_s8(v284, v288);
  v291 = veorq_s8(v283, v287);
  v292 = veorq_s8(v282, v286);
  v293 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v295 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v292);
  v297 = vaddq_s64(v295, v291);
  v298 = vaddq_s64(v294, v290);
  v299 = vaddq_s64(v293, v289);
  v300 = vdupq_n_s64(v24);
  v301 = vdupq_n_s64(v25);
  v302 = vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v300)), v301);
  v303 = vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v300)), v301);
  v304 = vaddq_s64(vsubq_s64(v298, vandq_s8(vaddq_s64(v298, v298), v300)), v301);
  v305 = vaddq_s64(vsubq_s64(v299, vandq_s8(vaddq_s64(v299, v299), v300)), v301);
  v306 = vdupq_n_s64(v26);
  v307 = veorq_s8(v305, v306);
  v308 = veorq_s8(v304, v306);
  v309 = veorq_s8(v303, v306);
  v310 = veorq_s8(v302, v306);
  v311 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v314 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v315 = veorq_s8(v309, v313);
  v316 = veorq_s8(v308, v312);
  v317 = veorq_s8(v307, v311);
  v318 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v321 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v317);
  v322 = vaddq_s64(v320, v316);
  v323 = vaddq_s64(v319, v315);
  v324 = vaddq_s64(v318, v314);
  v325 = vdupq_n_s64(v21);
  v326 = vdupq_n_s64(0x2451E0AF25CF2710uLL);
  v327 = vaddq_s64(vsubq_s64(vorrq_s8(v324, v325), vorrq_s8(v324, v326)), v326);
  v328 = vaddq_s64(vsubq_s64(vorrq_s8(v323, v325), vorrq_s8(v323, v326)), v326);
  v329 = vaddq_s64(vsubq_s64(vorrq_s8(v322, v325), vorrq_s8(v322, v326)), v326);
  v330 = vaddq_s64(vsubq_s64(vorrq_s8(v321, v325), vorrq_s8(v321, v326)), v326);
  v331 = vdupq_n_s64(v18);
  v332 = veorq_s8(v330, v331);
  v333 = veorq_s8(v329, v331);
  v334 = veorq_s8(v328, v331);
  v335 = veorq_s8(v327, v331);
  v336 = vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL);
  v337 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v339 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v340 = veorq_s8(v334, v338);
  v341 = veorq_s8(v333, v337);
  v342 = veorq_s8(v332, v336);
  v343 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v342);
  v347 = vaddq_s64(v344, v340);
  v348 = vaddq_s64(v343, v339);
  v349 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(vaddq_s64(v345, v341), v349);
  v353 = veorq_s8(v346, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL)));
  v358 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v359 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), veorq_s8(v351, v355)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v49)));
  v361.val[3] = veorq_s8(vshlq_u64(veorq_s8(v357, v358), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v49))), v197);
  v361.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), veorq_s8(v352, v356)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v49))), v196);
  v361.val[0] = veorq_s8(v359, v195);
  v361.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), veorq_s8(v350, v354)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v49))), v194);
  *(v29 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v361, xmmword_100382E20)), *(v30 - 8));
  return (*(STACK[0x330] + 8 * ((6644 * (v28 == 0)) ^ a3)))();
}

uint64_t sub_1001ABEFC()
{
  *(v5 - 224) = v1 ^ (914963389 * ((((2 * (v5 - 232)) | 0xF478A40A) - (v5 - 232) + 96710139) ^ 0xD6C0E37E));
  v6 = (*(v4 + 8 * (v0 ^ 0x326D)))(v5 - 232);
  *(v3 + 16) = *(v5 - 232) ^ v2;
  return (*(v4 + 8 * (v0 + 674)))(v6);
}

uint64_t sub_1001ABFEC()
{
  LOWORD(STACK[0x89A]) = v2;
  LODWORD(STACK[0x2B0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5298)))();
}

uint64_t sub_1001AC0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51)
{
  v51 = STACK[0x3E4];
  v52 = (a3 ^ 0xBC59953u) + STACK[0x240];
  STACK[0x8B0] = v52;
  return (*(STACK[0x3E8] + 8 * ((v51 - 260) | (8 * (v52 <= a51)))))();
}

uint64_t sub_1001AC2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v18 = 914963389 * (((&a10 | 0xB4866586) - &a10 + (&a10 & 0x4B799A78)) ^ 0x987AD4FD);
  a10 = &a9;
  a12 = v14;
  a13 = (((2 * v17) & 0x32) - 68295680 + (((v16 ^ 0x1D34) + 503206904) ^ v17)) ^ v18;
  a14 = -1686438660 - v18;
  a11 = (v16 - 4185) ^ v18;
  v19 = (*(v15 + 8 * (v16 + 4491)))(&a10);
  return (*(v15 + 8 * ((2708 * (*(v14 + 24) == 16257999)) ^ v16)))(v19);
}

void sub_1001AC3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  *&STACK[0x380] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x390] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x360] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x370] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  STACK[0x210] = a5 & 0xFFFFFFF8;
  *&STACK[0x340] = vdupq_n_s64(0x6FE9388060F65D57uLL);
  *&STACK[0x350] = vdupq_n_s64(0x202D8EFF3E134550uLL);
  *&STACK[0x320] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x330] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x300] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x310] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x2D0] = xmmword_100382E20;
  *&STACK[0x2A0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x280] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x290] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x260] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x270] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x240] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a8);
  JUMPOUT(0x1001AC630);
}

void sub_1001AD0F8(uint64_t a1)
{
  v1 = *(a1 + 8) - 2008441969 * ((((2 * a1) | 0x66E4568) - a1 - 53945012) ^ 0x4BAE76BA);
  v2 = *(&off_1003E6550 + v1 - 3776) - 8;
  (*&v2[8 * v1 + 44360])(v5, 0, 128);
  v3 = 1710126949 * ((&v6 + 738329364 - 2 * (&v6 & 0x2C020314)) ^ 0x1E195884);
  LODWORD(v7) = v3 ^ (v1 + 940076323);
  HIDWORD(v7) = 1303982150 - v3;
  v6 = v5;
  (*&v2[8 * (v1 ^ 0x2A6A)])(&v6);
  v4 = 31943069 * (&v6 ^ 0x5312319B63A94678);
  v6 = v5;
  v7 = (v4 + 0x605222BC435F6A18) | 1;
  v8 = v1 - v4 + 584252646;
  (*&v2[8 * v1 + 44912])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001AD4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & ((4243 * (v7 ^ 0x1467u)) ^ 0xFFFFFFFFFFFFDEDELL), 8);
  v20 = (v19 + a5) ^ a6;
  v21 = __ROR8__((v19 + a5) ^ v16, 8);
  v22 = __ROR8__(((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13, 8);
  v23 = ((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13 ^ __ROR8__(v20, 61);
  v24 = (v10 - ((v22 + v23) | v10) + ((v22 + v23) | v12)) ^ v14;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a7;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF2620266DFD8DE82;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x5C3E923DC79C4710) + 0x2E1F491EE3CE2388) ^ 0x97A1B9D365930275;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x6E1E19DDB33CB23ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *v18 = ((((2 * (v35 + v34)) & 0x93BA3B681E438AC2) - (v35 + v34) + 0x3622E24BF0DE3A9ELL) ^ 0x3102FDB0D852CBCLL) >> (8 * (v18 & 7u));
  return (*(a4 + 8 * ((3146 * (v17 == 0)) ^ (v7 + 613))))();
}

uint64_t sub_1001AD628()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2887)))();
  STACK[0x418] = 0;
  return (STACK[0x770])(v2);
}

uint64_t sub_1001AD650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 2109) ^ ((((&a15 | 0x93B9EC39) - &a15 + (&a15 & 0x6C4613C0)) ^ 0xAA4F261A) * v21);
  a17 = a10;
  a18 = &a12;
  (*(v20 + 8 * (v18 ^ 0x2136)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((&a15 ^ 0x709A6727 | 0xD9489401) - ((&a15 ^ 0x709A6727) & 0xD9489401)) ^ 0xE14BA728) + 4542;
  a17 = a10;
  v22 = (*(v20 + 8 * (v18 + 8508)))(&a15);
  return (*(v20 + 8 * ((6862 * (a15 == ((v18 + 1715159448) & 0x1E9F ^ (v19 + 905)))) ^ v18)))(v22);
}

uint64_t sub_1001AD7C0()
{
  v3 = (*(v2 + 8 * (v1 + 3212)))(64, v0);
  STACK[0x760] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1788240529) & 0x9569A57B) - 8456)) ^ (v1 + 1657))))();
}

void sub_1001AD834(uint64_t a1)
{
  v1 = *(a1 + 4) + 1875091903 * ((a1 & 0xE8D1405E | ~(a1 | 0xE8D1405E)) ^ 0x215B3C22);
  v3 = v1 - 1710126949 * ((((&v3 | 0x1649C412) ^ 0xFFFFFFFE) - (~&v3 | 0xE9B63BED)) ^ 0xDBAD607D) + 476319409;
  v2 = *(&off_1003E6550 + (v1 ^ 0xF4E)) - 8;
  (*&v2[8 * v1 + 47704])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001ADAD4@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x660] = a1;
  LODWORD(STACK[0x9B8]) = v5;
  LOWORD(STACK[0x9BE]) = a2;
  LODWORD(STACK[0x9C0]) = v6;
  LODWORD(STACK[0x9C4]) = v2;
  STACK[0x9C8] = v4;
  STACK[0x9D0] = v7;
  return (*(v8 + 8 * (((a1 == 0) * (538 * ((v3 - 2060051445) & 0x7AC9D7F6 ^ 0x15F1) - 2807)) ^ v3)))();
}

void i1IfStf2DSO(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001ADBB0(uint64_t a1)
{
  v7 = *(v3 + 8 * (((v5 - 8844) | 0x1003) ^ 0x370C));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v6 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 5221)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v6 = -42030;
    goto LABEL_7;
  }

  v6 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v6;
  return result;
}

uint64_t sub_1001ADC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v18 = ((2 * (v14 & 0x7B7D5B721A426FF8) - v14 - 0x7B7D5B721A427000) ^ 0x50662B01540C0705) * v17;
  a12 = *(v16 + 20) - v18 + 0x4BDB88A3AECF6863 + (~(2 * *(v16 + 20)) | 0x6848EEB8A2612F3BLL);
  a10 = v18 - 1219622829 + v13;
  v19 = (*(v12 + 8 * (v13 + 3284)))(&a10);
  if (a11 != 16257999 && a11 != 16215948)
  {
    return (*(v12 + 8 * (((v15 - 6340) * (a11 == 16257999)) ^ (v15 - 3715))))(v19);
  }

  *(v16 + 20) = 0;
  *(v16 + 92) = 203186117;
  v22 = *(v16 + 124);
  if (v22)
  {
    v23 = *(v16 + 116) == ((v15 - 1119) ^ 0x14E1);
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return (*(v12 + 8 * ((143 * v24) ^ (v15 - 2854))))(v22, v20, v21);
}

uint64_t sub_1001ADDC0@<X0>(int a1@<W8>)
{
  v2 = a1 | 0x4B8;
  v3 = (a1 | 0x4B8) ^ 0x1839;
  v4 = *(STACK[0x720] + 24);
  STACK[0x388] = v4;
  return (*(v1 + 8 * (((v4 != 0) * (v3 - 3354)) ^ v2)))();
}

uint64_t sub_1001ADE04(uint64_t a1)
{
  v2 = *(a1 + 4) + 956911519 * ((a1 - 1138522822 - 2 * (a1 & 0xBC23853A)) ^ 0x56B2F53F);
  v5 = v2 + 2048652491 * ((-381725712 - (v4 | 0xE93F53F0) + (v4 | 0x16C0AC0F)) ^ 0xA7713B0A) - 1986968849;
  result = (*(*(&off_1003E6550 + (v2 ^ 0x766EDD31)) + (v2 ^ 0x766EF9F1) - 1))(v4);
  *a1 = v4[0];
  return result;
}

void mm0Euuzhc()
{
  v0 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403578) ^ 0xDF)) ^ byte_1003739D0[byte_100369460[(-85 * ((dword_1004033E0 - dword_100403578) ^ 0xDF))] ^ 0xEE]) + 144);
  v1 = -85 * ((dword_1004033E0 - *v0) ^ 0xDF);
  v2 = *(&off_1003E6550 + (byte_10037A9B8[(byte_100373AD8[v1 - 8] ^ 1) - 8] ^ v1) + 14);
  v3 = *v2 - *v0 - &v5;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x36DDAAE8) - v6 + 1226986771) ^ 0x7B390E83);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403578) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 + dword_100403578) ^ 0xDF))] ^ 0x9B]) + 206) - 8;
  (*&v4[8 * (byte_10037AAB8[(byte_100373BD0[v2] ^ 0x2A) - 8] ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AE140@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((14241 * (v7 == (((a2 + v5 + 2114) | 0x335u) ^ 0xBB5))) ^ (v5 + v3))))();
}

void sub_1001AE234(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x3C5E)))(a1);
  *(STACK[0x618] + 24) = 0;
  JUMPOUT(0x1000A0C1CLL);
}

uint64_t sub_1001AE2AC()
{
  STACK[0xA88] = v1;
  v3 = STACK[0x928];
  STACK[0xA90] = STACK[0x928];
  return (*(v2 + 8 * (((v1 - v3 > (v0 ^ 0x9E5u) - 478) * ((v0 ^ 0x1FC9) - 6053)) ^ v0)))();
}

uint64_t sub_1001AE300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = ((2 * (&a16 & 0xF70C7B8) - &a16 + 1888434244) ^ 0x28E6EB26) * v21;
  a17 = v23 + 982124808;
  a18 = a12;
  a19 = &a14;
  a20 = -654855621 - v23;
  a21 = v23 + a10 + 1674574660;
  v24 = (*(v22 + 8 * (a10 ^ 0x34EE)))(&a16);
  return (*(v22 + 8 * ((13329 * (a16 == ((a10 - 2512) ^ 0xF81459))) ^ a10)))(v24);
}

uint64_t sub_1001AE480(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 104) = veorq_s8(*(v4 + 88), xmmword_100382E30);
  v5 = *(v4 + 4);
  *(a1 + 20) = v5;
  return (*(a4 + 8 * (((v5 == ((a2 + 7428) ^ 0x24D7)) * (a2 + 3628)) ^ (a2 - 917))))();
}

uint64_t sub_1001AE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 138;
  v6 = (*(a4 + 8 * (v4 + 3326)))(138, 0x100004077774924);
  v7 = STACK[0x3E8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 != 0) * ((((v4 - 5919) | 0x400) + 3808) ^ 0x146E)) | v4)))();
}

uint64_t sub_1001AE5B0()
{
  v3 = STACK[0x6B0];
  *(v1 + 104) = 16;
  *(v1 + 103) = *(v3 + 23);
  *(v1 + 102) = *(v3 + 22);
  *(v1 + 101) = *(v3 + 21);
  *(v1 + 100) = *(v3 + 20);
  *(v1 + 99) = *(v3 + 19);
  *(v1 + 98) = *(v3 + 18);
  *(v1 + 97) = *(v3 + 17);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 95) = *(v3 + 15);
  *(v1 + 94) = *(v3 + 14);
  *(v1 + 93) = *(v3 + 13);
  *(v1 + 92) = *(v3 + 12);
  *(v1 + 91) = *(v3 + 11);
  *(v1 + 90) = *(v3 + 10);
  *(v1 + 89) = *(v3 + 9);
  *(v1 + 88) = *(v3 + 8);
  *(v1 + 84) = *v3;
  return (*(v2 + 8 * (((*(v3 + 4) == 0) * ((v0 + 458231097) & 0xE4AFF4DF ^ 0x1DE6)) ^ v0)))();
}

void sub_1001AE70C()
{
  v3 = *(v0 + 40);
  **(v0 + 16) = v2;
  *v3 = v4;
  *(v0 + 56) = v1;
}

uint64_t sub_1001AE77C(_DWORD *a1)
{
  v2 = a1[1] ^ (956911519 * ((2 * (a1 & 0x3B074F9) - a1 - 61895930) ^ 0x16DEFB03));
  v4[1] = v2 + 1710126949 * (((v4 | 0xB6B0CF29) + (~v4 | 0x494F30D6)) ^ 0x84AB94B8) - 1179738666;
  result = (*(*(&off_1003E6550 + (v2 ^ 0xA98300C0)) + (v2 ^ 0xA983240E) - 1))(v4);
  *a1 = v4[0];
  return result;
}

uint64_t sub_1001AEA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v90.i64[0] = &v72[-164] + (((v74 ^ v71) - 3151) | v73) - 4;
  v90.i64[1] = v72->i64 + 7;
  v91 = v90;
  *&STACK[0x310] = v90;
  v92.i64[0] = v72->i64 + 2;
  v92.i64[1] = v72->i64 + 3;
  v93.i64[0] = v72->i64 + 4;
  v93.i64[1] = v72->i64 + 5;
  v94.i64[0] = v72;
  v94.i64[1] = v72->i64 + 1;
  v90.i64[0] = &v72->i64[1];
  v90.i64[1] = &v72->i64[1] + 1;
  *&STACK[0x370] = v90;
  v90.i64[0] = &v72->i64[1] + 2;
  v90.i64[1] = &v72->i64[1] + 3;
  *&STACK[0x360] = v90;
  v95 = vandq_s8(v94, *&STACK[0x350]);
  v96 = vandq_s8(v93, *&STACK[0x350]);
  v97 = vandq_s8(v92, *&STACK[0x350]);
  v98 = vandq_s8(v91, *&STACK[0x350]);
  v99 = *&STACK[0x2E0];
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), *&STACK[0x2E0]);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), *&STACK[0x2E0]);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), *&STACK[0x2E0]);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), *&STACK[0x2E0]);
  v104 = vsubq_s64(vorrq_s8(v100, *&STACK[0x340]), vorrq_s8(v100, v84));
  v105 = vsubq_s64(vorrq_s8(v101, *&STACK[0x340]), vorrq_s8(v101, v84));
  v106 = vsubq_s64(vorrq_s8(v102, *&STACK[0x340]), vorrq_s8(v102, v84));
  *&STACK[0x320] = vsubq_s64(vorrq_s8(v103, *&STACK[0x340]), vorrq_s8(v103, v84));
  v107 = vaddq_s64(v105, v84);
  v108 = vaddq_s64(v104, v84);
  v109 = veorq_s8(v108, v89);
  v110 = veorq_s8(v107, v89);
  v111 = *&STACK[0x2B0];
  v112 = veorq_s8(v107, *&STACK[0x2C0]);
  v113 = veorq_s8(v108, *&STACK[0x2C0]);
  v114 = *&STACK[0x2C0];
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v112), *&STACK[0x2B0]);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113), *&STACK[0x2B0]);
  v117 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v118 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v119 = veorq_s8(v115, v117);
  v120 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), v77);
  v123 = veorq_s8(v121, v77);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v128 = vaddq_s64(v126, v124);
  v129 = *&STACK[0x290];
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), *&STACK[0x290])), v78), v79);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), *&STACK[0x290])), v78), v79);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v133);
  v136 = veorq_s8(vaddq_s64(v134, v132), v80);
  v137 = veorq_s8(v135, v80);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v139 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v140 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v139);
  v142 = vaddq_s64(v140, v138);
  v143 = *&STACK[0x330];
  v144 = *&STACK[0x250];
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), *&STACK[0x330]), v142), *&STACK[0x250]), v83);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), *&STACK[0x330]), v141), *&STACK[0x250]), v83);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v148 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v148);
  v151 = vaddq_s64(v149, v147);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, v85), vorrq_s8(v150, v87)), v87), v86);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, v85), vorrq_s8(v151, v87)), v87), v86);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v155 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156.i64[0] = &v72->i64[1] + 4;
  v156.i64[1] = &v72->i64[1] + 5;
  *&STACK[0x300] = v156;
  v157 = vaddq_s64(v106, v84);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL)));
  v159 = vaddq_s64(v155, v154);
  v274.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, v88), vorrq_s8(v159, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v76)));
  v274.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, v88), vorrq_s8(v158, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v76)));
  v160 = veorq_s8(v157, v89);
  v161 = veorq_s8(v157, v114);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v111);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v77);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v129)), v78), v79);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v80);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), v143), v171), v144), v83);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174, v85), vorrq_s8(v174, v87)), v87), v86);
  v93.i64[0] = &v72->i64[1] + 6;
  v93.i64[1] = &v72->i64[1] + 7;
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL)));
  v177 = vandq_s8(v93, *&STACK[0x350]);
  v178 = vaddq_s64(*&STACK[0x320], v84);
  v274.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v88), vorrq_s8(v176, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v76)));
  v179 = veorq_s8(v178, v89);
  v180 = veorq_s8(v178, v114);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v111);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v77);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(v185, vandq_s8(vaddq_s64(v185, v185), v129)), v78), v79);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v80);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v190, v190), v143), v190), v144), v83);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, v85), vorrq_s8(v193, v87)), v87), v86);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v197 = vandq_s8(v156, *&STACK[0x350]);
  v198 = vaddq_s64(v196, v195);
  v199 = vandq_s8(*&STACK[0x360], *&STACK[0x350]);
  v274.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v198, v88), vorrq_s8(v198, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v76)));
  v200 = vandq_s8(*&STACK[0x370], *&STACK[0x350]);
  v201 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v99);
  v205 = vaddq_s64(v203, v99);
  v206 = vaddq_s64(v202, v99);
  v207 = vaddq_s64(v201, v99);
  v208 = vsubq_s64(vorrq_s8(v205, *&STACK[0x340]), vorrq_s8(v205, v84));
  v209 = vsubq_s64(vorrq_s8(v206, *&STACK[0x340]), vorrq_s8(v206, v84));
  v210 = vsubq_s64(vorrq_s8(v207, *&STACK[0x340]), vorrq_s8(v207, v84));
  v211 = vaddq_s64(v208, v84);
  v212 = vaddq_s64(vsubq_s64(vorrq_s8(v204, *&STACK[0x340]), vorrq_s8(v204, v84)), v84);
  v207.i64[0] = vqtbl4q_s8(v274, a71).u64[0];
  v213 = veorq_s8(v212, v89);
  v274.val[0] = veorq_s8(v211, v89);
  v274.val[1] = veorq_s8(v211, v114);
  v274.val[2] = veorq_s8(v212, v114);
  v274.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]), v111);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v274.val[2]), v111);
  v215 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v215);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = veorq_s8(vaddq_s64(v216, v274.val[1]), v77);
  v218 = veorq_s8(v217, v77);
  v219 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v219);
  v220 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = vaddq_s64(v220, v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), v129)), v78), v79);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(v221, vandq_s8(vaddq_s64(v221, v221), v129)), v78), v79);
  v223 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v223);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = veorq_s8(vaddq_s64(v224, v274.val[1]), v80);
  v226 = veorq_s8(v225, v80);
  v227 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v227);
  v228 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = vaddq_s64(v228, v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x330]), v274.val[0]), v144), v83);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), *&STACK[0x330]), v229), v144), v83);
  v231 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v231);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = vaddq_s64(v232, v274.val[1]);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v233, v85), vorrq_s8(v233, v87)), v87), v86);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v85), vorrq_s8(v274.val[0], v87)), v87), v86);
  v235 = vaddq_s64(v209, v84);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL)));
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL)));
  v274.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v88), vorrq_s8(v274.val[0], v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v76)));
  v274.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, v88), vorrq_s8(v236, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), v76)));
  v237 = veorq_s8(v235, v89);
  v238 = veorq_s8(v235, v114);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v111);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v77);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), v129)), v78), v79);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), v80);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), *&STACK[0x330]), v248), v144), v83);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251, v85), vorrq_s8(v251, v87)), v87), v86);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL)));
  v254 = vaddq_s64(v210, v84);
  v274.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v253, v88), vorrq_s8(v253, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v76)));
  v255 = veorq_s8(v254, v89);
  v256 = veorq_s8(v254, v114);
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v111);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v77);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v129)), v78), v79);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v264 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263), v80);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v266, v266), *&STACK[0x330]), v266), v144), v83);
  v268 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v269 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v268);
  v270 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v269, v85), vorrq_s8(v269, v87)), v87), v86);
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL)));
  v272 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v271, v88), vorrq_s8(v271, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v76)));
  v207.i64[1] = vqtbl4q_s8(v274, a71).u64[0];
  *v72 = v207;
  return (*(v75 + 8 * (((a2 != 16) * v71) ^ v74 ^ v71)))();
}

void S12yWPyxCU(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || a3 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001AF624@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v5 = *a2;
  STACK[0x770] = *(a1 + 8 * v2);
  STACK[0x670] = v4;
  STACK[0x758] = 0;
  STACK[0x620] = 0;
  return (*(a1 + 8 * (((v5 == 0) * (((v3 - 9191) | 0x280) ^ 0x266)) ^ v3)))();
}

uint64_t sub_1001AF838()
{
  v3 = STACK[0x580];
  STACK[0x548] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((((v1 ^ 0xAFB) - 13) ^ 0xBFA ^ (((v1 ^ 0xAFB) - 13) | 8) ^ 0xBD8) * (v3 == 0)) ^ v1 ^ 0xAFB)))();
}

uint64_t sub_1001AF8A0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xA64]) = v3;
  STACK[0x640] = STACK[0x640] + ((a2 - 1683) | 0x32Au) - 859;
  return (*(v4 + 8 * (a2 ^ (2845 * (v3 == v2)))))(a1, 16215976);
}

uint64_t sub_1001AF8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16257999)
  {
    v7 = STACK[0x4B8];
    v8 = *(STACK[0x4B8] + 8);
    v9 = STACK[0x4C0];
    v9[1] = v8;
    *v9 = *v7;
    return (*(a4 + 8 * (((v8 == 0) * ((v5 + 2732) ^ (v5 - 1940) ^ 0x123D)) ^ (v5 + 2151))))();
  }

  else if (v4 == 16215947)
  {
    return (*(a4 + 8 * (((*(STACK[0x808] + 8) == 0) * (((v5 - 5089) | 0x501) - 917)) ^ (v5 - 3972))))();
  }

  else
  {
    return (*(a4 + 8 * (((*(STACK[0x4C0] + 24) == 0) * (v5 - 1402 + v5 - 1383 - 7455)) ^ (v5 + 537))))();
  }
}

uint64_t sub_1001AF9D4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x448];
  STACK[0x588] = STACK[0x448];
  return (*(v1 + 8 * (((v2 == 0) * (((a1 ^ 0x17EA) + 2538) ^ 0x145A)) ^ a1)))();
}

uint64_t sub_1001AFA78@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = (v2 + ((2 * (a2 + 6)) & 0x4D9EFBB37DFFE74ELL) + ((a2 + 6) ^ 0xA6CF7DD9BEFFF3A7) + 0x5930822641000C59);
  v7 = (*v6 << 24) | (v6[1] << 16) | (v6[2] << 8);
  return (*(v5 + 8 * ((38 * ((((v7 | v6[3]) + a1 - 2 * ((v7 | v6[3]) & (a1 + 12) ^ v6[3] & 0xC)) ^ a1) + a2 + 10 <= v3)) ^ v4)))();
}

uint64_t sub_1001B00BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W7>, char a5@<W8>)
{
  v17 = v10 + v9 - 0x7E3601B1CFF728CALL;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = v18 - ((2 * v18 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v20 = __ROR8__(v19 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v19 ^= 0xFB03985F214EEF5uLL;
  v21 = __ROR8__((v20 + v19) ^ a2, 8);
  v22 = *(STACK[0x400] + 8 * a4);
  v23 = (v20 + v19) ^ a2 ^ __ROR8__(v19, 61);
  v24 = (v21 + v23) ^ a3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v12;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v6;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a1;
  *v17 = (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ v11) >> (8 * (v17 & 7u))) ^ HIBYTE(v8) ^ 0x82;
  v34 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (0x29702F06207D0E1CLL - v34) & 0x79175E2C12C0C2DDLL | (v34 + 0x568FD0F9DF82F1E3) & 0x84E8A1D3ED3F3D22;
  v36 = __ROR8__(v35 ^ 0x4A4885D2AB97D283, 8);
  v35 ^= 0xFE36021C57805D99;
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0xC127DFD94147335ELL) - (v39 + v38) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((((2 * (v42 + v41)) | 0x6287D6B764F85500) - (v42 + v41) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v44 = (((2 * (v42 + v41)) | 0x6287D6B764F85500) - (v42 + v41) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v41, 61);
  v45 = (v43 + v44) ^ v12;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v6;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  *(v17 + 1) = (((__ROR8__((((2 * (v49 + v48)) | 0x360AC320C760007CLL) - (v49 + v48) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v49 + v48)) | 0x360AC320C760007CLL) - (v49 + v48) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v48, 61))) ^ v11) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v8) ^ 0xD1;
  v50 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = -2 - (((0x29702F06207D0E1CLL - v50) | 0xC0963AD6F9C849DALL) + ((v50 + 0x568FD0F9DF82F1E3) | 0x3F69C5290637B625));
  v52 = v51 ^ 0xF1C9E128409F5984;
  v51 ^= 0x45B766E6BC88D69EuLL;
  v53 = (__ROR8__(v52, 8) + v51) ^ a2;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ a3;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0x3491A382ECB7AD6) - (v57 + v56) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0xBC926A3ADA0D4D3ALL) - (v60 + v59) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) & 0xC0B992F3FD58C89ALL) - (v63 + v62) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) | 0x526500C12C79ADD0) - (v66 + v65) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  *(v17 + 2) = (((((2 * (v69 + v68)) & 0x243286079BD1E962) - (v69 + v68) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v8) ^ 0x17;
  v70 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v70 - ((2 * v70 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v72 = v71 ^ 0xDC0265A8D53E5320;
  v71 ^= 0x687CE2662929DC3AuLL;
  v73 = __ROR8__(v72, 8);
  v74 = (((2 * (v73 + v71)) | 0xC1B61E594159C0E2) - (v73 + v71) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v75 = v74 ^ __ROR8__(v71, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a3;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x57D072DFC3A5F657;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = ((v13 & (2 * (v80 + v79))) - (v80 + v79) + v14) ^ v15;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v6;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a1;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  *(v17 + 3) = v8 ^ a5 ^ (((v87 + v86 - (v16 & (2 * (v87 + v86))) + v7) ^ v5) >> (8 * ((v17 + 3) & 7)));
  return v22();
}

uint64_t sub_1001B0788(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  *a4 = a1;
  *a63 = a59;
  return a5();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001B08BC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x890] = 0;
  STACK[0x7F8] = 0;
  STACK[0x518] = *(v3 + 8 * v2);
  return sub_10017A694(a1);
}

uint64_t sub_1001B08DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v17 = v11 - 1;
  v18 = (__ROR8__((v7 + v17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v19 = v18 ^ 0x4DE9423B6F16E7D2;
  v20 = v18 ^ v14;
  v21 = (__ROR8__(v19, 8) + v20) ^ v15;
  v22 = __ROR8__(v21, 8);
  v23 = __ROR8__(v20, 61);
  v24 = (v22 + (v21 ^ v23) - (((v22 + (v21 ^ v23)) << ((v12 - 1) ^ a7)) & v8) + v9) ^ v10;
  v25 = v24 ^ __ROR8__(v21 ^ v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a2 | (2 * ((v30 + v29) ^ a1))) - ((v30 + v29) ^ a1) + a3) ^ a4;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A2AEBE44253AF03;
  *(v7 + v17) = *(v13 + v17) ^ (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + v17) & 7))) ^ 0x3C;
  return (*(v16 + 8 * (v12 ^ (4 * (v17 != 0)))))();
}

void sub_1001B0B20(uint64_t a1)
{
  v1 = 1317436891 * (((a1 ^ 0xF854B432) - 292733615 - 2 * ((a1 ^ 0xF854B432) & 0xEE8D3D51)) ^ 0xA6DA1115);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_1001B0C18()
{
  result = v1;
  *v1 = v2;
  return result;
}

uint64_t sub_1001B0C70()
{
  v6[1] = v5;
  v7 = (v3 + 3332) ^ ((((v6 | 0xFFABFF3B) + (~v6 | 0x5400C4)) ^ 0xA7C22C58) * v1);
  (*(v0 + 8 * (v3 + 4598)))(v6);
  return (v2 - 16257999);
}

void sub_1001B0D10(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = (((&a3 | 0xF87D1697) + (~&a3 | 0x782E968)) ^ 0xD481A7ED) * a1;
  a4 = (v8 - 3892) ^ v10;
  a3 = 0;
  a6 = v10 ^ 0x19EC40F9;
  a7 = v7 - v10;
  (*(v9 + 8 * (v8 + 4784)))(&a3);
  JUMPOUT(0x1001B0D8CLL);
}

uint64_t sub_1001B0DC8()
{
  v14 = v10;
  v15 = &v12;
  v13[1] = (v0 + 1339) ^ (33731311 * ((((v13 | 0xA10C6F50) ^ 0xFFFFFFFE) - (~v13 | 0x5EF390AF)) ^ 0x67055A8C));
  (*(v2 + 8 * (v0 + 7688)))(v13);
  LODWORD(v15) = v0 - 2008441969 * ((v13 & 0xD988E45C | ~(v13 | 0xD988E45C)) ^ 0x6EEE4FAD) + 3772;
  v14 = v10;
  (*(v2 + 8 * (v0 + 7738)))(v13);
  if (v13[0] == v4 + v1)
  {
    v5 = -956802065;
  }

  else
  {
    v5 = 1073657839;
  }

  if (v13[0] == v4 + v1)
  {
    v6 = -1913604130;
  }

  else
  {
    v6 = 2147315678;
  }

  if (v13[0] == v4 + v1)
  {
    v7 = 973060064;
  }

  else
  {
    v7 = -1057399840;
  }

  v8 = (v5 ^ v12) + v7 + (v6 & (2 * v12));
  v14 = v10;
  LODWORD(v15) = (v0 + 6457) ^ ((v13 ^ 0x5869D362) * v3);
  (*(v2 + 8 * (v0 + 7723)))(v13);
  v14 = v11;
  LODWORD(v15) = (v4 + 3497) ^ (((v13 & 0xFFE671B1 | ~(v13 | 0xFFE671B1)) ^ 0x58705D2C) * v3);
  (*(v2 + 8 * (v4 ^ 0x377D)))(v13);
  return (v8 - 16257999);
}

uint64_t sub_1001B0FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  a18 = a13;
  a19 = (v20 + 3795) ^ ((((&a17 | 0x35EA6A1E) - &a17 + (&a17 & 0xCA1595E0)) ^ 0x6D83B97C) * v19);
  (*(v21 + 8 * (v20 ^ 0x344B)))(&a17);
  a19 = (v20 + 3795) ^ (((&a17 & 0x12828FCA | ~(&a17 | 0x12828FCA)) ^ 0xB514A357) * v19);
  a18 = a16;
  v22 = (*(v21 + 8 * ((v20 - 3095) ^ 0x203C)))(&a17);
  return sub_1001B10B0(v22);
}

uint64_t sub_1001B10F4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a28;
  STACK[0x9B8] = v66;
  return (*(v65 + 8 * ((a64 + 2229) | (v66 <= a23) | (4 * (v66 <= a23)))))();
}

uint64_t sub_1001B11BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = ((2 * ((&a17 ^ 0x98CBBE13) & 0x21B3E491) - (&a17 ^ 0x98CBBE13) - 565437590) ^ 0x1EEE761B) * v22;
  a21 = -654855621 - v25;
  a22 = v25 + v24 + 1674574563;
  a19 = a16;
  a20 = &a13;
  a18 = v25 - 357109105;
  v26 = (*(v23 + 8 * (v24 + 5057)))(&a17);
  return (*(v23 + 8 * ((13540 * (a17 == ((((v24 - 4119) | 0x400) + 16256664) ^ (v24 - 2624)))) ^ v24)))(v26);
}

uint64_t sub_1001B133C(uint64_t a1)
{
  v3 = v1 | 0x912;
  v4 = (*(v2 + 8 * ((v1 | 0x912) + 7184)))(a1, 2631218403) == 0;
  return (*(v2 + 8 * ((v4 ^ ((v3 - 114) ^ (v3 - 1))) & 1 | v3)))();
}

uint64_t sub_1001B1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ((v4 - 589) ^ 0xFFFFFFFFFFFFEB9ALL) + v5;
  *(a1 + v7) = *(v6 + v7);
  return (*(a4 + 8 * ((13995 * (v7 == 0)) ^ v4)))();
}

uint64_t sub_1001B150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((2 * (&a16 & 0x791754E0) - &a16 + 115911449) ^ 0x5E81787B) * v23;
  a18 = a12;
  a19 = &a14;
  a17 = v24 - 1383858828;
  a20 = -654855621 - v24;
  a21 = v24 + 1674579114;
  v25 = (*(v22 + 76864))(&a16);
  return (*(v22 + 8 * ((2244 * (a16 == 16257999)) ^ v21)))(v25);
}

void sub_1001B16B0()
{
  STACK[0x748] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4337));
  JUMPOUT(0x1000A8560);
}

uint64_t sub_1001B1754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v2 + 2135574407) & 0x80B5BACE ^ 0xFFFFFFFFFFFFE7B3) + a2;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((58 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v2 - 355))))();
}

uint64_t sub_1001B17C4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x938];
  LODWORD(STACK[0x52C]) = STACK[0x6B4];
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 - 1)) & 1) * (((a1 - 1171162863) & 0x45CE6CB5) - 699)) ^ a1)))();
}

uint64_t sub_1001B1954()
{
  v3 = LODWORD(STACK[0x2C0]);
  if (v3 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((v2 + 3320) ^ (1744 * (v1 == 197499223)))))();
  }

  if (v3 == 20706 || v3 == 33980)
  {
    STACK[0x448] = v0;
  }

  return (STACK[0x758])();
}

uint64_t sub_1001B1A08()
{
  v2 = STACK[0x868];
  STACK[0x510] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 843) ^ (v0 + 8710) ^ 0x2567)) | (v0 + 8710))))();
}

uint64_t sub_1001B1A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 | 0x3E0A11C6) - &a14 + (&a14 & 0xC1F5EE38)) ^ 0x6663C2A4) * v21;
  a15 = v22 - 1041240636;
  a18 = -654855621 - v22;
  a19 = v22 + v20 + 1674576915;
  a16 = a12;
  a17 = &a11;
  v23 = (*(v19 + 8 * (v20 ^ 0x2D1F)))(&a14);
  return (*(v19 + 8 * ((53 * (a14 == ((v20 - 34246809) & 0x6CF4EFDF ^ (v20 - 573762018) & 0x3DEB ^ 0x6C0C68B0))) ^ v20)))(v23);
}

uint64_t sub_1001B1B8C(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a16 - 16;
  v29.i64[0] = a14 + v28 + 11;
  v29.i64[1] = a14 + v28 + 10;
  v30.i64[0] = a14 + v28 + 13;
  v30.i64[1] = a14 + v28 + 12;
  v31.i64[0] = a14 + v28 + 15;
  v31.i64[1] = a14 + v28 + 14;
  v32.i64[0] = a14 + v28 + 19;
  v32.i64[1] = a14 + v28 + 18;
  v33.i64[0] = a14 + v28 + 21;
  v33.i64[1] = a14 + v28 + 20;
  v34.i64[0] = a14 + v28 + 23;
  v34.i64[1] = a14 + v28 + 22;
  v35.i64[0] = a14 + v28 + 25;
  v35.i64[1] = a14 + v28 + v16 + 16;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), a3), a4));
  v46 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4)), a5);
  v47 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v48 = veorq_s8(v47, a6);
  v49 = veorq_s8(v46, a6);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(v47, a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), a8);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), a8);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v19);
  v60 = veorq_s8(v58, v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = veorq_s8(vaddq_s64(v64, v62), v20);
  v67 = veorq_s8(v65, v20);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v21), v72), v22), v23);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v25);
  v87 = veorq_s8(v85, v25);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v82.i64[0] = a14 + v28 + 17;
  v82.i64[1] = a14 + v28 + 16;
  v89 = vaddq_s64(v44, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v90 = veorq_s8(v89, a6);
  v91 = veorq_s8(v89, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a8);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v19);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v20);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), v21), v98), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v25);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vandq_s8(v82, a1);
  v106 = vaddq_s64(v45, a5);
  v191.val[1] = vshlq_u64(veorq_s8(v104, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v107 = veorq_s8(v106, a6);
  v108 = veorq_s8(v106, a7);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v19);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v20);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v21), v115), v22), v23);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v31, a1);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v30, a1);
  v191.val[0] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v126 = vandq_s8(v29, a1);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v131 = vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4));
  v132 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v133 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4)), a5);
  v128.i64[0] = vqtbl4q_s8(v191, v27).u64[0];
  v134 = veorq_s8(v133, a6);
  v191.val[0] = veorq_s8(v132, a6);
  v135 = veorq_s8(v132, a7);
  v136 = veorq_s8(v133, a7);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v135), a8);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v136), a8);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v139);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v138), v19);
  v141 = veorq_s8(v140, v19);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v143);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v142), v20);
  v145 = veorq_s8(v144, v20);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v147);
  v191.val[0] = vaddq_s64(v191.val[1], v146);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v21), v191.val[0]), v22), v23);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v21), v148), v22), v23);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v151);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v150), v24);
  v153 = veorq_s8(v152, v24);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v155);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v154), v25);
  v157 = veorq_s8(v156, v25);
  v158 = vaddq_s64(v131, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v159 = veorq_s8(v158, a6);
  v160 = veorq_s8(v158, a7);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a8);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v19);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v20);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v21), v167), v22), v23);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v24);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v25);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4)), a5);
  v191.val[1] = vshlq_u64(veorq_s8(v173, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v175 = veorq_s8(v174, a6);
  v176 = veorq_s8(v174, a7);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), a8);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v19);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v20);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v21), v183), v22), v23);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v24);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v25);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  v128.i64[1] = vqtbl4q_s8(v191, v27).u64[0];
  v189 = vrev64q_s8(v128);
  *(a14 + v28 + 10) = veorq_s8(vextq_s8(v189, v189, 8uLL), *(a15 + v28));
  return (*(v18 + 8 * (((a11 + v28 != 0) * v17) ^ a13)))();
}

uint64_t sub_1001B2764()
{
  v3 = (((2 * v1) & 0x1FFFF9783B7BF4FELL) + (v1 ^ 0x4FFFFCBC1DBDFA7FLL) + v0 - 0x4FFFFCBC1DBDFA7FLL);
  v4 = (v3[1] << (v2 - 32)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x8F0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_1001B2820();
}

uint64_t sub_1001B2860()
{
  v3 = (*(v2 + 8 * (v0 + 3865)))(LODWORD(STACK[0x4B4]) ^ 0xBC59953u, 0x100004077774924);
  v4 = STACK[0x330];
  STACK[0x958] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v1 - 5;
  }

  LODWORD(STACK[0x964]) = v5;
  return (*(v4 + 8 * ((102 * (((v3 == 0) ^ ((v0 ^ 0xD1) - 63 * (v0 ^ 0x80))) & 1)) | v0)))();
}

uint64_t sub_1001B2914@<X0>(int a1@<W8>)
{
  v6 = LOWORD(STACK[0x99A]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 == 33980)
  {
    v8 = STACK[0x438];
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    STACK[0x7C8] = v8 + v2;
    v7 = v3;
    v4 = 16257999;
    return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
  }

  v7 = v3;
  if (v6 == 20706)
  {
LABEL_4:
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    v4 = 16215638;
    v7 = v3;
  }

  return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
}

uint64_t sub_1001B29DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0x858] = STACK[0x4D8];
  STACK[0x4C8] = 0;
  return (*(v4 + 8 * a4))(a1, a2, a3, v4);
}

uint64_t sub_1001B2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 ^ 0x2176)))(LODWORD(STACK[0x7F4]) ^ 0xBC58D36 ^ (v4 - 1180) ^ 0x145Du, 0x100004077774924);
  v6 = STACK[0x3E8];
  STACK[0x968] = v5;
  if (v5)
  {
    v7 = 16257999;
  }

  else
  {
    v7 = 16215971;
  }

  LODWORD(STACK[0x974]) = v7;
  return (*(v6 + 8 * (((v5 != 0) * (((v4 - 1180) | 0x542) ^ 0x54E)) ^ v4)))();
}

void sub_1001B2C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x210] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(v9);
  *&STACK[0x380] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(v10);
  *&STACK[0x360] = vdupq_n_s64(v8);
  *&STACK[0x330] = vdupq_n_s64(v12);
  *&STACK[0x340] = vdupq_n_s64(v11);
  *&STACK[0x310] = vdupq_n_s64(a6);
  *&STACK[0x320] = vdupq_n_s64(v14);
  *&STACK[0x2F0] = vdupq_n_s64(a7);
  *&STACK[0x300] = vdupq_n_s64(v13);
  *&STACK[0x2D0] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xA5A39F44AA2858D8);
  *&STACK[0x2B0] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2C0] = vdupq_n_s64(0x48FB24461747836FuLL);
  *&STACK[0x290] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x270] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x280] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x250] = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  *&STACK[0x260] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x240] = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  *&STACK[0x220] = vdupq_n_s64(a8);
  *&STACK[0x230] = xmmword_100382E40;
  JUMPOUT(0x1001B2DECLL);
}

uint64_t sub_1001B40B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  STACK[0x3C0] = *(a8 + 24);
  HIDWORD(a35) = a7;
  return (*(a4 + 8 * ((47 * ((v37 ^ v36) < 227 * (v35 ^ 0x16D9u) - 5213)) ^ v35)))(0x5879FD990C46CAD5, a5, 0xD02B2EB47D7683C6, 0x6815975A3EBB41E3, v38, a2, 0xE49D77DF873DBF7ELL, 0x4CFAC71E5A50EC49, a9, a10, a11, a12, a13, a7 ^ 0xF67EFDFFDF195FEFLL, a8, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1001B42B8()
{
  LODWORD(STACK[0x804]) = v1;
  STACK[0x670] = *(v2 + 8 * v0);
  return sub_1001B42D0();
}

uint64_t sub_1001B42D0@<X0>(int a1@<W8>)
{
  STACK[0x4C8] = v1;
  v3 = *v1;
  STACK[0x7B8] = *v1;
  return (*(v2 + 8 * (((((v3 == 0) ^ (a1 - 1)) & 1) * (((a1 - 4162) | 0x11E) + 38)) ^ a1)))();
}

uint64_t sub_1001B43A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((61 * (a13 == v16)) ^ v15)))(v17);
}

uint64_t sub_1001B4520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x380] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x340] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x320] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x330] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x300] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x310] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x360] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x370] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2C0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x230] = xmmword_100382E40;
  *&STACK[0x2A0] = vdupq_n_s64(v7);
  *&STACK[0x2B0] = vdupq_n_s64(v8);
  return sub_10014C920(2021819248, 0, 0x71C80D200006C20, a4, 0x518DC1691103FE2CLL, a6, a7);
}

void sub_1001B4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 ^ 0x8E6;
  *(v6 - 224) = ((v4 ^ 0x14B8) - 2140796667) ^ (914963389 * ((v6 - 232) ^ 0x2CFCB17B));
  (*(a4 + 8 * (v4 ^ 0x3333)))(v6 - 232);
  *(v5 + 112) = *(v6 - 232) ^ (v7 - 1232139380);
  JUMPOUT(0x10011C8DCLL);
}

uint64_t sub_1001B479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v6 = v5;
  *(v5 + 8) = *(a4 + 8);
  *(a4 + 8) = v5;
  return sub_10015E738(a1, a2, a3, 16257999);
}

uint64_t sub_1001B47BC()
{
  STACK[0x590] = 0;
  v3 = STACK[0x6F8];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = -126895411;
  STACK[0xA28] = &STACK[0x590];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 - 1789415859) & 0x6AA875C1) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ (v1 - 1789415859) & 0x6AA875C1)))();
}

uint64_t sub_1001B47F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, _DWORD *a27, void *a28)
{
  v35 = a11 & 0x889E8C11;
  v36 = ((v35 ^ (v30 - 970) ^ 0xFFFFFFFE | v29) & (((v30 - 970) | 0x13FE) - v29) | (v35 ^ (v30 - 970) ^ 0xFFFFFFFE) & v29) >> 31;
  v37 = (a11 & 0x889E8C11) + 2599;
  *a24 = v29 + 1;
  v38 = v28 ^ ((v28 - (a11 & 0x889E8C11) + v30 - 970) >> 11);
  v39 = (((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38 ^ (((((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) >> 18);
  v40 = (v31 + (v34 - 1));
  v41 = -778651209 * ((*(*a28 + (*a27 & 0x148A538C)) ^ v40) & 0x7FFFFFFF);
  v42 = -778651209 * (v41 ^ HIWORD(v41));
  v43 = *(*(v33 + 8 * (v37 ^ 0xA18)) + (v42 >> 24));
  v44 = *(*(v33 + 8 * (v37 ^ 0xABF)) + (((a11 & 0x889E8C11) + 253902330) & 0xF0DDCBB6) - 2479 + (v42 >> 24) - 12);
  v45 = *(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * (v42 >> 24));
  LODWORD(v42) = (*(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * BYTE3(v42)));
  *v40 = v45;
  return (*(v32 + 8 * ((1321 * (v34 == (v42 != 60))) ^ v37)))();
}

uint64_t sub_1001B497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, char *a17, int a18, char a19, __int16 a20, char a21, uint64_t a22, int a23, unsigned int a24, char *a25, char *a26, char *a27, char *a28)
{
  a25 = a17;
  a26 = &a19;
  a28 = &a16;
  LODWORD(a27) = (v28 + 242) ^ (((-1186758393 - (&a23 | 0xB9438107) + (&a23 | 0x46BC7EF8)) ^ 0x74A72568) * v31);
  (*(v29 + 8 * (v28 + 6491)))(&a23);
  a27 = a17;
  a25 = &a21;
  LODWORD(a26) = v28 + 956911519 * ((-1668232106 - (&a23 | 0x9C90CC56) + (&a23 | 0x636F33A9)) ^ 0x89FE43AC) + 6196;
  (*(v29 + 8 * (v28 + 6530)))(&a23);
  a25 = a17;
  a26 = &a14;
  a24 = (v28 + 136) ^ (33731311 * ((((2 * &a23) | 0x4587746C) - &a23 - 583252534) ^ 0x1B357015));
  (*(v29 + 8 * (v28 ^ 0x297Du)))(&a23);
  LODWORD(a26) = v28 - 2008441969 * ((&a23 - 924682220 - 2 * (&a23 & 0xC8E27814)) ^ 0x807B2C1A) + 2569;
  a25 = a17;
  v32 = (*(v29 + 8 * (v28 + 6535)))(&a23);
  return (*(v29 + 8 * (((a23 == v30) * ((v28 - 99) ^ 0x973)) ^ v28)))(v32);
}

uint64_t sub_1001B4C28()
{
  v1 = *(STACK[0x668] + 24);
  STACK[0x570] = v1;
  return (*(STACK[0x330] + 8 * (((v1 == 0) * (((v0 + 1981207108) & 0x89E93BD7 ^ 0xFFFFF3DB) + ((v0 - 1687) | 0x10D4))) ^ v0)))();
}

uint64_t sub_1001B4CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v27 = 1824088897 * (((&a19 | 0xF5BECD65) - &a19 + (&a19 & 0xA413298)) ^ 0xADD71E07);
  a21 = (v25 ^ 0x7FB6FEDF) + ((2 * v25) & 0xFF6DFDBE) - v27 - 823268437;
  a19 = v27 + v23 + 764;
  a22 = v24;
  a23 = a12;
  v28 = (*(v26 + 8 * (v23 + 6638)))(&a19);
  return (*(v26 + 8 * ((10840 * (a20 == 2177 * (v23 ^ 0xBB3) + 16253645)) ^ v23)))(v28);
}

void sub_1001B4D88()
{
  v2 = (v0 - 1041) | 0x400;
  STACK[0x3A0] = (v2 ^ 0xFFFFFB5E) & v1;
  LODWORD(STACK[0x3B0]) = v2;
  STACK[0x390] = (v2 + 4115);
  JUMPOUT(0x1001B4F34);
}

uint64_t sub_1001B5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((-1275135746 - (&a14 | 0xB3FEF8FE) + (&a14 | 0x4C010701)) ^ 0x1468D463) * v21;
  a15 = v23 - 85195060;
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577939;
  v24 = (*(v20 + 8 * (v22 ^ 0x211F)))(&a14);
  return (*(v20 + 8 * (((a14 == ((v22 - 1310437144) & 0xEDF ^ (v19 + 961))) * ((v22 - 698094757) & 0x1EED ^ 0x1B6)) ^ v22)))(v24);
}

uint64_t sub_1001B5DB0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v2) = 0;
  v6 = v2 < 0xFFFFFFFFCDE53684 && v2 + 840616316 < v1;
  return (*(v4 + 8 * ((v6 * (((24 * (v3 ^ 0x14D9) + 2776) | 0x140) + 22)) ^ (24 * (v3 ^ 0x14D9)))))();
}

uint64_t sub_1001B5E0C@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = v5 + 32;
  v12 = (v11 ^ v8 ^ v4) + v3;
  v13 = *(v9 + v12 - 15);
  v14 = *(v9 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  return (*(v10 + 8 * ((120 * (v6 != v11)) ^ v7)))();
}

uint64_t sub_1001B606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = *(v30 + 4 * (v31 - 1));
  *(v30 + 4 * v31) = ((1566083941 * (v35 ^ (v35 >> 30))) ^ *(v30 + 4 * v31)) - v31;
  v36 = 2048652491 * ((0xC81A77718E866EC0 - ((v34 - 152) | 0xC81A77718E866EC0) + a29) ^ 0xE3010702C0C8063ALL);
  *(v34 - 112) = v36 ^ 1;
  v37 = v29 - 2026031905 + v36;
  *(v34 - 152) = (v29 + 1745252473) ^ v36;
  *(v34 - 136) = v37;
  *(v34 - 128) = ((v29 - 2026031905) ^ 0x28) + v36;
  *(v34 - 124) = v37 + 648;
  *(v33 + 16) = 623 - v36;
  *(v33 + 40) = (v31 + 1) ^ v36;
  v38 = (*(v32 + 8 * (v29 ^ 0x261A)))(v34 - 152);
  return (*(v32 + 8 * *(v34 - 132)))(v38);
}

uint64_t sub_1001B6208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1305605087) ^ (1358806181 * ((&a18 + 1415417890 - 2 * (&a18 & 0x545D9022)) ^ 0x6B72FCA1));
  a23 = &a14;
  a20 = a10;
  a21 = &a11;
  (*(v24 + 8 * (v23 ^ 0x2E34)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((&a18 - 240232212 - 2 * (&a18 & 0xF1AE58EC)) ^ 0xC85892CF));
  a20 = a10;
  a21 = &a14;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((((2 * &a18) | 0x53B26B7E) - &a18 + 1445382721) ^ 0x902FFF9C));
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a20 = a10;
  LODWORD(a21) = v23 - 2008441969 * (&a18 ^ 0x4899540E) + 2615;
  v25 = (*(v24 + 8 * (v23 ^ 0x2E7D)))(&a18);
  return (*(v24 + 8 * (((a18 == 16257999) * (((11 * (v23 ^ 0xB91) + 3379) | 0xD85) - 1787)) ^ v23)))(v25);
}

uint64_t sub_1001B6438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * ((((2 * &a15) | 0xA99D4AB2) - &a15 - 1422828889) ^ 0x62BB26DA);
  a18 = a12;
  a16 = (v21 ^ 0xBEBDBFFE) + ((2 * v21) & 0x7D7B7FFC) + 1633613484 + v24;
  a17 = v24 + 7724;
  (*(v22 + 77160))(&a15);
  v25 = 1824088897 * (((&a15 | 0xF210C612) - &a15 + (&a15 & 0xDEF39E8)) ^ 0xAA791570);
  a18 = v19;
  a19 = a12;
  a17 = (v20 ^ 0x6FFEEF9F) - v25 + ((2 * v20) & 0xDFFDDF3E) - 559547669;
  a15 = v25 + 3757;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((9095 * (a16 == v23)) ^ 0x713u)))(v26);
}

uint64_t sub_1001B65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a20 = a18;
  a21 = v21 - (((&a19 | 0xBEBF446A) - (&a19 & 0xBEBF446A)) ^ 0xF6261064) * v22 + 1907;
  v25 = (*(v24 + 8 * (v21 ^ 0x2B31u)))(&a19);
  return (*(v24 + 8 * (((a19 == (v21 ^ 0x1E2C ^ v23)) * (((v21 + 273846595) & 0xEFAD6E76) + 3561)) ^ v21)))(v25);
}

uint64_t sub_1001B665C@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x2760;
  v3 = v2 + 7558;
  (*(v1 + 8 * (v2 + 8212)))();
  v4 = STACK[0x400];
  STACK[0x7B0] = 0;
  return (*(v4 + 8 * (((STACK[0x730] != 0) * ((v3 ^ 0x3319) - 4579)) ^ v3)))();
}

uint64_t sub_1001B6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((3906 * (a13 == v15)) ^ 0x149Eu)))(v16);
}

uint64_t sub_1001B681C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v8;
  STACK[0x328] = *v8;
  return (*(v9 + 8 * (((v10 != 0) * ((v7 + 1701929530) & 0x9A8E9BFE ^ 0xA31)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 16215950);
}

uint64_t sub_1001B696C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (((a3 + 2900) - 7079) ^ a1) + v4;
  *(v5 - 7 + v7) = veor_s8(*(v3 - 7 + v7), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v6 + 8 * ((12817 * ((v4 & 0xFFFFFFF8) - 8 == a1)) ^ a3)))();
}

uint64_t sub_1001B6BC0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = (a2 + 212) | 0xE80;
  v3 = LODWORD(STACK[0x688]) - 7842 + v2;
  LODWORD(STACK[0x688]) = v3;
  return (*(a1 + 8 * (((v3 != ((v2 - 943646518) & 0x383EDCF7 ^ 0x1465)) * (((v2 - 425520877) & 0x195CDDEF) - 3381)) ^ v2)))();
}

uint64_t sub_1001B6D34()
{
  v2 = STACK[0x558];
  v3 = STACK[0x528];
  v4 = STACK[0x64C];
  STACK[0x4A0] = 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && v4 != ((v0 - 1843) ^ 0x999) - 7279;
  return (*(v1 + 8 * (((2 * v7) | (4 * v7)) ^ v0)))();
}

void sub_1001B6DAC(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 0x9B) - ((2 * (HIBYTE(v1) ^ 0x9B)) & 0x78) + 60;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0xF2) - ((2 * (BYTE2(v1) ^ 0xF2)) & 0x78) + 60;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xB) - ((2 * (BYTE1(v1) ^ 0xB)) & 0x78) + 60;
  *(v5 + v6 + 3) = v1 ^ 0x84;
  v7 = *v2;
  v8 = ((v4 ^ 0xD94019CF) + 1062446794) ^ v4 ^ ((v4 ^ 0x614DC877) - 2023852174) ^ ((v4 ^ 0x5D1C6EAE) - 1156591191) ^ ((v4 ^ 0xFCFDFFEF) + 451821802);
  v9 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xABFD9FFE) + ((a1 + *(v2 + 4) + 4) ^ 0x55FECFFF) - 1442762751;
  *(*v2 + v9) = (HIBYTE(v8) ^ 0x19) - 2 * ((HIBYTE(v8) ^ 0x19) & 0x3E ^ HIBYTE(v8) & 2) + 60;
  *(v7 + v9 + 1) = (BYTE2(v8) ^ 0xEC) - 2 * ((BYTE2(v8) ^ 0xEC) & 0x3E ^ BYTE2(v8) & 2) + 60;
  *(v7 + v9 + 2) = (((((v4 ^ 0x19CF) - 22838) ^ v4 ^ ((v4 ^ 0xC877) + 30578) ^ ((v4 ^ 0x6EAE) - 11863) ^ ((v4 ^ 0xFFEF) + 16618)) >> 8) ^ 0x40) - ((v8 >> 7) & 0x78) + 60;
  *(v7 + v9 + 3) = ((v4 ^ 0xCF) - 54) ^ v4 ^ ((v4 ^ 0x77) + 114) ^ ((v4 ^ 0xAE) - 87) ^ ((v4 ^ 0xEF) - 22) ^ 0xC5;
  *(v2 + 4) = v3;
  JUMPOUT(0x10008CC6CLL);
}

uint64_t sub_1001B7068()
{
  STACK[0x748] = 0;
  v3 = STACK[0x378];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = 485375226;
  STACK[0xA28] = &STACK[0x748];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 + 8066) | 0x481) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ ((v1 + 8066) | 0x481))))();
}

void sub_1001B7A70(int a1@<W8>)
{
  v4 = (a1 ^ 0x2324) + 8740;
  *(v2 - 224) = ((a1 ^ 0x2324) - 2140796942) ^ (914963389 * ((v2 - 26035230 - 2 * ((v2 - 232) & 0xFE72BCCA)) ^ 0xD28E0DB1));
  (*(v3 + 8 * ((a1 ^ 0x2324) + 8806)))(v2 - 232);
  *(v1 + 112) = v4 ^ *(v2 - 232) ^ 0xB68F0C9B;
  JUMPOUT(0x1001B1A20);
}

uint64_t sub_1001B7B90@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((5372 * (v7 == (v5 - a2) - 3262)) ^ (v3 + v5 + 2442))))();
}

void sub_1001B7BCC(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  JUMPOUT(0x1001B7C4CLL);
}

uint64_t sub_1001B7CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = v17 - 1710126949 * ((1572677594 - (&a15 | 0x5DBD27DA) + (&a15 | 0xA242D825)) ^ 0x905983B5) + 476320890;
  v18 = (*(v16 + 8 * (v17 + 7444)))(&a15);
  return (*(v16 + 8 * (((a16 != 16257999) | (2 * (a16 != 16257999))) ^ v17)))(v18);
}

uint64_t sub_1001B7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((&a15 - 84886246 - 2 * (&a15 & 0xFAF0BD1A)) ^ 0xC8EBE68A);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((823 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_1001B81F8()
{
  v3 = ((v1 - 223574237) & 0xD537B35) - ((v0 + 474961462) & 0xF ^ (2 * (v0 + 474961462)) & 8 ^ 4) - 4865;
  LODWORD(STACK[0x778]) = v3;
  return (*(v2 + 8 * ((115 * ((v0 ^ 0x7FDFF3FED4AFEF5ALL) + ((2 * v0) & 0x1A95FDEB4) + 2 * v3 + 0x26A49C5B8FD131C7 + (v3 ^ 0x597B6FA59B7EDEDFuLL) < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1001B84F8()
{
  v3 = *(v1 + 8);
  STACK[0x6F8] = v3;
  return (*(v2 + 8 * ((((((v0 + 1142129034) & 0xBBEC6B5F) + 651) ^ ((v0 - 4465) | 0x117)) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_1001B8550(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = v16 - v14 - 3164;
  *a2 = 0;
  *a3 = 0;
  a13 = v16 - 1710126949 * (((&a13 | 0xA17C00A5) - (&a13 & 0xA17C00A5)) ^ 0x93675B35) + 476319856;
  v18 = (*(v15 + 8 * (v16 + 6410)))(&a13);
  return (*(v15 + 8 * ((4749 * (a14 == (v17 ^ 0x78A51DB3))) ^ v16)))(v18);
}

uint64_t sub_1001B85FC@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 228) = (v2 - 476) ^ (33731311 * ((((2 * (v4 - 232)) | 0x524A3E62) - (v4 - 232) + 1457184975) ^ 0x90D3D512));
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x604];
  v5 = (*(v1 + 8 * (v2 + 5873)))(v4 - 232);
  return (*(STACK[0x330] + 8 * (((*(v4 - 232) == ((v2 + 1432457583) & 0xAA9E65FE ^ (v3 + 602))) * ((2 * v2) ^ 0x1C16)) ^ v2)))(v5);
}

uint64_t sub_1001B86B4(uint64_t a1)
{
  v6 = (((v3 + v2) | 0x82Eu) ^ 0xFFFFFFFFFFFFF5D1) + v4;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((1004 * (v6 == 0)) ^ (v3 + v2 + 4070))))();
}

uint64_t sub_1001B87D4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_10016FE80(535 * (v1 ^ 0x1632u));
}

void sub_1001B882C()
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = xmmword_100382E20;
  JUMPOUT(0x1001B8998);
}

uint64_t sub_1001B8ED0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = 1875091903 * (((&v9 | 0x8BCF3D0F) - (&v9 & 0x8BCF3D0F)) ^ 0xBDBABE8C);
  v14 = a4;
  v15 = a6;
  v16 = v7 ^ ((a2 ^ 0xFEDDB6F3) + 1974886208 + ((2 * a2) & 0xFDBB6DE6));
  v12 = ((2 * a5) & 0xFF6B3FE8) - v7 + (a5 ^ 0x7FB59FF4) - 637534464;
  v13 = v7 + 9377;
  v10 = a1;
  v11 = a3;
  (*(v6 + 76960))(&v9);
  return (v9 - 16257999);
}

uint64_t sub_1001B905C@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v2 = (LODWORD(STACK[0x3E4]) - 5141) | 0x40A;
  STACK[0x8E8] = a2;
  v3 = STACK[0x780];
  STACK[0x8F0] = STACK[0x780];
  return (*(a1 + 8 * ((9734 * (a2 - v3 > ((v2 ^ 0x103Fu) - 4661) - 551)) ^ v2)))();
}

uint64_t sub_1001B90E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((&a14 + 2073060290 - 2 * (&a14 & 0x7B9063C2)) ^ 0xCB93FBB4) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((54 * (a15 != v17)) ^ 0x615)))(v18);
}

uint64_t sub_1001B9198(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v5 + v3 - 16);
  v8 = (v5 + a1 - 16);
  *(v8 - 1) = *(v5 + v3 - 32);
  *v8 = v7;
  return (*(v6 + 8 * ((1368 * ((a3 + 1898357693) - (v5 & 0xFFFFFFE0) == 8468)) ^ (v4 + a3 + 3662))))();
}

uint64_t sub_1001B9214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v21 = v18 - 653;
  v22 = v18 + 114;
  v23 = v18 - 27;
  v24 = v18 - 784;
  v25 = 1317436891 * ((2 * ((&a13 ^ 0x9CDEE4A8) & 0x30E7F470) - (&a13 ^ 0x9CDEE4A8) - 820507767) ^ 0xE3C57757);
  a14 = &a9;
  a15 = &a11;
  a16 = v19;
  a17 = 1602299020 - v25;
  a18 = v24 ^ v25;
  v26 = (*(v20 + 8 * (v21 ^ 0x2FEE)))(&a13);
  return (*(v20 + 8 * (v21 ^ (16 * (((v22 ^ v23) ^ (*(v19 + 24) == 16257999)) & 1)))))(v26);
}

uint64_t sub_1001B9348(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x310]) = 0;
  *v4 = 0u;
  v4[1] = 0u;
  return sub_100182FA0(3690921440, a2, a3, a4);
}

uint64_t sub_1001B93C4()
{
  STACK[0x7E8] = STACK[0x348];
  STACK[0x670] = *(v2 + 8 * v1);
  return sub_1001B42D0(v1 + 4107);
}

uint64_t sub_1001B93CC()
{
  v9 = (v1 + 6486) ^ (1824088897 * (((&v7 | 0x66EE4855) - &v7 + (&v7 & 0x9911B7A8)) ^ 0x3E879B37));
  v8 = v4;
  (*(v2 + 8 * (v1 ^ 0x22C8u)))(&v7);
  v9 = (v1 + 6486) ^ (1824088897 * ((((&v7 | 0x5E4F3F3C) ^ 0xFFFFFFFE) - (~&v7 | 0xA1B0C0C3)) ^ 0xF9D913A1));
  v8 = v6;
  (*(v2 + 8 * ((v1 - 104) ^ 0x2350)))(&v7);
  return (v5 ^ 0xB7F993FF) + 1224638416 + ((v5 << (v0 ^ 0x31)) & 0x6FF327FE) - 16257999;
}

void sub_1001B951C()
{
  LODWORD(STACK[0x534]) = v1;
  LODWORD(STACK[0x61C]) = 197499219;
  LODWORD(STACK[0x7E0]) = 197499219;
  LODWORD(STACK[0x844]) = v2;
  STACK[0x4E8] = v0;
  JUMPOUT(0x1001B9544);
}

uint64_t sub_1001B9620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, int a7@<W7>, int a8@<W8>)
{
  if (v8 == 17168)
  {
    return (*(a6 + 8 * ((a7 + 52) ^ (5025 * (a5 == a8 + 4)))))();
  }

  if (v8 == 20706 || v8 == 33980)
  {
    return (*(a6 + 8 * (((((a7 + 51) | 1) + 4376) * (v8 == 17168)) ^ (a7 + 52))))(a1, a2, a3, a4, 197499219);
  }

  LODWORD(STACK[0x268]) = v8;
  return (STACK[0x260])();
}

uint64_t sub_1001B989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36)
{
  v40 = (v38 + ((2 * (v37 + 6)) & 0x6C7E72F77DF7E76CLL) + ((v37 + 6) ^ 0xF63F397BBEFBF3B6) + 0x9C0C68441040C4ALL);
  v41 = (*v40 << 24) | (v40[1] << 16) | (v40[2] << 8);
  return (*(v39 + 8 * ((2037 * ((((v41 | v40[3]) + 197499219 - 2 * ((v41 | v40[3]) & 0xBC5995F ^ v40[3] & 0xC)) ^ 0xBC59953u) + v37 + 10 <= a36)) ^ v36)))();
}

uint64_t sub_1001B9C10@<X0>(int a1@<W3>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v14 = v9 + 4;
  a4.i64[0] = *(v10 + 4);
  a4.i32[2] = *(v11 + 4 * (v14 + v8));
  v15 = vextq_s8(a3, a4, 0xCuLL);
  v16 = a4;
  v16.i32[3] = *(v10 + 16);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a6), vandq_s8(v15, a5)), 1uLL), *(v10 - 908));
  v15.i32[0] = *(v13 + 4 * (*(v10 + 4) & 1));
  v15.i32[1] = *(v13 + 4 * (*(v10 + 8) & 1));
  v15.i32[2] = *(v13 + 4 * (*(v11 + 4 * (v14 + v8)) & 1));
  v15.i32[3] = *(v13 + 4 * (v16.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a7)), a8), v15);
  return (*(v12 + 8 * (((v14 == -3245) * a1) ^ a2)))();
}

uint64_t sub_1001B9C84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  STACK[0x9B0] = 0;
  STACK[0x520] = 0;
  return (*(STACK[0x400] + 8 * (((((v1 + 841) | 0x20) - 9166) * (v2 != 0)) ^ v1)))();
}

void sub_1001B9D1C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x394]) = v2;
  JUMPOUT(0x1001683F8);
}

uint64_t sub_1001B9D3C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 ^ a1;
  v67 = *(STACK[0x678] + 24);
  STACK[0x3D0] = v67;
  return (*(a65 + 8 * (((v67 == 0) * ((v65 - 878694419) & 0x345FBFFF ^ (v66 - 4057))) ^ v65)))();
}

uint64_t sub_1001B9DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x360]);
  switch(v6)
  {
    case 17168:
      return (*(STACK[0x3E8] + 8 * ((v5 - 4071) ^ (146 * (a3 == 197499223)))))();
    case 20706:
      return (*(STACK[0x3E8] + 8 * ((((v5 + 2130862360) & 0x80FD9AF2 ^ 0x1F0D) * (a3 == 197499227)) ^ (v5 - 4071))))();
    case 33980:
      STACK[0x708] = STACK[0x6E0] + STACK[0x2F0];
      JUMPOUT(0x1001359E4);
  }

  return sub_100164ED4(a1, a2, a3, a4, a5, v5);
}

void sub_1001BA0C4()
{
  v0 = LOWORD(STACK[0xA4E]);
  v1 = STACK[0xA50];
  LODWORD(STACK[0x370]) = 197499223;
  STACK[0x3B0] = STACK[0x7B0] + 24;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0xA54]) ^ 0xD6A561FA;
  LODWORD(STACK[0x360]) = v0;
  LODWORD(STACK[0x340]) = v0 ^ 0x4CF9;
  STACK[0x3A0] = STACK[0x5F8] + 24;
  v2 = LOWORD(STACK[0xB1E]);
  LODWORD(STACK[0x350]) = v2;
  LODWORD(STACK[0x330]) = v2 ^ 0xFFFFA60A;
  v3 = STACK[0xB20];
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xB24]) ^ 0xD6A561FA;
  STACK[0x390] = STACK[0x580] + 24;
  STACK[0x380] = STACK[0x658] + 24;
  LODWORD(STACK[0x300]) = v1;
  LODWORD(STACK[0x320]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x2F0]) = v3;
  LODWORD(STACK[0x310]) = v3 ^ 0xD6A561FA;
  JUMPOUT(0x1000850E4);
}

uint64_t sub_1001BA0F8()
{
  v4 = (*(v3 + 8 * (v0 + 8394)))();
  *v1 = 0;
  return v2(v4);
}

void sub_1001BA11C(int a1)
{
  v2 = *(&off_1003E6550 + (a1 ^ 0x903)) - 4;
  *(v1 - 256) = *(&off_1003E6550 + (a1 ^ 0x9F2));
  *(v1 - 248) = v2;
  JUMPOUT(0x1001BA860);
}

uint64_t sub_1001BC398@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v6 = v5 < v3;
  *(v4 + v2) = 0;
  if (v6 == (a2 ^ 0x13F1uLL) + v2 > 0xFFFFFFFFCDE53684)
  {
    v6 = v3 + v2 + 1 < v5;
  }

  return (*(a1 + 8 * ((2044 * v6) ^ a2)))();
}

uint64_t sub_1001BC3FC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA50] = ((v1 - 32) | 0x20u) + 0x5E419F52E8AC3FEELL + (((v2 ^ 0x11A1C2F5AE308480) - 0x11A1C2F5AE308480) ^ ((v2 ^ 0x244643D37C7A7A97) - 0x244643D37C7A7A97) ^ ((v2 ^ 0x35E78126D98F6744) - 0x35E78126D98F6EBELL + ((v1 - 874) ^ 0x27CCu)));
  *(a1 + 16) = (((v2 ^ 0xA004CBBB) + 1610298437) ^ ((v2 ^ 0x40FF2A48) - 1090464328) ^ ((v2 ^ 0xEB3E78A0) + 348227424)) + 197499229;
  v5 = (*(v3 + 8 * (v1 + 386)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((69 * (v5 == 0)) ^ (v1 - 874))))();
}

uint64_t sub_1001BC570()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x886]);
  STACK[0x448] = STACK[0x888];
  return (*(STACK[0x330] + 8 * (((v1 == 17168) * (((v0 + 379570601) & 0xE960377E) - 342)) ^ (v0 - 2561))))();
}

void sub_1001BC5D0()
{
  STACK[0x540] = 0;
  STACK[0x690] = 0;
  STACK[0x3D8] = *(STACK[0x330] + 8 * v0);
  JUMPOUT(0x10017CDC0);
}

uint64_t sub_1001BC668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v26 = (v23 + 130279740) & 0x40B9E;
  v27 = ((((&a18 | 0xB20D1424) ^ 0xFFFFFFFE) - (~&a18 | 0x4DF2EBDB)) ^ 0x159B38B9) * v24;
  a19 = v27 + 1136829205;
  a22 = -654855621 - v27;
  a23 = v27 + 1674579114;
  a20 = a13;
  a21 = &a16;
  v28 = (*(v25 + 76864))(&a18);
  return (*(v25 + 8 * ((14191 * (a18 == v26 + 16255565)) ^ 0x14A7u)))(v28);
}

uint64_t sub_1001BC744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (33731311 * (((&a17 | 0xBE3FBC99) - (&a17 & 0xBE3FBC99)) ^ 0x87C976BA)) ^ 0xC9C;
  a19 = a15;
  a20 = &a14;
  (*(v21 + 76616))(&a17);
  a19 = a15;
  LODWORD(a20) = 5661 - 2008441969 * ((&a17 + 128911006 - 2 * (&a17 & 0x7AF069E)) ^ 0x4F365290);
  v23 = (*(v21 + 77016))(&a17);
  return (*(v21 + 8 * ((2845 * (a17 == v22)) ^ v20)))(v23);
}

void sub_1001BC874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x830] = *(a4 + 8 * (v4 - 5051));
  LODWORD(STACK[0x3A0]) = STACK[0x534];
  LODWORD(STACK[0x3B0]) = STACK[0x61C];
  LODWORD(STACK[0x3D0]) = 16215971;
  LODWORD(STACK[0x3C0]) = STACK[0x7E0];
  LODWORD(STACK[0x390]) = v5 ^ 0x1FAA;
  JUMPOUT(0x100138740);
}

uint64_t sub_1001BC918@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v3 + 127 - a1;
  v8.i64[0] = 0x7878787878787878;
  v8.i64[1] = 0x7878787878787878;
  v9.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v9.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v1 + 8 * (((a1 == 96) * ((v2 - 3176) ^ 0x984)) ^ v2)))();
}

uint64_t sub_1001BCB14(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *(v5 + a3 + 16);
  v9 = (v6 + a3);
  *v9 = *(v5 + a3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v3 == a3) * a2) ^ v4)))();
}

uint64_t sub_1001BCBD8(uint64_t a1)
{
  *(a1 + 16) = *v2;
  *(a1 + 88) = *(v2 + 72);
  *(a1 + 92) = *(v2 + 76);
  *(a1 + 96) = *(v2 + 80);
  *(a1 + 97) = *(v2 + 81);
  *(a1 + 120) = *(v2 + 104);
  *(a1 + 100) = *(v2 + 84);
  *(a1 + 124) = *(v2 + 108) & (((v1 + 114) & 0x77) - 114);
  return sub_1001BCC64();
}

uint64_t sub_1001BCC64(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, char a7, int a8)
{
  v12 = a3 + v8 - 1312;
  *(v10 + v12) = *(a2 + v12) ^ *(*(v11 + 8 * a4) - 8 + (v12 & 0xF)) ^ *((v12 & 0xF) + *(v11 + 8 * a5) - 12 + 3) ^ ((v12 & 0xF) * a7) ^ *(*(v11 + 8 * a6) + (v12 & 0xF)) ^ 0x3C;
  return (*(STACK[0x3E8] + 8 * (((v12 != 0) * a8) ^ v9)))();
}

uint64_t sub_1001BCD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = ((&a12 - 200548955 - 2 * (&a12 & 0xF40BDDA5)) ^ 0xAC620EC7) * v18;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674576141;
  a13 = v21 - 179957024;
  v22 = (*(v17 + 8 * (v20 ^ 0x2E15)))(&a12);
  return (*(v17 + 8 * ((52 * (a12 != (((v20 ^ 0xFFB) + 1719) ^ (v19 + 2280)))) ^ v20)))(v22);
}

uint64_t sub_1001BCEA4()
{
  v2 = (v0 - 4286) | 0xA01;
  v3 = (STACK[0x900] ^ 0xDE538BA8) & (2 * (STACK[0x900] & 0xDF630BA9)) ^ STACK[0x900] & 0xDF630BA9;
  v4 = v0 ^ 0x909285B7 ^ ((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042;
  v5 = (((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042 ^ 0x7000000) & (4 * v3) ^ v3;
  v6 = ((4 * v4) ^ 0x5ECA410C) & v4 ^ (4 * v4) & 0x97B29040;
  v7 = (v6 ^ 0x16820000) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x81309043)) ^ 0x7B290430) & (v6 ^ 0x81309043) ^ (16 * (v6 ^ 0x81309043)) & 0x97B29040;
  v9 = (STACK[0x900] ^ (2 * ((((v8 ^ 0x84929043) << 8) & 0x17B20000 ^ 0x12900000 ^ (((v8 ^ 0x84929043) << 8) ^ 0xB2900000) & (v8 ^ 0x84929043)) & (((v8 ^ 0x13200000) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x13200000) & (v7 << 8) ^ v7))) == -547157079;
  return (*(v1 + 8 * (((8 * v9) | (16 * v9)) ^ (v0 + 2347))))();
}

uint64_t sub_1001BD018()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x35C3)))();
  v3 = STACK[0x330];
  STACK[0x590] = 0;
  return (*(v3 + 8 * (((*(STACK[0x6B0] + 5) != (((v0 ^ 0x5E) + 13) ^ 0x26)) * ((4 * (v0 ^ 0x185E)) ^ 0x2061)) ^ v0 ^ 0x185E)))(v2);
}

uint64_t sub_1001BD088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v3.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1001BD0B0(a1, 4445, a3, 770041607, v3);
}

uint64_t sub_1001BD0B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>)
{
  v13 = ~v8 + v5;
  v14 = *(a4 + v13 - 15);
  v15 = *(a4 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = veorq_s8(v14, a5);
  *(v16 - 31) = veorq_s8(v15, a5);
  return (*(v12 + 8 * ((((((a3 + v7 + 72) | v9) ^ v11) + v8 == v6) * a2) ^ v10)))();
}

uint64_t sub_1001BD120()
{
  v4 = 1358806181 * ((v3 + 1475160102 - 2 * ((v3 - 120) & 0x57ED289E)) ^ 0x68C2441D);
  *(v3 - 104) = v2;
  *(v3 - 120) = v4 - 1569389450;
  *(v3 - 116) = v4 - 740060536 + v1;
  v5 = (*(v0 + 8 * (v1 ^ 0x2A02)))(v3 - 120);
  return (*(v0 + 8 * (((*(v3 - 112) == 16257999) * ((v1 ^ 0x7A3) + 2657)) ^ v1)))(v5);
}

void sub_1001BD1C8(unint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v19 = ((a2 ^ v10) + v11) ^ ((a2 ^ 0x5AFB426E0B8A3085) - 0x5AFB426E0B8A3085) ^ ((a2 ^ (v9 + v8) ^ 0x72A534C6BE2CFC05) - 0x72A534C6DF106852);
  v20 = v15 + (v19 + v12) * (v19 + v13) - ((((v15 + (v19 + v12) * (v19 + v13)) * v16) >> 64) >> 31) * v17;
  v21 = v20 * v18 + (v14 ^ v7) * (v14 ^ v7) + a4;
  v22 = (v21 - (((v21 * a1) >> 64) >> 31) * a5) * v20;
  *(a6 + a3) = *(v6 + a3) ^ (v22 >> 15) ^ 0x3C;
  *(a6 + (a3 | 1)) = *(v6 + (a3 | 1)) ^ (v22 >> 23) ^ 0x3C;
  *(a6 + (a3 | 2)) = *(v6 + (a3 | 2)) ^ (v22 >> 31) ^ 0x3C;
  *(a6 + (a3 | 3)) = *(v6 + (a3 | 3)) ^ (v22 >> 39) ^ 0x3C;
  JUMPOUT(0x1000CE1B0);
}

uint64_t sub_1001BD32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a12;
  a18 = &a11;
  a16 = (v18 + 1007) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  (*(v19 + 8 * (v18 + 7356)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * ((934883449 - (&a15 | 0x37B93079) + (&a15 | 0xC846CF86)) ^ 0x80DF9B88) + 3440;
  v21 = (*(v19 + 8 * (v18 ^ 0x2D36)))(&a15);
  return (*(v19 + 8 * (((a15 == v20) * ((v18 ^ 0x382) - 2785)) ^ v18)))(v21);
}

uint64_t sub_1001BD47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 ^ 0x86037F31) & 0xEBD1BD42 | ~(&a14 ^ 0x86037F31 | 0xEBD1BD42)) ^ 0xCA44EEEE) * v19;
  a15 = v22 - 1953920832;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574045;
  a16 = a9;
  a17 = &a12;
  v23 = (*(v20 + 8 * (v21 ^ 0x3645u)))(&a14);
  return (*(v20 + 8 * (((a14 == 16257999) * (((v21 - 4040) | 0x38) ^ 0xCB4)) ^ v21)))(v23);
}

uint64_t sub_1001BD5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, int a33, int a34, int a35, int a36)
{
  v40 = 1710126949 * ((0x9557F33CB065C338 - ((v39 - 152) | 0x9557F33CB065C338) + a32) ^ 0x2AE681A7D816757);
  *(v37 + 24) = (v38 + 1) - v40;
  *(v39 - 152) = a36 ^ v40;
  *(v39 - 148) = v40;
  *(v39 - 128) = a34 ^ v40;
  *(v39 - 144) = a36 - v40 - 22;
  *(v39 - 140) = a35 - v40;
  *(v37 + 40) = v40 ^ 3;
  v41 = (*(v36 + 8 * a31))(v39 - 152);
  return (*(v36 + 8 * *(v39 - 124)))(v41);
}

uint64_t sub_1001BD6B0()
{
  v11 = (v0 + 6025) ^ ((&v9 ^ 0x5869D362) * v1);
  v10 = v8;
  v4 = v0 ^ 0x2C9D;
  v5 = 1097 * (v0 ^ 0x913);
  (*(v2 + 8 * v4))(&v9);
  v11 = (v5 + 6152) ^ ((&v9 ^ 0x5869D362) * v1);
  v10 = v7;
  (*(v2 + 8 * (v5 ^ 0x2D1E)))(&v9);
  return (v3 - 16257999);
}

uint64_t sub_1001BD7D8(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26)
{
  v27.n128_u64[0] = 0x7878787878787878;
  v27.n128_u64[1] = 0x7878787878787878;
  v28.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v28.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return (*(v26 + 8 * ((((a18 + 726283800) & 0xD4B5E8DE ^ 0x2AE4) * (a15 < 0xFFFFFFFE)) ^ a18)))(a21, -474, 27, a25, 3953782941, 3904377628, 2443927634, a26, a1, a2, a3, v27, v28);
}

uint64_t sub_1001BD8D8@<X0>(int a1@<W8>)
{
  STACK[0x998] = v1;
  v2 = STACK[0x698];
  STACK[0x9A0] = STACK[0x698];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > ((6 * (a1 ^ 0x1A7Cu)) ^ 0x15FFuLL)) * (((a1 - 6613) | 0x187) + 14462)) ^ a1)))();
}

uint64_t sub_1001BD93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, int a45, int a46)
{
  v51 = v50 - 224;
  *(v51 + 88) = v49 | 3;
  *(v51 + 72) = ((v48 + 1) ^ a43 ^ 0xC5A1302D ^ (v46 - (a46 - 8863) >= ~(a46 - 8863))) - v49;
  *(v50 - 144) = (a46 + 1324639579) ^ v49;
  *(v50 - 160) = a43 - v49 + 12;
  *(v50 - 156) = a45 - v49;
  *(v50 - 168) = a43 ^ v49;
  *(v50 - 164) = v49;
  v52 = (*(v47 + 8 * a44))(v50 - 168);
  return (*(v47 + 8 * *(v50 - 140)))(v52);
}

void sub_1001BD9E0()
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v0;
  JUMPOUT(0x1000C336CLL);
}

uint64_t sub_1001BDA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, char *a14, int a15, char a16, int a17)
{
  v25 = -3 * (*(v17 + 32) + v23);
  v26 = (&a12 ^ 0x321B5B90) * v21;
  a17 = v26 + v20 + 1458;
  a13 = v22;
  a14 = &a10;
  a16 = (&a12 ^ 0x90) * v21 + v25 + 92;
  a15 = v26 + 864028683 + v24;
  v27 = (*(v19 + 8 * (v20 + 6273)))(&a12);
  return (*(v19 + 8 * (((a12 == v18) * (v20 ^ 0x10A0)) ^ v20)))(v27);
}

uint64_t sub_1001BDC00()
{
  (*(v1 + 8 * (v0 + 1166)))();
  v2 = STACK[0x330];
  STACK[0x5E0] = 0;
  return (*(v2 + 8 * (((STACK[0x520] == 0) * ((3437 * (v0 ^ 0x20F4) + 1871) ^ 0x221B)) ^ (3437 * (v0 ^ 0x20F4)))))();
}

uint64_t sub_1001BDD0C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6 = *v5;
  STACK[0x4A0] = *(a1 + 8 * v2);
  STACK[0x5B0] = v6;
  LODWORD(STACK[0x614]) = v4;
  STACK[0x608] = v3;
  return (*(a1 + 8 * (((v3 == 0) * ((31 * (a2 ^ 0x1498)) ^ 0x1EBA)) ^ (a2 - 1302))))();
}

uint64_t sub_1001BDD5C()
{
  v3 = (((2 * v1) & 0xFEDBD7BBB1BEF9CLL) + (v1 ^ 0x87F6DEBDDD8DF7CELL) + v0 + 0x780921422271FA0CLL);
  v4 = (v3[3622] << 56) | (v3[3623] << 48) | (v3[(2 * (v2 ^ 0x3D14)) ^ 0x2594] << 40) | (v3[3625] << 32) | (v3[3626] << 24) | (v3[3627] << 16) | (v3[3628] << 8) | v3[3629];
  STACK[0x458] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_1001BDE20();
}

void sub_1001BDE20(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  STACK[0x730] = a2;
  STACK[0x5A0] = *(a1 + 8 * (v2 - 3399));
  JUMPOUT(0x100056270);
}

uint64_t sub_1001BDE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LOWORD(STACK[0x8CE]);
  switch(v7)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v8 = STACK[0x740];
      STACK[0x570] = v4;
      LODWORD(STACK[0x7F4]) = a3;
      return (*(a4 + 8 * (((v8 + v5 != 0) * (((v6 + 750605168) & 0xD3429CFE) - 1109)) ^ (v6 - 689))))();
    case 20706:
LABEL_4:
      STACK[0x570] = v4;
      break;
  }

  *STACK[0x580] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return sub_1001A6894(a1, a2, a3, a4);
}

uint64_t sub_1001BE044()
{
  v2 = *(STACK[0x5B8] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 + 352)))(STACK[0x628], 0, 32);
      JUMPOUT(0x10003BC6CLL);
    }

    JUMPOUT(0x1000F1ACCLL);
  }

  return sub_1001BE0BC();
}

uint64_t sub_1001BE0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x518] = v4;
  STACK[0x760] = *(v7 + 8 * v6);
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x654]) = 546879932;
  LODWORD(STACK[0x848]) = 0;
  return (*(v7 + 8 * ((99 * ((((v3 - 7942) ^ (v5 == 0)) & 1) == 0)) ^ (v3 - 4070))))(a1, a2, a3, 16215976);
}

uint64_t sub_1001BE14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = LODWORD(STACK[0x380]);
  if (v7 == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v6 - 563) ^ (12428 * (a3 == 197499223)))))();
  }

  if (v7 == 20706 || v7 == 33980)
  {
    STACK[0x620] = a6;
  }

  return (STACK[0x770])(a1, a2, a3, STACK[0x3E8]);
}

uint64_t sub_1001BE1DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x230] = a1;
  *(v8 - 200) = a1;
  v9 = *(a7 + 8 * ((70 * (LODWORD(STACK[0x25C]) == ((((((v7 - 330) | 0x1A0) - 1442) | 0x84) + 16258553) ^ (((v7 - 330) | 0x1A0) + 1021391274) & 0xC31ECDFF))) ^ ((v7 - 330) | 0x1A0)));
  STACK[0x2A8] = STACK[0x270];
  return v9();
}

uint64_t sub_1001BE26C()
{
  v1 = *(STACK[0x758] + 24);
  STACK[0x790] = v1;
  return (*(STACK[0x3E8] + 8 * (((v1 == 0) * (((227 * (v0 ^ 0x147F)) ^ 0xFFFFFFCD) + v0 + 8)) ^ v0)))();
}

uint64_t sub_1001BE378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v24 = ((917997502 - (&a15 | 0x36B787BE) + (&a15 | 0xC9487841)) ^ 0x9121AB23) * v21;
  a16 = v24 - 1540187763;
  a17 = a13;
  a18 = &a10;
  a19 = -654855621 - v24;
  a20 = v24 + v22 + 1674574376;
  v25 = (*(v20 + 8 * (v22 + 4870)))(&a15);
  return (*(v20 + 8 * (((a15 != v23) * ((335 * (v22 ^ 0x1286) + 59) ^ (v22 - 3343))) ^ v22)))(v25);
}

uint64_t sub_1001BE444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1863741123 - 2 * (&a14 & 0x6F166EC3)) ^ 0xDF15F6B5) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((197 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_1001BE4C8()
{
  v1 = ((v0 + 41341218) & 0xFD8939C9) + 378997690 + (((*(STACK[0x518] + 116) ^ 0x34ECEC58) - 887942232) ^ ((*(STACK[0x518] + 116) ^ 0xFF4A3F24) + 11911388) ^ ((*(STACK[0x518] + 116) ^ 0xC0634A2F) + 1067234769));
  *(STACK[0x518] + 116) = v1 ^ ((v1 ^ 0x79FB7E12) - 1932193269) ^ ((v1 ^ 0xEA9DE919) + 531858690) ^ ((v1 ^ 0xE668EB93) + 323389324) ^ ((v1 ^ 0x7FDFEF7F) - 1963883672) ^ 0x1140AB4;
  return sub_1001BE5C4();
}

uint64_t sub_1001BE5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x470];
  v6 = STACK[0x4E8];
  v7 = &STACK[0xA00] + STACK[0x4E8];
  STACK[0x440] = v7;
  v8 = v7 + 16;
  STACK[0x798] = (v7 + 16);
  STACK[0x738] = (v7 + 48);
  STACK[0x4E8] = v6 + 80;
  (*(a4 + 8 * (v4 ^ 0x401)))();
  v9 = (*(STACK[0x3E8] + 8 * (v4 ^ 0x401)))(v8, 0, 32);
  v10 = STACK[0x3E8];
  STACK[0x5F0] = 0;
  STACK[0x7F8] = 0;
  LODWORD(STACK[0x6DC]) = 197499219;
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x5EC]) = 0;
  STACK[0x4D0] = v5;
  return (*(v10 + 8 * ((((((v4 + 194469502) & 0xF4688BCF) - 2808) ^ 0xDD) * (v5 != 0)) ^ v4)))(v9);
}

uint64_t sub_1001BE6C8@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v12 = (((&a3 | 0xC87FE277) - &a3 + (&a3 & 0x37801D88)) ^ 0xE483530C) * a1;
  a5 = v7;
  a3 = &a2;
  a6 = (((v11 + 3518) ^ 0xCB47733D) + v9) ^ v12;
  a7 = -1683109072 - v12;
  a4 = (v11 - 5048) ^ v12;
  v13 = (*(v8 + 8 * (v11 + 3628)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v10 + 3956) * (v11 ^ 0x187C)) ^ v11)))(v13);
}

void sub_1001BE7CC()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1001BE7F8);
}

uint64_t sub_1001BE89C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 3203));

  return v3(v1);
}

uint64_t sub_1001BE994@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x210] = a6;
  v66 = *(a6 + 24);
  LODWORD(STACK[0x220]) = a2;
  STACK[0x200] = a2 ^ 0x9DFEFFEEFDFFF39FLL;
  v67 = (v65 ^ a1) < (((a7 ^ 0x32D8) - 2744) | 4u) - 6086;
  v68 = *(a4 + 8 * ((v67 | (4 * v67)) ^ a7 ^ 0x32D8));
  STACK[0x3D0] = v66;
  return v68(a65, ((2 * a2) & 0x1FBFFE73ELL) + (a2 ^ 0x9DFEFFEEFDFFF39FLL) + 0x6201001102000C61, a3, 0x61459D2AF01F24F7, a5, 1280, -2);
}

uint64_t sub_1001BEA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 ^ 0xB7B;
  (*(a4 + 8 * (v4 ^ 0x2B7A)))();
  v7 = STACK[0x3E8];
  *(v5 + 24) = 0;
  v8 = (*(v7 + 8 * (v6 ^ 0x2001)))(v5);
  return sub_100182AD4(v8, v9, v10, STACK[0x3E8]);
}

uint64_t sub_1001BEB48()
{
  LOWORD(STACK[0x8D6]) = v2;
  LODWORD(STACK[0x2D0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5235)))();
}

uint64_t sub_1001BEB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1603139409 - 2 * (&a14 & 0x5F8DF751)) ^ 0xEF8E6F27) + 8154;
  v17 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((3661 * (a15 == 16257999)) ^ 0x15EAu)))(v17);
}

uint64_t sub_1001BEC70()
{
  v2 = (*(v1 + 8 * (v0 + 1573)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x4E0] = v2;
  return (*(v3 + 8 * ((((v0 - 1024360319) & 0x3D0E75F7 ^ 0x8DB ^ ((v0 - 698) | 0x100)) * (v2 != 0)) ^ v0)))();
}

void MaYVT0G(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001BED6C@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t sub_1001BEE60()
{
  LODWORD(STACK[0x79C]) = v1;
  STACK[0x638] = STACK[0x5C0];
  STACK[0x7D8] = *(STACK[0x330] + 8 * (v0 - 5007));
  LODWORD(STACK[0x310]) = v2 - 5614;
  LODWORD(STACK[0x300]) = v2 - 5021;
  LODWORD(STACK[0x2F0]) = v2 - 5055;
  LODWORD(STACK[0x2E0]) = v2 - 4572;
  LODWORD(STACK[0x2D0]) = v2 - 5037;
  return sub_1001705C4();
}

uint64_t sub_1001BEFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 224) = (v4 - 2140796422) ^ (914963389 * ((((v5 - 232) | 0x7F3CA9F7) - (v5 - 232) + ((v5 - 232) & 0x80C35608)) ^ 0x53C0188C));
  (*(a4 + 8 * (v4 ^ 0x249E)))(v5 - 232);
  v6 = STACK[0x3E8];
  v7 = *(STACK[0x6C0] + 8);
  STACK[0x6B8] = *(STACK[0x3E8] + 8 * v4);
  return sub_1001893F0(v6, v7);
}

void sub_1001BF064()
{
  v2 = *(STACK[0x800] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 ^ 0x324B)))(STACK[0x4E8], 0, 32);
      sub_1001BF0B4(&STACK[0x508]);
    }

    else
    {
      sub_1000E6EF8();
    }
  }

  else
  {
    sub_1001BF10C();
  }
}

uint64_t sub_1001BF0B4@<X0>(uint64_t *a1@<X8>)
{
  LODWORD(STACK[0x3A0]) = 17 * (v1 ^ 0x175D);
  LODWORD(STACK[0x390]) = v1 - 718307316;
  return sub_1001A5FE0(a1);
}

uint64_t sub_1001BF134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x7F8];
  STACK[0x5C0] = STACK[0x7F8];
  v7 = *(STACK[0x4D0] + 100);
  v8 = STACK[0x440];
  v9 = v4 + 2439 + (*(STACK[0x4D0] + 120) ^ 0x3BF2FDFE) + ((2 * *(STACK[0x4D0] + 120)) & 0x77E5FBFC) - 679501093;
  v10 = 236591001 * (((v4 ^ 0x18B1DEF7 ^ LODWORD(STACK[0x6DC])) - 414307369) ^ ((LODWORD(STACK[0x6DC]) ^ 0x5D502825) - 1565534245) ^ ((LODWORD(STACK[0x6DC]) ^ 0x4E24655F) - 1311008095)) + 179962559;
  v11 = 1358806181 * ((2 * ((v5 - 232) & 0x6C88B710) - (v5 - 232) + 326584558) ^ 0x2C58246D);
  *(v5 - 208) = STACK[0x4D0] + 104;
  *(v5 - 216) = v11 - 1498995465;
  *(v5 - 200) = v11 + v4 - 310;
  *(v5 - 196) = v9 ^ v11;
  *(v5 - 224) = v8;
  *(v5 - 192) = v10 ^ v11;
  *(v5 - 188) = v11 + 1334444757 * v7 + 206659825;
  *(v5 - 184) = v6;
  *(v5 - 176) = v6;
  v12 = (*(a4 + 8 * (v4 ^ 0x2F3D)))(v5 - 232);
  return (*(STACK[0x3E8] + 8 * ((340 * (*(v5 - 232) == 16257999)) ^ v4)))(v12);
}

void TRKYieUV6ptjZFoDvz()
{
  v0 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_1004033F0) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 - dword_1004033F0) ^ 0xDF))] ^ 0xE9]) - 88);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + v1) ^ 0xDF)) ^ byte_1003739D0[byte_100369460[(-85 * ((dword_1004033E0 + v1) ^ 0xDF))] ^ 0x21]) + 72);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[1] = 1934676430 - 33731311 * (v6 ^ 0x39F6CA23);
  LODWORD(v2) = 2054362027 * ((*v2 - *(v0 - 4)) ^ 0x3EF64BDF);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_1004033F0) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 - dword_1004033F0) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_10037A9B8[(byte_100373AD8[v2 - 8] ^ 0xBF) - 8] ^ v2) + 75264])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001BF834@<X0>(int a1@<W8>)
{
  v1 = (((*(STACK[0x6B0] + 116) ^ 0x5CC190D0) + ((2 * a1) ^ 0xA33E7F08)) ^ ((*(STACK[0x6B0] + 116) ^ 0x5689D319) - 1451873049) ^ ((*(STACK[0x6B0] + 116) ^ 0x18DDA9A) - 26073754)) + 711842995;
  v2 = (v1 ^ 0xF407BA28) & (2 * (v1 & 0xE157BCA1)) ^ v1 & 0xE157BCA1;
  v3 = ((2 * (v1 ^ 0x7605FB28)) ^ 0x2EA48F12) & (v1 ^ 0x7605FB28) ^ (2 * (v1 ^ 0x7605FB28)) & 0x97524788;
  v4 = v3 ^ 0x91524089;
  v5 = (v3 ^ 0x6000700) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x5D491E24) & v4 ^ (4 * v4) & 0x97524788;
  v7 = (v6 ^ 0x15400600) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x82124189)) ^ 0x75247890) & (v6 ^ 0x82124189) ^ (16 * (v6 ^ 0x82124189)) & 0x97524780;
  v9 = v7 ^ 0x97524789 ^ (v8 ^ 0x15004000) & (v7 << 8);
  *(STACK[0x6B0] + 116) = v1 ^ (2 * ((v9 << 16) & 0x17520000 ^ v9 ^ ((v9 << 16) ^ 0x47890000) & (((v8 ^ 0x82520709) << 8) & 0x17520000 ^ 0x5100000 ^ (((v8 ^ 0x82520709) << 8) ^ 0x52470000) & (v8 ^ 0x82520709)))) ^ 0xCA36AAE0;
  return sub_1001BF9F0();
}

uint64_t sub_1001BF9F0()
{
  v2 = STACK[0x868];
  v3 = STACK[0x728];
  v4 = &STACK[0xA30] + STACK[0x728];
  STACK[0x700] = v4;
  v5 = v4 + 16;
  STACK[0x5F0] = (v4 + 16);
  STACK[0x7A0] = (v4 + 48);
  STACK[0x728] = v3 - 5089 + 1723 * (v0 ^ 0x2025u);
  (*(v1 + 8 * (v0 + 1370)))();
  v6 = (*(STACK[0x330] + 8 * (v0 + 1370)))(v5, 0, 32);
  v7 = STACK[0x330];
  STACK[0x3E8] = 0;
  STACK[0x7F0] = 0;
  LODWORD(STACK[0x82C]) = 197499219;
  STACK[0x430] = 0;
  LODWORD(STACK[0x828]) = 0;
  STACK[0x4B8] = v2;
  return (*(v7 + 8 * (((v2 == 0) * (((v0 - 8230) | 0x282) ^ 0x2F4)) ^ v0)))(v6);
}

uint64_t sub_1001BFAC0()
{
  v2 = *STACK[0x4B0];
  STACK[0x858] = 0;
  STACK[0x540] = 0;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x2309) + 1748)) ^ v0)))();
}

uint64_t sub_1001BFB74@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  LODWORD(STACK[0x90C]) = a1;
  v57 = (a1 ^ 0xBC59953u) + STACK[0x270];
  STACK[0x910] = v57;
  return (*(v56 + 8 * ((a56 + 6368) ^ (30 * (v57 > a19)))))();
}

uint64_t sub_1001BFC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 ^ 0x2004)))(LODWORD(STACK[0x80C]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0x9C8] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0x9D4]) = a51;
  return (*(a65 + 8 * (((v68 != 0) * ((v65 ^ 0x23B) - 1940)) | v65)))();
}

uint64_t sub_1001BFC94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 != 0) * ((42 * (v3 ^ 0x1E5D)) ^ 0x811)) ^ (v3 - 4223))))();
}

uint64_t sub_1001BFCD8()
{
  STACK[0xA18] = v1;
  v3 = STACK[0x590];
  STACK[0xA20] = STACK[0x590];
  return (*(v2 + 8 * ((54 * (((v1 - v3 > (v0 ^ 0x27Bu) - 416) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_1001BFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21)
{
  a19 = (v21 + 997) ^ (33731311 * ((((&a18 | 0x23D9F47C) ^ 0xFFFFFFFE) - (~&a18 | 0xDC260B83)) ^ 0xE5D0C1A0));
  a20 = a16;
  a21 = &a13;
  (*(v22 + 8 * (v21 ^ 0x2DDE)))(&a18);
  a20 = a16;
  LODWORD(a21) = v21 - 2008441969 * (&a18 ^ 0x4899540E) + 3430;
  v23 = (*(v22 + 8 * (v21 + 7396)))(&a18);
  return (*(v22 + 8 * ((124 * (a18 == ((v21 + 1546) ^ 0xF81D0E))) ^ v21)))(v23);
}

uint64_t sub_1001BFE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x78C]) = v4 - v5 + 26;
  v7 = (*(a4 + 8 * (v6 + 3198)))();
  v8 = STACK[0x3E8];
  STACK[0x828] = v7;
  return (*(v8 + 8 * ((29 * (((v7 == 0) ^ (-77 * (((v6 - 31) | 0x60) ^ 0x67) + 1)) & 1)) ^ v6)))();
}

uint64_t sub_1001BFECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF4B6 ^ ((v4 ^ 0xE0u) + 716)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((224 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v4 ^ 0xE0)))();
}

void NuRl2rYpg6zLtnsguhi3()
{
  v0 = *(&off_1003E6550 + (byte_10036976C[(byte_100382D1C[(-85 * (dword_100403500 ^ 0xDF ^ dword_1004033E0)) - 12] ^ 0xB1) - 12] ^ (-85 * (dword_100403500 ^ 0xDF ^ dword_1004033E0))) + 203);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + (byte_100373CDC[(byte_100369664[(-85 * ((dword_1004033E0 + v1) ^ 0xDF)) - 4] ^ 0xAD) - 12] ^ (-85 * ((dword_1004033E0 + v1) ^ 0xDF))) + 199);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((184128274 - (v6 | 0xAF99312) + (v6 | 0xF5066CED)) ^ 0xC71D377D);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1003E6550 + ((-85 * (dword_100403500 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403500 ^ 0xDF ^ dword_1004033E0))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_10037A9B8[(byte_100373AD8[v2 - 8] ^ 0x67) - 8] ^ v2) + 76624])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1001C0158(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1001BD03CLL);
}

uint64_t sub_1001C0224()
{
  *(v2 - 228) = v1 - 33731311 * ((((v2 - 232) | 0x614E82E0) - ((v2 - 232) & 0x614E82E0)) ^ 0x58B848C3) + 1934673796;
  v5 = v0;
  v3 = (*(v0 + 8 * (v1 ^ 0x2FDD)))(v2 - 232);
  return (*(v5 + 8 * (((*(v2 - 232) == 16257999) * (v1 - 2202)) | v1)))(v3);
}

uint64_t sub_1001C095C()
{
  v2 = STACK[0x438];
  LODWORD(STACK[0x68C]) = STACK[0x7CC];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 4184) ^ (v0 - 4211))) ^ v0)))();
}

uint64_t sub_1001C09A0()
{
  v2 = STACK[0x4A0];
  STACK[0x740] = *(v1 + 8 * v0);
  return sub_1001C0F70(v2);
}

void sub_1001C0A2C(uint64_t a1)
{
  v1 = 2008441969 * ((a1 & 0xB41CF87E | ~(a1 | 0xB41CF87E)) ^ 0x37A538F);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 32);
  v4 = ((((*(a1 + 24) - v1) ^ 0x1151993F) - 290560319) ^ (((*(a1 + 24) - v1) ^ 0xC28C3A17) + 1030997481) ^ (((*(a1 + 24) - v1) ^ 0xEAC39360) + 356281504)) - 1539757407;
  v5 = 2008441969 * ((2 * (&v9 & 0x2FBB62E8) - &v9 - 800809705) ^ 0x98DDC919);
  v9 = v5 - 235825323 * (*(a1 + 8) ^ v1) + 118679478;
  v13 = &v8;
  v10 = v3;
  v11 = &v7;
  v12 = v4 ^ v5;
  v14 = v2 - v5 + 2761;
  v6 = *(&off_1003E6550 + v2 - 5360) - 8;
  (*&v6[8 * v2 + 32560])(&v9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001C0C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (((*(v5 + 16) ^ 0x4E50E979) + 614863233) ^ ((*(v5 + 16) ^ 0xEE517093) - 2069395349) ^ ((*(v5 + 16) ^ 0x5FFE6615) + 889757421)) - 156278046;
  v8 = (((v6 - 5304) | 0x821) ^ 0x8BB86590) + v4 > v7;
  v9 = (v4 > 0x74479616) ^ (v7 < 0x8BB869E9);
  v10 = v8;
  if (v9)
  {
    v11 = v4 > 0x74479616;
  }

  else
  {
    v11 = v10;
  }

  return (*(a4 + 8 * (v11 | (4 * v11) | v6)))();
}

uint64_t sub_1001C0D64(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 + 3717)))(16, 0x20040A4A59CD2) != 0;
  return (*(STACK[0x330] + 8 * ((v4 * (((v2 - 4121) | 0x18DA) ^ 0x1FED)) ^ v2)))();
}

void RpUSQN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001C0EC0()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x161u)))(32, 0x103004054B5FA7DLL);
  STACK[0x7B0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x3308) - 6072)) ^ v0)))();
}

uint64_t sub_1001C0F70@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6B0] = a1;
  LODWORD(STACK[0xA78]) = v5;
  LOWORD(STACK[0xA7E]) = v1;
  LODWORD(STACK[0xA80]) = v7;
  LODWORD(STACK[0xA84]) = v2;
  STACK[0xA88] = v4;
  STACK[0xA90] = v6;
  return (*(v8 + 8 * (((a1 == 0) * (6 * ((v3 + 1773579523) & 0x96493DB7 ^ 0xCA5) - 2597)) ^ v3)))();
}

uint64_t sub_1001C102C@<X0>(int a1@<W8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(v2 + v6) ^ 0x3C;
  return (*(v4 + 8 * (((v6 != 0) * a1) ^ v1)))();
}

uint64_t sub_1001C158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1 + a8 - 0x7E3601B1CFF728CALL;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((2 * v23 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v25 = __ROR8__(v24 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v24 ^= 0xFB03985F214EEF5uLL;
  v26 = __ROR8__((v25 + v24) ^ v11, 8);
  v27 = *(STACK[0x3E8] + 8 * v18);
  v28 = (v25 + v24) ^ v11 ^ __ROR8__(v24, 61);
  v29 = (v26 + v28) ^ a2;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v15;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v10;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x6E1E19DDB33CB23ALL;
  *v22 = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ v14) >> (8 * (v22 & 7u))) ^ HIBYTE(v12) ^ 0x82;
  v39 = __ROR8__((v22 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (0x29702F06207D0E1CLL - v39) & 0x79175E2C12C0C2DDLL | (v39 + v13) & 0x84E8A1D3ED3F3D22;
  v41 = __ROR8__(v40 ^ 0x4A4885D2AB97D283, 8);
  v40 ^= 0xFE36021C57805D99;
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0xC127DFD94147335ELL) - (v44 + v43) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__((((2 * (v47 + v46)) | 0x6287D6B764F85500) - (v47 + v46) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v49 = (((2 * (v47 + v46)) | 0x6287D6B764F85500) - (v47 + v46) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v46, 61);
  v50 = (v48 + v49) ^ v15;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v10;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *(v22 + 1) = (((__ROR8__((((2 * (v54 + v53)) | 0x360AC320C760007CLL) - (v54 + v53) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v54 + v53)) | 0x360AC320C760007CLL) - (v54 + v53) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v53, 61))) ^ v14) >> (8 * ((v22 + 1) & 7))) ^ BYTE2(v12) ^ 0xD1;
  v55 = __ROR8__((v22 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = -2 - (((0x29702F06207D0E1CLL - v55) | 0xC0963AD6F9C849DALL) + ((v55 + v13) | 0x3F69C5290637B625));
  v57 = v56 ^ 0xF1C9E128409F5984;
  v56 ^= 0x45B766E6BC88D69EuLL;
  v58 = (__ROR8__(v57, 8) + v56) ^ v11;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a2;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) & 0x3491A382ECB7AD6) - (v62 + v61) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xBC926A3ADA0D4D3ALL) - (v65 + v64) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0xC0B992F3FD58C89ALL) - (v68 + v67) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) | 0x526500C12C79ADD0) - (v71 + v70) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  *(v22 + 2) = (((((2 * (v74 + v73)) & 0x243286079BD1E962) - (v74 + v73) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v22 + 2) & 7))) ^ BYTE1(v12) ^ 0x17;
  v75 = __ROR8__((v22 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = v75 - ((2 * v75 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v77 = v76 ^ 0xDC0265A8D53E5320;
  v76 ^= 0x687CE2662929DC3AuLL;
  v78 = __ROR8__(v77, 8);
  v79 = (((2 * (v78 + v76)) | 0xC1B61E594159C0E2) - (v78 + v76) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v80 = v79 ^ __ROR8__(v76, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a2;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x57D072DFC3A5F657;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = ((v16 & (2 * (v85 + v84))) - (v85 + v84) + v17) ^ v19;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v10;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x6E1E19DDB33CB23ALL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  *(v22 + 3) = v12 ^ v9 ^ (((v92 + v91 - (v20 & (2 * (v92 + v91))) + v21) ^ v8) >> (8 * ((v22 + 3) & 7)));
  return v27();
}

uint64_t sub_1001C1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (956911519 * (&a12 ^ 0xEA917005)) ^ 0xA98301D7;
  v14 = (*(v13 + 77112))(&a12);
  return (*(v13 + 8 * ((46 * (a12 == 538291946)) ^ 0xFCFu)))(v14);
}

uint64_t sub_1001C2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((((&a15 | 0x116EE940) ^ 0xFFFFFFFE) - (~&a15 | 0xEE9116BF)) ^ 0xB6F8C5DD) * v21;
  a19 = 1032869496 - v23;
  a20 = v23 + v22 + 1674577821;
  a16 = v23 + 1723283275;
  a17 = a13;
  a18 = &a10;
  v24 = (*(v20 + 8 * (v22 + 8315)))(&a15);
  return (*(v20 + 8 * (v22 | (16 * (a15 != ((v22 - 1998583382) & 0x771FF9DB) + ((v22 + 915) | 0x346) + 16252758)))))(v24);
}

void sub_1001C210C(uint64_t a1)
{
  v1 = *(a1 + 4) - 956911519 * ((2 * (a1 & 0x98084BF6) - a1 + 1744286729) ^ 0x8D66C40C);
  v4 = 552;
  v6 = 25885 * (((&v5 ^ 0xF2B3 | 0x38E2) - (&v5 ^ 0xF2B3 | 0xC71D) - 14563) ^ 0xE602) + 12303;
  v5 = &v3;
  v7 = v1 + 869295389 * (((&v5 ^ 0x2818F2B3 | 0xF05438E2) - (&v5 ^ 0x2818F2B3 | 0xFABC71D) + 262915869) ^ 0x6918E602) - 8515;
  v2 = *(&off_1003E6550 + (v1 ^ 0x2419)) - 8;
  (*&v2[8 * (v1 ^ 0xEA)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001C2330@<X0>(uint64_t a1@<X8>)
{
  v5 = _byteswap_ulong(*(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FAFLL));
  v6 = ((v5 + 197499219 - 2 * (v5 & 0xBC5995F ^ *(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FACLL) & 0xC)) ^ 0xBC59953) + v1 + 10 > v2;
  return (*(v4 + 8 * (((16 * v6) | (v6 << 6)) ^ v3)))();
}

uint64_t sub_1001C240C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return sub_1001490C8();
}

uint64_t sub_1001C2444@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x830] = *a1;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 1796128875) & 0x6B0EB961) - 269)) | v1)))();
}

uint64_t sub_1001C2508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = LOWORD(STACK[0x8CC]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 == 33980)
  {
    v10 = STACK[0x7E8];
    STACK[0x3F0] = v4;
    LODWORD(STACK[0x7F4]) = a3;
    return (*(a4 + 8 * (((v10 + v5 != 0) * (v7 - 5206)) ^ (v7 - 498))))();
  }

  v9 = v7;
  if (v8 == 20706)
  {
LABEL_4:
    STACK[0x3F0] = v4;
    v6 = 16215638;
    v9 = v7;
  }

  *STACK[0x820] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return (*(a4 + 8 * (((((v9 - 4741) ^ 0x1585) + ((v9 - 4741) | 0x400) - 6632) * (v6 == 16257999)) ^ (v9 - 2471))))();
}

uint64_t sub_1001C2FB0()
{
  STACK[0x958] = v1;
  v3 = STACK[0x700];
  STACK[0x960] = STACK[0x700];
  return (*(v2 + 8 * (((v1 - v3 > ((v0 ^ 0x2A34u) - 5682) - 2625) * (v0 ^ 0xE47)) ^ v0 ^ 0x2A34)))();
}

uint64_t sub_1001C301C()
{
  STACK[0x948] = v1;
  v3 = STACK[0x6D8];
  STACK[0x950] = STACK[0x6D8];
  return (*(v2 + 8 * (((v1 - v3 > (v0 + 3885) - 5613) * (((v0 - 1444) | 0x48) ^ 0x14B6)) ^ v0)))();
}

uint64_t sub_1001C30CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((121 * (v6 == (v4 - v2 - 2) - 3483)) ^ (v4 + 1267638684))))();
}

uint64_t sub_1001C31A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = ((((v17 - 120) | 0xE2C930A7DEE3331BLL) - ((v17 - 120) | 0x1D36CF58211CCCE4) + 0x1D36CF58211CCCE4) ^ 0xB1DB013CBD4A7563) * v16;
  v19 = v18 + v15 + *v10 - (v13 & (2 * *v10));
  *(v17 - 120) = &a10;
  *(v17 - 112) = v19;
  *(v17 - 104) = v14 - v18 + v12;
  v20 = (*(v11 + 8 * (v12 ^ 0x2A12)))(v17 - 120);
  return (*(v11 + 8 * ((8156 * (*(v17 - 100) == 16257999)) ^ v12)))(v20);
}

uint64_t sub_1001C325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 + 6970)))();
  v68 = STACK[0x614];
  STACK[0x640] = (v65 - 1740) + STACK[0x640] - 974;
  return (*(a64 + 8 * ((12675 * (v68 == v64)) ^ (v65 + 1805))))(v67);
}

void sub_1001C32B4(uint64_t a1)
{
  v1 = *a1 - 1710126949 * ((a1 & 0x515F7A29 | ~(a1 | 0x515F7A29)) ^ 0x9CBBDE46);
  v2 = *(a1 + 8);
  v3 = *(&off_1003E6550 + (v1 ^ 0x2327)) - 8;
  (*&v3[8 * (v1 ^ 0x799)])(*(&off_1003E6550 + (v1 ^ 0x22B3)), sub_1000A9D80);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001C34D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x3E4];
  v5 = (*(a4 + 8 * (LODWORD(STACK[0x3E4]) ^ 0x31C7)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x3E8] + 8 * ((121 * ((v4 ^ (v5 == 0)) & 1)) ^ (v4 - 1333))))();
}

uint64_t sub_1001C3558()
{
  v2 = (*(v1 + 8 * (v0 + 4047)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x470] = v2;
  return (*(v3 + 8 * ((49 * (((v2 == 0) ^ (v0 + 36)) & 1)) ^ v0)))();
}

uint64_t sub_1001C35BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  HIDWORD(a20) = v53;
  v54 = (*(v52 + 8 * (v51 + 6120)))(&a51, 0);
  (*(v52 + 8 * (v51 + 6063)))(v54);
  v55 = (*(v52 + 8 * (v51 ^ 0x2873)))();
  HIDWORD(a38) = a39 ^ a15;
  return sub_1001C36A0(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1001C36A0()
{
  v7 = *(v0 + 4 * (v1 - 1));
  *(v0 + 4 * v1) = (*(v5 + 4 * v4) ^ 0x2DDD12DF) + v4 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v0 + 4 * v1));
  v8 = 1710126949 * ((~((v6 - 168) | 0x3FCECA77471D3365) + ((v6 - 168) & 0x3FCECA77471D3365)) ^ 0xA83751518AF9970ALL);
  v9 = v6 - 224;
  *(v9 + 88) = v8 ^ 0x26F;
  *(v9 + 72) = v1 + 1 - v8;
  *(v6 - 160) = v3 - 937004365 - v8 + 13;
  *(v6 - 156) = ((v3 - 937004365) ^ 0x3B9) - v8;
  *(v6 - 168) = (v3 - 937004365) ^ v8;
  *(v6 - 164) = v8;
  *(v6 - 144) = (v3 + 1324639579) ^ v8;
  v10 = (*(v2 + 8 * (v3 + 210)))(v6 - 168);
  return (*(v2 + 8 * *(v6 - 140)))(v10);
}

uint64_t sub_1001C37A0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 2188) ^ 0xFFFFFFFFFFFFF744) + v3;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((940 * (v6 == 0)) ^ (a2 + v4 + 3501))))();
}

uint64_t sub_1001C37DC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA08] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x1F3CD3FB) - 524080123) ^ ((v1 ^ 0x9DE3C384) + 1646017660) ^ ((v1 ^ 0x891A89B9 ^ ((v2 ^ 0x3FFE) - 2739) ^ 0x1563) + 1994749652)) + 197499229;
  v5 = (*(v3 + 8 * ((v2 ^ 0x3FFE) + 1273)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((19 * (v5 == 0)) ^ v2 ^ 0x3FFE)))();
}

uint64_t sub_1001C38FC()
{
  v3 = ((2 * v1) & 0x3FFDBBDBBB7B3C8ELL) + (v1 ^ 0x1FFEDDEDDDBD9E47) + v0;
  v4 = (*(v3 - 0x1FFEDDEDDDBD9E47) << 56) | (*(v3 + (((v2 - 5278) | 0x965u) ^ 0xE00122122242685FLL)) << 48) | (*(v3 - 0x1FFEDDEDDDBD9E45) << 40) | (*(v3 - 0x1FFEDDEDDDBD9E44) << 32) | (*(v3 - 0x1FFEDDEDDDBD9E43) << 24) | (*(v3 - 0x1FFEDDEDDDBD9E42) << 16) | (*(v3 - 0x1FFEDDEDDDBD9E41) << 8) | *(v3 - 0x1FFEDDEDDDBD9E40);
  STACK[0x7D0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_1001C39C8();
}

uint64_t sub_1001C3A30(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x858] == 0) * (2 * (v2 - 2536) - 11190)) ^ v2)))();
}

uint64_t sub_1001C3AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((2 * (&a12 & 0x30F538A0) - &a12 + 1326106462) ^ 0xFF095F28) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * (((a13 == v16) * ((v15 - 1655664906) ^ 0x9D509B8E)) ^ v15)))(v17);
}

void sub_1001C5864(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x9E6A01AA) + (~a1 | 0x6195FE55))) ^ 0x58633476);
  __asm { BRAA            X10, X17 }
}

void pDCGH0ta()
{
  v0 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403548) ^ 0xDF)) ^ byte_10037AAB0[byte_100373BD0[(-85 * ((dword_1004033E0 - dword_100403548) ^ 0xDF))] ^ 0x2A]) + 163);
  v1 = *(&off_1003E6550 + ((-85 * (*v0 ^ dword_1004033E0 ^ 0xDF)) ^ byte_1003739D0[byte_100369460[(-85 * (*v0 ^ dword_1004033E0 ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v1 - *v0];
  *v0 = 2054362027 * v2 + 0x1FC86B74B1533AF5;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 + 686639723 - 2 * (v5 & 0x28ED4A6B)) ^ 0x1AF611FB);
  LOBYTE(v1) = -85 * (*v0 ^ 0xDF ^ *v1);
  v3 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403548) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 + dword_100403548) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v3[8 * (byte_10036976C[(byte_100382D1C[v1 - 12] ^ 0xE9) - 12] ^ v1) + 75936])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_1001C5BF4(_DWORD *a1)
{
  v1 = *a1 - 1824088897 * ((-2 - ((~a1 | 0x839EE099) + (a1 | 0x7C611F66))) ^ 0xDBF733FB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001C5CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_1001A5678(a4, v5);
}

uint64_t sub_1001C5D0C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 3584) ^ 0xFFFFFFFFFFFFF1D0) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((5420 * ((v3 & 0xFFFFFFE0) == 32)) ^ (a2 + v4 + 1520))))();
}

uint64_t sub_1001C5DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 220) = v66 + (((~(v68 - 232) & 0x3A0B8DA8) - (~(v68 - 232) | 0x3A0B8DA9)) ^ 0x62625ECB) * v65 + 1624351959;
  *(v68 - 232) = v64;
  v70 = (*(v69 + 8 * (v66 ^ 0x2C42)))(v68 - 232);
  return (*(a64 + 8 * (((*(v67 + 32) == (v66 - 444) - 2190) * (v66 ^ 0x991)) ^ (v66 + 2495))))(v70);
}

uint64_t sub_1001C5F34@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0x95109AD8) + 1894256436) ^ ((*(v1 + 16) ^ 0xAA36D061) + 1338918283) ^ ((*(v1 + 16) ^ 0xC0D9B546) + 622928046)) - 1967799525;
  v5 = (a1 > 0x5B42D2CF) ^ (v4 < 0xA4BD2D30);
  v6 = a1 - 1531111122 + ((v2 - 1178890415) & 0x46447556) > v4;
  if (v5)
  {
    v6 = a1 > 0x5B42D2CF;
  }

  return (*(v3 + 8 * ((61 * !v6) ^ v2)))();
}

void sub_1001C60DC(uint64_t a1)
{
  v1 = *(a1 + 56) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB);
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = 914963389 * ((1049250315 - (v8 | 0x3E8A4A0B) + (v8 | 0xC175B5F4)) ^ 0xED89048F);
  v5 = *(a1 + 36) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB) - v4;
  v6 = -1048309713 * (*(a1 + 8) ^ (1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB)));
  v14 = *(a1 + 24);
  v12 = v3;
  v9 = v2;
  v10 = v3;
  v13 = (v6 + 925357747) ^ v4;
  v11 = v5 + 997465963;
  v8[0] = v1 - v4 + 1631356711;
  v7 = *(&off_1003E6550 + v1 - 3097) - 8;
  (*&v7[8 * (v1 ^ 0x2880)])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001C6274()
{
  v4 = *(v0 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x6C8];
      STACK[0x5F8] = *(v3 + 8 * (v2 - 2143));
      return sub_1001C0FDC(v7);
    case 3:
      v6 = *(v0 + 40 * v1 + 16);
      return (*(v3 + 8 * ((250 * (((43 * (v2 ^ 0xA77u) + 0x1A3AF77BE7AB60B8) ^ v6) + ((2 * v6) & 0x3475EEF7CF56D5EELL) != 0x1A3AF77BE7AB6AF7)) ^ (v2 - 254))))();
    case 2:
      return (*(v3 + 8 * (((STACK[0x6C8] != 0) * (((v2 - 673267795) & 0x282137BD) - 435)) ^ (v2 + 3587))))();
    default:
      return (STACK[0x800])();
  }
}

uint64_t sub_1001C6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1117 * (LODWORD(STACK[0x3E4]) ^ 0x1466);
  v5 = STACK[0x86C];
  STACK[0x4E8] = STACK[0x4E8] - 5269 + ((v4 + 1869) | 1u);
  return (*(a4 + 8 * ((6267 * (v5 == ((v4 - 1219358489) & 0x48ADFFFB) + 16250325)) ^ v4)))();
}

uint64_t sub_1001C6578@<X0>(uint64_t a1@<X8>)
{
  v6 = 1710126949 * ((v4 - 232) ^ 0x321B5B90);
  *(v4 - 204) = 101 * ((v4 + 24) ^ 0x90) + 22;
  *(v4 - 208) = v6 + 636535337 + (((v3 ^ 0x2F414975) - 792807797) ^ ((v3 ^ 0x5CA05111) - 1554010385) ^ (((((((8 * v1) ^ 0x10528) + 1917888382) & 0x8DAF5FFE) + 2015652673) ^ v3) - 2015658295));
  *(v4 - 200) = v6 + v1 - 3720;
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x550];
  v7 = (*(v5 + 8 * (v1 + 1095)))(v4 - 232);
  return (*(STACK[0x330] + 8 * ((26 * (*(v4 - 232) != v2)) ^ v1)))(v7);
}

void sub_1001C66D8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x65C]) = v2;
  JUMPOUT(0x1000A3490);
}

uint64_t sub_1001C67C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x3F0] = v3;
  STACK[0x500] = *(v4 + 8 * a3);
  return sub_100186D00(a1, a2);
}

void sub_1001C6884(uint64_t a1)
{
  v1 = *(a1 + 4) - 2048652491 * ((2 * (a1 & 0x54A06222) - a1 + 727686621) ^ 0x9AEE0AD8);
  v3[1] = v1 - 33731311 * (((v3 | 0xEFE0B918) - (v3 & 0xEFE0B918)) ^ 0xD616733B) + 1934669966;
  v2 = *(&off_1003E6550 + v1 - 6185) - 8;
  (*&v2[8 * (v1 ^ 0x3CD7)])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_1001C69BC()
{
  STACK[0x310] = STACK[0x4E0] + 24;
  v0 = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x2C0]) = v0;
  LODWORD(STACK[0x2B0]) = v0 ^ 0xFFFFA60A;
  v1 = STACK[0x9C0];
  LODWORD(STACK[0x2D0]) = 197499223;
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x9C4]) ^ 0xD6A561FA;
  STACK[0x300] = STACK[0x820] + 24;
  v2 = LOWORD(STACK[0x9F6]);
  LODWORD(STACK[0x2A0]) = v2;
  LODWORD(STACK[0x290]) = v2 ^ 0x4CF9;
  v3 = STACK[0x9F8];
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x9FC]) ^ 0xD6A561FA;
  STACK[0x2F0] = STACK[0x6F0] + 24;
  STACK[0x2E0] = STACK[0x470] + 24;
  LODWORD(STACK[0x240]) = v1;
  LODWORD(STACK[0x280]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x230]) = v3;
  LODWORD(STACK[0x270]) = v3 ^ 0xD6A561FA;
  LODWORD(STACK[0x260]) = LODWORD(STACK[0x51C]) ^ 0xD6A561FA;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x8F4]) - ((2 * LODWORD(STACK[0x8F4])) & 0xBAC1F152) - 580847447;
  JUMPOUT(0x100037470);
}

void sub_1001C6B84()
{
  LODWORD(STACK[0x5D4]) = v1;
  STACK[0x688] = STACK[0x350];
  STACK[0x7D8] = *(v2 + 8 * (v0 - 5025));
  JUMPOUT(0x1001C6BACLL);
}

uint64_t sub_1001C6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = 1317436891 * (((&a19 ^ 0x402030 | 0xF610124F) + (&a19 ^ 0x50101201 | 0x9EFEDB0)) ^ 0xE053AA46) + 8154;
  a19 = &a12;
  v23 = (*(v21 + 77096))(&a19);
  return (*(v21 + 8 * ((13233 * (a20 == ((v22 + 1199) ^ 0xBB1))) ^ 0x1102u)))(v23);
}

_BYTE *sub_1001C6D54(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_1001C6F30(mach_port_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t *a5, void *a6, unsigned int *a7)
{
  v19 = 1;
  v20 = a3;
  v21 = 16777472;
  v22 = a4;
  v23 = NDR_record;
  v24 = __PAIR64__(a4, a2);
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x3Cu, 0x48u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v16 = 4294966988;
  }

  else if (msg.msgh_id == 1300)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v16 = 4294966996;
      if (v19 == 1 && msg.msgh_size == 64 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
      {
        v17 = v22;
        if (v22 == v25)
        {
          *a5 = v24;
          *a6 = v20;
          *a7 = v17;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v16 = 4294966996;
      if (HIDWORD(v20))
      {
        if (msg.msgh_remote_port)
        {
          v16 = 4294966996;
        }

        else
        {
          v16 = HIDWORD(v20);
        }
      }
    }

    else
    {
      v16 = 4294966996;
    }
  }

  else
  {
    v16 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v16;
}

uint64_t sub_1001C712C(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = 1;
  v13 = a4;
  v14 = 16777472;
  v15 = a5;
  v16 = NDR_record;
  v17 = a2;
  v18 = a3;
  v19 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x44u, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v9;
  }

  if (msg.msgh_id != 1301)
  {
    v9 = 4294966995;
    goto LABEL_18;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v9 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    goto LABEL_18;
  }

  return v9;
}

uint64_t sub_1001C72AC(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v18 = 1;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = NDR_record;
  v23 = a2;
  v24 = a3;
  v25 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x44u, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (msg.msgh_id == 71)
  {
    v15 = 4294966988;
  }

  else if (msg.msgh_id == 1302)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v15 = 4294966996;
      if (v18 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
      {
        v16 = v21;
        if (v21 == v23)
        {
          *a6 = v19;
          *a7 = v16;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v15 = 4294966996;
      if (HIDWORD(v19))
      {
        if (msg.msgh_remote_port)
        {
          v15 = 4294966996;
        }

        else
        {
          v15 = HIDWORD(v19);
        }
      }
    }

    else
    {
      v15 = 4294966996;
    }
  }

  else
  {
    v15 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v15;
}

uint64_t sub_1001C74A4(mach_port_t a1, unsigned int a2, uint64_t a3)
{
  v10 = NDR_record;
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(&msg, 3, 0x2Cu, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v7;
  }

  if (v6)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v7;
  }

  else
  {
    if (msg.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      v7 = 4294966996;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v7 = v11;
        if (!v11)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&msg);
    return v7;
  }
}

uint64_t sub_1001C76D8()
{
  result = (*(v3 + 8 * (v0 + 49)))(v2);
  *(v1 + 4) = 0;
  return result;
}

void sub_1001C788C(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (801985777 * ((2 * (a1 & 0x3D6FE1E) - a1 + 2083062241) ^ 0x9B5855C0));
  v2 = *a1;
  v3 = **(&off_1003E74E0 + v1 - 59);
  strcpy(v6, "com.apple.absd");
  v4 = *(&off_1003E74E0 + (v1 ^ 0x39));
  v5 = *(v4 + 8 * ((((*(v4 + 8 * (v1 ^ 0x50)))(v3, v6, v2) == 0) * ((v1 + 24) ^ 0x3D)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001C7AE8()
{
  result = (*(v3 + 8 * (v4 + v0 + 6)))(*(v1 + 8 * (v0 ^ (v5 + 52))), nullsub_1);
  *v2 = -1793105400;
  return result;
}

uint64_t sub_1001C8BE4(__SecKey *a1, const UInt8 *a2, CFIndex length, UInt8 **a4, unsigned int *a5)
{
  error = 0;
  v8 = CFDataCreate(0, a2, length);
  v9 = SecKeyCreateSignature(a1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v8, &error);
  if (!v9)
  {
    v14 = 4294925247;
    if (!v8)
    {
      return v14;
    }

    goto LABEL_8;
  }

  v10 = v9;
  v11 = CFDataGetLength(v9);
  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (v12)
  {
    v13 = v12;
    v17.length = CFDataGetLength(v10);
    v17.location = 0;
    CFDataGetBytes(v10, v17, v13);
    v14 = 0;
    *a4 = v13;
    *a5 = v11;
  }

  else
  {
    v14 = 4294925268;
  }

  CFRelease(v10);
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }

  return v14;
}

uint64_t sub_1001C8CE0()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1001C8EE0;
  v11 = sub_1001C8EF0;
  v12 = 0;
  v0 = dispatch_semaphore_create(0);
  if (v0)
  {
    if (getenv("RunningTestSUInfoRefetch"))
    {
      v15[0] = @"IgnoreExistingCollection";
      v16[0] = [NSNumber numberWithUnsignedChar:1];
      v16[1] = &__kCFBooleanTrue;
      v15[1] = @"scheduleCollectionForCurrentBuild";
      v15[2] = @"NetworkTimeoutInterval";
      v16[2] = &off_1003FBE58;
      v1 = v15;
      v2 = v16;
      v3 = 3;
    }

    else
    {
      v13 = @"scheduleCollectionForCurrentBuild";
      v14 = &__kCFBooleanTrue;
      v1 = &v13;
      v2 = &v14;
      v3 = 1;
    }

    [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:v3];
    MAEPerformCollectionWithCompletion();
    v5 = dispatch_time(0, 70000000000);
    v4 = 4294924355;
    if (!dispatch_semaphore_wait(v0, v5))
    {
      if (v8[5])
      {
        v4 = 4294924355;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 4294925268;
  }

  dispatch_release(v0);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1001C8EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C8F10(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void sub_1001C8F60(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t sub_1001C8FA4(uint64_t result)
{
  v1 = 218380439 * (((result ^ 0x63E01C0209EB8FF3) - 2 * ((result ^ 0x63E01C0209EB8FF3) & 0x8889D36A3452E4C0) - 0x77762C95CBAD1B40) ^ 0xF517F5FB059CEE52);
  v2 = *(result + 32) + v1;
  v3 = *result - v1;
  v4 = *(result + 20) + 218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52);
  v5 = v2 == v3;
  v6 = v2 > v3;
  if ((*(result + 8) ^ (218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52))))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (!v7)
  {
    v4 = *(result + 12) - 218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52);
  }

  *(result + 40) = v4 ^ (*(result + 24) + 218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52));
  return result;
}

uint64_t sub_1001C90C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v7 + v6;
  if (a4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v4 + 8 * (v8 | (8 * ((v10 ^ (v7 + 18)) & 1)))))(a1, a2, a3);
}

uint64_t sub_1001C9118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v7 + v6;
  if (a4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(v4 + 8 * (((((v7 + 1541529584) & 0xC7FEEF7F) - 1621) * v10) | v8)))(a1, a2, a3);
}

uint64_t sub_1001C91F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 1574982917 * (((v11 | 0xECD797A1) - v11 + (v11 & 0x13286858)) ^ 0x17F2D71C);
  v12 = (v4 + 1931) ^ v5;
  v19 = &v9;
  v18 = 399364581 - v5;
  v11[1] = &v8;
  v11[2] = 0;
  v11[0] = v3;
  v13 = 0;
  v14 = 0x2F38A81C3234F21BLL;
  v15 = a2;
  v16 = &v10;
  (*(v2 + 8 * (v4 + 2028)))(v11);
  result = a1;
  *(a1 + 24) = v17;
  return result;
}

void sub_1001C9390(uint64_t a1)
{
  v1 = *(a1 + 28) - 923786993 * ((~a1 & 0x10A645DB | a1 & 0xEF59BA24) ^ 0x7A41F994);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001C9494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 40))
  {
    v7 = *(a1 + 16) == 0x38719A36542A0B63;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(a3 + 8 * ((v8 ^ (v6 - 1)) & 1 ^ v6)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1001C9530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 ^ 0xFF) & v5;
  v8 = *(a1 + 24) - v3 == 257197106 && v6 == ((v4 - 164266389) & 0x9CA87FF) - 1883;
  return (*(a3 + 8 * ((604 * v8) ^ v4)))();
}

void sub_10020DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, char a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v62 = (((a24 + 1) & 3) + 1705365433 - 2 * ((a24 + 1) & 1)) ^ 0x65A5CFB9 | a62;
  v63 = (((2 * a57) | 0xFFFFFFFB) + (a57 & 3 ^ 0x88279926) - 21) ^ 0x8827990E | a62;
  v64 = ((a58 & 3) - 1433245157 - 2 * (a58 & 3)) ^ 0xAA926A1B | a62;
  LODWORD(STACK[0x358]) = v64 + 706912886 - ((2 * v64) & 0x544544EC);
  LODWORD(STACK[0x340]) = v62 - 1499767389 - ((2 * v62) & 0x4D36BB4A) + 2;
  LODWORD(STACK[0x350]) = v63 + 1007383813 - ((2 * v63) & 0x7816EA1E) + 10;
  JUMPOUT(0x1001CB47CLL);
}

uint64_t sub_10020E0F8(uint64_t result)
{
  v1 = 1614251083 * ((2 * (result & 0x37F8631DB4548D5ALL) - result - 0x37F8631DB4548D5BLL) ^ 0x7C2D473D23B21F45);
  v2 = *(result + 16) ^ v1;
  v3 = *(result + 40) + v1;
  v4 = v2 >= v3;
  v5 = v2 < v3;
  v6 = !v4;
  if ((*(result + 8) + 1614251083 * ((2 * (result & 0xB4548D5A) - result + 1269527205) ^ 0x23B21F45)))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = result;
  }

  else
  {
    v8 = (result + 24);
  }

  *(result + 4) = *v8 ^ (1614251083 * ((2 * (result & 0xB4548D5A) - result + 1269527205) ^ 0x23B21F45)) ^ (*(result + 32) - 1614251083 * ((2 * (result & 0xB4548D5A) - result + 1269527205) ^ 0x23B21F45));
  return result;
}

void sub_10020E19C(void *a1)
{
  if (a1[1])
  {
    v2 = a1[3] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && a1[4] != 0;
  v1 = 1117245193 * ((((2 * a1) | 0x8B53CAEE) - a1 + 978721417) ^ 0x15AA2E7E);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10020E260@<X0>(uint64_t a1@<X8>)
{
  v7 = 1574982917 * ((-1669748345 - (v10 | 0x9C79A987) + (v10 | 0x63865678)) ^ 0x98A316C5);
  v17 = -442462546 - v7;
  v14 = v2;
  v15 = v3;
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = &v9;
  v12 = 0;
  v13 = 0x2F38A81C3234F21BLL;
  v18 = a1;
  v11 = (v5 + v1 + 1960) ^ v7;
  result = (*(v4 + 8 * (v1 ^ 0x9520175C)))(v10);
  *v6 = v16;
  return result;
}

void sub_10020E344()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 64) + 1670914187 * (((v0 | 0xC051CF9A) - v0 + (v0 & 0x3FAE3065)) ^ 0xE0233B4);
  v2 = *(v0 + 40);
  v3 = (*(&off_1003E7570 + (v1 | 0x79)))(21504, 1951826711);
  *(v2 - 0x5DA3895CB52A6E57) = v3 + 0x606985B424E1B15ELL;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10020E480@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 32);
  v14 = (v13 + v12);
  v15 = (a6 - 1771) | 0x5C8;
  v19 = (*(a12 + 12) ^ v12) == v15 + 1352785654 || v14 == 126238804 || *(a12 + 16) + v12 == 927940940 || *(a12 + 48) + v12 == 438783090;
  *(*(a12 + 80) - 0x4696E7649AFAC746) = 604931837;
  return (*(&off_1003E7570 + ((19 * v19) ^ a6)))(v14, v13, a1, a2, a3, (v15 + 536), a4, a5, a7, a8, a9);
}

uint64_t sub_10020E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15 = a14[7];
  v16 = a14[3];
  v20 = v16 == 0x612F5EEDFD47CC22 || a14[9] == 0x6C9CEFEC55D2C59DLL || v15 == 0x2344937AD629B1A1 || *a14 == 0x99187B47AA1D2C2;
  return (*(&off_1003E7570 + ((v20 * (a6 + 881 * (v14 ^ 0x5EA) - 2795)) ^ v14)))(a1, a2, v16, v15, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_10020E5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = (*(&off_1003E7570 + (a6 ^ 0x68)))();
  *(v8 + 8) = v6;
  return result;
}

uint64_t sub_10020E63C()
{
  v2 = v0 + 231;
  v3 = (v0 - 14) ^ *(v1 - 0x99187B47AA1D17BLL);
  v4 = ((((*(v1 - 0x99187B47AA1D206) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D206) ^ 0xD4)) & 0x1C0)) << 16) + 1121976320) ^ 0x42E00000;
  v5 = ((((*(v1 - 0x99187B47AA1D12DLL) ^ 0xD4) - 2 * ((*(v1 - 0x99187B47AA1D12DLL) ^ 0xD4) & 0x7F)) << 8) - 278233344) ^ 0xEF6A7F00;
  v6 = (v5 - ((2 * v5) & 0x135C7C00) - 911327658) ^ 0xC9AE3E56 | (v4 - ((2 * v4) & 0x74980000) - 1169403112) ^ 0xBA4C5318;
  v7 = (((((v6 - ((2 * v6) & 0x7F23B638) + 1066523420) ^ 0x3F91DB1C | (v3 - ((2 * v3) & 0x19A) - 1307601203) ^ 0xB20F96CD) - ((2 * ((v6 - ((2 * v6) & 0x7F23B638) + 1066523420) ^ 0x3F91DB1C | (v3 - ((2 * v3) & 0x19A) - 1307601203) ^ 0xB20F96CD)) & 0x22CEC8)) << 8) - 1855495168) ^ 0x91676400;
  v8 = 2 * ((v7 - ((2 * v7) & 0x46D4B400) - 1553310986) ^ 0xA36A5AF6 | ((*(v1 - 0x99187B47AA1D151) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D151) ^ 0xD4)) & 0x8C) - 1448003258) ^ 0xA9B13946);
  *(&STACK[0x8C0] + (((v2 - 394) ^ 0x8206E4FA) + 2113531879) % 0x55C) = 2035698401;
  return (*(&off_1003E7570 + v2))(v8);
}

uint64_t sub_10020EE94(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = a3 ^ 0x28;
  v11 = v6 + v5;
  v12 = v7 + a1;
  v13 = v8 + a5;
  v14 = (v10 ^ 0xF1AFFAB4 ^ ((v13 - 1839267202) * (v13 - 1839267202))) + v9 + a4 + ((2 * (v13 - 1839267202) * (v13 - 1839267202)) & 0xE35FFFFA);
  v15 = ((((v14 - 1363646028) % 0xFFFF) ^ 0x7BFFEFFE) - 2080370686 + ((2 * ((v14 - 1363646028) % 0xFFFF)) & 0x1DFFC)) % 0x190;
  v16 = (97 * (((2 * ((v9 + a4 - 1603769934) % 0x190u)) & 0x3F0) + (((v9 + a4 - 1603769934) % 0x190u) ^ 0x7FFFEFF8)) - 2147031628) % 0x55C;
  v17 = (97 * (((2 * v15) & 0x3BE) + (v15 ^ 0x6EFFB7DF)) - 249813203) % 0x55C;
  v18 = *(&STACK[0x8C0] + v16);
  *(&STACK[0x8C0] + v16) = *(&STACK[0x8C0] + v17);
  v19 = (v8 + a5 - 539495442 + (((v12 - 1655994433) * (v12 - 1655994433)) ^ 0x237ADFBC) + ((2 * (v12 - 1655994433) * (v12 - 1655994433)) & 0x46F5BF78u) - 1895026987) % 0xFFFF;
  v20 = ((v19 ^ 0xF7DFF7FD) + 136316931 + ((2 * v19) & 0x1EFFA)) % 0x190;
  v21 = (97 * ((((v13 - 1839267202) % 0x190u) ^ 0xB9BBFBFF) + 2 * ((v13 - 1839267202) % 0x190u)) - 1614391539) % 0x55C;
  *(&STACK[0x8C0] + v17) = v18;
  v22 = *(&STACK[0x8C0] + v21);
  v23 = (97 * (((2 * v20) & 0x2F6) + (v20 ^ 0x7B6BFF7B)) + 1008010513) % 0x55C;
  *(&STACK[0x8C0] + v21) = *(&STACK[0x8C0] + v23);
  v24 = (v12 - 1655994433) % 0x190u;
  v25 = (((v11 - 2104557835) * (v11 - 2104557835)) ^ 0xEEF4F9BD) + v12 + ((2 * (v11 - 2104557835) * (v11 - 2104557835)) & 0xDDE9F37A);
  *(&STACK[0x8C0] + v23) = v22;
  v26 = ((((v25 - 1370059261) % 0xFFFF) ^ 0x57F6FBFE) - 1475804158 + ((2 * ((v25 - 1370059261) % 0xFFFF)) & 0x1F7FC)) % 0x190;
  v27 = (97 * ((v24 ^ 0xFFEEFFFF) + 2 * v24) + 108122893) % 0x55C;
  v28 = (97 * (((2 * v26) & 0x2FE) + (v26 ^ 0x6DF9297F)) + 1419254157) % 0x55C;
  v29 = *(&STACK[0x8C0] + v27);
  *(&STACK[0x8C0] + v27) = *(&STACK[0x8C0] + v28);
  *(&STACK[0x8C0] + v28) = v29;
  v30 = v11 + (((v14 - 1363646028) * (v14 - 1363646028)) ^ 0x3DED5E75) + ((2 * (v14 - 1363646028) * (v14 - 1363646028)) & 0x7BDABCEA);
  v31 = (97 * ((((v11 - 2104557835) % 0x190u) ^ 0x5F7F73FF) + 2 * ((v11 - 2104557835) % 0x190u)) - 793387251) % 0x55C;
  v32 = ((((v30 + 1151443073) % 0xFFFFu) ^ 0xFF3FC3DF) + 12598014 + ((2 * ((v30 + 1151443073) % 0xFFFFu)) & 0x187BE) + 291) % 0x190;
  v33 = (97 * (((2 * v32) & 0x2FE) + (v32 ^ 0xFFBFC37F)) + 408403853) % 0x55C;
  v34 = *(&STACK[0x8C0] + v31);
  *(&STACK[0x8C0] + v31) = *(&STACK[0x8C0] + v33);
  *(&STACK[0x8C0] + v33) = v34;
  return (*(&off_1003E7570 + (v10 ^ 0x28)))();
}

uint64_t sub_10020F348@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v4 = *(&STACK[0x8C0] + (((194 * (a3 ^ 0x79564AE1)) & 0xB96BBFC2) + ((97 * (a3 ^ 0x79564AE1)) ^ 0xDCB5DFE1) + 592114379) % 0x55C) ^ 0x79564AE1;
  *(&STACK[0x8C0] + (((194 * v4) & 0x7CDF7FF6) + ((97 * v4) ^ 0xBE6FBFFB) + 1100065345) % 0x55C) = a3;
  return (*(v3 + 8 * ((35 * ((((a3 ^ 0x79564AE1) + 2035698401 - ((2 * (a3 ^ 0x79564AE1) + 2) & 0xF2AC95C2) + 1) ^ a2) < 0x190)) ^ a1)))();
}

uint64_t sub_10020F43C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (v8 * a3 + 1326415261) % (((a1 + 1878993122) & 0xFF76DB57) - 1870005239);
  v13 = *(a4 + 4 * v12) ^ (a8 + 14);
  v14 = dword_1003A8020[(((2722 * v13) & 0xAECD2FFA) + ((1361 * v13) ^ 0x576697FD) - 1465991596) % 0x12E0] ^ 0x1B9047AC;
  v15 = ((-2114329278 * v14) & 0xFD3FEABC) + ((v14 * v11) ^ 0xFE9FF55E) + 23071394;
  v16 = 8 * (v15 * v15 - ((2 * v15 * v15) & 0x137E6E50)) + 1308211520;
  v17 = ((v16 ^ 0x4DF9B940) + v9 - 2 * ((v16 ^ 0x4DF9B940) & (v9 + 26) ^ v16 & 0x20)) ^ v15;
  v18 = *(v10 + 8 * ((908 * (v8 == 739053198)) ^ a1));
  *(a4 + 4 * v12) = ((v17 ^ v9) + 189950768 - 2 * ((v17 ^ v9) & 0xB526B31 ^ v17 & 1)) ^ 0xC14CA207;
  return v18(a1, 1870006595);
}

uint64_t sub_10020F5D0@<X0>(int a1@<W1>, int a2@<W8>)
{
  v9 = (((a1 - 1870008126 + ((a2 - 1145276836) & 0xD4CD87DB)) ^ 0xE) + 296618081 - ((2 * (a1 - 1870008126 + ((a2 - 1145276836) & 0xD4CD87DB))) & 0x235C10C2)) ^ 0x11AE0861;
  v10 = ((v9 * v4) & 0xF657EFFE) + ((v9 * v3) ^ 0xFB2BF7FF) + 81354322;
  v11 = dword_1003A8020[v10 - (((v10 * v5) >> 32) >> 10) * v6] ^ 0x1B9047AC;
  v12 = ((33154370 * v11) & 0x37FF5AC6) + ((v11 * v8) ^ 0x9BFFAD63) + 1677742749;
  v13 = (8 * (v12 * v12 - ((2 * v12 * v12) & 0x17536AC2)) - 582112504) ^ 0xDD4DAB08;
  v14 = v12 ^ 0x45921E19 ^ (v13 + 1167203865 - ((2 * v13) & 0x8B243C30));
  v15 = *(v7 + 8 * ((3770 * (((a1 + 1 - a2) | (a2 - (a1 + 1))) >= 0)) ^ (v2 + 3200)));
  *(&STACK[0x8C0] + (97 * a1 - 1001881751) % 0x55Cu) = (v14 - ((2 * v14) & 0x88B516CA) - 1000699035) ^ 0xE444252;
  return v15();
}

uint64_t sub_10020F784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  v65 = ((((v63 + 1331283142) * (v63 + 1521188275)) ^ 0xFCFDEFBB) - 1765498258 + ((2 * (v63 + 1331283142) * (v63 + 1521188275)) & 0xF9FBDF76)) * (v63 + 1521188275);
  *(*a62 + 4 * (v63 + 1799841271) - 0x606985B46751526ELL) = ((2 * v65) & 0xFDDFFFFA) + (v65 ^ 0xFEEFFFFD) - ((2 * (((2 * v65) & 0xFDDFFFFA) + (v65 ^ 0xFEEFFFFD)) - 888934828) & 0xF2AC95C2) - 556252661;
  return (*(v64 + 8 * ((22 * ((v62 ^ 0x78ALL) + v63 != 2773784397)) ^ v62)))();
}

uint64_t sub_10020F878@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned int a55, uint64_t a56, uint64_t a57)
{
  v58 = a1 + 345;
  v59 = (*(v57 + 8 * (a1 ^ 0x933)))((a7 + a5 + a6 - 2 * (((a1 + 345) ^ 0x6E8F78C8) & (a7 + a5 + a6 + 1888000386) ^ (a7 + a5 + a6) & 1) - 552070164) ^ 0x6E8F7A6A, 0x100004077774924);
  v64 = (a6 - 887266100) < 0x26CA618;
  *(v59 + a55 + a5 + a57 - 1479025970) = *(a52 - 0x2344937AD629B1A1 + ((101 * (v58 ^ 0x2A6u)) ^ 0xFFFFFFFFB85F63AALL) + 1201708461);
  if ((a6 - 887266100) >= 0x26CA618)
  {
    v64 = (a6 - 887266100) > 0x26CA619;
  }

  return (*(v57 + 8 * (((32 * v64) | (v64 << 6)) ^ v58)))(v59, a5, a57, a55, v60, v61, v62, v63, a2, a3);
}

uint64_t sub_10020F9DC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = (2 * v58) ^ 0x214;
  v61 = a2 - 201306359 < (v60 ^ 0x44A23201u);
  *(a1 + (a4 + a3 - 126238804)) = *((v60 + 1562) + 1457725437 + a58 - 0x612F5EEDFD47CC22 - 1457727485);
  v62 = a2 - 201306359 < (v60 ^ 0x44A23201u);
  v63 = (a2 - 201306359) > 0x44A233E8;
  if (!v61)
  {
    v61 = v63;
  }

  v64 = *(v59 + 8 * ((31 * v61) ^ v60));
  return v64(a1, v64, v62, 1457725437, a5, a6, a7, a8, a9);
}

uint64_t sub_10020FABC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = (a13 + 1420230335) < 0x5C2D3F13;
  *a1 = *(a61 - 0x6C9CEFEC55D2C59DLL) - ((2 * *(a61 - 0x6C9CEFEC55D2C59DLL)) & 0x8F) - 57;
  v64 = (v61 ^ 0x1473E287) + 1203328141;
  v65 = v63 ^ (v64 < 0x5C2D3F13);
  v66 = v64 < a13 + 1420230335;
  if (!v65)
  {
    v63 = v66;
  }

  v67 = *(v62 + 8 * ((26 * v63) ^ (v61 - 442)));
  return v67(a1, v67, v66, 0, a5, a6, a7, a8);
}

uint64_t sub_10020FD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58, int a59, int a60, uint64_t a61, uint64_t a62, int a63)
{
  HIDWORD(v892) = v65;
  LODWORD(v893) = *(a1 + (a20 - 649662366));
  v68 = ((((v63 - 1833) ^ a20) - ((2 * a20 + 848158916) & 0x73D44E74) + 321984412) ^ 0x39EA273A) + ((2 * a20) & 2);
  v69 = (v64 & (2 * v68)) + (v68 ^ 0xFF7FF9FB);
  v901 = *(a1 + v69 + 8390150);
  v902 = *(a1 + v69 + 8390151);
  v70 = *(a1 + v69 + 8390152);
  v71 = *(a1 + v69 + 8390153);
  v899 = *(a1 + v69 + 8390154);
  v900 = *(a1 + v69 + 8390155);
  v72 = *(a1 + v69 + 8390156);
  v73 = *(a1 + v69 + 8390157);
  v74 = *(a1 + v69 + 8390158);
  LODWORD(a46) = v66 + (v67 ^ v66) - 2 * (((v67 ^ v66) + 2147483616) & (v66 + 1) ^ v67 & 1) - 32;
  HIDWORD(a49) = *(a1 + v69 + 8390159);
  v75 = *(a1 + v69 + 8390160);
  v76 = *(a1 + v69 + 8390161);
  LODWORD(a52) = *(a1 + v69 + 8390162);
  v898 = *(a1 + v69 + 8390163);
  v77 = *(a1 + v69 + 8390164);
  v78 = *(a1 + v69 + 8390165);
  v79 = *(a1 + v69 + 8390166);
  v80 = *(a1 + v69 + 8390167);
  v81 = *(a1 + v69 + 8390168);
  LODWORD(a48) = *(a1 + v69 + 8390169);
  v897 = *(a1 + v69 + 8390170);
  v903 = *(a1 + v69 + 8390171);
  v82 = *(a1 + v69 + 8390173);
  v83 = *(a1 + v69 + 8390174);
  v84 = *(a1 + v69 + 8390175);
  v85 = *(a1 + v69 + 8390177);
  v86 = *(a1 + v69 + 8390178);
  HIDWORD(a47) = *(a1 + v69 + 8390149);
  v87 = *(a1 + v69 + 8390179);
  LODWORD(v855) = v69 + 658052546;
  HIDWORD(v857) = *(a1 + v69 + 8390172);
  LODWORD(v891) = (v63 - 676) | 0x131;
  LODWORD(v862) = *(a1 + v69 + 8390176);
  v88 = (v862 ^ a6) - ((2 * (v862 ^ a6)) & 0x16E);
  HIDWORD(v859) = v82;
  v89 = (v82 ^ a6) - ((2 * (v82 ^ a6)) & 0x164);
  v90 = ((((((v63 + 92) | 0x31) ^ BYTE4(v857) ^ 0x70) - ((2 * (v891 ^ HIDWORD(v857) ^ 0x70)) & 0x30)) << 16) + 1981284352) ^ 0x76180000;
  v91 = (v90 + 1194712311 - ((2 * v90) & 0xE6A0000)) ^ 0x4735DCF7 | ((((v89 << 8) - 1751928320) ^ 0x9793B200) + 1379523798 - ((2 * (((v89 << 8) - 1751928320) ^ 0x9793B200)) & 0x2473B800)) ^ 0x5239DCD6;
  v92 = v91 - 1403811402 - ((2 * v91) & 0x58A7136C);
  v856 = __PAIR64__(v81, v83);
  v93 = v92 ^ 0xAC5389B6 | ((v83 ^ a6) + 1093208645 - ((2 * (v83 ^ a6)) & 0x8A)) ^ 0x41290A45;
  v94 = v93 - ((2 * v93) & 0x35B7FB98) + 450624972;
  HIDWORD(v863) = v85;
  v95 = (v85 ^ 0xC7) - ((2 * (v85 ^ 0xC7)) & 0x52);
  LODWORD(v857) = v84;
  v96 = (v84 ^ 0xC7) - 1517705831 - ((2 * (v84 ^ 0xC7)) & 0x132);
  v97 = (((v94 << 8) ^ 0xDBFDCC00) + 985484323 - ((2 * ((v94 << 8) ^ 0xDBFDCC00)) & 0x757A9800)) ^ 0x3ABD4C23 | v96 ^ 0xA589A599;
  v98 = v97 - 220309245 - ((2 * v97) & 0xE5BCB206);
  v858 = __PAIR64__(v75, v77);
  v99 = (v77 ^ 0xC7) - ((2 * (v77 ^ 0xC7)) & 0x1A6);
  HIDWORD(v862) = v72;
  v100 = (v72 ^ 0xC7) - ((2 * (v72 ^ 0xC7)) & 0x7A);
  v860 = __PAIR64__(v76, v70);
  v101 = (v70 ^ 0xC7) - ((2 * (v70 ^ 0xC7)) & 0x1EE);
  v102 = ((((v73 ^ 0xC7) - ((2 * (v73 ^ 0xC7)) & 0x1E2)) << 8) + 1614868736) ^ 0x6040F100;
  v103 = ((((v100 << 16) + 121438208) ^ 0x73D0000) - 183099172 - ((2 * (((v100 << 16) + 121438208) ^ 0x73D0000)) & 0x6A2C0000)) ^ 0xF51620DC | (v102 + 1813945212 - ((2 * v102) & 0x583D3600)) ^ 0x6C1E9B7C;
  v104 = v103 + 253037038 - ((2 * v103) & 0x1E2A13DC);
  v861 = __PAIR64__(v73, v78);
  v105 = (v78 ^ 0xC7) - ((2 * (v78 ^ 0xC7)) & 0xB0);
  v106 = ((((v99 << 16) - 1529675776) ^ 0xA4D30000) - 346533898 - ((2 * (((v99 << 16) - 1529675776) ^ 0xA4D30000)) & 0x56B00000)) ^ 0xEB584FF6 | ((((v105 << 8) + 873420800) ^ 0x340F5800) - 240861773 - ((2 * (((v105 << 8) + 873420800) ^ 0x340F5800)) & 0x63497A00)) ^ 0xF1A4BDB3;
  v889 = v106 - 1930324462 - ((2 * v106) & 0x19E32C24);
  LODWORD(v859) = v79;
  v107 = v889 ^ 0x8CF19612 | ((v79 ^ 0xC7) + 352022596 + (~(2 * (v79 ^ 0xC7)) | 0xFFFFFF77) + 1) ^ 0x14FB7044;
  v108 = ((((v95 << 8) - 1339610880) ^ 0xB0272900) - 1041851502 - ((2 * (((v95 << 8) - 1339610880) ^ 0xB0272900)) & 0x3CD3600)) ^ 0xC1E69B92 | ((((v88 << 16) + 1085734912) ^ 0x40B70000) - 614741213 - ((2 * (((v88 << 16) + 1085734912) ^ 0x40B70000)) & 0xB6B60000)) ^ 0xDB5BCB23;
  v884 = v108 - 2031257866 - ((2 * v108) & 0xDDAEDEC);
  LODWORD(v864) = v86;
  v109 = v884 ^ 0x86ED76F6 | ((v86 ^ 0xC7) - 1792940776 - ((2 * v86) & 0x30)) ^ 0x9521E518;
  v896 = v109 - ((2 * v109) & 0xB2AA3A28) - 648733420;
  v110 = (((v107 - ((2 * v107) & 0xDE78D0)) << 8) - 281253888) ^ 0xEF3C6800;
  v111 = (v76 ^ 0xC7) - ((2 * (v76 ^ 0xC7)) & 0x1AA);
  HIDWORD(v855) = v80;
  v112 = (v110 + 1236498165 - ((2 * v110) & 0x9366EC00)) ^ 0x49B376F5 | ((v80 ^ 0xC7) + 401648178 - ((2 * (v80 ^ 0xC7)) & 0x64)) ^ 0x17F0AA32;
  HIDWORD(v891) = v71;
  v886 = (v81 ^ 0xC7) - ((2 * (v81 ^ 0xC7)) & 0xA8);
  v113 = (((v98 << 15) ^ 0x2C818000) + 1997998662 - ((2 * ((v98 << 15) ^ 0x2C818000)) & 0xEE2E0000)) ^ 0x77170A46 | (v92 >> 9) ^ 0x5629C4;
  v114 = v113 - 1363581795 - ((2 * v113) & 0x5D72C93A);
  LODWORD(v892) = v74;
  v115 = v104 ^ 0xF1509EE | ((v74 ^ 0xC7) - 17544094 - ((2 * (v74 ^ 0xC7)) & 0xC4)) ^ 0xFEF44C62;
  v116 = (((v115 - ((2 * v115) & 0xDDB98A)) << 8) + 1859962112) ^ 0x6EDCC500;
  v117 = (BYTE4(a49) ^ 0xC7) + 1999212831 - 2 * ((BYTE4(a49) ^ 0xC7) & 0x1F);
  v118 = (v116 + 607844932 + (~(2 * v116) | 0xB78A0BFF) + 1) ^ 0x243AFA44 | v117 ^ 0x7729911F;
  v119 = v118 + 908332416 - ((2 * v118) & 0x6C481BEA) + 117;
  LODWORD(v863) = v87;
  v894 = (v87 ^ 0xC7) + 1119063076 - ((2 * (v87 ^ 0xC7)) & 0x48);
  v120 = (((v896 << 8) ^ 0x551D1400) + 312824904 - ((2 * ((v896 << 8) ^ 0x551D1400)) & 0x254AA800)) ^ 0x12A55448 | v894 ^ 0x42B38C24;
  v121 = v120 - 329327108 - ((2 * v120) & 0xD8BDBBF8);
  v122 = ((((v75 ^ 0xC7) - ((2 * (v75 ^ 0xC7)) & 0x1D4)) << 16) - 840302592) ^ 0xCDEA0000;
  v123 = (v122 + 860049435 - ((2 * v122) & 0x66860000)) ^ 0x3343501B | ((((v111 << 8) - 1559571200) ^ 0xA30AD500) + 1286214894 - ((2 * (((v111 << 8) - 1559571200) ^ 0xA30AD500)) & 0x19542800)) ^ 0x4CAA14EE;
  v124 = v123 + 533290914 - ((2 * v123) & 0x3F92BF44);
  v125 = ((v98 << 14) ^ 0x9640C000) - 371044278 - ((2 * ((v98 << 14) ^ 0x9640C000)) & 0xD3C48000);
  LODWORD(v895) = v98;
  HIDWORD(v126) = v96 ^ 0x99999999;
  LODWORD(v126) = v98 ^ 0xF2DE5900;
  v904 = v126 >> 7;
  v127 = v124 ^ 0x1FC95FA2 | ((a52 ^ 0xC7) + 1502722617 - ((2 * (a52 ^ 0xC7)) & 0x72)) ^ 0x5991BA39;
  v128 = (((v127 - ((2 * v127) & 0x3394FA)) << 8) - 1714782976) ^ 0x99CA7D00;
  v129 = ((v98 << 13) ^ 0xCB206000) + 1943950988 - ((2 * ((v98 << 13) ^ 0xCB206000)) & 0xE7BC8000);
  v130 = ((((v71 ^ 0xC7) - ((2 * (v71 ^ 0xC7)) & 0x144)) << 8) + 1754178048) ^ 0x688EA200;
  v131 = (v130 - 567349866 - ((2 * v130) & 0x3C5DDA00)) ^ 0xDE2EED96 | ((((v101 << 16) - 571015168) ^ 0xDDF70000) - 275692371 - ((2 * (((v101 << 16) - 571015168) ^ 0xDDF70000)) & 0x5F220000)) ^ 0xEF9144AD;
  v132 = v131 - 67712012 - ((2 * v131) & 0x77ED97E8);
  v133 = (v898 ^ 0xC7) + 601830922 - ((2 * (v898 ^ 0xC7)) & 0x14);
  v134 = ((v128 - 2118784124 - ((2 * v128) & 0x36BD600)) ^ 0x81B5EB84 | v133 ^ 0x23DF360A) - 2027304448 - ((2 * ((v128 - 2118784124 - ((2 * v128) & 0x36BD600)) ^ 0x81B5EB84 | v133 ^ 0x23DF360A)) & 0xE539482);
  v883 = (v125 ^ 0xE9E2504A | (v92 >> 10) ^ 0x2B14E2) - 1914627725 - ((2 * (v125 ^ 0xE9E2504A | (v92 >> 10) ^ 0x2B14E2)) & 0x1BC232E6);
  v870 = v119;
  HIDWORD(v126) = v117 ^ 0x1F;
  LODWORD(v126) = v119 ^ 0x36240D80;
  v135 = ((((v893 ^ 0xC7) - ((2 * (v893 ^ 0xC7)) & 0x1BC)) << 16) + 1977483264) ^ 0x75DE0000;
  v136 = ((((BYTE4(a47) ^ 0xC7) - ((2 * (HIDWORD(a47) ^ 0xC7)) & 0xAC)) << 8) + 1319261696) ^ 0x4EA25600;
  v137 = (v136 - 1176000122 - ((2 * v136) & 0x73CF5200)) ^ 0xB9E7A986 | (v135 - 737235677 - ((2 * v135) & 0x281C0000)) ^ 0xD40EAD23;
  v138 = v137 + 1082390663 - ((2 * v137) & 0x107F10E);
  v139 = (v114 ^ 0xAEB9649D) + (((v129 ^ 0x73DE568C | (v92 >> 11) ^ 0x158A71) - 1727633632 - ((2 * (v129 ^ 0x73DE568C | (v92 >> 11) ^ 0x158A71)) & 0x320CCE40)) ^ 0x99066720);
  v140 = (((v134 + 65) << 14) ^ 0x72904000) + 59172306 - ((2 * (((v134 + 65) << 14) ^ 0x72904000)) & 0x70D8000);
  v141 = ((v94 >> 2) ^ 0x6B6FF73) + (v139 ^ 0x80D1B225) - ((2 * v139) & 0xFE5C9BB4);
  v142 = v132 ^ 0xFBF6CBF4 | ((v899 ^ 0xC7) - 874904272 - ((2 * v899) & 0x60)) ^ 0xCBDA0530;
  v143 = (((v142 - ((2 * v142) & 0x775342)) << 8) - 1146511104) ^ 0xBBA9A100;
  v144 = ((((v897 ^ 0xC7) - ((2 * (v897 ^ 0xC7)) & 0xA6)) << 8) + 225596160) ^ 0xD725300;
  v145 = ((v903 ^ 0xC7) + 985265922 - ((2 * (v903 ^ 0xC7)) & 4)) ^ 0x3AB9F702 | (v144 - 266614879 - ((2 * v144) & 0x60378E00)) ^ 0xF01BC7A1;
  v146 = v112 + 1632512228 - ((2 * v112) & 0xC29C51C8);
  v147 = ((((a48 ^ 0xC7) - ((2 * (a48 ^ 0xC7)) & 0x32)) << 16) - 1457979392) ^ 0xA9190000;
  v148 = (v147 + 1621772239 - ((2 * v147) & 0x41540000)) ^ 0x60AA47CF | ((((v886 << 24) - 738197504) ^ 0xD4000000) + 693356228 - ((2 * ((v886 << 24) - 738197504)) & 0x52000000)) ^ 0x2953C6C4;
  v149 = v148 - 1818784295 - ((2 * v148) & 0x272F1BB2);
  v150 = (((v119 << 14) ^ 0x37D4000) - 1308718791 - ((2 * ((v119 << 14) ^ 0x37D4000)) & 0x63FD0000)) ^ 0xB1FE8939 | (v104 >> 10) ^ 0x3C542;
  v151 = ((v119 >> 3) ^ 0xF93B7E41) + ((v126 >> 7) ^ 0x9FAFDFF7) + ((2 * (v126 >> 7)) & 0x3F5FBFEE) + 1615863818;
  v152 = (v151 ^ 0xBB67DAFE) + ((2 * v151) & 0x76CFB5FC) + 1150821634 + ((v150 + 1095164140 - ((2 * v150) & 0x828DC1D8)) ^ 0x4146E0EC);
  v153 = (v149 ^ 0x93978DD9 | (v145 - 269874028 - ((2 * v145) & 0x5FD41928)) ^ 0xEFEA0C94) + 35304958 - ((2 * (v149 ^ 0x93978DD9 | (v145 - 269874028 - ((2 * v145) & 0x5FD41928)) ^ 0xEFEA0C94)) & 0x4356BFC);
  v154 = (((v121 << 13) ^ 0xDBBF8000) - 1807598785 - ((2 * ((v121 << 13) ^ 0xDBBF8000)) & 0x28844000)) ^ 0x94423B3F | (v884 >> 11) ^ 0x10DDAE;
  v155 = ((2 * v152) & 0xDF6FF5EC) + (v152 ^ 0xEFB7FAF6) + ((v141 + 2133741019) ^ 0xE7EDCFDE) + ((2 * (v141 + 2133741019)) & 0xCFDB9FBC);
  v156 = v155 - ((2 * v155 + 1354000984) & 0xB80562E2) - 2074286435;
  v157 = (((v121 << 15) ^ 0x6EFE0000) - 1873732583 - ((2 * ((v121 << 15) ^ 0x6EFE0000)) & 0x20A20000)) ^ 0x90511C19 | (v884 >> 9) ^ 0x4376BB;
  v134 += 65;
  HIDWORD(v126) = v133 ^ 0xA;
  LODWORD(v126) = v134 ^ 0x8729CA00;
  v158 = v126 >> 7;
  v159 = (v143 - 198256261 - ((2 * v143) & 0xE85DB200)) ^ 0xF42ED97B | ((v900 ^ 0xC7) + 729141732 - ((2 * (v900 ^ 0xC7)) & 0x1C8)) ^ 0x2B75D1E4;
  v160 = v159 - 1477738761 - ((2 * v159) & 0x4FD6FDEE);
  v161 = (((v146 << 14) ^ 0x8A390000) - 1446963194 - ((2 * ((v146 << 14) ^ 0x8A390000)) & 0x53820000)) ^ 0xA9C11806 | (v889 >> 10) ^ 0x233C65;
  v162 = v161 - ((2 * v161) & 0xC9038230) - 461258472;
  v163 = v121;
  v164 = ((v121 << 14) ^ 0xB77F0000) + 955549205 - ((2 * ((v121 << 14) ^ 0xB77F0000)) & 0x71E90000);
  v165 = v146;
  HIDWORD(v126) = ((v80 ^ 0xC7) + 401648178 - ((2 * (v80 ^ 0xC7)) & 0x64)) ^ 0x32;
  LODWORD(v126) = v146 ^ 0x614E2880;
  v887 = v160;
  v166 = (v160 ^ 0xFBE9CF86 ^ v156) + (v160 ^ 0xA7EB7EF7) - 2067399168 - ((2 * ((v160 ^ 0xFBE9CF86 ^ v156) + (v160 ^ 0xA7EB7EF7))) & 0x98BFC9E) + 79;
  v167 = (v158 ^ 0xBDA87BDB) + ((2 * v158) & 0x7B50F7B6) + 1113031717 + (((v140 ^ 0x386E5D2 | (v124 >> 10) ^ 0x7F257) - 1979339838 - ((2 * (v140 ^ 0x386E5D2 | (v124 >> 10) ^ 0x7F257)) & 0x140B5784)) ^ 0x8A05ABC2);
  v168 = ((v126 >> 7) ^ 0x5D8DFCF7) + ((2 * (v126 >> 7)) & 0xBB1BF9EE) - 1569586422 + (v162 ^ 0x1B7E3EE7);
  v169 = v168 - ((2 * v168) & 0x26A5B3E0) + 324196848;
  HIDWORD(v126) = v166 ^ 0x5FE4F;
  LODWORD(v126) = v166 ^ 0x84C00000;
  v170 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x70B90BE0) - 1201895952;
  v868 = v134;
  v171 = ((v134 >> 3) ^ 0x10E53948) + (v167 ^ 0xEDDB67FE) + ((2 * v167) & 0xDBB6CFFC) + 304388098;
  v172 = ((v157 - 918245737 - ((2 * v157) & 0x92895D2E)) ^ 0xC944AE97) + ((v154 + 611180885 - ((2 * v154) & 0x48DBC2AA)) ^ 0x246DE155);
  HIDWORD(v126) = v166 ^ 0x1FE4F;
  LODWORD(v126) = v166 ^ 0x84C40000;
  v173 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x5616715A) - 1425327955;
  v174 = ((v172 - ((2 * v172) & 0x99F53CD6) + 1291492971) ^ (v896 >> 2) ^ 0x7AAFD92E) + (v171 ^ 0xFFF7FA3F) + ((2 * v171) & 0xFFEFF47E) + 525761;
  v175 = v174 - 1323479969 - ((2 * v174) & 0x623A98BE);
  HIDWORD(v126) = v166 ^ 0x1FE4F;
  LODWORD(v126) = v166 ^ 0x84C40000;
  v176 = v126 >> 18;
  v177 = (v883 ^ 0x8DE11973) + ((v98 >> 3) ^ 0x1E5BCB20);
  HIDWORD(v126) = v153 ^ 0x2B5FE;
  LODWORD(v126) = v149 ^ 0x93940000;
  v178 = v126 >> 18;
  v179 = v178 ^ 0xD5635FFF;
  v180 = (2 * v178) & 0xAAC6BFFE;
  v181 = (v170 ^ (v166 >> 10) ^ v173 ^ 0x13768C22) + (v169 ^ (v165 >> 3) ^ 0x1F7B1CEC);
  v182 = v138 ^ 0x4083F887 | ((v901 ^ 0xC7) + 1315182411 - ((2 * (v901 ^ 0xC7)) & 0x96)) ^ 0x4E64174B;
  v183 = ((((2 * v134) ^ 0xE539482) - 1997209368 - ((2 * ((2 * v134) ^ 0xE539482)) & 0x11EA01D0)) ^ 0x88F500E8) + (v181 ^ 0xDDDF7BF7) + ((2 * v181) & 0xBBBEF7EE) + 572556297;
  v184 = v183 + 132088448 - ((2 * v183) & 0xFBF055C) + 46;
  v185 = (((v182 - ((2 * v182) & 0xD224DC)) << 8) - 384668160) ^ 0xE9126E00;
  v186 = v153;
  HIDWORD(v126) = ((v903 ^ 0xC7) + 985265922 - ((2 * (v903 ^ 0xC7)) & 4)) ^ 2;
  LODWORD(v126) = v153 ^ 0x21AB580;
  v187 = v126 >> 7;
  HIDWORD(v126) = v166 ^ 0xFFFFFFCF;
  LODWORD(v126) = v166 ^ 0x84C5FE00;
  v188 = v126 >> 7;
  v189 = v185 + 265142006 - ((2 * v185) & 0x1F9B7C00);
  HIDWORD(v126) = v894 ^ 0x24;
  LODWORD(v126) = v163 ^ 0xEC5EDD80;
  v190 = v126 >> 7;
  HIDWORD(v126) = v175 ^ 0x54C5F;
  LODWORD(v126) = v175 ^ 0xB1180000;
  v191 = v126 >> 19;
  HIDWORD(v871) = v186;
  v192 = ((v186 >> 3) ^ 0x4356BF) + v179 + v180;
  HIDWORD(v126) = v184 ^ 0x182AE;
  LODWORD(v126) = v184 ^ 0x7DE0000;
  v193 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x264A0D6);
  HIDWORD(v126) = v175 ^ 0x14C5F;
  LODWORD(v126) = v175 ^ 0xB11C0000;
  v194 = ((v126 >> 17) ^ 0xE5EDAFF7) + (v191 ^ 0x7FAFB5FF) + ((2 * v191) & 0xFF5F6BFE) + ((2 * (v126 >> 17)) & 0xCBDB5FEE);
  v195 = ((v192 + 714907649) ^ 0xF76F5E7F) + ((2 * (v192 + 714907649)) & 0xEEDEBCFE) + 143696257 + ((v194 - ((2 * v194 + 885339156) & 0x3A17BA00) + 929986314) ^ (v175 >> 10) ^ 0x9D279A53);
  v196 = (v187 ^ 0x6EF99E7A) + ((2 * v187) & 0xDDF33CF4) + (v195 ^ 0xA8400017) - ((2 * v195) & 0xAF7FFFD0) + 1;
  LODWORD(v871) = v165 ^ 0x614E28E4;
  v197 = (v165 ^ 0xEBD2A18D ^ (v196 - ((2 * v196 + 294437596) & 0x153912D2) + 1935862487)) + (v165 ^ 0x614E28E4);
  v198 = v197 + 1541268819 - ((2 * v197) & 0xB7BBCAA6);
  v199 = ((v193 - 2127409045) ^ (v184 >> 19) ^ (((v184 << 13) ^ 0xF055C000) - ((2 * ((v184 << 13) ^ 0xF055C000)) & 0x96F3C000) + 1266286252) ^ 0xCA4BAE3C) + ((v184 >> 10) ^ 0x1F7E0);
  v200 = (v904 ^ 0xDD6FFCE7) + ((((2 * v186) ^ 0x4356BFC) + 371142053 - ((2 * ((2 * v186) ^ 0x4356BFC)) & 0x2C3E5B48)) ^ 0x161F2DA5) + ((2 * v904) & 0xBADFF9CE) + (v177 ^ 0x80200268) - ((2 * v177) & 0xFFBFFB2E) + (v199 ^ 0xAA0C2C0C) - ((2 * v199) & 0xABE7A7E6) - 127675227;
  v201 = v200 + 512501504 - ((2 * v200) & 0x3D184E4A) + 37;
  v872 = __PAIR64__(v166, v163);
  v202 = (((v164 ^ 0x38F48615 | (v884 >> 10) ^ 0x21BB5D) - 1263382799 - ((2 * (v164 ^ 0x38F48615 | (v884 >> 10) ^ 0x21BB5D)) & 0x69649DE2)) ^ 0xB4B24EF1) + ((v163 >> 3) ^ 0x1D8BDBBF);
  v203 = (v190 ^ 0xF1B7BCBA) + ((2 * v190) & 0xE36F7974) + (v202 ^ 0xC2008146) - ((2 * v202) & 0x7BFEFD72) + 1;
  HIDWORD(v126) = v198 ^ 0x5E553;
  LODWORD(v126) = v198 ^ 0x5BD80000;
  v204 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x9924134A) - 862844507;
  HIDWORD(v126) = v198 ^ 0x1E553;
  LODWORD(v126) = v198 ^ 0x5BDC0000;
  v205 = (v204 ^ ((v126 >> 17) - ((2 * (v126 >> 17)) & 0x9D8B9E70) - 825897160) ^ 0x257C69D) - ((v198 >> 10) ^ 0x16F779);
  HIDWORD(v126) = v201 ^ 0x42725;
  LODWORD(v126) = v201 ^ 0x1E880000;
  v206 = (v205 - ((2 * v205) & 0x11336434) + 144290330) ^ (v203 - ((2 * v203 + 412058622) & 0x62FC26D6) + 2110117226);
  v207 = (v126 >> 19) + 591835939 + (~(2 * (v126 >> 19)) | 0xB97299BB);
  v208 = ((v166 >> 3) ^ 0x1098BFC9) + (v188 ^ 0x3BDFF89F) + (v176 ^ 0x69FDDA6F) + ((2 * v188) & 0x77BFF13E) + ((2 * v176) & 0xD3FBB4DE) + 1512189170;
  v209 = v201 ^ 0x2725;
  v210 = v201 ^ 0x1E8C0000;
  HIDWORD(v126) = v201 ^ 0x2725;
  LODWORD(v126) = v201 ^ 0x1E8C0000;
  v211 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x1D38520);
  HIDWORD(v126) = v175 ^ 0xFFFFFFDF;
  LODWORD(v126) = v175 ^ 0xB11D4C00;
  v212 = v126 >> 7;
  v213 = v212 ^ 0xFEFB75DD;
  v214 = (2 * v212) & 0xFDF6EBBA;
  HIDWORD(v126) = v184 ^ 0x382AE;
  LODWORD(v126) = v184 ^ 0x7DC0000;
  v215 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0xB699C26A);
  HIDWORD(v126) = v175 ^ 0x14C5F;
  LODWORD(v126) = v175 ^ 0xB11C0000;
  v216 = v126 >> 18;
  v217 = ((v208 - ((2 * v208) & 0x6FDF4050) + 938450984) ^ (v201 >> 10) ^ v207 ^ (v211 - 2132163952) ^ 0x94477293) + ((((2 * v163) ^ 0xD8BDBBF8) - 1745842778 - ((2 * ((2 * v163) ^ 0xD8BDBBF8)) & 0x2FE11B4C)) ^ 0x97F08DA6);
  LODWORD(v875) = v201;
  HIDWORD(v126) = v201 ^ 0x25;
  LODWORD(v126) = v201 ^ 0x1E8C2700;
  v218 = v217 + 988087652 - ((2 * v217) & 0x75CA0AC8);
  v219 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x3B1FC06C);
  v220 = v189 ^ 0xFCDBEF6 | ((v902 ^ 0xC7) - 964561110 - ((2 * (v902 ^ 0xC7)) & 0x54)) ^ 0xC681F72A;
  v890 = v220 + 1275338959 - ((2 * v220) & 0x9808419E);
  HIDWORD(v126) = v206 ^ 0x7A171;
  LODWORD(v126) = v206 ^ 0x39E00000;
  v221 = v126 >> 19;
  LODWORD(v874) = v184;
  HIDWORD(v126) = v184 ^ 0x2E;
  LODWORD(v126) = v184 ^ 0x7DF8280;
  v222 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0xAD65AD9C);
  HIDWORD(v126) = v218 ^ 0x50564;
  LODWORD(v126) = v218 ^ 0x3AE00000;
  v223 = v126 >> 19;
  HIDWORD(v126) = v206 ^ 0x1A171;
  LODWORD(v126) = v206 ^ 0x39E60000;
  v224 = ((v175 >> 3) ^ 0x1623A98B) + (v216 ^ 0x3F3FFBFC) + v213 + ((2 * v216) & 0x7E7FF7F8) + v214 - 1044083161;
  v225 = ((v206 >> 10) ^ 0xFFF18617) + ((v126 >> 17) ^ 0x65D7DF77) + (v221 ^ 0xFFED3E9B) + ((2 * (v126 >> 17)) & 0xCBAFBEEE) + ((2 * v221) & 0xFFDA7D36) - 1707417105;
  v226 = v215 - 615718603;
  v227 = ((v224 - ((2 * v224) & 0xD0631966) + 1748077747) ^ 0x78A3CA2F ^ (v225 - ((2 * v225) & 0x21248D38) + 278021788)) - ((((2 * HIDWORD(v872)) ^ 0x98BFC9E) - 501352827 - ((2 * ((2 * HIDWORD(v872)) ^ 0x98BFC9E)) & 0xC43BED08)) ^ 0xE21DF685);
  v228 = v227 - 1985430077 - ((2 * v227) & 0x13517B86);
  HIDWORD(v126) = v198 ^ 0x53;
  LODWORD(v126) = v198 ^ 0x5BDDE500;
  v229 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0xE824C26E);
  HIDWORD(v126) = v198 ^ 0x1E553;
  LODWORD(v126) = v198 ^ 0x5BDC0000;
  v230 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0x9380842);
  HIDWORD(v126) = v206 ^ 0x3A171;
  LODWORD(v126) = v206 ^ 0x39E40000;
  v231 = v126 >> 18;
  v232 = (v226 ^ (v222 - 692922674) ^ 0xDFE37FB) + ((v184 >> 3) ^ 0xFBF055);
  v233 = (v232 ^ 0x7F7DFF3E) + ((2 * v232) & 0xFEFBFE7C) - 2138963774 + ((v218 >> 10) ^ 0xEB941);
  v873 = __PAIR64__(v198, v175);
  HIDWORD(v126) = v218 ^ 0x10564;
  LODWORD(v126) = v218 ^ 0x3AE40000;
  v234 = (v175 ^ 0xB11D4C5F) + (v223 ^ 0x57F5FDEA) + ((v126 >> 17) ^ 0x33E5FFEB) + ((2 * v223) & 0xAFEBFBD4) + ((2 * (v126 >> 17)) & 0x67CBFFD6) + 1948516907;
  v235 = (v233 ^ 0x7FEBA5FB) + ((2 * v233) & 0xFFD74BF6) + (v234 ^ 0x9E202C28) - ((2 * v234) & 0xC3BFA7AE) + 1;
  HIDWORD(v126) = v228 ^ 0xBDC3;
  LODWORD(v126) = v228 ^ 0x89A80000;
  v236 = v126 >> 17;
  HIDWORD(v126) = v228 ^ 0xBDC3;
  LODWORD(v126) = v228 ^ 0x89A80000;
  v237 = ((v126 >> 19) ^ 0xFFCFD9FF) + (v236 ^ 0xEF2F5FB3) + ((2 * v236) & 0xDE5EBF66) + ((2 * (v126 >> 19)) & 0xFF9FB3FE);
  v238 = (v235 - ((2 * v235 - 1008182344) & 0x9053F534) + 706619510) ^ v175;
  v239 = (v229 + 1947361591) ^ (v198 >> 3) ^ (v230 + 77333537) ^ (v228 >> 10) ^ (v237 - ((2 * v237 + 570526876) & 0x2EE9B2CE) - 1468686411);
  HIDWORD(v126) = v238 ^ 0x4B6C5;
  LODWORD(v126) = v238 ^ 0xF9300000;
  v240 = v126 >> 19;
  HIDWORD(v126) = v206 ^ 0xFFFFFFF1;
  LODWORD(v126) = v206 ^ 0x39E7A100;
  v241 = v126 >> 7;
  HIDWORD(v126) = v228 ^ 0xFFFFFFC3;
  LODWORD(v126) = v228 ^ 0x89A8BD80;
  v242 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x3A477C8E);
  v243 = ((v206 >> 3) ^ 0x73CF42E) + (v231 ^ 0x737F4EFC) + (v241 ^ 0xAF7A7FFE) + ((2 * v231) & 0xE6FE9DF8) + ((2 * v241) & 0x5EF4FFFC);
  LODWORD(v877) = v218;
  HIDWORD(v126) = v218 ^ 0x64;
  LODWORD(v126) = v218 ^ 0x3AE50500;
  v244 = v126 >> 7;
  HIDWORD(v126) = v238 ^ 0xB6C5;
  LODWORD(v126) = v238 ^ 0xF9340000;
  v245 = ((v238 >> 10) ^ 0x3E4D2D) + ((v126 >> 17) ^ 0xBF9FFFD3) + (v240 ^ 0x80108030) + ((2 * (v126 >> 17)) & 0x7F3FFFA6) - ((2 * v240) & 0xFFDEFF9E) - 1068531715;
  v246 = ((v875 >> 3) ^ 0x3D184E4) + (v245 ^ 0x7F5DB3F7) + ((2 * v245) & 0xFEBB67EE) - 2136847351;
  v247 = ((v219 - 1651515338) ^ ((__PAIR64__(v209, v210) >> 18) - ((2 * (__PAIR64__(v209, v210) >> 18)) & 0xE661DD62) - 214896975) ^ 0x6EBF0E87) - 539495442 + (v246 ^ 0x20280AF5) - ((2 * v246) & 0xBFAFEA14) + 285;
  v248 = (v198 ^ 0x5BDDE553) + (v247 ^ 0x9BE69996) + ((2 * v247) & 0x37CD332C) + 1679386218;
  HIDWORD(v126) = v228 ^ 0xBDC3;
  LODWORD(v126) = v228 ^ 0x89A80000;
  v249 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0xEEE4646C);
  HIDWORD(v126) = v238 ^ 0xB6C5;
  LODWORD(v126) = v238 ^ 0xF9340000;
  v250 = v126 >> 18;
  v251 = v238;
  HIDWORD(v126) = v238 ^ 0x45;
  LODWORD(v126) = v238 ^ 0xF934B680;
  v252 = v126 >> 7;
  HIDWORD(v126) = v218 ^ 0x10564;
  LODWORD(v126) = v218 ^ 0x3AE40000;
  v253 = v126 >> 18;
  v254 = (v248 - ((2 * v248) & 0x6DEAFC36) - 1225425381) ^ v198;
  HIDWORD(v126) = v254 ^ 0x9B48;
  LODWORD(v126) = v254 ^ 0xED280000;
  v255 = v126 >> 17;
  HIDWORD(v126) = v239 ^ 0x16AF4;
  LODWORD(v126) = v239 ^ 0xECA20000;
  v256 = v126 >> 17;
  v257 = ((v218 >> 3) ^ 0x75CA0AC) + (v244 ^ 0x6EEEBFBD) + (v253 ^ 0xE85000C7) + ((2 * v244) & 0xDDDD7F7A) - ((2 * v253) & 0x2F5FFE70);
  HIDWORD(v126) = v254 ^ 0x9B48;
  LODWORD(v126) = v254 ^ 0xED280000;
  v258 = ((v254 >> 10) ^ 0x3B4A26) + (v255 ^ 0xDFFFFCDF) + ((v126 >> 19) ^ 0xFEFD37CC) + ((2 * v255) & 0xBFFFF9BE) + ((2 * (v126 >> 19)) & 0xFDFA6F98);
  HIDWORD(v126) = v239 ^ 0x36AF4;
  LODWORD(v126) = v239 ^ 0xECA00000;
  v259 = ((v126 >> 19) ^ 0xF7EFFA5E) + (v256 ^ 0xEFFDAEBE) + ((2 * v256) & 0xDFFB5D7C) + ((2 * (v126 >> 19)) & 0xEFDFF4BC);
  v260 = ((v243 - 586796794) ^ 0x7BD887EF) + ((2 * (v243 - 586796794)) & 0xF7B10FDE) - 2077788142 + ((v259 - ((2 * v259 + 807710152) & 0x8F48EF3A) - 541667711) ^ (v239 >> 10) ^ 0x3860A0B8);
  v261 = v260 - 1166920447 - ((2 * v260) & 0x74E46A02);
  v262 = ((2 * (v257 - 1463730308)) & 0x3B9AFFBE) + ((v257 - 1463730308) ^ 0x9DCD7FDF) + ((v258 + 553831253) ^ 0xA9DFDFEF) + ((2 * (v258 + 553831253)) & 0x53BFBFDE);
  HIDWORD(v874) = v206 ^ 0x39E7A171;
  v263 = (v206 ^ 0xF1D30DEC ^ (v262 - ((2 * v262 + 1889878116) & 0x9069593A) - 2138616625)) + (v206 ^ 0x39E7A171);
  HIDWORD(v878) = v239;
  HIDWORD(v126) = v239 ^ 0x74;
  LODWORD(v126) = v239 ^ 0xECA36A80;
  v264 = v126 >> 7;
  HIDWORD(v126) = v254 ^ 0x9B48;
  LODWORD(v126) = v254 ^ 0xED280000;
  v265 = v126 >> 18;
  HIDWORD(v126) = v261 ^ 0x3501;
  LODWORD(v126) = v261 ^ 0xBA720000;
  v266 = v126 >> 17;
  HIDWORD(v126) = v261 ^ 0x23501;
  LODWORD(v126) = v261 ^ 0xBA700000;
  v267 = (v266 ^ 0xCFFF7E7F) + ((v126 >> 19) ^ 0xE7EFFF97) + ((2 * (v126 >> 19)) & 0xCFDFFF2E) + ((2 * v266) & 0x9FFEFCFE);
  v268 = v267 - ((2 * v267 - 1876884524) & 0xFFCCB03A);
  v269 = v263 + 1924419200 - ((2 * v263) & 0xE5689DA8) + 84;
  HIDWORD(v126) = v269 ^ 0x44ED4;
  LODWORD(v126) = v269 ^ 0x72B00000;
  v270 = v126 >> 19;
  v271 = v269 ^ 0x4ED4;
  v272 = v269 ^ 0x72B40000;
  v273 = v269;
  HIDWORD(v126) = v269 ^ 0x4ED4;
  LODWORD(v126) = v269 ^ 0x72B40000;
  v274 = v126 >> 17;
  v275 = (v250 ^ 0x29924684) + (v252 ^ 0xCFB7A9FD) + ((2 * v252) & 0x9F6F53FA) - ((2 * v250) & 0xACDB72F6);
  HIDWORD(v126) = v239 ^ 0x36AF4;
  LODWORD(v126) = v239 ^ 0xECA00000;
  v276 = v126 >> 18;
  v277 = v275 + 1 - ((2 * (v275 + 1) + 225189628) & 0x9676539E);
  HIDWORD(v875) = v228;
  v278 = ((v268 - 940123641) ^ (v261 >> 10) ^ 0x7FC8C490) + ((v228 >> 3) ^ 0x113517B8);
  v279 = ((v249 - 143510986) ^ (v242 + 488881735) ^ 0xEA518C71) + (v278 ^ 0x140E0) - ((2 * v278) & 0xFFFD7E3E) - 82144;
  v280 = v279 + 1527748608 - ((2 * v279) & 0xB61F3072);
  v281 = v254;
  HIDWORD(v126) = v254 ^ 0x48;
  LODWORD(v126) = v254 ^ 0xED289B00;
  v282 = v126 >> 7;
  HIDWORD(v126) = v261 ^ 0x23501;
  LODWORD(v126) = v261 ^ 0xBA700000;
  v283 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0xC96ACB30);
  v284 = (v276 ^ 0xA300302) + (v264 ^ 0x77FA77FB) + ((2 * v264) & 0xEFF4EFF6) - ((2 * v276) & 0xEB9FF9FA) + 1;
  v285 = ((2 * v274) & 0x77ABDEEE) - ((2 * v270) & 0x175FF5FE) + (v270 ^ 0x74500500) + (v274 ^ 0x3BD5EF77) + 1;
  HIDWORD(v126) = a57 ^ 0x24;
  LODWORD(v126) = a57 ^ 0x7846E5C0;
  v286 = v126 >> 6;
  v287 = v280 + 57;
  HIDWORD(v126) = (v280 + 57) ^ 0x79839;
  LODWORD(v126) = (v280 + 57) ^ 0x5B080000;
  v288 = v126 >> 19;
  HIDWORD(v126) = v261 ^ 1;
  LODWORD(v126) = v261 ^ 0xBA723500;
  v289 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x23CAD5B6);
  v290 = ((v277 + 1374763341) ^ (v251 >> 3) ^ 0x541DBF17) + (HIDWORD(v875) ^ 0x89A8BDC3);
  v291 = (v290 ^ 0xEFFBEFF9) + ((2 * v290) & 0xDFF7DFF2) + 268701703 + ((v285 - 2 * ((v285 + 1339689864) & 0x7339DB1B ^ (v270 + (v274 ^ 0x77) + 1) & 1) - 1022105950) ^ (v273 >> 10) ^ 0x73257609);
  HIDWORD(v126) = v287 ^ 0x19839;
  LODWORD(v126) = v287 ^ 0x5B0E0000;
  v292 = ((v287 >> 10) ^ 0x16C3E6) + (v288 ^ 0x6F8CD3DD) + ((v126 >> 17) ^ 0xFD7FFBB2) + ((2 * v288) & 0xDF19A7BA) + ((2 * (v126 >> 17)) & 0xFAFFF764) - 1829556111;
  v293 = ((v284 - ((2 * v284 - 72676860) & 0xE72C230E) - 244607351) ^ (v239 >> 3) ^ 0x6E027CD9) + (v292 ^ 0x4000002) - ((2 * v292) & 0xF7FFFFFA) - 67108866;
  HIDWORD(v876) = v251;
  v294 = (v251 ^ 0x993E23A7 ^ (v293 - ((2 * v293) & 0xC0152AC4) + 1611306338)) + (v251 ^ 0xF934B6C5);
  v295 = v294 + 2018656896 - ((2 * v294) & 0xF0A48530);
  v296 = (HIDWORD(v875) ^ 0x89A8BDC3) + (v291 ^ 0x7FCFFC7D) + ((2 * v291) & 0xFF9FF8FA) - 2144337021;
  v297 = v296 + 1980660056 - ((2 * v296) & 0xEC1CF2B0);
  v298 = v273;
  LODWORD(v880) = v273;
  HIDWORD(v126) = v273 ^ 0x54;
  LODWORD(v126) = v273 ^ 0x72B44E80;
  v299 = v126 >> 7;
  HIDWORD(v126) = v297 ^ 0x7958;
  LODWORD(v126) = v297 ^ 0x760E0000;
  v300 = __PAIR64__(v271, v272) >> 18;
  v301 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x6E0F1A9C);
  HIDWORD(v126) = v297 ^ 0x67958;
  LODWORD(v126) = v297 ^ 0x76080000;
  v302 = ((v281 >> 3) ^ 0x1DA51369) + (v265 ^ 0x77EFEF7B) + ((2 * v265) & 0xEFDFDEF6) - 2012213115;
  v303 = (v302 ^ 0x5F6CBFBF) + ((2 * v302) & 0xBED97F7E) - 1600962495 + (((v126 >> 19) - ((2 * (v126 >> 19)) & 0x43CFF70E) + 568851335) ^ (v297 >> 10) ^ (v301 - 1224241842) ^ 0x96FDF557);
  v304 = (v282 ^ 0x76DD7FAB) + ((2 * v282) & 0xEDBAFF56) + (v303 ^ 0x1050D40) - ((2 * v303) & 0xFDF5E57E) + 1;
  v305 = v304 - ((2 * v304 + 272295464) & 0x82A161A4);
  HIDWORD(v126) = a57 ^ 0x46E5E4;
  LODWORD(v126) = a57 ^ 0x78000000;
  v306 = v126 >> 25;
  HIDWORD(v126) = v287 ^ 0x39839;
  LODWORD(v126) = v287 ^ 0x5B0C0000;
  v307 = (v126 >> 18) + 1527341852 + (~(2 * (v126 >> 18)) | 0x49ED39C9);
  HIDWORD(v126) = a57 ^ 0x5E4;
  LODWORD(v126) = a57 ^ 0x7846E000;
  v308 = (v306 ^ 0x8D800000) + ((v126 >> 11) ^ 0x98080103) + (v286 ^ 0x6DBB3777) + ((2 * v286) & 0xDB766EEE) - ((2 * v306) & 0xE4FFFFFE) - ((2 * (v126 >> 11)) & 0xCFEFFDF8);
  HIDWORD(v126) = (v295 + 24) ^ 0x4298;
  LODWORD(v126) = (v295 + 24) ^ 0x78520000;
  v309 = v126 >> 17;
  HIDWORD(v895) = v287;
  HIDWORD(v126) = v287 ^ 0x39;
  LODWORD(v126) = v287 ^ 0x5B0F9800;
  v310 = v126 >> 7;
  HIDWORD(v126) = v297 ^ 0x58;
  LODWORD(v126) = v297 ^ 0x760E7900;
  v879 = v126 >> 7;
  HIDWORD(v126) = (v295 + 24) ^ 0x24298;
  LODWORD(v126) = (v295 + 24) ^ 0x78500000;
  v881 = v126 >> 18;
  v311 = ((v283 - 457874024) ^ (v289 - 1847235877) ^ 0x75500F43) + ((v261 >> 3) ^ 0x174E46A0);
  v312 = (((v295 + 24) >> 10) ^ 0x1E1490) + (v309 ^ 0xF58D7DC9) + ((v126 >> 19) ^ 0x2C000515) + ((2 * v309) & 0xEB1AFB92) - ((2 * (v126 >> 19)) & 0xA7FFF5D4) - 562922206;
  v313 = ((2 * v311) & 0x7BB363E6) + (v311 ^ 0x3DD9B1F3) + (v312 ^ 0x5FAFFFF7);
  HIDWORD(v877) = v281;
  v314 = (v281 ^ 0xF3974012 ^ (v313 + ((2 * v312) & 0xBF5FFFEE) - 2 * ((v313 + ((2 * v312) & 0xBF5FFFEE) + 41307670) & 0x1EBFDB5B ^ v313 & 1) - 2127156880)) + (v281 ^ 0xED289B48);
  v315 = v314 - 1962603851 - ((2 * v314) & 0x160A156A);
  v316 = (v300 ^ 0x894C6840) + (v299 ^ 0xFFFF4D5E) + ((2 * v299) & 0xFFFE9ABC) - ((2 * v300) & 0xED672F7E) + 1;
  v317 = v316 - ((2 * v316 - 311913278) & 0xA36BDF3A);
  HIDWORD(v126) = a57 ^ 0x6E5E4;
  LODWORD(v126) = a57 ^ 0x78787878;
  v318 = v126 >> 22;
  HIDWORD(v126) = v315 ^ 0x50AB5;
  LODWORD(v126) = v315 ^ 0x8B000000;
  v319 = (v126 >> 19) + 36051407 + (~(2 * (v126 >> 19)) | 0xFBB3CC63);
  HIDWORD(v126) = a57 ^ 0x5E4;
  LODWORD(v126) = a57 ^ 0x7846E000;
  v320 = v126 >> 13;
  LODWORD(v885) = a58 ^ 0xF4D45EB;
  v321 = (v307 ^ 0x38141DB2 ^ (v310 - ((2 * v310) & 0xC63AFD52) + 1662877353)) + ((v287 >> 3) ^ 0xB61F307);
  v905 = v305 + 1231954918;
  v865 = (v305 + 1231954918) ^ 0xB0D2;
  v322 = (v305 + 1231954918) ^ 0xC1500000;
  v323 = v321 - ((2 * v321) & 0x6F942256);
  v324 = (((v305 + 1231954918) >> 10) ^ 0x30542C) + ((__PAIR64__(v865, v322) >> 17) ^ 0xFEF235FE) + ((__PAIR64__(v865, v322) >> 19) ^ 0xA2326110) + ((2 * (__PAIR64__(v865, v322) >> 17)) & 0xFDE46BFC) - ((2 * (__PAIR64__(v865, v322) >> 19)) & 0xBB9B3DDE);
  v325 = ((v317 - 932562434) ^ (v298 >> 3) ^ 0x5FE36647) + ((v324 + 1591437554) ^ 0xFD7E6DDF) + ((2 * (v324 + 1591437554)) & 0xFAFCDBBE) + 42045985;
  v326 = (a60 ^ ((a57 ^ 0x7846E5E4) + (a63 ^ a57 ^ 0x97327946) - ((2 * ((a57 ^ 0x7846E5E4) + (a63 ^ a57 ^ 0x97327946))) & 0xBFE78E1E) + 1609811727) ^ 0x924AD729 ^ (v308 + 2 - ((2 * (v308 + 2) + 427396872) & 0x14BB30CE) - 149266453)) + 694531638;
  v327 = (v326 ^ 0x7F6DA3FF) + ((2 * v326) & 0xFEDB47FE) - 2137891839 + (v890 ^ 0x4C0420CF);
  HIDWORD(v126) = a57;
  LODWORD(v126) = a57 ^ 0x7846E5E4;
  v328 = (((a57 ^ 0x7846E5E4) + (a63 ^ 0xEF749CA2)) ^ 0x98B40040) + (v318 ^ 0xEDE1F2DF) + ((v126 >> 2) ^ 0xFD7BEFFF) + (v320 ^ 0x80104211) + ((2 * v318) & 0xDBC3E5BE) + ((2 * (v126 >> 2)) & 0xFAF7DFFE) - ((2 * ((a57 ^ 0x7846E5E4) + (a63 ^ 0xEF749CA2))) & 0xCE97FF7E) - ((2 * v320) & 0xFFDF7BDC);
  v329 = (a58 ^ a57 ^ 0x770BA00F) + (((a63 ^ 0xEF749CA2) + (a58 ^ 0xF4D45EB)) ^ 0x6FEFFEFE) + ((2 * ((a63 ^ 0xEF749CA2) + (a58 ^ 0xF4D45EB))) & 0xDFDFFDFC) - 1877999358;
  v330 = v328 + (v329 ^ 0xBF57DBEF) + ((2 * v329) & 0x7EAFB7DE) + (v327 ^ 0xFC7FC1F) + ((2 * v327) & 0x1F8FF83E);
  v866 = v315 ^ 0x10AB5;
  v331 = v315 ^ 0x8B040000;
  HIDWORD(v126) = v315 ^ 0x10AB5;
  LODWORD(v126) = v315 ^ 0x8B040000;
  v332 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x1A4FD5EE);
  LODWORD(v876) = v261 ^ 0xBA723501;
  v333 = (v261 ^ 0xFEAA19A9 ^ (v325 - ((2 * v325) & 0x89B05950) + 1155017896)) - (v261 ^ 0xBA723501);
  HIDWORD(v126) = v297 ^ 0x27958;
  LODWORD(v126) = v297 ^ 0x760C0000;
  v334 = v126 >> 18;
  v335 = v330 + 1980179675;
  v336 = v330 + 1980179675 - ((2 * v330 + 1501300102) & 0x92924428) - 4;
  v337 = (v336 << 21) ^ 0x42800000;
  v338 = ((v337 - ((2 * v337) & 0xBD000000) - 560846912) & 0xF8000000 | (v336 >> 11)) ^ 0xD8092924;
  v339 = (v319 ^ 0xF01F339 ^ (v332 + 220719863)) - ((v315 >> 10) ^ 0x22C142);
  HIDWORD(v893) = v295 + 24;
  HIDWORD(v126) = (v295 + 24) ^ 0x18;
  LODWORD(v126) = (v295 + 24) ^ 0x78524280;
  v340 = v126 >> 7;
  HIDWORD(v126) = (v336 >> 11) ^ 0x12924;
  LODWORD(v126) = (v338 - ((2 * v338) & 0x60217F36) + 896581531) ^ 0x35700000;
  v341 = (v126 >> 19) - 1231811328 - ((2 * (v126 >> 19)) & 0x6D281ABC);
  v342 = (v339 - ((2 * v339) & 0x3029CC6) + 25251427) ^ (v323 + 935989547);
  v343 = v333 - ((2 * v333) & 0xF8305E80) - 65523904;
  HIDWORD(v126) = v343 ^ 0x2F40;
  LODWORD(v126) = v343 ^ 0xFC180000;
  v344 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x6A43F2A);
  HIDWORD(v126) = (v341 + 94) ^ 0x5E;
  LODWORD(v126) = (v341 + 94) ^ 0xB6940D00;
  v345 = (v126 >> 8) + 379479204 - ((2 * (v126 >> 8)) & 0x2D3CC948);
  HIDWORD(v126) = v336 ^ 0x1492214;
  LODWORD(v126) = v336 ^ 0x48000000;
  v346 = v126 >> 25;
  HIDWORD(v126) = v336 ^ 0x92214;
  LODWORD(v126) = v336 ^ 0x49400000;
  v347 = v126 >> 22;
  HIDWORD(v126) = v343 ^ 0x2F40;
  LODWORD(v126) = v343 ^ 0xFC180000;
  v348 = (v337 - 551031319 - ((2 * v337) & 0xBE400000)) ^ 0xDF27EDE9 | (v336 >> 11) ^ 0x92924;
  v349 = v348 - ((2 * v348) & 0x2A1F726E);
  v350 = (((v126 >> 17) - ((2 * (v126 >> 17)) & 0xC955CA) + 6597349) ^ (v344 + 55713685) ^ 0x336B570) + ((v343 >> 10) ^ 0x3F060B);
  HIDWORD(v126) = v342 ^ 0x15F48;
  LODWORD(v126) = v342 ^ 0x364A0000;
  v351 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0xCF5AA12);
  v352 = v345 ^ 0x169E64A4 | (260910109 - ((v335 & 3) << 27) + ((v336 << 26) ^ 0x50000000)) ^ 0xF8D2C1D;
  v882 = __PAIR64__(v343, v342);
  HIDWORD(v126) = v342 ^ 0x35F48;
  LODWORD(v126) = v342 ^ 0x36480000;
  v353 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x7017001E);
  HIDWORD(v126) = v336 ^ 0x214;
  LODWORD(v126) = v336 ^ 0x49492000;
  v354 = v126 >> 13;
  v355 = v287;
  v356 = (v287 ^ 0xA4F067C6) - 2147474750 + (v350 ^ 0x7FFFDD3F) + ((2 * v350) & 0xFFFFBA7E);
  v357 = ((v297 >> 3) ^ 0xEC1CF2B) + (v334 ^ 0xF5AF2D3B) + ((2 * v334) & 0xEB5E5A76) + 173068997;
  v358 = (v879 ^ 0xDFFBBEFE) + ((2 * v879) & 0xBFF77DFC) + (v357 ^ 0xD116818) - ((2 * v357) & 0xE5DD2FCE) + (v356 ^ 0xFEAEB6FE) + ((2 * v356) & 0xFD5D6DFC) + 1;
  v359 = v358 - ((2 * v358 + 680018902) & 0x2AF61A82);
  LODWORD(v888) = a63 ^ 0xEF749CA2;
  v360 = ((2 * ((v336 ^ 0x49492214) + (a57 ^ 0x7846E5E4))) & 0x97DFF7DC) + (((v336 ^ 0x49492214) + (a57 ^ 0x7846E5E4)) ^ 0xCBEFFBEE) + 873464850;
  v361 = ((v336 ^ 0x49492214) - (a63 ^ 0xEF749CA2) + 1885214673 - ((2 * ((v336 ^ 0x49492214) - (a63 ^ 0xEF749CA2))) & 0xE0BC2FA2)) ^ 0x705E17D1 ^ v360;
  v362 = (a58 ^ 0xF4D45EB) + (v346 ^ 0x6FEC7DCC) + ((2 * v346) & 0xDFD8FB98) - 1877769676;
  v363 = ((v349 - 1794131657) ^ 0xD7A00CBB ^ (v352 + 1118811533 + (~(2 * v352) | 0x7AA094E7))) + (a63 ^ 0xDEB49BAD ^ (v361 - ((2 * v361) & 0x63800E1E) + 834668303));
  v364 = (v362 ^ 0xEFFDF272) + ((2 * v362) & 0xDFFBE4E4) + (v363 ^ 0x16100201);
  HIDWORD(v867) = v315;
  HIDWORD(v126) = v315 ^ 0x35;
  LODWORD(v126) = v315 ^ 0x8B050A80;
  HIDWORD(v888) = v126 >> 7;
  v365 = ((v351 + 108713225) ^ (v353 + 940277775) ^ 0x3E715506) + ((v342 >> 10) ^ 0xD92D7);
  v366 = v295 + 24;
  v367 = (((v295 + 24) >> 3) ^ 0xF0A4853) + (v365 ^ 0xE766FFFA) + ((2 * v365) & 0xCECDFFF4) + 412680198;
  v368 = (v340 ^ 0xF78EBEEB) + (v881 ^ 0xFFDFF5FB) + ((2 * v340) & 0xEF1D7DD6) + ((2 * v881) & 0xFFBFEBF6) + (v367 ^ 0x42220014) - ((2 * v367) & 0x7BBBFFD6) + 1;
  v369 = v887 ^ 0x65FE55E5 ^ (v364 + 1 - ((2 * v363) & 0xD3DFFBFC) - 2 * ((v364 + 1 - ((2 * v363) & 0xD3DFFBFC) + 2040821898) & 0x42152B13 ^ (v364 + 1) & 1) + 1002021788);
  HIDWORD(v126) = v335;
  LODWORD(v126) = v336 ^ 0x49492214;
  v370 = (a57 ^ 0x310FC7F0 ^ v336) + (((v336 ^ 0x49492214) + (a63 ^ 0xEF749CA2)) ^ 0xA185D04C) - ((2 * ((v336 ^ 0x49492214) + (a63 ^ 0xEF749CA2))) & 0xBCF45F66) + 1585065908;
  v371 = (((a63 ^ 0xEF749CA2) - (a57 ^ 0x7846E5E4)) ^ 0x77F3D7DF) + ((2 * ((a63 ^ 0xEF749CA2) - (a57 ^ 0x7846E5E4))) & 0xEFE7AFBE) + (v347 ^ 0xCC4C2004) + (v354 ^ 0x6BFCFF77) + ((v126 >> 2) ^ 0x6FCB73E6) + ((2 * v354) & 0xD7F9FEEE) + ((2 * (v126 >> 2)) & 0xDF96E7CC) - ((2 * v347) & 0x6767BFF6) + (v370 ^ 0x75EE57FE) + ((2 * v370) & 0xEBDCAFFC) + 1778990274 + v369;
  v372 = ((2 * v371) & 0xE6F7F3F2) + (v371 ^ 0x737BF9F9);
  HIDWORD(v885) = __PAIR64__(v866, v331) >> 18;
  v373 = v297 ^ 0x5684DF68 ^ (v368 - ((2 * v368 + 215913994) & 0x41154C60) - 419827403);
  HIDWORD(v126) = v905 ^ 0x52;
  LODWORD(v126) = v905 ^ 0xC150B080;
  LODWORD(v878) = v297 ^ 0x760E7958;
  v374 = v373 - (v297 ^ 0x760E7958) - ((2 * (v373 - (v297 ^ 0x760E7958))) & 0x9346EC60);
  LODWORD(v867) = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x5C113BCC);
  v375 = ((2 * (v372 - 1937504761 + (v336 ^ 0x49492214))) & 0x7F7DEF7E) + ((v372 - 1937504761 + (v336 ^ 0x49492214)) ^ 0xBFBEF7BF);
  v376 = v375 + 1078003777 + (((a57 ^ 0x7846E5E4 ^ (v372 - 1937504761)) + 63820507 - ((2 * (a57 ^ 0x7846E5E4 ^ (v372 - 1937504761))) & 0x79BA5B6)) ^ 0x3CDD2DB);
  HIDWORD(v864) = (__PAIR64__(v865, v322) >> 18) - ((2 * (__PAIR64__(v865, v322) >> 18)) & 0xC7C10884);
  HIDWORD(v126) = v372 + 7;
  LODWORD(v126) = v372 - 1937504761;
  v377 = (v126 >> 6) - ((2 * (v126 >> 6)) & 0xC7612246);
  HIDWORD(v126) = v372 + 1543;
  LODWORD(v126) = v372 - 1937504761;
  v378 = ((v126 >> 11) - ((2 * (v126 >> 11)) & 0x921BD154) - 921835350) ^ (v377 + 1672515875);
  HIDWORD(v126) = v372 + 8652295;
  LODWORD(v126) = v372 - 1937504761;
  v379 = ((v126 >> 25) ^ 0xBF6F717D) + ((2 * (v126 >> 25)) & 0x7EDEE2FA) + 1083215491 + (v378 ^ 0xAABD7989);
  v380 = (a57 ^ 0x7846E5E4) + (v376 ^ 0xFFFFFFEE) + ((2 * v376) & 0xFFFFFFDC);
  v381 = v360 + ((v372 - 1937504761 + (a57 ^ 0x7846E5E4) - ((2 * (v372 - 1937504761 + (a57 ^ 0x7846E5E4))) & 0xF6F2FF66) + 2071560115) ^ (v372 + (v336 ^ 0xB6B6DDEB) - ((2 * (v372 + (v336 ^ 0xB6B6DDEB)) + 419957776) & 0xFF2B4A60) + 203008824) ^ 0xFB13257C);
  v382 = (v359 + 700395308) ^ v355;
  HIDWORD(v126) = v382 ^ 0x49578;
  LODWORD(v126) = v382 ^ 0x4E700000;
  v383 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0xB8734A0E);
  v384 = ((v380 + 18) ^ 0x54FF9DFF) + ((2 * (v380 + 18)) & 0xA9FF3BFE) - 1426038271 + (a63 ^ 0x7D00A11D ^ (v379 - 1837875776 + ~((2 * v379) & 0x24E87B7E)));
  HIDWORD(v880) = v382;
  HIDWORD(v126) = v382 ^ 0x9578;
  LODWORD(v126) = v382 ^ 0x4E740000;
  v385 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x2765FB1A);
  HIDWORD(v126) = v372 + 263687;
  LODWORD(v126) = v372 - 1937504761;
  v386 = v126 >> 22;
  HIDWORD(v126) = v372 - 1;
  LODWORD(v126) = v372 - 1937504761;
  v387 = v126 >> 2;
  HIDWORD(v126) = v372 + 1543;
  LODWORD(v126) = v372 - 1937504761;
  v388 = (v386 ^ 0x8D090805) + (v387 ^ 0x76B675FE) + ((v126 >> 13) ^ 0x35FDEFF7) + ((2 * v387) & 0xED6CEBFC) + ((2 * (v126 >> 13)) & 0x6BFBDFEE) - ((2 * v386) & 0xE5EDEFF4) + ((v381 + 1) ^ 0xFF26EFD6) + ((2 * (v381 + 1)) & 0xFE4DDFAC) - 954490320 + (v870 ^ 0xE1482A63 ^ (((2 * v384) & 0x39EDFADE) + (v384 ^ 0x9CF6FD6F) - ((2 * (((2 * v384) & 0x39EDFADE) + (v384 ^ 0x9CF6FD6F)) - 961566546) & 0xAED84F2C) + 985922541));
  v389 = v388 + 162955264 - ((2 * v388) & 0x136D0A2E);
  HIDWORD(v869) = v374 + 1235449392;
  HIDWORD(v126) = (v374 + 1235449392) ^ 0x37630;
  LODWORD(v126) = (v374 + 1235449392) ^ 0x49A00000;
  v390 = v126 >> 19;
  HIDWORD(v126) = (v374 + 1235449392) ^ 0x17630;
  LODWORD(v126) = (v374 + 1235449392) ^ 0x49A20000;
  v391 = v126 >> 17;
  v392 = v389 + 1303;
  v393 = ((2 * ((v392 ^ 0x9B68517) - v372 + 1937504761)) & 0xF779DBF6) + (((v392 ^ 0x9B68517) - v372 + 1937504761) ^ 0x7BBCEDFB);
  HIDWORD(v126) = (v389 + 1303) ^ 0x368517;
  LODWORD(v126) = (v389 + 1303) ^ 0x9800000;
  v394 = v126 >> 22;
  HIDWORD(v126) = (v389 + 1303) ^ 0x517;
  LODWORD(v126) = (v389 + 1303) ^ 0x9B68000;
  v395 = (v126 >> 13) - ((2 * (v126 >> 13)) & 0x84055E1A);
  v396 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0x3BB705F8);
  v397 = ((((2 * v392) ^ 0x136D0A2E) + 2112937578 - 2 * (((2 * v392) ^ 0x136D0A2E) & 0x7DF0DE7A ^ (2 * v392) & 0x10)) ^ 0x7DF0DE6A) + v372 - 1937504761;
  v398 = ((((2 * v336) ^ 0x92924428) + 601495202 - 2 * (((2 * v336) ^ 0x92924428) & 0x23DA16B2 ^ (2 * v336) & 0x10)) ^ 0x23DA16A2) + (v397 ^ 0xD832215C) - ((2 * v397) & 0x4F9BBD46);
  HIDWORD(v126) = -1332 - v389;
  LODWORD(v126) = (v389 + 1303) ^ 0x9B68514;
  v399 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x89620ACE);
  HIDWORD(v126) = v392 ^ 0x1B68517;
  LODWORD(v126) = v392 ^ 0x8000000;
  v400 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0xFD02DACC);
  v401 = (v394 ^ 0x88036685) - ((2 * v394) & 0xEFF932F4) + 2013043067 + ((v399 + 1152451943) ^ (v395 - 1040011507) ^ 0x86B3AA6A);
  HIDWORD(v126) = v392 ^ 0x17;
  LODWORD(v126) = v392 ^ 0x9B68500;
  v402 = ((v392 ^ 0x9B68517) + (v336 ^ 0x49492214) + 1743843694 - ((2 * ((v392 ^ 0x9B68517) + (v336 ^ 0x49492214))) & 0xCFE1E2DC)) ^ 0x67F0F16E ^ (v393 - 2075979259);
  v403 = ((v402 - 1087231352 - ((2 * v402) & 0x7E645510)) ^ 0xBF322A88) - v375;
  v404 = (a57 ^ 0x7846E5E4) - ((v396 - 1646558468) ^ ((v126 >> 6) - ((2 * (v126 >> 6)) & 0x1EB12608) - 1890020604) ^ (v400 + 2122411366) ^ 0x6C027C9E);
  v405 = ((2 * v404) & 0xF7B7D33E) + (v404 ^ 0x7BDBE99F) + ((v398 + 667803300) ^ 0x66B5B5DB) + ((2 * (v398 + 667803300)) & 0xCD6B6BB6);
  v406 = (v868 ^ 0xFA7F53B0 ^ (v405 - ((2 * v405 - 1499204828) & 0xFAAD33E2) - 794258557)) + ((v401 - ((2 * v401) & 0x6D05F8D6) - 1232929685) ^ 0x8CF3722E ^ (v403 - ((2 * v403 + 2138959742) & 0x74E31C8A) - 97483260));
  v407 = v406 + 1632199571 - ((2 * v406) & 0xC292C726);
  HIDWORD(v126) = -25 - v407;
  LODWORD(v126) = v407 ^ 0x61496390;
  v408 = v126 >> 2;
  HIDWORD(v126) = v407 ^ 0x13;
  LODWORD(v126) = v407 ^ 0x61496380;
  v409 = v126 >> 6;
  HIDWORD(v126) = v407 ^ 0x96393;
  LODWORD(v126) = v407 ^ 0x61400000;
  v410 = v126 >> 22;
  v411 = (v390 ^ 0x272400A8) + (v391 ^ 0x75F6FBDF) + ((2 * v391) & 0xEBEDF7BE) - ((2 * v390) & 0xB1B7FEAE) + 1;
  LODWORD(v869) = v411 - ((2 * v411 + 97126128) & 0x126F09C4);
  v412 = (((v407 ^ 0x61496393) - (v392 ^ 0x9B68517)) ^ 0xFB3FFB3D) + 79692995 + ((2 * ((v407 ^ 0x61496393) - (v392 ^ 0x9B68517))) & 0xF67FF67A);
  v413 = ((v372 - 1937504761 + (v407 ^ 0x9EB69C6C) + 1) ^ 0x7FFDFF9F) - v372 + (((v407 ^ 0x61496393) + (v392 ^ 0x9B68517)) ^ 0x5FBBFDFF) + ((2 * (v372 - 1937504761 + (v407 ^ 0x9EB69C6C) + 1)) & 0xFFFBFF3E) + ((2 * ((v407 ^ 0x61496393) + (v392 ^ 0x9B68517))) & 0xBF77FBFE);
  HIDWORD(v126) = v407 ^ 0x1496393;
  LODWORD(v126) = v407 ^ 0x60000000;
  v414 = v126 >> 25;
  HIDWORD(v126) = v407 ^ 0x393;
  LODWORD(v126) = v407 ^ 0x61496000;
  v415 = v126 >> 13;
  HIDWORD(v126) = v407 ^ 0x393;
  LODWORD(v126) = v407 ^ 0x61496000;
  v416 = (v414 ^ 0xFFFFF7FF) + ((2 * v414) & 0xFFFFEFFF) + ((v409 - ((2 * v409) & 0xB8BD249C) + 1549701710) ^ ((v126 >> 11) - ((2 * (v126 >> 11)) & 0x9C5857CE) + 1311517671) ^ 0xED8D4656) + 2050;
  v417 = (v336 ^ 0x49492214) + (v416 ^ 0x7DBF577B) + ((2 * v416) & 0xFB7EAEF6) - 2109691771;
  v418 = ((v413 - ((2 * v413 + 126089398) & 0xB45C07C) - 1721443175) ^ 0xACEAA03D ^ (v417 - ((2 * v417) & 0x52908006) - 1454882813)) + 672521749;
  v419 = (((v407 ^ 0x61496393 ^ (v372 - 1937504761)) + 893693969 - ((2 * (v407 ^ 0x61496393 ^ (v372 - 1937504761))) & 0x6A896022)) ^ 0x3544B011) + v412;
  v420 = v871 + (v418 ^ 0x7FFFB0FF) + ((2 * v418) & 0xFFFF61FE) - 2147463423;
  v421 = (v415 ^ 0x8A204051) - v393 + (v408 ^ 0x25BF63FD) + (v410 ^ 0xFFFF76E9) + ((2 * v408) & 0x4B7EC7FA) + ((2 * v410) & 0xFFFEEDD2) - ((2 * v415) & 0xEBBF7F5C) + (v419 ^ 0x1118638) - ((2 * v419) & 0xFDDCF38E) + (v420 ^ 0x3B8F6F7D) + ((2 * v420) & 0x771EDEFA);
  v422 = (2 * v421 + 511293982) & 0x48EB9FAC;
  v421 += 867347685;
  v423 = v421 - v422;
  v424 = (v421 - v422) ^ 0xA475CFD6;
  v425 = ((2 * (v424 + (v407 ^ 0x61496393))) & 0xBEFFDFDE) + ((v424 + (v407 ^ 0x61496393)) ^ 0xDF7FEFEF);
  v426 = ((v385 + 330497421) ^ (v382 >> 10) ^ (v383 + 1547281671) ^ 0x4F98C5AF) + ((((2 * v366) ^ 0xF0A48530) - 229854641 - ((2 * ((2 * v366) ^ 0xF0A48530)) & 0xE499649C)) ^ 0xF24CB24F);
  HIDWORD(v126) = v421 ^ 2;
  LODWORD(v126) = (v421 - v422) ^ 0xA475CFD4;
  v427 = v126 >> 2;
  HIDWORD(v126) = v423 ^ 0xFD6;
  LODWORD(v126) = v423 ^ 0xA475C000;
  v428 = v126 >> 13;
  HIDWORD(v126) = v423 ^ 0x16;
  LODWORD(v126) = v423 ^ 0xA475CFC0;
  v429 = v126 >> 6;
  HIDWORD(v126) = v423 ^ 0x35CFD6;
  LODWORD(v126) = v423 ^ 0xA4400000;
  v430 = v126 >> 22;
  HIDWORD(v126) = v423 ^ 0x7D6;
  LODWORD(v126) = v423 ^ 0xA475C800;
  v431 = v126 >> 11;
  v432 = (v424 - (v392 ^ 0x9B68517) + 2123210552 - ((2 * (v424 - (v392 ^ 0x9B68517))) & 0xFD1B3E70)) ^ 0x7E8D9F38 ^ (v425 + 545263633);
  HIDWORD(v126) = v423 ^ 0x75CFD6;
  LODWORD(v126) = v423 ^ 0xA4000000;
  v433 = ((v432 - 379551579 - ((2 * v432) & 0xD2C1014A)) ^ 0xE96080A5) + v412;
  v434 = v372 + (v431 ^ 0x1619188) + ((v126 >> 25) ^ 0x72DF57BD) + (v429 ^ 0xFF0FFBBF) + ((2 * (v126 >> 25)) & 0xE5BEAF7A) + ((2 * v429) & 0xFE1FF77E) - ((2 * v431) & 0xFD3CDCEE) + 422781187 + (v392 ^ 0xCE6D27B9 ^ (v425 + (v392 ^ 0x523CB53E ^ v423) - ((2 * (v425 + (v392 ^ 0x523CB53E ^ v423)) + 1090527268) & 0x8FB7455C) - 396643648));
  v435 = (v430 ^ 0x80424000) + (v428 ^ 0x6C0850) + (v427 ^ 0xFFED9EF5) + ((2 * v427) & 0xFFDB3DEA) - ((2 * v430) & 0xFF7B7FFE) - ((2 * v428) & 0xFF27EF5E) + (v433 ^ 0xDBFFF4DD) + ((2 * v433) & 0xB7FFE9BA);
  v436 = (HIDWORD(v871) ^ 0x21AB5FE) + (v434 ^ 0x79B9F67F) + ((2 * v434) & 0xF373ECFE) - 77155710;
  v437 = v435 + (v436 ^ 0xBFFF3DFD) + ((2 * v436) & 0x7FFE7BFA) + 2;
  v438 = v437 - ((2 * v437 + 1187630014) & 0x49BD9F8A);
  v439 = v438 + 138655140;
  HIDWORD(v126) = (v438 + 138655140) ^ 5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DECFC0;
  v440 = v126 >> 6;
  HIDWORD(v126) = (v438 + 138655140) ^ 0xFC5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DEC000;
  v441 = v126 >> 13;
  v442 = (v438 + 138655140) ^ 0x24DECFC5;
  v443 = ((2 * (v442 + (v407 ^ 0x61496393))) & 0x2FDDFBFE) + ((v442 + (v407 ^ 0x61496393)) ^ 0x17EEFDFF);
  HIDWORD(v126) = (v438 + 138655140) ^ 0x7C5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DEC800;
  v444 = v126 >> 11;
  HIDWORD(v126) = (v438 + 138655140) ^ 0xDECFC5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24000000;
  v445 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x5A3C25E);
  HIDWORD(v126) = (v438 + 138655156) ^ 1;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DECFC4;
  v446 = v126 >> 2;
  v447 = (v443 - 401538559) ^ (v442 - v424 - 758746410 - ((2 * (v442 - v424)) & 0xA58CE5AC));
  v448 = (v444 ^ 0x6D77D775) + (v440 ^ 0x5E7FDF5F) + ((2 * v440) & 0xBCFFBEBE) + ((2 * v444) & 0xDAEFAEEA);
  HIDWORD(v126) = v439 ^ 0x1ECFC5;
  LODWORD(v126) = v439 ^ 0x24C00000;
  v449 = ((v126 >> 22) ^ 0x946DEB9F) + (v446 ^ 0x7F5E5CFB) + (v441 ^ 0x820111C0) + ((2 * (v126 >> 22)) & 0x28DBD73E) + ((2 * v446) & 0xFEBCB9F6) - ((2 * v441) & 0xFBFDDC7E) + 1;
  v450 = ((v445 - 2100174545) ^ 0xDDDFB04B ^ (v448 - ((2 * v448 + 1745916504) & 0xBE1CA2C8) - 1827235184)) + (v392 ^ 0x9B68517);
  v451 = (((v447 ^ 0xD2C672D6) - 243451801 - 2 * ((v447 ^ 0xD2C672D6) & 0x717D386F ^ v447 & 8)) ^ 0xF17D3867) + (v407 ^ 0xC53CAC45 ^ v423);
  v452 = (v407 ^ 0x61496393) + ((v442 + v424) ^ 0x2FEEFFDF) + ((2 * (v442 + v424)) & 0x5FDDFFBE) + v443 - 1205730782;
  v453 = (v449 - ((2 * v449 + 1415924554) & 0x74A875C0) - 1534664571) ^ 0x87948DE3 ^ (v451 - ((2 * v451) & 0x7B816E06) - 1111443709);
  v454 = (v895 ^ 0xF2DE5903) + (v452 ^ 0xCFDFFFF) + ((2 * v452) & 0x19FBFFFE) - 217972735;
  v455 = (v454 ^ 0x80000814) - ((2 * v454) & 0xFFFFEFD6) + (v450 ^ 0x7FF7FEF1) + ((2 * v450) & 0xFFEFFDE2) - 1694862092 + v453;
  v456 = v455 + 890935296 - ((2 * v455) & 0x6A3537FA);
  v457 = v456 + 1021;
  v458 = (v456 + 1021) ^ 0x351A9BFD;
  HIDWORD(v126) = (v456 + 1049) ^ 1;
  LODWORD(v126) = (v456 + 1021) ^ 0x351A9BFC;
  v459 = v126 >> 2;
  v460 = ((v458 - v424) ^ 0x8FFB7FF7) + ((v458 + v442) ^ 0xA66DAFFB) + ((2 * (v458 + v442)) & 0x4CDB5FF6) + ((2 * (v458 - v424)) & 0x1FF6FFEE);
  HIDWORD(v126) = v457 ^ 0xFFFFFFFD;
  LODWORD(v126) = v457 ^ 0x351A9BC0;
  v461 = v126 >> 6;
  HIDWORD(v126) = v457 ^ 0x3FD;
  LODWORD(v126) = v457 ^ 0x351A9800;
  v462 = v126 >> 11;
  v463 = v460 - ((2 * v460 - 1825726436) & 0x9CAB24DA);
  v464 = ((v458 - v442) ^ 0x7FB635B9) - 2142647737 + ((2 * (v458 - v442)) & 0xFF6C6B72);
  HIDWORD(v126) = v457 ^ 0x1BFD;
  LODWORD(v126) = v457 ^ 0x351A8000;
  v465 = v126 >> 13;
  HIDWORD(v126) = v457 ^ 0x11A9BFD;
  LODWORD(v126) = v457 ^ 0x34000000;
  v466 = v126 >> 25;
  HIDWORD(v126) = v457 ^ 0x1A9BFD;
  LODWORD(v126) = v457 ^ 0x35000000;
  v467 = (v462 ^ 0x88000282) + (v466 ^ 0x7FE6F17F) + (v461 ^ 0x7B57EFE9) + ((2 * v466) & 0xFFCDE2FE) + ((2 * v461) & 0xF6AFDFD2) - ((2 * v462) & 0xEFFFFAFA) + 2093030422 + (v423 ^ 0xC5A63509 ^ (v464 + (v423 ^ 0x916F542B ^ v457) - ((2 * (v464 + (v423 ^ 0x916F542B ^ v457))) & 0xC3A7F5BE) + 1641282271));
  v468 = (v407 ^ 0x61496393) + (v467 ^ 0x80482104) - ((2 * v467) & 0xFF6FBDF6) + 2142756604;
  v469 = (v465 ^ 0x5F1B9F6F) + ((2 * v465) & 0xBE373EDE) - 1595645807 + (v423 ^ v439 ^ 0xCEFE927E ^ (v463 + 401367675));
  v470 = (v459 ^ 0xFF9F6FFB) + ((v126 >> 22) ^ 0x7F7F2773) + ((2 * v459) & 0xFF3EDFF6) + ((2 * (v126 >> 22)) & 0xFEFE4EE6) + (v469 ^ 0x88010895) - ((2 * v469) & 0xEFFDEED4);
  v471 = (v872 ^ 0xEC5EDDFC) + (v468 ^ 0xDBDFEBCB) + ((2 * v468) & 0xB7BFD796) - 1732599086;
  v472 = v470 + (v471 ^ 0x59FDFF7B) + ((2 * v471) & 0xB3FBFEF6);
  v473 = v472 - 197864902;
  v474 = v472 - 197864902 - ((2 * v472 + 1036304644) & 0xAAA4E358) - 12;
  HIDWORD(v126) = v474 ^ 0x2C;
  LODWORD(v126) = v474 ^ 0x55527180;
  v475 = v126 >> 6;
  HIDWORD(v126) = v474 ^ 0x1AC;
  LODWORD(v126) = v474 ^ 0x55527000;
  v476 = v126 >> 11;
  v906 = ((v867 - 1375167002) ^ (v905 >> 3) ^ (HIDWORD(v864) + 1675658306) ^ 0x2A3DF041) + (v426 ^ 0x6E786FFE) + ((2 * v426) & 0xDCF0DFFC);
  HIDWORD(v126) = v474 ^ 0x11AC;
  LODWORD(v126) = v474 ^ 0x55526000;
  v477 = v126 >> 13;
  HIDWORD(v126) = v473;
  LODWORD(v126) = v474 ^ 0x555271AC;
  v478 = (v477 ^ 0x4F7FF7F4) + ((v126 >> 2) ^ 0xE276B47F) + ((2 * (v126 >> 2)) & 0xC4ED68FE) + ((2 * v477) & 0x9EFFEFE8);
  v479 = (v476 ^ 0x6048C400) + (v475 ^ 0x3FE2EBBF) + ((2 * v475) & 0x7FC5D77E) - ((2 * v476) & 0x3F6E77FE);
  HIDWORD(v126) = v474 ^ 0x1271AC;
  LODWORD(v126) = v474 ^ 0x55555555;
  v480 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0x8F2C0E64);
  HIDWORD(v126) = v474 ^ 0x15271AC;
  LODWORD(v126) = v474 ^ 0x55555555;
  v481 = v457 ^ v439;
  v482 = v423 ^ ((v126 >> 25) - ((2 * (v126 >> 25)) & 0xB661E8C4) + 1529934946) ^ 0xE407F1E0 ^ (v479 + 1 - 2 * ((v479 + 534007873) & 0x1B42CA5D ^ (v479 + 1) & 9) + 2065111700);
  v483 = (v481 ^ v474 ^ 0xB676E94C ^ ((v474 ^ 0x555271AC) - v442 - ((2 * ((v474 ^ 0x555271AC) - v442)) & 0xE5C199B0) - 220148520)) - 898248179;
  v484 = (v483 ^ 0x3FFD7BFA) + ((2 * v483) & 0x7FFAF7F4) - 1073576954 + v482;
  v485 = v481 ^ v464 ^ (v480 - 946469070) ^ (v478 - ((2 * v478 - 1676499174) & 0x868BF814) + 290410391);
  v486 = (((v485 ^ 0x9517AF00) - 1138282452 - 2 * ((v485 ^ 0x9517AF00) & 0x3C27302D ^ v485 & 1)) ^ 0xBC27302C) + (HIDWORD(v872) ^ 0x1D84688 ^ (v484 - ((2 * v484) & 0xA3B718E) - 2061649721));
  v487 = v486 - 1928926292 - ((2 * v486) & 0x1A0DD758);
  HIDWORD(v126) = v487 ^ 0x106EBAC;
  LODWORD(v126) = v487 ^ 0x8C000000;
  v488 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x2A8DD3E2);
  HIDWORD(v126) = v487 ^ 0x2C;
  LODWORD(v126) = v487 ^ 0x8D06EB80;
  v489 = v126 >> 6;
  HIDWORD(v126) = v487 ^ 0xBAC;
  LODWORD(v126) = v487 ^ 0x8D06E000;
  v490 = v126 >> 13;
  HIDWORD(v126) = v487 ^ 0x3AC;
  LODWORD(v126) = v487 ^ 0x8D06E800;
  v491 = v126 >> 11;
  v492 = (v491 ^ 0x49208380) + (v489 ^ 0xAF7BECED);
  v493 = ((2 * v489) & 0x5EF7D9DA) - ((2 * v491) & 0x6DBEF8FE);
  v494 = v458 + (((v457 ^ 0xB81C7051 ^ v487) + (v474 ^ 0x555271AC)) ^ 0xFD8F9FFD) + ((2 * ((v457 ^ 0xB81C7051 ^ v487) + (v474 ^ 0x555271AC))) & 0xFB1F3FFA) + 40919043;
  HIDWORD(v126) = v487 ^ 0x6EBAC;
  LODWORD(v126) = v487 ^ 0x8D000000;
  v495 = v126 >> 22;
  v496 = ((v488 + 356968945) ^ 0xE4F9EBEB ^ (v493 + v492 + 1 - 2 * ((v493 + v492 + 1 + 123965330) & 0x71BF021B ^ (v492 + 1) & 1) - 115174996)) + v442;
  v497 = (((v487 ^ 0x8D06EBAC) + (v474 ^ 0x555271AC)) ^ 0xA8D3B97B) + 1462519429 + ((2 * ((v487 ^ 0x8D06EBAC) + (v474 ^ 0x555271AC))) & 0x51A772F6);
  v498 = ((v474 ^ 0x555271AC) + v458 - ((2 * ((v474 ^ 0x555271AC) + v458)) & 0xEC26B114) + 1980979338) ^ v497 ^ ((v487 ^ 0x8D06EBAC) - v458 - ((2 * ((v487 ^ 0x8D06EBAC) - v458)) & 0x3D31D572) + 513338041) ^ 0x688BB233;
  v499 = (v487 ^ 0x8D06EBAC) + (v494 ^ 0xA8610808) - ((2 * v494) & 0xAF3DEFEE) + 1470035960;
  HIDWORD(v126) = v486;
  LODWORD(v126) = v487 ^ 0x8D06EBAC;
  v500 = (v490 ^ 0x63942180) + ((v126 >> 2) ^ 0x6DF4EEFB) + (v495 ^ 0x13014600) + ((2 * (v126 >> 2)) & 0xDBE9DDF6) - ((2 * v495) & 0xD9FD73FE) - ((2 * v490) & 0x38D7BCFE) + 460695941 + ((v498 + 298431697 - ((2 * v498) & 0x239369A2)) ^ 0x11C9B4D1);
  v501 = (v873 ^ 0x4EE2B3A0) + (v499 ^ 0x4EB77CFF) + ((2 * v499) & 0x9D6EF9FE) + (v496 ^ 0xCB7DC7F3) + ((2 * v496) & 0x96FB8FE6) + 1211746604;
  v502 = ((2 * v500) & 0x77DFBFD2) + (v500 ^ 0xBBEFDFE9) + (v501 ^ 0xFBD7BDFF) + ((2 * v501) & 0xF7AF7BFE);
  v503 = v502 - ((2 * v502 + 7390256) & 0x7883726);
  v504 = v503 - 872645205;
  v505 = (v503 - 872645205) ^ 0x83C41B93;
  HIDWORD(v126) = (v503 - 872645205) ^ 0x13;
  LODWORD(v126) = (v503 - 872645205) ^ 0x83C41B80;
  v506 = v126 >> 6;
  HIDWORD(v126) = (v503 - 872645205) ^ 0x1B93;
  LODWORD(v126) = (v503 - 872645205) ^ 0x83C40000;
  v507 = v126 >> 13;
  v508 = (v474 ^ 0x296995C0 ^ (v503 - 872645205)) + ((v505 + (v487 ^ 0x8D06EBAC)) ^ 0xA7DBDFFF) + ((2 * (v505 + (v487 ^ 0x8D06EBAC))) & 0x4FB7BFFE) + 1478762498;
  HIDWORD(v126) = 872645188 - v503;
  LODWORD(v126) = (v503 - 872645205) ^ 0x83C41B90;
  v509 = v126 >> 2;
  v510 = (v503 - 872645205) ^ v487;
  v511 = (v510 ^ 0x1CC028B ^ (v505 + (v474 ^ 0x555271AC) - ((2 * (v505 + (v474 ^ 0x555271AC))) & 0x1E1DE568) + 252637876)) + v497;
  HIDWORD(v126) = v504 ^ 0x393;
  LODWORD(v126) = v504 ^ 0x83C41800;
  v512 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0x56FF23D4) - 1417702934;
  HIDWORD(v126) = v512 ^ 0x791EA;
  LODWORD(v126) = v512 ^ 0xAB780000;
  v513 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0xC1473936);
  HIDWORD(v126) = v504 ^ 0x1C41B93;
  LODWORD(v126) = v504 ^ 0x83FFFFFF;
  v514 = v126 >> 25;
  v513 += 1621335195;
  HIDWORD(v126) = v513 ^ 0x1C9B;
  LODWORD(v126) = v513 ^ 0x60A38000;
  v515 = v126 >> 13;
  v516 = (v507 ^ 0xE221B81A) + (v509 ^ 0x3B69EFBB) + ((2 * v509) & 0x76D3DF76) - ((2 * v507) & 0x3BBC8FCA) + 1;
  HIDWORD(v126) = v504 ^ 0x41B93;
  LODWORD(v126) = v504 ^ 0x83C00000;
  v517 = v458 + (v514 ^ 0x80200000) + (v506 ^ 0x1DC40004) - ((2 * v506) & 0xC477FFF6) - ((2 * v514) & 0xFFBFFFFE) + (v515 ^ 0x3BF5EF7F) + ((2 * v515) & 0x77EBDEFE) + 640028797;
  v518 = (v474 ^ 0xCE89727C ^ (v508 - ((2 * v508) & 0x37B607A0) - 1680145456)) + (v517 ^ 0xFCFFD67B) + ((2 * v517) & 0xF9FFACF6) + 50342277;
  v519 = (v874 ^ 0xF8207D51) + (v518 ^ 0xFEEB7FAF) + ((2 * v518) & 0xFDD6FF5E) - 2035718565;
  v520 = (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x20486758) + 270807980) ^ (v511 - ((2 * v511) & 0x28A80DDE) + 341051119) ^ (v516 - ((2 * v516 - 991383468) & 0xA08A4B06) + 851017133) ^ 0x543510C0) + (v519 ^ 0xFB6FF74D) + ((2 * v519) & 0xF6DFEE9A) + 76548275;
  v521 = v520 - 700562154 - ((2 * v520) & 0xAC7C8A24) - 4;
  HIDWORD(v126) = (v520 - 700562154) ^ 2;
  LODWORD(v126) = v521 ^ 0xD63E4510;
  v522 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0xF0D2F034);
  HIDWORD(v126) = v521 ^ 0x512;
  LODWORD(v126) = v521 ^ 0xD63E4000;
  v523 = (v126 >> 13) - ((2 * (v126 >> 13)) & 0x9A1E1BC2);
  v524 = ((2 * ((v521 ^ 0xD63E4512) + v505)) & 0xBAFBB7DE) + (((v521 ^ 0xD63E4512) + v505) ^ 0x5D7DDBEF);
  HIDWORD(v126) = v521 ^ 0x512;
  LODWORD(v126) = v521 ^ 0xD63E4000;
  v525 = v126 >> 11;
  v522 -= 127305702;
  HIDWORD(v126) = v522 ^ 0x781A;
  LODWORD(v126) = v522 ^ 0xF8690000;
  v526 = (v126 >> 15) - ((2 * (v126 >> 15)) & 0x7414FCEC) + 973766262;
  HIDWORD(v126) = v526 ^ 0x7E76;
  LODWORD(v126) = v526 ^ 0x3A0A0000;
  v527 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x4072865C);
  HIDWORD(v126) = v521 ^ 0x12;
  LODWORD(v126) = v521 ^ 0xD63E4500;
  v528 = v126 >> 6;
  HIDWORD(v126) = v521 ^ 0x3E4512;
  LODWORD(v126) = v521 ^ 0xD6000000;
  v529 = v126 >> 22;
  HIDWORD(v126) = v521 ^ 0x3E4512;
  LODWORD(v126) = v521 ^ 0xD6000000;
  v530 = (v529 ^ 0xBB7E3AED) + ((2 * v529) & 0x76FC75DA) + 1149355283 + ((v523 - 854651423) ^ 0xED364ECF ^ (v527 + 540623662));
  v531 = ((v521 ^ 0xD63E4512) - (v487 ^ 0x8D06EBAC) - 1988952038 - ((2 * ((v521 ^ 0xD63E4512) - (v487 ^ 0x8D06EBAC))) & 0x12E60034)) ^ 0x8973001A ^ (v524 - 1568529391);
  v532 = (v487 ^ 0x8D06EBAC) + (((v521 ^ 0xD63E4512) + (v487 ^ 0x8D06EBAC)) ^ 0x3BF6EF6F) + ((2 * ((v521 ^ 0xD63E4512) + (v487 ^ 0x8D06EBAC))) & 0x77EDDEDE) + v524;
  v533 = ((v531 + 1124944327 - ((2 * v531) & 0x861A938E)) ^ 0x430D49C7) + (v510 ^ 0xEC2F03F);
  v534 = (v474 ^ 0x555271AC) + (v525 ^ 0xBEFDEC06) + ((v126 >> 25) ^ 0x5E32BBEE) + ((2 * v525) & 0x7DFBD80C) + ((2 * (v126 >> 25)) & 0xBC6577DC) - 489727988;
  v535 = (v528 ^ 0x3118008) - ((2 * v528) & 0xF9DCFFEE) + ((v532 + 1720399010) ^ 0x1026405A) + (v534 ^ 0x33F7CFE7) - ((2 * (v532 + 1720399010)) & 0xDFB37F4A) + ((2 * v534) & 0x67EF9FCE) + 2;
  v536 = ((v533 - ((2 * v533) & 0x9D6C48C8) - 826923932) ^ 0x1961C6E7 ^ (v530 - ((2 * v530) & 0xAFAFC506) - 673717629)) + (v198 ^ 0xCB187A7D ^ (v535 - ((2 * v535 + 926320490) & 0x218B3E5C) + 1818288867));
  v537 = v536 - 528462676 - ((2 * v536) & 0xC1009958);
  v538 = v537 ^ 0xE0804CAC;
  v539 = (v504 ^ 0x6344573F ^ v537) + 16778499 + (((v537 ^ 0xE0804CAC) + (v521 ^ 0xD63E4512)) ^ 0xFEFFF7EF) + ((2 * ((v537 ^ 0xE0804CAC) + (v521 ^ 0xD63E4512))) & 0xFDFFEFDE) + 782;
  HIDWORD(v126) = v536;
  LODWORD(v126) = v537 ^ 0xE0804CAC;
  v540 = v539 - ((2 * v539) & 0xC2345A36);
  v541 = (v537 ^ 0xE0804CAC) - (v521 ^ 0xD63E4512);
  v542 = (v541 ^ 0xFFDF6ADE) + 2135330 + ((2 * v541) & 0xFFBED5BC);
  v543 = v542 ^ 0xC264ECC ^ ((v537 ^ 0xE0804CAC) + v505 + 203837132 - ((2 * ((v537 ^ 0xE0804CAC) + v505)) & 0x184C9D98));
  v544 = v543 - 831321217 - ((2 * v543) & 0x9CE616FE);
  v545 = v504 ^ 0x62DE3688 ^ (v540 - 518378213);
  v546 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x2F94BC82) + 399138369;
  HIDWORD(v126) = v546 ^ 0x4A5E41;
  LODWORD(v126) = v546 ^ 0x17800000;
  v547 = (v126 >> 23) - ((2 * (v126 >> 23)) & 0x6201C552);
  HIDWORD(v126) = (v547 - 251600215) ^ 0x3100E2A9;
  LODWORD(v126) = v547 + 822141609;
  v548 = v126 >> 30;
  HIDWORD(v126) = v537 ^ 0x4AC;
  LODWORD(v126) = v537 ^ 0xE0804800;
  v549 = v126 >> 11;
  v550 = v548 + 527710208 - ((2 * v548) & 0x3EE8743C) + 542;
  HIDWORD(v126) = v550 ^ 0x21E;
  LODWORD(v126) = v550 ^ 0x1F743800;
  v551 = v126 >> 11;
  HIDWORD(v126) = v537 ^ 0x2C;
  LODWORD(v126) = v537 ^ 0xE0804C80;
  v552 = v126 >> 6;
  HIDWORD(v126) = v537 ^ 0xCAC;
  LODWORD(v126) = v537 ^ 0xE0804000;
  v553 = v126 >> 13;
  HIDWORD(v126) = v537 ^ 0x804CAC;
  LODWORD(v126) = v537 ^ 0xE0000000;
  v554 = (v549 ^ 0x95EEBBFD) + ((v126 >> 25) ^ 0xDFD2FAB3) + (v552 ^ 0x3FFCE2FF) + ((2 * (v126 >> 25)) & 0xBFA5F566) + ((2 * v549) & 0x2BDD77FA) + ((2 * v552) & 0x7FF9C5FE);
  HIDWORD(v126) = v537 ^ 0x4CAC;
  LODWORD(v126) = v537 ^ 0xE0800000;
  v555 = ((v545 - 2114705756) ^ 0x7AE7F7EF) + ((2 * (v545 - 2114705756)) & 0xF5CFEFDE) + (v487 ^ 0x2237BF28 ^ (v554 - ((2 * v554 + 344116386) & 0x5E62A908) - 109921579)) - 2062022639;
  v556 = ((v126 >> 22) ^ 0xDBA3F79F) + (v553 ^ 0x78BF7BE3) + ((2 * (v126 >> 22)) & 0xB747EF3E) + ((2 * v553) & 0xF17EF7C6) + (((v544 ^ 0xCE730B7F) + v524 - 1568529391) ^ 0x64080018) - ((2 * ((v544 ^ 0xCE730B7F) + v524 - 1568529391)) & 0x37EFFFCE) + (v551 ^ 0x8D8FDFE3) + ((2 * v551) & 0x1B1FBFC6) + (v875 ^ 0x85E37B69 ^ (v555 - ((2 * v555) & 0x36DEB898) - 1687200692)) - 1174098813;
  v557 = v556 + 1521213440 - ((2 * v556) & 0xB557C5CE);
  v558 = v557 + 743;
  HIDWORD(v126) = (v557 + 743) ^ 0xFFFFFFE7;
  LODWORD(v126) = (v557 + 743) ^ 0x5AABE2C0;
  v559 = v126 >> 6;
  HIDWORD(v126) = (v557 + 743) ^ 0x2BE2E7;
  LODWORD(v126) = (v557 + 743) ^ 0x5A800000;
  v560 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0xCE0FFB44);
  HIDWORD(v126) = (v557 + 743) ^ 0xABE2E7;
  LODWORD(v126) = (v557 + 743) ^ 0x5A000000;
  v561 = v126 >> 25;
  v562 = (v557 + 743) ^ 0x5AABE2E7;
  HIDWORD(v126) = (v557 + 743) ^ 0x2E7;
  LODWORD(v126) = (v557 + 743) ^ 0x5AABE000;
  v563 = (v561 ^ 0xF7F7BDE7) + (v559 ^ 0x7EDD1D63) + ((v126 >> 11) ^ 0x88084868) + ((2 * v561) & 0xEFEF7BCE) + ((2 * v559) & 0xFDBA3AC6) - ((2 * (v126 >> 11)) & 0xEFEF6F2E) + 1;
  HIDWORD(v126) = -764 - v557;
  LODWORD(v126) = (v557 + 743) ^ 0x5AABE2E4;
  v564 = (v504 ^ 0x3B3D7F12 ^ (v563 - ((2 * v563 + 38123674) & 0x71F2C902) - 1172553522)) + (v521 ^ 0x5912C0F3 ^ (v541 - ((2 * v541) & 0x1E590BC2) - 1892907551));
  v565 = (v557 + 743) ^ v537;
  v566 = (v565 ^ 0x28C54199 ^ (v562 + (v521 ^ 0xD63E4512) - ((2 * (v562 + (v521 ^ 0xD63E4512))) & 0x25DDDFA4) - 1829834798)) + v542;
  v567 = HIDWORD(v874) + (v564 ^ 0xCCDDDF7F) + ((2 * v564) & 0x99BBBEFE) + 1927184730;
  v568 = (((__PAIR64__((v557 + 743) ^ 0x2E7, (v557 + 743) ^ 0x5AABE000) >> 13) - ((2 * (__PAIR64__((v557 + 743) ^ 0x2E7, (v557 + 743) ^ 0x5AABE000) >> 13)) & 0x779019EC) + 1002966262) ^ ((v126 >> 2) - ((2 * (v126 >> 2)) & 0xC3712788) + 1639486404) ^ (v560 + 1728576930) ^ 0xC66F228B ^ (v566 - ((2 * v566) & 0xF6308036) - 82296805)) + (v567 ^ 0xA6976D73) + ((2 * v567) & 0x4D2EDAE6) + 1500025485;
  v569 = v568 + 1967210496 - ((2 * v568) & 0xEA828916);
  v570 = v569 + 1163;
  v571 = (v569 + 1163) ^ 0x7541448B;
  v572 = v571 + (v537 ^ 0xE0804CAC) - 856655347 - ((2 * (v571 + (v537 ^ 0xE0804CAC))) & 0x99E0F41A);
  HIDWORD(v126) = (v569 + 1163) ^ 0x1448B;
  LODWORD(v126) = (v569 + 1163) ^ 0x75400000;
  v573 = v126 >> 22;
  HIDWORD(v126) = (v569 + 1163) ^ 0x141448B;
  LODWORD(v126) = (v569 + 1163) ^ 0x74000000;
  v574 = v126 >> 25;
  HIDWORD(v126) = (v569 + 1163) ^ 0xB;
  LODWORD(v126) = (v569 + 1163) ^ 0x75414480;
  v575 = v126 >> 6;
  v576 = ((2 * (v571 - v562)) & 0x9533B71E) + ((v571 - v562) ^ 0xCA99DB8F);
  v577 = (v569 + 1163) ^ 0x48B;
  v578 = (v569 + 1163) ^ 0x75414000;
  v579 = (v537 ^ 0x95C10827 ^ (v569 + 1163)) + ((v571 + v562) ^ 0x5F7EC5EE) + ((2 * (v571 + v562)) & 0xBEFD8BDC) - 1602143726;
  v580 = v579 - ((2 * v579) & 0xB05A7D0);
  v581 = ((v576 + 895886449) ^ v572 ^ 0xCCF07A0D) + 2037721256 - 2 * (((v576 + 895886449) ^ v572 ^ 0xCCF07A0D) & 0x797528BA ^ ((v576 + 895886449) ^ v572) & 0x12);
  HIDWORD(v126) = -v569;
  LODWORD(v126) = (v569 + 1163) ^ 0x75414488;
  v582 = (v573 ^ 0x254B4D02) - ((2 * v573) & 0xB56965FA) - 625691906 + (((v126 >> 2) - ((2 * (v126 >> 2)) & 0x2211032) - 2129623015) ^ ((__PAIR64__(v577, v578) >> 13) - ((2 * (__PAIR64__(v577, v578) >> 13)) & 0x9B5FB270) + 1303370040) ^ 0xCCBF5121);
  v583 = (v580 - 2055023640) ^ v565 ^ (v582 - ((2 * v582) & 0x255A6F18) - 1834141812);
  v584 = (v574 ^ 0x93919848) - ((2 * v574) & 0xD8DCCF6E) + 1819174840 + (((__PAIR64__(v577, v578) >> 11) - ((2 * (__PAIR64__(v577, v578) >> 11)) & 0xC0F8EF58) - 528713812) ^ (v575 - ((2 * v575) & 0x836B9B0C) - 1045049978) ^ 0x21C9BA2A);
  HIDWORD(v126) = v583 ^ 0x1044A2F;
  LODWORD(v126) = v583 ^ 0xAC000000;
  v585 = (v126 >> 26) + 303781888 - ((2 * (v126 >> 26)) & 0x2436BDC6) + 1763;
  HIDWORD(v126) = v585 ^ 0x6E3;
  LODWORD(v126) = v585 ^ 0x121B5800;
  v586 = (v521 ^ 0xAB417E8F ^ (v584 - ((2 * v584) & 0xFAFE773A) + 2105490333)) + (((v581 ^ 0x797528A8) - v538) ^ 0x3FE7F7FB) + ((2 * ((v581 ^ 0x797528A8) - v538)) & 0x7FCFEFF6) - 1072166907;
  v587 = (v126 >> 11) + 55496011 + (~(2 * (v126 >> 11)) | 0xF9626569) + 1;
  HIDWORD(v126) = v587 ^ 0x34ECD4B;
  LODWORD(v126) = v587;
  v588 = (v218 ^ 0x3AE50564) + (v586 ^ 0x776C5ABE) + ((2 * v586) & 0xEED8B57C) - 165353936;
  v589 = ((2 * v588) & 0x679DFB90) + (v588 ^ 0x33CEFDC8) + ((v126 >> 27) ^ 0xEF5F7FDD) + ((2 * (v126 >> 27)) & 0xDEBEFFBA);
  v590 = v589 + 898968535;
  v591 = v589 + 898968535 - ((2 * v589 - 1180498762) & 0xB18752F8);
  v592 = v591 ^ 0x58C3A97C;
  v593 = ((2 * ((v591 ^ 0x58C3A97C) - v571)) & 0xFAF7FF6E) + (((v591 ^ 0x58C3A97C) - v571) ^ 0xFD7BFFB7);
  HIDWORD(v126) = v591 ^ 0x3C;
  LODWORD(v126) = v591 ^ 0x58C3A940;
  v594 = v126 >> 6;
  HIDWORD(v126) = v591 ^ 0x17C;
  LODWORD(v126) = v591 ^ 0x58C3A800;
  v595 = v126 >> 11;
  HIDWORD(v126) = v591 ^ 0x97C;
  LODWORD(v126) = v591 ^ 0x58C3A000;
  v596 = v126 >> 13;
  v597 = (v570 ^ 0x2D82EDF7 ^ v591) + (((v591 ^ 0x58C3A97C) + v562) ^ 0xE11FBF66) + ((2 * ((v591 ^ 0x58C3A97C) + v562)) & 0xC23F7ECC) + 518013082;
  HIDWORD(v126) = v591 ^ 0xC3A97C;
  LODWORD(v126) = v591 ^ 0x58000000;
  v598 = v126 >> 25;
  HIDWORD(v126) = v590;
  LODWORD(v126) = v591 ^ 0x58C3A97C;
  v599 = ((v126 >> 2) ^ 0x77BF6FEF) + (v596 ^ 0x7EFDCDB8) + ((2 * v596) & 0xFDFB9B70) + ((2 * (v126 >> 2)) & 0xEF7EDFDE);
  HIDWORD(v126) = v591 ^ 0x3A97C;
  LODWORD(v126) = v591 ^ 0x58C00000;
  v600 = v538 + (v594 ^ 0x94008B24) + (v595 ^ 0xEFEBF9F7) + (v598 ^ 0xFFBF8BEE) + ((2 * v595) & 0xDFD7F3EE) + ((2 * v598) & 0xFF7F17DC) - ((2 * v594) & 0xD7FEE9B6);
  v601 = (v558 ^ 0xD690F655 ^ (v597 - ((2 * v597) & 0x18762964) - 1942285134)) + ((v600 + 2085875447) ^ 0x19FBFBF3) + ((2 * (v600 + 2085875447)) & 0x33F7F7E6) - 435944435;
  v602 = (v558 ^ 0xFD97B464 ^ v591) + 42205257 + v593 + 1;
  v603 = v576 + (v602 ^ 0x4AEFB9EF) + ((2 * v602) & 0x95DF73DE) - 361338238 + (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x5BCD4FF6) + 770091003) ^ 0x835A5281 ^ (v599 - ((2 * v599 + 310740146) & 0x5D79EAF4) - 1207978029));
  v604 = (HIDWORD(v875) ^ 0x7657423C) + (v601 ^ 0x8ABE7973) + ((2 * v601) & 0x157CF2E6) - 943037643;
  v605 = ((2 * v603) & 0xE39FFB8E) + (v603 ^ 0xF1CFFDC7) + (v604 ^ 0xFFFFF5F8) + ((2 * v604) & 0xFFFFEBF0);
  v606 = v605 - ((2 * v605 + 476059778) & 0xC4A54C0E);
  v607 = v606 - 259870136;
  HIDWORD(v126) = 259870115 - v606;
  LODWORD(v126) = (v606 - 259870136) ^ 0xE252A604;
  v608 = v126 >> 2;
  HIDWORD(v126) = v607 ^ 7;
  LODWORD(v126) = v607 ^ 0xE252A600;
  v609 = v126 >> 6;
  HIDWORD(v126) = v607 ^ 0x607;
  LODWORD(v126) = v607 ^ 0xE252A000;
  v610 = v126 >> 11;
  HIDWORD(v126) = v607 ^ 0x607;
  LODWORD(v126) = v607 ^ 0xE252A000;
  v611 = v126 >> 13;
  HIDWORD(v126) = v607 ^ 0x52A607;
  LODWORD(v126) = v607 ^ 0xE2000000;
  v612 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x8466EAF2);
  v613 = (v611 ^ 0x6FFBFB4D) + (v608 ^ 0xBDBFFBFE) + ((2 * v608) & 0x7B7FF7FC) + ((2 * v611) & 0xDFF7F69A);
  v614 = v613 - ((2 * v613 + 612897130) & 0x3598D2CA);
  v615 = v607 ^ 0xE252A607;
  v616 = (((v607 ^ 0xE252A607) - v571) ^ 0xE7FDFFE7) + (((v607 ^ 0xE252A607) - (v591 ^ 0x58C3A97C)) ^ 0x7B7AFFF8) + ((2 * ((v607 ^ 0xE252A607) - (v591 ^ 0x58C3A97C))) & 0xF6F5FFF0) + ((2 * ((v607 ^ 0xE252A607) - v571)) & 0xCFFBFFCE);
  v617 = (v610 ^ 0x80189E00) + (v609 ^ 0xFDBDA7FE) + ((2 * v609) & 0xFB7B4FFC) - ((2 * v610) & 0xFFCEC3FE) + 1;
  v618 = v616 - ((2 * v616 + 957218882) & 0x2E8C5CD2) + 869084810;
  HIDWORD(v126) = v607 ^ 0x12A607;
  LODWORD(v126) = v607 ^ 0xE2400000;
  v619 = (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x83ABB830) - 1042949096) ^ 0x5B19B57D ^ (v614 + 1829794330)) - ((((v593 + 42205257) ^ 0x97462E69 ^ v618) + 1998525030 - ((2 * ((v593 + 42205257) ^ 0x97462E69 ^ v618)) & 0xEE3E24CC)) ^ 0x771F1266);
  v620 = v558 ^ v570 ^ (v612 - 1036814983) ^ v618 ^ 0x19F1485A ^ (v617 - ((2 * v617 + 72578050) & 0xC6DD6A4C) - 442994905);
  v621 = (v619 ^ 0xBFDBBFFF) + ((2 * v619) & 0x7FB77FFE) + (HIDWORD(v876) ^ 0x470B01FB ^ (v620 - ((2 * v620 + 1697642736) & 0x7C7F6E7C) + 819442614)) + 1076117505;
  v622 = v621 - 1355380998;
  v623 = v621 - 1355380998 - ((2 * v621) & 0x5E6D0DF4);
  v624 = v623 ^ 0xAF3686FA;
  v625 = (v623 ^ 0xAF3686FA) + (v591 ^ 0x58C3A97C) - ((2 * ((v623 ^ 0xAF3686FA) + (v591 ^ 0x58C3A97C))) & 0xFF582F06);
  HIDWORD(v126) = v623 ^ 0x3A;
  LODWORD(v126) = v623 ^ 0xAF3686C0;
  v626 = (v126 >> 6) - ((2 * (v126 >> 6)) & 0x79AB9224);
  HIDWORD(v126) = v623 ^ 0x13686FA;
  LODWORD(v126) = v623 ^ 0xAE000000;
  v627 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x2EB9F630);
  HIDWORD(v126) = v623 ^ 0x6FA;
  LODWORD(v126) = v623 ^ 0xAF368000;
  v628 = v570 ^ (v626 + 1020643602) ^ ((v126 >> 11) - ((2 * (v126 >> 11)) & 0x4790580A) + 600321029) ^ (v627 + 391969560);
  v629 = v591 ^ 0xBA910F7B ^ v607;
  v630 = ((v629 - (v591 ^ 0x58C3A97C)) ^ 0xFFFFEED1) + ((2 * (v629 - (v591 ^ 0x58C3A97C))) & 0xFFFFDDA2) + 4399 + (v628 ^ 0x7D005A84);
  HIDWORD(v126) = v622 ^ 2;
  LODWORD(v126) = v623 ^ 0xAF3686F8;
  v631 = v126 >> 2;
  HIDWORD(v126) = v623 ^ 0x6FA;
  LODWORD(v126) = v623 ^ 0xAF368000;
  v632 = v126 >> 13;
  HIDWORD(v126) = v623 ^ 0x3686FA;
  LODWORD(v126) = v623 ^ 0xAF000000;
  v633 = ((2 * v630) & 0xF17EFFA0) + (v630 ^ 0xF8BF7FD0) + 1242945280 - ((2 * (((2 * v630) & 0xF17EFFA0) + (v630 ^ 0xF8BF7FD0)) + 1408402524) & 0x403929A4);
  v634 = v623 ^ v607;
  v635 = (v623 ^ v607 ^ 0x32C8377E ^ (v625 + 2141984643)) - v629;
  v636 = ((v126 >> 22) ^ 0x5FBC9F7F) + (v632 ^ 0xEFFD7FB1) + (v631 ^ 0x6FDDF9E9) + ((2 * (v126 >> 22)) & 0xBF793EFE) + ((2 * v632) & 0xDFFAFF62) + ((2 * v631) & 0xDFBBF3D2) + (v635 ^ 0x85ECFFB9) + ((2 * v635) & 0xBD9FF72) - 1166350546 + (HIDWORD(v878) ^ 0x4CBFFE26 ^ v633);
  v637 = v636 - 1103506378;
  v638 = v636 - 1103506378 - ((2 * v636) & 0x7C73A86C);
  HIDWORD(v126) = v638 ^ 0x39D436;
  LODWORD(v126) = v638 ^ 0xBE000000;
  v639 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0xAF8A8C4);
  HIDWORD(v126) = v638 ^ 0x36;
  LODWORD(v126) = v638 ^ 0xBE39D400;
  v640 = v126 >> 6;
  HIDWORD(v126) = v638 ^ 0x436;
  LODWORD(v126) = v638 ^ 0xBE39D000;
  v641 = ((v126 >> 11) ^ 0x624C2303) + (v640 ^ 0xEFFCFFFF) + ((2 * v640) & 0xDFF9FFFE) - ((2 * (v126 >> 11)) & 0x3B67B9F8) + 1;
  v642 = v641 - ((2 * v641 + 1533917690) & 0x54ADC6E0);
  v643 = v638 ^ 0xBE39D436;
  v644 = (v607 ^ 0x5C6B7231 ^ v638) + (((v638 ^ 0xBE39D436) + (v623 ^ 0xAF3686FA)) ^ 0x97B7FAF9) + ((2 * ((v638 ^ 0xBE39D436) + (v623 ^ 0xAF3686FA))) & 0x2F6FF5F2) + 1749550343;
  HIDWORD(v126) = v638 ^ 0x39D436;
  LODWORD(v126) = v638 ^ 0xBE000000;
  v645 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x87E7BFD4);
  HIDWORD(v126) = v637 ^ 2;
  LODWORD(v126) = v638 ^ 0xBE39D434;
  v646 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0xEBA1E354);
  HIDWORD(v126) = v638 ^ 0x1436;
  LODWORD(v126) = v638 ^ 0xBE39C000;
  v647 = ((v645 + 1140056042) ^ 0xE9A53C9A ^ (v642 + 1477296237)) + v592;
  v648 = (v634 ^ 0x79B1B35D ^ (v644 - ((2 * v644) & 0x69AB2740) + 886412192)) + ((v646 + 1976627626) ^ ((v126 >> 13) - ((2 * (v126 >> 13)) & 0x642B86CC) + 840287078) ^ (v639 - 2055449502) ^ 0xC2B966AE);
  v649 = (HIDWORD(v877) ^ 0x12D764B7) + (((v623 ^ 0x25F4A28E ^ (v647 - ((2 * v647) & 0x158448E8) - 1966988172)) + 846739860) ^ 0x5FF67EBA) + ((2 * ((v623 ^ 0x25F4A28E ^ (v647 - ((2 * v647) & 0x158448E8) - 1966988172)) + 846739860)) & 0xBFECFD74) - 1609989817;
  v650 = ((2 * v648) & 0xFFADEDEC) + (v648 ^ 0xFFD6F6F6) + (v649 ^ 0xEC7D6757) + ((2 * v649) & 0xD8FACEAE);
  v651 = v650 - ((2 * v650 + 660030310) & 0xC505AB72);
  v652 = v651 - 164726932;
  v653 = (v651 - 164726932) ^ 0xE282D5B9;
  v654 = ((2 * (v653 - (v638 ^ 0xBE39D436))) & 0xBEABFFFE) + ((v653 - (v638 ^ 0xBE39D436)) ^ 0x5F55FFFF);
  HIDWORD(v126) = (v651 - 164726932) ^ 0xFFFFFFF9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282D580;
  v655 = v126 >> 6;
  HIDWORD(v126) = (v651 - 164726932) ^ 0x82D5B9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE2000000;
  v656 = v126 >> 25;
  HIDWORD(v126) = (v651 - 164726932) ^ 0x5B9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282D000;
  v657 = v126 >> 11;
  HIDWORD(v126) = (v651 - 164726932) ^ 0x15B9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282C000;
  v658 = v126 >> 13;
  HIDWORD(v126) = (v651 - 164726928) ^ 1;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282D5B8;
  v659 = v126 >> 2;
  v660 = (v658 ^ 0x848010D6) + (v659 ^ 0xF2EB7B77);
  v661 = (v656 ^ 0xDEAB7F4D) + ((2 * v656) & 0xBD56FE9A) + 559186100 + ((v657 - ((2 * v657) & 0x7EE4E356) + 1064464811) ^ (v655 - ((2 * v655) & 0x2567CA22) - 1833704175) ^ 0x523E6B45);
  v662 = ((2 * v659) & 0xE5D6F6EE) - ((2 * v658) & 0xF6FFDE52) + v660 + 1;
  HIDWORD(v126) = v652 ^ 0x2D5B9;
  LODWORD(v126) = v652 ^ 0xE2800000;
  v663 = ((v638 ^ 0xBE39D436) - (v623 ^ 0xAF3686FA) - ((2 * ((v638 ^ 0xBE39D436) - (v623 ^ 0xAF3686FA))) & 0xE1F330C6) + 1895405667) ^ v623 ^ v652 ^ (v654 - 1599471615);
  v664 = v615 + (v661 ^ 0xD5DF16BF) + ((2 * v661) & 0xABBE2D7E) + 706799937;
  v665 = (((v663 ^ 0x3D4DCB20) - 1930955646 - 2 * ((v663 ^ 0x3D4DCB20) & 0xCE7F486 ^ v663 & 4)) ^ 0x8CE7F482) + (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x6A3D34A4) - 1256285614) ^ 0x2734DAEC ^ (v662 - 2 * ((v662 + 143946674) & 0x122A40BF ^ (v660 + 1) & 1) + 448705648));
  v666 = v653 + ((((2 * v623) ^ 0x5E6D0DF4) - 1862363686 - ((2 * ((2 * v623) ^ 0x5E6D0DF4)) & 0x21FD2BB4)) ^ 0x90FE95DA);
  v667 = v876 + (v666 ^ 0x7F9775CD) + ((2 * v666) & 0xFF2EEB9A) - v654 + (v664 ^ 0x7BFE77BD) + ((2 * v664) & 0xF7FCEF7A) - 1610241713;
  v668 = ((2 * v667) & 0xF1E7FFBA) + (v667 ^ 0xF8F3FFDD) + (v665 ^ 0x39D8FFED) + ((2 * v665) & 0x73B1FFDA);
  v669 = v668 - ((2 * v668 + 442892396) & 0x4DEF403A) - 198533037;
  v670 = v669 ^ 0x26F7A01D;
  HIDWORD(v126) = v669 ^ 0x37A01D;
  LODWORD(v126) = v669 ^ 0x26C00000;
  v671 = v126 >> 22;
  v672 = (v669 ^ 0x26F7A01D) + (v638 ^ 0xBE39D436);
  v673 = v638 ^ 0x5CBB018F ^ v652;
  v674 = v673 + v643 - ((2 * (v673 + v643)) & 0x1C97E1F8);
  v675 = v673 + 558499 + (v672 ^ 0xFFF77A5D);
  HIDWORD(v126) = v669 ^ 0x1D;
  LODWORD(v126) = v669 ^ 0x26F7A000;
  v676 = v126 >> 13;
  HIDWORD(v126) = v669 ^ 0x1D;
  LODWORD(v126) = v669 ^ 0x26F7A000;
  v677 = v126 >> 11;
  v678 = v675 + ((2 * v672) & 0xFFEEF4BA);
  HIDWORD(v126) = v669 ^ 0x1D;
  LODWORD(v126) = v669 ^ 0x26F7A000;
  v679 = v126 >> 6;
  HIDWORD(v126) = v669 ^ 0xF7A01D;
  LODWORD(v126) = v669 ^ 0x26000000;
  v680 = v126 >> 25;
  v681 = (v652 ^ 0xC47575A4 ^ v669) + (v678 ^ 0x861211B0) - ((2 * v678) & 0xF3DBDC9E);
  HIDWORD(v126) = v669 ^ 1;
  LODWORD(v126) = v669 ^ 0x26F7A01C;
  v682 = v624 + (v680 ^ 0x824064E6) + (v677 ^ 0x204E4275) + (v679 ^ 0x8210260) - ((2 * v677) & 0xBF637B14) - ((2 * v680) & 0xFB7F3632) - ((2 * v679) & 0xEFBDFB3E) + 1431328325;
  v683 = (v674 + 239857916) ^ 0xEA50F302 ^ (v682 - ((2 * v682) & 0xC83607FC) - 467991554);
  v684 = (v671 ^ 0xAE0FDFBE) + (v676 ^ 0x77BCF3BB) + ((v126 >> 2) ^ 0x7FBDFB7F) + ((2 * v671) & 0x5C1FBF7C) + ((2 * v676) & 0xEF79E776) + ((2 * (v126 >> 2)) & 0xFF7BF6FE) + ((v681 + 2045636176) ^ 0xFFDA9D3F) + ((2 * (v681 + 2045636176)) & 0xFFB53A7E) + 1520079817 + (v880 ^ 0x6991C500 ^ (v683 - ((2 * v683 + 516746820) & 0x364B17A8) + 1250689782));
  v685 = v684 - 814556247 - ((2 * v684) & 0x9EE5B752);
  v686 = ((2 * ((v685 ^ 0xCF72DBA9) - v653)) & 0x7DEEB6F6) + (((v685 ^ 0xCF72DBA9) - v653) ^ 0xBEF75B7B);
  v687 = ((2 * ((v685 ^ 0xCF72DBA9) - (v669 ^ 0x26F7A01D))) & 0xFF5B7BBE) + (((v685 ^ 0xCF72DBA9) - (v669 ^ 0x26F7A01D)) ^ 0x7FADBDDF);
  HIDWORD(v126) = v685 ^ 0x1BA9;
  LODWORD(v126) = v685 ^ 0xCF72C000;
  v688 = v126 >> 13;
  HIDWORD(v126) = v685 ^ 0x29;
  LODWORD(v126) = v685 ^ 0xCF72DB80;
  v689 = v126 >> 6;
  v690 = ((v686 + 1091085445) ^ (v687 - 2142092767)) + 1494783960 - ((2 * ((v686 + 1091085445) ^ (v687 - 2142092767))) & 0xB2312FB0);
  HIDWORD(v126) = v685 ^ 0x3A9;
  LODWORD(v126) = v685 ^ 0xCF72D800;
  v691 = v126 >> 11;
  v692 = (((v669 ^ 0x26F7A01D) + v653) ^ 0x22921288) - ((2 * ((v669 ^ 0x26F7A01D) + v653)) & 0xBADBDAEE) + v687 + v686 + 1;
  HIDWORD(v126) = v685 ^ 0x172DBA9;
  LODWORD(v126) = v685 ^ 0xCE000000;
  v693 = v126 >> 25;
  HIDWORD(v126) = v685 ^ 1;
  LODWORD(v126) = v685 ^ 0xCF72DBA8;
  v694 = v126 >> 2;
  v695 = v643 + (v693 ^ 0x6038122) + (v689 ^ 0x229280D) + (v691 ^ 0xFFDFAFAF) - ((2 * v689) & 0xFBADAFE4) - ((2 * v693) & 0xF3F8FDBA);
  v696 = (v695 + ((2 * v691) & 0xFFBF5F5E) - 135026910 - ((2 * (v695 + ((2 * v691) & 0xFFBF5F5E) - 135026910)) & 0xA4DE7A50) + 1383021864) ^ 0x576938D4 ^ ((v690 ^ 0x591897D8) + v653 - ((2 * ((v690 ^ 0x591897D8) + v653)) & 0xA0C0BF8) + 84280828);
  HIDWORD(v126) = v685 ^ 0x32DBA9;
  LODWORD(v126) = v685 ^ 0xCF400000;
  v697 = ((v126 >> 22) ^ 0xEA7DFAF5) + (v694 ^ 0x7DF4FDFF) + (v688 ^ 0x18100D10) + ((2 * (v126 >> 22)) & 0xD4FBF5EA) + ((2 * v694) & 0xFBE9FBFE) - ((2 * v688) & 0xCFDFE5DE) + 1;
  v698 = (HIDWORD(v895) ^ 0x6379A397 ^ (v696 - ((2 * v696 + 1845629730) & 0x70EC775C) - 277396161)) + ((v692 - ((2 * v692 + 1032955962) & 0x6BEB931A) - 725705302) ^ 0x34C3A8F1 ^ (v697 - ((2 * v697 + 49935350) & 0x26CC2F8) - 2135729289));
  v699 = v698 + 540872704 - ((2 * v698) & 0x407A20FE);
  v700 = v699 + 127;
  v701 = (v699 + 127) ^ 0x203D107F;
  v702 = ((2 * (v701 + (v685 ^ 0xCF72DBA9))) & 0xFD33FAFE) + ((v701 + (v685 ^ 0xCF72DBA9)) ^ 0x7E99FD7F);
  HIDWORD(v126) = (v699 + 127) ^ 0x7F;
  LODWORD(v126) = (v699 + 127) ^ 0x203D1000;
  v703 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0xFF902262);
  v704 = ((2 * (v701 - (v669 ^ 0x26F7A01D))) & 0xADEB7CFE) + ((v701 - (v669 ^ 0x26F7A01D)) ^ 0x56F5BE7F);
  v705 = (v685 ^ 0xEF4FCBD6 ^ (v699 + 127)) + 1458945663 - v704;
  HIDWORD(v126) = -128 - v699;
  LODWORD(v126) = (v699 + 127) ^ 0x203D1040;
  v706 = (v669 ^ 0xE9857BB4 ^ v685) + v702 + v704 + 712000514;
  v707 = ((v126 >> 6) - ((2 * (v126 >> 6)) & 0xA6A14F6E) - 749688905) ^ (v703 - 3665615);
  HIDWORD(v126) = (v699 + 127) ^ 0x3D107F;
  LODWORD(v126) = (v699 + 127) ^ 0x20000000;
  v708 = ((v126 >> 25) ^ 0x804A88C8) - ((2 * (v126 >> 25)) & 0xFF6AEE6E) + 2142598968 + (v707 ^ 0x2C98B686);
  v709 = v126 >> 22;
  v710 = v653 + (v708 ^ 0xFFBB5FFE) + ((2 * v708) & 0xFF76BFFC) + 4497410;
  HIDWORD(v126) = -156 - v699;
  LODWORD(v126) = (v699 + 127) ^ 0x203D107C;
  v711 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x3D9CD56A);
  HIDWORD(v126) = v700 ^ 0xFFFFF07F;
  LODWORD(v126) = v700 ^ 0x203D0000;
  v712 = v669 ^ (v705 - ((2 * v705) & 0x46EE0F04) - 1552480382) ^ 0xF521C113 ^ (v710 - ((2 * v710) & 0xE142CD18) + 1889625740);
  v713 = (v709 ^ 0x53010986) - ((2 * v709) & 0x59FDECF2) + (v706 ^ 0xC00640B0) + (((v126 >> 13) - ((2 * (v126 >> 13)) & 0xE89AE55E) + 1951232687) ^ (v711 - 1630639435) ^ 0xEA83181A) - ((2 * v706) & 0x7FF37E9E) - 319244854;
  v714 = v878 + ((v712 - 1298429573) ^ 0x57EE7FDF) + ((2 * (v712 - 1298429573)) & 0xAFDCFFBE) - 1475248095;
  v715 = ((2 * v713) & 0xCFDFFD72) + (v713 ^ 0xE7EFFEB9) + (v714 ^ 0x6EF9BDF7) + ((2 * v714) & 0xDDF37BEE);
  v716 = v715 - 2 * ((v715 + 152453968) & 0x17B09938 ^ v715 & 8) - 1060709248;
  v717 = v716 ^ 0x17B09930;
  HIDWORD(v126) = v716 ^ 0x130;
  LODWORD(v126) = v716 ^ 0x17B09800;
  v718 = v126 >> 11;
  HIDWORD(v126) = v715;
  LODWORD(v126) = v716 ^ 0x17B09930;
  v719 = v126 >> 2;
  HIDWORD(v126) = v716 ^ 0x1B09930;
  LODWORD(v126) = v716 ^ 0x16000000;
  v720 = v126 >> 25;
  v721 = v719 - ((2 * v719) & 0xEF8CC09C);
  HIDWORD(v126) = v716 ^ 0x309930;
  LODWORD(v126) = v716 ^ 0x17800000;
  v722 = v126 >> 22;
  v723 = v701 + (((v716 ^ 0x17B09930) + (v685 ^ 0xCF72DBA9)) ^ 0x6FFFFB9E) + ((2 * ((v716 ^ 0x17B09930) + (v685 ^ 0xCF72DBA9))) & 0xDFFFF73C) - 1879047070;
  v724 = (v716 ^ 0x17B09930) + (v723 ^ 0x62522089) - ((2 * v723) & 0x3B5BBEEC) - 1649549449;
  v725 = v724 - 504901833 - ((2 * v724) & 0xC3CF9E6E);
  v726 = v716 ^ v700;
  v727 = (v716 ^ v700 ^ 0x378D894F) - (v685 ^ 0xD8C24299 ^ v716);
  HIDWORD(v126) = v716 ^ 0x30;
  LODWORD(v126) = v716 ^ 0x17B09900;
  v728 = v126 >> 6;
  v729 = ((v702 - 2124021119) ^ 0xE1E7CF37 ^ v725) - 1864837430 - ((2 * ((v702 - 2124021119) ^ 0xE1E7CF37 ^ v725)) & 0x21B1AD94);
  HIDWORD(v126) = v716 ^ 0x1930;
  LODWORD(v126) = v716 ^ 0x17B08000;
  v730 = (v722 ^ 0x55248442) - ((2 * v722) & 0x55B6F77A) - 1428456514 + ((v721 - 137994162) ^ ((v126 >> 13) - ((2 * (v126 >> 13)) & 0x11B08936) - 1999092581) ^ 0x7F1E24D5);
  v731 = (v730 ^ 0xEFFBBFB7) + ((2 * v730) & 0xDFF77F6E) + 268714057 + (v729 ^ 0x90D8D6CA);
  v732 = (v685 ^ 0xCF72DBA9) + (v727 ^ 0x5AFDD7F3) + ((2 * v727) & 0xB5FBAFE6) - 1526585331;
  v733 = v670 + (v720 ^ 0x66450E08) + (v728 ^ 0x147A019) + (v718 ^ 0x29DF73FD) - ((2 * v728) & 0xFD70BFCC) - ((2 * v720) & 0x3375E3EE) + ((2 * v718) & 0x53BEE7FA) + (v732 ^ 0x404C9290) - ((2 * v732) & 0x7F66DADE) + 776424274;
  v734 = (HIDWORD(v893) ^ 0x1AED6189 ^ (((2 * v733) & 0x9DFFFCFE) + (v733 ^ 0xCEFFFE7F) - ((2 * (((2 * v733) & 0x9DFFFCFE) + (v733 ^ 0xCEFFFE7F)) + 1960463116) & 0xC57E4622) + 489441431)) + (v731 ^ 0x5FDEEFDD) + ((2 * v731) & 0xBFBDDFBA) - 1608445917;
  v735 = v734 - 1334412071 - ((2 * v734) & 0x60ECF9B2);
  v736 = ((2 * (v735 ^ v716)) & 0x9F971BBE ^ 0xF850B92) + (v735 ^ v716 ^ 0x680D6836);
  HIDWORD(v126) = v735 ^ 0x4D9;
  LODWORD(v126) = v735 ^ 0xB0767800;
  v737 = v126 >> 11;
  v738 = v735 ^ 0xB0767CD9;
  HIDWORD(v126) = v735 ^ 0x99999999;
  LODWORD(v126) = v735 ^ 0xB0767CC0;
  v739 = v126 >> 6;
  HIDWORD(v126) = v735 ^ 0x767CD9;
  LODWORD(v126) = v735 ^ 0xB0000000;
  v740 = v126 >> 25;
  v741 = v736 + (v700 ^ 0x6FB49359 ^ v735) - ((2 * (v736 + (v700 ^ 0x6FB49359 ^ v735)) + 6874180) & 0xE2E5D7A);
  v742 = (((v735 ^ 0xB0767CD9) - (v716 ^ 0x17B09930)) ^ 0x7F5F2FF7) + ((v701 - (v735 ^ 0xB0767CD9)) ^ 0xF6E7EDFC) + ((2 * (v701 - (v735 ^ 0xB0767CD9))) & 0xEDCFDBF8) + ((2 * ((v735 ^ 0xB0767CD9) - (v716 ^ 0x17B09930))) & 0xFEBE5FEE);
  v743 = (v742 - ((2 * v742 + 326222874) & 0x4D8A128C) + 813558611) ^ v700;
  HIDWORD(v126) = v735 ^ 0x1CD9;
  LODWORD(v126) = v735 ^ 0xB0766000;
  v744 = v126 >> 13;
  v745 = (v740 ^ 0x80008C0) + (v737 ^ 0x8165E810) + (v739 ^ 0x5DFDF41E) + ((2 * v739) & 0xBBFBE83C) - ((2 * v740) & 0xEFFFEE7E) - ((2 * v737) & 0xFD342FDE);
  HIDWORD(v126) = v735 ^ 0x367CD9;
  LODWORD(v126) = v735 ^ 0xB0400000;
  v746 = v126 >> 22;
  HIDWORD(v126) = v743 ^ 0xF81939;
  LODWORD(v126) = v743 ^ 0x86000000;
  v747 = (v126 >> 24) - 461369883 - ((2 * (v126 >> 24)) & 0xC9000EF4) - 1643;
  HIDWORD(v126) = v735 ^ 1;
  LODWORD(v126) = v735 ^ 0xB0767CD8;
  v748 = v126 >> 2;
  HIDWORD(v126) = v747 ^ 0x7A;
  LODWORD(v126) = v747 ^ 0xE4800700;
  v749 = (v746 ^ 0x21E71040) + (v744 ^ 0x23E2820A) + (v748 ^ 0x5BFFE76E) + ((2 * v748) & 0xB7FFCEDC) - ((2 * v746) & 0xBC31DF7E) - ((2 * v744) & 0xB83AFBEA) + 2;
  v750 = (v685 ^ (v745 + 2 - 2 * ((v745 + 412883730) & 0x4AF9E444 ^ (v745 + 2) & 4) - 476709040) ^ 0xB1026966 ^ ((v126 >> 8) - ((2 * (v126 >> 8)) & 0x6912AD1E) - 1266067825)) + 1088089828;
  v751 = (v905 ^ 0x3EAF4F2D) + (v750 ^ 0xFFFF9FB5) + ((2 * v750) & 0xFFFF3F6A) + 24652;
  v752 = (v726 ^ (v741 - 1219780385) ^ 0x2B25DE16 ^ (v749 - ((2 * v749 + 1013779596) & 0x377EF3C8) - 101318614)) + (v751 ^ 0xC7F7FED) + ((2 * v751) & 0x18FEFFDA) - 209682413;
  v753 = v752 + 177102045 - ((2 * v752) & 0x151CB9BA);
  v754 = v753 ^ 0xA8E5CDD;
  v755 = (v753 ^ 0xA8E5CDD) + (v735 ^ 0xB0767CD9);
  HIDWORD(v126) = v753 ^ 0xDDDDDDDD;
  LODWORD(v126) = v753 ^ 0xA8E5CC0;
  v756 = (v126 >> 6) - ((2 * (v126 >> 6)) & 0x382780C2);
  HIDWORD(v126) = v753 ^ 1;
  LODWORD(v126) = v753 ^ 0xA8E5CDC;
  v757 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0xF573EDB2);
  HIDWORD(v126) = v753 ^ 0x4DD;
  LODWORD(v126) = v753 ^ 0xA8E5800;
  v758 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0x245739B6);
  HIDWORD(v126) = v753 ^ 0x8E5CDD;
  LODWORD(v126) = v753 ^ 0xA000000;
  v759 = v126 >> 25;
  HIDWORD(v126) = v753 ^ 0xE5CDD;
  LODWORD(v126) = v753 ^ 0xA800000;
  v760 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0xB3CCAB5E);
  HIDWORD(v126) = v753 ^ 0x1CDD;
  LODWORD(v126) = v753 ^ 0xA8E4000;
  v761 = v753 ^ v716;
  v762 = (v759 ^ 0x7FEE7BBF) + ((2 * v759) & 0xFFDCF77E) - 2146335678 + ((v758 + 304848091) ^ (v756 - 1676427167) ^ 0x71C7A345);
  v763 = (v761 ^ 0x29C556A2 ^ (v755 - ((2 * v755) & 0x69F7269E) + 888902479)) + v717;
  v764 = v736 + 808743457 + (v761 ^ 0xCF5FC287 ^ (v755 - ((2 * v755) & 0xA4C20ED4) - 765393046));
  v765 = (HIDWORD(v867) ^ 0x8B050AB5) + (v763 ^ 0xBEDFF77B) + ((2 * v763) & 0x7DBFEEF6) + ((v701 + (v762 ^ 0x47EFFBFB) + ((2 * v762) & 0x8FDFF7F6) - 1206909947) ^ 0x37EEEF73) + ((2 * (v701 + (v762 ^ 0x47EFFBFB) + ((2 * v762) & 0x8FDFF7F6) - 1206909947)) & 0x6FDDDEE6) - 544168403;
  v766 = (v764 ^ 0x20E2122) + ((v757 + 2059007705) ^ ((v126 >> 13) - ((2 * (v126 >> 13)) & 0x61C54EBC) + 820160350) ^ (v760 - 639216209) ^ 0x93BD0428) - ((2 * v764) & 0xFBE3BDBA) - 34480418;
  v767 = ((2 * v766) & 0xFFFFF7D8) + (v766 ^ 0xFFFFFBEC) + (v765 ^ 0xE3EDF7DF) + ((2 * v765) & 0xC7DBEFBE);
  v768 = v767 - ((2 * v767 + 941889642) & 0xFFBA4484);
  v769 = v768 + 468659831;
  v770 = (v768 + 468659831) ^ 2;
  v771 = (v768 + 468659831) ^ 0xFFDD2240;
  v772 = (v768 + 468659831) ^ 0x242;
  v773 = (v768 + 468659831) ^ 0xFFDD2000;
  v774 = (v768 + 468659831) ^ 0x1DD2242;
  v768 = -468659832 - v768;
  v775 = ((__PAIR64__(v772, v773) >> 11) ^ 0x7EB9F7FF) + ((__PAIR64__(v770, v771) >> 6) ^ 0x573FA5AF) + ((2 * (__PAIR64__(v770, v771) >> 6)) & 0xAE7F4B5E) + ((2 * (__PAIR64__(v772, v773) >> 11)) & 0xFD73EFFE);
  v776 = v775 - ((2 * v775 + 1410122916) & 0xBC12AA9C) + 135247776;
  v777 = (__PAIR64__(v772, v773) >> 13) - ((2 * (__PAIR64__(v772, v773) >> 13)) & 0x8267E3FE) + 1093923327;
  v778 = (v753 ^ 0xF5537E9F ^ v769) + (v735 ^ 0x4FAB5E9B ^ v769);
  v779 = v778 ^ 0x40C204D;
  v780 = (2 * v778) & 0xF7E7BF64;
  v781 = v769 ^ 0xFFDD2242;
  HIDWORD(v126) = v769 ^ 0x1D2242;
  LODWORD(v126) = v768;
  v782 = (__PAIR64__(v770, v771) >> 2) - ((2 * (__PAIR64__(v770, v771) >> 2)) & 0x24BF55A4);
  v783 = (v753 ^ 0xA8E5CDD) - (v769 ^ 0xFFDD2242);
  v784 = ((__PAIR64__(v774, v768) >> 25) - ((2 * (__PAIR64__(v774, v768) >> 25)) & 0x84281F46) - 1038872669) ^ 0x1C1D5AED ^ v776;
  v785 = (v753 ^ 0xA8E5CDD) + ((v784 + v717) ^ 0x8EEBDDBF) + ((2 * (v784 + v717)) & 0x1DD7BB7E) + 1897144897;
  v786 = (v735 ^ 0xBAF82004 ^ v753) - 67903565 + v779 - v780;
  v787 = (v786 ^ 0x9FFFFF74) + 1610611583 + ((2 * v786) & 0x3FFFFEE8) + ((v782 - 1839224110) ^ v777 ^ ((v126 >> 22) - ((2 * (v126 >> 22)) & 0xD446D49A) + 1780705869) ^ 0xB94F3160) + 1293;
  v788 = (v787 ^ 0x7FFFFFFD) + ((2 * v787) & 0xFFFFFFFB) - 2147483645 + (HIDWORD(v882) ^ 0xAAAD1B75 ^ (((2 * v785) & 0xF77CABEC) + (v785 ^ 0xFBBE55F6) - ((2 * (((2 * v785) & 0xF77CABEC) + (v785 ^ 0xFBBE55F6)) - 1570586450) & 0xAD6A686A) + 669422732));
  v789 = v788 - 2080218759 - ((2 * v788) & 0x804C2F2);
  v790 = v789 ^ 0x84026179;
  HIDWORD(v126) = v789 ^ 0x26179;
  LODWORD(v126) = v789 ^ 0x84000000;
  v791 = v126 >> 22;
  v792 = (v753 ^ 0x7173C25B ^ v789) + (((v789 ^ 0x84026179) + (v769 ^ 0xFFDD2242)) ^ 0xFFDFEEFB) + ((2 * ((v789 ^ 0x84026179) + (v769 ^ 0xFFDD2242))) & 0xFFBFDDF6) + 2101510;
  v793 = ((2 * v783) & 0x6BF6FD8C) + (v783 ^ 0x35FB7EC6);
  HIDWORD(v126) = v789 ^ 0x179;
  LODWORD(v126) = v789 ^ 0x84026000;
  v794 = v126 >> 11;
  v795 = v793 + (v792 ^ 0x7F4BFBF7) + ((2 * v792) & 0xFE97F7EE) - ((2 * (v793 + (v792 ^ 0x7F4BFBF7) + ((2 * v792) & 0xFE97F7EE)) - 1787753850) & 0xF6632652) - 974514068;
  HIDWORD(v126) = v789 ^ 0x26179;
  LODWORD(v126) = v789 ^ 0x84000000;
  v796 = v126 >> 25;
  HIDWORD(v126) = v789 ^ 0x179;
  LODWORD(v126) = v789 ^ 0x84026000;
  v797 = v126 >> 13;
  HIDWORD(v126) = v789 ^ 0xFFFFFFF9;
  LODWORD(v126) = v789 ^ 0x84026140;
  v798 = v126 >> 6;
  HIDWORD(v126) = v789 ^ 1;
  LODWORD(v126) = v789 ^ 0x84026178;
  v799 = (v791 ^ 0x9A000600) + 1711274496 - ((2 * v791) & 0xCBFFF3FE) + ((v797 - ((2 * v797) & 0xAB7707CC) + 1438352358) ^ ((v126 >> 2) - 138465334 - ((2 * (v126 >> 2)) & 0xEF7E5F94)) ^ 0xA204AC2C);
  v800 = v738 + (v796 ^ 0x1041008) + (v794 ^ 0x46BDAFFF) + (v798 ^ 0x5FEFEAB3) + ((2 * v794) & 0x8D7B5FFE) + ((2 * v798) & 0xBFDFD566) - ((2 * v796) & 0xFDF7DFEE) + 1481528646;
  v801 = (v769 ^ 0xFFDD2242) + (v800 ^ 0x7FFAAFFA) + ((2 * v800) & 0xFFF55FF4) - 2147135482;
  v802 = (v882 ^ 0x4D50585D ^ (((2 * v801) & 0xBF7DEF1E) + (v801 ^ 0xDFBEF78F) - ((2 * (((2 * v801) & 0xBF7DEF1E) + (v801 ^ 0xDFBEF78F)) + 34855012) & 0xF6360E2A) + 2082796359)) + ((v799 - ((2 * v799) & 0x6654D098) + 858417228) ^ 0x481BFB65 ^ v795);
  v803 = v802 - 2130804736 - ((2 * v802) & 0x1FD1526);
  v804 = v803 + 2707;
  v805 = (v803 + 2707) ^ 0x80FE8A93;
  v806 = v805 + (v789 ^ 0x84026179) - ((2 * (v805 + (v789 ^ 0x84026179))) & 0x4F907956) - 1480049493;
  HIDWORD(v126) = (v803 + 2707) ^ 0xA93;
  LODWORD(v126) = (v803 + 2707) ^ 0x80FE8000;
  v807 = (v126 >> 13) - ((2 * (v126 >> 13)) & 0xE59D75E0) - 221332752;
  HIDWORD(v126) = (v803 + 2707) ^ 0xFE8A93;
  LODWORD(v126) = v803 + HIDWORD(a15);
  v808 = v126 >> 25;
  HIDWORD(v126) = -2732 - v803;
  LODWORD(v126) = (v803 + 2707) ^ 0x80FE8A90;
  v809 = ((v805 - (v769 ^ 0xFFDD2242) - ((2 * (v805 - (v769 ^ 0xFFDD2242))) & 0xC7A147BE) - 472865825) ^ v806 ^ 0x44189F74) + (v769 ^ 0xFFDD2242);
  v810 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x6391CD0A);
  HIDWORD(v126) = v804 ^ 0x13;
  LODWORD(v126) = v804 ^ 0x80FE8A80;
  v811 = v126 >> 6;
  HIDWORD(v126) = v804 ^ 0x3E8A93;
  LODWORD(v126) = v804 ^ 0x80FFFFFF;
  v812 = v126 >> 22;
  HIDWORD(v126) = v804 ^ 0x293;
  LODWORD(v126) = v804 ^ 0x80FE8800;
  v813 = (v789 ^ 0x4FCEBEA ^ v804) + (v769 ^ 0x7F23A8D1 ^ v804);
  v814 = (v769 ^ 0x7BDF433B ^ v789) + (v813 ^ 0x9FFEFDEB) + ((2 * v813) & 0x3FFDFBD6) + 1610678805;
  v815 = v754 + (v808 ^ 0x20364) + (v811 ^ 0x18282088) + ((v126 >> 11) ^ 0x42FEC7FB) - ((2 * v811) & 0xCFAFBEEE) - ((2 * v808) & 0xFFFBF936) + ((2 * (v126 >> 11)) & 0x85FD8FF6) - 1529408487;
  v816 = (v812 ^ 0xCC643840) - ((2 * v812) & 0x67378F7E) + 865847232 + (v807 ^ (v810 + 835249797) ^ 0xC3065C75);
  v817 = (HIDWORD(v880) ^ 0x4E749578) + (v809 ^ 0xBFCF7A0E) + (v815 ^ 0x7FEFB7FF) + ((2 * v809) & 0x7F9EF41C) + ((2 * v815) & 0xFFDF6FFE) + 1983384370;
  v818 = ((v814 - ((2 * v814) & 0xDFE95EBE) + 1878306655) ^ 0x289570A9 ^ (v816 - ((2 * v816) & 0x8EC3BFEC) + 1197596662)) + (v817 ^ 0x33F89AFE) + ((2 * v817) & 0x67F135FC) - 871930622;
  v819 = v818 + 273479546;
  v820 = v818 + 273479546 - ((2 * v818) & 0x2099EEF4);
  v821 = ((2 * (v820 ^ v804)) & 0x597FEFFE ^ 0x164EBD2) + (v820 ^ v804 ^ 0x3C0D8A16);
  v822 = (((v820 ^ 0x104CF77A) + (v789 ^ 0x84026179)) ^ 0xAC8121CA) - ((2 * ((v820 ^ 0x104CF77A) + (v789 ^ 0x84026179))) & 0xA6FDBC6A) + v821 + 1;
  HIDWORD(v126) = v820 ^ 0x177A;
  LODWORD(v126) = v820 ^ 0x104CE000;
  v823 = v126 >> 13;
  HIDWORD(v126) = v820 ^ 0x3A;
  LODWORD(v126) = v820 ^ 0x104CF740;
  v824 = v126 >> 6;
  HIDWORD(v126) = v820 ^ 0x77A;
  LODWORD(v126) = v820 ^ 0x104CF000;
  v825 = v126 >> 11;
  HIDWORD(v126) = v820 ^ 0x4CF77A;
  LODWORD(v126) = v820 ^ 0x10000000;
  v826 = v126 >> 25;
  v827 = (v789 ^ 0x944E9603 ^ v820) + (((v820 ^ 0x104CF77A) - v805) ^ 0xD7AFFE7E) + ((2 * ((v820 ^ 0x104CF77A) - v805)) & 0xAF5FFCFC) + 676331906;
  HIDWORD(v126) = v819 ^ 2;
  LODWORD(v126) = v820 ^ 0x104CF778;
  v828 = v126 >> 2;
  HIDWORD(v126) = v820 ^ 0xCF77A;
  LODWORD(v126) = v820 ^ 0x10400000;
  v829 = v790 + (v827 ^ 0xAFE6BCE7) + ((2 * v827) & 0x5FCD79CE) + 1343832857;
  v830 = v781 + (v825 ^ 0xE6480D14) + (v826 ^ 0x1DF781DF) + (v824 ^ 0x18440030) + ((2 * v826) & 0x3BEF03BE) - ((2 * v825) & 0x336FE5D6) - ((2 * v824) & 0xCF77FF9E) - 478383907;
  v831 = (HIDWORD(v869) ^ 0xB65C89CF) + (v830 ^ 0xE67B9F7E) + (v829 ^ 0xAE3FCFBF);
  v832 = ((2 * v830) & 0xCCF73EFC) + ((2 * v829) & 0x5C7F9F7E);
  v833 = (v823 ^ 0xC1039050) + (v828 ^ 0xFBFB5FFA) + ((v126 >> 22) ^ 0x21005315) + ((2 * v828) & 0xF7F6BFF4) - ((2 * (v126 >> 22)) & 0xBDFF59D4) - ((2 * v823) & 0x7DF8DF5E) + 570473633 + (v806 ^ 0x512EDCDA ^ (v822 - ((2 * v822 + 1300089964) & 0xEDCDC0E2) - 1650080089));
  v834 = ((2 * v833) & 0x6BC3CFF6) + (v833 ^ 0x35E1E7FB) + ((v831 + v832 - 539871583) ^ 0x5E62F5F7) + ((2 * (v831 + v832 - 539871583)) & 0xBCC5EBEE);
  v835 = v834 - ((2 * v834 + 1467368476) & 0x7BB566D6);
  v836 = v835 - 1449798279;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x2B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DDAB340;
  v837 = v126 >> 6;
  v838 = v837 ^ 0xEFB7FAFD;
  v839 = (2 * v837) & 0xDF6FF5FA;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x36B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DDAB000;
  v840 = v126 >> 11;
  v841 = (v835 - 1449798279) ^ 0x3DDAB36B;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x1DAB36B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3C000000;
  v842 = v126 >> 25;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x1AB36B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DC00000;
  v843 = v126 >> 22;
  v844 = (v835 - 1449798279) ^ v804;
  v845 = v790 + (v842 ^ 0x88004104) + (v840 ^ 0xFEF8A23D) + v838 + ((2 * v840) & 0xFDF1447A) + v839 - ((2 * v842) & 0xEFFF7DF6);
  HIDWORD(v126) = ~(v835 - 1449798259);
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DDAB368;
  v846 = v126 >> 2;
  HIDWORD(v126) = v836 ^ 0x136B;
  LODWORD(v126) = v836 ^ 0x3DDAA000;
  v847 = (v846 ^ 0x7BE7D7FF) + ((v126 >> 13) ^ 0xFF7BF7FE) + (v843 ^ 0x6D008801) + ((2 * v846) & 0xF7CFAFFE) + ((2 * (v126 >> 13)) & 0xFEF7EFFC) - ((2 * v843) & 0x25FEEFFC) + 1;
  v848 = v805 + (((v844 ^ 0xBD2439F8) + ((v841 + (v820 ^ 0x104CF77A)) ^ 0xFAFDFBAF) + ((2 * (v841 + (v820 ^ 0x104CF77A))) & 0xF5FBF75E) + 84018257) ^ 0x1408429) - ((2 * ((v844 ^ 0xBD2439F8) + ((v841 + (v820 ^ 0x104CF77A)) ^ 0xFAFDFBAF) + ((2 * (v841 + (v820 ^ 0x104CF77A))) & 0xF5FBF75E) + 84018257)) & 0xFD7EF7AC) - 21005353;
  v849 = (v844 ^ 0xDB6DEAD7 ^ (v841 - (v820 ^ 0x104CF77A) - ((2 * (v841 - (v820 ^ 0x104CF77A))) & 0xCC93A65E) + 1716114223)) - v821;
  v850 = ((v906 - 1853386749) ^ 0xFFFF2ABD) + ((2 * (v906 - 1853386749)) & 0xFFFE557A) + ((v845 - 1991302718) ^ 0xF6EFEBC3) + (v848 ^ 0x7B6DFDB7) + ((2 * v848) & 0xF6DBFB6E) + ((2 * (v845 - 1991302718)) & 0xEDDFD786) - 2054013167 + ((v849 - ((2 * v849 + 427814910) & 0x21E45D5A) + 1035085484) ^ 0x969FB029 ^ (v847 - ((2 * v847 + 255283202) & 0xCDB3D08) + 503924357));
  v851 = v850 - 185564671 - ((2 * v850) & 0xE9E10402);
  v852 = (2 * ((v841 & (a58 ^ 0xF4D45EB)) - ((2 * (v841 & (a58 ^ 0xF4D45EB))) & 0x47844C7E)) - 947630978) ^ 0xC7844C7E;
  v853 = ((v852 - 595142213 - ((2 * v852) & 0xB90DB374)) ^ 0xDC86D9BB) + (a58 ^ 0x3297F680 ^ v836);
  HIDWORD(v126) = v851 ^ 1;
  LODWORD(v126) = v851 ^ 0xF4F08200;
  return (*(&off_1003E7570 + (((SHIDWORD(v892) < ((v891 - 2085813688) & 0x7C52FD1D ^ 0x612CC45A)) * (((v891 - 1206) | 0x41C) - 1192)) ^ v891)))(3153978362, (v126 >> 6) ^ 0xDDFEF1FD, 1630323013, 3959029698, v853 + 256722411 - ((2 * v853) & 0x1E9A8BD6), 4109402625, (v820 ^ 0x104CF77A) + (a60 ^ 0x47E48841) + 1206159425 - ((2 * ((v820 ^ 0x104CF77A) + (a60 ^ 0x47E48841))) & 0x8FC91082), 256722411, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864, v867, v869, v871, v872, v873, v874, v875, v876, v877, v878, v880, v882, v885, v888, v891, v892, a46, a47, a48, a49, v893, v895, a52);
}

uint64_t sub_100219A94@<X0>(int a1@<W4>, int a2@<W6>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57)
{
  v60 = (v59 - 120);
  v60[6] = BYTE1(a1) ^ 0xAA;
  v60[3] = a2 ^ 0xAE;
  v60[8] = BYTE2(a3) ^ 0x94;
  v60[12] = HIBYTE(a3) ^ 0x29;
  v61 = (HIBYTE(a1) ^ 0xF) - ((2 * (HIBYTE(a1) ^ 0xF)) & 0xCA) - 27;
  v60[14] = v61 ^ 0xA;
  v572 = (a2 ^ 0x41) + v58 - ((2 * (a2 ^ 0x41)) & 0xD4);
  v573 = -(v61 ^ 0xE5);
  v570 = (BYTE2(a3) ^ 0x7B) - ((2 * (BYTE2(a3) ^ 0x7B)) & 0x140);
  v62 = *((LODWORD(STACK[0xC38]) ^ 0x5FFF7F77EFA3759FLL) + a9 + ((2 * (LODWORD(STACK[0xC38]) ^ 0x79564AE1u)) & 0x12DEA7EFCLL) - 0x6991072C11971240) ^ 0xD4;
  v563 = v62 - ((2 * v62) & 0x148);
  v63 = a57;
  v60[9] = BYTE2(a57) ^ 0x9B;
  v568 = (BYTE2(a57) ^ 0x74) - ((2 * (BYTE2(a57) ^ 0x74)) & 0x162);
  v64 = *((LODWORD(STACK[0xAB4]) ^ 0xFAEF5F7382F9E357) + a9 + ((2 * (LODWORD(STACK[0xAB4]) ^ 0x79564AE1u)) & 0x1F75F536CLL) - 0x480E72876517C78) ^ 0xD4;
  v65 = v64 - ((2 * v64) & 0x98);
  v66 = *((LODWORD(STACK[0xF40]) ^ 0x53DFB1FCC268F55ALL) + a9 + ((2 * (LODWORD(STACK[0xF40]) ^ 0x79564AE1u)) & 0x1767D7F76) - 0x5D7139B135E0927DLL) ^ 0xD4;
  v566 = v66 - ((2 * v66) & 0x1C);
  v565 = STACK[0x968];
  v67 = *((LODWORD(STACK[0x1248]) ^ 0x793BF7F3B421BD14) + a9 + ((2 * (LODWORD(STACK[0x1248]) ^ 0x79564AE1u)) & 0x19AEFEFEALL) + 0x7D328057B7E63549);
  v68 = *((LODWORD(STACK[0x930]) ^ 0x7FBBFF7D85A33531) + a9 + ((2 * (LODWORD(STACK[0x930]) ^ 0x79564AE1u)) & 0x1F9EAFFA0) + 0x76B278CD8868AD6ELL) ^ 0xD4;
  v69 = v68 - ((2 * v68) & 0x118);
  v70 = (v67 ^ 0xD4) - ((2 * (v67 ^ 0xD4)) & 0x11111111);
  v60[13] = HIBYTE(a57);
  v71 = (HIBYTE(v63) ^ 0xEF) - ((2 * (HIBYTE(v63) ^ 0xEF)) & 0xE0);
  v72 = *((LODWORD(STACK[0x16D4]) ^ 0x76FFB9FF1229F51ELL) + a9 + ((2 * (LODWORD(STACK[0x16D4]) ^ 0x79564AE1u)) & 0xD6FF7FFELL) + 0x7F6EBE4C19DE6D3FLL) ^ 0xD4;
  v73 = v72 - ((2 * v72) & 0x2C);
  v74 = *((LODWORD(STACK[0x1890]) ^ 0xFEF77A1F8CA23C5ALL) + a9 + ((2 * (LODWORD(STACK[0x1890]) ^ 0x79564AE1u)) & 0x1EBE8ED76) - 0x88901D47096497DLL) ^ 0xD4;
  v75 = v74 - ((2 * v74) & 0x2E);
  *v60 = a3 ^ 0xD0;
  v76 = (a3 ^ 0x3F) - ((2 * (a3 ^ 0x3F)) & 0x190);
  v77 = (HIBYTE(a3) ^ 0xC6) - ((2 * (HIBYTE(a3) ^ 0xC6)) & 0xFFFFFFCF);
  v60[4] = BYTE1(a3) ^ 0x11;
  v78 = (v57 + 114) ^ a57;
  v60[5] = BYTE1(a57) ^ 0x73;
  v79 = *((LODWORD(STACK[0x1A14]) ^ 0x3EFFFDFEAF8CA45CLL) + a9 + ((2 * (LODWORD(STACK[0x1A14]) ^ 0x79564AE1u)) & 0x1ADB5DD7ALL) - 0x489185B3517CC17FLL) ^ 0xD4;
  v80 = *((LODWORD(STACK[0x1550]) ^ 0xFEE8E7F393ED9106) + a9 + ((2 * (LODWORD(STACK[0x1550]) ^ 0x79564AE1u)) & 0x1D577B7CELL) - 0x87A6FA8655DAEA9) ^ 0xD4;
  v81 = v80 - ((2 * v80) & 0x2E);
  v82 = ((((v69 << 16) - 1702100992) ^ 0x9A8C0000) - ((2 * (((v69 << 16) - 1702100992) ^ 0x9A8C0000)) & 0x78840000) + 2084713325) ^ 0x7C42336D | ((((v65 << 8) + 719014912) ^ 0x2ADB4C00) - ((2 * (((v65 << 8) + 719014912) ^ 0x2ADB4C00)) & 0xE727600) + 121191368) ^ 0x7393BC8;
  v83 = v82 - ((2 * v82) & 0x490D4564);
  v84 = ((((BYTE1(a3) ^ 0xFE) - ((2 * (BYTE1(a3) ^ 0xFE)) & 0x68)) << 16) - 902561792) ^ 0xCA340000;
  v85 = ((((BYTE1(v63) ^ 0x9C) - ((2 * (BYTE1(v63) ^ 0x9C)) & 0x5C)) << 8) + 1250110976) ^ 0x4A832E00;
  v86 = (v85 - ((2 * v85) & 0x6EF01000) - 143128378) ^ 0xF77808C6 | (v84 - ((2 * v84) & 0xED80000) - 2022942065) ^ 0x876C5A8F;
  v87 = *((LODWORD(STACK[0x19DC]) ^ 0xFF9FFDBF1AA3357CLL) + a9 + ((2 * (LODWORD(STACK[0x19DC]) ^ 0x79564AE1u)) & 0xC7EAFF3ALL) - 0x9318573DE97525FLL) ^ 0xD4;
  v88 = v87 - ((2 * v87) & 0x76);
  v89 = *((LODWORD(STACK[0x1858]) ^ 0x37FEEEF7CEA8B67ELL) + a9 + ((2 * (LODWORD(STACK[0x1858]) ^ 0x79564AE1u)) & 0x16FFDF93ELL) - 0x419076AC32A0CF61) ^ 0xD4;
  v90 = *((LODWORD(STACK[0x13CC]) ^ 0xF779F53788E9B3CCLL) + a9 + ((2 * (LODWORD(STACK[0x13CC]) ^ 0x79564AE1u)) & 0x1E37FF25ALL) - 0x10B7CEC6C61CBEFLL) ^ 0xD4;
  v574 = v57;
  v91 = v90 - ((2 * v90) & 0x78);
  v60[15] = HIBYTE(a2) ^ 0xA8;
  v93 = BYTE2(a1) ^ 0xA2;
  v60[2] = a1 ^ 4;
  v94 = (a1 ^ 0xEB) - 2 * ((a1 ^ 0xEB) & 1);
  v95 = *((LODWORD(STACK[0x1B98]) ^ 0x7C7BFDCE8EED84DELL) + a9 + ((2 * (LODWORD(STACK[0x1B98]) ^ 0x79564AE1u)) & 0x1EF779C7ELL) + 0x79F27A7C8DA25EFFLL) ^ 0xD4;
  v96 = (v86 + 169500173 + (~(2 * v86) | 0xEBCB43E5) + 1) ^ 0xA1A5E0D | ((BYTE1(a1) ^ 0x45) - ((2 * (BYTE1(a1) ^ 0x45)) & 0xFFFFFF9F) - 1852483121) ^ 0x919559CF;
  v97 = (((v79 + 12922152 - ((2 * v79) & 0xDE)) << 8) + 280320) ^ 0xC5316F00;
  v98 = (v97 + 1676176444 + (~(2 * v97) | 0xB82F27FF) + 1) ^ 0x63E86C3C | ((((v75 << 16) + 135725056) ^ 0x8170000) - ((2 * (((v75 << 16) + 135725056) ^ 0x8170000)) & 0x6E5E0000) + 1999619958) ^ 0x772FC776;
  v99 = (v98 - ((2 * v98) & 0xFDF1011C) + 2130215054) ^ 0x7EF8808E | (v95 - ((2 * v95) & 0x1A) - 1918694643) ^ 0x8DA30B0D;
  v100 = ((((v81 << 16) + 1679228928) ^ 0x64170000) - ((2 * (((v81 << 16) + 1679228928) ^ 0x64170000)) & 0x2DAE0000) + 383220302) ^ 0x16D77A4E | ((((v73 << 8) - 363915776) ^ 0xEA4F1600) - ((2 * (((v73 << 8) - 363915776) ^ 0xEA4F1600)) & 0x4C938A00) - 431372843) ^ 0xE649C5D5;
  v101 = *((LODWORD(STACK[0xDBC]) ^ 0xCFFF25B387BFD51CLL) + a9 + ((2 * (LODWORD(STACK[0xDBC]) ^ 0x79564AE1u)) & 0x1FDD33FFALL) + 0x266F529786748D41) ^ 0xD4;
  v102 = v101 - ((2 * v101) & 0x80);
  v103 = (v100 - ((2 * v100) & 0x43EB0D3C) + 569738910) ^ 0x21F5869E | (v89 - ((2 * v89) & 0x8C) + 923662662) ^ 0x370DF946;
  v104 = v103 - ((2 * v103) & 0xFB5BBA);
  v60[1] = v78;
  v105 = (v78 ^ 0xEF) - ((2 * (v78 ^ 0xEF)) & 0xB2);
  v106 = (((v96 - ((2 * v96) & 0x9A8B6C) + 5064123) << 8) - 1280) ^ 0x4D45B600;
  v107 = (v83 - 1534680398) ^ 0xA486A2B2 | (v563 - 1602566492) ^ 0xA07AC6A4;
  v108 = (((v99 + 3066986 - ((2 * v99) & 0x5DA06E)) << 8) + 249088) ^ 0x2ED03700;
  v109 = (((v107 - ((2 * v107) & 0xFBD856)) << 8) - 34854144) ^ 0xFDEC2B00;
  v110 = v109 - ((2 * v109) & 0x3E365600);
  v60[11] = BYTE2(a2) ^ 0xB;
  v60[10] = v93;
  v111 = (((((v105 << 8) + 662329600) ^ 0x277A5900) - 2090849633 + (~(2 * (((v105 << 8) + 662329600) ^ 0x277A5900)) | 0xF93FABFF)) | 1) ^ 0x83602A9F | ((((v76 << 16) + 885522432) ^ 0x34C80000) - ((2 * (((v76 << 16) + 885522432) ^ 0x34C80000)) & 0x4A240000) - 1525484465) ^ 0xA512F44F;
  v60[7] = BYTE1(a2) ^ 0x67;
  v112 = *((LODWORD(STACK[0x10C4]) ^ 0x5FEDDBFF90F9A23CLL) + a9 + ((2 * (LODWORD(STACK[0x10C4]) ^ 0x79564AE1u)) & 0x1D35FD1BALL) - 0x697F63B46451BB9FLL) ^ 0xD4;
  v113 = (v111 - ((2 * v111) & 0x250C7478) - 762955204) ^ 0xD2863A3C | (v94 - 823205119) ^ 0xCEEEE301;
  v114 = v113 - ((2 * v113) & 0xD15D0C);
  v115 = *((LODWORD(STACK[0x1D1C]) ^ 0x9B77F2B59125E51ALL) + a9 + ((2 * (LODWORD(STACK[0x1D1C]) ^ 0x79564AE1u)) & 0x1D0E75FF6) + 0x5AF685959CEA7D43) ^ 0xD4;
  v116 = (v106 - ((2 * v106) & 0x1DE73C00) + 250846848) ^ 0xEF39E80 | ((BYTE1(a2) ^ 0x88) - ((2 * (BYTE1(a2) ^ 0x88)) & 0x156) + 44899243) ^ 0x2AD1BAB;
  v117 = (((v112 - ((2 * v112) & 0xA0)) << 8) + 3428352) ^ 0x345000;
  v118 = (v117 - ((2 * v117) & 0x3A96200) - 2116767450) ^ 0x81D4B126 | ((((v566 << 16) - 670171136) ^ 0xD80E0000) - ((2 * (((v566 << 16) - 670171136) ^ 0xD80E0000)) & 0x64160000) - 234094638) ^ 0xF20BFFD2;
  v119 = (v108 - ((2 * v108) & 0x6283DE00) + 826404623) ^ 0x3141EF0F | (v115 - ((2 * v115) & 0xB6) - 467769509) ^ 0xE41E675B;
  v120 = (v118 - ((2 * v118) & 0xA71117AA) - 746026027) ^ 0xD3888BD5 | (v70 + 1879008136) ^ 0x6FFF6388;
  v121 = v120 - ((2 * v120) & 0x61354C);
  v122 = ((((v104 << 8) - 38937344) ^ 0xFDADDD00) - ((2 * (((v104 << 8) - 38937344) ^ 0xFDADDD00)) & 0xC0B03400) - 531097086) ^ 0xE0581A02 | (v88 + 248912699) ^ 0xED61B3B;
  v123 = v122 - ((2 * v122) & 0x863D6B2A) - 1021397611;
  v124 = (v110 + 521874326) ^ 0x1F1B2B96 | (v102 + 250960704) ^ 0xEF55B40;
  v125 = ((((v568 << 8) + 1579921664) ^ 0x5E2BB100) - ((2 * (((v568 << 8) + 1579921664) ^ 0x5E2BB100)) & 0x563D0200) + 1797161311) ^ 0x6B1E815F | ((((v570 << 16) - 1298137088) ^ 0xB2A00000) - ((2 * (((v570 << 16) - 1298137088) ^ 0xB2A00000)) & 0x66100000) - 1291295043) ^ 0xB30866BD;
  v126 = ((v93 ^ 0xEF) - ((2 * (v93 ^ 0xEF)) & 0xFFFFFFEF) - 478152457) ^ 0xE37FF8F7 | (v125 - ((2 * v125) & 0x723ECC28) + 2032100884) ^ 0x791F6614;
  v127 = (((v126 - ((2 * v126) & 0xAF6500)) << 8) - 676167680) ^ 0xD7B28000;
  v128 = (v127 - ((2 * v127) & 0xE7492400) + 1940165177) ^ 0x73A49239 | ((BYTE2(a2) ^ 0xE4) - 996770999 + (~(2 * (BYTE2(a2) ^ 0xE4)) | 0xFFFFFF6D) + 1) ^ 0xC4967B49;
  v129 = ((((v121 << 8) - 1332042240) ^ 0xB09AA600) - ((2 * (((v121 << 8) - 1332042240) ^ 0xB09AA600)) & 0x83738000) - 1044791076) ^ 0xC1B9C0DC | (v91 - 1731459012) ^ 0x98CC083C;
  v130 = (v124 - ((2 * v124) & 0x3DCB962C) + 518376214) ^ ((HIBYTE(a2) ^ 0x47) - ((2 * (HIBYTE(a2) ^ 0x47)) & 0x7C) - 1497653954) ^ v123 ^ (v116 - ((2 * v116) & 0x216B19C6) - 1867150109);
  v131 = (v119 - ((2 * v119) & 0x84F7454A) + 1115398821) ^ v572 ^ ((((v114 << 8) + 1756268032) ^ 0x68AE8600) - ((2 * (((v114 << 8) + 1756268032) ^ 0x68AE8600)) & 0xB14C0C00) + 1487275723) ^ (v129 - ((2 * v129) & 0xCE3CD2FA) - 417437315) ^ (v128 - ((2 * v128) & 0x5696D5BA) + 726362845);
  v132 = ((((v77 << 16) + 1810300928) ^ 0x6BE70000) - ((2 * (((v77 << 16) + 1810300928) ^ 0x6BE70000)) & 0x438E0000) + 1640474159) ^ 0x61C7A62F | (((((v71 + 11786370) << 8) - 4608) ^ 0xB3D87000) - ((2 * ((((v71 + 11786370) << 8) - 4608) ^ 0xB3D87000)) & 0x34DA7000) + 443365623) ^ 0x1A6D38F7;
  v133 = (v132 - ((2 * v132) & 0x680B44AE) - 1274699177) ^ 0xB405A257 | (v573 - 2082971905) ^ 0x83D85EFF;
  v134 = (((v133 - ((2 * v133) & 0x8CD6B6)) << 8) + 1181440768) ^ 0x466B5B00;
  LOBYTE(STACK[0x468]) = v131 ^ 0x63;
  LOBYTE(STACK[0x4A0]) = v131 ^ 0x63;
  v135 = v130 ^ (v134 - ((2 * v134) & 0xA3592400) - 777219472);
  v136 = ((((v135 ^ 0x3A59FD2E) - 1487922518) ^ 0x554FBBF3) - 1431288819 + ((2 * ((v135 ^ 0x3A59FD2E) - 1487922518)) & 0xAA9F77E6)) * (v135 ^ 0x3A59FD2E);
  LOBYTE(STACK[0x631]) = BYTE1(v131) ^ 0x1A;
  LOBYTE(STACK[0x669]) = BYTE1(v131) ^ 0x1A;
  LOBYTE(STACK[0x64D]) = BYTE1(v135) ^ 0x3A;
  LOBYTE(STACK[0x685]) = BYTE1(v135) ^ 0x3A;
  LOBYTE(STACK[0x832]) = BYTE2(v131) ^ 0xC0;
  LOBYTE(STACK[0x7FA]) = BYTE2(v131) ^ 0xC0;
  LOBYTE(STACK[0x2BB]) = HIBYTE(v131) ^ 0x7F;
  LOBYTE(STACK[0x2F3]) = HIBYTE(v131) ^ 0x7F;
  LOBYTE(STACK[0x84E]) = BYTE2(v135) ^ 0x9E;
  LOBYTE(STACK[0x816]) = BYTE2(v135) ^ 0x9E;
  v137 = (v136 ^ 0x7FE1DFFB) + (v131 ^ 0xB807DDA4) + ((2 * v136) & 0xFFC3BFF6) - 2083325193 - ((2 * ((v136 ^ 0x7FE1DFFB) + (v131 ^ 0xB807DDA4) + ((2 * v136) & 0xFFC3BFF6) - 2083325193)) & 0xA05740E8) - 802447244;
  LOBYTE(v130) = v130 ^ 0x99;
  LOBYTE(STACK[0x484]) = v130;
  LOBYTE(STACK[0x4BC]) = v130;
  v138 = ((((v137 ^ 0xD02BA074) + 1716246669) ^ 0xB9DFE3FF) + 1176509441 + ((2 * ((v137 ^ 0xD02BA074) + 1716246669)) & 0x73BFC7FE)) * (v137 ^ 0xD02BA074);
  v139 = (v135 ^ 0x3A59FD2E) + (v138 ^ 0xEFFDEFFF) + ((2 * v138) & 0xDFFBDFFE) - 1975435397;
  LOBYTE(STACK[0x2D7]) = HIBYTE(v135) ^ 0xFD;
  LOBYTE(STACK[0x30F]) = HIBYTE(v135) ^ 0xFD;
  LOBYTE(STACK[0x86A]) = BYTE2(v137) ^ 0xEC;
  LOBYTE(STACK[0x8A2]) = BYTE2(v137) ^ 0xEC;
  v140 = v139 - ((2 * v139) & 0xBBD8F3C2) - 571704863;
  v141 = ((((v140 ^ 0xDDEC79E1) - 210102860) ^ 0x6BFFC0E7) - 1811923175 + ((2 * ((v140 ^ 0xDDEC79E1) - 210102860)) & 0xD7FF81CE)) * (v140 ^ 0xDDEC79E1);
  LOBYTE(STACK[0x4D8]) = ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9 - ((2 * ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9)) & 0xE8) + 116) ^ 0xB3;
  LOBYTE(STACK[0x510]) = ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9 - ((2 * ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9)) & 0xE8) + 116) ^ 0xB3;
  LOBYTE(STACK[0x6A1]) = BYTE1(v137) ^ 0x67;
  LOBYTE(STACK[0x6D9]) = BYTE1(v137) ^ 0x67;
  LOBYTE(STACK[0x4F4]) = v140 ^ 0x26;
  LOBYTE(STACK[0x52C]) = v140 ^ 0x26;
  LOBYTE(STACK[0x363]) = HIBYTE(v137) ^ 0x17;
  LOBYTE(STACK[0x32B]) = HIBYTE(v137) ^ 0x17;
  v142 = (v137 ^ 0xD02BA074) + (v141 ^ 0xFF5FFCFF) + ((2 * v141) & 0xFEBFF9FE) + 1597583782;
  LOBYTE(STACK[0x6BD]) = BYTE1(v140) ^ 0xBE;
  LOBYTE(STACK[0x6F5]) = BYTE1(v140) ^ 0xBE;
  v143 = v142 - ((2 * v142) & 0xB6F85130) - 612620136;
  LOBYTE(STACK[0x37F]) = HIBYTE(v140) ^ 0x1A;
  LOBYTE(STACK[0x347]) = HIBYTE(v140) ^ 0x1A;
  v144 = ((((v143 ^ 0xDB7C2898) - 606828698) ^ 0x56DFEF3D) - 1457516349 + ((2 * ((v143 ^ 0xDB7C2898) - 606828698)) & 0xADBFDE7A)) * (v143 ^ 0xDB7C2898);
  v145 = (v140 ^ 0xDDEC79E1) + (v144 ^ 0x7FFFE57F) + ((2 * v144) & 0xFFFFCAFE) - 1170599909;
  LOBYTE(STACK[0x886]) = BYTE2(v140) ^ 0x2B;
  LOBYTE(STACK[0x580]) = v143 ^ 0x5F;
  LOBYTE(STACK[0x548]) = v143 ^ 0x5F;
  v146 = v145 - ((2 * v145) & 0x337FC062) + 432005169;
  v147 = ((((v146 ^ 0x19BFE031) - 184632911) ^ 0x8FF6B330) + 1879657680 + ((2 * ((v146 ^ 0x19BFE031) - 184632911)) & 0x1FED6660)) * (v146 ^ 0x19BFE031);
  v148 = (v143 ^ 0xDB7C2898) + (v147 ^ 0xCBE7D75D) + ((2 * v147) & 0x97CFAEBA) - 1944399488;
  v149 = ((2 * v148) & 0xFF8FD9FC) + (v148 ^ 0x7FC7ECFE);
  LOBYTE(STACK[0x711]) = BYTE1(v143) ^ 0xEF;
  LOBYTE(STACK[0x749]) = BYTE1(v143) ^ 0xEF;
  HIDWORD(v150) = v149 + 3674882;
  LODWORD(v150) = v149 - 2143808766;
  LOBYTE(STACK[0x20A]) = BYTE2(v143) ^ 0xBB;
  v151 = (v150 >> 30) + 1074941412 - ((2 * (v150 >> 30)) & 0x80249BCA) + 1;
  HIDWORD(v150) = v151 ^ 1;
  LODWORD(v150) = v151 ^ 0x40124DE4;
  v152 = (v150 >> 2) - ((2 * (v150 >> 2)) & 0x69B3F248) - 1260783324;
  LOBYTE(STACK[0x765]) = BYTE1(v146) ^ 0x27;
  LOBYTE(STACK[0x72D]) = BYTE1(v146) ^ 0x27;
  LOBYTE(STACK[0x3D3]) = HIBYTE(v143) ^ 0x1C;
  LOBYTE(STACK[0x39B]) = HIBYTE(v143) ^ 0x1C;
  v153 = ((((v152 ^ 0xB4D9F924) + 237491931) ^ 0x1AFF7FD3) - 452952019 + ((2 * ((v152 ^ 0xB4D9F924) + 237491931)) & 0x35FEFFA6)) * (v152 ^ 0xB4D9F924);
  LOBYTE(STACK[0x564]) = v146 ^ 0xF6;
  LOBYTE(STACK[0x59C]) = v146 ^ 0xF6;
  LOBYTE(v70) = ((v150 >> 2) - ((2 * (v150 >> 2)) & 0x48) + 36) ^ 0xE3;
  LOBYTE(STACK[0x5F0]) = v70;
  LOBYTE(STACK[0x5B8]) = v70;
  LOBYTE(STACK[0x226]) = BYTE2(v146) ^ 0x78;
  v154 = (v146 ^ 0x19BFE031) + (v153 ^ 0xEFDFFAFF) + ((2 * v153) & 0xDFBFF5FE) + 821141449;
  LOBYTE(STACK[0x3B7]) = HIBYTE(v146) ^ 0xDE;
  LOBYTE(STACK[0x3EF]) = HIBYTE(v146) ^ 0xDE;
  v155 = v154 - ((2 * v154) & 0x2D5FFAEA) - 1766851211;
  v156 = ((((v155 ^ 0x96AFFD75) - 303042231) ^ 0xB77F7C7F) + 1216381825 + ((2 * ((v155 ^ 0x96AFFD75) - 303042231)) & 0x6EFEF8FE)) * (v155 ^ 0x96AFFD75);
  LOBYTE(STACK[0x242]) = BYTE2(v152) ^ 0x1E;
  LOBYTE(STACK[0x27A]) = BYTE2(v152) ^ 0x1E;
  v157 = (v152 ^ 0xB4D9F924) + (v156 ^ 0x4FE77D5B) + ((2 * v156) & 0x9FCEFAB6) - 2078629961;
  LOBYTE(STACK[0x7B9]) = BYTE1(v152) ^ 0x3E;
  LOBYTE(STACK[0x781]) = BYTE1(v152) ^ 0x3E;
  v158 = v157 - ((2 * v157) & 0x86B20046) - 1017577437;
  LOBYTE(STACK[0x660]) = v158 ^ 0xE4;
  LOBYTE(STACK[0x628]) = v158 ^ 0xE4;
  LOBYTE(STACK[0x5D4]) = v155 ^ 0xB2;
  LOBYTE(STACK[0x60C]) = v155 ^ 0xB2;
  LOBYTE(STACK[0x79D]) = BYTE1(v155) ^ 0x3A;
  LOBYTE(STACK[0x7D5]) = BYTE1(v155) ^ 0x3A;
  LOBYTE(STACK[0x443]) = HIBYTE(v152) ^ 0x73;
  LOBYTE(STACK[0x40B]) = HIBYTE(v152) ^ 0x73;
  LOBYTE(STACK[0x45F]) = HIBYTE(v155) ^ 0x51;
  LOBYTE(STACK[0x427]) = HIBYTE(v155) ^ 0x51;
  v159 = ((((v158 ^ 0xC3590023) - 657524290) ^ 0x7FF2E7F0) - 2146625520 + ((2 * ((v158 ^ 0xC3590023) - 657524290)) & 0xFFE5CFE0)) * (v158 ^ 0xC3590023);
  LOBYTE(STACK[0x25E]) = BYTE2(v155) ^ 0x68;
  LOBYTE(STACK[0x296]) = BYTE2(v155) ^ 0x68;
  v160 = (v155 ^ 0x96AFFD75) + (v159 ^ 0xEFDBFEFF) + ((2 * v159) & 0xDFB7FDFE) - 675017131;
  v161 = v160 - ((2 * v160) & 0x270EDF58) + 327643052;
  v162 = ((((v161 ^ 0x13876FAC) - 96651400) ^ 0x6AECFBCC) - 1793915852 + ((2 * ((v161 ^ 0x13876FAC) - 96651400)) & 0xD5D9F798)) * (v161 ^ 0x13876FAC);
  LOBYTE(STACK[0x829]) = BYTE1(v158) ^ 0xC7;
  LOBYTE(STACK[0x7F1]) = BYTE1(v158) ^ 0xC7;
  LOBYTE(STACK[0x47B]) = HIBYTE(v158) ^ 4;
  LOBYTE(STACK[0x4B3]) = HIBYTE(v158) ^ 4;
  v163 = (v158 ^ 0xC3590023) + (v162 ^ 0x7FB736FF) + ((2 * v162) & 0xFF6E6DFE) - 1440961391;
  v164 = v163 - ((2 * v163) & 0xF54BDAAA) + 2057694549;
  LOBYTE(STACK[0x2EA]) = BYTE2(v158) ^ 0x9E;
  LOBYTE(STACK[0x2B2]) = BYTE2(v158) ^ 0x9E;
  v165 = ((((v164 ^ 0x7AA5ED55) - 1695139088) ^ 0x4AF64EB1) - 1257655985 + ((2 * ((v164 ^ 0x7AA5ED55) - 1695139088)) & 0x95EC9D62)) * (v164 ^ 0x7AA5ED55);
  LOBYTE(STACK[0x2CE]) = BYTE2(v161) ^ 0x40;
  LOBYTE(STACK[0x306]) = BYTE2(v161) ^ 0x40;
  v166 = (v161 ^ 0x13876FAC) + (v165 ^ 0xFFF43FFF) + ((2 * v165) & 0xFFE87FFE) + 770049;
  v167 = ((2 * v166) & 0xF9FFFFEE) + (v166 ^ 0xFCFFFFF7);
  LOBYTE(STACK[0x861]) = BYTE1(v164) ^ 0x2A;
  LOBYTE(STACK[0x899]) = BYTE1(v164) ^ 0x2A;
  LOBYTE(v63) = BYTE1(v161) ^ 0xA8;
  LOBYTE(v161) = v161 ^ 0x6B;
  LOBYTE(STACK[0x67C]) = v161;
  LOBYTE(STACK[0x644]) = v161;
  LOBYTE(STACK[0x4CF]) = HIBYTE(v161) ^ 0xD4;
  LOBYTE(STACK[0x497]) = HIBYTE(v161) ^ 0xD4;
  v168 = v167 - ((2 * v167 + 10241610) & 0x591FD1E) + 588718516;
  LOBYTE(STACK[0x80D]) = v63;
  LOBYTE(STACK[0x845]) = v63;
  v169 = v168 ^ 0x2C8FE8F;
  LOBYTE(STACK[0x322]) = BYTE2(v164) ^ 0x62;
  LOBYTE(STACK[0x35A]) = BYTE2(v164) ^ 0x62;
  LOBYTE(STACK[0x6EC]) = (v167 - ((2 * v167 + 74) & 0x1E) - 76) ^ 0x48;
  LOBYTE(STACK[0x6B4]) = (v167 - ((2 * v167 + 74) & 0x1E) - 76) ^ 0x48;
  LOBYTE(STACK[0x698]) = v164 ^ 0x92;
  LOBYTE(STACK[0x6D0]) = v164 ^ 0x92;
  LOBYTE(STACK[0x523]) = HIBYTE(v164) ^ 0xBD;
  LOBYTE(STACK[0x4EB]) = HIBYTE(v164) ^ 0xBD;
  v170 = (v164 ^ 0x7AA5ED55) + (((v168 ^ 0x2C8FE8F) * (v167 - 1167962685)) ^ 0x1D19FE1B) + ((2 * (v168 ^ 0x2C8FE8F) * (v167 - 1167962685)) & 0x3A33FC36) - 2091519636;
  LOBYTE(STACK[0x8B5]) = BYTE1(v168) ^ 0x39;
  LOBYTE(STACK[0x87D]) = BYTE1(v168) ^ 0x39;
  LOBYTE(v164) = HIBYTE(v168) ^ 0xC5;
  LOBYTE(STACK[0x376]) = BYTE2(v168) ^ 0xF;
  LOBYTE(STACK[0x33E]) = BYTE2(v168) ^ 0xF;
  v171 = v170 - ((2 * v170) & 0x79E4179E) - 1124987953;
  v172 = ((((v171 ^ 0xBCF20BCF) - 1999460649) ^ 0x7FCE9BF6) - 2144246774 + ((2 * ((v171 ^ 0xBCF20BCF) - 1999460649)) & 0xFF9D37EC)) * (v171 ^ 0xBCF20BCF);
  LOBYTE(STACK[0x53F]) = v164;
  LOBYTE(STACK[0x507]) = v164;
  v173 = v169 + (v172 ^ 0x717B79CB) + ((2 * v172) & 0xE2F6F396) + 1275289972;
  LOBYTE(STACK[0x740]) = v171 ^ 8;
  LOBYTE(STACK[0x708]) = v171 ^ 8;
  v174 = v173 - ((2 * v173) & 0x561A37C0) - 1425204256;
  v175 = ((((v174 ^ 0xAB0D1BE0) + 1323737862) ^ 0x77DDF1DF) - 2011034079 + ((2 * ((v174 ^ 0xAB0D1BE0) + 1323737862)) & 0xEFBBE3BE)) * (v174 ^ 0xAB0D1BE0);
  LOBYTE(STACK[0x21D]) = BYTE1(v174) ^ 0xDC;
  v176 = (v171 ^ 0xBCF20BCF) + (v175 ^ 0x7EBBFFFB) + ((2 * v175) & 0xFD77FFF6) + 2102552054;
  v177 = v176 - ((2 * v176) & 0xC7875CC0) - 473715104;
  LOBYTE(STACK[0x201]) = BYTE1(v171) ^ 0xCC;
  LOBYTE(STACK[0x392]) = BYTE2(v171) ^ 0x35;
  LOBYTE(STACK[0x3CA]) = BYTE2(v171) ^ 0x35;
  LOBYTE(STACK[0x55B]) = HIBYTE(v171) ^ 0x7B;
  LOBYTE(STACK[0x593]) = HIBYTE(v171) ^ 0x7B;
  v178 = ((((v177 ^ 0xE3C3AE60) - 418013189) ^ 0x7FFF76BF) - 2147448511 + ((2 * ((v177 ^ 0xE3C3AE60) - 418013189)) & 0xFFFEED7E)) * (v177 ^ 0xE3C3AE60);
  LOBYTE(STACK[0x3AE]) = BYTE2(v174) ^ 0xCA;
  LOBYTE(STACK[0x3E6]) = BYTE2(v174) ^ 0xCA;
  v179 = (v174 ^ 0xAB0D1BE0) + (v178 ^ 0xAE07AF7F) + ((2 * v178) & 0x5C0F5EFE) + 2037929004;
  LOBYTE(STACK[0x577]) = HIBYTE(v174) ^ 0x6C;
  LOBYTE(STACK[0x5AF]) = HIBYTE(v174) ^ 0x6C;
  LOBYTE(v128) = v174 ^ 0x27;
  LOBYTE(STACK[0x239]) = BYTE1(v177) ^ 0x69;
  LOBYTE(STACK[0x271]) = BYTE1(v177) ^ 0x69;
  v180 = v179 - ((2 * v179) & 0x316E440C) + 414654982;
  v181 = ((((v180 ^ 0x18B72206) - 516152047) ^ 0x863FAFEC) + 2042646548 + ((2 * ((v180 ^ 0x18B72206) - 516152047)) & 0xC7F5FD8)) * (v180 ^ 0x18B72206);
  LOBYTE(STACK[0x724]) = v128;
  LOBYTE(STACK[0x75C]) = v128;
  LOBYTE(STACK[0x43A]) = BYTE2(v177) ^ 4;
  LOBYTE(STACK[0x402]) = BYTE2(v177) ^ 4;
  LOBYTE(v128) = (v176 - ((2 * v176) & 0xC0) + 96) ^ 0xA7;
  LOBYTE(STACK[0x778]) = v128;
  LOBYTE(STACK[0x7B0]) = v128;
  v182 = (v177 ^ 0xE3C3AE60) + (v181 ^ 0x7AFDFBFF) + ((2 * v181) & 0xF5FBF7FE) + 510549340;
  LOBYTE(STACK[0x5CB]) = HIBYTE(v177) ^ 0x24;
  LOBYTE(STACK[0x603]) = HIBYTE(v177) ^ 0x24;
  LOBYTE(STACK[0x41E]) = BYTE2(v180) ^ 0x70;
  LOBYTE(STACK[0x456]) = BYTE2(v180) ^ 0x70;
  v183 = v182 - ((2 * v182) & 0xB6459F08) + 1529008004;
  LOBYTE(STACK[0x255]) = BYTE1(v180) ^ 0xE5;
  LOBYTE(STACK[0x28D]) = BYTE1(v180) ^ 0xE5;
  v184 = (((HIBYTE(v183) & 0xF ^ 0xFFFFFFFB) + ((2 * (HIBYTE(v183) & 0xF ^ (~HIBYTE(v183) | 0x7C))) ^ 0xFFFFFF91) + 77) ^ 0x4C) & (((HIBYTE(v183) & 0xF0 ^ 0x5F) - 2 * ((HIBYTE(v183) & 0xF0 ^ 0x5F) & 0x3F) + 63) ^ 0x3F);
  LOBYTE(STACK[0x63B]) = v184 - ((2 * v184) & 0x8F) - 57;
  LOBYTE(STACK[0x7CC]) = v180 ^ 0xC1;
  LOBYTE(STACK[0x794]) = v180 ^ 0xC1;
  v185 = ((((v183 ^ 0x5B22CF84) + 1006707731) ^ 0xADFABBA6) + 1376076890 + ((2 * ((v183 ^ 0x5B22CF84) + 1006707731)) & 0x5BF5774C)) * (v183 ^ 0x5B22CF84);
  LOBYTE(STACK[0x472]) = BYTE2(v183) ^ 0xE5;
  LOBYTE(STACK[0x4AA]) = BYTE2(v183) ^ 0xE5;
  LOBYTE(STACK[0x5E7]) = HIBYTE(v180) ^ 0xDF;
  LOBYTE(STACK[0x61F]) = HIBYTE(v180) ^ 0xDF;
  LOBYTE(STACK[0x2A9]) = BYTE1(v183) ^ 8;
  LOBYTE(STACK[0x2E1]) = BYTE1(v183) ^ 8;
  v186 = (v180 ^ 0x18B72206) + (v185 ^ 0xBAFFBE7F) + ((2 * v185) & 0x75FF7CFE) + 87023291;
  v187 = v186 - ((2 * v186) & 0xA89F9A24) - 732967662;
  LOBYTE(STACK[0x7E8]) = (v182 - ((2 * v182) & 8) - 124) ^ 0x43;
  LOBYTE(STACK[0x820]) = (v182 - ((2 * v182) & 8) - 124) ^ 0x43;
  v188 = ((((v187 ^ 0xD44FCD12) - 900071694) ^ 0xFFE9FFFB) + 1441797 + ((2 * ((v187 ^ 0xD44FCD12) - 900071694)) & 0xFFD3FFF6)) * (v187 ^ 0xD44FCD12);
  LOBYTE(STACK[0x673]) = HIBYTE(v183) ^ 0x9C;
  LOBYTE(STACK[0x804]) = v187 ^ 0xD5;
  LOBYTE(STACK[0x83C]) = v187 ^ 0xD5;
  v189 = (v183 ^ 0x5B22CF84) + (v188 ^ 0xF9F1D7FE) + ((2 * v188) & 0xF3E3AFFC) - 328872776;
  LOBYTE(STACK[0x48E]) = BYTE2(v187) ^ 0x88;
  LOBYTE(STACK[0x4C6]) = BYTE2(v187) ^ 0x88;
  v190 = v189 - ((2 * v189) & 0xADF485E6) - 688241933;
  LOBYTE(STACK[0x68F]) = HIBYTE(v187) ^ 0x13;
  LOBYTE(STACK[0x657]) = HIBYTE(v187) ^ 0x13;
  v191 = v187 >> 8;
  LOBYTE(STACK[0x2FD]) = BYTE1(v187) ^ 0xA;
  v192 = ((((v190 ^ 0xD6FA42F3) + 1299977728) ^ 0x3BFFBF55) - 1006616405 + ((2 * ((v190 ^ 0xD6FA42F3) + 1299977728)) & 0x77FF7EAA)) * (v190 ^ 0xD6FA42F3);
  v193 = (v187 ^ 0xD44FCD12) + (v192 ^ 0x9C1B3EB7) + ((2 * v192) & 0x38367D6E) + 652623365;
  LOBYTE(v191) = ((v191 & 0x56 ^ 0xED) - 2 * (((v191 & 0x56 ^ 0xED) & 4 | 0x7A) ^ (v191 & 0x56 ^ 0xED | 0x7B)) + 2) & (((v191 & 0xA9 ^ 0xDF) - ((2 * (v191 & 0xA9 ^ 0xDF)) & 0x56) + 43) ^ 0x2B);
  LOBYTE(STACK[0x2C5]) = v191 - ((2 * v191) & 0x8F) - 57;
  v194 = v193 - ((2 * v193) & 0xEFFD27A4) + 2013172690;
  LOBYTE(STACK[0x319]) = BYTE1(v190) ^ 0x85;
  LOBYTE(STACK[0x351]) = BYTE1(v190) ^ 0x85;
  LOBYTE(STACK[0x858]) = v190 ^ 0x34;
  LOBYTE(STACK[0x890]) = v190 ^ 0x34;
  v195 = ((((v194 ^ 0x77FE93D2) + 295780580) ^ 0xEFF9DDE6) + 268837402 + ((2 * ((v194 ^ 0x77FE93D2) + 295780580)) & 0xDFF3BBCC)) * (v194 ^ 0x77FE93D2);
  LOBYTE(STACK[0x4E2]) = BYTE2(v190) ^ 0x3D;
  LOBYTE(STACK[0x51A]) = BYTE2(v190) ^ 0x3D;
  v196 = (v190 ^ 0xD6FA42F3) + (v195 ^ 0x37FF3EAE) + ((2 * v195) & 0x6FFE7D5C) - 752414289;
  LOBYTE(STACK[0x6E3]) = HIBYTE(v190) ^ 0x11;
  LOBYTE(STACK[0x6AB]) = HIBYTE(v190) ^ 0x11;
  LOBYTE(STACK[0x6FF]) = HIBYTE(v194) ^ 0xB0;
  LOBYTE(STACK[0x6C7]) = HIBYTE(v194) ^ 0xB0;
  v197 = v196 - ((2 * v196) & 0x70AA8C44) - 1202371038;
  v198 = ((((v197 ^ 0xB8554622) - 1249060897) ^ 0x5B5FFBEB) - 1533018630 + ((2 * ((v197 ^ 0xB8554622) - 1249060897)) & 0xB6BFF7D6) + 1563) * (v197 ^ 0xB8554622);
  LOBYTE(STACK[0x4FE]) = BYTE2(v194) ^ 0x39;
  LOBYTE(STACK[0x536]) = BYTE2(v194) ^ 0x39;
  v199 = (v194 ^ 0x77FE93D2) + (v198 ^ 0xFE773F79) + ((2 * v198) & 0xFCEE7EF2) + 1554818643;
  LOBYTE(STACK[0x36D]) = BYTE1(v194) ^ 0x54;
  LOBYTE(STACK[0x335]) = BYTE1(v194) ^ 0x54;
  LOBYTE(STACK[0x8AC]) = v194 ^ 0x15;
  LOBYTE(STACK[0x874]) = v194 ^ 0x15;
  LOBYTE(STACK[0x58A]) = BYTE2(v197) ^ 0x92;
  LOBYTE(STACK[0x552]) = BYTE2(v197) ^ 0x92;
  LOBYTE(STACK[0x3C1]) = BYTE1(v197) ^ 0x81;
  LOBYTE(STACK[0x389]) = BYTE1(v197) ^ 0x81;
  v200 = v199 - ((2 * v199) & 0x2368701C) - 1850460146;
  v201 = ((((v200 ^ 0x91B4380E) - 221323325) ^ 0xDB3FD9CF) + 616572465 + ((2 * ((v200 ^ 0x91B4380E) - 221323325)) & 0xB67FB39E)) * (v200 ^ 0x91B4380E);
  LOBYTE(STACK[0x753]) = HIBYTE(v197) ^ 0x7F;
  LOBYTE(STACK[0x71B]) = HIBYTE(v197) ^ 0x7F;
  v202 = (v197 ^ 0xB8554622) + (v201 ^ 0x91E2FAEA) + ((2 * v201) & 0x23C5F5D4) - 1520942732;
  v203 = v202 - ((2 * v202) & 0x16F261B2) + 192491737;
  v204 = ((((v203 ^ 0xB7930D9) - 673024271) ^ 0xDDF1D7DE) + 571353122 + ((2 * ((v203 ^ 0xB7930D9) - 673024271)) & 0xBBE3AFBC)) * (v203 ^ 0xB7930D9);
  LOBYTE(STACK[0x214]) = v200 ^ 0xC9;
  LOBYTE(STACK[0x3A5]) = ~BYTE1(v200);
  LOBYTE(STACK[0x3DD]) = ~BYTE1(v200);
  LOBYTE(v192) = BYTE2(v200) ^ 0x73;
  LOBYTE(STACK[0x737]) = HIBYTE(v200) ^ 0x56;
  LOBYTE(STACK[0x76F]) = HIBYTE(v200) ^ 0x56;
  v205 = (v200 ^ 0x91B4380E) + (v204 ^ 0xBF957EFF) + ((2 * v204) & 0x7F2AFDFE) + 1621957487;
  LOBYTE(STACK[0x230]) = v203 ^ 0x1E;
  LOBYTE(STACK[0x268]) = v203 ^ 0x1E;
  v206 = v205 - ((2 * v205) & 0x8835020A) + 1142587653;
  v207 = ((((v206 ^ 0x441A8105) + 1179275108) ^ 0x63D25BDD) - 1674730461 + ((2 * ((v206 ^ 0x441A8105) + 1179275108)) & 0xC7A4B7BA)) * (v206 ^ 0x441A8105);
  LOBYTE(STACK[0x56E]) = v192;
  LOBYTE(STACK[0x5A6]) = v192;
  LOBYTE(STACK[0x5C2]) = BYTE2(v203) ^ 0xBE;
  LOBYTE(STACK[0x5FA]) = BYTE2(v203) ^ 0xBE;
  LOBYTE(STACK[0x78B]) = HIBYTE(v203) ^ 0xCC;
  LOBYTE(STACK[0x7C3]) = HIBYTE(v203) ^ 0xCC;
  LOBYTE(STACK[0x431]) = BYTE1(v203) ^ 0xF7;
  LOBYTE(STACK[0x3F9]) = BYTE1(v203) ^ 0xF7;
  v208 = (v203 ^ 0xB7930D9) + (v207 ^ 0xCFABFFB8) + ((2 * v207) & 0x9F57FF70) + 720577303;
  LOBYTE(STACK[0x44D]) = BYTE1(v206) ^ 0x46;
  LOBYTE(STACK[0x415]) = BYTE1(v206) ^ 0x46;
  v209 = v208 - ((2 * v208) & 0x1ADEC68) - 2133395916;
  v210 = ((((v209 ^ 0x80D6F634) + 394078803) ^ 0xBF2F7DE9) + 1087406615 + ((2 * ((v209 ^ 0x80D6F634) + 394078803)) & 0x7E5EFBD2)) * (v209 ^ 0x80D6F634);
  LOBYTE(STACK[0x24C]) = v206 ^ 0xC2;
  LOBYTE(STACK[0x284]) = v206 ^ 0xC2;
  LOBYTE(STACK[0x5DE]) = BYTE2(v206) ^ 0xDD;
  LOBYTE(STACK[0x616]) = BYTE2(v206) ^ 0xDD;
  v211 = (v206 ^ 0x441A8105) + (v210 ^ 0x7FF577BF) + ((2 * v210) & 0xFFEAEF7E) - 465562898;
  v212 = v211 - ((2 * v211) & 0xEDC411BE) + 1994524895;
  LOBYTE(STACK[0x632]) = BYTE2(v209) ^ 0x11;
  LOBYTE(STACK[0x66A]) = BYTE2(v209) ^ 0x11;
  LOBYTE(STACK[0x2BC]) = v212 ^ 0x18;
  LOBYTE(STACK[0x2F4]) = v212 ^ 0x18;
  LOBYTE(STACK[0x2A0]) = v209 ^ 0xF3;
  LOBYTE(STACK[0x2D8]) = v209 ^ 0xF3;
  v213 = ((((v212 ^ 0x76E208DF) + 1895837160) ^ 0x5FEBFFFF) - 1609302015 + ((2 * ((v212 ^ 0x76E208DF) + 1895837160)) & 0xBFD7FFFE)) * (v212 ^ 0x76E208DF);
  LOBYTE(STACK[0x7A7]) = HIBYTE(v206) ^ 0x83;
  LOBYTE(STACK[0x7DF]) = HIBYTE(v206) ^ 0x83;
  LOBYTE(STACK[0x7FB]) = HIBYTE(v209) ^ 0x47;
  LOBYTE(STACK[0x833]) = HIBYTE(v209) ^ 0x47;
  LOBYTE(STACK[0x4A1]) = BYTE1(v209) ^ 0x31;
  LOBYTE(STACK[0x469]) = BYTE1(v209) ^ 0x31;
  LOBYTE(STACK[0x4BD]) = BYTE1(v212) ^ 0xCF;
  LOBYTE(STACK[0x485]) = BYTE1(v212) ^ 0xCF;
  v214 = (v209 ^ 0x80D6F634) + (v213 ^ 0x73EDB938) + ((2 * v213) & 0xE7DB7270) + 1669921715;
  v215 = v214 - ((2 * v214) & 0xE63C32D0) + 1931352424;
  LOBYTE(STACK[0x348]) = v215 ^ 0xAF;
  LOBYTE(STACK[0x310]) = v215 ^ 0xAF;
  LOBYTE(STACK[0x64E]) = BYTE2(v212) ^ 0x25;
  LOBYTE(STACK[0x686]) = BYTE2(v212) ^ 0x25;
  v216 = ((((v215 ^ 0x731E1968) + 1576830580) ^ 0xBF6FEFBF) + 1083183169 + ((2 * ((v215 ^ 0x731E1968) + 1576830580)) & 0x7EDFDF7E)) * (v215 ^ 0x731E1968);
  LOBYTE(STACK[0x6A2]) = BYTE2(v215) ^ 0xD9;
  LOBYTE(STACK[0x6DA]) = BYTE2(v215) ^ 0xD9;
  v217 = (v212 ^ 0x76E208DF) + (v216 ^ 0xD5FF27EF) + ((2 * v216) & 0xABFE4FDE) + 683691750;
  v218 = v217 - ((2 * v217) & 0xF878D774) + 2084334522;
  LOBYTE(STACK[0x817]) = HIBYTE(v212) ^ 0xB1;
  LOBYTE(STACK[0x84F]) = HIBYTE(v212) ^ 0xB1;
  v219 = ((((v218 ^ 0x7C3C6BBA) + 1348956198) ^ 0x7BBAE7F2) - 2075846642 + ((2 * ((v218 ^ 0x7C3C6BBA) + 1348956198)) & 0xF775CFE4)) * (v218 ^ 0x7C3C6BBA);
  v220 = (v215 ^ 0x731E1968) + (v219 ^ 0xFBF46FD6) + ((2 * v219) & 0xF7E8DFAC) - 1775551967;
  LOBYTE(STACK[0x511]) = BYTE1(v215) ^ 0xDE;
  LOBYTE(STACK[0x4D9]) = BYTE1(v215) ^ 0xDE;
  LOBYTE(STACK[0x8A3]) = HIBYTE(v215) ^ 0xB4;
  LOBYTE(STACK[0x86B]) = HIBYTE(v215) ^ 0xB4;
  v221 = v220 - ((2 * v220) & 0x641FC328) + 839901588;
  LOBYTE(STACK[0x32C]) = v218 ^ 0x7D;
  LOBYTE(STACK[0x364]) = v218 ^ 0x7D;
  v222 = ((((v221 ^ 0x320FE194) + 51644021) ^ 0xDFBEFB5F) + 541131937 + ((2 * ((v221 ^ 0x320FE194) + 51644021)) & 0xBF7DF6BE)) * (v221 ^ 0x320FE194);
  LOBYTE(STACK[0x52D]) = BYTE1(v218) ^ 0xAC;
  LOBYTE(STACK[0x4F5]) = BYTE1(v218) ^ 0xAC;
  v223 = (v218 ^ 0x7C3C6BBA) + (v222 ^ 0xDFEEBEEF) + ((2 * v222) & 0xBFDD7DDE) - 1203365846;
  v224 = v223 - ((2 * v223) & 0xA44E5C18) + 1378299404;
  LOBYTE(STACK[0x6BE]) = BYTE2(v218) ^ 0xFB;
  LOBYTE(STACK[0x6F6]) = BYTE2(v218) ^ 0xFB;
  LOBYTE(STACK[0x3B8]) = v221 ^ 0x53;
  LOBYTE(STACK[0x380]) = v221 ^ 0x53;
  v225 = ((((v224 ^ 0x52272E0C) - 1952420128) ^ 0x6BD937FB) - 1809397755 + ((2 * ((v224 ^ 0x52272E0C) - 1952420128)) & 0xD7B26FF6)) * (v224 ^ 0x52272E0C);
  LOBYTE(STACK[0x887]) = HIBYTE(v218) ^ 0xBB;
  LOBYTE(STACK[0x20B]) = HIBYTE(v221) ^ 0xF5;
  v226 = (v221 ^ 0x320FE194) + (v225 ^ 0xFF5EFB97) + ((2 * v225) & 0xFEBDF72E) - 946035084;
  LOBYTE(STACK[0x59D]) = BYTE1(v224) ^ 0xE9;
  LOBYTE(STACK[0x565]) = BYTE1(v224) ^ 0xE9;
  LOBYTE(v194) = BYTE2(v221) ^ 0xC8;
  LOBYTE(v192) = BYTE1(v221) ^ 0x26;
  LOBYTE(STACK[0x3D4]) = v224 ^ 0xCB;
  LOBYTE(STACK[0x39C]) = v224 ^ 0xCB;
  v227 = v226 - ((2 * v226) & 0x29343A6E) - 1801839305;
  LOBYTE(STACK[0x549]) = v192;
  LOBYTE(STACK[0x581]) = v192;
  LOBYTE(STACK[0x74A]) = v194;
  LOBYTE(STACK[0x712]) = v194;
  v228 = ((((v227 ^ 0x949A1D37) - 401238862) ^ 0x7B3FF3FF) - 2067791872 + ((2 * ((v227 ^ 0x949A1D37) - 401238862)) & 0xF67FE7FE) + 3073) * (v227 ^ 0x949A1D37);
  LOBYTE(STACK[0x428]) = v227 ^ 0xF0;
  LOBYTE(STACK[0x3F0]) = v227 ^ 0xF0;
  v229 = (v224 ^ 0x52272E0C) + (v228 ^ 0xFB6FBDF3) + ((2 * v228) & 0xF6DF7BE6) + 1638759802;
  v230 = v229 - ((2 * v229) & 0xCB2F7872) - 443040711;
  LOBYTE(STACK[0x5F1]) = BYTE1(v227) ^ 0xDA;
  LOBYTE(STACK[0x5B9]) = BYTE1(v227) ^ 0xDA;
  v231 = ((((v230 ^ 0xE597BC39) - 734889248) ^ 0x9BF7F675) + 1678245912 + ((2 * ((v230 ^ 0xE597BC39) - 734889248)) & 0x37EFECEA) + 2419) * (v230 ^ 0xE597BC39);
  v232 = ((((2 * (v231 - ((2 * v231) & 0xF751C67A) + 2074665789)) ^ 0xF751C67A) - ((2 * ((2 * (v231 - ((2 * v231) & 0xF751C67A) + 2074665789)) ^ 0xF751C67A)) & 0x6D21CBBC) + 915465695) & 0xA6877C1E ^ 0x2680641E) + ((v231 - ((2 * v231) & 0xF751C67A) + 2074665789) ^ 0xA8EB5D32);
  LOBYTE(STACK[0x766]) = BYTE2(v224) ^ 0xE0;
  LOBYTE(STACK[0x72E]) = BYTE2(v224) ^ 0xE0;
  LOBYTE(STACK[0x227]) = HIBYTE(v224) ^ 0x95;
  v233 = (v227 ^ 0x949A1D37) + (v232 ^ 0x7BAFEBBE) + ((2 * v232) & 0xF75FD77C) - 2075126718;
  v234 = v233 - ((2 * v233) & 0xB9F7FCBC) - 587465122;
  LOBYTE(STACK[0x27B]) = HIBYTE(v227) ^ 0x53;
  LOBYTE(STACK[0x243]) = HIBYTE(v227) ^ 0x53;
  LOBYTE(STACK[0x7BA]) = BYTE2(v227) ^ 0x5D;
  LOBYTE(STACK[0x782]) = BYTE2(v227) ^ 0x5D;
  v235 = ((((v234 ^ 0xDCFBFE5E) - 1868708802) ^ 0xD5D7DFEF) + 707272721 + ((2 * ((v234 ^ 0xDCFBFE5E) - 1868708802)) & 0xABAFBFDE)) * (v234 ^ 0xDCFBFE5E);
  LOBYTE(STACK[0x5D5]) = BYTE1(v230) ^ 0x7B;
  LOBYTE(STACK[0x60D]) = BYTE1(v230) ^ 0x7B;
  v236 = (v230 ^ 0xE597BC39) + (v235 ^ 0xF3EF5FBB) + ((2 * v235) & 0xE7DEBF76) - 324863502;
  LOBYTE(v232) = HIBYTE(v230) ^ 0x22;
  LOBYTE(v230) = v230 ^ 0xFE;
  LOBYTE(STACK[0x40C]) = v230;
  LOBYTE(STACK[0x444]) = v230;
  LOBYTE(STACK[0x79E]) = BYTE2(v230) ^ 0x50;
  LOBYTE(STACK[0x7D6]) = BYTE2(v230) ^ 0x50;
  v237 = v236 - ((2 * v236) & 0x41394EB8) + 547137372;
  LOBYTE(STACK[0x661]) = BYTE1(v234) ^ 0x39;
  LOBYTE(STACK[0x629]) = BYTE1(v234) ^ 0x39;
  v238 = ((((v237 ^ 0x209CA75C) + 227270299) ^ 0xDFBDBB4F) + 541213873 + ((2 * ((v237 ^ 0x209CA75C) + 227270299)) & 0xBF7B769E)) * (v237 ^ 0x209CA75C);
  LOBYTE(STACK[0x460]) = v234 ^ 0x99;
  LOBYTE(STACK[0x498]) = v234 ^ 0x99;
  LOBYTE(STACK[0x25F]) = v232;
  LOBYTE(STACK[0x297]) = v232;
  LOBYTE(STACK[0x67D]) = BYTE1(v237) ^ 0x60;
  LOBYTE(STACK[0x645]) = BYTE1(v237) ^ 0x60;
  LOBYTE(STACK[0x2B3]) = HIBYTE(v234) ^ 0x1B;
  LOBYTE(STACK[0x2EB]) = HIBYTE(v234) ^ 0x1B;
  v239 = (v234 ^ 0xDCFBFE5E) + (v238 ^ 0xFF9CFDFD) + ((2 * v238) & 0xFF39FBFA) - 294277396;
  v240 = HIWORD(v234);
  v241 = v239 - ((2 * v239) & 0xF7CC7896) + 2078686283;
  LOBYTE(v240) = v240 ^ 0x3C;
  LOBYTE(STACK[0x82A]) = v240;
  LOBYTE(STACK[0x7F2]) = v240;
  LOBYTE(STACK[0x307]) = HIBYTE(v237) ^ 0xE7;
  LOBYTE(STACK[0x2CF]) = HIBYTE(v237) ^ 0xE7;
  v242 = ((((v241 ^ 0x7BE63C4B) + 1716980124) ^ 0x79EBBDDA) - 2045492698 + ((2 * ((v241 ^ 0x7BE63C4B) + 1716980124)) & 0xF3D77BB4)) * (v241 ^ 0x7BE63C4B);
  LOBYTE(STACK[0x4D0]) = v241 ^ 0x8C;
  LOBYTE(STACK[0x508]) = v241 ^ 0x8C;
  LOBYTE(STACK[0x846]) = BYTE2(v237) ^ 0x5B;
  LOBYTE(STACK[0x80E]) = BYTE2(v237) ^ 0x5B;
  v243 = (v237 ^ 0x209CA75C) + (v242 ^ 0xBEE5BAFE) + ((2 * v242) & 0x7DCB75FC) - 1599485230;
  v244 = v243 - ((2 * v243) & 0xC3867F66) + 1640185779;
  v245 = ((((v244 ^ 0x61C33FB3) - 1874359617) ^ 0x6552BA37) - 1699920439 + ((2 * ((v244 ^ 0x61C33FB3) - 1874359617)) & 0xCAA5746E)) * (v244 ^ 0x61C33FB3);
  LOBYTE(STACK[0x699]) = BYTE1(v241) ^ 0xFB;
  LOBYTE(STACK[0x6D1]) = BYTE1(v241) ^ 0xFB;
  LOBYTE(v237) = v237 ^ 0x9B;
  LOBYTE(STACK[0x47C]) = v237;
  LOBYTE(STACK[0x4B4]) = v237;
  LOBYTE(STACK[0x862]) = BYTE2(v241) ^ 0x21;
  LOBYTE(STACK[0x89A]) = BYTE2(v241) ^ 0x21;
  v246 = (v241 ^ 0x7BE63C4B) + (v245 ^ 0xFDEFF780) + ((2 * v245) & 0xFBDFEF00) - 1826489821;
  LOBYTE(STACK[0x4EC]) = (v243 - ((2 * v243) & 0x66) - 77) ^ 0x74;
  LOBYTE(STACK[0x524]) = (v243 - ((2 * v243) & 0x66) - 77) ^ 0x74;
  LOBYTE(STACK[0x323]) = HIBYTE(v241) ^ 0xBC;
  LOBYTE(STACK[0x35B]) = HIBYTE(v241) ^ 0xBC;
  v247 = v246 - ((2 * v246) & 0x7F93C9DA) - 1077287699;
  LOBYTE(STACK[0x6B5]) = BYTE1(v244) ^ 0xF8;
  LOBYTE(STACK[0x6ED]) = BYTE1(v244) ^ 0xF8;
  v248 = ((((v247 ^ 0xBFC9E4ED) - 606660320) ^ 0xFFE7EFFE) + 1576962 + ((2 * ((v247 ^ 0xBFC9E4ED) - 606660320)) & 0xFFCFDFFC)) * (v247 ^ 0xBFC9E4ED);
  LOBYTE(STACK[0x8B6]) = BYTE2(v244) ^ 4;
  LOBYTE(STACK[0x87E]) = BYTE2(v244) ^ 4;
  v249 = (v244 ^ 0x61C33FB3) + (v248 ^ 0x7567EEEB) + ((2 * v248) & 0xEACFDDD6) + 616458843;
  LOBYTE(STACK[0x709]) = BYTE1(v247) ^ 0x23;
  LOBYTE(STACK[0x741]) = BYTE1(v247) ^ 0x23;
  v250 = v249 - ((2 * v249) & 0xB850566A) + 1546136373;
  LOBYTE(STACK[0x578]) = v247 ^ 0x2A;
  LOBYTE(STACK[0x540]) = v247 ^ 0x2A;
  v251 = ((((v250 ^ 0x5C282B35) + 2049871696) ^ 0x13D7FF6F) - 332922735 + ((2 * ((v250 ^ 0x5C282B35) + 2049871696)) & 0x27AFFEDE)) * (v250 ^ 0x5C282B35);
  LOBYTE(STACK[0x377]) = HIBYTE(v244) ^ 0xA6;
  LOBYTE(STACK[0x33F]) = HIBYTE(v244) ^ 0xA6;
  v252 = (v247 ^ 0xBFC9E4ED) + (v251 ^ 0xEA7EF6BF) + ((2 * v251) & 0xD4FDED7E) - 2008531597;
  LOBYTE(STACK[0x3CB]) = HIBYTE(v247) ^ 0x78;
  LOBYTE(STACK[0x393]) = HIBYTE(v247) ^ 0x78;
  LOBYTE(STACK[0x202]) = BYTE2(v247) ^ 0xE;
  LOBYTE(STACK[0x725]) = BYTE1(v250) ^ 0xEC;
  LOBYTE(STACK[0x75D]) = BYTE1(v250) ^ 0xEC;
  LOBYTE(STACK[0x594]) = v250 ^ 0xF2;
  LOBYTE(STACK[0x55C]) = v250 ^ 0xF2;
  v253 = v252 - ((2 * v252) & 0x70E55278) + 947038524;
  v254 = ((((v253 ^ 0x3872A93C) - 391348697) ^ 0xBFE965ED) + 1075223059 + ((2 * ((v253 ^ 0x3872A93C) - 391348697)) & 0x7FD2CBDA)) * (v253 ^ 0x3872A93C);
  LOBYTE(STACK[0x21E]) = BYTE2(v250) ^ 0xEF;
  v255 = (v250 ^ 0x5C282B35) + (v254 ^ 0x95FF7EBF) + ((2 * v254) & 0x2BFEFD7E) + 1440741069;
  v256 = v255 - ((2 * v255) & 0xEA252C90) + 1964152392;
  LOBYTE(STACK[0x3E7]) = HIBYTE(v250) ^ 0x9B;
  LOBYTE(STACK[0x3AF]) = HIBYTE(v250) ^ 0x9B;
  LOBYTE(STACK[0x5E8]) = v253 ^ 0xFB;
  LOBYTE(STACK[0x5B0]) = v253 ^ 0xFB;
  v257 = ((((v256 ^ 0x75129648) + 308654761) ^ 0xFB7F58BF) + 75540289 + ((2 * ((v256 ^ 0x75129648) + 308654761)) & 0xF6FEB17E)) * (v256 ^ 0x75129648);
  LOBYTE(STACK[0x604]) = v256 ^ 0x8F;
  LOBYTE(STACK[0x5CC]) = v256 ^ 0x8F;
  LOBYTE(STACK[0x779]) = BYTE1(v253) ^ 0x6E;
  LOBYTE(STACK[0x7B1]) = BYTE1(v253) ^ 0x6E;
  v258 = (v253 ^ 0x3872A93C) + (v257 ^ 0xFEF5B5F7) + ((2 * v257) & 0xFDEB6BEE) - 100097474;
  v259 = v258 - ((2 * v258) & 0x513C0C0E) + 681444871;
  LOBYTE(STACK[0x23A]) = BYTE2(v253) ^ 0xB5;
  LOBYTE(STACK[0x272]) = BYTE2(v253) ^ 0xB5;
  LOBYTE(STACK[0x403]) = ~HIBYTE(v253);
  LOBYTE(STACK[0x43B]) = ~HIBYTE(v253);
  LOBYTE(STACK[0x7CD]) = BYTE1(v256) ^ 0x51;
  LOBYTE(STACK[0x795]) = BYTE1(v256) ^ 0x51;
  LOBYTE(STACK[0x256]) = BYTE2(v256) ^ 0xD5;
  LOBYTE(STACK[0x28E]) = BYTE2(v256) ^ 0xD5;
  v260 = ((((v259 ^ 0x289E0607) - 285718906) ^ 0x7EF7F3F7) - 2130179063 + ((2 * ((v259 ^ 0x289E0607) - 285718906)) & 0xFDEFE7EE)) * (v259 ^ 0x289E0607);
  LOBYTE(STACK[0x620]) = v259 ^ 0xC0;
  LOBYTE(STACK[0x658]) = v259 ^ 0xC0;
  v261 = (v256 ^ 0x75129648) + (v260 ^ 0xBF77FDFF) + ((2 * v260) & 0x7EEFFBFE) - 1952606363;
  LOBYTE(STACK[0x457]) = HIBYTE(v256) ^ 0xB2;
  LOBYTE(STACK[0x41F]) = HIBYTE(v256) ^ 0xB2;
  v262 = v261 - ((2 * v261) & 0x5912845A) - 1400290771;
  LOBYTE(STACK[0x473]) = HIBYTE(v259) ^ 0xEF;
  LOBYTE(STACK[0x4AB]) = HIBYTE(v259) ^ 0xEF;
  v263 = ((((v262 ^ 0xAC89422D) + 1712468581) ^ 0x3ECA73FA) - 1053455354 + ((2 * ((v262 ^ 0xAC89422D) + 1712468581)) & 0x7D94E7F4)) * (v262 ^ 0xAC89422D);
  LOBYTE(STACK[0x2E2]) = BYTE2(v259) ^ 0x59;
  LOBYTE(STACK[0x2AA]) = BYTE2(v259) ^ 0x59;
  LOBYTE(STACK[0x7E9]) = BYTE1(v259) ^ 0xC1;
  LOBYTE(STACK[0x821]) = BYTE1(v259) ^ 0xC1;
  v264 = (v259 ^ 0x289E0607) + (v263 ^ 0xFBFEAF7B) + ((2 * v263) & 0xF7FD5EF6) + 1632036787;
  LOBYTE(v263) = (v261 - ((2 * v261) & 0x5A) + 45) ^ 0xEA;
  LOBYTE(STACK[0x674]) = v263;
  LOBYTE(STACK[0x63C]) = v263;
  v265 = v264 - ((2 * v264) & 0x6BD34154) + 904503466;
  v266 = ((((v265 ^ 0x35E9A0AA) - 1402364828) ^ 0x75EEAA9D) - 1978575517 + ((2 * ((v265 ^ 0x35E9A0AA) - 1402364828)) & 0xEBDD553A)) * (v265 ^ 0x35E9A0AA);
  LOBYTE(STACK[0x2C6]) = BYTE2(v262) ^ 0x4E;
  LOBYTE(STACK[0x2FE]) = BYTE2(v262) ^ 0x4E;
  LOBYTE(STACK[0x48F]) = HIBYTE(v262) ^ 0x6B;
  LOBYTE(STACK[0x4C7]) = HIBYTE(v262) ^ 0x6B;
  LOBYTE(STACK[0x690]) = (v264 - ((2 * v264) & 0x54) - 86) ^ 0x6D;
  LOBYTE(STACK[0x6C8]) = (v264 - ((2 * v264) & 0x54) - 86) ^ 0x6D;
  v267 = (v262 ^ 0xAC89422D) + (v266 ^ 0xDBB1DAB5) + ((2 * v266) & 0xB763B56A);
  LOBYTE(STACK[0x352]) = BYTE2(v265) ^ 0x2E;
  LOBYTE(STACK[0x31A]) = BYTE2(v265) ^ 0x2E;
  v268 = v267 - 993434949 - ((2 * (v267 - 993434949)) & 0x745F29C6) - 1171286813;
  LOBYTE(STACK[0x51B]) = HIBYTE(v265) ^ 0xF2;
  LOBYTE(STACK[0x4E3]) = HIBYTE(v265) ^ 0xF2;
  v269 = ((((v268 ^ 0xBA2F94E3) + 907690172) ^ 0x777FBFDE) - 2004860894 + ((2 * ((v268 ^ 0xBA2F94E3) + 907690172)) & 0xEEFF7FBC)) * (v268 ^ 0xBA2F94E3);
  LOBYTE(STACK[0x6AC]) = v268 ^ 0x24;
  LOBYTE(STACK[0x6E4]) = v268 ^ 0x24;
  LOBYTE(STACK[0x805]) = BYTE1(v262) ^ 0x85;
  LOBYTE(STACK[0x83D]) = BYTE1(v262) ^ 0x85;
  v270 = (v265 ^ 0x35E9A0AA) + (v269 ^ 0xF7DABEEF) + ((2 * v269) & 0xEFB57DDE) - 1534006161;
  v271 = v270 - ((2 * v270) & 0x8B96424E) + 1170940199;
  v272 = ((((v271 ^ 0x45CB2127) - 488710073) ^ 0xE1F677BF) + 503941185 + ((2 * ((v271 ^ 0x45CB2127) - 488710073)) & 0xC3ECEF7E)) * (v271 ^ 0x45CB2127);
  LOBYTE(STACK[0x8AD]) = BYTE1(v268) ^ 0x53;
  LOBYTE(STACK[0x875]) = BYTE1(v268) ^ 0x53;
  LOBYTE(STACK[0x859]) = BYTE1(v265) ^ 0x67;
  LOBYTE(STACK[0x891]) = BYTE1(v265) ^ 0x67;
  v273 = (v268 ^ 0xBA2F94E3) + (v272 ^ 0x7BFCBBFC) + ((2 * v272) & 0xF7F977F8) - 441692658;
  LOBYTE(v63) = BYTE2(v268) ^ 0xE8;
  v274 = v273 - ((2 * v273) & 0x6E5C4EB2) - 1221712039;
  LOBYTE(STACK[0x4FF]) = HIBYTE(v268) ^ 0x7D;
  LOBYTE(STACK[0x537]) = HIBYTE(v268) ^ 0x7D;
  v275 = ((((v274 ^ 0xB72E2759) - 406886107) ^ 0x7FFFDBFF) - 2147474750 + ((2 * ((v274 ^ 0xB72E2759) - 406886107)) & 0xFFFFB7FE) + 319) * (v274 ^ 0xB72E2759);
  LOBYTE(STACK[0x700]) = v271 ^ 0xE0;
  LOBYTE(STACK[0x738]) = v271 ^ 0xE0;
  LOBYTE(STACK[0x36E]) = v63;
  LOBYTE(STACK[0x336]) = v63;
  LOBYTE(STACK[0x3C2]) = BYTE2(v271) ^ 0xC;
  LOBYTE(STACK[0x38A]) = BYTE2(v271) ^ 0xC;
  v276 = (v271 ^ 0x45CB2127) + (v275 ^ 0xF7F8FFB5) + ((2 * v275) & 0xEFF1FF6A) + 463200238;
  v277 = v276 - ((2 * v276) & 0x898FDA2) + 72122065;
  LOBYTE(STACK[0x215]) = BYTE1(v274) ^ 0xE0;
  LOBYTE(STACK[0x553]) = HIBYTE(v271) ^ 0x82;
  LOBYTE(STACK[0x58B]) = HIBYTE(v271) ^ 0x82;
  v278 = ((((v277 ^ 0x44C7ED1) - 1527019979) ^ 0x3EE15BDB) - 1054956507 + ((2 * ((v277 ^ 0x44C7ED1) - 1527019979)) & 0x7DC2B7B6)) * (v277 ^ 0x44C7ED1);
  LOBYTE(STACK[0x754]) = v274 ^ 0x9E;
  LOBYTE(STACK[0x71C]) = v274 ^ 0x9E;
  LOBYTE(STACK[0x3DE]) = BYTE2(v274) ^ 0xE9;
  LOBYTE(STACK[0x3A6]) = BYTE2(v274) ^ 0xE9;
  v279 = (v274 ^ 0xB72E2759) + (v278 ^ 0x6EF6EC7F) + ((2 * v278) & 0xDDEDD8FE) + 315531351;
  v280 = v279 - ((2 * v279) & 0x369EF574) - 1689290054;
  LOBYTE(STACK[0x5A7]) = HIBYTE(v274) ^ 0x70;
  LOBYTE(STACK[0x56F]) = HIBYTE(v274) ^ 0x70;
  LOBYTE(STACK[0x7A8]) = v277 ^ 0x16;
  LOBYTE(STACK[0x770]) = v277 ^ 0x16;
  LOBYTE(STACK[0x269]) = BYTE1(v277) ^ 0xB9;
  LOBYTE(STACK[0x231]) = BYTE1(v277) ^ 0xB9;
  LOBYTE(STACK[0x7C4]) = v280 ^ 0x7D;
  LOBYTE(STACK[0x78C]) = v280 ^ 0x7D;
  LOBYTE(STACK[0x432]) = BYTE2(v277) ^ 0x8B;
  LOBYTE(STACK[0x3FA]) = BYTE2(v277) ^ 0x8B;
  v281 = (v277 ^ 0x44C7ED1) + ((((((v280 ^ 0x9B4F7ABA) + 27847528) ^ 0x63ABBF9F) - 1672200095 + ((2 * ((v280 ^ 0x9B4F7ABA) + 27847528)) & 0xC7577F3E)) * (v280 ^ 0x9B4F7ABA)) ^ 0xFAFB89BD) + ((2 * ((((v280 ^ 0x9B4F7ABA) + 27847528) ^ 0x63ABBF9F) - 1672200095 + ((2 * ((v280 ^ 0x9B4F7ABA) + 27847528)) & 0xC7577F3E)) * (v280 ^ 0x9B4F7ABA)) & 0xF5F7137A) + 321755822;
  LOBYTE(STACK[0x5C3]) = HIBYTE(v277) ^ 0xC3;
  LOBYTE(STACK[0x5FB]) = HIBYTE(v277) ^ 0xC3;
  v282 = v281 - ((2 * v281) & 0x243801A2) + 303825105;
  v283 = ((((v282 ^ 0x121C00D1) - 1878192448) ^ 0x75E4FDF7) - 1977941495 + ((2 * ((v282 ^ 0x121C00D1) - 1878192448)) & 0xEBC9FBEE)) * (v282 ^ 0x121C00D1);
  v284 = (v280 ^ 0x9B4F7ABA) + (v283 ^ 0xBFBEEF3F) + ((2 * v283) & 0x7F7DDE7E) + 1679287249;
  v285 = v284 - ((2 * v284) & 0x82EC1D48) + 1098256036;
  LOBYTE(STACK[0x24D]) = BYTE1(v280) ^ 0xBD;
  LOBYTE(STACK[0x285]) = BYTE1(v280) ^ 0xBD;
  LOBYTE(STACK[0x5DF]) = HIBYTE(v280) ^ 0x5C;
  LOBYTE(STACK[0x617]) = HIBYTE(v280) ^ 0x5C;
  LOBYTE(STACK[0x416]) = BYTE2(v280) ^ 0x88;
  LOBYTE(STACK[0x44E]) = BYTE2(v280) ^ 0x88;
  LOBYTE(STACK[0x7E0]) = v282 ^ 0x16;
  LOBYTE(STACK[0x818]) = v282 ^ 0x16;
  LOBYTE(STACK[0x633]) = HIBYTE(v282) ^ 0xD5;
  LOBYTE(STACK[0x66B]) = HIBYTE(v282) ^ 0xD5;
  v286 = ((((v285 ^ 0x41760EA4) + 1254560578) ^ 0xB8EFEACD) + 1192236339 + ((2 * ((v285 ^ 0x41760EA4) + 1254560578)) & 0x71DFD59A)) * (v285 ^ 0x41760EA4);
  LOBYTE(STACK[0x4A2]) = BYTE2(v282) ^ 0xDB;
  LOBYTE(STACK[0x46A]) = BYTE2(v282) ^ 0xDB;
  LOBYTE(STACK[0x2A1]) = BYTE1(v282) ^ 0xC7;
  LOBYTE(STACK[0x2D9]) = BYTE1(v282) ^ 0xC7;
  v287 = (v282 ^ 0x121C00D1) + (v286 ^ 0xEFCEFEEF) + ((2 * v286) & 0xDF9DFDDE) - 785285648;
  v288 = v287 - ((2 * v287) & 0x943E685C) - 903924690;
  LOBYTE(STACK[0x2BD]) = BYTE1(v285) ^ 0xC9;
  LOBYTE(STACK[0x2F5]) = BYTE1(v285) ^ 0xC9;
  v289 = ((((v288 ^ 0xCA1F342E) + 2098130734) ^ 0xED7FFFFF) + 310378497 + ((2 * ((v288 ^ 0xCA1F342E) + 2098130734)) & 0xDAFFFFFE)) * (v288 ^ 0xCA1F342E);
  LOBYTE(STACK[0x834]) = v285 ^ 0x63;
  LOBYTE(STACK[0x7FC]) = v285 ^ 0x63;
  LOBYTE(STACK[0x486]) = BYTE2(v285) ^ 0xB1;
  LOBYTE(STACK[0x4BE]) = BYTE2(v285) ^ 0xB1;
  v290 = (v285 ^ 0x41760EA4) + (v289 ^ 0x6FDF4DEE) + ((2 * v289) & 0xDFBE9BDC) - 269885406;
  v291 = v290 - ((2 * v290) & 0x70BDF634) - 1201734886;
  LOBYTE(STACK[0x687]) = HIBYTE(v285) ^ 0x86;
  LOBYTE(STACK[0x64F]) = HIBYTE(v285) ^ 0x86;
  LOBYTE(STACK[0x6A3]) = HIBYTE(v288) ^ 0xD;
  LOBYTE(STACK[0x6DB]) = HIBYTE(v288) ^ 0xD;
  LOBYTE(STACK[0x850]) = v288 ^ 0xE9;
  LOBYTE(STACK[0x888]) = v288 ^ 0xE9;
  LOBYTE(STACK[0x365]) = BYTE1(v291) ^ 0x3C;
  LOBYTE(STACK[0x32D]) = BYTE1(v291) ^ 0x3C;
  LOBYTE(STACK[0x349]) = BYTE1(v288) ^ 0xF3;
  LOBYTE(STACK[0x311]) = BYTE1(v288) ^ 0xF3;
  LOBYTE(STACK[0x4DA]) = BYTE2(v288) ^ 0xD8;
  LOBYTE(STACK[0x512]) = BYTE2(v288) ^ 0xD8;
  LOBYTE(STACK[0x8A4]) = v291 ^ 0xDD;
  LOBYTE(STACK[0x86C]) = v291 ^ 0xDD;
  LOBYTE(STACK[0x6F7]) = HIBYTE(v291) ^ 0x7F;
  LOBYTE(STACK[0x6BF]) = HIBYTE(v291) ^ 0x7F;
  LOBYTE(STACK[0x52E]) = BYTE2(v291) ^ 0x99;
  v292 = *(v59 - 114) ^ 0xEF;
  LOBYTE(STACK[0x4F6]) = BYTE2(v291) ^ 0x99;
  v293 = (*(v59 - 115) ^ 0xEF) - ((2 * (*(v59 - 115) ^ 0xEF)) & 0xFFFFFF9F);
  v571 = (*(v59 - 120) ^ 0xEF) - ((2 * (*(v59 - 120) ^ 0xEF)) & 0x126);
  v294 = (*(v59 - 112) ^ 0xEF) - ((2 * (*(v59 - 112) ^ 0xEF)) & 0x122);
  v295 = *((LODWORD(STACK[0x18C8]) ^ 0xE63EDFAE8681B70ELL) + a9 + ((2 * (LODWORD(STACK[0x18C8]) ^ 0x79564AE1u)) & 0x1FFAFFBDELL) + 0x102F989C85862F4FLL);
  v296 = (*(v59 - 111) ^ 0xEF) - ((2 * (*(v59 - 111) ^ 0xEF)) & 0xB2) + 3066986;
  v297 = LOBYTE(STACK[0x770]) ^ 0x13 ^ *((LODWORD(STACK[0x15C0]) ^ 0xDFF5AFDD46A8B59ELL) + a9 + ((2 * (LODWORD(STACK[0x15C0]) ^ 0x79564AE1u)) & 0x7FFDFEFE) + 0x1678C86E455F2DBFLL);
  v298 = v297 - ((2 * v297) & 0xDE);
  v299 = *((LODWORD(STACK[0x1D54]) ^ 0x6EB5EDFF8731D5DFLL) + a9 + ((2 * (LODWORD(STACK[0x1D54]) ^ 0x79564AE1u)) & 0x1FCCF3E7CLL) - 0x784775B479097200);
  v300 = (*(v59 - 108) ^ 0xEF) - ((2 * (*(v59 - 108) ^ 0xEF)) & 0x194);
  v301 = *((LODWORD(STACK[0x1BD0]) ^ 0x6CCFBC73E6EC3713) + a9 + ((2 * (LODWORD(STACK[0x1BD0]) ^ 0x79564AE1u)) & 0x13F74FBE4) - 0x766144281A5C50B4);
  v302 = *((LODWORD(STACK[0x170C]) ^ 0xFF70BB7396EBB53ELL) + a9 + ((2 * (LODWORD(STACK[0x170C]) ^ 0x79564AE1u)) & 0x1DF7BFFBELL) - 0x90243286A5FD2A1);
  v569 = (*(v59 - 119) ^ 0xEF) - ((2 * (*(v59 - 119) ^ 0xEF)) & 0x84);
  v567 = *((LODWORD(STACK[0xAEC]) ^ 0xFA729B6B87A91496) + a9 + ((2 * (LODWORD(STACK[0xAEC]) ^ 0x79564AE1u)) & 0x1FDFEBCEELL) - 0x404232079A13139);
  v303 = *((LODWORD(STACK[0xC70]) ^ 0x75FEFAF4B68F23EELL) + a9 + ((2 * (LODWORD(STACK[0xC70]) ^ 0x79564AE1u)) & 0x19FB2D21ELL) - 0x7F9082A94A7B3BD1);
  v304 = *((LODWORD(STACK[0x1588]) ^ 0x1F15E8FA45A8A11ELL) + a9 + ((2 * (LODWORD(STACK[0x1588]) ^ 0x79564AE1u)) & 0x79FDD7FE) - 0x28A770AEB7A0BEC1);
  v305 = (LOBYTE(STACK[0x78C]) ^ 0x13 ^ v301) - ((2 * (LOBYTE(STACK[0x78C]) ^ 0x13 ^ v301)) & 0x1E8);
  v306 = *((LODWORD(STACK[0x1280]) ^ 0x7F76E4FF88CF32C8) + a9 + ((2 * (LODWORD(STACK[0x1280]) ^ 0x79564AE1u)) & 0x1E332F052) + 0x76F7934B93C4B515);
  v307 = ((((v296 << 8) - 4352) ^ 0x2ECC5900) - ((2 * (((v296 << 8) - 4352) ^ 0x2ECC5900)) & 0x7A405000) + 1025517779) ^ 0x3D2028D3 | ((((v294 << 16) - 309264384) ^ 0xED910000) - ((2 * (((v294 << 16) - 309264384) ^ 0xED910000)) & 0x61D60000) - 253031335) ^ 0xF0EB0C59;
  v308 = LOBYTE(STACK[0x269]) ^ 0x13 ^ *((LODWORD(STACK[0xDF4]) ^ 0x6FC3EF5B56EF315ELL) + a9 + ((2 * (LODWORD(STACK[0xDF4]) ^ 0x79564AE1u)) & 0x5F72F77E) - 0x7955770FAA5B4E81);
  v564 = v308 - ((2 * v308) & 0x1B2);
  v309 = *((v565 ^ 0xE2D77A7BE7B9B45ELL) + a9 + ((2 * (v565 ^ 0x79564AE1)) & 0x13DDFFD7ELL) + 0x1396FDCFE66E2E7FLL);
  v310 = (LOBYTE(STACK[0x7A8]) ^ 0x13 ^ v303) - ((2 * (LOBYTE(STACK[0x7A8]) ^ 0x13 ^ v303)) & 0x70);
  v311 = ((((*(v59 - 116) ^ 0xEF) - ((2 * (*(v59 - 116) ^ 0xEF)) & 0x140)) << 8) - 1445748736) ^ 0xA9D3A000;
  v312 = v311 + 1854896746 - ((2 * v311) & 0x5D1EF400);
  v313 = (v302 ^ LOBYTE(STACK[0x617]) ^ 0x13) - ((2 * (v302 ^ LOBYTE(STACK[0x617]) ^ 0x13)) & 0x160);
  v314 = (LOBYTE(STACK[0x24D]) ^ 0x13 ^ v299) - ((2 * (LOBYTE(STACK[0x24D]) ^ 0x13 ^ v299)) & 0xFFFFFFCF);
  LODWORD(v60) = (LOBYTE(STACK[0x7C4]) ^ 0x13 ^ v306) - ((2 * (LOBYTE(STACK[0x7C4]) ^ 0x13 ^ v306)) & 0xE6);
  v315 = *((LODWORD(STACK[0x10FC]) ^ 0x55EFF33F803CF058) + a9 + ((2 * (LODWORD(STACK[0x10FC]) ^ 0x79564AE1u)) & 0x1F2D57572) - 0x5F817AF4740C8D7BLL);
  v316 = LOBYTE(STACK[0x231]) ^ 0x13 ^ *((LODWORD(STACK[0x1744]) ^ 0xF5FFF75AA4A5D01ELL) + a9 + ((2 * (LODWORD(STACK[0x1744]) ^ 0x79564AE1u)) & 0x1BBE735FELL) + 0x6E80F0A76A923FLL);
  v317 = (v312 ^ 0x6E8F7A6A | (v293 - 710445105) ^ 0xD5A777CF) - ((2 * (v312 ^ 0x6E8F7A6A | (v293 - 710445105) ^ 0xD5A777CF)) & 0xA96A);
  v318 = (LOBYTE(STACK[0x3FA]) ^ 0x13 ^ v295) - ((2 * (LOBYTE(STACK[0x3FA]) ^ 0x13 ^ v295)) & 0xFFFFFF07);
  v319 = LOBYTE(STACK[0x285]) ^ 0x13 ^ *((LODWORD(STACK[0x1404]) ^ 0x77FEDFF70EC9B712) + a9 + ((2 * (LODWORD(STACK[0x1404]) ^ 0x79564AE1u)) & 0xEF3FFBE6) + 0x7E6F98540DBE2F4BLL);
  v320 = ((((*(v59 - 107) ^ 0xEF) - ((2 * (*(v59 - 107) ^ 0xEF)) & 0x190)) << 8) - 768030720) ^ 0xD238C800;
  v321 = (v320 - ((2 * v320) & 0x7E163200) + 1057692157) ^ 0x3F0B19FD | ((((v300 << 16) - 573964288) ^ 0xDDCA0000) - ((2 * (((v300 << 16) - 573964288) ^ 0xDDCA0000)) & 0x73B20000) - 103182603) ^ 0xF9D98EF5;
  v322 = (v321 - ((2 * v321) & 0x7B68931E) - 1112258161) ^ 0xBDB4498F | ((*(v59 - 106) ^ 0xEF) - ((2 * (*(v59 - 106) ^ 0xEF)) & 0x56) + 1872036907) ^ 0x6F95042B;
  v323 = *((LODWORD(STACK[0x1A4C]) ^ 0x35DECF7F422D553FLL) + a9 + ((2 * (LODWORD(STACK[0x1A4C]) ^ 0x79564AE1u)) & 0x76F63FBC) - 0x3F705733B61CF2A0);
  v324 = v322 - ((2 * v322) & 0x3BC456);
  v325 = (((v316 - ((2 * v316) & 0xDDDDDDDD)) << 8) - 1404572160) ^ 0xAC47EE00;
  v326 = (v325 - ((2 * v325) & 0x3DDAFA00) + 518880642) ^ 0x1EED7D82 | ((((v298 << 16) - 982581248) ^ 0xC56F0000) - ((2 * (((v298 << 16) - 982581248) ^ 0xC56F0000)) & 0x8040000) - 2080235333) ^ 0x840220BB;
  v327 = (v307 - ((2 * v307) & 0x18750EDA) + 1278904173) ^ 0x4C3A876D | ((*(v59 - 110) ^ 0xEF) - 297636924 + (~(2 * (*(v59 - 110) ^ 0xEF)) | 0xFFFFFE77) + 1) ^ 0xEE426BC4;
  v328 = ((((v305 << 16) + 2096365568) ^ 0x7CF40000) - ((2 * (((v305 << 16) + 2096365568) ^ 0x7CF40000)) & 0x34A80000) + 441728172) ^ 0x1A543CAC | ((((v314 << 8) - 755636480) ^ 0xD2F5E700) - ((2 * (((v314 << 8) - 755636480) ^ 0xD2F5E700)) & 0xD342800) - 962980822) ^ 0xC69A142A;
  v329 = (v326 - ((2 * v326) & 0x2551CEBE) - 1834424481) ^ 0x92A8E75F | (v318 + 60198019) ^ 0x3968C83;
  v330 = v329 + 3674882 - ((2 * v329) & 0x702978);
  v331 = LOBYTE(STACK[0x432]) ^ *((LODWORD(STACK[0xF78]) ^ 0xF7FF7F398773BDDELL) + a9 + ((2 * (LODWORD(STACK[0xF78]) ^ 0x79564AE1u)) & 0x1FC4BEE7ELL) - 0x19106EE78C7CA01);
  v332 = (v331 ^ 0x13) - ((2 * v331) & 0x40);
  v333 = (((((v564 << 8) - 471213824) ^ 0xE3E9D900) + 1400937129 + (~(2 * (((v564 << 8) - 471213824) ^ 0xE3E9D900)) | 0xD8FECBFF)) | 1) ^ 0x53809AA9 | ((((v310 << 16) + 20447232) ^ 0x1380000) - ((2 * (((v310 << 16) + 20447232) ^ 0x1380000)) & 0x7FDC0000) + 1072625288) ^ 0x3FEEF688;
  v334 = (((v319 - ((2 * v319) & 0x42)) << 8) + 1989746944) ^ 0x76992100;
  v335 = (v334 - ((2 * v334) & 0x7AADCE00) - 1118378104) ^ 0xBD56E788 | ((((v60 << 16) + 1970470912) ^ 0x75730000) - ((2 * (((v60 << 16) + 1970470912) ^ 0x75730000)) & 0xA9C0000) + 1162800222) ^ 0x454EEC5E;
  v336 = (v332 + 464086560) ^ 0x1BA96620 | (v333 - ((2 * v333) & 0x1895D5EE) + 206236407) ^ 0xC4AEAF7;
  v337 = (((v327 + 1762932 - ((2 * v327) & 0x35D636)) << 8) + 304896) ^ 0x1AEB1B00;
  v338 = v337 - ((2 * v337) & 0xA2BE9400);
  v339 = *(v59 - 105) ^ 0xEF;
  v340 = ((v309 ^ LOBYTE(STACK[0x416]) ^ 0x13) - ((2 * (v309 ^ LOBYTE(STACK[0x416]) ^ 0x13)) & 0x19C) - 1557343282) ^ 0xA32CD3CE | (v328 - ((2 * v328) & 0x135D6B72) + 1236186553) ^ 0x49AEB5B9;
  v341 = ((((v569 << 8) - 1857601024) ^ 0x91474200) - ((2 * (((v569 << 8) - 1857601024) ^ 0x91474200)) & 0x11342C00) - 929425805) ^ 0xC89A1673 | ((((v571 << 16) - 778895360) ^ 0xD1930000) - ((2 * (((v571 << 16) - 778895360) ^ 0xD1930000)) & 0x29760000) + 347834855) ^ 0x14BB89E7;
  v342 = (((v292 + 11786370 - ((2 * v292) & 0xB0)) << 8) + 316928) ^ 0xB3DD5800;
  v343 = ((((v317 << 16) - 726335488) ^ 0xD4B50000) - ((2 * (((v317 << 16) - 726335488) ^ 0xD4B50000)) & 0x820000) + 4264641) ^ 0x4112C1 | (v342 - ((2 * v342) & 0x28227200) + 336673260) ^ 0x141139EC;
  v344 = v343 - ((2 * v343) & 0xE8F1B574);
  v345 = ((*(v59 - 109) ^ 0xEF) - ((2 * (*(v59 - 109) ^ 0xEF)) & 0xC) - 794159098) ^ 0xD0AA1806 | (v338 - 782284070) ^ 0xD15F4ADA;
  v346 = v345 - ((2 * v345) & 0x62632B48) - 1322150492;
  v347 = (v335 - ((2 * v335) & 0x6F8F984E) + 935840807) ^ 0x37C7CC27 | ((v304 ^ LOBYTE(STACK[0x44E]) ^ 0x13) - ((2 * (v304 ^ LOBYTE(STACK[0x44E]) ^ 0x13)) & 0x78) - 1736825540) ^ 0x987A253C;
  v348 = v347 - ((2 * v347) & 0x6D6EBE);
  v349 = (((((v336 - ((2 * v336) & 0x2FD742)) << 8) - 1746165504) ^ 0x97EBA100) - ((2 * ((((v336 - ((2 * v336) & 0x2FD742)) << 8) - 1746165504) ^ 0x97EBA100)) & 0x9D58EC00) + 1319925385) ^ 0x4EAC7689 | ((LOBYTE(STACK[0x5FB]) ^ 0x13 ^ v315) - ((2 * (LOBYTE(STACK[0x5FB]) ^ 0x13 ^ v315)) & 0x3C) - 1590126562) ^ 0xA138981E;
  v350 = v349 - ((2 * v349) & 0x119E6A9C) - 1999686322;
  v351 = (((v340 - ((2 * v340) & 0xC51686)) << 8) - 494189824) ^ 0xE28B4300;
  v352 = (v344 + 1954077370) ^ 0x7478DABA | ((*(v59 - 113) ^ 0xEF) - ((2 * (*(v59 - 113) ^ 0xEF)) & 0xB4) + 2071297882) ^ 0x7B757F5A;
  v353 = v352 - ((2 * v352) & 0xAE463EFE) - 685564033;
  v354 = ((*(v59 - 118) ^ 0xEF) - ((2 * (*(v59 - 118) ^ 0xEF)) & 0x190) - 1018788408) ^ 0xC34685C8 | (v341 - ((2 * v341) & 0x97810CA) - 994310043) ^ 0xC4BC0865;
  v355 = (((v354 - ((2 * v354) & 0xAC1A9C)) << 8) - 703771136) ^ 0xD60D4E00;
  v356 = (v355 - ((2 * v355) & 0x112F5E00) + 144158530) ^ 0x897AF42 | ((*(v59 - 117) ^ 0xEF) - ((2 * (*(v59 - 117) ^ 0xEF)) & 0xA0) - 1399846832) ^ 0xAC900850;
  v357 = (v351 - ((2 * v351) & 0x300B2000) - 1744465850) ^ 0x98059046 | ((v567 ^ LOBYTE(STACK[0x5DF]) ^ 0x13) - ((2 * (v567 ^ LOBYTE(STACK[0x5DF]) ^ 0x13)) & 0x126) - 794088557) ^ 0xD0AB2B93;
  v358 = ((((v330 << 8) + 113152) ^ 0x3814BC00) - ((2 * (((v330 << 8) + 113152) ^ 0x3814BC00)) & 0x715AC800) - 1196596021) ^ 0xB8AD64CB | ((LOBYTE(STACK[0x5C3]) ^ 0x13 ^ v323) - ((2 * (LOBYTE(STACK[0x5C3]) ^ 0x13 ^ v323)) & 0x166) - 25358413) ^ 0xFE7D0FB3;
  LODWORD(STACK[0xDE8]) = v350 ^ v346 ^ 0x40A8EA0B;
  v359 = ((((v324 << 8) - 1646122240) ^ 0x9DE22B00) - ((2 * (((v324 << 8) - 1646122240) ^ 0x9DE22B00)) & 0x1BA40A00) - 1915615974) ^ 0x8DD2051A | (-v339 - 1102179585) ^ 0xBE4E12FF;
  v360 = (v357 - ((2 * v357) & 0x288C2354) + 340136362) ^ v353;
  v361 = ((((v348 << 8) + 917987072) ^ 0x36B75F00) - ((2 * (((v348 << 8) + 917987072) ^ 0x36B75F00)) & 0xF16B1E00) + 2025164573) ^ 0x78B58F1D | (v313 - 409807440) ^ 0xE792D5B0;
  v362 = (v359 - ((2 * v359) & 0xC91C193C) + 1687030942) ^ (v361 - ((2 * v361) & 0x6C1B405C) + 906862638);
  LODWORD(STACK[0xC64]) = v360 ^ 0xBA334434;
  v363 = v360 ^ 0xC3650ED5;
  v364 = (v360 ^ 0xC3650ED5) - 365499804;
  v365 = v364 ^ 0x5D3FF7B2;
  v366 = (2 * v364) & 0xBA7FEF64;
  v367 = v362 ^ 0x2BD5E651;
  v368 = v362 ^ 0x5283ACB0;
  v369 = (v358 - ((2 * v358) & 0x6079C844) - 1338186718) ^ (v356 - ((2 * v356) & 0x7E928C38) - 1085716964);
  v370 = v350 ^ v346 ^ 0x39FEA0EA;
  LODWORD(STACK[0xAE0]) = v369 ^ 0x7623E8DF;
  v371 = ((((v362 ^ 0x5283ACB0) - 1206593844) ^ 0x7B5F5F5F) - 2069847903 + ((2 * ((v362 ^ 0x5283ACB0) - 1206593844)) & 0xF6BEBEBE)) * (v362 ^ 0x5283ACB0);
  v372 = (v365 - 1564473266 + v366) * v363;
  v373 = v372 ^ 0xFFF757FF;
  v374 = (2 * v372) & 0xFFEEAFFE;
  v375 = v370 + (v371 ^ 0xDF7739FF) + ((2 * v371) & 0xBEEE73FE) + 97237444;
  v376 = v375 + 2035698401 - ((2 * v375) & 0xF2AC95C2);
  v377 = v376 ^ 0x79564AE1;
  v378 = (v376 ^ 0x79564AE1) + 931829429;
  v379 = (((v370 + 206442678) ^ 0xFEFFFAFD) + 16778499 + ((2 * (v370 + 206442678)) & 0xFDFFF5FA)) * v370;
  LODWORD(STACK[0xF6C]) = v367;
  v380 = (v369 ^ 0xF75A23E) + v373 + v374 + 1130684826 - ((2 * ((v369 ^ 0xF75A23E) + v373 + v374 - 905013575)) & 0xF2AC95C2);
  v381 = v380 ^ 0x79564AE1;
  v382 = v363 + (v379 ^ 0x753CC77B) + ((2 * v379) & 0xEA798EF6) - 1907910496;
  v383 = v382 + 2035698401 - ((2 * v382) & 0xF2AC95C2);
  LODWORD(STACK[0x10F0]) = v380;
  v384 = ((((v380 ^ 0x79564AE1) - 1849164566) ^ 0xE7BFBDF9) + 406864391 + ((2 * ((v380 ^ 0x79564AE1) - 1849164566)) & 0xCF7F7BF2)) * (v380 ^ 0x79564AE1);
  v385 = v384 ^ 0xFFE7877F;
  v386 = (2 * v384) & 0xFFCF0EFE;
  LODWORD(STACK[0x13F8]) = v376;
  v387 = v383 ^ 0x79564AE1;
  v388 = ((((v383 ^ 0x79564AE1) + 1655660131) ^ 0xFDFFDD5D) + 33563299 + ((2 * ((v383 ^ 0x79564AE1) + 1655660131)) & 0xFBFFBABA)) * (v383 ^ 0x79564AE1);
  v389 = ((2 * v388) & 0xF97B7F7E) + (v388 ^ 0xFCBDBFBF);
  HIDWORD(v150) = v389 + 1;
  LODWORD(v150) = v389 + 54673473;
  v390 = (v150 >> 4) - ((2 * (v150 >> 4)) & 0xC2C84664) - 513531086;
  LODWORD(STACK[0x1274]) = v383;
  v391 = v368 + v385 + v386 - 522874982 - ((2 * (v368 + v385 + v386 + 1736393913)) & 0xF2AC95C2);
  v392 = v391 ^ 0x79564AE1;
  v393 = (v391 ^ 0x79564AE1) + 231422626;
  v394 = v393 ^ 0x7C2EFFBD;
  v395 = (2 * v393) & 0xF85DFF7A;
  v396 = ((v378 ^ 0xFBFFD1F7) + 67120649 + ((2 * v378) & 0xF7FFA3EE)) * v377;
  v397 = v396 ^ 0x7FC96AFF;
  v398 = (2 * v396) & 0xFF92D5FE;
  HIDWORD(v150) = v390 ^ 0x1642332;
  LODWORD(v150) = v390 ^ 0xE0000000;
  v399 = v381 + ((v150 >> 28) ^ 0xCFF8FB4B) + ((2 * (v150 >> 28)) & 0x9FF1F696) + 382930829;
  v400 = v399 + 2035698401 - ((2 * v399) & 0xF2AC95C2);
  LODWORD(STACK[0x157C]) = v391;
  v401 = v377 + (((v394 - 2083454909 + v395) * (v391 ^ 0x79564AE1)) ^ 0x3BF1EE35) + ((2 * (v394 - 2083454909 + v395) * (v391 ^ 0x79564AE1)) & 0x77E3DC6A) + 1651860619;
  v402 = v401 + 2035698401 - ((2 * v401) & 0xF2AC95C2);
  v403 = ((((v400 ^ 0x79564AE1) - 500197015) ^ 0xEDE1FF96) + 303956074 + ((2 * ((v400 ^ 0x79564AE1) - 500197015)) & 0xDBC3FF2C)) * (v400 ^ 0x79564AE1);
  v404 = v403 ^ 0x7DBFFCBE;
  v405 = (2 * v403) & 0xFB7FF97C;
  v406 = v402 ^ 0x79564AE1;
  v407 = ((((v402 ^ 0x79564AE1) - 2080480705) ^ 0x3FDFEEBD) - 1071640253 + ((2 * ((v402 ^ 0x79564AE1) - 2080480705)) & 0x7FBFDD7A)) * (v402 ^ 0x79564AE1);
  v408 = v387 + v397 + v398 - 1890465964 - ((2 * (v387 + v397 + v398 + 368802931)) & 0xF2AC95C2);
  v409 = v392 + v404 + v405 - 246926545 - ((2 * (v392 + v404 + v405 + 2012342350)) & 0xF2AC95C2);
  v410 = (v409 ^ 0x79564AE1) - 437995449;
  v411 = v410 ^ 0xFFF772BF;
  v412 = (2 * v410) & 0xFFEEE57E;
  v413 = ((((v408 ^ 0x79564AE1) + 1094628872) ^ 0xFD6DBF99) + 43139175 + ((2 * ((v408 ^ 0x79564AE1) + 1094628872)) & 0xFADB7F32)) * (v408 ^ 0x79564AE1);
  v414 = (v408 ^ 0x79564AE1) + (v407 ^ 0x7EBF15BF) + ((2 * v407) & 0xFD7E2B7E) + 1697456528;
  v415 = v414 + 2035698401 - ((2 * v414) & 0xF2AC95C2);
  v416 = (v400 ^ 0x79564AE1) + (v413 ^ 0xFAEBD6FE) + ((2 * v413) & 0xF5D7ADFC) - 131221337;
  v417 = v416 + 2035698401 - ((2 * v416) & 0xF2AC95C2);
  v418 = v417 ^ 0x79564AE1;
  LODWORD(STACK[0x1A08]) = v402;
  v419 = (v415 ^ 0x79564AE1) + 1060866930;
  v420 = v419 ^ 0x2EE51ED9;
  v421 = (2 * v419) & 0x5DCA3DB2;
  LODWORD(STACK[0x1700]) = v400;
  v422 = ((((v417 ^ 0x79564AE1) - 1885332716) ^ 0x2FFB79AB) - 805009835 + ((2 * ((v417 ^ 0x79564AE1) - 1885332716)) & 0x5FF6F356)) * (v417 ^ 0x79564AE1);
  v423 = (v411 + 558499 + v412 + 1950) * (v409 ^ 0x79564AE1);
  v424 = v406 + (v423 ^ 0x7FFCBFFF) + ((2 * v423) & 0xFFF97FFE) - 167704833;
  v425 = v424 + 2035698401 - ((2 * v424) & 0xF2AC95C2);
  v426 = (v420 - 786767577 + v421) * (v415 ^ 0x79564AE1);
  v427 = v426 ^ 0xFEFF7E3D;
  v428 = (2 * v426) & 0xFDFEFC7A;
  LODWORD(STACK[0x1884]) = v408;
  v429 = (v409 ^ 0x79564AE1) + (v422 ^ 0xEFDBE9EF) + ((2 * v422) & 0xDFB7D3DE) - 1712109767;
  v430 = v429 + 2035698401 - ((2 * v429) & 0xF2AC95C2);
  LODWORD(STACK[0x1B8C]) = v409;
  v431 = (v425 ^ 0x79564AE1) - 979017405;
  v432 = v431 ^ 0x759FB5DB;
  v433 = (2 * v431) & 0xEB3F6BB6;
  v434 = v430 ^ 0x79564AE1;
  v435 = ((((v430 ^ 0x79564AE1) - 1991769739) ^ 0xABEF7B72) + 1410368654 + ((2 * ((v430 ^ 0x79564AE1) - 1991769739)) & 0x57DEF6E4)) * (v430 ^ 0x79564AE1);
  LODWORD(STACK[0x1D10]) = v417;
  v436 = (v415 ^ 0x79564AE1) + (((v432 - 1973401051 + v433) * (v425 ^ 0x79564AE1)) ^ 0x7EFDFCD7) + ((2 * (v432 - 1973401051 + v433) * (v425 ^ 0x79564AE1)) & 0xFDFBF9AE) - 1357360710;
  v437 = v436 + 2035698401 - ((2 * v436) & 0xF2AC95C2);
  v438 = (v437 ^ 0x79564AE1) + 1139318838;
  v439 = v438 ^ 0x3FFF7BBF;
  v440 = (2 * v438) & 0x7FFEF77E;
  v441 = (v425 ^ 0x79564AE1) + (v435 ^ 0x771C7FA9) + ((2 * v435) & 0xEE38FF52) - 1452088340;
  v442 = v441 + 2035698401 - ((2 * v441) & 0xF2AC95C2);
  v443 = v418 + v427 + v428 + 528145111 - ((2 * (v418 + v427 + v428 - 1507553290)) & 0xF2AC95C2);
  LODWORD(STACK[0xAA8]) = v425;
  v444 = ((((v443 ^ 0x79564AE1) + 276784180) ^ 0xCFFCFDC3) + 805503549 + ((2 * ((v443 ^ 0x79564AE1) + 276784180)) & 0x9FF9FB86)) * (v443 ^ 0x79564AE1);
  v445 = v444 ^ 0x6FE77FFB;
  v446 = (2 * v444) & 0xDFCEFFF6;
  v447 = ((((v442 ^ 0x79564AE1) + 1191749206) ^ 0x3EFBABFB) - 1056680955 + ((2 * ((v442 ^ 0x79564AE1) + 1191749206)) & 0x7DF757F6)) * (v442 ^ 0x79564AE1);
  LODWORD(STACK[0xC2C]) = v430;
  LODWORD(STACK[0xF34]) = v437;
  v448 = (v437 ^ 0x79564AE1) + (v447 ^ 0x6D7BF8DD) + ((2 * v447) & 0xDAF7F1BA) + 528329218;
  v449 = v448 + 2035698401 - ((2 * v448) & 0xF2AC95C2);
  v450 = (v443 ^ 0x79564AE1) + (((v439 - 1073707967 + v440) * (v437 ^ 0x79564AE1)) ^ 0x3BF7F253) + ((2 * (v439 - 1073707967 + v440) * (v437 ^ 0x79564AE1)) & 0x77EFE4A6) - 854203149;
  v451 = v450 + 2035698401 - ((2 * v450) & 0xF2AC95C2);
  v452 = v434 + v445 + v446 + 1843804027 - ((2 * (v434 + v445 + v446 - 191894374)) & 0xF2AC95C2);
  v453 = (v449 ^ 0x79564AE1) + 887327061;
  v454 = v453 ^ 0xEF27F8FF;
  v455 = (2 * v453) & 0xDE4FF1FE;
  v456 = ((((v452 ^ 0x79564AE1) - 1438325955) ^ 0x5DBEBDAE) - 1572781486 + ((2 * ((v452 ^ 0x79564AE1) - 1438325955)) & 0xBB7D7B5C)) * (v452 ^ 0x79564AE1);
  v457 = (v442 ^ 0x79564AE1) + (v456 ^ 0x75F65C5F) + ((2 * v456) & 0xEBECB8BE) + 1858965264;
  v458 = v457 + 2035698401 - ((2 * v457) & 0xF2AC95C2);
  v459 = v458 ^ 0x79564AE1;
  LODWORD(STACK[0xDB0]) = v443;
  LODWORD(STACK[0x10B8]) = v442;
  v460 = ((((v458 ^ 0x79564AE1) - 638075184) ^ 0xF5F6FFF7) + 168361993 + ((2 * ((v458 ^ 0x79564AE1) - 638075184)) & 0xEBEDFFEE)) * (v458 ^ 0x79564AE1);
  v461 = v460 ^ 0x2EF6E6F7;
  v462 = (2 * v460) & 0x5DEDCDEE;
  LODWORD(STACK[0x123C]) = v452;
  v463 = ((((v451 ^ 0x79564AE1) + 1574679164) ^ 0xDEB7DFAF) + 558374993 + ((2 * ((v451 ^ 0x79564AE1) + 1574679164)) & 0xBD6FBF5E)) * (v451 ^ 0x79564AE1);
  v464 = (v452 ^ 0x79564AE1) + (v463 ^ 0xF5FBFBFB) + ((2 * v463) & 0xEBF7F7F6) + 1270021511;
  v465 = v464 + 2035698401 - ((2 * v464) & 0xF2AC95C2);
  v466 = (v465 ^ 0x79564AE1) + 1613576073;
  v467 = v466 ^ 0x7BDF9A4F;
  v468 = (2 * v466) & 0xF7BF349E;
  LODWORD(STACK[0x1544]) = v449;
  v469 = (v451 ^ 0x79564AE1) + (((v454 + 282593025 + v455) * (v449 ^ 0x79564AE1)) ^ 0xDEF7FFEF) + ((2 * (v454 + 282593025 + v455) * (v449 ^ 0x79564AE1)) & 0xBDEFFFDE) - 869058603;
  v470 = v469 + 2035698401 - ((2 * v469) & 0xF2AC95C2);
  v471 = (v449 ^ 0x79564AE1) + v461 + v462 + 223523103 - ((2 * ((v449 ^ 0x79564AE1) + v461 + v462 - 1812175298)) & 0xF2AC95C2);
  v472 = (v467 - 2078251599 + v468) * (v465 ^ 0x79564AE1);
  v473 = ((((v470 ^ 0x79564AE1) - 982741109) ^ 0xFF461BBD) + 12182595 + ((2 * ((v470 ^ 0x79564AE1) - 982741109)) & 0xFE8C377A)) * (v470 ^ 0x79564AE1);
  LODWORD(STACK[0x16C8]) = v458;
  LODWORD(STACK[0x13C0]) = v451;
  v474 = (v465 ^ 0x79564AE1) + (v473 ^ 0xEDED9DDB) + ((2 * v473) & 0xDBDB3BB6) - 441732585 + 2035698401 - ((2 * ((v465 ^ 0x79564AE1) + (v473 ^ 0xEDED9DDB) + ((2 * v473) & 0xDBDB3BB6) - 441732585)) & 0xF2AC95C2);
  v475 = ((2 * (v459 + (v472 ^ 0xEFDFF4ED) + ((2 * v472) & 0xDFBFE9DA) + 270535443)) & 0xF9EFD7F2) + ((v459 + (v472 ^ 0xEFDFF4ED) + ((2 * v472) & 0xDFBFE9DA) + 270535443) ^ 0xFCF7EBF9);
  v476 = v475 - ((2 * v475 + 1518536854) & 0xF2AC95C2) - 1500000468;
  v477 = v474 ^ 0x79564AE1;
  v478 = (v474 ^ 0x79564AE1) - 1563902107;
  LODWORD(STACK[0x924]) = v415;
  LODWORD(STACK[0x8EC]) = v474;
  v479 = (v476 ^ 0x79564AE1) * (v475 - 2012485954);
  v480 = v479 ^ 0xD9FEFF64;
  v481 = (2 * v479) & 0xB3FDFEC8;
  v482 = ((v478 ^ 0xFFF7B7BB) + 542789 + ((2 * v478) & 0xFFEF6F76)) * v477;
  LODWORD(STACK[0x184C]) = v465;
  v483 = (v482 ^ 0xFD7EAFFF) + ((2 * v482) & 0xFAFD5FFE) - 1311133211 + (v476 ^ 0x79564AE1);
  v484 = v483 + 2035698401 - ((2 * v483) & 0xF2AC95C2);
  v485 = ((((v471 ^ 0x79564AE1) + 24266156) ^ 0xFF7737FB) + 8964101 + ((2 * ((v471 ^ 0x79564AE1) + 24266156)) & 0xFEEE6FF6)) * (v471 ^ 0x79564AE1);
  LODWORD(STACK[0x1B54]) = v471;
  v486 = (v471 ^ 0x79564AE1) + v480 + v481 - 1164400613 - ((2 * ((v471 ^ 0x79564AE1) + v480 + v481 + 1094868282)) & 0xF2AC95C2);
  LODWORD(STACK[0x1CD8]) = v476;
  LODWORD(STACK[0x19D0]) = v470;
  v487 = (v470 ^ 0x79564AE1) + (v485 ^ 0xFEFB717E) + ((2 * v485) & 0xFDF6E2FC) + 555179177;
  v488 = v487 + 2035698401 - ((2 * v487) & 0xF2AC95C2);
  v489 = v488 ^ 0x79564AE1;
  v490 = (v488 ^ 0x79564AE1) + 1632780830;
  v491 = v490 ^ 0x5FFFFB7F;
  v492 = (2 * v490) & 0xBFFFF6FE;
  v493 = v484 ^ 0x79564AE1;
  v494 = (v491 - 1610612876 + v492 + 1293) * (v488 ^ 0x79564AE1);
  v495 = ((((v484 ^ 0x79564AE1) - 833715648) ^ 0xEBD3FF7F) + 338428033 + ((2 * ((v484 ^ 0x79564AE1) - 833715648)) & 0xD7A7FEFE)) * (v484 ^ 0x79564AE1);
  v496 = v486 ^ 0x79564AE1;
  v497 = (v486 ^ 0x79564AE1) + 1602764768;
  LODWORD(STACK[0xBF4]) = v486;
  LODWORD(STACK[0xA70]) = v488;
  v498 = v477 + (v494 ^ 0x5FF5BFF9) + ((2 * v494) & 0xBFEB7FF2) - 108787338;
  v499 = v498 + 2035698402 + ~((2 * v498) & 0xF2AC95C2);
  v500 = (v486 ^ 0x79564AE1) + (v495 ^ 0x37CFBA57) + ((2 * v495) & 0x6F9F74AE) - 683170012;
  v501 = v500 + 2035698401 - ((2 * v500) & 0xF2AC95C2);
  v502 = ((v497 ^ 0xF73B5BF9) + 147104775 + ((2 * v497) & 0xEE76B7F2)) * v496;
  LODWORD(STACK[0xD78]) = v484;
  v503 = v489 + (v502 ^ 0xF3BEEF37) + ((2 * v502) & 0xE77DDE6E) + 1794878578;
  v504 = v503 + 2035698401 - ((2 * v503) & 0xF2AC95C2);
  v505 = ((((v499 ^ 0x79564AE1) - 862877015) ^ 0xFFFE9FEB) + 89062 + ((2 * ((v499 ^ 0x79564AE1) - 862877015)) & 0xFFFD3FD6) + 1071) * (v499 ^ 0x79564AE1);
  v506 = v505 ^ 0x7FF7FF7F;
  v507 = (2 * v505) & 0xFFEFFEFE;
  v508 = v501 ^ 0x79564AE1;
  v509 = ((((v501 ^ 0x79564AE1) + 247930638) ^ 0xECBEB86F) + 323045265 + ((2 * ((v501 ^ 0x79564AE1) + 247930638)) & 0xD97D70DE)) * (v501 ^ 0x79564AE1);
  v510 = v504 ^ 0x79564AE1;
  v511 = v493 + v506 + v507 - 1988047681 - ((2 * (v493 + v506 + v507 + 271221214)) & 0xF2AC95C2);
  v512 = ((((v504 ^ 0x79564AE1) + 29657148) ^ 0x5EE3FFF7) - 1592000503 + ((2 * ((v504 ^ 0x79564AE1) + 29657148)) & 0xBDC7FFEE)) * (v504 ^ 0x79564AE1);
  v513 = v512 ^ 0xBF6D6FF5;
  v514 = (2 * v512) & 0x7EDADFEA;
  v515 = v511 ^ 0x79564AE1;
  LODWORD(STACK[0x1204]) = v501;
  LODWORD(STACK[0xEFC]) = v499;
  v516 = (v499 ^ 0x79564AE1) + v513 + v514 - 606989163 - ((2 * ((v499 ^ 0x79564AE1) + v513 + v514 + 1652279732)) & 0xF2AC95C2);
  v517 = v516 ^ 0x79564AE1;
  v518 = (v516 ^ 0x79564AE1) - 91915878;
  LODWORD(STACK[0x150C]) = v516;
  v519 = ((((v511 ^ 0x79564AE1) + 873602273) ^ 0x520EFFFF) - 1376714751 + ((2 * ((v511 ^ 0x79564AE1) + 873602273)) & 0xA41DFFFE)) * (v511 ^ 0x79564AE1);
  LODWORD(STACK[0x1080]) = v504;
  v520 = ((v518 ^ 0x79FFBBFF) - 2046802943 + ((2 * v518) & 0xF3FF77FE)) * v517;
  LODWORD(STACK[0x1388]) = v511;
  v521 = v510 + (v509 ^ 0x7B8FF7EF) + ((2 * v509) & 0xF71FEFDE) - 406235667;
  v522 = v521 + 2035698401 - ((2 * v521) & 0xF2AC95C2);
  v523 = v522 ^ 0x79564AE1;
  v524 = ((((v522 ^ 0x79564AE1) + 536294654) ^ 0xB6FFFFED) + 1224736787 + ((2 * ((v522 ^ 0x79564AE1) + 536294654)) & 0x6DFFFFDA)) * (v522 ^ 0x79564AE1);
  v525 = v508 + (v519 ^ 0xDEE7FFE7) + ((2 * v519) & 0xBDCFFFCE) + 2107202464;
  v526 = v525 + 2035698402 + ~((2 * v525) & 0xF2AC95C2);
  v527 = v515 + (v520 ^ 0xCE1FDFFF) + ((2 * v520) & 0x9C3FBFFE) + 852317324;
  v528 = v527 + 2035698401 - ((2 * v527) & 0xF2AC95C2);
  LODWORD(STACK[0x1814]) = v526;
  v529 = v526 ^ 0x79564AE1;
  v530 = (v526 ^ 0x79564AE1) - 1434580277;
  v531 = v530 ^ 0x7E4FF53B;
  v532 = (2 * v530) & 0xFC9FEA76;
  LODWORD(STACK[0x1690]) = v522;
  v533 = v517 + (v524 ^ 0x73F7BFFD) + ((2 * v524) & 0xE7EF7FFA) + 510720571;
  v534 = v533 + 2035698401 - ((2 * v533) & 0xF2AC95C2);
  v535 = ((((v534 ^ 0x79564AE1) - 147545505) ^ 0x767B177B) - 1987778427 + ((2 * ((v534 ^ 0x79564AE1) - 147545505)) & 0xECF62EF6)) * (v534 ^ 0x79564AE1);
  v536 = v529 + 28735859 + ((((((v528 ^ 0x79564AE1) - 646577300) ^ 0x9FD6FFE6) + 1613299738 + ((2 * ((v528 ^ 0x79564AE1) - 646577300)) & 0x3FADFFCC)) * (v528 ^ 0x79564AE1)) ^ 0xDBF7BDDF) + ((2 * ((((v528 ^ 0x79564AE1) - 646577300) ^ 0x9FD6FFE6) + 1613299738 + ((2 * ((v528 ^ 0x79564AE1) - 646577300)) & 0x3FADFFCC)) * (v528 ^ 0x79564AE1)) & 0xB7EF7BBE);
  v537 = v523 + (((v531 - 2119169339 + v532) * v529) ^ 0xFDFF0FBB) + ((2 * (v531 - 2119169339 + v532) * v529) & 0xFBFE1F76) + 1061330973;
  v538 = v537 + 2035698401 - ((2 * v537) & 0xF2AC95C2);
  LODWORD(STACK[0x1CA0]) = v538;
  v539 = (v528 ^ 0x79564AE1) + (v535 ^ 0xC9EB7DF6) + ((2 * v535) & 0x93D6FBEC) + 429555255;
  LODWORD(STACK[0x1998]) = v528;
  LODWORD(STACK[0xA38]) = v539 + 2035698401 - ((2 * v539) & 0xF2AC95C2);
  v540 = ((((v538 ^ 0x79564AE1) - 889553716) ^ 0xCD8FFD9E) + 846201442 + ((2 * ((v538 ^ 0x79564AE1) - 889553716)) & 0x9B1FFB3C)) * (v538 ^ 0x79564AE1);
  LODWORD(STACK[0x1E24]) = v536 + 2035698401 - ((2 * v536) & 0xF2AC95C2);
  v541 = (v574 - 1031) | 0x400;
  v542 = (v534 ^ 0x79564AE1) + (v540 ^ 0x5BFFB3BF) + ((2 * v540) & 0xB7FF677E) + 231937659;
  LODWORD(STACK[0xBBC]) = v542 + 2035698401 - ((2 * v542) & 0xF2AC95C2);
  LODWORD(STACK[0x1B1C]) = v534;
  v543 = (a8 + 1853438341) < 0x75FF79D9;
  v544 = (-1632020887 * ((*a12 ^ ((v541 ^ 0x1D1) + 1811636986)) + 2 * *a12) - ((24292562 * ((*a12 ^ ((v541 ^ 0x1D1) + 1811636986)) + 2 * *a12) + 56057042) & 0x2B61E8A) + 956743086) ^ 0x6D9C8C2;
  v545 = (v544 ^ 0x992EFD0F ^ ((v544 ^ 0x1375F3F3u) % 0x101 - 1973747456 - ((2 * ((v544 ^ 0x1375F3F3u) % 0x101)) & 0x1F8) + 3580)) + 1884058600;
  v546 = (v545 ^ 0xDFDFEFB6) - 1108138398 + ((2 * v545) & 0xBFBFDF6C) + 538972234;
  v547 = ((v546 + 585424497 - ((2 * v546) & 0x45C9BCE2)) ^ 0xEFCFF504) + 1017221113;
  v548 = ((2 * v547) & 0xF4D97BCE) + (v547 ^ 0x7A6CBDE7);
  v549 = ((2 * (945808457 - v548)) & 0xCEEA6F7E) + ((945808457 - v548) ^ 0x677537BF);
  v550 = -356961841 - v548 - ((2 * (-356961841 - v548)) & 0x6FD5DD84) - 1209340222;
  v551 = ((2 * ((v548 - 2053946855) ^ 0xD92BD650)) & 0x7F7AFD7E ^ 0x2800F84A) + ((v548 - 2053946855) ^ 0xF29655CA);
  v552 = (((v550 ^ 0xA19C8A0) + 737525808) ^ 0x7ED97F75) + v551 + ((2 * ((v550 ^ 0xA19C8A0) + 737525808)) & 0xFDB2FEEA);
  v553 = v552 - ((2 * v552 + 47317912) & 0x27EF0222) - 715095331;
  v554 = ((2 * (v553 ^ v550)) & 0xF5D6FDF4 ^ 0x4012DDA4) + (v553 ^ v550 ^ 0xDEF61129);
  v555 = ((2 * (v551 - 1069383359 + (v553 ^ 0x93F78111))) & 0xF3DFCD76) + ((v551 - 1069383359 + (v553 ^ 0x93F78111)) ^ 0xF9EFE6BB);
  v556 = ((2 * (v553 ^ (v549 - 1735735231))) & 0xC407EFC2 ^ 0x4070202) + (v553 ^ (v549 - 1735735231) ^ 0xF1F476F0);
  v557 = v549 + v554 - v555 - 87631700 - ((2 * (v549 + v554 - v555 - 87631700) + 965783212) & 0x8FDD8100) - 457762858;
  v558 = v554 + 85229830 + (v557 ^ 0x7CCC5F3C);
  if ((a8 + 1853438341) >= 0x75FF79D9)
  {
    v543 = (a8 + 1853438341) > 0x75FF79DA;
  }

  v559 = (v558 ^ 0xF9ACBC5F) + 106120097 + ((2 * v558) & 0xF35978BE);
  v560 = (1512436768 - v556 - ((-1006112830 - 2 * v556) & 0xF043F87E)) ^ 0xF821FC3F ^ v559;
  v561 = ((2 * (v557 ^ (v555 + 101718341))) & 0xBFEEFCFC ^ 0xB988BC78) + (v557 ^ (v555 + 101718341) ^ 0xA33B2142) + 537428354 + ((v560 - 1603823558 - ((2 * v560) & 0x40CF3074)) ^ 0xA067983A);
  return (*(&off_1003E7570 + ((15 * v543) ^ v541)))(4193248955, ((v561 - ((2 * v561) & 0xA0BBDFF2) + 1348333561) ^ 0xC60CA685) + v559 + 303196734 - ((2 * (((v561 - ((2 * v561) & 0xA0BBDFF2) + 1348333561) ^ 0xC60CA685) + v559)) & 0x2424D47C));
}

uint64_t sub_10021FC34(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  LOBYTE(STACK[0x395]) = BYTE1(v64) ^ 0x96;
  LOBYTE(STACK[0x542]) = BYTE2(v65) ^ 0xCB;
  LOBYTE(STACK[0x727]) = HIBYTE(v64) ^ 0x7A;
  LOBYTE(STACK[0x379]) = BYTE1(v65) ^ 0x61;
  LOBYTE(STACK[0x55E]) = BYTE2(v64) ^ 0x29;
  LOBYTE(STACK[0x70B]) = HIBYTE(v65) ^ 1;
  LOBYTE(STACK[0x75F]) = HIBYTE(v61) ^ 0xD3;
  LOBYTE(STACK[0x204]) = v61 ^ 0xE2;
  LOBYTE(STACK[0x3B1]) = BYTE1(a2) ^ 0xAD;
  LOBYTE(STACK[0x57A]) = BYTE2(a2) ^ 0xD5;
  LOBYTE(STACK[0x3CD]) = BYTE1(v61) ^ 0x3A;
  LOBYTE(STACK[0x743]) = HIBYTE(a2) ^ 0xD5;
  LOBYTE(STACK[0x596]) = BYTE2(v61) ^ 0xC7;
  v66 = (HIDWORD(a11) + 267737597);
  v67 = v66 < 0x60973EDB;
  v68 = (a3 ^ 0x922EFCB6) - 838698623 * ((((a61 ^ 0x7CB) - 336) & (2 * (*a17 ^ 0xC7))) + (*a17 ^ 0xFDFF3578)) + 1149281217;
  v69 = ((2 * v68) & 0xDE5FFFBE) + (v68 ^ 0x6F2FFFDF);
  v70 = (v69 - 1865416671) % 0x101;
  v71 = a2 ^ v63;
  v72 = v71 + (((v62 ^ 0xA3AE59A) - 1865416671 + v69 + 1) ^ 0xAEEB7FE7) + ((2 * ((v62 ^ 0xA3AE59A) - 1865416671 + v69 + 1)) & 0x5DD6FFCE) + 1360298009;
  v73 = (v70 ^ 0xEDE3FFFF) + 2 * v70 + (v72 ^ 0xE4E7DFD5) + ((2 * v72) & 0xC9CFBFAA) - 2 * (((v70 ^ 0xEDE3FFFF) + 2 * v70 + (v72 ^ 0xE4E7DFD5) + ((2 * v72) & 0xC9CFBFAA) + 758390828) & 0x2A87E95D ^ ((v70 ^ 0xEDE3FFFF) + 2 * v70 + (v72 ^ 0xE4E7DFD5)) & 1) + 1471941000;
  v74 = v73 ^ v61;
  v75 = (v73 ^ 0x62C7F294) + 2130670574 + ((2 * v73) & 0xBAF3F8AC ^ 0x3A701884);
  v76 = ((2 * (v71 - (v74 ^ 0xABBEF3E7))) & 0xFB9AFF5C) + ((v71 - (v74 ^ 0xABBEF3E7)) ^ 0xFDCD7FAE);
  v77 = (v62 ^ 0xF5C51A65) - (v74 ^ 0xABBEF3E7) - 574405281 - ((2 * ((v62 ^ 0xF5C51A65) - (v74 ^ 0xABBEF3E7))) & 0xBB868ABE);
  v78 = (v74 ^ 0x767DB6B8 ^ v77) + 644140058;
  v79 = v78 ^ 0xB6FE7E3D;
  v80 = (2 * v78) & 0x6DFCFC7A;
  if (v66 >= 0x60973EDB)
  {
    v67 = v66 > 0x60973EDC;
  }

  v81 = v75 - v76 + v79 + v80;
  v82 = v81 + v75;
  v81 -= 363491027;
  v83 = (v77 ^ 0xDDC3455F ^ v81) + 1582029903 - ((2 * (v77 ^ 0xDDC3455F ^ v81)) & 0xBC97B89E);
  v84 = ((v81 ^ (v76 + 36864082)) + 985236813 - ((2 * (v81 ^ (v76 + 36864082))) & 0x75730A9A)) ^ 0x3AB9854D;
  v85 = (v83 ^ 0xA1B423B0) + ((v84 + v81) ^ 0xBFADE6BC) + ((2 * (v84 + v81)) & 0x7F5BCD78) + 1079122245;
  v86 = (v82 - 1914953495) ^ 0x63529DFD ^ (v85 + 1666358781 - ((2 * v85) & 0xC6A53BFA));
  v87 = ((v86 + 371983470 - ((2 * v86) & 0x2C5808DC)) ^ 0x162C046E) + 1288883131;
  v88 = ((2 * v87) & 0xD5BF37F6) + (v87 ^ 0x6ADF9BFB);
  v89 = v82 + v88;
  v90 = (v84 ^ (v88 - 1793039355)) - ((2 * (v84 ^ (v88 - 1793039355))) & 0x792D10) - 2143512952;
  v91 = (v83 ^ 0x5E4BDC4F ^ (v88 - 1793039355)) - 1024506332 + (~(2 * (v83 ^ 0x5E4BDC4F ^ (v88 - 1793039355))) | 0x7A2173B9);
  v92 = ((v91 ^ 0x3D10B9DC) + v88 - ((2 * ((v91 ^ 0x3D10B9DC) + v88) + 708888588) & 0xA1E14CC6) - 435090839) ^ v90;
  v93 = ((2 * v92) & 0xBFEEE7CE ^ 0xA18861C6) + (v92 ^ 0x8F3B430C);
  v94 = v93 - v89 - 529195101 - ((2 * (v93 - v89 - 529195101) + 239146660) & 0x245DF96C) + 1498384392;
  return (*(&off_1003E7570 + ((22 * !v67) ^ a61)))(v66, v94 ^ v90, v94, 22, 2429550625, v94 ^ v91, 1666358781, 1620524763, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_1002201E0(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  LOBYTE(STACK[0x23C]) = a6 ^ 0x52;
  LOBYTE(STACK[0x405]) = BYTE1(a6) ^ 0x7D;
  LOBYTE(STACK[0x77B]) = HIBYTE(a3) ^ 0x55;
  LOBYTE(STACK[0x5CE]) = BYTE2(a6) ^ 6;
  LOBYTE(STACK[0x5B2]) = BYTE2(a3) ^ 0xE9;
  LOBYTE(STACK[0x220]) = a3 ^ 0x71;
  LOBYTE(STACK[0x3E9]) = BYTE1(a3) ^ 0x3B;
  LOBYTE(STACK[0x258]) = a2 ^ 0xF9;
  LOBYTE(STACK[0x5EA]) = BYTE2(a2) ^ 0xD5;
  LOBYTE(STACK[0x606]) = BYTE2(v52) ^ 0xC7;
  LOBYTE(STACK[0x43D]) = BYTE1(v52) ^ 0x3A;
  LOBYTE(STACK[0x797]) = HIBYTE(a6) ^ 0x97;
  LOBYTE(STACK[0x7B3]) = HIBYTE(a2) ^ 0xD5;
  LOBYTE(STACK[0x274]) = v52 ^ 0xE2;
  LOBYTE(STACK[0x421]) = (a2 >> (((v54 + 62) | 0xC1) + 59)) ^ 0xAD;
  LOBYTE(STACK[0x7CF]) = HIBYTE(v52) ^ 0xD3;
  v56 = (a12 - 950959819) < 0xFEA0C281;
  v57 = (a3 ^ 0x6DD10349) + 1673095841 * ((((*a18 ^ 0xC7) << ((-111 * (((v54 + 62) | 0xC1) ^ 0xCE)) ^ 0xB2)) & 0x162) + (*a18 ^ 0x6FADFC76)) - 1442198864;
  v58 = (v57 ^ 0x537F7BD7) - 1400863703 + ((2 * v57) & 0xA6FEF7AE);
  v59 = v58 ^ 0xE73BE37A ^ (v58 % 0x101 - 415505542 + (~(2 * (v58 % 0x101)) | 0xFFFFFD0B) + 1);
  v60 = (v53 ^ 0xFD7A0B88 ^ (v59 - ((2 * v59) & 0x117E23DA) + 146739693)) + 212975785;
  v61 = a2 ^ v55;
  v62 = v52 ^ 0x1400FD25;
  v63 = ((v62 + v61) ^ 0xE01A2B07) - ((2 * (v62 + v61)) & 0x3FCBA9F0) + (v60 ^ 0x7FEF57F9) + ((2 * v60) & 0xFFDEAFF2) - 1611236096;
  v64 = ((2 * (v63 + v61)) & 0xFF147FDC) + ((v63 + v61) ^ 0xFF8A3FEE);
  v65 = v63 + (v53 ^ 0xF5C51A65) - 1794431375 - ((2 * (v63 + (v53 ^ 0xF5C51A65))) & 0x2A164CE2);
  v66 = (v62 ^ v63) - 1994821956 - ((2 * (v62 ^ v63)) & 0x1232DD78);
  v67 = (((v53 ^ 0xA3AE59A) + 7716883 + v64 - ((2 * ((v53 ^ 0xA3AE59A) + 7716883 + v64)) & 0x1F3A834) - 2131110886) ^ v66 ^ 0x9E0BAA6) + 921723784;
  v68 = ((2 * v67) & 0xBA7BF972) + (v67 ^ 0x5D3DFCB9);
  v69 = v68 - 1564343481;
  v70 = v68 - 1564343481 + (v66 ^ 0x89196EBC);
  v71 = v68 + v64 - 600556791 + ((965769548 - 2 * (v68 + v64)) | 0x8E0710A1);
  v72 = (v65 ^ 0x950B2671 ^ v69) - 203558916 - ((2 * (v65 ^ 0x950B2671 ^ v69)) & 0xE7BBDFF8);
  v73 = ((2 * v70) & 0x19DBFFDE) + (v70 ^ 0xCEDFFEF) - 216924143;
  v74 = v73 + (v65 ^ 0xADF751DE ^ v71) - ((2 * (v73 + (v65 ^ 0xADF751DE ^ v71))) & 0x1794EA4A) - 1949666011;
  v75 = ((2 * (v74 ^ v71)) & 0xDFFBFE7C ^ 0xCA11E028) + (v74 ^ v71 ^ 0x9AF70F6B);
  v76 = ((2 * (v73 + (v74 ^ 0x32097805) + 1)) & 0x65FFFFBE) + ((v73 + (v74 ^ 0x32097805) + 1) ^ 0x32FFFFDF);
  v77 = v74 ^ 0xCDF687FA;
  v78 = (v72 ^ 0xF3DDEFFC) - v77;
  if ((a12 - 950959819) >= 0xFEA0C281)
  {
    v56 = (a12 - 950959819) > 0xFEA0C282;
  }

  v79 = (v78 ^ 0xA49FFDFA) + 1533017067 + ((2 * v78) & 0x493FFBF4) + 1563;
  v80 = (((v77 ^ v79) - 851070169 - ((2 * (v77 ^ v79)) & 0x9A8B664E)) ^ 0xCD45B327) - (v75 + v76);
  v81 = v80 - ((2 * v80 + 100400698) & 0x236EA814) + 884298535;
  return (*(&off_1003E7570 + ((v56 | (2 * v56)) ^ ((v54 - 706) | 0x2C1))))(335609125, (v81 ^ 0xCB9139C2) + v75 - ((2 * ((v81 ^ 0xCB9139C2) + v75) + 537133446) & 0x2424D47C) - 1575720191, v81 ^ 0xA6403A8B, 335609125, 594454548, 950652303, 4271948417, 4091408380, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1002207D0(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  LOBYTE(STACK[0x459]) = BYTE1(v67) ^ 1;
  LOBYTE(STACK[0x7EB]) = HIBYTE(v67) ^ 0xF3;
  LOBYTE(STACK[0x2AC]) = v65 ^ 0xA2;
  LOBYTE(STACK[0x2C8]) = a2 ^ 0xF9;
  LOBYTE(STACK[0x491]) = (a2 >> ((a62 - 8) ^ 0xA3)) ^ 0xAD;
  LOBYTE(STACK[0x807]) = HIBYTE(v65) ^ 0x32;
  LOBYTE(STACK[0x475]) = BYTE1(v65) ^ 0xDD;
  LOBYTE(STACK[0x63E]) = BYTE2(v65) ^ 2;
  LOBYTE(STACK[0x65A]) = BYTE2(a2) ^ 0xD5;
  LOBYTE(STACK[0x2E4]) = v64 ^ 0xE2;
  LOBYTE(STACK[0x622]) = BYTE2(v67) ^ 0xA9;
  LOBYTE(STACK[0x676]) = BYTE2(v64) ^ 0xC7;
  LOBYTE(STACK[0x823]) = HIBYTE(a2) ^ 0xD5;
  v68 = (((~v67 | 0xFFFFFFCA) + ((2 * (v67 & 0x14 ^ (~v67 | 0x7B))) ^ 0x35) + 27) ^ 0x1A) & (((v67 & 0xFFFFFFCA ^ 0x3D) - (v67 >> 6 << 7) + 32) ^ 0x60);
  LOBYTE(STACK[0x290]) = v68 + (~(2 * v68) | 0x71) - 56;
  LOBYTE(STACK[0x83F]) = HIBYTE(v64) ^ 0xD3;
  LOBYTE(STACK[0x4AD]) = BYTE1(v64) ^ 0x3A;
  v69 = (a10 + 4601358) < 0x1A6D8280;
  v70 = *(&a64 + (1314345374 * ((a62 - 202) ^ 0x220u) + 640101018) % 0x708) ^ *((LODWORD(STACK[0x1560]) ^ 0x7BBF69F66EA9BD3BLL) + a14 - 0x99187B47AA1D2C2 + ((2 * (LODWORD(STACK[0x1560]) ^ 0x79564AE1u)) & 0x2FFFEFB4) - 0x7BBF69F617FFF7DALL);
  v71 = (a3 ^ 0x6DD10349) - 36496591 * (((2 * (v70 ^ 3)) & 0x19E) + (v70 ^ 0x7EC5FBDC)) - 1141966750;
  v72 = (v71 ^ 0xDFFFF7FD) + 536872963 + ((2 * v71) & 0xBFFFEFFA);
  v73 = v72 ^ 0xA49ECFBF ^ (v72 % 0x101 - 1533096001 - ((2 * (v72 % 0x101)) & 0x37E));
  v74 = a2 ^ v66;
  v75 = (((v65 ^ 0xF5C51A65) + v74) ^ 0xC40400) - ((2 * ((v65 ^ 0xF5C51A65) + v74)) & 0xFE77F7FE) - 12846080 + ((v73 - 890788443 - ((2 * v73) & 0x95CF4B4A)) ^ 0xCAE7A5A5);
  v76 = v64 ^ 0x6EF43D41 ^ (v75 - ((2 * v75) & 0xF5E980C8) + 2062860388);
  v77 = v76 - ((2 * v76 + 991135088) & 0x4E3F4822) + 1151952585;
  v78 = ((2 * ((v77 ^ 0xA71FA411) + v74)) & 0xDD5FE4F2) + (((v77 ^ 0xA71FA411) + v74) ^ 0x6EAFF279);
  v79 = v77 ^ v64;
  v80 = (v79 ^ 0xFEA9EA99 ^ ((v65 ^ 0xF5C51A65) - 1857024633 + v78 - ((2 * ((v65 ^ 0xF5C51A65) - 1857024633 + v78)) & 0x9B6D675A) + 1303819181)) + 1423587212;
  v81 = ((2 * v80) & 0xFF7D7DF6) + (v80 ^ 0xFFBEBEFB);
  v82 = ((2 * (v81 + 4276485 + (v65 ^ 0x52DABE74 ^ v77))) & 0x2DBFE2FE) + ((v81 + 4276485 + (v65 ^ 0x52DABE74 ^ v77)) ^ 0x96DFF17F);
  v83 = (v79 ^ 0xB31F5934 ^ (v81 + 4276485)) - 1370139886 - ((2 * (v79 ^ 0xB31F5934 ^ (v81 + 4276485))) & 0x5CAAA624);
  if ((a10 + 4601358) >= 0x1A6D8280)
  {
    v69 = (a10 + 4601358) > 0x1A6D8281;
  }

  v84 = (v83 ^ 0x78AF5F73 ^ (1367482287 - (v78 + 1962422102 + v82) - ((-183490916 - 2 * (v78 + 1962422102 + v82)) & 0xADF418C2))) - 1894401551;
  v85 = ((2 * v84) & 0xBBF3E7F2) + (v84 ^ 0xDDF9F3F9);
  v86 = (v85 + 570821639) ^ (v82 + 1763708545);
  v87 = v78 + v81 + v85;
  v88 = (v87 + v85 - 397701243 + ((2 * v86) & 0xF3FFC7FE) + (v86 ^ 0xF9FFE3FF) - ((2 * (v87 + v85 - 397701243 + ((2 * v86) & 0xF3FFC7FE) + (v86 ^ 0xF9FFE3FF)) + 1722017324) & 0x4EC9AE7E) + 448186965) ^ (((v85 + 570821639) ^ v83 ^ 0xAE555312) + 797890014 - 2 * (((v85 + 570821639) ^ v83 ^ 0xAE555312) & 0x2F8ED5DF ^ ((v85 + 570821639) ^ v83) & 1));
  return (*(&off_1003E7570 + ((106 * v69) ^ (a62 + 248))))(3013040787, (v88 ^ (v87 - 1281926509) ^ 0xE885D490) + v66 - 2 * ((v88 ^ (v87 - 1281926509) ^ 0xE885D490) & (v66 + 1) ^ (v88 ^ (v87 - 1281926509)) & 1));
}

uint64_t sub_100220E3C@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  LOBYTE(STACK[0x31C]) = (a3 - 71) ^ v59;
  LOBYTE(STACK[0x300]) = a2 ^ 0x57;
  LOBYTE(STACK[0x877]) = HIBYTE(v59) ^ 0x32;
  LOBYTE(STACK[0x4C9]) = BYTE1(a2) ^ 0x13;
  LOBYTE(STACK[0x6CA]) = BYTE2(a1) ^ 0xD5;
  LOBYTE(STACK[0x6AE]) = BYTE2(v59) ^ 2;
  LOBYTE(STACK[0x85B]) = HIBYTE(a2) ^ 0x2F;
  LOBYTE(STACK[0x354]) = v58 ^ 0xE2;
  LOBYTE(STACK[0x4E5]) = BYTE1(v59) ^ 0xDD;
  LOBYTE(STACK[0x338]) = a1 ^ 0xF9;
  LOBYTE(STACK[0x893]) = HIBYTE(a1) ^ 0xD5;
  LOBYTE(STACK[0x6E6]) = BYTE2(v58) ^ 0xC7;
  LOBYTE(STACK[0x692]) = BYTE2(a2) ^ 0x42;
  LOBYTE(STACK[0x51D]) = BYTE1(v58) ^ 0x3A;
  LOBYTE(STACK[0x8AF]) = HIBYTE(v58) ^ 0xD3;
  LOBYTE(STACK[0x501]) = BYTE1(a1) ^ 0xAD;
  v156 = a3 - 12;
  v60 = *(&a58 + 0 % (((a3 + 2067068646) & 0x84CB073F) + 1273));
  v61 = -2029177211 - 1487347361 * (((2 * (v60 ^ 0xFFFFFFCF)) & 0xE8) + (v60 ^ 0x7DFFF3B3));
  v62 = v61 - 418090588 + (((v61 + 1680096658) % 0x101) ^ 0x7FD9F7F8) + ((2 * ((v61 + 1680096658) % 0x101)) & 0x3F0) - 464894566;
  v63 = (v62 ^ 0xFEDEFE55) + 878212207 + ((2 * v62) & 0xFDBDFCAA);
  v64 = ((v63 - 2 * ((v63 + 1909308608) & 0x4B55D40A ^ v63 & 2) - 1121742648) ^ 0x89737BA6) - 1738420157;
  v65 = (v64 ^ 0xE36F3FBC) - 1734123120 + ((2 * v64) & 0xC6DE7F78) + 1;
  v66 = ((v65 - ((2 * v65 - 1204789498) & 0x8AA7D02C) - 1586751591) ^ 0x947F75D5) + 1361311262;
  v67 = ((v66 - ((2 * v66 + 904283102) & 0x5EFF48C8) + 1249035859) ^ 0x6F2EE305) - 35086739;
  v68 = (v67 - ((2 * v67) & 0xB435F5B6) + 1511717595) ^ 0xD44EBDC8;
  v69 = (v68 ^ 0x74F587B1) - 2 * (((v68 ^ 0x74F587B1) + 1848641040) & 0x69FDAA9D ^ v68 & 8) + 1479389349;
  v70 = v69 ^ 0xE9FDAA95;
  v71 = ((2 * (644941650 - (v69 ^ 0xE9FDAA95))) & 0xD77B86FE) + ((644941650 - (v69 ^ 0xE9FDAA95)) ^ 0xEBBDC37F);
  v72 = ((2 * (v69 ^ 0x721E4536)) & 0xFA5BD978 ^ 0xBA038158) + (v69 ^ 0x50A06824);
  v73 = (v69 ^ 0x1602556A) + 621096837;
  v74 = v73 ^ 0x7D9BBF6E;
  v75 = (2 * v73) & 0xFB377EDC;
  v76 = v69 ^ 0xDB069714;
  v77 = v69 ^ 0xD44EBDC8;
  v78 = v69 ^ 0xDCEF89BA;
  v79 = (v69 ^ 0x1602556A) - 35086739;
  v80 = v69 ^ 0xF8E045EB;
  v81 = (v69 ^ 0x1602556A) + 776780893 - ((2 * ((v69 ^ 0x1602556A) + 776780893) + 1412048846) & 0x5FEC47E0);
  v82 = ((2 * (v69 ^ 0xBA0AB150)) & 0xF6FDADFC ^ 0x60C484C0) + (v69 ^ 0xF5970DCF);
  v83 = ((2 * (v70 - 1068415135)) & 0xEF5EE7AA) + ((v70 - 1068415135) ^ 0xF7AF73D5);
  v84 = (v69 ^ 0x9416BAEB) - 1070448592 + ((2 * (v69 ^ 0x9AB5D698)) & 0x7F9B7FA0 ^ 0x62992700);
  v85 = v74 - 2107359086 + v75;
  v86 = ((v69 ^ 0x1602556A) + 1117723493) ^ 0xF7F7F7DF;
  v87 = (2 * ((v69 ^ 0x1602556A) + 1117723493)) & 0xEFEFEFBE;
  v88 = v82 - v71 + ((v85 + (v69 ^ 0x2080303E)) ^ 0x541C0058) + ((v84 + (v69 ^ 0xE9FDAA95)) ^ 0xFFBBFF36) - ((2 * (v85 + (v69 ^ 0x2080303E))) & 0x57C7FF4E) + ((2 * (v84 + (v69 ^ 0xE9FDAA95))) & 0xFF77FE6C) + 1;
  v89 = v88 - ((2 * v88 + 953014756) & 0xF5B4230E);
  v90 = v81 + 436942807;
  v91 = v70 + 334030835 - ((2 * (v70 + 334030835)) & 0x46EAB1C8) + 594893028;
  v92 = ((v70 - 179867185) ^ 0x66FFFFBF) - 1728053183 + ((2 * (v70 - 179867185)) & 0xCDFFFF7E);
  v93 = v86 + 134744097 + v87;
  v94 = ((v90 ^ 0x552C3277 ^ (v89 - 1757348231)) + v92 - 1553920700 - ((2 * ((v90 ^ 0x552C3277 ^ (v89 - 1757348231)) + v92)) & 0x46C21A88)) ^ v93;
  v95 = (((v94 ^ 0xA3610D44) + 640617779 - 2 * ((v94 ^ 0xA3610D44) & 0x262F0D3B ^ v94 & 8)) ^ 0x262F0D33) - (v80 ^ 0xC9ADD1AF);
  v96 = (v95 ^ 0xFDFDF7BB) + v72 + ((2 * v95) & 0xFBFBEF76);
  v97 = (v78 ^ v91 ^ 0xED7D786E ^ (v96 - 1144346044 + ((1985464556 - 2 * v96) | 0x9212E28B))) - v83;
  v98 = ((v79 + 1) ^ 0x7F3FDFDF) - 2134892511 + ((2 * (v79 + 1)) & 0xFE7FBFBE);
  v99 = v98 ^ 0x76E41019 ^ (v97 - ((2 * v97 - 278992982) & 0xEDC82032) + 1855161326);
  v100 = ((v99 - 464484167 - ((2 * v99) & 0xC8A11172)) ^ 0xE45088B9) - (v77 ^ 0xC712D7FF);
  v101 = ((2 * v100) & 0x3FF34F7E) + (v100 ^ 0x9FF9A7BF) - ((2 * (((2 * v100) & 0x3FF34F7E) + (v100 ^ 0x9FF9A7BF)) + 2093979246) & 0xD5D4EB84) - 1454227207;
  v102 = ((2 * (v101 ^ v90)) & 0xCFFEEB9E ^ 0x8A38A804) + (v101 ^ v90 ^ 0x22E323FD);
  v103 = ((2 * (v72 + 47317912 + (v101 ^ 0x6AEA75C2) + 4012)) & 0x1EDF671C) + ((v72 + 47317912 + (v101 ^ 0x6AEA75C2) + 4012) ^ 0x8F6FB38E);
  v104 = (((v101 ^ 0x6AEA75C2) + v93) ^ 0xEFFB3EBF) + 951451518 + ((2 * ((v101 ^ 0x6AEA75C2) + v93)) & 0xDFF67D7E);
  v105 = v101 ^ v78;
  v106 = v101 ^ v91;
  v107 = ((2 * (v101 ^ (v71 + 339885185))) & 0x76BF3376 ^ 0x54942304) + (v101 ^ (v71 + 339885185) ^ 0x51B5EC79);
  v108 = v101 ^ v77;
  v109 = v82 + 75573506 + (v101 ^ 0x6AEA75C2) - ((2 * (v82 + 75573506 + (v101 ^ 0x6AEA75C2))) & 0xE18E7194) + 1892104394;
  v110 = ((2 * ((v101 ^ 0x6AEA75C2) + v92)) & 0xFF7B6F5C) + (((v101 ^ 0x6AEA75C2) + v92) ^ 0x7FBDB7AE);
  v111 = v101 ^ v76;
  v112 = ((2 * (v84 + (v101 ^ 0x95158A3D) + 1)) & 0x7DDF42E6) + ((v84 + (v101 ^ 0x95158A3D) + 1) ^ 0x3EEFA173);
  v113 = v101 ^ v80;
  v114 = ((2 * ((v101 ^ 0x6AEA75C2) + v85)) & 0xFAFFB59E) + (((v101 ^ 0x6AEA75C2) + v85) ^ 0x7D7FDACF);
  v115 = ((2 * (v83 + 139496492 + (v101 ^ 0x95158A3D))) & 0x59FBFFFC) + ((v83 + 139496492 + (v101 ^ 0x95158A3D)) ^ 0x2CFDFFFE);
  v116 = (v114 - 2105531087) ^ 0xA6E50B5A ^ ((v109 ^ v101 ^ (v112 - 1055891827) ^ 0x1A2D4D08) - 1494938790 - 2 * ((v109 ^ v101 ^ (v112 - 1055891827) ^ 0x1A2D4D08) & 0x26E50B5E ^ (v109 ^ v101 ^ (v112 - 1055891827)) & 4));
  v117 = v102 + 402688561 + ((v116 + 1792646678 - ((2 * v116) & 0xD5B33C2C)) ^ 0x6AD99E16);
  v118 = v110 - v104 + (((v111 ^ 0x916CD2E8) - 996121019 + v107) ^ 0xC008560) - ((2 * ((v111 ^ 0x916CD2E8) - 996121019 + v107)) & 0xE7FEF53E) + (v117 ^ 0x7EFBF7E7) + ((2 * v117) & 0xFDF7EFCE) - 1844964735;
  v119 = (v101 ^ v80 ^ 0xB07BEB5E ^ (v118 - ((2 * v118 + 400420238) & 0x26789E66) - 1624553990)) - v103 - 1888504946;
  v120 = (v105 ^ 0x1214DBF2) + (v119 ^ 0x7FEFEFC3) + ((2 * v119) & 0xFFDFDF86) - 2146430915;
  v121 = (v120 + 1095152513 - ((2 * v120) & 0x828D6702)) ^ (v115 - 754843646);
  v122 = (v106 ^ 0x8666491 ^ ((v121 ^ 0x4146B381) + 1106856375 - 2 * ((v121 ^ 0x4146B381) & 0x41F949BF ^ v121 & 8))) - 762027389;
  v123 = (v108 ^ 0x52075DC2) + (v122 ^ 0x9E79EEF7) + ((2 * v122) & 0x3CF3DDEE) + 1636176138;
  v124 = ((2 * v123) & 0xECF733FE) + (v123 ^ 0x767B99FF);
  v125 = (((v101 ^ 0x6AEA75C2) + v98) ^ 0x74DC7FE3) + ((2 * ((v101 ^ 0x6AEA75C2) + v98)) & 0xE9B8FFC6) + v124 - 1142130979;
  v126 = v125 - 537949761;
  v127 = v102 + v125 - 537949761;
  v128 = v114 + v125 - 537949761;
  v129 = v115 + v125 - 537949761;
  v130 = v112 - 373686322 + v125 - 537949761;
  v131 = v110 - 8466976 + v125 - 537949761;
  HIDWORD(v132) = (v128 - 1210812423) ^ 2;
  LODWORD(v132) = v128 - 78902605;
  v133 = (v132 >> 2) - ((2 * (v132 >> 2)) & 0xA7997034) - 741558246;
  HIDWORD(v132) = v133 ^ 0x81A;
  LODWORD(v132) = v133 ^ 0xD3CCB000;
  v134 = (v132 >> 12) - ((2 * (v132 >> 12)) & 0x8170CBAA) + 1085826517;
  v125 += 1488678721;
  v135 = ((2 * (v125 ^ v105)) & 0x7E7EE3DE ^ 0x2428A3C4) + (v125 ^ v105 ^ 0xAD2BAA1D);
  v136 = ((2 * (v125 + (v106 ^ 0x499F2D26))) & 0xB3F7D79A) + ((v125 + (v106 ^ 0x499F2D26)) ^ 0x59FBEBCD);
  v137 = v107 - v126;
  v138 = ((2 * (v125 ^ v108)) & 0xDCEAF1EC ^ 0x58E04068) + (v125 ^ v108 ^ 0xC38DDACB);
  HIDWORD(v132) = v134 ^ 0x65D5;
  LODWORD(v132) = v134 ^ 0x40B80000;
  v139 = (v132 >> 18) + 1275896484 - ((2 * (v132 >> 18)) & 0x98194548);
  v140 = ((2 * (v125 + (v113 ^ 0xA347A46D))) & 0xE7EFCEF8) + ((v125 + (v113 ^ 0xA347A46D)) ^ 0xF3F7E77C);
  v141 = ((2 * (v125 ^ v111)) & 0xFCBF7FBE ^ 0x20992590) + (v125 ^ v111 ^ 0x6F336D37);
  v142 = ((2 * (v125 ^ v109)) & 0xD87D397E ^ 0xC00C3114) + (v125 ^ v109 ^ 0x9CF9A475);
  v143 = ((2 * (v125 ^ (v103 + 1888504946))) & 0xFD9FFF2E) + (v125 ^ (v103 + 1888504946) ^ 0xFECFFF97);
  v144 = (((v139 ^ v125 ^ 0x4C0CA2A4) - 505296812 - 2 * ((v139 ^ v125 ^ 0x4C0CA2A4) & 0x61E1C855 ^ (v139 ^ v125) & 1)) ^ 0xE1E1C854) + v137 + 1272217795;
  v145 = v130 + v141 + v142 + (v144 ^ 0x6F2DFDBB) + ((2 * v144) & 0xDE5BFB76) - 67475452;
  v146 = (v127 - 1865650253) ^ 0x6699B011 ^ (v145 - ((2 * v145 - 189332536) & 0xCD336022) + 1626681845);
  v147 = ((v146 - 862511878 - ((2 * v146) & 0x992E39F4)) ^ 0xCC971CFA) - v131;
  v148 = (v126 + v104 + 1343924037) ^ 0x25354686 ^ (v147 - ((2 * v147 + 216088600) & 0x4A6A8D0C) + 732292754);
  v149 = v135 + 1086361105 + ((v148 - 175306240 - ((2 * v148) & 0xEB1A1400)) ^ 0xF58D0A00);
  v150 = (v149 ^ 0xAFEAFF96) - (v143 + v136 + v140) + ((2 * v149) & 0x5FD5FF2C) - 1898857656;
  v151 = (v129 + 1271784836) ^ 0x632CF6CD ^ (v150 - ((2 * v150 + 470691844) & 0xC659ED9A) + 1899237071);
  v152 = ((v151 - 223747261 - ((2 * v151) & 0xE553C686)) ^ 0xF2A9E343) - v138 + 1853192438;
  v153 = (v152 ^ 0xE8C96FFB) + v124 + ((2 * v152) & 0xD192DFF6);
  v154 = v153 - ((2 * v153 + 1098247180) & 0xD6575DBA) - 1947818781;
  return (*(&off_1003E7570 + (v156 ^ 0x34)))(v136 - (((2 * v154) & 0xEDFF777C ^ 0xE5EF3714) + (v154 ^ 0x8D082074)), 63);
}

uint64_t sub_100222904@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v60 = (v58 + a1 + 182 + v57 - 2 * ((v57 + 1169934376) & v56 ^ v57 & 6) + 700242199) ^ (v56 + 82);
  v61 = dword_1003A8020[(((2722 * v60) & 0x7BFF373E) + ((1361 * v60) ^ 0x3DFF9B9Fu) - 1037841190) % 0x12E0] ^ 0x1B9047AC;
  v62 = v61 - ((2 * v61 - 698937670) & 0xBC791458) + 1231557001;
  v63 = v62 ^ (v62 >> 7) ^ (v62 >> 3) ^ 0x1DDDA253;
  v64 = *(v59 + 8 * ((842 * (((v57 + 1 - v58) | (v58 - (v57 + 1))) >= 0)) ^ (v58 + a1)));
  *(&a56 + (457 * v57 - 63389272) % 0x708u) = byte_100394570[(((4424 * v63) & 0xFDF71F78) + ((2212 * v63) ^ 0x7EFB8FBF) - 2128652587) % 0x97F] ^ 0xD9;
  return v64();
}

uint64_t sub_100222AA8(int a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, unsigned int a7)
{
  v13 = v9 * a4 - 668602128 - ((((v9 * a4 - 668602128) * a7) >> 32) >> 10) * v10;
  v14 = (((((a1 - 1641) | 0x204) ^ 0x352) & (2 * (*(v7 + v13) ^ 0xC7))) + (*(v7 + v13) ^ 0xAB1FCB60)) * a4 - 2076084447;
  v15 = *(v7 + v14 - (((v14 * a7) >> 32) >> 10) * v10);
  v16 = (((2 * (v15 ^ 4)) & 0xAE) + (v15 ^ 0x16F31BDB)) * a3 - 1285045180;
  v17 = *(v11 + v16 - (((v16 * a5) >> 32) >> 10) * a6);
  HIDWORD(v18) = v17 ^ 0xA;
  LODWORD(v18) = v17 << 24;
  v19 = (v18 >> 31) - ((2 * (v18 >> 31)) & 0x62) - 79;
  v20 = ((v19 & 0xFC) >> 2) ^ 0x2C;
  v21 = (2 * ((v20 & (v19 ^ 0x31)) - 2 * (v20 & (v19 ^ 0x31) & 7)) + 14) ^ 0xE;
  LOBYTE(v20) = (v19 ^ 0xB1) + v20 + ((v21 - ((2 * v21) & 0xBF) - 33) ^ 0x20);
  v22 = v19 ^ (((v20 + 1 - ((2 * (v20 + 1)) & 0xD8) - 20) & 0xF0) >> 4) ^ 0xC9;
  v23 = (((2 * v22) & 0x9E) + (v22 ^ 0x3799FE4F)) * a3 - 1850925144;
  v24 = *(v11 + v23 - (((v23 * a5) >> 32) >> 10) * a6);
  v25 = (((2 * (v24 ^ 0xA0)) & 0xFFFFFFFB) + (v24 ^ 0x767F8F5D)) * a4 + 1984456603;
  v26 = *(v7 + v25 - (((v25 * a7) >> 32) >> 10) * v10);
  v27 = (((2 * (v26 ^ 0x90)) & 0x174) + (v26 ^ 0x1ED3632E)) * a3 - 1518398616;
  v28 = *(v11 + v27 - (((v27 * a5) >> 32) >> 10) * a6);
  v29 = (-97 * (v28 ^ 0xA) - (((v28 << 6) - 2 * (v28 ^ 0xA)) & 0x76) + 59) ^ 0xD7;
  v30 = (((2 * v29) & 0xF8) + (v29 ^ 0x17FBAE7C)) * a3 - 980586691;
  v31 = *(v11 + v30 - (((v30 * a5) >> 32) >> 10) * a6) ^ 0xA;
  v32 = 23 * v31 - ((46 * v31) & 0xFFFFFFAA) - 43;
  v33 = (((2 * (v32 ^ 0x56 ^ (v32 >> 3) & 9)) & 0x19A) + (v32 ^ 0x56 ^ (v32 >> 3) & 9 ^ 0xEAFA3FCD)) * a4 - 2025433525;
  v34 = *(v7 + v33 - (((v33 * a7) >> 32) >> 10) * v10);
  v35 = (((2 * (v34 ^ 0xC6)) & 0xDDDDDDDD) + (v34 ^ 0x19FF7629)) * a4 - 1762085534;
  *(v7 + v9 * a4 - 668042760 - ((((v9 * a4 - 668042760) * a7) >> 32) >> 10) * v10) = *(v7 + v35 - (((v35 * a7) >> 32) >> 10) * v10);
  v36 = (2 * ((*(v7 + v13) ^ 7) & 0x1F) + (*(v7 + v13) ^ 0x49CFCFD8)) * a4 + 1007371753;
  v37 = *(v7 + v36 - (((v36 * a7) >> 32) >> 10) * v10);
  v38 = (((2 * (v37 ^ 0xFFFFFFDF)) & 0xD4) + (v37 ^ 0x15BEFE35)) * a3 + 431076376;
  v39 = *(v11 + v38 - (((v38 * a5) >> 32) >> 10) * a6);
  HIDWORD(v18) = v39 ^ 0xA;
  LODWORD(v18) = v39 << 24;
  v40 = ((v18 >> 31) - ((2 * (v18 >> 31)) & 0xBF) + 95);
  v41 = (((2 * (((v18 >> 31) - ((2 * (v18 >> 31)) & 0xFFFFFFBF) + 95) ^ (v40 >> 6) ^ (v40 >> 4) ^ 0xA1)) & 0x1EE) + ((((v18 >> 31) - ((2 * (v18 >> 31)) & 0xBF) + 95) ^ (v40 >> 6) ^ (v40 >> 4)) ^ 0xE79F5F56)) * a4 - 2072108463;
  v42 = *(v7 + v41 - (((v41 * a7) >> 32) >> 10) * v10);
  v43 = (((2 * (v42 ^ 0x7C)) & 0x1AC) + (v42 ^ 0x3FBE7F82)) * a3 + 909413140;
  v44 = *(v11 + v43 - (((v43 * a5) >> 32) >> 10) * a6) ^ 0xA;
  v45 = 23 * v44 - ((46 * v44) & 0xFFFFFFB8) + 92;
  LOBYTE(v45) = v45 ^ 0x34 ^ (v45 >> 3) & 9;
  v46 = ((v45 ^ 0x67B5FFFF) + 2 * v45) * a4 - 602129143;
  v47 = *(v7 + v46 - (((v46 * a7) >> 32) >> 10) * v10);
  v48 = *(v12 + 8 * ((19 * (v9 + 1 == v8 + 256)) ^ a1));
  *(v7 + v9 * a4 - 668364488 - ((((v9 * a4 - 668364488) * a7) >> 32) >> 10) * v10) = *(v7 + (((2 * (v47 ^ 0xC5)) & 0xBBBBBBBB) + (v47 ^ 0x633EFB1A)) * a4 - 728471877 - (((((((2 * (v47 ^ 0xC5)) & 0xBBBBBBBB) + (v47 ^ 0x633EFB1A)) * a4 - 728471877) * a7) >> 32) >> 10) * v10);
  return v48();
}

uint64_t sub_100222FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  LODWORD(a39) = v77;
  HIDWORD(v159) = v74 - 15;
  LODWORD(v159) = (((v74 - 15) ^ 0x212) * v73) ^ 0x2C8;
  v81 = *((LODWORD(STACK[0x177C]) ^ 0xEFBFF6EB96A934BELL) + a61 + ((2 * (LODWORD(STACK[0x177C]) ^ 0x79564AE1u)) & 0x1DFFEFCBELL) + 0x10400914100081A1) ^ LOBYTE(STACK[0x553]) ^ v75;
  v82 = a66 ^ *((LODWORD(STACK[0x1474]) ^ 0x767FF54F87E9B14ELL) + a61 + ((2 * (LODWORD(STACK[0x1474]) ^ 0x79564AE1u)) & 0x1FD7FF75ELL) - 0x767FF54FFEBFFBAFLL);
  v83 = LOBYTE(STACK[0x38A]) ^ v75 ^ *((LODWORD(STACK[0x15F8]) ^ 0x3355EE1B87E9D41CLL) + a61 + ((2 * (LODWORD(STACK[0x15F8]) ^ 0x79564AE1u)) & 0x1FD7F3DFALL) - 0x3355EE1BFEBF9EFDLL);
  v84 = *((LODWORD(STACK[0x12F0]) ^ 0xFEFFFFEE44A1BF1ELL) + a61 + ((2 * (LODWORD(STACK[0x12F0]) ^ 0x79564AE1u)) & 0x7BEFEBFE) + 0x1000011C2080A01) ^ 0xD4;
  v85 = (((v81 - ((v81 << v159) & v76)) << 16) + 1844903936) ^ 0x6DF70000;
  v86 = (((v83 - (v79 & (2 * v83))) << 8) + 1351372544) ^ 0x508C4F00;
  v87 = (v86 - 833285605 - ((2 * v86) & 0x1CAA2400)) ^ 0xCE55121B | (v85 - 240679309 - ((2 * v85) & 0x634E0000)) ^ 0xF1A78673;
  v88 = (v87 - 1212328903 - ((2 * v87) & 0x6F7AA872)) ^ 0xB7BD5439 | ((v82 ^ v75) - 1121399416 - ((2 * v82) & 0x11111111)) ^ 0xBD28CD88;
  v89 = (((v88 - ((2 * v88) & 0x75CB40)) << 8) - 1159356416) ^ 0xBAE5A000;
  v90 = (v89 - 1062413985 - ((2 * v89) & 0x8159B200)) ^ 0xC0ACD95F | (v84 - 650165824 - ((2 * v84) & 0x180)) ^ 0xD93F41C0;
  *(*a62 - 0x606985B424E1601ELL) = ((LOBYTE(STACK[0x700]) ^ 0xC7) - ((2 * (LOBYTE(STACK[0x700]) ^ 0xC7)) & 0x32) - 1390297575) ^ 0x32511B01 ^ (v90 - ((2 * v90) & 0xCC4DDFF2) - 433655815);
  v91 = LOBYTE(STACK[0x56F]) ^ 0x13 ^ *((LODWORD(STACK[0x1D8C]) ^ 0xF5E7A6EF87833417) + a61 + ((2 * (LODWORD(STACK[0x1D8C]) ^ 0x79564AE1u)) & 0x1FDAAFDECLL) + 0xA185910012A810ALL);
  v92 = *((LODWORD(STACK[0x1C08]) ^ 0x3FEBBFBDB409373FLL) + a61 + ((2 * (LODWORD(STACK[0x1C08]) ^ 0x79564AE1u)) & 0x19ABEFBBCLL) - 0x3FEBBFBDCD5F7DDELL) ^ LOBYTE(STACK[0x3A6]) ^ 0x13;
  v93 = a71 ^ 0x13 ^ *((LODWORD(STACK[0x1A84]) ^ 0xFEB6B6FD86A595BELL) + a61 + ((2 * (LODWORD(STACK[0x1A84]) ^ 0x79564AE1u)) & 0x1FFE7BEBELL) + 0x1494902000C20A1);
  v94 = (((v91 - ((2 * v91) & 0x60)) << 16) + 691011584) ^ 0x29300000;
  v95 = (((v92 + 4600747 - ((2 * v92) & 0x11C)) << 8) - 7424) ^ 0x46338E00;
  v96 = (v95 - 1099305283 - ((2 * v95) & 0x7CF3DC00)) ^ 0xBE79EEBD | (v94 + 1264289199 - ((2 * v94) & 0x16B60000)) ^ 0x4B5B85AF;
  v97 = (v96 - 736195811 - ((2 * v96) & 0x283D163A)) ^ 0xD41E8B1D | (v93 + 642394355 - ((2 * v93) & 0xFFFFFFE7)) ^ 0x264A28F3;
  v98 = LOBYTE(STACK[0x71C]) ^ 0x13 ^ *((LODWORD(STACK[0x1900]) ^ 0x4FC35CFE96B5F11ELL) + a61 + ((2 * (LODWORD(STACK[0x1900]) ^ 0x79564AE1u)) & 0x1DFC777FELL) - 0x4FC35CFEEFE3BBFFLL);
  v99 = (((v97 - ((2 * v97) & 0x6AB3D2)) << 8) - 1252398848) ^ 0xB559E900;
  v100 = (v99 + 952097129 - ((2 * v99) & 0x717FB200)) ^ 0x38BFD969 | (v98 - 1417128367 - ((2 * v98) & 0xA2)) ^ 0xAB885651;
  *(*a62 - 0x606985B424E1600ELL) = v100 + 2035698401 - ((2 * v100) & 0xF2AC95C2);
  v101 = *((LODWORD(STACK[0xCA8]) ^ 0x3F7E75BB8729F7DALL) + a61 + ((2 * (LODWORD(STACK[0xCA8]) ^ 0x79564AE1u)) & 0x1FCFF7A76) - 0x3F7E75BBFE7FBD3BLL);
  v102 = *((LODWORD(STACK[0x9A0]) ^ 0xFBFFDBF78268911CLL) + a61 + ((2 * (LODWORD(STACK[0x9A0]) ^ 0x79564AE1u)) & 0x1F67DB7FALL) + 0x400240804C12403) ^ LOBYTE(STACK[0x738]) ^ 0x13;
  v103 = LOBYTE(STACK[0x58B]) ^ 0x13 ^ *((LODWORD(STACK[0xE2C]) ^ 0x2DFED6DB82813322) + a61 + ((2 * (LODWORD(STACK[0xE2C]) ^ 0x79564AE1u)) & 0x1F7AEF386) - 0x2DFED6DBFBD779C3);
  v104 = (((v103 - (v78 & (2 * v103))) << 8) + 1556551168) ^ 0x5CC71600;
  v105 = ((LOBYTE(STACK[0x3C2]) ^ 0xC7) + 1108649403 - ((2 * (LOBYTE(STACK[0x3C2]) ^ 0xC7)) & 0x77777777)) ^ 0x4214A5BB;
  v106 = (v104 - 1273839980 - ((2 * v104) & 0x68257C00)) ^ 0xB412BE94 | v105;
  v107 = (v101 ^ 0xFFFFF57B) + ((2 * (v101 ^ 0x84)) & 0x15E) + 2641;
  v108 = ((v106 + 1561925797 - ((2 * v106) & 0x3A32314A)) ^ 0x5D1918A5) + v107;
  v109 = ((((v105 & v107) - ((2 * (v105 & v107)) & 0x2694EC)) << 9) + 647293952) ^ 0x2694EC00;
  v110 = (((v108 - ((2 * v108) & 0x9AFEEA)) << 8) - 847284992) ^ 0xCD7F7500;
  v111 = ((v110 - 1534792199 - ((2 * v110) & 0x4909DA00)) ^ 0xA484EDF9) - ((v109 + 1290731853 - ((2 * v109) & 0x19DE0000)) ^ 0x4CEF014D);
  v112 = *((LODWORD(STACK[0xB24]) ^ 0x7FBFBF7F9E11D506) + a61 + ((2 * (LODWORD(STACK[0xB24]) ^ 0x79564AE1u)) & 0x1CE8F3FCELL) - 0x7FBFBF7FE7479FE7) ^ 0xD4;
  v113 = (v111 - 1106309229 - ((2 * v111) & 0x7C1E1F26)) ^ 0xBE0F0F93 | (v112 + 1552797414 - ((2 * v112) & 0x1CC)) ^ 0x5C8DCEE6;
  v114 = (((v113 - ((2 * v113) & 0x715762) + 12102577) ^ ((a73 ^ 0xC7) + 12020832 - ((2 * (a73 ^ 0xC7)) & 4) + 2466)) << 8) ^ 0xFDDB300;
  v115 = (v114 - 1119425078 - ((2 * v114) & 0x7A8DDA00)) ^ 0xBD46EDCA | (v102 - 588593983 - ((2 * v102) & 0xFFFFFF83)) ^ 0xDCEAC4C1;
  *(*a62 - 0x606985B424E15FFELL) = v115 + 2035698401 - ((2 * v115) & 0xF2AC95C2);
  HIDWORD(v160) = (*(v80 - 117) ^ 0xEF) - ((2 * (*(v80 - 117) ^ 0xEF)) & 0x58);
  v116 = *((LODWORD(STACK[0x19EC]) ^ 0xA587BCFF8733B11FLL) + a61 + ((2 * (LODWORD(STACK[0x19EC]) ^ 0x79564AE1u)) & 0x1FCCBF7FCLL) + 0x5A784300019A0402);
  v163 = (*(v80 - 120) ^ 0xEF) - 1497392079 - ((2 * (*(v80 - 120) ^ 0xEF)) & 0x62);
  LODWORD(v160) = 238;
  v117 = (LOBYTE(STACK[0x2BB]) ^ 0x13 ^ v116) - ((2 * (LOBYTE(STACK[0x2BB]) ^ 0x13 ^ v116)) & 0xD2);
  LODWORD(v161) = 696;
  v118 = (*(v80 - 118) ^ 0xEF) - ((2 * (*(v80 - 118) ^ 0xEF)) & 0x1A);
  v119 = *((LODWORD(STACK[0x1868]) ^ 0x6BAF7CF79EA93D5ELL) + a61 + ((2 * (LODWORD(STACK[0x1868]) ^ 0x79564AE1u)) & 0x1CFFEEF7ELL) - 0x6BAF7CF7E7FF77BFLL) ^ 0xD4;
  HIDWORD(v161) = v119 - ((2 * v119) & 0x14C);
  v120 = (((v117 << 8) - 1517524736) ^ 0xA58C6900) - 1560497624 - ((2 * (((v117 << 8) - 1517524736) ^ 0xA58C6900)) & 0x45F96400);
  v162 = (LODWORD(STACK[0x1634]) ^ 0xEDD6FDED1CC82714) + a61 + ((2 * (LODWORD(STACK[0x1634]) ^ 0x79564AE1u)) & 0xCB3CDBEALL);
  v121 = (LOBYTE(STACK[0x7FA]) ^ 0xC7) + 1521851366 - ((2 * (LOBYTE(STACK[0x7FA]) ^ 0xC7)) & 0x1CC);
  v122 = ((((v118 << 8) - 3011328) ^ 0xFFD20D00) - 1032533177 - ((2 * (((v118 << 8) - 3011328) ^ 0xFFD20D00)) & 0x4E99600)) ^ 0xC274CB47 | ((((HIDWORD(v160) << 16) - 1054081024) ^ 0xC12C0000) - 92678126 - ((2 * (((HIDWORD(v160) << 16) - 1054081024) ^ 0xC12C0000)) & 0x74F20000)) ^ 0xFA79D812;
  v123 = (v122 - 1749558915 - ((2 * v122) & 0x2F6FB2FA)) ^ 0x97B7D97D | ((*(v80 - 119) ^ 0xEF) - 238390700 - ((2 * (*(v80 - 119) ^ 0xEF)) & 0xA8)) ^ 0xF1CA7254;
  v124 = (LODWORD(STACK[0x17B8]) ^ 0xBFFFDEEF9BB5B5DELL) + a61 + ((2 * (LODWORD(STACK[0x17B8]) ^ 0x79564AE1u)) & 0x1C5C7FE7ELL);
  v125 = (((v123 - ((2 * v123) & 0xD8E512)) << 8) + 1819445504) ^ 0x6C728900;
  v126 = v125 + 720311590 - ((2 * v125) & 0x55DE2A00);
  v127 = LOBYTE(STACK[0x78B]) ^ 0x13 ^ *((LODWORD(STACK[0xDFC]) ^ 0x7DBD75A79CB99350) + a61 + ((2 * (LODWORD(STACK[0xDFC]) ^ 0x79564AE1u)) & 0x1CBDFB362) - 0x7DBD75A7E5EFD9B1);
  v128 = v127 - ((2 * v127) & 0x16A);
  v129 = (v121 ^ 0x5AB59BE6 | v120 ^ 0xA2FCB228) - ((2 * (v121 ^ 0x5AB59BE6 | v120 ^ 0xA2FCB228)) & 0xD35C);
  v130 = LOBYTE(STACK[0x5C2]) ^ 0x13 ^ *((LODWORD(STACK[0xC78]) ^ 0xFD6FCDFF94A0B11ELL) + a61 + ((2 * (LODWORD(STACK[0xC78]) ^ 0x79564AE1u)) & 0x1DBEDF7FELL) + 0x290320012090401);
  v131 = v130 - ((2 * v130) & 0x4C);
  v132 = LOBYTE(STACK[0x631]) ^ 0x13 ^ *((LODWORD(STACK[0x16E4]) ^ 0x7DF3E3F38AA9BD12) + a61 + ((2 * (LODWORD(STACK[0x16E4]) ^ 0x79564AE1u)) & 0x1E7FFEFE6) - 0x7DF3E3F3F3FFF7F3);
  v133 = LOBYTE(STACK[0x468]) ^ 0x13 ^ *((LODWORD(STACK[0x1560]) ^ 0x1FF5EFFF26E8B5BCLL) + a61 + ((2 * (LODWORD(STACK[0x1560]) ^ 0x79564AE1u)) & 0xBF7DFEBALL) - 0x1FF5EFFF5FBEFF5DLL);
  v134 = v133 + 2017239263 - ((2 * v133) & 0xFFFFFFBF);
  v135 = LOBYTE(STACK[0x3F9]) ^ 0x13 ^ *((LODWORD(STACK[0xAF4]) ^ 0x6BFF9EF717ABF116) + a61 + ((2 * (LODWORD(STACK[0xAF4]) ^ 0x79564AE1u)) & 0xDDFB77EELL) - 0x6BFF9EF76EFDBBF7);
  v136 = ((((v131 << 8) - 928635392) ^ 0xC8A62600) + 600753673 - ((2 * (((v131 << 8) - 928635392) ^ 0xC8A62600)) & 0x479D8C00)) ^ 0x23CEC609 | ((((v128 << 16) + 515178496) ^ 0x1EB50000) + 1081240728 + (~(2 * (((v128 << 16) + 515178496) ^ 0x1EB50000)) | 0xFF1BFFFF) + 1) ^ 0x40726C98;
  v137 = *((LODWORD(STACK[0x970]) ^ 0xFD7FEDFF940BECDFLL) + a61 + ((2 * (LODWORD(STACK[0x970]) ^ 0x79564AE1u)) & 0x1DABB4C7CLL) + 0x280120012A259C2) ^ LOBYTE(STACK[0x230]) ^ 0x13;
  v138 = (((((v129 + 27054) ^ (HIDWORD(v161) + 48038)) << 16) ^ 0xD2080000) - 1461150714 - ((2 * ((((v129 + 27054) ^ (HIDWORD(v161) + 48038)) << 16) ^ 0xD2080000)) & 0x51D00000)) ^ 0xA8E89C06 | (((((v132 - ((2 * v132) & 0x74)) << 8) - 18269696) ^ 0xFEE93A00) - 118016909 - ((2 * ((((v132 - ((2 * v132) & 0x74)) << 8) - 18269696) ^ 0xFEE93A00)) & 0x71EE6800)) ^ 0xF8F73473;
  v139 = (v136 - 1987291196 - ((2 * v136) & 0x1318AF88)) ^ 0x898C57C4 | (v135 - 1639946913 - ((2 * v135) & 0xBE)) ^ 0x9E40655F;
  v140 = (((v139 - ((2 * v139) & 0x5700DC)) << 8) + 729837056) ^ 0x2B806E00;
  v141 = (v138 - 1203535331 - ((2 * v138) & 0x7087043A)) ^ 0xB843821D | v134 ^ 0x783CA0DF;
  v142 = LODWORD(STACK[0xAE0]) ^ ((v126 ^ 0x2AEF1526 | v163 ^ 0xA6BF9C31) - ((2 * (v126 ^ 0x2AEF1526 | v163 ^ 0xA6BF9C31)) & 0xE4DF946) + 119995555) ^ (v137 - ((2 * v137) & 0xA8) + 1475882324) ^ (v140 - ((2 * v140) & 0xDE07C00) - 2031075660) ^ 0xA7102C7 ^ (v141 - ((2 * v141) & 0xB8BFDB08) - 597693052);
  v143 = *((LODWORD(STACK[0x193C]) ^ 0x7E7FEFFFA419E536) + a61 + ((2 * (LODWORD(STACK[0x193C]) ^ 0x79564AE1u)) & 0x1BA9F5FAELL) - 0x7E7FEFFFDD4FAFD7);
  v144 = LOBYTE(STACK[0x5B9]);
  v145 = *(v162 + 0x122902129A61920BLL);
  v146 = *(v124 + 0x400021101D1C00C1);
  v147 = LOBYTE(STACK[0x782]);
  v148 = LOBYTE(STACK[0x243]);
  v149 = LOBYTE(STACK[0x3F0]);
  v150 = *((LODWORD(STACK[0x14B0]) ^ 0xFBF45E7E9FB9A71ALL) + a61 + ((2 * (LODWORD(STACK[0x14B0]) ^ 0x79564AE1u)) & 0x1CDDFDBF6) + 0x40BA18119101205);
  *(*a62 - 0x606985B424E1B15ELL) = v142;
  v151 = v146 ^ v147 ^ 0x13;
  v152 = ((((v143 ^ v148 ^ 0x13) - ((2 * (v143 ^ v148 ^ 0x13)) & 0x1EA)) << 16) - 2047541248) ^ 0x85F50000;
  v153 = (((v151 - ((2 * v151) & 0x156)) << 8) + 1165536000) ^ 0x4578AB00;
  v154 = (v152 - 856888485 - ((2 * v152) & 0x19D80000)) ^ 0xCCECEB5B | (v153 + 1531342585 - ((2 * v153) & 0x368CDC00)) ^ 0x5B466EF9;
  v155 = (v154 + 796867966 - ((2 * v154) & 0x5EFE7AFC)) ^ 0x2F7F3D7E | v144 ^ 0x13 ^ v145;
  v156 = (v149 ^ 0x13 ^ v150) + 225948425 - ((2 * (v149 ^ 0x13 ^ v150)) & 0x12);
  v157 = (((v155 - ((2 * v155) & 0xE44D3A)) << 8) + 1915133184) ^ 0x72269D00;
  *(*a62 - 0x606985B424E1608ELL) = ((v157 + 1385977599 - ((2 * v157) & 0xA538AC00)) ^ 0x529C56FF | v156 ^ 0xD77B309) + 2035698401 - ((2 * ((v157 + 1385977599 - ((2 * v157) & 0xA538AC00)) ^ 0x529C56FF | v156 ^ 0xD77B309)) & 0xF2AC95C2);
  return (*(&off_1003E7570 + (HIDWORD(v159) ^ 0x11)))(0x9F967A4A365895C2, 1184591915, 4176950387, v124, 1201507328, 2833816582, 2655020383, 2307676100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v159, v160, v161, v162);
}

uint64_t sub_1002246A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, char a63)
{
  v64 = (a55 - 616) * v63;
  v86 = (((v63 - 107465422) >> 1) & 0x69FFFF76) + (((v63 - 107465422) >> 2) ^ 0xB4FFFFBB);
  v65 = &STACK[0x8C0];
  v66 = *(&STACK[0x8C0] + (v64 - 1834118319) % 0x55Cu) ^ 0x79564AE1u;
  v67 = *(&STACK[0x8C0] + (v64 - 1834118513) % 0x55Cu) ^ 0x79564AE1u;
  v68 = *((*(v65 + (v64 - 1834095039) % 0x55Cu) ^ 0x7E7DFDDC8B428F1DLL) + a61 + ((2 * (*(v65 + (v64 - 1834095039) % 0x55Cu) ^ 0x79564AE1u)) & 0x1E4298BF8) - 0x7E7DFDDCF214C5FCLL);
  v69 = *(&STACK[0x8C0] + (v64 - 1834118416) % 0x55Cu) ^ 0x79564AE1u;
  v70 = *((*(v65 + (v64 - 1834095136) % 0x55Cu) ^ 0xEBFEFD3F8408B506) + a61 + ((2 * (*(v65 + (v64 - 1834095136) % 0x55Cu) ^ 0x79564AE1u)) & 0x1FABDFFCELL) + 0x140102C002A10019);
  v71 = *(&a63 + (457 * v63 - 1866541645) % 0x708u) ^ 0x13 ^ *((v67 ^ 0x7DFFEFFF686FD8BFLL) + a61 + ((2 * v67) & 0xD0DFB17ELL) - 0x7DFFEFFF686FD8BFLL);
  LODWORD(v69) = *(&a63 + (457 * v63 - 1866541188) % 0x708u) ^ 0x13 ^ *((v69 ^ 0xFAFF6D545FC6FABFLL) + a61 + ((2 * v69) & 0xBF8DF57ELL) + 0x50092ABA0390541);
  v72 = *((v66 ^ 0xEFF3B7F75A3A7DBDLL) + a61 + ((2 * v66) & 0xB474FB7ALL) + 0x100C4808A5C58243) ^ *(&a63 + (457 * v63 - 1866540731) % 0x708u) ^ 0x13;
  v73 = *(&STACK[0x8C0] + (v64 - 1834095330) % 0x55Cu);
  v74 = *((*(v65 + (v64 - 1834095233) % 0x55Cu) ^ 0x5EFFF7BF88B9B35ELL) + a61 + ((2 * (*(v65 + (v64 - 1834095233) % 0x55Cu) ^ 0x79564AE1u)) & 0x1E3DFF37ELL) - 0x5EFFF7BFF1EFF9BFLL);
  v75 = *((v73 ^ 0x6ACFFBCF96AD3D18) + a61 + ((2 * (v73 ^ 0x79564AE1)) & 0x1DFF6EFF2) - 0x6ACFFBCFEFFB77F9);
  v76 = *(&a63 + (457 * v63 - 1866542102) % 0x708u) ^ 0x13 ^ *((*(v65 + (v64 - 1834118610) % 0x55Cu) ^ 0xBD7F7EBB84AC94BELL) + a61 + ((2 * (*(v65 + (v64 - 1834118610) % 0x55Cu) ^ 0x79564AE1u)) & 0x1FBF5BCBELL) + 0x42808144020521A1);
  v77 = (((v72 - ((2 * v72) & 0x78)) << 16) + 1681653760) ^ 0x643C0000;
  LODWORD(v69) = (((v69 + 122876 - ((2 * v69) & 0x33333333)) << 8) + 630016) ^ 0x1E99900;
  LODWORD(v69) = (v69 - 411630377 - ((2 * v69) & 0x4EEE0800)) ^ 0xE77704D7 | (v77 - 360738859 - ((2 * v77) & 0x54FE0000)) ^ 0xEA7F8FD5;
  LODWORD(v69) = (v69 - 1019404436 - ((2 * v69) & 0x67A3ED8)) ^ 0xC33D1F6C | (v71 + 557974831 - ((2 * v71) & 0x5E)) ^ 0x2142052F;
  LODWORD(v69) = (((v69 - ((2 * v69) & 0xB76C60)) << 8) + 1538666496) ^ 0x5BB63000;
  LODWORD(v69) = (v69 + 1451365651 - ((2 * v69) & 0xAD042A00)) ^ 0x56821513 | (v76 - 1390061740 + (~(2 * v76) | 0xFFFFFF57) + 1) ^ 0xAD255754;
  v78 = *(&a63 + (457 * v63 - 1866431051) % 0x708u);
  v79 = *(&a63 + (457 * v63 - 1866432422) % 0x708u);
  v80 = *(&a63 + (457 * v63 - 1866431965) % 0x708u);
  v81 = *(&a63 + (457 * v63 - 1866431508) % 0x708u);
  *(((4 * (v86 + 1597734758)) | ((v86 + 1597734758 < 0x143B7F21) << 34)) + *a62 - 0x606985B475CFADE2) = *(&STACK[0x8C0] + (97 * (v86 + 1597734758) + 1433744767) % 0x55C) ^ 0xB67504D8 ^ (v69 - 1233845032 - ((2 * v69) & 0x6CEA09B0));
  LODWORD(v69) = (v68 ^ v78 ^ 0x13) + (~(2 * (v68 ^ v78 ^ 0x13)) | 0xFFFE3D);
  LODWORD(v69) = ((v70 ^ 0xD4) - 629528492 - ((2 * (v70 ^ 0xD4)) & 0xA8)) ^ 0xDA7A2854 | ((((v69 << 8) + 2000675328) ^ 0x773FE100) + 1516194463 - ((2 * (((v69 << 8) + 2000675328) ^ 0x773FE100)) & 0xBE9400)) ^ 0x5A5F4A9F;
  v82 = (v74 ^ v80 ^ 0x13) - ((2 * (v74 ^ v80 ^ 0x13)) & 0xD6);
  LODWORD(v69) = ((v81 ^ 0xC7) - ((2 * (v81 ^ 0xC7)) & 0xF8) + 27516) ^ (v69 - ((2 * v69) & 0x786) + 33731);
  v83 = (((v69 << 16) ^ 0xE8BF0000) + 476194609 - ((2 * ((v69 << 16) ^ 0xE8BF0000)) & 0x38C40000)) ^ 0x1C622731 | ((((v82 << 8) + 1982950144) ^ 0x76316B00) - 661967421 - ((2 * (((v82 << 8) + 1982950144) ^ 0x76316B00)) & 0x31165A00)) ^ 0xD88B2DC3;
  v84 = (v83 - 1252702616 - ((2 * v83) & 0x6AAA8CD0)) ^ 0xB5554668 | ((v75 ^ v79 ^ 0x13) + 2000313615 - 2 * ((v75 ^ v79 ^ 0x13) & 0xF)) ^ 0x773A5D0F;
  *(((4 * (v86 + 1732410769)) | ((v86 + 1732410769 < 0x1C426918) << 34)) + *a62 - 0x606985B495EB55BELL) = v84 + 2035698401 - ((2 * v84) & 0xF2AC95C2);
  return (*(&off_1003E7570 + ((59 * ((v63 - 107465418) < 0x20)) ^ a55)))((v63 - 107465418) < 0x20, 3632999875, 1372, &STACK[0x8C0], 19, 476194609, 2000313615, 1353029461, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100224E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v54 = ((((v47 + 476598678) & 0xE397ABA0) + 2146433887) ^ ((a8 - 1353029429) >> 2)) + (((a8 - 1353029429) >> 1) & 0x7FDFF9FE) - 134333498;
  HIDWORD(v55) = a8 + 7;
  LODWORD(v55) = a8 - 1353028473;
  v56 = (v55 >> 5) + 1407877120 - ((2 * (v55 >> 5)) & 0xA7D515AA) + 2773;
  HIDWORD(v55) = v56 ^ 0xAD5;
  LODWORD(v55) = v56 ^ 0x53EA8000;
  v57 = (v55 >> 13) + 82657280 - ((2 * (v55 >> 13)) & 0x9DA9BE4) + 3570;
  HIDWORD(v55) = v57 ^ 0xDF2;
  LODWORD(v55) = v57 ^ 0x4ED4000;
  v58 = 97 * (((2 * (v55 >> 14)) & 0xDA4FAFFE) + ((v55 >> 14) ^ 0x6D27D7FF)) - 1545131935;
  v59 = *(v49 + 457 * a8 + 141358438 - (457 * a8 + 141358438) / 0x708u * v48) ^ a5 ^ *((*(a4 + 4 * (97 * a8 + 1900224586 - ((((97 * a8 + 1900224586) * v50) >> 32) >> 10) * a3)) ^ 0x449FF3FF842BFD5ELL) + v53 + ((2 * (*(a4 + 4 * (97 * a8 + 1900224586 - ((((97 * a8 + 1900224586) * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u)) & 0x1FAFB6F7ELL) - 0x449FF3FFFD7DB7BFLL);
  v60 = *(a4 + 4 * (v58 - (((v58 * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u;
  v61 = *(v49 + 457 * a8 + 141357067 - (457 * a8 + 141357067) / 0x708u * v48) ^ v46;
  v62 = *(v49 + 457 * a8 + 141357981 - (457 * a8 + 141357981) / 0x708u * v48) ^ a5 ^ *((*(a4 + 4 * (97 * a8 + 1900224489 - ((((97 * a8 + 1900224489) * v50) >> 32) >> 10) * a3)) ^ 0x7FE7CF6B0639FD1ELL) + v53 + ((2 * (*(a4 + 4 * (97 * a8 + 1900224489 - ((((97 * a8 + 1900224489) * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u)) & 0xFEDF6FFELL) - 0x7FE7CF6B7F6FB7FFLL);
  v63 = (((v59 - ((2 * v59) & 0x1B2)) << 16) - 992411648) ^ 0xC4D90000;
  v64 = (((v62 - ((2 * v62) & 0x116)) << 8) + 1438550784) ^ 0x55BE8B00;
  v65 = (v64 - 997913104 - ((2 * v64) & 0x90A1A00)) ^ 0xC4850DF0 | (v63 + 2032853362 - ((2 * v63) & 0x72540000)) ^ 0x792AE172;
  LODWORD(v60) = *((v60 ^ 0x5C77F77FF3EEFFAFLL) + v53 + ((2 * v60) & 0x1E7DDFF5ELL) - 0x5C77F77FF3EEFFAFLL) ^ v51;
  v66 = *(v49 + 457 * a8 + 141357524 - (457 * a8 + 141357524) / 0x708u * v48) ^ a5 ^ *((*(a4 + 4 * (97 * a8 + 1900224392 - ((((97 * a8 + 1900224392) * v50) >> 32) >> 10) * a3)) ^ 0x7E9BDF7F8686355CLL) + v53 + ((2 * (*(a4 + 4 * (97 * a8 + 1900224392 - ((((97 * a8 + 1900224392) * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u)) & 0x1FFA0FF7ALL) - 0x7E9BDF7FFFD07FBDLL);
  v67 = (v65 + 726555136 - ((2 * v65) & 0x569CB400)) ^ 0x2B4E5A00 | (v66 - 1778917211 - ((2 * v66) & 0x14A)) ^ 0x95F7E0A5;
  v68 = (((v67 - ((2 * v67) & 0x729640)) << 8) - 1186258944) ^ 0xB94B2000;
  v69 = (v68 + 1296150098 - ((2 * v68) & 0x9A835C00)) ^ 0x4D41AE52 | (v61 + 926138782 - ((2 * v61) & 0x13C)) ^ 0x3733C19E;
  *(((4 * v54) | ((v54 < 0x77EE38C5) << 34)) + *v52 - 0x606985B6049A9472) = (v60 - ((2 * v60) & 0x124) + 401356690) ^ *(a4 + 4 * (97 * v54 - 1900224933 - ((((97 * v54 - 1900224933) * v50) >> 32) >> 10) * a3)) ^ 0x56745325 ^ (v69 - ((2 * v69) & 0x8330C96E) + 1100506295);
  return (*(&off_1003E7570 + ((196 * ((a8 - 1353029425) < 0x60)) ^ v47)))(0x9F967A49FB656B8ELL, 1450464037, a3, a4, a5, 97, 906537253, (a8 + 4), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100225338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, char a63)
{
  v64 = (((a7 - 906537157) >> 1) & 0x771EF7AE) + (((a7 - 906537157) >> 2) ^ 0x3B8F7BD7);
  v65 = &STACK[0x8C0];
  v66 = *(&STACK[0x8C0] + (97 * a7 - 2034648505) % 0x55Cu);
  v67 = *(&STACK[0x8C0] + (97 * a7 - 2034648214) % 0x55Cu);
  v68 = *(&STACK[0x8C0] + (97 * a7 - 2034648408) % 0x55Cu);
  v69 = *(&STACK[0x8C0] + (97 * a7 - 2034665286) % 0x55Cu);
  v70 = v66 ^ 0x79564AE1;
  v71 = (v67 ^ 0xEFE7EFF9820D870ELL) + a61 + ((2 * (v67 ^ 0x79564AE1)) & 0x1F6B79BDELL);
  v72 = (v66 ^ 0x9BE97EFF1570B51ELL) + a61;
  v73 = *(v71 + 0x1018100604A43211);
  LODWORD(v70) = *(v72 + ((2 * v70) & 0xD84DFFFELL) + 0x6416810093D90001);
  v74 = *(&STACK[0x8C0] + (97 * a7 - 2034648311) % 0x55Cu);
  v75 = *((v74 ^ 0xBBE76EF5C5E1B53DLL) + a61 + ((2 * (v74 ^ 0x79564AE1)) & 0x1796FFFB8) + 0x4418910A43480024);
  v76 = *((v68 ^ 0x7EBD7CFDBFB9889DLL) + a61 + ((2 * (v68 ^ 0x79564AE1)) & 0x18DDF84F8) - 0x7EBD7CFDC6EFC27CLL);
  LODWORD(v71) = *((*(v65 + (97 * a7 - 2034665383) % 0x55Cu) ^ 0x7D7FF57FAEAD7D4CLL) + a61 + ((2 * (*(v65 + (97 * a7 - 2034665383) % 0x55Cu) ^ 0x79564AE1u)) & 0x1AFF66F5ALL) - 0x7D7FF57FD7FB37ADLL) ^ *(&a63 + (457 * a7 - 1970103923) % 0x708u) ^ 0x13;
  v77 = *((v69 ^ 0xDD7F52ED82ABBE44) + v63 + ((2 * (v69 ^ 0x79564AE1)) & 0x1F7FBE94ALL) + 0x2280AD1204020B5BLL) ^ *(&a63 + (457 * a7 - 1970103466) % 0x708u) ^ 0x13;
  v78 = *(&a63 + (457 * a7 - 1970104380) % 0x708u) ^ 0x13 ^ *((*(v65 + (97 * a7 - 2034665480) % 0x55Cu) ^ 0x3DEEFB578309B51ELL) + a61 + ((2 * (*(v65 + (97 * a7 - 2034665480) % 0x55Cu) ^ 0x79564AE1u)) & 0x1F4BFFFFELL) - 0x3DEEFB57FA5FFFFFLL);
  v79 = (((v77 - ((2 * v77) & 0x178)) << 16) + 280756224) ^ 0x10BC0000;
  LODWORD(v71) = (((v71 - ((2 * v71) & 0x146)) << 8) - 713841920) ^ 0xD573A300;
  LODWORD(v71) = (v71 - 781027708 - ((2 * v71) & 0x22E4EC00)) ^ 0xD1727684;
  v80 = (v79 + 932974484 - ((2 * v79) & 0x6F380000)) ^ 0x379C0F94 | v71;
  v81 = v71 | (v78 - 485413145 - ((2 * v78) & 0xFFFFFFCF)) ^ 0xE3112EE7;
  HIDWORD(v82) = (v81 - ((2 * v81) & 0x468) + 2612) ^ 0xA34;
  LODWORD(v82) = (v80 + 740171776 - ((2 * v80) & 0x583C4CBE) + 1631) ^ 0x2C1E2000;
  v83 = *(&a63 + (457 * a7 - 1970104837) % 0x708u) ^ 0x13 ^ *((*(v65 + (97 * a7 - 2034665577) % 0x55Cu) ^ 0x7F9F1EDF92A9233ELL) + a61 + ((2 * (*(v65 + (97 * a7 - 2034665577) % 0x55Cu) ^ 0x79564AE1u)) & 0x1D7FED3BELL) - 0x7F9F1EDFEBFF69DFLL);
  v84 = (v82 >> 12) - ((2 * (v82 >> 12)) & 0x3EBB699A) - 1621248819;
  HIDWORD(v82) = v84 ^ 0xDB4CD;
  LODWORD(v82) = v84 ^ 0x9F500000;
  v85 = ((((v82 >> 20) - ((2 * (v82 >> 20)) & 0x771B2E)) << 8) - 1148348672) ^ 0xBB8D9700;
  v86 = (v85 + 97023767 - ((2 * v85) & 0xB90EE00)) ^ 0x5C87717 | (v83 - 310605423 - ((2 * v83) & 0x122)) ^ 0xED7C8991;
  v87 = *(&a63 + (457 * a7 - 1970023034) % (((a55 - 416) | 0x190) ^ 0x698u));
  v88 = *(&a63 + (457 * a7 - 1970023491) % 0x708u);
  v89 = *(&a63 + (457 * a7 - 1970024405) % 0x708u);
  v90 = *(&a63 + (457 * a7 - 1970023948) % 0x708u);
  *(((4 * (v64 - 813699264)) | ((v64 - 813699264 < 0xB0F6B17) << 34)) + *a62 - 0x606985B4511F5DBALL) = *(&STACK[0x8C0] + (97 * (v64 - 813699264) - 819409591) % 0x55C) ^ 0xE5F5097E ^ (v86 - 436926082 - ((2 * v86) & 0xCBEA12FC));
  v91 = ((((v87 ^ 0x13 ^ v73) - ((2 * (v87 ^ 0x13 ^ v73)) & 0x18C)) << 16) - 1715077120) ^ 0x99C60000;
  v92 = ((((v88 ^ 0x13 ^ v75) - ((2 * (v88 ^ 0x13 ^ v75)) & 0x144)) << 8) - 1142644224) ^ 0xBBE4A200;
  v93 = (v92 - 942789039 - ((2 * v92) & 0xF9C5C00)) ^ 0xC7CE2E51 | (v91 + 1871941468 - ((2 * v91) & 0x5F260000)) ^ 0x6F938F5C;
  v94 = (2 * v93) & 0x769511F2;
  v95 = (v93 - 1152743175 - v94) ^ 0xBB4A88F9 | ((v90 ^ 0xC7) - 1420629728 - ((2 * v90) & 0x40)) ^ 0xAB52E920;
  v96 = (v95 - ((2 * v95) & 0xFD2D20) + 8296080) ^ ((v76 ^ 0xD4) - ((2 * (v76 ^ 0xD4)) & 0x194) + 2612938);
  v97 = (((v96 << 8) ^ 0x59485A00) - 1261069178 - ((2 * ((v96 << 8) ^ 0x59485A00)) & 0x69AB3800)) ^ 0xB4D59C86 | ((v70 ^ v89 ^ 0x13) + 1533816207 - ((2 * (v70 ^ v89 ^ 0x13)) & 0xFFFFFF1F)) ^ 0x5B6C2D8F;
  *(((4 * v64) | ((v64 < 0x3B8F67B3) << 34)) + *a62 - 0x606985B5131F502ALL) = v97 + 2035698401 - ((2 * v97) & 0xF2AC95C2);
  return (*(&off_1003E7570 + ((2014 * ((a7 - 906537153) < 0xB0)) ^ a55)))(&STACK[0x8C0], v94, 2443359173, 1800, &a63, 19, (a7 + 4), 3142224121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_100225B68(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  v14 = (((v7 - 36639960) >> 2) ^ 0x357EF4FF) + (((v7 - 36639960) >> 1) & 0x6AFDE9FE);
  v15 = *(a5 + 457 * v7 + 435924331 - ((((457 * v7 + 435924331) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740984199 - ((((97 * v7 + 740984199) * v8) >> 32) >> 10) * v9)) ^ 0x68FDDF93E02DB734) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740984199 - ((((97 * v7 + 740984199) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x132F7FBAALL) - 0x68FDDF93997BFDD5);
  v16 = *(a5 + 457 * v7 + 435923874 - ((((457 * v7 + 435923874) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740984102 - ((((97 * v7 + 740984102) * v8) >> 32) >> 10) * v9)) ^ 0xFB97FFC7B628B51FLL) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740984102 - ((((97 * v7 + 740984102) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x19EFDFFFCLL) + 0x468003830810002);
  v17 = *(a5 + 457 * v7 + 435923417 - ((((457 * v7 + 435923417) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740984005 - ((((97 * v7 + 740984005) * v8) >> 32) >> 10) * v9)) ^ 0x5F77F7BB44F8B515) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740984005 - ((((97 * v7 + 740984005) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x7B5DFFE8) - 0x5F77F7BB3DAEFFF4);
  v18 = (((v15 - ((2 * v15) & 0xFFFFFF83)) << 16) - 1648295936) ^ 0x9DC10000;
  v19 = (((v16 - (v6 & (2 * v16))) << 8) + 1593141760) ^ 0x5EF56A00;
  v20 = (v18 + 743820815 - ((2 * v18) & 0x58AA0000)) ^ 0x2C55CE0F | (v19 - 1616281447 - ((2 * v19) & 0x3F530000)) ^ 0x9FA98099;
  v21 = (v20 - 1234150683 - ((2 * v20) & 0x6CE0B5CA)) ^ 0xB6705AE5 | (v17 + 201258445 - ((2 * v17) & 0x19A)) ^ 0xBFEF5CD;
  v22 = *(a5 + 457 * v7 + 435922960 - ((((457 * v7 + 435922960) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740983908 - ((((97 * v7 + 740983908) * v8) >> 32) >> 10) * v9)) ^ 0xF27AEDFE46CDB58ELL) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740983908 - ((((97 * v7 + 740983908) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x7F37FEDE) + 0xD851201C0640091);
  v23 = (((v21 - ((2 * v21) & 0x94852E)) << 8) + 1245878016) ^ 0x4A429700;
  v24 = (v23 + 692346820 - ((2 * v23) & 0x5288BE00)) ^ 0x29445FC4 | (v22 + 719132363 - ((2 * v22) & 0x196)) ^ 0x2ADD16CB;
  v25 = (v24 - ((2 * v24) & 0xAB5123D6) + 1437110763) ^ *(a1 + 4 * (97 * v14 - 1159365319 - ((((97 * v14 - 1159365319) * v8) >> 32) >> 10) * v9));
  HIDWORD(v26) = v25 ^ 0x30A;
  LODWORD(v26) = v25 ^ 0x2CFED800;
  v27 = (v26 >> 11) - ((2 * (v26 >> 11)) & 0xA186B606) + 1354980099;
  HIDWORD(v26) = v27 ^ 0x10C35B03;
  LODWORD(v26) = v27 ^ 0x40000000;
  v28 = (v26 >> 29) - ((2 * (v26 >> 29)) & 0x685FE144) + 875557026;
  HIDWORD(v26) = v28 ^ 0x2FF0A2;
  LODWORD(v26) = v28 ^ 0x34000000;
  *(((4 * v14) | ((v14 < 0x357EF503) << 34)) + *v11 - 0x606985B4FADD856ALL) = (v26 >> 24) + 2035698401 - ((2 * (v26 >> 24)) & 0xF2AC95C2);
  return (*(v10 + 8 * (((16 * ((v7 - 36639956) < 0xE0)) | (32 * ((v7 - 36639956) < 0xE0))) ^ v12)))();
}

uint64_t sub_100225FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (((((2 * v66) ^ 0x2A2) - 131) & (a54 + 208)) + 577093289 - 2 * ((a54 + 208) & 0xAB ^ a54 & 2)) ^ 0x2265BEA9;
  v68 = *(&a65 + (((914 * v67) & 0x5DFFFEFA) + ((457 * v67) ^ 0x6EFFFF7Du) - 1862007613) % 0x708);
  v69 = dword_1003A8020[(1361 * (((2 * (v68 ^ 0x1D)) & 0xBE) + (v68 ^ 0xECFBE542)) + 421172845) % 0x12E0];
  v70 = 2 * ((v69 ^ 0x21D87047) * (v69 ^ 0x21D87047) - ((2 * (v69 ^ 0x21D87047) * (v69 ^ 0x21D87047)) & 0x4DC75CF0)) + 1304911088;
  v71 = ((v70 ^ 0x4DC75CF0) - 2 * ((v70 ^ 0x4DC75CF0) & 0x5B3BA6FC ^ v70 & 4) - 616847623) ^ v69;
  v72 = ((914 * (HIBYTE(v71) ^ 0x29)) & 0x3371E) + ((457 * (HIBYTE(v71) ^ 0x29)) ^ 0x3F3D9B8F) - 1060857687;
  v73 = ((914 * (BYTE2(v71) ^ 0x9C)) & 0x1FFFC) + ((457 * (BYTE2(v71) ^ 0x9C)) ^ 0x7FCCFFFE) - 2143995070;
  v74 = (v72 - 1800 * ((2386093 * v72) >> 32));
  v75 = (((914 * (v71 ^ 0x1D)) & 0x37344) + ((457 * (v71 ^ 0x1D)) ^ 0x3CE7B9A2u) - 1021673058) % 0x708;
  v76 = *(&a65 + v74) ^ 0xC7;
  v77 = *(&a65 + (v73 - 1800 * ((2386093 * v73) >> 32))) ^ 0xC7;
  v78 = (((v76 - ((2 * v76) & 0x10A)) << 16) + 528809984) ^ 0x1F850000;
  v79 = (((v77 - ((2 * v77) & 0x126)) << 8) - 1582787840) ^ 0xA1A89300;
  v80 = (v79 - 1078556849 - ((2 * v79) & 0x7F6D0E00)) ^ 0xBFB6874F | (v78 + 371967258 + (~(2 * v78) | 0xD3A9FFFF) + 1) ^ 0x162BC51A;
  v81 = *(&a65 + (((914 * (BYTE1(v71) ^ 0x97)) & 0x3FF7A) + ((457 * (BYTE1(v71) ^ 0x97)) ^ 0x57D7FFBDu) - 1473627261) % 0x708) ^ 0xC7;
  v82 = (v80 + 843689227 - ((2 * v80) & 0x64935A16)) ^ 0x3249AD0B | (v81 + 2002198896 - ((2 * v81) & 0xE0)) ^ 0x77572170;
  v83 = (((v82 - ((2 * v82) & 0xC2DEFC)) << 8) - 512786944) ^ 0xE16F7E00;
  v84 = (v83 - 1112827062 - ((2 * v83) & 0x7B573600)) ^ 0xBDAB9B4A | ((*(&a65 + v75) ^ 0xC7) - 853109874 - ((2 * (*(&a65 + v75) ^ 0xC7)) & 0x11C)) ^ 0xCD26938E;
  v85 = a56 ^ 0x81EAF2D9 ^ (v84 - 2115308839 - ((2 * v84) & 0x3D5E5B2));
  *(&STACK[0x8C0] + (97 * a54 + 268969680) % 0x55Cu) = v85 + 2035698401 - ((2 * v85) & 0xF2AC95C2);
  return (*(v65 + 8 * ((1338 * (a54 == 1015621679)) ^ v66)))(3182140234, 843689227, v75, 371967258, v74, 226116, (a54 + 1), a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_100226478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unsigned int a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v65 = ((a54 - 20) + 1085721671 - ((2 * (a54 + 236)) & 0x8E)) ^ 0x40B6CC47;
  v66 = *(&a63 + (((914 * v65) & 0x1FB6CE) + ((v65 * ((v63 - 49) ^ 0x98)) ^ 0xB4FFDB67) + 1258563801) % 0x708);
  v67 = ((v66 ^ 0xC7) - ((2 * (v66 ^ 0xC7)) & 0x1E8) + 937649908) ^ dword_1003A8020[(1361 * (((2 * (v66 ^ 0x33333333)) & 0x1D6) + (v66 ^ 0x5DE4FED8u)) - 773557821) % 0x12E0];
  v68 = *(&a63 + (((914 * (HIBYTE(v67) ^ 0x58)) & 0x2FFFA) + ((457 * (HIBYTE(v67) ^ 0x58)) ^ 0x3F777FFD) - 1064649917) % 0x708u) ^ 0xC7;
  v69 = *(&a63 + (((914 * (BYTE2(v67) ^ 0x9A)) & 0x3D5F6) + ((457 * (BYTE2(v67) ^ 0x9A)) ^ 0x27B3EAFBu) - 665956283) % 0x708) ^ 0xC7;
  v70 = *(&a63 + (((914 * (v67 ^ 0x4F)) & 0x1F6D4) + ((457 * (v67 ^ 0x4F)) ^ 0x73FEFB6Au) - 1945944106) % 0x708);
  v71 = (((v68 - ((2 * v68) & 0xDC)) << 16) + 1835925504) ^ 0x6D6E0000;
  v72 = (((v69 - ((2 * v69) & 0x68)) << 8) - 230607872) ^ 0xF2413400;
  v73 = (v72 - 902569623 - ((2 * v72) & 0x1467C200)) ^ 0xCA33E169 | (v71 - 508215064 - ((2 * v71) & 0x436A0000)) ^ 0xE1B540E8;
  v74 = *(&a63 + (((914 * (BYTE1(v67) ^ 0xFB)) & 0x23E5E) + ((457 * (BYTE1(v67) ^ 0xFB)) ^ 0x9EFF1F2F) + 1627593745) % 0x708) ^ 0xC7;
  v75 = (v73 + 1382147198 - ((2 * v73) & 0x24C3C8FC)) ^ 0x5261E47E | (v74 - 2020370958 + (~(2 * v74) | 0xFFFFFE1B) + 1) ^ 0x879395F2;
  v76 = (((v75 - ((2 * v75) & 0x39B7D6)) << 8) + 484174592) ^ 0x1CDBEB00;
  v77 = (v76 - 640336506 - ((2 * v76) & 0xB3AA7A00)) ^ 0xD9D53D86 | ((v70 ^ 0xC7) + 1705372095 - ((2 * (v70 ^ 0xC7)) & 0xFFFFFF7F)) ^ 0x65A5E9BF;
  *(&STACK[0x8C0] + (97 * a54 + 1328906348) % 0x55C) = a58 ^ (v77 - ((2 * v77) & 0xA4C4EA00) - 765299456) ^ 0x73A746D7;
  return (*(v64 + 8 * ((1138 * (a54 == 163412243)) ^ v63)))(3654630790, 2274596338, 1382147198, 3392397673, 666102523, a54, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1002268E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v64 = *(&a63 + (((914 * ((-1334934235 - (((v63 ^ 0xE50) - 1542) & 0xBC260800)) ^ 0xB06E8525)) & 0x136DEC) + ((457 * ((-1334934235 - (((v63 ^ 0xE50) - 1542) & 0xBC260800)) ^ 0xB06E8525)) ^ 0xDCB9B6F6) + 592072010) % 0x708);
  v65 = dword_1003A8020[(1361 * (((2 * (v64 ^ 0xB0)) & 0xFFFFFFF7) + (v64 ^ 0xEED7BE4B)) + 925529345) % 0x12E0];
  v66 = (((914 * (BYTE2(v65) ^ 0xFE)) & 0x3F3FC) + ((457 * (BYTE2(v65) ^ 0xFE)) ^ 0xDEEFF9FE) + 554844482) % 0x708;
  v67 = (((914 * (v65 ^ 0x22)) & 0x3FEE2) + ((457 * (v65 ^ 0x22)) ^ 0xFFEFFF71) + 1194959) % 0x708;
  v68 = BYTE1(v65) ^ 0xF5;
  v69 = *(&a63 + (((914 * (HIBYTE(v65) ^ 0xEA)) & 0x15BE6) + ((457 * (HIBYTE(v65) ^ 0xEA)) ^ 0x7CEEADF3) - 2095870643) % 0x708u) ^ 0xC7;
  v70 = *(&a63 + v66) ^ 0xC7;
  v71 = (((v69 - ((2 * v69) & 0x34)) << 16) - 1273364480) ^ 0xB41A0000;
  v72 = (((v70 - ((2 * v70) & 0x10C)) << 8) + 223118848) ^ 0xD4C8600;
  v73 = (v72 + 1204691273 - ((2 * v72) & 0xF9C4200)) ^ 0x47CE2149 | (v71 + 1261888851 - ((2 * v71) & 0x166C0000)) ^ 0x4B36E553;
  v74 = *(&a63 + (((914 * v68) & 0x3F6FC) + ((457 * v68) ^ 0x7FEBFB7Eu) - 2146025534) % 0x708) ^ 0xC7;
  v75 = (v73 - 1000814992 - ((2 * v73) & 0x8B18CE0)) ^ 0xC458C670 | (v74 - 1584067729 - (a8 & (2 * v74))) ^ 0xA1950B6F;
  v76 = (((v75 - ((2 * v75) & 0x8A43CA)) << 8) + 1159849216) ^ 0x4521E500;
  v77 = *(&a63 + v67) ^ 0xC7;
  v78 = (v76 - 241738547 - ((2 * v76) & 0xE32EB800)) ^ 0xF1975CCD | (v77 + 22514410 - ((2 * v77) & 0x1D4)) ^ 0x1578AEA;
  v79 = (a39 - 1333001451) ^ 0x532A1A36 ^ (v78 + 1395268150 + (~(2 * v78) | 0x59ABCB93) + 1);
  LODWORD(STACK[0x8C0]) = v79 + 2035698401 - ((2 * v79) & 0xF2AC95C2);
  v80 = *(&off_1003E7570 + ((v63 - 432) ^ 0x33));
  return v80(v80, 1159849216, 502628206, 51, 199, 2443359173, 4053228749, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100226DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = (v64 + 53) ^ 0x8BEC6F12 ^ ((a3 - 110) - 1947440202 - ((2 * (a3 + 146)) & 0x16C));
  v70 = (((914 * v69) & 0x2CBF7E) + ((457 * v69) ^ 0x7CD65FBF) - 2094160767) % 0x708;
  v71 = dword_1003A8020[(1361 * (((2 * (*(&a64 + v70) ^ 0xB7)) & 0xFFFFFFEF) + (*(&a64 + v70) ^ 0xF10F5940)) + 1839617041) % 0x12E0];
  HIDWORD(v72) = v71 ^ 0x47AC;
  LODWORD(v72) = v71 ^ 0x1B900000;
  v73 = (v72 >> 16) - ((2 * (v72 >> 16)) & 0xB52F2008) - 627601404;
  v74 = (((8 * v73) ^ 0xD4BC8020) + 746463574 - ((2 * ((8 * v73) ^ 0xD4BC8020)) & 0x58FC42A0)) ^ 0x2C7E2156;
  v75 = (v74 - ((2 * v74 + 3659920) & 0x6BF6EA) - 1022236739) ^ v73;
  v76 = ((HIBYTE(v75) ^ 0xBB) + 1854896746 - ((2 * (HIBYTE(v75) ^ 0xBB) + 640) & 0x4D4) + 320) ^ 0x6E8F7A6A;
  v77 = (((914 * (v75 ^ 0x37)) & 0xBBDE) + ((457 * (v75 ^ 0x37)) ^ 0xFF7E5DEF) + 8641873) % 0x708;
  v78 = (((914 * BYTE1(v75)) & 0x36ECE) + ((457 * BYTE1(v75)) ^ 0x7F67B767u) - 2137357351) % 0x708;
  v79 = *(&a64 + (((914 * (BYTE2(v75) ^ 0xA3)) & 0x37E4A) + ((457 * (BYTE2(v75) ^ 0xA3)) ^ 0xFFE3BF25) + 1997851) % 0x708) ^ 0xC7;
  v80 = *(&a64 + (((914 * v76) & 0xDE5FB33E) + ((457 * v76) ^ 0xEF2FD99F) + 282076769) % 0x708) ^ 0xC7;
  v81 = (((v80 - ((2 * v80) & 0xFA)) << 16) + 1467809792) ^ 0x577D0000;
  v82 = (((v79 - ((2 * v79) & 0x13C)) << 8) - 1385325056) ^ 0xAD6D9E00;
  v83 = (v81 + 601014458 - ((2 * v81) & 0x47A40000)) ^ 0x23D2C0BA | (v82 + 260802195 - ((2 * v82) & 0x1F170C00)) ^ 0xF8B8693;
  v84 = *(&a64 + v78) ^ 0xC7;
  v85 = (v83 - 1477359195 - ((2 * v83) & 0x4FE2934A)) ^ 0xA7F149A5 | (v84 - 1419712620 - ((2 * v84) & 0x128)) ^ 0xAB60E794;
  v86 = (((v85 - ((2 * v85) & 0x647D8)) << 8) + 52685824) ^ 0x323EC00;
  v87 = *(&a64 + v77) ^ 0xC7;
  v88 = (v86 + 599148119 - ((2 * v86) & 0x476C8C00)) ^ 0x23B64657 | (v87 + 1529594637 - ((2 * v87) & 0x1A)) ^ 0x5B2BC30D;
  *(v68 + 4 * (a3 * a8 - 1510295726 - ((((a3 * a8 - 1510295726) * v66) >> 32) >> 10) * v67)) = a57 ^ 0xF7B5CDF7 ^ (v88 - ((2 * v88) & 0x466EC7AA) + 590832597);
  return (*(v65 + 8 * ((203 * (a3 == 502628461)) ^ v64)))();
}

uint64_t sub_10022728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v69 = (((149 * (v63 ^ 0x58D)) ^ 0x807D857B) + (v68 + 32) - 2 * ((v68 + 32) & 0x57 ^ v68 & 0x11)) ^ 0x807D8046;
  v70 = (((914 * v69) & 0x7FFEDD4E) + ((457 * v69) ^ 0x3FFF6EA7) - 1073441383) % 0x708;
  v71 = dword_1003A8020[(1361 * (((2 * (*(&a63 + v70) ^ 0x90)) & 0xFFFFFFF3) + (*(&a63 + v70) ^ 0x5FF7DF6F)) - 884979254) % 0x12E0] ^ 0x1B9047AC;
  v72 = v71 - ((2 * v71 + 1468112052) & 0xB7C76980) + 128221978;
  v73 = ((914 * (HIBYTE(v72) ^ 0x51)) & 0x3FBF6) + ((457 * (HIBYTE(v72) ^ 0x51)) ^ 0xFC3FFDFB) + 63061317;
  v74 = ((914 * (BYTE2(v72) ^ 0x84)) & 0x3FAB6) + ((457 * (BYTE2(v72) ^ 0x84)) ^ 0x4DFDFD5B) - 1308344859;
  v75 = ((914 * (v72 ^ 0x6A)) & 0x16876) + ((457 * (v72 ^ 0x6A)) ^ 0x7DEEB43B);
  v76 = *(&a63 + (((914 * (BYTE1(v72) ^ 0xD8)) & 0x3D75C) + ((457 * (BYTE1(v72) ^ 0xD8)) ^ 0xFDFFEBAE) + 33705874) % 0x708);
  v77 = *(&a63 + v73 % 0x708) ^ 0xC7;
  v78 = *(&a63 + v74 % 0x708) ^ 0xC7;
  v79 = (((v77 - ((2 * v77) & 0x82)) << 16) - 1539244032) ^ 0xA4410000;
  v80 = (((v78 - ((2 * v78) & 0x44444444)) << 8) + 1218388480) ^ 0x489F2200;
  v81 = (v80 - 371246096 - ((2 * v80) & 0x53BE7600)) ^ 0xE9DF3BF0 | (v79 - 543524292 - ((2 * v79) & 0x3F340000)) ^ 0xDF9A7A3C;
  v82 = (v81 + 691306174 - ((2 * v81) & 0x5268FD7C)) ^ 0x29347EBE | ((v76 ^ 0xC7) + 50668537 - ((2 * (v76 ^ 0xC7)) & 0xFFFFFFF3)) ^ 0x30523F9;
  v83 = (((v82 - ((2 * v82) & 0x81A87A)) << 8) + 1087651072) ^ 0x40D43D00;
  v84 = *(&a63 + (v75 - 2112649467) % 0x708u) ^ 0xC7;
  v85 = (v83 + 144440557 - ((2 * v83) & 0x1137F800)) ^ 0x89BFCED | (v84 - 2055046481 - ((2 * v84) & 0x15E)) ^ 0x85827AAF;
  *(a1 + 4 * (v68 * v64 + 1035411488 - ((((v68 * v64 + 1035411488) * v65) >> 32) >> 10) * v66)) = a56 ^ (v85 - ((2 * v85) & 0x3B386CB4) + 496776794) ^ 0x39D4BC4F;
  return (*(v67 + 8 * (((v68 != 1981836511) | (8 * (v68 != 1981836511))) ^ v63)))();
}

uint64_t sub_10022772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v70 = ((v66 - 71) - 1846452012 - ((2 * (v66 + 185)) & 0x1A8)) ^ 0x91F160D4;
  v71 = *(&a63 + (((914 * v70) & 0xEED7FE) + ((457 * v70) ^ 0x4FF76BFF) - 1341351871) % 0x708);
  v72 = ((v71 ^ 0xE9) - ((2 * v71) & 4) + 1191698434) ^ dword_1003A8020[(1361 * ((v71 ^ 0xE27FFE3A) + 2 * (v71 ^ 0xC5)) - 711062313) % 0x12E0];
  v73 = ((914 * (v72 ^ 0x3F)) & 0x17F94) + ((457 * (v72 ^ 0x3F)) ^ 0x7CF4BFCA) - 2096268426;
  v74 = (((914 * (BYTE1(v72) ^ 0x81)) & 0x2FFB2) + ((457 * (BYTE1(v72) ^ 0x81)) ^ 0x6BE77FD9u) - 1810187417) % 0x708;
  v75 = *(&a63 + (((914 * (BYTE2(v72) ^ 0xE)) & 0x27DFE) + ((457 * (BYTE2(v72) ^ 0xE)) ^ 0xE6B73EFF) + 424344641) % 0x708) ^ 0xC7;
  v76 = *(&a63 + (((914 * (HIBYTE(v72) ^ 0xD2)) & 0x2FF66) + ((457 * (HIBYTE(v72) ^ 0xD2)) ^ 0x7EFB7FB3) - 2130265203) % 0x708u) ^ 0xC7;
  v77 = (((v76 - 2 * (v76 & 7)) << 16) - 1509490688) ^ 0xA6070000;
  v78 = (((v75 - ((2 * v75) & 0x140)) << 8) - 1515413504) ^ 0xA5ACA000;
  v79 = (v77 + 1009081864 - ((2 * v77) & 0x784A0000)) ^ 0x3C255E08 | (v78 - 1496547531 - ((2 * v78) & 0x4D98FE00)) ^ 0xA6CC7F35;
  v80 = *(&a63 + v74) ^ 0xC7;
  v81 = (v79 - 1083595034 - ((2 * v79) & 0x7ED34DCC)) ^ 0xBF69A6E6 | (v80 + 728112641 + (~(2 * v80) | 0xFFFFFFFD) + 1) ^ 0x2B661E01;
  v82 = (((v81 - ((2 * v81) & 0x61936)) << 8) - 2096325888) ^ 0x830C9B00;
  v83 = *(&a63 + v73 % 0x708) ^ 0xC7;
  v84 = (v82 - 505949288 - ((2 * v82) & 0xC3AFA600)) ^ 0xE1D7D398 | (v83 - 1538500433 - ((2 * v83) & 0x15E)) ^ 0xA44C58AF;
  *(v68 + 4 * (v66 * v64 + 1757700377 - ((((v66 * v64 + 1757700377) * v65) >> 32) >> 10) * v67)) = a57 ^ (v84 - ((2 * v84) & 0xA1B3458C) + 1356440262) ^ 0x3BF4E598;
  return (*(v69 + 8 * (((2 * (v66 != 158991686)) | (16 * (v66 != 158991686))) ^ v63)))();
}

uint64_t sub_100227B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  v71 = ((((v65 + 28) ^ 0x7C) + v64) + 486875883 - ((2 * (((v65 + 28) ^ 0x67C) + v64)) & 0x1D6)) ^ 0x1D0522EB;
  v72 = (((914 * v71) & 0xFEE52) + ((457 * v71) ^ 0x7F7FF729u) - 2138829545) % 0x708;
  v73 = dword_1003A8020[(1361 * (((2 * (*(&a64 + v72) ^ 0xFFFFFFE1)) & 0x174) + (*(&a64 + v72) ^ 0xFFFFFF5F)) + 3120773) % 0x12E0];
  v74 = *(&a64 + (((914 * (HIBYTE(v73) ^ 0xE8)) & 0xD74E) + ((457 * (HIBYTE(v73) ^ 0xE8)) ^ 0x7CF86BA7) - 2096509031 - 1800 * ((2386093 * (((914 * (HIBYTE(v73) ^ 0xE8)) & 0xD74E) + ((457 * (HIBYTE(v73) ^ 0xE8)) ^ 0x7CF86BA7) - 2096509031)) >> 32))) ^ 0xC7;
  v75 = *(&a64 + (((914 * (BYTE2(v73) ^ 0x9D)) & 0x10FFA) + ((457 * (BYTE2(v73) ^ 0x9D)) ^ 0x6EF487FDu) - 1861373117) % 0x708) ^ 0xC7;
  v76 = *(&a64 + (((914 * (BYTE1(v73) ^ 0x49)) & 0x37A9A) + ((457 * (BYTE1(v73) ^ 0x49)) ^ 0x4EBFBD4Du) - 1321042445) % 0x708);
  v77 = (((v74 - ((2 * v74) & 0x74)) << 16) + 909770752) ^ 0x363A0000;
  v78 = (((v75 - ((2 * v75) & 0x5E)) << 8) - 36360448) ^ 0xFDD52F00;
  v79 = (v78 - 1466908692 - ((2 * v78) & 0x51217E00)) ^ 0xA890BFEC | (v77 - 885930731 - ((2 * v77) & 0x16620000)) ^ 0xCB31C515;
  v80 = (v79 - 1562106167 - ((2 * v79) & 0x45C84D92)) ^ 0xA2E426C9 | ((v76 ^ 0xC7) - 1306432669 - ((2 * (v76 ^ 0xC7)) & 0xC6)) ^ 0xB2216B63;
  v81 = (((v80 - ((2 * v80) & 0x4D4A0E)) << 8) + 648349440) ^ 0x26A50700;
  v82 = *(&a64 + (((914 * (v73 ^ 0x80)) & 0x1F97E) + ((457 * (v73 ^ 0x80)) ^ 0x2BFAFCBFu) - 737722751) % 0x708) ^ 0xC7;
  v83 = (v81 - 2060324896 - ((2 * v81) & 0xA63DE00)) ^ 0x8531EFE0 | (v82 + 1029483897 - ((2 * v82) & 0xF2)) ^ 0x3D5CAD79;
  v84 = (v83 - 244960088 - ((2 * v83) & 0xE2CC6950)) ^ a55;
  v85 = a57 ^ a62 ^ 0xFA1BDEC ^ ((v84 ^ 0xF16634A8) + 1388281112 - 2 * ((v84 ^ 0xF16634A8) & 0x52BF7D1C ^ v84 & 4));
  *(v69 + 4 * (v64 * v66 - 2056437451 - ((((v64 * v66 - 2056437451) * v67) >> 32) >> 10) * v68)) = v85 + 2035698401 - ((2 * v85) & 0xF2AC95C2);
  return (*(v70 + 8 * (((4 * (v64 == 1482375082)) | (32 * (v64 == 1482375082))) ^ v65)))();
}

uint64_t sub_100228014@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v63 = ((v61 + 19) - 369437556 - ((2 * (v61 + 19)) & 0x118)) ^ 0xE9FAD48C;
  v64 = *(&a58 + (((914 * v63) & 0x1FDDBE) + ((457 * v63) ^ 0x788FEEDF) - 2022435487) % 0x708);
  v65 = dword_1003A8020[(1361 * (((2 * (v64 ^ 0x10)) & 0xBE) + (v64 ^ 0xF7F23D4F)) - 785925647) % 0x12E0];
  v66 = *(&a58 + (((914 * (HIBYTE(v65) ^ 0x46)) & 0x1FEDA) + ((457 * (HIBYTE(v65) ^ 0x46)) ^ 0x7F7CFF6D) - 2138752045) % 0x708u) ^ 0xC7;
  v67 = *(&a58 + (((914 * (BYTE2(v65) ^ 0xE6)) & 0xF5DE) + ((457 * (BYTE2(v65) ^ 0xE6)) ^ 0x9767AEFu) - 158613423) % 0x708) ^ 0xC7;
  v68 = (((v66 - ((2 * v66) & 0x2E)) << 16) + 1830223872) ^ 0x6D170000;
  v69 = (((v67 - 2 * (v67 & 3)) << 8) - 1392573696) ^ 0xACFF0300;
  v70 = (v68 - 219949756 - ((2 * v68) & 0x65C60000)) ^ 0xF2E3D544 | (v69 - 2006144124 - ((2 * v69) & 0x10D95600)) ^ 0x886CAB84;
  v71 = *(&a58 + (((914 * (BYTE1(v65) ^ 0x36)) & 0x3BF5E) + ((457 * (BYTE1(v65) ^ 0x36)) ^ 0x7F7DDFAFu) - 2138809455) % 0x708) ^ 0xC7;
  v72 = (v70 - 1328334930 - ((2 * v70) & 0x61A66F5C)) ^ 0xB0D337AE | (v71 + 1884266762 - ((2 * v71) & 0x14)) ^ 0x704FA10A;
  v73 = *(&a58 + (((914 * (v65 ^ 0x18)) & 0x3AA9E) + ((457 * (v65 ^ 0x18)) ^ 0x2B35D54Fu) - 724802063) % 0x708);
  v74 = (((v72 - ((2 * v72) & 0x72A51E)) << 8) + 961711872) ^ 0x39528F00;
  v75 = (v74 - 1101133558 - ((2 * v74) & 0x7CBC1200)) ^ 0xBE5E090A | ((v73 ^ 0xC7) + 939030535 - 2 * ((v73 ^ 0xC7) & 7)) ^ 0x37F87807;
  *(v60 + 4 * ((37 * (a1 ^ 0x7DB) - 976) * v61 - 918959309 - (((((37 * (a1 ^ 0x7DBu) - 976) * v61 - 918959309) * v58) >> 32) >> 10) * v59)) = a50 ^ a53 ^ a51 ^ 0x93F4FD3D ^ (v75 - ((2 * v75) & 0x1B3C4F2C) - 1919015018);
  return (*(v62 + 8 * ((59 * (v61 == 585088236)) ^ a1)))();
}

uint64_t sub_100228480@<X0>(int a1@<W3>, unsigned int a2@<W4>, int a3@<W5>, uint64_t a4@<X6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v61 = a5 - 1554;
  v62 = (-1864419168 - ((1967664640 << (((a5 + 31) & 0xFB) - 26)) & 0x140)) ^ 0x90DF38A0;
  v63 = *(&a61 + (((914 * v62) & 0x3B77FA) + ((457 * v62) ^ 0xCCBDBBFD) + 860244035) % 0x708);
  v64 = dword_1003A8020[(1361 * (((2 * (v63 ^ 0xFFFFFFF1)) & 0x136) + (v63 ^ 0xA5FACE2E)) - 1781586617) % 0x12E0] ^ 0x1B9047AC;
  v65 = v64 - ((2 * v64 + 670994672) & 0x375CD15A) + 1873654053;
  v66 = BYTE1(v65) ^ 0xCF;
  v67 = ((914 * (v65 ^ 0xFE)) & 0x3EDDC) + ((457 * (v65 ^ 0xFE)) ^ 0xF7CFF6EE) + 137512018;
  v68 = ((914 * (BYTE2(v65) ^ 0x36)) & 0x7FBC) + ((457 * (BYTE2(v65) ^ 0x36)) ^ 0xE64E3FDE) + 431225698;
  v69 = *(&a61 + (((914 * (HIBYTE(v65) ^ 0x62)) & 0x1B47E) + ((457 * (HIBYTE(v65) ^ 0x62)) ^ 0x634EDA3F) - 1665965823) % 0x708u) ^ 0xC7;
  v70 = *(&a61 + v68 % 0x708) ^ 0xC7;
  v71 = (((v69 - ((2 * v69) & 0x15E)) << 16) + 1722744832) ^ 0x66AF0000;
  v72 = (((v70 - ((2 * v70) & 0x160)) << 8) - 1198608384) ^ 0xB88EB000;
  v73 = (v72 + 210600222 - ((2 * v72) & 0x191B0200)) ^ 0xC8D811E | (v71 - 636471800 - ((2 * v71) & 0x34200000)) ^ 0xDA103608;
  v74 = *(&a61 + (((914 * v66) & 0x3B5FA) + ((457 * v66) ^ 0xE7BFDAFD) + 407003203) % 0x708) ^ 0xC7;
  v75 = (v73 + 74096655 - ((2 * v73) & 0x8D5401E)) ^ 0x46AA00F | (v74 + 251360803 - ((2 * v74) & 0x46)) ^ 0xEFB7623;
  v76 = (((v75 - ((2 * v75) & 0x4D822)) << 8) - 2106846976) ^ 0x826C1100;
  v77 = *(&a61 + v67 % 0x708) ^ 0xC7;
  v78 = (v76 - 1127305676 - ((2 * v76) & 0x799D5C00)) ^ 0xBCCEAE34 | (v77 - 1930838165 - ((2 * v77) & 0xD6)) ^ 0x8CE9BF6B;
  v79 = (v78 + 895759398 - ((2 * v78) & 0x6AC8684C)) ^ (a37 - 2012251275);
  *(a4 + 4 * (1967664516 * a1 - 1884897028 - ((((1967664516 * a1 - 1884897028) * a2) >> 32) >> 10) * a3)) = (v79 ^ 0x35643426) + 2035698401 - 2 * ((v79 ^ 0x35643426) & 0x79564AF9 ^ v79 & 0x18);
  return (*(&off_1003E7570 + v61))(199, 2188120320);
}

uint64_t sub_10022894C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, char a63)
{
  v66 = ((v63 + 123) + 262710174 - (((v63 + 123) << (a4 - 53)) & 0x13C)) ^ 0xFA8A39E;
  v67 = (((914 * v66) & 0x378B7E) + ((457 * v66) ^ 0xFD9BC5BF) + 40386177) % 0x708;
  v68 = dword_1003A8020[(1361 * (((2 * ~*(&a63 + v67)) & 0x3A) + (*(&a63 + v67) ^ 0xAEF77FE0)) - 833405351) % 0x12E0];
  v69 = ((914 * (BYTE1(v68) ^ 0xC2)) & 0x13FD8) + ((457 * (BYTE1(v68) ^ 0xC2)) ^ 0x7FFC9FEC) - 2147116204;
  v70 = *(&a63 + (((914 * (HIBYTE(v68) ^ 0x64)) & 0x17CEE) + ((457 * (HIBYTE(v68) ^ 0x64)) ^ 0x7B9EBE77) - 2073854775) % 0x708u) ^ 0xC7;
  v71 = *(&a63 + (((914 * (BYTE2(v68) ^ 0xBF)) & 0x2B7E6) + ((457 * (BYTE2(v68) ^ 0xBF)) ^ 0x3B6F5BF3u) - 997007539) % 0x708) ^ 0xC7;
  v72 = (((v70 - ((2 * v70) & 0x152)) << 16) - 945225728) ^ 0xC7A90000;
  v73 = (((v71 - ((2 * v71) & 0x1A6)) << 8) - 447556864) ^ 0xE552D300;
  v74 = (v73 - 2097880377 - ((2 * v73) & 0x5E9C400)) ^ 0x82F4E2C7 | (v72 - 1286264290 - ((2 * v72) & 0x66AA0000)) ^ 0xB3552A1E;
  v75 = *(&a63 + (v69 - 1800 * ((2386093 * v69) >> 32))) ^ 0xC7;
  v76 = (v74 - 1301269609 - ((2 * v74) & 0x64E0672E)) ^ 0xB2703397 | (v75 + 680047886 - ((2 * v75) & 0x1C)) ^ 0x2888B50E;
  v77 = (((v76 - ((2 * v76) & 0x8589C2)) << 8) + 1120198912) ^ 0x42C4E100;
  v78 = *(&a63 + (((914 * (v68 ^ 0x48)) & 0x3FFDE) + ((457 * (v68 ^ 0x48)) ^ 0xFBFDFFEF) + 67386193) % 0x708) ^ 0xC7;
  v79 = (v77 - 901931022 - ((2 * v77) & 0x947B3E00)) ^ 0xCA3D9FF2 | (v78 + 1859163666 - ((2 * v78) & 0x24)) ^ 0x6ED09612;
  *(v64 + 4 * (v63 * a5 - 215913317 - ((((v63 * a5 - 215913317) * a6) >> 32) >> 10) * a7)) = a60 ^ (v79 - ((2 * v79) & 0x950A154) - 2069344086) ^ 0xDDAE6171;
  return (*(v65 + 8 * ((1020 * (v63 == 1906180740)) ^ a4)))();
}

uint64_t sub_100228D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v64 = ((((v63 - 9) & 0xFB ^ 0xA7) - 84) + 279137752 - ((2 * (((v63 + 1403572215) & 0xAC572EFB ^ 0x6A7) + 1203264428)) & 0x1B0)) ^ 0x10A34DD8;
  v65 = *(&a63 + (((914 * v64) & 0x1AE674) + ((457 * v64) ^ 0x7F7D733A) - 2138664698) % 0x708);
  v66 = dword_1003A8020[(1361 * (((2 * (v65 ^ 0x82)) & 0xFFFFFFDF) + (v65 ^ 0xEA66FF7D)) - 759711105) % 0x12E0];
  v67 = *(&a63 + (((914 * (HIBYTE(v66) ^ 0x7F)) & 0x37D9E) + ((457 * (HIBYTE(v66) ^ 0x7F)) ^ 0xBFDDBECF) + 1076132977) % 0x708) ^ 0xC7;
  v68 = *(&a63 + (((914 * (BYTE2(v66) ^ 0xF0)) & 0x3EFF6) + ((457 * (BYTE2(v66) ^ 0xF0)) ^ 0xBE7DF7FB) + 1099187013) % 0x708) ^ 0xC7;
  v69 = (((v67 - ((2 * v67) & 0xFA)) << 16) + 880607232) ^ 0x347D0000;
  v70 = (((v68 - ((2 * v68) & 0x18A)) << 8) - 707279616) ^ 0xD5D7C500;
  v71 = (2 * v70) & 0xCB60E00;
  v72 = (v70 + 1180370929 - v71) ^ 0x465B07F1 | (v69 + 888096312 - ((2 * v69) & 0x69DE0000)) ^ 0x34EF4638;
  v73 = *(&a63 + (((914 * (BYTE1(v66) ^ 0x2A)) & 0x3DFAE) + ((457 * (BYTE1(v66) ^ 0x2A)) ^ 0x7AEFEFD7u) - 2062398615) % 0x708) ^ 0xC7;
  v74 = (v72 + 800752543 - ((2 * v72) & 0x5F75073E)) ^ 0x2FBA839F | (v73 + 68356215 - ((2 * v73) & 0xEEEEEEEE)) ^ 0x4130877;
  v75 = (((v74 - ((2 * v74) & 0x4CE114)) << 8) - 1502574080) ^ 0xA6708A00;
  v76 = *(&a63 + (((914 * (v66 ^ 0xB6)) & 0x3E156) + ((457 * (v66 ^ 0xB6)) ^ 0x7DDFF0ABu) - 2111681899) % 0x708) ^ 0xC7;
  v77 = (v75 - 487905109 - ((2 * v75) & 0xC5D65000)) ^ 0xE2EB28AB | (v76 + 423361456 - ((2 * v76) & 0x160)) ^ 0x193BFBB0;
  v78 = (a40 - 2104043946) ^ 0xFA8BBC39 ^ (v77 - 91505607 - ((2 * v77) & 0xF5177872));
  *(a6 + 4 * ((1203264428 * a5 - 752532524) % 0x55Cu)) = v78 + 2035698401 - ((2 * v78) & 0xF2AC95C2);
  return (*(&off_1003E7570 + v63 - 1629))(1203264429, 3807062187, 1917725363, 199, a5, a6, v71, 1180370929, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100229244(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = ((a3 + 77) + 1683733352 - ((2 * (a3 + 77)) & 0xD0)) ^ 0x645BBB68;
  v68 = (((914 * v67) & 0x31FB9E) + ((457 * v67) ^ 0xBFF8FDCF) + 1074464369) % 0x708;
  v69 = dword_1003A8020[(1361 * (((2 * (*(&a64 + v68) ^ 0x18)) & 0xF6) + (*(&a64 + v68) ^ 0xDDFFFFE3)) - 1038736566) % 0x12E0];
  HIDWORD(v70) = v69 ^ 0x39047AC;
  LODWORD(v70) = v69 ^ 0x18000000;
  v71 = (v70 >> 27) - ((2 * (v70 >> 27)) & 0x44EFDC32) - 1569198567;
  v72 = (~(((2 * v71) ^ 0x44EFDC32) - 2 * (((2 * v71) ^ 0x44EFDC32) & 0x6C ^ (2 * v71) & 4) + 232) & 0x80) + (((v70 >> 27) - ((2 * (v70 >> 27)) & 0x32) + 25) ^ 0x1E7);
  v73 = *(&a64 + (((914 * (HIBYTE(v71) ^ 0xC5)) & 0x2BD7E) + ((457 * (HIBYTE(v71) ^ 0xC5)) ^ 0xFDDF5EBF) + 35839105) % 0x708) ^ 0xC7;
  v74 = *(&a64 + (((914 * (BYTE2(v71) ^ 0x88)) & 0x1FB7E) + ((457 * (BYTE2(v71) ^ 0x88)) ^ 0x7174FDBFu) - 1903346303) % 0x708) ^ 0xC7;
  v75 = (((v73 - ((2 * v73) & 0xDA)) << 16) + 1584201728) ^ 0x5E6D0000;
  v76 = (((v74 - ((2 * v74) & 0x18)) << 8) + 477694976) ^ 0x1C790C00;
  v77 = (v76 + 1572196498 - ((2 * v76) & 0x3B6BA000)) ^ 0x5DB5D092 | (v75 - 1953349611 + (~(2 * v75) | 0xE8DBFFFF) + 1) ^ 0x8B924015;
  v78 = *(&a64 + (((914 * (BYTE1(v71) ^ 0x18)) & 0x3F2DA) + ((457 * (BYTE1(v71) ^ 0x18)) ^ 0x33FBF96Du) - 872005165) % 0x708) ^ 0xC7;
  v79 = (v77 - 986915013 - ((2 * v77) & 0xA59BE76)) ^ 0xC52CDF3B | (v78 - 245285611 - ((2 * v78) & 0x2A)) ^ 0xF1613D15;
  v80 = (((v79 + (~(2 * v79) | 0xBE4543)) << 8) + 551378688) ^ 0x20DD5E00;
  v81 = *(&a64 + (457 * (((2 * v72) & 0x3EE) + (v72 ^ 0xFFF7EDF7)) + 241709585) % 0x708) ^ 0xC7;
  v82 = (v80 + 1831347573 - ((2 * v80) & 0xDA504A00)) ^ 0x6D282575 | (v81 + 129426067 - ((2 * v81) & 0x126)) ^ 0x7B6E293;
  *(v65 + 4 * (a3 * a6 - 1335766483 - ((((a3 * a6 - 1335766483) * v64) >> 32) >> 10) * a8)) = a60 ^ 0x7314DF3F ^ (v82 - ((2 * v82) & 0x7859FDCA) + 1009581797);
  return (*(v66 + 8 * (((4 * (a3 != 1917725618)) | (8 * (a3 != 1917725618))) ^ a5)))();
}

uint64_t sub_1002296DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(&a64 + (((914 * ((((v64 ^ 0x8FF) & 0x48DBFC00) + 1210498490) ^ 0x4826BDBA)) & 0x1F749E) + ((457 * ((((v64 ^ 0x8FF) & 0x48DBFC00) + 1210498490) ^ 0x4826BDBA)) ^ 0x5FDFBA4Fu) - 1608234511) % 0x708);
  v70 = (dword_1003A8020[(1361 * ((v69 ^ 0x6F7B9DA8) + 2 * (v69 ^ 0x57u)) + 1344672785) % 0x12E0] ^ 0x1B9047AC) - (((v69 ^ 0xC7) - ((2 * (v69 ^ 0xC7)) & 0x1D4) - 1644502038) ^ 0x87630DB6);
  v71 = v70 - ((2 * v70) & 0xF3727FD0) + 2042183656;
  v72 = v71 ^ 9;
  v73 = *(&a64 + (((914 * (BYTE2(v71) ^ 0xB8)) & 0x175F2) + ((457 * (BYTE2(v71) ^ 0xB8)) ^ 0xF57EBAF9) + 176390215) % 0x708) ^ 0xC7;
  v74 = ((914 * (BYTE1(v71) ^ 0x37)) & 0x3B5BE) + ((457 * (BYTE1(v71) ^ 0x37)) ^ 0x3B9FDADF) - 1000185759;
  v75 = *(&a64 + (((914 * (HIBYTE(v71) ^ 0x39)) & 0x3F7FA) + ((457 * (HIBYTE(v71) ^ 0x39)) ^ 0x7FF7FBFD) - 2146812093) % 0x708u) ^ 0xC7;
  v76 = (((v75 - ((2 * v75) & 0x22222222)) << 16) - 2062483456) ^ 0x85110000;
  v77 = (((v73 - ((2 * v73) & 0xD4)) << 8) - 1887802880) ^ 0x8F7A6A00;
  v78 = (v76 - 827212365 - ((2 * v76) & 0x1D620000)) ^ 0xCEB1BDB3 | (v77 - 986890963 - ((2 * v77) & 0xA5A7A00)) ^ 0xC52D3D2D;
  v79 = *(&a64 + v74 % 0x708) ^ 0xC7;
  v80 = (v78 + 1527791766 - ((2 * v78) & 0x3620812C)) ^ 0x5B104096 | (v79 - 1425965655 - ((2 * v79) & 0x152)) ^ 0xAB017DA9;
  v81 = (((v80 - ((2 * v80) & 0x574B40)) << 8) - 1415208960) ^ 0xABA5A000;
  v82 = *(&a64 + (((914 * v72) & 0x1FF7E) + ((457 * v72) ^ 0x63FEFFBFu) - 1677509759) % 0x708) ^ 0xC7;
  v83 = (v81 - 593410609 - ((2 * v81) & 0xB9428A00)) ^ 0xDCA145CF | (v82 - 1491076416 - ((2 * v82) & 0x180)) ^ 0xA71FFAC0;
  v84 = (a41 - 652075609) ^ 0x46FB8F12 ^ (v83 + 1190891282 - ((2 * v83) & 0x8DF71E24));
  *(v68 + 4 * (1222376353 * v65 + 1688578047 - ((((1222376353 * v65 + 1688578047) * v66) >> 32) >> 10) * v67)) = v84 + 2035698401 - ((2 * v84) & 0xF2AC95C2);
  return (*(&off_1003E7570 + v64 - 698))(914, 2407164416);
}

uint64_t sub_100229BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v70 = (((a5 + 252) & (v64 - 216)) - 330049676 - ((2 * (a5 + 252)) & 0xE8)) ^ 0xEC53D774;
  v71 = *(&a63 + (((914 * v70) & 0x7F2FD6) + ((457 * v70) ^ 0xEEFF97EB) + 285502549) % 0x708) ^ 0x56;
  v72 = dword_1003A8020[(1361 * (((2 * v71) & 0x1B6) + (v71 ^ 0xF7EFF7DB)) - 577127832) % 0x12E0];
  v73 = HIBYTE(v72) ^ 0xB1;
  v74 = BYTE1(v72) ^ 0xFA;
  v75 = a5 * v65 - 774541536;
  v76 = (457 * v74) ^ 0x79CF57ED;
  v77 = v72 ^ 0x67;
  v78 = 914 * v77;
  v79 = (457 * v77) ^ 0x7FFBEFDF;
  v80 = v75 - (((v75 * v63) >> 32) >> 10) * v66;
  v81 = (v80 ^ 0x6DBFDECF) - 547033226 + ((2 * v80) & 0xD9E);
  v82 = BYTE2(v72) ^ 0x40;
  v83 = 914 * v74;
  if (v75 >= 0xFFFFFAA4)
  {
    v84 = a5 * v65 + 519717569;
  }

  else
  {
    v84 = v81;
  }

  v85 = ((v78 & 0x3DFBEu) + v79 - 2147071135) % 0x708;
  v86 = *(&a63 + (((914 * v73) & 0x29FBE) + 452068 + ((457 * v73) ^ 0xFFFB4FDF) + 1405) % 0x708) ^ 0xC7;
  v87 = *(&a63 + (((914 * v82) & 0x377FC) + ((457 * v82) ^ 0x7CE7BBFEu) - 2095415486) % 0x708) ^ 0xC7;
  v88 = (((v86 - ((2 * v86) & 0x62)) << 16) - 1238302720) ^ 0xB6310000;
  v89 = (((v87 - ((2 * v87) & 0x1E8)) << 8) + 1367536640) ^ 0x5182F400;
  v90 = (v89 + 836024797 + (~(2 * v89) | 0x9C568DFF) + 1) ^ 0x31D4B9DD | (v88 + 1287491661 - ((2 * v88) & 0x197A0000)) ^ 0x4CBD904D;
  v91 = *(&a63 + ((v83 & 0x2AFDAu) + v76 - 2043485357) % 0x708) ^ 0xC7;
  v92 = (v90 + 1879758998 - ((2 * v90) & 0x6015B12C)) ^ 0x700AD896 | (v91 + 1757029683 - ((2 * v91) & 0x66666666)) ^ 0x68BA2533;
  v93 = (((v92 - ((2 * v92) & 0xDF76F8)) << 8) + 1874557952) ^ 0x6FBB7C00;
  v94 = (v93 - 461369883 - ((2 * v93) & 0xC9001A00)) ^ 0xE4800DE5 | ((*(&a63 + v85) ^ 0xC7) - 2105621602 - ((2 * (*(&a63 + v85) ^ 0xC7)) & 0x13C)) ^ 0x827EC39E;
  *(v67 + 4 * (v84 - 1294257733)) = v69 ^ 0xC2CD007F ^ (v94 - ((2 * v94) & 0x55309C76) + 714624571);
  return (*(v68 + 8 * ((1544 * (a5 == 849267459)) | v64)))();
}

uint64_t sub_10022A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  v70 = ((v65 ^ 0xAB0CAF79) + (v64 - 82) - 2 * ((v64 + 174) & 0xCD ^ v64 & 1)) ^ 0xAB0CACCC;
  v71 = *(&a64 + (((914 * v70) & 0x2AE67FFE) + ((457 * v70) ^ 0x15733FFF) - 359611327) % 0x708);
  v72 = 1361 * (((2 * (v71 ^ 0xD2)) & 0xFFFFFFEF) + (v71 ^ 0x7FEF772D)) - 669248469;
  v73 = ((2 * (v71 ^ 0xFFFFFF9F)) & 0x1DA) + (v71 ^ 0xF4FF1C62);
  v74 = (v73 - ((2 * v73 + 2024943916) & 0x42A05E3E) - 1607530571) ^ dword_1003A8020[v72 % 0x12E0];
  v75 = BYTE1(v74) ^ 0xA1;
  v76 = BYTE2(v74) ^ 0xBC;
  v77 = HIBYTE(v74) ^ 0x67;
  v78 = v74 ^ 0xAB;
  v79 = (457 * v78) ^ 0xFDDD7DE7;
  v80 = 914 * v78;
  v81 = *(&a64 + (((914 * v77) & 0x3FEF6) + ((457 * v77) ^ 0xFF7FFF7B) + 8534981) % 0x708) ^ 0xC7;
  v82 = *(&a64 + (((914 * v76) & 0x1FCFE) + ((457 * v76) ^ 0xFBFEFE7F) + 67321025) % 0x708) ^ 0xC7;
  v83 = (((v81 - ((2 * v81) & 0x100)) << 16) + 1769996288) ^ 0x69800000;
  v84 = (((v82 - 2 * (v82 & 1)) << 8) - 1447821056) ^ 0xA9B40100;
  v85 = (v84 + 480818578 - ((2 * v84) & 0x39516A00)) ^ 0x1CA8B592 | (v83 + 1158443771 - ((2 * v83) & 0xA180000)) ^ 0x450C72FB;
  v86 = *(&a64 + (((914 * v75) & 0x36ED6) + ((457 * v75) ^ 0x7FFFB76Bu) - 2147318827) % 0x708) ^ 0xC7;
  v87 = (v85 - 435618023 - ((2 * v85) & 0x4C11FE32)) ^ 0xE608FF19 | (v86 - 916797042 - ((2 * v86) & 0x11C)) ^ 0xC95AC98E;
  v88 = (((v87 - ((2 * v87) & 0xC03AFE)) << 8) + 1612545792) ^ 0x601D7F00;
  v89 = *(&a64 + ((v80 & 0x2FBCE) + v79 + 35962201) % 0x708) ^ 0xC7;
  v90 = (v88 - 65373863 - ((2 * v88) & 0xF834F200)) ^ 0xFC1A7959 | (v89 + 250761288 - ((2 * v89) & 0x90)) ^ 0xEF25048;
  v91 = a62 ^ 0x8E5955A5 ^ (v90 - 1906747995 - ((2 * v90) & 0x1CB2AB4A));
  v92 = a59 ^ 0xF17D5531 ^ (v91 - 243444431 - ((2 * v91) & 0xE2FAAA62));
  v93 = a57 ^ 0xFFC6BE59 ^ (v92 - 3752359 - ((2 * v92) & 0xFF8D7CB2));
  *(a1 + 4 * (v64 * v66 + 689700078 - ((((v64 * v66 + 689700078) * v67) >> 32) >> 10) * v68)) = v93 + 2035698401 - ((2 * v93) & 0xF2AC95C2);
  return (*(v69 + 8 * ((1922 * (v64 == 125723985)) ^ v65)))();
}

uint64_t sub_10022A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, int a61, uint64_t a62, uint64_t a63)
{
  v71 = (((v64 - 1102) ^ 0xD4AAC819) + (a8 + 34) - ((2 * (a8 + 34)) & 0x182)) ^ 0xD4AAC9C1;
  v72 = *(&a64 + (((914 * v71) & 0x377EFE) + ((457 * v71) ^ 0x7FFBBF7F) - 2146941759) % 0x708);
  v73 = (((v72 ^ 0xC7) - ((2 * (v72 ^ 0xC7)) & 0x22222222) + 509180689) ^ 0xF14FCAA2) + (dword_1003A8020[(1361 * (((2 * (v72 ^ 0x34)) & 0xEEEEEEEE) + (v72 ^ 0x7EE6DFC3)) + 1456747934) % 0x12E0] ^ 0x1B9047AC);
  v74 = v73 - ((2 * v73) & 0x1677705C) + 188463150;
  v75 = BYTE1(v74) ^ 0xE2;
  v76 = (((914 * (v74 ^ 0x76)) & 0x3FEEE) + ((457 * (v74 ^ 0x76)) ^ 0x2FF3FF77u) - 804373559) % 0x708;
  v77 = *(&a64 + (((914 * (HIBYTE(v74) ^ 0x70)) & 0x2D2E8) + 315852 + ((457 * (HIBYTE(v74) ^ 0x70)) ^ 0xFFFD6974)) % 0x708) ^ 0xC7;
  v78 = *(&a64 + (((914 * (BYTE2(v74) ^ 0x2A)) & 0x39D42) + ((457 * (BYTE2(v74) ^ 0x2A)) ^ 0xFD7FCEA1) + 42101919) % 0x708) ^ 0xC7;
  v79 = (((v77 - ((2 * v77) & 0x74)) << 16) - 197525504) ^ 0xF43A0000;
  v80 = (((v78 - ((2 * v78) & 0x1C8)) << 8) - 267000832) ^ 0xF015E400;
  v81 = (v80 + 1858570059 - ((2 * v80) & 0x5D8F0E00)) ^ 0x6EC7874B | (v79 + 574979189 - ((2 * v79) & 0x448A0000)) ^ 0x22457C75;
  v82 = *(&a64 + (((914 * v75) & 0x3FBDE) + ((457 * v75) ^ 0xFB25FDEF) + 81542481) % 0x708) ^ 0xC7;
  v83 = (v81 - 666424919 - ((2 * v81) & 0x308E5352)) ^ 0xD84729A9 | (v82 + 552650649 - ((2 * v82) & 0x33333333)) ^ 0x20F0C799;
  v84 = (((v83 + 12922152 - ((2 * v83) & 0x8A5A18)) << 8) - 7168) ^ 0xC52D0C00;
  v85 = *(&a64 + v76) ^ 0xC7;
  v86 = (v84 - 1880573803 - ((2 * v84) & 0x1FD17000)) ^ 0x8FE8B895 | (v85 - 344656534 - ((2 * v85) & 0xD4)) ^ 0xEB74F56A;
  *(v68 + 4 * (a8 * v65 + 1159128546 - ((((a8 * v65 + 1159128546) * v66) >> 32) >> 10) * v67)) = a60 ^ a61 ^ v70 ^ 0x3655B53F ^ (v86 - ((2 * v86) & 0x907DD6F4) - 935400582);
  return (*(v69 + 8 * ((3694 * (a8 == 1316390877)) ^ v64)))();
}

uint64_t sub_10022A9B8@<X0>(int a1@<W8>)
{
  v4 = v1 - ((((173 * (a1 ^ 0x1D1)) ^ 0x6C802127) + 2 * v1) & 0x52E93F4A) - 541805762;
  *(*v3 + 4 * ((v4 ^ 0x3F7AA5DF9691647BLL) + ((2 * (v4 ^ 0x29749FA5)) & 0x17FCBF7BCLL)) - 0x5E541D332479A0D6) = *(&STACK[0x8C0] + (97 * v1 + 239358277) % 0x55Cu);
  v5 = ((((2 * v4) ^ 0x52E93F4A) + 569727692 - 2 * (((2 * v4) ^ 0x52E93F4A) & 0x21F55ADC ^ (2 * v4) & 0x10)) & 0xFFFFEF9A ^ 0x21F54A88) + (v4 ^ 0xD68B6868);
  return (*(v2 + 8 * ((61 * (((2 * v5) & 0xDFFFFFF6) + (v5 ^ 0xEFFFFFFB) + 268435461 < 0x100)) ^ a1)))();
}

uint64_t sub_10022AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v46 = ((LOBYTE(STACK[0x368]) ^ 0xC7) + 348642728 - ((2 * (LOBYTE(STACK[0x368]) ^ 0xC7)) & 0x150)) ^ 0x14C7DDA8 | ((((v43 ^ 0x3EC) - 1785) & (a41 + 486789105)) - ((2 * (a41 + 486789105)) & 0xCB68F600) - 441156754) ^ 0xE5B47B6E;
  *(v45 + 4 * (1964498624 * v41 - 1577805504 - ((((1964498624 * v41 - 1577805504) * v42) >> 32) >> 10) * v44)) = v46 + 2035698401 - ((2 * v46) & 0xF2AC95C2);
  return (*(&off_1003E7570 + v43))(1020536667);
}

uint64_t sub_10022ADBC@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v60 = *(&a58 + (((914 * (((((11 * (a3 ^ 0x816)) ^ 0xD) & 0x6E05DC00) + 1733954552) ^ 0x675A0BF8)) & 0x27B934) + ((457 * (((((11 * (a3 ^ 0x816)) ^ 0xD) & 0x6E05DC00) + 1733954552) ^ 0x675A0BF8)) ^ 0x7FD3DC9Au) - 2144327770) % 0x708);
  v61 = byte_100394570[(2212 * (((2 * (v60 ^ 0x30)) & 0x6A) + (v60 ^ 0x35577F8Fu)) + 402184716) % 0x97F];
  HIDWORD(v62) = v61 ^ 0xA;
  LODWORD(v62) = v61 << 24;
  v63 = ((v62 >> 31) - ((2 * (v62 >> 31)) & 0x1A) + 13);
  v64 = ((v62 >> 31) - ((2 * (v62 >> 31)) & 0x1A) + 13) ^ (v63 >> 6) ^ (v63 >> 4) ^ 0xD;
  v65 = v64 + 1774187529 - ((2 * v64) & 0x12);
  *(a2 + 4 * (1845877601 * v58 + 1338499135 - ((((1845877601 * v58 + 1338499135) * v59) >> 32) >> 10) * a1)) = ((v65 ^ 0x69BFF409 | a37 & 0xFFFFFF00 ^ 0xBD468100) - 2 * ((v65 ^ 0x69BFF409 | a37 & 0xFFFFFF00 ^ 0xBD468100) & 0x11DA42EF ^ v65 & 4) - 1847966997) ^ 0xE88C08BF;
  return (*(&off_1003E7570 + a3 - 1051))();
}

uint64_t sub_10022B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  *(&a63 + (457 * v63 - 420213922) % 0x708u) = *(&a63 + (457 * ((((*(&a63 + (457 * v63 - 420213922) % 0x708u) ^ 0xC7) << ((v64 - 12) & 0xDF ^ 0xC7)) & 0x1EE) + (*(&a63 + (457 * v63 - 420213922) % 0x708u) ^ 0x7FFFEA30u)) - 2144317095) % 0x708);
  v66 = *(v65 + 8 * ((1636 * (v63 == 799765457)) ^ v64));
  *(&a63 + (457 * v63 - 420093274) % 0x708u) = *(&a63 + (457 * (((2 * (*(&a63 + (457 * v63 - 420093274) % 0x708u) ^ 0xFFFFFFC7)) & 0xD4) + (*(&a63 + (457 * v63 - 420093274) % 0x708u) ^ 0x76FBF7AD)) - 1741320442) % 0x708);
  return v66();
}

uint64_t sub_10022B158(uint64_t a1)
{
  v7 = v1 * v2;
  *(a1 + v7 + 451201752 - ((((v7 + 451201752) * v3) >> 32) >> 10) * v4) = *(a1 + 107 * (v5 ^ 0x1C5) + v7 + 451439071 - ((((107 * (v5 ^ 0x1C5u) + v7 + 451439071) * v3) >> 32) >> 10) * v4);
  return (*(v6 + 8 * ((21 * (v1 != 2029019687)) ^ v5)))();
}

uint64_t sub_10022B1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = ((LOBYTE(STACK[0x368]) ^ 0xC7) + 9509727 - ((((v64 + 328) | 0x550) - 1819) & (2 * (LOBYTE(STACK[0x368]) ^ 0xC7)))) ^ 0x911B5F | (((-1453286790 - a42) & 0xFFFFFF00) - ((2 * (-1453286790 - a42)) & 0xB4BF1200) + 1516210580) ^ 0x5A5F8994;
  LODWORD(STACK[0x8C0]) = v66 + 2035698401 - ((2 * v66) & 0xF2AC95C2);
  return (*(v65 + 8 * v64))(155722606, 2443359173, 1800, &a64, 199, 3764098302, 3205573259, 1372);
}

uint64_t sub_10022B314()
{
  HIDWORD(v5) = v2 + 76737837;
  LODWORD(v5) = v2 - 57479891;
  v6 = v0 + (v5 >> 27) - ((v1 + 1032726845) & (2 * (v5 >> 27))) + 11;
  HIDWORD(v5) = v6 ^ 0xB;
  LODWORD(v5) = v6 ^ v0;
  v7 = ((2 * (v5 >> 5)) & 0xF7DD6FA2) + ((v5 >> 5) ^ 0xFBEEB7D1);
  *(((4 * (v7 + 1426029568)) | (((v7 + 1426029568) < 0x50EE33D1) << 34)) + *v4 - 0x606985B5689A80A2) = *(&STACK[0x8C0] + (97 * v2 - 1280612007) % 0x55Cu);
  return (*(v3 + 8 * ((60 * ((v7 + 68241148) < 0x100)) ^ v1)))();
}

uint64_t sub_10022B420@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  v41 = ((LOBYTE(STACK[0x360]) ^ 0xC7) + 2019400535 - ((2 * (LOBYTE(STACK[0x360]) ^ 0xC7)) & 0xAE)) ^ 0x785D9B57;
  *(v38 + 4 * (155 * ((v39 + 1297531111) ^ 0x4D56C8C3) + 1297532864 * a1 - 1306636689 - ((((155 * ((v39 + 1297531111) ^ 0x4D56C8C3u) + 1297532864 * a1 - 1306636689) * v36) >> 32) >> 10) * v37)) = (v41 | (v39 + 787445031) ^ a36 & 0xFFFFFF00) + 2035698401 - 2 * ((v41 | (v39 + 787445031) ^ a36 & 0xFFFFFF00) & 0x79564AFD ^ v41 & 0x1C);
  return (*(v40 + 8 * ((v39 + 1297531111) ^ 0x4D56CE91 ^ (7 * (((1754 - v39) | (v39 - 1754)) >> 31)))))();
}

uint64_t sub_10022B5D0@<X0>(unsigned int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  *a3 = 604931837;
  v58 = (v57 + 775907119);
  v59 = *a55 - 0x606985B424E1B15ELL;
  v60 = (((2 * (v57 - 204)) ^ 0x668) + 80264946 + v57 - ((2 * (v57 + 26619) + 10) & 0x1E4)) ^ 0x4C8C618;
  v61 = byte_100394570[(((4424 * v60) & 0x7F2620) + ((2212 * v60) ^ 0xFEFF9312) + 20216006) % 0x97F];
  v62 = 97 * (((2 * (v61 ^ 4)) & 0x118) + (v61 ^ 0xFFFFDE8A)) + 859808;
  *(v56 + 4 * (v62 - (((v62 * a1) >> 32) >> 10) * v55)) = *(v59 + 4 * (v58 - 775909167 + ((v58 < 0x2E3F6F2F) << 32)));
  v64 = (v57 - 444014465) < 0xE588E87E || (v57 - 444014465) >= 0xE588E97E;
  return (*(&off_1003E7570 + (v64 | (8 * v64) | (v57 - 204))))((2 * (v57 + 775907323) + 10), 3664182271, 736829019, 915454, 630814125, v58, v59, 3850955134, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_10022B7A8@<X0>(int a1@<W1>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W4>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, void *a59)
{
  v67 = (v64 + (a58 + 109 + ((v61 - 97) & 0x7F)) - (v66 & (2 * (a58 - 1134106771 + ((v61 + 975249311) & 0xC5DEDE7F))))) ^ v64;
  v68 = ((v67 * v63) & a3) + ((v67 * v65) ^ a1) + a4;
  *(*a59 + 4 * ((a58 - 1134105369) - 736829019 + ((a58 - 1134105369 < a2) << 32)) - 0x606985B424E1B15ELL) = *(v60 + 4 * (v68 - (((v68 * a5) >> 32) >> 10) * v59));
  v69 = a58 - 1134106771 + v62;
  v71 = v69 > 0x9F500E5E && a58 + 801889771 > v69;
  return (*(&off_1003E7570 + ((56 * v71) ^ (v61 - 1890))))();
}

void sub_10022B90C()
{
  v0 = __chkstk_darwin();
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10022BBA8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X4>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X7>, int a6@<W8>)
{
  STACK[0x530] = v8;
  STACK[0x538] = v7;
  STACK[0x540] = a5;
  STACK[0x550] = a4;
  STACK[0x558] = a3;
  STACK[0x548] = a2;
  return (*(a1 + 8 * ((((a6 ^ 0x6CE) + 111 + 375 * (a6 ^ 0x6CE) - 831) * (v6 < -442462546)) | a6)))();
}

uint64_t sub_10022BC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 - 240;
  v5 = ((((v3 - 1575297777) & 0x5DE527F6) + 1040136073) ^ *STACK[0x548]) + ((((v3 + 197053446) & 0xF441391F) + 2080274150) & (2 * *STACK[0x548])) - 292560905;
  LODWORD(STACK[0x974]) = v5;
  if (STACK[0x570])
  {
    v6 = v5 == 747577204;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a3 + 8 * ((1020 * v7) ^ v4)))(4294925273);
}

uint64_t sub_10022BD50@<X0>(int a1@<W8>)
{
  v2 = (a1 - 1026);
  v3 = (((2 * &STACK[0x918]) & 0xDF3DB7FFFDF5DFF0) - 0x6F9EDBFFFEFAEFF8 + (&STACK[0x918] ^ 0x6F9EDBFFFEFAEE8ALL ^ v2)) % 0x25;
  STACK[0x598] = (2 * v3) & 0x66;
  STACK[0x590] = (v3 ^ 0xBFBFFEF7F8247EB3) + 0x4040010807DB815DLL;
  v4 = *(v1 + 8 * ((((v2 ^ 0x41C) != 1390) * ((v2 + 1698) ^ 0x8E5)) ^ v2));
  STACK[0x5B8] = STACK[0x708];
  return v4();
}

uint64_t sub_10022BE88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5A8]) = a4;
  STACK[0x15B0] = 0x603EF318F93643C7;
  LODWORD(STACK[0x918]) = dword_100403714 - 761298293;
  v7 = dword_100403710;
  v8 = 218380439 * (((~(v6 - 192) | 0x6EC531D30D2F593CLL) + ((v6 - 192) | 0x913ACE2CF2D0A6C3)) ^ 0x8F44F4BFCAF523A3);
  v9 = v4 - 1028863077 - v8;
  *(v6 - 172) = v9;
  *(v6 - 168) = v9 + 59;
  STACK[0x5A0] = v7;
  *(v6 - 192) = v7 + v8;
  *(v6 - 160) = 706191307 - v8;
  *(v6 - 184) = v8;
  *(v6 - 180) = ((v4 - 1028863077) ^ 0xC) + v8;
  *(v6 - 176) = (v4 - 1723653669) ^ v8;
  v10 = (*(v5 + 8 * (v4 ^ 0x60)))(v6 - 192);
  return (*(&off_1003E7570 + *(v6 - 152)))(v10);
}

uint64_t sub_10022BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x5B8] = (*(a5 + 8 * (v6 ^ 0x6D)))(STACK[0x590] + STACK[0x598], 0x100004077774924);
  v8 = (*(&off_1003E7570 + v6 + 63))();
  v9 = v8 + 415340507 - (((v6 - 87) ^ 0x3183280B) & (2 * v8));
  LODWORD(xmmword_100403718) = v9;
  *(v5 + 4) = 1032555855 - ((2 * (((1812433253 * (v9 ^ 0x18C197DB ^ (v9 >> 30))) ^ (((v6 + 1471422395) & 0xA84BDF75) - 617217208)) + (((v9 ^ 0x18C197DB ^ (v9 >> 30)) * v7) & 0xB66C151A) + 1773295264) + 909065640) & 0x31832FB6) + ((1812433253 * (v9 ^ 0x18C197DB ^ (v9 >> 30))) ^ (((v6 + 1471422395) & 0xA84BDF75) - 617217208)) + (((v9 ^ 0x18C197DB ^ (v9 >> 30)) * v7) & 0xB66C151A);
  return (*(&off_1003E7570 + ((v6 - 87) ^ 0xFBF)))();
}

uint64_t sub_10022C130(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x530] = v10;
  STACK[0x538] = v9;
  STACK[0x540] = a8;
  STACK[0x550] = a7;
  STACK[0x558] = a6;
  STACK[0x548] = a5;
  return (*(a3 + 8 * (((v8 >= ((a4 - 1180) ^ 0x433) + 1965753038) * (((a4 - 652774244) & 0x26E887EF) - 444)) ^ (a4 - 1180))))();
}

uint64_t sub_10022C1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *STACK[0x570];
  LODWORD(STACK[0x724]) = (*STACK[0x558] ^ 0x6EF5F1EF) + ((2 * *STACK[0x558]) & 0xDDEBE3DE) + (v3 ^ 0xB92FAA47);
  LODWORD(STACK[0x98C]) = *STACK[0x550] - ((2 * *STACK[0x550]) & 0xB1F5DD50) - 654643544;
  STACK[0xA10] = v4;
  STACK[0x5D8] = &STACK[0xB70];
  STACK[0x660] = &STACK[0xB70];
  STACK[0x640] = &STACK[0xBB0];
  STACK[0x808] = &STACK[0xBE0];
  STACK[0x9E8] = 368;
  LODWORD(STACK[0x75C]) = -57530249;
  LODWORD(STACK[0x8DC]) = 913386534;
  LODWORD(STACK[0x89C]) = 402993540;
  return (*(a3 + 8 * ((840 * (*v4 == 517 * (v3 ^ 0x5BC) + 1714767632)) ^ v3)))(4294924395);
}

uint64_t sub_10022C31C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x9B0] = a2;
  STACK[0x5F8] = &STACK[0x75C];
  STACK[0x998] = &STACK[0xB70];
  STACK[0xA90] = &STACK[0x8DC];
  STACK[0x880] = v2;
  LODWORD(STACK[0x9D4]) = 1056833031;
  STACK[0x850] = &STACK[0x89C];
  return sub_1002A3470(a1, a2);
}

uint64_t sub_10022C3D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int *a5@<X7>, int a6@<W8>)
{
  v7 = a6 - 288;
  v8 = *a5;
  v9 = *v12 - (((v7 + 1605) ^ 0xE5CCF7D6) & (2 * *v12)) - 219775007;
  v10 = 275407499 * ((v6 - 192) ^ 0xF820B6B23B34AFEELL);
  *(v6 - 152) = v10 + v7 - 295;
  *(v6 - 136) = v9 ^ v10;
  *(v6 - 168) = v10 + v8 - ((2 * v8) & 0x2F6B74FA) + 397785725;
  *(v6 - 160) = a4;
  *(v6 - 192) = a3;
  *(v6 - 176) = v13;
  *(v6 - 144) = (0x11F3F2CC7A52B43DLL * (((2 * a2) & 0xBF7FFDFFFFEFEDDCLL) + (a2 ^ 0xDFBFFEFFFFF7F6EELL)) - 0x3A58BB2C3D7919C3) ^ v10;
  (*(a1 + 8 * (v7 + 1740)))(v6 - 192);
  result = 0;
  *(v14 + 64) = 0;
  return result;
}

uint64_t sub_100233F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x518]) = v8;
  STACK[0x15A0] = 0xB465AFE62D6D1F39;
  LODWORD(STACK[0x7E4]) = dword_100403714 - 761298293;
  v11 = dword_100403710;
  v12 = STACK[0x508];
  *(v10 - 192) = STACK[0x508] + v9;
  *(v10 - 160) = v11 - v12;
  *(v10 - 172) = v7 - 2096791685 - v12;
  *(v10 - 168) = ((v7 - 2096791685) ^ 0x57) - v12;
  *(v10 - 184) = v12;
  *(v10 - 180) = v12 + v7 - 2096791685 + 83;
  *(v10 - 176) = (v7 - 1723653669) ^ v12;
  v13 = (*(a7 + 8 * (v7 | 0x60)))(v10 - 192);
  return (*(&off_1003E7570 + *(v10 - 152)))(v13);
}

uint64_t sub_100233FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x468] = v6;
  STACK[0x5A0] = (*(a6 + 8 * SLODWORD(STACK[0x454])))(STACK[0x458] + STACK[0x460], 0x100004077774924);
  v10 = (*(&off_1003E7570 + v9 + 63))();
  v11 = v10 + v8 - (((v9 - 1425) ^ 0x31832D35) & (2 * v10));
  *v7 = v11;
  v7[1] = -910059043 - ((2 * (((1812433253 * (v11 ^ v8 ^ (v11 >> 30))) ^ (((v9 - 1414) | 1) + 1325398896)) + ((-670100790 * (v11 ^ v8 ^ (v11 >> 30))) & 0x9DFFFBFE) + 316372662) + 1011422872) & 0x31832FB6) + ((1812433253 * (v11 ^ v8 ^ (v11 >> 30))) ^ (((v9 - 1414) | 1) + 1325398896)) + ((-670100790 * (v11 ^ v8 ^ (v11 >> 30))) & 0x9DFFFBFE);
  return (*(&off_1003E7570 + ((v9 - 1425) ^ 0x25)))(1812433253);
}

uint64_t sub_100234130(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6, uint64_t a7, unsigned int a8)
{
  v13 = (v9 ^ v12) >> (a6 + v8 + ((v10 + 29) & 0xAF) + 13);
  LOBYTE(v13) = (v13 - ((2 * v13) & 0x88) + (((a4 + v10 - 47) | 0xE) ^ 0x32) + 88) ^ 0x16;
  v14 = (a3 + (v11 + a4));
  *v14 = v13;
  LODWORD(v14) = ((*(qword_100404430 + (dword_100404638 & a8)) ^ v14) & 0x7FFFFFFF) * a5;
  v15 = (v14 ^ (v14 >> 16)) * a5;
  v16 = (byte_1003ACFE0[(v15 >> 24) + 3] ^ byte_1003AEAD0[v15 >> 24] ^ byte_1003A5980[(v15 >> 24) + 1] ^ v15 ^ (-35 * BYTE3(v15))) != v13;
  return (*(a7 + 8 * ((50 * (((v11 - v16 - v10) | (v10 - (v11 - v16))) >> 31)) ^ (a4 + v10 + 986))))();
}

uint64_t sub_10023508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x9E8] = STACK[0x440];
  STACK[0x870] = v7;
  STACK[0xA60] = STACK[0x5A0];
  v9 = (*(a7 + 8 * (v8 + 394)))(a3);
  STACK[0xA48] = 0;
  return sub_100277C88(v9, v10, v11, v12, v13, v14, &off_1003E7570);
}

uint64_t sub_1002350E0()
{
  LODWORD(STACK[0x5B8]) = v0 - 446;
  v1 = (*(&off_1003E7570 + v0 + 454))(1028);
  STACK[0xAC8] = v1;
  return (*(&off_1003E7570 + (((v1 == 0) * (((v0 - 1653) | 0x106) ^ 0x11F)) ^ v0)))();
}

uint64_t sub_10023513C(uint64_t a1)
{
  v2 = (((LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x520]) ^ 0x2042E63) - ((2 * (LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x520]) ^ 0x2042E63) + 8108036) & 0x19D8D8E4) - 47560588) ^ 0x8CEC6C72) + LODWORD(STACK[0x530]);
  LOBYTE(v2) = (v2 - ((2 * v2) & 0x44) - 94) & 0xFE ^ 0x65;
  v3 = ((v1 ^ 0xD2) + 15) * v2 - ((2 * ((v1 ^ 0xD2) + 15) * v2) & 0x34) - 102;
  v4 = LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x400]) ^ (((v3 ^ LODWORD(STACK[0x5C0])) ^ 0xD6DEC4BC) - ((2 * ((v3 ^ LODWORD(STACK[0x5C0])) ^ 0xD6DEC4BC)) & 0x841888D0) + 1644971624) ^ dword_100395400[(v3 ^ LODWORD(STACK[0x5C0])) ^ 0xDD];
  v5 = LODWORD(STACK[0x40C]) ^ 0x5426FC3C ^ ((v4 ^ 0x504FBEC8) + 1411841084 - 2 * ((v4 ^ 0x504FBEC8) & 0x5426FC3F ^ v4 & 3));
  *(a1 + 4 * (v3 ^ 0x9Au)) = (v5 - ((2 * v5) & 0x7B348466) + 1033519667) ^ 0x8504E71D;
  return (*(&off_1003E7570 + v1))();
}

uint64_t sub_1002352FC()
{
  v1 = STACK[0xAC0];
  STACK[0x5C0] = STACK[0xAC0];
  v2 = v1[11];
  LODWORD(STACK[0x5B8]) = v0 - 1897100797;
  HIDWORD(v3) = byte_1003ADCA0[(v0 + 3 + v2 + ~(2 * ((v2 + 8) & 0x13 ^ v2 & 2)) - 77) ^ 0x1BLL];
  LODWORD(v3) = (HIDWORD(v3) ^ 0x88888888) << 24;
  v4 = v1[14] - ((2 * v1[14] + 114) & 0x66);
  v5 = ((((byte_10038ED40[(v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0x4CLL] ^ (v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0xD) - ((2 * (byte_10038ED40[(v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0x4CLL] ^ (v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0xD)) & 0xC2)) << 16) + 2036400128) ^ 0x79610000;
  v6 = (v5 - ((2 * v5) & 0x73E20000) + 972101778) ^ 0x39F11892 | ((((v3 >> 25) ^ 0x75) + ((2 * (v3 >> 25)) & 0xEA) - 117) - ((2 * (((v3 >> 25) ^ 0x75) + ((2 * (v3 >> 25)) & 0xEA) - 117)) & 0x7A) - 747267011) ^ 0xD3759C3D;
  v7 = v6 - ((2 * v6) & 0x751D27DC);
  v8 = byte_10038EE40[(v4 - 20) ^ 0xC7] - 19;
  v9 = ((19 - v4) & v8) - ((2 * ((19 - v4) & v8)) & 0x26);
  v10 = ((((2 * v9 + 38) ^ 0x26) - ((2 * ((2 * v9 + 38) ^ 0x26)) & 0xFFFFFFA4) - 45) ^ 0xFFFFFFD3) + ((((19 - v4) ^ v8) - ((2 * ((19 - v4) ^ v8)) & 0xFFFFFF98) - 52) ^ 0xFFFFFFCC);
  v11 = ((((v10 - ((2 * v10) & 0x28) - 108) + 864306 - ((2 * (v10 - ((2 * v10) & 0x28) - 108)) & 0x78)) << 8) + 657920) ^ 0xD3A3C00;
  LOBYTE(v8) = v1[13] + ((66 - 2 * v1[13]) | 0xB5) - 60;
  LOBYTE(v9) = ((2 * v8) & 0x5C ^ 0xC) + (v8 ^ 0xA9);
  LOBYTE(v8) = v9 + (v8 ^ 0xD8) - ((2 * (v9 + (v8 ^ 0xD8)) - 90) & 0xF4) - 51;
  v12 = byte_10038ED40[(v9 - 46)] ^ 0xF9 ^ ((v8 ^ 0x3A) + v9 - 46 - ((2 * ((v8 ^ 0x3A) + v9 - 46)) & 4) - 126);
  v13 = (((v12 - ((2 * v12) & 0x56)) << 16) + 2116747264) ^ 0x7E2B0000;
  v14 = (v13 - ((2 * v13) & 0x63C00000) - 236942940) ^ 0xF1E089A4 | (v11 - ((2 * v11) & 0x60A71C00) + 1884524233) ^ 0x70538EC9;
  v15 = v14 - ((2 * v14) & 0x6B3E7F6);
  v16 = byte_10038ED40[((((v1[5] + 90) & 4 ^ 0x4F) + 2 * ((v1[5] + 90) & 4) + 27) ^ (v1[5] + 90 - ((2 * v1[5] + 12) & 0x28)) & 0xFB) ^ 0xB5] ^ (((v1[5] + 90) & 4 ^ 0x4F) + 2 * ((v1[5] + 90) & 4) + 27) ^ (v1[5] + 90 - ((2 * v1[5] + 12) & 0x28)) & 0xFFFFFFFB ^ 0x50;
  v17 = (((v16 - ((2 * v16) & 0x130)) << 16) + 2123890688) ^ 0x7E980000;
  v18 = byte_1003A7810[(((v1[4] - ((2 * v1[4] + 86) & 0xE4) + 37) ^ 5) - 8)];
  v19 = (((v18 >> 3) ^ (v18 >> 2) | v18 & 0x40) ^ 0x5A) - 2 * ((((v18 >> 3) ^ (v18 >> 2) | v18 & 0x40) ^ 0x5A) & 0x2F ^ ((v18 >> 3) ^ (v18 >> 2)) & 5) + 42;
  v20 = ((((v18 & 0xFFFFFFBF ^ 0x39 ^ v19) - ((2 * (v18 & 0xFFFFFFBF ^ 0x39 ^ v19)) & 0xF0)) << 24) + 2013265920) ^ 0x78000000;
  v21 = (v20 - ((2 * v20) & 0xEC000000) + 1982219686) ^ 0x762645A6 | (v17 - ((2 * v17) & 0x276E0000) - 1816721609) ^ 0x93B70737;
  v22 = v21 - ((2 * v21) & 0xC15FAE7A) - 525347011;
  HIDWORD(v3) = byte_1003ADCA0[(v1[7] + ((6 - 2 * v1[7]) | 0x65) + 74) ^ 0xAALL];
  LODWORD(v3) = (HIDWORD(v3) ^ 0x88888888) << 24;
  v23 = (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115) - ((2 * (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115)) & 0x14E) + 1406476967;
  v24 = ((v22 & 0x4B9F0000 | v23 & 0xD) ^ 0x408F0005) - ((2 * ((v22 & 0x4B9F0000 | v23 & 0xD) ^ 0x408F0005)) & 0x85280018);
  v25 = (v22 & 0xB4600000 | (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115 - ((2 * (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115)) & 0x4E) - 89) & 0xF2) ^ 0xA02000A2;
  v26 = byte_10038EE40[(v1[10] - ((2 * v1[10] - 102) & 0x90) + 21) ^ 0x6CLL] + ((v1[10] - ((2 * v1[10] - 102) & 0xFFFFFF90) + 21) ^ 0x54) - 19;
  v27 = (v26 - ((2 * v26) & 0x18) + 12) ^ 0x55;
  v28 = (((v27 - ((2 * v27) & 0xFA)) << 8) - 560300800) ^ 0xDE9A7D00;
  v29 = (v28 - ((2 * v28) & 0x3275AE00) - 650455211) ^ 0xD93AD755 | (v7 - 91319314) ^ 0xFA8E93EE;
  v30 = (v24 - 422273956) ^ 0xE6D49C5C | (v25 - ((2 * v25) & 0x608001A4) + 852980446) ^ 0x32D772DE;
  v31 = v30 - ((2 * v30) & 0x83302F9C);
  v32 = byte_10038ED40[(v1[1] + ~(2 * ((v1[1] + 90) & 0x51 ^ v1[1] & 1)) + 43) ^ 0x3FLL];
  v33 = (((v32 ^ 0xFFFFFFFB) + 75) ^ 0xFFFFFFCD) + ((2 * ((v32 ^ 0xFFFFFFFB) + 75)) & 0xFFFFFF9A) + ((((2 * v32) ^ 0xFFFFFFF6) - ((2 * ((2 * v32) ^ 0xFFFFFFF6)) & 0x1C) - 113) & 0xFFFFFF96 ^ 0x79) + 52;
  v34 = (v1[1] + ~(2 * ((v1[1] + 90) & 0x51 ^ v1[1] & 1)) + 43) ^ 0x90 ^ (v33 - ((2 * v33) & 0x5E) - 81);
  v35 = ((((~(2 * v34) | 0xFE4F) + v34) << 16) + 869859328) ^ 0x33D80000;
  v36 = v1;
  v37 = byte_1003A7810[(*v36 - ((2 * *v36 + 126) & 0xB6) - 102) ^ 0xF9];
  v38 = ((((v37 ^ (v37 >> 3) ^ (v37 >> 2) ^ 0xFB) - ((2 * (v37 ^ (v37 >> 3) ^ (v37 >> 2) ^ 0xFB)) & 0x33333333)) << 24) - 1728053248) ^ 0x99000000;
  HIDWORD(v3) = byte_1003ADCA0[(v36[3] - ((2 * v36[3] + 32) & 0x74) + 74) ^ 0xBFLL];
  LODWORD(v3) = (HIDWORD(v3) ^ 0x88888888) << 24;
  v39 = (v35 - ((2 * v35) & 0x9960000) + 617302380) ^ 0x24CB496C | ((((v3 >> 25) ^ 0xFE) + ((2 * (v3 >> 25)) & 0xFC) + 2) - ((2 * (((v3 >> 25) ^ 0xFE) + ((2 * (v3 >> 25)) & 0xFC) + 2)) & 0x8A) + 364111429) ^ 0x15B3E645;
  v40 = (v39 - ((2 * v39) & 0x2CCC6D42) - 1771686239) ^ 0x966636A1 | (v38 - ((2 * v38) & 0xCA000000) - 443428732) ^ 0xE591D084;
  v41 = v40 - ((2 * v40) & 0xC4B4531A);
  v42 = byte_10038EE40[(v36[2] + ((20 - 2 * v36[2]) | 0x31) - 35) ^ 0x62] + ((v36[2] + ((20 - 2 * v36[2]) | 0x31) - 35) ^ 0x5A) - 19;
  v43 = (((((v42 - ((2 * v42) & 0x12) + 9) ^ 0xCF) - ((2 * ((v42 - ((2 * v42) & 0x12) + 9) ^ 0xCF)) & 0x42) + 3884075) << 8) - 2560) ^ 0x3B442100;
  v44 = v43 - ((2 * v43) & 0x5EEDCA00);
  v45 = byte_1003A7810[(v1[12] - ((2 * v1[12] + 6) & 0x92) + 76) ^ 0xF8];
  if (v19 == 42)
  {
    v46 = 33;
  }

  else
  {
    v46 = v45 ^ 0xFFFFFF91;
  }

  if (v1[12])
  {
    v48 = (v46 & (v45 ^ 0x4F)) - ((2 * (v46 & (v45 ^ 0x4F))) & 8) - 124;
  }

  else
  {
    v48 = -124;
  }

  v47 = (v46 & (v45 ^ 0x4F)) - ((2 * (v46 & (v45 ^ 0x4F))) & 8) - 124;
  v49 = (v45 & 0xFFFFFFDE ^ 0xFFFFFFCA ^ v48 | v47 ^ 0xFFFFFF84) + (~(2 * (v45 & 0xFFFFFFDE ^ 0xFFFFFFCA ^ v48 | v47 ^ 0xFFFFFF84)) | 0xFFFFFFC9) + 28;
  HIDWORD(v50) = v49 ^ 0x1B;
  LODWORD(v50) = v49 << 24;
  v51 = (v50 >> 29) - 2 * ((v50 >> 29) & 0x3F);
  v52 = (v41 - 497407603) ^ 0xE25A298D | (v44 + 796321171) ^ 0x2F76E593;
  v53 = (v49 >> 3) ^ (v49 >> 2) ^ (-99 - 32 * v51) ^ (((v51 - 65) & 0xF8) >> 3) ^ 0xF7;
  v54 = (((v53 - ((2 * v53) & 0xFFFFFFBF)) << 24) - 553648128) ^ 0xDF000000;
  v55 = v1[6] - ((2 * v1[6] - 62) & 0xFFFFFFF8) + 93;
  v56 = (v1[6] - ((2 * v1[6] - 62) & 0xF8) + 93) ^ 0x54;
  v57 = v1[8];
  STACK[0x590] = v1;
  v58 = (v54 - ((2 * v54) & 0x32000000) + 429188349) ^ 0x1994E4FD | (v15 + 56226811) ^ 0x359F3FB;
  v59 = byte_10038EE40[v56] + (v55 ^ 0x6C) - 19;
  v60 = (v59 - ((2 * v59) & 0x82) + 65) ^ 0xC2;
  v61 = (((v60 - ((2 * v60) & 0x5C)) << 8) + 1963732480) ^ 0x750C2E00;
  v62 = (v31 - 1046997042) ^ 0xC19817CE | (v61 - ((2 * v61) & 0x2E9E4200) + 1464803633) ^ 0x574F2131;
  v63 = byte_1003A7810[(v57 - ((2 * v57 + 46) & 0xE8) + 11) ^ 0x5CLL];
  v64 = (((v63 ^ (v63 >> 3) ^ (v63 >> 2) ^ 0x93) - ((2 * (v63 ^ (v63 >> 3) ^ (v63 >> 2))) & 0x58)) << 24) - 1409286144;
  v65 = ((v64 ^ 0xAC000000) - ((2 * v64) & 0x87FFFFFF) - 1009392207) ^ 0xC3D5E5B1 | (v29 - ((2 * v29) & 0x889DEAE4) - 1001458318) ^ 0xC44EF572;
  HIDWORD(v50) = byte_1003ADCA0[(v1[15] - ((2 * v1[15] - 88) & 0xBC) - 78) ^ 0xE6];
  LODWORD(v50) = (HIDWORD(v50) ^ 0x88888888) << 24;
  v66 = (v58 - ((2 * v58) & 0x245EA630) - 1842392296) ^ 0x922F5318 | ((((v50 >> 25) ^ 0x3E) + ((2 * (v50 >> 25)) & 0x7C) - 62) - ((2 * (((v50 >> 25) ^ 0x3E) + ((2 * (v50 >> 25)) & 0x7C) - 62)) & 0x122) - 108077167) ^ 0xF98EDF91;
  v67 = (v66 - ((2 * v66) & 0x2B6A03A6) - 1783299629) ^ LODWORD(STACK[0x4B0]);
  v68 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5B0]) ^ (v62 - ((2 * v62) & 0x834A3B18) - 1046143604);
  v69 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5B0]) ^ (v52 - ((2 * v52) & 0x68AC01A6) - 1269432109);
  v70 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5B0]) ^ (v65 - ((2 * v65) & 0xA00A40E0) - 804970384);
  v71 = LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x588]) ^ STACK[0x5B0] & 0x7FFFFFFF ^ ((STACK[0x5B0] & 0x80000000) + (v67 ^ 0x760ACE55) - 2 * ((v67 ^ 0x760ACE55) & 0x7827C849 ^ v67 & 8) - 131610559);
  v72 = STACK[0xAF0];
  v73 = STACK[0xAB0];
  v74 = STACK[0xB00];
  v75 = STACK[0xAE8];
  v76 = *(STACK[0xAB0] + 4 * (((v68 ^ 0x9D72D091) >> 16) ^ 0x73u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v70) ^ 0xBu)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v69) ^ 0xBF)) ^ *(STACK[0xAE8] + 4 * (v71 ^ 0x8Cu));
  v77 = *(STACK[0xAE8] + 4 * (v68 ^ 0x1Bu)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v70) ^ 0xBB)) ^ *(STACK[0xAF0] + 4 * (((v69 ^ 0xBD3F) >> 8) ^ 0x6Cu)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v71) ^ 0x4Eu));
  v78 = *(STACK[0xAF0] + 4 * (BYTE1(v71) ^ 0xCCu)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v68) ^ 0x88)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v70) ^ 0x4Cu)) ^ *(STACK[0xAE8] + 4 * (v69 ^ 0x6Eu));
  v79 = *(STACK[0xAB0] + 4 * (((v69 ^ 0x50F2BD3F) >> 16) ^ 0xA9u)) ^ *(STACK[0xAF0] + 4 * (((v68 ^ 0xD091) >> 8) ^ 0xF1u)) ^ *(STACK[0xAE8] + 4 * (v70 ^ 0x19u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v71) ^ 0xC1));
  v80 = *(STACK[0xAF0] + 4 * (BYTE1(v79) ^ 0x7Du)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v78) ^ 0x27)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v77) ^ 0xCAu)) ^ *(STACK[0xAE8] + 4 * (v76 ^ 0x65u));
  v81 = *(STACK[0xB00] + 4 * (HIBYTE(v76) ^ 0xF4)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v78) ^ 0xFEu)) ^ *(STACK[0xAE8] + 4 * (v79 ^ 0x16u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v77) ^ 0xC8u));
  v82 = *(STACK[0xAB0] + 4 * (BYTE2(v76) ^ 0xF9u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v79) ^ 0xFB)) ^ 0x6874FA60;
  v83 = *(STACK[0xAF0] + 4 * (BYTE1(v78) ^ 0x47u)) ^ 0x4DA4EA9A;
  v84 = 2 * ((v82 & v83) - ((2 * (v82 & v83)) & 0x4AF6D762)) + 1257690978;
  v85 = v77 ^ 0x7A;
  v86 = *(STACK[0xAE8] + 4 * (v78 ^ 0x70u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v77) ^ 0x3B)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v79) ^ 0xC6u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v76) ^ 0xBAu));
  v87 = ((v82 + v83) ^ 0x2FFF09FC) + ((2 * (v82 + v83)) & 0x5FFE13F8) - 805243387 + (((v84 ^ 0x4AF6D762) - 2 * ((v84 ^ 0x4AF6D762) & 0x6B0D339A ^ v84 & 0x10) + 1796027274) ^ 0x94F2CC75);
  v88 = (v87 - ((2 * v87) & 0x14D636CC) - 1972692122) ^ *(STACK[0xAE8] + 4 * v85);
  v89 = *(STACK[0xB00] + 4 * (HIBYTE(v81) ^ 0x5D)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v80) ^ 0xB0u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v86) ^ 0xDu)) ^ *(STACK[0xAE8] + 4 * (v88 ^ 0xA0u));
  v90 = *(STACK[0xAF0] + 4 * (BYTE1(v88) ^ 0xE2u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v80) ^ 0x35)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v86) ^ 0x35u)) ^ *(STACK[0xAE8] + 4 * (v81 ^ 0x50u));
  v91 = *(STACK[0xAF0] + 4 * (BYTE1(v81) ^ 0x82u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v86) ^ 0x41)) ^ *(STACK[0xAE8] + 4 * (v80 ^ 0x50u)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v88) ^ 7u));
  v92 = *(STACK[0xAB0] + 4 * (BYTE2(v81) ^ 1u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v80) ^ 0x5Cu)) ^ *(STACK[0xAE8] + 4 * (v86 ^ 0x5Au)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v88) ^ 0x5A));
  v93 = BYTE1(v89) ^ 0x99;
  v94 = (((v92 & 0x92265A3 ^ 0x8202001) + (v92 ^ 0xB70ADDB6) - ((2 * ((v92 & 0x92265A3 ^ 0x8202001) + (v92 ^ 0xB70ADDB6))) & 0x96705E7E) + 1261973311) ^ 0x4B382F3F) & (((v92 & 0x92265A3 ^ 0xFEFDBA5D) - ((2 * (v92 & 0x92265A3 ^ 0xFEFDBA5D)) & 0x34166F50) + 436942760) ^ 0x1A0B37A8);
  v95 = v94 - ((2 * v94) & 0xC3FBC1DE) + 1644028143;
  v96 = v89 ^ 0x53;
  v97 = *(STACK[0xAF0] + 4 * (BYTE1(v91) ^ 0xC8u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v89) ^ 0x70)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v90) ^ 0xA1u)) ^ *(STACK[0xAE8] + 4 * ((v94 - ((2 * v94) & 0xDE) - 17) ^ 0xEFu));
  v98 = *(STACK[0xB00] + 4 * (HIBYTE(v91) ^ 4)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v95) ^ 0xFDu));
  LODWORD(STACK[0x5B0]) = v98;
  v99 = *(v74 + 4 * (HIBYTE(v95) ^ 0x61)) ^ *(v73 + 4 * (BYTE2(v89) ^ 0x5Eu)) ^ 0x6874FA60;
  v100 = *(v72 + 4 * (BYTE1(v90) ^ 0x5Cu)) ^ 0x4DA4EA9A;
  v101 = *(v75 + 4 * v96) ^ *(v73 + 4 * (BYTE2(v91) ^ 0xDBu)) ^ *(v74 + 4 * (HIBYTE(v90) ^ 0xA)) ^ *(v72 + 4 * (BYTE1(v95) ^ 0xE0u));
  v102 = (2 * ((v99 & v100) - ((2 * (v99 & v100)) & 0x6942348)) - 2037111992) ^ 0x86942348;
  v103 = ((v99 + v100) ^ 0xF747BFCD) + ((2 * (v99 + v100)) & 0xEE8F7F9A) + 146292788 + ((v102 - ((2 * v102) & 0x16D8FB68) - 1955824204) ^ 0x7493824B);
  v104 = (v103 + 2081716839 - ((2 * v103) & 0xF828F51C) + 39) ^ *(v75 + 4 * (v91 ^ 0x59u));
  v105 = *(v75 + 4 * (v90 ^ 0x73u)) ^ *(v72 + 4 * v93);
  v106 = *(v74 + 4 * (HIBYTE(v97) ^ 0xCF)) ^ 0x9F22B1F0;
  v107 = *(v73 + 4 * (BYTE2(v101) ^ 0xAAu)) ^ 0xF7564B90;
  v108 = (2 * ((v107 & v106) - ((2 * (v107 & v106)) & 0x31426BE)) - 2095831362) ^ 0x831426BE;
  v109 = ((v107 + v106) ^ 0x3DBBEDE6) + ((2 * (v107 + v106)) & 0x7B77DBCC) - 1035726309 + ((v108 - ((2 * v108) & 0xA122A624) + 1351701266) ^ 0xAF6EACED);
  v110 = v105 ^ v98;
  v111 = *(v75 + 4 * (v104 ^ 0x4Du)) ^ *(v72 + 4 * (((v105 ^ v98) >> 8) ^ 0xD9u)) ^ (v109 - ((2 * v109) & 0x8A289B6C) - 988525130);
  v112 = *(v73 + 4 * (((v105 ^ v98) >> 16) ^ 0x3Eu)) ^ *(v74 + 4 * (HIBYTE(v101) ^ 0x8A)) ^ *(v75 + 4 * (v97 ^ 0x76u)) ^ *(v72 + 4 * (BYTE1(v104) ^ 0x92u));
  LODWORD(v56) = *(v72 + 4 * (BYTE1(v97) ^ 0x4Du)) ^ *(v75 + 4 * (v101 ^ 0x75u)) ^ *(v74 + 4 * (HIBYTE(v110) ^ 0xC1)) ^ *(v73 + 4 * (BYTE2(v104) ^ 0x9Du));
  v113 = *(v73 + 4 * (BYTE2(v97) ^ 0x44u)) ^ *(v72 + 4 * (BYTE1(v101) ^ 0x88u)) ^ 0xBAF2A10A;
  v114 = *(v75 + 4 * (v110 ^ 0x5Cu)) ^ (v113 - ((2 * v113) & 0x63737428) + 834255380) ^ *(v74 + 4 * (HIBYTE(v104) ^ 0x69));
  v115 = *(v72 + 4 * (BYTE1(v56) ^ 0xBCu)) ^ *(v73 + 4 * (BYTE2(v112) ^ 0xC2u)) ^ *(v74 + 4 * (HIBYTE(v111) ^ 0x2C)) ^ *(v75 + 4 * (v114 ^ 0x12u));
  v116 = *(v75 + 4 * (v111 ^ 0xBAu)) ^ *(v73 + 4 * (BYTE2(v56) ^ 0xB3u)) ^ *(v74 + 4 * (HIBYTE(v112) ^ 0x44)) ^ *(v72 + 4 * (BYTE1(v114) ^ 0xC6u));
  v117 = *(v74 + 4 * (BYTE3(v56) ^ 0xCA)) ^ *(v73 + 4 * (BYTE2(v114) ^ 0xEEu)) ^ *(v72 + 4 * (BYTE1(v111) ^ 0x5Au)) ^ *(v75 + 4 * (v112 ^ 0x69u));
  v118 = *(v74 + 4 * (HIBYTE(v114) ^ 0x3E)) ^ *(v72 + 4 * (BYTE1(v112) ^ 0xFCu)) ^ *(v73 + 4 * (BYTE2(v111) ^ 0x47u)) ^ *(v75 + 4 * (v56 ^ 0x45u));
  v119 = *(v74 + 4 * (HIBYTE(v115) ^ 0xA7)) ^ *(v73 + 4 * (BYTE2(v116) ^ 0xF8u));
  v120 = *(v73 + 4 * (BYTE2(v117) ^ 4u)) ^ *(v74 + 4 * (HIBYTE(v116) ^ 0xAC)) ^ *(v72 + 4 * (BYTE1(v118) ^ 0xB8u));
  v121 = *(v73 + 4 * (BYTE2(v118) ^ 0xEEu)) ^ *(v74 + 4 * (HIBYTE(v117) ^ 0x29));
  v122 = *(v73 + 4 * (BYTE2(v115) ^ 0x75u)) ^ *(v74 + 4 * (HIBYTE(v118) ^ 0xD3)) ^ *(v72 + 4 * (BYTE1(v116) ^ 0xD9u)) ^ *(v75 + 4 * (v117 ^ 0xB7u));
  v123 = *(v75 + 4 * (v115 ^ 0x9Bu));
  v124 = *(v72 + 4 * (BYTE1(v115) ^ 0xBCu));
  v125 = *(v75 + 4 * (v116 ^ 0x82u));
  v126 = v121 ^ v124 ^ v125;
  v127 = *(v75 + 4 * (v118 ^ 0xCBu));
  v128 = *(v72 + 4 * (BYTE1(v117) ^ 0xFCu));
  v129 = v127 ^ v128 ^ v119;
  v130 = *(v72 + 4 * (BYTE1(v122) ^ 0x23u));
  v131 = *(v74 + 4 * (((v120 ^ v123) >> 24) ^ 0x15)) ^ *(v73 + 4 * (BYTE2(v126) ^ 0x93u)) ^ v130 ^ *(v75 + 4 * ((v127 ^ v128 ^ v119) ^ 0x71u));
  v132 = *(v75 + 4 * ~v122);
  v133 = *(v72 + 4 * (BYTE1(v126) ^ 2u)) ^ *(v73 + 4 * (((v120 ^ v123) >> 16) ^ 0xD8u)) ^ v132 ^ *(v74 + 4 * (HIBYTE(v129) ^ 0xF6));
  v134 = HIBYTE(v126) ^ 0x73;
  v135 = *(v74 + 4 * (HIBYTE(v122) ^ 0xEF));
  v136 = *(v72 + 4 * (((v120 ^ v123) >> 8) ^ 0x67u)) ^ *(v73 + 4 * (BYTE2(v129) ^ 0x6Fu)) ^ v135;
  v137 = *(v75 + 4 * ((v121 ^ v124 ^ v125) ^ 0x44u));
  v138 = (((2 * v131) ^ 0x9E9F32E0) - ((2 * ((2 * v131) ^ 0x9E9F32E0)) & 0xB43A58) + 5905708) & 0x1905AD0A;
  v139 = (v131 ^ 0x4F4F9970) + 209901189;
  v140 = v139 ^ 0xFBFFFE7B;
  v141 = (2 * v139) & 0xF7FFFCF6;
  v142 = *(v73 + 4 * (BYTE2(v122) ^ 0x32u));
  v143 = *(v74 + 4 * v134) ^ v142 ^ *(v75 + 4 * ((v120 ^ v123) ^ 0x83u)) ^ *(v72 + 4 * (BYTE1(v129) ^ 0x27u));
  v144 = v140 + v141 + 67113178 + (v138 ^ 0xFFFFF2F7) - 3924;
  v145 = v144 - ((2 * v144) & 0xF774E966) - 71666509;
  LODWORD(STACK[0x588]) = v145;
  v146 = (v136 ^ ((v136 ^ 0xDA2FEF05) - ((2 * (v136 ^ 0xDA2FEF05) + 2) & 0x9E6E94F2) + 1329023610) ^ ((v137 ^ 0x6A9F898A) - (v136 ^ v137 ^ 0x4F4F9970) - ((2 * ((v137 ^ 0x6A9F898A) - (v136 ^ v137 ^ 0x4F4F9970))) & 0xAF14597C) - 678810434) ^ 0xBD6D763D) + (v137 ^ 0x6A9F898A);
  v147 = v146 - ((2 * v146) & 0x6A584CEE) - 1255397769;
  v148 = v145 ^ 0xA8900D0E;
  LODWORD(STACK[0x5A8]) = v145 ^ 0x9B;
  LODWORD(STACK[0x598]) = (v146 - ((2 * v146) & 0xEE) + 119) ^ 0x61;
  v119 ^= 0x6874FA60u;
  v128 ^= 0x4DA4EA9Au;
  v149 = (v128 & v119) - ((2 * (v128 & v119)) & 0x416AE2);
  HIDWORD(v50) = v120 ^ 0x10FA;
  LODWORD(v50) = v120 ^ 0x25D00000;
  v150 = (v50 >> 16) - ((2 * (v50 >> 16)) & 0xCF9FE09A) + 1741680717;
  HIDWORD(v50) = v150 ^ 0x4C82;
  LODWORD(v50) = v150 ^ 0x9DAD0000;
  v151 = ((v128 + v119) ^ 0xDF757FD3) + ((2 * (v128 + v119)) & 0xBEEAFFA6) + 545947694 + ((((2 * v149 + 4287202) ^ 0x416AE2) - ((2 * ((2 * v149 + 4287202) ^ 0x416AE2)) & 0x8AB67870) - 983876552) ^ 0x3AA4C3C7);
  v152 = (v151 - ((2 * v151) & 0x1ADC11EC) - 1922168586) ^ v127;
  v153 = ((v50 >> 16) - ((2 * (v50 >> 16)) & 0x4FF7CD2C) + 670819990) ^ v123;
  v154 = v124 ^ 0x4DA4EA9A;
  LODWORD(v56) = (v124 ^ 0x4DA4EA9A) - (v121 ^ v124 ^ 0x25D010FA) - ((2 * ((v124 ^ 0x4DA4EA9A) - (v121 ^ v124 ^ 0x25D010FA))) & 0xFCD9680C) + 2121053190;
  v155 = (v121 ^ 0x978B059F) - ((2 * (v121 ^ 0x978B059F) + 2) & 0xB660B04) + 95618435;
  v156 = ((v121 ^ v155 ^ v56 ^ 0x13AB4BE4) + v154 - ((2 * ((v121 ^ v155 ^ v56 ^ 0x13AB4BE4) + v154)) & 0xA869C5D6) - 734731541) ^ v125;
  if ((v152 & 4) != 0)
  {
    v157 = 4;
  }

  else
  {
    v157 = -4;
  }

  v158 = *(v73 + 4 * (BYTE2(v153) ^ 0x3Cu)) ^ *(v72 + 4 * (BYTE1(v156) ^ 0xF0u)) ^ v132 ^ *(v74 + 4 * (HIBYTE(v152) ^ 0x5E));
  v159 = *(v74 + 4 * (HIBYTE(v153) ^ 0xAB)) ^ v130 ^ *(v73 + 4 * (BYTE2(v156) ^ 0x77u)) ^ *(v75 + 4 * ((v157 + (v152 ^ 0x7D) - ((2 * (v157 + (v152 ^ 0x7D))) & 0x6C) - 74) ^ 0xB2u));
  v160 = v142 ^ *(v75 + 4 * (v153 ^ 0x8Du)) ^ *(v74 + 4 * (HIBYTE(v156) ^ 0x82)) ^ *(v72 + 4 * (BYTE1(v152) ^ 0x3Fu));
  v161 = *(v72 + 4 * (BYTE1(v153) ^ 0x6Bu)) ^ v135 ^ *(v75 + 4 * (v156 ^ 0x55u)) ^ *(v73 + 4 * (BYTE2(v152) ^ 0xD1u));
  HIDWORD(v163) = v161 ^ 0xF4F9970;
  LODWORD(v163) = v161 ^ 0x40000000;
  v162 = v163 >> 30;
  v164 = v162 - ((2 * v162) & 0xAD338EC8) - 694565020;
  v165 = ((((v158 ^ 0x4279682Eu) >> (STACK[0x5B0] & 0x18)) - ((2 * ((v158 ^ 0x4279682Eu) >> (STACK[0x5B0] & 0x18))) & 0xBB9EC0CE) - 573611929) ^ 0xDDCF6067) >> (STACK[0x5B0] & 0x18 ^ 0x18);
  v166 = v165 - ((2 * v165) & 0x3A);
  v167 = ((((32 * v164) ^ 0x7A73B3A0) + 93492616 - ((2 * ((32 * v164) ^ 0x7A73B3A0)) & 0xB252BC0) + 92) & 0xFFFFFF80 | (v164 >> 27)) ^ 0x5929588;
  v168 = v167 + 1246532639 - 2 * (v167 & 0x4A4C941F ^ (v164 >> 27) & 6) + 26;
  HIDWORD(v163) = v168 ^ 0x32;
  LODWORD(v163) = v168 ^ 0x58E1CB00;
  v169 = ((v163 >> 7) - ((2 * (v163 >> 7)) & 0x13E9B2B0) - 1980442280) ^ 0x89F4D958 | (((v162 << 30) ^ 0x40000000) + (~v162 << 31) - 172146681) ^ 0xF5BD4007;
  v170 = v169 - ((2 * v169) & 0x448F89CC) - 1572354842;
  v171 = (v166 - 99) ^ 0x9D;
  v172 = *(v72 + 4 * (BYTE1(v143) ^ 0xDu));
  v173 = *(v72 + 4 * (BYTE1(v147) ^ 8u));
  v174 = *(v72 + 4 * (BYTE1(v148) ^ 0xA0u));
  v175 = *(v72 + 4 * (BYTE1(v133) ^ 0x68u));
  v176 = *(v72 + 4 * (BYTE1(v160) ^ 0xDu));
  v177 = *(v72 + 4 * (BYTE1(v158) ^ 0x68u));
  v178 = *(v72 + 4 * (BYTE1(v170) ^ 0x26u));
  v179 = *(v72 + 4 * (BYTE1(v159) ^ 0x96u));
  v180 = *(v73 + 4 * (BYTE2(v143) ^ 0x32u));
  v181 = *(v73 + 4 * (BYTE2(v147) ^ 0x2Cu));
  v182 = *(v73 + 4 * (BYTE2(v148) ^ 9u));
  v183 = *(v73 + 4 * (BYTE2(v133) ^ 0x79u));
  v184 = *(v73 + 4 * (BYTE2(v170) ^ 0x30u));
  v185 = *(v73 + 4 * (BYTE2(v159) ^ 0xEEu));
  v186 = *(v73 + 4 * (BYTE2(v158) ^ 0x79u));
  v187 = *(v74 + 4 * (HIBYTE(v159) ^ 0x18)) ^ *(v73 + 4 * (BYTE2(v160) ^ 0x32u)) ^ *(v75 + 4 * (v158 ^ 0x2Eu)) ^ v178;
  v188 = *(v74 + 4 * v171) ^ v176;
  v189 = *(v74 + 4 * (HIBYTE(LODWORD(STACK[0x588])) ^ 0xA0u));
  v190 = *(v74 + 4 * (HIBYTE(v143) ^ 0x24));
  v191 = *(v74 + 4 * (HIBYTE(v147) ^ 0x7E));
  v192 = *(v75 + 4 * (v170 ^ 0xF0u)) ^ v188 ^ v185;
  v193 = *(v74 + 4 * (HIBYTE(v170) ^ 0x1A));
  v194 = (*(v74 + 4 * (HIBYTE(v133) ^ 0x42)) ^ v172 ^ *(v75 + 4 * LODWORD(STACK[0x598])) ^ 0x2E974FDE ^ v182) + 1518721644;
  v195 = ((2 * v194) & 0xEFFBBEE2) + (v194 ^ 0xF7FDDF71);
  v196 = v177 ^ *(v74 + 4 * (HIBYTE(v160) ^ 0x24)) ^ *(v75 + 4 * (v159 ^ 0xDDu)) ^ v184;
  v197 = ((2 * v187) & 0xB26FCEFC ^ 0xB26C80E4) + (v187 ^ 0xA001A70D);
  v198 = (v189 ^ v180 ^ *(v75 + 4 * (v133 ^ 0x2Eu)) ^ v173 ^ 0x79364073) - 1481444518;
  v199 = ((2 * v198) & 0xF7F1BFDE) + (v198 ^ 0x7BF8DFEF);
  v200 = ((2 * v192) & 0xFF7F797C ^ 0x5D2E193C) + (v192 ^ 0xD128F360);
  v201 = v186 ^ v179 ^ *(v75 + 4 * (v160 ^ 0xE9u)) ^ v193;
  v202 = (v199 - v197 - ((2 * (v199 - v197) - 1166143714) & 0x8EC92180) + 614701135) ^ 0x67A62B4D;
  v203 = ((-591949627 * v202) ^ 0xE7BEFE7F) + ((-1183899254 * v202) & 0xCF7DFCFE);
  v204 = (v183 ^ *(v75 + 4 * (v143 ^ 0xE9u)) ^ v191 ^ 0xD94BFAFC ^ v174) + 172216652;
  v205 = (v181 ^ v190 ^ v175 ^ 0x124BD4EA ^ *(v75 + 4 * LODWORD(STACK[0x5A8]))) + 1772573034;
  v206 = ((2 * v196) & 0xF3FEEAB4 ^ 0x2096A894) + (v196 ^ 0xEBB4A1B0);
  v207 = ((2 * v201) & 0x2EEDFFC4 ^ 0x2285F5C0) + (v201 ^ 0xCE3D051E);
  v208 = ((2 * v204) & 0x93A7ABEC) + (v204 ^ 0x49D3D5F6) - v207;
  v209 = ((2 * v205) & 0xEFEEFD72) + (v205 ^ 0xF7F77EB9) - v206;
  v210 = (v209 - ((2 * v209 + 68152642) & 0xA635A394) + 1428342891) ^ 0x2D374FD4;
  v211 = ((1187926365 * v210) ^ 0x7E5B87FE) + ((-1919114566 * v210) & 0xFCB70FFC);
  v212 = (v208 - ((2 * v208 + 457593816) & 0x608201C8) + 2112105168) ^ 0xF8D93683;
  v213 = ((1752055319 * v212) ^ 0x3CF9E71E) + ((1356626990 * v212) & 0x79F3CE3C);
  v214 = v213 + v211 - ((2 * (v213 + v211) - 1990909496) & 0x95F396DE) - 1885053869;
  v215 = (v195 - v200 - ((2 * (v195 - v200) + 260291226) & 0x5AE70718) - 1254792999) ^ 0xBCDE33F0;
  v216 = 829471159 * v215 - ((1658942318 * v215) & 0xCE388640);
  v217 = v203 - v211;
  v218 = ((v203 + 406913409) ^ (v216 + 1729905440) ^ 0x671C4320) - 2 * (((v203 + 406913409) ^ (v216 + 1729905440) ^ 0x671C4320) & 0x7D4B0A5C ^ ((v203 + 406913409) ^ (v216 + 1729905440)) & 0x10) - 45413812;
  v219 = (2 * (((v214 ^ 0x4AF9CB6F) & (v218 ^ 0xFD4B0A4C)) - ((2 * ((v214 ^ 0x4AF9CB6F) & (v218 ^ 0xFD4B0A4C))) & 0xCCB674E)) - 1932826802) ^ 0x8CCB674E;
  v220 = v213 - 1023010590 + (v218 ^ 0xFD4B0A4C);
  v221 = ((v219 - ((2 * v219) & 0x2BF9C5CC) + 368894695) ^ 0x15FCE2E7) + (v218 ^ v214 ^ 0xB7B2C123);
  v222 = ((((2 * v214) ^ 0x95F396DE) - ((2 * ((2 * v214) ^ 0x95F396DE)) & 0x4F71700) - 2105832576) ^ 0x7D84747F) + (v221 ^ 0xF677FBA5) + ((2 * v221) & 0xECEFF74A) + 159908956;
  v223 = ((2 * v222) & 0xB57F8FFC) + (v222 ^ 0xDABFC7FE);
  v224 = (v214 ^ 0x4AF9CB6F ^ (v223 + 624965634)) - ((2 * (v214 ^ 0x4AF9CB6F ^ (v223 + 624965634))) & 0x97E33DEE) + 1274126071;
  v225 = v217 + 1073265858 + v223 - 503;
  v226 = v217 + (v220 ^ 0x85204000) - ((2 * v220) & 0xF5BF7FFE) + v225;
  v227 = ((2 * (v224 ^ (v226 - 1923067851))) & 0xFF7F6636 ^ 0x97632426) + (v224 ^ (v226 - 1923067851) ^ 0x344E2DEC);
  v228 = v206 - v227 - 2 * ((v206 - v227 + 2012132228) & 0x535FDACD ^ (v206 - v227) & 1) - 884044208;
  v229 = ~v226 + v197 - ((2 * (~v226 + v197) + 264266780) & 0xB8AD5BB2) - 466165785;
  v230 = v207 - v217 - v227 + 906445483 - ((2 * (v207 - v217 - v227 + 906445483) + 1257804354) & 0x465D52B6) - 928320900;
  v231 = v200 - v225 - ((2 * (v200 - v225) - 1845950022) & 0x88C50286) - 1923152352;
  v232 = *(STACK[0xAD0] + 4 * (BYTE2(v229) ^ 0x56u));
  v233 = *(STACK[0xAD0] + 4 * (BYTE2(v231) ^ 0x62u));
  v234 = *(STACK[0xAD0] + 4 * (BYTE2(v230) ^ 0x2Eu));
  v235 = *(STACK[0xAE0] + 4 * (BYTE1(v228) ^ 0xDAu));
  v236 = *(STACK[0xAE0] + 4 * (BYTE1(v231) ^ 0x81u));
  v237 = *(STACK[0xAE0] + 4 * (BYTE1(v229) ^ 0xADu));
  v238 = *(STACK[0xAF8] + 4 * (HIBYTE(v231) ^ 0xC4));
  v239 = *(STACK[0xAF8] + 4 * (HIBYTE(v228) ^ 0xD3));
  v240 = *(STACK[0xAF8] + 4 * (HIBYTE(v230) ^ 0x23));
  v241 = *(STACK[0xAC8] + 4 * (v230 ^ 0x5Bu));
  v242 = *(STACK[0xAC8] + 4 * (v229 ^ 0xD9u));
  v243 = *(STACK[0xAC8] + 4 * (v228 ^ 0xCCu));
  v244 = STACK[0x5A0];
  v245 = STACK[0x478];
  v246 = STACK[0x520];
  v247 = LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x520]);
  v248 = v247 ^ *(STACK[0xAC8] + 4 * (v231 ^ 0x43u)) ^ *(STACK[0xAF8] + 4 * (HIBYTE(v229) ^ 0x5C)) ^ *(STACK[0xAD0] + 4 * (BYTE2(v228) ^ 0x5Fu)) ^ *(STACK[0xAE0] + 4 * (BYTE1(v230) ^ 0xA9u));
  v249 = ((((2 * HIWORD(v248)) ^ 0x18) - ((v248 >> 14) & 0x8C) + 198) & 0xE4 ^ 0xC4) + (HIWORD(v248) ^ 0x9FFE);
  LOBYTE(v249) = (BYTE2(v248) ^ 0x8C) + (v249 ^ 0x3E) + ((2 * v249) & 0x7C) - 62;
  LOBYTE(v216) = ((v249 - ((2 * v249) & 0xA0) - 48) ^ 0x2F) + byte_10038D020[BYTE2(v248) ^ 9];
  *(STACK[0x590] + 5) = (v216 - ((2 * v216) & 8) + 52) ^ 0x40;
  v250 = (v238 ^ ((v238 ^ 0x1C5DD888) - ((2 * (v238 ^ 0x1C5DD888) + 2) & 0xC9721232) - 457635558) ^ 0xAD96020D ^ ((v235 ^ 0x52F57F06) - (v235 ^ v238 ^ 0xB1575871) - ((2 * ((v235 ^ 0x52F57F06) - (v235 ^ v238 ^ 0xB1575871))) & 0x551A58C6) - 1433588637)) + (v235 ^ 0x52F57F06);
  v241 ^= 0x4FA69832u;
  v251 = v232 ^ 0x7D59D511 ^ (v250 - ((2 * v250) & 0x809129DE) - 1068985105);
  v252 = (v251 & v241) - ((2 * (v251 & v241)) & 0x1DCE048);
  v253 = v233 & 8 ^ 0xEFEFFD1F;
  v254 = v240 ^ 0xE3A22777;
  v255 = ((2 * (v254 - (v233 ^ 0x5EB36689 ^ v240))) & 0x33D3FFAE) + ((v254 - (v233 ^ 0x5EB36689 ^ v240)) ^ 0x99E9FFD7);
  v256 = ((v251 + v241) ^ 0xF47BFFF5) + ((2 * (v251 + v241)) & 0xE8F7FFEA) + 193200140 + ((((2 * v252 + 31252552) ^ 0x1DCE048) - 2 * (((2 * v252 + 31252552) ^ 0x1DCE048) & 0x58EEBABE ^ (2 * v252 + 31252552) & 0x10) + 1492040366) ^ 0xA7114551);
  v257 = v256 - ((2 * v256) & 0x53B4F87C) - 1445299138;
  v258 = (v255 + 9) & (v253 + 269484777);
  v259 = v253 + 2109291519;
  v260 = 1570321965 - v253;
  if (v258)
  {
    v261 = v260;
  }

  else
  {
    v261 = v259;
  }

  v262 = (v233 & 0xFFFFFFF7 ^ ((v233 ^ 0x42EEBE01) - ((2 * (v233 ^ 0x42EEBE01) + 2) & 0x57D76FAA) + 736868310) ^ 0x266B1E6D ^ (v261 + v255 - ((2 * (v261 + v255) + 1893305894) & 0x6123D09C) - 1459703967)) + v254;
  v263 = v237 ^ v246 ^ v243 ^ (v262 - ((2 * v262) & 0x6BAF73BE) + 903330271);
  v264 = (v263 & 0x6AD6B513 ^ 0xB7297AEC) + 909750529 + ((2 * ((v263 & 0x6AD6B513 ^ 0xB7297AEC) & 0x2210B102 ^ (v263 | 0x7FFFFFFD))) ^ 0x28520005);
  v265 = (v264 & 0x39171325 ^ v263 & 0x11010224 | v264 & 0xC6E8ECDA ^ v263 & 0x842848C8) ^ 0x2319F94C;
  v266 = v265 - 2 * (v265 & 0x2F256E9E ^ v263 & 2) - 1356501348;
  v267 = v246 ^ v245 ^ v236 ^ v239 ^ v234 ^ v242;
  v268 = v247 ^ v257;
  v269 = -363731984 - (v244 & 0x10000 | 0x7528F1F8);
  if ((v244 & 0x10000 & ~v267) == 0)
  {
    v269 = v244 & 0x10000 | 0x7528F1F8;
  }

  v270 = ((v267 ^ 0xB8E99A90) - 1965617656 + v269 - ((2 * ((v267 ^ 0xB8E99A90) - 1965617656 + v269)) & 0x47AFB65E) - 1546134737) ^ v244 & 0xFFFEFFFF;
  HIDWORD(v271) = v268 ^ 0x1F052;
  LODWORD(v271) = v268 ^ 0xACB00000;
  v272 = (v271 >> 18) - ((2 * (v271 >> 18)) & 0x8746E6C6) + 1134785379;
  v273 = (v245 ^ v244 ^ 0x20C38EBB ^ v266) - ((2 * (v245 ^ v244 ^ 0x20C38EBB ^ v266)) & 0x9AE8C48E) + 1299472967;
  HIDWORD(v271) = v272 ^ 0x2E17;
  LODWORD(v271) = v272 ^ 0xFB010000;
  v274 = (v271 >> 14) - ((2 * (v271 >> 14)) & 0x2A87F2BE);
  v275 = v274 + 356776287;
  v276 = -356776288 - v274;
  v277 = (((~(2 * v248) | 0xFFFFFFE7) + (v248 ^ 0xFFFFFFF3)) << 26) - 1275068416;
  v278 = ((v248 >> 6) + 194454532 + (v277 ^ 0xB0000000) - ((2 * v277) & 0x10000000)) ^ 0xB972404;
  v279 = v278 - 2 * (v278 & 0x185FBD7D ^ (v248 >> 6) & 1) + 408927612;
  v280 = STACK[0x5C0];
  v280[15] = (byte_1003AF1D0[v273 ^ 0x39] - ((2 * byte_1003AF1D0[v273 ^ 0x39] + 118) & 0xE4) + 45) ^ 0xB0;
  HIDWORD(v271) = v279 ^ 0xAB900D;
  LODWORD(v271) = v279 ^ 0xAC000000;
  v280[10] = (9 * byte_1003AFF50[BYTE1(v270) ^ 0xC7] + ((18 * byte_1003AFF50[BYTE1(v270) ^ 0xC7]) & 0x6C ^ 0xBF) + 87) ^ 0x4E;
  LOBYTE(v274) = byte_1003AF1D0[((v271 >> 26) - ((2 * (v271 >> 26)) & 0xAFD03AFE) + 1474829695) ^ 0x6AE3410BLL];
  LOBYTE(v279) = (2 * v274 - 2 * ((2 * v274 + 16) & 0x3E ^ (2 * v274) & 4) - 53) ^ 0x3B;
  LOBYTE(v274) = v274 + ((v279 - ((2 * v279 + 12) & 0x28) + 26) & 0x26 ^ 0xDB) - 49;
  v280[7] = (v274 ^ 0xFE) + ((2 * v274) & 0xFC) + 2;
  v280[8] = byte_10038D730[HIBYTE(v270) ^ 0x4DLL] ^ 0xCE;
  LOBYTE(v274) = 9 * byte_1003AFF50[BYTE1(v275) ^ 0x58];
  v280[2] = (v274 - 2 * ((v274 + 32) & 0x57 ^ v274 & 1) - 10) ^ 0x5E;
  v280[12] = byte_10038D730[HIBYTE(v273) ^ 0x90] ^ 0x2F;
  v280[3] = byte_1003AF1D0[v275 ^ 0x96] + 59;
  v281 = (((2 * HIWORD(v275)) ^ 0xBEA4) - ((2 * ((2 * HIWORD(v275)) ^ 0xBEA4)) & 0xCC) - 26) ^ 0x38;
  LOBYTE(v281) = byte_10038D020[BYTE2(v275) ^ 0x38] - 2 * v281 + v281;
  v280[1] = (v281 + ((2 * ((v281 + 61) & 0x4B ^ v281 & 1)) ^ 0xFC) + 9) ^ 0x46;
  v282 = HIBYTE(v276) ^ 0xA0;
  v283 = v282 - (HIBYTE(v276) ^ 0x431DA4BF) - ((2 * (v282 - (HIBYTE(v276) ^ 0x431DA4BF))) & 0x1C42B3E) + 1139742111;
  v280[11] = (((2 * byte_1003AF1D0[v270 ^ 0xBFLL] + 118) & 0xB2) - byte_1003AF1D0[v270 ^ 0xBFLL] + 107) ^ 0x25;
  *v280 = byte_10038D730[((v283 ^ 0xBC10EA61) + v282 - ((2 * ((v283 ^ 0xBC10EA61) + v282)) & 0x88334050) - 1004953560) ^ 0x87040419] ^ 0xC0;
  v284 = ((((2 * HIWORD(v270)) ^ 0xBB6A) - ((2 * ((2 * HIWORD(v270)) ^ 0xBB6A)) & 0x7C) - 65) ^ 0x32) + byte_10038D020[BYTE2(v270) ^ 0x89] + 37;
  v280[9] = (((2 * v284) & 0xAE) + (v284 ^ 0xD7) - 2 * ((((2 * v284) & 0xAE) + (v284 ^ 0xD7) + 66) & 0xCF ^ ((((((2 * BYTE2(v270)) ^ 0x6A) - ((2 * ((2 * BYTE2(v270)) ^ 0x6A)) & 0x7C) - 65) ^ 0x32) + byte_10038D020[BYTE2(v270) ^ 0x89] + 37) ^ 0xD7) & 1) + 16) ^ 0xA1;
  v280[6] = (9 * byte_1003AFF50[BYTE1(v248) ^ 0x3ELL] + 32) ^ 0xA2;
  LOBYTE(v284) = 9 * byte_1003AFF50[BYTE1(v273) ^ 0xB7];
  v280[14] = (v284 - 2 * (((v284 & 0x7C) + 32) ^ v284 & 8) - 108) ^ 0xE8;
  v285 = byte_10038D020[BYTE2(v273) ^ 0x8CLL];
  v286 = ((((2 * HIWORD(v273)) ^ 0x9AE8) - 2 * (((2 * HIWORD(v273)) ^ 0x9AE8) & 0x1E ^ (2 * HIWORD(v273)) & 0x12) - 116) ^ 0x76) + 114;
  v287 = v285 + (v286 ^ 0x8B) - ((2 * v286) & 0xE8) + 1;
  v280[13] = (v287 - ((2 * v287 + 70) & 0xCF) - 118) ^ 0xD3;
  v280[4] = byte_10038D730[HIBYTE(v248) ^ 0x85] ^ 0xDA;
  LODWORD(STACK[0xADC]) = 0;
  return sub_100241A38();
}