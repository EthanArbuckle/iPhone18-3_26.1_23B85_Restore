uint64_t sub_1000CD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = STACK[0x304];
  v16 = *(v12 + 16);
  *v16 = LODWORD(STACK[0x304]) - 1;
  v15 -= 103435265;
  v17 = (*(v12 + 32) + 24 * v15);
  v18 = *v17;
  v19 = v17[1];
  v20 = *&v16[6 * v15 + 4];
  **(v12 + 4008) = v17[4];
  v21 = *(*v12 + (v18 + v13) * v11 + 36);
  LODWORD(v16) = ((v8 - 276837373) & 0xBBF76BFF) + 223168338 + v21;
  LOBYTE(v18) = *(a7 + 36) ^ (v16 < 1650803335);
  v22 = v16 < SLODWORD(STACK[0x26C]);
  if (v18)
  {
    v22 = *(a7 + 36);
  }

  if (v22)
  {
    v9 = v14;
  }

  LODWORD(STACK[0xAD4]) = v9;
  LODWORD(STACK[0xAD8]) = v21;
  LODWORD(STACK[0xADC]) = v19;
  *(v12 + 2440) = v20;
  *(v12 + 2456) = v20;
  LODWORD(STACK[0xAF8]) = v19;
  LODWORD(STACK[0xAFC]) = v10;
  LODWORD(STACK[0xB00]) = v9;
  return (*(a8 + 8 * ((5156 * (v21 == v10)) ^ v8)))();
}

uint64_t sub_1000CD400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = STACK[0xADC];
  LODWORD(STACK[0x308]) = STACK[0xADC];
  LODWORD(STACK[0x30C]) = STACK[0xAD8];
  LODWORD(STACK[0x31C]) = STACK[0xAD4];
  v39 = **(v37 + 4008);
  LODWORD(STACK[0x334]) = v39;
  v39 -= 564492027;
  LODWORD(STACK[0x354]) = v39;
  v40 = v39 < ((197 * (v36 ^ 0x4304)) ^ a33 ^ v38);
  return (*(a8 + 8 * (((4 * v40) | (16 * v40)) ^ v36)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1000CD478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = v45[312];
  v48 = v45[313];
  v49 = v45[314];
  v50 = v45[315];
  v51 = *(a8 + 8 * v44);
  LODWORD(STACK[0x12B8]) = (LODWORD(STACK[0x308]) ^ 0x196A6A53) + 2011019896 + ((v44 + 1593764104) & (2 * LODWORD(STACK[0x308])) ^ 0x4C2A2B10);
  a7[5] = v51;
  a7[6] = a44;
  a7[9] = v47;
  a7[10] = v48;
  a7[11] = v49;
  a7[12] = v50;
  *(v46 - 164) = v44 + 422488289 * ((((v46 - 168) | 0x416161BE) - ((v46 - 168) & 0x416161BE)) ^ 0xBDFEC33A) - 1116779156;
  a7[688] = &STACK[0x12A8];
  v52 = (*(a8 + 8 * (v44 ^ 0x4C6A)))(v46 - 168);
  v53 = *(v46 - 168);
  LODWORD(STACK[0xB04]) = v53;
  return (*(a34 + 8 * (((v53 == -1418238986) * ((v44 - 2001693371) & 0x774F7FB3 ^ 0x1859)) ^ (v44 + 1819))))(v52);
}

uint64_t sub_1000CD81C@<X0>(int a1@<W1>, int a2@<W5>, uint64_t a3@<X7>, int a4@<W8>)
{
  v6 = a4 + 135705769 < v5;
  if (v4 != a4 + 135705769 < a2)
  {
    v6 = v4;
  }

  return (*(a3 + 8 * ((((a1 + 1344289163) & 0xAFDFDCFB ^ 0x4859) * !v6) ^ a1)))();
}

uint64_t sub_1000CD9B4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(STACK[0x3B0]) = v3;
  v7[40] = v2;
  LODWORD(STACK[0x3B4]) = v4;
  LODWORD(STACK[0x3B8]) = a2;
  v8 = *(*v7 + v2 * v6 + 40);
  LODWORD(STACK[0x3C0]) = v8;
  return (*(a1 + 8 * ((1013 * ((v8 & 1) == 137 * (((v5 - 12695) | 0x40E) ^ 0x1428) - 9727)) ^ v5)))();
}

uint64_t sub_1000CDA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = (v45 - 434489460) & 0x19E5BBF9;
  v48 = *(v46 + 40);
  **(v46 + 48) = STACK[0x364];
  v49 = *(v46 + 64);
  **(v46 + 56) = **(v46 + 3992);
  *v49 = **(v46 + 4000);
  v50 = *(v46 + 88);
  **(v46 + 80) = **(v46 + 4008) + 1024473426 - LODWORD(STACK[0x334]);
  *v50 = a44 + LODWORD(STACK[0x354]);
  v51 = (*(*v46 + *(v46 + 320) * v44 + 8))(*(v46 + 8), v48);
  v52 = v51 - 1418255498 + v45 + 3064;
  LODWORD(STACK[0xB04]) = v52 - ((v47 ^ 0x56EEDCCD) & (2 * v51)) + 3309;
  return (*(a34 + 8 * ((7547 * (v52 - ((v47 ^ 0x56EEDCCD) & (2 * v51)) == -1418242295)) ^ v45)))();
}

uint64_t sub_1000CDB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v48 = *(*v47 + ((v44 ^ 0xAB7720FA) + LODWORD(STACK[0x30C]) + 719848651) * v46 + 36) == LODWORD(STACK[0x30C]);
  v47[307] = a44;
  LODWORD(STACK[0xAF8]) = STACK[0x308];
  LODWORD(STACK[0xAFC]) = v45;
  LODWORD(STACK[0xB00]) = STACK[0x31C];
  return (*(a8 + 8 * ((v48 * (((v44 ^ 0x38C) - 13117) ^ 0xD4A)) | v44 ^ 0x38C)))();
}

uint64_t sub_1000CDBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = LODWORD(STACK[0x31C]) == v9;
  LODWORD(STACK[0xB04]) = STACK[0x31C];
  return (*(a8 + 8 * ((v10 * (((v8 + 3550) ^ 0xF9D) + 14007)) ^ v8)))();
}

uint64_t sub_1000CDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = v44 ^ 0x1D0Au;
  v48 = LODWORD(STACK[0x30C]) != ((v47 - 1418241472) ^ 0x82D7F4C8);
  *(v45 + 2456) = a44;
  LODWORD(STACK[0xAF8]) = STACK[0x308];
  LODWORD(STACK[0xB00]) = v46;
  return (*(a8 + 8 * ((82 * v48) ^ v44)))(a1, a2, v47, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1000CDD1C@<X0>(int a1@<W2>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v8 = (((v5 - 1659) | 0xC01) ^ 0xFE8960C9) + *(a3 + a1 * v6 + 36);
  v9 = v3 ^ (v8 < v7);
  v10 = v8 < v4;
  if (v9)
  {
    v10 = v3;
  }

  return (*(a2 + 8 * ((v10 * (((v5 + 103) | 0x192) ^ 0x63C)) ^ v5)))();
}

uint64_t sub_1000CDDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  LODWORD(STACK[0xB04]) = 1418211964;
  *(v38 + 2456) = v35;
  LODWORD(STACK[0xAF8]) = v36;
  LODWORD(STACK[0xAFC]) = v37;
  LODWORD(STACK[0xB00]) = v39;
  return (*(a8 + 8 * a4))(a1, a2, a3, a4, a5, 2981579752, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1000CDE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v61 = **(v58 + 4000);
  v59 = (**(v58 + 3992) ^ 0xF7D3F395597AA23CLL) + 0x82C0C6A270DB8EDLL + ((((v57 - 495) | 0x44u) + 0x1DEDF6D2ALL) & (2 * (**(v58 + 3992) ^ 0xB6151DCB)));
  *(v58 + 440) = v59;
  return (*(a8 + 8 * ((228 * (v59 != 377321700)) ^ v57)))(a1, 377321700, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v61, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1000CDFEC@<X0>(unint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X7>, int a4@<W8>)
{
  v7 = v4 - 0x6536EC9D29B1DAE9;
  v8 = v5 ^ (v7 < a1);
  v9 = v7 < v6;
  if (v8)
  {
    v9 = v5;
  }

  return (*(a3 + 8 * ((a4 + a2) | (8 * !v9) | (16 * !v9))))();
}

uint64_t sub_1000CE10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = (**(v33 + 16) & 0xFFFFFFF0) == ((15 * (v32 ^ 0xC8C)) ^ 0x62A5721);
  LODWORD(STACK[0xB04]) = 1418211964;
  return (*(a8 + 8 * ((14302 * v34) ^ v32)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1000CE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = **(v45 + 4008);
  v47 = (*(v45 + 32) + 24 * (a41 - 103435264));
  v48 = STACK[0x308];
  *v47 = STACK[0x3B0];
  v47[1] = v48;
  v49 = *(v45 + 16);
  *&v49[6 * (a41 - 103435264) + 4] = a44;
  v47[4] = v46;
  *v49 = a41 + 1;
  v50 = *a38 + ((v44 + 1862283962) & 0x90FFDB23 ^ 0x17B21225);
  v51 = *(a7 + 39) ^ (v50 < -1051549629);
  v52 = v50 < SLODWORD(STACK[0x2A0]);
  if (v51)
  {
    v52 = *(a7 + 39);
  }

  return (*(a8 + 8 * (((v52 & 1) * ((v44 + 980064946) & 0xC5955E6F ^ 0x6D8)) ^ v44)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1000CE250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  v45 = **(v43 + 3992);
  v46 = **(v43 + 4000);
  **(v43 + 4008) = 564492027;
  *(v43 + 2456) = v46;
  LODWORD(STACK[0xAF8]) = v45;
  LODWORD(STACK[0xAFC]) = a42;
  LODWORD(STACK[0xB00]) = v44;
  return (*(a8 + 8 * v42))();
}

uint64_t sub_1000CE2A8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(STACK[0x3B0]) = v3;
  *(v6 + 320) = v2;
  LODWORD(STACK[0x3B4]) = v4;
  LODWORD(STACK[0xB04]) = 1418211964;
  LODWORD(STACK[0x3B8]) = a2;
  return (*(a1 + 8 * v5))();
}

uint64_t sub_1000CE2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  HIDWORD(a36) = STACK[0xB04];
  *(v37 + 888) += (v38 - 576760618) & 0x2260B969 ^ 0xFFFFFFFFFFFFD731;
  return (*(a8 + 8 * v38))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_1000CE468@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v5 = **(v4 + 656);
  v6 = **(v4 + 640);
  v7 = *(v4 + 712) - 0x11D8D06F3D7574B3;
  *(v4 + 760) = a2;
  LODWORD(STACK[0x4F0]) = 1715514982;
  LODWORD(STACK[0x634]) = v5;
  *(v4 + 1280) = v6;
  *(v4 + 1312) = v7;
  LODWORD(STACK[0x618]) = 1389527626;
  LODWORD(STACK[0x5B8]) = v3;
  *(v4 + 2000) = v7;
  *(v4 + 2008) = v6;
  LODWORD(STACK[0x938]) = v5;
  LODWORD(STACK[0x93C]) = 1715514982;
  *(v4 + 2024) = a2;
  LODWORD(STACK[0x94C]) = 1389527626;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1000CE588@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = **(v3 + 1168);
  v5 = **(v3 + 624);
  v6 = *(v3 + 712) - 0x11D8D06F3D7575B7;
  *(v3 + 760) = a2;
  LODWORD(STACK[0x4F0]) = 1715514982;
  LODWORD(STACK[0x634]) = v4;
  *(v3 + 1280) = v5;
  *(v3 + 1312) = v6;
  LODWORD(STACK[0x618]) = 1389527626;
  LODWORD(STACK[0x5B8]) = 489056908;
  *(v3 + 2000) = v6;
  *(v3 + 2008) = v5;
  LODWORD(STACK[0x938]) = v4;
  LODWORD(STACK[0x93C]) = 1715514982;
  *(v3 + 2024) = a2;
  LODWORD(STACK[0x94C]) = 1389527626;
  return (*(a1 + 8 * (((100 * ((v2 + 1934843650) ^ 0x33537228) + 1477) * (v2 == -1043164458)) ^ (v2 - 995))))();
}

uint64_t sub_1000CE650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  LODWORD(STACK[0xB04]) = 1418211964;
  *(v37 + 2456) = a2;
  LODWORD(STACK[0xAF8]) = a1;
  LODWORD(STACK[0xAFC]) = v36;
  LODWORD(STACK[0xB00]) = v35;
  return (*(a8 + 8 * a4))(a1, a2, a3, a4, a5, 2981579752, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1000CE69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0xAE8] = v8;
  LODWORD(STACK[0xB04]) = 1418211964;
  return (*(a8 + 8 * v9))(a1, a2, a3, a4, a5, 2981579752, &STACK[0x1280]);
}

uint64_t sub_1000CE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = STACK[0x10A4];
  LODWORD(STACK[0x5B4]) = STACK[0x10A4];
  LODWORD(STACK[0x3E4]) = STACK[0x100C];
  v23[102] = v23[471];
  LODWORD(STACK[0x4BC]) = STACK[0x1018];
  LODWORD(STACK[0x4CC]) = STACK[0x101C];
  v23[89] = v23[473];
  v23[111] = v23[474];
  v23[99] = v23[475];
  v23[143] = v23[476];
  v23[146] = v23[477];
  v23[78] = v23[478];
  v23[82] = v23[479];
  v23[80] = v23[480];
  v23[158] = v23[481];
  v23[161] = v23[482];
  LODWORD(STACK[0x764]) = v24;
  return (*(a8 + 8 * v22))(a22);
}

uint64_t sub_1000CE7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 712);
  *(v10 - 0x5480F16B0E86349DLL) = **(v9 + 1288);
  *(v9 + 4016) = v10;
  *(v10 - 0x5480F16B0E8634A5) = **(v9 + 1264);
  v11 = *(v9 + 792);
  *(v9 + 4024) = v11;
  v12 = *(v9 + 1000);
  *(*v12 - 0x5480F16B0E863A5DLL) = *(v11 - 0x2968F53CA5E43629);
  v11 = (v11 - 0x2968F53CA5E43631);
  *(v9 + 4032) = v11;
  *(*v12 - 0x5480F16B0E863A65) = *v11;
  *(v9 + 2040) = 104;
  *(v9 + 2048) = (&STACK[0x6E8] ^ 0xE3EFEDDE5D5CFB3ELL) + 0x7FF6FF63B7BB3FFCLL + ((2 * &STACK[0x6E8]) & 0xC7DFDBBCBAB9F670);
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CE8BC@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = v5 - 1;
  *(v6 + 1424) = v7;
  *(a2 + v7) = (v4 ^ (v3 - 58) ^ 0xE3) * (v3 - 41);
  return (*(a1 + 8 * ((124 * (*(v6 + 1424) == 0)) ^ v2)))();
}

uint64_t sub_1000CE904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49[256] = v46;
  v49[255] = v48;
  v49[257] = v49[102];
  v49[258] = a46;
  v49[259] = v49[503];
  v49[260] = v49[502];
  LODWORD(STACK[0x984]) = a37;
  return (*(a8 + 8 * (v47 | 0x200)))();
}

uint64_t sub_1000CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  LODWORD(STACK[0x5B4]) = STACK[0x1008];
  v24 = STACK[0x10A4];
  LODWORD(STACK[0x3E4]) = STACK[0x10A4];
  v23[102] = v23[471];
  LODWORD(STACK[0x4BC]) = STACK[0x1018];
  LODWORD(STACK[0x4CC]) = STACK[0x101C];
  v23[89] = v23[473];
  v23[111] = v23[474];
  v23[99] = v23[475];
  v23[143] = v23[476];
  v23[146] = v23[477];
  v23[78] = v23[478];
  v23[82] = v23[479];
  v23[80] = v23[480];
  v23[158] = v23[481];
  v23[161] = v23[482];
  LODWORD(STACK[0x764]) = v24;
  return (*(a8 + 8 * v22))(a22);
}

uint64_t sub_1000CEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = STACK[0x520];
  STACK[0x11C0] = STACK[0x520];
  v37 = STACK[0x6A0];
  LODWORD(STACK[0x11CC]) = STACK[0x6A0];
  v38 = STACK[0x6B8];
  STACK[0x11D0] = STACK[0x6B8];
  v39 = STACK[0x580];
  LODWORD(STACK[0x11DC]) = STACK[0x580];
  if (v36)
  {
    v40 = v38 == 0;
  }

  else
  {
    v40 = 1;
  }

  v43 = v40 || v37 == 0 || v39 == 0;
  LODWORD(STACK[0x9C4]) = v35 + 2;
  STACK[0x9C8] = STACK[0x11A8];
  return (*(a34 + 8 * ((45 * (((v34 + 41) ^ v43) & 1)) ^ v34)))();
}

uint64_t sub_1000CEAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = v34 - 6020;
  v38 = v34 - 3479;
  v39 = (v34 + 124) ^ 0xA1;
  v40 = (*(a8 + 8 * (v34 + 6328)))(32);
  v35[529] = v40;
  LODWORD(STACK[0x9C4]) = v36;
  v35[270] = v35[522];
  return (*(a34 + 8 * ((((v39 ^ (v40 == 0)) & 1) * (v38 ^ 0x242D)) ^ v37)))();
}

uint64_t sub_1000CEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[529];
  *(v10 + 12) = 0;
  *(v10 + 13) = 0;
  *(v10 + 15) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v8[530] = v10 + 16;
  v8[531] = v10 + 24;
  *(v10 + 28) = 0;
  *(v10 + 29) = 0;
  *(v10 + 31) = 0;
  *v10 = 0;
  *(v10 + 8) = STACK[0x11CC];
  v12 = (*(a8 + 8 * (v9 ^ 0x4CED)))();
  v8[532] = v12;
  *v10 = v12;
  return (*(a8 + 8 * (((v12 == 0) * (((3 * (v9 ^ 0x1EC8)) ^ 0xFFFF8EE3) + (v9 ^ 0x3E05))) ^ v9)))();
}

uint64_t sub_1000CEBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = LODWORD(STACK[0x11CC]) + 1988065913 - ((LODWORD(STACK[0x11CC]) << ((v36 + 15) & 0x72 ^ v35)) & ((v36 - 577260785) ^ 0x31691F3F));
  v38 = (v37 ^ 0x8C81AFC6) + 1742305917 + ((2 * v37) & 0xF5FDAB7E ^ 0xE4FCA072);
  LODWORD(STACK[0x1204]) = v38;
  return (*(a34 + 8 * ((76 * (v38 != v34)) ^ v36)))();
}

uint64_t sub_1000CED14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = a1 ^ (v27 + 10);
  v29 = a1 + 1660732149;
  *STACK[0x11F0] = STACK[0x11DC];
  v30 = (*(a27 + 8 * (a1 ^ 0x9D032116)))();
  STACK[0x1208] = v30;
  *STACK[0x11E8] = v30;
  return (*(a27 + 8 * (((v30 != 0) * ((v28 + 18722) ^ (1707 * v28))) ^ v29)))();
}

uint64_t sub_1000CED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (v36 + 8723) ^ 0x2215;
  v38 = LODWORD(STACK[0x11DC]) + 1988065913 - (((v37 + 4359) ^ 0xECFEE5E0) & (2 * LODWORD(STACK[0x11DC])));
  v39 = (v38 ^ v35) + 1742305917 + ((167 * v37) ^ 0xE4FCA75F ^ (2 * v38) & 0xF5FDAB7E);
  LODWORD(STACK[0x1214]) = v39;
  STACK[0x9B8] = STACK[0x11E0];
  return (*(a34 + 8 * ((84 * (v39 == v34)) ^ (v36 + 8723))))();
}

uint64_t sub_1000CEEB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LODWORD(STACK[0x9B4]) = -v27;
  v28 = STACK[0x11E0] != 0;
  STACK[0x9B8] = STACK[0x11E0];
  return (*(a27 + 8 * ((v28 * ((((a1 - 2027956691) & 0x78E01FED) + 10865) ^ 0x31B7)) ^ (a1 + 893))))();
}

uint64_t sub_1000CEF90@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = STACK[0x478];
  STACK[0xC20] = STACK[0x478];
  LODWORD(v27) = *(v27 - 0x5480F16B0E863C9DLL);
  LODWORD(STACK[0xC2C]) = v27;
  return (*(a27 + 8 * (((v27 == -1240130101) * (((a1 - 4118) ^ 0x9D037A48) + 1660720440)) ^ a1)))();
}

uint64_t sub_1000CF0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = STACK[0x11E0];
  STACK[0x1218] = STACK[0x11E0];
  v36 = *v35;
  STACK[0x1220] = v36;
  return (*(a34 + 8 * ((((v36 == 0) ^ ((v34 - 78) ^ (v34 - 85))) & 1 | (2 * (((v36 == 0) ^ ((v34 - 78) ^ (v34 - 85))) & 1))) ^ v34)))();
}

uint64_t sub_1000CF148@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a1 | 0x424A;
  v28 = (*(a27 + 8 * ((a1 | 0x424A) ^ 0x81D)))(STACK[0x1220]);
  *STACK[0x1218] = 0;
  return (*(a27 + 8 * v27))(v28);
}

uint64_t sub_1000CF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = *(STACK[0x11E0] + 16);
  STACK[0x1228] = STACK[0x11E0] + 16;
  STACK[0x1230] = v35;
  return (*(a34 + 8 * (((v35 != 0) * (((v34 - 14939) | 0x1145) ^ (v34 - 10539))) ^ v34)))();
}

uint64_t sub_1000CF1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = (*(a34 + 8 * (v34 ^ 0x53A6)))(STACK[0x1230]);
  *STACK[0x1228] = 0;
  return (*(a34 + 8 * v34))(v35);
}

uint64_t sub_1000CF268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = STACK[0x11A8];
  v37 = STACK[0x11A8] == 0;
  LODWORD(STACK[0x9C4]) = v35 + 2;
  STACK[0x9C8] = v36;
  LODWORD(STACK[0x9D4]) = v35 + 2;
  return (*(a34 + 8 * ((((23 * (v34 ^ 0x300F) + 5388) ^ (2727 * (v34 ^ 0x319B))) * v37) ^ v34)))();
}

uint64_t sub_1000CF2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = STACK[0x9C4];
  v37 = (*(a8 + 8 * (v34 ^ 0x6E54)))(*(v35 + 2160));
  LODWORD(STACK[0x9D4]) = v36;
  return (*(a34 + 8 * v34))(v37);
}

uint64_t sub_1000CF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x123C]) = STACK[0x9D4];
  v10 = *(v9 + 1088);
  *(v9 + 4328) = v10;
  return (*(a8 + 8 * (((((-57 * (v8 ^ 0x40)) ^ (v10 == 0)) & 1) * ((89 * (v8 ^ 0x35C0)) ^ 0x2D83)) | v8)))();
}

uint64_t sub_1000CF37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 7365)))(*(v35 + 4328));
  *(v35 + 1088) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000CF3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 968);
  *(v9 + 4336) = v10;
  return (*(a8 + 8 * (((((v10 == 0) ^ (v8 - 64)) & 1) * (72 * (v8 ^ 0x2965) - 3446)) | v8)))();
}

uint64_t sub_1000CF430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 15568)))(*(v35 + 4336));
  *(v35 + 968) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000CF464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 1376);
  *(v9 + 4344) = v10;
  LODWORD(STACK[0x9D8]) = STACK[0x123C];
  return (*(a8 + 8 * (((((v8 - 12764) | 0xA21) - 6698) * (v10 == 0)) ^ v8)))();
}

uint64_t sub_1000CF4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 12271)))(*(v35 + 4344));
  LODWORD(STACK[0x9D8]) = STACK[0x123C];
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000CF548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[100];
  v11 = STACK[0x410];
  v12 = STACK[0x3E4];
  v13 = STACK[0x4BC];
  v14 = STACK[0x4CC];
  v15 = v9[78];
  v16 = v9[82];
  v9[182] = v9[80];
  v9[183] = v16;
  v9[184] = v15;
  v9[185] = v9[517];
  v9[186] = v9[516];
  v9[187] = v9[515];
  LODWORD(STACK[0x738]) = v14;
  LODWORD(STACK[0x73C]) = v13;
  v9[189] = v9[514];
  LODWORD(STACK[0x74C]) = v12;
  v9[191] = v9[513];
  LODWORD(STACK[0x758]) = v11;
  return (*(a8 + 8 * ((7992 * (v8 > 0xB951AA2)) ^ (v8 + 1384037216))))(v10, 852818952);
}

uint64_t sub_1000CF5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v5[340] = a4;
  v7 = *(a3 + 8 * v4);
  LODWORD(STACK[0xC04]) = STACK[0x758];
  v5[342] = v5[191];
  v5[343] = v5[163];
  v5[344] = &STACK[0x2968F53CA5E44A21];
  return v7(a1, a2, -617577546, 95, 44, -1098309526, 39);
}

uint64_t sub_1000CF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  v33 = LODWORD(STACK[0x125C]) == -1418238986;
  LODWORD(STACK[0x794]) = STACK[0x125C];
  return (*(a8 + 8 * ((((((a32 + 1837972629) & 0xF56F7BBF) - 7036) ^ 0x7142) * v33) ^ (v32 + a32 + 1118))))(a22);
}

uint64_t sub_1000CF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = STACK[0x558];
  v36 = STACK[0xC2C];
  *(v35 - 0x6BBFEBF589A7D707) = STACK[0xC2C];
  STACK[0xC30] = v35 - 0x6BBFEBF589A7D707;
  v37 = (*(a34 + 8 * (v34 + 14670)))(v36 ^ 0xB6151DCB);
  STACK[0xC38] = v37;
  *(v35 - 0x6BBFEBF589A7D70FLL) = v37;
  return (*(a34 + 8 * (((v37 == 0) * ((((v34 - 549462318) & 0xBDC37B65) + 1660734021) ^ 0x3587)) | v34)))();
}

uint64_t sub_1000CF910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0xC40] = STACK[0xC20] - 0x5480F16B0E863CB1;
  v35 = (*STACK[0xC30] ^ 0xB6151DCB) - ((2 * (*STACK[0xC30] ^ 0xB6151DCB)) & 0xECFEF4F2) + 1988065913;
  v36 = (v35 ^ 0x8C81AFC6) + 1742305917 + ((v34 - 1656011184) & 0xFFB7EF6A ^ 0x79FFCB32 ^ (2 * v35) & 0xF5FDAB7E);
  LODWORD(STACK[0xC4C]) = v36;
  return (*(a34 + 8 * (v34 | (2 * (v36 == 1658343484)))))();
}

uint64_t sub_1000CFA80@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 + 1660731030;
  v5 = (*(a1 + 8 * (a2 ^ 0x9D032116)))(16);
  *(v2 + 2808) = v5;
  return (*(a1 + 8 * ((38 * (v5 != 0)) ^ v3)))();
}

uint64_t sub_1000CFAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = STACK[0xC50];
  *v35 = 0x4761F68478C333F5;
  v35[1] = 0x4761F68478C333F5;
  STACK[0x3F0] = v35 + 0xAB5C364D9808152;
  STACK[0x6D0] = v35 + 0xAB5C364D9808152;
  LODWORD(STACK[0x534]) = 2000899918;
  v36 = STACK[0x670];
  STACK[0x500] = STACK[0x670];
  v37 = STACK[0x410];
  LODWORD(STACK[0x494]) = STACK[0x410];
  LODWORD(STACK[0x610]) = 268445164;
  LODWORD(STACK[0x9DC]) = v37;
  STACK[0x9E0] = v36;
  LODWORD(STACK[0x9EC]) = 2000899918;
  STACK[0x9F0] = v35 + 0xAB5C364D9808152;
  return (*(a34 + 8 * v34))(a22, a2, &STACK[0x1280]);
}

uint64_t sub_1000CFC98@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = v3[83];
  v3[175] = v4;
  LODWORD(STACK[0x534]) = -282913662;
  v5 = v3[113];
  v3[117] = v5;
  v6 = STACK[0x6CC];
  LODWORD(STACK[0x494]) = STACK[0x6CC];
  LODWORD(STACK[0x610]) = a2 + 5;
  LODWORD(STACK[0x9DC]) = v6;
  v3[273] = v5;
  LODWORD(STACK[0x9EC]) = -282913662;
  v3[275] = v4;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1000CFDCC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = v3[83];
  v5 = v3[109];
  v6 = STACK[0x50C];
  v3[175] = v4;
  LODWORD(STACK[0x534]) = -905392885;
  v3[117] = v5;
  LODWORD(STACK[0x494]) = v6;
  LODWORD(STACK[0x610]) = a2 + 6;
  LODWORD(STACK[0x9DC]) = v6;
  v3[273] = v5;
  LODWORD(STACK[0x9EC]) = -905392885;
  v3[275] = v4;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1000CFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (v34 + 2704) | 0xC40;
  v37 = STACK[0x3F0];
  STACK[0xC58] = STACK[0x3F0];
  LODWORD(STACK[0x760]) = 1418211936;
  return (*(a34 + 8 * ((((v36 - 1125977555) & 0x431CD3DC ^ 0x9D03698E ^ (v36 - 3686647) & 0x9D3B6F68) * (v37 != 0xAB5C364D9808152)) ^ v36)))(v35, a2, &STACK[0x1280]);
}

uint64_t sub_1000CFF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[122] - (((v8 + 7942) ^ 0x11871A30694C4D50) & (2 * v9[122])) + 0x8C38D1834A63647;
  v9[166] = *(a8 + 8 * v8);
  LODWORD(STACK[0xA00]) = -1566617403;
  LOWORD(STACK[0xA06]) = 692;
  v9[278] = 0;
  v9[279] = v9[352];
  v9[280] = v10;
  LODWORD(STACK[0xA20]) = -1240130101;
  LODWORD(STACK[0xA24]) = -1240130109;
  return (*(a8 + 8 * (v8 + 2777)))();
}

uint64_t sub_1000D0150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[83];
  v11 = v9[170];
  v12 = *v11;
  LODWORD(v11) = *(v11 + 8);
  v9[175] = v10;
  LODWORD(STACK[0x534]) = -359547454;
  v9[117] = v12;
  LODWORD(v11) = (v8 ^ 0x341D) - 1240139068 + v11 - ((2 * v11) & 0x6C2A3B96);
  LODWORD(STACK[0x494]) = v11;
  LODWORD(STACK[0x610]) = 268445167;
  LODWORD(STACK[0x9DC]) = v11;
  v9[273] = v12;
  LODWORD(STACK[0x9EC]) = -359547454;
  v9[275] = v10;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000D027C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = STACK[0x3F0];
  v31 = *(STACK[0x6A8] + 16);
  v32 = *(STACK[0x6A8] + 24);
  STACK[0x6D0] = STACK[0x3F0];
  LODWORD(STACK[0x534]) = -377475213;
  STACK[0x500] = v31;
  v33 = (v29 ^ 0x341D) + v32 - 1240139068 - ((2 * v32) & 0x6C2A3B96);
  LODWORD(STACK[0x494]) = v33;
  LODWORD(STACK[0x610]) = a3;
  LODWORD(STACK[0x9DC]) = v33;
  STACK[0x9E0] = v31;
  LODWORD(STACK[0x9EC]) = -377475213;
  STACK[0x9F0] = v30;
  return (*(a29 + 8 * v29))(a1, a2, &STACK[0x1280]);
}

uint64_t sub_1000D0378@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = v3[83];
  v5 = v3[124];
  v6 = STACK[0x6C8];
  v3[175] = v4;
  LODWORD(STACK[0x534]) = 874817529;
  v3[117] = v5;
  LODWORD(STACK[0x494]) = v6;
  LODWORD(STACK[0x610]) = a2 + 1;
  LODWORD(STACK[0x9DC]) = v6;
  v3[273] = v5;
  LODWORD(STACK[0x9EC]) = 874817529;
  v3[275] = v4;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1000D0540@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *(v3 + 1024);
  *(v4 - 0x6BBFEBF589A7D72FLL) = -1240130102;
  *(v3 + 808) = *(v3 + 1368);
  LODWORD(STACK[0x5BC]) = STACK[0x518];
  **(v3 + 1192) = v4;
  LODWORD(STACK[0x764]) = v2;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x584]) = STACK[0x764];
  *(v9 + 1272) = *(v9 + 2544);
  LODWORD(STACK[0x510]) = -2135360481;
  return (*(a8 + 8 * ((v8 + 204916889) ^ 0xA93A104C ^ (25766 * ((v8 + 204916889) < 0x32A16FD0)))))();
}

uint64_t sub_1000D0600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x584];
  LODWORD(STACK[0xC64]) = STACK[0x584];
  return (*(a8 + 8 * ((469 * (v9 == ((v8 + 806730753) & 0xCFEA7FFD) + ((v8 + 4878) ^ 0xAB773AF9))) ^ (v8 + 4878))))();
}

uint64_t sub_1000D0664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[354] = &STACK[0x558];
  v10 = v9[128];
  v9[355] = v10;
  return (*(a8 + 8 * (((v10 != 0x6BBFEBF589A7D72FLL) * (((v8 - 1282916540) & 0x4C77BFBB) - 5201)) ^ v8)))();
}

uint64_t sub_1000D06C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v35 ^ 0x5FC8)))(*(v36 + 2840) - 0x6BBFEBF589A7D72FLL);
  **(v36 + 2832) = v34;
  return (*(a34 + 8 * v35))(a1);
}

uint64_t sub_1000D0710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 1368);
  *(v9 + 2848) = v10;
  return (*(a8 + 8 * ((7 * (((v10 == 0) ^ ((v8 ^ 0x6B) + 1)) & 1)) ^ v8)))();
}

uint64_t sub_1000D074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 ^ 0x5EC8)))(*(v35 + 2848));
  *(v35 + 1368) = 0;
  return (*(a34 + 8 * v34))(a1);
}

uint64_t sub_1000D0788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 872);
  *(v9 + 2856) = v10;
  return (*(a8 + 8 * ((((((v8 + 448245446) ^ 0x1AB7E041) + 6042) ^ (v8 + 448245446) & 0xE54837DB) * (v10 == 0)) ^ v8)))();
}

uint64_t sub_1000D07E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 12636)))(*(v35 + 2856));
  *(v35 + 872) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000D0814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 992);
  *(v9 + 2864) = v10;
  return (*(a8 + 8 * (((((v8 ^ 0x309F) + 5143) ^ (397 * (v8 ^ 0x309F))) * (v10 == 0)) ^ v8)))();
}

uint64_t sub_1000D0854@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = a2 + 11308;
  v30 = (*(a1 + 8 * (a2 + 19014)))(*(v28 + 2864));
  *(v28 + 992) = 0;
  return (*(a28 + 8 * v29))(v30);
}

uint64_t sub_1000D08A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 1024) - 0x6BBFEBF589A7D703) == 24;
  LODWORD(STACK[0x77C]) = STACK[0xC64];
  return (*(a8 + 8 * ((109 * ((v10 ^ (v8 + 119 + v8 + 93 + 1)) & 1)) ^ v8)))();
}

uint64_t sub_1000D0904@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(v2 + 1360);
  *(v2 + 2872) = v3;
  LODWORD(STACK[0x77C]) = STACK[0xC64];
  return (*(a1 + 8 * ((32663 * (v3 != 0)) ^ a2)))();
}

uint64_t sub_1000D095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[359];
  v11 = *v10;
  v9[360] = *v10;
  v9[194] = v10;
  return (*(a8 + 8 * (((v11 != 0) * (v8 - 34758 + 146 * (v8 ^ 0x45A8))) ^ v8)))();
}

uint64_t sub_1000D09A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 2091)))(*(v35 + 2880));
  **(v35 + 1360) = 0;
  *(v35 + 1552) = *(v35 + 1360);
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000D09E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[194];
  v11 = *(v10 + 16);
  v9[361] = v11;
  v9[195] = v10;
  return (*(a8 + 8 * (((v11 == 0) * ((v8 - 1905862418) & 0x7198FD2B ^ (v8 + 1300701135) & 0xB278B7FB ^ 0x1E8)) ^ v8)))();
}

uint64_t sub_1000D0A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 13433)))(v35[361]);
  v37 = v35[170];
  *(v37 + 16) = 0;
  v35[195] = v37;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000D0A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 ^ 0x5E7A)))(*(v35 + 1560));
  *(v35 + 1360) = 0;
  LODWORD(STACK[0x77C]) = STACK[0x584];
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000D0ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x77C]) == (((v8 - 1677511558) | 0x1002940) ^ 0x367408B6);
  LODWORD(STACK[0x780]) = STACK[0x77C];
  return (*(a8 + 8 * ((4911 * v9) ^ v8)))();
}

uint64_t sub_1000D0B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  STACK[0xCA8] = a17 + 32;
  v19 = STACK[0x480];
  STACK[0xCB0] = STACK[0x480];
  v20 = STACK[0x5BC];
  LODWORD(STACK[0xCBC]) = STACK[0x5BC];
  if (v19)
  {
    v21 = v20 == 35459530;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  LODWORD(STACK[0x780]) = 1418211936;
  return (*(a8 + 8 * ((v22 * (v18 ^ (v17 - 1290) ^ ((v18 + 67236474) | 0x99016B40))) ^ (v18 + 1273))))();
}

uint64_t sub_1000D0B9C@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 200);
  *(v11 + 2920) = a11 + 200;
  LOBYTE(STACK[0xCCB]) = v12;
  return (*(a1 + 8 * ((v12 < (a2 + 126)) | a2)))();
}

uint64_t sub_1000D0BD4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = LOBYTE(STACK[0xCCB]);
  v3 = STACK[0xCA8] + 168;
  *(v3 + 8 * v2 + 24) = STACK[0xCB0];
  *(v3 + 4 * v2 + 4) = LODWORD(STACK[0xCBC]) + ((a2 - 543690309) & 0xBD6B6BFE ^ 0x60E18576);
  *STACK[0xCC0] = v2 + 1;
  LODWORD(STACK[0x780]) = -1418238986;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D0C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xCCC]) = STACK[0x780];
  v9 = STACK[0x458];
  STACK[0xCD0] = STACK[0x458];
  return (*(a8 + 8 * (((v9 == 0) * (((v8 + 1660730579) | 0x304) ^ 0x2B0A)) ^ (v8 + 1660735781))))();
}

uint64_t sub_1000D0CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 ^ 0x6147)))(*(v35 + 2936));
  *(v35 + 768) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000D0CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(v10 + 928);
  *(v10 + 2944) = v12;
  LODWORD(STACK[0x7AC]) = STACK[0xCCC];
  return (*(a8 + 8 * (((((v12 == 0) ^ (v8 + 93)) & 1) * ((v8 ^ (v9 + 1837)) + 1660720496)) ^ v8)))(v11);
}

uint64_t sub_1000D0D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 ^ 0x430D)))(*(v35 + 2944));
  LODWORD(STACK[0x7AC]) = STACK[0xCCC];
  return (*(a34 + 8 * v34))(a1);
}

uint64_t sub_1000D0DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 + 3008) = v10;
  LODWORD(STACK[0xD24]) = v9;
  v13 = (v9 - 711681721) + 1503004697;
  v15 = v10 - 0x3DED9A09252A4F26 > ((v8 + 1660729310) ^ 0x59962B06uLL) && v10 - 0x3DED9A09252A4F26 < v13;
  return (*(a8 + 8 * ((12138 * v15) ^ (v11 + v8 + 603))))();
}

uint64_t sub_1000D0E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 1336);
  *(v9 + 3024) = v11;
  LODWORD(STACK[0x784]) = v10;
  return (*(a8 + 8 * (((((v11 == 0) ^ (v8 - 65)) & 1) * (v8 ^ 0x2322)) ^ v8)))();
}

uint64_t sub_1000D0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 ^ 0x2B84;
  v12 = (LODWORD(STACK[0xD24]) | ((LODWORD(STACK[0xD24]) < 0x2A6B66B9) << 32)) + 0x5CD46C1FBC43C510;
  *(v9 + 3032) = v12;
  LODWORD(v12) = v12 - *(v9 + 3008) - 0x1EE6D21667EED494 < (((v11 - 578930845) & 0x2281DFDFu) + 8142) - 16309;
  LODWORD(STACK[0x784]) = v10 + 28;
  return (*(a8 + 8 * ((13909 * v12) ^ v11)))();
}

uint64_t sub_1000D0F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[376];
  v12 = v9[378];
  v13 = v10 - 0x3DED9A097EC05735 + v12;
  v14 = (*(v12 + ((v8 - 8142) ^ 0xC21265F6813FB71CLL) + v10) << 24) | (*(v12 + v10 + (((v8 + 469950549) | 0x81004B40) ^ 0xC21265F61C3CC382)) << 16) | (*(v13 - 8) << 8);
  LODWORD(STACK[0xD3C]) = (v14 | *(v13 - 7)) - 2 * ((v14 | *(v13 - 7)) & 0x36151DCF ^ *(v13 - 7) & 4) - 1240130101;
  LOWORD(v13) = _byteswap_ushort(*(((2 * (v10 - 0x3DED9A097EC0573BLL)) & 0x1FDFFF39BA7F7E7ELL) + ((v10 - 0x3DED9A097EC0573BLL) ^ 0x8FEFFF9CDD3FBF3FLL) + v12 + 0x7010006322C040C1));
  LOWORD(v14) = v13 - 2 * (v13 & 0x635 ^ *(((2 * (v10 - 0x3DED9A097EC0573BLL)) & 0x1FDFFF39BA7F7E7ELL) + ((v10 - 0x3DED9A097EC0573BLL) ^ 0x8FEFFF9CDD3FBF3FLL) + v12 + 0x7010006322C040C2) & 4) - 31180;
  LOWORD(STACK[0xD42]) = v14;
  LOWORD(STACK[0x266]) = v14 - 3;
  v15 = (((2 * (v10 - 0x3DED9A097EC05739)) & 0x3EF3FE7ABFF7D5DALL) + ((v10 - 0x3DED9A097EC05739) ^ 0xDF79FF3D5FFBEAEDLL) + v12 + 0x208600C2A0041513);
  LODWORD(v12) = (*v15 << 24) | (v15[1] << 16) | (v15[2] << 8);
  LODWORD(v15) = (v12 | v15[3]) - 2 * ((v12 | v15[3]) & 0x36151DCF ^ v15[3] & 4) - 1240130101;
  LODWORD(STACK[0xD44]) = v15;
  v16 = (v15 ^ 0xB6151DCB) + v10;
  v9[382] = v16 + 10;
  v17 = v16 - 0x3DED9A08CF53594BLL;
  v18 = v9[379] - 0x5CD46C1F37422DDFLL;
  v20 = v18 > 0xAF6CFDE9 && v17 > v18;
  return (*(a8 + 8 * ((29 * v20) ^ v8)))(a1);
}

uint64_t sub_1000D127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[107] = v12[378] + v12[376] + ((v10 - v11 - 603) ^ (v9 + 9));
  v12[153] = v12[382];
  return (*(a8 + 8 * ((154 * (((v10 - 8) ^ (LODWORD(STACK[0xD3C]) == v8)) & 1)) ^ v10)))();
}

uint64_t sub_1000D13D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v10[378] + v10[376] + v9);
  v12 = (*v11 << 56) | (v11[1] << 48) | (v11[2] << (((v8 - 120) & 0x43) - 24)) | (v11[3] << 32) | (v11[4] << 24) | (v11[5] << 16) | (v11[6] << 8) | v11[7];
  v10[90] = v12 - ((2 * v12) & 0x11871A30694C6C8ELL) + 0x8C38D1834A63647;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000D1528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v13 + 1146;
  v16 = (v13 + 159905781);
  v17 = *(v14 + 3008);
  v18 = *(v14 + 3024);
  v19 = *(v18 + v17 + (v16 ^ (v11 + 12)));
  v20 = (*(v18 + v17 + v10) << 24) | (*(v18 + v17 + v10 + 1) << 16) | (*(v18 + v17 + v10 + 2) << 8) | v19;
  LODWORD(STACK[0x61C]) = v20 + v9 - 2 * (v20 & v12 ^ v19 & 4);
  return (*(a8 + 8 * (v15 ^ v8 ^ (10117 * (v15 < 0x4BB970A3)))))();
}

uint64_t sub_1000D15F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 + 1660728990;
  v12 = v9 + v8 - 2574;
  v13 = v10[173];
  v14 = STACK[0x61C];
  v15 = v10[90];
  v16 = v10[107];
  v10[166] = *(a8 + 8 * v12);
  LODWORD(STACK[0xA00]) = STACK[0xD3C];
  LOWORD(STACK[0xA06]) = STACK[0x266];
  v10[278] = v16;
  v10[279] = v13;
  v10[280] = v15;
  LODWORD(STACK[0xA20]) = v14;
  LODWORD(STACK[0xA24]) = STACK[0xD44];
  return (*(a8 + 8 * ((v11 ^ 0x2B0F) + v12)))();
}

uint64_t sub_1000D16FC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3[156] = v2;
  v3[159] = v3[317];
  LODWORD(STACK[0x510]) = -1465618846;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D176C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  *(v5 + 3064) = v3;
  *(v5 + 1200) = v3;
  LODWORD(STACK[0x790]) = a2;
  return (*(a1 + 8 * (((a2 == ((v4 + v2 - 3310) ^ 0x4DE66388) + 1569783918) * (((v4 + v2 - 3310) | 0x204E) + 6936)) ^ (v2 + 1660728090))))();
}

uint64_t sub_1000D17D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[98];
  v10[130] = v12 - 0x6BBFEBF589A7D6F7;
  v10[93] = v12 - 0x6BBFEBF589A7D6FFLL;
  v10[137] = 0;
  v14 = v10[383] == 0xAB5C364D9808152 || v12 == 0x6BBFEBF589A7D6FFLL;
  LODWORD(STACK[0x790]) = v11;
  return (*(a8 + 8 * ((v14 * (((3 * (v9 ^ 0x289F) + 1210206357) | 0x5C40080) ^ v8)) ^ v9)))();
}

uint64_t sub_1000D1870@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x5C8] = 0x4761F68478C333F5;
  STACK[0x498] = 0x5F42D090F86581AELL;
  v4 = STACK[0xD50] != v2;
  LODWORD(STACK[0x78C]) = v3;
  return (*(a1 + 8 * ((v4 * (((a2 + 1730921704) & 0x98D43EFE ^ 0xFFFFE3A5) + ((a2 + 882044042) & 0xCB6CFBFE))) ^ a2)))();
}

uint64_t sub_1000D1900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xA94]) = v8;
  STACK[0xA98] = &STACK[0x5C8];
  LODWORD(STACK[0xAA0]) = 1862905739;
  return (*(a8 + 8 * (v8 - 7498 + ((v8 - 177) | 0x2000))))();
}

uint64_t sub_1000D1940@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X7>, int a4@<W8>)
{
  v7 = v4 == 0xAB5C364D9808152;
  v6[73] = v4;
  LODWORD(STACK[0x25C]) = STACK[0xAA0];
  v6[74] = v6[296];
  v8 = *(a3 + 8 * SLODWORD(STACK[0xA94]));
  v6[141] = v8;
  v6[299] = v8;
  v9 = v7;
  LODWORD(STACK[0xABC]) = v5;
  return (*(a3 + 8 * ((v9 * ((a4 - 1660729063) ^ (a4 - 1660729099))) | a4)))(0x80A3287483B4C7C9, a1, 0xF8192A75EBF8F29ELL, 0x72B0B1A0EB3E1587, a2, 0x8562C5B0FD26117BLL);
}

uint64_t sub_1000D1A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v9 + v8 + 629;
  v13 = LODWORD(STACK[0x260]) != (v12 ^ 0x3D5A ^ (v11 - 1585));
  LODWORD(STACK[0x78C]) = v11 + 21;
  return (*(a8 + 8 * ((v13 * ((v12 | 4) ^ 0x2318)) ^ (v10 + v8 + 2387))))();
}

uint64_t sub_1000D1AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x260]) == -1418238986;
  LODWORD(STACK[0x78C]) = STACK[0x260];
  return (*(a8 + 8 * (((((518 * (v8 ^ 0x230B)) ^ 0x2955) - 9779) * v9) ^ v8)))();
}

uint64_t sub_1000D1B00@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = STACK[0x5C8];
  v4 = *(STACK[0x5C8] - 0x4761F68478C333DDLL);
  STACK[0xD58] = v4;
  LODWORD(STACK[0xD64]) = *(v3 - 0x4761F68478C333E5);
  STACK[0x570] = v4;
  LODWORD(STACK[0x78C]) = v2;
  return (*(a1 + 8 * ((54 * (((v4 == 0) ^ (a2 + 112)) & 1)) ^ a2)))();
}

uint64_t sub_1000D1B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v8 & 0x9C26BFF3 ^ 0xF55CBA1CA0B9EB4) + LODWORD(STACK[0xD64]) + ((LODWORD(STACK[0xD64]) < 0x18FD695EuLL) << 32);
  STACK[0x6F0] = v10;
  v11 = STACK[0x498];
  STACK[0xD68] = STACK[0x498];
  STACK[0x6F8] = v11;
  LODWORD(STACK[0x78C]) = v9 + 28;
  return (*(a8 + 8 * ((10650 * (v10 - v11 + 0x4FED04EF155C937FLL < (((v8 & 0x9C26BFF3) - 6392) ^ 0xFFFFFFFFFFFFFE8DLL))) ^ v8 & 0x9C26BFF3)))();
}

uint64_t sub_1000D1CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, int a6@<W8>)
{
  v11 = v8 + ((v9 - 0x5F42D090F86581AALL) ^ 0x6FF96B9FF7E6DE7BLL) - 0x6FF96B9FF7E6DE7BLL + (((v9 - 0x5F42D090F86581AALL) << (a6 + 93)) & 0xDFF2D73FEFCDBCF6);
  v6[387] = v11;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((0xD4F4E5F14C1EA78 - v12) & 0x3155E6E371D4A28CLL) + v12 + a3 - ((v12 + a3) & 0x3355E6E371D4A28CLL);
  v14 = v13 ^ 0x6712D096EDAACFA7;
  v13 ^= 0xF2975D91B45A639CLL;
  v15 = __ROR8__(v14, 8);
  v16 = (((2 * (v15 + v13)) & 0x42B72E0FC71A909ALL) - (v15 + v13) - 0x215B9707E38D484ELL) ^ 0xAFD7F7CF878B386BLL;
  v17 = v16 ^ __ROR8__(v13, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x3CED25A7FD3D6C94) - (v18 + v17) - 0x1E7692D3FE9EB64ALL) ^ 0x60AC820B1623523FLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) & 0xD51C261F31283AECLL) - (v21 + v20) - 0x6A8E130F98941D77) ^ 0x5E6E3DF56E71972FLL, 8);
  v23 = (((2 * (v21 + v20)) & 0xD51C261F31283AECLL) - (v21 + v20) - 0x6A8E130F98941D77) ^ 0x5E6E3DF56E71972FLL ^ __ROR8__(v20, 61);
  v24 = (((2 * (v22 + v23)) & 0x67E5D14539A6B3E0) - (v22 + v23) + 0x4C0D175D632CA60FLL) ^ 0xCCAE3F29E09861C6;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a4;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v10;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  LOBYTE(STACK[0xD7F]) = ((0xE05FFA49ABAE0FD4 - ((v30 + v29) | 0xE05FFA49ABAE0FD4) + ((v30 + v29) | 0x1FA005B65451F02BLL)) ^ 0xE7B92FC3BFA902B5) >> (8 * (v11 & 7u));
  v6[389] = v11 + 1;
  v31 = __ROR8__((v11 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((0xD4F4E5F14C1EA78 - v31) & 0x3D9236DAA7C2E47FLL) + v31 + a3 - ((v31 + a3) & 0x399236DAA7C2E47FLL);
  v33 = v32 ^ 0x69D500AF3BBC8954;
  v32 ^= 0xFC508DA8624C256FLL;
  v34 = (__ROR8__(v33, 8) + v32) ^ 0x71739F379BF98FD9;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0x5826CDB5EC674BFALL) - 0x53EC992509CC5A03) ^ 0xD2C976021E8E4188;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0x7107CA4467DAA2B3 - ((v39 + v38) ^ 0x90985294394D5C8BLL | 0x7107CA4467DAA2B3) + ((v39 + v38) ^ 0x90985294394D5C8BLL | 0x8EF835BB98255D4CLL)) ^ 0xD57FB62AA8727461;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a1;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = __ROR8__((((2 * (v44 + v43)) & 0xDF117294C14ABF8CLL) - (v44 + v43) - 0x6F88B94A60A55FC7) ^ 0x15158305627CB142, 8);
  v46 = (((2 * (v44 + v43)) & 0xDF117294C14ABF8CLL) - (v44 + v43) - 0x6F88B94A60A55FC7) ^ 0x15158305627CB142 ^ __ROR8__(v43, 61);
  LOBYTE(STACK[0xD8F]) = ((__ROR8__((v45 + v46) ^ v10, 8) + ((v45 + v46) ^ v10 ^ __ROR8__(v46, 61))) ^ a2) >> (8 * ((v11 + 1) & 7));
  v47 = v6[180] - 0x5F42D090F86581A8;
  v6[391] = v6[131];
  v6[392] = (v47 ^ 0xAFA7FBF3FFBFEEEFLL) + 0x5FDCA5DF9CCEDF5FLL + ((2 * v47) & 0x5F4FF7E7FF7FDDDELL);
  v6[310] = v7;
  return (*(a5 + 8 * a6))(a1, 0x72B0B1A0EB3E1587);
}

uint64_t sub_1000D2958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  STACK[0xB08] = v32;
  LOWORD(STACK[0x6E6]) = a5;
  return (*(a8 + 8 * (((v33 != LODWORD(STACK[0x25C])) * ((a32 + 1660727227) ^ 0x1AB5)) ^ (a32 + 1660723303))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000D2A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v45 = *v38;
  *(v43 + 1184) = *v38;
  LODWORD(STACK[0xAA4]) = v42 + 21;
  *(v43 + 2384) = v41;
  return (*(a8 + 8 * (((v45 == v41) * (((v40 + v39 + 484) ^ 0x23ED) - 274)) ^ (v39 + 1660734191))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1000D2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  STACK[0xB08] = v32;
  LOWORD(STACK[0x6E6]) = a5;
  v34 = STACK[0x6F8];
  STACK[0xDA0] = STACK[0x6F8] - 0x5F42D090F86581A4;
  v35 = (v33 ^ 0xB6151DCB) + v34;
  STACK[0xDA8] = v35 + 10;
  v35 -= 0x5F42D0909EFEB5A4;
  v36 = STACK[0x6F0] - 0xF55CBA189A22225;
  v37 = v35 < 0x5966CC00;
  v38 = v35 > v36;
  if (v36 < 0x5966CC00 != v37)
  {
    v38 = v37;
  }

  LODWORD(STACK[0x78C]) = 1418211964;
  return (*(a8 + 8 * ((v38 * (((a32 + 1660720410) | 0x1E00) ^ 0x1FAB)) ^ (a32 + 1660729269))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000D2C20@<X0>(uint64_t a1@<X7>, __int16 a2@<W8>)
{
  v3 = v2 + 1660735268;
  v4 = v2 + 1660784700;
  v5 = (a2 & ((v2 - 28612) ^ a2) | (a2 - (v2 - 28612)) & ~((v2 - 28612) ^ a2)) >> (v2 - 49);
  return (*(a1 + 8 * ((2 * (v5 & 1)) & 0xDF | (32 * (v5 & 1)) | (v3 + 44612) ^ v4)))();
}

uint64_t sub_1000D2CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xAA4]) = -1418238986;
  *(v9 + 2384) = v10;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000D2D30@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = STACK[0xAA4];
  **(v2 + 592) = *(v2 + 2384);
  *(v2 + 2392) = *(v2 + 1128);
  LODWORD(STACK[0xABC]) = v3;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D2E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x4A0];
  STACK[0x240] = STACK[0x4A0];
  v11 = *(v10 - 0x4761F68478C333EDLL);
  v12 = STACK[0x408];
  STACK[0x270] = v11;
  STACK[0x278] = v12;
  STACK[0x288] = v12 - 0x4761F68478C333EDLL;
  *(v12 - 0x4761F68478C333EDLL) = v11;
  v13 = v10 - 0x4761F68478C333F5;
  v14 = *(v10 - 0x4761F68478C333F5);
  *(v12 - 0x4761F68478C333F5) = v14;
  STACK[0x2A8] = v13;
  STACK[0x2B0] = v12 - 0x4761F68478C333F5;
  STACK[0xA38] = v14;
  return (*(a8 + 8 * (((((v8 - 83) ^ (v11 == v9)) & 1) * (((v8 + 402785268) | 0x23A40003) - 1000751192)) ^ v8)))();
}

uint64_t sub_1000D2F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(v10 + 280) + v9) = *(v10 + 288);
  *(v10 + 2272) = **(v10 + 344);
  return (*(a8 + 8 * ((742 * (v8 < 0x7139F8B6)) ^ 0x9AAu)))();
}

uint64_t sub_1000D2F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 2272);
  *(v9 + 352) = v11;
  return (*(a8 + 8 * ((((v11 == v10) ^ ((v8 + 115) ^ (v8 + 80))) & 1 | (8 * (((v11 == v10) ^ ((v8 + 115) ^ (v8 + 80))) & 1))) ^ v8)))();
}

uint64_t sub_1000D3090@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (v2[29] - 0x4761F68478C333DDLL);
  v4 = *v3;
  v2[45] = v3;
  v2[46] = v4;
  return (*(a1 + 8 * (((v4 == 0) * ((((a2 - 611353374) & 0x2470667B) + 5674) ^ 0x3A88)) ^ a2)))();
}

uint64_t sub_1000D30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 + 9705)))(*(v35 + 368));
  **(v35 + 360) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000D3184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 - 736481469)))(STACK[0x2A8]);
  STACK[0x4A0] = v37;
  return (*(a34 + 8 * (v34 ^ 0x2BE61B9E ^ ((v34 < 0xF4FD188B) * ((v34 + 1897746480) ^ (v35 - 1375))))))(v36);
}

uint64_t sub_1000D31FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X7>, int a3@<W8>)
{
  v5 = STACK[0x418];
  STACK[0x200] = STACK[0x418];
  v6 = v5 - 0xAB5C364D980814ALL;
  v7 = *(v5 - 0xAB5C364D980814ALL);
  STACK[0x210] = v6;
  STACK[0x238] = v7;
  return (*(a2 + 8 * (((v7 == v4) * (a3 ^ 0x3396 ^ (a3 - 1269559023) & 0x4BABBF6C)) ^ a3)))(v3, a1, &STACK[0x1280]);
}

uint64_t sub_1000D3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  **(v10 + 184) = v8;
  *(*(v10 + 168) - 0xAB5C364D9808152) = v8;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_1000D32D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(v10 + 224) - 0x4761F68478C333F5) = v9;
  v11 = *(v10 + 184);
  *(v9 - 0x4761F68478C333EDLL) = *v11;
  *v11 = v9;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000D33E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  STACK[0x498] = STACK[0xDA8];
  *STACK[0x568] = a36;
  LODWORD(STACK[0x78C]) = v37 + 20;
  return (*(a8 + 8 * v36))();
}

uint64_t sub_1000D347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v38 = STACK[0x570] + STACK[0xDA0];
  STACK[0x498] = STACK[0xDA8];
  *STACK[0x568] = a36;
  STACK[0x5A0] = v38;
  LODWORD(STACK[0x78C]) = v37 + 2;
  return (*(a8 + 8 * (((v38 == 0) * (((v36 - 12930) ^ 0x479E) + ((v36 - 12930) | 0x1808) - 24562)) ^ v36)))();
}

uint64_t sub_1000D34E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = STACK[0x568];
  STACK[0xDB0] = STACK[0x568];
  v37 = (*(a8 + 8 * (v34 ^ 0xB9A)))(((v34 ^ 0x55FA) + 2596) ^ *v36 ^ 0xB6150391);
  STACK[0xDB8] = v37;
  LODWORD(STACK[0x78C]) = v35;
  return (*(a34 + 8 * ((974 * (v37 == 0)) ^ v34)))();
}

uint64_t sub_1000D3558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x78C];
  *STACK[0x440] = 0;
  *STACK[0x568] = -1240130101;
  LODWORD(STACK[0x790]) = v10;
  return (*(a8 + 8 * v8))(v9);
}

uint64_t sub_1000D359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x460]) = STACK[0x790];
  *(v9 + 1272) = *(v9 + 2568);
  LODWORD(STACK[0x510]) = 1489865180;
  return (*(a8 + 8 * ((25769 * (v8 >= ((v8 - 1155864904) | 0x94022100) - 1044750719)) ^ (v8 - 1306935283))))();
}

uint64_t sub_1000D36F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = *(v11 + 1272);
  *(v11 + 3544) = v13;
  return (*(a8 + 8 * (((v13 == v12) * ((v8 + a7) & v9 ^ v10)) ^ (a4 + v8 - 1399))))();
}

uint64_t sub_1000D3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v11[443] - 0x96EE636C8092107);
  v13 = *v12;
  v11[444] = v12;
  v11[445] = v13;
  v11[91] = v13;
  return (*(a8 + 8 * (((v13 == v10) * ((v9 + ((v8 - 1795091080) ^ 0x950160E6) + 2136) ^ ((v8 - 1795091080) | 0x8024A40))) ^ v8)))();
}

uint64_t sub_1000D379C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = v3[445];
  v5 = *(v4 - 0xAB5C364D9808152);
  v3[446] = v5;
  v3[204] = v4;
  return (*(a1 + 8 * (((v5 + v2 == 0x482A317499B77DB0) * (((a2 ^ 0xEA021B55) + 368963015) ^ 0x4B82)) ^ a2)))();
}

uint64_t sub_1000D3934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (*(a8 + 8 * (v34 ^ 0x74CD)))(v35);
  *v36 = 0;
  return (*(a34 + 8 * v34))(v37);
}

uint64_t sub_1000D3968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  STACK[0x7B0] = v23;
  STACK[0xF50] = v24;
  STACK[0xF58] = v23;
  STACK[0xF60] = v26;
  STACK[0xF68] = v25;
  STACK[0x7B8] = STACK[0x430];
  return (*(a8 + 8 * (v22 ^ 0xF7832317 ^ (14428 * (v22 >= v22 - 2122485110)))))(a22);
}

uint64_t sub_1000D39F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = (v35 + v34 + v36 + 435 - 2902) | 0xA01;
  (*(a8 + 8 * (v36 + 473)))(*(v37 + 1632) - 0xAB5C364D9808152);
  return (*(a34 + 8 * (((*(v37 + 3544) != v38) * (v39 - 2719)) ^ v36)))(a1, 2829344881, 1929483180, 1660739347, 1660735268, 1489861611, 3467039855);
}

uint64_t sub_1000D3CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = LODWORD(STACK[0x460]) == -1418238986;
  LODWORD(STACK[0x7AC]) = STACK[0x460];
  return (*(a8 + 8 * ((v10 * (v9 + (v8 ^ 0x9D0372E4) + 9199)) ^ v8)))();
}

uint64_t sub_1000D3CFC@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 392) |= ((v11 - 1862058734) | 0xC002140u) ^ 0x9D036B48;
  LODWORD(STACK[0x7AC]) = a2;
  return (*(a1 + 8 * (v11 - 913)))();
}

uint64_t sub_1000D3D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 + 8017;
  v11 = (v8 - 39362087) & 0x9F5BFB75;
  v12 = STACK[0x564];
  LODWORD(STACK[0xDF8]) = STACK[0x564];
  v13 = v12 == v11 + 242481334;
  v14 = v12 != v11 + 242481334;
  v15 = v13;
  LOBYTE(STACK[0xDFF]) = v15;
  v16 = *(v9 + 1256);
  *(v9 + 3240) = v16;
  if (!v16)
  {
    v14 = 0;
  }

  return (*(a8 + 8 * ((v14 | (4 * v14)) ^ v10)))();
}

uint64_t sub_1000D3DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 1016);
  *(v9 + 3248) = v10;
  return (*(a8 + 8 * ((v8 + 1660730083) | (8 * (v10 != 0)))))();
}

uint64_t sub_1000D3E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = a3 + v30 + 1432;
  (*(a2 + 8 * (v30 ^ v29)))(*(v31 + 3248));
  return (*(a29 + 8 * v32))(a1);
}

uint64_t sub_1000D3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v10 + 848);
  *(v10 + 3256) = v11;
  return (*(a8 + 8 * ((((((v8 - 1211829010) | 0x83238310) + 672409119) ^ 0x954) * (v11 != 0)) | (v9 + v8 - 106))))();
}

uint64_t sub_1000D3F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19[408] = a17 + 32;
  v20 = v19[154];
  v19[409] = v20;
  v21 = STACK[0x4F4];
  LODWORD(STACK[0xE2C]) = STACK[0x4F4];
  if (v20)
  {
    v22 = v21 == 35459530;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;
  LODWORD(STACK[0x7AC]) = v18;
  return (*(a8 + 8 * (((((((v17 ^ 0x9D03560E) + 1660726884) ^ v23) & 1) == 0) | (32 * (((((v17 ^ 0x9D03560E) + 1660726884) ^ v23) & 1) == 0))) ^ v17)))();
}

uint64_t sub_1000D3FD0@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 200);
  *(v11 + 3288) = a11 + 200;
  LOBYTE(STACK[0xE3F]) = v12;
  return (*(a1 + 8 * (((v12 < 4) * (((a2 - 1862078564) | 0xC006200) ^ 0x9D0345A9)) ^ a2)))();
}

uint64_t sub_1000D4024@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = LOBYTE(STACK[0xE3F]);
  v4 = *(v2 + 3264) + 168;
  *(v4 + 8 * v3 + 24) = *(v2 + 3272);
  *(v4 + 4 * v3 + 4) = LODWORD(STACK[0xE2C]) - 35459530;
  **(v2 + 3288) = a2 - 100 + v3 - 63;
  LODWORD(STACK[0x7AC]) = -1418238986;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D4098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0xDC0] = STACK[0x5A0];
  v9 = (*STACK[0xDB0] ^ 0xB6151DCB) - (((*STACK[0xDB0] ^ 0xB6151DCB) << (((v8 - 107) & 0x74) - 63)) & 0x1F5F7B7A) + 263175613;
  v10 = (v9 ^ 0x12520052) - 283119744 + ((2 * v9) & 0x3BFB7BDE ^ 0x1B5B7B5A);
  LODWORD(STACK[0xDCC]) = v10;
  return (*(a8 + 8 * (((4 * (v10 == 220048751)) | (8 * (v10 == 220048751))) ^ v8)))();
}

uint64_t sub_1000D4290(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = v21;
  v25 = (v21 - 220048752);
  v26 = __ROR8__((v12 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 + v15) | 0x284F60685A281A72) - ((v26 + v15) | v10) + v10;
  v28 = v27 ^ 0x7C08561DC6567759;
  v27 ^= 0xE98DDB1A9FA6DB62;
  v29 = __ROR8__(v28, 8);
  v30 = ((a3 | (2 * (v29 + v27))) - (v29 + v27) + a4) ^ a5;
  v31 = v30 ^ __ROR8__(v27, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v11 - ((v32 + v31) | v11) + ((v32 + v31) | a6)) ^ a7;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v14;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ v20;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((a8 | (2 * (v40 + v39))) - (v40 + v39) + v16) ^ v17;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v23;
  *(a1 + v25) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ v13) >> (8 * ((v12 + v25) & 7))) ^ *(v12 + v25);
  return (*(v22 + 8 * (((v18 + v24 + v8 - 3311 == a2) * v19) ^ v9)))();
}

uint64_t sub_1000D43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *STACK[0x440] = STACK[0xDB8];
  *(STACK[0x468] - 0x6BBFEBF589A7D72FLL) = -1240130103;
  LODWORD(STACK[0x790]) = -1418238986;
  return (*(a34 + 8 * (v34 + 1660728090)))(a22);
}

uint64_t sub_1000D4474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x127C]) == ((v8 + 6763) | 0x111) - 1418248095;
  LODWORD(STACK[0x794]) = STACK[0x127C];
  return (*(a8 + 8 * ((v9 * (((v8 - 2073) | 0x4A3) ^ 0x1D47)) ^ v8)))();
}

uint64_t sub_1000D44F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(a8 + 8 * a9);
  v66[52] = v65;
  v66[92] = v68;
  v66[287] = v68;
  LODWORD(STACK[0xA5C]) = v67;
  return (*(a8 + 8 * ((41 * (v65 != 0xAB5C364D9808152)) ^ v64)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_1000D4588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74[166] = *(a8 + 8 * v73);
  LODWORD(STACK[0xA00]) = -227852770;
  LOWORD(STACK[0xA06]) = 4422;
  v74[278] = 0;
  v74[279] = v74[52];
  v74[280] = 0x8C38D1834A63647;
  LODWORD(STACK[0xA20]) = a72;
  LODWORD(STACK[0xA24]) = v72 + 4;
  return (*(a8 + 8 * (((v73 - 957612763) & 0x391421DE ^ 0x2B09) + v73)))();
}

uint64_t sub_1000D4604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = LODWORD(STACK[0x20C]) == v8 + 1660735712 + ((v8 + 1298187423) & 0x159BF3B5) - 1418263487;
  LODWORD(STACK[0x794]) = STACK[0x20C];
  return (*(a8 + 8 * ((5706 * v10) ^ (v9 + v8 - 1237))))();
}

uint64_t sub_1000D46AC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = v2[138];
  v4 = v2[106];
  v5 = STACK[0x464];
  v2[175] = v3;
  LODWORD(STACK[0x534]) = 874817529;
  v2[117] = v4;
  LODWORD(STACK[0x494]) = v5;
  LODWORD(STACK[0x610]) = 268445163;
  LODWORD(STACK[0x9DC]) = v5;
  v2[273] = v4;
  LODWORD(STACK[0x9EC]) = 874817529;
  v2[275] = v3;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x127C]) == ((v8 - 953752636) & 0x38D937B7) - 1418248095;
  LODWORD(STACK[0x794]) = STACK[0x127C];
  return (*(a8 + 8 * ((v9 * ((v8 - 1954900058) & 0x7485775A ^ 0xE8D)) ^ v8)))();
}

uint64_t sub_1000D4780@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = v2[126];
  v4 = *(v3 - 0x6BBFEBF589A7D6FFLL);
  v5 = v2[138];
  LODWORD(v3) = *(v3 - 0x6BBFEBF589A7D6F7);
  v2[175] = v5;
  LODWORD(STACK[0x534]) = 1862905739;
  v2[117] = v4;
  LODWORD(STACK[0x494]) = v3;
  LODWORD(STACK[0x610]) = 268445156;
  LODWORD(STACK[0x9DC]) = v3;
  v2[273] = v4;
  LODWORD(STACK[0x9EC]) = 1862905739;
  v2[275] = v5;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LODWORD(STACK[0x127C]) == -1418238986;
  LODWORD(STACK[0x794]) = STACK[0x127C];
  return (*(a8 + 8 * ((v9 * (((v8 - 1123) ^ 0x2023) + 6376)) ^ v8)))();
}

uint64_t sub_1000D4880@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v6[57] = v5;
  v6[58] = v3;
  v8 = *(a1 + 8 * a2);
  v6[60] = v4;
  v6[61] = v8;
  LODWORD(STACK[0xA90]) = v7;
  return (*(a1 + 8 * (((v3 == 0xAB5C364D9808152) * ((v2 + 2855) ^ (v2 + 2846))) ^ v2)))();
}

uint64_t sub_1000D4910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = (v15[58] - 0xAB5C364D9808152);
  v17 = *v16;
  v15[62] = v16;
  v15[64] = v17;
  LODWORD(STACK[0xA6C]) = 1330191922;
  return (*(a8 + 8 * (((v17 != 0x4761F68478C333F5) * (462 * (v14 ^ 0x3298) - 6893)) ^ v14)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000D4990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0xA60] = STACK[0x358];
  LODWORD(STACK[0xA68]) = v35;
  return (*(a34 + 8 * v34))(0xB89E097B873CCC1BLL, 3144355038);
}

uint64_t sub_1000D4A3C(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v12 = a4 - *(v10 + a1);
  v13 = v8 + a2 > v12;
  if (v8 + a2 < v5 != v12 < v5)
  {
    v13 = v8 + a2 < v5;
  }

  return (*(v11 + 8 * ((!v13 * ((v6 + v7) & v9 ^ a5)) ^ v6)))();
}

uint64_t sub_1000D4AD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0xA68]) = v8;
  LODWORD(STACK[0x21C]) = a7;
  STACK[0xA60] = v9;
  STACK[0x368] = a3;
  LODWORD(STACK[0x22C]) = a8;
  LODWORD(STACK[0xA6C]) = v8;
  return (*(v11 + 8 * v10))();
}

uint64_t sub_1000D4B04@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = STACK[0xA6C];
  LODWORD(STACK[0x230]) = STACK[0xA6C];
  v28 = (((a1 - 1113891725) & 0xDF67EF51) + 1660720335) & v27 ^ 8;
  LODWORD(STACK[0x234]) = v28;
  LODWORD(STACK[0xA90]) = 1418211964;
  return (*(a27 + 8 * ((14882 * (16 - v28 + (v27 - 1330191922) < ((a1 - 6007) ^ 0xFFFFF7F2uLL))) ^ a1)))(a15);
}

uint64_t sub_1000D4BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = (v35 - v36 + 1258) ^ 0x9D0355B8;
  v40 = LODWORD(STACK[0x230]) - LODWORD(STACK[0x234]);
  LODWORD(STACK[0x24C]) = v40 - 1294732366;
  v42 = (*(a8 + 8 * (v35 | 0x4252)))(v40 + (v39 ^ v34));
  *(v38 + 536) = v42;
  LODWORD(STACK[0xA90]) = v37 + 2;
  return (*(a34 + 8 * ((199 * (v42 != 0)) ^ v35)))(a1);
}

uint64_t sub_1000D4C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = **(v10 + 496);
  *(v10 + 544) = v11;
  LODWORD(STACK[0xA84]) = 777609170;
  return (*(a8 + 8 * (((25 * (v9 ^ 0xE1)) ^ (v11 == v8)) & 1 ^ v9)))();
}

uint64_t sub_1000D4C9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0xA70] = STACK[0x378];
  LODWORD(STACK[0xA78]) = a2;
  return (*(a34 + 8 * ((v34 - 910721125) & 0x364879FE)))(73379480);
}

uint64_t sub_1000D503C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, uint64_t a35)
{
  v50 = (v35 ^ 0x62FC94BFu) + v49;
  v51 = v50 + v38 + ((v50 < a2) << 32);
  v52 = __ROR8__((v36 + v51) & 0xFFFFFFFFFFFFFFF8, 8);
  v53 = ((v52 + v43) & v42 ^ a1) + ((v52 + v43) & a7 ^ a4) - 1;
  v54 = v53 ^ v45;
  v53 ^= 0xF10ABB52F2CE107CLL;
  v55 = __ROR8__(v54, 8);
  v56 = __ROR8__((v47 - (v55 + v53) + (v39 & (2 * (v55 + v53)))) ^ v37, 8);
  v57 = (v47 - (v55 + v53) + (v39 & (2 * (v55 + v53)))) ^ v37 ^ __ROR8__(v53, 61);
  v58 = (v56 + v57) ^ v41;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xCB1FD105091A75A6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ v40;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ a8;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v48 - ((v66 + v65) | v48) + ((v66 + v65) | a6)) ^ v46;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  *(a3 + v51 + a9) = (((0xCA800127C0E26277 - (v69 + v68) + (v44 | (2 * (v69 + v68)))) ^ 0xCD66D4ADD4E56F17) >> (8 * ((v36 + v51) & 7))) ^ *(v36 + v51);
  return (*(a35 + 8 * (((v50 == a2) * a5) ^ a34)))();
}

uint64_t sub_1000D51D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  LODWORD(STACK[0xA68]) = a7;
  LODWORD(STACK[0x21C]) = a7;
  STACK[0xA60] = a3;
  STACK[0x368] = a3;
  LODWORD(STACK[0x22C]) = a8;
  LODWORD(STACK[0xA90]) = 1418211964;
  LODWORD(STACK[0xA6C]) = v22;
  return (*(v25 + 8 * (v23 + v24)))(a22);
}

uint64_t sub_1000D5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = STACK[0xA84];
  v36 = (((v34 - 1878964593) | 0xD020940) ^ (v34 + 1285926909)) + LODWORD(STACK[0xA84]);
  v37 = STACK[0x370];
  *(((2 * v36) & 0x1B69B6FFCLL) + (v36 ^ 0x3AB765F3DB4DB7FELL) + v37 - 0x3AB765F3DB4DB7FELL) = 0;
  v35 -= 777609170;
  *(((2 * (v35 + 4)) & 0x15FF4BFCELL) + ((v35 + 4) ^ 0x6DFFCED7AFFA5FE7) + v37 - 0x6DFFCED7AFFA5FE7) = -9392;
  v38 = LODWORD(STACK[0x234]);
  v39 = ((2 * (v35 + 6)) & 0x1FF7D7F6CLL) + ((v35 + 6) ^ 0xBFFAE7BBFFBEBFB6) + v37 + 0x400518440041404ALL;
  *v39 = 0;
  *(v39 + 2) = 0;
  *(v39 + 3) = (-69 - v38 - ((-2 * v38) & 0x16)) ^ 0xAB;
  STACK[0x398] = v37 + (v35 + 10);
  v40 = ((16 - v38) ^ 0x7138FD6FDD9D0D9FLL) + 2 * (16 - v38) - 0x7138FD6FB7CCF25CLL;
  STACK[0x220] = v40;
  LOBYTE(STACK[0x12A2]) = v40 < 0x25D01B43;
  return (*(a34 + 8 * ((15 * (((16 - v38) ^ 0x7138FD6FDD9D0D9FLL) + 2 * (16 - v38) == 0x7138FD6FDD9D0D9FLL)) ^ v34)))();
}

uint64_t sub_1000D54E4(uint64_t a1, uint64_t a2)
{
  *(v7 + v2) = 0;
  if (v4 != v6 < v8)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6 < v5;
  }

  return (*(a2 + 8 * ((!v10 * v9) ^ v3)))();
}

uint64_t sub_1000D5544@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *STACK[0x338] = STACK[0x370];
  *STACK[0x320] = STACK[0x24C];
  LODWORD(STACK[0xA90]) = -1418238986;
  return (*(a27 + 8 * (a1 + 1660722372)))(a15);
}

uint64_t sub_1000D55B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  v34 = LODWORD(STACK[0x258]) == ((a32 + 465809567) & 0x4738EC39 ^ (v33 + 2041));
  LODWORD(STACK[0x794]) = STACK[0x258];
  return (*(a8 + 8 * ((11052 * v34) ^ (v32 + a32 - 1237))))();
}

uint64_t sub_1000D561C@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  *(v3 + 1232) = *(v3 + 1256);
  LODWORD(STACK[0x4F4]) = STACK[0x6E0];
  LODWORD(STACK[0x794]) = v2;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000D5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x564]) = STACK[0x794];
  *(v9 + 1272) = *(v9 + 2528);
  LODWORD(STACK[0x510]) = -795877211;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000D5690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v9[275];
  v9[545] = v11;
  LODWORD(STACK[0x126C]) = STACK[0x9EC];
  v9[547] = v9[273];
  LODWORD(STACK[0x1278]) = STACK[0x9DC];
  LODWORD(STACK[0x9FC]) = v10;
  return (*(a8 + 8 * (((v11 == 0xAB5C364D9808152) * ((v8 - 370133834) & 0x160FEFFF ^ 0x47AD)) | v8)))();
}

uint64_t sub_1000D5700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 - 8229;
  v9[166] = *(a8 + 8 * v10);
  LODWORD(STACK[0xA00]) = STACK[0x126C];
  LOWORD(STACK[0xA06]) = -10518;
  v9[278] = v9[547];
  v9[279] = v9[545];
  v9[280] = 0x8C38D1834A63647;
  LODWORD(STACK[0xA20]) = -1240130101;
  LODWORD(STACK[0xA24]) = STACK[0x1278];
  return (*(a8 + 8 * (v10 - 5903 + (v10 ^ 0x233C))))();
}

uint64_t sub_1000D5778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = STACK[0xA24];
  v61[549] = v61[280];
  v64 = v61[279];
  *(a3 + 8) = v61[278];
  LOWORD(STACK[0x3BE]) = STACK[0xA06];
  v61[88] = v64;
  v65 = v63 ^ 0xB6151DCA;
  v67 = v64 != 0xAB5C364D9808152 && v65 < v60 + (a9 ^ 0x9D034A9E) - 3320;
  LODWORD(STACK[0xA4C]) = v62;
  return (*(a8 + 8 * ((v67 * ((a9 + 2012331548) & 0x880E37CF ^ 0x905)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1000D582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (*(a8 + 8 * (v34 ^ 0x5D9C)))(32);
  STACK[0x1290] = v37;
  STACK[0x1298] = &STACK[0x408];
  STACK[0x408] = v37 + 0x4761F68478C333F5;
  LODWORD(STACK[0xA48]) = v35 + 2;
  return (*(a34 + 8 * (((v37 == 0) * ((v34 ^ 0xFFFFD7EC) + v34 + 10288)) ^ v34)))(a1);
}

uint64_t sub_1000D58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(a3 + 16);
  *v71 = v66;
  *(v71 + 8) = v66;
  v72 = ((((v67 - 16197) | 0x14A) + (a66 ^ 0xB6151DCB) - 501) ^ 0xFCFF6F5E) + 469629440 + ((2 * (((v67 - 16197) | 0x14A) + (a66 ^ 0xB6151DCB) - 501)) & 0xF9FEDEBC);
  *(v71 + 16) = v72;
  v73 = (*(a8 + 8 * (v67 ^ 0x75AC)))(v72 - 419260766);
  *(v71 + 24) = v73;
  *(v70 + 120) = v71 + 24;
  LODWORD(STACK[0xA48]) = v68;
  return (*(a34 + 8 * ((32741 * ((((v67 + 402785094) ^ (v73 == 0)) & 1) == 0)) ^ v67)))(v69);
}

uint64_t sub_1000D59B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x3BE];
  LOBYTE(STACK[0x3C6]) = HIBYTE(LOWORD(STACK[0x3BE]));
  LOBYTE(STACK[0x3C7]) = v69;
  *(a3 + 33) = a66 == ((v68 - 36443667) & 0x9F2F7F53) + 420590223;
  STACK[0xB10] = 0x2FC92220EDE8F7EBLL;
  return (*(a8 + 8 * (v68 ^ 0x1C54)))(a68, 0x71739F379BF98FD9);
}

uint64_t sub_1000D5B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, unsigned int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  v61 = *v56;
  v62 = __ROR8__((*v56 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = (0xD4F4E5F14C1EA78 - v62) & 0x4CD81EFE8FE3B1B9 | (v62 + v57) & 0xB327E101701C4E46;
  v64 = v63 ^ 0x189F288B139DDC92;
  v63 ^= 0x8D1AA58C4A6D70A9;
  v65 = (__ROR8__(v64, 8) + v63) ^ (245 * (v59 ^ 0x9D036B5F) + 0x71739F379BF9722ELL);
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v54;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v53;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (0x92E4A3411F6E8015 - (v71 + v70) + ((2 * (v71 + v70)) & 0xDA36B97DC122FFD4)) ^ 0x12478B359CDA47DCLL;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ a7;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ v55;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  *(v61 + 4) = a32 ^ (((0xCB780470BF1608E0 - (v78 + v77) + ((2 * (v78 + v77)) & 0x690FF71E81D3EE3ELL)) ^ 0x33612E0554EEFA7ELL) >> (8 * ((*v56 + 4) & 7u)));
  v79 = __ROR8__((v61 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = ((2 * (v79 + v57)) | 0x587B403F710B33CALL) - (v79 + v57) - 0x2C3DA01FB88599E5;
  v81 = v80 ^ 0x787A966A24FBF4CELL;
  v80 ^= 0xEDFF1B6D7D0B58F5;
  v82 = __ROR8__(v81, 8);
  v83 = __ROR8__((v82 + v80 - 0x256A85BF10A095C3 - ((2 * (v82 + v80)) & 0xB52AF481DEBED47ALL)) ^ 0xABE6E57774A6E5E4, 8);
  v84 = (v82 + v80 - 0x256A85BF10A095C3 - ((2 * (v82 + v80)) & 0xB52AF481DEBED47ALL)) ^ 0xABE6E57774A6E5E4 ^ __ROR8__(v80, 61);
  v85 = (0xB7E05D65A04B551FLL - (v83 + v84) + ((2 * (v83 + v84)) & 0x903F4534BF6955C0)) ^ 0xC93A4DBD48F6B16ALL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (0x51E7C05FB37FA406 - (v87 + v86) + ((2 * (v87 + v86)) & 0x5C307F409900B7F2)) ^ 0x9AF8115ABA65D1A0;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ v58;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (0x5E4EF690E20CD2B0 - ((v92 + v91) ^ 0xEF0BBF44D834E002 | 0x5E4EF690E20CD2B0) + ((v92 + v91) ^ 0xEF0BBF44D834E002 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v55;
  v96 = __ROR8__(v95, 8);
  v97 = __ROR8__(v94, 61);
  *(v61 + 5) = a30 ^ (((0x6364763FED754C16 - (v96 + (v95 ^ v97)) + ((2 * (v96 + (v95 ^ v97))) | 0x39371380251567D4)) ^ 0x6482A3B5F9724174) >> (8 * ((v61 + 5) & 7)));
  *(v60 + 2256) = 0x2FC92220EDE8F7F1;
  return (*(a8 + 8 * (v59 + 1660736389)))(a34, a2, &a53);
}

uint64_t sub_1000D5F88@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, unsigned int a32)
{
  v44 = *v36 + *(a3 + 2488) - 0x2FC92220EDE8F7EBLL;
  v45 = __ROR8__(v44 & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = ((v45 + v37) | 0x4473AF4093FD868BLL) - ((v45 + v37) | v33) + v33;
  v47 = __ROR8__(v46 ^ 0x103499350F83EBA0, 8);
  v46 ^= 0x85B114325673479BLL;
  v48 = (v47 + v46) ^ a2;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (a5 - ((v50 + v49) | a5) + ((v50 + v49) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v32;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (v55 + v54 - 0x4FE740C0E8350C19 - ((2 * (v55 + v54)) & 0x60317E7E2F95E7CELL)) ^ 0x30BB974B947E342ELL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ a6;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = *(a7 + 8 * v40);
  v61 = (__ROR8__(v58, 8) + v59) ^ v35;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  LOBYTE(v62) = (((0x5C47E569B8209F6FLL - ((v63 + v62) ^ 0x43F178B4D98B7452) + ((2 * ((v63 + v62) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122)) ^ 0x1850485775ACE65DuLL) >> (8 * (v44 & 7u))) ^ HIBYTE(a1) ^ 0xB6;
  v64 = __ROR8__((v44 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v44 = v62;
  v65 = ((2 * ((v64 + v37) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v64 + v37) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v66 = v65 ^ a4;
  v65 ^= 0x6FE7E81F940BC046uLL;
  v67 = (__ROR8__(v66, 8) + v65) ^ a2;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v34;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v32;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v38;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (0xD242A46650F1DAF8 - (v75 + v74) + ((2 * (v75 + v74)) & 0x5B7AB7335E1C4A0ELL)) ^ 0x572061D6ADD7CB83;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v35;
  *(v44 + 1) = (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v44 + 1) & 7))) ^ BYTE2(a1) ^ v43;
  v79 = __ROR8__((v44 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = ((2 * (v79 + v37)) | 0xD26D64F9B5F9A13CLL) - (v79 + v37) - 0x6936B27CDAFCD09ELL;
  v81 = v80 ^ 0x3D7184094682BDB5;
  v80 ^= 0xA8F4090E1F72118ELL;
  v82 = __ROR8__(v81, 8);
  v83 = (a8 - ((v82 + v80) | a8) + ((v82 + v80) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v84 = v83 ^ __ROR8__(v80, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ v34;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ v32;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (v89 + v88 - 0x76252B40886E233 - ((2 * (v89 + v88)) & 0xF13B5A97EEF23B9ALL)) ^ 0x783E853F74CDDA04;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = __ROR8__((v92 + v91 + 0x694644E99B287D1BLL - ((2 * (v92 + v91)) & 0xD28C89D33650FA36)) ^ 0xEC248159660E6C60, 8);
  v94 = (v92 + v91 + 0x694644E99B287D1BLL - ((2 * (v92 + v91)) & 0xD28C89D33650FA36)) ^ 0xEC248159660E6C60 ^ __ROR8__(v91, 61);
  *(v44 + 2) = (((__ROR8__((v93 + v94) ^ v35, 8) + ((v93 + v94) ^ v35 ^ __ROR8__(v94, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v44 + 2) & 7))) ^ BYTE1(a1) ^ v41;
  v95 = __ROR8__((v44 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = v95 - 0x2252134E29FD63EALL - ((v39 + 2 * v95) & 0xD5FA7621D5890D1ELL);
  v97 = __ROR8__(v96 ^ 0x3EBA0D6576BAEBA4, 8);
  v96 ^= 0xAB3F80622F4A479FLL;
  v98 = (v97 + v96) ^ a2;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((v100 + v99) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v100 + v99) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = __ROR8__((v103 + v102 - 0x46808B34CA7F9267 - ((2 * (v103 + v102)) & 0x72FEE9966B00DB32)) ^ 0x7260A5CE3C9A183FLL, 8);
  v105 = (v103 + v102 - 0x46808B34CA7F9267 - ((2 * (v103 + v102)) & 0x72FEE9966B00DB32)) ^ 0x7260A5CE3C9A183FLL ^ __ROR8__(v102, 61);
  v106 = (0x3206BC59DCA26A08 - (v104 + v105) + ((2 * (v104 + v105)) | 0x9BF2874C46BB2BF0)) ^ 0x4D5A6BD2A0E95231;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (0x1C128E40BBB76A6FLL - (v108 + v107) + ((2 * (v108 + v107)) | 0xC7DAE37E88912B22)) ^ 0x668FB40FB96E84EALL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (0xCBE46B61C11D82E1 - (v111 + v110) + ((2 * (v111 + v110)) | 0x6837293C7DC4FA3ELL)) ^ 0xA3EEF82EC5D4676CLL;
  v113 = __ROR8__(v112, 8);
  v114 = __ROR8__(v110, 61);
  *(v44 + 3) = a1 ^ v42 ^ (((0xCB3A8F808CEFA77ELL - (v113 + (v112 ^ v114)) + ((2 * (v113 + (v112 ^ v114))) | 0x698AE0FEE620B104)) ^ 0xCCDC5A0A98E8AA1CLL) >> (8 * ((v44 + 3) & 7)));
  return v60(a32, a2);
}

uint64_t sub_1000D6A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>)
{
  v23 = (v15 - 1) + v12 + ((v15 - 1 < a9) << 32);
  v24 = __ROR8__((v21 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 + a6 - ((a3 + 2 * v24) & 0xA682CC081D3CC4C6);
  v26 = __ROR8__(v25 ^ 0x8306507192E00F48, 8);
  v27 = v25 ^ v17;
  v28 = (v26 + v27) ^ a2;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v11;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 + a4 - (v16 & (2 * (v34 + v33)))) ^ v18;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((v37 + v36 + v13 - (a7 & (2 * (v37 + v36)))) ^ 0x9DD99598777912FCLL, 8);
  v39 = (v37 + v36 + v13 - (a7 & (2 * (v37 + v36)))) ^ 0x9DD99598777912FCLL ^ __ROR8__(v36, 61);
  v40 = (v14 - ((v38 + v39) ^ 0xDCDF26E10C788B9CLL) + ((2 * ((v38 + v39) ^ 0xDCDF26E10C788B9CLL)) | 0xCE9FECD65DC15274)) ^ 0xAC65BC3AD9AE38D5;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(v21 + v23) = (((a1 - ((v42 + v41) | a1) + ((v42 + v41) | a5)) ^ 0x8BD60D4EB0186785) >> (8 * ((v21 + v23) & 7))) ^ *(v19 + v23 + v20);
  return (*(a8 + 8 * (((a9 + 1 == v15) * v22) ^ v10)))();
}

uint64_t sub_1000D6CC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(**(a3 + 24) - 0x4761F68478C333DDLL);
  v15 = STACK[0x1280];
  v16 = __ROR8__((v14 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (0x8D4F4E5F14C1EA78 - v16) & 0xB123D19BF46E51D1 | (v16 + v10) & (((a2 + 268517389) | 0x8D022940) + 0x4ADC2E636E8E42EELL);
  v18 = v17 ^ 0xE564E7EE68103CFALL;
  v17 ^= 0x70E16AE931E090C1uLL;
  v19 = __ROR8__(v18, 8);
  v20 = (v19 + v17 - ((2 * (v19 + v17)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v21 = v20 ^ __ROR8__(v17, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((v22 + v21) ^ 0xB15146501DE8B6F8) - ((2 * ((v22 + v21) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) & 0xDBBCA2A7F6876CE0) - (v25 + v24) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((v30 + v29 - ((2 * (v30 + v29)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329, 8);
  v32 = (v30 + v29 - ((2 * (v30 + v29)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329 ^ __ROR8__(v29, 61);
  v14[10] = (((__ROR8__((v31 + v32) ^ v9, 8) + ((v31 + v32) ^ v9 ^ __ROR8__(v32, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v14 + 10) & 7u))) ^ HIBYTE(STACK[0x1280]) ^ 8;
  v33 = __ROR8__((v14 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = v33 - ((2 * v33 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v35 = __ROR8__(v34 ^ 0xD85F7D3177813639, 8);
  v34 ^= 0x4DDAF0362E719A02uLL;
  v36 = __ROR8__((((v35 + v34) | 0x337A902E34222EAELL) - ((v35 + v34) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177, 8);
  v37 = (((v35 + v34) | 0x337A902E34222EAELL) - ((v35 + v34) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177 ^ __ROR8__(v34, 61);
  v38 = (((v36 + v37) | 0x7B372A0BF60D2AC5) - ((v36 + v37) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v8;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v11;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v9;
  v14[11] = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v14 + 11) & 7u))) ^ LOWORD(STACK[0x1286]) ^ 0xC3;
  v47 = __ROR8__((v14 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = ((a4 + 2 * v47) & 0xB50EA0BD07EE0F74) - v47 + 0x32C7FE0090CAE2BELL;
  v49 = v48 ^ 0xF13F99D4E076956ELL;
  v48 ^= 0x64BA14D3B9863955uLL;
  v50 = (__ROR8__(v49, 8) + v48) ^ v12;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v13;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v8;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ a7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((v58 + v57) | 0xAE83C850330BCB1ELL) - ((v58 + v57) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) & 0x8B666A266E091910) - (v61 + v60) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v14[12] = (((((2 * (v64 + v63)) | 0x21458F0F9B85813CLL) - (v64 + v63) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v14 + 12) & 7u))) ^ BYTE5(v15) ^ 0x8D;
  v65 = __ROR8__((v14 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v66 = (0xD4F4E5F14C1EA78 - v65) & 0x745A46F181E71788 | (v65 + v10) & 0x8BA5B90E7E18E877;
  v67 = v66 ^ 0x201D70841D997AA3;
  v66 ^= 0xB598FD834469D698;
  v68 = __ROR8__(v67, 8);
  v69 = (((2 * (v68 + v66)) | 0x26843C234468C454) - (v68 + v66) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3;
  v70 = v69 ^ __ROR8__(v66, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0x61D635255ACF2C94) - ((v71 + v70) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ v8;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a7;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (((v78 + v77) | 0xBAAB3E68C36E4B71) - ((v78 + v77) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v9;
  v82 = __ROR8__(v81, 8);
  v83 = __ROR8__(v80, 61);
  v84 = ((((v82 + (v81 ^ v83)) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v82 + (v81 ^ v83)) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v14 + 13) & 7u));
  LODWORD(v81) = STACK[0x1280];
  v14[13] = v84 ^ LODWORD(STACK[0x1284]) ^ 0x18;
  v85 = __ROR8__((v14 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = ((v85 + v10) | 0x393C5199A3ABE61FLL) - ((v85 + v10) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v87 = __ROR8__(v86 ^ 0x6D7B67EC3FD58B34, 8);
  v86 ^= 0xF8FEEAEB6625270FLL;
  v88 = (((2 * (v87 + v86)) & 0xA01676447DFA0AA6) - (v87 + v86) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ v13;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ v8;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (v94 + v93 - ((2 * (v94 + v93)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((v97 + v96) | 0x73019C173CCE7FA9) - ((v97 + v96) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((v100 + v99) | 0x5071512C1C535486) - ((v100 + v99) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v14[14] = (((v103 + v102 - ((2 * (v103 + v102)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v14 + 14) & 7u))) ^ LODWORD(STACK[0x1283]) ^ 0x34;
  v104 = __ROR8__((v14 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v105 = ((2 * v104 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v104 - 0x16EB6015C9B52F97;
  v106 = v105 ^ 0xF8267FEBDF688DBLL;
  v105 ^= 0x9A07EAF9E40624E0;
  v107 = (__ROR8__(v106, 8) + v105) ^ v12;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (v109 + v108 - ((2 * (v109 + v108)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) & 0x6760441E82814852) - (v112 + v111) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  v116 = __ROR8__((((2 * (v115 + v114)) & 0x14B03C0D0DEA5DFELL) - (v115 + v114) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9, 8);
  v117 = (((2 * (v115 + v114)) & 0x14B03C0D0DEA5DFELL) - (v115 + v114) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9 ^ __ROR8__(v114, 61);
  v118 = (((v116 + v117) | 0x39BC71E438FBF891) - ((v116 + v117) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v119 = __ROR8__(v118, 8);
  v120 = v118 ^ __ROR8__(v117, 61);
  v121 = (((2 * (v119 + v120)) & 0xFC603D156314A35ELL) - (v119 + v120) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v14[15] = (((__ROR8__(v121, 8) + (v121 ^ __ROR8__(v120, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v14 + 15) & 7u))) ^ LODWORD(STACK[0x1282]) ^ 0xA6;
  v122 = __ROR8__((v14 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v123 = (v122 + v10) ^ 0xC1C2BB72C58EC110;
  v124 = (__ROR8__((v122 + v10) ^ 0x544736759C7E6D2BLL, 8) + v123) ^ v12;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ v13;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (v128 + v127 - ((2 * (v128 + v127)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (v131 + v130 - ((2 * (v131 + v130)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ v11;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ v9;
  v14[16] = (((__ROR8__(v136, 8) + (v136 ^ __ROR8__(v135, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v14 + 16) & 7u))) ^ LODWORD(STACK[0x1281]) ^ 0x36;
  v137 = __ROR8__((v14 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v138 = ((2 * (v137 + v10)) | 0xA5E64CF69756B5C4) - (v137 + v10) + 0x2D0CD984B454A51ELL;
  v139 = v138 ^ 0x86B4100ED7D537C9;
  v138 ^= 0x13319D098E259BF2uLL;
  v140 = __ROR8__(v139, 8);
  v141 = __ROR8__((((2 * (v140 + v138)) | 0x559C992A13D30352) - (v140 + v138) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70, 8);
  v142 = (((2 * (v140 + v138)) | 0x559C992A13D30352) - (v140 + v138) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70 ^ __ROR8__(v138, 61);
  v143 = (v141 + v142) ^ v13;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ v8;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ a7;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (((2 * (v149 + v148)) & 0x3B5AD3916A0336E4) - (v149 + v148) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v151 = v150 ^ __ROR8__(v148, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ v9;
  v14[17] = (((__ROR8__(v152, 8) + (v152 ^ __ROR8__(v151, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v14 + 17) & 7u))) ^ v81 ^ 0x47;
  return (*(a8 + 8 * a2))();
}

uint64_t sub_1000D7B3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 + 840) = 0x4761F68478C333F5;
  LODWORD(STACK[0xA94]) = a1 + 1660721063;
  *(v68 + 2368) = &STACK[0x4A0];
  LODWORD(STACK[0xAA0]) = a68;
  return (*(a8 + 8 * ((((a1 + 1660728576) | 0x20B) - 7473) ^ (a1 + 1660721063))))();
}

uint64_t sub_1000D7C7C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = v2[86];
  v2[47] = v3;
  v4 = v3 - 0x4761F68478C333DDLL;
  v5 = *(v3 - 0x4761F68478C333DDLL);
  v2[49] = v4;
  v2[50] = v5;
  return (*(a1 + 8 * (((((a2 + 104) ^ (v5 == 0)) & 1) * (((a2 - 14625) | 0x2413) - 9368)) ^ a2)))();
}

uint64_t sub_1000D7CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 + 7746)))(*(v35 + 400));
  **(v35 + 392) = 0;
  return (*(a34 + 8 * v34))(a1);
}

uint64_t sub_1000D80B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[175];
  v11 = STACK[0x534];
  v12 = v9[117];
  LODWORD(STACK[0x9DC]) = STACK[0x494];
  v9[273] = v12;
  LODWORD(STACK[0x9EC]) = v11;
  v9[275] = v10;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000D80F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v73 + 2296) = *(v73 + 736);
  LODWORD(STACK[0xA5C]) = a71;
  return (*(a8 + 8 * (v72 + v71 + 41)))();
}

uint64_t sub_1000D83C0@<X0>(int a1@<W8>)
{
  v6 = 878 * (a1 ^ (v1 + 205));
  v7 = (*(v4 + 8 * (v6 + 17285)))(v2 + v3, *(v5 + 8 * (v6 ^ 0x62F)) - 1211085002);
  return (*(v4 + 8 * v6))(v7);
}

uint64_t sub_1000D8460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, unint64_t a14, int a15)
{
  v17 = 53688491 * ((~&a13 & 0x31FE236BED0BFE33 | &a13 & 0xCE01DC9412F401CCLL) ^ 0x991A66505B1226E5);
  a14 = *(v15 + 8 * v16) ^ v17;
  a15 = v17 - 939497975 + v16;
  v18 = (*(v15 + 8 * (v16 + 17519)))(&a13);
  return (*(v15 + 8 * (v16 ^ 0x329B ^ ((a13 != ((v16 - 119) ^ 0x2F)) * ((v16 - 1905613293) & 0x71955F75 ^ 0xB70)))))(v18);
}

uint64_t sub_1000D861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t *a10)
{
  v14 = v11 + a5;
  v15 = (v11 + a5 + 1406032394) & 0xAC319E3E;
  v16 = (v11 + a5 - 145) | 0x91;
  a7 = 0;
  v17 = *(*(v13 + 8 * (a5 ^ (v10 + 30))) - 765954410);
  a10 = &a7;
  a9 = v17;
  return (*(v12 + 8 * (((v17 == v15 + 1188203888) * (v16 ^ 0x37F4)) ^ (v14 - 609))))(a1, a2, a3, a4);
}

uint64_t sub_1000D86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16)
{
  v19 = *(v17 + 8 * v18);
  v20 = 422488289 * ((&a13 - 2 * (&a13 & 0x6AFBFB8482F78E6BLL) + 0x6AFBFB8482F78E6BLL) ^ 0xA430C7277E682CEFLL);
  a16 = v16 + 0x9AE900BC47E4FA5;
  a13 = v19 + v20;
  a14 = v20 - 1877543896 + v18;
  v21 = (*(v17 + 8 * (v18 ^ 0x4C75)))(&a13);
  return (*(v17 + 8 * ((v18 + 4416) ^ v18 ^ (4 * (a15 != v18 + 2065132601)))))(v21);
}

uint64_t sub_1000D88B0(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + dword_100450DB8) ^ 0x20)) ^ byte_10040EEA0[byte_100400180[(33 * ((qword_100450D48 + dword_100450DB8) ^ 0x20))] ^ 0xD1]) + 222);
  v3 = *(v2 - 1469251686);
  v4 = *(&off_10044E3E0 + (byte_1004247A0[byte_10041B080[(33 * (v3 ^ qword_100450D48 ^ 0x20))] ^ 0x6E] ^ (33 * (v3 ^ qword_100450D48 ^ 0x20))) + 313);
  v5 = (*(v4 - 895037751) + v3) ^ &v11;
  *(v2 - 1469251686) = 2128276769 * v5 - 0x1122E604F1A703E0;
  *(v4 - 895037751) = 2128276769 * (v5 ^ 0xEEDD19FB0E58FC20);
  v6 = *(&off_10044E3E0 + ((33 * (dword_100450DB8 ^ 0x20 ^ qword_100450D48)) ^ byte_1004247A0[byte_10041B080[(33 * (dword_100450DB8 ^ 0x20 ^ qword_100450D48))] ^ 0x65]) - 69);
  v7 = *(v6 - 1286256470);
  v8 = 1751014823 * ((&v12[0xF9BE4EA2E79AAA1FLL] - 2 * (v12 & 0xCDF275173CD550F8)) ^ 0x4F366EC969260F6FLL);
  v14 = a1;
  v15 = -1660720320 - v8;
  v12[0] = v7 - v8;
  v12[1] = a2;
  v9 = 33 * ((*(v4 - 895037751) + *(v2 - 1469251686)) ^ 0x20);
  (*(v6 + 8 * ((byte_10040EDA0[byte_100400080[v9] ^ 0x57] ^ v9) + 18868) - 1286268654))(v12);
  return v13;
}

uint64_t sub_1000D8B18(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + dword_100450E60) ^ 0x20)) ^ byte_10040EBA0[byte_1003FFD80[(33 * ((qword_100450D48 + dword_100450E60) ^ 0x20))] ^ 0x8C]) + 318);
  v3 = *(v2 - 2005873791);
  v4 = *(&off_10044E3E0 + (byte_10040ECA0[byte_1003FFE80[(33 * ((qword_100450D48 - v3) ^ 0x20))] ^ 0x61] ^ (33 * ((qword_100450D48 - v3) ^ 0x20))) + 272);
  v5 = &v11[v3 + *(v4 - 895037751)];
  *(v2 - 2005873791) = 2128276769 * v5 + 0x1122E604F1A703E0;
  *(v4 - 895037751) = 2128276769 * (v5 ^ 0xEEDD19FB0E58FC20);
  v6 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + dword_100450E60) ^ 0x20)) ^ byte_10040EBA0[byte_1003FFD80[(33 * ((qword_100450D48 + dword_100450E60) ^ 0x20))] ^ 0x96]) + 107);
  v7 = *(v6 - 1286256518);
  v8 = 1751014823 * (((v12 | 0x7147443D4D242B97) - v12 + (v12 & 0x8EB8BBC2B2DBD468)) ^ 0xF3835FE318D77400);
  v15 = -1660720320 - v8;
  v14 = a1;
  v12[0] = v7 - v8;
  v12[1] = a2;
  v9 = 33 * (*(v2 - 2005873791) ^ 0x20 ^ *(v4 - 895037751));
  (*(v6 + 8 * ((byte_1004247A0[byte_10041B080[v9] ^ 0x65] ^ v9) + 18800) - 1286268654))(v12);
  return v13;
}

uint64_t sub_1000D8E64@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, unint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, BOOL a15)
{
  v30 = v18;
  v19 = a1 + 652031906;
  v20 = a1 ^ 0xD922EE81;
  v21 = a1 + v15;
  a5 = 0xCBADFA59747AE49CLL;
  a6 = 0;
  a9 = &a5;
  a10 = &a6;
  a11 = (*(v17 + 8 * (a1 ^ 0xD922A2CE)))(0, v16, 134217984);
  a12 = (*(v17 + 8 * (v21 + 1801)))(a11, 0);
  a15 = a12 == 0;
  a8 = 1418211939;
  return (*(v17 + 8 * (((a12 != 0) * ((v19 - 6657) ^ v20)) | v21)))(a12, v22, v23, v24, v25, v26, v27, v28, a2, v30);
}

uint64_t sub_1000D8F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, int a28, uint64_t a29, unint64_t a30, uint64_t a31)
{
  v37 = ((~&a25 & 0x99B952F71951C3 | &a25 & 0xFF6646AD08E6AE3CLL) ^ 0x8E0BE2AFAB722078) * v36;
  v38 = *(v32 + 8 * v33) ^ v37;
  a26 = (v35 ^ 0xFC) - v37 + ((((v33 - 52) | 0x66) ^ 0xDA) & (2 * v35) ^ 4) + 64;
  a25 = v31 + 0x70F897F3D20905A9;
  a27 = v37 - 652025217 + v33;
  a30 = v38;
  a31 = v34 + 0x263AEFB6BEBA8892;
  a29 = a18;
  v39 = (*(v32 + 8 * (v33 + 17480)))(&a25);
  return (*(v32 + 8 * ((114 * (a28 == -1418238986)) ^ (v33 + 3575))))(v39);
}

uint64_t sub_1000D9044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a11 - 0x79706F535852959BLL) = a20;
  *(a10 - 0x6C7A923E6AA4B91ALL) = *a15;
  return (*(v21 + 8 * v20))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000D9090@<X0>(int a1@<W8>)
{
  v5 = a1 ^ 0xD922FC89;
  v6 = a1 + v1;
  v7 = v2 + a1;
  v8 = (*(v4 + 8 * (v2 + a1 + 1675)))(v3);
  v9 = v8 != (*(v4 + 8 * (v7 + 1832)))();
  return (*(v4 + 8 * ((v9 * (v5 - 4725)) ^ v6)))();
}

uint64_t sub_1000D90F0()
{
  v3 = (*(v1 + 8 * (v2 ^ 0x5E30)))(v0);
  v4 = v3 == (*(v1 + 8 * (v2 + 13744)))();
  return (*(v1 + 8 * ((v4 * ((60 * (v2 ^ 0x140C)) ^ 0xB04)) ^ v2)))();
}

uint64_t sub_1000D91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v18 + 8 * (v17 + 4599)))(a17);
  v29 = (*(v18 + 8 * (v17 ^ 0x72D1)))((v20 + v19 - ((2 * v20) & 0xE8F5C938)) ^ 0x747AE49CLL);
  return (*(v18 + 8 * (((v29 == 0) * ((((v17 - 472121658) & 0x1C23CEBE) + 4094) ^ 0x1605)) ^ v17)))(v29, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1000D92B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = (*(v16 + 8 * ((v17 - 2907) ^ 0x429C)))(v15);
  v27 = (*(v16 + 8 * ((v17 - 2907) ^ 0x42B4)))((((86 * ((v17 - 2907) ^ 0x8F0u)) ^ 0xCBADFA59747AE290) + v18 - ((2 * v18) & 0x975BF4B2E8F5C938)) & ((v17 - 33892993) & 0xDB27FEF7 ^ 0x26DD174BLL) ^ 0x747AE49C);
  return (*(v16 + 8 * ((503 * (v27 != 0)) ^ (v17 - 2907))))(v27, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, v27);
}

uint64_t sub_1000D938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unint64_t a26, unint64_t a27, unint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = 1751014823 * ((2 * (&a25 & 0x712916DCD1686728) - &a25 + 0xED6E9232E9798D7) ^ 0x8C12F2FD7B64C740);
  a26 = *(v31 + 8 * v32) + v33;
  a27 = (a24 ^ 0x20FC352F109FDB50) + v33;
  a28 = 0x2BC860D555E7AAB0 - v33;
  a25 = v32 - v33 + 1224120659;
  (*(v31 + 8 * (v32 ^ 0x4C85)))(&a25);
  v34 = (*(v31 + 8 * (v32 ^ 0x4C6E)))(v30, a29, a30, a16);
  return (*(v31 + 8 * ((((v32 - 2) | 0x1000) - 2141) ^ v32)))(v34);
}

uint64_t sub_1000D94A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a11 - 0x263AEFB6BEBA8892) = a15;
  *(v25 - 0x70F897F3D20905A9) = a23;
  return (*(v23 + 8 * v24))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1000D9544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = (*(v21 + 8 * (v20 + 13292)))(a20);
  *a16 = 0;
  return (*(v21 + 8 * v20))(v22);
}

uint64_t sub_1000D9640@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = v13 + a1 + 1340;
  v15 = (*(v12 + 8 * (v11 + 1770)))(a11);
  return (*(v12 + 8 * v14))(v15);
}

void sub_1000D9A18(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_10044E3E0 + ((33 * (dword_100450D80 ^ 0x20 ^ qword_100450D48)) ^ byte_10040EDA0[byte_100400080[(33 * (dword_100450D80 ^ 0x20 ^ qword_100450D48))] ^ 0xC4]) + 118);
  v3 = *(v2 - 2136947574);
  v4 = *(&off_10044E3E0 + (byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 - v3) ^ 0x20))] ^ 0xBF] ^ (33 * ((qword_100450D48 - v3) ^ 0x20))) + 353);
  v5 = 2128276769 * (&v14[*(v4 - 895037751) ^ v3] ^ 0xEEDD19FB0E58FC20);
  *(v2 - 2136947574) = v5;
  *(v4 - 895037751) = v5;
  v6 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 - dword_100450D80) ^ 0x20)) ^ byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 - dword_100450D80) ^ 0x20))] ^ 0xE4]) + 93);
  (*(v6 - 1286268654 + 8 * ((byte_1004247A0[byte_10041B080[(33 * ((*(v4 - 895037751) + *(v2 - 2136947574)) ^ 0x20))] ^ 0x6E] ^ (33 * ((*(v4 - 895037751) + *(v2 - 2136947574)) ^ 0x20))) + 18930)))(v12, 0, 32);
  v7 = *(v6 - 1286256094);
  v8 = 2054851651 * (&v15 ^ 0xA1F77BFB8CAEAF26);
  v16 = v8 ^ 0x8DDB5D86;
  v15 = v7 - v8;
  (*(v6 - 1286268654 + 8 * (((33 * ((*(v4 - 895037751) + *(v2 - 2136947574)) ^ 0x20)) ^ byte_1004247A0[byte_10041B080[(33 * ((*(v4 - 895037751) + *(v2 - 2136947574)) ^ 0x20))] ^ 0x6E]) + 18978)))(&v15);
  (*(v6 - 1286268654 + 8 * (((33 * (*(v2 - 2136947574) ^ 0x20 ^ *(v4 - 895037751))) ^ byte_10040EDA0[byte_100400080[(33 * (*(v2 - 2136947574) ^ 0x20 ^ *(v4 - 895037751)))] ^ 0xBF]) + 18915)))(a2, v12);
  v9 = 33 * ((*(v4 - 895037751) + *(v2 - 2136947574)) ^ 0x20);
  v10 = (*(v6 - 1286268654 + 8 * ((byte_1003FFF80[byte_1004246A0[v9] ^ 0xFC] ^ v9) + 18783)))(128);
  v13 = v10 + 0x270676553BF336C1;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000DA044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a7 - 120598053;
  v9 = (*(v7 + 152240))(16) != 0;
  return (*(STACK[0x258] + 8 * ((11 * v9) ^ v8)))();
}

uint64_t sub_1000DA0CC(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v1 - 0x270676553BF336B9) = a1 + v3;
  return (*(v4 + 8 * (v2 | (4 * (((v1 == 0x270676553BF336C1) ^ (v2 - 110)) & 1)))))();
}

uint64_t sub_1000DA148()
{
  v2 = v0 + 10103;
  v3 = (v2 + 43) ^ ((*(v1 + 8 * (v2 + 2180)))(16) == 0);
  return (*(STACK[0x258] + 8 * (((v3 & 1) * (((v2 - 16334) | 0xC0) - 703)) ^ v2)))();
}

uint64_t sub_1000DA1C8(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *v1 = a1 + v2;
  return (*(v4 + 8 * (((v3 + 7441) ^ 0x145A) + v3)))();
}

uint64_t sub_1000DA2E0()
{
  *(v1 - 216) = v0 + 2054851651 * ((((v1 - 216) | 0xFB6579A6) - (v1 - 216) + ((v1 - 216) & 0x49A8658)) ^ 0x77CBD680) + 13410;
  v3 = (*(v2 + 8 * (v0 ^ 0x4938)))(v1 - 216);
  return (*(STACK[0x258] + 8 * (v0 ^ 0x1B40 ^ (15 * (v0 ^ 0x154)))))(v3);
}

uint64_t sub_1000DA4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  STACK[0x598] = v49;
  STACK[0x270] = a48;
  LODWORD(STACK[0x2B8]) = -629302344;
  return (*(v50 + 8 * v48))();
}

uint64_t sub_1000DA86C(unint64_t a1)
{
  v3 = (v1 - 1527430175) & 0x5B0AA5F1;
  v4 = (LODWORD(STACK[0x348]) ^ 0xB875EFFD) + 2140027608 + ((2 * LODWORD(STACK[0x348])) & 0x70EBDFFA);
  LODWORD(STACK[0x27C]) = v4;
  v5 = STACK[0x478];
  v6 = &STACK[0x710] + STACK[0x478];
  STACK[0x2C8] = v6;
  STACK[0x478] = (v3 ^ 0x6C0Bu) - 8898 + v5 - 9961;
  STACK[0x2A8] = a1;
  STACK[0x340] = 0;
  STACK[0x608] = 0;
  STACK[0x398] = 0;
  LODWORD(STACK[0x3C0]) = -1240130101;
  LODWORD(STACK[0x3CC]) = 0;
  STACK[0x5F0] = 0x5AB679E9A06C14EALL;
  STACK[0x550] = 0;
  LODWORD(STACK[0x574]) = -1240130101;
  v7 = (*(v2 + 8 * (v3 + 9351)))(v6, 0, 32);
  return (*(STACK[0x258] + 8 * ((23 * (v4 == 939797205)) | v3)))(v7);
}

uint64_t sub_1000DA96C()
{
  v2 = (*(v1 + 8 * (v0 + 139)))(128);
  v3 = STACK[0x258];
  STACK[0x308] = v2 + 0x270676553BF336C1;
  return (*(v3 + 8 * (((v2 != 0) * (((v0 - 2110) ^ 0x6684) - 9964)) ^ v0)))();
}

uint64_t sub_1000DAA98@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * a1);
  STACK[0x2F0] = v1;
  LODWORD(STACK[0x250]) = 1418211936;
  return v3();
}

uint64_t sub_1000DABA4()
{
  v2 = (*(v1 + 8 * ((v0 - 5327) ^ 0x7A77)))(112);
  v3 = STACK[0x258];
  STACK[0x560] = v2 + 0x5AB679E9A06C14EALL;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 - 1184) | 0x4A0) + ((v0 - 11706) ^ 0xFFFFACBB))) ^ (v0 - 5327))))();
}

uint64_t sub_1000DAC48(uint64_t a1)
{
  *a1 = 320605855;
  *(a1 + 4) = 716240777;
  *(a1 + 72) = 1233350219;
  *(a1 + 76) = 1233350219;
  *(a1 + 80) = 545;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  v5 = STACK[0x560];
  *(v5 - 0x5AB679E9A06C1496) = -1125453800;
  *(v5 - 0x5AB679E9A06C1482) = 49289790;
  *(v5 - 0x5AB679E9A06C1492) = v2;
  *(v5 - 0x5AB679E9A06C148ALL) = v2;
  *(v5 - 0x5AB679E9A06C147ELL) = 28;
  *v1 = v5;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1000DAEDC@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 0x270676553BF336B1) = *(v1 - 0x5AB679E9A06C14EALL);
  *(a1 - 0x270676553BF33669) = *(v1 - 0x5AB679E9A06C14A2);
  *(a1 - 0x270676553BF33665) = *(v1 - 0x5AB679E9A06C149ELL);
  *(a1 - 0x270676553BF33661) = *(v1 - 0x5AB679E9A06C149ALL);
  *(a1 - 0x270676553BF33660) = *(v1 - 0x5AB679E9A06C1499);
  *(a1 - 0x270676553BF33649) = *(v1 - 0x5AB679E9A06C1482);
  *(a1 - 0x270676553BF3365DLL) = *(v1 - 0x5AB679E9A06C1496);
  *(a1 - 0x270676553BF33645) = *(v1 - 0x5AB679E9A06C147ELL) & 1 ^ 0x27;
  return (*(v3 + 8 * ((5557 * (v2 < 47 * (v2 ^ 0x14A3AA42) - 1640418725)) ^ (v2 - 346269888))))();
}

uint64_t sub_1000DB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v18 = (v9 + v8) & 0xF;
  *(a4 + v9) = (v10 + 26) ^ *(a5 + v9) ^ (-63 * v18) ^ *(*(v16 + 8 * a6) + a7 + v18) ^ *(*(v16 + 8 * a8) + v12 + v18) ^ *(v18 + *(v16 + 8 * v13) + v14 + 3);
  return (*(v17 + 8 * (((v9 != -31) * v15) ^ v11)))();
}

uint64_t sub_1000DB208@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 + 0x270676553BF33659;
  v10 = v1 + v2 + (((v3 - 3287) | 0xD00u) ^ 0xCC4FFC6B9B872C4ALL) < 0x10 || (v2 + 0x270676553BF33659 + *(v4 + 8 * (v3 ^ 0xD7A)) - 453888039) < 0x10 || (v6 + *(v4 + 8 * (v3 - 3285)) - 1137891790) < 0x10 || v6 + *(v4 + 8 * (v3 - 3419)) - 953913542 < ((v3 - 719311815) & 0x2ADFFE67) - 14325;
  return (*(v5 + 8 * ((233 * v10) ^ v3)))(a1 - 0x270676553BF33659);
}

uint64_t sub_1000DB36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 - 0x5AB679E9A06C14E6);
  *(a2 - 0x270676553BF336ADLL) = v5;
  return (*(v4 + 8 * (((((v3 - 35670711) & 0xFAEFFD5F) + 120611222) * (v5 == 716240777)) ^ v3)))(a1, 405260754, 120606109);
}

uint64_t sub_1000DB57C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 & 0xE4F2AC3F;
  v5 = (*(v3 + 8 * ((v1 & 0xE4F2AC3F) + 10821)))(a1 - 0x5AB679E9A06C14EALL);
  v6 = STACK[0x258];
  *v2 = 0x5AB679E9A06C14EALL;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_1000DB7D8()
{
  v4 = *(v1 - 0x270676553BF336C1);
  STACK[0x590] = 0x4761F68478C333F5;
  STACK[0x318] = 0x792E01E864BDAEBLL;
  return (*(v3 + 8 * (((v4 != v2) * (v0 + 120589820 + ((v0 - 70272470) & 0xFCFFFF7F) + 2930)) ^ v0)))();
}

uint64_t sub_1000DB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  STACK[0x2E8] = v16;
  LODWORD(STACK[0x3B4]) = -365885575;
  STACK[0x5E8] = a16;
  LODWORD(STACK[0x37C]) = 689713372;
  return (*(v18 + 8 * v17))();
}

uint64_t sub_1000DB8D0(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x6FC]) = v7;
  STACK[0x700] = v8;
  v13 = v6 == v10 || v8 == 0x3C57449B123D99F3;
  return (*(v11 + 8 * ((v13 * (((v9 + a2) & a4 ^ a6) + ((v9 + a1) & a5))) | v9)))();
}

uint64_t sub_1000DB948@<X0>(int a1@<W8>)
{
  v3 = *v1;
  STACK[0x4A8] = *v1;
  return (*(v2 + 8 * (((v3 != 0x4761F68478C333F5) * (129 * (a1 ^ 0x468B) - 8115)) ^ a1)))();
}

uint64_t sub_1000DBA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x250] = ((STACK[0x698] - 0x334E3D32F7076C70) ^ 0x2BEBABDFFDBA7E7BLL) - 0x202A84108382813 + (((v5 - 120612135) ^ 0x57D757BF03BB2CE9) & (2 * (STACK[0x698] - 0x334E3D32F7076C70)));
  STACK[0x230] = ((STACK[0x6C8] - 0x4BCF67719C6DA72) ^ 0x29E96FBFFD92F7EFLL) - 0x6C210810A187 + ((2 * (STACK[0x6C8] - 0x4BCF67719C6DA72)) & 0x53D2DF7FFB25EFDELL);
  STACK[0x220] = ((STACK[0x688] - 0x6CC82B11EE1F5CAELL) ^ 0xBBEBF7BFFDEB577FLL) + 0x6DFD0BDEF796FEE9 + ((2 * (STACK[0x688] - 0x6CC82B11EE1F5CAELL)) & 0x77D7EF7FFBD6AEFELL);
  v7 = STACK[0x4E8];
  STACK[0x210] = ((STACK[0x678] - 0x45E50ACCB67B7F6CLL) ^ 0xA9FDA3FFFFA7D6FBLL) + 0x7FEB5F9EF5DA7F6DLL + ((2 * (STACK[0x678] - 0x45E50ACCB67B7F6CLL)) & 0x53FB47FFFF4FADF6);
  v8 = STACK[0x428];
  STACK[0x200] = ((STACK[0x668] - 0x497A46FD00320098) ^ 0xB9F9F3FEF5A676EALL) + 0x6FEF0F9FFFDBDF7ELL + ((2 * (STACK[0x668] - 0x497A46FD00320098)) & 0x73F3E7FDEB4CEDD4);
  return (*(v6 + 8 * v5))(a1, v7, LOWORD(STACK[0x642]), v8, a5, STACK[0x328]);
}

uint64_t sub_1000DBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v9 = *(v8 + 8 * (v7 + 120600724));
  LOWORD(STACK[0x62E]) = a5;
  return v9((v7 + 120599186), a2, a3, a4, v6, a6, 120613580);
}

uint64_t sub_1000DC6C0@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x644]) = a1;
  v5 = (a1 ^ v4) + a2;
  STACK[0x648] = v5 + 10;
  v5 -= 0x334E3D32CC7CC580;
  v6 = v5 < 0x2A8AA6EA;
  v7 = v5 > v2;
  if (v2 < 0x2A8AA6EA != v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((224 * !v8) ^ 0x4960)))();
}

uint64_t sub_1000DC9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (a5 ^ v8) + v5;
  STACK[0x630] = v9 + 10;
  v9 -= 0x4BCF67661B3DA40;
  v10 = v9 < 0xB813002C;
  v11 = v9 > v6;
  if (v6 < 0xB813002C != v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return (*(v7 + 8 * ((27 * !v12) ^ 0x2FEB)))();
}

uint64_t sub_1000DD1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = *(v6 + 8 * ((v5 + 120599191) ^ 0xA05));
  LOWORD(STACK[0x642]) = a5;
  return v7();
}

uint64_t sub_1000DD424()
{
  v2 = *(STACK[0x540] - 0x4761F68478C333DDLL);
  STACK[0x578] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0xABC) - 7395)) | v0)))();
}

uint64_t sub_1000DD49C@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x4900CF357DFD7A60;
  STACK[0x680] = v3;
  v4 = STACK[0x400];
  STACK[0x688] = STACK[0x400];
  return (*(v2 + 8 * ((15706 * (v3 - v4 + ((((a1 - 7265) | 0x221u) - 120599176) ^ 0x23C75BDCAFEBA8F5) < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_1000DD6A8()
{
  v4 = v0 + 120600397;
  v5 = v2 < ((5 * (v0 ^ (v1 + 460))) ^ 0x54883BB1);
  return (*(v3 + 8 * ((v5 | (2 * v5)) ^ v4)))();
}

uint64_t sub_1000DD72C()
{
  v2 = STACK[0x480];
  v3 = *(STACK[0x480] - 0x4761F68478C333EDLL);
  v4 = STACK[0x498];
  *(v4 - 0x4761F68478C333EDLL) = v3;
  *(v4 - 0x4761F68478C333F5) = *(v2 - 0x4761F68478C333F5);
  return (*(v1 + 8 * (((v3 == 0x4761F68478C333F5) * ((v0 + 3062) ^ (v0 + 3053))) ^ v0)))();
}

uint64_t sub_1000DD91C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6B25)))();
  v3 = STACK[0x258];
  *(STACK[0x480] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000DD9B8@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 16540)))(a1 - 0x4761F68478C333F5);
  STACK[0x480] = 0x4761F68478C333F5;
  return (*(v2 + 8 * ((115 * (LODWORD(STACK[0x3C4]) != -1418238986)) ^ v1)))(v3);
}

uint64_t sub_1000DDBA4()
{
  v2 = *(STACK[0x590] - 0x4761F68478C333DDLL);
  STACK[0x328] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 - 1878486724) | 0x68C70006) + 120602862) ^ (v0 - 11687))) ^ v0)))();
}

uint64_t sub_1000DDC2C()
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x382219FB6A265979;
  STACK[0x650] = v3;
  v4 = STACK[0x318];
  STACK[0x658] = STACK[0x318];
  return (*(v2 + 8 * (((v3 - v4 - 0x308F39DCFCD7E7F6 < ((v0 - 69221079) & 0xFCEFF9BF) - 4174368809u) * ((v0 - 3734) ^ 0x201F)) ^ v0)))();
}

uint64_t sub_1000DDDE0()
{
  v2 = *(STACK[0x368] - 0x4761F68478C333DDLL);
  STACK[0x4E8] = v2;
  return (*(v1 + 8 * ((139 * (((v2 == 0) ^ (v0 + 4)) & 1)) ^ (v0 + 1247))))();
}

uint64_t sub_1000DDE58@<X0>(unsigned int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x6878BF9F53BCD462;
  STACK[0x670] = v3;
  v4 = STACK[0x298];
  STACK[0x678] = STACK[0x298];
  return (*(v2 + 8 * ((14625 * (v3 - v4 + (a1 ^ 0xDD6C4B2C50F16ABDLL) + ((a1 + 281949391) | 0xE8018016) < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_1000DDFE4()
{
  v2 = *(STACK[0x5B0] - 0x4761F68478C333DDLL);
  STACK[0x428] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 120611977 + v0 + 120585022)) | v0)))();
}

uint64_t sub_1000DE05C@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < ((a1 - 84945241) & 0xFDDFDC1F) + 539859263) << 32)) + 0x34C19C40FAA855EDLL;
  STACK[0x660] = v3;
  v4 = STACK[0x530];
  STACK[0x668] = STACK[0x530];
  return (*(v2 + 8 * ((22845 * (v3 - v4 + 0x14B8AABBEC8C4147 < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_1000DE1FC()
{
  v2 = *(STACK[0x288] - 0x4761F68478C333DDLL);
  STACK[0x4B0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0xF8CFF4EA) + 120600647) ^ (v0 - 7027))) ^ v0)))();
}

uint64_t sub_1000DE278@<X0>(int a1@<W8>)
{
  v4 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x25A2C4215071CF93;
  STACK[0x6C0] = v4;
  v5 = STACK[0x430];
  STACK[0x6C8] = STACK[0x430];
  return (*(v3 + 8 * (((v4 - v5 - 0x20E5CDAA4FA85E85 > 0xFFFFFFFFFFFFFFF5) * ((((a1 - 2302) | 0x220) ^ 0x7302D41) + v2 + a1 - 2434)) ^ a1)))();
}

uint64_t sub_1000DE398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = STACK[0x668] + (a5 ^ v6) - 0x497A46FCE68609CALL;
  v8 = STACK[0x660] - 0x34C19C40F9F9C883;
  v9 = v7 < 0x19ABF6C8;
  v10 = v7 > v8;
  if (v9 != v8 < 0x19ABF6C8)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * (v10 ^ 0x231Au)))();
}

uint64_t sub_1000DE570@<X0>(int a1@<W4>, unint64_t a2@<X8>)
{
  v5 = STACK[0x428] + v2;
  STACK[0x530] = a2;
  LODWORD(STACK[0x3C0]) = a1;
  STACK[0x398] = v5;
  return (*(v4 + 8 * (((*(STACK[0x308] - 0x270676553BF33645) & (LODWORD(STACK[0x3CC]) != 0)) * (v3 - 18995 + ((v3 + 420960708) & 0xE6E8B7FF))) ^ v3)))();
}

uint64_t sub_1000DE5E8()
{
  v4 = *(v1 - 0x270676553BF336C1);
  STACK[0x368] = 0x4761F68478C333F5;
  STACK[0x298] = 0x45E50ACCB67B7F70;
  return (*(v3 + 8 * (((v4 != v2) * (((v0 + 2018026166) | 0x80871011) + 120598736)) ^ v0)))();
}

uint64_t sub_1000DE66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  STACK[0x2E8] = v14;
  LODWORD(STACK[0x3B4]) = 1328047355;
  STACK[0x5E8] = a14;
  LODWORD(STACK[0x37C]) = 433550826;
  return (*(v16 + 8 * (v15 - 3978)))(1326980174, 793284675, a3, 3501678012, 2967987443, 4294955693, a7, 8007);
}

uint64_t sub_1000DE714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = STACK[0x678] + (a5 ^ v6) - 0x45E50ACC9B922405;
  v8 = STACK[0x670] - 0x6878BF9F51D0E25FLL;
  v9 = v7 < 0x1AE95B61;
  v10 = v7 > v8;
  if (v9 != v8 < 0x1AE95B61)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * ((11 * !v10) ^ 0x2C57)))();
}

uint64_t sub_1000DE90C@<X0>(int a1@<W4>, unint64_t a2@<X8>)
{
  v5 = STACK[0x4E8] + v2;
  STACK[0x298] = a2;
  STACK[0x340] = v5;
  return (*(v4 + 8 * ((22758 * (a1 == v3 - 1240147587 + ((v3 - 1333571461) & 0x4F7CBD6E))) ^ v3)))();
}

uint64_t sub_1000DE970()
{
  v3 = *(STACK[0x308] - 0x270676553BF336C1);
  STACK[0x540] = 0x4761F68478C333F5;
  STACK[0x400] = 0x6CC82B11EE1F5CB2;
  return (*(v2 + 8 * ((14 * (((v3 == v1) ^ (v0 - 86 + ((v0 - 37) & 0x1F))) & 1)) ^ v0)))();
}

uint64_t sub_1000DEA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  STACK[0x2E8] = v15;
  LODWORD(STACK[0x3B4]) = 1099992266;
  STACK[0x5E8] = a15;
  LODWORD(STACK[0x37C]) = -1842014095;
  return (*(v17 + 8 * v16))(1326980174, 793284675, a3, 3501678012, 2967987443, 4294955693, a7, 8007);
}

uint64_t sub_1000DEA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = STACK[0x688] + (a5 ^ v6) - 0x6CC82B11EBB33907;
  v8 = STACK[0x680] - 0x4900CF35948EC01DLL;
  v9 = v7 < 0x26C23A1;
  v10 = v7 > v8;
  if (v9 != v8 < 0x26C23A1)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * ((49 * v10) ^ 0x1CD6)))(a1, a2, 120606109);
}

uint64_t sub_1000DECA0@<X0>(int a1@<W2>, int a2@<W4>, unint64_t a3@<X8>)
{
  v6 = STACK[0x578] + v3;
  STACK[0x400] = a3;
  STACK[0x608] = v6;
  return (*(v5 + 8 * (((a1 + ((v4 - 84944672) & 0xFDDFDEBF) + ((v4 + 138356567) & 0xF7C0FAFD) + 483) * (a2 == -1240130069)) ^ v4)))();
}

uint64_t sub_1000DED78@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v3 - 0x270676553BF3365DLL);
  v8 = (*(v3 - 0x270676553BF33649) ^ 0xE18744C1) + 2147024812 + ((2 * *(v3 - 0x270676553BF33649)) & 0xC6EEBDFE ^ 0x4E0347C);
  *(v5 - 200) = v1;
  v9 = 292178203 * ((v5 - 216) ^ 0x5E4AF7F6);
  *(v5 - 192) = v8 ^ v9;
  *(v5 - 188) = v9 + (v2 ^ 0x63C3E7E1) + ((2 * v2) & 0xABADF454 ^ 0x28283014) + 1056798712;
  *(v5 - 212) = (v4 + 4001) ^ v9;
  *(v5 - 168) = v9 ^ 0xB7924CE;
  *(v5 - 164) = v9 - 96737305 * v7 - ((v7 * (v4 ^ 0x7477DB67) + 128410814) & 0x51C90894) + 1824011945;
  *(v5 - 208) = a1;
  *(v5 - 184) = a1;
  *(v5 - 176) = v3 + 0x532952AC47F4EDD2;
  v10 = (*(v6 + 8 * (v4 + 13712)))(v5 - 216);
  return (*(STACK[0x258] + 8 * v4))(v10);
}

uint64_t sub_1000DEF8C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v3) = v1;
  *(a1 - 0xAB5C364D9808152) = v1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000DEFE0@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x608];
  v8 = 2054851651 * ((~((v5 - 216) | 0xBF35730D) + ((v5 - 216) & 0xBF35730D)) ^ 0xCC6423D4);
  *(v5 - 176) = a1;
  *(v5 - 184) = v8 ^ v2 ^ 0xA8F85FEF;
  *(v5 - 180) = v4 - v8 - 3285;
  *(v5 - 216) = v1;
  *(v5 - 200) = a1;
  *(v5 - 192) = v7;
  *(v5 - 204) = v8 + ((2 * v3) & 0x5BF737FA) - 146342496 + (v3 ^ 0x2DFB9576 ^ (v4 - 1566));
  v9 = (*(v6 + 8 * (v4 + 13729)))(v5 - 216);
  return (*(STACK[0x258] + 8 * v4))(v9);
}

uint64_t sub_1000DF170()
{
  v4 = v0 ^ 0x39B4;
  STACK[0x600] = v1 - 0x270676553BF336B9;
  v5 = STACK[0x398];
  LODWORD(STACK[0x2DC]) = STACK[0x3C0];
  STACK[0x468] = v5;
  STACK[0x440] = 0x334E3D32F7076C74;
  LODWORD(STACK[0x394]) = -1240130101;
  STACK[0x3F0] = 0x7643118333A2D791;
  STACK[0x3D0] = 0;
  v6 = (*(v3 + 8 * ((v0 ^ 0x39B4) + 15307)))(16);
  v7 = STACK[0x258];
  STACK[0x580] = v6 + v2;
  return (*(v7 + 8 * ((((v4 ^ (v6 == 0)) & 1) * (v4 - 3689)) ^ v4)))();
}

uint64_t sub_1000DF254(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(v2 + 8 * (v1 ^ 0x73C)))();
}

uint64_t sub_1000DF288()
{
  v3 = STACK[0x440] - 0x334E3D3221931FA8;
  v5 = v3 > 0xD5744CCB && v3 < (v0 - 5973) + (LODWORD(STACK[0x2DC]) ^ v2) + 3581156624u;
  return (*(v1 + 8 * ((v5 * ((v0 ^ 0xF8CF970E) + 120598571)) ^ v0)))();
}

uint64_t sub_1000DF30C()
{
  v2 = STACK[0x468];
  STACK[0x490] = STACK[0x468];
  return (*(v1 + 8 * (((387 * ((v0 - 1782460349) & 0x6A3E2CB7 ^ 0x2CA0) - 776) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1000DF38C@<X0>(unint64_t a1@<X8>)
{
  v4 = ((v2 << (((v1 ^ 0x72) - 43) ^ 0x9B)) & 0xF9BAA2BALL) + (v2 ^ 0xC8FF7BFB7CDD515DLL);
  STACK[0x690] = v4 + 0x7FFBBED5872F0000;
  STACK[0x698] = a1;
  return (*(v3 + 8 * ((7076 * (v4 - a1 + 0x6A4EC1377A2A1B0DLL < 0xFFFFFFFFFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1000DF458@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *(a1 + v4);
  *(a1 + v4) = v1;
  return (*(v5 + 8 * v2))();
}

uint64_t sub_1000DF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = STACK[0x658] + (a5 ^ v6) - 0x792E01E831A85A4;
  v8 = STACK[0x650] - 0x382219FB7FF26D9ALL;
  v9 = v7 < 0x331553D;
  v10 = v7 > v8;
  if (v9 != v8 < 0x331553D)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * (((2 * !v10) | (32 * !v10)) ^ 0x3908)))(a1, a2, 120606109);
}

uint64_t sub_1000DF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = STACK[0x328] + v6;
  STACK[0x318] = v5;
  LODWORD(STACK[0x574]) = a5;
  STACK[0x550] = v9;
  return (*(v8 + 8 * (v7 - 12656)))();
}

uint64_t sub_1000DF714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x458]) = a5;
  v6 = LOWORD(STACK[0x62E]);
  STACK[0x430] = STACK[0x630];
  return (*(v5 + 8 * ((1453 * (v6 == 64380)) ^ 0x986)))();
}

uint64_t sub_1000DF868@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = a1 ^ 0x1855;
  v6 = a2 - 0x334E3D32F7076C70 + STACK[0x490];
  v7 = *(v6 + 13);
  v6 += 13;
  v8 = __ROR8__((v6 - 7) & 0xFFFFFFFFFFFFFFF8, 8) + ((((a1 ^ 0x1855) + 4956) | 0x1380u) ^ 0x72B0B1A0EB3E2612);
  v9 = v8 ^ 0x544736759C7E6D2BLL;
  v8 ^= 0xC1C2BB72C58EC110;
  v10 = __ROR8__(v9, 8);
  v11 = (((2 * (v10 + v8)) | 0x713ADA83E03030C8) - (v10 + v8) - 0x389D6D41F0181864) ^ 0x49EEF2766BE197BDLL;
  v12 = v11 ^ __ROR8__(v8, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0xDB9E06970400FE9CLL - ((v13 + v12) | 0xDB9E06970400FE9CLL) + ((v13 + v12) | 0x2461F968FBFF0163)) ^ 0x5ABBE9B01342E516;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0x92944AD67A1D0DB2 - ((v16 + v15) | 0x92944AD67A1D0DB2) + ((v16 + v15) | 0x6D6BB52985E2F24DLL)) ^ 0xA674642C8CF887EBLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((v19 + v18 - ((2 * (v19 + v18)) & 0xCCD960305F813542) + 0x666CB0182FC09AA1) ^ 0xE6CF986CAC745D68, 8);
  v21 = (v19 + v18 - ((2 * (v19 + v18)) & 0xCCD960305F813542) + 0x666CB0182FC09AA1) ^ 0xE6CF986CAC745D68 ^ __ROR8__(v18, 61);
  v22 = (v20 + v21) ^ 0x8562C5B0FD26117BLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v4;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((v26 + v25) & 0x9A045EBD5DF4F657 ^ 0x12044C3111048417) + ((v26 + v25) & 0x65FBA142A20B09A8 ^ 0x1182042A0090109) - 1) ^ 0xEB0546065AF57781) >> (8 * ((v6 - 7) & 7))) ^ *(v6 - 7);
  v28 = __ROR8__((v6 - 6) & 0xFFFFFFFFFFFFFFF8, 8) + 0x72B0B1A0EB3E1587;
  v29 = __ROR8__(v28 ^ 0x544736759C7E6D2BLL, 8);
  v28 ^= 0xC1C2BB72C58EC110;
  v30 = (v29 + v28) ^ v2;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x7EDA10D8E8BDE475;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xCB1FD105091A75A6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (0x4AF4B19BEB93CF11 - ((v36 + v35) ^ 0x931AAD2D149C7419 | 0x4AF4B19BEB93CF11) + ((v36 + v35) ^ 0x931AAD2D149C7419 | 0xB50B4E64146C30EELL)) ^ 0xA6B2CB3D8344833ELL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x8562C5B0FD26117BLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v4;
  v42 = (((((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v6 - 6) & 7))) ^ *(v6 - 6)) << 48) | (v27 << 56);
  v43 = __ROR8__((v6 - 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = (0xD4F4E5F14C1EA78 - v43) & 0x48473740FE452EF0 | (v43 + 0x72B0B1A0EB3E1587) & 0xB1B8C8BF01BAD10FLL;
  v45 = v44 ^ 0x1E000135623B43DBLL;
  v44 ^= 0x8B858C323BCBEFE0;
  v46 = (__ROR8__(v45, 8) + v44) ^ v2;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0xCD70925242C3C4F8) - (v48 + v47) - 0x66B849292161E27CLL) ^ 0x186259F1C9DC0609;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xCB1FD105091A75A6;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x80A3287483B4C7C9;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x8562C5B0FD26117BLL;
  v56 = __ROR8__(v55, 8);
  v57 = v55 ^ __ROR8__(v54, 61);
  v58 = (v56 + v57 - ((2 * (v56 + v57)) & 0xAECF792BC5D2DC2ALL) - 0x2898436A1D1691EBLL) ^ 0x4092D02519DF7466;
  v59 = __ROR8__((v6 - 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = v42 | (((((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v6 - 5) & 7))) ^ *(v6 - 5)) << 40);
  v61 = (v59 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v62 = __ROR8__((v59 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8);
  v63 = (0x5FDC580C2C7F6FF9 - ((v62 + v61) | 0x5FDC580C2C7F6FF9) + ((v62 + v61) | 0xA023A7F3D3809006)) ^ 0xD15038C448791FDFLL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x7EDA10D8E8BDE475;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (0x7B0918A54767676DLL - ((v67 + v66) | 0x7B0918A54767676DLL) + ((v67 + v66) | 0x84F6E75AB8989892)) ^ 0x4FE9365FB182ED34;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x80A3287483B4C7C9;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x8562C5B0FD26117BLL;
  v73 = __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + (v72 ^ v73)) ^ v4;
  v75 = (((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v72 ^ v73, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v6 - 4) & 7))) ^ *(v6 - 4);
  v76 = __ROR8__((v6 - 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = v60 | (v75 << 32);
  v78 = ((2 * (v76 + 0x72B0B1A0EB3E1587)) | 0x67BC5CBBF13EB39CLL) - (v76 + 0x72B0B1A0EB3E1587) - 0x33DE2E5DF89F59CELL;
  v79 = __ROR8__(v78 ^ 0x6799182864E134E5, 8);
  v78 ^= 0xF21C952F3D1198DELL;
  v80 = (((2 * (v79 + v78)) & 0x82CA1806AE1DB8DELL) - (v79 + v78) - 0x41650C03570EDC70) ^ 0xCFE96CCB3308AC49;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) & 0x2880929527931986) - (v82 + v81) - 0x1440494A93C98CC4) ^ 0x9565A66D848B9749;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0x8E3773EB16A74C72) - 0x38E4460A74AC59C7) ^ 0xC0468F08249D39FLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) & 0x91DFEE1C4BEF4914) - (v88 + v87) - 0x48EFF70E25F7A48BLL) ^ 0x37B3208559BC9CBCLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x8562C5B0FD26117BLL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v4;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((((2 * (v95 + v94)) | 0xB2FB2A0ED78CC55ALL) - (v95 + v94) + 0x26826AF894399D53) ^ 0x2164BF72803E9033) >> (8 * ((v6 - 3) & 7))) ^ *(v6 - 3);
  v97 = __ROR8__((v6 - 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v98 = v77 & 0xFFFFFFFF00FFFFFFLL | (v96 << 24);
  v99 = ((2 * (v97 + 0x72B0B1A0EB3E1587)) | 0x9AE35AD9861BF272) - (v97 + 0x72B0B1A0EB3E1587) - 0x4D71AD6CC30DF939;
  v100 = __ROR8__(v99 ^ 0x19369B195F739412, 8);
  v99 ^= 0x8CB3161E06833829;
  v101 = (v100 + v99) ^ v2;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (v103 + v102 - ((2 * (v103 + v102)) & 0x2BC8008860824A6CLL) + 0x15E4004430412536) ^ 0x6B3E109CD8FCC143;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0xCB1FD105091A75A6;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x80A3287483B4C7C9;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0x8562C5B0FD26117BLL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) & 0x69CA6988AE6A0444) - (v112 + v111) - 0x34E534C457350223) ^ 0x5CEFA78B53FCE7AELL;
  v114 = __ROR8__(v113, 8);
  v115 = __ROR8__(v111, 61);
  v116 = v98 & 0xFFFFFFFFFF00FFFFLL | (((((((2 * (v114 + (v113 ^ v115))) & 0x6EFA78B9B3A9E712) - (v114 + (v113 ^ v115)) + 0x4882C3A3262B0C76) ^ 0xB09BE9D6CDD3FEE8) >> (8 * ((v6 - 2) & 7))) ^ *(v6 - 2)) << 16);
  v117 = __ROR8__((v6 - 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = ((0x8D4F4E5F14C1EA78 - v117) & 0x88CD6B4F59250F5CLL) + v117 + 0x72B0B1A0EB3E1587 - ((v117 + 0x72B0B1A0EB3E1587) & 0x8ACD6B4F59250F5CLL);
  v119 = v118 ^ 0xDE8A5D3AC55B6277;
  v118 ^= 0x4B0FD03D9CABCE4CuLL;
  v120 = (__ROR8__(v119, 8) + v118) ^ v2;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x7EDA10D8E8BDE475;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((v124 + v123) & 0x6CABF789BC813DF5 ^ 0x440A270910801D01) + ((v124 + v123) & 0x93540876437EC20ALL ^ 0x50084603328003) - 1) ^ 0x8F45FE4A1AA8E8A5;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x80A3287483B4C7C9;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) | 0x2725BF17C666F6D4) - (v129 + v128) + 0x6C6D20741CCC8496) ^ 0x16F01A3B1E156A11;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ v4;
  v133 = __ROR8__(v132, 8);
  v134 = __ROR8__(v131, 61);
  v135 = v116 & 0xFFFFFFFFFFFF00FFLL | (((((0xD005712B9A1224B6 - ((v133 + (v132 ^ v134)) | 0xD005712B9A1224B6) + ((v133 + (v132 ^ v134)) | 0x2FFA8ED465EDDB49)) ^ 0xD7E3A4A18E1529D7) >> (8 * ((v6 - 1) & 7))) ^ *(v6 - 1)) << 8);
  v136 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v137 = v136 - ((2 * v136 + 0x25616341D67C2B0ELL) & 0x26A047EDD63D1CEELL) + 0xA00D597D65CA3FELL;
  v138 = v137 ^ 0xC31715837760E35CLL;
  v137 ^= 0x569298842E904F67uLL;
  v139 = __ROR8__(v138, 8);
  v140 = (v139 + v137 - ((2 * (v139 + v137)) & 0xAF240C7C031DA904) - 0x286DF9C1FE712B7ELL) ^ 0xA6E199099A775B5BLL;
  v141 = v140 ^ __ROR8__(v137, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (v142 + v141 - ((2 * (v142 + v141)) & 0xB8C951CC6C439EF4) + 0x5C64A8E63621CF7ALL) ^ 0x22BEB83EDE9C2B0FLL;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = __ROR8__(v143, 8);
  v146 = __ROR8__((((2 * (v145 + v144)) | 0xA03B9483A252B4C6) - (v145 + v144) + 0x2FE235BE2ED6A59DLL) ^ 0x1B021B44D8332FC5, 8);
  v147 = (((2 * (v145 + v144)) | 0xA03B9483A252B4C6) - (v145 + v144) + 0x2FE235BE2ED6A59DLL) ^ 0x1B021B44D8332FC5 ^ __ROR8__(v144, 61);
  v148 = (((2 * (v146 + v147)) | 0xB1DBC268BBEB0D1CLL) - (v146 + v147) + 0x27121ECBA20A7972) ^ 0x584EC940DE414147;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v151 = (v150 + v149 - ((2 * (v150 + v149)) & 0x7A9C67DBBE8213FALL) - 0x42B1CC1220BEF603) ^ 0x382CF65D22671886;
  v152 = v151 ^ __ROR8__(v149, 61);
  v153 = __ROR8__(v151, 8);
  v154 = (v153 + v152 - ((2 * (v153 + v152)) & 0x92D54379182C8AC2) + 0x496AA1BC8C164561) ^ 0xDE9FCD0C77205F12;
  v155 = v135 | ((((__ROR8__(v154, 8) + (v154 ^ __ROR8__(v152, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * (v6 & 7u))) ^ v7);
  STACK[0x3F0] = v155 + 0x7643118333A2D791 - ((2 * v155) & 0xEC8623066745AF22);
  return (*(v3 + 8 * v5))();
}

uint64_t sub_1000E0810(uint64_t a1, uint64_t a2)
{
  STACK[0x440] = STACK[0x648];
  v6 = LODWORD(STACK[0x63C]) == v3 && LOWORD(STACK[0x642]) == 15568;
  return (*(v4 + 8 * ((1938 * ((((((v2 + 281988204) | 0xE800D01E) + 120603853) ^ v6) & 1) == 0)) ^ v2)))(a1, a2, 120606109);
}

uint64_t sub_1000E08A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v66 = STACK[0x644];
  STACK[0x450] = a9;
  LODWORD(STACK[0x6A0]) = v63;
  LOWORD(STACK[0x6A6]) = v61;
  LODWORD(STACK[0x6A8]) = v66;
  LODWORD(STACK[0x6AC]) = STACK[0x394];
  STACK[0x6B0] = STACK[0x3F0];
  STACK[0x260] = STACK[0x3D0];
  LODWORD(STACK[0x220]) = v66;
  v68 = a9 != v62 && (v66 ^ (v64 - 1)) < 0xFFFFFFF6;
  return (*(v65 + 8 * ((((989 * ((v60 - 2141111605) & 0x7F9EF878 ^ 0x4839)) ^ 0x10F1) * v68) ^ v60)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1000E0930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = (*(v62 + 8 * (v61 + 550)))(32);
  STACK[0x498] = v63 + 0x4761F68478C333F5;
  return (*(v62 + 8 * (((v63 == 0) * ((68 * (((v61 - 3504) | 0x17) ^ 0x3AAC)) ^ 0xFA1)) ^ v61)))(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_1000E09A4(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = LODWORD(STACK[0x220]) ^ v3;
  STACK[0x6B8] = v5;
  LODWORD(v5) = ((2 * (v5 + 10)) & 0x31FAF2BE) - 4097 + ((17 * (v1 ^ 0x3A7B)) ^ (v5 + 10) ^ ((v1 ^ 0x3A7B) + 419264007));
  *(a1 + 16) = v5;
  v6 = (*(v2 + 8 * (v1 ^ 0x70C1)))((v5 - 419260766));
  *(a1 + 24) = v6;
  return (*(v2 + 8 * (((16 * (v6 == 0)) | (32 * (v6 == 0))) ^ v1)))();
}

uint64_t sub_1000E0A68()
{
  STACK[0x230] = STACK[0x460];
  LODWORD(STACK[0x210]) = STACK[0x6D8];
  LODWORD(STACK[0x250]) = STACK[0x6DC];
  return (*(v1 + 8 * (((v0 ^ 0x2A66) + 647) ^ v0)))();
}

uint64_t sub_1000E0B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x318] = v5;
  LODWORD(STACK[0x574]) = a5;
  return (*(v7 + 8 * v6))();
}

uint64_t sub_1000E10C0()
{
  v2 = STACK[0x280];
  v3 = *(STACK[0x280] - 0x4761F68478C333EDLL);
  v4 = STACK[0x460];
  *(v4 - 0x4761F68478C333EDLL) = v3;
  *(v4 - 0x4761F68478C333F5) = *(v2 - 0x4761F68478C333F5);
  return (*(v1 + 8 * ((1961 * ((v0 ^ 0xD3 ^ (v3 == 0x4761F68478C333F5)) & 1)) ^ v0)))();
}

uint64_t sub_1000E12F4()
{
  v2 = (*(v1 + 8 * (v0 + 6415)))();
  v3 = STACK[0x258];
  *(STACK[0x280] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000E13A4@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x40C8)))(a1 - 0x4761F68478C333F5);
  STACK[0x280] = 0x4761F68478C333F5;
  return (*(v2 + 8 * ((19348 * (LODWORD(STACK[0x58C]) == ((v1 + 9070) ^ 0xAB774DFF))) ^ v1)))(v3);
}

uint64_t sub_1000E14A0(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v1 - 0x270676553BF336B9) = a1 + v3;
  LODWORD(STACK[0x614]) = -1418238986;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000E15C4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v2;
  *(v2 - 0x4761F68478C333EDLL) = *(a1 + v4);
  *(a1 + v4) = v2;
  return (*(v5 + 8 * (v1 - 3948)))();
}

uint64_t sub_1000E17AC@<X0>(int a1@<W4>, unint64_t a2@<X8>)
{
  STACK[0x530] = a2;
  LODWORD(STACK[0x3C0]) = a1;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1000E1858@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v3) = v1;
  *(a1 - 0xAB5C364D9808152) = v1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000E1890()
{
  STACK[0x3E0] = *(v2 + 8 * v1);
  v3 = *(v2 + 8 * v0);
  LODWORD(STACK[0x230]) = 120601018;
  LODWORD(STACK[0x220]) = 1418211936;
  LODWORD(STACK[0x210]) = 9408;
  LODWORD(STACK[0x200]) = -120598508;
  return v3(0xCA37C545B209FCB3, 0);
}

uint64_t sub_1000E19A4@<X0>(uint64_t a1@<X8>)
{
  v8 = 358777457 * ((((2 * (v6 - 216)) | 0x53FE012E) - (v6 - 216) + 1442905961) ^ 0xC65704E5);
  *(v6 - 184) = v4 - v8 - 3993;
  *(v6 - 180) = 593035557 - v8;
  *(v6 - 216) = v5;
  *(v6 - 204) = v8 + v2 + 20235713;
  *(v6 - 200) = a1;
  *(v6 - 192) = v1;
  *(v6 - 176) = (v3 ^ 0xEBEF78FD) - v8 + ((v3 << (((v4 - 54) & 0x7F) + 66)) & 0x90483160) + 2125657976;
  (*(v7 + 8 * (v4 + 13111)))(v6 - 216);
  return (*(STACK[0x258] + 8 * v4))(0xCA37C545B209FCB3, 0);
}

uint64_t sub_1000E1D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x250] = *(v5 + 8 * v3);
  STACK[0x620] = 0;
  return (*(v5 + 8 * (((STACK[0x620] >= (a3 ^ 0xF8CFE6E5) - 4174368767u) * v4) ^ a3)))(a1, a2, 0x5A2A91CFE2BA1239);
}

uint64_t sub_1000E1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6 == ((v7 + 447) ^ 0x2CF))
  {
    v9 = 120;
  }

  else
  {
    v9 = 119;
  }

  LOBYTE(STACK[0x2BF]) = v9;
  return (*(v8 + 8 * ((410 * (v6 == ((v7 + 447) ^ 0x2CF))) ^ 0x46A5)))(a1, a2, a3, a4, a5, a6, 120613580);
}

uint64_t sub_1000E2064(__n128 a1)
{
  v3 = STACK[0x2C8];
  *v3 = a1;
  v3[1] = a1;
  STACK[0x3E0] = *(v2 + 8 * v1);
  return (*(v2 + 8 * ((v1 + 14544) ^ v1)))();
}

uint64_t sub_1000E2238@<X0>(int a1@<W8>)
{
  v8 = *v3;
  STACK[0x3E8] = *(v7 + 8 * v5);
  STACK[0x538] = v1;
  STACK[0x288] = v2;
  LODWORD(STACK[0x458]) = v6;
  STACK[0x430] = 0x4BCF67719C6DA76;
  return (*(v7 + 8 * (((v8 == v4) * ((241 * (a1 ^ 0x1FC6)) ^ 0x11DF)) ^ a1)))();
}

uint64_t sub_1000E239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47)
{
  STACK[0x2E8] = v47;
  LODWORD(STACK[0x3B4]) = v48;
  STACK[0x5E8] = a47;
  LODWORD(STACK[0x37C]) = 945875918;
  return (*(v50 + 8 * v49))();
}

uint64_t sub_1000E24DC@<X0>(int a1@<W8>)
{
  v4 = *(v1 - 0x270676553BF336C1);
  STACK[0x5B0] = 0x4761F68478C333F5;
  STACK[0x530] = 0x497A46FD0032009CLL;
  return (*(v3 + 8 * (((((19 * (a1 ^ 0x2F)) ^ (v4 == v2)) & 1) * (((a1 + 1221216552) | 0xB0055019) + 120598540)) ^ a1)))();
}

uint64_t sub_1000E2580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40)
{
  STACK[0x2E8] = v40;
  LODWORD(STACK[0x3B4]) = 1262304268;
  STACK[0x5E8] = a40;
  LODWORD(STACK[0x37C]) = -1585851549;
  return (*(v42 + 8 * v41))();
}

uint64_t sub_1000E2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v19 = *v12 + v13 - 0x2FC92220EDE8F7EBLL;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((v20 + v18) | 0x4473AF4093FD868BLL) - ((v20 + v18) | 0xBB8C50BF6C027974) - 0x4473AF4093FD868CLL;
  v22 = __ROR8__(v21 ^ 0x103499350F83EBA0, 8);
  v21 ^= 0x85B114325673479BLL;
  v23 = (v22 + v21) ^ 0x71739F379BF98FD9;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0xF8065C5468770AD6 - ((v25 + v24) | 0xF8065C5468770AD6) + ((v25 + v24) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xCB1FD105091A75A6;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30 - ((2 * (v29 + v30)) & 0x60317E7E2F95E7CELL) - 0x4FE740C0E8350C19) ^ 0x30BB974B947E342ELL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = *(v17 + 8 * v15);
  v35 = (v33 + v32) ^ v14;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x97F56CB0FB361A73;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  *v19 = (((((2 * ((v39 + v38) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122) - ((v39 + v38) ^ 0x43F178B4D98B7452) + 0x5C47E569B8209F6FLL) ^ 0x1850485775ACE65DLL) >> (8 * (v19 & 7u))) ^ HIBYTE(v16) ^ 0xB6;
  v40 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((2 * ((v40 + v18) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v40 + v18) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v42 = v41 ^ 0xFA626518CDFB6C7DLL;
  v41 ^= 0x6FE7E81F940BC046uLL;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0x71739F379BF98FD9;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x7EDA10D8E8BDE475;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xCB1FD105091A75A6;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x80A3287483B4C7C9;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((((2 * (v51 + v50)) & 0x5B7AB7335E1C4A0ELL) - (v51 + v50) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83, 8);
  v53 = (((2 * (v51 + v50)) & 0x5B7AB7335E1C4A0ELL) - (v51 + v50) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83 ^ __ROR8__(v50, 61);
  *(v19 + 1) = (((__ROR8__((v52 + v53) ^ 0x97F56CB0FB361A73, 8) + ((v52 + v53) ^ 0x97F56CB0FB361A73 ^ __ROR8__(v53, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(v16) ^ 0x15;
  v54 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = ((2 * (v54 + v18)) | 0xD26D64F9B5F9A13CLL) - (v54 + v18) - 0x6936B27CDAFCD09ELL;
  v56 = __ROR8__(v55 ^ 0x3D7184094682BDB5, 8);
  v55 ^= 0xA8F4090E1F72118ELL;
  v57 = (0x106BA8B4217F8315 - ((v56 + v55) | 0x106BA8B4217F8315) + ((v56 + v55) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x7EDA10D8E8BDE475;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xCB1FD105091A75A6;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (v63 + v62 - ((2 * (v63 + v62)) & 0xF13B5A97EEF23B9ALL) - 0x76252B40886E233) ^ 0x783E853F74CDDA04;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v66 + v65 - ((2 * (v66 + v65)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x97F56CB0FB361A73;
  *(v19 + 2) = (((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v68, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(v16) ^ 0x1D;
  v70 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v70 - ((2 * v70 - 0x1A9E9CBE2983D4F2) & 0xD5FA7621D5890D1ELL) - 0x2252134E29FD63EALL;
  v72 = v71 ^ 0x3EBA0D6576BAEBA4;
  v71 ^= 0xAB3F80622F4A479FLL;
  v73 = (__ROR8__(v72, 8) + v71) ^ 0x71739F379BF98FD9;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((v75 + v74) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v75 + v74) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((2 * (v81 + v80)) | 0x9BF2874C46BB2BF0) - (v81 + v80) + v7) ^ v9;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = __ROR8__(v82, 8);
  v85 = ((v10 | (2 * (v84 + v83))) - (v84 + v83) + v11) ^ a1;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = __ROR8__(((v8 | (2 * (v87 + v86))) - (v87 + v86) + a2) ^ a3, 8) + (((v8 | (2 * (v87 + v86))) - (v87 + v86) + a2) ^ a3 ^ __ROR8__(v86, 61));
  *(v19 + 3) = v16 ^ a7 ^ ((((a4 | (2 * v88)) - v88 + a5) ^ a6) >> (8 * ((v19 + 3) & 7)));
  return v34();
}

uint64_t sub_1000E32A0()
{
  v5 = *(v3 - 0x4761F68478C333DDLL);
  v6 = __ROR8__((v5 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (0xD4F4E5F14C1EA78 - v6) & 0x4CD81EFE8FE3B1B9 | (v6 + 0x72B0B1A0EB3E1587) & 0xB327E101701C4E46;
  v8 = v7 ^ 0x189F288B139DDC92;
  v7 ^= 0x8D1AA58C4A6D70A9;
  v9 = (__ROR8__(v8, 8) + v7) ^ 0x71739F379BF98FD9;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x7EDA10D8E8BDE475;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xCB1FD105091A75A6;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = *(v4 + 8 * v1);
  v17 = (((2 * (v15 + v14)) & 0xDA36B97DC122FFD4) - (v15 + v14) - 0x6D1B5CBEE0917FEBLL) ^ 0x12478B359CDA47DCLL;
  v18 = v17 ^ __ROR8__(v14, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x8562C5B0FD26117BLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x97F56CB0FB361A73;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  *(v5 + 4) = v2 ^ 0x8E ^ (((((2 * (v23 + v22)) & 0x690FF71E81D3EE3ELL) - (v23 + v22) - 0x3487FB8F40E9F720) ^ 0x33612E0554EEFA7ELL) >> (8 * ((v5 + 4) & 7)));
  v24 = __ROR8__((v5 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 + 0x72B0B1A0EB3E1587)) | 0x587B403F710B33CALL) - (v24 + 0x72B0B1A0EB3E1587) - 0x2C3DA01FB88599E5;
  v26 = v25 ^ 0x787A966A24FBF4CELL;
  v25 ^= 0xEDFF1B6D7D0B58F5;
  v27 = __ROR8__(v26, 8);
  v28 = (v27 + v25 - ((2 * (v27 + v25)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x903F4534BF6955C0) - (v30 + v29) - 0x481FA29A5FB4AAE1) ^ 0xC93A4DBD48F6B16ALL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0x5C307F409900B7F2) - (v33 + v32) + 0x51E7C05FB37FA406) ^ 0x9AF8115ABA65D1A0;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x80A3287483B4C7C9;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xEF0BBF44D834E002;
  v39 = (0x5E4EF690E20CD2B0 - (v38 | 0x5E4EF690E20CD2B0) + (v38 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x97F56CB0FB361A73;
  v42 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61));
  *(v5 + 5) = v0 ^ 0x97 ^ (((((2 * v42) | 0x39371380251567D4) - v42 + 0x6364763FED754C16) ^ 0x6482A3B5F9724174) >> (8 * ((v5 + 5) & 7)));
  return v16();
}

uint64_t sub_1000E3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = (v8 - 1);
  v24 = v23 == v14;
  v25 = (v23 | ((v23 < v14) << 32)) + v12;
  v26 = __ROR8__((v25 + v9 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v26 - ((2 * v26 - 0x1A9E9CBE2983D4F2) & 0xA682CC081D3CC4C6) + 0x49F217A4F9DC77EALL;
  v28 = v27 ^ a1;
  v29 = v27 ^ a2;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x71739F379BF98FD9;
  v31 = __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + (v30 ^ v31)) ^ 0x7EDA10D8E8BDE475;
  v33 = v32 ^ __ROR8__(v30 ^ v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xCB1FD105091A75A6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((v36 + v35 - (a3 & (2 * (v36 + v35))) + a4) ^ a5, 8);
  v38 = (v36 + v35 - (a3 & (2 * (v36 + v35))) + a4) ^ a5 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38 - (a6 & (2 * (v37 + v38))) + a7) ^ a8;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = ((v17 | (2 * ((v41 + v40) ^ v16))) - ((v41 + v40) ^ v16) + v18) ^ v19;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  *(v25 + v9 + 10) = (((v10 - ((v44 + v43) | v10) + ((v44 + v43) | v20)) ^ v21) >> (8 * ((v25 + v9 + 10) & 7))) ^ *(v13 + v25);
  v45 = !v24;
  return (*(v22 + 8 * ((v45 * v15) ^ (v11 + 3120))))();
}

uint64_t sub_1000E3E24@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 - 0x4761F68478C333DDLL);
  v6 = __ROR8__((v5 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = *(v3 + 8 * v2);
  v8 = (0x8D4F4E5F14C1EA78 - v6) & 0xB123D19BF46E51D1 | (v6 + v4) & 0x4ADC2E640B91AE2ELL;
  v9 = v8 ^ 0xE564E7EE68103CFALL;
  v8 ^= 0x70E16AE931E090C1uLL;
  v10 = __ROR8__(v9, 8);
  v11 = (v10 + v8 - ((2 * (v10 + v8)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v12 = v11 ^ __ROR8__(v8, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((v13 + v12) ^ 0xB15146501DE8B6F8) - ((2 * ((v13 + v12) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0xDBBCA2A7F6876CE0) - (v16 + v15) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x80A3287483B4C7C9;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x97F56CB0FB361A73;
  v5[10] = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v5 + 10) & 7u))) ^ HIBYTE(a1) ^ 0x3C;
  v25 = __ROR8__((v5 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = v25 - ((2 * v25 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v27 = v26 ^ 0xD85F7D3177813639;
  v26 ^= 0x4DDAF0362E719A02uLL;
  v28 = __ROR8__(v27, 8);
  v29 = (((v28 + v26) | 0x337A902E34222EAELL) - ((v28 + v26) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177;
  v30 = v29 ^ __ROR8__(v26, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((v31 + v30) | 0x7B372A0BF60D2AC5) - ((v31 + v30) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xCB1FD105091A75A6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x80A3287483B4C7C9;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x8562C5B0FD26117BLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x97F56CB0FB361A73;
  v5[11] = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v5 + 11) & 7u))) ^ BYTE6(a1) ^ 0x37;
  v41 = __ROR8__((v5 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((2 * v41 - 0x1A9E9CBE2983D4F2) & 0xB50EA0BD07EE0F74) - v41 + 0x32C7FE0090CAE2BELL;
  v43 = v42 ^ 0xF13F99D4E076956ELL;
  v42 ^= 0x64BA14D3B9863955uLL;
  v44 = (__ROR8__(v43, 8) + v42) ^ 0x71739F379BF98FD9;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x7EDA10D8E8BDE475;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xCB1FD105091A75A6;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x80A3287483B4C7C9;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (((v51 + v52) | 0xAE83C850330BCB1ELL) - ((v51 + v52) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v52, 61);
  v56 = (((2 * (v54 + v55)) & 0x8B666A266E091910) - (v54 + v55) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v5[12] = (((((2 * (v58 + v57)) | 0x21458F0F9B85813CLL) - (v58 + v57) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v5 + 12) & 7u))) ^ BYTE5(a1) ^ 0x27;
  v59 = __ROR8__((v5 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = (0xD4F4E5F14C1EA78 - v59) & 0x745A46F181E71788 | (v59 + v4) & 0x8BA5B90E7E18E877;
  v61 = v60 ^ 0x201D70841D997AA3;
  v60 ^= 0xB598FD834469D698;
  v62 = __ROR8__(v61, 8);
  v63 = __ROR8__((((2 * (v62 + v60)) | 0x26843C234468C454) - (v62 + v60) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3, 8);
  v64 = (((2 * (v62 + v60)) | 0x26843C234468C454) - (v62 + v60) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3 ^ __ROR8__(v60, 61);
  v65 = (((v63 + v64) | 0x61D635255ACF2C94) - ((v63 + v64) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xCB1FD105091A75A6;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x80A3287483B4C7C9;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0xBAAB3E68C36E4B71) - ((v71 + v70) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x97F56CB0FB361A73;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (((((v76 + v75) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v76 + v75) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v5 + 13) & 7u))) ^ BYTE4(a1) ^ 0x12;
  v78 = __ROR8__((v5 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v5[13] = v77;
  v79 = ((v78 + v4) | 0x393C5199A3ABE61FLL) - ((v78 + v4) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v80 = v79 ^ 0x6D7B67EC3FD58B34;
  v79 ^= 0xF8FEEAEB6625270FLL;
  v81 = __ROR8__(v80, 8);
  v82 = __ROR8__((((2 * (v81 + v79)) & 0xA01676447DFA0AA6) - (v81 + v79) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575, 8);
  v83 = (((2 * (v81 + v79)) & 0xA01676447DFA0AA6) - (v81 + v79) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575 ^ __ROR8__(v79, 61);
  v84 = (v82 + v83) ^ 0x7EDA10D8E8BDE475;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xCB1FD105091A75A6;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (v88 + v87 - ((2 * (v88 + v87)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0x73019C173CCE7FA9) - ((v91 + v90) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (((v94 + v93) | 0x5071512C1C535486) - ((v94 + v93) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95, 8);
  v5[14] = (((v97 + v96 - ((2 * (v97 + v96)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v5 + 14) & 7u))) ^ BYTE3(a1) ^ 0xAA;
  v98 = __ROR8__((v5 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v99 = ((2 * v98 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v98 - 0x16EB6015C9B52F97;
  v100 = v99 ^ 0xF8267FEBDF688DBLL;
  v99 ^= 0x9A07EAF9E40624E0;
  v101 = (__ROR8__(v100, 8) + v99) ^ 0x71739F379BF98FD9;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (v103 + v102 - ((2 * (v103 + v102)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = __ROR8__((((2 * (v106 + v105)) & 0x6760441E82814852) - (v106 + v105) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70, 8);
  v108 = (((2 * (v106 + v105)) & 0x6760441E82814852) - (v106 + v105) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70 ^ __ROR8__(v105, 61);
  v109 = (((2 * (v107 + v108)) & 0x14B03C0D0DEA5DFELL) - (v107 + v108) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((v111 + v110) | 0x39BC71E438FBF891) - ((v111 + v110) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((2 * (v114 + v113)) & 0xFC603D156314A35ELL) - (v114 + v113) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v5[15] = (((__ROR8__(v115, 8) + (v115 ^ __ROR8__(v113, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v5 + 15) & 7u))) ^ BYTE2(a1) ^ 0x4B;
  v116 = __ROR8__((v5 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v117 = (v116 + v4) ^ 0xC1C2BB72C58EC110;
  v118 = (__ROR8__((v116 + v4) ^ 0x544736759C7E6D2BLL, 8) + v117) ^ 0x71739F379BF98FD9;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x7EDA10D8E8BDE475;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = __ROR8__((v122 + v121 - ((2 * (v122 + v121)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338, 8);
  v124 = (v122 + v121 - ((2 * (v122 + v121)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338 ^ __ROR8__(v121, 61);
  v125 = (v123 + v124 - ((2 * (v123 + v124)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x8562C5B0FD26117BLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x97F56CB0FB361A73;
  v5[16] = (((__ROR8__(v129, 8) + (v129 ^ __ROR8__(v128, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v5 + 16) & 7u))) ^ BYTE1(a1) ^ 0xC;
  v130 = __ROR8__((v5 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = ((2 * (v130 + v4)) | 0xA5E64CF69756B5C4) - (v130 + v4) + 0x2D0CD984B454A51ELL;
  v132 = v131 ^ 0x86B4100ED7D537C9;
  v131 ^= 0x13319D098E259BF2uLL;
  v133 = __ROR8__(v132, 8);
  v134 = (((2 * (v133 + v131)) | 0x559C992A13D30352) - (v133 + v131) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70;
  v135 = v134 ^ __ROR8__(v131, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x7EDA10D8E8BDE475;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xCB1FD105091A75A6;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x80A3287483B4C7C9;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (((2 * (v142 + v141)) & 0x3B5AD3916A0336E4) - (v142 + v141) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x97F56CB0FB361A73;
  v5[17] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v144, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v5 + 17) & 7u))) ^ a1 ^ 0xF8;
  return v7();
}

uint64_t sub_1000E4CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  STACK[0x280] = 0x4761F68478C333F5;
  STACK[0x2E8] = STACK[0x3D8];
  LODWORD(STACK[0x3B4]) = STACK[0x6D0];
  STACK[0x5E8] = a13;
  LODWORD(STACK[0x37C]) = -1329689003;
  return (*(v14 + 8 * (v13 + 120603076)))(a1, a2, 120606109, a4, a5, a6, 120613580);
}

uint64_t sub_1000E4E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  STACK[0x480] = 0x4761F68478C333F5;
  STACK[0x2E8] = STACK[0x450];
  LODWORD(STACK[0x3B4]) = STACK[0x6A0];
  STACK[0x5E8] = a12;
  LODWORD(STACK[0x37C]) = 177388280;
  return (*(v13 + 8 * (v12 + 120603076)))(a1, a2, 120606109, a4, a5, a6, 120613580);
}

uint64_t sub_1000E4F8C()
{
  v3 = (*(v2 + 8 * (v0 + 15015)))();
  v4 = STACK[0x258];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000E50A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46)
{
  LODWORD(STACK[0x41C]) = v47;
  STACK[0x438] = STACK[0x580];
  STACK[0x370] = a46;
  LODWORD(STACK[0x2A4]) = 313201793;
  return (*(v48 + 8 * v46))(a1, 405260754);
}

uint64_t sub_1000E5118@<X0>(int a1@<W8>)
{
  v8 = (v4 - 1);
  v9 = v6 + v8 + ((v8 < v1) << 32) - 0x1097D3D2FLL;
  v10 = v9 + v2 + 10;
  v11 = __ROR8__((v3 + v9) & 0xFFFFFFFFFFFFFFF8, 8) + 0x72B0B1A0EB3E1587;
  v12 = (v11 | 0x4FAF6E94D8C1692CLL) - (v11 | 0xB050916B273E96D3) - 0x4FAF6E94D8C1692DLL;
  v13 = v12 ^ 0x1BE858E144BF0407;
  v12 ^= 0x8E6DD5E61D4FA83CLL;
  v14 = (__ROR8__(v13, 8) + v12) ^ 0x71739F379BF98FD9;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7EDA10D8E8BDE475;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xCB1FD105091A75A6;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x80A3287483B4C7C9;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8562C5B0FD26117BLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8) + 0x72B0B1A0EB3E1587;
  v25 = (v24 | 0x1ABEEDF775B7C90ALL) - (v24 | 0xE54112088A4836F5) - 0x1ABEEDF775B7C90BLL;
  v26 = v25 ^ 0x4EF9DB82E9C9A421;
  v25 ^= 0xDB7C5685B039081ALL;
  v27 = (__ROR8__(v22, 8) + v23) ^ 0x97F56CB0FB361A73;
  v28 = (__ROR8__(v26, 8) + v25) ^ 0x71739F379BF98FD9;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x7EDA10D8E8BDE475;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__(v27, 8) + (v27 ^ __ROR8__(v23, 61));
  v34 = __ROR8__((v32 + v31 - ((2 * (v32 + v31)) & 0xCA64426AC452CB7CLL) - 0x1ACDDECA9DD69A42) ^ 0x2E2DF0306B331018, 8);
  v35 = (v32 + v31 - ((2 * (v32 + v31)) & 0xCA64426AC452CB7CLL) - 0x1ACDDECA9DD69A42) ^ 0x2E2DF0306B331018 ^ __ROR8__(v31, 61);
  v36 = __ROR8__((v34 + v35) ^ 0x80A3287483B4C7C9, 8);
  v37 = (v34 + v35) ^ 0x80A3287483B4C7C9 ^ __ROR8__(v35, 61);
  v38 = __ROR8__((v36 + v37) ^ 0x8562C5B0FD26117BLL, 8);
  v39 = (v36 + v37) ^ 0x8562C5B0FD26117BLL ^ __ROR8__(v37, 61);
  *v10 = (((__ROR8__((v38 + v39) ^ 0x97F56CB0FB361A73, 8) + ((v38 + v39) ^ 0x97F56CB0FB361A73 ^ __ROR8__(v39, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * (v10 & 7u))) ^ (((((2 * v33) | 0x4F0E3F734592CA70) - v33 - 0x27871FB9A2C96538) ^ 0xDF9E35CC493197A6) >> (8 * ((v3 + v9) & 7))) ^ *(v3 + v9);
  return (*(v7 + 8 * (((v8 == v1) * v5) ^ a1)))();
}

uint64_t sub_1000E54C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52)
{
  STACK[0x488] = STACK[0x308];
  STACK[0x270] = a52;
  LODWORD(STACK[0x2B8]) = 996522441;
  return (*(v53 + 8 * v52))();
}

uint64_t sub_1000E55D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v52 = STACK[0x3F8];
  (*(v51 + 8 * (v49 + 15069)))(&STACK[0x508], &STACK[0x4BC], 32);
  *(v50 - 208) = &STACK[0x4BC];
  *(v50 - 200) = a49;
  *(v50 - 216) = v49 - 53688491 * ((-112776436 - ((v50 - 216) | 0xF9472B0C) + ((v50 - 216) | 0x6B8D4F3)) ^ 0xB0A10C25) - 2345;
  *(v50 - 192) = v52;
  v53 = (*(STACK[0x258] + 8 * (v49 ^ 0x45A8)))(v50 - 216);
  return (*(STACK[0x258] + 8 * v49))(v53, 405260754, 120606109);
}

uint64_t sub_1000E570C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = a1 & 0xC4AB7FED;
  STACK[0x3B8] = 0;
  LODWORD(STACK[0x2B4]) = 939797205;
  if (a43)
  {
    v46 = v43 == 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v46;
  return (*(v44 + 8 * (((v45 ^ 0xF8CFE718 ^ (v45 - 120612526)) * v47) ^ v45)))();
}

uint64_t sub_1000E5778()
{
  v3 = (*(v2 + 8 * (v1 + 13666)))(v0);
  v4 = STACK[0x258];
  STACK[0x300] = v3;
  v5 = v3 == 0;
  LOBYTE(STACK[0x3CB]) = v5;
  return (*(v4 + 8 * ((v5 * ((v1 ^ 0x155E) - 15385 + 226 * (v1 ^ 0x155E))) ^ v1)))();
}

uint64_t sub_1000E5840()
{
  v4 = STACK[0x478];
  v5 = &STACK[0x710] + STACK[0x478];
  STACK[0x290] = v5;
  v6 = v5 + 16;
  STACK[0x350] = (v5 + 16);
  STACK[0x310] = (v5 + 48);
  STACK[0x478] = ((v1 + 1979630829) & 0xEFE7F6F8 ^ 0x65E6F6A8) + v4;
  (*(v3 + 8 * (v1 + 3893)))();
  v7 = (*(STACK[0x258] + 8 * (v1 ^ 0x7155)))(v6, 0, 32);
  v8 = STACK[0x258];
  STACK[0x5F8] = v2;
  STACK[0x420] = 0;
  LODWORD(STACK[0x44C]) = -1240130101;
  STACK[0x408] = 0;
  LODWORD(STACK[0x558]) = 939797205;
  STACK[0x410] = v0;
  return (*(v8 + 8 * ((50 * (((v0 == 0x270676553BF336C1) ^ v1 ^ 0x75) & 1)) ^ v1)))(v7);
}

uint64_t sub_1000E5934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x5A8] = 0;
  LODWORD(STACK[0x334]) = v6;
  return (*(v8 + 8 * (v7 - 4334 + ((v7 + 1325315732) & 0xB1015F6F))))(a1, a2, a3, a4, a5, a6, 120613580);
}

uint64_t sub_1000E59F4()
{
  STACK[0x308] = 0x270676553BF336C1;
  v2 = STACK[0x614];
  STACK[0x478] += (v0 - 1068) ^ 0xFFFFFFFFFFFFD8E9;
  return (*(v1 + 8 * ((5809 * (v2 == v0 - 1418250047)) ^ v0)))();
}

uint64_t sub_1000E5AC8@<X0>(int a1@<W8>)
{
  STACK[0x2F8] = *(v6 + 8 * a1);
  STACK[0x2D0] = v2;
  LODWORD(STACK[0x54C]) = v3;
  STACK[0x568] = v1;
  STACK[0x5C0] = 0x48D7F4DE5FEDAB91;
  LODWORD(STACK[0x618]) = -1240130101;
  STACK[0x4F8] = 0x8C38D1834A63647;
  STACK[0x388] = 0;
  v7 = (*(v6 + 8 * (v4 + 968)))(16);
  v8 = STACK[0x258];
  STACK[0x5D8] = v7 + v5;
  return (*(v8 + 8 * (((v7 == 0) * (((v4 - 805750448) & 0xF67F91FF) + 965144135)) ^ v4)))();
}

uint64_t sub_1000E5B90(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(v2 + 8 * ((6029 * (v1 < 0xA9FE0239)) ^ (v1 + 965147538))))();
}

uint64_t sub_1000E5C38@<X0>(int a1@<W8>)
{
  v3 = a1 - 3332;
  v4 = (*(v2 + 8 * (v1 + 120617524)))();
  return (*(STACK[0x258] + 8 * v3))(v4);
}

uint64_t sub_1000E5D10@<X0>(uint64_t *a1@<X8>)
{
  v5 = *a1;
  STACK[0x4E0] = *(v4 + 8 * v2);
  return (*(v4 + 8 * (((((v1 + 62) ^ (v5 == v3)) & 1) * ((v1 + 548551171) & 0xDF4DAEF7 ^ 0xA5A)) ^ v1)))();
}

uint64_t sub_1000E5D8C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4A0] = a1;
  LODWORD(STACK[0x55C]) = v3;
  LOWORD(STACK[0x5CE]) = 4422;
  LODWORD(STACK[0x26C]) = -1240130097;
  LODWORD(STACK[0x364]) = v2;
  STACK[0x2E0] = 0x8C38D1834A63647;
  LODWORD(STACK[0x324]) = -1092375531;
  STACK[0x470] = 0;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_1000E5E4C()
{
  STACK[0x358] = 0;
  v2 = *(STACK[0x410] - 0x270676553BF336B9);
  STACK[0x5D0] = 0;
  LODWORD(STACK[0x4DC]) = 1521435704;
  LODWORD(STACK[0x4F4]) = -1240130101;
  return (*(v1 + 8 * ((9 * (v2 != v0)) ^ 0xA61)))();
}

uint64_t sub_1000E5F5C@<X0>(int a1@<W8>)
{
  v3 = (a1 + 13) & 0xF;
  LODWORD(STACK[0x4DC]) = 1521435720 - v3;
  return (*(v2 + 8 * ((((16 - v3) + (a1 - 711894461) < 0xFFFFFFF6) * (((v1 + 272685487) | 0x29B0A100) - 972112010)) ^ v1)))();
}

uint64_t sub_1000E5FDC@<X0>(int a1@<W8>)
{
  v4 = v1 + a1 - (((v2 + 972126895) ^ 0x55DB92C5) & (2 * (v1 + a1) + 1975790634)) + 821507040;
  LODWORD(STACK[0x4F4]) = v4;
  v5 = (*(v3 + 8 * (v2 ^ 0x64F5)))(v4 ^ 0xB6151DCB);
  v6 = STACK[0x258];
  STACK[0x5D0] = v5;
  return (*(v6 + 8 * ((22 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1000E66C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a1 + v8 - 0x29042A29C848A081;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((2 * (v20 + v13)) | 0x41464A5B394381C2) - (v20 + v13) - 0x20A3252D9CA1C0E1;
  v22 = __ROR8__(v21 ^ 0x224BC818639E261FLL, 8);
  v21 ^= 0x6ED674960904A00CuLL;
  v23 = (v22 + v21) ^ v12;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0x6B520D126F6C5EE9 - ((v25 + v24) | 0x6B520D126F6C5EE9) + ((v25 + v24) | 0x94ADF2ED9093A116)) ^ 0xDFF3084102A165F8;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v11;
  v29 = *(v18 + 8 * v9);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v28, 8) + v30) ^ a7;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v14;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v10;
  *v19 = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * (v19 & 7u))) ^ HIBYTE(v15) ^ 0x39;
  v36 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = (v36 + v13) ^ 0x4E7551BB95A560EDLL;
  v38 = __ROR8__((v36 + v13) ^ v16, 8);
  v39 = __ROR8__((((v38 + v37) & 0x8CBEECD508176A84 ^ 0x8826C05100060884) + ((v38 + v37) ^ 0x37993C8639997610) - (((v38 + v37) ^ 0x37993C8639997610) & 0x8CBEECD508176A84)) ^ 0xCCC48F87CD302B18, 8);
  v40 = (((v38 + v37) & 0x8CBEECD508176A84 ^ 0x8826C05100060884) + ((v38 + v37) ^ 0x37993C8639997610) - (((v38 + v37) ^ 0x37993C8639997610) & 0x8CBEECD508176A84)) ^ 0xCCC48F87CD302B18 ^ __ROR8__(v37, 61);
  v41 = (v39 + v40) ^ 0x4B5EFAAC9232C4EELL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (0xD2CC4FF622D0DD5ELL - ((v43 + v42) | 0xD2CC4FF622D0DD5ELL) + ((v43 + v42) | 0x2D33B009DD2F22A1)) ^ 0xAE975BDDD1138DB7;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) & 0xBA550E4D1AF9B3B6) - (v46 + v45) - 0x5D2A87268D7CD9DCLL) ^ 0x578C196BAFBC070DLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__((((2 * (v49 + v48)) | 0x524236F1B792259ELL) - (v49 + v48) + 0x56DEE4872436ED31) ^ 0x90ABC91FDDCBE006, 8);
  v51 = (((2 * (v49 + v48)) | 0x524236F1B792259ELL) - (v49 + v48) + 0x56DEE4872436ED31) ^ 0x90ABC91FDDCBE006 ^ __ROR8__(v48, 61);
  *(v19 + 1) = (((__ROR8__((v50 + v51) ^ 0xC48877EC7E57888, 8) + ((v50 + v51) ^ 0xC48877EC7E57888 ^ __ROR8__(v51, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(v15) ^ 0x90;
  v52 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v53 = ((2 * (v52 + v13)) | 0x20034F39A2C9E294) - (v52 + v13) - 0x1001A79CD164F14ALL;
  v54 = __ROR8__(v53 ^ 0x12E94AA92E5B17B4, 8);
  v53 ^= 0x5E74F62744C191A7uLL;
  v55 = (((v54 + v53) & 0x3E559E766351B66FLL ^ 0x1804960262400267) + ((v54 + v53) & 0xC1AA61899CAE4990 ^ 0x8100618110064981) - 1) ^ 0xEEE7A8578EF87C6BLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x4B5EFAAC9232C4EELL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((((2 * (v59 + v58)) | 0x64C4DA04D527E96ELL) - (v59 + v58) + 0x4D9D92FD956C0B49) ^ 0x31C686D666AF5BA1, 8);
  v61 = (((2 * (v59 + v58)) | 0x64C4DA04D527E96ELL) - (v59 + v58) + 0x4D9D92FD956C0B49) ^ 0x31C686D666AF5BA1 ^ __ROR8__(v58, 61);
  v62 = (v60 + v61) ^ a7;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ v14;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xC48877EC7E57888;
  *(v19 + 2) = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v65, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(v15) ^ 0xC7;
  v67 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (v67 + v13) ^ 0x4E7551BB95A560EDLL;
  v69 = (__ROR8__((v67 + v13) ^ v16, 8) + v68) ^ v12;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x4B5EFAAC9232C4EELL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v11;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ a7;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v14;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xC48877EC7E57888;
  v80 = __ROR8__(v79, 8) + (v79 ^ __ROR8__(v78, 61));
  *(v19 + 3) = v15 ^ a2 ^ ((((v17 | (2 * v80)) - v80 + a6) ^ v7) >> (8 * ((v19 + 3) & 7)));
  return v29();
}

uint64_t sub_1000E6C44@<X0>(_BYTE *a1@<X8>)
{
  *a1 = v1;
  *v2 = v3;
  return (*(v5 + 88728))(v4);
}

uint64_t sub_1000E6D04@<X0>(int a1@<W8>)
{
  v4 = -377068930 - *(v1 - 0x4761F68478C333E5);
  v5 = a1 - 1508224156 > v4;
  if (a1 - 1508224156 < (v2 ^ 0x320Cu) - 796341605 != v4 < 0xD088F921)
  {
    v5 = a1 - 1508224156 < (v2 ^ 0x320Cu) - 796341605;
  }

  return (*(v3 + 8 * ((((v2 ^ 0x39F1B5D8 ^ v5) & 1) == 0) | (4 * (((v2 ^ 0x39F1B5D8 ^ v5) & 1) == 0)) | v2)))();
}

uint64_t sub_1000E6F1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x230] = v5;
  LODWORD(STACK[0x250]) = a4;
  return (*(v6 + 8 * v4))();
}

uint64_t sub_1000E700C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W4>, uint64_t a3@<X8>)
{
  v20 = (v9 | ((v9 < a2) << 32)) + 0x122F5B9815EA0D49;
  v21 = v3 + v20 + ((v5 - 847201843) ^ 0xEDD0A46746090C7ALL);
  v22 = a1 + v6 + v20;
  v23 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((v4 + 2 * v23) & 0x25C1D39330189B28) + 0x5919B6A834A631BLL;
  v25 = v24 ^ 0xC6A7DFBC047220BFLL;
  v24 ^= 0x532252BB5D828C84uLL;
  v26 = (__ROR8__(v25, 8) + v24) ^ v15;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v13;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xCF048CB0FFFE1ACELL) - (v30 + v29) + 0x187DB9A78000F298) ^ 0xD36268A2891A873ELL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v33 + v32 - ((2 * (v33 + v32)) & 0xB0C104016A1458EELL) + 0x58608200B50A2C77) ^ 0xD8C3AA7436BEEBBELL, 8);
  v35 = (v33 + v32 - ((2 * (v33 + v32)) & 0xB0C104016A1458EELL) + 0x58608200B50A2C77) ^ 0xD8C3AA7436BEEBBELL ^ __ROR8__(v32, 61);
  v36 = v34 + v35;
  v37 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((v37 + a3) | 0x4DB55771656C47E3) - ((v37 + a3) | v10) + v10;
  v39 = v38 ^ 0x4F5DBA449A53A11DLL;
  v38 ^= 0x3C006CAF0C9270EuLL;
  v40 = (((2 * v36) | 0x29D0B04F6069146CLL) - v36 - 0x14E85827B0348A36) ^ 0x918A9D974D129B4DLL;
  v41 = (__ROR8__(v39, 8) + v38) ^ v17;
  v42 = v41 ^ __ROR8__(v38, 61);
  v43 = v40 ^ __ROR8__(v35, 61);
  v44 = (__ROR8__(v41, 8) + v42) ^ v14;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v12;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v40, 8) + v43) ^ v11;
  v50 = (((2 * (v47 + v48)) & 0xB29E551FCF567774) - (v47 + v48) + 0x26B0D5701854C445) ^ 0xD3E9B4C2C56BE56CLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8) + v51;
  v53 = __ROR8__(v49, 8) + (v49 ^ __ROR8__(v43, 61));
  v54 = (((2 * v52) & 0xC95BDFF66F213F6ELL) - v52 + 0x1B521004C86F6048) ^ 0x22D8C263CE6D9281;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xC48877EC7E57888;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *v22 = (((v16 - (v53 | v16) + (v53 | 0x90A460FA0134A3D6)) ^ 0x68BD4A8FEACC5148) >> (8 * (v21 & 7u))) ^ (((((2 * (v58 + v57)) & 0x9041B642E88C552CLL) - (v58 + v57) + 0x37DF24DE8BB9D569) ^ 0x9B93BABBBA4F7A59) >> (8 * (v22 & 7u))) ^ *v21;
  return (*(v19 + 8 * ((29 * ((v8 | v7) >> 31)) ^ (v5 + v18))))();
}

uint64_t sub_1000E7724(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v17 = *(v16 + 8 * v12);
  v18 = (a3 + a2 + 878871050 - a12);
  LODWORD(STACK[0x220]) = v12 - 7509;
  *&STACK[0x230] = xmmword_1004248B0;
  return v17(v18, (v18 + 1), (v18 + 2), (v18 + 3), (v18 + 4), (v18 + 5), (v18 + 6), 102, vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(a4), vdupq_n_s64(a6), vdupq_n_s64(v13), vdupq_n_s64(v14), vdupq_n_s64(a7), vdupq_n_s64(v15));
}

uint64_t sub_1000E7860@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int8x16_t a10@<Q0>, int8x16_t a11@<Q1>, int64x2_t a12@<Q2>, int8x16_t a13@<Q3>, int8x16_t a14@<Q4>, int8x16_t a15@<Q5>, int8x16_t a16@<Q6>, int8x16_t a17@<Q7>)
{
  v38.i64[0] = a9 + v17 + v23 + (a1 + v19);
  v38.i64[1] = a9 + v17 + v23 + (v22 + v19);
  v39.i64[0] = a9 + v17 + v23 + (a3 + v19);
  v39.i64[1] = a9 + v17 + v23 + (a2 + v19);
  v40.i64[0] = a9 + v17 + v23 + (a5 + v19);
  v40.i64[1] = a9 + v17 + v23 + (a4 + v19);
  v41.i64[0] = a9 + v17 + v23 + (a7 + v19);
  v41.i64[1] = a9 + v17 + v23 + (a6 + v19);
  v42 = vandq_s8(v41, a10);
  v43 = vandq_s8(v40, a10);
  v44 = vandq_s8(v39, a10);
  v45 = vandq_s8(v38, a10);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), a12);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a12);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a12);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a12);
  v50 = vsubq_s64(vorrq_s8(v48, a13), vorrq_s8(v48, a14));
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v49, a13), vorrq_s8(v49, a14)), a14);
  v52 = vaddq_s64(v50, a14);
  v53 = veorq_s8(v52, a15);
  v54 = veorq_s8(v51, a15);
  v55 = veorq_s8(v51, a16);
  v56 = veorq_s8(v52, a16);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), a17), v58), v25), v26);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), a17), v57), v25), v26);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v27);
  v66 = veorq_s8(v64, v27);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(v71, v28);
  v73 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v71, v29), v30), v72), vandq_s8(v72, v29));
  v74 = veorq_s8(v70, v28);
  v75 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v70, v29), v30), v74), vandq_s8(v74, v29)), v31);
  v76 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v77 = veorq_s8(v73, v31);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v79 = veorq_s8(v75, v76);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v78), v32);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79), v32);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v33);
  v88 = veorq_s8(v86, v33);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v34);
  v95 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v96 = veorq_s8(v93, v34);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v95);
  v99 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v101 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a13), vorrq_s8(v47, a14)), a14);
  v102 = vaddq_s64(v100, v98);
  v103 = vaddq_s64(v99, v97);
  v143.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v35), v102), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a11)));
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), v35), v103), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a11)));
  v104 = veorq_s8(v101, a15);
  v105 = veorq_s8(v101, a16);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), a17), v106), v25), v26);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v27);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(v111, v28);
  v113 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v111, v29), v30), v112), vandq_s8(v112, v29)), v31);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v32);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v33);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v34);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL)));
  v121 = vaddq_s64(vsubq_s64(vorrq_s8(v46, a13), vorrq_s8(v46, a14)), a14);
  v143.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v35), v120), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a11)));
  v122 = veorq_s8(v121, a15);
  v123 = veorq_s8(v121, a16);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), a17), v124), v25), v26);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v27);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = vandq_s8(v129, v29);
  v131 = veorq_s8(v129, v28);
  v132 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(v130, v30), v131), vandq_s8(v131, v29)), v31);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v32);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v33);
  v137 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v139 = veorq_s8(v136, v137);
  v140 = veorq_s8(vaddq_s64(v138, v139), v34);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL)));
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), v35), v141), v36), v37), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a11)));
  *(v41.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v143, *&STACK[0x230]));
  return (*(v24 + 8 * ((((v21 | (v20 + v19)) >= 0) * a8) ^ v18)))();
}

uint64_t sub_1000E7EF4(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(v7 + 8 * (v6 + 120600863));
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a4);
  return v8((a3 + a2 + 878871052), (a3 + a2 + 878871053), (a3 + a2 + 878871054), (a3 + a2 + 878871055), (a3 + a2 + 878871056));
}

uint64_t sub_1000E8DE4@<X0>(uint64_t a1@<X3>, int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v24 = a6 + STACK[0x250] - 0x62086BABF87B81A8 + (v10 ^ v11) + v22 + v7;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 + a1) | a3) - ((v25 + a1) | v8) + v8;
  v27 = v26 ^ v19;
  v28 = v26 ^ a4;
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__(((v20 & (2 * (v29 + v28))) - (v29 + v28) + v21) ^ v15, 8);
  v31 = ((v20 & (2 * (v29 + v28))) - (v29 + v28) + v21) ^ v15 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0x4B5EFAAC9232C4EELL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) & v9 ^ v18) + ((v34 + v33) ^ v6) - (((v34 + v33) ^ v6) & v9)) ^ v17;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF55961B2DD3F2129;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x398AD2670602F2C9;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v13;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  *v24 = (((a5 | (2 * (v43 + v42))) - (v43 + v42) + v16) ^ v14) >> (8 * (v24 & 7u));
  return (*(v23 + 8 * (((v7 - 1 == a2) * v12) ^ v10)))();
}

uint64_t sub_1000E8F2C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x420] = a1;
  LODWORD(STACK[0x44C]) = STACK[0x4F4];
  return (*(v2 + 8 * ((STACK[0x290] == 0) ^ v1)))();
}

uint64_t sub_1000E9044()
{
  *(v4 - 216) = v1 + 2054851651 * ((-1522883679 - ((v4 - 216) | 0xA53AA3A1) + ((v4 - 216) | 0x5AC55C5E)) ^ 0xD66BF378) + 1936;
  v6 = (*(v5 + 8 * (v1 ^ 0x7A6A)))(v4 - 216);
  v7 = STACK[0x258];
  v8 = *(v4 - 208);
  v9 = (v0 + v2 - 81984338);
  *v9 = v8 ^ 0x27;
  v9[1] = (4 * v1) ^ 0xB4 ^ BYTE1(v8) ^ 0xCC;
  return (*(v7 + 8 * ((115 * (v0 != v3 + 1350)) ^ v1)))(v6);
}

uint64_t sub_1000E9104@<X0>(int a1@<W8>)
{
  v7 = v2 + v1 + v4;
  *(v7 + 2) = BYTE2(a1) ^ 0x69;
  *(v7 + 3) = HIBYTE(a1) ^ 0xF5;
  return (*(v6 + 8 * ((((v3 ^ 0x3577) - 1342) * (v1 == v5 + 1348)) ^ v3 ^ 0x348)))();
}

uint64_t sub_1000E9158@<X0>(uint64_t a1@<X8>)
{
  *(v4 + v3 + v2 + ((v3 - 2055683921) & 0x7A877BBF ^ 0xFFFFFFFFFB1CBEDDLL)) = BYTE4(a1) ^ 0xC8;
  *(v1 + 5) = BYTE5(a1) ^ 0x70;
  return (*(v6 + 8 * ((v3 + 11290) ^ (225 * (v2 != v5 + 1346)))))();
}

uint64_t sub_1000E91D4@<X0>(unint64_t a1@<X8>)
{
  v7 = v3 + v2 + v4;
  *(v7 + 6) = (a1 >> (v1 + 121)) ^ 0x79;
  *(v7 + 7) = HIBYTE(a1) ^ 0x60;
  return (*(v6 + 8 * ((119 * (v2 + 8 != ((v1 - 919235672) & 0x36CA2FE8) + v5)) ^ v1)))();
}

uint64_t sub_1000E9334()
{
  v3 = STACK[0x420];
  STACK[0x358] = STACK[0x420];
  v4 = STACK[0x350];
  v5 = STACK[0x290];
  v6 = (LODWORD(STACK[0x44C]) ^ 0xC8EAE27D) - 340856848 + (((((v0 + 428965601) | 0x20602010) - 1005694696) ^ (v0 - 1371)) & (2 * LODWORD(STACK[0x44C])) ^ 0x6C2A3B04);
  v7 = 1901182499 * ((~((v1 - 216) | 0x1D8B77AC) + ((v1 - 216) & 0x1D8B77AC)) ^ 0xAE690FB1);
  *(v1 - 188) = v7 ^ 0x42DBB3EC;
  *(v1 - 184) = (v0 + 9270) ^ v7;
  *(v1 - 208) = v3;
  *(v1 - 200) = v4;
  *(v1 - 216) = v6 ^ v7;
  *(v1 - 176) = v5;
  *(v1 - 168) = v3;
  v8 = (*(v2 + 8 * (v0 ^ 0x405D)))(v1 - 216);
  return (*(STACK[0x258] + 8 * ((1534 * (*(v1 - 192) == -1418238986)) ^ v0)))(v8);
}

uint64_t sub_1000E9570@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4A0] = a1;
  LODWORD(STACK[0x55C]) = v4;
  LOWORD(STACK[0x5CE]) = -10518;
  LODWORD(STACK[0x26C]) = v2;
  LODWORD(STACK[0x364]) = -1240130101;
  STACK[0x2E0] = 0x8C38D1834A63647;
  STACK[0x470] = v3;
  LODWORD(STACK[0x324]) = -1092375529;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_1000E9AD0(uint64_t a1)
{
  *(a1 + ((2 * (v1 + ((v2 + 685771020) | 0x3148008u) - 812381175)) & 0x1BE5D6FE4) + ((v1 + ((v2 + 685771020) | 0x3148008u) - 812381175) ^ 0xBFFE65BEDF2EB7F2) + 0x40019A4120D1480ELL) = 0;
  v5 = v1 - 74929131;
  *(a1 + ((2 * (v5 + 4)) & 0x17E37FF7ALL) + ((v5 + 4) ^ 0xEDEBBCFFBF1BFFBDLL) + 0x1214430040E40043) = -9392;
  v6 = a1 + ((2 * (v5 + 6)) & 0xFFD97B74) + ((v5 + 6) ^ 0x7AF2F7B77FECBDBALL) - 0x7AF2F7B77FECBDBALL;
  *v6 = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = (-69 - v3 - ((-2 * v3) & 0x16)) ^ 0xAB;
  return (*(v4 + 8 * (v2 ^ (472 * (((16 - v3) ^ 0xE007FFFFD9B74E8FLL) + 2 * ((16 - v3) & 0xFLL) != 0xE007FFFFD9B74E8FLL)))))();
}

uint64_t sub_1000E9C68(uint64_t a1)
{
  *v3 = a1;
  *v2 = v4;
  return (*(v5 + 8 * ((8237 * (v1 == ((v1 - 858050541) ^ 0x2E3BA67E))) ^ (v1 - 737443881))))();
}

uint64_t sub_1000E9D28()
{
  STACK[0x3B8] = STACK[0x408];
  LODWORD(STACK[0x2B4]) = STACK[0x558];
  return (*(v1 + 8 * (v0 - 1382)))();
}

uint64_t sub_1000E9D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51)
{
  LODWORD(STACK[0x360]) = v52;
  STACK[0x370] = a51;
  LODWORD(STACK[0x2A4]) = 497319715;
  return (*(v53 + 8 * ((12913 * (v51 != -731545854)) ^ (v51 - 972134558))))(a1, 405260754, 120606109);
}

uint64_t sub_1000E9F1C(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(v6 - 0x68C795981DE4D150);
  STACK[0x528] = v8;
  return (*(v7 + 8 * (((v8 == v5) * (((v4 + a1) & a4) + ((v4 + 2200) ^ 0xCF923735))) ^ v4)))();
}

uint64_t sub_1000EA088()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x7AA2)))();
  v4 = STACK[0x258];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000EA3E4()
{
  STACK[0x370] = STACK[0x3A0] + 0x41C11F42E1F19A8FLL;
  LODWORD(STACK[0x2A4]) = 589378676;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000EA5D0@<X0>(int a1@<W6>, int a2@<W8>)
{
  v4 = STACK[0x360];
  STACK[0x478] += ((a2 ^ 0xF8CFC1DD) - 9849) ^ a2 ^ (v2 - 2873);
  return (*(v3 + 8 * ((27868 * (v4 == -1418238986)) ^ (a1 + a2 - 2809))))();
}

uint64_t sub_1000EA6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  (*(v54 + 8 * (v52 + 6810)))(v51, *(v53 + 8 * (v52 ^ 0x2FAB)) - 582971382, (v52 ^ 0x3B0B ^ v50 ^ 0xAB77770F));
  v55 = (*(STACK[0x258] + 8 * (v52 + 6655)))(a50, v51);
  return (*(STACK[0x258] + 8 * v52))(v55, 405260754, 120606109);
}

uint64_t sub_1000EA8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  STACK[0x270] = a57;
  LODWORD(STACK[0x2B8]) = 414015382;
  return (*(v58 + 8 * (a3 + v57 + 2495)))();
}

uint64_t sub_1000EAA60()
{
  v4 = v0 + 1249648471 + ((v2 + 1459456156) & 0xA90255FB);
  v5 = -1270798416 - *(v1 - 0x4761F68478C333E5);
  v6 = v4 < 0x9B43BE53;
  v7 = v4 > v5;
  v8 = (v5 < 0x9B43BE53) ^ v6;
  v9 = v7;
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  return (*(v3 + 8 * ((219 * v10) ^ v2)))();
}

uint64_t sub_1000EACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v13 = ((v4 - 1058940426) & 0x3F1E1DFE ^ 0xFFFFE605) + v5;
  v14 = (v13 | ((v13 < a4) << 32)) + 0x255B07BE854924D0;
  v15 = v14 + v6 - 0x255B07BE89A8D368;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((v16 + v10) & 0x4010E9E83BB82F35 ^ 0x200002033000124) + ((v16 + v10) & 0xB9EF1617C447D0CALL ^ 0x30C800000440D049) - 1;
  v18 = v17 ^ 0x648F3655AB3EBC47;
  v17 ^= 0xF10ABB52F2CE107CLL;
  v19 = __ROR8__(v18, 8);
  v20 = (((2 * (v19 + v17)) & 0x475D9ED9F33B10C6) - (v19 + v17) + 0x5C5130930662779CLL) ^ 0x2D22AFA49D9BF845;
  v21 = v20 ^ __ROR8__(v17, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v9;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a2;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v8;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v11 - ((v30 + v29) | v11) + ((v30 + v29) | 0xCC0A83AA59BDF645)) ^ 0x5BFFEF1AA28BEC36;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  *(a1 + v7 + v14) = (((((2 * (v33 + v32)) | 0x6AFFFDB07E3B3B12) - (v33 + v32) - 0x357FFED83F1D9D89) ^ 0xCD66D4ADD4E56F17) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(v12 + 8 * ((5293 * (v13 == a4)) ^ v4)))();
}

uint64_t sub_1000EAF1C(uint64_t a1, unint64_t a2)
{
  *(v6 + v2 - 0x3E8CADFB2CA76998) = 0;
  v8 = v6 - 0x3E8CADFB06D74E54;
  v9 = (v3 < a2) ^ (v8 < a2);
  v10 = v8 < v3;
  if (v9)
  {
    v10 = v3 < a2;
  }

  return (*(v7 + 8 * ((v10 * v5) ^ v4)))();
}

uint64_t sub_1000EAFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49)
{
  STACK[0x270] = a49;
  LODWORD(STACK[0x2B8]) = v50;
  return (*(v51 + 8 * v49))();
}

uint64_t sub_1000EB178()
{
  v3 = *(v0 - 0x1F2C2857A850641ELL);
  STACK[0x3A0] = v3;
  return (*(v2 + 8 * (((v3 == 0x270676553BF336C1) * ((v1 - 120613208) ^ (v1 - 120613242))) ^ v1)))();
}

uint64_t sub_1000EB1E8(uint64_t a1, int a2)
{
  STACK[0x370] = v2 + 0x41C11F42E1F19A97;
  LODWORD(STACK[0x2A4]) = a2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1000EB414@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3D8] = a1;
  LODWORD(STACK[0x6D0]) = v7;
  LOWORD(STACK[0x6D6]) = v8;
  LODWORD(STACK[0x6D8]) = v4;
  LODWORD(STACK[0x250]) = v3;
  LODWORD(STACK[0x6DC]) = v3;
  STACK[0x6E0] = v2;
  STACK[0x6E8] = v5;
  v11 = a1 != v6 && (v4 ^ (2732 * (v1 ^ 0x126Cu) - 1240141030)) < 0xFFFFFFF6;
  return (*(v9 + 8 * ((v11 * (v1 + 7899)) ^ v1)))();
}

uint64_t sub_1000EB494()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x60E6)))(32);
  STACK[0x230] = v2 + 0x4761F68478C333F5;
  STACK[0x460] = v2 + 0x4761F68478C333F5;
  return (*(v1 + 8 * (((v2 != 0) * (((6397 * (v0 ^ 0x2AB2)) ^ 0x3B61) - 2599)) ^ v0)))();
}

uint64_t sub_1000EB504(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = v2 ^ 0xB61519FA ^ (29 * (((v1 + 1767) | 0x2078) ^ 0x31DF));
  STACK[0x6F0] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0x9EFFEB7E) + 2046655968 + ((2 * (v5 + 10)) & 0x3DFFD6FC);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v1 + 16315)))((v5 - 419260766));
  *(a1 + 24) = v6;
  return (*(v3 + 8 * ((45 * (v6 != 0)) ^ v1)))();
}

uint64_t sub_1000EB5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  LODWORD(STACK[0x210]) = v59;
  LODWORD(STACK[0x220]) = STACK[0x6A8];
  return (*(v61 + 8 * (v60 ^ 0x1E84 ^ (v60 + 10779))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1000EB668()
{
  v3 = (*(v2 + 8 * (v0 + 6233)))();
  v4 = STACK[0x258];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000EBB60@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + ((2 * (a1 - 0x48D7F4DE5FEDAB8BLL)) & 0x7FFE7F7AFFF7F7DALL) + ((a1 - 0x48D7F4DE5FEDAB8BLL) ^ 0xFFFF3FBD7FFBFBEDLL) + 0xC04280040413);
  v6 = (*v5 << 24) | (v5[1] << 16) | (v5[2] << 8);
  v7 = (((v6 | v5[3]) - 1240130101 - 2 * ((v6 | v5[3]) & 0x36151DCF ^ v5[3] & 4)) ^ 0xB6151DCB) + a1 - 0x48D7F4DE110B8B60;
  v8 = v3 - 0x70B435BA81FA21A1;
  v10 = v8 > 0x4EE22026 && v7 > v8;
  return (*(v4 + 8 * ((231 * v10) ^ v2)))();
}

uint64_t sub_1000EBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  STACK[0x380] = v45;
  STACK[0x370] = a44;
  LODWORD(STACK[0x2A4]) = 681437637;
  return (*(v46 + 8 * v44))();
}

uint64_t sub_1000EBE6C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  STACK[0x388] = v2 + a2 + ((v4 - a1 - 3311) ^ 0xB7280B2158DD8466);
  STACK[0x5C0] = v3;
  return (*(v6 + 8 * (v4 ^ (27105 * (v5 == -1240130101)))))();
}

uint64_t sub_1000EC040@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1 - 0x48D7F4DE5FEDAB87);
  v5 = (*v4 << (v2 - 36)) | (v4[1] << 48) | (v4[2] << 40) | (v4[3] << 32) | (v4[4] << 24) | (v4[5] << 16) | (v4[6] << 8) | v4[7];
  STACK[0x4F8] = v5 + 0x8C38D1834A63647 - ((2 * v5) & 0x11871A30694C6C8ELL);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1000EC178@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1 - 0x48D7F4DE5FEDAB87);
  v5 = (*v4 << 24) | (v4[1] << 16);
  v6 = v4[2] << (((v2 + 99) & 0x5F) - 23);
  LODWORD(STACK[0x618]) = (v5 | v4[3] | v6) - 1240130101 - 2 * ((v5 | v4[3] | v6) & 0x36151DCF ^ v4[3] & 4);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1000EC228()
{
  v5 = STACK[0x618];
  v6 = STACK[0x4F8];
  v7 = STACK[0x388];
  STACK[0x4A0] = STACK[0x5D8];
  LODWORD(STACK[0x55C]) = v2;
  LOWORD(STACK[0x5CE]) = v3;
  LODWORD(STACK[0x26C]) = v1;
  LODWORD(STACK[0x364]) = v5;
  STACK[0x2E0] = v6;
  STACK[0x470] = v7;
  LODWORD(STACK[0x324]) = -1092375532;
  return (*(v4 + 8 * (v0 + 120601139)))();
}

uint64_t sub_1000EC3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = *(v17 - 0x2968F53CA5E435D1) - 0x5480F16B0E8636CDLL;
  v22 = 1912505411 * (((~&a10 | 0x7D5E6F681ED4FE2ELL) + (&a10 | 0x82A19097E12B01D1)) ^ 0x74FDEBE41FD07228);
  a12 = *(v16 + 8 * v20) + v22;
  a13 = v15;
  a14 = v21;
  a10 = v14 + v22 - (((v14 << (((v20 - 10) | 0xC) ^ 0x1F)) - 2) & 0xAD9E5DAA) - 691065132;
  a11 = (v20 - 892999340) ^ v22;
  (*(v16 + 8 * (v20 ^ 0x4C42)))(&a10);
  *(*(v17 - 0x2968F53CA5E435D1) - 0x5480F16B0E863711) = (((*(a2 + v19) ^ v18) - 2) ^ 0xFE7BFE78) + 1272870344 + ((((*(a2 + v19) ^ v18) - 2) << ((v20 ^ 0x8F) + 110)) & 0xFCF7FCF0);
  v24 = (*(a2 + v19) ^ v18) - ((2 * (*(a2 + v19) ^ v18) - 4) & 0xECFEF4F2) + 1988065911;
  return (*(v16 + 8 * (v20 ^ 0x1DB2 ^ (110 * (((2 * v24) & 0xF5FDAB7E ^ 0xE4FCA072) + (v24 ^ 0x8C81AFC6) + 1742305917 == 1658343484)))))(0);
}

uint64_t sub_1000EC740@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = (a3 - v7);
  v10 = *(v5 + v9 - 15);
  v11 = *(v5 + v9 - 31);
  v12 = a5 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * ((63 * (v7 + a4 + a2 != v6)) ^ a1)))();
}

uint64_t sub_1000ECDE8(uint64_t a1, int a2)
{
  v5 = v2 ^ 0xEF;
  if (v2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return (*(v3 + 8 * ((946 * ((((v5 + v6 - (a2 + v4 + 98)) | (a2 + v4 + 98 - (v5 + v6))) >> (v4 ^ (v4 - 24) ^ 0x2F)) & 1)) ^ (a2 + v4 + 4714))))();
}

uint64_t sub_1000ECE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  HIDWORD(a19) = 564492027;
  v32 = *(a7 - 0x7203BC651AC4C10ALL);
  LODWORD(a16) = 17 * (v30 ^ 0x7AF);
  v33 = *(v29 + 8 * v30);
  LODWORD(a24) = ((a16 + 1500155397) ^ *(a7 - 0x7203BC651AC4C10ELL)) + ((v30 - 553685434) & (2 * *(a7 - 0x7203BC651AC4C10ELL)) ^ 0x4C2A3006) + 937261017;
  a22 = v33;
  a23 = v32;
  a26 = a14;
  a27 = a13;
  a28 = a12;
  a29 = a11;
  *(v31 - 108) = 422488289 * ((v31 - 112) ^ 0xFC9FA284) - 1116779156 + v30;
  *(v31 - 104) = &a22;
  v36 = (*(v29 + 8 * (v30 + 17434)))(v31 - 112);
  return (*(v29 + 8 * ((15842 * (*(v31 - 112) == -1418238986)) ^ (v30 + 5071))))(v36, 877821469, 0xD6970AC35A1BCA17, 3054837184, 1859108733, a6, a7, 2226145510, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1000ED0FC@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 - 0x7D9850B44268A65ELL) & 0xF;
  LODWORD(v5) = *(a1 + v3 - 0x7D9850B44268A65ELL) - ((v5 * (v1 ^ 0xA8)) ^ *(v2 + v3 - 0x7D9850B44268A65ELL) ^ *(*(&off_10044E3E0 + v1 - 6607) + v5 - 1749697551) ^ *(*(&off_10044E3E0 + v1 - 6206) + v5 - 1098309526) ^ *(*(&off_10044E3E0 + (v1 & 0x745B2773)) + ((v1 + 8043) | 0x405u) + v5 - 617593263));
  return (*(v4 + 8 * ((16124 * (((2 * v5) & 0xBDDFFF6E) + (v5 ^ 0x5EEFFFB7) == 1592786871)) ^ v1)))();
}

uint64_t sub_1000ED360@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W8>)
{
  *(*(a1 + v4) - 0x5480F16B0E8633FDLL) = *(a2 - 0x7203BC651AC4C10ALL);
  *(*(a1 + v4) - 0x5480F16B0E863405) = *(a2 - 0x7203BC651AC4C10ELL);
  return (*(v3 + 8 * a3))();
}

uint64_t sub_1000ED3CC()
{
  if (v0)
  {
    v3 = -2;
  }

  else
  {
    v3 = 0;
  }

  v4 = ((v2 + 36) & 0x6B) == (v3 | v0);
  return (*(v1 + 8 * ((v4 | (16 * v4)) ^ (v2 + 877835609))))();
}

uint64_t sub_1000ED434@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W8>)
{
  *(*(a1 + v4) - 0x5480F16B0E863425) = *(a2 - 0x7203BC651AC4C10ALL);
  *(*(a1 + v4) - 0x5480F16B0E86342DLL) = *(a2 - 0x7203BC651AC4C10ELL);
  return (*(v3 + 8 * a3))();
}

uint64_t sub_1000ED544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v21 = v18 ^ 0x77;
  if (v18)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v21 + v22 != (a18 - 81);
  return (*(v19 + 8 * (v23 | (32 * v23) | (v20 + 877832024))))();
}

uint64_t sub_1000ED594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(*(a6 + v19) - 0x5480F16B0E863455) = *(a7 - 0x7203BC651AC4C10ALL);
  *(*(a6 + v19) - 0x5480F16B0E86345DLL) = *(a7 - 0x7203BC651AC4C10ELL);
  *(*(a6 + v19) - 0x5480F16B0E86340DLL) = 1;
  return (*(v18 + 8 * a18))();
}

uint64_t sub_1000ED6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  if (v17)
  {
    v21 = -2;
  }

  else
  {
    v21 = 0;
  }

  return (*(v18 + 8 * ((108 * ((v21 | v17) != a17)) ^ (v19 + v20 - 41))))();
}

uint64_t sub_1000ED6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  *(*(a6 + v18) - 0x5480F16B0E863435) = *(a7 - 0x7203BC651AC4C10ALL);
  *(*(a6 + v18) - 0x5480F16B0E86343DLL) = *(a7 - 0x7203BC651AC4C10ELL);
  return (*(v17 + 8 * a17))();
}

uint64_t sub_1000ED8A4()
{
  v4 = v0 ^ 0xB7;
  if (v0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return (*(v1 + 8 * ((((v3 - v2 - 1147) ^ 0x224E) * (v4 + v5 != 183)) ^ (v3 + 877833259))))();
}

uint64_t sub_1000ED8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(*(a6 + v9) - 0x5480F16B0E863475) = *(a7 - 0x7203BC651AC4C10ALL);
  *(*(a6 + v9) - 0x5480F16B0E86347DLL) = *(a7 - 0x7203BC651AC4C10ELL);
  return (*(v8 + 8 * (v7 ^ 0x35D4)))();
}

uint64_t sub_1000EDA2C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W8>)
{
  *(*(a1 + v4) - 0x5480F16B0E863465) = *(a2 - 0x7203BC651AC4C10ALL);
  *(*(a1 + v4) - 0x5480F16B0E86346DLL) = *(a2 - 0x7203BC651AC4C10ELL);
  return (*(v3 + 8 * (a3 + 7399)))();
}

uint64_t sub_1000EDB48(uint64_t a1, int a2)
{
  if (v2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 | v2) == ((a2 + v5 - 71) ^ ((v5 ^ (v3 - 91)) + 98)))
  {
    v7 = a2 + v5 + 1210;
  }

  else
  {
    v7 = a2 + v5 + 1209;
  }

  return (*(v4 + 8 * v7))();
}

uint64_t sub_1000EDB8C()
{
  if (v0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return (*(v1 + 8 * ((41 * ((v5 | v0) == (v4 - v2 + 27))) ^ (v3 + v4 + 1732))))();
}

uint64_t sub_1000EDBD8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W8>)
{
  *(*(a1 + v4) - 0x5480F16B0E863415) = *(a2 - 0x7203BC651AC4C10ALL);
  *(*(a1 + v4) - 0x5480F16B0E86341DLL) = *(a2 - 0x7203BC651AC4C10ELL);
  return (*(v3 + 8 * (a3 - 3333)))();
}

uint64_t sub_1000EDCDC(uint64_t a1, char a2)
{
  v6 = (a2 + v5 + 66) ^ v2;
  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return (*(v3 + 8 * ((((v6 + v7) != 207) * ((v5 - v4) ^ 0x2710)) ^ (v5 + 877829493))))();
}

uint64_t sub_1000EDD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(*(a6 + v9) - 0x5480F16B0E863455) = *(a7 - 0x7203BC651AC4C10ALL);
  *(*(a6 + v9) - 0x5480F16B0E86345DLL) = *(a7 - 0x7203BC651AC4C10ELL);
  *(*(a6 + v9) - 0x5480F16B0E86340DLL) = 0;
  return (*(v8 + 8 * v7))();
}

uint64_t sub_1000EF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v36 = (*(v31 - 0x290E4F3FD0EE130DLL) << (((((v33 + 117) & 0x6E) - 41) | 0x80) ^ 0x80)) ^ 0x5E209B8C;
  v37 = (*(v35 + 8 * (((v33 - 913840779) & 0xA661606E) + 2604)))(24 * ((v36 - ((v36 << (v34 + ((((v33 + 117) & 0x6E) + 37) & 0xF6) + 124)) & 0x5E209B8C) - 1357886010) ^ 0xAF104DC6));
  return (*(a24 + 8 * (((v37 == 0) | (4 * (v37 == 0))) ^ (v33 - 913840779) & 0xA661606E)))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, v32, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1000EFA48@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = v8 + (a3 | ((a3 < v6) << 32)) * v10 + a1;
  *v12 = v5;
  *(v12 + 8) = a4;
  *(v12 + 16) = v4;
  return (*(v11 + 8 * (((v9 != a3) * a2) ^ v7)))();
}

uint64_t sub_1000EFB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44, uint64_t a45, uint64_t a46, int a47, int a48)
{
  *v51 = a22 + v50;
  v51[1] = &a29;
  LODWORD(a21) = (a39 ^ 0xF0FFF228) - 1393045576 + ((v48 ^ 0xBFDF4251) & (2 * a39) ^ 0x1E001B8C);
  a48 = a21;
  a31 = a44;
  a32 = 2103120905;
  a33 = v49;
  return (*(v53 + 8 * v48))(&a29 + 7, 4294961916, 11467, -2103122457, a41, 24, 1406443704, v52 - 160, a9, a10, a11, a12, a13, a14, a15, a16, a17, a38, a37, a36, a21, a22, a23, a24, a25, a26, a27, &a29 + 7, a29);
}

uint64_t sub_1000EFC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v41 = v36 + (*v35 - 484708293) * v32;
  v42 = *(*v33 + v37 * v32 - 0x29799DEF9D38B2C0);
  v43 = *(*v33 + v37 * v32 - 0x29799DEF9D38B2B8);
  v44 = *(*v33 + v37 * v32 - 0x29799DEF9D38B2C8);
  v38[89] = *(v40 + 8 * v34);
  v38[90] = a22;
  v38[93] = v41;
  v38[94] = v42;
  v38[95] = v43;
  LODWORD(STACK[0xA10]) = v44;
  v38[134] = &STACK[0xA00];
  *(v39 - 160) = 41492489 * ((~((v39 - 160) | 0x5EEB99EE) + ((v39 - 160) & 0x5EEB99EE)) ^ 0x406AAA) + 1464651563 + v34 + 12;
  (*(v40 + 8 * (v34 + 17449)))(v39 - 160);
  return (*(a24 + 8 * (v34 ^ 0x1D27)))(&a32, 4294961916, 11467, -2103122457, v36, 24, 1406443704, v39 - 160);
}

uint64_t sub_1000EFE04(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, unint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *v25 = 484708293;
  *a1 = 73;
  v30 = *(v24 + v27 * a6 - 0x29799DEF9D38B2C0) - ((((v26 + 35) ^ 0x5100F850C30FF027) + 2 * *(v24 + v27 * a6 - 0x29799DEF9D38B2C0)) & 0xCF8862F536B1BBD8);
  STACK[0x9B8] = *(v29 + 8 * v26);
  STACK[0x9C0] = a5;
  LODWORD(STACK[0x9C8]) = a21;
  STACK[0x9D0] = v30 + 0x1044ADA2FCE0D8F6;
  STACK[0x9D8] = a20;
  STACK[0x9E0] = a19;
  STACK[0xB68] = &STACK[0x9B8];
  *(v28 - 156) = v26 + 422488289 * ((a8 + 1144880444 - 2 * (a8 & 0x443D7D3C)) ^ 0xB8A2DFB8) - 1116779132;
  v31 = (*(v29 + 8 * (v26 ^ 0x4C52)))(v28 - 160);
  return (*(a24 + 8 * (v26 ^ 0x4FA5 ^ ((*(v28 - 160) == -1418238986) * (3 * (v26 ^ 0x1375) - 16420)))))(v31);
}

uint64_t sub_1000EFFF8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = a1 - 2196;
  v22 = a1 - 2196 - v18 + 1456;
  v23 = 43 * ((a1 - 2196) ^ 0x4F1);
  *(a15 - 0x54F737B71768F7B4) = 126;
  v24 = 2054851651 * ((((v19 - 160) | 0x741A926AB9B6C588) - ((v19 - 160) & 0x741A926AB9B6C588)) ^ 0xD5EDE99135186AAELL);
  *(v17 + 1064) = *(v20 + 8 * (a1 - 2196)) - v24;
  *(v19 - 148) = (a1 - 1915007203) ^ v24;
  v25 = (*(v20 + 8 * ((a1 - 2196) ^ 0x4FA2)))(v19 - 160);
  return (*(a17 + 8 * (((*(v19 - 152) == -1418238986) * ((v23 ^ 0x6FE93887) + v22)) ^ (v21 + 7779))))(v25);
}

uint64_t sub_1000F0264@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = a1 + v17 - 528;
  *(a15 - 0x290E4F3FD0EE1311) = 1401061617;
  *(a15 - 0x290E4F3FD0EE130DLL) = -1357888058;
  v20 = (*(v18 + 8 * (v17 ^ 0x7B5A)))(49152);
  *(a15 - 0x290E4F3FD0EE1309) = v20 + 0x29799DEF9D38B2C8;
  return (*(a17 + 8 * (((((v17 + 115) ^ (v20 == 0)) & 1) * (v19 ^ 0x9016FA1C)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1000F043C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v14 = *v8 + ((a1 | ((a1 < v6) << 32)) + v12) * a2 + a3;
  *v14 = v5;
  *(v14 + 8) = v3;
  *(v14 + 16) = v4;
  return (*(v13 + 8 * ((28 * (((*v9 ^ v11) + v10) >> 32)) ^ v7)))(a1 + 1);
}

uint64_t sub_1000F04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = v24;
  v29 = (*(v27 + 8 * (v25 ^ 0x9016B0EA)))();
  return (*(a24 + 8 * ((v26 + v25 + 1031) ^ (11842 * (v28 == 0)))))(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000F0564@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a2 - 465;
  v20 = (*(v18 + 8 * ((a2 - 465) ^ 0x4631)))(a1, a16, 4096);
  return (*(a18 + 8 * v19))(v20, v21, v22, v23, v24, v25, v26, v27, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1000F05F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51)
{
  HIDWORD(a25) = 5;
  v54[15] = &STACK[0x706918E707F8BCE7];
  v54[16] = &STACK[0x706918E707F8BCD7];
  v54[17] = &STACK[0x1B71A97BCB3A5235];
  v54[18] = &STACK[0x1B71A97BCB3A5255];
  v54[19] = &STACK[0x1B71A97BCB3A5244];
  v54[20] = &STACK[0x1B71A97BCB3A5234];
  v54[21] = &STACK[0x1B71A97BCB3A5245];
  v54[22] = &a51;
  v54[9] = 0x127261DF5F036B43;
  v54[23] = &a49;
  v54[7] = 0x127261DF5F036B43;
  return (*(v55 + 8 * ((46 * (((v51 == 0x9AE900BC47E4FA5) ^ (v52 + 57)) & 1)) ^ (v53 + v52 - 118))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1000F06DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = a9 & 0x75C067B5;
  v30 = *(*(v27 + 8 * (v29 - 9726)) - 1432655078) != 0;
  return (*(v28 + 8 * (((4 * v30) | (v30 << 6)) ^ v29)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000F0778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24[154] = &STACK[0x6CFC61A9B5281898];
  v24[155] = &STACK[0x2E48C5ECF860294E];
  v24[156] = &STACK[0x6CFC61A9B52818E8];
  v24[157] = &STACK[0x2E48C5ECF8602ADE];
  v24[158] = &STACK[0x2E48C5ECF86029B6];
  v24[159] = &STACK[0x56895A8D14617C7A];
  v24[58] = 0x5681DE5F86DE62;
  v24[160] = &STACK[0x30555AAEF7095552];
  v24[161] = &STACK[0x56895A8D14617D0A];
  v24[162] = &STACK[0x310];
  v24[65] = 0;
  LODWORD(STACK[0x3C0]) = -1240130101;
  v24[163] = &STACK[0x328];
  v24[68] = 0x270676553BF336C1;
  v24[34] = 0;
  LODWORD(STACK[0x40C]) = 1418211936;
  return (*(v25 + 8 * ((((v23 + 1877550108) ^ 0x1E71) * (a22 == 0)) ^ (v23 + 1877550280))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v22, a14, a15, a16, a17);
}

uint64_t sub_1000F08C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  (*(v28 + 8 * (v25 + 11189)))(*(v24 + 8 * (v25 ^ 0x1FD3)) - 61661918, &STACK[0xA70], 80);
  v27[164] = &STACK[0xA70];
  v29 = (*(a24 + 8 * (v25 ^ 0x5434)))(128);
  v27[47] = v29 + v26;
  v27[99] = v26;
  LODWORD(STACK[0x428]) = 1418211938;
  return (*(a24 + 8 * (((v29 != 0) * (v25 - 7753)) | v25)))();
}

uint64_t sub_1000F097C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v29 = v24 - 1068;
  v30 = (*(v28 + 8 * (v29 ^ 0x5060)))(112);
  *(v26 + 392) = v30;
  *(v27 + 592) = v30 + 0x5AB679E9A06C14EALL;
  LODWORD(STACK[0x418]) = v25;
  return (*(a24 + 8 * (((v30 == 0) * (((v29 + 1912295876) & 0x8E0497ED) - 886)) ^ v29)))();
}

uint64_t sub_1000F0A18@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = STACK[0x8C0];
  *v6 = 320605855;
  *(v6 + 4) = 716240777;
  *(v6 + 72) = 0x49836E4B49836E4BLL;
  *(v6 + 80) = 545;
  *(v6 + 8) = 4626;
  *(v6 + 10) = 18;
  *(v6 + 11) = 4626;
  *(v6 + 13) = 18;
  *(v6 + 14) = 4626;
  *(v6 + 16) = 18;
  *(v6 + 17) = 4626;
  *(v6 + 19) = 18;
  *(v6 + 20) = 4626;
  *(v6 + 22) = 18;
  *(v6 + 23) = 4626;
  *(v6 + 25) = 18;
  v7 = STACK[0x8C0];
  *(v7 + 26) = 4626;
  *(v7 + 28) = 18;
  *(v7 + 29) = 4626;
  *(v7 + 31) = 18;
  *(v7 + 32) = 4626;
  *(v7 + 34) = 18;
  *(v7 + 35) = 4626;
  *(v7 + 37) = 18;
  *(v7 + 38) = 4626;
  *(v7 + 40) = 18;
  *(v7 + 41) = 4626;
  *(v7 + 43) = 18;
  *(v7 + 44) = 4626;
  *(v7 + 46) = 18;
  v8 = STACK[0x8C0];
  *(v8 + 47) = 4626;
  *(v8 + 49) = 18;
  v9 = STACK[0x8C0];
  *(v9 + 50) = 4626;
  *(v9 + 52) = 18;
  v10 = STACK[0x8C0];
  *(v10 + 53) = 4626;
  *(v10 + 55) = 18;
  v11 = STACK[0x8C0];
  *(v11 + 56) = 4626;
  *(v11 + 58) = 18;
  v12 = STACK[0x8C0];
  *(v12 + 59) = 4626;
  *(v12 + 61) = 18;
  v13 = STACK[0x8C0];
  *(v13 + 62) = 4626;
  *(v13 + 64) = 18;
  v14 = STACK[0x8C0];
  *(v14 + 65) = 4626;
  *(v14 + 67) = 18;
  v15 = STACK[0x8C0];
  *(v15 + 68) = 4626;
  *(v15 + 70) = 18;
  *(STACK[0x8C0] + 71) = 18;
  v16 = v4[74];
  v4[179] = v16;
  v4[180] = v16 - 0x5AB679E9A06C1496;
  *(v16 - 0x5AB679E9A06C1496) = -1125453800;
  v4[181] = v16 - 0x5AB679E9A06C1482;
  *(v16 - 0x5AB679E9A06C1482) = 49289790;
  *(v16 - 0x5AB679E9A06C1492) = 4626;
  *(v16 - 0x5AB679E9A06C1490) = 18;
  *(v16 - 0x5AB679E9A06C148FLL) = 4626;
  *(v16 - 0x5AB679E9A06C148DLL) = 18;
  *(v16 - 0x5AB679E9A06C148CLL) = 4626;
  *(v16 - 0x5AB679E9A06C148ALL) = 18;
  *(v16 - 0x5AB679E9A06C1489) = 4626;
  *(v16 - 0x5AB679E9A06C1487) = 18;
  v4[182] = v16 - 0x5AB679E9A06C1492;
  *(v16 - 0x5AB679E9A06C1486) = 303174162;
  v4[183] = v16 - 0x5AB679E9A06C147ELL;
  *(v16 - 0x5AB679E9A06C147ELL) = 28;
  v17 = v4[47];
  v18 = v4[179] == a2 || v17 == v3;
  v4[184] = v17;
  v19 = !v18;
  v4[185] = *(v5 + 8 * v2);
  LOBYTE(STACK[0x6DF]) = v19;
  LODWORD(STACK[0x510]) = 1418211936;
  return (*(v5 + 8 * (((v19 ^ 1) * (((v2 + 268839960) | 0x8010CA46) ^ (a1 + 3810))) ^ (v2 + 10133))))();
}

uint64_t sub_1000F0CD0()
{
  v4 = *(v2 + 1432);
  v5 = *(v2 + 1472);
  *(v5 - 0x270676553BF336B1) = *(v4 - 0x5AB679E9A06C14EALL);
  *(v5 - 0x270676553BF33669) = *(v4 - 0x5AB679E9A06C14A2);
  *(v5 - 0x270676553BF33665) = *(v4 - 0x5AB679E9A06C149ELL);
  *(v5 - 0x270676553BF33661) = *(v4 - 0x5AB679E9A06C149ALL);
  *(v5 - 0x270676553BF33660) = *(v4 - 0x5AB679E9A06C1499);
  *(v5 - 0x270676553BF33649) = **(v2 + 1448);
  *(v5 - 0x270676553BF3365DLL) = **(v2 + 1440);
  *(v5 - 0x270676553BF33645) = **(v2 + 1464) & 1 ^ 0x27;
  v6 = *(v2 + 1432) - 0x5AB679E9A06C14E2;
  v7 = *(v2 + 1472) - 0x270676553BF336A9;
  v8 = *(v3 + 8 * (v0 + 10840));
  v1[50] = v4 - 0x5AB679E9A06C14A2;
  v1[51] = v6;
  v1[52] = v7;
  *(v2 + 1008) = 586773264;
  return v8();
}

uint64_t sub_1000F0EBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v17 = v15 + a3;
  v18 = a2 + v15;
  *(a1 + v17) = *(v10 + v17) ^ *(*(v13 + 8 * a4) + a5 + (v18 & 0xF)) ^ *(*(v13 + 8 * a6) + a7 + (v18 & 0xF)) ^ (-63 * (v18 & 0xF)) ^ *((v18 & 0xF) + *(v13 + 8 * a8) + v11 + 3) ^ v8;
  return (*(v16 + 8 * (((v18 == v12) * v14) ^ v9)))();
}

uint64_t sub_1000F0F2C()
{
  STACK[0x4F8] = v2;
  v4 = STACK[0x6C8];
  STACK[0x8E0] = STACK[0x6A0] - 0x5AB679E9A06C14C2;
  STACK[0x8E8] = v4 - 0x270676553BF33689;
  STACK[0x500] = v0;
  return (*(v3 + 8 * v1))(18, ((8 * v1) ^ 0x6770u) + 586760136);
}

uint64_t sub_1000F0FBC(char a1, uint64_t a2)
{
  v10 = v2;
  v11 = *(v8 + v2);
  v12 = v2 - 1;
  *(v4 + v10) = v11 ^ *(v5 + (v12 & 0xF)) ^ *(v6 + (v12 & 0xF)) ^ (-63 * (v12 & 0xF)) ^ *((v12 & 0xF) + v7 + 3) ^ a1;
  return (*(v9 + 8 * (((2 * (v12 == a2)) | (16 * (v12 == a2))) ^ v3)))();
}

uint64_t sub_1000F1018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[184] - 0x270676553BF33659;
  v13 = *(v11 + 8 * v8);
  v10[127] = v9;
  *(a8 + 440) = v12;
  v10[128] = 2005710959;
  return v13((v8 - 33) ^ 0x3319u, -453888039, (v8 - 33) ^ 0x3388u, -1137891790, 4294967271, (v8 - 13087), -953913542, 18);
}

uint64_t sub_1000F1138(uint64_t a1)
{
  v3[128] = v2;
  v5 = *(v3[179] - 0x5AB679E9A06C14E6);
  v6 = v3[184];
  *(v6 - 0x270676553BF336ADLL) = v5;
  STACK[0x8F8] = v6 - 0x270676553BF336ADLL;
  LODWORD(STACK[0x510]) = -1418238986;
  return (*(v4 + 8 * (((v5 == (v1 ^ 0x2F27) + 716239590) * (13 * (v1 ^ 0x2F27) - 8155)) ^ v1)))(a1, 2417421277);
}

uint64_t sub_1000F1324@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 8981) | 0x203;
  v23 = *(v19 + 120);
  v18[96] = *(v21 + 8 * v22);
  v18[99] = *(v17 + 8 * (v22 ^ 0x730)) - 1062708138;
  v18[101] = *(v17 + 8 * (v22 ^ 0x77B)) - 340117343;
  v18[102] = v23;
  v18[133] = &STACK[0xA38];
  *(v20 - 144) = v22 + 358777457 * ((((2 * (v20 - 160)) | 0xF14A66C2) - (v20 - 160) - 2024092513) ^ 0x170D3713) - 118321930;
  v24 = (*(v21 + 8 * (v22 + 17449)))(v20 - 160);
  return (*(a17 + 8 * (((v22 ^ 0x46F8) - 5700) ^ v22 ^ ((v18[134] == 0) * (((v22 + 1182687) | 0x9004E844) ^ 0x9016FA1A)))))(v24);
}

uint64_t sub_1000F1770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (v27 == 1100013983)
  {
    v29 = 0x200000000;
  }

  else
  {
    v29 = 0x300000000;
  }

  v28 = ((*(a6 + (v24 ^ 0x114F627Du)) ^ (a7 - 19)) << 56) | (*(v25 + (v24 ^ 0x114F627Du)) << 48);
  v30 = (v28 | v29) - (((v28 | v29) << (a7 ^ 0x24u)) & 0x6F3C000600000000);
  v31 = *(&off_10044E3E0 + (a7 ^ 0x2581));
  v32 = *(v31 + v26);
  v33 = v30 + 0x379EABBB4EAE2305;
  *(v31 + v26) = v32 + 1;
  v34 = v32 & 0x3F;
  v35 = *(&off_10044E3E0 + a7 - 8885) + 8 * v34 - 1302577015;
  if (v34 <= 0x3D)
  {
    v35 = *(&off_10044E3E0 + (a7 ^ 0x255F)) + 8 * v34 - 450902379;
  }

  *v35 = v33;
  return (*(a24 + 8 * (((2 * (v27 == 1100013983)) | ((v27 == 1100013983) << 6)) ^ a7)))();
}

uint64_t sub_1000F19C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35, _DWORD *a36, int a37, uint64_t a38, uint64_t a39)
{
  v43 = (*(v42 + 8 * (v40 ^ 0x7FFD)))(*(a22 + v41) + v39);
  *(a22 + v41) = a39;
  *a36 = a37;
  *(a22 - 0x290E4F3FD0EE1311) = a33;
  return (*(a24 + 8 * v40))(v43);
}

uint64_t sub_1000F1A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = (*(v26 + 8 * (v24 + 11103)))(16);
  STACK[0x6E0] = v27;
  LODWORD(STACK[0x410]) = 1418211938;
  return (*(a24 + 8 * (((v27 == 0) * ((v25 + ((v24 - 44572792) & 0x92BEFBC6) - 1227) ^ 0x73A)) ^ v24)))();
}

uint64_t sub_1000F1B18(uint64_t a1, int a2)
{
  v6 = v4[187];
  v7 = v4[184];
  *v6 = 0x4761F68478C333F5;
  v6[1] = 0x4761F68478C333F5;
  *(v7 - 0x270676553BF336B9) = v6 + 0xAB5C364D9808152;
  v4[188] = v7 - 0x270676553BF336B9;
  v4[189] = v7 - 0x270676553BF336C1;
  LODWORD(STACK[0x410]) = v3;
  return (*(v5 + 8 * (((((v2 + 7) ^ (v7 == 0x270676553BF336C1)) & 1) * ((a2 + v2 + 1967) ^ 0x9016FBE8)) ^ v2)))();
}

uint64_t sub_1000F1BBC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = a1 | 0x1000;
  v22 = (*(v20 + 8 * ((a1 | 0x1000) ^ 0x7F97)))(16);
  *(v18 + 1520) = v22;
  LODWORD(STACK[0x410]) = v17 + 2;
  return (*(a17 + 8 * (((v22 != 0) * (v19 + ((v21 - 2146039227) | 0x1000BA40) - 2942)) ^ v21)))();
}

uint64_t sub_1000F1C2C()
{
  v3 = *(v1 + 1520);
  *v3 = 0x4761F68478C333F5;
  v3[1] = 0x4761F68478C333F5;
  **(v1 + 1512) = v3 + 0xAB5C364D9808152;
  LODWORD(STACK[0x514]) = v0 - 12777;
  return (*(v2 + 8 * (((v0 - 574413252) & 0x223CE7AB ^ 0x4801) + v0 - 12777)))();
}

uint64_t sub_1000F1CB0()
{
  v2 = STACK[0x900];
  LODWORD(STACK[0x38C]) = STACK[0x900];
  LODWORD(STACK[0x41C]) = -1418238986;
  return (*(v1 + 8 * (((((v0 + 269530084) | 0x80061004) ^ ((v0 - 1877614172) | 0xE244) ^ 0x3D) * (v2 == -1418238986)) ^ v0)))();
}

uint64_t sub_1000F1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  HIDWORD(a26) = v61;
  *(a23 - 1432655078) = a6;
  return (*(v62 + 8 * (a7 - 122)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a6, __PAIR64__(v61, v59), a38, a39, a40, a41, a42, a43, a44, a5, a46, a47, a48, a49, a50, a51, v60, a8, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1000F1D8C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = 0;
  return (*(v3 + 8 * ((114 * (((a1 == 0) ^ (a2 + 33)) & 1)) ^ a2)))();
}

uint64_t sub_1000F1DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  v64 = v60 ^ 0x167ELL;
  a49 = 20;
  a59 = 20;
  a53 = 20;
  a48 = 20;
  *v59 = &a48;
  v59[1] = &a54;
  a54 = 20;
  v65 = v59[16];
  v61[96] = *(v63 + 8 * v64);
  v61[99] = *(&off_10044E3E0 + (v60 ^ 0x11C4)) - 1246686390;
  v61[101] = *(&off_10044E3E0 + v64 - 1475) - 416296215;
  v61[102] = v65;
  v61[133] = &STACK[0xA38];
  *(v62 - 144) = 358777457 * ((v62 - 160) ^ 0x6FA80472) - 118321930 + v64;
  v66 = (*(v63 + 8 * (v64 + 17449)))(v62 - 160);
  return (*(a24 + 8 * (v60 ^ 0x5086 ^ (((((v60 ^ 0x7E) + 28) ^ (v61[134] == 0)) & 1) * ((((v60 ^ 0x167E) + 1009481562) & 0xC3D492DF) - 3690)))))(v66);
}

uint64_t sub_1000F1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _BYTE *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59, unint64_t a60, unint64_t a61, unint64_t a62, unint64_t a63)
{
  v69 = *a65 ^ 0xA5AD4171E25428FFLL ^ ((v65 + 1221) | 0x30A2u);
  STACK[0xA00] = *(v68 + 8 * v65);
  STACK[0xA08] = a59;
  STACK[0xA20] = a28;
  v70 = *(v66 + 8 * (v65 - 1333));
  STACK[0xA28] = v69;
  STACK[0xA30] = v70 - 970221403;
  STACK[0xB68] = &STACK[0xA00];
  *(v67 - 160) = v65 + 1464651563 + 41492489 * ((187246187 - ((v67 - 160) | 0xB29266B) + ((v67 - 160) | 0xF4D6D994)) ^ 0x5582D52F);
  (*(v68 + 8 * (v65 ^ 0x4C63)))(v67 - 160);
  v71 = *a65 ^ 0xA5AD4171E2541359;
  STACK[0xA00] = *(a24 + 8 * v65);
  STACK[0xA08] = a60;
  STACK[0xA20] = a28;
  STACK[0xA28] = v71;
  STACK[0xA30] = *(v66 + 8 * (v65 ^ 0x780)) - 1875795230;
  *(v67 - 160) = v65 + 1464651563 + 41492489 * ((-182153590 - ((v67 - 160) | 0xF5248E8A) + ((v67 - 160) | 0xADB7175)) ^ 0xAB8F7DCE);
  STACK[0xB68] = &STACK[0xA00];
  (*(a24 + 8 * (v65 ^ 0x4C63)))(v67 - 160);
  v72 = *a65 ^ 0xA5AD4171E2541359;
  STACK[0xA00] = *(a24 + 8 * v65);
  STACK[0xA08] = a61;
  STACK[0xA20] = a28;
  STACK[0xA28] = v72;
  STACK[0xA30] = *(v66 + 8 * (v65 ^ 0x713)) - 1081006443;
  STACK[0xB68] = &STACK[0xA00];
  *(v67 - 160) = v65 + 1464651563 + 41492489 * ((-1167617708 - ((v67 - 160) | 0xBA679154) + ((v67 - 160) | 0x45986EAB)) ^ 0xE4CC6210);
  (*(a24 + 8 * (v65 + 17437)))(v67 - 160);
  v73 = *a65;
  STACK[0xA00] = *(a24 + 8 * v65);
  STACK[0xA08] = a62;
  STACK[0xA20] = a28;
  STACK[0xA28] = v73 ^ (((v65 + 6785) | 0x218u) - 0x5A52BE8E1DAC0F7FLL);
  STACK[0xA30] = *(v66 + 8 * (v65 - 1289)) - 229332303;
  STACK[0xB68] = &STACK[0xA00];
  *(v67 - 160) = v65 + 1464651563 + 41492489 * ((v67 - 160) ^ 0xA1540CBB);
  (*(a24 + 8 * (v65 ^ 0x4C63)))(v67 - 160);
  v74 = *a65 ^ 0xA5AD4171E2541359;
  STACK[0xA00] = *(a24 + 8 * v65);
  STACK[0xA08] = a63;
  STACK[0xA20] = a28;
  STACK[0xA28] = v74;
  STACK[0xA30] = *(v66 + 8 * (v65 - 1452)) - 1656215594;
  *(v67 - 160) = v65 + 1464651563 + 41492489 * ((v67 - 1739564929 - 2 * ((v67 - 160) & 0x9850591F)) ^ 0x390455A4);
  STACK[0xB68] = &STACK[0xA00];
  v75 = (*(a24 + 8 * (v65 ^ 0x4C63)))(v67 - 160);
  return (*(a24 + 8 * ((25092 * (*a38 == 20)) ^ (v65 + 7321))))(v75);
}

uint64_t sub_1000F2450()
{
  *(v3 + 32) = v1;
  *(v3 + 20) = v0;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000F24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v39 = *(v35 + 112);
  *(a22 - 0x9AE900BC47E4FA5) = *(v35 + 104);
  v40 = (*(v38 + 8 * (v36 + 14838)))(a35);
  return (*(a24 + 8 * (((((v39 == 0) ^ v36) & 1) * (((v36 + 1238953) | 0x90040240) ^ (v37 + 3688))) ^ v36)))(v40);
}

uint64_t sub_1000F2538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = v27 ^ 0x1B52;
  v30 = (*(v28 + 8 * (v29 + 16196)))(a27);
  return (*(a24 + 8 * v29))(v30);
}

uint64_t sub_1000F25CC()
{
  v5 = *(v3 + 1536) == v1;
  LODWORD(STACK[0x42C]) = 1418211936;
  return (*(v4 + 8 * ((v5 * (v0 - v2 + 1877538701 + ((v0 - 834725693) & 0x31C0F2FF))) ^ v0)))();
}

uint64_t sub_1000F2628@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  v17 = (a1 ^ 0xB6150F32) + *a15 - ((2 * *a15) & 0x6C2A3B96);
  v18 = *(v15[192] - 0x270676553BF336B9);
  v15[77] = v18;
  LODWORD(STACK[0x324]) = -58104704;
  LODWORD(STACK[0x244]) = v17;
  LODWORD(STACK[0x3C4]) = 181434208;
  LODWORD(STACK[0x430]) = v17;
  LODWORD(STACK[0x434]) = -58104704;
  v15[102] = v18;
  return (*(v16 + 8 * a1))();
}

uint64_t sub_1000F26B0()
{
  v4 = **(v2 + 1304);
  *(v2 + 1320) = v4;
  LODWORD(STACK[0x3F4]) = 1418211936;
  return (*(v3 + 8 * (((((v0 - 78) ^ (v4 == v1)) & 1) * ((659 * (v0 ^ 0x2997)) ^ 0x52A)) ^ v0)))();
}

uint64_t sub_1000F27D8(uint64_t a1, int a2)
{
  v4 = (19 * (v2 ^ (a2 + 3825)) + 1869057895) & 0x90987EBC;
  v5 = v2 + 459303344;
  v6 = ((LODWORD(STACK[0x3F4]) - v5) | (v5 - LODWORD(STACK[0x3F4]))) >= 0;
  LODWORD(STACK[0x408]) = STACK[0x3F4];
  return (*(v3 + 8 * (v5 ^ 0xAB776DB8 ^ (v6 * (v4 ^ 0x3E77)))))();
}

uint64_t sub_1000F2850()
{
  v4 = **(v2 + 1304);
  *(v2 + 1328) = v4;
  LODWORD(STACK[0x3F8]) = 1418211936;
  return (*(v3 + 8 * ((((((v0 - 134220602) ^ (v4 == v1)) & 1) == 0) * ((v0 ^ 0x1FAD) - 5497)) ^ v0)))();
}

uint64_t sub_1000F28B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(a22 + 16);
  v26 = *(a22 + 24);
  v27 = *(v23[166] - 0x270676553BF336B9);
  v23[32] = v27;
  LODWORD(STACK[0x340]) = 544135861;
  v23[61] = v26;
  LODWORD(STACK[0x2B4]) = 1025735011;
  LODWORD(STACK[0x4AC]) = ((v22 + 4329) ^ 0xB6153B55) + v25 - ((2 * v25) & 0x6C2A3B96);
  v23[117] = v26;
  LODWORD(STACK[0x4BC]) = 544135861;
  v23[119] = v27;
  return (*(v24 + 8 * v22))(a1, a2, 1640640448, 1591088900);
}

uint64_t sub_1000F2970(uint64_t a1, int a2)
{
  v5 = v2 ^ (a2 + 3310);
  v6 = LODWORD(STACK[0x3F8]) == ((v5 + 5551) ^ 0xAB777BCA);
  LODWORD(STACK[0x408]) = STACK[0x3F8];
  return (*(v4 + 8 * ((v6 * (21 * v5 - 9421)) ^ (v3 + v2 + 713))))();
}

uint64_t sub_1000F29CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v76 + 1336) = **(v76 + 1304);
  v78 = *(v76 + 464);
  *(v76 + 552) = &a9 + v78 - 0x5681DE5F86D3A2;
  v79 = &a9 + v78 - 0x5681DE5F86D392;
  *(v76 + 208) = v79;
  *(v76 + 656) = &a9 + v78 - 0x5681DE5F86D372;
  v78 += 80;
  *(v76 + 1344) = v78;
  *(v76 + 464) = v78;
  (*(v77 + 8 * (v73 ^ 0x7FD6)))();
  v80 = (*(a24 + 8 * (v73 + 5302)))(v79, 0, 32);
  v81 = a24;
  *(v76 + 560) = 0xAB5C364D9808152;
  *(v76 + 688) = 0;
  a73 = v75;
  *(v76 + 664) = 0;
  LODWORD(STACK[0x344]) = v75;
  v82 = *(v76 + 1336);
  *(v76 + 608) = v82;
  *(v76 + 976) = *(v76 + 1344);
  LODWORD(STACK[0x4E0]) = 1418211936;
  return (*(v81 + 8 * (((v82 != v74) * (((v73 ^ 0x70A7) - 14056) ^ 0xE08)) ^ v73)))(v80, 2417421277);
}

uint64_t sub_1000F2B30()
{
  v4 = *(v2[167] - 0x270676553BF336C1);
  v2[33] = 0;
  LODWORD(STACK[0x274]) = v1;
  v2[140] = v3 + 8 * v0;
  v2[141] = v2[155];
  v2[142] = v4;
  v2[143] = &STACK[0x274];
  return (*(v3 + 8 * (((v0 + 5644) ^ 0x6DF) + v0)))();
}

uint64_t sub_1000F2B94@<X0>(int a1@<W8>)
{
  v3 = **(v1 + 1296);
  *(v1 + 1352) = v3;
  LODWORD(STACK[0x65C]) = STACK[0x3C0];
  return (*(v2 + 8 * (((v3 != 0) * ((a1 + 273804780) ^ 0x10520621)) | (a1 + 2776))))();
}

uint64_t sub_1000F2BE0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = a1 ^ 0x10521977;
  v22 = (a1 ^ 0x77) - 17;
  v23 = &STACK[0xAC0] + *(v17 + 352) + (a1 ^ 0x10521977u) - 0x5681DE5F86FE11;
  v19[171] = v23;
  v19[172] = v23;
  v24 = v23 + 32;
  v19[173] = v23 + 32;
  (*(v20 + 8 * ((a1 ^ 0x10521977) + 10984)))();
  v25 = (*(a17 + 8 * (v21 + 10984)))(v24, 0, 32);
  v19[85] = 32;
  v26 = LODWORD(STACK[0x65C]) == v18;
  LODWORD(STACK[0x404]) = 1418211936;
  return (*(a17 + 8 * ((62 * (((v22 ^ v26) & 1) == 0)) ^ v21)))(v25);
}

uint64_t sub_1000F2CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = *(v27 + 8 * v24);
  v29 = 2054851651 * ((((v26 - 160) | 0xA82770F46B7A69E8) - (v26 - 160) + ((v26 - 160) & 0x57D88F0B94859610)) ^ 0x9D00B0FE7D4C6CELL);
  *(v26 - 148) = (v24 - 1915005086) ^ v29;
  *(v25 + 1064) = v28 - v29;
  v30 = (*(v27 + 8 * (v24 ^ 0x4C53)))(v26 - 160);
  v31 = *(v26 - 152);
  LODWORD(STACK[0x404]) = v31;
  return (*(a24 + 8 * (((v31 == -1418238986) * (((v24 ^ 0x4FF8) - 15246) ^ 0x286F)) ^ (v24 + 4916))))(v30);
}

uint64_t sub_1000F2DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  LODWORD(STACK[0x67C]) = LODWORD(STACK[0x65C]) ^ v25;
  v28 = (*(v27 + 8 * (v24 + 122)))();
  *(v26 + 1400) = v28;
  LODWORD(STACK[0x404]) = 1418211938;
  return (*(a24 + 8 * (((v28 == 0) * ((v24 ^ 0x49C5) - 10398 + 415 * (v24 ^ 0x49C5))) | v24)))();
}

uint64_t sub_1000F2E28()
{
  v2 = LODWORD(STACK[0x67C]) - ((2 * LODWORD(STACK[0x67C])) & 0xECFEF4F2) + 1988065913;
  v3 = (v2 ^ 0x8C81AFC6) + 1742305917 + ((v2 << ((v0 - 65) ^ 0x47)) & ((v0 + 3618) ^ 0xF5FD9DD7) ^ 0xE4FCA072);
  LODWORD(STACK[0x688]) = v3;
  return (*(v1 + 8 * ((13 * (v3 == 1658343484)) ^ v0)))();
}

uint64_t sub_1000F2F60@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = 17 * (a1 ^ (v17 + 102));
  v22 = v18 + a1 + 132;
  v23 = v19[171];
  *(v23 + 8) = v19[175];
  v24 = STACK[0x67C];
  *(v23 + 16) = STACK[0x67C];
  *(v23 + 20) = v24;
  v25 = (*(v20 + 8 * (a1 ^ 0x9016B019)))(*(*(&off_10044E3E0 + (a1 ^ (v17 + 3771))) - 1711110499), 40, v19[172], 32, v19[173], &STACK[0x3B0]);
  v26 = ~(v25 << (v21 ^ 0x54)) | 0xA9113813;
  LODWORD(STACK[0x400]) = v25 - 1418238986 + v26 + 1;
  return (*(a17 + 8 * ((8795 * (v25 - 1418238986 + v26 == -1418238987)) ^ v22)))();
}

uint64_t sub_1000F3038()
{
  v3 = *(v1 + 680) == (v0 + 3) - 6456;
  LODWORD(STACK[0x400]) = 1418211939;
  return (*(v2 + 8 * ((v3 * (((v0 - 1990) | 0x2020) - 12662)) ^ v0)))();
}

uint64_t sub_1000F3088()
{
  v3 = *(*(v1 + 1368) + 56);
  LODWORD(STACK[0x68C]) = v3;
  return (*(v2 + 8 * ((26 * (v3 == (((v0 - 8619) | 0x951) ^ 0xFFFFFFFD) + ((v0 - 12639) | 0x1908))) ^ v0)))();
}

uint64_t sub_1000F30DC()
{
  *(v1 + 272) = *(v1 + 1400);
  LODWORD(STACK[0x404]) = -1418238986;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1000F3164@<X0>(int a1@<W8>)
{
  v3 = (((a1 ^ 0x171B) + 2826) ^ 0xAB777AAE) + LODWORD(STACK[0x68C]) - (v1 & (2 * LODWORD(STACK[0x68C])));
  LODWORD(STACK[0x400]) = v3;
  LODWORD(STACK[0x404]) = -1418238986;
  return (*(v2 + 8 * ((23554 * (v3 == -1418238986)) ^ a1)))();
}

uint64_t sub_1000F31C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = STACK[0x400];
  v28 = (*(v26 + 8 * (v24 ^ 0x530B)))(*(v25 + 1400));
  LODWORD(STACK[0x404]) = v27;
  return (*(a24 + 8 * v24))(v28);
}

uint64_t sub_1000F3200(uint64_t a1)
{
  v5 = STACK[0x404];
  *(v3 + 464) = *(v2 + 360);
  LODWORD(STACK[0x408]) = v5;
  return (*(v4 + 8 * v1))(a1, 2417421277);
}

uint64_t sub_1000F323C@<X0>(int a1@<W8>)
{
  v3 = STACK[0x408];
  v4 = **(v1 + 1296);
  *(v1 + 1416) = v4;
  LODWORD(STACK[0x270]) = v3;
  return (*(v2 + 8 * ((123 * ((((((a1 - 4156) | 0x1018) - 6104) ^ (v4 == 0)) & 1) == 0)) ^ a1)))();
}

uint64_t sub_1000F329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = (*(v26 + 8 * (v24 + 12859)))(*(v25 + 1416));
  **(v25 + 1296) = 0;
  return (*(a24 + 8 * v24))(v27, 2417421277);
}

uint64_t sub_1000F331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  v26 = *(v24 + 272);
  *(v24 + 1424) = v26;
  return (*(v25 + 8 * ((22 * (v26 == 0)) ^ (v23 + a23 + 1239))))();
}

uint64_t sub_1000F3350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = v25 + v24 + 987;
  v29 = (*(v27 + 8 * (v24 + 1877561357)))(*(v26 + 1424));
  return (*(a24 + 8 * v28))(v29);
}

uint64_t sub_1000F33F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  v26 = LODWORD(STACK[0x928]) == (((v24 + a23 - 2034) | 0x68) ^ 0xAB77600D);
  LODWORD(STACK[0x418]) = STACK[0x928];
  return (*(v25 + 8 * ((9419 * v26) ^ (v23 + a23 + 371))))();
}

uint64_t sub_1000F349C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v4[35] = *(v5 + 8 * SLODWORD(STACK[0x514]));
  v4[72] = v6;
  v4[40] = v4[164];
  return (*(v5 + 8 * v2))(2029530571, a2, 1640640448, 1591088900);
}

uint64_t sub_1000F3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  v25 = LODWORD(STACK[0x928]) == -1418238986;
  LODWORD(STACK[0x418]) = STACK[0x928];
  return (*(v24 + 8 * ((v25 * (a23 + 1877552480)) ^ (v23 + a23 + 371))))();
}

uint64_t sub_1000F3564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = *(STACK[0x280] - 0x270676553BF336B9);
  STACK[0x700] = v65;
  STACK[0x200] = 0x6EABD9347E63C922;
  LODWORD(STACK[0x414]) = 1418211936;
  return (*(v64 + 8 * ((((((a9 - 4828) ^ (v65 == 0xAB5C364D9808152)) & 1) == 0) * (v63 + ((a9 - 213923855) & 0x9CD6FBF6) - 2931)) | (a9 - 981))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000F3618@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x530] = 0x6EABD9347E63C922;
  STACK[0x538] = STACK[0x700];
  return (*(v64 + 8 * a2))(&a64, a1, 2519761831);
}

uint64_t sub_1000F365C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(STACK[0x92C]) = a3;
  v17 = *(v15 + 1072);
  v18 = v17 == 0xAB5C364D9808152;
  STACK[0x930] = a1;
  v19 = v17 - 0xAB5C364D9808152;
  v20 = *(v15 + 1064);
  v21 = *(v16 + 8 * v13);
  LODWORD(STACK[0x93C]) = v14;
  STACK[0x940] = v20;
  LOBYTE(STACK[0x94F]) = v18;
  STACK[0x950] = v19;
  STACK[0x958] = &STACK[0x260];
  return v21(a1, a2, a3, v18, v19, 4688, a7, &STACK[0x260], a9, a10, a11, a12, a13);
}

uint64_t sub_1000F375C@<X0>(int a1@<W3>, uint64_t a2@<X4>, int a3@<W5>, int a4@<W8>)
{
  *(v5 + 1080) = a2;
  LODWORD(STACK[0x55C]) = 1418211936;
  return (*(v6 + 8 * ((((a4 ^ a3) + v4) * a1) ^ a4)))();
}

uint64_t sub_1000F3798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v9;
  STACK[0x9A8] = *v9;
  *(v10 + 472) = v12;
  LODWORD(STACK[0x54C]) = 1418211957;
  *(v10 + 1096) = 0x4761F68478C333F5;
  return (*(v11 + 8 * (((v12 == 0x4761F68478C333F5) * ((v8 - 923068085) & 0x3704FFFF ^ 0x28E8)) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, a8, a5, __PAIR64__(a3, a4));
}

uint64_t sub_1000F3B74(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a12) = v66;
  v68 = *(a65 - 0x4761F68478C333DDLL);
  STACK[0x960] = v68;
  *a8 = v68;
  LODWORD(STACK[0x414]) = 1418211936;
  return (*(v67 + 8 * (((v68 == 0) * ((a2 + (v65 ^ 0xFFFFEB77) + 3699) ^ (a2 + 3719))) ^ v65)))(a1, a2, 0x6712D096EDAACFA7, a4, a5, a6, a7, a8, a5, __PAIR64__(a3, a4), a1, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1000F3C34@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v23 = (a22 | ((a22 < 0x18FD695EuLL) << 32)) + 0x44D585E736311061;
  STACK[0x3E0] = v23;
  STACK[0x3E8] = a8;
  v24 = ((a1 - 1105266039) & 0xD1F7FFC6 ^ 0x29D6534DBF23B51FLL) - a8 + v23;
  LODWORD(STACK[0x414]) = 1418211964;
  return (*(v22 + 8 * (a1 ^ 0xFFFFEB55 ^ (9977 * ((((v24 | a1 | ((a1 + 9) << 32)) - v24) | (v24 - (a1 | ((a1 + 9) << 32))) & ~((a1 | ((a1 + 9) << 32)) ^ v24)) >> 63)))))();
}

uint64_t sub_1000F3E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v67 = v59 + (a2 & (2 * (a6 - 0x6EABD9347E63C91ELL))) + ((a6 - 0x6EABD9347E63C91ELL) ^ v61) + v62;
  v63[70] = v67;
  v63[71] = v67 + 1;
  v68 = __ROR8__((v67 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = ((0xD4F4E5F14C1EA78 - v68) & 0x3D9236DAA7C2E47FLL) + v68 + 0x72B0B1A0EB3E1587 - ((v68 + 0x72B0B1A0EB3E1587) & 0x399236DAA7C2E47FLL);
  v70 = v69 ^ 0x69D500AF3BBC8954;
  v69 ^= 0xFC508DA8624C256FLL;
  v71 = (__ROR8__(v70, 8) + v69) ^ v64;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (v73 + v72 - ((2 * (v73 + v72)) & 0x5826CDB5EC674BFALL) - 0x53EC992509CC5A03) ^ 0xD2C976021E8E4188;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (0x7107CA4467DAA2B3 - ((v76 + v75) ^ 0x90985294394D5C8BLL | 0x7107CA4467DAA2B3) + ((v76 + v75) ^ 0x90985294394D5C8BLL | 0x8EF835BB98255D4CLL)) ^ 0xD57FB62AA8727461;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x80A3287483B4C7C9;
  v80 = __ROR8__(v79, 8);
  v81 = v79 ^ __ROR8__(v78, 61);
  v82 = (((2 * (v80 + v81)) & 0xDF117294C14ABF8CLL) - (v80 + v81) - 0x6F88B94A60A55FC7) ^ 0x15158305627CB142;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x97F56CB0FB361A73;
  HIBYTE(a29) = ((__ROR8__(v84, 8) + (v84 ^ __ROR8__(v83, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v67 + 1) & 7));
  v63[72] = a6;
  v63[75] = a6 - 0x6EABD9347E63C918;
  LOBYTE(STACK[0x9A7]) = (a21 - 0x44D585E711AF65F4) < 0x3D7F13CB;
  v85 = STACK[0x260];
  v63[73] = STACK[0x260];
  v63[74] = ((a6 - 0x6EABD9347E63C91CLL) ^ 0xDFC7F9F3FFBFCFDFLL) + 0x2FBCA7DF9CCEFE6FLL + ((2 * (a6 - 0x6EABD9347E63C91CLL)) & 0xBF8FF3E7FF7F9FBELL);
  v63[76] = a21 - 0x44D585E711AF65F4;
  return (*(v66 + 8 * (v65 + v60)))(a1, v85, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1000F42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, unsigned __int8 a32)
{
  v38 = (a32 ^ *v32) | ((*v35 ^ v33) << 8);
  LOWORD(STACK[0x3D6]) = v38 - 2 * (v38 & 0x6C0F ^ (a32 ^ *v32) & 4) + 27659;
  return (*(v37 + 8 * (v36 + v34 + 12356)))();
}

uint64_t sub_1000F4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (v7 ^ v9) + a6;
  STACK[0x3D8] = v11 + 10;
  v11 -= 0x6EABD93440E4B54DLL;
  v12 = v11 < 0x3D7F13CB;
  v13 = v11 > v6;
  if (v6 < 0x3D7F13CB != v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  LODWORD(STACK[0x414]) = 1418211964;
  return (*(v10 + 8 * ((v8 + 1877560424) ^ (25 * !v14))))();
}

uint64_t sub_1000F4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  LODWORD(STACK[0x54C]) = -1418238986;
  STACK[0x550] = a19;
  return (*(v20 + 8 * v19))(a12, a2, a11, a10, a9, 4688, a7, &STACK[0x260]);
}

uint64_t sub_1000F4E74@<X0>(void *a1@<X0>, int a2@<W8>)
{
  *a1 = v3;
  LODWORD(STACK[0x55C]) = v2;
  return (*(v4 + 8 * a2))();
}

uint64_t sub_1000F4F3C()
{
  STACK[0x200] = STACK[0x3D8];
  v2 = SLOWORD(STACK[0x3D6]) == -1156;
  LODWORD(STACK[0x414]) = 1418211956;
  return (*(v1 + 8 * ((23705 * v2) ^ (v0 + 1877547613))))();
}

uint64_t sub_1000F4F90(uint64_t a1)
{
  LODWORD(STACK[0x38C]) = -1418238986;
  LODWORD(STACK[0x41C]) = -1418238986;
  return (*(v2 + 8 * (v1 + 1877556253)))(a1, 2417421277);
}

uint64_t sub_1000F50E0()
{
  v4 = v2[88];
  v5 = *(v4 - 0x4761F68478C333EDLL);
  v1[12] = v4;
  v1[13] = v5;
  v6 = v2[44];
  v1[14] = v6;
  v1[15] = v6 - 0x4761F68478C333EDLL;
  *(v6 - 0x4761F68478C333EDLL) = v5;
  v7 = *(v4 - 0x4761F68478C333F5);
  v1[16] = v4 - 0x4761F68478C333F5;
  v1[17] = v6 - 0x4761F68478C333F5;
  *(v6 - 0x4761F68478C333F5) = v7;
  v2[112] = v7;
  return (*(v3 + 8 * (((((51 * (v0 ^ 0xEA) + 1) ^ (v5 == 0x4761F68478C333F5)) & 1) * (v0 ^ 0x24C2)) ^ v0)))();
}

uint64_t sub_1000F518C()
{
  *(*(v1 + 104) - 0x4761F68478C333F5) = *(v1 + 112);
  *(v2 + 896) = **(v1 + 136);
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1000F51D4()
{
  v4 = *(v2 + 896);
  *(v1 + 144) = v4;
  return (*(v3 + 8 * (((v4 == 0x4761F68478C333F5) * ((((v0 - 7135) | 0x1664) ^ 0xFFFFD82E) + v0 - 10946)) | v0)))();
}

uint64_t sub_1000F5340()
{
  v3 = v1[12];
  v4 = *(v3 - 0x4761F68478C333DDLL);
  v1[19] = v3 - 0x4761F68478C333DDLL;
  v1[20] = v4;
  return (*(v2 + 8 * (((v4 == 0) * (29 * (v0 ^ 0xF6F) + ((v0 + 14) ^ 0xFFFFFBB9))) ^ v0)))();
}

uint64_t sub_1000F539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = (*(v26 + 8 * (v24 + 15163)))(*(v25 + 160));
  **(v25 + 152) = 0;
  return (*(a24 + 8 * v24))(v27);
}

uint64_t sub_1000F5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = v24 & 0xE8244F15;
  v29 = (*(v27 + 8 * ((v24 & 0xE8244F15) + 16718)))(*(v25 + 128));
  *(v26 + 704) = 0x4761F68478C333F5;
  return (*(a24 + 8 * v28))(v29);
}

uint64_t sub_1000F5490@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 528);
  v4 = *(v3 - 0xAB5C364D980814ALL);
  STACK[0x780] = v3;
  STACK[0x788] = v3 - 0xAB5C364D980814ALL;
  STACK[0x790] = v4;
  return (*(v2 + 8 * (((v4 == 0x4761F68478C333F5) * ((a1 - 6734) ^ 0x374 ^ ((a1 - 6734) | 0x100) ^ 0x24A)) ^ a1)))();
}

uint64_t sub_1000F5508()
{
  v4 = *(v2 + 72);
  **(v2 + 80) = v0;
  *(v4 - 0xAB5C364D9808152) = v0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1000F553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v26 - 160) = v24 + 2054851651 * ((((2 * ((v26 - 160) ^ 0x98C9D3A4)) | 0x3DAF242A) - ((v26 - 160) ^ 0x98C9D3A4) - 517444117) ^ 0xAB0EE97) + 9430;
  v28 = (*(v27 + 8 * (v24 + 14172)))(v26 - 160);
  v29 = *(v26 - 152) ^ (v24 + 1132234483);
  v30 = *(v25[47] - 0x270676553BF336B9);
  v25[77] = v30;
  LODWORD(STACK[0x324]) = 1082348533;
  LODWORD(STACK[0x244]) = v29;
  LODWORD(STACK[0x3C4]) = 1717201337;
  LODWORD(STACK[0x430]) = v29;
  LODWORD(STACK[0x434]) = 1082348533;
  v25[102] = v30;
  return (*(a24 + 8 * v24))(v28, 2417421277);
}

uint64_t sub_1000F5654()
{
  v4 = *(v2 + 80);
  *(*(v2 + 88) - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *v4;
  *v4 = v1;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1000F5704()
{
  v2 = LODWORD(STACK[0x724]) == (v0 ^ 0x9016E002) + 459303344;
  LODWORD(STACK[0x418]) = STACK[0x724];
  return (*(v1 + 8 * ((13276 * v2) ^ v0)))();
}

uint64_t sub_1000F5748()
{
  LODWORD(STACK[0x38C]) = -1418238986;
  LODWORD(STACK[0x41C]) = -1418238986;
  return (*(v1 + 8 * (v0 + 1877551683)))();
}

uint64_t sub_1000F57A4(uint64_t a1, int a2)
{
  v6 = v3 + v4 - 2907;
  *(v2 + 400) = *(v2 + 376);
  LODWORD(STACK[0x4E4]) = v6;
  return (*(v5 + 8 * (((9274 * (v4 ^ (a2 + 3687))) ^ 0x5CCE) + v6)))();
}

uint64_t sub_1000F57F0@<X0>(int a1@<W8>)
{
  v5 = *(v4 + 8 * SLODWORD(STACK[0x4E4]));
  *(v2 + 368) = v1;
  v3[37] = v5;
  v3[42] = v1;
  v3[125] = v5;
  return (*(v4 + 8 * (((v1 == 0x56895A8D146179E2) * ((a1 - 5556) ^ 0x32CB)) | a1)))();
}

uint64_t sub_1000F5844(uint64_t a1, int a2)
{
  v7 = *(*(v3 + 368) - 0x56895A8D146179E2);
  *(v3 + 376) = v7;
  *(v5 + 392) = v7;
  return (*(v6 + 8 * (((v7 == v4) * ((v2 - 12224) ^ (a2 + 3433) ^ (a2 + 3430) ^ ((v2 - 12224) | 0x15))) ^ v2)))();
}

uint64_t sub_1000F58A8(uint64_t a1, int a2)
{
  v6 = *(v3 + 376) + 0x45F5EB547934DEF7;
  *(v4 + 304) = *(v5 + 8 * v2);
  *(v4 + 992) = v6;
  return (*(v5 + 8 * (v2 ^ 0x9016DC03 ^ v2 ^ (a2 + 3446))))();
}

uint64_t sub_1000F5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(v24 + 376) = v23;
  LODWORD(STACK[0x41C]) = STACK[0x38C];
  return (*(v25 + 8 * (a23 + 1877551683)))();
}

uint64_t sub_1000F5940()
{
  v4 = STACK[0x41C];
  v5 = *(v1 + 376);
  **(v1 + 1304) = v5;
  *(v1 + 792) = v5;
  LODWORD(STACK[0x428]) = v4;
  return (*(v3 + 8 * (v2 + v0 + 399)))();
}

uint64_t sub_1000F5988()
{
  v3 = STACK[0x428];
  *(v1 + 1536) = *(v1 + 792);
  LODWORD(STACK[0x408]) = v3;
  return (*(v2 + 8 * (v0 ^ 0xAB776DB8 ^ (((((v0 + 477887366) ^ (((v3 - v0) | (v0 - v3)) >> 31)) & 1) == 0) * (((v0 + 1059589065) & 0x15609776) + 13984)))))();
}

uint64_t sub_1000F5A2C()
{
  v4 = LODWORD(STACK[0x42C]) == -1418238986;
  LODWORD(STACK[0x408]) = STACK[0x42C];
  return (*(v3 + 8 * (((((v1 + v0 + 4291) | 1) ^ 0x298F) * v4) ^ (v2 + v0 + 713))))();
}

uint64_t sub_1000F5A7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 + 816);
  *(v4 + 1544) = v6;
  LODWORD(STACK[0x71C]) = STACK[0x434];
  LODWORD(STACK[0x720]) = STACK[0x430];
  LODWORD(STACK[0x444]) = v3;
  return (*(v5 + 8 * ((201 * (((v6 == 0xAB5C364D9808152) ^ (v2 - 4 + v2 - 91)) & 1)) ^ v2)))(2029530571, a2, 1640640448, 1591088900);
}

uint64_t sub_1000F5B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v66[193];
  v66[54] = v68;
  v69 = STACK[0x71C];
  LODWORD(STACK[0x2FC]) = STACK[0x71C];
  LOWORD(STACK[0x28E]) = 4422;
  LODWORD(STACK[0x388]) = v65 + 4;
  v70 = STACK[0x720];
  v66[57] = 0x8C38D1834A63647;
  v66[52] = 0;
  LODWORD(STACK[0x254]) = v64;
  v66[104] = 0;
  v66[105] = 0x8C38D1834A63647;
  LODWORD(STACK[0x45C]) = v70;
  LOWORD(STACK[0x462]) = 4422;
  LODWORD(STACK[0x464]) = v69;
  v66[108] = v68;
  LODWORD(STACK[0x474]) = v65 + 4;
  return (*(v67 + 8 * (a9 & 0x4A3835D3)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_1000F5CC0()
{
  v2 = LODWORD(STACK[0x724]) == (v0 ^ 0x344) - 1418238986 + ((v0 - 1334) | 0xB0) - 1842;
  LODWORD(STACK[0x4D4]) = STACK[0x724];
  return (*(v1 + 8 * ((13252 * v2) ^ v0)))();
}

uint64_t sub_1000F5D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74[46] = 0;
  v76 = *(v74[76] - 0x270676553BF336B9);
  v74[140] = v75 + 8 * v73;
  v74[141] = v74[158];
  v74[142] = v76;
  v74[143] = &a73;
  return (*(v75 + 8 * ((13 * (v73 ^ 0x672) + 2577) ^ v73)))();
}

uint64_t sub_1000F5F9C()
{
  v3 = *(v1 + 616);
  v4 = STACK[0x324];
  LODWORD(STACK[0x430]) = STACK[0x244];
  LODWORD(STACK[0x434]) = v4;
  *(v1 + 816) = v3;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1000F5FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = STACK[0x388];
  v76 = v73[54];
  v77 = STACK[0x2FC];
  v78 = STACK[0x28E];
  v79 = v73[57];
  v73[104] = v73[52];
  v73[105] = v79;
  LODWORD(STACK[0x45C]) = a72;
  LOWORD(STACK[0x462]) = v78;
  LODWORD(STACK[0x464]) = v77;
  v73[108] = v76;
  LODWORD(STACK[0x474]) = v75;
  return (*(v74 + 8 * v72))();
}

uint64_t sub_1000F6014@<X0>(int a1@<W8>)
{
  v7 = STACK[0x474];
  LODWORD(STACK[0x728]) = STACK[0x474];
  v8 = v5[108];
  LODWORD(STACK[0x72C]) = STACK[0x464];
  LOWORD(STACK[0x732]) = STACK[0x462];
  LODWORD(STACK[0x734]) = STACK[0x45C];
  v5[198] = v5[105];
  *(v2 + 8) = v5[104];
  v5[66] = v8;
  v9 = v7 ^ (v3 + a1 - 10661 - 1741);
  v11 = v8 != 0xAB5C364D9808152 && v9 < v4 + ((a1 - 161558698) & 0x99B7FA7E) - 2959;
  LODWORD(STACK[0x49C]) = v1;
  return (*(v6 + 8 * ((242 * v11) ^ a1)))();
}

uint64_t sub_1000F60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v29 = (*(v28 + 8 * (v24 + 17290)))(32);
  *(v26 + 16) = v29;
  *(v26 + 24) = &STACK[0x268];
  *(v27 + 352) = v29 + 0x4761F68478C333F5;
  LODWORD(STACK[0x498]) = v25 + 2;
  return (*(a24 + 8 * (((v29 == 0) ^ (((v24 - 63) ^ 0xCB) + 1)) & 1 | v24)))();
}

uint64_t sub_1000F6134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v30 = *(v27 + 16);
  *v30 = 0x4761F68478C333F5;
  *(v30 + 8) = 0x4761F68478C333F5;
  v31 = LODWORD(STACK[0x728]) ^ v28;
  LODWORD(STACK[0x75C]) = v31;
  v32 = v25 + ((v24 - 15811) ^ 0xDEFDEB95 ^ (v31 + 10)) + ((2 * (v31 + 10)) & 0xBDFBD2BE) - 1444379207;
  *(v30 + 16) = v32;
  v33 = (*(v29 + 8 * (v24 + 2505)))(v32 - 419260766);
  *(v30 + 24) = v33;
  *(v27 + 40) = v30 + 24;
  LODWORD(STACK[0x498]) = v26;
  return (*(a24 + 8 * ((19 * (v33 == 0)) ^ v24)))();
}

uint64_t sub_1000F61E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  LODWORD(a21) = LODWORD(STACK[0x728]) == v52 + 4;
  LOBYTE(STACK[0x76F]) = a21;
  HIBYTE(a48) = LOWORD(STACK[0x732]) >> ((v50 + 124) ^ 0x4E);
  HIBYTE(a50) = STACK[0x732];
  v55 = *(v54 + 8 * (v50 ^ 0x9FC));
  *(v53 + 1224) = 0x2FC92220EDE8F7EBLL;
  LODWORD(a19) = STACK[0x734];
  return v55(*(v51 + 40), 0xCB3A8F808CEFA77ELL, 0xCCDC5A0A98E8AA1CLL, 203, 13946, 0x72B0B1A0EB3E1587, a7, 0x97F56CB0FB361A73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1000F6320(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  v65 = *a1;
  v66 = *a1 + 4;
  v67 = __ROR8__(v66 & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (0xD4F4E5F14C1EA78 - v67) & 0x4CD81EFE8FE3B1B9 | (v67 + a6) & 0xB327E101701C4E46;
  v69 = v68 ^ 0x189F288B139DDC92;
  v68 ^= 0x8D1AA58C4A6D70A9;
  v70 = (__ROR8__(v69, 8) + v68) ^ v57;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ v64;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ v56;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (((2 * (v76 + v75)) & 0xDA36B97DC122FFD4) - (v76 + v75) - 0x6D1B5CBEE0917FEBLL) ^ 0x12478B359CDA47DCLL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v63;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a8;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  *(v65 + 4) = a51 ^ 0x86 ^ (((((2 * (v83 + v82)) & 0x690FF71E81D3EE3ELL) - (v83 + v82) - 0x3487FB8F40E9F720) ^ 0x33612E0554EEFA7EuLL) >> (8 * (v66 & 7u)));
  v84 = __ROR8__((v65 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v85 = ((2 * (v84 + a6)) | 0x587B403F710B33CALL) - (v84 + a6) - 0x2C3DA01FB88599E5;
  v86 = v85 ^ 0x787A966A24FBF4CELL;
  v85 ^= 0xEDFF1B6D7D0B58F5;
  v87 = __ROR8__(v86, 8);
  v88 = (v87 + v85 - ((2 * (v87 + v85)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4;
  v89 = v88 ^ __ROR8__(v85, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) & 0x903F4534BF6955C0) - (v90 + v89) - 0x481FA29A5FB4AAE1) ^ 0xC93A4DBD48F6B16ALL;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) & 0x5C307F409900B7F2) - (v93 + v92) + 0x51E7C05FB37FA406) ^ 0x9AF8115ABA65D1A0;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ v60;
  v97 = __ROR8__(v96, 8);
  v98 = v96 ^ __ROR8__(v95, 61);
  v99 = (0x5E4EF690E20CD2B0 - ((v97 + v98) ^ 0xEF0BBF44D834E002 | 0x5E4EF690E20CD2B0) + ((v97 + v98) ^ 0xEF0BBF44D834E002 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ a8;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  *(v65 + 5) = a56 ^ 0x31 ^ (((((2 * (v103 + v102)) | 0x39371380251567D4) - (v103 + v102) + 0x6364763FED754C16) ^ 0x6482A3B5F9724174) >> (8 * ((v65 + 5) & 7)));
  *(v61 + 880) = 0x2FC92220EDE8F7F1;
  return (*(v59 + 8 * (v62 + v58 + 13860)))();
}

uint64_t sub_1000F6724@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X7>, int a7@<W8>)
{
  v17 = *a1 + *(v14 + 1224) - 0x2FC92220EDE8F7EBLL;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = ((v18 + a5) | 0x4473AF4093FD868BLL) - ((v18 + a5) | 0xBB8C50BF6C027974) - 0x4473AF4093FD868CLL;
  v20 = __ROR8__(v19 ^ 0x103499350F83EBA0, 8);
  v19 ^= 0x85B114325673479BLL;
  v21 = (v20 + v19) ^ v7;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (0xF8065C5468770AD6 - ((v23 + v22) | 0xF8065C5468770AD6) + ((v23 + v22) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xCB1FD105091A75A6;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x60317E7E2F95E7CELL) - 0x4FE740C0E8350C19) ^ 0x30BB974B947E342ELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = *(v12 + 8 * v11);
  v32 = (__ROR8__(v29, 8) + v30) ^ v15;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  LOBYTE(v34) = (((((2 * ((v36 + v35) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122) - ((v36 + v35) ^ 0x43F178B4D98B7452) + 0x5C47E569B8209F6FLL) ^ 0x1850485775ACE65DuLL) >> (8 * ((*a1 + *(v14 + 1224) + 21) & 7u))) ^ HIBYTE(a7) ^ 0xB6;
  v37 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v17 = v34;
  v38 = ((2 * ((v37 + a5) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v37 + a5) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v39 = v38 ^ 0xFA626518CDFB6C7DLL;
  v38 ^= 0x6FE7E81F940BC046uLL;
  v40 = (__ROR8__(v39, 8) + v38) ^ v7;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v16;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xCB1FD105091A75A6;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v13;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) & 0x5B7AB7335E1C4A0ELL) - (v48 + v47) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a6;
  *(v17 + 1) = (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v50, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(a7) ^ 0x15;
  v52 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v53 = ((2 * (v52 + a5)) | 0xD26D64F9B5F9A13CLL) - (v52 + a5) - 0x6936B27CDAFCD09ELL;
  v54 = v53 ^ 0x3D7184094682BDB5;
  v53 ^= 0xA8F4090E1F72118ELL;
  v55 = __ROR8__(v54, 8);
  v56 = (0x106BA8B4217F8315 - ((v55 + v53) | 0x106BA8B4217F8315) + ((v55 + v53) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v57 = v56 ^ __ROR8__(v53, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v16;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xCB1FD105091A75A6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0xF13B5A97EEF23B9ALL) - 0x76252B40886E233) ^ 0x783E853F74CDDA04;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = __ROR8__((v65 + v64 - ((2 * (v65 + v64)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60, 8);
  v67 = (v65 + v64 - ((2 * (v65 + v64)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60 ^ __ROR8__(v64, 61);
  *(v17 + 2) = (((__ROR8__((v66 + v67) ^ a6, 8) + ((v66 + v67) ^ a6 ^ __ROR8__(v67, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(a7) ^ 0x1D;
  v68 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = v68 - ((2 * v68 - 0x1A9E9CBE2983D4F2) & 0xD5FA7621D5890D1ELL) - 0x2252134E29FD63EALL;
  v70 = __ROR8__(v69 ^ 0x3EBA0D6576BAEBA4, 8);
  v69 ^= 0xAB3F80622F4A479FLL;
  v71 = (v70 + v69) ^ v7;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((v73 + v72) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v73 + v72) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = __ROR8__((v76 + v75 - ((2 * (v76 + v75)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL, 8);
  v78 = (v76 + v75 - ((2 * (v76 + v75)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL ^ __ROR8__(v75, 61);
  v79 = (((2 * (v77 + v78)) | 0x9BF2874C46BB2BF0) - (v77 + v78) + 0x3206BC59DCA26A08) ^ 0x4D5A6BD2A0E95231;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((2 * (v81 + v80)) | 0xC7DAE37E88912B22) - (v81 + v80) + 0x1C128E40BBB76A6FLL) ^ 0x668FB40FB96E84EALL;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = __ROR8__(v82, 8);
  v85 = __ROR8__((((2 * (v84 + v83)) | 0x6837293C7DC4FA3ELL) - (v84 + v83) + v8) ^ v9, 8) + ((((2 * (v84 + v83)) | 0x6837293C7DC4FA3ELL) - (v84 + v83) + v8) ^ v9 ^ __ROR8__(v83, 61));
  *(v17 + 3) = a7 ^ a4 ^ ((((v10 | (2 * v85)) - v85 + a2) ^ a3) >> (8 * ((v17 + 3) & 7)));
  return v31();
}

uint64_t sub_1000F700C(uint64_t a1, uint64_t a2)
{
  STACK[0x770] = *(*STACK[0x750] - 0x4761F68478C333DDLL);
  v4 = LODWORD(STACK[0x75C]) - ((2 * LODWORD(STACK[0x75C])) & 0x4EAF30BA) - 1487431587;
  v5 = (((v2 - 2147449155) | 0x10166242) ^ 0x45BE9968 ^ v4) - 805442338 + ((2 * v4) & 0xE5FFF6E6 ^ 0x44AF30A2);
  LODWORD(STACK[0x77C]) = v5;
  return (*(v3 + 8 * (v2 | (8 * (v5 == 1123936337)))))(0xCB1FD105091A75A6, a2, 0x7EDA10D8E8BDE475, 0x71739F379BF98FD9);
}

uint64_t sub_1000F70F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v21 + 8 * (v20 - 100));
  LODWORD(STACK[0x484]) = STACK[0x77C];
  return v22(a1, 0xE5616341D67C2B0ELL, a3, a4, a5, 0x16C26BF63D6479ECLL, 0x8B6135FB1EB23CF6, 0xBC21D8F9D06FB3FLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, (v20 - 694161737) & 0xB976FA47);
}

uint64_t sub_1000F7220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v39 = ((v25 - 1) | ((v25 - 1 < v24) << 32)) + 0x1A75363BA9CA5E5ELL;
  v40 = v27 + v39 - 0x1A75363C7CDF40EBLL;
  v41 = __ROR8__(v40 & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = v41 - ((a2 + 2 * v41) & 0xA682CC081D3CC4C6) + 0x49F217A4F9DC77EALL;
  v43 = __ROR8__(v42 ^ 0x8306507192E00F48, 8);
  v42 ^= 0x1683DD76CB10A373uLL;
  v44 = (v43 + v42) ^ a4;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a3;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a1;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v52 = (v50 + v49 - (a5 & (2 * (v50 + v49))) + a6) ^ a7;
  v53 = v52 ^ __ROR8__(v49, 61);
  v54 = __ROR8__(v52, 8);
  v55 = __ROR8__((v54 + v53 - (v29 & (2 * (v54 + v53))) + v30) ^ v31, 8);
  v56 = (v54 + v53 - (v29 & (2 * (v54 + v53))) + v30) ^ v31 ^ __ROR8__(v53, 61);
  v57 = ((v33 | (2 * ((v55 + v56) ^ v32))) - ((v55 + v56) ^ v32) + v34) ^ v35;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *v40 = (((v26 - ((v59 + v58) | v26) + ((v59 + v58) | v36)) ^ v37) >> (8 * ((v27 + v39 + 21) & 7))) ^ *(v39 + v28 - 0x1A75363BECC846AFLL);
  return (*(a24 + 8 * (((v24 + 1 == v25) * v38) ^ a8)))(a1);
}

uint64_t sub_1000F744C@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x728]) == ((a1 - 1770063838) ^ 0x967EFC59) + 637411526 + ((a1 - 1770063838) & 0xF997FB57);
  LODWORD(STACK[0x498]) = v1 + 28;
  return (*(v2 + 8 * ((18170 * v3) ^ a1)))();
}

uint64_t sub_1000F74CC()
{
  v4 = *(**(v1 + 24) - 0x4761F68478C333DDLL);
  v5 = *(v2 + 1584);
  v6 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (0x8D4F4E5F14C1EA78 - v6) & (((v0 + 268754831) | 0x80121800) - 0x4EDC2E649BA8A875) | (v6 + 0x72B0B1A0EB3E1587) & 0x4ADC2E640B91AE2ELL;
  v8 = v7 ^ 0xE564E7EE68103CFALL;
  v7 ^= 0x70E16AE931E090C1uLL;
  v9 = __ROR8__(v8, 8);
  v10 = (v9 + v7 - ((2 * (v9 + v7)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) ^ 0xB15146501DE8B6F8) - ((2 * ((v12 + v11) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0xDBBCA2A7F6876CE0) - (v15 + v14) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x80A3287483B4C7C9;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x97F56CB0FB361A73;
  v4[10] = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 10) & 7u))) ^ HIBYTE(v5) ^ 8;
  v24 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((2 * v24 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v26 = v25 ^ 0xD85F7D3177813639;
  v25 ^= 0x4DDAF0362E719A02uLL;
  v27 = __ROR8__(v26, 8);
  v28 = (((v27 + v25) | 0x337A902E34222EAELL) - ((v27 + v25) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) | 0x7B372A0BF60D2AC5) - ((v30 + v29) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xCB1FD105091A75A6;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x80A3287483B4C7C9;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x8562C5B0FD26117BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x97F56CB0FB361A73;
  v4[11] = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 11) & 7u))) ^ LOWORD(STACK[0x73E]) ^ 0xC3;
  v40 = __ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((2 * v40 - 0x1A9E9CBE2983D4F2) & 0xB50EA0BD07EE0F74) - v40 + 0x32C7FE0090CAE2BELL;
  v42 = v41 ^ 0xF13F99D4E076956ELL;
  v41 ^= 0x64BA14D3B9863955uLL;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0x71739F379BF98FD9;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x7EDA10D8E8BDE475;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xCB1FD105091A75A6;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x80A3287483B4C7C9;
  v50 = __ROR8__(v49, 8);
  v51 = v49 ^ __ROR8__(v48, 61);
  v52 = (((v50 + v51) | 0xAE83C850330BCB1ELL) - ((v50 + v51) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v53 = __ROR8__(v52, 8);
  v54 = v52 ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) & 0x8B666A266E091910) - (v53 + v54) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v4[12] = (((((2 * (v57 + v56)) | 0x21458F0F9B85813CLL) - (v57 + v56) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(v5) ^ 0x8D;
  v58 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (0xD4F4E5F14C1EA78 - v58) & 0x745A46F181E71788 | (v58 + 0x72B0B1A0EB3E1587) & 0x8BA5B90E7E18E877;
  v60 = __ROR8__(v59 ^ 0x201D70841D997AA3, 8);
  v59 ^= 0xB598FD834469D698;
  v61 = (((2 * (v60 + v59)) | 0x26843C234468C454) - (v60 + v59) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) | 0x61D635255ACF2C94) - ((v63 + v62) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xCB1FD105091A75A6;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x80A3287483B4C7C9;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) | 0xBAAB3E68C36E4B71) - ((v70 + v69) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x97F56CB0FB361A73;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  LODWORD(v73) = STACK[0x738];
  v4[13] = (((((v75 + v74) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v75 + v74) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v4 + 13) & 7u))) ^ LODWORD(STACK[0x73C]) ^ 0x18;
  v76 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((v76 + 0x72B0B1A0EB3E1587) | 0x393C5199A3ABE61FLL) - ((v76 + 0x72B0B1A0EB3E1587) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v78 = v77 ^ 0x6D7B67EC3FD58B34;
  v77 ^= 0xF8FEEAEB6625270FLL;
  v79 = __ROR8__(v78, 8);
  v80 = (((2 * (v79 + v77)) & 0xA01676447DFA0AA6) - (v79 + v77) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575;
  v81 = v80 ^ __ROR8__(v77, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x7EDA10D8E8BDE475;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xCB1FD105091A75A6;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - ((2 * (v86 + v85)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((v89 + v88) | 0x73019C173CCE7FA9) - ((v89 + v88) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((v92 + v91) | 0x5071512C1C535486) - ((v92 + v91) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v4[14] = (((v95 + v94 - ((2 * (v95 + v94)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v4 + 14) & 7u))) ^ *(v1 + 3) ^ 0x34;
  v96 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((2 * v96 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v96 - 0x16EB6015C9B52F97;
  v98 = __ROR8__(v97 ^ 0xF8267FEBDF688DBLL, 8);
  v97 ^= 0x9A07EAF9E40624E0;
  v99 = (v98 + v97) ^ 0x71739F379BF98FD9;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (v101 + v100 - ((2 * (v101 + v100)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((2 * (v104 + v103)) & 0x6760441E82814852) - (v104 + v103) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) & 0x14B03C0D0DEA5DFELL) - (v107 + v106) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x39BC71E438FBF891) - ((v110 + v109) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (((2 * (v113 + v112)) & 0xFC603D156314A35ELL) - (v113 + v112) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v4[15] = (((__ROR8__(v114, 8) + (v114 ^ __ROR8__(v112, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 15) & 7u))) ^ *(v1 + 2) ^ 0xA6;
  v115 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = (v115 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v117 = (__ROR8__((v115 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8) + v116) ^ 0x71739F379BF98FD9;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x7EDA10D8E8BDE475;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (v121 + v120 - ((2 * (v121 + v120)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (v124 + v123 - ((2 * (v124 + v123)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x8562C5B0FD26117BLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x97F56CB0FB361A73;
  v4[16] = (((__ROR8__(v129, 8) + (v129 ^ __ROR8__(v128, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 16) & 7u))) ^ *(v1 + 1) ^ 0x36;
  v130 = __ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = ((2 * (v130 + 0x72B0B1A0EB3E1587)) | 0xA5E64CF69756B5C4) - (v130 + 0x72B0B1A0EB3E1587) + 0x2D0CD984B454A51ELL;
  v132 = v131 ^ 0x86B4100ED7D537C9;
  v131 ^= 0x13319D098E259BF2uLL;
  v133 = __ROR8__(v132, 8);
  v134 = __ROR8__((((2 * (v133 + v131)) | 0x559C992A13D30352) - (v133 + v131) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70, 8);
  v135 = (((2 * (v133 + v131)) | 0x559C992A13D30352) - (v133 + v131) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70 ^ __ROR8__(v131, 61);
  v136 = (v134 + v135) ^ 0x7EDA10D8E8BDE475;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xCB1FD105091A75A6;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x80A3287483B4C7C9;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (((2 * (v142 + v141)) & 0x3B5AD3916A0336E4) - (v142 + v141) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x97F56CB0FB361A73;
  v4[17] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v144, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 17) & 7u))) ^ v73 ^ 0x47;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1000F83C0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3[88] = 0x4761F68478C333F5;
  v4 = v3[66];
  v3[133] = v3[31];
  v3[134] = v4;
  return (*(v2 + 8 * ((14639 * (a2 != 1481912033)) ^ (a2 + 1877548947 + a2 + 137233965 + 1740308577))))(&STACK[0x3C8], a1, 1852669134);
}

uint64_t sub_1000F8498()
{
  v2 = STACK[0x498];
  LODWORD(STACK[0x7E4]) = STACK[0x498];
  return (*(v1 + 8 * ((229 * (v2 != ((v0 + 1877561180) ^ 0xAB772A54))) ^ (v0 + 1877559609))))();
}

uint64_t sub_1000F84F0@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 352);
  v1[22] = v4;
  v1[23] = v4 - 0x4761F68478C333DDLL;
  v5 = *(v4 - 0x4761F68478C333DDLL);
  v1[24] = v5;
  return (*(v3 + 8 * (a1 ^ (4 * ((((a1 - 4198) ^ (v5 == 0)) & 1) == 0)))))();
}

uint64_t sub_1000F8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = (*(v26 + 8 * (v24 ^ 0x736F)))(*(v25 + 192));
  **(v25 + 184) = 0;
  return (*(a24 + 8 * v24))(v27);
}

uint64_t sub_1000F891C()
{
  *(v4 + 56) = v2;
  v6 = v1 ^ v3;
  *(v4 + 72) = v6;
  v7 = (v0 ^ 0x3438u) + 4431 + v6 + 491340967;
  v9 = (v2 - 0x1787A9E3078FEB56) < 0x1D497C64 || v2 - 0x1787A9E3078FEB56 >= v7;
  return (*(v5 + 8 * ((211 * v9) ^ v0)))();
}

uint64_t sub_1000F8A20()
{
  *(v1 + 920) = *(v1 + 504);
  LODWORD(STACK[0x4A8]) = STACK[0x800];
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1000F8A5C()
{
  v4 = *(v2 + 440);
  *(v2 + 40) = v4;
  LODWORD(STACK[0x560]) = v1;
  return (*(v3 + 8 * (((v4 == 0) * (v0 ^ 0x2F11 ^ (v0 - 549) ^ 0x2D4E)) ^ v0)))();
}

uint64_t sub_1000F8A9C@<X0>(int a1@<W8>)
{
  v4 = ((((a1 - 1571543794) & 0x5DABF7DD) - 0x45380700200235B9) ^ v2[9]) + ((2 * v2[9]) & 0x1BFFBFFBELL);
  v2[10] = v4;
  LODWORD(v4) = (v4 - v2[7] + 0x5CBFB0E344DB67D1) < 0xFFFFFFFFFFFFFFF6;
  LODWORD(STACK[0x560]) = v1 + 28;
  return (*(v3 + 8 * ((v4 * (((a1 - 1571543794) ^ 0xA25475E4) - 6717)) ^ a1)))();
}

uint64_t sub_1000F8B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = v24[7];
  v27 = v24[5];
  v28 = _byteswap_ushort(*(((2 * (v26 - 0x1787A9E324D967B6)) & 0x5E5EFFFABE5BF676) + ((v26 - 0x1787A9E324D967B6) ^ 0xEF2F7FFD5F2DFB3BLL) + v27 + 0x10D08002A0D204C5));
  v29 = v28 - 2 * (v28 & 0x635 ^ *(((2 * (v26 - 0x1787A9E324D967B6)) & 0x5E5EFFFABE5BF676) + ((v26 - 0x1787A9E324D967B6) ^ 0xEF2F7FFD5F2DFB3BLL) + v27 + 0x10D08002A0D204C6) & 4) - 31180;
  LOWORD(STACK[0x9B2]) = v29;
  LOWORD(STACK[0x9B4]) = v29 - 3;
  v30 = (((2 * (v26 - 0x1787A9E324D967B4)) & 0x7FF87F7F7FB7F5CELL) + ((v26 - 0x1787A9E324D967B4) ^ 0xFFFC3FBFBFDBFAE7) + v27 + 0x3C04040240519);
  v31 = (*v30 << 24) | (v30[1] << 16) | (v30[2] << 8);
  v32 = (((v31 | v30[3]) + v23 - 2 * ((v31 | v30[3]) & 0x36151DCF ^ v30[3] & 4)) ^ v23) + v26;
  v24[11] = v32 + 10;
  v33 = v32 - 0x1787A9E228F5E88CLL;
  v34 = v24[10] + 0x453807011BE57F45;
  v36 = v34 < 0xFBE37F24 || v33 <= v34;
  return (*(v25 + 8 * (v36 | v22)))((v22 - 18518), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000F8E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31)
{
  v33[64] = v33[5] + v33[7] + ((v31 + 1348795493) & 0xAF9AF7F3 ^ 0xE878561CDB268993);
  v33[78] = v33[11];
  return (*(v34 + 8 * ((29 * (a31 == v32)) ^ v31)))();
}

uint64_t sub_1000F9070@<X0>(uint64_t a1@<X8>)
{
  v4 = v2[7];
  v5 = v2[5];
  v6 = (v5 + v4 + a1);
  v7 = (*v6 << 56) | (v6[1] << 48) | (v6[2] << 40) | (*(v5 + v4 + ((v1 - 689) ^ 0xE878561CDB268539)) << 32) | (v6[4] << 24) | (v6[5] << 16) | (v6[6] << 8) | v6[7];
  v2[36] = v7 + 0x8C38D1834A63647 - ((2 * v7) & 0x11871A30694C6C8ELL);
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1000F9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71[75];
  LODWORD(STACK[0x2FC]) = a31;
  LOWORD(STACK[0x28E]) = STACK[0x9B4];
  LODWORD(STACK[0x388]) = a32;
  LODWORD(STACK[0x254]) = -1127467767;
  v74 = v71[64];
  v71[52] = v74;
  v71[104] = v74;
  v75 = v71[36];
  v71[54] = v73;
  v71[57] = v75;
  v71[105] = v75;
  LODWORD(STACK[0x45C]) = a70;
  LOWORD(STACK[0x462]) = STACK[0x9B4];
  LODWORD(STACK[0x464]) = a31;
  v71[108] = v73;
  LODWORD(STACK[0x474]) = a32;
  return (*(v72 + 8 * v70))(2029530571, a2, 1640640448, 1591088900);
}

uint64_t sub_1000F91F8()
{
  v4[60] = v1;
  v4[38] = *(v5 + 8 * v0);
  v4[124] = v4[154];
  return (*(v5 + 8 * ((15195 * ((v0 ^ 0x722CE46Eu) > 0x28D175B4)) ^ (v2 + v0 + v0 - v3 + 2154 + 543))))();
}

uint64_t sub_1000F9270@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x804]) = v4;
  *(v6 + 208) = v2;
  *(v6 + 216) = v3;
  v9 = *(v8 + 8 * a1);
  *(v7 + 504) = v9;
  *(v7 + 920) = v9;
  LODWORD(STACK[0x4A8]) = v5;
  return (*(v8 + 8 * (((v2 == 0xAB5C364D9808152) * ((v1 - 37925656) ^ 0x6DAB8D5A ^ ((v1 + 268428732) | 0x8016EA42))) ^ v1)))();
}

uint64_t sub_1000F9344()
{
  v2 = STACK[0x3AC];
  LODWORD(STACK[0x518]) = 555381891;
  LODWORD(STACK[0x51C]) = v2;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000F936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v64 + 208);
  v69 = *(v64 + 216);
  v66[54] = v68;
  v70 = STACK[0x804];
  LODWORD(STACK[0x2FC]) = STACK[0x804];
  LOWORD(STACK[0x28E]) = 692;
  LODWORD(STACK[0x388]) = v65 - 8;
  v66[57] = v69;
  v66[52] = 0;
  LODWORD(STACK[0x254]) = -1938014873;
  v66[104] = 0;
  v66[105] = v69;
  LODWORD(STACK[0x45C]) = v65;
  LOWORD(STACK[0x462]) = 692;
  LODWORD(STACK[0x464]) = v70;
  v66[108] = v68;
  LODWORD(STACK[0x474]) = v65 - 8;
  return (*(v67 + 8 * ((193 * (v63 != ((v63 + 630785607) & 0xDCA9B2F9 ^ 0x9F3DAF))) ^ (v63 + 37919186))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000F9430@<X0>(int a1@<W8>)
{
  v6 = *(v4 + 952);
  *(v3 + 232) = v6;
  LODWORD(STACK[0x82C]) = STACK[0x4BC];
  *(v3 + 248) = *(v4 + 936);
  LODWORD(STACK[0x83C]) = STACK[0x4AC];
  LODWORD(STACK[0x4CC]) = v1;
  return (*(v5 + 8 * (((v6 == 0xAB5C364D9808152) * (((a1 - 9758) | 0x1143) ^ (v2 + a1 - 1877552216 - 1767))) ^ a1)))();
}

uint64_t sub_1000F9600()
{
  v2 = LODWORD(STACK[0x840]) == (((v0 + 71989512) | 0x78956BA5) ^ 0xD7A88811);
  LODWORD(STACK[0x4D4]) = STACK[0x840];
  return (*(v1 + 8 * ((v2 * (((v0 + 233061309) & 0xF21BBFBC) + 14963)) ^ v0)))();
}

uint64_t sub_1000F9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = v72[70];
  v75 = v72[81];
  v72[32] = v74;
  LODWORD(STACK[0x340]) = 1262304268;
  v72[61] = v75;
  LODWORD(STACK[0x2B4]) = 1845608927;
  LODWORD(STACK[0x4AC]) = a71;
  v72[117] = v75;
  LODWORD(STACK[0x4BC]) = 1262304268;
  v72[119] = v74;
  return (*(v73 + 8 * (v71 ^ 0x7CDFFE52 ^ ((v71 == -260115260) * ((v71 - 2095039817) ^ 0x1854)))))(a1, a2, 1640640448, 1591088900);
}

uint64_t sub_1000F9834()
{
  v5 = *(v1 + 232);
  v3[54] = v5;
  v6 = STACK[0x82C];
  LODWORD(STACK[0x2FC]) = STACK[0x82C];
  v7 = STACK[0x83C];
  LODWORD(STACK[0x388]) = STACK[0x83C];
  v8 = *(v1 + 248);
  v3[52] = v8;
  v3[104] = v8;
  LOWORD(STACK[0x28E]) = -10518;
  v3[57] = 0x8C38D1834A63647;
  LODWORD(STACK[0x254]) = -1532741320;
  v3[105] = 0x8C38D1834A63647;
  LODWORD(STACK[0x45C]) = v2;
  LOWORD(STACK[0x462]) = -10518;
  LODWORD(STACK[0x464]) = v6;
  v3[108] = v5;
  LODWORD(STACK[0x474]) = v7;
  return (*(v4 + 8 * v0))(2029530571);
}

uint64_t sub_1000F9934()
{
  v3 = LODWORD(STACK[0x840]) == ((v0 - v1 + 1099) ^ 0x3B619B04 ^ (v0 - 335845507) & 0x140493FC);
  LODWORD(STACK[0x4D4]) = STACK[0x840];
  return (*(v2 + 8 * ((6672 * v3) ^ v0)))();
}

uint64_t sub_1000F99F0()
{
  v2 = LODWORD(STACK[0x840]) == ((4 * v0) ^ 0xAB777F1E);
  LODWORD(STACK[0x4D4]) = STACK[0x840];
  return (*(v1 + 8 * ((v2 * (5 * (v0 ^ 0x7D8) + 9453)) ^ v0)))();
}

uint64_t sub_1000F9A40()
{
  v3 = v1[70];
  v1[140] = v2 + 8 * v0;
  v1[141] = v1[157];
  v1[142] = v3;
  v1[143] = &STACK[0x344];
  return (*(v2 + 8 * (v0 ^ 0x11F5 ^ (13644 * (v0 != 1934167967)))))();
}

uint64_t sub_1000F9A98@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 1136);
  *(v2 + 96) = *(v2 + 1144);
  *(v2 + 104) = v4;
  v5 = **(v2 + 1120);
  *(v2 + 112) = *(v2 + 1128);
  *(v2 + 120) = v5;
  LODWORD(STACK[0x5BC]) = v1;
  return (*(v3 + 8 * ((78 * ((((a1 - 692067358) ^ (a1 - 2438) ^ (v4 == 0xAB5C364D9808152)) & 1) == 0)) ^ a1)))();
}

uint64_t sub_1000F9B68()
{
  v3 = (v1[13] - 0xAB5C364D9808152);
  v4 = *v3;
  v1[16] = v3;
  v1[17] = v4;
  LODWORD(STACK[0x594]) = 619120910;
  return (*(v2 + 8 * ((213 * ((((v0 - 443) ^ (v4 == 0x4761F68478C333F5)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1000F9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1152) = *(v7 + 136);
  LODWORD(STACK[0x590]) = 619120910;
  return (*(v8 + 8 * (v6 ^ 0x311C)))(1983513958, 1564264329, a3, 1564276847, 81, a6, 14295, 10302);
}

uint64_t sub_1000F9C60(int a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  v14 = (v5 ^ v8) * v9 - *(v11 - 0x4761F68478C333E5) + a1;
  v15 = v12 + v10 > v14;
  if (v12 + v10 < a2 != v14 < (((v5 ^ v6) * v7) ^ a4))
  {
    v15 = v12 + v10 < a2;
  }

  return (*(v13 + 8 * ((!v15 * a5) ^ v5)))();
}

uint64_t sub_1000F9D3C(uint64_t a1)
{
  LODWORD(STACK[0x590]) = v1;
  *(v5 + 1152) = v3;
  *(v5 + 144) = v2;
  LODWORD(STACK[0x594]) = v1;
  return (*(v6 + 8 * v4))(a1, 2417421277);
}

uint64_t sub_1000F9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = 16 - ((LODWORD(STACK[0x594]) + 12) & 0xFu) + (LODWORD(STACK[0x594]) - 619120910) < ((v28 - 682172206) & 0xB8BFFED7 ^ 0x6FE905B0uLL);
  LODWORD(STACK[0x5BC]) = v29 + 28;
  return (*(v30 + 8 * ((v31 * (((v28 + 1956) | 0x1DA2) - 417)) ^ v28)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1000F9E10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  v42 = (*(v41 + 8 * (v37 + 2676)))((a37 + a33 - ((((a37 + a33) << (((v37 + 94) | 6) ^ (a2 + 106))) + 1771226842) & ((v37 - 9735) ^ 0x6C2A224D)) + 1792966968) ^ v39);
  *(v40 + 152) = v42;
  LODWORD(STACK[0x5BC]) = v38 + 2;
  return (*(a24 + 8 * (v37 | (4 * (v42 == 0)))))(v42, 2417421277, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1000F9EBC()
{
  v3 = **(v1 + 128);
  *(v1 + 160) = v3;
  LODWORD(STACK[0x5AC]) = 695514327;
  return (*(v2 + 8 * (((v3 == 0x4761F68478C333F5) * ((3 * (v0 ^ 0x14C4)) ^ (4 * v0) ^ 0x43A4)) ^ v0)))();
}

uint64_t sub_1000F9F20@<X0>(int a1@<W8>)
{
  v2[146] = v2[20];
  v4 = *(v3 + 8 * a1);
  LODWORD(STACK[0x5A0]) = v1;
  return v4(0x4BB2B4E80EDC3819, 0x200002033000124, 2139090654, 2096213764, 2096203392, 12125, v2[24]);
}

uint64_t sub_1000FA060()
{
  v2 = LODWORD(STACK[0x840]) == -1418238986;
  LODWORD(STACK[0x4D4]) = STACK[0x840];
  return (*(v1 + 8 * ((v2 * (((v0 - 1162) | 4) + 15622)) ^ v0)))();
}

uint64_t sub_1000FA09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = v75[86];
  v75[81] = v78;
  v79 = v75[26];
  v80 = v75[69];
  v74[37] = v79;
  v81 = 1901182499 * ((((2 * (v76 - 160)) | 0x123722FC) - (v76 - 160) + 1994681986) ^ 0xC506169C);
  *(v76 - 128) = (v73 + 10077) ^ v81;
  *(v76 - 160) = ((a73 ^ 0xDDEAE26C) + ((2 * a73) & 0xD7FFFF4E ^ 0x442A3B06) + ((v73 + 3707) ^ 0xFEAEFA4A)) ^ v81;
  *(v76 - 132) = v81 ^ 0x42DBB3DE;
  v74[134] = v78;
  v74[138] = v80;
  v74[135] = v79;
  v74[139] = v78;
  v82 = (*(v77 + 8 * (v73 ^ 0x4D06)))(v76 - 160);
  v83 = *(v76 - 136);
  LODWORD(STACK[0x4D4]) = v83;
  return (*(a24 + 8 * ((8299 * (v83 == -1418238986)) ^ v73)))(v82, 2417421277);
}

uint64_t sub_1000FA1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v66[70];
  v66[32] = v68;
  LODWORD(STACK[0x340]) = 1099992266;
  v69 = *(v64 + 296);
  v66[61] = v69;
  LODWORD(STACK[0x2B4]) = 1640640448;
  LODWORD(STACK[0x4AC]) = v65 + 32;
  v66[117] = v69;
  LODWORD(STACK[0x4BC]) = 1099992266;
  v66[119] = v68;
  return (*(v67 + 8 * v63))(a1, a2, 1640640448, 1591088900, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000FA2B4()
{
  v2 = LODWORD(STACK[0x840]) == (v0 ^ 0xAB7764CC);
  LODWORD(STACK[0x4D4]) = STACK[0x840];
  return (*(v1 + 8 * ((v2 * ((v0 + 8713) ^ 0x1198)) ^ v0)))();
}

uint64_t sub_1000FA300()
{
  v5 = *(v3 + 368);
  *(v1 + 304) = v5;
  return (*(v4 + 8 * (((v2 + ((v0 - 2146271555) | 0x10045246) - 2931) * (v5 == 0)) ^ v0)))();
}

uint64_t sub_1000FA39C@<X0>(int a1@<W8>)
{
  *(v2 + 312) = *(v3 + 608);
  LODWORD(STACK[0x4D4]) = v1 + 3;
  return (*(v4 + 8 * (a1 + 1877553740)))();
}

uint64_t sub_1000FA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = v72[32];
  v75 = STACK[0x340];
  v76 = v72[61];
  LODWORD(STACK[0x4AC]) = a71;
  v72[117] = v76;
  LODWORD(STACK[0x4BC]) = v75;
  v72[119] = v74;
  return (*(v73 + 8 * v71))(a1, a2, 1640640448, 1591088900);
}

uint64_t sub_1000FA77C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v40 = ((v24 - 1) | (((v24 - 1) < 0x45FAE98) << 32)) + 0x255B07BE854924D0;
  v41 = v40 + a2 + v31;
  v42 = __ROR8__(v41 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = ((v42 + (v33 ^ v32)) & a1 ^ a8) + ((v42 + (v33 ^ v32)) & v35 ^ v38) - 1;
  v44 = v43 ^ v26;
  v45 = v43 ^ v37;
  v46 = __ROR8__(v44, 8);
  v47 = ((v27 & (2 * (v46 + v45))) - (v46 + v45) + v30) ^ 0x2D22AFA49D9BF845;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x7EDA10D8E8BDE475;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xCB1FD105091A75A6;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x80A3287483B4C7C9;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x8562C5B0FD26117BLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v25 - ((v57 + v56) | v25) + ((v57 + v56) | a3)) ^ a4;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  *(v28 + v40 + a6) = ((((a5 | (2 * (v60 + v59))) - (v60 + v59) + v39) ^ a7) >> (8 * (v41 & 7u))) ^ *v41;
  return (*(a24 + 8 * ((4327 * ((v36 | v34) >= 0)) ^ v29)))();
}

uint64_t sub_1000FA9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26[40] = *(v27 + 656);
  v29 = (*(v28 + 8 * (v24 ^ 0x953)))();
  v30 = *(v27 + 560);
  v26[41] = &STACK[0x338];
  v26[42] = v30;
  LODWORD(STACK[0x4D4]) = v25;
  return (*(a24 + 8 * ((v30 == 0xAB5C364D9808152) | v24)))(v29, 2417421277);
}

uint64_t sub_1000FAA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = (v24 - 16122) | 0x320;
  v29 = v25[39];
  v30 = *(v29 - 0x270676553BF33669);
  v31 = v25[42];
  v32 = 358777457 * (((~(v26 - 160) & 0x84A6F7F0) - (~(v26 - 160) | 0x84A6F7F1)) ^ 0xEB0EF383);
  v25[133] = v25[40];
  *(v26 - 148) = v32 + v30 + 20235713;
  v25[136] = v29 - 0x270676553BF336A9;
  v25[135] = v31;
  *(v26 - 120) = 1789030517 - v32;
  *(v26 - 128) = v28 - v32 + 2;
  *(v26 - 124) = 593035557 - v32;
  v33 = (*(v27 + 8 * (v28 + 17106)))(v26 - 160);
  v34 = *(v26 - 152);
  LODWORD(STACK[0x4D4]) = v34;
  return (*(a24 + 8 * ((16932 * (v34 == ((173 * ((v28 + 23132347) & 0xFE9F15BF ^ 0x15B1)) ^ 0xAB776142))) ^ v28)))(v33, 2417421277);
}

uint64_t sub_1000FAB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v40 = **(v36 + 328);
  v38[32] = v40;
  LODWORD(STACK[0x340]) = -365885575;
  v38[61] = a35;
  LODWORD(STACK[0x2B4]) = -2039421411;
  LODWORD(STACK[0x4AC]) = v37 + 32;
  v38[117] = a35;
  LODWORD(STACK[0x4BC]) = -365885575;
  v38[119] = v40;
  return (*(v39 + 8 * v35))(a1, a2, 1640640448, 1591088900);
}

uint64_t sub_1000FAC10(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x590]) = a3;
  *(v6 + 1152) = v4;
  *(v6 + 144) = v4;
  LODWORD(STACK[0x5BC]) = 1418211964;
  LODWORD(STACK[0x594]) = v3;
  return (*(v7 + 8 * v5))(a1, 2417421277);
}

uint64_t sub_1000FAC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  LODWORD(STACK[0x5A0]) = v25;
  STACK[0x598] = v28;
  LODWORD(STACK[0x5A8]) = v26;
  LODWORD(STACK[0x5A4]) = v24;
  LODWORD(STACK[0x5AC]) = v25;
  return (*(a24 + 8 * v27))(a1, 2417421277);
}

uint64_t sub_1000FACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  v41 = (LODWORD(STACK[0x5AC]) - 695514327);
  v42 = *(v39 + 152);
  v43 = ((v41 << (v38 + 125)) & 0x1FE1FFB76) + (v41 ^ 0xBFBBFD72FF0FFDBBLL) + v42;
  *(v43 + 0x4044028D00F00245) = 0;
  *(v43 + (((v38 + 1062014) | 0x9006A244) ^ 0x4044028D90E6F801)) = 0;
  *(v43 + 0x4044028D00F00248) = 0;
  *(((2 * (v41 + 4)) & 0x1BFB7FFCALL) + ((v41 + 4) ^ 0xDDEFFFF7DFDBFFE5) + v42 + 0x221000082024001BLL) = -9392;
  v44 = ((2 * (v41 + 6)) & 0xF7DD7F6CLL) + ((v41 + 6) ^ 0x3FBA65377BEEBFB6) + v42 - 0x3FBA65377BEEBFB6;
  *v44 = 0;
  *(v44 + 2) = 0;
  *(v44 + 3) = (-69 - a34 - ((2 * a38 + 2) & 0x16)) ^ 0xAB;
  v45 = ((16 - a34) ^ 0xE5C8FDEEFE51DDB6) + 0x1A370211277E3D8DLL + ((2 * (16 - a34)) & 0x2C);
  *(v39 + 24) = v45;
  LOBYTE(STACK[0x9B7]) = v45 < 0x25D01B43;
  return (*(v40 + 8 * ((92 * (v45 != 634395459)) ^ v38)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000FAF20@<X0>(int a1@<W8>)
{
  *(v5 + v1) = 0;
  if (v2 != v4 < v6)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4 < v3;
  }

  return (*(v8 + 8 * ((!v9 * v7) ^ a1)))();
}

uint64_t sub_1000FAF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38)
{
  *(*(v39 + 112) - 0x2E48C5ECF860273ELL) = *(v39 + 152);
  **(v39 + 96) = a38;
  LODWORD(STACK[0x5BC]) = -1418238986;
  return (*(v40 + 8 * ((7038 * ((v38 - 1344322802) < 0xD63832D0)) ^ (v38 + 1877542812))))();
}

uint64_t sub_1000FB060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71[70];
  v74 = v71[46];
  v71[32] = v73;
  LODWORD(STACK[0x340]) = 1262304268;
  v71[61] = v74;
  LODWORD(STACK[0x2B4]) = 2050577406;
  LODWORD(STACK[0x4AC]) = a71;
  v71[117] = v74;
  LODWORD(STACK[0x4BC]) = 1262304268;
  v71[119] = v73;
  return (*(v72 + 8 * (a20 + 274)))(a1, a2, 1640640448, 1591088900);
}

uint64_t sub_1000FB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v65 = v63[33];
  v66 = STACK[0x274];
  LODWORD(STACK[0x844]) = STACK[0x274];
  LODWORD(STACK[0x354]) = v66;
  v63[55] = v65;
  v63[78] = 0x1787A9E324D967BALL;
  v63[36] = 0x8C38D1834A63647;
  v63[64] = 0;
  v67 = (*(v64 + 8 * (v60 + 1789)))(16);
  *(v62 + 272) = v67;
  v63[75] = v67 + 0xAB5C364D9808152;
  LODWORD(STACK[0x564]) = v61 + 2;
  return (*(a24 + 8 * (((((v60 + 46) ^ (v67 == 0)) & 1) * (((v60 + 209) | 0x11) - 17408)) ^ v60)))(v67, 2417421277, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1000FB1EC()
{
  v3 = *(v1 + 272);
  *v3 = 0x4761F68478C333F5;
  v3[1] = 0x4761F68478C333F5;
  return (*(v2 + 8 * (v0 - 9427)))();
}

uint64_t sub_1000FB2A8@<X0>(int a1@<W8>)
{
  *(*(v1 + 1280) - 0x30555AAEF7095242) = *(v1 + 664);
  LODWORD(STACK[0x3C0]) = STACK[0x344];
  LODWORD(STACK[0x4D4]) = -1418238986;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1000FB350()
{
  LODWORD(STACK[0x854]) = STACK[0x4D0];
  v5 = *(v3 + 264);
  *(v1 + 288) = v5;
  return (*(v4 + 8 * (((2 * (v5 != 0)) | (8 * (v5 != 0))) ^ (v2 + v0 - 802))))();
}

uint64_t sub_1000FB3C0(uint64_t a1, int a2)
{
  v5 = LODWORD(STACK[0x854]) != ((1619 * (v2 ^ (a2 + 3688)) - 1418244535) ^ v2 ^ (a2 + 3349));
  LODWORD(STACK[0x4D4]) = STACK[0x854];
  return (*(v4 + 8 * ((37 * v5) ^ (v3 - 1126))))();
}

uint64_t sub_1000FB418()
{
  LODWORD(STACK[0x2CC]) = STACK[0x4D4];
  v2[38] = *(v3 + 8 * v0);
  v2[124] = v2[156];
  return (*(v3 + 8 * (v0 ^ 0x9016DDA2 ^ (v0 - v1 + 2257))))();
}

uint64_t sub_1000FB510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v43 = *(a36 + v38);
  *(v40 + 632) = v43;
  return (*(v41 + 8 * (((v43 != 0xAB5C364D9808152) * ((v36 ^ v37) + v39)) ^ v36)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1000FB558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = *(a40 - 0xAB5C364D9808152) + v40 == 0x9F553921B0B71556;
  *(v41 + 1216) = a40;
  return (*(v42 + 8 * ((v43 * (a9 - 20585 + 2321 * (a9 ^ 0x2C52))) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1000FB6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = (*(v27 + 8 * (v26 + 6637)))(v25);
  *v24 = 0;
  return (*(a24 + 8 * v26))(v28);
}

uint64_t sub_1000FB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  STACK[0x5C0] = v38;
  STACK[0x5C8] = STACK[0x380];
  return (*(v39 + 8 * v37))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v36, v35, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1000FB820(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v4 + v3 - 2178;
  *(v5 + 304) = *(v6 + 8 * v7);
  return (*(v6 + 8 * (v7 ^ a3)))();
}

uint64_t sub_1000FB84C@<X0>(int a1@<W8>)
{
  v4 = v2[70];
  v2[77] = v4;
  LODWORD(STACK[0x324]) = -815579951;
  LODWORD(STACK[0x244]) = v1;
  LODWORD(STACK[0x3C4]) = 493768299;
  LODWORD(STACK[0x430]) = v1;
  LODWORD(STACK[0x434]) = -815579951;
  v2[102] = v4;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_1000FB91C@<X0>(int a1@<W8>)
{
  *(v3 + 560) = v2;
  LODWORD(STACK[0x564]) = a1;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_1000FB97C()
{
  v3 = *(v1 + 688);
  STACK[0x890] = v3;
  return (*(v2 + 8 * ((14 * (v3 != 0)) ^ (v0 + 1877552779))))();
}

uint64_t sub_1000FB9FC()
{
  v3 = STACK[0x2CC];
  *(v1 + 976) = *(v1 + 464);
  LODWORD(STACK[0x4E0]) = v3;
  return (*(v2 + 8 * (v0 + 1877547286)))();
}

uint64_t sub_1000FBA38()
{
  v4 = STACK[0x4E0];
  v5 = *(v2 + 976);
  *(v1 + 352) = v5;
  *(v1 + 360) = v5 - 80;
  *(v2 + 464) = v5 - 80;
  LODWORD(STACK[0x408]) = v4;
  return (*(v3 + 8 * (((v4 == -1418238986) * ((v0 ^ 0x1672) + 5259)) ^ v0)))();
}

uint64_t sub_1000FBA84(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = v24 ^ (a2 + 2773);
  v29 = (*(v27 + 8 * (v24 + v25)))(*(v26 + 392) - 0x270676553BF336C1);
  v30 = *(v26 + 336);
  STACK[0x8B8] = v30;
  return (*(a24 + 8 * ((131 * (((v28 ^ (v30 == 0x56895A8D146179E2)) & 1) == 0)) ^ (v24 + v25 - 2036))))(v29, 2417421277);
}

uint64_t sub_1000FBB84@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x904]) = v3;
  LODWORD(STACK[0x908]) = v2;
  LODWORD(STACK[0x90C]) = v4;
  LODWORD(STACK[0x3AC]) = v3;
  v6 = (a2 ^ a1) - a1 - 1921 + v3 + 1217712520;
  v7 = v2 + 1046545823;
  v8 = (v7 < 0x5F7B7A20) ^ (v6 < 0x5F7B7A20);
  v9 = v6 < v7;
  if (v8)
  {
    v9 = v7 < 0x5F7B7A20;
  }

  LODWORD(STACK[0x52C]) = -1418238986;
  return (*(v5 + 8 * ((59 * v9) ^ a2)))();
}

uint64_t sub_1000FBC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = STACK[0x904];
  v75 = (LODWORD(STACK[0x904]) - 384213424);
  v76 = *(v72 + 320);
  *(v71 + 472) = v75;
  *(v71 + 480) = v76;
  LODWORD(v75) = v70 + 16747 + *(v76 + 40 * v75 + 36) - a70 == 156352115;
  LODWORD(STACK[0x518]) = STACK[0x90C];
  LODWORD(STACK[0x51C]) = v74;
  return (*(v73 + 8 * ((v75 * ((v70 - 1661378679) & 0x6306BBBF ^ 0x222B)) ^ v70)))();
}

uint64_t sub_1000FBD50@<X0>(unsigned int a1@<W8>)
{
  v4 = *(v1 + 480) + 40 * *(v1 + 472);
  v5 = *(v4 + 24);
  LODWORD(v4) = *(v4 + 8);
  v6 = v2[72];
  v2[77] = v6;
  LODWORD(STACK[0x324]) = v5;
  LODWORD(STACK[0x244]) = v4;
  LODWORD(STACK[0x3C4]) = 2029535428;
  LODWORD(STACK[0x430]) = v4;
  LODWORD(STACK[0x434]) = v5;
  v2[102] = v6;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_1000FBDA4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x51C];
  v3 = STACK[0x518];
  LODWORD(STACK[0x520]) = STACK[0x518];
  LODWORD(STACK[0x524]) = v3;
  LODWORD(STACK[0x528]) = v2;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1000FBEA0@<X0>(int a1@<W8>)
{
  v3 = *(v1[60] + 40 * v1[59] + 16);
  v1[61] = v3;
  LODWORD(STACK[0x520]) = STACK[0x90C];
  LODWORD(STACK[0x524]) = STACK[0x908];
  LODWORD(STACK[0x528]) = STACK[0x904];
  return (*(v2 + 8 * (((v3 == 0) * ((((a1 - 2174) | 0x289) ^ 0xFFFFA9D0) + a1 - 13289)) ^ a1)))();
}

uint64_t sub_1000FBF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v64[60] + 40 * v64[59];
  v68 = *(v67 + 24);
  LODWORD(v67) = *(v67 + 32);
  v69 = v65[72];
  v65[32] = v69;
  LODWORD(STACK[0x340]) = v68;
  v70 = v64[61];
  v65[61] = v70;
  LODWORD(STACK[0x2B4]) = 1230703490;
  LODWORD(STACK[0x4AC]) = v67;
  v65[117] = v70;
  LODWORD(STACK[0x4BC]) = v68;
  v65[119] = v69;
  return (*(v66 + 8 * v63))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000FBFA4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_10044E3E0 + ((33 * (dword_100450CA0 ^ 0x20 ^ qword_100450D48)) ^ byte_10040EDA0[byte_100400080[(33 * (dword_100450CA0 ^ 0x20 ^ qword_100450D48))] ^ 0xE4]) + 363);
  v3 = *(v2 - 1913387058);
  v4 = *(&off_10044E3E0 + (byte_10040EEA0[byte_100400180[(33 * (v3 ^ qword_100450D48 ^ 0x20))] ^ 0xD1] ^ (33 * (v3 ^ qword_100450D48 ^ 0x20))) + 259);
  v5 = &v11[*(v4 - 895037751) ^ v3];
  *(v2 - 1913387058) = 2128276769 * v5 + 0x1122E604F1A703E0;
  *(v4 - 895037751) = 2128276769 * (v5 ^ 0xEEDD19FB0E58FC20);
  v6 = *(&off_10044E3E0 + ((33 * (dword_100450CA0 ^ 0x20 ^ qword_100450D48)) ^ byte_10040EDA0[byte_100400080[(33 * (dword_100450CA0 ^ 0x20 ^ qword_100450D48))] ^ 0xE4]) + 93);
  v7 = *(v6 - 1286256582);
  v8 = 1751014823 * (((v12 | 0xB1DBB336C3174365) - (v12 | 0x4E244CC93CE8BC9ALL) + 0x4E244CC93CE8BC9ALL) ^ 0x331FA8E896E41CF2);
  v15 = -1660720320 - v8;
  v12[0] = v7 - v8;
  v12[1] = a2;
  v14 = a1;
  v9 = 33 * ((*(v4 - 895037751) - *(v2 - 1913387058)) ^ 0x20);
  (*(v6 + 8 * ((byte_10040ECA0[byte_1003FFE80[v9] ^ 0xF9] ^ v9) + 18949) - 1286268654))(v12);
  return v13;
}

void sub_1000FC204()
{
  v0 = (qword_100450D48 ^ qword_100450CA8) - &v1;
  qword_100450CA8 = 2128276769 * (v0 + 0x1122E604F1A703E0);
  qword_100450D48 = 2128276769 * (v0 ^ 0xEEDD19FB0E58FC20);
  LOBYTE(v0) = 33 * ((qword_100450D48 + 33 * (v0 - 32)) ^ 0x20);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000FC688@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4 + v2) = 96;
  *(a1 + 4 + v2 + 1) = 124;
  return (*(v1 + 8 * (v3 ^ 0x7DB9F1D7 ^ (11190 * (v3 < 0x69C4CCDF)))))();
}

uint64_t sub_1000FCD0C@<X0>(_DWORD *a1@<X8>)
{
  *a1 = v5 + 161027250;
  v7 = a1 + 1;
  *(v7 + v4) = v6;
  *(v7 + (v2 - 1865164611)) = 26;
  *(v7 + (v5 - 1704137362)) = 8;
  *(v7 + (v5 - 1704137361)) = 53;
  return (*(v1 + 8 * (v3 + 2065081270)))(0);
}

uint64_t sub_1000FCEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v53 = *(v46 - 0x3681C3D425AFE4AELL);
  v54 = 693709591 * (((~(v51 - 152) & 0x60CAA0C8) - (~(v51 - 152) | 0x60CAA0C9)) ^ 0xC9F81AD2);
  v50[118] = v46 - 0x3681C3D425AFE4CELL;
  *(v51 - 152) = v54 + v49 - 3758;
  *(v51 - 144) = v54 + v53 - ((2 * v53 + 1061162046) & (((v49 - 904662) & 0xF66DFD1F) + 1976170369)) + 1437934570;
  v50[117] = v47;
  v50[119] = v48;
  v55 = (*(v52 + 8 * (v49 + 13652)))(v51 - 152);
  return (*(a46 + 8 * v49))(v55);
}

uint64_t sub_1000FCFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v39)
  {
    v44 = v41 == 0;
  }

  else
  {
    v44 = 1;
  }

  v46 = !v44 && v40 != 0;
  return (*(v43 + 8 * ((((2 * (v42 ^ 0xF6605DBE)) ^ 0x3344) * v46) ^ (v42 + 161480848))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1000FD00C()
{
  v3 = *(v2 + 8 * v0);
  *v1 = 1670630;
  return v3(4294967183);
}

uint64_t sub_1000FD0E4@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = *(v3 + 8 * a2);
  *v2 = a1;
  v2[66] = 1295487762;
  return v4((a2 - 15496), -2561467658, 103, 209, 21);
}

uint64_t sub_1000FD1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v50 = *(v47 + 8 * (v48 - 7934)) - 1692812202;
  v51 = (*(v49 - 161) ^ 0x33) + (*(v49 - 161) ^ 0x66) + *(v50 + (*(v49 - 161) ^ 0x6DLL)) - 28;
  v52 = v51 + 67806160 - ((2 * v51) & 0x1C4) + 18;
  v53 = *(v47 + 8 * (v48 ^ 0x1F6D)) - 1933675799;
  v54 = *(v47 + 8 * (v48 - 8011)) - 1378755391;
  v55 = *(v47 + 8 * (v48 ^ 0x1F8D)) - 231322743;
  v56 = *(v55 + (*(v49 - 164) ^ 0x5ELL));
  v57 = ((*(v54 + (*(v49 - 163) ^ 0x38)) ^ (*(v49 - 163) - ((2 * *(v49 - 163)) & 0x99) + 76) ^ 0x5E) << 16) | ((v56 ^ (((8 * (v56 & 7)) ^ 0xDDDDDDDD) + ((16 * (v56 & 7)) ^ 0x4F) - 6) ^ 0x18) << 24) | ((((*(v49 - 162) ^ 0x51) + *(v53 + (*(v49 - 162) ^ 0xCELL)) - 87) ^ 0xD0) << 8);
  v58 = ((((v57 + 319628770) | 0x15) - ((2 * v57) & 0x261A4A00)) & 0xFFFFFF00 | v52) ^ 0x130D25E2;
  v59 = v58 - 2 * (v58 & 0x449EEB5B ^ v52 & 0x18) - 996218045;
  v60 = *(v47 + 8 * (v48 ^ 0x1ECD)) - 1488545207;
  v61 = *(v60 + 4 * (HIBYTE(v59) ^ 0x7C));
  v62 = *(v47 + 8 * (v48 ^ 0x1FD5)) - 1564724079;
  v63 = (((16 * v61) ^ 0x3FD23F90) - ((2 * ((16 * v61) ^ 0x3FD23F90) - 1284446400) & 0xCA0CBC00) + 1052692898) ^ *(v62 + 4 * (BYTE2(v59) ^ 0x95u));
  v64 = *(v47 + 8 * (v48 ^ 0x1EEE)) - 136845570;
  v65 = *(v47 + 8 * (v48 - 8110)) - 361401306;
  v568 = *(v64 + 4 * (BYTE1(v59) ^ 0x83u)) ^ v61 ^ (95 * *(v65 + (v52 ^ 0x40AA3D0u)) + 27) ^ ((BYTE1(v59) ^ 0x8A) - ((2 * (BYTE1(v59) ^ 0x8A)) & 0x6E) + 355996471) ^ (v63 - ((2 * v63) & 0xE88E278A) - 196668475);
  LOBYTE(v52) = *(v55 + (*(v49 - 160) ^ 0xBDLL));
  v66 = *(v60 + 4 * (v52 ^ 0x50u ^ (8 * (v52 & 7))));
  v67 = ((16 * v66) ^ 0x3FD23F90) - 2 * ((((16 * v66) ^ 0x3FD23F90) + 1505260448) & 0x65065E10 ^ ((16 * v66) ^ 0x3FD23F90) & 0x10);
  v68 = *(v49 - 159);
  HIDWORD(v69) = (v68 >> 6) ^ 2;
  LODWORD(v69) = ((v68 ^ 0x2D) << 26) ^ 0x50000000;
  v70 = (*(v53 + (*(v49 - 158) ^ 0x71)) + (*(v49 - 158) ^ 0xEE) - 87) ^ 0x99;
  LODWORD(v68) = *(v62 + 4 * ((*(v54 + (v68 ^ 0xEF)) ^ (v69 >> 26)) ^ 6u)) ^ v66 ^ *(v64 + 4 * ((*(v53 + (*(v49 - 158) ^ 0x71)) + (*(v49 - 158) ^ 0xEE) - 87) ^ 0x90u)) ^ (95 * *(v65 + (((*(v49 - 157) ^ 0xE2) + (*(v49 - 157) ^ 0xB7) + *(v50 + (*(v49 - 157) ^ 0xBCLL)) - 28) ^ 0xB5)) + 27) ^ (v70 - ((2 * v70) & 0x6E) + 355996471);
  LOBYTE(v66) = *(v55 + (*(v49 - 168) ^ 0x78));
  v71 = *(v60 + 4 * ((v66 ^ (8 * (v66 & 7))) ^ 0x77u));
  v531 = v68 ^ (v67 + 1052692898);
  v72 = *(v49 - 167);
  v73 = *(v54 + (v72 ^ 0x1A));
  v74 = ((2 * v73) & 0xF3 ^ 0x52) + (v73 ^ 0xD4);
  v75 = ((v73 ^ (v72 - ((2 * v72) & 0x99) + 76) ^ 6) + v74 - 120) ^ ((v72 ^ 0xE7) + 1);
  LOBYTE(v72) = v74 + (v72 ^ 0x63 ^ (v75 - ((2 * v75) & 0xF7) + 123)) - 121;
  v76 = (*(v53 + (*(v49 - 166) ^ 0xB8)) + (*(v49 - 166) ^ 0x27) - 87) ^ 0x71;
  v532 = *(v62 + 4 * ((v72 - ((2 * v72) & 0xD6) - 21) ^ 0xB9u)) ^ v71 ^ *(v64 + 4 * ((*(v53 + (*(v49 - 166) ^ 0xB8)) + (*(v49 - 166) ^ 0x27) - 87) ^ 0x78u)) ^ (((16 * v71) ^ 0x3FD23F90) - 2 * ((((16 * v71) ^ 0x3FD23F90) + 1505260448) & 0x65065E10 ^ ((16 * v71) ^ 0x3FD23F90) & 0x10) + 1052692898) ^ (95 * *(v65 + (((*(v49 - 165) ^ 0xD4) + (*(v49 - 165) ^ 0x81) + *(v50 + (*(v49 - 165) ^ 0xDFLL)) - 28) ^ 0xC3)) + 27) ^ (v76 + 355996471 - 2 * (v76 & 0x3F ^ ((*(v53 + (*(v49 - 166) ^ 0xB8)) + (*(v49 - 166) ^ 0x27) - 87) ^ 0xA3) & 8));
  v77 = ((2 * (*(v49 - 156) ^ 0xC4)) & 0xFFFFFFBF) + (*(v49 - 156) ^ 0x652FEA1B);
  v78 = *(v55 + v77 - ((2 * v77 + 66) & 0x1DA) - 1697638898);
  v79 = v78 ^ 0x9C ^ (((8 * (v78 & 7)) ^ 0xFFFFFFD8) + ((2 * ((8 * (v78 & 7)) ^ 0xFFFFFFD8)) & 0x50 ^ 0x7F) - 17);
  v80 = *(v60 + 4 * ((v79 - 1340863623 - ((2 * v79) & 0x1C6) + 106) ^ 0xB0140B79));
  v81 = (((16 * v80) ^ 0x3FD23F90) - 2 * ((((16 * v80) ^ 0x3FD23F90) + 1505260448) & 0x65065E10 ^ ((16 * v80) ^ 0x3FD23F90) & 0x10) + 1052692898) ^ *(v62 + 4 * (*(v54 + (*(v49 - 155) ^ 0x26)) ^ (*(v49 - 155) - ((2 * *(v49 - 155)) & 0x99) + 76) ^ 0xD2u));
  v82 = (*(v53 + (*(v49 - 154) ^ 0xD3)) + (*(v49 - 154) ^ 0x4C) - 87) ^ 0xB7;
  LODWORD(v53) = (*(v53 + (*(v49 - 154) ^ 0xD3)) + (*(v49 - 154) ^ 0x4C) - 87) ^ 0x80;
  v83 = v80 ^ *(v64 + 4 * (v82 ^ 0x3Eu)) ^ (v53 - ((2 * v53) & 0x6E) + 355996471) ^ 0x2085A42 ^ (v81 - ((2 * v81) & 0x966602A0) - 885849776);
  v84 = ((95 * *(v65 + (((*(v49 - 153) ^ 0x77) + (*(v49 - 153) ^ 0x22) + *(v50 + (*(v49 - 153) ^ 0x29)) - 28) ^ 0xFBLL)) + 27) ^ 0x777B9CFF) + 2 * (95 * *(v65 + (((*(v49 - 153) ^ 0x77) + (*(v49 - 153) ^ 0x22) + *(v50 + (*(v49 - 153) ^ 0x29)) - 28) ^ 0xFBLL)) + 27);
  v85 = v84 + v83 - 2 * (v83 & (v84 + 142893825)) - 2004589823;
  v86 = v85 - ((2 * v85) & 0xA8D8FC24) + 1416396306;
  v87 = *(v47 + 8 * (v48 - 7853)) - 377709167;
  v88 = *(v87 + 4 * (BYTE1(v86) ^ 3u));
  v89 = *(v47 + 8 * (v48 ^ 0x1EE2)) - 729357806;
  v90 = *(v47 + 8 * (v48 - 8106)) - 879725110;
  v91 = *(v47 + 8 * (v48 - 7859)) - 1747707111;
  v572 = *(v89 + 4 * (BYTE2(v86) ^ 0xAEu)) ^ v532 ^ (*(v91 + (HIBYTE(v86) ^ 0x79)) + 11) ^ 0xE6 ^ (*(v90 + 4 * (v86 ^ 0x18u)) + (v86 ^ 0xC471AA1C) - 130073537) ^ (60898273 * v88 - ((121796546 * v88 + 1599187908) & 0x9DF88B34) + 2124749692);
  v539 = v572 ^ 0x2CA8DD5E ^ v568 ^ 0xED93A4A5;
  v92 = v539 ^ v531 ^ 0x2FEBB209;
  v93 = *(v87 + 4 * (((v92 ^ v86) >> 8) ^ 0x17u));
  v538 = v92 ^ v86;
  v94 = *(v89 + 4 * (((v92 ^ v86) >> 16) ^ 0xF3u)) ^ (*(v91 + (((v92 ^ v86) >> 24) ^ 0xEALL)) + 11) ^ (*(v90 + 4 * ((v92 ^ v86) ^ 0x83u)) + ((v92 ^ v86) ^ 0xC471AA87) - 130073537) ^ 0xC3731DDD ^ (60898273 * v93 - ((121796546 * v93 + 1599187908) & 0x9DF88B34) + 2124749692);
  v573 = v94 ^ v568 ^ 0xED93A4A5;
  v541 = v94 ^ v572 ^ 0x2CA8DD5E;
  v95 = v573 ^ 0xAEBD94F3 ^ v86;
  v96 = ((v573 ^ 0x94F3 ^ v86 ^ 0xAE79) >> 8);
  LODWORD(v55) = (246 - (v96 ^ 0x97)) ^ ((v96 ^ 0xFFFFFF9E) + 1);
  v97 = *(v87 + 4 * (((v96 ^ 0x3FA42E33 ^ (v55 + 1067724339 - ((2 * v55) & 0x7F485CA4) + 31)) + 246) ^ 0x8Bu));
  v540 = ((v573 ^ 0xAEBD94F3 ^ v92) & 0x200000 | 0x5157FAF6) ^ (v573 ^ 0xAEBD94F3 ^ v92) & 0xFFDFFFFF;
  v543 = (60898273 * v97 - ((121796546 * v97 + 1599187908) & 0x9DF88B34) + 2124749692) ^ *(v89 + 4 * (((v95 ^ 0x7FEDAE79) >> 16) ^ 0x99u)) ^ (*(v91 + ((v573 ^ 0xAEBD94F3 ^ ~v86) >> 24)) + 11) ^ 0xE6 ^ v541 ^ (*(v90 + 4 * (v573 ^ 0xF3 ^ v86 ^ 0xA5u)) + (v573 ^ 0xF3 ^ v86 ^ 0xC471AAA1) - 130073537);
  v545 = v543 ^ v573 ^ 0xAEBD94F3 ^ v540;
  v98 = *(v87 + 4 * (((v545 ^ 0x4922 ^ v573 ^ 0x94F3 ^ v86) >> 8) ^ 0xAFu));
  v544 = v545 ^ 0x40F14922 ^ v95;
  LODWORD(v55) = v545 ^ 0x22 ^ v573 ^ 0xF3 ^ v86;
  v99 = (((-121796546 * v98 - 1599187909) | 0x620774CB) + 60898273 * v98 + 2124749693) ^ *(v89 + 4 * (BYTE2(v544) ^ 0xD0u)) ^ (*(v91 + (HIBYTE(v544) ^ 0x21)) + 11) ^ (*(v90 + 4 * (v55 ^ 0x70)) + (v55 ^ 0xC471AA74) - 130073537);
  LODWORD(v54) = v99 ^ v573 ^ 0xAEBD94F3;
  v542 = v54;
  LODWORD(v60) = v54 ^ 0x6F0FBF5F ^ v95;
  v537 = v95;
  v546 = v54 ^ 0x6F0FBF5F;
  v100 = *(v87 + 4 * (BYTE1(v60) ^ 0xD4u));
  LODWORD(v72) = 60898273 * v100 - ((121796546 * v100 + 1599187908) & 0x9DF88B34);
  v101 = v54 ^ 0x5F ^ v573 ^ 0xF3 ^ v86;
  v574 = v60;
  v548 = v99 ^ v543;
  LODWORD(v72) = (v72 + 2124749692) ^ *(v89 + 4 * (BYTE2(v60) ^ 0xDEu)) ^ (*(v91 + (BYTE3(v60) ^ 0x1BLL)) + 11) ^ 0xE6 ^ v99 ^ v543 ^ (*(v90 + 4 * (v101 ^ 0x76u)) + (v101 ^ 0xC471AA72) - 130073537);
  v102 = v72 ^ 0xDC90582C;
  v103 = v72;
  v551 = v72;
  v104 = v72 ^ 0xDC90582C ^ v545 ^ 0x40F14922;
  v550 = v104 ^ 0x663083B5;
  LODWORD(v62) = v104 ^ 0x663083B5 ^ v60 ^ 0x9BFF14C8;
  LODWORD(v72) = *(v87 + 4 * (BYTE1(v62) ^ 0xBCu));
  v552 = v62;
  v105 = (60898273 * v72 - ((121796546 * v72 + 1599187908) & 0x9DF88B34) + 2124749692) ^ *(v89 + 4 * (BYTE2(v62) ^ 0x7Au)) ^ (*(v91 + (BYTE3(v62) ^ 0xD6)) + 11) ^ v103 ^ (*(v90 + 4 * (v104 ^ 0xB5 ^ v60 ^ 0xC8 ^ 0x8Eu)) + (v104 ^ 0xB5 ^ v60 ^ 0xC8 ^ 0xC471AA8A) - 130073537);
  v549 = v102 ^ v54 ^ 0x6F0FBF5F;
  LODWORD(v62) = v105 ^ v549 ^ 0x7CA5B084;
  v554 = v105;
  v547 = v62;
  LODWORD(v55) = v62 ^ 0xDEFC61B9 ^ v60 ^ 0x9BFF14C8;
  v106 = *(v87 + 4 * (BYTE1(v55) ^ 0x47u));
  v107 = (60898273 * v106 - ((121796546 * v106 + 1599187908) & 0x9DF88B34) + 2124749692) ^ *(v89 + 4 * (BYTE2(v55) ^ 0x3Du)) ^ (*(v91 + (BYTE3(v55) ^ 0xACLL)) + 11) ^ (*(v90 + 4 * ((v105 ^ v549 ^ 0x84) ^ 0xB9 ^ v60 ^ 0xC8 ^ 0x4Du)) + ((v105 ^ v549 ^ 0x84) ^ 0xB9 ^ v60 ^ 0xC8 ^ 0xC471AA49) - 130073537);
  v555 = v62 ^ 0xDEFC61B9 ^ v104;
  v557 = v107 ^ v549 ^ 0x7CA5B084 ^ v555;
  v558 = v107 ^ v549 ^ 0x7CA5B084;
  v108 = v557 ^ 0xA8EBAFEC;
  v553 = v55;
  v109 = v557 ^ 0xA8EBAFEC ^ v55 ^ 0x170532C3;
  v110 = *(v89 + 4 * (BYTE2(v109) ^ 0x1Bu));
  v559 = v107 ^ v105;
  v111 = ((v110 ^ 0x4EFC459A) + 140901295 + ((2 * v110) & 0x10CBF75C ^ 0xEF377CEB)) ^ (60898273 * *(v87 + 4 * (BYTE1(v109) ^ 0xFEu)) + 799593954) ^ v107 ^ v105 ^ (*(v90 + 4 * ((v108 ^ v553) ^ 0xE1u)) + ((v108 ^ v553) ^ 0xC471AAE5) - 130073537);
  HIDWORD(v69) = v111 ^ 0x71A8D;
  LODWORD(v69) = v111 ^ 0xDC000000;
  v112 = v69 >> 22;
  HIDWORD(v69) = v112 ^ 0xFFFFFFF1;
  LODWORD(v69) = v112 ^ (((*(v91 + (((v557 ^ 0xA8EBAFEC ^ v55) >> 24) ^ 0x30)) + 11) ^ 0xE6) << 10) ^ 0x4E578000;
  v565 = ((v69 >> 10) - ((2 * (v69 >> 10)) & 0xF7CC371C) + 2078677902) ^ v558;
  v113 = v565 ^ 0x118C28AD;
  v564 = (v69 >> 10) - ((2 * (v69 >> 10)) & 0xF7CC371C) + 2078677902;
  v114 = ((2 * ((v113 ^ v108 ^ 0xA2B690A4) + (v557 ^ 0xA7D9357E))) & 0xEEB76BB4) + (((v113 ^ v108 ^ 0xA2B690A4) + (v557 ^ 0xA7D9357E)) ^ 0xF75BB5DA);
  v578 = v48;
  v563 = -1154329037 - v114 - ((512734814 - 2 * v114) & 0x17D4F608);
  LODWORD(v68) = v565 ^ 0x118C28AD ^ v55 ^ 0x27A24D03;
  v115 = ((2 * v68) & 0x19E ^ 0x10A) + ((((v69 >> 10) - ((2 * (v69 >> 10)) & 0x1C) - 114) ^ v558) ^ 0xAD ^ v55 ^ 0x7B26B769);
  v562 = v565 ^ 0x118C28AD ^ v55;
  v116 = (60898273 * *(v87 + 4 * (BYTE1(v68) ^ 0xC3u)) + 799593954) ^ *(v89 + 4 * (BYTE2(v68) ^ 0x5Bu)) ^ (*(v91 + (HIBYTE(v562) ^ 0x65)) + 11) ^ v564 ^ (*(v90 + 4 * (v115 - 2066134991 + ((((v113 ^ v553) ^ 0xFFFFFFCF) - 2066134991 + v115 + 1) ^ 0xFFFFFFFC))) + ((v113 ^ v553) ^ 0xC471AA34) - 130073537);
  LODWORD(v68) = (v539 ^ v531 ^ 0x1926456A) + (v563 ^ 0xBEA7B04) + (v116 ^ 0xDACFE4BC) + 1;
  v567 = v68 - ((2 * v68) & 0x6B61E0C8) + 900788324;
  LODWORD(v68) = (v95 ^ 0x71ED64A5) + (v54 ^ 0x6BF37FE3) + 260837761 + (v567 ^ 0x35B0F064);
  v117 = ((2 * v68) & 0x374EC9FE) + (v68 ^ 0x1BA764FF);
  v536 = v117 - 2 * ((v117 + 1119742924) & 0x7FA71E9D ^ (v68 ^ 0x1BA764FF) & 1) - 1033565592;
  HIDWORD(v69) = v536 ^ 0x11E9C;
  LODWORD(v69) = v536 ^ 0x7FA60000;
  LODWORD(v68) = v69 >> 17;
  HIDWORD(v69) = v68 ^ 0x55FE;
  LODWORD(v69) = v68 ^ 0xDD2B0000;
  v534 = v69 >> 15;
  v566 = v116;
  v577 = v116 ^ 0x45D8AAE1 ^ v557 ^ 0xA8EBAFEC;
  LODWORD(v60) = v577 ^ v562 ^ 0x61ACB34A;
  v118 = 60898273 * *(v87 + 4 * (BYTE1(v60) ^ 0x8Cu));
  v561 = v116 ^ 0x45D8AAE1 ^ v565 ^ 0x118C28AD;
  v535 = v117 - ((2 * v117 + 846093102) & 0x53F20E6C) + 53490893;
  v119 = (v531 ^ 0x1A5B8F6C) + (v568 ^ 0x366AAC9F) + (v572 ^ 0x18677A4B) - 252851225 + (v535 ^ 0x29F90736);
  v120 = ((2 * v119) & 0x7DFDF6EA) + (v119 ^ 0x3EFEFB75);
  LODWORD(v72) = (v574 ^ 0x5A900F8) + 978347689 + v120 - ((2 * ((v574 ^ 0x5A900F8) + 978347689 + v120) + 256771356) & 0xB06BC556) + 1608312121;
  v576 = (*(v91 + (BYTE3(v60) ^ 0xC6)) + 11) ^ *(v89 + 4 * (BYTE2(v60) ^ 0xDAu)) ^ v116 ^ (*(v90 + 4 * ((v577 ^ v562 ^ 0x4A) ^ 0x7Au)) + ((v577 ^ v562 ^ 0x4A) ^ 0xC471AA7E) - 130073537) ^ (v118 - 2 * ((v118 + 799593954) & 0x4EFC459B ^ v118 & 1) + 2124749692);
  LODWORD(v72) = (v532 ^ 0xC3422E99) + (v86 ^ 0x54CCA458) + (v573 ^ 0x11224088) + (v62 ^ 0x3962D4E9) + (v576 ^ 0x4ADBE4C4 ^ v72) + 2 * ((v72 ^ 0x5835E2AB) & (v576 ^ 0x12EE066F)) + 223982480;
  v533 = v72 - ((2 * v72) & 0x9132B7C4) - 929473566;
  v560 = (v561 ^ 0x85A28855) + 1719239942 + (v533 ^ 0xC8995BE2) - ((2 * ((v561 ^ 0x85A28855) + 1719239942 + (v533 ^ 0xC8995BE2))) & 0xFBE1309C) + 2112919630;
  v121 = v120 - 1056897909;
  if ((v120 - 1056897909) >= 0xB5659841)
  {
    v122 = 1249533851;
  }

  else
  {
    v122 = -2099236;
  }

  v123 = v120 + v122;
  if (v121 >= 0xB5659841)
  {
    v124 = -1251633087;
  }

  else
  {
    v124 = 0;
  }

  v529 = v123 + v124 - 1054798673;
  v530 = v121;
  v556 = 1000388101 - v114 - ((235915104 - 2 * v114) & 0x6931A4AA);
  v125 = *(v47 + 8 * (v48 - 7815)) - 1006818011;
  v126 = (*(v49 - 178) - ((2 * *(v49 - 178)) & 0x108) + 1019371652) ^ *(v125 + 4 * (*(v49 - 178) ^ 0xFELL));
  v127 = *(v47 + 8 * (v48 ^ 0x1FF8)) - 990510146;
  v128 = ((*(v49 - 174) ^ 0x16) - ((2 * (*(v49 - 174) ^ 0x16)) & 0x108) + 1019371652) ^ *(v125 + 4 * (*(v49 - 174) ^ 0xC3));
  v129 = (v128 - ((2 * v128) & 0x7B6876FC) + 1035221886) ^ *(v127 + 4 * (*(v49 - 175) ^ 0xE0));
  v130 = *(v47 + 8 * (v48 ^ 0x1FDF)) - 194726139;
  v131 = ((*(v49 - 169) ^ 0x58) - ((2 * (*(v49 - 169) ^ 0x58) - 1590361954) & 0x811002BE) - 1100748882) ^ *(v130 + 4 * (*(v49 - 169) ^ 0xD0));
  v132 = *(v127 + 4 * (*(v49 - 179) ^ 0x95)) ^ (v126 - ((2 * v126) & 0x7B6876FC) + 1035221886);
  v133 = *(v127 + 4 * (*(v49 - 171) ^ 0x13));
  v134 = ((*(v49 - 182) ^ 0x5B) - ((2 * *(v49 - 182)) & 0x108) + 1019371652) ^ *(v125 + 4 * (*(v49 - 182) ^ 0x8ELL));
  v135 = (v134 - ((2 * v134) & 0x7B6876FC) + 1035221886) ^ *(v127 + 4 * (*(v49 - 183) ^ 0x93));
  v136 = *(v47 + 8 * (v48 ^ 0x1ED4)) - 1581031942;
  v137 = *(v49 - 170);
  v138 = *(v125 + 4 * (v137 ^ 0xC));
  LODWORD(v125) = v129 - ((2 * v129) & 0xBC57DDB6);
  v139 = (v131 - ((2 * v131) & 0x7B6876FC) + 1035221886) ^ v133 ^ v138 ^ (v137 - ((2 * v137) & 0x108) + 1019371652);
  LODWORD(v137) = v132 - ((2 * v132) & 0xBC57DDB6);
  v140 = *(v49 - 177);
  v141 = *(v49 - 173);
  v142 = *(v136 + 4 * (*(v49 - 176) ^ 0xF6));
  v143 = *(v136 + 4 * (*(v49 - 180) ^ 0x4BLL));
  v144 = *(v136 + 4 * (*(v49 - 172) ^ 0x74));
  v145 = *(v136 + 4 * (*(v49 - 184) ^ 0xDFLL));
  LODWORD(v136) = v125 + 1579937499;
  LODWORD(v125) = v137 + 1579937499;
  v146 = v135 - ((2 * v135) & 0xBC57DDB6) + 1579937499;
  v147 = *(v49 - 181);
  v148 = v145 ^ ((v147 ^ 0x36) + 1352302671) ^ v146;
  v149 = *(v130 + 4 * (v140 ^ 0xB8));
  LODWORD(v137) = *(v130 + 4 * (v141 ^ 0x16));
  LODWORD(v130) = *(v130 + 4 * (v147 ^ 0xBE)) ^ (v148 - ((2 * v148) & 0xDB92CEBE) + 1841915743) ^ v532;
  LODWORD(v125) = v125 ^ v143 ^ v149 ^ ((v140 ^ 0x30) - ((2 * (v140 ^ 0x30) - 1590361954) & 0x811002BE) - 1100748882) ^ v568;
  v150 = (v139 - ((2 * v139) & 0xBC57DDB6) + 1579937499) ^ v144 ^ v86;
  v151 = v136 ^ v142 ^ v137 ^ ((v141 ^ 0x9E) - ((2 * (v141 ^ 0x9E) - 1590361954) & 0x811002BE) - 1100748882) ^ v531;
  v152 = *(v47 + 8 * (v48 ^ 0x1FFA)) - 731348246;
  LODWORD(v140) = *(v152 + 4 * (BYTE3(v130) ^ 0xF2));
  v153 = v140 - ((2 * v140 + 1394614860) & 0x6E371AC0) - 1599365498;
  v154 = *(v47 + 8 * (v48 ^ 0x1FCE)) - 1472237346;
  v155 = *(v154 + 4 * (BYTE2(v125) ^ 0x77u));
  HIDWORD(v157) = v155 ^ 0x10D;
  LODWORD(v157) = v155 ^ 0x59A04C00;
  v156 = v157 >> 10;
  v158 = *(v47 + 8 * (v48 ^ 0x1F45)) - 1045405055;
  LODWORD(v140) = *(v158 + 4 * (((v136 ^ v142 ^ v137 ^ ((v141 ^ 0x9E) - ((2 * (v141 ^ 0x9E) + 158) & 0x2BE) - 6226) ^ v531) >> 8) ^ 0x2Bu));
  HIDWORD(v157) = v140 ^ 0x1A932A9;
  LODWORD(v157) = v140 ^ 0x99999999;
  v159 = *(v47 + 8 * (v48 ^ 0x1FCF)) - 268914571;
  v160 = (v157 >> 26) - ((2 * (v157 >> 26)) & 0x68ABEDFA) + 878049021;
  v161 = v156 ^ (4 * v160) ^ (((4 * v153) ^ 0xDC6E3580) - 2 * (((4 * v153) ^ 0xDC6E3580) & 0x2D152A7C ^ (4 * v153) & 4) - 1391121798) & 0xFFFFFFFC ^ 0xE320A834;
  v162 = (v161 - ((2 * v161) & 0x6E371AC0) + 924552544) ^ v153;
  v569 = v162 - ((2 * v162) & 0x68ABEDFA) + 878049021;
  v163 = *(v152 + 4 * (BYTE3(v125) ^ 0x37));
  v164 = v163 - ((2 * v163 - 752868788) & 0xDEDD5BE2) + 1493090071;
  v165 = *(v154 + 4 * (BYTE2(v151) ^ 0x88u));
  HIDWORD(v157) = v165 ^ 0x10D;
  LODWORD(v157) = v165 ^ 0x59A04C00;
  v166 = v157 >> 10;
  LODWORD(v147) = *(v158 + 4 * (BYTE1(v150) ^ 0xB9u));
  HIDWORD(v157) = v147 ^ 0x1A932A9;
  LODWORD(v157) = v147 ^ 0x99999999;
  LODWORD(v147) = (v157 >> 26) - ((2 * (v157 >> 26)) & 0xECC7F974) - 161219398;
  v167 = v166 ^ *(v159 + 4 * (v130 ^ 0xBDu)) ^ (4 * v164) ^ ((v130 ^ 0xA6) - 2 * ((v130 ^ 0xA6) & 0xBBBBBBBB ^ v130 & 0x19) + 403098530) ^ v147 ^ (((4 * v147) ^ 0xD98FF2E8) - ((2 * ((4 * v147) ^ 0xD98FF2E8)) & 0xECC7F970) - 161219398);
  LODWORD(v147) = (v167 ^ 0xBDBAB7C4) - 2 * ((v167 ^ 0xBDBAB7C4) & 0x6F6EADFB ^ v167 & 0xA) - 277959183;
  LODWORD(v137) = *(v152 + 4 * (HIBYTE(v151) ^ 0x9C));
  LODWORD(v137) = v137 - ((2 * v137 - 752868788) & 0x98F93FB4) - 1240682240;
  v168 = *(v154 + 4 * (BYTE2(v150) ^ 0x81u));
  HIDWORD(v157) = v168 ^ 0x10D;
  LODWORD(v157) = v168 ^ 0x59A04C00;
  v169 = v157 >> 10;
  LODWORD(v141) = *(v158 + 4 * (BYTE1(v130) ^ 0xC6u));
  HIDWORD(v157) = v141 ^ 0x1A932A9;
  LODWORD(v157) = v141 ^ 0x99999999;
  v170 = ((2 * v125) & 0x1C ^ 0xFFFFFFEB) + (v125 ^ 0xEA);
  v171 = (v170 - ((2 * v170 + 4126) & 0x1744) + 76739505) ^ *(v159 + 4 * (v125 ^ 0xF1u)) ^ v169;
  v172 = (v157 >> 26) - ((2 * (v157 >> 26)) & 0xE1A5F47C) - 254608834;
  v173 = ((v171 ^ (4 * (v172 ^ v137)) ^ 0xF2B99790) - ((2 * (v171 ^ (4 * (v172 ^ v137)) ^ 0xF2B99790)) & 0x98F93FB4) + 1283235802) ^ v137;
  v174 = v172 ^ v539 ^ v531 ^ (v173 - ((2 * v173) & 0xE1A5F47C) - 254608834);
  v175 = *(v152 + 4 * (HIBYTE(v150) ^ 0x77));
  v176 = v175 + 1417730710 + ((752868786 - 2 * v175) | 0x2A1E6D21);
  v177 = (((4 * v176) ^ 0xABC325BC) - ((2 * ((4 * v176) ^ 0xABC325BC)) & 0xD5E192D8) - 353318545) ^ v176;
  LODWORD(v130) = *(v154 + 4 * (BYTE2(v130) ^ 0xE9u));
  HIDWORD(v157) = v130 ^ 0x10D;
  LODWORD(v157) = v130 ^ 0x59A04C00;
  LODWORD(v130) = (v157 >> 10) - ((2 * (v157 >> 10)) & 0x89654DE0) - 994924816;
  v178 = (v177 ^ 0x1F6259B8) & (v130 ^ 0x44B2A6F0);
  LODWORD(v125) = *(v158 + 4 * (BYTE1(v125) ^ 0x68u));
  LODWORD(v130) = (v177 ^ 0x9F6259B8) + (v130 ^ 0xC4B2A6F0);
  HIDWORD(v157) = v125 ^ 0x1A932A9;
  LODWORD(v157) = v125 ^ 0x99999999;
  v179 = v130 - 2 * v178;
  v180 = (v157 >> 26) - ((2 * (v157 >> 26)) & 0x5DA80A14) - 1361836790;
  LODWORD(v125) = *(v159 + 4 * (v150 ^ 2u)) ^ ((v150 ^ 0x19) - ((2 * v150) & 0x144) + 403098530) ^ v160 ^ v569 ^ v529;
  LODWORD(v125) = v572 ^ v530 ^ 0x9259FF3C ^ (v125 - ((2 * v125) & 0xEB82F510) + 1975614088);
  v181 = v125 - ((2 * v125) & 0x2ACF7F34) - 1788362854;
  v182 = v164 ^ v539 ^ v147;
  v183 = ((v151 ^ 0xD1) - ((2 * (v151 ^ 0xD1)) & 0x144) + 403098530) ^ *(v159 + 4 * (v151 ^ 0xCAu)) ^ v180 ^ v538 ^ ((v179 ^ (4 * v180) ^ 0xBB501428) - 2 * ((v179 ^ (4 * v180) ^ 0xBB501428) & 0x2ED4050B ^ v130 & 1) - 1361836790);
  if ((v181 & 0x10000000) != 0)
  {
    v184 = -16;
  }

  else
  {
    v184 = 16;
  }

  v185 = *(v152 + 4 * ((v184 + (HIBYTE(v181) ^ 0x8E)) ^ 0x6F));
  v186 = v185 - ((2 * v185 - 752868788) & 0xF2D59DAC) + 1660608508;
  v187 = *(v154 + 4 * (BYTE2(v182) ^ 0x87u));
  HIDWORD(v189) = v187 ^ 0x10D;
  LODWORD(v189) = v187 ^ 0x59A04C00;
  v188 = v189 >> 10;
  v190 = *(v158 + 4 * (BYTE1(v174) ^ 0x5Fu));
  HIDWORD(v189) = v190 ^ 0x1A932A9;
  LODWORD(v189) = v190 ^ 0x99999999;
  v191 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xCAF9C07E) + 1702682687;
  v192 = *(v159 + 4 * (v183 ^ 0xB7u)) ^ v188 ^ (4 * (v191 ^ v186)) ^ v534 ^ ((v183 ^ 0xAC) - ((2 * (v183 ^ 0xAC)) & 0x144) + 403098530);
  v193 = ((v192 ^ 0x7058BBA4) - 2 * ((v192 ^ 0x7058BBA4) & 0x796ACEDF ^ v192 & 9) - 110440746) ^ v186;
  v194 = *(v152 + 4 * (HIBYTE(v182) ^ 0x39));
  v195 = (v193 - ((2 * v193) & 0xCAF9C07E) + 1702682687) ^ v191;
  v196 = v194 - ((2 * v194 + 320873036) & 0x39292FD4) + 103065872;
  v197 = *(v154 + 4 * (BYTE2(v174) ^ 0xE2u));
  HIDWORD(v189) = v197 ^ 0x10D;
  LODWORD(v189) = v197 ^ 0x59A04C00;
  v198 = v189 >> 10;
  v199 = *(v158 + 4 * (BYTE1(v183) ^ 0xE2u));
  HIDWORD(v189) = v199 ^ 0x1A932A9;
  LODWORD(v189) = v199 ^ 0x99999999;
  v200 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xD4DC5E7A) - 361877699;
  v201 = v573 ^ v198 ^ *(v159 + 4 * (v181 ^ 0xEFu)) ^ (4 * v196) ^ v200 ^ (((4 * v200) ^ 0xA9B8BCF4) - ((2 * ((4 * v200) ^ 0xA9B8BCF4)) & 0xD4DC5E78) - 361877699) ^ v533 ^ ((v181 ^ 0xF4) - ((2 * (v181 ^ 0xF4)) & 0x144) + 403098530) ^ 0x5416BB3D;
  v202 = v201 - ((2 * v201) & 0x39292FD4) - 1667983382;
  v203 = *(v152 + 4 * (HIBYTE(v174) ^ 0x4C));
  v204 = *(v154 + 4 * (((v183 ^ 0xCB79AFAC) >> (v183 & 0x10) >> (v183 & 0x10 ^ 0x10)) ^ 0xEAu));
  HIDWORD(v189) = v204 ^ 0x10D;
  LODWORD(v189) = v204 ^ 0x59A04C00;
  v205 = v189 >> 10;
  v206 = *(v158 + 4 * (BYTE1(v181) ^ 0xC8u));
  v207 = v203 - ((2 * v203 - 752868788) & 0xF17B7F20) - 498216778;
  HIDWORD(v189) = v206 ^ 0x1A932A9;
  LODWORD(v189) = v206 ^ 0x99999999;
  v208 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0x869AB7A2) - 1018340399;
  v209 = ((4 * v208) ^ 0xD356F44) - ((2 * ((4 * v208) ^ 0xD356F44)) & 0x26B415F8) - 1822815491;
  v210 = v209 & 0xFCF7D8D8;
  v211 = (v209 & 0x3082724 ^ 0x3080224) - ((2 * (v209 & 0x3082724 ^ 0x3080224)) & 0x6100600) - 1018340399;
  v212 = v182 ^ 0x85;
  v213 = *(v152 + 4 * (HIBYTE(v183) ^ 0xB4));
  v214 = (v182 ^ 0x9E) - ((2 * (v182 ^ 0x9E)) & 0x144);
  v215 = v213 - ((2 * v213 - 752868788) & 0x90B7E662) + 837551191;
  v216 = *(v154 + 4 * (BYTE2(v181) ^ 0xD9u));
  HIDWORD(v189) = v216 ^ 0x10D;
  LODWORD(v189) = v216 ^ 0x59A04C00;
  v217 = v189 >> 10;
  v218 = *(v158 + 4 * (BYTE1(v182) ^ 0x26u));
  HIDWORD(v189) = v218 ^ 0x1A932A9;
  LODWORD(v189) = v218 ^ 0x99999999;
  v219 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xCF124EB8) - 410441892;
  v220 = ((v217 ^ (4 * (v219 ^ v215)) ^ 0xBF4B51B4) - ((2 * (v217 ^ (4 * (v219 ^ v215)) ^ 0xBF4B51B4)) & 0x90B7E662) - 933498063) ^ v215;
  v221 = *(v159 + 4 * (v174 ^ 0x1Au)) ^ ((v174 ^ 1) - ((2 * v174) & 0x144) + 403098530) ^ v537 ^ v219 ^ (v220 - ((2 * v220) & 0xCF124EB8) - 410441892);
  v222 = v536 ^ v541 ^ (v195 - ((2 * v195) & 0xFF4E3D38) + 2141658780);
  v223 = v540 ^ v205 ^ *(v159 + 4 * v212) ^ v535 ^ (4 * v207) ^ (v214 + 403098530) ^ v208 ^ v210 ^ 0x368DAE7E ^ v211;
  v224 = v207 ^ v535 ^ (v223 - ((2 * v223) & 0xF17B7F20) + 2025701264);
  v225 = v533 ^ v196 ^ v202;
  v226 = *(v152 + 4 * (HIBYTE(v222) ^ 0xBA));
  v227 = v226 - ((2 * v226 + 320873036) & 0x344B5062) - 2085242537;
  v228 = v227 ^ 0x1A25A831;
  v227 *= 4;
  v229 = (v227 ^ 0xF7F4F97C) + v228;
  v230 = (v227 ^ 0x77F4F97C) & v228;
  v231 = *(v154 + 4 * (BYTE2(v225) ^ 0xE3u));
  HIDWORD(v189) = v231 ^ 0x10D;
  LODWORD(v189) = v231 ^ 0x59A04C00;
  v232 = v189 >> 10;
  v233 = v229 - 2 * v230;
  v234 = *(v158 + 4 * (BYTE1(v224) ^ 0xD6u));
  HIDWORD(v189) = v234 ^ 0x1A932A9;
  LODWORD(v189) = v234 ^ 0x99999999;
  v235 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0x1778AB2) - 2135177895;
  v236 = v221 ^ 0x29;
  v237 = (v221 ^ 0x32) - 2 * ((v221 ^ 0x32) & 0xAAAAAAAA ^ v221 & 8);
  v238 = *(v154 + 4 * (BYTE2(v224) ^ 0x39u));
  HIDWORD(v189) = v238 ^ 0x10D;
  LODWORD(v189) = v238 ^ 0x59A04C00;
  v239 = v189 >> 10;
  v240 = *(v152 + 4 * (HIBYTE(v225) ^ 0xE2));
  v241 = *(v158 + 4 * (BYTE1(v221) ^ 0x1Eu));
  v242 = v240 - ((2 * v240 + 320873036) & 0x183D5D1A) - 173097037;
  HIDWORD(v189) = v241 ^ 0x1A932A9;
  LODWORD(v189) = v241 ^ 0x99999999;
  v243 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xC069D19A) + 1614080205;
  v244 = v239 ^ (4 * v242) ^ v243 ^ (((4 * v243) ^ 0x80D3A334) - ((2 * ((4 * v243) ^ 0x80D3A334)) & 0xC069D198) + 1614080205) ^ 0x307ABA34;
  v245 = v222 ^ 0x9D;
  v246 = (v222 ^ 0x9C) - ((2 * (v222 ^ 0x9C)) & 0x144);
  v247 = *(v152 + 4 * (HIBYTE(v224) ^ 0xEC));
  v248 = v247 - ((2 * v247 + 320873036) & 0x2D4E79EA) - 2143859173;
  v249 = *(v154 + 4 * (BYTE2(v221) ^ 0x76u));
  HIDWORD(v189) = v249 ^ 0x10D;
  LODWORD(v189) = v249 ^ 0x59A04C00;
  v250 = v189 >> 10;
  v251 = *(v158 + 4 * (BYTE1(v222) ^ 0xB9u));
  HIDWORD(v189) = v251 ^ 0x1A932A9;
  LODWORD(v189) = v251 ^ 0x99999999;
  v252 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xA76530FE) - 743270273;
  v253 = *(v159 + 4 * (v225 ^ 0x5Du)) ^ v250 ^ (4 * v248) ^ v252 ^ ((v225 ^ 0x46) - ((2 * (v225 ^ 0x46)) & 0x144) + 403098530) ^ (((4 * v252) ^ 0x4ECA61FC) - ((2 * ((4 * v252) ^ 0x4ECA61FC)) & 0xA76530F8) - 743270273);
  v254 = (v253 ^ 0x5A9CF3D4) - 2 * ((v253 ^ 0x5A9CF3D4) & 0x16A73CFD ^ v253 & 8) + 380058869;
  v255 = *(v152 + 4 * (HIBYTE(v221) ^ 0x3E));
  v256 = v255 - 2 * ((v255 + 1771049254) & 0x6A1D005B ^ v255 & 1) - 743632512;
  v257 = *(v158 + 4 * (BYTE1(v225) ^ 0x10u));
  HIDWORD(v189) = v257 ^ 0x1A932A9;
  LODWORD(v189) = v257 ^ 0x99999999;
  v258 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0x79E80CE8) + 1022625396;
  HIDWORD(v189) = *(v154 + 4 * (BYTE2(v222) ^ 0x1Du));
  LODWORD(v189) = HIDWORD(v189);
  v259 = (v189 >> 10) ^ (4 * v256) ^ v258 ^ (((4 * v258) ^ 0xF3D019D0) - ((2 * ((4 * v258) ^ 0xF3D019D0)) & 0x79E80CE8) + 1022625396) ^ 0xEB22697B;
  v260 = *(v159 + 4 * (v224 ^ 0xB0u)) ^ v224 ^ 0xAB ^ (v259 - ((2 * v259) & 0x300D9744) + 403098530);
  v261 = v260 - ((2 * v260) & 0xD43A00B4) + 1780285530;
  v262 = v232 ^ v543 ^ *(v159 + 4 * v236) ^ v235 ^ (4 * v235) ^ (v237 + 403098530) ^ v233;
  v263 = *(v159 + 4 * v245) ^ v543 ^ v573 ^ 0xAEBD94F3 ^ v242 ^ (v246 + 403098530) ^ (v244 - ((2 * v244) & 0x183D5D1A) - 1944146291);
  v264 = v248 ^ v545 ^ v254;
  v265 = v256 ^ v544 ^ v261;
  v266 = *(v152 + 4 * (HIBYTE(v262) ^ 0xAD));
  v267 = *(v154 + 4 * (BYTE2(v263) ^ 0x45u));
  HIDWORD(v189) = v267 ^ 0x10D;
  LODWORD(v189) = v267 ^ 0x59A04C00;
  v268 = v189 >> 10;
  v269 = *(v158 + 4 * ((BYTE1(v264) ^ 0xC8) + ((v264 >> 7) & 0x9A ^ 0xFFFFFF6F) + 78));
  v270 = v266 - 2 * ((v266 + 697307430) & 0x241372BD ^ v266 & 1) + 228819938;
  HIDWORD(v189) = v269 ^ 0x1A932A9;
  LODWORD(v189) = v269 ^ 0x99999999;
  v271 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xAE01C4AC) + 1459675734;
  v272 = *(v159 + 4 * (v265 ^ 0xFCu)) ^ v268 ^ (4 * (v271 ^ v270)) ^ ((v265 ^ 0xE7) - 2 * ((v265 ^ 0xE7) & 0xBA ^ v265 & 0x18) + 403098530);
  v273 = ((v272 ^ 0xCC4E43A8) - 2 * ((v272 ^ 0xCC4E43A8) & 0x241372BD ^ v272 & 1) - 1542229316) ^ v270;
  v274 = *(v152 + 4 * (HIBYTE(v263) ^ 0x36));
  v275 = v274 - 2 * ((v274 + 1771049254) & 0x59ADB3DF ^ v274 & 1) - 1019362044;
  v276 = *(v154 + 4 * (BYTE2(v264) ^ 0x95u));
  HIDWORD(v189) = v276 ^ 0x10D;
  LODWORD(v189) = v276 ^ 0x59A04C00;
  v277 = v189 >> 10;
  v278 = *(v158 + 4 * (BYTE1(v265) ^ 3u));
  HIDWORD(v189) = v278 ^ 0x1A932A9;
  LODWORD(v189) = v278 ^ 0x99999999;
  v279 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xE73E5AE6) + 1939811699;
  v280 = v277 ^ (4 * v275) ^ v279 ^ (((4 * v279) ^ 0xCE7CB5CC) - ((2 * ((4 * v279) ^ 0xCE7CB5CC)) & 0xE73E5AE0) + 1939811699);
  v281 = v262 ^ *(v159 + 4 * (v262 ^ 0x99u)) ^ ((v280 ^ 0x66B6CF78) - 2 * ((v280 ^ 0x66B6CF78) & 0x1806CBA3 ^ v280 & 1) + 403098530);
  v282 = v275 ^ v542 ^ ((v281 ^ 0x82) + 1504555999 + ~(2 * ((v281 ^ 0x82) & 0x59ADB3DF ^ v281 & 1)));
  v283 = *(v152 + 4 * (HIBYTE(v264) ^ 0x72));
  v284 = *(v154 + 4 * (BYTE2(v265) ^ 0xD2u));
  HIDWORD(v189) = v284 ^ 0x10D;
  LODWORD(v189) = v284 ^ 0x59A04C00;
  v285 = v189 >> 10;
  v286 = v283 - ((2 * v283 + 1394614860) & 0x6DE04928) + 545273274;
  v287 = *(v158 + 4 * (BYTE1(v262) ^ 0xE2u));
  HIDWORD(v189) = v287 ^ 0x1A932A9;
  LODWORD(v189) = v287 ^ 0x99999999;
  v288 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xA46BA90E) + 1379259527;
  v289 = *(v159 + 4 * (v263 ^ 0xBBu)) ^ v285 ^ (4 * v286) ^ v288 ^ (((4 * v288) ^ 0x48D7521C) - ((2 * ((4 * v288) ^ 0x48D7521C)) & 0xA46BA908) + 1379259527) ^ ((v263 ^ 0xD6) - ((2 * (v263 ^ 0xD6)) & 0x144) + 403098530);
  v290 = *(v152 + 4 * (HIBYTE(v265) ^ 0xE0));
  v291 = v290 - ((2 * v290 - 752868788) & 0xA672664A) - 1127660469;
  v292 = *(v158 + 4 * (BYTE1(v263) ^ 0xDAu));
  HIDWORD(v189) = v292 ^ 0x1A932A9;
  LODWORD(v189) = v292 ^ 0x99999999;
  v293 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0x88A8CCBC) - 1001101730;
  v294 = *(v159 + 4 * ((v248 ^ v545 ^ v254) ^ 0x71u)) ^ __ROR4__(*(v154 + 4 * (((v262 >> 15) & 0x17E ^ 6) + (BYTE2(v262) ^ 0x7C1FBFFC) - 2082455487 + (((BYTE2(v262) ^ 0xFFFFFF56) - 2082455487 + ((v262 >> 15) & 0x17E ^ 6) + (BYTE2(v262) ^ 0x7C1FBFFC) + 1) ^ 0xFFFFFFFC))), 10) ^ (4 * v291) ^ v293 ^ (((4 * v293) ^ 0x11519978) - ((2 * ((4 * v293) ^ 0x11519978)) & 0x88A8CCB8) - 1001101730) ^ (((v248 ^ v545 ^ v254) ^ 0x6A) - 2 * (((v248 ^ v545 ^ v254) ^ 0x6A) & 0xB6 ^ v264 & 0x14) + 403098530) ^ 0xFB2A487;
  v295 = v294 - ((2 * v294) & 0xA672664A) + 1396257573;
  v296 = v546 ^ v545 ^ 0x40F14922 ^ v286 ^ ((v289 ^ 0xDBC09250) - 2 * ((v289 ^ 0xDBC09250) & 0x36F0249C ^ v289 & 8) - 1225775980);
  v297 = v271 ^ v548 ^ (v273 - ((2 * v273) & 0xAE01C4AC) + 1459675734);
  v298 = v291 ^ v574 ^ v295;
  v299 = *(v152 + 4 * (HIBYTE(v297) ^ 0xBD));
  v300 = v299 - ((2 * v299 - 752868788) & 0xB0FF90B4) + 1108334976;
  v301 = *(v154 + 4 * (BYTE2(v282) ^ 0x65u));
  HIDWORD(v189) = v301 ^ 0x10D;
  LODWORD(v189) = v301 ^ 0x59A04C00;
  v302 = v189 >> 10;
  v303 = *(v158 + 4 * (BYTE1(v296) ^ 0xAAu));
  HIDWORD(v189) = v303 ^ 0x1A932A9;
  LODWORD(v189) = v303 ^ 0x99999999;
  v304 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xA39686B8) - 775208100;
  v305 = *(v152 + 4 * (HIBYTE(v282) ^ 0x67));
  v306 = v305 - ((2 * v305 - 752868788) & 0xD83A084C) + 1437406540;
  v307 = *(v159 + 4 * (v298 ^ 0xFAu)) ^ v302 ^ (4 * v300) ^ v304 ^ (((4 * v304) ^ 0x472D0D70) - ((2 * ((4 * v304) ^ 0x472D0D70)) & 0xA39686B8) - 775208100) ^ ((v298 ^ 0xE1) - ((2 * (v298 ^ 0xE1)) & 0x144) + 403098530);
  v308 = *(v154 + 4 * (BYTE2(v296) ^ 0xCEu));
  HIDWORD(v189) = v308 ^ 0x10D;
  LODWORD(v189) = v308 ^ 0x59A04C00;
  v309 = v189 >> 10;
  v310 = *(v158 + 4 * (BYTE1(v298) ^ 0x78u));
  HIDWORD(v189) = v310 ^ 0x1A932A9;
  LODWORD(v189) = v310 ^ 0x99999999;
  v311 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xF12ED0E) - 2021034361;
  v312 = *(v159 + 4 * (v297 ^ 0x2Du)) ^ v309 ^ (4 * v306) ^ v311 ^ (((4 * v311) ^ 0x1E25DA1C) - ((2 * ((4 * v311) ^ 0x1E25DA1C)) & 0xF12ED08) - 2021034361) ^ ((v297 ^ 0x36) - ((2 * (v297 ^ 0x36)) & 0x144) + 403098530) ^ 0xB0741098;
  v313 = v312 - ((2 * v312) & 0xD83A084C) - 333642714;
  v314 = HIBYTE(v298) ^ 0xDA;
  v315 = *(v154 + 4 * (BYTE2(v298) ^ 0xDCu));
  HIDWORD(v189) = v315 ^ 0x10D;
  LODWORD(v189) = v315 ^ 0x59A04C00;
  v316 = v189 >> 10;
  v317 = *(v152 + 4 * (HIBYTE(v296) ^ 0xD6));
  v318 = *(v158 + 4 * (BYTE1(v297) ^ 3u));
  v319 = v317 - ((2 * v317 - 752868788) & 0xB543E20C) + 1144128044;
  HIDWORD(v189) = v318 ^ 0x1A932A9;
  LODWORD(v189) = v318 ^ 0x99999999;
  v320 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0x9BA6CB56) - 841783893;
  v321 = *(v152 + 4 * v314) - ((2 * *(v152 + 4 * v314) - 752868788) & 0xF22866C0) - 492551034;
  v322 = v316 ^ *(v159 + 4 * (v282 ^ 0xAu)) ^ (4 * v319) ^ ((v282 ^ 0x11) - ((2 * v282) & 0x144) + 403098530) ^ v320 ^ 0x6A87C418 ^ (((4 * v320) ^ 0x374D96AC) - ((2 * ((4 * v320) ^ 0x374D96AC)) & 0x9BA6CB50) - 841783893);
  v323 = *(v154 + 4 * (BYTE2(v297) ^ 0xE0u));
  HIDWORD(v189) = v323 ^ 0x10D;
  LODWORD(v189) = v323 ^ 0x59A04C00;
  v324 = v189 >> 10;
  v325 = *(v158 + 4 * (BYTE1(v282) ^ 8u));
  HIDWORD(v189) = v325 ^ 0x1A932A9;
  LODWORD(v189) = v325 ^ 0x99999999;
  v326 = (v322 - ((2 * v322) & 0xB543E20C) - 626921210) ^ v319;
  v327 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xC91DC23A) + 1687085341;
  v328 = (v326 - ((2 * v326) & 0x2283DE92) - 1857949879) ^ v550;
  v329 = v306 ^ v549 ^ v313;
  v330 = *(v159 + 4 * (v296 ^ 0xF6u)) ^ v324 ^ (4 * v321) ^ v327 ^ ((v296 ^ 0xED) - ((2 * (v296 ^ 0xED)) & 0x144) + 403098530) ^ (((4 * v327) ^ 0x923B8474) - ((2 * ((4 * v327) ^ 0x923B8474)) & 0xC91DC238) + 1687085341);
  v331 = v321 ^ v552 ^ ((v330 ^ 0xE450CD80) + 2031367009 + ~(2 * ((v330 ^ 0xE450CD80) & 0x79143368 ^ v330 & 8)));
  v332 = v300 ^ v551 ^ ((v307 ^ 0x61FF2168) - 2 * ((v307 ^ 0x61FF2168) & 0x587FC85E ^ v307 & 4) - 662714278);
  HIDWORD(v189) = v328 ^ 0x5B0A6;
  LODWORD(v189) = v328 ^ 0xA9B80000;
  v333 = v189 >> 19;
  HIDWORD(v189) = v333 ^ 0xF0E;
  LODWORD(v189) = v333 ^ 0x57868000;
  v334 = (v189 >> 13) - ((2 * (v189 >> 13)) & 0x51F19A66) - 1460089549;
  v335 = *(v152 + 4 * (HIBYTE(v332) ^ 0xDE));
  v336 = *(v154 + 4 * (BYTE2(v329) ^ 0xA5u));
  HIDWORD(v189) = v336 ^ 0x10D;
  LODWORD(v189) = v336 ^ 0x59A04C00;
  v337 = v189 >> 10;
  v338 = *(v158 + 4 * (BYTE1(v334) ^ 0x83u));
  HIDWORD(v189) = v338 ^ 0x1A932A9;
  LODWORD(v189) = v338 ^ 0x99999999;
  v339 = v335 - ((2 * v335 + 1394614860) & 0x5FEB095C) + 428185044;
  v340 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xE417F0BA) + 1913387101;
  v341 = *(v159 + 4 * (v331 ^ 2u)) ^ v337 ^ (4 * v339) ^ v340 ^ ((v331 ^ 0x19) - ((2 * v331) & 0x144) + 403098530) ^ (((4 * v340) ^ 0xC82FE174) - ((2 * ((4 * v340) ^ 0xC82FE174)) & 0xE417F0B8) + 1913387101);
  v342 = *(v152 + 4 * (HIBYTE(v329) ^ 0xE6));
  v343 = (v341 ^ 0xBFD612B8) - 2 * ((v341 ^ 0xBFD612B8) & 0x2FF584AF ^ v341 & 1) - 1342864210;
  v344 = *(v154 + 4 * (BYTE2(v334) ^ 0xEDu));
  HIDWORD(v189) = v344 ^ 0x10D;
  LODWORD(v189) = v344 ^ 0x59A04C00;
  v345 = v189 >> 10;
  v346 = v342 - ((2 * v342 - 752868788) & 0xC772C168);
  v347 = *(v158 + 4 * (BYTE1(v331) ^ 0x10u));
  v346 += 1296658906;
  HIDWORD(v189) = v347 ^ 0x1A932A9;
  LODWORD(v189) = v347 ^ 0x99999999;
  v348 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xA15A4A5C) + 1353524526;
  v349 = *(v159 + 4 * (v332 ^ 0xFAu)) ^ v345 ^ (4 * v346) ^ v348 ^ (((4 * v348) ^ 0x42B494B8) - ((2 * ((4 * v348) ^ 0x42B494B8)) & 0xA15A4A58) + 1353524526) ^ ((v332 ^ 0x9C) - ((2 * (v332 ^ 0x9C)) & 0x144) + 403098530);
  v350 = *(v152 + 4 * (HIBYTE(v334) ^ 0x52));
  v351 = v346 ^ v547 ^ ((v349 ^ 0x8EE582D0) - 2 * ((v349 ^ 0x8EE582D0) & 0x63B960B7 ^ v349 & 3) - 474390348);
  v352 = *(v154 + 4 * (BYTE2(v331) ^ 0x78u));
  HIDWORD(v189) = v352 ^ 0x10D;
  LODWORD(v189) = v352 ^ 0x59A04C00;
  v353 = v189 >> 10;
  v354 = *(v158 + 4 * (BYTE1(v332) ^ 0x6Bu));
  HIDWORD(v189) = v354 ^ 0x1A932A9;
  LODWORD(v189) = v354 ^ 0x99999999;
  v355 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0x3816C044) - 1676976094;
  v356 = HIBYTE(v331) ^ 0x17;
  v357 = ((2 * v350 + 1129772816) & 0x8FC92B3C) + ((v350 - 1582597240) ^ 0xC7E4959E) - 2 * ((((2 * v350 + 1129772816) & 0x8FC92B3C) + ((v350 - 1582597240) ^ 0xC7E4959E)) & 0x6BF36597 ^ ((v350 - 1582597240) ^ 0xC7E4959E) & 2) + 1811113365;
  v358 = *(v159 + 4 * (v329 ^ 5u)) ^ v353 ^ v355 ^ (4 * v357) ^ (((4 * v355) ^ 0x702D8088) - 2 * (((4 * v355) ^ 0x702D8088) & 0x1C0B6034 ^ (4 * v355) & 0x14) - 1676976094) ^ ((v329 ^ 0xB) - 2 * ((v329 ^ 0xB) & 0xB2 ^ v329 & 0x10) + 403098530);
  v359 = (v358 ^ 0xAFCD9654) - 2 * ((v358 ^ 0xAFCD9654) & 0x6BF3659F ^ v358 & 0xA) + 1811113365;
  v360 = *(v154 + 4 * (BYTE2(v332) ^ 0x9Fu));
  HIDWORD(v189) = v360 ^ 0x10D;
  LODWORD(v189) = v360 ^ 0x59A04C00;
  v361 = v189 >> 10;
  v362 = *(v158 + 4 * (BYTE1(v329) ^ 0x55u));
  v363 = *(v152 + 4 * v356) - ((2 * *(v152 + 4 * v356) + 320873036) & 0x1CDF9F1E) + 2013257909;
  HIDWORD(v189) = v362 ^ 0x1A932A9;
  LODWORD(v189) = v362 ^ 0x99999999;
  v364 = (v189 >> 26) - ((2 * (v189 >> 26)) & 0xBA2B9CF4) + 1561710202;
  v365 = ((4 * v364) ^ 0x745739E8) - 2 * (((4 * v364) ^ 0x745739E8) & 0x5D15CE7C ^ (4 * v364) & 4) + 1561710202;
  v366 = v334 ^ ((v361 ^ (4 * v363) ^ v364 ^ v365 ^ 0x39BF3E3C) - 2 * ((v361 ^ (4 * v363) ^ v364 ^ v365 ^ 0x39BF3E3C) & 0x1806CBA3 ^ (v361 ^ (4 * v363) ^ v364 ^ v365) & 1) + 403098530) ^ *(v159 + 4 * (v334 ^ 0x5Eu));
  v367 = v339 ^ v554 ^ v343;
  v368 = v363 ^ v553 ^ ((v366 ^ 0x45) - 2 * ((v366 ^ 0x45) & 0xE6FCF9F ^ v366 & 0x10) + 242208655);
  v369 = v357 ^ v555 ^ v359;
  if ((v367 & 0x40) != 0)
  {
    v370 = 64;
  }

  else
  {
    v370 = -64;
  }

  v371 = *(v152 + 4 * (HIBYTE(v367) ^ 0x68));
  v372 = (v367 ^ 0xD0) - ((2 * v367) & 0x5A) + v370;
  v373 = v371 - ((2 * v371 + 1394614860) & 0x748A2DC4) + 601171976;
  v374 = *(v154 + 4 * (BYTE2(v351) ^ 0x20u));
  HIDWORD(v376) = v374 ^ 0x10D;
  LODWORD(v376) = v374 ^ 0x59A04C00;
  v375 = v376 >> 10;
  v377 = *(v158 + 4 * (BYTE1(v369) ^ 0xA9u));
  HIDWORD(v376) = v377 ^ 0x1A932A9;
  LODWORD(v376) = v377 ^ 0x99999999;
  v378 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xEBDF4134) - 168845158;
  v379 = *(v159 + 4 * (v368 ^ 0xC1u)) ^ v375 ^ (4 * v373) ^ v378 ^ ((v368 ^ 0x47) - ((2 * (v368 ^ 0x47)) & 0x144) + 403098530) ^ 0xE9145B88 ^ (((4 * v378) ^ 0xD7BE8268) - ((2 * ((4 * v378) ^ 0xD7BE8268)) & 0xEBDF4130) - 168845158);
  v380 = v379 - ((2 * v379) & 0x748A2DC4) - 1169877278;
  v381 = *(v152 + 4 * (HIBYTE(v351) ^ 0x1E));
  v382 = *(v154 + 4 * (BYTE2(v369) ^ 0xB7u));
  HIDWORD(v376) = v382 ^ 0x10D;
  LODWORD(v376) = v382 ^ 0x59A04C00;
  v383 = v376 >> 10;
  v384 = v381 + 645641263 + ((752868786 - 2 * v381) | 0x8628B9EF);
  v385 = *(v158 + 4 * (BYTE1(v368) ^ 0xEBu));
  HIDWORD(v376) = v385 ^ 0x1A932A9;
  LODWORD(v376) = v385 ^ 0x99999999;
  v386 = (v376 >> 26) + 333252919 - ((2 * (v376 >> 26)) & 0x27BA126E);
  v387 = v383 ^ (4 * v384) ^ v386 ^ (((4 * v386) ^ 0x4F7424DC) - ((2 * ((4 * v386) ^ 0x4F7424DC)) & 0x27BA1268) + 333252919);
  v388 = (v387 ^ 0xF3AE8C20) - 2 * ((v387 ^ 0xF3AE8C20) & 0x3CEBA309 ^ v387 & 1) - 1125407992;
  v389 = (v372 - 83);
  v390 = v389 ^ 0xF6;
  v391 = *(v152 + 4 * (HIBYTE(v369) ^ 0xF0));
  v392 = (v389 ^ 0xAD) - ((2 * (v389 ^ 0xAD)) & 0x144);
  v393 = v391 - ((2 * v391 + 1394614860) & 0x7FBB4D44) + 695056328;
  v394 = *(v158 + 4 * (BYTE1(v367) ^ 3u));
  HIDWORD(v376) = v394 ^ 0x1A932A9;
  LODWORD(v376) = v394 ^ 0x99999999;
  v395 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xECAF910C) + 1985464454;
  v396 = *(v159 + 4 * (v351 ^ 0xB1u)) ^ __ROR4__(*(v154 + 4 * (BYTE2(v368) ^ 0x3Fu)), 10) ^ (4 * v393) ^ v395 ^ ((v351 ^ 0xAA) - ((2 * (v351 ^ 0xAA)) & 0x144) + 403098530) ^ 0xBC20F29B ^ (((4 * v395) ^ 0xD95F2218) - ((2 * ((4 * v395) ^ 0xD95F2218)) & 0xECAF9108) + 1985464454);
  v397 = *(v152 + 4 * (HIBYTE(v368) ^ 0x6D));
  v398 = v393 ^ v557 ^ (v396 - ((2 * v396) & 0x7FBB4D44) - 1075992926);
  v399 = v397 - ((2 * v397 - 752868788) & 0xFD1EF340) + 1746897606;
  v400 = *(v154 + 4 * (BYTE2(v367) ^ 0xE0u));
  HIDWORD(v376) = v400 ^ 0x10D;
  LODWORD(v376) = v400 ^ 0x59A04C00;
  v401 = v376 >> 10;
  v402 = *(v158 + 4 * (BYTE1(v351) ^ 0x37u));
  HIDWORD(v376) = v402 ^ 0x1A932A9;
  LODWORD(v376) = v402 ^ 0x99999999;
  v403 = v373 ^ v559 ^ v380;
  v404 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xD6B647E4) - 346348558;
  v405 = v401 ^ *(v159 + 4 * (v369 ^ 0xE5u)) ^ ((4 * v399) ^ 0x655FBF38 | v399 ^ 0xFE8F79A0) ^ ((4 * v399) ^ 0x655FBF38) & (v399 ^ 0xFE8F79A0) ^ (4 * v404) ^ ((v369 ^ 0xFE) - ((2 * (v369 ^ 0xFE)) & 0x144) + 403098530) ^ 0xAD6C8FC8;
  v406 = v405 - ((2 * v405) & 0xD6B647E4) - 346348558;
  v407 = *(v159 + 4 * v390) ^ v558 ^ v384 ^ (v392 + 403098530) ^ v388;
  v408 = v404 ^ v557 ^ 0xA8EBAFEC ^ v553;
  v409 = *(v152 + 4 * (HIBYTE(v403) ^ 0x36));
  v410 = v408 ^ v406;
  v411 = v409 - ((2 * v409 - 752868788) & 0xA6E37ABE) - 1123955067;
  v412 = *(v158 + 4 * (BYTE1(v398) ^ 0xF5u));
  HIDWORD(v376) = v412 ^ 0x1A932A9;
  LODWORD(v376) = v412 ^ 0x99999999;
  v413 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xE1268B00) + 1888699776;
  v414 = *(v159 + 4 * (v410 ^ 0xD5u)) ^ __ROR4__(*(v154 + 4 * (BYTE2(v407) ^ 0x7Fu)), 10) ^ (4 * v411) ^ v413 ^ ((v410 ^ 0xCE) - ((2 * (v410 ^ 0xCE)) & 0x144) + 403098530) ^ 0xE909D6F ^ (((4 * v413) ^ 0xC24D1600) - 2 * (((4 * v413) ^ 0xC24D1600) & 0x70934588 ^ (4 * v413) & 8) + 1888699776);
  v415 = (v414 - ((2 * v414) & 0xA6E37ABE) + 1399962975) ^ v411;
  v416 = *(v152 + 4 * (HIBYTE(v407) ^ 0xC4));
  v417 = v416 - ((2 * v416 - 752868788) & 0xC871465A) + 1304998995;
  v418 = *(v154 + 4 * (BYTE2(v398) ^ 8u));
  HIDWORD(v376) = v418 ^ 0x10D;
  LODWORD(v376) = v418 ^ 0x59A04C00;
  v419 = v376 >> 10;
  v420 = *(v158 + 4 * (BYTE1(v410) ^ 0x39u));
  v421 = v415 - ((2 * v415) & 0x17D4F608) + 199916292;
  HIDWORD(v376) = v420 ^ 0x1A932A9;
  LODWORD(v376) = v420 ^ 0x99999999;
  v422 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xC22E864A) + 1628914469;
  v423 = *(v159 + 4 * (v403 ^ 0x67u)) ^ v419 ^ (4 * v417) ^ v422 ^ (((4 * v422) ^ 0x845D0C94) - ((2 * ((4 * v422) ^ 0x845D0C94)) & 0xC22E8648) + 1628914469) ^ ((v403 ^ 0x7C) - ((2 * (v403 ^ 0x7C)) & 0x144) + 403098530) ^ 0x90E28CB4;
  v424 = v423 - ((2 * v423) & 0xC871465A) - 466050259;
  v425 = *(v152 + 4 * (HIBYTE(v398) ^ 0xD8));
  v426 = v425 - ((2 * v425 + 1394614860) & 0x6BC3E68A) + 527565931;
  v427 = HIBYTE(v410) ^ 0x6E;
  v428 = *(v154 + 4 * (BYTE2(v410) ^ 0x7Eu));
  HIDWORD(v376) = v428 ^ 0x10D;
  LODWORD(v376) = v428 ^ 0x59A04C00;
  v429 = v376 >> 10;
  v430 = *(v158 + 4 * (BYTE1(v403) ^ 0x6Bu));
  HIDWORD(v376) = v430 ^ 0x1A932A9;
  LODWORD(v376) = v430 ^ 0x99999999;
  v431 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xB1ACEF10) - 657033336;
  v432 = v556 ^ v565 ^ 0x118C28AD ^ v557 ^ 0xA8EBAFEC ^ *(v159 + 4 * (v407 ^ 0xF0u)) ^ ((v407 ^ 0xEB) - ((2 * (v407 ^ 0xEB)) & 0x144) + 403098530) ^ v429 ^ (4 * (v431 ^ v426));
  v433 = ((v432 ^ 0xA2F051C5) - 2 * ((v432 ^ 0xA2F051C5) & 0x35E1F357 ^ v432 & 0x12) - 1243483323) ^ v426;
  v434 = *(v152 + 4 * v427) - ((2 * *(v152 + 4 * v427) + 320873036) & 0x2211192E) - 90661443;
  v435 = *(v154 + 4 * (BYTE2(v403) ^ 0x9Fu));
  HIDWORD(v376) = v435 ^ 0x10D;
  LODWORD(v376) = v435 ^ 0x59A04C00;
  v436 = v376 >> 10;
  v437 = *(v158 + 4 * (BYTE1(v407) ^ 0x8Du));
  HIDWORD(v376) = v437 ^ 0x1A932A9;
  LODWORD(v376) = v437 ^ 0x99999999;
  v438 = (v376 >> 26) - 2040450333 - ((2 * (v376 >> 26)) & 0xCC265C6);
  v439 = *(v159 + 4 * (v398 ^ 0xC6u)) ^ v436 ^ (4 * v434) ^ v438 ^ (((4 * v438) ^ 0x1984CB8C) - ((2 * ((4 * v438) ^ 0x1984CB8C)) & 0xCC265C0) - 2040450333) ^ ((v398 ^ 0xDD) - ((2 * (v398 ^ 0xDD)) & 0x144) + 403098530) ^ 0x4422325C;
  v440 = v431 ^ v556 ^ (v433 - ((2 * v433) & 0xB1ACEF10) - 657033336);
  v441 = v417 ^ v565 ^ v424;
  v442 = (v421 ^ v563 ^ 0x9C855C50) + (v564 ^ 0x53B4ED91 ^ v563) - 2 * ((v421 ^ v563 ^ 0x1C855C50) & (v564 ^ 0x53B4ED91 ^ v563));
  v443 = v442 - ((2 * v442) & 0x7246CF9A) - 1188862003;
  v444 = v434 ^ v562 ^ (v439 - ((2 * v439) & 0x2211192E) - 1861710697);
  v445 = *(v152 + 4 * (HIBYTE(v441) ^ 0x34));
  v446 = *(v154 + 4 * (BYTE2(v440) ^ 9u));
  HIDWORD(v376) = v446 ^ 0x10D;
  LODWORD(v376) = v446 ^ 0x59A04C00;
  v447 = v376 >> 10;
  v448 = *(v158 + 4 * (BYTE1(v444) ^ 0x22u));
  HIDWORD(v376) = v448 ^ 0x1A932A9;
  LODWORD(v376) = v448 ^ 0x99999999;
  v449 = v445 - ((2 * v445 - 752868788) & 0x82C12F5C) + 720414932;
  v450 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xFB7E4762) + 2109678513;
  v451 = v447 ^ (4 * v449) ^ v450 ^ (((4 * v450) ^ 0xF6FC8EC4) - ((2 * ((4 * v450) ^ 0xF6FC8EC4)) & 0xFB7E4760) + 2109678513) ^ 0x5825EB8;
  v452 = v560 ^ v561 ^ (v451 - ((2 * v451) & 0x300D9744) + 403098530) ^ v443 ^ *(v159 + 4 * (v443 ^ 0x68u));
  v453 = *(v152 + 4 * (HIBYTE(v440) ^ 0xAF));
  v454 = v453 - ((2 * v453 + 1394614860) & 0x53DF3172) + 327133663;
  v455 = *(v158 + 4 * (BYTE1(v443) ^ 0xC1u));
  HIDWORD(v376) = v455 ^ 0x1A932A9;
  LODWORD(v376) = v455 ^ 0x99999999;
  v456 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xD1E547D6) + 1760732139;
  v457 = *(v159 + 4 * (v441 ^ 0x56u)) ^ __ROR4__(*(v154 + 4 * (BYTE2(v444) ^ 0xFBu)), 10) ^ (4 * v454) ^ v456 ^ ((v441 ^ 0x4D) - ((2 * v441) & 0x144) + 403098530) ^ 0xE4E80AF7 ^ (((4 * v456) ^ 0xA3CA8FAC) - ((2 * ((4 * v456) ^ 0xA3CA8FAC)) & 0xD1E547D0) + 1760732139);
  v571 = v454 ^ v577 ^ (v457 - ((2 * v457) & 0x53DF3172) - 1443915591);
  v458 = v449 ^ v560 ^ ((v452 ^ 0xF8521068) - 2 * ((v452 ^ 0xF8521068) & 0x416097AF ^ v452 & 1) - 1050634322);
  v459 = *(v47 + 8 * (v578 ^ 0x1EA2)) - 432604078;
  v460 = *(v47 + 8 * (v578 - 7996)) - 101244182;
  v461 = *(v460 + 4 * (HIBYTE(v458) ^ 0xA2));
  v462 = *(v459 + 4 * (BYTE2(v571) ^ 0xBAu));
  v463 = v462 ^ v461 ^ (((8 * v461) & 0x33E5A8F0 ^ 0xDCFF7708) - ((2 * ((8 * v461) & 0x33E5A8F0 ^ 0xDCFF7708)) & 0x425AF120) - 1590855530);
  v464 = (v463 & 0x800 | ((((v463 & 0x800) >> 11) & 1) << 12) | 0x7DEFA7DF) ^ 0x1000;
  v465 = (4 * v462) ^ 0x688FC660;
  STACK[0x910] = v46;
  v575 = v576 ^ v561 ^ 0x71469487;
  v466 = *(v152 + 4 * (HIBYTE(v443) ^ 0x61));
  v467 = *(v154 + 4 * (BYTE2(v441) ^ 0x88u));
  HIDWORD(v376) = v467 ^ 0x10D;
  LODWORD(v376) = v467 ^ 0x59A04C00;
  v468 = v376 >> 10;
  v469 = v466 - ((2 * v466 + 320873036) & 0x2C9D8586) + 2145309673;
  v470 = *(v158 + 4 * (BYTE1(v440) ^ 0xD1u));
  HIDWORD(v376) = v470 ^ 0x1A932A9;
  LODWORD(v376) = v470 ^ 0x99999999;
  v471 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0xBBCBED80) + 1575352000;
  v472 = v566 ^ v567 ^ *(v159 + 4 * (v444 ^ 0xBCu)) ^ v468 ^ (4 * v469) ^ v471 ^ (((4 * v471) ^ 0x7797DB00) - 2 * (((4 * v471) ^ 0x7797DB00) & 0x5DE5F6D0 ^ (4 * v471) & 0x10) + 1575352000) ^ ((v444 ^ 0xA7) - ((2 * (v444 ^ 0xA7)) & 0x144) + 403098530) ^ 0x49BBE02B;
  v473 = *(v154 + 4 * (BYTE2(v443) ^ 0xCFu));
  v474 = (v472 - ((2 * v472) & 0x2C9D8586) + 374260419) ^ v469;
  HIDWORD(v376) = v473 ^ 0x10D;
  LODWORD(v376) = v473 ^ 0x59A04C00;
  v475 = v376 >> 10;
  v476 = *(v158 + 4 * (BYTE1(v441) ^ 0x30u));
  v477 = *(v152 + 4 * (HIBYTE(v444) ^ 0xA4)) - ((2 * *(v152 + 4 * (HIBYTE(v444) ^ 0xA4)) - 752868788) & 0xE48D2EB0);
  HIDWORD(v376) = v476 ^ 0x1A932A9;
  LODWORD(v376) = v476 ^ 0x99999999;
  v478 = (v376 >> 26) - ((2 * (v376 >> 26)) & 0x3E685556) + 523512491;
  v479 = ((v475 ^ (4 * (v478 ^ (v477 - 606689154))) ^ 0xB5CAF7CC) - ((2 * (v475 ^ (4 * (v478 ^ (v477 - 606689154))) ^ 0xB5CAF7CC)) & 0xE48D2EB0) + 1917228888) ^ (v477 - 606689154);
  v480 = (v474 - ((2 * v474) & 0x6B61E0C8) + 900788324) ^ v567;
  v481 = *(v159 + 4 * (v440 ^ 0xA6u)) ^ v577 ^ v562 ^ 0x61ACB34A ^ v478 ^ ((v440 ^ 0xBD) - ((2 * (v440 ^ 0xBD)) & 0x144) + 403098530) ^ (v479 - ((2 * v479) & 0x3E685556) + 523512491);
  v482 = *(v459 + 4 * (BYTE2(v458) ^ 0xFu));
  v483 = *(v460 + 4 * (HIBYTE(v480) ^ 0xF3));
  v484 = (((4 * v482) ^ 0x688FC660) + 970457660) ^ 0xDCFF7708 ^ (8 * v483) & 0x33E5A8F0;
  v485 = *(&off_10044E3E0 + v578 - 8113) - 1046400275;
  v486 = *(&off_10044E3E0 + v578 - 8037) - 157134311;
  v487 = *&v486[4 * (v481 ^ 0x4E)];
  HIDWORD(v376) = v487 ^ 4;
  LODWORD(v376) = v487 ^ 0x45DE5280;
  v488 = (v376 >> 3) - ((2 * (v376 >> 3)) & 0xA11516A8) + 1351256916;
  v489 = (v484 - ((2 * v484) & 0x48E6A340) + 611537313) ^ *&v485[4 * (BYTE1(v571) ^ 0x37)] ^ v488 ^ (((v488 >> 2) & 0x2EC132AB ^ 0x4002281) - ((2 * ((v488 >> 2) & 0x2EC132AB ^ 0x4002281)) & 0x1000400) + 1351256916);
  v490 = (v489 - ((2 * v489) & 0x24836C82) + 306296385) ^ v483;
  v570 = (v490 ^ 0x295D1000) + 372902 - 2 * ((v490 ^ 0x295D1000) & 0x5BB6B ^ v490 & 3);
  v491 = v464 - 25372426;
  if (((v464 - 2112860127) & (v465 + 970457660)) != 0)
  {
    v491 = -94619468 - v464;
  }

  v492 = v463 & 0xFFFFF7FF ^ 0x8012274F ^ (v465 - 1117030041 + v491);
  v493 = v492 - ((2 * v492) & 0x48E6A342);
  v494 = *&v486[4 * (v480 ^ 0x30)];
  HIDWORD(v495) = v494 ^ 4;
  LODWORD(v495) = v494 ^ 0x45DE5280;
  v496 = (v495 >> 3) - ((2 * (v495 >> 3)) & 0xB49C578) + 94692028;
  v497 = *(v460 + 4 * (HIBYTE(v571) ^ 0xF));
  v498 = ((8 * v497) & 0x33E5A8F0 ^ 0xDCFF7708) - ((2 * ((8 * v497) & 0x33E5A8F0 ^ 0xDCFF7708)) & 0x48E6A340);
  v499 = *&v486[4 * (v458 ^ 0xF4)];
  HIDWORD(v495) = v499 ^ 4;
  LODWORD(v495) = v499 ^ 0x45DE5280;
  v500 = (v495 >> 3) - ((2 * (v495 >> 3)) & 0x7EABC300) - 1084890752;
  v501 = ((v500 >> 2) & 0x2EC132AB ^ 0x2EC13020) - 2 * (((v500 >> 2) & 0x2EC132AB ^ 0x2EC13020) & 0x2E412089 ^ (v500 >> 2) & 9) - 1084890752;
  v502 = *(v459 + 4 * (BYTE2(v481) ^ 0x2Du));
  v503 = (((4 * v502) ^ 0x688FC660) + 970457660) ^ *&v485[4 * (BYTE1(v480) ^ 0xD)] ^ v500;
  v504 = ((v503 ^ v501 ^ (v498 + 611537313)) - ((2 * (v503 ^ v501 ^ (v498 + 611537313))) & 0x134504F6) + 161645179) ^ v497;
  v505 = (v504 ^ 0x32BE243A) - 2 * ((v504 ^ 0x32BE243A) & 0x678124FF ^ v504 & 1) - 410966786;
  v506 = *(v460 + 4 * (HIBYTE(v481) ^ 0x26));
  v507 = *(v459 + 4 * (BYTE2(v480) ^ 0x71u));
  v508 = (((4 * v507) ^ 0x688FC660) + 970457660) ^ (8 * v506) & 0x33E5A8F0;
  v509 = *&v486[4 * (v571 ^ 0x3E)];
  v510 = (v508 ^ 0xDCFF7708) - 2 * ((v508 ^ 0xDCFF7708) & 0x247351B4 ^ v508 & 0x14) + 611537313;
  HIDWORD(v495) = v509 ^ 4;
  LODWORD(v495) = v509 ^ 0x45DE5280;
  v511 = (v495 >> 3) - ((2 * (v495 >> 3)) & 0xDA297E3E) + 1830076191;
  v512 = v482 ^ v576 ^ (v570 + 2754);
  v513 = *&v485[4 * (BYTE1(v481) ^ 0x77)] ^ v576 ^ v561 ^ v496 ^ (((v496 >> 2) & 0x2EC132AB ^ 0x4130AB) - ((2 * ((v496 >> 2) & 0x2EC132AB ^ 0x4130AB)) & 0x9004550) + 94692028) ^ (v493 + 611537313);
  v514 = ((v575 ^ v562 ^ 0x61ACB34A ^ 0x8AB2DF5A) + 1950738530 + ((2 * (v575 ^ v562 ^ 0x61ACB34A)) & 0xE88BD0C2 ^ 0xFFFE6F7F)) ^ *&v485[4 * (BYTE1(v458) ^ 0x65)] ^ v510 ^ (v511 >> 2) & 0x2EC132AB ^ 0xA412283;
  v515 = (v514 + 394768606 + (~(2 * v514) | 0xD0F09E45)) ^ v506;
  v516 = v511 ^ v507 ^ ((v515 ^ 0x2C9B169C) - 2 * ((v515 ^ 0x2C9B169C) & 0x157DF5B ^ v515 & 1) - 2124947622);
  v517 = v575 ^ v577 ^ v502 ^ v505;
  v518 = *(&off_10044E3E0 + (v578 ^ 0x1F17)) - 415300995;
  v519 = v518[(v482 ^ v576 ^ (v570 - 62)) ^ 0xD9];
  HIDWORD(v495) = v519 ^ 0x38;
  LODWORD(v495) = v519 << 24;
  *(v49 - 197) = (v495 >> 30) ^ 0xF1;
  v520 = *(&off_10044E3E0 + (v578 ^ 0x1F5E)) - 804541458;
  *(v49 - 192) = v520[HIBYTE(v517) ^ 0x31] ^ 0xE2;
  v521 = *(&off_10044E3E0 + (v578 ^ 0x1F03)) - 2118649271;
  *(v49 - 194) = (((2 * ((4 * v521[BYTE1(v513) ^ 0x16]) & 0xE0 ^ 0x20)) & 0x40) - ((4 * v521[BYTE1(v513) ^ 0x16]) & 0xE0 ^ 0x20) + 82) ^ v521[BYTE1(v513) ^ 0x16];
  LOBYTE(v506) = v521[BYTE1(v516) ^ 0x46];
  LOBYTE(v511) = (4 * v506) & 0xE0;
  LOBYTE(v496) = v506 ^ v511 ^ 0x83;
  LOBYTE(v506) = ((2 * v506) & 0x2C ^ 0x28) + (v506 ^ 0xCA);
  *(v49 - 186) = v506 + (v511 ^ 0xE9 ^ (((v496 + v506 + 107) ^ ((v511 ^ 0xDF) + 1)) - 2 * (((v496 + v506 + 107) ^ ((v511 ^ 0xDF) + 1)) & 0x4F ^ (v496 + v506 + 107) & 6) - 55)) + 106;
  v522 = v518[v517 ^ 0xE4];
  HIDWORD(v495) = v522 ^ 0x38;
  LODWORD(v495) = v522 << 24;
  *(v49 - 189) = (v495 >> 30) ^ 0xE1;
  v523 = v521[BYTE1(v517) ^ 0x79];
  HIDWORD(v495) = v523 ^ 3;
  LODWORD(v495) = (v523 ^ 0xFFFFFFCF) << 24;
  v524 = v495 >> 27;
  HIDWORD(v495) = v524 ^ 0x16;
  LODWORD(v495) = (v524 ^ 0xFFFFFFBF) << 24;
  *(v49 - 190) = (4 * v523) & 0xE0 ^ (v495 >> 29) ^ 0xFE;
  *(v49 - 196) = v520[HIBYTE(v513) ^ 0x5ELL] ^ 0x1F;
  v525 = BYTE2(v517) ^ 0x3ALL;
  v526 = *(&off_10044E3E0 + (v578 ^ 0x1EAB)) - 265928911;
  *(v49 - 191) = v526[v525] ^ 0x4F;
  LODWORD(v525) = v518[v513 ^ 0xALL];
  HIDWORD(v495) = v525 ^ 0x38;
  LODWORD(v495) = v525 << 24;
  *(v49 - 193) = (v495 >> 30) ^ 0x62;
  *(v49 - 195) = v526[BYTE2(v513) ^ 0xA7] ^ 0x12;
  v527 = v518[v516 ^ 0x89];
  HIDWORD(v495) = v527 ^ 0x38;
  LODWORD(v495) = v527 << 24;
  *(v49 - 185) = (v495 >> 30) ^ 0x1F;
  *(v49 - 199) = v526[BYTE2(v512) ^ 0x74] ^ 0xC;
  *(v49 - 188) = v520[HIBYTE(v516) ^ 1] ^ 0x68;
  LOBYTE(v527) = v520[HIBYTE(v512) ^ 0x38];
  *(v49 - 200) = (((v527 ^ 0xD4) - (v527 ^ 0x78)) ^ 0xF8) + (v527 ^ 0xD4);
  *(v49 - 198) = (((4 * v521[BYTE1(v512) ^ 0xBFLL]) & 0xE0 ^ 0x20) + (v521[BYTE1(v512) ^ 0xBFLL] ^ 0xCB) - 2 * (((4 * v521[BYTE1(v512) ^ 0xBFLL]) & 0xE0 ^ 0x20) & (v521[BYTE1(v512) ^ 0xBFLL] ^ 0x59))) ^ 0xAB;
  *(v49 - 187) = v526[BYTE2(v516) ^ 0xC6] ^ 0xED;
  LOBYTE(STACK[0x92B]) = 1;
  STACK[0x920] = 1974698540;
  return (*(a46 + 8 * v578))(13004);
}

uint64_t sub_1001020CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = (*(v48 + 8 * (v46 ^ 0x45B2)))(128) != 0;
  STACK[0x338] = 0x270676553BF336C1;
  LODWORD(STACK[0x344]) = v47 + 2;
  return (*(a46 + 8 * ((v49 * (((v46 - 1281841125) & 0x4C674F1A) - 1803)) ^ v46)))(161467495);
}

uint64_t sub_100102160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = v68 + 7389;
  v72 = (*(v70 + 8 * (v71 ^ 0x69A1u)))(112);
  STACK[0x530] = v72;
  a68 = v72 + 0x5AB679E9A06C14EALL;
  LODWORD(STACK[0x32C]) = v69;
  return (*(a46 + 8 * (((v72 == 0) * (((v71 - 135046400) & 0xFE6CC51D) + 161463284)) ^ v71)))(v72, v73, &a65, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_10010222C@<X0>(void *a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v60 = a1[110];
  *v60 = 320605855;
  *(v60 + 4) = 716240777;
  *(v60 + 72) = 0x49836E4B49836E4BLL;
  *(v60 + 80) = 545;
  *(v60 + 8) = 4626;
  *(v60 + 10) = 18;
  *(v60 + 11) = 4626;
  *(v60 + 13) = 18;
  *(v60 + 14) = 4626;
  *(v60 + 16) = 18;
  *(v60 + 17) = 4626;
  *(v60 + 19) = 18;
  *(v60 + 20) = 4626;
  *(v60 + 22) = 18;
  *(v60 + 23) = 4626;
  *(v60 + 25) = 18;
  v61 = a1[110];
  *(v61 + 26) = 4626;
  *(v61 + 28) = 18;
  *(v61 + 29) = 4626;
  *(v61 + 31) = 18;
  *(v61 + 32) = 4626;
  *(v61 + 34) = 18;
  *(v61 + 35) = 4626;
  *(v61 + 37) = 18;
  *(v61 + 38) = 4626;
  *(v61 + 40) = 18;
  *(v61 + 41) = 4626;
  *(v61 + 43) = 18;
  *(v61 + 44) = 4626;
  *(v61 + 46) = 18;
  v62 = a1[110];
  *(v62 + 47) = 4626;
  *(v62 + 49) = 18;
  v63 = a1[110];
  *(v63 + 50) = 4626;
  *(v63 + 52) = 18;
  v64 = a1[110];
  *(v64 + 53) = 4626;
  *(v64 + 55) = 18;
  v65 = a1[110];
  *(v65 + 56) = 4626;
  *(v65 + 58) = 18;
  v66 = a1[110];
  *(v66 + 59) = 4626;
  *(v66 + 61) = 18;
  v67 = a1[110];
  *(v67 + 62) = 4626;
  *(v67 + 64) = 18;
  v68 = a1[110];
  *(v68 + 65) = 4626;
  *(v68 + 67) = 18;
  v69 = a1[110];
  *(v69 + 68) = 4626;
  *(v69 + 70) = 18;
  *(a1[110] + 71) = 18;
  v70 = a1[3];
  a1[111] = v70;
  a1[112] = v70 - 0x5AB679E9A06C1496;
  *(v70 - 0x5AB679E9A06C1496) = -1125453800;
  a1[113] = v70 - 0x5AB679E9A06C1482;
  *(v70 - 0x5AB679E9A06C1482) = 49289790;
  *(v70 - 0x5AB679E9A06C1492) = 4626;
  *(v70 - 0x5AB679E9A06C1490) = 18;
  *(v70 - 0x5AB679E9A06C148FLL) = 4626;
  *(v70 - 0x5AB679E9A06C148DLL) = 18;
  *(v70 - 0x5AB679E9A06C148CLL) = 4626;
  *(v70 - 0x5AB679E9A06C148ALL) = 18;
  *(v70 - 0x5AB679E9A06C1489) = 4626;
  *(v70 - 0x5AB679E9A06C1487) = 18;
  a1[114] = v70 - 0x5AB679E9A06C1492;
  *(v70 - 0x5AB679E9A06C1486) = 303174162;
  a1[115] = v70 - 0x5AB679E9A06C147ELL;
  v71 = a1[111] == a2 || a56 == 0x270676553BF336C1;
  *(v70 - 0x5AB679E9A06C147ELL) = 28;
  v72 = !v71;
  a1[116] = a56;
  LODWORD(STACK[0x334]) = v58;
  return (*(v59 + 8 * ((v72 * (v57 + v56 - 161472482 + ((v56 - 1004408888) & 0x3BDDFDDE) - 1048)) ^ (v56 - 6661))))(161467495);
}

uint64_t sub_1001024F8()
{
  v2 = STACK[0x538];
  v3 = (STACK[0x538] - 0x5AB679E9A06C14EALL);
  v4 = STACK[0x560];
  *(v4 - 0x270676553BF336B1) = *v3;
  *(v4 - 0x270676553BF33669) = *(v2 - 0x5AB679E9A06C14A2);
  *(v4 - 0x270676553BF33665) = *(v2 - 0x5AB679E9A06C149ELL);
  *(v4 - 0x270676553BF33661) = *(v2 - 0x5AB679E9A06C149ALL);
  *(v4 - 0x270676553BF33660) = *(v2 - 0x5AB679E9A06C1499);
  *(v4 - 0x270676553BF33649) = *STACK[0x548];
  *(v4 - 0x270676553BF3365DLL) = *STACK[0x540];
  *(STACK[0x560] - 0x270676553BF33645) = *STACK[0x558] & 1 ^ 0x27;
  v5 = STACK[0x538] - 0x5AB679E9A06C14E2;
  v6 = STACK[0x560] - 0x270676553BF336A9;
  v7 = *(v1 + 8 * v0);
  v8 = STACK[0x538] - 0x5AB679E9C36587D3;
  STACK[0x830] = v3;
  STACK[0x838] = v2 - 0x5AB679E9A06C14A2;
  STACK[0x840] = v5;
  STACK[0x848] = v6;
  STACK[0x448] = 586773264;
  return v7(v8, v0 - 4249, -1396058474, v0 ^ 0x10DD, -840142842, v0 - 4306, -1526137035, 43);
}

uint64_t sub_1001026FC(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v15 = v11;
  v16 = v11 - 1;
  *(v10 + v15) = (v9 - 101) ^ *(a1 + v15) ^ (-63 * (v16 & 0xF)) ^ *(*(v12 + 8 * a2) + a3 + (v16 & 0xF)) ^ *(*(v12 + 8 * a4) + a5 + (v16 & 0xF)) ^ *((v16 & 0xF) + *(v12 + 8 * a6) + a7 + 3) ^ a8;
  return (*(v14 + 8 * (((v8 == v15) * v13) ^ v9)))();
}

uint64_t sub_100102774()
{
  STACK[0x448] = v2;
  v5 = STACK[0x560] - 0x270676553BF33689;
  v6 = *(v4 + 8 * v1);
  *(v3 + 336) = STACK[0x538] - 0x5AB679E9A06C14C2;
  *(v3 + 344) = v5;
  STACK[0x450] = v0;
  return v6();
}

uint64_t sub_1001027F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v13 = v6 + a3;
  v14 = a2 + v6;
  *(a1 + v13) = *(v11 + v13) ^ *(v7 + (v14 & 0xF)) ^ *(v9 + (v14 & 0xF)) ^ *((v14 & 0xF) + v10 + 3) ^ (-63 * (v14 & 0xF)) ^ a4;
  return (*(v12 + 8 * (((v14 == a5) * a6) ^ v8)))();
}

uint64_t sub_10010284C()
{
  STACK[0x450] = v1;
  v4 = *(v3 + 8 * v0);
  *(v2 + 352) = STACK[0x560] - 0x270676553BF33659;
  STACK[0x458] = 2005710959;
  return v4(-2459598983, (v0 ^ 0x31u) - 1916, -3143602734, 4294967271, (v0 ^ 0x31) & 0xEA1631D9, -2959624486, 18, (((v0 ^ 0x31) + 14326) | 0xA2) ^ 0x4092u);
}

uint64_t sub_100102968()
{
  STACK[0x458] = v1;
  v4 = *(STACK[0x538] - 0x5AB679E9A06C14E6);
  v5 = (STACK[0x560] - 0x270676553BF336ADLL);
  *(v2 + 360) = v5;
  *v5 = v4;
  return (*(v3 + 8 * ((1216 * (v4 == ((v0 - 1095730406) & 0x414F5EFF ^ 0x2AB0ED34))) ^ v0)))();
}

uint64_t sub_100102B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = (*(v48 + 8 * (v47 + 161482305)))(16);
  STACK[0x568] = v49;
  LODWORD(STACK[0x32C]) = v46 + 2;
  return (*(a46 + 8 * (((v49 == 0) * (v47 + 161463284)) ^ (v47 + 161481233))))();
}

uint64_t sub_100102B90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[117];
  v7 = a3[116];
  *v6 = 0x4761F68478C333F5;
  v6[1] = 0x4761F68478C333F5;
  *(v7 - 0x270676553BF336B9) = v6 + 0xAB5C364D9808152;
  a3[118] = v7 - 0x270676553BF336B9;
  a3[119] = v7 - 0x270676553BF336C1;
  LODWORD(STACK[0x32C]) = v4;
  return (*(v5 + 8 * (((v7 != 0x270676553BF336C1) * (((v3 - 1369657634) & 0x51A36B4F) + ((v3 - 499124239) | 0x14204405) + 161454534)) ^ (v3 + 3435))))();
}

uint64_t sub_100102C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v51 = (*(v50 + 8 * (v46 ^ 0x681Bu)))(16);
  STACK[0x580] = v51;
  LODWORD(STACK[0x32C]) = v49 + 2;
  return (*(a46 + 8 * (((v51 != 0) * (((v47 + v46 - v48 + 252 - 1542) | 0x2A43) ^ 0x2B7C)) ^ v46)))();
}

uint64_t sub_100102CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 960);
  *v6 = 0x4761F68478C333F5;
  v6[1] = 0x4761F68478C333F5;
  **(a3 + 952) = v6 + 0xAB5C364D9808152;
  v7 = **(a3 + 944);
  *(a3 + 72) = 0x4761F68478C333F5;
  *(a3 + 304) = 0x287790ACDEDC35C6;
  *(a3 + 312) = v7;
  LODWORD(STACK[0x304]) = 1082348533;
  *(a3 + 328) = &STACK[0x208];
  LODWORD(STACK[0x314]) = -1457955478;
  LODWORD(STACK[0x330]) = v4;
  return (*(v5 + 8 * (((((v3 + 96) ^ (v7 == 0xAB5C364D9808152)) & 1) * (3 * (v3 ^ 0x2042) - 8291)) ^ v3)))(161467495);
}

uint64_t sub_100102DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x2F8];
  v69 = STACK[0x2F8] == 0xAB5C364D9808152;
  v70 = LODWORD(STACK[0x314]);
  v75 = STACK[0x2F0];
  v71 = *(v66 + 8 * v65);
  LODWORD(STACK[0x58C]) = v70;
  STACK[0x590] = STACK[0x308];
  LODWORD(v74) = STACK[0x304];
  LODWORD(STACK[0x59C]) = STACK[0x304];
  STACK[0x5A0] = v75;
  LOBYTE(STACK[0x5AF]) = v69;
  STACK[0x5B0] = v68 - 0xAB5C364D9808152;
  LODWORD(v73) = ((v67 - 854037542) & 0x3C8776BF) - 5491;
  HIDWORD(a27) = (v67 + 1502228374) & 0xB0159D7E;
  HIDWORD(v73) = HIDWORD(a27) ^ 0x1135;
  HIDWORD(a31) = v69;
  HIDWORD(v74) = v70;
  return v71(a1, a2, &a65, v69, LOWORD(STACK[0x2D6]), v68 - 0xAB5C364D9808152, v70, 0x3155E6E371D4A28CLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v73, v74, v68 - 0xAB5C364D9808152, a31, a32, a33, a34, (v65 ^ 0x3015u) + v75 - 0x18F2EED9424D78A2);
}

uint64_t sub_100102F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X5>, int a5@<W8>)
{
  *(a2 + 672) = a4;
  LODWORD(STACK[0x47C]) = v8;
  return (*(v7 + 8 * (((((a5 + v6) ^ v9) + ((a5 + v6) | v5) + 218305053) * a3) ^ a5)))(a1, a4);
}

uint64_t sub_100102F78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v37 = *a2;
  *(v35 + 368) = *a2;
  *(a3 + 120) = v37;
  LODWORD(STACK[0x46C]) = v36 + 21;
  *(a3 + 688) = 0x4761F68478C333F5;
  return (*(v34 + 8 * (((((v33 - 34) ^ (v37 == 0x4761F68478C333F5)) & 1) * ((v33 ^ 0x15B9) - 1267)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_100103240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = v6 != ((a6 + 1180694059) | 0xB0004410) - 1256780082 + ((a6 + 1576) | 0x111);
  LODWORD(STACK[0x334]) = v6;
  return (*(v7 + 8 * (((8 * v8) | (32 * v8)) ^ a6)))(a1, a2, a3, a4, a5, 0xDEA468F81C72B7B2);
}

uint64_t sub_1001032AC()
{
  v3 = STACK[0x208];
  v4 = *(STACK[0x208] - 0x4761F68478C333DDLL);
  STACK[0x5B8] = v4;
  LODWORD(STACK[0x5C4]) = *(v3 - 0x4761F68478C333E5);
  STACK[0x2A0] = v4;
  LODWORD(STACK[0x330]) = v2;
  return (*(v1 + 8 * (((v4 == 0) * (v0 - 8915 + ((v0 - 4107) | 0x1034) + 179)) ^ v0)))();
}

uint64_t sub_10010333C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  v40 = (v37 | ((v37 < ((a9 - 1649125) & 0xF6795CBD ^ 0xEE9D2D4B)) << 32)) + 0x8144BEEED06060DLL;
  STACK[0x5C8] = v40;
  STACK[0x2E0] = v40;
  STACK[0x2E8] = a37;
  LODWORD(STACK[0x330]) = v39 + 28;
  return (*(v38 + 8 * ((12628 * (v40 - a37 + 0x206344BDD8D8C651 < 0xFFFFFFFFFFFFFFF6)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1001034EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unsigned int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = v69;
  v78 = v69 - 0x287790ACDEDC35C2;
  v79 = v78 + 6;
  *(a3 + 1056) = v78 + 6;
  v80 = a1 + a2;
  LOBYTE(STACK[0x5F7]) = v80 < v70;
  v81 = v65 + (v68 & (2 * v78)) + (v78 ^ v72) + v71;
  v82 = __ROR8__(v81 & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = ((0xD4F4E5F14C1EA78 - v82) & a7) + v82 + 0x72B0B1A0EB3E1587 - ((v82 + 0x72B0B1A0EB3E1587) & 0x3355E6E371D4A28CLL);
  v84 = __ROR8__(v83 ^ v66, 8);
  v85 = v83 ^ a4;
  v86 = ((a6 & (2 * (v84 + v85))) - (v84 + v85) + v76) ^ a5;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = ((v73 | (2 * (v88 + v87))) - (v88 + v87) - 0x1E7692D3FE9EB64ALL) ^ 0x60AC820B1623523FLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = __ROR8__(((a8 & (2 * (v91 + v90))) - (v91 + v90) - 0x6A8E130F98941D77) ^ 0x5E6E3DF56E71972FLL, 8);
  v93 = ((a8 & (2 * (v91 + v90))) - (v91 + v90) - 0x6A8E130F98941D77) ^ 0x5E6E3DF56E71972FLL ^ __ROR8__(v90, 61);
  v94 = (((2 * (v92 + v93)) & 0x67E5D14539A6B3E0) - (v92 + v93) + 0x4C0D175D632CA60FLL) ^ 0xCCAE3F29E09861C6;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x8562C5B0FD26117BLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ v67;
  v99 = __ROR8__(v98, 8);
  v100 = __ROR8__(v97, 61);
  v101 = (0xE05FFA49ABAE0FD4 - ((v99 + (v98 ^ v100)) | 0xE05FFA49ABAE0FD4) + ((v99 + (v98 ^ v100)) | 0x1FA005B65451F02BLL)) ^ 0xE7B92FC3BFA902B5;
  v102 = __ROR8__((v81 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = ((0xD4F4E5F14C1EA78 - v102) & 0x3D9236DAA7C2E47FLL) + v102 + 0x72B0B1A0EB3E1587 - ((v102 + 0x72B0B1A0EB3E1587) & 0x399236DAA7C2E47FLL);
  v104 = v103 ^ 0x69D500AF3BBC8954;
  v103 ^= 0xFC508DA8624C256FLL;
  v105 = (__ROR8__(v104, 8) + v103) ^ v74;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (v107 + v106 - ((2 * (v107 + v106)) & 0x5826CDB5EC674BFALL) - 0x53EC992509CC5A03) ^ 0xD2C976021E8E4188;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (0x7107CA4467DAA2B3 - ((v110 + v109) ^ 0x90985294394D5C8BLL | 0x7107CA4467DAA2B3) + ((v110 + v109) ^ 0x90985294394D5C8BLL | 0x8EF835BB98255D4CLL)) ^ 0xD57FB62AA8727461;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x80A3287483B4C7C9;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) & 0xDF117294C14ABF8CLL) - (v115 + v114) - 0x6F88B94A60A55FC7) ^ 0x15158305627CB142;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ v67;
  v119 = ((__ROR8__(v118, 8) + (v118 ^ __ROR8__(v117, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v81 + 1) & 7));
  v120 = ((v77 - 0x287790ACDEDC35C0) ^ 0xCFBEE1FBDCEEDE7ELL) + 0x3FC5BFD7BF9FEFD0 + ((2 * (v77 - 0x287790ACDEDC35C0)) & 0x9F7DC3F7B9DDBCFCLL);
  STACK[0x5D0] = v77;
  STACK[0x5D8] = v65;
  STACK[0x5E8] = v80;
  STACK[0x5F8] = v81;
  LOBYTE(STACK[0x607]) = v101 >> (8 * (v81 & 7u));
  STACK[0x608] = v81 + 1;
  LOBYTE(STACK[0x617]) = v119;
  STACK[0x618] = v65;
  STACK[0x620] = v120;
  return (*(a46 + 8 * (v75 + 161467495)))(v80, v120, (v79 ^ 0x1FD7E5F7BDAFFFFELL) - 0x10534424212131B0 + ((2 * v79) & 0x3FAFCBEF7B5FFFFCLL), &a65, a42, v77, v119, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_10010399C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v13 = (*v8 ^ a7) | ((*v7 ^ v9) << 8);
  LOWORD(STACK[0x2D6]) = v13 - 2 * (v13 & 0x6C0F ^ (*v8 ^ a7) & 4) + 27659;
  *(a4 + 352) = v10;
  return (*(v11 + 8 * (v12 + 161469442)))();
}

uint64_t sub_1001041D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = (v8 ^ v11) + a6;
  *(a4 + 280) = v13 + 10;
  v13 -= 0x287790AC94110B67;
  v14 = v13 < 0x4ACB2A55;
  v15 = v13 > a8;
  if (a8 < 0x4ACB2A55 != v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  LODWORD(STACK[0x330]) = v12 + 28;
  return (*(v9 + 8 * ((a1 + v10 + 2868) ^ (8 * v16))))();
}

uint64_t sub_1001043CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39)
{
  LODWORD(STACK[0x46C]) = -1418238986;
  STACK[0x470] = a39;
  return (*(v40 + 8 * v39))();
}

uint64_t sub_100104448@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  *a30 = v31;
  LODWORD(STACK[0x47C]) = v30;
  return (*(v32 + 8 * a1))();
}

uint64_t sub_10010456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = LOWORD(STACK[0x2D6]) == (((v49 + 32497) | 0x480) + 13302);
  LODWORD(STACK[0x330]) = v48 + 20;
  return (*(v47 + 8 * ((693 * v50) ^ (a1 + v49 + 192))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_10010461C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v45 = v42 + v43 - 1545;
  LODWORD(STACK[0x434]) = v45;
  return (*(v44 + 8 * ((((v42 + v43 + 1270) | 0x142) ^ 0xAE5) + v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1001046BC@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0x87C]) == ((a1 - 2700) ^ 0xAB777271);
  LODWORD(STACK[0x3E4]) = STACK[0x87C];
  return (*(v1 + 8 * ((v2 * ((a1 - 1384242908) & 0x5281F3FF ^ 0x6C38)) ^ a1)))();
}

uint64_t sub_100104718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61)
{
  v63 = STACK[0x218];
  v64 = *(STACK[0x218] - 0x4761F68478C333EDLL);
  STACK[0x768] = STACK[0x218];
  STACK[0x770] = v64;
  STACK[0x778] = a61;
  STACK[0x780] = a61 - 0x4761F68478C333EDLL;
  *(a61 - 0x4761F68478C333EDLL) = v64;
  v65 = v63 - 0x4761F68478C333F5;
  v66 = *(v63 - 0x4761F68478C333F5);
  STACK[0x788] = v65;
  STACK[0x790] = a61 - 0x4761F68478C333F5;
  *(a61 - 0x4761F68478C333F5) = v66;
  STACK[0x3D8] = v66;
  return (*(v62 + 8 * (((v64 == 0x4761F68478C333F5) * (v61 - 19264 + ((v61 - 5927) | 0x60))) ^ v61)))();
}

uint64_t sub_1001047C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(v4 + 112) - 0x4761F68478C333F5) = *(v4 + 120);
  *(a3 + 536) = **(v4 + 144);
  return (*(v5 + 8 * v3))();
}

uint64_t sub_1001047F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 536);
  *(v4 + 152) = v6;
  return (*(v5 + 8 * (((v6 != 0x4761F68478C333F5) * (((v3 + 7889) | 0x4A0) - 15590)) ^ v3)))();
}

uint64_t sub_10010497C()
{
  v3 = (v1[13] - 0x4761F68478C333DDLL);
  v4 = *v3;
  v1[20] = v3;
  v1[21] = v4;
  return (*(v2 + 8 * (((((v0 + 25) ^ (v4 == 0)) & 1) * (v0 - 16314)) ^ v0)))();
}

uint64_t sub_1001049D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = (*(v48 + 8 * (v46 ^ 0x6A8C)))(*(v47 + 168));
  **(v47 + 160) = 0;
  return (*(a46 + 8 * v46))(v49);
}

uint64_t sub_100104A28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(v5 + 104) != 0x4761F68478C333F5;
  LODWORD(STACK[0x3E8]) = -1418238986;
  return (*(v6 + 8 * ((v7 * (((v4 + a4) ^ 0xF6605261) - 3787)) ^ v4)))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_100104A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  (*(v48 + 8 * (v46 ^ 0x5C27)))(*(v47 + 136));
  STACK[0x218] = 0x4761F68478C333F5;
  LODWORD(STACK[0x3E8]) = -1418238986;
  return (*(a46 + 8 * v46))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_100104B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *(v64 - 152) = v62 + 2054851651 * ((1488309191 - ((v64 - 152) | 0x58B5CBC7) + ((v64 - 152) | 0xA74A3438)) ^ 0x2BE49B1E) + 12849;
  (*(v63 + 8 * (v62 + 17591)))(v64 - 152);
  v65 = *(a62 - 0x270676553BF336B9);
  LODWORD(STACK[0x388]) = *(v64 - 144) ^ 0x437C99EC;
  LODWORD(STACK[0x38C]) = 1082348533;
  STACK[0x390] = v65;
  return (*(v63 + 8 * (v62 + (v62 ^ 0x26BA) + 145)))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_100104C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v60[10] = a59;
  v60[11] = a59 - 0xAB5C364D980814ALL;
  v62 = *(a59 - 0xAB5C364D980814ALL);
  v60[12] = v62;
  return (*(v61 + 8 * (((v62 == 0x4761F68478C333F5) * (((v59 + 537654837) | 0x80610801) + 1603450904)) ^ v59)))(a1, a2, a3, a4, a5, 161478555);
}

uint64_t sub_100104C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int a3@<W8>)
{
  v6 = *(v4 + 80);
  **(v4 + 88) = v3;
  *(v6 - 0xAB5C364D9808152) = v3;
  LODWORD(STACK[0x3E8]) = -1418238986;
  return (*(v5 + 8 * (a3 ^ 0xA06D460D ^ (6248 * (a3 < 0xBBB80D48)))))(a1, 0xAB5C364D9808152, a2, 4133486632);
}

uint64_t sub_100104D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = *(v4 + 88);
  *(*(v4 + 96) - 0x4761F68478C333F5) = v3;
  *(v3 - 0x4761F68478C333EDLL) = *v6;
  *v6 = v3;
  LODWORD(STACK[0x3E8]) = -1418238986;
  return (*(v5 + 8 * (a3 + 1603456611)))(a1, 0xAB5C364D9808152, a2, 4133486632);
}

uint64_t sub_100104D84()
{
  v3 = LODWORD(STACK[0x6F4]) == (v1 ^ 0x5D1727E3);
  LODWORD(STACK[0x334]) = STACK[0x6F4];
  return (*(v2 + 8 * ((14817 * v3) ^ (v0 + v1 + 728))))();
}

uint64_t sub_100104EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v5 + v4 + 2250;
  **(a3 + 872) = v3;
  v8 = STACK[0x204];
  *(a3 + 376) = v3;
  LODWORD(STACK[0x344]) = v8;
  return (*(v6 + 8 * v7))();
}

uint64_t sub_100104F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x344];
  *(a3 + 1128) = *(a3 + 376);
  LODWORD(STACK[0x368]) = v5;
  return (*(v4 + 8 * (((((v3 + 1180695802) | 0xB0004001) ^ 0xF66055FF ^ ((v3 + 2678) | 0x48)) * (v5 == -1418238986)) ^ v3)))(a1, 0xAB5C364D9808152);
}

uint64_t sub_100104FB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = *(a40 - 0x6BBFEBF589A7D72FLL);
  v59 = a3[141];
  a3[30] = v59;
  LODWORD(STACK[0x278]) = -1994968417;
  LODWORD(STACK[0x24C]) = 1722032233;
  LODWORD(STACK[0x370]) = v58;
  LODWORD(STACK[0x374]) = -1994968417;
  a3[55] = v59;
  LODWORD(STACK[0x380]) = 1937539342;
  return (*(v57 + 8 * v56))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_100105070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = **(a3 + 872);
  v60 = ((12 * (v56 ^ 0x1080)) ^ 0xB6150DEB) + (*(a40 - 0x6BBFEBF589A7D703) - 24) - ((2 * (*(a40 - 0x6BBFEBF589A7D703) - 24)) & 0x196);
  *(a3 + 240) = v59;
  LODWORD(STACK[0x278]) = -935778866;
  LODWORD(STACK[0x24C]) = -969426492;
  LODWORD(STACK[0x370]) = v60;
  LODWORD(STACK[0x374]) = -935778866;
  *(a3 + 440) = v59;
  LODWORD(STACK[0x380]) = v57;
  return (*(v58 + 8 * v56))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_10010517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = **(a3 + 872);
  v51 = *(a40 - 0x6BBFEBF589A7D6FFLL);
  v52 = *(a40 - 0x6BBFEBF589A7D6F7);
  *(a3 + 264) = v50;
  LODWORD(STACK[0x2BC]) = 2134048378;
  LODWORD(STACK[0x274]) = -2086537762;
  *(a3 + 152) = v51;
  LODWORD(STACK[0x248]) = 99514246;
  LODWORD(STACK[0x3EC]) = v52;
  *(a3 + 560) = v51;
  LODWORD(STACK[0x3FC]) = -2086537762;
  *(a3 + 576) = v50;
  LODWORD(STACK[0x40C]) = 2134048378;
  return (*(v49 + 8 * v48))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_10010529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = **(a3 + 872);
  v52 = *(a40 - 0x6BBFEBF589A7D71FLL);
  v53 = *(a40 - 0x6BBFEBF589A7D717);
  *(a3 + 264) = v51;
  LODWORD(STACK[0x2BC]) = v49;
  LODWORD(STACK[0x274]) = -732881184;
  *(a3 + 152) = v52;
  LODWORD(STACK[0x248]) = 99514247;
  LODWORD(STACK[0x3EC]) = v53;
  *(a3 + 560) = v52;
  LODWORD(STACK[0x3FC]) = -732881184;
  *(a3 + 576) = v51;
  LODWORD(STACK[0x40C]) = v49;
  return (*(v50 + 8 * v48))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_10010538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = **(a3 + 872);
  v52 = *(a40 - 0x6BBFEBF589A7D70FLL);
  v53 = *(a40 - 0x6BBFEBF589A7D707);
  *(a3 + 264) = v51;
  LODWORD(STACK[0x2BC]) = v49;
  LODWORD(STACK[0x274]) = -1183887118;
  *(a3 + 152) = v52;
  LODWORD(STACK[0x248]) = 99514244;
  LODWORD(STACK[0x3EC]) = v53;
  *(a3 + 560) = v52;
  LODWORD(STACK[0x3FC]) = -1183887118;
  *(a3 + 576) = v51;
  LODWORD(STACK[0x40C]) = v49;
  return (*(v50 + 8 * v48))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_100105484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(a3 + 1136) = **(a3 + 872);
  v50 = *(a3 + 56);
  v51 = &STACK[0x970] + v50;
  v52 = v50 + ((v46 + 735580958) & 0xD427E7FE ^ 0x74ALL);
  *(a3 + 56) = v52;
  (*(v49 + 8 * (v46 + 15946)))(&STACK[0x970] + v50, 0, 16);
  (*(a46 + 8 * (v46 ^ 0x41BA)))(v51 + 16, 0, 32);
  LODWORD(STACK[0x214]) = v47;
  LODWORD(STACK[0x244]) = v47;
  v53 = STACK[0x630] == 0x270676553BF336C1;
  STACK[0x358] = v52;
  LODWORD(STACK[0x364]) = v48;
  return (*(a46 + 8 * ((v53 * ((v46 - 2709) ^ 0x6A4)) ^ v46)))(161467495);
}

uint64_t sub_1001055A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[142] - 0x270676553BF336C1);
  a3[29] = 0;
  LODWORD(STACK[0x28C]) = v4;
  a3[88] = v5 + 8 * v3;
  a3[89] = a3[103];
  a3[90] = &STACK[0x28C];
  a3[91] = v6;
  return (*(v5 + 8 * (v3 ^ 0x1CBA ^ (v3 + 13812))))();
}

uint64_t sub_100105634(int a1)
{
  v3 = LODWORD(STACK[0x92C]) == ((941 * (((a1 + v1 + 2558) | 0x2480) ^ 0x3EFF)) ^ 0xAB777197);
  LODWORD(STACK[0x34C]) = STACK[0x92C];
  return (*(v2 + 8 * ((14116 * v3) ^ (a1 + v1 + 485))))();
}

uint64_t sub_100105690(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = a3[29];
  LODWORD(STACK[0x63C]) = STACK[0x28C];
  a3[2] = v49;
  a3[26] = 0x4E1BD1CAB7976E0CLL;
  a3[12] = 0;
  v50 = (*(v48 + 8 * (v46 ^ 0x5837)))(16);
  STACK[0x640] = v50;
  STACK[0x268] = v50 + 0xAB5C364D9808152;
  LODWORD(STACK[0x34C]) = v47 + 2;
  return (*(a46 + 8 * ((((v46 ^ (v50 == 0)) & 1) * ((v46 - 1025) ^ 0xE6D)) ^ v46)))(161467495);
}

uint64_t sub_10010576C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 1152);
  *v5 = 0x4761F68478C333F5;
  v5[1] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (v3 | 0x1100)))();
}

uint64_t sub_1001057BC@<X0>(uint64_t a1@<X2>, int a2@<W5>, uint64_t a3@<X8>)
{
  *(a1 + 1160) = a3;
  v8 = v4 ^ v6;
  *(a1 + 1168) = v8;
  v9 = a3 - 0x4E1BD1CA2FAAA4C5;
  v10 = v8 + 2280442183;
  v12 = v9 > 0x87ECC946 && v9 < v10;
  return (*(v7 + 8 * ((v12 * (a2 + v3 - 10171)) ^ (v5 + v3 + 154))))();
}

uint64_t sub_100105820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  *(a3 + 1176) = v6;
  LODWORD(STACK[0x348]) = v4;
  return (*(v5 + 8 * ((((((v3 - 1525646005) & 0x5AEF57B6) + 148) ^ 0x1138) * (v6 == 0)) ^ (v3 + 1153))))();
}

uint64_t sub_100105870@<X0>(void *a1@<X2>, unsigned int a2@<W8>)
{
  v4 = ((2 * a1[146]) & 0xEAE55E9ALL) + (a1[146] ^ 0x95D2375F7572AF4DLL);
  a1[148] = v4;
  LODWORD(v4) = v4 - a1[145] + (((a2 - 150) | 2) ^ 0xB8499A6B4224AE07) < 0xFFFFFFFFFFFFFFF6;
  LODWORD(STACK[0x348]) = v2 + 28;
  return (*(v3 + 8 * ((3565 * v4) ^ a2)))();
}

uint64_t sub_1001058EC@<X0>(void *a1@<X2>, int a2@<W8>)
{
  v4 = a1[145];
  v5 = a1[147];
  v6 = v4 - 0x4E1BD1CAB7976E02 + v5;
  v7 = (*(v6 - 10) << 24) | (*(v5 + ((((a2 - 1842421651) & 0x6DD11EFEu) - 161467549) ^ 0xB1E42E35BE08D5E0) + v4) << 16) | (*(v6 - 8) << 8);
  LODWORD(STACK[0x66C]) = (v7 | *(v6 - 7)) + v2 - 2 * ((v7 | *(v6 - 7)) & 0x36151DCF ^ *(v6 - 7) & 4);
  LOWORD(v7) = *(((2 * (v4 - 0x4E1BD1CAB7976E08)) & 0x1B7A7F7DFFFFF7F6) + ((v4 - 0x4E1BD1CAB7976E08) ^ 0xCDBD3FBEFFFFFBFBLL) + v5 + 0x3242C04100000405);
  LOWORD(v6) = *(((2 * (v4 - 0x4E1BD1CAB7976E08)) & 0x1B7A7F7DFFFFF7F6) + ((v4 - 0x4E1BD1CAB7976E08) ^ 0xCDBD3FBEFFFFFBFBLL) + v5 + 0x3242C04100000406);
  LOWORD(v6) = (v6 | (v7 << 8)) - 2 * ((v6 | (v7 << 8)) & 0x635 ^ v6 & 4) - 31180;
  LOWORD(STACK[0x670]) = v6;
  LOWORD(STACK[0x672]) = v6 - 3;
  v8 = (((2 * (v4 - 0x4E1BD1CAB7976E06)) & 0x3FEF7D7B3F3FFFCELL) + ((v4 - 0x4E1BD1CAB7976E06) ^ 0xDFF7BEBD9F9FFFE7) + v5 + 0x2008414260600019);
  v9 = (*v8 << 24) | (v8[1] << 16) | (v8[2] << 8);
  LODWORD(v8) = (v9 | v8[3]) + v2 - 2 * ((v9 | v8[3]) & 0x36151DCF ^ v8[3] & 4);
  LODWORD(STACK[0x674]) = v8;
  v10 = (v8 ^ v2) + v4;
  a1[151] = v10 + 10;
  v11 = v10 - 0x4E1BD1CA0D14714ELL;
  v12 = a1[148] + 0x6A2DC8A135104D67;
  v14 = v12 > 0xAA82FCB3 && v11 > v12;
  return (*(v3 + 8 * ((61 * v14) ^ (a2 + 12055))))(161467495);
}

uint64_t sub_100105D3C@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  a1[12] = a1[147] + a1[145] + a2;
  a1[26] = a1[151];
  return (*(v5 + 8 * ((2 * (((v4 + 2 * (v2 ^ 0x68) + 74) ^ (LODWORD(STACK[0x66C]) == v3)) & 1)) & 0xF7 | (8 * (((v4 + 2 * (v2 ^ 0x68) + 74) ^ (LODWORD(STACK[0x66C]) == v3)) & 1)) | (2 * (v2 ^ 0x1368)))))();
}

uint64_t sub_100105F04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  v59 = a3[21];
  v60 = a3[12];
  LODWORD(STACK[0x39C]) = STACK[0x66C];
  a3[60] = v59;
  LOWORD(STACK[0x3AE]) = STACK[0x672];
  a3[62] = v60;
  a3[63] = a53;
  LODWORD(STACK[0x3C0]) = a55;
  LODWORD(STACK[0x3C4]) = STACK[0x674];
  return (*(v58 + 8 * ((v56 + v55 - 399) ^ 0x1CB4 ^ (2874 * (v55 ^ v57)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_100106018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  a3[20] = v46;
  v48 = a3[102];
  a3[18] = v48;
  a3[79] = v48;
  return (*(v47 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100106088@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W8>)
{
  *(a2 + 48) = v4;
  LODWORD(STACK[0x34C]) = a3;
  return (*(v5 + 8 * (a1 + v3 + 485)))();
}

uint64_t sub_1001060BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x684]) = STACK[0x34C];
  v5 = *(a3 + 232);
  *(a3 + 1224) = v5;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 14074) | 0x1016) + (v3 ^ 0xFFFFD71C))) ^ v3)))();
}

uint64_t sub_100106104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v65 ^ 0x25D4;
  (*(v66 + 8 * (v67 + 12069)))(*(a3 + 1224));
  return (*(a46 + 8 * v67))(161467495, 0xAB5C364D9808152, &a65, 4133486632);
}

uint64_t sub_10010616C()
{
  v2 = LODWORD(STACK[0x684]) == -1418238986;
  LODWORD(STACK[0x354]) = STACK[0x684];
  return (*(v1 + 8 * (((5 * ((v0 + 1134533320) & 0xBC605DB5 ^ 0x118B) + 10180) * v2) ^ v0)))();
}

uint64_t sub_1001061C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  *a3 = *(v5 + 8 * v3);
  LODWORD(STACK[0x388]) = v4;
  LODWORD(STACK[0x38C]) = -815579951;
  a3[58] = v6;
  return (*(v5 + 8 * (v3 + ((v3 - 2031703652) & 0x791973EC) + 148)))();
}

uint64_t sub_100106210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 464);
  *(a3 + 1312) = v7;
  LODWORD(STACK[0x6EC]) = STACK[0x38C];
  LODWORD(STACK[0x6F0]) = STACK[0x388];
  LODWORD(STACK[0x398]) = v4;
  return (*(v6 + 8 * (((v7 == a2) * ((v3 - 144004261) & 0xFEF57595 ^ (v5 + 125))) ^ v3)))();
}

uint64_t sub_100106268(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  LODWORD(STACK[0x39C]) = STACK[0x6EC];
  a3[60] = a3[164];
  LOWORD(STACK[0x3AE]) = 4422;
  a3[62] = 0;
  a3[63] = 0x8C38D1834A63647;
  LODWORD(STACK[0x3C0]) = STACK[0x6F0];
  LODWORD(STACK[0x3C4]) = v41 + 4;
  return (*(v42 + 8 * (((v40 - 3248) ^ 0x1FD8) + v40 - 7557)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_100106320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  a3[24] = 0;
  v60 = *(a58 - 0x270676553BF336B9);
  a3[88] = v59 + 8 * v58;
  a3[89] = a3[106];
  a3[90] = &STACK[0x214];
  a3[91] = v60;
  return (*(v59 + 8 * (v58 ^ 0x1C8A ^ (v58 + 539784708) & 0xDFD3BFFF)))();
}

uint64_t sub_100106440(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = a3[6];
  v58 = a3[24];
  v59 = STACK[0x214];
  LODWORD(STACK[0x414]) = 1262304268;
  a3[75] = v57;
  LODWORD(STACK[0x424]) = v59;
  a3[77] = v58;
  return (*(v56 + 8 * ((((v55 - 633) | 0x1410) ^ 0x130A) + v55)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_100106520@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(a1 + 192);
  *(a1 + 1232) = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((a2 ^ 0x1A37) - 2848)) ^ a2)))();
}

uint64_t sub_1001065F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *(a3 + 1240) = a58;
  LODWORD(STACK[0x354]) = v59 + 3;
  return (*(v60 + 8 * v58))();
}

uint64_t sub_100106768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a3 + 1248) = a57;
  v74 = (*(v73 + 8 * (v71 + 1948)))();
  STACK[0x6A8] = &a71;
  v75 = a71;
  STACK[0x6B0] = a71;
  LODWORD(STACK[0x350]) = v72;
  return (*(a46 + 8 * (((v75 == 0xAB5C364D9808152) * ((v71 ^ 0x722E) - 18462 + 2 * (v71 ^ 0x4EA0))) ^ v71)))(v74);
}

uint64_t sub_1001067F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = a3[155];
  v70 = *(v69 - 0x270676553BF33669);
  v71 = a3[156];
  v72 = 358777457 * ((((v67 - 152) | 0x6DBE7CEF) - ((v67 - 152) & 0x6DBE7CEF)) ^ 0x216789D);
  v66[117] = a3[158];
  v66[115] = v71;
  *(v67 - 116) = 593035557 - v72;
  *(v67 - 112) = 1789030517 - v72;
  *(v67 - 120) = v65 - v72 - 10569;
  *(v67 - 140) = ((v65 - 6255) ^ 0x134DDD7) + v72 + v70;
  v66[118] = v69 - 0x270676553BF336A9;
  v73 = (*(v68 + 8 * (v65 ^ 0x7A89)))(v67 - 152);
  LODWORD(STACK[0x350]) = *(v67 - 144);
  return (*(a46 + 8 * v65))(v73, 0xAB5C364D9808152, &a65);
}

uint64_t sub_1001068F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = LODWORD(STACK[0x350]) == ((v5 - 1461371937) & 0x571ABC9E ^ 0xAB777362);
  LODWORD(STACK[0x354]) = STACK[0x350];
  return (*(v6 + 8 * ((12850 * v7) ^ v5)))(161467495, a2, a3, 4133486632, a5, 161478555);
}

uint64_t sub_10010695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = **(a3 + 1256);
  v59 = *(a3 + 1248);
  LODWORD(STACK[0x414]) = -365885575;
  *(a3 + 600) = v58;
  LODWORD(STACK[0x424]) = v56 + 32;
  *(a3 + 616) = v59;
  return (*(v57 + 8 * (v55 - 5475 + ((v55 - 1858487232) & 0x6EC63FFF) - 3310)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_100106A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[6];
  a3[88] = v4 + 8 * v3;
  a3[89] = a3[105];
  a3[90] = &STACK[0x244];
  a3[91] = v5;
  return (*(v4 + 8 * (v3 ^ 0x1C88 ^ (v3 + 13826))))();
}

uint64_t sub_100106ABC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v7 = *(a2 + 728);
  v8 = *(a2 + 720);
  v3[48] = v7;
  v3[49] = v8;
  v9 = **(a2 + 704);
  v3[50] = *(a2 + 712);
  v3[51] = v9;
  LODWORD(STACK[0x4D4]) = v4;
  return (*(v6 + 8 * (((((111 * (a3 ^ 0x53)) ^ (v7 == a1)) & 1) * ((a3 - 8804895) & 0xF6E666D7 ^ (v5 + 216))) ^ a3)))();
}

uint64_t sub_100106B74()
{
  v4 = (v2[48] - 0xAB5C364D9808152);
  v5 = *v4;
  v2[52] = v4;
  v2[53] = v5;
  LODWORD(STACK[0x4AC]) = 1349539562;
  return (*(v3 + 8 * ((22 * (v5 + 0x748AB8FF8F2B2CF0 != v1)) ^ v0)))();
}

uint64_t sub_100106BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 736) = *(v4 + 424);
  LODWORD(STACK[0x4A8]) = 1349539562;
  return (*(v5 + 8 * (((v3 + 68414580) | 0x732100C5) ^ (((v3 + 68414580) | 0x732100C5) - 1999958998) ^ 0x77350C66 ^ (503 * (((v3 + 68414580) | 0x732100C5) != 2113903509)))))(a1, 2773882102, 2773890910, 3875704653, 12616);
}

uint64_t sub_100106C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v12 - *(a6 - 0x4761F68478C333E5);
  v15 = a8 + v11 > v14;
  if ((a8 + v11) < 0x76ACD981 != v14 < 0x76ACD981)
  {
    v15 = (a8 + v11) < 0x76ACD981;
  }

  return (*(v13 + 8 * ((((((v9 ^ v10) - 24) ^ v15) & 1) * v8) ^ v9)))();
}

uint64_t sub_100106D48(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  LODWORD(STACK[0x4A8]) = v7;
  LODWORD(STACK[0x8B4]) = v9;
  STACK[0x4A0] = a6;
  *(v10 + 440) = v8;
  LODWORD(STACK[0x8C4]) = a1;
  LODWORD(STACK[0x4AC]) = v7;
  return (*(v11 + 8 * (((((a7 + 1521078642) | 0x1580) ^ 0x5AA9E478) + a7) ^ (24995 * (a7 == -2121753869)))))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_100106DD8()
{
  v3 = STACK[0x4AC];
  LODWORD(STACK[0x8C8]) = STACK[0x4AC];
  LODWORD(STACK[0x8CC]) = v3 & 0xF;
  LODWORD(STACK[0x8D0]) = 1972369734 - (v3 & 0xF);
  LODWORD(STACK[0x4D4]) = v1 + 28;
  return (*(v2 + 8 * ((8883 * (v3 - 1188076287 + ((v0 - 160274436) & 0xFFEDC675) - (v3 & 0xF) + 16 < 0xFFFFFFF6)) ^ v0)))();
}

uint64_t sub_100106E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = v65 + 9680;
  v70 = LODWORD(STACK[0x8D0]) + LODWORD(STACK[0x8C8]) - (((((v65 - 2120) | 0x80) ^ 0x73FF520F) + 2 * (LODWORD(STACK[0x8D0]) + LODWORD(STACK[0x8C8]))) & 0x6C2A3B96) - 267072075;
  LODWORD(STACK[0x8D4]) = v70;
  v71 = (*(v68 + 8 * ((v65 + 9680) ^ 0x7125)))(v70 ^ (((v65 - 465572239) | 0x12204001u) - 1078666826));
  *(v66 + 472) = v71;
  LODWORD(STACK[0x4D4]) = v67 + 2;
  return (*(a46 + 8 * ((243 * (v71 == 0)) ^ v69)))(161467495, 0xAB5C364D9808152, &a65, 4133486632);
}

uint64_t sub_100106F3C()
{
  v3 = **(v1 + 416);
  *(v1 + 480) = v3;
  LODWORD(STACK[0x4C4]) = 1975987419;
  return (*(v2 + 8 * (((v3 == 0x4761F68478C333F5) * (((v0 + 13237) | 0x201) - 16297)) ^ v0)))();
}

uint64_t sub_100106FAC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = *(v3 + 8 * (a2 - 10690));
  *(a1 + 752) = *(v2 + 480);
  LODWORD(STACK[0x4B8]) = 1975987419;
  return v4(0x648F3655AB3EBC47, 0xF10ABB52F2CE107CLL, 0x475D9ED9F33B10C6, 0x5C5130930662779CLL);
}

uint64_t sub_100107370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned int a44, uint64_t a45, uint64_t a46)
{
  v62 = ((a6 - 1) | (((a6 - 1) < 0x45FAE98) << 32)) + a8;
  v63 = v62 + v60 + v48;
  v64 = __ROR8__(v63 & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = ((v64 + 0x72B0B1A0EB3E1587) & v50 ^ a1) + ((v64 + 0x72B0B1A0EB3E1587) & v49 ^ (a5 + v52)) - 1;
  v66 = v65 ^ a3;
  v67 = v65 ^ a2;
  v68 = __ROR8__(v66, 8);
  v69 = ((a4 & (2 * (v68 + v67))) - (v68 + v67) + v47) ^ a7;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x7EDA10D8E8BDE475;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xCB1FD105091A75A6;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x80A3287483B4C7C9;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x8562C5B0FD26117BLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (v46 - ((v79 + v78) | v46) + ((v79 + v78) | v54)) ^ v53;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  *(v51 + v62 + v61) = ((((v56 | (2 * (v82 + v81))) - (v82 + v81) + v57) ^ v58) >> (8 * (v63 & 7u))) ^ *v63;
  return (*(a46 + 8 * (((v55 == 0) * v59) ^ a44)))();
}

uint64_t sub_100107554(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x4A8]) = v8;
  LODWORD(STACK[0x8B4]) = v8;
  STACK[0x4A0] = v7;
  *(v9 + 440) = v7;
  LODWORD(STACK[0x8C4]) = a1;
  LODWORD(STACK[0x4D4]) = v10 + 28;
  LODWORD(STACK[0x4AC]) = v6;
  return (*(v11 + 8 * a6))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_1001075AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, int a39, uint64_t a40, unint64_t a41, unint64_t a42)
{
  LODWORD(STACK[0x4B8]) = a7;
  LODWORD(STACK[0x8EC]) = v42;
  STACK[0x4B0] = a5;
  STACK[0x8F0] = v43;
  STACK[0x8F8] = a42;
  STACK[0x900] = a41;
  LODWORD(STACK[0x90C]) = a39;
  LODWORD(STACK[0x4C0]) = v45;
  STACK[0x910] = a37;
  LODWORD(STACK[0x4BC]) = a6;
  LODWORD(STACK[0x4C4]) = a7;
  return (*(v46 + 8 * v44))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_100107650@<X0>(int a1@<W8>)
{
  v4 = (LODWORD(STACK[0x4C4]) - 1975987419);
  v5 = ((2 * v4) & 0x1B7F9FF74) + (v4 ^ 0x3BF3757ADBFCFFBALL);
  v6 = v1[59];
  v7 = v6 - 0x3BF3757ADBFCFFBALL + v5;
  *v7 = 0;
  *(v7 + 2) = 0;
  *(v6 + v5 + ((a1 - 13577) ^ (v2 + 1670) ^ 0xC40C8A85D263445CLL)) = 0;
  *(v6 + ((2 * (v4 + 4)) & 0x1EDBEFFEELL) + ((v4 + 4) ^ 0xFFFD8FF7F6DF7FF7) + 0x2700809208009) = -9392;
  v8 = (2 * LODWORD(STACK[0x8D0]) + 20) & 0x56;
  v9 = LODWORD(STACK[0x8CC]);
  v10 = v6 + ((2 * (v4 + 6)) & 0x1FEDD6FF6) + ((v4 + 6) ^ 0xBEB6EDFAFF6EB7FBLL) + 0x4149120500914805;
  *v10 = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = (-69 - v9 - v8) ^ 0xAB;
  v1[67] = v6 + (v4 + 10);
  v11 = ((16 - v9) ^ 0x7966FD6EFDF29FA6) - 0x7966FD6ED8228463 + ((2 * (16 - v9)) & 0xC);
  v1[68] = v11;
  LOBYTE(STACK[0x92B]) = v11 < 0x25D01B43;
  return (*(v3 + 8 * ((54 * (v11 != 634395459)) ^ a1)))();
}

uint64_t sub_10010788C@<X0>(uint64_t a1@<X8>)
{
  *(v5 + a1) = 0;
  if (v3 != v1 < v6)
  {
    v9 = v3;
  }

  else
  {
    v9 = v1 < v4;
  }

  return (*(v8 + 8 * ((v9 * v7) ^ v2)))();
}

uint64_t sub_1001078EC(int a1)
{
  v4 = v2[49];
  *(v2[50] - 0x6AE5343760D480CELL) = v2[59];
  *v4 = STACK[0x8D4];
  LODWORD(STACK[0x4D4]) = -1418238986;
  return (*(v3 + 8 * (a1 + v1 + 1186)))();
}

uint64_t sub_100107998@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(a1 + 112) = *(a1 + 32);
  LODWORD(STACK[0x29C]) = STACK[0x244];
  LODWORD(STACK[0x354]) = -1418238986;
  return (*(v2 + 8 * (a2 + 4087)))();
}

uint64_t sub_1001079F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = a3[104];
  a3[18] = v64;
  LODWORD(a55) = 2073720840;
  a3[79] = v64;
  return (*(v63 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100107A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a3 + 408) = *(a3 + 56);
  LODWORD(STACK[0x364]) = a71;
  return (*(v72 + 8 * v71))();
}

uint64_t sub_100107A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0x364];
  *(a3 + 56) = *(a3 + 408) - 80;
  LODWORD(STACK[0x368]) = v6;
  return (*(v5 + 8 * ((10433 * (v6 == (v3 ^ (v4 - 264) ^ 0x5D1727E3))) ^ v3)))();
}

uint64_t sub_100107AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(a32 - 0x6D77B9B5EEF59270) = *(a3 + 112);
  *(a33 - 0x400EB7F470E183C7) = ((v33 - 153065285) & 0xFF7FD43F ^ LODWORD(STACK[0x29C]) ^ 0x407559DE) - ((2 * ((v33 - 153065285) & 0xFF7FD43F ^ LODWORD(STACK[0x29C]) ^ 0x407559DE)) & 0x1DD973A00) + 0x4EEEA48CEECB9D00;
  LODWORD(STACK[0x368]) = -1418238986;
  return (*(v34 + 8 * v33))();
}

uint64_t sub_100107B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (a9 ^ v42) + 17735;
  v45 = 137 * (a9 ^ v42);
  v46 = a9 + 161482142;
  v48 = LODWORD(STACK[0x368]) == v45 - 1418239260;
  v47 = *(a3 + 112);
  *(a3 + 1272) = v47;
  v48 = v48 || v47 == 0;
  v49 = v48;
  return (*(v43 + 8 * ((v49 * (v44 ^ 0x4542)) ^ v46)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_100107BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  (*(v47 + 8 * (v46 + 1290)))(*(a3 + 1272));
  STACK[0x230] = 0;
  return (*(a46 + 8 * v46))(161467495, 0xAB5C364D9808152);
}

uint64_t sub_100107C54@<X0>(void *a1@<X2>, int a2@<W8>)
{
  *(v3 + 280) = v2;
  v5 = *(v4 + 8 * SLODWORD(STACK[0x434]));
  a1[1] = v5;
  a1[13] = v2;
  a1[80] = v5;
  return (*(v4 + 8 * (((v2 == 0x2FBFEF81BE039977) * ((a2 ^ 0x3287) + 161446940 + ((a2 + 878720707) | 0xC2000000))) ^ a2)))();
}

uint64_t sub_100107CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(*(v53 + 280) - 0x2FBFEF81BE039977);
  *(v53 + 288) = v55;
  return (*(v54 + 8 * (((v55 != 0x270676553BF336C1) * (((v52 - 1250926243) ^ 0xB570AC66) + 29320)) ^ v52)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100107D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = *(v46 + 288) + 0x26DBCBADF30B4A5ELL;
  *(a3 + 144) = v48;
  *(a3 + 632) = v48;
  return (*(v47 + 8 * (a9 ^ 0xB570ADF2 ^ (7252 * (a9 >= ((a9 + 1098661541) & 0xFF73643D) + 1902703474)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100107EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (v5[70] + v4);
  v5[71] = v8;
  v9 = *v8;
  v5[72] = *v8;
  *(a3 + 256) = v9;
  return (*(v7 + 8 * (((v9 == a2) * ((v3 + 249) ^ 0xF66078B8 ^ (v6 + 73))) ^ v3)))();
}

uint64_t sub_100107F14@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = *(v2 + 576);
  v6 = *(v5 - 0xAB5C364D9808152);
  *(v2 + 584) = v6;
  *(a1 + 800) = v5;
  return (*(v4 + 8 * (((v6 + v3 == 0x76BB9E7403C9716ALL) * (((31 * (a2 ^ 0x3DB8)) ^ 0xFFFFE276) + ((a2 + 1659437121) & 0x9D16FF7F))) ^ a2)))();
}

uint64_t sub_10010808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v50 = (*(v49 + 8 * ((v47 - 1684) ^ 0x50A4)))(v46);
  *v48 = 0;
  return (*(a46 + 8 * (v47 - 1684)))(v50);
}

uint64_t sub_1001080D4()
{
  STACK[0x4D8] = v2;
  STACK[0x950] = v0;
  STACK[0x958] = v2;
  STACK[0x960] = v3;
  STACK[0x968] = v1;
  STACK[0x4E0] = STACK[0x2C0];
  return (*(v5 + 8 * v4))();
}

uint64_t sub_100108450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  (*(v62 + 8 * (v60 + 2022)))(a60 - 0x270676553BF336C1);
  v63 = STACK[0x228];
  *(v61 + 296) = STACK[0x228];
  return (*(a46 + 8 * ((255 * (v63 != 0x2FBFEF81BE039977)) ^ v60)))(161467495);
}

uint64_t sub_1001085CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a3 + 240);
  v68 = STACK[0x278];
  LODWORD(STACK[0x370]) = a64;
  LODWORD(STACK[0x374]) = v68;
  *(a3 + 440) = v67;
  LODWORD(STACK[0x380]) = a65;
  return (*(v66 + 8 * v65))();
}

uint64_t sub_1001085FC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x6C4]) = STACK[0x380];
  v4 = *(a1 + 440);
  *(a1 + 1288) = v4;
  LODWORD(STACK[0x6D4]) = STACK[0x374];
  LODWORD(STACK[0x6D8]) = STACK[0x370];
  LODWORD(STACK[0x384]) = v2;
  return (*(v3 + 8 * ((v4 == 0x270676553BF336C1) | a2)))();
}

uint64_t sub_1001086EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[161] - 0x270676553BF336C1);
  *a3 = *(v4 + 8 * v3);
  LODWORD(STACK[0x388]) = STACK[0x6D8];
  LODWORD(STACK[0x38C]) = STACK[0x6D4];
  a3[58] = v5;
  return (*(v4 + 8 * (v3 + v3 + 7554 + 141)))();
}

uint64_t sub_100108780(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[161] - 0x270676553BF336B9);
  *a3 = *(v4 + 8 * v3);
  LODWORD(STACK[0x388]) = STACK[0x6D8];
  LODWORD(STACK[0x38C]) = STACK[0x6D4];
  a3[58] = v5;
  return (*(v4 + 8 * ((v3 + 10067) ^ v3)))();
}

uint64_t sub_100108908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v57 = STACK[0x3C4];
  LODWORD(STACK[0x6F8]) = STACK[0x3C4];
  LODWORD(STACK[0x6FC]) = STACK[0x3C0];
  v58 = a3[62];
  a3[168] = a3[63];
  *(v53 + 8) = v58;
  LOWORD(STACK[0x712]) = STACK[0x3AE];
  v59 = a3[60];
  LODWORD(STACK[0x714]) = STACK[0x39C];
  v60 = v57 ^ (v54 - 1);
  v62 = v59 != a2 && v60 < 0xFFFFFFF6;
  LODWORD(STACK[0x3E8]) = v55;
  return (*(v56 + 8 * ((v62 * (((a9 ^ 0x1D0F) - v52 - 1121) ^ 0xF6604E18)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100108984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = (*(v64 + 8 * (v61 + 16091)))(32);
  *(v62 + 24) = v65;
  *(v62 + 32) = &a61;
  a61 = v65 + 0x4761F68478C333F5;
  LODWORD(STACK[0x3E4]) = v63 + 2;
  return (*(v64 + 8 * (((((7 * (v61 ^ 0xFA)) ^ (v65 == 0)) & 1) * ((v61 + 4248) ^ 0x1C8D)) ^ v61)))(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_100108A0C()
{
  v4 = STACK[0x718];
  *v4 = 0x4761F68478C333F5;
  *(v4 + 8) = 0x4761F68478C333F5;
  v5 = LODWORD(STACK[0x6F8]) ^ v3;
  LODWORD(STACK[0x72C]) = v5;
  v6 = ((v5 + 10) ^ 0x18FFFBDF) + ((2 * (v5 + 10)) & 0x31FFF7BE) + ((7 * ((v0 - 1434316820) & 0x557DD7D7 ^ 0x156)) ^ 0xFFFD7CF8);
  *(v4 + 16) = v6;
  v7 = (*(v1 + 8 * (v0 ^ 0x5645)))(v6 - 419260766);
  *(v4 + 24) = v7;
  STACK[0x730] = v4 + 24;
  LODWORD(STACK[0x3E4]) = v2;
  return (*(v1 + 8 * (v0 ^ (32 * (v7 != 0)))))();
}

uint64_t sub_100108AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  v50 = LOWORD(STACK[0x712]);
  v51 = LODWORD(STACK[0x6F8]) == v49 + 4;
  LOBYTE(STACK[0x73D]) = BYTE1(v50);
  v52 = *(v48 + 8 * ((v47 ^ 0x6E2) + v47));
  LOBYTE(STACK[0x73E]) = v50;
  LODWORD(a39) = v51;
  LOBYTE(STACK[0x73F]) = v51;
  STACK[0x4E8] = 0x2FC92220EDE8F7EBLL;
  LODWORD(a38) = STACK[0x6FC];
  LODWORD(a43) = (v50 >> 8) ^ 0x86;
  LODWORD(a42) = v50 ^ 0x31;
  LODWORD(a37) = (a46 - 585057303) & 0x2C7FD6EB;
  LODWORD(a41) = a37 - 51233;
  return v52(0xCB1FD105091A75A6, 0x80A3287483B4C7C9, a3, 0x97F56CB0FB361A73, *(v46 + 48), 0x6837293C7DC4FA3ELL, 0xCBE46B61C11D82E1, 0xA3EEF82EC5D4676CLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100108C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, int a43, char a44)
{
  v51 = *a5;
  v52 = *a5 + 4;
  v53 = __ROR8__(v52 & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = (0xD4F4E5F14C1EA78 - v53) & 0x4CD81EFE8FE3B1B9 | (v53 + v45) & 0xB327E101701C4E46;
  v55 = v54 ^ 0x189F288B139DDC92;
  v56 = (v49 + 161465591) ^ 0x8D1AA58C4A6D79A5 ^ v54;
  v57 = (__ROR8__(v55, 8) + v56) ^ v44;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v47;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ a1;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) & 0xDA36B97DC122FFD4) - (v63 + v62) - 0x6D1B5CBEE0917FEBLL) ^ 0x12478B359CDA47DCLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ v46;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ a4;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  *(v51 + 4) = a44 ^ (((((2 * (v70 + v69)) & 0x690FF71E81D3EE3ELL) - (v70 + v69) - 0x3487FB8F40E9F720) ^ 0x33612E0554EEFA7EuLL) >> (8 * (v52 & 7u)));
  v71 = __ROR8__((v51 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = ((2 * (v71 + v45)) | 0x587B403F710B33CALL) - (v71 + v45) - 0x2C3DA01FB88599E5;
  v73 = v72 ^ 0x787A966A24FBF4CELL;
  v72 ^= 0xEDFF1B6D7D0B58F5;
  v74 = __ROR8__(v73, 8);
  v75 = __ROR8__((v74 + v72 - ((2 * (v74 + v72)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4, 8);
  v76 = (v74 + v72 - ((2 * (v74 + v72)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4 ^ __ROR8__(v72, 61);
  v77 = (((2 * (v75 + v76)) & 0x903F4534BF6955C0) - (v75 + v76) - 0x481FA29A5FB4AAE1) ^ 0xC93A4DBD48F6B16ALL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0x5C307F409900B7F2) - (v79 + v78) + 0x51E7C05FB37FA406) ^ 0x9AF8115ABA65D1A0;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ a2;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (0x5E4EF690E20CD2B0 - ((v84 + v83) ^ 0xEF0BBF44D834E002 | 0x5E4EF690E20CD2B0) + ((v84 + v83) ^ 0xEF0BBF44D834E002 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ a4;
  v88 = __ROR8__(v87, 8);
  v89 = __ROR8__(v86, 61);
  *(v51 + 5) = a42 ^ (((((2 * (v88 + (v87 ^ v89))) | 0x39371380251567D4) - (v88 + (v87 ^ v89)) + 0x6364763FED754C16) ^ 0x6482A3B5F9724174) >> (8 * ((v51 + 5) & 7)));
  *(v50 + 520) = 0x2FC92220EDE8F7F1;
  return (*(v48 + 8 * ((v49 + 161464285) ^ 0x1B3C)))();
}

uint64_t sub_100109068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v19 = *a4 + *(v16 + 808) - 0x2FC92220EDE8F7EBLL;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((v20 + v8) | 0x4473AF4093FD868BLL) - ((v20 + v8) | 0xBB8C50BF6C027974) - 0x4473AF4093FD868CLL;
  v22 = __ROR8__(v21 ^ 0x103499350F83EBA0, 8);
  v21 ^= 0x85B114325673479BLL;
  v23 = (v22 + v21) ^ 0x71739F379BF98FD9;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0xF8065C5468770AD6 - ((v25 + v24) | 0xF8065C5468770AD6) + ((v25 + v24) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a1;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x60317E7E2F95E7CELL) - 0x4FE740C0E8350C19) ^ 0x30BB974B947E342ELL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = *(v15 + 8 * v13);
  v34 = (__ROR8__(v31, 8) + v32) ^ v10;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a3;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  LOBYTE(v37) = (((((2 * ((v38 + v37) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122) - ((v38 + v37) ^ 0x43F178B4D98B7452) + 0x5C47E569B8209F6FLL) ^ 0x1850485775ACE65DuLL) >> (8 * ((*a4 + *(v16 + 808) + 21) & 7u))) ^ HIBYTE(a8) ^ 0xB6;
  v39 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v19 = v37;
  v40 = ((2 * ((v39 + v8) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v39 + v8) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v41 = v40 ^ 0xFA626518CDFB6C7DLL;
  v40 ^= 0x6FE7E81F940BC046uLL;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0x71739F379BF98FD9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v11;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a1;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a2;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x5B7AB7335E1C4A0ELL) - (v50 + v49) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ a3;
  *(v19 + 1) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(a8) ^ 0x15;
  v54 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = ((2 * (v54 + v8)) | 0xD26D64F9B5F9A13CLL) - (v54 + v8) - 0x6936B27CDAFCD09ELL;
  v56 = v55 ^ 0x3D7184094682BDB5;
  v55 ^= 0xA8F4090E1F72118ELL;
  v57 = __ROR8__(v56, 8);
  v58 = (0x106BA8B4217F8315 - ((v57 + v55) | 0x106BA8B4217F8315) + ((v57 + v55) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v11;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ a1;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (v64 + v63 - ((2 * (v64 + v63)) & 0xF13B5A97EEF23B9ALL) - 0x76252B40886E233) ^ 0x783E853F74CDDA04;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__((v67 + v66 - ((2 * (v67 + v66)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60, 8);
  v69 = (v67 + v66 - ((2 * (v67 + v66)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60 ^ __ROR8__(v66, 61);
  *(v19 + 2) = (((__ROR8__((v68 + v69) ^ a3, 8) + ((v68 + v69) ^ a3 ^ __ROR8__(v69, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(a8) ^ 0x1D;
  v70 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v70 - ((2 * v70 - 0x1A9E9CBE2983D4F2) & 0xD5FA7621D5890D1ELL) - 0x2252134E29FD63EALL;
  v72 = __ROR8__(v71 ^ 0x3EBA0D6576BAEBA4, 8);
  v71 ^= 0xAB3F80622F4A479FLL;
  v73 = (v72 + v71) ^ 0x71739F379BF98FD9;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((v75 + v74) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v75 + v74) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = __ROR8__((v78 + v77 - ((2 * (v78 + v77)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL, 8);
  v80 = (v78 + v77 - ((2 * (v78 + v77)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL ^ __ROR8__(v77, 61);
  v81 = (((2 * (v79 + v80)) | 0x9BF2874C46BB2BF0) - (v79 + v80) + 0x3206BC59DCA26A08) ^ 0x4D5A6BD2A0E95231;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) | 0xC7DAE37E88912B22) - (v83 + v82) + 0x1C128E40BBB76A6FLL) ^ v9;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__(((a5 | (2 * (v86 + v85))) - (v86 + v85) + a6) ^ a7, 8) + (((a5 | (2 * (v86 + v85))) - (v86 + v85) + a6) ^ a7 ^ __ROR8__(v85, 61));
  *(v19 + 3) = a8 ^ v18 ^ ((((v14 | (2 * v87)) - v87 + v12) ^ v17) >> (8 * ((v19 + 3) & 7)));
  return v33();
}

uint64_t sub_100109914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0x740] = *(*STACK[0x720] - 0x4761F68478C333DDLL);
  v5 = LODWORD(STACK[0x72C]) - ((2 * LODWORD(STACK[0x72C])) & 0x4EAF30BA) - 1487431587;
  v6 = ((3 * (a4 & 0x1B2C2E7B ^ 0x34D2)) ^ 0xF6607C3E) + (v5 ^ 0xD5A8632E) - 643979063 + ((2 * v5) & 0xE5FFF6E6 ^ 0x44AF30A2);
  LODWORD(STACK[0x74C]) = v6;
  return (*(v4 + 8 * ((23 * (v6 != 1123936337)) ^ a4 & 0x1B2C2E7Bu)))(a1, a2, a3, 0x97F56CB0FB361A73);
}

uint64_t sub_1001099FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = *(v44 + 8 * v43);
  LODWORD(STACK[0x3D4]) = STACK[0x74C];
  return v45(a1, 0xA682CC081D3CC4C6, 0x8306507192E00F48, 0x1683DD76CB10A373, 0x16C26BF63D6479ECLL, 0x8B6135FB1EB23CF6, 0xBC21D8F9D06FB3FLL, 0x3176A05114BE070ELL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, (v43 - 160842230) & 0xFFF64DDF);
}

uint64_t sub_100109B70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v61 = ((v48 - 1) | ((v48 - 1 < v46) << 32)) + v50;
  v62 = __ROR8__((v61 + v51 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = v62 - ((v52 + 2 * v62) & a1) + 0x49F217A4F9DC77EALL;
  v64 = v63 ^ a2;
  v65 = v63 ^ a3;
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x71739F379BF98FD9;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x7EDA10D8E8BDE475;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xCB1FD105091A75A6;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = __ROR8__((v72 + v71 - (a4 & (2 * (v72 + v71))) + a5) ^ a6, 8);
  v74 = (v72 + v71 - (a4 & (2 * (v72 + v71))) + a5) ^ a6 ^ __ROR8__(v71, 61);
  v75 = (v73 + v74 - (a7 & (2 * (v73 + v74))) + v53) ^ v54;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = ((v56 | (2 * ((v77 + v76) ^ v55))) - ((v77 + v76) ^ v55) + v57) ^ v58;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  *(v61 + v51 + 10) = (((a8 - ((v80 + v79) | a8) + ((v80 + v79) | v59)) ^ v60) >> (8 * ((v61 + v51 + 10) & 7))) ^ *(v49 + v61);
  return (*(a46 + 8 * ((30 * (v46 + 1 == v48)) ^ v47)))();
}

uint64_t sub_100109D48@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x6F8]) == v2 - 8;
  LODWORD(STACK[0x3E4]) = v3 + 28;
  return (*(v1 + 8 * ((((((a1 + 1291) | 0x101) ^ 0xC6B) + ((a1 - 1442866089) & 0x56005BFF)) * v4) ^ a1)))();
}

uint64_t sub_100109DA4()
{
  v2 = *(*STACK[0x720] - 0x4761F68478C333DDLL);
  v3 = __ROR8__((v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = STACK[0x700];
  v5 = (0x8D4F4E5F14C1EA78 - v3) & 0xB123D19BF46E51D1 | (v3 + 0x72B0B1A0EB3E1587) & ((v0 - 161464253) ^ 0x4ADC2E64FDF1EA3BLL);
  v6 = v5 ^ 0xE564E7EE68103CFALL;
  v5 ^= 0x70E16AE931E090C1uLL;
  v7 = __ROR8__(v6, 8);
  v8 = (v7 + v5 - ((2 * (v7 + v5)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((v10 + v9) ^ 0xB15146501DE8B6F8) - ((2 * ((v10 + v9) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xDBBCA2A7F6876CE0) - (v13 + v12) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x80A3287483B4C7C9;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x97F56CB0FB361A73;
  v2[10] = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v2 + 10) & 7u))) ^ HIBYTE(STACK[0x700]) ^ 8;
  v22 = __ROR8__((v2 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v22 - ((2 * v22 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v24 = v23 ^ 0xD85F7D3177813639;
  v23 ^= 0x4DDAF0362E719A02uLL;
  v25 = __ROR8__(v24, 8);
  v26 = (((v25 + v23) | 0x337A902E34222EAELL) - ((v25 + v23) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) | 0x7B372A0BF60D2AC5) - ((v28 + v27) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xCB1FD105091A75A6;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x80A3287483B4C7C9;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x8562C5B0FD26117BLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x97F56CB0FB361A73;
  v2[11] = (((__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v2 + 11) & 7u))) ^ LOWORD(STACK[0x706]) ^ 0xC3;
  v38 = __ROR8__((v2 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((2 * v38 - 0x1A9E9CBE2983D4F2) & 0xB50EA0BD07EE0F74) - v38 + 0x32C7FE0090CAE2BELL;
  v40 = v39 ^ 0xF13F99D4E076956ELL;
  v39 ^= 0x64BA14D3B9863955uLL;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0x71739F379BF98FD9;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x7EDA10D8E8BDE475;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xCB1FD105091A75A6;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x80A3287483B4C7C9;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = (((v48 + v49) | 0xAE83C850330BCB1ELL) - ((v48 + v49) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (((2 * (v51 + v52)) & 0x8B666A266E091910) - (v51 + v52) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v2[12] = (((((2 * (v55 + v54)) | 0x21458F0F9B85813CLL) - (v55 + v54) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v2 + 12) & 7u))) ^ BYTE5(v4) ^ 0x8D;
  v56 = __ROR8__((v2 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v57 = (0xD4F4E5F14C1EA78 - v56) & 0x745A46F181E71788 | (v56 + 0x72B0B1A0EB3E1587) & 0x8BA5B90E7E18E877;
  v58 = __ROR8__(v57 ^ 0x201D70841D997AA3, 8);
  v57 ^= 0xB598FD834469D698;
  v59 = (((2 * (v58 + v57)) | 0x26843C234468C454) - (v58 + v57) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((v61 + v60) | 0x61D635255ACF2C94) - ((v61 + v60) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xCB1FD105091A75A6;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x80A3287483B4C7C9;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((v68 + v67) | 0xBAAB3E68C36E4B71) - ((v68 + v67) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x97F56CB0FB361A73;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  LODWORD(v71) = STACK[0x700];
  v2[13] = (((((v73 + v72) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v73 + v72) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v2 + 13) & 7u))) ^ LODWORD(STACK[0x704]) ^ 0x18;
  v74 = __ROR8__((v2 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((v74 + 0x72B0B1A0EB3E1587) | 0x393C5199A3ABE61FLL) - ((v74 + 0x72B0B1A0EB3E1587) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v76 = v75 ^ 0x6D7B67EC3FD58B34;
  v75 ^= 0xF8FEEAEB6625270FLL;
  v77 = __ROR8__(v76, 8);
  v78 = (((2 * (v77 + v75)) & 0xA01676447DFA0AA6) - (v77 + v75) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575;
  v79 = v78 ^ __ROR8__(v75, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x7EDA10D8E8BDE475;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xCB1FD105091A75A6;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (v84 + v83 - ((2 * (v84 + v83)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((v87 + v86) | 0x73019C173CCE7FA9) - ((v87 + v86) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((v90 + v89) | 0x5071512C1C535486) - ((v90 + v89) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v2[14] = (((v93 + v92 - ((2 * (v93 + v92)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v2 + 14) & 7u))) ^ LODWORD(STACK[0x703]) ^ 0x34;
  v94 = __ROR8__((v2 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v95 = ((2 * v94 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v94 - 0x16EB6015C9B52F97;
  v96 = __ROR8__(v95 ^ 0xF8267FEBDF688DBLL, 8);
  v95 ^= 0x9A07EAF9E40624E0;
  v97 = (v96 + v95) ^ 0x71739F379BF98FD9;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (v99 + v98 - ((2 * (v99 + v98)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) & 0x6760441E82814852) - (v102 + v101) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) & 0x14B03C0D0DEA5DFELL) - (v105 + v104) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((v108 + v107) | 0x39BC71E438FBF891) - ((v108 + v107) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) & 0xFC603D156314A35ELL) - (v111 + v110) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v2[15] = (((__ROR8__(v112, 8) + (v112 ^ __ROR8__(v110, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v2 + 15) & 7u))) ^ LODWORD(STACK[0x702]) ^ 0xA6;
  v113 = __ROR8__((v2 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v114 = (v113 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v115 = (__ROR8__((v113 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8) + v114) ^ 0x71739F379BF98FD9;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x7EDA10D8E8BDE475;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (v119 + v118 - ((2 * (v119 + v118)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (v122 + v121 - ((2 * (v122 + v121)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x8562C5B0FD26117BLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x97F56CB0FB361A73;
  v2[16] = (((__ROR8__(v127, 8) + (v127 ^ __ROR8__(v126, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v2 + 16) & 7u))) ^ LODWORD(STACK[0x701]) ^ 0x36;
  v128 = __ROR8__((v2 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = ((2 * (v128 + 0x72B0B1A0EB3E1587)) | 0xA5E64CF69756B5C4) - (v128 + 0x72B0B1A0EB3E1587) + 0x2D0CD984B454A51ELL;
  v130 = v129 ^ 0x86B4100ED7D537C9;
  v129 ^= 0x13319D098E259BF2uLL;
  v131 = __ROR8__(v130, 8);
  v132 = __ROR8__((((2 * (v131 + v129)) | 0x559C992A13D30352) - (v131 + v129) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70, 8);
  v133 = (((2 * (v131 + v129)) | 0x559C992A13D30352) - (v131 + v129) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70 ^ __ROR8__(v129, 61);
  v134 = (v132 + v133) ^ 0x7EDA10D8E8BDE475;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0xCB1FD105091A75A6;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x80A3287483B4C7C9;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x3B5AD3916A0336E4) - (v140 + v139) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x97F56CB0FB361A73;
  v2[17] = (((__ROR8__(v143, 8) + (v143 ^ __ROR8__(v142, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v2 + 17) & 7u))) ^ v71 ^ 0x47;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10010AC94@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v53[11] = 0x4761F68478C333F5;
  v53[38] = a48;
  v53[39] = a52;
  LODWORD(STACK[0x304]) = STACK[0x714];
  v53[41] = &STACK[0x218];
  LODWORD(STACK[0x314]) = 1344870855;
  return (*(v52 + 8 * ((31890 * (a1 == -2022615812)) ^ (a1 + 161474422))))(161467495);
}

uint64_t sub_10010AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61)
{
  LODWORD(STACK[0x7B4]) = STACK[0x3E4];
  STACK[0x7B8] = a61;
  STACK[0x7C0] = a61 - 0x4761F68478C333DDLL;
  v63 = *(a61 - 0x4761F68478C333DDLL);
  STACK[0x7C8] = v63;
  return (*(v61 + 8 * (((v63 == 0) * (((v62 + 3770) | 0x1800) ^ 0x384C)) ^ v62)))();
}

uint64_t sub_10010AD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = (*(v48 + 8 * (v46 + 14540)))(*(v47 + 200));
  **(v47 + 192) = 0;
  return (*(a46 + 8 * (v46 + 3)))(v49);
}