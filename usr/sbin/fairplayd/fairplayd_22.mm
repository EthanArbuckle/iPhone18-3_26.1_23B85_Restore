uint64_t sub_100672E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 ^ 0xA633 ^ (37 * (v6 ^ 0x3E5)))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_100672EAC()
{
  v5 = v3 - 1;
  STACK[0x4F8] = v3 - 1;
  v6 = (((v2 ^ 0xF8A1886CC7FA742ELL) << (v1 + 78)) ^ 0x34379508) & (v2 ^ 0xC7FA742E);
  v7 = v6 & (4 * (((2 * v2) & 0x54 ^ 0xAA) & v2)) ^ ((2 * v2) & 0x54 ^ 0xAA) & v2;
  LOBYTE(v6) = v2 ^ (2 * (v6 & (4 * v6) & (16 * v7) ^ v7));
  LOBYTE(v6) = (((v6 ^ 0x5E) - 96) ^ ((v6 ^ 0xE6) + 40) ^ ((v6 ^ 0xA8) + 106)) + 84;
  *(v0 + v5) = v6 * (v2 - 95) + 109 * (66 * v6 + 2 * (v2 - 95)) + 36;
  return (*(v4 + 8 * ((60368 * (STACK[0x4F8] == 0)) ^ v1)))();
}

uint64_t sub_100672FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x228] = &STACK[0x2D4];
  v69 = a1 + 0x42F41481A06579E1 + (v67 ^ 0x46D8u);
  *(a66 + 8) = v69;
  *a29 = v69;
  a29[1] = 0x7FD672906585EA28 - v66;
  a29[2] = (((LOBYTE(STACK[0x2D7]) ^ 0x695864B0A679A324) - 0x695864B0A679A324) ^ ((LOBYTE(STACK[0x2D7]) ^ 0x4B9146FCDDF3F7F7) - 0x4B9146FCDDF3F7F7) ^ ((LOBYTE(STACK[0x2D7]) ^ 0x22C9224C7B8A5488) - 0x22C9224C7B8A5488)) + 0x73B4913AF7D02E9ALL;
  *a28 = 0x3CE25E0EC5200378;
  *(a65 + 40) += v68;
  STACK[0x250] = (a29 + 3);
  return (*(STACK[0x2A0] + 8 * v67))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a29, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_10067330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t (*a63)(uint64_t a1, uint64_t a2))
{
  a61 = *(v68 + 8 * (v66 - 7109)) - 2025890227;
  a62 = 0x40000000;
  v69 = *(v68 + 8 * (v66 ^ 0x2B29)) - 926506467;
  a63 = sub_100005714;
  a64 = v69;
  a65 = v65;
  (*(v67 + 8 * (v66 + 42856)))(a1, &a61);
  v71 = (*(v67 + 8 * (v66 ^ 0xE879)))(a1);
  v72 = (*(v67 + 8 * (v66 ^ 0xEFB9)))(v71);
  return (*(v67 + 8 * v66))(v72);
}

uint64_t sub_100673420@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2000]) = a1;
  v4 = STACK[0x1D18];
  v5 = (*(v2 + 8 * (v1 ^ 0x85C5)))(STACK[0x1D18] + 16, 0);
  v6 = STACK[0x7E0];
  v6[2] = ((v1 - 227114339) & 0x6FE9FE7B) + *(v4 + 16) - ((2 * *(v4 + 16)) & 0x5D18390C) - 869577676;
  v6[1] = *(v4 + 24) - ((2 * *(v4 + 24)) & 0x5D18390C) + 780934278;
  v7 = (*(v2 + 8 * (v1 ^ 0x85FA)))(v5);
  v6[3] = v7 - ((2 * v7) & 0x5D18390C) + 780934278;
  v8 = (*(v2 + 8 * (v1 ^ 0x85FA)))();
  *v6 = v8 - ((2 * v8) & 0x5D18390C) + 780934278;
  STACK[0x7A0] = v3;
  LODWORD(STACK[0x798]) = v3 - ((2 * v3) & 0x4138F18A) - 1600358203;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100673574()
{
  v3 = v0 - 24231;
  v4 = (*(v1 + 8 * ((v0 - 24231) ^ 0x9A14)))();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0x4C21B003B25812ALL;
  return (*(v1 + 8 * v3))(v4);
}

uint64_t sub_1006736A0(int a1, int a2, int a3)
{
  v10 = v4 < v6;
  v11 = v9 | ((v9 < v5) << 16);
  v12 = v11 + v8;
  v13 = v4 > v11 + a1;
  if (v10 == v12 < ((v3 + a2) ^ v3 ^ v7))
  {
    v10 = v13;
  }

  return (*(STACK[0xF18] + 8 * ((v10 * a3) ^ v3)))();
}

uint64_t sub_100673700(int a1, int a2, int a3)
{
  v4 = *(STACK[0xF18] + 8 * LODWORD(STACK[0xE20]));
  LODWORD(STACK[0xE90]) = a1 - 1;
  return v4(LODWORD(STACK[0xED0]), a2 ^ 0xF1C1DBC5, a3 ^ 0xF9894770, v3);
}

uint64_t sub_100673870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24, uint64_t a25, int a26, int a27, uint64_t a28, uint64_t a29)
{
  v33 = v31 > -1180027699;
  v34 = ((v29 >> (v32 ^ 0x44u)) ^ 0x69D8F4A0) + (*(v30 + 4 * v31) ^ ((v32 ^ 0x2FD0u) + 920623441));
  v35 = v34 - ((2 * v34) & 0x5A57F5A2) + 0x7A6882F42D2BFAD1;
  *(v30 + 4 * a21) = v35 ^ 0x1BF414D4;
  *(v30 + 4 * v31) = HIDWORD(v35) ^ 0x4CB76CF1;
  if (v33 == a27 - 1503986746 < 1180027698)
  {
    v33 = a27 - 1503986746 < a24;
  }

  return (*(a29 + 8 * (v32 ^ (55906 * v33))))(a1, a2, (a27 + 1));
}

uint64_t sub_1006739E8()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = 1376984111;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100673A2C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = ((2 * (v3 - 35645 + ((a1 + 28382) ^ 0x4D6u))) & 0x571FEFFE) + ((v3 - 35645 + ((a1 + 28382) ^ 0x4D6u)) ^ v5);
  *(v7 + v2 + v6) = *(a2 + v7 + v4);
  v8 = ((2 * (v3 - 3)) & 0x571FEFFE) + ((v3 - 3) ^ v5);
  *(v8 + v2 + v6) = *(a2 + v4 + v8);
  return (*(STACK[0xF18] + 8 * (a1 ^ (19 * (v3 != 3)))))();
}

uint64_t sub_100673AAC()
{
  v1 = STACK[0x47D8];
  v2 = LODWORD(STACK[0x491C]) ^ 0x7CF9FFBF;
  v3 = ((v0 - 5349) ^ 0xF9F37BC8) & (2 * LODWORD(STACK[0x491C]));
  v4 = 353670337 * ((((2 * (&STACK[0x10000] + 3800)) | 0xBED5F85A) - (&STACK[0x10000] + 3800) - 1600846893) ^ 0xEB4B0410);
  STACK[0x10EF0] = *(STACK[0x1E68] + 304);
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - v4 + v3 - 673240100;
  LODWORD(STACK[0x10EE0]) = v0 - v4 + 8754;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 12580)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v0))(v6);
}

uint64_t sub_100673C3C()
{
  v1 = v0 ^ 0x32AAu;
  LODWORD(STACK[0xBC0]) = STACK[0xDA0] & 0xFFFFFFBF;
  LODWORD(STACK[0xA98]) = STACK[0xE20] & 0xFFFFFFDF;
  LODWORD(STACK[0xA60]) = STACK[0xDB0] & 0xFFFFFFF7;
  v2 = LODWORD(STACK[0xE10]) ^ 0xC094F2AF ^ v1;
  v3 = LODWORD(STACK[0xD70]) ^ 0xF9890252;
  v4 = LODWORD(STACK[0xC90]) ^ 0x825A5BF2;
  v5 = LODWORD(STACK[0xC60]) ^ 0xF1C17F42;
  v6 = LODWORD(STACK[0xD80]) ^ 0x301CDDB7u;
  v7 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xE90]) = 767;
  return v7(LODWORD(STACK[0xED0]), v5, v3, v2, v1, v4, LODWORD(STACK[0xE80]), v6);
}

uint64_t sub_100673DBC@<X0>(int a1@<W8>)
{
  v2 = v1 + LODWORD(STACK[0x81BC]) - 556477954 + 146 * (a1 ^ 0xB0C1);
  LODWORD(STACK[0x4418]) = -371865839;
  LODWORD(STACK[0x1104]) = 0;
  LODWORD(STACK[0x7A24]) = v2;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100673E64(int a1, uint64_t a2)
{
  v4 = v2;
  v5 = v3 < a2;
  v6 = *(v4 + 8) - 0x3CE25E0E22F693A5;
  v7 = v5 ^ (v6 < ((a1 - 1965319361) & 0x7524ED4E) - 0x7FFFFFFF5DD7396FLL);
  v8 = v6 < v3;
  if (!v7)
  {
    v5 = v8;
  }

  v9 = *(STACK[0x430] + 8 * ((113 * !v5) ^ a1));
  STACK[0x300] = v4;
  return v9();
}

uint64_t sub_100673EF0()
{
  v3 = v1 < 0x70983A0A;
  if (v3 == (v0 + 1) > 0xFFFFFFFF8F67C5F5)
  {
    v3 = v0 + 1888985607 + (v2 + 3115) < v1;
  }

  return (*(STACK[0xF18] + 8 * ((v3 * (((v2 + 5161) | 0x1A68) - 45708)) ^ v2)))();
}

uint64_t sub_100673F6C()
{
  v1 = v0 ^ 0x8738;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9ACC ^ (6662 * (v1 ^ 0xC06)))))();
}

uint64_t sub_1006740A0()
{
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3BD0] = v2;
  STACK[0x7690] = (((v0 - 19780) | 0x2004u) ^ 0x7374) + v1;
  LODWORD(STACK[0x10EE4]) = v0 - 25518 - 193924789 * ((((&STACK[0x10000] + 3800) | 0x38C1BCDD) - ((&STACK[0x10000] + 3800) | 0xC73E4322) - 952220894) ^ 0x8E7A8EBB) + 30188;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((v0 - 25518) ^ 0xF07E)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((487 * (LODWORD(STACK[0x10EE0]) != -371865839)) ^ (v0 - 25518))))(v4);
}

uint64_t sub_10067417C@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x915;
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == ((v3 - 11854) | 0xAD) + 1581987101;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((v5 * (v3 ^ 0x4774)) ^ v3)))();
}

uint64_t sub_1006742C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = a3 - 1503992081 + ((v27 + 1341307771) & 0xB00CDDF6);
  v29 = (a9 > -1180027699) ^ (v28 < 1180027698);
  v30 = v28 < a9 - 967455950;
  if (v29)
  {
    v30 = a9 > -1180027699;
  }

  return (*(a27 + 8 * ((v30 * (((v27 + 1341307771) ^ 0x4FF397D9) - 40994)) ^ v27)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1006743B4@<X0>(int a1@<W8>)
{
  STACK[0x45E8] = v4;
  LODWORD(STACK[0x24FC]) = v3;
  LODWORD(STACK[0x6CF4]) = v1;
  STACK[0x45A8] = v2;
  return (*(STACK[0xF18] + 8 * (((*(v4 + 24) == -371865839) * ((a1 + 29858) ^ (a1 - 1233) ^ 0x92EF)) ^ a1)))();
}

uint64_t sub_10067440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = *(v12 + ((495 * (*(v6 + ((((v9 - 29246) | 0x8A96) - 37126) * (v7 ^ 0xAEu) + 9110440) % 0xE80) ^ 0xCB)) & 0x1FF));
  v14 = v13 ^ a6;
  v15 = v13 & 0x40 ^ 0x4D;
  *(v8 + (*(v10 + 4 * ((2899 * ((v7 + 1792) ^ 0x3C2u) + 11268413) % 0x26C4)) ^ 0x8B6B2AE6) + 8464) = v13 ^ HIBYTE(v11) ^ (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & a6 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0x8C;
  return (*(STACK[0xF18] + 8 * ((82 * (v7 == 255)) ^ v9)))();
}

uint64_t sub_100674580@<X0>(int a1@<W8>)
{
  STACK[0xB8C8] = v1 + 304;
  STACK[0xB8D0] = v1 + 312;
  return (*(STACK[0xF18] + 8 * (((*(v1 + 304) == 0) * (((a1 + 639519798) & 0xD9E15FF7) + ((a1 - 571634124) & 0x2212973E) - 37629)) ^ a1)))();
}

uint64_t sub_1006747FC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB9B6)))(504);
  LOBYTE(STACK[0x58EB]) = 0;
  STACK[0x9368] = v2;
  return (*(v1 + 8 * ((((v0 - 2058323887) & 0x7AAF9FBB ^ (v0 - 1744342320) & 0x67F89FFD ^ 0xED5) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1006748B0()
{
  *v0 = 0;
  *v1 = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100674B30()
{
  v1 = STACK[0x37E0];
  *(v1 + 168) = 801182935;
  *(v1 + 8) |= 0x4000000u;
  *v1 = 1630826605;
  *(v1 + 12) = 0x1E9D5C711;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 20) = 3923101457;
  *(v1 + 312) = *(v1 + 312) & 0xFFFFFFFFC1FFFFFFLL | 0x4000000;
  STACK[0x23C0] = *(STACK[0x73D0] + 120);
  v2 = STACK[0xF18];
  STACK[0x8390] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x165D)))();
}

uint64_t sub_100674E5C@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x693E]) = v3;
  LODWORD(STACK[0x7E14]) = v2;
  v4 = 2 * (a1 ^ 0x23D4) + v3 - 2682;
  v5 = (((a1 ^ 0x23D4) + 5384) ^ 0xCEB) + v1;
  v6 = v1 > 0xE405u;
  if (v6 == (v4 >> 1) < 0xDFDu)
  {
    v6 = v4 < v5;
  }

  return (*(STACK[0xF18] + 8 * ((46 * v6) ^ a1)))();
}

uint64_t sub_100674EE0()
{
  *(v1 + 8) = *v2;
  *(v1 + 16) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100674F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 33560;
  LODWORD(STACK[0x3AC4]) += 8;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1BCC)))(a1, a2, a3, v3);
}

uint64_t sub_100674FE8()
{
  v1 = STACK[0x7768];
  LODWORD(STACK[0x10EE4]) = v0 - 1012831759 * ((((&STACK[0x10000] + 3800) | 0xE56DEAF6) - ((&STACK[0x10000] + 3800) | 0x1A921509) + 445781257) ^ 0xF5FEFC7C) + 15034;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 21042)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1006750D4()
{
  v1 = STACK[0xF10];
  *(STACK[0x2140] - 0x10A99C80114D144BLL) = *STACK[0x32D8];
  LODWORD(STACK[0x5F64]) = v0;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v1 - 33669));
  return (*(v2 + 8 * ((v1 - 31198) ^ (v1 - 33669))))();
}

uint64_t sub_10067515C(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (v5 == 19)
  {
    v12 = 0;
  }

  else
  {
    v11 = (*(v4 + v5) ^ v7) - (*(a4 + v5) ^ v7);
    v12 = (v11 ^ v8) + v10 + (v9 & (2 * v11)) == a1;
  }

  v13 = v12;
  return (*(STACK[0xF18] + 8 * ((v13 * a2) ^ v6)))();
}

uint64_t sub_10067538C()
{
  STACK[0x10ED8] = *(v0 + 16);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) ^ 0xEABEF165 | 0x69EC0F7) - ((&STACK[0x10000] + 3800) ^ 0xEABEF165 | 0xF9613F08) - 111067384) ^ 0xA062A5D) + 296753103;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16271)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 - 8225)))(v3);
}

uint64_t sub_1006754C8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34053;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 28055) ^ v1)))();
}

uint64_t sub_100675634@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x21B0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + 7001)))();
}

uint64_t sub_1006758D0()
{
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 11173) | 0x4671) - 23216) ^ v0)))();
}

uint64_t sub_100675920()
{
  LODWORD(STACK[0x5E1C]) = v0 - 185300489;
  v2 = STACK[0x39B8];
  v3 = (*v2 ^ 0x779FDEFB) - 890405888 + ((*v2 << (((v1 + 77) | 0x10) + 73)) & 0x1F6);
  v4 = STACK[0x1D90];
  v5 = STACK[0x4EC0];
  STACK[0x6DF8] = STACK[0x20F0];
  LODWORD(STACK[0x41E4]) = STACK[0x1D48];
  STACK[0x71A0] = v2;
  LODWORD(STACK[0x7A74]) = v3;
  STACK[0x64A8] = v4;
  STACK[0x7A68] = v5;
  LODWORD(STACK[0x3430]) = -1516413792;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100675AD4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, uint64_t a8@<X8>)
{
  v18 = ((((v9 | (a1 >> 30)) ^ a1 ^ a7) + v13) ^ (((v9 | (a1 >> 30)) ^ a1 ^ v14) + v16) ^ (((v9 | (a1 >> 30)) ^ a1 ^ a2) + a3)) * a4;
  *(v17 + 4 * v8) = v8 + a6 + v18;
  return (*(v15 + 8 * ((((((a8 ^ a8) - 1) & ~a8) >> 63) * v12) ^ v10)))((v11 + a5 + v18));
}

uint64_t sub_100675C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x250] = 0;
  STACK[0x228] = &STACK[0x2D4];
  return (*(STACK[0x2A0] + 8 * ((((((v66 + 18966) | 0x280D) ^ 0xFFFF0ADD) + ((v66 + 11302) | 0x8CF)) * (*(a66 + 72) != STACK[0x230])) ^ v66)))(*(a66 + 72), (v66 + 18966) | 0x280Du, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100675D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (a5 - 1942623002);
  v10 = *(*STACK[0x418] + (*STACK[0x420] & 0x6CF36E08)) + v8 + v9;
  *(v8 + v9) = (15 * (v8 + a5 - 26)) ^ ((v5 ^ ((v6 ^ 0x8DEAu) - 1200299878)) >> (v7 & 0x1F ^ (2 * v7) & 0x10 ^ (v6 + 3))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 + 1827892744) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 + 1827892746) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 7;
  return (*(STACK[0x430] + 8 * ((32574 * (a5 - (*(STACK[0x440] + v9) != 0) == 1942623001)) ^ v6)))();
}

uint64_t sub_100675E7C(unsigned int a1, int a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8)
{
  v22 = a3 + (*(v21 + (v8 + (a1 & 0xF) * v14 - (((v8 + (a1 & 0xF) * v14) * a4) >> 32) * a2)) ^ v10 ^ (16 * (*(v21 + v8 + (a1 >> 4) * v14 - (((((v8 + (a1 >> 4) * v14) >> 1) * v9) >> 32) >> 8) * a2) & 0xF))) * v11;
  v23 = v22 - ((v22 * a5) >> 32) * a6;
  v24 = *(&off_1010A0B50 + a7) + a8;
  v25 = v17 + (v24[v23] ^ (v24[v23] >> 4) ^ (v24[v23] >> 3) ^ v16) * v14;
  *(v21 + v18 + v15 * v14 - (((((v18 + v15 * v14) >> 1) * v9) >> 32) >> 8) * a2) = *(v21 + (v25 - ((v25 * a4) >> 32) * a2));
  return (*(STACK[0x6A0] + 8 * (((v15 + 1 != v20) * v13) ^ v12)))((v15 + v19));
}

uint64_t sub_100675F8C@<X0>(int a1@<W6>, int a2@<W8>)
{
  STACK[0x1840] = STACK[0x6CC0];
  STACK[0x2C38] = STACK[0x2700];
  LODWORD(STACK[0x2614]) = a2;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100675FF0()
{
  v2 = (((*(v1 + 8) ^ 0x613AD9C3) - 1631246787) ^ ((*(v1 + 8) ^ 0x3181DE41) - 830594625) ^ ((*(v1 + 8) ^ 0xB96EC093) + (((v0 + 19821) | 0x1B) ^ 0x4691BC76))) - 318290677;
  v3 = (v2 ^ 0xFEAEFBF7) & (2 * (v2 & 0xFCCE8207)) ^ v2 & 0xFCCE8207;
  v4 = ((2 * (v2 ^ 0x6B7FFF1)) ^ 0xF4F2FBEC) & (v2 ^ 0x6B7FFF1) ^ (2 * (v2 ^ 0x6B7FFF1)) & 0xFA797DF6;
  v5 = v4 ^ 0xA090412;
  v6 = (v4 ^ 0xF0701824) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xE9E5F7D8) & v5 ^ (4 * v5) & 0xFA797DF0;
  v8 = (v7 ^ 0xE86175D0) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x12180826)) ^ 0xA797DF60) & (v7 ^ 0x12180826) ^ (16 * (v7 ^ 0x12180826)) & 0xFA797DE0;
  v10 = v8 ^ 0xFA797DF6 ^ (v9 ^ 0xA2115D00) & (v8 << 8);
  *(v1 + 8) = v2 ^ (2 * ((v10 << 16) & 0x7A790000 ^ v10 ^ ((v10 << 16) ^ 0x7DF60000) & (((v9 ^ 0x58682096) << 8) & 0x7A790000 ^ (((v9 ^ 0x58682096) << 8) ^ 0x797D0000) & (v9 ^ 0x58682096) ^ 0x2000000))) ^ 0x1109BEFA;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100676250()
{
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100676280()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v2 + 8 * (v0 - 25494)))(v3);
}

uint64_t sub_1006762B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v19 = v12 - 1;
  v20 = ((*(*v16 + (*a8 & v13)) ^ (v10 + v19)) & 0x7FFFFFFF) * v14;
  v21 = (v20 ^ HIWORD(v20)) * v14;
  *(v8 + v19) = *(v10 + v19) ^ *(v17 + (v21 >> 24)) ^ *(a7 + (v21 >> 24)) ^ *(v18 + (v21 >> 24)) ^ v21 ^ (BYTE3(v21) * ((v11 ^ v9) - 22)) ^ v15;
  return (*(STACK[0xF18] + 8 * (((8 * (v19 == 0)) | (32 * (v19 == 0))) ^ v11)))();
}

uint64_t sub_10067637C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x477C]) = a1;
  LODWORD(STACK[0x4E40]) = v1;
  return (*(STACK[0xF18] + 8 * ((((((v2 - 33583) ^ 0xFA5) - 4511) ^ 0xA43) * (v1 == -371865839)) ^ (v2 - 33583))))();
}

uint64_t sub_100676488()
{
  v1 = (STACK[0xF10] + 106487994) & 0xF9A6B5BF;
  v2 = STACK[0xF10] - 18257;
  STACK[0x3A30] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 8599) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100676600()
{
  v4 = 1112314453 * (((&STACK[0x10ED8] | 0x83380905) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x7CC7F6F8)) ^ 0x6C6E23DC);
  LOWORD(STACK[0x10EDC]) = 28827 - v4;
  LODWORD(STACK[0x10ED8]) = v2 - v4 + 23043;
  STACK[0x10EE0] = v1;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0xDE3E)))(&STACK[0x10ED8]);
  *v1 = ((*v1 % 9u) ^ 0x71) + 2 * ((*v1 % 9u) & 1) - 106;
  v6 = ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x4F74B6F0) + 1333049079) ^ 0xD8AF845C) * v3;
  v7 = *v0 - v6 - ((((v2 - 652264713) & 0x26E0FBFD) + 1619640192) & (2 * *v0)) + 809829436;
  LODWORD(STACK[0x10EDC]) = v6 + v2 + 17988;
  LODWORD(STACK[0x10ED8]) = v7;
  v8 = (*(v5 + 8 * (v2 + 47293)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x61EC]) = STACK[0x10EE0];
  STACK[0x20A8] = *(v5 + 8 * v2);
  return (*(v5 + 8 * (v2 ^ 0x3616)))(v8);
}

uint64_t sub_10067678C@<X0>(int a1@<W8>)
{
  v2[474] = a1 + 4;
  v3 = *STACK[0x5CC8];
  v4 = a1 + ((v1 + 596723689) & 0xDC6EABDD) + 957391425 + 347 * (v1 ^ 0x3793) <= v3 + 1160527689 || v3 >= 0xBAD3C0B7;
  v5 = v2[473];
  if (!v4)
  {
    v5 = 371891407;
  }

  v2[475] = v5;
  return (*(STACK[0xF18] + 8 * ((21880 * (v5 == -371865839)) ^ v1)))();
}

uint64_t sub_1006769C0()
{
  if (STACK[0x3398])
  {
    v1 = STACK[0x7438] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || v0 != -371865839;
  return (*(STACK[0xF18] + 8 * ((((((STACK[0xF10] - 61) ^ v3) & 1) == 0) * (((STACK[0xF10] - 364321600) & 0x15B6DAB6) - 18962)) ^ (STACK[0xF10] - 19226))))();
}

uint64_t sub_100676AC4(int32x4_t a1, int32x4_t a2)
{
  v6 = *(v3 + 48);
  v7 = v6 & 0xFE;
  v8 = (2 * v6) ^ 0xE1;
  if (((v2 - 3883) & vaddvq_s32(vaddq_s32(vaddq_s32(a1, v4), vaddq_s32(a2, v5)))) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  *(v3 + 48) = v9;
  v10 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v2);
  return (*(v10 + 8 * (v2 ^ 0x1645)))();
}

uint64_t sub_100676B50()
{
  v2 = (((v0 ^ 0x78CEB34B) - 2026812235) ^ ((v0 ^ 0xFE7A9FB3) + 25518157) ^ (((v1 - 21717) | 0x1005) + (v0 ^ 0x6F61EBE9) - 1868718790)) - 153464924;
  v3 = (v2 ^ 0xF0FB674E) & (2 * (v2 & 0xF2FB776E)) ^ v2 & 0xF2FB776E;
  v4 = ((2 * (v2 ^ 0x55A967DE)) ^ 0x4EA42160) & (v2 ^ 0x55A967DE) ^ (2 * (v2 ^ 0x55A967DE)) & 0xA75210B0;
  v5 = v4 ^ 0xA1521090;
  v6 = v3 ^ 0xA75210B0 ^ (v4 ^ 0x6000020) & (4 * v3);
  v7 = (4 * v5) & 0xA75210B0 ^ 0x22121030 ^ ((4 * v5) ^ 0x9D4842C0) & v5;
  v8 = (16 * v6) & 0xA75210A0 ^ v6 ^ ((16 * v6) ^ 0x75210B00) & v7;
  v9 = (16 * v7) & 0xA7521080 ^ 0x825210B0 ^ ((16 * v7) ^ 0x75210B00) & v7;
  v10 = v8 ^ (v8 << 8) & 0xA7521000 ^ ((v8 << 8) ^ 0x5210B000) & v9 ^ 0x27101000;
  LODWORD(STACK[0x2A00]) = v2 ^ (2 * ((v10 << 16) & 0x27520000 ^ v10 ^ ((v10 << 16) ^ 0x10B00000) & ((v9 << 8) & 0x27520000 ^ 0x25420000 ^ ((v9 << 8) ^ 0x52100000) & v9))) ^ 0x55AA911F;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100676D58()
{
  v3 = (v2 + 371866128) | 0x8A1A;
  v4 = (((LODWORD(STACK[0x7808]) ^ 0xD1C50708) + 775616760) ^ ((LODWORD(STACK[0x7808]) ^ 0x1252D560) - 307418464) ^ ((LODWORD(STACK[0x7808]) ^ 0x2A421579) - 708973945)) + 298185427;
  LODWORD(STACK[0xED0]) = v3 - 29028;
  v5 = (((v3 - 29028 + v4) ^ 0xB19CEDA) - 753503042) ^ (v3 - 29028 + v4) ^ (((v3 - 29028 + v4) ^ 0x7457173F) - 1403474599) ^ (((v3 - 29028 + v4) ^ 0xA241638E) + 2051987946) ^ (((v3 - 29028 + v4) ^ 0xFAFFFFF3) + 586171797);
  LODWORD(STACK[0x4D08]) = v5 ^ 0xCE258289;
  v6 = 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF);
  STACK[0x10F10] = *(v0 + v1);
  LODWORD(STACK[0x10ED8]) = v6 ^ 0x7D6D5D82;
  LODWORD(STACK[0x10F08]) = v2 - v6 - 2145810296;
  LODWORD(STACK[0x10EF4]) = ((((v5 ^ 0x7BA27BB1) + 1249380040) ^ ((v5 ^ 0x6C28023A) + 1576173389) ^ ((v5 ^ 0x307A3C13) + 27279718)) + 1722579672) ^ v6;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x8A24];
  LODWORD(STACK[0x10F04]) = v6 + 2069619737;
  LODWORD(STACK[0x10EF0]) = v6 ^ 0xD60D0A57;
  STACK[0x10EF8] = 0;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800) ^ 0x1BCF);
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 371917779)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v2 ^ 0xE9D5E223 ^ (42145 * (((LODWORD(STACK[0x10F0C]) - v2) | (v2 - LODWORD(STACK[0x10F0C]))) >= 0)))))(v8);
}

uint64_t sub_10067726C()
{
  v1 = STACK[0x7168];
  v2 = STACK[0x55D8];
  *(v2 - 0x10A99C80114D142FLL) = *(STACK[0x7168] + 528);
  *(v2 - 0x10A99C80114D142BLL) = *(v1 + 532);
  return (*(STACK[0xF18] + 8 * (((v1 + 11279 * (v0 ^ 0xB033u) - v2 + 0x10A99C80114C6603 > 0x1F) * (((v0 - 1590614329) & 0x5ECEB9F3) - 37095)) ^ v0)))();
}

uint64_t sub_100677330@<X0>(unint64_t a1@<X8>)
{
  STACK[0x93A8] = a1;
  v5 = *(v4 + 32) + 1471187987;
  v6 = (v5 ^ 0x90E7BC9) & (2 * (v5 & ((v3 - 8648) ^ 0xA84F7E8D))) ^ v5 & ((v3 - 8648) ^ 0xA84F7E8D);
  v7 = (v5 ^ 0x499CBE09) << (((v3 - 36) | 0x70) ^ 0x78);
  v8 = (v7 ^ 0xC3A79BC2) & (v5 ^ 0x499CBE09) ^ v7 & 0xE1D3CDE0;
  v9 = v8 ^ 0x20504421;
  v10 = (v8 ^ 0xC10389C0) & (4 * v6) ^ v6;
  v11 = ((4 * v9) ^ 0x874F3784) & v9 ^ (4 * v9) & 0xE1D3CDE0;
  v12 = (v11 ^ 0x81430580) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x6090C861)) ^ 0x1D3CDE10) & (v11 ^ 0x6090C861) ^ (16 * (v11 ^ 0x6090C861)) & 0xE1D3CDC0;
  v14 = v12 ^ 0xE1D3CDE1 ^ (v13 ^ 0x110CC00) & (v12 << 8);
  LODWORD(STACK[0xB7DC]) = v5 ^ (2 * ((v14 << 16) & 0x61D30000 ^ v14 ^ ((v14 << 16) ^ 0x4DE10000) & (((v13 ^ 0xE0C301E1) << 8) & 0x61D30000 ^ 0x20120000 ^ (((v13 ^ 0xE0C301E1) << 8) ^ 0x53CD0000) & (v13 ^ 0xE0C301E1)))) ^ 0xC263E65A;
  v15 = (v2 | ((v2 < 0xD931F511) << 32)) - 479817073;
  v16 = (((v1 ^ 0x780B64B6F1ADFEEALL) - 0x780B64B6F1ADFEEALL) ^ ((v1 ^ 0x1B3D56045BD463D7) - 0x1B3D56045BD463D7) ^ ((v1 ^ 0x633632B243AC5A2CLL) - 0x633632B243AC5A2CLL)) + 0x1A66E4EA9;
  v17 = (v15 < 0xBC988798) ^ (v16 < 0xBC988798);
  v18 = v15 > v16;
  if (v17)
  {
    v18 = v15 < 0xBC988798;
  }

  if (v18)
  {
    v19 = 371891407;
  }

  else
  {
    v19 = -371865839;
  }

  LODWORD(STACK[0x77AC]) = v19;
  return (*(STACK[0xF18] + 8 * (v3 ^ (25 * !v18))))();
}

uint64_t sub_1006776A8()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F26)))();
}

uint64_t sub_100677800@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 120 * v1 + 24);
  STACK[0xB4E0] = v3;
  return (*(STACK[0xF18] + 8 * (((((a1 - 9947) | 0x141) - 27476) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_100677894()
{
  v3 = *v0;
  STACK[0x2E68] = *v0;
  v5 = v2 == (((v1 - 35500) | 0x5240) ^ 0xE9D595DE) && v3 != 0;
  return (*(STACK[0xF18] + 8 * ((v5 * (((v1 - 32118) | 0x12) + 53540)) ^ (v1 - 10976))))();
}

uint64_t sub_100677900()
{
  STACK[0xA370] = STACK[0x3250] + 56;
  STACK[0x10EE8] = &STACK[0x10E48];
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800) ^ 0xCD24) + 18068;
  LODWORD(STACK[0x10ED8]) = (v0 + 12724) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCBC0)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 28632 + ((v0 - 1822908978) & 0x6CA7EBFB))))(v2);
}

uint64_t sub_1006779C0()
{
  v0 = STACK[0xDC0];
  v1 = (LODWORD(STACK[0xDC0]) + 20557) | 0xA09;
  v2 = STACK[0x73A0];
  v3 = STACK[0xE70];
  v4 = *(STACK[0xE70] + 17) ^ 0xA554DB73;
  *v2 = v4;
  v5 = v3[11];
  LODWORD(STACK[0xED0]) = v1;
  v6 = (((v5 ^ 0x99667189) + 1721339511) ^ ((v5 ^ 0x47452B28) - 1195715368) ^ (v1 + (v5 ^ 0xDE235A02) + 568072899)) + 607558139;
  v7 = v4 ^ v6 ^ ((v6 ^ 0xF40479A8) - 186884242) ^ ((v6 ^ 0x803755ED) - 2131791063) ^ ((v6 ^ 0xE4E31A80) - 465879994) ^ ((v6 ^ 0x6FF7EFFF) + 1865402683);
  v8 = (((v7 ^ 0x651ADF92) + 1707276632) ^ ((v7 ^ 0x283BF06B) + 686020271) ^ ((v7 ^ 0x17522D13) + 394922967)) + 165165072;
  *v2 = v8 ^ ((v8 ^ 0xDE455C0E) + 1298407390) ^ ((v8 ^ 0x7953F2DD) - 361582321) ^ ((v8 ^ 0xB037ED04) + 588689112) ^ ((v8 ^ 0x7BFFFFFB) - 388056023) ^ 0xC98A67FC;
  v9 = (((v3[18] ^ 0xD1AF8A12) + 777025006) ^ ((v3[18] ^ 0xAA213693) + 1440663917) ^ ((v3[18] ^ 0x7B8EBC22) - 2072951842)) - 57420512;
  v10 = (v9 ^ 0xE24D51CD) & (2 * (v9 & 0x36D15E8)) ^ v9 & 0x36D15E8;
  v11 = ((2 * (v9 ^ 0xE287534D)) ^ 0xC3D48D4A) & (v9 ^ 0xE287534D) ^ (2 * (v9 ^ 0xE287534D)) & 0xE1EA46A4;
  v12 = (v11 ^ 0x1C00400) & (4 * v10) ^ v10;
  v13 = ((4 * (v11 ^ 0x202A42A5)) ^ 0x87A91A94) & (v11 ^ 0x202A42A5) ^ (4 * (v11 ^ 0x202A42A5)) & 0xE1EA46A4;
  v14 = (v13 ^ 0x81A80280) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x60424421)) ^ 0x1EA46A50) & (v13 ^ 0x60424421) ^ (16 * (v13 ^ 0x60424421)) & 0xE1EA4680;
  v16 = v14 ^ 0xE1EA46A5 ^ (v15 ^ 0xA04200) & (v14 << 8);
  v17 = v9 ^ (2 * ((v16 << 16) & 0x61EA0000 ^ v16 ^ ((v16 << 16) ^ 0x46A50000) & (((v15 ^ 0xE14A04A5) << 8) & 0x61EA0000 ^ 0x1A80000 ^ (((v15 ^ 0xE14A04A5) << 8) ^ 0x6A460000) & (v15 ^ 0xE14A04A5)))) ^ 0x2B97A212;
  v2[1] = v17;
  v18 = (((v3[12] ^ 0x2ECB81B1) - 785088945) ^ ((v3[12] ^ 0xCFDEFE17) + 807469545) ^ ((v3[12] ^ 0xE1157F05) + 518684923)) - 975522159;
  v19 = v18 ^ ((v18 ^ 0xF7CF64BE) - 1459917166) ^ ((v18 ^ 0xC59468C9) - 1700764953) ^ ((v18 ^ 0x6DCF8659) + 855346295) ^ ((v18 ^ 0xFF5F7FFE) - 1603570222) ^ v17;
  v20 = (((v19 ^ 0x9C851C22) - 1011804658) ^ ((v19 ^ 0xEEF28B50) - 1312390784) ^ ((v19 ^ 0xB8D25812) - 404336066)) - 790406983;
  v2[1] = v20 ^ ((v20 ^ 0xE52A0487) + 1946519182) ^ ((v20 ^ 0x7541617A) - 462494863) ^ ((v20 ^ 0x546C5F7) - 1805039618) ^ ((v20 ^ 0xFBFDDDFF) + 1792172022) ^ 0x4BE4745;
  v21 = (((v3[19] ^ 0x73EE0C51) - 1944980561) ^ ((v3[19] ^ 0x33B11101) - 867242241) ^ ((v3[19] ^ 0x405F1DF3) - 1079975411)) - 302527819;
  v22 = (v21 ^ 0x924108B5) & (2 * (v21 & 0x120A0AB8)) ^ v21 & 0x120A0AB8;
  v23 = ((2 * (v21 ^ 0x925109A5)) ^ 0xB6063A) & (v21 ^ 0x925109A5) ^ (2 * (v21 ^ 0x925109A5)) & 0x805B031C;
  v24 = (v23 ^ 0x100200) & (4 * v22) ^ v22;
  v25 = ((4 * (v23 ^ 0x80490105)) ^ 0x16C0C74) & (v23 ^ 0x80490105) ^ (4 * (v23 ^ 0x80490105)) & 0x805B031C;
  v26 = (v25 ^ 0x480000) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x80130309)) ^ 0x5B031D0) & (v25 ^ 0x80130309) ^ (16 * (v25 ^ 0x80130309)) & 0x805B0310;
  v28 = v26 ^ 0x805B031D ^ (v27 ^ 0x100100) & (v26 << 8);
  v29 = v21 ^ (2 * ((v28 << 16) & 0x5B0000 ^ v28 ^ ((v28 << 16) ^ 0x31D0000) & (((v27 ^ 0x804B020D) << 8) & 0x5B0000 ^ 0x580000 ^ (((v27 ^ 0x804B020D) << 8) ^ 0x5B030000) & (v27 ^ 0x804B020D)))) ^ 0x1708DA45;
  v2[2] = v29;
  v30 = (((v3[13] ^ 0x5DBC39AA) - 1572616618) ^ ((v3[13] ^ 0xCC82A987) + 863852153) ^ ((v3[13] ^ 0x913E908E) + 1858170738)) - 716562351;
  v31 = ((v30 ^ 0x99A40C96) - 698307334) ^ v30 ^ ((v30 ^ 0x79D36B0) + 1213830880) ^ ((v30 ^ 0xC5DCBA49) - 1978131929) ^ ((v30 ^ 0xEBDEDFFF) - 1541767279) ^ v29;
  v32 = (((v31 ^ 0xD8824A75) - 1756960229) ^ ((v31 ^ 0xC6F8A3EA) - 1992555642) ^ ((v31 ^ 0xABC760C8) - 469516120)) + 1597895534;
  v2[2] = v32 ^ ((v32 ^ 0x4CCE15CB) - 786196824) ^ ((v32 ^ 0x8CF93CD4) + 286572473) ^ ((v32 ^ 0xDF52AA72) + 1119824159) ^ ((v32 ^ 0x7D77FFFE) - 526746477) ^ 0x6794AA54;
  v33 = (((v3[20] ^ 0x33540DC1) - 861146561) ^ ((v3[20] ^ 0x166247EE) - 375539694) ^ ((v3[20] ^ 0x25364A8C) - 624315020)) - 305501344;
  v34 = v33 ^ ((v33 ^ 0x1DD75649) + 267321913) ^ ((v33 ^ 0x2BE6DB72) + 970886916) ^ ((v33 ^ 0x6029594A) + 1913720124) ^ ((v33 ^ 0xBBDF7FFF) - 1444467825) ^ 0xFE430E19;
  v2[3] = v34;
  v35 = (((v3[14] ^ 0xB3C543B5) + 1278917707) ^ ((v3[14] ^ 0xAB0176C9) + 1425967415) ^ ((v3[14] ^ 0x18C435DF) - 415512031)) + 550859971;
  v36 = (v35 ^ 0x21B463FE) & (2 * (v35 & 0x4394BFE)) ^ v35 & 0x4394BFE;
  v37 = ((2 * (v35 ^ 0x21A6E65A)) ^ 0x4B3F5B48) & (v35 ^ 0x21A6E65A) ^ (2 * (v35 ^ 0x21A6E65A)) & 0x259FADA4;
  v38 = (v37 ^ 0x10F0900) & (4 * v36) ^ v36;
  v39 = ((4 * (v37 ^ 0x2480A4A4)) ^ 0x967EB690) & (v37 ^ 0x2480A4A4) ^ (4 * (v37 ^ 0x2480A4A4)) & 0x259FADA0;
  v40 = (v39 ^ 0x41EA480) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x21810924)) ^ 0x59FADA40) & (v39 ^ 0x21810924) ^ (16 * (v39 ^ 0x21810924)) & 0x259FAD80;
  v42 = v40 ^ 0x259FADA4 ^ (v41 ^ 0x19A8800) & (v40 << 8);
  v43 = v35 ^ v34 ^ (2 * ((v42 << 16) & 0x259F0000 ^ v42 ^ ((v42 << 16) ^ 0x2DA40000) & (((v41 ^ 0x240525A4) << 8) & 0x259F0000 ^ 0x20120000 ^ (((v41 ^ 0x240525A4) << 8) ^ 0x1FAD0000) & (v41 ^ 0x240525A4))));
  v44 = (((v43 ^ 0x2FE774F4) - 736715842) ^ ((v43 ^ 0x2020096F) - 607001049) ^ ((v43 ^ 0x184DC8BA) - 474208268)) + 1067260131;
  v45 = (v44 ^ 0xA36E88C8) & (2 * (v44 & 0xCB8C2CC8)) ^ v44 & 0xCB8C2CC8;
  v46 = ((2 * (v44 ^ 0x2166D8C8)) ^ 0xD5D5E800) & (v44 ^ 0x2166D8C8) ^ (2 * (v44 ^ 0x2166D8C8)) & 0xEAEAF400;
  v47 = (v46 ^ 0x4040E000) & (4 * v45) ^ v45;
  v48 = ((4 * (v46 ^ 0x2A2A1400)) ^ 0xABABD000) & (v46 ^ 0x2A2A1400) ^ (4 * (v46 ^ 0x2A2A1400)) & 0xEAEAF400;
  v49 = v47 ^ 0xEAEAF400 ^ (v48 ^ 0xAAAAD000) & (16 * v47);
  v50 = (16 * (v48 ^ 0x40402400)) & 0xEAEAF400 ^ 0x4040B400 ^ ((16 * (v48 ^ 0x40402400)) ^ 0xAEAF4000) & (v48 ^ 0x40402400);
  v51 = (v49 << 8) & 0xEAEAF400 ^ v49 ^ ((v49 << 8) ^ 0xEAF40000) & v50;
  v2[3] = v44 ^ (2 * ((v51 << 16) & 0x6AEA0000 ^ v51 ^ ((v51 << 16) ^ 0x74000000) & ((v50 << 8) & 0x6AEA0000 ^ 0xA0000 ^ ((v50 << 8) ^ 0x6AF40000) & v50))) ^ 0x181D615F;
  v52 = (((v3[21] ^ 0xABD13964) + 1412351644) ^ ((v3[21] ^ 0xDA23F952) + 635176622) ^ ((v3[21] ^ 0x71F2C095) - 1911734421)) + 785993675;
  v53 = v52 ^ ((v52 ^ 0xB9BF0C40) + 1754617388) ^ ((v52 ^ 0x267A3569) - 145723645) ^ ((v52 ^ 0x4ECF2352) - 1612351174) ^ ((v52 ^ 0xFFDFBFEF) + 787867013) ^ 0x6B396DF7;
  v2[4] = v53;
  v54 = (((v3[15] ^ 0xE9A96A81) + 374773119) ^ ((v3[15] ^ 0x3FB6C14E) - 1068941646) ^ ((v3[15] ^ 0xD61FAB6C) + 702567572)) - 1730539613;
  v55 = v54 ^ ((v54 ^ 0xF1618273) + 2102735727) ^ ((v54 ^ 0x86271A13) + 169061135) ^ ((v54 ^ 0x73B2097D) - 7948191) ^ v53 ^ ((v54 ^ 0x773FDFFF) - 83136797);
  v56 = (((v55 ^ 0x2A4AAF3) - 1903158289) ^ ((v55 ^ 0xC4D868DD) + 1223481793) ^ ((v55 ^ 0xF05B44AF) + 2087712179)) + 1863309910;
  v2[4] = v56 ^ ((v56 ^ 0x81B46A33) + 1328931860) ^ ((v56 ^ 0xC04C5309) + 248372522) ^ ((v56 ^ 0x8F79B716) + 1106786615) ^ ((v56 ^ 0xFFFFFFF3) + 830370260) ^ 0x7492B9BC;
  v57 = (((v3[22] ^ 0xB4EFA097) + 1259364201) ^ ((v3[22] ^ 0x9740ACA0) + 1757369184) ^ ((v3[22] ^ 0x23AF0C94) - 598674580)) + 485192344;
  v58 = v57 ^ ((v57 ^ 0xAA53BDDA) + 1229627354) ^ ((v57 ^ 0xCED59EC6) + 768392390) ^ ((v57 ^ 0x79E0D3E) - 460902594) ^ ((v57 ^ 0x7FFEF3DE) - 1662529058) ^ 0x3CD36B04;
  v2[5] = v58;
  v59 = (((v3[16] ^ 0xD1020758) + 788396200) ^ ((v3[16] ^ 0xC6A2340B) + 962448373) ^ ((v3[16] ^ 0x17A033F0) - 396375024)) - 1672943685;
  v60 = (v59 ^ 0x6C91D8B4) & (2 * (v59 & 0x88C5D906)) ^ v59 & 0x88C5D906;
  v61 = ((2 * (v59 ^ 0x7D9178B0)) ^ 0xEAA9436C) & (v59 ^ 0x7D9178B0) ^ (2 * (v59 ^ 0x7D9178B0)) & 0xF554A1B6;
  v62 = (v61 ^ 0x60000020) & (4 * v60) ^ v60;
  v63 = ((4 * (v61 ^ 0x1554A092)) ^ 0xD55286D8) & (v61 ^ 0x1554A092) ^ (4 * (v61 ^ 0x1554A092)) & 0xF554A1B0;
  v64 = (v63 ^ 0xD5508080) & (16 * v62) ^ v62;
  v65 = ((16 * (v63 ^ 0x20042126)) ^ 0x554A1B60) & (v63 ^ 0x20042126) ^ (16 * (v63 ^ 0x20042126)) & 0xF554A1A0;
  v66 = v64 ^ 0xF554A1B6 ^ (v65 ^ 0x55400100) & (v64 << 8);
  v67 = v59 ^ v58 ^ (2 * ((v66 << 16) & 0x75540000 ^ v66 ^ ((v66 << 16) ^ 0x21B60000) & (((v65 ^ 0xA014A096) << 8) & 0x75540000 ^ 0x21540000 ^ (((v65 ^ 0xA014A096) << 8) ^ 0x54A10000) & (v65 ^ 0xA014A096))));
  v68 = (((v67 ^ 0xC96B4BB) - 751972049) ^ ((v67 ^ 0xE93D514C) + 914765018) ^ ((v67 ^ 0xE5DAC965) + 979479793)) - 1759657995;
  v69 = (v68 ^ 0xAE3E0786) & (2 * (v68 & 0x80BC9717)) ^ v68 & 0x80BC9717;
  v70 = ((2 * (v68 ^ 0xAF770BAE)) ^ 0x5F973972) & (v68 ^ 0xAF770BAE) ^ (2 * (v68 ^ 0xAF770BAE)) & 0x2FCB9CB8;
  v71 = (v70 ^ 0x7821830) & (4 * v69) ^ v69;
  v72 = ((4 * (v70 ^ 0x20488489)) ^ 0xBF2E72E4) & (v70 ^ 0x20488489) ^ (4 * (v70 ^ 0x20488489)) & 0x2FCB9CB8;
  v73 = (v72 ^ 0x2F0A10A0) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0xC18C19)) ^ 0xFCB9CB90) & (v72 ^ 0xC18C19) ^ (16 * (v72 ^ 0xC18C19)) & 0x2FCB9C90;
  v75 = v73 ^ 0x2FCB9CB9 ^ (v74 ^ 0x2C898800) & (v73 << 8);
  v2[5] = v68 ^ (2 * ((v75 << 16) & 0x2FCB0000 ^ v75 ^ ((v75 << 16) ^ 0x1CB90000) & (((v74 ^ 0x3421429) << 8) & 0x2FCB0000 ^ 0x24430000 ^ (((v74 ^ 0x3421429) << 8) ^ 0x4B9C0000) & (v74 ^ 0x3421429)))) ^ 0xE60C189D;
  v76 = (((v3[23] ^ 0xCE38EE04) + 835129852) ^ ((v3[23] ^ 0xD79A390C) + 677758708) ^ ((v3[23] ^ 0x19A2D7AB) - 430102443)) + 371178033;
  v77 = (v76 ^ 0xC1D59680) & (2 * (v76 & 0xE9E5C4D0)) ^ v76 & 0xE9E5C4D0;
  v78 = ((2 * (v76 ^ 0x83959E20)) ^ 0xD4E0B5E0) & (v76 ^ 0x83959E20) ^ (2 * (v76 ^ 0x83959E20)) & 0x6A705AF0;
  v79 = (v78 ^ 0x402010C0) & (4 * v77) ^ v77;
  v80 = ((4 * (v78 ^ 0x2A104A10)) ^ 0xA9C16BC0) & (v78 ^ 0x2A104A10) ^ (4 * (v78 ^ 0x2A104A10)) & 0x6A705AF0;
  v81 = ((16 * (v80 ^ 0x42301030)) ^ 0xA705AF00) & (v80 ^ 0x42301030) ^ (16 * (v80 ^ 0x42301030)) & 0x6A705AC0;
  v82 = (v80 ^ 0x28404AC0) & (16 * v79) ^ v79 ^ 0x6A705AF0 ^ (v81 ^ 0x22000A00) & (((v80 ^ 0x28404AC0) & (16 * v79) ^ v79) << 8);
  v2[6] = v76;
  v83 = (((v3[17] ^ 0xC5DDF034) + 975310796) ^ ((v3[17] ^ 0x3E692A19) - 1047079449) ^ ((v3[17] ^ 0xFBB4DA8E) + 72033650)) + 1377097191;
  v84 = (v83 ^ 0x98FDC298) & (2 * (v83 & 0xD2F9EADA)) ^ v83 & 0xD2F9EADA;
  v85 = ((2 * (v83 ^ 0x1CAE130C)) ^ 0x9CAFF3AC) & (v83 ^ 0x1CAE130C) ^ (2 * (v83 ^ 0x1CAE130C)) & 0xCE57F9D6;
  v86 = (v85 ^ 0x8C07F180) & (4 * v84) ^ v84;
  v87 = ((4 * (v85 ^ 0x42500852)) ^ 0x395FE758) & (v85 ^ 0x42500852) ^ (4 * (v85 ^ 0x42500852)) & 0xCE57F9D0;
  v88 = (v87 ^ 0x857E140) & (16 * v86) ^ v86;
  v89 = ((16 * (v87 ^ 0xC6001886)) ^ 0xE57F9D60) & (v87 ^ 0xC6001886) ^ (16 * (v87 ^ 0xC6001886)) & 0xCE57F9C0;
  v90 = v88 ^ 0xCE57F9D6 ^ (v89 ^ 0xC4579900) & (v88 << 8);
  v91 = v83 ^ v76 ^ (2 * ((v82 << 16) & 0x6A700000 ^ v82 ^ ((v82 << 16) ^ 0x5AF00000) & (((v81 ^ 0x487050F0) << 8) & 0x6A700000 ^ 0xA200000 ^ (((v81 ^ 0x487050F0) << 8) ^ 0x705A0000) & (v81 ^ 0x487050F0)) ^ v90 ^ (v90 << 16) & 0x4E570000 ^ ((v90 << 16) ^ 0x79D60000) & (((v89 ^ 0xA006096) << 8) & 0x4E570000 ^ 0x8060000 ^ (((v89 ^ 0xA006096) << 8) ^ 0x57F90000) & (v89 ^ 0xA006096))));
  v2[6] = (((v91 ^ 0xE245C742) - 1053142201) ^ ((v91 ^ 0xE14A0C3E) - 1036675013) ^ ((v91 ^ 0x7410A33A) + 1466906431)) - 1185030399;
  v92 = (((v3[24] ^ 0x496136CF) - 1231107791) ^ ((v3[24] ^ 0x64D672ED) - 1691775725) ^ ((v3[24] ^ 0x2DB74481) - 766985345)) - 734806680;
  v93 = v92 ^ ((v92 ^ 0xC206DFFD) - 371952639) ^ ((v92 ^ 0xD222F0A1) - 101688483) ^ ((v92 ^ 0x3BF49421) + 270942173) ^ ((v92 ^ 0xFFFDEF7F) - 735099773) ^ 0xDF18CED6;
  v2[7] = v93;
  v94 = (((v3[18] ^ 0x8F85735) - 150492981) ^ ((v3[18] ^ 0xE81F45C8) + 400603704) ^ ((v3[18] ^ 0xE0E7125E) + 521727394)) - 2038391197;
  v95 = v94 ^ ((v94 ^ 0xC8A63375) + 1445466409) ^ ((v94 ^ 0x4746EDE5) - 641151047) ^ ((v94 ^ 0x912EFDCD) + 262201233) ^ v93 ^ ((v94 ^ 0x7FBFFEFF) - 516825949);
  v96 = (((v95 ^ 0x41CBED62) - 549073088) ^ ((v95 ^ 0x17B520BA) - 1992621336) ^ ((v95 ^ 0x3C3A8AAE) - 1565218572)) + 1469918208;
  v97 = (v96 ^ 0xB38AEE0) & (2 * (v96 & 0xAB3D0EE8)) ^ v96 & 0xAB3D0EE8;
  v98 = ((2 * (v96 ^ 0x5918A6A0)) ^ 0xE44B5090) & (v96 ^ 0x5918A6A0) ^ (2 * (v96 ^ 0x5918A6A0)) & 0xF225A848;
  v99 = (v98 ^ 0xE0000000) & (4 * v97) ^ v97;
  v100 = ((4 * (v98 ^ 0x1224A848)) ^ 0xC896A120) & (v98 ^ 0x1224A848) ^ (4 * (v98 ^ 0x1224A848)) & 0xF225A848;
  v101 = (v100 ^ 0xC004A000) & (16 * v99) ^ v99;
  v102 = ((16 * (v100 ^ 0x32210848)) ^ 0x225A8480) & (v100 ^ 0x32210848) ^ (16 * (v100 ^ 0x32210848)) & 0xF225A840;
  v103 = v101 ^ 0xF225A848 ^ (v102 ^ 0x22008000) & (v101 << 8);
  v2[7] = v96 ^ (2 * ((v103 << 16) & 0x72250000 ^ v103 ^ ((v103 << 16) ^ 0x28480000) & (((v102 ^ 0xD0252848) << 8) & 0x72250000 ^ 0x52050000 ^ (((v102 ^ 0xD0252848) << 8) ^ 0x25A80000) & (v102 ^ 0xD0252848)))) ^ 0x443C4AC;
  v104 = (((v3[25] ^ 0xABDAD288) + 1411722616) ^ ((v3[25] ^ 0xE68A9A29) + 427124183) ^ ((v3[25] ^ 0x4D504802) - 1297106946)) - 1610344091;
  v2[8] = v104 ^ ((v104 ^ 0x19D4CCB) + 1637775023) ^ ((v104 ^ 0x328287BE) + 1384234460) ^ ((v104 ^ 0x111EF501) + 1897779045) ^ ((v104 ^ 0xBDFDFBEE) - 570506868) ^ 0x2EB28084;
  v105 = (((v3[19] ^ 0xC12C6386) + 1054055546) ^ ((v3[19] ^ 0x47302901) - 1194338561) ^ ((v3[19] ^ 0x861C4A24) + 2044966364)) - 1068312949;
  v106 = STACK[0x73A0];
  v107 = v105 ^ *(STACK[0x73A0] + 32) ^ ((v105 ^ 0x8A0D70C1) - 290022667) ^ ((v105 ^ 0xEF4925B8) - 1947021426) ^ ((v105 ^ 0x80F7BF0C) - 464759494) ^ ((v105 ^ 0x7EF7FFBF) + 441193867);
  v108 = (((v107 ^ 0x4CA0D992) + 672871336) ^ ((v107 ^ 0xDC562269) - 1192376227) ^ ((v107 ^ 0xBAFCAB2F) - 565755621)) + 151824564;
  *(STACK[0x73A0] + 32) = v108 ^ ((v108 ^ 0x85E6F3E1) + 436260765) ^ ((v108 ^ 0x12546A3A) - 1917692344) ^ ((v108 ^ 0x8855A5A6) + 397646300) ^ ((v108 ^ 0x7FFEFFFF) - 535247997) ^ 0xD157869C;
  v109 = (((v3[26] ^ 0xA11F097D) + 1591801475) ^ ((v3[26] ^ 0x46095A80) - 1175018112) ^ ((v3[26] ^ 0xE716535E) + 417967266)) - 1146053640;
  v110 = (v109 ^ 0x15573BB7) & (2 * (v109 & 0x4457A238)) ^ v109 & 0x4457A238;
  v111 = ((2 * (v109 ^ 0x9D7E3FC7)) ^ 0xB2533BFE) & (v109 ^ 0x9D7E3FC7) ^ (2 * (v109 ^ 0x9D7E3FC7)) & 0xD9299DFE;
  v112 = (v111 ^ 0x100119E0) & (4 * v110) ^ v110;
  v113 = ((4 * (v111 ^ 0x49288401)) ^ 0x64A677FC) & (v111 ^ 0x49288401) ^ (4 * (v111 ^ 0x49288401)) & 0xD9299DFC;
  v114 = (v113 ^ 0x402015E0) & (16 * v112) ^ v112;
  v115 = ((16 * (v113 ^ 0x99098803)) ^ 0x9299DFF0) & (v113 ^ 0x99098803) ^ (16 * (v113 ^ 0x99098803)) & 0xD9299DF0;
  v116 = v114 ^ 0xD9299DFF ^ (v115 ^ 0x90099D00) & (v114 << 8);
  v106[9] = v109 ^ (2 * ((v116 << 16) & 0x59290000 ^ v116 ^ ((v116 << 16) ^ 0x1DFF0000) & (((v115 ^ 0x4920000F) << 8) & 0x59290000 ^ 0x50200000 ^ (((v115 ^ 0x4920000F) << 8) ^ 0x299D0000) & (v115 ^ 0x4920000F)))) ^ 0x80AB08EF;
  v117 = (((v3[20] ^ 0x6524F403) - 1696920579) ^ ((v3[20] ^ 0xBC44B9FA) + 1136346630) ^ ((v3[20] ^ 0xD9604D5A) + 648000166)) + 1104560127;
  v118 = (v117 ^ 0xEBB272CB) & (2 * (v117 & 0xE33880C2)) ^ v117 & 0xE33880C2;
  v119 = ((2 * (v117 ^ 0x6DD2724B)) ^ 0x1DD5E512) & (v117 ^ 0x6DD2724B) ^ (2 * (v117 ^ 0x6DD2724B)) & 0x8EEAF288;
  v120 = (v119 ^ 0xCC00000) & (4 * v118) ^ v118;
  v121 = ((4 * (v119 ^ 0x822A1289)) ^ 0x3BABCA24) & (v119 ^ 0x822A1289) ^ (4 * (v119 ^ 0x822A1289)) & 0x8EEAF288;
  v122 = (v121 ^ 0xAAAC200) & (16 * v120) ^ v120;
  v123 = ((16 * (v121 ^ 0x84403089)) ^ 0xEEAF2890) & (v121 ^ 0x84403089) ^ (16 * (v121 ^ 0x84403089)) & 0x8EEAF280;
  v124 = v122 ^ 0x8EEAF289 ^ (v123 ^ 0x8EAA2000) & (v122 << 8);
  v125 = (v124 << 16) & 0xEEA0000 ^ v124 ^ ((v124 << 16) ^ 0x72890000) & (((v123 ^ 0x40D209) << 8) & 0xEEA0000 ^ 0x4080000 ^ (((v123 ^ 0x40D209) << 8) ^ 0x6AF20000) & (v123 ^ 0x40D209));
  v126 = STACK[0x73A0];
  v127 = v117 ^ *(STACK[0x73A0] + 36) ^ (2 * v125);
  v128 = (((v127 ^ 0xA58FEEFE) - 1584565038) ^ ((v127 ^ 0x2AD5A4AE) + 785858178) ^ ((v127 ^ 0x305ABEA9) + 878191751)) + 1768789095;
  v129 = (v128 ^ 0xCA36D8C5) & (2 * (v128 & 0xD3349CD6)) ^ v128 & 0xD3349CD6;
  v130 = ((2 * (v128 ^ 0xEE76E9C5)) ^ 0x7A84EA26) & (v128 ^ 0xEE76E9C5) ^ (2 * (v128 ^ 0xEE76E9C5)) & 0x3D427512;
  v131 = (v130 ^ 0x18006000) & (4 * v129) ^ v129;
  v132 = ((4 * (v130 ^ 0x5421511)) ^ 0xF509D44C) & (v130 ^ 0x5421511) ^ (4 * (v130 ^ 0x5421511)) & 0x3D427510;
  v133 = (v132 ^ 0x35005400) & (16 * v131) ^ v131;
  v134 = ((16 * (v132 ^ 0x8422113)) ^ 0xD4275130) & (v132 ^ 0x8422113) ^ (16 * (v132 ^ 0x8422113)) & 0x3D427510;
  v135 = v133 ^ 0x3D427513 ^ (v134 ^ 0x14025100) & (v133 << 8);
  *(v126 + 36) = v128 ^ (2 * ((v135 << 16) & 0x3D420000 ^ v135 ^ ((v135 << 16) ^ 0x75130000) & (((v134 ^ 0x29402403) << 8) & 0x3D420000 ^ 0x3D020000 ^ (((v134 ^ 0x29402403) << 8) ^ 0x42750000) & (v134 ^ 0x29402403)))) ^ 0x8749E7D9;
  *(v126 + 40) = (((v3[27] ^ 0x8BB4BFB2) + 1951088718) ^ ((v3[27] ^ 0x2C2C2E2) - 46318306) ^ ((v3[27] ^ 0x89767DF3) + 1988723213)) + 228537513;
  LODWORD(v126) = v2[10];
  v136 = (v126 ^ 0xEB6DF3EE) & (2 * (v126 & 0xF269F3EC)) ^ v126 & 0xF269F3EC;
  v137 = ((2 * (v126 ^ 0xCBEF51A6)) ^ 0x730D4494) & (v126 ^ 0xCBEF51A6) ^ (2 * (v126 ^ 0xCBEF51A6)) & 0x3986A24A;
  v138 = (v137 ^ 0x11040000) & (4 * v136) ^ v136;
  v139 = ((4 * (v137 ^ 0x882A24A)) ^ 0xE61A8928) & (v137 ^ 0x882A24A) ^ (4 * (v137 ^ 0x882A24A)) & 0x3986A248;
  v140 = ((16 * (v139 ^ 0x19842242)) ^ 0x986A24A0) & (v139 ^ 0x19842242) ^ (16 * (v139 ^ 0x19842242)) & 0x3986A240;
  v141 = (v139 ^ 0x20028000) & (16 * v138) ^ v138 ^ 0x3986A24A ^ (v140 ^ 0x18022000) & (((v139 ^ 0x20028000) & (16 * v138) ^ v138) << 8);
  v142 = (((v3[21] ^ 0x6F8BEDA8) - 1871441320) ^ ((v3[21] ^ 0x29F9E767) - 704243559) ^ ((v3[21] ^ 0x46720A6C) - 1181878892)) + 626249173;
  v143 = (v142 ^ 0xFFB2F0CA) & (2 * (v142 & 0xFFBAF2EC)) ^ v142 & 0xFFBAF2EC;
  v144 = ((2 * (v142 ^ 0xA9D31182)) ^ 0xACD3C6DC) & (v142 ^ 0xA9D31182) ^ (2 * (v142 ^ 0xA9D31182)) & 0x5669E36E;
  v145 = (v144 ^ 0x441C240) & (4 * v143) ^ v143;
  v146 = ((4 * (v144 ^ 0x52282122)) ^ 0x59A78DB8) & (v144 ^ 0x52282122) ^ (4 * (v144 ^ 0x52282122)) & 0x5669E368;
  v147 = (v146 ^ 0x50218120) & (16 * v145) ^ v145;
  v148 = ((16 * (v146 ^ 0x6486246)) ^ 0x669E36E0) & (v146 ^ 0x6486246) ^ (16 * (v146 ^ 0x6486246)) & 0x5669E360;
  v149 = v147 ^ 0x5669E36E ^ (v148 ^ 0x46082200) & (v147 << 8);
  LODWORD(v126) = v142 ^ v126 ^ (2 * ((v141 << 16) & 0x39860000 ^ v141 ^ ((v141 << 16) ^ 0x224A0000) & (((v140 ^ 0x2184824A) << 8) & 0x39860000 ^ 0x39040000 ^ (((v140 ^ 0x2184824A) << 8) ^ 0x86A20000) & (v140 ^ 0x2184824A)) ^ v149 ^ (v149 << 16) & 0x56690000 ^ ((v149 << 16) ^ 0x636E0000) & (((v148 ^ 0x1061C10E) << 8) & 0x56690000 ^ 0x16080000 ^ (((v148 ^ 0x1061C10E) << 8) ^ 0x69E30000) & (v148 ^ 0x1061C10E))));
  v2[10] = (((v126 ^ 0x5623BA46) - 2069569952) ^ ((v126 ^ 0x9DE3BA68) + 1332010610) ^ ((v126 ^ 0xDD198366) + 262072192)) + 1088144598;
  LODWORD(v126) = (((v3[28] ^ 0xEEC2DAC0) + 289219904) ^ ((v3[28] ^ 0x5588D538) - 1435030840) ^ ((v3[28] ^ 0xBB4A0F5B) + 1152774309)) + 2104522552;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x6C8928F0) - 300895438) ^ ((v126 ^ 0xCCA4F681) + 1312648513) ^ ((v126 ^ 0x223405B1) - 1599234447) ^ ((v126 ^ 0xFF7FBFFE) + 2112234560) ^ 0x1B583B93;
  v2[11] = v126;
  v150 = (((v3[22] ^ 0x10BE9251) - 280924753) ^ ((v3[22] ^ 0x3609336C) - 906572652) ^ ((v3[22] ^ 0x26B7A19E) - 649568670)) + 1241484837;
  LODWORD(v126) = v150 ^ v126 ^ ((v150 ^ 0x65C825D2) - 1094248630) ^ ((v150 ^ 0x2E3EE684) - 181283808) ^ ((v150 ^ 0x90F9F58D) + 1274464023) ^ ((v150 ^ 0xFFFFFBBF) + 619759909);
  LODWORD(v126) = (((v126 ^ 0x110A89D6) - 905594034) ^ ((v126 ^ 0xC262573F) + 426599845) ^ ((v126 ^ 0x91A64C20) + 1252622012)) + 1583133869;
  v151 = (v126 ^ 0xFF650BC4) & (2 * (v126 & 0xFF864B14)) ^ v126 & 0xFF864B14;
  v152 = ((2 * (v126 ^ 0xDD619FCC)) ^ 0x45CFA9B0) & (v126 ^ 0xDD619FCC) ^ (2 * (v126 ^ 0xDD619FCC)) & 0x22E7D4D8;
  v153 = (v152 ^ 0x30090) & (4 * v151) ^ v151;
  v154 = ((4 * (v152 ^ 0x22205448)) ^ 0x8B9F5360) & (v152 ^ 0x22205448) ^ (4 * (v152 ^ 0x22205448)) & 0x22E7D4D8;
  v155 = (v154 ^ 0x2875040) & (16 * v153) ^ v153;
  v156 = ((16 * (v154 ^ 0x20608498)) ^ 0x2E7D4D80) & (v154 ^ 0x20608498) ^ (16 * (v154 ^ 0x20608498)) & 0x22E7D4C0;
  v157 = v155 ^ 0x22E7D4D8 ^ (v156 ^ 0x22654400) & (v155 << 8);
  v2[11] = v126 ^ (2 * ((v157 << 16) & 0x22E70000 ^ v157 ^ ((v157 << 16) ^ 0x54D80000) & (((v156 ^ 0x829058) << 8) & 0x22E70000 ^ 0x230000 ^ (((v156 ^ 0x829058) << 8) ^ 0x67D40000) & (v156 ^ 0x829058)))) ^ 0xDDF7BD09;
  LODWORD(v126) = (((v3[29] ^ 0x34C045DB) - 885016027) ^ ((v3[29] ^ 0xF60BABA9) + 167007319) ^ ((v3[29] ^ 0xC2CBEED1) + 1026822447)) - 819626125;
  v158 = (v126 ^ 0xBEF57DEF) & (2 * (v126 & 0x30E57DEC)) ^ v126 & 0x30E57DEC;
  v159 = ((2 * (v126 ^ 0xBFFDE4E7)) ^ 0x1E313216) & (v126 ^ 0xBFFDE4E7) ^ (2 * (v126 ^ 0xBFFDE4E7)) & 0x8F18990A;
  v160 = (v159 ^ 0x6101000) & (4 * v158) ^ v158;
  v161 = ((4 * (v159 ^ 0x81088909)) ^ 0x3C62642C) & (v159 ^ 0x81088909) ^ (4 * (v159 ^ 0x81088909)) & 0x8F189908;
  v162 = (v161 ^ 0xC000000) & (16 * v160) ^ v160;
  v163 = ((16 * (v161 ^ 0x83189903)) ^ 0xF18990B0) & (v161 ^ 0x83189903) ^ (16 * (v161 ^ 0x83189903)) & 0x8F189900;
  v164 = v162 ^ 0x8F18990B ^ (v163 ^ 0x81089000) & (v162 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v164 << 16) & 0xF180000 ^ v164 ^ ((v164 << 16) ^ 0x190B0000) & (((v163 ^ 0xE10090B) << 8) & 0xF180000 ^ (((v163 ^ 0xE10090B) << 8) ^ 0x18990000) & (v163 ^ 0xE10090B) ^ 0x7000000))) ^ 0x58426BAB;
  v2[12] = v126;
  v165 = (((v3[23] ^ 0xDEF90DF9) + 554103303) ^ ((v3[23] ^ 0x2E0E239B) - 772678555) ^ ((v3[23] ^ 0xF0F72EC1) + 252236095)) - 2017690343;
  v166 = (v165 ^ 0x59013307) & (2 * (v165 & 0x9D5243A8)) ^ v165 & 0x9D5243A8;
  v167 = ((2 * (v165 ^ 0x4121B217)) ^ 0xB8E7E37E) & (v165 ^ 0x4121B217) ^ (2 * (v165 ^ 0x4121B217)) & 0xDC73F1BE;
  v168 = (v167 ^ 0x98430120) & (4 * v166) ^ v166;
  v169 = ((4 * (v167 ^ 0x44101081)) ^ 0x71CFC6FC) & (v167 ^ 0x44101081) ^ (4 * (v167 ^ 0x44101081)) & 0xDC73F1BC;
  v170 = (v169 ^ 0x5043C0A0) & (16 * v168) ^ v168;
  v171 = ((16 * (v169 ^ 0x8C303103)) ^ 0xC73F1BF0) & (v169 ^ 0x8C303103) ^ (16 * (v169 ^ 0x8C303103)) & 0xDC73F1B0;
  v172 = v170 ^ 0xDC73F1BF ^ (v171 ^ 0xC4331100) & (v170 << 8);
  LODWORD(v126) = v126 ^ v165 ^ (2 * ((v172 << 16) & 0x5C730000 ^ v172 ^ ((v172 << 16) ^ 0x71BF0000) & (((v171 ^ 0x1840E00F) << 8) & 0x5C730000 ^ 0xC020000 ^ (((v171 ^ 0x1840E00F) << 8) ^ 0x73F10000) & (v171 ^ 0x1840E00F))));
  LODWORD(v126) = (((v126 ^ 0xF25C4FD0) - 2005921542) ^ ((v126 ^ 0xB774665F) - 849856137) ^ ((v126 ^ 0xA47DAD08) - 565054942)) - 1639952410;
  v173 = (v126 ^ 0xBDEB627E) & (2 * (v126 & 0xBDEA747F)) ^ v126 & 0xBDEA747F;
  v174 = ((2 * (v126 ^ 0xDDAF6AD0)) ^ 0xC08A3D5E) & (v126 ^ 0xDDAF6AD0) ^ (2 * (v126 ^ 0xDDAF6AD0)) & 0x60451EAE;
  v175 = (v174 ^ 0x4000100C) & (4 * v173) ^ v173;
  v176 = ((4 * (v174 ^ 0x204502A1)) ^ 0x81147ABC) & (v174 ^ 0x204502A1) ^ (4 * (v174 ^ 0x204502A1)) & 0x60451EAC;
  v177 = (v176 ^ 0x41AA0) & (16 * v175) ^ v175;
  v178 = ((16 * (v176 ^ 0x60410403)) ^ 0x451EAF0) & (v176 ^ 0x60410403) ^ (16 * (v176 ^ 0x60410403)) & 0x60451EA0;
  v179 = v177 ^ 0x60451EAF ^ (v178 ^ 0x410A00) & (v177 << 8);
  v2[12] = v126 ^ (2 * ((v179 << 16) & 0x60450000 ^ v179 ^ ((v179 << 16) ^ 0x1EAF0000) & (((v178 ^ 0x6004140F) << 8) & 0x60450000 ^ 0x20410000 ^ (((v178 ^ 0x6004140F) << 8) ^ 0x451E0000) & (v178 ^ 0x6004140F)))) ^ 0x19EC6D70;
  LODWORD(v126) = (((v3[30] ^ 0xC202B46D) + 1040010131) ^ ((v3[30] ^ 0x168A3071) - 378155121) ^ ((v3[30] ^ 0xD48884BF) + 729250625)) + 2146554534;
  v180 = (v126 ^ 0x5B11D55D) & (2 * (v126 & 0x801A151E)) ^ v126 & 0x801A151E;
  v181 = ((2 * (v126 ^ 0x5B01F559)) ^ 0xB637C08E) & (v126 ^ 0x5B01F559) ^ (2 * (v126 ^ 0x5B01F559)) & 0xDB1BE046;
  v182 = (v181 ^ 0x10C000) & (4 * v180) ^ v180;
  v183 = ((4 * (v181 ^ 0x49082041)) ^ 0x6C6F811C) & (v181 ^ 0x49082041) ^ (4 * (v181 ^ 0x49082041)) & 0xDB1BE044;
  v184 = ((16 * (v183 ^ 0x93106043)) ^ 0xB1BE0470) & (v183 ^ 0x93106043) ^ (16 * (v183 ^ 0x93106043)) & 0xDB1BE040;
  v185 = (v183 ^ 0x480B8000) & (16 * v182) ^ v182 ^ 0xDB1BE047 ^ (v184 ^ 0x911A0000) & (((v183 ^ 0x480B8000) & (16 * v182) ^ v182) << 8);
  LODWORD(v126) = v126 ^ (2 * ((v185 << 16) & 0x5B1B0000 ^ v185 ^ ((v185 << 16) ^ 0x60470000) & (((v184 ^ 0x4A01E007) << 8) & 0x5B1B0000 ^ 0x401B0000 ^ (((v184 ^ 0x4A01E007) << 8) ^ 0x1BE00000) & (v184 ^ 0x4A01E007)))) ^ 0xD0E0F172;
  v2[13] = v126;
  v186 = (((v3[24] ^ 0xFA548E9D) + 95121763) ^ ((v3[24] ^ 0xA3FF5349) + 1543548087) ^ ((v3[24] ^ 0x59ABDD77) - 1504435575)) - 1328017475;
  LODWORD(v126) = ((v186 ^ 0xD148D9F7) - 1518442251) ^ v186 ^ ((v186 ^ 0xE260B195) - 1772748649) ^ ((v186 ^ 0xC71ED979) - 1289197445) ^ ((v186 ^ 0x7FFFFFE7) + 197742309) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x5E529798) + 711206556) ^ ((v126 ^ 0xB31F9CE3) - 953602591) ^ ((v126 ^ 0x4F6165) + 1954140263)) - 2039664153;
  v187 = (v126 ^ 0x9912DAAF) & (2 * (v126 & 0xD802930F)) ^ v126 & 0xD802930F;
  v188 = ((2 * (v126 ^ 0xB917FCBB)) ^ 0xC22ADF68) & (v126 ^ 0xB917FCBB) ^ (2 * (v126 ^ 0xB917FCBB)) & 0x61156FB4;
  v189 = (v188 ^ 0x40004C20) & (4 * v187) ^ v187;
  v190 = ((4 * (v188 ^ 0x21152094)) ^ 0x8455BED0) & (v188 ^ 0x21152094) ^ (4 * (v188 ^ 0x21152094)) & 0x61156FB0;
  v191 = (v190 ^ 0x152E90) & (16 * v189) ^ v189;
  v192 = ((16 * (v190 ^ 0x61004124)) ^ 0x1156FB40) & (v190 ^ 0x61004124) ^ (16 * (v190 ^ 0x61004124)) & 0x61156F80;
  v193 = v191 ^ 0x61156FB4 ^ (v192 ^ 0x1146B00) & (v191 << 8);
  v2[13] = v126 ^ (2 * ((v193 << 16) & 0x61150000 ^ v193 ^ ((v193 << 16) ^ 0x6FB40000) & (((v192 ^ 0x600104B4) << 8) & 0x61150000 ^ 0x60100000 ^ (((v192 ^ 0x600104B4) << 8) ^ 0x156F0000) & (v192 ^ 0x600104B4)))) ^ 0xBECB6885;
  LODWORD(v126) = (((v3[31] ^ 0x9E588A13) + 1638364653) ^ ((v3[31] ^ 0xC5FCF30B) + 973278453) ^ ((v3[31] ^ 0x5BA479BB) - 1537505723)) - 1495882623;
  v194 = (v126 ^ 0x11250D0F) & (2 * (v126 & 0x59362DA8)) ^ v126 & 0x59362DA8;
  v195 = ((2 * (v126 ^ 0x1655F0F)) ^ 0xB0A6E54E) & (v126 ^ 0x1655F0F) ^ (2 * (v126 ^ 0x1655F0F)) & 0x585372A6;
  v196 = (v195 ^ 0x6000) & (4 * v194) ^ v194;
  v197 = ((4 * (v195 ^ 0x485112A1)) ^ 0x614DCA9C) & (v195 ^ 0x485112A1) ^ (4 * (v195 ^ 0x485112A1)) & 0x585372A4;
  v198 = (v197 ^ 0x40414280) & (16 * v196) ^ v196;
  v199 = ((16 * (v197 ^ 0x18123023)) ^ 0x85372A70) & (v197 ^ 0x18123023) ^ (16 * (v197 ^ 0x18123023)) & 0x585372A0;
  v200 = v198 ^ 0x585372A7 ^ (v199 ^ 0x132200) & (v198 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v200 << 16) & 0x58530000 ^ v200 ^ ((v200 << 16) ^ 0x72A70000) & (((v199 ^ 0x58405087) << 8) & 0x58530000 ^ 0x8010000 ^ (((v199 ^ 0x58405087) << 8) ^ 0x53720000) & (v199 ^ 0x58405087)))) ^ 0x7CC989D4;
  v2[14] = v126;
  v201 = (((v3[25] ^ 0x735EFF3C) - 1935605564) ^ ((v3[25] ^ 0xB45B914E) + 1269067442) ^ ((v3[25] ^ 0xC7056ED1) + 955945263)) + 1493228199;
  LODWORD(v126) = ((v201 ^ 0xA1B88089) + 1840604817) ^ v201 ^ ((v201 ^ 0x9A55C1F0) + 1448617962) ^ ((v201 ^ 0x77E1B360) - 1142139526) ^ ((v201 ^ 0x7FFEEBFF) - 1275916825) ^ v126;
  LODWORD(v126) = (((v126 ^ 0xAC972DD4) + 1620757454) ^ ((v126 ^ 0x87357F98) + 1262000514) ^ ((v126 ^ 0x2D0F0A98) - 519902078)) + 1718918312;
  v2[14] = v126 ^ ((v126 ^ 0x937EFB6F) + 1441906675) ^ ((v126 ^ 0x2464E74D) - 487873583) ^ ((v126 ^ 0xF11159AF) + 933109043) ^ ((v126 ^ 0x7F7BFEEF) - 1175143821) ^ 0xC2FFA50;
  LODWORD(v126) = (((*v3 ^ 0xD6FA4664) + 688241052) ^ ((*v3 ^ 0x3206FC2A) - 839318570) ^ ((*v3 ^ 0xE4FCBAED) + 453199123)) - 692242078;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x89ABDFD7) - 1594139395) ^ ((v126 ^ 0xE31D745) + 660690031) ^ ((v126 ^ 0xCFCA89B1) - 426112357) ^ ((v126 ^ 0x9EFFFDF7) - 1213235491) ^ 0xA9AF9736;
  v2[15] = v126;
  v202 = (((v3[26] ^ 0x9CDBCA05) + 1663317499) ^ ((v3[26] ^ 0x51CF133D) - 1372525373) ^ ((v3[26] ^ 0xCD14D99B) + 854271589)) + 473424897;
  LODWORD(v126) = v202 ^ ((v202 ^ 0xB0651705) - 1196176453) ^ ((v202 ^ 0x5632B92D) + 1592026515) ^ ((v202 ^ 0x66817607) + 1851239097) ^ ((v202 ^ 0x77FFFB6F) + 2133403601) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x5F4A11D0) + 1469894000) ^ ((v126 ^ 0xE4374970) - 320760368) ^ ((v126 ^ 0x33549002) + 998395070)) - 1134567393;
  v2[15] = v126 ^ ((v126 ^ 0x4190083) - 1101223082) ^ ((v126 ^ 0xB5BC66) - 1158670415) ^ ((v126 ^ 0xBCFD1533) + 112770790) ^ ((v126 ^ 0xFDEBFDFF) + 1202607658) ^ 0x3ABABFCB;
  LODWORD(v126) = (((v3[1] ^ 0xA71D1425) + 1491266523) ^ ((v3[1] ^ 0x946BD450) + 1804872624) ^ ((v3[1] ^ 0x3376C0D6) - 863420630)) - 1692098347;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x372AFB1F) + 1405156611) ^ ((v126 ^ 0x54105BC3) + 821714399) ^ ((v126 ^ 0x87508EC5) - 474314535) ^ ((v126 ^ 0x7F7FD7FB) + 462803431) ^ 0x8CB5A0DA;
  v2[16] = v126;
  v203 = (((v3[27] ^ 0x37007F94) - 922779540) ^ ((v3[27] ^ 0xE837EF22) + 398987486) ^ ((v3[27] ^ 0xDF379015) + 550006763)) - 636723329;
  LODWORD(v126) = ((v203 ^ 0x741D37BF) + 1059018495) ^ v203 ^ ((v203 ^ 0x6C1FA063) + 656261411) ^ ((v203 ^ 0x1320F69F) + 1478662111) ^ ((v203 ^ 0xBFDFFFFD) - 186802499) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x73B06013) + 951189843) ^ ((v126 ^ 0x7BF8B183) + 821743811) ^ ((v126 ^ 0xAB151616) - 535333032)) + 2098815298;
  v2[16] = v126 ^ ((v126 ^ 0xA2022857) + 808038495) ^ ((v126 ^ 0x5CE6B586) - 825414256) ^ ((v126 ^ 0xEC8F45D8) + 2124733906) ^ ((v126 ^ 0x7FBFBFFF) - 309057545) ^ 0x7A743ECE;
  LODWORD(v126) = (((v3[2] ^ 0x2E4CC965) - 776784229) ^ ((v3[2] ^ 0x2765BFB5) - 660979637) ^ ((v3[2] ^ 0x9297673) - 153712243)) + 665135260;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xA04A8D45) + 2015421951) ^ ((v126 ^ 0x8D9304C0) + 1442409596) ^ ((v126 ^ 0x75BBE116) - 1378776658) ^ ((v126 ^ 0x7FF7FFD7) - 1482844307) ^ 0x7B8B7869;
  v2[17] = v126;
  v204 = (((v3[28] ^ 0xE7FE9DB4) + 402743884) ^ ((v3[28] ^ 0xED0F2AA2) + 317773150) ^ ((v3[28] ^ 0xAF1B7B5) - 183613365)) + 1042698289;
  LODWORD(v126) = ((v204 ^ 0x10FF0420) - 166234960) ^ v204 ^ ((v204 ^ 0xA56CB39C) + 1132774164) ^ ((v204 ^ 0x53530739) - 1246005321) ^ ((v204 ^ 0xFFD73FF5) + 423579515) ^ v126;
  LODWORD(v126) = (((v126 ^ 0xF2C04818) + 338180248) ^ ((v126 ^ 0xA7914525) + 1098462635) ^ ((v126 ^ 0x10586D60) - 156230160)) + 1957827138;
  v2[17] = v126 ^ ((v126 ^ 0x2A36F396) - 181956759) ^ ((v126 ^ 0x5DDD2175) - 2100535924) ^ ((v126 ^ 0x88DAAE1B) + 1472975590) ^ ((v126 ^ 0xDFDFFFF9) + 13533960) ^ 0x7CF06C2C;
  LODWORD(v126) = (((v3[3] ^ 0x489DB36D) - 1218294637) ^ ((v3[3] ^ 0x4C6693A2) - 1281790882) ^ ((v3[3] ^ 0x4FB206C) - 83566700)) - 2060253985;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x692DBEDE) + 334546948) ^ ((v126 ^ 0x9C4FE8A5) - 426598791) ^ ((v126 ^ 0x81BF22A6) - 77441924) ^ ((v126 ^ 0xF1FFFDFF) - 1960670429) ^ 0xC41BDBEF;
  v2[18] = v126;
  v205 = (((v3[29] ^ 0xDC67A5EB) + 597187093) ^ ((v3[29] ^ 0x24CB9F78) - 617324408) ^ ((v3[29] ^ 0xF8AC3A30) + 122930640)) + 1824632015;
  LODWORD(v126) = v205 ^ ((v205 ^ 0x17E7A07A) - 1347767412) ^ ((v205 ^ 0x85FF4C65) + 1035100053) ^ ((v205 ^ 0x2B1DFFEE) - 1823413216) ^ ((v205 ^ 0xFEB7FFFF) + 1190849551) ^ v126;
  LODWORD(v126) = (((v126 ^ 0xFB338992) + 1132370532) ^ ((v126 ^ 0xEDD256F5) + 1436501253) ^ ((v126 ^ 0x106A61A4) - 1473809834)) - 1594893910;
  v2[18] = v126 ^ ((v126 ^ 0x772072FB) - 523342898) ^ ((v126 ^ 0xA0E2BFDF) + 923576042) ^ ((v126 ^ 0xC02CD730) + 1472384519) ^ ((v126 ^ 0x7FFFFCDD) - 401480212) ^ 0x2928B404;
  LODWORD(v126) = (((v3[4] ^ 0x6726E874) - 1730603124) ^ ((v3[4] ^ 0xCCF86491) + 856136559) ^ ((v3[4] ^ 0xABDE8C46) + 1411478458)) - 501389560;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x4FDBB041) + 1378373465) ^ ((v126 ^ 0x55BF3A05) + 1212990749) ^ ((v126 ^ 0x878F31DD) - 1703096635) ^ ((v126 ^ 0x7FE7BB7F) + 1645495399) ^ 0x79A7C985;
  v2[19] = v126;
  v206 = (((v3[30] ^ 0xC1FBDD60) + 1040458400) ^ ((v3[30] ^ 0x39CEF683) - 969864835) ^ ((v3[30] ^ 0xF8352B40) + 130733248)) + 38040191;
  v207 = (v206 ^ 0xB2C16D1B) & (2 * (v206 & 0x22CA4E42)) ^ v206 & 0x22CA4E42;
  v208 = ((2 * (v206 ^ 0xB355619F)) ^ 0x233E5FBA) & (v206 ^ 0xB355619F) ^ (2 * (v206 ^ 0xB355619F)) & 0x919F2FDC;
  v209 = (v208 ^ 0x11A0B18) & (4 * v207) ^ v207;
  v210 = ((4 * (v208 ^ 0x90812045)) ^ 0x467CBF74) & (v208 ^ 0x90812045) ^ (4 * (v208 ^ 0x90812045)) & 0x919F2FDC;
  v211 = (v210 ^ 0x1C2F40) & (16 * v209) ^ v209;
  v212 = ((16 * (v210 ^ 0x91830089)) ^ 0x19F2FDD0) & (v210 ^ 0x91830089) ^ (16 * (v210 ^ 0x91830089)) & 0x919F2FD0;
  v213 = v211 ^ 0x919F2FDD ^ (v212 ^ 0x11922D00) & (v211 << 8);
  LODWORD(v126) = v206 ^ v126 ^ (2 * ((v213 << 16) & 0x119F0000 ^ v213 ^ ((v213 << 16) ^ 0x2FDD0000) & (((v212 ^ 0x800D020D) << 8) & 0x119F0000 ^ 0x900000 ^ (((v212 ^ 0x800D020D) << 8) ^ 0x1F2F0000) & (v212 ^ 0x800D020D))));
  LODWORD(v126) = (((v126 ^ 0xE9E66DD8) + 349668320) ^ ((v126 ^ 0x7EC571FE) - 2081120262) ^ ((v126 ^ 0xE46C4BD) - 210294085)) - 1177026367;
  v2[19] = v126 ^ ((v126 ^ 0x96446DF3) + 1329333575) ^ ((v126 ^ 0xB265624D) + 1797065465) ^ ((v126 ^ 0x7D594709) - 1541328963) ^ ((v126 ^ 0x7FFFDFFD) - 1501055159) ^ 0xBD2C5E29;
  LODWORD(v126) = (((v3[5] ^ 0xE8706B2B) + 395285717) ^ ((v3[5] ^ 0x84710EEF) + 2072965393) ^ ((v3[5] ^ 0x6C016567) - 1812030823)) - 1531300329;
  v214 = (v126 ^ 0x5A51537C) & (2 * (v126 & 0x5B581A70)) ^ v126 & 0x5B581A70;
  v215 = ((2 * (v126 ^ 0x6A51573C)) ^ 0x62129A98) & (v126 ^ 0x6A51573C) ^ (2 * (v126 ^ 0x6A51573C)) & 0x31094D4C;
  v216 = (v215 ^ 0x20000800) & (4 * v214) ^ v214;
  v217 = ((4 * (v215 ^ 0x11094544)) ^ 0xC4253530) & (v215 ^ 0x11094544) ^ (4 * (v215 ^ 0x11094544)) & 0x31094D48;
  v218 = (v217 ^ 0x10500) & (16 * v216) ^ v216;
  v219 = ((16 * (v217 ^ 0x3108484C)) ^ 0x1094D4C0) & (v217 ^ 0x3108484C) ^ (16 * (v217 ^ 0x3108484C)) & 0x31094D40;
  v220 = v218 ^ 0x31094D4C ^ (v219 ^ 0x10004400) & (v218 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v220 << 16) & 0x31090000 ^ v220 ^ ((v220 << 16) ^ 0x4D4C0000) & (((v219 ^ 0x2109090C) << 8) & 0x31090000 ^ (((v219 ^ 0x2109090C) << 8) ^ 0x94D0000) & (v219 ^ 0x2109090C) ^ 0x30000000))) ^ 0x39F618B2;
  v2[20] = v126;
  v221 = (((v3[31] ^ 0x5D5A8004) - 1566212100) ^ ((v3[31] ^ 0xD935D44A) + 650783670) ^ ((v3[31] ^ 0x846F54ED) + 2073078547)) - 1565107017;
  LODWORD(v126) = v221 ^ ((v221 ^ 0x35F7F76D) - 1213230235) ^ ((v221 ^ 0xA460D468) + 641249378) ^ ((v221 ^ 0x93CFC744) + 295150414) ^ ((v221 ^ 0x7FFF7FB7) - 39380033) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x60F0AD1F) - 492254953) ^ ((v126 ^ 0xD060DFDB) + 1379449811) ^ ((v126 ^ 0xCF9B7168) + 1304630626)) + 1533550843;
  v2[20] = v126 ^ ((v126 ^ 0x6279CB0) - 1731294269) ^ ((v126 ^ 0x654F754F) - 72981954) ^ ((v126 ^ 0x9D81FA8C) + 57208319) ^ ((v126 ^ 0x9FFFFBFE) + 18279565) ^ 0x63BA70D7;
  LODWORD(v126) = (((v3[6] ^ 0x37B1332B) - 934359851) ^ ((v3[6] ^ 0xD112753C) + 787319492) ^ ((v3[6] ^ 0xE6A346B4) + 425507148)) - 303130238;
  v222 = ((2 * (v126 ^ 0x7308CC5D)) ^ 0xC258DA6E) & (v126 ^ 0x7308CC5D) ^ (2 * (v126 ^ 0x7308CC5D)) & 0x612C6D36;
  v223 = v222 ^ 0x60002821;
  v224 = ((4 * (v222 ^ 0x21242511)) ^ 0x84B1B4DC) & (v222 ^ 0x21242511) ^ (4 * (v222 ^ 0x21242511)) & 0x612C6D34;
  v225 = v224 ^ 0x202400;
  v226 = ((16 * (v224 ^ 0x610C4923)) ^ 0x12C6D370) & (v224 ^ 0x610C4923) ^ (16 * (v224 ^ 0x610C4923)) & 0x612C6D30;
  v227 = ((2 * (v126 & 0x1224A16A)) & 0x20084014 | v126 & 0x1224A16A) ^ (2 * (v126 & 0x1224A16A)) & (v126 ^ 0x7308CC5D);
  v228 = v225 & (16 * (v223 & (4 * v227) ^ v227)) ^ v223 & (4 * v227) ^ v227;
  LODWORD(v126) = v126 ^ (2 * (((v228 ^ 0x612C6D37 ^ (v226 ^ 0x44100) & (v228 << 8)) << 16) & 0x612C0000 ^ v228 ^ 0x612C6D37 ^ (v226 ^ 0x44100) & (v228 << 8) ^ (((v228 ^ 0x612C6D37 ^ (v226 ^ 0x44100) & (v228 << 8)) << 16) ^ 0x6D370000) & (((v226 ^ 0x61282C07) << 8) & 0x612C0000 ^ 0x41000000 ^ (((v226 ^ 0x61282C07) << 8) ^ 0x2C6D0000) & (v226 ^ 0x61282C07)))) ^ 0xFA102434;
  v2[21] = v126;
  v229 = (((*v3 ^ 0x3213C66E) - 840156782) ^ ((*v3 ^ 0x6C7F4D1C) - 1820282140) ^ ((*v3 ^ 0x5E6C8BD1) - 1584171985)) - 1496029857;
  v230 = (v229 ^ 0x7C315A40) & (2 * (v229 & 0x7E3A5B62)) ^ v229 & 0x7E3A5B62;
  v231 = ((2 * (v229 ^ 0xC4457C84)) ^ 0x74FE4FCC) & (v229 ^ 0xC4457C84) ^ (2 * (v229 ^ 0xC4457C84)) & 0xBA7F27E6;
  v232 = (v231 ^ 0x307A0780) & (4 * v230) ^ v230;
  v233 = ((4 * (v231 ^ 0x8A012022)) ^ 0xE9FC9F98) & (v231 ^ 0x8A012022) ^ (4 * (v231 ^ 0x8A012022)) & 0xBA7F27E0;
  v234 = (v233 ^ 0xA87C0780) & (16 * v232) ^ v232;
  v235 = ((16 * (v233 ^ 0x12032066)) ^ 0xA7F27E60) & (v233 ^ 0x12032066) ^ (16 * (v233 ^ 0x12032066)) & 0xBA7F27E0;
  v236 = v234 ^ 0xBA7F27E6 ^ (v235 ^ 0xA2722600) & (v234 << 8);
  LODWORD(v126) = v229 ^ v126 ^ (2 * ((v236 << 16) & 0x3A7F0000 ^ v236 ^ ((v236 << 16) ^ 0x27E60000) & (((v235 ^ 0x180D0186) << 8) & 0x3A7F0000 ^ 0x580000 ^ (((v235 ^ 0x180D0186) << 8) ^ 0x7F270000) & (v235 ^ 0x180D0186))));
  LODWORD(v126) = (((v126 ^ 0xE4192A8A) + 1441710556) ^ ((v126 ^ 0x5DF8407) - 1272418473) ^ ((v126 ^ 0x47EAE513) - 165867965)) + 52934869;
  v237 = (v126 ^ 0x9E89064F) & (2 * (v126 & 0xDCA1466F)) ^ v126 & 0xDCA1466F;
  v238 = ((2 * (v126 ^ 0x2FCB8A57)) ^ 0xE6D59870) & (v126 ^ 0x2FCB8A57) ^ (2 * (v126 ^ 0x2FCB8A57)) & 0xF36ACC38;
  v239 = (v238 ^ 0xE2000830) & (4 * v237) ^ v237;
  v240 = ((4 * (v238 ^ 0x112A4408)) ^ 0xCDAB30E0) & (v238 ^ 0x112A4408) ^ (4 * (v238 ^ 0x112A4408)) & 0xF36ACC38;
  v241 = (v240 ^ 0xC12A0020) & (16 * v239) ^ v239;
  v242 = ((16 * (v240 ^ 0x3240CC18)) ^ 0x36ACC380) & (v240 ^ 0x3240CC18) ^ (16 * (v240 ^ 0x3240CC18)) & 0xF36ACC00;
  v243 = v241 ^ 0xF36ACC38 ^ (v242 ^ 0x3228C000) & (v241 << 8);
  v2[21] = v126 ^ (2 * ((v243 << 16) & 0x736A0000 ^ v243 ^ ((v243 << 16) ^ 0x4C380000) & (((v242 ^ 0xC1420C38) << 8) & 0x736A0000 ^ 0x11220000 ^ (((v242 ^ 0xC1420C38) << 8) ^ 0x6ACC0000) & (v242 ^ 0xC1420C38)))) ^ 0x5200812F;
  LODWORD(v126) = (((v3[7] ^ 0xB6AE3905) + 1230096123) ^ ((v3[7] ^ 0xE76B7297) + 412388713) ^ ((v3[7] ^ 0x51C54B31) - 1371884337)) - 996467029;
  v244 = (v126 ^ 0x3378D424) & (2 * (v126 & 0x3B7906A6)) ^ v126 & 0x3B7906A6;
  v245 = ((2 * (v126 ^ 0x6558D564)) ^ 0xBC43A784) & (v126 ^ 0x6558D564) ^ (2 * (v126 ^ 0x6558D564)) & 0x5E21D3C2;
  v246 = (v245 ^ 0x1C000380) & (4 * v244) ^ v244;
  v247 = ((4 * (v245 ^ 0x42205042)) ^ 0x78874F08) & (v245 ^ 0x42205042) ^ (4 * (v245 ^ 0x42205042)) & 0x5E21D3C0;
  v248 = (v247 ^ 0x58014300) & (16 * v246) ^ v246;
  v249 = ((16 * (v247 ^ 0x62090C2)) ^ 0xE21D3C20) & (v247 ^ 0x62090C2) ^ (16 * (v247 ^ 0x62090C2)) & 0x5E21D3C0;
  v250 = v248 ^ 0x5E21D3C2 ^ (v249 ^ 0x42011000) & (v248 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v250 << 16) & 0x5E210000 ^ v250 ^ ((v250 << 16) ^ 0x53C20000) & (((v249 ^ 0x1C20C3C2) << 8) & 0x5E210000 ^ 0x5E200000 ^ (((v249 ^ 0x1C20C3C2) << 8) ^ 0x21D30000) & (v249 ^ 0x1C20C3C2)))) ^ 0x8EAC8942;
  v2[22] = v126;
  v251 = (((v3[1] ^ 0x9CCBD8D1) + 1664362287) ^ ((v3[1] ^ 0xD1E155A1) + 773761631) ^ ((v3[1] ^ 0x4D2A8DD3) - 1294634451)) - 1223948313;
  v252 = (v251 ^ 0x4CB034D2) & (2 * (v251 & 0x6E02B8DA)) ^ v251 & 0x6E02B8DA;
  v253 = ((2 * (v251 ^ 0x94B03546)) ^ 0xF5651B38) & (v251 ^ 0x94B03546) ^ (2 * (v251 ^ 0x94B03546)) & 0xFAB28D9C;
  v254 = (v253 ^ 0xF0000118) & (4 * v252) ^ v252;
  v255 = ((4 * (v253 ^ 0xA928484)) ^ 0xEACA3670) & (v253 ^ 0xA928484) ^ (4 * (v253 ^ 0xA928484)) & 0xFAB28D98;
  v256 = (v255 ^ 0xEA820400) & (16 * v254) ^ v254;
  v257 = ((16 * (v255 ^ 0x1030898C)) ^ 0xAB28D9C0) & (v255 ^ 0x1030898C) ^ (16 * (v255 ^ 0x1030898C)) & 0xFAB28D80;
  v258 = v256 ^ 0xFAB28D9C ^ (v257 ^ 0xAA208900) & (v256 << 8);
  LODWORD(v126) = v126 ^ v251 ^ (2 * ((v258 << 16) & 0x7AB20000 ^ v258 ^ ((v258 << 16) ^ 0xD9C0000) & (((v257 ^ 0x5092041C) << 8) & 0x7AB20000 ^ 0x48320000 ^ (((v257 ^ 0x5092041C) << 8) ^ 0x328D0000) & (v257 ^ 0x5092041C))));
  LODWORD(v126) = (((v126 ^ 0xB2E9C3FE) - 950951964) ^ ((v126 ^ 0x8181A551) - 197527219) ^ ((v126 ^ 0x14B9ED2D) + 1627500849)) + 34607573;
  v2[22] = v126 ^ ((v126 ^ 0xFF089187) + 1545742106) ^ ((v126 ^ 0x3F009CA5) - 1674958276) ^ ((v126 ^ 0x632AB2BC) - 1073740765) ^ ((v126 ^ 0xFFF7F6FF) + 1558003810) ^ 0xF1436101;
  LODWORD(v126) = (((v3[8] ^ 0xA727A190) + 1490574960) ^ ((v3[8] ^ 0xC35B4E0F) + 1017426417) ^ ((v3[8] ^ 0x647CEF3C) - 1685909308)) + 578191486;
  v259 = (v126 ^ 0x995CCFB0) & (2 * (v126 & 0xDD9E8F38)) ^ v126 & 0xDD9E8F38;
  v260 = ((2 * (v126 ^ 0x2264D3D0)) ^ 0xFFF4B9D0) & (v126 ^ 0x2264D3D0) ^ (2 * (v126 ^ 0x2264D3D0)) & 0xFFFA5CE8;
  v261 = (v260 ^ 0xFEF018C0) & (4 * v259) ^ v259;
  v262 = ((4 * (v260 ^ 0xA4428)) ^ 0xFFE973A0) & (v260 ^ 0xA4428) ^ (4 * (v260 ^ 0xA4428)) & 0xFFFA5CE8;
  v263 = (v262 ^ 0xFFE850A0) & (16 * v261) ^ v261;
  v264 = ((16 * (v262 ^ 0x120C48)) ^ 0xFFA5CE80) & (v262 ^ 0x120C48) ^ (16 * (v262 ^ 0x120C48)) & 0xFFFA5CC0;
  v265 = v263 ^ 0xFFFA5CE8 ^ (v264 ^ 0xFFA04C00) & (v263 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v265 << 16) & 0x7FFA0000 ^ v265 ^ ((v265 << 16) ^ 0x5CE80000) & (((v264 ^ 0x5A1068) << 8) & 0x7FFA0000 ^ 0x5A20000 ^ (((v264 ^ 0x5A1068) << 8) ^ 0x7A5C0000) & (v264 ^ 0x5A1068)))) ^ 0x171906E7;
  v2[23] = v126;
  v266 = (((v3[2] ^ 0xD1991395) + 778497131) ^ ((v3[2] ^ 0xCA068198) + 905543272) ^ ((v3[2] ^ 0x1B9F92AE) - 463442606)) - 587809053;
  v267 = (v266 ^ 0x49912D9D) & (2 * (v266 & 0x481801DE)) ^ v266 & 0x481801DE;
  v268 = ((2 * (v266 ^ 0xC9B12E31)) ^ 0x3525FDE) & (v266 ^ 0xC9B12E31) ^ (2 * (v266 ^ 0xC9B12E31)) & 0x81A92FEE;
  v269 = (v268 ^ 0xFC8) & (4 * v267) ^ v267;
  v270 = ((4 * (v268 ^ 0x80A92021)) ^ 0x6A4BFBC) & (v268 ^ 0x80A92021) ^ (4 * (v268 ^ 0x80A92021)) & 0x81A92FEC;
  v271 = (v270 ^ 0xA02FA0) & (16 * v269) ^ v269;
  v272 = ((16 * (v270 ^ 0x81090043)) ^ 0x1A92FEF0) & (v270 ^ 0x81090043) ^ (16 * (v270 ^ 0x81090043)) & 0x81A92FE0;
  v273 = v271 ^ 0x81A92FEF ^ (v272 ^ 0x802E00) & (v271 << 8);
  LODWORD(v126) = v126 ^ v266 ^ (2 * ((v273 << 16) & 0x1A90000 ^ v273 ^ ((v273 << 16) ^ 0x2FEF0000) & (((v272 ^ 0x8129010F) << 8) & 0x1A90000 ^ (((v272 ^ 0x8129010F) << 8) ^ 0x292F0000) & (v272 ^ 0x8129010F) ^ 0x800000)));
  LODWORD(v126) = (((v126 ^ 0xA3F7C05) - 1109860869) ^ ((v126 ^ 0x7CFE31A2) - 887517090) ^ ((v126 ^ 0xB27A23A8) + 94208600)) - 870954487;
  v274 = (v126 ^ 0xBC29C61A) & (2 * (v126 & 0xB831861A)) ^ v126 & 0xB831861A;
  v275 = ((2 * (v126 ^ 0xFC68CA0A)) ^ 0x88B29820) & (v126 ^ 0xFC68CA0A) ^ (2 * (v126 ^ 0xFC68CA0A)) & 0x44594C10;
  v276 = (v275 ^ 0x800) & (4 * v274) ^ v274;
  v277 = ((4 * (v275 ^ 0x44494410)) ^ 0x11653040) & (v275 ^ 0x44494410) ^ (4 * (v275 ^ 0x44494410)) & 0x44594C10;
  v278 = v276 ^ 0x44594C10 ^ (v277 ^ 0x410000) & (16 * v276);
  v279 = (16 * (v277 ^ 0x44184C10)) & 0x44594C00 ^ 0x490C10 ^ ((16 * (v277 ^ 0x44184C10)) ^ 0x4594C100) & (v277 ^ 0x44184C10);
  v280 = (v278 << 8) & 0x44594C00 ^ v278 ^ ((v278 << 8) ^ 0x594C1000) & v279;
  v2[23] = v126 ^ (2 * ((v280 << 16) & 0x44590000 ^ v280 ^ ((v280 << 16) ^ 0x4C100000) & ((v279 << 8) & 0x44590000 ^ 0x4110000 ^ ((v279 << 8) ^ 0x594C0000) & v279))) ^ 0xB4902E35;
  LODWORD(v126) = (((v3[9] ^ 0xC8FF8E) - 13172622) ^ ((v3[9] ^ 0x2D78B8A9) - 762886313) ^ ((v3[9] ^ 0x2DB04784) - 766527364)) - 2064445051;
  v281 = (v126 ^ 0x7BB0E447) & (2 * (v126 & 0x7B22E896)) ^ v126 & 0x7B22E896;
  v282 = ((2 * (v126 ^ 0xFFF46567)) ^ 0x9AD1BE2) & (v126 ^ 0xFFF46567) ^ (2 * (v126 ^ 0xFFF46567)) & 0x84D68DF0;
  v283 = (v282 ^ 0x8400E0) & (4 * v281) ^ v281;
  v284 = ((4 * (v282 ^ 0x84528411)) ^ 0x135A37C4) & (v282 ^ 0x84528411) ^ (4 * (v282 ^ 0x84528411)) & 0x84D68DF0;
  v285 = (v284 ^ 0x5205C0) & (16 * v283) ^ v283;
  v286 = ((16 * (v284 ^ 0x84848831)) ^ 0x4D68DF10) & (v284 ^ 0x84848831) ^ (16 * (v284 ^ 0x84848831)) & 0x84D68DD0;
  v287 = v285 ^ 0x84D68DF1 ^ (v286 ^ 0x4408D00) & (v285 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v287 << 16) & 0x4D60000 ^ v287 ^ ((v287 << 16) ^ 0xDF10000) & (((v286 ^ 0x809600E1) << 8) & 0x4D60000 ^ 0x520000 ^ (((v286 ^ 0x809600E1) << 8) ^ 0x568D0000) & (v286 ^ 0x809600E1)))) ^ 0x6114EC86;
  v2[24] = v126;
  v288 = (((v3[3] ^ 0x5670CF7) - 90639607) ^ ((v3[3] ^ 0xFA2FD889) + 97527671) ^ ((v3[3] ^ 0xFF48D4DD) + 12004131)) - 891816231;
  v289 = (v288 ^ 0x1AA6A9E9) & (2 * (v288 & 0x5A36C9E8)) ^ v288 & 0x5A36C9E8;
  v290 = ((2 * (v288 ^ 0xAEEA3BA9)) ^ 0xE9B9E482) & (v288 ^ 0xAEEA3BA9) ^ (2 * (v288 ^ 0xAEEA3BA9)) & 0xF4DCF240;
  v291 = (v290 ^ 0xE0986000) & (4 * v289) ^ v289;
  v292 = ((4 * (v290 ^ 0x14441241)) ^ 0xD373C904) & (v290 ^ 0x14441241) ^ (4 * (v290 ^ 0x14441241)) & 0xF4DCF240;
  v293 = (v292 ^ 0xD050C000) & (16 * v291) ^ v291;
  v294 = ((16 * (v292 ^ 0x248C3241)) ^ 0x4DCF2410) & (v292 ^ 0x248C3241) ^ (16 * (v292 ^ 0x248C3241)) & 0xF4DCF240;
  v295 = v293 ^ 0xF4DCF241 ^ (v294 ^ 0x44CC2000) & (v293 << 8);
  LODWORD(v126) = v126 ^ v288 ^ (2 * ((v295 << 16) & 0x74DC0000 ^ v295 ^ ((v295 << 16) ^ 0x72410000) & (((v294 ^ 0xB010D241) << 8) & 0x74DC0000 ^ 0x200C0000 ^ (((v294 ^ 0xB010D241) << 8) ^ 0x5CF20000) & (v294 ^ 0xB010D241))));
  LODWORD(v126) = (((v126 ^ 0xA8E1406F) + 68260603) ^ ((v126 ^ 0xF065AF43) + 1553300951) ^ ((v126 ^ 0x11B0DDB4) - 1119875294)) + 2001491661;
  v2[24] = v126 ^ ((v126 ^ 0xCA7ABDA4) + 1357501597) ^ ((v126 ^ 0x87677AAD) + 502535062) ^ ((v126 ^ 0xD18DAE39) + 1260308226) ^ ((v126 ^ 0xF9FCFFF7) + 1668257488) ^ 0x7F578935;
  LODWORD(v126) = (((v3[10] ^ 0x74F0B3CD) - 1961931725) ^ ((v3[10] ^ 0xFBF989BD) + 67532355) ^ ((v3[10] ^ 0x8F093AD3) + 1895220525)) + 47213338;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xFA2334A) - 219919824) ^ ((v126 ^ 0x20720AE7) - 583765117) ^ ((v126 ^ 0xD29640D8) + 802175422) ^ ((v126 ^ 0xFFFFFFEF) + 45713035) ^ 0x45012D5A;
  v2[25] = v126;
  v296 = (((v3[4] ^ 0x4AE33C7) - 78525383) ^ ((v3[4] ^ 0xD5BD5419) + 709012455) ^ ((v3[4] ^ 0xD113677D) + 787257475)) + 37634871;
  LODWORD(v126) = ((v296 ^ 0xEAF433C6) - 937144752) ^ v296 ^ ((v296 ^ 0x8FA7AAAA) - 1384655068) ^ ((v296 ^ 0xC38BEDE4) - 514092946) ^ ((v296 ^ 0x7BF7F6FE) + 1495763832) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x5E60D544) + 2091952334) ^ ((v126 ^ 0x717DDE41) + 1403888585) ^ ((v126 ^ 0xB58A22B3) - 1755685061)) - 2014105324;
  v297 = (2 * (v126 ^ 0x6EE2D2C5)) & 0xD988C804 ^ 0x48884805 ^ ((2 * (v126 ^ 0x6EE2D2C5)) ^ 0xB311900A) & (v126 ^ 0x6EE2D2C5);
  v298 = (4 * v297) & 0xD988C804 ^ 0x9988C801 ^ ((4 * v297) ^ 0x66232014) & v297;
  v299 = (16 * v298) & 0xD988C800 ^ 0x41004805 ^ ((16 * v298) ^ 0x988C8050) & v298;
  v300 = (2 * (v126 & 0xB76A1AC0)) & (v126 ^ 0x6EE2D2C5) ^ v126 & 0xB76A1AC0 ^ ((2 * (v126 & 0xB76A1AC0)) & 0x48800000 | 0x1008C800);
  v301 = ((4 * v300) ^ 0x40232000) & v297 ^ v300 ^ ((4 * v300) & 0xD988C800 | 4);
  v302 = v301 ^ (16 * v301) & 0xD988C800 ^ ((16 * v301) ^ 0x8C8040) & v298 ^ 0x89088001;
  v303 = (v302 << 8) & 0xD988C800 ^ v302 ^ ((v302 << 8) ^ 0x88C80500) & v299;
  v2[25] = v126 ^ (2 * ((v303 << 16) & 0x59880000 ^ v303 ^ ((v303 << 16) ^ 0x48050000) & ((v299 << 8) & 0x59880000 ^ 0x51000000 ^ ((v299 << 8) ^ 0x8C80000) & v299))) ^ 0xC2D3210A;
  LODWORD(v126) = (((v3[11] ^ 0x6C347C9F) - 1815379103) ^ ((v3[11] ^ 0x3B905889) - 999315593) ^ ((v3[11] ^ 0x57A424B5) - 1470375093)) + 464150837;
  v304 = (v126 ^ 0xF2686D2A) & (2 * (v126 & 0xE46D6DB0)) ^ v126 & 0xE46D6DB0;
  v305 = ((2 * (v126 ^ 0xF2AA750A)) ^ 0x2D8E3174) & (v126 ^ 0xF2AA750A) ^ (2 * (v126 ^ 0xF2AA750A)) & 0x16C718BA;
  v306 = (v305 ^ 0x861000) & (4 * v304) ^ v304;
  v307 = ((4 * (v305 ^ 0x1241088A)) ^ 0x5B1C62E8) & (v305 ^ 0x1241088A) ^ (4 * (v305 ^ 0x1241088A)) & 0x16C718B8;
  v308 = (v307 ^ 0x120400A0) & (16 * v306) ^ v306;
  v309 = ((16 * (v307 ^ 0x4C31812)) ^ 0x6C718BA0) & (v307 ^ 0x4C31812) ^ (16 * (v307 ^ 0x4C31812)) & 0x16C718A0;
  v310 = v308 ^ 0x16C718BA ^ (v309 ^ 0x4410800) & (v308 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v310 << 16) & 0x16C70000 ^ v310 ^ ((v310 << 16) ^ 0x18BA0000) & (((v309 ^ 0x1286101A) << 8) & 0x16C70000 ^ 0x10C70000 ^ (((v309 ^ 0x1286101A) << 8) ^ 0x47180000) & (v309 ^ 0x1286101A)))) ^ 0xD02D3471;
  v2[26] = v126;
  v311 = (((v3[5] ^ 0x97AC94FC) + 1750297348) ^ ((v3[5] ^ 0xF6E133C6) + 153013306) ^ ((v3[5] ^ 0x614DA799) - 1632479129)) + 636758355;
  LODWORD(v126) = ((v311 ^ 0xB7718431) + 1214976861) ^ v311 ^ ((v311 ^ 0x9537AC6E) + 1781349124) ^ ((v311 ^ 0x9D5D9F32) + 1648822368) ^ ((v311 ^ 0xBFFEDFFF) + 1088702611) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x4C8DD30) - 70104482) ^ ((v126 ^ 0x5D5EC6AD) - 1572580927) ^ ((v126 ^ 0x61B91BBA) - 1633448744)) - 1492135715;
  v2[26] = v126 ^ ((v126 ^ 0x2732C0C) - 1960043544) ^ ((v126 ^ 0xA239CB32) + 728169690) ^ ((v126 ^ 0xAB15D8D5) + 575336255) ^ ((v126 ^ 0x7DFFF7FF) - 190791659) ^ 0x4E6AA0A1;
  LODWORD(v126) = (((v3[12] ^ 0x37283397) - 925381527) ^ ((v3[12] ^ 0x24F6A1D8) - 620143064) ^ ((v3[12] ^ 0x13DE92EC) - 333353708)) + 853205666;
  v312 = (v126 ^ 0xCDBD842E) & (2 * (v126 & 0xCD3DD6A8)) ^ v126 & 0xCD3DD6A8;
  v313 = ((2 * (v126 ^ 0x5FF72C6E)) ^ 0x2595F58C) & (v126 ^ 0x5FF72C6E) ^ (2 * (v126 ^ 0x5FF72C6E)) & 0x92CAFAC6;
  v314 = (v313 ^ 0x80F080) & (4 * v312) ^ v312;
  v315 = ((4 * (v313 ^ 0x924A0A42)) ^ 0x4B2BEB18) & (v313 ^ 0x924A0A42) ^ (4 * (v313 ^ 0x924A0A42)) & 0x92CAFAC0;
  v316 = (v315 ^ 0x20AEA00) & (16 * v314) ^ v314;
  v317 = ((16 * (v315 ^ 0x90C010C6)) ^ 0x2CAFAC60) & (v315 ^ 0x90C010C6) ^ (16 * (v315 ^ 0x90C010C6)) & 0x92CAFAC0;
  v318 = v316 ^ 0x92CAFAC6 ^ (v317 ^ 0x8AA800) & (v316 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v318 << 16) & 0x12CA0000 ^ v318 ^ ((v318 << 16) ^ 0x7AC60000) & (((v317 ^ 0x92405286) << 8) & 0x12CA0000 ^ (((v317 ^ 0x92405286) << 8) ^ 0x4AFA0000) & (v317 ^ 0x92405286) ^ 0x10000000))) ^ 0x30E45765;
  v2[27] = v126;
  v319 = (((v3[6] ^ 0x96CE5984) + 1764861564) ^ ((v3[6] ^ 0x95F37F17) + 1779204329) ^ ((v3[6] ^ 0x33D2630) - 54339120)) - 1836943121;
  v320 = (v319 ^ 0x10890782) & (2 * (v319 & 0x928C47D2)) ^ v319 & 0x928C47D2;
  v321 = ((2 * (v319 ^ 0x309900A2)) ^ 0x442A8EE0) & (v319 ^ 0x309900A2) ^ (2 * (v319 ^ 0x309900A2)) & 0xA2154770;
  v322 = (v321 ^ 0x640) & (4 * v320) ^ v320;
  v323 = ((4 * (v321 ^ 0xA2154110)) ^ 0x88551DC0) & (v321 ^ 0xA2154110) ^ (4 * (v321 ^ 0xA2154110)) & 0xA2154770;
  v324 = (v323 ^ 0x80150540) & (16 * v322) ^ v322;
  v325 = ((16 * (v323 ^ 0x22004230)) ^ 0x21547700) & (v323 ^ 0x22004230) ^ (16 * (v323 ^ 0x22004230)) & 0xA2154740;
  v326 = v324 ^ 0xA2154770 ^ (v325 ^ 0x20144700) & (v324 << 8);
  LODWORD(v126) = v126 ^ v319 ^ (2 * ((v326 << 16) & 0x22150000 ^ v326 ^ ((v326 << 16) ^ 0x47700000) & (((v325 ^ 0x82010070) << 8) & 0x22150000 ^ 0x22100000 ^ (((v325 ^ 0x82010070) << 8) ^ 0x15470000) & (v325 ^ 0x82010070))));
  LODWORD(v126) = (((v126 ^ 0xC9EF4A5) + 568836713) ^ ((v126 ^ 0x7371EDDD) + 1577638673) ^ ((v126 ^ 0x50A1A40B) + 2111345351)) - 24239604;
  v2[27] = v126 ^ ((v126 ^ 0xB46E8AFD) + 1118861494) ^ ((v126 ^ 0x83C9B6F4) + 1964459197) ^ ((v126 ^ 0xC179CEC1) + 933706890) ^ ((v126 ^ 0xFFFFFF7F) + 153161016) ^ 0xF4E979F6;
  LODWORD(v126) = (((v3[13] ^ 0x98CF4F1B) + 1731244261) ^ ((v3[13] ^ 0xC3E6BF9B) + 1008287845) ^ ((v3[13] ^ 0x5B29F023) - 1529475107)) - 1352747085;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xCCB537E1) - 1676682213) ^ ((v126 ^ 0xF3448D12) - 1543608598) ^ ((v126 ^ 0x6F4B1108) + 1072823028) ^ ((v126 ^ 0xFFFFBFFF) - 1354411003) ^ 0x8B9A33DB;
  v2[28] = v126;
  v327 = (((v3[7] ^ 0xAF6EE627) + 1351686617) ^ ((v3[7] ^ 0xEBE01188) + 337636984) ^ ((v3[7] ^ 0x448EF70C) - 1150220044)) + 1613183427;
  v328 = (v327 ^ 0xA0D714FC) & (2 * (v327 & 0xC4E786FE)) ^ v327 & 0xC4E786FE;
  v329 = ((2 * (v327 ^ 0xA1141CBC)) ^ 0xCBE73484) & (v327 ^ 0xA1141CBC) ^ (2 * (v327 ^ 0xA1141CBC)) & 0x65F39A42;
  v330 = (v329 ^ 0x1A21000) & (4 * v328) ^ v328;
  v331 = ((4 * (v329 ^ 0x24108A42)) ^ 0x97CE6908) & (v329 ^ 0x24108A42) ^ (4 * (v329 ^ 0x24108A42)) & 0x65F39A40;
  v332 = (v331 ^ 0x5C20800) & (16 * v330) ^ v330;
  v333 = ((16 * (v331 ^ 0x60319242)) ^ 0x5F39A420) & (v331 ^ 0x60319242) ^ (16 * (v331 ^ 0x60319242)) & 0x65F39A40;
  v334 = v332 ^ 0x65F39A42 ^ (v333 ^ 0x45318000) & (v332 << 8);
  LODWORD(v126) = v126 ^ v327 ^ (2 * ((v334 << 16) & 0x65F30000 ^ v334 ^ ((v334 << 16) ^ 0x1A420000) & (((v333 ^ 0x20C21A42) << 8) & 0x65F30000 ^ 0x4610000 ^ (((v333 ^ 0x20C21A42) << 8) ^ 0x739A0000) & (v333 ^ 0x20C21A42))));
  LODWORD(v126) = (((v126 ^ 0x1D903265) - 303333407) ^ ((v126 ^ 0xE5319F37) + 357225139) ^ ((v126 ^ 0xD3FA38F7) + 595686771)) + 1946667230;
  v335 = (v126 ^ 0x67BFF91) & (2 * (v126 & 0xA87BFF15)) ^ v126 & 0xA87BFF15;
  v336 = ((2 * (v126 ^ 0x46BF399B)) ^ 0xDD898D1C) & (v126 ^ 0x46BF399B) ^ (2 * (v126 ^ 0x46BF399B)) & 0xEEC4C68E;
  v337 = (v336 ^ 0xC080840C) & (4 * v335) ^ v335;
  v338 = ((4 * (v336 ^ 0x22444282)) ^ 0xBB131A38) & (v336 ^ 0x22444282) ^ (4 * (v336 ^ 0x22444282)) & 0xEEC4C688;
  v339 = (v338 ^ 0xAA000200) & (16 * v337) ^ v337;
  v340 = ((16 * (v338 ^ 0x44C4C486)) ^ 0xEC4C68E0) & (v338 ^ 0x44C4C486) ^ (16 * (v338 ^ 0x44C4C486)) & 0xEEC4C680;
  v341 = v339 ^ 0xEEC4C68E ^ (v340 ^ 0xEC444000) & (v339 << 8);
  v2[28] = v126 ^ (2 * ((v341 << 16) & 0x6EC40000 ^ v341 ^ ((v341 << 16) ^ 0x468E0000) & (((v340 ^ 0x280860E) << 8) & 0x6EC40000 ^ 0x2A000000 ^ (((v340 ^ 0x280860E) << 8) ^ 0x44C60000) & (v340 ^ 0x280860E)))) ^ 0xDC2555D6;
  LODWORD(v126) = (((v3[14] ^ 0xE5E46A6C) + 438015380) ^ ((v3[14] ^ 0xB780EC50) + 1216287664) ^ ((v3[14] ^ 0x5264869F) - 1382319775)) - 1995359048;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x89AB6B7B) - 22922719) ^ ((v126 ^ 0xDB1935F0) - 1408211796) ^ ((v126 ^ 0x25B38FE4) + 1387978432) ^ ((v126 ^ 0xFFF77FCB) - 1996607855) ^ 0xF6E2719C;
  v2[29] = v126;
  v342 = (((v3[8] ^ 0x274B90E9) - 659263721) ^ ((v3[8] ^ 0xC7FEE6A5) + 939596123) ^ ((v3[8] ^ 0xE0B576EF) + 524978449)) - 1495801183;
  LODWORD(v126) = ((v342 ^ 0xEFCB443F) - 1845650911) ^ v342 ^ ((v342 ^ 0x2601730B) + 1480043797) ^ ((v342 ^ 0xB7FDE96E) - 909428878) ^ ((v342 ^ 0xFFFEFFBA) - 2117590618) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x5B59463B) + 628070437) ^ ((v126 ^ 0xCC3820A5) - 1307640133) ^ ((v126 ^ 0x68BC9846) + 378160730)) - 389329115;
  v343 = (v126 ^ 0x68EC2037) & (2 * (v126 & 0x8CEE3027)) ^ v126 & 0x8CEE3027;
  v344 = ((2 * (v126 ^ 0x79A0207B)) ^ 0xEA9C20B8) & (v126 ^ 0x79A0207B) ^ (2 * (v126 ^ 0x79A0207B)) & 0xF54E105C;
  v345 = (v344 ^ 0x60080018) & (4 * v343) ^ v343;
  v346 = ((4 * (v344 ^ 0x15421044)) ^ 0xD5384170) & (v344 ^ 0x15421044) ^ (4 * (v344 ^ 0x15421044)) & 0xF54E1058;
  v347 = (v346 ^ 0xD5080050) & (16 * v345) ^ v345;
  v348 = ((16 * (v346 ^ 0x2046100C)) ^ 0x54E105C0) & (v346 ^ 0x2046100C) ^ (16 * (v346 ^ 0x2046100C)) & 0xF54E1040;
  v349 = v347 ^ 0xF54E105C ^ (v348 ^ 0x54400000) & (v347 << 8);
  v2[29] = v126 ^ (2 * ((v349 << 16) & 0x754E0000 ^ v349 ^ ((v349 << 16) ^ 0x105C0000) & (((v348 ^ 0xA10E101C) << 8) & 0x754E0000 ^ 0x314E0000 ^ (((v348 ^ 0xA10E101C) << 8) ^ 0x4E100000) & (v348 ^ 0xA10E101C)))) ^ 0x38FECFA7;
  LODWORD(v126) = (((v3[15] ^ 0xED7C9A9) - 249022889) ^ ((v3[15] ^ 0xC70426CC) + 956029236) ^ ((v3[15] ^ 0xC9D3EFC6) + 908857402)) + 1890404563;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xD2D79978) + 1572452062) ^ ((v126 ^ 0x97987E48) + 418796014) ^ ((v126 ^ 0xCA21C891) + 1162864437) ^ ((v126 ^ 0xFFFFFFFB) + 1888604255) ^ 0xDDE56582;
  v2[30] = v126;
  v350 = (((v3[9] ^ 0xEE7A80E4) + 293961500) ^ ((v3[9] ^ 0x4AF35876) - 1257461878) ^ ((v3[9] ^ 0xA489D831) + 1534470095)) - 421618957;
  LODWORD(v126) = ((v350 ^ 0x7F91BFD7) + 1101109787) ^ v350 ^ ((v350 ^ 0x97928B8E) - 1448956348) ^ ((v350 ^ 0xD67A1594) - 397791142) ^ ((v350 ^ 0xFFB6FBFF) - 1048125901) ^ v126;
  LODWORD(v126) = (((v126 ^ 0xB7D1A266) - 1981708372) ^ ((v126 ^ 0x72FACD74) + 1288366266) ^ ((v126 ^ 0xA99000F8) - 1751112394)) - 948728420;
  v2[30] = v126 ^ ((v126 ^ 0x4CD02ECB) - 1854544251) ^ ((v126 ^ 0x797B68BD) - 1528913677) ^ ((v126 ^ 0x280F4E3B) - 173373835) ^ ((v126 ^ 0x3FFE3FFD) - 497289293) ^ 0x8F2E8268;
  LODWORD(v126) = (((v3[16] ^ 0x61EBBFBA) - 1642839994) ^ v3[16] ^ ((v3[16] ^ 0xA7C3C819) + 1480341479)) - 1586595274;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x1F23217A) + 1099876830) ^ ((v126 ^ 0xCB4669AF) - 1779728119) ^ ((v126 ^ 0x8ACCA172) - 731821610) ^ ((v126 ^ 0xFFFBFEFF) - 1588193703) ^ 0x3C53BAA6;
  v2[31] = v126;
  v351 = (((v3[10] ^ 0x4B8FB1FF) - 1267708415) ^ ((v3[10] ^ 0x76922E6D) - 1989291629) ^ ((v3[10] ^ 0x3D1D9F31) - 1025351473)) - 2069626359;
  v352 = (v351 ^ 0x1A623CB3) & (2 * (v351 & 0xA06ABEB8)) ^ v351 & 0xA06ABEB8;
  v353 = ((2 * (v351 ^ 0x1A6311A3)) ^ 0x74135E36) & (v351 ^ 0x1A6311A3) ^ (2 * (v351 ^ 0x1A6311A3)) & 0xBA09AF1A;
  v354 = (v353 ^ 0x10E00) & (4 * v352) ^ v352;
  v355 = ((4 * (v353 ^ 0x8A08A109)) ^ 0xE826BC6C) & (v353 ^ 0x8A08A109) ^ (4 * (v353 ^ 0x8A08A109)) & 0xBA09AF18;
  v356 = (v355 ^ 0xA800AC00) & (16 * v354) ^ v354;
  v357 = ((16 * (v355 ^ 0x12090313)) ^ 0xA09AF1B0) & (v355 ^ 0x12090313) ^ (16 * (v355 ^ 0x12090313)) & 0xBA09AF10;
  v358 = v356 ^ 0xBA09AF1B ^ (v357 ^ 0xA008A100) & (v356 << 8);
  LODWORD(v126) = v351 ^ v126 ^ (2 * ((v358 << 16) & 0x3A090000 ^ v358 ^ ((v358 << 16) ^ 0x2F1B0000) & (((v357 ^ 0x1A010E0B) << 8) & 0x3A090000 ^ 0x32000000 ^ (((v357 ^ 0x1A010E0B) << 8) ^ 0x9AF0000) & (v357 ^ 0x1A010E0B))));
  v359 = (((v126 ^ 0xA80F81D) + 1964304237) ^ ((v126 ^ 0xB01E908A) - 813002756) ^ ((v126 ^ 0xA7F425E7) - 664782185)) + 194308805;
  LODWORD(v126) = (v359 ^ 0x6D554248) & (2 * (v359 & 0x8911634D)) ^ v359 & 0x8911634D;
  v360 = ((2 * (v359 ^ 0x6D570052)) ^ 0xC88CC63E) & (v359 ^ 0x6D570052) ^ (2 * (v359 ^ 0x6D570052)) & 0xE446631E;
  LODWORD(v126) = (v360 ^ 0x4004021C) & (4 * v126) ^ v126;
  v361 = ((4 * (v360 ^ 0x24422101)) ^ 0x91198C7C) & (v360 ^ 0x24422101) ^ (4 * (v360 ^ 0x24422101)) & 0xE446631C;
  LODWORD(v126) = (v361 ^ 0x8000001F) & (16 * v126) ^ v126;
  v362 = ((16 * (v361 ^ 0x64466303)) ^ 0x446631F0) & (v361 ^ 0x64466303) ^ (16 * (v361 ^ 0x64466303)) & 0xE4466310;
  v363 = v126 ^ 0xE446631F ^ (v362 ^ 0x44462100) & (v126 << 8);
  v2[31] = v359 ^ (2 * ((v363 << 16) & 0x64460000 ^ v363 ^ ((v363 << 16) ^ 0x631F0000) & (((v362 ^ 0xA000420F) << 8) & 0x64460000 ^ 0x20040000 ^ (((v362 ^ 0xA000420F) << 8) ^ 0x46630000) & (v362 ^ 0xA000420F)))) ^ 0x1C90088D;
  v364 = (((v3[17] ^ 0xE2021B98) + 503178344) ^ ((v3[17] ^ 0x81445F16) + 2126225642) ^ ((v3[17] ^ 0x6346442D) - 1665549357)) - 2080211373;
  v2[32] = v364 ^ ((v364 ^ 0x654944F0) + 424905248) ^ ((v364 ^ 0xFB5A06B9) - 2025797545) ^ ((v364 ^ 0xEA298EAE) - 1775026110) ^ ((v364 ^ 0xF7DFFDF7) - 1950010599) ^ 0x2B7295A;
  v365 = (((v3[11] ^ 0xA8D05125) + 1462742747) ^ ((v3[11] ^ 0xAE8A4FD1) + 1366667311) ^ ((v3[11] ^ 0x65A1E57) - 106569303)) + 428935721;
  v366 = v365 ^ v106[32] ^ ((v365 ^ 0x584CF71C) + 1395736972) ^ ((v365 ^ 0xDFAFE6D9) - 724414385) ^ ((v365 ^ 0x8C8EA758) - 2014113328) ^ ((v365 ^ 0xFFEFFFF5) - 191739549);
  v367 = (((v366 ^ 0x518EAB5D) + 1525882315) ^ ((v366 ^ 0x3416B6E7) + 1063977073) ^ ((v366 ^ 0x10484C98) + 456522256)) - 1184859282;
  v368 = (v367 ^ 0xBF56BEE6) & (2 * (v367 & 0xBF963CF0)) ^ v367 & 0xBF963CF0;
  v369 = ((2 * (v367 ^ 0xC676C7C6)) ^ 0xF3C1F66C) & (v367 ^ 0xC676C7C6) ^ (2 * (v367 ^ 0xC676C7C6)) & 0x79E0FB36;
  v370 = (v369 ^ 0x70C0F200) & (4 * v368) ^ v368;
  v371 = ((4 * (v369 ^ 0x8200912)) ^ 0xE783ECD8) & (v369 ^ 0x8200912) ^ (4 * (v369 ^ 0x8200912)) & 0x79E0FB30;
  v372 = (v371 ^ 0x6180E800) & (16 * v370) ^ v370;
  v373 = ((16 * (v371 ^ 0x18601326)) ^ 0x9E0FB360) & (v371 ^ 0x18601326) ^ (16 * (v371 ^ 0x18601326)) & 0x79E0FB20;
  v374 = v372 ^ 0x79E0FB36 ^ (v373 ^ 0x1800B300) & (v372 << 8);
  v106[32] = v367 ^ (2 * ((v374 << 16) & 0x79E00000 ^ v374 ^ ((v374 << 16) ^ 0x7B360000) & (((v373 ^ 0x61E04816) << 8) & 0x79E00000 ^ 0x19000000 ^ (((v373 ^ 0x61E04816) << 8) ^ 0x60FB0000) & (v373 ^ 0x61E04816)))) ^ 0x3F45D2D6;
  v375 = (((v3[18] ^ 0x158667FB) - 361129979) ^ ((v3[18] ^ 0x4EC65173) - 1321619827) ^ ((v3[18] ^ 0x5B40362B) - 1530934827)) + 1483384412;
  v106[33] = v375 ^ ((v375 ^ 0x9B5ECFFD) + 1022189239) ^ ((v375 ^ 0x68887C14) - 818156192) ^ ((v375 ^ 0xDE6522A2) + 2044113898) ^ ((v375 ^ 0x75FFFFFF) - 766742859) ^ 0x3B30CB7F;
  v376 = (((v3[12] ^ 0x112B2B3F) - 288041791) ^ ((v3[12] ^ 0x4A90A1A1) - 1250992545) ^ ((v3[12] ^ 0x5BBB8A3D) - 1539017277)) + 2074787153;
  v377 = (v376 ^ 0x8D604B7D) & (2 * (v376 & 0xA9640370)) ^ v376 & 0xA9640370;
  v378 = ((2 * (v376 ^ 0x9FE04B1D)) ^ 0x6D0890DA) & (v376 ^ 0x9FE04B1D) ^ (2 * (v376 ^ 0x9FE04B1D)) & 0x3684486C;
  v379 = (v378 ^ 0x24000040) & (4 * v377) ^ v377;
  v380 = ((4 * (v378 ^ 0x12844825)) ^ 0xDA1121B4) & (v378 ^ 0x12844825) ^ (4 * (v378 ^ 0x12844825)) & 0x3684486C;
  v381 = (v380 ^ 0x12000020) & (16 * v379) ^ v379;
  v382 = ((16 * (v380 ^ 0x24844849)) ^ 0x684486D0) & (v380 ^ 0x24844849) ^ (16 * (v380 ^ 0x24844849)) & 0x36844840;
  LODWORD(v126) = v381 ^ 0x3684486D ^ (v382 ^ 0x20040000) & (v381 << 8);
  LODWORD(v126) = v376 ^ v2[33] ^ (2 * ((v126 << 16) & 0x36840000 ^ v126 ^ ((v126 << 16) ^ 0x486D0000) & (((v382 ^ 0x1680482D) << 8) & 0x36840000 ^ 0x32840000 ^ (((v382 ^ 0x1680482D) << 8) ^ 0x4480000) & (v382 ^ 0x1680482D))));
  LODWORD(v126) = (((v126 ^ 0xA65A852D) - 1648236167) ^ ((v126 ^ 0xFDA9A813) - 969751481) ^ ((v126 ^ 0xFCEB1B5F) - 948930805)) + 2006026516;
  v2[33] = v126 ^ ((v126 ^ 0x554A96F3) - 1228592582) ^ ((v126 ^ 0xC5B0306) - 271269939) ^ ((v126 ^ 0x3F9E2877) - 602827586) ^ ((v126 ^ 0x7AFFFEB7) - 1720696194) ^ 0x7F0CE6FE;
  LODWORD(v126) = (((v3[19] ^ 0x2F177F11) - 790069009) ^ ((v3[19] ^ 0xF635F0FF) + 164237057) ^ ((v3[19] ^ 0xD9228F4D) + 652046515)) + 1341663503;
  v383 = (v126 ^ 0xB136FEFF) & (2 * (v126 & 0xB026F8FE)) ^ v126 & 0xB026F8FE;
  v384 = ((2 * (v126 ^ 0xD1362EF3)) ^ 0xC221AC1A) & (v126 ^ 0xD1362EF3) ^ (2 * (v126 ^ 0xD1362EF3)) & 0x6110D60C;
  v385 = (v384 ^ 0x40008408) & (4 * v383) ^ v383;
  v386 = ((4 * (v384 ^ 0x21105205)) ^ 0x84435834) & (v384 ^ 0x21105205) ^ (4 * (v384 ^ 0x21105205)) & 0x6110D60C;
  v387 = (v386 ^ 0x5000) & (16 * v385) ^ v385;
  v388 = ((16 * (v386 ^ 0x61108609)) ^ 0x110D60D0) & (v386 ^ 0x61108609) ^ (16 * (v386 ^ 0x61108609)) & 0x6110D600;
  v389 = v387 ^ 0x6110D60D ^ (v388 ^ 0x1004000) & (v387 << 8);
  v2[34] = v126 ^ (2 * ((v389 << 16) & 0x61100000 ^ v389 ^ ((v389 << 16) ^ 0x560D0000) & (((v388 ^ 0x6010960D) << 8) & 0x61100000 ^ 0x61000000 ^ (((v388 ^ 0x6010960D) << 8) ^ 0x10D60000) & (v388 ^ 0x6010960D)))) ^ 0x7522A9E2;
  v390 = (((v3[13] ^ 0xC7C28DD) - 209463517) ^ ((v3[13] ^ 0xC901F4B) - 210771787) ^ ((v3[13] ^ 0xEC3735) - 15480629)) - 1220692505;
  v391 = (v390 ^ 0x69C12892) & (2 * (v390 & 0x6DD10ADA)) ^ v390 & 0x6DD10ADA;
  v392 = ((2 * (v390 ^ 0x79412C06)) ^ 0x29204DB8) & (v390 ^ 0x79412C06) ^ (2 * (v390 ^ 0x79412C06)) & 0x149026DC;
  v393 = (v392 ^ 0x498) & (4 * v391) ^ v391;
  v394 = ((4 * (v392 ^ 0x14902244)) ^ 0x52409B70) & (v392 ^ 0x14902244) ^ (4 * (v392 ^ 0x14902244)) & 0x149026D8;
  v395 = (v394 ^ 0x10000240) & (16 * v393) ^ v393;
  v396 = ((16 * (v394 ^ 0x490248C)) ^ 0x49026DC0) & (v394 ^ 0x490248C) ^ (16 * (v394 ^ 0x490248C)) & 0x149026C0;
  v397 = v395 ^ 0x149026DC ^ (v396 ^ 0x2400) & (v395 << 8);
  LODWORD(v126) = v390 ^ v106[34] ^ (2 * ((v397 << 16) & 0x14900000 ^ v397 ^ ((v397 << 16) ^ 0x26DC0000) & (((v396 ^ 0x1490021C) << 8) & 0x14900000 ^ 0x4900000 ^ (((v396 ^ 0x1490021C) << 8) ^ 0x10260000) & (v396 ^ 0x1490021C))));
  LODWORD(v126) = (((v126 ^ 0xD0007927) + 1647231419) ^ ((v126 ^ 0xFE42D0A8) + 1282172982) ^ ((v126 ^ 0xE4B613EB) + 1452845943)) + 2131119191;
  v106[34] = v126 ^ ((v126 ^ 0x17309F50) - 386609261) ^ ((v126 ^ 0x9E3C2043) + 1643671682) ^ ((v126 ^ 0xF2C1CFD3) + 218472210) ^ ((v126 ^ 0x7BF6DFFD) - 2077061312) ^ 0x871E523B;
  STACK[0xE80] = v106;
  LODWORD(v126) = (((v3[20] ^ 0x11D48DF0) - 299142640) ^ ((v3[20] ^ 0x3EDAEB29) - 1054534441) ^ ((v3[20] ^ 0x2F0E667A) - 789472890)) + 1975314974;
  v398 = ((2 * (v126 ^ 0xA05B4CD0)) ^ 0x5470DD08) & (v126 ^ 0xA05B4CD0) ^ (2 * (v126 ^ 0xA05B4CD0)) & 0x2A386E84;
  v399 = v398 ^ 0x102804;
  v400 = ((4 * (v398 ^ 0x2A082284)) ^ 0xA8E1BA10) & (v398 ^ 0x2A082284) ^ (4 * (v398 ^ 0x2A082284)) & 0x2A386E80;
  v401 = v400 ^ 0x28202A00;
  v402 = ((16 * (v400 ^ 0x2184484)) ^ 0xA386E840) & (v400 ^ 0x2184484) ^ (16 * (v400 ^ 0x2184484)) & 0x2A386E80;
  v403 = ((2 * (v126 & 0x8A632254)) & 0x1FF80 | v126 & 0x8A632254) ^ (2 * (v126 & 0x8A632254)) & (v126 ^ 0xA05B4CD0);
  v404 = v401 & (16 * (v399 & (4 * v403) ^ v403)) ^ v399 & (4 * v403) ^ v403;
  v106[35] = v126 ^ (2 * (((v404 ^ 0x2A386E84 ^ (v402 ^ 0x22006800) & (v404 << 8)) << 16) & 0x2A380000 ^ v404 ^ 0x2A386E84 ^ (v402 ^ 0x22006800) & (v404 << 8) ^ (((v404 ^ 0x2A386E84 ^ (v402 ^ 0x22006800) & (v404 << 8)) << 16) ^ 0x6E840000) & (((v402 ^ 0x8380684) << 8) & 0x2A380000 ^ 0x2100000 ^ (((v402 ^ 0x8380684) << 8) ^ 0x386E0000) & (v402 ^ 0x8380684)))) ^ 0xD395648E;
  v405 = (((v3[14] ^ 0xA7001CAD) + 1493164883) ^ ((v3[14] ^ 0xBC5D9437) + 1134717897) ^ ((v3[14] ^ 0x1B5D8839) - 459114553)) + 444120965;
  v406 = (v405 ^ 0x6245D5BD) & (2 * (v405 & 0xA96013C)) ^ v405 & 0xA96013C;
  v407 = ((2 * (v405 ^ 0x6341D7DD)) ^ 0xD3AFADC2) & (v405 ^ 0x6341D7DD) ^ (2 * (v405 ^ 0x6341D7DD)) & 0x69D7D6E0;
  v408 = (v407 ^ 0x408004C0) & (4 * v406) ^ v406;
  v409 = ((4 * (v407 ^ 0x28505221)) ^ 0xA75F5B84) & (v407 ^ 0x28505221) ^ (4 * (v407 ^ 0x28505221)) & 0x69D7D6E0;
  v410 = (v409 ^ 0x21575280) & (16 * v408) ^ v408;
  v411 = ((16 * (v409 ^ 0x48808461)) ^ 0x9D7D6E10) & (v409 ^ 0x48808461) ^ (16 * (v409 ^ 0x48808461)) & 0x69D7D6C0;
  v412 = v410 ^ 0x69D7D6E1 ^ (v411 ^ 0x9554600) & (v410 << 8);
  LODWORD(v126) = v405 ^ v2[35] ^ (2 * ((v412 << 16) & 0x69D70000 ^ v412 ^ ((v412 << 16) ^ 0x56E10000) & (((v411 ^ 0x608290E1) << 8) & 0x69D70000 ^ 0x28010000 ^ (((v411 ^ 0x608290E1) << 8) ^ 0x57D60000) & (v411 ^ 0x608290E1))));
  LODWORD(v126) = (((v126 ^ 0xD7786016) + 1882993432) ^ ((v126 ^ 0x77FC6B67) - 793233305) ^ ((v126 ^ 0xA1B93C5D) + 117272413)) + 1850757449;
  v2[35] = v126 ^ ((v126 ^ 0x40DAE793) - 1577054960) ^ ((v126 ^ 0xDD35E559) + 1072631750) ^ ((v126 ^ 0x7F35EA46) - 1645281061) ^ ((v126 ^ 0xFFFFFDEF) + 488970100) ^ 0x44A38EB1;
  LODWORD(v126) = (((v3[21] ^ 0xACECF66F) + 1393756561) ^ ((v3[21] ^ 0xD423E3C2) + 735845438) ^ ((v3[21] ^ 0x78CF150E) - 2026837262)) - 1522211267;
  v413 = (v126 ^ 0x529C5611) & (2 * (v126 & 0x5ADC109A)) ^ v126 & 0x5ADC109A;
  v414 = ((2 * (v126 ^ 0xF22C5601)) ^ 0x51E08D36) & (v126 ^ 0xF22C5601) ^ (2 * (v126 ^ 0xF22C5601)) & 0xA8F0469A;
  v415 = (v414 ^ 0xE00410) & (4 * v413) ^ v413;
  v416 = ((4 * (v414 ^ 0xA8104289)) ^ 0xA3C11A6C) & (v414 ^ 0xA8104289) ^ (4 * (v414 ^ 0xA8104289)) & 0xA8F04698;
  v417 = (v416 ^ 0xA0C00200) & (16 * v415) ^ v415;
  v418 = ((16 * (v416 ^ 0x8304493)) ^ 0x8F0469B0) & (v416 ^ 0x8304493) ^ (16 * (v416 ^ 0x8304493)) & 0xA8F04690;
  v419 = v417 ^ 0xA8F0469B ^ (v418 ^ 0x88004000) & (v417 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v419 << 16) & 0x28F00000 ^ v419 ^ ((v419 << 16) ^ 0x469B0000) & (((v418 ^ 0x20F0060B) << 8) & 0x28F00000 ^ 0x8B00000 ^ (((v418 ^ 0x20F0060B) << 8) ^ 0x70460000) & (v418 ^ 0x20F0060B)))) ^ 0xF8BED3C1;
  v2[36] = v126;
  v420 = (((v3[15] ^ 0x44751F4E) - 1148526414) ^ ((v3[15] ^ 0xE178415B) + 512212645) ^ ((v3[15] ^ 0xA50D5EB6) + 1525850442)) + 536012467;
  v421 = (v420 ^ 0x4193D30F) & (2 * (v420 & 0x51BDA0E)) ^ v420 & 0x51BDA0E;
  v422 = ((2 * (v420 ^ 0x4BB1C70B)) ^ 0x9D543A0A) & (v420 ^ 0x4BB1C70B) ^ (2 * (v420 ^ 0x4BB1C70B)) & 0x4EAA1D04;
  v423 = (v422 ^ 0xC001800) & (4 * v421) ^ v421;
  v424 = ((4 * (v422 ^ 0x42AA0505)) ^ 0x3AA87414) & (v422 ^ 0x42AA0505) ^ (4 * (v422 ^ 0x42AA0505)) & 0x4EAA1D04;
  v425 = (v424 ^ 0xAA81400) & (16 * v423) ^ v423;
  v426 = ((16 * (v424 ^ 0x44020901)) ^ 0xEAA1D050) & (v424 ^ 0x44020901) ^ (16 * (v424 ^ 0x44020901)) & 0x4EAA1D00;
  v427 = v425 ^ 0x4EAA1D05 ^ (v426 ^ 0x4AA01000) & (v425 << 8);
  LODWORD(v126) = v420 ^ v126 ^ (2 * ((v427 << 16) & 0x4EAA0000 ^ v427 ^ ((v427 << 16) ^ 0x1D050000) & (((v426 ^ 0x40A0D05) << 8) & 0x4EAA0000 ^ 0x44A20000 ^ (((v426 ^ 0x40A0D05) << 8) ^ 0x2A1D0000) & (v426 ^ 0x40A0D05))));
  LODWORD(v126) = (((v126 ^ 0xFC0E16B4) - 2084697776) ^ ((v126 ^ 0x54B80DBC) + 721949256) ^ ((v126 ^ 0xDA5BB561) - 1511282021)) + 1600859615;
  v428 = (v126 ^ 0xE0D39CAA) & (2 * (v126 & 0x8ADBC0A2)) ^ v126 & 0x8ADBC0A2;
  v429 = ((2 * (v126 ^ 0xF0579CEA)) ^ 0xF518B890) & (v126 ^ 0xF0579CEA) ^ (2 * (v126 ^ 0xF0579CEA)) & 0x7A8C5C48;
  v430 = (v429 ^ 0x70080000) & (4 * v428) ^ v428;
  v431 = ((4 * (v429 ^ 0xA844448)) ^ 0xEA317120) & (v429 ^ 0xA844448) ^ (4 * (v429 ^ 0xA844448)) & 0x7A8C5C48;
  v432 = (v431 ^ 0x6A005000) & (16 * v430) ^ v430;
  v433 = ((16 * (v431 ^ 0x108C0C48)) ^ 0xA8C5C480) & (v431 ^ 0x108C0C48) ^ (16 * (v431 ^ 0x108C0C48)) & 0x7A8C5C40;
  v434 = v432 ^ 0x7A8C5C48 ^ (v433 ^ 0x28844400) & (v432 << 8);
  v2[36] = v126 ^ (2 * ((v434 << 16) & 0x7A8C0000 ^ v434 ^ ((v434 << 16) ^ 0x5C480000) & (((v433 ^ 0x52081848) << 8) & 0x7A8C0000 ^ 0x72800000 ^ (((v433 ^ 0x52081848) << 8) ^ 0xC5C0000) & (v433 ^ 0x52081848)))) ^ 0x3D71365F;
  LODWORD(v126) = (((v3[22] ^ 0x854D7CBD) + 2058519363) ^ ((v3[22] ^ 0xC040179E) + 1069541474) ^ ((v3[22] ^ 0x450D6B80) - 1158507392)) - 403518948;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xC02E184) + 338556572) ^ ((v126 ^ 0x66892945) + 2124824155) ^ ((v126 ^ 0x72ACDFCA) + 1787021526) ^ ((v126 ^ 0xFFF7FFEB) - 405214987) ^ 0x99D603A3;
  v2[37] = v126;
  v435 = (((v3[16] ^ 0x7BB7F0A7) - 2075652263) ^ ((v3[16] ^ 0xBB5E248) - 196469320) ^ ((v3[16] ^ 0x7002124C) - 1879183948)) + 1256851633;
  LODWORD(v126) = v435 ^ ((v435 ^ 0xAEAEA366) + 1955208042) ^ ((v435 ^ 0x11464E61) - 882706833) ^ ((v435 ^ 0xC1EC5508) + 466152712) ^ v126 ^ ((v435 ^ 0x5BDFFFFF) - 2114238479);
  LODWORD(v126) = (((v126 ^ 0xC296EFB) - 703736075) ^ ((v126 ^ 0x83BF8D23) + 1503343917) ^ ((v126 ^ 0xD44B4F6B) + 242218853)) + 2105415158;
  v436 = (v126 ^ 0xFB0C6559) & (2 * (v126 & 0xF82D7561)) ^ v126 & 0xF82D7561;
  v437 = ((2 * (v126 ^ 0x6B462D19)) ^ 0x26D6B0F0) & (v126 ^ 0x6B462D19) ^ (2 * (v126 ^ 0x6B462D19)) & 0x936B5878;
  v438 = (v437 ^ 0x421000) & (4 * v436) ^ v436;
  v439 = ((4 * (v437 ^ 0x91294808)) ^ 0x4DAD61E0) & (v437 ^ 0x91294808) ^ (4 * (v437 ^ 0x91294808)) & 0x936B5878;
  v440 = (v439 ^ 0x1294060) & (16 * v438) ^ v438;
  v441 = ((16 * (v439 ^ 0x92421818)) ^ 0x36B58780) & (v439 ^ 0x92421818) ^ (16 * (v439 ^ 0x92421818)) & 0x936B5840;
  v442 = v440 ^ 0x936B5878 ^ (v441 ^ 0x12210000) & (v440 << 8);
  v2[37] = v126 ^ (2 * ((v442 << 16) & 0x136B0000 ^ v442 ^ ((v442 << 16) ^ 0x58780000) & (((v441 ^ 0x814A5878) << 8) & 0x136B0000 ^ 0x10230000 ^ (((v441 ^ 0x814A5878) << 8) ^ 0x6B580000) & (v441 ^ 0x814A5878)))) ^ 0x802D2ED2;
  LODWORD(v126) = (((v3[23] ^ 0xC2CBE67A) + 1026824582) ^ ((v3[23] ^ 0x253C99A5) - 624728485) ^ ((v3[23] ^ 0xE7F77F7C) + 403210372)) - 63104059;
  v443 = (v126 ^ 0xD3F12F9C) & (2 * (v126 & 0x3E5AFDC)) ^ v126 & 0x3E5AFDC;
  v444 = ((2 * (v126 ^ 0xD6736B84)) ^ 0xAB2D88B0) & (v126 ^ 0xD6736B84) ^ (2 * (v126 ^ 0xD6736B84)) & 0xD596C458;
  v445 = (v444 ^ 0x1048010) & (4 * v443) ^ v443;
  v446 = ((4 * (v444 ^ 0x54924448)) ^ 0x565B1160) & (v444 ^ 0x54924448) ^ (4 * (v444 ^ 0x54924448)) & 0xD596C458;
  v447 = (v446 ^ 0x54120040) & (16 * v445) ^ v445;
  v448 = ((16 * (v446 ^ 0x8184C418)) ^ 0x596C4580) & (v446 ^ 0x8184C418) ^ (16 * (v446 ^ 0x8184C418)) & 0xD596C440;
  v449 = v447 ^ 0xD596C458 ^ (v448 ^ 0x51044400) & (v447 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v449 << 16) & 0x55960000 ^ v449 ^ ((v449 << 16) ^ 0x44580000) & (((v448 ^ 0x84928058) << 8) & 0x55960000 ^ 0x41120000 ^ (((v448 ^ 0x84928058) << 8) ^ 0x16C40000) & (v448 ^ 0x84928058)))) ^ 0xA625EB3C;
  v2[38] = v126;
  v450 = (((v3[17] ^ 0x2DBCF087) - 767357063) ^ ((v3[17] ^ 0x508DC6F) - 84466799) ^ ((v3[17] ^ 0x28B42C4B) - 682896459)) + 1122175597;
  v451 = (v450 ^ 0xF00BB440) & (2 * (v450 & 0xE22BB654)) ^ v450 & 0xE22BB654;
  v452 = ((2 * (v450 ^ 0x344F9860)) ^ 0xACC85C68) & (v450 ^ 0x344F9860) ^ (2 * (v450 ^ 0x344F9860)) & 0xD6642E34;
  v453 = (v452 ^ 0x80400820) & (4 * v451) ^ v451;
  v454 = ((4 * (v452 ^ 0x52242214)) ^ 0x5990B8D0) & (v452 ^ 0x52242214) ^ (4 * (v452 ^ 0x52242214)) & 0xD6642E30;
  v455 = (v454 ^ 0x50002800) & (16 * v453) ^ v453;
  v456 = ((16 * (v454 ^ 0x86640624)) ^ 0x6642E340) & (v454 ^ 0x86640624) ^ (16 * (v454 ^ 0x86640624)) & 0xD6642E00;
  v457 = v455 ^ 0xD6642E34 ^ (v456 ^ 0x46402200) & (v455 << 8);
  LODWORD(v126) = v126 ^ v450 ^ (2 * ((v457 << 16) & 0x56640000 ^ v457 ^ ((v457 << 16) ^ 0x2E340000) & (((v456 ^ 0x90240C34) << 8) & 0x56640000 ^ 0x12400000 ^ (((v456 ^ 0x90240C34) << 8) ^ 0x642E0000) & (v456 ^ 0x90240C34))));
  LODWORD(v126) = (((v126 ^ 0x8AF552D0) + 933316372) ^ ((v126 ^ 0x7155FBC7) - 872288763) ^ ((v126 ^ 0x3FC68F7B) - 2104321351)) - 301617472;
  v2[38] = v126 ^ ((v126 ^ 0x2B2D2075) - 1153327657) ^ ((v126 ^ 0xAD526D3) - 1699112079) ^ ((v126 ^ 0x35D4B314) - 1514664264) ^ ((v126 ^ 0x7BBFF7EE) - 338474418) ^ 0xE95E8E0C;
  LODWORD(v126) = (((v3[24] ^ 0x1B63E88) - 28720776) ^ ((v3[24] ^ 0xBAD28A64) + 1160607132) ^ ((v3[24] ^ 0xBB64B44F) + 1151028145)) + 1410697230;
  v458 = (v126 ^ 0x88CF89FA) & (2 * (v126 & 0xAC0E2DF8)) ^ v126 & 0xAC0E2DF8;
  v459 = ((2 * (v126 ^ 0x88CB921A)) ^ 0x498B7FC4) & (v126 ^ 0x88CB921A) ^ (2 * (v126 ^ 0x88CB921A)) & 0x24C5BFE2;
  v460 = (v459 ^ 0x13FC0) & (4 * v458) ^ v458;
  v461 = ((4 * (v459 ^ 0x24448022)) ^ 0x9316FF88) & (v459 ^ 0x24448022) ^ (4 * (v459 ^ 0x24448022)) & 0x24C5BFE0;
  v462 = (v461 ^ 0x4BF80) & (16 * v460) ^ v460;
  v463 = ((16 * (v461 ^ 0x24C10062)) ^ 0x4C5BFE20) & (v461 ^ 0x24C10062) ^ (16 * (v461 ^ 0x24C10062)) & 0x24C5BFE0;
  v464 = v462 ^ 0x24C5BFE2 ^ (v463 ^ 0x441BE00) & (v462 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v464 << 16) & 0x24C50000 ^ v464 ^ ((v464 << 16) ^ 0x3FE20000) & (((v463 ^ 0x208401C2) << 8) & 0x24C50000 ^ 0x20400000 ^ (((v463 ^ 0x208401C2) << 8) ^ 0x45BF0000) & (v463 ^ 0x208401C2)))) ^ 0x7B00337E;
  v2[39] = v126;
  v465 = (((v3[18] ^ 0xC27FBEF4) + 1031815436) ^ ((v3[18] ^ 0x3EED74B3) - 1055749299) ^ ((v3[18] ^ 0xFC92CAE4) + 57488668)) + 626854697;
  LODWORD(v126) = ((v465 ^ 0xA55A9E71) + 1525361639) ^ v465 ^ ((v465 ^ 0x704AA1CD) - 1879370661) ^ ((v465 ^ 0xA2818AAB) + 1563443005) ^ ((v465 ^ 0x77DFFF7F) - 2006037783) ^ v126;
  LODWORD(v126) = (((v126 ^ 0xA0D68DB6) + 1600600098) ^ ((v126 ^ 0x91E3907E) + 1850877418) ^ ((v126 ^ 0xE67E36E2) + 433030006)) - 246716595;
  v466 = (v126 ^ 0x991ED0A9) & (2 * (v126 & 0xDD5E9A09)) ^ v126 & 0xDD5E9A09;
  v467 = ((2 * (v126 ^ 0x831BC4A9)) ^ 0xBC8ABD40) & (v126 ^ 0x831BC4A9) ^ (2 * (v126 ^ 0x831BC4A9)) & 0x5E455EA0;
  v468 = (v467 ^ 0x1C001C00) & (4 * v466) ^ v466;
  v469 = ((4 * (v467 ^ 0x424542A0)) ^ 0x79157A80) & (v467 ^ 0x424542A0) ^ (4 * (v467 ^ 0x424542A0)) & 0x5E455EA0;
  v470 = v468 ^ 0x5E455EA0 ^ (v469 ^ 0x58055A80) & (16 * v468);
  v471 = (16 * (v469 ^ 0x6400420)) & 0x5E455E80 ^ 0x1A0014A0 ^ ((16 * (v469 ^ 0x6400420)) ^ 0xE455EA00) & (v469 ^ 0x6400420);
  v472 = (v470 << 8) & 0x5E455E00 ^ v470 ^ ((v470 << 8) ^ 0x455EA000) & v471;
  v2[39] = v126 ^ (2 * ((v472 << 16) & 0x5E450000 ^ v472 ^ ((v472 << 16) ^ 0x5EA00000) & ((v471 << 8) & 0x5E450000 ^ 0x1A010000 ^ ((v471 << 8) ^ 0x455E0000) & v471))) ^ 0x8259460B;
  LODWORD(v126) = (((v3[25] ^ 0x5967FC4F) - 1499987023) ^ ((v3[25] ^ 0x317C41B2) - 830226866) ^ ((v3[25] ^ 0x681BBD5E) - 1746648414)) + 603800323;
  v473 = (v126 ^ 0x9F971947) & (2 * (v126 & 0xDC275D68)) ^ v126 & 0xDC275D68;
  v474 = ((2 * (v126 ^ 0x9797A9D7)) ^ 0x9761E97E) & (v126 ^ 0x9797A9D7) ^ (2 * (v126 ^ 0x9797A9D7)) & 0x4BB0F4BE;
  v475 = (v474 ^ 0x120E020) & (4 * v473) ^ v473;
  v476 = ((4 * (v474 ^ 0x48901481)) ^ 0x2EC3D2FC) & (v474 ^ 0x48901481) ^ (4 * (v474 ^ 0x48901481)) & 0x4BB0F4BC;
  v477 = (v476 ^ 0xA80D0A0) & (16 * v475) ^ v475;
  v478 = ((16 * (v476 ^ 0x41302403)) ^ 0xBB0F4BF0) & (v476 ^ 0x41302403) ^ (16 * (v476 ^ 0x41302403)) & 0x4BB0F4B0;
  v479 = v477 ^ 0x4BB0F4BF ^ (v478 ^ 0xB004000) & (v477 << 8);
  LODWORD(v126) = v126 ^ (2 * ((v479 << 16) & 0x4BB00000 ^ v479 ^ ((v479 << 16) ^ 0x74BF0000) & (((v478 ^ 0x40B0B40F) << 8) & 0x4BB00000 ^ 0x4B000000 ^ (((v478 ^ 0x40B0B40F) << 8) ^ 0x30F40000) & (v478 ^ 0x40B0B40F)))) ^ 0xB6102812;
  v2[40] = v126;
  v480 = (((v3[19] ^ 0x57E741BC) - 1474773436) ^ ((v3[19] ^ 0xFFE47069) + 1806231) ^ ((v3[19] ^ 0xA8033176) + 1476185738)) + 928136513;
  v481 = (v480 ^ 0xED3E4B3D) & (2 * (v480 & 0xEDBC8380)) ^ v480 & 0xEDBC8380;
  v482 = ((2 * (v480 ^ 0x34274D3D)) ^ 0xB3379D7A) & (v480 ^ 0x34274D3D) ^ (2 * (v480 ^ 0x34274D3D)) & 0xD99BCEBC;
  v483 = (v482 ^ 0x91120C00) & (4 * v481) ^ v481;
  v484 = ((4 * (v482 ^ 0x48884285)) ^ 0x666F3AF4) & (v482 ^ 0x48884285) ^ (4 * (v482 ^ 0x48884285)) & 0xD99BCEBC;
  v485 = (v484 ^ 0x400B0AA0) & (16 * v483) ^ v483;
  v486 = ((16 * (v484 ^ 0x9990C409)) ^ 0x99BCEBD0) & (v484 ^ 0x9990C409) ^ (16 * (v484 ^ 0x9990C409)) & 0xD99BCE90;
  v487 = v485 ^ 0xD99BCEBD ^ (v486 ^ 0x9998CA00) & (v485 << 8);
  LODWORD(v126) = v126 ^ v480 ^ (2 * ((v487 << 16) & 0x599B0000 ^ v487 ^ ((v487 << 16) ^ 0x4EBD0000) & (((v486 ^ 0x4003042D) << 8) & 0x599B0000 ^ 0x40110000 ^ (((v486 ^ 0x4003042D) << 8) ^ 0x1BCE0000) & (v486 ^ 0x4003042D))));
  LODWORD(v126) = (((v126 ^ 0xE9214C91) - 647516779) ^ ((v126 ^ 0x42498C77) + 1913613683) ^ ((v126 ^ 0x18E74218) + 681681694)) - 464861266;
  v2[40] = v126 ^ ((v126 ^ 0xC6835C7C) + 1225992214) ^ ((v126 ^ 0x308D512F) - 1088608953) ^ ((v126 ^ 0xFB8E3938) + 1948142930) ^ ((v126 ^ 0x7DEFBFFD) - 226505835) ^ 0xC591792;
  LODWORD(v126) = (((v3[26] ^ 0xABE73CF5) + 1410908939) ^ ((v3[26] ^ 0xC5FA0C5) - 207593669) ^ ((v3[26] ^ 0xA7B89C93) + 1481073517)) - 1160056262;
  LODWORD(v126) = v126 ^ ((v126 ^ 0x816209C9) - 1003974307) ^ ((v126 ^ 0xDE4C9B40) - 1694104618) ^ ((v126 ^ 0x8A608A1C) - 819326326) ^ ((v126 ^ 0x6FFB7FFF) + 716302187) ^ 0x468CDF48;
  v2[41] = v126;
  v488 = (((v3[20] ^ 0xDBC5053C) + 607845060) ^ ((v3[20] ^ 0x85AF8966) + 2052093594) ^ ((v3[20] ^ 0x5E6A8CF9) - 1584041209)) - 709548253;
  LODWORD(v126) = ((v488 ^ 0x4D27CC66) + 41833980) ^ v488 ^ ((v488 ^ 0xCBF98CAF) - 2069883597) ^ ((v488 ^ 0x49B7D954) + 116277450) ^ ((v488 ^ 0x7FCFFFFF) + 815162979) ^ v126;
  LODWORD(v126) = (((v126 ^ 0xCAFFAC24) - 2052704838) ^ ((v126 ^ 0xAAA3AB31) - 436587859) ^ ((v126 ^ 0x2CC3D955) + 1671053513)) + 1480745333;
  v489 = (v126 ^ 0x935BE6B9) & (2 * (v126 & 0x9B9BF6C1)) ^ v126 & 0x9B9BF6C1;
  v490 = ((2 * (v126 ^ 0x914B4AB9)) ^ 0x15A178F0) & (v126 ^ 0x914B4AB9) ^ (2 * (v126 ^ 0x914B4AB9)) & 0xAD0BC78;
  v491 = (v490 ^ 0x803800) & (4 * v489) ^ v489;
  v492 = ((4 * (v490 ^ 0xA508408)) ^ 0x2B42F1E0) & (v490 ^ 0xA508408) ^ (4 * (v490 ^ 0xA508408)) & 0xAD0BC78;
  v493 = (v492 ^ 0xA40B060) & (16 * v491) ^ v491;
  v494 = ((16 * (v492 ^ 0x900C18)) ^ 0xAD0BC780) & (v492 ^ 0x900C18) ^ (16 * (v492 ^ 0x900C18)) & 0xAD0BC40;
  v495 = v493 ^ 0xAD0BC78 ^ (v494 ^ 0x8008400) & (v493 << 8);
  v2[41] = v126 ^ (2 * ((v495 << 16) & 0xAD00000 ^ v495 ^ ((v495 << 16) ^ 0x3C780000) & (((v494 ^ 0x2D03878) << 8) & 0xAD00000 ^ 0xA400000 ^ (((v494 ^ 0x2D03878) << 8) ^ 0x50BC0000) & (v494 ^ 0x2D03878)))) ^ 0x62A33613;
  LODWORD(v126) = (((v3[27] ^ 0xF40B8675) + 200571275) ^ ((v3[27] ^ 0xBDEAAFA) - 199142138) ^ ((v3[27] ^ 0xFFD52C2C) + 2806740)) - 95431373;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xF1C9BB11) - 199288047) ^ ((v126 ^ 0xB9371F17) - 1126056169) ^ ((v126 ^ 0x49200457) + 1291232343) ^ ((v126 ^ 0xFBF7FFAF) - 31367249) ^ 0xB74E4867;
  v2[42] = v126;
  v496 = (((v3[21] ^ 0xD10679C4) + 788104764) ^ ((v3[21] ^ 0xF7E2AEA2) + 136139102) ^ ((v3[21] ^ 0x26E4D7C5) - 652531653)) + 1778462961;
  v497 = (v496 ^ 0x3A89AFC2) & (2 * (v496 & 0xBB0D8FD0)) ^ v496 & 0xBB0D8FD0;
  v498 = ((2 * (v496 ^ 0xA89B962)) ^ 0x63086D64) & (v496 ^ 0xA89B962) ^ (2 * (v496 ^ 0xA89B962)) & 0xB18436B2;
  v499 = (v498 ^ 0x20002400) & (4 * v497) ^ v497;
  v500 = ((4 * (v498 ^ 0x90841292)) ^ 0xC610DAC8) & (v498 ^ 0x90841292) ^ (4 * (v498 ^ 0x90841292)) & 0xB18436B0;
  v501 = (v500 ^ 0x80001280) & (16 * v499) ^ v499;
  v502 = ((16 * (v500 ^ 0x31842432)) ^ 0x18436B20) & (v500 ^ 0x31842432) ^ (16 * (v500 ^ 0x31842432)) & 0xB18436A0;
  v503 = v501 ^ 0xB18436B2 ^ (v502 ^ 0x10002200) & (v501 << 8);
  LODWORD(v126) = v126 ^ v496 ^ (2 * ((v503 << 16) & 0x31840000 ^ v503 ^ ((v503 << 16) ^ 0x36B20000) & (((v502 ^ 0xA1841492) << 8) & 0x31840000 ^ 0x31800000 ^ (((v502 ^ 0xA1841492) << 8) ^ 0x4360000) & (v502 ^ 0xA1841492))));
  LODWORD(v126) = (((v126 ^ 0x23972052) + 1701657882) ^ ((v126 ^ 0xDFE480D4) - 1726046816) ^ ((v126 ^ 0x81155AB) + 1324042465)) - 1801741497;
  v504 = (v126 ^ 0xBA6D1A45) & (2 * (v126 & 0xB0701C66)) ^ v126 & 0xB0701C66;
  v505 = ((2 * (v126 ^ 0xFA6D2A0D)) ^ 0x943A6CD6) & (v126 ^ 0xFA6D2A0D) ^ (2 * (v126 ^ 0xFA6D2A0D)) & 0x4A1D366A;
  v506 = (v505 ^ 0x2000) & (4 * v504) ^ v504;
  v507 = ((4 * (v505 ^ 0x4A051229)) ^ 0x2874D9AC) & (v505 ^ 0x4A051229) ^ (4 * (v505 ^ 0x4A051229)) & 0x4A1D3668;
  v508 = (v507 ^ 0x8141020) & (16 * v506) ^ v506;
  v509 = ((16 * (v507 ^ 0x42092643)) ^ 0xA1D366B0) & (v507 ^ 0x42092643) ^ (16 * (v507 ^ 0x42092643)) & 0x4A1D3660;
  v510 = v508 ^ 0x4A1D366B ^ (v509 ^ 0x112600) & (v508 << 8);
  v2[42] = v126 ^ (2 * ((v510 << 16) & 0x4A1D0000 ^ v510 ^ ((v510 << 16) ^ 0x366B0000) & (((v509 ^ 0x4A0C104B) << 8) & 0x4A1D0000 ^ 0x42090000 ^ (((v509 ^ 0x4A0C104B) << 8) ^ 0x1D360000) & (v509 ^ 0x4A0C104B)))) ^ 0x6D3F6729;
  LODWORD(v126) = (((v3[28] ^ 0xD3C4C3D1) + 742079535) ^ ((v3[28] ^ 0x94DB388B) + 1797572469) ^ ((v3[28] ^ 0x471FFBF9) - 1193278457)) + 291772076;
  LODWORD(v126) = v126 ^ ((v126 ^ 0xC6CEA74D) + 672001953) ^ ((v126 ^ 0xF7E503FD) + 421939985) ^ ((v126 ^ 0x5FE86C55) - 1322572615) ^ ((v126 ^ 0x7FFF7FF7) - 1858324709) ^ 0xE6716919;
  v2[43] = v126;
  v511 = (((v3[22] ^ 0xDA94E692) + 627775854) ^ ((v3[22] ^ 0xA331E4A) - 171122250) ^ ((v3[22] ^ 0xD0A7F87B) + 794298245)) - 1257727605;
  LODWORD(v126) = ((v511 ^ 0x22AA9686) + 1387049396) ^ v511 ^ ((v511 ^ 0xE21A40D) + 2116518713) ^ ((v511 ^ 0x5C8D009E) + 747317164) ^ ((v511 ^ 0xFFFFEADF) - 1879454229) ^ v126;
  LODWORD(v126) = (((v126 ^ 0x4DB2CD78) + 1035266638) ^ ((v126 ^ 0xF974A4E6) - 1988983852) ^ ((v126 ^ 0xCC726F5F) - 1133229973)) + 1393726990;
  v512 = (v126 ^ 0x5B9FC195) & (2 * (v126 & 0x9BDFE811)) ^ v126 & 0x9BDFE811;
  v513 = ((2 * (v126 ^ 0x7B98C197)) ^ 0xC08E530C) & (v126 ^ 0x7B98C197) ^ (2 * (v126 ^ 0x7B98C197)) & 0xE0472986;
  v514 = (v513 ^ 0xC0060004) & (4 * v512) ^ v512;
  v515 = ((4 * (v513 ^ 0x20412882)) ^ 0x811CA618) & (v513 ^ 0x20412882) ^ (4 * (v513 ^ 0x20412882)) & 0xE0472980;
  v516 = v514 ^ 0xE0472986 ^ (v515 ^ 0x80042000) & (16 * v514);
  v517 = (16 * (v515 ^ 0x60430986)) & 0xE0472980 ^ 0xE0052186 ^ ((16 * (v515 ^ 0x60430986)) ^ 0x4729860) & (v515 ^ 0x60430986);
  v518 = (v516 << 8) & 0xE0472900 ^ v516 ^ ((v516 << 8) ^ 0x47298600) & v517;
  v2[43] = v126 ^ (2 * ((v518 << 16) & 0x60470000 ^ v518 ^ ((v518 << 16) ^ 0x29860000) & ((v517 << 8) & 0x60470000 ^ 0x20460000 ^ ((v517 << 8) ^ 0x47290000) & v517))) ^ 0x6C126516;
  LOBYTE(v518) = v3[51];
  LOBYTE(v502) = v518 & 0xD4 ^ 0xB4;
  LOBYTE(v518) = v518 ^ (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * v502) ^ v502)) ^ v502)) ^ v502)) ^ v502));
  LOBYTE(v502) = v3[50];
  LOBYTE(v399) = v502 & 0xAA ^ 0xE7;
  v519 = (v502 ^ (2 * ((v502 ^ 0x6C) & (2 * ((v502 ^ 0x6C) & (2 * ((v502 ^ 0x6C) & (2 * ((v502 ^ 0x6C) & (2 * ((v502 ^ 0x6C) & (2 * (v399 ^ v502 & 6)) ^ v399)) ^ v399)) ^ v399)) ^ v399)) ^ v399))) << 8;
  LOBYTE(v297) = v3[49];
  v520 = ~v297 | 0xA5;
  v521 = (v297 ^ (2 * ((v297 ^ 0x6C) & (2 * ((v297 ^ 0x6C) & (2 * ((v297 ^ 0x6C) & (2 * ((v297 ^ 0x6C) & (2 * ((v297 ^ 0x6C) & (2 * ((v297 ^ 0x6C) & 0x36 ^ v520)) ^ v520)) ^ v520)) ^ v520)) ^ v520)) ^ v520))) << 16;
  v522 = v3[48];
  v523 = v522 & 0xFFFFFFDA ^ 0x3F;
  v2[44] = v518 & 0x1A ^ 0x95005352 ^ ((v519 & 0xE600 | ((((((v522 ^ 0x6C) & (2 * ((v522 ^ 0x6C) & (2 * ((v522 ^ 0x6C) & (2 * ((v522 ^ 0x6C) & (2 * ((v522 ^ 0x6C) & (2 * ((v522 ^ 0x6C) & 0x36 ^ v523)) ^ v523)) ^ v523)) ^ v523)) ^ v523)) ^ v523) << 25) ^ (v522 << 24) ^ 0x1FF21E46) & (v521 ^ 0xFFA01E46) | v521 & 0xD0000) ^ 0x71660789) & (v519 ^ 0xFFFF77EF)) ^ 0x86E4022A) & (v518 ^ 0xFFFFFF2B);
  LOBYTE(v518) = v3[55];
  LOBYTE(v519) = v518 & 0x78 ^ 0xCE;
  LOBYTE(v518) = v518 ^ (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * v519) ^ v519)) ^ v519)) ^ v519)) ^ v519)) ^ v519));
  LOBYTE(v183) = v3[54];
  LOBYTE(v521) = v183 & 0x2E ^ 0xA1;
  v524 = (v183 ^ (2 * ((v183 ^ 0x6C) & (2 * ((v183 ^ 0x6C) & (2 * ((v183 ^ 0x6C) & (2 * ((v183 ^ 0x6C) & (2 * ((v183 ^ 0x6C) & (2 * (v521 ^ v183 & 2)) ^ v521)) ^ v521)) ^ v521)) ^ v521)) ^ v521))) << 8;
  v525 = v524 & 0x2B00;
  v526 = v524 ^ 0xFFFFDBDF;
  LOBYTE(v524) = v3[53];
  LOBYTE(v522) = v524 & 0xCE ^ 0xB1;
  v527 = (v524 ^ (2 * ((v524 ^ 0x6C) & (2 * ((v524 ^ 0x6C) & (2 * ((v524 ^ 0x6C) & (2 * ((v524 ^ 0x6C) & (2 * ((v524 ^ 0x6C) & (2 * (v522 ^ v524 & 0x22)) ^ v522)) ^ v522)) ^ v522)) ^ v522)) ^ v522))) << 16;
  v528 = v3[52];
  v529 = v528 & 0xFFFFFF8A ^ 0x57;
  v2[45] = v518 & 0x5E ^ 0x6A0FAE3D ^ ((v525 | ((((((v528 ^ 0x6C) & (2 * ((v528 ^ 0x6C) & (2 * ((v528 ^ 0x6C) & (2 * ((v528 ^ 0x6C) & (2 * ((v528 ^ 0x6C) & (2 * ((v528 ^ 0x6C) & 0x26 ^ v529)) ^ v529)) ^ v529)) ^ v529)) ^ v529)) ^ v529) << 25) ^ (v528 << 24) ^ 0x6A752B52) & (v527 ^ 0xFF312B52) | v527 & 0x8A0000) ^ 0x96ABFF4D) & v526) ^ 0xA97B51BE) & (v518 ^ 0xFFFFFF87);
  LOBYTE(v518) = v3[59];
  LOBYTE(v526) = v518 & 0x64 ^ 0xCC;
  LOBYTE(v518) = v518 ^ (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * v526) ^ v526)) ^ v526)) ^ v526)) ^ v526));
  v530 = v518 & 0xA3;
  v531 = v518 ^ 0xFFFFFF9B;
  LOBYTE(v518) = v3[58];
  LOBYTE(v522) = v518 & 0x8A ^ 0xD7;
  v532 = (v518 ^ (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & (2 * ((v518 ^ 0x6C) & 0x26 ^ v522)) ^ v522)) ^ v522)) ^ v522)) ^ v522)) ^ v522))) << 8;
  v533 = v532 & 0x3D00;
  v534 = v532 ^ 0xFFFF65EF;
  LOBYTE(v532) = v3[57];
  LOBYTE(v529) = v532 & 0x86 ^ 0xDD;
  v535 = (v532 ^ (2 * ((v532 ^ 0x6C) & (2 * ((v532 ^ 0x6C) & (2 * ((v532 ^ 0x6C) & (2 * ((v532 ^ 0x6C) & (2 * ((v532 ^ 0x6C) & (2 * (v529 ^ v532 & 0xAA)) ^ v529)) ^ v529)) ^ v529)) ^ v529)) ^ v529))) << 16;
  v536 = v535 & 0x570000;
  v537 = v535 ^ 0xFF282722;
  v538 = v3[56];
  v539 = v538 & 0xFFFFFF82 ^ 0x5B;
  v540 = (v538 ^ 0x6C) & (2 * ((v538 ^ 0x6C) & (2 * ((v538 ^ 0x6C) & (2 * ((v538 ^ 0x6C) & (2 * ((v538 ^ 0x6C) & (2 * ((v538 ^ 0x6C) & 0x2E ^ v539)) ^ v539)) ^ v539)) ^ v539)) ^ v539)) ^ v539;
  v541 = STACK[0x5FA0];
  *(STACK[0x73A0] + 184) = v530 ^ 0x49B70470 ^ ((v533 | (((((v538 ^ (2 * v540) ^ 0x9C) << 24) ^ 0xA3A82722) & v537 | v536) ^ 0xCECFE54C) & v534) ^ 0xEE73F432) & v531;
  LOBYTE(v533) = v3[63];
  LOBYTE(v531) = v533 & 0x7C ^ 0xC8;
  LOBYTE(v533) = v533 ^ (2 * ((v533 ^ 0x6C) & (2 * ((v533 ^ 0x6C) & (2 * ((v533 ^ 0x6C) & (2 * ((v533 ^ 0x6C) & (2 * v531) ^ v531)) ^ v531)) ^ v531)) ^ v531));
  v542 = v533 & 0x61;
  v543 = v533 ^ 0xFFFFFFA2;
  LOBYTE(v533) = v3[62];
  LOBYTE(v536) = v533 & 0x9C ^ 0xD8;
  v544 = (v533 ^ (2 * ((v533 ^ 0x6C) & (2 * ((v533 ^ 0x6C) & (2 * ((v533 ^ 0x6C) & (2 * ((v533 ^ 0x6C) & (2 * v536) ^ v536)) ^ v536)) ^ v536)) ^ v536)));
  LOBYTE(v534) = v3[61];
  LOBYTE(v517) = v534 & 0xD4 ^ 0xB4;
  v545 = (v534 ^ (2 * ((v534 ^ 0x6C) & (2 * ((v534 ^ 0x6C) & (2 * ((v534 ^ 0x6C) & (2 * ((v534 ^ 0x6C) & (2 * v517) ^ v517)) ^ v517)) ^ v517)) ^ v517))) << 16;
  v546 = v3[60];
  v547 = v546 & 0xFFFFFFE8 | 6;
  v2[47] = (v542 | (((((((v546 ^ (2 * ((v546 ^ 0x6C) & (2 * ((v546 ^ 0x6C) & (2 * ((v546 ^ 0x6C) & (2 * ((v546 ^ 0x6C) & (2 * ((v546 ^ 0x6C) & (2 * v547) ^ v547)) ^ v547)) ^ v547)) ^ v547)) ^ v547)) ^ 0x47) << 24) ^ 0x42A60D96) & (v545 ^ 0xFF220D96) | v545 & 0x590000) ^ 0xEBC70C80) & ((v544 << 8) ^ 0xFFFF659E) & 0xFFFF01FF | (v544 >> 1 << 9)) ^ 0x476FE388) & v543) ^ 0x6F6B46A8;
  v548 = STACK[0xE50];
  v549 = *STACK[0xE50];
  v550 = STACK[0xE58];
  v551 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v552 = *(v549 + v551);
  v553 = 1864610357 * ((1864610357 * ((v552 ^ (v541 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ (v541 + 3)) & 0x7FFFFFFFu)) >> 16));
  v554 = STACK[0xEB0];
  v555 = STACK[0xEA0];
  v556 = STACK[0xE90];
  LODWORD(v553) = *(STACK[0xEA0] + (v553 >> 24)) ^ *((v553 >> 24) + STACK[0xEB0] + 3) ^ *(STACK[0xE90] + (v553 >> 24)) ^ v541[3] ^ v553 ^ (99 * ((1864610357 * ((1864610357 * ((v552 ^ (v541 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ (v541 + 3)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v557 = 1864610357 * ((1864610357 * ((v552 ^ (v541 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ (v541 + 2)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v557) = *((v557 >> 24) + STACK[0xEB0] + 3) ^ v541[2] ^ *(STACK[0xEA0] + (v557 >> 24)) ^ *(STACK[0xE90] + (v557 >> 24)) ^ (53 * ((53 * (v552 ^ (v541 + 2))) ^ ((1864610357 * ((v552 ^ (v541 + 2)) & 0x7FFFFFFFu)) >> 16))) ^ (99 * ((1864610357 * ((1864610357 * ((v552 ^ (v541 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ (v541 + 2)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v558 = 1864610357 * ((1864610357 * ((v552 ^ (v541 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ (v541 + 1)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v558) = *((v558 >> 24) + STACK[0xEB0] + 3) ^ v541[1] ^ *(STACK[0xEA0] + (v558 >> 24)) ^ *(STACK[0xE90] + (v558 >> 24)) ^ (53 * ((53 * (v552 ^ (v541 + 1))) ^ ((1864610357 * ((v552 ^ (v541 + 1)) & 0x7FFFFFFFu)) >> 16))) ^ (99 * ((1864610357 * ((1864610357 * ((v552 ^ (v541 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ (v541 + 1)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v559 = 1864610357 * ((1864610357 * ((v552 ^ v541) & 0x7FFFFFFF)) ^ ((1864610357 * ((v552 ^ v541) & 0x7FFFFFFF)) >> 16));
  LODWORD(v558) = v558 << 16;
  v560 = v558 & 0x9C0000;
  LODWORD(v559) = (((*((v559 >> 24) + STACK[0xEB0] + 3) ^ v559 ^ *(STACK[0xEA0] + (v559 >> 24)) ^ *(STACK[0xE90] + (v559 >> 24)) ^ (99 * (v559 >> 24)) ^ *v541 ^ 0xB1) << 24) ^ 0x3463CE64) & ~v558;
  v561 = STACK[0x5FA0];
  LODWORD(v553) = ((((v559 | v560) ^ 0xE3CEBC8) & ~(v557 << 8) | (v557 << 8) & 0xDA00) ^ 0x71532924) & (v553 ^ 0xFFFFFFFE) ^ v553 & 0x77;
  v2[48] = (((v553 ^ 0x31580815) - 792176773) ^ ((v553 ^ 0x1D184C5B) - 58191051) ^ ((v553 ^ 0xD64C48C6) + 937170858)) + 368852922;
  v562 = *(&off_1010A0B50 + v0 - 9744) - 571233763;
  v563 = *(&off_1010A0B50 + (v0 ^ 0x3146)) - 638636195;
  v564 = v0;
  v565 = *(&off_1010A0B50 + (v0 ^ 0x307A)) - 2071046599;
  v566 = *v550 & 0xFFFFFFFFE6F073DCLL;
  v567 = *v548;
  LODWORD(v557) = *(*v548 + v566);
  v568 = 1864610357 * ((1864610357 * ((v557 ^ (v561 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v557 ^ (v561 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v568) = v562[(v568 >> 24) + 2] ^ v561[7] ^ v563[v568 >> 24] ^ v565[v568 >> 24] ^ v568 ^ (-75 * ((1864610357 * ((1864610357 * ((v557 ^ (v561 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v557 ^ (v561 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v569 = 1864610357 * ((1864610357 * ((v557 ^ (v561 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v557 ^ (v561 + 6)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v549) = *(v549 + v551);
  v570 = 1864610357 * ((1864610357 * ((v549 ^ (v561 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v561 + 5)) & 0x7FFFFFFF)) >> 16));
  v571 = *((v570 >> 24) + v554 + 3) ^ v561[5] ^ *(v555 + (v570 >> 24)) ^ *(v556 + (v570 >> 24)) ^ (53 * ((53 * (v549 ^ (v561 + 5))) ^ ((1864610357 * ((v549 ^ (v561 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (99 * ((1864610357 * ((1864610357 * ((v549 ^ (v561 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v561 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v572 = 1864610357 * ((1864610357 * ((v549 ^ (v561 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v561 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v569) = (v569 ^ *((v569 >> 24) + v554 + 3) ^ *(v555 + (v569 >> 24)) ^ *(v556 + (v569 >> 24)) ^ (99 * BYTE3(v569)) ^ v561[6]);
  v2[49] = v568 & 0x58 ^ 0xAB62771B ^ (((((((*(v555 + (v572 >> 24)) ^ *((v572 >> 24) + v554 + 3) ^ *(v556 + (v572 >> 24)) ^ v561[4] ^ v572 ^ (99 * (v572 >> 24))) << 24) ^ 0xCAD9D6CD) & ~(v571 << 16) | (v571 << 16) & 0x260000) ^ 0x10622B41) & ~(v569 << 8) & 0xFFFFFDFF | (((v569 >> 1) & 1) << 9)) ^ 0xFF9D172B) & (v568 ^ 0xFFFFFFEF);
  LODWORD(v569) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v573 = STACK[0x5FA0];
  v574 = 1864610357 * ((1864610357 * (((v573 + 11) ^ v569) & 0x7FFFFFFF)) ^ ((1864610357 * (((v573 + 11) ^ v569) & 0x7FFFFFFF)) >> 16));
  LODWORD(v570) = v563[v574 >> 24] ^ v562[(v574 >> 24) + 2] ^ v565[v574 >> 24] ^ *(v573 + 11) ^ v574 ^ (-75 * ((1864610357 * ((1864610357 * (((v573 + 11) ^ v569) & 0x7FFFFFFF)) ^ ((1864610357 * (((v573 + 11) ^ v569) & 0x7FFFFFFF)) >> 16))) >> 24));
  v575 = 1864610357 * ((1864610357 * (((v573 + 10) ^ v569) & 0x7FFFFFFF)) ^ ((1864610357 * (((v573 + 10) ^ v569) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v561) = v563[v575 >> 24] ^ v562[(v575 >> 24) + 2] ^ v565[v575 >> 24] ^ *(v573 + 10) ^ (53 * ((53 * ((v573 + 10) ^ v569)) ^ ((1864610357 * (((v573 + 10) ^ v569) & 0x7FFFFFFF)) >> 16))) ^ (-75 * ((1864610357 * ((1864610357 * (((v573 + 10) ^ v569) & 0x7FFFFFFF)) ^ ((1864610357 * (((v573 + 10) ^ v569) & 0x7FFFFFFF)) >> 16))) >> 24));
  v576 = 1864610357 * ((1864610357 * (((v573 + 9) ^ v569) & 0x7FFFFFFF)) ^ ((1864610357 * (((v573 + 9) ^ v569) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v576) = v563[v576 >> 24] ^ v562[(v576 >> 24) + 2] ^ v576 ^ v565[v576 >> 24] ^ *(STACK[0x5FA0] + 9) ^ (-75 * BYTE3(v576));
  LODWORD(v569) = 1864610357 * (((STACK[0x5FA0] + 8) ^ *(v567 + v566)) & 0x7FFFFFFF);
  v577 = 1864610357 * (v569 ^ WORD1(v569));
  v2[50] = v570 & 0xCC ^ 0xD8F23B88 ^ (((((((v577 ^ (-75 * (v577 >> 24)) ^ v562[(v577 >> 24) + 2] ^ v563[v577 >> 24] ^ v565[v577 >> 24] ^ *(STACK[0x5FA0] + 8) ^ 0x5E) << 24) ^ 0x9628E11D) & ~(v576 << 16) | (v576 << 16) & 0xD70000) ^ 0x9D53450B) & ~(v561 << 8) | (v561 << 8) & 0x5B00) ^ 0xB43C4725) & (v570 ^ 0xFFFFFFBF);
  v578 = *v548;
  v579 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v573) = *(*v548 + v579);
  v580 = 1864610357 * ((1864610357 * ((v573 ^ (v541 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 15)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v577) = -75 * ((1864610357 * ((1864610357 * ((v573 ^ (v541 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v580) = v563[v580 >> 24] ^ v562[(v580 >> 24) + 2] ^ v565[v580 >> 24] ^ v541[15] ^ v580;
  LOBYTE(v570) = v580 ^ ~v577;
  LOBYTE(v561) = v580 ^ v577;
  v581 = 1864610357 * ((1864610357 * ((v573 ^ (v541 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v577) = v562[(v581 >> 24) + 2] ^ v541[14] ^ v563[v581 >> 24] ^ v565[v581 >> 24] ^ (53 * ((53 * (v573 ^ (v541 + 14))) ^ ((1864610357 * ((v573 ^ (v541 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (-75 * ((1864610357 * ((1864610357 * ((v573 ^ (v541 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v582 = 1864610357 * ((1864610357 * ((v573 ^ (v541 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v582) = v562[(v582 >> 24) + 2] ^ v541[13] ^ v563[v582 >> 24] ^ v565[v582 >> 24] ^ (53 * ((53 * (v573 ^ (v541 + 13))) ^ ((1864610357 * ((v573 ^ (v541 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (-75 * ((1864610357 * ((1864610357 * ((v573 ^ (v541 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v583 = 1864610357 * ((1864610357 * ((v573 ^ (v541 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v573 ^ (v541 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v567) = v583 ^ v562[(v583 >> 24) + 2] ^ v563[v583 >> 24] ^ v565[v583 >> 24];
  LODWORD(v541) = (-75 * (v583 >> 24)) ^ v541[12];
  v584 = STACK[0x9388];
  v2[51] = ((((((((v567 ^ v541) << 24) ^ 0x6261269B) & ~(v582 << 16) | (v582 << 16) & 0x9E0000) ^ 0x8FB0AD8C) & ~(v577 << 8) | (v577 << 8) & 0x7400) ^ 0xDAFD0F0) & (v570 | 0xFFFFFF00) | v561 & 0x18) ^ 0xAEAA7DAF;
  v585 = *v548;
  v586 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v577) = *(*v548 + v586);
  v587 = 1864610357 * ((1864610357 * ((v577 ^ (v584 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v577 ^ (v584 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v582) = -75 * ((1864610357 * ((1864610357 * ((v577 ^ (v584 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v577 ^ (v584 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v587) = v562[(v587 >> 24) + 2] ^ *(v584 + 3) ^ v563[v587 >> 24] ^ v565[v587 >> 24] ^ v587;
  LOBYTE(v561) = v587 ^ ~v582;
  LODWORD(v587) = (v587 ^ v582) & 0x8B;
  v588 = 1864610357 * ((1864610357 * ((v577 ^ (v584 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v577 ^ (v584 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v588) = v563[v588 >> 24] ^ v562[(v588 >> 24) + 2] ^ v565[v588 >> 24] ^ *(v584 + 2) ^ (53 * ((53 * (v577 ^ (v584 + 2))) ^ ((1864610357 * ((v577 ^ (v584 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-75 * ((1864610357 * ((1864610357 * ((v577 ^ (v584 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v577 ^ (v584 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v578) = *(v578 + v579);
  v589 = 1864610357 * ((1864610357 * ((v578 ^ (v584 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v584 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v589) = v562[(v589 >> 24) + 2] ^ *(v584 + 1) ^ v563[v589 >> 24] ^ v565[v589 >> 24] ^ (53 * ((53 * (v578 ^ (v584 + 1))) ^ ((1864610357 * ((v578 ^ (v584 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-75 * ((1864610357 * ((1864610357 * ((v578 ^ (v584 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v584 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v590 = 1864610357 * ((1864610357 * ((v578 ^ v584) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ v584) & 0x7FFFFFFF)) >> 16));
  v2[52] = ((((((((v562[(v590 >> 24) + 2] ^ v563[v590 >> 24] ^ v565[v590 >> 24] ^ *v584 ^ v590 ^ (-75 * (v590 >> 24)) ^ 0x29) << 24) ^ 0x1F25D39C) & ~(v589 << 16) | (v589 << 16) & 0xDA0000) ^ 0xC5566D41) & ~(v588 << 8) | (v588 << 8) & 0x4100) ^ 0xFF9E4BA9) & (v561 | 0xFFFFFF00) | v587) ^ 0xB53934AC;
  v591 = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v592 = 1864610357 * ((1864610357 * ((v591 ^ (v584 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v591 ^ (v584 + 7)) & 0x7FFFFFFFu)) >> 16));
  v593 = *(&off_1010A0B50 + (v564 ^ 0x3130)) - 115386083;
  v594 = *(&off_1010A0B50 + v564 - 11853) - 1725432838;
  v595 = *(&off_1010A0B50 + v564 - 11505) - 832391114;
  v596 = v592 >> 24;
  LODWORD(v592) = v593[(v592 >> 24) + 6] ^ *(v584 + 7) ^ v594[(v592 >> 24) + 2] ^ v595[v592 >> 24] ^ v592;
  LODWORD(v596) = -99 * v596;
  LOBYTE(v568) = v592 ^ ~v596;
  LODWORD(v567) = (v592 ^ v596) & 0xE3;
  v597 = (1864610357 * ((1864610357 * ((v591 ^ (v584 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v591 ^ (v584 + 6)) & 0x7FFFFFFFu)) >> 16))) >> 24;
  LOBYTE(v597) = v562[v597 + 2] ^ *(v584 + 6) ^ (53 * ((53 * (v591 ^ (v584 + 6))) ^ ((1864610357 * ((v591 ^ (v584 + 6)) & 0x7FFFFFFFu)) >> 16))) ^ v563[v597] ^ v565[v597] ^ (-75 * ((1864610357 * ((1864610357 * ((v591 ^ (v584 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v591 ^ (v584 + 6)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v598 = 1864610357 * ((1864610357 * ((v591 ^ (v584 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v591 ^ (v584 + 5)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v598) = (-75 * BYTE3(v598)) ^ v598 ^ v562[(v598 >> 24) + 2] ^ v563[v598 >> 24] ^ v565[v598 >> 24] ^ *(v584 + 5);
  LODWORD(v585) = 1864610357 * ((*(v585 + v586) ^ (v584 + 4)) & 0x7FFFFFFF);
  v599 = 1864610357 * (v585 ^ WORD1(v585));
  v2[53] = ((((((((v562[(v599 >> 24) + 2] ^ v563[v599 >> 24] ^ v565[v599 >> 24] ^ *(v584 + 4) ^ v599 ^ (-75 * (v599 >> 24)) ^ 0xFFFFFFFD) << 24) ^ 0x79519994) & ~(v598 << 16) | (v598 << 16) & 0xAE0000) ^ 0xD8FA347B) & ~(v597 << 8) | (v597 << 8) & 0x5200) ^ 0xE79E5CF3) & (v568 | 0xFFFFFF00) | v567) ^ 0x679C70BB;
  v600 = *v548;
  v601 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v599) = *(*v548 + v601);
  v602 = 1864610357 * ((1864610357 * ((v599 ^ (v584 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v602) = v594[(v602 >> 24) + 2] ^ v593[(v602 >> 24) + 6] ^ v595[v602 >> 24] ^ *(v584 + 11) ^ v602 ^ (-99 * ((1864610357 * ((1864610357 * ((v599 ^ (v584 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v603 = 1864610357 * ((1864610357 * ((v599 ^ (v584 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v603) = v593[(v603 >> 24) + 6] ^ *(v584 + 10) ^ v594[(v603 >> 24) + 2] ^ v595[v603 >> 24] ^ (53 * ((53 * (v599 ^ (v584 + 10))) ^ ((1864610357 * ((v599 ^ (v584 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v599 ^ (v584 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v604 = 1864610357 * ((1864610357 * ((v599 ^ (v584 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v604) = v593[(v604 >> 24) + 6] ^ *(v584 + 9) ^ v594[(v604 >> 24) + 2] ^ v595[v604 >> 24] ^ (53 * ((53 * (v599 ^ (v584 + 9))) ^ ((1864610357 * ((v599 ^ (v584 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v599 ^ (v584 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v605 = 1864610357 * ((1864610357 * ((v599 ^ (v584 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v599 ^ (v584 + 8)) & 0x7FFFFFFF)) >> 16));
  v606 = v605 >> 24;
  v2[54] = v602 & 0x3D ^ 0x32DF46 ^ (((((((v605 ^ v593[(v605 >> 24) + 6] ^ v594[v606 + 2] ^ v595[v606] ^ (-99 * v606) ^ *(v584 + 8)) << 24) ^ 0x5CDE9781) & ~(v604 << 16) | (v604 << 16) & 0x210000) ^ 0x7139FF13) & ~(v603 << 8) | (v603 << 8) & 0x9700) ^ 0x69BD0350) & (v602 ^ 0xFFFFFFF7);
  v607 = *v548;
  v608 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v604) = *(*v548 + v608);
  v609 = 1864610357 * ((1864610357 * ((v604 ^ (v584 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v604 ^ (v584 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v606) = -99 * ((1864610357 * ((1864610357 * ((v604 ^ (v584 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v604 ^ (v584 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v609) = v593[(v609 >> 24) + 6] ^ *(v584 + 15) ^ v594[(v609 >> 24) + 2] ^ v595[v609 >> 24] ^ v609;
  LOBYTE(v586) = v609 ^ ~v606;
  LODWORD(v606) = (v609 ^ v606) & 0x43;
  v610 = 1864610357 * ((1864610357 * ((v604 ^ (v584 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v604 ^ (v584 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v609) = v594[(v610 >> 24) + 2] ^ v593[(v610 >> 24) + 6] ^ v595[v610 >> 24] ^ *(v584 + 14) ^ v610 ^ (-99 * BYTE3(v610));
  LODWORD(v600) = *(v600 + v601);
  v611 = 1864610357 * ((1864610357 * ((v600 ^ (v584 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v600 ^ (v584 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v611) = v593[(v611 >> 24) + 6] ^ *(v584 + 13) ^ v594[(v611 >> 24) + 2] ^ v595[v611 >> 24] ^ (53 * ((53 * (v600 ^ (v584 + 13))) ^ ((1864610357 * ((v600 ^ (v584 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v600 ^ (v584 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v600 ^ (v584 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v612 = 1864610357 * ((1864610357 * ((v600 ^ (v584 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v600 ^ (v584 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v584) = v594[(v612 >> 24) + 2] ^ v593[(v612 >> 24) + 6] ^ v595[v612 >> 24] ^ *(v584 + 12);
  LODWORD(v601) = v612 ^ (-99 * (v612 >> 24));
  v613 = STACK[0x8018];
  v2[55] = ((((((((v584 ^ v601) << 24) ^ 0xD3225B29) & ~(v611 << 16) | (v611 << 16) & 0xDDDDDDDD) ^ 0x7BD30AA2) & ~(v609 << 8) | (v609 << 8) & 0xAE00) ^ 0xC5EDE837) & (v586 | 0xFFFFFF00) | v606) ^ 0x87F1AFB7;
  LODWORD(v611) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v614 = 1864610357 * ((1864610357 * ((v611 ^ (v613 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v611 ^ (v613 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v567) = -99 * ((1864610357 * ((1864610357 * ((v611 ^ (v613 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v611 ^ (v613 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v584) = v593[(v614 >> 24) + 6] ^ *(v613 + 3) ^ v594[(v614 >> 24) + 2] ^ v595[v614 >> 24] ^ v614;
  v615 = 1864610357 * ((1864610357 * ((v611 ^ (v613 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v611 ^ (v613 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v615) = v593[(v615 >> 24) + 6] ^ *(v613 + 2) ^ v594[(v615 >> 24) + 2] ^ v595[v615 >> 24] ^ (53 * ((53 * (v611 ^ (v613 + 2))) ^ ((1864610357 * ((v611 ^ (v613 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v611 ^ (v613 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v611 ^ (v613 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v616 = 1864610357 * ((1864610357 * ((v611 ^ (v613 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v611 ^ (v613 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v607) = 1864610357 * ((*(v607 + v608) ^ v613) & 0x7FFFFFFF);
  v617 = 1864610357 * (v607 ^ WORD1(v607));
  LODWORD(v616) = (v616 ^ v593[(v616 >> 24) + 6] ^ v594[(v616 >> 24) + 2] ^ v595[v616 >> 24] ^ (-99 * BYTE3(v616)) ^ *(v613 + 1));
  v2[56] = ((((((((v593[(v617 >> 24) + 6] ^ v594[(v617 >> 24) + 2] ^ v595[v617 >> 24] ^ *v613 ^ v617 ^ (-99 * (v617 >> 24)) ^ 0xAF) << 24) ^ 0x5A83E917) & ~(v616 << 16) & 0xFF83FFFF | (((v616 >> 2) & 0x1F) << 18)) ^ 0x607C5B9) & ~(v615 << 8) | (v615 << 8) & 0xD300) ^ 0xEE8D8DC3) & (v584 ^ ~v567 | 0xFFFFFF00) | (v584 ^ v567) & 0x92) ^ 0x787FAEE1;
  v618 = *v548;
  v619 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v615) = v564;
  v620 = *(&off_1010A0B50 + (v564 ^ 0x2296)) - 1639315795;
  v621 = *(&off_1010A0B50 + v564 - 12284) - 523542319;
  v622 = *(&off_1010A0B50 + (v564 ^ 0x3C87)) - 1613538286;
  v623 = *(*v548 + v619);
  v624 = 1864610357 * ((1864610357 * ((v623 ^ (v613 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 7)) & 0x7FFFFFFFu)) >> 16));
  v625 = v624 >> 24;
  LODWORD(v624) = v621[v624 >> 24] ^ v620[(v624 >> 24) + 5] ^ v622[v624 >> 24] ^ *(v613 + 7) ^ v624;
  LODWORD(v625) = 39 * v625;
  LOBYTE(v568) = v624 ^ ~v625;
  v626 = (v624 ^ v625) & 0x69;
  v627 = 1864610357 * ((1864610357 * ((v623 ^ (v613 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 6)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v627) = (v593[(v627 >> 24) + 6] ^ *(v613 + 6) ^ v594[(v627 >> 24) + 2] ^ v595[v627 >> 24] ^ (53 * ((53 * (v623 ^ (v613 + 6))) ^ ((1864610357 * ((v623 ^ (v613 + 6)) & 0x7FFFFFFFu)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v623 ^ (v613 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 6)) & 0x7FFFFFFFu)) >> 16))) >> 24)));
  v628 = 1864610357 * ((1864610357 * ((v623 ^ (v613 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 5)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v628) = v593[(v628 >> 24) + 6] ^ *(v613 + 5) ^ v594[(v628 >> 24) + 2] ^ v595[v628 >> 24] ^ (53 * ((53 * (v623 ^ (v613 + 5))) ^ ((1864610357 * ((v623 ^ (v613 + 5)) & 0x7FFFFFFFu)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v623 ^ (v613 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 5)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v629 = 1864610357 * ((1864610357 * ((v623 ^ (v613 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 4)) & 0x7FFFFFFFu)) >> 16));
  v2[57] = (((((((v593[(v629 >> 24) + 6] ^ v629 ^ v594[(v629 >> 24) + 2] ^ v595[v629 >> 24] ^ (-99 * ((1864610357 * ((1864610357 * ((v623 ^ (v613 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v623 ^ (v613 + 4)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ *(v613 + 4) ^ 0x7E) << 24) ^ 0x3AD8B274) & ~(v628 << 16) | (v628 << 16) & 0x270000) ^ 0x446E554B) & ~(v627 << 8) ^ ((((v627 >> 3) & 3) << 11) | 0x142925A9)) & (v568 | 0xFFFFFF00) | v626) ^ 0x9C4C09A4;
  v630 = *v548;
  v631 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v627) = *(*v548 + v631);
  v632 = 1864610357 * ((1864610357 * ((v627 ^ (v613 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v627 ^ (v613 + 11)) & 0x7FFFFFFF)) >> 16));
  v633 = v632 >> 24;
  LODWORD(v632) = v620[(v632 >> 24) + 5] ^ *(v613 + 11) ^ v621[v632 >> 24] ^ v622[v632 >> 24] ^ v632;
  LODWORD(v633) = 39 * v633;
  LOBYTE(v595) = v632 ^ ~v633;
  LODWORD(v561) = (v632 ^ v633) & 0xB0;
  v634 = 1864610357 * ((1864610357 * ((v627 ^ (v613 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v627 ^ (v613 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v568) = (v621[v634 >> 24] ^ v620[(v634 >> 24) + 5] ^ v622[v634 >> 24] ^ *(v613 + 10) ^ v634 ^ (39 * BYTE3(v634)));
  LODWORD(v632) = *(v618 + v619);
  v635 = 1864610357 * ((1864610357 * ((v632 ^ (v613 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v613 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v635) = v620[(v635 >> 24) + 5] ^ *(v613 + 9) ^ v621[v635 >> 24] ^ v622[v635 >> 24] ^ (53 * ((53 * (v632 ^ (v613 + 9))) ^ ((1864610357 * ((v632 ^ (v613 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (39 * ((1864610357 * ((1864610357 * ((v632 ^ (v613 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v613 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v636 = 1864610357 * ((1864610357 * ((v632 ^ (v613 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v613 + 8)) & 0x7FFFFFFF)) >> 16));
  v2[58] = (((((((v621[v636 >> 24] ^ v620[(v636 >> 24) + 5] ^ v622[v636 >> 24] ^ *(v613 + 8) ^ v636 ^ (39 * (v636 >> 24))) << 24) ^ 0x1D260F1) & ~(v635 << 16) | (v635 << 16) & 0x2D0000) ^ 0x9EF9A1AC) & ~(v568 << 8) ^ ((((v568 >> 1) & 0x1F) << 9) | 0xDA8A4112)) & (v595 | 0xFFFFFF00) | v561) ^ 0x95891C83;
  LODWORD(v636) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v637 = 1864610357 * ((1864610357 * ((v636 ^ (v613 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v636 ^ (v613 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v595) = 39 * ((1864610357 * ((1864610357 * ((v636 ^ (v613 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v636 ^ (v613 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v634) = v620[(v637 >> 24) + 5] ^ *(v613 + 15) ^ v621[v637 >> 24] ^ v622[v637 >> 24] ^ v637;
  LOBYTE(v561) = v634 ^ ~v595;
  LODWORD(v595) = (v634 ^ v595) & 0x7D;
  v638 = 1864610357 * ((1864610357 * ((v636 ^ (v613 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v636 ^ (v613 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v638) = v620[(v638 >> 24) + 5] ^ *(v613 + 14) ^ v621[v638 >> 24] ^ v622[v638 >> 24] ^ (53 * ((53 * (v636 ^ (v613 + 14))) ^ ((1864610357 * ((v636 ^ (v613 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (39 * ((1864610357 * ((1864610357 * ((v636 ^ (v613 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v636 ^ (v613 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v639 = 1864610357 * ((1864610357 * ((v636 ^ (v613 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v636 ^ (v613 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v639) = v639 ^ v620[(v639 >> 24) + 5] ^ v621[v639 >> 24] ^ v622[v639 >> 24] ^ (39 * BYTE3(v639)) ^ *(v613 + 13);
  LODWORD(v630) = 1864610357 * ((*(v630 + v631) ^ (v613 + 12)) & 0x7FFFFFFF);
  v640 = 1864610357 * (v630 ^ WORD1(v630));
  v641 = STACK[0x59D0];
  v2[59] = ((((((((v620[(v640 >> 24) + 5] ^ v621[v640 >> 24] ^ v622[v640 >> 24] ^ *(v613 + 12) ^ v640 ^ (39 * (v640 >> 24)) ^ 0x66666666) << 24) ^ 0x5043480C) & ~(v639 << 16) | (v639 << 16) & 0xBC0000) ^ 0x7E4FFB31) & ~(v638 << 8) | (v638 << 8) & 0x4C00) ^ 0x6474E0BF) & (v561 | 0xFFFFFF00) | v595) ^ 0x5A271D73;
  v642 = *v548;
  v643 = *v550 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v613) = *(*v548 + v643);
  v644 = 1864610357 * ((1864610357 * ((v613 ^ (v641 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ (v641 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v637) = 39 * ((1864610357 * ((1864610357 * ((v613 ^ (v641 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ (v641 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v644) = v621[v644 >> 24] ^ v620[(v644 >> 24) + 5] ^ v622[v644 >> 24] ^ *(v641 + 3) ^ v644;
  LOBYTE(v640) = v644 ^ ~v637;
  LOBYTE(v631) = v644 ^ v637;
  v645 = 1864610357 * ((1864610357 * ((v613 ^ (v641 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ (v641 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v645) = v620[(v645 >> 24) + 5] ^ *(v641 + 2) ^ v621[v645 >> 24] ^ v622[v645 >> 24] ^ (53 * ((53 * (v613 ^ (v641 + 2))) ^ ((1864610357 * ((v613 ^ (v641 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (39 * ((1864610357 * ((1864610357 * ((v613 ^ (v641 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ (v641 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v646 = 1864610357 * ((1864610357 * ((v613 ^ (v641 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ (v641 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v646) = v620[(v646 >> 24) + 5] ^ *(v641 + 1) ^ v621[v646 >> 24] ^ v622[v646 >> 24] ^ (53 * ((53 * (v613 ^ (v641 + 1))) ^ ((1864610357 * ((v613 ^ (v641 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (39 * ((1864610357 * ((1864610357 * ((v613 ^ (v641 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ (v641 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v647 = 1864610357 * ((1864610357 * ((v613 ^ v641) & 0x7FFFFFFF)) ^ ((1864610357 * ((v613 ^ v641) & 0x7FFFFFFF)) >> 16));
  v2[60] = ((((((((v647 ^ v620[(v647 >> 24) + 5] ^ v621[v647 >> 24] ^ v622[v647 >> 24] ^ (39 * (v647 >> 24)) ^ *v641) << 24) ^ 0xAB93A2D9) & ~(v646 << 16) | (v646 << 16) & 0x6C0000) ^ 0x3C544E0B) & ~(v645 << 8) | (v645 << 8) & 0x1300) ^ 0xF47E782C) & (v640 | 0xFFFFFF00) | v631 & 1) ^ 0xF9C922F5;
  v648 = *(&off_1010A0B50 + (v615 ^ 0x3BC9)) - 1421715154;
  v649 = *(&off_1010A0B50 + (v615 & 0xBD654280)) - 978122462;
  v650 = v615;
  v651 = *(&off_1010A0B50 + (v615 ^ 0x3D26)) - 1312416643;
  v652 = *v550 & 0xFFFFFFFFE6F073DCLL;
  v653 = *v548;
  LODWORD(v646) = *(*v548 + v652);
  v654 = 1864610357 * ((1864610357 * ((v646 ^ (v641 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v646 ^ (v641 + 7)) & 0x7FFFFFFF)) >> 16));
  v655 = v648[(v654 >> 24) + 2] ^ *(v641 + 7) ^ v649[v654 >> 24] ^ v651[v654 >> 24] ^ v654 ^ (-51 * ((1864610357 * ((1864610357 * ((v646 ^ (v641 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v646 ^ (v641 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v656 = 1864610357 * ((1864610357 * ((v646 ^ (v641 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v646 ^ (v641 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v656) = v656 ^ v620[(v656 >> 24) + 5] ^ v621[v656 >> 24] ^ v622[v656 >> 24] ^ (39 * BYTE3(v656)) ^ *(v641 + 6);
  LODWORD(v646) = *(v642 + v643);
  v657 = 1864610357 * ((1864610357 * ((v646 ^ (v641 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v646 ^ (v641 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v657) = v620[(v657 >> 24) + 5] ^ *(v641 + 5) ^ v621[v657 >> 24] ^ v622[v657 >> 24] ^ (53 * ((53 * (v646 ^ (v641 + 5))) ^ ((1864610357 * ((v646 ^ (v641 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (39 * ((1864610357 * ((1864610357 * ((v646 ^ (v641 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v646 ^ (v641 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v658 = 1864610357 * ((1864610357 * ((v646 ^ (v641 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v646 ^ (v641 + 4)) & 0x7FFFFFFF)) >> 16));
  v2[61] = v655 & 0xBD ^ 0xF6748006 ^ (((((((v621[v658 >> 24] ^ v620[(v658 >> 24) + 5] ^ v622[v658 >> 24] ^ *(v641 + 4) ^ v658 ^ (39 * (v658 >> 24))) << 24) ^ 0x44ADB919) & ~(v657 << 16) | (v657 << 16) & 0x520000) ^ 0xAAA9932A) & ~(v656 << 8) | (v656 << 8) & 0xD500) ^ 0x5BB6F371) & (v655 ^ 0xFFFFFF7F);
  LODWORD(v657) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v659 = 1864610357 * ((1864610357 * ((v657 ^ (v641 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v641 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v659) = v648[(v659 >> 24) + 2] ^ *(v641 + 11) ^ v649[v659 >> 24] ^ v651[v659 >> 24] ^ v659 ^ (-51 * ((1864610357 * ((1864610357 * ((v657 ^ (v641 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v641 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v660 = 1864610357 * ((1864610357 * ((v657 ^ (v641 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v641 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v660) = v648[(v660 >> 24) + 2] ^ *(v641 + 10) ^ v649[v660 >> 24] ^ v651[v660 >> 24] ^ (53 * ((53 * (v657 ^ (v641 + 10))) ^ ((1864610357 * ((v657 ^ (v641 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v657 ^ (v641 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v641 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v661 = 1864610357 * ((1864610357 * ((v657 ^ (v641 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v641 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v657) = 1864610357 * ((*(v653 + v652) ^ (v641 + 8)) & 0x7FFFFFFF);
  v662 = 1864610357 * (v657 ^ WORD1(v657));
  LODWORD(v661) = (v661 ^ v648[(v661 >> 24) + 2] ^ v649[v661 >> 24] ^ v651[v661 >> 24] ^ (-51 * BYTE3(v661)) ^ *(v641 + 9)) << 16;
  v2[62] = v659 & 0xD2 ^ 0x5B5840D9 ^ (((((((v649[v662 >> 24] ^ v648[(v662 >> 24) + 2] ^ v651[v662 >> 24] ^ *(v641 + 8) ^ v662 ^ (-51 * (v662 >> 24))) << 24) ^ 0x2666516C) & ~v661 | v661 & 0x99999999) ^ 0xF15D9017) & ~(v660 << 8) | (v660 << 8) & 0x3E00) ^ 0x9D61EB56) & (v659 ^ 0xFFFFFF7F);
  LODWORD(v662) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v663 = 1864610357 * ((1864610357 * ((v662 ^ (v641 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v663) = v649[v663 >> 24] ^ v648[(v663 >> 24) + 2] ^ v651[v663 >> 24] ^ *(v641 + 15) ^ v663 ^ (-51 * ((1864610357 * ((1864610357 * ((v662 ^ (v641 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v664 = 1864610357 * ((1864610357 * ((v662 ^ (v641 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v664) = v648[(v664 >> 24) + 2] ^ *(v641 + 14) ^ v649[v664 >> 24] ^ v651[v664 >> 24] ^ (53 * ((53 * (v662 ^ (v641 + 14))) ^ ((1864610357 * ((v662 ^ (v641 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v662 ^ (v641 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v665 = 1864610357 * ((1864610357 * ((v662 ^ (v641 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v665) = v648[(v665 >> 24) + 2] ^ *(v641 + 13) ^ v649[v665 >> 24] ^ v651[v665 >> 24] ^ (53 * ((53 * (v662 ^ (v641 + 13))) ^ ((1864610357 * ((v662 ^ (v641 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v662 ^ (v641 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v666 = 1864610357 * ((1864610357 * ((v662 ^ (v641 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v662 ^ (v641 + 12)) & 0x7FFFFFFF)) >> 16));
  v667 = STACK[0x2DE8];
  v2[63] = v663 & 0x37 ^ 0xD7D1B812 ^ (((((((v666 ^ v648[(v666 >> 24) + 2] ^ v649[v666 >> 24] ^ v651[v666 >> 24] ^ (-51 * (v666 >> 24)) ^ *(v641 + 12)) << 24) ^ 0x8D87C946) & ~(v665 << 16) & 0xFF87FFFF | (((v665 >> 3) & 0xF) << 19)) ^ 0x12F7E5DC) & ~(v664 << 8) | (v664 << 8) & 0xD300) ^ 0x11066252) & (v663 ^ 0xFFFFFFFE);
  LODWORD(v666) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v668 = 1864610357 * ((1864610357 * ((v666 ^ (v667 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ (v667 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v665) = -51 * ((1864610357 * ((1864610357 * ((v666 ^ (v667 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ (v667 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v663) = v649[v668 >> 24] ^ v648[(v668 >> 24) + 2] ^ v651[v668 >> 24] ^ *(v667 + 3) ^ v668;
  LOBYTE(v668) = v663 ^ ~v665;
  LOBYTE(v663) = v663 ^ v665;
  v669 = 1864610357 * ((1864610357 * ((v666 ^ (v667 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ (v667 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v669) = (v648[(v669 >> 24) + 2] ^ *(v667 + 2) ^ v649[v669 >> 24] ^ v651[v669 >> 24] ^ (53 * ((53 * (v666 ^ (v667 + 2))) ^ ((1864610357 * ((v666 ^ (v667 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v666 ^ (v667 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ (v667 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v670 = 1864610357 * ((1864610357 * ((v666 ^ (v667 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ (v667 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v670) = v648[(v670 >> 24) + 2] ^ *(v667 + 1) ^ v649[v670 >> 24] ^ v651[v670 >> 24] ^ (53 * ((53 * (v666 ^ (v667 + 1))) ^ ((1864610357 * ((v666 ^ (v667 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v666 ^ (v667 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ (v667 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v671 = 1864610357 * ((1864610357 * ((v666 ^ v667) & 0x7FFFFFFF)) ^ ((1864610357 * ((v666 ^ v667) & 0x7FFFFFFF)) >> 16));
  v672 = v671 >> 24;
  v2[64] = (((((((v648[(v671 >> 24) + 2] ^ v671 ^ v649[v672] ^ v651[v672] ^ (-51 * v672) ^ *v667 ^ 0xFFFFFFE3) << 24) ^ 0x462A2A80) & ~(v670 << 16) | (v670 << 16) & 0xD50000) ^ 0x2AF8E4AB) & ~v669 ^ (v669 & 0x12333113 | 0x2D8C42A4)) & (v668 | 0xFFFFFF00) | v663 & 0x70) ^ 0x31BF13F9;
  LODWORD(v606) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v673 = 1864610357 * ((1864610357 * ((v606 ^ (v667 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 7)) & 0x7FFFFFFF)) >> 16));
  v674 = *(&off_1010A0B50 + v650 - 12150) - 1784111735;
  v675 = *(&off_1010A0B50 + (v650 ^ 0x3106)) - 54775395;
  v676 = *(&off_1010A0B50 + v650 - 10954) - 1207978091;
  LOBYTE(v669) = 117 * ((1864610357 * ((1864610357 * ((v606 ^ (v667 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v673) = v675[v673 >> 24] ^ v674[(v673 >> 24) + 1] ^ v676[v673 >> 24] ^ *(v667 + 7) ^ v673;
  LOBYTE(v641) = v673 ^ ~v669;
  LOBYTE(v642) = v673 ^ v669;
  v677 = 1864610357 * ((1864610357 * ((v606 ^ (v667 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v669) = v648[(v677 >> 24) + 2] ^ *(v667 + 6) ^ v649[v677 >> 24] ^ v651[v677 >> 24] ^ (53 * ((53 * (v606 ^ (v667 + 6))) ^ ((1864610357 * ((v606 ^ (v667 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v606 ^ (v667 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v678 = 1864610357 * ((1864610357 * ((v606 ^ (v667 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v678) = v648[(v678 >> 24) + 2] ^ *(v667 + 5) ^ v649[v678 >> 24] ^ v651[v678 >> 24] ^ (53 * ((53 * (v606 ^ (v667 + 5))) ^ ((1864610357 * ((v606 ^ (v667 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-51 * ((1864610357 * ((1864610357 * ((v606 ^ (v667 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v679 = 1864610357 * ((1864610357 * ((v606 ^ (v667 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 4)) & 0x7FFFFFFF)) >> 16));
  v2[65] = ((((((((v648[(v679 >> 24) + 2] ^ v679 ^ v649[v679 >> 24] ^ v651[v679 >> 24] ^ (-51 * ((1864610357 * ((1864610357 * ((v606 ^ (v667 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v606 ^ (v667 + 4)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *(v667 + 4) ^ 0x7A) << 24) ^ 0xC5FA1026) & ~(v678 << 16) | (v678 << 16) & 0x50000) ^ 0xB7B9E240) & ~(v669 << 8) | (v669 << 8) & 0xD00) ^ 0xCE441379) & (v641 | 0xFFFFFF00) | v642 & 0xE0) ^ 0xA3C865C9;
  LODWORD(v648) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v680 = 1864610357 * ((1864610357 * ((v648 ^ (v667 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v680) = v675[v680 >> 24] ^ v674[(v680 >> 24) + 1] ^ v676[v680 >> 24] ^ *(v667 + 11) ^ (53 * ((53 * (v648 ^ (v667 + 11))) ^ ((1864610357 * ((v648 ^ (v667 + 11)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v648 ^ (v667 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v681 = 1864610357 * ((1864610357 * ((v648 ^ (v667 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v681) = (v674[(v681 >> 24) + 1] ^ *(v667 + 10) ^ v675[v681 >> 24] ^ v676[v681 >> 24] ^ (53 * ((53 * (v648 ^ (v667 + 10))) ^ ((1864610357 * ((v648 ^ (v667 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v648 ^ (v667 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v682 = 1864610357 * ((1864610357 * ((v648 ^ (v667 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v682) = v674[(v682 >> 24) + 1] ^ *(v667 + 9) ^ v675[v682 >> 24] ^ v676[v682 >> 24] ^ (53 * ((53 * (v648 ^ (v667 + 9))) ^ ((1864610357 * ((v648 ^ (v667 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v648 ^ (v667 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v683 = 1864610357 * ((1864610357 * ((v648 ^ (v667 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v667 + 8)) & 0x7FFFFFFF)) >> 16));
  v684 = v683 >> 24;
  LODWORD(v679) = v674[(v683 >> 24) + 1] ^ v683;
  LODWORD(v556) = v675[v683 >> 24] ^ v676[v683 >> 24];
  v685 = STACK[0x7AF0];
  *(STACK[0xE80] + 264) = v680 & 0xF0 ^ 0x49A9B3D5 ^ ((((((v679 ^ v556 ^ (117 * v684) ^ *(v667 + 8) ^ 0x6E) << 24) ^ 0xEDDAF360) & ~(v682 << 16) | (v682 << 16) & 0x250000) ^ 0xC5286403) & ~v681 ^ (v681 & 0x6800 | 0xD4AB026C)) & (v680 ^ 0xFFFFFF7F);
  LODWORD(v680) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v686 = 1864610357 * ((1864610357 * ((v680 ^ (v667 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 15)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v681) = v675[v686 >> 24] ^ v674[(v686 >> 24) + 1] ^ v676[v686 >> 24] ^ *(v667 + 15) ^ (53 * ((53 * (v680 ^ (v667 + 15))) ^ ((1864610357 * ((v680 ^ (v667 + 15)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v680 ^ (v667 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v687 = 1864610357 * ((1864610357 * ((v680 ^ (v667 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v686) = v674[(v687 >> 24) + 1] ^ *(v667 + 14) ^ v675[v687 >> 24] ^ v676[v687 >> 24] ^ (53 * ((53 * (v680 ^ (v667 + 14))) ^ ((1864610357 * ((v680 ^ (v667 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v680 ^ (v667 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v688 = 1864610357 * ((1864610357 * ((v680 ^ (v667 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v688) = v674[(v688 >> 24) + 1] ^ *(v667 + 13) ^ v675[v688 >> 24] ^ v676[v688 >> 24] ^ (53 * ((53 * (v680 ^ (v667 + 13))) ^ ((1864610357 * ((v680 ^ (v667 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v680 ^ (v667 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v689 = 1864610357 * ((1864610357 * ((v680 ^ (v667 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v680 ^ (v667 + 12)) & 0x7FFFFFFF)) >> 16));
  v2[67] = v681 & 6 ^ 0x4FEF1C96 ^ (((((((v689 ^ v674[(v689 >> 24) + 1] ^ v675[v689 >> 24] ^ v676[v689 >> 24] ^ (117 * (v689 >> 24)) ^ *(v667 + 12)) << 24) ^ 0xA10F9001) & ~(v688 << 16) & 0xFF0FFFFF | (v688 >> 4 << 20)) ^ 0x9FB77CF1) & ~(v686 << 8) | (v686 << 8) & 0x1300) ^ 0x7459909) & (v681 ^ 0xFFFFFFF9);
  LODWORD(v688) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v690 = 1864610357 * ((1864610357 * ((v688 ^ (v685 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ (v685 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v684) = 117 * ((1864610357 * ((1864610357 * ((v688 ^ (v685 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ (v685 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v690) = v675[v690 >> 24] ^ v674[(v690 >> 24) + 1] ^ v676[v690 >> 24] ^ v685[3] ^ v690;
  LODWORD(v681) = (v690 ^ v684) & 0xC2;
  LODWORD(v684) = v690 ^ ~v684 | 0xFFFFFF00;
  v691 = 1864610357 * ((1864610357 * ((v688 ^ (v685 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ (v685 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v690) = v674[(v691 >> 24) + 1] ^ v685[2] ^ v675[v691 >> 24] ^ v676[v691 >> 24] ^ (53 * ((53 * (v688 ^ (v685 + 2))) ^ ((1864610357 * ((v688 ^ (v685 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v688 ^ (v685 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ (v685 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v692 = 1864610357 * ((1864610357 * ((v688 ^ (v685 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ (v685 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v692) = (v674[(v692 >> 24) + 1] ^ v685[1] ^ v675[v692 >> 24] ^ v676[v692 >> 24] ^ (53 * ((53 * (v688 ^ (v685 + 1))) ^ ((1864610357 * ((v688 ^ (v685 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v688 ^ (v685 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ (v685 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v693 = 1864610357 * ((1864610357 * ((v688 ^ v685) & 0x7FFFFFFF)) ^ ((1864610357 * ((v688 ^ v685) & 0x7FFFFFFF)) >> 16));
  LODWORD(v692) = v692 & 0xFFFF00FF | ((v693 ^ v674[(v693 >> 24) + 1] ^ v675[v693 >> 24] ^ v676[v693 >> 24] ^ (117 * (v693 >> 24)) ^ *v685) << 24) | (v690 << 8);
  v2[68] = (((v692 - ((2 * v692) & 0x49F32E00) + 620337063) ^ 0x83BF099A) & v684 | v681) ^ 0x77BAB4A1;
  LODWORD(v693) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v694 = 1864610357 * ((1864610357 * ((v693 ^ (v685 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 7)) & 0x7FFFFFFF)) >> 16));
  v695 = *(&off_1010A0B50 + v650 - 8808) - 1427510523;
  v696 = *(&off_1010A0B50 + (v650 ^ 0x2144)) - 400992439;
  v697 = *(&off_1010A0B50 + v650 - 10144) - 462267379;
  LODWORD(v679) = -53 * ((1864610357 * ((1864610357 * ((v693 ^ (v685 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v694) = v696[v694 >> 24] ^ v695[(v694 >> 24) + 3] ^ v697[v694 >> 24] ^ v685[7] ^ v694;
  LOBYTE(v606) = v694 ^ ~v679;
  LODWORD(v667) = (v694 ^ v679) & 0x94;
  v698 = 1864610357 * ((1864610357 * ((v693 ^ (v685 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v698) = v674[(v698 >> 24) + 1] ^ v685[6] ^ v675[v698 >> 24] ^ v676[v698 >> 24] ^ (53 * ((53 * (v693 ^ (v685 + 6))) ^ ((1864610357 * ((v693 ^ (v685 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v693 ^ (v685 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v699 = 1864610357 * ((1864610357 * ((v693 ^ (v685 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v699) = v674[(v699 >> 24) + 1] ^ v685[5] ^ v675[v699 >> 24] ^ v676[v699 >> 24] ^ (53 * ((53 * (v693 ^ (v685 + 5))) ^ ((1864610357 * ((v693 ^ (v685 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (117 * ((1864610357 * ((1864610357 * ((v693 ^ (v685 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v700 = 1864610357 * ((1864610357 * ((v693 ^ (v685 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v693 ^ (v685 + 4)) & 0x7FFFFFFF)) >> 16));
  v701 = &v674[v700 >> 24];
  v702 = STACK[0x6F50];
  LODWORD(v675) = (v699 << 16) | ((v700 ^ v701[1] ^ v675[v700 >> 24] ^ v676[v700 >> 24] ^ (117 * (v700 >> 24)) ^ v685[4]) << 24) | (v698 << 8);
  v2[69] = (((v675 - ((2 * v675) & 0x2DB52200) - 1764060782) ^ 0xC807F9) & (v606 | 0xFFFFFF00) | v667) ^ 0x7218CD00;
  LODWORD(v620) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v703 = 1864610357 * ((1864610357 * ((v620 ^ (v685 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v700) = -53 * ((1864610357 * ((1864610357 * ((v620 ^ (v685 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v703) = v696[v703 >> 24] ^ v695[(v703 >> 24) + 3] ^ v697[v703 >> 24] ^ v685[11] ^ v703;
  LOBYTE(v676) = v703 ^ ~v700;
  LODWORD(v703) = (v703 ^ v700) & 0xF7;
  v704 = 1864610357 * ((1864610357 * ((v620 ^ (v685 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v698) = v695[(v704 >> 24) + 3] ^ v685[10] ^ v696[v704 >> 24] ^ v697[v704 >> 24] ^ (53 * ((53 * (v620 ^ (v685 + 10))) ^ ((1864610357 * ((v620 ^ (v685 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v620 ^ (v685 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v705 = 1864610357 * ((1864610357 * ((v620 ^ (v685 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v699) = v695[(v705 >> 24) + 3] ^ v685[9] ^ v696[v705 >> 24] ^ v697[v705 >> 24] ^ (53 * ((53 * (v620 ^ (v685 + 9))) ^ ((1864610357 * ((v620 ^ (v685 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v620 ^ (v685 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v706 = 1864610357 * ((1864610357 * ((v620 ^ (v685 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v620 ^ (v685 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v706) = (v699 << 16) | ((v706 ^ v695[(v706 >> 24) + 3] ^ v696[v706 >> 24] ^ v697[v706 >> 24] ^ (-53 * (v706 >> 24)) ^ v685[8]) << 24) | (v698 << 8);
  v2[70] = (((v706 - ((2 * v706) & 0xD26C8800) - 382319536) ^ 0xABCEDA58) & (v676 | 0xFFFFFF00) | v703) ^ 0x9F68638D;
  LODWORD(v676) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v707 = 1864610357 * ((1864610357 * ((v676 ^ (v685 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v699) = -53 * ((1864610357 * ((1864610357 * ((v676 ^ (v685 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v707) = v696[v707 >> 24] ^ v695[(v707 >> 24) + 3] ^ v697[v707 >> 24] ^ v685[15] ^ v707;
  LOBYTE(v706) = v707 ^ ~v699;
  LODWORD(v707) = (v707 ^ v699) & 0x81;
  v708 = 1864610357 * ((1864610357 * ((v676 ^ (v685 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v698) = v695[(v708 >> 24) + 3] ^ v685[14] ^ v696[v708 >> 24] ^ v697[v708 >> 24] ^ (53 * ((53 * (v676 ^ (v685 + 14))) ^ ((1864610357 * ((v676 ^ (v685 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v676 ^ (v685 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v709 = 1864610357 * ((1864610357 * ((v676 ^ (v685 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v709) = v695[(v709 >> 24) + 3] ^ v685[13] ^ v696[v709 >> 24] ^ v697[v709 >> 24] ^ (53 * ((53 * (v676 ^ (v685 + 13))) ^ ((1864610357 * ((v676 ^ (v685 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v676 ^ (v685 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v710 = 1864610357 * ((1864610357 * ((v676 ^ (v685 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v676 ^ (v685 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v709) = (v709 << 16) | ((v710 ^ v695[(v710 >> 24) + 3] ^ v696[v710 >> 24] ^ v697[v710 >> 24] ^ (-53 * (v710 >> 24)) ^ v685[12]) << 24) | (v698 << 8);
  v2[71] = (((v709 - ((2 * v709) & 0x82AC6200) - 1051315765) ^ 0x346CD5B5) & (v706 | 0xFFFFFF00) | v707) ^ 0xD94E1D44;
  LODWORD(v706) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v711 = 1864610357 * ((1864610357 * ((v706 ^ (v702 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ (v702 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v709) = -53 * ((1864610357 * ((1864610357 * ((v706 ^ (v702 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ (v702 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v711) = v696[v711 >> 24] ^ v695[(v711 >> 24) + 3] ^ v697[v711 >> 24] ^ v702[3] ^ v711;
  v712 = 1864610357 * ((1864610357 * ((v706 ^ (v702 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ (v702 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v712) = v695[(v712 >> 24) + 3] ^ v702[2] ^ v696[v712 >> 24] ^ v697[v712 >> 24] ^ (53 * ((53 * (v706 ^ (v702 + 2))) ^ ((1864610357 * ((v706 ^ (v702 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v706 ^ (v702 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ (v702 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v713 = 1864610357 * ((1864610357 * ((v706 ^ (v702 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ (v702 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v713) = (v695[(v713 >> 24) + 3] ^ v702[1] ^ v696[v713 >> 24] ^ v697[v713 >> 24] ^ (53 * ((53 * (v706 ^ (v702 + 1))) ^ ((1864610357 * ((v706 ^ (v702 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v706 ^ (v702 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ (v702 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v714 = 1864610357 * ((1864610357 * ((v706 ^ v702) & 0x7FFFFFFF)) ^ ((1864610357 * ((v706 ^ v702) & 0x7FFFFFFF)) >> 16));
  LODWORD(v713) = v713 & 0xFFFF00FF | ((v714 ^ v695[(v714 >> 24) + 3] ^ v696[v714 >> 24] ^ v697[v714 >> 24] ^ (-53 * (v714 >> 24)) ^ *v702) << 24) | (v712 << 8);
  v2[72] = ((v711 ^ v709) & 0x10 | 0x1420500) ^ 0xCF6AB56 ^ ((v713 - ((2 * v713) & 0xA631F800) + 1394146513) ^ 0x3F05C63E) & (v711 ^ ~v709 | 0xFFFFFF00);
  LODWORD(v667) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v715 = 1864610357 * ((1864610357 * ((v667 ^ (v702 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 7)) & 0x7FFFFFFF)) >> 16));
  v716 = *(&off_1010A0B50 + v650 - 10333) - 1280511638;
  v717 = *(&off_1010A0B50 + (v650 ^ 0x3A7F)) - 1747014646;
  v718 = *(&off_1010A0B50 + (v650 ^ 0x3F38)) - 1437501595;
  LODWORD(v712) = 13 * ((1864610357 * ((1864610357 * ((v667 ^ (v702 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v715) = v717[v715 >> 24] ^ v716[(v715 >> 24) + 4] ^ v718[v715 >> 24] ^ v702[7] ^ v715;
  LOBYTE(v641) = v715 ^ ~v712;
  LODWORD(v606) = (v715 ^ v712) & 0x67;
  v719 = 1864610357 * ((1864610357 * ((v667 ^ (v702 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 6)) & 0x7FFFFFFF)) >> 16));
  v720 = 1864610357 * ((1864610357 * ((v667 ^ (v702 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 5)) & 0x7FFFFFFF)) >> 16));
  v721 = 1864610357 * ((1864610357 * ((v667 ^ (v702 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v696) = ((v695[(v720 >> 24) + 3] ^ v702[5] ^ v696[v720 >> 24] ^ v697[v720 >> 24] ^ (53 * ((53 * (v667 ^ (v702 + 5))) ^ ((1864610357 * ((v667 ^ (v702 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v667 ^ (v702 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16) | ((v721 ^ v695[(v721 >> 24) + 3] ^ v696[v721 >> 24] ^ v697[v721 >> 24] ^ (-53 * ((1864610357 * ((1864610357 * ((v667 ^ (v702 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 4)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v702[4]) << 24) | ((v695[(v719 >> 24) + 3] ^ v702[6] ^ v696[v719 >> 24] ^ v697[v719 >> 24] ^ (53 * ((53 * (v667 ^ (v702 + 6))) ^ ((1864610357 * ((v667 ^ (v702 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-53 * ((1864610357 * ((1864610357 * ((v667 ^ (v702 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v667 ^ (v702 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  v2[73] = (((v696 - ((2 * v696) & 0x22BA9000) + 291326051) ^ 0xF695ECFB) & (v641 | 0xFFFFFF00) | v606) ^ 0x52070381;
  LODWORD(v696) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v722 = 1864610357 * ((1864610357 * ((v696 ^ (v702 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v720) = 13 * ((1864610357 * ((1864610357 * ((v696 ^ (v702 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v722) = v717[v722 >> 24] ^ v716[(v722 >> 24) + 4] ^ v718[v722 >> 24] ^ v702[11] ^ v722;
  LOBYTE(v667) = v722 ^ ~v720;
  LODWORD(v697) = (v722 ^ v720) & 0x52;
  v723 = 1864610357 * ((1864610357 * ((v696 ^ (v702 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v722) = v716[(v723 >> 24) + 4] ^ v702[10] ^ v717[v723 >> 24] ^ v718[v723 >> 24] ^ (53 * ((53 * (v696 ^ (v702 + 10))) ^ ((1864610357 * ((v696 ^ (v702 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v696 ^ (v702 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v724 = 1864610357 * ((1864610357 * ((v696 ^ (v702 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v721) = v716[(v724 >> 24) + 4] ^ v702[9] ^ v717[v724 >> 24] ^ v718[v724 >> 24] ^ (53 * ((53 * (v696 ^ (v702 + 9))) ^ ((1864610357 * ((v696 ^ (v702 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v696 ^ (v702 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v725 = 1864610357 * ((1864610357 * ((v696 ^ (v702 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v696 ^ (v702 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v721) = (v721 << 16) | ((v725 ^ v716[(v725 >> 24) + 4] ^ v717[v725 >> 24] ^ v718[v725 >> 24] ^ (13 * (v725 >> 24)) ^ v702[8]) << 24) | (v722 << 8);
  v2[74] = (((v721 - ((2 * v721) & 0x224DE000) - 1859718924) ^ 0x30674B59) & (v667 | 0xFFFFFF00) | v697) ^ 0xBB1280AD;
  LODWORD(v721) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v726 = 1864610357 * ((1864610357 * ((v721 ^ (v702 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v679) = 13 * ((1864610357 * ((1864610357 * ((v721 ^ (v702 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v726) = v717[v726 >> 24] ^ v716[(v726 >> 24) + 4] ^ v718[v726 >> 24] ^ v702[15] ^ v726;
  LOBYTE(v697) = v726 ^ ~v679;
  LOBYTE(v667) = v726 ^ v679;
  v727 = 1864610357 * ((1864610357 * ((v721 ^ (v702 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 14)) & 0x7FFFFFFF)) >> 16));
  v728 = 1864610357 * ((1864610357 * ((v721 ^ (v702 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 13)) & 0x7FFFFFFF)) >> 16));
  v729 = STACK[0x3B20];
  LOBYTE(v724) = v716[(v728 >> 24) + 4] ^ v702[13] ^ v717[v728 >> 24] ^ v718[v728 >> 24] ^ (53 * ((53 * (v721 ^ (v702 + 13))) ^ ((1864610357 * ((v721 ^ (v702 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v721 ^ (v702 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v730 = 1864610357 * ((1864610357 * ((v721 ^ (v702 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v725) = (v724 << 16) | ((v730 ^ v716[(v730 >> 24) + 4] ^ v717[v730 >> 24] ^ v718[v730 >> 24] ^ (13 * (v730 >> 24)) ^ v702[12]) << 24) | ((v716[(v727 >> 24) + 4] ^ v702[14] ^ v717[v727 >> 24] ^ v718[v727 >> 24] ^ (53 * ((53 * (v721 ^ (v702 + 14))) ^ ((1864610357 * ((v721 ^ (v702 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v721 ^ (v702 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v721 ^ (v702 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  v2[75] = (((v725 - ((2 * v725) & 0x9F18A400) + 1334596198) ^ 0x5F90E2B7) & (v697 | 0xFFFFFF00) | v667 & 0x2E) ^ 0x120A5C31;
  LODWORD(v697) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v731 = 1864610357 * ((1864610357 * ((v697 ^ (v729 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v729 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v724) = 13 * ((1864610357 * ((1864610357 * ((v697 ^ (v729 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v729 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v731) = v717[v731 >> 24] ^ v716[(v731 >> 24) + 4] ^ v718[v731 >> 24] ^ *(v729 + 3) ^ v731;
  LOBYTE(v727) = v731 ^ ~v724;
  LODWORD(v731) = (v731 ^ v724) & 0xF5;
  v732 = 1864610357 * ((1864610357 * ((v697 ^ (v729 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v729 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v724) = v716[(v732 >> 24) + 4] ^ *(v729 + 2) ^ v717[v732 >> 24] ^ v718[v732 >> 24] ^ (53 * ((53 * (v697 ^ (v729 + 2))) ^ ((1864610357 * ((v697 ^ (v729 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v697 ^ (v729 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v729 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v733 = 1864610357 * ((1864610357 * ((v697 ^ (v729 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v729 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v733) = (v716[(v733 >> 24) + 4] ^ *(v729 + 1) ^ v717[v733 >> 24] ^ v718[v733 >> 24] ^ (53 * ((53 * (v697 ^ (v729 + 1))) ^ ((1864610357 * ((v697 ^ (v729 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v697 ^ (v729 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v729 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v734 = 1864610357 * ((1864610357 * ((v697 ^ v729) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ v729) & 0x7FFFFFFF)) >> 16));
  LODWORD(v734) = v733 & 0xFFFF00FF | ((v734 ^ v716[(v734 >> 24) + 4] ^ v717[v734 >> 24] ^ v718[v734 >> 24] ^ (13 * (v734 >> 24)) ^ *v729) << 24) | (v724 << 8);
  v2[76] = (((v734 - ((2 * v734) & 0xF77CAE00) - 71411967) ^ 0xFF909D0B) & (v727 | 0xFFFFFF00) | v731) ^ 0x1D7AB5B9;
  LODWORD(v724) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v735 = 1864610357 * ((1864610357 * ((v724 ^ (v729 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v679) = -35 * ((1864610357 * ((1864610357 * ((v724 ^ (v729 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v736 = *(&off_1010A0B50 + (v650 ^ 0x35CA)) - 1616134327;
  v737 = *(&off_1010A0B50 + (v650 ^ 0x3107)) - 365888110;
  LODWORD(v642) = v650;
  v738 = *(&off_1010A0B50 + (v650 ^ 0x38B9)) - 2084569122;
  LODWORD(v735) = v737[v735 >> 24] ^ v736[(v735 >> 24) + 2] ^ v738[v735 >> 24] ^ *(v729 + 7) ^ v735;
  LOBYTE(v606) = v735 ^ ~v679;
  LODWORD(v667) = (v735 ^ v679) & 0xBE;
  v739 = 1864610357 * ((1864610357 * ((v724 ^ (v729 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = v716[(v739 >> 24) + 4] ^ *(v729 + 6) ^ v717[v739 >> 24] ^ v718[v739 >> 24] ^ (53 * ((53 * (v724 ^ (v729 + 6))) ^ ((1864610357 * ((v724 ^ (v729 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v724 ^ (v729 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v740 = 1864610357 * ((1864610357 * ((v724 ^ (v729 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v733) = v716[(v740 >> 24) + 4] ^ *(v729 + 5) ^ v717[v740 >> 24] ^ v718[v740 >> 24] ^ (53 * ((53 * (v724 ^ (v729 + 5))) ^ ((1864610357 * ((v724 ^ (v729 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v724 ^ (v729 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v741 = 1864610357 * ((1864610357 * ((v724 ^ (v729 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v724 ^ (v729 + 4)) & 0x7FFFFFFF)) >> 16));
  v742 = STACK[0x1900];
  LODWORD(v716) = (v733 << 16) | ((v741 ^ v716[(v741 >> 24) + 4] ^ v717[v741 >> 24] ^ v718[v741 >> 24] ^ (13 * (v741 >> 24)) ^ *(v729 + 4)) << 24) | (v735 << 8);
  v2[77] = (((v716 - ((2 * v716) & 0x7A86A600) + 1027822343) ^ 0x7A2B8446) & (v606 | 0xFFFFFF00) | v667) ^ 0x8FF1EDB4;
  LODWORD(v718) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v743 = 1864610357 * ((1864610357 * ((v718 ^ (v729 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v735) = -35 * ((1864610357 * ((1864610357 * ((v718 ^ (v729 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v743) = v737[v743 >> 24] ^ v736[(v743 >> 24) + 2] ^ v738[v743 >> 24] ^ *(v729 + 11) ^ v743;
  LOBYTE(v717) = v743 ^ ~v735;
  LODWORD(v743) = (v743 ^ v735) & 0x68;
  v744 = 1864610357 * ((1864610357 * ((v718 ^ (v729 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = v736[(v744 >> 24) + 2] ^ *(v729 + 10) ^ v737[v744 >> 24] ^ v738[v744 >> 24] ^ (53 * ((53 * (v718 ^ (v729 + 10))) ^ ((1864610357 * ((v718 ^ (v729 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v718 ^ (v729 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v745 = 1864610357 * ((1864610357 * ((v718 ^ (v729 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v744) = v736[(v745 >> 24) + 2] ^ *(v729 + 9) ^ v737[v745 >> 24] ^ v738[v745 >> 24] ^ (53 * ((53 * (v718 ^ (v729 + 9))) ^ ((1864610357 * ((v718 ^ (v729 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v718 ^ (v729 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v746 = 1864610357 * ((1864610357 * ((v718 ^ (v729 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v718 ^ (v729 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v746) = (v744 << 16) | ((v746 ^ v736[(v746 >> 24) + 2] ^ v737[v746 >> 24] ^ v738[v746 >> 24] ^ (-35 * (v746 >> 24)) ^ *(v729 + 8)) << 24) | (v735 << 8);
  v2[78] = (((v746 - ((2 * v746) & 0x96DB7A00) + 1265483042) ^ 0x6CE625B5) & (v717 | 0xFFFFFF00) | v743) ^ 0x5740C269;
  LODWORD(v743) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v747 = 1864610357 * ((1864610357 * ((v743 ^ (v729 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v744) = -35 * ((1864610357 * ((1864610357 * ((v743 ^ (v729 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v747) = v737[v747 >> 24] ^ v736[(v747 >> 24) + 2] ^ v738[v747 >> 24] ^ *(v729 + 15) ^ v747;
  LOBYTE(v746) = v747 ^ ~v744;
  LODWORD(v747) = (v747 ^ v744) & 0xA8;
  v748 = 1864610357 * ((1864610357 * ((v743 ^ (v729 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = v736[(v748 >> 24) + 2] ^ *(v729 + 14) ^ v737[v748 >> 24] ^ v738[v748 >> 24] ^ (53 * ((53 * (v743 ^ (v729 + 14))) ^ ((1864610357 * ((v743 ^ (v729 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v743 ^ (v729 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v749 = 1864610357 * ((1864610357 * ((v743 ^ (v729 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v748) = v736[(v749 >> 24) + 2] ^ *(v729 + 13) ^ v737[v749 >> 24] ^ v738[v749 >> 24] ^ (53 * ((53 * (v743 ^ (v729 + 13))) ^ ((1864610357 * ((v743 ^ (v729 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v743 ^ (v729 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v750 = 1864610357 * ((1864610357 * ((v743 ^ (v729 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v743 ^ (v729 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v729) = (v748 << 16) | ((v750 ^ v736[(v750 >> 24) + 2] ^ v737[v750 >> 24] ^ v738[v750 >> 24] ^ (-35 * (v750 >> 24)) ^ *(v729 + 12)) << 24) | (v735 << 8);
  v2[79] = (((v729 - ((2 * v729) & 0xFFA96600) - 2837736) ^ 0x30A2C94F) & (v746 | 0xFFFFFF00) | v747) ^ 0xF2FC2146;
  LODWORD(v729) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v751 = 1864610357 * ((1864610357 * ((v729 ^ (v742 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ (v742 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v746) = -35 * ((1864610357 * ((1864610357 * ((v729 ^ (v742 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ (v742 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v751) = v737[v751 >> 24] ^ v736[(v751 >> 24) + 2] ^ v738[v751 >> 24] ^ *(v742 + 3) ^ v751;
  LOBYTE(v748) = v751 ^ ~v746;
  LODWORD(v751) = (v751 ^ v746) & 0x8F;
  v752 = 1864610357 * ((1864610357 * ((v729 ^ (v742 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ (v742 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = v736[(v752 >> 24) + 2] ^ *(v742 + 2) ^ v737[v752 >> 24] ^ v738[v752 >> 24] ^ (53 * ((53 * (v729 ^ (v742 + 2))) ^ ((1864610357 * ((v729 ^ (v742 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v729 ^ (v742 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ (v742 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v753 = 1864610357 * ((1864610357 * ((v729 ^ (v742 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ (v742 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v753) = v736[(v753 >> 24) + 2] ^ *(v742 + 1) ^ v737[v753 >> 24] ^ v738[v753 >> 24] ^ (53 * ((53 * (v729 ^ (v742 + 1))) ^ ((1864610357 * ((v729 ^ (v742 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v729 ^ (v742 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ (v742 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v754 = 1864610357 * ((1864610357 * ((v729 ^ v742) & 0x7FFFFFFF)) ^ ((1864610357 * ((v729 ^ v742) & 0x7FFFFFFF)) >> 16));
  LODWORD(v753) = (v753 << 16) | ((v754 ^ v736[(v754 >> 24) + 2] ^ v737[v754 >> 24] ^ v738[v754 >> 24] ^ (-35 * (v754 >> 24)) ^ *v742) << 24) | (v735 << 8);
  v2[80] = (((v753 - ((2 * v753) & 0x17684A00) - 1951128285) ^ 0xDE4E6B53) & (v748 | 0xFFFFFF00) | v751) ^ 0xB3B5F6B9;
  LODWORD(v748) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v755 = 1864610357 * ((1864610357 * ((v748 ^ (v742 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v733) = -109 * ((1864610357 * ((1864610357 * ((v748 ^ (v742 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v756 = STACK[0xDD0];
  v757 = STACK[0xDE0];
  v758 = STACK[0xDF0];
  LODWORD(v755) = *(STACK[0xDE0] + (v755 >> 24)) ^ *(STACK[0xDD0] + (v755 >> 24)) ^ *(STACK[0xDF0] + (v755 >> 24)) ^ *(v742 + 7) ^ v755;
  v759 = 1864610357 * ((1864610357 * ((v748 ^ (v742 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = v736[(v759 >> 24) + 2] ^ *(v742 + 6) ^ v737[v759 >> 24] ^ v738[v759 >> 24] ^ (53 * ((53 * (v748 ^ (v742 + 6))) ^ ((1864610357 * ((v748 ^ (v742 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v748 ^ (v742 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v760 = 1864610357 * ((1864610357 * ((v748 ^ (v742 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 5)) & 0x7FFFFFFF)) >> 16));
  v761 = 1864610357 * ((1864610357 * ((v748 ^ (v742 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v736) = ((v736[(v760 >> 24) + 2] ^ *(v742 + 5) ^ v737[v760 >> 24] ^ v738[v760 >> 24] ^ (53 * ((53 * (v748 ^ (v742 + 5))) ^ ((1864610357 * ((v748 ^ (v742 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-35 * ((1864610357 * ((1864610357 * ((v748 ^ (v742 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16) | ((v761 ^ v736[(v761 >> 24) + 2] ^ v737[v761 >> 24] ^ v738[v761 >> 24] ^ (-35 * ((1864610357 * ((1864610357 * ((v748 ^ (v742 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v748 ^ (v742 + 4)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *(v742 + 4)) << 24) | (v735 << 8);
  v2[81] = (((v736 - ((2 * v736) & 0xB379E000) - 641928986) ^ 0x5746E83A) & (v755 ^ ~v733 | 0xFFFFFF00) | (v755 ^ v733) & 0x23) ^ 0x170CB380;
  LODWORD(v738) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v762 = 1864610357 * ((1864610357 * ((v738 ^ (v742 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v738 ^ (v742 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v753) = -109 * ((1864610357 * ((1864610357 * ((v738 ^ (v742 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v738 ^ (v742 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v736) = *(v756 + (v762 >> 24)) ^ *(v742 + 11) ^ *(v757 + (v762 >> 24)) ^ *(v758 + (v762 >> 24)) ^ v762;
  v763 = 1864610357 * ((1864610357 * ((v738 ^ (v742 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v738 ^ (v742 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = *(v756 + (v763 >> 24)) ^ *(v742 + 10) ^ *(v757 + (v763 >> 24)) ^ *(v758 + (v763 >> 24)) ^ (53 * ((53 * (v738 ^ (v742 + 10))) ^ ((1864610357 * ((v738 ^ (v742 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-109 * ((1864610357 * ((1864610357 * ((v738 ^ (v742 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v738 ^ (v742 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v764 = 1864610357 * ((1864610357 * ((v738 ^ (v742 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v738 ^ (v742 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v764) = *(v756 + (v764 >> 24)) ^ *(v742 + 9) ^ (53 * ((53 * (v738 ^ (v742 + 9))) ^ ((1864610357 * ((v738 ^ (v742 + 9)) & 0x7FFFFFFF)) >> 16))) ^ *(v757 + (v764 >> 24)) ^ *(v758 + (v764 >> 24)) ^ (-109 * BYTE3(v764));
  v765 = 1864610357 * ((1864610357 * ((v738 ^ (v742 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v738 ^ (v742 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v764) = (v764 << 16) | (((-109 * (v765 >> 24)) ^ v765 ^ *(v756 + (v765 >> 24)) ^ *(v757 + (v765 >> 24)) ^ *(v758 + (v765 >> 24)) ^ *(v742 + 8)) << 24) | (v735 << 8);
  v2[82] = (((v764 - ((2 * v764) & 0x711CD400) - 1198626163) ^ 0x20306BAB) & (v736 ^ ~v753 | 0xFFFFFF00) | (v736 ^ v753) & 0xD9) ^ 0x18F682BE;
  LODWORD(v736) = *(*v548 + (*v550 & 0xFFFFFFFFE6F073DCLL));
  v766 = 1864610357 * ((1864610357 * ((v736 ^ (v742 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v742 + 15)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v761) = -109 * ((1864610357 * ((1864610357 * ((v736 ^ (v742 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v742 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v766) = *(v756 + (v766 >> 24)) ^ *(v742 + 15) ^ *(v757 + (v766 >> 24)) ^ *(v758 + (v766 >> 24)) ^ v766;
  v767 = 1864610357 * ((1864610357 * ((v736 ^ (v742 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v742 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v735) = *(v756 + (v767 >> 24)) ^ *(v742 + 14) ^ *(v757 + (v767 >> 24)) ^ *(v758 + (v767 >> 24)) ^ (53 * ((53 * (v736 ^ (v742 + 14))) ^ ((1864610357 * ((v736 ^ (v742 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (-109 * ((1864610357 * ((1864610357 * ((v736 ^ (v742 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v742 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v768 = 1864610357 * ((1864610357 * ((v736 ^ (v742 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v742 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v768) = *(v756 + (v768 >> 24)) ^ *(v742 + 13) ^ (53 * ((53 * (v736 ^ (v742 + 13))) ^ ((1864610357 * ((v736 ^ (v742 + 13)) & 0x7FFFFFFF)) >> 16))) ^ *(v757 + (v768 >> 24)) ^ *(v758 + (v768 >> 24)) ^ (-109 * BYTE3(v768));
  v769 = 1864610357 * ((1864610357 * ((v736 ^ (v742 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v742 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v742) = (v768 << 16) | (((-109 * (v769 >> 24)) ^ v769 ^ *(v756 + (v769 >> 24)) ^ *(v757 + (v769 >> 24)) ^ *(v758 + (v769 >> 24)) ^ *(v742 + 12)) << 24) | (v735 << 8);
  v2[83] = (((v742 - ((2 * v742) & 0x4E096200) - 1492864609) ^ 0xAC315558) & (v766 ^ ~v761 | 0xFFFFFF00) | (v766 ^ v761) & 0x38) ^ 0x1D618760;
  LOBYTE(v742) = v3[67];
  LOBYTE(v764) = v742 & 0xC0 | 0xF;
  LOBYTE(v750) = v764 ^ v742 & 0x1E;
  LOBYTE(v742) = v742 ^ (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * v764) ^ v750)) ^ v750)) ^ v750)) ^ v750)) ^ v750));
  LOBYTE(v750) = v3[66];
  LOBYTE(v766) = (v750 & 0xC0 | 0x25) ^ v750 & 0xCA;
  LOBYTE(v750) = v750 ^ (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * v766) ^ v766)) ^ v766)) ^ v766)) ^ v766)) ^ v766)) ^ v766));
  LOBYTE(v764) = v3[65];
  LOBYTE(v763) = v764 & 0xBA ^ 0xFD;
  LODWORD(v766) = *STACK[0xEC0];
  LODWORD(v768) = (v766 & 0xC0 | 0x2D) ^ v766 & 0xFFFFFFDA;
  LODWORD(v764) = (((v764 ^ (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * (v763 ^ v764 & 0x3A)) ^ v763)) ^ v763)) ^ v763)) ^ v763)) ^ v763))) ^ 0xBA) << 16) | ((v766 ^ (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * v768) ^ v768)) ^ v768)) ^ v768)) ^ v768)) ^ v768)) ^ v768)) ^ 0x1A) << 24) | ((v750 ^ 0xA) << 8);
  v2[84] = v742 & 0x3F ^ 0xAEF90B0B ^ ((v764 - ((2 * v764) & 0x603FC800) - 1340087092) ^ 0x5EBD820C) & (v742 ^ 0xFFFFFF21);
  LOBYTE(v769) = v3[71];
  LOBYTE(v764) = (v769 & 0xC0 | 0x18) ^ v769 & 0x30;
  LOBYTE(v750) = v769 ^ (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * v764) ^ v764)) ^ v764)) ^ v764)) ^ v764));
  LOBYTE(v764) = v3[70];
  LOBYTE(v735) = v764 & 0xEC ^ 0x96;
  LOBYTE(v766) = v3[69];
  LOBYTE(v768) = v766 & 0xDC ^ 0x8E;
  LODWORD(v735) = ((v3[68] ^ (2 * v3[68]) & 0x80 ^ 0xC0) << 24) | (((v766 ^ (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * ((v766 ^ 0x40) & (2 * v768) ^ v768)) ^ v768)) ^ v768)) ^ v768)) ^ v768))) ^ 0xDC) << 16) | (((v764 ^ (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * v735) ^ v735)) ^ v735)) ^ v735)) ^ v735)) ^ v735))) ^ 0xEC) << 8);
  v2[85] = ((v735 - ((2 * v735) & 0xF4C97800) - 94061378) ^ 0x7B18A758) & (v750 ^ 0xFFFFFF0F) ^ (v750 & 0x19 | 0x55CBE880);
  LOBYTE(v769) = v3[75];
  LOBYTE(v764) = v769 & 0x50 ^ 0x48;
  LOBYTE(v769) = v769 ^ (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * v764) ^ v764)) ^ v764)) ^ v764)) ^ v764));
  LOBYTE(v764) = v3[74];
  LOBYTE(v742) = v764 & 0xD4 | 0xA;
  LOBYTE(v742) = v764 ^ (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * v742) ^ v742)) ^ v742)) ^ v742)) ^ v742)) ^ v742)) ^ 0xD4;
  LOBYTE(v764) = v3[73];
  LOBYTE(v763) = v764 & 0xB6 ^ 0xFB;
  LODWORD(v742) = ((((2 * v3[72]) & 0x80 ^ v3[72]) << 24) | (((v764 ^ (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * ((v764 ^ 0x40) & (2 * (v763 ^ v764 & 0x36)) ^ v763)) ^ v763)) ^ v763)) ^ v763)) ^ v763))) ^ 0xB6) << 16) | (v742 << 8)) ^ 0xC0000000;
  v2[86] = v769 & 0x79 ^ 0xFE571BFD ^ ((v742 - ((2 * v742) & 0xAD7E9E00) + 1455378335) ^ 0x7F62C919) & (v769 ^ 0xFFFFFFAF);
  LOBYTE(v742) = v3[79];
  LOBYTE(v750) = (v742 & 0xC0 | 0x3C) ^ v742 & 0xF8;
  LOBYTE(v742) = v742 ^ (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * ((v742 ^ 0x40) & (2 * v750) ^ v750)) ^ v750)) ^ v750)) ^ v750)) ^ v750));
  LOBYTE(v769) = v3[78];
  LOBYTE(v766) = v769 & 0x6A ^ 0x55;
  LOBYTE(v769) = v769 ^ (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * ((v769 ^ 0x40) & (2 * (v766 ^ v769 & 0xAA)) ^ v766)) ^ v766)) ^ v766)) ^ v766)) ^ v766)) ^ 0x6A;
  LOBYTE(v750) = v3[77];
  LODWORD(v3) = v3[76];
  LODWORD(v766) = v3 & 0xC0 | 0x17;
  LODWORD(v764) = v766 ^ v3 & 0x2E;
  LODWORD(v750) = (((v750 ^ (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & (2 * ((v750 ^ 0x40) & 0x4E ^ v750 & 0xE ^ 0xA7)) ^ v750 & 0xE ^ 0xA7)) ^ v750 & 0xE ^ 0xA7)) ^ v750 & 0xE ^ 0xA7))) ^ 0xE) << 16) | ((v3 ^ (2 * ((v3 ^ 0x40) & (2 * ((v3 ^ 0x40) & (2 * ((v3 ^ 0x40) & (2 * ((v3 ^ 0x40) & (2 * ((v3 ^ 0x40) & (2 * v766) ^ v764)) ^ v764)) ^ v764)) ^ v764)) ^ v764)) ^ 0xEEEEEEEE) << 24) | (v769 << 8);
  v2[87] = v742 & 1 ^ 0xB8D8048D ^ ((v750 - ((2 * v750) & 0x98CE3E00) + 1281826576) ^ 0xC2A661EE) & (v742 ^ 0xFFFFFFC7);
  LODWORD(STACK[0x9264]) = -371865839;
  return (*(STACK[0xF18] + 8 * v642))();
}

uint64_t sub_100686674@<X0>(int a1@<W8>)
{
  v7 = STACK[0xF18];
  STACK[0x5CD8] = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xB954]) = v6;
  STACK[0xB958] = v2;
  STACK[0xB960] = v1;
  LOBYTE(STACK[0xB96F]) = v3;
  STACK[0xB970] = v4;
  v8 = (*(v7 + 8 * (v5 + 16221)))(72);
  STACK[0x1D68] = v8;
  return (*(v7 + 8 * (((v8 == 0) * (((v5 - 33531) | 0x212) ^ 0xA11)) ^ (v5 - 3366))))();
}

uint64_t sub_1006866F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = 8 * a5;
  v9 = *(STACK[0xED0] + 4 * ((2899 * (((a5 ^ 0x6AD492E8) + LODWORD(STACK[0xD50])) ^ ((a5 ^ 0xD0D2C686) + 56375877) ^ ((a5 ^ 0xA9191EBE) + 2056774269)) + 1317891301) % 0x26C4));
  v10 = ((((8 * a5) ^ 0x85A94980) - 1567680296) ^ (((8 * a5) ^ 0xD4042B80) - 215844136) ^ (((8 * a5) ^ 0xC95734A9) - 294558209)) * v7 - 67525916;
  v11 = *(STACK[0xEC0] + 4 * ((707 * (((v9 ^ 0x1B723647) - 223689804) ^ ((v9 ^ 0x6CCB3BD3) - 2062299608) ^ ((v9 ^ 0x5A2B5443u) - 1275878984)) - 439788652) % 0x300));
  v12 = ((((8 * a5) ^ 0xFF4756AA) + 700301452) ^ (((8 * a5) ^ 0x4FCF5A7D) - 1724527523) ^ (((8 * a5) ^ 0x28725A7B) - 24589221)) * v7 - 1640906739;
  v13 = (((8 * a5) ^ 0x1ECB1E1C) - 546228465) ^ (((8 * a5) ^ 0x2A14E279) - 340866196) ^ (((8 * a5) ^ 0xAC25AACF) + 1839170526);
  v14 = (2899 * (((v11 ^ 0xC3C38B01) - 2136071186) ^ ((v11 ^ 0x34A96E1C) + 2009384689) ^ ((v11 ^ 0xE6376CF0) - 1520778211)) + 1224357466) % 0x26C4;
  v15 = v12 - ((((v12 >> 5) * v5) >> 32) >> 1) * v6;
  v16 = (((a5 ^ 0xF06FBA55) + 261113259) ^ ((a5 ^ 0x18D73A47) - 416758343) ^ ((a5 ^ 0xFBA7CACC) + 72889652)) + 1118703131;
  v17 = (v16 ^ 0xCB71BEB3) & (2 * (v16 & 0xD0713CC4)) ^ v16 & 0xD0713CC4;
  v18 = ((2 * (v16 ^ 0xEB13AFBB)) ^ 0x76C526FE) & (v16 ^ 0xEB13AFBB) ^ (2 * (v16 ^ 0xEB13AFBB)) & 0x3B62937E;
  v19 = (v18 ^ 0x2400230) & (4 * v17) ^ v17;
  v20 = ((4 * (v18 ^ 0x9229101)) ^ 0xED8A4DFC) & (v18 ^ 0x9229101) ^ (4 * (v18 ^ 0x9229101)) & 0x3B62937C;
  v21 = (v20 ^ 0x29020160) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x12609203)) ^ 0xB62937F0) & (v20 ^ 0x12609203) ^ (16 * (v20 ^ 0x12609203)) & 0x3B629370;
  v23 = v21 ^ 0x3B62937F ^ (v22 ^ 0x32201300) & (v21 << 8);
  v24 = ((((8 * a5) ^ 0x82F0E07A) - 2125771255) ^ (((8 * a5) ^ 0xAE5E734D) - 1377444544) ^ (((8 * a5) ^ 0xB454C59A) - 1209046039)) * v7 + 613587915;
  v25 = v24 - ((((v24 >> 5) * v5) >> 32) >> 1) * v6;
  v26 = (STACK[0xEB0] + (*(STACK[0xED0] + 4 * v14) ^ 0xC6A71E2));
  v27 = ((((8 * a5) ^ 0x9459CEE6) + 1747544271) ^ (((8 * a5) ^ 0x1AA33002) - 422341077) ^ (((8 * a5) ^ 0x1600A84C) - 361755035)) * v7 - 427994126;
  v28 = v27 - ((((v27 >> 5) * v5) >> 32) >> 1) * v6;
  v29 = (v23 << 16) & 0x3B620000 ^ v23 ^ ((v23 << 16) ^ 0x137F0000) & (((v22 ^ 0x942800F) << 8) & 0x3B620000 ^ 0x19600000 ^ (((v22 ^ 0x942800F) << 8) ^ 0x62930000) & (v22 ^ 0x942800F));
  v30 = ((((8 * a5) ^ 0xA8FEB9DA) + 1949080433) ^ (((8 * a5) ^ 0x30780141) - 324394004) ^ (((8 * a5) ^ 0x7CEE34) - 592524129)) * v7 + 148468309;
  v31 = v16 ^ (2 * v29);
  v32 = v30 - ((((v30 >> 5) * v5) >> 32) >> 1) * v6;
  v33 = (((v8 ^ 0x24C1D7A9) - 1071397367) ^ ((v8 ^ 0x9233C7F8) + 1993463386) ^ ((v8 ^ 0x2E0846FA) - 890611876)) * v7 - 447455944;
  LOBYTE(v30) = *v26;
  v34 = v33 - ((((v33 >> 5) * v5) >> 32) >> 1) * v6;
  v35 = 1864610357 * ((1864610357 * ((v26 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v26 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) >> 16));
  v36 = v13 * v7 - 565946246 - (((((v13 * v7 - 565946246) >> 5) * v5) >> 32) >> 1) * v6;
  v37 = (((v8 ^ 0xBA04F598) - 1169980613) ^ ((v8 ^ 0x28044687) + 675491878) ^ ((v8 ^ 0xAFAE5B1) + 180196116)) * v7 + 1281556934;
  v38 = v37 - ((((v37 >> 5) * v5) >> 32) >> 1) * v6;
  v39 = *(STACK[0xE30] + (v35 >> 24));
  v40 = -15 * BYTE3(v35);
  v41 = v35 ^ v30 ^ *(STACK[0xE60] + (v35 >> 24)) ^ *(STACK[0xE40] + (v35 >> 24));
  v42 = v41 ^ v39 ^ (-15 * BYTE3(v35));
  v43 = *(a4 + 8 * (v10 - ((((v10 >> 5) * v5) >> 32) >> 1) * v6)) ^ 0xF5BE711611C9187FLL;
  if ((v42 & 1) == 0)
  {
    v43 = 0xC467A9CC453BAECBLL;
  }

  v44 = *(a4 + 8 * v34) ^ 0x156CB2907AD34623;
  v45 = *(a4 + 8 * v28) ^ 0xFB4C2769F5E1C947;
  if (((v41 ^ (v39 ^ v40)) & 2) == 0)
  {
    v45 = 0xCA95FFB3A1137FF3;
  }

  if (((v41 ^ (v39 ^ v40)) & 4) == 0)
  {
    v44 = 0x24B56A4A2E21F097;
  }

  v46 = *(a4 + 8 * v36) ^ 0x695841D2C8604863;
  if (((v41 ^ (v39 ^ v40)) & 8) == 0)
  {
    v46 = 0x588199089C92FED7;
  }

  if (((v41 ^ (v39 ^ v40)) & 0x20) != 0)
  {
    v47 = *(a4 + 8 * v15) ^ 0x1D7B8503FB2C6F43;
  }

  else
  {
    v47 = 0x2CA25DD9AFDED9F7;
  }

  v48 = *(a4 + 8 * v25) ^ 0x1DA1492C2293C384;
  v49 = v41 ^ v40 ^ v39;
  if ((v42 & 0x10) == 0)
  {
    v48 = 0x2C7891F676617530;
  }

  v50 = ((((v49 ^ 0xC5) + 16) ^ ((v49 ^ 0x92) + 89) ^ ((v49 ^ 0x57) - 98)) + 53);
  v51 = *(a4 + 8 * v32) ^ 0x3240DDD71E079118;
  if ((v42 & 0x40) == 0)
  {
    v51 = 0x399050D4AF527ACLL;
  }

  v52 = v50 < 0;
  v53 = STACK[0xE90] ^ v43 ^ v45 ^ v47 ^ v48 ^ v44 ^ v51 ^ v46;
  v54 = *(a4 + 8 * v38) ^ 0x57F4AC52A48FC27;
  if (!v52)
  {
    v54 = 0x34A6921F7EBA4A93;
  }

  STACK[0xE90] = v53 ^ 0x4523FE00BB6B1E80 ^ v54;
  return (*(STACK[0xF18] + 8 * ((203 * ((((v31 ^ 0x6EEDA7A0) + 41748668) ^ ((v31 ^ 0x70BC93DF) + 472661189) ^ ((v31 ^ 0x9E212E45) - 223248033)) + 320817886 > 0x2F)) ^ LODWORD(STACK[0xE80]))))();
}

uint64_t sub_100687554()
{
  v1 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x6DA0B6E8));
  STACK[0x1F30] = (v1 & 0x7FFFFFFFFFFFFFFFLL ^ 0x2C75849961C9304ELL ^ v1 & 0x3B7FA3A92CE71F68 ^ 0x930A23200C260F20) - (v1 & 0x3B7FA3A92CE71F68 ^ 0x930A23200C260F20);
  return (*(STACK[0xF18] + 8 * ((13 * (*(STACK[0x78B0] + 360) != 0)) ^ v0 & 0x72AFDFF3u)))();
}

uint64_t sub_100687604()
{
  LODWORD(STACK[0x4470]) = STACK[0x3434];
  STACK[0x9550] = *(v1 + 1552);
  STACK[0x5C50] = 0x3AE1413A0D5C96D2;
  LODWORD(STACK[0x1374]) = 10026854;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006876CC()
{
  STACK[0x10EE0] = *(v0 + 336);
  LODWORD(STACK[0x10ED8]) = v1 + 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192) + 25259;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8111)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10068773C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31683;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 29119) ^ v1)))();
}

uint64_t sub_100687790()
{
  v2 = (((v0[16] ^ 0x4259EC43) - 1113189443) ^ ((v0[16] ^ 0xC95DC60D) + 916601331) ^ (((((v1 - 13647) | 0x29) + (v1 ^ 0x62D1A245)) ^ v0[16]) - 1657924959)) + (((*v0 ^ 0xB30C160) - 187744608) ^ ((*v0 ^ 0xF455198) - 256201112) ^ ((*v0 ^ 0xEDA057E9) + 308258839)) + (((v0[20] ^ 0xBECAC76D) + 1094006931) ^ ((v0[20] ^ 0xD19DDA06) + 778184186) ^ ((v0[20] ^ 0x8682DA7A) + 2038244742));
  v3 = (((*(v0 + 64) ^ 0x43) - 67) ^ ((*(v0 + 64) ^ 0xD) - 13) ^ (((((v1 - 79) | 0x29) + (v1 ^ 0x45)) ^ *(v0 + 64)) - 95)) + (((*v0 ^ 0x60) - 96) ^ ((*v0 ^ 0x98) + 104) ^ ((*v0 ^ 0xE9) + 23)) + (((*(v0 + 80) ^ 0x6D) - 109) ^ ((*(v0 + 80) ^ 6) - 6) ^ ((*(v0 + 80) ^ 0x7A) - 122)) - 25;
  v4 = ((((v3 ^ 0xFD) + 3) ^ (9 - v2)) ^ ((v3 ^ 2) + 14)) & 0xF;
  v5 = v2 - (((v4 ^ 0x39222078) - 404031519) ^ ((v4 ^ 0xB41C835C) + 1792300229) ^ ((v4 ^ 0x8D3EA324) + 1408660669)) + 894229350;
  v6 = (v5 ^ 0x66F859AD) & (2 * (v5 & 0x66FD518E)) ^ v5 & 0x66FD518E;
  v7 = ((2 * (v5 ^ 0x66EA79BD)) ^ 0x2E5066) & (v5 ^ 0x66EA79BD) ^ (2 * (v5 ^ 0x66EA79BD)) & 0x172832;
  v8 = v7 ^ 0x112811;
  v9 = (v7 ^ 0x60020) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x5CA0CC) & v8 ^ (4 * v8) & 0x172830;
  v11 = (v10 ^ 0x142000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x30833)) ^ 0x1728330) & (v10 ^ 0x30833) ^ (16 * (v10 ^ 0x30833)) & 0x172830;
  v13 = v11 ^ 0x172833 ^ (v12 ^ 0x120000) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x170000 ^ v13 ^ ((v13 << 16) ^ 0x28330000) & (((v12 ^ 0x52803) << 8) & 0x170000 ^ 0x170000 ^ (((v12 ^ 0x52803) << 8) ^ 0x17280000) & (v12 ^ 0x52803))));
  LODWORD(STACK[0x91AC]) = v14 ^ 0x8F20C6F9;
  v15 = STACK[0xF18];
  v16 = (*(STACK[0xF18] + 8 * (v1 + 2615)))(v14 ^ 0x66F501E8u);
  STACK[0x8208] = v16;
  STACK[0x14E8] = v16;
  return (*(v15 + 8 * ((30 * (v16 == 0)) ^ v1)))();
}

uint64_t sub_100687ADC@<X0>(int a1@<W8>)
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x8EA4];
  LODWORD(STACK[0x35EC]) = 1693393249;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100687BA0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34050;
  LODWORD(STACK[0xA5D4]) = (((STACK[0xF10] + 429011044) & 0xE66DFCEB) - 47245) & LODWORD(STACK[0x98D4]) ^ 0x12C7E467;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1E0F ^ (10313 * ((v0 - 1581562474) < 0x7FC0E67D)))))();
}

uint64_t sub_100687CC4()
{
  v0 = STACK[0xF10] - 33866;
  LODWORD(STACK[0x2E84]) = -371865855;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((57 * (v0 ^ 0x696) - 1749) ^ v0)))();
}

uint64_t sub_100687E4C()
{
  *(STACK[0x7980] + 232) = v1;
  v3 = STACK[0x9814];
  if (!v1)
  {
    v3 = 371891397;
  }

  LODWORD(STACK[0xB800]) = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == -371865839) * ((v2 - 31519) ^ 0x3C81)) ^ v0)))();
}

uint64_t sub_100688054@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x381C]) = v1;
  if (a1 == (((v2 ^ 0x3CB) - 12311) ^ (v2 - 11484)))
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891374;
  }

  LODWORD(STACK[0xB134]) = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 36400)))(v1);
  STACK[0x6E50] = v5;
  return (*(v4 + 8 * ((255 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1006881E8()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 23227)))(v0);
  STACK[0x6700] = v4;
  if (v4)
  {
    v5 = v1;
  }

  else
  {
    v5 = 371891397;
  }

  return (*(v3 + 8 * (((v5 == (v2 ^ 0xE9D5A8CC)) * ((v2 + 7006) ^ 0x494F)) ^ v2)))();
}

uint64_t sub_100688470@<X0>(int a1@<W8>)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v1);
  return (*(v4 + 8 * (((v6 == v2) * v3) ^ a1)))();
}

uint64_t sub_100688510()
{
  v1 = *STACK[0xE50];
  v2 = *STACK[0xE58] >> 2;
  v3 = *(v1 + 4 * ((0x523D0019 % v2) & ((v0 - 544) ^ 0x3FFFE627)));
  LOWORD(v2) = *(v1 + 4 * ((v2 - 1) & v3));
  LOWORD(v1) = ~(v3 >> (v0 ^ 0xEB));
  v4 = STACK[0x8B0];
  v5 = *(STACK[0x8B0] - 527405895);
  LOWORD(v2) = v1 & ~v2;
  v6 = *(STACK[0x8B8] + 4 * v5);
  v2 = v2;
  v7 = v2 == 0;
  v8 = v2 + v2 * v6;
  if (v7)
  {
    v9 = *(STACK[0x8B8] + 4 * v5);
  }

  else
  {
    v9 = 0;
  }

  *(STACK[0x8B8] + 4 * v5) = (v9 + v8) * v6;
  *(v4 - 527405895) = (v5 + 1) % 6u;
  return (*(STACK[0xF18] + 8 * ((2047 * (*(STACK[0x6120] + 4) != -504417605)) ^ v0)))();
}

uint64_t sub_100688624@<X0>(int a1@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x70B8] = *(STACK[0xF18] + 8 * v5);
  STACK[0x9C30] = v2;
  LODWORD(STACK[0x9C3C]) = v3;
  v7 = STACK[0x7690];
  v8 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x17E0] = v8;
  STACK[0x6298] = (v8 + 320);
  STACK[0x7290] = (v8 + 336);
  STACK[0x9C40] = (v8 + 385);
  STACK[0x7690] = 77 * (v4 ^ 0x7F3u) + v7 - 50164;
  STACK[0x52F0] = v1;
  LODWORD(STACK[0x63E4]) = -371865839;
  LODWORD(STACK[0x880C]) = -371865839;
  v9 = *(v2 - 0x217E172EFA1E81CLL);
  v10 = (a1 ^ 0x843A63B6) & (2 * (a1 & 0xA6BB63B6)) ^ a1 & 0xA6BB63B6;
  LODWORD(v7) = ((2 * (a1 ^ 0x855E22F6)) ^ 0x47CA8280) & (a1 ^ 0x855E22F6) ^ (2 * (a1 ^ 0x855E22F6)) & 0x23E54140;
  v11 = v7 ^ 0x20254140;
  LODWORD(v7) = (v7 ^ 0x3C00000) & (4 * v10) ^ v10;
  v12 = ((4 * v11) ^ 0x8F950500) & v11 ^ (4 * v11) & 0x23E54140;
  LODWORD(v7) = (v12 ^ 0x3850100) & (16 * v7) ^ v7;
  v13 = ((16 * (v12 ^ 0x20604040)) ^ 0x3E541400) & (v12 ^ 0x20604040) ^ (16 * (v12 ^ 0x20604040)) & 0x23E54140;
  LODWORD(v7) = v7 ^ 0x23E54140 ^ (v13 ^ 0x22440000) & (v7 << 8);
  LODWORD(v7) = (v7 << 16) & 0x23E50000 ^ v7 ^ ((v7 << 16) ^ 0x41400000) & (((v13 ^ 0x1A14140) << 8) & 0x23E50000 ^ 0x2A40000 ^ (((v13 ^ 0x1A14140) << 8) ^ 0x65410000) & (v13 ^ 0x1A14140));
  v14 = 1012831759 * ((~(&STACK[0x10000] + 3800) & 0x6716C537 | (&STACK[0x10000] + 3800) & 0x98E93AC8) ^ 0x7785D3BD);
  LODWORD(STACK[0x10F08]) = v14 ^ a1 ^ (2 * v7) ^ 0xE42CEEC4;
  STACK[0x10F00] = v8;
  STACK[0x10EE0] = &STACK[0x63E4];
  LODWORD(STACK[0x10EE8]) = v4 - v14 + 11658;
  LOBYTE(STACK[0x10EF8]) = 69 - 15 * ((~(&STACK[0x10000] - 40) & 0x37 | (&STACK[0x10000] - 40) & 0xC8) ^ 0xBD);
  STACK[0x10EF0] = v9;
  LODWORD(STACK[0x10ED8]) = 471346613 - v14;
  (*(v6 + 8 * (v4 + 50518)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x9C4C]) = STACK[0x10EFC];
  STACK[0x98B0] = *(v6 + 8 * v4);
  return (*(v6 + 8 * (v4 ^ 0x1C17)))(v8 + 336);
}

uint64_t sub_1006888CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8)
{
  v13 = v8 < a5;
  v14 = (v12 + a6) | 0x100;
  if (v13 == v11 + a8 < (v14 + v9))
  {
    v13 = v11 + a8 < v8;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * v10) ^ v12)))((v14 + a7));
}

uint64_t sub_100688930()
{
  v0 = STACK[0xF10] - 23072;
  *STACK[0x7FB8] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100688964@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3578] = a1 + 16;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x59F8] = v3;
  STACK[0xED0] = (v3 + 264);
  STACK[0x2928] = (v3 + 264);
  STACK[0x7690] = (v1 + 26486) + v2 - 34971;
  LODWORD(STACK[0x10ED8]) = v1 - 353670337 * ((~(&STACK[0x10000] + 3800) & 0x4EC24FEE | (&STACK[0x10000] + 3800) & 0xB13DB010) ^ 0xFAE3B7D3) + 2950;
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE862)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100688A28@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -230487860;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100688AE0()
{
  v1 = STACK[0xAFF8];
  v2 = STACK[0xAFF0];
  v3 = 1603510583 * ((~&STACK[0x10ED8] & 0xDB3A93239ADBE03ALL | &STACK[0x10ED8] & 0x24C56CDC65241FC0) ^ 0xE4CB84CF0D00D291);
  LODWORD(STACK[0x10ED8]) = v0 + 25883 - v3 - 24250;
  STACK[0x10F08] = v2;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = v1;
  STACK[0x10EF0] = v3 + 0x787CF1E15A2A6CC2;
  STACK[0x10EF8] = v3 + 0x1D5BAA6B483C089DLL;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((v0 + 25883) ^ 0xBE2A)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((62386 * (LODWORD(STACK[0x10F00]) == ((v0 + 25883) ^ 0x651D) - 371869968)) ^ (v0 + 25883))))(v5);
}

uint64_t sub_100688BF4@<X0>(unint64_t a1@<X8>)
{
  v2 = v1 - 29750;
  STACK[0x10EE0] = &STACK[0xF28] ^ 0x55BFEDB102C41C77 ^ (v1 - 29444);
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE8]) = v1 + 906386353 * ((~(&STACK[0x10000] + 3800) & 0xDA2FC4DB | (&STACK[0x10000] + 3800) & 0x25D03B20) ^ 0xEB2E09FF) + 1884331540;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16532)))(&STACK[0x10ED8]);
  STACK[0x1188] = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100688CA8@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (((v1 + 1172801793) & 0xBA18CB7F) - 35638)) | v1)))();
}

uint64_t sub_100688CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v7 = STACK[0xF18];
  STACK[0x4D78] = *(STACK[0xF18] + 8 * (a7 ^ 0x6F18));
  return (*(v7 + 8 * ((a7 ^ 0x6F18) + (a7 ^ 0x16D8) + 2625)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_100688D50@<X0>(int a1@<W8>)
{
  v2 = v1 | ((v1 < 0x3222u) << 16);
  v3 = v2 + 1343107604;
  v4 = (((LODWORD(STACK[0x17CC]) ^ 0x645F8D87) - 1683983751) ^ ((LODWORD(STACK[0x17CC]) ^ 0x5653A5FB) - 1448322555) ^ (((a1 - 606505969 + ((a1 + 1706621309) & 0x9A46B7DC)) ^ LODWORD(STACK[0x17CC])) + 606474387)) + 1431115433;
  v5 = v4 > v2 + 1802968438;
  if (v3 < 0x500E6436 != v4 < 0x6B774F98)
  {
    v5 = v4 < 0x6B774F98;
  }

  return (*(STACK[0xF18] + 8 * (v5 ^ a1 ^ 1)))();
}

uint64_t sub_100688E50()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 28636)))();
  *(v1 + 16) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100688E90(uint64_t a1, uint64_t a2)
{
  v5.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v5.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v6.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v6.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *v4 = vaddq_s8(vsubq_s8(*(v2 + 4), vandq_s8(vaddq_s8(*(v2 + 4), *(v2 + 4)), v5)), v6);
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 0);
}

uint64_t sub_100688ECC()
{
  LODWORD(STACK[0x3444]) = -371865839;
  STACK[0x8E88] = 0;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v0 - 33741));
  return (*(v1 + 8 * (v0 - 29776)))();
}

uint64_t sub_100689104()
{
  v1 = (STACK[0xF10] - 30507) ^ 0x379A;
  v2 = STACK[0xF10] - 26545;
  LODWORD(STACK[0x3208]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + 20649) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1006891B8()
{
  v4 = STACK[0x7840];
  STACK[0x8FE8] = *(*(v1 + v2) + v3);
  LODWORD(STACK[0x44A8]) = v4;
  LODWORD(STACK[0x7FD8]) = 1751474532;
  LODWORD(STACK[0x704C]) = -2116087562;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100689338(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v8 = a1 > a6;
  if (v8 == v6 - 2019917381 < a4)
  {
    v8 = v6 - 2019917381 < a5;
  }

  return (*(STACK[0xF18] + 8 * (((v7 - 6847) * v8) ^ (v7 - 21383))))();
}

uint64_t sub_100689568()
{
  STACK[0x3028] = STACK[0x60D8] + 168;
  v1 = LODWORD(STACK[0x40D8]);
  v2 = STACK[0xF18];
  STACK[0x3C98] = *(STACK[0xF18] + 8 * (v0 - 38477));
  return (*(v2 + 8 * (v0 - 78876 + v0 - 1168)))(&STACK[0x4437], v1);
}

uint64_t sub_1006895E0(uint64_t a1)
{
  *(a1 + 4348) = v2;
  *(a1 + 4344) = v4;
  v5 = *(v3 + 4);
  v6 = v5 + 1452622578;
  v7 = v5 > 0xA96ABD0D;
  if (v2 - 649293556 < ((v1 - 1606296952) ^ 0xF6D707F0) == v7)
  {
    LOBYTE(v7) = v2 - 649293556 < v6;
  }

  return (*(STACK[0xF18] + 8 * ((249 * (((23 * (v1 ^ 0x11)) ^ v7) & 1)) ^ v1)))();
}

uint64_t sub_1006898EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 1148) = v5;
  v7 = *(*(v3 + 112) + 72 * v6 + 24);
  v8 = v5 + 1008314487;
  v9 = ((((v4 - 39953) ^ 0x28A4) + 707292940 + (v7 ^ 0xD5D75DBF)) ^ ((v7 ^ 0x54F775E9) - 1425503721) ^ ((v7 ^ 0x68F5EF47) - 1760948039)) + 2086101963;
  v10 = (v8 < 0x92819CBA) ^ (v9 < 0x92819CBA);
  v11 = v8 < v9;
  if (v10)
  {
    v11 = v9 < 0x92819CBA;
  }

  return (*(STACK[0xF18] + 8 * ((102 * !v11) ^ v4)))();
}

uint64_t sub_100689B6C(uint64_t a1)
{
  *a1 = 515;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = STACK[0x2DB0] + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ ((v1 ^ 0xB90Du) - 0x7193612304127857)) + 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *STACK[0x5E60] = a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100689C24@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((26203 * ((a1 ^ 0x2111C113 ^ (a1 - 2118)) > 0xD8E46BEA)) ^ (a1 + 5850))))();
}

uint64_t sub_100689D5C()
{
  v2 = STACK[0x1548];
  STACK[0xF78] = STACK[0x1548];
  v3 = 634647737 * (((((&STACK[0x10000] + 3800) | 0xCA13B7A) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xF35EC485)) ^ 0x9EC8EB79);
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = v3 - 1431125376;
  LODWORD(STACK[0x10EE8]) = v1 - v3 + 12326;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 43312)))(&STACK[0x10ED8]);
  v6 = (((v0 ^ 0x89AE6338) + 1985060040) ^ ((v0 ^ 0xDD153C14) + 585810924) ^ (((((v1 + 3785) | 0xB40) - 1116840861) ^ v0) + 1116825539)) + 525066068;
  v7 = (v6 ^ 0xE2A5E72C) & (2 * (v6 & 0xCA89E7AD)) ^ v6 & 0xCA89E7AD;
  v8 = ((2 * (v6 ^ 0x73B6623E)) ^ 0x727F0B26) & (v6 ^ 0x73B6623E) ^ (2 * (v6 ^ 0x73B6623E)) & 0xB93F8592;
  v9 = v8 ^ 0x89008491;
  v10 = (v8 ^ 0x302F0100) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xE4FE164C) & v9 ^ (4 * v9) & 0xB93F8590;
  v12 = (v11 ^ 0xA03E0400) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x19018193)) ^ 0x93F85930) & (v11 ^ 0x19018193) ^ (16 * (v11 ^ 0x19018193)) & 0xB93F8590;
  v14 = v12 ^ 0xB93F8593 ^ (v13 ^ 0x91380100) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x393F0000 ^ v14 ^ ((v14 << 16) ^ 0x5930000) & (((v13 ^ 0x28078483) << 8) & 0x393F0000 ^ 0x3A0000 ^ (((v13 ^ 0x28078483) << 8) ^ 0x3F850000) & (v13 ^ 0x28078483)))) ^ 0x53052B9A;
  LODWORD(STACK[0x5BAC]) = v15;
  STACK[0x5400] = v2;
  STACK[0x41A0] = STACK[0x30B0];
  LODWORD(STACK[0x20CC]) = v15;
  LODWORD(STACK[0x38AC]) = 581230097;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_10068A20C()
{
  STACK[0x10ED8] = *STACK[0x990];
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  v2 = (*(STACK[0xF18] + 8 * (v1 + 16271)))(&STACK[0x10ED8]);
  return v0(v2);
}

uint64_t sub_10068A280()
{
  v4 = ((v2 - 35972) | 0x8B3B) - 10901;
  v5 = (((v2 - 35972) | 0x8B3B) - 2346) | 0x92A;
  *(&STACK[0xC4D0] + v1 + 104) = *(v0 + 520);
  v6 = *(v3 + 8);
  v7 = 1012831759 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5B52DCC8) - 615326518) ^ 0xCBC1CA40);
  STACK[0x10EF0] = *v3;
  STACK[0x10EE8] = &STACK[0xC4D0] + v1;
  LODWORD(STACK[0x10EDC]) = v6 - v7;
  LODWORD(STACK[0x10ED8]) = v4 - v7 - 18155;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (((v2 - 35972) | 0x8B3B) + 16483)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * (((LODWORD(STACK[0x10EE0]) == -371865839) * (v5 ^ 0x5F6C)) ^ v4)))(v9);
}

uint64_t sub_10068A378()
{
  v2 = (((LODWORD(STACK[0x5AF0]) ^ 0x974CDFD) - 158649853) ^ ((LODWORD(STACK[0x5AF0]) ^ 0x84B200AA) + 2068709206) ^ ((LODWORD(STACK[0x5AF0]) ^ 0x64130A46) + ((v0 - 37046) ^ 0x9BECFFD0))) + 905062410;
  v3 = v2 < 0x4C1C60F9;
  v4 = v1 + 1276928249 < v2;
  if (v1 > 0xB3E39F06 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((2 * v4) | (8 * v4) | v0)))();
}

uint64_t sub_10068A5DC()
{
  STACK[0x6C48] = v0;
  v3 = *(v2 + 160);
  STACK[0x8B88] = v2 + 160;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v1 - 30495) ^ 0x18B4) + 13932)) ^ v1)))();
}

uint64_t sub_10068A6B8()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 33336) ^ 0xE9D5CE12;
  v2 = STACK[0xF10] - 30557;
  v3 = STACK[0xB1A8];
  v4 = 1603510583 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x454C9F916F6E1EA0) + 0x454C9F916F6E1EA3) ^ 0x7ABD887DF8B52C08);
  STACK[0x10F08] = STACK[0xB1B0];
  LODWORD(STACK[0x10ED8]) = v0 - v4 - 29881;
  STACK[0x10EF8] = v4 + 0x1D5BAA6B483C089DLL;
  STACK[0x10EF0] = v4 + 0x787CF1E15A2A6CC2;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 16347)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((40266 * (LODWORD(STACK[0x10F00]) == v1 + 743757184)) ^ v2)))(v6);
}

uint64_t sub_10068A818()
{
  v1 = STACK[0xF18];
  STACK[0x8228] = *(STACK[0xF18] + 8 * (v0 - 32209));
  return (*(v1 + 8 * ((v0 - 32209) ^ 0x9288 ^ (v0 - 1981526080) & 0x761BAFCE)))();
}

uint64_t sub_10068A864()
{
  v1 = STACK[0x5188];
  STACK[0xED0] = STACK[0x5188];
  v2 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5A564DB8) - 631878214) ^ 0x3C705675);
  STACK[0x10F10] = *(v1 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EF0]) = v2 ^ 0xD60D0A57;
  LODWORD(STACK[0x10EF4]) = v2 ^ 0x7CD6B3C8;
  LODWORD(STACK[0x10F04]) = v2 + 2069619737;
  LODWORD(STACK[0x10ED8]) = v2 ^ 0x7D6D5D82;
  STACK[0x10EE0] = &STACK[0x93E0];
  STACK[0x10EE8] = ((v0 ^ 0x136Cu) - 0x4D367E14B3CEFBF0) ^ &STACK[0xF28];
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F08]) = v0 - v2 + 1777283590;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4DB8) + 19898) ^ 0x5675);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD777)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((32592 * (LODWORD(STACK[0x10F0C]) == ((2521 * (v0 ^ 0x1D90)) ^ 0xE9D5DA9A))) ^ v0)))(v4);
}

uint64_t sub_10068AA1C()
{
  v1 = STACK[0xE90];
  v2 = (((v0 ^ 0x4E4E38F3) - 1313749235) ^ ((v0 ^ 0xB494D887) + 1265313657) ^ (((((LODWORD(STACK[0xE90]) + 1394255149) & 0xEB8EFF75) - 86368019) ^ v0) + 86319054)) - 287063335;
  LODWORD(STACK[0x7F44]) = v2 ^ ((v2 ^ 0xA93590AC) - 1205228260) ^ ((v2 ^ 0x33210560) + 574437592) ^ ((v2 ^ 0xB1AA8CB) + 436639101) ^ ((v2 ^ 0x7FEDFF4F) + 1861337849) ^ 0x3BA59637;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xC1572799 ^ (33406 * (v1 > 0xB3D31D60)))))();
}

uint64_t sub_10068ABD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v12 = (v4 + v6) % a3;
  v13 = *(v11 + v12);
  v14 = v13 & 0xF1 ^ v5;
  v15 = v13 ^ 0x1E;
  v16 = *(v4 + a2 + v7) ^ v13 ^ (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (((2 * (v13 & 0x1F)) ^ v9) & v15 ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  *(v11 + v12) = (v16 ^ ((v16 ^ v8) - 9) ^ ((v16 ^ 0x78) + 25) ^ 0x9F) - 49;
  return (*(STACK[0xF18] + 8 * (v3 + (v4 + 1 != a1) * v10)))();
}

uint64_t sub_10068AD40()
{
  v6 = STACK[0xED0];
  v7 = *(v1 + v2);
  v8 = 40409587 * LODWORD(STACK[0x505C]) - 1378563772;
  v9 = ((*(v0 + v4) ^ 0x47115A49) - 1192319561) ^ ((*(v0 + v4) ^ 0x2A40D1B5) - 708891061) ^ ((*(v0 + v4) ^ 0x84844CED) + ((LODWORD(STACK[0xED0]) + 29028) ^ 0x7B7B3828));
  v10 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x7ED8C520) - 19348185) ^ 0x18FEDEE8);
  LODWORD(STACK[0x10EF0]) = v10 ^ 0xD60FFE4B;
  LODWORD(STACK[0x10EF4]) = v10 ^ 0x7CD6B3C8;
  STACK[0x10F10] = v7;
  LODWORD(STACK[0x10ED8]) = v8 ^ v10;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x3024];
  STACK[0x10EF8] = v3;
  LODWORD(STACK[0x10F04]) = v10 + 1697753898 + v9;
  LODWORD(STACK[0x10F08]) = v6 - v10 + 1777284546;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xC520) - 15065) ^ 0xDEE8);
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * v5))(&STACK[0x10ED8]);
  return (*(v11 + 8 * ((15731 * (LODWORD(STACK[0x10F0C]) == -371865839)) ^ v6)))(v12);
}

uint64_t sub_10068AFDC()
{
  v2 = STACK[0xF10] - 18369;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10068B0E4()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] ^ 0x9F2B;
  v3 = STACK[0xF10] - 4918;
  LODWORD(STACK[0x1C50]) = v0;
  return (*(STACK[0xF18] + 8 * (((v0 == v1 - 371901482) * (v2 + 47448)) ^ v3)))();
}

uint64_t sub_10068B190@<X0>(uint64_t a1@<X1>, int a2@<W7>, int a3@<W8>)
{
  v8 = *(v4 + (5 * a3 - 1538230552) % (*v4 ^ v3) + 4);
  v9 = ((v8 << (((a2 - 56) | 0x80) - 127)) & 0x1CE) + (v8 ^ 0x28F5D6E7);
  v10 = v9 - 687199975;
  v11 = v5 + 1169890893;
  v12 = ((*(v6 + v11) ^ 0x79CFB5ED) - 2043655661) ^ ((*(v6 + v11) ^ 0xECA5310F) + 324718321) ^ ((*(v6 + v11) ^ 0x956A84BD) + 1788181315);
  v13 = v12 + 1901892934;
  v14 = v12 + 95;
  v15 = (v13 ^ 0xCE0A4214) & (2 * (v13 & 0x8EA36B19)) ^ v13 & 0x8EA36B19;
  v16 = ((2 * (v13 ^ 0xC64E5634)) ^ 0x91DA7A5A) & (v13 ^ 0xC64E5634) ^ (2 * (v13 ^ 0xC64E5634)) & 0x48ED3D2C;
  v17 = v16 ^ 0x48250525;
  v18 = (v16 ^ 0x883808) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0x23B4F4B4) & v17 ^ (4 * v17) & 0x48ED3D2C;
  v20 = (v19 ^ 0xA43420) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x48490909)) ^ 0x8ED3D2D0) & (v19 ^ 0x48490909) ^ (16 * (v19 ^ 0x48490909)) & 0x48ED3D00;
  v22 = v20 ^ 0x48ED3D2D ^ (v21 ^ 0x8C11000) & (v20 << 8);
  v23 = (v9 - 687199975) % ((v12 + 1901892934) & 0xFFFFFFFE ^ (2 * ((v22 << 16) & 0x48ED0000 ^ v22 ^ ((v22 << 16) ^ 0x3D2D0000) & (((v21 ^ 0x402C2D2D) << 8) & 0x48ED0000 ^ (((v21 ^ 0x402C2D2D) << 8) ^ 0x6D3D0000) & (v21 ^ 0x402C2D2D) ^ 0xC00000))) ^ 0xF231143);
  v24 = (v23 ^ 0x7D5FF9FB) + ((2 * v23) & 0xFABFF3F6) - 28782291 * v12 + ((231 * v9 - 1740408586) * v10 + 1911004313 * v9 + 30187132 * v12 + ((v9 + 939582471) * v10 - 1626782446 * v9 - 472915237 * v12 + (405300569 * v12 + (((11 * v9 + 1030734867) * (v9 - 586297952) - 1109922253 * v9 - 239629838) * v10 + 1350755337 * v9 + 847204605) * v14 + 321763628) * v14 + 1560555915) * v14 - 2125280568) * v14 - 1750964073;
  v25 = v24 ^ ((v24 ^ 0x1EC64D68) + 1455779913) ^ ((v24 ^ 0xD93FFF28) - 1858289143) ^ ((v24 ^ 0x27FA9F40) + 1878631009) ^ ((v24 ^ 0x57FFEFDF) + 536662784) ^ 0x1AE6C57D;
  v26 = 0x523A758F941346 * (((v25 ^ 0x2E700E7535C0A395) - 0x2E700E7535C0A395) ^ ((v25 ^ 0x32D3BCB1CB117F6BLL) + 0x4D2C434E34EE8095) ^ ((v25 ^ 0x1CA3B2C453CBDB5CLL) + 0x635C4D3BAC3424A4)) + 0x4FB9DA94D176CE12;
  v27 = v26 ^ ((v26 ^ 0x1E193BD991DFA804) - 0x6406C4EB37C019C2) ^ ((v26 ^ 0x57314C2D01E1B6BCLL) - 0x2D2EB31FA7FE077ALL) ^ ((v26 ^ 0xDCC86077C1CC11A7) + 0x592860BA982C5F9FLL) ^ ((v26 ^ 0xEFFFE8B1F7EDBED9) + 0x6A1FE87CAE0DF0E1);
  v28 = ((v27 ^ 0x3AA63A127C7D1009) + 0x145B89B45CE1BD86) ^ ((v27 ^ 0xB6324506115D0D18) - 0x6730095FCE3E5F6BLL);
  LOBYTE(v27) = -127 * (__CFADD__(797 * (v28 ^ ((v27 ^ 0xF68B8026CB3FACD7) - 0x2789CC7F145CFEA4)), 0xBB77959939D0EA81) + (((v28 ^ ((v27 ^ 0xF68B8026CB3FACD7) - 0x2789CC7F145CFEA4)) * 0x31DuLL) >> 64) + 29 * ((v7 + __CFADD__(v27 ^ 0x3AA63A127C7D1009, 0x145B89B45CE1BD86)) ^ (v7 + __CFADD__(v27 ^ 0xB6324506115D0D18, 0x98CFF6A031C1A095)) ^ (v7 + __CFADD__(v27 ^ 0xF68B8026CB3FACD7, 0xD8763380EBA3015CLL))) - 55) + 4;
  LOBYTE(v28) = (v27 ^ 0x93) & (2 * (v27 ^ 0x93));
  LOBYTE(v17) = v28 & (4 * (((2 * v27) & 0x20 ^ 0x90) & v27)) ^ ((2 * v27) & 0x20 ^ 0x90) & v27;
  *(v6 + v11) = *(a1 + ((v27 ^ (2 * (v28 & (4 * v28) & (16 * v17) ^ v17))) ^ 0x90));
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_10068BC54()
{
  v4 = STACK[0xFC0];
  v5 = STACK[0x1440];
  *(v3 - 232) = v0 + 906386353 * (((v1 | 0x7FE7C74B) - (v1 & 0x7FE7C748)) ^ 0x4EE60A6F) + 37903;
  *(v3 - 240) = v5;
  *(v3 - 256) = v4;
  v6 = (*(v2 + 8 * (v0 + 49449)))(v3 - 256);
  v7 = *(v3 - 248);
  LODWORD(STACK[0x1400]) = v7;
  *v4 ^= (119 * (v0 ^ 0xE7)) ^ 0xB1;
  v4[1] ^= 0xB2u;
  v4[2] ^= 0xB9u;
  v4[3] ^= 0xD2u;
  v4[4] ^= (v0 ^ 0xE7) + 114;
  v4[5] ^= 0x11u;
  v4[6] ^= 0xB7u;
  v4[7] ^= 0x27u;
  v4[8] ^= 4u;
  v4[9] ^= 0x16u;
  v4[10] ^= 0x45u;
  v4[11] ^= 0x8Au;
  v4[12] ^= 0x2Eu;
  v4[13] ^= 0xC6u;
  v8 = v4[15] ^ 0xA8;
  v4[14] ^= 0x6Fu;
  v4[15] = v8;
  return (*(v2 + 8 * ((53042 * (v7 == -371865839)) ^ v0)))(v6);
}

void *sub_10068BE14@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = a1;
  *(v3 - 248) = v1 + 353670337 * ((((v3 - 256) | 0x915D72AD) - ((v3 - 256) | 0x6EA28D52) + 1856146770) ^ 0x257C8A90) - 1883557442;
  (*(v2 + 8 * (v1 - 1650459874)))(v3 - 256);
  return (*(v2 + 8 * ((v1 - 1650511898) ^ 0x209A)))(&STACK[0xF30], &STACK[0xB44]);
}

uint64_t sub_10068BFC4@<X0>(unsigned int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x9B4]) = a2;
  LODWORD(STACK[0x1874]) = v3;
  LODWORD(STACK[0x1A90]) = v5;
  LODWORD(STACK[0x1950]) = v2;
  LODWORD(STACK[0x175C]) = v4;
  return (*(STACK[0x7E8] + 8 * a1))();
}

uint64_t sub_10068C04C@<X0>(int a1@<W8>)
{
  v2 = a1 - 1781932492;
  v3 = (*(v1 + 8 * (a1 - 1781910249)))();
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_10068C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 4 * v9 - 0x1D39DDAC0;
  v15 = *(v11 + v14);
  v16 = *(v10 + 4 * ((v9 + 15) & 0x1F)) ^ *(v13 + v14);
  v17 = ((*(v10 + v14) - ((2 * *(v10 + v14)) & 0x2C02BA74) - 1778295494) ^ *(a8 + 4 * (v15 & 0x1F))) - 686988095 * ((((v8 - 10880) ^ 0x300D45E7 ^ v16) - 665483025) ^ ((v16 ^ 0x90F5E42F) + 2024631120) ^ ((v16 ^ 0x9B6EFD95) + 1932948214)) - 600950037;
  *(v10 + v14) = v17;
  *(v11 + v14) = v15 + 478674045 * v17;
  return (*(v12 + 8 * ((61435 * (v9 == 1961326280)) ^ v8)))();
}

uint64_t sub_10068C204()
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v2);
  return (*(v4 + 8 * (((v6 == v3) * v1) ^ v0)))();
}

uint64_t sub_10068C2D0@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7408];
  STACK[0x4278] = STACK[0x7408] + 480;
  if (*(v1 + 480))
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891413;
  }

  LODWORD(STACK[0xA44C]) = v2;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v3 + 8 * ((a1 + 2519) ^ a1)))();
}

uint64_t sub_10068C3C4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x93F0];
  v3 = 155453101 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x96879BE9) + ((&STACK[0x10000] + 3800) | 0x69786416))) ^ 0x70A18026);
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x9BE9) + ((&STACK[0x10000] + 3800) | 0x6416))) ^ 0x8026);
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F08]) = v1 - v3 + 1777279794;
  LODWORD(STACK[0x10F04]) = v3 + 2069619737;
  STACK[0x10F10] = v2;
  LODWORD(STACK[0x10EF4]) = v3 ^ 0x7CD6B3C8;
  LODWORD(STACK[0x10ED8]) = (((327 * (v1 ^ 0x2C0A)) ^ 0x26812C8) * a1 - 1378563772) ^ v3;
  STACK[0x10EE0] = &STACK[0x5A94];
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  LODWORD(STACK[0x10EF0]) = v3 ^ 0xE203FC55;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 40573)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_10068C4F4()
{
  v2 = STACK[0x6448] + 4;
  v3 = STACK[0x31B0];
  v4 = STACK[0x21E8] + 48;
  v5 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10ED8]) = (v1 + 27481) ^ v5;
  STACK[0x10EE0] = v2;
  STACK[0x10EF0] = v3;
  STACK[0x10EF8] = v0 + 229;
  LODWORD(STACK[0x10EE8]) = v5 ^ 0x69B2EE26;
  STACK[0x10F08] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0xFC0B)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_10068C720()
{
  v1 = STACK[0xF18];
  STACK[0x1528] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 29919 + v0 + 37962)))();
}

uint64_t sub_10068C870()
{
  v1 = STACK[0xF18];
  STACK[0x4580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xF419 ^ (v0 - 798969185) & 0x2F9FFC6F)))();
}

uint64_t sub_10068C8B8()
{
  v1 = STACK[0xF10] - 371901482;
  v2 = ((v0 - v1) | (v1 - v0)) >= 0;
  return (*(STACK[0xF18] + 8 * ((v2 | (16 * v2)) ^ (((STACK[0xF10] - 35270) ^ 0x162A8FA3) + v1))))();
}

uint64_t sub_10068C95C()
{
  v1 = v0 - 6917;
  v2 = v0 + 16238;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(STACK[0x6F90]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10068C9C4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 14731)))(v3);
}

uint64_t sub_10068C9F4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2327)))();
}

uint64_t sub_10068CAB8@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE4]) = (v1 ^ 0x955A) - 43479 - 193924789 * ((((&STACK[0x10ED8] | 0x1F2D1470) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0xE0D2EB8F)) ^ 0x5669D9E9);
  STACK[0x10ED8] = a1;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * ((v1 ^ 0x955A) + 470)))(&STACK[0x10ED8]);
  v3 = *(STACK[0x78B0] + 280);
  LODWORD(STACK[0x10EE4]) = (v1 ^ 0x955A) - 43479 - 193924789 * ((2 * (&STACK[0x10ED8] & 0x437DA478) - &STACK[0x10ED8] + 1015176069) ^ 0x8A3969E3);
  STACK[0x10ED8] = v3;
  v4 = (*(v2 + 8 * (v1 ^ 0x9770)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 ^ 0x955A)))(v4);
}

uint64_t sub_10068CBC4()
{
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5D83 ^ (v0 - 211095017) & 0xC957FF1)))();
}

uint64_t sub_10068CC70()
{
  v1 = STACK[0xF18];
  STACK[0x2FE0] = *(STACK[0xF18] + 8 * (v0 - 41875));
  return (*(v1 + 8 * ((v0 - 41875) ^ 0xFA5 ^ ((((v0 - 41875) ^ 0xB5FA7E9u) > 0xC7E6617D) * (((v0 - 41875) ^ 0xF16) + 2475)))))();
}

uint64_t sub_10068CEFC()
{
  STACK[0x1250] = 0;
  LODWORD(STACK[0x7048]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10068CF2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = LODWORD(STACK[0x2878]);
  v5 = STACK[0xF18];
  STACK[0x7418] = *(STACK[0xF18] + 8 * a4);
  return (*(v5 + 8 * (a4 - 11312 + (a4 ^ 0x401E))))(v4, 0, 0, &STACK[0x2BD8], STACK[0x5A8]);
}

uint64_t sub_10068D0B0@<X0>(int a1@<W8>)
{
  STACK[0x64C0] = STACK[0x1560];
  LODWORD(STACK[0x8634]) = STACK[0x5798];
  STACK[0x4810] = v1;
  v2 = STACK[0x67E8];
  STACK[0x6360] = STACK[0x67E8];
  LODWORD(STACK[0x4574]) = 1699451797;
  STACK[0x2A28] = 0;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (((a1 - 17180) | 0x823B) + ((a1 + 6547) ^ 0xFFFF10AE))) ^ a1)))();
}

uint64_t sub_10068D1A8()
{
  STACK[0x10EE0] = STACK[0x5C00];
  LODWORD(STACK[0x10ED8]) = v0 + 139493411 * (((&STACK[0x10ED8] | 0xB809C0D8) - (&STACK[0x10ED8] | 0x47F63F27) + 1207320359) ^ 0xB424219D) + 10477;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 51329)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = STACK[0x9618];
  LODWORD(STACK[0x10ED8]) = v0 - 906386353 * (((&STACK[0x10ED8] | 0x2E81F02) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xFD17E0F8)) ^ 0x33E9D226) + 13505;
  (*(v1 + 8 * (v0 + 51323)))(&STACK[0x10ED8]);
  v2 = STACK[0x33F8];
  LODWORD(STACK[0x10EE0]) = (v0 + 32296) ^ (297845113 * ((~&STACK[0x10ED8] & 0xCE8FF3E0 | &STACK[0x10ED8] & 0x31700C18) ^ 0xB9BCEF7E));
  STACK[0x10ED8] = v2;
  v3 = (*(v1 + 8 * (v0 + 51145)))(&STACK[0x10ED8]);
  *(v2 + 16) = -371865839;
  return (*(v1 + 8 * (((v0 + 1437980870) & 0xAA4AAF3F ^ 0x987D) + v0)))(v3);
}

uint64_t sub_10068D348()
{
  v2 = STACK[0x6E78];
  *(v2 + 280) = v1;
  *(v2 + 288) = 0x720CF1CE66AD3C6ALL;
  *(v2 + 272) = 0;
  return (*(STACK[0xF18] + 8 * ((1013 * (((v0 - 840336881) & 0x32169F3B) + (((*(STACK[0x8F20] - 0x217E172EFA1E814) ^ 0xACD5618A) + 1395302006) ^ ((*(STACK[0x8F20] - 0x217E172EFA1E814) ^ 0xDF5DEF3A) + 547492038) ^ ((*(STACK[0x8F20] - 0x217E172EFA1E814) ^ 0x9A5D49A1) + 1705162335)) - 372294700 < 0xFFF9FFFE)) ^ v0)))();
}

uint64_t sub_10068D584@<X0>(int a1@<W8>)
{
  v2 = a1 - 2333;
  v3 = a1 - 32552;
  LODWORD(STACK[0x7664]) = v1;
  v4 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * ((v2 ^ 0x8AA0) + v3)))();
}

uint64_t sub_10068D648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v5 = STACK[0xF10];
  LODWORD(STACK[0x9EF8]) = a5;
  v6 = *(STACK[0x3588] + 32) + 1436094442;
  v7 = (v6 ^ 0xA56E29D) & (2 * (v6 & 0xAA66F011)) ^ v6 & 0xAA66F011;
  v8 = ((2 * (v6 ^ 0x1E1FA29F)) ^ 0x68F2A51C) & (v6 ^ 0x1E1FA29F) ^ (2 * (v6 ^ 0x1E1FA29F)) & 0xB479528E;
  v9 = v8 ^ 0x94095282;
  v10 = (v8 ^ 0x2030000C) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xD1E54A38) & v9 ^ (4 * v9) & 0xB4795288;
  v12 = (v11 ^ 0x90614200) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x24181086)) ^ 0x479528E0) & (v11 ^ 0x24181086) ^ (16 * (v11 ^ 0x24181086)) & 0xB4795280;
  v14 = v12 ^ 0xB479528E ^ (v13 ^ 0x4110000) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x34790000 ^ v14 ^ ((v14 << 16) ^ 0x528E0000) & (((v13 ^ 0xB068520E) << 8) & 0x34790000 ^ 0x4290000 ^ (((v13 ^ 0xB068520E) << 8) ^ 0x79520000) & (v13 ^ 0xB068520E))));
  LODWORD(STACK[0x9F04]) = v15 ^ 0xAA9E14B1;
  return (*(STACK[0xF18] + 8 * (v5 - 28300)))(a1, a2, a3, a4, 1077842527 - 0x14 / (v15 ^ 0xE284550D) * (v15 ^ 0xE284550D));
}

uint64_t sub_10068D924()
{
  LODWORD(STACK[0xB7CC]) = LODWORD(STACK[0x7B24]) + LODWORD(STACK[0x8CBC]) + (((v0 ^ 0x3C58) + 1944426043) ^ (v0 - 30553));
  v1 = STACK[0x3910];
  v2 = STACK[0x4980];
  STACK[0xB7D0] = STACK[0x4980];
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((235 * v4) ^ v0)))();
}

uint64_t sub_10068D9A8(unint64_t a1)
{
  v7 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0x89EA6441) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x76159BB8)) ^ 0x1E3156EA);
  LODWORD(STACK[0x10F08]) = v4 - v7;
  LOBYTE(STACK[0x10EE8]) = LODWORD(STACK[0xED0]) - 55 * ((((&STACK[0x10000] - 40) | 0x41) - (&STACK[0x10000] - 40) + ((&STACK[0x10000] - 40) & 0xB8)) ^ 0xEA) - 57;
  LODWORD(STACK[0x10EDC]) = (((v6 ^ 0xF76C74A0) + 143887200) ^ ((v6 ^ 0x7CCB9A70) - 2093718128) ^ ((((v5 + 20626) | 0xE) ^ 0x9D8D8221) + (v6 ^ 0x627229C1))) - v7 + 1488188843;
  LODWORD(STACK[0x10ED8]) = v5 - v7 + 40496;
  STACK[0x10EE0] = a1;
  STACK[0x10F00] = v1;
  STACK[0x10EF8] = v3;
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10F10]) = -371865840 - v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v5 ^ 0xC8C7)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xA480]) = LODWORD(STACK[0x10F0C]) ^ 0xE9D5C711;
  STACK[0x9880] = *(v8 + 8 * v5);
  return (*(v8 + 8 * (v5 + 4667)))(v9);
}

uint64_t sub_10068DB3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(STACK[0xF18] + 8 * ((22492 * (v4 > 0x44AB7D06)) ^ (v4 - 469714425)));
  LODWORD(STACK[0xE70]) = a4;
  return v5();
}

uint64_t sub_10068DC14()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x7B68]) = (((LODWORD(STACK[0xA050]) ^ LODWORD(STACK[0x98D4]) ^ 0xDDF46703) + 1740277833) ^ ((LODWORD(STACK[0xA050]) ^ LODWORD(STACK[0x98D4]) ^ 0x3B857D86) - 2117365042) ^ (STACK[0xF10] + 1547659924 + (LODWORD(STACK[0xA050]) ^ LODWORD(STACK[0x98D4]) ^ 0xE6711A85))) - (((LODWORD(STACK[0xA058]) ^ 0xC199AF3C) + 1046892740) ^ ((LODWORD(STACK[0xA058]) ^ 0x58E20FAF) - 1491210159) ^ ((LODWORD(STACK[0xA058]) ^ 0x70AE6782) - 1890477954)) - 1020571206;
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_10068DD14()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393282;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10068DDF8@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0x6CE8A441) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x93175BB8)) ^ 0x8ACEBF8E));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *(v2 + 320) = 0;
  return (*(v3 + 8 * (v1 - 14732)))(v4);
}

uint64_t sub_10068DE88()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 102)))(v3);
}

uint64_t sub_10068E138(uint64_t a1, char a2, uint64_t a3, int a4, char a5)
{
  STACK[0xAC0] = v9;
  v11 = v5 ^ 0xE5A3;
  LODWORD(STACK[0xDC0]) = v11;
  v12 = 361 * (v11 ^ 0x7D94);
  v10[495] = -44;
  v13 = v10[797];
  LODWORD(STACK[0xE40]) = v12;
  v10[727] = v10[727] + 3 * (((v13 & v12 ^ 2) - 89) ^ ((v13 & v12 ^ 0xE7) + 68) ^ ((v13 & v12 ^ 0xE5) + 66)) - 47;
  v14 = v10[325];
  LOBYTE(v12) = v10[231];
  v15 = (v10[440] & v12) - ((2 * (v10[440] & v12)) & 0xE3) - 15;
  v16 = STACK[0xEA0];
  LOBYTE(v12) = *(STACK[0xEA0] + v10[51]) & ~v12;
  LOBYTE(v12) = (((v15 ^ 0x8B) & ~v12 | v12 & 0x85) ^ 0x7A) & v14;
  v17 = (v10[392] & 0xDA ^ 0xF) & ~v14 | v14 & 0xF;
  v10[467] -= v17 & 0x13 ^ (v12 ^ 0xCC) & (v17 ^ 0xF0) ^ 0xCF;
  v10[532] = 0;
  v18 = v10[30];
  if (v18 >= 0xCAu)
  {
    v18 += 54;
  }

  v19 = STACK[0xE60];
  LODWORD(STACK[0xE90]) = *(STACK[0xE60] + v18);
  v20 = v10[90];
  if (v20 >= 0xC4u)
  {
    v20 += 60;
  }

  v21 = STACK[0xEB0];
  v22 = *(STACK[0xEB0] + v20);
  v23 = ((((2 * (v10[217] | v22)) & 0x4C) - (v10[217] | v22) + 89) | 0xBF) & (((v10[217] & v22) + (~(2 * (v10[217] & v22)) | 0x3B) - 29) ^ 0x9E) ^ 0xD1;
  v24 = (((v23 ^ 0x6E3E) - 28222) ^ ((v23 ^ 0xEBF3) + 5133) ^ ((v23 ^ 0x8560) + 31392)) + 270;
  v10[454] = v10[454] + ((v24 > 0xBAu) << 6) + (((205 * v24 + 27219) & 0xFC00) >> 10) - 46;
  v25 = v10[30];
  if (v25 >= 0xCAu)
  {
    v25 += 54;
  }

  LODWORD(STACK[0xE00]) = *(v19 + v25);
  v26 = v10[168];
  if (v26 >= 0xC4u)
  {
    v26 += 60;
  }

  STACK[0xDF0] = *(v21 + v26);
  v10[396] ^= v10[84];
  v27 = (*(v16 + v10[52]) & 0x89 | v10[129] & 0x76) ^ (v10[58] >> 1);
  v28 = ((v27 ^ 0xFFFFFF88) + 10) ^ ((v27 ^ 0xFFFFFFF0) + 114) ^ ((v27 ^ 0x78) - 6);
  v29 = (v28 - 77);
  LODWORD(STACK[0xDA0]) = v29;
  LODWORD(STACK[0xD90]) = v29 < 0x35;
  v30 = v10[159];
  if (v30 >= 0xCAu)
  {
    v30 += 54;
  }

  v31 = ((2 * *(v19 + v30)) & 0x1EC) + (*(v19 + v30) ^ 0xFBFEAFF6);
  v32 = (v31 + 67194890) * (v31 + 1701862370) - 1634667480 * v31;
  LODWORD(STACK[0xD80]) = (v32 + 303958416) * (v31 + 970492592) - 903297702 * v32;
  v10[511] ^= *(v16 + v10[172]);
  v33 = v10[128];
  if (v33 >= 0xC4u)
  {
    v33 += 60;
  }

  v34 = (*(v21 + v33) ^ 0x6F) + 112 + ((2 * *(v21 + v33)) & 0xDE);
  v35 = (3 * v34 + 84) * (3 * v34 + 99) + 45 * v34;
  v10[3] = v10[484] & 0x7E ^ 0x2D ^ (v10[3] - ((2 * v10[3]) & 0x58) + 44);
  v10[904] ^= 0xCBu;
  v36 = v10[28] | v10[3];
  v37 = (v36 - (v7 & (2 * v36)) - 82);
  v38 = v10[869] - (((171 * (((v37 ^ 0xFF3A) + 198) ^ ((v37 ^ 0x3364) - 13156) ^ ((v37 ^ 0xCCF0) + 13072)) - 21446) & 0xFE00) >> 9);
  v35 -= 124;
  v39 = ((2 * (v35 ^ 0x39)) ^ 0xE0) & (v35 ^ 0x39) ^ (2 * (v35 ^ 0x39)) & 0x70;
  v40 = ((2 * v35) & 0x92 ^ 0x49) & v35 ^ 0x70 ^ (v39 ^ 0x60) & (4 * (((2 * v35) & 0x92 ^ 0x49) & v35));
  v10[453] -= v35 ^ (2 * (((4 * (v39 ^ 0x10)) & 0x70 ^ ((4 * (v39 ^ 0x10)) ^ 0xC0) & (v39 ^ 0x10) ^ 0x40) & (16 * v40) ^ v40)) ^ 0xA9;
  v41 = v10[50];
  if (v41 >= 0xC4u)
  {
    v41 += 60;
  }

  v10[402] = v10[402] + ((*(v16 + v10[83]) / 3u) ^ 0x81) + (((*(v21 + v41) ^ 0xC0) + 44) ^ ((*(v21 + v41) ^ 0xDA) + 50) ^ ((*(v21 + v41) ^ 0x3E) - 42)) - (((171 * *(v16 + v10[83])) >> 8) & 0xFC) - 81;
  v42 = v10[61];
  if (v42 >= 0xC4u)
  {
    v42 += 60;
  }

  v43 = *(v21 + v42);
  v10[869] = v38 + 28;
  v44 = (v10[170] << (((84 - v43) ^ (2 * ((84 - v43) & (2 * ((84 - v43) & 0x26 ^ 0xCD)) ^ (84 - v43) & 0x26 ^ 0xCD))) & 7 ^ 6)) ^ (v10[170] >> (v43 & 7));
  v45 = v28 + (((v44 ^ 0x2A) + 50) ^ ((v44 ^ 0x53) + 73) ^ ((v44 ^ 0x79) + 99));
  v46 = *(v16 + v10[107]);
  v47 = v10[741];
  v48 = (((v46 | v47) - ((2 * (v46 | v47)) & 0xDF) - 17) ^ 0xEF) & v10[208];
  v49 = ((v46 & v47) - ((2 * (v46 & v47)) & 0x1C) - 114) ^ 0xE0;
  v50 = v48 & 0x91 ^ v49 & 0xB7 ^ (v48 ^ 0x48) & v49;
  v51 = v10[239];
  LOBYTE(v44) = ((v10[461] / 5u - (((205 * v10[461]) >> 9) & 0x42) - 95) ^ 0xA1) & v51;
  v10[52] = (((v51 ^ 0x4F) & 0x27 ^ v50 & 0xB0 ^ (v50 ^ 0x49) & (v51 ^ 0x4F) ^ 0x47) & ~v44 | v44 & 0x98) ^ 0x67;
  LOBYTE(v44) = v10[805] + v10[670];
  LODWORD(STACK[0xCE0]) = *(v16 + v10[56]);
  LODWORD(STACK[0xD20]) = *(v16 + v10[164]);
  v10[805] = v44;
  v45 += 123;
  LODWORD(STACK[0xE30]) = v45;
  v52 = v45;
  if (v10[217] >= 0xCAu)
  {
    v53 = v10[217] + 54;
  }

  else
  {
    v53 = v10[217];
  }

  v54 = v10[443] - ((2 * v10[443]) & 0xCC) - 26;
  v55 = v10[170] - ((2 * v10[170]) & 0xFB) - 3;
  v56 = (v54 & 0xA2 ^ 0xB9 ^ (v55 & 0xE1 ^ 0x5D) & (v54 ^ 0xE4)) & (v55 & 0x1E ^ 0xE3);
  v58 = v10[152];
  if (v58 >= 0xCAu)
  {
    v58 += 54;
  }

  v59 = *(v19 + v58) - ((2 * *(v19 + v58)) & 0xC2) + 97;
  v57 = v10[284] - ((2 * v10[284]) & 0x94) - 54;
  v60 = (v59 & 0xE9 ^ 0xA7) & (v57 ^ 0xCA) ^ v57 & 0xD0;
  v61 = v60 ^ 0xE8 | v59 & ~v60 & 0x16;
  v62 = (v61 ^ 0x28) & (v55 & 4 ^ 0x77 ^ v56) ^ v60 & 0x68;
  v10[511] += (v62 ^ 0xBF) & (v61 & 0x4A ^ 0xAD ^ (v61 ^ 0xC7) & (v56 & 0xCA ^ 0x8A)) ^ v62 & 0xDA ^ 0x65;
  v10[671] -= 96;
  v10[675] = v10[330];
  v63 = v10[51];
  if (v63 >= 0xCAu)
  {
    v63 += 54;
  }

  v64 = *(v19 + v63);
  v10[481] ^= v10[62];
  v65 = (v64 | v10[561]) - (v7 & (2 * (v64 | v10[561]))) - 82;
  v10[760] -= ((~v65 | 0xAC) & ((2 * v10[178]) & 0xAC ^ 0x45) | v65 & 0x12) ^ 0x47;
  v66 = *(v16 + v10[49]) | v10[376];
  v67 = 3 * ((((v66 - ((2 * v66) & 0x56) + 43) ^ 0xE5) + 27) ^ (((v66 - ((2 * v66) & 0x56) + 43) ^ 0x17) - 23) ^ (((v66 - ((2 * v66) & 0x56) + 43) ^ 0xD9) + 39)) - 84;
  v68 = v67 & 0xD5 | 8;
  v69 = v68 ^ v67 & 0x30;
  v10[174] = (v10[174] - ((2 * v10[174]) & 0x3A) + 29) ^ v67 ^ (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * (v67 & (2 * v68) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0xF8;
  v10[719] += v10[697];
  v70 = v10[408] - *(v16 + v10[123]);
  LODWORD(STACK[0xDD0]) = *(v19 + v53);
  v10[408] = (v70 ^ 0x7E) + ((2 * v70) & 0xFC) + 118;
  v71 = v10[158];
  if (v71 >= 0xC4u)
  {
    v71 += 60;
  }

  v10[807] += v10[763];
  v72 = v10[127];
  if (v72 >= 0xCAu)
  {
    v72 += 54;
  }

  v73 = *(v19 + v72);
  v74 = v10[281];
  v75 = (((v74 | v73) - ((2 * (v74 | v73)) & 0x7A) + 61) ^ 0x3D) & v10[539];
  v76 = (v74 & v73) + (~(2 * (v74 & v73)) | 0xD) - 6;
  v10[889] += ((v75 ^ 0xE0 | v76 ^ 0xF9) ^ v76 & 0xE0) & v10[657];
  v77 = (v10[447] & 7 ^ 0xFC) & 0x8B ^ (v10[342] | 0xFC) ^ ((v10[447] | 7) & v10[342] ^ 0x74) & (v10[447] & 7 ^ 0xFC);
  v78 = *(v21 + v71);
  LODWORD(STACK[0xE20]) = v78;
  v79 = (85 - v78);
  STACK[0xD70] = v79;
  LODWORD(STACK[0xD30]) = *(v16 + v10[43]);
  LODWORD(STACK[0xDE0]) = *(v16 + v79);
  v10[742] = v77;
  v80 = v10[71] / 5u - (((205 * v10[71]) >> 9) & 0x4A) + 37;
  v81 = *(v16 + v10[123]) >> 1;
  v10[786] += (((((v80 ^ 0x69) & ~v81 | v81 & 0x33) ^ 0x4C) & v10[796] ^ 0x79) & ~((v80 ^ 0x25) & v81) | (v80 ^ 0x25) & v81 & 6) ^ 0x79;
  v82 = v10[4] - ((((((v10[467] & v10[788]) - ((2 * (v10[467] & v10[788])) & 0x2E) - 105) ^ 0x5A) & ~(v10[636] & ~v10[788]) & 0xFE | v10[636] & ~v10[788] & 0x32) >> 1) ^ 0x66u);
  STACK[0xCB0] = v82;
  v83 = 26215 * (((2 * v10[535]) & 0x152) + (v10[535] ^ 0xCEA9) + 12547);
  v10[876] = (v10[876] - ((2 * v10[876]) & 0xAA) + 85) ^ ((v83 >> 17) + (v83 < 0) - ((2 * ((v83 >> 17) + (v83 < 0))) & 0x44) - 94) ^ 0xF7;
  v84 = v10[58];
  if (v84 >= 0xCAu)
  {
    v84 += 54;
  }

  v85 = v10[90] ^ *(v19 + v84);
  v86 = ((v85 ^ 0xFFFFFF82) - 31) ^ ((v85 ^ 0x7A) + 25) ^ ((v85 ^ 0xFFFFFFF8) - 101);
  v87 = v10[252];
  v88 = (v10[164] & v87) - ((2 * (v10[164] & v87)) & 0x58);
  v89 = v10[34];
  if (v89 >= 0xCAu)
  {
    v89 += 54;
  }

  v90 = (*(v19 + v89) ^ 0x91) & (v87 ^ 0x24) ^ v87 & 0x91 ^ (*(v19 + v89) ^ 0x91) & 0xDB;
  v91 = v10[867] - (((((v90 ^ 0x6E) & ((v88 + 44) ^ 0xBB) ^ v90 & 0x68) & 0xFE) >> 1) ^ 0x4B);
  v92 = v10[64];
  if (v92 >= 0xC4u)
  {
    v92 += 60;
  }

  v93 = *(v21 + v92);
  v10[867] = v91;
  v10[565] ^= v93;
  v94 = -43 * v86;
  LODWORD(STACK[0xCF0]) = v94;
  LOBYTE(v94) = *(v16 + (v94 - 95)) & v10[720];
  v95 = v10[536] - ((2 * v10[536]) & 0x184) + 358243778;
  v96 = v10[139] - ((2 * v10[139]) & 0x94) - 11190;
  v97 = (v95 & 0x50003D3 ^ 0xA019F089 ^ (v96 & 0x7DE ^ 0x7B8) & (v95 ^ 0x255AFDC2)) & (v96 & 0x21 ^ 0xEFFFFFFF) ^ v96 & 0x20;
  LOBYTE(v94) = v94 - ((2 * v94) & 0x90) + 72;
  v98 = (v97 ^ 0x7F) & (v94 & 0xAD ^ 0xA5);
  v99 = v94 & 0x89;
  v100 = (v97 ^ 0xFFFFFF83) & (v94 ^ 0x48) ^ v94 & 0xC8;
  v101 = (v100 ^ 0xFFFFFFE7) & (v99 ^ 0xE3E05BA0 ^ v98) ^ v100 & 0x73;
  LOBYTE(v98) = 3 * *(v16 + v10[106]) + 92;
  LOBYTE(v100) = (v98 & 0xA4 | 0x42) ^ v98 & 0x8C;
  v10[576] += ((v98 ^ (2 * ((v98 ^ 4) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * (((2 * (v98 & (2 * v100) ^ v100)) ^ 8) & (v98 ^ 0x24) ^ v100)) ^ v100)) ^ v100)) ^ v100))) & 0xAC | v10[56] & ~v10[740] & 0x53 ^ v10[740] & 3) ^ 0x28;
  v102 = v10[433];
  v103 = v10[958] ^ 0x76 ^ ((((v10[13] & v102) - ((2 * (v10[13] & v102)) & 0x5A) - 83) ^ 0x24) & ~(v10[216] & ~v102) | v10[216] & ~v102 & 0x76);
  v10[513] = v10[697] + 92;
  v104 = v10[108];
  if (v104 >= 0xC4u)
  {
    v104 += 60;
  }

  v105 = v10[172];
  if (v105 >= 0xCAu)
  {
    v105 += 54;
  }

  v106 = *(v19 + v105);
  v107 = v10[727];
  v108 = (((v106 | v107) - 2 * ((v106 | v107) & 7) + 7) ^ 7) & v10[809];
  v109 = (v106 & v107) - ((2 * (v106 & v107)) & 0xE3) + 113;
  LODWORD(STACK[0xD60]) = *(v21 + v104);
  v10[492] = ((v108 ^ 0x7F) & (v109 ^ 0x8E) ^ (v109 | 0x7Fu)) / 3;
  v110 = v10[104];
  if (v110 >= 0xCAu)
  {
    v110 += 54;
  }

  v10[517] -= 2 * *(v19 + v110);
  v111 = v10[98];
  if (v111 >= 0xC4u)
  {
    v111 += 60;
  }

  v10[549] = *(v21 + v111);
  v112 = v10[41];
  if (v112 >= 0xCAu)
  {
    v112 += 54;
  }

  v113 = *(v16 + v82);
  v114 = *(v16 + v10[21]);
  LODWORD(STACK[0xD40]) = *(v16 + v10[174]);
  LODWORD(STACK[0xD50]) = *(v16 + v10[52]);
  v115 = v16;
  v10[595] ^= *(v19 + v112);
  v116 = v10[46];
  if (v116 >= 0xC4u)
  {
    v116 += 60;
  }

  v117 = v10[166];
  if (v117 >= 0xC4u)
  {
    v117 += 60;
  }

  v118 = *(v21 + v116);
  v119 = *(v21 + v117);
  v10[958] = v103;
  v120 = v119 & 0xFFFFFFBF | (((v118 >> 6) & 1) << 6);
  v121 = v10[163];
  if (v121 >= 0xCAu)
  {
    v121 += 54;
  }

  v122 = (~((205 * *(v19 + v121)) >> 9) | 0xFFFFFFFD) + *(v19 + v121) / 5u + 2;
  v123 = 46 - (((v122 ^ 0xC3) + 61) ^ ((v122 ^ 9) - 9) ^ ((v122 ^ 0xCB) + 53));
  v124 = v123 ^ (2 * (((2 * v123) | 1) & v123)) ^ 0xB3;
  v10[427] = (v10[427] + (~(2 * v10[427]) | 0xB) - 5) ^ ((v120 >> (v122 & 4)) >> (v122 & 3 ^ 1)) ^ 0xFA ^ (v120 << (v124 & 6 ^ 2) << (v124 & 1));
  v10[664] -= ((v10[412] & 0x16 ^ 0xC5) & (~v10[38] | 0x16) | v10[38] & 0x28) ^ 0xD3;
  v125 = v10[58];
  if (v125 >= 0xC4u)
  {
    v125 += 60;
  }

  v126 = v10[636] & *(v21 + v125);
  v10[794] = (v10[794] - ((2 * v10[794]) & 0x2C) + 22) ^ (((v126 - 2 * (v126 & 0xF) - 113) & 0xFE) >> 1) ^ 0x51;
  v127 = v10[151];
  if (v127 >= 0xCAu)
  {
    v127 += 54;
  }

  LODWORD(STACK[0xDB0]) = v101;
  if ((v101 ^ 0xE3E05BCC) >= 0xCA)
  {
    v128 = (v101 ^ 0xE3E05BCC) - 202;
  }

  else
  {
    v128 = v101 ^ 0xE3E05BCC;
  }

  v130 = v10[153];
  if (v130 >= 0xCAu)
  {
    v130 += 54;
  }

  v131 = (v52 - 7) ^ (1 - v52) ^ (((v52 - 7) ^ 1) + 5);
  v132 = (*(v19 + v130) - ((2 * *(v19 + v130)) & 0xA8) - 418540460) ^ 0xE70D9454;
  v133 = (((90 - v52) ^ 3) + 6) ^ (v52 + 7) ^ (((90 - v52) ^ 4) + 3);
  v134 = (v132 >> (v131 & 4) >> (v131 & 3 ^ 2)) ^ (v132 << (v133 & 1) << (v133 & 6));
  v135 = (((v10[222] & v10[378]) - ((2 * (v10[222] & v10[378])) & 0xFFF3) - 7) ^ 0xA1) & (v10[378] | 0x48) ^ v10[378] & 0xA7;
  v129 = v10[503] - ((2 * v10[503]) & 0x100);
  v136 = ((v129 - 920862848) & 0x6891 ^ 0x23A27E8F ^ (v135 & 0xA4 ^ 0x916E ^ (v135 | 0xFF00) & (v134 ^ 0xF95B)) & ((v129 - 920862848) ^ 0xC91CBF80)) & ((v135 ^ 0xFF) & (v134 ^ 0xCE) ^ v135 & 0xCE ^ 0xFFFFFF31) ^ ((v135 ^ 0xFF) & (v134 ^ 0xCE) ^ v135 & 0xCE) & 0xF0;
  STACK[0xE10] = v136;
  v10[885] = 76;
  v10[901] = 4;
  v137 = -111 * *(v115 + (v136 ^ 0x23A25640)) + 107;
  v138 = v10[188];
  v139 = (v10[55] & v138) - ((2 * (v10[55] & v138)) & 0xFFD8);
  v140 = v10[816] & ~v138;
  LODWORD(v136) = ((v139 + 108) ^ 0xFFFFFF88) & ~v140 & 0xFFFFFF9A | v140 & 0x1A;
  v141 = (v136 & 0xFFFFFF86 | 1) ^ (v113 & 0x65 ^ v7) & ~v136;
  LODWORD(STACK[0xE80]) = v141;
  v142 = ((v10[881] - ((2 * v10[881]) & 0xF8) + 252) ^ 0x80) & 0x81;
  LOBYTE(v136) = (v10[881] - ((2 * v10[881]) & 0xF8) - 4) ^ v8;
  v141 ^= 0x5Fu;
  LODWORD(STACK[0xCC0]) = v141;
  LODWORD(v136) = ((v136 & 0xFE | v141 & v142) ^ 0xF0A076D7) & (v141 & 0x7E ^ 0xF0E2FEBF) ^ v141 & 0xA;
  LODWORD(v136) = ((v136 ^ 0x6F05B0BD) - 896581044) ^ ((v136 ^ 0xE13C2A14) + 1152833763) ^ ((v136 ^ 0x7E99ECDC) - 619504085);
  LODWORD(STACK[0xD00]) = ((v136 - 1428849796) * (v136 - 1613412419) + 184562623 * v136 + 610866389) * (v136 - 1428849796) + 746045615 * v136;
  LODWORD(v136) = (((205 * LODWORD(STACK[0xCE0])) >> 10) ^ 0xFFFFFFED) + (((205 * LODWORD(STACK[0xCE0])) >> 9) & 0x5A) - 3 * LODWORD(STACK[0xE90]) + 72;
  v143 = v136 & 0xFFFFFFFB ^ 0x18;
  LODWORD(v136) = v136 ^ (2 * ((v136 ^ 0x4A) & (2 * ((v136 ^ 0x4A) & (2 * ((v136 ^ 0x4A) & (2 * ((v136 ^ 0x4A) & (2 * ((v136 ^ 0x4A) & (2 * ((v136 ^ 0x42) & (2 * v143) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143));
  v144 = ((v136 ^ 0xFFFFFFBE) - 57) ^ ((v136 ^ 0xFFFFFFFC) - 123) ^ ((v136 ^ 0xFFFFFFC5) - 66);
  LODWORD(STACK[0xBB0]) = v144;
  LODWORD(v136) = LODWORD(STACK[0xD20]) + 12;
  LOBYTE(v143) = v136 & 0xE0 ^ 0x9C;
  LOBYTE(v136) = v136 ^ (2 * ((v136 ^ 0x48) & (2 * ((v136 ^ 0x48) & (2 * ((v136 ^ 0x48) & (2 * ((v136 ^ 0x48) & (2 * v143) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ 0xB0;
  LOBYTE(v143) = v10[403];
  v10[184] = (v10[184] - ((2 * v10[184]) & 0xA4) - 46) ^ (v143 & 4 | 0xA9) ^ ((v136 & ~v143 | v143 & 0x50) ^ 0x2B) & (v143 & 0x4E | 0x20) ^ ((v136 & ~v143 | v143 & 0x50) ^ 0x2B) & 0xDF;
  LODWORD(v136) = ((v10[687] & 0x60 ^ 0xFFFFFFA3) + 7) ^ ((v10[687] & 0x60) - 54) ^ ((v10[687] & 0x60 ^ 0x2F) - 117);
  LODWORD(v136) = (v136 - 59) * (v136 - 95) + 36 * v136 - 122;
  v145 = v136 & 0x18 ^ 0xFFFFFFBD;
  v146 = v136 ^ (2 * ((v136 ^ 0x2E) & (2 * ((v136 ^ 0x2E) & (2 * ((v136 ^ 0x2E) & (2 * ((v136 ^ 0x2E) & (2 * ((v136 ^ 0x2E) & (2 * ((v136 ^ 0x2E) & 0x36 ^ v145)) ^ v145)) ^ v145)) ^ v145)) ^ v145)) ^ v145));
  v147 = ((v146 ^ 0xFFFFFFA9) + 28) ^ ((v146 ^ 0xFFFFFF87) + 54) ^ ((v146 ^ 0x63) - 46);
  v10[183] = v114;
  if (v10[19] >= 0xC4u)
  {
    v148 = v10[19] + 60;
  }

  else
  {
    v148 = v10[19];
  }

  LODWORD(STACK[0xCA0]) = v147 + 48;
  if ((((v146 ^ 0xA9) + 28) ^ ((v146 ^ 0x87) + 54) ^ ((v146 ^ 0x63) - 46)) >= 0xCAu)
  {
    v149 = v147 + 102;
  }

  else
  {
    v149 = v147 + 48;
  }

  v150 = v10[132];
  if (v150 >= 0xCAu)
  {
    v150 += 54;
  }

  v151 = v150;
  v152 = 3 * (((2 * *(v19 + v150)) & 0xEE) + (*(v19 + v150) ^ 0x77)) + 100;
  v153 = (v152 ^ 0x27) & (2 * (v152 & 0x37)) ^ v152 & 0x37;
  v154 = ((2 * (v152 ^ 0x4D)) ^ 0xF4) & (v152 ^ 0x4D) ^ (2 * (v152 ^ 0x4D)) & 0x7A;
  v155 = v152 ^ (2 * (((4 * (v154 ^ 0xA)) & 0x70 ^ 0x60 ^ ((4 * (v154 ^ 0xA)) ^ 0xE0) & (v154 ^ 0xA)) & (16 * ((v154 ^ 0x70) & (4 * v153) ^ v153)) ^ (v154 ^ 0x70) & (4 * v153) ^ v153)) ^ 0xF4;
  v156 = ((*(v19 + v128) / 3u) ^ 0x77) + (((171 * *(v19 + v128)) >> 8) & 0xEEEEEEEE) - 82;
  v157 = v156 & 0xFFFFFF9D ^ 0xFFFFFFE1;
  v158 = v156 ^ 0x5A;
  v159 = v156 ^ (2 * (v158 & (2 * (v158 & (2 * (v158 & (2 * (v158 & (2 * (v158 & (2 * (((2 * v156) & 0x36 ^ 0x46) & (v156 ^ 0x52) ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ v157));
  v160 = (v159 ^ 0x9C) & (v155 & 0x94 ^ 0xFE) ^ v159 & 0x15;
  v161 = (v160 ^ 0x410EB16A) & (v155 & 0x6B ^ 0x410EB118);
  v162 = v10[3];
  LODWORD(STACK[0xD20]) = v162 - 32;
  if ((v162 - 110) >= 0xC4u)
  {
    v163 = v162 + 28;
  }

  else
  {
    v163 = v162 - 32;
  }

  v164 = v10[184];
  if (v164 >= 0xC4u)
  {
    v164 += 60;
  }

  v165 = *(v19 + v127);
  v166 = STACK[0xEB0];
  v167 = *(STACK[0xEB0] + v164) & 0xAB ^ (v10[408] - ((2 * v10[408]) & 0xD0) - 24) ^ 0xBC;
  v168 = *(v19 + v128);
  v169 = *(STACK[0xEB0] + v148);
  v170 = *(v19 + (v149 - 48));
  v171 = v19;
  LODWORD(STACK[0xC60]) = *(STACK[0xEB0] + (v163 - 78));
  v10[408] = v167;
  v172 = v137 & 0x37 ^ 0x51;
  v173 = STACK[0xE30];
  v174 = STACK[0xE30] & 0xFFFFFFB5 ^ 0x6B;
  v175 = (2 * LODWORD(STACK[0xE30])) & 0x4E;
  v176 = LODWORD(STACK[0xE30]) ^ 0x46;
  v177 = v137 ^ (2 * ((v137 ^ 0x14) & (2 * ((v137 ^ 0x14) & (2 * ((v137 ^ 0x14) & (2 * ((v137 ^ 0x14) & (2 * (((2 * (((2 * v137) & 0x2A | 0x15) & v137)) ^ 0x22) & (v137 ^ 0x14) ^ v172)) ^ v172)) ^ v172)) ^ v172)) ^ v172));
  v178 = v173 ^ (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v175 ^ 0x52) & v176 ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ v174));
  v179 = STACK[0xE30] & 0x7B ^ 0x4A;
  v180 = (v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * ((v173 ^ 0x66) & (2 * (v175 & v176 ^ v179)) ^ v179)) ^ v179)) ^ v179)) ^ v179)) ^ v179;
  v181 = ((v10[620] | 0x4C) & v10[338] ^ 0xFFFFFFCD) & (~v10[620] | 0xFFFFFFB3);
  v182 = LODWORD(STACK[0xE30]) ^ (2 * v180) ^ 0x1C;
  v183 = (v178 & 0xFFFFFFD0 ^ 0xFFFFFFAF ^ (v177 ^ 0xFFFFFFE7) & (v178 ^ 0xFFFFFFB5)) & (v181 & 0xFFFFFF98 ^ v182 & 0xFFFFFFEA ^ (v181 ^ 0x27) & v182 ^ 0x77) ^ (v181 & 0xFFFFFF98 ^ v182 & 0xFFFFFFEA ^ (v181 ^ 0x27) & v182) & 0xFFFFFFC0;
  v184 = v144 + (((v183 ^ 0xFFFFFFF1) - 45) ^ ((v183 ^ 0xFFFFFFC9) - 21) ^ ((v183 ^ 0xFFFFFF87) - 91)) - 30;
  LODWORD(STACK[0xCD0]) = v184;
  v185 = v184;
  v186 = v184 < 0x7Fu;
  v187 = v10[107];
  if (v187 >= 0xC4u)
  {
    v187 += 60;
  }

  v188 = v160 & 0xA4;
  v189 = *(v166 + v187);
  v190 = *(v171 + v151);
  v191 = v161 ^ v188;
  v192 = (~v189 >> (v190 & 3)) >> (v190 & 4);
  v193 = (59 - v190) ^ (2 * ((59 - v190) & (2 * ((59 - v190) ^ 0x21)) ^ (59 - v190) ^ 0x21)) ^ 0x8B;
  v10[549] -= (~v189 << (v193 & 6 ^ 4) << (v193 & 1)) ^ v192;
  v194 = v10[70];
  if (v194 >= 0xC4u)
  {
    v194 += 60;
  }

  v195 = v166;
  v10[505] ^= *(v166 + v194);
  v196 = v10[183];
  if (v196 >= 0xCAu)
  {
    v196 += 54;
  }

  if (v10[152] >= 0xCAu)
  {
    v197 = v10[152] + 54;
  }

  else
  {
    v197 = v10[152];
  }

  v198 = v10[113];
  if (v198 >= 0xC4u)
  {
    v198 += 60;
  }

  v199 = *(v166 + v198) - 1210586941 + (~(2 * *(v166 + v198)) | 0xFFFFFE7B);
  v200 = (v199 ^ 0x4828153D) & (v191 ^ 0xDFA06C88) ^ v199 & 0x1502228;
  v201 = ((v200 ^ 0xF9D326BE) - 421452962) ^ ((v200 ^ 0x22E5BAE) + 488398414) ^ ((v200 ^ 0x640380C7) + 2066842917);
  LODWORD(STACK[0xBD0]) = ((v201 + 2134050763) * (v201 + 1624972672) + 509078091 * v201 + 399024718) * (v201 + 2134050763) + 1095185451 * v201;
  v202 = STACK[0xCB0];
  v10[4] = STACK[0xCB0];
  v203 = v202;
  if (v202 >= 0xCAu)
  {
    v203 = v202 + 54;
  }

  LODWORD(STACK[0xCE0]) = *(v171 + v203) * *(v171 + v203) * *(v171 + v203) - 38;
  v10[173] = v10[743] | 0x2B;
  v204 = v10[305];
  v205 = (v10[711] & v204) - (v7 & (2 * (v10[711] & v204)));
  v206 = (v10[222] ^ 0x56) & (v204 ^ 0xA8) ^ v204 & 0x56 ^ (v10[222] ^ 0x56) & 0x57;
  v207 = v206 & 0x65 ^ 0xDE ^ (v206 ^ 0xA9) & ((v205 + 46) ^ 0xB4);
  v208 = (72 - STACK[0xDF0]) ^ (2 * ((72 - STACK[0xDF0]) & (2 * ((72 - STACK[0xDF0]) & 0xE ^ 0x6B)) ^ (72 - STACK[0xDF0]) & 0xE ^ 0x6B));
  v209 = ((((LODWORD(STACK[0xE00]) >> (STACK[0xDF0] & 5) >> (STACK[0xDF0] & 2)) ^ 0x26 ^ (LODWORD(STACK[0xE00]) << (v208 & 3 ^ 2) << (~v208 & 4))) & ~v10[864] | v10[864] & 0x26) ^ 0xFFFFFFEA) & ~(v207 & v10[864]) | v207 & v10[864] & 0x33;
  v210 = 90 - LODWORD(STACK[0xE20]);
  v211 = v210 & 0x6B ^ 0x58;
  v212 = v210 ^ (2 * ((v210 ^ 0x7A) & (2 * ((v210 ^ 0x7A) & (2 * ((v210 ^ 0x7A) & (2 * ((v210 ^ 0x7A) & (2 * ((v210 ^ 0x7A) & (2 * ((v210 ^ 0xFFFFFFF3) & (2 * v210) & 0x76 ^ v211)) ^ v211)) ^ v211)) ^ v211)) ^ v211)) ^ v211));
  LODWORD(STACK[0xC40]) = v212;
  v213 = (v165 ^ 0x7CE73377) + ((2 * v165) & 0xEEEEEEEE) + (v168 ^ 0x67BEBBFD) + ((2 * v168) & 0xFFFFFFFB) - 1686245713;
  v214 = ((v213 ^ 0xA578D610) - 626722867) ^ v213 ^ ((v213 ^ 0xAB335686) - 722503845) ^ ((v213 ^ 0x51978142) + 776708255) ^ ((v213 ^ 0xDFFFDFF7) - 1608253908);
  v215 = v10[895] - ((2 * v10[895]) & 0x5A) - 83;
  v216 = v215 & 0xB2 ^ 0x45F93FEC;
  v217 = (v215 & 0xC0 ^ 0x41F93FF0) & v216 ^ v215 & 0x82;
  v218 = v10[528] - ((2 * v10[528]) & 0x68) + 1787927604;
  v219 = (v217 & 0x422 ^ 0x39A ^ (v214 ^ 0x5FE) & (v217 ^ 0x8D)) & (v218 ^ 0x6A919C34);
  v220 = (v214 ^ 0x1E) & (v217 ^ 0x41F93F72) ^ (v216 & 0x801330 | 0x4064009);
  v221 = (v218 & 0x8000465 ^ 0xE0A27242 ^ v219) & (v220 ^ 0xFB79ACC6) ^ v220 & 0x175D8999;
  v222 = (((v221 ^ 0xAF11B518) + 731167479) ^ ((v221 ^ 0x8C1CBB20) + 144291023) ^ ((v221 ^ 0xCFAB7947) + 1261336234)) - 992492051;
  v223 = (v222 ^ 0xC200C18C) & (2 * (v222 & 0xD304C1CD)) ^ v222 & 0xD304C1CD;
  v224 = ((2 * (v222 ^ 0x4601C206)) ^ 0x2A0A0796) & (v222 ^ 0x4601C206) ^ (2 * (v222 ^ 0x4601C206)) & 0x950503CA;
  LODWORD(STACK[0xC50]) = v222 ^ (2 * ((((4 * (v224 ^ 0x95050049)) ^ 0x54140F20) & (v224 ^ 0x95050049) ^ (4 * (v224 ^ 0x95050049)) & 0x150503C0) & (16 * (v224 & (4 * v223) ^ v223)) ^ v224 & (4 * v223) ^ v223));
  v225 = v169 + (((v209 ^ 0xFFFFFFA5) + 123) ^ ((v209 ^ 0xFFFFFF82) + 94) ^ ((v209 ^ 0xFFFFFFEB) + 53));
  v226 = v170 + LODWORD(STACK[0xCA0]);
  v227 = v226 & 0xFFFFFF92 ^ 0xFFFFFFE1;
  v228 = v226 ^ (2 * ((v226 ^ 0x50) & (2 * ((v226 ^ 0x50) & (2 * ((v226 ^ 0x50) & (2 * ((v226 ^ 0x50) & (2 * (v226 & (2 * (v227 ^ v226 & 2)) ^ v227)) ^ v227)) ^ v227)) ^ v227)) ^ v227));
  STACK[0xE00] = v228;
  LOBYTE(v226) = v10[15];
  v229 = (v10[95] << (((41 - v226) ^ (2 * (((41 - v226) ^ 2) & (2 * ((41 - v226) ^ 0x82)) ^ (41 - v226) ^ 0x82))) & 7 ^ 3)) ^ ((v10[95] >> (v226 & 2)) >> ((v226 ^ 1) & 5 ^ 1));
  v230 = (v185 | (v186 << 8)) - 127;
  v231 = v10[644];
  v232 = (*(v171 + v230 % 0xCA) & v231);
  v233 = v10[24] & ~v231;
  v234 = ((v232 - ((2 * v232) & 0xFFFFFFAE) + 87) ^ 0xFFFFFFA7) & ~v233 | v233 & 0xF;
  v235 = v10[56] + (((v234 ^ 0x29) + 12) ^ ((v234 ^ v6) + 84) ^ ((v234 ^ 0xFFFFFFA8) - 117)) - (((v229 ^ 3) - 115) ^ ((v229 ^ 0xFFFFFFA5) + 43) ^ ((v229 ^ 0xFFFFFFA6) + 42));
  v236 = STACK[0xEA0];
  v237 = *(STACK[0xEA0] + (v228 ^ 0x92));
  v10[745] += *(v195 + v230 % 0xC4);
  v238 = v10[238] - ((2 * v10[238]) & 0x1A2) - 912113711;
  STACK[0xE90] = v191;
  v239 = (v191 ^ 0x139CC29) & (STACK[0xE10] ^ 0x21225640) ^ STACK[0xE10] & 0x40377D76;
  v240 = (v238 ^ 0x365DC02E) & (v239 & 0xFAF1831E ^ 0x9B5A1052 ^ (((v191 ^ 0xE) & ~STACK[0xE10] & 0x3A | STACK[0xE10] & 0x2A) ^ 0x50E7CF1) & (v239 ^ 0xADCD2BBB)) ^ v238 & 0x80206CB3;
  v241 = v162 & 0xA ^ STACK[0xD20] & 0xFFFFFFB2 ^ 7;
  v242 = LODWORD(STACK[0xD20]) ^ 0x32;
  v243 = LODWORD(STACK[0xD20]) ^ (2 * (v242 & (2 * (v242 & (2 * (v242 & (2 * (v242 & (2 * (v242 & (2 * (((2 * (v162 & 0xA)) | 0xA) & v242 ^ v241)) ^ v241)) ^ v241)) ^ v241)) ^ v241)) ^ v241)) ^ (v240 ^ 0x6000B051) & (v238 & v6 | 0x6604F002) ^ v240 & 0x99FB0FAC;
  v244 = ((v243 ^ 0x77) - 105) ^ ((v243 ^ 0xFFFFFFDD) + 61) ^ ((v243 ^ 0x61) - 127);
  v10[685] = (*(v171 + v196) ^ 0xDA) & 0xBF ^ (v10[50] >> 1) & 0x25 ^ ((v10[50] >> 1) ^ 0x40) & (*(v171 + v196) ^ 0xDA) ^ 0xDA;
  v245 = *(v171 + v197) & v10[19];
  LOBYTE(v240) = v10[147] & ~*v236;
  v10[845] = ((((v245 - ((2 * v245) & 0xC3) - 31) ^ 0xE1) & *v236 ^ 0xB1) & ~v240 | v240 & 0x4E) ^ 0xB1;
  LODWORD(STACK[0xCB0]) = v235 - 67;
  v246 = v10[636] ^ (v235 - 67) & 0x11 ^ (((v235 - 67) | 0x17) & v10[208] ^ 0x66) & (~(v235 - 67) | 0xFFFFFFE8);
  v247 = v225 + (((v246 ^ 0x38) + 85) ^ ((v246 ^ 0x3D) + 82) ^ ((v246 ^ 0x63) + 16));
  LODWORD(STACK[0xD20]) = v244 - 43;
  if ((v244 - 43) >= 0xCAu)
  {
    v248 = 28;
  }

  else
  {
    v248 = -26;
  }

  v249 = v244 + v248;
  v250 = v10[73];
  if (v250 >= 0xCAu)
  {
    v250 += 54;
  }

  v251 = v10[6];
  if (v251 >= 0xC4u)
  {
    v251 += 60;
  }

  LODWORD(STACK[0xCA0]) = v247;
  LODWORD(STACK[0xDF0]) = v247 + 27;
  v252 = v247 + 81;
  if ((v247 - 31) < 0xCAu)
  {
    v252 = v247 + 27;
  }

  v253 = *(v171 + (v252 - 58));
  v254 = v10[711];
  v255 = (((v253 | v254) - ((2 * (v253 | v254)) & 0x40) - 96) ^ 0xA0) & v10[347];
  v256 = (v253 & v254) - 2 * (v253 & v254 & 3);
  v257 = (v256 - 125) & 0xAF ^ 0xD3 ^ (v255 ^ 0x50) & ((v256 - 125) ^ 0x7C);
  v258 = v212 ^ 0x6B;
  if (v258 >= 0xC4)
  {
    v258 -= 196;
  }

  v259 = v10[518];
  v260 = *(v195 + v258) & ~v259;
  v10[750] += ((v257 & v259 ^ 0x9B) & ~v260 | v260 & 0x64) ^ 0x9B;
  v261 = v10[132];
  if (v261 >= 0xC4u)
  {
    v261 += 60;
  }

  v262 = v195;
  v263 = v10[401] - *(v195 + v261);
  LODWORD(STACK[0xC70]) = *(v171 + (v249 - 17));
  LODWORD(STACK[0xC80]) = *(v171 + v250);
  v264 = v171;
  LODWORD(STACK[0xC90]) = *(v262 + v251);
  v10[401] = v263;
  v265 = v10[37];
  if (v265 >= 0xCAu)
  {
    v265 += 54;
  }

  v266 = 3 * *(v171 + v265) - 28;
  v267 = v266 & 0xC8 ^ 0xFE;
  v268 = v266 ^ (2 * ((v266 ^ 0x1C) & (2 * ((v266 ^ 0x1C) & (2 * ((v266 ^ 0x1C) & (2 * ((v266 ^ 0x1C) & (2 * ((v266 ^ 0x1C) & (2 * v267) ^ v267)) ^ v267)) ^ v267)) ^ v267)) ^ v267));
  v269 = v236[v10[62]];
  v270 = v236[v10[47]];
  v10[629] = (v10[629] - ((2 * v10[629]) & 0xB2) + 89) ^ (v269 & 4 | 0x59) ^ (v268 ^ 0x8C) & (v269 & 0x9F | 0x20);
  v271 = v236[v10[173]] / 3u - (((171 * v236[v10[173]]) >> 8) & 0x54) + 42;
  v10[672] += v271 & 0xE7 ^ 0x3A ^ (STACK[0xE80] & 0x62 ^ (v10[877] & (~LODWORD(STACK[0xE80]) | 0x66) ^ 0x1D) & (STACK[0xE80] & 0x66 ^ 0xF9) ^ 7) & (v271 ^ 0xD5);
  v272 = v236[LODWORD(STACK[0xC50]) ^ 0xCDLL];
  v273 = 2 * (v272 - (a4 & (2 * v272))) - 973532426;
  v274 = ((v273 ^ 0xF0008A9F) + 288269981) ^ ((v273 ^ 0x204123C) - 483770816) ^ ((v273 ^ 0x37FD8A55) - 690772393);
  v275 = ((2 * (v10[144] - ((2 * v10[144]) & 0x7777)) - 7306) ^ 0x18D8) & 0xFFFE;
  v276 = 52429 * (((v275 ^ 0xEFB75552) + 273197742) ^ ((v275 ^ 0x5EEBF86) - 99532678) ^ ((v275 ^ 0xEA59117A) + 363261574)) - 592956842;
  v10[60] = v10[60] + ((LOBYTE(STACK[0xDD0]) * LOBYTE(STACK[0xDD0])) ^ 0x33) + ((2 * LOBYTE(STACK[0xDD0]) * LOBYTE(STACK[0xDD0])) & 0x66) - 51;
  v10[538] ^= 0x37u;
  v277 = ((v274 - 618086134) * (v274 + 584365456) - 1202451590 * v274 + 562119979) * (v274 - 618086134) - 1753340007 * v274 + 1202456278;
  v278 = ((v277 ^ 0x8B62FD5) + 247) ^ v277 ^ ((v277 ^ v6) + 83) ^ ((v277 ^ 0x83) + 161) ^ ((v277 ^ 0xFB) + 217);
  v279 = LODWORD(STACK[0xCF0]) + (((v278 ^ 0x58) + 3) ^ ((v278 ^ 0xD) + 88) ^ ((v278 ^ 0xFFFFFF89) - 44));
  v280 = v10[8];
  if (v280 >= 0xCAu)
  {
    v280 += 54;
  }

  v10[468] -= *(v171 + v280);
  v281 = v10[72];
  if (v281 >= 0xCAu)
  {
    v281 += 54;
  }

  v282 = v10[60];
  if (v282 >= 0xC4u)
  {
    v282 += 60;
  }

  LODWORD(STACK[0xC50]) = *(v262 + v282);
  v10[488] = v10[184];
  v283 = v276 >> 18;
  v284 = v283 & 0x2C ^ 0x97 ^ v283 & 0x66;
  LOBYTE(v283) = (v10[718] - ((2 * v10[718]) & 0xE7) - 13) ^ 0xB9 ^ v283 ^ (2 * ((v283 ^ 0x2C) & (2 * ((v283 ^ 0x2C) & (2 * ((v283 ^ 0x2C) & (2 * ((v283 ^ 0x2C) & (2 * ((v283 ^ 0x2C) & (2 * ((v283 ^ 0x2C) & (2 * ((v283 ^ 0x2C) & (2 * v284) ^ v284)) ^ v284)) ^ v284)) ^ v284)) ^ v284)) ^ v284)) ^ v284));
  LODWORD(STACK[0xC20]) = v236[(v279 + 26)];
  STACK[0xC30] = v236[v10[185]];
  LODWORD(STACK[0xBC0]) = v236[v10[7]];
  v10[718] = v283;
  LOBYTE(v283) = v10[408] + v236[v10[21]];
  LODWORD(STACK[0xBE0]) = *(v171 + v281);
  v10[408] = v283;
  v285 = v10[76];
  if (v285 >= 0xC4u)
  {
    v285 += 60;
  }

  v286 = ~*(v262 + v285) + 2 * *(v262 + v285);
  v287 = (v286 + 1) * ((v10[376] ^ 0xFD) + 80 + ((2 * v10[376]) & 0xFB)) - 77 * v286;
  v288 = LODWORD(STACK[0xCC0]);
  v289 = 2863311531u * (((LODWORD(STACK[0xCC0]) ^ 0x898FAFD08FC2A00BLL) + 0x7670502F4B1E49AELL) ^ ((LODWORD(STACK[0xCC0]) ^ 0x5D37815FC59FD242) - 0x5D37815FFEBCC41BLL) ^ ((LODWORD(STACK[0xCC0]) ^ 0xD4B82E8F4A5D7289) + 0x2B47D1708E819B30)) + 0x43C2F67B690BB233;
  v290 = LODWORD(STACK[0xBB0]) + 82;
  v291 = v290 & 0xB4 ^ 7;
  LOBYTE(v290) = v290 ^ (2 * ((v290 ^ 0x2E) & (2 * ((v290 ^ 0x2E) & (2 * ((v290 ^ 0x2E) & (2 * ((v290 ^ 0x2E) & (2 * (((2 * (v291 ^ v290 & 0x1A)) ^ 0x14) & (v290 ^ 0x2E) ^ v291)) ^ v291)) ^ v291)) ^ v291)) ^ v291));
  v292 = v10[56];
  v10[162] = (v10[162] - ((2 * v10[162]) & 0x2A) - 107) ^ ((((0x8Bu >> ((62 - v292) & 1) >> ((62 - v292) & 6 ^ (2 * (62 - v292)) & 4 ^ 2)) ^ (-117 << (v292 & 1) << (v292 & 6))) & 0x2D ^ 0x59) & ((v10[43] / 5u) & 0x12 ^ 0x7F) | (v10[43] / 5u) & 2) ^ 0xCC;
  v10[22] -= LODWORD(STACK[0xDE0]) | 0x66;
  v293 = v10[116] - ((2 * v10[116]) & 0x126) + 1045239443;
  v294 = v10[62] & 0xF1;
  v295 = (v293 & 0x87 ^ 0x72 ^ (v293 ^ 0x91) & (v294 ^ 0x7C)) & (v290 ^ 0xF42000B4);
  v296 = (v293 ^ 0x226964) & (v294 ^ 0xA6A6DE6) ^ v293 & 0x805E2;
  STACK[0xDD0] = (v290 & 0xE ^ 0xECC6B33F ^ v295) & (v296 ^ 0xF58CD29F) ^ v296 & 0x2284CC4;
  v10[22] += 12;
  v297 = v10[543];
  v298 = ((v10[158] / 3u - (((171 * v10[158]) >> 8) & 0x26) + 19) ^ 0x5D) & ~v297 | v297 & 0x4E;
  v299 = (v298 ^ 0xFFFFFFF1) & (v297 & 0xB2 | 4) ^ v298 & 0xFFFFFFFB;
  v300 = ((v299 ^ 0xFFFFFF81) - 61) ^ ((v299 ^ 0xFFFFFFCC) - 112) ^ ((v299 ^ 3) + 65);
  v301 = (LODWORD(STACK[0xC60]) ^ 0x1FFF7EF3) + ((2 * LODWORD(STACK[0xC60])) & 0xFFFFFFE7) + (v237 ^ 0x55804101) - ((2 * v237) & 0x1FC) - 514225656;
  v302 = ((v301 ^ 0x3885D35E) - 1851562658) ^ v301 ^ ((v301 ^ 0xC1A0A156) + 1753618262) ^ ((v301 ^ 0xFB01441B) + 1378349593) ^ ((v301 ^ 0x54FD7FEF) - 35927571);
  v303 = v10[636] - ((2 * v10[636]) & 0xFFFB) + 2131667453;
  v304 = v10[411] - ((2 * v10[411]) & 0xFF3F) - 1158746465;
  v305 = (v303 & 0x36A ^ 0x347 ^ (v302 ^ 0x169) & (v303 ^ 0x202)) & (v304 ^ 0xBAEEEE9F);
  v306 = (v302 ^ 0x9D0) & (v303 ^ 0x7F0EA9FD) ^ v303 & 0x7400802C;
  v307 = (v304 & 0xA00022BA ^ 0x3B95190 ^ v305) & (v306 ^ 0x8BFF7FD3) ^ v306 & 0x54468CF5;
  v308 = 3 * v10[461] - 15;
  v309 = v308 & 0x43 ^ 0x2A;
  v310 = v308 ^ (2 * ((v308 ^ 0xE) & (2 * ((v308 ^ 0xE) & (2 * ((v308 ^ 0xE) & (2 * ((v308 ^ 0xE) & (2 * ((v308 ^ 0xE) & (2 * ((v308 ^ 0xE) & (2 * v308) & 0x1E ^ v309)) ^ v309)) ^ v309)) ^ v309)) ^ v309)) ^ v309)) ^ 0x43;
  LOBYTE(v308) = 65 - (((v270 & 5) - 75) ^ ((v270 & 5) - 55) ^ ((v270 & 5) + 85));
  LOBYTE(v303) = v308 & 0x14 ^ 0x57;
  LOBYTE(v303) = v308 ^ (2 * ((v308 ^ 0x6E) & (2 * ((v308 ^ 0x2E) & (2 * ((v308 ^ 0x2E) & (2 * ((v308 ^ 0x2E) & (2 * ((v308 ^ 0x2E) & (2 * ((v308 ^ 0x2E) & 0x3A ^ v303)) ^ v303)) ^ v303)) ^ v303)) ^ v303)) ^ v303));
  LOBYTE(v310) = v10[36] - ((v310 << ((v303 ^ 0x9F) & 0xE4) << ((v303 ^ 0xFE) & 0x1B ^ 0xA)) ^ ((v310 >> (v270 & 1)) >> (v270 & 4 | 2)));
  LOBYTE(v303) = *(v171 + (v307 ^ 0xF339u) % 0xCA);
  v10[36] = v310;
  LOBYTE(v310) = v10[738];
  LOBYTE(v294) = (v310 | v303) + (~(2 * (v310 | v303)) | 0xD9);
  LOBYTE(v310) = (v310 & v303) - ((2 * (v310 & v303)) & 0x16);
  v10[40] -= (((v310 + 11) & 0xBE ^ ((v10[229] ^ v7) & 0x10 ^ (v294 - 108) & v7 ^ ((v294 - 108) ^ 0x83) & (v10[229] ^ v7) ^ 0x51) & ((v310 + 11) ^ 0xF4) ^ 7) & ~(v10[313] >> 1) | (v10[313] >> 1) & 0x33) ^ 0x4C;
  LOBYTE(v310) = ((v287 - 48) ^ 0xEA) & (2 * ((v287 - 48) & 0xE3)) ^ (v287 - 48) & 0xE3;
  LOBYTE(v303) = ((2 * ((v287 - 48) ^ 0x6C)) ^ 0x1E) & ((v287 - 48) ^ 0x6C) ^ (2 * ((v287 - 48) ^ 0x6C)) & 0x8E;
  v311 = (v287 - 48) ^ (2 * (((4 * v303) ^ 0x30) & v303 & (16 * ((v303 ^ 0xC) & (4 * v310) ^ v310)) ^ (v303 ^ 0xC) & (4 * v310) ^ v310)) ^ 0x1E;
  v289 >>= 33;
  LOBYTE(v310) = (v289 ^ 0x86) & (2 * (v289 & 0xA0)) ^ v289 & 0xA0;
  LOBYTE(v303) = ((2 * (v289 ^ 0xC6)) ^ 0xCC) & (v289 ^ 0xC6) ^ (2 * (v289 ^ 0xC6)) & 0x66;
  LOBYTE(v289) = ~(v311 & 0x8C) & (v289 ^ (2 * ((((4 * (v303 ^ 0x22)) ^ 0x98) & (v303 ^ 0x22) ^ (4 * (v303 ^ 0x22)) & 0x60) & (16 * (v303 & (4 * v310) ^ v310)) ^ v303 & (4 * v310) ^ v310)) ^ 0xF8);
  v10[490] = v289 & 9 ^ v311 & 8 ^ (v289 ^ 0xA7) & (v311 & 0x73 ^ 0x87) ^ 0xFE;
  v312 = v10[125];
  if (v312 >= 0xC4u)
  {
    v312 += 60;
  }

  v313 = v10[43];
  if (v313 >= 0xC4u)
  {
    v313 += 60;
  }

  v314 = v10[107];
  if (v314 >= 0xC4u)
  {
    v314 += 60;
  }

  v315 = 3 * v10[68] - 19;
  v316 = v315 & 0x45 ^ 0xB9;
  v317 = v315 ^ 0x12;
  v318 = v315 ^ (v10[443] - ((2 * v10[443]) & 0xE4) - 14) ^ (2 * (v317 & (2 * (v317 & (2 * (v317 & (2 * (v317 & (2 * (v317 & (2 * (((2 * v315) & 0x26 ^ 0x56) & v317 ^ v316)) ^ v316)) ^ v316)) ^ v316)) ^ v316)) ^ v316));
  v319 = STACK[0xEB0];
  LODWORD(STACK[0xB90]) = *(STACK[0xEB0] + v312);
  LODWORD(STACK[0xBA0]) = *(v319 + v313);
  LODWORD(STACK[0xBB0]) = *(v319 + v314);
  v10[443] = v318 ^ 0xB7;
  v320 = v10[277];
  v321 = v288 ^ 0xC0;
  if (v321 >= 0xC4)
  {
    v321 -= 196;
  }

  v323 = v10[22];
  if (v323 >= 0xC4u)
  {
    v323 += 60;
  }

  v324 = *(v319 + v323) & 7 | 0xB0;
  v325 = ((v324 ^ 0x65) - 101) ^ ((v324 ^ 0x73) - 115) ^ ((v324 ^ 0xA6) + 90);
  v326 = ((v325 - 53) ^ 0xC1) & (2 * ((v325 - 53) & 0xE5)) ^ (v325 - 53) & 0xE5;
  v327 = ((2 * ((v325 - 53) ^ 0x8B)) ^ 0xDC) & ((v325 - 53) ^ 0x8B) ^ (2 * ((v325 - 53) ^ 0x8B)) & 0x6E;
  v328 = (v325 - 53) ^ (2 * ((((4 * (v327 ^ 0x22)) ^ 0xB8) & (v327 ^ 0x22) ^ (4 * (v327 ^ 0x22)) & 0x68 ^ 0x20) & (16 * ((v327 ^ 0xC) & (4 * v326) ^ v326)) ^ (v327 ^ 0xC) & (4 * v326) ^ v326 ^ 0x6E)) ^ 0x63;
  v329 = (((-23 - v325) ^ 3) + 6) ^ v325 ^ (((-23 - v325) ^ 4) + 3);
  v322 = *(v319 + v321) - ((2 * *(v319 + v321)) & 0x196);
  LOBYTE(v322) = (((v322 + 2069056715) ^ 0x7B534CCBu) >> (v328 & 0x3A ^ 0x1A) >> (v328 & 0xC5 ^ 0x40)) ^ (((v322 + 2069056715) ^ 0x7B534CCB) << (v329 & 4) << (v329 & 3));
  v330 = v10[238] - ((2 * v10[238]) & 0x18) + 12;
  v331 = (v330 & 0x8B ^ 0x73 ^ (v322 ^ 0x74) & (v330 ^ 0xF3)) & ((v320 - ((2 * v320) & 0xE0) - 16) ^ 0xF0);
  v332 = (v322 ^ 0x96) & (v330 ^ 0xC) ^ v330 & 0x96;
  v10[515] = (v10[515] - ((2 * v10[515]) & 0x3A) - 99) ^ v332 & 0xB ^ 0x69 ^ (v320 & 0xF ^ 0xF4 ^ v331) & (v332 ^ 0xFB);
  v333 = v10[759] - ((2 * v10[759]) & 0xE2) + 113;
  v334 = (v10[607] ^ 0xCF) + 114 + ((2 * v10[607]) & 0x9F);
  v335 = (v334 ^ 0x64) & (2 * (v334 & 0x66)) ^ v334 & 0x66;
  LOBYTE(v322) = ((2 * (v334 ^ 0x28)) ^ 0x9C) & (v334 ^ 0x28) ^ (2 * (v334 ^ 0x28)) & 0x4E;
  v336 = v334 ^ (2 * (((4 * (v322 ^ 0x42)) & 0x40 ^ ((4 * (v322 ^ 0x42)) ^ 0x20) & (v322 ^ 0x42)) & (16 * ((v322 ^ 8) & (4 * v335) ^ v335)) ^ (v322 ^ 8) & (4 * v335) ^ v335)) ^ 0x9C;
  v337 = ((v333 & 0x38 ^ 0x75 ^ (v336 & 0xE3 ^ 0xC6) & (v333 ^ 0x79)) & (v336 & 0x1C ^ 0xE7) ^ v336 & 0x18 ^ 0x5D) + v10[712];
  v338 = v10[85];
  if (v338 >= 0xCAu)
  {
    v338 += 54;
  }

  v339 = v10[268] & 0x94 | v10[540] & 0x6B;
  v340 = v10[58] - v10[162];
  v341 = (v340 ^ 0xFFFFFFFE) + 4 * (v340 >> 1) + (((v339 ^ 0xFFFFFFB1) + 67) ^ ((v339 ^ 0x5F) - 83) ^ ((v339 ^ 0xFFFFFFEE) + 30));
  LOBYTE(v340) = v341 + 28;
  LOBYTE(v341) = ((v341 - 100) | 0xD) ^ (v341 + 28) & 0xFE;
  v10[482] = (v10[482] + (a2 ^ (2 * v10[482]) | 0xC1) - 96) ^ v340 ^ (2 * ((v340 ^ 0x72) & (2 * ((v340 ^ 0x72) & (2 * ((v340 ^ 0x72) & (2 * ((v340 ^ 0x72) & (2 * ((v340 ^ 0x72) & (2 * ((v340 ^ 0x72) & (2 * v341) ^ v341)) ^ v341)) ^ v341)) ^ v341)) ^ v341)) ^ v341)) ^ 0x93;
  v10[470] -= 98;
  LODWORD(STACK[0xB70]) = *(v264 + v338);
  v10[425] -= v10[36];
  STACK[0xCF0] = v279 + 26;
  v342 = ((v10[40] - ((2 * v10[40]) & 0x36) + 591332635) ^ 0xDCC0FAE4) % 0xCA;
  v343 = v279 + 65;
  v344 = v279 + 125;
  if ((v279 + 26) < 0xC4u)
  {
    v344 = v279 + 65;
  }

  LODWORD(STACK[0xB60]) = *(v319 + (v344 - 39));
  v10[393] = *(v264 + v342);
  v345 = v10[112];
  if (v345 >= 0xC4u)
  {
    v345 += 60;
  }

  LODWORD(STACK[0xB50]) = v236[v10[18]];
  LODWORD(STACK[0xAE8]) = *(v319 + v345);
  v10[712] = v337;
  LODWORD(STACK[0xCC0]) = v300;
  STACK[0xC60] = v300 - 114;
  v10[620] -= v236[(v300 - 114)];
  v10[578] ^= v10[140];
  v346 = v10[937];
  v347 = v236[v10[89]] & v346;
  v348 = v236[STACK[0xDD0] ^ 0xEEE6FB6E] & ~v346;
  v349 = (((v347 - ((2 * v347) & 0xAA) + 85) ^ 0x67) & ~v348 | v348 & 0xCD) ^ 0x7F;
  v10[511] -= 93;
  v350 = (((v349 ^ 0xDE2) - 3554) ^ ((v349 ^ 0xFFFFF105) + 3835) ^ ((v349 ^ 0xFFFFFCAA) + 854)) + 169;
  v351 = v10[103] + 60;
  if (v10[103] < 0xC4u)
  {
    v351 = v10[103];
  }

  v352 = v10[22];
  if (v352 >= 0xC4u)
  {
    v352 += 60;
  }

  v353 = ((2 * *(v319 + v352)) & 0x7F) + (*(v319 + v352) ^ 0xBF);
  v354 = (v353 + 65) * (v353 - 75) - 116 * v353;
  v355 = *(v319 + v351);
  v10[418] ^= 0x2Du;
  if (v10[59] >= 0xCAu)
  {
    v356 = v10[59] + 54;
  }

  else
  {
    v356 = v10[59];
  }

  STACK[0xB80] = v356;
  v357 = v10[55];
  if (v357 >= 0xCAu)
  {
    v357 += 54;
  }

  v358 = *(v264 + v357);
  LODWORD(STACK[0xB40]) = (((v358 * v358) ^ 0xFFFFFFD3) + ((2 * v358 * v358) & 0xFFFFFFA6) + 45) * v358 + 3;
  v10[26] -= 56;
  v359 = (-573708313 - LODWORD(STACK[0xBD0])) ^ (LODWORD(STACK[0xBD0]) + 573708496) ^ (((LODWORD(STACK[0xBD0]) + 573708496) ^ 0x14EDBD54) + 29) ^ (((LODWORD(STACK[0xBD0]) + 573708496) ^ 0xE6AF69DE) + 151) ^ (((LODWORD(STACK[0xBD0]) + 573708496) ^ 0xC2) + 139);
  LODWORD(STACK[0xB30]) = v359;
  v360 = (v10[259] & 0x39 ^ 0xFFFFFFA2) & (v10[259] & 0x60 ^ 0xFFFFFFDF) | v10[259] & 0x40;
  v361 = LODWORD(STACK[0xCD0]) + (((v360 ^ 0xFFFFFFE3) + 70) ^ ((v360 ^ 0x54) - 13) ^ ((v360 ^ 0xFFFFFFE7) + 66));
  v362 = ((v10[26] & 0x7F ^ 0x30) + 126) ^ ((v10[26] & 0x7F ^ 0xFFFFFF9F) - 45) ^ ((v10[26] & 0x7F ^ 0xFFFFFFAF) - 29);
  v10[768] = v10[768] + ((v350 > 0x83) << 6) + (((205 * v350 - 27052) & 0xFC00) >> 10) - 56;
  v363 = v10[955] - ((2 * v10[955]) & 0x38) + 28;
  v364 = v355 - 11 + (~(2 * v355) | 0x17);
  v365 = (v364 ^ 0xF4) & (v307 ^ 0xAB) ^ v364 & 0x6D;
  LODWORD(STACK[0xCD0]) = v307;
  v366 = v354 + 125;
  v367 = (v366 ^ 0x8E) & (2 * (v366 & 0xF)) ^ v366 & 0xF;
  v368 = ((2 * (v366 ^ 0x8A)) ^ 0xA) & (v366 ^ 0x8A) ^ (2 * (v366 ^ 0x8A)) & 0x84;
  v369 = (v366 ^ (2 * ((v368 ^ 0x85) & (16 * (v368 & (4 * v367) ^ v367)) & ((4 * (v368 ^ 0x85)) ^ 0x10) ^ v368 & (4 * v367) ^ v367)) ^ 0x85) & (v363 ^ 0xE3);
  v10[963] -= (v369 ^ v363 & 0x8A ^ 0x7D) & (v363 & a5 ^ 0x49 ^ (((v365 ^ 0xFB) & (v307 & 0xD ^ 0x86) | v365 & 0x70) ^ 0x54) & (v363 ^ 0x1C)) ^ (v369 ^ v363 & 0x8A) & 0xAE ^ 0xD3;
  v370 = v359 ^ 0x7F;
  if (v370 >= 0xCA)
  {
    v370 -= 202;
  }

  LODWORD(STACK[0xB00]) = *(v264 + v370);
  v10[544] = v10[299];
  v371 = -121 - v362;
  if ((v362 + 121) >= 0xCAu)
  {
    v372 = -67 - v362;
  }

  else
  {
    v372 = -121 - v362;
  }

  LODWORD(STACK[0xBD0]) = v372;
  if (v10[17] >= 0xCAu)
  {
    v373 = v10[17] + 54;
  }

  else
  {
    v373 = v10[17];
  }

  STACK[0xAF0] = v373;
  if (v10[74] >= 0xC4u)
  {
    v374 = v10[74] + 60;
  }

  else
  {
    v374 = v10[74];
  }

  LODWORD(STACK[0xDE0]) = v361 - 118;
  LODWORD(STACK[0xB20]) = v361;
  LODWORD(STACK[0xB10]) = v361 - 99;
  v375 = v361 - 39;
  if ((v361 - 118) < 0xC4u)
  {
    v375 = v361 - 99;
  }

  v376 = *(v319 + (v375 - 19));
  v377 = (((2 * v376) & 0x7F) + (v376 ^ 0xBF) + 65) * (((2 * v376) & 0x7F) + (v376 ^ 0xBF) - 70) - 121 * (((2 * v376) & 0x7F) + (v376 ^ 0xBF));
  v10[110] = ~v10[340] + LODWORD(STACK[0xD30]);
  v378 = v10[405] - ((2 * v10[405]) & 0x9C) + 1999285838;
  v379 = v10[11] - ((2 * v10[11]) & 0x17A) - 1167579459;
  v380 = v10[815] - ((2 * v10[815]) & 0x174) - 1490348358;
  v381 = (v379 & 0x399 ^ (v379 ^ 0x142) & (v378 ^ 0x228) ^ 0x100) & (v380 ^ 0xA72B16BA);
  v382 = (v379 ^ 0x102822BD) & (v378 ^ 0x220204A2) ^ v379 & 0x2EC;
  v383 = (v380 & 0x40A03FF ^ 0x39E58714 ^ v381) & (v382 ^ 0xFFFFFD53) ^ v382 & 0xC2107A51;
  LOBYTE(v382) = ((v10[376] & 7 ^ 0x7C) + 71) ^ ((v10[376] & 7 ^ 0x7D) + 72) ^ ((v10[376] & 7 ^ 1) + 60);
  LOBYTE(v379) = (v382 + 111) ^ (((v382 + 111) ^ 0xD2) - 120) ^ (((v382 + 111) ^ 0xBB) - 17) ^ (((v382 + 111) ^ 0x3C) + 106) ^ (-(v382 + 111) - 86) ^ 0x2F;
  LOBYTE(v382) = (-124 - v382) ^ (2 * ((v382 - 1) & (2 * (-124 - v382)) & 2 ^ (-124 - v382))) ^ 0x4D;
  v10[52] -= ((v383 ^ 0xAE) << (v379 & 0x9A ^ 0x80) << (v379 & 0x65 ^ 5)) ^ ((v383 ^ 0x3DEF87AE) >> (v382 & 1) >> (v382 & 6 ^ 2));
  v10[110] = (v10[110] - ((2 * v10[110]) & 0xA2) + 81) ^ ((~((171 * v10[268]) >> 8) | 0x5D) + v10[268] / 3u + 82);
  LOBYTE(v383) = v236[STACK[0xE90] ^ 0x410EB15F] - v10[663];
  LOBYTE(v383) = (((v383 - ((2 * v383) & 0x46) + 35) & 0xA2 ^ 0x95) & (v10[373] & 0x11 ^ 0xA7) | (v383 - ((2 * v383) & 0x46) + 35) & 0x48) ^ 0xB6;
  LODWORD(STACK[0xAE0]) = v236[STACK[0xD70]];
  LOBYTE(v379) = v383 + v10[802];
  LODWORD(STACK[0xD30]) = v236[v10[15]];
  v10[802] = v379;
  v384 = v10[385] - ((2 * v10[385]) & 0x24) + 18;
  v377 -= 120;
  LOBYTE(v381) = (v377 ^ 0x3F) & (2 * (v377 & 0xBF)) ^ v377 & 0xBF;
  v385 = ((2 * (v377 ^ 0x67)) ^ 0xB0) & (v377 ^ 0x67) ^ (2 * (v377 ^ 0x67)) & 0xD8;
  v386 = v377 ^ (2 * (((4 * (v385 ^ 0x48)) & 0xD0 ^ 0x40 ^ ((4 * (v385 ^ 0x48)) ^ 0x60) & (v385 ^ 0x48)) & (16 * ((v385 ^ 0x90) & (4 * v381) ^ v381)) ^ (v385 ^ 0x90) & (4 * v381) ^ v381));
  v387 = v10[149];
  if (v387 >= 0xCAu)
  {
    v387 += 54;
  }

  v388 = *(v264 + v387);
  v389 = v388 ^ 0x57;
  v390 = (2 * v388) & 0xAE;
  v391 = v10[144];
  if (v391 >= 0xCAu)
  {
    v391 += 54;
  }

  v392 = v389 + (*(v264 + v391) ^ 0xDD) + v390 + ((2 * *(v264 + v391)) & 0xBB) + 115;
  v393 = ((v392 ^ 0xF1) - 86) ^ v392 ^ ((v392 ^ 0x50) + 9) ^ ((v392 ^ 0xE9) - 78) ^ ((v392 ^ 0xEF) - 72);
  v394 = ((v386 ^ 0x41) & (v393 ^ 0x58) ^ (v393 & 1 | 0x74)) & (v384 ^ 0x12);
  v395 = (v386 ^ 0xA5) & (v393 ^ 0xA7) ^ v393 & 0x1A;
  v396 = v10[561] - ((v384 & 0x8B ^ 0x9E ^ v394) & (v395 ^ 0xFD) ^ v395 & 0x63 ^ 0x9E);
  LODWORD(STACK[0xAD8]) = *(v319 + v374);
  v10[561] = v396;
  v398 = ((v236[v10[181]] / 3u) ^ 0xFFFFFFDF) + (((171 * v236[v10[181]]) >> 8) & 0xBE) + 113;
  v399 = v398 & 0xEE ^ 0x3F;
  v400 = v398 ^ (2 * ((v398 ^ 0x30) & (2 * ((v398 ^ 0x30) & (2 * ((v398 ^ 0x30) & (2 * ((v398 ^ 0x30) & (2 * ((v398 ^ 0x30) & (2 * ((v398 ^ 0x30) & 0x1E ^ v399)) ^ v399)) ^ v399)) ^ v399)) ^ v399)) ^ v399));
  v401 = v10[52];
  if (v401 >= 0xCAu)
  {
    v401 += 54;
  }

  v402 = 2 * (*(v264 + v401) - ((2 * *(v264 + v401)) & 0x92)) - 110;
  v397 = v10[750] - ((2 * v10[750]) & 0x70) - 72;
  v10[449] = (v10[449] - ((2 * v10[449]) & 0x60) + 48) ^ ((v400 ^ 0xEE) & (v402 ^ 0xA7) ^ v400 & 0x35) & 0xDD ^ 0x16 ^ (v397 & 0xC7 ^ 0xA2 ^ (v400 & 0xA4 ^ (v400 ^ 0x11) & (v402 ^ 0xC9) ^ 0x38) & (v397 ^ 0xB8)) & ((v400 ^ 0xEE) & (v402 ^ 0xA7) ^ v400 & 0x35 ^ 0xDB);
  v403 = v10[110];
  if (v403 >= 0xC4u)
  {
    v403 += 60;
  }

  v404 = *(v319 + v403);
  v405 = (*&v404 | 0xFFFFFFFD) & (STACK[0xC40] & 5 ^ 0x13114323);
  v406 = 0xA0u >> (v404 & 2) >> (v405 & 5);
  LOBYTE(v405) = -122 - (((v405 ^ 0x6E) + 7) ^ ((v405 ^ 0xD2) - 69) ^ ((v405 ^ 0x9C) - 11));
  LOBYTE(v405) = v405 ^ (2 * (v405 | (2 * (v405 & 1))));
  v407 = 160 << (~v405 & 2) << (v405 & 5 ^ 1);
  v408 = v10[185];
  if (v408 >= 0xC4u)
  {
    v408 += 60;
  }

  v409 = ((*(v319 + v408) & 7 ^ 0x61) + 112) ^ ((*(v319 + v408) & 7 ^ 0x34) + 59) ^ ((*(v319 + v408) & 7 ^ 0x55) + 92);
  v410 = (v409 + 86) ^ (((v409 + 86) ^ 0xA1) + 60) ^ (((v409 + 86) ^ 0x97) + 14) ^ (((v409 + 86) ^ 0xAC) + 55) ^ (15 - v409) ^ 0x7D;
  LODWORD(STACK[0xC40]) = ((131 << (v410 & 0xE5) << (v410 & 0x1A ^ 0x18)) ^ (0x83u >> ((7 - v409) & 7))) % 0xCA;
  v411 = STACK[0xDD0];
  v412 = v406 ^ (v407 & 0xE0 | 0x7887F904) ^ STACK[0xDD0];
  LODWORD(STACK[0xD70]) = v412;
  STACK[0xAD0] = (v412 ^ 0x26Au) % 0xCA;
  v10[53] = v10[148];
  v413 = v10[797] - ((2 * v10[797]) & 0x74) - 70;
  v414 = (LOBYTE(STACK[0xD80]) ^ 0x59) & 0xF2 | (LOBYTE(STACK[0xD80]) ^ 0xA6) & (2 * (LOBYTE(STACK[0xD80]) ^ 0x59));
  v415 = LOBYTE(STACK[0xD80]) ^ (2 * ((4 * v414) & v414 & (16 * (((2 * LOBYTE(STACK[0xD80])) & 0x40 ^ 0xA0) & STACK[0xD80])) ^ ((2 * LOBYTE(STACK[0xD80])) & 0x40 ^ 0xA0) & STACK[0xD80]));
  v416 = (LODWORD(STACK[0xDA0]) | (LODWORD(STACK[0xD90]) << 8)) - 874439459;
  v417 = (v416 ^ 0x23) & (2 * (v416 & 0x42)) ^ v416 & 0x42;
  v418 = ((2 * (v416 ^ 0x23)) ^ 0xC2) & (v416 ^ 0x23) ^ (2 * (v416 ^ 0x23)) & 0x60;
  v419 = (LOBYTE(STACK[0xDA0]) - 35) ^ (2 * ((((4 * (v418 ^ 0x21)) ^ 0x80) & (v418 ^ 0x21) ^ (4 * (v418 ^ 0x21)) & 0x60) & (16 * (v418 & (4 * v417) ^ v417)) ^ v418 & (4 * v417) ^ v417));
  v420 = ((v419 ^ 0xC2) & 0x4B ^ 0x7B ^ (v415 ^ 0x14) & (v419 ^ 0xBD)) & (v413 ^ 0xBA);
  v421 = (v415 ^ 0x4B) & (v419 ^ 0x42) ^ (v419 ^ 0xC2) & 0xEB;
  v10[124] = (v413 & 0xCF ^ v420 ^ 0x33) & (v421 ^ 0x7F) ^ v421 & 0x46 ^ 0xB9;
  v422 = (v10[240] >> 4) | (16 * v10[240]);
  v10[142] = v10[142] + (v422 ^ 0x7E) + ((2 * v422) & 0xFC) - 126;
  LODWORD(STACK[0xD40]) = (((STACK[0xD40] & 0x2D ^ 0xFFFFFFD8) + 32) ^ ((STACK[0xD40] & 0x2D) - 56) ^ ((STACK[0xD40] & 0x2D ^ 0xFFFFFF8A) + 78)) + v10[679];
  v10[124] += (v10[707] & 0x42 ^ 0xC0) & (v10[707] & 0x66 ^ 0x8F) ^ (v10[707] & 2 | 0xE1) ^ (v10[707] & 0x66 ^ 0x8F) & 0x26;
  LODWORD(STACK[0xAC8]) = (((171 * LODWORD(STACK[0xD50])) >> 9) - (((171 * LODWORD(STACK[0xD50])) >> 8) & 0x68) + 52) ^ (v10[130] & 0xBF | (((v10[223] >> 6) & 1) << 6));
  v423 = (((STACK[0xD60] & v10[208]) - ((2 * (STACK[0xD60] & v10[208])) & 0x68) - 76) ^ 0xCB) & ~(v10[109] & ~v10[208]) | v10[109] & ~v10[208] & 0x80;
  v424 = v10[738];
  v425 = v10[20];
  v426 = (((v425 | v424) - ((2 * (v425 | v424)) & 0xD4) - 22) ^ 0xEA) & v10[370];
  v427 = (v425 & v424) - ((2 * (v425 & v424)) & 0x98) + 76;
  v428 = (v426 ^ 0x12) & (v427 ^ 0xB3) ^ v427 & 0xED;
  v429 = ((v428 ^ 0x75) + 10) ^ ((v428 ^ 0xD5) - 86) ^ ((v428 ^ 0xFE) - 125);
  v430 = (((STACK[0xBC0] & v10[728]) - ((2 * (STACK[0xBC0] & v10[728])) & 0xB6) - 37) ^ 0x1E) & ~(v10[112] & ~v10[728]) | v10[112] & ~v10[728] & 0x3A;
  v431 = v10[37] - 6 * (((v430 ^ 0x53) - 114) ^ ((v430 ^ 0x7C) + 35) ^ ((v430 ^ 0x6A) - 75));
  v432 = ((v423 ^ 0x9F) + 43) ^ ((v423 ^ 0x1A) - 80) ^ ((v423 ^ 0xFA) + 80);
  v10[66] = (v429 - 23) * (v432 - 94) + 73 * (-5 * v429 + 84 * v432) + 79;
  v10[31] += 58;
  v10[56] = STACK[0xCB0];
  LODWORD(STACK[0xD80]) = v10[266] / 3u - (((171 * v10[266]) >> 8) & 8);
  v433 = LODWORD(STACK[0xD00]) - 1330463657;
  v434 = (v433 ^ 0xCB7DA969) & (2 * (v433 & 0xEA7DAD6D)) ^ v433 & 0xEA7DAD6D;
  v435 = ((2 * (v433 ^ 0x1F05AB63)) ^ 0xEAF00C1C) & (v433 ^ 0x1F05AB63) ^ (2 * (v433 ^ 0x1F05AB63)) & 0xF578060E;
  v436 = v434 ^ 0xF578060E ^ (v435 ^ 0xE070040C) & (4 * v434);
  v437 = v433 ^ (2 * (((4 * v435) ^ 0x55E01830) & v435 & ((16 * v436) ^ 0x578060E0) ^ v436));
  v438 = STACK[0xCE0] & 0xFFFFFFFE ^ 0x6C;
  v10[10] += LODWORD(STACK[0xE80]) ^ LODWORD(STACK[0xCE0]) ^ (2 * ((LOBYTE(STACK[0xCE0]) ^ 0x24) & (2 * ((LOBYTE(STACK[0xCE0]) ^ 0x24) & (2 * ((LOBYTE(STACK[0xCE0]) ^ 0x24) & (2 * ((LOBYTE(STACK[0xCE0]) ^ 0x24) & (2 * ((LOBYTE(STACK[0xCE0]) ^ 0x24) & (2 * v438) ^ v438)) ^ v438)) ^ v438)) ^ v438)) ^ v438)) ^ 0x61;
  LOBYTE(v438) = v10[138] / 5u - (((205 * v10[138]) >> 9) & 0xCC);
  v10[91] += ((89 - v438) & 9 ^ ((v438 - 90) & 0xF ^ 0xD6) & ((2 * LOBYTE(STACK[0xC70])) ^ 0x49) ^ 0xCC | (v438 - 90) & ~(2 * LOBYTE(STACK[0xC70])) & 0x30) ^ 0xA5;
  v439 = (((205 * v10[156]) >> 9) & 0x70) + ((v10[156] / 5u) ^ 0xFFFFFFB8) + ((((LODWORD(STACK[0xC80]) >> 1) ^ 0x7A) - 37) ^ (((LODWORD(STACK[0xC80]) >> 1) ^ 0xFFFFFFCB) + 108) ^ (((LODWORD(STACK[0xC80]) >> 1) ^ 0xFFFFFFB1) + 18));
  v440 = v439 - 14;
  v441 = ((13 - v439) & 0xFFFFFFB5 | 0x42) ^ (v439 - 14) & 0xFFFFFFA6;
  v442 = v440 ^ (2 * ((v440 ^ 0x34) & (2 * ((v440 ^ 0x34) & (2 * ((v440 ^ 0x34) & (2 * ((v440 ^ 0x34) & (2 * ((v440 ^ 0x34) & (2 * (v440 & (2 * v441) ^ v441)) ^ v441)) ^ v441)) ^ v441)) ^ v441)) ^ v441));
  v443 = STACK[0xDF0];
  LOBYTE(v412) = ((v10[329] >> ((LODWORD(STACK[0xDF0]) ^ (2 * LOBYTE(STACK[0xDF0])) & 4 ^ 2) & 6 ^ 4)) >> (STACK[0xDF0] & 1)) ^ (v10[329] << ((53 - LOBYTE(STACK[0xCA0])) & 1) << (((~(2 * (53 - LOBYTE(STACK[0xCA0]))) | 2) ^ (53 - LOBYTE(STACK[0xCA0]))) & 6 ^ 4));
  v10[98] = v10[98] - LODWORD(STACK[0xC90]) + (((v412 ^ 0xD2) - 32) ^ ((v412 ^ 0x60) + 110) ^ ((v412 ^ 0xB2) - 64)) - 14;
  LOBYTE(v412) = (((v10[711] & STACK[0xBE0]) - ((2 * (v10[711] & STACK[0xBE0])) & 0x18) + 12) ^ 0x82) & ~((((2 * (v10[711] | LOBYTE(STACK[0xBE0]))) & 0x9F) - (v10[711] | LOBYTE(STACK[0xBE0])) + 48) & v10[423]);
  v10[168] -= ((v412 | 0xF1) & (v10[681] & v6 ^ 0x23) | v412 & 0x8C) ^ 0xBF;
  v444 = (88 - STACK[0xC30]) ^ (2 * ((88 - STACK[0xC30]) & (2 * ((88 - STACK[0xC30]) | 0xFFFFFFF1)) ^ ((88 - STACK[0xC30]) | 0xFFFFFFF1)));
  v445 = ((~LODWORD(STACK[0xC50]) | 0x2A) & (STACK[0xC20] & 0x2A | 0x55) | STACK[0xC50] & 0xFFFFFF80) ^ 0x55;
  LODWORD(STACK[0xD60]) = v445 << (STACK[0xC30] & 7);
  v446 = v444 ^ 0x8F;
  LODWORD(STACK[0xD90]) = v445 >> ((v444 ^ 0x8F) & 3 ^ 1);
  v447 = v443 & 0xFFFFFFAC ^ 0x77;
  LODWORD(STACK[0xD00]) = (v443 ^ 0x46) & (2 * ((v443 ^ 0x46) & (2 * ((v443 ^ 0x46) & (2 * ((v443 ^ 0x46) & (2 * ((v443 ^ 0x46) & (2 * ((v443 ^ 0x46) & 0x2A ^ v447)) ^ v447)) ^ v447)) ^ v447)) ^ v447)) ^ v447;
  v10[37] = v431 - 88;
  v448 = LODWORD(STACK[0xB90]) - ((2 * LOBYTE(STACK[0xB90])) & 0x72) - 71;
  LOBYTE(v416) = ((STACK[0xB50] & 7 ^ 0xE1) + 40) ^ ((STACK[0xB50] & 7 ^ 0x33) - 10) ^ ((STACK[0xB50] & 7 ^ 0xD2) + 21);
  v449 = (LODWORD(STACK[0xBA0]) - ((2 * LODWORD(STACK[0xBA0])) & 0xBA) + 735946589) ^ 0x2BDDA75D;
  LOBYTE(v449) = ((v449 << (((((v416 - 88) ^ 0xE9) + 122) ^ (v416 - 88) ^ (((v416 - 88) ^ 0xA0) + 49) ^ (((v416 - 88) ^ 0xD9) + 74) ^ (-57 - v416)) & 0xDF ^ 0x4F)) ^ (v449 >> (((-116 - v416) ^ (v416 + 1) ^ (((-116 - v416) ^ 2) + 1)) & 7 ^ 5))) & (v448 & 0x1A ^ 0xFD ^ (v448 ^ 0x46) & (v437 ^ 0x94));
  LODWORD(STACK[0xDA0]) = v437;
  v10[171] = (v10[171] - ((2 * v10[171]) & 0xF8) - 4) ^ 0x1A ^ (v449 & 0x19 | ((v448 ^ 0x46 | v437 ^ 0xD5) ^ v448 & 0x5B) & ~v449);
  LOBYTE(v449) = LODWORD(STACK[0xBB0]) | v10[254];
  LOBYTE(v449) = v449 - 2 * (v449 & 0x3F);
  v450 = v10[624];
  v451 = v450 << (~(v449 + 71) & 3) << (~(v449 + 71) & 4);
  LOBYTE(v449) = 5 - ((((v449 + 63) ^ 6) + 2) ^ (v449 + 71) ^ (((v449 + 63) ^ 5) + 3));
  v10[4] = (v450 >> (~v449 & 4) >> (v449 & 3)) ^ v451;
  LOBYTE(v449) = 3 * v10[49] + 31;
  LOBYTE(v449) = v449 ^ (2 * (v449 & (2 * (v449 & (2 * (v449 & (2 * (v449 & 0xA3 ^ 0x61)) ^ v449 & 0xA3 ^ 0x61)) ^ v449 & 0xA3 ^ 0x61)) ^ v449 & 0xA3 ^ 0x61));
  v452 = LODWORD(STACK[0xB70]) * LODWORD(STACK[0xDE0]);
  LOBYTE(v444) = (v452 - 124) & 0xAC ^ 0xB8;
  v10[125] -= ((((v452 - 124) ^ (2 * ((123 - v452) & (2 * (((v452 - 124) ^ 0x7C) & (2 * (((v452 - 124) ^ 0x7C) & (2 * (((v452 - 124) ^ 0x7C) & (2 * v444) ^ v444)) ^ v444)) ^ v444)) ^ v444))) & 0xE1 ^ 0x2F) & (v449 & 0x1E ^ 0xFD) | v449 & 0x10) ^ 0x8F;
  v10[168] += LODWORD(STACK[0xB60]);
  v453 = (LODWORD(STACK[0xAE8]) | 0x33) & v10[212];
  v454 = ((v453 ^ 0x32) & (STACK[0xAE8] & 0x33333333 ^ 0x7B) | v453 & 0x84) ^ (STACK[0xAE8] & 0x33333333 ^ 0x7B) & 0x49;
  LODWORD(STACK[0xCA0]) = ((v454 ^ 0xFFFFFFA7) + 83) ^ ((v454 ^ 0x3F) - 53) ^ ((v454 ^ 0xFFFFFFE3) + 23);
  v10[58] = v411 ^ (v10[58] - ((2 * v10[58]) & 0x9C) + 78) ^ 0x20;
  v10[53] ^= v10[3];
  v455 = v343 & 0xFFFFFFF1 ^ 0xFFFFFF9C;
  v456 = v343 & (2 * v343) & 0x32;
  v457 = v343 ^ (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * (v456 ^ v455)) ^ v455)) ^ v455)) ^ v455)) ^ v455)) ^ v455));
  v458 = v343 & 0x29 ^ 0xFFFFFFA8;
  v459 = v343 ^ (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * ((v343 ^ 0x58) & (2 * (v343 & (2 * (v456 ^ v458)) ^ v458)) ^ v458)) ^ v458)) ^ v458)) ^ v458));
  v460 = ((v10[190] & (v457 & 0x5E ^ (v457 ^ 0xE) & (v442 ^ 0xFFFFFFB2) ^ 0xFFFFFFF1) ^ 0xFFFFFFBF) & (v459 & 0x25 ^ 0xFFFFFFDE ^ (v459 ^ 0x29) & (v442 ^ 0x36)) ^ ((v459 ^ 0x29) & (v442 ^ 0x36) & 0x40 | 0x1D)) & ~v10[141] | v10[141] & 0x5D;
  LODWORD(STACK[0xCE0]) = v442 ^ 0xFFFFFF8A;
  LODWORD(STACK[0xCB0]) = ((v460 ^ 0xFFFFFFCB) - 56) ^ ((v460 ^ 0x6D) + 98) ^ ((v460 ^ 4) + 9);
  v10[116] = STACK[0xB00];
  v461 = v10[11] & 0x30 | 0x4C;
  LODWORD(STACK[0xDD0]) = 171 * (((v461 ^ 0xFFFFC049) + 16311) ^ ((v461 ^ 0xFFFFC55D) + 15011) ^ ((v461 ^ 0x5DF) - 1503)) - 6759;
  v462 = 171 * LODWORD(STACK[0xAE0]);
  HIDWORD(v463) = v462 >> 9;
  LODWORD(v463) = (((v462 >> 9) | (v462 >> 8) & 0x80) << 24) + 0x40000000;
  LODWORD(STACK[0xC90]) = (((v463 >> 26) ^ 0xFFFFFFE4) - 123) ^ (((v463 >> 26) ^ 0xA) + 107) ^ (((v463 >> 26) ^ 0xFFFFFFFE) - 97);
  v464 = v10[774] * v10[774];
  v465 = v371 & 0x45 ^ 0xFFFFFFCE;
  v466 = v371 ^ (2 * ((v371 ^ 0x48) & (2 * ((v371 ^ 0x48) & (2 * ((v371 ^ 0x48) & (2 * ((v371 ^ 0x48) & (2 * (v371 & (2 * (v371 & (2 * v371) & 0x12 ^ v465)) ^ v465)) ^ v465)) ^ v465)) ^ v465)) ^ v465)) ^ (v464 - ((2 * v464) & 0x10) - 120);
  v467 = ((v466 ^ 0xFFFFFFB7) - 32) ^ ((v466 ^ 0xFFFFFF8F) - 24) ^ ((v466 ^ 0xFFFFFFF5) - 98);
  LOBYTE(v464) = v10[455] - ((2 * v10[455]) & 0xC4) + 98;
  v468 = LODWORD(STACK[0xD30]) - ((2 * LOBYTE(STACK[0xD30])) & 0x1C) - 114;
  LOBYTE(v444) = (v464 & 0x8D ^ 0x7D ^ (v468 & 0x4D ^ 0x33) & (v464 ^ 0x62)) & (v468 & 0xB2 ^ 0x7D) ^ v468 & 0x82;
  v469 = STACK[0xE60];
  v470 = STACK[0xAD8] & *(STACK[0xE60] + STACK[0xAF0]);
  LOBYTE(v470) = v470 - (a4 & (2 * v470)) + 123;
  LOBYTE(v464) = (v470 & 0x56 ^ 4) & (v444 ^ 0x46);
  LOBYTE(v444) = (v444 ^ 0x22) & (v470 ^ 0x7B) ^ v470 & 0xDD;
  v10[71] += (v444 ^ 0xA6) & (v470 & 0x46 ^ v464 ^ 0xEE) ^ v444 & 0x43 ^ 0xFD;
  v10[699] = ~v10[8] | 1;
  v10[30] = v10[142];
  LODWORD(STACK[0xD50]) = ((LODWORD(STACK[0xB30]) ^ 0xFFFFFFC3) - 16) ^ ((LODWORD(STACK[0xB30]) ^ 0xC) + 33) ^ ((LODWORD(STACK[0xB30]) ^ 0xFFFFFFB0) - 99);
  v10[664] += *(v469 + LODWORD(STACK[0xC40]));
  v10[3] ^= v10[461];
  v10[557] ^= *(v469 + STACK[0xAD0]);
  v10[578] -= (v236[(v467 + 90)] & 0x66 | v236[v10[41]] & 0x99u) >> 1;
  v10[126] += v236[v10[53]];
  v471 = v10[163];
  if (v471 >= 0xC4u)
  {
    v471 += 60;
  }

  v472 = *(v319 + v471) - ((2 * *(v319 + v471)) & 0x72) + 57;
  v473 = (v472 & 5 ^ 0x19 ^ (v472 & 0x4D ^ 0xBBBBBBBB) & (STACK[0xE90] ^ 0xE8)) & (v472 & 0x32 ^ 0xCF);
  v10[76] = 3 * (((v473 ^ 0x1F) + 121) ^ ((v473 ^ 0xE2) - 122) ^ ((v473 ^ 0xC7) - 95)) - 26;
  v10[10] -= v10[107];
  v10[768] += ~(v236[v10[130]] ^ v236[v10[49]]) | 0x41;
  v474 = LODWORD(STACK[0xB10]) ^ (2 * (LOBYTE(STACK[0xB10]) & (2 * (LOBYTE(STACK[0xB10]) ^ 0x5B)) ^ LOBYTE(STACK[0xB10]) ^ 0x5B));
  v475 = 0x73u >> (~v474 & 3) >> (v474 & 4);
  v476 = 115 << ((-102 - LODWORD(STACK[0xB20])) & 2) << ((-102 - LODWORD(STACK[0xB20])) & 5 ^ 4);
  v477 = STACK[0xD40];
  LODWORD(STACK[0xD30]) = LODWORD(STACK[0xD40]) - 85;
  if ((v477 - 85) >= 0xC4u)
  {
    v478 = 39;
  }

  else
  {
    v478 = -21;
  }

  v479 = v475 ^ v476 ^ *(v319 + (v477 + v478 - 64));
  v480 = ((v479 ^ 0x75) + 81) ^ ((v479 ^ 0x44) + 98) ^ ((v479 ^ 0x31) + 21);
  v481 = v10[95];
  if (v481 >= 0xCAu)
  {
    v481 += 54;
  }

  v482 = *(v469 + v481) * v10[61];
  v483 = v10[708];
  v484 = 7 - (v10[376] & v483);
  v485 = v484 & (v483 | 0xFC);
  v486 = (v482 - 16 * (v482 >> 3) - 8) ^ 0xFFFFFFF8;
  v487 = v486 << (~v485 & 3) << (~v484 & 4);
  v488 = 12 - ((v485 + 96) ^ v485 ^ ((v485 ^ 0x5F) - 95));
  v489 = v488 ^ (2 * (v488 & (2 * (v488 ^ 0xB7)) ^ v488 ^ 0xB7));
  v490 = ((v486 >> (v489 & 5 ^ 1)) >> (~v489 & 2)) ^ v487;
  LODWORD(STACK[0xC80]) = ((v490 ^ 0x54) + 34) ^ ((v490 ^ 0x21) + 85) ^ ((v490 ^ 0x75) + 1);
  STACK[0xD40] = v467 + 90;
  if ((v467 + 90) >= 0xC4u)
  {
    v491 = -3;
  }

  else
  {
    v491 = -63;
  }

  v492 = *(v319 + (v467 + v491 - 103));
  v493 = v10[424];
  v494 = (((v493 | v492) - ((2 * (v493 | v492)) & 0xB8) + 92) ^ v7) & v10[382];
  v495 = (v493 & v492) - ((2 * (v493 & v492)) & 0x42);
  v496 = (v494 ^ 0x36) & ((v495 - 95) ^ 0x5E) ^ (v495 - 95) & 0xC9;
  v497 = (v10[63] & 0x66 ^ (v10[63] | 0x99) & (v10[206] ^ 0xE6) ^ 7) & (~v10[63] | 0x66) ^ v10[63] & 0x18;
  v10[435] = v10[435] + (((v497 ^ 0xBA) - 112) ^ ((v497 ^ 0xDC) - 22) ^ ((v497 ^ 0xE1) - 43)) - (((v496 ^ 0x79) + 118) ^ ((v496 ^ 0x1F) + 20) ^ ((v496 ^ 0xD1) - 34)) + 9;
  v498 = 70 - v480;
  v499 = (70 - v480) & 0xD ^ 0xC;
  v500 = v498 ^ (2 * ((v498 ^ 0x74) & (2 * ((v498 ^ 0x74) & (2 * ((v498 ^ 0x74) & (2 * ((v498 ^ 0x74) & (2 * ((v498 ^ 0x74) & (2 * (v498 & (2 * v498) & 0x6A ^ v499)) ^ v499)) ^ v499)) ^ v499)) ^ v499)) ^ v499));
  v501 = (v500 ^ 0xD) & (STACK[0xE00] ^ 0x5F);
  v502 = v500 & 0xCD;
  if ((v480 - 114) >= 0xCAu)
  {
    LOBYTE(v498) = 124 - v480;
  }

  v503 = *(v469 + (v498 - 11)) & (STACK[0xE00] ^ 0x6D);
  v504 = ((v502 ^ 0xD5 ^ v501) & ~v503 | v503 & 0x27) ^ 0x9A;
  v505 = STACK[0x7F44];
  LODWORD(STACK[0xD80]) = v446 & 4;
  v506 = STACK[0xAC8];
  LODWORD(STACK[0xD00]) = LODWORD(STACK[0xAC8]) ^ 0xFFFFFFA0;
  LODWORD(STACK[0xC70]) = (v506 ^ 0xB) + 13;
  LODWORD(STACK[0xC50]) = (v506 ^ 0xFFFFFF89) - 113;
  v10[65] = -107;
  v507 = v10[410] * v10[410];
  LODWORD(STACK[0xC40]) = 205 * ((((v504 ^ 0xFFFF8A7B) + 30085) ^ ((v504 ^ 0x16BB) - 5819) ^ ((v504 ^ 0xFFFF9C82) + 25470)) + 158) + 21076;
  v508 = *(STACK[0xF18] + 8 * ((45 * ((((v505 ^ 0x503DE494) - 1346233492) ^ ((v505 ^ 0xD676203) - 224879107) ^ ((v505 ^ 0x881CD2E8) + 2011376920)) == 716811137)) ^ LODWORD(STACK[0xDC0])));
  LODWORD(STACK[0xE60]) = v507;
  return v508();
}

uint64_t sub_100694278@<X0>(int a1@<W8>)
{
  STACK[0x45B0] = v2;
  LODWORD(STACK[0x59F0]) = a1;
  STACK[0x1C18] = 0;
  LODWORD(STACK[0x5D34]) = 0;
  v3 = a1 == ((v1 + 11386) ^ 0x46049A2) + ((v1 + 11386) | 0x24C0);
  LOBYTE(STACK[0x220F]) = v3;
  return (*(STACK[0xF18] + 8 * ((113 * v3) ^ v1)))();
}

uint64_t sub_10069439C()
{
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 37479)))((v1 + v2), v3 ^ v4) < ((v0 ^ 0x7E2D) - 18395);
  return (*(v5 + 8 * (v6 | (8 * v6) | v0)))();
}

uint64_t sub_100694440()
{
  v1 = *(STACK[0x2DC0] + 148);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393223;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006944A8()
{
  v1 = STACK[0xF18];
  STACK[0x1528] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x94C4) - 25829) ^ v0)))();
}

uint64_t sub_100694578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  STACK[0x95A0] = STACK[0x4D80] + a3;
  LOWORD(STACK[0x79DE]) = STACK[0xA33E];
  LODWORD(STACK[0x16B4]) = -264182512;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100694614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  LODWORD(STACK[0xA048]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, ((0x1E5 % (v4 ^ 0x1BFAADF ^ LODWORD(STACK[0xA04C]))) ^ 0x79FFE6D9) - 968971406 + ((2 * (0x1E5 % (v4 ^ 0x1BFAADF ^ LODWORD(STACK[0xA04C])))) & 0x1B2));
}

uint64_t sub_10069469C@<X0>(_BYTE *a1@<X8>)
{
  STACK[0xA128] = a1;
  STACK[0xA130] = v2;
  *a1 = *v2;
  a1[1] = ((v1 - 108) ^ v2[1] ^ 0xE0) + 2 * (v2[1] & 0xF) - 11;
  STACK[0xA138] = (a1 + 1);
  STACK[0xA140] = (a1 + 2);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((15165 * ((v1 - 2015905706) < 0x1BBF4379)) ^ (v1 + 3984))))();
}

uint64_t sub_100694734()
{
  v1 = STACK[0xF18];
  STACK[0x7A58] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 503) | 0x3302) + 9492) ^ v0)))();
}

uint64_t sub_1006948C4()
{
  v1 = v0 - 29015;
  v2 = *STACK[0x2040];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xB217CE5) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF4DE8318)) ^ 0xED07672A) + 296753103;
  STACK[0x10ED8] = v2;
  LODWORD(v2) = v0 + 16271;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1006949F0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = 4 * (v48 - 115767973);
  v50 = *(*(a37 - 1680276466) + (*(a38 - 231415367) & 0x9B7C4D0)) + v47 + v49;
  *(a46 + v49) ^= (-1387666809 * (v47 + v49)) ^ (a1 - 6212) ^ *(v47 + v49) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v50 + 163038416) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v50 + 163038418) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0xA4FE4D41;
  return (*(v46 + 8 * a1))();
}

uint64_t sub_100694C00()
{
  LODWORD(STACK[0x75B4]) = -371865837;
  v2 = STACK[0x4830];
  STACK[0x8FE8] = *(v0 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1935764596;
  LODWORD(STACK[0x704C]) = -2116087597;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v1 - 29747)))();
}

uint64_t sub_100694C98@<X0>(char a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0xE80]) = 0;
  v13 = (a2 + 11274) | 0x120;
  v14 = v11[503];
  LODWORD(STACK[0xEA0]) = v13;
  v15 = (((v11[468] ^ 0x72) - 114) ^ ((v11[468] ^ 0xF2) + 14) ^ ((v11[468] ^ 0xDB) + 37)) + ((((v13 + 90) & v14 ^ 0xE6) - 45) ^ (((v13 + 90) & v14 ^ 0x6D) + 90) ^ (((v13 + 90) & v14 ^ v6) - 96)) + 89;
  LOBYTE(v13) = v15 & 0x27 ^ 0x2D;
  v16 = v15 ^ (2 * ((v15 ^ 0x6C) & (2 * ((v15 ^ 0x6C) & (2 * ((v15 ^ 0x6C) & (2 * ((v15 ^ 0x6C) & (2 * ((v15 ^ 0x6C) & (2 * (((2 * v15) & 0x5A ^ 0x4A) & v15 ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v11[468] = v16 ^ 0x7C;
  v17 = v11[12];
  v18 = v11[330];
  v19 = ((v11[394] ^ 0x1EACCDDB) - 514641371) ^ ((v11[394] ^ 0xAE37E049) + 1372069815) ^ ((v11[394] ^ 0xB09B2DE4) + 1332007452);
  v20 = 541619732 * v19 + ((v19 + 118) * (v19 + 1581664262) - 1581664144 * v19 + 1800572300) * (v19 + 118);
  LODWORD(STACK[0xE90]) = (v20 - 513381064) * (v20 + 1497686248) - 2011067312 * v20;
  LOBYTE(v20) = (v11[38] + 96) ^ (v11[38] + 40) ^ ((v11[38] ^ 0x27) - 39);
  v21 = (v20 + 95) * (v20 - 19) + 114 * v20;
  LOBYTE(v20) = (v21 + 78) * (v20 + 25) + 70 * v21;
  v22 = ((v11[369] ^ 0xD6) + 47) ^ ((v11[369] ^ 0xE0) + 25) ^ ((v11[369] ^ 0x31) - 54);
  v23 = v22 * v22 * v22 - 50;
  v24 = v17 ^ 0x7F | v18;
  v25 = v18 & (v17 ^ 0x5F);
  v26 = v11[373];
  v27 = (v11[385] ^ 0xC) & (v26 ^ 0x60) ^ (v26 | 4);
  v28 = v27 & ((v11[248] ^ 0xDF) & (v26 ^ 0xC) ^ 0x6C) & 0x28 | (v11[248] ^ 0xDF) & ~v26 & 8 | (v27 & ((v11[248] ^ 0xDF) & (v26 ^ 0xC) ^ 0x6C) | 0x93) & (v25 & 0x92 ^ 0x55 ^ (v24 & v26 ^ 1) & ~v25 & 0x93);
  v29 = (((v11[455] ^ 0x9C) + 100) ^ ((v11[455] ^ 0xDD) + 35) ^ ((v11[455] ^ 0x1A) - 26)) - (((v28 ^ 0xCB) - 118) ^ (v28 + 67) ^ ((v28 ^ 0xBF) - 2)) + 14;
  v11[455] = v29 ^ (2 * ((v29 ^ 4) & (2 * ((v29 ^ 4) & (2 * ((v29 ^ 4) & (2 * (((2 * v29) & 8 ^ 0x1A) & v29 ^ v29 & 0x1E ^ 0x4D)) ^ v29 & 0x1E ^ 0x4D)) ^ v29 & 0x1E ^ 0x4D)) ^ v29 & 0x1E ^ 0x4D)) ^ 0x45;
  v30 = v10[v11[82] & 0x3F ^ 0x1FLL];
  v31 = (((v30 ^ 0xBF) + 65) ^ ((v30 ^ 0xCB) + 53) ^ ((v30 ^ 0x2F) - 47)) + (((v16 ^ 0x51) - 45) ^ ((v16 ^ 0x45) - 57) ^ ((v16 ^ 0x33) - 79)) - 59;
  v32 = v31 & 0xB9 ^ v9;
  v11[468] = v31 ^ (2 * ((v31 ^ 0x70) & (2 * ((v31 ^ 0x70) & (2 * ((v31 ^ 0x70) & (2 * ((v31 ^ 0x70) & (2 * ((v31 ^ 0x70) & (2 * (v31 & (2 * v31) & 0x62 ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0xE2;
  v33 = v12[v11[74] & 0x3F ^ 0x1FLL];
  v34 = 89 * (((v33 ^ 0x2D) - 45) ^ ((v33 ^ 0xFE) + 2) ^ ((v33 ^ 0xA5) + 91)) + 56;
  v35 = v34 & 0x1C ^ 0x2B;
  v11[452] = v34 ^ (2 * ((v34 ^ 0x4E) & (2 * ((v34 ^ 0x4E) & (2 * ((v34 ^ 0x4E) & (2 * ((v34 ^ 0x4E) & (2 * ((v34 ^ 0x4E) & (2 * ((v34 ^ 0x4E) & 0x12 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ 0x47;
  v11[428] ^= v4;
  v11[500] = (2 * v11[378]) & 0xA2 ^ 0x5F;
  v36 = (((v11[61] ^ 0x82) + 126) ^ ((v11[61] ^ 0xFC) + 4) ^ ((v11[61] ^ 0x21) - 33)) - ((((2 * v11[2]) ^ 0x5A) - 88) ^ (((2 * v11[2]) ^ 0xB1) + 77) ^ (((2 * v11[2]) ^ 0x55) - 87)) - 76;
  v37 = v36 & 0x77 ^ 0xC4;
  v11[393] = v36 ^ (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0xCF) & (2 * v36) & 0x5E ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ 1;
  v11[510] = v11[429] & 0xA2 ^ 0x79;
  v38 = (((v11[386] ^ 0xB0) + 80) ^ ((v11[386] ^ 9) - 9) ^ ((v11[386] ^ 0xCF) + 49)) - (((v11[237] ^ 0x98) + 104) ^ ((v11[237] ^ 0x83) + 125) ^ ((v11[237] ^ 0x44) - 68)) + 115;
  v11[386] = v38 ^ (2 * ((v38 ^ 0x10) & (2 * ((v38 ^ 0x10) & (2 * ((v38 ^ 0x10) & (2 * (v38 & 0x7E ^ 0x77 ^ v38 & 0x2E)) ^ v38 & 0x7E ^ 0x77)) ^ v38 & 0x7E ^ 0x77)) ^ v38 & 0x7E ^ 0x77)) ^ 8;
  v39 = (v20 - 109) ^ (((v20 - 109) ^ 1) + 2) ^ (((v20 - 109) ^ 6) + 7) ^ 0x4E;
  v40 = (109 << (v39 & 2) << (v39 & 5 ^ 1)) ^ (0x6Du >> (((v20 - 92) ^ (100 - v20) ^ (-15 - v20) ^ (((-15 - v20) ^ 6) + 5) ^ (((-15 - v20) ^ 4) - 1)) & 7 ^ 5));
  LOBYTE(v40) = (((v11[472] ^ 0x5C) - 92) ^ ((v11[472] ^ 0xD5) + 43) ^ ((v11[472] ^ 0xD2) + 46)) - (((v40 ^ 0x3D) + 62) ^ ((v40 ^ 0xAA) - 85) ^ ((v40 ^ 0x97) - 104)) - 87;
  v41 = v40 & 9 ^ 0x6F;
  v11[472] = v40 ^ (2 * ((v40 ^ v4) & (2 * ((v40 ^ v4) & (2 * ((v40 ^ v4) & (2 * ((v40 ^ v4) & (2 * ((v40 ^ v4) & (2 * (((2 * v40) & 0x66 ^ 0x3A) & (v40 ^ v4) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 0x52;
  v42 = v10[v11[138] & 0x3F ^ 0x1FLL] & 0x78;
  LOBYTE(v40) = (((v42 ^ 0x7E) - 83) ^ ((v42 ^ 0xAF) + 126) ^ ((v42 ^ 0x73) - 94)) + (((v11[500] ^ 0x47) - 71) ^ ((v11[500] ^ 0x7F) - 127) ^ ((v11[500] ^ 0x63) - 99)) + 76;
  v43 = v40 & 0x7A ^ 0xF6;
  v11[500] = v40 ^ (2 * ((v40 ^ 0x1C) & (2 * ((v40 ^ 0x1C) & (2 * ((v40 ^ 0x1C) & (2 * ((v40 ^ 0x1C) & (2 * ((v40 ^ 0x1C) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ 0x21;
  LOBYTE(v40) = v12[v11[191] & 0x3F ^ 0x1FLL];
  LOBYTE(v40) = -3 * (((v40 ^ 0x2C) - 44) ^ ((v40 ^ 0x4B) - 75) ^ ((v40 ^ 0x11) - 17)) + (((v11[201] ^ 0xB8) + 57) ^ ((v11[201] ^ 0xE5) + 102) ^ ((v11[201] ^ 0xFD) + 126)) + (((v11[479] ^ 0x73) - 115) ^ ((v11[479] ^ 0x8A) + 118) ^ ((v11[479] ^ 0xA2) + 94)) + 62;
  v44 = v40 & 0xEA ^ 0xA8;
  v11[479] = v40 ^ (2 * ((v40 ^ 0x18) & (2 * ((v40 ^ 0x18) & (2 * ((v40 ^ 0x18) & (2 * ((v40 ^ 0x18) & (2 * ((v40 ^ 0x18) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0xB1;
  LOBYTE(v40) = v10[v11[17] & 0x3F ^ 0x1FLL];
  v45 = v10;
  v46 = STACK[0xEB0];
  v47 = *STACK[0xEB0];
  v11[483] = ((v40 ^ 0x12) & (v47 ^ 0x22) ^ (v40 | 0x99)) & (*v45 & 0xF3 ^ 0x12) ^ *v45 & 0x92 | 0x49;
  v48 = v11[181];
  v49 = v11[244];
  v50 = v11[487];
  v51 = (v49 & 0x3D ^ 0x8E ^ (v49 ^ 0xA0) & (v48 ^ 0x9D)) & (v50 ^ 0x5B);
  v52 = (v49 ^ 0x5F) & (v48 ^ 0x63) ^ v49 & 0x3C;
  v53 = v45[v11[85] & 0x3F ^ 0x1FLL];
  v54 = (v51 ^ (v50 & 0x51 | 0x8A)) & (v52 ^ 0xE3) ^ v52 & 0x24;
  v55 = v11[56];
  v56 = (v53 & 0x99 ^ 0x89) & (v55 ^ 0x80);
  v57 = (v55 ^ 0x5F) & (v53 ^ 0xFD) ^ v55 & 0xA6;
  v58 = (v57 ^ 0xD9) & (v55 & 9 ^ 0x43 ^ v56) ^ v57 & 0x25;
  v59 = (v58 ^ 1) & (v54 & 7 ^ 6);
  v60 = (v58 ^ 0xDE) & (v54 ^ 0xBC) ^ v58 & 0x63;
  v11[387] = (v60 ^ 0x8D) & (v58 & 6 ^ v59 ^ 0xCC) ^ v60 & 0x34 ^ 0xBD;
  v61 = v45[v11[41] & 0x3F ^ 0x1FLL];
  v62 = v11[369];
  v63 = ~(v62 | v61) & 0xD1 | v62 & 0x51;
  v64 = (v62 ^ 0xC) & (v61 ^ 0xFC) ^ v62 & 0xA7;
  v65 = (v63 ^ 0x23) & (v64 ^ 0xF7) ^ v64 & 0x5C;
  v66 = (((v11[458] & 0x51 ^ 0xB2) + 10) ^ ((v11[458] & 0x51 ^ 0x72) - 54) ^ ((v11[458] & 0x51 ^ 0x17) - 83)) + (((v65 ^ 0x77) + 12) ^ (-125 - v65) ^ ((v65 ^ 0x2F) + 84)) - 63;
  v67 = v66 & 0xF6 | 1;
  v68 = v67 ^ v66 & 0xE;
  v11[428] ^= v66 ^ (2 * ((v66 ^ v5) & (2 * ((v66 ^ v5) & (2 * ((v66 ^ v5) & (2 * ((v66 ^ v5) & (2 * ((v66 ^ v5) & (2 * ((v66 ^ v5) & (2 * v67) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0xF8;
  v69 = 2 * v12[v11[76] & 0x3F ^ 0x1FLL];
  v70 = 43691 * (((v69 ^ 0xC3AA447C) + 1012222511) ^ ((v69 ^ 0x6705F3AB) - 1728381446) ^ ((v69 ^ 0xA4AFB73B) + 1532017002)) + 1192382571;
  v71 = v46[v11[163] & 0x3F ^ 0x1FLL];
  v72 = (((v71 ^ 0x2E) - 46) ^ ((v71 ^ 0xFFFFFFF9) + 7) ^ ((v71 ^ 0xFFFFFFDB) + 37)) - 127;
  v73 = (((v11[321] ^ 0x17) - 23) ^ ((v11[321] ^ 0x22) - 34) ^ ((v11[321] ^ 0x39) - 57)) + 23;
  LODWORD(STACK[0xE20]) = 43 * (33 * v73 + 95 * v72) + v73 * v72;
  v74 = ((v11[96] ^ 0x222A9A1) - 35826081) ^ ((v11[96] ^ 0x8489F88A) + 2071332726) ^ ((v11[96] ^ 0x86AB5174) + 2035592844);
  STACK[0xE30] = (v74 + 1922647737) * (v74 + 1922647685) + 36;
  v75 = ((v11[54] ^ 0xB822C95A) + 1205679782) ^ (v11[54] + 1883720808) ^ ((v11[54] ^ 0x379A7A9D) - 932870813);
  LODWORD(STACK[0xE60]) = v75;
  LODWORD(STACK[0xE40]) = (v75 - 1052882890) * (v75 + 1052883080) + 239924881;
  LODWORD(STACK[0xE70]) = ((((v11[433] ^ v8) - 104) ^ ((v11[433] ^ 0x14) - 20) ^ ((v11[433] ^ 0xA) - 10)) + 118) * ((*v46 >> 1) ^ 6) + 13;
  v76 = -116 * (((v11[213] ^ 0x1F) + 97) ^ ((v11[213] ^ 0x34) - 52) ^ ((v11[213] ^ 0x34) + 12)) + 68;
  v77 = v76 & 4 | 0xEB;
  v11[218] ^= v76 ^ (2 * ((v76 ^ 0x30) & (2 * ((v76 ^ 0x30) & (2 * ((v76 ^ 0x30) & (2 * ((v76 ^ 0x30) & (2 * ((v76 ^ 0x30) & (2 * v77) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ 6;
  v78 = LODWORD(STACK[0xE90]) - 1424920415;
  v79 = (v78 ^ 0x9E) & (2 * (v78 & 0xDF)) ^ v78 & 0xDF;
  v11[246] = v78 ^ (2 * ((4 * (((2 * v78) ^ 0x3C) & (v78 ^ 0xDE))) & ((2 * v78) ^ 0x3C) & (v78 ^ 0xDE) & (16 * (((2 * v78) ^ 0x3C) & (v78 ^ 0xDE) & (4 * v79) ^ v79)) ^ ((2 * v78) ^ 0x3C) & (v78 ^ 0xDE) & (4 * v79) ^ v79)) ^ 0x80;
  v11[167] ^= v46[v11[93] & 0x3F ^ 0x1FLL] ^ 0xC;
  v11[82] = v11[139] & 0x20 | 0x4D;
  LOBYTE(v78) = v23 & 0xB0 ^ 0xC3;
  v11[144] = v23 ^ (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ 0x22) & (2 * ((v23 ^ 0x22) & 2 ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ 0xEF;
  v11[219] ^= v47 ^ 0xC;
  v80 = v11[336];
  v81 = (v45[v11[154] & 0x3F ^ 0x1FLL] ^ 0x2D) & (v80 ^ 0xFFFFFFF3) ^ v80 & v5;
  v82 = (v81 ^ 0x72 | v80 & 0xEEEEEEEE ^ 0xFFFFFFAE) ^ v81 & 0xFFFFFFA2;
  v83 = v11[321];
  v84 = ((v11[342] & v4) ^ 0x52 ^ (v83 & 0xC6 ^ (v83 ^ 0xFFFFFFF3) & (v11[77] ^ 0x66666666) ^ 0xF) & (v11[342] ^ 0xC)) & ~((v83 ^ 0xC) & (v11[77] ^ 0x3C) ^ v83 & 0x63) | ((v83 ^ 0xC) & (v11[77] ^ 0x3C) ^ v83 & 0x63) & 0xAD;
  v85 = (((v82 ^ v7) - 27) ^ ((v82 ^ 0xFFFFFFFE) + 2) ^ ((v82 ^ 0x65) - 101)) - (((v84 ^ 0xFFFFFF89) + 66) ^ ((v84 ^ 0xFFFFFF88) + 65) ^ ((v84 ^ 0x53) - 100)) + 57;
  v86 = v85 & 0x7A ^ 0x4C;
  LODWORD(STACK[0xE90]) = v85 ^ (2 * ((v85 ^ 0x60) & (2 * ((v85 ^ 0x60) & (2 * ((v85 ^ 0x60) & (2 * ((v85 ^ 0x60) & (2 * ((v85 ^ 0x60) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86));
  v70 >>= 17;
  LOBYTE(v86) = v70 & 0x1E ^ 0x9E;
  v11[236] = v70 ^ (2 * ((v70 ^ 0x60) & (2 * ((v70 ^ 0xE0) & (2 * ((v70 ^ 0xE0) & (2 * ((v70 ^ 0xE0) & (2 * ((v70 ^ 0xE0) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 0x41;
  LOWORD(v70) = v12[v11[149] & 0x3F ^ 0x1FLL];
  LOWORD(v70) = (((v70 ^ 0x7004) - 28676) ^ ((v70 ^ 0x6338) - 25400) ^ ((v70 ^ 0x134A) - 4938)) + 123;
  LOWORD(v86) = 171 * v70 + 28329;
  LOWORD(v70) = ((v70 > 0xD9u) << 7) | (v86 >> 9);
  LOWORD(v86) = v86 >> 9;
  v87 = v70 & 0xC7 ^ v86 & 0xCC;
  v11[18] ^= v70 ^ (2 * ((v86 ^ 0x46) & (2 * ((v86 ^ 6) & (2 * ((v86 ^ 6) & (2 * ((v86 ^ 6) & (2 * ((v86 ^ 6) & (2 * ((v86 ^ 6) & (2 * v87) ^ v87 ^ 0x62)) ^ v87 ^ 0x62)) ^ v87 ^ 0x62)) ^ v87 ^ 0x62)) ^ v87 ^ 0x62)) ^ v87 ^ 0x62)) ^ 0x8B;
  LOBYTE(v86) = v11[321];
  LOBYTE(v70) = (v46[v11[29] & 0x3F ^ 0x1FLL] ^ 0xBE) & (v86 ^ 0xF3);
  v88 = v46[v11[96] & 0x3F ^ 0x1FLL];
  v89 = (((v88 ^ 0xBCBC) + 17220) ^ ((v88 ^ 0x6439) - 25657) ^ ((v88 ^ 0xD889) + 10103)) + 15;
  v90 = (((v89 > 0x2Au) << 6) | ((205 * v89 - 8807) >> 10)) + 64;
  v11[451] ^= (v70 ^ v86 & 0xB2) & 0xBD ^ (v70 ^ v86 & 0xB2 ^ 0x40) & (v86 & 0xB2 ^ 0x42) ^ v90 ^ (2 * ((v90 ^ 8) & (2 * ((v90 ^ 8) & (2 * ((v90 ^ 8) & (2 * ((v90 ^ 8) & 0x28 ^ v90 & 0x60 ^ 0x7C)) ^ v90 & 0x60 ^ 0x7C)) ^ v90 & 0x60 ^ 0x7C)) ^ v90 & 0x60 ^ 0x7C)) ^ 0x92;
  LOBYTE(v75) = (((v11[28] ^ 0x3E) - 62) ^ ((v11[28] ^ 0xCD) + 51) ^ ((v11[28] ^ 0xAC) + 84)) + (((v11[203] ^ 0x26) - 38) ^ ((v11[203] ^ 0xF4) + 12) ^ ((v11[203] ^ v3) + 115)) - 60;
  v11[203] = v75 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v75 ^ 0x3A)) & 0x74 ^ 0xE) & (v75 ^ 0x3A))) ^ 0xE) & (v75 ^ 0x3A))) ^ 0xE) & (v75 ^ 0x3A))) ^ 0xE) & (v75 ^ 0x3A))) ^ 0xE) & (v75 ^ 0x7A))) ^ 0x51;
  LOBYTE(v75) = (((v11[394] ^ 0xCF) + 49) ^ ((v11[394] ^ 0x7A) - 122) ^ ((v11[394] ^ 0xC3) + 61)) + (((v11[496] ^ 0x6F) - 111) ^ ((v11[496] ^ 0xFC) + 4) ^ ((v11[496] ^ 0xC8) + 56)) + 13;
  LOBYTE(v70) = v75 & 0x17 ^ 0x29;
  v11[496] = v75 ^ (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * (((2 * v75) & 0xA ^ 0x52) & v75 ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0x4C;
  v91 = (((v11[474] ^ 0x38) - 56) ^ ((v11[474] ^ 0xFFFFFFEC) + 20) ^ ((v11[474] ^ 0xFFFFFF8F) + 113)) - (((v45[v11[3] & 0x3F ^ 0x1FLL] ^ v2) << (((v11[449] ^ 4) + 1) & 7)) ^ ((v45[v11[3] & 0x3F ^ 0x1FLL] ^ v2) >> (v11[449] & 7 ^ 3)) | (v11[94] >> 1) ^ 0x2F) - 102;
  LOBYTE(v70) = v91 & 0xC1 | 0x20;
  LOBYTE(v86) = v70 ^ v91 & 0xC0;
  v11[474] = v91 ^ (2 * ((v91 ^ 0x40) & (2 * ((v91 ^ 0x40) & (2 * ((v91 ^ 0x40) & (2 * ((v91 ^ 0x40) & (2 * ((v91 ^ 0x40) & (2 * ((v91 ^ 0x40) & (2 * v70) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 0x5A;
  LOBYTE(v91) = (((v11[439] ^ 0x28) - 40) ^ ((v11[439] ^ 0x88) + 120) ^ ((v11[439] ^ 0xD6) + 42)) - (((v11[321] ^ 0x20) - 32) ^ ((v11[321] ^ 0x86) + 122) ^ ((v11[321] ^ 0xAA) + 86)) - 115;
  LOBYTE(v70) = v91 & 0x6B ^ 0xCF;
  v11[439] = v91 ^ (2 * ((v91 ^ 0x5C) & (2 * ((v91 ^ 0x5C) & (2 * ((v91 ^ 0x5C) & (2 * ((v91 ^ 0x5C) & (2 * ((v91 ^ 0x5C) & (2 * (((2 * v91) & 0x3A ^ 0x36) & v91 ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0x1D;
  LOBYTE(v91) = v46[v11[221] & 0x3F ^ 0x1FLL];
  LOBYTE(v91) = v91 & 0x2B ^ *v46 & 0xC8 ^ (v91 ^ 0xC4) & (*v46 ^ 0x27);
  LOBYTE(v91) = (((v11[464] ^ 0x83) + 125) ^ ((v11[464] ^ 0x2C) - 44) ^ ((v11[464] ^ 0xF4) + 12)) + (v91 & 0xCC ^ 0x3B ^ (v91 ^ 0xF7) & (v45[v11[103] & 0x3F ^ 0x1FLL] ^ v8)) - 119;
  LOBYTE(v70) = (v91 & 0xD2 | 8) ^ v91 & 0x30;
  v11[464] = v91 ^ (2 * ((v91 ^ 0x50) & (2 * ((v91 ^ 0x50) & (2 * ((v91 ^ 0x50) & (2 * ((v91 ^ 0x50) & (2 * (v91 & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0xB9;
  v92 = (v11[478] ^ v2) + ((205 * (v11[458] ^ v2)) >> 10);
  LOBYTE(v70) = 2 * v92;
  LOBYTE(v92) = v92 + 53;
  LOBYTE(v86) = v92 & 0x7B ^ 0x58;
  LOBYTE(v92) = v92 ^ (2 * ((v92 ^ 0x4A) & (2 * ((v92 ^ 0x4A) & (2 * ((v92 ^ 0x4A) & (2 * ((v92 ^ 0x4A) & (2 * ((v92 ^ 0x4A) & (2 * ((v70 + 74) & (v92 ^ 2) & 0x16 ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 0x20;
  LOBYTE(v70) = v12[v11[165] & 0x3F ^ 0x1FLL];
  v11[478] = v92;
  v11[483] ^= (v11[497] & 0x4D ^ (v11[497] ^ 0xA4) & (v45[v11[35] & 0x3F ^ 0x1FLL] ^ 0xE9) ^ 0xFB) + (v11[380] & 0xF2 ^ 0xF2 ^ (v46[v11[37] & 0x3F ^ 0x1FLL] ^ 0xFE) & (v11[380] ^ 0xF3) | v70 & 0xB7 ^ 0x36 ^ (v70 ^ v5) & (v11[380] ^ 0xBB));
  LOBYTE(v70) = v11[22];
  LOBYTE(v92) = (v11[330] ^ 0x40) & ~v70;
  LOBYTE(v70) = (v11[369] & 0xA2 | v70 & 0x4C | v92 & 0x5D) ^ 0x4C;
  LOBYTE(v92) = ((LODWORD(STACK[0xE20]) + 7) & (~v11[95] | 0xFE)) + ((v70 - 2 * (v70 & 0x77 ^ v92 & 1) + 118) ^ v11[431]);
  v11[431] = v92 - ((2 * v92) & 0xEC) + 118;
  LOBYTE(v92) = (((v11[14] ^ 1) - 1) ^ ((v11[14] ^ 0x9D) + 99) ^ ((v11[14] ^ 0xC3) + 61)) + (((v11[49] ^ 0x6B) - 107) ^ ((v11[49] ^ 0x88) + 120) ^ ((v11[49] ^ 0xBC) + 68)) + 20;
  LOBYTE(v70) = v92 & 0xD6 ^ 0x16;
  v11[49] = v92 ^ (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * (((2 * v92) & 0x54 ^ 0x7C) & (v92 ^ 0x28) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0x89;
  LOBYTE(v92) = (v45[v11[1] & 0x3F ^ 0x1FLL] ^ 0x1D) & (LODWORD(STACK[0xE90]) ^ 0xC8) ^ STACK[0xE90] & 0x46;
  LOBYTE(v70) = v11[397];
  LOBYTE(v92) = (v92 ^ 0x40) & (v70 ^ 0xDD) ^ v92 & v6;
  v11[404] = (v92 & 0x5C | (v70 & 0xD3 ^ (v11[124] ^ 0x8C) & (v70 ^ 0x89) ^ 0x22) & ~v92) ^ 0xD5;
  LOWORD(v92) = ((v11[91] ^ 0x937) - 2359) ^ ((v11[91] ^ 0xDD11) + 8943) ^ ((v11[91] ^ 0xD479) + 11143);
  LOWORD(v70) = 205 * v92 - 1005;
  LOWORD(v92) = ((((v92 + 172) > 0xB0u) << 6) | (v70 >> 10)) + 96;
  v93 = ((31 - ((v70 & 0xFC00) >> 10)) & 0x28 | 0x41) ^ v92 & 0xD2;
  v94 = v92 ^ (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * ((v92 ^ 0x28) & (2 * (v92 & (2 * v93) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93));
  LOBYTE(v92) = (((v11[414] ^ 0x6E) - 110) ^ ((v11[414] ^ 0x87) + 121) ^ ((v11[414] ^ 0x9F) + 97)) - (v11[18] & 0x35 ^ 0x95 ^ (v11[18] & 0x7F ^ 0xDF) & (v11[468] ^ 0xEE) | v11[369] & 0x80) - 112;
  LOBYTE(v86) = v92 & 0x46 ^ 0x70;
  v11[414] = v92 ^ (2 * ((v92 ^ v9) & (2 * ((v92 ^ v9) & (2 * ((v92 ^ v9) & (2 * ((v92 ^ v9) & (2 * ((v92 ^ v9) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 0x30;
  v95 = (((v11[438] ^ 0x12) - 18) ^ ((v11[438] ^ 0xE) - 14) ^ ((v11[438] ^ 0x6A) - 106)) - (((v11[144] ^ 0xFFFFFFD3) + 45) ^ ((v11[144] ^ 0x61) - 97) ^ ((v11[144] ^ 0xFFFFFFED) + 19)) - (((205 * (((v11[394] ^ 0x506D) - 20589) ^ ((v11[394] ^ 0xE35D) + 7331) ^ ((v11[394] ^ 0xB346) + 19642)) - 29058) & 0xFC00) >> 10) + 89;
  LOBYTE(v90) = v95 & 0x20 ^ 0x3F;
  v11[438] = v95 ^ (2 * ((v95 ^ 0x4A) & (2 * ((v95 ^ 0x4A) & (2 * ((v95 ^ 0x4A) & (2 * ((v95 ^ 0x4A) & (2 * ((v95 ^ 0x4A) & (2 * ((v95 ^ 0x4A) & 0x2A ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ 0x56;
  LOBYTE(v95) = v11[330];
  LOBYTE(v90) = ((v95 ^ 0xB6) + 74) ^ ((v95 ^ 0x3C) - 60) ^ ((v95 ^ 0x86) + 122);
  LOBYTE(v95) = ((v95 ^ 0x18) - 24) ^ ((v95 ^ 0xAF) + 81) ^ ((v95 ^ 0xBB) + 69);
  v11[506] ^= ((v90 + 13) * (v95 + 67) + 71 * (119 * (a1 - v95) + 111 * v90) + 108) & 0xB5;
  v96 = (((v11[255] ^ 0x75) - 117) ^ ((v11[255] ^ 0x45) - 69) ^ ((v11[255] ^ 0x6F) - 111)) + (((v11[65] ^ 0x4D) - 77) ^ ((v11[65] ^ 0x37) - 55) ^ ((v11[65] ^ 0x25) - 37));
  LOBYTE(v95) = v96 - 50;
  v97 = ((49 - v96) & 0xE4 | 8) ^ (v96 - 50) & 0x58;
  v11[255] = v95 ^ (2 * ((v95 ^ v9) & (2 * ((v95 ^ v9) & (2 * ((v95 ^ v9) & (2 * ((v95 ^ v9) & (2 * ((v95 ^ v9) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ 0xE3;
  v98 = (((v11[244] ^ 0x14) - 20) ^ ((v11[244] ^ 0x8E) + 114) ^ ((v11[244] ^ 0xC5) + 59)) - 87;
  LOBYTE(v95) = v98 & 0xE3 ^ 0x38;
  v11[244] = v98 ^ (2 * ((v98 ^ v4) & (2 * ((v98 ^ v4) & (2 * ((v98 ^ v4) & (2 * ((v98 ^ v4) & (2 * ((v98 ^ v4) & (2 * ((v98 ^ v4) & (2 * v98) & 0x66 ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ 0xBC;
  v11[384] ^= v46[(v45[v11[251] & 0x3F ^ 0x1FLL] & 0x3D | (v45[v94 & 0x3F ^ 0x3ALL] & 2)) ^ v7] ^ 0xC;
  v99 = (v11[385] ^ v5) & (v11[181] ^ 0xB) ^ v11[385] & 0x54;
  LOBYTE(v95) = v45[v11[241] & 0x3F ^ 0x1FLL];
  LOBYTE(v90) = v12[v11[169] & 0x3F ^ 0x1FLL];
  v100 = (v90 ^ 0x89) & (v95 ^ 0x34) ^ v90 & 0x90;
  v101 = (((v99 ^ 0x17) + 119) ^ ((v99 ^ 0x8B) - 21) ^ ((v99 ^ 0xC8) - 86)) - (v100 & 0x84 ^ (v100 ^ 0x7F) & (v11[443] ^ 0xF2) ^ 4 | v90 & 0xC8 ^ (v90 ^ v5) & (v95 ^ 0x93) ^ 0x40) - 45;
  LOBYTE(v95) = v101 & 0xD1 ^ 0x35;
  LOBYTE(v90) = v101 ^ v5;
  v11[482] = v101 ^ (2 * (v90 & (2 * (v90 & (2 * (v90 & (2 * (v90 & (2 * (v90 & (2 * (((2 * v101) & 0x6E ^ 0x26) & (v101 ^ 0x66) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ 0x8A;
  v102 = 52429 * (*v45 ^ v2) * (*v45 ^ v2);
  v11[473] = (v102 >> 18) - ((v102 >> 17) & 0xB6) + 91;
  LOWORD(v102) = v45[v11[232] & 0x3F ^ 0x1FLL];
  LOWORD(v102) = (((v102 ^ 0x4131) - 16689) ^ ((v102 ^ 0x582) - 1410) ^ ((v102 ^ 0x44E8) - 17640)) + 186;
  LOWORD(v73) = 205 * v102 - 28691;
  LOWORD(v102) = ((v102 > 0x8Bu) << 6) | (v73 >> 10);
  LOWORD(v73) = (v73 >> 10) & 0xA ^ v102 & 0x49 ^ 0xFFCD;
  v11[415] = v102 ^ (2 * ((v102 ^ 0x48) & (2 * ((v102 ^ 8) & (2 * ((v102 ^ 8) & (2 * ((v102 ^ 8) & (2 * ((v102 ^ 8) & (2 * (((2 * (v102 & 0x49)) ^ 0xA) & (v102 ^ 8) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0x35;
  LOBYTE(v102) = v46[v12[v11[183] & 0x3F ^ 0x1FLL] & 0x3F ^ 0x36];
  LOBYTE(v73) = v12[v11[122] & 0x3F ^ 0x1FLL];
  LOBYTE(v95) = (v73 ^ 0x89) & (v102 ^ 0x9E) ^ v73 & 0x6D;
  v103 = (((v11[478] ^ 0x61) - 97) ^ ((v11[478] ^ 0x89) + 119) ^ ((v11[478] ^ 0xB3) + 77)) + (v95 & 0xAC ^ 0xA4 ^ (v95 ^ 0xF6) & (v11[420] ^ 0xDA) | v73 & 0xEC ^ v9 ^ (v73 ^ v5) & (v102 ^ 0xE0)) - 47;
  LOBYTE(v102) = v103 & 0x62 ^ 0xFC;
  v11[478] = v103 ^ (2 * ((v103 ^ 8) & (2 * ((v103 ^ 8) & (2 * ((v103 ^ 8) & (2 * ((v103 ^ 8) & (2 * (v103 & (2 * v103) & 0x14 ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ 0x39;
  LOBYTE(v102) = v12[v11[152] & 0x3F ^ 0x1FLL];
  v104 = (((v11[389] ^ 0x5A) - 90) ^ ((v11[389] ^ 9) - 9) ^ ((v11[389] ^ 0x25) - 37)) - (((v102 ^ v8) - 104) ^ ((v102 ^ 0xFA) + 6) ^ ((v102 ^ 0xE4) + 28)) + 84;
  LOBYTE(v73) = v104 & 0xC2 ^ v7;
  v11[389] = v104 ^ (2 * ((v104 ^ 0x2C) & (2 * ((v104 ^ 0x2C) & (2 * ((v104 ^ 0x2C) & (2 * ((v104 ^ 0x2C) & (2 * ((v104 ^ 0x2C) & (2 * ((v104 ^ 0x2C) & 0x2E ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0xB4;
  v105 = (((v11[43] ^ 0xFFFFFFB9) + 71) ^ -v11[43] ^ ((v11[43] ^ 0x19) - 25)) - 53;
  LOBYTE(v73) = v105 & 0x15 ^ 0x16;
  v106 = v105 ^ v8;
  v11[43] = v105 ^ (2 * (v106 & (2 * (v106 & (2 * (v106 & (2 * (v106 & (2 * (v106 & (2 * (v106 & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0x4A;
  v107 = v11[439];
  LOBYTE(v105) = (v107 ^ 0x82) & (v94 ^ 0xFA) ^ v94 & 0xF4;
  v11[197] ^= (((v105 | v107 & 0xB ^ 9) ^ 0xF0) - 2 * (((v105 | v107 & 0xB ^ 9) ^ 0xF0) & 0x11 ^ (v105 | v107 & 0xB ^ 9) & 1) + 16) ^ 0xEF;
  v108 = v11[387];
  v109 = v11[33];
  v110 = (v109 ^ 0x5F) & (v108 ^ 0xFFFFFFE2);
  v111 = (v12[v11[123] & 0x3F ^ 0x1FLL] ^ 0xFFFFFF85) & (v108 ^ 0xFFFFFF89) ^ v108 & 0xFFFFFFF3;
  v112 = (v111 ^ 0x7E) & (v109 & 0xFFFFFF94 ^ 0xFFFFFFED ^ v110) ^ v111 & 6;
  v113 = v11[144];
  v114 = (v112 ^ 6) & (v113 ^ 0xFFFFFFEC) ^ v112 & 0x4E;
  LODWORD(STACK[0xE20]) = (v112 ^ 0x59) & (v113 ^ 0x15) ^ v113 & 0xFFFFFFA0 ^ (v112 ^ 0x59) & 0x48;
  LODWORD(STACK[0xE90]) = ((LODWORD(STACK[0xE90]) ^ 0xFFFFFFE2) - 9) ^ ((LODWORD(STACK[0xE90]) ^ 0x4B) + 96) ^ ((LODWORD(STACK[0xE90]) ^ 0x61) + 118);
  LOBYTE(v112) = v46[v11[147] & 0x3F ^ 0x1FLL];
  LOBYTE(v85) = v11[19];
  LOBYTE(v73) = (v85 & 0x69 ^ 0xAB ^ (v85 ^ 0xA0) & (v112 ^ 0x9A)) & (v11[429] ^ v5) ^ v11[429] & 0x74;
  LOBYTE(v112) = (((v11[507] ^ 0x5C) + 36) ^ ((v11[507] ^ 0x18) - 24) ^ ((v11[507] ^ 0x1F) - 31)) - (*v45 & 0x82 ^ v4 ^ (v11[458] & 0xB2 ^ 0x22) & (*v45 ^ 0xA0) | *v45 & 0xC8 ^ 0x48 ^ (*v45 ^ v2) & (v11[458] ^ 0x93)) + (v73 & 0xDA ^ 0x75 ^ (v73 ^ 0x8B) & (v85 & 9 ^ 0x2C ^ (v85 ^ 0x5F) & (v112 ^ 5))) + 50;
  LOBYTE(v85) = v112 & 0xAD ^ 0x82;
  v115 = v46[STACK[0xE30] & 0x3F];
  STACK[0xE30] = v115;
  LOBYTE(v73) = v12[v115 & 0x3F ^ 0xC];
  v11[507] = v112 ^ (2 * ((v112 ^ 0x28) & (2 * ((v112 ^ 0x28) & (2 * ((v112 ^ 0x28) & (2 * ((v112 ^ 0x28) & (2 * ((v112 ^ 0x28) & (2 * (v112 & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ 0xF6;
  LOBYTE(v112) = v11[322];
  LOBYTE(v90) = (v11[146] ^ 0xCE) & (v112 ^ 0xF3) ^ v112 & 0x91;
  LOBYTE(v112) = v112 & 0x46 ^ v73 & 0x8C ^ (v73 ^ 0x30) & (v112 ^ 0x80) ^ 0xBA;
  v116 = (((v11[504] ^ v6) + 85) ^ ((v11[504] ^ 0xCA) + 54) ^ ((v11[504] ^ 0x3A) - 58)) + (v90 & 0x41 ^ v112 & 0xCA ^ (v90 ^ 0xA4) & v112 ^ 0xBF) + 111;
  LOBYTE(v112) = v116 & 0x2C ^ 0x20;
  v11[504] = v116 ^ (2 * ((v116 ^ 0x6C) & (2 * ((v116 ^ 0x6C) & (2 * ((v116 ^ 0x6C) & (2 * ((v116 ^ 0x6C) & (2 * v112) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ 0x77;
  v117 = v11[458] & 0x3F ^ v7;
  v118 = (((v11[438] ^ 0x61) - 97) ^ -v11[438] ^ ((v11[438] ^ 0xFFFFFFE8) + 24)) - (((v46[v117] ^ 0x23) - 35) ^ ((v46[v117] ^ v3) + 115) ^ ((v46[v117] ^ 0xFFFFFFA2) + 94)) - 35;
  LOBYTE(v112) = v118 & 0x99 ^ 0xE;
  v11[438] = v118 ^ (2 * ((v118 ^ 0xC) & (2 * ((v118 ^ 0xC) & (2 * ((v118 ^ 0xC) & (2 * ((v118 ^ 0xC) & (2 * ((v118 ^ 0xC) & (2 * ((v118 ^ 0xC) & (2 * v118) & 0x1A ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ 0xEF;
  LOBYTE(v118) = v46[v11[226] & 0x3F ^ 0x1FLL];
  LOBYTE(v112) = ((v118 ^ 0x21) - 33) ^ ((v118 ^ 0xC2) + 62) ^ ((v118 ^ 0xEF) + 17);
  LOBYTE(v118) = ((v118 ^ 0xE8) + 24) ^ ((v118 ^ 0xC8) + 56) ^ ((v118 ^ 0x2C) - 44);
  LOBYTE(v118) = (((v11[467] ^ 0xBB) + 69) ^ ((v11[467] ^ 0x6C) - 108) ^ ((v11[467] ^ 0x8C) + 116)) - (((v112 + 51) * (v118 - 1) - (103 * v118 + 51 * v112) + ((103 * v118 + 51 * v112) << 6) - 61) & 0x73) - 109;
  LOBYTE(v112) = v118 & 0x44 ^ 0x4E;
  v11[467] = v118 ^ (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * (v118 & (2 * v112) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ 0x1F;
  v119 = (v11[458] ^ v2) + 11;
  v11[398] = (v119 >> 1) - (v119 & 0xEC) + 118;
  v120 = ((*v12 ^ v5) << (~v11[214] & 7)) ^ ((*v12 ^ v5) >> ((v11[214] + 1) & 7));
  v121 = (((v11[478] ^ 0xFFFFFFCF) + 49) ^ ((v11[478] ^ 0x19) - 25) ^ ((v11[478] ^ v3) + 115)) - ((v120 >> ((LODWORD(STACK[0xE40]) * (LOBYTE(STACK[0xE60]) + 95)) & 7)) ^ (v120 << (-(LOBYTE(STACK[0xE40]) * (LOBYTE(STACK[0xE60]) + 95)) & 7))) - 62;
  LOBYTE(v120) = v121 & 0x4F ^ 0x7B;
  v11[478] = v121 ^ (2 * ((v121 ^ 0x18) & (2 * ((v121 ^ 0x18) & (2 * ((v121 ^ 0x18) & (2 * ((v121 ^ 0x18) & (2 * ((v121 ^ 0x18) & (2 * ((v4 & (2 * v121) ^ 0x56) & v121 ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ 0x14;
  v122 = *v45 ^ v2;
  v123 = v11[192];
  v124 = ((v123 ^ v2) - 91) ^ ((v123 ^ 0x86) + 122) ^ ((v123 ^ 0x82) + 126);
  v125 = (((v11[500] ^ 0xFFFFFFB0) + 80) ^ ((v11[500] ^ 0xFFFFFF99) + 103) ^ ((v11[500] ^ 0x72) - 114)) - 3 * ((v122 >> ((7 - v124) & 7 ^ (2 * v124) & 4 ^ 6)) ^ (v122 << (~v123 & 4) << (~v123 & 3))) + 122;
  LOBYTE(v122) = v125 & 0x99 ^ 0x5C;
  v11[500] = v125 ^ (2 * ((v125 ^ 0x60) & (2 * ((v125 ^ 0x60) & (2 * ((v125 ^ 0x60) & (2 * ((v125 ^ 0x60) & (2 * ((v125 ^ 0x60) & (2 * ((v125 ^ 0x60) & (2 * v125) & 0x42 ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ 0xC2;
  v126 = STACK[0xE70] & 9 ^ 0xFFFFFF8F;
  v127 = LODWORD(STACK[0xE70]) ^ 0x72;
  v11[474] = LODWORD(STACK[0xE70]) ^ (2 * (v127 & (2 * (v127 & (2 * (v127 & (2 * (v127 & (2 * (v127 & (2 * (((2 * LOBYTE(STACK[0xE70])) & 0x66 ^ 0x7A) & v127 ^ v126)) ^ v126)) ^ v126)) ^ v126)) ^ v126)) ^ v126)) ^ 0x52;
  v11[15] = v11[1];
  v128 = *STACK[0xED0];
  LODWORD(STACK[0xE60]) = v114 ^ 0xFFFFFFF9;
  LODWORD(STACK[0xE40]) = v114 & 0x71;
  v129 = v11[119] & 0x3F ^ 0x1FLL;
  STACK[0xEB0] = v12;
  LODWORD(STACK[0xE70]) = v12[v129];
  v130 = *(STACK[0xF18] + 8 * ((218 * ((((v128 ^ 0x514211B) - 85205275) ^ ((v128 ^ 0xEF699115) + 278294251) ^ ((v128 ^ 0x54341D49) - 1412701513)) == 1102467769)) ^ a2));
  v131 = v11[169];
  LODWORD(STACK[0xE10]) = v11[508];
  return v130(v131);
}

uint64_t sub_100697A4C()
{
  LODWORD(STACK[0x10EF0]) = v2 - 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0x22896E10) - (&STACK[0x10000] + 3800) + 1857767672) ^ 0x7E129DD1) + 477;
  STACK[0x10EE8] = v1;
  STACK[0x10EE0] = v0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 39028)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100697ADC(uint64_t a1)
{
  v3 = STACK[0xF18];
  STACK[0x27A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((v2 - 31962) ^ 0x7238)))(a1, v2 ^ 0x4B9Cu);
}

uint64_t sub_100697C10()
{
  v1 = (STACK[0xF10] - 24602) ^ 0x933;
  v2 = STACK[0xF10] - 21491;
  *(STACK[0x2140] - 0x10A99C80114D146FLL) = STACK[0x57B8];
  return (*(STACK[0xF18] + 8 * (((v1 + 53719) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_100697CB4()
{
  LODWORD(STACK[0x23D8]) = v0 ^ 0x3980AA17;
  LODWORD(STACK[0xA4C]) = HIDWORD(v0) ^ 0x99B73FB8;
  return (*(v1 + 41408))();
}

uint64_t sub_100697E94()
{
  v1 = STACK[0x7650];
  STACK[0xA450] = STACK[0x7650] + 624;
  *(v1 + 624) = STACK[0x9188];
  *(v1 + 632) = STACK[0x4B98];
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0x20EB) + v0)))();
}

uint64_t sub_100697EE4()
{
  v1 = STACK[0x2520];
  v2 = STACK[0x6E80];
  v3 = STACK[0x7B38];
  LODWORD(STACK[0x10EF0]) = v0 - 1022166737 * ((((&STACK[0x10000] + 3800) | 0xC23D7984) - ((&STACK[0x10000] + 3800) & 0xC23D7980)) ^ 0x782D9816) + 5797;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v2;
  STACK[0x10ED8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCE81)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_1006980B4()
{
  STACK[0x4388] = v1;
  if (v1)
  {
    v2 = STACK[0x7F14];
  }

  else
  {
    v2 = 371891397;
  }

  return (*(STACK[0xF18] + 8 * (((v2 == -371865839) * ((((v0 - 10703) | 0x4848) ^ 0xFFFFA9B0) + ((v0 + 1640935936) & 0x9E31AB3B))) ^ v0)))();
}

uint64_t sub_10069816C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = (((a2 ^ 0x29D59265) - 701862501) ^ ((a2 ^ 0xA3613132) + 1553911502) ^ ((a2 ^ 0x63616446) - 1667334213 + (v6 ^ 0x5FF))) - 1062979171;
  v8 = (((a6 ^ 0xC2EEF6EF) + 1024526609) ^ ((a6 ^ 0x3A36E66C) - 976676460) ^ ((a6 ^ 0x110DD792) - 286119826)) - 1062979171;
  v9 = v7 < 0xD6CE728C;
  v10 = v7 > v8;
  if (v8 < 0xD6CE728C != v9)
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((16638 * v10) ^ v6)))();
}

uint64_t sub_100698308()
{
  *STACK[0x6450] = STACK[0x2750];
  *STACK[0x51C8] = STACK[0x904C];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10069838C(int a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, int a7, int a8)
{
  v16 = *(v11 + ((a8 ^ 0x8D) + v9) % v8);
  LOBYTE(v16) = *(v13 + (v16 - ((v16 * a7) >> 13) * v10)) ^ 0xE5;
  v17 = *(v13 + (v16 - ((v16 * a7) >> 13) * v10));
  v18 = *(v13 + ((v12 ^ (60 * (a1 ^ 0xD3)) ^ 0xB1) - (((v12 ^ (60 * (a1 ^ 0xD3)) ^ 0xB1) * a7) >> 13) * v10)) ^ a8 ^ *(v11 + (a8 ^ 0x97u) % v8) ^ *(v11 + ((((v17 ^ 0xD27D98BB) + 763520837) ^ ((v17 ^ 0x52BFD7FA) - 1388304378) ^ ((v17 ^ 0x80C24FA4) + 2134749276)) + 229) % v8);
  *(v14 + a2) = a5 ^ a4 ^ a6 ^ v18 ^ 0xF1;
  v19 = v9 - (((v9 * v15) >> 32) >> 5) * v10;
  *(v13 + v19) ^= 0xA1 ^ v18 & a7;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100698514@<X0>(int a1@<W8>)
{
  v3 = a1 + 3389;
  v4 = (a1 + 2284) | 0x30;
  v5 = 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE4]) = v5 - 4611 + v3;
  LODWORD(STACK[0x10EE0]) = v1 - v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0x45A3)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EE8];
  LODWORD(STACK[0x97C8]) = STACK[0x10EE8];
  return (*(v6 + 8 * (((v8 == 1497668682) * (v3 ^ 0x489 ^ v4)) ^ v3)))(v7);
}

uint64_t sub_100698630()
{
  v3 = (v0 + 85) | 0x6E;
  v4 = v0 - 29245;
  v5 = STACK[0x8818];
  return (*(STACK[0xF18] + 8 * ((10465 * (((v2 ^ ((*v5 >> 8) & 0xFF00 ^ v1) & 0x77B7082 ^ 0xDBB2E091 ^ ((((*v5 << (v3 + 26)) ^ 0x6793677E) & (~(*v5 << 8) | 0xFF6CFFFF) | (*v5 << 8) & 0x6C0000) ^ 0x9F17E803) & ~((*v5 >> 8) & 0xFF00 ^ v1)) & ~HIBYTE(*v5) | HIBYTE(*v5) & 0x13) == 1178999438)) ^ v4)))();
}

uint64_t sub_100698764@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0xB600]) = a1;
  LOWORD(STACK[0xB602]) = v1;
  return (*(STACK[0xF18] + 8 * ((39771 * (v2 - (((LODWORD(STACK[0xED0]) ^ 0xBE7CCD6D) + 1099081560 + (v3 ^ 0x98E3)) ^ ((LODWORD(STACK[0xED0]) ^ 0x6578F0AE) - 1702424750) ^ (((((v3 + 16168) | 0x2C88) + 852589386) ^ LODWORD(STACK[0xED0])) - 852622034)) == 160932408)) ^ v3)))();
}

uint64_t sub_10069893C()
{
  v2 = (STACK[0xF10] + 381666364) & 0xE93FBBDE;
  v3 = STACK[0xF10] - 14246;
  LODWORD(STACK[0x86FC]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 + 50800) * v0) ^ v3)))();
}

uint64_t sub_1006989D8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x5548];
  STACK[0xB150] = STACK[0x5548];
  STACK[0xB158] = STACK[0x3280];
  STACK[0xB160] = STACK[0x6F48];
  STACK[0xB168] = STACK[0x9748];
  v4 = STACK[0x6D48];
  STACK[0xB170] = STACK[0x50C0];
  STACK[0xB178] = STACK[0x1930];
  STACK[0xB180] = STACK[0x3368];
  STACK[0xB188] = STACK[0x2DF8];
  STACK[0xB190] = STACK[0x3C78];
  STACK[0xB198] = STACK[0x5E58];
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB1A0] = v6;
  STACK[0xB1B0] = (v6 + 2048);
  STACK[0xB1A8] = (v6 + 1024);
  STACK[0xB1B8] = (v6 + 2080);
  STACK[0xB1C0] = (v6 + 2112);
  STACK[0x6C18] = v4;
  STACK[0xB1C8] = v4;
  STACK[0x7690] = v5 + ((v2 + 18551) ^ 0x96D6);
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((7 * (v2 ^ 0x496A)) ^ 0x158)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_100698BCC()
{
  v2 = STACK[0x15C8] - 0x217E172EFA1E804;
  STACK[0x2DA0] = STACK[0x15C8];
  STACK[0x43F8] = v1;
  STACK[0x6160] = v2;
  LODWORD(STACK[0x72A4]) = -1351817789;
  return (*(STACK[0xF18] + 8 * ((16234 * (v0 < 0x70254AC3)) ^ (v0 + 1009020049))))();
}

uint64_t sub_100698C5C()
{
  *STACK[0x4E70] = STACK[0x73B8];
  *STACK[0x19E0] = STACK[0x4950];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100698C88()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 33840)))(STACK[0x1B00]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100698CC0()
{
  v1 = STACK[0x78B0];
  v2 = STACK[0x6698];
  v3 = STACK[0x72EC];
  STACK[0x67D8] = STACK[0x78B0] + 36;
  STACK[0x1AD0] = v2;
  LODWORD(STACK[0x69C4]) = v3;
  STACK[0x4BB8] = v1 + 152;
  LODWORD(STACK[0x60B0]) = 228723846;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100698DB4()
{
  v1 = LODWORD(STACK[0x5C24]) == ((((v0 + 10310) | 0x91A) - 371899122) ^ (v0 + 7767556) & 0xFF89376D);
  LOBYTE(STACK[0x76AF]) = v1;
  return (*(STACK[0xF18] + 8 * ((62787 * v1) ^ v0)))();
}

uint64_t sub_100698E1C@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + 0x5E7C769A5558BD2DLL + (((*(v1 + 8) ^ 0xC8CA491FA2D2406) - 0xC8CA491FA2D2406) ^ ((*(v1 + 8) ^ 0xDD04EB0E5715F4B8) + 0x22FB14F1A8EA0B48) ^ (((59 * (v2 ^ 0x4DAD) + 0x107AFB19AFA2CB66) ^ *(v1 + 8)) + (v2 ^ 0xEF8504E6505C2207)));
  v5 = ((a1 - 0x51C41123A4456D63) < 0xFFF3C14B) ^ (v4 < 0xFFF3C14B);
  v6 = a1 - 0x51C41123A4456D63 > v4;
  if (v5)
  {
    v6 = (a1 - 0x51C41123A4456D63) < 0xFFF3C14B;
  }

  return (*(STACK[0xF18] + 8 * ((38 * !v6) ^ v2)))();
}

uint64_t sub_1006990B4@<X0>(int a1@<W3>, int a2@<W8>)
{
  v5 = (((v3 ^ 0x5E293640) - 1579759168) ^ ((v3 ^ 0x49304437) - 1227899959) ^ ((v3 ^ 0xFECCB566) + ((a2 - 86800117) & 0x17FFFF7C) + ((a2 - 13235) | 0x8B3A) - 295763165)) + 490460038;
  v6 = (v5 ^ 0xAC5DFB4F) & (2 * (v5 & 0xCC99F38E)) ^ v5 & 0xCC99F38E;
  v7 = ((2 * (v5 ^ 0xBC6DBF4F)) ^ 0xE1E89982) & (v5 ^ 0xBC6DBF4F) ^ (2 * (v5 ^ 0xBC6DBF4F)) & 0x70F44CC0;
  v8 = v7 ^ 0x10144441;
  v9 = (v7 ^ 0x60E00800) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xC3D13304) & v8 ^ (4 * v8) & 0x70F44CC0;
  v11 = (v10 ^ 0x40D00000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x30244CC1)) ^ 0xF44CC10) & (v10 ^ 0x30244CC1) ^ (16 * (v10 ^ 0x30244CC1)) & 0x70F44CC0;
  v13 = v11 ^ 0x70F44CC1 ^ (v12 ^ 0x444C00) & (v11 << 8);
  v16 = (((v5 ^ (2 * ((v13 << 16) & 0x70F40000 ^ v13 ^ ((v13 << 16) ^ 0x4CC10000) & (((v12 ^ 0x70B000C1) << 8) & 0x70F40000 ^ 0xB00000 ^ (((v12 ^ 0x70B000C1) << 8) ^ 0x744C0000) & (v12 ^ 0x70B000C1))))) & 0xFFFFFFFC ^ a1) == 0x4524AD1D || LODWORD(STACK[0xED0]) == v3) && v2 != v4;
  return (*(STACK[0xF18] + 8 * ((v16 | (8 * v16)) ^ a2)))();
}

uint64_t sub_1006992C4@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X6>, unint64_t a7@<X8>)
{
  STACK[0x5F18] = v12;
  STACK[0x5B08] = v13;
  STACK[0x69B0] = v11;
  STACK[0x55A0] = a7;
  STACK[0x10A0] = v7;
  LODWORD(STACK[0x8698]) = v8;
  STACK[0xFC8] = v10;
  LODWORD(STACK[0x2424]) = a1;
  STACK[0x6C80] = a3;
  STACK[0x2868] = a2;
  STACK[0x2638] = a4;
  STACK[0x3998] = a5;
  *(a6 + 1243) = v8 == ((v9 - 67666929) & 0xEDDDFFF7) - 2;
  return (*(STACK[0xF18] + 8 * v9))();
}

uint64_t sub_1006993F0()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] + 526;
  v4 = STACK[0xF10] - 3174;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  v5 = v3 - 870400826 + LODWORD(STACK[0x956C]) + v1;
  v6 = LODWORD(STACK[0x956C]) - 870364657;
  v7 = v5 < v2 + 627268382;
  v8 = v5 < v6;
  if (v6 < 0x2563E659 != v7)
  {
    v8 = v6 < 0x2563E659;
  }

  return (*(STACK[0xF18] + 8 * ((457 * !v8) ^ v4)))();
}

uint64_t sub_10069948C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((16655 * (v0 ^ 0xC46)) ^ 0x8A93) + v0)))();
}

uint64_t sub_1006994F0()
{
  v1 = ((v0 + 36346) | 0xA4) ^ LODWORD(STACK[0x7CA8]) ^ 0xC638F0F1;
  v2 = STACK[0x4830];
  STACK[0x8FE8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x704C]) = -2116087594;
  LODWORD(STACK[0x7FD8]) = 1685024359;
  LODWORD(STACK[0x4A8C]) = v1;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10069964C()
{
  *STACK[0x7118] = STACK[0x7328];
  **(v1 + 201) = STACK[0x26F0];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006997DC@<X0>(int a1@<W8>)
{
  v3 = *STACK[0xE58];
  v4 = *STACK[0xE50];
  v5 = *(STACK[0x2A98] + 40) - (*(v4 + (v3 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFFF6EC9423;
  v6 = *(v1 + 48) - (*(v4 + (v3 & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ v2) > 0xFFFFFFFFF6EC9423;
  v7 = 1022166737 * (&STACK[0x10ED8] ^ 0x7E8A727DBA10E192);
  STACK[0x10EF0] = v7;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (&STACK[0x10ED8] ^ 0x7E8A727DBA10E192);
  LODWORD(STACK[0x10EE4]) = v7 + a1 + 782565441;
  LODWORD(STACK[0x10EEC]) = a1 - 2091004933 - v7;
  LODWORD(STACK[0x10EE8]) = ((a1 - 2091004933) ^ 0xE8) + v7;
  STACK[0x10ED8] = v5 ^ v6 | v7;
  LODWORD(STACK[0x10EFC]) = v7 + a1 - 2091009768;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * SLODWORD(STACK[0x10EF8])))(v9);
}

uint64_t sub_10069994C()
{
  STACK[0x8568] = STACK[0x8998];
  STACK[0x7690] += (v0 - 1192537404) & 0x4714BB7B ^ 0x99EBLL;
  v1 = *(STACK[0xF18] + 8 * (v0 - 22885));
  STACK[0x4AE8] = STACK[0x12F8];
  return v1(22752, 0x1FFFFFFFF15B18CCLL, 72, 237, 22885, 43181, 245669874, 10360);
}

uint64_t sub_100699AA8()
{
  v1 = STACK[0xF18];
  STACK[0x92C8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x3215) + v0)))();
}

uint64_t sub_100699ADC()
{
  v2 = &STACK[0xC4D0] + STACK[0xEB0];
  STACK[0x7690] = STACK[0xEC0] - 26753 + ((v1 - 665) | 0x4C41u);
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xE958)))(*(&off_1010A0B50 + v1 - 5929) - 1552927598, v2 + 187, 202);
  v4 = (*(v3 + 8 * (v1 + 42792)))(*(&off_1010A0B50 + (v1 ^ 0x277B)) - 1949493102, v2 + 585, 379);
  *(v2 + 389) = 0x104A318C85D37426;
  *(v2 + 397) = 0xF0EC0D3CE53E4CA5;
  *(v2 + 405) = 0xB5947E11E088371BLL;
  *(v2 + 413) = 0xFBC66C2E73A3D275;
  *(v2 + 421) = 0xC0A7EA2A8ACC8E53;
  *(v2 + 429) = 0xD99B2F2E9979B242;
  *(v2 + 437) = 0x47E3F7719F958A5;
  *(v2 + 445) = 0x8096AC06E33851F1;
  *(v2 + 453) = 0xC6FED0F131CD80ALL;
  *(v2 + 461) = 0x59F24531E50471D6;
  *(v2 + 469) = 0xE802687E6EAF4EC8;
  *(v2 + 477) = 0x9938C268D2DFDB5;
  *(v2 + 485) = 0xFA1635AF4575DFA8;
  *(v2 + 493) = 0x55E89E0E45FD8158;
  *(v2 + 501) = 0xE666653B1C39D14ELL;
  *(v2 + 509) = 0x33134FA52B6B97F0;
  *(v2 + 517) = 0xA4CD66DC3FC434E7;
  *(v2 + 525) = 0x394AEFBC66DFC0A8;
  *(v2 + 533) = 0xBB01280F9A2A4C8CLL;
  *(v2 + 541) = 0xA61DB004CB1C6EC6;
  *(v2 + 549) = 0xA22AE4F2D03E88CELL;
  *(v2 + 557) = 0x3949ADD0CABB3792;
  *(v2 + 565) = 0xF1CF2E10EE66D577;
  *(v2 + 573) = 0x5D34B79372723783;
  *(v2 + 581) = -1693643731;
  return (*(v3 + 8 * ((46733 * ((v0 - 84) < 0x11u)) ^ v1)))(v4);
}

uint64_t sub_100699E64()
{
  v1 = STACK[0x4A90];
  *(v1 + 32) = 35;
  *v1 = 10;
  *(v1 + 40) = 0;
  STACK[0x4E48] = v1 + 40;
  return (*(STACK[0xF18] + 8 * (v0 - 3910)))();
}

uint64_t sub_100699F18()
{
  v1 = STACK[0x4EE0];
  v2 = STACK[0x6948];
  v3 = STACK[0x2D50] + 56;
  v4 = STACK[0x2658];
  v5 = 353670337 * ((((2 * (&STACK[0x10000] + 3800)) | 0x25DFD296) - (&STACK[0x10000] + 3800) - 317712715) ^ 0xA6CE1176);
  LODWORD(STACK[0x10EFC]) = v5 + v0 + 1478433140;
  LODWORD(STACK[0x10ED8]) = v5 ^ 0x8E46085;
  STACK[0x10EE0] = v3;
  STACK[0x10EE8] = v1;
  STACK[0x10F00] = v2 + 40;
  STACK[0x10F08] = (((v0 + 1130751149) & 0xBC99F37BLL) + 0x29DCF992F3800DB7) ^ &STACK[0xF28];
  STACK[0x10EF0] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0xFC83)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10EF8]) == -371865839) * ((v0 ^ 0xBCDC) - 35616)) ^ v0)))(v7);
}

uint64_t sub_10069A15C(uint64_t a1)
{
  *(a1 + 2216) = v3;
  *(a1 + 2228) = v1;
  *(a1 + 2232) = v4;
  STACK[0x7690] += 128;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10069A1C8()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((13520 * (v0 == 787560704)) ^ (v0 + 893))))();
}

uint64_t sub_10069A394()
{
  v3 = 1022166737 * ((((2 * (&STACK[0x10000] + 3800)) | 0x34F728C2) - (&STACK[0x10000] + 3800) + 1703177119) ^ 0x206B75F3);
  LODWORD(STACK[0x10EE0]) = v0 - v3;
  LODWORD(STACK[0x10EE4]) = v3 + v2 + 16436;
  STACK[0x10ED8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xF7DA)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EE8];
  LODWORD(STACK[0x8054]) = STACK[0x10EE8];
  return (*(v4 + 8 * (v2 | (8 * (v6 == (v2 ^ 0x59442A54 ^ (11881 * (v2 ^ 0x3D26))))))))(v5);
}

uint64_t sub_10069A59C()
{
  LODWORD(STACK[0x69AC]) = LODWORD(STACK[0xED0]) - 658232844 + LODWORD(STACK[0x3AC4]);
  v1 = STACK[0xF18];
  STACK[0x1C80] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 7736 + ((v0 + 628813763) & 0xDA856FFE))))();
}

uint64_t sub_10069A628()
{
  v1 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * (v0 - 39267));
  return (*(v1 + 8 * ((v0 - 39267) ^ 0xB4F4 ^ (v0 - 1512))))();
}

uint64_t sub_10069A71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a39)
{
  v41 = (v40 + 908);
  v42 = vld1q_dup_f32(v41);
  return (*(v39 + 8 * a3))(a1, a2, 19584, v42, a4, a5, a6, a39);
}

uint64_t sub_10069A840()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 9512)))(v2);
}

uint64_t sub_10069A86C()
{
  v0 = STACK[0xF10] ^ 0xE3CB;
  v1 = (STACK[0xF10] - 1157665422) & 0x450067DB;
  v2 = STACK[0xF10] + 6372;
  v3 = STACK[0x1D68];
  *(v3 + 48) = STACK[0xB96F];
  v4 = STACK[0xB954];
  STACK[0xED0] = v3;
  *(v3 + 64) = (((v4 ^ 0x2CE5F073) - 753266803) ^ (v1 - 1111636190 + (v4 ^ 0x4241D855)) ^ ((v4 ^ 0x8771EF37) + 2022576329)) - 371865505;
  return (*(STACK[0xF18] + 8 * (((v4 == v0 - 371892703) | (32 * (v4 == v0 - 371892703))) ^ v2)))();
}

uint64_t sub_10069A994()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] + 1824095878) ^ 0x6CBA35A9;
  v2 = (LODWORD(STACK[0xB10C]) + 3);
  v3 = STACK[0x4D80];
  STACK[0xA360] = STACK[0x4D80];
  STACK[0xA368] = v3 + v2;
  v4 = STACK[0x7690];
  STACK[0x8EF8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v4 + 32;
  LODWORD(STACK[0xA35C]) = v2;
  return (*(STACK[0xF18] + 8 * ((21 * (((v1 - 15449) & v2) == 0)) ^ (v0 - 8785))))();
}

uint64_t sub_10069AA2C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1570]) = v2;
  LODWORD(STACK[0x6C88]) = v1;
  return (*(STACK[0xF18] + 8 * ((11881 * (a1 ^ 0xA13) - 25541) ^ a1)))();
}

uint64_t sub_10069AAB4@<X0>(int a1@<W8>)
{
  v1 = a1 - 10585;
  v2 = 109 * ((a1 + 1762925013) & 0x96EBFCFF ^ 0x5D3C);
  LODWORD(STACK[0x10ED8]) = (a1 - 1762643479) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x5ACD839F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xA5327C60)) ^ 0x6BCC4EBB));
  STACK[0x10EE0] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 34067)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((45786 * (*STACK[0x970] > (v2 ^ 0x8B3B))) ^ v1)))(v4);
}

uint64_t sub_10069AC28()
{
  v1 = v0 - 28191;
  STACK[0x7690] += (v0 - 20003) ^ 0xFFFFFFFFFFFFD2C8;
  v2 = *STACK[0x3858];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3B1478A8) - 1156286291) ^ 0x5D326362) + 296753103;
  STACK[0x10ED8] = v2;
  LODWORD(v2) = v0 ^ 0x41F1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10069ACD4(int a1)
{
  v2 = a1 < ((11881 * (v1 ^ 0x2C4F)) ^ (327 * (v1 ^ 0x2C21)) ^ 0xE9D5C716);
  v3 = *(STACK[0xF18] + 8 * (((4 * v2) | (v2 << 7)) ^ v1));
  LODWORD(STACK[0xEC0]) = 1724701215;
  return v3();
}

uint64_t sub_10069ADB8()
{
  v0 = (STACK[0xF10] - 31194) ^ 0x9702;
  v1 = STACK[0xF10] + 528;
  v2 = STACK[0xAAE8];
  v3 = STACK[0xAAEF];
  LODWORD(STACK[0x1C6C]) = STACK[0xAAE8];
  LODWORD(STACK[0x195C]) = v2;
  return (*(STACK[0xF18] + 8 * ((((v3 & 1) == 0) * (v0 - 34375)) ^ v1)))();
}

uint64_t sub_10069AE0C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 318946173;
  LODWORD(STACK[0x4E04]) = v0;
  v3 = STACK[0x6110];
  v4 = (16 * LODWORD(STACK[0x26CC])) ^ 0xE9D5C711;
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = 430608795;
  return (*(STACK[0xF18] + 8 * ((16173 * (v2 < 0x45009BB6)) ^ (v1 - 30246))))();
}

uint64_t sub_10069AEF0()
{
  v0 = (STACK[0xF10] - 1419210316) & 0x5496FF9E;
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x8DE8];
  LODWORD(STACK[0xED0]) = v0;
  v3 = v2 + v0 - 7302;
  LODWORD(STACK[0x87D0]) = v3;
  LODWORD(STACK[0x8DE8]) = v3;
  STACK[0x77E8] = STACK[0x8EC8];
  LODWORD(STACK[0x44B4]) = STACK[0x61EC];
  LODWORD(STACK[0x2CE8]) = -2049827150;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10069B038()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8467)))(*(STACK[0x690] + 4), 21, STACK[0xAEC0], 552, STACK[0xAEC0], &STACK[0x3E08]);
  return (*(v2 + 8 * ((8555 * (((v0 - 20186) | 0x8B00) + v3 - ((2 * v3) & 0xD3AB8E22) - 371901482 == v1)) ^ v0)))();
}

uint64_t sub_10069B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (2 * STACK[0xF10]) ^ 0x14578;
  v8 = STACK[0xF10] - 31401;
  v9 = STACK[0xF18];
  STACK[0x8D40] = *(STACK[0xF18] + 8 * v8);
  return (*(v9 + 8 * (v8 ^ 0x1ED1 ^ v7)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10069B30C()
{
  v0 = STACK[0xF10] + 11439;
  v1 = STACK[0xF10] + 322;
  *STACK[0x7520] = STACK[0x76A0];
  return (*(STACK[0xF18] + 8 * (((*(STACK[0x7578] + 8) == -371866114) * ((v0 ^ 0x3B97) + v1 - 71925)) | v0)))();
}

uint64_t sub_10069B450()
{
  v0 = STACK[0xF10] + 118;
  LODWORD(STACK[0xAD7C]) = 371891400;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10069B4B8()
{
  STACK[0x10EF0] = &STACK[0x1B00];
  STACK[0x10EF8] = &STACK[0x6ABC];
  STACK[0x10EE0] = v0;
  LODWORD(STACK[0x10ED8]) = v1 - 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x69BEFDE0) - (&STACK[0x10000] + 3800) + 373359134) ^ 0x6D21494) + 20688;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 35727)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * ((((v1 - 13692) | 0x10A2) + 40687) ^ (v1 + 258))) ^ v1)))(v3);
}

uint64_t sub_10069B5E0()
{
  v1 = STACK[0x46C8];
  v2 = STACK[0x79D0];
  v3 = 155453101 * (((((&STACK[0x10000] + 3800) | 0x2625DD3E) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xD9DA22C1)) ^ 0x3FFC390E);
  LODWORD(STACK[0x10F00]) = v3 ^ 0x5AF81C38;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10EEC]) = v0 - v3 + 24760;
  STACK[0x10EF0] = &STACK[0x23FC];
  STACK[0x10EF8] = v1;
  LODWORD(STACK[0x10ED8]) = v3 ^ 0xE50053FB;
  LODWORD(STACK[0x10EDC]) = 980380847 - v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 33151)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EE8];
  LODWORD(STACK[0x546C]) = STACK[0x10EE8];
  return (*(v4 + 8 * ((59430 * (v6 == (((v0 ^ 0xC139) - 406024215) ^ 0xE18DC35))) ^ v0)))(v5);
}

uint64_t sub_10069B6EC()
{
  v1 = *(STACK[0x10F8] - 0x10A99C80114D147FLL);
  v2 = *(v1 - 0x217E172EFA1E81CLL);
  v3 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xB80EEA0) + 192999077) ^ 0x6616C159);
  LODWORD(STACK[0x10ED8]) = ((((*(v1 - 0x217E172EFA1E804) ^ (((109 * (v0 ^ 0xE5B)) ^ 0xE28F1017) + 828202588)) - 334297480) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x4BAA1F77) - 1269440375) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0xB19321EE) + 1315757586)) - 54746966) ^ v3;
  LODWORD(STACK[0x10EF8]) = v0 - v3 + 35909;
  STACK[0x10EF0] = v2;
  STACK[0x10F00] = v1 - 0x217E172EFA1E800;
  STACK[0x10EE8] = &STACK[0x24C4];
  STACK[0x10EE0] = &STACK[0x21CC];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 48040)))(&STACK[0x10ED8]);
  v6 = STACK[0x10F08];
  LODWORD(STACK[0x28BC]) = STACK[0x10F08];
  return (*(v4 + 8 * ((18271 * (v6 == -371865839)) ^ v0)))(v5);
}

void sub_10069BB4C(uint64_t a1)
{
  v1 = *(a1 + 16) + 353670337 * (((a1 | 0x4F31CCDF) - (a1 | 0xB0CE3320) - 1328663776) ^ 0xFB1034E2);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10069BC04@<X0>(int a1@<W8>)
{
  v3 = a1 - 5148;
  v4 = a1 - 13218;
  v5 = 1022166737 * ((2 * ((&STACK[0x10000] + 3800) & 0x5B5D9E40) - (&STACK[0x10000] + 3800) + 614621625) ^ 0x9EB2802B);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE4]) = v5 + v3 - 11624;
  LODWORD(STACK[0x10EE0]) = v1 - v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 8254)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EE8];
  LODWORD(STACK[0x7E78]) = STACK[0x10EE8];
  return (*(v6 + 8 * (((v8 != v3 + 1497624969) * (v4 ^ 0x8AFB)) ^ v3)))(v7);
}

uint64_t sub_10069BF2C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ v0)))();
  return (*(v2 + 8 * (v1 - 16436)))(v3);
}

uint64_t sub_10069C060()
{
  v3 = STACK[0x1764];
  v4 = 155453101 * (((~(&STACK[0x10000] + 3800) | 0xD6834A34) + ((&STACK[0x10000] + 3800) | 0x297CB5CB)) ^ 0xCF5AAE05);
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * (((~(&STACK[0x10000] + 3800) | 0x4A34) + ((&STACK[0x10000] + 3800) | 0xB5CB)) ^ 0xAE05);
  LODWORD(STACK[0x10ED8]) = (40409587 * v3 - 1378563772) ^ v4;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F04]) = v4 + 2069619737;
  LODWORD(STACK[0x10EF0]) = v4 ^ 0xE2FBFE53;
  LODWORD(STACK[0x10F08]) = v1 - v4 + 1777287309;
  LODWORD(STACK[0x10EF4]) = v4 ^ 0x7CD6B3C8;
  STACK[0x10F10] = v0;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C319834 ^ (327 * (v1 ^ 0xF61u));
  STACK[0x10EE0] = &STACK[0x203C];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC5E8)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((10163 * (LODWORD(STACK[0x10F0C]) == v2)) ^ v1)))(v6);
}

uint64_t sub_10069C250()
{
  v4 = v3 - 1;
  *(v0 + 4 * v4) = *(v1 + 4 * v4);
  return (*(STACK[0xF18] + 8 * (((2 * (((v2 ^ (v4 == 0)) & 1) == 0)) & 0xF7 | (8 * ((v2 ^ ~(v4 == 0)) & 1))) ^ v2)))();
}

uint64_t sub_10069C9B0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 41880)))((v0 + 1435713599) & 0xAA6CBFFB ^ LODWORD(STACK[0x326C]) ^ (((v0 - 7282) | 0x8400) - 371895908));
  STACK[0x8C40] = v2;
  return (*(v1 + 8 * ((59 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10069CAE8()
{
  v2 = ((2 * (v0 ^ 0x5BDD68DF ^ (109 * (v1 ^ 0x94D)))) ^ 0xCD66996A) & (v0 ^ 0x5BDD68DF ^ (109 * (v1 ^ 0x94D))) ^ (2 * (v0 ^ 0x5BDD68DF ^ (109 * (v1 ^ 0x94D)))) & 0xE6B34CB4;
  v3 = v2 ^ 0x22914495;
  v4 = (v2 ^ 0xC4220800) & (4 * ((2 * (v0 & 0xBD6EAF51)) & (v0 ^ 0x394CAF44) ^ v0 & 0xBD6EAF51)) ^ (2 * (v0 & 0xBD6EAF51)) & (v0 ^ 0x394CAF44) ^ v0 & 0xBD6EAF51;
  v5 = ((4 * v3) ^ 0x9ACD32D4) & v3 ^ (4 * v3) & 0xE6B34CB4;
  v6 = (v5 ^ 0x82810090) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x64324C21)) ^ 0x6B34CB50) & (v5 ^ 0x64324C21) ^ (16 * (v5 ^ 0x64324C21)) & 0xE6B34C90;
  v8 = v6 ^ 0xE6B34CB5 ^ (v7 ^ 0x62304800) & (v6 << 8);
  LODWORD(STACK[0x8BA0]) = (16 * ((v8 << 16) & 0x6B30000 ^ v8 ^ ((v8 << 16) ^ 0xCB50000) & (((v7 ^ 0x848304A5) << 8) & 0x6B30000 ^ 0x4B30000 ^ (((v7 ^ 0x848304A5) << 8) ^ 0x34C0000) & (v7 ^ 0x848304A5)))) ^ (8 * v0) ^ 0x228476CD;
  return (*(STACK[0xF18] + 8 * (v1 + 3045)))();
}

uint64_t sub_10069CE14()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -150715405;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10069CE78()
{
  LODWORD(STACK[0x566C]) = -371865839;
  LOBYTE(STACK[0x6735]) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10069CF2C@<X0>(int a1@<W8>)
{
  v2 = v1 ^ 0x3FFEC9C3;
  v3 = ((v2 ^ ~a1 ^ (565 * ((v2 - 1153416112) & 0x4C17EF3 ^ 0x1CBC))) & (a1 - v2) | a1 & ~v2) >= 0;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x3FFEE339 ^ ((v3 << 6) | (v3 << 7)))))();
}

void sub_10069D05C(uint64_t a1)
{
  v1 = 139493411 * (((a1 | 0xD155CAAB) - (a1 & 0xD155CAAB)) ^ 0xDD782BEE);
  v2 = *(a1 + 16) + v1;
  if (*(a1 + 8))
  {
    v3 = (*(a1 + 20) ^ v1) == 36028046;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10069D18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, unsigned int a49)
{
  v52 = *(&a37 + v49 + 72);
  v53 = ((2 * v49) & 0xFEFEFF70) + (v49 ^ 0xFF7F7FB9);
  *(v51 + v53 + 8421447) = (HIBYTE(v52) ^ 0x1D) - (((HIBYTE(v52) ^ 0x1D) << ((v50 ^ 0x82) - 108)) & 0xBE) + 95;
  *(v51 + v53 + 8421448) = (BYTE2(v52) ^ 0x7C) - ((2 * (BYTE2(v52) ^ 0x7C)) & 0xBF) + 95;
  *(v51 + v53 + 8421449) = (BYTE1(v52) ^ 0x86) - ((2 * (BYTE1(v52) ^ 0x86)) & 0xBF) + 95;
  *(v51 + v53 + 8421450) = v52 ^ 0x23;
  return (*(a8 + 8 * ((25071 * (v49 + 4 < a49)) ^ v50)))();
}

uint64_t sub_10069D27C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 6251)))(v2);
}

uint64_t sub_10069D2A8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x7149)))(260);
  v3 = STACK[0x358];
  STACK[0x3E8] = v2;
  return (*(v3 + 8 * (((v2 != 0) * ((693 * (v0 ^ 0xBBBE)) ^ 0xB2A1)) ^ v0)))();
}

uint64_t sub_10069D304(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v27 = (v26 + (v19 + a7 + 7461 - 1151633876));
  v27[10] = *(a19 + 1066);
  v27[9] = *(a19 + 1065);
  v27[8] = v20;
  v27[7] = v21;
  v27[6] = v22;
  v27[5] = v23;
  v27[4] = v24;
  v27[3] = a2;
  v27[2] = a3;
  v27[1] = a4;
  *v27 = a5;
  strcpy(v27 + 11, "Library/FairPlay/iTunes_Control/iTunes");
  v27[50] = 0;
  return (*(v25 + 8 * a7))();
}

uint64_t sub_10069D410()
{
  v1 = STACK[0xF10] - 2333;
  v2 = STACK[0xF10] - 32569;
  LODWORD(STACK[0x8D60]) = v0;
  v3 = STACK[0x3080];
  *(v3 + 1560) = *STACK[0x6B88];
  *(v3 + 1552) = *(STACK[0x6C60] - 0x13D44423310785C2);
  v4 = STACK[0x5770];
  v5 = STACK[0x3DF0];
  *(*v5 + 488) = *(STACK[0x5770] + 8);
  *(*v5 + 480) = *v4;
  v6 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v2);
  return (*(v6 + 8 * ((v1 ^ 0x8AD1) + v2)))();
}

uint64_t sub_10069D504(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v14 = *(v12 + 4 * ((v5 + 23 * (((-120 * (a5 ^ 0xAF)) ^ 7) + a4) + ((12 * (((-120 * (a5 ^ 0xAF)) ^ 7) + a4)) ^ 0x10)) & 0x1F)) ^ *(v9 + 4 * (v13 + a4 - ((((v13 + a4) * v10) >> 32) >> 3) * v11));
  v15 = v6 + a4 - ((((v6 + a4) * v10) >> 32) >> 3) * v11;
  *(v9 + 4 * v15) = 1218813273 * (*(v8 + 4 * ((a4 + 21) & 0x1F)) ^ *(v8 + 4 * ((a4 + 10) & 0x1F)) & ~*(v8 + 4 * ((a4 + 3) & 0x1F)) ^ *(v9 + 4 * v15) ^ __ROR4__(-1060735539 * (((v14 ^ 0x3AA341F2) - 2059103643) ^ ((v14 ^ 0x18747517) - 1483495806) ^ ((v14 ^ 0x19412AD1) - 1499006648)) - 1580149383, 11));
  return (*(STACK[0x228] + 8 * (a5 ^ (32 * (v7 != 8)))))();
}

uint64_t sub_10069D644(uint64_t a1, int a2)
{
  v5 = STACK[0xF18];
  STACK[0xE40] = *(STACK[0xF18] + 8 * v2);
  return (*(v5 + 8 * ((252 * ((((v3 ^ 0x614EA07) - 102033927) ^ ((v3 ^ 0xB682388) - 191374216) ^ ((v3 ^ 0xE4A90E9E) + ((v4 + 469691736) ^ 0xA989F1))) + 1291950575 != a2)) ^ (v4 - 10178))))();
}

uint64_t sub_10069D738(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v14) = *(*(&off_1010A0B50 + v7) + 4 * ((v4 ^ v12) ^ v6) + v8);
  LODWORD(v14) = HIDWORD(v14);
  *(a1 + 4 * v4) = LODWORD(STACK[0x214]) ^ a4 ^ v10 ^ (v14 >> 23) ^ v9 & ((v14 >> 23) >> 1);
  return (*(STACK[0x358] + 8 * (((v5 == 0) * v11) ^ v13)))();
}

uint64_t sub_10069DD88(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v81 = v66 - 129 * (((v66 * v70) >> 32) >> 3);
  v82 = *(a7 + 4 * (v69 & 0x1F));
  v83 = ((v81 << v71) & 0x98) + (v81 ^ 0xFFBFF3A6AFF5BD4CLL);
  v84 = v83 + 0x400C59500A4237;
  v85 = a8 + 4 * v83 + 0x100316540290AD0;
  v86 = (v72 + 4 * v84);
  if (v84 >= 0xFFFFFFFFFFFFFF83)
  {
    v86 = v85;
  }

  v87 = *v86;
  v88 = *(v80 - 32);
  v89 = *(v67 + 4 * v66);
  v90 = (v82 - 718131131 + (((v87 ^ 0x562007A0) - 1444939680) ^ ((v87 ^ 0xBF84C219) + 1081818599) ^ ((v87 ^ 0xDC34B9E8) + 600524312))) * (v88 - v89 - 372264001) - 482372372 * (v88 - v89);
  v91 = v88 + (((v87 ^ 0x2F128407) - 789742599) ^ ((v87 ^ 0xD0F4F3E8) + a5) ^ ((v87 ^ 0xCA760BBE) + 898233410));
  v92 = 457880378 * ((v91 + 526397456) * (v89 - v82 - 15248131) + 2114413091 * v91) + 1585096164 * v90;
  *v80 = v92 - 2078085453;
  v93 = ((v92 - 2078085453) ^ 0x33) + 129 - 129 * ((((((v92 - 2078085453) ^ 0x33u) + 129) * v70) >> 32) >> 3);
  v94 = ((2 * v93) & 0xBE) + (v93 ^ 0xFB6F9FBEFEDEBF5FLL);
  v95 = v94 + a6;
  v96 = (a8 + 4 * v94 + a2);
  if (v95 < 0xFFFFFFFFFFFFFF83)
  {
    v96 = (v72 + 4 * v95);
  }

  *(a7 + 4 * (v68 & 0x1F)) += (v92 - (((*v96 ^ a3) + a4) ^ ((*v96 ^ v73) + v74) ^ ((*v96 ^ v75) + v76))) * v77 + v78;
  return (*(STACK[0x228] + 8 * (((v66 == -31) * v79) ^ a66)))();
}

uint64_t sub_10069E174(int a1, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v18 = (*v8 + a5);
  v19 = *(*v14 + (*v13 & ((v9 & v16) + a1)));
  v20 = *v18;
  v21 = (*v8 + (a6 + v10));
  v22 = ((((v19 ^ v18) & 0x7FFFFFFF) * a2) ^ ((((v19 ^ v18) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  v23 = ((((v19 ^ v21) & 0x7FFFFFFF) * a2) ^ ((((v19 ^ v21) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  *v21 = *(v11 + (v22 >> 24)) ^ v20 ^ *(v15 + (v22 >> 24)) ^ *((v22 >> 24) + v17 + 2) ^ *(v11 + (v23 >> 24)) ^ *(v15 + (v23 >> 24)) ^ *((v23 >> 24) + v17 + 2) ^ v22 ^ v23 ^ (-5 * BYTE3(v22)) ^ (-5 * BYTE3(v23));
  return (*(v12 + 8 * (((v6 - 1 == a3) * a4) ^ v7)))();
}

uint64_t sub_10069E518()
{
  LODWORD(STACK[0x592C]) = LODWORD(STACK[0x64B0]) + LODWORD(STACK[0x59EC]) + LODWORD(STACK[0x592C]) - 1699451797;
  LODWORD(STACK[0x3F40]) = v1;
  return (*(STACK[0xF18] + 8 * ((10582 * (v1 == ((v0 - 68711341) ^ 0x123DD09F))) ^ (v0 + 3466))))();
}

uint64_t sub_10069E638()
{
  v2 = LODWORD(STACK[0x8498]) ^ (v0 - 969392561);
  STACK[0x8FE8] = *(STACK[0x6140] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087573;
  LODWORD(STACK[0x7FD8]) = 1801812256;
  LODWORD(STACK[0x4A8C]) = v2;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10069E774@<X0>(int a1@<W8>)
{
  v1 = a1 - 1568;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10069EA70()
{
  *v1 = *STACK[0x3E40] - ((*STACK[0x3E40] << ((v0 + 78) ^ 0xD8)) & 0xD3AB8E22) - 371865839;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x198F)))();
}

uint64_t sub_10069EB44()
{
  v3 = v1 - 28166;
  v4 = v0 + 1182492387;
  v5 = v4 < 0x53687ECE;
  v6 = v2 + 1358032742 < v4;
  if (v5 != (v2 + 1358032742) < 0x53687ECE)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((((v3 ^ 0x10BE) - 22712) * v6) ^ v3)))();
}

uint64_t sub_10069EBC0()
{
  v2 = STACK[0x2220];
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v1 + 460) == ((((v0 - 1519894671) & 0x5A97DFEE) - 30623) ^ 0x82410AC3);
  return (*(STACK[0xF18] + 8 * (v3 | (32 * v3) | v0)))();
}

uint64_t sub_10069EC5C()
{
  v2 = 139493411 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4352F790) + 1129510806) ^ 0x4F7F16D3);
  v3 = v2 - 70003816 + (((*(v0 + 260) ^ 0xF0E992E1) + 253127967) ^ ((*(v0 + 260) ^ 0xD26BFEF2) + 764674318) ^ ((((v1 - 32043) | 0x80C8) ^ 0x34A8DA26) + (*(v0 + 260) ^ 0xCB57AB02)));
  LODWORD(STACK[0x10EE0]) = v2 + v1 - 453;
  LODWORD(STACK[0x10EDC]) = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16820)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((78 * (LOBYTE(STACK[0x10ED8]) != 112)) ^ (v1 + 9732))))(v5);
}

uint64_t sub_10069EE10@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -549577680;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10069EEE8(int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  LODWORD(STACK[0x688]) = v11;
  v19 = STACK[0x658];
  v20 = (LODWORD(STACK[0x660]) ^ a6) & (v18 ^ 0x2D20679E);
  v21 = LODWORD(STACK[0x660]) ^ 0x26A524BB;
  v22 = STACK[0x660];
  LODWORD(STACK[0x638]) = STACK[0x660];
  v23 = v10;
  LODWORD(STACK[0x5F8]) = v10;
  LODWORD(STACK[0x658]) = a7;
  LODWORD(STACK[0x5EC]) = v19;
  v25 = (v10 ^ 0x80977BDF) & a2 ^ v16 & 0xA6325F64 ^ v19 ^ v18 & 0x5EA2AFFF ^ (v18 ^ 0x4B50ABC6) & (a7 ^ v19 ^ 0x5EA2AFFF) ^ v21 & a2;
  v26 = STACK[0x4C4];
  LODWORD(STACK[0x620]) = v18;
  v27 = (a7 ^ 0xBA5C5E8E) & a2 ^ v16 & 0xF10CF548 ^ v23 ^ v19 & 0xE91ADD55 ^ (v19 ^ 0x4B50ABC6) & (a2 ^ 0xE91ADD55) ^ v18 & v26;
  HIDWORD(v28) = v18;
  LODWORD(v28) = v18;
  v29 = (v28 >> 11) ^ __ROR4__(v18, 6);
  v31 = __PAIR64__(v16, __ROR4__(v18, 25));
  v30 = v29 ^ v31;
  v32 = (v15 - ((2 * v15) & 0x6B232A26) + 898733331) ^ v13 ^ v30;
  v33 = v27 ^ (v18 ^ 0x4B50ABC6) & (v23 ^ 0x72AFC996) ^ v22 & 0x6670CC58 ^ v20;
  LODWORD(v31) = v16;
  LODWORD(STACK[0x660]) = v16;
  v34 = (v31 >> 6) ^ __ROR4__(v16, 11) ^ __ROR4__(v16, 25) ^ 0x699D9480;
  v35 = ((v14 - ((2 * v14) & 0xB60E08FC) - 620297090) ^ v34) - v14;
  v36 = ((v9 ^ 0xFA37AD46) + 97014458) ^ ((v9 ^ 0x9AC6E661) + 1698240927) ^ ((v9 ^ 0x13F7D589) - 335009161);
  v37 = ((v8 ^ 0x2B1819D2) - 722999762) ^ ((v8 ^ 0x47061666) - 1191581286) ^ ((v8 ^ 0x4B4A98B7) - 1263179959);
  v38 = (((v12 - ((2 * v12) & 0xB60E08FC) - 620297090) ^ v34) - v12) ^ (v35 - ((2 * v35) & 0xA50FE224) - 762842862) ^ 0xD287F112 ^ ((((v32 ^ 0xFC205E8C) - 2 * ((v32 ^ 0xFC205E8C) & 0x5B07047F ^ v32 & 1) - 620297090) ^ v34) - (v32 ^ 0xFC205E8C));
  v39 = (v15 - ((2 * v15) & 0xE60D3D5C) + 1929813678) ^ v9;
  v40 = v13 - v39;
  v41 = (v13 - v39) ^ 0xBB8D2396;
  v42 = (v41 - ((2 * v41) & 0xFFA18072) + 2144387129) ^ (v39 + 219642725) ^ v33;
  v43 = v42 ^ 0x7453A0D2;
  v44 = (v42 ^ 0x7453A0D2) & 0x2F65A73F ^ v42 & 4;
  v45 = (v14 - ((2 * v14) & 0x4EA92E06) + 659855107) ^ v8;
  v46 = v41 + v39 + 219642725;
  v47 = (v25 ^ 0xAA27F71B ^ (v45 - ((2 * (v45 + 219642725)) & 0x5ECB4E76) + 1014833824)) - (v45 + 219642725);
  v48 = v12 - v45;
  v49 = (v8 ^ 0x27549703) - v45 + v12 - v45;
  v50 = ((v48 ^ v25 ^ 0x3ECF73B6) - (v48 ^ 0xBB8D2396)) ^ (v47 - ((2 * v47) & 0xF1AD748E) - 120145337) ^ 0xF8D6BA47 ^ (((v43 - 2 * v44 + 795191099) ^ v25 ^ 0xAA27F71B) - v43);
  v51 = (v9 ^ 0x73069EAE) - v39 + v40;
  v52 = (v48 ^ 0xBB8D2396) + v45 + 219642725;
  v53 = 19 * v11 + 3971;
  v54 = v11 ^ 0xFDAF4652 ^ *(STACK[0x4B8] + 4 * ((89 * (v11 ^ 8) + 6675) % 0xC0u));
  v55 = a1 + v36;
  v56 = STACK[0x6A8];
  v57 = a1 + LODWORD(STACK[0x648]) + (v30 ^ 0xC9B1CB9F) + v55 + v39 - 542347912 + *(STACK[0x6A8] + 4 * ((19 * v11 + 1349) % 0x114u)) + (((v11 ^ 0xF) - (v11 ^ 0xDC45767F)) ^ 0x55682B4C ^ *(STACK[0x4B8] + 4 * ((89 * (v11 ^ 0x35)) % 0xC0u)));
  v58 = -1451381537 - v55;
  LODWORD(STACK[0x5A8]) = -1451381537 - v55;
  v59 = (v55 + v39 - 542347912 - (v51 - 219642725) - 2081595122) ^ v46;
  LODWORD(STACK[0x5C0]) = v46;
  LODWORD(STACK[0x608]) = v59;
  v60 = (v46 ^ (v51 - 219642725)) - 1482902455;
  v61 = v60 ^ 0xFFE44BC0 ^ v59;
  v62 = v46 ^ 0xE48FFE4B ^ v61;
  v63 = v58 ^ v61 ^ 0x396FFAE5 ^ (v62 + v60 - ((2 * (v62 + v60)) & 0xDE44BBAC) + 1864523222);
  v64 = a4 + v37;
  v65 = v64 + v45 + 1739974631;
  LODWORD(STACK[0x5A0]) = -692994509 - v64;
  LODWORD(STACK[0x5B8]) = v52;
  v66 = (v65 - v49 - 607694672) ^ v52;
  LODWORD(STACK[0x690]) = v66;
  v67 = ((v49 - 219642725) ^ v52) - 1482902455;
  LODWORD(STACK[0x648]) = v52 ^ 0x1B6BB58B;
  v68 = v66 ^ v67;
  v69 = v66 ^ v67 ^ 0x6BD9FDC2;
  v70 = v69 ^ ((v52 ^ 0x1B6BB58B) - ((2 * (v52 ^ 0x1B6BB58B)) & 0xD7B3FB84) + 1809448386);
  v71 = v70 + v67;
  v72 = (-692994509 - v64) ^ v68 ^ 0xA11C0220 ^ (v70 + v67 - ((2 * (v70 + v67)) & 0x116BDDA6) + 146140883);
  LODWORD(STACK[0x568]) = v72;
  LODWORD(STACK[0x580]) = v62 - 290733394;
  v73 = v57 + (v33 ^ 0xB8360EB) - 281923982;
  LODWORD(STACK[0x5E4]) = v73;
  LODWORD(STACK[0x5B0]) = v70;
  v74 = v70 - 290733394;
  LODWORD(STACK[0x560]) = v70 - 290733394;
  v75 = (v70 - ((2 * (v70 - 290733394)) & 0xD7B3FB84) + 1518714992) ^ v69;
  v76 = (v62 + v60) ^ 0xB1380A2E;
  v77 = (v62 - ((2 * (v62 - 290733394)) & 0xFFC89780) - 292549010) ^ v61;
  LODWORD(STACK[0x604]) = v77;
  v78 = v77 + v76;
  v79 = (v63 - 1686462435) ^ v77;
  v80 = v78 ^ (v62 - 290733394);
  LODWORD(STACK[0x588]) = v79;
  v81 = v80 - v79 + 1828521130;
  LODWORD(STACK[0x540]) = v81;
  v82 = v78 ^ v79 ^ 0x463A89DB ^ (v81 - ((2 * v81) & 0x8C7513B6) + 1178241499);
  LODWORD(STACK[0x5F0]) = v75;
  v83 = v75 + (v71 ^ 0xB1380A2E);
  v84 = v83 ^ v74;
  v85 = (v72 - 1686462435) ^ v75;
  LODWORD(STACK[0x578]) = v85;
  v86 = (v83 ^ v74) - v85 + 1828521130;
  v87 = v86 - (v72 - 1686462435);
  LODWORD(STACK[0x550]) = v72 - 1686462435;
  LODWORD(STACK[0x548]) = v87;
  v88 = v87 + 1513150490 + (~(2 * v87) | 0x4B9E4FCD);
  LODWORD(STACK[0x558]) = 2 * v86;
  v89 = v83 ^ v85 ^ 0x95C05E9D ^ (v86 - ((2 * v86) & 0x2B80BD3A) - 1782554979);
  LODWORD(STACK[0x520]) = v63;
  LODWORD(STACK[0x538]) = v80 + v63;
  LODWORD(STACK[0x530]) = v80 + v63 - 1686462435;
  v90 = v81 - (v63 - 1686462435);
  LODWORD(STACK[0x570]) = v90;
  LODWORD(STACK[0x5C8]) = v80;
  LODWORD(STACK[0x598]) = v82;
  LODWORD(STACK[0x590]) = v63 - v82;
  v91 = STACK[0x698];
  v92 = LODWORD(STACK[0x698]) ^ v90 ^ 0xC3A86CB ^ (v63 - v82 - ((2 * (v63 - v82) + 1194843058) & 0x949701C2) + 1843883706);
  LODWORD(STACK[0x5E8]) = v72 - 1686462435 - v89;
  LODWORD(STACK[0x5D0]) = v89;
  v93 = ((v72 - 1686462435 - v89 - ((2 * (v72 - 1686462435 - v89 + 136400316)) & 0xB461B032) + 1649550805) ^ LODWORD(STACK[0x640])) - (v72 - 1686462435 - v89 + 136400316);
  v94 = v7 - a4 - v65 + v38 + v54 + *(v56 + 4 * (v53 % 0x114u)) + v50;
  v95 = v73 - v84 + v82 - 172209873 + (((v88 ^ LODWORD(STACK[0x640])) - (v86 - (v72 - 1686462435))) ^ (((v92 - ((2 * v92) & 0xB461B032) + 1513150489) ^ LODWORD(STACK[0x640])) - v92) ^ (v93 - ((2 * v93) & 0x71D27F0A) - 1192673403) ^ 0xB8E93F85);
  v96 = STACK[0x6B0];
  v97 = *(STACK[0x6B0] + (407 * (HIWORD(v95) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIWORD(v95) & 0xF) + 143671)) >> 32)));
  v98 = (v97 ^ 0xAFFF10) & ((*(STACK[0x6B0] + (407 * (v95 >> 28) + 143671 - 972 * ((4418691 * (407 * (v95 >> 28) + 143671)) >> 32))) << 12) ^ (*(STACK[0x6B0] + (407 * (HIBYTE(v95) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIBYTE(v95) & 0xF) + 143671)) >> 32))) << 8) ^ 0xA89A37) | v97 & 0xC8;
  LODWORD(STACK[0x518]) = v80 - 1773647558;
  LODWORD(STACK[0x5D8]) = v94 - 398109634;
  v99 = (v91 ^ 0xC671062A) + v80 - 1773647558 + v94 - 398109634 - v89 - 1212894003;
  v100 = (*(v96 + (407 * ((v95 >> 20) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v95 >> 20) & 0xF) + 143671)) >> 32))) << 12) ^ (v98 << 8);
  v101 = *(v96 + (407 * (HIWORD(v99) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIWORD(v99) & 0xF) + 143671)) >> 32)));
  v102 = (v101 | 0xFFFFFF01) & ((*(v96 + (407 * (v99 >> 28) + 143671 - 972 * ((4418691 * (407 * (v99 >> 28) + 143671)) >> 32))) << 12) ^ (*(v96 + (407 * (HIBYTE(v99) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIBYTE(v99) & 0xF) + 143671)) >> 32))) << 8) ^ 0xB5E502) | v101 & 0xFFFFFFFD;
  v103 = *(v96 + (407 * (v95 >> 12) + 143671 - 972 * ((4418691 * (407 * (v95 >> 12) + 143671)) >> 32)));
  v104 = *(v96 + (407 * ((v95 >> 8) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v95 >> 8) & 0xF) + 143671)) >> 32)));
  LODWORD(STACK[0x698]) = v100 ^ 0xFDDEBD;
  v105 = (v100 ^ 0xFDDEBD) & (v104 ^ 0xFFFFD2);
  LODWORD(STACK[0x640]) = v105;
  v106 = ((v105 | v104 & 0x42) << 8) ^ (v103 << 12);
  LODWORD(STACK[0x510]) = v106;
  LOBYTE(v103) = (v101 & 4) + ((v101 & 4 | 0xB3) ^ ((v101 & 4) + 69) ^ ((v101 & 4 ^ 0xFD) + 80)) - 100;
  LOBYTE(v100) = v103 & 0x1F ^ 0xB9;
  LOBYTE(v103) = v103 ^ (2 * ((v103 ^ 0x2C) & (2 * ((v103 ^ 0x2C) & (2 * ((v103 ^ 0x2C) & (2 * ((v103 ^ 0x2C) & (2 * ((v103 ^ 0x2C) & (2 * (((2 * v103) & 0x5A ^ 0x32) & v103 ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  v107 = *(v96 + (407 * ((v99 >> 8) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v99 >> 8) & 0xF) + 143671)) >> 32)));
  v108 = ((*(v96 + (407 * (v99 >> 12) + 143671 - 972 * ((4418691 * (407 * (v99 >> 12) + 143671)) >> 32))) ^ 0x2F) << ((v103 ^ 0xA7) & v17 ^ 8) << ((v103 ^ 0xA7) & 0xF4 ^ 0x30)) ^ (((*(v96 + (407 * ((v99 >> 20) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v99 >> 20) & 0xF) + 143671)) >> 32))) << 12) ^ (v102 << 8) ^ 0xF3A40C60) & (v107 ^ 0xFFFFFFD3) | v107 & 0xFFFFFF9F);
  v109 = 407 * (v99 >> 4) + 143671 - 972 * ((4418691 * (407 * (v99 >> 4) + 143671)) >> 32);
  v110 = *(v96 + (407 * (v99 & 0xF) + 143671 - 972 * ((4418691 * (407 * (v99 & 0xF) + 143671)) >> 32)));
  v111 = ((v108 << 8) ^ 0xD3F17370) & (v110 ^ 0xFFFFFF50) ^ (v110 & 0x80 | 0x10C82100);
  v112 = *(v96 + (407 * (v95 & 0xF) + 143671 - 972 * ((4418691 * (407 * (v95 & 0xF) + 143671)) >> 32)));
  LODWORD(STACK[0x4EC]) = v112;
  v113 = 407 * (((16 * v110) ^ 0xB01BA02F) & (v112 | 0xB01BA0F0) ^ 0xB01BA0DF);
  v114 = *(v96 + (v113 + 154253) % 0x3CC) ^ LODWORD(STACK[0x4C8]);
  LOBYTE(v109) = *(v96 + v109) ^ (v111 >> 4);
  v115 = 407 * (((v114 ^ 0x6E04D7F7) + 98316833) ^ ((v114 ^ 0xDCDBB9BF) - 1224516503) ^ ((v114 ^ 0xB2DF6C97) - 653817535));
  LODWORD(STACK[0x4E4]) = v115;
  v116 = *(v96 + (v113 + 290191) % 0x3CC) ^ (*(v96 + (v115 - 1976754624) % 0x3CC) >> 4);
  v117 = v106 ^ 0x218420 ^ (16 * *(v96 + (407 * (v95 >> 4) + 143671 - 972 * ((4418691 * (407 * (v95 >> 4) + 143671)) >> 32)))) ^ 0x37C10BA7;
  LODWORD(STACK[0x4F4]) = v117;
  v118 = ((v117 ^ v112) >> 4) ^ 0x1B6012F;
  LODWORD(STACK[0x500]) = v118;
  LODWORD(STACK[0x4F8]) = v118 & 0xF;
  v119 = (((16 * (v109 & 0xF)) ^ 0x8324FFC7) & (v118 & 0xF ^ 0xCF6FFFF5) | v118 & 8) ^ 0x8324FF4F;
  v120 = *(v96 + (v119 + 379) * (((v63 - v82 + 335) & 0x197 ^ 0x197) + ((v63 - v82 + 335) & 0x197)) % 0x3CC) ^ (16 * *(v96 + (407 * (((v116 ^ 0x41FFAE4C) - 1107275486) ^ ((v116 ^ 0x2C609CFA) - 744529000) ^ ((v116 ^ 0x6D9F329Bu) - 1839149577)) + 231990) % 0x3CC));
  v121 = (407 * v119 + 290191) % 0x3CC;
  v122 = 407 * (((v120 ^ 0x1761CD0) - 1830178073) ^ ((v120 ^ 0x3756432E) - 1530270439) ^ ((v120 ^ 0x36205D21) - 1514147048));
  LODWORD(STACK[0x4D8]) = v122;
  v123 = *(v96 + v121) ^ (*(v96 + (v122 + 1294501257) % 0x3CCu) >> 4);
  v124 = (v117 >> 8) & 0xF;
  LODWORD(STACK[0x4F0]) = v124;
  v125 = ((v109 | 0xFFFFFF7F) & (v124 ^ 0xF62BA98C) | v109 & 0x70) ^ 0xF62BA9FE;
  v126 = *(v96 + (407 * v125 + 154253) % 0x3CC) ^ (16 * *(v96 + (407 * (((v123 ^ 0x860E273D) + 2045892855) ^ ((v123 ^ 0x99C331FF) + 1715260981) ^ ((v123 ^ 0x1FCD16EF) - 533534427)) + 164428) % 0x3CC));
  LODWORD(STACK[0x4D0]) = v84;
  LODWORD(STACK[0x528]) = v84 + 1731964434;
  v127 = 407 * (((v126 ^ 0xA3645CDF) + 1195537749) ^ ((v126 ^ 0x52120986) - 1238097906) ^ ((v126 ^ 0xF1765786) + 357596686));
  LODWORD(STACK[0x4E0]) = v127;
  v128 = ((*(v96 + (v127 + 1196788076) % 0x3CC) >> 4) | 0x90) ^ *(v96 + (v125 + 713) * (((493 - v84) | (v84 + 1731964434)) & 0x197) % 0x3CC);
  v129 = (v106 ^ 0x8420) >> 12;
  LODWORD(STACK[0x4E8]) = v129;
  v130 = (407 * (((v128 ^ 0x92B4B9DD) + 1833649699) ^ ((v128 ^ 0x1EB088EE) - 514885870) ^ ((v128 ^ 0x8C04318E) + 1945882226)) + 231176) % 0x798;
  if (v130 >= 0x3CC)
  {
    v130 -= 972;
  }

  v131 = 407 * ((v108 & 0xE0 ^ 0xFFFFFF9F) & (v129 ^ 0x8AFBF6EA) ^ (v108 & 0x10 | 0x8AFBF6E6));
  v132 = *(v96 + (v131 + 154253 - 972 * ((4418691 * (v131 + 154253)) >> 32))) ^ (16 * *(v96 + v130));
  v133 = 407 * (((v132 ^ 0x51088F0E) + 542298208) ^ ((v132 ^ 0x2A5E56FA) + 1526991276) ^ ((v132 ^ 0x7B56DB2B) + 168592507));
  LODWORD(STACK[0x4D4]) = v133;
  LOBYTE(v131) = *(v96 + (v131 + 290191 - 972 * ((4418691 * (v131 + 290191)) >> 32)));
  v134 = (((v131 ^ (*(v96 + (v133 - 916869322) % 0x3CCu) >> 4)) ^ 0x4909DAC2) - 1225382523) ^ (((v131 ^ (*(v96 + (v133 - 916869322) % 0x3CCu) >> 4)) ^ 0x427823A7) - 1115169566) ^ (((v131 ^ (*(v96 + (v133 - 916869322) % 0x3CCu) >> 4)) ^ 0xB71F948) - 192018929);
  LOBYTE(v131) = v131 & 0x92;
  LOBYTE(v131) = (((v131 ^ 0x83) - 51) ^ ((v131 ^ 0xE) + 66) ^ ((v131 ^ 0x1D) + 83)) + (v131 ^ ((v131 ^ 0xF9) - 82) ^ ((v131 ^ 0xEB) - 64) ^ 0x55) + 16;
  v135 = v131 & 0x2F ^ 0x5B;
  v136 = (v106 ^ 0x218420u) >> 12;
  v137 = v131 ^ (2 * ((v131 ^ 0x38) & (2 * ((v131 ^ 0x38) & (2 * ((v131 ^ 0x38) & (2 * ((v131 ^ 0x38) & (2 * ((v131 ^ 0x38) & (2 * (((2 * v131) & 0x72 ^ 0x16) & v131 ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ 0xEF;
  v138 = (v136 ^ 0xBA32C) >> (v137 & 0x28) >> (v137 & 0xD7 ^ 0x56u);
  v139 = 407 * ((v138 & 0xF | (16 * ((v108 >> 8) & 0xF))) ^ 0x30);
  v140 = *(v96 + (v139 + 154253 - 972 * ((4418691 * (v139 + 154253)) >> 32))) ^ (16 * *(v96 + (407 * v134 + 214489) % 0x3CCu));
  v141 = 407 * (((v140 ^ 0x632DCD81) - 828752407) ^ ((v140 ^ 0x8B4A2237) + 654168671) ^ ((v140 ^ 0xE867ED69) + 1171266817));
  v142 = *(v96 + (v139 + 290191 - 972 * ((4418691 * (v139 + 290191)) >> 32))) ^ (*(v96 + (v141 - 795767650) % 0x3CC) >> 4);
  v143 = 407 * (((~(v138 >> 4) | 0xFFFFFFF0) & ((v108 >> 8) & 0xF0 ^ 0x2020D073) | 0x830100) ^ ((v138 >> 4) & 0xC | 0x20A3D1A3));
  v144 = *(v96 + (v143 + 154253) % 0x3CCu) ^ (16 * *(v96 + 407 * ((((v142 ^ 0x185030F3) - 407908372) ^ ((v142 ^ 0xB5EF00D1) + 1242628042) ^ ((v142 ^ 0xADBF300F) + 1379979032)) + (v138 & v17 ^ 0x17B) + (v138 & v17) + 202) % 0x3CC));
  v145 = 407 * (((v144 ^ 0x9227F505) + 407091548) ^ ((v144 ^ 0x65A85707) - 271836326) ^ ((v144 ^ 0xF78FA0DD) + 2112613508));
  STACK[0x508] = (407 * ((((*(v96 + (v143 + 290191) % 0x3CCu) ^ (*(v96 + (v145 - 91513631) % 0x3CC) >> 4)) ^ 0x1D111E38896EF3A2) - 0x1D111E38896EF33BLL) ^ (((*(v96 + (v143 + 290191) % 0x3CCu) ^ (*(v96 + (v145 - 91513631) % 0x3CC) >> 4)) ^ 0x6FF54E56724540C2) - 0x6FF54E567245405BLL) ^ (((*(v96 + (v143 + 290191) % 0x3CCu) ^ (*(v96 + (v145 - 91513631) % 0x3CC) >> 4)) ^ 0x72E4506EFB2BB34DuLL) - 0x72E4506EFB2BB3D4)) + 227513) % (((v138 >> 4) & 0x3CC ^ 0x3CC) + ((v138 >> 4) & 0x3CC));
  v146 = STACK[0x670];
  v147 = STACK[0x628];
  v148 = (LODWORD(STACK[0x670]) ^ 0xD8186B9E) & (LODWORD(STACK[0x628]) ^ 0x27D03943);
  v149 = STACK[0x678];
  v150 = STACK[0x680];
  v151 = STACK[0x668];
  v152 = LODWORD(STACK[0x668]) ^ 0xC671062A;
  v153 = (LODWORD(STACK[0x670]) ^ 0xBBF16C2F) & v152;
  v154 = (LODWORD(STACK[0x678]) ^ 0x35AC2A24) & v152;
  v155 = (LODWORD(STACK[0x670]) ^ 0xC671062A) & (LODWORD(STACK[0x678]) ^ 0x436C1C79);
  v156 = STACK[0x630];
  v157 = STACK[0x630] & 0x68776A8E ^ STACK[0x668] & 0x6F9CF23D;
  v158 = LODWORD(STACK[0x668]) ^ 0x14F23D3E;
  v159 = LODWORD(STACK[0x630]) ^ 0x5A30D819;
  LODWORD(STACK[0x60C]) = STACK[0x630];
  LODWORD(STACK[0x61C]) = v146;
  LODWORD(STACK[0x610]) = v149;
  LODWORD(STACK[0x670]) = v150;
  v160 = v157 ^ v158 & v159 ^ v150 & 0xE562681B ^ (v150 ^ 0x7C8557B0) & v159 ^ v147 & 0x1E696DB4 ^ v154 ^ (v147 ^ 0xC2B25158) & (v150 ^ 0xC671062A) ^ v146 & 0x195CC460 ^ v148 ^ v155 ^ 0xD654CDB6;
  v161 = v151 & 0x7D806A05 ^ v156 & 0x5AA478A ^ v150 & 0x1096F96C ^ (v150 ^ 0xC671062A) & (v151 ^ 0xBB5D6D2A) ^ v149 & 0xECD867AD ^ (v149 ^ 0x5A30D819) & (v156 ^ 0x6CC9A00D) ^ (v147 ^ 0xFDF126FA) & (v149 ^ 0x5A30D819) ^ (v147 ^ 0x227A7EC9) & v159 ^ (v146 ^ 0xABCB9446) & (v150 ^ 0xC671062A) ^ v153;
  v162 = LODWORD(STACK[0x5C0]) ^ LODWORD(STACK[0x5A8]);
  HIDWORD(v163) = v151;
  LODWORD(v163) = v151;
  LODWORD(STACK[0x680]) = v151;
  v164 = (v163 >> 13) ^ __ROR4__(v151, 22) ^ __ROR4__(v151, 2) ^ 0x44D2D91B;
  v165 = (v164 - ((2 * v164) & 0xA4343F38) - 770039908) ^ v162 ^ 0x60D846E4;
  HIDWORD(v163) = STACK[0x654];
  LODWORD(v163) = STACK[0x654];
  v166 = (v163 >> 2) ^ __ROR4__(STACK[0x654], 13);
  LODWORD(STACK[0x678]) = STACK[0x654];
  v167 = v166 ^ __ROR4__(HIDWORD(v163), 22);
  v168 = (v167 ^ 0xC39F08EA ^ (v165 - ((2 * v165) & 0x2D731404) - 1766225406)) - v165;
  v169 = (v167 ^ 0x4E4D3763 ^ LODWORD(STACK[0x5B8])) - LODWORD(STACK[0x648]);
  v170 = (v167 ^ 0xFC8F6E1B ^ LODWORD(STACK[0x5A0])) - (LODWORD(STACK[0x5A0]) ^ 0xA9A9ECF3);
  v171 = v169 ^ (v170 - ((2 * v170) & 0x6136579E) + 815475663) ^ 0x309B2BCF ^ v168;
  v172 = LODWORD(STACK[0x580]) ^ v161 ^ 0x896E6669 ^ (LODWORD(STACK[0x520]) - ((2 * LODWORD(STACK[0x520])) & 0xA9CC880) - 2058460096);
  v173 = ((LODWORD(STACK[0x5B0]) - 2 * (STACK[0x560] & 0x1A04AABD ^ STACK[0x5B0] & 1) + 145780074) ^ v160) - LODWORD(STACK[0x560]);
  v174 = (v172 - ((2 * v172) & 0x34095578) + 436513468) ^ v160;
  v175 = ((LODWORD(STACK[0x568]) - ((2 * LODWORD(STACK[0x568])) & 0x34095578) + 436513468) ^ v160) - LODWORD(STACK[0x568]);
  v176 = v173 ^ (v174 - v172);
  v177 = LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x540]) ^ 0xEC3E51F7 ^ (LODWORD(STACK[0x538]) - ((2 * LODWORD(STACK[0x530])) & 0x4EDDF462) + 1122605646);
  v178 = v176 ^ (v175 - ((2 * v175) & 0x5A66DF2E) + 758345623) ^ 0x2D336F97;
  v179 = STACK[0x4D0];
  v180 = ((LODWORD(STACK[0x550]) + LODWORD(STACK[0x4D0]) - ((2 * (LODWORD(STACK[0x550]) + LODWORD(STACK[0x4D0]))) & 0x92FE176) - 2070417221) ^ LODWORD(STACK[0x5F8])) - (LODWORD(STACK[0x550]) + LODWORD(STACK[0x4D0]));
  v181 = (((v177 - ((2 * v177) & 0x92FE176) - 2070417221) ^ LODWORD(STACK[0x5F8])) - v177) ^ (((v86 - (STACK[0x558] & 0x92FE176) - 2070417221) ^ LODWORD(STACK[0x5F8])) - v86) ^ (v180 - ((2 * v180) & 0x31211B28) + 412126612);
  LODWORD(STACK[0x648]) = (((LODWORD(STACK[0x5EC]) ^ 0xE3BD4DE7) + 474133017) ^ ((LODWORD(STACK[0x5EC]) ^ 0x77D77B6C) - 2010610540) ^ ((LODWORD(STACK[0x5EC]) ^ 0xDF3A9D4D) + 549806771)) + 914052188 + LODWORD(STACK[0x588]);
  v182 = LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x518]);
  v183 = LODWORD(STACK[0x548]) ^ (v179 - 1773647558);
  LODWORD(STACK[0x668]) = (v181 ^ 0x18908D94) - LODWORD(STACK[0x578]);
  v184 = (LODWORD(STACK[0x4E4]) - 1976890562) % 0x3CCu;
  v185 = LODWORD(STACK[0x4D8]) + 1294365319;
  v186 = 407 * (((v108 >> 12) & 0xF0 | (v138 >> 8) & 0xF) ^ 0xC0);
  LODWORD(STACK[0x588]) = v186 + 154253 - 972 * ((4418691 * (v186 + 154253)) >> 32);
  LODWORD(STACK[0x5B0]) = v186 + 290191 - 972 * ((4418691 * (v186 + 290191)) >> 32);
  v187 = 407 * ((HIWORD(v108) & 0xF0 | (v138 >> 12)) ^ 0x90) + 154253;
  LODWORD(STACK[0x5B8]) = v187 - 972 * ((4418691 * v187) >> 32);
  v188 = *(v96 + v184) ^ 0xE56547BD;
  v189 = ((16 * v188) & 0xF0 ^ 0xFFFFFF9F) & (STACK[0x4EC] & 0xF ^ 0xBA2F3DBD);
  v190 = v188 ^ (16 * *(v96 + v185 % 0x3CC));
  v191 = 407 * (v189 ^ ((((v188 >> 2) & 1) << 6) | 0xBA2F3DB2)) + 9768 - 972 * ((4418691 * (407 * (v189 ^ ((((v188 >> 2) & 1) << 6) | 0xBA2F3DB2)) + 9768)) >> 32);
  v192 = STACK[0x598];
  v193 = v182 - LODWORD(STACK[0x598]);
  v194 = (*(v96 + (LODWORD(STACK[0x4D4]) - 917005260) % 0x3CCu) << 12) ^ (*(v96 + (LODWORD(STACK[0x4E0]) + 1196652138) % 0x3CCu) << 8);
  v195 = ((((v190 & 0xF0 ^ 0x4B2EBAFE) & (LODWORD(STACK[0x4F8]) ^ 0x6BAFFAF5) & 0xFFFFFFFE | STACK[0x500] & 1) ^ 0x4B2EBA9E) + 24) * (((v193 + 1731964549) & 0x197 ^ 0x197) + ((v193 + 1731964549) & 0x197)) % 0x3CC;
  v196 = v190 ^ 0x629AED9C ^ v194;
  v197 = v196 ^ (*(v96 + (v141 - 795903588) % 0x3CC) << 16);
  v198 = (*(v96 + (407 * ((((v194 >> 8) & 0xF0 ^ 0x9CEC87B2) & (LODWORD(STACK[0x4E8]) ^ 0xBCFDF7FB) | v136 & 0xD) ^ 0x9CEC876E) + 9768) % 0x3CC) << 12) ^ (*(v96 + (407 * ((((v196 >> 4) & 0xF0 ^ 0x3C184973) & (LODWORD(STACK[0x4F0]) ^ 0x3EDCC9F9) | (LODWORD(STACK[0x4F4]) >> 8) & 0xC) ^ 0x3C184903) + 9768) % 0x3CC) << 8);
  v199 = (LODWORD(STACK[0x4E8]) ^ 3) + (LODWORD(STACK[0x4E8]) ^ 0xC);
  v200 = (v199 & 0x18 | 0x20) ^ v199 & (HIWORD(LODWORD(STACK[0x510])) ^ 0xB);
  v201 = v197 ^ (*(v96 + (v145 - 91649569) % 0x3CC) << 20);
  LODWORD(STACK[0x5A0]) = v201;
  v202 = (*(v96 + (407 * (v200 ^ (v197 >> 12) & 0xF0) + 9768) % 0x3CC) << 16) ^ (*(v96 + (407 * (((HIWORD(v201) & 0x30 ^ 0xFFFFFF1F) & ((LODWORD(STACK[0x698]) >> 12) ^ 0x33D2737) | HIWORD(v201) & 0xC0) ^ 0x33D2736) + 9768) % 0x3CC) << 20);
  v203 = *(v96 + v191);
  v204 = v203 ^ (16 * *(v96 + v195));
  v205 = v204 ^ 0x24A37CAD ^ v198;
  v206 = v202 ^ v205 ^ 0x45E44DBF;
  LOWORD(v145) = 407 * (((v198 & 0xF000) >> 12) ^ 0xD) - 972 * (((3512817 * (((v198 & 0xF000) >> 12) ^ 0xDu)) >> 16) >> 7);
  LOWORD(v202) = 407 * ((v205 >> 8) & 0xF ^ 1) - 972 * (((3512817 * ((v205 >> 8) & 0xF ^ 1)) >> 16) >> 7);
  v207 = LODWORD(STACK[0x5E8]) + 1004282591;
  LODWORD(STACK[0x654]) = v207 ^ *(v96 + (407 * (((v203 & 0xF ^ 0x6FD68CCD) - 1876331619) ^ ((v203 & 0xF ^ 0x43993D2D) - 1134116227) ^ ((v203 & 0xF ^ 0x2C4FB1EFu) - 743420225)) + 65527) % 0x3CC) ^ (16 * *(v96 + (407 * ((v204 >> 4) ^ 0xD) - 972 * (((3512817 * ((v204 >> 4) ^ 0xDu)) >> 16) >> 7))));
  v208 = LODWORD(STACK[0x604]) - LODWORD(STACK[0x690]) + (v161 ^ 0xC200229) + v171 + LODWORD(STACK[0x5E4]);
  v209 = LODWORD(STACK[0x5C8]) + 1731964434;
  v193 += 1731964434;
  v210 = LODWORD(STACK[0x590]) - 682179844;
  LODWORD(STACK[0x5C8]) = v192 - 2072869573;
  LODWORD(STACK[0x690]) = v95 ^ v210;
  v211 = v193 ^ v209;
  LODWORD(STACK[0x630]) = v193 ^ v209;
  v212 = v193 ^ (v192 - 2072869573);
  LODWORD(STACK[0x5F8]) = (v211 ^ 0x2D856DE2) + v212;
  LODWORD(STACK[0x5C0]) = (v210 ^ 0x983C263D) - v212;
  v213 = v208 + 1521394393;
  v214 = (v192 - 2072869573) ^ 0x83D26B3E;
  LODWORD(STACK[0x5EC]) = v214;
  v215 = v213 + v214;
  v216 = 407 * ((v213 + v214) >> 28) + 143671 - 972 * ((4418691 * (407 * ((v213 + v214) >> 28) + 143671)) >> 32);
  v217 = v183 - LODWORD(STACK[0x5D0]) + 1731964434;
  v218 = LODWORD(STACK[0x5D0]) - 2072869573;
  v219 = v217 ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x628]) = v219;
  v220 = v217 ^ v218;
  LODWORD(STACK[0x604]) = v218;
  LODWORD(STACK[0x5E8]) = (v207 ^ 0x983C263D) - v220;
  LODWORD(STACK[0x5E4]) = (v219 ^ 0x2D856DE2) + v220;
  v221 = v164 + LODWORD(STACK[0x608]) - LODWORD(STACK[0x5F0]) + LODWORD(STACK[0x5D8]);
  LODWORD(STACK[0x608]) = v218 ^ 0x83D26B3E;
  v222 = (*(v96 + (407 * (HIBYTE(v215) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIBYTE(v215) & 0xF) + 143671)) >> 32))) << 8) ^ (*(v96 + v216) << 12) | *(v96 + (407 * (HIWORD(v215) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIWORD(v215) & 0xF) + 143671)) >> 32)));
  LODWORD(STACK[0x5D8]) = v222;
  v223 = v221 - (v218 ^ 0x83D26B3E) + v178 - 385178531;
  v224 = *(v96 + (407 * ((v215 >> 8) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v215 >> 8) & 0xF) + 143671)) >> 32)));
  v225 = (v222 << 16) ^ (*(v96 + (407 * ((v215 >> 20) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v215 >> 20) & 0xF) + 143671)) >> 32))) << 20);
  LODWORD(STACK[0x598]) = v225;
  v226 = ((v224 << 8) ^ 0xFFFF8000) & (v225 ^ 0x9703A000);
  LODWORD(STACK[0x5A8]) = v206;
  v227 = ((HIWORD(v206) & 7 ^ 2) + (HIWORD(v206) & 7 ^ 0x195)) * (HIWORD(v206) & 0xF ^ 0xA);
  v228 = *(v96 + (407 * (HIWORD(v223) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIWORD(v223) & 0xF) + 143671)) >> 32)));
  v229 = (v228 ^ 0xFFFFFFF1) & ((*(v96 + (407 * (v223 >> 28) + 143671 - 972 * ((4418691 * (407 * (v223 >> 28) + 143671)) >> 32))) << 12) ^ (*(v96 + (407 * (HIBYTE(v223) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIBYTE(v223) & 0xF) + 143671)) >> 32))) << 8) ^ 0x27C65E) ^ (v228 & 0xA1 | 0xA200);
  v230 = *(v96 + (407 * ((v223 >> 8) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v223 >> 8) & 0xF) + 143671)) >> 32))) ^ (16 * *(v96 + (407 * (v223 >> 12) + 143671 - 972 * ((4418691 * (407 * (v223 >> 12) + 143671)) >> 32))));
  v231 = ((*(v96 + (407 * ((v223 >> 20) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v223 >> 20) & 0xF) + 143671)) >> 32))) << 20) | (v230 << 8)) ^ (v229 << 16);
  v232 = *(v96 + (407 * (v223 & 0xF) + 143671 - 972 * ((4418691 * (407 * (v223 & 0xF) + 143671)) >> 32)));
  v233 = ((v231 ^ 0xC1E712D) & (v232 ^ 0xFFFFFFC0) | v232 & 0xD2) ^ (16 * *(v96 + (407 * (v223 >> 4) + 143671 - 972 * ((4418691 * (407 * (v223 >> 4) + 143671)) >> 32))));
  v234 = *(v96 + (407 * (v215 & 0xF) + 143671 - 972 * ((4418691 * (407 * (v215 & 0xF) + 143671)) >> 32)));
  LODWORD(STACK[0x590]) = v234;
  v235 = 407 * (((16 * (v232 & 0xF)) ^ 0xD02C80AF) & (v234 | 0xD1FFDBF0) ^ 0xD02C805F);
  v236 = *(v96 + (v235 + 154253 - 972 * ((4418691 * (v235 + 154253)) >> 32))) ^ (16 * *(v96 + (v233 & 0x4A24A120 ^ 0x14D2AA58 ^ (v233 & 0x5EE4A360 ^ 0x5EB60978) & (v233 & 0x5EE4A360 ^ 0x6A7E1B38)) - 1592041549));
  v237 = 407 * (((v236 ^ 0xFD1231A7) - 1086152460) ^ ((v236 ^ 0x5B5E2AB0) + 420396005) ^ ((v236 ^ 0xA64C19C8) - 467892067));
  v238 = (v237 - 1847081223) % 0x3CC;
  v239 = *(v96 + (v235 + 290191 - 972 * ((4418691 * (v235 + 290191)) >> 32))) ^ (*(v96 + (v237 - 1846945285) % 0x3CC) >> 4);
  STACK[0x5D0] = v227 - 972 * ((8631 * v227) >> 23);
  v240 = *(v96 + v238);
  LODWORD(STACK[0x5F0]) = ((*(v96 + (407 * ((v206 >> 20) & 0xF ^ 9) - 972 * (((3512817 * ((v206 >> 20) & 0xF ^ 9)) >> 16) >> 7))) << 12) | (16 * *(v96 + v145))) ^ *(v96 + v202);
  v241 = v233 >> 4;
  LOBYTE(v202) = (60 - 93 * ((((v240 & 0xA5 ^ 0xD7) - 44) ^ ((v240 & 0xA5) - 91) ^ ((v240 & 0xA5 ^ 7) + 4)) + (((v240 & 0xA5 ^ 0xF4) + 56) ^ ((v240 & 0xA5 ^ 0xEB) + 41) ^ ((v240 & 0xA5 ^ 0x3A) - 6)))) & ((v233 >> 4) ^ 0xCD);
  v242 = *(v96 + (407 * (v215 >> 4) + 143671 - 972 * ((4418691 * (407 * (v215 >> 4) + 143671)) >> 32)));
  v243 = v242 & 0xF ^ (v234 >> 4);
  v244 = 407 * ((((16 * v202) ^ 0x4D6BF154) & (v243 ^ 0x6F6FFFF8) | v243 & 0xFFFFFFFB) ^ 0x4D6BF15D);
  v245 = v226 | (v224 << 8) & 0x5000;
  v246 = *(v96 + (v244 + 154253) % 0x3CC) ^ (16 * *(v96 + (407 * (((v239 ^ 0xB6B15DFC) + 1229890054) ^ ((v239 ^ 0x954C6D01) + 1790153465) ^ ((v239 ^ 0x23FD30D0) - 603795670)) + 171754) % 0x3CC));
  v247 = 407 * (((v246 ^ 0xD2A203CD) + 950595726) ^ ((v246 ^ 0x507DAF29) - 1166582678) ^ ((v246 ^ 0x82DFAE3B) + 1758813564));
  LODWORD(STACK[0x588]) = (v247 - 392415955) % 0x3CC;
  v248 = *(v96 + (v244 + 290191) % 0x3CC) ^ (*(v96 + (v247 - 392280017) % 0x3CC) >> 4);
  v249 = v224 & 0xF ^ (v242 >> 4);
  v250 = 407 * (((v241 | 0xFFFFFF3F) & (v249 ^ 0xC3068347) | v241 & 0xB0) ^ 0xC30683CA);
  v251 = *(v96 + (v250 + 154253) % 0x3CC) ^ (16 * *(v96 + (407 * (((v248 ^ 0xA7ABD99D) + 1481909986) ^ ((v248 ^ 0xD6EED83C) + 688990017) ^ ((v248 ^ 0x7145018C) - 1900347663)) + 225071) % 0x3CC));
  v252 = 407 * (((v251 ^ 0xE177646A) - 1457235310) ^ ((v251 ^ 0x5D863794) + 366283120) ^ ((v251 ^ 0xBCF15121) - 190681125));
  v253 = (v252 + 61717434) % 0x3CC;
  v254 = *(v96 + (407 * (v215 >> 12) + 143671 - 972 * ((4418691 * (407 * (v215 >> 12) + 143671)) >> 32))) ^ (v245 >> 12);
  v255 = *(v96 + (v250 + 290191) % 0x3CC) ^ (*(v96 + (v252 + 61853372) % 0x3CC) >> 4);
  v256 = 407 * ((v230 & 0xF0 ^ 0xFFFFFF8F) & (v254 & 0xF ^ 0xDD2688FA) ^ 0xDD26885F);
  v257 = *(v96 + (v256 + 154253 - 972 * ((4418691 * (v256 + 154253)) >> 32))) ^ (16 * *(v96 + (407 * (((v255 ^ 0xCA5B15F7) + 900000328) ^ ((v255 ^ 0x5A8BEEB0) - 1519120127) ^ ((v255 ^ 0x90D0FB6A) + 1865352411)) + 194139) % 0x3CC));
  v258 = 407 * (((v257 ^ 0x8FD62ECB) + 193083355) ^ ((v257 ^ 0xBDFE7A15) + 967467781) ^ ((v257 ^ 0x32285601) - 1233367279));
  v259 = *(v96 + (v256 + 290191 - 972 * ((4418691 * (v256 + 290191)) >> 32))) ^ (*(v96 + (v258 - 1639172234) % 0x3CC) >> 4);
  v260 = v254 >> 4;
  LODWORD(STACK[0x5B8]) = v260;
  v261 = 407 * (((v231 >> 12) & 0x20 | 0xF6E3D6D3) ^ ((v231 >> 12) | 0xFFFFFE0F) & (v260 ^ 0xF6E3D6DD));
  v262 = *(v96 + (v261 + 154253 - 972 * ((4418691 * (v261 + 154253)) >> 32))) ^ (16 * *(v96 + (407 * (((v259 ^ 0x77E69641) - 2011600423) ^ ((v259 ^ 0xF3C9B88A) + 204883732) ^ ((v259 ^ 0x842F2EE6) + 2077282688)) + 184778) % 0x3CC));
  v263 = 407 * (((v262 ^ 0xB48FBC12) + 42799751) ^ ((v262 ^ 0x335B3A2D) - 2057726790) ^ ((v262 ^ 0x87D484E0) + 836119157));
  v264 = *(v96 + (v261 + 290191 - 972 * ((4418691 * (v261 + 290191)) >> 32))) ^ (*(v96 + (v263 - 1580957509) % 0x3CC) >> 4);
  v265 = (407 * (((v264 ^ 0x1ED76BE9) - 517434365) ^ ((v264 ^ 0x90CB85B0) + 1865710172) ^ ((v264 ^ 0x8E1CEE74) + 1910706592)) + 177452) % 0x3CC;
  v266 = (LODWORD(STACK[0x598]) >> 20) & 0xF;
  v267 = 407 * (((HIWORD(v231) & 0xF0 ^ 0xEA01D3C1) & (v266 ^ 0xFF87D7FC) | (LODWORD(STACK[0x598]) >> 20) & 0xE) ^ 0xEA01D34D);
  v268 = *(v96 + (v267 + 154253) % 0x3CC) ^ (16 * *(v96 + v265));
  v269 = 407 * (((v268 ^ 0x7E99095D) + 1224318470) ^ ((v268 ^ 0x78AB69A2) + 1321991931) ^ ((v268 ^ 0x6326220) + 810743161));
  v270 = (*(v96 + (v269 - 1938514091) % 0x3CCu) << 20) ^ (*(v96 + (v263 - 1581093447) % 0x3CC) << 16);
  v271 = *(v96 + (v267 + 290191) % 0x3CC) ^ (*(v96 + (v269 - 1938378153) % 0x3CCu) >> 4);
  v272 = 407 * (((v231 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0x598])) & 0xF) ^ 0x9D);
  v273 = *(v96 + (v272 + 154253 - 972 * ((4418691 * (v272 + 154253)) >> 32))) ^ (16 * *(v96 + (407 * (((v271 ^ 0xD363A148) + 748445436) ^ ((v271 ^ 0xCE068189) + 838434363) ^ ((v271 ^ 0x1D6520EC) - 493166752)) + 193732) % 0x3CC));
  v274 = 407 * (((v273 ^ 0x777DD03E) + 1760583473) ^ ((v273 ^ 0xF0A1CDCE) - 282311999) ^ ((v273 ^ 0x87DC1F2F) - 1739485150));
  v275 = *(v96 + (v272 + 290191 - 972 * ((4418691 * (v272 + 290191)) >> 32))) ^ (*(v96 + (v274 - 705170255) % 0x3CC) >> 4);
  v276 = 407 * (((v229 >> 8) & 0x80 | 0x259001) ^ ((v229 >> 8) & 0x70 | (LODWORD(STACK[0x5D8]) >> 12)) ^ 0x2590BC) + 154253;
  v277 = *(v96 + (v276 - 972 * ((4418691 * v276) >> 32))) ^ (16 * *(v96 + (407 * (((v275 ^ 0x72146F4D) - 1913941914) ^ ((v275 ^ 0x363C8F3B) - 909938668) ^ ((v275 ^ 0x4428E05Bu) - 1143529612)) + 256003) % 0x3CC));
  v278 = ((*(v96 + (407 * (((v277 ^ 0x383DF60F) + 599821476) ^ ((v277 ^ 0xE9DA1775) - 232296998) ^ ((v277 ^ 0xD1E7E3A5) - 904226550)) - 2146969055) % 0x3CC) ^ 8) << 28) ^ ((*(v96 + (v274 - 705306193) % 0x3CC) ^ 0x92) << 24);
  LOBYTE(v274) = *(v96 + LODWORD(STACK[0x588])) ^ 0xF4;
  v240 ^= 0x42u;
  v279 = *(v96 + v253) ^ 0x971BA636;
  v280 = (*(v96 + (v258 - 1639308172) % 0x3CC) << 12) ^ (v279 << 8);
  v281 = STACK[0x590] & 0xF | (16 * (v240 & 0xF));
  v282 = 407 * (v281 ^ 0xDF) + 9768 - 972 * ((4418691 * (407 * (v281 ^ 0xDFu) + 9768)) >> 32);
  v283 = 407 * ((v240 ^ (16 * v274) | 0xFFFFFF0F) & (v243 ^ 0x75624BF2) ^ 0x75624BDF) + 9768;
  v284 = (407 * ((((v274 ^ (16 * v279)) & 0xF0 ^ 0x9B4BC89B) & (v249 ^ 0xDFFBDDF6) | v249 & 4) ^ 0x9B4BC8DF) + 9768) % 0x3CC;
  LODWORD(v138) = (407 * ((((v280 >> 8) | 0xFFFFFF1F) & (v254 & 0xF ^ 0xA57C356D) | (v280 >> 8) & 0x90) ^ 0xA57C35E8) + 9768) % 0x3CC;
  v285 = v280 ^ v270 ^ 0xB1A5B576 ^ v278;
  v286 = (407 * ((((16 * ((HIWORD(v285) ^ 0x650E) & (((LODWORD(STACK[0x5C0]) + 3) ^ (12 - LODWORD(STACK[0x5C0]))) & 0xF ^ 0xE704) ^ HIWORD(v285) & 0xE704)) ^ 0x5AB8AA74) & (LODWORD(STACK[0x5B8]) ^ 0x7FFFFFFB) | (v254 >> 4) & 0xB) ^ 0x5ABEFA3E) + 9768) % 0x3CC;
  v287 = 407 * ((HIWORD(v270) & 0x20 | 0x7786C6DC) ^ (HIWORD(v270) | 0xFFFFFE0F) & (v266 ^ 0x7786C6D1)) + 9768;
  v288 = 407 * (((v285 >> 20) & 0xF0 ^ 0xFFFFFFBF) & (HIBYTE(LODWORD(STACK[0x598])) & 0xF ^ 0xDD6D91F2) ^ 0xDD6D91EF) + 9768;
  v289 = (*(v96 + (v288 - 972 * ((4418691 * v288) >> 32))) << 24) ^ (*(v96 + (v287 - 972 * ((4418691 * v287) >> 32))) << 20);
  v290 = *(v96 + v282);
  v291 = v290 ^ (16 * *(v96 + v283 % 0x3CC));
  v292 = v291 ^ (*(v96 + v284) << 8) ^ 0x15F8CA0D;
  v293 = v292 ^ (*(v96 + v138) << 12);
  v294 = v293 ^ (*(v96 + v286) << 16) ^ 0x888B1EAF;
  v295 = ((v289 ^ v294 ^ (*(v96 + (407 * ((((16 * (v278 >> 28)) ^ 0x73E1D5A4) & ((LODWORD(STACK[0x5D8]) >> 12) ^ 0xF7F1DDF8) | (LODWORD(STACK[0x5D8]) >> 12) & 0xFFFFFFFB) ^ 0x73E1D56D) + 9768) % 0x3CC) << 28)) >> 28) ^ 4;
  LOWORD(v284) = 407 * (((v289 ^ v294) >> 24) & 0xF) - 972 * (((3512817 * (((v289 ^ v294) >> 24) & 0xF)) >> 16) >> 7);
  LOWORD(v286) = 407 * (((v289 ^ v294) >> 20) & 0xF ^ 0xA) - 972 * (((3512817 * (((v289 ^ v294) >> 20) & 0xF ^ 0xA)) >> 16) >> 7);
  v296 = *(v96 + (407 * (BYTE2(v294) & 0xF ^ 0xE) - 972 * (((3512817 * (HIWORD(v294) & 0xF ^ 0xE)) >> 16) >> 7)));
  v297 = (v296 | 0xFF00) & ((*(v96 + (407 * v295 - 972 * (((3512817 * v295) >> 16) >> 7))) << 12) ^ (*(v96 + v284) << 8) ^ 0xFFFFF00F) | v296 & 0xF0;
  v298 = *(v96 + (407 * ((v293 >> 12) ^ 1) - 972 * (((3512817 * ((v293 >> 12) ^ 1u)) >> 16) >> 7)));
  v299 = v286;
  LOWORD(v286) = 407 * ((v291 >> 4) ^ 0xD) - 972 * (((3512817 * ((v291 >> 4) ^ 0xDu)) >> 16) >> 7);
  v300 = ((*(v96 + v299) << 12) | (16 * v298)) ^ *(v96 + (407 * ((v292 >> 8) & 0xF ^ 7) - 972 * (((3512817 * ((v292 >> 8) & 0xF ^ 7)) >> 16) >> 7)));
  v301 = LODWORD(STACK[0x5F8]) + 1936393925;
  v302 = (LODWORD(STACK[0x630]) ^ 0x5CD27324) + LODWORD(STACK[0x5F8]);
  v303 = *(v96 + (407 * (((v290 & 0xF ^ 0x8936D3D9) + 1992895720) ^ ((v290 & 0xF ^ 0xF1EB9DEB) + 236217046) ^ ((v290 & 0xF ^ 0x78DD4E3D) - 2027769596)) + 83842) % 0x3CC) ^ LODWORD(STACK[0x5E8]);
  LODWORD(STACK[0x668]) = LODWORD(STACK[0x5C0]) ^ v215 ^ 0xC671062A;
  v304 = LODWORD(STACK[0x688]) == 63;
  v305 = v303 ^ (16 * *(v96 + v286)) ^ (v297 << 16) ^ (v300 << 8);
  LODWORD(STACK[0x628]) = v305 ^ 0xA0DE49C;
  LODWORD(STACK[0x654]) = v305 ^ 0x77ED05C6;
  v306 = v304;
  v307 = *(STACK[0x6A0] + 8 * ((98 * v306) ^ LODWORD(STACK[0x4CC])));
  LODWORD(STACK[0x640]) = STACK[0x60C];
  LODWORD(STACK[0x630]) = STACK[0x610];
  LODWORD(STACK[0x698]) = STACK[0x61C];
  return v307(v302 - 1880141230 + (v301 ^ 0xA2F5DB35));
}

uint64_t sub_1006A26EC(unsigned int a1, int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, char a7, int a8)
{
  v16 = *(v13 + 4 * ((a7 + (v15 ^ 0x10) * (a8 - 50) + 20) & 0x1F)) ^ *(v12 + 4 * (a8 + v10 - (((a3 * v8) >> 32) >> 3) * v9));
  v17 = ((v16 ^ 0xC0CA0B6D) + 2133711100) ^ (((v15 + 741500669) & 0xD3CD4A7F) + 73194844 + (v16 ^ 0xBBBACC3D)) ^ ((v16 ^ 0x40E6D964) - 16708877);
  v18 = a8 + a5 - (((a1 * v8) >> 32) >> 3) * v9;
  *(v12 + 4 * v18) = (*(v11 + 4 * ((a8 - 38) & 0x1F)) ^ *(v11 + 4 * ((a8 - 49) & 0x1F)) & ~*(v11 + 4 * ((a8 - 24) & 0x1F)) ^ *(v12 + 4 * v18) ^ __ROR4__(-1060735539 * v17 - 1580149383, 11)) * a2;
  return (*(STACK[0x228] + 8 * (v15 ^ (458 * (v14 == 0)))))();
}

uint64_t sub_1006A2AA0()
{
  v6 = *v2;
  v7 = *(v5 + 8 * (v1 ^ 0x2121));
  v8 = *(v7 - 527405895);
  v9 = (v0 + v3) ^ v3;
  v10 = *(v5 + 8 * (v1 ^ 0x332C)) + 4 * v8;
  if (v0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 - 1940437438);
  }

  *(v10 - 1940437438) *= v11 + (v1 - 8765 + *(v10 - 1940437438)) * v9;
  *(v7 - 527405895) = (v8 + 1) % 6u;
  return (*(v4 + 8 * ((106 * (v6 != 0)) ^ v1)))();
}

uint64_t sub_1006A2BA0()
{
  STACK[0x8938] = v1;
  STACK[0xED0] = v0;
  STACK[0x8818] = v0;
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x89B0] = v4;
  STACK[0x2940] = (v4 + 16);
  STACK[0x7690] = 11881 * (v2 ^ 0x23C6u) + v3 - 35611;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006A2C04()
{
  v1 = STACK[0xF18];
  STACK[0x4AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 2901) | 0x2029) + 16366) ^ v0)))();
}

uint64_t sub_1006A2C84@<X0>(int a1@<W8>)
{
  *STACK[0x29B0] = 1;
  STACK[0x7378] = v1;
  v2 = *STACK[0x5CC8];
  LODWORD(STACK[0x149C]) = v2;
  v3 = STACK[0x94C0];
  LODWORD(STACK[0x986C]) = STACK[0x94C0];
  v4 = v3 + v2;
  v5 = v4 - 357886004;
  v6 = v4 > 0x1554E833;
  if (v6 == LODWORD(STACK[0x484C]) > 0x1554E833)
  {
    v6 = v5 > ((a1 - 29387) | 0x8414u) + LODWORD(STACK[0x484C]) - 357919816;
  }

  return (*(STACK[0xF18] + 8 * ((v6 * (((a1 + 3645) | 0xA33) ^ 0x3D23)) ^ a1)))();
}

uint64_t sub_1006A2D48()
{
  v1 = STACK[0xF18];
  STACK[0x4150] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2D0E ^ (v0 + 69))))();
}

uint64_t sub_1006A2D84@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, int a8@<W8>)
{
  v13 = ((a7 ^ 0x49F1B8B) + 734570596) ^ ((a7 ^ 0xB0B11823) - 1612272692) ^ ((a7 ^ ((a6 - 16951) | 0x844) ^ 0x1D77E596) + 840977577);
  v14 = (((a7 & 0xF ^ 0xEF) + 106) ^ ((a7 & 0xF ^ 0xB5) + 52) ^ ((a7 & 0xF ^ 0x52) - 43)) - (((a5 & 2 ^ 0xF) + 65) ^ (a5 & 2 | 0x50) ^ ((a5 & 2 ^ 3) + 77)) - 77;
  v15 = a4 - (((a4 * v9) >> 32) >> 4) * v12;
  v16 = STACK[0x6B0];
  v17 = (((v14 ^ 0x58) + 87) ^ v14 ^ ((v14 ^ 0x32) + 61) ^ ((v14 ^ 0x28) + 39) ^ ((v14 ^ 0xB3) - 66));
  *(STACK[0x6B0] + v15) ^= *(v11 + a8 + v13);
  LOBYTE(v13) = *(v8 + (417 * (((v17 ^ 0xC4BCDB29) + 1421356307) ^ ((v17 ^ 0x62DF0976) - 220463282) ^ ((v17 ^ 0xA663D2AE) + 912729238)) + 1743498589) % 0x3B0);
  v18 = (((v13 ^ 0xAA) + 86) ^ ((v13 ^ 0x58) - 88) ^ ((v13 ^ 0xFB) + 5)) + 25;
  LOBYTE(v17) = v18 & 0x9F ^ 0x30;
  v19 = (((a2 * v9) >> 32) >> 5) * v10;
  v20 = (v18 ^ 0x3E) & (2 * ((v18 ^ 0x3E) & (2 * ((v18 ^ 0x3E) & (2 * ((v18 ^ 0x3E) & (2 * ((v18 ^ 0x3E) & (2 * ((v18 ^ 0x3E) & (2 * v18) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17;
  v21 = a2 - v19;
  v22 = a3 - v19;
  if (v21 >= 0x3C5)
  {
    v21 = v22;
  }

  *(v16 + v21) = *(v16 + a2 - (((a2 * v9) >> 32) >> 4) * v12) ^ v18 ^ (2 * v20) ^ 0x63;
  return (*(STACK[0x6A0] + 8 * a6))(a1, a2 + 961, (a3 + 961), a4 + 961, (a5 + 2));
}

uint64_t sub_1006A30A0()
{
  v3 = 139493411 * ((&STACK[0x10000] + 3800) ^ 0xC2DE145);
  STACK[0x10ED8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EF0]) = v2 - v3 - 4751;
  STACK[0x10EE8] = &STACK[0x8B04];
  LODWORD(STACK[0x10EE0]) = v0 + v3 + ((v2 - 6086) ^ 0xA53A3D4);
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 33102)))(&STACK[0x10ED8]);
  *(v1 + 8) = STACK[0x8B04];
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1006A31B4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (a3 - 2010970590) & 0x77DCEDFF;
  v6 = 193924789 * ((((v4 - 112) | 0x72823183) - ((v4 - 112) & 0x72823180)) ^ 0xC43903E5);
  v7 = ((v5 - 31882) ^ *(v4 - 120) ^ 0x6CE9BE73) + v6;
  *(v4 - 108) = v5 - v6 + 1563182707;
  *(v4 - 104) = v7;
  v8 = (*(v3 + 8 * (v5 + 8122)))(v4 - 112);
  return (*(v3 + 8 * v5))(v8);
}

uint64_t sub_1006A3260@<X0>(int a1@<W2>, int a2@<W5>, int a3@<W8>)
{
  v20 = v5 - (((v5 * v3) >> 32) >> 7) * v4;
  v21 = (*(v6 - 32) ^ a3) * (*(v17 + 4 * (v7 & 0x1F)) - 450790015);
  v22 = ((2 * v20) & 0x1BA) + (v20 ^ 0x3F7FBE7D8EFB79DDLL);
  v23 = ((2 * v21) & 0xFB773EBC) + (v21 ^ 0x7DBB9F5E);
  v24 = (v14 + 4 * (v22 - 0x3F7FBE7D8EFB7A3FLL));
  v25 = __CFADD__(v22 - 0x3F7FBE7D8EFB7A3FLL, 98);
  v26 = v10 & 0x201 | 0x10040040 | ((2 * (v10 & 0x201)) ^ 0xFFFFFC01) & (v10 & 2 | 0x60080400);
  v27 = (v13 + 4 * v22 + 0x2010609C412188CLL);
  v28 = (2 * (v10 ^ 0x929F8145)) & 0x1400744 ^ 0x1400144 ^ ((2 * (v10 ^ 0x929F8145)) ^ 0x96B43A88) & (v10 ^ 0x929F8145);
  v29 = ((4 * v26) ^ 0xB03C1100) & v28;
  if (!v25)
  {
    v27 = v24;
  }

  v30 = (4 * v28) & a2 ^ 0x320C0244 ^ ((4 * v28) ^ 0xBD7C7D10) & v28;
  v31 = (16 * ((4 * v26) & 0x40101904 ^ v26 ^ v29)) & a2 ^ (4 * v26) & 0x40101904 ^ v26 ^ v29 ^ ((16 * ((4 * v26) & 0x40101904 ^ v26 ^ v29)) ^ 0x1C15400) & v30;
  v32 = (16 * v30) & a2 ^ 0x421C0B04 ^ ((16 * v30) ^ 0x35C1F440) & v30;
  v33 = v31 ^ (v31 << 8) & 0x735C1F00 ^ ((v31 << 8) ^ 0x5C014000) & v32 ^ 0x12001E04;
  v34 = 329778581 * v23 - 1539985224 * *(v12 + 4 * (v10 ^ (2 * ((v33 << 16) & v15 ^ v33 ^ ((v33 << 16) ^ 0x1F440000) & ((v32 << 8) & v15 ^ 0x23400000 ^ ((v32 << 8) ^ 0x5C1F0000) & v32))) ^ 0x21F3A092u)) + (v23 - 2109448030) * ((((*v27 ^ 0x5F4CC2D) - 99929133) ^ ((*v27 ^ 0x20A6A91A) - 547793178) ^ ((*v27 ^ 0x5B910BA6) - 1536232358)) + 1870654888);
  v35 = v34 + 1039177121 - ((((v34 + 1039177121) * v3) >> 32) >> 7) * v4;
  v36 = ((2 * v35) & 0x6E) + (v35 ^ 0x27F14FFADBD7DF37);
  v37 = v34 + 1039177055;
  v38 = v36 - 0x27F14FFADBD7DF99;
  v39 = (v13 + 4 * v36 + 0x603AC01490A08324);
  v25 = __CFADD__(v38, 98);
  v40 = (v14 + 4 * v38);
  *v6 = v37;
  if (!v25)
  {
    v39 = v40;
  }

  *(v17 + 4 * (v7 & 0x1F)) += (((v37 ^ *v39 ^ 0xB4E1AFCC) + 1386843742) ^ ((v37 ^ *v39 ^ 0x41A5F1EF) - 1477586817) ^ ((v37 ^ *v39 ^ 0x8B8730B2) + v16)) * v11 + v18;
  return (*(STACK[0x228] + 8 * ((((v9 | v8) >= 0) * v19) ^ a1)))();
}

uint64_t sub_1006A362C()
{
  LODWORD(STACK[0x8A4]) = STACK[0x20D4];
  LODWORD(STACK[0x1EFC]) = (((LODWORD(STACK[0x21E8]) ^ 0x261EDF76) - 639557494) ^ ((LODWORD(STACK[0x21E8]) ^ 0xCF2A8F9B) + 819294309) ^ ((LODWORD(STACK[0x21E8]) ^ 0xE197FC) - 14784508)) - (((LODWORD(STACK[0x21F4]) ^ 0xE01301C4) + 535625276) ^ ((LODWORD(STACK[0x21F4]) ^ 0x12C65E5A) - 314990170) ^ ((LODWORD(STACK[0x21F4]) ^ 0x1B00988F) - 453023887));
  return (*(v0 + 50680))();
}

void sub_1006A3700(_DWORD *a1)
{
  v1 = *a1 + 353670337 * ((((2 * a1) | 0xFB34BCB0) - a1 - 2107268696) ^ 0xC9BBA665);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1006A37D0()
{
  v2 = STACK[0x490];
  STACK[0x670] = STACK[0x490];
  STACK[0x678] = v2;
  LODWORD(STACK[0x680]) = STACK[0x534];
  return (*(v1 + 8 * (v0 + 371877151)))();
}

uint64_t sub_1006A3840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>, int8x16_t a4@<Q2>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = vld4q_s8(v12);
  v14 = veorq_s8(v22.val[1], a4);
  _Q21 = vmovl_high_u8(v14);
  _Q20 = vmovl_u8(*v14.i8);
  __asm
  {
    SHLL2           V20.4S, V20.8H, #0x10
    SHLL2           V21.4S, V21.8H, #0x10
  }

  return (*(v13 + 8 * a3))(a1, *(a12 + 88), a2, -2835758012);
}

uint64_t sub_1006A3A58@<X0>(unint64_t a1@<X8>)
{
  STACK[0xEE8] = *(v5 + 8 * v1);
  STACK[0x12F8] = a1;
  v7 = STACK[0x1428];
  v8 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1970] = v8;
  STACK[0x1428] = v7 + 576;
  *(v6 - 256) = v8;
  *(v6 - 244) = v2 - 193924789 * (((v4 ^ 0xEBA74211 | 0x2141202D) - (v4 ^ 0xEBA74211) + ((v4 ^ 0xEBA74211) & 0xDEBEDFD0)) ^ 0x7C5D505A) + 32162;
  v9 = (*(v5 + 8 * (v2 ^ 0xF9A8)))(v6 - 256);
  return (*(v5 + 8 * (((*(v6 - 248) != v3) * ((6 * (((v2 - 13064) | 0x825) ^ 0x1CC)) ^ 0x3B1F)) ^ v2)))(v9);
}

uint64_t sub_1006A3B38@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1FD0] = *(a1 + 112);
  LODWORD(STACK[0x12D0]) = 1732135942;
  return (*(v2 + 8 * (v1 - 20920)))();
}

void sub_1006A3C08(uint64_t a1)
{
  v1 = 17902189 * (((a1 | 0x435F0389) - a1 + (a1 & 0xBCA0FC76)) ^ 0xCD101599);
  v2 = *(a1 + 8);
  v3 = *(a1 + 4) ^ v1;
  v4 = (*(v2 + 2 + 6 * ((*a1 ^ v1) - 8994)) + 5596);
  v5 = (*(v2 + 2 + 6 * (v1 + *(a1 + 18) - 5766)) + 5596);
  v6 = v5 < 0x21A1;
  v7 = v4 < v5;
  if (v4 < 0x21A1 != v6)
  {
    v7 = v6;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_1006A3DBC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v31 = v28 ^ 0xA724096A;
  v32 = v28 ^ 0xB29F;
  v33 = 1112314453 * ((~(v30 - 136) & 0xE946399F | (v30 - 136) & 0x16B9C660) ^ 0x6101346);
  *(v30 - 128) = (v31 + 1490837627) ^ v33;
  *(v30 - 120) = v33 + 1073095412;
  *(v30 - 136) = &a27;
  *(v30 - 112) = *(a1 + 8 * (v31 ^ 0xA72418A9)) - 560578435;
  *(v30 - 104) = v27;
  v34 = (*(v29 + 8 * (v31 ^ 0xA724C581)))(v30 - 136);
  return (*(v29 + 8 * ((8493 * (v31 == v32 + 2140233652)) ^ (v31 + 1490818472))))(v34);
}

uint64_t sub_1006A3F10@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v72 + 4 * (((v66 - 16299) * v65 + 30) & (v66 - 16279))) = v68;
  v76 = ((2 * v70) & 0x1C) + (v70 ^ 0x77A7DFDFDBFFFFEELL);
  v77 = v76 - 0x77A7DFDFDBFFFFF1;
  v78 = (a57 + 4 * v76 + 0x2160808090000048);
  if (v77 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v78 = (a56 + 4 * v77);
  }

  v79 = v68 - 1859107021 + (((v68 + *(a65 + 4 * ((v73 + a3) & 0x1F)) - (((*v78 ^ 0x33D12742) + 1278138558) ^ ((*v78 ^ 0x38BB3C7D) + 121947011) ^ ((*v78 ^ 0x3346A0D0) - 860266704))) * a2 + 466977116) ^ 0xEAF7BFC9);
  *(v72 + 4 * (v69 & 0x1F)) = *(v72 + 4 * (v69 & 0x1F)) - 51 * v79 - 641947050;
  v80 = v79 ^ (345209289 * (v75 + a3 + *(v72 + 4 * ((v74 + a3) & 0x1F))) + 272023846) ^ ((v79 ^ 0x7F26F3DB) - 1902644617) ^ ((v79 ^ 0xF824547B) + 160781783) ^ ((v79 ^ 0x7491B60C) - 2061453406) ^ ((v79 ^ 0xFDDDEFFE) + 208465492);
  v81 = ((v80 ^ 0x898DD0FC) - 1322705355) ^ ((v80 ^ 0x128C1052) + 707321499) ^ ((v80 ^ 0x954F3EFC) - 1377046475);
  v82 = (a1 ^ v65 ^ ((v65 ^ 0x435A392A) - 851714892) ^ ((v65 ^ 0xCF004CF9) + 1096919393) ^ ((v65 ^ 0x42FB44A) - 1974578732) ^ ((v65 ^ 0xF9EBDBFF) + 2005548647) ^ 0x44678FF7) + 129;
  v83 = ((2 * (v82 % 0x81)) & 0x1AE) + ((v82 % 0x81) ^ 0xEC7FEF79BB3B8BD7);
  v84 = v83 + 0x1380108644C473ACLL;
  v85 = (STACK[0x218] + 4 * v83 + 0x4E0042191311D0A4);
  if (v84 < 0xFFFFFFFFFFFFFF83)
  {
    v85 = (STACK[0x220] + 4 * v84);
  }

  *(v71 + 4 * v67) = v81 - (((*v85 ^ 0x6262CC9A) - 1650642074) ^ ((*v85 ^ 0xB0B1BED3) + 1330528557) ^ ((*v85 ^ 0xE7430E18) + 415035880)) - 1819978988;
  return (*(STACK[0x228] + 8 * (v66 ^ (48738 * (a3 == 31)))))();
}

uint64_t sub_1006A42F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v11 = v7 + 1;
  v13 = v10 == ((v9 + 98) ^ 0x7F) || v11 == (v9 ^ v8 ^ a6);
  return (*(STACK[0xF18] + 8 * ((v13 * a7) ^ v9)))();
}

uint64_t sub_1006A4388@<X0>(int a1@<W8>)
{
  v2 = 193924789 * (((((&STACK[0x10000] + 3800) | 0x29039F1A) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xD6FC60E5)) ^ 0x60475283);
  LODWORD(STACK[0x10ED8]) = (LODWORD(STACK[0x8A88]) ^ 0xF63942F5) + v2;
  LODWORD(STACK[0x10EE4]) = v2 ^ a1 ^ 0xE2DEE678;
  LODWORD(STACK[0x10EE0]) = (v1 + 515063505) ^ v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDA14)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((21931 * (((v1 ^ 0x9D67u) - 29747 + LODWORD(STACK[0x10EDC]) + 256880643) >> 31)) ^ v1)))(v4);
}

uint64_t sub_1006A4490(uint64_t a1)
{
  v8 = STACK[0xF18];
  v9 = *(STACK[0xF18] + 8 * v1);
  v10 = *(v6 + 280);
  STACK[0x3E28] = v9;
  STACK[0x8900] = v7;
  *(a1 + 164) = v5;
  STACK[0x56E8] = v4;
  LODWORD(STACK[0x19C8]) = v3;
  STACK[0x6888] = v10;
  LODWORD(STACK[0x4F3C]) = -371865839;
  LODWORD(STACK[0x1F44]) = 1497668682;
  v13 = v7 != 0x217E172EFA1E81CLL && v5 != 0x981390C2FED9246 && v4 != 0x981390C2FED9246;
  return (*(v8 + 8 * ((v13 * (((v2 - 6757) | 0x8220) - 35620)) | v2)))();
}

uint64_t sub_1006A4760()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -1427074685;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xA8B0)))();
}

void sub_1006A4798(uint64_t a1)
{
  v1 = *(a1 + 20) - 139493411 * ((2 * (a1 & 0xEAE33804) - a1 + 354207739) ^ 0x193126BE);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1006A494C()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * (((v0 ^ 0xA5B) + 12464) ^ v0)))();
}

uint64_t sub_1006A498C(int32x4_t a1, int32x4_t a2, int8x16_t a3, int8x16_t a4, double a5, double a6, int32x4_t a7, int32x4_t a8)
{
  v16 = *(v10 + v9);
  v17 = vqtbl1q_s8(v16, a3);
  v18 = vqtbl1q_s8(v16, a4);
  return (*(v12 + 8 * (((v9 == 32) * v11) ^ v8)))(vaddq_s32(vaddq_s32(a1, v14), veorq_s8(veorq_s8(vaddq_s32(v17, a7), vaddq_s32(v17, a8)), vaddq_s32(veorq_s8(v17, v13), v15))), vaddq_s32(vaddq_s32(a2, v14), veorq_s8(veorq_s8(vaddq_s32(v18, a7), vaddq_s32(v18, a8)), vaddq_s32(veorq_s8(v18, v13), v15))));
}

uint64_t sub_1006A4A40()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC41B)))(v0, 16);
  v4.i64[0] = 0x3B3B3B3B3B3B3B3BLL;
  v4.i64[1] = 0x3B3B3B3B3B3B3B3BLL;
  v5 = vmulq_s8(*v0, v4);
  v4.i64[0] = 0x9191919191919191;
  v4.i64[1] = 0x9191919191919191;
  v6 = vaddq_s8(v5, v4);
  v7.i64[0] = 0x606060606060606;
  v7.i64[1] = 0x606060606060606;
  v8 = vsubq_s8(v7, v5);
  v7.i64[0] = 0x404040404040404;
  v7.i64[1] = 0x404040404040404;
  v9.i64[0] = 0x5858585858585858;
  v9.i64[1] = 0x5858585858585858;
  v10 = vorrq_s8(vandq_s8(v8, v7), v9);
  v9.i64[0] = 0xB8B8B8B8B8B8B8B8;
  v9.i64[1] = 0xB8B8B8B8B8B8B8B8;
  v11 = veorq_s8(v10, vandq_s8(v6, v9));
  v12 = veorq_s8(v6, v7);
  v13 = veorq_s8(vandq_s8(vaddq_s8(v11, v11), v12), v11);
  v14 = veorq_s8(vandq_s8(vaddq_s8(v13, v13), v12), v11);
  v15 = veorq_s8(vandq_s8(vaddq_s8(v14, v14), v12), v11);
  v16 = veorq_s8(vandq_s8(vaddq_s8(v15, v15), v12), v11);
  v17 = veorq_s8(vandq_s8(vaddq_s8(v16, v16), v12), v11);
  v12.i64[0] = 0xE3E3E3E3E3E3E3E3;
  v12.i64[1] = 0xE3E3E3E3E3E3E3E3;
  *v0 = veorq_s8(veorq_s8(v6, v12), vaddq_s8(v17, v17));
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006A4B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, unsigned __int8 a57)
{
  v60 = ((v58 ^ 0xD8476DAA) - 493317842) ^ v58 ^ ((v58 ^ 0x8BFC157) + 845168081) ^ ((v58 ^ 0xEA3E5FDA) - 790518946) ^ ((((v57 - 19600) | 9) ^ 0xC5395680) + (v58 ^ 0xFFE6F05F));
  v61 = ((v60 ^ 0xAF4A3CF3) + 250362100) ^ ((v60 ^ 0x7515CBAA) - 726413397) ^ ((v60 ^ 0x1F7FF421) - 1093013470);
  v62 = ((((a57 ^ 0x36982C7B) - 915942523) ^ ((a57 ^ 0x679CAF20) - 1738321696) ^ ((a57 ^ 0x510483C7u) - 1359250375)) + 156) % (1686505313 - v61);
  v63 = v61 + (v62 ^ 0xBEFFFB8D) + 1811541888 + ((2 * v62) & 0x7DFFF71A);
  if (v63 + 1887440524 >= 0xFB)
  {
    v64 = 1303908174;
  }

  else
  {
    v64 = -583532350 - v63;
  }

  v66 = v58 != 0x3CE25E0EC520035FLL && v64 != 1303907924;
  return (*(v59 + 8 * ((v66 | (4 * v66)) ^ v57)))();
}

uint64_t sub_1006A4D9C(char a1, uint64_t a2, uint64_t a3)
{
  v14 = *(v13 + 8 * v7) + v8;
  *v11 = *(v14 + v5) ^ 0xE1;
  v11[1] = *(a3 + v14 + v9) ^ v10;
  v11[2] = v6 ^ *(v14 + v5 + 1) ^ 0x33;
  v11[3] = *(v14 + v5 - 1) ^ a1;
  return (*(v12 + 8 * (((a2 & (2 * (v5 + 2))) + ((v5 + 2) ^ v4) + v9 < 0x1C) ^ v3)))();
}

uint64_t sub_1006A4E3C@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0x410] + 4 * (v1 - 651223090));
  v4 = 1566083941 * (((((v3 >> 30) | 0x245BD658) ^ v3 ^ 0x8F6D2E30) + 1888670160) ^ ((((v3 >> 30) | 0x245BD658) ^ v3 ^ 0x9D91ABE5) + 1651397659) ^ ((((v3 >> 30) | 0x245BD658) ^ v3 ^ 0x36A7538D) - 916935565)) + 1351378420;
  v5 = v4 ^ *(STACK[0x410] + 4 * (v1 - 651223089)) ^ ((v4 ^ 0xF7C5F28D) + 2090139727) ^ ((v4 ^ 0xBB84E28C) + 819204176) ^ ((v4 ^ 0xC7106252) + 1279299730) ^ ((v4 ^ 0xFFFE7F6F) + 1957596589);
  *(STACK[0x410] + 4 * (v1 - 651223089)) = (((v5 ^ 0x86931288) - 1977428304) ^ ((v5 ^ 0x2AA3C591) + 638714295) ^ ((v5 ^ 0xD89FDA25) - 735175165)) - v1 - 1364060395;
  v6 = 906386353 * STACK[0x3E8];
  *(v2 - 152) = (a1 - 2076019681) ^ v6;
  *(v2 - 108) = (a1 - 2076019673) ^ v6;
  *(v2 - 144) = 1739053903 - v6;
  *(v2 - 136) = v6 + 1;
  *(v2 - 116) = v6 + a1 - 2076019681 + 3692;
  *(v2 - 112) = v6 + a1 + 800692302;
  *(v2 - 128) = (v1 + 1087830815) ^ v6;
  v7 = STACK[0x430];
  v8 = (*(STACK[0x430] + 8 * (a1 ^ 0x9DFE)))(v2 - 152);
  return (*(v7 + 8 * *(v2 - 120)))(v8);
}

uint64_t sub_1006A5078()
{
  v3 = ((((&STACK[0x10000] + 3800) | 0xCFDB32BB) - ((&STACK[0x10000] + 3800) & 0xCFDB32B8)) ^ 0xFEDAFF9F) * v1;
  STACK[0x10EE8] = v2;
  STACK[0x10EF0] = &STACK[0x23B8];
  STACK[0x10ED8] = &STACK[0x6868];
  LODWORD(STACK[0x10EE4]) = v3 ^ 0xF1D0BA2E;
  LODWORD(STACK[0x10EE0]) = v3 + v0 - 28561;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x402E)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v0 - 27259)))(v5);
}

uint64_t sub_1006A5128@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W4>, uint64_t a4@<X8>)
{
  v16 = v6 < v15;
  v17 = *(a4 + a3) ^ v11;
  v18 = *(a4 + v7);
  v19 = ((v18 ^ v9) - 4 * ((v18 ^ v9) >> 1) + 126) ^ v17;
  *v4 = v19 - ((((v8 - 72) | v13) - 17) & (2 * v19)) + 23;
  v20 = ((v18 ^ a1) - 4 * ((v18 ^ a1) >> 1) + 126) ^ v17;
  v4[3] = v20 - (v12 & (2 * v20)) + 23;
  v4[6] = (((v18 ^ a2) - 4 * ((v18 ^ a2) >> 1) + 126) ^ v17) - (v12 & (2 * (((v18 ^ a2) - 4 * ((v18 ^ a2) >> 1) + 126) ^ v17))) + 23;
  if (v16 == a3 + 1 > v5)
  {
    v16 = a3 + v10 < v6;
  }

  return (*(STACK[0xF18] + 8 * ((!v16 * v14) ^ v8)))();
}

uint64_t sub_1006A5258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned int a55)
{
  v56 = STACK[0x20C8];
  *(v56 - 0x427A3CD3E8C5DA27) = STACK[0xB44];
  *(v56 - 0x427A3CD3E8C5DA07) = STACK[0x13E0];
  *(v56 - 0x427A3CD3E8C5DA2FLL) = STACK[0xF30];
  v57 = (*(v55 + 8 * (a55 + 39166)))(STACK[0x938], v56 - 0x427A3CD3E8C5DA1FLL, 24);
  *STACK[0x13A0] = v56;
  return (*(v55 + 8 * a55))(v57);
}

uint64_t sub_1006A52FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 136) = v16 - 1603510583 * ((((v17 - 136) | 0xA69C636B) - ((v17 - 136) | 0x59639C94) + 1499700372) ^ 0x314751C0) + 13211;
  *(v17 - 128) = &a15;
  *(v17 - 112) = a14;
  v18 = (*(v15 + 8 * (v16 + 39293)))(v17 - 136);
  return (*(v15 + 8 * ((99 * (((v16 - 58) ^ (*(v17 - 120) > (v16 + 989308527))) & 1)) ^ v16)))(v18);
}

uint64_t sub_1006A5558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v22 = (a20 ^ 0xFCCFD11B) & (2 * (((v20 ^ 0x3923) - 17863629) & a20)) ^ ((v20 ^ 0x3923) - 17863629) & a20;
  v23 = ((2 * (a20 ^ 0xF492D31F)) ^ 0x14FA143A) & (a20 ^ 0xF492D31F) ^ (2 * (a20 ^ 0xF492D31F)) & 0xA7D0A1C;
  v24 = (v23 ^ 0x78021D) & (4 * v22) ^ v22;
  v25 = ((4 * (v23 ^ 0xA050A05)) ^ 0x29F42874) & (v23 ^ 0xA050A05) ^ (4 * (v23 ^ 0xA050A05)) & 0xA7D0A1C;
  v26 = (v25 ^ 0x8740809) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x2090209)) ^ 0xA7D0A1D0) & (v25 ^ 0x2090209) ^ (16 * (v25 ^ 0x2090209)) & 0xA7D0A10;
  v28 = v26 ^ 0xA7D0A1D ^ (v27 ^ 0x250000D) & (v26 << 8);
  LODWORD(STACK[0x298]) = a20 ^ (2 * ((v28 << 16) & 0xA7D0000 ^ v28 ^ ((v28 << 16) ^ 0xA1D0000) & (((v27 ^ 0x82D0A0D) << 8) & 0xA7D0000 ^ 0x2750000 ^ (((v27 ^ 0x82D0A0D) << 8) ^ 0x7D0A0000) & (v27 ^ 0x82D0A0D)))) ^ 0xB49FB322;
  v29 = *(v21 + 8 * v20);
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x2BC]) - 10708;
  return v29(4294967199, 74, 4100225462, 176, 4100225463, 4100225464, 26, STACK[0x258]);
}

uint64_t sub_1006A57DC()
{
  v0 = STACK[0xF10] - 11670;
  LODWORD(STACK[0x2614]) = STACK[0x69AC];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006A581C@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v24 = *(STACK[0xEA0] + ((495 * ((v11 - (a9 & 0xF2) - 647) ^ v13)) & 0x1FF ^ 0x100));
  v25 = v24 ^ a6;
  v26 = v15 + (v24 ^ (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & a7 ^ (v24 | a5))) ^ (v24 | a5))) ^ (v24 | a5))) ^ (v24 | a5))) ^ (v24 | a5))) ^ (v24 | a5))) ^ a8) * v14;
  v27 = v19 + (*(v9 + v26 - (((v26 * v16) >> 32) >> 1) * v17) ^ a1) * v14;
  *(v18 + (*(v12 + 4 * (a2 + 2899 * (v11 ^ 0x3C2) - ((((a2 + 2899 * (v11 ^ 0x3C2u)) * a3) >> 32) >> 13) * a4)) ^ v20) + v22) = *(v9 + v27 - (((v27 * v16) >> 32) >> 1) * v17) ^ v21;
  return (*(STACK[0xF18] + 8 * (((a9 == 510) * v23) ^ v10)))();
}

uint64_t sub_1006A5A44(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v18 = v8 + v14;
  LODWORD(STACK[0x698]) = LODWORD(STACK[0x4B8]) + LODWORD(STACK[0x620]);
  LODWORD(STACK[0x620]) = v9 + LODWORD(STACK[0x4C4]);
  v19 = a6 ^ v13 ^ LODWORD(STACK[0x628]);
  v20 = STACK[0x4B4];
  v21 = (LODWORD(STACK[0x4B4]) - 419435416) & 0x18FFFF5F;
  LODWORD(STACK[0x688]) = v21;
  LODWORD(STACK[0x680]) = ((v12 ^ 0x81853F90) - 704259865) ^ ((v12 ^ 0x9E65F1A0) - 907733289) ^ ((v21 ^ 0xDE6139C3) + (v12 ^ 0x89E1ECFD));
  v22 = v18 + (v20 ^ 0xDF4FE41);
  v23 = ((LODWORD(STACK[0x658]) ^ a2) - a2) ^ ((LODWORD(STACK[0x658]) ^ a8) - a8) ^ ((((v19 ^ LODWORD(STACK[0x61C]) ^ 0x77FB8DFC) + 2066530760) ^ ((v19 ^ LODWORD(STACK[0x61C]) ^ 0xEE332E34) - 488349168) ^ ((v19 ^ LODWORD(STACK[0x61C]) ^ 0x88169DE3) - 2067672615)) - (((v19 ^ 0x5E38D744) + 1391434624) ^ ((v19 ^ 0x69A45116) + 1702042926) ^ ((v19 ^ 0x9E2BC16) + 87420974)) + 362808431);
  LODWORD(STACK[0x690]) = ((v23 ^ 0xF88A7948) + 35608962) ^ ((v23 ^ 0xF12870FE) + 196956216) ^ ((v23 ^ 0x9A209B6) - 214488704);
  v24 = v11 - a1 - 1456055151;
  v25 = v24 ^ a8;
  v26 = (v24 ^ a8) & 0x10000000;
  if ((v26 & a1) != 0)
  {
    v26 = -v26;
  }

  v27 = v26 + a1;
  v28 = (v22 ^ v13 ^ a6) + (v22 ^ v13);
  v29 = v22 - v28;
  v30 = v10 ^ 0x7D76F299 ^ v22 ^ v13;
  v31 = (v22 ^ v13) - (v22 - v28);
  v32 = v28 ^ v16 ^ v31;
  v33 = (((v32 ^ LODWORD(STACK[0x648]) ^ 0x9CBDA6BB) - 1746364042) ^ ((v32 ^ LODWORD(STACK[0x648]) ^ 0xCB56B628) - 1073509913) ^ ((v32 ^ LODWORD(STACK[0x648]) ^ 0x46352EB8) + 1298141559)) - (((v32 ^ 0x68A98686) + 1677506889) ^ ((v32 ^ 0xAF15DB8F) - 1539251134) ^ ((v32 ^ 0xF9C2674D) - 224962428));
  v34 = (v25 ^ a2) + v25;
  v35 = v24 - v34;
  v36 = v25 - v35;
  v37 = ((LODWORD(STACK[0x648]) ^ 0x2FA0046F ^ (v25 - v35)) - (v25 - v35)) ^ ((LODWORD(STACK[0x648]) ^ 0x2FA0046F ^ v34) - v34) ^ (v33 + 446694309);
  LODWORD(STACK[0x678]) = ((v37 ^ 0xA2F18C4E) + 1573298035) ^ ((v37 ^ 0x5D1419CB) - 1574761736) ^ ((v37 ^ 0xFFE59585) + 13797050);
  LODWORD(STACK[0x668]) = ((v16 ^ 0xC86BC7E3) + 932460573) ^ ((v16 ^ 0x8077CE51) + 2139632047) ^ ((v16 ^ 0x766233F6) - 1986147318);
  v38 = v29 ^ v28;
  v39 = v29 + v30;
  v40 = (v31 + (((v38 & 0xC5CCB655 ^ 0xC3175FED) + 1263816350) ^ ((v38 & 0xC5CCB655 ^ 0x25737C45) - 1389335242) ^ ((v38 & 0xC5CCB655 ^ 0xE66423A8) + 1848062681)) + (((v38 & 0xC5CCB655 ^ 0x9BD14156) + 1810572170) ^ ((v38 & 0xC5CCB655 ^ 0xE680DC63) + 381337277) ^ ((v38 & 0xC5CCB655 ^ 0xB89D2B60) + 1218922944)) + 2079941551) ^ (v29 + v30);
  v41 = ((v40 ^ 0xB419D8E0) + 600157475) ^ ((v40 ^ 0xBCF1B34E) + 724420237) ^ ((v40 ^ 0x8E86BAE) - 1623974291);
  v42 = v25 & 0xEFFFFFFF ^ 0xCD4C98A0 ^ v27;
  v43 = (((v31 ^ v29 ^ 0xBDA7F53D) - 1839891981) ^ ((v31 ^ v29 ^ 0xD204A656) - 34198886) ^ ((v31 ^ v29 ^ 0x6FA3536B) + 1079107493)) - v41;
  v44 = (((v38 ^ 0x972C91FC) - 1727774137) ^ ((v38 ^ 0xA94F5B01) - 1486387012) ^ ((v38 ^ 0x3E63CAFD) + 810228040)) + 1836122551;
  v45 = (((v16 & 0x870801DD ^ 0xCDF51FD9) - 1338382795) ^ ((v16 & 0x870801DD ^ 0x891D899) + 1969037685) ^ ((v16 & 0x870801DD ^ 0xC36CC704) - 1096794390)) + (((v16 & 0x870801DD ^ 0xECF3C9B7) + 1570807818) ^ ((v16 & 0x870801DD ^ 0xF4BF16D2) + 1173127021) ^ ((v16 & 0x870801DD ^ 0x994CDEFC) + 673167171)) + 728227096 + v41 - 1868346541;
  v46 = v41 - 1868346541 + v44;
  v47 = STACK[0x640];
  v48 = v45 ^ LODWORD(STACK[0x640]) ^ (v46 + 1541826936);
  v49 = v35 ^ v34;
  v50 = v36 ^ v35;
  v51 = (v42 + v35) ^ v36;
  v52 = v50 - v51;
  v53 = v51 + v49;
  v54 = ((LODWORD(STACK[0x510]) ^ (v51 - 2029518371)) - (v51 - 2029518371)) ^ ((LODWORD(STACK[0x510]) ^ v53) - v53) ^ ((((v48 ^ v15 ^ 0x7E06F8CF) - 1994672027) ^ ((v48 ^ v15 ^ 0x1647C045) - 514162449) ^ ((v48 ^ v15 ^ 0x799F06A1) - 1904065013)) - (((v48 ^ 0x9AA0BA0A) + 1841167010) ^ ((v48 ^ 0x6176F7AE) - 1771325690) ^ ((v48 ^ 0xC5A877E0) + 850736972)) - 492831633);
  LODWORD(STACK[0x658]) = ((v54 ^ 0x63486B12) + 814465887) ^ ((v54 ^ 0xBAF0ED4A) - 382515961) ^ ((v54 ^ 0xD9B88658) - 1971638763);
  LODWORD(STACK[0x648]) = ((v47 ^ 0xFF26A088) + 14245752) ^ ((v47 ^ 0xDFA63877) + 542754697) ^ ((v47 ^ 0x1EFEA2BB) - 520004283);
  v55 = (v43 + 1743382771) ^ v39;
  v56 = (v43 + 1743382771) ^ v45;
  v57 = (((v16 & 0x870801DD ^ 0xCDF51FD9) - 1338382795) ^ ((v16 & 0x870801DD ^ 0x891D899) + 1969037685) ^ ((v16 & 0x870801DD ^ 0xC36CC704) - 1096794390)) + (((v16 & 0x870801DD ^ 0xECF3C9B7) + 1570807818) ^ ((v16 & 0x870801DD ^ 0xF4BF16D2) + 1173127021) ^ ((v16 & 0x870801DD ^ 0x994CDEFC) + 673167171)) + 1954485611 - v44 - v56 + 1526881845;
  v58 = v56 ^ (v46 + 1487067297);
  v59 = v57 ^ LODWORD(STACK[0x630]) ^ v58;
  v60 = (((v59 ^ v17 ^ 0x9FE42AAE) - 1369346288) ^ ((v59 ^ v17 ^ 0x36F3B0CC) + 125236590) ^ ((v59 ^ v17 ^ 0xB8C9A449) - 1991450135)) - (((v59 ^ 0x551A6240) + 1688152034) ^ ((v59 ^ 0xC55607CD) - 187481491) ^ ((v59 ^ 0xBFEC61E2) - 1905712060));
  v61 = ((LODWORD(STACK[0x630]) ^ 0x4805E7B8) - 1208346552) ^ ((LODWORD(STACK[0x630]) ^ 0xD74AD3E6) + 682961946) ^ ((LODWORD(STACK[0x630]) ^ 0xB0EF3031) + 1326501839);
  v62 = v52 ^ (v51 - 2029518371);
  v63 = v51 - 2029518371 - v53;
  v64 = v62 ^ (v53 - 54759639);
  v65 = (((v64 ^ v17 ^ 0x66FEFA04) + 1876958964) ^ ((v64 ^ v17 ^ 0xDC64BBD2) - 713400538) ^ ((v64 ^ v17 ^ 0x84E47B92) - 1912955034)) - (((v64 ^ 0xC00EAFE1) - 921679081) ^ ((v64 ^ 0xF89B280B) - 242889475) ^ ((v64 ^ 0x389587EA) + 831218462));
  v66 = v63 - v62;
  v67 = (v60 - 37108156) ^ ((LODWORD(STACK[0x558]) ^ v66) - v66);
  v68 = ((v65 - ((2 * v65 + 58461320) & 0xDE27DAA) - 659602151) ^ 0x6F13ED5 ^ v67) - (v62 + 870620682);
  v69 = v64 ^ (v62 + 870620682);
  v70 = ((v64 ^ 0xDB1209FF) - 770904823) ^ ((v64 ^ 0x25B02601) + 749650679) ^ ((v64 ^ 0xFEA22FFE) - 138622198);
  v71 = v55 + v56 + 1686528945;
  v72 = (v71 ^ v57) + v58 - 328719538 + (v67 & 0x7B4F5FB4) + (v67 & 0x7B4F5FB4 ^ 0x7B4F5FB4);
  v73 = v58 ^ (v56 + 870620682) ^ (v58 + 1740079874);
  v74 = v71 - v72;
  v75 = v58 + 1740079874 + v74;
  v76 = v75 ^ v72;
  v77 = ((LODWORD(STACK[0x5F0]) ^ 0xDE98D92) + 1521385260) ^ ((LODWORD(STACK[0x5F0]) ^ 0x48D99E95) + 530476077) ^ ((LODWORD(STACK[0x5F0]) ^ 0x45301307) + 309846463);
  v78 = ((v73 ^ 0x95066416) - 2058982695) ^ ((v73 ^ 0xA5A38E1F) - 1243381550) ^ ((v73 ^ 0x30A5EA09) + 551937224);
  v70 += 1587060234;
  v79 = v69 ^ v70;
  v80 = v62 + (v52 ^ (v42 + v35)) + 1686528945;
  v81 = v70 + (v80 ^ v66);
  v82 = v80 - (v80 ^ v66);
  v83 = ((v82 ^ v79 ^ 0xD7381F69) + 404715116) ^ ((v82 ^ v79 ^ 0x226FFBF0) - 314010893) ^ ((v82 ^ v79 ^ 0xF557E499) + 980454812);
  v84 = ((v75 ^ v73 ^ 0xE5367F36) - 176786951) ^ ((v75 ^ v73 ^ 0xC59B8644) - 707032949) ^ ((v75 ^ v73 ^ 0x20ADF972) + 820901821);
  v85 = ((v82 ^ v81 ^ 0x4C4AEE63) - 1860814101) ^ ((v82 ^ v81 ^ 0xB749CB07) + 1779769231) ^ ((v82 ^ v81 ^ 0xFB032564) + 643822062);
  v86 = ((v76 ^ 0xA1BBDC06) + 1715244246) ^ ((v76 ^ 0x172D4401) - 794159917) ^ ((v76 ^ 0xB6969807) + 1896990933);
  v87 = (v80 - v81) ^ v81;
  v88 = v83 - v85;
  v89 = v81 - v83 - (v83 - v85) - 1057882756;
  v90 = (v89 & 0xED08C0CB ^ 0x8EF56086) & (v89 & 0xED08C0CB | 0x12F52C14) ^ v89 & 0x61088049;
  v91 = v74 ^ v72;
  v92 = v72 - v84;
  v93 = v84 - v86;
  v94 = (v86 - 1709334155) ^ LODWORD(STACK[0x608]) ^ ((((v90 ^ 0x1F80EC01) - 484685893) ^ ((v90 ^ 0xAA8B211F) + 1444383397) ^ ((v90 ^ 0x5AF62DD1) - 1502968213)) - 956542525 + v92 - v93 - 1852674361);
  v95 = ((LODWORD(STACK[0x638]) ^ 0x121B13B3 ^ v89) - v89) ^ ((LODWORD(STACK[0x638]) ^ 0x121B13B3 ^ (v85 - 2075648577)) - (v85 - 2075648577)) ^ ((((v94 ^ LODWORD(STACK[0x638]) ^ 0xE109C770) + 1155618198) ^ ((v94 ^ LODWORD(STACK[0x638]) ^ 0x84A5B745) + 558704033) ^ ((v94 ^ LODWORD(STACK[0x638]) ^ 0xDF0F6EC0) + 2062023718)) - (((v94 ^ 0x4C06DADD) - 370259911) ^ ((v94 ^ 0xDEF8D876) + 2064665236) ^ ((v94 ^ 0x3A460FED) - 1615946487)) - 301657197);
  v96 = ((v95 ^ 0x726D77A0) - 1643130680) ^ ((v95 ^ 0xEE27E6FD) + 38093211) ^ ((v95 ^ 0x9C4A915D) + 1881683515);
  v97 = ((v87 ^ 0x810438EC) + 1586250754) ^ ((v87 ^ 0x2F1E864F) - 258540893) ^ ((v87 ^ 0xAE1ABEA3) + 1905443407);
  v93 += 166468967;
  LODWORD(STACK[0x640]) = (((LODWORD(STACK[0x608]) ^ 0xC31026A9) + 1022351703) ^ ((LODWORD(STACK[0x608]) ^ 0xA218DC9A) + 1575428966) ^ ((LODWORD(STACK[0x608]) ^ 0xC9B0F775) + 911149195)) - 1268092544 + v93;
  v98 = (((v91 ^ 0x58D388C3) + 881080190) ^ ((v91 ^ 0xD24568F7) - 1106061494) ^ ((v91 ^ 0x8A96E034) - 423534709)) - 2 * v86 + 1012995659;
  v99 = v93 - v98 + 682249033;
  v100 = ((LODWORD(STACK[0x610]) ^ 0xFA1BE682) + 98834814) ^ ((LODWORD(STACK[0x610]) ^ 0x80EEDB47) + 2131829945) ^ ((LODWORD(STACK[0x610]) ^ 0x68EE2E76) - 1760439926);
  LODWORD(STACK[0x670]) = (v86 + 544495343 + (((v99 ^ 0x949E3808) + 485683515) ^ ((v99 ^ 0xDCEDA88A) + 1417765305) ^ ((v99 ^ 0xCFD970B2) + 1203091841))) ^ (v86 - 1259644601 + v98);
  LODWORD(STACK[0x638]) = LODWORD(STACK[0x4D8]) + LODWORD(STACK[0x668]) + v29;
  LODWORD(STACK[0x4F8]) += v68;
  LODWORD(STACK[0x4F4]) += v61 + 1669636729 + v56;
  LODWORD(STACK[0x4F0]) = LODWORD(STACK[0x4F0]) - v52 - 1405331533 + LODWORD(STACK[0x658]);
  LODWORD(STACK[0x648]) = LODWORD(STACK[0x4D4]) + v100 + (((v99 ^ 0x9EA2E6A6) + 382611349) ^ ((v99 ^ 0xF6C111D6) + 2125322469) ^ ((v99 ^ 0xEFC91740) + 1738923635));
  v101 = (v88 - (v97 - 2 * v85 - 1759822804) + 734293462) ^ (v85 - 53085715 + v97 - 2 * v85 - 1759822804);
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x508]) - v88 + 90696977 + v96;
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x500]) + v77 - 1736966537 + v78;
  LODWORD(STACK[0x690]) = (((v101 ^ 0x40B3F0E7) + 1132726802) ^ ((v101 ^ 0xD8B02691) - 611853208) ^ ((v101 ^ 0x64CBD37F) + 1744578954)) - 201814031;
  return (*(STACK[0x6A0] + 8 * (LODWORD(STACK[0x4B4]) ^ ((2 * ((STACK[0x4AC] & 1) == 0)) & 0xDF | (32 * ((STACK[0x4AC] & 1) == 0))))))();
}

uint64_t sub_1006A731C()
{
  v1 = STACK[0xF18];
  STACK[0x8390] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 2013) | 0x11) + 2341)))();
}

uint64_t sub_1006A7354()
{
  v3 = (((((v2 + 2897) | 0x4285) ^ 0x32AAA4EB) + (*(v0 - 0x217E172EFA1E804) ^ 0xCD553CBA)) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xEF0EF790) + 284231792) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xCB8E8700 ^ ((v2 - 5847) | 0x883B)) + 879883205)) - 54746966;
  v4 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10EF8]) = v2 - v4 + 33162;
  STACK[0x10EF0] = v1;
  STACK[0x10F00] = v0 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  STACK[0x10EE8] = &STACK[0x8A24];
  STACK[0x10EE0] = &STACK[0x4D08];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 45293)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((8761 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v2)))(v6);
}

uint64_t sub_1006A7610@<X0>(unint64_t a1@<X5>, char a2@<W6>, char a3@<W7>, int a4@<W8>)
{
  v13 = (((v5 ^ 0xC12E54FD) + 1053928195) ^ ((v5 ^ 0x8484EBF7) + 2071663625) ^ ((((v4 ^ v6) - 1400943779) ^ v5) + 1400932325)) - 251493040;
  v14 = (v8 + (((v13 ^ 0xF577353E) + 228881538) ^ v13 ^ ((v13 ^ 0x2A47CAC1) + v7) ^ ((v13 ^ v9) + v11) ^ ((v13 ^ v12) - 2094236095) ^ a1));
  v15 = *v14;
  v16 = ((((v14 ^ a4) & 0x7FFFFFFF) * v10) ^ ((((v14 ^ a4) & 0x7FFFFFFF) * v10) >> 16)) * v10;
  v17 = *(STACK[0x3A0] + (v16 >> 24)) ^ v15 ^ *((v16 >> 24) + STACK[0x390] + 1) ^ *(STACK[0x398] + (v16 >> 24)) ^ v16 ^ (-63 * (v16 >> 24));
  LODWORD(v16) = (((v17 ^ a2) + 109) ^ ((v17 ^ a3) - 28) ^ ((v17 ^ 0x8F) - 113)) == 130;
  return (*(STACK[0x430] + 8 * (((2 * v16) | (4 * v16)) ^ (v4 - 14013))))();
}

uint64_t sub_1006A7804()
{
  v2 = v1 + 8;
  STACK[0xB1D8] = v2;
  v3 = *(v2 + 8);
  STACK[0xB1E0] = v2 + 8;
  return (*(STACK[0xF18] + 8 * ((31 * ((v3 ^ (((v0 - 681331814) & 0x289BCFFDu) + 1512711902)) > 3)) ^ v0)))();
}

uint64_t sub_1006A7870()
{
  v2 = STACK[0x13B0];
  STACK[0x1428] -= 112;
  return (*(v1 + 8 * ((51255 * (v2 == v0)) ^ 0x7ECEu)))();
}

uint64_t sub_1006A7A20@<X0>(char a1@<W1>, uint64_t a2@<X2>, unsigned int a3@<W3>, int a4@<W4>, char a5@<W5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v23 = 2 * (((v11 ^ v17) - 101) ^ v11 ^ ((v11 ^ v13) + 79) ^ ((v11 ^ v19) + 117) ^ ((a1 ^ v11 ^ v18) + 29));
  v24 = ((v23 ^ 0x53) + 13) ^ ((v23 ^ 0x94) - 52) ^ ((v23 ^ v15) - 30);
  v25 = (v10 + (v7 + v11 + v12));
  v26 = v11 + v24 * a5 + (v24 - 39) * ((*(v9 + (v11 + v12)) ^ 0x5F) - 106);
  v27 = ((v25 ^ *(*v16 + (*v21 & a3))) & 0x7FFFFFFF) * a4;
  v28 = (v27 ^ HIWORD(v27)) * a4;
  *v25 = *(v22 + (v28 >> 24)) ^ *(a2 + (v28 >> 24)) ^ *((v28 >> 24) + a7 + 3) ^ v28 ^ (61 * BYTE3(v28)) ^ (v26 + 30);
  if (v8 < v14 != v11 + a6 < v14)
  {
    v29 = v8 < v14;
  }

  else
  {
    v29 = v11 + a6 < v8;
  }

  return (*(v20 + 8 * ((42 * !v29) ^ 0x7517u)))();
}

uint64_t sub_1006A7B9C@<X0>(unsigned int a1@<W8>)
{
  v5 = 4 * (v2 - 185918984);
  v6 = (STACK[0x7A0] + v5);
  v7 = *(*v4 + (*v1 & 0xFFFFFFFFB355FC3CLL)) + v6;
  *(STACK[0x7E0] + v5) ^= (1598309301 * v6) ^ *v6 ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((a1 + 1211 - 0x11E0F58F7EF684CALL * (qword_1010C0540 ^ 0x94DFF197226FCCCLL) + (v7 - 1286210500) - 0x11E0F58F7EF6D403) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ 0xEC11BF89 ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (((v7 - 1286210498) + 0xABD9D4BB3D1309 * (qword_1010C0540 ^ 0x94DFF197226FCCCLL) + 0xABD9D4BB3D1309) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  return (*(v3 + 8 * a1))();
}

uint64_t sub_1006A7CC8(uint64_t a1, int a2)
{
  v10 = (v5 ^ v8 ^ v4) + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v6 != v5) * a2) ^ v7)))();
}

uint64_t sub_1006A7D0C()
{
  v1 = STACK[0x19A0];
  v2 = STACK[0x7330];
  v3 = (((LODWORD(STACK[0x8E1C]) ^ 0x83BA6792) + 2084935790) ^ ((LODWORD(STACK[0x8E1C]) ^ 0x1FE94DE2) - 535383522) ^ ((LODWORD(STACK[0x8E1C]) ^ (2 * (v0 + 29480) + 1971705579)) - 1971776865)) - 222681226;
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) | 0xB85E55BA) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x47A1AA40)) ^ 0xC7FAD87);
  STACK[0x10EF0] = STACK[0x8C40];
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  STACK[0x10F00] = STACK[0x6B0];
  STACK[0x10F08] = &STACK[0xF28] ^ 0x29DCF992F3801DC7;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EFC]) = v4 + v0 + 1478441288;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD377)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((30956 * (LODWORD(STACK[0x10EF8]) == -371865839)) ^ v0)))(v6);
}

uint64_t sub_1006A7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x1700] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 - 35495 + ((v6 + 1351541393) & 0xAF71B7FF))))(a1, a2, a3, a4, a5, a6, STACK[0x950]);
}

uint64_t sub_1006A8004()
{
  v2 = *(v0 - 0x217E172EFA1E81CLL);
  v3 = (((*(v0 - 0x217E172EFA1E804) ^ 0xCB54DC87) + 883630969) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xCB85E62E) + 880417234) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xE904EAB0 ^ (((v1 ^ 0x4310) - 18690) | 0x100)) + 385548872)) - 54746966;
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x4DF46AE2) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xB20B9518)) ^ 0x2062451E);
  STACK[0x10F00] = v0 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  LODWORD(STACK[0x10EF8]) = (v1 ^ 0x4310) - v4 + 15447;
  STACK[0x10EE8] = &STACK[0x1F44];
  STACK[0x10EE0] = &STACK[0x2D74];
  STACK[0x10EF0] = v2;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * ((v1 ^ 0x4310) + 27578)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((56239 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v1 ^ 0x4310)))(v6);
}

uint64_t sub_1006A81D8()
{
  v1 = v0;
  STACK[0x55E8] = STACK[0xE40];
  LODWORD(STACK[0x4CDC]) = STACK[0xDF0];
  v2 = STACK[0x7690] - 3280;
  STACK[0x9A68] = STACK[0xBA50];
  STACK[0x9A70] = &STACK[0xC4D0] + v2;
  STACK[0x7690] = v2 + 32;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCDC4)))(*(&off_1010A0B50 + v0 + 2633) - 453543842, &STACK[0xC4D0] + v2, 20);
  STACK[0x98A8] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 + 4070)))(v4);
}

uint64_t sub_1006A84A4()
{
  v8 = (v5 + v0);
  v9 = (*(*(*(v7 + 8 * (v1 - 43385)) - 1680276466) + (*(*(v7 + 8 * (v1 - 42200)) - 231415367) & 0x72D7ACF8)) ^ v8) & (v1 + 2147437320);
  v10 = *(*(v7 + 8 * (v1 ^ 0xBEC4)) + (v0 & 0xF | (16 * ((1864610357 * ((1864610357 * v9) ^ ((1864610357 * v9) >> 16))) >> 24))) - 1579369363) ^ *v8 ^ (53 * ((53 * v9) ^ ((1864610357 * v9) >> 16)));
  if (v2 < v3 != v0 + 1 > 0xC7CE8A16)
  {
    v11 = v2 < v3;
  }

  else
  {
    v11 = v0 + 942765546 < v2;
  }

  *v8 = v10;
  return (*(v6 + 8 * ((!v11 * v4) ^ v1)))();
}

uint64_t sub_1006A85F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  v32 = (((a2 ^ 0x29A1F14) - 43654932) ^ ((a2 ^ 0x235EE13F) - 593420607) ^ ((a2 ^ 0x3CB87857) - 1018722391)) + 2127772465 + (((a30 ^ 0xFA4667AA) + 96049238) ^ ((a30 ^ 0x649762D8) - 1687642840) ^ (((v30 + 2124477) | 0x80104850) + (a30 ^ 0x83AD830E) - 64899936));
  v33 = (v32 ^ 0xBEA599C6) & (2 * (v32 & 0xBC25D1C7)) ^ v32 & 0xBC25D1C7;
  v34 = ((2 * (v32 ^ 0xDEEE1B4A)) ^ 0xC597951A) & (v32 ^ 0xDEEE1B4A) ^ (2 * (v32 ^ 0xDEEE1B4A)) & 0x62CBCA8C;
  v35 = v34 ^ 0x22484A85;
  v36 = (v34 ^ 0x40838008) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0x8B2F2A34) & v35 ^ (4 * v35) & 0x62CBCA8C;
  v38 = (v37 ^ 0x20B0A00) & (16 * v36) ^ v36;
  v39 = ((16 * (v37 ^ 0x60C0C089)) ^ 0x2CBCA8D0) & (v37 ^ 0x60C0C089) ^ (16 * (v37 ^ 0x60C0C089)) & 0x62CBCA80;
  v40 = v38 ^ 0x62CBCA8D ^ (v39 ^ 0x20888800) & (v38 << 8);
  return (*(v31 + 8 * v30))(((v40 << 16) ^ 0x4A8D0000) & (((v39 ^ 0x4243420D) << 8) & 0x62CB0000 ^ 0x20010000 ^ (((v39 ^ 0x4243420D) << 8) ^ 0x4BCA0000) & (v39 ^ 0x4243420Du)), (v40 << 16) & 0x62CB0000, (v40 << 16) ^ 0x4A8D0000u, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1006A8824()
{
  v4 = *(v2 + v0);
  v5 = STACK[0x2094];
  STACK[0x8FE8] = v4;
  LODWORD(STACK[0x44A8]) = v5;
  LODWORD(STACK[0x704C]) = -2116087622;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v3;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x940)))();
}

uint64_t sub_1006A88C4()
{
  STACK[0x5B40] = v3;
  LODWORD(STACK[0x4B20]) = v2;
  STACK[0x17F8] = v1;
  return (*(STACK[0xF18] + 8 * ((6953 * (v0 != 1964030194)) ^ (v0 + 18180))))();
}

uint64_t sub_1006A8910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v70 = (v61 ^ a8) & (2 * (v61 & a7)) ^ v61 & a7;
  v71 = ((((a9 + a5) & a6) + v63) ^ (2 * v61)) & (v61 ^ a7);
  *(v68 + v62 - 1) = (v61 ^ (2 * ((v64 ^ (4 * v71)) & (v71 ^ v65) & (16 * (v71 & (4 * v70) ^ v70)) ^ v71 & (4 * v70) ^ v70)) ^ v66) * (v61 + 71);
  if (v60 < a4 != v62 - 1 > a3)
  {
    v72 = v62 - 1 > a3;
  }

  else
  {
    v72 = v62 - 1 + a4 > v60;
  }

  return (*(v67 + 8 * ((v72 * v69) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1006A89B4@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + 2;
  v6 = *(v5 + 6 * v2 + 4);
  v7 = *(v5 + 6 * v3 + 4);
  v8 = (v6 + 5596);
  LODWORD(v5) = (v7 + 5596);
  v9 = v5 < 0x21A1;
  v10 = v8 < v5;
  if (v8 < 0x21A1 != v9)
  {
    v10 = v9;
  }

  return (*(a1 + 8 * ((v10 * ((v4 - 4690) ^ 0x1FB5)) ^ v4)))();
}

uint64_t sub_1006A8A2C()
{
  v1 = (STACK[0xF10] - 2856) | 0x2540;
  v2 = STACK[0xF10] - 1516574117;
  v3 = STACK[0xF10] - 22823;
  LODWORD(STACK[0x715C]) = v0;
  return (*(STACK[0xF18] + 8 * (((v2 ^ v1 ^ 0xA59B9CB8) * (v0 == -371865839)) ^ v3)))();
}

uint64_t sub_1006A8AE8@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(v1 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0xBF) + 95;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * v4) ^ v2)))();
}

uint64_t sub_1006A8B78()
{
  v4 = *(v1 + 4);
  v5 = ((v3 + 2840) ^ 0x5022D4AC) + v4;
  v6 = v4 > 0xAFDDA068;
  v7 = v2 + 368641048 < v5;
  if ((v2 + 368641048) < 0x50225F97 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((v7 * ((v3 ^ v0) - 36934)) ^ v3)))();
}

uint64_t sub_1006A8DA8()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (v0 - 31543));
  return (*(v1 + 8 * ((v0 - 34718) ^ (v0 - 31543))))();
}

uint64_t sub_1006A8DF8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37189)))();
  STACK[0x3AC8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006A8F1C()
{
  v1 = STACK[0xF18];
  STACK[0x2308] = *(STACK[0xF18] + 8 * (v0 - 19728));
  return (*(v1 + 8 * ((v0 - 19728) ^ 0xCDF6 ^ (v0 - 290))))();
}

uint64_t sub_1006A8F6C@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3830]) = 0;
  STACK[0x7100] = v2;
  STACK[0x8AD8] = a1;
  STACK[0x5180] = 0;
  LODWORD(STACK[0x2F3C]) = 502589907;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006A90B0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = v1 + 1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0xE3D1F5B2) - (&STACK[0x10000] + 3800) + 236389671) ^ 0x6633C872) - 8972;
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x51EB)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 104) = v2;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1006A9254@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF18];
  STACK[0x36B8] = *(STACK[0xF18] + 8 * a1);
  STACK[0x9020] = *(v2 + 8 * (v1 - 35530));
  return (*(v2 + 8 * (v1 - 23158)))();
}

uint64_t sub_1006A94B4()
{
  v1 = STACK[0x1E30];
  *(*(*(v1 + 520) + 8) + 120 * STACK[0x1750] + 8) = 0x981390C2FED9246;
  *(v1 + 480) = 0;
  v2 = STACK[0xF18];
  STACK[0x7DD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x3D78 ^ (((v0 + 1768504379) > 0x8A8C423D) * (((v0 + 30178) | 0x4854) - 28352)))))();
}

uint64_t sub_1006A9588()
{
  v1 = v0 - 18789;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * (((~(&STACK[0x10000] + 3800) & 0x1E765938) - (~(&STACK[0x10000] + 3800) | 0x1E765939)) ^ 0xF85042F6) + 296753103;
  v2 = v0 ^ 0x41F1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1006A9618@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0xFC840066) - ((&STACK[0x10000] + 3800) & 0xFC840060)) ^ 0x1AA21BA9));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 336) = 0;
  return (*(v3 + 8 * (v1 - 20945)))(v4);
}

uint64_t sub_1006A9AE0()
{
  v2 = v0 == (v1 ^ 0xE9D55B7C ^ (v1 + 288181298) & 0xEED23FDF);
  LOBYTE(STACK[0x4EFF]) = v2;
  return (*(STACK[0xF18] + 8 * ((2582 * v2) ^ (v1 - 5518))))();
}

uint64_t sub_1006A9B74()
{
  v5 = *(v0 + 324);
  v6 = STACK[0xF18];
  STACK[0x5120] = *(STACK[0xF18] + 8 * v3);
  v9 = v5 == -371865839 || v2 == 0x981390C2FED9246 || v1 == 0x981390C2FED9246;
  return (*(v6 + 8 * ((1020 * v9) ^ v4)))();
}

uint64_t sub_1006A9C3C()
{
  *STACK[0x53F8] = 123;
  LOBYTE(STACK[0x88CF]) = 123;
  *(STACK[0x7A78] + 328) = 371865838;
  return (*(STACK[0xF18] + 8 * ((((*(v0 + 1) & 1) == 0) * ((((v1 ^ 0x1519) - 3235) | 0xCA4) ^ v1 ^ 0x1519)) ^ v1 ^ 0x1519)))();
}

uint64_t sub_1006A9CA0()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = 345130206;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006A9CE8@<X0>(unint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x410] = a1;
  v62 = a2 - 675340497;
  v63 = (((v61 ^ 0xC5E40553) + 974912173) ^ ((v61 ^ 0xC004CC2B) + 1073427413) ^ ((v61 ^ (((a2 - 675340497) ^ 0xD7BFDDB5) - 21538) ^ 0xEC355841) + 332067223)) + 328902856;
  v64 = STACK[0x430];
  v65 = (*(STACK[0x430] + 8 * (v62 ^ 0xD7BFBC97)))(*(a61 - 1306953403), &STACK[0x5A8], (((v63 ^ 0xE19C688B) + 933709517) ^ v63 ^ ((v63 ^ 0xAC6475D4) + 2053069716) ^ ((v63 ^ 0x9A833710) + 1287133528) ^ ((v63 ^ 0xFEBFFBF7) + 679794097)) & 0xFFFFF000 ^ 0x29C4D000, 1);
  return (*(v64 + 8 * (v62 ^ 0xD7BFD472 ^ (39 * ((((((2 * v65) & 0xAF7EEFFE) + (v65 ^ 0xD7BF77FF) - v62) | (v62 - (((2 * v65) & 0xAF7EEFFE) + (v65 ^ 0xD7BF77FF)))) & 0x80000000) == 0)))))();
}

uint64_t sub_1006A9F14@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = (*(v9 + (v10 ^ 0xE8) * v13 + 2780740 - (((((v10 ^ 0xE8u) * v13 + 2780740) * a1) >> 32) >> 11) * a2) ^ a5) * v13;
  LOBYTE(v23) = *(STACK[0xEA0] + (((*(v9 + (v23 - ((v23 * a6) >> 32) * a2)) ^ v15) * v16) & 0x1FF));
  v24 = v23 & v18 ^ v14;
  *(v19 + (*(v11 + 4 * (a4 + (v10 ^ 0x3C2) * a3 - ((((a4 + (v10 ^ 0x3C2u) * a3) * a7) >> 32) >> 13) * a8)) ^ v12) + v21) = v17 ^ v23 ^ (2 * ((v23 ^ v20) & (2 * ((v23 ^ v20) & (2 * ((v23 ^ v20) & (2 * ((v23 ^ v20) & (2 * ((v23 ^ v20) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ 0xF1;
  return (*(STACK[0xF18] + 8 * (((v10 == 255) * v22) ^ a9)))();
}

uint64_t sub_1006AA0DC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD7F0)))();
  STACK[0x38F8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006AA11C()
{
  **(v1 + 4464) = STACK[0x6AC8];
  **(v1 + 4472) = **(v1 + 4560) ^ ((v0 ^ 0xB55F) - 1275130241);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006AA168()
{
  LODWORD(STACK[0x4658]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((((v0 - 628977704) & 0x257DE61F) - 26919) ^ v0)))();
}

uint64_t sub_1006B0BC8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x63763DECAD3647A7;
  *(a1 + 8) = 0xC1F2B486029B4389;
  v4 = *(v1 + (v2 & 0x51D1B4B8));
  *(a1 + 32) = -371865839;
  *(a1 + 16) = ((6 * (v3 ^ 0x1A03u) + 0x23717FC5D5EE20E7) ^ v4 & 0x7FFFFFFFFFFFFFFFLL ^ v4 & 0x29204BEF810815B4 ^ 0x800002A00001490) - (v4 & 0x29204BEF810815B4 ^ 0x800002A00001490);
  *(a1 + 24) = 0xE9D5C711E9D5C711;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 144) = -371865839;
  *(a1 + 128) = -371865839;
  *(a1 + 116) = -371865839;
  *(a1 + 148) = 2;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 268) = -371865839;
  *(a1 + 260) = 0xE9D5C711E9D5C711;
  *(a1 + 232) = 0;
  *(a1 + 240) = -371865839;
  *(a1 + 152) = 0xE9D5C711E9D5C711;
  *(a1 + 160) = 0;
  *(a1 + 168) = -371865839;
  *(a1 + 224) = -371865839;
  STACK[0x60B8] = &STACK[0x52F8];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = 825325229;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1006B0CF0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49)
{
  *v49 = v51;
  v53 = *(a1 + 8);
  v54 = (((v50 - 12364) | 0x2911u) ^ 0xC31DA1F13ADFD5B9) + v53;
  v55 = (*(&a49 + (a49 & 3)) % (((v54 / 4) - ((2 * (v54 / 4)) & 0xF8EA10C4) - 59439006) ^ 0xFC750862) + 43) & 0x1FC;
  LODWORD(v54) = ((v55 ^ 0x372B1BEA) - 1374360155) ^ ((v55 ^ 0x60A759E3) - 107434066) ^ ((v55 ^ 0x578C4209) - 827083704);
  v56 = ((v53 ^ 0x6C507AD8) + 1452246624) ^ v53 ^ ((v53 ^ 0x6609610C) + 1557568908) ^ ((v53 ^ 0x60A7E7C9) + 1517820751) ^ ((v53 ^ 0xAFDEFF65) - 1795095581);
  return (*(v52 + 8 * ((29281 * ((((v56 ^ 0x41EA1D91) - 2095906216) ^ ((v56 ^ 0x57AD2695) - 1789642412) ^ ((v56 ^ 0xD367387C) + 295577531)) - v54 - 1855530633 < 0x7FFFFFFF)) ^ v50)))();
}

uint64_t sub_1006B0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  *v13 = 0;
  *a13 = v15;
  return (*(v16 + 8 * v14))();
}

uint64_t sub_1006B1090()
{
  LODWORD(STACK[0x566C]) = 371891400;
  LOBYTE(STACK[0x6735]) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006B1124()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33979;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x9E29) + v1)))();
}

uint64_t sub_1006B1170@<X0>(unsigned int a1@<W0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v14 = v5 - 1;
  v15 = (((v4 + 3439) ^ v7) & (2 * v14)) + (v14 ^ v6);
  v16 = v8 + v15;
  v17 = *(*v11 + (*v10 & a1));
  v18 = *(v8 + v15);
  v19 = (v9 + v15);
  v20 = ((((v16 ^ v17) & 0x7FFFFFFF) * a2) ^ ((((v16 ^ v17) & 0x7FFFFFFFu) * a2) >> 16)) * a2;
  v21 = ((((v19 ^ v17) & 0x7FFFFFFF) * a2) ^ ((((v19 ^ v17) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  *v19 = *(a4 + (v20 >> 24)) ^ v18 ^ *((v20 >> 24) + v12 + 2) ^ *((v20 >> 24) + v13 + 7) ^ *(a4 + (v21 >> 24)) ^ *((v21 >> 24) + v12 + 2) ^ *((v21 >> 24) + v13 + 7) ^ v20 ^ v21 ^ (BYTE3(v20) * a3) ^ (BYTE3(v21) * a3);
  return (*(STACK[0xF18] + 8 * (v4 | (2 * (v14 == 0)))))();
}

uint64_t sub_1006B1248()
{
  *(v1 + 160) = 0;
  *(v1 + 168) = 1024;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006B126C@<X0>(unsigned int a1@<W2>, int a2@<W3>, int a3@<W8>)
{
  v6 = v3 < a1;
  if (v6 == ((v5 + 2023341484) & 0x8765F5CD ^ 0xA1B2 ^ (24607 * (v5 ^ 0xAE11))) + a3 > 0x56E2B1E)
  {
    v6 = a3 - 91106078 < v3;
  }

  return (*(STACK[0xF18] + 8 * (((v4 & v6 ^ 1) * a2) ^ v5)))();
}

uint64_t sub_1006B12FC()
{
  v3 = *(v0 + v2);
  v4 = STACK[0x28F0];
  v5 = 139493411 * (((~(&STACK[0x10000] + 3800) | 0xB807A82) + ((&STACK[0x10000] + 3800) | 0xF47F857D)) ^ 0xF8526439);
  LOWORD(STACK[0x10EFC]) = -32733 * (((~(&STACK[0x10000] + 3800) | 0x7A82) + ((&STACK[0x10000] + 3800) | 0x857D)) ^ 0x6439) + 27992;
  STACK[0x10EE0] = &STACK[0x14BC];
  LODWORD(STACK[0x10ED8]) = v1 - v5 + 10610;
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10EE8]) = v5 - 265854682;
  LODWORD(STACK[0x10EF8]) = v5 + (v1 ^ 0x8750) + 1945538087 * v4 + 777074061;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4CD5)))(&STACK[0x10ED8]);
  v9 = LODWORD(STACK[0x10F00]) == 1497668682 || LODWORD(STACK[0x402C]) == -371865711;
  return (*(v6 + 8 * ((54 * ((((11 * (v1 ^ 0x86EA)) ^ v9) & 1) == 0)) ^ v1)))(v7);
}

uint64_t sub_1006B149C()
{
  v1 = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  v2 = STACK[0x9368];
  v3 = STACK[0x786C];
  v4 = 139493411 * ((((&STACK[0x10000] + 3800) | 0xE58D516E) - ((&STACK[0x10000] + 3800) | 0x1A72AE91) + 443723409) ^ 0xE9A0B02B);
  LODWORD(STACK[0x10EF0]) = v0 - v4 + 9257;
  LODWORD(STACK[0x10EE0]) = v4 + ((v0 - 3875) | 0x3800) + v3 + 173233377;
  STACK[0x10EE8] = v2 + 400;
  STACK[0x10ED8] = v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD80E)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((30007 * (LODWORD(STACK[0x10EE4]) == 133690028)) ^ v0)))(v6);
}

uint64_t sub_1006B1698@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x5F38] = *(STACK[0xF18] + 8 * (a1 - 10211));
  return (*(v1 + 8 * (a1 - 10211 + 10 * ((a1 - 10211) ^ 0xB9E) + 3460)))();
}

uint64_t sub_1006B17CC@<X0>(int a1@<W2>, int a2@<W8>)
{
  v3 = (*STACK[0x658] + (a2 + a1));
  v4 = 1864610357 * ((*(*STACK[0x418] + (*STACK[0x420] & 0x72D7ACF8)) ^ v3) & (((v2 - 1058223170) & 0x3F1337F8) + 2147469479));
  v5 = 1864610357 * (v4 ^ HIWORD(v4));
  *v3 = *(STACK[0x250] + (v5 >> 24)) ^ *((v5 >> 24) + STACK[0x380] + 2) ^ *((v5 >> 24) + STACK[0x378] + 7) ^ v5 ^ (103 * BYTE3(v5)) ^ 0x80;
  v6 = (((LODWORD(STACK[0x460]) ^ 0x1D9FA662) - 497002082) ^ ((LODWORD(STACK[0x460]) ^ 0x1D6315B5) - 493032885) ^ ((LODWORD(STACK[0x460]) ^ 0xE92974C6) + 383159098)) + 918098156;
  v7 = v6 < 0x4CE349DB;
  if ((a2 - 364751824) < 0x4CE349DB == v7)
  {
    v7 = a2 - 364751824 < v6;
  }

  return (*(STACK[0x430] + 8 * (v2 ^ (16 * v7))))();
}

uint64_t sub_1006B1948@<X0>(unint64_t a1@<X8>)
{
  *v3 = 0;
  *v2 = -371865839;
  LOBYTE(STACK[0x8577]) = ((v4 - 268451374) & v1) == 1610612736;
  LODWORD(STACK[0x3FDC]) = v1 & 0xFFFFFFF ^ 0x9D5C711;
  LODWORD(STACK[0x10ED8]) = v4 - 1022166737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1DBCF378) - 1648561282) ^ 0x27AC12EC) + 1987;
  STACK[0x10EF0] = 0;
  STACK[0x10EE0] = a1;
  STACK[0x10EE8] = STACK[0x590];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 + 36458)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10EF8]) == -371865839) * (((v4 - 14980) | 0x851) + 21286)) ^ v4)))(v6);
}

uint64_t sub_1006B1A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v35 = *(&a19 + v32 + 72);
  v36 = ((2 * v32) & 0xFADEFBF8) + (v32 ^ 0xFD6F7DFE);
  *(v33 + v36 + 43024898) = ((v31 + 51) | 0x26) ^ 0x95 ^ v35;
  *(v33 + v36 + 43024899) = (BYTE1(v35) ^ 0x86) + (~(2 * (BYTE1(v35) ^ 0x86)) | 0x41) + 96;
  *(v33 + v36 + 43024900) = (BYTE2(v35) ^ 0x7C) - ((2 * (BYTE2(v35) ^ 0x7C)) & 0xBF) + 95;
  *(v33 + v36 + 43024901) = (HIBYTE(v35) ^ 0x1D) - ((2 * (HIBYTE(v35) ^ 0x1D)) & 0xBF) + 95;
  return (*(v34 + 8 * ((61 * (v32 + 4 >= a31)) ^ v31)))();
}

uint64_t sub_1006B1C34()
{
  STACK[0x5658] = STACK[0x88D0];
  LODWORD(STACK[0x2564]) = -2065254325;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006B1CF0@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0xF18] + 8 * a1);
  v4 = *v2;
  *v1 = HIBYTE(v4) ^ 0x56;
  v1[1] = (BYTE6(v4) ^ 0x81) + (~(2 * (BYTE6(v4) ^ 0x81)) | 0x41) + 96;
  v1[2] = (BYTE5(v4) ^ 0x39) - ((2 * (BYTE5(v4) ^ 0x39)) & 0xBF) + 95;
  v1[3] = (BYTE4(v4) ^ 0xC) + (~(2 * (BYTE4(v4) ^ 0xC)) | 0x41) + 96;
  v1[4] = (BYTE3(v4) ^ 0x2F) + (~(2 * (BYTE3(v4) ^ 0x2F)) | 0x41) + 96;
  v1[5] = (BYTE2(v4) ^ 0xED) - ((2 * (BYTE2(v4) ^ 0xED)) & 0xBF) + 95;
  v1[6] = (BYTE1(v4) ^ 0x92) - ((2 * (BYTE1(v4) ^ 0x92)) & 0xBF) + 95;
  v1[7] = v4 ^ 0x19;
  return v3();
}

uint64_t sub_1006B2160()
{
  ++LOWORD(STACK[0x973E]);
  LODWORD(STACK[0x111C]) = v1;
  return (*(STACK[0xF18] + 8 * ((v0 - 2102687712) ^ 0x82AC95B5 ^ (10887 * ((v0 - 2102687712) < 0xA054A428)))))();
}

uint64_t sub_1006B2234(uint64_t a1, int a2, int a3)
{
  v4 = (((a2 ^ 0x254CC2E3) - 625787619) ^ ((a2 ^ 0x7A5E2C00) - 2052992000) ^ (((((v3 - 653066753) & 0x26ECFFFF) - 1228468749) ^ a2) + 1228461582)) - 771584318;
  v5 = (((a3 ^ 0x70914844) - 1888569412) ^ ((a3 ^ 0xFFB9F8B1) + 4589391) ^ ((a3 ^ 0x66FD77E4) - 1727887332)) - 771584318;
  v6 = v4 < 0xE82CC7B1;
  v7 = v4 > v5;
  if (v5 < 0xE82CC7B1 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((10077 * v7) ^ v3)))();
}

uint64_t sub_1006B2340@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 120 * v1 + 16);
  *(a1 + 192) = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 30198)))(v4 ^ (v2 - 371887505));
  *(STACK[0x1E30] + 184) = v6;
  return (*(v5 + 8 * ((7 * (((v2 - 103) ^ (v6 == 0)) & 1)) ^ v2)))();
}

uint64_t sub_1006B2450()
{
  v1 = v0 - 4114;
  STACK[0x5728] = STACK[0x2D50] + 4;
  v2 = (((LODWORD(STACK[0x683C]) ^ (((v0 + 2872) | 0x5B) - 2116560803)) + 2116550952) ^ ((LODWORD(STACK[0x683C]) ^ 0xA30C74B2) + 1559464782) ^ ((LODWORD(STACK[0x683C]) ^ 0xCB0E4D7B) + 888255109)) + 1142869957;
  v3 = v2 & 0xA5B6F748 ^ 0x40C6064 ^ (v2 ^ 0xA1B6F72C) & (2 * (v2 & 0xA5B6F748));
  v4 = (2 * (v2 ^ 0xA1BA972C)) & 0x40C6064 ^ 0x4042024 ^ ((2 * (v2 ^ 0xA1BA972C)) ^ 0x818C0C8) & (v2 ^ 0xA1BA972C);
  v5 = ((4 * v3) ^ 0x10318190) & v4;
  v6 = (4 * v4) & 0x40C6060 ^ 0x40C6064 ^ ((4 * v4) ^ 0x10318190) & v4;
  v7 = (16 * ((4 * v3) & 0x40C6060 ^ v3 ^ v5)) & 0x40C6060 ^ (4 * v3) & 0x40C6060 ^ v3 ^ v5 ^ ((16 * ((4 * v3) & 0x40C6060 ^ v3 ^ v5)) ^ 0x40C60640) & v6;
  v8 = (16 * v6) & 0x40C6040 ^ 0x4086024 ^ ((16 * v6) ^ 0x40C60640) & v6;
  v9 = v7 ^ (v7 << 8) & 0x40C6000 ^ ((v7 << 8) ^ 0x8602400) & v8 ^ 0x42040;
  LODWORD(STACK[0x3EB4]) = v2 ^ (2 * ((v9 << 16) & 0x40C0000 ^ v9 ^ ((v9 << 16) ^ 0x60640000) & ((v8 << 8) & 0x40C0000 ^ ((v8 << 8) ^ 0xC600000) & v8 ^ 0xC0000))) ^ 0x4473F091;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x3F76)))();
}

uint64_t sub_1006B2664@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE4]) = v2 - 906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x3D2DEB92) - (&STACK[0x10000] + 3800) - 513209801) ^ 0x2F9738ED) + 5438;
  STACK[0x10ED8] = a1;
  STACK[0x10EE8] = v1;
  STACK[0x10EF0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xE279)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE0]) == -371865839) * (v2 - 11330 + ((v2 - 4352) | 0x408))) ^ v2)))(v4);
}

uint64_t sub_1006B2784()
{
  v4 = ((2 * v2) & 0xDF9F2CB6) + v3 + (v2 ^ v1 ^ 0xEFCFD94B) - 1014507238;
  v5 = v0 + v1 + 1887484988;
  v6 = (v5 < 0xC9C0BBF) ^ (v4 < 0xC9C0BBF);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0xC9C0BBF;
  }

  return (*(STACK[0xF18] + 8 * ((51039 * v7) ^ v1)))();
}

uint64_t sub_1006B2814()
{
  if (v0 == -131670339)
  {
    v2 = 1685479788;
  }

  else
  {
    v2 = 0;
  }

  if (v0 == (v1 ^ 0x2840) - 731073907)
  {
    v2 = 1735811436;
  }

  LODWORD(STACK[0x92A8]) = v2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006B2868()
{
  STACK[0x8FE8] = *(v0 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x704C]) = -2116087558;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = ((v1 ^ 0x2E9D) - 969429071) ^ v2;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v1 - 29747)))();
}

uint64_t sub_1006B29B0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 16480)))(v2);
}

uint64_t sub_1006B2A10@<X0>(uint64_t a1@<X8>)
{
  v2 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x94AA1910) - ((&STACK[0x10000] + 3800) | 0x6B55E6EF) + 1800791791) ^ 0x7BFC33C9);
  v3 = (v1 ^ 0x1BAB6EAE) + v2 + (((*(a1 + 32) ^ 0xBB653D9) - 196498393) ^ ((*(a1 + 32) ^ 0xE44DBE6) - 239393766) ^ ((*(a1 + 32) ^ 0xEC274F2E) + 332968146));
  LODWORD(STACK[0x10EDC]) = v2 + v1 + 27263;
  LODWORD(STACK[0x10EE0]) = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 30623)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((209 * (LOBYTE(STACK[0x10ED8]) == ((v1 - 21) ^ 0x58))) ^ v1)))(v5);
}

uint64_t sub_1006B2B38()
{
  v3 = ((2 * *(v0 + 108)) & 0xF3FFEF78) + (*(v0 + 108) ^ 0xF9FFF7BC);
  STACK[0x1F78] = 0;
  LOBYTE(STACK[0x175B]) = 0;
  return (*(v2 + 8 * ((2 * ((((v1 + 574597058) ^ (v3 == ((v1 - 37531) ^ 0xF9FFE219))) & 1) == 0)) & 0xFB | (4 * (((v1 + 574597058) ^ ~(v3 == ((v1 - 37531) ^ 0xF9FFE219))) & 1)) | (v1 + 4912))))();
}

uint64_t sub_1006B2BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 24) = v5;
  *(v2[3] + 32) = v2[4];
  *(a2 + 8) += v2[1] + a1;
  return (*(v6 + 8 * v3))();
}

uint64_t sub_1006B2C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, uint64_t a12, int a13, int a14, int a15, char a16, int a17, int a18, int a19, char a20, __int16 a21, char a22, int a23, char a24, int a25, uint64_t a26, uint64_t a27, int a28, char a29, int a30, char a31, char a32)
{
  v44 = *(a26 + 8);
  v36 = (v33 + 1) & 3;
  v37 = *(&off_1010A0B50 + a23) - 352636739;
  v38 = v37[v36];
  a31 = a20;
  a30 = a19;
  a29 = a22 + v38 + 9;
  (*(a12 + 8 * a18))(&a29);
  v39 = a32 ^ 0x77;
  a29 = a17 + v37[(v33 + 2) & 3] + 9;
  a30 = a15 - a17;
  a31 = a16;
  (*(a12 + 8 * a14))(&a29);
  v40 = a32 ^ (v39 - ((2 * v39) & 0xEE) + v35);
  a29 = 55 * (((&a29 | 0x24) - (&a29 & 0x24)) ^ 0x8F) + v37[v36 ^ 2] + 9;
  a31 = 55 * (((&a29 | 0x24) - (&a29 & 0x24)) ^ 0x8F) + a24 - 95;
  a30 = a15 - 1603510583 * (((&a29 | 0xA9951324) - (&a29 & 0xA9951324)) ^ 0x3E4E218F);
  (*(a12 + 8 * a14))(&a29);
  LOBYTE(v36) = a32 ^ (v40 - ((2 * v40) & 0xEE) + v35);
  v41 = v37[v33 & 3];
  a31 = a10;
  a29 = a11 + v41 + 9;
  a30 = a15 - a11;
  v42 = (*(a12 + 8 * a14))(&a29);
  *(v44 + v32) = a32 ^ (v36 - ((2 * v36) & 0xEF) + 119);
  return (*(a12 + 8 * ((24584 * (v34 == 0)) ^ a25)))(v42);
}

uint64_t sub_1006B2E98()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 24084;
  v2 = STACK[0x1EA4];
  v3 = LODWORD(STACK[0x90BC]) + LODWORD(STACK[0x76C0]);
  LODWORD(STACK[0x836C]) = v3 + LODWORD(STACK[0x1EA4]) - 1485779551;
  v4 = v3 + v2 - 109930396;
  v5 = LODWORD(STACK[0x1194]) + 1375849155;
  v6 = v4 < 0x5EBE2BF9;
  v7 = v4 > v5;
  if (v6 != v5 < 0x5EBE2BF9)
  {
    v7 = v6;
  }

  v8 = v3 == v0 + 1699416154 || v7;
  return (*(STACK[0xF18] + 8 * ((117 * v8) ^ v1)))();
}

uint64_t sub_1006B30DC()
{
  v3 = ((2 * ((&STACK[0x10000] + 3800) & 0x7845E150) - (&STACK[0x10000] + 3800) - 2017845591) ^ 0xB6BBD38D) * v2;
  STACK[0x10ED8] = &STACK[0x6868];
  STACK[0x10EF0] = &STACK[0x23B8];
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EE4]) = v3 ^ 0xF1D0BA35;
  LODWORD(STACK[0x10EE0]) = v3 - 28561 + v0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16346)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v0 - 27259)))(v5);
}

uint64_t sub_1006B3268()
{
  v1 = LOBYTE(STACK[0x10EDC]);
  v2 = LODWORD(STACK[0xED0]) != 79;
  v3 = v1 == 79;
  v4 = v1 == 79 && LODWORD(STACK[0xED0]) != 79;
  if (v3)
  {
    v2 = 1;
  }

  return (*(STACK[0xF18] + 8 * (((v2 & ~v4) * (((((v0 - 12472) | 0x400) - 341215607) & 0x1456EF7F) - 5731)) ^ ((v0 - 12472) | 0x400))))();
}

uint64_t sub_1006B32EC()
{
  STACK[0x5658] = *(v1 + 8);
  LODWORD(STACK[0x2564]) = -1494101866;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006B3368@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  v23 = (*(v5 + (a5 ^ 0x9A) * v9 + 2780740 - ((a5 ^ 0x9Au) * v9 + 2780740) / 0xE80 * a2) ^ 0xA1) * v9 + 8393615;
  v24 = *(v8 + 4 * ((2899 * ((a5 + 3328) ^ 0x3C2u) + 11268413) % 0x26C4));
  LOBYTE(v23) = *(STACK[0xEA0] + (((*(v5 + v23 - (((18512791 * v23) >> 32) >> 4) * a2) ^ 0x76) * v12) & 0x1FF));
  v25 = v23 & v10 ^ 0xF9;
  *(v16 + (v15 & (2 * v24) ^ v13) + v7 + (((v24 ^ v17) + v18) ^ ((v24 ^ v19) + v20) ^ ((v24 ^ v21) + v22)) + a3) = v23 ^ HIBYTE(v14) ^ (2 * ((v23 ^ v11) & (2 * ((v23 ^ v11) & (2 * ((v23 ^ v11) & (2 * ((v23 ^ v11) & (2 * ((v23 ^ v11) & (2 * ((v23 ^ v11) & 0x1E ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ a1;
  return (*(STACK[0xF18] + 8 * (((a5 == 255) * a4) ^ v6)))();
}

uint64_t sub_1006B3618()
{
  LODWORD(STACK[0x75C0]) = 992313642;
  v2 = *(STACK[0x6408] + 4);
  v1 = STACK[0x6408] + 4;
  STACK[0xB790] = *(STACK[0x6408] + 8);
  STACK[0xB7A0] = v1;
  LODWORD(STACK[0xB79C]) = 79829760;
  return (*(STACK[0xF18] + 8 * (((v2 == ((v0 + 840198811) ^ 0x321530A3) - 8029) * (((v0 + 840198811) & 0xCDEAFB8D) - 11131)) ^ v0)))();
}

uint64_t sub_1006B36A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(STACK[0x6A0] + 8 * (a4 - 6893));
  LODWORD(STACK[0x688]) = a4 ^ 0x7C3AAAE6;
  return v4(a1, 2357561102, 883659880, a4 ^ 0xFBC5AD99);
}

uint64_t sub_1006B3858@<X0>(int a1@<W8>)
{
  v3 = (LODWORD(STACK[0xED0]) - 106);
  STACK[0x4F90] = *v2;
  LODWORD(STACK[0x22E8]) = v3 - (((5 * ((v1 - 8453) ^ 0x283)) ^ 0x68) & (2 * v3)) + a1;
  LODWORD(STACK[0x35EC]) = 1693393230;
  return (*(STACK[0xF18] + 8 * (v1 - 8453)))();
}

uint64_t sub_1006B38B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0xED0]) = v2 - 13627;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EDC]) = v2 - 274687620 + 17902189 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x6E1307E0) + 1846740960) ^ 0xE05C11F0);
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x4039)))(&STACK[0x10ED8]);
  v5 = STACK[0x10ED8];
  STACK[0x10EE0] = *(v1 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EDC]) = v2 - 274687620 + 17902189 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x64E84D70) + 1692945777) ^ 0xEAA75B61);
  (*(v4 + 8 * (v2 ^ 0x4039)))(&STACK[0x10ED8]);
  v6 = *(v1 - 0x217E172EFA1E81CLL);
  v7 = STACK[0x10ED8];
  v8 = 139493411 * (((&STACK[0x10ED8] | 0xA665C3EC) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x599A3C10)) ^ 0xAA4822A9);
  LODWORD(STACK[0x10EDC]) = (v2 + 1270012347) ^ v8;
  LODWORD(STACK[0x10EE8]) = (((v2 - 1851) | 0x354) ^ 0xF3126F41) + v8 + v5 + v7;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x962C433804ECA67BLL;
  STACK[0x10EE0] = v6;
  v9 = (*(v4 + 8 * (v2 + 16761)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0xED0])))(v9);
}

uint64_t sub_1006B3A84()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8E5F)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006B3AB4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 15861)))(v2);
}

uint64_t sub_1006B3DC4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x86C4]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((2 * v1) ^ 0x10D8) + v1)))();
}

uint64_t sub_1006B3EB0()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 34106;
  v3 = STACK[0xF10] - 31651;
  v4 = STACK[0xF10] - 35527;
  LODWORD(STACK[0x796C]) = v0;
  v5 = 1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x380CC548) + 940361036) ^ 0xD75AEF95);
  v6 = (LODWORD(STACK[0x4904]) ^ 0x4776F56A) - v5;
  LODWORD(STACK[0x10EE0]) = v5 + v1 - 2086964070;
  LODWORD(STACK[0x10EDC]) = v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4725)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((108 * (((v2 ^ (((LOBYTE(STACK[0x10ED8]) - v4) | (v4 - LOBYTE(STACK[0x10ED8]))) >> 7)) & 1) == 0)) ^ ((v3 ^ 0x975F) + v4))))(v8);
}

uint64_t sub_1006B3FB4@<X0>(int a1@<W8>)
{
  STACK[0x61C0] = v1;
  STACK[0x3C50] = v2;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x9292 ^ (99637 * ((a1 - 952159567) < 0x18AA5F5B)))))();
}

uint64_t sub_1006B4014()
{
  v1 = STACK[0xF18];
  STACK[0x2F78] = *(STACK[0xF18] + 8 * (v0 - 32357));
  return (*(v1 + 8 * (((11 * (v0 ^ 0x9B34)) ^ 0x829D) + v0 - 32357)))();
}

uint64_t sub_1006B40AC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = (v7 + 44247) ^ (155453101 * (((&a3 | 0x9C4ABFFA) - &a3 + (&a3 & 0x63B54000)) ^ 0x7A6CA435));
  a3 = a1;
  a5 = v5;
  v8 = (*(v6 + 8 * (v7 ^ 0xD26A)))(&a3);
  return (*(v6 + 8 * v7))(v8);
}

uint64_t sub_1006B4124()
{
  v1 = STACK[0xF10] - 33289;
  LODWORD(STACK[0x22B4]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x2559)))();
}

uint64_t sub_1006B4228()
{
  v5 = *(v2 - 0x7E666516A39B34A6);
  v6 = STACK[0x3EB8];
  v7 = ((((&STACK[0x10000] + 3800) | 0x4FC368A5) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xB03C9758)) ^ 0xA9E5736A) * v4;
  LODWORD(STACK[0x10EEC]) = v1 - v7 + 17654;
  LODWORD(STACK[0x10F00]) = v7 ^ v3;
  STACK[0x10EF8] = v5;
  STACK[0x10EF0] = &STACK[0x69DC];
  LODWORD(STACK[0x10ED8]) = v7 ^ 0xE30E58FF;
  LODWORD(STACK[0x10EDC]) = v0 - v7;
  STACK[0x10EE0] = v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 ^ 0xAE45u)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * (((LODWORD(STACK[0x10EE8]) == (v1 ^ 0xE9D5A2D5)) * (v1 + 27024)) ^ v1)))(v9);
}

uint64_t sub_1006B4368()
{
  LODWORD(STACK[0x4864]) = v2;
  v4 = (v0 ^ 0xCF6F8EDF) + 1056962544 + (((v3 + 933356116) & 0xC85E9FFE ^ 0x9EDF9684) & (2 * v0));
  v5 = 1012831759 * (((((&STACK[0x10000] + 3800) | 0xF424EDF4) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xBDB120B)) ^ 0x1B480481);
  LODWORD(STACK[0x10F08]) = v3 - v5 + 47032;
  LODWORD(STACK[0x10F0C]) = v4 ^ v5;
  STACK[0x10F00] = &STACK[0x62E8];
  STACK[0x10EE0] = &STACK[0x8AE8];
  STACK[0x10ED8] = &STACK[0x4864];
  STACK[0x10EF8] = &STACK[0x9774];
  STACK[0x10EF0] = v1;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0xC343)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((28425 * (LODWORD(STACK[0x10EE8]) == v2)) ^ v3)))(v7);
}

uint64_t sub_1006B4564()
{
  v0 = STACK[0xF10] ^ 0x4C9D;
  v1 = STACK[0xF10] - 35049;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 45348)))();
}

uint64_t sub_1006B46C8()
{
  v1 = 634647737 * STACK[0xDF0];
  LODWORD(STACK[0x10EFC]) = LODWORD(STACK[0xE00]) - v1;
  STACK[0x10EE8] = v1 ^ 0x46ECF5F2;
  STACK[0x10EF0] = v0 - v1;
  v2 = STACK[0xF10];
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v1 - 1230214699;
  v3 = STACK[0xE10];
  LODWORD(STACK[0x10EE4]) = LODWORD(STACK[0xE10]) + v1;
  LODWORD(STACK[0x10ED8]) = -v1;
  LODWORD(STACK[0x10EDC]) = v3 - v1 + 4758;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_1006B47BC()
{
  LODWORD(STACK[0x2CEC]) = v1;
  *(STACK[0x8D50] + 264) = v1;
  v3 = v1 != 1497668682 && LODWORD(STACK[0x1524]) == (((v0 ^ 0xD19C) - 21210) ^ 0x1E83);
  return (*(STACK[0xF18] + 8 * ((31 * v3) | v0)))();
}

uint64_t sub_1006B4818()
{
  v2 = (v1 - 25056);
  v3 = __clz(v2 ^ v0 | (v1 + 255285896) ^ 0xF37BC89);
  return (*(STACK[0xF18] + 8 * (((8 * (((((v2 ^ v0) & v2) >> ((v1 + 32) ^ 0x1Fu ^ v3)) & 1) == 0)) & 0xDF | (32 * (((((v2 ^ v0) & v2) >> ((v1 + 32) ^ 0x1Fu ^ v3)) & 1) == 0))) ^ (v2 + 24631))))();
}

uint64_t sub_1006B49AC()
{
  v1 = LODWORD(STACK[0x423C]) - 2006332873;
  v2 = LODWORD(STACK[0x76A8]) - 2006332873;
  v3 = (v1 < 0xE1AE6681) ^ (v2 < 0xE1AE6681);
  v4 = v1 > v2;
  if (v3)
  {
    v4 = v1 < 0xE1AE6681;
  }

  return (*(STACK[0xF18] + 8 * ((11 * (((v0 + 1) ^ v4) & 1)) ^ v0)))();
}

uint64_t sub_1006B4A4C()
{
  LODWORD(STACK[0x32AC]) = v3;
  LOBYTE(STACK[0x87D7]) = v0;
  LOBYTE(STACK[0x848F]) = v1;
  return (*(STACK[0xF18] + 8 * (((STACK[0x38C0] == 0) * (165 * ((v2 - 2085970025) & 0x7C55ED8F ^ 0xAD9D) - 2720)) ^ v2)))();
}

uint64_t sub_1006B4BAC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = 4 * (v57 - 831631538);
  v61 = *(*(a49 - 1680276466) + (*(a50 - 231415367) & 0xFFFFFFFFCD38821CLL)) + v59 + v60;
  *(a57 + v60) ^= (1517909264 * (v59 + v60)) ^ *(v59 + v60) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v61 - 851934692) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((((a1 - 103310288) & 0x6286FCFu) - 851946545 + v61) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0x9741F70C;
  return (*(v58 + 8 * a1))();
}

uint64_t sub_1006B4D14(uint64_t a1)
{
  v2 = STACK[0x29B0];
  *(v2 + 20) = *STACK[0x7010];
  *(v2 + 32) = a1;
  LODWORD(STACK[0x94C0]) += *(v2 + 8);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006B4D5C()
{
  v1 = STACK[0x3CA8];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1C1A)))(v1);
}

uint64_t sub_1006B4F38()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xB128];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 34295));
  return (*(v2 + 8 * (v0 - 29131)))(v1);
}

uint64_t sub_1006B4FB8()
{
  v3 = *v0;
  *(v2 + 6) = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v1 - 6913) | 0x10) ^ 0xE9 ^ (v1 + 1654238644) & 0x9D66376A)) ^ v1)))();
}

uint64_t sub_1006B5014()
{
  v5 = v1 > 0x9F736902;
  v6 = (v3 ^ 0x6260DEB0) + v2 + ((v3 + 14111) ^ 0x91A5CA1B);
  v7 = v5 ^ (v6 < 0x608C96FD);
  v8 = v6 < v0;
  if (!v7)
  {
    v5 = v8;
  }

  return (*(v4 + 8 * ((14450 * v5) ^ v3)))();
}

uint64_t sub_1006B51C0()
{
  v1 = STACK[0xF18];
  STACK[0x3F30] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((21274 * (((((v0 - 738534047) & 0x2C051FFD) + 565153981) ^ v0) != 1937838388)) ^ (v0 - 1124))))();
}

uint64_t sub_1006B5224(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = *(STACK[0xEA0] + ((495 * ((a4 ^ v8) ^ 0x68)) & 0x1FF ^ 0x100));
  v11 = ((v5 + 121) | 0x28) ^ v10 & 0x1E ^ 0xCF;
  v10 ^= 0x34u;
  v12 = v10 ^ (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  v13 = (((a4 ^ 0x9FDF3DC4) + 1612759612) ^ ((a4 ^ 0xDDE1B064) + 572411804) ^ ((a4 ^ 0xD88B336F) + 661965969)) - 891308467;
  v14 = (v13 ^ 0xEF95828A) & (2 * (v13 & 0xCFD60883)) ^ v13 & 0xCFD60883;
  v15 = ((2 * (v13 ^ 0xF2B1928C)) ^ 0x7ACF341E) & (v13 ^ 0xF2B1928C) ^ (2 * (v13 ^ 0xF2B1928C)) & 0x3D679A0E;
  v16 = v15 ^ 0x5208A01;
  v17 = (v15 ^ 0x3840000C) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0xF59E683C) & v16 ^ (4 * v16) & 0x3D679A0C;
  v19 = (v18 ^ 0x35060800) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x8619203)) ^ 0xD679A0F0) & (v18 ^ 0x8619203) ^ (16 * (v18 ^ 0x8619203)) & 0x3D679A00;
  v21 = v20 ^ 0x29061A0F;
  v22 = v19 ^ 0x3D679A0F ^ (v20 ^ 0x14618000) & (v19 << 8);
  v23 = a4 ^ 0x9AB5BD0D;
  v24 = v13 ^ (2 * ((v22 << 16) & 0x3D670000 ^ v22 ^ ((v22 << 16) ^ 0x1A0F0000) & ((v21 << 8) & 0x3D670000 ^ 0x18650000 ^ ((v21 << 8) ^ 0x679A0000) & v21)));
  v25 = 2705 * (*(v4 + 2705 * v12 + 7693020 - 3712 * (((18512791 * (2705 * v12 + 7693020)) >> 32) >> 4)) ^ 0xA4) + 1395780;
  *(v9 + (*(v6 + 4 * ((2899 * v23 + 23142717) % 0x26C4)) ^ 0x8B6B2AE6) + 8464) = *(v4 + v25 - 3712 * (((2314099 * v25) >> 32) >> 1)) ^ 0xBA;
  return (*(STACK[0xF18] + 8 * ((90 * ((((v24 ^ 0xC3BCA304) + 602005162) ^ ((v24 ^ 0x5F31F09E) - 1083405004) ^ ((v24 ^ 0x199A6F07) - 104394069)) + v7 < 0x100)) ^ v5)))();
}

uint64_t sub_1006B557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v8 + (961 * a5 - 1700608688) % 0x3C5u);
  *(v8 + (961 * a5 - 1700626947) % ((v7 - 24821) ^ 0x378Cu)) = *(a7 + (417 * (((v9 ^ 0x368E6627) - 915301920) ^ ((v9 ^ 0x2EFDA2C4) - 788374211) ^ ((v9 ^ 0x1873C4D2u) - 410240213)) + 261876) % 0x3B0) ^ 0x6D;
  return (*(STACK[0x6A0] + 8 * ((15643 * (a5 == 667691237)) ^ v7)))();
}

uint64_t sub_1006B58A0()
{
  v1 = *(STACK[0x6548] + 12);
  LODWORD(STACK[0x5754]) = *(STACK[0x6548] + 16);
  return (*(STACK[0xF18] + 8 * (((v1 == -371865807) * ((v0 - 17229) ^ (v0 - 17560))) ^ v0)))();
}

uint64_t sub_1006B5954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x59B0] = v3;
  LODWORD(STACK[0x1108]) = v6;
  STACK[0x1BA8] = v5;
  LODWORD(STACK[0x4C84]) = a3;
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * ((v4 - 28044) ^ (v4 - 4078) ^ 0x8698)) ^ v4)))(a1, a2, 371891400);
}

uint64_t sub_1006B59AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x33C4]) = v2;
  v3 = ((((a1 - 1564932543) & 0x5D46EB7F) + 2133012726 + (v1 ^ 0x80DC43CF)) ^ ((v1 ^ 0xD33BB5F) - 221494111) ^ (((a1 - 1564932543) ^ 0x397C5FC4) + (v1 ^ 0x643A3F81))) + 1314466474;
  v4 = v3 < 0x64836399;
  v5 = v2 + 1686332313 < v3;
  if (v2 > 0x9B7C9C66 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((177 * !v5) ^ a1)))();
}

uint64_t sub_1006B5A84(uint64_t a1, uint64_t a2)
{
  STACK[0x8B58] = STACK[0x17D0];
  LOWORD(STACK[0x621E]) = 0;
  STACK[0x95A0] = &STACK[0x621E];
  LOWORD(STACK[0x79DE]) = 7103;
  LODWORD(STACK[0x16B4]) = -993011513;
  return (*(STACK[0xF18] + 8 * (v2 - 27257)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1006B5B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *(v24 + 8 * (v23 + 4083));
  LODWORD(a18) = -371865827;
  return v25(a1, v25, a3, a4, a7, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1006B5C34@<X0>(int a1@<W8>)
{
  STACK[0x1B78] = v4;
  LODWORD(STACK[0x423C]) = v2;
  LODWORD(STACK[0x21A0]) = v1;
  LODWORD(STACK[0x76A8]) = v3;
  STACK[0x29C8] = 0;
  STACK[0x6DD8] = 0;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (a1 + 20969 + ((a1 + 23813) ^ 0xFFFFE2BE))) ^ a1)))();
}

uint64_t sub_1006B5CF4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8 * v2);
  *(a1 + 8 * v2) = 0;
  STACK[0x20B8] = v4;
  return (*(v3 + 8 * ((127 * ((*v4 & 1) == ((((v1 - 38702) ^ 0x8B30) - 33115) ^ ((v1 - 38702) | 0x9D5)))) ^ v1)))();
}

uint64_t sub_1006B5DA0(unsigned int a1)
{
  v2 = ((LODWORD(STACK[0x1BA8]) - LODWORD(STACK[0x177C])) ^ 0xFD7FE57) + 1499554679 + ((2 * (LODWORD(STACK[0x1BA8]) - LODWORD(STACK[0x177C]))) & 0x1FAFFCAE);
  v3 = v2 < 0x693961CE;
  v4 = a1 + 1765368270 < v2;
  if (a1 > 0x96C69E31 != v3)
  {
    v4 = v3;
  }

  return (*(v1 + 8 * ((59668 * v4) ^ 0x5A6Au)))();
}

uint64_t sub_1006B5EA0(unsigned int a1, unsigned int a2)
{
  v6 = STACK[0xA14];
  v7 = 961 * (v3 & 0xF);
  LOBYTE(STACK[0xA14]) = *(v5 + (v7 + 795708) % (((963 - v7) ^ (v7 + 795708)) & 0x3C5u));
  *(v5 + (v7 + 795708 - 965 * ((4450744 * (v7 + 795708)) >> 32))) = v6;
  v8 = 961 * (a2 % 0xF) + 796669 - 965 * ((4450744 * (961 * (a2 % 0xF) + 796669)) >> 32);
  v9 = STACK[0xA10];
  LOBYTE(STACK[0xA10]) = *(v5 + v8);
  *(v5 + v8) = v9;
  v10 = STACK[0xA0C];
  v11 = 961 * (a1 % 0xE) + 797630 - 965 * ((4450744 * (961 * (a1 % 0xE) + 797630)) >> 32);
  LOBYTE(STACK[0xA0C]) = *(v5 + v11);
  v12 = a2 - a1;
  *(v5 + v11) = v10;
  v13 = a1 - v2;
  v14 = 961 * (((2 * (v2 % 0xD + 3)) & 0x38) + ((v2 % 0xD + 3) ^ 0x33C));
  v15 = v3 - 1573148639 + (v13 ^ 0x335C45D6);
  v16 = v13 ^ v12;
  LOBYTE(v12) = STACK[0xA08];
  LOBYTE(STACK[0xA08]) = *(v5 + (v14 - 965 * ((4450744 * v14) >> 32)));
  *(v5 + (961 * (v2 % 0xD) + 798591 - 965 * ((4450744 * (961 * (v2 % 0xD) + 798591)) >> 32))) = v12;
  v17 = 961 * (v15 % 0xC) + 799552;
  v18 = *(v5 + v17 % (((a2 % 0xF + 1) ^ (6 - a2 % 0xF)) & 5 | 0x3C0));
  v19 = v16 ^ (v3 + v2);
  v20 = v17 - 965 * ((4450744 * v17) >> 32);
  LOBYTE(v17) = STACK[0xA04];
  LOBYTE(STACK[0xA04]) = v18;
  *(v5 + v20) = v17;
  LOBYTE(v17) = STACK[0xA00];
  v21 = 961 * (((2 * (v16 % 0xB + 5)) & 0x38) + ((v16 % 0xB + 5) ^ 0x33C));
  LOBYTE(STACK[0xA00]) = *(v5 + (961 * (v16 % 0xB) + 800513 - 965 * ((4450744 * (961 * (v16 % 0xB) + 800513)) >> 32)));
  *(v5 + (v21 - 965 * ((4450744 * v21) >> 32))) = v17;
  v22 = 961 * ((v13 ^ 0x335C45D6u) % 0xA) + 801474 - 965 * ((4450744 * (961 * ((v13 ^ 0x335C45D6u) % 0xA) + 801474)) >> 32);
  v23 = v15 + v16;
  LOBYTE(v17) = STACK[0x9FC];
  v24 = v13 ^ 0xE58066AE;
  LOBYTE(STACK[0x9FC]) = *(v5 + v22);
  *(v5 + v22) = v17;
  v25 = v19 + (v13 ^ 0xE58066AE);
  v26 = 961 * (v19 % 9) + 802435 - 965 * ((4450744 * (961 * (v19 % 9) + 802435)) >> 32);
  v27 = v23 + v24;
  v28 = (v23 + v24) ^ v16;
  LOBYTE(v17) = STACK[0x9F8];
  LOBYTE(STACK[0x9F8]) = *(v5 + v26);
  v29 = v25 ^ 0xEF8260FC ^ v23;
  *(v5 + v26) = v17;
  LOBYTE(v26) = STACK[0x9F4];
  v30 = 961 * (v29 & 7) + 803396 - 965 * ((4450744 * (961 * (v29 & 7) + 803396)) >> 32);
  LOBYTE(STACK[0x9F4]) = *(v5 + v30);
  *(v5 + v30) = v26;
  LOBYTE(v26) = STACK[0x9F0];
  v31 = 961 * ((v28 ^ 0x4FC13398u) % 7) + 804357 - 965 * ((4450744 * (961 * ((v28 ^ 0x4FC13398u) % 7) + 804357)) >> 32);
  LOBYTE(STACK[0x9F0]) = *(v5 + v31);
  *(v5 + v31) = v26;
  v32 = 961 * (v27 % 6) + 805318 - 965 * ((4450744 * (961 * (v27 % 6) + 805318)) >> 32);
  LOBYTE(v31) = STACK[0x9EC];
  LOBYTE(STACK[0x9EC]) = *(v5 + v32);
  *(v5 + v32) = v31;
  v33 = 961 * ((v25 ^ 0xEF8260FC) % 5);
  LOBYTE(v31) = STACK[0x9E8];
  LOBYTE(STACK[0x9E8]) = *(v5 + (v33 + 806279 - 965 * ((4450744 * (v33 + 806279)) >> 32)));
  *(v5 + (v33 + 806279) % (((v33 + 806279) & 0x77EC) + ((2146677368 - v33) & 0x761337EC) - 1980986407)) = v31;
  LOBYTE(v25) = v27 ^ v25;
  v34 = (v29 - (v28 ^ 0x98) - 13) & 3;
  v35 = (v28 ^ 0x59972935) - (v29 - (v28 ^ 0x4FC13398) + 1234182131);
  LOBYTE(v33) = STACK[0x9E4];
  v36 = v35 % 3;
  LOBYTE(v35) = v35 + v25;
  v37 = 961 * v34 + 807240 - 965 * ((4450744 * (961 * v34 + 807240)) >> 32);
  LOBYTE(STACK[0x9E4]) = *(v5 + v37);
  *(v5 + v37) = v33;
  v38 = 961 * v36 + 808201 - 965 * ((4450744 * (961 * v36 + 808201)) >> 32);
  LOBYTE(v34) = STACK[0x9E0];
  LOBYTE(STACK[0x9E0]) = *(v5 + v38);
  *(v5 + v38) = v34;
  v39 = STACK[0x9DC];
  v40 = (v35 & 1) == 0;
  v41 = 508;
  if (!v40)
  {
    v41 = 504;
  }

  LOBYTE(STACK[0x9DC]) = *(&STACK[0x7E0] + v41);
  *(&STACK[0x7E0] + v41) = v39;
  return (*(STACK[0x6A0] + 8 * v4))(905261147, 3389706149, 0);
}

uint64_t sub_1006B64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 - 16429 + v6 + 30298)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1006B64E0(char a1, int a2)
{
  v10 = *(STACK[0xF18] + 8 * v4);
  v11 = ((v8[1] << 16) & 0xDA0000 ^ 0xF84EFC6 ^ (((a2 ^ (v8[2] << 8)) & (v8[3] ^ v6) | v8[3] & 2) ^ 0x395A393F) & ((v8[1] << 16) ^ 0x7B09FFFF)) & ((*v8 << 24) ^ 0x9FFFFFF) ^ (*v8 << 24) & 0xBA000000;
  v12 = ((v11 ^ 0x8401C751) - 1305475358) ^ ((v11 ^ 0x3298511A) + 78221483) ^ ((v11 ^ 0xC16AEC4D) - 145019394);
  v13 = v8[5] << 16;
  v14 = ((((v8[6] << 8) ^ 0xA9F5FBEA) & (v8[7] ^ 0xADF7FF88) | (v8[7] & v2)) ^ 0x19D2FECD) & (v13 ^ 0xFF81FFFF);
  v15 = v13 & 0xD80000;
  v16 = v8[4] << 24;
  v17 = (v15 ^ 0xE0628045 ^ v14) & (v16 ^ 0x89FFFFFF);
  v18 = v16 & 0xAF000000;
  v19 = ((v8[9] << 16) & 0xF20000 ^ 0x6F4A4C33 ^ ((((v8[10] << 8) ^ 0x48F21279) & (v8[11] ^ 0x4FF7FF8D) | (v8[11] & v7)) ^ 0x52FF1A48) & ((v8[9] << 16) ^ 0x7F89FFFF)) & ((v8[8] << 24) ^ 0x89FFFFFF) ^ (v8[8] << 24) & 0x8A000000;
  v20 = (v8[12] ^ 0xFA) << 24;
  v21 = ((v8[13] << 16) & 0x55555555 ^ 0xD314BDA2 ^ ((((v8[14] << 8) ^ 0xF18AC381) & (v8[15] ^ 0xF9DBFFAF) | v8[15] & 0x7E) ^ 0x57207F1F) & ((v8[13] << 16) ^ 0xFF8DFFFF)) & (v20 ^ 0x73FFFFFF) ^ v20 & 0x8A000000;
  v22 = v12 + (((v19 ^ 0x9FF78D94) + 710703028) ^ ((v19 ^ 0x57D761EB) - 495150131) ^ ((v19 ^ 0xBF15DE7B) + 180233309)) + 1035721040;
  v23 = ((v22 ^ 0x60E30B4B) - 587093600) ^ v22 ^ ((v22 ^ 0x8A3EF6E9) + 937186366) ^ ((v22 ^ 0x5F3B5F66) - 489030221) ^ ((v22 ^ 0xF7FBFFEF) + 1243176252);
  v24 = v12 + (((v21 ^ 0x5C0201E) + 289920851) ^ ((v21 ^ 0x294FB177) + 1036535356) ^ ((v21 ^ 0xD165E623) - 975040144));
  v25 = v17 ^ v18 ^ (1069991803 - v24) ^ (v24 - 294824901) ^ (((v24 - 294824901) ^ 0xEAB3361C) + 997773910) ^ (((v24 - 294824901) ^ 0x235821EA) - 225196636) ^ (((v24 - 294824901) ^ 0x1820F3BF) - 907339785);
  v26 = ((v25 ^ 0x69DE693A) + 1659359556) ^ ((v25 ^ 0xEC472835) - 411135923) ^ ((v25 ^ 0x715F0689) + 2053553905);
  v27 = ((v21 ^ 0xF9AC4CC9) + 1933660709) ^ ((v21 ^ 0x6C644ADA) - 427207624) ^ ((v21 ^ 0x6169BBF6) - 343628516);
  v28 = ((v23 ^ 0x27807BA6) - 1453135095) ^ ((v23 ^ 0x1DDB6E16) - 1824915783) ^ ((v23 ^ 0x4B467AE1) - 979047856);
  v29 = v24 - v26 - 548228079;
  v30 = v27 + v24 - 294824901 - v28;
  v31 = (v30 - 1658284970) ^ (((v30 - 1658284970) ^ 0xCF1BD16E) + 2035121541) ^ (((v30 - 1658284970) ^ 0xB0EEBB8D) + 112727912) ^ (((v30 - 1658284970) ^ 0x51A3D60B) - 403342622) ^ (((v30 - 1658284970) ^ 0x67FFEFFD) - 777436392) ^ v29 ^ ((v29 ^ 0xB3967002) + 1399911538) ^ ((v29 ^ 0x6AD11376) - 1976068346) ^ ((v29 ^ 0x39A16706) - 649600138) ^ ((v29 ^ 0xFFFF7FFE) + 521796494) ^ 0x56B02899;
  v32 = (v28 + 2034796640) ^ (((v28 + 2034796640) ^ 0x7B059DB0) - 1943761820) ^ (((v28 + 2034796640) ^ 0x7AEA004) - 259018280) ^ (((v28 + 2034796640) ^ 0xB8A3D67) - 55890763) ^ (((v28 + 2034796640) ^ 0x7FFFEEFF) - 1998651603) ^ 0x1201BC6E;
  v33 = v32 ^ (v30 - 799751162);
  v34 = v31 + v32;
  v35 = ((v26 + 1675968225) ^ 0x40716F8F) - 2 * v34;
  v36 = v32 - v34 - 1554253817;
  v37 = v33 - v36 + v35;
  v38 = v36 - v37;
  v35 -= 1407176971;
  v39 = (v34 - 93264836 + v37) ^ v35;
  v40 = v38 + v35;
  v41 = v37 - v39;
  v42 = v39 ^ v38;
  v8[3] = v39 + (~(2 * v39) | 0x13) + 119;
  v8[7] = v40 - (v5 & (2 * v40)) + 118;
  v8[6] = BYTE1(v40) - (v5 & (v40 >> 7)) + 118;
  v8[5] = BYTE2(v40) - (v5 & (v40 >> 15)) + 118;
  LOBYTE(v38) = BYTE1(v39) - ((v39 >> 7) & 0xEC) + 118;
  v8[2] = v38;
  v8[1] = BYTE2(v39) - ((v39 >> 15) & 0xEC) + 118;
  *v8 = HIBYTE(v39) - ((v39 >> 23) & 0xEC) + 118;
  v8[4] = (~(v40 >> 23) | 0x13) + HIBYTE(v40) + 119;
  v8[11] = v42 - (v5 & (2 * v42)) + 118;
  v8[10] = (~(v42 >> 7) | 0x13) + BYTE1(v42) + 119;
  v8[9] = (~(v42 >> 15) | 0x13) + BYTE2(v42) + 119;
  v8[8] = HIBYTE(v42) - (v5 & (v42 >> 23)) + 118;
  v8[15] = v41 + (~(2 * v41) | 0x13) + 119;
  v8[14] = BYTE1(v41) - (v5 & (v41 >> 7)) + 118;
  v8[13] = (~(v41 >> 15) | 0x13) + BYTE2(v41) + 119;
  v8[12] = HIBYTE(v41) - (v5 & (v41 >> 23)) + 118;
  LOBYTE(STACK[0x6EF7]) = v38 & 0x7F ^ 0x70;
  *(v9 + 3183) = v8[3] & 0xBF ^ 0xB6;
  LOBYTE(STACK[0x6C57]) = v8[4] & 0x7F ^ 0x5C;
  LOBYTE(STACK[0x3957]) = v8[5] & 0xDF ^ 0xCD;
  LOBYTE(STACK[0x341F]) = v8[6] & 0xFE ^ 0x7E;
  LOBYTE(STACK[0x176F]) = v8[7] & 0xFE ^ 0x32;
  LOBYTE(STACK[0x81F3]) = v8[8] & 0xF7 ^ 0x88;
  LOBYTE(STACK[0x31EF]) = v8[9] & 0xEF ^ 0x7A;
  LOBYTE(STACK[0x2423]) = v8[10] & 0xFB ^ 0x52;
  LOBYTE(STACK[0x3297]) = v8[11] & 0xF7 ^ v3;
  LOBYTE(STACK[0x78AF]) = v8[12] & 0xFB ^ a1;
  LOBYTE(STACK[0x7047]) = v8[13] & 0xFE ^ 0x53;
  LOBYTE(STACK[0x219E]) = v8[14] & 0xBF ^ 0x2A;
  LOBYTE(STACK[0x12A7]) = v8[15] & 0xEF ^ 0x4D;
  return v10(21);
}

uint64_t sub_1006B6EE4()
{
  v2 = STACK[0xEB0];
  v0[255] = v1[255];
  v0[254] = v1[254];
  v0[253] = v1[253];
  v0[252] = v1[252];
  v0[251] = v1[251];
  v0[250] = v1[250];
  v0[249] = v1[249];
  v0[248] = v1[248];
  v0[247] = v1[247];
  v0[246] = v1[246];
  v0[245] = v1[245];
  v0[244] = v1[244];
  v0[243] = v1[243];
  v0[242] = v1[242];
  v0[241] = v1[241];
  v0[240] = v1[240];
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006B6FCC()
{
  v2 = *(v0 + 16);
  STACK[0xB648] = v0 + 16;
  STACK[0x2B38] = v2;
  return (*(STACK[0xF18] + 8 * ((39 * ((((v1 - 1444803044) ^ (v2 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1006B7058()
{
  *(v4 - 256) = v0;
  *(v4 - 244) = v1 - 1012831759 * ((~v2 & 0x3345D925 | v2 & 0xCCBA26D8) ^ 0x23D6CFAF) + 24159;
  v5 = (*(v3 + 8 * (v1 ^ 0x9E39)))(v4 - 256);
  *(STACK[0xCD8] + 152) = 0;
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_1006B7198@<X0>(unint64_t *a1@<X8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBC40] = 0;
  STACK[0xBC48] = v1;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBC40] | v13);
  *(&STACK[0xBC40] | v13) = STACK[0xBC47];
  v17 = *(&STACK[0xBC40] | v14);
  *(&STACK[0xBC40] | v14) = STACK[0xBC46];
  v18 = *(&STACK[0xBC40] | v15);
  *(&STACK[0xBC40] | v15) = STACK[0xBC45];
  v19 = vdup_n_s32(1269228062 * v12);
  v20 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBC47]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBC46]) = v17;
  LOBYTE(STACK[0xBC45]) = v18;
  v23 = STACK[0xBC40];
  LOBYTE(STACK[0xBC40]) = STACK[0xBC44];
  LOBYTE(STACK[0xBC44]) = v23;
  v24 = *(&STACK[0xBC40] | v20);
  *(&STACK[0xBC40] | v20) = STACK[0xBC43];
  LOBYTE(STACK[0xBC43]) = v24;
  v25 = STACK[0xBC41];
  LOBYTE(STACK[0xBC42]) = STACK[0xBC40];
  LOWORD(STACK[0xBC40]) = v25;
  STACK[0xBC40] = vmla_s32(v22, STACK[0xBC40], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBC48];
  v27 = (1269228062 * STACK[0xBC48]) ^ v12;
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

  while (v3 != 2176);
  v37 = 0;
  v38 = xmmword_100F52AB0;
  v39 = vdupq_n_s32(v27);
  v40 = xmmword_100F52AC0;
  v41 = v26 + 2176;
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
  v43 = 272;
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
  v48 = *(&STACK[0xBC48] + v13);
  *(&STACK[0xBC48] + v13) = STACK[0xBC4F];
  LOBYTE(STACK[0xBC4F]) = v48;
  v49 = *(&STACK[0xBC48] + v14);
  *(&STACK[0xBC48] + v14) = STACK[0xBC4E];
  LOBYTE(STACK[0xBC4E]) = v49;
  v50 = *(&STACK[0xBC48] + v15);
  *(&STACK[0xBC48] + v15) = STACK[0xBC4D];
  LOBYTE(STACK[0xBC4D]) = v50;
  v51 = STACK[0xBC48];
  LOBYTE(STACK[0xBC48]) = STACK[0xBC4C];
  v52 = *(&STACK[0xBC48] + v20);
  *(&STACK[0xBC48] + v20) = STACK[0xBC4B];
  LOBYTE(STACK[0xBC4C]) = v51;
  LOBYTE(STACK[0xBC4B]) = v52;
  v53 = STACK[0xBC49];
  LOBYTE(STACK[0xBC4A]) = STACK[0xBC48];
  LOWORD(STACK[0xBC48]) = v53;
  STACK[0xBC48] = vmla_s32(v22, STACK[0xBC48], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBC48] ^ STACK[0xBC40];
  return (*(STACK[0xF18] + 8 * (v2 - 1979)))();
}

uint64_t sub_1006B7840()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA07C)))(262);
  v3 = STACK[0x358];
  STACK[0x3E0] = v2;
  return (*(v3 + 8 * (((((((v0 ^ 0xDF97) + 694758119) ^ (v2 == 0)) & 1) == 0) | (16 * (((((v0 ^ 0xDF97) + 694758119) ^ (v2 == 0)) & 1) == 0))) ^ v0)))();
}

uint64_t sub_1006B78A0()
{
  v1 = STACK[0xF18];
  STACK[0x3780] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 59640))();
}

uint64_t sub_1006B78D0@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = (((STACK[0x61F8] ^ 0xCC516515A22C2CEELL) + 0x33AE9AEA5DD3D312) ^ ((STACK[0x61F8] ^ 0x36C7A1BA87EF408BLL) - 0x36C7A1BA87EF408BLL) ^ ((STACK[0x61F8] ^ 0xF317FDA30A2EFE23) + 0xCE8025CF5D101DDLL)) * (v2 ^ 0x7CC076D8A04E9DD6) - 0x5C7E7ED78CC5F2E2;
  v8 = 1112314453 * ((((2 * &STACK[0x10ED8]) | 0x9D1DD3058BBA44A8) - &STACK[0x10ED8] - 0x4E8EE982C5DD2254) ^ 0xB28241392A8B088DLL);
  LODWORD(STACK[0x10ED8]) = 1440258045 - v8;
  STACK[0x10F18] = v7 ^ v8;
  LODWORD(STACK[0x10F10]) = v8 ^ v4 ^ 0xF5C133B2;
  STACK[0x10F00] = 0x7E64F704B81EC009 * (((v3 ^ 0xAB0721CFE4A837CELL) + 0x54F8DE301B57C832) ^ ((v3 ^ 0x3C02E41580FFF178) - 0x3C02E41580FFF178) ^ ((v3 ^ 0x9E84FCD64BBA54F0) + 0x617B0329B445AB10)) - v8 - 0x41DCD0178F1EEAFBLL;
  STACK[0x10F08] = v6;
  STACK[0x10EE0] = &STACK[0xF28] ^ 0x42D956088FAC34A6;
  STACK[0x10EF8] = a1;
  STACK[0x10EF0] = a2 + 336;
  LODWORD(STACK[0x10EEC]) = v5 - v8 + 61358523;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v5 + 39769)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * v5))(v10);
}

uint64_t sub_1006B7B28(uint64_t a1, int a2)
{
  v4 = (((a2 ^ 0x64D23055) - 1691496533) ^ ((a2 ^ 0xB863AD06) + 1201427194) ^ ((a2 ^ (263 * (v3 ^ 0x4880)) ^ 0x356443ED) - 895769154)) + 571682315;
  v5 = (((v2 ^ 0x679E2586) - 1738417542) ^ ((v2 ^ 0x667A7DFD) - 1719303677) ^ ((v2 ^ 0xE8319F6A) + 399401110)) + 571682315;
  v6 = v4 < 0x383D66FA;
  v7 = v4 > v5;
  if (v5 < 0x383D66FA != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((60795 * v7) ^ v3)))();
}

uint64_t sub_1006B7C34@<X0>(uint64_t a1@<X8>)
{
  v5 = STACK[0x4D8];
  v6 = STACK[0x3B8];
  v7 = 17902189 * ((((v4 - 152) | 0x3AB16904) - (v4 - 152) + ((v4 - 152) & 0xC54E96F8)) ^ 0xB4FE7F14);
  *(v4 - 152) = a1;
  *(v4 - 144) = v6;
  *(v4 - 136) = a1;
  *(v4 - 128) = v5;
  *(v4 - 112) = v2 - v7 + 16182;
  *(v4 - 120) = ((((v1 ^ 0xE04B4E8C) + 531935604) ^ ((v1 ^ 0x892AABF7) + 1993692169) ^ ((v1 ^ 0x80B4226A) + 2135678358)) + 1159506058 + ((v2 - 703891805) & 0x29F4AB7E)) ^ v7;
  v8 = (*(v3 + 8 * (v2 ^ 0xB49D)))(v4 - 152);
  return (*(v3 + 8 * v2))(v8);
}

uint64_t sub_1006B7D38()
{
  *STACK[0x7778] = STACK[0x47C0];
  *STACK[0x7280] = 34;
  *(STACK[0x21E8] + 148) = *(STACK[0x3068] + 40);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006B7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 + 24) = a1;
  *(a67[3] + 32) = a67[4];
  *(a66 + 40) = a67[1] + *(a66 + 40) - 0x3CE25E0EC5200378;
  v71 = LOBYTE(STACK[0x2D7]);
  v72 = (v71 ^ 0x78DB224972297914) - 0x78DB224972297914;
  a67[1] = 0x79C4BC1D8A4006F0 - a67[1];
  a67[2] = (((v71 ^ 0xBA414FF34FDFF891) + 0x45BEB00CB020076FLL) ^ v72 ^ ((v67 + 17084) + (v71 ^ 0xC29A6DBA3DF681DELL) + 0x3D659245C2091153)) + 0x73B4913AF7C22B7FLL;
  *a27 = 0x3CE25E0EC5200378;
  STACK[0x3D8] = v68 + 0x1FE716A640891904;
  v73 = *(STACK[0x2A0] + 8 * (v67 ^ (4 * (v68 == 0xE018E959BF76E6FCLL))));
  STACK[0x228] = &STACK[0x2D4];
  STACK[0x250] = v69;
  return v73(v73, v72, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v69, v69, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1006B8070@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 24504;
  if (a1)
  {
    v6 = v3 == v4;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && v1 != 0;
  return (*(STACK[0xF18] + 8 * (((v5 ^ 0xAA2A ^ (v5 + 2051) ^ 0xA271) * v8) ^ v5)))();
}

uint64_t sub_1006B80B8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * ((v0 - 15439) ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 9000)))(v2);
}

uint64_t sub_1006B80EC@<X0>(unint64_t a1@<X8>)
{
  v3 = *(STACK[0x1C58] + v1);
  v4 = STACK[0x89D4];
  v5 = (LODWORD(STACK[0x89D4]) ^ 0x4D429F35) - 335938431;
  v6 = (LODWORD(STACK[0x89D4]) ^ 0x8A1FC273) + 748986823;
  v7 = (LODWORD(STACK[0x89D4]) ^ 0x6126BED7) - 945955485;
  v8 = ((v2 - 1993462681) & 0x76D1BFCA) + (LODWORD(STACK[0x89D4]) ^ 0xFF3F7FDB) + 1501822373;
  v9 = 353670337 * ((((2 * (&STACK[0x10000] + 3800)) | 0x3FD0E36) - (&STACK[0x10000] + 3800) - 33457947) ^ 0xB5DF7F26);
  LODWORD(STACK[0x10EF8]) = (LODWORD(STACK[0x2A14]) + 105876725) ^ v9;
  LODWORD(STACK[0x10F10]) = 2005924293 - v9;
  LODWORD(STACK[0x10EE8]) = v9 ^ v4 ^ v5 ^ v6 ^ v7 ^ 0xDBD0F935 ^ v8;
  STACK[0x10F00] = a1;
  STACK[0x10F08] = 0;
  LODWORD(STACK[0x10EDC]) = v9 + 705410089 + v2;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x5DF2F71386CDF5DLL;
  STACK[0x10EE0] = v3;
  LOWORD(STACK[0x10EFC]) = -27455 * ((((2 * (&STACK[0x10000] + 3800)) | 0xE36) - (&STACK[0x10000] + 3800) + 30949) ^ 0x7F26) + 518;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v2 ^ 0xF937)))(&STACK[0x10ED8]);
  return (*(v10 + 8 * v2))(v11);
}

uint64_t sub_1006B8360@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0xF18] + 8 * a1);
  v4 = STACK[0xF10];
  v5 = STACK[0xF10] ^ 0x92F0;
  LODWORD(STACK[0xC50]) = v5;
  LODWORD(STACK[0xE40]) = v5 - 6597;
  LODWORD(STACK[0xC60]) = v4 ^ 0xAAC4;
  LODWORD(STACK[0xE30]) = v4 - 7327;
  LODWORD(STACK[0xE20]) = v4 + 5373;
  LODWORD(STACK[0xC40]) = v4 ^ 0xE0C4;
  LODWORD(STACK[0xE10]) = (v4 ^ 0xE0C4) - 27521;
  LODWORD(STACK[0xE00]) = v4 + 706518847;
  v6 = (v4 - 35115) | 0xC042;
  LODWORD(STACK[0xC70]) = v6;
  LODWORD(STACK[0xDF0]) = v6 - 49127;
  LODWORD(STACK[0xC20]) = v4 ^ 0x8BCE;
  LODWORD(STACK[0xDE0]) = v4 - 19798;
  LODWORD(STACK[0xC30]) = v4 - 25595;
  LODWORD(STACK[0xDD0]) = v4 + 14356;
  LODWORD(STACK[0xDC0]) = v4 - 25594;
  v7 = (v4 - 32489) | 0x2100;
  LODWORD(STACK[0xDB0]) = v4 - 4675;
  LODWORD(STACK[0xBE0]) = v7;
  LODWORD(STACK[0xDA0]) = v7 - 11112;
  v8 = (v4 - 1405869019) & 0x53CB77DF;
  LODWORD(STACK[0xD90]) = v4 - 19855;
  LODWORD(STACK[0xBD0]) = v8;
  LODWORD(STACK[0xD80]) = v8 - 9928;
  LODWORD(STACK[0xD70]) = v4 - 21341;
  LODWORD(STACK[0xBC0]) = v4 - 21076;
  LODWORD(STACK[0xD60]) = (v4 - 21076) ^ 0x38C6;
  LODWORD(STACK[0xBB0]) = v4 - 25648;
  v9 = 5792 * (v4 ^ 0x8B39);
  STACK[0xE70] = (v4 + 2078929584) & 0xFFFFFFFF8415AF54;
  v10 = (v4 - 27182) | 0xC22;
  LODWORD(STACK[0xD50]) = v4 + 12713;
  LODWORD(STACK[0xE80]) = v4 + 10754;
  LODWORD(STACK[0xD40]) = v4 + 6866;
  STACK[0xBA0] = v9;
  LODWORD(STACK[0xD30]) = v9 - 11581;
  LODWORD(STACK[0xD20]) = v4 + 10921;
  STACK[0xB80] = (v4 - 35640);
  LODWORD(STACK[0xD00]) = v4 + 11917;
  LODWORD(STACK[0xCF0]) = v4 - 35619;
  LODWORD(STACK[0xE60]) = v4 - 24059;
  LODWORD(STACK[0xCE0]) = v4 + 11516;
  LODWORD(STACK[0xB90]) = v10;
  LODWORD(STACK[0xCD0]) = v10 ^ 0x2D4A;
  STACK[0xED0] = *(v1 + 656);
  LODWORD(STACK[0xEA0]) = STACK[0x592C];
  STACK[0xEC0] = *(v2 + 166);
  STACK[0xCB0] = STACK[0x3FF8];
  STACK[0xCA0] = STACK[0x4980];
  LODWORD(STACK[0xC90]) = STACK[0x7B24];
  LODWORD(STACK[0xEB0]) = STACK[0x1EA4];
  LODWORD(STACK[0xE90]) = STACK[0x7804];
  LODWORD(STACK[0xCC0]) = v4 - 2346;
  LODWORD(STACK[0xC80]) = v4 - 30110;
  return v3();
}

uint64_t sub_1006B8688()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 31075 + v0 + 30216)))();
}

uint64_t sub_1006B8750(_DWORD *a1, void *a2, int a3)
{
  v3 = STACK[0xF10] + 8614;
  v4 = *a1 >> 2;
  v5 = *(*a2 + 4 * ((((STACK[0xF10] - 1994124924) & 0x76DBFFEE) + 268395342) & (0xC2C3ABA % v4)));
  LOWORD(v4) = ~*(*a2 + 4 * ((v4 - 1) & v5));
  v6 = ~v5;
  v7 = STACK[0x8B0];
  v8 = *(STACK[0x8B0] - 527405895);
  v9 = *(STACK[0x8B8] + 4 * v8);
  v11 = v4 & HIWORD(v6);
  v10 = v11 == 0;
  v12 = v11 + v11 * v9;
  if (v10)
  {
    v13 = *(STACK[0x8B8] + 4 * v8);
  }

  else
  {
    v13 = 0;
  }

  *(STACK[0x8B8] + 4 * v8) = (v13 + v12) * v9;
  *(v7 - 527405895) = (v8 + 1) % 6u;
  if (!v10)
  {
    a3 = 371891350;
  }

  return (*(STACK[0xF18] + 8 * (((a3 != -371865839) | (2 * (a3 != -371865839))) ^ v3)))();
}

uint64_t sub_1006B8844()
{
  v3 = ((v1 ^ 0xE4A566AE) - 562390486) ^ v1 ^ ((v1 ^ 0xDF1F0C55) - 440340269) ^ ((v1 ^ 0x31259639) + 200960703) ^ ((v1 ^ 0xCFBFFFBA) - 178257090);
  v4 = ((v3 ^ 0x2444B5D1) - 1603310596) ^ ((v3 ^ 0xE0CEE4F6) + 1692744413) ^ ((v3 ^ 0x1AA525F) - 2055107466);
  v5 = ((((LOBYTE(STACK[0x54F]) ^ 0x65602349) - 1700799305) ^ ((LOBYTE(STACK[0x54F]) ^ 0xFEFF6703) + 16816381) ^ ((LOBYTE(STACK[0x54F]) ^ 0x9B9F44A2) + (((v0 - 15971) | 0x1C20) ^ 0x6460A42E))) + 232) % (1091296571 - v4);
  v6 = ((2 * v5) & 0xFFFEF6FE) + (v5 ^ 0xFFFF7B7F) + v4;
  if (v6 - 1091262400 >= 0xFB)
  {
    v7 = -215377237;
  }

  else
  {
    v7 = 875885163 - v6;
  }

  v9 = v1 != 0x3CE25E0EC520035FLL && v7 != -215377487;
  return (*(v2 + 8 * ((90 * v9) ^ v0)))();
}

uint64_t sub_1006B8BBC()
{
  v1 = STACK[0xF18];
  STACK[0x8378] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 42856))();
}

uint64_t sub_1006B8C04@<X0>(_DWORD *a1@<X8>)
{
  v3 = v1 + 4761;
  LODWORD(STACK[0x6BCC]) = -371865839;
  *STACK[0x5EF0] = *(v2 + 256);
  *STACK[0x8158] = *(v2 + 288);
  v4 = 193924789 * ((((&STACK[0x10000] + 3800) ^ 0xA4820800 | 0x4A55D75F) + ((&STACK[0x10000] + 3800) ^ 0x48145751 | 0xB5AA28A0)) ^ 0x5A2D6D36);
  v5 = (((*a1 ^ 0xA774BE4E) + 1485521330) ^ ((*a1 ^ 0xD3BA66BD) + 742758723) ^ (((107 * (v1 ^ 0x8AE8) + 479714506) & 0xE367F8EF ^ *a1 ^ 0x9D1B8709) + 1659166750)) - v4;
  LODWORD(STACK[0x10EE0]) = v1 - v4 + 28486717;
  LODWORD(STACK[0x10EDC]) = v5 + 848078692;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x460B)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((13 * (LOBYTE(STACK[0x10ED8]) == 118)) ^ v3)))(v7);
}

uint64_t sub_1006B8E94()
{
  v3 = LODWORD(STACK[0x3FC]) - 26100;
  LODWORD(STACK[0x650]) = v0;
  return (*(v2 + 8 * (v3 ^ 0x1EBB)))(v1);
}

uint64_t sub_1006B8F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xD80];
  v8 = LODWORD(STACK[0xD80]) - 25957;
  LODWORD(STACK[0xE30]) = *(*STACK[0xE50] + ((v8 ^ 0x7D86BADCu) & *STACK[0xE58]));
  v9 = *(STACK[0xF18] + 8 * v7);
  v10 = (v8 + 10200) | 0x55A0;
  LODWORD(STACK[0xE40]) = v10;
  LODWORD(STACK[0xD80]) = v10 ^ 0x28BA8302;
  LODWORD(STACK[0xE60]) = v8;
  LODWORD(STACK[0xD70]) = v8 + 25957;
  return v9(a1, a2, a3, a4, 0x41ECA072BD42710ALL, a6, a7, 0xE150087087C5995DLL);
}

uint64_t sub_1006B900C(uint64_t result)
{
  if ((v1 ^ 0x3F9F921A) + ((2 * v1) & 0x7F3E2010) == 1067422234)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(result + 20) = v2;
  return result;
}

uint64_t sub_1006B90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(STACK[0xBC8] + (LODWORD(STACK[0x1FC8]) + v4));
  LOBYTE(STACK[0xDA7]) = (((v7 ^ 0x51) - 81) ^ (((v5 + 18) ^ 0x68 ^ v7) - 48) ^ ((v7 ^ 0x3E) - 62)) - ((((v4 - ((2 * v4) & 0x56) + 43) ^ 0xD) - 13) ^ (((v4 - ((2 * v4) & 0x56) + 43) ^ 0x7E) - 126) ^ (((v4 - ((2 * v4) & 0x56) + 43) ^ 0x58) - 88)) + 72;
  return (*(v6 + 8 * v5))(a1, a2, a3, a4, &off_1010A0B50, &STACK[0x17DF], 94, 2596675714);
}

uint64_t sub_1006B9228()
{
  v4 = *(v3 + v2);
  v5 = STACK[0x1870];
  v6 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0x53FB7A18) - ((&STACK[0x10000] + 3800) | 0xAC0485E7) - 1408989721) ^ 0x43686C92);
  LODWORD(STACK[0x10EF0]) = LODWORD(STACK[0x4AFC]) - v6;
  STACK[0x10EF8] = v5;
  STACK[0x10EE0] = v4;
  STACK[0x10EE8] = &STACK[0x5A00];
  LODWORD(STACK[0x10ED8]) = (v1 + 1118) ^ v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE5F1)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (((LODWORD(STACK[0x10F00]) == v0) * (6 * (v1 ^ 0x28A1) + 13027)) ^ v1)))(v8);
}

uint64_t sub_1006B9394()
{
  v2 = LODWORD(STACK[0x23F0]) - 2139301566;
  v3 = 1603510583 * ((((2 * (v1 - 256)) | 0x40B1FE78) - (v1 - 256) + 1604780228) ^ 0x3783CD97);
  *(v1 - 256) = LODWORD(STACK[0x23F4]) - v3 - ((2 * LODWORD(STACK[0x23F4])) & 0x608A0878) + 809829436;
  *(v1 - 252) = v3 + 22599;
  v4 = (*(v0 + 415232))(v1 - 256);
  v5 = LOBYTE(STACK[0x2547]);
  LODWORD(STACK[0x11AC]) = v2;
  return (*(v0 + 8 * ((25393 * v5) ^ 0x942u)))(v4);
}

uint64_t sub_1006B95F0()
{
  v1 = v0 ^ 0xF94C;
  v2 = STACK[0x9758];
  v3 = *(STACK[0x9758] + 28);
  STACK[0x5E50] = STACK[0x9758] + 28;
  v4 = *(v2 + 32);
  STACK[0x1EE0] = v2 + 32;
  v6 = v3 == v1 - 371905971 && v4 == -371866033;
  return (*(STACK[0xF18] + 8 * ((v6 * (((v1 - 37036) | 0x8102) - 36107)) ^ v1)))();
}

uint64_t sub_1006B98F4()
{
  *(v1 + 304) = 0xF67EC6F3E5132CA9;
  *(v1 + 312) = 0;
  STACK[0x3438] = 0;
  LODWORD(STACK[0x5C9C]) = v2;
  STACK[0x5940] = v0 + 48;
  v4 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x2D1C ^ (v3 + 860906693) & 0xCCAF96DB)))();
}

uint64_t sub_1006B9958@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1E30];
  *(*(*(v2 + 520) + 8) + 120 * v1 + 8) = 0x981390C2FED9247;
  STACK[0xA430] = *(*(v2 + 520) + 8) + 120 * v1;
  STACK[0xA438] = v2 + 161;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v3 + 8 * (a1 + a1 + 3924 - 1951)))();
}

uint64_t sub_1006B9A5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  STACK[0xB00] = a3;
  LODWORD(STACK[0xE80]) = *(*STACK[0xE50] + (*STACK[0xE58] & 0x7D86BAEC));
  v3 = LODWORD(STACK[0xE90]) + 1026844636;
  v4 = *(STACK[0xF18] + 8 * (LODWORD(STACK[0xE90]) ^ 0xC2CCA39A));
  STACK[0xDB0] = 0xF6055E6C614E0A83;
  LODWORD(STACK[0xE70]) = v3;
  LODWORD(STACK[0xE90]) = v3 ^ 0x9C07;
  return v4(a1, a2, 9924);
}

uint64_t sub_1006B9B00@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 - 0x627FD133391FAB6CLL;
  v5 = v2 + *(v1 + 16) + (((v3 + 29345) | 0x81Au) ^ 0x8B3ALL) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0x51D1B4B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0xDC8E803A2A11B49ALL) + 1526910594;
  v6 = v4 < 0x5B02CE82;
  v7 = v4 > v5;
  if (v6 != v5 < 0x5B02CE82)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((15182 * v7) ^ v3)))();
}

uint64_t sub_1006B9D80()
{
  LODWORD(STACK[0x4F30]) = -371865839;
  v1 = *(STACK[0xF18] + 8 * (v0 - 43133 + ((v0 + 29526) | 0x3CA0)));
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return v1();
}

uint64_t sub_1006B9E50()
{
  v1 = *(STACK[0xF18] + 8 * (v0 - 15728));
  STACK[0xED0] = 2 - 634647737 * ((((2 * &STACK[0x10ED8]) | 0xA7910297BA61E126) - &STACK[0x10ED8] - 0x53C8814BDD30F093) ^ 0x89132EA4B0A6DF6FLL);
  return v1(4294936619);
}

uint64_t sub_1006B9F04()
{
  v2 = STACK[0x4690];
  LODWORD(STACK[0x5E0C]) = v1;
  return (*(STACK[0xF18] + 8 * (((((v0 - 86) ^ (v2 == 0)) & 1) * ((11881 * (v0 ^ 0x1E80)) ^ 0x8B6C)) ^ v0)))();
}

uint64_t sub_1006BA100(uint64_t a1, int a2)
{
  v4 = (((a2 ^ 0x8A23A553) + 1977375405) ^ ((a2 ^ 0x11AF6E8B) - 296709771) ^ ((a2 ^ ((v3 - 8931) | 0x844) ^ 0x7259142D) - 1918438601)) - 796244252;
  v5 = (((v2 ^ 0xB1B7FE4E) + 1313341874) ^ ((v2 ^ 0xC0D74887) + 1059633017) ^ ((v2 ^ 0x98B571D8) + 1732939304)) - 796244252;
  v6 = v4 < 0xE6B47FD3;
  v7 = v4 > v5;
  if (v5 < 0xE6B47FD3 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((7855 * v7) ^ (v3 + 21964))))();
}

uint64_t sub_1006BA214@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 12) = *(v1 - 0x10A99C80114D1483);
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] += 48;
  v4 = STACK[0x4D00];
  LODWORD(STACK[0x9310]) = 2065143989;
  *v3 = 1684169063;
  v5 = STACK[0x8970] - 0x217E172EFA1E804;
  *(v3 + 1) = v4 ^ (((v2 - 1474678108) & 0x57E5D3EE) + 0x427A3CD3E8C54861);
  *(v3 + 2) = v5;
  *(v3 + 3) = STACK[0x7928];
  *(v3 + 8) = 0;
  return (*(STACK[0xF18] + 8 * (v2 - 12050)))();
}

uint64_t sub_1006BA344()
{
  v1 = *(STACK[0x2DC0] + 81) - ((*(STACK[0x2DC0] + 81) << ((((v0 ^ 0xC9) - 83) & 0xDB) - 73)) & 0x22) - 371865839;
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393388;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x99C9)))();
}

uint64_t sub_1006BA404@<X0>(int a1@<W8>)
{
  v1 = a1 & 0x765ABE7D;
  STACK[0x10ED8] = STACK[0x4158];
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x215F96C1AC64C017 ^ (((a1 & 0x765ABE7D) - 32986) | 0x8010u);
  LODWORD(STACK[0x10EE0]) = ((a1 & 0x765ABE7D) + 329019501) ^ (1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0x97447ED6) - (&STACK[0x10000] + 3800) + 878559381) ^ 0x24F415B2));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 & 0x765ABE7D ^ 0x4727u)))(&STACK[0x10ED8]);
  STACK[0x4158] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006BA52C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB4A4]) = v1;
  LODWORD(STACK[0xB4A8]) = v1 + a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006BA644()
{
  v1 = STACK[0x2388];
  v2 = 353670337 * (((&STACK[0x10ED8] | 0x7EF51F816A4547CLL) - (&STACK[0x10ED8] | 0xF810AE07E95BAB83) - 0x7EF51F816A4547DLL) ^ 0xF77EE773A285AC41);
  v3 = v2 ^ STACK[0x2388] ^ 0x3CF670785D9C8B01;
  STACK[0x10EE0] = *(STACK[0x5488] - 0x217E172EFA1E7ECLL);
  STACK[0x10ED8] = v3;
  LODWORD(STACK[0x10EE8]) = v2 + v0 + 20231;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 45079)))(&STACK[0x10ED8]);
  v5 = 353670337 * ((~&STACK[0x10ED8] & 0xBFDDBC1DF1936D73 | &STACK[0x10ED8] & 0x402243E20E6C9288) ^ 0x4F4C0A9645B2954ELL);
  LODWORD(STACK[0x10EF0]) = v5 - 1247706310;
  LODWORD(STACK[0x10ED8]) = v5 + v0 - 6071;
  STACK[0x10EE8] = ((v0 + 14855) ^ v1 ^ 0x3835AC4BB04EE1F6) + v5;
  STACK[0x10EE0] = 0x2CB8161969575A1DLL - v5;
  v6 = (*(v4 + 8 * (v0 ^ 0xD658)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v6);
}

uint64_t sub_1006BA7E0@<X0>(int a1@<W8>)
{
  v4 = a1 & 0xA254EFFF;
  LODWORD(STACK[0x10EF8]) = (a1 & 0xA254EFFF) - 139493411 * (((((&STACK[0x10000] + 3800) | 0x83108FBC) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x7CEF7043)) ^ 0x70C29106) + 10788;
  STACK[0x10ED8] = v3;
  STACK[0x10EE8] = v1;
  STACK[0x10EF0] = v2;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a1 & 0xA254EFFF ^ 0x4740)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v4 - 14812)))(v6);
}

uint64_t sub_1006BAAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v33 = (v30 + 1638595919) ^ v28;
  v34 = 634647737 * ((((v32 - 128) | 0x4BFC5D9F) - (v32 - 128) + ((v32 - 128) & 0xB403A260)) ^ 0x266A7263);
  *(v32 - 112) = v30 - v34 + 21047;
  *(v32 - 120) = &a19;
  *(v32 - 128) = v33 + v34;
  v35 = (*(v29 + 8 * (v30 + 52033)))(v32 - 128);
  v36 = ((((*v31 ^ 0xE4A4612C) + 458989268) ^ ((*v31 ^ 0x2664E276) - 644145782) ^ ((*v31 ^ 0x2B15444B) - 722814027)) - 1819048307 + (((a28 & ~v30 ^ 0x966361EC) + 1765809172) ^ ((a28 & ~v30 ^ 0xDCBD942D) + 597617107) ^ ((a28 & ~v30 ^ 0x4ADEF5C1) - 1241675713)) + 1461633604) ^ v30;
  return (*(v29 + 8 * ((26 * (((v36 & v30) >> (__clz(v36 | 1) ^ 0x1F)) & 1)) ^ (v30 + 15306))))(v35);
}

uint64_t sub_1006BAC64()
{
  v1 = v0 - 4805;
  v2 = v0 ^ 0x4192;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))();
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1006BAC90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  STACK[0x2F8] = *(v62 + 40);
  STACK[0x670] = a2;
  STACK[0x540] = 0;
  v63 = *(STACK[0x430] + 8 * (((a2 == 0) * ((v59 ^ a8) + a6 + 5566 * (v59 ^ a5))) ^ v59));
  STACK[0x3A0] = *(v61 + 8 * (v59 ^ 0xBE5E)) + v60;
  STACK[0x420] = *(v61 + 8 * (v59 - 43639)) - 231415367;
  STACK[0x418] = *(v61 + 8 * (v59 ^ 0xB1E8)) - 1680276466;
  STACK[0x398] = *(v61 + 8 * (v59 - 44748)) - 1658030406;
  STACK[0x380] = *(v61 + 8 * (v59 - 46622)) - 567702310;
  STACK[0x3F8] = *(v61 + 8 * (v59 ^ 0xB9D5)) - 64766467;
  STACK[0x378] = *(v61 + 8 * (v59 - 47245)) - 1117394191;
  STACK[0x250] = *(v61 + 8 * (v59 - 43794)) - 1209245626;
  STACK[0x248] = *(v61 + 8 * (v59 - 47664)) - 477118410;
  STACK[0x428] = *(v61 + 8 * (v59 - 47430)) - 691187598;
  STACK[0x390] = *(v61 + 8 * (v59 ^ 0xB083)) - 175332515;
  STACK[0x400] = *(v61 + 8 * (v59 ^ 0xB0CC)) - 183391798;
  return v63(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1006BAE94()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x7FEB)))(265);
  v3 = STACK[0x358];
  STACK[0x428] = v2;
  return (*(v3 + 8 * (((2 * (v2 == 0)) | (4 * (v2 == 0))) ^ (v0 - 28653))))();
}

uint64_t sub_1006BB09C()
{
  LODWORD(STACK[0x3BDC]) = -371865839;
  LODWORD(STACK[0x3B50]) = -371865839;
  LODWORD(STACK[0x1264]) = -371865839;
  v1 = STACK[0x138C];
  STACK[0x8FE8] = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x704C]) = -2116087615;
  LODWORD(STACK[0x4A8C]) = STACK[0x93C8];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006BB128()
{
  v1 = 353670337 * ((~&STACK[0x10ED8] & 0xFBB721D443E94614 | &STACK[0x10ED8] & 0x448DE2BBC16B9E8) ^ 0xB26975FF7C8BE29);
  v2 = (STACK[0x9030] ^ 0x3835AC4BB04EB715) + v1;
  STACK[0x10EE0] = (LODWORD(STACK[0x5194]) ^ 0x2FFEB719168A9D8CLL) - v1 + ((2 * (LODWORD(STACK[0x5194]) ^ 0xE9554211)) & 0x1FEBEB53ALL) - 0x346A10096080080;
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10EF0]) = v1 + 1234030518;
  LODWORD(STACK[0x10ED8]) = v1 + v0 + 1467888326;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA88118DB)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((64588 * (v0 < 0x998CA18B)) ^ (v0 + 1467908544))))(v4);
}

uint64_t sub_1006BB338@<X0>(unint64_t a1@<X8>)
{
  v5 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0xDF5CF27E) - ((&STACK[0x10000] + 3800) & 0xDF5CF278)) ^ 0xCFCFE4F4);
  LODWORD(STACK[0x10EFC]) = (v4 + 36071) ^ v5;
  LODWORD(STACK[0x10EF8]) = ((v3 ^ 0x324BFDFF) + ((2 * v3) & 0x6497FBFE) - 537062796 + v4) ^ v5;
  STACK[0x10EF0] = a1;
  STACK[0x10EE0] = v1;
  STACK[0x10ED8] = v2;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v4 + 46076)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v4))(v7);
}

uint64_t sub_1006BB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v43 = (v39 ^ 0x4D92E5AF) & (2 * (v39 & 0x6E14F02F)) ^ v39 & 0x6E14F02F;
  v44 = 2 * (v39 ^ 0x959BA5A7);
  v45 = v44 ^ 0xF71EAB10;
  v46 = v45 & (v39 ^ 0x959BA5A7) ^ v44 & ((v40 - 23104) ^ 0xFB8F0370);
  v47 = v42 - 1;
  v48 = v39 ^ (2 * ((v46 ^ 0x8815488) & (16 * (v46 & (4 * v43) ^ v43)) & ((4 * (v46 ^ 0x8815488)) ^ 0x6E3D5620) ^ v46 & (4 * v43) ^ v43));
  STACK[0x570] = v47;
  v49 = (v48 ^ 0xEB480C29) - 2076541443;
  LOBYTE(v48) = (((v48 ^ 0xFD) + 41) ^ ((v48 ^ 0x29) - 3) ^ ((v48 ^ 0x41) - 107)) + 87;
  *(v41 + v47) = v48 * (v39 + 9) + 49 * (-25 * v48 - 24 * (v39 + 9)) + 88;
  v50 = *(STACK[0x430] + 8 * ((185 * (STACK[0x570] != 0)) ^ v40));
  STACK[0x3D0] = &STACK[0x47C];
  STACK[0x310] = STACK[0x300];
  STACK[0x388] = v41;
  return v50(v50, v49, v45, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1006BB7CC@<X0>(int a1@<W8>)
{
  v2 = LOBYTE(STACK[0x91DF]);
  LODWORD(STACK[0x3CB0]) = a1;
  return (*(STACK[0xF18] + 8 * ((((((v1 + 7779) | 0x330) + 9252) ^ ((v1 + 4444) | 0x449)) * v2) ^ v1)))();
}

uint64_t sub_1006BBA24@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W6>, unsigned int a4@<W8>)
{
  v8 = v4 + a3 + ((v5 + a1) | a2);
  v9 = (a4 < 0x256B3EFC) ^ (v8 < 0x256B3EFC);
  v10 = v8 < a4;
  if (v9)
  {
    v10 = a4 < 0x256B3EFC;
  }

  return (*(v7 + 8 * (((8 * (v6 & v10)) | (16 * (v6 & v10))) ^ v5)))();
}

uint64_t sub_1006BBA90()
{
  v5 = v0 < v3;
  if (v5 == v4 + 1098327223 < -1049156426)
  {
    v5 = v4 + 1098327223 < v0;
  }

  return (*(v1 + 8 * (((((v2 - 43904) | 0x4061) - 21099) * !v5) ^ v2)))();
}

uint64_t sub_1006BBBFC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x3618];
  v2 = STACK[0x5F58];
  v2[6] = *(STACK[0x3618] + 48);
  v2[9] = *(v1 + 72);
  v2[8] = *(v1 + 64);
  return (*(STACK[0xF18] + 8 * ((13 * (*(v1 + 80) == ((a1 + 5385) ^ 0xEBD5543F) + a1 + 16602)) ^ a1)))();
}

uint64_t sub_1006BBCE4()
{
  v4 = v1 + 5473;
  v5 = (v1 - 18900) | 0x4A02;
  v6 = (v1 - 3629) | 0x23;
  v8 = v0 < v3 && v2 < v0 + 16;
  return (*(STACK[0xF18] + 8 * ((((v5 ^ 0xFFFFF19F) + v6) * v8) ^ v4)))();
}

uint64_t sub_1006BBD6C()
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((((*(STACK[0xF18] + 8 * (v0 ^ 0xF944)))(24) == 0) ^ (3 * (v0 ^ 0xB5))) & 1) * ((v0 + 3304) ^ 0x40F9)) ^ v0));
  return v2();
}

uint64_t sub_1006BBE4C()
{
  STACK[0xA388] = STACK[0x9038] + 624;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x794 ^ (19 * (v0 ^ 0x6A5)))))();
}

uint64_t sub_1006BBEFC()
{
  v3 = *v0 == *v2;
  if (v3)
  {
    v4 = -127;
  }

  else
  {
    v4 = 127;
  }

  return (*(STACK[0xF18] + 8 * (((((((v1 + 34) | 0xA2) ^ 0x45 ^ v3) + v4) != 62) * ((2 * (v1 ^ 0x3A18)) ^ 0x2C36)) ^ v1)))();
}

uint64_t sub_1006BBF78()
{
  v0 = STACK[0xF10] - 33410;
  v1 = STACK[0xF10] + 11858;
  v2 = STACK[0xF18];
  STACK[0x5050] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v1 ^ 0xF43F) + v0)))();
}

uint64_t sub_1006BC0A4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x30EC]) = 0;
  LODWORD(STACK[0x2614]) = a1;
  STACK[0xB498] = *v1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006BC0E8()
{
  v2 = STACK[0x4958];
  LODWORD(STACK[0x270C]) = v0;
  return (*(STACK[0xF18] + 8 * (((((v2 == 0) ^ (v1 - 98)) & 1) * ((v1 ^ 0x1EA6) - 35585)) ^ v1)))();
}

uint64_t sub_1006BC190()
{
  STACK[0x5E8] = *v1;
  LODWORD(STACK[0x5FC]) = v2;
  v3 = *(v1 + 24);
  v4 = *(v1 + 20) & (((8 * v0) ^ 0x1EC38) - 22266);
  *v1 = 0;
  *(v1 + 8) = 0xE9D5C711E9D5C711;
  *(v1 + 16) = -371865839;
  *(v1 + 20) = v4;
  return (*(STACK[0x430] + 8 * ((22860 * (v3 == 12533 * (v0 ^ 0x375A) - 371890905)) ^ v0)))();
}

uint64_t sub_1006BC25C(int a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, int a7, unsigned int a8)
{
  v23 = *(v22 + (((*(v8 + (v9 ^ 0xA2) * v12 - ((((v9 ^ 0xA2u) * v12 * v13) >> 32) >> 11) * a1) ^ a2) * a3) & a4));
  v24 = v23 & v16 ^ v17;
  *(v10 + (*(STACK[0xED0] + 4 * (a7 + (v9 ^ a5) * a6 - ((((a7 + (v9 ^ a5) * a6) * a8) >> 32) >> 13) * v14)) ^ v15) + v20) = LODWORD(STACK[0xD60]) ^ v23 ^ (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v19;
  return (*(STACK[0xF18] + 8 * (((v9 != 255) * v21) ^ v11)))();
}

uint64_t sub_1006BC428()
{
  v1 = STACK[0xA04];
  LODWORD(STACK[0xA04]) += 4;
  LODWORD(STACK[0x20FC]) = v1 + LODWORD(STACK[0x2654]) + 1606886958;
  v2 = *(STACK[0x2668] + 32) + 1713248527;
  LODWORD(STACK[0x2108]) = ((v2 ^ 0xDF3E8AF6) + 1189047326) ^ v2 ^ ((v2 ^ 0xB20ACF15) + 736831999) ^ ((v2 ^ 0x74CCA388) - 315800220) ^ ((v2 ^ 0x7FE6FF7F) - 435742315) ^ 0xAB1A6F8;
  return (*(v0 + 41408))();
}

uint64_t sub_1006BC578()
{
  v3 = *(v1 + 12);
  STACK[0x430] = v3 ^ 0xE9D5C711;
  return (*(v2 + 8 * (v0 ^ 0xE9D56086 ^ (111 * (((v3 - v0) | (v0 - v3)) >> 31)))))();
}

uint64_t sub_1006BC634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1600] = STACK[0x988];
  LOBYTE(STACK[0x12CF]) = STACK[0x173F];
  v10 = STACK[0x1A94];
  LODWORD(STACK[0xB28]) = STACK[0x1A94];
  return (*(v9 + 8 * (((v10 == v8) * (((v7 + 1107311539) | 0x20608002) - 1650511901)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x800]);
}

uint64_t sub_1006BC7CC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x228];
  v3 = (a1 + STACK[0x228]);
  *v3 = STACK[0x330];
  v3[1] = 0xBCE25E0EC5200378;
  return (*(STACK[0x430] + 8 * (((((a2 - 167966497) & 0xA02EB8F ^ 0x1664) + 23 * (a2 ^ 0x77D0)) * (v2 >= 0)) ^ a2)))();
}

uint64_t sub_1006BC844@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = (v8 + (a3 ^ 0x40AAAE447D94E12ELL) - 0x40AAAE447D95178BLL) ^ ((a3 ^ 0xE3C63CBC3E385A44) + 0x1C39C343C1C7A5BCLL) ^ ((a3 ^ 0xA36C92F83CEBB7FELL) + 0x5C936D07C3144802);
  v20 = (v19 - 0x4C8C559ADD06AE65) * (v19 + v12) + 0x4C8C559B766F0F6ALL * v19 - 0x4CFC471F498C2FFDLL;
  v21 = ((2 * (v20 % 0xC95119CF)) & 0x1FF4EDF9ELL) + ((v20 % 0xC95119CF) ^ 0x71FFACFBFFA76FCFLL);
  LODWORD(v20) = v21 - 1501824257;
  v22 = ((v21 - 1501824257) ^ 0x5DDA05B1) & (2 * ((v21 - 1501824257) & 0x59DC9532)) ^ (v21 - 1501824257) & 0x59DC9532;
  v23 = ((2 * ((v21 - 1501824257) ^ 0xDDF32FD5)) ^ 0x85F75CE) & ((v21 - 1501824257) ^ 0xDDF32FD5) ^ (2 * ((v21 - 1501824257) ^ 0xDDF32FD5)) & 0x842FBAE6;
  v24 = v23 ^ 0x84208A21;
  v25 = (v23 ^ 0x630C0) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x10BEEB9C) & v24 ^ (4 * v24) & 0x842FBAE4;
  v27 = v26 ^ 0x84011063;
  v28 = (v26 ^ 0x2EAA80) & (16 * v25) ^ v25;
  v29 = ((v16 ^ 0x74F06002ACC7E6EDLL) - 0x74F06002ACC7E6EDLL) ^ ((v16 ^ 0x9FC09B303A6153D1) + 0x603F64CFC59EAC2FLL) ^ ((v16 ^ 0xEB30FB32E9E1B9A8) + 0x14CF04CD161E4658);
  v30 = (v29 - 0xAB2C3679319B563) * (v29 + v12) + 0xAB2C3681260C1F7 * v29 + 2575459919u * v21;
  LODWORD(v29) = ((16 * v27) ^ 0x42FBAE70) & v27 ^ (16 * v27) & 0x842FBAE0;
  v31 = (v30 - 0x1D18BC6329CFFBDELL) % 0x8C3E3039uLL - ((2 * ((v30 - 0x1D18BC6329CFFBDELL) % 0x8C3E3039uLL)) & 0x1E44CE0BALL) - 0x6CB5FF630DD98FA3;
  v32 = ((((v31 ^ 0xA2EE1D633425E848) + 0x5D11E29CCBDA17B8) ^ ((v31 ^ 0x26EBAE81E30D2BA2) - 0x26EBAE81E30D2BA2) ^ ((v31 ^ 0x174FB37E250EB3B7) - 0x174FB37E250EB3B7)) + 0x3C1BDD40EC3781D6) * (v21 - 0x71FFACFBFFA76FCFLL) + 0x572E235C05EEEE87 * v21 + 0x5FB6EB434BDDF714;
  v33 = (a4 + v5);
  v34 = ((v33 ^ *(*v14 + (*v9 & v10))) & 0x7FFFFFFF) * v11;
  v35 = ((v32 ^ 0xF59EA0226D01773) - 0x2C133013E25E484ELL) ^ v32 ^ ((v32 ^ 0xCAF9F15DC0AAA0E1) + 0x164CD4B3FBDB0024) ^ ((v32 ^ 0x74243B55CD585550) - 0x576EE14409D60A6DLL) ^ ((v32 ^ 0x92CEFA1BEFACBDFFLL) + 0x4E7BDFF5D4DD1D3ELL);
  v36 = STACK[0x278];
  LODWORD(v32) = v29 ^ 0x84041087;
  *v33 = *(v7 + v5) ^ *(v15 + (((v34 ^ HIWORD(v34)) * v11) >> 24)) ^ *((((v34 ^ HIWORD(v34)) * v11) >> 24) + v17 + 2) ^ *((((v34 ^ HIWORD(v34)) * v11) >> 24) + v18 + 4) ^ ((v34 ^ BYTE2(v34)) * v11) ^ ((((v34 ^ HIWORD(v34)) * v11) >> 24) * a1) ^ (v35 >> 15) ^ 0x1C;
  v37 = v5 + 1;
  v38 = ((*(*v36 + (*v9 & v10)) ^ (a4 + v37)) & 0x7FFFFFFF) * v11;
  v39 = (v38 ^ HIWORD(v38)) * v11;
  v40 = (v29 ^ 0x84041087) << 8;
  *(a4 + v37) = *(v7 + v37) ^ *(v15 + (v39 >> 24)) ^ *((v39 >> 24) + v17 + 2) ^ *((v39 >> 24) + v18 + 4) ^ v39 ^ (BYTE3(v39) * a1) ^ (v35 >> 23) ^ 0x89;
  v41 = v5 + 2;
  v42 = (v29 ^ 0x2BAA00) & (v28 << 8) ^ v28;
  LODWORD(v29) = ((*(*v36 + (*v9 & v10)) ^ (a4 + v41)) & 0x7FFFFFFF) * v11;
  v43 = (v29 ^ WORD1(v29)) * v11;
  *(a4 + v41) = *(v7 + v41) ^ *(v15 + (v43 >> 24)) ^ *((v43 >> 24) + v17 + 2) ^ *((v43 >> 24) + v18 + 4) ^ v43 ^ (BYTE3(v43) * a1) ^ 0x23 ^ (v35 >> 31);
  v44 = (((a2 ^ 0xD8D9DE39) + 149439202) ^ a2 ^ ((a2 ^ 0x8BE0B628) + 1540434673) ^ ((a2 ^ 0x8B0894C8) + 1530464273) ^ ((a2 ^ 0xF7FF9FFE) + 667812647)) & 0xFFFFFFFC ^ 0x2FCE6327;
  v45 = v20 ^ (2 * ((v40 & 0x42F0000 ^ 0x42A0000 ^ (v40 ^ 0x2FBA0000) & v32) & (v42 << 16) ^ v42));
  v46 = ((*(*v36 + (*v9 & v10)) ^ (a4 + v44)) & 0x7FFFFFFF) * v11;
  v47 = (v46 ^ HIWORD(v46)) * v11;
  *(a4 + v44) = *(v7 + v44) ^ *(v15 + (v47 >> 24)) ^ *((v47 >> 24) + v17 + 2) ^ *((v47 >> 24) + v18 + 4) ^ v47 ^ (BYTE3(v47) * a1) ^ 0xB4 ^ (v35 >> 39);
  v48 = (a2 - 2014350638) < LODWORD(STACK[0x2B0]);
  if (v4 > 0x48422A0A != (a2 - 2014350638) < 0xB7BDD5F5)
  {
    v48 = v4 > 0x48422A0A;
  }

  return (*(v13 + 8 * ((93 * v48) ^ v6)))(a1, (a2 + 4), v45 ^ 0x269B99A6);
}

uint64_t sub_1006BD050@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 24) = v4;
  *(v1[3] + 32) = v1[4];
  *(a1 + 8) = *(a1 + 8) + v1[1] - 0x3CE25E0EC5200378;
  return (*(v5 + 8 * v2))();
}

uint64_t sub_1006BD0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  HIDWORD(v30) = v27 & (2 * a7);
  LODWORD(v30) = v26 + v28;
  return (*(a24 + 8 * ((52219 * (v24 - 1554795774 < (((v25 ^ 0x6919) + 27264) ^ 0x7FFF8901u))) ^ v25)))(a1, a2, a3, a4, 121559735, a6, a7, a8, v30, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1006BD160@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (((*(a1 + 16) ^ 0xA85ACDE0) + 1470444064) ^ ((*(a1 + 16) ^ 0x5103F629) - 1359214121) ^ ((*(a1 + 16) ^ 0x108CFCD8) + (((a2 & 0xAB7FF) + 1650474197) ^ 0x8D13D37A))) + 438420886;
  v5 = v4 < (a2 & 0xAB7FFu) + 810248968;
  v6 = v4 > v2;
  if (v2 < 0x304BFE85 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v3 + 8 * (a2 & 0xAB7FF | (2 * !v7))))();
}

uint64_t sub_1006BD228@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, int a9@<W8>)
{
  STACK[0x2A0] = *v9;
  STACK[0x580] = 0;
  v23 = *(v16 + 8 * (((((v18 == 0) ^ (a9 + a9 + v20 + 1)) & 1) * v11) ^ a9));
  STACK[0x628] = v18;
  STACK[0x398] = *(v15 + 8 * (a9 + v12)) + v13;
  STACK[0x270] = *(v15 + 8 * (a9 ^ a1)) + a2;
  STACK[0x200] = *(v15 + 8 * (a9 + a3)) + a4;
  STACK[0x390] = *(v15 + 8 * (a9 ^ a5)) + a6;
  STACK[0x3E8] = *(v15 + 8 * (a9 ^ a7)) + a8;
  STACK[0x3F0] = *(v15 + 8 * (a9 + v17)) + v19;
  STACK[0x340] = *(v15 + 8 * (a9 + v22)) + v14;
  v24 = *(v15 + 8 * (a9 ^ v21)) + v10;
  STACK[0x388] = *(v15 + 8 * (a9 ^ 0xA482)) - 777907922;
  STACK[0x258] = *(v15 + 8 * (a9 ^ 0xA7C8)) - 477118410;
  STACK[0x3C0] = *(v15 + 8 * (a9 ^ 0xA6FE)) - 691187598;
  STACK[0x338] = *(v15 + 8 * (a9 ^ 0xADBB)) - 175332515;
  STACK[0x3C8] = *(v15 + 8 * (a9 - 40276)) - 183391798;
  STACK[0x318] = v24;
  return v23();
}

uint64_t sub_1006BD430@<X0>(_DWORD *a1@<X8>)
{
  v10 = (((*a1 ^ v7) + v6) ^ ((*a1 ^ v5) + v4) ^ ((*a1 ^ v3) + v1)) + LODWORD(STACK[0x7A0]);
  STACK[0x2080] = *(v9 + 8 * v2);
  v11 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] += 512;
  v12 = *(v9 + 8 * (v8 ^ 0x4457));
  v13 = *(&off_1010A0B50 + (v8 ^ 0x84FF)) - 1959152047;
  STACK[0x7E0] = (v11 + 319);
  v12(v13);
  v14 = (*(v9 + 8 * (v8 + 15403)))(*(&off_1010A0B50 + (v8 ^ 0x89F8)) - 967467138, v11 + 447, 64);
  *(v11 + 383) = 0xA40255B4D70B8D8BLL;
  *(v11 + 391) = 0x3B2132589B0300F7;
  *(v11 + 399) = 0x856D5164964C41EBLL;
  *(v11 + 407) = 0xDF925D532AB2225ALL;
  *(v11 + 415) = 0x2E751595E9B9D154;
  *(v11 + 423) = 0xD6800F4978BB24E8;
  *(v11 + 431) = 0x6CD3CAF248A5FF39;
  *(v11 + 439) = 0x1BF8F933C7312F01;
  return (*(v9 + 8 * ((7855 * (v10 - 8 < (v8 ^ 0x8E6Eu))) ^ v8)))(v14);
}

uint64_t sub_1006BD778@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x524]) = v1;
  LODWORD(STACK[0x520]) = v2;
  return (*(v3 + 8 * (((((a1 + 4) ^ (v2 < LODWORD(STACK[0x2E4]))) & 1) * (10 * (a1 ^ 0x6AA9) - 3776)) ^ a1)))();
}

uint64_t sub_1006BD930@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xED0]) = (a1 ^ 0x1E) + 5005;
  return v1(116);
}

uint64_t sub_1006BDA48()
{
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0xD1B61207) & 0xD1F6F60F | ((&STACK[0x10000] + 3800) ^ 0x22090980) & 0x2E0909F0) ^ 0x9E29347B);
  LODWORD(STACK[0x10EE0]) = (((*(v0 + 8) ^ 0x34715FE5) - 879845349) ^ ((*(v0 + 8) ^ 0xCB63A246) + 882662842) ^ (v1 - 382184740 + ((v2 + 382138757) ^ *(v0 + 8)))) - v3 + 355102670;
  LODWORD(STACK[0x10EDC]) = (v2 - 1401) ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x8A41)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((31 * (LOBYTE(STACK[0x10ED8]) == 5)) ^ v2)))(v5);
}

uint64_t sub_1006BDBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v17 = v8 ^ ((v8 ^ 0xD3C71970) + 1296402657) ^ ((v8 ^ 0x78B8DCF4) - 432386715) ^ ((v8 ^ 0xB1FC543C) + 796837293) ^ 0x10C7E339 ^ (((((v14 - 33542) | 0x4DA) + 2080291581) ^ v8) - 444830136);
  v18 = 0xA3D70A3D70A3D71 * (((v17 ^ 0xA5061E2E76F8D70) - 0xA5061E2E76F8D70) ^ ((v17 ^ 0x1E37EE0FE9059E4DLL) - 0x1E37EE0FE9059E4DLL) ^ ((v17 ^ 0x14678FED7FD09E6BLL) - 0x14678FED7FD09E6BLL)) + 0x6550D1FA74574EA1;
  v19 = v18 ^ ((v18 ^ 0x972A338AFE509C73) - 0x6386C97AF3A5F1D8) ^ ((v18 ^ 0x2A1FB5BA72A8E93ALL) + 0x214CB0B580A27B6FLL) ^ ((v18 ^ 0xB72641B7F2B6B414) - 0x438ABB47FF43D9BFLL) ^ ((v18 ^ 0xFEBF3D7773BBACF6) - 0xA13C7877E4EC15DLL);
  v20 = ((v19 ^ 0xC2D3EEEE70824107) + 0x29C16AA08B24A336) ^ ((v19 ^ 0xE5EDBC7CD227B163) + 0xEFF383229815352);
  v21 = __CFADD__((v20 ^ ((v19 ^ 0xD392A862AF509DCFLL) + 0x38802C2C54F67FFELL)) * v12, 0xE6659F59F1D6F9F6) + (((v20 ^ ((v19 ^ 0xD392A862AF509DCFLL) + 0x38802C2C54F67FFELL)) * v12) >> 64) + ((v16 + __CFADD__(v19 ^ 0xC2D3EEEE70824107, 0x29C16AA08B24A336)) ^ (v16 + __CFADD__(v19 ^ 0xE5EDBC7CD227B163, 0xEFF383229815352)) ^ (v16 + __CFADD__(v19 ^ 0xD392A862AF509DCFLL, 0x38802C2C54F67FFELL))) * v12 + 21;
  return (*(STACK[0xF18] + 8 * v14))(a1, a2, ((*(v15 + v21) ^ v9) + a7) ^ ((*(v15 + v21) ^ v10) + a8) ^ ((*(v15 + v21) ^ v11) + v13));
}

uint64_t sub_1006BDF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  HIDWORD(a26) = v34;
  *v33 = 23958;
  v35 = (*(v32 + 8 * (v31 ^ 0x6A365F51)))();
  *v30 = v35;
  return (*(v32 + 8 * (v31 - 1781932970)))(v35, 1595737088, 2543854747, 1403938801, 1508818066, 3461257227, 1812433253, 2648768506, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1006BE450()
{
  v3 = v1;
  v4 = v0;
  v5 = (LODWORD(STACK[0xD70]) + 1210876783) & 0xB7D3ABFB;
  STACK[0xED0] = v5;
  v6 = STACK[0x21C0];
  v7 = *(STACK[0xE80] + 9);
  v8 = STACK[0xE80];
  v9 = v7 & 0xE3 ^ 0x8B;
  v10 = (v7 ^ (2 * ((v7 ^ 0x6C) & (2 * ((v7 ^ 0x6C) & (2 * ((v7 ^ 0x6C) & (2 * ((((v7 ^ 0x6C) & (2 * (((2 * v7) & 0x5A ^ 0xE) & v7 ^ v9)) ^ v9) << (v5 - 58)) & (v7 ^ 0x6C) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xC41DA94E;
  *STACK[0x21C0] = v10;
  v11 = (v8[6] | ((v8[6] < 0x13u) << 8)) + 786564896;
  v12 = v10 ^ v11 ^ ((v11 ^ 0x64DBDF08) - 1140790226) ^ ((v11 ^ 0x18563178) - 1064500642) ^ ((v11 ^ 0xB4565F45) + 1821207649) ^ ((v11 ^ 0xEFFF7DEF) + 925126347);
  v13 = (((v12 ^ 0x47D95775) - 1627233199) ^ ((v12 ^ 0xDDFFD9D8) + 86305534) ^ ((v12 ^ 0x791FEBDA) - 1580934912)) - 1837753789;
  *v6 = v13 ^ ((v13 ^ 0x2A819949) - 1511718059) ^ ((v13 ^ 0x3A1701F6) - 1250714644) ^ ((v13 ^ 0x9FBE0282) + 282761376) ^ ((v13 ^ 0xFFB3FFDF) + 1893164483) ^ 0xB486CC4F;
  v14 = (v8[10] | ((v8[10] < 0x13u) << 8)) + 552223506;
  v15 = v14 ^ ((v14 ^ 0x80C0B4C2) + 1607988400) ^ ((v14 ^ 0x816E0F31) + 1585008477) ^ ((v14 ^ 0x46B8FA9E) - 1716536588) ^ ((v14 ^ 0x67FEFEFF) - 1192640877) ^ 0x23EB8675;
  v6[1] = v15;
  v16 = (v8[7] | ((v8[7] < 0x13u) << 8)) - 29801370;
  v17 = (2 * (v16 ^ 0x456361D5)) & 0xA00434 ^ 0x209415 ^ ((2 * (v16 ^ 0x456361D5)) ^ 0x9940206A) & (v16 ^ 0x456361D5);
  v18 = (4 * v17) & 0x4CE09434 ^ 0x4C608421 ^ ((4 * v17) ^ 0x338250D4) & v17;
  v19 = (16 * v18) & 0x4CE09410 ^ 0xE09425 ^ ((16 * v18) ^ 0xCE094350) & v18;
  v20 = ((2 * (v16 & 0x141E0)) | 0x10000000) & (v16 ^ 0x456361D5) ^ v16 & 0x141E0;
  v21 = ((4 * v20) & 0x40000400 | v20) ^ ((4 * v20) ^ 0x20021000) & v17;
  v22 = (16 * v21) & 0x4CE09430 ^ v21 ^ ((16 * v21) ^ 0x80094000) & v18;
  v23 = v22 ^ (v22 << 8) & 0x4CE09400 ^ ((v22 << 8) ^ 0x940000) & v19 ^ 0x44600035;
  v24 = v16 ^ v15 ^ (2 * ((v23 << 16) & 0x4CE00000 ^ v23 ^ ((v23 << 16) ^ 0x14350000) & ((v19 << 8) & 0x4CE00000 ^ 0xC600000 ^ ((v19 << 8) ^ 0x60940000) & v19)));
  v25 = (((v24 ^ 0x820A2844) - 436794830) ^ ((v24 ^ 0x178019BE) + 1887255500) ^ ((v24 ^ 0xE8BD597) + 1769404387)) - 630442895;
  v6[1] = v25 ^ ((v25 ^ 0x5030F85C) - 698029962) ^ ((v25 ^ 0xA01106CD) + 642062053) ^ ((v25 ^ 0xB775EEB8) + 824311442) ^ ((v25 ^ 0x3EFFFFFF) - 1196691497) ^ 0x7AA8D631;
  v26 = (v8[11] | ((v8[11] < 0x13u) << 8)) - 1236195295;
  v27 = (2 * (v26 ^ 0x5FEDCE36)) & 0x125800C4 ^ 0x12441044 ^ ((2 * (v26 ^ 0x5FEDCE36)) ^ 0x28B82188) & (v26 ^ 0x5FEDCE36);
  v28 = (4 * v27) & 0x165C10C0 ^ 0x60C10C4 ^ ((4 * v27) ^ 0x59704310) & v27;
  v29 = (16 * v28) & 0x165C10C0 ^ 0x121C1084 ^ ((16 * v28) ^ 0x65C10C40) & v28;
  v30 = (2 * (v26 & 0x10AF2)) & 0x10C4 ^ v26 & 0x10AF2 ^ ((2 * (v26 & 0x10AF2)) | 0x200000) & (v26 ^ 0x5FEDCE36);
  v31 = (4 * v30) & 0xC10C0 ^ v30 ^ ((4 * v30) | 0x400000) & v27;
  v32 = v31 ^ (16 * v31) & 0x165C10C0 ^ ((16 * v31) ^ 0x5000000) & v28 ^ 0x120C10C4;
  v33 = (v32 << 8) & 0x165C1000 ^ v32 ^ ((v32 << 8) ^ 0x5C10C400) & v29;
  v34 = v26 ^ (2 * ((v33 << 16) & 0x165C0000 ^ v33 ^ ((v33 << 16) ^ 0x10C40000) & ((v29 << 8) & 0x165C0000 ^ 0x24C0000 ^ ((v29 << 8) ^ 0x5C100000) & v29))) ^ 0xB14E45FE;
  v6[2] = v34;
  v35 = (v8[8] | ((v8[8] < 0x13u) << 8)) - 851873556;
  v36 = (2 * (v35 ^ 0x99064AEA)) & 0x200403B0 ^ 0x20848090 ^ ((2 * (v35 ^ 0x99064AEA)) ^ 0x440B0360) & (v35 ^ 0x99064AEA);
  v37 = (4 * v36) & 0xA38583B0 ^ 0x21818130 ^ ((4 * v36) ^ 0xE160EC0) & v36;
  v38 = (16 * v37) & 0xA3858380 ^ 0x838580B0 ^ ((16 * v37) ^ 0x38583B00) & v37;
  v39 = (2 * (v35 & 0x415A)) & 0xFFF0 ^ v35 & 0x800415A ^ ((2 * (v35 & 0x800415A)) | 0x20000) & (v35 ^ 0x99064AEA);
  v40 = (4 * v39) & 0x200103B0 ^ v39 ^ ((4 * v39) | 0x40000) & v36;
  v41 = (16 * v40) & 0xA38583B0 ^ v40 ^ ((16 * v40) ^ 0x500000) & v37;
  v42 = v41 ^ (v41 << 8) & 0xA3858300 ^ ((v41 << 8) ^ 0x5000000) & v38 ^ 0xA28083B0;
  v43 = v34 ^ v35 ^ (2 * ((v42 << 16) & 0x23850000 ^ v42 ^ ((v42 << 16) ^ 0x3B00000) & ((v38 << 8) & 0x23850000 ^ 0x22040000 ^ ((v38 << 8) ^ 0x5830000) & v38)));
  v44 = (((v43 ^ 0xED5FE75E) + 1747506844) ^ ((v43 ^ 0x3C8B3EBB) - 1174663297) ^ ((v43 ^ 0x77B3AD5B) - 221995873)) - 1911327576;
  v45 = (v44 ^ 0x2E994045) & (2 * (v44 & 0xAC995090)) ^ v44 & 0xAC995090;
  v46 = ((2 * (v44 ^ 0x36ABC065)) ^ 0x346521EA) & (v44 ^ 0x36ABC065) ^ (2 * (v44 ^ 0x36ABC065)) & 0x9A3290F4;
  v47 = (v46 ^ 0x102000C0) & (4 * v45) ^ v45;
  v48 = ((4 * (v46 ^ 0x8A129015)) ^ 0x68CA43D4) & (v46 ^ 0x8A129015) ^ (4 * (v46 ^ 0x8A129015)) & 0x9A3290F4;
  v49 = (v48 ^ 0x80200C0) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x92309021)) ^ 0xA3290F50) & (v48 ^ 0x92309021) ^ (16 * (v48 ^ 0x92309021)) & 0x9A3290D0;
  v51 = v49 ^ 0x9A3290F5 ^ (v50 ^ 0x82200000) & (v49 << 8);
  v6[2] = v44 ^ (2 * ((v51 << 16) & 0x1A320000 ^ v51 ^ ((v51 << 16) ^ 0x10F50000) & (((v50 ^ 0x181290A5) << 8) & 0x1A320000 ^ 0x8220000 ^ (((v50 ^ 0x181290A5) << 8) ^ 0x32900000) & (v50 ^ 0x181290A5)))) ^ 0x6473CBFE;
  v52 = (v8[12] | ((v8[12] < 0x13u) << 8)) - 81986850;
  v53 = (2 * (v52 ^ 0x5CFD7B1B)) & 0x80204D2 ^ 0x80A1451 ^ ((2 * (v52 ^ 0x5CFD7B1B)) ^ 0xA02181A6) & (v52 ^ 0x5CFD7B1B);
  v54 = (4 * v53) & 0x181AF4D0 ^ 0x18102493 ^ ((4 * v53) ^ 0x206BD34C) & v53;
  v55 = (16 * v54) & 0x581AF4D0 ^ 0x5810B0C3 ^ ((16 * v54) ^ 0x81AF4D30) & v54;
  v56 = (2 * (v52 & 0x40FC8)) & 0x81490 ^ v52 & 0x40FC8 ^ ((2 * (v52 & 0x40FC8)) | 0x10000) & (v52 ^ 0x5CFD7B1B);
  v57 = (4 * v56) & 0x107440 ^ v56 ^ ((4 * v56) | 0x20000) & v53;
  v58 = (16 * v57) & 0x581AF4D0 ^ v57 ^ ((16 * v57) ^ 0x280000) & v54;
  v59 = v58 ^ (v58 << 8) & 0x581AF400 ^ ((v58 << 8) ^ 0xA800000) & v55 ^ 0x501074D3;
  v60 = v52 ^ (2 * ((v59 << 16) & 0x581A0000 ^ v59 ^ ((v59 << 16) ^ 0x74D30000) & ((v55 << 8) & 0x581A0000 ^ 0x400A0000 ^ ((v55 << 8) ^ 0x1AF40000) & v55))) ^ 0x34977F34;
  v6[3] = v60;
  v61 = (v8[9] | ((v8[9] < 0x13u) << 8)) + 514194738;
  v62 = ((v61 ^ 0xB8319E70) + 1361486692) ^ v61 ^ ((v61 ^ 0x3B73F53C) - 765147088) ^ ((v61 ^ 0x6A345EDF) - 2094832691) ^ ((v61 ^ 0xFF9EF77F) + 378129005) ^ v60;
  v63 = (((v62 ^ 0x5B288679) - 1304446101) ^ ((v62 ^ 0xDDEBE6CD) + 888986591) ^ ((v62 ^ 0xB04ABB02) + 1499301394)) - 519396936;
  v64 = (v63 ^ 0x99134357) & (2 * (v63 & 0x9D138256)) ^ v63 & 0x9D138256;
  v65 = ((2 * (v63 ^ 0xB1364757)) ^ 0x584B8A02) & (v63 ^ 0xB1364757) ^ (2 * (v63 ^ 0xB1364757)) & 0x2C25C500;
  v66 = (v65 ^ 0x8000000) & (4 * v64) ^ v64;
  v67 = ((4 * (v65 ^ 0x24244501)) ^ 0xB0971404) & (v65 ^ 0x24244501) ^ (4 * (v65 ^ 0x24244501)) & 0x2C25C500;
  v68 = (v67 ^ 0x20050400) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0xC20C101)) ^ 0xC25C5010) & (v67 ^ 0xC20C101) ^ (16 * (v67 ^ 0xC20C101)) & 0x2C25C500;
  v70 = v68 ^ 0x2C25C501 ^ (v69 ^ 0x44000) & (v68 << 8);
  v6[3] = v63 ^ (2 * ((v70 << 16) & 0x2C250000 ^ v70 ^ ((v70 << 16) ^ 0x45010000) & (((v69 ^ 0x2C218501) << 8) & 0x2C250000 ^ 0x8200000 ^ (((v69 ^ 0x2C218501) << 8) ^ 0x25C50000) & (v69 ^ 0x2C218501)))) ^ 0xED3B110E;
  v71 = (v8[13] | ((v8[13] < 0x13u) << 8)) - 1062529155;
  v72 = v71 ^ ((v71 ^ 0xF8EF4552) - 944393238) ^ ((v71 ^ 0xE019F79B) - 549256927) ^ ((v71 ^ 0xA5AC4430) - 1695108468) ^ ((v71 ^ 0x7DFFFFBD) + 1118112007) ^ 0x51796BB;
  v6[4] = v72;
  v73 = (v8[10] | ((v8[10] < 0x13u) << 8)) + 1111835554;
  v74 = ((v73 ^ 0x214D21F7) - 465905835) ^ v73 ^ ((v73 ^ 0x4668B6C3) - 2095103903) ^ ((v73 ^ 0xE2727197) + 654673717) ^ ((v73 ^ 0xBFDFEFFF) + 2057836893) ^ v72;
  v75 = (((v74 ^ 0xFE5D508C) + 992650800) ^ ((v74 ^ 0xE75A1E97) + 573433909) ^ ((v74 ^ 0xE63DD8B8) + 592064028)) + 1322964699;
  v76 = (v75 ^ 0x96C2939C) & (2 * (v75 & 0xD494D3D8)) ^ v75 & 0xD494D3D8;
  v77 = ((2 * (v75 ^ 0xB7EA121C)) ^ 0xC6FD8388) & (v75 ^ 0xB7EA121C) ^ (2 * (v75 ^ 0xB7EA121C)) & 0x637EC1C4;
  v78 = (v77 ^ 0x42748180) & (4 * v76) ^ v76;
  v79 = ((4 * (v77 ^ 0x21024044)) ^ 0x8DFB0710) & (v77 ^ 0x21024044) ^ (4 * (v77 ^ 0x21024044)) & 0x637EC1C0;
  v80 = (v79 ^ 0x17A0100) & (16 * v78) ^ v78;
  v81 = ((16 * (v79 ^ 0x6204C0C4)) ^ 0x37EC1C40) & (v79 ^ 0x6204C0C4) ^ (16 * (v79 ^ 0x6204C0C4)) & 0x637EC1C0;
  v82 = v80 ^ 0x637EC1C4 ^ (v81 ^ 0x236C0000) & (v80 << 8);
  v6[4] = v75 ^ (2 * ((v82 << 16) & 0x637E0000 ^ v82 ^ ((v82 << 16) ^ 0x41C40000) & (((v81 ^ 0x4012C184) << 8) & 0x637E0000 ^ 0x13E0000 ^ (((v81 ^ 0x4012C184) << 8) ^ 0x7EC10000) & (v81 ^ 0x4012C184)))) ^ 0x5553CFAF;
  v83 = (v8[14] | ((v8[14] < 0x13u) << 8)) + 1096596994;
  v84 = v83 ^ ((v83 ^ 0x166C73F1) - 1463377863) ^ ((v83 ^ 0x1BAD2648) - 1526205054) ^ ((v83 ^ 0x336A8670) - 1916774982) ^ ((v83 ^ 0x7FFEFFFF) - 1051448265) ^ 0xED074D3B;
  v6[5] = v84;
  v85 = (v8[11] | ((v8[11] < 0x13u) << 8)) + 789430136;
  v86 = ((v85 ^ 0x57C88866) - 1889013076) ^ v85 ^ ((v85 ^ 0x87FDDB8F) + 1599250755) ^ ((v85 ^ 0x18BE2924) - 1072606230) ^ ((v85 ^ 0xEFDBFFFF) + 930383155) ^ v84;
  v87 = (((v86 ^ 0xE2E8EF8C) + 977769794) ^ ((v86 ^ 0xB13DBE94) + 1771226202) ^ ((v86 ^ 0xD8D7B527) + 7917547)) + 2129186347;
  v88 = (v87 ^ 0xA2869915) & (2 * (v87 & 0x8B269D96)) ^ v87 & 0x8B269D96;
  v89 = ((2 * (v87 ^ 0xA6CBB331)) ^ 0x5BDA5D4E) & (v87 ^ 0xA6CBB331) ^ (2 * (v87 ^ 0xA6CBB331)) & 0x2DED2EA6;
  v90 = (v89 ^ 0x9880C00) & (4 * v88) ^ v88;
  v91 = ((4 * (v89 ^ 0x242522A1)) ^ 0xB7B4BA9C) & (v89 ^ 0x242522A1) ^ (4 * (v89 ^ 0x242522A1)) & 0x2DED2EA4;
  v92 = (v91 ^ 0x25A42A80) & (16 * v90) ^ v90;
  v93 = ((16 * (v91 ^ 0x8490423)) ^ 0xDED2EA70) & (v91 ^ 0x8490423) ^ (16 * (v91 ^ 0x8490423)) & 0x2DED2EA0;
  v94 = v92 ^ 0x2DED2EA7 ^ (v93 ^ 0xCC02A00) & (v92 << 8);
  v6[5] = v87 ^ (2 * ((v94 << 16) & 0x2DED0000 ^ v94 ^ ((v94 << 16) ^ 0x2EA70000) & (((v93 ^ 0x212D0487) << 8) & 0x2DED0000 ^ 0xC10000 ^ (((v93 ^ 0x212D0487) << 8) ^ 0x6D2E0000) & (v93 ^ 0x212D0487)))) ^ 0x25E4A1D5;
  v95 = (v8[15] | ((v8[15] < 0x13u) << 8)) - 1466572519;
  v96 = v95 ^ ((v95 ^ 0x39F329A6) + 1853890020) ^ ((v95 ^ 0x75F6661F) + 579162715) ^ ((v95 ^ 0x9A767BB4) - 855289870) ^ ((v95 ^ 0x7EFFFFB7) + 697093107) ^ 0xAB0DE8CC;
  v6[6] = v96;
  v97 = (v8[12] | ((v8[12] < 0x13u) << 8)) + 1824666174;
  v98 = ((v97 ^ 0xC809C64C) + 1391644236) ^ v97 ^ ((v97 ^ 0x2922001A) - 1277622242) ^ ((v97 ^ 0x7BC1CE41) - 516241849) ^ ((v97 ^ 0xFFEEFFEF) + 1695938537) ^ v96;
  v99 = (((v98 ^ 0xADED9728) + 924229424) ^ ((v98 ^ 0x43493DE8) - 642632208) ^ ((v98 ^ 0x88217E4E) + 316307018)) - 904264716;
  v6[6] = v99 ^ ((v99 ^ 0x73190A8B) - 465755969) ^ ((v99 ^ 0xE6A92681) + 1905069237) ^ ((v99 ^ 0x382063E) - 1801049076) ^ ((v99 ^ 0xFEE9FFFE) + 1775097292) ^ 0x6B5AF6BC;
  v100 = (*v8 | ((*v8 < 0x13u) << 8)) + 104999104;
  v101 = (2 * (v100 ^ 0x9547839F)) & 0x240B53AC ^ 0x248010A5 ^ ((2 * (v100 ^ 0x9547839F)) ^ 0x9105A35A) & (v100 ^ 0x9547839F);
  v102 = (4 * v101) & 0x6C8FF3AC ^ 0x4C803109 ^ ((4 * v101) ^ 0xB23FCEB4) & v101;
  v103 = (16 * v102) & 0x6C8FF380 ^ 0x2400C12D ^ ((16 * v102) ^ 0xC8FF3AD0) & v102;
  v104 = (2 * (v100 & 0x400032)) & (v100 ^ 0x9547839F) ^ v100 & 0x400032 ^ ((2 * (v100 & 0x400032)) & 0xFF800037 | 0xDA108);
  v105 = (4 * v104) & 0x681A8 ^ v104 ^ ((4 * v104) ^ 0x370420) & v101;
  v106 = (16 * v105) & 0x6C8FF3A0 ^ v105 ^ ((16 * v105) ^ 0xAC1280) & v102;
  v107 = v106 ^ (v106 << 8) & 0x6C8FF300 ^ ((v106 << 8) ^ 0x86D3A800) & v103 ^ 0x688A8005;
  v108 = v100 ^ (2 * ((v107 << 16) & 0x6C8F0000 ^ v107 ^ ((v107 << 16) ^ 0x73AD0000) & ((v103 << 8) & 0x6C8F0000 ^ 0x600C0000 ^ ((v103 << 8) ^ 0xFF30000) & v103))) ^ 0xCA673AB0;
  v6[7] = v108;
  v109 = (v8[13] | ((v8[13] < 0x13u) << 8)) + 1461484186;
  v110 = ((v109 ^ 0xC1CFE506) + 1903123118) ^ v109 ^ ((v109 ^ 0x973EFC90) + 664683324) ^ ((v109 ^ 0x2651B634) - 1762588256) ^ ((v109 ^ 0x3FFFEFF6) - 1889578914) ^ v108;
  v111 = (((v110 ^ 0x96F6DC13) + 643195833) ^ ((v110 ^ 0xEAA01953) + 1509992185) ^ ((v110 ^ 0x18A328CC) - 1476159640)) - 1584274380;
  v112 = (v111 ^ 0xC795C754) & (2 * (v111 & 0xE7D5D458)) ^ v111 & 0xE7D5D458;
  v113 = ((2 * (v111 ^ 0x43B4E744)) ^ 0x48C26638) & (v111 ^ 0x43B4E744) ^ (2 * (v111 ^ 0x43B4E744)) & 0xA461331C;
  v114 = (v113 ^ 0x402200) & (4 * v112) ^ v112;
  v115 = ((4 * (v113 ^ 0xA4211104)) ^ 0x9184CC70) & (v113 ^ 0xA4211104) ^ (4 * (v113 ^ 0xA4211104)) & 0xA4613318;
  v116 = v115 & (16 * v114) ^ v114;
  v117 = ((16 * (v115 ^ 0x2461330C)) ^ 0x461331C0) & (v115 ^ 0x2461330C) ^ (16 * (v115 ^ 0x2461330C)) & 0xA4613300;
  v118 = v116 ^ 0xA461331C ^ (v117 ^ 0x4013100) & (v116 << 8);
  v6[7] = v111 ^ (2 * ((v118 << 16) & 0x24610000 ^ v118 ^ ((v118 << 16) ^ 0x331C0000) & (((v117 ^ 0xA060021C) << 8) & 0x24610000 ^ 0x4400000 ^ (((v117 ^ 0xA060021C) << 8) ^ 0x61330000) & (v117 ^ 0xA060021C)))) ^ 0xC4BD1FB8;
  v119 = (v8[1] | ((v8[1] < 0x13u) << 8)) + 290996861;
  v120 = (2 * (v119 ^ 0x36A2E07C)) & 0x48110A74 ^ 0x48110A14 ^ ((2 * (v119 ^ 0x36A2E07C)) ^ 0x202224E8) & (v119 ^ 0x36A2E07C);
  v121 = (4 * v120) & 0xD8113A70 ^ 0x98111224 ^ ((4 * v120) ^ 0x6044E9D0) & v120;
  v122 = (16 * v121) & 0xD8113A40 ^ 0x58001834 ^ ((16 * v121) ^ 0x8113A740) & v121;
  v123 = (v119 & 0x4208 | (16 * (((v119 & 0x4208) >> 3) & 1)) | 0x90003040) ^ ((2 * (v119 & 0x4208)) | 0x200000) & (v119 ^ 0x36A2E07C);
  v124 = (4 * v123) & 0x40011860 ^ v123 ^ ((4 * v123) ^ 0x4040C100) & v120;
  v125 = (16 * v124) & 0xD8113A70 ^ v124 ^ ((16 * v124) ^ 0x1030400) & v121;
  v126 = v125 ^ (v125 << 8) & 0xD8113A00 ^ ((v125 << 8) ^ 0x11304000) & v122 ^ 0x18100A34;
  v127 = v119 ^ (2 * ((v126 << 16) & 0x58110000 ^ v126 ^ ((v126 << 16) ^ 0x3A740000) & ((v122 << 8) & 0x58110000 ^ 0x48010000 ^ ((v122 << 8) ^ 0x113A0000) & v122))) ^ 0xF2B9A77A;
  v6[8] = v127;
  v128 = (v8[14] | ((v8[14] < 0x13u) << 8)) + 1636374460;
  v129 = ((v128 ^ 0x12134F5A) - 1272484396) ^ v128 ^ ((v128 ^ 0x48F519AE) - 289326296) ^ ((v128 ^ 0xFCD874BD) + 1525438005) ^ ((v128 ^ 0xFFF5FF3F) + 1505877431) ^ v127;
  v130 = (((v129 ^ 0x87AF9420) + 563852970) ^ ((v129 ^ 0xFFBB72E1) + 1502564457) ^ ((v129 ^ 0xBDD7322D) + 467865765)) + 5979761;
  v131 = (v130 ^ 0xF06D95D9) & (2 * (v130 & 0xF969D5DD)) ^ v130 & 0xF969D5DD;
  v132 = ((2 * (v130 ^ 0xD06C3DE9)) ^ 0x520BD068) & (v130 ^ 0xD06C3DE9) ^ (2 * (v130 ^ 0xD06C3DE9)) & 0x2905E834;
  v133 = (v132 ^ 0x1C020) & (4 * v131) ^ v131;
  v134 = ((4 * (v132 ^ 0x29042814)) ^ 0xA417A0D0) & (v132 ^ 0x29042814) ^ (4 * (v132 ^ 0x29042814)) & 0x2905E830;
  v135 = (v134 ^ 0x2005A010) & (16 * v133) ^ v133;
  v136 = ((16 * (v134 ^ 0x9004824)) ^ 0x905E8340) & (v134 ^ 0x9004824) ^ (16 * (v134 ^ 0x9004824)) & 0x2905E800;
  v137 = v135 ^ 0x2905E834 ^ (v136 ^ 0x48000) & (v135 << 8);
  v6[8] = v130 ^ (2 * ((v137 << 16) & 0x29050000 ^ v137 ^ ((v137 << 16) ^ 0x68340000) & (((v136 ^ 0x29016834) << 8) & 0x29050000 ^ 0x28050000 ^ (((v136 ^ 0x29016834) << 8) ^ 0x5E80000) & (v136 ^ 0x29016834)))) ^ 0x67620C2F;
  v138 = (v8[2] | ((v8[2] < 0x13u) << 8)) + 483402204;
  v139 = (2 * (v138 ^ 0xA376DBF8)) & 0x4049A5C4 ^ 0x4048A444 ^ ((2 * (v138 ^ 0xA376DBF8)) ^ 0x80864B88) & (v138 ^ 0xA376DBF8);
  v140 = (4 * v139) & 0x404BA5C0 ^ 0x404120C4 ^ ((4 * v139) ^ 0x12E9710) & v139;
  v141 = (16 * v140) & 0x404BA5C0 ^ 0x4041A184 ^ ((16 * v140) ^ 0x4BA5C40) & v140;
  v142 = ((2 * (v138 & 0x23C)) | 0x204000) & (v138 ^ 0xA376DBF8) ^ v138 & 0x23C ^ ((2 * (v138 & 0x23C)) & 0xDEC3 | 0x40092104);
  v143 = (4 * v142) & 0x404BA5C0 ^ v142 ^ ((4 * v142) ^ 0x640410) & v139;
  v144 = (16 * v143) & 0x404BA5C0 ^ v143 ^ ((16 * v143) ^ 0x5905040) & v140;
  v145 = v144 ^ (v144 << 8) & 0x404BA500 ^ ((v144 << 8) ^ 0x59054400) & v141 ^ 0x4013A480;
  v146 = v138 ^ (2 * ((v145 << 16) & 0x404B0000 ^ v145 ^ ((v145 << 16) ^ 0x25C40000) & ((v141 << 8) & 0x404B0000 ^ 0x4A0000 ^ ((v141 << 8) ^ 0x4BA50000) & v141))) ^ 0xC2F77B53;
  v6[9] = v146;
  v147 = (v8[15] | ((v8[15] < 0x13u) << 8)) - 507933440;
  v148 = ((v147 ^ 0xFBC21DBD) - 574508807) ^ v147 ^ ((v147 ^ 0x7F0114BB) + 1493350911) ^ ((v147 ^ 0xA2C0AD02) - 2067595192) ^ ((v147 ^ 0xFFFFF6BE) - 637772804) ^ v146;
  v149 = (((v148 ^ 0x21437427) + 121690467) ^ ((v148 ^ 0xD60CC607) - 267424957) ^ ((v148 ^ 0x8F6EAE7D) - 1452473543)) + 758948996;
  v6[9] = v149 ^ ((v149 ^ 0x936860B7) + 1094047138) ^ ((v149 ^ 0xCB2EC314) + 426997251) ^ ((v149 ^ 0xEA1B1687) + 944153490) ^ ((v149 ^ 0x9FFFFFCD) + 1302481628) ^ 0x8C7F040E;
  v150 = (v8[3] | ((v8[3] < 0x13u) << 8)) + 1005034219;
  v151 = v150 ^ ((v150 ^ 0x3F106E27) - 80222567) ^ ((v150 ^ 0x905B772E) + 1417478034) ^ ((v150 ^ 0xE14C9196) + 627775786) ^ ((v150 ^ 0x75DFFFDF) - 1309116575) ^ 0xAAE5F9E7;
  v6[10] = v151;
  v152 = (*v8 | ((*v8 < 0x13u) << 8)) + 1794322952;
  v153 = ((v152 ^ 0xDDBD3631) + 1098333709) ^ v152 ^ ((v152 ^ 0xBBB2D5F9) + 662232517) ^ ((v152 ^ 0xFAE4ABF5) + 1714332617) ^ ((v152 ^ 0xFFDEBFFF) + 1662302147) ^ v151;
  v154 = (((v153 ^ 0x6D522227) - 241685989) ^ ((v153 ^ 0xE2F925DC) + 2117283298) ^ ((v153 ^ 0x7DA37E9E) - 513182044)) + 1484494004;
  v6[10] = v154 ^ ((v154 ^ 0x2C5E0B41) - 1172238360) ^ ((v154 ^ 0xD5802A95) + 1140796980) ^ ((v154 ^ 0x7BE5245A) - 308666115) ^ ((v154 ^ 0xEBBBFED7) + 2110061170) ^ 0xF8BD75FE;
  v155 = (v8[4] | ((v8[4] < 0x13u) << 8)) - 1381882722;
  LODWORD(v5) = (2 * (v155 ^ 0x25AF4630)) & 0x1000C490 ^ 0x10404490 ^ ((2 * (v155 ^ 0x25AF4630)) ^ 0x88010120) & (v155 ^ 0x25AF4630);
  v156 = (4 * v5) & 0x77C1C490 ^ 0x20C0C490 ^ ((4 * v5) ^ 0xDF071240) & v5;
  v157 = (16 * v156) & 0x77C1C480 ^ 0x3C18490 ^ ((16 * v156) ^ 0x7C1C4900) & v156;
  v158 = (v155 ^ 0x25AF4630 | 0x400) & (2 * (v155 & 0x202A0)) | v155 & 0x202A0;
  v159 = ((4 * v158) | 0x1800000) & v5 ^ v158 ^ ((4 * v158) & 0x480 | 0x56810000);
  v160 = (16 * v159) & 0x77C1C480 ^ v159 ^ ((16 * v159) ^ 0x76100000) & v156;
  v161 = v160 ^ (v160 << 8) & 0x77C1C400 ^ ((v160 << 8) ^ 0x61000000) & v157 ^ 0x37A0C490;
  v162 = v155 ^ (2 * ((v161 << 16) & 0x77C10000 ^ v161 ^ ((v161 << 16) ^ 0x44900000) & ((v157 << 8) & 0x77C10000 ^ 0x36010000 ^ ((v157 << 8) ^ 0x41C40000) & v157))) ^ 0xDF5358DB;
  v6[11] = v162;
  v163 = (v8[1] | ((v8[1] < 0x13u) << 8)) - 467660482;
  v164 = (2 * (v163 ^ 0x6BB58EE6)) & 0x82827EE ^ 0x4828A022 ^ ((2 * (v163 ^ 0x6BB58EE6)) ^ 0x80110FDC) & (v163 ^ 0x6BB58EE6);
  v165 = ((4 * v164) ^ 0xA29FB8) & v164 ^ (4 * v164) & 0x4828A7E8;
  v166 = v165 ^ 0x2087A6;
  v167 = ((16 * (v165 ^ 0x48082046)) ^ 0x828A7EE0) & (v165 ^ 0x48082046) ^ (16 * (v165 ^ 0x48082046)) & 0x4828A7E0;
  v168 = ((2 * (v163 & 0x20000108)) & 0xFFFFFE0F | v163 & 0x20000108) ^ (2 * (v163 & 0x20000108)) & (v163 ^ 0x6BB58EE6);
  v169 = ((4 * v168) & 0x460 | v168) ^ (4 * v168) & v164;
  v170 = v166 & (16 * v169) ^ v169 ^ 0x4828A7EE ^ (v167 ^ 0x82600) & ((v166 & (16 * v169) ^ v169) << 8);
  v171 = v163 ^ (2 * ((v170 << 16) & 0x48280000 ^ v170 ^ ((v170 << 16) ^ 0x27EE0000) & (((v167 ^ 0x4820810E) << 8) & 0x48280000 ^ 0x40080000 ^ (((v167 ^ 0x4820810E) << 8) ^ 0x28A70000) & (v167 ^ 0x4820810E)))) ^ v162;
  v172 = (((v171 ^ 0xD734A5EB) - 1688781631) ^ ((v171 ^ 0xB596143E) - 101348074) ^ ((v171 ^ 0x3A80845A) + 1994595698)) + 1580992544;
  v6[11] = v172 ^ ((v172 ^ 0xD3C98E1A) + 955702261) ^ ((v172 ^ 0x50DD66C0) - 1142803665) ^ ((v172 ^ 0x502BBD36) - 1156257575) ^ ((v172 ^ 0xC7FFFFFD) + 750823956) ^ 0xFF7EF94A;
  v173 = (v8[5] | ((v8[5] < 0x13u) << 8)) + 1657109255;
  v174 = v173 ^ ((v173 ^ 0x61CB0A30) - 58219014) ^ ((v173 ^ 0xB02D05F3) + 761375291) ^ ((v173 ^ 0x5CEEA23A) - 1046344204) ^ ((v173 ^ 0xEFBBFDCF) + 1928811015) ^ 0x71C7767E;
  v6[12] = v174;
  v175 = (v8[2] | ((v8[2] < 0x13u) << 8)) + 6532874;
  v176 = ((v175 ^ 0x90EFD886) - 1749658690) ^ v175 ^ ((v175 ^ 0x99B9FBA6) - 1629458274) ^ ((v175 ^ 0x8E0F8A1B) - 1990852319) ^ ((v175 ^ 0x7FFFDDFF) + 2024167109) ^ v174;
  v177 = (((v176 ^ 0x78BD115A) + 2145688162) ^ ((v176 ^ 0xC939E8A0) - 832543844) ^ ((v176 ^ 0x5A56AB76) + 1561272398)) - 1879925731;
  v6[12] = v177 ^ ((v177 ^ 0x94717BCE) + 1968172817) ^ ((v177 ^ 0xE57FF9D6) + 71396617) ^ ((v177 ^ 0x933012C6) + 1913554457) ^ ((v177 ^ 0xFCFFFBFF) + 499216162) ^ 0xDB54D69;
  v178 = (v8[6] | ((v8[6] < 0x13u) << 8)) + 1669340368;
  v179 = v178 ^ ((v178 ^ 0x7D810110) - 518877052) ^ ((v178 ^ 0xFC7F78D0) + 1626138948) ^ ((v178 ^ 0x1F6DE853) - 2080474687) ^ ((v178 ^ 0xFDFFFFFF) + 1634496109) ^ 0xE9E44F8C;
  v6[13] = v179;
  v180 = (v8[3] | ((v8[3] < 0x13u) << 8)) - 1193570384;
  v181 = (2 * (v180 ^ 0xA9204E4E)) & 0x23C1A4D8 ^ 0x20402448 ^ ((2 * (v180 ^ 0xA9204E4E)) ^ 0x183C9B0) & (v180 ^ 0xA9204E4E);
  v182 = (4 * v181) & 0x67C1E4D8 ^ 0x60C06498 ^ ((4 * v181) ^ 0x1F079360) & v181;
  v183 = (16 * v182) & 0xE7C1E4C0 ^ 0x83C1A058 ^ ((16 * v182) ^ 0x7C1E4D80) & v182;
  v184 = ((2 * (v180 & 0xA96)) | 0x11830000) & (v180 ^ 0xA9204E4E) ^ v180 & 0xA96 ^ ((2 * (v180 & 0xA96)) & 0x408 | 0x42004010);
  v185 = (4 * v184) & 0xE7C1E4D8 ^ v184 ^ ((4 * v184) ^ 0x2D030040) & v181;
  v186 = (16 * v185) & 0xE7C1E4D0 ^ v185 ^ ((16 * v185) ^ 0x641C0500) & v182;
  v187 = v186 ^ (v186 << 8) & 0xE7C1E400 ^ ((v186 << 8) ^ 0x41C45000) & v183 ^ 0x2C406088;
  v188 = v180 ^ v179 ^ (2 * ((v187 << 16) & 0x67C10000 ^ v187 ^ ((v187 << 16) ^ 0x64D80000) & ((v183 << 8) & 0x67C10000 ^ 0x26010000 ^ ((v183 << 8) ^ 0x41E40000) & v183)));
  v189 = (((v188 ^ 0xBB108F29) + 202183665) ^ ((v188 ^ 0x405569F7) - 146213585) ^ ((v188 ^ 0x392FA418) - 1909311294)) + 108050316;
  v190 = (v189 ^ 0xD5C464CA) & (2 * (v189 & 0xE1D47508)) ^ v189 & 0xE1D47508;
  v191 = ((2 * (v189 ^ 0x17E486CA)) ^ 0xEC61E784) & (v189 ^ 0x17E486CA) ^ (2 * (v189 ^ 0x17E486CA)) & 0xF630F3C2;
  v192 = (v191 ^ 0x8420E000) & (4 * v190) ^ v190;
  v193 = ((4 * (v191 ^ 0x12101042)) ^ 0xD8C3CF08) & (v191 ^ 0x12101042) ^ (4 * (v191 ^ 0x12101042)) & 0xF630F3C0;
  v194 = (v193 ^ 0xD000C300) & (16 * v192) ^ v192;
  v195 = ((16 * (v193 ^ 0x263030C2)) ^ 0x630F3C20) & (v193 ^ 0x263030C2) ^ (16 * (v193 ^ 0x263030C2)) & 0xF630F3C0;
  v196 = v194 ^ 0xF630F3C2 ^ (v195 ^ 0x62003000) & (v194 << 8);
  v6[13] = v189 ^ (2 * ((v196 << 16) & 0x76300000 ^ v196 ^ ((v196 << 16) ^ 0x73C20000) & (((v195 ^ 0x9430C3C2) << 8) & 0x76300000 ^ 0x46000000 ^ (((v195 ^ 0x9430C3C2) << 8) ^ 0x30F30000) & (v195 ^ 0x9430C3C2)))) ^ 0x633DB36C;
  v197 = (v8[7] | ((v8[7] < 0x13u) << 8)) - 436798513;
  v198 = v197 ^ ((v197 ^ 0xE878ACDA) - 228156674) ^ ((v197 ^ 0x3A456F75) + 542857555) ^ ((v197 ^ 0xD02374C8) - 901954832) ^ ((v197 ^ 0xE7FF7EBF) - 35567463) ^ 0xCD090437;
  v6[14] = v198;
  v199 = (v8[4] | ((v8[4] < 0x13u) << 8)) - 1042181506;
  v200 = (2 * (v199 ^ 0xA6F14E87)) & 0xC220A94E ^ 0x212A2941 ^ ((2 * (v199 ^ 0xA6F14E87)) ^ 0x4610D29E) & (v199 ^ 0xA6F14E87);
  v201 = (4 * v200) & 0xE32AE94C ^ 0x63004843 ^ ((4 * v200) ^ 0x8CABA53C) & v200;
  v202 = (16 * v201) & 0xE32AE940 ^ 0xC100690F ^ ((16 * v201) ^ 0x32AE94F0) & v201;
  v203 = ((2 * (v199 & 0x4007C8)) | 0x3000000) & (v199 ^ 0xA6F14E87) ^ v199 & 0x4007C8 ^ ((2 * (v199 & 0x4007C8)) & 0x900 | 0xA12AA04A);
  v204 = (4 * v203) & 0xE32AE948 ^ v203 ^ ((4 * v203) ^ 0x8EA48128) & v200;
  v205 = (16 * v204) & 0xE32AE940 ^ v204 ^ ((16 * v204) ^ 0x189A1420) & v201;
  v206 = v205 ^ (v205 << 8) & 0xE32AE900 ^ ((v205 << 8) ^ 0x83A14200) & v202 ^ 0x8189080D;
  v207 = v199 ^ v198 ^ (2 * ((v206 << 16) & 0x632A0000 ^ v206 ^ ((v206 << 16) ^ 0x694F0000) & ((v202 << 8) & 0x632A0000 ^ 0x41020000 ^ ((v202 << 8) ^ 0x2AE90000) & v202)));
  v208 = (((v207 ^ 0x87CD7089) + 967375393) ^ ((v207 ^ 0x56207C8E) - 398068184) ^ ((v207 ^ 0xB89FB4BE) + 117063192)) - 430198225;
  v209 = ((2 * (v208 ^ 0xC7BEECEA)) ^ 0xCFE9953C) & (v208 ^ 0xC7BEECEA) ^ (2 * (v208 ^ 0xC7BEECEA)) & 0x67F4CA9E;
  v210 = v209 ^ 0x2364C012;
  v211 = ((4 * (v209 ^ 0x20144A82)) ^ 0x9FD32A78) & (v209 ^ 0x20144A82) ^ (4 * (v209 ^ 0x20144A82)) & 0x67F4CA98;
  v212 = v211 ^ 0x7D00A00;
  v213 = ((16 * (v211 ^ 0x6024C086)) ^ 0x7F4CA9E0) & (v211 ^ 0x6024C086) ^ (16 * (v211 ^ 0x6024C086)) & 0x67F4CA80;
  v214 = ((2 * (v208 & 0xA04A2674)) & 0x40944888 | v208 & 0xA04A2674) ^ (2 * (v208 & 0xA04A2674)) & (v208 ^ 0xC7BEECEA);
  v215 = v212 & (16 * (v210 & (4 * v214) ^ v214)) ^ v210 & (4 * v214) ^ v214;
  v6[14] = v208 ^ (2 * (((v215 ^ 0x67F4CA9E ^ (v213 ^ 0x67448800) & (v215 << 8)) << 16) & 0x67F40000 ^ v215 ^ 0x67F4CA9E ^ (v213 ^ 0x67448800) & (v215 << 8) ^ (((v215 ^ 0x67F4CA9E ^ (v213 ^ 0x67448800) & (v215 << 8)) << 16) ^ 0x4A9E0000) & (((v213 ^ 0xB0421E) << 8) & 0x67F40000 ^ 0x3340000 ^ (((v213 ^ 0xB0421E) << 8) ^ 0x74CA0000) & (v213 ^ 0xB0421E)))) ^ 0xC2637EA7;
  v216 = v8[8];
  v217 = v216 < 0x13;
  v216 += 742727850;
  v218 = v216 + (v217 << 8);
  LODWORD(v5) = (2 * (v218 ^ 0x526627EE)) & 0x8006030E ^ 0x80909102 ^ ((2 * (v218 ^ 0x526627EE)) ^ 0x223061C) & (v218 ^ 0x526627EE);
  v219 = (4 * v5) & 0x81B7B308 ^ 0x81213306 ^ ((4 * v5) ^ 0x6DECC38) & v5;
  v220 = (16 * v219) & 0x81B7B300 ^ 0x8084830E ^ ((16 * v219) ^ 0x1B7B30E0) & v219;
  v221 = (((((v216 & 0xE0) >> 7) & 1) << 8) | 0x1842208) ^ (v216 & 0xE0 | 0x80F09106) ^ (((((v216 & 0xE0) >> 5) & 7) << 6) | 0x20000) & (v218 ^ 0x526627EE);
  v222 = (4 * v221) & 0x1928308 ^ v221 ^ ((4 * v221) ^ 0x6DECC38) & v5;
  v223 = (16 * v222) & 0x81B7B300 ^ v222 ^ ((16 * v222) ^ 0x12133060) & v219;
  v224 = v223 ^ (v223 << 8) & 0x81B7B300 ^ ((v223 << 8) ^ 0x32030600) & v220 ^ 0x86B208;
  v225 = v218 ^ (2 * ((v224 << 16) & 0x1B70000 ^ v224 ^ ((v224 << 16) ^ 0x330E0000) & ((v220 << 8) & 0x1B70000 ^ ((v220 << 8) ^ 0x37B30000) & v220 ^ 0x40000))) ^ 0xE9208413;
  v6[15] = v225;
  v226 = (v8[5] | ((v8[5] < 0x13u) << 8)) + 570438692;
  v227 = (2 * (v226 ^ 0xEE3ECFF4)) & 0x801C1D6 ^ 0x8804852 ^ ((2 * (v226 ^ 0xEE3ECFF4)) ^ 0x40693AC) & (v226 ^ 0xEE3ECFF4);
  v228 = ((4 * v227) ^ 0x2E0F2758) & v227 ^ (4 * v227) & 0xB83C9D0;
  v229 = v228 ^ 0xA030156;
  v230 = ((16 * (v228 ^ 0x180C886)) ^ 0xB83C9D60) & (v228 ^ 0x180C886) ^ (16 * (v228 ^ 0x180C886)) & 0xB83C9C0;
  v231 = ((2 * (v226 & 0x622)) | v226 & 0x622) ^ ((2 * (v226 & 0x622)) | 0x40000000) & (v226 ^ 0xEE3ECFF4);
  v232 = (4 * v231) & 0xFF0 ^ v231 ^ ((4 * v231) | 0x80000000) & v227;
  v233 = v229 & (16 * v232) ^ v232 ^ 0x2B83C9D6 ^ (v230 ^ 0x8008900) & ((v229 & (16 * v232) ^ v232) << 8);
  v234 = v226 ^ (2 * ((v233 << 16) & 0xB830000 ^ v233 ^ ((v233 << 16) ^ 0x49D60000) & (((v230 ^ 0x3834096) << 8) & 0xB830000 ^ 0x8020000 ^ (((v230 ^ 0x3834096) << 8) ^ 0x3C90000) & (v230 ^ 0x3834096)))) ^ v225;
  v235 = (((v234 ^ 0xAD649060) - 1289356782) ^ ((v234 ^ 0x6140B981) + 2130826225) ^ ((v234 ^ 0x1608CA80) + 139043058)) + 332569195;
  v6[15] = v235 ^ ((v235 ^ 0x6627DACF) - 480559623) ^ ((v235 ^ 0x2460C3AB) - 1591991139) ^ ((v235 ^ 0x473BFE51) - 1035527833) ^ ((v235 ^ 0x7FFFFFFD) - 92071733) ^ 0x41116E27;
  v236 = (v8[9] | ((v8[9] < 0x13u) << 8)) + 1830803007;
  v237 = (2 * (v236 ^ 0xDF332425)) & 0x44946FA ^ 0x4494209 ^ ((2 * (v236 ^ 0xDF332425)) ^ 0x92048DF6) & (v236 ^ 0xDF332425);
  v238 = (4 * v237) & 0x4DCB46F8 ^ 0x48C24413 ^ ((4 * v237) ^ 0x372D1BEC) & v237;
  v239 = (16 * v238) & 0x4DCB46F0 ^ 0x14B004B ^ ((16 * v238) ^ 0xDCB46FB0) & v238;
  v240 = (2 * (v236 & 0x2DE)) & 0x4B8 ^ v236 & 0x2DE ^ ((2 * (v236 & 0x2DE)) | 0x208000) & (v236 ^ 0xDF332425);
  v241 = (4 * v240) & 0x8206F8 ^ v240 ^ ((4 * v240) | 0x610000) & v237;
  v242 = (16 * v241) & 0x4DCB46F0 ^ v241 ^ ((16 * v241) ^ 0x5940000) & v238;
  v243 = v242 ^ (v242 << 8) & 0x4DCB4600 ^ ((v242 << 8) ^ 0xD9400000) & v239 ^ 0x15206FB;
  v244 = v236 ^ (2 * ((v243 << 16) & 0x4DCB0000 ^ v243 ^ ((v243 << 16) ^ 0x46FB0000) & ((v239 << 8) & 0x4DCB0000 ^ 0x4890000 ^ ((v239 << 8) ^ 0x4B460000) & v239))) ^ 0x46D96E99;
  v6[16] = v244;
  v245 = (v8[6] | ((v8[6] < 0x13u) << 8)) - 2061035858;
  v246 = (2 * (v245 ^ 0xD1FA2DBA)) & 0x1280E22 ^ 0x51240222 ^ ((2 * (v245 ^ 0xD1FA2DBA)) ^ 0x4D81C44) & (v245 ^ 0xD1FA2DBA);
  v247 = (4 * v246) & 0x536C0E20 ^ 0x124C0622 ^ ((4 * v246) ^ 0x4DB03888) & v246;
  v248 = (16 * v247) & 0x536C0E20 ^ 0x412C0C02 ^ ((16 * v247) ^ 0x36C0E220) & v247;
  v249 = (2 * (v245 & 0x80020398)) & 0xEEEEEEEE ^ v245 & 0x80020398 ^ ((2 * (v245 & 0x80020398)) | 0x80000) & (v245 ^ 0xD1FA2DBA);
  v250 = (4 * v249) & 0x280E20 ^ v249 ^ ((4 * v249) ^ 0x300000) & v246;
  v251 = (16 * v250) & 0x536C0E20 ^ v250 ^ ((16 * v250) ^ 0x2C00000) & v247;
  v252 = v251 ^ (v251 << 8) & 0x536C0E00 ^ ((v251 << 8) ^ 0x6C000000) & v248 ^ 0x11000E22;
  v253 = v244 ^ v245 ^ (2 * ((v252 << 16) & 0x536C0000 ^ v252 ^ ((v252 << 16) ^ 0xE220000) & ((v248 << 8) & 0x536C0000 ^ 0x13600000 ^ ((v248 << 8) ^ 0x6C0E0000) & v248)));
  v254 = (((v253 ^ 0x609ABED) - 638030897) ^ ((v253 ^ 0x414DF917) - 1631831755) ^ ((v253 ^ 0xA16BEC97) + 2124033205)) - 1586407430;
  v255 = v254 & 0x826D346B ^ 0x979A7CCE ^ (v254 ^ 0x116D2063) & (2 * (v254 & 0x826D346B));
  LODWORD(v5) = ((2 * (v254 ^ 0x15F748A5)) ^ 0x2F34F99C) & (v254 ^ 0x15F748A5) ^ (2 * (v254 ^ 0x15F748A5)) & 0x979A7CCE;
  v256 = ((4 * v5) ^ 0x5001B088) & (v5 ^ 0x710788E);
  v257 = ((4 * v255) ^ 0x1229A180) & (v5 ^ 0x710788E);
  LODWORD(v5) = v5 & 0x4C4052B8;
  v258 = v256 ^ v5;
  v259 = v258 ^ 0x400508E;
  v260 = ((16 * v258) ^ 0xC455A38) & (v258 ^ 0x400508E);
  v258 &= 0x4C4052B8u;
  v261 = v260 ^ v258;
  v262 = v261 ^ 0x40050CE;
  v263 = ((v261 << 8) ^ 0x4C10DAB8) & (v261 ^ 0x40050CE);
  v261 &= 0x4C4052B8u;
  v264 = v258 ^ v5 ^ v255 ^ v257 ^ ((16 * (v5 ^ v255 ^ v257)) ^ 0x75E296D8) & v259;
  v265 = v264 ^ v261 ^ ((v264 << 8) ^ 0xD63C9CB8) & v262;
  v6[16] = v254 ^ (2 * (v265 ^ (v263 ^ v261) & 0x4C4052B8 ^ ((v265 << 16) ^ 0x600652B8) & (v263 ^ v261 ^ 0x139A0000) ^ ((v265 << 16) ^ 0x600652B8) & 0x179A5088)) ^ 0x6B784C46;
  v266 = v8[10];
  v267 = v266 < 0x13;
  v266 -= 1290631022;
  v268 = v266 + (v267 << 8);
  LODWORD(v5) = (2 * (v268 ^ 0x953102FD)) & 0x480616E2 ^ 0x48121221 ^ ((2 * (v268 ^ 0x953102FD)) ^ 0x202009C6) & (v268 ^ 0x953102FD);
  v269 = (4 * v5) & 0xD83636E0 ^ 0x98262463 ^ ((4 * v5) ^ 0x60D8DB8C) & v5;
  v270 = (16 * v269) & 0xD83636E0 ^ 0x581410C3 ^ ((16 * v269) ^ 0x83636E30) & v269;
  v271 = ((32 * (((v266 & 0x1E) >> 4) & 1)) | 0x40002242) ^ (v266 & 0x1E | 0x993014A1) ^ ((4 * (((v266 & 0x1E) >> 1) & 0xF)) | 0x2000000) & (v268 ^ 0x953102FD);
  v272 = (4 * v271) & 0x480012E0 ^ v271 & 0x9B20247F ^ ((4 * v271) ^ 0x60D8DB8C) & v5;
  v273 = (16 * v272) & 0xD83636E0 ^ v272 ^ ((16 * v272) ^ 0x83636E30) & v269;
  v274 = v273 ^ (v273 << 8) & 0xD8363600 ^ ((v273 << 8) ^ 0x1410C300) & v270 ^ 0x90322420;
  v275 = v268 ^ (2 * ((v274 << 16) & 0x58360000 ^ v274 ^ ((v274 << 16) ^ 0x36E30000) & ((v270 << 8) & 0x58360000 ^ 0x48000000 ^ ((v270 << 8) ^ 0x36360000) & v270))) ^ 0x94ABB92A;
  v6[17] = v275;
  v276 = (v8[7] | ((v8[7] < 0x13u) << 8)) - 1092272132;
  v277 = (2 * (v276 ^ 0x3E36F61D)) & 0xA10C56 ^ 0x12210451 ^ ((2 * (v276 ^ 0x3E36F61D)) ^ 0x80C218AE) & (v276 ^ 0x3E36F61D);
  v278 = (4 * v277) & 0x76E10C54 ^ 0x24610C03 ^ ((4 * v277) ^ 0xDB84315C) & v277;
  v279 = (16 * v278) & 0x76E10C50 ^ 0x10E10807 ^ ((16 * v278) ^ 0x6E10C570) & v278;
  v280 = ((2 * (v276 & 0x8047A4A)) & 0x10000414 | v276 & 0x8047A4A) ^ ((2 * (v276 & 0x8047A4A)) | 0x820000) & (v276 ^ 0x3E36F61D);
  v281 = (4 * v280) & 0x62210850 ^ v280 ^ ((4 * v280) | 0x1040000) & v277;
  v282 = (16 * v281) & 0x76E10C50 ^ v281 ^ ((16 * v281) ^ 0x4100000) & v278;
  v283 = v282 ^ (v282 << 8) & 0x76E10C00 ^ ((v282 << 8) ^ 0x41000000) & v279 ^ 0x32A00C57;
  v284 = v275 ^ v276 ^ (2 * ((v283 << 16) & 0x76E10000 ^ v283 ^ ((v283 << 16) ^ 0xC570000) & ((v279 << 8) & 0x76E10000 ^ 0x16E10000 ^ ((v279 << 8) ^ 0x610C0000) & v279)));
  v285 = (((v284 ^ 0x87D93601) - 709809381) ^ ((v284 ^ 0x8DF0536) + 1521948718) ^ ((v284 ^ 0x6B153121) + 964504635)) - 269985252;
  v6[17] = v285 ^ ((v285 ^ 0xB01CF986) + 121989136) ^ ((v285 ^ 0xC7D6F7A) - 1155203340) ^ ((v285 ^ 0x8A3A8765) + 1029904109) ^ ((v285 ^ 0x7EFD7FEF) - 911937945) ^ 0x1228E84;
  v286 = (v8[11] | ((v8[11] < 0x13u) << 8)) - 311054191;
  v287 = (2 * (v286 ^ 0xAD7E5C62)) & 0x13D3D0 ^ 0x485050 ^ ((2 * (v286 ^ 0xAD7E5C62)) ^ 0x4003A7A0) & (v286 ^ 0xAD7E5C62);
  v288 = (4 * v287) & 0x3FDBD3D0 ^ 0x909090 ^ ((4 * v287) ^ 0x5F6F4F40) & v287;
  v289 = (16 * v288) & 0xBFDBD3C0 ^ 0x242C2D0 ^ ((16 * v288) ^ 0xFDBD3D00) & v288;
  v290 = (2 * (v286 & 0x2403B2)) & 0x480340 ^ v286 & 0x2403B2 ^ ((2 * (v286 & 0x2403B2)) | 0x30000) & (v286 ^ 0xAD7E5C62);
  v291 = (4 * v290) & 0x19813D0 ^ v290 ^ ((4 * v290) ^ 0xA0000) & v287;
  v292 = (16 * v291) & 0x3FDBD3D0 ^ v291 ^ ((16 * v291) ^ 0x880000) & v288;
  v293 = v292 ^ (v292 << 8) & 0xBFDBD300 ^ ((v292 << 8) ^ 0x80800000) & v289 ^ 0x3FDB53D0;
  v294 = v286 ^ (2 * ((v293 << 16) & 0x3FDB0000 ^ v293 ^ ((v293 << 16) ^ 0x53D00000) & ((v289 << 8) & 0x3FDB0000 ^ 0x24080000 ^ ((v289 << 8) ^ 0x5BD30000) & v289))) ^ 0xC84C408C;
  v6[18] = v294;
  v295 = (v8[8] | ((v8[8] < 0x13u) << 8)) + 2034090732;
  v296 = (v295 ^ 0xB13B5659) & (2 * (v295 & 0x19475A)) ^ v295 & 0x19475A;
  v297 = (2 * (v295 ^ 0xB11950ED)) & 0x104027B6 ^ 0x1222091 ^ ((2 * (v295 ^ 0xB11950ED)) ^ 0x4804076E) & (v295 ^ 0xB11950ED);
  v298 = (4 * v297) & 0x3F6627B4 ^ 0x2662123 ^ ((4 * v297) ^ 0xDD989EDC) & v297;
  v299 = (16 * v298) & 0x3F6627B0 ^ 0x9040487 ^ ((16 * v298) ^ 0xF6627B70) & v298;
  v300 = (4 * v296) & 0x6627B0 ^ v296 ^ ((4 * v296) ^ 0x41900000) & v297;
  v301 = (16 * v300) & 0x3F6627A0 ^ v300 ^ ((16 * v300) ^ 0x96400000) & v298;
  v302 = v301 ^ (v301 << 8) & 0x3F662700 ^ ((v301 << 8) ^ 0x24000000) & v299 ^ 0x344227B7;
  v303 = v295 ^ (2 * ((v302 << 16) & 0x3F660000 ^ v302 ^ ((v302 << 16) ^ 0x27B70000) & ((v299 << 8) & 0x3F660000 ^ 0x19400000 ^ ((v299 << 8) ^ 0x66270000) & v299))) ^ v294;
  v304 = (((v303 ^ 0x9E9EE5FC) - 543284680) ^ ((v303 ^ 0x6ECFFA1F) + 802110933) ^ ((v303 ^ 0xCC504F49) - 1924102013)) + 1463376611;
  v305 = (v304 ^ 0x25F2194E) & (2 * (v304 & 0x8982186F)) ^ v304 & 0x8982186F;
  v306 = ((2 * (v304 ^ 0x36F229CE)) ^ 0x7EE06342) & (v304 ^ 0x36F229CE) ^ (2 * (v304 ^ 0x36F229CE)) & 0xBF7031A0;
  v307 = (v306 ^ 0x2E002100) & (4 * v305) ^ v305;
  v308 = ((4 * (v306 ^ 0x811010A1)) ^ 0xFDC0C684) & (v306 ^ 0x811010A1) ^ (4 * (v306 ^ 0x811010A1)) & 0xBF7031A0;
  v309 = (v308 ^ 0xBD400080) & (16 * v307) ^ v307;
  v310 = ((16 * (v308 ^ 0x2303121)) ^ 0xF7031A10) & (v308 ^ 0x2303121) ^ (16 * (v308 ^ 0x2303121)) & 0xBF703180;
  v311 = v309 ^ 0xBF7031A1 ^ (v310 ^ 0xB7001000) & (v309 << 8);
  v6[18] = v304 ^ (2 * ((v311 << 16) & 0x3F700000 ^ v311 ^ ((v311 << 16) ^ 0x31A10000) & (((v310 ^ 0x87021A1) << 8) & 0x3F700000 ^ 0xF400000 ^ (((v310 ^ 0x87021A1) << 8) ^ 0x70310000) & (v310 ^ 0x87021A1)))) ^ 0x17DC13B3;
  v312 = (v8[12] | ((v8[12] < 0x13u) << 8)) + 2118434836;
  v313 = v312 ^ ((v312 ^ 0xC02F0107) + 1106707143) ^ ((v312 ^ 0xF30884EB) + 1926268715) ^ ((v312 ^ 0x32FB032D) - 1289551635) ^ ((v312 ^ 0x7FFB7AFF) - 31229633) ^ 0x53BC3BC2;
  v6[19] = v313;
  v314 = (v8[9] | ((v8[9] < 0x13u) << 8)) + 8236180;
  v315 = (2 * (v314 ^ 0x44B56333)) & 0x1808E80 ^ 0x408A2281 ^ ((2 * (v314 ^ 0x44B56333)) ^ 0x400CD02) & (v314 ^ 0x44B56333);
  v316 = (4 * v315) & 0x438AEE80 ^ 0x41804481 ^ ((4 * v315) ^ 0xE2BBA04) & v315;
  v317 = (16 * v316) & 0x438AEE80 ^ 0x43000681 ^ ((16 * v316) ^ 0x38AEE810) & v316;
  v318 = (v314 & 0x401B2 | 0x2000400 | (2 * (v314 & 0x401B2)) & 0xFFFFFE03) ^ ((2 * (v314 & 0x401B2)) | 0x400800) & (v314 ^ 0x44B56333);
  v319 = (4 * v318) & 0x1002E80 ^ v318 ^ ((4 * v318) ^ 0x8EE0000) & v315;
  v320 = (16 * v319) & 0x438AEE80 ^ v319 ^ ((16 * v319) ^ 0x2B180000) & v316;
  v321 = v320 ^ (v320 << 8) & 0x438AEE00 ^ ((v320 << 8) ^ 0xB9800000) & v317 ^ 0x43B36E81;
  v322 = v313 ^ v314 ^ (2 * ((v321 << 16) & 0x438A0000 ^ v321 ^ ((v321 << 16) ^ 0x6E810000) & ((v317 << 8) & 0x438A0000 ^ 0x41000000 ^ ((v317 << 8) ^ 0xAEE0000) & v317)));
  LODWORD(v5) = (((v322 ^ 0xB318759D) + 1238227667) ^ ((v322 ^ 0x9121E991) + 1811171039) ^ ((v322 ^ 0xA880B40) - 262298608)) + 27179361;
  v323 = (v5 ^ 0xC1BA154E) & (2 * (v5 & 0x89BA194F)) ^ v5 & 0x89BA194F;
  v324 = ((2 * (v5 ^ 0xC1EA27D6)) ^ 0x90A07D32) & (v5 ^ 0xC1EA27D6) ^ (2 * (v5 ^ 0xC1EA27D6)) & 0x48503E98;
  v325 = (v324 ^ 0x2C10) & (4 * v323) ^ v323;
  v326 = ((4 * (v324 ^ 0x48500289)) ^ 0x2140FA64) & (v324 ^ 0x48500289) ^ (4 * (v324 ^ 0x48500289)) & 0x48503E98;
  v327 = (v326 ^ 0x403A00) & (16 * v325) ^ v325;
  v328 = ((16 * (v326 ^ 0x48100499)) ^ 0x8503E990) & (v326 ^ 0x48100499) ^ (16 * (v326 ^ 0x48100499)) & 0x48503E90;
  v329 = v327 ^ 0x48503E99 ^ (v328 ^ 0x2800) & (v327 << 8);
  v6[19] = v5 ^ (2 * ((v329 << 16) & 0x48500000 ^ v329 ^ ((v329 << 16) ^ 0x3E990000) & (((v328 ^ 0x48501609) << 8) & 0x48500000 ^ 0x8400000 ^ (((v328 ^ 0x48501609) << 8) ^ 0x503E0000) & (v328 ^ 0x48501609)))) ^ 0x24A1A381;
  LODWORD(v5) = (v8[13] | ((v8[13] < 0x13u) << 8)) + 2138645904;
  v330 = (v5 ^ 0x549111DD) & (2 * (v5 & 0x2121D9)) ^ v5 & 0x2121D9;
  v331 = ((2 * (v5 ^ 0x55D152FF)) ^ 0x2AA8664C) & (v5 ^ 0x55D152FF) ^ (2 * (v5 ^ 0x55D152FF)) & 0x55506326;
  v332 = (v331 ^ 0x204) & (4 * v330) ^ v330;
  v333 = ((4 * (v331 ^ 0x55141122)) ^ 0x55D1CC98) & (v331 ^ 0x55141122) ^ (4 * (v331 ^ 0x55141122)) & 0xD5747320;
  v334 = ((16 * (v333 ^ 0x80243326)) ^ 0x57473260) & (v333 ^ 0x80243326) ^ (16 * (v333 ^ 0x80243326)) & 0xD5747320;
  v335 = (v333 ^ 0x55504000) & (16 * v332) ^ v332 ^ 0xD5747326 ^ (v334 ^ 0x55443200) & (((v333 ^ 0x55504000) & (16 * v332) ^ v332) << 8);
  v336 = ((v335 << 16) ^ 0x73260000) & (((v334 ^ 0x80304106) << 8) & 0xD5740000 ^ 0x1040000 ^ (((v334 ^ 0x80304106) << 8) ^ 0x74730000) & (v334 ^ 0x80304106));
  v6[20] = v5;
  v337 = (v8[10] | ((v8[10] < 0x13u) << 8)) - 1174274848;
  v338 = (2 * (v337 ^ 0x3D7CBD7E)) & 0xC28018 ^ 0x10408008 ^ ((2 * (v337 ^ 0x3D7CBD7E)) ^ 0x810D0030) & (v337 ^ 0x3D7CBD7E);
  v339 = (4 * v338) & 0x70C78018 ^ 0x30C18018 ^ ((4 * v338) ^ 0xC31E0060) & v338;
  v340 = (16 * v339) & 0x70C78000 ^ 0x70878018 ^ ((16 * v339) ^ 0xC780180) & v339;
  v341 = (2 * (v337 & 0x8003D66)) & (v337 ^ 0x3D7CBD7E) ^ (v337 & 0x8003D66 | 0x70408018) ^ ((2 * (v337 & 0x8003D66)) & 0x10000008 | 0x840000);
  v342 = (4 * v341) & 0x60038018 ^ v341 ^ ((4 * v341) ^ 0xC31E0060) & v338;
  v343 = v342 ^ (16 * v342) & 0x70C78010 ^ ((16 * v342) ^ 0xC180180) & v339 ^ 0x40060000;
  v344 = (v343 << 8) & 0x70C78000 ^ v343 ^ ((v343 << 8) ^ 0xC7801800) & v340;
  v345 = v337 ^ v5 ^ (2 * ((v335 << 16) & 0x55740000 ^ v335 ^ v336 ^ v344 ^ (v344 << 16) & 0x70C70000 ^ ((v344 << 16) ^ 0x180000) & ((v340 << 8) & 0x70C70000 ^ 0x30470000 ^ ((v340 << 8) ^ 0x47800000) & v340)));
  v6[20] = (((v345 ^ 0x5C9AD9C0) + 605460233) ^ ((v345 ^ 0xEB712C03) - 1812110644) ^ ((v345 ^ 0x12DA0F00) + 1784037833)) - 10865457;
  v346 = (v8[14] | ((v8[14] < 0x13u) << 8)) + 247255762;
  v347 = (2 * (v346 ^ 0x2CB2BCA3)) & 0x44104488 ^ 0x44504489 ^ ((2 * (v346 ^ 0x2CB2BCA3)) ^ 0x22000912) & (v346 ^ 0x2CB2BCA3);
  v348 = (4 * v347) & 0xDDD04488 ^ 0x88904489 ^ ((4 * v347) ^ 0x77411224) & v347;
  v349 = (16 * v348) & 0xDDD04480 ^ 0xD00409 ^ ((16 * v348) ^ 0xDD044890) & v348;
  v350 = (v346 ^ 0x2CB2BCA3) & (2 * (v346 & 0x102A)) | v346 & 0x102A;
  v351 = ((4 * v350) | 0x1830000) & v347 ^ v350 ^ ((4 * v350) & 0x4088 | 0x54C00000);
  v352 = v351 ^ (16 * v351) & 0xDDD04480 ^ ((16 * v351) ^ 0x520C0000) & v348 ^ 0xD8F08489;
  v353 = (v352 << 8) & 0xDDD04400 ^ v352 ^ ((v352 << 8) ^ 0xD0448900) & v349;
  v354 = v346 ^ (2 * ((v353 << 16) & 0x5DD00000 ^ v353 ^ ((v353 << 16) ^ 0x44890000) & ((v349 << 8) & 0x5DD00000 ^ 0xD900000 ^ ((v349 << 8) ^ 0x50440000) & v349))) ^ 0xF5FDD23C;
  v6[21] = v354;
  v355 = (v8[11] | ((v8[11] < 0x13u) << 8)) + 537177888;
  v356 = ((v355 ^ 0xE065731E) + 131987516) ^ v355 ^ ((v355 ^ 0x6495BFA1) - 2094189435) ^ ((v355 ^ 0xC34847B6) + 619760788) ^ ((v355 ^ 0x5FFFFFD3) - 1203276553) ^ v354;
  v357 = (((v356 ^ 0xA45DDC1D) + 1139103545) ^ ((v356 ^ 0x684AFA13) - 1879936713) ^ ((v356 ^ 0x42EFF1D0) - 1520993546)) + 892947760;
  v6[21] = v357 ^ ((v357 ^ 0x457694E) - 1156314678) ^ ((v357 ^ 0x1BAE5C26) - 1527956318) ^ ((v357 ^ 0xA8FAB5EF) + 398054761) ^ ((v357 ^ 0xF7BF1FFF) + 1224507257) ^ 0xD6033C7C;
  v358 = (v8[15] | ((v8[15] < 0x13u) << 8)) + 1192434489;
  v359 = v358 ^ ((v358 ^ 0xA713960D) + 505259353) ^ ((v358 ^ 0x7861B3B9) - 1049657107) ^ ((v358 ^ 0x267E16E0) - 1620040266) ^ ((v358 ^ 0xBFFDFFFE) + 116640940) ^ 0x5A5E9221;
  v360 = STACK[0x21C0];
  *(v360 + 88) = v359;
  v361 = v360;
  STACK[0xEC0] = v360;
  LODWORD(v5) = (v8[12] | ((v8[12] < 0x13u) << 8)) - 158488594;
  v362 = ((2 * (v5 ^ 0x1B2DBC99)) ^ 0x4001D82) & (v5 ^ 0x1B2DBC99) ^ (2 * (v5 ^ 0x1B2DBC99)) & 0xA002EC0;
  v363 = v362 ^ 0xA002881;
  v364 = ((4 * (v362 ^ 0xA022241)) ^ 0x2808BB04) & (v362 ^ 0xA022241) ^ (4 * (v362 ^ 0xA022241)) & 0xA022EC0;
  v365 = v364 ^ 0x8002A00;
  v366 = (16 * (v364 ^ 0x20204C1)) & 0xA022EC0 ^ 0xA0002C1 ^ ((16 * (v364 ^ 0x20204C1)) ^ 0xA022EC10) & (v364 ^ 0x20204C1);
  LODWORD(v360) = ((2 * (v5 & 0x100D8258)) & 0xFFF80 | v5 & 0x100D8258) ^ (2 * (v5 & 0x100D8258)) & (v5 ^ 0x1B2DBC99);
  LODWORD(v360) = v363 & (4 * v360) ^ v360 ^ 0xA022EC1 ^ v365 & (16 * (v363 & (4 * v360) ^ v360));
  LODWORD(v360) = (v360 << 8) & 0xA022E00 ^ v360 ^ ((v360 << 8) ^ 0x22EC100) & v366;
  LODWORD(v360) = v359 ^ v5 ^ (2 * ((v360 << 16) & 0xA020000 ^ v360 ^ ((v360 << 16) ^ 0x2EC10000) & ((v366 << 8) & 0xA020000 ^ ((v366 << 8) ^ 0x22E0000) & v366 ^ 0x8000000)));
  LODWORD(v360) = (((v360 ^ 0x1EA20C70) - 193840042) ^ ((v360 ^ 0xC76975D8) + 767116798) ^ ((v360 ^ 0xD04BE8F9) + 983292125)) - 606736740;
  *(v361 + 88) = v360 ^ ((v360 ^ 0xD6B01E67) + 1210475718) ^ ((v360 ^ 0xCA7589F2) + 1424225105) ^ ((v360 ^ 0x8651EF37) + 415733142) ^ ((v360 ^ 0xFBFDFDFF) + 1701545822) ^ 0x7DC6DBD6;
  LODWORD(v360) = (*v8 | ((*v8 < 0x13u) << 8)) - 1738227064;
  LODWORD(v360) = v360 ^ ((v360 ^ 0xE34AFF89) - 2064322543) ^ ((v360 ^ 0xCA821EFA) - 1388572316) ^ ((v360 ^ 0xE76EEEA) + 1774772596) ^ ((v360 ^ 0xBFFFFFFF) - 666767257) ^ 0x36AEDD78;
  v6[23] = v360;
  v367 = (v8[13] | ((v8[13] < 0x13u) << 8)) - 677626250;
  LODWORD(v360) = ((v367 ^ 0x68458D61) + 1483044527) ^ v367 ^ ((v367 ^ 0x3DA216BF) + 226684273) ^ ((v367 ^ 0xE1976011) - 776496161) ^ ((v367 ^ 0x7BAFFFFF) + 1267663921) ^ v360;
  LODWORD(v360) = (((v360 ^ 0xADC64860) - 1645825104) ^ ((v360 ^ 0xCA2DD2F0) - 99800768) ^ ((v360 ^ 0x6DBB3BE) + 922437746)) + 2005646747;
  v6[23] = v360 ^ ((v360 ^ 0x9530C285) + 1095860) ^ ((v360 ^ 0x2476794C) - 1319763077) ^ ((v360 ^ 0xA446C1F3) + 828816326) ^ ((v360 ^ 0x7FDFFFF3) - 352352826) ^ 0xC430A8D7;
  v368 = (v8[1] | ((v8[1] < 0x13u) << 8)) + 850336033;
  v369 = (2 * (v368 ^ 0x7595C44F)) & 0x8860B8DA ^ 0x88200849 ^ ((2 * (v368 ^ 0x7595C44F)) ^ 0x4100D1B6) & (v368 ^ 0x7595C44F);
  v370 = (4 * v369) & 0xB8E0F8D8 ^ 0x18601893 ^ ((4 * v369) ^ 0xE383E36C) & v369;
  v371 = (16 * v370) & 0xB8E0F8D0 ^ 0x30E0704B ^ ((16 * v370) ^ 0x8E0F8DB0) & v370;
  LODWORD(v360) = (v368 & 0x40094 | (8 * (((v368 & 0x40094u) >> 2) & 1)) | 2) ^ ((2 * (v368 & 0x40094)) | 0x21000) & (v368 ^ 0x7595C44F);
  LODWORD(v360) = (4 * v360) & 0x2040D8 ^ v360 ^ ((4 * v360) ^ 0x184A008) & v369;
  LODWORD(v360) = (16 * v360) & 0x38E0F8D0 ^ v360 ^ ((16 * v360) ^ 0xE1880A0) & v370;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0xB8E0F800 ^ ((v360 << 8) ^ 0xE1088A00) & v371 ^ 0x10017851;
  LODWORD(v360) = v368 ^ (2 * ((v360 << 16) & 0x38E00000 ^ v360 ^ ((v360 << 16) ^ 0x78DB0000) & ((v371 << 8) & 0x38E00000 ^ ((v371 << 8) ^ 0x60F80000) & v371 ^ 0x18000000))) ^ 0x8BD5845C;
  v6[24] = v360;
  v372 = (v8[14] | ((v8[14] < 0x13u) << 8)) + 1986523430;
  LODWORD(v360) = ((v372 ^ 0xFBAB1799) + 1795055239) ^ v372 ^ ((v372 ^ 0x104536A6) - 2129625158) ^ ((v372 ^ 0xE89B6824) + 2043552060) ^ ((v372 ^ 0x6DDFFFFB) - 58018075) ^ v360;
  v373 = (((v360 ^ 0x810BCAB) - 1723468363) ^ ((v360 ^ 0x36566146) - 1492965286) ^ ((v360 ^ 0x160D2273) - 2024248467)) - 1163188777;
  LODWORD(v360) = (v373 ^ 0xC5F20E53) & (2 * (v373 & 0xE9F32E5B)) ^ v373 & 0xE9F32E5B;
  LODWORD(v5) = ((2 * (v373 ^ 0x5565A47)) ^ 0xD94AE838) & (v373 ^ 0x5565A47) ^ (2 * (v373 ^ 0x5565A47)) & 0xECA5741C;
  LODWORD(v360) = (v5 ^ 0xC8006018) & (4 * v360) ^ v360;
  LODWORD(v5) = ((4 * (v5 ^ 0x24A51404)) ^ 0xB295D070) & (v5 ^ 0x24A51404) ^ (4 * (v5 ^ 0x24A51404)) & 0xECA57418;
  LODWORD(v360) = (v5 ^ 0xA0855010) & (16 * v360) ^ v360;
  LODWORD(v5) = ((16 * (v5 ^ 0x4C20240C)) ^ 0xCA5741C0) & (v5 ^ 0x4C20240C) ^ (16 * (v5 ^ 0x4C20240C)) & 0xECA57400;
  LODWORD(v360) = v360 ^ 0xECA5741C ^ (v5 ^ 0xC8054000) & (v360 << 8);
  v6[24] = v373 ^ (2 * ((v360 << 16) & 0x6CA50000 ^ v360 ^ ((v360 << 16) ^ 0x741C0000) & (((v5 ^ 0x24A0341C) << 8) & 0x6CA50000 ^ 0x48810000 ^ (((v5 ^ 0x24A0341C) << 8) ^ 0x25740000) & (v5 ^ 0x24A0341C)))) ^ 0xBE508F1D;
  v374 = (v8[2] | ((v8[2] < 0x13u) << 8)) + 187953458;
  v375 = (2 * (v374 ^ 0x904F40EE)) & 0x24B820F8 ^ 0x2482A808 ^ ((2 * (v374 ^ 0x904F40EE)) ^ 0x897C11F0) & (v374 ^ 0x904F40EE);
  v376 = (4 * v375) & 0x64BEA8F8 ^ 0x64040818 ^ ((4 * v375) ^ 0x92FAA3E0) & v375;
  v377 = (16 * v376) & 0x64BEA8C0 ^ 0x24142078 ^ ((16 * v376) ^ 0x4BEA8F80) & v376;
  LODWORD(v360) = (2 * (v374 & 0x14016)) & 0xFFFFFFFB ^ (v374 & 0x14016 | 0x64AA0808) ^ ((2 * (v374 & 0x14016)) | 0x600000) & (v374 ^ 0x904F40EE);
  LODWORD(v360) = (4 * v360) & 0xAE20F8 ^ v360 ^ ((4 * v360) ^ 0x92EAA020) & v375;
  LODWORD(v360) = (16 * v360) & 0x64BEA8F0 ^ v360 ^ ((16 * v360) ^ 0x41008280) & v376;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x64BEA800 ^ ((v360 << 8) ^ 0x1088A800) & v377 ^ 0x40268850;
  LODWORD(v360) = v374 ^ (2 * ((v360 << 16) & 0x64BE0000 ^ v360 ^ ((v360 << 16) ^ 0x28F80000) & ((v377 << 8) & 0x64BE0000 ^ 0x40160000 ^ ((v377 << 8) ^ 0x3EA80000) & v377))) ^ 0x527EFB66;
  v6[25] = v360;
  v378 = (v8[15] | ((v8[15] < 0x13u) << 8)) - 1132186450;
  LODWORD(v360) = ((v378 ^ 0xBE98389C) - 173982452) ^ v378 ^ ((v378 ^ 0x7747AC7E) + 1014933994) ^ ((v378 ^ 0x82C49065) - 906127885) ^ ((v378 ^ 0xFFDDFEEF) - 1260061831) ^ v360;
  v379 = (((v360 ^ 0x693D8490) + 570720520) ^ ((v360 ^ 0x1919631F) + 1377855113) ^ ((v360 ^ 0xEA605F67) - 1587979535)) - 634076901;
  LODWORD(v360) = (v379 ^ 0xA1802D99) & (2 * (v379 & 0xB20A8C19)) ^ v379 & 0xB20A8C19;
  LODWORD(v5) = ((2 * (v379 ^ 0xC58535BB)) ^ 0xEF1F7344) & (v379 ^ 0xC58535BB) ^ (2 * (v379 ^ 0xC58535BB)) & 0x778FB9A2;
  LODWORD(v360) = (v5 ^ 0x400E3000) & (4 * v360) ^ v360;
  LODWORD(v5) = ((4 * (v5 ^ 0x108088A2)) ^ 0xDE3EE688) & (v5 ^ 0x108088A2) ^ (4 * (v5 ^ 0x108088A2)) & 0x778FB9A0;
  LODWORD(v360) = (v5 ^ 0x560EA080) & (16 * v360) ^ v360;
  LODWORD(v5) = ((16 * (v5 ^ 0x21811922)) ^ 0x78FB9A20) & (v5 ^ 0x21811922) ^ (16 * (v5 ^ 0x21811922)) & 0x778FB9A0;
  LODWORD(v360) = v360 ^ 0x778FB9A2 ^ (v5 ^ 0x708B9800) & (v360 << 8);
  v6[25] = v379 ^ (2 * ((v360 << 16) & 0x778F0000 ^ v360 ^ ((v360 << 16) ^ 0x39A20000) & (((v5 ^ 0x7042182) << 8) & 0x778F0000 ^ 0x70060000 ^ (((v5 ^ 0x7042182) << 8) ^ 0xFB90000) & (v5 ^ 0x7042182)))) ^ 0x1093BDDD;
  LODWORD(v360) = (v8[3] | ((v8[3] < 0x13u) << 8)) + 1224263481;
  v380 = v360 ^ ((v360 ^ 0x171E7982) - 1607406556) ^ ((v360 ^ 0x5E6CD4E6) - 381533880) ^ ((v360 ^ 0xDE5C7845) + 1769139685) ^ ((v360 ^ 0xDFFFBF7F) + 1758538463) ^ 0xCE67CFCC;
  v6[26] = v380;
  LODWORD(v5) = (*v8 | ((*v8 < 0x13u) << 8)) + 1997988448;
  v381 = (2 * (v5 ^ 0x12DDD29C)) & 0x212057A ^ 0x208850A ^ ((2 * (v5 ^ 0x12DDD29C)) ^ 0x4C302F4) & (v5 ^ 0x12DDD29C);
  v382 = (4 * v381) & 0x827B8578 ^ 0x82118012 ^ ((4 * v381) ^ 0x9EE15E8) & v381;
  v383 = (16 * v382) & 0x827B8560 ^ 0x8043805A ^ ((16 * v382) ^ 0x27B857A0) & v382;
  LODWORD(v360) = (2 * (v5 & 0x100047E6)) & 0x8548 ^ v5 & 0x100047E6 ^ ((2 * (v5 & 0x100047E6)) | 0x80000) & (v5 ^ 0x12DDD29C);
  LODWORD(v360) = (4 * v360) & 0x80230538 ^ v360 ^ ((4 * v360) ^ 0x380000) & v381;
  LODWORD(v360) = v360 ^ (16 * v360) & 0x827B8570 ^ ((16 * v360) ^ 0x3600000) & v382 ^ 0x802D857A;
  LODWORD(v360) = (v360 << 8) & 0x827B8500 ^ v360 ^ ((v360 << 8) ^ 0x7B857A00) & v383;
  LODWORD(v360) = v380 ^ v5 ^ (2 * ((v360 << 16) & 0x27B0000 ^ v360 ^ ((v360 << 16) ^ 0x57A0000) & ((v383 << 8) & 0x27B0000 ^ 0x7A0000 ^ ((v383 << 8) ^ 0x7B850000) & v383)));
  v384 = (((v360 ^ 0xB37CD478) - 601590122) ^ ((v360 ^ 0xBD415881) - 770049427) ^ ((v360 ^ 0x182C7479) + 2004145813)) + 502753058;
  LODWORD(v360) = (v384 ^ 0xE47F0182) & (2 * (v384 & 0xC67C4924)) ^ v384 & 0xC67C4924;
  LODWORD(v5) = ((2 * (v384 ^ 0xEC170382)) ^ 0x54D6954C) & (v384 ^ 0xEC170382) ^ (2 * (v384 ^ 0xEC170382)) & 0x2A6B4AA6;
  LODWORD(v360) = (v5 ^ 0x420000) & (4 * v360) ^ v360;
  LODWORD(v5) = ((4 * (v5 ^ 0x2A294AA2)) ^ 0xA9AD2A98) & (v5 ^ 0x2A294AA2) ^ (4 * (v5 ^ 0x2A294AA2)) & 0x2A6B4AA0;
  LODWORD(v360) = (v5 ^ 0x28290A80) & (16 * v360) ^ v360;
  LODWORD(v5) = ((16 * (v5 ^ 0x2424026)) ^ 0xA6B4AA60) & (v5 ^ 0x2424026) ^ (16 * (v5 ^ 0x2424026)) & 0x2A6B4AA0;
  LODWORD(v360) = v360 ^ 0x2A6B4AA6 ^ (v5 ^ 0x22200A00) & (v360 << 8);
  v6[26] = v384 ^ (2 * ((v360 << 16) & 0x2A6B0000 ^ v360 ^ ((v360 << 16) ^ 0x4AA60000) & (((v5 ^ 0x84B4086) << 8) & 0x2A6B0000 ^ 0x210000 ^ (((v5 ^ 0x84B4086) << 8) ^ 0x6B4A0000) & (v5 ^ 0x84B4086)))) ^ 0x5879FA;
  LODWORD(v5) = (v8[4] | ((v8[4] < 0x13u) << 8)) + 1146599350;
  v385 = (2 * (v5 ^ 0x20D18804)) & 0x90020BC ^ 0x900A084 ^ ((2 * (v5 ^ 0x20D18804)) ^ 0x24000178) & (v5 ^ 0x20D18804);
  v386 = (4 * v385) & 0x9B00A0B8 ^ 0x9300200C ^ ((4 * v385) ^ 0x6C0282F0) & v385;
  v387 = (16 * v386) & 0x9B00A080 ^ 0xB00A03C ^ ((16 * v386) ^ 0xB00A0BC0) & v386;
  LODWORD(v360) = (2 * (v5 & 0x4028B8)) & 0x30 ^ v5 & 0x4028B8 ^ ((2 * (v5 & 0x4028B8)) | 0x20000) & (v5 ^ 0x20D18804);
  LODWORD(v360) = (4 * v360) & 0x300A0A0 ^ v360 ^ ((4 * v360) | 0x440000) & v385;
  LODWORD(v360) = (16 * v360) & 0x1B00A0B0 ^ v360 ^ ((16 * v360) ^ 0x1100000) & v386;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x9B00A000 ^ ((v360 << 8) ^ 0x11000000) & v387 ^ 0x8B11A0BC;
  LODWORD(v5) = v5 ^ (2 * ((v360 << 16) & 0x1B000000 ^ v360 ^ ((v360 << 16) ^ 0x20BC0000) & (((v387 << 8) ^ 0xA00000) & v387 ^ 0x1B000000))) ^ 0x83EBD656;
  v6[27] = v5;
  v388 = (v8[1] | ((v8[1] < 0x13u) << 8)) + 1348724862;
  LODWORD(v360) = (v388 ^ 0x147155C7) & (2 * (v388 & 0x4141C8)) ^ v388 & 0x4141C8;
  v389 = (2 * (v388 ^ 0x14F156D7)) & 0x120071E ^ 0x20A80101 ^ ((2 * (v388 ^ 0x14F156D7)) ^ 0x44100E3E) & (v388 ^ 0x14F156D7);
  v390 = ((4 * v389) ^ 0x8EA01C7C) & v389 ^ (4 * v389) & 0xA3A8071C;
  v391 = v390 ^ 0x82A00413;
  v392 = ((16 * (v390 ^ 0x21080303)) ^ 0x3A8071F0) & (v390 ^ 0x21080303) ^ (16 * (v390 ^ 0x21080303)) & 0xA3A80710;
  LODWORD(v360) = (4 * v360) & 0x3080700 ^ v360 ^ ((4 * v360) | 0xC0000000) & v389;
  LODWORD(v360) = v391 & (16 * v360) ^ v360 ^ 0x13A8071F ^ (v392 ^ 0x22800100) & ((v391 & (16 * v360) ^ v360) << 8);
  LODWORD(v360) = v388 ^ (2 * ((v360 << 16) & 0x23A80000 ^ v360 ^ ((v360 << 16) ^ 0x71F0000) & (((v392 ^ 0x8128060F) << 8) & 0x23A80000 ^ 0x3A80000 ^ (((v392 ^ 0x8128060F) << 8) ^ 0x28070000) & (v392 ^ 0x8128060F)))) ^ v5;
  LODWORD(v5) = (((v360 ^ 0xB267529B) - 1149111661) ^ ((v360 ^ 0xE830F018) - 506048494) ^ ((v360 ^ 0xA27542E3) - 1416371477)) - 443013206;
  LODWORD(v360) = (v5 ^ 0x477C103E) & (2 * (v5 & 0x8660A2A0)) ^ v5 & 0x8660A2A0;
  v393 = ((2 * (v5 ^ 0x473D503E)) ^ 0x82BBE53C) & (v5 ^ 0x473D503E) ^ (2 * (v5 ^ 0x473D503E)) & 0xC15DF29E;
  LODWORD(v360) = (v393 ^ 0x18000) & (4 * v360) ^ v360;
  v394 = ((4 * (v393 ^ 0x41441282)) ^ 0x577CA78) & (v393 ^ 0x41441282) ^ (4 * (v393 ^ 0x41441282)) & 0xC15DF298;
  LODWORD(v360) = (v394 ^ 0x155C200) & (16 * v360) ^ v360;
  v395 = ((16 * (v394 ^ 0xC0083086)) ^ 0x15DF29E0) & (v394 ^ 0xC0083086) ^ (16 * (v394 ^ 0xC0083086)) & 0xC15DF280;
  LODWORD(v360) = v360 ^ 0xC15DF29E ^ (v395 ^ 0x15D2000) & (v360 << 8);
  v6[27] = v5 ^ (2 * ((v360 << 16) & 0x415D0000 ^ v360 ^ ((v360 << 16) ^ 0x729E0000) & (((v395 ^ 0xC000D21E) << 8) & 0x415D0000 ^ 0xD0000 ^ (((v395 ^ 0xC000D21E) << 8) ^ 0x5DF20000) & (v395 ^ 0xC000D21E)))) ^ 0x8AD8F80A;
  LODWORD(v5) = (v8[5] | ((v8[5] < 0x13u) << 8)) - 774543805;
  v396 = (2 * (v5 ^ 0x6F04EC5C)) & 0x410011E2 ^ 0x41501022 ^ ((2 * (v5 ^ 0x6F04EC5C)) ^ 0x828003C4) & (v5 ^ 0x6F04EC5C);
  v397 = (4 * v396) & 0x415011E0 ^ 0x40101062 ^ ((4 * v396) ^ 0x5404788) & v396;
  v398 = (16 * v397) & 0x415011E0 ^ 0x405001C2 ^ ((16 * v397) ^ 0x15011E20) & v397;
  LODWORD(v360) = (2 * (v5 & 0x2DBE)) & 0x1160 ^ v5 & 0x2DBE ^ ((2 * (v5 & 0x2DBE)) | 0x808000) & (v5 ^ 0x6F04EC5C);
  LODWORD(v360) = (4 * v360) & 0x11E0 ^ v360 ^ ((4 * v360) ^ 0x1510000) & v396;
  LODWORD(v360) = v360 ^ (16 * v360) & 0x415011E0 ^ ((16 * v360) ^ 0x10440000) & v397 ^ 0x401451E2;
  LODWORD(v360) = (v360 << 8) & 0x41501100 ^ v360 ^ ((v360 << 8) ^ 0x5011E200) & v398;
  LODWORD(v360) = v5 ^ (2 * ((v360 << 16) & 0x41500000 ^ v360 ^ ((v360 << 16) ^ 0x11E20000) & ((v398 << 8) & 0x41500000 ^ 0x1400000 ^ ((v398 << 8) ^ 0x50110000) & v398))) ^ 0xCF5B61B0;
  v6[28] = v360;
  LODWORD(v5) = (v8[2] | ((v8[2] < 0x13u) << 8)) + 1220845706;
  LODWORD(v360) = ((v5 ^ 0x47265BB4) - 102841840) ^ v5 ^ ((v5 ^ 0xDC1F218F) + 1659353141) ^ ((v5 ^ 0xA4C3A380) + 440089148) ^ ((v5 ^ 0x7EFDBFFF) - 1073404347) ^ v360;
  LODWORD(v360) = (((v360 ^ 0x98D38778) + 640360132) ^ ((v360 ^ 0x515E8141) - 274327301) ^ ((v360 ^ 0x6985DFB7) - 679655923)) + 1100698792;
  v6[28] = v360 ^ ((v360 ^ 0x2C5CC9A0) - 781337482) ^ ((v360 ^ 0xA0A0C3C) - 147097110) ^ ((v360 ^ 0xD94730DB) + 611730703) ^ ((v360 ^ 0xFDDF7F6D) + 15600313) ^ 0xE3C135E0;
  LODWORD(v360) = (v8[6] | ((v8[6] < 0x13u) << 8)) + 1349589884;
  LODWORD(v5) = v360 ^ ((v360 ^ 0x9B27374C) + 882768732) ^ ((v360 ^ 0x61C3EEAD) - 830922053) ^ ((v360 ^ 0xD55C1566) + 2061949298) ^ ((v360 ^ 0x7FFDFF6F) - 800640135) ^ 0xFD8DE67E;
  v6[29] = v5;
  v399 = (v8[3] | ((v8[3] < 0x13u) << 8)) - 1185595988;
  v400 = (2 * (v399 ^ 0x6F1E62DF)) & 0x20109E44 ^ 0x21088245 ^ ((2 * (v399 ^ 0x6F1E62DF)) ^ 0x42431C8A) & (v399 ^ 0x6F1E62DF);
  v401 = (4 * v400) & 0x21799E44 ^ 0x20198641 ^ ((4 * v400) ^ 0x85E67914) & v400;
  v402 = (16 * v401) & 0x21799E40 ^ 0x20601A05 ^ ((16 * v401) ^ 0x1799E450) & v401;
  LODWORD(v360) = (2 * (v399 & 0x3C9A)) & 0x1804 ^ v399 & 0x3C9A ^ ((2 * (v399 & 0x3C9A)) | 0x100A0000) & (v399 ^ 0x6F1E62DF);
  LODWORD(v360) = (4 * v360) & 0x299640 ^ v360 ^ ((4 * v360) ^ 0x21340000) & v400;
  LODWORD(v360) = (16 * v360) & 0x21799E40 ^ v360 ^ ((16 * v360) ^ 0x97D00000) & v401;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x21799E00 ^ ((v360 << 8) ^ 0x2D000000) & v402 ^ 0x28549E45;
  LODWORD(v360) = v399 ^ v5 ^ (2 * ((v360 << 16) & 0x21790000 ^ v360 ^ ((v360 << 16) ^ 0x1E450000) & ((v402 << 8) & 0x21790000 ^ 0x610000 ^ ((v402 << 8) ^ 0x799E0000) & v402)));
  LODWORD(v360) = (((v360 ^ 0xD3DCC9F3) + 540407325) ^ ((v360 ^ 0x633C1FB5) - 1865080741) ^ ((v360 ^ 0x113EC3C0) - 489161680)) + 228455374;
  v6[29] = v360 ^ ((v360 ^ 0x22197C17) - 536965011) ^ ((v360 ^ 0x1CBEAD51) - 514244309) ^ ((v360 ^ 0xE3403F1E) + 514315110) ^ ((v360 ^ 0xDFFFFDDC) + 572002728) ^ 0xAFD0C612;
  LODWORD(v5) = (v8[7] | ((v8[7] < 0x13u) << 8)) + 274837345;
  v403 = (2 * (v5 ^ 0xB62AAFD2)) & 0x48801414 ^ 0x48211414 ^ ((2 * (v5 ^ 0xB62AAFD2)) ^ 0xA2420828) & (v5 ^ 0xB62AAFD2);
  v404 = (4 * v403) & 0x59E11410 ^ 0x18610404 ^ ((4 * v403) ^ 0x67845050) & v403;
  v405 = (16 * v404) & 0x59E11400 ^ 0x41E01414 ^ ((16 * v404) ^ 0x9E114140) & v404;
  LODWORD(v360) = ((2 * (v5 & 0x3BC6)) | 0x30000) & (v5 ^ 0xB62AAFD2) ^ v5 & 0x3BC6 ^ ((2 * (v5 & 0x3BC6)) & 0x1404 | 0x11000000);
  LODWORD(v360) = (4 * v360) & 0x59E11410 ^ v360 ^ ((4 * v360) ^ 0x47020000) & v403;
  LODWORD(v360) = (16 * v360) & 0x59E11410 ^ v360 ^ ((16 * v360) ^ 0xC080000) & v404;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x59E11400 ^ ((v360 << 8) ^ 0xC0800000) & v405 ^ 0x41A19414;
  LODWORD(v360) = v5 ^ (2 * ((v360 << 16) & 0x59E10000 ^ v360 ^ ((v360 << 16) ^ 0x14140000) & ((v405 << 8) & 0x59E10000 ^ 0x18E10000 ^ ((v405 << 8) ^ 0x61140000) & v405))) ^ 0x3BBFD970;
  v6[30] = v360;
  v406 = (v8[4] | ((v8[4] < 0x13u) << 8)) + 629373396;
  LODWORD(v360) = v406 ^ ((v406 ^ 0x55FD6416) - 1211849624) ^ ((v406 ^ 0x271077B3) - 987121725) ^ ((v406 ^ 0xF0D0D395) + 317264869) ^ ((v406 ^ 0x9FFBFFBE) + 2109882320) ^ v360;
  LODWORD(v360) = (((v360 ^ 0xD9DE091C) + 1005046126) ^ ((v360 ^ 0x1ECA8767) - 51165417) ^ ((v360 ^ 0x9D64FB6B) + 2136816411)) + 266100549;
  v6[30] = v360 ^ ((v360 ^ 0x2F0C56F9) - 1164271370) ^ ((v360 ^ 0x5DF79D18) - 933139691) ^ ((v360 ^ 0xE66D7CED) + 1945864930) ^ ((v360 ^ 0xFEFFBEFF) + 1802062068) ^ 0x2DDF436D;
  v407 = (v8[8] | ((v8[8] < 0x13u) << 8)) - 951725908;
  v408 = (2 * (v407 ^ 0xCE3D8A3B)) & 0x12D09434 ^ 0x12549415 ^ ((2 * (v407 ^ 0xCE3D8A3B)) ^ 0x928086A) & (v407 ^ 0xCE3D8A3B);
  v409 = (4 * v408) & 0x76D49434 ^ 0x24848421 ^ ((4 * v408) ^ 0x1B5250D4) & v408;
  v410 = (16 * v409) & 0xF6D49410 ^ 0x92949425 ^ ((16 * v409) ^ 0x6D494350) & v409;
  LODWORD(v360) = (2 * (v407 & 0x20E)) & (v407 ^ 0xCE3D8A3B) ^ v407 & 0x20E ^ ((2 * (v407 & 0x20E)) & 0xFFD7 | 0xE4000020);
  LODWORD(v360) = (4 * v360) & 0x90001030 ^ v360 ^ ((4 * v360) ^ 0x13044080) & v408;
  LODWORD(v360) = (16 * v360) & 0xF6D49430 ^ v360 ^ ((16 * v360) ^ 0x6C510200) & v409;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0xF6D49400 ^ ((v360 << 8) ^ 0x95102000) & v410 ^ 0x70518415;
  v6[31] = v407 ^ (2 * ((v360 << 16) & 0x76D40000 ^ v360 ^ ((v360 << 16) ^ 0x14350000) & ((v410 << 8) & 0x76D40000 ^ 0x22400000 ^ ((v410 << 8) ^ 0x54940000) & v410))) ^ 0xE700A4F9;
  v411 = (v8[5] | ((v8[5] < 0x13u) << 8)) - 2132519324;
  LODWORD(v360) = (v411 ^ 0x66C7D3F3) & (2 * (v411 & 0x8043E2)) ^ v411 & 0x8043E2;
  v412 = (2 * (v411 ^ 0x67C7D437)) & 0xC00717D4 ^ 0x21011055 ^ ((2 * (v411 ^ 0x67C7D437)) ^ 0xC2220FAA) & (v411 ^ 0x67C7D437);
  v413 = (4 * v412) & 0xE11F37D4 ^ 0x61032081 ^ ((4 * v412) ^ 0x847CDF54) & v412;
  v414 = (16 * v413) & 0xE11F37D0 ^ 0xE00C0285 ^ ((16 * v413) ^ 0x11F37D50) & v413;
  LODWORD(v360) = (4 * v360) & 0x31790 ^ v360 ^ ((4 * v360) | 0x1000000) & v412;
  LODWORD(v360) = (16 * v360) & 0x611F37C0 ^ v360 ^ ((16 * v360) ^ 0x14000000) & v413;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0xE11F3700 ^ ((v360 << 8) ^ 0x40000000) & v414 ^ 0x205F37D5;
  v415 = STACK[0x21C0];
  LODWORD(v360) = v411 ^ *(STACK[0x21C0] + 124) ^ (2 * ((v360 << 16) & 0x611F0000 ^ v360 ^ ((v360 << 16) ^ 0x37D50000) & ((v414 << 8) & 0x611F0000 ^ 0x60080000 ^ ((v414 << 8) ^ 0x1F370000) & v414)));
  LODWORD(v360) = (((v360 ^ 0x73ED2392) - 1965141978) ^ ((v360 ^ 0x97680EE6) + 1851489618) ^ ((v360 ^ 0xF82133A1) + 17973271)) - 1365744284;
  *(STACK[0x21C0] + 124) = v360 ^ ((v360 ^ 0xAF20A15) - 1015071238) ^ ((v360 ^ 0x32F6B7EE) - 75792381) ^ ((v360 ^ 0xD1898A1F) + 402963956) ^ ((v360 ^ 0xDFFFFFF7) + 376621084) ^ 0x2C1A5A8E;
  LODWORD(v360) = (v8[9] | ((v8[9] < 0x13u) << 8)) - 616052191;
  LODWORD(v360) = v360 ^ ((v360 ^ 0xEF6FB7BF) - 880337003) ^ ((v360 ^ 0xFCC28095) - 668325697) ^ ((v360 ^ 0xBF4D9F50) - 1683671172) ^ ((v360 ^ 0x77F7FFAE) + 1394562950) ^ 0x6447AC7B;
  *(v415 + 128) = v360;
  STACK[0xEB0] = v415;
  v416 = (v8[6] | ((v8[6] < 0x13u) << 8)) + 2075047978;
  LODWORD(v360) = ((v416 ^ 0x6D239750) - 517139124) ^ v416 ^ ((v416 ^ 0x4E0EBE03) - 1040172007) ^ ((v416 ^ 0xEF23AB88) + 1663904148) ^ ((v416 ^ 0xBFFFFF3F) + 871464229) ^ v360;
  LODWORD(v360) = (((v360 ^ 0x7BF19C0D) - 134275561) ^ ((v360 ^ 0x43A93970) - 811091092) ^ ((v360 ^ 0xF4F92336) + 2029494574)) + 1891971970;
  *(v415 + 128) = v360 ^ ((v360 ^ 0x6B307342) - 948395613) ^ ((v360 ^ 0x61B16E4D) - 839271250) ^ ((v360 ^ 0x22C95FCF) - 1904112336) ^ ((v360 ^ 0x7BFF6FDF) - 675824320) ^ 0xECE7D6B0;
  v417 = (v8[10] | ((v8[10] < 0x13u) << 8)) + 1814038306;
  LODWORD(v360) = (v417 ^ 0x65F4C3E) & (2 * (v417 & 0x4000EBE)) ^ v417 & 0x4000EBE;
  v418 = ((2 * (v417 ^ 0x65F5C46)) ^ 0x201D45F0) & (v417 ^ 0x65F5C46) ^ (2 * (v417 ^ 0x65F5C46)) & 0x104EB2F8;
  LODWORD(v360) = (v418 ^ 0x20F0) & (4 * v360) ^ v360;
  v419 = ((4 * (v418 ^ 0x12429208)) ^ 0x493ACBE0) & (v418 ^ 0x12429208) ^ (4 * (v418 ^ 0x12429208)) & 0x924EB2F8;
  LODWORD(v360) = (v419 ^ 0xA82E0) & (16 * v360) ^ v360;
  v420 = ((16 * (v419 ^ 0x92443018)) ^ 0x24EB2F80) & (v419 ^ 0x92443018) ^ (16 * (v419 ^ 0x92443018)) & 0x924EB2C0;
  LODWORD(v360) = v360 ^ 0x924EB2F8 ^ (v420 ^ 0x4A2200) & (v360 << 8);
  LODWORD(v360) = v417 ^ (2 * ((v360 << 16) & 0x124E0000 ^ v360 ^ ((v360 << 16) ^ 0x32F80000) & (((v420 ^ 0x92049078) << 8) & 0x124E0000 ^ 0x104C0000 ^ (((v420 ^ 0x92049078) << 8) ^ 0x4EB20000) & (v420 ^ 0x92049078)))) ^ 0x2322B1DC;
  v6[33] = v360;
  v421 = (v8[7] | ((v8[7] < 0x13u) << 8)) + 584402082;
  LODWORD(v360) = ((v421 ^ 0xD5016D6C) + 837195984) ^ v421 ^ ((v421 ^ 0xE96C786D) + 227249615) ^ ((v421 ^ 0xD88AE8A6) + 1013783814) ^ ((v421 ^ 0xFFFFF7FB) + 454558297) ^ v360;
  LODWORD(v360) = (((v360 ^ 0xFFFA7D90) + 454920244) ^ ((v360 ^ 0xF45713D5) + 280028791) ^ ((v360 ^ 0xA78B5E8B) + 1131195177)) + 1253421860;
  v6[33] = v360 ^ ((v360 ^ 0x761E1937) - 1134851305) ^ ((v360 ^ 0x4BCB3992) - 2121356364) ^ ((v360 ^ 0x7712FACC) - 1118344978) ^ ((v360 ^ 0x7F7DB7B7) - 1254611561) ^ 0x8284574C;
  LODWORD(v360) = (v8[11] | ((v8[11] < 0x13u) << 8)) - 1836159191;
  v422 = v360 ^ ((v360 ^ 0x1C3537D8) + 1905278354) ^ ((v360 ^ 0x315C9725) + 1559862637) ^ ((v360 ^ 0x48EC86B4) + 625577214) ^ ((v360 ^ 0xF7DFD3FF) - 1703224905) ^ 0x6D591667;
  v6[34] = v422;
  v423 = (v8[8] | ((v8[8] < 0x13u) << 8)) - 1619443856;
  v424 = ((2 * (v423 ^ 0xAE757008)) ^ 0xC15BC) & (v423 ^ 0xAE757008) ^ (2 * (v423 ^ 0xAE757008)) & 0x42108ADE;
  v425 = v424 ^ 0x424009E;
  v426 = ((4 * (v424 ^ 0x42128A42)) ^ 0x18DA2B78) & (v424 ^ 0x42128A42) ^ (4 * (v424 ^ 0x42128A42)) & 0xC6368AD8;
  v427 = v426 ^ 0x120A40;
  v428 = ((16 * (v426 ^ 0xC6248086)) ^ 0x6368ADE0) & (v426 ^ 0xC6248086) ^ (16 * (v426 ^ 0xC6248086)) & 0xC6368AC0;
  LODWORD(v360) = (2 * (v423 & 0x8417AD6)) & 0x2808C ^ v423 & 0x8417AD6 ^ (2 * (v423 & 0x8417AD6)) & (v423 ^ 0xAE757008);
  LODWORD(v360) = v427 & (16 * (v425 & (4 * v360) ^ v360)) ^ v425 & (4 * v360) ^ v360;
  LODWORD(v360) = v423 ^ v422 ^ (2 * (((v360 ^ 0xC6368ADE ^ (v428 ^ 0x42208800) & (v360 << 8)) << 16) & 0x46360000 ^ v360 ^ 0xC6368ADE ^ (v428 ^ 0x42208800) & (v360 << 8) ^ (((v360 ^ 0xC6368ADE ^ (v428 ^ 0x42208800) & (v360 << 8)) << 16) ^ 0xADE0000) & (((v428 ^ 0x8416021E) << 8) & 0x46360000 ^ 0x40340000 ^ (((v428 ^ 0x8416021E) << 8) ^ 0x368A0000) & (v428 ^ 0x8416021E))));
  LODWORD(v360) = (((v360 ^ 0x10C70CD0) + 255466566) ^ ((v360 ^ 0x68AE83C4) + 2001965906) ^ ((v360 ^ 0x676883AF) + 2023068475)) - 1768578494;
  v6[34] = v360 ^ ((v360 ^ 0x2366EBC9) - 447895668) ^ ((v360 ^ 0x5630507F) - 1877271490) ^ ((v360 ^ 0xA37D7737) + 1700150134) ^ ((v360 ^ 0xEFFF7F3C) + 701772671) ^ 0xC6D7506C;
  LODWORD(v360) = (v8[12] | ((v8[12] < 0x13u) << 8)) + 369041448;
  v429 = v360 ^ ((v360 ^ 0xF1FED3AA) + 466292600) ^ ((v360 ^ 0xF37EC2C0) + 424353310) ^ ((v360 ^ 0x68B5DFB6) - 2105539732) ^ ((v360 ^ 0x7FFFEDFE) - 1781911260) ^ 0x2A7AB531;
  v6[35] = v429;
  v430 = (v8[9] | ((v8[9] < 0x13u) << 8)) - 170073394;
  v431 = (2 * (v430 ^ 0x4DB45008)) & 0x10500770 ^ 0x4540110 ^ ((2 * (v430 ^ 0x4DB45008)) ^ 0xB82806E0) & (v430 ^ 0x4DB45008);
  v432 = (4 * v431) & 0x5C540770 ^ 0xC040230 ^ ((4 * v431) ^ 0x31501DC0) & v431;
  v433 = (16 * v432) & 0x5C540740 ^ 0x18140070 ^ ((16 * v432) ^ 0xC5407700) & v432;
  LODWORD(v360) = (2 * (v430 & 0x800778)) & 0x670 ^ v430 & 0x800778 ^ ((2 * (v430 & 0x800778)) | 0x20008000) & (v430 ^ 0x4DB45008);
  LODWORD(v360) = (4 * v360) & 0x4000760 ^ v360 ^ ((4 * v360) ^ 0x5010000) & v431;
  LODWORD(v360) = v360 ^ (16 * v360) & 0x5C540770 ^ ((16 * v360) ^ 0x54040000) & v432 ^ 0x5D104770;
  LODWORD(v360) = (v360 << 8) & 0x5C540700 ^ v360 ^ ((v360 << 8) ^ 0x54077000) & v433;
  LODWORD(v360) = v430 ^ v429 ^ (2 * ((v360 << 16) & 0x5C540000 ^ v360 ^ ((v360 << 16) ^ 0x7700000) & ((v433 << 8) & 0x5C540000 ^ 0x8500000 ^ ((v433 << 8) ^ 0x54070000) & v433)));
  LODWORD(v360) = (((v360 ^ 0xB26DD50D) + 1148351339) ^ ((v360 ^ 0x574ED9B4) - 1588494380) ^ ((v360 ^ 0xD373C332) + 627860822)) + 182172753;
  v6[35] = v360 ^ ((v360 ^ 0xBC890DBA) + 773384656) ^ ((v360 ^ 0x1A5D7316) - 1999857820) ^ ((v360 ^ 0x14C58ADD) - 2041286999) ^ ((v360 ^ 0xDF7FEFFB) + 1307446159) ^ 0x52DE8D99;
  LODWORD(v360) = (v8[13] | ((v8[13] < 0x13u) << 8)) + 1616630919;
  LODWORD(v360) = v360 ^ ((v360 ^ 0xF678DB61) + 1772255089) ^ ((v360 ^ 0x3502A0B5) - 1428681563) ^ ((v360 ^ 0x58C0D785) - 954565739) ^ ((v360 ^ 0xFB9FFFBF) + 1682265007) ^ 0xECC78B4;
  v6[36] = v360;
  v434 = (v8[10] | ((v8[10] < 0x13u) << 8)) - 576410742;
  LODWORD(v360) = ((v434 ^ 0x92963434) - 1198605680) ^ v434 ^ ((v434 ^ 0x7073BFAB) + 1516974353) ^ ((v434 ^ 0xC8FC1104) - 488333376) ^ ((v434 ^ 0xFFFEEBDF) - 706321051) ^ v360;
  v435 = (((v360 ^ 0xF58F4BEB) - 543701679) ^ ((v360 ^ 0x2254175) + 675139535) ^ ((v360 ^ 0x4CA45080) + 1723653692)) + 196070362;
  LODWORD(v360) = (v435 ^ 0xD4F64125) & (2 * (v435 & 0xC0F66A34)) ^ v435 & 0xC0F66A34;
  v436 = ((2 * (v435 ^ 0x54968525)) ^ 0x28C1DE22) & (v435 ^ 0x54968525) ^ (2 * (v435 ^ 0x54968525)) & 0x9460EF10;
  LODWORD(v360) = (v436 ^ 0x40C800) & (4 * v360) ^ v360;
  v437 = ((4 * (v436 ^ 0x94202111)) ^ 0x5183BC44) & (v436 ^ 0x94202111) ^ (4 * (v436 ^ 0x94202111)) & 0x9460EF10;
  LODWORD(v360) = (v437 ^ 0x1000AC00) & (16 * v360) ^ v360;
  v438 = ((16 * (v437 ^ 0x84604311)) ^ 0x460EF110) & (v437 ^ 0x84604311) ^ (16 * (v437 ^ 0x84604311)) & 0x9460EF10;
  LODWORD(v360) = v360 ^ 0x9460EF11 ^ (v438 ^ 0x400E100) & (v360 << 8);
  v6[36] = v435 ^ (2 * ((v360 << 16) & 0x14600000 ^ v360 ^ ((v360 << 16) ^ 0x6F110000) & (((v438 ^ 0x90600E01) << 8) & 0x14600000 ^ 0x14000000 ^ (((v438 ^ 0x90600E01) << 8) ^ 0x60EF0000) & (v438 ^ 0x90600E01)))) ^ 0x8EDE9F4C;
  LODWORD(v5) = (v8[14] | ((v8[14] < 0x13u) << 8)) + 1095760168;
  v439 = (2 * (v5 ^ 0x850DE4B6)) & 0x8842FB2 ^ 0x8242092 ^ ((2 * (v5 ^ 0x850DE4B6)) ^ 0x44421F64) & (v5 ^ 0x850DE4B6);
  v440 = (4 * v439) & 0x3BE5EFB0 ^ 0x10604132 ^ ((4 * v439) ^ 0xEF97BEC8) & v439;
  v441 = (16 * v440) & 0x3BE5EFA0 ^ 0x1A10492 ^ ((16 * v440) ^ 0xBE5EFB20) & v440;
  LODWORD(v360) = (2 * (v5 & 0x80304)) & 0x600 ^ v5 & 0x80304 ^ ((2 * (v5 & 0x80304)) | 0x1000) & (v5 ^ 0x850DE4B6);
  LODWORD(v360) = (4 * v360) & 0xFFFFCFFF ^ v360 ^ ((4 * v360) | 0x3002000) & v439;
  LODWORD(v360) = (16 * v360) & 0x3BE5EFB0 ^ v360 ^ ((16 * v360) ^ 0x3C028000) & v440;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x3BE5EF00 ^ ((v360 << 8) ^ 0xC0A80000) & v441 ^ 0x8547B2;
  LODWORD(v360) = v5 ^ (2 * ((v360 << 16) & 0x3BE50000 ^ v360 ^ ((v360 << 16) ^ 0x6FB20000) & ((v441 << 8) & 0x3BE50000 ^ 0x1A000000 ^ ((v441 << 8) ^ 0x65EF0000) & v441))) ^ 0xCA745F13;
  v6[37] = v360;
  LODWORD(v5) = (v8[11] | ((v8[11] < 0x13u) << 8)) - 61856400;
  LODWORD(v360) = ((v5 ^ 0x6940E247) + 1647179411) ^ v5 ^ ((v5 ^ 0xF4462BD5) - 13943039) ^ ((v5 ^ 0x163AD543) + 492290455) ^ ((v5 ^ 0x7FAEF7FB) + 1958994735) ^ v360;
  LODWORD(v5) = (((v360 ^ 0xF1B4FCBA) - 86382480) ^ ((v360 ^ 0x36E8B765) + 1032168369) ^ ((v360 ^ 0x67D92B86) + 1823752020)) - 371147033;
  LODWORD(v360) = (v5 ^ 0xA7FBD675) & (2 * (v5 & 0xC7F3D740)) ^ v5 & 0xC7F3D740;
  v442 = ((2 * (v5 ^ 0xA5F950F5)) ^ 0xC4150F6A) & (v5 ^ 0xA5F950F5) ^ (2 * (v5 ^ 0xA5F950F5)) & 0x620A87B4;
  LODWORD(v360) = (v442 ^ 0x700) & (4 * v360) ^ v360;
  v443 = ((4 * (v442 ^ 0x220A8095)) ^ 0x882A1ED4) & (v442 ^ 0x220A8095) ^ (4 * (v442 ^ 0x220A8095)) & 0x620A87B4;
  LODWORD(v360) = (v443 ^ 0xA0680) & (16 * v360) ^ v360;
  v444 = ((16 * (v443 ^ 0x62008121)) ^ 0x20A87B50) & (v443 ^ 0x62008121) ^ (16 * (v443 ^ 0x62008121)) & 0x620A8790;
  LODWORD(v360) = v360 ^ 0x620A87B5 ^ (v444 ^ 0x20080300) & (v360 << 8);
  v6[37] = v5 ^ (2 * ((v360 << 16) & 0x620A0000 ^ v360 ^ ((v360 << 16) ^ 0x7B50000) & (((v444 ^ 0x420284A5) << 8) & 0x620A0000 ^ 0x60080000 ^ (((v444 ^ 0x420284A5) << 8) ^ 0xA870000) & (v444 ^ 0x420284A5)))) ^ 0x53F15359;
  LODWORD(v5) = (v8[15] | ((v8[15] < 0x13u) << 8)) + 1010502073;
  v445 = (2 * (v5 ^ 0xAFF2EB94)) & 0x24008592 ^ 0x24049492 ^ ((2 * (v5 ^ 0xAFF2EB94)) ^ 0x90092324) & (v5 ^ 0xAFF2EB94);
  v446 = (4 * v445) & 0x6C0C9590 ^ 0x4C0C8192 ^ ((4 * v445) ^ 0xB0325648) & v445;
  v447 = (16 * v446) & 0x6C0C9580 ^ 0x2C048492 ^ ((16 * v446) ^ 0xC0C95920) & v446;
  LODWORD(v360) = ((2 * (v5 & 0x100206)) | 0x400000) & (v5 ^ 0xAFF2EB94) ^ v5 & 0x100206 ^ (((((v5 & 0x100206) >> 9) & 1) << 10) | 0x40001100);
  LODWORD(v360) = (4 * v360) & 0x6C0C9590 ^ v360 ^ ((4 * v360) ^ 0xB82400) & v445;
  LODWORD(v360) = (16 * v360) & 0x6C0C9590 ^ v360 ^ ((16 * v360) ^ 0x260D000) & v446;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x6C0C9500 ^ ((v360 << 8) ^ 0x269D0000) & v447 ^ 0x8260892;
  LODWORD(v360) = v5 ^ (2 * ((v360 << 16) & 0x6C0C0000 ^ v360 ^ ((v360 << 16) ^ 0x15920000) & ((v447 << 8) & 0x6C0C0000 ^ 0x60080000 ^ ((v447 << 8) ^ 0xC950000) & v447))) ^ 0x75E4F733;
  v6[38] = v360;
  v448 = (v8[12] | ((v8[12] < 0x13u) << 8)) + 1492606794;
  LODWORD(v360) = ((v448 ^ 0xBFFB96EE) + 289295382) ^ v448 ^ ((v448 ^ 0xCD692D6B) + 1672279953) ^ ((v448 ^ 0xDE5565DE) + 1888534310) ^ ((v448 ^ 0xFDFDFB5F) + 1396187557) ^ v360;
  LODWORD(v360) = (((v360 ^ 0x627A7553) - 859852887) ^ ((v360 ^ 0x8E335B5) - 1507397809) ^ ((v360 ^ 0x5DA0C7F3) - 211477239)) + 1056072103;
  v6[38] = v360 ^ ((v360 ^ 0x9EEDB73A) + 438565928) ^ ((v360 ^ 0x609370EA) - 463651848) ^ ((v360 ^ 0x2AB0ACDC) - 1367414846) ^ ((v360 ^ 0xAFFFDFEE) + 724669684) ^ 0x1D3216F3;
  v449 = (*v8 | ((*v8 < 0x13u) << 8)) - 1684481884;
  v450 = (2 * (v449 ^ 0x2CF50FD4)) & 0x48532D7A ^ 0x4851050A ^ ((2 * (v449 ^ 0x2CF50FD4)) ^ 0x902C52F4) & (v449 ^ 0x2CF50FD4);
  v451 = (4 * v450) & 0x48573D78 ^ 0x48030812 ^ ((4 * v450) ^ 0x215CF5E8) & v450;
  v452 = (16 * v451) & 0x48573D60 ^ 0x4804285A ^ ((16 * v451) ^ 0x8573D7A0) & v451;
  LODWORD(v360) = (2 * (v449 & 0x2AE)) & 0xFFFB ^ v449 & 0x2AE ^ ((2 * (v449 & 0x2AE)) | 0x1000000) & (v449 ^ 0x2CF50FD4);
  LODWORD(v360) = (4 * v360) & 0x1D78 ^ v360 ^ ((4 * v360) | 0x200C000) & v450;
  LODWORD(v360) = (16 * v360) & 0x48573D70 ^ v360 ^ ((16 * v360) ^ 0x8030000) & v451;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x48573D00 ^ ((v360 << 8) ^ 0x83300000) & v452 ^ 0x40C40D7A;
  LODWORD(v360) = v449 ^ (2 * ((v360 << 16) & 0x48570000 ^ v360 ^ ((v360 << 16) ^ 0x3D7A0000) & ((v452 << 8) & 0x48570000 ^ 0x8420000 ^ ((v452 << 8) ^ 0x573D0000) & v452))) ^ 0xD13D5301;
  v6[39] = v360;
  v453 = (v8[13] | ((v8[13] < 0x13u) << 8)) - 1592275270;
  LODWORD(v360) = ((v453 ^ 0xD7303413) - 1315610727) ^ v453 ^ ((v453 ^ 0x6AF8D890) + 207467292) ^ ((v453 ^ 0x9A3DC70C) - 57103224) ^ ((v453 ^ 0xBEAFBFFB) - 670378895) ^ v360;
  LODWORD(v360) = (((v360 ^ 0xDBFF5DE1) - 1118161301) ^ ((v360 ^ 0x765ED8E8) + 284930916) ^ ((v360 ^ 0x16E0A26) + 1741382062)) + 306385639;
  v6[39] = v360 ^ ((v360 ^ 0x131CF018) - 1844190400) ^ ((v360 ^ 0x52F4A13) - 2078254795) ^ ((v360 ^ 0xD73CA928) + 1446230544) ^ ((v360 ^ 0xBFFFFFFB) + 1055976669) ^ 0x4B65F783;
  LODWORD(v360) = (v8[1] | ((v8[1] < 0x13u) << 8)) + 1855443213;
  v454 = v360 ^ ((v360 ^ 0xBEF1A2E9) + 794107711) ^ ((v360 ^ 0x3690D65D) - 1489736821) ^ ((v360 ^ 0x99C4CBEB) + 140539453) ^ ((v360 ^ 0x7FFEFD77) - 296075103) ^ 0xAE8C979F;
  v6[40] = v454;
  LODWORD(v5) = (v8[14] | ((v8[14] < 0x13u) << 8)) - 419285030;
  v455 = (2 * (v5 ^ 0x347889E)) & 0x880AF2 ^ 0x20048A12 ^ ((2 * (v5 ^ 0x347889E)) ^ 0x444115E4) & (v5 ^ 0x347889E);
  v456 = ((4 * v455) ^ 0x8FF22BC8) & v455 ^ (4 * v455) & 0x23FC8AF0;
  v457 = v456 ^ 0x3F00AC2;
  v458 = ((16 * (v456 ^ 0x200C8032)) ^ 0x3FC8AF20) & (v456 ^ 0x200C8032) ^ (16 * (v456 ^ 0x200C8032)) & 0x23FC8AE0;
  LODWORD(v360) = (2 * (v5 & 0x2026C)) & 0x400D0 ^ v5 & 0x2026C ^ ((2 * (v5 & 0x2026C)) | 0x40000000) & (v5 ^ 0x347889E);
  LODWORD(v360) = (4 * v360) & 0x180AF0 ^ v360 ^ ((4 * v360) | 0x80000000) & v455;
  LODWORD(v360) = v457 & (16 * v360) ^ v360 ^ 0x3FC8AF2 ^ (v458 ^ 0x23C88AD2) & ((v457 & (16 * v360) ^ v360) << 8);
  LODWORD(v360) = v5 ^ v454 ^ (2 * ((v360 << 16) & 0x23FC0000 ^ v360 ^ ((v360 << 16) ^ 0xAF20000) & (((v458 ^ 0x3400D2) << 8) & 0x23FC0000 ^ 0x3740000 ^ (((v458 ^ 0x3400D2) << 8) ^ 0x7C8A0000) & (v458 ^ 0x3400D2))));
  v459 = (((v360 ^ 0x49505AE9) - 737299809) ^ ((v360 ^ 0xA82B7806) + 896962674) ^ ((v360 ^ 0x430EE0D0) - 564983640)) + 2025556837;
  LODWORD(v360) = (v459 ^ 0x25DD1064) & (2 * (v459 & 0xA5D95506)) ^ v459 & 0xA5D95506;
  LODWORD(v5) = ((2 * (v459 ^ 0x6E5DB868)) ^ 0x9709DADC) & (v459 ^ 0x6E5DB868) ^ (2 * (v459 ^ 0x6E5DB868)) & 0xCB84ED6E;
  LODWORD(v360) = (v5 ^ 0x8300C808) & (4 * v360) ^ v360;
  LODWORD(v5) = ((4 * (v5 ^ 0x48842522)) ^ 0x2E13B5B8) & (v5 ^ 0x48842522) ^ (4 * (v5 ^ 0x48842522)) & 0xCB84ED68;
  LODWORD(v360) = (v5 ^ 0xA00A520) & (16 * v360) ^ v360;
  LODWORD(v5) = ((16 * (v5 ^ 0xC1844846)) ^ 0xB84ED6E0) & (v5 ^ 0xC1844846) ^ (16 * (v5 ^ 0xC1844846)) & 0xCB84ED60;
  LODWORD(v360) = v360 ^ 0xCB84ED6E ^ (v5 ^ 0x8804C400) & (v360 << 8);
  v6[40] = v459 ^ (2 * ((v360 << 16) & 0x4B840000 ^ v360 ^ ((v360 << 16) ^ 0x6D6E0000) & (((v5 ^ 0x4380290E) << 8) & 0x4B840000 ^ 0x4B000000 ^ (((v5 ^ 0x4380290E) << 8) ^ 0x4ED0000) & (v5 ^ 0x4380290E)))) ^ 0x600F5A6D;
  LODWORD(v360) = (v8[2] | ((v8[2] < 0x13u) << 8)) - 200110406;
  v460 = v360 ^ ((v360 ^ 0xAB666DA7) - 1488064997) ^ ((v360 ^ 0xB5C01A67) - 1175741989) ^ ((v360 ^ 0x939DF67E) - 1615432252) ^ ((v360 ^ 0x7EEFFDFC) + 1925480002) ^ 0x21FF928B;
  v6[41] = v460;
  LODWORD(v5) = (v8[15] | ((v8[15] < 0x13u) << 8)) - 770845066;
  LODWORD(v360) = (v5 ^ 0xCCEF73D3) & (2 * (v5 & 0xD43D0)) ^ v5 & 0xD43D0;
  v461 = ((2 * (v5 ^ 0xCCFFF253)) ^ 0x12A02306) & (v5 ^ 0xCCFFF253) ^ (2 * (v5 ^ 0xCCFFF253)) & 0x39401182;
  LODWORD(v360) = (v461 ^ 0x100) & (4 * v360) ^ v360;
  v462 = ((4 * (v461 ^ 0x9509081)) ^ 0x2542460C) & (v461 ^ 0x9509081) ^ (4 * (v461 ^ 0x9509081)) & 0xF9509180;
  LODWORD(v360) = (v462 ^ 0xE1400000) & (16 * v360) ^ v360;
  v463 = ((16 * (v462 ^ 0x18109183)) ^ 0x95091830) & (v462 ^ 0x18109183) ^ (16 * (v462 ^ 0x18109183)) & 0xF9509180;
  LODWORD(v360) = v360 ^ 0x9509183 ^ (v463 ^ 0x91001000) & (v360 << 8);
  LODWORD(v360) = v5 ^ v460 ^ (2 * ((v360 << 16) & 0x79500000 ^ v360 ^ ((v360 << 16) ^ 0x11830000) & (((v463 ^ 0x68508183) << 8) & 0x79500000 ^ 0x29400000 ^ (((v463 ^ 0x68508183) << 8) ^ 0x50910000) & (v463 ^ 0x68508183))));
  v464 = (((v360 ^ 0xCB872DF5) - 780758307) ^ ((v360 ^ 0xBEA51BFD) - 1537956651) ^ ((v360 ^ 0x42079817) + 1492526911)) + 2044640610;
  LODWORD(v360) = (v464 ^ 0xB58AB812) & (2 * (v464 & 0xB60A3C1B)) ^ v464 & 0xB60A3C1B;
  v465 = ((2 * (v464 ^ 0xD98AF026)) ^ 0xDF01987A) & (v464 ^ 0xD98AF026) ^ (2 * (v464 ^ 0xD98AF026)) & 0x6F80CC3C;
  LODWORD(v360) = (v465 ^ 0x48008038) & (4 * v360) ^ v360;
  v466 = ((4 * (v465 ^ 0x20804405)) ^ 0xBE0330F4) & (v465 ^ 0x20804405) ^ (4 * (v465 ^ 0x20804405)) & 0x6F80CC3C;
  LODWORD(v360) = (v466 ^ 0x2E000030) & (16 * v360) ^ v360;
  v467 = ((16 * (v466 ^ 0x4180CC09)) ^ 0xF80CC3D0) & (v466 ^ 0x4180CC09) ^ (16 * (v466 ^ 0x4180CC09)) & 0x6F80CC10;
  LODWORD(v360) = v360 ^ 0x6F80CC3D ^ (v467 ^ 0x6800C000) & (v360 << 8);
  v6[41] = v464 ^ (2 * ((v360 << 16) & 0x6F800000 ^ v360 ^ ((v360 << 16) ^ 0x4C3D0000) & (((v467 ^ 0x7800C2D) << 8) & 0x6F800000 ^ 0x6F000000 ^ (((v467 ^ 0x7800C2D) << 8) ^ 0xCC0000) & (v467 ^ 0x7800C2D)))) ^ 0x23204AA8;
  v468 = (v8[3] | ((v8[3] < 0x13u) << 8)) + 596148959;
  LODWORD(v360) = (v468 ^ 0x6D7183A8) & (2 * (v468 & 0x32C)) ^ v468 & 0x32C;
  v469 = (2 * (v468 ^ 0x6D7187E0)) & 0x91C204CC ^ 0x90429444 ^ ((2 * (v468 ^ 0x6D7187E0)) ^ 0x42890198) & (v468 ^ 0x6D7187E0);
  v470 = (4 * v469) & 0xB1C694C8 ^ 0x30C484CC ^ ((4 * v469) ^ 0xC71A5330) & v469;
  v471 = ((16 * v470) ^ 0x1C694CC0) & v470 ^ (16 * v470) & 0xB1C694C0;
  LODWORD(v360) = (4 * v360) & 0x14C0 ^ v360 ^ ((4 * v360) | 0x6000000) & v469;
  LODWORD(v360) = (16 * v360) & 0x31C694C0 ^ v360 ^ ((16 * v360) ^ 0x18000000) & v470;
  v472 = v468 ^ (2 * (((v360 ^ 0x204694CC ^ (v471 ^ 0x1040040C) & (v360 << 8)) << 16) & 0x31C60000 ^ v360 ^ 0x204694CC ^ (v471 ^ 0x1040040C) & (v360 << 8) ^ (((v360 ^ 0x204694CC ^ (v471 ^ 0x1040040C) & (v360 << 8)) << 16) ^ 0x14CC0000) & (((v471 ^ 0xA186900C) << 8) & 0x31C60000 ^ 0x31420000 ^ (((v471 ^ 0xA186900C) << 8) ^ 0x46940000) & (v471 ^ 0xA186900C)))) ^ 0xFA8B7E82;
  v6[42] = v472;
  v473 = (*v8 | ((*v8 < 0x13u) << 8)) - 1576341434;
  v474 = (2 * (v473 ^ 0x20438081)) & 0x490C280 ^ 0x44104A81 ^ ((2 * (v473 ^ 0x20438081)) ^ 0x82411102) & (v473 ^ 0x20438081);
  v475 = (4 * v474) & 0x45F1CA80 ^ 0x4030C081 ^ ((4 * v474) ^ 0x17C72A04) & v474;
  v476 = (16 * v475) & 0x45F1CA80 ^ 0xE14281 ^ ((16 * v475) ^ 0x5F1CA810) & v475;
  LODWORD(v360) = v474 & ((4 * (v473 & 0x20000200)) | 0xB0000) ^ ((v473 | (4 * (v473 & 0x20000200))) & 0x20000A00 | 0x320081);
  LODWORD(v360) = (16 * v360) & 0x1B08800 ^ v360 ^ ((16 * v360) ^ 0x31C0810) & v475;
  LODWORD(v360) = v360 ^ (v360 << 8) & 0x45F1CA00 ^ ((v360 << 8) ^ 0x21C88100) & v476 ^ 0x5108200;
  LODWORD(v360) = v472 ^ v473 ^ (2 * ((v360 << 16) & 0x45F10000 ^ v360 ^ ((v360 << 16) ^ 0x4A810000) & ((v476 << 8) & 0x45F10000 ^ 0x4310000 ^ ((v476 << 8) ^ 0x71CA0000) & v476)));
  LODWORD(v360) = (((v360 ^ 0xF2AF001E) + 1644372196) ^ ((v360 ^ 0x43F39FD5) - 748699863) ^ ((v360 ^ 0xBA3604FF) + 714744835)) + 5287152;
  v6[42] = v360 ^ ((v360 ^ 0xFD7C4D23) + 1020914907) ^ ((v360 ^ 0xC8AB2D15) + 151948525) ^ ((v360 ^ 0x7472C1AF) - 1244176297) ^ ((v360 ^ 0x7FFFFF9F) - 1101373849) ^ 0x5A631A30;
  v477 = (v8[4] | ((v8[4] < 0x13u) << 8)) - 382551606;
  LODWORD(v360) = (v477 ^ 0xFC069FD3) & (2 * (v477 & 0x21BD4)) ^ v477 & 0x21BD4;
  v478 = (2 * (v477 ^ 0xFC02BCFB)) & 0x2A00032E ^ 0x29042121 ^ ((2 * (v477 ^ 0xFC02BCFB)) ^ 0x1410065E) & (v477 ^ 0xFC02BCFB);
  v479 = (4 * v478) & 0x6B0CE32C ^ 0x430C6303 ^ ((4 * v478) ^ 0x2C338CBC) & v478;
  v480 = ((16 * v479) ^ 0x30CE32F0) & v479 ^ (16 * v479) & 0xEB0CE320;
  LODWORD(v360) = (4 * v360) & 0x8E320 ^ v360 ^ ((4 * v360) | 0xC000000) & v478;
  LODWORD(v360) = (16 * v360) & 0x6B0CE320 ^ v360 ^ ((16 * v360) ^ 0x30000000) & v479;
  v481 = v477 ^ (2 * (((v360 ^ 0x400CE32F ^ (v480 ^ 0xA00C220F) & (v360 << 8)) << 16) & 0x6B0C0000 ^ v360 ^ 0x400CE32F ^ (v480 ^ 0xA00C220F) & (v360 << 8) ^ (((v360 ^ 0x400CE32F ^ (v480 ^ 0xA00C220F) & (v360 << 8)) << 16) ^ 0x632F0000) & (((v480 ^ 0x4B00C10F) << 8) & 0x6B0C0000 ^ 0x630C0000 ^ (((v480 ^ 0x4B00C10F) << 8) ^ 0xCE30000) & (v480 ^ 0x4B00C10F)))) ^ 0x30151167;
  v6[43] = v481;
  v482 = (v8[1] | ((v8[1] < 0x13u) << 8)) - 1044519500;
  v483 = (2 * (v482 ^ 0xEF87251C)) & 0x870018E ^ 0xAA081082 ^ ((2 * (v482 ^ 0xEF87251C)) ^ 0x430C31C) & (v482 ^ 0xEF87251C);
  v484 = (4 * v483) & 0xAA787188 ^ 0x2183186 ^ ((4 * v483) ^ 0xA9E1C638) & v483;
  v485 = (16 * v484) & 0xAA787180 ^ 0x878610E ^ ((16 * v484) ^ 0xA78718E0) & v484;
  LODWORD(v360) = ((2 * (v482 & 0x41040492)) & 0x2080104 | v482 & 0x41040492) ^ ((2 * (v482 & 0x41040492)) | 0x328000) & (v482 ^ 0xEF87251C);
  LODWORD(v360) = (4 * v360) & 0x8783088 ^ v360 ^ ((4 * v360) ^ 0x3250000) & v483;
  LODWORD(v360) = v360 ^ (16 * v360) & 0xAA787180 ^ ((16 * v360) ^ 0x2E940000) & v484 ^ 0x281318E;
  LODWORD(v360) = (v360 << 8) & 0xAA787100 ^ v360 ^ ((v360 << 8) ^ 0x78718E00) & v485;
  LODWORD(v360) = v481 ^ v482 ^ (2 * ((v360 << 16) & 0x2A780000 ^ v360 ^ ((v360 << 16) ^ 0x718E0000) & ((v485 << 8) & 0x2A780000 ^ 0x2080000 ^ ((v485 << 8) ^ 0x78710000) & v485)));
  LODWORD(v360) = (((v360 ^ 0x6A1B18A4) - 1810149162) ^ ((v360 ^ 0xE1BC4229) + 532417113) ^ ((v360 ^ 0xBD4265EE) + 1128410528)) - 1616750710;
  v6[43] = v360 ^ ((v360 ^ 0xC7A87DA) - 112215091) ^ ((v360 ^ 0x40004F4) - 248170269) ^ ((v360 ^ 0x6F4FBDB8) - 1703247441) ^ ((v360 ^ 0x6DFFFD7F) - 1731542678) ^ 0x3DD04B04;
  LOBYTE(v360) = v8[35];
  LOBYTE(v478) = v360 & 0x3C ^ 0xCD;
  LOBYTE(v360) = v360 ^ (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * (((2 * v360) & 0x44 ^ 0x1E) & (v360 ^ 2) ^ v478)) ^ v478)) ^ v478)) ^ v478)) ^ v478));
  v486 = v360 & 0xAE;
  v487 = v360 ^ 0xFFFFFFE1;
  LOBYTE(v360) = v8[34];
  LOBYTE(v484) = v360 & 0xC0 | 0x13;
  LODWORD(v360) = (v360 ^ (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & 0x22 ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484))) << 8;
  LOBYTE(v484) = v8[33];
  LOBYTE(v457) = v484 & 0x9A ^ 0xBC;
  v488 = (v484 ^ (2 * ((v484 ^ 0x20) & (2 * ((v484 ^ 0x20) & (2 * ((v484 ^ 0x20) & (2 * ((v484 ^ 0x20) & (2 * (v484 & (2 * v484) & 0x44 ^ v457)) ^ v457)) ^ v457)) ^ v457)) ^ v457))) << 16;
  v489 = v8[32];
  LODWORD(v415) = v489 & 0xFFFFFFB0 ^ 0xFFFFFF8B;
  v6[44] = v486 ^ 0xB924C4B6 ^ ((v360 & 0x2100 | (((((v489 ^ (2 * ((v489 ^ 0x22) & (2 * ((v489 ^ 0x22) & (2 * ((v489 ^ 0x22) & (2 * ((v489 ^ 0x22) & (2 * (((2 * v489) & 0x44 | 0x12) & (v489 ^ 2) ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ 0x86) << 24) ^ 0x42F5B0DC) & (v488 ^ 0xFF65B0DC) | v488 & 0xA0000) ^ 0xE0286E81) & (v360 ^ 0xFFFF1EDD)) ^ 0xBEE4BB0C) & v487;
  LOBYTE(v360) = v8[39];
  LOBYTE(v415) = v360 & 0xC2 ^ 0x90;
  LOBYTE(v360) = v360 ^ (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * (v360 & (2 * v360) & 0x44 ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ v415));
  LODWORD(v415) = v360 & 0x4D | 0xE4772FB0;
  v490 = v360 ^ 0xFFFFFF3D;
  LOBYTE(v360) = v8[38];
  LOBYTE(v483) = v360 & 0x7E ^ 0x6E;
  LOBYTE(v360) = v360 ^ (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * (((2 * v360) & 0x44 ^ 0x5C) & v360 ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ v483));
  LOBYTE(v486) = v8[37];
  LOBYTE(v489) = v486 & 0xD4 ^ 0x99;
  v491 = (v486 ^ (2 * ((v486 ^ 0x22) & (2 * ((v486 ^ 0x22) & (2 * ((v486 ^ 0x22) & (2 * ((v486 ^ 0x22) & (2 * (((2 * v486) & 0x44 ^ 0x76) & (v486 ^ 0x22) ^ v489)) ^ v489)) ^ v489)) ^ v489)) ^ v489))) << 16;
  v492 = v8[36];
  v493 = v492 & 0x4E ^ 0xFFFFFFD6;
  v6[45] = (((v360 << 8) & 0x4F00 | (((((v492 ^ (2 * ((v492 ^ 0x20) & (2 * ((v492 ^ 0x20) & (2 * ((v492 ^ 0x20) & (2 * ((v492 ^ 0x20) & (2 * (((2 * v492) & 0x44444444 ^ 0x6C) & (v492 ^ 0x20) ^ v493)) ^ v493)) ^ v493)) ^ v493)) ^ v493)) ^ 0xE4) << 24) ^ 0x2131D55B) & (v491 ^ 0xFF21D55B) | v491 & 0xCE0000) ^ 0x775E65A2) & ((v360 << 8) ^ 0xFFFF86FB)) ^ 0x33FE514B) & v490 ^ v415;
  LOBYTE(v360) = v8[43];
  LOBYTE(v483) = v360 & 0x4A ^ 0xD4;
  LOBYTE(v490) = v360 ^ (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * (v360 & (2 * v360) & 0x44 ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ v483));
  LOBYTE(v360) = v8[42];
  LODWORD(v360) = (v360 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * v360) & 0x44 | 0x22) & (v360 ^ 0x22))) ^ 0x26) & (v360 ^ 0x22))) ^ 0x26) & (v360 ^ 0x22))) ^ 0x26) & (v360 ^ 0x22))) ^ 0x66) & (v360 ^ 0x22)))) << 8;
  LODWORD(v415) = v360 & 0xD800;
  v494 = v360 ^ 0xFFFF41FF;
  LOBYTE(v360) = v8[41];
  v495 = v360 & 0x5A ^ 0xDC;
  LOBYTE(v360) = v360 ^ (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * (v360 & (2 * v360) & 0x44 ^ v495)) ^ v495)) ^ v495)) ^ v495)) ^ v495));
  v496 = v8[40];
  v497 = ((2 * v496) & 0x44 ^ 0x4E) & (v496 ^ 2);
  LODWORD(v5) = v496 & 0xFFFFFFEC ^ 0xFFFFFFA5;
  v496 ^= 0x22u;
  v6[46] = v490 & 0xED ^ 0xCC464BB1 ^ ((v415 | (((((v496 & (2 * (v496 & (2 * (v496 & (2 * (v496 & (2 * (v497 ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5) << 25) ^ (v496 << 24) ^ 0xEFBAD23) & ((v360 << 16) ^ 0xFFA1AD23) & 0xFFFBFFFF | (((v360 >> 2) & 1) << 18)) ^ 0x6A758A5D) & v494) ^ 0x6E7B656C) & (v490 ^ 0xFFFFFFB5);
  LOBYTE(v360) = v8[47];
  LOBYTE(v5) = v360 & 0x98 ^ 0x3F;
  LOBYTE(v360) = v360 ^ (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * (((2 * v360) | 0x3A) & (v360 ^ 0x22) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5));
  v498 = v360 & 0x75;
  LODWORD(v5) = v360 ^ 0xFFFFFF67;
  LOBYTE(v360) = v8[46];
  LOBYTE(v415) = v360 & 0x1C ^ 0x7D;
  LODWORD(v360) = (v360 ^ (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * ((v360 ^ 0x22) & (2 * (((2 * v360) & 0x44 ^ 0x3E) & (v360 ^ 0x22) ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ v415))) << 8;
  v499 = v360 & 0x9D00;
  v500 = v360 ^ 0xFFFF6AD7;
  LOBYTE(v360) = v8[45];
  LOBYTE(v415) = (v360 & 0xA2 | 0x1C) ^ v360 & 0x78;
  LOBYTE(v360) = v360 ^ (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * ((v360 ^ 0x20) & (2 * (v360 & (2 * v415) ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ v415));
  LODWORD(v415) = v8[44];
  v501 = v415 & 0x2E ^ 0xFFFFFFC6;
  LODWORD(v360) = ((((v360 << 16) ^ 0xFF07FFFF) & ((((v415 ^ 0x20) & (2 * ((v415 ^ 0x20) & (2 * ((v415 ^ 0x20) & (2 * ((v415 ^ 0x20) & (2 * (((2 * v415) & 0x44444444 ^ 0xC) & v415 ^ v501)) ^ v501)) ^ v501)) ^ v501)) ^ v501) << 25) ^ (v415 << 24) ^ 0xE75C6FD1) | (v360 << 16) & 0xA30000) ^ 0x8DF20D87) & v500;
  v502 = STACK[0x2E38];
  v6[47] = v498 ^ 0x75778BC1 ^ ((v499 | v360) ^ 0x777B96DC) & v5;
  v503 = STACK[0xE50];
  v504 = *STACK[0xE50];
  v505 = STACK[0xE58];
  v506 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v507 = *(v504 + v506);
  v508 = 1864610357 * ((1864610357 * ((v507 ^ (v502 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v507 ^ (v502 + 3)) & 0x7FFFFFFFu)) >> 16));
  v509 = 1864610357 * ((1864610357 * ((v507 ^ (v502 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v507 ^ (v502 + 2)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v5) = *(v3 + (v508 >> 24) + 1) ^ *(v2 + (v508 >> 24) + 1) ^ *(v4 + (v508 >> 24)) ^ v502[3] ^ v508 ^ (-19 * (v508 >> 24));
  LOBYTE(v509) = *(v2 + (v509 >> 24) + 1) ^ v502[2] ^ *(v3 + (v509 >> 24) + 1) ^ *(v4 + (v509 >> 24)) ^ (53 * ((53 * (v507 ^ (v502 + 2))) ^ ((1864610357 * ((v507 ^ (v502 + 2)) & 0x7FFFFFFFu)) >> 16))) ^ (-19 * ((1864610357 * ((1864610357 * ((v507 ^ (v502 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v507 ^ (v502 + 2)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v510 = 1864610357 * ((1864610357 * ((v507 ^ (v502 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v507 ^ (v502 + 1)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v510) = *(v2 + (v510 >> 24) + 1) ^ v502[1] ^ *(v3 + (v510 >> 24) + 1) ^ *(v4 + (v510 >> 24)) ^ (53 * ((53 * (v507 ^ (v502 + 1))) ^ ((1864610357 * ((v507 ^ (v502 + 1)) & 0x7FFFFFFFu)) >> 16))) ^ (-19 * ((1864610357 * ((1864610357 * ((v507 ^ (v502 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v507 ^ (v502 + 1)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v511 = 1864610357 * ((1864610357 * ((v507 ^ v502) & 0x7FFFFFFF)) ^ ((1864610357 * ((v507 ^ v502) & 0x7FFFFFFF)) >> 16));
  v6[48] = v5 & 0xE5 ^ 0x5A823D5D ^ (((((((v511 ^ *(v2 + (v511 >> 24) + 1) ^ *(v3 + (v511 >> 24) + 1) ^ *(v4 + (v511 >> 24)) ^ (-19 * (v511 >> 24)) ^ *v502) << 24) ^ 0x1240DAB0) & ~(v510 << 16) | (v510 << 16) & 0xFFBFFFFF) ^ 0xAB5E1634) & ~(v509 << 8) | (v509 << 8) & 0x3333) ^ 0x2AE4209E) & (v5 ^ 0xFFFFFFFE);
  v512 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v513 = *v503;
  v514 = *(*v503 + v512);
  v515 = 1864610357 * ((1864610357 * ((v514 ^ (v502 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v514 ^ (v502 + 7)) & 0x7FFFFFFFu)) >> 16));
  v516 = v515 >> 24;
  LODWORD(v515) = *(v2 + (v515 >> 24) + 1) ^ v502[7] ^ *(v3 + (v515 >> 24) + 1) ^ *(v4 + (v515 >> 24)) ^ v515;
  v517 = -19 * v516;
  LOBYTE(v516) = v515 ^ ~(-19 * v516);
  v518 = (v515 ^ v517) & 0xA9;
  v519 = 1864610357 * ((1864610357 * ((v514 ^ (v502 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v514 ^ (v502 + 6)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v514) = *(v3 + (v519 >> 24) + 1) ^ *(v2 + (v519 >> 24) + 1) ^ *(v4 + (v519 >> 24)) ^ v502[6] ^ v519 ^ (-19 * BYTE3(v519));
  LODWORD(v519) = *(v504 + v506);
  v520 = 1864610357 * ((1864610357 * ((v519 ^ (v502 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v519 ^ (v502 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v506) = *(v2 + (v520 >> 24) + 1) ^ v502[5] ^ *(v3 + (v520 >> 24) + 1) ^ *(v4 + (v520 >> 24));
  LOBYTE(v520) = (53 * ((53 * (v519 ^ (v502 + 5))) ^ ((1864610357 * ((v519 ^ (v502 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-19 * ((1864610357 * ((1864610357 * ((v519 ^ (v502 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v519 ^ (v502 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v521 = 1864610357 * ((1864610357 * ((v519 ^ (v502 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v519 ^ (v502 + 4)) & 0x7FFFFFFF)) >> 16));
  v6[49] = ((((((((*(v3 + (v521 >> 24) + 1) ^ *(v2 + (v521 >> 24) + 1) ^ *(v4 + (v521 >> 24)) ^ v502[4] ^ v521 ^ (-19 * (v521 >> 24))) << 24) ^ 0x79BEFAD9) & ~((v506 ^ v520) << 16) | ((v506 ^ v520) << 16) & 0x410000) ^ 0xC89F7A97) & ~(v514 << 8) & 0xFFFF80FF | ((v514 & 0x7F) << 8)) ^ 0xCA871A18) & (v516 | 0xFFFFFF00) | v518) ^ 0x45D73A07;
  LODWORD(v521) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v522 = 1864610357 * ((1864610357 * ((v521 ^ (v502 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v521 ^ (v502 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v522) = *(v2 + (v522 >> 24) + 1) ^ v502[11] ^ *(v3 + (v522 >> 24) + 1) ^ *(v4 + (v522 >> 24)) ^ (53 * ((53 * (v521 ^ (v502 + 11))) ^ ((1864610357 * ((v521 ^ (v502 + 11)) & 0x7FFFFFFF)) >> 16))) ^ (-19 * ((1864610357 * ((1864610357 * ((v521 ^ (v502 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v521 ^ (v502 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v523 = 1864610357 * ((1864610357 * ((v521 ^ (v502 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v521 ^ (v502 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v523) = *(v2 + (v523 >> 24) + 1) ^ v502[10] ^ *(v3 + (v523 >> 24) + 1) ^ *(v4 + (v523 >> 24)) ^ (53 * ((53 * (v521 ^ (v502 + 10))) ^ ((1864610357 * ((v521 ^ (v502 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-19 * ((1864610357 * ((1864610357 * ((v521 ^ (v502 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v521 ^ (v502 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v524 = 1864610357 * ((1864610357 * ((v521 ^ (v502 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v521 ^ (v502 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v524) = v524 ^ *(v2 + (v524 >> 24) + 1) ^ *(v3 + (v524 >> 24) + 1) ^ *(v4 + (v524 >> 24)) ^ (-19 * BYTE3(v524)) ^ v502[9];
  LODWORD(v512) = 1864610357 * ((*(v513 + v512) ^ (v502 + 8)) & 0x7FFFFFFF);
  v525 = 1864610357 * (v512 ^ WORD1(v512));
  v6[50] = ((((((*(v2 + (v525 >> 24) + 1) ^ *(v3 + (v525 >> 24) + 1) ^ *(v4 + (v525 >> 24)) ^ v502[8] ^ v525 ^ (-19 * (v525 >> 24)) ^ 0xFFFFFF87) << 24) ^ 0x1918CE3C) & ~(v524 << 16) | (v524 << 16) & 0xFFE7FFFF) ^ 0xFCF13000) & ~(v523 << 8) ^ (((v523 & 1) << 8) | 0x6C39C2C0)) & (v522 ^ 0xFFFFFFFC) ^ (v522 & 3 | 0x37BD1930);
  v526 = STACK[0xD70];
  v527 = *(&off_1010A0B50 + (LODWORD(STACK[0xD70]) ^ 0x5D36u)) - 329123146;
  v528 = *(&off_1010A0B50 + (LODWORD(STACK[0xD70]) ^ 0x5ACFu)) - 903324999;
  v529 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v530 = *v503;
  v531 = *(*v503 + v529);
  v532 = *(&off_1010A0B50 + LODWORD(STACK[0xD70]) - 19195) - 1590960099;
  v533 = STACK[0x2E38];
  v534 = 1864610357 * ((1864610357 * (((v533 + 15) ^ v531) & 0x7FFFFFFF)) ^ ((1864610357 * (((v533 + 15) ^ v531) & 0x7FFFFFFFu)) >> 16));
  v535 = v534 >> 24;
  LODWORD(v534) = v528[(v534 >> 24) + 1] ^ v527[(v534 >> 24) + 1] ^ v532[v534 >> 24] ^ *(STACK[0x2E38] + 15) ^ v534;
  v536 = 21 * v535;
  LOBYTE(v535) = v534 ^ ~(21 * v535);
  v537 = (v534 ^ v536) & 0x79 | 0x2126400;
  v538 = 1864610357 * ((1864610357 * (((v533 + 14) ^ v531) & 0x7FFFFFFF)) ^ ((1864610357 * (((v533 + 14) ^ v531) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v536) = v528[(v538 >> 24) + 1] ^ v527[(v538 >> 24) + 1] ^ v532[v538 >> 24] ^ v538 ^ *(STACK[0x2E38] + 14) ^ (21 * BYTE3(v538));
  v539 = 1864610357 * ((1864610357 * (((v533 + 13) ^ v531) & 0x7FFFFFFF)) ^ ((1864610357 * (((v533 + 13) ^ v531) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v539) = v527[(v539 >> 24) + 1] ^ (53 * ((53 * ((v533 + 13) ^ v531)) ^ ((1864610357 * (((v533 + 13) ^ v531) & 0x7FFFFFFFu)) >> 16))) ^ (21 * ((1864610357 * ((1864610357 * (((v533 + 13) ^ v531) & 0x7FFFFFFF)) ^ ((1864610357 * (((v533 + 13) ^ v531) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v528[(v539 >> 24) + 1] ^ v532[v539 >> 24] ^ *(v533 + 13);
  v540 = 1864610357 * ((1864610357 * (((v533 + 12) ^ v531) & 0x7FFFFFFF)) ^ ((1864610357 * (((v533 + 12) ^ v531) & 0x7FFFFFFFu)) >> 16));
  v6[51] = v537 ^ 0x8FEFF2AA ^ ((((((((-19 * (v540 >> 24)) ^ v540 ^ *(v2 + (v540 >> 24) + 1) ^ *(v3 + (v540 >> 24) + 1) ^ *(v4 + (v540 >> 24)) ^ *(STACK[0x2E38] + 12)) << 24) ^ 0xED2BA111) & ~(v539 << 16) | (v539 << 16) & 0xD40000) ^ 0x16CDCA32) & ~(v536 << 8) | (v536 << 8) & 0x9400) ^ 0xC7CEF0A5) & (v535 | 0xFFFFFF00);
  v541 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v542 = STACK[0x1BB8];
  v543 = *v503;
  v544 = *(*v503 + v541);
  v545 = 1864610357 * ((1864610357 * ((v544 ^ (v542 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v544 ^ (v542 + 3)) & 0x7FFFFFFFu)) >> 16));
  v546 = v545 >> 24;
  LODWORD(v545) = v527[(v545 >> 24) + 1] ^ *(STACK[0x1BB8] + 3) ^ v528[(v545 >> 24) + 1] ^ v532[v545 >> 24] ^ v545;
  LODWORD(v540) = 21 * v546;
  LOBYTE(v546) = v545 ^ ~(21 * v546);
  v547 = 1864610357 * ((1864610357 * ((v544 ^ (v542 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v544 ^ (v542 + 2)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v540) = (v545 ^ v540) & 0xBB;
  LODWORD(v545) = *(v530 + v529);
  v548 = 1864610357 * ((1864610357 * ((v545 ^ (v542 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v545 ^ (v542 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v548) = v527[(v548 >> 24) + 1] ^ v542[1] ^ v528[(v548 >> 24) + 1] ^ v532[v548 >> 24] ^ (53 * ((53 * (v545 ^ (v542 + 1))) ^ ((1864610357 * ((v545 ^ (v542 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (21 * ((1864610357 * ((1864610357 * ((v545 ^ (v542 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v545 ^ (v542 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v549 = 1864610357 * ((1864610357 * ((v545 ^ v542) & 0x7FFFFFFF)) ^ ((1864610357 * ((v545 ^ v542) & 0x7FFFFFFF)) >> 16));
  LODWORD(v549) = ((((v527[(v549 >> 24) + 1] ^ v528[(v549 >> 24) + 1] ^ v532[v549 >> 24] ^ *STACK[0x1BB8] ^ v549 ^ (21 * (v549 >> 24)) ^ 0x26) << 24) ^ 0xD4082177) & ~(v548 << 16) | (v548 << 16) & 0xFFF7FFFF) ^ 0x446FE109;
  LODWORD(v548) = (v528[(v547 >> 24) + 1] ^ v527[(v547 >> 24) + 1] ^ v532[v547 >> 24] ^ *(STACK[0x1BB8] + 2) ^ v547 ^ (21 * BYTE3(v547))) << 8;
  v6[52] = (((v549 & ~v548 | v548 & 0x3F00) ^ 0x5956D63A) & (v546 | 0xFFFFFF00) | v540) ^ 0xB927037;
  LODWORD(v549) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v550 = 1864610357 * ((1864610357 * ((v549 ^ (v542 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v542 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v547) = v527[(v550 >> 24) + 1] ^ v542[7] ^ v528[(v550 >> 24) + 1] ^ v532[v550 >> 24] ^ v550;
  LODWORD(v530) = 21 * ((1864610357 * ((1864610357 * ((v549 ^ (v542 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v542 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v550) = v547 ^ ~v530;
  LODWORD(v530) = (v547 ^ v530) & 0x3D;
  v551 = 1864610357 * ((1864610357 * ((v549 ^ (v542 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v542 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v551) = v527[(v551 >> 24) + 1] ^ v542[6] ^ v528[(v551 >> 24) + 1] ^ v532[v551 >> 24] ^ (53 * ((53 * (v549 ^ (v542 + 6))) ^ ((1864610357 * ((v549 ^ (v542 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (21 * ((1864610357 * ((1864610357 * ((v549 ^ (v542 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v542 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v552 = 1864610357 * ((1864610357 * ((v549 ^ (v542 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v549 ^ (v542 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v541) = 1864610357 * ((*(v543 + v541) ^ (v542 + 4)) & 0x7FFFFFFF);
  v553 = 1864610357 * (v541 ^ WORD1(v541));
  LODWORD(v552) = (v552 ^ v527[(v552 >> 24) + 1] ^ v528[(v552 >> 24) + 1] ^ v532[v552 >> 24] ^ (21 * BYTE3(v552)) ^ v542[5]) << 16;
  v6[53] = ((((((((v528[(v553 >> 24) + 1] ^ v527[(v553 >> 24) + 1] ^ v532[v553 >> 24] ^ v542[4] ^ v553 ^ (21 * (v553 >> 24))) << 24) ^ 0xB93E96DF) & ~v552 | v552 & 0xFFC1FFFF) ^ 0xC2C60368) & ~(v551 << 8) | (v551 << 8) & 0x6A00) ^ 0x66337175) & (v550 | 0xFFFFFF00) | v530) ^ 0xDB335C7F;
  v554 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v555 = *v503;
  LODWORD(v546) = *(*v503 + v554);
  v556 = 1864610357 * ((1864610357 * ((v546 ^ (v542 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v546 ^ (v542 + 11)) & 0x7FFFFFFF)) >> 16));
  v557 = v556 >> 24;
  LOBYTE(v556) = v528[(v556 >> 24) + 1] ^ v527[(v556 >> 24) + 1] ^ v532[v556 >> 24] ^ v542[11] ^ v556;
  LOBYTE(v557) = 21 * v557;
  LOBYTE(v530) = v556 ^ ~v557;
  LOBYTE(v557) = v556 ^ v557;
  v558 = 1864610357 * ((1864610357 * ((v546 ^ (v542 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v546 ^ (v542 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v551) = v527[(v558 >> 24) + 1] ^ v542[10] ^ v528[(v558 >> 24) + 1] ^ v532[v558 >> 24] ^ (53 * ((53 * (v546 ^ (v542 + 10))) ^ ((1864610357 * ((v546 ^ (v542 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (21 * ((1864610357 * ((1864610357 * ((v546 ^ (v542 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v546 ^ (v542 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v559 = 1864610357 * ((1864610357 * ((v546 ^ (v542 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v546 ^ (v542 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v559) = v527[(v559 >> 24) + 1] ^ v542[9] ^ v528[(v559 >> 24) + 1] ^ v532[v559 >> 24] ^ (53 * ((53 * (v546 ^ (v542 + 9))) ^ ((1864610357 * ((v546 ^ (v542 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (21 * ((1864610357 * ((1864610357 * ((v546 ^ (v542 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v546 ^ (v542 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v560 = 1864610357 * ((1864610357 * ((v546 ^ (v542 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v546 ^ (v542 + 8)) & 0x7FFFFFFF)) >> 16));
  v6[54] = ((((((((v560 ^ v527[(v560 >> 24) + 1] ^ v528[(v560 >> 24) + 1] ^ v532[v560 >> 24] ^ (21 * (v560 >> 24)) ^ v542[8]) << 24) ^ 0xB93FC713) & ~(v559 << 16) & 0xFF3FFFFF | (v559 >> 6 << 22)) ^ 0xEC60AF4C) & ~(v551 << 8) | (v551 << 8) & 0x9700) ^ 0xBA5133F2) & (v530 | 0xFFFFFF00) | v557 & 0x52) ^ 0xE7E5B6A8;
  LODWORD(v530) = *(v555 + v554);
  v561 = *(&off_1010A0B50 + (v526 - 22676)) - 95071810;
  v562 = *(&off_1010A0B50 + (v526 ^ 0x495E)) - 1829207138;
  v563 = *(&off_1010A0B50 + (v526 - 20992)) - 167273230;
  v564 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v565 = *v503;
  LODWORD(v559) = *(*v503 + v564);
  v566 = STACK[0x1BB8];
  v567 = 1864610357 * ((1864610357 * (((v566 + 15) ^ v559) & 0x7FFFFFFF)) ^ ((1864610357 * (((v566 + 15) ^ v559) & 0x7FFFFFFF)) >> 16));
  v568 = v567 >> 24;
  LODWORD(v567) = v562[(v567 >> 24) + 6] ^ v561[(v567 >> 24) + 3] ^ v563[v567 >> 24] ^ *(STACK[0x1BB8] + 15) ^ v567;
  LODWORD(v568) = -103 * v568;
  LOBYTE(v447) = v567 ^ ~v568;
  v569 = (v567 ^ v568) & 0x5E;
  v570 = 1864610357 * ((1864610357 * (((v566 + 14) ^ v559) & 0x7FFFFFFF)) ^ ((1864610357 * (((v566 + 14) ^ v559) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v568) = v562[(v570 >> 24) + 6] ^ v561[(v570 >> 24) + 3] ^ v563[v570 >> 24] ^ v570 ^ *(STACK[0x1BB8] + 14) ^ (-103 * BYTE3(v570));
  v571 = 1864610357 * ((1864610357 * (((v566 + 13) ^ v530) & 0x7FFFFFFF)) ^ ((1864610357 * (((v566 + 13) ^ v530) & 0x7FFFFFFF)) >> 16));
  v572 = 1864610357 * ((1864610357 * (((v566 + 12) ^ v530) & 0x7FFFFFFF)) ^ ((1864610357 * (((v566 + 12) ^ v530) & 0x7FFFFFFF)) >> 16));
  LODWORD(v571) = (v561[(v571 >> 24) + 3] ^ (53 * ((53 * ((v566 + 13) ^ v530)) ^ ((1864610357 * (((v566 + 13) ^ v530) & 0x7FFFFFFF)) >> 16))) ^ (-103 * ((1864610357 * ((1864610357 * (((v566 + 13) ^ v530) & 0x7FFFFFFF)) ^ ((1864610357 * (((v566 + 13) ^ v530) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v562[(v571 >> 24) + 6] ^ v563[v571 >> 24] ^ *(v566 + 13)) << 16;
  v6[55] = ((((((((v572 ^ (21 * (v572 >> 24)) ^ v527[(v572 >> 24) + 1] ^ v528[(v572 >> 24) + 1] ^ v532[v572 >> 24] ^ *(STACK[0x1BB8] + 12) ^ 0x1C) << 24) ^ 0xB6ABF08D) & ~v571 | v571 & 0x540000) ^ 0x1ED44074) & ~(v568 << 8) | (v568 << 8) & 0x4F00) ^ 0x74572C58) & (v447 | 0xFFFFFF00) | v569) ^ 0xFBA4E532;
  LODWORD(v567) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v573 = STACK[0x4D68];
  v574 = 1864610357 * ((1864610357 * ((v567 ^ (v573 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v567 ^ (v573 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v572) = v561[(v574 >> 24) + 3] ^ *(v573 + 3) ^ v562[(v574 >> 24) + 6] ^ v563[v574 >> 24] ^ v574 ^ (-103 * ((1864610357 * ((1864610357 * ((v567 ^ (v573 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v567 ^ (v573 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v575 = 1864610357 * ((1864610357 * ((v567 ^ (v573 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v567 ^ (v573 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v530) = v561[(v575 >> 24) + 3] ^ *(v573 + 2) ^ v562[(v575 >> 24) + 6] ^ v563[v575 >> 24] ^ (53 * ((53 * (v567 ^ (v573 + 2))) ^ ((1864610357 * ((v567 ^ (v573 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-103 * ((1864610357 * ((1864610357 * ((v567 ^ (v573 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v567 ^ (v573 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v576 = 1864610357 * ((1864610357 * ((v567 ^ (v573 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v567 ^ (v573 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v565) = 1864610357 * ((*(v565 + v564) ^ STACK[0x4D68]) & 0x7FFFFFFF);
  v577 = 1864610357 * (v565 ^ WORD1(v565));
  LODWORD(v576) = (v576 ^ v561[(v576 >> 24) + 3] ^ v562[(v576 >> 24) + 6] ^ v563[v576 >> 24] ^ (-103 * BYTE3(v576)) ^ *(STACK[0x4D68] + 1)) << 16;
  v578 = STACK[0x4D68];
  v6[56] = v572 & 0xEE ^ 0xCBBC895A ^ (((((((v562[(v577 >> 24) + 6] ^ v561[(v577 >> 24) + 3] ^ v563[v577 >> 24] ^ *STACK[0x4D68] ^ v577 ^ (-103 * (v577 >> 24))) << 24) ^ 0xD3FA8520) & ~v576 | v576 & 0x50000) ^ 0x26748498) & ~(v530 << 8) & 0xFFFF01FF | (((v530 >> 1) & 0x7F) << 9)) ^ 0x8E7981A9) & (v572 ^ 0xFFFFFFFB);
  v579 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v580 = *v503;
  LODWORD(v566) = *(*v503 + v579);
  v581 = 1864610357 * ((1864610357 * ((v566 ^ (v578 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v566 ^ (v578 + 7)) & 0x7FFFFFFF)) >> 16));
  v582 = v581 >> 24;
  LODWORD(v581) = v562[(v581 >> 24) + 6] ^ v561[(v581 >> 24) + 3] ^ v563[v581 >> 24] ^ v578[7] ^ v581;
  LODWORD(v582) = -103 * v582;
  LOBYTE(v573) = v581 ^ ~v582;
  LODWORD(v530) = (v581 ^ v582) & 0x61;
  v583 = 1864610357 * ((1864610357 * ((v566 ^ (v578 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v566 ^ (v578 + 6)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v568) = (v561[(v583 >> 24) + 3] ^ v578[6] ^ v562[(v583 >> 24) + 6] ^ v563[v583 >> 24] ^ (53 * ((53 * (v566 ^ (v578 + 6))) ^ ((1864610357 * ((v566 ^ (v578 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-103 * ((1864610357 * ((1864610357 * ((v566 ^ (v578 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v566 ^ (v578 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24)));
  v584 = 1864610357 * ((1864610357 * ((v566 ^ (v578 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v566 ^ (v578 + 5)) & 0x7FFFFFFF)) >> 16));
  v585 = 1864610357 * ((1864610357 * ((v566 ^ (v578 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v566 ^ (v578 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v584) = (v561[(v584 >> 24) + 3] ^ v578[5] ^ v562[(v584 >> 24) + 6] ^ v563[v584 >> 24] ^ (53 * ((53 * (v566 ^ (v578 + 5))) ^ ((1864610357 * ((v566 ^ (v578 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-103 * ((1864610357 * ((1864610357 * ((v566 ^ (v578 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v566 ^ (v578 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v6[57] = (((((((v585 ^ v561[(v585 >> 24) + 3] ^ v562[(v585 >> 24) + 6] ^ v563[v585 >> 24] ^ (-103 * (v585 >> 24)) ^ v578[4]) << 24) ^ 0x165553A5) & ~v584 | v584 & 0xAAAAAAAA) ^ 0x8499A430) & ~(v568 << 8) ^ ((((v568 >> 3) & 1) << 11) | 0xFC7CE20B)) & (v573 | 0xFFFFFF00) | v530) ^ 0xC6E2FA63;
  v586 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v587 = *v503;
  LODWORD(v584) = *(*v503 + v586);
  v588 = 1864610357 * ((1864610357 * ((v584 ^ (v578 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v584 ^ (v578 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v573) = v561[(v588 >> 24) + 3] ^ v578[11] ^ v562[(v588 >> 24) + 6] ^ v563[v588 >> 24] ^ (53 * ((53 * (v584 ^ (v578 + 11))) ^ ((1864610357 * ((v584 ^ (v578 + 11)) & 0x7FFFFFFF)) >> 16))) ^ (-103 * ((1864610357 * ((1864610357 * ((v584 ^ (v578 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v584 ^ (v578 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v589 = 1864610357 * ((1864610357 * ((v584 ^ (v578 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v584 ^ (v578 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v530) = v562[(v589 >> 24) + 6] ^ v561[(v589 >> 24) + 3] ^ v563[v589 >> 24] ^ v578[10] ^ v589 ^ (-103 * BYTE3(v589));
  LODWORD(v589) = *(v580 + v579);
  v590 = 1864610357 * ((1864610357 * ((v589 ^ (v578 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v589 ^ (v578 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v590) = v561[(v590 >> 24) + 3] ^ v578[9] ^ v562[(v590 >> 24) + 6] ^ v563[v590 >> 24] ^ (53 * ((53 * (v589 ^ (v578 + 9))) ^ ((1864610357 * ((v589 ^ (v578 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-103 * ((1864610357 * ((1864610357 * ((v589 ^ (v578 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v589 ^ (v578 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v591 = 1864610357 * ((1864610357 * ((v589 ^ (v578 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v589 ^ (v578 + 8)) & 0x7FFFFFFF)) >> 16));
  v6[58] = v573 & 7 ^ 0x715170A9 ^ (((((((v561[(v591 >> 24) + 3] ^ v562[(v591 >> 24) + 6] ^ v563[v591 >> 24] ^ v578[8] ^ v591 ^ (-103 * (v591 >> 24)) ^ 0xA3) << 24) ^ 0x254304C4) & ~(v590 << 16) | (v590 << 16) & 0xBC0000) ^ 0xD3F6B454) & ~(v530 << 8) | (v530 << 8) & 0x4F00) ^ 0x22890C68) & (v573 ^ 0xFFFFFFFD);
  LODWORD(v580) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v592 = *(&off_1010A0B50 + (v526 - 23145)) - 2125529791;
  v593 = *(&off_1010A0B50 + (v526 ^ 0x4A0F)) - 439357063;
  v594 = *(&off_1010A0B50 + (v526 - 19496)) - 746606198;
  v595 = 1864610357 * ((1864610357 * ((v580 ^ (v578 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v580 ^ (v578 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v588) = v592[(v595 >> 24) + 5] ^ v578[15] ^ v593[v595 >> 24] ^ v594[v595 >> 24] ^ v595 ^ (73 * ((1864610357 * ((1864610357 * ((v580 ^ (v578 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v580 ^ (v578 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v596 = (1864610357 * ((1864610357 * ((v580 ^ (v578 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v580 ^ (v578 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24;
  LOBYTE(v530) = v592[v596 + 5] ^ v578[14] ^ (53 * ((53 * (v580 ^ (v578 + 14))) ^ ((1864610357 * ((v580 ^ (v578 + 14)) & 0x7FFFFFFF)) >> 16))) ^ v593[v596] ^ v594[v596] ^ (73 * ((1864610357 * ((1864610357 * ((v580 ^ (v578 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v580 ^ (v578 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v597 = 1864610357 * ((1864610357 * ((v580 ^ (v578 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v580 ^ (v578 + 13)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v580) = 1864610357 * ((*(v587 + v586) ^ (v578 + 12)) & 0x7FFFFFFF);
  v598 = 1864610357 * (v580 ^ WORD1(v580));
  LODWORD(v597) = ((73 * BYTE3(v597)) ^ v597 ^ v592[(v597 >> 24) + 5] ^ v593[v597 >> 24] ^ v594[v597 >> 24] ^ v578[13]) << 16;
  LODWORD(v597) = v588 & 0x14 ^ 0xDDE97E7F ^ (((((((v562[(v598 >> 24) + 6] ^ v561[(v598 >> 24) + 3] ^ v563[v598 >> 24] ^ v578[12] ^ v598 ^ (-103 * (v598 >> 24))) << 24) ^ 0x5D531221) & ~v597 | v597 & 0xAC0000) ^ 0xEF97428E) & ~(v530 << 8) | (v530 << 8) & 0xAF00) ^ 0x40BF9744) & (v588 ^ 0xFFFFFFEF);
  v599 = STACK[0x74C0];
  v6[59] = v597;
  v600 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v601 = *v503;
  LODWORD(v578) = *(*v503 + v600);
  v602 = 1864610357 * ((1864610357 * ((v578 ^ (v599 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v599 + 3)) & 0x7FFFFFFF)) >> 16));
  v603 = v602 >> 24;
  LODWORD(v602) = v593[v602 >> 24] ^ v592[(v602 >> 24) + 5] ^ v594[v602 >> 24] ^ v599[3] ^ v602;
  LODWORD(v530) = 73 * v603;
  LOBYTE(v603) = v602 ^ ~(73 * v603);
  LODWORD(v530) = (v602 ^ v530) & 0x83;
  v604 = 1864610357 * ((1864610357 * ((v578 ^ (v599 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v599 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v567) = v592[(v604 >> 24) + 5] ^ v599[2] ^ v593[v604 >> 24] ^ v594[v604 >> 24] ^ (53 * ((53 * (v578 ^ (v599 + 2))) ^ ((1864610357 * ((v578 ^ (v599 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (73 * ((1864610357 * ((1864610357 * ((v578 ^ (v599 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v599 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v605 = 1864610357 * ((1864610357 * ((v578 ^ (v599 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v599 + 1)) & 0x7FFFFFFF)) >> 16));
  v606 = 1864610357 * ((1864610357 * ((v578 ^ v599) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ v599) & 0x7FFFFFFF)) >> 16));
  LODWORD(v605) = (v592[(v605 >> 24) + 5] ^ v599[1] ^ v593[v605 >> 24] ^ v594[v605 >> 24] ^ (53 * ((53 * (v578 ^ (v599 + 1))) ^ ((1864610357 * ((v578 ^ (v599 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (73 * ((1864610357 * ((1864610357 * ((v578 ^ (v599 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v578 ^ (v599 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v6[60] = ((((((((v606 ^ v592[(v606 >> 24) + 5] ^ v593[v606 >> 24] ^ v594[v606 >> 24] ^ (73 * (v606 >> 24)) ^ *v599) << 24) ^ 0x5A53AF44) & ~v605 | v605 & 0xAC0000) ^ 0xCBB10A29) & ~(v567 << 8) | (v567 << 8) & 0x5A00) ^ 0x7FE8211) & (v603 | 0xFFFFFF00) | v530) ^ 0x87F96191;
  v607 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v608 = *v503;
  LODWORD(v530) = *(*v503 + v607);
  v609 = 1864610357 * ((1864610357 * ((v530 ^ (v599 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v530 ^ (v599 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v578) = v592[(v609 >> 24) + 5] ^ v599[7] ^ v593[v609 >> 24] ^ v594[v609 >> 24] ^ v609 ^ (73 * ((1864610357 * ((1864610357 * ((v530 ^ (v599 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v530 ^ (v599 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v610 = 1864610357 * ((1864610357 * ((v530 ^ (v599 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v530 ^ (v599 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v530) = v593[v610 >> 24] ^ v592[(v610 >> 24) + 5] ^ v594[v610 >> 24] ^ v599[6] ^ (53 * ((53 * (v530 ^ (v599 + 6))) ^ ((1864610357 * ((v530 ^ (v599 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (73 * ((1864610357 * ((1864610357 * ((v530 ^ (v599 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v530 ^ (v599 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v610) = *(v601 + v600);
  v611 = 1864610357 * ((1864610357 * ((v610 ^ (v599 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v610 ^ (v599 + 5)) & 0x7FFFFFFF)) >> 16));
  v612 = STACK[0x2538];
  v613 = STACK[0x5650];
  LOBYTE(v611) = v592[(v611 >> 24) + 5] ^ v599[5] ^ v593[v611 >> 24] ^ v594[v611 >> 24] ^ (53 * ((53 * (v610 ^ (v599 + 5))) ^ ((1864610357 * ((v610 ^ (v599 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (73 * ((1864610357 * ((1864610357 * ((v610 ^ (v599 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v610 ^ (v599 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v614 = 1864610357 * ((1864610357 * ((v610 ^ (v599 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v610 ^ (v599 + 4)) & 0x7FFFFFFF)) >> 16));
  v6[61] = v578 & 0x93 ^ 0x39CF0992 ^ (((((((v593[v614 >> 24] ^ v592[(v614 >> 24) + 5] ^ v594[v614 >> 24] ^ v599[4] ^ v614 ^ (73 * (v614 >> 24))) << 24) ^ 0x14DC815E) & ~(v611 << 16) | (v611 << 16) & 0x230000) ^ 0xFAADC910) & ~(v530 << 8) | (v530 << 8) & 0xB700) ^ 0x5C486122) & (v578 ^ 0xFFFFFFFE);
  LODWORD(v614) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v615 = 1864610357 * ((1864610357 * ((v614 ^ (v599 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v614 ^ (v599 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v530) = v592[(v615 >> 24) + 5] ^ v599[11] ^ v593[v615 >> 24] ^ v594[v615 >> 24] ^ v615;
  LODWORD(v601) = 73 * ((1864610357 * ((1864610357 * ((v614 ^ (v599 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v614 ^ (v599 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v615) = v530 ^ ~v601;
  LODWORD(v601) = (v530 ^ v601) & 0x56;
  v616 = 1864610357 * ((1864610357 * ((v614 ^ (v599 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v614 ^ (v599 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v616) = v592[(v616 >> 24) + 5] ^ v599[10] ^ v593[v616 >> 24] ^ v594[v616 >> 24] ^ (53 * ((53 * (v614 ^ (v599 + 10))) ^ ((1864610357 * ((v614 ^ (v599 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (73 * ((1864610357 * ((1864610357 * ((v614 ^ (v599 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v614 ^ (v599 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v617 = 1864610357 * ((1864610357 * ((v614 ^ (v599 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v614 ^ (v599 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v607) = 1864610357 * ((*(v608 + v607) ^ (v599 + 8)) & 0x7FFFFFFF);
  v618 = 1864610357 * (v607 ^ WORD1(v607));
  LODWORD(v617) = (v617 ^ v592[(v617 >> 24) + 5] ^ v593[v617 >> 24] ^ v594[v617 >> 24] ^ (73 * BYTE3(v617)) ^ v599[9]) << 16;
  v6[62] = ((((((((v593[v618 >> 24] ^ v592[(v618 >> 24) + 5] ^ v594[v618 >> 24] ^ v599[8] ^ v618 ^ (73 * (v618 >> 24))) << 24) ^ 0xC4A6CE25) & ~v617 | v617 & 0x590000) ^ 0x3D65A2E2) & ~(v616 << 8) | (v616 << 8) & 0x9300) ^ 0x22E23E6E) & (v615 | 0xFFFFFF00) | v601) ^ 0xEC4E30B;
  v619 = *(&off_1010A0B50 + (v526 - 20869)) - 555115195;
  v620 = *(&off_1010A0B50 + (v526 ^ 0x4912)) - 683731598;
  v621 = *(&off_1010A0B50 + (v526 ^ 0x56D8)) - 1508435478;
  v622 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v623 = *v503;
  LODWORD(v616) = *(*v503 + v622);
  v624 = STACK[0x74C0];
  v625 = 1864610357 * ((1864610357 * (((v624 + 15) ^ v616) & 0x7FFFFFFF)) ^ ((1864610357 * (((v624 + 15) ^ v616) & 0x7FFFFFFF)) >> 16));
  v626 = v625 >> 24;
  LODWORD(v625) = v620[(v625 >> 24) + 7] ^ v619[(v625 >> 24) + 4] ^ v621[v625 >> 24] ^ *(STACK[0x74C0] + 15) ^ v625;
  LODWORD(v567) = 103 * v626;
  LOBYTE(v626) = v625 ^ ~(103 * v626);
  LODWORD(v566) = (v625 ^ v567) & 0xFD;
  v627 = 1864610357 * ((1864610357 * (((v624 + 14) ^ v616) & 0x7FFFFFFF)) ^ ((1864610357 * (((v624 + 14) ^ v616) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v569) = v620[(v627 >> 24) + 7] ^ v619[(v627 >> 24) + 4] ^ v621[v627 >> 24] ^ v627 ^ *(STACK[0x74C0] + 14) ^ (103 * BYTE3(v627));
  v628 = 1864610357 * ((1864610357 * (((v624 + 13) ^ v616) & 0x7FFFFFFF)) ^ ((1864610357 * (((v624 + 13) ^ v616) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v628) = v619[(v628 >> 24) + 4] ^ (53 * ((53 * ((v624 + 13) ^ v616)) ^ ((1864610357 * (((v624 + 13) ^ v616) & 0x7FFFFFFF)) >> 16))) ^ (103 * ((1864610357 * ((1864610357 * (((v624 + 13) ^ v616) & 0x7FFFFFFF)) ^ ((1864610357 * (((v624 + 13) ^ v616) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v620[(v628 >> 24) + 7] ^ v621[v628 >> 24] ^ *(v624 + 13);
  v629 = 1864610357 * ((1864610357 * (((v624 + 12) ^ v616) & 0x7FFFFFFF)) ^ ((1864610357 * (((v624 + 12) ^ v616) & 0x7FFFFFFF)) >> 16));
  *(STACK[0xEC0] + 252) = (((((((((73 * (v629 >> 24)) ^ v629 ^ v592[(v629 >> 24) + 5] ^ v593[v629 >> 24] ^ v594[v629 >> 24] ^ *(STACK[0x74C0] + 12)) << 24) ^ 0xAEFD5D51) & ~(v628 << 16) & 0xFFFDFFFF | (((v628 >> 1) & 1) << 17)) ^ 0x10AFFEE1) & ~(v569 << 8) | (v569 << 8) & 0x5C00) ^ 0x7F0C73B2) & (v626 | 0xFFFFFF00) | v566) ^ 0x23F2669E;
  v630 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v631 = STACK[0x1818];
  v632 = *v503;
  LODWORD(v629) = *(*v503 + v630);
  v633 = 1864610357 * ((1864610357 * ((v629 ^ (v631 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v629 ^ (v631 + 3)) & 0x7FFFFFFF)) >> 16));
  v634 = v633 >> 24;
  LODWORD(v633) = v619[(v633 >> 24) + 4] ^ *(STACK[0x1818] + 3) ^ v620[(v633 >> 24) + 7] ^ v621[v633 >> 24] ^ v633;
  LODWORD(v626) = 103 * v634;
  LOBYTE(v634) = v633 ^ ~(103 * v634);
  LODWORD(v626) = (v633 ^ v626) & 0x84;
  v635 = 1864610357 * ((1864610357 * ((v629 ^ (v631 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v629 ^ (v631 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v629) = v620[(v635 >> 24) + 7] ^ v619[(v635 >> 24) + 4] ^ v621[v635 >> 24] ^ v631[2] ^ (53 * ((53 * (v629 ^ (v631 + 2))) ^ ((1864610357 * ((v629 ^ (v631 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (103 * ((1864610357 * ((1864610357 * ((v629 ^ (v631 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v629 ^ (v631 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v635) = *(v623 + v622);
  v636 = 1864610357 * ((1864610357 * ((v635 ^ (v631 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v635 ^ (v631 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v636) = v619[(v636 >> 24) + 4] ^ v631[1] ^ v620[(v636 >> 24) + 7] ^ v621[v636 >> 24] ^ (53 * ((53 * (v635 ^ (v631 + 1))) ^ ((1864610357 * ((v635 ^ (v631 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (103 * ((1864610357 * ((1864610357 * ((v635 ^ (v631 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v635 ^ (v631 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v637 = 1864610357 * ((1864610357 * ((v635 ^ v631) & 0x7FFFFFFF)) ^ ((1864610357 * ((v635 ^ v631) & 0x7FFFFFFF)) >> 16));
  v6[64] = ((((((((v620[(v637 >> 24) + 7] ^ v619[(v637 >> 24) + 4] ^ v621[v637 >> 24] ^ *STACK[0x1818] ^ v637 ^ (103 * (v637 >> 24))) << 24) ^ 0x4D906EA0) & ~(v636 << 16) | (v636 << 16) & 0x6F0000) ^ 0x6022A5D1) & ~(v629 << 8) | (v629 << 8) & 0x3400) ^ 0xAE9E630A) & (v634 | 0xFFFFFF00) | v626) ^ 0x9275BF11;
  LODWORD(v634) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v638 = 1864610357 * ((1864610357 * ((v634 ^ (v631 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v634 ^ (v631 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v636) = v619[(v638 >> 24) + 4] ^ v631[7] ^ v620[(v638 >> 24) + 7] ^ v621[v638 >> 24] ^ v638 ^ (103 * ((1864610357 * ((1864610357 * ((v634 ^ (v631 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v634 ^ (v631 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v639 = 1864610357 * ((1864610357 * ((v634 ^ (v631 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v634 ^ (v631 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v623) = v619[(v639 >> 24) + 4] ^ v631[6] ^ v620[(v639 >> 24) + 7] ^ v621[v639 >> 24] ^ (53 * ((53 * (v634 ^ (v631 + 6))) ^ ((1864610357 * ((v634 ^ (v631 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (103 * ((1864610357 * ((1864610357 * ((v634 ^ (v631 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v634 ^ (v631 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v640 = 1864610357 * ((1864610357 * ((v634 ^ (v631 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v634 ^ (v631 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v630) = 1864610357 * ((*(v632 + v630) ^ (v631 + 4)) & 0x7FFFFFFF);
  v641 = 1864610357 * (v630 ^ WORD1(v630));
  LODWORD(v640) = (v640 ^ v619[(v640 >> 24) + 4] ^ v620[(v640 >> 24) + 7] ^ v621[v640 >> 24] ^ (103 * BYTE3(v640)) ^ v631[5]) << 16;
  v6[65] = v636 & 0x67 ^ 0x5538621C ^ (((((((v620[(v641 >> 24) + 7] ^ v619[(v641 >> 24) + 4] ^ v621[v641 >> 24] ^ v631[4] ^ v641 ^ (103 * (v641 >> 24))) << 24) ^ 0x301C5FD5) & ~v640 | v640 & 0xFFE3FFFF) ^ 0x38FB0B09) & ~(v623 << 8) | (v623 << 8) & 0xAB00) ^ 0xFBE17B44) & (v636 ^ 0xFFFFFFFD);
  v642 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v643 = *v503;
  LODWORD(v632) = *(*v503 + v642);
  v644 = 1864610357 * ((1864610357 * ((v632 ^ (v631 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v641) = v620[(v644 >> 24) + 7] ^ v619[(v644 >> 24) + 4] ^ v621[v644 >> 24] ^ v631[11] ^ v644 ^ (103 * ((1864610357 * ((1864610357 * ((v632 ^ (v631 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v645 = 1864610357 * ((1864610357 * ((v632 ^ (v631 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v636) = v619[(v645 >> 24) + 4] ^ v631[10] ^ v620[(v645 >> 24) + 7] ^ v621[v645 >> 24] ^ (53 * ((53 * (v632 ^ (v631 + 10))) ^ ((1864610357 * ((v632 ^ (v631 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (103 * ((1864610357 * ((1864610357 * ((v632 ^ (v631 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v646 = 1864610357 * ((1864610357 * ((v632 ^ (v631 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v646) = v619[(v646 >> 24) + 4] ^ v631[9] ^ v620[(v646 >> 24) + 7] ^ v621[v646 >> 24] ^ (53 * ((53 * (v632 ^ (v631 + 9))) ^ ((1864610357 * ((v632 ^ (v631 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (103 * ((1864610357 * ((1864610357 * ((v632 ^ (v631 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v647 = 1864610357 * ((1864610357 * ((v632 ^ (v631 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v632 ^ (v631 + 8)) & 0x7FFFFFFF)) >> 16));
  v6[66] = v641 & 0xEF ^ 0xA36AB31A ^ (((((((v619[(v647 >> 24) + 4] ^ v647 ^ v620[(v647 >> 24) + 7] ^ v621[v647 >> 24] ^ (103 * (v647 >> 24)) ^ v631[8] ^ 0xAB) << 24) ^ 0xE276BF00) & ~(v646 << 16) | (v646 << 16) & 0x890000) ^ 0xBCECDF48) & ~(v636 << 8) | (v636 << 8) & 0x9FFF) ^ 0x6EBB7E58) & (v641 ^ 0xFFFFFFDF);
  v648 = *(&off_1010A0B50 + (v526 - 21018)) - 1813752826;
  v649 = *(&off_1010A0B50 + (v526 ^ 0x5145)) - 1155094563;
  v650 = *(&off_1010A0B50 + (v526 ^ 0x5D84)) - 654422634;
  v651 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v652 = *v503;
  LODWORD(v647) = *(*v503 + v651);
  v653 = 1864610357 * ((1864610357 * ((v647 ^ (v631 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v647 ^ (v631 + 15)) & 0x7FFFFFFF)) >> 16));
  v654 = v653 >> 24;
  LOBYTE(v653) = v648[(v653 >> 24) + 3] ^ v631[15] ^ v649[v653 >> 24] ^ v650[v653 >> 24] ^ v653;
  LOBYTE(v606) = 83 * v654;
  LOBYTE(v654) = v653 ^ ~(83 * v654);
  LOBYTE(v569) = v653 ^ v606;
  v655 = 1864610357 * ((1864610357 * ((v647 ^ (v631 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v647 ^ (v631 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v647) = v655 ^ v648[(v655 >> 24) + 3] ^ v649[v655 >> 24] ^ v650[v655 >> 24] ^ (83 * BYTE3(v655)) ^ v631[14];
  LODWORD(v655) = *(v643 + v642);
  v656 = 1864610357 * ((1864610357 * ((v655 ^ (v631 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v655 ^ (v631 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v656) = v648[(v656 >> 24) + 3] ^ v631[13] ^ v649[v656 >> 24] ^ v650[v656 >> 24] ^ (53 * ((53 * (v655 ^ (v631 + 13))) ^ ((1864610357 * ((v655 ^ (v631 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (83 * ((1864610357 * ((1864610357 * ((v655 ^ (v631 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v655 ^ (v631 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v657 = 1864610357 * ((1864610357 * ((v655 ^ (v631 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v655 ^ (v631 + 12)) & 0x7FFFFFFF)) >> 16));
  v6[67] = ((((((((v619[(v657 >> 24) + 4] ^ v620[(v657 >> 24) + 7] ^ v621[v657 >> 24] ^ v631[12] ^ v657 ^ (103 * (v657 >> 24)) ^ 0xA4) << 24) ^ 0xAE8A4C4D) & ~(v656 << 16) | (v656 << 16) & 0x750000) ^ 0xA617BF01) & ~(v647 << 8) & 0xFFFFF3FF | (((v647 >> 2) & 3) << 10)) ^ 0xC57DA5BF) & (v654 | 0xFFFFFF00) | v569 & 0xC) ^ 0x414E239C;
  LODWORD(v657) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v658 = 1864610357 * ((1864610357 * ((v657 ^ (v612 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v612 + 3)) & 0x7FFFFFFF)) >> 16));
  v659 = v658 >> 24;
  LODWORD(v658) = v648[(v658 >> 24) + 3] ^ *(v612 + 3) ^ v649[v658 >> 24] ^ v650[v658 >> 24] ^ v658;
  LODWORD(v654) = 83 * v659;
  LOBYTE(v659) = v658 ^ ~(83 * v659);
  LODWORD(v619) = (v658 ^ v654) & 0xAE;
  v660 = 1864610357 * ((1864610357 * ((v657 ^ (v612 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v612 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v660) = v648[(v660 >> 24) + 3] ^ *(v612 + 2) ^ v649[v660 >> 24] ^ v650[v660 >> 24] ^ (53 * ((53 * (v657 ^ (v612 + 2))) ^ ((1864610357 * ((v657 ^ (v612 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (83 * ((1864610357 * ((1864610357 * ((v657 ^ (v612 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v612 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v661 = 1864610357 * ((1864610357 * ((v657 ^ (v612 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v657 ^ (v612 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v654) = 1864610357 * ((*(v652 + v651) ^ v612) & 0x7FFFFFFF);
  v662 = 1864610357 * (v654 ^ WORD1(v654));
  LODWORD(v661) = ((v661 ^ v648[(v661 >> 24) + 3] ^ v649[v661 >> 24] ^ v650[v661 >> 24] ^ (83 * BYTE3(v661)) ^ *(v612 + 1)) << 16) | ((v649[v662 >> 24] ^ v648[(v662 >> 24) + 3] ^ v650[v662 >> 24] ^ *v612 ^ v662 ^ (83 * (v662 >> 24))) << 24) | (v660 << 8);
  v6[68] = (((v661 - ((2 * v661) & 0x38EFC600) + 477619121) ^ 0x66BAD2E0) & (v659 | 0xFFFFFF00) | v619) ^ 0x4CC54D55;
  v663 = *v503;
  v664 = *v505 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v651) = *(*v503 + v664);
  v665 = 1864610357 * ((1864610357 * ((v651 ^ (v612 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v651 ^ (v612 + 7)) & 0x7FFFFFFF)) >> 16));
  v666 = v665 >> 24;
  LOBYTE(v665) = v649[v665 >> 24] ^ v648[(v665 >> 24) + 3] ^ v650[v665 >> 24] ^ *(v612 + 7) ^ v665;
  LOBYTE(v666) = 83 * v666;
  LOBYTE(v619) = v665 ^ ~v666;
  LODWORD(v652) = (v665 ^ v666) & 3 | 0x9A0000;
  v667 = 1864610357 * ((1864610357 * ((v651 ^ (v612 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v651 ^ (v612 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v667) = v648[(v667 >> 24) + 3] ^ *(v612 + 6) ^ v649[v667 >> 24] ^ v650[v667 >> 24] ^ (53 * ((53 * (v651 ^ (v612 + 6))) ^ ((1864610357 * ((v651 ^ (v612 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (83 * ((1864610357 * ((1864610357 * ((v651 ^ (v612 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v651 ^ (v612 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v668 = 1864610357 * ((1864610357 * ((v651 ^ (v612 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v651 ^ (v612 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v668) = v648[(v668 >> 24) + 3] ^ *(v612 + 5) ^ v649[v668 >> 24] ^ v650[v668 >> 24] ^ (53 * ((53 * (v651 ^ (v612 + 5))) ^ ((1864610357 * ((v651 ^ (v612 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (83 * ((1864610357 * ((1864610357 * ((v651 ^ (v612 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v651 ^ (v612 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v669 = 1864610357 * ((1864610357 * ((v651 ^ (v612 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v651 ^ (v612 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v668) = (v668 << 16) | ((v669 ^ v648[(v669 >> 24) + 3] ^ v649[v669 >> 24] ^ v650[v669 >> 24] ^ (83 * (v669 >> 24)) ^ *(v612 + 4)) << 24) | (v667 << 8);
  v6[69] = v652 ^ 0xCFE8AED3 ^ ((v668 - ((2 * v668) & 0xCE98B000) - 414427089) ^ 0x49695DD3) & (v619 | 0xFFFFFF00);
  v670 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v671 = *v503;
  LODWORD(v668) = *(*v503 + v670);
  v672 = 1864610357 * ((1864610357 * ((v668 ^ (v612 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v668 ^ (v612 + 11)) & 0x7FFFFFFF)) >> 16));
  v673 = v672 >> 24;
  LODWORD(v672) = v648[(v672 >> 24) + 3] ^ *(v612 + 11) ^ v649[v672 >> 24] ^ v650[v672 >> 24] ^ v672;
  LODWORD(v619) = 83 * v673;
  LOBYTE(v673) = v672 ^ ~(83 * v673);
  LODWORD(v619) = (v672 ^ v619) & 0x63;
  v674 = 1864610357 * ((1864610357 * ((v668 ^ (v612 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v668 ^ (v612 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v674) = v649[v674 >> 24] ^ v648[(v674 >> 24) + 3] ^ v650[v674 >> 24] ^ *(v612 + 10) ^ (53 * ((53 * (v668 ^ (v612 + 10))) ^ ((1864610357 * ((v668 ^ (v612 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (83 * ((1864610357 * ((1864610357 * ((v668 ^ (v612 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v668 ^ (v612 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v668) = *(v663 + v664);
  v675 = 1864610357 * ((1864610357 * ((v668 ^ (v612 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v668 ^ (v612 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v675) = v648[(v675 >> 24) + 3] ^ *(v612 + 9) ^ v649[v675 >> 24] ^ v650[v675 >> 24] ^ (53 * ((53 * (v668 ^ (v612 + 9))) ^ ((1864610357 * ((v668 ^ (v612 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (83 * ((1864610357 * ((1864610357 * ((v668 ^ (v612 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v668 ^ (v612 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v676 = 1864610357 * ((1864610357 * ((v668 ^ (v612 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v668 ^ (v612 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v676) = (v675 << 16) | ((v649[v676 >> 24] ^ v648[(v676 >> 24) + 3] ^ v650[v676 >> 24] ^ *(v612 + 8) ^ v676 ^ (83 * (v676 >> 24))) << 24) | (v674 << 8);
  v6[70] = (((v676 - ((2 * v676) & 0x12543600) + 153754542) ^ 0x921D6932) & (v673 | 0xFFFFFF00) | v619) ^ 0x76E2B370;
  LODWORD(v673) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v677 = *(&off_1010A0B50 + (v526 ^ 0x51C8)) - 1389478022;
  v678 = *(&off_1010A0B50 + (v526 - 19577)) - 176932175;
  v679 = *(&off_1010A0B50 + (v526 ^ 0x556C)) - 1154762434;
  v680 = 1864610357 * ((1864610357 * ((v673 ^ (v612 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v673 ^ (v612 + 15)) & 0x7FFFFFFF)) >> 16));
  v681 = v680 >> 24;
  LODWORD(v680) = v677[(v680 >> 24) + 1] ^ *(v612 + 15) ^ v678[v680 >> 24] ^ v679[v680 >> 24] ^ v680;
  LODWORD(v681) = -49 * v681;
  LOBYTE(v675) = v680 ^ ~v681;
  LODWORD(v664) = (v680 ^ v681) & 0x9C;
  v682 = (1864610357 * ((1864610357 * ((v673 ^ (v612 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v673 ^ (v612 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24;
  LOBYTE(v682) = v677[v682 + 1] ^ *(v612 + 14) ^ (53 * ((53 * (v673 ^ (v612 + 14))) ^ ((1864610357 * ((v673 ^ (v612 + 14)) & 0x7FFFFFFF)) >> 16))) ^ v678[v682] ^ v679[v682] ^ (-49 * ((1864610357 * ((1864610357 * ((v673 ^ (v612 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v673 ^ (v612 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v683 = 1864610357 * ((1864610357 * ((v673 ^ (v612 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v673 ^ (v612 + 13)) & 0x7FFFFFFF)) >> 16));
  v684 = 1864610357 * ((1864610357 * ((*(v671 + v670) ^ (v612 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v671 + v670) ^ (v612 + 12)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v683) = (((-49 * BYTE3(v683)) ^ v683 ^ v677[(v683 >> 24) + 1] ^ v678[v683 >> 24] ^ v679[v683 >> 24] ^ *(v612 + 13)) << 16) | ((v649[v684 >> 24] ^ v648[(v684 >> 24) + 3] ^ v650[v684 >> 24] ^ *(v612 + 12) ^ v684 ^ (83 * (v684 >> 24))) << 24) | (v682 << 8);
  v685 = STACK[0x35F8];
  *(STACK[0xEB0] + 284) = (((v683 - ((2 * v683) & 0xC234A000) - 518369065) ^ 0x5831FBB4) & (v675 | 0xFFFFFF00) | v664) ^ 0x5C8E5468;
  v686 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v687 = *v503;
  LODWORD(v649) = *(*v503 + v686);
  v688 = 1864610357 * ((1864610357 * ((v649 ^ (v685 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v649 ^ (v685 + 3)) & 0x7FFFFFFF)) >> 16));
  v689 = v688 >> 24;
  LODWORD(v688) = v678[v688 >> 24] ^ v677[(v688 >> 24) + 1] ^ v679[v688 >> 24] ^ v685[3] ^ v688;
  LODWORD(v675) = -49 * v689;
  LOBYTE(v689) = v688 ^ ~(-49 * v689);
  LODWORD(v675) = (v688 ^ v675) & 0x52;
  v690 = 1864610357 * ((1864610357 * ((v649 ^ (v685 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v649 ^ (v685 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v690) = v677[(v690 >> 24) + 1] ^ v685[2] ^ v678[v690 >> 24] ^ v679[v690 >> 24] ^ (53 * ((53 * (v649 ^ (v685 + 2))) ^ ((1864610357 * ((v649 ^ (v685 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-49 * ((1864610357 * ((1864610357 * ((v649 ^ (v685 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v649 ^ (v685 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v691 = 1864610357 * ((1864610357 * ((v649 ^ (v685 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v649 ^ (v685 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v691) = v677[(v691 >> 24) + 1] ^ v685[1] ^ v678[v691 >> 24] ^ v679[v691 >> 24] ^ (53 * ((53 * (v649 ^ (v685 + 1))) ^ ((1864610357 * ((v649 ^ (v685 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-49 * ((1864610357 * ((1864610357 * ((v649 ^ (v685 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v649 ^ (v685 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v692 = 1864610357 * ((1864610357 * ((v649 ^ v685) & 0x7FFFFFFF)) ^ ((1864610357 * ((v649 ^ v685) & 0x7FFFFFFF)) >> 16));
  LODWORD(v692) = (v691 << 16) | ((v692 ^ v677[(v692 >> 24) + 1] ^ v678[v692 >> 24] ^ v679[v692 >> 24] ^ (-49 * (v692 >> 24)) ^ *v685) << 24) | (v690 << 8);
  v6[72] = (((v692 - ((2 * v692) & 0x58857200) + 742570245) ^ 0x411E25A8) & (v689 | 0xFFFFFF00) | v675) ^ 0x9AD501C5;
  v693 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v694 = *v503;
  LODWORD(v648) = *(*v503 + v693);
  v695 = 1864610357 * ((1864610357 * ((v648 ^ (v685 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 7)) & 0x7FFFFFFF)) >> 16));
  v696 = v695 >> 24;
  LODWORD(v695) = v677[(v695 >> 24) + 1] ^ v685[7] ^ v678[v695 >> 24] ^ v679[v695 >> 24] ^ v695;
  LODWORD(v691) = -49 * v696;
  LOBYTE(v696) = v695 ^ ~(-49 * v696);
  LODWORD(v691) = (v695 ^ v691) & 0xBD;
  v697 = 1864610357 * ((1864610357 * ((v648 ^ (v685 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 6)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v686) = *(v687 + v686);
  v698 = 1864610357 * ((1864610357 * ((v686 ^ (v685 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v686 ^ (v685 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v698) = v677[(v698 >> 24) + 1] ^ v685[5] ^ v678[v698 >> 24] ^ v679[v698 >> 24] ^ (53 * ((53 * (v686 ^ (v685 + 5))) ^ ((1864610357 * ((v686 ^ (v685 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-49 * ((1864610357 * ((1864610357 * ((v686 ^ (v685 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v686 ^ (v685 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v699 = 1864610357 * ((1864610357 * ((v686 ^ (v685 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v686 ^ (v685 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v699) = (v698 << 16) | ((v678[v699 >> 24] ^ v677[(v699 >> 24) + 1] ^ v679[v699 >> 24] ^ v685[4] ^ v699 ^ (-49 * (v699 >> 24))) << 24) | ((v678[v697 >> 24] ^ v677[(v697 >> 24) + 1] ^ v679[v697 >> 24] ^ v685[6] ^ (53 * ((53 * (v648 ^ (v685 + 6))) ^ ((1864610357 * ((v648 ^ (v685 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-49 * ((1864610357 * ((1864610357 * ((v648 ^ (v685 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  v6[73] = (((v699 - ((2 * v699) & 0x604D7400) + 807844389) ^ 0x3B6B0A67) & (v696 | 0xFFFFFF00) | v691) ^ 0xDCC86C86;
  LODWORD(v697) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v700 = 1864610357 * ((1864610357 * ((v697 ^ (v685 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v685 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v696) = v677[(v700 >> 24) + 1] ^ v685[11] ^ v678[v700 >> 24] ^ v679[v700 >> 24] ^ v700;
  LODWORD(v698) = -49 * ((1864610357 * ((1864610357 * ((v697 ^ (v685 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v685 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v700) = v696 ^ ~v698;
  LODWORD(v698) = (v696 ^ v698) & 0x98 | 0x83001C00;
  v701 = 1864610357 * ((1864610357 * ((v697 ^ (v685 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v685 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v701) = v677[(v701 >> 24) + 1] ^ v685[10] ^ v678[v701 >> 24] ^ v679[v701 >> 24] ^ (53 * ((53 * (v697 ^ (v685 + 10))) ^ ((1864610357 * ((v697 ^ (v685 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-49 * ((1864610357 * ((1864610357 * ((v697 ^ (v685 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v685 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v702 = 1864610357 * ((1864610357 * ((v697 ^ (v685 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v697 ^ (v685 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v693) = 1864610357 * ((*(v694 + v693) ^ (v685 + 8)) & 0x7FFFFFFF);
  v703 = 1864610357 * (v693 ^ WORD1(v693));
  LODWORD(v702) = ((v702 ^ v677[(v702 >> 24) + 1] ^ v678[v702 >> 24] ^ v679[v702 >> 24] ^ (-49 * BYTE3(v702)) ^ v685[9]) << 16) | ((v678[v703 >> 24] ^ v677[(v703 >> 24) + 1] ^ v679[v703 >> 24] ^ v685[8] ^ v703 ^ (-49 * (v703 >> 24))) << 24) | (v701 << 8);
  v6[74] = v698 ^ 0xF485FAFD ^ ((v702 - ((2 * v702) & 0xE4BAB200) - 228763212) ^ 0x862938D3) & (v700 | 0xFFFFFF00);
  v704 = *(&off_1010A0B50 + (v526 - 21426)) - 2046204498;
  v705 = *(&off_1010A0B50 + (v526 ^ 0x575D)) - 1120593515;
  v706 = *(&off_1010A0B50 + (v526 - 20733)) - 1193459187;
  v707 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v708 = *v503;
  LODWORD(v648) = *(*v503 + v707);
  v709 = 1864610357 * ((1864610357 * ((v648 ^ (v685 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 15)) & 0x7FFFFFFF)) >> 16));
  v710 = v709 >> 24;
  LODWORD(v709) = v705[v709 >> 24] ^ v704[(v709 >> 24) + 2] ^ v706[v709 >> 24] ^ v685[15] ^ v709;
  LODWORD(v710) = 59 * v710;
  LOBYTE(v700) = v709 ^ ~v710;
  LODWORD(v710) = (v709 ^ v710) & 0x53;
  v711 = 1864610357 * ((1864610357 * ((v648 ^ (v685 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v711) = v704[(v711 >> 24) + 2] ^ v685[14] ^ v705[v711 >> 24] ^ v706[v711 >> 24] ^ (53 * ((53 * (v648 ^ (v685 + 14))) ^ ((1864610357 * ((v648 ^ (v685 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (59 * ((1864610357 * ((1864610357 * ((v648 ^ (v685 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v712 = 1864610357 * ((1864610357 * ((v648 ^ (v685 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v712) = v704[(v712 >> 24) + 2] ^ v685[13] ^ v705[v712 >> 24] ^ v706[v712 >> 24] ^ (53 * ((53 * (v648 ^ (v685 + 13))) ^ ((1864610357 * ((v648 ^ (v685 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (59 * ((1864610357 * ((1864610357 * ((v648 ^ (v685 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v713 = 1864610357 * ((1864610357 * ((v648 ^ (v685 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v648 ^ (v685 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v677) = (v712 << 16) | ((v713 ^ v677[(v713 >> 24) + 1] ^ v678[v713 >> 24] ^ v679[v713 >> 24] ^ (-49 * (v713 >> 24)) ^ v685[12]) << 24) | (v711 << 8);
  v714 = STACK[0x3BF0];
  v6[75] = (((v677 - ((2 * v677) & 0xE0AA0E00) - 262863068) ^ 0x9AC1CD88) & (v700 | 0xFFFFFF00) | v710) ^ 0x717FAC75;
  v715 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v716 = *v503;
  LODWORD(v711) = *(*v503 + v715);
  v717 = 1864610357 * ((1864610357 * ((v711 ^ (v714 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v711 ^ (v714 + 3)) & 0x7FFFFFFF)) >> 16));
  v718 = v717 >> 24;
  LODWORD(v717) = v704[(v717 >> 24) + 2] ^ *(v714 + 3) ^ v705[v717 >> 24] ^ v706[v717 >> 24] ^ v717;
  v719 = 1864610357 * ((1864610357 * ((v711 ^ (v714 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v711 ^ (v714 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v707) = *(v708 + v707);
  v720 = 1864610357 * ((1864610357 * ((v707 ^ (v714 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v707 ^ (v714 + 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v720) = v704[(v720 >> 24) + 2] ^ *(v714 + 1) ^ v705[v720 >> 24] ^ v706[v720 >> 24] ^ (53 * ((53 * (v707 ^ (v714 + 1))) ^ ((1864610357 * ((v707 ^ (v714 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (59 * ((1864610357 * ((1864610357 * ((v707 ^ (v714 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v707 ^ (v714 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v721 = 1864610357 * ((1864610357 * ((v707 ^ v714) & 0x7FFFFFFF)) ^ ((1864610357 * ((v707 ^ v714) & 0x7FFFFFFF)) >> 16));
  LODWORD(v721) = (v720 << 16) | ((v705[v721 >> 24] ^ v704[(v721 >> 24) + 2] ^ v706[v721 >> 24] ^ *v714 ^ v721 ^ (59 * (v721 >> 24))) << 24) | ((v705[v719 >> 24] ^ v704[(v719 >> 24) + 2] ^ v706[v719 >> 24] ^ *(v714 + 2) ^ v719 ^ (59 * BYTE3(v719))) << 8);
  v6[76] = (((v721 - ((2 * v721) & 0x46316E00) - 1558661298) ^ 0x1F371DCC) & (v717 ^ ~(59 * v718) | 0xFFFFFF00) | (v717 ^ (59 * v718)) & 0x7D) ^ 0x62342E2C;
  LODWORD(v719) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v722 = 1864610357 * ((1864610357 * ((v719 ^ (v714 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v719 ^ (v714 + 7)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v720) = v704[(v722 >> 24) + 2] ^ *(v714 + 7) ^ v705[v722 >> 24] ^ v706[v722 >> 24] ^ v722;
  LODWORD(v717) = 59 * ((1864610357 * ((1864610357 * ((v719 ^ (v714 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v719 ^ (v714 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v722) = v720 ^ ~v717;
  LOBYTE(v717) = v720 ^ v717;
  v723 = 1864610357 * ((1864610357 * ((v719 ^ (v714 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v719 ^ (v714 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v723) = v704[(v723 >> 24) + 2] ^ *(v714 + 6) ^ v705[v723 >> 24] ^ v706[v723 >> 24] ^ (53 * ((53 * (v719 ^ (v714 + 6))) ^ ((1864610357 * ((v719 ^ (v714 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (59 * ((1864610357 * ((1864610357 * ((v719 ^ (v714 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v719 ^ (v714 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v724 = 1864610357 * ((1864610357 * ((v719 ^ (v714 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v719 ^ (v714 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v715) = 1864610357 * ((*(v716 + v715) ^ (v714 + 4)) & 0x7FFFFFFF);
  v725 = 1864610357 * (v715 ^ WORD1(v715));
  LODWORD(v724) = ((v724 ^ v704[(v724 >> 24) + 2] ^ v705[v724 >> 24] ^ v706[v724 >> 24] ^ (59 * BYTE3(v724)) ^ *(v714 + 5)) << 16) | ((v705[v725 >> 24] ^ v704[(v725 >> 24) + 2] ^ v706[v725 >> 24] ^ *(v714 + 4) ^ v725 ^ (59 * (v725 >> 24))) << 24) | (v723 << 8);
  v6[77] = (((v724 - ((2 * v724) & 0x6EF6B000) + 930830575) ^ 0x71851ADA) & (v722 | 0xFFFFFF00) | v717 & 0xCA) ^ 0x6A14D8AD;
  v726 = *v503;
  v727 = *v505 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v723) = *(*v503 + v727);
  v728 = 1864610357 * ((1864610357 * ((v723 ^ (v714 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v723 ^ (v714 + 11)) & 0x7FFFFFFF)) >> 16));
  v729 = v728 >> 24;
  LODWORD(v728) = v705[v728 >> 24] ^ v704[(v728 >> 24) + 2] ^ v706[v728 >> 24] ^ *(v714 + 11) ^ v728;
  LODWORD(v717) = 59 * v729;
  LOBYTE(v729) = v728 ^ ~(59 * v729);
  LODWORD(v717) = (v728 ^ v717) & 0xCA;
  v730 = 1864610357 * ((1864610357 * ((v723 ^ (v714 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v723 ^ (v714 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v730) = v704[(v730 >> 24) + 2] ^ *(v714 + 10) ^ v705[v730 >> 24] ^ v706[v730 >> 24] ^ (53 * ((53 * (v723 ^ (v714 + 10))) ^ ((1864610357 * ((v723 ^ (v714 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (59 * ((1864610357 * ((1864610357 * ((v723 ^ (v714 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v723 ^ (v714 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v731 = 1864610357 * ((1864610357 * ((v723 ^ (v714 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v723 ^ (v714 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v731) = v704[(v731 >> 24) + 2] ^ *(v714 + 9) ^ v705[v731 >> 24] ^ v706[v731 >> 24] ^ (53 * ((53 * (v723 ^ (v714 + 9))) ^ ((1864610357 * ((v723 ^ (v714 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (59 * ((1864610357 * ((1864610357 * ((v723 ^ (v714 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v723 ^ (v714 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v732 = 1864610357 * ((1864610357 * ((v723 ^ (v714 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v723 ^ (v714 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v732) = (v731 << 16) | ((v732 ^ v704[(v732 >> 24) + 2] ^ v705[v732 >> 24] ^ v706[v732 >> 24] ^ (59 * (v732 >> 24)) ^ *(v714 + 8)) << 24) | (v730 << 8);
  v6[78] = (((v732 - ((2 * v732) & 0xB3E73E00) + 1509138330) ^ 0x1978CBAF) & (v729 | 0xFFFFFF00) | v717) ^ 0x6D66B378;
  v733 = *(&off_1010A0B50 + (v526 ^ 0x5B80)) - 879147150;
  v734 = *(&off_1010A0B50 + (v526 & 0x195A8013)) - 1463007950;
  v735 = *(&off_1010A0B50 + (v526 - 22605)) - 1628389315;
  v736 = *v505 & 0xFFFFFFFFE6F073DCLL;
  v737 = *v503;
  LODWORD(v730) = *(*v503 + v736);
  v738 = 1864610357 * ((1864610357 * ((v730 ^ (v714 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v730 ^ (v714 + 15)) & 0x7FFFFFFF)) >> 16));
  v739 = v738 >> 24;
  LODWORD(v738) = v733[(v738 >> 24) + 2] ^ *(v714 + 15) ^ v734[(v738 >> 24) + 2] ^ v735[v738 >> 24] ^ v738;
  v740 = 1864610357 * ((1864610357 * ((v730 ^ (v714 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v730 ^ (v714 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v726) = *(v726 + v727);
  v741 = 1864610357 * ((1864610357 * ((v726 ^ (v714 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v726 ^ (v714 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v741) = v733[(v741 >> 24) + 2] ^ *(v714 + 13) ^ v734[(v741 >> 24) + 2] ^ v735[v741 >> 24] ^ (53 * ((53 * (v726 ^ (v714 + 13))) ^ ((1864610357 * ((v726 ^ (v714 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (-119 * ((1864610357 * ((1864610357 * ((v726 ^ (v714 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v726 ^ (v714 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v742 = 1864610357 * ((1864610357 * ((v726 ^ (v714 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v726 ^ (v714 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v704) = (v741 << 16) | ((v705[v742 >> 24] ^ v704[(v742 >> 24) + 2] ^ v706[v742 >> 24] ^ *(v714 + 12) ^ v742 ^ (59 * (v742 >> 24))) << 24) | ((v740 ^ v733[(v740 >> 24) + 2] ^ v734[(v740 >> 24) + 2] ^ v735[v740 >> 24] ^ (-119 * BYTE3(v740)) ^ *(v714 + 14)) << 8);
  v6[79] = ((v738 ^ (-119 * v739)) & 0x49 | 0x6485200) ^ 0x8FF49423 ^ ((v704 - ((2 * v704) & 0x12C35600) + 157395733) ^ 0xB1728EA3) & (v738 ^ ~(-119 * v739) | 0xFFFFFF00);
  LODWORD(v741) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v743 = 1864610357 * ((1864610357 * ((v741 ^ (v613 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v741 ^ (v613 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v738) = -119 * ((1864610357 * ((1864610357 * ((v741 ^ (v613 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v741 ^ (v613 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v740) = v733[(v743 >> 24) + 2] ^ *(v613 + 3) ^ v734[(v743 >> 24) + 2] ^ v735[v743 >> 24] ^ v743;
  LOBYTE(v742) = v740 ^ ~v738;
  LODWORD(v743) = (v740 ^ v738) & 0x1D;
  v744 = 1864610357 * ((1864610357 * ((v741 ^ (v613 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v741 ^ (v613 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v740) = v733[(v744 >> 24) + 2] ^ *(v613 + 2) ^ v734[(v744 >> 24) + 2] ^ v735[v744 >> 24] ^ (53 * ((53 * (v741 ^ (v613 + 2))) ^ ((1864610357 * ((v741 ^ (v613 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-119 * ((1864610357 * ((1864610357 * ((v741 ^ (v613 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v741 ^ (v613 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v745 = 1864610357 * ((1864610357 * ((v741 ^ (v613 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v741 ^ (v613 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v744) = 1864610357 * ((*(v737 + v736) ^ v613) & 0x7FFFFFFF);
  v746 = 1864610357 * (v744 ^ WORD1(v744));
  LODWORD(v745) = ((v745 ^ v733[(v745 >> 24) + 2] ^ v734[(v745 >> 24) + 2] ^ v735[v745 >> 24] ^ (-119 * BYTE3(v745)) ^ *(v613 + 1)) << 16) | ((v734[(v746 >> 24) + 2] ^ v733[(v746 >> 24) + 2] ^ v735[v746 >> 24] ^ *v613 ^ v746 ^ (-119 * (v746 >> 24))) << 24) | (v740 << 8);
  v6[80] = (((v745 - ((2 * v745) & 0x310A2A00) + 411375088) ^ 0xB33A3C12) & (v742 | 0xFFFFFF00) | v743) ^ 0x3D1D38F1;
  v747 = *v503;
  v748 = *v505 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v736) = *(*v503 + v748);
  v749 = 1864610357 * ((1864610357 * ((v736 ^ (v613 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 7)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v742) = -119 * ((1864610357 * ((1864610357 * ((v736 ^ (v613 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v749) = v734[(v749 >> 24) + 2] ^ v733[(v749 >> 24) + 2] ^ v735[v749 >> 24] ^ *(v613 + 7) ^ v749;
  LOBYTE(v745) = v749 ^ ~v742;
  LODWORD(v742) = (v749 ^ v742) & 0xD4;
  v750 = 1864610357 * ((1864610357 * ((v736 ^ (v613 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v749) = v733[(v750 >> 24) + 2] ^ *(v613 + 6) ^ v734[(v750 >> 24) + 2] ^ v735[v750 >> 24] ^ (53 * ((53 * (v736 ^ (v613 + 6))) ^ ((1864610357 * ((v736 ^ (v613 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-119 * ((1864610357 * ((1864610357 * ((v736 ^ (v613 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v751 = 1864610357 * ((1864610357 * ((v736 ^ (v613 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v751) = v733[(v751 >> 24) + 2] ^ *(v613 + 5) ^ v734[(v751 >> 24) + 2] ^ v735[v751 >> 24] ^ (53 * ((53 * (v736 ^ (v613 + 5))) ^ ((1864610357 * ((v736 ^ (v613 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-119 * ((1864610357 * ((1864610357 * ((v736 ^ (v613 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v752 = 1864610357 * ((1864610357 * ((v736 ^ (v613 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v736 ^ (v613 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v752) = (v751 << 16) | ((v752 ^ v733[(v752 >> 24) + 2] ^ v734[(v752 >> 24) + 2] ^ v735[v752 >> 24] ^ (-119 * (v752 >> 24)) ^ *(v613 + 4)) << 24);
  v6[81] = ((((v752 & 0xFFFF00FF | (v749 << 8)) - ((2 * (v752 & 0xFFFF00FF | (v749 << 8))) & 0x20E87800) + 276053072) ^ 0x7A24D67B) & (v745 | 0xFFFFFF00) | v742) ^ 0x7E706C0B;
  v753 = *v503;
  v754 = *v505 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v749) = *(*v503 + v754);
  v755 = 1864610357 * ((1864610357 * ((v749 ^ (v613 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v749 ^ (v613 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v706) = v733[(v755 >> 24) + 2] ^ *(v613 + 11) ^ v734[(v755 >> 24) + 2] ^ v735[v755 >> 24] ^ v755;
  LOBYTE(v751) = -119 * ((1864610357 * ((1864610357 * ((v749 ^ (v613 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v749 ^ (v613 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v756 = 1864610357 * ((1864610357 * ((v749 ^ (v613 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v749 ^ (v613 + 10)) & 0x7FFFFFFF)) >> 16));
  v757 = (v756 >> 24) + 2;
  LOBYTE(v714) = v733[v757];
  LOBYTE(v739) = v734[v757];
  LOBYTE(v757) = v706 ^ ~v751;
  LOBYTE(v751) = v706 ^ v751;
  LOBYTE(v706) = v739 ^ v714 ^ v735[v756 >> 24] ^ *(v613 + 10) ^ v756 ^ (-119 * BYTE3(v756));
  LODWORD(v756) = *(v747 + v748);
  v758 = 1864610357 * ((1864610357 * ((v756 ^ (v613 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v756 ^ (v613 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v748) = v733[(v758 >> 24) + 2] ^ *(v613 + 9) ^ v734[(v758 >> 24) + 2] ^ v735[v758 >> 24];
  LOBYTE(v758) = (53 * ((53 * (v756 ^ (v613 + 9))) ^ ((1864610357 * ((v756 ^ (v613 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-119 * ((1864610357 * ((1864610357 * ((v756 ^ (v613 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v756 ^ (v613 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v759 = 1864610357 * ((1864610357 * ((v756 ^ (v613 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v756 ^ (v613 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v759) = ((v748 ^ v758) << 16) | ((v734[(v759 >> 24) + 2] ^ v733[(v759 >> 24) + 2] ^ v735[v759 >> 24] ^ *(v613 + 8) ^ v759 ^ (-119 * (v759 >> 24))) << 24);
  v6[82] = ((((v759 & 0xFFFF00FF | (v706 << 8)) - ((2 * (v759 & 0xFFFF00FF | (v706 << 8))) & 0x5674D400) - 1422234897) ^ 0xCCB13AF0) & (v757 | 0xFFFFFF00) | v751 & 0xE0) ^ 0x29542055;
  LODWORD(v759) = *(*v503 + (*v505 & 0xFFFFFFFFE6F073DCLL));
  v760 = 1864610357 * ((1864610357 * ((v759 ^ (v613 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v759 ^ (v613 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v751) = -79 * ((1864610357 * ((1864610357 * ((v759 ^ (v613 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v759 ^ (v613 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v748) = *(STACK[0xDA0] + (v760 >> 24) + 1) ^ *(v613 + 15) ^ *(STACK[0xD90] + (v760 >> 24) + 1) ^ *(STACK[0xD80] + (v760 >> 24)) ^ v760;
  LOBYTE(v760) = v748 ^ ~v751;
  LODWORD(v748) = (v748 ^ v751) & 0xD9;
  v761 = 1864610357 * ((1864610357 * ((v759 ^ (v613 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v759 ^ (v613 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v751) = *(STACK[0xDA0] + (v761 >> 24) + 1) ^ *(v613 + 14) ^ *(STACK[0xD90] + (v761 >> 24) + 1) ^ *(STACK[0xD80] + (v761 >> 24));
  LOBYTE(v761) = (53 * ((53 * (v759 ^ (v613 + 14))) ^ ((1864610357 * ((v759 ^ (v613 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (-79 * ((1864610357 * ((1864610357 * ((v759 ^ (v613 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v759 ^ (v613 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v762 = 1864610357 * ((1864610357 * ((v759 ^ (v613 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v759 ^ (v613 + 13)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v753) = 1864610357 * ((*(v753 + v754) ^ (v613 + 12)) & 0x7FFFFFFF);
  v763 = 1864610357 * (v753 ^ WORD1(v753));
  LODWORD(v762) = ((v762 ^ *(STACK[0xDA0] + (v762 >> 24) + 1) ^ *(STACK[0xD90] + (v762 >> 24) + 1) ^ *(STACK[0xD80] + (v762 >> 24)) ^ (-79 * BYTE3(v762)) ^ *(v613 + 13)) << 16) | ((v734[(v763 >> 24) + 2] ^ v733[(v763 >> 24) + 2] ^ v735[v763 >> 24] ^ *(v613 + 12) ^ v763 ^ (-119 * (v763 >> 24))) << 24) | ((v751 ^ v761) << 8);
  v6[83] = (((v762 - ((2 * v762) & 0x61D22C00) - 1326901751) ^ 0x53C77C2F) & (v760 | 0xFFFFFF00) | v748) ^ 0x54A7D698;
  v764 = STACK[0xE80];
  LOBYTE(v762) = *(STACK[0xE80] + 51);
  LOBYTE(v748) = v762 & 0xC0 ^ 0xBA;
  LOBYTE(v763) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & 0x34 ^ v748)) ^ v748)) ^ v748)) ^ v748)) ^ v748));
  LOBYTE(v762) = *(STACK[0xE80] + 50);
  LOBYTE(v760) = v762 & 0xD6 ^ 0x35;
  LOBYTE(v762) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * (v760 ^ v762 & 0x3A)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ 0xD6;
  LOBYTE(v754) = *(STACK[0xE80] + 49);
  LOBYTE(v760) = v754 & 0xA ^ 0x17;
  LOBYTE(v754) = v754 ^ (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & 0x26 ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ 0xA;
  LODWORD(v748) = *(STACK[0xE80] + 48);
  LODWORD(v760) = v748 & 0xFFFFFFEE | 1;
  LODWORD(v762) = (((((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * (v748 & (2 * v760) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760) << 25) ^ (v748 << 24)) & 0xFF0000FF | (v754 << 16) | (v762 << 8)) ^ 0xEE000000;
  v6[84] = v763 & 0x76 ^ 0xB49D7797 ^ ((v762 - ((2 * v762) & 0x162C7800) - 1961476941) ^ 0xB3952E3A) & (v763 ^ 0xFFFFFF3F);
  LOBYTE(v762) = v764[55];
  LOBYTE(v754) = v762 & 0x38 ^ 0xAE;
  LOBYTE(v763) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * v754) ^ v754)) ^ v754)) ^ v754)) ^ v754)) ^ v754));
  LOBYTE(v762) = v764[54];
  LOBYTE(v734) = v762 & 0x50 ^ 0xF2;
  LOBYTE(v762) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * v734) ^ v734)) ^ v734)) ^ v734)) ^ v734)) ^ v734)) ^ 0x50;
  LOBYTE(v754) = v764[53];
  LOBYTE(v734) = v754 & 0x12 ^ 0x13;
  LODWORD(v748) = v764[52];
  LODWORD(v751) = v748 & 0x6E ^ 0xFFFFFFC1;
  LODWORD(v762) = (((((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * (v751 ^ v748 & 2)) ^ v751)) ^ v751)) ^ v751)) ^ v751)) ^ v751) << 25) ^ (v748 << 24)) & 0xFF0000FF | (((v754 ^ (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * ((v754 ^ 0x6C) & (2 * v734) ^ v734)) ^ v734)) ^ v734)) ^ v734)) ^ v734)) ^ v734))) ^ 0x12) << 16) | (v762 << 8)) ^ 0x6E000000;
  v6[85] = ((v762 - ((2 * v762) & 0x6359BC00) - 1314070798) ^ 0x2DDA7D02) & (v763 ^ 0xFFFFFFC7) ^ (v763 & 0xF | 0x113B9CC0);
  LOBYTE(v762) = v764[59];
  LOBYTE(v748) = v762 & 0x4A ^ 0x77;
  LOBYTE(v762) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & 0x26 ^ v748)) ^ v748)) ^ v748)) ^ v748)) ^ v748)) ^ v748));
  LODWORD(v763) = v762 & 0x94;
  LODWORD(v754) = v762 ^ 0xFFFFFFB5;
  LOBYTE(v762) = v764[58];
  LOBYTE(v760) = v762 & 0x2A ^ 0x27;
  LOBYTE(v748) = v764[57];
  LOBYTE(v733) = v748 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v748 ^ 0x2C)) & 0x68 ^ 0x34) & (v748 ^ 0x2C))) ^ 0x34) & (v748 ^ 0x2C))) ^ 0x34) & (v748 ^ 0x2C))) ^ 0x34) & (v748 ^ 0x6C))) ^ 0x34;
  LODWORD(v748) = v764[56];
  LODWORD(v751) = v748 & 2 ^ 0xFFFFFF9B;
  LODWORD(v733) = (v733 << 16) | ((v748 ^ (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & (2 * ((v748 ^ 0x6C) & 0x2E ^ v751)) ^ v751)) ^ v751)) ^ v751)) ^ v751)) ^ v751)) ^ 2) << 24) | (((v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * (v760 ^ v762 & 6)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760))) ^ 0x2A) << 8);
  v6[86] = v763 ^ 0x66CA9972 ^ ((v733 + 1987926256 + (~(2 * v733) | 0x13054FFF)) ^ 0x38966284) & v754;
  LOBYTE(v762) = v764[63];
  LOBYTE(v754) = v762 & 0x64 ^ 0x4C;
  LOBYTE(v762) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * v754) ^ v754)) ^ v754)) ^ v754)) ^ v754));
  LODWORD(v763) = v762 & 0xDD;
  LODWORD(v754) = v762 ^ 0xFFFFFF9B;
  LOBYTE(v762) = v764[62];
  LOBYTE(v758) = v762 & 0xCE ^ 0xB1;
  LOBYTE(v762) = v762 ^ (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * ((v762 ^ 0x6C) & (2 * (v758 ^ v762 & 0x22)) ^ v758)) ^ v758)) ^ v758)) ^ v758)) ^ v758)) ^ 0xCE;
  LODWORD(v758) = v764[60];
  LODWORD(v748) = v758 & 4 ^ 0xFFFFFF9C;
  LOBYTE(v733) = v764[61];
  LOBYTE(v760) = v733 & 0xF6 ^ 5;
  LODWORD(v758) = ((v758 ^ (2 * ((v758 ^ 0x6C) & (2 * ((v758 ^ 0x6C) & (2 * ((v758 ^ 0x6C) & (2 * ((v758 ^ 0x6C) & (2 * v748) ^ v748)) ^ v748)) ^ v748)) ^ v748)) ^ 4) << 24) | (((v733 ^ (2 * ((v733 ^ 0x6C) & (2 * ((v733 ^ 0x6C) & (2 * ((v733 ^ 0x6C) & (2 * ((v733 ^ 0x6C) & (2 * ((v733 ^ 0x6C) & (2 * (v760 ^ v733 & 0x1A)) ^ v760)) ^ v760)) ^ v760)) ^ v760)) ^ v760))) ^ 0xF6) << 16) | (v762 << 8);
  v6[87] = v763 ^ 0xE6572BC4 ^ ((v758 - ((2 * v758) & 0x74E82E00) - 1166796956) ^ 0xAFD42946) & v754;
  LODWORD(STACK[0x5E6C]) = -371865839;
  return (*(STACK[0xF18] + 8 * v526))();
}