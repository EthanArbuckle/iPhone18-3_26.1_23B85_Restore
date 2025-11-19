uint64_t sub_100230FAC@<X0>(unint64_t a1@<X8>)
{
  v10 = (((2 * v1) & 0x37DE9DBDDEEFFF76) + (v1 ^ 0xDBEF4EDEEF77FFBBLL) + v2);
  v11 = v10[0x2410B12110880048];
  LODWORD(v10) = (v10[0x2410B12110880045] << 24) | (v10[v5 ^ 0x2410B12110880D01] << 16) | (v10[0x2410B12110880047] << 8) | v11;
  v12 = v10 + 1190698650 - 2 * (v10 & v4 ^ v11 & 4);
  v13 = _byteswap_ushort(*(((2 * (v1 + 4)) & 0x2EF76FF6BEEB7B7ELL) + ((v1 + 4) ^ 0x577BB7FB5F75BDBFLL) + v2 - 0x577BB7FB5F75BDBFLL));
  v14 = (v13 - ((2 * v13) & 0x1D16) + 3731);
  switch(v14)
  {
    case 24152:
      STACK[0x3F0] = v2 + v3;
      STACK[0x340] = a1;
      return (*(v9 + 8 * (((v12 == (v8 ^ 0x46F893DD)) * (v8 - 3362)) ^ (v8 - 2539))))();
    case 35350:
      return (*(v9 + 8 * ((4867 * (v6 == ((v8 - 489) ^ 0x46F895CC))) ^ (v8 - 2504))))();
    case 39428:
      return (*(v9 + 8 * ((3567 * (v6 == v8 + 1190695255)) ^ (v8 - 2504))))();
    default:
      LODWORD(STACK[0x374]) = v7 + 5;
      STACK[0x650] = STACK[0x268];
      STACK[0x698] = *(v9 + 8 * (v8 - 3053));
      return sub_1002000E0();
  }
}

void sub_100231310()
{
  (*(v2 + 8 * (v0 + 1662)))();
  *(v1 + 24) = 0;
  JUMPOUT(0x100211334);
}

void sub_10023133C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1001F5EE4);
}

uint64_t sub_100231394()
{
  v2 = *(STACK[0x4D0] + 24);
  STACK[0x778] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 1996354896) & 0x76FDEF9B ^ 0xFFFFF828) + (v0 ^ 0x21))) ^ v0)))();
}

void sub_1002313EC(_DWORD *a1)
{
  v1 = 1902663727 * (((a1 | 0x84387E7E) - (a1 & 0x84387E7E)) ^ 0xF242EEE9);
  v2 = *a1 ^ v1;
  v3 = a1[8] ^ v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 385875968;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100231504(uint64_t result)
{
  v4 = *(v1 + 24);
  *result = v2;
  *(result + 8) = v3;
  *(result + 12) = v3;
  *(result + 16) = 0xC1E106DF4FD7C142;
  *(result + 24) = -197604040;
  *v4 = result;
  *(v1 + 20) = -197604040;
  return result;
}

uint64_t sub_100231550@<X0>(uint64_t a1@<X4>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, _DWORD *a55)
{
  v61 = (v58 + (v59 - 1));
  v62 = ((*(*a54 + (*a55 & (((v56 - 2647) | 0xB81u) + 115632235))) ^ v61) & (v56 + 2147479956)) * v57;
  v63 = (v62 ^ HIWORD(v62)) * v57;
  v64 = *(*(a1 + 8 * (v56 ^ 0xE3E)) + (v63 >> 24) - 12);
  v65 = *(*(a1 + 8 * (v56 - 3529)) + (v63 >> 24) - 11);
  v66 = -37 * BYTE3(v63);
  v67 = *(a1 + 8 * (v56 - 3642));
  v68 = v64 ^ (a2 >> v55) ^ v65 ^ *(v67 + (v63 >> 24) - 10) ^ v63;
  LODWORD(v63) = (v64 ^ (a2 >> v55) ^ v65 ^ *(v67 + (v63 >> 24) - 10) ^ v63);
  *v61 = v66 ^ v68;
  return (*(v60 + 8 * ((303 * (v59 == (v63 != v66))) ^ v56)))();
}

uint64_t sub_1002316BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v31 - 104) = &a28;
  *(v31 - 128) = v30 - 1206776117 * ((~((v31 - 144) ^ 0xD96ADFB2 | 0x998A1B95) + (((v31 - 144) ^ 0xD96ADFB2) & 0x998A1B95)) ^ 0x998FB739) + 2215;
  *(v31 - 144) = a12;
  *(v31 - 136) = a11;
  *(v31 - 120) = &a22;
  *(v31 - 112) = &a22;
  (*(v29 + 8 * (v30 ^ 0x1000)))(v31 - 144);
  return sub_10021C514();
}

uint64_t sub_10023178C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 459) ^ 0xFFFFFFFFFFFFF552) + v2;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((507 * (v5 == 0)) ^ (v3 - 1020))))();
}

uint64_t sub_100231D1C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x858] = v2 ^ 0x46F89E9Au;
  *(a1 + 16) = (((v2 ^ 0x60B54695) - 1622492821) ^ ((v2 ^ 0x8DE96AA1) + 1914082655) ^ ((v2 ^ 0xABA4B2AE) + 1415266315 + 103 * (v1 ^ 0x8A3))) + 1190698660;
  v5 = (*(v3 + 8 * (v1 ^ 0x1A4A)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((27 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_100231DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v36 - 128) = v33 - 1206776117 * ((-1141586073 - ((v36 - 144) | 0xBBF4C767) + ((v36 - 144) | 0x440B3898)) ^ 0x629BB479) + 1154;
  *(v36 - 112) = v31;
  *(v36 - 104) = &a30;
  *(v36 - 144) = v34;
  *(v36 - 136) = v35;
  *(v36 - 120) = v31;
  (*(v32 + 8 * (v33 + 3035)))(v36 - 144);
  return sub_10021C514();
}

uint64_t sub_100231E58()
{
  STACK[0x780] = 0;
  v3 = STACK[0x5C0];
  STACK[0x450] = *(v2 + 8 * v1);
  return sub_100214AC0(v3);
}

uint64_t sub_100231E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 116) = v19 - ((~((v21 - 120) | 0x5D09ED14) + ((v21 - 120) & 0x5D09ED14)) ^ 0xDC0CFB06) * v20 + 1603;
  *(v21 - 112) = a17;
  *(v21 - 104) = &a18;
  v22 = (*(v18 + 8 * (v19 + 2775)))(v21 - 120);
  return (*(v18 + 8 * ((((*(v21 - 120) - 1076635405) < 0xCB8A6499) * (v19 ^ 0x127D)) ^ v19)))(v22);
}

uint64_t sub_100231FE4(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5D4]) = v5;
  LODWORD(STACK[0x604]) = a3;
  LODWORD(STACK[0x5D0]) = v4 + a1;
  LODWORD(STACK[0x650]) = v3 - 1616;
  v7 = STACK[0x388];
  LODWORD(STACK[0x54C]) = ((v3 - 1616) ^ 0x376) - STACK[0x388];
  return (*(v6 + 8 * (((3 * (v3 ^ 0x894) + 978) * (v7 < 0x40)) ^ v3)))(89, 50);
}

void sub_1002320F0(uint64_t a1)
{
  v1 = *(a1 + 24) + 482210539 * ((2084611311 - (a1 | 0x7C40A4EF) + (a1 | 0x83BF5B10)) ^ 0xC6658547);
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = 0x654D933300000082;
  v9[1] = &v11;
  v8[0] = 0x654D933300000082;
  v8[1] = &v10;
  v6 = v2[1];
  v12 = v5;
  v13 = v2;
  v15 = v6;
  v16 = v9;
  LODWORD(v14) = v1 - 1206776117 * (((&v12 ^ 0x8BF9159) & 0xF7E53C4C | ~(&v12 ^ 0x8BF9159 | 0xF7E53C4C)) ^ 0x2635DE0B) + 354;
  v17 = v4;
  v7 = *(&off_1002ACDD0 + (v1 ^ 0xB30));
  (*(v7 + 8 * (v1 ^ 0x18FF)))(&v12);
  v14 = *v2;
  LODWORD(v13) = (1841367943 * ((((2 * &v12) | 0x43EEB9B6) - &v12 + 1577624357) ^ 0x195247)) ^ (v1 + 1205);
  v12 = v8;
  (*(v7 + 8 * (v1 ^ 0x18EF)))(&v12);
  v13 = v3;
  HIDWORD(v12) = v1 + 1186709341 * ((&v12 + 1885046324 - 2 * (&v12 & 0x705B8634)) ^ 0xEA16FD9) - 1344;
  (*(v7 + 8 * (v1 ^ 0x1918)))(&v12);
  __asm { BRAA            X8, X17 }
}

void sub_1002325E4(uint64_t a1)
{
  v1 = *(a1 + 8) + 89241791 * ((a1 & 0xB391E1 | ~(a1 | 0xB391E1)) ^ 0x514DBEB8);
  v2 = *(&off_1002ACDD0 + (v1 ^ 0x754));
  v3 = *a1;
  (*(v2 + 8 * (v1 ^ 0x154A)))(*(&off_1002ACDD0 + (v1 ^ 0x63F)) - 8, sub_10016E7BC);
  __asm { BRAA            X10, X17 }
}

void sub_100232760(uint64_t a1)
{
  v1 = 206034421 * (((a1 | 0x54B43E17) - a1 + (a1 & 0xAB4BC1E8)) ^ 0x4F858BF6);
  v2 = *(a1 + 20) - v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) + v1;
  v7 = 16;
  v6[0] = v3;
  v6[1] = (v4 - 1366074988);
  v5 = *(&off_1002ACDD0 + (v2 ^ 0xD85));
  (*(v5 + 8 * (v2 ^ 0x1E33)))(*(*(&off_1002ACDD0 + (v2 ^ 0xC90)) + 1), 26, v6, 16, v6, &v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100232BFC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>, int8x16_t a7@<Q0>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v46 = *(v41 + 8 * a6);
  v47 = (BYTE4(a37) - ((2 * BYTE4(a37)) & 0x10) - 115);
  v89 = v46;
  if (v47 == 143)
  {
    v90 = vld4q_s8(a1);
    v85 = veorq_s8(v90.val[1], a7);
    _Q21 = vmovl_high_u8(v85);
    _Q20 = vmovl_u8(*v85.i8);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    *(v38 + 4 * ((((a4 + v45 - 734) | 0x891u) ^ a15) + 1738147285)) = v43 ^ __ROR4__(*(v38 + 4 * (v39 + 1738147285) - 32) ^ *(v38 + 4 * (v39 + 1738147285) - 12) ^ *(v38 + 4 * (v39 + 1738147285) - 56) ^ *(v38 + 4 * (v39 + 1738147285) - 64), 31);
    v88 = *(v41 + 8 * ((1575 * (v42 == 1738147222)) ^ (a4 + v45 + 1893)));
    return v88(1738147286, a2, v88, a4, a5, HIDWORD(a35), a36, a35, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v46, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
  }

  else if (v47 == 142)
  {
    v91 = vld4q_s8(a1);
    v48 = (v45 - 2072896436);
    v49 = veorq_s8(v91.val[2], a7);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v58 = *(&off_1002ACDD0 + (v48 ^ 0xC7B)) - 4;
    v59 = (HIDWORD(a35) & 0xA72B52EF ^ 0x200B1203 ^ (a35 ^ 0x976445FC) & (HIDWORD(a35) ^ v44) | a35 & 0x81899978 ^ 0x81808868 ^ (a35 ^ (((v45 + 337108690) & 0x705A33FB) - 810490439)) & (a36 ^ 0xB1C68E6B)) + (HIDWORD(a34) ^ v44) + *(*(&off_1002ACDD0 + v45 - 2072899545) + a20 + v39 - 3) + (*(v38 + 4 * (*(*(&off_1002ACDD0 + ((v45 - 2072896436) ^ 0xDF6)) + a20 + v39 - 8) - 5)) ^ v43);
    v60 = (v59 ^ 0xDE41B66A) & (2 * (v59 & 0xDE51C76B)) ^ v59 & 0xDE51C76B;
    v61 = ((2 * (v59 ^ 0xFAC232BA)) ^ 0x4927EBA2) & (v59 ^ 0xFAC232BA) ^ (2 * (v59 ^ 0xFAC232BA)) & 0x2493F5D0;
    v62 = v61 ^ 0x24901451;
    v63 = (v61 ^ 0x32180) & (4 * v60) ^ v60;
    v64 = ((4 * v62) ^ 0x924FD744) & v62 ^ (4 * v62) & 0x2493F5D0;
    v65 = (v64 ^ 0x3D540) & (16 * v63) ^ v63;
    v66 = ((16 * (v64 ^ 0x24902091)) ^ 0x493F5D10) & (v64 ^ 0x24902091) ^ (16 * (v64 ^ 0x24902091)) & 0x2493F5D0;
    v67 = v65 ^ 0x2493F5D1 ^ (v66 ^ 0x135500) & (v65 << 8);
    v68 = v58[a20 + v39];
    v69 = (v67 << 16) & 0x24930000 ^ v67 ^ ((v67 << 16) ^ 0x75D10000) & (((v66 ^ 0x2480A0C1) << 8) & 0x24930000 ^ 0x24020000 ^ (((v66 ^ 0x2480A0C1) << 8) ^ 0x13F50000) & (v66 ^ 0x2480A0C1));
    v70 = (v68 + 454579118);
    v71 = (v68 - 82) ^ (2 * (~(v68 - 82) & (2 * (v68 - 82)) ^ (v68 - 82) ^ ((4 * (~(v68 - 82) & (2 * (v68 - 82)) ^ (v68 - 82))) ^ 0xC0) & ((v68 - 82) ^ 0xF) & (2 * ((v68 - 82) ^ 0xF)))) ^ 0x1A;
    v72 = (((a35 ^ 0x1A60158D) - 442504589) ^ ((a35 ^ 0x1CDA9C25) - 484088869) ^ ((a35 ^ 0x36F59EBB) - 922066619)) + 2050321366 + (((v59 ^ (2 * v69) ^ 0xDE542CC9) << (v71 & 0x13 ^ 1) << (v71 & 0xC ^ 4)) | ((v59 ^ (2 * v69) ^ 0xDE542CC9) >> (v37 - v68)));
    v73 = (v72 ^ 0xB59D033D) & (2 * (v72 & 0xB619AB3D)) ^ v72 & 0xB619AB3D;
    v74 = ((2 * (v72 ^ 0xB9BF0575)) ^ 0x1F4D5C90) & (v72 ^ 0xB9BF0575) ^ (2 * (v72 ^ 0xB9BF0575)) & v40;
    v75 = v74 ^ 0xA2A248;
    v76 = (v74 ^ 0x8040C00) & (4 * v73) ^ v73;
    v77 = ((4 * v75) ^ 0x3E9AB920) & v75 ^ (4 * v75) & v40;
    v78 = (v77 ^ 0xE82A800) & (16 * v76) ^ v76;
    v79 = ((16 * (v77 ^ 0x1240648)) ^ 0xFA6AE480) & (v77 ^ 0x1240648) ^ (16 * (v77 ^ 0x1240648)) & (v40 - 8);
    v80 = v78 ^ v40 ^ (v79 ^ 0xA22A400) & (v78 << 8);
    v81 = (v80 << 16) & 0xFA60000;
    v82 = v72 ^ (2 * (v81 ^ v80 ^ ((v80 << 16) ^ 0x2E480000) & (((v79 ^ 0x5840A48) << 8) & 0xFA60000 ^ 0x9000000 ^ (((v79 ^ 0x5840A48) << 8) ^ 0x26AE0000) & (v79 ^ 0x5840A48)))) ^ 0x851BE0BE;
    v83 = *(v41 + 8 * ((14 * (a20 + 1 != v42)) ^ v48));
    return v83(v48, v83, v58, v81, v82, v70, HIDWORD(a35), a35, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v89, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
  }

  else
  {
    return v46(a1, a2, a3, a4, a35, HIDWORD(a35), a36, a35, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v46, a20, a21, a22, a23, a24, a25, a26, a27);
  }
}

uint64_t sub_100233EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, uint64_t a12)
{
  v17 = 1462950173 * ((&a9 & 0xB55D166F | ~(&a9 | 0xB55D166F)) ^ 0x40DB6237);
  a9 = (((v16 - 595) | 0xE85) ^ 0xDAC1A5A6) + v17 + *(a1 + 16) + v15 + *(v12 + 16) - 39291928 + 8;
  a10 = v17 ^ 0x124F3C86;
  a12 = v12;
  a11 = v17 + v16 + 1645;
  v18 = (*(v14 + 8 * (v16 ^ 0x116D)))(&a9);
  return (*(v14 + 8 * ((3829 * (*(v12 + 24) == v13)) ^ v16)))(v18);
}

_DWORD *sub_100233FAC(_DWORD *result)
{
  v1 = 1399592057 * ((result & 0xB7F8FCC3 | ~(result | 0xB7F8FCC3)) ^ 0xFDF6B53);
  v2 = result[4];
  v3 = *(&off_1002ACDD0 + (v1 ^ result[1] ^ 0x762A183E));
  v4 = result[2] + v1;
  v5 = result[3] + v1;
  v3[1] = *result + v1;
  v3[2] = v4;
  v3[3] = v5;
  v3[4] = v2 - v1;
  return result;
}

void sub_100234024(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 4) - 1699582771;
  if (v2 < 0)
  {
    v2 = 1699582771 - *(*(a1 + 32) + 4);
  }

  v1 = *a1 - 1206776117 * ((((2 * a1) | 0xCBC710AC) - a1 - 1709410390) ^ 0x437304B7);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100234150@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v3 - 1352) | 0x410u) - 1297) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((482 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1002341A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v44 = *(&a27 + v39 + 72);
  v45 = ((v39 << (((v41 + 66) | 4) ^ (v43 - 1))) & 0x7E85F360) + (v39 ^ 0xBF42F9B1) + v40;
  *(a1 + v45) = v44 ^ 0x5E;
  *(a1 + v45 + 1) = (BYTE1(v44) ^ 0x17) - ((2 * (BYTE1(v44) ^ 0x17)) & 0x9A) + 77;
  *(a1 + v45 + 2) = (BYTE2(v44) ^ 0x4F) - ((2 * (BYTE2(v44) ^ 0x4F)) & 0x9A) + 77;
  *(a1 + v45 + 3) = (HIBYTE(v44) ^ 0x30) - ((v44 >> 23) & 0x9A) + 77;
  return (*(v42 + 8 * ((94 * (v39 + 4 < a39)) ^ v41)))();
}

uint64_t sub_100234370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(a13 + 16) = -v20;
  v23 = 206034421 * ((-1154157562 - ((v22 - 136) | 0xBB34F406) + ((v22 - 136) | 0x44CB0BF9)) ^ 0x5FFABE18);
  *(v22 - 136) = 1738633624 - v23;
  *(v22 - 132) = v21 - v23 + 1546;
  *(v22 - 128) = v18;
  (*(v19 + 8 * (v21 ^ 0x1F8E)))(v22 - 136);
  v24 = 1841367943 * ((((v22 - 136) | 0x421283C9) + (~(v22 - 136) | 0xBDED7C36)) ^ 0xE3FC8D54);
  *(v22 - 136) = v18;
  *(v22 - 128) = v24 + ((a15 << 6) & 0xEF7A7D80) + ((32 * a15) ^ 0x77BD3EC6) - 630993924;
  *(v22 - 124) = (v21 - 863) ^ v24;
  (*(v19 + 8 * (v21 ^ 0x1E6B)))(v22 - 136);
  *(v22 - 128) = (v21 + 571) ^ (1841367943 * ((v22 - 136) ^ 0xA1EE0E9C));
  *(v22 - 120) = a17;
  *(v22 - 136) = &a18;
  (*(v19 + 8 * (v21 + 1585)))(v22 - 136);
  *(v22 - 128) = a17;
  *(v22 - 120) = v18;
  *(v22 - 132) = v21 - 1186709341 * ((v22 - 136) ^ 0x7EFAE9ED) + 458;
  v25 = (*(v19 + 8 * (v21 + 1630)))(v22 - 136);
  return (*(v19 + 8 * ((77 * (*(v22 - 136) <= 0x402C270Bu)) ^ v21)))(v25);
}

uint64_t sub_1002345A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v52 = STACK[0x380];
  v53 = LODWORD(STACK[0x224]) ^ 0x595FF8BF;
  v54 = ((v50 ^ 0x269) - 1296044130) & (2 * LODWORD(STACK[0x224]));
  v55 = 1841367943 * ((((v51 - 200) | 0xF31677CC) - ((v51 - 200) & 0xF31677CC)) ^ 0x52F87950);
  *(v51 - 152) = a25;
  *(v51 - 192) = v47;
  *(v51 - 184) = v52;
  *(v51 - 176) = (v50 + 1485989038) ^ v55;
  *(v51 - 160) = (v46 ^ 0x5B7FF379) - v55 + (v49 & 2) - 1342177360;
  *(v51 - 156) = v55 + v53 - 1074585656 + v54;
  *(v51 - 168) = a46;
  v56 = (*(v48 + 8 * (v50 ^ 0x10AC)))(v51 - 200);
  v57 = *(v51 - 200);
  LODWORD(STACK[0x2AC]) = v57;
  return (*(v48 + 8 * ((3254 * (v57 == -197604040)) ^ v50)))(v56);
}

uint64_t sub_1002346B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  a13 = v13 - 482210539 * (((&a13 | 0xD2043E74) - (&a13 & 0xD2043E74)) ^ 0x97DEE023) - 1164;
  v16 = (*(v14 + 8 * (v13 ^ 0x1A49u)))(&a13);
  return (*(v14 + 8 * (((a9 == (v13 ^ 0xAB4 ^ (v15 + 418))) * ((29 * (v13 ^ 0x9D1)) ^ 0x1490)) ^ v13)))(v16);
}

uint64_t sub_10023480C@<X0>(int a1@<W8>)
{
  v8 = LOWORD(STACK[0x95C]);
  if (v8 == 28091)
  {
    v11 = STACK[0x738];
    STACK[0x400] = v1;
    LODWORD(STACK[0x6FC]) = a1;
    return (*(v7 + 8 * ((100 * (((v11 + v2 == 0) ^ (89 * (v4 ^ 0x18))) & 1)) ^ (v4 + 1042))))();
  }

  else
  {
    if (v8 == 47589 || (v9 = v4, v8 == 43543))
    {
      STACK[0x400] = v1;
      v3 = 197629887;
      v9 = v4;
    }

    STACK[0x540] = 0;
    LODWORD(STACK[0x6FC]) = v5;
    return (*(v7 + 8 * ((((v9 - 209) ^ 0x724 ^ (243 * (v9 ^ 0x913))) * (v3 == v6)) | (v9 - 1810))))();
  }
}

uint64_t sub_1002348EC(uint64_t a1)
{
  v2 = *(a1 + 32) ^ (1462950173 * (a1 ^ 0xA798BA7));
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = 2079641419 * ((2 * (v8 & 0x11034020) - v8 + 1862057945) ^ 0x80540CF1);
  v9 = 1770566140 - v6;
  v10 = v5;
  v12 = v2 + 1956875778 + v6;
  v8[0] = v4;
  v8[1] = v3;
  result = (*(*(&off_1002ACDD0 + (v2 ^ 0x8B5C8397)) + (v2 ^ 0x8B5C91B2)))(v8);
  *(a1 + 16) = v11;
  return result;
}

uint64_t sub_100234A40(uint64_t a1, int a2, unsigned int a3)
{
  v7 = a2 + v4 + (((v6 ^ 0x42725D2F) - 1114791215) ^ ((v6 ^ 0x6C6606D) - 113664109) ^ ((((a3 ^ 0xF3A) - 1332942747) ^ v6) + 1332940678)) + 778839277;
  v8 = v5 + 1948904680;
  v9 = (v8 < 0x7E43E627) ^ (v7 < 0x7E43E627);
  v10 = v7 > v8;
  if (v9)
  {
    v10 = v7 < 0x7E43E627;
  }

  return (*(v3 + 8 * ((153 * !v10) ^ a3)))();
}

void sub_100234B50(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_1002ACDD0 + ((9 * (dword_1002B0258 ^ 0xC1 ^ qword_1002B0498)) ^ byte_1002862E0[byte_10027BA10[(9 * (dword_1002B0258 ^ 0xC1 ^ qword_1002B0498))] ^ 0x6C]) + 184);
  v4 = *(&off_1002ACDD0 + ((9 * (*v3 ^ qword_1002B0498 ^ 0xC1)) ^ byte_1002861E0[byte_10027B910[(9 * (*v3 ^ qword_1002B0498 ^ 0xC1))] ^ 0xEA]) - 95);
  v5 = 962355209 * ((*v3 - &v7 + *v4) ^ 0x6B7004B68F1138C1);
  *v3 = v5;
  *v4 = v5;
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v5) = 2079641419 * ((v9 & 0x29EA9639 | ~(v9 | 0x29EA9639)) ^ 0x38BDDAEE);
  v12 = v8;
  v10 = -504449362 - v5;
  v11 = 716720353 - v5;
  LODWORD(v4) = 962355209 * (*v3 ^ 0x8F1138C1 ^ *v4);
  v6 = *(&off_1002ACDD0 + ((9 * (dword_1002B0258 ^ 0xC1 ^ qword_1002B0498)) ^ byte_1002862E0[byte_10027BA10[(9 * (dword_1002B0258 ^ 0xC1 ^ qword_1002B0498))] ^ 0x78]) + 75);
  (*(v6 + 8 * ((byte_100296C24[(byte_1002908A8[v4 - 8] ^ 0xC2) - 4] ^ v4) + 4882)))(v9);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1002350F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x7F8] = v72;
  v73 = STACK[0x5F8];
  STACK[0x800] = STACK[0x5F8];
  return (*(a71 + 8 * (((v72 - v73 > (150 * (v71 ^ 0xC10u)) - 291) * ((309 * (v71 ^ 0xC19)) ^ 0xF72)) ^ v71)))();
}

uint64_t sub_100235154@<X0>(unint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v53 = a2 + 1468;
  STACK[0x4E0] = a1;
  *a1 = 5;
  *(a1 + 4) = 257;
  v54 = (*(v52 + 8 * ((a2 + 1468) ^ 0x1776)))(120, 0x1000040F604211FLL);
  STACK[0x8E8] = v54;
  return (*(a52 + 8 * (((v54 == 0) * (((v53 ^ 0x5B9) + 256) ^ (49 * (v53 ^ 0x5B9)))) ^ v53)))();
}

void sub_100235240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *v22 = a22;
  *(a22 + 8) = *(v23 + 8);
  *(v23 + 8) = a22;
  JUMPOUT(0x100228C84);
}

void sub_100235264(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1001C5540);
}

uint64_t sub_100235278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v67 == 197629572)
  {
    return (*(v69 + 8 * ((2159 * (*(STACK[0x5A8] + 97) == ((v68 + 106) ^ 0x87))) ^ (v68 - 2410))))();
  }

  if (v67 == -197604040)
  {
    v70 = *(STACK[0x3D0] + 24);
    STACK[0x4C0] = v70;
    return (*(v69 + 8 * (((v70 == 0) * (((a67 - 700424524) & 0x29BF9E5E) - 2536)) ^ (a67 - 1037))))();
  }

  else
  {
    LODWORD(STACK[0x318]) = v67;
    return (*(v69 + 8 * (v68 + 272)))();
  }
}

uint64_t sub_1002356F0()
{
  v2 = *(STACK[0x7C0] + 24);
  STACK[0x678] = v2;
  return (*(v1 + 8 * ((19 * (v2 != 0)) ^ (v0 + 718))))();
}

uint64_t sub_100235810@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  LODWORD(a37) = v64;
  LODWORD(STACK[0x424]) = a1;
  v66 = (*(v65 + 8 * (v63 ^ 0x11D0)))(a61 + 16, 0);
  v67 = *(a61 + 16);
  *(a61 + 4) = *(a61 + 24);
  *(a61 + 8) = v67;
  v68 = v63 ^ 0x11DF;
  *(a61 + 12) = (*(v65 + 8 * v68))(v66);
  v69 = (*(v65 + 8 * v68))();
  *a61 = v69;
  LODWORD(a48) = a63 - 4490;
  LODWORD(a46) = a63 - 4633;
  LODWORD(a44) = a63 - 4471;
  return sub_100235948(v69, v70, v71, v72, v73, v74, v75, v76, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100235948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v75 = *(v73 + 4 * (v68 - 1));
  *(v73 + 4 * v68) = *(a68 + 4 * v69) + v69 + ((1664525 * (v75 ^ (v75 >> 30))) ^ *(v73 + 4 * v68));
  *(v74 - 200) = v68 + 1 - v72;
  *(v74 - 164) = (v70 + 1821459848) ^ v72;
  *(v74 - 184) = a64;
  *(v74 - 172) = v72;
  *(v74 - 168) = v72 + v70 + 1821459848 - 427;
  *(v74 - 192) = ((v70 + 1821459848) & 0xEEBD57D0) + v72;
  *(v74 - 188) = a63 + v70;
  v76 = (*(v71 + 8 * (v70 ^ 0x171)))(v74 - 200);
  return (*(v71 + 8 * *(v74 - 176)))(v76);
}

uint64_t sub_100235A50()
{
  STACK[0x480] = 0;
  v3 = 1902663727 * ((~((v2 - 200) | 0xD97C32BF) + ((v2 - 200) & 0xD97C32BF)) ^ 0x50F95DD7);
  *(v2 - 200) = (v1 - 1874) ^ v3;
  *(v2 - 184) = &STACK[0x220];
  *(v2 - 176) = 0;
  *(v2 - 168) = v3 ^ 0x170B5AA2;
  *(v2 - 192) = &STACK[0x480];
  v4 = (*(v0 + 8 * (v1 ^ 0x1C77)))(v2 - 200);
  return (*(v0 + 8 * (((*(v2 - 164) != -197604040) * (((317 * (v1 ^ 0xF26) + 1781) | 0x20) - 4645)) ^ v1)))(v4);
}

uint64_t sub_100235B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(v13 + 8 * ((v12 - 3392) ^ 0x490)) - 8;
  v15 = *(v13 + 8 * (v12 - 4277));
  v16 = *(v13 + 8 * (v12 - 4238)) - 12;
  v17 = *(v14 + (v11[7] ^ 0xA4));
  v18 = *(v14 + (v11[11] ^ 0x74));
  v19 = *(v13 + 8 * ((v12 - 3392) ^ 0x457));
  v20 = *(v16 + (v11[5] ^ 0xD5));
  return sub_100235E18(v15, 764914787, 71, 53, (v18 ^ 0x61) & 0xFFFF00FF | ((((v11[10] ^ 0x1F) + *(v19 + (v11[10] ^ 0x91))) ^ 0x31) << 8), (v12 - 443), 209, (v17 ^ 0x50) & 0xFF0000FF | ((((v11[6] ^ 0xAD) + *(v19 + (v11[6] ^ 0x23))) ^ 0x77) << 8) | ((((v20 >> 4) | (16 * v20)) ^ 0xD1) << 16), a9, a10, a11, v19, v16, v15);
}

uint64_t sub_100235E18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X5>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, int a19, unsigned int a20)
{
  v166 = a3 | a2 ^ 0xFEF;
  v22 = (v20 + a3);
  v23 = *(a8 + (v22[9] ^ 0x7DLL));
  v24 = ((((v23 >> 4) | (16 * v23)) ^ 0xC8) << 16) | ((*(a9 + (v22[8] ^ 0x8DLL)) ^ 0x9E) << 24);
  v25 = *(a10 + (v22[7] ^ 0xCLL)) ^ 0x49;
  v26 = *(a8 + (v22[5] ^ 0xDLL));
  v27 = (((v26 >> 4) | (16 * v26)) ^ 0xF) << 16;
  v28 = *(a10 + (v22[15] ^ 0x3ALL)) ^ 0xAE;
  v29 = *(a8 + (v22[1] ^ 0x5CLL));
  v30 = (((*(a7 + (v22[2] ^ 0xD9)) + (v22[2] ^ 0x57)) ^ 0x1C) << 8) | ((((v29 >> 4) | (16 * v29)) ^ 0xE1) << 16);
  v31 = *(a8 + (v22[13] ^ 0x78));
  v32 = *(a10 + (v22[3] ^ 0x89)) ^ 0x58;
  v33 = v30 | ((*(a9 + (*v22 ^ 0xAALL)) ^ 0xA9) << 24) | v32;
  v34 = v27 & 0xFFFF00FF | (((*(a7 + ~v22[6]) + (v22[6] ^ 0x71)) ^ 0x14) << 8) | v25 | ((*(a9 + (v22[4] ^ 0xE2)) ^ 0x96) << 24);
  v35 = *(a10 + (v22[11] ^ 0x66)) ^ 0x38;
  v36 = v35 | v24 & 0xFFFF00FF | ((((v22[10] ^ 0x3E) + *(a7 + (v22[10] ^ 0xB0))) ^ 0x7D) << 8);
  v165 = (((*(a7 + (*(v20 + v166) ^ 0x8ALL)) + (*(v20 + v166) ^ 4)) ^ 0x25) << ((a2 - 53) ^ 0xA4)) + ((*(a9 + (v22[12] ^ 0xFBLL)) ^ 0x84) << 24) + ((((v31 >> 4) | (16 * v31)) ^ 0x24) << 16) + v28;
  v37 = v36 - 2 * (v36 & 0x1DF7459F ^ v35 & 1) - 1644739170;
  v38 = (v165 + 1132575630 - 2 * (v165 & 0x4381BB9F ^ v28 & 0x11111111)) ^ 0x24822862;
  v39 = v34 - 2 * (v34 & 0x7E7303BD ^ v25 & 0x18) - 26016859;
  v40 = v37 ^ 0xC132831D;
  v41 = (v33 - 2 * (v33 & 0x4964E85F ^ v32 & 0x1F) - 916133824) ^ 0x803030A0;
  v42 = *(v21 + 8 * (a2 ^ 0xFBA));
  v43 = *(v21 + 8 * (a2 ^ 0xF48)) - 8;
  v44 = *(v43 + 4 * BYTE2(v38));
  v45 = *(v21 + 8 * (a2 ^ 0xF1C)) - 12;
  v46 = *(v21 + 8 * (a2 ^ 0xF0D)) - 4;
  v47 = *(v45 + 4 * HIBYTE(v38));
  v48 = *(v46 + 4 * v38);
  v49 = *(v43 + 4 * BYTE2(v41)) ^ *(v45 + 4 * (HIBYTE(v39) ^ 0xA)) ^ *(v46 + 4 * v40) ^ (*(v42 + 4 * BYTE1(v38)) + a1);
  v50 = v44 ^ *(v45 + 4 * HIBYTE(v41)) ^ (*(v42 + 4 * BYTE1(v40)) + a1) ^ *(v46 + 4 * (v39 ^ 0xDCu)) ^ 0xF60514BD;
  v51 = (*(v42 + 4 * BYTE1(v41)) + a1) ^ *(v43 + 4 * (((v39 ^ 0x40FF4D93) >> 16) ^ 0x5Au)) ^ *(v45 + 4 * HIBYTE(v40)) ^ 0x4224B4B4 ^ v48;
  v52 = v47 ^ (*(v42 + 4 * (((v39 ^ 0x4D93) >> 8) ^ 0xBCu)) + a1) ^ *(v46 + 4 * v41) ^ *(v43 + 4 * BYTE2(v40)) ^ 0xCFA9BD81;
  v53 = *(v43 + 4 * BYTE2(v50));
  v54 = *(v43 + 4 * BYTE2(v52));
  v55 = *(v45 + 4 * HIBYTE(v50));
  v56 = a20 < 0x60DB94B;
  v57 = *(v43 + 4 * ((v49 ^ 0xE0548100) >> 16)) ^ *(v45 + 4 * HIBYTE(v51)) ^ (*(v42 + 4 * BYTE1(v50)) + a1) ^ *(v46 + 4 * v52) ^ 0x1F79927C;
  v58 = *(v43 + 4 * BYTE2(v51)) ^ *(v45 + 4 * HIBYTE(v52)) ^ *(v46 + 4 * v50) ^ (*(v42 + 4 * ((v49 ^ 0x8100) >> 8)) + a1) ^ 0x3084AEFD;
  v59 = v53 ^ *(v45 + 4 * (HIBYTE(v49) ^ 0xE0)) ^ (*(v42 + 4 * BYTE1(v52)) + a1) ^ *(v46 + 4 * v51) ^ 0xAB583275;
  v60 = v54 ^ v55 ^ *(v46 + 4 * v49) ^ (*(v42 + 4 * BYTE1(v51)) + a1) ^ 0x6EF77CA0;
  v61 = *(v43 + 4 * BYTE2(v57)) ^ *(v46 + 4 * v60) ^ (*(v42 + 4 * BYTE1(v59)) + a1) ^ *(v45 + 4 * HIBYTE(v58));
  v62 = *(v43 + 4 * BYTE2(v58));
  v63 = *(v46 + 4 * v58) ^ *(v45 + 4 * HIBYTE(v57)) ^ *(v43 + 4 * BYTE2(v59)) ^ (*(v42 + 4 * BYTE1(v60)) + a1) ^ 0x92807C1;
  v64 = *(v45 + 4 * HIBYTE(v59)) ^ *(v46 + 4 * v57) ^ (*(v42 + 4 * BYTE1(v58)) + a1) ^ *(v43 + 4 * BYTE2(v60)) ^ 0x78A6E91D;
  v65 = *(v45 + 4 * HIBYTE(v60)) ^ *(v46 + 4 * v59) ^ (*(v42 + 4 * BYTE1(v57)) + a1) ^ v62 ^ 0xC0195BE8;
  v66 = (v61 ^ 0x92F49BBF) >> 24;
  v67 = *(v42 + 4 * ((v61 ^ 0x9BBF) >> 8)) + a1;
  v68 = *(v46 + 4 * v65);
  v69 = *(v45 + 4 * HIBYTE(v64));
  v70 = *(v45 + 4 * HIBYTE(v65)) ^ *(v46 + 4 * v64) ^ *(v43 + 4 * ((v61 ^ 0x92F49BBF) >> 16)) ^ (*(v42 + 4 * BYTE1(v63)) + a1);
  v71 = *(v42 + 4 * BYTE1(v64)) + a1;
  LOBYTE(v65) = v70 ^ 0x34;
  v72 = *(v45 + 4 * HIBYTE(v63)) ^ (*(v42 + 4 * BYTE1(v65)) + a1) ^ *(v46 + 4 * (v61 ^ 0x49u)) ^ *(v43 + 4 * BYTE2(v64)) ^ 0xCC874914;
  v73 = HIBYTE(v72);
  v74 = v67 ^ *(v46 + 4 * v63) ^ v69 ^ *(v43 + 4 * BYTE2(v65)) ^ 0x5B615CB;
  v75 = v68 ^ *(v45 + 4 * v66) ^ v71 ^ *(v43 + 4 * BYTE2(v63)) ^ 0x26D53BB6;
  v76 = *(v46 + 4 * (v75 - ((2 * v75) & 0x1EC) + 246));
  v77 = *(v42 + 4 * (((v70 ^ 0x634) >> 8) ^ 2u)) + a1;
  v78 = *(v45 + 4 * HIBYTE(v74)) ^ *(v46 + 4 * v72) ^ *(v43 + 4 * (((v70 ^ 0x2FCB0634) >> 16) ^ 0xD5u));
  v79 = *(v43 + 4 * BYTE2(v75)) ^ *(v45 + 4 * (HIBYTE(v70) ^ 0xC6)) ^ (*(v42 + 4 * BYTE1(v72)) + a1) ^ *(v46 + 4 * ((v74 | 0xF6) ^ v74 & 0xF6));
  v80 = *(v43 + 4 * BYTE2(v72)) ^ *(v45 + 4 * HIBYTE(v75)) ^ (*(v42 + 4 * BYTE1(v74)) + a1);
  v81 = v78 ^ (*(v42 + 4 * BYTE1(v75)) + a1);
  v82 = v79 - 766726277 + (~(2 * v79) | 0x5B66A10B);
  v83 = *(v43 + 4 * BYTE2(v74)) ^ v77 ^ v76 ^ *(v45 + 4 * v73) ^ 0x7438FBE1;
  v84 = v80 ^ *(v46 + 4 * (v65 ^ 0xA8u));
  v85 = (v84 - ((2 * v84) & 0x247429C8) - 1841687324) ^ 0xC561C178;
  v86 = (v81 - ((2 * v81) & 0x6259B654) + 825023274) ^ 0x4F8D6D43;
  v87 = *(v43 + 4 * BYTE2(v83)) ^ *(v45 + 4 * HIBYTE(v85)) ^ (*(v42 + 4 * BYTE1(v86)) + a1) ^ *(v46 + 4 * (v82 ^ 0xD1u));
  v88 = *(v45 + 4 * HIBYTE(v86)) ^ *(v43 + 4 * (BYTE2(v82) ^ 0x9Du)) ^ *(v46 + 4 * v83) ^ (*(v42 + 4 * BYTE1(v85)) + a1);
  v89 = (*(v42 + 4 * BYTE1(v83)) + a1) ^ *(v46 + 4 * v86) ^ *(v43 + 4 * BYTE2(v85)) ^ *(v45 + 4 * ((v82 ^ 0x7A47A2D1u) >> 24));
  v90 = v89 ^ 0xAFD52D0D;
  v91 = *(v43 + 4 * BYTE2(v86)) ^ *(v45 + 4 * HIBYTE(v83)) ^ (*(v42 + 4 * ((v82 ^ 0xA2D1) >> 8)) + a1) ^ *(v46 + 4 * v85) ^ 0xB790EA40;
  v92 = v87 ^ 0x9E6A8943;
  if ((v89 & 0x40) != 0)
  {
    v93 = -64;
  }

  else
  {
    v93 = 64;
  }

  v94 = v93 + (v89 ^ 0x34);
  v95 = BYTE2(v88) ^ 0x79;
  v96 = (*(v42 + 4 * BYTE1(v92)) + a1) ^ *(v43 + 4 * (BYTE2(v90) ^ 0x85u)) ^ *(v45 + 4 * ((v88 ^ 0x6B791CFCu) >> 24));
  v97 = *(v42 + 4 * ((v88 ^ 0x1CFC) >> 8)) + a1;
  v98 = *(v46 + 4 * (v88 ^ 0xAu));
  v99 = *(v46 + 4 * v91);
  v100 = (*(v42 + 4 * (BYTE1(v90) ^ 0x3Bu)) + a1) ^ *(v45 + 4 * HIBYTE(v91)) ^ *(v46 + 4 * (v87 ^ 0xB5u));
  v101 = v96 ^ v99;
  v102 = v100 ^ *(v43 + 4 * v95);
  v103 = (*(v42 + 4 * BYTE1(v91)) + a1) ^ v98 ^ *(v45 + 4 * (HIBYTE(v89) ^ 0x29)) ^ *(v43 + 4 * BYTE2(v92)) ^ 0x31E88E15;
  v104 = v102 ^ 0x82;
  v105 = *(v43 + 4 * BYTE2(v91)) ^ v97 ^ *(v45 + 4 * HIBYTE(v92)) ^ *(v46 + 4 * (v94 ^ 0xB6u)) ^ 0x94F3C43D;
  v106 = v96 ^ v99 ^ 0xF820AD00;
  v107 = *(v43 + 4 * ((v102 ^ 0x61E07082u) >> 16));
  v108 = *(v45 + 4 * HIBYTE(v105));
  v109 = v96 ^ ~v99;
  v110 = __ROR4__(*(v45 + 4 * ((v102 ^ 0x61E07082u) >> 24)), 4);
  v111 = *(v46 + 4 * v103);
  v112 = *(v43 + 4 * BYTE2(v105)) ^ *(v45 + 4 * HIBYTE(v103)) ^ (*(v42 + 4 * (BYTE1(v102) ^ 0x51u)) + a1);
  v113 = *(v43 + 4 * BYTE2(v103)) ^ *(v45 + 4 * HIBYTE(v109));
  v114 = *(v46 + 4 * v105);
  v115 = v113 ^ *(v46 + 4 * v104) ^ (*(v42 + 4 * BYTE1(v105)) + a1);
  v116 = v112 ^ *(v46 + 4 * v101);
  v117 = v115 ^ 0xE9108984;
  v118 = *(v43 + 4 * BYTE2(v106)) ^ __ROR4__(v110 ^ 0xB3ABC9AC, 28) ^ v114 ^ (*(v42 + 4 * BYTE1(v103)) + a1) ^ 0x1975C181;
  v115 ^= 0x731B842Bu;
  LOBYTE(v103) = v116 ^ 0xEA;
  v119 = v107 ^ v108 ^ v111 ^ (*(v42 + 4 * BYTE1(v106)) + a1) ^ 0x481A3277;
  v120 = HIBYTE(v115);
  v121 = *(v42 + 4 * (((v116 ^ 0x44EA) >> 8) ^ 0xB6u)) + a1;
  v122 = *(v43 + 4 * (BYTE2(v117) ^ 0xD1u));
  v123 = *(v46 + 4 * (v117 ^ 0x59u)) ^ *(v43 + 4 * BYTE2(v119));
  v124 = *(v43 + 4 * BYTE2(v118)) ^ *(v45 + 4 * HIBYTE(v119)) ^ (*(v42 + 4 * BYTE1(v115)) + a1);
  v125 = *(v46 + 4 * v118) ^ *(v43 + 4 * (((v116 ^ 0x19AB44EA) >> 16) ^ 0x63u)) ^ (*(v42 + 4 * BYTE1(v119)) + a1) ^ *(v45 + 4 * v120);
  v126 = v123 ^ *(v45 + 4 * (HIBYTE(v116) ^ 0xB4)) ^ (*(v42 + 4 * BYTE1(v118)) + a1);
  v127 = v124 ^ *(v46 + 4 * (v103 ^ 2u));
  v128 = *(v45 + 4 * HIBYTE(v118));
  v129 = (v125 - ((2 * v125) & 0xFCFCF8D4) - 25265046) ^ 0x7F8B4DE0;
  v130 = (v126 - ((2 * v126) & 0x79192F62) - 1131636815) ^ 0x34BCC97A;
  v131 = v121 ^ v122 ^ *(v46 + 4 * v119) ^ 0x87DA950C ^ (v128 - ((2 * v128) & 0x225C1A48) - 1859252956);
  v132 = (v127 - ((2 * v127) & 0xAF0D5086) + 1468442691) ^ 0x7AA986C1;
  v133 = *(v21 + 8 * (a2 - 3848)) - 8;
  v134 = *(v133 + 4 * HIBYTE(v132));
  v135 = *(v133 + 4 * HIBYTE(v129));
  v136 = *(v21 + 8 * (a2 - 3729)) - 12;
  v137 = *(v133 + 4 * HIBYTE(v131));
  v138 = *(v21 + 8 * (a2 - 3801)) - 4;
  v139 = *(v138 + 4 * BYTE2(v129));
  v140 = v130;
  v141 = *(v138 + 4 * BYTE2(v131));
  v142 = *(v136 + 4 * BYTE1(v130));
  LODWORD(v133) = *(v133 + 4 * HIBYTE(v130));
  v143 = *(v138 + 4 * BYTE2(v130));
  v144 = *(v138 + 4 * BYTE2(v132));
  v145 = *(v21 + 8 * (a2 ^ 0xF2E)) - 8;
  v146 = v135 ^ a15 ^ v143 ^ *(v145 + 4 * v131);
  v147 = (1602863209 * *(v136 + 4 * BYTE1(v131))) ^ a18 ^ v133 ^ v144 ^ *(v145 + 4 * v129);
  v148 = 1602863209 * *(v136 + 4 * BYTE1(v129));
  v149 = (v146 ^ (1602863209 * *(v136 + 4 * BYTE1(v132)))) - ((2 * (v146 ^ (1602863209 * *(v136 + 4 * BYTE1(v132))))) & 0xC04A34A6) + 1613044307;
  LODWORD(v133) = v134 ^ a16 ^ *(v145 + 4 * v140) ^ v141;
  LOWORD(v129) = v149 ^ 0xE56B;
  v150 = (v147 - ((2 * v147) & 0x6B67AE88) + 900978500) ^ 0x9601EC69;
  v151 = ((v133 ^ v148) - ((2 * (v133 ^ v148)) & 0x63B1ED2A) - 1311181163) ^ 0x8CD7BF31;
  v152 = v137 ^ a17 ^ v139 ^ *(v145 + 4 * v132) ^ (1602863209 * v142);
  v153 = (v152 - ((2 * v152) & 0xB54C9270) + 1520847160) ^ 0xB44F6B34;
  v154 = v149 ^ 0x1207E1FD;
  v155 = *(v21 + 8 * (a2 ^ 0xEDD)) - 12;
  v22[4] = ((((v149 ^ 0x1207E1FD) >> 24) ^ 0xC5) + *(v155 + (((v149 ^ 0x1207E1FD) >> 24) ^ 0x6CLL))) ^ 0x77;
  v22[8] = ((BYTE3(v153) ^ 0xC0) + *(v155 + (BYTE3(v153) ^ 0x69))) ^ 0x30;
  v22[12] = (*(v155 + (HIBYTE(v151) ^ 0x79)) + (HIBYTE(v151) ^ 0xD0)) ^ 0xCD;
  v156 = *(v21 + 8 * (a2 - 4006));
  v157 = *(v156 + (((v149 ^ 0xB2D3E56B) >> 16) ^ 0x46));
  v22[5] = ((v157 >> 6) | (4 * v157)) ^ 0x21;
  v158 = *(v156 + (BYTE2(v151) ^ 0xBFLL));
  v22[13] = ((v158 >> 6) | (4 * v158)) ^ 0x25;
  v159 = *(v21 + 8 * (a2 - 4001)) - 8;
  v22[10] = *(v159 + (BYTE1(v153) ^ 0x76)) ^ 0x31;
  v22[2] = *(v159 + ((((v147 - ((2 * v147) & 0xAE88) - 10428) ^ 0xEC69) >> 8) ^ 0x61)) ^ 0x4D;
  v160 = *(v156 + (BYTE2(v153) ^ 0xF5));
  v22[9] = ((v160 >> 6) | (4 * v160)) ^ 0x79;
  v161 = *(v156 + (BYTE2(v150) ^ 0xC2));
  v22[1] = ((v161 >> 6) | (4 * v161)) ^ 0x5F;
  v162 = *(v21 + 8 * (a2 ^ 0xEB2)) - 12;
  v22[15] = v151 ^ 0xB3 ^ *(v162 + (v151 ^ 0x4CLL));
  v22[7] = v154 ^ *(v162 + (v129 ^ 0xA4)) ^ 0xEF;
  v22[11] = v153 ^ 0xD0 ^ *(v162 + (v153 ^ 0xE4));
  v22[3] = v150 ^ *(v162 + (v150 ^ 0xD1)) ^ 0xC;
  v22[6] = *(v159 + (BYTE1(v129) ^ 0x9BLL)) ^ 0xEF;
  *(a11 + v166) = *(v159 + (BYTE1(v151) ^ 0xB1)) ^ 0x78;
  *v22 = (*(v155 + (HIBYTE(v150) ^ 0x41)) + (HIBYTE(v150) ^ 0xE8)) ^ 0x6F;
  v163 = a3 + 101562715 < a20;
  if (v56 != a3 + 101562715 < 0x60DB94B)
  {
    v163 = a20 < 0x60DB94B;
  }

  return (*(a12 + 8 * ((7996 * v163) ^ a2)))(121, a1, v153, v154, 208, a2, v159, v56, a4, a5, a6, a7, a8);
}

uint64_t sub_100236FD4@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 - 204541883) & 0xC310FAF;
  v7 = (v2 ^ 0xFFFFFFFFFFFFF950 ^ (v6 + 168)) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((21 * ((v1 & 0xFFFFFFF8) - 8 != v2)) ^ v6)))();
}

void sub_1002370F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x518]) = v10;
  LODWORD(STACK[0x574]) = a8;
  LODWORD(STACK[0x564]) = v9;
  LODWORD(STACK[0x638]) = v8;
  JUMPOUT(0x100214B28);
}

uint64_t sub_100237420@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1898));

  return v3(v1);
}

uint64_t sub_1002374B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 != -1873045758 && v4 != 696739977 && v4 != 580159317)
  {
    JUMPOUT(0x100237458);
  }

  return sub_100237578(138, 70, 4294962729, a4, 335007431);
}

uint64_t sub_100237578@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W4>, int a4@<W8>)
{
  v15 = *(v14 + 8 * v10);
  v16 = (a3 + a4);
  *(v6 + v16) = *(v11 + (v16 & 0xC)) ^ HIBYTE(v9) ^ *(v12 + (v16 & 0xC) + 3) ^ (((a3 + a4) & 0xC) * v4) ^ *(v13 + (v16 & 0xC)) ^ v5;
  *(v6 + (v16 + 1)) = (((v16 + 1) & v7) * v4) ^ BYTE2(v9) ^ *(v11 + ((v16 + 1) & v7)) ^ *(((v16 + 1) & v7) + v12 + 3) ^ *(v13 + ((v16 + 1) & v7)) ^ v8;
  *(v6 + (v16 + 2)) = (((v16 + 2) & 0xE) * v4) ^ BYTE1(v9) ^ *(v11 + ((v16 + 2) & 0xELL)) ^ *(((v16 + 2) & 0xELL) + v12 + 3) ^ *(v13 + ((v16 + 2) & 0xELL)) ^ a1;
  *(v6 + (v16 + 3)) = v9 ^ ((v16 + 3) * v4) ^ *(v11 + (v16 + 3)) ^ *((v16 + 3) + v12 + 3) ^ *(v13 + (v16 + 3)) ^ a2;
  return v15();
}

uint64_t sub_1002376D4(uint64_t a1)
{
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * ((13 * (v4 != v1 - 6487 + v1 + 2705)) ^ (v1 + 736))))();
}

uint64_t sub_100237718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if (v12)
  {
    v16 = a12 == v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  return (*(v15 + 8 * ((v17 * ((((((v13 - 4048) | 0x1189) - 204480906) & 0xFD79FD7F) + 246813950) ^ (((v13 - 4048) | 0x1189) - 3929))) ^ ((v13 - 4048) | 0x1189))))();
}

uint64_t sub_100237838@<X0>(int a1@<W5>, unsigned int a2@<W6>, int a3@<W7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17, void *a18, _DWORD *a19)
{
  v29 = (v19 + 1811275753) & 0x940A24FF;
  *a17 = a4;
  v30 = ((v22 ^ ((v21 ^ v22) >> 11)) << 7) & 0x9D2C5680 ^ v22 ^ ((v21 ^ v22) >> 11);
  v31 = v20 ^ v19 ^ v30 ^ (v29 - 272237802) & (v30 << 15) ^ ((v20 ^ v19 ^ v30 ^ (v29 - 272237802) & (v30 << 15)) >> 18);
  v32 = (v24 + (v28 - 1));
  v33 = 495309039 * ((*(*a18 + (*a19 & a2)) ^ v32) & 0x7FFFFFFF);
  v34 = 495309039 * (v33 ^ HIWORD(v33));
  v35 = *(*(v25 + 8 * (v29 - 1066)) + ((v29 + 523) ^ 0x5A4 ^ (34 * (v29 ^ a1))) + (v34 >> 24) - 4) ^ *(*(v25 + 8 * (v29 ^ a3)) + (v34 >> 24)) ^ *(*(v25 + 8 * (v29 ^ v27)) + (v34 >> 24) - 11) ^ v34 ^ (BYTE3(v34) * v23);
  *v32 = v35 ^ v31;
  v36 = v28 != (v35 != v31);
  return (*(v26 + 8 * (((8 * v36) | (16 * v36)) ^ v29)))();
}

uint64_t sub_100237A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a49 + 360) = v74;
  v80 = (*(v77 + 8 * (v73 + 195)))(a1, 2, &STACK[0x228], v76, (v78 - 1548550918), v75, &a73, &a72);
  LODWORD(STACK[0x40C]) = v80;
  if (v80 == 268435459)
  {
    LODWORD(STACK[0x214]) = 197629440;
    return (*(v77 + 8 * (((a73 != 0) * ((a70 - 2853) ^ 0x711)) | (a70 - 888))))(v80, a73, v81, v82);
  }

  else
  {
    if (!v80)
    {
      JUMPOUT(0x1002054D4);
    }

    v84 = 2144428249 * ((((2 * (v79 - 200)) | 0x6E2A6A18) - (v79 - 200) - 924136716) ^ 0x356C2B00);
    *(v79 - 200) = (a70 - 458) ^ v84;
    *(v79 - 196) = (v80 - 197604040 - ((2 * v80) & 0xE8719A70)) ^ v84;
    *(v79 - 192) = &STACK[0x214];
    v85 = (*(v77 + 8 * (a70 + 208)))(v79 - 200);
    return (*(v77 + 8 * (((a73 != 0) * ((a70 - 2853) ^ 0x711)) | (a70 - 888))))(v85);
  }
}

void sub_100237C80(uint64_t a1)
{
  v1 = *(a1 + 8) - 89241791 * ((((2 * a1) | 0xDB0742F6) - a1 + 310140549) ^ 0x438271DD);
  v2 = *a1;
  v3 = *a1 + 48;
  v4 = 1841367943 * ((-988207047 - (&v6 | 0xC5192839) + (&v6 | 0x3AE6D7C6)) ^ 0x9B08D95A);
  v8 = v1 + v4 - 212;
  v6 = v4 ^ 0xA19FB67;
  v10 = v2;
  v7 = v3;
  v5 = *(&off_1002ACDD0 + (v1 ^ 0x7C1));
  (*(v5 + 8 * (v1 ^ 0x15C8)))(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100237FC8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v3 + v5) + ((2 * *(v3 + v5)) & 0x9A ^ (v1 - 60)) + 78;
  return (*(v4 + 8 * ((4 * (v5 != 0)) | ((v5 != 0) << 6) | v1)))();
}

uint64_t sub_100238090@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) + (~(2 * *(*(a1 + 8) + 12)) | 0x65) + 78;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((4912 * v4) ^ 0x2E4u)))(0);
}

void sub_1002380E0(uint64_t a1@<X8>)
{
  v5 = 206034421 * ((2 * ((v3 - 224) & 0x579CC9D8) - (v3 - 224) - 1469893081) ^ 0xB35283C6);
  *(v3 - 216) = a1;
  *(v3 - 208) = (((v2 ^ 0x34868FF0) - 881233904) ^ ((v2 ^ 0x7AD86E33) - 2061004339) ^ (((v1 + 145128653) ^ v2) - 145129305)) - v5 - 1738193658;
  *(v3 - 204) = v5 + v1 + 2571;
  (*(v4 + 8 * (v1 + 4289)))(v3 - 224);
  JUMPOUT(0x10020B984);
}

uint64_t sub_10023822C(uint64_t a1)
{
  v1 = *(a1 + 16) - 801279979 * (a1 ^ 0xC32E0D51);
  v2 = *a1;
  v6 = *(a1 + 8);
  v4 = v2;
  v5 = v1 - 1399592057 * ((((2 * &v4) | 0xAFC0ED52) - &v4 - 1474328233) ^ 0x10381EC6) + 61555638;
  return (*(*(&off_1002ACDD0 + (v1 ^ 0xFC54BFEC)) + (v1 ^ 0xFC54ADD6)))(&v4);
}

void sub_100238318(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (1186709341 * ((((2 * a1) | 0xAEA2DD84) - a1 - 1464954562) ^ 0x29AB872F));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002383E4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  *v22 = a22 + 1;
  v26 = *a14;
  *(v25 - 144) = a11 + a1 - 1300347965 + 7;
  *(v25 - 140) = a1 - a11 - 2450170;
  *(v24 + 8) = v26 - a11;
  *(v25 - 116) = (a1 - 1300347965) ^ a11;
  *(v24 + 24) = a10;
  *(v25 - 124) = a11;
  *(v25 - 120) = ((a1 - 1300347965) ^ 0x1E2) + a11;
  v27 = (*(v23 + 8 * (a1 ^ 0x15BE)))(v25 - 152);
  return (*(v23 + 8 * *(v25 - 128)))(v27);
}

uint64_t sub_100238538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  *(v20 - 136) = a14;
  *(v20 - 128) = v17;
  *(v20 - 120) = (v19 ^ 0xDC) + 1902663727 * a12 + 1164;
  *(v20 - 112) = v17;
  *(v20 - 104) = a17;
  v21 = (*(v18 + 8 * ((v19 ^ 0xDC) + 3499)))(v20 - 136);
  return (*(v18 + 8 * (((((((v19 ^ 0xDC) + 44) ^ (((a15 >> 1) & a13) == 0)) & 1) == 0) * ((((v19 ^ 0xDC) + 746) | 0x621) - 3431)) ^ ((v19 ^ 0xDC) + 2315))))(v21);
}

uint64_t sub_100238554()
{
  v7 = (16 * *(v2 + (v5 + 766 * (v0 >> 4)) % ((v0 & 0xD3 ^ 0x3D3) + (v0 & 0xD3)))) ^ 0xA0;
  v8 = 343 * (*(v2 + (v5 + (v0 & 0xF) * ((v1 ^ 0xF2) - 89)) % 0x3D3) ^ (v7 - ((2 * v7) & 0xC0) - 22) & 0xFE ^ 0xE);
  v9 = v4 + 766 * ((*(v3 + (v8 - 944 * ((4549754 * v8) >> 32))) >> 3) & 0xF ^ 0xB);
  *(v2 + 766 * v0 % 0x3D3) = (16 * *(v2 + (v9 - 979 * ((4387097 * v9) >> 32)))) ^ 0x4A;
  return (*(v6 + 8 * ((4449 * (v0 == 255)) ^ v1)))();
}

uint64_t sub_100238978@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = a1 ^ 0xA18;
  STACK[0x358] = *(v65 + 8 * v64);
  v67 = (*(v65 + 8 * (a1 ^ 0x1F8F)))(112, 0x100004098D10E67);
  STACK[0x5D8] = v67;
  return (*(a64 + 8 * (((v67 == 0) * ((v66 + 20) ^ 0x75F)) ^ v66)))(v67, v68, v69, v70, v71, v72, v73, v74, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_100238A28@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0x9A9A9A9A9A9A9A9ALL;
  v8.i64[1] = 0x9A9A9A9A9A9A9A9ALL;
  v9.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v9.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  *(v7 - 15) = vaddq_s8(vaddq_s8(*(v5 - 15), v9), vmvnq_s8(vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)));
  *(v7 - 31) = vaddq_s8(vaddq_s8(v6, v9), vmvnq_s8(vandq_s8(vaddq_s8(v6, v6), v8)));
  return (*(v4 + 8 * (((v1 == 96) * ((v3 - 1829) ^ 0x26F)) ^ v3)))();
}

uint64_t sub_100238AA4(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 23;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_100238AC4(uint64_t a1)
{
  v1 = 1841367943 * ((-2 - ((a1 | 0x2CC14849) + (~a1 | 0xD33EB7B6))) ^ 0x72D0B92A);
  v2 = *(a1 + 24) ^ v1;
  v3 = *(a1 + 40) + v1;
  v4 = *(a1 + 32);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 44) - v1;
  v8 = *(&off_1002ACDD0 + (v2 ^ 0x58926925));
  if (v3 == 192934704 || v3 == 192934701)
  {
    __asm { BRAA            X19, X17 }
  }

  v10 = *(a1 + 48);
  v11 = 1902663727 * ((((2 * &v15) | 0x64FE1E2A) - &v15 + 1300295915) ^ 0xC4059F82);
  v12 = v2 - 1485985733;
  v18 = v12 + v11;
  v19 = v6;
  v21 = v4;
  v20 = v7 - v11 - 248559394;
  v16 = v10;
  v17 = v5;
  result = (*(v8 + 8 * (v12 + 696)))(&v15);
  *a1 = v15;
  return result;
}

uint64_t sub_100238E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x20C]) = v72;
  v78 = (a21 ^ 0xA23FC120) & (2 * ((v73 ^ 0xA4BFE385) & a21)) ^ (v73 ^ 0xA4BFE385) & a21;
  v79 = ((2 * (a21 ^ 0xEB5B4100)) ^ 0x9FC94060) & (a21 ^ 0xEB5B4100) ^ (2 * (a21 ^ 0xEB5B4100)) & 0x4FE4A030;
  v80 = v79 ^ 0x4024A010;
  v81 = (v79 ^ 0x47C02010) & (4 * v78) ^ v78;
  v82 = ((4 * v80) ^ 0x3F9280C0) & v80 ^ (4 * v80) & 0x4FE4A030;
  v83 = (v82 ^ 0xF808010) & (16 * v81) ^ v81;
  v84 = ((16 * (v82 ^ 0x40642030)) ^ 0xFE4A0300) & (v82 ^ 0x40642030) ^ (16 * (v82 ^ 0x40642030)) & 0x4FE4A030;
  v85 = v83 ^ 0x4FE4A030 ^ (v84 ^ 0x4E400030) & (v83 << 8);
  v86 = ((((v77 - 200) | 0xB2C40409) - (v77 - 200) + ((v77 - 200) & 0x4D3BFBF0)) ^ 0xC4BE949E) * v76;
  *(v77 - 176) = (v73 - 152) ^ v86;
  *(v77 - 192) = (a21 ^ (2 * ((v85 << 16) & 0x4FE40000 ^ v85 ^ ((v85 << 16) ^ 0x20300000) & (((v84 ^ 0x1A4A030) << 8) & 0x4FE40000 ^ 0xB440000 ^ (((v84 ^ 0x1A4A030) << 8) ^ 0x64A00000) & (v84 ^ 0x1A4A030)))) ^ 0x829A9E7D) + v86;
  *(v77 - 184) = &STACK[0x17C0];
  *(v77 - 136) = v86 + ((v73 + 3405) | 0x238) + (v72 ^ 0xF77D75DE) + ((2 * v72) & 0xEEFAEBBC) + 999804038;
  *(v77 - 200) = a22;
  *(v77 - 168) = &STACK[0x2D8];
  *(v77 - 152) = &STACK[0x1780];
  *(v77 - 144) = &a72;
  v87 = (*(v74 + 8 * (v73 + 4288)))(v77 - 200);
  v88 = *(v77 - 160);
  LODWORD(STACK[0x2AC]) = v88;
  return (*(v74 + 8 * ((3330 * (v88 == v75)) ^ v73)))(v87);
}

void sub_1002390B4(uint64_t a1)
{
  v1 = 1902663727 * ((-2 - ((a1 | 0x7C1FFD4A) + (~a1 | 0x83E002B5))) ^ 0xF59A9222);
  v2 = *(a1 + 24) ^ v1;
  v3 = *(a1 + 64) - v1;
  v4 = *a1;
  v5 = 1902663727 * ((((2 * &v10) | 0x59A2DE2) - &v10 + 2100488463) ^ 0xF4B78666);
  v6 = 1232640785 * ((((*(a1 + 8) - v1) ^ 0x8AF8B5A) - 145722202) ^ (((*(a1 + 8) - v1) ^ 0x560385ED) - 1443071469) ^ (((*(a1 + 8) - v1) ^ 0xE700319A) + 419417702)) + 1171377779;
  v16 = &v8;
  v14 = &v9;
  v15 = v6 ^ v5;
  v10 = v4;
  v11 = v3 - v5 - 166427769;
  v12 = v5 ^ (v2 + 2080);
  v7 = *(&off_1002ACDD0 + v2 - 267);
  (*(v7 + 8 * (v2 + 4323)))(&v10);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100239260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v51 = STACK[0x3F0];
  v52 = STACK[0x374];
  v53 = 1462950173 * ((v50 - 200) ^ 0xA798BA7);
  LOBYTE(STACK[0x1880]) = 29 * ((v50 + 56) ^ 0xA7) - 14;
  *(v50 - 168) = a14;
  *(v50 - 160) = v47 - v53 - 940;
  *(v50 - 152) = v51;
  *(v50 - 136) = &STACK[0x38C];
  *(v50 - 196) = (v46 ^ 0xAF57EB7F) - v53 + v49 + 2059272076;
  *(v50 - 176) = v53 + ((v47 - 2077) | 0x1005) + (47 * (v47 ^ 0xA1D) + 1875404377) * v52 + 1414678237;
  *(v50 - 192) = a46;
  *(v50 - 184) = a25;
  v54 = (*(v48 + 8 * (v47 ^ 0x1908)))(v50 - 200);
  v55 = *(v50 - 200);
  LODWORD(STACK[0x2AC]) = v55;
  return (*(v48 + 8 * ((117 * (v55 == -197604040)) ^ v47)))(v54);
}

uint64_t sub_10023948C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v24 = 1902663727 * ((v23 - 0x4839AA79E9FD5D9BLL - 2 * ((v23 - 152) & 0xB7C655861602A2FDLL)) ^ 0x1133C7DB6078326ALL);
  *(v22 + 48) = (a1 ^ (v20 - 1780) ^ 3u) + v24;
  *(v23 - 124) = a18 + 1902663727 * ((v23 + 369271397 - 2 * ((v23 - 152) & 0x1602A2FD)) ^ 0x6078326A);
  *(v23 - 132) = 1902663727 * ((v23 + 369271397 - 2 * ((v23 - 152) & 0x1602A2FD)) ^ 0x6078326A) + v20 + 919318479;
  *(v23 - 128) = 1902663727 * ((v23 + 369271397 - 2 * ((v23 - 152) & 0x1602A2FD)) ^ 0x6078326A) + a19 - 92;
  *(v22 + 16) = (v19 + 1) - v24;
  *(v23 - 136) = a19 - 1902663727 * ((v23 + 369271397 - 2 * ((v23 - 152) & 0x1602A2FD)) ^ 0x6078326A);
  *(v23 - 152) = (1902663727 * ((v23 + 369271397 - 2 * ((v23 - 152) & 0x1602A2FD)) ^ 0x6078326A)) ^ 1;
  v25 = (*(v21 + 8 * (v20 + 3067)))(v23 - 152);
  return (*(v21 + 8 * *(v23 - 120)))(v25);
}

uint64_t sub_100239554(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  ++LODWORD(STACK[0x66C]);
  LODWORD(STACK[0x604]) = STACK[0x638];
  LODWORD(STACK[0x638]) = STACK[0x648];
  v200 = STACK[0x650];
  LODWORD(STACK[0x5F8]) = STACK[0x63C];
  LODWORD(STACK[0x648]) = STACK[0x610];
  LODWORD(STACK[0x63C]) = STACK[0x61C];
  v201 = STACK[0x628];
  v202 = STACK[0x608];
  v203 = STACK[0x62C];
  v204 = STACK[0x630];
  LODWORD(STACK[0x5BC]) = STACK[0x5F0];
  v205 = STACK[0x5E8];
  LODWORD(STACK[0x650]) = v194;
  v9 = STACK[0x620];
  v10 = (LODWORD(STACK[0x620]) + 140) | 0x860;
  HIDWORD(v12) = v195;
  LODWORD(v12) = v195;
  v11 = v12 >> 6;
  v14 = __PAIR64__(v205, __ROR4__(v195, 11));
  v13 = v11 ^ v14;
  LODWORD(v14) = v205;
  v15 = v13 ^ __ROR4__(v195, 25);
  v16 = (v14 >> 6) ^ __ROR4__(v205, 11) ^ __ROR4__(v205, 25);
  LODWORD(STACK[0x62C]) = v204;
  LODWORD(STACK[0x628]) = v202;
  LODWORD(STACK[0x608]) = v195;
  v17 = (v202 ^ v201) & v195 ^ v203 ^ v205 & (v204 ^ v203);
  LODWORD(STACK[0x630]) = v205;
  v18 = v203 & v195 ^ v201 ^ v204 & v195 ^ v205 & (v202 ^ v201);
  v19 = v192 ^ (v198 - 1833810911);
  LODWORD(STACK[0x5B8]) = ((v15 ^ a8) - a8) ^ ((v15 ^ v197) - v197) ^ (((v198 - 1833810911) ^ v199 ^ v16 ^ v15) - ((v198 - 1833810911) ^ v199 ^ v16));
  LODWORD(STACK[0x5AC]) = v10;
  v20 = v197 + (v10 ^ 0x7DEE19C8);
  v21 = v196 - v19;
  v22 = v196 - v19 + 929133404;
  v23 = v193 ^ a8;
  v24 = v20 - (v193 ^ a8);
  v25 = a6 + v198 + 1844321022;
  v26 = a8 - 616835363;
  v27 = a8 - 616835363 + a5;
  v28 = (v193 ^ a8) - 66158611;
  v29 = v28 ^ v27;
  v30 = v198 - 616835363 + v19 - 66158611;
  v31 = v28 - v24;
  v32 = v28 + v26;
  v33 = (v19 - 66158611) ^ v25;
  v34 = ((v18 ^ (v28 + v26)) - (v28 + v26)) ^ ((v18 ^ v24) - v24) ^ (((v30 - 1833810911) ^ v22 ^ v17 ^ v18) - ((v30 - 1833810911) ^ v22 ^ v17));
  v35 = v21 - v33;
  v36 = *(&off_1002ACDD0 + (v9 ^ 0x488)) - 8;
  v37 = *&v36[4 * (LODWORD(STACK[0x66C]) ^ 0x1B)];
  v38 = 181 * LODWORD(STACK[0x66C]);
  v39 = STACK[0x66C];
  LODWORD(STACK[0x66C]) = STACK[0x66C];
  LOWORD(v27) = (v38 + 12308) % 0x114u;
  v40 = v29 - 236351065 + v31;
  LODWORD(STACK[0x5CC]) = v40;
  v41 = *&v36[4 * (v39 ^ 0x22) + 272];
  LODWORD(v36) = v24 - v29;
  v42 = v192 - 977029296 + LODWORD(STACK[0x65C]);
  v43 = v30 - v33 - 256841231;
  v44 = v32 - v29 + 1576969680;
  v45 = v19 - v21 + v33 - 1231643080;
  LODWORD(STACK[0x5D4]) = v45;
  v46 = STACK[0x660];
  v47 = *(STACK[0x660] + 4 * ((v38 + 24616) % 0x114u));
  v48 = v29 - 873997663;
  LODWORD(STACK[0x65C]) = v42 + v19 - 66158611 + v17 + v16 + ((v41 + 917910228) ^ 0xF8C4A05) + (v47 ^ 0x48B89B3F) + ((2 * v47) & 0x9171367E);
  v49 = STACK[0x650];
  HIDWORD(v14) = STACK[0x650];
  LODWORD(v14) = STACK[0x650];
  v50 = v14 >> 2;
  v52 = __PAIR64__(a3, __ROR4__(STACK[0x650], 13));
  v51 = v50 ^ v52;
  LODWORD(v52) = a3;
  v53 = v51 ^ __ROR4__(STACK[0x650], 22);
  v54 = (v52 >> 13) ^ __ROR4__(a3, 2) ^ __ROR4__(a3, 22);
  LODWORD(STACK[0x5E4]) = v54;
  v55 = STACK[0x63C];
  v56 = STACK[0x638];
  v57 = STACK[0x648];
  v58 = v200 & STACK[0x638] ^ v200 & a3 ^ STACK[0x63C] & a3 ^ v49 & STACK[0x638] ^ (v49 ^ LODWORD(STACK[0x63C])) & STACK[0x648];
  v59 = (v35 + 471651038) ^ v43;
  v60 = (v53 ^ v59 ^ v54) - (v59 ^ v54);
  v61 = STACK[0x63C] & v200;
  LODWORD(STACK[0x5D8]) = ((v53 ^ v44) - v44) ^ ((v53 ^ (v36 - 457482366)) - (v36 - 457482366)) ^ v60;
  LODWORD(STACK[0x610]) = a3;
  LODWORD(STACK[0x61C]) = v200;
  v62 = (v57 ^ a3) & v56 ^ v57 & a3 ^ v61 ^ v49 & (v55 ^ v200);
  LODWORD(STACK[0x5D0]) = v62;
  v63 = v48 + v36 - 457482366;
  v64 = v33 - 873997663 + v35 + 471651038;
  v65 = v45 - v64;
  v66 = v45 - v64 + v59;
  v35 += 533032605;
  v67 = (v45 - v64) ^ v64;
  v68 = v35 - v66;
  v69 = v65 + v35;
  v70 = v40 - v63 + (v44 ^ (v36 - 457482366));
  v71 = ((v58 ^ v70) - v70) ^ (((v35 - v66) ^ v66 ^ v62 ^ v58) - ((v35 - v66) ^ v66 ^ v62));
  v72 = v36 - 396100799;
  LODWORD(v36) = (v40 - v63) ^ v63;
  v73 = v40 - v63 + v72;
  v74 = v72 - v70;
  v75 = v68 + v69;
  LODWORD(STACK[0x5C0]) = v69;
  LODWORD(STACK[0x5C8]) = v71 ^ ((v58 ^ v74) - v74);
  v76 = v74 + v73;
  LODWORD(STACK[0x5C4]) = v73;
  v77 = v36 ^ 0xB51F18C1;
  v78 = v70 - (v36 ^ 0xB51F18C1) - v76;
  v79 = v78 ^ v76;
  v80 = ((v78 ^ v201) - v78) ^ ((v75 ^ v203 ^ v201) - (v75 ^ v203)) ^ ((v79 ^ v201) - v79);
  v81 = v67 ^ 0xB51F18C1;
  v82 = v66 - (v67 ^ 0xB51F18C1) - v75;
  v83 = v82 ^ v75;
  v84 = v83 + v82;
  v85 = 1449495210 - (v67 ^ 0xB51F18C1) + v83;
  v86 = v36 + v73;
  LODWORD(STACK[0x5F0]) = (v36 ^ 0xB51F18C1) - (v36 + v73) - 2103992824 + v80;
  v87 = v79 + v78;
  LODWORD(v36) = 1449495210 - (v36 ^ 0xB51F18C1) + v79;
  v88 = v84 + v85;
  v89 = v85 + 752704179;
  v90 = STACK[0x604];
  v91 = ((v85 + 752704179) ^ LODWORD(STACK[0x604]) ^ v88 ^ LODWORD(STACK[0x5F8])) - ((v85 + 752704179) ^ LODWORD(STACK[0x604]) ^ v88);
  v92 = v87 + v36;
  v93 = v36 + 752704179;
  v94 = (((v36 + 752704179) ^ LODWORD(STACK[0x5F8])) - (v36 + 752704179)) ^ (((v87 + v36) ^ LODWORD(STACK[0x5F8])) - (v87 + v36)) ^ v91;
  v95 = LODWORD(STACK[0x5BC]) - v193;
  v96 = *(v46 + 4 * v27);
  v97 = v69 + v67;
  LODWORD(STACK[0x5F8]) = v203 + v97 - v81;
  v98 = v81 - 1516095274 + v88;
  v99 = v98 + v97;
  LODWORD(v36) = v98 - 1304599131 + v88;
  LODWORD(STACK[0x5BC]) = v36;
  v100 = v77 - 1516095274 + v92;
  LODWORD(STACK[0x5E8]) = (v98 - 1304599131) ^ v89;
  v101 = v95 - v23 + ((v37 + 89074075) ^ 0x43D2602F) + LODWORD(STACK[0x5B8]) + v34 - 1526293026 + v96;
  LODWORD(STACK[0x604]) = v101;
  LODWORD(STACK[0x5B8]) = v36 + v99;
  v102 = v36 + v99 + v98 - 1304599131 - (v100 + v86) + v94 + v101;
  LODWORD(v36) = v100 - 1304599131 + v92 + v100 + v86;
  v103 = STACK[0x678];
  v104 = ((((*(STACK[0x678] + (123 * (HIBYTE(v102) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 8) ^ ((*(STACK[0x678] + (123 * (v102 >> 28) - 22609) % 0x3BBu) ^ 0xFC) << 12) | *(STACK[0x678] + (123 * (BYTE2(v102) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 8) ^ ((*(STACK[0x678] + (123 * ((v102 >> 20) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 12);
  v105 = v104 | *(STACK[0x678] + (123 * ((v102 >> 8) & 0xF) - 22609) % 0x3BBu) ^ 0xFC;
  LODWORD(v46) = (v105 << 8) ^ ((*(STACK[0x678] + (123 * (v102 >> 12) - 22609) % 0x3BBu) ^ 0xFC) << 12);
  v106 = *(STACK[0x678] + (123 * (v102 & 0xF) - 22609) % 0x3BBu) ^ 0xFC;
  v107 = *(STACK[0x678] + (123 * (v102 >> 4) - 22609) % 0x3BBu) ^ ((v46 | v106) >> 4);
  LODWORD(STACK[0x5B4]) = v36 + v100 - 1304599131;
  v108 = v99 + v90 - (v36 + v100 - 1304599131) + LODWORD(STACK[0x65C]);
  v109 = ((*(v103 + (123 * (HIBYTE(v108) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 8) ^ ((*(v103 + (123 * (v108 >> 28) - 22609) % 0x3BBu) ^ 0xFC) << 12);
  v110 = ((v109 | *(v103 + (123 * (BYTE2(v108) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 8) ^ ((*(v103 + (123 * ((v108 >> 20) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 12);
  v111 = ((v110 | *(v103 + (123 * ((v108 >> 8) & 0xF) - 22609) % 0x3BBu) ^ 0xFC) << 8) ^ ((*(v103 + (123 * (v108 >> 12) - 22609) % 0x3BBu) ^ 0xFC) << 12);
  LOWORD(v88) = (123 * (v108 >> 4) - 22609) % 0x3BBu;
  v112 = 123 * ((v56 & 0x15D ^ 0x15D) + (v56 & 0x15D) + (v108 & 0xF));
  v113 = *(v103 + (v112 - 955 * ((4497348 * v112) >> 32))) ^ 0xFC;
  LOBYTE(v88) = *(v103 + v88) ^ ((v111 | v113) >> 4);
  v114 = 123 * (v106 & 0xF | (16 * (v113 & 0xF)));
  LOWORD(v91) = (v114 + 8856) % 0x3BBu;
  v115 = 123 * (*(v103 + (v114 + 45633 - 955 * ((4497348 * (v114 + 45633)) >> 32))) ^ LODWORD(STACK[0x60C]) ^ 0xFC);
  v116 = v115 + 45633 - 955 * ((4497348 * (v115 + 45633)) >> 32);
  v117 = ~*(v103 + (v115 + 8856 - 955 * ((4497348 * (v115 + 8856)) >> 32)));
  v118 = ((v117 >> 4) - ((v117 >> 3) & 0x18) - 4) ^ *(v103 + v91);
  LOBYTE(v88) = v88 ^ 0xFC;
  LOBYTE(v117) = v107 ^ 0xFC;
  v119 = 123 * ((v107 ^ 0xFC) & 0xF | (16 * (v88 & 0xF)));
  v120 = 123 * (*(v103 + (v119 + 45633 - 955 * ((4497348 * (v119 + 45633)) >> 32))) ^ (16 * (*(v103 + (123 * v118 + 45633 - 955 * ((4497348 * (123 * v118 + 45633)) >> 32))) ^ 0xFC)) ^ 0xFC);
  v121 = v120 + 45633 - 955 * ((4497348 * (v120 + 45633)) >> 32);
  v122 = ~*(v103 + (v120 + 8856 - 955 * ((4497348 * (v120 + 8856)) >> 32)));
  v123 = 123 * (((v122 >> 4) - ((v122 >> 3) & 0x18) - 4) ^ *(v103 + (v119 + 8856) % 0x3BBu)) + 45633;
  v124 = 123 * (v88 & 0xF0 | (v117 >> 4));
  LOWORD(v119) = (v124 + 8856) % 0x3BBu;
  v125 = 123 * (*(v103 + (v124 + 45633 - 955 * ((4497348 * (v124 + 45633)) >> 32))) ^ (16 * (*(v103 + (v123 - 955 * ((4497348 * v123) >> 32))) ^ 0xFC)) ^ 0xFC);
  v126 = v125 + 45633 - 955 * ((4497348 * (v125 + 45633)) >> 32);
  v127 = ~*(v103 + (v125 + 8856 - 955 * ((4497348 * (v125 + 8856)) >> 32)));
  v128 = 123 * (((v127 >> 4) - ((v127 >> 3) & 0x18) - 4) ^ *(v103 + v119)) + 45633;
  v129 = 123 * ((v111 >> 8) & 0xF0 | (v46 >> 12));
  v130 = *(v103 + (v129 + 45633 - 955 * ((4497348 * (v129 + 45633)) >> 32))) ^ (16 * (*(v103 + (v128 - 955 * ((4497348 * v128) >> 32))) ^ 0xFC));
  LOWORD(v128) = (v129 + 8856) % 0x3BBu;
  v131 = 123 * (v130 ^ 0xFC);
  v132 = ((*(v103 + (v131 + 45633 - 955 * ((4497348 * (v131 + 45633)) >> 32))) ^ 0xFC) << 12) ^ ((*(v103 + v126) ^ 0xFC) << 8);
  v133 = ~*(v103 + (v131 + 8856 - 955 * ((4497348 * (v131 + 8856)) >> 32)));
  v134 = 123 * (((v133 >> 4) - ((v133 >> 3) & 0x18) - 4) ^ *(v103 + v128)) + 45633;
  v135 = *(v103 + (v134 - 955 * ((4497348 * v134) >> 32)));
  v136 = (v111 >> 12) & 0xF0 | WORD1(v46) & 0xF;
  v137 = (v111 >> 12) & 0xF0 | WORD1(v46) & 0xA;
  v138 = (v135 & 0x7B ^ 0x78 | v135 & 0x7B ^ 3) * (v136 - 307669680 + (((v137 ^ 0x558C20FA) + v137) ^ 0x47DA8CD9));
  v139 = 123 * (*(v103 + (v138 - 955 * ((4497348 * v138) >> 32))) ^ (16 * (v135 ^ 0xFC)) ^ 0xFC);
  v140 = v139 + 45633 - 955 * ((4497348 * (v139 + 45633)) >> 32);
  v141 = ~*(v103 + (v139 + 8856 - 955 * ((4497348 * (v139 + 8856)) >> 32)));
  v142 = 123 * (((v141 >> 4) - ((v141 >> 3) & 0x18) - 4) ^ *(v103 + (123 * v136 + 8856) % 0x3BBu)) + 45633;
  v143 = 123 * ((v110 >> 8) & 0xF0 | (v104 >> 12));
  v144 = 123 * (*(v103 + (v143 + 45633 - 955 * ((4497348 * (v143 + 45633)) >> 32))) ^ (16 * (*(v103 + (v142 - 955 * ((4497348 * v142) >> 32))) ^ 0xFC)) ^ 0xFC);
  v145 = v144 + 45633 - 955 * ((4497348 * (v144 + 45633)) >> 32);
  v146 = *(v103 + (v144 + 8856 - 955 * ((4497348 * (v144 + 8856)) >> 32))) ^ 0xFF;
  v147 = 123 * (((~(v146 >> 3) | 0xE7) + (v146 >> 4) - 3) ^ *(v103 + (v143 + 8856) % 0x3BBu)) + 45633;
  v148 = 123 * ((v110 >> 12) & 0xF0 | HIWORD(v104) & 0xF);
  v149 = 123 * (*(v103 + (v148 + 45633 - 955 * ((4497348 * (v148 + 45633)) >> 32))) ^ (16 * (*(v103 + (v147 - 955 * ((4497348 * v147) >> 32))) ^ 0xFC)) ^ 0xFC);
  v150 = v149 + 45633 - 955 * ((4497348 * (v149 + 45633)) >> 32);
  v151 = ~*(v103 + (v149 + 8856 - 955 * ((4497348 * (v149 + 8856)) >> 32)));
  v152 = 123 * (((v151 >> 4) - ((v151 >> 3) & 0x18) - 4) ^ *(v103 + (v148 + 8856) % 0x3BBu)) + 45633;
  v153 = 123 * ((v109 >> 8) & 0xF0 | (v105 >> 20) & 0xF) + 45633;
  v154 = 123 * (*(v103 + (v153 - 955 * ((4497348 * v153) >> 32))) ^ (16 * (*(v103 + (v152 - 955 * ((4497348 * v152) >> 32))) ^ 0xFC)) ^ 0xFC) + 45633;
  v155 = v154 - 955 * ((4497348 * v154) >> 32);
  v156 = *(v103 + v116) ^ 0xFC;
  v157 = v156 ^ (16 * (*(v103 + v121) ^ 0xFC));
  v158 = 123 * (v106 & 0xF | (16 * (v156 & 0xF))) + 85731;
  v159 = v158 - 955 * ((4497348 * v158) >> 32);
  v160 = 123 * (v157 & 0xF0 | v117 & 0xF) + 85731;
  v161 = v160 - 955 * ((4497348 * v160) >> 32);
  v162 = v132 ^ v157;
  v163 = v132 ^ v157 ^ ((*(v103 + v140) ^ 0xFC) << 16);
  v164 = 123 * ((v162 >> 4) & 0xF0 | (v117 >> 4)) + 85731;
  v165 = 123 * ((v132 >> 8) & 0xF0 | (v46 >> 12)) + 85731;
  v166 = v163 ^ ((*(v103 + v145) ^ 0xFC) << 20);
  v167 = ((*(v103 + (v165 - 955 * ((4497348 * v165) >> 32))) ^ 0xFC) << 12) ^ ((*(v103 + (v164 - 955 * ((4497348 * v164) >> 32))) ^ 0xFC) << 8);
  v168 = 123 * ((v163 >> 12) & 0xF0 | WORD1(v46) & 0xF) + 85731;
  v169 = v166 ^ ((*(v103 + v150) ^ 0xFC) << 24);
  v170 = 123 * (HIWORD(v166) & 0xF0 | (v104 >> 12)) + 85731;
  v171 = v169 ^ ((*(v103 + v155) ^ 0xC) << 28);
  v172 = 123 * ((v169 >> 20) & 0xF0 | HIWORD(v104) & 0xF) + 85731;
  v173 = ((*(v103 + (v172 - 955 * ((4497348 * v172) >> 32))) ^ 0xFC) << 24) ^ ((*(v103 + (v170 - 955 * ((4497348 * v170) >> 32))) ^ 0xFC) << 20);
  v174 = 123 * (HIBYTE(v171) & 0xF0 | (v105 >> 20) & 0xF) + 85731;
  v175 = v174 - 955 * ((4497348 * v174) >> 32);
  v176 = *(v103 + v159);
  v177 = v176 ^ (16 * (*(v103 + v161) ^ 0xFC)) ^ 0xFC;
  v178 = (v177 | ((*(v103 + (v168 - 955 * ((4497348 * v168) >> 32))) ^ 0xFC) << 16)) ^ v167;
  v179 = v173 ^ v178;
  v180 = (v100 - 1304599131) ^ v93;
  v181 = ((*(v103 + (123 * (HIBYTE(v179) & 0xF) - 24700) % 0x3BBu) ^ 0xFC) << 8) ^ ((*(v103 + (123 * ((v179 ^ ((*(v103 + v175) ^ 0xC) << 28)) >> 28) - 24700) % 0x3BBu) ^ 0xC) << 12) | *(v103 + (123 * (BYTE2(v178) & 0xF) - 24700) % 0x3BBu) ^ 0xFC;
  v182 = v36 + v180;
  v180 += 1593427023;
  v183 = *(v103 + (123 * ((v179 >> 20) & 0xF) - 24700) % 0x3BBu) ^ 0xFC;
  v184 = *(v103 + (123 * (v167 >> 12) - 24700) % 0x3BBu) ^ 0xFC;
  v185 = *(v103 + (123 * ((v178 >> 8) & 0xF) - 24700) % 0x3BBu) ^ 0xFC;
  LODWORD(STACK[0x5E8]) = v102 ^ (LODWORD(STACK[0x5E8]) + 1593427023);
  LODWORD(STACK[0x5B0]) = *(v103 + (123 * (v176 & 0xF ^ 0xC) - 24700) % 0x3BBu) ^ v180 ^ (16 * (*(v103 + (123 * (v177 >> 4) - 24700) % 0x3BBu) ^ 0xFC)) ^ ((v185 << 8) | (v183 << 20)) ^ (v184 << 12) ^ (v181 << 16);
  v186 = STACK[0x5B4];
  v187 = LODWORD(STACK[0x5B4]) - 1055658139;
  v188 = v180 - v182;
  LODWORD(STACK[0x5BC]) = v180 - v182;
  v189 = v92 - v36 - v186 + 268629068;
  v190 = v189 ^ v188;
  LODWORD(STACK[0x5B8]) = v190;
  LODWORD(STACK[0x5D0]) = v187 - v190;
  LODWORD(STACK[0x5D8]) = v189 + (v182 ^ (v92 - v36));
  LODWORD(STACK[0x65C]) = LODWORD(STACK[0x5F8]) - 1868442790;
  return (*(STACK[0x640] + 8 * ((208 * (LODWORD(STACK[0x66C]) != 63)) ^ LODWORD(STACK[0x620]))))();
}

void sub_100239620(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x678]) = 0;
  v13 = a2 + a5 - 1666777768;
  LODWORD(STACK[0x630]) = v13 & 0xC2C009D8;
  v14 = 2 * (v13 & 0xC2C009D8);
  LODWORD(STACK[0x628]) = v14;
  v15 = ((2 * (v13 ^ 0xE310C428)) ^ 0x43A19BE0) & (v13 ^ 0xE310C428) ^ (2 * (v13 ^ 0xE310C428)) & 0x21D0CDF0;
  v16 = v15 ^ 0x20504410;
  v17 = (v15 ^ 0x10009E0) & (4 * (v14 & (v13 ^ 0xE290C598) ^ v13 & 0xC2C009D8)) ^ v14 & (v13 ^ 0xE290C598) ^ v13 & 0xC2C009D8;
  v18 = ((4 * v16) ^ 0x874337C0) & v16 ^ (4 * v16) & 0x21D0CDF0;
  v19 = (v18 ^ 0x14005C0) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x2090C830)) ^ 0x1D0CDF00) & (v18 ^ 0x2090C830) ^ (16 * (v18 ^ 0x2090C830)) & 0x21D0CDF0;
  v21 = v19 ^ 0x21D0CDF0 ^ (v20 ^ 0x100CD00) & (v19 << 8);
  v22 = v13 ^ (2 * ((v21 << 16) & 0x21D00000 ^ v21 ^ ((v21 << 16) ^ 0x4DF00000) & (((v20 ^ 0x20D000F0) << 8) & 0x21D00000 ^ 0x21100000 ^ (((v20 ^ 0x20D000F0) << 8) ^ 0x50CD0000) & (v20 ^ 0x20D000F0))));
  LODWORD(STACK[0x65C]) = v22;
  LODWORD(STACK[0x610]) = v9 + 90113607;
  v23 = ((v9 + 90113607) ^ 0xE2DCC8DD) & (2 * ((v9 + 90113607) & 0xF49D109E)) ^ (v9 + 90113607) & 0xF49D109E;
  v24 = ((2 * ((v9 + 90113607) ^ 0x22FCC9F1)) ^ 0xACC3B2DE) & ((v9 + 90113607) ^ 0x22FCC9F1) ^ (2 * ((v9 + 90113607) ^ 0x22FCC9F1)) & 0xD661D96E;
  v25 = v24 ^ 0x52204921;
  v26 = (v24 ^ 0x84408048) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x598765BC) & v25 ^ (4 * v25) & 0xD661D96C;
  v28 = (v27 ^ 0x50014120) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x86609843)) ^ 0x661D96F0) & (v27 ^ 0x86609843) ^ (16 * (v27 ^ 0x86609843)) & 0xD661D960;
  v30 = v28 ^ 0xD661D96F ^ (v29 ^ 0x46019000) & (v28 << 8);
  v31 = (v9 + 90113607) ^ (2 * ((v30 << 16) & 0x56610000 ^ v30 ^ ((v30 << 16) ^ 0x596F0000) & (((v29 ^ 0x9060490F) << 8) & 0x56610000 ^ 0x16200000 ^ (((v29 ^ 0x9060490F) << 8) ^ 0x61D90000) & (v29 ^ 0x9060490F)))) ^ v22;
  v32 = (((v31 ^ 0x79C84393) - 257250580) ^ ((v31 ^ 0xC444E505) + 1294339198) ^ ((v31 ^ 0xC7D196EE) + 1320386455)) - 2047527372;
  LODWORD(STACK[0x5CC]) = v32;
  v33 = LODWORD(STACK[0x534]) - v7 - 2129939168;
  v34 = (v33 ^ 0x1614A7DB) & (2 * (v33 & 0x96A537E3)) ^ v33 & 0x96A537E3;
  LODWORD(STACK[0x670]) = v8;
  v35 = ((2 * (v33 ^ 0x17548D99)) ^ 0x3E374F4) & (v33 ^ 0x17548D99) ^ (2 * (v33 ^ 0x17548D99)) & 0x81F1BA7A;
  v36 = v35 ^ 0x80108A0A;
  v37 = (v35 ^ 0x1A13010) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ 0x7C6E9E8) & v36 ^ (4 * v36) & 0x81F1BA78;
  v39 = (v38 ^ 0x1C0A860) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x80311212)) ^ 0x1F1BA7A0) & (v38 ^ 0x80311212) ^ (16 * (v38 ^ 0x80311212)) & 0x81F1BA70;
  v41 = v39 ^ 0x81F1BA7A ^ (v40 ^ 0x111A200) & (v39 << 8);
  v42 = v33 ^ (2 * ((v41 << 16) & 0x1F10000 ^ v41 ^ ((v41 << 16) ^ 0x3A7A0000) & (((v40 ^ 0x80E0185A) << 8) & 0x1F10000 ^ 0x410000 ^ (((v40 ^ 0x80E0185A) << 8) ^ 0x71BA0000) & (v40 ^ 0x80E0185A))));
  LODWORD(STACK[0x650]) = v42;
  v43 = LODWORD(STACK[0x518]) + a3 + 1124193774;
  v44 = (v43 ^ 0x7C4BEFA0) & (2 * (v43 & 0x7E6BCFC5)) ^ v43 & 0x7E6BCFC5;
  v45 = ((2 * (v43 ^ 0xFCC9EDA2)) ^ 0x54444CE) & (v43 ^ 0xFCC9EDA2) ^ (2 * (v43 ^ 0xFCC9EDA2)) & 0x82A22266;
  v46 = v45 ^ 0x82A22221;
  v47 = (v45 ^ 4) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0xA88899C) & v46 ^ (4 * v46) & 0x82A22264;
  v49 = (v48 ^ 0x2800003) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x80222263)) ^ 0x2A222670) & (v48 ^ 0x80222263) ^ (16 * (v48 ^ 0x80222263)) & 0x82A22260;
  v51 = v49 ^ 0x82A22267 ^ (v50 ^ 0x2222207) & (v49 << 8);
  v52 = v43 ^ (2 * ((v51 << 16) & 0x2A20000 ^ v51 ^ ((v51 << 16) ^ 0x22670000) & (((v50 ^ 0x80800007) << 8) & 0x2A20000 ^ (((v50 ^ 0x80800007) << 8) ^ 0x22220000) & (v50 ^ 0x80800007) ^ 0x800000)));
  LODWORD(STACK[0x63C]) = v52;
  v53 = (((v52 & 0xF ^ 0x5A4FD028) + 1337311415) ^ ((v52 & 0xF ^ 0x6C40CE6) + 322837625) ^ ((v52 & 0xF ^ 0x5C8BDCC5) + 1232194652)) * v10 - 1524154803;
  v55 = (2 * (v53 & 0x98A6446C)) & 0x60606060 ^ v53 & 0x98A6446C ^ ((2 * (v53 & 0x98A6446C)) | 2) & (v53 ^ 0xBC567728);
  v56 = (2 * (v53 ^ 0xBC567728)) & 0x24F03344 ^ 0x24101145 ^ ((2 * (v53 ^ 0xBC567728)) ^ 0x49E0668A) & (v53 ^ 0xBC567728);
  v57 = (4 * v55) & 0x24F03344 ^ v55 ^ ((4 * v55) | 4) & v56;
  v58 = (4 * v56) & 0x24F03344 ^ 0x24303241 ^ ((4 * v56) ^ 0x93C0CD14) & v56;
  LODWORD(STACK[0x4C0]) = a4;
  v59 = (16 * v57) & 0x24F03340 ^ v57 ^ ((16 * v57) ^ 0x50) & v58;
  v60 = (16 * v58) & 0x24F03340 ^ 0x20F00305 ^ ((16 * v58) ^ 0x4F033450) & v58;
  v61 = v59 ^ 0x24F03200 ^ (v59 << 8) & 0x24F03300 ^ ((v59 << 8) ^ 0x4500) & v60;
  v62 = v53 ^ (2 * ((v61 << 16) & 0x24F00000 ^ v61 ^ ((v61 << 16) ^ 0x33450000) & ((v60 << 8) & 0x24F00000 ^ 0x4C00000 ^ ((v60 << 8) ^ 0x70330000) & v60))) ^ 0x3447010Du;
  v63 = 0x21788C28CAEAD2 * (((v62 ^ 0x94CCBFCC4C837EALL) + 0x76B334033B37C816) ^ ((v62 ^ 0x274CDEA4A5DBC3E0) - 0x274CDEA4A5DBC3E0) ^ ((v62 ^ 0x2E001558C492D7E0) + 0x51FFEAA73B6D2820)) - 0x511263D10BA94EB6;
  v64 = (v63 ^ 0x9A4984D3F8428C09) & (2 * (v63 & 0x1811151BC110A8AALL)) ^ v63 & 0x1811151BC110A8AALL;
  v65 = ((2 * (v63 ^ 0x8A49AEE7FA63DD09)) ^ 0x24B177F876E6EB46) & (v63 ^ 0x8A49AEE7FA63DD09) ^ (2 * (v63 ^ 0x8A49AEE7FA63DD09)) & 0x9258BBFC3B7375A2;
  v66 = v65 ^ 0x92488804091114A1;
  v67 = (v65 ^ 0x30F800426100) & (4 * v64) ^ v64;
  v68 = ((4 * v66) ^ 0x4962EFF0EDCDD68CLL) & v66 ^ (4 * v66) & 0x9258BBFC3B7375A0;
  v69 = (v68 ^ 0x40ABF029415480) & (16 * v67) ^ v67;
  v70 = ((16 * (v68 ^ 0x9218100C12322123)) ^ 0x258BBFC3B7375A30) & (v68 ^ 0x9218100C12322123) ^ (16 * (v68 ^ 0x9218100C12322123)) & 0x9258BBFC3B7375A0;
  v71 = (v70 ^ 0x8BBC033335000) & (v69 << 8) ^ v69;
  v72 = (((v70 ^ 0x9250003C08402583) << 8) ^ 0x58BBFC3B7375A300) & (v70 ^ 0x9250003C08402583) ^ ((v70 ^ 0x9250003C08402583) << 8) & 0x9258BBFC3B737500;
  v73 = v71 ^ 0x9258BBFC3B7375A3 ^ (v72 ^ 0x1018B83833710000) & (v71 << 16);
  v74 = v63 ^ (2 * ((v73 << 32) & 0x1258BBFC00000000 ^ v73 ^ ((v73 << 32) ^ 0x3B7375A300000000) & (((v72 ^ 0x824003C4080254A3) << 16) & 0x1258BBFC00000000 ^ 0x808C00000000 ^ (((v72 ^ 0x824003C4080254A3) << 16) ^ 0x3BFC3B7300000000) & (v72 ^ 0x824003C4080254A3))));
  v75 = ((v74 ^ 0x2921DB57382A49B7) + 0x76BAD62B2202D966) ^ ((v74 ^ 0xBDD4030900E7461BLL) - 0x1DB0F18AE5302936);
  v76 = __CFADD__(1958 * (v75 ^ ((v74 ^ 0x8CF5D9FD8F3B4C40) - 0x2C912B7E6AEC236DLL)), 0x541B893429BC4C26) + (((v75 ^ ((v74 ^ 0x8CF5D9FD8F3B4C40) - 0x2C912B7E6AEC236DLL)) * 0x7A6uLL) >> 64) + 1958 * ((__CFADD__(v74 ^ 0x2921DB57382A49B7, 0x76BAD62B2202D966) - 1) ^ (__CFADD__(v74 ^ 0xBDD4030900E7461BLL, 0xE24F0E751ACFD6CALL) - 1) ^ (__CFADD__(v74 ^ 0x8CF5D9FD8F3B4C40, 0xD36ED4819513DC93) - 1)) + 680787864;
  if ((v76 - 680786454) >= 0x3D3)
  {
    v76 -= 979;
  }

  LODWORD(STACK[0x620]) = v76;
  v54 = ((HIBYTE(v42) & 0xF ^ 0xBFA1B03A) + 1769991946) ^ ((HIBYTE(v42) & 0xF) - 685875020) ^ ((HIBYTE(v42) & 0xF ^ 0x3B9DA5DF) - 314311955);
  LODWORD(STACK[0x604]) = (v54 + 690071041) * (v54 - 1354784458) + 1476987245 * v54 + (-690070658 - v54) * (v54 + 122202404);
  v77 = ((v11 + a7) ^ 0x98896DC) & (2 * ((v11 + a7) & 0x8DCD171E)) ^ (v11 + a7) & 0x8DCD171E;
  v78 = ((2 * ((v11 + a7) ^ 0x91ABEE4)) ^ 0x9AF53F4) & ((v11 + a7) ^ 0x91ABEE4) ^ (2 * ((v11 + a7) ^ 0x91ABEE4)) & 0x84D7A9FA;
  v79 = v78 ^ 0x8450A80A;
  v80 = (v78 ^ 0x800400F0) & (4 * v77) ^ v77;
  v81 = ((4 * v79) ^ 0x135EA7E8) & v79 ^ (4 * v79) & 0x84D7A9F8;
  v82 = (v81 ^ 0x56A1F0) & (16 * v80) ^ v80;
  v83 = ((16 * (v81 ^ 0x84810812)) ^ 0x4D7A9FA0) & (v81 ^ 0x84810812) ^ (16 * (v81 ^ 0x84810812)) & 0x84D7A9F0;
  v84 = v82 ^ 0x84D7A9FA ^ (v83 ^ 0x4528900) & (v82 << 8);
  v85 = (v11 + a7) ^ (2 * ((v84 << 16) & 0x4D70000 ^ v84 ^ ((v84 << 16) ^ 0x29FA0000) & (((v83 ^ 0x8085205A) << 8) & 0x4D70000 ^ 0x560000 ^ (((v83 ^ 0x8085205A) << 8) ^ 0x57A90000) & (v83 ^ 0x8085205A)))) ^ 0xFAB72F9E;
  LODWORD(STACK[0x5A0]) = v85;
  v86 = STACK[0x514];
  v87 = LODWORD(STACK[0x514]) - 1802063510 + v32;
  v88 = (v87 ^ 0x60BEA668) & (2 * (v87 & 0x4A3C2672)) ^ v87 & 0x4A3C2672;
  v89 = ((2 * (v87 ^ 0xF0FEAA0C)) ^ 0x758518FC) & (v87 ^ 0xF0FEAA0C) ^ (2 * (v87 ^ 0xF0FEAA0C)) & 0xBAC28C7E;
  v90 = v89 ^ 0x8A428402;
  v91 = (v89 ^ 0x30800858) & (4 * v88) ^ v88;
  v92 = ((4 * v90) ^ 0xEB0A31F8) & v90 ^ (4 * v90) & 0xBAC28C7C;
  v93 = (v92 ^ 0xAA020066) & (16 * v91) ^ v91;
  v94 = ((16 * (v92 ^ 0x10C08C06)) ^ 0xAC28C7E0) & (v92 ^ 0x10C08C06) ^ (16 * (v92 ^ 0x10C08C06)) & 0xBAC28C70;
  v95 = v93 ^ 0xBAC28C7E ^ (v94 ^ 0xA8008400) & (v93 << 8);
  v96 = v87 ^ (2 * ((v95 << 16) & 0x3AC20000 ^ v95 ^ ((v95 << 16) ^ 0xC7E0000) & (((v94 ^ 0x12C2081E) << 8) & 0x3AC20000 ^ 0x38420000 ^ (((v94 ^ 0x12C2081E) << 8) ^ 0x428C0000) & (v94 ^ 0x12C2081E))));
  v97 = ((((v96 >> 28) ^ 0x3661CB8E) - 1048190571) ^ (((v96 >> 28) ^ 0x70C7B94A) + 119771985) ^ (((v96 >> 28) ^ 0x46A672C6) - 1321051939)) * v10 + 1129655488;
  v98 = ((v7 - 620075989) ^ 0xCDE38700) & (2 * ((v7 - 620075989) & 0xC98BD789)) ^ (v7 - 620075989) & 0xC98BD789;
  v99 = ((2 * ((v7 - 620075989) ^ 0x5EF32702)) ^ 0x2EF1E116) & ((v7 - 620075989) ^ 0x5EF32702) ^ (2 * ((v7 - 620075989) ^ 0x5EF32702)) & 0x9778F08A;
  v100 = v99 ^ 0x91081089;
  v101 = (v99 ^ 0x670E000) & (4 * v98) ^ v98;
  v102 = ((4 * v100) ^ 0x5DE3C22C) & v100 ^ (4 * v100) & 0x9778F088;
  v103 = (v102 ^ 0x1560C000) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0x82183083)) ^ 0x778F08B0) & (v102 ^ 0x82183083) ^ (16 * (v102 ^ 0x82183083)) & 0x9778F080;
  v105 = v103 ^ 0x9778F08B ^ (v104 ^ 0x17080000) & (v103 << 8);
  v106 = (v7 - 620075989) ^ (2 * ((v105 << 16) & 0x17780000 ^ v105 ^ ((v105 << 16) ^ 0x708B0000) & (((v104 ^ 0x8070F00B) << 8) & 0x17780000 ^ 0x7080000 ^ (((v104 ^ 0x8070F00B) << 8) ^ 0x78F00000) & (v104 ^ 0x8070F00B)))) ^ v85;
  v107 = ((v106 ^ 0xC365FE0C) + 337438507) ^ ((v106 ^ 0x59DCF49E) - 1901728327) ^ ((v106 ^ 0x22A25779) - 170176928);
  LODWORD(STACK[0x59C]) = v107;
  v108 = (((HIBYTE(v96) & 0xF ^ 0x560E0A94) - 497825909) ^ ((HIBYTE(v96) & 0xF ^ 0x7EA2804E) - 889238191) ^ ((HIBYTE(v96) & 0xF ^ 0x28AC8AD5) - 1661909044)) * v10 + 1331660722;
  v109 = ((((v96 >> 20) & 0xF ^ 0x806B111) - 317831894) ^ (((v96 >> 20) & 0xF ^ 0x3AF84BD5) - 537870354) ^ (((v96 >> 20) & 0xF ^ 0x32FEFAC7) - 671740160)) * v10 - 1354737658;
  v110 = v109 - v109 / 0x3D3 * a1;
  v111 = LODWORD(STACK[0x544]) - v107 + 1923449809;
  v112 = (v111 ^ 0xF83AB4F9) & (2 * (v111 & 0xFCBCC0FD)) ^ v111 & 0xFCBCC0FD;
  v113 = ((2 * (v111 ^ 0xB86B3443)) ^ 0x89AFE97C) & (v111 ^ 0xB86B3443) ^ (2 * (v111 ^ 0xB86B3443)) & 0x44D7F4BE;
  v114 = v113 ^ 0x44501482;
  v115 = (v113 ^ 0x87003C) & (4 * v112) ^ v112;
  v116 = ((4 * v114) ^ 0x135FD2F8) & v114 ^ (4 * v114) & 0x44D7F4BC;
  v117 = (v116 ^ 0x57D0B0) & (16 * v115) ^ v115;
  v118 = ((16 * (v116 ^ 0x44802406)) ^ 0x4D7F4BE0) & (v116 ^ 0x44802406) ^ (16 * (v116 ^ 0x44802406)) & 0x44D7F4B0;
  v119 = v117 ^ 0x44D7F4BE ^ (v118 ^ 0x44574000) & (v117 << 8);
  v120 = v111 ^ (2 * ((v119 << 16) & 0x44D70000 ^ v119 ^ ((v119 << 16) ^ 0x74BE0000) & (((v118 ^ 0x80B41E) << 8) & 0x44D70000 ^ (((v118 ^ 0x80B41E) << 8) ^ 0x57F40000) & (v118 ^ 0x80B41E) ^ 0x30000)));
  LODWORD(STACK[0x5F8]) = 16776981;
  v121 = STACK[0x648];
  v122 = *(STACK[0x648] + v97 - v97 / 0x3D3 * a1);
  v123 = *(STACK[0x648] + v108 - v108 / 0x3D3 * a1);
  v124 = *(STACK[0x648] + v110);
  v125 = *(STACK[0x648] + ((((HIWORD(v96) & 0xF ^ 0x7D190112) + 1567050151) ^ ((HIWORD(v96) & 0xF) + 1182699829) ^ ((HIWORD(v96) & 0xF ^ 0x2E5F6D5F) - 1910430228)) * v10 - 970094846) % 0x3D3u);
  LODWORD(STACK[0x60C]) = v96;
  v126 = *(v121 + (((((v96 >> 8) & 0xF ^ 0x7D219B66) - 2035448809) ^ (((v96 >> 8) & 0xF ^ 0x18E1B7D) - 100531186) ^ (((v96 >> 8) & 0xF ^ 0x7CAF8015) + 119775078)) * v10 + 1388635532) % 0x3D3);
  v127 = ((v124 << 12) ^ 0x28002E ^ (((v125 << 8) ^ 0xFF14FD) & ((v122 << 20) ^ (v123 << 16) ^ 0xF7F6FD) | (v125 << 8) & 0x900)) & (v126 ^ 0xFFFF15) ^ v126 & 0x2C;
  v128 = (((v96 & 0xF ^ 0xC9B04C) + 152909780) ^ ((v96 & 0xF ^ 0x6269EE26) + 1807575482) ^ ((v96 & 0xF ^ 0x62A05E64) + 1802820092)) * v10 - 1134261014;
  v129 = (v128 ^ 0x9538EFCC) & (2 * (v128 & 0xD9B8EFC8)) ^ v128 & 0xD9B8EFC8;
  v130 = ((2 * (v128 ^ 0x8678A9DC)) ^ 0xBF808C28) & (v128 ^ 0x8678A9DC) ^ (2 * (v128 ^ 0x8678A9DC)) & 0x5FC04614;
  v131 = v130 ^ 0x40404214;
  v132 = (v130 ^ 0xF800400) & (4 * v129) ^ v129;
  v133 = ((4 * v131) ^ 0x7F011850) & v131 ^ (4 * v131) & 0x5FC04614;
  v134 = (v133 ^ 0x5F000004) & (16 * v132) ^ v132;
  v135 = ((16 * (v133 ^ 0xC04604)) ^ 0xFC046140) & (v133 ^ 0xC04604) ^ (16 * (v133 ^ 0xC04604)) & 0x5FC04610;
  v136 = v134 ^ 0x5FC04614 ^ (v135 ^ 0x5C004000) & (v134 << 8);
  v137 = v128 ^ (2 * ((v136 << 16) & 0x5FC00000 ^ v136 ^ ((v136 << 16) ^ 0x46140000) & (((v135 ^ 0x3C00614) << 8) & 0x5FC00000 ^ (((v135 ^ 0x3C00614) << 8) ^ 0x40460000) & (v135 ^ 0x3C00614) ^ 0x1F800000))) ^ 0x7CE45AAC;
  v138 = 0x42F1185195D5A4 * (((v137 ^ 0x2E77A3FEF45A3FA3) - 0x2E77A3FEF45A3FA3) ^ ((v137 ^ 0xE1F9FFA6C7DC9947) + 0x1E060059382366B9) ^ ((v137 ^ 0xCF8E5C58A55A9FA8) + 0x3071A3A75AA56058)) - 0x74DA65F88BBEF377;
  v139 = (2 * (v138 & 0xE11C4B4CD1BBE424)) & 0xC010000900144000 ^ v138 & 0xE11C4B4CD1BBE424 ^ ((2 * (v138 & 0xE11C4B4CD1BBE424)) | 2) & (v138 ^ 0x20CB4B23C9279602);
  v140 = (2 * (v138 ^ 0x20CB4B23C9279602)) & 0xC1D7006F189C7220 ^ 0x4051002108841221 ^ ((2 * (v138 ^ 0x20CB4B23C9279602)) ^ 0x83AE00DE3138E44ALL) & (v138 ^ 0x20CB4B23C9279602);
  v141 = (4 * v139) & 0xC1D7006F189C7224 ^ v139 ^ ((4 * v139) | 4) & v140;
  v142 = (4 * v140) & 0xC1D7006F189C7224 ^ 0xC0830043188C3221 ^ ((4 * v140) ^ 0x75C01BC6271C894) & v140;
  v143 = (16 * v141) & 0xC1D7006F189C7220 ^ v141 ^ ((16 * v141) ^ 0x50) & v142;
  v144 = (16 * v142) & 0xC1D7006F189C7220 ^ 0xC087000E10185025 ^ ((16 * v142) ^ 0x1D7006F189C72250) & v142;
  v145 = (v143 << 8) & 0xC1D7006F189C7200 ^ v143 ^ ((v143 << 8) ^ 0x500) & v144;
  v146 = (v144 << 8) & 0xC1D7006F189C7200 ^ 0xD70067008C5225 ^ ((v144 << 8) ^ 0xD7006F189C722500) & v144;
  v147 = v145 ^ (v145 << 16) & 0xC1D7006F189C0000 ^ ((v145 << 16) ^ 0x50000) & v146;
  v148 = v138 ^ (2 * (((v147 ^ 0xC1D7006F18987220) << 32) & 0x41D7006F00000000 ^ v147 ^ 0xC1D7006F18987220 ^ (((v147 ^ 0xC1D7006F18987220) << 32) ^ 0x189C722500000000) & ((v146 << 16) & 0x41D7006F00000000 ^ 0x4190006300000000 ^ ((v146 << 16) ^ 0x6F189C00000000) & v146)));
  v149 = ((v148 ^ 0xB90EECD8D90F3374) - 0x1FBCDECB028A6B4DLL) ^ ((v148 ^ 0xD39E25A16F001863) - 0x752C17B2B485405ALL);
  LODWORD(v148) = __CFADD__(979 * (v149 ^ ((v148 ^ 0x90A82A1568C2B7ALL) + 0x50474F4D72F68CBDLL)), 0xF9C9C432B943C93CLL) + (((v149 ^ ((v148 ^ 0x90A82A1568C2B7ALL) + 0x50474F4D72F68CBDLL)) * 0x3D3uLL) >> 64) + 979 * ((__CFADD__(v148 ^ 0xB90EECD8D90F3374, 0xE0432134FD7594B3) - 1) ^ (__CFADD__(v148 ^ 0xD39E25A16F001863, 0x8AD3E84D4B7ABFA6) - 1) ^ (__CFADD__(v148 ^ 0x90A82A1568C2B7ALL, 0x50474F4D72F68CBDLL) - 1)) + 1984878571;
  LODWORD(v146) = (2 * (v148 & 0x89B12B06)) & (v148 ^ 0xE52C067F) ^ v148 & 0x89B12B06 ^ ((2 * (v148 & 0x89B12B06)) & 0x408 | 0x288D2971);
  LODWORD(v149) = (2 * (v148 ^ 0xE52C067F)) & 0x6C9D2D78 ^ 0x24852509 ^ ((2 * (v148 ^ 0xE52C067F)) ^ 0xD93A5AF2) & (v148 ^ 0xE52C067F);
  LODWORD(v146) = (4 * v146) & 0x6C9D2D78 ^ v146 ^ ((4 * v146) ^ 0xA234A5C4) & v149;
  LODWORD(v149) = (4 * v149) & 0x6C9D2D78 ^ 0x4C890819 ^ ((4 * v149) ^ 0xB274B5E4) & v149;
  LODWORD(v146) = (16 * v146) & 0x6C9D2D70 ^ v146 ^ ((16 * v146) ^ 0x8990C310) & v149;
  LODWORD(v149) = (16 * v149) & 0x6C9D2D70 ^ 0x240D2869 ^ ((16 * v149) ^ 0xC9D2D790) & v149;
  LODWORD(v146) = v146 ^ (v146 << 8) & 0x6C9D2D00 ^ ((v146 << 8) ^ 0x90D2100) & v149;
  v150 = v148 ^ (2 * (((v146 ^ 0x64990158) << 16) & 0x6C9D0000 ^ v146 ^ 0x64990158 ^ (((v146 ^ 0x64990158) << 16) ^ 0x2D790000) & ((v149 << 8) & 0x6C9D0000 ^ 0x60900000 ^ ((v149 << 8) ^ 0x1D2D0000) & v149)));
  LOBYTE(v149) = (v150 & 0xF1 ^ 0x30) & (v150 & 0xF1 ^ 5) ^ v150 & 0xC0;
  LOBYTE(v149) = 68 * (((v149 ^ 0x8C) - 47) ^ ((v149 ^ 0x70) + 45) ^ ((v149 ^ 0xD) + 82)) + 88;
  LOBYTE(v146) = (v149 ^ 0x71) & (2 * (v149 & 0x70)) ^ v149 & 0x70;
  LOBYTE(v131) = ((2 * (v149 ^ 0xB1)) ^ 0x80) & (v149 ^ 0xB1) ^ (2 * (v149 ^ 0xB1)) & 0xC0;
  LOBYTE(v146) = v146 ^ 0xC1 ^ (v131 ^ 0x80) & (4 * v146);
  v151 = *(v121 + (v150 ^ 0x8B971F4));
  LOBYTE(v150) = v149 ^ (2 * ((16 * v146) & 0x40 ^ v146 ^ ((16 * v146) ^ 0x10) & ((4 * (v131 ^ 0x41)) & 0xC0 ^ 0xC1 ^ ((4 * (v131 ^ 0x41)) ^ 4) & (v131 ^ 0x41))));
  v152 = (*(v121 + (((((v96 >> 4) ^ 0x430EB991) - 700753676) ^ ((v96 >> 4) + 1514796675) ^ (((v96 >> 4) ^ 0x71B0B329u) + 1686458956)) * v10 - 1999461020) % 0x3D3) ^ 0xEAu) << (v150 & 0x34 ^ 0x30) << (v150 & 0xC8 ^ 0xC0);
  v153 = ((*(v121 + (((((v96 >> 12) ^ 0x3C1BA9BE) + 290186744) ^ (((v96 >> 12) ^ 0x2AE9109B) - 2017895213) ^ (((v96 >> 12) ^ 0x16F2B926u) + 1000535408)) * v10 + 1774639908) % 0x3D3) << 12) ^ (v127 << 8) ^ 0xCF03D522) & (v151 ^ 0xFFFFFF0D) | v151 & 0xDDDDDDDD;
  LODWORD(STACK[0x638]) = a7;
  v154 = v153 ^ v152;
  v155 = *(v121 + ((((HIWORD(v120) & 0xF ^ 0x31BBC8A4) - 1490619980) ^ ((HIWORD(v120) & 0xF) - 1465762472) ^ ((HIWORD(v120) & 0xF ^ 0x3E38738B) + 681921181)) * v10 + 1436175040) % 0x3D3u);
  LODWORD(v150) = *(v121 + (((((v120 >> 12) ^ 0x3D692BFB) - 548570605) ^ (((v120 >> 12) ^ 0x359DDCE1) - 675705591) ^ (((v120 >> 12) ^ 0x8F4F718u) + 1792059122)) * v10 + 1465779046) % 0x3D3);
  LODWORD(v152) = *(v121 + (((((v120 >> 8) & 0xF ^ 0x6B5070FE) + 1459772979) ^ (((v120 >> 8) & 0xF ^ 0x79C7FE18) + 1167446229) ^ (((v120 >> 8) & 0xF ^ 0x12978EEF) - 1362780124)) * v10 - 2111623398) % 0x3D3);
  v156 = *(v121 + (((((v120 >> 4) ^ 0x772CD557) - 853421547) ^ (((v120 >> 4) ^ 0x5B620D38) + 1634667132) ^ (((v120 >> 4) ^ 0x2C4ED867u) - 1773936859)) * v10 + 1292848678) % 0x3D3);
  v157 = (*(v121 + (((((v120 >> 20) & 0xF ^ 0x31AE514F) - 877754296) ^ (((v120 >> 20) & 0xF ^ 0xA3BCECA) + 1882920899) ^ (((v120 >> 20) & 0xF ^ 0x3B959F86) - 1047181681)) * v10 - 243158618) % 0x3D3) << 12) ^ (((v155 | 0x7FFF00) & ((*(v121 + (((((v120 >> 28) ^ 0x5F3253AA) + 352782660) ^ (((v120 >> 28) ^ 0x77765DFF) + 1027802903) ^ (((v120 >> 28) ^ 0x28440E5A) + 1651594420)) * v10 - 194698148) % 0x3D3) << 12) ^ (*(v121 + ((((HIBYTE(v120) & 0xF ^ 0x4954877B) - 841707805) ^ ((HIBYTE(v120) & 0xF) + 1250538970) ^ ((HIBYTE(v120) & 0xF ^ 0x2A505957) - 1362079537)) * v10 - 1997638470) % 0x3D3u) << 8) ^ 0x721B40) | v155 & 0xFFFFFFBF) << 8) ^ 0xFF90C5;
  LODWORD(v146) = v157 & (v152 ^ 0xFFFF27);
  LODWORD(STACK[0x5D4]) = v146;
  v158 = v157;
  LODWORD(STACK[0x5D8]) = v157;
  v159 = ((v146 | v152 & 0x3A) << 8) ^ (v150 << 12);
  v160 = *(v121 + ((((v120 & 0xF ^ 0x7CF22994) - 1000184516) ^ ((v120 & 0xF ^ 0x26885B68) - 1642588216) ^ ((v120 & 0xF ^ 0x5A7A72FD) + 1659518547)) * v10 - 1069174804) % 0x3D3);
  LODWORD(STACK[0x608]) = v154 & 0xF;
  v161 = ((v159 ^ 0x5169AA73) & (v160 ^ 0xFFFFFF15) | v160 & 0x8C) ^ (16 * v156);
  v162 = ((16 * (v160 & 0xF)) ^ 0x145BCC7B) & (v154 & 0xF ^ 0x145BCCF1) | v154 & 4;
  v163 = (((v162 ^ 0x41712522) + 479317480) ^ ((v162 ^ 0xF96A91A) + 1383481824) ^ ((v162 ^ 0x5ABC40E3) - 2023970777)) * v10;
  LODWORD(v152) = LOBYTE(STACK[0xE83]);
  LODWORD(STACK[0x5E4]) = v152;
  LODWORD(v150) = (16 * v152) ^ 0x65A98620;
  LODWORD(STACK[0x430]) = v150;
  v164 = *(v121 + (v163 + 1645272218) % 0x3D3u) ^ v150;
  v165 = (((v164 ^ 0x231066E6) + 285886134) ^ ((v164 ^ 0x4591EE61) + 2005650995) ^ ((v164 ^ 0x32800ED) - 1322114881)) * v10;
  v166 = *(v121 + (v163 + 1644817214) % 0x3D3u) ^ (*(v121 + (v165 - 1804688780) % 0x3D3u) >> 4);
  v167 = ((((v166 ^ 0x3B9ACE09) - 1000001171) ^ ((v166 ^ 0x47097945) - 1191803359) ^ ((v166 ^ 0x7C93B7A8u) - 2090055474)) * v10 + 551520) % 0x3D3;
  LODWORD(v152) = v154 >> 4;
  LODWORD(STACK[0x5C8]) = v152;
  LODWORD(v150) = (v161 & 0xF0 ^ 0xAA581037) & (v152 ^ 0xAA5810F1);
  v168 = v150 | (v154 >> 4) & 8;
  v169 = *(v121 + (((((v168 ^ 0x6E355957) + 1994539869) ^ ((v168 ^ 0x283222FF) + 820328693) ^ ((v168 ^ 0x6C5F6995) + 1955099551)) + ((((2 * v150) & 0xA4 ^ 0x23DC0DBA) - 439046284) ^ (((2 * v150) & 0xA4) - 1984510742) ^ (((2 * v150) & 0xA4 ^ 0x46033E6Eu) + 761000))) * v10 + 707773962) % 0x3D3) ^ (16 * *(v121 + v167));
  LODWORD(v146) = (((v169 ^ 0x53758F6A) + 1052150704) ^ ((v169 ^ 0x70436533) + 494952951) ^ ((v169 ^ 0x2336E413) + 1324736727)) * v10;
  LODWORD(STACK[0x5D0]) = (v146 - 1838783200) % ((v160 & 3 ^ 0xD2CD0005) & (v160 & 3 ^ 0xD2CD0006) ^ 0xD2CD03D7);
  v170 = ((2 * (v86 ^ 0xD4945779)) ^ 0x807E3F2) & (v86 ^ 0xD4945779) ^ (2 * (v86 ^ 0xD4945779)) & 0x403F1F8;
  LODWORD(v152) = 2 * (v86 & 0xD097A680);
  LODWORD(v150) = (v170 ^ 0x3A009) & (4 * (v152 & (v86 ^ 0xD4971679) ^ v86 & 0xD097A680)) ^ v152 & (v86 ^ 0xD4971679) ^ v86 & 0xD097A680;
  v171 = ((4 * (v170 ^ 0x4001009)) ^ 0x100FC7E4) & (v170 ^ 0x4001009) ^ (4 * (v170 ^ 0x4001009)) & 0x403F1F8;
  LODWORD(v150) = (v171 ^ 0x3C1E0) & (16 * v150) ^ v150;
  v172 = ((16 * (v171 ^ 0x4003019)) ^ 0x403F1F90) & (v171 ^ 0x4003019) ^ (16 * (v171 ^ 0x4003019)) & 0x403F1F0;
  LODWORD(v150) = v150 ^ 0x403F1F9 ^ (v172 ^ 0x31169) & (v150 << 8);
  v173 = (v150 << 16) & 0x4030000 ^ v150 ^ ((v150 << 16) ^ 0x71F90000) & (((v172 ^ 0x400E069) << 8) & 0x4030000 ^ 0x4020000 ^ (((v172 ^ 0x400E069) << 8) ^ 0x3F10000) & (v172 ^ 0x400E069));
  LODWORD(v150) = ((2 * (LODWORD(STACK[0x548]) ^ 0x3222E123)) ^ 0x15B7CFDC) & (LODWORD(STACK[0x548]) ^ 0x3222E123) ^ (2 * (LODWORD(STACK[0x548]) ^ 0x3222E123)) & 0x8ADBE7EE;
  v174 = STACK[0x548] & 0xB8F906CD;
  v175 = STACK[0x548];
  v176 = (2 * v174) & (LODWORD(STACK[0x548]) ^ 0x32F0E4A9);
  LODWORD(STACK[0x5E8]) = 2 * v174;
  LODWORD(STACK[0x5F0]) = v174;
  v177 = (v150 ^ 0x80074C) & (4 * (v176 ^ v174)) ^ v176 ^ v174;
  LODWORD(v150) = ((4 * (v150 ^ 0x8A482022)) ^ 0x2B6F9FB8) & (v150 ^ 0x8A482022) ^ (4 * (v150 ^ 0x8A482022)) & 0x8ADBE7EC;
  v178 = (v150 ^ 0xA4B87A0) & (16 * v177) ^ v177;
  LODWORD(v150) = ((16 * (v150 ^ 0x80906046)) ^ 0xADBE7EE0) & (v150 ^ 0x80906046) ^ (16 * (v150 ^ 0x80906046)) & 0x8ADBE7E0;
  v179 = v178 ^ 0x8ADBE7EE ^ (v150 ^ 0x889A6600) & (v178 << 8);
  LODWORD(v150) = (v179 << 16) & 0xAD90000 ^ v179 ^ ((v179 << 16) ^ 0x27EE0000) & (((v150 ^ 0x241810E) << 8) & 0xADB0000 ^ (((v150 ^ 0x241810E) << 8) ^ 0x5BE70000) & (v150 ^ 0x241810E) ^ 0x180000);
  v180 = ((2 * (v175 ^ 0x4D11E7F3)) ^ 0xEBD1C27C) & (v175 ^ 0x4D11E7F3) ^ (2 * (v175 ^ 0x4D11E7F3)) & 0xF5E8E13E;
  v181 = (v180 ^ 0xE1C0003C) & (4 * ((2 * v174) & (v175 ^ 0x3CF1E6E9) ^ v174)) ^ (2 * v174) & (v175 ^ 0x3CF1E6E9) ^ v174;
  v182 = ((4 * (v180 ^ 0x14282102)) ^ 0xD7A384F8) & (v180 ^ 0x14282102) ^ (4 * (v180 ^ 0x14282102)) & 0xF5E8E13C;
  v183 = (v182 ^ 0xD5A08030) & (16 * v181) ^ v181;
  v184 = ((16 * (v182 ^ 0x20486106)) ^ 0x5E8E13E0) & (v182 ^ 0x20486106) ^ (16 * (v182 ^ 0x20486106)) & 0xF5E8E130;
  v185 = v183 ^ 0xF5E8E13E ^ (v184 ^ 0x54880100) & (v183 << 8);
  LODWORD(STACK[0x548]) = v175;
  v186 = (v175 ^ (2 * ((v185 << 16) & 0x25E80000 ^ v185 ^ ((v185 << 16) ^ 0x213E0000) & (((v184 ^ 0xA160E01E) << 8) & 0x75E80000 ^ 0x15080000 ^ (((v184 ^ 0xA160E01E) << 8) ^ 0x68E10000) & (v184 ^ 0xA160E01E))))) & 0x5FF32FCD;
  LODWORD(v150) = (((v186 ^ 0xC98DDE1E) + 316408903) ^ ((v186 ^ 0x5FFE512F) - 2068870280) ^ ((v186 ^ 0x87038BB0) + 1548898793)) + ((((v175 ^ (2 * v150)) & 0x5FF32FCD ^ 0x7553927B) - 1274333675) ^ (((v175 ^ (2 * v150)) & 0x5FF32FCD ^ 0x866D509A) + 1194718454) ^ (((v175 ^ (2 * v150)) & 0x5FF32FCD ^ 0xA41FE42D) + 1699168323)) - 1596042984;
  v187 = (v150 ^ 0xFEF6484B) & (2 * (v150 & 0xFE864D6A)) ^ v150 & 0xFE864D6A;
  v188 = ((2 * (v150 ^ 0x5EFE529B)) ^ 0x40F03FE2) & (v150 ^ 0x5EFE529B) ^ (2 * (v150 ^ 0x5EFE529B)) & 0xA0781FF0;
  v189 = (v188 ^ 0x301FE0) & (4 * v187) ^ v187;
  v190 = ((4 * (v188 ^ 0xA0080011)) ^ 0x81E07FC4) & (v188 ^ 0xA0080011) ^ (4 * (v188 ^ 0xA0080011)) & 0xA0781FF0;
  v191 = (v190 ^ 0x80601FC0) & (16 * v189) ^ v189;
  v192 = ((16 * (v190 ^ 0x20180031)) ^ 0x781FF10) & (v190 ^ 0x20180031) ^ (16 * (v190 ^ 0x20180031)) & 0xA0781FF0;
  v193 = v191 ^ 0xA0781FF1 ^ (v192 ^ 0x1F00) & (v191 << 8);
  v194 = v152 & (v86 ^ 0x9EC70670) ^ v86 & 0xD097A680;
  LODWORD(v152) = ((2 * (v86 ^ 0x9EC90670)) ^ 0x9CBD41E0) & (v86 ^ 0x9EC90670) ^ (2 * (v86 ^ 0x9EC90670)) & 0x4E5EA0F0;
  v195 = (v152 ^ 0x41C0000) & (4 * v194) ^ v194;
  LODWORD(v152) = ((4 * (v152 ^ 0x4242A010)) ^ 0x397A83C0) & (v152 ^ 0x4242A010) ^ (4 * (v152 ^ 0x4242A010)) & 0x4E5EA0F0;
  v196 = (v152 ^ 0x85A80C0) & (16 * v195) ^ v195;
  LODWORD(v152) = ((16 * (v152 ^ 0x46042030)) ^ 0xE5EA0F00) & (v152 ^ 0x46042030) ^ (16 * (v152 ^ 0x46042030)) & 0x4E5EA0F0;
  v197 = v196 ^ 0x4E5EA0F0 ^ (v152 ^ 0x444A0000) & (v196 << 8);
  v198 = (v86 ^ (2 * ((v197 << 16) & 0x44120000 ^ v197 ^ ((v197 << 16) ^ 0x20F00000) & (((v152 ^ 0xA14A0F0) << 8) & 0x4E5E0000 ^ 0x5E0000 ^ (((v152 ^ 0xA14A0F0) << 8) ^ 0x5EA00000) & (v152 ^ 0xA14A0F0))))) & 0xA9665A20;
  v199 = (((v198 ^ 0x3F979736) + 1183677105) ^ ((v198 ^ 0xB03A3174) - 920593165) ^ ((v198 ^ 0x2EC9BE42) + 1473467333)) + ((((v86 ^ (2 * v173)) & 0xA9665A20 ^ 0x92EC3891) - 746444403) ^ (((v86 ^ (2 * v173)) & 0xA9665A20 ^ 0x9798BDF7) - 688476949) ^ (((v86 ^ (2 * v173)) & 0xA9665A20 ^ 0x8D76C546) - 870788004));
  v200 = (v150 ^ (2 * ((v193 << 16) & 0x20480000 ^ v193 ^ ((v193 << 16) ^ 0x1BC10000) & (((v192 ^ 0xA07800E1) << 8) & 0xA0780000 ^ (((v192 ^ 0xA07800E1) << 8) ^ 0x781F0000) & (v192 ^ 0xA07800E1) ^ 0x400000)))) & 0x77934653;
  LODWORD(STACK[0x598]) = LODWORD(STACK[0x524]) - 1665497975 * (v199 + 210613632) + ((((v200 ^ 0x50A7C818) - 158710197) ^ ((v200 ^ 0x9B102988) + 1027450843) ^ ((v200 ^ 0xFD25A390) + 1527262659)) + 1756320426) * (-1031987069 * (v199 + 210613632) + 551372977);
  v201 = STACK[0x628] & (v13 ^ 0xA8BE0DDC) ^ LODWORD(STACK[0x630]);
  LODWORD(v150) = ((2 * (v13 ^ 0x2D3E0DEC)) ^ 0xDFFC0868) & (v13 ^ 0x2D3E0DEC) ^ (2 * (v13 ^ 0x2D3E0DEC)) & 0xEFFE0434;
  v202 = (v150 ^ 0xF000020) & (4 * v201) ^ v201;
  LODWORD(v150) = ((4 * (v150 ^ 0x20020414)) ^ 0xBFF810D0) & (v150 ^ 0x20020414) ^ (4 * (v150 ^ 0x20020414)) & 0xEFFE0434;
  v203 = (v150 ^ 0xAFF80000) & (16 * v202) ^ v202;
  LODWORD(v150) = ((16 * (v150 ^ 0x40060424)) ^ 0xFFE04340) & (v150 ^ 0x40060424) ^ (16 * (v150 ^ 0x40060424)) & 0xEFFE0430;
  v204 = v203 ^ 0xEFFE0434 ^ (v150 ^ 0xEFE00000) & (v203 << 8);
  v205 = LODWORD(STACK[0x610]) - 1449593663 + v12;
  v206 = ((2 * (v205 ^ 0x11379729)) ^ 0xB944F614) & (v205 ^ 0x11379729) ^ (2 * (v205 ^ 0x11379729)) & 0xDCA27B0A;
  v207 = v205 & 0xCD95EC23;
  v208 = 2 * (v205 & 0xCD95EC23);
  v209 = (v206 ^ 0x18007000) & (4 * (v208 & (v205 ^ 0x8915CF2B) ^ v207)) ^ v208 & (v205 ^ 0x8915CF2B) ^ v207;
  v210 = ((4 * (v206 ^ 0x44A2090A)) ^ 0x7289EC28) & (v206 ^ 0x44A2090A) ^ (4 * (v206 ^ 0x44A2090A)) & 0xDCA27B08;
  v211 = (v210 ^ 0x50806800) & (16 * v209) ^ v209;
  v212 = ((16 * (v210 ^ 0x8C221302)) ^ 0xCA27B0A0) & (v210 ^ 0x8C221302) ^ (16 * (v210 ^ 0x8C221302)) & 0xDCA27B00;
  v213 = v211 ^ 0xDCA27B0A ^ (v212 ^ 0xC8223000) & (v211 << 8);
  v214 = v205 ^ v13 ^ (2 * (v213 ^ v204 ^ (v213 << 16) & 0x5CA20000 ^ (v204 << 16) & 0x6FFE0000 ^ ((v204 << 16) ^ 0x4340000) & (((v150 ^ 0x1E0434) << 8) & 0xEFFE0000 ^ 0x1FA0000 ^ (((v150 ^ 0x1E0434) << 8) ^ 0xFE040000) & (v150 ^ 0x1E0434)) ^ ((v213 << 16) ^ 0x7B0A0000) & (((v212 ^ 0x14804B0A) << 8) & 0x5CA20000 ^ 0x5C800000 ^ (((v212 ^ 0x14804B0A) << 8) ^ 0x227B0000) & (v212 ^ 0x14804B0A))));
  v215 = ((v214 ^ 0xF239A19D) + 812682881) ^ ((v214 ^ 0xA008B7D0) + 1648466126) ^ ((v214 ^ 0x83B00DCA) + 1106846424);
  v216 = *(v121 + ((((v168 ^ 0x3D5AD15A) + 2042009770) ^ ((v168 ^ 0x2AD0A29F) - 297997459) ^ ((v168 ^ 0x3DD263AAu) + 2034117210)) * v10 - 1067721670) % 0x3D3) ^ (*(v121 + LODWORD(STACK[0x5D0])) >> 4);
  LODWORD(v150) = (v161 >> 4) & 0xF0 | (v154 >> 8) & 0xF;
  LODWORD(v150) = (((v150 ^ 0x1312C1B2) - 1466059959) ^ ((v150 ^ 0x19725925) + 587017184) ^ ((v150 ^ 0xA609829) - 1309676844)) * v10;
  v217 = *(v121 + (v150 - 925956378) % 0x3D3u) ^ (16 * *(v121 + ((((v216 ^ 0x469C42B8) + 962837781) ^ ((v216 ^ 0x77B3835B) + 139230456) ^ ((v216 ^ 0x312FC107u) - 825213268)) * v10 + 595182) % 0x3D3));
  v218 = (((v217 ^ 0x4A14E7C6) + 1801581454) ^ ((v217 ^ 0x4A642C6E) - 351193050) ^ ((v217 ^ 0x70C5E2) - 1593454166)) * v10;
  LODWORD(v150) = *(v121 + (v150 - 926411382) % 0x3D3u) ^ ((~*(v121 + (v218 - 476303868) % 0x3D3u) & 0xF0u) >> 4);
  LODWORD(v152) = (((v159 >> 8) ^ 0xC3091AF0) & 0x50 ^ 0x4FFB5C4F) & ((v154 >> 12) ^ 0x4FFB5C51) | ((v159 >> 8) ^ 0xC3091AF0) & 0xA0;
  LODWORD(v152) = (((v152 ^ 0x38A00F1E) - 1103974978) ^ ((v152 ^ 0x29C3A40E) - 1353644370) ^ ((v152 ^ 0x5E98F7E9) - 670411445)) * v10;
  LODWORD(v150) = *(v121 + (v152 + 1423957266) % 0x3D3u) ^ (16 * *(v121 + ((((v150 ^ 0x35269427) - 891720743) ^ ((v150 ^ 0x5EA06F43) + 559911101) ^ ((v150 ^ 0x6B86FB8F) + 343475313)) * v10 + 635014) % 0x3D3));
  LODWORD(v150) = (((v150 ^ 0x51C7805D) - 732691188) ^ ((v150 ^ 0x2CA6F0EE) + 691369401) ^ ((v150 ^ 0x7D617EF9) - 118293584)) * v10;
  v219 = (v150 + 1351397526) % 0x3D3u;
  LODWORD(v150) = *(v121 + (v152 + 1423502262) % 0x3D3u) ^ ((~*(v121 + (v150 + 1350942522) % 0x3D3u) & 0xF0u) >> 4);
  LODWORD(v150) = (((v150 ^ 0x37E792B) + 2088863445) ^ ((v150 ^ 0x26B03B16) - 649083670) ^ ((v150 ^ 0x25CE42D6) + 1513209130)) * v10 + 1602426090;
  LODWORD(v152) = (v150 ^ 0x80F4539D) & (2 * (v150 & 0xA0869B9C)) ^ v150 & 0xA0869B9C;
  v220 = ((2 * (v150 ^ 0x80F464BD)) ^ 0x40E5FE42) & (v150 ^ 0x80F464BD) ^ (2 * (v150 ^ 0x80F464BD)) & 0x2072FF20;
  LODWORD(v152) = (v220 ^ 0x20FE00) & (4 * v152) ^ v152;
  v221 = ((4 * (v220 ^ 0x20120121)) ^ 0x81CBFC84) & (v220 ^ 0x20120121) ^ (4 * (v220 ^ 0x20120121)) & 0x2072FF20;
  LODWORD(v152) = (v221 ^ 0x42FC00) & (16 * v152) ^ v152;
  v222 = ((16 * (v221 ^ 0x20300321)) ^ 0x72FF210) & (v221 ^ 0x20300321) ^ (16 * (v221 ^ 0x20300321)) & 0x2072FF20;
  LODWORD(v152) = v152 ^ 0x2072FF21 ^ (v222 ^ 0x22F200) & (v152 << 8);
  v223 = v150 ^ (2 * ((v152 << 16) & 0x20720000 ^ v152 ^ ((v152 << 16) ^ 0x7F210000) & ((((v222 ^ 0x20500D21) << 8) ^ 0x72FF0000) & (v222 ^ 0x20500D21) ^ ((v222 ^ 0x20500D21) << 8) & 0x20720000))) ^ 0x50D481DF;
  v224 = 0x42F1185195D5A4 * (((v223 ^ 0xC89F35273762D626) + 0x3760CAD8C89D29DALL) ^ ((v223 ^ 0x9FF81A7D5F1533ALL) - 0x9FF81A7D5F1533ALL) ^ ((v223 ^ 0xC160B4801264611DLL) + 0x3E9F4B7FED9B9EE3)) - 0x719CF356A31D1735;
  v225 = (v224 ^ 0x730CBEEB6FB6FC96) & (2 * (v224 & 0x7B8CBCF34834FCD8)) ^ v224 & 0x7B8CBCF34834FCD8;
  v226 = (2 * (v224 ^ 0xA1049E49FFFFA586)) & 0xDA8822BAB7CB595ALL ^ 0x4A88228A90494941 ^ ((2 * (v224 ^ 0xA1049E49FFFFA586)) ^ 0xB51045756F96B2BCLL) & (v224 ^ 0xA1049E49FFFFA586);
  v227 = (4 * v225) & 0xDA00229A21C35140 ^ v225 ^ ((4 * v225) | 0xC) & v226;
  v228 = (4 * v226) & 0xDA8822BAB7CB595CLL ^ 0x9088201020C21803 ^ ((4 * v226) ^ 0x6A208AEADF2D657CLL) & v226;
  v229 = (16 * v227) & 0xDA8822BAB7CB5950 ^ v227 ^ ((16 * v227) ^ 0xF0) & v228;
  v230 = (16 * v228) & 0xDA8822BAB7CB5950 ^ 0x52080010834A480FLL ^ ((16 * v228) ^ 0xA8822BAB7CB595F0) & v228;
  v231 = (v229 << 8) & 0xDA8822BAB7CB5900 ^ v229 ^ ((v229 << 8) ^ 0x5F00) & v230;
  v232 = (v230 << 8) & 0xDA8822BAB7CB5900 ^ 0x528800083482005FLL ^ ((v230 << 8) ^ 0x8822BAB7CB595F00) & v230;
  v233 = v231 ^ (v231 << 16) & 0xDA8822BAB7CB0000 ^ ((v231 << 16) ^ 0x595F0000) & v232;
  v234 = v224 ^ (2 * (((v233 ^ 0xDA8822BAA6800000) << 32) & 0x5A8822BA00000000 ^ v233 ^ 0xDA8822BAA6800000 ^ (((v233 ^ 0xDA8822BAA6800000) << 32) ^ 0x37CB595F00000000) & ((v232 << 16) & 0x5A8822BA00000000 ^ 0x5800003000000000 ^ ((v232 << 16) ^ 0x22BAB7CB00000000) & v232)));
  v235 = ((v234 ^ 0x544E9C7B27CF6BC2) - 0x1A5A3D126C87F9DELL) ^ ((v234 ^ 0xD3A2893985B932FLL) - 0x432E89FAD3130133);
  LODWORD(v234) = __CFADD__(979 * (v235 ^ ((v234 ^ 0xB2F84D5A9836B68ALL) + 0x31313CC2C81DB6ALL)), 0x459BCF2186292A61) + (((v235 ^ ((v234 ^ 0xB2F84D5A9836B68ALL) + 0x31313CC2C81DB6ALL)) * 0x3D3uLL) >> 64) + 979 * ((__CFADD__(v234 ^ 0x544E9C7B27CF6BC2, 0xE5A5C2ED93780622) - 1) ^ (__CFADD__(v234 ^ 0xD3A2893985B932FLL, 0xBCD176052CECFECDLL) - 1) ^ (__CFADD__(v234 ^ 0xB2F84D5A9836B68ALL, 0x31313CC2C81DB6ALL) - 1)) + 317204246;
  LODWORD(v235) = (v234 ^ 0xCD17DA73) & (2 * (v234 & 0xED17DB63)) ^ v234 & 0xED17DB63;
  LODWORD(v232) = ((2 * (v234 ^ 0xD34FCF5)) ^ 0xC0464F2C) & (v234 ^ 0xD34FCF5) ^ (2 * (v234 ^ 0xD34FCF5)) & 0xE0232796;
  LODWORD(v235) = (v232 ^ 0xC0020704) & (4 * v235) ^ v235;
  LODWORD(v232) = ((4 * (v232 ^ 0x20212092)) ^ 0x808C9E58) & (v232 ^ 0x20212092) ^ (4 * (v232 ^ 0x20212092)) & 0xE0232794;
  LODWORD(v235) = (v232 ^ 0x80000616) & (16 * v235) ^ v235;
  LODWORD(v232) = ((16 * (v232 ^ 0x60232186)) ^ 0x2327960) & (v232 ^ 0x60232186) ^ (16 * (v232 ^ 0x60232186)) & 0xE0232790;
  LODWORD(v235) = v235 ^ 0xE0232796 ^ (v232 ^ 0x222100) & (v235 << 8);
  LODWORD(v235) = (v235 << 16) & 0x60230000 ^ v235 ^ ((v235 << 16) ^ 0x27960000) & (((v232 ^ 0xE0010696) << 8) & 0x60230000 ^ (((v232 ^ 0xE0010696) << 8) ^ 0x23270000) & (v232 ^ 0xE0010696) ^ 0x40000000);
  LODWORD(v232) = (v159 >> 12) & 0xF0 | HIWORD(v154) & 0xF;
  LODWORD(v234) = v234 ^ (2 * v235);
  LODWORD(v235) = (((v232 ^ 0x50E5E185) - 1399422318) ^ ((v232 ^ 0x7A44BE8F) + 104324508) ^ ((v232 ^ 0x2AA15F49) - 690865058)) * v10;
  LODWORD(v234) = *(v121 + (v235 - 1631342580) % 0x3D3u) ^ (16 * *(v121 + (v234 ^ 0x6D55944F)));
  LODWORD(v234) = (((v234 ^ 0x502E5A00) - 915698522) ^ ((v234 ^ 0x553E3994) + 1283190578) ^ ((v234 ^ 0x5106DDE) + 475380604)) * v10;
  v236 = (v234 + 1627902780) % 0x3D3u;
  LODWORD(v234) = *(v121 + (v235 - 1631797584) % 0x3D3u) ^ (*(v121 + (v234 + 1627447776) % 0x3D3u) >> 4);
  LODWORD(v235) = (LODWORD(STACK[0x5D4]) >> 8) & 0xF0 | (v154 >> 20) & 0xF;
  LODWORD(v235) = (((v235 ^ 0x122F81B7) - 1628893626) ^ ((v235 ^ 0x7B2F7907) + 2011821814) ^ ((v235 ^ 0x6900F865) + 1707505560)) * v10;
  LODWORD(v234) = *(v121 + (v235 - 974743636) % 0x3D3u) ^ (16 * *(v121 + ((((v234 ^ 0x7E2313F0) + 31255751) ^ ((v234 ^ 0x4C604FD0) + 866103527) ^ ((v234 ^ 0x32435CC4) - 843275277)) * v10 + 489474) % 0x3D3));
  LODWORD(v234) = (((v234 ^ 0x6A0B922E) + 1586631748) ^ ((v234 ^ 0x50CC20) - 1261876658) ^ ((v234 ^ 0x6A5B5044) + 1589827114)) * v10;
  v237 = (v234 - 1667135060) % 0x3D3u;
  LODWORD(v234) = *(v121 + (v235 - 975198640) % 0x3D3u) ^ (*(v121 + (v234 - 1667590064) % 0x3D3u) >> 4);
  LODWORD(v235) = (v158 >> 12) & 0xF0 | HIBYTE(v154) & 0xF;
  v238 = (((v235 ^ 0xB8EC023) - 2068405634) ^ ((v235 ^ 0x4B0963E6) - 1003421255) ^ ((v235 ^ 0x4087A3C1) - 809516640)) * v10;
  LODWORD(STACK[0x5D4]) = v238;
  LODWORD(v234) = *(v121 + (v238 + 1968219410) % 0x3D3u) ^ (16 * *(v121 + ((((v234 ^ 0x4339E0FA) - 1127866480) ^ ((v234 ^ 0x11B85B4A) + 1850188864) ^ ((v234 ^ 0x5281BB54) + 763249698)) * v10 + 539264) % 0x3D3));
  LODWORD(v235) = (((v234 ^ 0x1C92B292) + 582316055) ^ ((v234 ^ 0x2A8F224F) + 346611916) ^ ((v234 ^ 0x361D9E97) + 138042388)) * v10;
  LODWORD(STACK[0x5D0]) = v235;
  v239 = (v235 + 82845178) % 0x3D3u;
  v240 = *(v121 + (v165 - 1804233776) % 0x3D3u) ^ 0xDC34FE78;
  v241 = *(v121 + (v146 - 1838328196) % 0x3D3u) ^ 0xC5;
  LODWORD(v234) = ((v240 ^ (16 * v241)) & 0xF0 ^ 0xD43F8B9F) & (LODWORD(STACK[0x5C8]) ^ 0xD43F8BFA);
  LODWORD(v234) = ((v234 ^ 0x798CF95E) - 1747969442) ^ ((v234 ^ 0x79F5C03B) - 1750523079) ^ ((v234 ^ 0xD446B291) + 974803347);
  LODWORD(v146) = ((16 * v240) & 0x30 ^ 0xF1BFB31F) & (LODWORD(STACK[0x608]) ^ 0xF1BFB334) | (16 * v240) & 0xC0;
  v242 = ((((v146 ^ 0x601BAC53) - 632626572) ^ ((v146 ^ 0x187E3899) + 573535930) ^ ((v146 ^ 0x9DA27F4) + 864774613)) * v10 - 890598754) % 0x3D3;
  v243 = ((-1747675523 - v234) ^ 0xA8EED409) & (2 * ((-1747675523 - v234) & 0xA28ED52A)) ^ (-1747675523 - v234) & 0xA28ED52A;
  v244 = ((2 * ((-1747675523 - v234) ^ 0xA8F77E19)) ^ 0x14F35666) & ((-1747675523 - v234) ^ 0xA8F77E19) ^ (2 * ((-1747675523 - v234) ^ 0xA8F77E19)) & 0xA79AB32;
  v245 = (v244 ^ 0x710020) & (4 * v243) ^ v243;
  v246 = ((4 * (v244 ^ 0xA08A911)) ^ 0x29E6ACCC) & (v244 ^ 0xA08A911) ^ (4 * (v244 ^ 0xA08A911)) & 0xA79AB30;
  v247 = ((v234 + 748035350) ^ 0x18247B0B) & (2 * ((v234 + 748035350) & 0x99067B42)) ^ (v234 + 748035350) & 0x99067B42;
  LODWORD(STACK[0x550]) = v11;
  v248 = ((2 * ((v234 + 748035350) ^ 0x3A2C890F)) ^ 0x4655E49A) & ((v234 + 748035350) ^ 0x3A2C890F) ^ (2 * ((v234 + 748035350) ^ 0x3A2C890F)) & 0xA32AF24C;
  v249 = (((4 * (v248 ^ 0xA12A1245)) ^ 0xCABC920) & (v248 ^ 0xA12A1245) ^ (4 * (v248 ^ 0xA12A1245)) & 0x232AF240) & (16 * ((v248 ^ 0xE008) & (4 * v247) ^ v247)) ^ (v248 ^ 0xE008) & (4 * v247) ^ v247;
  v250 = (((-1747675523 - v234) ^ (2 * (v246 & (16 * v246) & (((v246 ^ 0x860A800) & (16 * v245) ^ v245) << 8) ^ (v246 ^ 0x860A800) & (16 * v245) ^ v245))) & 0x2FE ^ 0x76) & ((v234 + 748035350) ^ (2 * v249) ^ 0x4655E4BC) ^ ((v234 + 748035350) ^ (2 * v249)) & 0x2A2;
  LOBYTE(v245) = *(v121 + (v218 - 475848864) % 0x3D3u) ^ 0x34;
  v251 = ((v241 ^ (16 * v245)) & 0xF0 ^ 0xE3461E83) & ((v154 >> 8) & 0xF ^ 0xFBE7BFF5) | (v154 >> 8) & 0xC;
  v252 = (((((v250 ^ 0x73897E7F) - 1691406886) ^ ((v250 ^ 0x24CDADB7) - 865337838) ^ ((v250 ^ 0x5744D196u) - 1075674575)) - 1203225602) * (v234 - 979593128) + 1594978825 * v234 + 1949338392) % 0x3D3;
  v253 = (766 * (((v251 ^ 0x3F0B54) - 1858883142) ^ ((v251 ^ 0x58B194D4) - 910348742) ^ ((v251 ^ 0x3BC881CF) + 717503267)) + 78335398) % 0x3D3;
  v254 = *(v121 + v219) ^ 0x20694ABA;
  v255 = (*(v121 + v236) << 16) ^ (v254 << 12);
  v256 = (v245 ^ (16 * v254)) & 0xF0 | (v154 >> 12);
  v257 = (766 * (((v256 ^ 0x27287C79) - 773354167) ^ ((v256 ^ 0x3FB3B86A) + 1232882012) ^ ((v256 ^ 0x189BC4CBu) + 1851012603)) + 2110657332) % 0x3D3;
  v258 = ((v255 >> 12) | 0x9516180F) & (HIWORD(v154) & 0xF ^ 0x9516181F) | (v255 >> 12) & 0xE0;
  v259 = ((v258 ^ 0x20610B77) + 1121884637) ^ ((v258 ^ 0x36692B91) + 1423358267) ^ ((v258 ^ 0x31E381A) + 1637984946);
  v260 = (((LODWORD(STACK[0x65C]) ^ 0xCABA6A57) - 1463918433) ^ ((LODWORD(STACK[0x65C]) ^ 0x44FB45CB) + 654266115) ^ ((LODWORD(STACK[0x65C]) ^ 0xC80BDA4) + 1854191470)) - v9 == -624840745;
  LODWORD(STACK[0x62C]) = v154;
  v261 = (v154 >> 20) ^ 0xE128B53;
  if (v260)
  {
    v261 = 236093929;
  }

  v262 = *(v121 + v237) ^ 0xA70EF5C9;
  v263 = (v261 ^ 0x1E6) & ((v154 >> 20) ^ 0x80B) ^ v261 & 0xA128D4E ^ ((v255 ^ (v262 << 20)) >> 16) & 0xF0;
  v264 = *(v121 + v239) ^ 0xCBD7656A;
  LODWORD(STACK[0x5B8]) = v264;
  v265 = ((v262 ^ (16 * v264)) & 0x70 ^ 0x1B1FBC5F) & (HIBYTE(v154) & 0xF ^ 0x1B1FBC76) ^ ((v262 ^ (16 * v264)) & 0x80 | 0xC4004001);
  v266 = (766 * (((v265 ^ 0x62CF9DB5) - 917388406) ^ ((v265 ^ 0x7EAE873B) - 718219000) ^ ((v265 ^ 0x437EE6FD) + 1759557826)) + 1679835648) % 0x3D3;
  v267 = (*(v121 + (766 * v259 - 222823920) % 0x3D3u) << 16) ^ (*(v121 + (766 * (((v263 ^ 0x4B2A80FB) + 1439345487) ^ ((v263 ^ 0x596AC1A) + 460752816) ^ ((v263 ^ 0x44AEADD7) + 1515095651)) + 1374271080) % 0x3D3) << 20);
  v268 = *(v121 + v242);
  LODWORD(STACK[0x5C4]) = v268;
  v269 = v268 ^ (16 * *(v121 + v252));
  LODWORD(STACK[0x5C0]) = v269;
  v270 = v269 ^ (*(v121 + v253) << 8);
  v271 = v270 ^ 0x4BA34120;
  v272 = v270 ^ 0x4BA34120 ^ (*(v121 + v257) << 12);
  LODWORD(STACK[0x5BC]) = v272;
  v273 = v267 ^ v272 ^ 0x654D036B;
  LODWORD(STACK[0x5AC]) = v273;
  v274 = STACK[0x5CC];
  v275 = LODWORD(STACK[0x5CC]) + v205;
  v276 = v215 + 1460685746;
  LODWORD(STACK[0x610]) = v215 + 1460685746;
  v277 = v215 + 1460685746 - v275 - 448649394;
  v278 = (v277 ^ 0x35683148) & (2 * (v277 & 0x818D458A)) ^ v277 & 0x818D458A;
  v279 = ((2 * (v277 ^ 0x3572314C)) ^ 0x69FEE98C) & (v277 ^ 0x3572314C) ^ (2 * (v277 ^ 0x3572314C)) & 0xB4FF74C6;
  v280 = (v279 ^ 0x7E2000) & (4 * v278) ^ v278;
  v281 = ((4 * (v279 ^ 0x94011442)) ^ 0xD3FDD318) & (v279 ^ 0x94011442) ^ (4 * (v279 ^ 0x94011442)) & 0xB4FF74C4;
  v282 = (v281 ^ 0x90FD5000) & (16 * v280) ^ v280;
  v283 = ((16 * (v281 ^ 0x240224C6)) ^ 0x4FF74C60) & (v281 ^ 0x240224C6) ^ (16 * (v281 ^ 0x240224C6)) & 0xB4FF74C0;
  v284 = v282 ^ 0xB4FF74C6 ^ (v283 ^ 0x4F74400) & (v282 << 8);
  v285 = v277 ^ (2 * ((v284 << 16) & 0x34FF0000 ^ v284 ^ ((v284 << 16) ^ 0x74C60000) & (((v283 ^ 0xB0083086) << 8) & 0x34FF0000 ^ 0x8B0000 ^ (((v283 ^ 0xB0083086) << 8) ^ 0x7F740000) & (v283 ^ 0xB0083086))));
  LODWORD(STACK[0x608]) = v285;
  v286 = v276 + v274;
  v287 = v276 + v274 - 888418425 + (((v285 ^ 0x11575756) - 77685224) ^ ((v285 ^ 0xBCAA5980) + 1453560002) ^ ((v285 ^ 0x2C02A2D0) - 972330094));
  v288 = v287 + LODWORD(STACK[0x538]);
  v289 = (v288 ^ 0xF6EF338E) & (2 * (v288 & 0xE4F03BAF)) ^ v288 & 0xE4F03BAF;
  v290 = ((2 * (v288 ^ 0x772F1788)) ^ 0x27BE584E) & (v288 ^ 0x772F1788) ^ (2 * (v288 ^ 0x772F1788)) & 0x93DF2C26;
  v291 = (v290 ^ 0x3800804) & (4 * v289) ^ v289;
  v292 = ((4 * (v290 ^ 0x90412421)) ^ 0x4F7CB09C) & (v290 ^ 0x90412421) ^ (4 * (v290 ^ 0x90412421)) & 0x93DF2C24;
  v293 = (v292 ^ 0x35C2000) & (16 * v291) ^ v291;
  v294 = ((16 * (v292 ^ 0x90830C23)) ^ 0x3DF2C270) & (v292 ^ 0x90830C23) ^ (16 * (v292 ^ 0x90830C23)) & 0x93DF2C20;
  v295 = v293 ^ 0x93DF2C27 ^ (v294 ^ 0x11D20000) & (v293 << 8);
  v296 = v288 ^ (2 * ((v295 << 16) & 0x13DF0000 ^ v295 ^ ((v295 << 16) ^ 0x2C270000) & (((v294 ^ 0x820D2C07) << 8) & 0x13DF0000 ^ 0xD30000 ^ (((v294 ^ 0x820D2C07) << 8) ^ 0x5F2C0000) & (v294 ^ 0x820D2C07))));
  v297 = ((2 * (v275 ^ 0xA0480411)) ^ 0xE851B1FE) & (v275 ^ 0xA0480411) ^ (2 * (v275 ^ 0xA0480411)) & 0xF428D8FE;
  v298 = 2 * (v275 & 0x5460DCEE);
  v299 = (v297 ^ 0xE00090F8) & (4 * (v298 & (v275 ^ 0x489CCD) ^ v275 & 0x5460DCEE)) ^ v298 & (v275 ^ 0x489CCD) ^ v275 & 0x5460DCEE;
  v300 = ((4 * v297) ^ 0xD0A363FC) & v297 ^ (4 * v297) & 0xF428D8F8;
  v301 = v299 ^ 0xF428D8FF ^ (v300 ^ 0xD02040E0) & (16 * v299);
  v302 = ((16 * v300) ^ 0x428D8F00) & v300 & ((v301 << 8) ^ 0x100) ^ v301;
  LODWORD(STACK[0x5B0]) = v270;
  v303 = ((v270 ^ 0x84AD29B8) + 821139304) ^ ((v270 ^ 0x7A41EDC) - 1275551740) ^ ((v270 ^ 0x8309D32E) + 928345586);
  v304 = v273 ^ (*(v121 + v266) << 24);
  LODWORD(STACK[0x5A8]) = v304;
  v304 ^= 0xAEF9F2D2;
  LODWORD(STACK[0x5A4]) = v304;
  v305 = v303 - 2054211582 + ((((2 * v304) ^ 0x8536460A) + 1228101766) ^ (((2 * v304) ^ 0x35CA831E) - 103834222) ^ (((2 * v304) ^ 0x87A4D34D) + 1268895171));
  v306 = ((2 * (v305 ^ 0x27306586)) ^ 0xDB0E022E) & (v305 ^ 0x27306586) ^ (2 * (v305 ^ 0x27306586)) & 0xED870116;
  v307 = (v306 ^ 0x49060004) & (4 * (((2 * v305) & 0x956EC922 ^ 0xCAB76491) & v305)) ^ ((2 * v305) & 0x956EC922 ^ 0xCAB76491) & v305;
  v308 = ((4 * (v306 ^ 0x24810111)) ^ 0xB61C045C) & (v306 ^ 0x24810111) ^ (4 * (v306 ^ 0x24810111)) & 0xED870114;
  v309 = ((v308 & (16 * v307) ^ v307) << 8) & ~((16 * (v308 ^ 0x49830103)) & 0x6D870100 ^ ((16 * (v308 ^ 0x49830103)) ^ 0x58701100) & (v308 ^ 0x49830103)) ^ v308 & (16 * v307) ^ v307;
  LOWORD(v307) = ((2 * (v275 ^ 0x9CCD)) ^ 0x8046) & (v275 ^ 0x9CCD) ^ (2 * (v275 ^ 0x9CCD)) & 0x4022;
  LOWORD(v295) = v307 & (4 * (v298 & (v275 ^ 0x9CCD) ^ v275 & 0xDCEE)) ^ v298 & (v275 ^ 0x9CCD) ^ v275 & 0xDCEE;
  LOWORD(v307) = ((4 * (v307 ^ 0x4021)) ^ 0x8C) & (v307 ^ 0x4021);
  LOWORD(v295) = v275 ^ (2 * (v307 & (16 * v307) & (((v295 ^ 0x4023 ^ v307 & (16 * v295)) << 8) ^ 0x2300) ^ v295 ^ 0x4023 ^ v307 & (16 * v295)));
  v310 = ((v275 ^ (2 * v302)) & 0x3B9 ^ 0x330DB237) & (v295 & 0x3B9 ^ 0x330DB317) ^ v295 & 0x321;
  v311 = (766 * ((((v310 ^ 0x55975293) - 1205418813) ^ ((v310 ^ 0x2F1D27AE) + 1118614016) ^ ((v310 ^ 0xC987C583) - 1539943469)) + ((((v296 >> 28) ^ 0xAA62E35) - 1413113293) ^ (((v296 >> 28) ^ 0x7FE2A754) - 561966252) ^ (((v296 >> 28) ^ 0x7544896D) + 1411857771))) - 1599159816) % ((v305 ^ v271 ^ (2 * v309)) & 0x3D3 ^ 0x1D3);
  v312 = v7 + LODWORD(STACK[0x638]) + 1143532149;
  v313 = ((2 * (v312 ^ 0xA7A94C00)) ^ 0x72D23CF8) & (v312 ^ 0xA7A94C00) ^ (2 * (v312 ^ 0xA7A94C00)) & 0x39691E7C;
  LODWORD(STACK[0x5CC]) = v312 & 0x9EC0527C;
  v314 = 2 * (v312 & 0x9EC0527C);
  LODWORD(STACK[0x5C8]) = v314;
  v315 = (v313 ^ 0x30001870) & (4 * (v314 & (v312 ^ 0x9EA94878) ^ v312 & 0x9EC0527C)) ^ v314 & (v312 ^ 0x9EA94878) ^ v312 & 0x9EC0527C;
  v316 = ((4 * (v313 ^ 0x9290204)) ^ 0xE5A479F0) & (v313 ^ 0x9290204) ^ (4 * (v313 ^ 0x9290204)) & 0x39691E7C;
  v317 = (v316 ^ 0x21201860) & (16 * v315) ^ v315;
  v318 = ((16 * (v316 ^ 0x1849060C)) ^ 0x9691E7C0) & (v316 ^ 0x1849060C) ^ (16 * (v316 ^ 0x1849060C)) & 0x39691E70;
  v319 = v317 ^ 0x39691E7C ^ (v318 ^ 0x10010600) & (v317 << 8);
  LODWORD(STACK[0x630]) = v312;
  v320 = v312 ^ (2 * ((v319 << 16) & 0x39690000 ^ v319 ^ ((v319 << 16) ^ 0x1E7C0000) & (((v318 ^ 0x2968183C) << 8) & 0x39690000 ^ 0x10610000 ^ (((v318 ^ 0x2968183C) << 8) ^ 0x691E0000) & (v318 ^ 0x2968183C)))) ^ LODWORD(STACK[0x5A0]);
  v321 = v208 & (v205 ^ 0xED05E922) ^ v207;
  v322 = ((2 * (v205 ^ 0xFF2D6920)) ^ 0x65710A06) & (v205 ^ 0xFF2D6920) ^ (2 * (v205 ^ 0xFF2D6920)) & 0x32B88502;
  v323 = (v322 ^ 0x20300401) & (4 * v321) ^ v321;
  v324 = ((4 * (v322 ^ 0x12888501)) ^ 0xCAE2140C) & (v322 ^ 0x12888501) ^ (4 * (v322 ^ 0x12888501)) & 0x32B88500;
  v325 = (v324 ^ 0x2A00400) & (16 * v323) ^ v323;
  v326 = ((16 * (v324 ^ 0x30188103)) ^ 0x2B885030) & (v324 ^ 0x30188103) ^ (16 * (v324 ^ 0x30188103)) & 0x32B88500;
  v327 = v325 ^ 0x32B88503 ^ (v326 ^ 0x22880000) & (v325 << 8);
  v328 = (v327 << 16) & 0x32B80000 ^ v327 ^ ((v327 << 16) ^ 0x5030000) & (((v326 ^ 0x10308503) << 8) & 0x32B80000 ^ 0x2380000 ^ (((v326 ^ 0x10308503) << 8) ^ 0xB8850000) & (v326 ^ 0x10308503));
  v329 = LODWORD(STACK[0x59C]) - 1589951282;
  v330 = (((v320 ^ 0x10626E72) + 1157984655) ^ ((v320 ^ 0x97A5F5FA) - 1027413497) ^ ((v320 ^ 0x24749E78) + 1897103749)) + 300335964 + v329;
  v331 = (v330 ^ 0xF6B758F3) & (2 * (v330 & 0xE6A798FB)) ^ v330 & 0xE6A798FB;
  v332 = ((2 * (v330 ^ 0xF3B458B1)) ^ 0x2A278094) & (v330 ^ 0xF3B458B1) ^ (2 * (v330 ^ 0xF3B458B1)) & 0x1513C04A;
  v333 = (v332 ^ 0x28002) & (4 * v331) ^ v331;
  v334 = ((4 * (v332 ^ 0x1510404A)) ^ 0x544F0128) & (v332 ^ 0x1510404A) ^ (4 * (v332 ^ 0x1510404A)) & 0x1513C048;
  v335 = (v334 ^ 0x14030000) & (16 * v333) ^ v333;
  v336 = ((16 * (v334 ^ 0x110C042)) ^ 0x513C04A0) & (v334 ^ 0x110C042) ^ (16 * (v334 ^ 0x110C042)) & 0x1513C040;
  v337 = v335 ^ 0x1513C04A ^ (v336 ^ 0x11100000) & (v335 << 8);
  v338 = v330 ^ (2 * ((v337 << 16) & 0x15130000 ^ v337 ^ ((v337 << 16) ^ 0x404A0000) & (((v336 ^ 0x403C04A) << 8) & 0x15130000 ^ 0x4130000 ^ (((v336 ^ 0x403C04A) << 8) ^ 0x13C00000) & (v336 ^ 0x403C04A))));
  LODWORD(STACK[0x4B8]) = v320;
  v339 = v329 + v312;
  v340 = (((v320 ^ 0x1C349AB0) + 1230210381) ^ ((v320 ^ 0xA888B4FA) - 34624761) ^ ((v320 ^ 0x170F2BBA) + 1114125383)) - (v329 + v312) - 1124540685;
  v341 = (v340 ^ 0xC0904AAA) & (2 * (v340 & 0xE4190833)) ^ v340 & 0xE4190833;
  v342 = ((2 * (v340 ^ 0xC0A25A8E)) ^ 0x4976A57A) & (v340 ^ 0xC0A25A8E) ^ (2 * (v340 ^ 0xC0A25A8E)) & 0x24BB52BC;
  v343 = (v342 ^ 0x200018) & (4 * v341) ^ v341;
  v344 = ((4 * (v342 ^ 0x24895285)) ^ 0x92ED4AF4) & (v342 ^ 0x24895285) ^ (4 * (v342 ^ 0x24895285)) & 0x24BB52BC;
  v345 = (v344 ^ 0xA942B0) & (16 * v343) ^ v343;
  v346 = ((16 * (v344 ^ 0x24121009)) ^ 0x4BB52BD0) & (v344 ^ 0x24121009) ^ (16 * (v344 ^ 0x24121009)) & 0x24BB52B0;
  v347 = v345 ^ 0x24BB52BD ^ (v346 ^ 0xB10200) & (v345 << 8);
  v348 = v340 ^ (2 * ((v347 << 16) & 0x24BB0000 ^ v347 ^ ((v347 << 16) ^ 0x52BD0000) & (((v346 ^ 0x240A502D) << 8) & 0x24BB0000 ^ 0x4A90000 ^ (((v346 ^ 0x240A502D) << 8) ^ 0x3B520000) & (v346 ^ 0x240A502D))));
  v349 = (v348 ^ 0x5F8D4EFB) & (v338 ^ 0x4C84186F) ^ v338 & 0x7390E3B2;
  LODWORD(STACK[0x4A8]) = v348 ^ 0xCCA454DA;
  v350 = (((v348 ^ 0xCCA454DA ^ v338 ^ 0x34797AC4) - 1152851369) ^ ((v348 ^ 0xCCA454DA ^ v338 ^ 0x67E1BC72) - 389012255) ^ ((v348 ^ 0xCCA454DA ^ v338 ^ 0xFFA5274A) + 1888796633)) + 1320617083 + ((((2 * v349) ^ 0x91CF6363) - 1628184269) ^ (((2 * v349) ^ 0xB8479276) - 1216671704) ^ (((2 * v349) ^ 0xA888F151) - 1481346303));
  v351 = 766 * (HIBYTE(v296) & 0xF ^ 3) + 729998;
  v352 = ((*(v121 + (v351 - 979 * ((4387097 * v351) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + v311) ^ 0xEA) << 12);
  v353 = 766 * ((v296 >> 20) & 0xF ^ 4) + 729998;
  v354 = 766 * (HIWORD(v296) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v296) & 0xF) + 729998)) >> 32);
  v355 = ((v352 | *(v121 + v354) ^ 0xEA) << 8) ^ ((*(v121 + (v353 - 979 * ((4387097 * v353) >> 32))) ^ 0xEA) << 12);
  v356 = 766 * ((v354 & 0x3B9) + ((v296 >> 12) ^ 6) + (v354 & 0x3B9 ^ 0x3B9));
  v357 = 766 * ((v296 >> 8) & 0xF ^ 3) + 729998;
  LODWORD(STACK[0x5B4]) = v296;
  v358 = 766 * ((v296 >> 4) ^ 0xE) + 729998;
  v359 = *(v121 + (v356 - 979 * ((4387097 * v356) >> 32))) ^ 0xEA;
  v360 = v355 | *(v121 + (v357 - 979 * ((4387097 * v357) >> 32))) ^ 0xEA;
  LODWORD(STACK[0x5A0]) = v360;
  v361 = (v360 << 8) ^ (v359 << 12);
  v362 = LODWORD(STACK[0x598]) - v350 - 1342051163;
  v363 = ((*(v121 + (766 * (HIBYTE(v362) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIBYTE(v362) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v362 >> 28) + 729998 - 979 * ((4387097 * (766 * (v362 >> 28) + 729998)) >> 32))) ^ 0xEA) << 12);
  LODWORD(STACK[0x59C]) = v363;
  v364 = *(v121 + (v358 - 979 * ((4387097 * v358) >> 32))) ^ 0xEA;
  v365 = *(v121 + (766 * (v296 & 0xF ^ 1) + 729998 - 979 * ((4387097 * (766 * (v296 & 0xF ^ 1) + 729998)) >> 32))) ^ 0xEA;
  v366 = v361;
  LODWORD(STACK[0x580]) = v12;
  v367 = (v361 | v365) ^ (16 * v364);
  v368 = ((v363 | *(v121 + (766 * (HIWORD(v362) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v362) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * ((v362 >> 20) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v362 >> 20) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 12);
  v369 = (((70 - (v362 >> 4)) & 0x7E) + (((v362 >> 4) + 953) & 0xFEFEFEFE)) * ((v362 >> 4) + 953);
  v370 = ((v368 | *(v121 + (766 * ((v362 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v362 >> 8) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v362 >> 12) + 729998 - 979 * ((4387097 * (766 * (v362 >> 12) + 729998)) >> 32))) ^ 0xEA) << 12);
  LOBYTE(v307) = *(v121 + (v369 - 979 * ((4387097 * v369) >> 32)));
  v371 = *(v121 + (766 * (v362 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v362 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LOBYTE(v362) = v307 ^ ((v370 | v371) >> 4);
  v372 = v365 & 0xF;
  LODWORD(STACK[0x598]) = v372;
  v373 = 766 * (v372 & 0xFFFFFF0F | (16 * (v371 & 0xF)));
  v374 = *(v121 + (v373 + 455004 - 979 * ((4387097 * (v373 + 455004)) >> 32))) ^ 0xEA;
  v375 = STACK[0x430];
  v376 = 766 * ((v374 + 1705609344 - ((2 * v374) & 0x100)) ^ LODWORD(STACK[0x430]));
  LODWORD(STACK[0x590]) = v376;
  v377 = *(v121 + v376 % 0x3D3);
  v378 = 766 * ((((v377 >> 4) ^ 0xE) - 2 * (((v377 >> 4) ^ 0xE) & 0xFB ^ ((v377 & 0x10) != 0)) - 22) ^ *(v121 + (v373 - 979 * ((4387097 * v373) >> 32)))) + 455004;
  LOBYTE(v362) = v362 ^ 0xEA;
  LODWORD(STACK[0x594]) = v367;
  v379 = 766 * ((v367 >> 4) | (16 * (v362 & 0xF)));
  v380 = 766 * (*(v121 + (v379 + 455004 - 979 * ((4387097 * (v379 + 455004)) >> 32))) ^ (16 * (*(v121 + (v378 - 979 * ((4387097 * v378) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x58C]) = v380;
  v381 = *(v121 + (v379 - 979 * ((4387097 * v379) >> 32)));
  v382 = (*(v121 + (v380 - 979 * ((4387097 * v380) >> 32))) >> 4) ^ 0xE;
  v383 = 766 * ((v382 - ((2 * v382) & 0x55) - 22) ^ v381) + 455004;
  v384 = 766 * (v362 & 0xF0 | (v367 >> 8) & 0xF);
  v385 = 766 * (*(v121 + (v384 + 455004 - 979 * ((4387097 * (v384 + 455004)) >> 32))) ^ (16 * (*(v121 + (v383 - 979 * ((4387097 * v383) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x584]) = v385;
  v386 = (*(v121 + (v385 - 979 * ((4387097 * v385) >> 32))) >> 4) ^ 0xE;
  v387 = 766 * ((v386 - ((2 * v386) & 0x55) - 22) ^ *(v121 + (v384 - 979 * ((4387097 * v384) >> 32)))) + 455004;
  LODWORD(STACK[0x588]) = v366;
  v388 = 766 * ((v370 >> 8) & 0xF0 | (v366 >> 12));
  v389 = 766 * (*(v121 + (v388 + 455004 - 979 * ((4387097 * (v388 + 455004)) >> 32))) ^ (16 * (*(v121 + (v387 - 979 * ((4387097 * v387) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x57C]) = v389;
  v390 = (*(v121 + (v389 - 979 * ((4387097 * v389) >> 32))) >> 4) ^ 0xE;
  v391 = 766 * ((v390 - ((2 * v390) & 0x55) - 22) ^ *(v121 + (v388 - 979 * ((4387097 * v388) >> 32)))) + 455004;
  LODWORD(STACK[0x570]) = HIWORD(v370);
  v392 = HIWORD(v370) & 0xF;
  LODWORD(STACK[0x578]) = v392;
  v393 = 766 * (HIWORD(v366) & 0xF | (16 * v392));
  v394 = v393 % (((~v392 & 0x49ADE385 | HIWORD(v370) & 5) - 1236132597) | 0x353);
  v395 = *(v121 + (v393 + 455004 - 979 * ((4387097 * (v393 + 455004)) >> 32))) ^ (16 * (*(v121 + (v391 - 979 * ((4387097 * v391) >> 32))) ^ 0xEA)) ^ 0xEA;
  LODWORD(STACK[0x56C]) = v395;
  v396 = *(v121 + (766 * v395 - 979 * ((4387097 * (766 * v395)) >> 32)));
  v397 = v205 ^ (2 * v328) ^ 0x87D9D8AB ^ LODWORD(STACK[0x60C]);
  v398 = 766 * ((((v396 >> 4) ^ 0xE) - 2 * (((v396 >> 4) ^ 0xE) & 0xFB ^ ((v396 & 0x10) != 0)) - 22) ^ *(v121 + v394)) + 455004;
  LODWORD(STACK[0x574]) = v355;
  v399 = 766 * ((v368 >> 8) & 0xF0 | (v355 >> 12));
  v400 = 766 * (*(v121 + (v399 + 455004 - 979 * ((4387097 * (v399 + 455004)) >> 32))) ^ (16 * (*(v121 + (v398 - 979 * ((4387097 * v398) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x564]) = v400;
  v401 = *(v121 + (v400 - 979 * ((4387097 * v400) >> 32))) >> 4;
  v402 = 766 * (((v401 ^ 0xE) + ((2 * ((v401 ^ 0xE | 0x7A) ^ v401)) ^ 0x17) - 21) ^ *(v121 + (v399 - 979 * ((4387097 * v399) >> 32)))) + 455004;
  v403 = 766 * ((v368 >> 12) & 0xF0 | HIWORD(v355) & 0xF);
  LODWORD(STACK[0x55C]) = v403;
  v404 = 766 * (*(v121 + (v403 + 455004 - 979 * ((4387097 * (v403 + 455004)) >> 32))) ^ (16 * (*(v121 + (v402 - 979 * ((4387097 * v402) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x558]) = v404;
  LODWORD(STACK[0x65C]) = v397;
  LODWORD(STACK[0x560]) = (v404 + 455004) % (((v404 + 455004) & 0x155AFE ^ ((v397 & 0xD9B122A3 ^ 0xD9B122A3) + (v397 & 0xD9B122A3)) ^ (-455005 - v404) & 0xAE155AFE) * (((-455005 - v404) & 0xD84E57E3 | (v404 + 455004) & 0x4E57E2) ^ 0x495DBE0C));
  v405 = v275 - v287 - 868141724;
  v406 = (v405 ^ 0x22E6B93) & (2 * (v405 & 0xA32F6BDB)) ^ v405 & 0xA32F6BDB;
  v407 = ((2 * (v405 ^ 0x463CE805)) ^ 0xCA2707BC) & (v405 ^ 0x463CE805) ^ (2 * (v405 ^ 0x463CE805)) & 0xE51383DE;
  v408 = (v407 ^ 0x8003039C) & (4 * v406) ^ v406;
  v409 = ((4 * (v407 ^ 0x25108042)) ^ 0x944E0F78) & (v407 ^ 0x25108042) ^ (4 * (v407 ^ 0x25108042)) & 0xE51383DC;
  v410 = (v409 ^ 0x84020350) & (16 * v408) ^ v408;
  v411 = ((16 * (v409 ^ 0x61118086)) ^ 0x51383DE0) & (v409 ^ 0x61118086) ^ (16 * (v409 ^ 0x61118086)) & 0xE51383D0;
  v412 = v410 ^ 0xE51383DE ^ (v411 ^ 0x4110011E) & (v410 << 8);
  v413 = v405 ^ (2 * ((v412 << 16) & 0x65130000 ^ v412 ^ ((v412 << 16) ^ 0x3DE0000) & (((v411 ^ 0xA403821E) << 8) & 0x65130000 ^ 0x64100000 ^ (((v411 ^ 0xA403821E) << 8) ^ 0x13830000) & (v411 ^ 0xA403821E))));
  v414 = v339 - v350;
  v415 = (v286 ^ 0xD3F87E7C) & (2 * (v286 & 0x1BF2707E)) ^ v286 & 0x1BF2707E;
  v416 = ((2 * (v286 ^ 0xE7BC7E28)) ^ 0xF89C1CAC) & (v286 ^ 0xE7BC7E28) ^ (2 * (v286 ^ 0xE7BC7E28)) & 0xFC4E0E56;
  v417 = (v416 ^ 0xF8080000) & (4 * v415) ^ v415;
  v418 = ((4 * (v416 ^ 0x4420252)) ^ 0xF1383958) & (v416 ^ 0x4420252) ^ (4 * (v416 ^ 0x4420252)) & 0xFC4E0E54;
  v419 = (v418 ^ 0xF0080840) & (16 * v417) ^ v417;
  v420 = ((16 * (v418 ^ 0xC460606)) ^ 0xC4E0E560) & (v418 ^ 0xC460606) ^ (16 * (v418 ^ 0xC460606)) & 0xFC4E0E50;
  v421 = v419 ^ 0xFC4E0E56 ^ (v420 ^ 0xC4400400) & (v419 << 8);
  v422 = LODWORD(STACK[0x608]) ^ 0x6365B5E1 ^ v413 ^ 0x89B67580;
  LODWORD(STACK[0x4AC]) = v422;
  v423 = v286 ^ (2 * ((v421 << 16) & 0x7C4E0000 ^ v421 ^ ((v421 << 16) ^ 0xE560000) & (((v420 ^ 0x380E0A16) << 8) & 0xFC4E0000 ^ 0x30400000 ^ (((v420 ^ 0x380E0A16) << 8) ^ 0x4E0E0000) & (v420 ^ 0x380E0A16)))) ^ 0x9CD5339A ^ (v422 - ((2 * v422) & 0xCE6EBE90) + 1731682120);
  v424 = v423 + LODWORD(STACK[0x510]);
  LODWORD(STACK[0x568]) = v424;
  v424 += 978913868;
  LODWORD(STACK[0x628]) = v339 - v350 - 1910322976;
  v425 = (v414 - 1910322976 - ((2 * (v414 - 1910322976)) & 0xC173F326) + 1622800787) ^ v348 ^ 0xCCA454DA;
  LODWORD(STACK[0x4B0]) = v425;
  v426 = v425 ^ (v350 - (v348 ^ 0xAC1DAD49));
  v427 = LODWORD(STACK[0x53C]) - v426;
  v428 = 766 * (v427 >> 28) + 729998;
  v429 = ((((*(v121 + (766 * (HIBYTE(v427) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIBYTE(v427) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (v428 - 979 * ((4387097 * v428) >> 32))) ^ 0xEA) << 12) | *(v121 + (766 * (HIWORD(v427) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v427) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * ((v427 >> 20) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v427 >> 20) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 12);
  v430 = *(v121 + (766 * ((v427 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v427 >> 8) & 0xF) + 729998)) >> 32)));
  LODWORD(STACK[0x554]) = v427;
  v431 = *(v121 + (766 * (v427 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v427 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  v432 = (((v429 | v430 ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v427 >> 12) + 729998 - 979 * ((4387097 * (766 * (v427 >> 12) + 729998)) >> 32))) ^ 0xEA) << 12) | v431) ^ (16 * (*(v121 + (766 * (v427 >> 4) + 729998 - 979 * ((4387097 * (766 * (v427 >> 4) + 729998)) >> 32))) ^ 0xEA));
  v433 = *(v121 + (766 * (v424 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v424 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  v434 = v433;
  LODWORD(STACK[0x4FC]) = v433;
  v435 = 766 * (v433 & 0xF | (16 * (v431 & 0xF)));
  v436 = *(v121 + (v435 + 455004 - 979 * ((4387097 * (v435 + 455004)) >> 32))) ^ 0xEA;
  v437 = 766 * ((v436 + 1705609344 - ((2 * v436) & 0x100)) ^ v375);
  LODWORD(STACK[0x500]) = v437;
  v438 = (*(v121 + v437 % 0x3D3) >> 4) ^ 0xE;
  v439 = (766 * ((v438 - ((2 * v438) & 0x55) - 22) ^ *(v121 + (v435 - 979 * ((4387097 * v435) >> 32)))) + 455004) % (((v432 & 0x5A03609A ^ 0x5A03609A) + (v432 & 0x5A03609A)) & 0xBE07610C ^ 0x1A0363DB);
  v440 = ((HIBYTE(v424) & 0xF) + 953) * (v413 & 0x2FE ^ 0x298 | v413 & 0x2FE ^ 0x66);
  v441 = ((*(v121 + (v440 - 979 * ((4387097 * v440) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v424 >> 28) + 729998 - 979 * ((4387097 * (766 * (v424 >> 28) + 729998)) >> 32))) ^ 0xEA) << 12) ^ (16 * (*(v121 + (766 * ((v424 >> 20) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v424 >> 20) & 0xF) + 729998)) >> 32))) ^ 0xEA));
  LODWORD(STACK[0x504]) = v424;
  v442 = 766 * ((v424 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v424 >> 8) & 0xF) + 729998)) >> 32);
  v443 = 766 * (v424 >> 4) + 729998 - 979 * ((4387097 * (766 * (v424 >> 4) + 729998)) >> 32);
  v444 = *(v121 + (766 * (v424 >> 12) + 729998 - 979 * ((4387097 * (766 * (v424 >> 12) + 729998)) >> 32)));
  v445 = *(v121 + (766 * (HIWORD(v424) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v424) & 0xF) + 729998)) >> 32))) ^ 0xEA ^ v441;
  LODWORD(STACK[0x4DC]) = v441;
  v446 = v444 ^ 0xEA;
  v447 = ((*(v121 + v442) ^ 0xEA) << 8) | (v445 << 16);
  LOBYTE(v397) = v445;
  LODWORD(STACK[0x4D4]) = v445;
  v448 = v447 ^ (v446 << 12);
  v449 = v432 >> ((v439 & 4 ^ 4) + (v439 & 4));
  v450 = 766 * ((v449 >> 4) & 0xF0 | (v448 >> 12));
  v451 = *(v121 + v443);
  LODWORD(STACK[0x4F4]) = v448;
  v452 = ((v447 | v434) ^ (16 * (v451 ^ 0xEA))) >> 4;
  v453 = (v448 | v434) ^ (16 * (v451 ^ 0xEA));
  LODWORD(STACK[0x4F8]) = v453;
  v454 = 766 * (v452 & 0xFFFFFF0F | (16 * (v449 & 0xF)));
  v455 = v454 - 979 * ((4387097 * v454) >> 32);
  v456 = 766 * (*(v121 + (v454 + 455004 - 979 * ((4387097 * (v454 + 455004)) >> 32))) ^ (16 * (*(v121 + v439) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x4F0]) = v456;
  v457 = (*(v121 + (v456 - 979 * ((4387097 * v456) >> 32))) >> 4) ^ 0xE;
  v458 = 766 * ((v457 - ((2 * v457) & 0x55) - 22) ^ *(v121 + v455)) + 455004;
  v459 = v449;
  v460 = 766 * (v449 & 0xF0 | (v453 >> 8) & 0xF);
  v461 = 766 * (*(v121 + (v460 + 455004 - 979 * ((4387097 * (v460 + 455004)) >> 32))) ^ (16 * (*(v121 + (v458 - 979 * ((4387097 * v458) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x4EC]) = v461;
  v462 = (*(v121 + (v461 - 979 * ((4387097 * v461) >> 32))) >> 4) ^ 0xE;
  v463 = 766 * ((v462 - ((2 * v462) & 0x55) - 22) ^ *(v121 + (v460 - 979 * ((4387097 * v460) >> 32)))) + 455004;
  v464 = 766 * (*(v121 + (v450 + 455004) % ((v450 + 455004) & 0x3D2 ^ (675 - v450) & 0x3D3)) ^ (16 * (*(v121 + (v463 - 979 * ((4387097 * v463) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x4E0]) = v464;
  v465 = *(v121 + (v464 - 979 * ((4387097 * v464) >> 32)));
  v466 = 766 * ((((v465 >> 4) ^ 0xE) + ~(2 * (((v465 >> 4) ^ 0xE) & 0xFB ^ ((v465 & 0x10) != 0))) - 21) ^ *(v121 + (v450 - 979 * ((4387097 * v450) >> 32)))) + 455004;
  v467 = (v459 >> 8) & 0xF0 | HIWORD(v448) & 0xF;
  v468 = 766 * (((2 * v467) & 0xA4) + (v467 ^ 0x252));
  v469 = 766 * (*(v121 + (v468 - 979 * ((4387097 * v468) >> 32))) ^ (16 * (*(v121 + (v466 - 979 * ((4387097 * v466) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x4D8]) = v469;
  v470 = (*(v121 + (v469 - 979 * ((4387097 * v469) >> 32))) ^ 0xEAu) >> (HIBYTE(LODWORD(STACK[0x62C])) & 4 ^ 4) >> (HIBYTE(LODWORD(STACK[0x62C])) & 4);
  v471 = 766 * ((v470 + (~(2 * v470) | 0x2B) - 21) ^ *(v121 + (766 * v467 - 979 * ((4387097 * (766 * v467)) >> 32)))) + 455004;
  LODWORD(STACK[0x4CC]) = v459;
  v472 = 766 * ((v459 >> 12) & 0xF0 | (v397 >> 4));
  v473 = *(v121 + (v472 + 455004 - 979 * ((4387097 * (v472 + 455004)) >> 32))) ^ (16 * (*(v121 + (v471 - 979 * ((4387097 * v471) >> 32))) ^ 0xEA)) ^ 0xEA;
  LODWORD(STACK[0x4D0]) = 766 * v473;
  if (v473 <= 1)
  {
    v474 = 766 * v473;
  }

  else
  {
    v474 = (766 * v473 - 979) % 0x3D3;
  }

  v475 = 766 * ((((*(v121 + v474) >> 4) ^ 0xE) - 2 * (((*(v121 + v474) >> 4) ^ 0xE) & 0xFB ^ ((*(v121 + v474) & 0x10) != 0)) - 22) ^ *(v121 + (v472 - 979 * ((4387097 * v472) >> 32)))) + 455004;
  v476 = 766 * (HIWORD(v459) & 0xF0 | (v441 >> 8) & 0xF);
  v477 = 766 * (*(v121 + (v476 + 455004 - 979 * ((4387097 * (v476 + 455004)) >> 32))) ^ (16 * (*(v121 + (v475 - 979 * ((4387097 * v475) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x4C8]) = v477;
  v478 = (*(v121 + (v477 - 979 * ((4387097 * v477) >> 32))) >> 4) ^ 0xE;
  LODWORD(STACK[0x4C4]) = (766 * ((v478 - ((2 * v478) & 0x55) - 22) ^ *(v121 + (v476 - 979 * ((4387097 * v476) >> 32)))) + 455004) % (((v459 >> 12) & 0xD0 ^ 0x3D3) + ((v459 >> 12) & 0xD0));
  v479 = *(v121 + (766 * (((HIWORD(LODWORD(STACK[0x63C])) & 0xF ^ 0x75B5A7DD) - 2146658206) ^ ((HIWORD(LODWORD(STACK[0x63C])) & 0xF ^ 0x5432F97A) + 562808519) ^ ((HIWORD(LODWORD(STACK[0x63C])) & 0xF ^ 0x21875EACu) + 1413374225)) - 1078035714) % 0x3D3);
  v480 = *(v121 + (766 * ((((LODWORD(STACK[0x63C]) >> 8) & 0xF ^ 0x37AAE536) - 526928757) ^ (((LODWORD(STACK[0x63C]) >> 8) & 0xF ^ 0x37B9B092) + 1619321135) ^ (((LODWORD(STACK[0x63C]) >> 8) & 0xF ^ 0x1355AF) + 1462633492)) - 158294274) % 0x3D3);
  v481 = ((*(v121 + (766 * ((((LODWORD(STACK[0x63C]) >> 20) & 0xF ^ 0x7E3F8517) + 854024279) ^ (((LODWORD(STACK[0x63C]) >> 20) & 0xF ^ 0x6BFE2B85) - 1490628923) ^ (((LODWORD(STACK[0x63C]) >> 20) & 0xF ^ 0x15C1AE94) + 1494830038)) + 252515870) % 0x3D3) << 12) ^ (((v479 | 0xAFFF00) & ((*(v121 + (766 * ((((LODWORD(STACK[0x63C]) >> 28) ^ 0x83815CD) + 2074203609) ^ (((LODWORD(STACK[0x63C]) >> 28) ^ 0x567945C4) - 1512012334) ^ (((LODWORD(STACK[0x63C]) >> 28) ^ 0x5E41500E) + 769167388)) + 436103860) % 0x3D3) << 12) ^ (*(v121 + (766 * (((HIBYTE(LODWORD(STACK[0x63C])) & 0xF ^ 0x5D4A12DF) - 204095116) ^ ((HIBYTE(LODWORD(STACK[0x63C])) & 0xF ^ 0x1CFF9A6E) - 1302312509) ^ ((HIBYTE(LODWORD(STACK[0x63C])) & 0xF ^ 0x41B588BEu) - 282436845)) + 2110774998) % 0x3D3) << 8) ^ 0xA55C6A) | v479 & 0x95) << 8) ^ 0x8D46E9D1) & (v480 ^ 0xFFFFFF13) | v480 & 0x2E;
  v482 = 16 * *(v121 + (766 * ((((LODWORD(STACK[0x63C]) >> 12) ^ 0x28CF8B5E) + 1222989072) ^ (((LODWORD(STACK[0x63C]) >> 12) ^ 0x66270A8D) - 2045913891) ^ (((LODWORD(STACK[0x63C]) >> 12) ^ 0x4EE881DBu) - 1362993269)) + 1069929026) % 0x3D3);
  v483 = (v481 ^ 0x7E0) & (v482 ^ 0xEA0) ^ v482 & 0x410;
  v484 = 766 * ((((LODWORD(STACK[0x63C]) >> 4) ^ 0x2D8FBCAE) - 1822099447) ^ ((LODWORD(STACK[0x63C]) >> 4) + 1089755463) ^ (((LODWORD(STACK[0x63C]) >> 4) ^ 0x2832FE) + 1052997209)) - 1139558436;
  v485 = (((v482 ^ 0x38354151) + 1254254263) ^ ((v482 ^ 0xC932E317) - 1144666895) ^ ((v482 ^ 0xF107ACE6) - 2081387774)) - 194083345 + (((v481 ^ 0x5B63C0DD) + 2067365398) ^ ((v481 ^ 0x64349409) + 1148070594) ^ ((v481 ^ 0x1909F72F) + 961759720));
  v486 = (v485 ^ 0xD2042344) & (2 * (v485 & 0x92963395)) ^ v485 & 0x92963395;
  v487 = ((2 * (v485 ^ 0xD704444E)) ^ 0x8B24EFB6) & (v485 ^ 0xD704444E) ^ (2 * (v485 ^ 0xD704444E)) & 0x459277DA;
  v488 = (v487 ^ 0x24691) & (4 * v486) ^ v486;
  v489 = ((4 * (v487 ^ 0x44921049)) ^ 0x1649DF6C) & (v487 ^ 0x44921049) ^ (4 * (v487 ^ 0x44921049)) & 0x459277D8;
  v490 = (v489 ^ 0x4005740) & (16 * v488) ^ v488;
  v491 = ((16 * (v489 ^ 0x41922093)) ^ 0x59277DB0) & (v489 ^ 0x41922093) ^ (16 * (v489 ^ 0x41922093)) & 0x459277D0;
  v492 = v490 ^ 0x459277DB ^ (v491 ^ 0x41027500) & (v490 << 8);
  v493 = (((v492 << 16) & 0x120000 ^ v492 ^ ((v492 << 16) ^ 0x5B0000) & ((((v491 ^ 0x490024B) << 8) ^ 0x770000) & (v491 ^ 0x490024B) ^ ((v491 ^ 0x490024B) << 8) & 0x120000)) << 9) ^ (v485 << 8);
  v494 = (((v493 ^ 0x21A2AB01) + 564968647) ^ ((v493 ^ 0xBF7EADD3) - 1083131371) ^ ((v493 ^ 0x80025D2) + 135148054)) - ((((v483 << 9) ^ 0x3BAFB392) + 115416957) ^ (((v483 << 9) ^ 0xDFF20F58) - 490953801) ^ (((v483 << 9) ^ 0xE455BCCA) - 652537819)) + 146361815;
  v495 = (v494 ^ 0x19B30849) & (2 * (v494 & 0x9DBB2A50)) ^ v494 & 0x9DBB2A50;
  v496 = ((2 * (v494 ^ 0x20E55849)) ^ 0x7ABCE432) & (v494 ^ 0x20E55849) ^ (2 * (v494 ^ 0x20E55849)) & 0xBD5E7218;
  v497 = (v496 ^ 0x381C6000) & (4 * v495) ^ v495;
  v498 = ((4 * (v496 ^ 0x85421209)) ^ 0xF579C864) & (v496 ^ 0x85421209) ^ (4 * (v496 ^ 0x85421209)) & 0xBD5E7218;
  v499 = (v498 ^ 0xB5584000) & (16 * v497) ^ v497;
  v500 = ((16 * (v498 ^ 0x8063219)) ^ 0xD5E72190) & (v498 ^ 0x8063219) ^ (16 * (v498 ^ 0x8063219)) & 0xBD5E7210;
  v501 = v499 ^ 0xBD5E7219 ^ (v500 ^ 0x95462000) & (v499 << 8);
  v502 = v494 ^ (2 * ((v501 << 16) & 0x3D5E0000 ^ v501 ^ ((v501 << 16) ^ 0x72190000) & (((v500 ^ 0x28185209) << 8) & 0x3D5E0000 ^ 0x210C0000 ^ (((v500 ^ 0x28185209) << 8) ^ 0x5E720000) & (v500 ^ 0x28185209))));
  LODWORD(STACK[0x3E8]) = v502;
  v503 = *(v121 + (LODWORD(STACK[0x620]) - 680786454));
  LODWORD(STACK[0x60C]) = v503;
  v504 = (v502 ^ 0x9731D293) & (v503 ^ 0xFFFFFF15) ^ v503 & 0xE;
  v505 = v504 ^ (16 * *(v121 + v484 % 0x3D3));
  LODWORD(STACK[0x3D8]) = v505;
  v506 = (v505 & 0xDE159C64 ^ 0xAA608FAB) & (v505 & 0xDE159C64 ^ 0x316E53DB) ^ v504 & 0x44110004;
  v507 = LODWORD(STACK[0x4C0]) - LODWORD(STACK[0x66C]) + v205 + (((v506 ^ 0xBC930F99) + 1801507068) ^ ((v506 ^ 0xF96118B9) + 781371356) ^ ((v506 ^ 0xBB8788CF) + 1819563950)) - 1580945293 + LODWORD(STACK[0x610]);
  v508 = (v507 ^ 0xD7E61A14) & (2 * (v507 & 0x17F65319)) ^ v507 & 0x17F65319;
  v509 = ((2 * (v507 ^ 0xDDC21804)) ^ 0x9468963A) & (v507 ^ 0xDDC21804) ^ (2 * (v507 ^ 0xDDC21804)) & 0xCA344B1C;
  v510 = (v509 ^ 0x80200008) & (4 * v508) ^ v508;
  v511 = ((4 * (v509 ^ 0x4A144905)) ^ 0x28D12C74) & (v509 ^ 0x4A144905) ^ (4 * (v509 ^ 0x4A144905)) & 0xCA344B1C;
  v512 = (v511 ^ 0x8100810) & (16 * v510) ^ v510;
  v513 = ((16 * (v511 ^ 0xC2244309)) ^ 0xA344B1D0) & (v511 ^ 0xC2244309) ^ (16 * (v511 ^ 0xC2244309)) & 0xCA344B10;
  v514 = v512 ^ 0xCA344B1D ^ (v513 ^ 0x82040100) & (v512 << 8);
  v515 = v507 ^ (2 * ((v514 << 16) & 0x4A340000 ^ v514 ^ ((v514 << 16) ^ 0x4B1D0000) & (((v513 ^ 0x48304A0D) << 8) & 0x4A340000 ^ 0x4A340000 ^ (((v513 ^ 0x48304A0D) << 8) ^ 0x344B0000) & (v513 ^ 0x48304A0D))));
  LODWORD(STACK[0x4BC]) = v413;
  v516 = ((v413 ^ 0xB9AB66) + 1995448602) ^ ((v413 ^ 0xDE42035A) - 1475639002) ^ ((v413 ^ 0xB5D7C45B) - 1013035483);
  LODWORD(STACK[0x66C]) = v515 ^ 0x4FE341FF;
  v517 = v515 ^ 0x4FE341FF ^ (v516 - ((2 * v516 - 1175904030) & 0xB0AB09B8) - 1253436083);
  v518 = (v517 - ((2 * v517) & 0xC53433CE) - 493217305) ^ v413 ^ 0x89B67580;
  LODWORD(STACK[0x610]) = v518;
  v519 = v518 + v423;
  LODWORD(STACK[0x4A0]) = v519;
  LODWORD(STACK[0x4A4]) = v519 + 826522597;
  v520 = v519 + 826522597 + LODWORD(STACK[0x530]);
  v521 = LODWORD(STACK[0x670]) - LODWORD(STACK[0x550]) + LODWORD(STACK[0x630]);
  v522 = (v521 ^ 0xAB62EFC1) & (2 * (v521 & 0xCA6B0FC5)) ^ v521 & 0xCA6B0FC5;
  v523 = ((2 * (v521 ^ 0x3BA2FDC3)) ^ 0xE393E40C) & (v521 ^ 0x3BA2FDC3) ^ (2 * (v521 ^ 0x3BA2FDC3)) & 0xF1C9F206;
  v524 = (v523 ^ 0x61806004) & (4 * v522) ^ v522;
  v525 = ((4 * (v523 ^ 0x10481202)) ^ 0xC727C818) & (v523 ^ 0x10481202) ^ (4 * (v523 ^ 0x10481202)) & 0xF1C9F204;
  v526 = (v525 ^ 0xC101C000) & (16 * v524) ^ v524;
  v527 = ((16 * (v525 ^ 0x30C83206)) ^ 0x1C9F2060) & (v525 ^ 0x30C83206) ^ (16 * (v525 ^ 0x30C83206)) & 0xF1C9F200;
  v528 = v526 ^ 0xF1C9F206 ^ (v527 ^ 0x10892000) & (v526 << 8);
  v529 = v521 ^ (2 * ((v528 << 16) & 0x71C90000 ^ v528 ^ ((v528 << 16) ^ 0x72060000) & (((v527 ^ 0xE140D206) << 8) & 0x71C90000 ^ 0x30090000 ^ (((v527 ^ 0xE140D206) << 8) ^ 0x49F20000) & (v527 ^ 0xE140D206))));
  v530 = ((LODWORD(STACK[0x4B8]) ^ v529 ^ 0x2EE85C4B) + 327164491) ^ ((LODWORD(STACK[0x4B8]) ^ v529 ^ 0x1D2B2EBF) + 541282495) ^ ((LODWORD(STACK[0x4B8]) ^ v529 ^ 0x59889CCD) + 1692459725);
  v531 = 2 * ((v529 ^ 0x50D57282) & (LODWORD(STACK[0x4B8]) ^ 0x23B305F0) ^ STACK[0x4B8] & 0x192D994B);
  v532 = (((v531 ^ 0x98CE30CF) - 1334263896) ^ ((v531 ^ 0x1CE50787) + 877889776) ^ ((v531 ^ 0x866935C8) - 1361069407)) + v530;
  v533 = LODWORD(STACK[0x628]) ^ (v532 - 1986627723) ^ (v414 + 142425962);
  LODWORD(STACK[0x620]) = v533;
  v534 = ((((*(v121 + (766 * (HIBYTE(v520) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIBYTE(v520) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v520 >> 28) + 729998) % ((113 - 766 * (v520 >> 28)) & 0x3D3 | (766 * (v520 >> 28) + 729998) & 0x3D2)) ^ 0xEA) << 12) | *(v121 + (766 * (HIWORD(v520) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v520) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * ((v520 >> 20) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v520 >> 20) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 12);
  LODWORD(STACK[0x4C0]) = v520;
  v535 = *(v121 + (766 * (v520 >> 12) + 729998 - 979 * ((4387097 * (766 * (v520 >> 12) + 729998)) >> 32))) ^ 0xEA;
  v536 = v534 | *(v121 + (766 * ((v520 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v520 >> 8) & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LODWORD(STACK[0x4B8]) = v536;
  LODWORD(STACK[0x47C]) = v534;
  v537 = (v536 << 8) ^ (v535 << 12);
  v538 = *(v121 + (766 * (v520 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v520 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  v539 = *(v121 + (567190188 - ((1073740870 - (v520 >> 4)) & 0x21CE9C2E ^ ((v520 >> 4) + 953) & 0x3AE)) * ((v520 >> 4) + 953) % 0x3D3) ^ ((v537 | v538) >> 4);
  v540 = v426 + v533;
  v541 = LODWORD(STACK[0x508]) - (v426 + v533) + 1715248572;
  v542 = ((*(v121 + (766 * (HIBYTE(v541) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIBYTE(v541) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v541 >> 28) + 729998 - 979 * ((4387097 * (766 * (v541 >> 28) + 729998)) >> 32))) ^ 0xEA) << 12);
  LODWORD(STACK[0x4B4]) = v542;
  v543 = ((v542 | *(v121 + (766 * (HIWORD(v541) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v541) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * ((v541 >> 20) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v541 >> 20) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 12);
  v544 = 766 * (v541 >> 4) + 729998 - 979 * ((4387097 * (766 * (v541 >> 4) + 729998)) >> 32);
  v545 = *(v121 + (766 * (v541 >> 12) + 729998 - 979 * ((4387097 * (766 * (v541 >> 12) + 729998)) >> 32))) ^ 0xEA;
  v546 = v543 | *(v121 + (766 * ((v541 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v541 >> 8) & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LODWORD(STACK[0x484]) = v543;
  v547 = (v546 << 8) ^ (v545 << 12);
  v548 = *(v121 + (766 * (v541 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v541 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LOBYTE(v545) = *(v121 + v544) ^ ((v547 | v548) >> 4);
  v549 = v538 & 0xF;
  v550 = 766 * (v549 | (16 * (v548 & 0xF)));
  v551 = *(v121 + (v550 + 455004 - 979 * ((4387097 * (v550 + 455004)) >> 32))) ^ 0xEA;
  v552 = v550 - 979 * ((4387097 * v550) >> 32);
  v553 = v375;
  v554 = 766 * ((v551 + 1705609344 - ((2 * v551) & 0x100)) ^ v375);
  v555 = (v554 + 455004) % 0x3D3;
  v556 = (*(v121 + v554 % 0x3D3) >> 4) ^ 0xE;
  v557 = 766 * ((v556 - ((2 * v556) & 0x55) - 22) ^ *(v121 + v552)) + 455004;
  v558 = v557 - 979 * ((4387097 * v557) >> 32);
  LOBYTE(v557) = v539 ^ 0xEA;
  LOBYTE(v539) = v545 ^ 0xEA;
  v559 = 766 * (v557 & 0xF | (16 * ((v545 ^ 0xEA) & 0xF)));
  v560 = 766 * (*(v121 + (v559 + 455004 - 979 * ((4387097 * (v559 + 455004)) >> 32))) ^ (16 * (*(v121 + v558) ^ 0xEA)) ^ 0xEA);
  v561 = *(v121 + (v560 - 979 * ((4387097 * v560) >> 32)));
  v562 = 766 * ((((v561 >> 4) ^ 0xE) - 2 * (((v561 >> 4) ^ 0xE) & 0xFB ^ ((v561 & 0x10) != 0)) - 22) ^ *(v121 + (v559 - 979 * ((4387097 * v559) >> 32)))) + 455004;
  v563 = 766 * (v539 & 0xF0 | (v557 >> 4));
  v564 = *(v121 + (v563 + 455004 - 979 * ((4387097 * (v563 + 455004)) >> 32))) ^ (16 * (*(v121 + (v562 - 979 * ((4387097 * v562) >> 32))) ^ 0xEA));
  v565 = v563 - 979 * ((4387097 * v563) >> 32);
  v566 = *(v121 + v555) ^ 0xEA;
  v567 = 766 * (v549 & 0xFFFFFF0F | (16 * (v566 & 0xF)));
  v568 = 766 * (v564 ^ 0xEA);
  v569 = (v567 + 257376) % ((671 - v567) & 0x3D3 | (v567 + 257376) & 0x3D2);
  v570 = (*(v121 + (v568 - 979 * ((4387097 * v568) >> 32))) >> 4) ^ 0xE;
  v571 = 766 * ((((((2 * v570) & 4) - v570 + 13) ^ *(v121 + v565)) & 8 | v570 & 7 ^ *(v121 + v565) & 0xF7) ^ 0xE2) + 455004;
  v572 = 766 * ((v547 >> 8) & 0xF0 | (v537 >> 12));
  v573 = *(v121 + (v572 + 455004 - 979 * ((4387097 * (v572 + 455004)) >> 32))) ^ (16 * (*(v121 + (v571 - 979 * ((4387097 * v571) >> 32))) ^ 0xEA)) ^ 0xEA;
  v574 = ((v573 & 0x2FE ^ 0x2FE) + (v573 & 0x2FE)) * v573;
  v575 = *(v121 + v574 - 979 * (((8774193 * v574) >> 32) >> 1)) >> 4;
  v576 = 766 * (((v575 ^ 0xE) + ((2 * ((v575 ^ 0xE | 0x7A) ^ v575)) ^ 0x17) - 21) ^ *(v121 + (v572 - 979 * ((4387097 * v572) >> 32)))) + 455004;
  v577 = 766 * ((v547 >> 12) & 0xF0 | HIWORD(v537) & 0xF);
  v578 = 766 * (*(v121 + (v577 + 455004 - 979 * ((4387097 * (v577 + 455004)) >> 32))) ^ (16 * (*(v121 + (v576 - 979 * ((4387097 * v576) >> 32))) ^ 0xEA)) ^ 0xEA);
  v579 = v578 + 455004 - 979 * (((8774193 * (v578 + 455004)) >> 32) >> 1);
  v580 = *(v121 + (v578 - 979 * ((4387097 * v578) >> 32))) >> 4;
  v581 = 766 * (((v580 ^ 0xE) + ((2 * ((v580 ^ 0xE | 0x7A) ^ v580)) ^ 0x17) - 21) ^ *(v121 + (v577 - 979 * ((4387097 * v577) >> 32)))) + 455004;
  v582 = 766 * ((v543 >> 8) & 0xF0 | (v534 >> 12));
  LODWORD(STACK[0x470]) = v582;
  v583 = 766 * (*(v121 + (v582 + 455004 - 979 * ((4387097 * (v582 + 455004)) >> 32))) ^ (16 * (*(v121 + (v581 - 979 * ((4387097 * v581) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x46C]) = v583;
  v584 = *(v121 + 766 * v573 + 455004 - 979 * (((8774193 * (766 * v573 + 455004)) >> 32) >> 1)) ^ 0xEA;
  v585 = ((*(v121 + v579) ^ 0xEA) << 16) ^ (v584 << 12);
  v586 = v585 ^ ((*(v121 + v583 + 455004 - 979 * (((8774193 * (v583 + 455004)) >> 32) >> 1)) ^ 0xEA) << 20);
  LODWORD(STACK[0x490]) = v586;
  v586 >>= 16;
  LODWORD(STACK[0x48C]) = v586;
  LODWORD(STACK[0x478]) = (766 * ((v585 >> 12) & 0xF0 | HIWORD(v537) & 0xF) + 257376) % ((v586 & 0xD) + 1938961414 + (v586 & 0xD ^ 0x8C6DCFCD));
  v587 = LODWORD(STACK[0x4A8]) ^ (v532 - ((2 * (v532 - 1986627723)) & 0xC173F326) - 363826936);
  v588 = LODWORD(STACK[0x4A0]) ^ (LODWORD(STACK[0x4AC]) - 555789939);
  v589 = (LODWORD(STACK[0x608]) ^ LODWORD(STACK[0x66C]) ^ 0xD9AA28DA) - LODWORD(STACK[0x4AC]);
  v590 = -555789939 - v589 + ((LODWORD(STACK[0x610]) + 569009052) ^ 0xDE159C64) + ((2 * (LODWORD(STACK[0x610]) + 569009052)) & 0xBC2B38C8);
  LOBYTE(v513) = *(v121 + v560 + 455004 - 979 * (((8774193 * (v560 + 455004)) >> 32) >> 1)) ^ 0xEA;
  v591 = 766 * ((v566 ^ (16 * v513)) & 0xF0 | v557 & 0xF) + 257376;
  LOBYTE(v532) = *(v121 + v568 + 455004 - 979 * (((8774193 * (v568 + 455004)) >> 32) >> 1)) ^ 0xEA;
  v592 = 766 * ((v513 ^ (16 * v532)) & 0xF0 | (v557 >> 4)) + 257376;
  v593 = 766 * ((v532 ^ (16 * v584)) & 0xF0 | (v537 >> 12)) + 257376;
  v594 = ((*(v121 + (v593 - 979 * ((4387097 * v593) >> 32))) ^ 0xEA) << 12) ^ ((*(v121 + (v592 - 979 * ((4387097 * v592) >> 32))) ^ 0xEA) << 8);
  LODWORD(STACK[0x474]) = v594;
  v595 = *(v121 + v569);
  LODWORD(STACK[0x488]) = v595;
  v596 = v595 ^ (16 * (*(v121 + (v591 - 979 * ((4387097 * v591) >> 32))) ^ 0xEA)) ^ 0xEA;
  LODWORD(STACK[0x480]) = v596;
  v597 = v594 ^ v596;
  LODWORD(STACK[0x464]) = v597;
  v598 = 766 * ((v597 >> 8) & 0xF) + 713146 - 979 * ((4387097 * (766 * ((v597 >> 8) & 0xF) + 713146)) >> 32);
  v599 = v588 + LODWORD(STACK[0x4A4]);
  v589 += 555789939;
  v600 = v590 ^ v589;
  v589 ^= 0x7D4172ACu;
  v601 = (LODWORD(STACK[0x4A4]) ^ 0xAC616EAE) - (v600 + v589);
  v602 = LODWORD(STACK[0x520]) - 1389946331 + v601;
  v603 = v602;
  LODWORD(STACK[0x3D0]) = v602;
  v604 = 766 * (v602 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v602 & 0xF) + 729998)) >> 32);
  v605 = LODWORD(STACK[0x4B0]) - 555789939;
  v606 = v587 - v605;
  v607 = (LODWORD(STACK[0x620]) - v606) ^ v606;
  v608 = v540 + 826522597 + (v540 ^ v605);
  v606 ^= 0x7D4172ACu;
  v609 = v607 + v606;
  v610 = v607;
  LODWORD(STACK[0x3F0]) = v607;
  v611 = ((v540 + 826522597) ^ 0xAC616EAE) - (v607 + v606);
  v612 = LODWORD(STACK[0x528]) - v611;
  LODWORD(STACK[0x44C]) = v612;
  v613 = *(v121 + v604) ^ 0xEA;
  LODWORD(STACK[0x45C]) = v613;
  v614 = *(v121 + (766 * (v612 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v612 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LODWORD(STACK[0x454]) = v614;
  v615 = v613 & 0xF;
  v616 = 766 * (v615 | (16 * (v614 & 0xF)));
  LODWORD(STACK[0x450]) = v616;
  LODWORD(STACK[0x608]) = 454025;
  v617 = *(v121 + (v616 + 454025) % 0x3D3u) ^ 0xEA;
  v618 = v553;
  v619 = 766 * ((v617 + 1705609344 - ((2 * v617) & 0x100)) ^ v553);
  LODWORD(STACK[0x448]) = v619;
  v620 = (*(v121 + v598) ^ 0xEA) << 8;
  LODWORD(STACK[0x42C]) = v620;
  v621 = *(v121 + (v619 + 455004) % 0x3D3u);
  v622 = (v620 & 0x300 ^ 0x3D3) + (v620 & 0x300);
  v621 ^= 0xEAu;
  LODWORD(STACK[0x444]) = v621;
  v623 = 766 * (v615 & 0xFFFFFF0F | (16 * (v621 & 0xF))) + 257376;
  v624 = *(v121 + (v623 - 979 * ((4387097 * v623) >> 32)));
  LODWORD(STACK[0x428]) = v624;
  LODWORD(STACK[0x3F4]) = v600;
  v625 = v600 + v589 - ((v600 + v589) ^ (v599 + v600));
  LODWORD(STACK[0x4B0]) = v625;
  LODWORD(STACK[0x4A4]) = v600 + v589;
  v626 = (v600 + v589 + 2061507085) ^ (v600 + 2 * v589);
  LODWORD(STACK[0x438]) = v600 + v589 + 2061507085;
  LODWORD(STACK[0x4AC]) = v626;
  v627 = (v626 ^ v601) + v625 - 1797802572;
  LODWORD(STACK[0x4A8]) = v627;
  v628 = LODWORD(STACK[0x50C]) - 430284756 + v627;
  v629 = v628 >> (((18 - (v600 + v589)) ^ (v600 + v589 + 13)) & 0x10 | 8);
  v630 = v609 - ((v608 + v610) ^ v609);
  LODWORD(STACK[0x4A0]) = v630;
  LODWORD(STACK[0x434]) = v609 + 2061507085;
  v631 = (v609 + 2061507085) ^ (v609 + v606);
  LODWORD(STACK[0x49C]) = v631;
  v632 = v630 - 1797802572 + (v631 ^ v611);
  LODWORD(STACK[0x494]) = v632;
  LOBYTE(v627) = (v629 & 6 ^ 0x86) + (v629 & 6);
  v633 = *(v121 + (766 * (v624 & 0xF ^ 0xA) + 713146 - 979 * ((4387097 * (766 * (v624 & 0xF ^ 0xAu) + 713146)) >> 32)));
  LODWORD(STACK[0x424]) = v633;
  v634 = ((*(v121 + (766 * (v629 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v629 & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v629 >> 4) + 729998 - 979 * ((4387097 * (766 * (v629 >> 4) + 729998)) >> 32))) ^ 0xEA) << 12);
  v635 = 766 * (BYTE2(v628) >> (((v633 & 0x6D ^ 5) + (v633 & 0x6D ^ 0x68)) & v627)) + 729998;
  LODWORD(STACK[0x498]) = v628;
  v636 = ((v634 | *(v121 + (766 * (HIWORD(v628) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v628) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (v635 - 979 * ((4387097 * v635) >> 32))) ^ 0xEA) << 12);
  LODWORD(STACK[0x460]) = v636;
  v637 = *(v121 + (766 * (v628 >> 12) + 729998 - 979 * ((4387097 * (766 * (v628 >> 12) + 729998)) >> 32))) ^ 0xEA;
  v638 = v636 | *(v121 + (766 * ((v628 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v628 >> 8) & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LODWORD(STACK[0x468]) = v638;
  v639 = (v638 << 8) ^ (v637 << 12);
  LODWORD(STACK[0x458]) = v639;
  v640 = LODWORD(STACK[0x540]) - v632;
  v641 = *(v121 + (766 * (v628 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v628 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  v642 = (v639 | v641) ^ (16 * (*(v121 + (766 * (v628 >> 4) + 729998 - 979 * ((4387097 * (766 * (v628 >> 4) + 729998)) >> 32))) ^ 0xEA));
  v643 = *(v121 + (766 * (v640 >> 12) + 729998 - 979 * ((4387097 * (766 * (v640 >> 12) + 729998)) >> 32)));
  v644 = ((((*(v121 + (766 * (HIBYTE(v640) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIBYTE(v640) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v640 >> 28) + 729998 - 979 * ((4387097 * (766 * (v640 >> 28) + 729998)) >> 32))) ^ 0xEA) << 12) | *(v121 + (766 * (HIWORD(v640) & 0xF) + 729998 - 979 * ((4387097 * (766 * (HIWORD(v640) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * ((v640 >> 20) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v640 >> 20) & 0xF) + 729998)) >> 32))) ^ 0xEA) << 12);
  LODWORD(STACK[0x420]) = v644;
  v645 = v643 ^ 0xEA;
  v646 = v644 | *(v121 + (766 * ((v640 >> 8) & 0xF) + 729998 - 979 * ((4387097 * (766 * ((v640 >> 8) & 0xF) + 729998)) >> 32))) ^ 0xEA;
  LODWORD(STACK[0x440]) = v646;
  v647 = (v646 << 8) ^ (v645 << 12);
  LODWORD(STACK[0x41C]) = v647;
  v648 = *(v121 + (766 * (v640 & 0xF) + 729998 - 979 * ((4387097 * (766 * (v640 & 0xF) + 729998)) >> 32))) ^ 0xEA;
  v649 = *(v121 + (766 * (v640 >> 4) + 729998 - 979 * ((4387097 * (766 * (v640 >> 4) + 729998)) >> 32))) ^ ((v647 | v648) >> 4);
  v650 = v641 & 0xF;
  LODWORD(STACK[0x43C]) = v650;
  v651 = 766 * (v650 & 0xFFFFFF0F | (16 * (v648 & 0xF)));
  v652 = *(v121 + (v651 + 455004 - 979 * ((4387097 * (v651 + 455004)) >> 32)));
  v653 = (16 * (LODWORD(STACK[0x5E4]) ^ 0xEA)) ^ 0xEA;
  LODWORD(STACK[0x550]) = v653;
  v654 = 766 * (v652 ^ v653);
  v655 = v654 + 455004 - 979 * (((8774193 * (v654 + 455004)) >> 32) >> 1);
  LODWORD(STACK[0x404]) = v642;
  LODWORD(STACK[0x418]) = v642 >> (v655 & 4) >> (v655 & 4 ^ 4);
  v656 = (*(v121 + (v654 - 979 * ((4387097 * v654) >> 32))) >> 4) ^ 0xE;
  v657 = 766 * ((v656 + (~(2 * v656) | 0xEB) - 21) ^ *(v121 + (v651 - 979 * ((4387097 * v651) >> 32)))) + 455004;
  LODWORD(STACK[0x414]) = v649 ^ 0xEA;
  v658 = 766 * ((v642 >> (v655 & 4) >> (v655 & 4 ^ 4)) & 0xF | (16 * ((v649 ^ 0xEA) & 0xF)));
  LODWORD(STACK[0x410]) = v658;
  v659 = 766 * (*(v121 + (v658 + 455004 - 979 * ((4387097 * (v658 + 455004)) >> 32))) ^ (16 * (*(v121 + (v657 - 979 * ((4387097 * v657) >> 32))) ^ 0xEA)) ^ 0xEA);
  LODWORD(STACK[0x40C]) = v659;
  v660 = *(v121 + v655);
  v661 = *(v121 + v659 + 455004 - 979 * (((8774193 * (v659 + 455004)) >> 32) >> 1));
  LODWORD(STACK[0x3E4]) = (766 * (HIWORD(v603) & 0xF) + 729998) % v622;
  LODWORD(STACK[0x5E4]) = v660 ^ 0xEA;
  v662 = v660 ^ 0xEA ^ (16 * (v661 ^ 0xEA));
  LODWORD(STACK[0x3F8]) = v662;
  v663 = 766 * (v662 & 0xF0 | (v642 >> 4));
  LODWORD(STACK[0x408]) = (v663 + 257376) % (((-257377 - v663) & 0xA3D3 ^ (v663 + 257376) & 0xA3D2) & (((v663 + 257376) & 0x57DA) + ((-257377 - v663) & 0xEC8857DB)));
  v664 = STACK[0x650];
  v665 = *(v121 + (LODWORD(STACK[0x604]) - 2083484658) % 0x3D3u);
  v666 = (BYTE2(LODWORD(STACK[0x650])) ^ 0xA6u) >> (v665 & 4) >> (v665 & 4 ^ 4);
  v667 = (*(v121 + (766 * ((((LODWORD(STACK[0x650]) >> 28) ^ 0x565AA353) + 1578241040) ^ (((LODWORD(STACK[0x650]) >> 28) ^ 0x1F6FD028) + 388464501) ^ (((LODWORD(STACK[0x650]) >> 28) ^ 0x49357372) - 1048716241)) + 915308602) % 0x3D3) << 12) ^ (v665 << 8);
  v668 = *(v121 + (766 * (((HIWORD(LODWORD(STACK[0x650])) & 0xF ^ 0x5CEFFF4) + 1258417855) ^ ((HIWORD(LODWORD(STACK[0x650])) & 0xF ^ 0x353DC11F) - 67973034) ^ ((HIWORD(LODWORD(STACK[0x650])) & 0xF ^ 0x30F33EEDu) + 2117873576)) + 812998440) % 0x3D3);
  v667 ^= 0xBD124Au;
  LODWORD(STACK[0x670]) = v667;
  v669 = (v668 + 12582656) & v667 | v668 & 0xB5;
  v670 = 766 * ((((v664 >> 4) ^ 0x58C42448) - 595462028) ^ (((v664 >> 4) ^ 0x5BF68B74) - 541894832) ^ (((v664 >> 4) ^ 0x332AF3D) - 2022214905)) + 922888964;
  v671 = (*(v121 + (766 * (((v666 ^ 0x4509B8D7) + 964960942) ^ ((v666 ^ 0x4F7D43EF) + 871422358) ^ ((v666 ^ 0xA74FB38) - 151428797)) + 1347872644) % 0x3D3) << 12) ^ 0x310F8 ^ (v669 << 8);
  v672 = *(v121 + (766 * ((((v664 >> 8) & 0xF ^ 0x6E9F978B) + 1130470595) ^ (((v664 >> 8) & 0xF ^ 0x4E70141F) - 477225129) ^ (((v664 >> 8) & 0xF ^ 0x20EF8397) - 1928230689)) + 1642420516) % 0x3D3);
  v673 = v671 & (v672 ^ 0xFFFF11);
  v674 = ((v673 + (v672 & 7)) << 8) ^ (*(v121 + (766 * ((((v664 >> 12) ^ 0x1DE2B8BC) + 1340838494) ^ (((v664 >> 12) ^ 0x74B042E) + 1430400720) ^ (((v664 >> 12) ^ 0x1AA9BC96u) + 1218483832)) - 2002991270) % 0x3D3) << 12);
  v675 = *(v121 + (766 * (((v664 & 0xF ^ 0x45300A83) + 702486690) ^ ((v664 & 0xF ^ 0x604525A1) + 212481924) ^ ((v664 & 0xF ^ 0x25752F25) - 912638712)) + 213046746) % 0x3D3);
  v676 = (v674 ^ 0x1EABC870) & (v675 ^ 0xFFFFFF10) ^ (v675 & 0x80 | 0xB4002100);
  v677 = STACK[0x60C] & 0xF;
  v678 = v677 | (16 * (v675 & 0xF));
  v679 = v618 ^ *(v121 + (766 * ((((v678 ^ 0x67C73667) - 1755820249) ^ ((v678 ^ 0x2C1A73BE) - 595260672) ^ ((v678 ^ 0x4BDD4721) - 1153286559)) + ((((2 * v678) & 0xA4 ^ 0x5D4021E0) + 1013487747) ^ (((2 * v678) & 0xA4 ^ 0x92A4FB) + 1639587226) ^ (((2 * v678) & 0xA4 ^ 0x5DD2851Fu) - 1124451202))) + 1257310018) % 0x3D3);
  v680 = 766 * (((v679 ^ 0x7CE8608) - 1017252502) ^ ((v679 ^ 0x71B28D9E) + 891420416) ^ ((v679 ^ 0x13D583FC) + 1464266910));
  v681 = *(v121 + (766 * (((v678 ^ 0x2A73C11A) + 1701290465) ^ ((v678 ^ 0x65FE319F) + 719999334) ^ ((v678 ^ 0x4F8DF02Fu) + 10064086)) + 1627901346) % 0x3D3) ^ (*(v121 + (v680 - 1853566440) % 0x3D3u) >> 4);
  LOBYTE(v676) = *(v121 + v670 % 0x3D3) ^ (v676 >> 4);
  LODWORD(STACK[0x66C]) = (v680 - 1853111436) % 0x3D3u;
  v682 = 766 * (((v681 ^ 0x3CDD1B91) - 1021123475) ^ ((v681 ^ 0x48AD7AF7) + 928154891) ^ ((v681 ^ 0x74706182) + 193961600)) + 631184;
  v683 = ((LODWORD(STACK[0x3D8]) >> 4) | 0x9A7BD1F0) & ((16 * (v676 & 0xF)) ^ 0x9A7BD151) | (LODWORD(STACK[0x3D8]) >> 4) & 0xE;
  v684 = 766 * (((v683 ^ 0x2C46B926) + 500772136) ^ ((v683 ^ 0x271A841F) + 377819167) ^ ((v683 ^ 0x1127EC3C) + 548960318));
  v685 = *(v121 + (v684 - 1426035610) % 0x3D3u) ^ (16 * *(v121 + v682 % 0x3D3));
  v686 = 766 * (((v685 ^ 0x1952613C) - 349174977) ^ ((v685 ^ 0x1BA3A2CF) + 1774305486) ^ ((v685 ^ 0x2F1CDB9) - 258756676));
  v687 = *(v121 + (v684 - 1426490614) % 0x3D3u) ^ (*(v121 + (v686 - 1115685486) % 0x3D3u) >> 4);
  v688 = (LODWORD(STACK[0x3D8]) >> 8) & 0xF;
  v689 = (v688 ^ 0x4A2639FC) & (v676 & 0xF0 ^ 0x4A26392E) | (LODWORD(STACK[0x3D8]) >> 8) & 1;
  v690 = 766 * (((v689 ^ 0x1F038813) - 1012111684) ^ ((v689 ^ 0x7192BE50) - 1388490503) ^ ((v689 ^ 0x24B70FBD) + 2014896406));
  v691 = *(v121 + (v690 - 1886086390) % 0x3D3u) ^ (16 * *(v121 + (766 * (((v687 ^ 0x6A753695) - 1786066452) ^ ((v687 ^ 0x41CA6972) + 1043699213) ^ ((v687 ^ 0x2BBF5F03u) + 1413521534)) + 532370) % 0x3D3));
  v692 = (v690 - 1886541394) % 0x3D3u;
  v693 = 766 * (((v691 ^ 0x79430B8A) - 619065006) ^ ((v691 ^ 0x31F9EF13) - 1818020407) ^ ((v691 ^ 0x48BAEAD3) + 1793077257));
  v694 = (v693 + 876536960) % 0x3D3u;
  v695 = *(v121 + v692) ^ (*(v121 + (v693 + 876081956) % 0x3D3u) >> 4);
  v696 = ((v695 ^ 0x1195873D) + 1852471477) ^ ((v695 ^ 0x69872BDD) + 377017429) ^ ((v695 ^ 0x7812AC04) - 2014489714);
  v697 = v674 ^ 0xE44281CD;
  v698 = LODWORD(STACK[0x3E8]) >> 12;
  v699 = (v698 ^ 0xB8E360F9) & (((v674 ^ 0xE44281CD) >> 8) & 0xF0 ^ 0xB8E3602F);
  v700 = 766 * (((v699 ^ 0x54CBCA49) + 667341099) ^ ((v699 ^ 0x529F964D) + 563252527) ^ ((v699 ^ 0x3EB73CF1) - 843438189));
  v701 = *(v121 + (v700 - 865000566) % 0x3D3u) ^ (16 * *(v121 + (766 * v696 + 566840) % 0x3D3u));
  v702 = 766 * (((v701 ^ 0x5D57D6AC) - 153724020) ^ ((v701 ^ 0x7E2EFE21) - 709922041) ^ ((v701 ^ 0x237926C7) - 1996968991));
  v703 = (v702 - 763384264) % 0x3D3u;
  v704 = *(v121 + (v700 - 865455570) % 0x3D3u) ^ (*(v121 + (v702 - 763839268) % 0x3D3u) >> 4);
  v705 = *(v121 + (v686 - 1115230482) % 0x3D3u);
  v706 = *(v121 + (766 * (((v704 ^ 0x26F11A10) - 653335100) ^ ((v704 ^ 0x79C17DF4) - 2042723800) ^ (v704 - 44)) + 608204) % 0x3D3);
  v707 = ((v706 & 8 | 0x30) ^ (v706 & 8 | 2)) & ((v705 & 3 ^ 0xFFFFFFE1) & (v705 & 3 ^ 0x62) ^ 0x5E);
  v708 = HIWORD(LODWORD(STACK[0x3E8]));
  v709 = ((2 * (LODWORD(STACK[0x548]) ^ 0xD69FCA2B)) ^ 0xDCCD99CC) & (LODWORD(STACK[0x548]) ^ 0xD69FCA2B) ^ (2 * (LODWORD(STACK[0x548]) ^ 0xD69FCA2B)) & 0x6E66CCE6;
  v710 = STACK[0x5E8] & (LODWORD(STACK[0x548]) ^ 0xB6FDC6A9) ^ LODWORD(STACK[0x5F0]);
  v711 = (v709 ^ 0x44440844) & (4 * v710) ^ v710;
  v712 = ((4 * (v709 ^ 0x22224422)) ^ 0xB99B3398) & (v709 ^ 0x22224422) ^ (4 * (v709 ^ 0x22224422)) & 0x6E66CCE4;
  v713 = v707 & 0x12 ^ (v697 >> 12) & 0xF0 ^ (v708 ^ 0x21) & (v707 ^ 0x1720003D);
  v714 = ((v713 ^ 0x695CEBE1) - 1352623257) ^ ((v713 ^ 0xB5D502D) - 849272661) ^ ((v713 ^ 0x6201BBB8) + 608029504);
  v715 = LODWORD(STACK[0x548]) ^ 0xBDAB56FC;
  v716 = STACK[0x5E8] & v715 ^ LODWORD(STACK[0x5F0]) ^ (STACK[0x5E8] & 0x1520010 | 0x20);
  v717 = ((2 * v715) ^ 0xAA4A062) & v715 ^ (2 * v715) & 0x5525030;
  v718 = (v717 ^ 0x21) & (4 * v716) ^ v716;
  v719 = ((4 * (v717 ^ 0x5525011)) ^ 0x154940C4) & (v717 ^ 0x5525011) ^ (4 * (v717 ^ 0x5525011)) & 0x5525030;
  v720 = v718 ^ 0x5525011 ^ (v719 ^ 0x5404001) & (16 * v718);
  v721 = ((16 * (v719 ^ 0x121031)) ^ 0x55250300) & (v719 ^ 0x121031) & ((v720 << 8) ^ 0x100) ^ v720;
  v722 = (*(v121 + v703) << 12) ^ (*(v121 + v694) << 8);
  v723 = 766 * v714;
  v724 = *(v121 + (766 * v714 - 684918972) % 0x3D3u) ^ (16 * v706);
  v725 = ((v724 ^ 0xE32116A8) + 262983093) ^ ((v724 ^ 0xA14555CB) + 1304989400) ^ ((v724 ^ 0x42644D29) - 1360423370);
  v726 = (LODWORD(STACK[0x548]) ^ (2 * (v712 & (16 * v712) & ((v711 ^ 0x6E66CCE6 ^ v712 & (16 * v711)) << 8) ^ v711 ^ 0x6E66CCE6 ^ v712 & (16 * v711)))) & 0x2FE;
  v727 = (((v726 ^ 0xE558D7A4) - 865748560) ^ ((v726 ^ 0xD3DD974D) - 85919417) ^ ((v726 ^ 0x36854017) + 532164125)) + ((((LODWORD(STACK[0x548]) ^ (2 * v721)) & 0x2FE ^ 0x41B140B3) + 1956323270) ^ (((LODWORD(STACK[0x548]) ^ (2 * v721)) & 0x2FE ^ 0xACA6A9A5) - 1718815020) ^ (((LODWORD(STACK[0x548]) ^ (2 * v721)) & 0x2FE ^ 0xED17EBB8) - 667044657));
  v728 = *(v121 + (v723 - 685373976) % 0x3D3u) ^ (*(v121 + ((v725 - 1741953876) * (v727 - 1583860943) + 2068203005 * v727 + 1134349421) % 0x3D3) >> 4);
  v729 = ((LODWORD(STACK[0x3E8]) >> 20) & 7 ^ 0x53F70CF4) & ((v671 >> 8) & 0xF0 ^ 0x53F70C77) | (LODWORD(STACK[0x3E8]) >> 20) & 8;
  v730 = 766 * (((v729 ^ 0x703CC068) + 674450795) ^ ((v729 ^ 0x6827E4BE) - 1339528771) ^ ((v729 ^ 0x4BEC28F1) + 333686260));
  v731 = (v730 + 778932300) % 0x3D3u;
  v732 = *(v121 + (v730 + 779387304) % 0x3D3u) ^ (16 * *(v121 + (766 * (((v728 ^ 0x5F208D8F) + 551514658) ^ ((v728 ^ 0x33CA1391) + 1278602304) ^ ((v728 ^ 0x6CEA9EFAu) - 1827315371)) + 593650) % 0x3D3));
  v733 = 766 * (((v732 ^ 0x4A25B491) + 1266992291) ^ ((v732 ^ 0x75C18029) + 1952509979) ^ ((v732 ^ 0x3FE43AF2) - 1102755134));
  v734 = (v733 + 516849744) % 0x3D3u;
  v735 = *(v121 + v731) ^ (*(v121 + (v733 + 516394740) % 0x3D3u) >> 4);
  v736 = v708 & 8;
  v737 = v708 & 0xF;
  v738 = 16 * (((v737 ^ 0xCF7F334F) & 0xA ^ 0xAB ^ (v736 | (v737 ^ 0xCF7F334F) & 0x42 | 0x10)) & (HIWORD(v673) ^ 0x200055) ^ HIWORD(v673) & 0xFC);
  v739 = HIBYTE(LODWORD(STACK[0x3E8])) & 0xF;
  v740 = (v738 ^ 0x63DCC82F) & (v739 ^ 0x63DCCD25) | v738 & 0x332D0;
  v741 = (*(v121 + v734) << 20) ^ (*(v121 + (766 * v725 + 799184650) % 0x3D3) << 16);
  v742 = 766 * (((v740 ^ 0x46177672) + 2140927539) ^ ((v740 ^ 0xF3BE9FC) - 1229493827) ^ ((v740 ^ 0x2AF052EC) + 326947501));
  v743 = (v742 - 1011273402) % 0x3D3u;
  v744 = *(v121 + (v742 - 1010818398) % 0x3D3u) ^ (16 * *(v121 + (766 * (((v735 ^ 0x5B25C681) - 1529202418) ^ ((v735 ^ 0x3CC995E4) + 1127639657) ^ ((v735 ^ 0x67EC5381u) + 403942414)) + 570670) % 0x3D3));
  v745 = 766 * (((v744 ^ 0x6ADF845C) + 141230111) ^ ((v744 ^ 0x8AC5B86) + 1780015045) ^ ((v744 ^ 0x6273D190) + 13063635));
  v746 = *(v121 + v743) ^ (*(v121 + (v745 - 1479870190) % 0x3D3u) >> 4);
  v747 = LODWORD(STACK[0x3E8]) >> 28;
  v748 = (v747 + 1723251696) & ((LODWORD(STACK[0x670]) >> 8) & 0xF0 ^ 0x66B6BB68) | v747 & 7;
  v749 = *(v121 + (766 * (((v748 ^ 0x51C75F9E) - 1450464724) ^ ((v748 ^ 0x1929A92F) - 513450853) ^ ((v748 ^ 0x2E584D89u) - 703285187)) + 1326441592) % 0x3D3) ^ (16 * *(v121 + (766 * (((v746 ^ 0x3FC6F298) - 1070002809) ^ ((v746 ^ 0x6CF91BD) + 2033217188) ^ ((v746 ^ 0x390963C1u) + 1190567136)) + 458834) % 0x3D3));
  v750 = *(v121 + LODWORD(STACK[0x66C])) ^ 0x93076247;
  v751 = v750 ^ (16 * v705);
  v752 = v751 ^ 0x81513CA2 ^ v722;
  v753 = v752 ^ (*(v121 + (v745 - 1479415186) % 0x3D3u) << 24) ^ (*(v121 + (766 * (((v749 ^ 0x7EAA6BF8) - 299819510) ^ ((v749 ^ 0x164851A5) - 2034031531) ^ ((v749 ^ 0x68E23417u) - 127319577)) + 2125116628) % 0x3D3) << 28);
  v754 = ((16 * (v750 & 0xF)) ^ 0xA0DA4F75) & (v677 ^ 0xE1DF7FFF) | STACK[0x60C] & 0xA;
  v755 = (LODWORD(STACK[0x3D8]) >> 4) ^ 0xFE3241FC;
  v756 = (v755 & (v751 & 0xF0 ^ 0x76004099) | 0x1CC1A00) ^ v755 & 0x88320166;
  v757 = (766 * (((v756 ^ 0x557DB026) + 272620406) ^ ((v756 ^ 0x192CC008) - 596726948) ^ ((v756 ^ 0x33AF2BD7) + 1995260037)) + 1089097142) % 0x3D3;
  v758 = (v688 ^ 0x3A96EAF9) & ((v752 >> 4) & 0xF0 ^ 0x3A96EAEB) ^ ((LODWORD(STACK[0x3D8]) >> 8) & 4 | 0x85480520);
  v759 = (v698 ^ 0x8E6CFF47) & ((v722 >> 8) & 0xF0 ^ 0x8E6CFF2F) | (v722 >> 8) & 0xB0;
  v760 = (766 * (((v759 ^ 0x27AEFA12) + 1264910634) ^ ((v759 ^ 0x22459A30) + 1317953804) ^ ((v759 ^ 0xB879F69) + 1733059667)) - 800808126) % 0x3D3;
  v761 = v737 ^ 0xA47F9888;
  v762 = v753 ^ v741;
  v763 = ((v753 ^ v741) >> 16) ^ 0x8E32;
  v764 = v761 & (((16 * v763) ^ 0xF0) & 0xF0 ^ 0xA47F982F) | ((16 * v763) ^ 0xF0) & 0x70;
  v765 = ((v764 ^ 0xD04127D8) + 1153570143) ^ ((v764 ^ 0xEA3EDB65) + 2126375396) ^ ((v764 ^ 0x9E006442) + 176379589);
  v766 = (((v763 & 0xE55F ^ 0x72859561) - 1656229600) ^ ((v763 & 0xE55F ^ 0xAF4D9EFD) + 1083177604) ^ ((v763 & 0xE55F ^ 0xABB62EC3) + 1148471998)) + (((v763 & 0xE55F ^ 0xDC17C0AA) + 633473573) ^ ((v763 & 0xE55F ^ 0xFB34264C) + 48360643) ^ ((v763 & 0xE55F ^ 0x272326E6) - 554242967)) - 1807566291;
  v767 = (2 * (v766 & 0x582BFA22)) & 0x20125404 ^ v766 & 0x582BFA22 ^ ((2 * (v766 & 0x582BFA22)) | 0x80000000) & (v766 ^ 0xF7B1ACB6);
  v768 = ((2 * (v766 ^ 0xF7B1ACB6)) ^ 0xDF34AD28) & (v766 ^ 0xF7B1ACB6) ^ (2 * (v766 ^ 0xF7B1ACB6)) & 0x2F9A5694;
  v769 = (v768 ^ 0xF100400) & (4 * v767) ^ v767;
  v770 = ((4 * (v768 ^ 0x208A5294)) ^ 0x3E695A50) & (v768 ^ 0x208A5294) ^ (4 * (v768 ^ 0x208A5294)) & 0x2F9A5694;
  v771 = (v770 ^ 0x2E085210) & (16 * v769) ^ v769;
  v772 = ((16 * (v770 ^ 0x1920484)) ^ 0xF9A56940) & (v770 ^ 0x1920484) ^ (16 * (v770 ^ 0x1920484)) & 0x2F9A5690;
  v773 = v771 ^ 0xAF9A5694 ^ (v772 ^ 0x29804000) & (v771 << 8);
  v774 = v766 ^ (2 * ((v773 << 16) & 0x2F9A0000 ^ v773 ^ ((v773 << 16) ^ 0x56940000) & (((v772 ^ 0x61A1694) << 8) & 0x2F9A0000 ^ 0x25880000 ^ (((v772 ^ 0x61A1694) << 8) ^ 0x1A560000) & (v772 ^ 0x61A1694))));
  v775 = ((1509272403 - v765) ^ 0xE776F9D5) & (2 * ((1509272403 - v765) & 0x7706FDD6)) ^ (1509272403 - v765) & 0x7706FDD6;
  v776 = ((2 * ((1509272403 - v765) ^ 0xC772A3F1)) ^ 0x60E8BC4E) & ((1509272403 - v765) ^ 0xC772A3F1) ^ (2 * ((1509272403 - v765) ^ 0xC772A3F1)) & 0x30745E26;
  v777 = (v776 ^ 0x20201C00) & (4 * v775) ^ v775;
  v778 = ((4 * (v776 ^ 0x10144221)) ^ 0xC1D1789C) & (v776 ^ 0x10144221) ^ (4 * (v776 ^ 0x10144221)) & 0x30745E24;
  v779 = (v778 ^ 0x505800) & (16 * v777) ^ v777;
  v780 = ((16 * (v778 ^ 0x30240623)) ^ 0x745E270) & (v778 ^ 0x30240623) ^ (16 * (v778 ^ 0x30240623)) & 0x30745E20;
  v781 = v779 ^ 0x30745E27 ^ (v780 ^ 0x444200) & (v779 << 8);
  v782 = (1509272403 - v765) ^ (2 * ((v781 << 16) & 0x240000 ^ v781 ^ ((v781 << 16) ^ 0x5E270000) & (((v780 ^ 0x30301C07) << 8) & 0x30740000 ^ (((v780 ^ 0x30301C07) << 8) ^ 0x745E0000) & (v780 ^ 0x30301C07) ^ 0x200000)));
  v783 = ((v765 + 822137692) ^ 0x5C88B37B) & (2 * ((v765 + 822137692) & 0x9E02837A)) ^ (v765 + 822137692) & 0x9E02837A;
  v784 = ((2 * ((v765 + 822137692) ^ 0x4888B74F)) ^ 0xAD14686A) & ((v765 + 822137692) ^ 0x4888B74F) ^ (2 * ((v765 + 822137692) ^ 0x4888B74F)) & 0x568A3434;
  v785 = (v784 ^ 0x80000020) & (4 * v783) ^ v783;
  v786 = ((4 * (v784 ^ 0x528A1415)) ^ 0x5A28D0D4) & (v784 ^ 0x528A1415) ^ (4 * (v784 ^ 0x528A1415)) & 0xD68A3434;
  v787 = v785 ^ 0xD68A3435 ^ (v786 ^ 0x52081000) & (16 * v785);
  v788 = (v782 & 0x4480B58 ^ 0x8BC8716D ^ (v782 & 0x1200C37A ^ 0xA012A262) & (((v765 + 822137692) ^ (2 * (((v787 << 8) ^ 0x100) & (((16 * (v786 ^ 0x84822421)) ^ 0x68A34300) & (v786 ^ 0x84822421) ^ (16 * (v786 ^ 0x84822421)) & 0x568A3400) ^ v787))) & 0x37A ^ 0xB212E332)) & (v774 ^ 0xCA3F530A) ^ v774 & 0x3DDA9057;
  v789 = ((v788 ^ 0x69EA84F2) - 1251337242) ^ ((v788 ^ 0x45E0D68E) - 1721742950) ^ ((v788 ^ 0x2410427E) - 124723862);
  v790 = HIWORD(v741) & 0xF0 | (LODWORD(STACK[0x3E8]) >> 20) & 0xF;
  v791 = (*(v121 + ((1501082715 * v789 + 136555310) * (v765 + 404914702) + 1565016856 * v789 + 1642058736) % 0x3D3) << 16) ^ (*(v121 + v760) << 12);
  v792 = 766 * (((v790 ^ 0x10444CAC) + 780956252) ^ ((v790 ^ 0x7BD35DF2) - 988060922) ^ ((v790 ^ 0x6B97111D) + 1432301547)) + 618154954;
  v793 = *(v121 + (766 * (((v758 ^ 0xC6676A2) + 1250778782) ^ ((v758 ^ 0xE7C95C2) + 1217904126) ^ ((v758 ^ 0x3DC40C0B) - 80796619)) + 1360624906) % 0x3D3);
  v794 = *(v121 + (766 * (((v754 ^ 0x6B2870B9) - 337372114) ^ ((v754 ^ 0x5EB6D2B6) - 562381277) ^ ((v754 ^ 0x1544EDA0) + 361267509)) - 37322792) % 0x3D3) ^ (16 * *(v121 + v757));
  v795 = v794 ^ (v793 << 8);
  v796 = *(v121 + v792 % 0x3D3) << 20;
  v797 = (v796 & 0xA000000 | v791) ^ (v796 ^ 0xD15BFFFF) & (v795 ^ 0xD5FBBE2F);
  v798 = (v739 ^ 0xC023AEF5) & ((v762 >> 20) & 0xF0 ^ 0xC023AE9F);
  v799 = (v747 ^ 0xF3E807F7) & ((16 * (v753 >> 28)) ^ 0xF3E8071F);
  v800 = ((*(v121 + (766 * (((v798 ^ 0x455D2312) + 1096735508) ^ ((v798 ^ 0x12D855C4) - 1763988026) ^ ((v798 ^ 0x17A6D824) + 329588774)) + 658489160) % 0x3D3) ^ 0x5D) << 24) ^ ((*(v121 + (766 * (((v799 ^ 0x7599FC1) + 1941856250) ^ ((v799 ^ 0x550B1E8B) + 569171636) ^ ((v799 ^ 0x21BA8605) - 715307458)) - 556985264) % 0x3D3) ^ 0xFFFFFFFD) << 28) ^ 0x4869FE26 ^ v797;
  v801 = (766 * ((((v800 >> 28) ^ 0x7ECAD99A) + 30915918) ^ (((v800 >> 28) ^ 0x9141822) - 167150346) ^ (((v800 >> 28) ^ 0x77DEC1BD) - 2000444053)) - 1508429216) % 0x3D3;
  v802 = ((HIWORD(v791) & 0xF ^ 0xA8B19621) - 1431264004) ^ ((HIWORD(v791) & 0xF ^ 0x51EC84FF) + 1408087590) ^ ((HIWORD(v791) & 0xF ^ 0xF95D12DA) - 77848575);
  v803 = ((v802 - 443998468) ^ 0xD261B989) & (2 * ((v802 - 443998468) & 0x11C8)) ^ (v802 - 443998468) & 0x11C8;
  v804 = ((2 * ((v802 - 443998468) ^ 0xF268B899)) ^ 0x143A12A2) & ((v802 - 443998468) ^ 0xF268B899) ^ (2 * ((v802 - 443998468) ^ 0xF268B899)) & 0x2A1D0950;
  v805 = v804 & (4 * v803) ^ v803;
  v806 = ((4 * (v804 ^ 0x2A050951)) ^ 0x28742544) & (v804 ^ 0x2A050951) ^ (4 * (v804 ^ 0x2A050951)) & 0x6A1D0950;
  v807 = (v806 ^ 0xA8140140) & (16 * v805) ^ v805;
  v808 = ((16 * (v806 ^ 0x42090811)) ^ 0x21D09510) & (v806 ^ 0x42090811) ^ (16 * (v806 ^ 0x42090811)) & 0xEA1D0950;
  v809 = v807 ^ 0xEA1D0951 ^ (v808 ^ 0xA0100100) & (v807 << 8);
  v810 = (v809 << 16) & 0x6A1D0000 ^ v809 ^ ((v809 << 16) ^ 0x9510000) & (((v808 ^ 0x4A0D0841) << 8) & 0xEA1D0000 ^ 0x62140000 ^ (((v808 ^ 0x4A0D0841) << 8) ^ 0x1D090000) & (v808 ^ 0x4A0D0841));
  LOBYTE(v808) = (v802 - 4) ^ ~(2 * v810);
  v811 = (v802 - 443998468) ^ (2 * v810);
  v812 = (766 * (((HIBYTE(v800) & 0xF ^ 0x3429BBE) + 1071632924) ^ ((HIBYTE(v800) & 0xF ^ 0x1F2DDDBC) - 1548708838) ^ ((HIBYTE(v800) & 0xF ^ 0x1C6F4602) - 1594749016)) - 1586986234) % 0x3D3u;
  v813 = 532559782 - v802;
  v814 = ((2 * ((532559782 - v802) ^ 0xA1E63887)) ^ 0x87499E24) & ((532559782 - v802) ^ 0xA1E63887) ^ (2 * ((532559782 - v802) ^ 0xA1E63887)) & 0x3A4CF12;
  v815 = (v814 ^ 0x3A08F00) & (4 * (((2 * v813) & 0x485EF2A ^ 0x242F795) & v813)) ^ ((2 * v813) & 0x485EF2A ^ 0x242F795) & v813;
  v816 = v813 ^ (2 * (((4 * (v814 ^ 0xA44112)) & 0x43A4CF10 ^ 0x2800C02 ^ ((4 * (v814 ^ 0xA44112)) ^ 0xE933C40) & (v814 ^ 0xA44112)) & (16 * v815) ^ v815));
  v817 = (v808 | 0xFFFFFFC3) & ((v816 ^ 0x87499E24) & 0x54 ^ 0xF3E94917) ^ v811 & 0xB0;
  v818 = 16 * *(v121 + v801);
  v819 = v818 ^ *(v121 + v812);
  v820 = (((v818 ^ 0x62F61D65) + 509862059) ^ ((v818 ^ 0x2207216D) + 1586683043) ^ ((v818 ^ 0x40F1325C) + 1013239700)) + (((v818 ^ 0x697BAD06) + 656523711) ^ ((v818 ^ 0x6578611B) + 723652004) ^ ((v818 ^ 0xC03C2BD) + 1113173510)) - (((v817 ^ 0xD5DEF02B) + 658056483) ^ ((v817 ^ 0xE8AC73A6) + 441165488) ^ ((v817 ^ 0xCE9BCAAA) + 1014767524)) + 1709034766;
  v821 = (2 * (v820 & 0xD040796C ^ 0xE0000953)) & 0xE0000050 ^ v820 & 0xD040796C ^ 0xE0000953 ^ ((2 * (v820 & 0xD040796C ^ 0xE0000953)) ^ 0xC00012A6) & (v820 ^ 0x3040703F);
  v822 = (2 * (v820 ^ 0x3040703F)) & 0x60000952 ^ 0x20000951 ^ ((2 * (v820 ^ 0x3040703F)) ^ 0xC00012A6) & (v820 ^ 0x3040703F);
  v823 = v821 ^ 0x40000140 ^ (4 * v821) & 0xE0000950 ^ ((4 * v821) ^ 0x8000254C) & v822;
  v824 = (v811 & 0x2BE ^ 0xB78DA42E) & ((v816 ^ 0x87499E24) & 0x5E ^ 0xBFEFAEEF) ^ v816 & 0x5A ^ (v820 ^ (2 * ((16 * v823) & 0xFFFFFFDF ^ v823 ^ ((16 * v823) ^ 0x30) & ((4 * v822) & 0x60000950 ^ 0x60000810 ^ ((4 * v822) ^ 0x80002540) & v822)))) & 0xF4;
  v825 = ((v811 ^ 0xBC4DFA77) - 437023320) ^ ((v811 ^ 0xCF8856A2) - 1774837389) ^ ((v811 ^ 0xAFA80FBF) - 166299536);
  v826 = ((((v824 ^ 0xF212F70F) - 1400484246) ^ ((v824 ^ 0xAA71C7C0) - 186286425) ^ ((v824 ^ 0xEFEE963B) - 1317392546)) + 101205775) * (v825 + 2049715013) + 283023710 * v825 + 401219670;
  v827 = (((v795 >> 8) & 0xF ^ 0x5592713C) + 706877532) ^ (((v795 >> 8) & 0xF ^ 0x33D8BB59) - 865545665) ^ (((v795 >> 8) & 0xF ^ 0x664ACA61) - 1711627513);
  v828 = *(v121 + v826 % 0x3D3);
  LODWORD(STACK[0x66C]) = (766 * ((((v797 >> 12) ^ 0x7E33E466) - 1635269571) ^ (((v797 >> 12) ^ 0x419DDEED) + 556400312) ^ (((v797 >> 12) ^ 0x3FAE3A84u) - 551937313)) - 1525538714) % 0x3D3;
  v829 = *(v121 + (766 * v827 - 298874750) % 0x3D3u);
  LODWORD(STACK[0x60C]) = ((((v828 << 8) ^ 0xFF0198) & ((v819 << 16) ^ 0x8EC998) | (v828 << 8) & 0x3600) ^ (*(v121 + (766 * ((((v797 >> 20) & 0xF ^ 0x788F4746) - 1479735042) ^ (((v797 >> 20) & 0xF ^ 0x264A479C) + 2030569512) ^ (((v797 >> 20) & 0xF ^ 0x5EC500DB) + 25644897)) - 140488656) % 0x3D3) << 12) ^ 0x2914C1) & (v829 ^ LODWORD(STACK[0x5F8])) ^ (v829 & 0xA6 | 0x4A000);
  LODWORD(STACK[0x670]) = (766 * ((((v794 >> 4) ^ 0x51892BC8) + 1223055585) ^ (((v794 >> 4) ^ 0x58F93673) - 1047116452) ^ (((v794 >> 4) ^ 0x9701DBFu) - 1876988264)) - 460308204) % 0x3D3;
  v830 = LODWORD(STACK[0x580]) - 2093330197;
  v831 = (v830 ^ 0xA382CDD3) & (2 * (v830 & 0xA2208D1A)) ^ v830 & 0xA2208D1A;
  v832 = ((2 * (v830 ^ 0xE782C5E7)) ^ 0x8B4491FA) & (v830 ^ 0xE782C5E7) ^ (2 * (v830 ^ 0xE782C5E7)) & 0x45A248FC;
  v833 = (v832 ^ 0x10000F8) & (4 * v831) ^ v831;
  v834 = ((4 * (v832 ^ 0x44A24805)) ^ 0x168923F4) & (v832 ^ 0x44A24805) ^ (4 * (v832 ^ 0x44A24805)) & 0x45A248FC;
  v835 = (v834 ^ 0x48000E0) & (16 * v833) ^ v833;
  v836 = ((16 * (v834 ^ 0x41224809)) ^ 0x5A248FD0) & (v834 ^ 0x41224809) ^ (16 * (v834 ^ 0x41224809)) & 0x45A248F0;
  v837 = *(v121 + (LODWORD(STACK[0x5D4]) + 1967764406) % 0x3D3u) ^ (*(v121 + (LODWORD(STACK[0x5D0]) + 82390174) % 0x3D3u) >> 4);
  v838 = LODWORD(STACK[0x62C]) >> 28;
  v839 = (HIWORD(LODWORD(STACK[0x5D8])) | 0x7F3B770F) & (v838 ^ 0x7F3B7784) | HIWORD(LODWORD(STACK[0x5D8])) & 0x70;
  v840 = *(v121 + (766 * (((v839 ^ 0xB395BC2) - 31365503) ^ ((v839 ^ 0x44C57FE7) + 836584102) ^ ((v839 ^ 0x30C75384u) + 1172270791)) - 1435706588) % 0x3D3) ^ (16 * *(v121 + (766 * (((v837 ^ 0xE8C587D) + 1903404828) ^ ((v837 ^ 0x661D75EC) - 1713206645) ^ ((v837 ^ 0x68912D75u) + 393138708)) + 550754) % 0x3D3));
  v841 = ((LODWORD(STACK[0x5B8]) ^ (16 * *(v121 + (766 * (((v840 ^ 0xB3C6C22) - 1800099911) ^ ((v840 ^ 0x92D7F07) - 1767525218) ^ ((v840 ^ 0x2111D6Fu) - 1650862346)) - 1530459650) % 0x3D3))) & 0xF0 | 0xA203030F) & (v838 ^ 0xFA27C7FA);
  v842 = (LODWORD(STACK[0x5A4]) ^ (*(v121 + (766 * (((v841 ^ 0x925F5ED) + 1104325057) ^ ((v841 ^ 0x4BD27BA1) + 52766605) ^ ((v841 ^ 0x60F48D63) - 1476144817)) - 120610202) % 0x3D3) << 28)) >> 28;
  LODWORD(STACK[0x62C]) = (766 * (((v842 ^ 0x6A22F16) - 971682845) ^ ((v842 ^ 0x76C76A06) + 913313523) ^ ((v842 ^ 0x7065451C) + 819077609)) + 1531625644) % 0x3D3;
  LODWORD(STACK[0x5F0]) = (766 * (((HIBYTE(LODWORD(STACK[0x5A8])) & 0xF ^ 0x522B0675) + 374712938) ^ ((HIBYTE(LODWORD(STACK[0x5A8])) & 0xF ^ 0x42A38375) + 115158890) ^ ((HIBYTE(LODWORD(STACK[0x5A8])) & 0xF ^ 0x1088850Au) + 1425418519)) + 218363112) % 0x3D3;
  v843 = (766 * ((((LODWORD(STACK[0x5AC]) >> 20) & 0xF ^ 0x66A742DA) - 318665525) ^ (((LODWORD(STACK[0x5AC]) >> 20) & 0xF ^ 0x1C84B294) + 388136069) ^ (((LODWORD(STACK[0x5AC]) >> 20) & 0xF ^ 0x7A23F044) + 1904557653)) + 586034416) % 0x3D3;
  v844 = (766 * (((HIWORD(LODWORD(STACK[0x5AC])) & 0xF ^ 0xE57653) + 207422088) ^ ((HIWORD(LODWORD(STACK[0x5AC])) & 0xF ^ 0x5C4089F8) + 1358495021) ^ ((HIWORD(LODWORD(STACK[0x5AC])) & 0xF ^ 0x5CA5FFA1u) + 1344113526)) - 266523016) % 0x3D3;
  v845 = (766 * ((((LODWORD(STACK[0x5BC]) >> 12) & 0x3590F ^ 0x6E9BE5DC) + 486390274) ^ (((LODWORD(STACK[0x5BC]) >> 12) & 0x3590F ^ 0x62EF1886) + 277432156) ^ (((LODWORD(STACK[0x5BC]) >> 12) & 0x3590F ^ 0xC74E55A) - 32327032)) - 1308633226) % 0x3D3;
  v846 = (766 * ((((LODWORD(STACK[0x5B0]) >> 8) & 0xF ^ 0x47EED527) - 752714372) ^ (((LODWORD(STACK[0x5B0]) >> 8) & 0xF ^ 0x7A4A93CC) + 1854290833) ^ (((LODWORD(STACK[0x5B0]) >> 8) & 0xF ^ 0x3DA446EF) - 1452740940)) - 1012193428) % 0x3D3;
  v847 = (766 * ((((LODWORD(STACK[0x5C0]) >> 4) ^ 0xCEE91F5) - 494705153) ^ (((LODWORD(STACK[0x5C0]) >> 4) ^ 0x6B870756) + 99283806) ^ (((LODWORD(STACK[0x5C0]) >> 4) ^ 0x676996A7u) - 1996201299)) - 1828021798) % 0x3D3;
  v848 = (766 * (((STACK[0x5C4] & 0xF ^ 0x5DB6A1FE) + 575233564) ^ ((STACK[0x5C4] & 0xF ^ 0x32D64637) - 852903469) ^ ((STACK[0x5C4] & 0xF ^ 0x6F60E7C3u) + 278861863)) + 725402) % 0x3D3;
  v849 = v835 ^ 0x45A248FD ^ (v836 ^ 0x40200800) & (v835 << 8);
  v836 ^= 0x582402Du;
  v850 = v836 << 8;
  v851 = ((v836 << 8) ^ 0x22480000) & v836;
  v852 = *(v121 + (LODWORD(STACK[0x558]) - 979 * ((4387097 * LODWORD(STACK[0x558])) >> 32))) >> 4;
  v853 = 766 * (((v852 ^ 0xE) + ((2 * ((v852 ^ 0xE | 0x7A) ^ v852)) ^ 0x17) - 21) ^ *(v121 + (LODWORD(STACK[0x55C]) - 979 * ((4387097 * LODWORD(STACK[0x55C])) >> 32)))) + 455004;
  v854 = 766 * ((LODWORD(STACK[0x59C]) >> 8) & 0xF0 | (LODWORD(STACK[0x5A0]) >> 20) & 0xF) + 455004;
  v855 = 766 * (*(v121 + (v854 - 979 * ((4387097 * v854) >> 32))) ^ (16 * (*(v121 + (v853 - 979 * ((4387097 * v853) >> 32))) ^ 0xEA)) ^ 0xEA) + 455004;
  v856 = v855 - 979 * (((8774193 * v855) >> 32) >> 1);
  v857 = *(v121 + LODWORD(STACK[0x57C]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x57C]) + 455004)) >> 32) >> 1)) ^ 0xEA;
  v858 = ((*(v121 + 766 * (LODWORD(STACK[0x56C]) + ((~LODWORD(STACK[0x578]) & 0x767E69C8 | STACK[0x570] & 8) ^ 0x767E6B9Au)) % 0x3D3) ^ 0xEA) << 16) ^ (v857 << 12);
  v859 = v858 ^ ((*(v121 + LODWORD(STACK[0x564]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x564]) + 455004)) >> 32) >> 1)) ^ 0xEA) << 20) ^ ((*(v121 + LODWORD(STACK[0x560])) ^ 0xEA) << 24);
  LOBYTE(v822) = *(v121 + (LODWORD(STACK[0x590]) + 455004) % 0x3D3u) ^ 0xEA;
  v860 = 766 * (STACK[0x598] & 0xFFFFFF0F | (16 * (v822 & 0xF))) + 257376;
  LOBYTE(v842) = *(v121 + LODWORD(STACK[0x58C]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x58C]) + 455004)) >> 32) >> 1)) ^ 0xEA;
  LOBYTE(v836) = *(v121 + LODWORD(STACK[0x584]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x584]) + 455004)) >> 32) >> 1)) ^ 0xEA;
  v861 = (v822 ^ (16 * v842)) & 0xF0 | (LODWORD(STACK[0x594]) >> 4);
  v862 = 766 * ((v842 ^ (16 * v836)) & 0xF0 | (LODWORD(STACK[0x594]) >> 8) & 0xF) + 257376;
  LOBYTE(v836) = v836 ^ (16 * v857);
  v863 = (v858 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x588])) & 0xF;
  v864 = (766 * ((v836 & 0xF0 | (LODWORD(STACK[0x588]) >> 12)) + 336) - 979) % 0x3D3;
  v865 = *(v121 + (v860 - 979 * ((4387097 * v860) >> 32))) ^ (16 * (*(v121 + (766 * v861 + 257376 - 979 * ((4387097 * (766 * v861 + 257376)) >> 32))) ^ 0xEA)) ^ 0xEA;
  v866 = (v859 ^ ((*(v121 + v856) ^ 0xAAAAAAAA) << 28)) >> 16 >> (((((v865 & 0x8A ^ 0xA) + (v865 & 0x8A)) | 0xC) + 22) & 0x1E);
  v867 = 766 * ((LODWORD(STACK[0x574]) >> 12) & 0xFFFFFF0F | (16 * (v866 & 0xF))) + 257376;
  v868 = v867 - 979 * ((4387097 * v867) >> 32);
  v869 = ((*(v121 + v864) ^ 0xEA) << 12) ^ ((*(v121 + (v862 - 979 * ((4387097 * v862) >> 32))) ^ 0xEA) << 8);
  v870 = 766 * (v866 & 0xF0 | HIWORD(LODWORD(STACK[0x574])) & 0xF) + 257376;
  v871 = 766 * ((v866 >> 4) & 0xF0 | (LODWORD(STACK[0x5A0]) >> 20) & 0xF) + 257376;
  v872 = v869 ^ ((*(v121 + (766 * v863 + 257376 - 979 * ((4387097 * (766 * v863 + 257376)) >> 32))) ^ 0xEA) << 16) ^ ((*(v121 + v868) ^ 0xEA) << 20) ^ ((*(v121 + (v870 - 979 * ((4387097 * v870) >> 32))) ^ 0xEA) << 24) ^ ((*(v121 + (v871 - 979 * ((4387097 * v871) >> 32))) ^ 0xAAAAAAAA) << 28);
  LODWORD(STACK[0x604]) = (v849 << 16) & 0x45A20000 ^ v849 ^ ((v849 << 16) ^ 0x48FD0000) & (v850 & 0x45A20000 ^ 0x45A20000 ^ v851);
  LODWORD(STACK[0x5F8]) = LODWORD(STACK[0x63C]) ^ v830;
  v873 = *(v121 + v848);
  v874 = ((*(v121 + v845) << 12) ^ ((((*(v121 + v843) << 12) ^ (((*(v121 + v844) ^ 0x8FFF11) & ((*(v121 + LODWORD(STACK[0x62C])) << 12) ^ (*(v121 + LODWORD(STACK[0x5F0])) << 8) ^ 0x8B1479) | *(v121 + v844) & 0x86) << 8) ^ 0xEC7FCC) & (*(v121 + v846) ^ 0xFFFF04) ^ (*(v121 + v846) & 0x33 | 0x435800)) << 8) ^ 0x2802076D) & (v873 ^ 0xFFFFFF17) | v873 & 0x92;
  v875 = STACK[0x5C8] & (LODWORD(STACK[0x630]) ^ 0x1CB6517A) ^ LODWORD(STACK[0x5CC]);
  v876 = ((2 * (LODWORD(STACK[0x630]) ^ 0x3436D5F2)) ^ 0x55ED0F1C) & (LODWORD(STACK[0x630]) ^ 0x3436D5F2) ^ (2 * (LODWORD(STACK[0x630]) ^ 0x3436D5F2)) & 0xAAF6878E;
  v877 = (v876 ^ 0x100302) & (4 * v875) ^ v875;
  v878 = ((4 * (v876 ^ 0xAA128082)) ^ 0xABDA1E38) & (v876 ^ 0xAA128082) ^ (4 * (v876 ^ 0xAA128082)) & 0xAAF6878C;
  v879 = (v878 ^ 0xAAD20600) & (16 * v877) ^ v877;
  v880 = ((16 * (v878 ^ 0x248186)) ^ 0xAF6878E0) & (v878 ^ 0x248186) ^ (16 * (v878 ^ 0x248186)) & 0xAAF68780;
  v881 = v879 ^ 0xAAF6878E ^ (v880 ^ 0xAA600000) & (v879 << 8);
  LODWORD(STACK[0x670]) = LODWORD(STACK[0x630]) ^ (2 * ((v881 << 16) & 0x2AF60000 ^ v881 ^ ((v881 << 16) ^ 0x78E0000) & (((v880 ^ 0x96870E) << 8) & 0x2AF60000 ^ 0x8700000 ^ (((v880 ^ 0x96870E) << 8) ^ 0x76870000) & (v880 ^ 0x96870E)))) ^ (16 * *(v121 + v847)) ^ 0x19511A2F ^ v874;
  v882 = v872 ^ v865;
  LODWORD(STACK[0x66C]) = LODWORD(STACK[0x5B4]) ^ 0xA86C0F86 ^ LODWORD(STACK[0x4BC]);
  v883 = *(v121 + (LODWORD(STACK[0x500]) + 455004) % 0x3D3u) ^ 0xEA ^ ((*(v121 + LODWORD(STACK[0x4F0]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x4F0]) + 455004)) >> 32) >> 1)) ^ 0xEA) << ((STACK[0x554] & 4 ^ 4) + (STACK[0x554] & 4)));
  v884 = (LODWORD(STACK[0x4CC]) >> 20) & 0xF0 | (LODWORD(STACK[0x4D4]) >> 12);
  v885 = 766 * (*(v121 + (766 * v884 + 455004 - 979 * ((4387097 * (766 * v884 + 455004)) >> 32))) ^ (16 * (*(v121 + LODWORD(STACK[0x4C4])) ^ 0xEA)) ^ 0xEA) + 455004;
  LOBYTE(v847) = *(v121 + (766 * (v882 & 0xF) + 713146 - 979 * ((4387097 * (766 * (v882 & 0xFu) + 713146)) >> 32))) ^ (16 * (*(v121 + ((v882 >> 4) + 931) * ((v882 & 0x860F55CE ^ 0x860F55CE) + (v882 & 0x860F55CE)) * (((268434524 - (v882 >> 4)) & 0xA6F7809) + (((v882 >> 4) + 931) & 0x1A9)) % 0x3D3) ^ 0xEA)) ^ 0xEA;
  LOBYTE(v884) = (LODWORD(STACK[0x4CC]) >> 20) & 0xD0 | (LODWORD(STACK[0x4D4]) >> 12) & 0xD5;
  v886 = 766 * (((((51 - LODWORD(STACK[0x568])) & 0x40) + (STACK[0x504] & 0x40)) & 0xFFFFFFF0 | STACK[0x4FC] & 0xF | 0x150) + 16 * (((v847 | 0x39) - (v847 & 0xC6) + v884 + (v884 ^ 0xD5) + 1) & v883));
  v887 = v886 - 979 * (((8774193 * v886) >> 32) >> 1);
  v888 = 766 * (v883 & 0xF0 | (LODWORD(STACK[0x4F8]) >> 4)) + 257376;
  v889 = v888 - 979 * ((4387097 * v888) >> 32);
  v890 = v883 ^ ((*(v121 + LODWORD(STACK[0x4EC]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x4EC]) + 455004)) >> 32) >> 1)) ^ 0xEA) << 8);
  v891 = 766 * ((v890 >> 4) & 0xF0 | (LODWORD(STACK[0x4F8]) >> 8) & 0xF) + 257376;
  v892 = v890 ^ ((*(v121 + LODWORD(STACK[0x4E0]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x4E0]) + 455004)) >> 32) >> 1)) ^ 0xEA) << 12);
  v893 = 766 * ((v892 >> 8) & 0xF0 | (LODWORD(STACK[0x4F4]) >> 12)) + 257376;
  v894 = v892 ^ ((*(v121 + LODWORD(STACK[0x4D8]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x4D8]) + 455004)) >> 32) >> 1)) ^ 0xEA) << 16);
  v895 = 766 * ((v894 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x4F4])) & 0xF) + 257376;
  v896 = v894 ^ ((*(v121 + LODWORD(STACK[0x4D0]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x4D0]) + 455004)) >> 32) >> 1)) ^ 0xEA) << 20);
  v897 = v896 ^ ((*(v121 + LODWORD(STACK[0x4C8]) + 455004 - 979 * (((8774193 * (LODWORD(STACK[0x4C8]) + 455004)) >> 32) >> 1)) ^ 0xEA) << 24);
  v898 = 766 * (HIWORD(v896) & 0xF0 | (LODWORD(STACK[0x4D4]) >> 4)) + 257376;
  v899 = 766 * ((v897 >> 20) & 0xF0 | (LODWORD(STACK[0x4DC]) >> 8) & 0xF) + 257376;
  v900 = 766 * (((v897 ^ ((*(v121 + v885 - 979 * (((8774193 * v885) >> 32) >> 1)) ^ 0xAAAAAAAA) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x4D4]) >> 12)) + 257376;
  v901 = v900 - 979 * ((4387097 * v900) >> 32);
  v902 = *(v121 + v887);
  v903 = v902 ^ (16 * (*(v121 + v889) ^ 0xEA)) ^ 0xEA;
  v904 = v903 ^ ((*(v121 + (v891 - 979 * ((4387097 * v891) >> 32))) ^ 0xEA) << 8);
  v905 = ((*(v121 + (v895 - 979 * ((4387097 * v895) >> 32))) ^ 0xEA) << 16) ^ ((*(v121 + (v893 - 979 * ((4387097 * v893) >> 32))) ^ 0xEA) << 12);
  v906 = ((*(v121 + (v898 - 979 * ((4387097 * v898) >> 32))) ^ 0xEA) << 20) ^ ((*(v121 + (v899 - 979 * ((4387097 * v899) >> 32))) ^ 0xEA) << 24);
  LOWORD(v899) = v905 ^ v904;
  v907 = v906 ^ v905 ^ v904;
  v908 = 766 * ((v907 ^ ((*(v121 + v901) ^ 0xAAAAAAAA) << 28)) >> 28) + 713146;
  v909 = ((HIBYTE(v907) & 0xF) + 931) * ((v904 & 0x2FE ^ 0x2FE) + (v904 & 0x2FE));
  v910 = *(v121 + (v908 - 979 * ((4387097 * v908) >> 32)));
  v911 = *(v121 + (v909 - 979 * ((4387097 * v909) >> 32))) ^ 0xEA ^ ((v910 ^ 0xEA) << (v910 & 4) << (v910 & 4 ^ 4));
  LODWORD(STACK[0x62C]) = LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x504]);
  v912 = 766 * ((v904 >> 8) & 0xF) + 713146;
  LODWORD(STACK[0x60C]) = LODWORD(STACK[0x620]) ^ (16 * (*(v121 + (766 * (v903 >> 4) + 713146 - 979 * ((4387097 * (766 * (v903 >> 4) + 713146)) >> 32))) ^ 0xEA)) ^ ((((((*(v121 + (766 * (HIWORD(v905) & 0xF) + 713146 - 979 * ((4387097 * (766 * (HIWORD(v905) & 0xF) + 713146)) >> 32))) ^ 0xEA) << 8) | (v911 << 16)) ^ ((*(v121 + (766 * ((v907 >> 20) & 0xF) + 713146 - 979 * ((4387097 * (766 * ((v907 >> 20) & 0xF) + 713146)) >> 32))) ^ 0xEA) << 12) | *(v121 + (v912 - 979 * ((4387097 * v912) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v899 >> 12) + 713146 - 979 * ((4387097 * (766 * (v899 >> 12) + 713146)) >> 32))) ^ 0xEA) << 12) | *(v121 + (766 * (v902 & 0xF ^ 0xA) + 713146 - 979 * ((4387097 * (766 * (v902 & 0xF ^ 0xAu) + 713146)) >> 32))) ^ 0xEA);
  v913 = *(v121 + (LODWORD(STACK[0x46C]) - 979 * ((4387097 * LODWORD(STACK[0x46C])) >> 32))) >> 4;
  v914 = 766 * (((v913 ^ 0xE) + ((2 * ((v913 ^ 0xE | 0x7A) ^ v913)) ^ 0x17) - 21) ^ *(v121 + (LODWORD(STACK[0x470]) - 979 * ((4387097 * LODWORD(STACK[0x470])) >> 32)))) + 455004;
  v915 = 766 * ((LODWORD(STACK[0x484]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x47C])) & 0xF);
  v916 = 766 * (*(v121 + (v915 + 455004 - 979 * ((4387097 * (v915 + 455004)) >> 32))) ^ (16 * (*(v121 + (v914 - 979 * ((4387097 * v914) >> 32))) ^ 0xEA)) ^ 0xEA);
  v917 = v916 + 455004 - 979 * (((8774193 * (v916 + 455004)) >> 32) >> 1);
  v918 = (*(v121 + (v916 - 979 * ((4387097 * v916) >> 32))) >> 4) ^ 0xE;
  v919 = 766 * ((v918 - ((2 * v918) & 0x55) - 22) ^ *(v121 + (v915 - 979 * ((4387097 * v915) >> 32)))) + 455004;
  v920 = 766 * ((LODWORD(STACK[0x4B4]) >> 8) & 0xF0 | (LODWORD(STACK[0x4B8]) >> 20) & 0xF) + 455004;
  v921 = LODWORD(STACK[0x608]) + 766 * (*(v121 + (v920 - 979 * ((4387097 * v920) >> 32))) ^ (16 * (*(v121 + (v919 - 979 * ((4387097 * v919) >> 32))) ^ 0xEA)) ^ 0xEA);
  v922 = 766 * (STACK[0x48C] & 0xF0 | (LODWORD(STACK[0x47C]) >> 12)) + 257376;
  v923 = v922 - 979 * ((4387097 * v922) >> 32);
  v924 = *(v121 + LODWORD(STACK[0x478]));
  v925 = (LODWORD(STACK[0x490]) ^ ((*(v121 + v917) ^ 0xEA) << 24) ^ ((*(v121 + v921 % 0x3D3) ^ 0xAAAAAAAA) << 28)) >> 24;
  v926 = v925 ^ 0xF0;
  if (v924 == 234)
  {
    v926 = 15;
  }

  v927 = 766 * (HIWORD(LODWORD(STACK[0x47C])) & 0xF | (16 * (v926 & v925))) + 257376;
  v928 = 766 * (v925 & 0xF0 | (LODWORD(STACK[0x4B8]) >> 20) & 0xF) + 257376;
  v929 = ((*(v121 + v923) ^ 0xEA) << 20) ^ ((v924 ^ 0xEA) << 16);
  v930 = v929 ^ LODWORD(STACK[0x464]);
  v931 = v930 ^ ((*(v121 + v927 - 979 * (((8774193 * v927) >> 32) >> 1)) ^ 0xEA) << 24);
  v932 = 766 * ((v931 ^ ((*(v121 + (v928 - 979 * ((4387097 * v928) >> 32))) ^ 0xAAAAAAAA) << 28)) >> 28) + 713146;
  v933 = *(v121 + (766 * (HIWORD(v930) & 0xF) + 713146 - 979 * ((4387097 * (766 * (HIWORD(v930) & 0xF) + 713146)) >> 32))) ^ 0xEA ^ ((*(v121 + (766 * (HIBYTE(v931) & 0xF) + 713146 - 979 * ((4387097 * (766 * (HIBYTE(v931) & 0xF) + 713146)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (v932 - 979 * ((4387097 * v932) >> 32))) ^ 0xA) << 12) ^ (16 * (*(v121 + (766 * ((v929 >> 20) & 0xF) + 713146 - 979 * ((4387097 * (766 * ((v929 >> 20) & 0xF) + 713146)) >> 32))) ^ 0xEA));
  v934 = 766 * (LODWORD(STACK[0x474]) >> 12) + 713146;
  v935 = 766 * (LODWORD(STACK[0x480]) >> 4) + 713146;
  v936 = 766 * (STACK[0x488] & 0xF ^ 0xA) + 713146;
  LODWORD(STACK[0x628]) = LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x63C]) = LODWORD(STACK[0x3F0]) ^ (16 * (*(v121 + (v935 - 979 * ((4387097 * v935) >> 32))) ^ 0xEA)) ^ ((LODWORD(STACK[0x42C]) | (v933 << 16)) ^ ((*(v121 + (v934 - 979 * ((4387097 * v934) >> 32))) ^ 0xEA) << 12) | *(v121 + (v936 - 979 * ((4387097 * v936) >> 32))) ^ 0xEA);
  v937 = 766 * (HIBYTE(LODWORD(STACK[0x3D0])) & 0xF) + 729998;
  v938 = v937 - 979 * ((4387097 * v937) >> 32);
  v939 = 766 * (((LODWORD(STACK[0x3D0]) >> 20) & 0xF ^ 0x3B9) + ((LODWORD(STACK[0x3D0]) >> 19) & 0x12));
  v940 = 766 * (LODWORD(STACK[0x3D0]) >> 12) + 729998;
  v941 = *(v121 + LODWORD(STACK[0x3E4])) ^ 0xEA | ((*(v121 + v938) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (LODWORD(STACK[0x3D0]) >> 28) + 729998 - 979 * ((4387097 * (766 * (LODWORD(STACK[0x3D0]) >> 28) + 729998)) >> 32))) ^ 0xEA) << 12);
  v942 = 766 * ((LODWORD(STACK[0x3D0]) >> 8) & 0xF) + 729998;
  v943 = v942 - 979 * ((4387097 * v942) >> 32);
  v944 = 766 * (LODWORD(STACK[0x3D0]) >> 4) + 729998;
  v945 = v944 - 979 * ((4387097 * v944) >> 32);
  v946 = 766 * (HIBYTE(LODWORD(STACK[0x44C])) & 0xF) + 729998;
  v947 = 766 * ((LODWORD(STACK[0x44C]) >> 20) & 0xF) + 729998;
  v948 = 766 * (HIWORD(LODWORD(STACK[0x44C])) & 0xF) + 729998;
  v949 = *(v121 + (v948 - 979 * ((4387097 * v948) >> 32))) ^ 0xEA ^ ((*(v121 + (v946 - 979 * ((4387097 * v946) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (LODWORD(STACK[0x44C]) >> 28) + 729998 - 979 * ((4387097 * (766 * (LODWORD(STACK[0x44C]) >> 28) + 729998)) >> 32))) ^ 0xA) << 12) ^ (16 * (*(v121 + (v947 - 979 * ((4387097 * v947) >> 32))) ^ 0xEA));
  v950 = 766 * (LODWORD(STACK[0x44C]) >> 12) + 729998;
  v951 = 766 * ((LODWORD(STACK[0x44C]) >> 8) & 0xF) + 729998;
  v952 = 766 * (LODWORD(STACK[0x44C]) >> 4) + 729998;
  v953 = (((*(v121 + (v951 - 979 * ((4387097 * v951) >> 32))) ^ 0xEA) << 8) | (v949 << 16)) ^ ((*(v121 + (v950 - 979 * ((4387097 * v950) >> 32))) ^ 0xEA) << 12) | LODWORD(STACK[0x454]);
  v954 = *(v121 + LODWORD(STACK[0x448]) % 0x3D3);
  v955 = (v953 ^ (16 * (*(v121 + (v952 - 979 * ((4387097 * v952) >> 32))) ^ 0xEAu))) >> (HIBYTE(LODWORD(STACK[0x650])) & 4 ^ 4) >> (HIBYTE(LODWORD(STACK[0x650])) & 4);
  v956 = 766 * ((((v954 >> 4) ^ 0xE) + ~(2 * (((v954 >> 4) ^ 0xE) & 0xFB ^ ((v954 & 0x10) != 0))) - 21) ^ *(v121 + (LODWORD(STACK[0x450]) - 979 * ((4387097 * LODWORD(STACK[0x450])) >> 32)))) + 455004;
  v957 = v956 - 979 * ((4387097 * v956) >> 32);
  v958 = (v941 << 8) ^ ((*(v121 + (v939 - 979 * ((4387097 * v939) >> 32))) ^ 0xEA) << 12);
  v959 = v958 | *(v121 + v943) ^ 0xEA;
  v960 = (v959 << 8) ^ ((*(v121 + (v940 - 979 * ((4387097 * v940) >> 32))) ^ 0xEA) << 12);
  v961 = (v960 | LODWORD(STACK[0x45C])) ^ (16 * (*(v121 + v945) ^ 0xEA));
  v962 = 766 * ((v961 >> 4) | (16 * (v955 & 0xF)));
  v963 = 766 * (*(v121 + (v962 + 455004 - 979 * ((4387097 * (v962 + 455004)) >> 32))) ^ (16 * (*(v121 + v957) ^ 0xEA)) ^ 0xEA);
  v964 = v963 + 455004 - 979 * (((8774193 * (v963 + 455004)) >> 32) >> 1);
  v965 = *(v121 + (v963 - 979 * ((4387097 * v963) >> 32)));
  v966 = 766 * ((((v965 >> 4) ^ 0xE) + ~(2 * (((v965 >> 4) ^ 0xE) & 0xFB ^ ((v965 & 0x10) != 0))) - 21) ^ *(v121 + (v962 - 979 * ((4387097 * v962) >> 32)))) + 455004;
  v967 = v955 & 0xF0 | (v961 >> 8) & 0xF;
  v968 = ((((v955 & 0xF0 | (v961 >> 8) & 0xE) - 766) ^ (v955 & 0xF0 | (v961 >> 8) & 0xE) ^ 0x2FE ^ -((v955 & 0xF0 | (v961 >> 8) & 0xE) ^ 0x2FE)) + (v955 & 0xF0 | (v961 >> 8) & 0xE)) * v967 % 0x3D3;
  v969 = 766 * (*(v121 + (766 * v967 + 455004 - 979 * ((4387097 * (766 * v967 + 455004)) >> 32))) ^ (16 * (*(v121 + (v966 - 979 * ((4387097 * v966) >> 32))) ^ 0xEA)) ^ 0xEA);
  v970 = v969 + 455004 - 979 * (((8774193 * (v969 + 455004)) >> 32) >> 1);
  v971 = (*(v121 + (v969 - 979 * ((4387097 * v969) >> 32))) >> 4) ^ 0xE;
  v972 = 766 * ((v971 - ((2 * v971) & 0x55) - 22) ^ *(v121 + v968)) + 455004;
  v973 = 766 * ((v955 >> 4) & 0xF0 | (v960 >> 12));
  v974 = 766 * (*(v121 + (v973 + 455004 - 979 * ((4387097 * (v973 + 455004)) >> 32))) ^ (16 * (*(v121 + (v972 - 979 * ((4387097 * v972) >> 32))) ^ 0xEA)) ^ 0xEA);
  v975 = *(v121 + (v974 - 979 * ((4387097 * v974) >> 32)));
  v976 = (((v975 >> 4) ^ 0xE) - 2 * (((v975 >> 4) ^ 0xE) & 0xFB ^ ((v975 & 0x10) != 0)) - 22) ^ *(v121 + (v973 - 979 * ((4387097 * v973) >> 32)));
  v977 = v974 + 455004 - 979 * (((8774193 * (v974 + 455004)) >> 32) >> 1);
  v978 = 766 * v976 + 455004 - 979 * ((4387097 * (766 * v976 + 455004)) >> 32);
  v979 = 766 * ((v955 >> 8) & 0xF0 | HIWORD(v960) & 0xF);
  v980 = 766 * (*(v121 + (v979 + 455004 - 979 * ((4387097 * (v979 + 455004)) >> 32))) ^ (16 * (*(v121 + v978) ^ 0xEA)) ^ 0xEA);
  v981 = v980 + 455004 - 979 * (((8774193 * (v980 + 455004)) >> 32) >> 1);
  v982 = (*(v121 + (v980 - 979 * ((4387097 * v980) >> 32))) >> 4) ^ 0xE;
  v983 = 766 * ((v982 + (~(2 * v982) | 0xEB) - 21) ^ *(v121 + (v979 - 979 * ((4387097 * v979) >> 32)))) + 455004;
  v984 = 766 * ((v955 >> 12) & 0xF0 | (v958 >> 12));
  v985 = 766 * (*(v121 + (v984 + 455004 - 979 * ((4387097 * (v984 + 455004)) >> 32))) ^ (16 * (*(v121 + (v983 - 979 * ((4387097 * v983) >> 32))) ^ 0xEA)) ^ 0xEA);
  v986 = v985 - 979 * ((4387097 * v985) >> 32);
  v987 = 766 * ((((*(v121 + v986) >> 4) ^ 0xE) - 2 * (((*(v121 + v986) >> 4) ^ 0xE) & 0xFB ^ ((*(v121 + v986) & 0x10) != 0)) - 22) ^ *(v121 + (v984 - 979 * ((4387097 * v984) >> 32)))) + 455004;
  v988 = 766 * (HIWORD(v955) & 0xF0 | HIWORD(v958) & 0xF);
  v989 = 766 * (*(v121 + (v988 + 455004 - 979 * ((4387097 * (v988 + 455004)) >> 32))) ^ (16 * (*(v121 + (v987 - 979 * ((4387097 * v987) >> 32))) ^ 0xEA)) ^ 0xEA);
  v990 = v989 + 455004 - 979 * (((8774193 * (v989 + 455004)) >> 32) >> 1);
  v991 = *(v121 + (v989 - 979 * ((4387097 * v989) >> 32))) >> 4;
  v992 = 766 * (((v991 ^ 0xE) + ((2 * ((v991 ^ 0xE | 0x7A) ^ v991)) ^ 0x17) - 21) ^ *(v121 + (v988 - 979 * ((4387097 * v988) >> 32)))) + 455004;
  v993 = 766 * (*(v121 + (766 * ((v955 >> 20) & 0xF0 | (v959 >> 20) & 0xF) + 455004) % 0x3D3) ^ (16 * (*(v121 + (v992 - 979 * ((4387097 * v992) >> 32))) ^ 0xEA)) ^ 0xEA) + 455004;
  v994 = v993 - 979 * (((8774193 * v993) >> 32) >> 1);
  LOBYTE(v964) = *(v121 + v964) ^ 0xEA;
  LOBYTE(v993) = *(v121 + v970) ^ 0xEA;
  v995 = (v964 ^ (16 * v993)) & 0xF0 | (v961 >> 8) & 0xF;
  v996 = 766 * ((LODWORD(STACK[0x444]) ^ (16 * v964)) & 0xF0 | (v961 >> 4)) + 257376;
  v997 = *(v121 + v977) ^ 0xEA;
  v998 = 766 * ((v993 ^ (16 * v997)) & 0xF0 | (v960 >> 12)) + 257376;
  v999 = v998 - 979 * ((4387097 * v998) >> 32);
  v1000 = ((*(v121 + v981) ^ 0xEA) << 16) ^ (v997 << 12) ^ ((*(v121 + v985 + 455004 - 979 * (((8774193 * (v985 + 455004)) >> 32) >> 1)) ^ 0xEA) << 20);
  v1001 = *(v121 + v990);
  v1002 = v1000 ^ ((v1001 ^ 0xEA) << 24) ^ ((*(v121 + v994) ^ 0xAAAAAAAA) << 28);
  v1003 = 766 * (((HIWORD(v1002) & 0xF) << ((v999 & 4 ^ 4) + (v999 & 4))) ^ HIWORD(v960) & 0xF) + 257376;
  v1004 = HIWORD(v1002) >> ((v1001 & 4 ^ 4) + (v1001 & 4));
  v1005 = 766 * ((v958 >> 12) & 0xFFFFFF0F | (16 * (v1004 & 0xF))) + 257376;
  v1006 = v1004 & 0xF0 | HIWORD(v958) & 0xF;
  v1007 = 766 * ((v1004 >> 4) & 0xF0 | (v959 >> 20) & 0xF) + 257376;
  v1008 = ((*(v121 + v999) ^ 0xEA) << 12) ^ ((*(v121 + (766 * v995 + 257376 - 979 * ((4387097 * (766 * v995 + 257376)) >> 32))) ^ 0xEA) << 8);
  v1009 = ((*(v121 + (v1005 - 979 * ((4387097 * v1005) >> 32))) ^ 0xEA) << 20) ^ ((*(v121 + v1003 % 0x3D3) ^ 0xEA) << 16);
  v1010 = LODWORD(STACK[0x428]) ^ (16 * (*(v121 + (v996 - 979 * ((4387097 * v996) >> 32))) ^ 0xEA)) ^ 0xEA;
  v1011 = v1009 ^ v1008 ^ v1010;
  v1012 = (((*(v121 + (v1007 - 979 * ((4387097 * v1007) >> 32))) ^ 0xAAAAAAAA) << 28) ^ ((*(v121 + (766 * v1006 + 257376 - 979 * ((4387097 * (766 * v1006 + 257376)) >> 32))) ^ 0xEA) << 24) ^ v1011) >> ((v1006 & 0x18 ^ 0x18) + (v1006 & 0x18));
  v1013 = 766 * (((v1008 ^ v1010) >> 8) & 0xF) + 713146;
  v1014 = ((((((*(v121 + (766 * (v1012 & 0xF) + 713146 - 979 * ((4387097 * (766 * (v1012 & 0xF) + 713146)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v1012 >> 4) + 713146 - 979 * ((4387097 * (766 * (v1012 >> 4) + 713146)) >> 32))) ^ 0xEA) << 12) | *(v121 + (766 * (HIWORD(v1011) & 0xF) + 713146 - 979 * ((4387097 * (766 * (HIWORD(v1011) & 0xF) + 713146)) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * ((v1009 >> 20) & 0xF) + 713146 - 979 * ((4387097 * (766 * ((v1009 >> 20) & 0xF) + 713146)) >> 32))) ^ 0xEA) << 12) | *(v121 + (v1013 - 979 * ((4387097 * v1013) >> 32))) ^ 0xEA) << 8) ^ ((*(v121 + (766 * (v1008 >> 12) + 713146 - 979 * ((4387097 * (766 * (v1008 >> 12) + 713146)) >> 32))) ^ 0xEA) << 12) | LODWORD(STACK[0x424]) ^ 0xEA;
  LODWORD(STACK[0x650]) = LODWORD(STACK[0x434]) ^ (16 * (*(v121 + (766 * (v1010 >> 4) + 713146 - 979 * ((4387097 * (766 * (v1010 >> 4) + 713146)) >> 32))) ^ 0xEA)) ^ v1014;
  LODWORD(STACK[0x638]) = LODWORD(STACK[0x5F8]) ^ (2 * LODWORD(STACK[0x604])) ^ 0xD74F97EB;
  STACK[0x610] = *(&off_1002ACDD0 + (LODWORD(STACK[0x61C]) ^ 0xA33));
  LODWORD(STACK[0x620]) = STACK[0x52C];
  JUMPOUT(0x100246D30);
}

uint64_t sub_100248BF4()
{
  result = (*(v1 + 8 * (v0 ^ 0x172B)))();
  *(v3 + 4) = v4;
  return result;
}

uint64_t sub_100248CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = (((v13 - 2417) | 0x178) ^ 0x1EDC0810) + a12;
  v16 = v12 - 1702203396 < v15;
  if (v12 > 0x65759003 != v15 < 0x9A8A6FFC)
  {
    v16 = v15 < 0x9A8A6FFC;
  }

  return (*(v14 + 8 * (!v16 | (2 * !v16) | v13)))();
}

uint64_t sub_100248E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v71 = v59 - 1;
  v72 = 495309039 * ((495309039 * (v66 + v71)) ^ ((495309039 * (v66 + v71)) >> 16));
  v73 = __ROR8__((a1 + v71) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = ((v61 - v73) & v62) + v73 + 0x128F91531B77B0EALL - ((v73 + 0x128F91531B77B0EALL) & v63);
  v75 = v74 ^ v64;
  v76 = v74 ^ v65;
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xBD3007C12E2C48DDLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xEE1A64F71C16A8ELL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a2;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = ((a3 & (2 * (v83 + v82))) - (v83 + v82) + a4) ^ a5;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xE66F1B6BEDB3FA01;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = ((a6 & (2 * (v87 + v88))) - (v87 + v88) + a7) ^ a8;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  *(a1 + v71) = *(a11 + (v72 >> 24)) ^ *(v66 + v71) ^ *(a12 + v60 + (v72 >> 24)) ^ *(a13 + (v72 >> 24)) ^ v72 ^ (5 * ((495309039 * ((495309039 * (v66 + v71)) ^ ((495309039 * (v66 + v71)) >> 16))) >> 24)) ^ ((((v67 | (2 * (v91 + v90))) - (v91 + v90) + v68) ^ v69) >> (8 * ((a1 + v71) & 7)));
  return (*(a58 + 8 * (((v71 != 0) * v70) ^ v58)))();
}

uint64_t sub_100248FBC@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x668] = a1;
  LODWORD(STACK[0xB00]) = v5;
  LOWORD(STACK[0xB06]) = a2;
  LODWORD(STACK[0xB08]) = v7;
  LODWORD(STACK[0xB0C]) = v3;
  STACK[0xB10] = v4;
  STACK[0xB18] = v6;
  return (*(v8 + 8 * (((a1 == 0) * (((2 * v2) ^ 0x29A6) + (v2 ^ 0xFFFFE4B7))) ^ v2)))();
}

uint64_t sub_100249078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12, unsigned int a13, uint64_t *a14)
{
  v17 = 1186709341 * ((((&a10 | 0xBAC6DC3A) ^ 0xFFFFFFFE) - (~&a10 | 0x453923C5)) ^ 0x3BC3CA28);
  a14 = &a9;
  a10 = v14;
  a11 = v17 + 287173318;
  a12 = (v15 - 1296) ^ v17;
  a13 = 39291932 - v17;
  v18 = (*(v16 + 8 * (v15 + 2942)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -197604040) * ((134 * (v15 ^ 0x79F)) ^ 0xD9E)) | v15)))(v18);
}

uint64_t sub_100249248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, int a24, char a25, __int16 a26, char a27, __int16 a28, char a29)
{
  v34 = 1206776117 * ((-1337902459 - ((v33 - 160) | 0xB0413A85) + ((v33 - 160) | 0x4FBEC57A)) ^ 0x692E499B);
  *(v33 - 120) = &a29;
  *(v33 - 112) = &a22;
  *(v33 - 136) = (v30 + 1285) ^ v34;
  *(v33 - 132) = (((v30 + 930323573) & 0xC88C64CE ^ ((v30 ^ 0x903) - 791652803)) + a7) ^ v34;
  *(v33 - 160) = &a27;
  *(v33 - 152) = v29;
  *(v33 - 144) = &a25;
  v35 = (*(v31 + 8 * (v30 ^ 0x116D)))(v33 - 160);
  return (*(v31 + 8 * ((3408 * (*(v33 - 128) == v32)) ^ v30)))(v35, 2999118709, 1295848586, 851635061);
}

uint64_t sub_10024948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v22 - 112) = (v21 + 721) ^ (1841367943 * ((v22 - 1975886492 - 2 * ((v22 - 120) & 0x8A3A5DDC)) ^ 0x2BD45340));
  *(v22 - 104) = &a20;
  *(v22 - 120) = a12;
  v23 = (*(v20 + 8 * (v21 + 1735)))(v22 - 120);
  return sub_1002494F4(v23);
}

uint64_t sub_1002496C4@<X0>(int a1@<W0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v10 = *(a3 + v3 + 72);
  v11 = ((v3 << v5) & v7) + (v3 ^ v6) + a1;
  *(v4 + v11) = v10 ^ 0x5E;
  *(v4 + v11 + 1) = (v9 ^ BYTE1(v10)) - ((2 * (v9 ^ BYTE1(v10))) & 0x9A) + 77;
  *(v4 + v11 + 2) = (BYTE2(v10) ^ 0x4F) - ((2 * (BYTE2(v10) ^ 0x4F)) & 0x9A) + 77;
  *(v4 + v11 + 3) = (HIBYTE(v10) ^ 0x30) - ((v10 >> 23) & 0x9A) + 77;
  return (*(v8 + 8 * ((127 * (v3 + 4 >= *(a3 + 92))) ^ a2)))();
}

uint64_t sub_100249800@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27)
{
  v31 = *(&a15 + a2 + 72);
  v32 = (a2 ^ 0x982CA1A6 ^ (v28 - 135275672) & 0xFFF73EFF) + ((2 * a2) & 0xDF977E78) + v27;
  *(a1 + v32) = v31 ^ 0x5E;
  *(a1 + v32 + 1) = (BYTE1(v31) ^ 0x17) - ((2 * (BYTE1(v31) ^ 0x17)) & 0x9A) + 77;
  *(a1 + v32 + 2) = (BYTE2(v31) ^ 0x4F) - ((2 * (BYTE2(v31) ^ 0x4F)) & 0x9A) + 77;
  *(a1 + v32 + 3) = (HIBYTE(v31) ^ 0x30) - ((v31 >> 23) & 0x9A) + 77;
  return (*(v30 + 8 * (((a2 + 4 < a27) * v29) ^ v28)))();
}

void sub_1002498D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  STACK[0x708] = 0;
  STACK[0x450] = *(a58 + 8 * (v58 - 2286));
  JUMPOUT(0x1002498F4);
}

void sub_100249910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (((a29 - v38) | (v38 - a29)) > v39)
  {
    v42 = 0x80000000;
  }

  else
  {
    v42 = 0x7FFFFFFF;
  }

  *v40 = v42;
  (*(v41 + 8 * (v38 + 4845)))(a38);
  JUMPOUT(0x100249970);
}

uint64_t sub_100249AC4(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 != 0) * v2) ^ v1)))();
}

uint64_t sub_100249AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, char a19, int a20, char *a21, uint64_t a22, int *a23, int a24, int a25, int a26, char *a27, char *a28)
{
  a20 = 474657547;
  v31 = *(a2 + 4) + ((v30 + 633) ^ 0xD0D06100);
  v32 = 1206776117 * ((((v28 | 0x5687465C) ^ 0xFFFFFFFE) - (~v28 | 0xA978B9A3)) ^ 0x8FE83542);
  a22 = *(a2 + 8);
  a23 = &a20;
  a21 = &a19;
  a27 = &a15;
  a28 = &a17;
  a24 = (v30 + 1536) ^ v32;
  a25 = v31 ^ v32;
  v34 = (*(v29 + 8 * (v30 + 4184)))(&a21);
  return (*(v29 + 8 * ((25 * (((v30 + 8) ^ (a26 == -197604040)) & 1)) ^ v30)))(v34, a2);
}

uint64_t sub_100249BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(a49 + 56);
  *(a49 + 56) = a70 - 4665 + v71;
  return (*(v70 + 8 * ((1806 * ((v71 - 580041766) < 0xFFFFFFFA)) ^ (a70 - 4186))))();
}

uint64_t sub_100249D58@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v9 = v3 < v4;
  *(v8 - 228 + a2) = *(a1 + v2) - ((2 * *(a1 + v2)) & 0x9A) + 77;
  v10 = v2 + 1;
  if (v9 == v10 > ((v6 - 2148) | 0x6Bu) + v5)
  {
    v9 = v10 + v4 < v3;
  }

  return (*(v7 + 8 * ((!v9 | (2 * !v9)) ^ v6)))();
}

uint64_t sub_100249F1C(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 24;
  }

  else
  {
    v2 = 23;
  }

  *(a1 + 88) = v2;
  return 0;
}

uint64_t sub_10024A074@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v7 - 616;
  a6 = a1;
  a7 = v8 - ((&a6 + 105142565 - 2 * (&a6 & 0x6445925)) ^ 0x1D75ECC4) * v11 + v7 - 616;
  v13 = (*(v10 + 8 * (v7 - 2097925563)))(&a6);
  return (*(v10 + 8 * (((a3 == 0) * (v12 ^ v9 ^ 0xEB1)) ^ (v8 + v12 + 3345))))(v13);
}

void sub_10024A120(uint64_t a1)
{
  v1 = *(a1 + 12) + 801279979 * ((-2 - ((a1 | 0xB38E9501) + (~a1 | 0x4C716AFE))) ^ 0x8F5F67AF);
  v3 = *a1;
  v4 = v1 + 206034421 * (((&v3 | 0x91926F2C) - &v3 + (&v3 & 0x6E6D90D0)) ^ 0x8AA3DACD) + 3447;
  v2 = *(&off_1002ACDD0 + (v1 ^ 0xE8));
  (*(v2 + 8 * (v1 + 4261)))(&v3);
  __asm { BRAA            X8, X17 }
}

void sub_10024A26C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = v13 - 1905;
  v18 = (v13 - 243724538) & 0xE86E5EB;
  v19 = 482210539 * ((-1875102742 - ((v16 - 144) | 0x903C33EA) + ((v16 - 144) | 0x6FC3CC15)) ^ 0x2A191242);
  *(v16 - 136) = v17 - v19 + 2259;
  *(v16 - 132) = ((v18 ^ 0x3B05E856) + v14) ^ v19;
  *(v16 - 128) = a1;
  *(v16 - 144) = &a13;
  (*(v15 + 8 * (v17 ^ 0x1B69)))(v16 - 144);
  JUMPOUT(0x10024A310);
}

uint64_t sub_10024A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = (*(v59 + 8 * (v58 ^ 0x1BF6)))();
  v61 = STACK[0x3C4];
  STACK[0x458] -= 80;
  return (*(a58 + 8 * ((3592 * (v61 == (v58 ^ 0xF438C423))) ^ (v58 - 1249))))(v60);
}

uint64_t sub_10024AA40(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = 801279979 * ((1251940056 - ((v15 - 128) | 0x4A9F16D8) + ((v15 - 128) | 0xB560E927)) ^ 0x764EE476);
  *(v15 - 120) = &a13;
  *(v15 - 128) = v16 + ((a3 << 6) & 0x71CEFF80) + ((32 * a3) ^ 0x38E77FDF) - 142874178;
  *(v15 - 112) = (v13 - 1418) ^ v16;
  v17 = (*(v14 + 8 * (v13 ^ 0x1F63)))(v15 - 128);
  return (*(v14 + 8 * ((((*(a10 + 4) - 1699582772) < 0x7FFFFFFF) * (((v13 - 2569) | 0x450) - 850)) ^ v13)))(v17);
}

uint64_t sub_10024AC0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int a6)
{
  v6 = a5 < a6;
  v7 = v12 + v11 + 1 + 3648;
  v8 = v6 ^ (v7 < v12 + 3647);
  v9 = v7 < a5;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(v13 + 8 * ((8159 * v6) ^ a4)))();
}

uint64_t sub_10024AC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = (*(v73 + 8 * (v74 ^ 0x1DF7u)))(v72);
  STACK[0x200] = a40 - 1712;
  LODWORD(STACK[0x214]) = 197629676;
  return (*(v73 + 8 * (((a72 != 0) * (((v74 ^ 0x1D20) - 2853) ^ 0x711)) | ((v74 ^ 0x1D20) - 888))))(v75);
}

uint64_t sub_10024ACCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(a2 + v5) + ((2 * *(a2 + v5)) & 0x9A ^ (((v2 - 67) | 0x30) - 50)) + 78;
  return (*(v4 + 8 * ((353 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10024AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, uint64_t a18)
{
  v25 = 860860023 * v21 + 1780373759;
  v26 = v24 + 1643;
  v27 = 1206776117 * (&a15 ^ 0x26908CE1);
  a18 = a14;
  a15 = v27 ^ v25;
  a17 = (v24 + 1643) ^ v27;
  (*(v23 + 8 * (v24 ^ 0x15DA)))(&a15);
  v28 = 1206776117 * (((&a15 | 0xB0C2412B) + (~&a15 | 0x4F3DBED4)) ^ 0x9652CDCB);
  a18 = a14;
  a17 = (v24 + 1643) ^ v28;
  a15 = v28 ^ (860860023 * v20 + 1780373759);
  (*(v23 + 8 * (v24 ^ 0x15DA)))(&a15);
  if (v19)
  {
    v29 = 1780373759;
  }

  else
  {
    v29 = -1653733514;
  }

  v30 = 1206776117 * ((((&a15 | 0xB56E34C) ^ 0xFFFFFFFE) - (~&a15 | 0xF4A91CB3)) ^ 0xD2399052);
  a18 = a14;
  a15 = v30 ^ v29;
  a17 = v26 ^ v30;
  (*(v23 + 8 * (v24 + 3002)))(&a15);
  v31 = 1206776117 * (((&a15 | 0xB7B07ED3) - &a15 + (&a15 & 0x484F8128)) ^ 0x9120F232);
  v32 = (860860023 * *v18 + 1780373759) ^ v31;
  a17 = v26 ^ v31;
  a15 = v32;
  a18 = a14;
  v33 = (*(v23 + 8 * (v24 ^ 0x15DA)))(&a15);
  return (*(v23 + 8 * ((11 * (a16 != v22 + ((v24 - 1402079027) & 0x5392073B) - 1850)) ^ v24)))(v33);
}

uint64_t sub_10024AF54()
{
  STACK[0xAB0] = v2;
  v4 = STACK[0x6D8];
  STACK[0xAB8] = STACK[0x6D8];
  return (*(v3 + 8 * (((v2 - v4 > 9) * ((v1 - 1946) ^ 0xD6F)) ^ v0)))();
}

uint64_t sub_10024B190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * ((v11 - 1710) ^ 0x228)) ^ v11)))();
}

uint64_t sub_10024B1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x248] = v65;
  STACK[0x360] = a65;
  v67 = ((*(v65 + 68) & 0x3F ^ 0x18675E38) - 1883233500) ^ ((*(v65 + 68) & 0x3F ^ 0x3057F003) - 1477407463) ^ ((*(v65 + 68) & 0x3F ^ 0x2830AE3B) - 1080569055);
  *(v65 + (v67 + 1750631140)) = -51;
  v68.n128_u64[0] = 0x4D4D4D4D4D4D4D4DLL;
  v68.n128_u64[1] = 0x4D4D4D4D4D4D4D4DLL;
  return (*(v66 + 8 * ((4591 * ((v67 + 1750631084) < 0xFFFFFFC8)) ^ a5)))(a1, a2, a64, a63, a3, a4, 4285456857, v68);
}

uint64_t sub_10024B2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char *a17, int a18)
{
  a18 = (v20 + 1184) ^ (2144428249 * ((&a16 + 1443804836 - 2 * (&a16 & 0x560EB6A4)) ^ 0x5477A8A8));
  a17 = &a14;
  v21 = (*(v18 + 8 * (v20 ^ 0x1017)))(&a16);
  return (*(v18 + 8 * (((a16 == v19) * (((v20 - 736) | 0x410) + ((v20 + 1157) ^ 0xCA5))) ^ v20)))(v21);
}

uint64_t sub_10024B370()
{
  v2 = *(STACK[0x3C8] + 24);
  STACK[0x738] = v2;
  return (*(v1 + 8 * ((v2 == 0) | v0)))();
}

uint64_t sub_10024B3D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v53[47] = v53[15] + (~(2 * v53[15]) | 0x65) + 78;
  v53[46] = v53[14] + (a1 ^ 0x20) + (~(2 * v53[14]) | 0x65);
  v53[45] = v53[13] + (~(2 * v53[13]) | 0x65) + 78;
  v53[44] = v53[12] + (~(2 * v53[12]) | 0x65) + 78;
  v53[43] = v53[11] + (~(2 * v53[11]) | 0x65) + 78;
  v53[42] = v53[10] + (~(2 * v53[10]) | 0x65) + 78;
  v53[41] = v53[9] + (~(2 * v53[9]) | 0x65) + 78;
  v53[40] = v53[8] + (~(2 * v53[8]) | 0x65) + 78;
  v53[39] = v53[7] + (~(2 * v53[7]) | 0x65) + 78;
  v53[38] = v53[6] + (~(2 * v53[6]) | 0x65) + 78;
  v53[37] = v53[5] + (~(2 * v53[5]) | 0x65) + 78;
  v53[36] = v53[4] + (~(2 * v53[4]) | 0x65) + 78;
  v53[35] = v53[3] + (~(2 * v53[3]) | 0x65) + 78;
  v53[34] = v53[2] + (~(2 * v53[2]) | 0x65) + 78;
  v53[33] = v53[1] + (~(2 * v53[1]) | 0x65) + 78;
  *v52 = *v53 + (~(2 * *v53) | 0x65) + 78;
  *(v56 - 216) = v55 + ((~((v56 - 224) | 0x56D99D6E) + ((v56 - 224) & 0x56D99D6E)) ^ 0x478ED1B9) * v54 + a1 + 1197;
  v57 = a1 ^ 0xE75;
  v58 = (*(v51 + 8 * (a1 + 3749)))(v56 - 224);
  *v53 = *(v56 - 224) ^ 0x35;
  return (*(a51 + 8 * v57))(v58);
}

uint64_t sub_10024B5D8@<X0>(int a1@<W8>)
{
  if ((a1 + 588728509) <= 0x19 && ((1 << (a1 - 67)) & 0x3014001) != 0)
  {
    return sub_10024B66C();
  }

  else
  {
    return sub_10024B614();
  }
}

void sub_10024B6F4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a4 = v7 - 1462950173 * ((2 * (&a3 & 0x5517B1E8) - &a3 + 719867415) ^ 0x2091C5B0) + 311;
  a3 = v6;
  a6 = v8;
  (*(a1 + 8 * (v7 ^ 0x1A37u)))(&a3);
  JUMPOUT(0x10019F0CCLL);
}

uint64_t sub_10024B7C0@<X0>(uint64_t a1@<X8>)
{
  v7 = (v6 - 1684420083) & 0x64663B6F;
  v8 = v5 ^ v3 ^ v7;
  v9 = (v7 + 750429102) & 0xD34553DD;
  v10 = (v9 ^ 0x28C) + v4;
  *(*(a1 + 8) + 4 * (v2 + v4 + 1688)) = v8;
  *(a1 + 4) = v10;
  v11 = v9 + 1035 + v2 + v10;
  if (v11 < 0)
  {
    v11 = -v11;
  }

  return (*(v1 + 8 * ((5894 * (((v11 ^ 0xF75DD333) + ((2 * v11) & 0xEEBBA666) + 1844428800 + ((127 * ((v9 + 1035) ^ 0x695)) ^ (v2 + 1162))) > ((v9 + 2662) ^ 0xFFFFF30C))) ^ (v9 + 1035))))();
}

uint64_t sub_10024B954(uint64_t a1)
{
  v5 = **(v1 + 8 * (v4 ^ 0x72E));
  v7 = (*(v2 + 8 * (v4 ^ 0x14B1)))(a1, v5, 0, v3 + 4);
  v8 = (*(v2 + 8 * (v4 ^ 0x14DE)))(a1);
  return (*(v2 + 8 * (((v7 == 1187 * (v4 ^ 0x79E) - 2374) * (((v4 + 511899491) & 0xE17D07DB) - 1710)) ^ v4)))(v8);
}

uint64_t sub_10024B9EC@<X0>(int a1@<W2>, int a2@<W5>, int a3@<W7>, int a4@<W8>)
{
  *v7 = a4 - 1;
  v8 = &v7[6 * ((7 * (v4 ^ 0x614)) ^ 0x8176C34A) + 2 + 6 * a4];
  v9 = *v8;
  LODWORD(STACK[0x320]) = v8[1];
  v10 = &v7[6 * (a4 - 2122922161) + 2];
  STACK[0x448] = *(v10 + 8);
  LODWORD(STACK[0x354]) = *(v10 + 16);
  v11 = *(v6 + (v9 + a2) * a1 + 36);
  LODWORD(STACK[0x274]) = v11;
  return (*(v5 + 8 * ((117 * (v11 == a3)) ^ v4)))();
}

uint64_t sub_10024BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = a4 - 1;
  *(v6 + v10) = (-99 * v10) ^ *(v9 + 6) ^ *(a1 + v10) ^ *(v4 + v10) ^ (9 * *(v7 + v10) - 64);
  return (*(v8 + 8 * ((110 * ((((v5 + 220) ^ (v10 == 0)) & 1) == 0)) ^ v5)))();
}

void sub_10024BD74()
{
  v4 = -1221293241 * (*v0 ^ v2) - 277954398;
  v5 = (v4 ^ 0xCBE01B34) & (2 * (v4 & (v3 - 888663008))) ^ v4 & (v3 - 888663008);
  v6 = ((2 * (v4 ^ 0x59F00B34)) ^ 0x25F02122) & (v4 ^ 0x59F00B34) ^ (2 * (v4 ^ 0x59F00B34)) & 0x92F81090;
  v7 = v6 ^ 0x92081091;
  v8 = (v6 ^ 0x82680000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x4BE04244) & v7 ^ (4 * v7) & 0x92F81090;
  v10 = (v9 ^ 0x2E00000) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x90181091)) ^ 0x2F810910) & (v9 ^ 0x90181091) ^ (16 * (v9 ^ 0x90181091)) & 0x92F81090;
  v12 = v10 ^ 0x92F81091 ^ (v11 ^ 0x2800000) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x12F80000 ^ v12 ^ ((v12 << 16) ^ 0x10910000) & (((v11 ^ 0x90781081) << 8) & 0x12F80000 ^ 0x2E80000 ^ (((v11 ^ 0x90781081) << 8) ^ 0x78100000) & (v11 ^ 0x90781081))));
  *v14 = (HIBYTE(v13) ^ 0xCF) - ((2 * (HIBYTE(v13) ^ 0xCF)) & 0x9A) + 77;
  v14[1] = (BYTE2(v13) ^ 0xD8) + ~(2 * ((BYTE2(v13) ^ 0xD8) & 0xCF ^ BYTE2(v13) & 2)) + 78;
  v14[2] = (BYTE1(v13) ^ 0x3A) - ((2 * (BYTE1(v13) ^ 0x3A)) & 0x9A) + 77;
  v14[3] = v13 ^ 0xCA;
  v0[1] = *(v1 + 24);
}

uint64_t sub_10024C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = v18 + 801279979 * ((&a15 & 0xC4AFE939 | ~(&a15 | 0xC4AFE939)) ^ 0xF87E1B97) - 1765987844;
  v19 = (*(v17 + 8 * (v18 ^ 0x169A)))(&a15);
  return (*(v17 + 8 * (((a15 == v16) * (((v18 - 177608720) & 0xFBDFFFFF) + 246819243)) ^ v18)))(v19);
}

uint64_t sub_10024C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v3 | 0x608) + 1259) ^ 0xAD6)) | v3 | 0x608)))();
}

uint64_t sub_10024C338@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 4332)))();
  STACK[0x4E0] = 0;
  return v1(v3);
}

uint64_t sub_10024C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int *a15)
{
  v19 = 2144428249 * (((&a13 | 0x3EDB6697) - &a13 + (&a13 & 0xC1249968)) ^ 0x3CA2789B);
  a15 = &a9;
  a13 = (v18 + 2453) ^ v19;
  a14 = (v15 + v17 - ((v15 << (((v18 - 117) & 0xDF) - 69)) & 0xE8719A70)) ^ v19;
  v20 = (*(v16 + 8 * (v18 ^ 0x15D1)))(&a13);
  return (*(v16 + 8 * (((a9 == ((((v18 - 721103733) & 0x2AFB2DDF) - 616475591) & 0x24BEABD6 ^ (v17 - 2250))) * (((v18 - 721103733) & 0x2AFB2DDF) - 1779)) ^ (v18 - 721103733) & 0x2AFB2DDF)))(v20);
}

uint64_t sub_10024C534()
{
  *STACK[0x8A0] = v0;
  LODWORD(STACK[0x6E4]) = STACK[0x634];
  return (*(v2 + 8 * (((STACK[0x628] != 0) * (((v1 - 1147) | 0x88) + ((v1 - 892) | 0x81B) - 2265)) ^ v1)))();
}

uint64_t sub_10024C5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 + 1428);
  STACK[0x200] = a3 + 256;
  STACK[0x230] = v65 + 1432;
  if (v67 <= 0x20 && ((1 << v67) & 0x100110000) != 0)
  {
    return (*(v66 + 8 * (((*(a4 + 476) == 1) * ((a65 - 3681) ^ 0xD6B)) ^ (a65 - 3681))))(a1, a2, a61);
  }

  STACK[0x200] -= 256;
  return (STACK[0x3E0])(a1, a2, a61);
}

uint64_t sub_10024C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  a16 = v18 + ((&a15 - 977769900 - 2 * (&a15 & 0xC5B86A54)) ^ 0x6966705) * v17 - 1765987169;
  v19 = (*(v16 + 8 * (v18 ^ 0x11F9)))(&a15);
  return (*(v16 + 8 * ((505 * (a15 == ((v18 + 304) ^ 0xF438C924))) ^ v18)))(v19);
}

uint64_t sub_10024C7F0()
{
  (*(v2 + 8 * (v0 + 2941)))();
  *(v1 + 24) = 0;
  return sub_10024A754();
}

uint64_t sub_10024C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int *a22)
{
  (*(v24 + 8 * (v22 + 3132)))(*a22, v23, 2048);
  v25 = *(v24 + 8 * ((451 * ((*(v24 + 8 * (v22 + 3176)))(*a22, &STACK[0x368], LODWORD(STACK[0x220]) + ((v22 - 1548556321) ^ (v22 + 2905)), 1) != 0)) ^ v22));
  return v25();
}

uint64_t sub_10024CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  v56 = STACK[0x240] + 128;
  STACK[0x280] = v56;
  v57 = 2079641419 * ((2 * ((v55 - 200) & 0x25E7040) - (v55 - 200) - 39743558) ^ 0x13093C92);
  *(v55 - 196) = -504449540 - v57 + a53 + 50;
  *(v55 - 192) = 716720353 - v57;
  *(v55 - 184) = v56;
  (*(v53 + 8 * (a53 ^ 0x13AF)))(v55 - 200);
  STACK[0x328] = *(v53 + 8 * a53);
  return sub_1001FB16C(v54);
}

void sub_10024CBE4(uint64_t a1)
{
  v1 = *(a1 + 32) + 1186709341 * ((~a1 & 0x6AADBF01 | a1 & 0x955240FE) ^ 0x145756EC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10024CD90@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X3>, int a4@<W4>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned __int8 a39, int a40, int a41, unsigned int a42, _BYTE *a43, uint64_t a44, uint64_t a45, int a46, int a47, int a48, uint64_t a49, uint64_t a50)
{
  v57 = (((v56 - 764) ^ a5 ^ (v56 - 547411205)) & a48 | a46) ^ 0xC5D13B1F;
  v58 = a1 ^ 0x594F25CC ^ v54 & ((a4 << 24) ^ 0x70B33B69u);
  v59 = *(a8 + (a1 ^ 0xCC ^ v54 & 0x69u));
  v60 = *(a8 + ((a1 ^ 0x25CC ^ v54 & 0x3B69) >> 8));
  v61 = a2 ^ 0xE562FCB2 ^ v53 & (v52 ^ 0xE8883F8B);
  v62 = *(a8 + BYTE2(v58));
  v63 = v58 >> 24;
  v64 = *(a8 + (v51 >> 24));
  v65 = *(&off_1002ACDD0 + (v56 & 0x4A0B211B)) - 12;
  v66 = *(a8 + v63);
  v67 = *&v65[8 * (*(a8 + BYTE2(v57)) ^ a3)] * v55;
  v570 = v56;
  v68 = *&v65[8 * (*(a8 + v51) ^ a3)] * v55;
  v69 = *&v65[8 * (v59 ^ a3)] * v55;
  v70 = *&v65[8 * (*(a8 + BYTE2(v61)) ^ a3)] * v55;
  v71 = *&v65[8 * (*(a8 + BYTE1(v51)) ^ a3)] * v55;
  v72 = *&v65[8 * (v60 ^ a3)] * v55;
  v73 = *&v65[8 * (*(a8 + (v61 >> 24)) ^ a3)] * v55;
  v74 = *&v65[8 * (*(a8 + (v57 >> 24)) ^ a3)] * v55;
  v75 = *&v65[8 * (v62 ^ a3)] * v55;
  v76 = *&v65[8 * (*(a8 + v61) ^ a3)] * v55;
  LODWORD(v76) = (((v76 >> 2) & 0xB2C18E300000000 ^ v76) >> 32) ^ (((v75 >> 2) & 0x2C18E3F6000000 ^ v75) >> 24);
  v77 = *&v65[8 * (*(a8 + v57) ^ a3)] * v55;
  v78 = *&v65[8 * (*(a8 + BYTE2(v51)) ^ a3)] * v55;
  v79 = *&v65[8 * (*(a8 + BYTE1(v61)) ^ a3)];
  v80 = *&v65[8 * (*(a8 + BYTE1(v57)) ^ a3)] * v55;
  v81 = *&v65[8 * (v64 ^ a3)] * v55;
  v82 = *&v65[8 * (v66 ^ a3)] * v55;
  v83 = (((v68 >> 2) & 0xE3F60E5D00 ^ v68) >> 8) ^ (((v69 >> 2) & 0x18E3F60E0000 ^ v69) >> 16) ^ (((v70 >> 2) & 0x2C18E3F6000000 ^ v70) >> 24) ^ 0x2A59EEC5 ^ (((v67 >> 2) & 0xB2C18E300000000 ^ v67) >> 32);
  v84 = (((v72 >> 2) & 0xE3F60E5D00 ^ v72) >> 8) ^ (((v71 >> 2) & 0xB2C18E300000000 ^ v71) >> 32) ^ (((v73 >> 2) & 0x18E3F60E0000 ^ v73) >> 16) ^ 0xCF205389 ^ (((v74 >> 2) & 0x2C18E3F6000000 ^ v74) >> 24);
  v85 = v76 ^ (((v78 >> 2) & 0x18E3F60E0000 ^ v78) >> 16) ^ 0x3A2FAC2D ^ (((v77 >> 2) & 0xE3F60E5D00 ^ v77) >> 8);
  v86 = *(a8 + BYTE2(v85));
  v87 = (__ROR8__((0xC10F4B5495960000 * v79) & 0xC71FB07000000000 ^ __ROR8__((v79 * v55) ^ 0xA5CFA9480000, 45) ^ 0x55C3399800000007, 19) >> 16) ^ (((v81 >> 2) & 0xB2C18E300000000 ^ v81) >> 32) ^ (((v82 >> 2) & 0xE3F60E5D00 ^ v82) >> 8) ^ 0x1DDC9026 ^ (((v80 >> 2) & 0x2C18E3F6000000 ^ v80) >> 24);
  v88 = *(a8 + (v84 >> 24));
  v89 = *(a8 + (v85 >> 24));
  v90 = *(a8 + v85);
  v91 = *(a8 + v83);
  v92 = *(a8 + BYTE1(v83));
  v93 = *(a8 + v84);
  v94 = *(a8 + BYTE2(v83));
  v95 = *&v65[8 * (*(a8 + (v83 >> 24)) ^ a3)];
  v96 = *(a8 + BYTE1(v85));
  v97 = *(a8 + BYTE1(v84));
  v98 = *&v65[8 * (*(a8 + BYTE2(v84)) ^ a3)] * v55;
  LODWORD(v95) = (((v98 >> 2) & 0xE3F60E5D00 ^ v98) >> 8) ^ ((((v95 * v55) >> 2) & 0xB2C18E300000000 ^ (v95 * v55)) >> 32);
  v99 = *&v65[8 * (v86 ^ a3)] * v55;
  v100 = *&v65[8 * (*(a8 + BYTE2(v87)) ^ a3)] * v55;
  v101 = *&v65[8 * (v88 ^ a3)] * v55;
  v102 = (v101 >> 2) & 0x18E3F60E0000 ^ v101;
  LODWORD(v101) = v95 ^ (((v99 >> 2) & 0x18E3F60E0000 ^ v99) >> 16) ^ (((v100 >> 2) & 0x2C18E3F6000000 ^ v100) >> 24);
  v103 = *&v65[8 * (v89 ^ a3)] * v55;
  v104 = *&v65[8 * (*(a8 + (v87 >> 24)) ^ a3)] * v55;
  v105 = *&v65[8 * (v91 ^ a3)] * v55;
  v106 = *&v65[8 * (v90 ^ a3)] * v55;
  v107 = *&v65[8 * (*(a8 + v87) ^ a3)] * v55;
  v108 = *&v65[8 * (v92 ^ a3)] * v55;
  v109 = *&v65[8 * (v93 ^ a3)] * v55;
  v110 = *&v65[8 * (*(a8 + BYTE1(v87)) ^ a3)] * v55;
  v111 = *&v65[8 * (v94 ^ a3)] * v55;
  v112 = *&v65[8 * (v97 ^ a3)] * v55;
  v113 = *&v65[8 * (v96 ^ a3)] * v55;
  LODWORD(v113) = (((v111 >> 2) & 0xB2C18E300000000 ^ v111) >> 32) ^ (((v110 >> 2) & 0x2C18E3F6000000 ^ v110) >> 24) ^ (((v112 >> 2) & 0xE3F60E5D00 ^ v112) >> 8) ^ (((v113 >> 2) & 0x18E3F60E0000 ^ v113) >> 16) ^ 0xEA0B0DA1;
  v114 = v101 ^ 0xD2CFC5E5;
  v115 = (((v103 >> 2) & 0x2C18E3F6000000 ^ v103) >> 24) ^ (v102 >> 16) ^ (((v104 >> 2) & 0xB2C18E300000000 ^ v104) >> 32) ^ (((v105 >> 2) & 0xE3F60E5D00 ^ v105) >> 8) ^ 0xAD272BD2;
  v116 = ((v113 & 0x97DE3418 ^ 0x7F9322C6) & (v113 & 0x6821CBE7 ^ 0x9FDE377A) | v113 & 0x20C921) ^ 0xA698FA6D;
  v117 = (((v107 >> 2) & 0x18E3F60E0000 ^ v107) >> 16) ^ (((v106 >> 2) & 0xE3F60E5D00 ^ v106) >> 8) ^ (((v108 >> 2) & 0x2C18E3F6000000 ^ v108) >> 24) ^ (((v109 >> 2) & 0xB2C18E300000000 ^ v109) >> 32) ^ 0x6AA40D67;
  v118 = *(a8 + ((((v103 >> 2) & 0xF6000000 ^ v103) >> 24) ^ BYTE2(v102) ^ ((((v104 >> 2) & 0xB2C18E300000000 ^ v104) >> 32) ^ (((v105 >> 2) & 0x5D00 ^ v105) >> 8)) ^ 0xD2));
  v119 = *(a8 + v117);
  v120 = *(a8 + BYTE1(v117));
  v121 = *(a8 + BYTE2(v116));
  v122 = *(a8 + BYTE1(v116));
  v123 = *(a8 + BYTE2(v117));
  v124 = *(a8 + (v116 >> 24));
  v125 = *(a8 + v116);
  v126 = *(a8 + (v117 >> 24));
  v127 = *&v65[8 * (*(a8 + (v114 >> 24)) ^ a3)] * v55;
  v128 = *&v65[8 * (v118 ^ a3)] * v55;
  LODWORD(v127) = (((v128 >> 2) & 0x2C18E3F6000000 ^ v128) >> 24) ^ (((v127 >> 2) & 0x18E3F60E0000 ^ v127) >> 16);
  v129 = *&v65[8 * (v119 ^ a3)] * v55;
  LODWORD(v127) = v127 ^ (((v129 >> 2) & 0xB2C18E300000000 ^ v129) >> 32);
  v130 = *&v65[8 * (v122 ^ a3)] * v55;
  v131 = *&v65[8 * (*(a8 + BYTE1(v115)) ^ a3)] * v55;
  v132 = *&v65[8 * (v120 ^ a3)] * v55;
  v133 = *&v65[8 * (v121 ^ a3)] * v55;
  v134 = *&v65[8 * (*(a8 + (v101 ^ 0xE5u)) ^ a3)] * v55;
  v135 = *&v65[8 * (v124 ^ a3)] * v55;
  v136 = *&v65[8 * (*(a8 + BYTE1(v114)) ^ a3)] * v55;
  v137 = *&v65[8 * (*(a8 + BYTE2(v115)) ^ a3)] * v55;
  v138 = *&v65[8 * (v125 ^ a3)] * v55;
  v139 = *&v65[8 * (*(a8 + BYTE2(v114)) ^ a3)] * v55;
  v140 = *&v65[8 * (*(a8 + (v115 >> 24)) ^ a3)] * v55;
  v141 = v127 ^ 0xA463DE63 ^ (((v130 >> 2) & 0xE3F60E5D00 ^ v130) >> 8);
  v142 = (((v132 >> 2) & 0xE3F60E5D00 ^ v132) >> 8) ^ (((v131 >> 2) & 0xB2C18E300000000 ^ v131) >> 32) ^ (((v134 >> 2) & 0x2C18E3F6000000 ^ v134) >> 24) ^ 0x59E4044E ^ (((v133 >> 2) & 0x18E3F60E0000 ^ v133) >> 16);
  v143 = (((v135 >> 2) & 0xE3F60E5D00 ^ v135) >> 8) ^ ((((*&v65[8 * (v123 ^ a3)] * v55) >> 2) & 0xB2C18E300000000 ^ (*&v65[8 * (v123 ^ a3)] * v55)) >> 32) ^ (((v136 >> 2) & 0x18E3F60E0000 ^ v136) >> 16) ^ (((v137 >> 2) & 0x2C18E3F6000000 ^ v137) >> 24) ^ 0xB1F6953;
  v144 = (((v139 >> 2) & 0xB2C18E300000000 ^ v139) >> 32) ^ (((v140 >> 2) & 0xE3F60E5D00 ^ v140) >> 8) ^ ((((*&v65[8 * (v126 ^ a3)] * v55) >> 2) & 0x18E3F60E0000 ^ (*&v65[8 * (v126 ^ a3)] * v55 - ((0xC10F4B549596 * *&v65[8 * (v126 ^ a3)]) & 0x96BB326FEF68) + 0xCB5D9937F7B4)) >> 16) ^ 0xA86AC584 ^ (((v138 >> 2) & 0x2C18E3F6000000 ^ v138) >> 24);
  v145 = *(v50 + (v142 >> 24));
  v146 = *(v50 + v142);
  v147 = *(v50 + v143);
  v148 = *(v50 + v141);
  v149 = *(v50 + BYTE1(v142));
  v150 = *&v65[8 * (*(v50 + BYTE1(v141)) ^ a3)] * v55;
  v151 = *&v65[8 * (*(v50 + BYTE2(v142)) ^ a3)] * v55;
  v152 = *&v65[8 * (*(v50 + BYTE1(v143)) ^ a3)] * v55;
  v153 = *&v65[8 * (*(v50 + BYTE1(v144)) ^ a3)] * v55;
  v154 = *&v65[8 * (v145 ^ a3)] * v55;
  v155 = (((v151 >> 2) & 0x18E3F60E0000 ^ v151) >> 16) ^ (((v150 >> 2) & 0xE3F60E5D00 ^ v150) >> 8) ^ (((v152 >> 2) & 0x2C18E3F6000000 ^ v152) >> 24) ^ (((v153 >> 2) & 0xB2C18E300000000 ^ v153) >> 32);
  v156 = *&v65[8 * (*(v50 + BYTE2(v143)) ^ a3)] * v55;
  LODWORD(v156) = (((v156 >> 2) & 0xE3F60E5D00 ^ v156) >> 8) ^ (((v154 >> 2) & 0xB2C18E300000000 ^ v154) >> 32) ^ 0xB870FCAA;
  v157 = *&v65[8 * (*(v50 + BYTE2(v144)) ^ a3)] * v55;
  LODWORD(v157) = (((v157 >> 2) & 0x18E3F60E0000 ^ v157) >> 16) ^ 0xCB5D9937;
  v158 = *&v65[8 * (*(v50 + BYTE2(v141)) ^ a3)] * v55;
  LODWORD(v156) = (-v156 ^ 0xFBB1ECC3 ^ (v157 - (v156 ^ v157)) ^ (v156 - 72225597 - ((2 * v156) & 0xF763D986))) + v157;
  v159 = ((v158 >> 2) & 0x2C18E3F6000000 ^ v158) >> 24;
  v160 = *&v65[8 * (*(v50 + (v143 >> 24)) ^ a3)] * v55;
  v161 = *&v65[8 * (*(v50 + (v144 >> 24)) ^ a3)] * v55;
  v162 = *&v65[8 * (*(v50 + (v141 >> 24)) ^ a3)] * v55;
  v163 = *&v65[8 * (v146 ^ a3)] * v55;
  v164 = *&v65[8 * (*(v50 + v144) ^ a3)] * v55;
  v165 = *&v65[8 * (v148 ^ a3)] * v55;
  v166 = *&v65[8 * (v149 ^ a3)] * v55;
  v167 = *&v65[8 * (v147 ^ a3)] * v55;
  LODWORD(v167) = (((v165 >> 2) & 0x18E3F60E0000 ^ v165) >> 16) ^ (((v164 >> 2) & 0xE3F60E5D00 ^ v164) >> 8) ^ (((v166 >> 2) & 0x2C18E3F6000000 ^ v166) >> 24) ^ (((v167 >> 2) & 0xB2C18E300000000 ^ v167) >> 32);
  v168 = (((v156 ^ v159 ^ 0xE9CB5D99) - (v156 ^ v159 ^ 0xAE674432)) ^ 0xFFFFFFFE) + (v156 ^ v159 ^ 0xE9CB5D99);
  v169 = v167 ^ 0xA4D9774E;
  v170 = (((v161 >> 2) & 0x2C18E3F6000000 ^ v161) >> 24) ^ (((v160 >> 2) & 0x18E3F60E0000 ^ v160) >> 16) ^ (((v162 >> 2) & 0xB2C18E300000000 ^ v162) >> 32) ^ (((v163 >> 2) & 0xE3F60E5D00 ^ v163) >> 8) ^ 0x91E351F3;
  v171 = *(v50 + ((v155 ^ 0xD25D55E0) >> 16));
  v172 = *(v50 + (v170 >> 24));
  v173 = *(v50 + (v168 >> 24));
  v174 = *(v50 + (v169 >> 24));
  v175 = *(v50 + v170);
  v176 = *(v50 + BYTE1(v170));
  v177 = *(v50 + (v167 ^ 0x4Eu));
  v178 = *(v50 + (BYTE3(v155) ^ 0xD2));
  v179 = *(v50 + (v155 ^ 0xE0u));
  v180 = *(v50 + BYTE1(v169));
  v181 = *(v50 + ((v155 ^ 0x55E0) >> 8));
  v182 = *(v50 + BYTE2(v169));
  v183 = *(v50 + v168);
  v184 = *(v50 + BYTE2(v170));
  v185 = *&v65[8 * (v171 ^ a3)] * v55;
  v186 = (v185 >> 2) & 0x2C18E3F6000000 ^ v185;
  v187 = *(v50 + BYTE1(v168));
  v188 = *&v65[8 * (*(v50 + BYTE2(v168)) ^ a3)] * v55;
  v189 = *&v65[8 * (v172 ^ a3)] * v55;
  v190 = *&v65[8 * (v174 ^ a3)] * v55;
  v191 = *&v65[8 * (v173 ^ a3)] * v55;
  v192 = *&v65[8 * (v175 ^ a3)] * v55;
  v193 = *&v65[8 * (v177 ^ a3)] * v55;
  LODWORD(v192) = (((v192 >> 2) & 0x18E3F60E0000 ^ v192) >> 16) ^ (((v193 >> 2) & 0x2C18E3F6000000 ^ v193) >> 24);
  v194 = *&v65[8 * (v178 ^ a3)] * v55;
  v195 = *&v65[8 * (v180 ^ a3)] * v55;
  v196 = *&v65[8 * (v179 ^ a3)] * v55;
  v197 = *&v65[8 * (v183 ^ a3)] * v55;
  v198 = *&v65[8 * (v182 ^ a3)] * v55;
  v199 = *&v65[8 * (v181 ^ a3)] * v55;
  v200 = *&v65[8 * (v187 ^ a3)] * v55;
  v201 = *&v65[8 * (v184 ^ a3)] * v55;
  v202 = (((v188 >> 2) & 0xB2C18E300000000 ^ v188) >> 32) ^ (v186 >> 24) ^ (((v189 >> 2) & 0xE3F60E5D00 ^ v189) >> 8) ^ (((v190 >> 2) & 0x18E3F60E0000 ^ v190) >> 16) ^ 0x13F681B7;
  v203 = v192 ^ (((v194 >> 2) & 0xB2C18E300000000 ^ v194) >> 32) ^ 0x93FD47B6 ^ (((v191 >> 2) & 0xE3F60E5D00 ^ v191) >> 8);
  LODWORD(v201) = (((v199 >> 2) & 0x2C18E3F6000000 ^ v199) >> 24) ^ (((v198 >> 2) & 0x18E3F60E0000 ^ v198) >> 16) ^ (((v201 >> 2) & 0xE3F60E5D00 ^ v201) >> 8);
  v204 = (((v195 >> 2) & 0xB2C18E300000000 ^ v195) >> 32) ^ ((((*&v65[8 * (v176 ^ a3)] * v55) >> 2) & 0x2C18E3F6000000 ^ (*&v65[8 * (v176 ^ a3)] * v55)) >> 24) ^ (((v196 >> 2) & 0xE3F60E5D00 ^ v196) >> 8) ^ 0x7CF20709 ^ (((v197 >> 2) & 0x18E3F60E0000 ^ v197) >> 16);
  v205 = v201 ^ 0x622687A4 ^ (((v200 >> 2) & 0xB2C18E300000000 ^ v200) >> 32);
  v206 = *(v50 + (((((v195 >> 2) & 0xB2C18E300000000 ^ v195) >> 32) ^ ((((*&v65[8 * (v176 ^ a3)] * v55) >> 2) & 0xF6000000 ^ (*&v65[8 * (v176 ^ a3)] * v55)) >> 24) ^ (((v196 >> 2) & 0x5D00 ^ v196) >> 8)) ^ 9u ^ (((v197 >> 2) & 0xF60E0000 ^ v197) >> 16)));
  v207 = *(v50 + BYTE1(v202));
  v208 = *(v50 + BYTE2(v202));
  v209 = v202 >> 24;
  v210 = *&v65[8 * (*(v50 + v202) ^ a3)] * v55;
  v211 = *&v65[8 * (*(v50 + ((v192 ^ (((v194 >> 2) & 0xB2C18E300000000 ^ v194) >> 32) ^ 0x47B6 ^ (((v191 >> 2) & 0xF60E5D00 ^ v191) >> 8)) >> 8)) ^ a3)] * v55;
  LODWORD(v210) = (((v211 >> 2) & 0xB2C18E300000000 ^ v211) >> 32) ^ (((v210 >> 2) & 0x2C18E3F6000000 ^ v210) >> 24);
  v212 = *&v65[8 * (*(v50 + BYTE2(v204)) ^ a3)] * v55;
  v213 = *&v65[8 * (*(v50 + BYTE2(v205)) ^ a3)] * v55;
  v214 = *&v65[8 * (*(v50 + BYTE2(v203)) ^ a3)] * v55;
  v215 = *&v65[8 * (*(v50 + (v204 >> 24)) ^ a3)] * v55;
  v216 = *&v65[8 * (*(v50 + (v205 >> 24)) ^ a3)] * v55;
  v217 = *&v65[8 * (v207 ^ a3)] * v55;
  v218 = *&v65[8 * (v206 ^ a3)] * v55;
  v219 = *&v65[8 * (*(v50 + v205) ^ a3)] * v55;
  v220 = *&v65[8 * (v208 ^ a3)] * v55;
  v221 = *&v65[8 * (*(v50 + (v203 >> 24)) ^ a3)] * v55;
  v222 = *&v65[8 * (*(v50 + BYTE1(v205)) ^ a3)] * v55;
  v223 = *&v65[8 * (*(v50 + v209) ^ a3)] * v55;
  LODWORD(v222) = (((v223 >> 2) & 0x18E3F60E0000 ^ v223) >> 16) ^ (((v222 >> 2) & 0xE3F60E5D00 ^ v222) >> 8);
  v224 = *&v65[8 * (*(v50 + v203) ^ a3)] * v55;
  v225 = *&v65[8 * (*(v50 + BYTE1(v204)) ^ a3)] * v55;
  v226 = ((v224 >> 2) & 0x2C18E3F6000000 ^ v224) >> 24;
  v227 = (((v215 >> 2) & 0x18E3F60E0000 ^ v215) >> 16) ^ (((v214 >> 2) & 0xE3F60E5D00 ^ v214) >> 8) ^ (((v216 >> 2) & 0x2C18E3F6000000 ^ v216) >> 24) ^ (((v217 >> 2) & 0xB2C18E300000000 ^ v217) >> 32) ^ 0x8D165989;
  v228 = v210 ^ (((v212 >> 2) & 0xE3F60E5D00 ^ v212) >> 8) ^ (((v213 >> 2) & 0x18E3F60E0000 ^ v213) >> 16) ^ 0xB5C620A;
  LODWORD(v225) = v222 ^ v226 ^ (((v225 >> 2) & 0xB2C18E300000000 ^ v225) >> 32);
  v229 = (((v219 >> 2) & 0x18E3F60E0000 ^ v219) >> 16) ^ (((v218 >> 2) & 0xE3F60E5D00 ^ v218) >> 8) ^ (((v220 >> 2) & 0x2C18E3F6000000 ^ v220) >> 24) ^ (((v221 >> 2) & 0xB2C18E300000000 ^ v221) >> 32) ^ 0x69FB23C;
  v230 = *(v50 + (((((v219 >> 2) & 0xF60E0000 ^ v219) >> 16) ^ (((v218 >> 2) & 0xF60E5D00 ^ v218) >> 8) ^ (((v220 >> 2) & 0x2C18E3F6000000 ^ v220) >> 24) ^ (((v221 >> 2) & 0xB2C18E300000000 ^ v221) >> 32) ^ 0xB23C) >> 8));
  v231 = v225 ^ 0xED9BD161;
  v232 = v229 >> 24;
  v233 = *&v65[8 * (*(v50 + ((v210 ^ (((v212 >> 2) & 0x5D00 ^ v212) >> 8) ^ (((v213 >> 2) & 0xF60E0000 ^ v213) >> 16)) ^ 0xAu)) ^ a3)] * v55;
  v234 = *&v65[8 * (*(v50 + BYTE1(v227)) ^ a3)] * v55;
  v235 = *&v65[8 * (*(v50 + (((((v219 >> 2) & 0xF60E0000 ^ v219) >> 16) ^ (((v218 >> 2) & 0x5D00 ^ v218) >> 8) ^ (((v220 >> 2) & 0xF6000000 ^ v220) >> 24) ^ (((v221 >> 2) & 0xB2C18E300000000 ^ v221) >> 32)) ^ 0x3Cu)) ^ a3)] * v55;
  v236 = *&v65[8 * (*(v50 + (v231 >> 24)) ^ a3)] * v55;
  LODWORD(v236) = (((v234 >> 2) & 0x2C18E3F6000000 ^ v234) >> 24) ^ (((v233 >> 2) & 0x18E3F60E0000 ^ v233) >> 16) ^ (((v235 >> 2) & 0xB2C18E300000000 ^ v235) >> 32) ^ (((v236 >> 2) & 0xE3F60E5D00 ^ v236) >> 8);
  v237 = *&v65[8 * (*(v50 + BYTE2(v227)) ^ a3)] * v55;
  v238 = *&v65[8 * (v230 ^ a3)] * v55;
  v239 = *&v65[8 * (*(v50 + v231) ^ a3)] * v55;
  v240 = *&v65[8 * (*(v50 + BYTE1(v228)) ^ a3)] * v55;
  LODWORD(v240) = (((v238 >> 2) & 0x2C18E3F6000000 ^ v238) >> 24) ^ (((v237 >> 2) & 0x18E3F60E0000 ^ v237) >> 16) ^ (((v239 >> 2) & 0xB2C18E300000000 ^ v239) >> 32) ^ (((v240 >> 2) & 0xE3F60E5D00 ^ v240) >> 8);
  v241 = *&v65[8 * (*(v50 + BYTE2(v229)) ^ a3)] * v55;
  v242 = *&v65[8 * (*(v50 + BYTE1(v231)) ^ a3)] * v55;
  v243 = *&v65[8 * (*(v50 + BYTE2(v228)) ^ a3)] * v55;
  v244 = *&v65[8 * (*(v50 + (v227 >> 24)) ^ a3)] * v55;
  v245 = *&v65[8 * (*(v50 + BYTE2(v231)) ^ a3)] * v55;
  v246 = *&v65[8 * (*(v50 + (v228 >> 24)) ^ a3)] * v55;
  v247 = *&v65[8 * (*(v50 + v227) ^ a3)] * v55;
  v248 = *&v65[8 * (*(v50 + v232) ^ a3)] * v55;
  v249 = (((v242 >> 2) & 0x18E3F60E0000 ^ v242) >> 16) ^ (((v241 >> 2) & 0xE3F60E5D00 ^ v241) >> 8) ^ (((v243 >> 2) & 0x2C18E3F6000000 ^ v243) >> 24) ^ (((v244 >> 2) & 0xB2C18E300000000 ^ v244) >> 32) ^ 0x2AA974E8;
  v250 = v236 ^ 0x127A4CAE;
  v251 = (((v246 >> 2) & 0x2C18E3F6000000 ^ v246) >> 24) ^ (((v245 >> 2) & 0x18E3F60E0000 ^ v245) >> 16) ^ (((v247 >> 2) & 0xB2C18E300000000 ^ v247) >> 32) ^ (((v248 >> 2) & 0xE3F60E5D00 ^ v248) >> 8) ^ 0xA42F1CF3;
  v252 = *(v50 + v249);
  v253 = v240 ^ 0xD7A16E49;
  v254 = *(v50 + BYTE2(v249));
  v255 = *(v50 + BYTE1(v249));
  v256 = *(v50 + BYTE1(v253));
  v257 = *(v50 + BYTE2(v250));
  v258 = *(v50 + (v251 >> 24));
  v259 = *(v50 + BYTE2(v253));
  v260 = *(v50 + v251);
  v261 = *(v50 + (v250 >> 24));
  v262 = *(v50 + (v253 >> 24));
  v263 = *(v50 + (v249 >> 24));
  v264 = *(v50 + v250);
  LODWORD(v250) = *(v50 + BYTE1(v250)) ^ 0xF7;
  v265 = *(v50 + BYTE1(v251));
  v266 = *&v65[8 * (v250 - ((2 * v250) & 0x7A)) + 488] * v55;
  v267 = *&v65[8 * (*(v50 + (v240 ^ 0x49u)) ^ a3)] * v55;
  v268 = *&v65[8 * (v252 ^ a3)] * v55;
  v269 = *&v65[8 * (*(v50 + BYTE2(v251)) ^ a3)];
  LODWORD(v240) = (((v267 >> 2) & 0xE3F60E5D00 ^ v267) >> 8) ^ ((((v268 >> 2) & 0xB2C18E3F60E5D93) + (v268 ^ 0xE5E9CB5D9937F7B4) - 2 * ((v268 >> 2) & 0xB2C18E3F60E5D93 & (v268 ^ 0xE5E9CB5D9937F7B4))) >> 16) ^ (((v266 >> 2) & 0xB2C18E300000000 ^ v266) >> 32);
  v270 = *&v65[8 * (v256 ^ a3)] * v55;
  v271 = *&v65[8 * (v255 ^ a3)] * v55;
  v272 = *&v65[8 * (v258 ^ a3)] * v55;
  v273 = *&v65[8 * (v257 ^ a3)] * v55;
  v274 = *&v65[8 * (v260 ^ a3)] * v55;
  v275 = *&v65[8 * (v261 ^ a3)] * v55;
  v276 = *&v65[8 * (v259 ^ a3)] * v55;
  v277 = *&v65[8 * (v265 ^ a3)] * v55;
  v278 = *&v65[8 * (v264 ^ a3)] * v55;
  v279 = *&v65[8 * (v262 ^ a3)] * v55;
  v280 = *&v65[8 * (v263 ^ a3)] * v55;
  v281 = v240 ^ (((-(v269 * v55) ^ (v269 * v55 - ((0x6A7FC10F4B549596 * v269) & 0x4EF01FC1321242B8) - 0x5887F01F66F6DEA4) ^ ((((v269 * v55) >> 2) & 0xB2C18E3F60E5D93) - (((v269 * v55) >> 2) & 0xB2C18E3F60E5D93 ^ (v269 * v55))) ^ 0x780FE09909215CLL) + (((v269 * v55) >> 2) & 0xB2C18E3F60E5D93)) >> 24) ^ 0xE50951D;
  v282 = (((v271 >> 2) & 0xE3F60E5D00 ^ v271) >> 8) ^ (((v270 >> 2) & 0xB2C18E300000000 ^ v270) >> 32) ^ (((v272 >> 2) & 0x18E3F60E0000 ^ v272) >> 16) ^ (((v273 >> 2) & 0x2C18E3F6000000 ^ v273) >> 24) ^ 0x74564B9E;
  v283 = (((v274 >> 2) & 0xE3F60E5D00 ^ v274) >> 8) ^ ((((*&v65[8 * (v254 ^ a3)] * v55) >> 2) & 0xB2C18E300000000 ^ (*&v65[8 * (v254 ^ a3)] * v55)) >> 32) ^ (((v275 >> 2) & 0x18E3F60E0000 ^ v275) >> 16) ^ (((v276 >> 2) & 0x2C18E3F6000000 ^ v276) >> 24) ^ 0x1A1ACA0C;
  v284 = (((v278 >> 2) & 0xE3F60E5D00 ^ v278) >> 8) ^ (((v277 >> 2) & 0xB2C18E300000000 ^ v277) >> 32) ^ (((v279 >> 2) & 0x18E3F60E0000 ^ v279) >> 16) ^ (((v280 >> 2) & 0x2C18E3F6000000 ^ v280) >> 24) ^ 0x3FAA2D2F;
  v285 = *(v50 + v284);
  v286 = *(v50 + BYTE1(v284));
  v287 = *(v50 + (v282 >> 24));
  v288 = *(v50 + BYTE2(v283));
  v289 = *(v50 + BYTE1(v283));
  v290 = *(v50 + (v240 ^ (((-(v269 * v55) ^ (v269 * v55 - ((1263834518 * v269) & 0x321242B8) - 1727454884) ^ ((((v269 * v55) >> 2) & 0xF60E5D93) - (((v269 * v55) >> 2) & 0xF60E5D93 ^ (v269 * v55))) ^ 0x9909215C) + (((v269 * v55) >> 2) & 0xF60E5D93)) >> 24) ^ 0x1D));
  v291 = *(v50 + (v283 >> 24));
  v292 = *(v50 + (v284 >> 24));
  v293 = *(v50 + v282);
  v294 = *(v50 + BYTE1(v281));
  v295 = *(v50 + BYTE2(v284));
  v296 = *(v50 + v283);
  v297 = *(v50 + BYTE2(v281));
  v298 = *&v65[8 * (*(v50 + (v281 >> 24)) ^ a3)] * v55;
  v299 = *(v50 + BYTE1(v282));
  v300 = *&v65[8 * (*(v50 + BYTE2(v282)) ^ a3)] * v55;
  v301 = *&v65[8 * (v289 ^ a3)] * v55;
  v302 = *&v65[8 * (v285 ^ a3)] * v55;
  v303 = *&v65[8 * (v287 ^ a3)] * v55;
  v304 = *&v65[8 * (v288 ^ a3)] * v55;
  v305 = *&v65[8 * (v286 ^ a3)] * v55;
  v306 = *&v65[8 * (v290 ^ a3)] * v55;
  v307 = *&v65[8 * (v291 ^ a3)] * v55;
  v308 = *&v65[8 * (v295 ^ a3)] * v55;
  v309 = *&v65[8 * (v294 ^ a3)] * v55;
  v310 = *&v65[8 * (v293 ^ a3)] * v55;
  v311 = *&v65[8 * (v292 ^ a3)] * v55;
  LODWORD(v310) = (((v308 >> 2) & 0xE3F60E5D00 ^ v308) >> 8) ^ (((v307 >> 2) & 0xB2C18E300000000 ^ v307) >> 32) ^ (((v310 >> 2) & 0x2C18E3F6000000 ^ v310) >> 24);
  v312 = *&v65[8 * (v297 ^ a3)] * v55;
  v313 = *&v65[8 * (v299 ^ a3)] * v55;
  v314 = *&v65[8 * (v296 ^ a3)] * v55;
  v315 = (v314 >> 2) & 0x2C18E3F6000000 ^ v314;
  v316 = (((v300 >> 2) & 0xE3F60E5D00 ^ v300) >> 8) ^ (((v301 >> 2) & 0x18E3F60E0000 ^ v301) >> 16) ^ (((v302 >> 2) & 0x2C18E3F6000000 ^ v302) >> 24) ^ 0x122B6F73 ^ (((v298 >> 2) & 0xB2C18E300000000 ^ v298) >> 32);
  v317 = *(v50 + (v316 >> 24));
  v318 = (((v304 >> 2) & 0x18E3F60E0000 ^ v304) >> 16) ^ (((v303 >> 2) & 0xE3F60E5D00 ^ v303) >> 8) ^ (((v305 >> 2) & 0x2C18E3F6000000 ^ v305) >> 24) ^ 0xC5CCD8B ^ (((v306 >> 2) & 0xB2C18E300000000 ^ v306) >> 32);
  v319 = v310 ^ 0x598C7B1 ^ (((v309 >> 2) & 0x18E3F60E0000 ^ v309) >> 16);
  v320 = *(v50 + (((((v304 >> 2) & 0xF60E0000 ^ v304) >> 16) ^ (((v303 >> 2) & 0xF60E5D00 ^ v303) >> 8) ^ (((v305 >> 2) & 0x2C18E3F6000000 ^ v305) >> 24) ^ 0xCD8B ^ (((v306 >> 2) & 0xB2C18E300000000 ^ v306) >> 32)) >> 8));
  LODWORD(v311) = (((v313 >> 2) & 0x18E3F60E0000 ^ v313) >> 16) ^ (((v311 >> 2) & 0xB2C18E300000000 ^ v311) >> 32) ^ (v315 >> 24);
  v321 = *(v50 + ((v310 ^ 0xC7B1 ^ (((v309 >> 2) & 0xF60E0000 ^ v309) >> 16)) >> 8));
  v322 = v311 ^ 0xBE27B29C ^ (((((v312 >> 2) & 0xE3F60E5D00 ^ 0x9A01048175073817) & 0xE0B7033400 ^ (v312 & 0x8000000 | 0x6082D00600) | ((v312 >> 2) & 0xE3F60E5D00 ^ 0x9A01048175073817) & 0x3400C4900) ^ v312 & 0xFFF7FFFF00) >> 8);
  v323 = *(v50 + (v311 ^ 0x9Cu ^ (((((v312 >> 2) & 0x5D00 ^ 0x3817) & 0x3400 ^ 0x600 | ((v312 >> 2) & 0x5D00 ^ 0x3817) & 0x4900) ^ v312 & 0xFF00) >> 8)));
  v324 = *(v50 + v316);
  v325 = *(v50 + BYTE2(v319));
  v326 = *(v50 + BYTE2(v318));
  v327 = *(v50 + BYTE1(v316));
  v328 = *(v50 + (v319 >> 24));
  v329 = *(v50 + (v318 >> 24));
  v330 = *(v50 + BYTE2(v316));
  v331 = *(v50 + v318);
  v332 = *&v65[8 * (v317 ^ a3)];
  v333 = *(v50 + v319);
  v334 = *&v65[8 * (v320 ^ a3)] * v55;
  v335 = *&v65[8 * (v321 ^ a3)] * v55;
  v336 = *&v65[8 * (v325 ^ a3)] * v55;
  v337 = *&v65[8 * (*(v50 + BYTE1(v322)) ^ a3)] * v55;
  LODWORD(v336) = ((0x87A5AA4ACBLL * *&v65[8 * (v326 ^ a3)]) >> 10) & 0xE3F60E5D ^ ((0x10F4B549596000 * *&v65[8 * (v326 ^ a3)]) >> 21) ^ (((v336 >> 2) & 0x18E3F60E0000 ^ v336) >> 16) ^ 0x231C19BB ^ (((v337 >> 2) & 0x2C18E3F6000000 ^ v337) >> 24);
  v338 = *&v65[8 * (v328 ^ a3)] * v55;
  v339 = *&v65[8 * (*(v50 + BYTE2(v322)) ^ a3)] * v55;
  v340 = *&v65[8 * (v327 ^ a3)] * v55;
  v341 = *&v65[8 * (v329 ^ a3)] * v55;
  v342 = *&v65[8 * (*(v50 + (v322 >> 24)) ^ a3)] * v55;
  LODWORD(v341) = (((v338 >> 2) & 0xE3F60E5D00 ^ v338) >> 8) ^ (((v340 >> 2) & 0x2C18E3F6000000 ^ v340) >> 24) ^ (((v341 >> 2) & 0xB2C18E300000000 ^ v341) >> 32);
  v343 = *&v65[8 * (v330 ^ a3)] * v55;
  v344 = *&v65[8 * (v331 ^ a3)] * v55;
  LODWORD(v340) = (((v343 >> 2) & 0x18E3F60E0000 ^ v343) >> 16) ^ (((v344 >> 2) & 0x2C18E3F6000000 ^ v344) >> 24);
  v345 = *&v65[8 * (v333 ^ a3)] * v55;
  v346 = (((v334 >> 2) & 0x18E3F60E0000 ^ v334) >> 16) ^ ((((v332 * v55) >> 2) & 0xE3F60E5D00 ^ (v332 * v55)) >> 8) ^ (((v335 >> 2) & 0x2C18E3F6000000 ^ v335) >> 24) ^ 0xF45426DF ^ ((((*&v65[8 * (v323 ^ a3)] * v55) >> 2) & 0xB2C18E300000000 ^ (*&v65[8 * (v323 ^ a3)] * v55)) >> 32);
  v347 = ((((*&v65[8 * (v324 ^ a3)] * v55) >> 2) & 0xB2C18E300000000 ^ (*&v65[8 * (v324 ^ a3)] * v55)) >> 32) ^ 0x6624E053 ^ ((v336 & 0x99827E94 ^ 0x1FEFFAF0) & (v336 & 0x667D816B ^ 0xBBFE7F97) | v336 & 0x6010010B);
  v348 = (((v339 >> 2) & 0x18E3F60E0000 ^ v339) >> 16) ^ v341 ^ 0x4009DE34;
  v349 = *(v50 + ((((v339 >> 2) & 0xF60E0000 ^ v339) >> 16) ^ v341 ^ 0x34));
  v350 = v340 ^ (((v345 >> 2) & 0xB2C18E300000000 ^ v345) >> 32) ^ 0xED3A0742 ^ (((v342 >> 2) & 0xE3F60E5D00 ^ v342) >> 8);
  v351 = *(v50 + (((((v339 >> 2) & 0xF60E0000 ^ v339) >> 16) ^ v341 ^ 0xDE34) >> 8));
  v352 = *(v50 + BYTE2(v347));
  v353 = *(v50 + (((((*&v65[8 * (v324 ^ a3)] * v55) >> 2) & 0xB2C18E300000000 ^ (*&v65[8 * (v324 ^ a3)] * v55)) >> 32) ^ 0x53 ^ ((v336 & 0x94 ^ 0xF0) & (v336 & 0x6B ^ 0x97) | v336 & 0xB)));
  v354 = *(v50 + (v347 >> 24));
  v355 = *&v65[8 * (*(v50 + BYTE2(v346)) ^ a3)] * v55;
  v356 = *&v65[8 * (*(v50 + BYTE1(v347)) ^ a3)] * v55;
  v357 = (v356 >> 2) & 0xB2C18E300000000 ^ v356;
  v358 = ((v355 >> 2) & 0x2C18E3F6000000 ^ v355) >> 24;
  v359 = HIDWORD(v357);
  v360 = *&v65[8 * (v349 ^ a3)] * v55;
  v361 = *&v65[8 * (*(v50 + (v350 >> 24)) ^ a3)] * v55;
  LODWORD(v361) = v358 ^ (((v360 >> 2) & 0xE3F60E5D00 ^ v360) >> 8) ^ (((v361 >> 2) & 0x18E3F60E0000 ^ v361) >> 16);
  v362 = *&v65[8 * (v352 ^ a3)] * v55;
  v363 = *&v65[8 * (v351 ^ a3)] * v55;
  v364 = *&v65[8 * ((*(v50 + v350) ^ 0xF7) - ((2 * (*(v50 + v350) ^ 0xF7)) & 0x7A)) + 488] * v55;
  v365 = *&v65[8 * (*(v50 + (v346 >> 24)) ^ a3)] * v55;
  v366 = *&v65[8 * (*(v50 + BYTE2(v348)) ^ a3)] * v55;
  v367 = *&v65[8 * (*(v50 + BYTE1(v350)) ^ a3)] * v55;
  v368 = *&v65[8 * (*(v50 + v346) ^ a3)] * v55;
  v369 = *&v65[8 * (v354 ^ a3)] * v55;
  v370 = *&v65[8 * (*(v50 + BYTE2(v350)) ^ a3)] * v55;
  v371 = *&v65[8 * (*(v50 + BYTE1(v346)) ^ a3)] * v55;
  v372 = *&v65[8 * (v353 ^ a3)] * v55;
  v373 = *&v65[8 * (*(v50 + (v348 >> 24)) ^ a3)] * v55;
  v374 = v359 ^ v361 ^ 0x164C2D29;
  v375 = (((v363 >> 2) & 0xE3F60E5D00 ^ v363) >> 8) ^ (((v364 >> 2) & 0x18E3F60E0000 ^ v364) >> 16) ^ (((v362 >> 2) & 0xB2C18E300000000 ^ v362) >> 32) ^ (((v365 >> 2) & 0x2C18E3F6000000 ^ v365) >> 24) ^ 0xEE56CD96;
  LODWORD(v373) = (((v371 >> 2) & 0xE3F60E5D00 ^ v371) >> 8) ^ (((v370 >> 2) & 0xB2C18E300000000 ^ v370) >> 32) ^ (((v373 >> 2) & 0x2C18E3F6000000 ^ v373) >> 24);
  v376 = v373 ^ 0xD73A01C9 ^ (((v372 >> 2) & 0x18E3F60E0000 ^ v372) >> 16);
  v377 = *(v50 + (v375 >> 24));
  v378 = (((v367 >> 2) & 0xE3F60E5D00 ^ v367) >> 8) ^ (((v366 >> 2) & 0xB2C18E300000000 ^ v366) >> 32) ^ (((v368 >> 2) & 0x18E3F60E0000 ^ v368) >> 16) ^ 0x1A59262A ^ (((v369 >> 2) & 0x2C18E3F6000000 ^ v369) >> 24);
  v379 = *(v50 + ((v373 ^ 0x1C9 ^ (((v372 >> 2) & 0xF60E0000 ^ v372) >> 16)) >> 8));
  v380 = *(v50 + (v373 ^ 0xC9u ^ (((v372 >> 2) & 0xF60E0000 ^ v372) >> 16)));
  v381 = *(v50 + v375);
  v382 = *(v50 + BYTE1(v375));
  v383 = *(v50 + (v376 >> 24));
  v384 = *&v65[8 * (*(v50 + v374) ^ a3)] * v55;
  LOBYTE(v376) = (v384 >> 2) & 0x10;
  v385 = (v384 ^ 0xE5E9CB5D9937F7B4 ^ (v384 >> 2) & 0xB2C18E3F60E5D93) >> v376;
  v386 = *&v65[8 * (*(v50 + BYTE2(v375)) ^ a3)] * v55;
  v387 = *&v65[8 * (v380 ^ a3)] * v55;
  v388 = *&v65[8 * (*(v50 + BYTE2(v378)) ^ a3)] * v55;
  v389 = *&v65[8 * (v379 ^ a3)] * v55;
  v390 = *&v65[8 * (*(v50 + BYTE1(v374)) ^ a3)] * v55;
  v391 = *&v65[8 * (*(v50 + (v378 >> 24)) ^ a3)] * v55;
  v392 = *&v65[8 * (*(v50 + BYTE2(v376)) ^ a3)] * v55;
  v393 = *&v65[8 * (*(v50 + BYTE2(v374)) ^ a3)] * v55;
  v394 = *&v65[8 * (v381 ^ a3)] * v55;
  v395 = *&v65[8 * (v383 ^ a3)] * v55;
  v396 = *&v65[8 * (*(v50 + (v374 >> 24)) ^ a3)] * v55;
  v397 = *&v65[8 * (v382 ^ a3)] * v55;
  v398 = (((v396 >> 2) & 0x2C18E3F6000000 ^ v396) >> 24) ^ (((v395 >> 2) & 0x18E3F60E0000 ^ v395) >> 16) ^ (((v397 >> 2) & 0xB2C18E300000000 ^ v397) >> 32);
  v399 = *&v65[8 * (*(v50 + v378) ^ a3)] * v55;
  v400 = (((v387 >> 2) & 0xE3F60E5D00 ^ v387) >> 8) ^ ((((*&v65[8 * (*(v50 + BYTE1(v378)) ^ a3)] * v55) >> 2) & 0xB2C18E300000000 ^ (*&v65[8 * (*(v50 + BYTE1(v378)) ^ a3)] * v55)) >> 32) ^ ((((v386 >> 2) & 0x2C18E3F6000000 ^ v386) >> 24) - ((((v386 >> 2) & 0x2C18E3F6000000 ^ v386) >> 23) & 0x48CE1342) - 1536751199) ^ (((v385 + 0x50B75E1F57B41AFCLL - ((2 * v385) & 0xA16EBC3EAF6835F8)) ^ 0x50B75E1F57B41AFCLL) >> (v376 ^ 0x10u)) ^ 0xC62F0F7D;
  v401 = (((v388 >> 2) & 0x18E3F60E0000 ^ v388) >> 16) ^ (((v389 >> 2) & 0x2C18E3F6000000 ^ v389) >> 24) ^ ((((*&v65[8 * (v377 ^ a3)] * v55) >> 2) & 0xE3F60E5D00 ^ (*&v65[8 * (v377 ^ a3)] * v55)) >> 8) ^ (((v390 >> 2) & 0xB2C18E300000000 ^ v390) >> 32) ^ 0xF2070DB8;
  v402 = v398 ^ (((v399 >> 2) & 0xE3F60E5D00 ^ v399) >> 8);
  v403 = *(v50 + (((((v388 >> 2) & 0xF60E0000 ^ v388) >> 16) ^ (((v389 >> 2) & 0x2C18E3F6000000 ^ v389) >> 24) ^ ((((*&v65[8 * (v377 ^ a3)] * v55) >> 2) & 0xF60E5D00 ^ (*&v65[8 * (v377 ^ a3)] * v55)) >> 8) ^ (((v390 >> 2) & 0xB2C18E300000000 ^ v390) >> 32) ^ 0xDB8) >> 8));
  v404 = *(v50 + BYTE2(v401));
  v405 = (((v392 >> 2) & 0x2C18E3F6000000 ^ v392) >> 24) ^ (((v391 >> 2) & 0x18E3F60E0000 ^ v391) >> 16) ^ (((v393 >> 2) & 0xB2C18E300000000 ^ v393) >> 32) ^ (((v394 >> 2) & 0xE3F60E5D00 ^ v394) >> 8) ^ 0x3386EEF2;
  v406 = *(v50 + (v405 >> 24));
  v407 = *(v50 + v405);
  v408 = *(v50 + (BYTE3(v402) ^ 0x76));
  v409 = *(v50 + ((v402 ^ 0x76F2F7D4) >> 16));
  v410 = *(v50 + (v402 ^ 0xD4u));
  v411 = *(v50 + BYTE1(v405));
  v412 = *(v50 + (v400 >> 24));
  v413 = *(v50 + BYTE2(v400));
  v414 = *(v50 + (v401 >> 24));
  v415 = *(v50 + ((v402 ^ 0xF7D4) >> 8));
  v416 = *(v50 + v401);
  v417 = *(v50 + v400);
  v418 = *(v50 + BYTE2(v405));
  v419 = *&v65[8 * (*(v50 + BYTE1(v400)) ^ a3)] * v55;
  v420 = *&v65[8 * (v403 ^ a3)] * v55;
  v421 = *&v65[8 * (v406 ^ a3)] * v55;
  v422 = *&v65[8 * (v409 ^ a3)] * v55;
  v423 = *&v65[8 * (v404 ^ a3)] * v55;
  v424 = *&v65[8 * (v407 ^ a3)] * v55;
  v425 = *&v65[8 * (v408 ^ a3)] * v55;
  LODWORD(v423) = (((v424 >> 2) & 0x18E3F60E0000 ^ v424) >> 16) ^ (((v423 >> 2) & 0xE3F60E5D00 ^ v423) >> 8);
  v426 = *&v65[8 * (v413 ^ a3)] * v55;
  v427 = *&v65[8 * (v411 ^ a3)] * v55;
  v428 = *&v65[8 * (v410 ^ a3)] * v55;
  v429 = *&v65[8 * (v412 ^ a3)] * v55;
  v430 = *&v65[8 * (v414 ^ a3)] * v55;
  v431 = *&v65[8 * (v415 ^ a3)] * v55;
  v432 = *&v65[8 * (v417 ^ a3)] * v55;
  v433 = *&v65[8 * (v416 ^ a3)] * v55;
  LODWORD(v432) = (((v432 >> 2) & 0xE3F60E5D00 ^ v432) >> 8) ^ (((v431 >> 2) & 0xB2C18E300000000 ^ v431) >> 32) ^ 0xB870FCAA;
  LODWORD(v433) = (((v433 >> 2) & 0x18E3F60E0000 ^ v433) >> 16) ^ 0xCB5D9937;
  v434 = *&v65[8 * (v418 ^ a3)] * v55;
  LODWORD(v433) = (v432 ^ -v432 ^ (v433 - (v432 ^ v433))) + v433;
  v435 = (((v420 >> 2) & 0x2C18E3F6000000 ^ v420) >> 24) ^ (((v421 >> 2) & 0xB2C18E300000000 ^ v421) >> 32) ^ (((v419 >> 2) & 0x18E3F60E0000 ^ v419) >> 16) ^ (((v422 >> 2) & 0xE3F60E5D00 ^ v422) >> 8) ^ 0x5A1DE20B;
  v436 = *(a8 + (((((v420 >> 2) & 0x2C18E3F6000000 ^ v420) >> 24) ^ (((v421 >> 2) & 0xB2C18E300000000 ^ v421) >> 32) ^ (((v419 >> 2) & 0xF60E0000 ^ v419) >> 16) ^ (((v422 >> 2) & 0xF60E5D00 ^ v422) >> 8) ^ 0xE20B) >> 8));
  v437 = v423 ^ (((v425 >> 2) & 0x2C18E3F6000000 ^ v425) >> 24) ^ 0xB2263765 ^ (((v426 >> 2) & 0xB2C18E300000000 ^ v426) >> 32);
  v438 = (((v428 >> 2) & 0xB2C18E300000000 ^ v428) >> 32) ^ (((v427 >> 2) & 0x2C18E3F6000000 ^ v427) >> 24) ^ (((v429 >> 2) & 0xE3F60E5D00 ^ v429) >> 8) ^ (((v430 >> 2) & 0x18E3F60E0000 ^ v430) >> 16) ^ 0xE5D4F95D;
  v439 = *(a8 + (v438 >> 24));
  v440 = (((v434 >> 2) & 0x2C18E3F6000000 ^ v434) >> 24) ^ 0x72A9D659 ^ v433;
  v441 = *(a8 + BYTE2(v438));
  v442 = *(a8 + BYTE2(v437));
  v443 = *(a8 + BYTE1(v440));
  v444 = *(a8 + v440);
  v445 = *(a8 + BYTE2(v440));
  v446 = *(a8 + v438);
  v447 = *(a8 + (v440 >> 24));
  v448 = *(a8 + (v437 >> 24));
  v449 = *(a8 + v437);
  v450 = *(a8 + BYTE1(v438));
  v451 = *&v65[8 * (v436 ^ a3)] * v55;
  v452 = *&v65[8 * (*(a8 + BYTE1(v437)) ^ a3)] * v55;
  v453 = *&v65[8 * (v441 ^ a3)] * v55;
  LODWORD(v451) = (((v452 >> 2) & 0x2C18E3F6000000 ^ v452) >> 24) ^ (((v451 >> 2) & 0x18E3F60E0000 ^ v451) >> 16);
  v454 = *&v65[8 * (v444 ^ a3)] * v55;
  v455 = *&v65[8 * (v442 ^ a3)] * v55;
  v456 = *&v65[8 * (v439 ^ a3)] * v55;
  v457 = *&v65[8 * (v443 ^ a3)] * v55;
  LODWORD(v455) = (((v456 >> 2) & 0xE3F60E5D00 ^ v456) >> 8) ^ (((v455 >> 2) & 0xB2C18E300000000 ^ v455) >> 32);
  v458 = (v457 >> 2) & 0x18E3F60E0000 ^ v457;
  v459 = *&v65[8 * (*(a8 + BYTE2(v435)) ^ a3)] * v55;
  v460 = *&v65[8 * (v446 ^ a3)] * v55;
  v461 = *&v65[8 * (v445 ^ a3)] * v55;
  v462 = *&v65[8 * (*(a8 + (v435 >> 24)) ^ a3)] * v55;
  v463 = *&v65[8 * (v448 ^ a3)] * v55;
  v464 = *&v65[8 * (v447 ^ a3)] * v55;
  v465 = *&v65[8 * (*(a8 + v435) ^ a3)] * v55;
  v466 = *&v65[8 * (v449 ^ a3)] * v55;
  LODWORD(v465) = (((v465 >> 2) & 0xB2C18E300000000 ^ v465) >> 32) ^ (((v466 >> 2) & 0xE3F60E5D00 ^ v466) >> 8);
  v467 = *&v65[8 * (v450 ^ a3)] * v55;
  v468 = v451 ^ (((v453 >> 2) & 0xB2C18E300000000 ^ v453) >> 32) ^ 0x4CC51D37 ^ (((v454 >> 2) & 0xE3F60E5D00 ^ v454) >> 8);
  v469 = v455 ^ (((v459 >> 2) & 0x2C18E3F6000000 ^ v459) >> 24) ^ 0x3DC29ED7 ^ (v458 >> 16);
  LODWORD(v453) = *(a8 + BYTE1(v468));
  v470 = (((v461 >> 2) & 0xB2C18E300000000 ^ v461) >> 32) ^ (((v460 >> 2) & 0x2C18E3F6000000 ^ v460) >> 24) ^ (((v462 >> 2) & 0xE3F60E5D00 ^ v462) >> 8) ^ (((v463 >> 2) & 0x18E3F60E0000 ^ v463) >> 16) ^ 0x693CF0A2;
  v471 = *(a8 + BYTE2(v469));
  v472 = *(a8 + BYTE2(v470));
  v473 = v465 ^ (((v467 >> 2) & 0x18E3F60E0000 ^ v467) >> 16) ^ 0xCB982B1F ^ (((v464 >> 2) & 0x2C18E3F6000000 ^ v464) >> 24);
  v474 = *(a8 + BYTE2(v473));
  v475 = *(a8 + (v470 >> 24));
  v476 = *(a8 + (v469 >> 24));
  v477 = *(a8 + BYTE1(v473));
  v478 = *(a8 + BYTE2(v468));
  v479 = *(a8 + (v468 >> 24));
  v480 = *(a8 + (v473 >> 24));
  v481 = *(a8 + BYTE1(v470));
  v482 = *(a8 + v470);
  v483 = *(a8 + v469);
  v484 = *(a8 + v468);
  v485 = *(a8 + v473);
  v486 = *(a8 + BYTE1(v469));
  v487 = *&v65[8 * ((((v453 - (v453 ^ 0xF7)) ^ 0xFFFFFFFE) + v453) ^ 0x3D)] * v55;
  v488 = *&v65[8 * (v471 ^ a3)] * v55;
  v489 = *&v65[8 * (v472 ^ a3)] * v55;
  v490 = *&v65[8 * (v477 ^ a3)] * v55;
  LODWORD(v488) = (((v488 >> 2) & 0x2C18E3F6000000 ^ v488) >> 24) ^ (((v489 >> 2) & 0xB2C18E300000000 ^ v489) >> 32);
  v491 = (v490 >> 2) & 0xE3F60E5D00 ^ v490;
  v492 = *&v65[8 * (v476 ^ a3)] * v55;
  v493 = *&v65[8 * (v475 ^ a3)] * v55;
  v494 = *&v65[8 * (v474 ^ a3)] * v55;
  v495 = *&v65[8 * (v478 ^ a3)] * v55;
  v496 = *&v65[8 * (v482 ^ a3)] * v55;
  v497 = *&v65[8 * (v480 ^ a3)] * v55;
  v498 = *&v65[8 * (v479 ^ a3)] * v55;
  v499 = *&v65[8 * (v483 ^ a3)] * v55;
  LODWORD(v498) = (((v497 >> 2) & 0xE3F60E5D00 ^ v497) >> 8) ^ (((v496 >> 2) & 0xB2C18E300000000 ^ v496) >> 32) ^ (((v498 >> 2) & 0x18E3F60E0000 ^ v498) >> 16) ^ (((v499 >> 2) & 0x2C18E3F6000000 ^ v499) >> 24);
  v500 = *&v65[8 * (v485 ^ a3)] * v55;
  v501 = *&v65[8 * (v484 ^ a3)] * v55;
  v502 = *&v65[8 * (v486 ^ a3)] * v55;
  v503 = *&v65[8 * (v481 ^ a3)] * v55;
  v504 = v488 ^ (v491 >> 8) ^ 0x8CECC7E4 ^ (((v487 >> 2) & 0x18E3F60E0000 ^ v487) >> 16);
  v505 = v498 ^ 0x114EF36B;
  LODWORD(v503) = (((v501 >> 2) & 0x18E3F60E0000 ^ v501) >> 16) ^ (((v500 >> 2) & 0xE3F60E5D00 ^ v500) >> 8) ^ (((v502 >> 2) & 0x2C18E3F6000000 ^ v502) >> 24) ^ (((v503 >> 2) & 0xB2C18E300000000 ^ v503) >> 32);
  LODWORD(v501) = *(a8 + ((v488 ^ (v491 >> 8) ^ 0xC7E4 ^ (((v487 >> 2) & 0xF60E0000 ^ v487) >> 16)) >> 8));
  v506 = (((v493 >> 2) & 0xB2C18E300000000 ^ v493) >> 32) ^ (((v492 >> 2) & 0x2C18E3F6000000 ^ v492) >> 24) ^ (((v494 >> 2) & 0xE3F60E5D00 ^ v494) >> 8) ^ (((v495 >> 2) & 0x18E3F60E0000 ^ v495) >> 16) ^ 0x35D878BF;
  LODWORD(v500) = *(a8 + BYTE2(v505));
  v507 = v503 ^ 0xFE328B97;
  LODWORD(v499) = *(a8 + (((((v493 >> 2) & 0xB2C18E300000000 ^ v493) >> 32) ^ (((v492 >> 2) & 0xF6000000 ^ v492) >> 24) ^ (((v494 >> 2) & 0x5D00 ^ v494) >> 8) ^ (((v495 >> 2) & 0xF60E0000 ^ v495) >> 16)) ^ 0xBFu));
  v508 = BYTE2(v504);
  LODWORD(v493) = *(a8 + (v504 >> 24));
  LODWORD(v477) = *(a8 + v504);
  LODWORD(v504) = v501 | (*(a8 + (v506 >> 24)) << 24) | (*(a8 + BYTE1(v505)) << 16) | (*(a8 + (v507 >> 24)) << 8);
  LODWORD(v65) = *(a8 + v507) | (*(a8 + v508) << 24);
  LODWORD(v501) = (*(a8 + (v505 >> 24)) << 24) | (*(a8 + BYTE1(v507)) << 16) | (v493 << 8) | *(a8 + BYTE1(v506));
  LODWORD(v506) = (v477 << 16) | (*(a8 + BYTE2(v506)) << 8) | (*(a8 + BYTE2(v507)) << 24) | *(a8 + v505);
  LOBYTE(v505) = 8 * (a43 & 7);
  v509 = (__ROR8__(a43, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x22355D33A04CA130;
  v510 = v509 ^ 0x7E6BC6B28AC49CE2;
  v509 ^= 0x903ED0D0775E6A64;
  v511 = (v509 + (v510 >> 8) + (v510 << 56)) ^ 0x698E307F1C800D9CLL;
  v512 = v511 ^ __ROR8__(v509, 61);
  v513 = (v512 + __ROR8__(v511, 8)) ^ 0xB558837DE3CADE64;
  v514 = v513 ^ __ROR8__(v512, 61);
  v515 = (__ROR8__(v513, 8) + v514) ^ 0x9795B79176845A31;
  v516 = v515 ^ __ROR8__(v514, 61);
  v517 = __ROR8__(v515, 8) + v516;
  v518 = __ROR8__(v516, 61);
  *(&v519 + 1) = v517 ^ v518 ^ 0x177EB5B640CFFD55;
  *&v519 = v517 ^ v518;
  v520 = (__ROR8__(v517 ^ 0x177EB5B640CFFD55, 8) + *(&v519 + 1)) ^ 0x4ADF250D78BB002DLL;
  v521 = v520 ^ (v519 >> 61);
  v522 = (__ROR8__(v520, 8) + v521) ^ 0x862967FDFDE1C478;
  v523 = (((v522 ^ __ROR8__(v521, 61)) + __ROR8__(v522, 8)) ^ 0xA9B107A27B17DDFFLL) >> v505;
  v524 = ((a43 + 8) >> 8) - 0x22355D33A04CA130 + ((a43 + 8) >> 3 << 59);
  *&v519 = __ROR8__(v524 ^ 0x7E6BC6B28AC49CE2, 8);
  v524 ^= 0x903ED0D0775E6A64;
  v525 = (v519 + v524) ^ 0x698E307F1C800D9CLL;
  v526 = v525 ^ __ROR8__(v524, 61);
  v527 = (v526 + __ROR8__(v525, 8)) ^ 0xB558837DE3CADE64;
  v528 = v527 ^ __ROR8__(v526, 61);
  v529 = (__ROR8__(v527, 8) + v528) ^ 0x9795B79176845A31;
  v530 = v529 ^ __ROR8__(v528, 61);
  v531 = v530 + __ROR8__(v529, 8);
  v532 = v531 ^ __ROR8__(v530, 61);
  v533 = ((v532 ^ 0x177EB5B640CFFD55) + __ROR8__(v531 ^ 0x177EB5B640CFFD55, 8)) ^ 0x4ADF250D78BB002DLL;
  *(&v519 + 1) = v532 ^ 0x177EB5B640CFFD55;
  *&v519 = v532;
  v534 = v533 ^ (v519 >> 61);
  v535 = (__ROR8__(v533, 8) + v534) ^ 0x862967FDFDE1C478;
  v536 = (__ROR8__(v535, 8) + (v535 ^ __ROR8__(v534, 61))) ^ 0xA9B107A27B17DDFFLL;
  v537 = v536 >> v505;
  LOBYTE(v505) = v505 ^ 0x3C;
  v538 = (__ROR8__(a43 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x22355D33A04CA130;
  v539 = v538 ^ 0x7E6BC6B28AC49CE2;
  v538 ^= 0x903ED0D0775E6A64;
  v540 = (__ROR8__(v539, 8) + v538) ^ 0x698E307F1C800D9CLL;
  v541 = v540 ^ __ROR8__(v538, 61);
  v542 = (__ROR8__(v540, 8) + v541) ^ 0xB558837DE3CADE64;
  v543 = v542 ^ __ROR8__(v541, 61);
  v544 = (v543 + __ROR8__(v542, 8)) ^ 0x9795B79176845A31;
  v545 = v544 ^ __ROR8__(v543, 61);
  v546 = (v545 + __ROR8__(v544, 8)) ^ 0x177EB5B640CFFD55;
  v547 = v546 ^ __ROR8__(v545, 61);
  v548 = (__ROR8__(v546, 8) + v547) ^ 0x4ADF250D78BB002DLL;
  v549 = v523 + 16 * (v536 << v505);
  v550 = v548 ^ __ROR8__(v547, 61);
  v551 = __ROR8__(v548, 8) + v550;
  v552 = v537 + 16 * (((__ROR8__(v551 ^ 0x862967FDFDE1C478, 8) + (v551 ^ __ROR8__(v550, 61) ^ 0x62967FDFDE1C478)) ^ 0x9B107A27B17DDFFLL) << v505);
  v569 = v523;
  v566 = v549 >> 16;
  v567 = v549 >> 8;
  v565 = v549 >> 24;
  v562 = HIDWORD(v549);
  v563 = HIWORD(v549);
  v568 = v549 >> 40;
  v564 = HIBYTE(v549);
  LODWORD(v477) = v504 ^ 0x8892B563;
  LODWORD(v488) = (v65 & 0xFFFF7FFF | ((v500 & 0x7F) << 8) & 0x7FFF | (v499 << 16) | (((v500 >> 7) & 1) << 15)) ^ 0xF4CACB06;
  v553 = *(&off_1002ACDD0 + v570 - 2935);
  LODWORD(v500) = *(v553 + (v504 ^ 0x63 ^ (*(a49 + ((v523 ^ a39) ^ 0x81u)) - 79) ^ 0xE2u));
  LODWORD(v499) = (v500 >> 4) | (16 * v500);
  LODWORD(v504) = (v500 >> 1) & 0x48;
  LODWORD(v65) = *(v553 + (((*(a49 + (BYTE1(v549) ^ a39 ^ 0x6Cu)) - 79) ^ BYTE3(v477)) ^ 0xE2u));
  LODWORD(v492) = *(v553 + (((*(a49 + (BYTE2(v549) ^ a39 ^ 0xF5u)) - 79) ^ BYTE2(v477)) ^ 0xE2u));
  LOBYTE(v496) = v488 ^ (*(a49 + (BYTE6(v549) ^ a39 ^ 0x45u)) - 79) ^ 0xE2;
  LODWORD(v444) = *(v553 + (((*(a49 + ((BYTE3(v549) ^ a39) ^ 0xEFu)) - 79) ^ BYTE1(v477)) ^ 0xE2u));
  v554 = ((v65 >> 4) | (16 * v65)) ^ (v65 >> 1) & 0x48;
  LOBYTE(v504) = v499 ^ v504;
  LODWORD(v499) = *(v553 + (((*(a49 + (BYTE4(v549) ^ a39 ^ 0xB5u)) - 79) ^ BYTE2(v488)) ^ 0xE2u));
  v555 = *(v553 + (((*(a49 + ((BYTE5(v549) ^ a39) ^ 0x66u)) - 79) ^ BYTE1(v488)) ^ 0xE2u));
  LODWORD(v65) = ((v492 >> 4) | (16 * v492)) ^ (v492 >> 1) & 0x48;
  LODWORD(v492) = ((v444 >> 4) | (16 * v444)) ^ (v444 >> 1) & 0x48;
  LODWORD(v549) = *(v553 + (((*(a49 + (HIBYTE(v549) ^ a39 ^ 0x2Au)) - 79) ^ BYTE3(v488)) ^ 0xE2u));
  LODWORD(v444) = ((*(v553 + v496) >> 4) | (16 * *(v553 + v496))) ^ (*(v553 + v496) >> 1) & 0x48;
  LODWORD(v523) = ((v499 >> 4) | (16 * v499)) ^ (v499 >> 1) & 0x48;
  LODWORD(v501) = v501 ^ 0x72D5B5C3;
  v556 = ((v549 >> 4) | (16 * v549)) ^ (v549 >> 1) & 0x48;
  LODWORD(v499) = *(v553 + (((*(a49 + (BYTE2(v552) ^ a39 ^ 0xD8u)) - 79) ^ BYTE1(v501)) ^ 0xE2u));
  LODWORD(v488) = ((v499 >> 4) | (16 * v499)) ^ (v499 >> 1) & 0x48;
  LODWORD(v499) = *(v553 + (((*(a49 + (v537 ^ a39 ^ 0x52)) - 79) ^ BYTE3(v501)) ^ 0xE2u));
  LODWORD(v493) = ((v499 >> 4) | (16 * v499)) ^ (v499 >> 1) & 0x48;
  LOBYTE(v550) = v501 ^ (*(a49 + (BYTE3(v552) ^ a39 ^ 0x91u)) - 79) ^ 0xE2;
  LODWORD(v501) = *(v553 + (((*(a49 + (BYTE1(v552) ^ a39 ^ 0x6Du)) - 79) ^ BYTE2(v501)) ^ 0xE2u));
  v557 = ((v501 >> 4) | (16 * v501)) ^ (v501 >> 1) & 0x48;
  v558 = ((*(v553 + v550) >> 4) | (16 * *(v553 + v550))) ^ (*(v553 + v550) >> 1) & 0x48;
  LODWORD(v506) = v506 ^ 0x3C4E1335;
  LODWORD(v496) = *(v553 + (((*(a49 + (BYTE4(v552) ^ a39 ^ 0x15u)) - 79) ^ BYTE3(v506)) ^ 0xE2u));
  LODWORD(v501) = *(v553 + (((*(a49 + (BYTE5(v552) ^ a39 ^ 5u)) - 79) ^ BYTE2(v506)) ^ 0xE2u));
  LODWORD(v550) = *(v553 + (v506 ^ (*(a49 + ((HIBYTE(v552) ^ a39) ^ 0xFu)) - 79) ^ 0xE2));
  LODWORD(v553) = *(v553 + (((*(a49 + (BYTE6(v552) ^ a39 ^ 0x92u)) - 79) ^ BYTE1(v506)) ^ 0xE2u));
  v559 = ((v553 >> 4) | (16 * v553)) ^ (v553 >> 1) & 0x48;
  *a43 = v504 ^ 1;
  a43[1] = v554 ^ 1;
  a43[2] = v65 ^ 1;
  a43[3] = v492 ^ 1;
  a43[5] = ((v555 >> 4) | (16 * v555)) ^ (v555 >> 1) & 0x48 ^ 1;
  a43[4] = v523 ^ 1;
  a43[6] = v444 ^ 1;
  a43[7] = v556 ^ 1;
  a43[10] = v488 ^ 1;
  a43[8] = v493 ^ 1;
  a43[9] = v557 ^ 1;
  a43[11] = v558 ^ 1;
  a43[13] = ((v501 >> 4) | (16 * v501)) ^ (v501 >> 1) & 0x48 ^ 1;
  a43[12] = ((v496 >> 4) | (16 * v496)) ^ (v496 >> 1) & 0x48 ^ 1;
  a43[15] = ((v550 >> 4) | (16 * v550)) ^ (v550 >> 1) & 0x48 ^ 1;
  a43[14] = v559 ^ 1;
  if (HIDWORD(a7) < 0xF35692F3 != a42 - 212430077 < 0xF35692F3)
  {
    v560 = HIDWORD(a7) < 0xF35692F3;
  }

  else
  {
    v560 = a42 - 212430077 < HIDWORD(a7);
  }

  return (*(a50 + 8 * (v570 ^ (1978 * v560))))(v556, v554 ^ 1, v557 ^ 1u, a3, ((v555 >> 4) | (16 * v555)) ^ (v555 >> 1) & 0x48 ^ 1, a42, v559 ^ 1u, a50, a6, a7, a8, a9, HIWORD(v552), HIBYTE(v552), v552 >> 8, v552 >> 40, HIDWORD(v552), v552 >> 16, v552 >> 24, v562, v563, v564, v565, v566, v567, v568, v537, v569, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

void sub_10024FDBC(uint64_t a1)
{
  v1 = *(a1 + 8) + 1462950173 * ((((2 * a1) | 0x8B324E50) - a1 + 979818712) ^ 0xCFE0AC8F);
  v2 = *(a1 + 24);
  if (*(v2 + 4) - 1699582771 >= 0)
  {
    v3 = *(v2 + 4) - 1699582771;
  }

  else
  {
    v3 = 1699582771 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1699582771 >= 0)
  {
    v4 = *(*a1 + 4) - 1699582771;
  }

  else
  {
    v4 = 1699582771 - *(*a1 + 4);
  }

  v7[1] = v1 - 1462950173 * ((-773123505 - (v7 | 0xD1EB124F) + (v7 | 0x2E14EDB0)) ^ 0x246D6617) - 897;
  v8 = v2;
  v5 = *(&off_1002ACDD0 + v1 - 2444);
  (*(v5 + 8 * (v1 + 2135)))(v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_10024FF54()
{
  STACK[0xA50] = v0;
  v3 = STACK[0x580];
  STACK[0xA58] = STACK[0x580];
  return (*(v2 + 8 * (((v0 - v3 > (((v1 & 0x36FB17F5) - 1020021864) & 0x3CCC47F3 ^ 0x168uLL)) * (((v1 & 0x36FB17F5) + 838) ^ 0x82)) ^ v1 & 0x36FB17F5u)))();
}

uint64_t sub_100250054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v62 = STACK[0x6F0];
  STACK[0x768] = STACK[0x6F0];
  v63 = STACK[0x4D8];
  v64 = STACK[0x6E4];
  v65 = 482210539 * ((~((v60 - 224) | 0x17CDB143) + ((v60 - 224) & 0x17CDB143)) ^ 0xADE890EB);
  *(v60 - 208) = STACK[0x628];
  *(v60 - 192) = v62;
  *(v60 - 200) = v65 + 496959417;
  *(v60 - 212) = (v58 + 3044) ^ v65;
  *(v60 - 224) = v63;
  *(v60 - 176) = v62;
  *(v60 - 184) = v65 ^ (v58 - 230) ^ v64 ^ 0x45593239;
  v66 = (*(v61 + 8 * (v58 + 4456)))(v60 - 224);
  return (*(a58 + 8 * (((*(v60 - 216) == v59) * (v58 ^ 0x57F)) ^ v58)))(v66);
}

uint64_t sub_100250138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  STACK[0x200] = a40 - 1712;
  LODWORD(STACK[0x214]) = -197604040;
  return (*(v50 + 8 * (((*(a49 + 360) > 1u) * ((2 * (v49 ^ 0xB0B)) ^ 0x1788)) ^ v49)))();
}

uint64_t sub_10025018C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  LODWORD(STACK[0x9BC]) = a1;
  v52 = (a1 ^ v51) + STACK[0x340];
  STACK[0x9C0] = v52;
  return (*(a51 + 8 * ((a29 + 837) ^ ((2 * (v52 > a44)) | (4 * (v52 > a44))))))();
}

uint64_t sub_100250244@<X0>(int a1@<W8>)
{
  v2 = STACK[0x788];
  STACK[0x7A8] = *(v1 + 8 * a1);
  return sub_1001EAD18(v2);
}

uint64_t sub_100250264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v36 = (*(v34 + 8 * (v33 + 3124)))(26, 0x100004077774924);
  *(a1 + 24) = v36;
  return (*(a33 + 8 * (((v36 == 0) * ((v33 ^ 0xE7E) - 2271)) ^ v33)))();
}

uint64_t sub_1002502CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W4>, int a4@<W8>)
{
  HIDWORD(v14) = a1 ^ v6;
  LODWORD(v14) = a1 ^ 0x30000000;
  v15 = (v5 ^ v9) + (v14 >> 27) + (((a4 ^ v8) + v9 - ((2 * (a4 ^ v8)) & 0x609E2E26)) ^ a3) - 426157159 + (*(a2 + 4 * (v11 + v7 + 454 * (v4 ^ 0x902u)) - 12712) ^ v12);
  v16 = (v15 ^ 0xF3E95638) & (2 * (v15 & 0xE3C9663D)) ^ v15 & 0xE3C9663D;
  v17 = ((2 * (v15 ^ 0xB06B5678)) ^ 0xA744608A) & (v15 ^ 0xB06B5678) ^ (2 * (v15 ^ 0xB06B5678)) & 0x53A23044;
  v18 = v17 ^ 0x50A21045;
  v19 = (v17 ^ 0x3002000) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x4E88C114) & v18 ^ (4 * v18) & 0x53A23044;
  v21 = v19 ^ 0x53A23045 ^ (v20 ^ 0x42800000) & (16 * v19);
  v22 = (16 * (v20 ^ 0x11223041)) & 0x53A23040 ^ 0x41803005 ^ ((16 * (v20 ^ 0x11223041)) ^ 0x3A230450) & (v20 ^ 0x11223041);
  v23 = (v21 << 8) & 0x53A23000 ^ v21 ^ ((v21 << 8) ^ 0xA2304500) & v22;
  return (*(v10 + 8 * ((1583 * (v7 + 1 == v13 + 64)) ^ v4)))(v15 ^ (2 * ((v23 << 16) & 0x53A20000 ^ v23 ^ ((v23 << 16) ^ 0x30450000) & ((v22 << 8) & 0x53A20000 ^ 0x51820000 ^ ((v22 << 8) ^ 0x22300000) & v22))) ^ 0x508211A4);
}

uint64_t sub_100250534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = v72 - 1616;
  LODWORD(STACK[0x214]) = v74;
  return (*(v75 + 8 * (((a72 != 0) * ((v73 - 2853) ^ 0x711)) | (v73 - 888))))();
}

uint64_t sub_100250584@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x788];
  STACK[0x588] = *(v1 + 8 * a1);
  return sub_1001F05A4(v2);
}

uint64_t sub_1002505F4@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 3150)))();
  *(v1 + 24) = 0;
  return sub_1001B0784();
}

uint64_t sub_100250674(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void sub_10025068C(uint64_t a1)
{
  v1 = 482210539 * ((485315616 - (a1 | 0x1CED5420) + (a1 | 0xE312ABDF)) ^ 0xA6C87588);
  v2 = *(a1 + 12) ^ v1;
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1002507DC@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x4E8];
  STACK[0x6C0] = *(v1 + 8 * a1);
  return (*(v1 + 8 * ((((a1 + 1998) | 0xB0) + 1692) ^ a1 ^ ((v2 == 0) * ((a1 - 718053431) & 0x2ACCA91F ^ 0x9EC)))))();
}

uint64_t sub_100250870@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, unint64_t a15, int a16, int a17, int a18, int a19)
{
  v26 = (v19 + 41) & 0xDF;
  *a13 = a1;
  LODWORD(STACK[0x27C]) = a19;
  STACK[0x280] = a15;
  LODWORD(STACK[0x288]) = a17 - v20 + 2075027089;
  STACK[0x290] = v21 + (v20 - 474657547);
  v27 = v19;
  v28 = (*(v25 + 48 * v23 + 8))(a7);
  return (*(v22 + 8 * ((1931 * (v28 + v24 - ((v28 << (v26 ^ 0x92)) & 0xE8719A70) == v24)) ^ v27)))();
}

uint64_t sub_100250B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *a1 = 0;
  a1[1] = 0;
  *(v58 + 8) = a1;
  v61 = (*(v60 + 8 * (v59 + 4256)))(16, 0x20040A4A59CD2);
  return (*(a58 + 8 * (((v61 == 0) * (((5 * (v59 ^ 0x337) - 1153) | 0x801) ^ 0x90F)) | v59)))();
}

void sub_100250C6C(uint64_t a1)
{
  v1 = 1206776117 * (((a1 | 0x960E2C34) - (a1 & 0x960E2C34)) ^ 0xB09EA0D5);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100250DDC@<X0>(char a1@<W2>, uint64_t a2@<X3>, unint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21, uint64_t a22, void *a23, int *a24)
{
  v30 = (v24 + 256) | 0x840;
  *a21 = a6;
  v31 = (((v25 >> ((v24 | 0x40) ^ 0x4A)) ^ v25) << 7) & 0x9D2C5680 ^ (v25 >> ((v24 | 0x40) ^ 0x4A)) ^ v25;
  v32 = (v31 << 15) & 0xEFC60000 ^ v31 ^ (((v31 << 15) & 0xEFC60000 ^ v31) >> 18);
  v33 = (a2 + (v29 - 1));
  v34 = 495309039 * ((*(*a23 + (*a24 & (v30 ^ a3))) ^ v33) & (v28 + ((v30 - 1599) | 1) + 246));
  v35 = 495309039 * (v34 ^ HIWORD(v34));
  LOBYTE(v35) = *(*(v26 + 8 * (v30 ^ a4)) + (v35 >> 24) - 5) ^ *(*(v26 + 8 * (v30 - 2102)) + (v35 >> 24) - 8) ^ *(*(v26 + 8 * (v30 ^ a5)) + (v35 >> 24) - 7) ^ v35 ^ (BYTE3(v35) * a1);
  *v33 = v35 ^ v32;
  LODWORD(v35) = v29 != (v35 != v32);
  return (*(v27 + 8 * ((v35 | (4 * v35)) ^ v30)))();
}

uint64_t sub_100250EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  switch(a3)
  {
    case 0xAA17u:
      return (*(a59 + 8 * ((a37 - 1927) ^ (4346 * (a9 == v59 + 4)))))();
    case 0x6DBBu:
      STACK[0x748] = STACK[0x460] + STACK[0x340];
      JUMPOUT(0x100250FD4);
    case 0xB9E5u:
      return (*(a59 + 8 * ((274 * (a9 == (((a37 - 2179) | 0x201) ^ (v59 - 655)))) ^ (a37 + 1403))))();
    default:
      return sub_1002072D4(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
  }
}

uint64_t sub_100250FD8()
{
  STACK[0x7D0] = STACK[0x9C0];
  v4 = LODWORD(STACK[0x9B4]) == v1 && LOWORD(STACK[0x9BA]) == 28091;
  return (*(v2 + 8 * ((v4 * (((v0 - 2346) | 0x95) - 1006)) ^ v0)))();
}

uint64_t sub_1002510A4()
{
  v5 = 2052498137 * (((659 * (v1 ^ 0xCC1)) ^ 0x9CDBC647) + v0 - 1673081951 * *(v2 + 4 * v0)) - LODWORD(STACK[0x660]) + 278576533;
  v6 = LODWORD(STACK[0x65C]) - 1319195003 + LODWORD(STACK[0x66C]) + ((1643270935 * (v5 % 0xD87) - v5) ^ LODWORD(STACK[0x650]));
  v7 = LODWORD(STACK[0x65C]) - v6;
  v8 = v6 ^ LODWORD(STACK[0x650]);
  v9 = v6 ^ LODWORD(STACK[0x66C]);
  v10 = v9 + v4 - v7 + (v8 ^ __ROR4__(v6, 29));
  v11 = v10 + v9;
  v12 = v10 ^ v7;
  v13 = v10 ^ v8;
  HIDWORD(v14) = v10;
  LODWORD(v14) = v10;
  v15 = v13 + (v14 >> 28) - v12;
  v16 = v15 ^ v11;
  v15 ^= 0x38F5B1F1u;
  v17 = v12 - (v16 ^ 0x38F5B1F1);
  v18 = v13 - (v16 ^ 0x38F5B1F1);
  HIDWORD(v14) = v16 ^ 0x38F5B1F1;
  LODWORD(v14) = v16;
  v19 = (((v14 >> 30) + v18 - v17) ^ v15) - 689047580;
  LODWORD(STACK[0x650]) = v18 - v19;
  LODWORD(STACK[0x65C]) = v19 + v17;
  LODWORD(STACK[0x660]) = v19;
  LODWORD(STACK[0x66C]) = v19 ^ v15;
  return (*(v3 + 8 * ((23 * (v0 == 73)) ^ v1)))();
}

uint64_t sub_100251204@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q3>)
{
  v10 = (v8 + (v7 + v6));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + v7);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a6)), a5);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a6)), a5);
  return (*(v9 + 8 * (((v7 == 32) * a2) ^ (a3 + a4 + 1248))))();
}

uint64_t sub_100251260(uint64_t a1)
{
  v2 = *(a1 + 4) + 1462950173 * ((2 * (a1 & 0x2D8B707A) - a1 + 1383370629) ^ 0x580D0422);
  v3 = *(a1 + 8);
  v4 = *(&off_1002ACDD0 + v2 - 1771942839);
  v5 = (*(v4 + 8 * (v2 ^ 0x699DA786)))();
  result = (*(v4 + 8 * (v2 - 1771938248)))(v5, v3, 4096);
  if (result >= 1)
  {
    v7 = -197604040;
  }

  else
  {
    v7 = 197629575;
  }

  *a1 = v7;
  return result;
}

void sub_100251334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_1002ACDD0 + ((9 * ((qword_1002B0498 - dword_1002B02B8) ^ 0xC1)) ^ byte_1002861E0[byte_10027B910[(9 * ((qword_1002B0498 - dword_1002B02B8) ^ 0xC1))] ^ 0xEA]) - 127);
  v5 = *(v4 - 4);
  v6 = *(&off_1002ACDD0 + (byte_100296C24[(byte_1002908A8[(9 * ((qword_1002B0498 - v5) ^ 0xC1)) - 8] ^ 0xC2) - 4] ^ (9 * ((qword_1002B0498 - v5) ^ 0xC1))) + 48);
  v7 = &v10[1] + (*v6 ^ v5);
  *(v4 - 4) = 962355209 * v7 + 0x6B7004B68F1138C1;
  *v6 = 962355209 * (v7 ^ 0x6B7004B68F1138C1);
  v9 = 0;
  v11 = (801279979 * (((&v11 | 0xE92E1C4E) - (&v11 & 0xE92E1C4E)) ^ 0x2A00111F)) ^ 0x2DF2056;
  v12 = &v9;
  v8 = *(&off_1002ACDD0 + ((9 * (dword_1002B02B8 ^ 0xC1 ^ qword_1002B0498)) ^ byte_1002861E0[byte_10027B910[(9 * (dword_1002B02B8 ^ 0xC1 ^ qword_1002B0498))] ^ 0xEA]) + 102);
  (*(v8 + 8 * ((byte_1002861EC[(byte_10027B910[(9 * (*(v4 - 4) ^ 0xC1 ^ *v6))] ^ 0x8A) - 12] ^ (9 * (*(v4 - 4) ^ 0xC1 ^ *v6))) + 4632)))(&v11);
  v10[0] = 0;
  v12 = v10;
  v11 = (801279979 * ((&v11 + 1466511394 - 2 * (&v11 & 0x57693022)) ^ 0x94473D73)) ^ 0x2DF2056;
  (*(v8 + 8 * ((byte_1002864E8[~byte_10027BC10[(9 * ((*v6 + *(v4 - 4)) ^ 0xC1))] - 8] ^ (9 * ((*v6 + *(v4 - 4)) ^ 0xC1))) + 4746)))(&v11);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002515E4(uint64_t result)
{
  v1 = 801279979 * (result ^ 0xBCE30491C32E0D51);
  v2 = (result + 8);
  v3 = *(result + 16);
  v4 = *(result + 40);
  v5 = v4 - v1 > v3 - v1;
  v6 = v4 == v3;
  if ((*(result + 4) - v1))
  {
    v6 = v5;
  }

  if (!v6)
  {
    v2 = result;
  }

  *(result + 24) = *v2 ^ v1 ^ (*(result + 28) + v1);
  return result;
}

void sub_10025165C(uint64_t a1)
{
  v1 = 801279979 * ((((2 * a1) | 0xFC52A562) - a1 - 2116637361) ^ 0xBD075FE0);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1002517D4()
{
  v3 = *(v1 + 8);
  STACK[0x4D0] = 0;
  LODWORD(STACK[0x4AC]) = 1190698650;
  STACK[0x3E0] = 0;
  return (*(v2 + 8 * (((v3 == 0) * (v0 + 2359 + ((v0 - 852) | 0x40) - 3591)) ^ v0)))();
}

void sub_10025185C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = a1 - 1;
  if (((a13 - v21) | (v21 - a13)) <= ((v21 + 1781) ^ 0xFFFFF90A))
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = -2147483647;
  }

  *v20 = v22 + ~v21;
  (*(v19 + 8 * (v21 ^ 0x12ED)))(a19);
  JUMPOUT(0x1002518C4);
}

uint64_t sub_100251A34(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -25958;
  a1.n128_u8[2] = -102;
  a1.n128_u8[3] = -102;
  a1.n128_u8[4] = -102;
  a1.n128_u8[5] = -102;
  a1.n128_u8[6] = -102;
  a1.n128_u8[7] = -102;
  a2.n128_u16[0] = 20046;
  a2.n128_u8[2] = 78;
  a2.n128_u8[3] = 78;
  a2.n128_u8[4] = 78;
  a2.n128_u8[5] = 78;
  a2.n128_u8[6] = 78;
  a2.n128_u8[7] = 78;
  return sub_100251A4C(a1, a2);
}

uint64_t sub_100251AC4(int a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = HIDWORD(v11) + a3 * (*(a6 + 4 * a5) ^ v8) + (*(a7 + 4 * a4) ^ v8);
  *(a7 + 4 * a4) = v14 + v8 - ((v14 << a8) & v10);
  return (*(v12 + 8 * (((a5 + 1 == v9) * v13) ^ a1)))();
}

uint64_t sub_100251B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *(v64 - 216) = v63 + ((((v64 - 224) | 0x63EE23EF) - (v64 - 224) + ((v64 - 224) & 0x9C11DC10)) ^ 0x8D4690C7) * v62 + v59;
  v65 = (*(v58 + 8 * v60))(v64 - 224);
  *(v61 + 16) = *(v64 - 224) ^ 0x35;
  return (*(a58 + 8 * ((v59 + 2025) ^ 2)))(v65);
}

void sub_100251BA0()
{
  v2 = (((v0 ^ 0xF30D6ACF) + 217224497) ^ ((v0 ^ 0x39F1033) - 60756019) ^ ((v0 ^ 0xC0DD6DEF) + 1059230225)) - 1801522212 + (((LODWORD(STACK[0x2C0]) ^ 0xA5A831B7) + ((v1 - 1496) ^ 0x5A57CFCB)) ^ ((LODWORD(STACK[0x2C0]) ^ 0x7F1ACD0) - 133278928) ^ ((LODWORD(STACK[0x2C0]) ^ 0x92168A74) + 1844016524));
  v3 = (v2 ^ 0xA3FE392B) & (2 * (v2 & 0xCBFF3A4A)) ^ v2 & 0xCBFF3A4A;
  v4 = ((2 * (v2 ^ 0x22EE593B)) ^ 0xD222C6E2) & (v2 ^ 0x22EE593B) ^ (2 * (v2 ^ 0x22EE593B)) & 0xE9116370;
  v5 = v4 ^ 0x29112111;
  v6 = (v4 ^ 0x40004260) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xA4458DC4) & v5 ^ (4 * v5) & 0xE9116370;
  v8 = (v7 ^ 0xA0010140) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x49106231)) ^ 0x91163710) & (v7 ^ 0x49106231) ^ (16 * (v7 ^ 0x49106231)) & 0xE9116370;
  v10 = v8 ^ 0xE9116371 ^ (v9 ^ 0x81102300) & (v8 << 8);
  LODWORD(STACK[0x2C0]) = v2 ^ (2 * ((v10 << 16) & 0x69110000 ^ v10 ^ ((v10 << 16) ^ 0x63710000) & (((v9 ^ 0x68014061) << 8) & 0x69110000 ^ 0x68100000 ^ (((v9 ^ 0x68014061) << 8) ^ 0x11630000) & (v9 ^ 0x68014061)))) ^ 0xEBB0EBBB;
  JUMPOUT(0x1001D893CLL);
}

uint64_t sub_100252240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36, __int128 a37, uint64_t a38, __int128 a39, char a40)
{
  if (v43 == 5 || v43 == 8)
  {
    v47 = (v40 + 491) | 2;
    HIBYTE(a39) = *(v42 + 43) + (~(2 * *(v42 + 43)) | 0x65) + 78;
    BYTE14(a39) = ((v40 - 21) | 2) + *(v42 + 42) + (~(2 * *(v42 + 42)) | 0x65) + 75;
    BYTE13(a39) = *(v42 + 41) + (~(2 * *(v42 + 41)) | 0x65) + 78;
    BYTE12(a39) = *(v42 + 40) + (~(2 * *(v42 + 40)) | 0x65) + 78;
    BYTE11(a39) = *(v42 + 39) + (~(2 * *(v42 + 39)) | 0x65) + 78;
    BYTE10(a39) = *(v42 + 38) + (~(2 * *(v42 + 38)) | 0x65) + 78;
    BYTE9(a39) = *(v42 + 37) + (~(2 * *(v42 + 37)) | 0x65) + 78;
    BYTE8(a39) = *(v42 + 36) + (~(2 * *(v42 + 36)) | 0x65) + 78;
    BYTE7(a39) = *(v42 + 35) + (~(2 * *(v42 + 35)) | 0x65) + 78;
    BYTE6(a39) = *(v42 + 34) + (~(2 * *(v42 + 34)) | 0x65) + 78;
    BYTE5(a39) = *(v42 + 33) + (~(2 * *(v42 + 33)) | 0x65) + 78;
    BYTE4(a39) = *(v42 + 32) + (~(2 * *(v42 + 32)) | 0x65) + 78;
    BYTE3(a39) = *(v42 + 31) + (~(2 * *(v42 + 31)) | 0x65) + 78;
    BYTE2(a39) = *(v42 + 30) + (~(2 * *(v42 + 30)) | 0x65) + 78;
    BYTE1(a39) = *(v42 + 29) + (~(2 * *(v42 + 29)) | 0x65) + 78;
    v48 = *(v42 + 28) + (~(2 * *(v42 + 28)) | 0x65) + 78;
  }

  else
  {
    v47 = v40 + 493;
    HIBYTE(a39) = HIBYTE(a37);
    *(&a39 + 11) = *(&a37 + 11);
    *(&a39 + 3) = *(&a37 + 3);
    *(&a39 + 1) = *(&a37 + 1);
    v48 = a37;
  }

  LOBYTE(a39) = v48;
  v49 = *(v42 + 560);
  v50 = 1462950173 * (((~(v46 - 168) | 0x81F553E8) + ((v46 - 168) | 0x7E0AAC17)) ^ 0x747327B1);
  *(v46 - 112) = 29 * (((~(v46 + 88) | 0xE8) + ((v46 + 88) | 0x17)) ^ 0xB1) - 13;
  *(v46 - 136) = v42 + 8;
  *(v46 - 128) = v47 - v50 + 902;
  *(v46 - 144) = v50 + 1875406257 * v49 + 1414682874;
  *(v46 - 104) = &a36;
  *(v46 - 164) = (v43 ^ 0x7F9FFFEB) - v50 + ((((v47 - 767) | 0x112) ^ 0x100) & v45) - 1435112672;
  *(v46 - 120) = v42 + 48;
  *(v46 - 160) = &a40;
  *(v46 - 152) = &a39;
  v51 = (*(v44 + 8 * (v47 ^ 0x103E)))(v46 - 168);
  return (*(v44 + 8 * ((4003 * (*(v46 - 168) == v41)) ^ v47)))(v51);
}

_BYTE *sub_1002524D0(_BYTE *result, unsigned int a2, unint64_t a3)
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