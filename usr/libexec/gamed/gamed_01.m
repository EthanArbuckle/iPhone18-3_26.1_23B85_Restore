void sub_100035A3C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1037613739 * (((a1 | 0xF3D86D6B) - (a1 & 0xF3D86D6B)) ^ 0x22DA4014));
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 763308221 < 0)
  {
    v4 = 763308221 - v3;
  }

  else
  {
    v4 = v3 - 763308221;
  }

  v7 = v1 + 1564307779 * ((v6 - 1200467115 - 2 * (v6 & 0xB8725355)) ^ 0x2F7F9F46) - 783;
  v8 = v2;
  v5 = *(&off_100374800 + (v1 ^ 0x3FC)) - 8;
  (*&v5[8 * v1 + 11176])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100035D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(void))
{
  v20 = (((v16 ^ 0x3CC50A2A) - 1019546154) ^ ((v16 ^ 0x357AB4C6) - 897234118) ^ ((v16 ^ 0xABF36E81) + 1410109823)) + (((*(v19 - 156) ^ 0x82CD316B) + 2100481685) ^ ((*(v19 - 156) ^ 0x123227C8) - 305276872) ^ ((*(v19 - 156) ^ 0x32B3C6CE) - 850642638)) - 1390692808;
  v21 = (((a3 ^ 0x3C5048FA) - 1011894522) ^ ((a3 ^ 0x2ABE6B42) - 717122370) ^ ((a3 ^ 0xB4A2F3D5) + 1264389163)) + (((*(v19 - 152) ^ 0xF409FB21) + 200672479) ^ ((*(v19 - 152) ^ 0xFA1301C1) + 99417663) ^ ((*(v19 - 152) ^ 0xAC562A8D) + 1403639155)) - 1552914172;
  v22 = (v21 ^ 0x150CB794) & (2 * (v21 & 0xA12937D6)) ^ v21 & 0xA12937D6;
  v23 = ((2 * (v21 ^ 0x171CF910)) ^ 0x6C6B9D8C) & (v21 ^ 0x171CF910) ^ (2 * (v21 ^ 0x171CF910)) & 0xB635CEC6;
  v24 = v23 ^ 0x92144242;
  v25 = (v23 ^ 0x4218C80) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xD8D73B18) & v24 ^ (4 * v24) & 0xB635CEC4;
  v27 = (v26 ^ 0x90150A00) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x2620C4C6)) ^ 0x635CEC60) & (v26 ^ 0x2620C4C6) ^ (16 * (v26 ^ 0x2620C4C6)) & 0xB635CEC0;
  v29 = v27 ^ 0xB635CEC6 ^ (v28 ^ 0x2214CC00) & (v27 << 8);
  *(v19 - 156) = v20 ^ ((v20 ^ 0xF4C2E901) + 1673462689) ^ ((v20 ^ 0xCE542023) + 1495911043) ^ ((v20 ^ 0x2DEB2983) - 1164524765) ^ ((v20 ^ 0x7FFFF5FF) - 394125473) ^ 0xCACEC533;
  *(v19 - 152) = v21 ^ (2 * ((v29 << 16) & 0x36350000 ^ v29 ^ ((v29 << 16) ^ 0x4EC60000) & (((v28 ^ 0x94210286) << 8) & 0x36350000 ^ 0x2310000 ^ (((v28 ^ 0x94210286) << 8) ^ 0x35CE0000) & (v28 ^ 0x94210286)))) ^ 0x63067A37;
  v30 = (((v18 ^ 0xD26AE757) + 764745897) ^ ((v18 ^ 0xDF693E39) + 546750919) ^ ((v18 ^ 0xAF4F0903) + 1353774845)) + (((*(v19 - 148) ^ 0xE17FC35C) + 511720612) ^ ((*(v19 - 148) ^ 0xFE04F0E3) + 33230621) ^ ((*(v19 - 148) ^ 0xBD37E3D2) + 1120410670)) + 1805551971;
  v31 = (((v17 ^ 0x8FB20747) + 1884158137) ^ ((v17 ^ 0x9725B2C0) + 1759137088) ^ ((v17 ^ 0xBADB65EA) + 1160026646)) + (((*(v19 - 144) ^ 0x1F8D3C73) - 529349747) ^ ((*(v19 - 144) ^ 0x42519FC) - 69540348) ^ ((*(v19 - 144) ^ 0xB9E4F5E2) + 1176177182)) - 1436264071;
  *(v19 - 148) = v30 ^ ((v30 ^ 0xEDA7F16D) + 895280668) ^ ((v30 ^ 0x3D12F789) - 437657344) ^ ((v30 ^ 0x804E11B2) + 1488258757) ^ ((v30 ^ 0x77FFFFDF) - 1358632790) ^ 0x854838E4;
  *(v19 - 144) = v31 ^ ((v31 ^ 0x38F266CF) - 1564008016) ^ ((v31 ^ 0x445649D1) - 563933518) ^ ((v31 ^ 0xE690F97E) + 2091236895) ^ ((v31 ^ 0xFFFE6EFF) + 1707813280) ^ 0xC78668F2;
  return a16();
}

uint64_t sub_100035DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v21 - 136) = (v20 + 1690) ^ (843532609 * ((v19 + 757858084 - 2 * (v19 & 0x2D2BFF24)) ^ 0x7166ABA1));
  *(v21 - 128) = v18;
  *(v21 - 120) = a16;
  v22 = (*(v17 + 8 * (v20 ^ 0x8F4)))(v21 - 136);
  return (*(v17 + 8 * ((2421 * (*(v21 - 132) > ((v20 + 882) ^ (v16 - 845)))) ^ v20)))(v22);
}

void sub_100035E8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = *(v7 - 124);
  if (v8 == 1)
  {
    v12 = *(v7 - 156);
    v11 = *(v7 - 152);
    *(v7 - 164) = (8 * (v11 - 2 * (v11 & 1)) + 8) ^ 0x3B;
    *(v7 - 163) = (a4 - 119) & 0xFB ^ (v11 >> 5) ^ 0xC0;
    *(v7 - 162) = (v11 >> 13) ^ 0x33;
    *(v7 - 161) = (v11 >> 21) ^ 0x33;
    *(v7 - 160) = ((__PAIR64__(v12, v11) >> 29) - ((2 * (__PAIR64__(v12, v11) >> 29)) & 0xA8) + 84) ^ 0x67;
    *(v7 - 159) = (v12 >> 5) ^ 0x33;
    *(v7 - 158) = (v12 >> 13) ^ 0x33;
    v10 = (v12 >> 21) ^ 0x33;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_6;
    }

    v10 = *(v7 - 156);
    v9 = *(v7 - 152);
    *(v7 - 164) = (v10 >> 21) - ((v10 >> 21 << (a7 + a4 - 99)) & 0x66) + 51;
    *(v7 - 163) = (v10 >> 13) - ((v10 >> 12) & 0x66) + 51;
    *(v7 - 162) = (v10 >> 5) - ((v10 >> 4) & 0x66) + 51;
    *(v7 - 161) = (__PAIR64__(v10, v9) >> 29) - ((2 * (__PAIR64__(v10, v9) >> 29)) & 0x66) + 51;
    *(v7 - 160) = (v9 >> 21) - ((v9 >> 20) & 0x66) + 51;
    *(v7 - 159) = (v9 >> 13) - ((v9 >> 12) & 0x66) + 51;
    *(v7 - 158) = (~(v9 >> 4) | 0x99) + (v9 >> 5) + 52;
    LOBYTE(v10) = (8 * (v9 - ((2 * v9) & 0x1C)) + 112) ^ 0x43;
  }

  *(v7 - 157) = v10;
LABEL_6:
  JUMPOUT(0x10001FD98);
}

uint64_t sub_1000360D8@<X0>(int a1@<W0>, int a2@<W4>, unsigned int a3@<W8>)
{
  v11 = HIDWORD(v9) + HIDWORD(v6) + (*(v10 + 4 * v3) ^ a3);
  *(v10 + 4 * a2) = v11 + a3 - (a1 & (2 * v11));
  *(v10 + 4 * v3) = HIDWORD(v11) + a3 - ((HIDWORD(v11) << (((v8 - 31) ^ 0xD) - 55)) & 4);
  return (*(v7 + 8 * (v8 ^ (188 * (v5 + 1 == v4)))))();
}

uint64_t sub_100036148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v11 = (a7 ^ 0x7FD ^ (v8 + 800)) - v9;
  if (v7 > v11)
  {
    v11 = v7;
  }

  return (*(v10 + 8 * (((v11 < 0x7FFFFFFF) * (a7 ^ 0x4BC)) ^ a7)))(a1, a2, a3, a4, 0);
}

uint64_t sub_1000361FC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  v31 = v25 + 1168;
  v32 = a1 + 528;
  v33 = a1 + 800;
  if (v26 == 32)
  {
    LODWORD(STACK[0x278]) = 0;
    STACK[0x280] = *(&off_100374800 + a19);
    LODWORD(STACK[0x288]) = 1;
    v34 = STACK[0x2B8];
  }

  else
  {
    v34 = STACK[0x2B8];
    if (v26 == 20)
    {
      LODWORD(STACK[0x278]) = 0;
      STACK[0x280] = *(&off_100374800 + a18) - 8;
    }

    else
    {
      if (v26 != 16)
      {
        STACK[0x280] = 0;
        LODWORD(STACK[0x288]) = 0;
        LODWORD(STACK[0x278]) = 1;
        goto LABEL_9;
      }

      LODWORD(STACK[0x278]) = 0;
      STACK[0x280] = *(&off_100374800 + a17);
    }

    LODWORD(STACK[0x288]) = 1;
  }

LABEL_9:
  v35 = v34 + 229;
  v36 = 1785193651 * ((2 * ((v30 - 200) & 0x403D8220) - (v30 - 200) + 1069710812) ^ 0x2C1E91FC);
  v37 = (v30 - 200);
  v37[3] = &STACK[0x490];
  v37[1] = 0;
  v37[8] = v32;
  v37[9] = v31;
  v37[6] = 0;
  v37[7] = &STACK[0x540] + v27;
  v37[5] = v33;
  *(v30 - 168) = (v34 + 1475) ^ v36;
  *(v30 - 184) = (v29 ^ 0xE2AE4B4F) - v36 + ((v29 << ((v34 + 97) ^ 0xD4)) & 0xC55C969E) + 2144599992;
  v38 = (*(v28 + 8 * a25))(v30 - 200);
  return (*(v28 + 8 * ((55 * (*(v30 - 200) == -392105736)) ^ v35)))(v38);
}

void sub_1000363B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003648C@<X0>(int a1@<W2>, int a2@<W6>, int a3@<W8>)
{
  *v7 = a3 - 1;
  v9 = &v7[6 * ((v3 + 848614365) & 0xCD6B2BFF ^ 0xA9131990) + 2 + 6 * a3];
  v10 = *v9;
  LODWORD(STACK[0x47C]) = v9[1];
  v11 = &v7[6 * (a3 - 1458365912) + 2];
  *(v8 + 24) = *(v11 + 8);
  LODWORD(STACK[0x31C]) = *(v11 + 16);
  v12 = *(v5 + (v10 + a2) * a1 + 36);
  LODWORD(STACK[0x4E8]) = v12;
  return (*(v6 + 8 * ((35 * (v12 == v4)) ^ v3)))();
}

uint64_t sub_100036564()
{
  v6 = v0 + v2 + (((v4 ^ 0x30D6DBFE) - 819387390) ^ ((v4 ^ 0x928CE0D) - 153669133) ^ ((((v5 ^ 0x392) + 434) ^ 0x2EA11B23 ^ (49 * (v5 ^ 0x392))) + (v4 ^ 0xD15EE50B))) + 197235611;
  v7 = v3 + 226726467;
  v8 = (v7 < 0x55620958) ^ (v6 < 0x55620958);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x55620958;
  }

  return (*(v1 + 8 * ((v9 | (8 * v9)) ^ v5)))();
}

uint64_t sub_100036630@<X0>(void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a2 ^ 0x1D6u;
  **a1 = v6 + v5 + v7 - 90;
  return (*(v4 + 8 * ((1099 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_1000367F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, char *a24)
{
  a22 = a13;
  a24 = &a19;
  LODWORD(a21) = (v25 - 83) ^ (((((&a21 ^ 0xC2800801) & 0xC2D03C01) + (&a21 ^ 0x3172763E) - ((&a21 ^ 0x3172763E) & 0xC2D03C01)) ^ 0xE78DD7A4) * v24);
  v27 = (*(v26 + 8 * (v25 ^ 0xCF6u)))(&a21);
  return sub_10003AFEC(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a20, a21, a22, a23, a24);
}

uint64_t sub_100036888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = v16 + 718;
  v20 = v10 ^ a6;
  v21 = v10 ^ a6 ^ 0xA5B5D134EED9FCFCLL;
  v22 = a2 ^ 0x9ECF97A2F8288FD1 ^ a1;
  v23 = v13 + (a2 ^ 0x9ECF97A2F8288FD1) - 2 * (v13 & (a2 ^ 0x9ECF97A2F8288FD1));
  v24 = a2 & 0x5A7D0CA6708414DLL ^ 0x487908260080141 ^ (a2 ^ 0x9ECF97A2F8288FD1) & (a1 ^ 0x2CEE792DCC03D933);
  v25 = (v20 ^ 0x2ECD6CE40015F9FLL) & (a1 ^ 0xD6B6561854F46781) ^ a1 & 0x58A6F80551275C9CLL;
  v26 = v23 & 0xB17CD2D0BF6F470CLL ^ v22 ^ (v23 ^ 0xC1A33A862C00719DLL) & (v10 ^ 0x2EF0EFEB75F6C8D9);
  v27 = v22 & 0xE9879DEB0D134E02 ^ a1 ^ ((-v24 ^ 0x18F32A591A032C56 ^ (v24 + 0x18F32A591A032C56 - ((2 * v24) & 0x31E654B2340658ACLL)) ^ (v21 - v24 + (-v21 ^ (v24 - (v24 ^ v21)) ^ (v21 - 2 * (v21 & 0x787FCD17ECD08B0BLL ^ v20 & 1) - 0x78032E8132F74F6) ^ 0x78032E8132F74F5) + 1)) + v21) ^ (v23 ^ 0xD7DB5892DEECC060) & (v22 ^ 0x2949A9E7AB0B987ELL);
  v28 = v27 ^ 0x39686A57FD864E2ELL;
  v29 = (v27 ^ 0x39686A57FD864E2ELL) >> 10;
  if (v25 == 0x50A6500050244480)
  {
    v30 = v27 ^ 0x39686A57FD864E2ELL;
  }

  else
  {
    v30 = v27 ^ 0x1795A80279B1D1 ^ v29;
  }

  v31 = __ROR8__(v28, 7);
  return (*(v14 + 8 * ((((((v19 + a5) & v11) + 777) ^ v18) * (v12 != v9)) ^ v19)))(v8 ^ __ROR8__(((v31 & 0xFE000000000003FFLL) - ((2 * v31) & 0x50000000000003F4) + v17) ^ __ROR8__((((v28 << 54) ^ 0xC9937BEFC64F67DLL) & ((v27 >> 17) ^ 0xFFDDAB4BCB5D09BELL) | (v27 >> 17) & 0x4841039B0982) ^ 0x55F518C3456DB780 ^ (v29 + v28 - 2 * (v30 & v29)), 54) ^ v15, 10), v26 ^ (v26 >> 41) ^ (v26 >> 7) ^ ((v26 ^ 0xA05FE858E73619FBLL) << 23) ^ ((v26 ^ 0xA05FE858E73619FBLL) << 57) ^ a8);
}

uint64_t sub_100036DA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37)
{
  *(&STACK[0x540] + v38) = veorq_s8(*v39, a37);
  v41[52] += 32;
  v41[53] = a1;
  v41[54] = a1;
  return (*(v40 + 8 * ((54 * ((&STACK[0x540] + v38) != a1)) ^ v37)))(a1, a2, 40, a4, a5, a6);
}

uint64_t sub_100036DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, __int16 a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  a20 = a16;
  a21 = &a13;
  a22 = &a17;
  HIDWORD(a19) = v23 - 1033 - 143681137 * (((&a19 | 0xD2A6D9DA) - (&a19 & 0xD2A6D9DA)) ^ 0xB3FE520A) + 233;
  (*(v24 + 8 * (v23 + 532)))(&a19);
  LODWORD(a19) = (v23 - 485) ^ (50899313 * (((&a19 | 0x290C2240) - &a19 + (&a19 & 0xD6F3DDB8)) ^ 0x3D23BFDB));
  a20 = a16;
  a22 = &a15;
  (*(v24 + 8 * ((v23 - 1033) ^ 0xA79)))(&a19);
  a19 = a16;
  HIDWORD(a20) = (v23 + 366) ^ ((&a19 ^ 0x8DAD62EC) * v22);
  v25 = (*(v24 + 8 * (v23 + 440)))(&a19);
  return (*(v24 + 8 * (((a20 == v23 - 392107613) * ((275 * ((v23 - 1033) ^ 0x34F)) ^ 0x707)) ^ (v23 - 1033))))(v25);
}

void sub_100036F88(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = ((((2 * (v21 - 144)) | 0xBA8F25CE) - (v21 - 144) - 1564971751) ^ 0xC600646D) * v18;
  *(v21 - 140) = v22 + v19 + 640229745 + v17 - 82;
  *(v21 - 120) = (v17 + 1472) ^ v22;
  *(v21 - 136) = a1;
  *(v21 - 128) = &a17;
  (*(v20 + 8 * (v17 + 1864)))(v21 - 144);
  JUMPOUT(0x10002F258);
}

void sub_100037010(_DWORD *a1)
{
  v1 = *a1 - 843532609 * (((a1 ^ 0x88EA6F2) & 0xE4B4B0D1 | ~(a1 ^ 0x88EA6F2 | 0xE4B4B0D1)) ^ 0x4F88BD59);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003715C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37, uint64_t a38, int a39, uint64_t a40)
{
  v43 = __ROR8__((((a2 >> 37) ^ 0x899FFA1C5420742FLL) & ((a2 << 27) ^ 0x97CC9173FFFFFFFLL) | (a2 << 27) & 0x766005E3A8000000) ^ (((v42 - 1376) | 0x80u) + 402) ^ 0xC82BA0661BE08EE3, 27);
  v44 = v43 ^ v41;
  v45 = v40 ^ a38;
  v46 = v43 ^ a1 ^ 0x4D42901DC94EE8DALL;
  v47 = v45 ^ a6;
  v48 = (v46 & 0x982C95726C4FBDBELL ^ (v43 ^ v41 ^ 0x67A6734BCE5B5BLL) & (v43 ^ a1 ^ 0x619A0D9E1DAF3A9FLL) ^ 0xF7F76AFDBBBE6FFBLL) - (v43 ^ v41 ^ 0xB493AE82F36034A0 ^ v46);
  v49 = (v43 ^ v41 ^ 0xC76C7217D29FBEAELL) & (v45 ^ 0xBC70822E22F3F7DELL);
  v50 = v45 & 0x5F274116F51E584BLL;
  v51 = (v45 ^ a6) & 0x348E894D11072D60 ^ (v45 ^ a6 ^ 0xDEEAE3CCDC613A3ALL) & (v45 ^ 0x7701F49CCC0B2541) ^ v44 ^ 0x7825ACF0620CDD60;
  v52 = v43 & 0xBCC15307CE250E54 ^ v45 ^ a6 ^ (v43 ^ 0xED0FB7F98496B074) & (a1 ^ 0xCFAB169FA8E37B40);
  v53 = v51 ^ v45;
  v54 = v46 ^ v50 ^ v49;
  v55 = v47 & 0x18F25A3C54EDEEA7 ^ 0x101830008CC485 ^ (v47 ^ 0x21151C33239EC5C5) & (a1 ^ 0x9467E05BCDD4644CLL);
  v56 = v54 ^ v51;
  v57 = v54 ^ v51 ^ 0x9AFAC4B19BF82566;
  v58 = v53 & 1;
  if ((v53 & 1 & v55) != 0)
  {
    v58 = -v58;
  }

  v59 = (v58 + v55) ^ v53 & 0xFFFFFFFFFFFFFFFELL;
  v60 = v52 ^ a1 ^ v48;
  v61 = (v59 ^ 0x9DBA884279509524 ^ (8 * (v59 ^ 0x9DBA884279509524))) & 0x2283A6F70CF9B2D6 ^ (v59 >> 39) ^ (v59 ^ 0x9DBA884279509524 ^ (8 * (v59 ^ 0x9DBA884279509524)) ^ 0x5C68500840040D02) & ((v59 >> 61) | 0xDD7C5908F3064D28) ^ ((((v59 >> 61) ^ 1) & (v59 ^ 1) | 0x964EBC3CC12DBAE8) & (((v59 ^ 0x9DBA884279509524) << 25) ^ 0x7AAD4D3AEFADFAEFLL) | ((v59 ^ 0x9DBA884279509524) << 25) & 0x69B143C33E000000);
  v62 = v61 ^ 0x498065751C484E63;
  v63 = v52 ^ 0xBD321DC52983ABEDLL ^ (v52 >> 1) ^ ((v52 >> 6) ^ 0xB89E8160C1F3A852) & ~((v52 ^ 0xBD321DC52983ABEDLL) << 63) ^ ((v61 ^ 0x498065751C484E63) + ((v52 << 58) ^ 0xB400000000000000) - 2 * ((v61 ^ 0x498065751C484E63) & ((v52 << 58) ^ 0xB400000000000000)));
  v64 = v54 ^ 0xC86159D9320DEF65 ^ (v54 >> 7);
  v65 = (v60 >> 17) ^ (v60 >> 10) ^ v60 ^ 0x2C91F15B40142C17 ^ ((v60 ^ 0x2C91F15B40142C17) << 47) ^ ((v60 ^ 0x2C91F15B40142C17) << 54);
  v66 = v65 ^ 0xFF08F5C8197DA75DLL;
  *(&v67 + 1) = (v64 >> 3) ^ (v54 >> 44);
  *&v67 = (v64 << 61) ^ ((v54 ^ 0xC86159D9320DEF65) << 20);
  v68 = ((v54 ^ 0xC86159D9320DEF65) << 57) ^ ((v54 ^ 0xC86159D9320DEF65) << 23) ^ (v67 >> 61);
  *(&v67 + 1) = v57;
  *&v67 = v56;
  v69 = v57 ^ __ROR8__(v57, 19) ^ (v67 >> 28) ^ v68;
  v70 = v69 ^ 0x6D9C261F244F22D0;
  v71 = v65 ^ 0xFF08F5C8197DA75DLL ^ v68;
  v72 = v71 ^ 0x1BEDCB9EFFEEAECDLL;
  v73 = (v71 ^ 0x96A474C7E2AE634ALL) & (v69 ^ 0x6D9C261F244F22D0);
  v74 = v69 & 0x72B640A6E2BF3278;
  v75 = (v63 ^ 0x69E5DAE4DEB522D7) & (v65 ^ 0x4CF31802A2FA74F0);
  v76 = (v63 ^ 0x8797473681C72936) & (v61 ^ 0xB67F9A8AE3B7B19CLL);
  v77 = ~(2 * v70) + v70;
  v78 = v61 & 0x118D622DA08DF41ELL ^ v70;
  v79 = v63 & 0x3721E5DFBD248A4;
  v80 = v62 & v77;
  v81 = (v65 ^ 0xDFE9A968D355C06ELL) & (v71 ^ 0x1BEDCB9EFFEEAECDLL) ^ v71 & 0x6F9750C8758203C5 ^ v63;
  v82 = (((v78 ^ v76) & 0xE0096EE0D8B2C64DLL ^ 0xAEA357650B799D66) & ((v78 ^ v76) & 0x1FF6911F274D39B2 ^ 0xFEBBFFE7DBFECF6FLL) | (v78 ^ v76) & 0x1154801A24042090) ^ 0xE1B3E927CB2CDEC2;
  if ((v80 & &_mh_execute_header & v71) != 0)
  {
    v83 = -(v80 & &_mh_execute_header);
  }

  else
  {
    v83 = v80 & &_mh_execute_header;
  }

  v84 = (v83 + v72) ^ v80 & 0xFFFFFFFEFFFFFFFFLL;
  v85 = v79 ^ v62 ^ v75 ^ v82;
  v86 = v82 ^ v84;
  v87 = v86 ^ 0xF361B3BE61F4865BLL;
  v88 = v74 ^ v66 ^ v73 ^ 0x4F0D3399E9DAB602 ^ v81;
  v89 = v81 ^ 0xF2DA120CFD971FD7;
  if ((v86 & 0x8000) != 0)
  {
    v90 = 0x8000;
  }

  else
  {
    v90 = -32768;
  }

  v91 = v90 + v87;
  *(&v93 + 1) = v85 ^ 0x93A67585D144DEALL;
  *&v93 = v85;
  v92 = v93 >> 61;
  *&v93 = __ROR8__(v85, 39);
  v94 = ((v92 ^ v93 ^ 0xB0BA289BD41274CELL) - 2 * ((v92 ^ v93 ^ 0xB0BA289BD41274CELL) & 0x3F0B58617D58FD75 ^ (v92 ^ v93) & 0x21) - 0x40F4A79E82A702ACLL) ^ v85;
  v95 = v88 ^ __ROR8__(v88, 10) ^ (v88 << 47) ^ (v88 >> 17);
  v96 = v84 ^ 0x9A383CF881807545 ^ ((v84 ^ 0x9A383CF881807545) >> 7) ^ (((v84 ^ 0x9A383CF881807545) >> 41) | ((v84 ^ 0x9A383CF881807545) << 57)) ^ ((v84 ^ 0x9A383CF881807545) << ((v89 >> 1) & 0x17) << ((v89 >> 1) & 0x17 ^ 0x17));
  *(&v93 + 1) = v81 ^ 0xF2DA120CFD971FD7;
  *&v93 = v81;
  v97 = (v89 >> 1) ^ (v93 >> 6) ^ (v89 & 0x9B6535C14F352826 ^ (~v81 << 63) | v89 & 0x649ACA3EB0CAD7D9) ^ v94 ^ 0xB6313F39204CB0BELL;
  v98 = v87 ^ v96 ^ (v87 >> 19) ^ (v91 >> 28) ^ ((v91 ^ 0x8000) << 36) ^ ((v91 ^ 0x8000) << 45);
  v99 = (v96 ^ v95) - ((2 * (v96 ^ v95)) & 0x4BCF7563A6B4D67ELL);
  v100 = v97 ^ 0x3CB684833F65C7FLL ^ v96 & ~v95;
  v101 = (v97 ^ 0x3CB684833F65C7FLL) & (v94 ^ 0x49CEC0C6DFB34F41) ^ v98;
  v102 = (v94 ^ 0xB6313F39204CB0BELL) & ~v98 ^ v96 ^ v95;
  v103 = (v94 ^ 0xB6313F39204CB0BELL) - 2 * ((v94 ^ 0xB6313F39204CB0BELL) & v98);
  v104 = v102 ^ 0x6E04C15915AB860ALL ^ v101;
  *(&v93 + 1) = (v104 >> 19) & v104 & 0x1A36E0206AEDLL ^ (v104 >> 28) ^ (((v104 >> 19) | v104) & 0xD8807A36E0206AEDLL | (v104 >> 19) & 0x5C91FDF9512 ^ v104 & 0x277F85C91FDF9512);
  *&v93 = (v104 << 36) ^ (v104 << 45) ^ *(&v93 + 1);
  v105 = (v103 + v101) ^ (v97 ^ 0xFC3497B7CC09A380) & v95;
  v106 = v105 ^ 0x3278F838FE43D2BCLL;
  v107 = 33554433 * (v105 ^ 0x3278F838FE43D2BCLL);
  v108 = v98 & ((v99 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0);
  v109 = ((v105 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v105 ^ 0x3278F838FE43D2BCLL));
  v110 = v108 ^ v95;
  v111 = (v105 >> 39) ^ (v105 >> 61);
  v112 = v110 ^ v100 ^ 0x7370AC685030CB36;
  v113 = v102 ^ 0x26974B18501E2B14;
  v114 = v111 ^ (8 * v106) ^ (v107 - v109);
  v115 = v114 ^ 0x64F1F1;
  v116 = v113 ^ (v113 >> 41) ^ (v113 >> 7) ^ (v113 << 23) ^ (v113 << 57);
  v117 = v100 ^ 0x7955EAEC4D48B80CLL ^ (v100 << 63) ^ __ROR8__(v100 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v100 ^ 0x7955EAEC4D48B80CuLL) >> ((v64 & 8) == 0) >> ((v64 & 8) != 0));
  v118 = v114 ^ 0x64F1F1 ^ v117;
  v119 = (v112 >> 17) ^ __ROR8__(v112, 10) ^ __ROR8__(__ROR8__(v112, 14) & 0xFFFC000000000007 ^ __ROR8__(v112, 61), 3);
  v120 = v119 ^ v116;
  *&v93 = __ROR8__(__ROR8__(v116, 7) ^ __ROR8__(__ROR8__(v93 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v121 = v116 & ~v119 ^ v118;
  v122 = v93 ^ 0xBBDB0FB7A00B9120 ^ (v114 ^ 0xFFFFFFFFFF9B0E0ELL) & v117;
  v123 = v114 ^ (((v118 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v118 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v119 ^ 0x425764BB58132BD4 ^ v122;
  v124 = (v93 ^ 0x4424F0485FF46EDFLL) & v115 ^ v119 ^ v116;
  v125 = (v124 ^ -v124 ^ (0x70C7A8D3F3643DFDLL - (v124 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v126 = v121 ^ 0xD3DA1E3360BF843ALL ^ ((v121 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v121 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v127 = v119 ^ 0x44C9D571A5C4A51CLL ^ v121 ^ (v93 ^ 0xBBDB0FB7A00B9120) & ~v120;
  v129 = __ROR8__(__ROR8__(v123, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v123 ^ (8 * v123) ^ ((v123 >> 61) | (v123 << 25)), 23) ^ 0x735302FC48340548, 41);
  v130 = (v125 >> 7) ^ (v125 >> 41) ^ (v125 << 23) ^ (v125 << 57);
  v131 = v130 ^ v125;
  v132 = v122 ^ 0x97F6A7E5F6E8F58ALL ^ v124 ^ ((v122 ^ 0x97F6A7E5F6E8F58ALL ^ v124) >> 28) ^ ((v122 ^ 0x97F6A7E5F6E8F58ALL ^ v124) >> 19) ^ ((v122 ^ 0x97F6A7E5F6E8F58ALL ^ v124) << 36) ^ ((v122 ^ 0x97F6A7E5F6E8F58ALL ^ v124) << 45) ^ v130 ^ v125;
  v133 = v126 & 0xFFFFFFF7FFFFFFFFLL ^ (v121 << 63) ^ (v126 & 0x800000000 | ((v121 ^ 0xD3DA1E3360BF843ALL) << ((v104 >> 19) & 0x12) << ((v104 >> 19) & 0x12u ^ a4))) ^ v129;
  if (v130 == v125)
  {
    v134 = 0;
  }

  else
  {
    v134 = v127 << 47;
  }

  v135 = v129 ^ 0x7E241A02A439A981;
  v128 = (v127 ^ (v127 >> 10) | (v127 << 54)) ^ (v127 << 54) & v127;
  v136 = (v134 ^ v128 | (v127 << 47)) ^ (v128 & (v127 << 47) & 0xFFFF800000000000 | (v127 >> 17));
  v137 = v133 ^ 0x7E241A02A439A981;
  v138 = v136 & (v133 ^ 0x81DBE5FD5BC6567ELL);
  v139 = v136 ^ v131 ^ v135 & ~v132;
  v140 = v132 ^ (~(2 * v135) + v135) & (v133 ^ 0x7E241A02A439A981);
  v141 = v139 ^ v140 ^ 0x93C23431B76D41FLL;
  *(&v143 + 1) = v141;
  *&v143 = v139 ^ v140;
  v142 = v143 >> 62;
  v144 = v135 ^ 0x6005BE354A5BB0B2 ^ v140;
  v145 = v131 & ~v136 ^ v137;
  v146 = v132 & ~(v136 ^ v131) ^ v136 ^ v145;
  v147 = ((v144 ^ v138) << (v131 & 3) << (v131 & 3 ^ 3)) ^ v144 ^ v138 ^ (((v144 ^ v138) >> 39) ^ ((v144 ^ v138) >> 61) | ((v144 ^ v138) << 25));
  *(&v143 + 1) = v141;
  *&v143 = v139 ^ v140;
  v148 = ((v143 >> 19) ^ __ROR8__(v142 ^ (4 * (v141 >> 28)) ^ 0x406FF36C296024B3, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v149 = v145 ^ 0x6DC4FB0BD4FFFF44 ^ ((v145 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v145 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v145 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v145 << 63));
  v150 = v139 ^ 0x2DB5B6AF87F64351 ^ ((v139 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v139 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v139 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v139 ^ 0x2DB5B6AF87F64351) >> 41);
  v151 = __ROR8__(v146 ^ 0xF374A001D380BDC2, 17) ^ ((v146 ^ 0xF374A001D380BDC2) >> 10) ^ (((v146 ^ 0xF374A001D380BDC2) << 54) | (v146 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v146 ^ 0xF374A001D380BDC2) << 54) & (v146 ^ 0xF374A001D380BDC2) | v146 & 0x20);
  v152 = v150 ^ (v141 << 36) ^ (((2 * v148) & 0xFFFFFFFF18D20D4ALL) + (v148 ^ 0xFFFFFFFF8C6906A5));
  v153 = v150 & ~v151 ^ v147 ^ v149;
  v154 = v153 ^ v151 ^ v152 & (~(2 * (v151 ^ v150)) + (v151 ^ v150));
  *(&v143 + 1) = (v147 & ~v152 ^ v151 ^ v150 ^ -(v147 & ~v152 ^ v151 ^ v150) ^ ((v152 ^ v149 & ~v147) - (v147 & ~v152 ^ v151 ^ v150 ^ v152 ^ v149 & ~v147))) + (v152 ^ v149 & ~v147);
  *&v143 = *(&v143 + 1) ^ 0x69309AC4CAE2F93;
  v155 = *(&v143 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v143 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v143 >> 28);
  *(&v143 + 1) = v153 ^ 0xC39D9869C05A48AELL;
  *&v143 = v153;
  v156 = (v143 >> 6) ^ v153 ^ 0xC39D9869C05A48AELL;
  *(&v143 + 1) = v153;
  *&v143 = v153 ^ 0xC39D9869C05A48AELL;
  v157 = v156 ^ (v143 >> 1);
  LODWORD(v156) = v42 ^ (255 * (a37 > 2 * (a39 & 1) + (a39 ^ 1u)));
  return (*(a40 + 8 * v156))(v157, v155, *(a40 + 8 * v156), a4, a5, v157 ^ 0x30E7661A7016922, v154, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_10003831C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, __int16 a25, char a26, __int16 a27, char a28, int a29, int a30, char a31)
{
  v36 = 1082434553 * ((((v35 - 152) ^ 0xC5C168D7 | 0x7C311399) - ((v35 - 152) ^ 0xC5C168D7) + (((v35 - 152) ^ 0xC5C168D7) & 0x83CEEC66)) ^ 0x22B78DC4);
  *(v35 - 140) = v36 + a4 + 66494824;
  *(v35 - 152) = &a28;
  *(v35 - 112) = &a26;
  *(v35 - 104) = v34;
  *(v35 - 120) = &a24;
  *(v35 - 128) = v36 + v32 + 1340;
  *(v35 - 136) = &a31;
  HIDWORD(a10) = a4;
  v37 = (*(v31 + 8 * (v32 ^ 0x97C)))(v35 - 152);
  return (*(v31 + 8 * (((*(v35 - 144) != v33 + v32 + 1083 - 1178) * (v32 ^ 0x78)) ^ v32)))(v37, 652229207, 2770969155, HIDWORD(a10), 1523999395, 3642738088, 3385487883, 3071914766, a9, a10);
}

void sub_1000384D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  (*(v28 + 8 * (v27 - 1387409926)))(a26 + a27, 0x100004077774924);
  *v29 = (*(v28 + 18544))();
  JUMPOUT(0x100038584);
}

void sub_100038678(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 1037613739 * ((698634423 - (&a3 | 0x29A450B7) + (&a3 | 0xD65BAF48)) ^ 0x7598237);
  a5 = v5;
  a3 = (((v7 - 839) | 0x411) - (((443016106 - 2 * v6) & 0x38C449F2) + v6) - 1449782663) ^ v8;
  a4 = (v7 + 81) ^ v8;
  (*(a1 + 8 * (v7 ^ 0xAEA)))(&a3);
  sub_100043270();
}

uint64_t sub_100038724@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (a2 + 1292) - v2 - 2075;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  v9.i64[0] = 0x6666666666666666;
  v9.i64[1] = 0x6666666666666666;
  v10.i64[0] = 0x3333333333333333;
  v10.i64[1] = 0x3333333333333333;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v4 + 8 * ((76 * (v2 == 96)) ^ a2)))();
}

uint64_t sub_1000387D0()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xD07)))();
  LODWORD(STACK[0x510]) = v2;
  return (*(v1 + 8 * ((664 * (v2 == (((v0 - 950) | 0x100) ^ 0xE8A0F18C))) ^ v0)))(v3);
}

uint64_t sub_100038910(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 40;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_100038934(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13, uint64_t a14, int a15, int a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, _BYTE *a20, uint64_t a21, _BYTE *a22, uint64_t a23, _BYTE *a24, uint64_t a25, uint64_t a26, _BYTE *a27, unsigned __int8 **a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, _BYTE *a32, _BYTE *a33, _BYTE *a34, _BYTE *a35, uint64_t a36, int a37)
{
  *a12 = a2;
  *a18 = BYTE3(a2);
  a12[1] = BYTE6(v40);
  a11[1] = BYTE4(a2) ^ 0x30;
  a17[20] = a6;
  *a19 = BYTE5(v40);
  a17[64] = BYTE2(a2);
  a17[50] = BYTE3(v41);
  *a27 = BYTE1(a2);
  *a22 = v41;
  a17[26] = BYTE6(v41);
  *a30 = BYTE4(v41);
  a11[2] = v38 >> ((27 * (a37 ^ 0x19)) ^ 0x59u);
  a17[45] = BYTE5(v41);
  *a33 = HIBYTE(v41);
  a17[11] = BYTE2(v38);
  *a34 = BYTE1(a6);
  *a11 = HIBYTE(v40);
  *a20 = BYTE2(a6);
  a17[52] = BYTE4(a6);
  *a29 = BYTE3(a6);
  v42 = *(a13 + 526 + (((a1 >> 33) & 0x80 | (a6 >> 41) & 0x7F) ^ 0x1D));
  a17[9] = BYTE6(a6);
  *a24 = (((v42 >> 4) | (16 * v42)) ^ 0xB ^ (((v42 >> 4) | (16 * v42)) >> 1) & 0x55) + 95;
  v43 = *(a10 + (((a6 >> 51) & 0xE0 | (a1 >> 59)) ^ 0xF3));
  a17[39] = v39 ^ 0x53;
  *a32 = (v43 ^ 0xBC) + 74;
  v44 = *(a10 + (((v39 >> 3) & 0xE0 | (v39 >> 11)) ^ 0xEF));
  v45 = (v37 >> 38) ^ 0xB0;
  a17[49] = BYTE5(v39) ^ 0xBB;
  a17[63] = BYTE3(v39) ^ 0xC1;
  a17[13] = BYTE6(v39) ^ 0x15;
  *a31 = BYTE2(v39) ^ 0x1D;
  *a35 = (v44 ^ 0xBC) + 74;
  a17[36] = BYTE4(v39) ^ 0xF2;
  a17[60] = BYTE1(v37) ^ 0x54;
  a17[27] = BYTE2(v37) ^ 0x11;
  a17[40] = (v39 ^ 0x4F15BBF2C11DE053) >> (v38 & 0x38) >> (v38 & 0x38 ^ 0x38);
  a17[53] = BYTE3(v37) ^ 5;
  a17[59] = v37 ^ 0x4C;
  a17[22] = BYTE4(v37) ^ 0x2D;
  v46 = *(a14 + ((v45 & 0xFC | (v37 >> 46) & 3) ^ 0x97));
  a17[37] = -35 * ((((v45 & 0xFC | (v37 >> 46) & 3) ^ 0x86) - ((2 * v45) & 0xD0) + (v46 ^ 0xB2) + ((2 * v46) & 0x64) + 79) ^ 0x85);
  v47 = *(a13 + 526 + (((v37 >> 41) & 0x80 | (v37 >> 49) & 0x7F) ^ 0x56));
  a17[29] = HIBYTE(v37) ^ 0x30;
  a17[57] = (((v47 >> 4) | (16 * v47)) ^ 0xB) + ((((v47 >> 4) | (16 * v47)) >> 1) & 0x55) - 2 * ((((v47 >> 4) | (16 * v47)) >> 1) & 0x55 & (((v47 >> 4) | (16 * v47)) ^ 0xB)) + 95;
  **a28 = a16 + 1;
  v48 = *a28;
  v49 = v48[44] | (v48[25] << 16) | (v48[10] << 8) | (v48[24] << 24);
  v50 = ((*(*(&off_100374800 + (a37 ^ 0x577)) + ((*a28)[18] ^ 0x57) + 802) ^ 0xFA) - 119) << 32;
  v51 = v49 & 0x211556C0;
  v52 = v49 & 0xDEEAA93F | v50 & 0xC5DEEAA93FLL;
  v53 = v50 ^ 0xC500000000;
  if (!(*a28)[58])
  {
    v53 = 0x3A00000000;
  }

  v54 = __ROR8__((((v53 & v50) >> 8) | __ROR8__(v51, 8)) ^ 0xFD37B15DBB4BFD3ELL, 56);
  return sub_100055A2C((((*a28)[23] << 48) | ((*a28)[62] << 56)) ^ 0x171CD4128C317D47 ^ (((0xFFFFFF0000000000 * v48[12]) ^ ((v48[12] << 40) - ((v48[12] << 41) & 0x6C0000000000) + 0x4C723606D1F647A0) ^ 0x4C723606D1F647A0 ^ ((v54 ^ 0x37B15DBB4BFD3EFDLL) + v52 - (((v54 ^ 0x37B15DBB4BFD3EFDLL) + v52) ^ (v48[12] << 40)))) + (v54 ^ 0x37B15DBB4BFD3EFDLL) + v52), 87, 61);
}

uint64_t sub_100039148(_DWORD *a1)
{
  v1 = *a1 ^ (1785193651 * (a1 ^ 0x13DCEC20));
  v2 = **(&off_100374800 + (v1 ^ 0xB8A6958C));
  v5 = v1 + 1197042623 - 1388665877 * (((&v4 | 0x9CFDB771) + (~&v4 | 0x6302488E)) ^ 0x1150D59C);
  v4 = v2;
  return (*(*(&off_100374800 + (v1 ^ 0xB8A69536)) + (v1 + 1197044773) - 1))(&v4);
}

void sub_100039280(uint64_t a1)
{
  v1 = *(a1 + 4) + 143681137 * ((-2 - ((a1 | 0xE35D4AC9) + (~a1 | 0x1CA2B536))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100039348@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 + 1189) ^ 0x218)) ^ (v3 + 163))))();
}

void sub_1000393C0(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_100039630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v14 - 120) = v12;
  *(v14 - 112) = (v11 + 408) ^ (1785193651 * ((-148316720 - ((v14 - 120) | 0xF728DDD0) + ((v14 - 120) | 0x8D7222F)) ^ 0x1B0BCE0F));
  *(v14 - 104) = a11;
  v15 = (*(v13 + 8 * (v11 ^ 0xA6B)))(v14 - 120);
  return sub_1000396A4(v15);
}

uint64_t sub_1000396E0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  a4 = ((v9 ^ 0x92) - 196) ^ (50899313 * ((&a4 - 1650110118 - 2 * (&a4 & 0x9DA5515A)) ^ 0x898ACCC1));
  a7 = a1;
  a5 = a3;
  v10 = (*(v8 + 8 * (v9 ^ 0xF93)))(&a4);
  return (*(v8 + 8 * (((a6 == v7) * ((((v9 ^ 0x92) + 1399506231) & 0xAC9536BE) - 552)) | v9 ^ 0x92)))(v10);
}

uint64_t sub_100039CD8()
{
  v0.n128_u64[0] = 0x6666666666666666;
  v0.n128_u64[1] = 0x6666666666666666;
  v1.n128_u64[0] = 0x3333333333333333;
  v1.n128_u64[1] = 0x3333333333333333;
  return sub_100039CEC(v0, v1);
}

uint64_t sub_100039CEC@<X0>(int a1@<W2>, int a2@<W4>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v11 = (v8 + v7 + v5);
  v12 = vaddq_s8(vsubq_s8(*(v10 + v7 + 16), vandq_s8(vaddq_s8(*(v10 + v7 + 16), *(v10 + v7 + 16)), a4)), a5);
  *v11 = vaddq_s8(vsubq_s8(*(v10 + v7), vandq_s8(vaddq_s8(*(v10 + v7), *(v10 + v7)), a4)), a5);
  v11[1] = v12;
  return (*(v9 + 8 * ((a2 + v6 + 425) | (16 * (v7 + 3 * (v6 ^ (a1 + 161)) - 469 != a3)))))();
}

uint64_t sub_100039D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 112) = &a16;
  *(v21 - 104) = &a18;
  *(v21 - 120) = (v18 + 423) ^ (210068311 * ((((v21 - 120) | 0xFBA777A4) - (v21 - 120) + ((v21 - 120) & 0x4588858)) ^ 0x69714800));
  v22 = (*(v19 + 8 * (v18 ^ 0xE08)))(v21 - 120);
  return (*(v19 + 8 * (((((v18 - 1747) | 4) + 3827) * (v20 == 1)) ^ v18)))(v22);
}

uint64_t sub_100039E24(uint64_t a1)
{
  v2 = 1388665877 * ((((2 * (a1 ^ 0x17587DCA)) | 0xAD7A4B42) - (a1 ^ 0x17587DCA) - 1455236513) ^ 0xCC483A87);
  v3 = *(a1 + 44) ^ v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v8 = 608169787 * (*a1 ^ v2) - 214142139;
  v9 = 1564307779 * ((&v11 & 0xFAB196CD | ~(&v11 | 0xFAB196CD)) ^ 0x9243A521);
  v16 = v3 + v9 + 1776823987;
  v15 = v6;
  v14 = v8 ^ v9;
  v11 = v5;
  v13 = v7;
  v17 = v4;
  result = (*(*(&off_100374800 + (v3 ^ 0x9617D42F)) + (v3 ^ 0x9617DD1C) - 1))(&v11);
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_100039F88()
{
  v6 = (&STACK[0x540] + v3 - 96);
  *(v0 + 64) = v4;
  *v6 = 0xCCCCCCCCCCCCCCCCLL;
  v6[1] = 0x3333333335333321;
  v7 = 1388665877 * (((v5 - 200) & 0xEC7E13B0 | ~((v5 - 200) | 0xEC7E13B0)) ^ 0x9E2C8EA3);
  *(v5 - 192) = (v1 + 1986156410) ^ v7;
  *(v5 - 200) = v7 ^ 0x868C9E10;
  (*(v2 + 8 * (v1 ^ 0xE1C)))(v5 - 200);
  LODWORD(STACK[0x44C]) = 468312181;
  v8 = (*(v2 + 8 * (v1 + 521)))(336, 0x100004077774924);
  STACK[0x4B0] = v8;
  return (*(v2 + 8 * ((50 * (((v1 - 1) ^ (v8 == 0)) & 1)) ^ v1)))(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10003A098(uint64_t a1)
{
  v1 = 210068311 * (((a1 | 0x39505529) - a1 + (a1 & 0xC6AFAAD6)) ^ 0xAB866A8D);
  v2 = *(a1 + 8) + v1;
  v3 = *a1 - v1;
  v5 = v3 - 1838973121;
  v4 = v3 - 1838973121 < 0;
  v6 = 1838973121 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 16) + 4);
  v8 = v7 - 763308221;
  v4 = v7 - 763308221 < 0;
  v9 = 763308221 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_100374800 + v2 - 560) + ((1485 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

uint64_t sub_10003A160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, uint64_t a16)
{
  a13 = v19 + 843532609 * ((2 * ((&a13 ^ 0x41F629B7) & 0x2D0A64C4) - (&a13 ^ 0x41F629B7) - 755655877) ^ 0xCF4EE609) + 1056;
  a14 = a9;
  a16 = v16;
  v21 = (*(v17 + 8 * (v19 ^ 0xA54)))(&a13);
  return (*(v17 + 8 * ((2909 * (a15 == (v19 ^ (v18 + 25) ^ v20))) ^ v19)))(v21);
}

void sub_10003A214(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003A2C8(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_10003A2E0@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v18 = v13 - 16;
  v19 = ((v12 + 159) ^ a1) & (v18 + 15);
  v20 = v14;
  v21.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v21.i64[1] = a6;
  v22 = vrev64q_s8(vmulq_s8(v21, a7));
  *(v16 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v9 + v19 - 15), *(a3 + v18)), veorq_s8(*(v10 + v19 - 15), *(v11 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v17 + 8 * (((v15 == 16) * a2) ^ v12)))();
}

uint64_t sub_10003A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((2 * ((v17 - 144) & 0x6E429208) - (v17 - 144) + 297627122) ^ 0x836B5256) * v16;
  *(v17 - 128) = a13;
  *(v17 - 144) = v18 + v15 - 215068456;
  *(v17 - 136) = v13 - v18 - 213;
  v19 = (*(v14 + 8 * (v13 ^ 0xA18)))(v17 - 144);
  return (*(v14 + 8 * ((121 * (*(v17 - 140) == ((v13 + 983302106) & 0xC563FD3B ^ 0x9FF5593F))) ^ v13)))(v19);
}

uint64_t sub_10003A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48)
{
  if (a48 == 2)
  {
    return (*(v48 + 8 * (((a47 != 0) * (((a28 - 1279928748) & 0x4C4A2F95) - 1491)) ^ (a28 + 1514))))();
  }

  if (a48 == 1)
  {
    return (*(v48 + 8 * ((157 * ((((a28 + 1514) ^ (a47 == 0)) & 1) == 0)) ^ (a28 + 1514))))();
  }

  return sub_10003A594();
}

uint64_t sub_10003A594@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 - a1;
  *(v8 + 91) = ((a1 + v2) ^ v3) * (a1 + v2 + 17);
  *(v8 + 90) = ((a1 + v2) ^ 0xBB) * (a1 + v2 + 18);
  return (*(v7 + 8 * (((v5 + a1 == 92) * v6) ^ v1)))();
}

void sub_10003A624(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) != 763308221 && *(*a1 + 4) != 763308221;
  v1 = *(a1 + 8) + 1361651671 * ((a1 - 406323965 - 2 * (a1 & 0xE7C7FD03)) ^ 0x34E50D8F);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10003A710@<X0>(int a1@<W8>)
{
  v3 = *(v7 + 16);
  v4 = *(v7 + 32);
  memset(v8, 51, sizeof(v8));
  v5 = 1037613739 * ((((v2 - 160) | 0x40EEAEB5) - ((v2 - 160) & 0x40EEAEB5)) ^ 0x91EC83CA);
  *(v2 - 120) = v3;
  *(v2 - 160) = v5 + 1692047150;
  *(v2 - 128) = (a1 + 1640) ^ v5;
  *(v2 - 152) = v8;
  *(v2 - 144) = v4;
  *(v2 - 136) = &v9;
  result = (*(v1 + 8 * (a1 + 2308)))(v2 - 160);
  *(v7 + 44) = *(v2 - 124);
  return result;
}

uint64_t sub_10003A7FC@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x6666666666666666;
  v5.i64[1] = 0x6666666666666666;
  v6.i64[0] = 0x3333333333333333;
  v6.i64[1] = 0x3333333333333333;
  v7 = ((v2 + 37282371) & 0xFDC71F7F) - 1374 + v1;
  v8 = *(v3 + v7 - 15);
  v9 = *(v3 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v5)), v6);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v5)), v6);
  return (*(v4 + 8 * ((1068 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 - 538))))();
}

uint64_t sub_10003A944@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v10 = ((((2 * &a3) | 0xF42D4642) - &a3 + 99179743) ^ 0x2B148E5E) * a1;
  a3 = v10 + 150239061;
  a4 = v8;
  a5 = 0;
  a6 = (v7 - 786) ^ v10;
  a7 = 681059090 - v10;
  v11 = (*(v9 + 8 * (v7 ^ 0xAF1)))(&a3);
  return sub_10003A9B8(v11);
}

uint64_t sub_10003AC90@<X0>(int a1@<W8>)
{
  v8 = STACK[0x31C];
  v9 = *(v7 + 24);
  v10 = STACK[0x47C];
  v11 = &v6[6 * v1];
  v11[2] = v5;
  v11[3] = v10;
  *(v11 + 2) = v9;
  v11[6] = v8;
  *v6 = a1 + 1;
  LODWORD(STACK[0x4E8]) = v3;
  v12 = v3 - 164491737 + 254 * (v2 ^ 0xA5);
  v14 = v12 > -747219095 && v12 < SLODWORD(STACK[0x250]);
  return (*(v4 + 8 * ((1643 * v14) ^ v2)))();
}

uint64_t sub_10003AD10(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_10003AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 128) = (v15 + 1801) ^ (((((2 * ((v18 - 128) ^ 0xF442DD04)) | 0xD7D0F70E) - ((v18 - 128) ^ 0xF442DD04) - 1810398087) ^ 0xC3E7F206) * v16);
  *(v18 - 120) = &a13;
  *(v18 - 112) = v14;
  v19 = (*(v13 + 8 * (v15 ^ 0x865)))(v18 - 128);
  return (*(v13 + 8 * ((2392 * (*(v18 - 124) > v17 + (v15 ^ 0x439u) + 22)) ^ v15)))(v19);
}

uint64_t sub_10003ADC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(v7 + 4 * (v4 - 1));
  *(v7 + 4 * v4) = ((1566083941 * (v9 ^ (v9 >> 30))) ^ *(v7 + 4 * v4)) - v4;
  v10 = 742307843 * ((v8 - 152) ^ 0xB39CDD6B1E228D55);
  v11 = v6 + 131719140 + v10;
  *(v8 - 152) = v10 ^ 1;
  STACK[0x5B0] = v10 + 623;
  *(v8 - 112) = v11;
  STACK[0x5C8] = v4 + 1 - v10;
  *(v8 - 128) = ((v6 + 131719140) & 0xBF67A708) + v10;
  *(v8 - 136) = v11 - 24;
  *(v8 - 132) = (v6 - 643332360) ^ v10;
  v12 = (*(v5 + 8 * (a4 + v6 + 2353)))(v8 - 152);
  return (*(v5 + 8 * *(v8 - 108)))(v12);
}

uint64_t sub_10003AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = -542396526 - 1388665877 * (((&a15 | 0x87EB4F9F) + (~&a15 | 0x7814B060)) ^ 0xA462D72);
  v17 = (*(v16 + 18744))(&a15);
  return (*(v16 + 8 * ((3029 * (a16 == -392105736)) ^ 0x3F4)))(v17);
}

uint64_t sub_10003AF54@<X0>(int a1@<W8>)
{
  v8 = v5 - 1;
  *(v6 + v8) = *(v1 + v8) ^ *(v3 + (v8 & 0xF)) ^ (89 * (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 2) ^ *((a1 ^ 0x160u) + (v8 & 0xF) + v2 - 2015) ^ 0x33;
  return (*(v7 + 8 * ((41 * (v8 != 0)) ^ (a1 + 199))))();
}

uint64_t sub_10003AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  HIDWORD(a19) = v22 - 143681137 * ((((2 * (&a19 ^ 0x2F89379B)) | 0xEC6D3BC) - (&a19 ^ 0x2F89379B) - 123955678) ^ 0x49B2D595) + 644;
  a20 = a13;
  a21 = &a15;
  a22 = &a11;
  (*(v25 + 8 * (v22 ^ 0x8D8)))(&a19);
  LODWORD(a19) = (v22 + 959) ^ ((&a19 ^ 0x142F9D9B) * v23);
  a20 = a13;
  a22 = &a17;
  (*(v25 + 8 * (v22 ^ 0x884)))(&a19);
  HIDWORD(a20) = (v22 + 1810) ^ (((&a19 & 0xC5217FB6 | ~(&a19 | 0xC5217FB6)) ^ 0xB773E2A5) * v24);
  a19 = a13;
  v26 = (*(v25 + 8 * (v22 + 1884)))(&a19);
  return (*(v25 + 8 * (((a20 == -392105736) * (v22 - 323)) ^ v22)))(v26);
}

void sub_10003B20C()
{
  LODWORD(STACK[0x47C]) = STACK[0x3E4];
  *(v0 + 24) = *(v0 + 184);
  LODWORD(STACK[0x31C]) = 27391768;
  JUMPOUT(0x100035BC0);
}

uint64_t sub_10003B240(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (a2 + 7544823) & 0xFF8CDFE7;
  v16 = ((a13 ^ 0xBC3B1456) + 656309432) ^ a13 ^ ((a13 ^ 0x7BF7FFFB) - 523069669) ^ ((a13 ^ v15 ^ 0x2D60DC0F) - 1236946130) ^ ((a13 ^ *(v14 - 128) ^ 0x8E76A153) + 357814175);
  v17 = (v15 - 919) | 0x200;
  v19 = v16 == (v17 ^ 0x64DA9132) || ((v15 - 1972) & v16) != 14;
  v20 = *(v13 + 8 * ((7 * v19) ^ v15));
  *(v14 - 132) = -42899;
  *(v14 - 128) = v17;
  return v20();
}

uint64_t sub_10003B31C(__n128 a1)
{
  a1.n128_u16[0] = 13107;
  a1.n128_u8[2] = 51;
  a1.n128_u8[3] = 51;
  a1.n128_u8[4] = 51;
  a1.n128_u8[5] = 51;
  a1.n128_u8[6] = 51;
  a1.n128_u8[7] = 51;
  return sub_10003B34C(a1);
}

uint64_t sub_10003B34C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v9 = (v6 + v2 + a1);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v2 + v4 - 1683 != v3) * v7) ^ v5)))();
}

void sub_10003B37C(uint64_t a1)
{
  v1 = 1037613739 * (((a1 | 0x27A6E) - a1 + (a1 & 0xFFFD8591)) ^ 0xD1005711);
  v2 = *(a1 + 16) - v1;
  __asm { BRAA            X15, X17 }
}

uint64_t sub_10003B4B4(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v10 = v4 < v6;
  if (v10 == v5 + (v7 ^ a4) > a2 + 2)
  {
    v10 = a3 + v5 + 2 < v4;
  }

  return (*(v8 + 8 * ((v10 * v9) ^ v7)))();
}

uint64_t sub_10003B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v71 = v55 + 4;
  v72 = *(&off_100374800 + v54 + v52 + 147);
  HIDWORD(a43) = *v72 - 89408769;
  v59 = *(&off_100374800 + ((v52 - 1) ^ (v53 - 159)));
  v60 = 1785193651 * ((0x2EC94E340C70C777 - (v57 | 0x2EC94E340C70C777) + a26) ^ 0xC502C7E5E053D4A8);
  v70 = *v59;
  STACK[0x5B8] = v70 ^ v60;
  v61 = (v52 + 252193134) ^ v60;
  *(v58 - 120) = v52 + 252193134 - v60 + 217;
  *(v58 - 116) = v60;
  *(v58 - 128) = v61;
  STACK[0x5B0] = v60;
  *(v58 - 152) = 1443382250 - v60 + v52 - 1;
  *(v58 - 148) = v61 ^ 0x6E;
  (*(v56 + 8 * ((v52 - 1) ^ (v53 + 2273))))(v58 - 152);
  return (*(v56 + 8 * *(v58 - 124)))(2907554984, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v70, v71, v72, a31, v59, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_10003B7C4@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * a1) ^ (v3 + 202))))();
}

void sub_10003B7EC(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x3B4]) = a2;
  LODWORD(STACK[0x414]) = a1;
  LODWORD(STACK[0x348]) = v3;
  LODWORD(STACK[0x3FC]) = v2;
  LODWORD(STACK[0x3A4]) = 1808619482;
  JUMPOUT(0x10002DC00);
}

uint64_t sub_10003B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = 41 * (v8 ^ 0x766);
  *v12 = a1;
  *v13 = (a8 + (v8 ^ 0x412) - 889) ^ v14;
  v18 = v16;
  v17 = v10 - 1388665877 * ((((2 * &v17) | 0x9398AF0A) - &v17 - 1238128517) ^ 0xC4613569) + 702;
  (*(v9 + 8 * (v10 ^ 0xB05)))(&v17);
  v18 = v15;
  v17 = v10 + 577 - 1388665877 * (((&v17 | 0xA8B6B5F6) - (&v17 & 0xA8B6B5F6)) ^ 0x251BD71A) + 125;
  (*(v9 + 8 * ((v10 + 577) ^ 0xD46)))(&v17);
  return 0;
}

void sub_10003B9C4(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_100374800 + (v1 & 0xBD3CAA21)) - 8;
  v3 = *&v2[8 * ((477 * ((*&v2[8 * v1 + 9544])(32, 0x101004023FF3BD5) != 0)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, unsigned int a20, char *a21, int a22)
{
  v23 = 742307843 * ((2 * (&a19 & 0x74395F68) - &a19 - 1949917039) ^ 0x95E42DC4);
  HIDWORD(a21) = 1934 - v23;
  a22 = v23 ^ 0x38C154A6;
  a20 = v23 + 1546035931;
  LODWORD(a21) = 605012660 - v23;
  (*(v22 + 18968))(&a19);
  a21 = &a17;
  a22 = 2066391179 * (((&a19 | 0xFAE4F23C) - (&a19 & 0xFAE4F23C)) ^ 0x55C37024) + 1194;
  v24 = (*(v22 + 18504))(&a19);
  return (*(v22 + 8 * ((3976 * (a19 == -392105736)) ^ 0x7A7u)))(v24);
}

uint64_t sub_10003C3A4@<X0>(int a1@<W8>)
{
  v9 = *(v6 + 8 * v1);
  v10 = *v3;
  v11 = v2 + v8;
  *(*v3 + v11) = (v5 ^ HIBYTE(a1)) - ((2 * (v5 ^ HIBYTE(a1))) & 0x66) + 51;
  *(v10 + v11 + 1) = (v4 ^ BYTE2(a1)) - ((2 * (v4 ^ BYTE2(a1))) & 0x66) + 51;
  *(v10 + v11 + 2) = (BYTE1(a1) ^ 0xEF) - ((2 * (BYTE1(a1) ^ 0xEF)) & 0x66) + 51;
  *(v10 + v11 + 3) = a1 ^ v7;
  return v9();
}

void sub_10003C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v22 = ((-1672603514 - ((v21 - 144) | 0x9C4E1886) + ((v21 - 144) | 0x63B1E779)) ^ 0xF8F611F3) * v17;
  *(v21 - 120) = (v16 - 1041) ^ v22;
  *(v21 - 116) = v18 - v22 - 868846395 + ((v16 - 1653793308) & 0x2292DFFF);
  *(v21 - 144) = &a16;
  *(v21 - 128) = v20;
  (*(v19 + 8 * (v16 ^ 0xFB2u)))(v21 - 144);
  JUMPOUT(0x100025ED4);
}

uint64_t sub_10003C518()
{
  v4 = v2 + 1768178700;
  v5 = v4 < ((v1 + 385584813) & 0xE90477BE ^ 0xA2259FE4);
  v6 = v3 - 1574594454 < v4;
  if (v3 > 0x5DDA6795 != v5)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((!v6 * ((v1 + 1611) ^ 0x77B)) ^ v1)))();
}

void sub_10003C5A8(unsigned int *a1)
{
  v7 = v5 + v2;
  v8 = v1 + v6 + v7 + 1784996951;
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v2) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  JUMPOUT(0x10002A06CLL);
}

uint64_t sub_10003C5F4()
{
  v5 = *(*(v1 + 40) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0xECDFF3D7) + 998178800 + ((v5 << (((v2 - 44) & 0xFE) - 37)) & 0xD9BFE7AE);
  v8 = v0 == 15 || v6 != 677311431;
  return (*(v3 + 8 * ((874 * v8) ^ v2)))();
}

uint64_t sub_10003C694@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (v4 ^ v6 ^ (v7 - 749) ^ *(*(v11 + 8) + 4 * v5)) + v2 + (*(*(v8 + 8) + 4 * v5) ^ v7);
  *(*(a2 + 8) + 4 * v5) = v12 + v7 - (v10 & (2 * v12));
  return (*(v9 + 8 * (((v5 + 1 == v3) * a1) ^ v4)))();
}

void sub_10003C7D4(_DWORD *a1)
{
  v1 = *a1 ^ (1037613739 * ((827773174 - (a1 | 0x3156D0F6) + (a1 | 0xCEA92F09)) ^ 0x1FAB0276));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10003C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (v8 + v7 + 1152);
  v10 = *(v6 + v7 - 31);
  *v9 = *(v6 + v7 - 15);
  *(v9 - 1) = v10;
  return (*(v5 + 8 * ((2479 * ((a5 + 1381500041) - (v7 & 0xFFFFFFE0) == 1626)) ^ (a5 + 1381498867))))();
}

uint64_t sub_10003C9AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = v4 + 1654841805 < ((a4 ^ 0x90220B99) + v6);
  if (v6 > -270666379 != v4 + 1654841805 < (((a4 ^ 0x73A) - 1302) ^ 0x10220B99))
  {
    v7 = v6 > -270666379;
  }

  return (*(v5 + 8 * ((312 * v7) ^ a4 ^ 0x73A)))();
}

uint64_t sub_10003CAC4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v8 - 152) = v7;
  v9 = a1 - 881;
  v10 = (4 * (a1 - 113)) ^ 0x8C;
  v11 = v6[3];
  v12 = *(&off_100374800 + (v9 ^ 0x45E));
  *(v8 - 116) = v5;
  v13 = v12 - 4;
  v14 = *(v12 - 4 + (v11 ^ 0xDE)) ^ v11;
  v15 = *(&off_100374800 + v9 - 931) - 12;
  LODWORD(v12) = (v15[v6[4] ^ 0xF7] << 24) + 620756992;
  v16 = *(&off_100374800 + (v9 ^ 0x425)) - 8;
  v17 = v16[v6[14] ^ 0x82];
  v18 = *(&off_100374800 + v9 - 1077) - 12;
  v19 = v18[v6[5] ^ 0x6DLL] << 16;
  v20 = (v6[15] - 2 * (v6[15] & 0x3F) - 65) ^ *(v13 + (v6[15] ^ 0xFDLL));
  LODWORD(v11) = (v15[v6[8] ^ 0x70] << 24) + 620756992;
  v21 = v18[v6[13] ^ 0xC7];
  v22 = *(v13 + (v6[11] ^ 0xD3)) ^ v6[11];
  v23 = (((v11 ^ 0x87FFFFFF) & ((v16[(v6[10] ^ (v10 - 124))] << 8) ^ 0x88271645) | v11 & 0x77777777) ^ 0x21C370C2) & (v22 ^ 0xFFEFFF18);
  v24 = ((v18[v6[1] ^ 0x40] << 16) ^ 0x438C8FCC) & (v14 ^ 0x5BFFBFD7) | v14 & 0x33333333;
  LODWORD(v11) = (v15[v6[12] ^ 0xBDLL] + 37) ^ 0x1B;
  v25 = ((v15[v6[12] ^ 0xBDLL] + 37) ^ 0x1B) << 24;
  v26 = ((v21 << 16) ^ 0xCA4BD171) & ~v25 | v25 & 0x35000000;
  LODWORD(v18) = (v18[v6[9] ^ 0x7CLL] ^ 0xAB) << 16;
  v27 = v18 & 0xE00000 | ((v22 & 0x78 | v23) ^ 0xE2FB67F3) & ~v18;
  v28 = ((((v16[v6[2] ^ 0x87] << 8) ^ 0x2A609E21) & (v24 ^ 0x781C7075) | v24 & 0x419F00DE) ^ 0x6B6BE8FD) + (((v15[*v6 ^ 9] + 37) ^ 0x85) << 24);
  LODWORD(v13) = (v6[7] + (~(2 * v6[7]) | 0x81) - 64) ^ *(v13 + (v6[7] ^ 0x2FLL));
  v29 = (v26 ^ 0x35D82E8E) & (((v20 & 0xFE ^ 0x75C4FF04) & ((v17 << 8) ^ 0x75C42E16) | v20 & 0xE9) ^ 0x2B5EEC20) ^ v26 & 0xA1650000;
  LODWORD(v12) = (v19 & 0xAE0000 ^ 0x915A0986 ^ ((((v16[v6[6]] << 8) ^ 0x4A95A618) & (v12 ^ 0x6DFFFF3C) | v12 & 0xB5000000) ^ 0xDAC43724) & (v19 ^ 0xFF95FF3C)) & ~v13;
  LODWORD(v15) = v13 & 0x45;
  v30 = *(&off_100374800 + (v9 ^ 0x437));
  v31 = *(v30 + 4 * (v21 ^ 0xC5));
  v32 = v15 | v12;
  HIDWORD(v33) = v31 ^ 0x763A45F;
  LODWORD(v33) = v31 ^ 0x68000000;
  v34 = *(&off_100374800 + v9 - 1027) - 4;
  LODWORD(v11) = *&v34[4 * (v11 ^ 0xB4)];
  v35 = v20 ^ 0x78u;
  v36 = *(&off_100374800 + v9 - 1037) - 8;
  LODWORD(v16) = *&v36[4 * v35];
  *(v8 - 160) = v28;
  LODWORD(v11) = v28 ^ (v33 >> 27) ^ (690312999 * v16 - 636691141) ^ (-219980569 * v11 + 920731539);
  v37 = v17 ^ 0xC3;
  v38 = *(&off_100374800 + v9 - 1022) - 12;
  LODWORD(v15) = v11 ^ (-36060539 * *&v38[4 * v37] + 771277347) ^ 0x1A;
  *(v8 - 168) = v32;
  *(v8 - 164) = v29;
  v32 ^= 0x2521D2E8u;
  *(v8 - 156) = v27;
  *(v8 - 176) = v15 ^ v32;
  v39 = v27 ^ 0x5A1FFD14 ^ v15 ^ v32;
  v40 = v39 ^ v29;
  v41 = v39 ^ v29 ^ 0xBFCF4896;
  v42 = *(v30 + 4 * (BYTE2(v41) ^ 0x6Bu));
  HIDWORD(v33) = v42 ^ 0x763A45F;
  LODWORD(v33) = v42 ^ 0x68000000;
  LODWORD(v11) = (690312999 * *&v36[4 * (v41 ^ 0x41)] - 636691141) ^ (v33 >> 27) ^ (-36060539 * *&v38[4 * (BYTE1(v41) ^ 0xAF)] + 771277347) ^ (-219980569 * *&v34[4 * (HIBYTE(v40) ^ 0x9E)] + 920731539);
  *(v8 - 184) = v40;
  *(v8 - 180) = v39;
  v43 = v11 ^ v32;
  v44 = v11 ^ v32 ^ v39 ^ 0xC1D6411F;
  v45 = v44 ^ v40 ^ 0x4B7DAE1D;
  v46 = (690312999 * *&v36[4 * ((v44 ^ v40 ^ 0x1D) ^ 0xAB)] - 636691141) ^ (-219980569 * *&v34[4 * (HIBYTE(v45) ^ 0x20)] + 920731539);
  v47 = *(v30 + 4 * (BYTE2(v45) ^ 0xBFu));
  HIDWORD(v33) = v47 ^ 0x763A45F;
  LODWORD(v33) = v47 ^ 0x68000000;
  *(v8 - 172) = v15;
  v48 = v46 ^ v11 ^ v15 ^ (-36060539 * *&v38[4 * (BYTE1(v45) ^ 0xE9)] + 771277347) ^ (v33 >> 27);
  *(v8 - 188) = v43;
  LODWORD(v11) = v48 ^ v43 ^ 0xF78131F4;
  LODWORD(v15) = v11 ^ v40 ^ 0x4B7DAE1D;
  v49 = *(v30 + 4 * (((v15 ^ 0x68E79195) >> 16) ^ 0xD9u));
  HIDWORD(v33) = v49 ^ 0x763A45F;
  LODWORD(v33) = v49 ^ 0x68000000;
  v50 = (-36060539 * *&v38[4 * (((v15 ^ 0x9195) >> 8) ^ 0x49)] + 771277347) ^ (690312999 * *&v36[4 * (v15 ^ 0x5F)] - 636691141) ^ v48 ^ (v33 >> 27) ^ (-219980569 * *&v34[4 * ((v15 >> 24) ^ 0xBD)] + 920731539);
  v81 = v11 ^ v44;
  LODWORD(v11) = v50 ^ v11 ^ 0x5F64A794;
  v51 = v11 ^ v81 ^ 0xC733F746;
  LODWORD(v15) = v51 ^ v15 ^ 0x68E79195;
  LODWORD(v12) = v15 ^ 0x81B0C147;
  v52 = *(v30 + 4 * (((v15 ^ 0x81B0C147) >> 16) ^ 0xD9u));
  HIDWORD(v33) = v52 ^ 0x763A45F;
  LODWORD(v33) = v52 ^ 0x68000000;
  v53 = (-36060539 * *&v38[4 * (BYTE1(v15) ^ 0x88)] + 771277347) ^ (v33 >> 27) ^ v50 ^ (690312999 * *&v36[4 * (v15 ^ 0x8D)] - 636691141) ^ (-219980569 * *&v34[4 * ((v15 >> 24) ^ 0x54)] + 920731539);
  LODWORD(v11) = v53 ^ v11 ^ 0xD5833601;
  LODWORD(v15) = v11 ^ v51;
  v54 = v11 ^ v51 ^ v12;
  v55 = *(v30 + 4 * (BYTE2(v54) ^ 0x8Cu));
  HIDWORD(v33) = v55 ^ 0x763A45F;
  LODWORD(v33) = v55 ^ 0x68000000;
  v56 = (-36060539 * *&v38[4 * (BYTE1(v54) ^ 0x1E)] + 771277347) ^ (-219980569 * *&v34[4 * (HIBYTE(v54) ^ 0xE7)] + 920731539) ^ v53 ^ (v33 >> 27) ^ (690312999 * *&v36[4 * (v54 ^ 0xED)] - 636691141);
  LODWORD(v12) = v56 ^ v11 ^ 0xE8131F4;
  HIDWORD(v80) = v12 ^ v15;
  v57 = v12 ^ v15 ^ 0xC00207F5;
  v58 = v57 ^ v54 ^ 0x32555727;
  v59 = (-36060539 * *&v38[4 * (BYTE1(v58) ^ 0x8F)] + 771277347) ^ (690312999 * *&v36[4 * ((v57 ^ v54) ^ 0x5F)] - 636691141);
  v60 = *(v30 + 4 * (BYTE2(v58) ^ 0x6Bu));
  HIDWORD(v33) = v60 ^ 0x763A45F;
  LODWORD(v33) = v60 ^ 0x68000000;
  HIDWORD(v79) = v59 ^ v56 ^ (v33 >> 27) ^ (-219980569 * *&v34[4 * (((v57 ^ v54) >> 24) ^ 0x63)] + 920731539);
  LODWORD(v80) = v57 ^ v54;
  LODWORD(v79) = HIDWORD(v79) ^ 0x5F64A794 ^ v12;
  v61 = v79 ^ v57;
  LODWORD(v15) = v79 ^ v57 ^ v57 ^ v54 ^ 0xB6E79195;
  v62 = *(v30 + 4 * (BYTE2(v15) ^ 0x8Eu));
  HIDWORD(v33) = v62 ^ 0x763A45F;
  LODWORD(v33) = v62 ^ 0x68000000;
  v63 = (690312999 * *&v36[4 * (v15 ^ 0x18)] - 636691141) ^ (-36060539 * *&v38[4 * (BYTE1(v15) ^ 0x19)] + 771277347) ^ (v33 >> 27) ^ (-219980569 * *&v34[4 * ((v15 >> 24) ^ 0x98)] + 920731539);
  v64 = v63 ^ v12;
  v65 = v63 ^ v12 ^ v80 ^ 0xB6E79195;
  v66 = *(v30 + 4 * (((v65 ^ 0x76E59660) >> 16) ^ 0x3Cu));
  HIDWORD(v33) = v66 ^ 0x763A45F;
  LODWORD(v33) = v66 ^ 0x68000000;
  HIDWORD(v78) = v63 ^ HIDWORD(v79) ^ 0x5F64A794;
  v67 = (-219980569 * *&v34[4 * (HIBYTE(v65) ^ 0xD8)] + 920731539) ^ HIDWORD(v78) ^ (690312999 * *&v36[4 * ((v63 ^ v12 ^ v80 ^ 0x95) ^ 0xCA)] - 636691141) ^ (-36060539 * *&v38[4 * (((v65 ^ 0x9660) >> 8) ^ 0xDF)] + 771277347) ^ (v33 >> 27);
  HIDWORD(v77) = v64 ^ v80 ^ 0xB6E79195;
  HIDWORD(v76) = v67 ^ v61 ^ 0xBFE59660;
  LODWORD(v76) = HIDWORD(v76) ^ v65 ^ 0x52B2C6B2;
  v68 = *(v30 + 4 * (((HIDWORD(v76) ^ v65) >> 16) ^ 0x6Bu));
  HIDWORD(v33) = v68 ^ 0x763A45F;
  LODWORD(v33) = v68 ^ 0x68000000;
  LODWORD(v30) = (v33 >> 27) ^ (690312999 * *&v36[4 * ((BYTE4(v76) ^ v65) ^ 0x78)] - 636691141) ^ (-219980569 * *&v34[4 * (((HIDWORD(v76) ^ v65) >> 24) ^ 0x87)] + 920731539) ^ (-36060539 * *&v38[4 * (((WORD2(v76) ^ v65) >> 8) ^ 0x8F)] + 771277347);
  v69 = *(&off_100374800 + v9 - 938) - 8;
  v70 = *(&off_100374800 + (v9 ^ 0x471)) - 12;
  v71 = *(&off_100374800 + (v9 ^ 0x424)) - 8;
  v75 = *(&off_100374800 + (v9 ^ 0x4D7)) - 4;
  HIDWORD(v74) = (((*(v8 - 116) ^ 0xDC18FCD4) + 1176515215) ^ ((*(v8 - 116) ^ 0x18B71A91) - 2104503092) ^ ((*(v8 - 116) ^ 0xA075715B) + 978173698)) + 1550648609;
  LODWORD(v78) = v64;
  LODWORD(v74) = v64 ^ 0xD000000 ^ v30;
  HIDWORD(v73) = v67 ^ v61 ^ 0x64000000 ^ v74;
  LODWORD(v77) = v67;
  LODWORD(v73) = v30 ^ v67;
  return sub_10003D6FC(188, (v75[*(v8 - 101) ^ 0xCCLL] ^ 0xB3 | ((v70[*(v8 - 102) ^ 0x4ELL] ^ (*(v8 - 102) - ((2 * *(v8 - 102)) & 0x78) - 68) ^ 0x16) << 8) | (((v71[*(v8 - 104) ^ 9] + 15) ^ 0xDA) << 24) | ((v69[*(v8 - 103) ^ 0x1BLL] ^ 0x77) << 16)) ^ 0xD2D2D2D2, 23, (v75[*(v8 - 109) ^ 0x30] ^ 0x45 | ((-16 - v71[*(v8 - 112) ^ 0xF4]) << 24) | ((v70[*(v8 - 110) ^ 0xDELL] ^ (*(v8 - 110) + (~(2 * *(v8 - 110)) | 0x87) - 67) ^ 0x98) << 8) | ((v69[*(v8 - 111) ^ 0x39] ^ 0x21) << 16)) ^ 0xD2D2D2D2, v71, 222, v38, 4258906757, a2, a3, a4, a5, v73, v74, v71, v70, v75, v69, v76, v77, v78, __PAIR64__(v61, v15), v79, v80);
}

uint64_t sub_10003D6FC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49)
{
  *(v55 - 120) = v51;
  *(v55 - 116) = v50;
  *(v55 - 132) = 0;
  v56 = (*(v55 - 144) + v50);
  v57 = v56[9] ^ 0xD2;
  v58 = *(a20 + (v56[13] ^ 0x90)) ^ 0x78;
  *(v55 - 128) = v51 ^ 0x1E8;
  *(v55 - 124) = v51 ^ v49;
  v59 = (v58 << ((v51 ^ v49) - 66)) + (((*(a17 + (v56[12] ^ 0x80)) + 15) ^ 0x31) << 24) + ((*(a18 + (v56[14] ^ 5)) ^ (v56[14] - ((2 * v56[14]) & 0x78) - 68) ^ 0x99) << 8) + (*(a19 + (v56[15] ^ 8)) ^ 0x34);
  v60 = *(a19 + (v56[11] ^ 9)) ^ 0x33 | ((*(a20 + v57) ^ ((v51 ^ 0xE8) - 62)) << 16) | ((*(a18 + (v56[10] ^ 0xA9)) ^ (v56[10] - ((2 * v56[10]) & 0x78) - 68) ^ 0xC2) << 8) | (((*(a17 + (v56[8] ^ 2)) + 15) ^ 0xE2) << 24);
  v61 = *(v55 - 168) ^ v54 ^ 0xC955C81A ^ (((*(a18 + (v56[6] ^ 8)) ^ (v56[6] - ((2 * v56[6]) & 0x78) - 68) ^ 0x19) << 8) | (((*(a17 + (v56[4] ^ 0xC5)) + 15) ^ 0xFFFFFFFB) << 24) | *(a19 + (v56[7] ^ 0xFDLL)) ^ 0x34 | ((*(a20 + (v56[5] ^ 0xF5)) ^ 0xCC) << 16));
  LODWORD(v57) = *(v55 - 160) ^ a4 ^ 0x4D036472 ^ (*(a19 + (v56[3] ^ 0x75)) ^ 0x99 | (((*(a17 + (*v56 ^ 0xB0)) + 15) ^ 0x16) << 24) | ((*(a20 + (v56[1] ^ 0x93)) ^ 6) << 16) | ((*(a18 + (v56[2] ^ 0x1CLL)) ^ (v56[2] - ((2 * v56[2]) & 0x78) - 68) ^ 0x5D) << 8));
  v62 = *(v55 - 164) ^ v52 ^ 0x3B679CC4 ^ v59;
  v63 = *(v55 - 156) ^ a2 ^ 0x61E1C86 ^ v60;
  v64 = *(&off_100374800 + (v51 ^ 0x7FB)) - 4;
  v65 = *(&off_100374800 + (v51 ^ 0x76E)) - 4;
  v66 = *(&off_100374800 + v51 - 1964);
  v67 = *&v64[4 * ((*(v55 - 168) ^ v54 ^ 0xC81A ^ (((*(a18 + (v56[6] ^ 8)) ^ (v56[6] - ((2 * v56[6]) & 0x78) - 68) ^ 0x19) << 8) | *(a19 + (v56[7] ^ 0xFDLL)) ^ 0x34)) >> 8)] ^ 0x79184B92 ^ *(v66 + 4 * HIBYTE(v62));
  v68 = *&v65[4 * BYTE2(v57)];
  v69 = *(&off_100374800 + (v51 ^ 0x7C2)) - 8;
  v70 = *&v69[4 * v63] - 190468687;
  v71 = *&v64[4 * BYTE1(v57)] ^ *(v66 + 4 * HIBYTE(v63));
  v72 = (*&v69[4 * v62] + 641031753 - ((2 * *&v69[4 * v62] + 1766546274) & 0x631F6130)) ^ *&v65[4 * BYTE2(v61)];
  v73 = (v72 - 298602613 + ~(v53 & (2 * v72))) ^ *(v66 + 4 * BYTE3(v57));
  LODWORD(v57) = *(v66 + 4 * HIBYTE(v61)) ^ *&v65[4 * BYTE2(v63)] ^ (*&v69[4 * v57] - 190468687);
  v74 = *&v64[4 * BYTE1(v63)] ^ *(v55 - 172) ^ (v73 - 1758731240 - ((2 * v73) & 0x2E57C830));
  v75 = *&v65[4 * BYTE2(v62)] ^ *(v55 - 180) ^ (*&v69[4 * v61] - 190468687) ^ ((v71 ^ 0x79184B92) + 831500440 - 2 * ((v71 ^ 0x79184B92) & 0x318FB099 ^ v71 & 1));
  v76 = *&v64[4 * BYTE1(v62)] ^ *(v55 - 176) ^ ((v57 ^ 0xDFBC1F12) - 1758731240 - 2 * ((v57 ^ 0xDFBC1F12) & 0x172BE41D ^ v57 & 5));
  v77 = v76 ^ 0xBF80DD5E;
  v78 = (v74 ^ 0xD7674CCB) >> 24;
  v79 = *(v55 - 184) ^ v68 ^ v70 ^ 0x425C8945 ^ (v67 + 831500440 - ((2 * v67) & 0x631F6130));
  v80 = *&v65[4 * ((v74 ^ 0xD7674CCB) >> 16)] ^ *(v66 + 4 * HIBYTE(v79));
  v81 = *&v64[4 * ((v75 ^ 0xDD4) >> 8)] ^ (*&v69[4 * v79] - 1949199927 - ((2 * *&v69[4 * v79] + 692804450) & 0x2E57C830));
  v82 = *&v69[4 * (v76 ^ 0x48)];
  v83 = (v82 - 489071301 - ((2 * v82 - 380937374) & v53)) ^ *(v66 + 4 * ((v75 ^ 0x16B10DD4u) >> 24));
  v84 = (v83 - 1758731240 - ((2 * v83) & 0x2E57C830)) ^ *&v64[4 * ((v74 ^ 0x4CCB) >> 8)];
  v85 = *&v69[4 * (v74 ^ 0xDD)];
  v86 = (v85 - 1949199927 - ((2 * v85 + 692804450) & 0x2E57C830)) ^ *&v64[4 * BYTE1(v79)];
  v87 = *(v66 + 4 * v78) ^ (v81 - 298602614 - (v53 & (2 * v81)));
  v88 = (v80 ^ 0xDFBC1F12) - 1758731240 - 2 * ((v80 ^ 0xDFBC1F12) & 0x172BE41D ^ v80 & 5);
  v89 = v87 + 831500440 - ((2 * v87) & 0x631F6130);
  v90 = (v86 - 298602613 + ~(v53 & (2 * v86))) ^ *(v66 + 4 * HIBYTE(v77));
  v91 = v90 + 831500440 - ((2 * v90) & 0x631F6130);
  v92 = *&v65[4 * BYTE2(v79)] ^ a49 ^ (v84 + 831500440 - ((2 * v84) & 0x631F6130));
  v93 = __ROR4__(__ROR4__(*&v65[4 * BYTE2(v77)] ^ 0xB9AB301 ^ v89, 5) ^ 0x50D2ECF9, 27);
  v94 = a47 ^ v93 ^ 0x6EDAF696;
  v95 = v88 ^ a48 ^ *&v64[4 * BYTE1(v77)] ^ (*&v69[4 * (v75 ^ 0xC2)] - 190468687);
  v96 = *(v55 - 188) ^ *&v65[4 * ((v75 ^ 0x16B10DD4u) >> 16)] ^ 0x2201ECBC ^ v91;
  v97 = *&v69[4 * (v92 ^ 0x37)];
  v98 = (v97 + 641031753 + ((380937372 - 2 * v97) | 0x9CE09ECF) + 1) ^ *&v65[4 * (((a47 ^ v93) >> 16) ^ 0x45)];
  v99 = *&v64[4 * BYTE1(v94)] ^ *(v66 + 4 * ((v92 ^ 0xD62C0A37) >> 24)) ^ 0x79184B92;
  v100 = (v98 - 1758731240 - ((2 * v98) & 0x2E57C830)) ^ *&v64[4 * BYTE1(v96)];
  v101 = *&v64[4 * ((v92 ^ 0xA37) >> 8)] ^ *&v65[4 * BYTE2(v96)];
  v102 = *(v66 + 4 * ((v95 ^ 0xFC47C039) >> 24));
  v103 = *&v65[4 * (BYTE2(v92) ^ 0xB3)] ^ (*&v69[4 * ((a47 ^ v93) ^ 0x96)] - 190468687) ^ *(v66 + 4 * HIBYTE(v96));
  v104 = *(v66 + 4 * HIBYTE(v94));
  v105 = *&v69[4 * v96] - 190468687;
  v106 = (v101 ^ 0xA6A45480) - 298602614 - 2 * ((v101 ^ 0xA6A45480) & 0x6E33AF9A ^ v101 & 0x10);
  v107 = *&v69[4 * (v95 ^ 0x39)] - 190468687;
  v108 = *&v64[4 * (BYTE1(v95) ^ 0x87)];
  v109 = (v99 + 831500440 - ((2 * v99) & 0x631F6130)) ^ a42 ^ *&v65[4 * ((v95 ^ 0xFC47C039) >> 16)] ^ v105;
  LODWORD(v57) = a44 ^ v102 ^ 0x61C6B6CD ^ (v100 - 298602614 - (v53 & (2 * v100)));
  v110 = v106 ^ a46 ^ v104 ^ v107;
  v111 = v108 ^ a45 ^ ((v103 ^ 0xDFBC1F12) - 1758731240 - 2 * ((v103 ^ 0xDFBC1F12) & 0x172BE41D ^ v103 & 5));
  BYTE2(v107) = BYTE2(v111) ^ 0x65;
  v112 = (v111 ^ 0x7D650C28) >> 24;
  v113 = *&v69[4 * (v110 ^ 0xDD)];
  v114 = *&v69[4 * (v111 ^ 0x28)];
  v115 = (v114 - 489071301 - ((2 * v114 - 380937374) & v53)) ^ *(v66 + 4 * ((v109 ^ 0x7F82DAABu) >> 24));
  v116 = (v115 - 1758731240 - ((2 * v115) & 0x2E57C830)) ^ *&v64[4 * (((v110 ^ 0x35DF) >> 8) ^ 0x79)];
  v117 = (v113 - 1949199927 - ((2 * v113 + 692804450) & 0x2E57C830)) ^ *&v64[4 * BYTE1(v57)];
  v118 = *&v65[4 * BYTE2(v57)];
  v119 = *&v65[4 * (BYTE2(v110) ^ 0x67)] ^ *&v64[4 * (BYTE1(v111) ^ 0x4B)];
  v120 = *&v65[4 * ((v109 ^ 0x7F82DAABu) >> 16)] ^ (v117 + 831500440 - ((2 * v117) & 0x631F6130));
  v121 = *(v66 + 4 * BYTE3(v57));
  LODWORD(v57) = *&v65[4 * BYTE2(v107)] ^ 0xDFBC1F12 ^ *(v66 + 4 * (HIBYTE(v110) ^ 0xBD)) ^ (*&v69[4 * v57] - 190468687);
  v122 = *(v66 + 4 * v112) ^ a41 ^ (v120 - 298602614 - (v53 & (2 * v120)));
  v123 = v118 ^ a40 ^ (v116 + 831500440 - ((2 * v116) & 0x631F6130));
  v124 = v122 ^ 0x66654B3E;
  v125 = v121 ^ a39 ^ (*&v69[4 * (v109 ^ 0xBD)] - 190468687) ^ ((v119 ^ 0xA6A45480) - 298602614 - 2 * ((v119 ^ 0xA6A45480) & 0x6E33AF9F ^ v119 & 0x15));
  v126 = a43 ^ *&v64[4 * ((v109 ^ 0xDAAB) >> 8)] ^ 0xE82DABD ^ (v57 - 1758731240 - ((2 * v57) & 0x2E57C830));
  v127 = HIBYTE(v126);
  v128 = *&v69[4 * ((a43 ^ v64[4 * ((v109 ^ 0xDAAB) >> 8)]) ^ 0xBD ^ (v57 + 24 - ((2 * v57) & 0x30)))];
  v129 = (v128 - 1949199927 - ((2 * v128 + 692804450) & 0x2E57C830)) ^ *&v64[4 * ((v125 ^ 0xE61F) >> 8)];
  v130 = (v122 ^ 0x66654B3Eu) >> 24;
  v131 = *&v69[4 * (v122 ^ 0x28)];
  v132 = (v129 - 298602614 - (v53 & (2 * v129))) ^ *(v66 + 4 * v130);
  v133 = (v131 - 1949199927 - ((2 * v131 + 692804450) & 0x2E57C830)) ^ *&v64[4 * BYTE1(v126)];
  v134 = (v133 + 831500440 - ((2 * v133) & 0x631F6130)) ^ *&v65[4 * (BYTE2(v125) ^ 0x91)];
  v135 = *(v66 + 4 * ((v125 ^ 0x880EE61F) >> 24)) ^ 0xB2651257 ^ *&v64[4 * BYTE1(v124)];
  v136 = *&v65[4 * BYTE2(v126)] ^ 0xF1685A5C;
  LODWORD(v57) = *&v69[4 * (v125 ^ 0x1F)];
  LODWORD(v57) = (v57 + 641031753 - ((2 * v57 + 1766546274) & 0x631F6130)) ^ *&v65[4 * BYTE2(v124)];
  LODWORD(v57) = (v57 - 298602614 - (v53 & (2 * v57))) ^ *(v66 + 4 * v127);
  v137 = v57 - 1758731240 - ((2 * v57) & 0x2E57C830);
  v138 = v132 + 831500440 - ((2 * v132) & 0x631F6130);
  v139 = (*&v69[4 * (v123 ^ 0x48)] - 190468687) ^ a35 ^ (v136 + v135 - 2 * (v136 & v135));
  LODWORD(v57) = *(v66 + 4 * ((v123 ^ 0xA480DD5E) >> 24)) ^ a36 ^ (v134 - 298602614 - (v53 & (2 * v134)));
  v140 = *&v64[4 * (BYTE1(v123) ^ 0xDD)] ^ a38 ^ v137;
  v141 = a37 ^ *&v65[4 * ((v123 ^ 0xA480DD5E) >> 16)] ^ 0x84654B28 ^ v138;
  v142 = *&v69[4 * (((v69[4 * (v123 ^ 0x48)] - 79) ^ a35 ^ (v136 + v135 - 2 * (v136 & v135))) ^ 0x7E)];
  v143 = *&v69[4 * ((v64[4 * (BYTE1(v123) ^ 0xDD)] ^ a38 ^ v137) ^ 0xDD)];
  v144 = *(v66 + 4 * (HIBYTE(v139) ^ 0x30)) ^ 0xDFBC1F12 ^ *&v65[4 * (BYTE2(v140) ^ 0x67)] ^ (*&v69[4 * (v57 ^ 0x6E)] - 190468687);
  v145 = (v143 - 489071301 - ((2 * v143 - 380937374) & v53)) ^ *(v66 + 4 * HIBYTE(v141));
  v146 = (v145 + 831500440 - ((2 * v145) & 0x631F6130)) ^ *&v65[4 * (((v57 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v147 = *&v65[4 * BYTE2(v141)] ^ (v142 + 641031753 - ((2 * v142 + 1766546274) & 0x631F6130));
  v148 = *(v66 + 4 * ((v57 ^ 0xD0C9FB6E) >> 24)) ^ *&v65[4 * (BYTE2(v139) ^ 0xEE)] ^ 0xDFBC1F12 ^ (*&v69[4 * v141] - 190468687);
  v149 = *&v64[4 * (BYTE1(v139) ^ 0xC3)];
  v150 = *&v64[4 * (BYTE1(v57) ^ 0xBC)];
  LODWORD(v57) = (v147 - 298602614 - (v53 & (2 * v147))) ^ *(v66 + 4 * (HIBYTE(v140) ^ 0x5F));
  v151 = v57 - 1758731240 - ((2 * v57) & 0x2E57C830);
  v152 = *&v64[4 * (BYTE1(v140) ^ 0x4C)] ^ a32 ^ (v148 - 1758731240 - ((2 * v148) & 0x2E57C830));
  LODWORD(v57) = (v144 - 1758731240 - ((2 * v144) & 0x2E57C830)) ^ a31 ^ *&v64[4 * BYTE1(v141)];
  v153 = v150 ^ a34 ^ v151;
  v154 = a33 ^ v149 ^ 0x9A674CDD ^ (v146 - 1758731240 - ((2 * v146) & 0x2E57C830));
  v155 = *&v69[4 * ((a33 ^ v149) ^ 0xDD ^ (v146 + 24 - ((2 * v146) & 0x30)))];
  v156 = (v155 - 1949199927 - ((2 * v155 + 692804450) & 0x2E57C830)) ^ *&v64[4 * ((v153 ^ 0xDAAB) >> 8)];
  v157 = (v156 + 831500440 - ((2 * v156) & 0x631F6130)) ^ *&v65[4 * ((v57 ^ 0xBFC6B6DB) >> 16)];
  v158 = v157 - 298602614 - (v53 & (2 * v157));
  v159 = *(v66 + 4 * (HIBYTE(v152) ^ 0xA6));
  v160 = *(v66 + 4 * ((v57 ^ 0xBFC6B6DB) >> 24)) ^ 0x79184B92 ^ (*&v69[4 * (v152 ^ 0xE)] - 190468687) ^ *&v64[4 * BYTE1(v154)];
  v161 = *(v66 + 4 * ((v153 ^ 0x2982DAABu) >> 24)) ^ *&v64[4 * (BYTE1(v152) ^ 0x2A)];
  v162 = *&v64[4 * ((v57 ^ 0xB6DB) >> 8)] ^ 0x79184B92 ^ *(v66 + 4 * HIBYTE(v154));
  v163 = *&v65[4 * (BYTE2(v152) ^ 0xB3)];
  v164 = (v161 ^ 0x79184B92) + 831500440 - 2 * ((v161 ^ 0x79184B92) & 0x318FB09D ^ v161 & 5);
  v165 = *&v69[4 * (v153 ^ 0xBD)] - 190468687;
  v166 = (v160 + 831500440 - ((2 * v160) & 0x631F6130)) ^ a27 ^ *&v65[4 * ((v153 ^ 0x2982DAABu) >> 16)];
  v167 = a30 ^ *&v65[4 * BYTE2(v154)] ^ (*&v69[4 * (v57 ^ 0xCD)] - 190468687) ^ 0x2674CDD ^ v164;
  LODWORD(v57) = a28 ^ v159 ^ 0xAF54BB9B ^ v158;
  v168 = a29 ^ v163 ^ v165 ^ 0x2BE67D3F ^ (v162 + 831500440 - ((2 * v162) & 0x631F6130));
  v169 = *&v69[4 * (v166 ^ 0x8A)];
  v170 = (*&v69[4 * v57] + 641031753 - ((2 * *&v69[4 * v57] + 1766546274) & 0x631F6130)) ^ *&v65[4 * BYTE2(v167)];
  v171 = (v170 - 1758731240 - ((2 * v170) & 0x2E57C830)) ^ *&v64[4 * BYTE1(v168)];
  v172 = *(v66 + 4 * ((v166 ^ 0x44E9778Au) >> 24));
  v173 = *&v64[4 * ((v166 ^ 0x778A) >> 8)] ^ *(v66 + 4 * HIBYTE(v168)) ^ 0x79184B92;
  v174 = *&v65[4 * BYTE2(v57)];
  v175 = *(v66 + 4 * BYTE3(v57)) ^ *&v64[4 * BYTE1(v167)] ^ 0x79184B92 ^ (*&v69[4 * (v168 ^ 0x16)] - 190468687);
  v176 = *(v66 + 4 * HIBYTE(v167)) ^ (v169 - 489071301 - ((2 * v169 - 380937374) & v53));
  v177 = *&v65[4 * (BYTE2(v166) ^ 0x76)];
  v178 = BYTE1(v57);
  LODWORD(v57) = (v176 + 831500440 - ((2 * v176) & 0x631F6130)) ^ *&v65[4 * BYTE2(v168)];
  v179 = v175 + 831500440 - ((2 * v175) & 0x631F6130);
  v180 = *&v64[4 * v178];
  v181 = v174 ^ a25 ^ (*&v69[4 * v167] - 190468687) ^ (v173 + 831500440 - ((2 * v173) & 0x631F6130));
  v182 = v172 ^ a24 ^ (v171 - 298602614 - (v53 & (2 * v171)));
  LODWORD(v57) = a26 ^ v180 ^ 0x26E67D29 ^ (v57 - 1758731240 - ((2 * v57) & 0x2E57C830));
  LOBYTE(v180) = v182 ^ 0x58;
  v183 = a28 ^ a25 ^ v177 ^ 0xA254BB9B ^ v179;
  v184 = (v182 ^ 0x4BE2758u) >> 24;
  v185 = *&v69[4 * (v181 ^ 0x49)];
  v186 = (*&v69[4 * v57] - 1949199927 - ((2 * *&v69[4 * v57] + 692804450) & 0x2E57C830)) ^ *&v64[4 * ((v182 ^ 0x2758) >> 8)];
  v187 = (v185 + 641031753 - ((2 * v185 + 1766546274) & 0x631F6130)) ^ *&v65[4 * (BYTE2(v182) ^ 0x21)];
  v188 = (v187 - 298602614 - (v53 & (2 * v187))) ^ *(v66 + 4 * HIBYTE(v183));
  v189 = (v186 + 831500440 - ((2 * v186) & 0x631F6130)) ^ *&v65[4 * BYTE2(v183)];
  v190 = (*&v69[4 * v180] - 489071301 - ((2 * *&v69[4 * v180] - 380937374) & v53)) ^ *(v66 + 4 * BYTE3(v57));
  v191 = (v190 - 1758731240 - ((2 * v190) & 0x2E57C830)) ^ *&v64[4 * BYTE1(v183)];
  v192 = *(v66 + 4 * v184) ^ *&v64[4 * (BYTE1(v181) ^ 0xEB)] ^ 0x79184B92 ^ (*&v69[4 * v183] - 190468687);
  v193 = *&v65[4 * BYTE2(v57)] ^ a21 ^ (v192 + 831500440 - ((2 * v192) & 0x631F6130));
  LODWORD(v64) = *&v64[4 * BYTE1(v57)] ^ a22 ^ (v188 - 1758731240 - ((2 * v188) & 0x2E57C830));
  v194 = *&v65[4 * (BYTE2(v181) ^ 3)] ^ a23 ^ (v191 + 831500440 - ((2 * v191) & 0x631F6130));
  LODWORD(v57) = a23 ^ a25 ^ *(v66 + 4 * (HIBYTE(v181) ^ 0xEF)) ^ (v189 - 298602614 - (v53 & (2 * v189)));
  v195 = v57 ^ 0xBD9E3C06;
  v196 = v194 ^ 0xB0693C07;
  v197 = *(v55 - 120);
  v198 = *(&off_100374800 + v197 - 1851) - 4;
  v199 = *&v198[4 * (v57 ^ 7)];
  LODWORD(v65) = BYTE3(v57) ^ 0xD2;
  v200 = *(&off_100374800 + v197 - 1890) - 4;
  LODWORD(v65) = 1909043885 * *&v200[4 * v65] - ((1670604122 * *&v200[4 * v65] + 320249400) & 0x6E992EB6);
  v201 = *(&off_100374800 + (v197 ^ 0x76F)) - 4;
  v202 = *&v201[4 * ((v64 ^ 0xFAB5) >> 8)];
  HIDWORD(v203) = v202 ^ 0x29F5396;
  LODWORD(v203) = v202 ^ 0xC0000000;
  v204 = (v203 >> 28) ^ (*&v198[4 * (v193 ^ 0x16)] - 2048803443) ^ (1909043885 * *&v200[4 * (HIBYTE(v194) ^ 0xDF)] + 1233866524);
  LODWORD(v69) = *&v201[4 * ((v193 ^ 0xF016) >> 8)];
  v205 = v199 - ((2 * v199 + 197360410) & 0x6E992EB6);
  HIDWORD(v203) = v69 ^ 0x29F5396;
  LODWORD(v203) = v69 ^ 0xC0000000;
  LODWORD(v69) = v203 >> 28;
  v206 = *&v201[4 * BYTE1(v195)];
  HIDWORD(v203) = v206 ^ 0x29F5396;
  LODWORD(v203) = v206 ^ 0xC0000000;
  v207 = *(&off_100374800 + v197 - 1929);
  v208 = *(v207 + 4 * ((v64 ^ 0x422CFAB5) >> 16));
  v209 = *(v207 + 4 * ((v193 ^ 0xF6BCF016) >> 16));
  v210 = (v203 >> 28) ^ (*&v198[4 * (v64 ^ 0xB5)] - 2048803443);
  LODWORD(v198) = *&v198[4 * v196];
  LODWORD(v66) = *(v207 + 4 * (BYTE2(v196) ^ 0xF7u));
  v211 = *&v201[4 * BYTE1(v196)];
  LODWORD(v201) = *&v200[4 * ((v64 >> 24) ^ 0x2D)];
  LODWORD(v200) = *&v200[4 * (HIBYTE(v193) ^ 0x99)];
  HIDWORD(v203) = v211 ^ 0x29F5396;
  LODWORD(v203) = v211 ^ 0xC0000000;
  LODWORD(v64) = a13 ^ *(v207 + 4 * BYTE2(v195)) ^ (v204 + 927766363 - ((2 * v204) & 0x6E992EB6));
  v212 = v208 ^ a15 ^ v69 ^ (v198 - 2048803443);
  v213 = v65 - 2133334409;
  LODWORD(v69) = (v205 - 1121037080) ^ a14 ^ v209 ^ (1909043885 * v201 + 1233866524) ^ (v203 >> 28);
  LODWORD(v66) = a14 ^ a21 ^ v66 ^ (1909043885 * v200 + 1233866524) ^ (v210 + 927766363 - ((2 * v210) & 0x6E992EB6));
  v214 = *(&off_100374800 + (v197 ^ 0x75C)) - 4;
  v56[10] = v214[(((v205 + 21736) ^ a14 ^ v209 ^ (-19795 * v201 + 20252) ^ (v203 >> 28)) >> 8) ^ 0x79] ^ 0xDF;
  v215 = *(&off_100374800 + (v197 ^ 0x75F)) - 12;
  v216 = v212 ^ v213;
  v56[13] = v215[BYTE2(v66) ^ 0xF0] ^ 7;
  v217 = *(&off_100374800 + v197 - 1880) - 12;
  v56[15] = (v217[v66 ^ 0x45] - 118) ^ 0x8F;
  v56[6] = v214[BYTE1(v216) ^ 0x1BLL] ^ 0x23;
  v56[1] = v215[BYTE2(v64) ^ 0x3ELL] ^ 0x61;
  v218 = *(&off_100374800 + v197 - 1952);
  v56[12] = *(v218 + (BYTE3(v66) ^ 0x41)) ^ 0x4E;
  v56[8] = *(v218 + ((v69 >> 24) ^ 0xB6)) ^ 0x88;
  v56[3] = (v217[v64 ^ 0xDFLL] - 118) ^ 0x17;
  v56[14] = v214[BYTE1(v66) ^ 0x5ELL] ^ 0x62;
  v56[11] = (v217[((v205 - 24) ^ a14 ^ v209 ^ (-83 * v201 + 28) ^ (v203 >> 28)) ^ 0x54] - 118) ^ 0x67;
  v56[2] = v214[BYTE1(v64) ^ 0x13] ^ 0x2F;
  v219 = *(v55 - 116);
  v56[7] = (v217[v216 ^ 0xDELL] - 118) ^ 0x84;
  v56[5] = v215[BYTE2(v216) ^ 0x7ALL] ^ 0xA6;
  *v56 = *(v218 + ((v64 >> 24) ^ 0xB5)) ^ 0x68;
  v56[9] = v215[BYTE2(v69) ^ 0x6FLL] ^ 0xD4;
  v56[4] = *(v218 + (HIBYTE(v216) ^ 0x49)) ^ 0x1C;
  v220 = v219 + 1531928182 < a16;
  if (a16 < 0x5B4F5E66 != (v219 + 1531928182) < 0x5B4F5E66)
  {
    v220 = a16 < 0x5B4F5E66;
  }

  return (*(*(v55 - 152) + 8 * ((3861 * v220) ^ v197)))();
}

uint64_t sub_10003F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v47 = (*(v42 + 8 * (v40 + 2041)))(LODWORD(STACK[0x344]), a2, a40);
  v48 = STACK[0x2B8];
  if (v47)
  {
    if (v47 == 268435459)
    {
      LODWORD(STACK[0x43C]) = 392145856;
      return (*(v42 + 8 * (((STACK[0x2D8] != 0) * (303 * (LODWORD(STACK[0x2B8]) ^ 0x172) + ((LODWORD(STACK[0x2B8]) + 322) ^ 0xFFFFFBAE))) ^ (LODWORD(STACK[0x2B8]) + 411))))();
    }

    else
    {
      v58 = 843532609 * ((2 * ((v46 - 200) & 0x5D65AC18) - (v46 - 200) - 1566944285) ^ 0xFED70766);
      v59 = STACK[0x2B8];
      *(v46 - 184) = -392105736 - v58 + v47 - ((2 * v47) & 0xD141E1F0);
      *(v46 - 200) = v59 - v58 + 917;
      *(v45 + 8) = &STACK[0x43C];
      v60 = (*(v42 + 8 * (v59 + 1995)))(v46 - 200);
      return (*(v42 + 8 * (((STACK[0x2D8] != 0) * (303 * (v59 ^ 0x172) + ((v59 + 322) ^ 0xFFFFFBAE))) ^ (v59 + 411))))(v60);
    }
  }

  else
  {
    STACK[0x3A8] = &STACK[0x540] + v41;
    LODWORD(STACK[0x4A4]) = 873071476;
    STACK[0x458] = v43 - 80;
    STACK[0x428] = 0;
    LODWORD(STACK[0x46C]) = 468311845;
    *(v46 - 196) = v48 - 742307843 * (v44 ^ 0x1E228D55) + 68671561;
    (*(v42 + 8 * (v48 + 2028)))(v46 - 200);
    v50 = (*(v42 + 8 * (v48 + 2015)))(336, 0x100004077774924);
    return (*(v42 + 8 * ((v48 + 1695) ^ (32 * (((3 * (v48 ^ 7)) ^ (v50 == 0)) & 1)))))(v50, v51, v52, v53, v54, v55, v56, v57, a9);
  }
}

uint64_t sub_10003F2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v28 - 144) = (v24 + 486) ^ (1037613739 * ((((v28 - 144) | 0xAB85369F) - (v28 - 144) + ((v28 - 144) & 0x547AC960)) ^ 0x7A871BE0));
  *(v28 - 120) = &a24;
  *(v28 - 112) = a12;
  *(v28 - 136) = &a24;
  *(v28 - 128) = v26;
  (*(v25 + 8 * ((v24 + 264) ^ 0xD27)))(v28 - 144);
  *(v28 - 120) = &a24;
  *(v28 - 112) = a12;
  *(v28 - 136) = &a24;
  *(v28 - 128) = v26;
  *(v28 - 144) = (v24 + 486) ^ (1037613739 * ((((v28 - 144) | 0xDE59CF71) - (v28 - 144) + ((v28 - 144) & 0x21A63088)) ^ 0xF5BE20E));
  (*(v25 + 8 * (v24 + 1509)))(v28 - 144);
  v29 = 210068311 * ((((v28 - 144) | 0x9E517E0) - (v28 - 144) + ((v28 - 144) & 0xF61AE818)) ^ 0x9B332844);
  *(v28 - 128) = a13;
  *(v28 - 136) = v24 + 264 - v29 - 477;
  *(v28 - 144) = v29 + ((v27 - 2054041576) ^ 0x7D9D9AF1) - 268507696 + ((((v24 - 654438702) & 0x2701EF3E) - 80005972) & (2 * (v27 - 2054041576)));
  v30 = (*(v25 + 8 * ((v24 + 264) ^ 0xD10)))(v28 - 144);
  return (*(v25 + 8 * ((78 * (*(v28 - 140) == -1611310844)) ^ (v24 + 264))))(v30);
}

uint64_t sub_10003F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, char a19)
{
  a17 = v19 + 154228608;
  *(v22 - 112) = (v20 + 819) ^ (1785193651 * (((v22 - 120) & 0x9A5E7DC | ~((v22 - 120) | 0x9A5E7DC)) ^ 0xE586F403));
  *(v22 - 120) = a15;
  *(v22 - 104) = &a19;
  (*(v21 + 8 * (v20 + 1904)))(v22 - 120);
  *(v22 - 112) = &a16;
  *(v22 - 104) = a15;
  *(v22 - 120) = (v20 + 1730) ^ (843532609 * ((((v22 - 120) | 0x8EF96A22) - ((v22 - 120) & 0x8EF96A22)) ^ 0xD2B43EA7));
  v23 = (*(v21 + 8 * (v20 ^ 0x8DC)))(v22 - 120);
  return (*(v21 + 8 * (((*(v22 - 116) <= 0x26799476u) * ((28 * ((v20 + 1390821872) & 0xAD19BEEF ^ 0x2BB)) ^ 0x377)) ^ v20)))(v23);
}

uint64_t sub_10003F614@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((a2 == 0) * a1) ^ v2)))();
}

uint64_t sub_10003F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *(*(a14 + 96) + 504) = v16 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v19 = 1785193651 * ((((v18 - 152) | 0x66CD3F42) - (v18 - 152) + ((v18 - 152) & 0x9932C0B8)) ^ 0x7511D362);
  *(v18 - 144) = v18 - 252;
  *(v18 - 148) = v19 - 562358852;
  *(v18 - 136) = v19 ^ 0x942D0C24;
  v20 = (*(v17 + 18464))(v18 - 152);
  return (*(v17 + 8 * ((938 * (a16 - 468311910 + (*(v18 - 184) & 0x3Fu) > 0xFFFFFFBF)) ^ 0x1BAu)))(v20);
}

void sub_10003F8F8(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v9 = 1037613739 * (((&a3 | 0xFD9A3DDF) + (~&a3 | 0x265C220)) ^ 0x2C9810A1);
  a3 = v9 + 136528025;
  a4 = v7;
  a5 = 0;
  a6 = (a1 - 1735) ^ v9;
  a7 = 681059090 - v9;
  (*(v8 + 8 * (a1 ^ 0xE24u)))(&a3);
  sub_10002C094();
}

uint64_t sub_10003F980@<X0>(uint64_t a1@<X8>)
{
  v4 = 400023897 - v2 - (((v3 ^ 0x45B) - 1867229099) & (-1627692446 - 2 * v2));
  v5 = 50899313 * (&v7 ^ 0x142F9D9B);
  v8 = v4 ^ v5;
  v9 = v5 + v3 + 1018;
  v7 = a1;
  return (*(v1 + 8 * (v3 ^ 0xAEA)))(&v7);
}

uint64_t sub_10003FA78(uint64_t a1, unsigned int a2)
{
  if (((v3 ^ 0x5280D3CB) + a2) < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1526616442 - a2;
  }

  return (*(v2 + 8 * (((v4 - 763308222 >= 0) * ((((v3 ^ 0x57B) + 1698477446) & 0x9AC34EFF) - 407)) ^ v3 ^ 0x57B)))(a1, v4 - 1);
}

uint64_t sub_10003FB80(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int8x16_t a33, int8x16_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, int8x16_t a38)
{
  v44 = v38 + 2;
  v45 = (v42 + (v41 + 32));
  v46 = veorq_s8(v44[-1], *v45);
  v47 = veorq_s8(*v44, v45[1]);
  return (*(v43 + 8 * (((v40 == 32) * (v39 + 1083)) ^ v39)))(vorrq_s8(vqtbl1q_s8(v46, a38), a1), vorrq_s8(vqtbl1q_s8(v46, a37), a2), vorrq_s8(vqtbl1q_s8(v46, a34), a3), vorrq_s8(vqtbl1q_s8(v46, a33), a4), vorrq_s8(vqtbl1q_s8(v47, a38), a5), vorrq_s8(vqtbl1q_s8(v47, a34), a6), vorrq_s8(vqtbl1q_s8(v47, a37), a7), vorrq_s8(vqtbl1q_s8(v47, a33), a8));
}

uint64_t sub_10003FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v16 = (v14 - 157) | 0x88;
  v17 = (v16 ^ 0xD280D3EA) + a14;
  if (v17 < 0)
  {
    v17 = -v17;
  }

  return (*(v15 + 8 * (((((v17 ^ 0x6D7F6BFF) + ((2 * v17) & 0xDAFED7FE) - 1837067264) >> 31) * ((v16 - 968071338) ^ 0xC64C6BE7)) ^ v16)))();
}

uint64_t sub_10003FD84(char a1, uint64_t a2, uint64_t a3)
{
  v15.val[1].i64[0] = (v7 + 13) & 0xF;
  v15.val[1].i64[1] = (v7 + 12) & 0xF;
  v15.val[2].i64[0] = (v7 + 11) & 0xF;
  v15.val[2].i64[1] = (v7 + 10) & 0xF;
  v15.val[3].i64[0] = (v7 + 9) & 0xF;
  v15.val[3].i64[1] = a1 & 0xF ^ 2;
  v16.val[0].i64[0] = (v7 + 7) & 0xF;
  v16.val[0].i64[1] = (v7 + 6) & 0xF;
  v16.val[1].i64[0] = (v7 + 5) & 0xF;
  v16.val[1].i64[1] = (v7 + 4) & 0xF;
  v16.val[2].i64[0] = (v7 + 3) & 0xF;
  v16.val[2].i64[1] = (v7 + 2) & 0xF;
  v16.val[3].i64[0] = (v7 + 1) & 0xF;
  v16.val[3].i64[1] = v7 & 0xF;
  v11 = vqtbl4q_s8(v16, xmmword_1002D9810).u64[0];
  v12.i64[0] = 0x5959595959595959;
  v12.i64[1] = 0x5959595959595959;
  v13.i64[0] = 0x3333333333333333;
  v13.i64[1] = 0x3333333333333333;
  v15.val[0].i64[0] = (a3 - 1) & 0xF;
  v15.val[0].i64[1] = (v7 + 14) & 0xF;
  v16.val[3].i64[0] = vqtbl4q_s8(v15, xmmword_1002D9810).u64[0];
  v16.val[3].i64[1] = v11;
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v3 + a3), *(v5 + v15.val[0].i64[0] - 15)), veorq_s8(*(v15.val[0].i64[0] + v4 - 10), *(v15.val[0].i64[0] + v6 - 13))));
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v16.val[0], v16.val[0], 8uLL), v13), vmulq_s8(v16.val[3], v12)));
  *(v9 + a3) = vextq_s8(v16.val[0], v16.val[0], 8uLL);
  return (*(v10 + 8 * ((((v7 & 0x10) == 16) * (9 * (v8 ^ 0x21C) + 839)) ^ v8)))();
}

uint64_t sub_10003FF34()
{
  v4 = v2 - 281968071;
  v5 = v4 < 0x4B5824DE;
  v6 = v3 + 1264067806 < v4;
  if (v5 != v3 > 0xB4A7DB21)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((((2 * (v1 ^ 0x673)) ^ 0x7E5) * !v6) ^ v1)))();
}

void sub_10003FFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = v8 || a6 == 0 || a7 == 0 || a8 == 0;
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_10004007C@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  v5 = v2 + v4 - 1670154937;
  v6 = v5 < 0xC083391D;
  v7 = v3 - 1065141987 < v5;
  if (v3 > 0x3F7CC6E2 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2 + 1;
  }

  *result = v8;
  return result;
}

uint64_t sub_10004036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = &a15;
  a15 = a10;
  HIDWORD(a16) = -843532609 * ((2 * (v24 & 0x5070C788) - v24 + 797915249) ^ 0x73C26CF4) + 1265912287 * v21 + 441172865;
  LODWORD(a17) = (v23 + 1365) ^ (843532609 * ((2 * (v24 & 0x5070C788) - v24 + 797915249) ^ 0x73C26CF4));
  (*(v22 + 8 * (v23 ^ 0x8E3)))(&a15);
  v25 = 1037613739 * ((-872566796 - (&a15 | 0xCBFDAFF4) + (&a15 | 0x3402500B)) ^ 0xE5007D74);
  a16 = a10;
  a17 = v19;
  a18 = (v23 + 463) ^ v25;
  a19 = (v20 ^ 0xB7FEFF33) + ((2 * v20) & 0x6FFDFE66) + 1859122654 + v25;
  v26 = (*(v22 + 8 * (v23 + 1823)))(&a15);
  return (*(v22 + 8 * ((935 * (a15 == ((v23 - 270) ^ 0xE8A0F045))) ^ v23)))(v26);
}

uint64_t sub_1000406C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  v44 = *(&a28 + a2 + 72);
  v45 = v42 + (a2 ^ 0xFF5B679E) + ((2 * a2) & 0xFEB6CF38);
  *(a1 + v45 + v40 - 311) = v44 ^ 0x5E;
  *(a1 + v45 + 29) = (BYTE1(v44) ^ 0xD0) - 2 * ((BYTE1(v44) ^ 0xD0) & 0x37 ^ BYTE1(v44) & 4) + 51;
  *(a1 + v45 + 30) = (BYTE2(v44) ^ 0x4C) - ((v44 >> 15) & 0x66) + 51;
  *(a1 + v45 + 31) = (HIBYTE(v44) ^ 0xA2) - 2 * ((HIBYTE(v44) ^ 0xA2) & 0xBB ^ HIBYTE(v44) & 8) + 51;
  return (*(v43 + 8 * (((a2 + 4 < a40) * v41) ^ v40)))();
}

uint64_t sub_100040798@<X0>(int a1@<W2>, int a2@<W4>, int a3@<W8>)
{
  if ((a3 - 1190407904) <= 0x10 && ((1 << (a3 + 32)) & 0x18105) != 0)
  {
    return (*(v5 + 8 * ((242 * ((*(v4 + v6 * v3 + 40) & 1) != ((-84395462 - a1) & 0xAA316D99) - 1425)) ^ (a2 - 1523998756))))();
  }

  else
  {
    return (*(v5 + 8 * ((((*(v4 + v6 * v3 + 40) & 8) == 0) * ((a2 + a1 + 860) ^ 0x8A3)) ^ (a2 + a1 + 380))))(4294925278);
  }
}

void sub_10004085C()
{
  v4 = ((38 * (v3 ^ 0x664)) ^ 0xEC32B53F) * (*(v0 + 12) + v2) + 638095565;
  v5 = (v4 ^ 0xDD049A56) & (2 * (v4 & 0xE1A91094)) ^ v4 & 0xE1A91094;
  v6 = ((2 * (v4 ^ 0x5D569A56)) ^ 0x79FF1584) & (v4 ^ 0x5D569A56) ^ (2 * (v4 ^ 0x5D569A56)) & 0xBCFF8AC2;
  v7 = v6 ^ 0x84008A42;
  v8 = (v6 ^ 0x8EC0080) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xF3FE2B08) & v7 ^ (4 * v7) & 0xBCFF8AC0;
  v10 = (v9 ^ 0xB0FE0A00) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0xC0180C2)) ^ 0xCFF8AC20) & (v9 ^ 0xC0180C2) ^ (16 * (v9 ^ 0xC0180C2)) & 0xBCFF8AC0;
  v12 = v10 ^ 0xBCFF8AC2 ^ (v11 ^ 0x8CF88800) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x3CFF0000 ^ v12 ^ ((v12 << 16) ^ 0xAC20000) & (((v11 ^ 0x300702C2) << 8) & 0x3CFF0000 ^ 0x750000 ^ (((v11 ^ 0x300702C2) << 8) ^ 0x7F8A0000) & (v11 ^ 0x300702C2))));
  *v14 = (HIBYTE(v13) ^ 0x89) - ((2 * (HIBYTE(v13) ^ 0x89)) & 0x66) + 51;
  v14[1] = (BYTE2(v13) ^ 0xD2) - ((2 * (BYTE2(v13) ^ 0xD2)) & 0x66) + 51;
  v14[2] = (BYTE1(v13) ^ 5) - ((2 * (BYTE1(v13) ^ 5)) & 0x66) + 51;
  v14[3] = v13 ^ 0x23;
  *(v0 + 8) = *(v1 + 24);
}

uint64_t sub_100040FE8(unint64_t a1)
{
  v6 = (v1 + 1792895404) & 0x95228FDF;
  v5[33] = ((2 * v6) ^ 0xFFFFFFFFFFFFFE6CLL) + v3;
  *v5 = a1;
  return (*(v2 + 8 * (v6 ^ (((v4 > a1) << 6) | ((v4 > a1) << 10)))))();
}

uint64_t sub_100041078(uint64_t a1, int a2)
{
  v5 = ((v4 + 35) ^ 0x5096B751) + v3;
  v6 = v5 < -32118636;
  v7 = a2 + 1352056791 < v5;
  if (a2 + 1352056791 < (((v4 - 2147) | 0x488) ^ 0xFE15EC1C) != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * (((2 * v7) | (4 * v7)) ^ v4)))();
}

uint64_t sub_10004121C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, unsigned int a19)
{
  v21 = v20 + 2035085517 + (a3 ^ (a3 - 457)) + 589;
  v22 = v21 < 547 * (a3 ^ (a3 - 2)) + 2035085517;
  v23 = v21 > a19;
  if (a19 < a18 != v22)
  {
    v23 = v22;
  }

  return (*(v19 + 8 * ((35 * v23) ^ (a5 + a3 + 628))))();
}

void sub_10004145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v22 = 210068311 * ((2 * ((v21 - 144) & 0x6FC05F8) - (v21 - 144) + 2030303744) ^ 0xEBD5C5A4);
  *(v21 - 144) = v22 + v18 - 397;
  *(v21 - 136) = v20;
  *(v21 - 128) = a10;
  *(v21 - 116) = a18 + v22 + ((v18 - 1198428700) & 0x476E8DB6 ^ 0x18CE707A);
  (*(v19 + 8 * (v18 ^ 0xF69)))(v21 - 144);
  JUMPOUT(0x100020BF8);
}

uint64_t sub_100041500(void *a1)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[2]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * ((((v1 - 1985) | 0x47) ^ 0xFFFFFA73) + ((v1 - 1881686515) & 0x70283FEB))) ^ v1)))();
}

uint64_t sub_10004156C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  HIDWORD(v18) = a1 ^ a6;
  LODWORD(v18) = a1 ^ v17;
  v19 = (v10 ^ v16) + (v18 >> 27) + (*(v15 + 4 * (a2 + v11)) ^ v14) + ((v16 + (v8 ^ a8) + ((2 * v9) ^ 0xCA6) - ((2 * (v8 ^ a8)) & 0x4499A0DA) - 292) ^ a7) + 905947381;
  v20 = (v19 ^ 0x866398F0) & (2 * (v19 & 0x946318E1)) ^ v19 & 0x946318E1;
  v21 = ((2 * (v19 ^ 0x86E1A9B2)) ^ 0x250562A6) & (v19 ^ 0x86E1A9B2) ^ (2 * (v19 ^ 0x86E1A9B2)) & 0x1282B152;
  v22 = v21 ^ 0x12829151;
  v23 = (v21 ^ 0x2000) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x4A0AC54C) & v22 ^ (4 * v22) & 0x1282B150;
  v25 = (v24 ^ 0x2028140) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x10803013)) ^ 0x282B1530) & (v24 ^ 0x10803013) ^ (16 * (v24 ^ 0x10803013)) & 0x1282B150;
  v27 = v25 ^ 0x1282B153 ^ (v26 ^ 0x21100) & (v25 << 8);
  return (*(v13 + 8 * (((4 * (a2 + 1 != v12 + 64)) | (8 * (a2 + 1 != v12 + 64))) ^ v9)))(v19 ^ (2 * ((v27 << 16) & 0x12820000 ^ v27 ^ ((v27 << 16) ^ 0x31530000) & (((v26 ^ 0x1280A043) << 8) & 0x12820000 ^ 0x10020000 ^ (((v26 ^ 0x1280A043) << 8) ^ 0x2B10000) & (v26 ^ 0x1280A043)))) ^ 0x332EAA2Au);
}

uint64_t sub_100041A60@<X0>(int a1@<W3>, unsigned int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v9 = a4 + a3 - v4;
  v10 = *(v9 - 31);
  v11 = v8 + a3 - v4;
  *(v11 - 15) = *(v9 - 15);
  *(v11 - 31) = v10;
  return (*(v7 + 8 * ((1201 * (((v5 + a1) & a2 ^ v6) + v4 == 320)) ^ v5)))();
}

uint64_t sub_100041AAC@<X0>(int a1@<W8>)
{
  v7 = (a1 - 200) | 0x7B;
  v8 = 746000883 * LODWORD(STACK[0x478]) + 2133687515;
  v9 = 1388665877 * ((((v6 - 200) | 0xF7EC9647) - (v6 - 200) + ((v6 - 200) & 0x81369B8)) ^ 0x7A41F4AB);
  v5[6] = *(v2 + 224);
  v5[1] = STACK[0x230];
  v5[2] = v4;
  *(v6 - 200) = v8 ^ v9;
  *(v6 - 176) = (v1 ^ 0xFE72EF5D) - v9 + 2076147384 + ((v1 << (((a1 + 56) | 0x7B) ^ 0xFA)) & 2);
  *(v6 - 156) = (a1 - 1776823609) ^ v9;
  v5[4] = STACK[0x238];
  v10 = (*(v3 + 8 * (a1 + 2082)))(v6 - 200);
  v11 = *(v6 - 160);
  LODWORD(STACK[0x4EC]) = v11;
  return (*(v3 + 8 * (((v11 == (((v7 - 203) | 0x44) ^ 0xE8A0F08C)) * (((v7 + 1029) | 0x19) ^ 0x1DE)) ^ v7)))(v10, v4);
}

void sub_100041CE0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = (v5 - 430) | 0x84A;
  a3 = a1;
  a4 = (v5 + 713) ^ (1785193651 * ((2 * ((&a3 ^ 0xF140C0FE) & 0x36AAB074) - (&a3 ^ 0xF140C0FE) + 1230327691) ^ 0xABC96355));
  (*(v4 + 8 * (v5 ^ 0xB1A)))(&a3);
  *(v6 + 4) = v7 - *(v6 + 4) + 1526614192;
  JUMPOUT(0x10000E994);
}

uint64_t sub_100041DCC@<X0>(char a1@<W1>, int a2@<W3>, int a3@<W4>, char a4@<W5>, char a5@<W6>, _BYTE *a6@<X7>, int a7@<W8>)
{
  v12 = v8 + 16;
  v13 = (v7 + 16);
  v14 = (v12 >> (v10 - 126)) - ((v9 + 2) & a2) + a3;
  a6[12] = (a4 ^ HIBYTE(v14)) - ((2 * (a4 ^ HIBYTE(v14))) & 0x66) + 51;
  a6[13] = (a5 ^ BYTE2(v14)) - ((2 * (a5 ^ BYTE2(v14))) & 0x66) + 51;
  a6[14] = (BYTE1(v14) ^ 0xEF) - ((2 * (BYTE1(v14) ^ 0xEF)) & 0x66) + 51;
  a6[15] = v14 ^ a1;
  *(v13 - 15) ^= *a6 ^ 0x33;
  *(v13 - 14) ^= a6[1] ^ 0x33;
  *(v13 - 13) ^= a6[2] ^ 0x33;
  *(v13 - 12) ^= a6[3] ^ 0x33;
  *(v13 - 11) ^= a6[4] ^ 0x33;
  *(v13 - 10) ^= a6[5] ^ 0x33;
  *(v13 - 9) ^= a6[6] ^ 0x33;
  *(v13 - 8) ^= a6[7] ^ 0x33;
  *(v13 - 7) ^= a6[8] ^ 0x33;
  *(v13 - 6) ^= a6[9] ^ 0x33;
  *(v13 - 5) ^= a6[10] ^ 0x33;
  *(v13 - 4) ^= a6[11] ^ 0x33;
  *(v13 - 3) ^= a6[12] ^ 0x33;
  *(v13 - 2) ^= a6[13] ^ 0x33;
  *(v13 - 1) ^= a6[14] ^ 0x33;
  *v13 ^= a6[15] ^ 0x33;
  return (*(v11 + 8 * ((a7 - 220) ^ (32 * (v12 > 0x13F)))))();
}

uint64_t sub_100041DDC@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W8>)
{
  v12 = *(a4 + v6);
  v13 = v6 + 1;
  *(a5 + a6) = v12 - ((a3 ^ a2) & (2 * v12)) + 51;
  v14 = v13 + v8 < v10;
  if (v10 < v8 != v13 > v9 + 22)
  {
    v14 = v10 < v8;
  }

  return (*(v11 + 8 * ((v14 * a1) ^ v7)))();
}

uint64_t sub_100041F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  ++*(v10 + 52);
  LODWORD(STACK[0x2F0]) = *(v10 + 360);
  *(v11 + 264) += (658 * (v8 ^ 0x19Fu)) ^ 0xFFFFFFFFFFFFF3A4;
  LODWORD(STACK[0x4EC]) = a8;
  return (*(v9 + 8 * ((1601 * (*(v11 + 224) == 0)) ^ v8)))();
}

uint64_t sub_10004233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 120) = (v22 + 2098) ^ ((((v19 | (v23 - 120)) - ((v23 - 120) & v19)) ^ 0x7DEBBFE0) * v20);
  *(v23 - 112) = &a18;
  *(v23 - 104) = a15;
  v24 = (*(v18 + 8 * (v22 + 2244)))(v23 - 120);
  return (*(v18 + 8 * ((214 * (*(v23 - 116) > (v21 + v22 + 778 - 861))) ^ v22)))(v24);
}

void sub_100042450(int a1@<W8>)
{
  v2 = *(v1 + 4);
  if (v2 + 1384175427 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  *(v1 + 4) = v3 + v2;
  JUMPOUT(0x1000424A0);
}

uint64_t sub_1000424F8(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 41;
  }

  else
  {
    v2 = 40;
  }

  *(a1 + 88) = v2;
  return 0;
}

uint64_t sub_10004251C(uint64_t a1, int8x16_t *a2, uint64_t a3, int a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12)
{
  v12 = (v21 - 16) & 0xF;
  v13 = v23;
  v14.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v14.i64[1] = a10;
  v15 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*a2, *(v19 + v12 - 15)), *(v12 + v20 - 10)), *(a1 + v12 + v18 - 1550)));
  v16 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15, v15, 8uLL), a12), vmulq_s8(v14, a11)));
  *a2 = vextq_s8(v16, v16, 8uLL);
  return (*(v24 + 8 * (((a3 == 16) * a4) ^ v22)))();
}

uint64_t sub_100042568(uint64_t a1)
{
  v5 = *(v3 + 352);
  v6 = ((v4 - 1003) | 0x40C) + *(a1 + 8) + v1 - 2084092844;
  v7 = (v5 > 0x5828F169) ^ (v6 < ((v4 + 1651867662) & 0x9D8A79A6 ^ 0xA7D70FB4));
  v8 = v5 - 1479078250 > v6;
  if (v7)
  {
    v8 = v5 > 0x5828F169;
  }

  return (*(v2 + 8 * ((255 * v8) ^ v4)))();
}

uint64_t sub_100042604()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_100042714(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = (a4 ^ v12) * (**(v15 + 8) ^ v12) + (*(&a12 + v14) ^ v12);
  *(&a12 + v14) = v17 + v12 - ((a1 + 322) & (2 * v17));
  return (*(v16 + 8 * ((1223 * (v13 == 1)) ^ a6 & 0x6C3800EDu)))();
}

uint64_t sub_1000428CC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33)
{
  STACK[0x5B0] = (a1 ^ 3u) + v36;
  *(v37 - 112) = a31 + v36;
  *(v37 - 132) = (v33 - 643332360) ^ v36;
  *(v37 - 128) = a31 + v36 + 25;
  STACK[0x5C8] = (v35 + 1) - v36;
  *(v37 - 152) = v36 ^ 1;
  *(v37 - 136) = a31 + v36 - 59;
  v38 = (*(a33 + 8 * (v34 + v33 + 2353)))(v37 - 152);
  return (*(a33 + 8 * *(v37 - 108)))(v38);
}

uint64_t sub_100042984(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v12 = v10 > a1;
  if (v12 == v8 + a4 < a5)
  {
    v12 = v8 + a4 < v11;
  }

  return (*(v9 + 8 * ((!v12 * a6) ^ a8)))();
}

uint64_t sub_100042D2C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v13 = (v10 + 4 * v8);
  v14 = (((*v13 ^ v2) + HIDWORD(v4)) & ((v3 ^ 0xFCu) + v11)) + HIDWORD(v6) + v5 * (*(v9 + 4 * v8) ^ v2);
  *(v13 - 1) = v14 + v2 - (a1 & (2 * v14));
  return (*(v7 + 8 * (((v8 + 1 == a2) * v12) ^ v3)))();
}

uint64_t sub_100042D8C()
{
  if ((v1 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = -2 - v0 >= (v1 - 1);
  }

  v5 = !v4;
  return (*(v3 + 8 * ((43 * ((v5 ^ ((v2 ^ 0x6D) + 77)) & 1)) ^ v2)))();
}

uint64_t sub_100042E44@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = 392145869;
  return result;
}

uint64_t sub_100042E58()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_100042EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  v43 = *(a1 + 32) + 1785193651 * (((a1 | 0xE1E68334) - a1 + (a1 & 0x1E197CCB)) ^ 0xF23A6F14);
  v44 = 1785193651 * (v53 ^ 0x13DCEC20);
  v55 = v52;
  v54 = v43 + v44 - 562358890;
  v56 = v44 ^ 0x942D0C24;
  v45 = (*(*(&off_100374800 + (v43 ^ 6)) + (v43 ^ 0x922) - 1))(v53);
  return sub_10004911C(v45, v52, v46, 51, v47, v48, v49, v50, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_10004317C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = 50899313 * ((-2107264212 - (&a3 | 0x8265B32C) + (&a3 | 0x7D9A4CD3)) ^ 0x69B5D148);
  a3 = v5;
  a4 = v6 ^ ((v6 ^ 0xAC29234B) + 1592077666) ^ ((v6 ^ 0xBC80BD22) + 1313649417) ^ ((v6 ^ 0x9BDFFFDF) + 1762914806) ^ v8 ^ ((((v7 - 822) | 0x400) ^ 0x74899A1F) + (v6 ^ 0x86459063)) ^ 0xC569C1FD;
  a5 = v8 + v7 + 1039;
  v9 = (*(a1 + 8 * (v7 + 1471)))(&a3);
  return sub_100043270(v9);
}

uint64_t sub_100043470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x2B8]) + 8;
  v12 = (((v8 ^ 0x57B1A92E) - 1471260974) ^ ((v8 ^ 0x54033323) - 1409495843) ^ ((v8 ^ 0xEB126AF5) + 351114507)) + (((LODWORD(STACK[0x50C]) ^ 0xEDC756E3) + 305703197) ^ ((LODWORD(STACK[0x50C]) ^ 0x93C4A53B) + 1815829189) ^ ((LODWORD(STACK[0x50C]) ^ ((LODWORD(STACK[0x2B8]) - 348) | 0x164) ^ 0x96A3025C) + 1767701728)) - 784211472;
  *(STACK[0x240] + 52) = ((v12 % 0x2710) ^ 0x5FFF3FFF) + 2 * (v12 % 0x2710) - 33818628;
  v13 = STACK[0x514];
  *(v10 + 264) -= 1616;
  LODWORD(STACK[0x43C]) = v13;
  return (*(v9 + 8 * ((1325 * (v13 == a8)) ^ v11)))();
}

uint64_t sub_1000439C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v9 = *(v6 + 48 * v8 + 36);
  v11 = v9 != 1878584687 && v9 + a5 < a4;
  return (*(v7 + 8 * ((v11 * ((v5 ^ 0x5FE) + 2816)) ^ v5)))();
}

uint64_t sub_100043A64(int a1, int a2)
{
  v13 = v4 + (*(*(v12 + 8) + 4 * v6) ^ v8) - (*(*(v11 + 8) + 4 * v6) ^ (v8 + (v5 ^ v7) - 1188)) + a1;
  *(*(v2 + 8) + 4 * v6) = v13 + v8 - (v10 & (2 * v13));
  return (*(v9 + 8 * (((v6 + 1 == v3) * a2) ^ v5)))();
}

uint64_t sub_100043BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a46 == 1)
  {
    v48 = a3 + 964;
    LOBYTE(a41) = (8 * (a3 - 60 + BYTE4(a42) - ((2 * BYTE4(a42)) & 8)) - 96) ^ 0x93;
    BYTE1(a41) = (HIDWORD(a42) >> 5) ^ 0x33;
    BYTE2(a41) = (HIDWORD(a42) >> 13) ^ 0x33;
    BYTE3(a41) = (HIDWORD(a42) >> 21) ^ 0x33;
    BYTE4(a41) = ((__PAIR64__(a42, HIDWORD(a42)) >> 29) - ((2 * (__PAIR64__(a42, HIDWORD(a42)) >> 29)) & 0xC3) - 31) ^ 0xD2;
    BYTE5(a41) = (a42 >> 5) ^ 0x33;
    BYTE6(a41) = (a42 >> 13) ^ 0x33;
    v49 = v46 ^ (a42 >> 21);
    goto LABEL_5;
  }

  v47 = a3;
  if (a46 == 2)
  {
    v48 = HIDWORD(a13) & 0x9C31A3E6;
    LOBYTE(a41) = (a42 >> 21) - (((BYTE4(a13) & 0xE6) - 122) & (a42 >> 20)) + 51;
    BYTE1(a41) = (a42 >> 13) - ((a42 >> 12) & 0x66) + 51;
    BYTE2(a41) = (~(a42 >> 4) | 0x99) + (a42 >> 5) + 52;
    BYTE3(a41) = (__PAIR64__(a42, HIDWORD(a42)) >> 29) - ((2 * (__PAIR64__(a42, HIDWORD(a42)) >> 29)) & 0x66) + 51;
    BYTE4(a41) = (HIDWORD(a42) >> 21) - ((HIDWORD(a42) >> 20) & 0x66) + 51;
    BYTE5(a41) = (HIDWORD(a42) >> 13) - ((HIDWORD(a42) >> 12) & 0x66) + 51;
    BYTE6(a41) = (HIDWORD(a42) >> 5) - ((HIDWORD(a42) >> 4) & 0x66) + 51;
    LOBYTE(v49) = (8 * (BYTE4(a42) - 2 * (BYTE4(a42) & 3)) - 104) ^ 0xAB;
LABEL_5:
    v47 = (v48 - 968) | 4;
    HIBYTE(a41) = v49;
  }

  return sub_1000361EC(a3, a4, a5, a6, a7, a8, v47 + 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10004471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 40);
  *v8 = 0;
  return (*(v9 + 8 * ((2330 * (v10 == 0)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10004480C@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x31C]) - v2;
  v6 = a1 != ((v1 + 11) ^ 0x56ECE60C) && v4 == 62 * (v1 ^ 0x3D6) - 440920449;
  return (*(v3 + 8 * ((49 * v6) ^ v1)))();
}

uint64_t sub_100044898()
{
  v4 = ((v2 + 151439135) & 0xF6F935DB ^ 0x104042A4) + v3 - 440920077;
  v5 = v0 - 234766902;
  v6 = (v5 < v2 + 300037559) ^ (v4 < 0x11E23E57);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0x11E23E57;
  }

  return (*(v1 + 8 * (v7 ^ v2)))();
}

void sub_100044928(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x47DE771547DE7715;
  *(a1 + 16) = 0x73FF8C1349A075C5;
  *(a1 + 24) = -392105736;
  *v2 = a1;
  JUMPOUT(0x100034170);
}

uint64_t sub_100044964@<X0>(int a1@<W2>, unsigned int a2@<W8>)
{
  v13 = ((v7 >> (a1 ^ 0xDDu)) ^ v4) + (*(v6 + 4 * v2) ^ a2);
  v14 = (a1 + 1078) + v13 - ((2 * v13) & 0x11CAF0C80) + v9;
  *(v6 + 4 * v5) = v14 ^ v10;
  *(v6 + 4 * v2) = HIDWORD(v14) ^ v11;
  return (*(v8 + 8 * (a1 ^ ((v3 + 1 == v2) * v12))))();
}

uint64_t sub_100044A10(uint64_t a1)
{
  v3 = *(STACK[0x240] + 56);
  *(STACK[0x240] + 56) = v3 + 1;
  return (*(v1 + 8 * ((1236 * ((v2 - 192439189 + v3) < 0xFFFFFFFA)) ^ (v2 - 256))))(a1, 0, 0);
}

uint64_t sub_100044AB0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, char a5, int a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char *a12, char *a13)
{
  LODWORD(a10) = (a1 + 1237) ^ ((((&a10 | 0x188963AE) - &a10 + (&a10 & 0xE7769C50)) ^ 0xCA6FE35) * v13);
  a13 = &a6;
  a11 = a8;
  v15 = (*(v14 + 8 * (a1 + 2202)))(&a10);
  return sub_100034FD8(v15, v16, v17, v18, v19, v20, v21, v22, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_100044C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, char a47)
{
  if (a47 == 2)
  {
    return (*(v47 + 8 * (((a46 != 0) * ((a3 + 311) ^ 0x4D8)) ^ (a3 + 311))))();
  }

  if (a47 != 1)
  {
    JUMPOUT(0x100044D44);
  }

  return (*(v47 + 8 * ((51 * (((a46 == 0) ^ (a3 + 99)) & 1)) ^ (a3 + 311))))(a17);
}

uint64_t sub_100044D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v29 = &a19;
  HIDWORD(a20) = -843532609 * ((2 * (v29 & 0x7C931420) - v29 - 2090013730) ^ 0xDF21BF5B) + 1265912287 * v26 + 441172865;
  LODWORD(a21) = (v27 + 1291) ^ (843532609 * ((2 * (v29 & 0x7C931420) - v29 - 2090013730) ^ 0xDF21BF5B));
  a19 = a17;
  (*(v28 + 8 * (v27 + 1811)))(&a19);
  LODWORD(a19) = v27 + 843532609 * (((&a19 | 0x55EA1DAA) - (&a19 & 0x55EA1DAA)) ^ 0x9A7492F) + 1338;
  a22 = v25;
  a20 = a17;
  (*(v28 + 8 * (v27 + 1894)))(&a19);
  a19 = a17;
  HIDWORD(a20) = -843532609 * ((&a19 - 721488557 - 2 * (&a19 & 0xD4FEF553)) ^ 0x88B3A1D6) + 1265912287 * v24 + 441172865;
  LODWORD(a21) = (v27 + 1291) ^ (843532609 * ((&a19 - 721488557 - 2 * (&a19 & 0xD4FEF553)) ^ 0x88B3A1D6));
  (*(v28 + 8 * (v27 + 1811)))(&a19);
  v30 = 1037613739 * (&a19 ^ 0xD1022D7F);
  LODWORD(a22) = (v27 + 389) ^ v30;
  HIDWORD(a22) = (v23 ^ 0xE7DFF7D5) + v30 + ((v23 << ((v27 + 65) ^ 0x57)) & 0xCFBFEFAA) + 1055849788;
  a20 = a17;
  a21 = v22;
  v31 = (*(v28 + 8 * (v27 + 1749)))(&a19);
  return (*(v28 + 8 * ((1983 * (a19 == -392105736)) ^ v27)))(v31);
}

uint64_t sub_100045018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = (v21 + 1651) ^ (((v22 + 482914549 - 2 * ((v22 - 136) & 0x1CC8B17D)) ^ 0x4085E5F8) * v20);
  *(v22 - 128) = v17;
  *(v22 - 120) = &a17;
  v23 = (*(v18 + 8 * (v21 + 1797)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 132) > (v19 + v21 - 14 - 517)) * (v21 + 735)) ^ v21)))(v23);
}

uint64_t sub_100045124@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = *(v4 + v2 * v3 + 36);
  v9 = v7 != a1 && v7 + v6 < ((a2 - 1444887334) & 0x561F3FCFu) + 2147481538;
  return (*(v5 + 8 * ((v9 * (((a2 - 406) | 0x82) ^ 0x2C1)) ^ a2)))();
}

uint64_t sub_1000451B8(uint64_t a1, int a2)
{
  v5 = v3 < 0xDF8CD920;
  if (v5 == (v2 + 1) > 0xFFFFFFFF207326DFLL)
  {
    v5 = ((4 * a2) ^ 0xDF8CCC05uLL) + v2 < v3;
  }

  return (*(v4 + 8 * ((v5 * (((a2 - 585) | 0xD0) ^ 0x3E1)) ^ a2)))();
}

uint64_t sub_1000453E8(uint64_t a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  a2[-1] = a4;
  *a2 = a4;
  return (*(v6 + 8 * (((a3 != 0) * v5) ^ v4)))(a1, a2 + 2, a3 - 8);
}

uint64_t sub_100045410()
{
  STACK[0x2F8] = 0;
  v4 = 1388665877 * ((v3 - 200) ^ 0x8DAD62EC);
  v2[4] = 0;
  *(v3 - 184) = v4 + v0 - 1234;
  *(v3 - 180) = v4 + 452683669;
  *v2 = &STACK[0x2F8];
  v2[1] = &STACK[0x3C4];
  v5 = (*(v1 + 8 * (v0 ^ 0xC21)))(v3 - 200);
  return (*(v1 + 8 * ((231 * (*(v3 - 176) != (v0 ^ 0x401) - 392106108)) ^ v0)))(v5);
}

uint64_t sub_1000454C4(uint64_t result)
{
  **result = 0;
  *(result + 8) = 165405923;
  return result;
}

void sub_1000454E4()
{
  v0 = *(&off_100374800 + ((-39 * ((qword_1003B9018 + dword_1003B8FE8) ^ 0x42)) ^ byte_1002D2460[byte_1002CDAD0[(-39 * ((qword_1003B9018 + dword_1003B8FE8) ^ 0x42))] ^ 0xB]) - 77);
  v1 = *(v0 - 4);
  v2 = *(&off_100374800 + (byte_1002D9618[(byte_1002D54E4[(-39 * ((qword_1003B9018 + v1) ^ 0x42)) - 4] ^ 0xAB) - 8] ^ (-39 * ((qword_1003B9018 + v1) ^ 0x42))) - 118);
  v3 = 329992409 * (((*(v2 - 4) ^ v1) - &v5) ^ 0x3F921ABBB7B42942);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v6[0] = -542396526 - 1388665877 * (((v6 | 0x1A1A5330) - v6 + (v6 & 0xE5E5ACC8)) ^ 0x97B731DC);
  LOBYTE(v2) = -39 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x42);
  v4 = *(&off_100374800 + ((-39 * (dword_1003B8FE8 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * (dword_1003B8FE8 ^ 0x42 ^ qword_1003B9018))] ^ 3]) - 102) - 8;
  (*&v4[8 * (byte_1002CD9DC[(byte_1002D9718[v2 - 8] ^ 0x1E) - 12] ^ v2) + 18480])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100045794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((&a14 & 0xD9A783F1 | ~(&a14 | 0xD9A783F1)) ^ 0x387AF15B);
  a15 = v22 + v21 - 1336;
  a16 = v22 + 1850000690;
  a17 = &a11;
  a18 = v19;
  a14 = &a13;
  v23 = (*(v20 + 8 * (v21 + 916)))(&a14);
  return (*(v20 + 8 * ((60 * (((89 * (v21 ^ 0x8B)) ^ (*(v19 + 24) == v18 + ((v21 - 1322) | 0x500) - 1392)) & 1)) ^ v21)))(v23);
}

uint64_t sub_1000459D4()
{
  v4 = v3 + 575 < (v0 + 706368366);
  if (v0 + 706368366 < ((v1 - 1292) ^ v3 ^ (v1 + 553330871) & 0xDF04D3FD))
  {
    v4 = 1;
  }

  return (*(v2 + 8 * ((7 * v4) | v1)))(397);
}

void sub_100045A6C(uint64_t a1)
{
  v1 = 1388665877 * ((2 * (a1 & 0x2EF7D36D) - a1 + 1359490194) ^ 0xDCA54E7E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 436207616;
  __asm { BRAA            X10, X17 }
}

void sub_100045B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x4F0] -= 32;
  if (((a7 - 681765191) & 0x28A2E3F5 ^ 0x709F8922) == 0x709F8A57)
  {
    v7 = -392105736;
  }

  else
  {
    v7 = 392145696;
  }

  LODWORD(STACK[0x288]) = v7;
  JUMPOUT(0x100045BACLL);
}

uint64_t sub_100045C24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = (v61 - 1945288536) | 0x21408400;
  if (((a28 - v61) | (v61 - a28)) > a4 + v64 - 2)
  {
    v65 = 0x80000000;
  }

  else
  {
    v65 = 0x7FFFFFFF;
  }

  *v63 = v65;
  (*(v62 + 8 * (v61 + 2349)))(a35);
  v66 = vld1q_dup_f32(v63);
  v67 = (v64 + 1978172743) & 0xDCC9B6F4;
  v68.i64[0] = 0x8000000080000000;
  v68.i64[1] = 0x8000000080000000;
  v69.i64[0] = 0x100000001;
  v69.i64[1] = 0x100000001;
  v70.i64[0] = *(v63 + 4);
  v70.i32[2] = *(v63 + 4 * v67 - 900);
  v71 = vextq_s8(v66, v70, 0xCuLL);
  v72 = v70;
  v72.i32[3] = *(v63 + 16);
  v73 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v72, vnegq_f32(v69)), vandq_s8(v71, v68)), 1uLL), *(v63 + 1588));
  v71.i32[0] = *(&a61 + (*(v63 + 4) & 1));
  v71.i32[1] = *(&a61 + (*(v63 + 8) & 1));
  v71.i32[2] = *(&a61 + (*(v63 + 4 * v67 - 900) & 1));
  v71.i32[3] = *(&a61 + (v72.i8[12] & 1));
  *v63 = veorq_s8(vaddq_s32(vsubq_s32(v73, vandq_s8(vaddq_s32(v73, v73), vdupq_n_s32(0x46A5EEF6u))), vdupq_n_s32(0xA352F77B)), v71);
  return (*(v62 + 8 * (v64 + 1387412860)))();
}

uint64_t sub_100045E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = (a12 + v14);
  *(v17 - 1) = v16;
  *v17 = v16;
  return (*(v15 + 8 * ((((v12 & 0xFFFFFFFFFFFFFFF0) == 16) * (v13 - 302)) ^ v13)))();
}

uint64_t sub_100046064(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = -542396526 - 1388665877 * (((&a15 | 0xE105652D) + (~&a15 | 0x1EFA9AD2)) ^ 0x6CA807C0);
  v17 = (*(v16 + 18744))(&a15);
  return (*(v16 + 8 * ((11 * (a16 != -392105736)) ^ 0xB6u)))(v17);
}

uint64_t sub_1000461A4()
{
  v11 = (*(*(v9 + 8) + 4 * v1) ^ v4) + v2;
  *(*(v0 + 8) + 4 * v1) = v11 + v7 - (((v3 + 168) ^ v5) & (2 * v11));
  return (*(v8 + 8 * (((v10 <= v1 + 1) * v6) ^ v3)))();
}

void sub_1000461F4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *a1 == 0;
  v1 = *(a1 + 16) - 1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000464C4(uint64_t a1, int a2, int a3)
{
  v6 = (((a3 + 297) | 0x193) ^ 0x27CB76CDu) + v5 + a2 > v3 + 132838089;
  if ((v3 + 132838089) < 0x27CB7356 != (v5 + a2) > 0xD8348CA9)
  {
    v6 = (v5 + a2) > 0xD8348CA9;
  }

  return (*(v4 + 8 * ((!v6 * ((a3 - 438) ^ 0x108)) ^ a3)))();
}

uint64_t sub_10004654C@<X0>(int8x16_t *a1@<X6>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (a7 + a2);
  v11 = vaddq_s8(vsubq_s8(a1[1], vandq_s8(vaddq_s8(a1[1], a1[1]), a3)), a4);
  v10[-1] = vaddq_s8(vsubq_s8(*a1, vandq_s8(vaddq_s8(*a1, *a1), a3)), a4);
  *v10 = v11;
  return (*(v9 + 8 * ((((v8 & 0x60) == 32) * (((v7 - 697) | 0x500) ^ 0x1F1)) ^ v7)))();
}

uint64_t sub_1000465B8(unint64_t a1)
{
  *(v3 + 1424) = 0;
  memset((v3 + 1432), 51, 104);
  *(a1 + 96) = v3;
  STACK[0x328] = a1 + 96;
  *(v3 + 476) = 1;
  *(v4 + 360) = *(v2 + 8 * v1);
  STACK[0x248] = a1;
  return sub_100022188(*(v4 + 264));
}

uint64_t sub_1000466C0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v57 = v51 + a1;
  *(v56 - 200) = (v51 - 1589188108) ^ ((((v56 - 200) & 0x95975B8 | ~((v56 - 200) | 0x95975B8)) ^ 0xE57A6667) * v55);
  (*(v53 + 8 * (v51 ^ 0x175FA207)))(v56 - 200);
  *v54 = (v57 | 0x70) - ((2 * ((v56 + 56) & 0x80) - (v56 + 56) + 121) ^ 0x59) * v55 + (((v52 - v51) | (v51 - v52)) >> 31) - 30;
  *(v56 - 196) = (v57 + 2056) ^ (((2 * ((v56 - 200) & 0x21EA1780) - (v56 - 200) + 1578494073) ^ 0x4DC90459) * v55);
  *(v54 + 16) = a50;
  *(v54 + 24) = a51;
  v58 = (*(v53 + 8 * (v51 ^ 0x175FA27E)))(v56 - 200);
  return sub_10002C994(v58, 0);
}

uint64_t sub_1000467B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) - 262618987;
  v4 = *(a1 + 12) - 233128131;
  v5 = v3 < 0x39F93652;
  v6 = v3 > v4;
  if (v5 != v4 < 0x39F93652)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((v6 * ((2 * ((v2 + 500) ^ 0x267) - 1876411043) & 0x6FD7CAF7 ^ 0x87C)) ^ (v2 + 500))))();
}

void sub_100046914()
{
  v1 = *(v0 + 96);
  if (v1 == 1)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 68);
    *(v0 + 56) = (8 * ((~(v5 << (LODWORD(STACK[0x2B8]) ^ 0x75)) | 7) + v5) - 24) ^ 0xD3;
    *(v0 + 57) = (v5 >> 5) ^ 0x33;
    *(v0 + 58) = (v5 >> 13) ^ 0x33;
    *(v0 + 59) = (v5 >> 21) ^ 0x33;
    *(v0 + 60) = ((__PAIR64__(v6, v5) >> 29) - ((2 * (__PAIR64__(v6, v5) >> 29)) & 0x7A) + 61) ^ 0xE;
    *(v0 + 61) = (v6 >> 5) ^ 0x33;
    *(v0 + 62) = (v6 >> 13) ^ 0x33;
    v4 = (v6 >> 21) ^ 0x33;
  }

  else
  {
    if (v1 != 2)
    {
      goto LABEL_6;
    }

    v2 = LODWORD(STACK[0x2B8]) ^ 0x9A8;
    v4 = *(v0 + 64);
    v3 = *(v0 + 68);
    *(v0 + 56) = (v4 >> 21) - ((v4 >> 20) & 0x66) + 51;
    *(v0 + 57) = (v4 >> 13) - ((v4 >> 13 << (v2 + 37)) & 0x66) + 51;
    *(v0 + 58) = (v4 >> 5) - ((v4 >> 4) & 0x66) + 51;
    *(v0 + 59) = (__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0x66) + 51;
    *(v0 + 60) = (~(v3 >> 20) | 0x99) + (v3 >> 21) + 52;
    *(v0 + 61) = (v3 >> 13) - ((v3 >> 12) & 0x66) + 51;
    *(v0 + 62) = (v3 >> 5) - ((v3 >> 4) & 0x66) + 51;
    LOBYTE(v4) = (8 * (v3 - ((2 * v3) & 0x1A)) - 24) ^ 0xDB;
  }

  *(v0 + 63) = v4;
LABEL_6:
  JUMPOUT(0x100046AB4);
}

uint64_t sub_100046B04@<X0>(int a1@<W2>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x4E8]) = v5;
  v6 = ((v2 - 838910931) & 0x3200C176 ^ 0xDC972D93) + v5;
  v8 = v6 > -1176800719 && v6 < SLODWORD(STACK[0x258]);
  return (*(v4 + 8 * ((1565 * v8) ^ v2)))();
}

uint64_t sub_100046BFC@<X0>(unint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v15 = (*(a2 + 4 * a5) ^ v5) + (v7 ^ HIDWORD(a1));
  v16 = v15 - (a3 & (2 * v15)) + a4;
  *(a2 + 4 * v8) = v16 ^ ((v14 ^ 0x3FD) + v9);
  *(a2 + 4 * a5) = (v16 >> (((v14 - 59) | 1u) ^ v10)) ^ v12;
  return (*(v11 + 8 * (v14 ^ ((v6 + 1 == a5) * v13))))();
}

uint64_t sub_100046C64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x66) + 51;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((88 * v4) ^ 0x43Du)))(0);
}

uint64_t sub_100046CB4()
{
  v3 = *(v0 + 16) + 196091033 + ((v2 + 1107) | 0xC1);
  v4 = *(v0 + 12) + 225584140;
  v5 = (v4 < 0x55509B21) ^ (v3 < 0x55509B21);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x55509B21;
  }

  return (*(v1 + 8 * ((1456 * v6) ^ v2)))();
}

void sub_100046D2C(uint64_t a1)
{
  v2 = *(&off_100374800 + ((-39 * (dword_1003B90D8 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002D2460[byte_1002CDAD0[(-39 * (dword_1003B90D8 ^ 0x42 ^ qword_1003B9018))] ^ 0xDF]) - 84);
  v3 = *(v2 - 4);
  v4 = *(&off_100374800 + (byte_1002D9610[byte_1002D54E0[(-39 * (v3 ^ qword_1003B9018 ^ 0x42))] ^ 0xE8] ^ (-39 * (v3 ^ qword_1003B9018 ^ 0x42))) - 179);
  v5 = v3 ^ &v9 ^ *(v4 - 4);
  v6 = 329992409 * v5 - 0x3B9C76CF2798770ELL;
  v7 = 329992409 * (v5 ^ 0x3F921ABBB7B42942);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_100374800 + ((-39 * (dword_1003B90D8 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002D2460[byte_1002CDAD0[(-39 * (dword_1003B90D8 ^ 0x42 ^ qword_1003B9018))] ^ 0xB]) - 116) - 8;
  (*&v8[8 * ((-39 * (v4 ^ 0x42 ^ v7)) ^ byte_1002D9610[byte_1002D54E0[(-39 * (v4 ^ 0x42 ^ v7))] ^ 0x7D]) + 18208])(*(&off_100374800 + (byte_1002D2464[(byte_1002CDAD0[(-39 * ((v7 - v4) ^ 0x42))] ^ 0xB) - 4] ^ (-39 * ((v7 - v4) ^ 0x42))) - 73) - 4, sub_10002EAF4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100046F0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_100046F24@<X0>(char a1@<W2>, int a2@<W8>)
{
  v8 = v6 + v5;
  v9 = (a1 + v5) & 0xF;
  v10 = v9 + 1 - v5;
  v11 = v2 + v10;
  v12 = v2 + v9 + 1;
  v13 = v4 + v10;
  v14 = v4 + v9 + 1;
  v15 = v3 - v5 + v9 + 2;
  v16 = v3 + v9 + ((334 * (a2 ^ 0x569u)) ^ 0x53ALL);
  v18 = v12 > v6 && v11 < v8;
  v20 = v14 > v6 && v13 < v8 || v18;
  if (v16 <= v6 || v15 >= v8)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  return (*(v7 + 8 * ((27 * (v22 ^ 1)) ^ a2)))(a2 ^ 0x3E9u);
}

uint64_t sub_100047070(uint64_t a1)
{
  v1 = *a1 ^ (1082434553 * ((a1 - 587035644 - 2 * (a1 & 0xDD028C04)) ^ 0x46457A8E));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6 = v1 + 875954120 - 1361651671 * ((-1563632031 - (&v5 | 0xA2CCDE61) + (&v5 | 0x5D33219E)) ^ 0x8E11D112) + 2191;
  v5 = v3;
  v7 = v2;
  return (*(*(&off_100374800 + v1 + 875954120) + (v1 ^ 0xCBCA0924) - 1))(&v5);
}

uint64_t sub_100047184(_DWORD *a1)
{
  v1 = a1[3] + 2066391179 * ((-2078713933 - (a1 | 0x841957B3) + (a1 | 0x7BE6A84C)) ^ 0xD4C12A54) - 1363;
  v2 = v1 + *(*a1 + 4);
  v4 = v2 - 763308428;
  v3 = (v2 - 763308428) < 0;
  v5 = 763308428 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_100374800 + (v1 - 175)) + (((((v1 ^ 0x2F ^ (v5 > 0)) & 1) == 0) * (v1 ^ 0xE0)) ^ v1) - 1))();
}

uint64_t sub_10004726C@<X0>(int a1@<W0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v8 = v5 - 1;
  *(a5 + v8) = *(a4 + v8) - ((*(a4 + v8) << (((v6 + a2) & a3) - 48)) & 0x66) + 51;
  return (*(v7 + 8 * (((v8 == 0) * a1) ^ v6)))();
}

uint64_t sub_1000472BC@<X0>(int a1@<W8>)
{
  if ((a1 - 1190407904) <= 0x10 && ((1 << (a1 + 32)) & 0x18105) != 0)
  {
    return (*(v2 + 8 * ((((((*(v1 + 48 * v3 + 40) & 1) == 0) ^ (v4 + 99) ^ 0xD5) & 1) * (((v4 + 231852387) | 0x81) - 198)) | (v4 + 231853599))))();
  }

  else
  {
    return sub_1000472F8();
  }
}

uint64_t sub_100047398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = (*(v48 + 8 * (v49 ^ 0xDEB)))(1576, 0x105004009637391);
  STACK[0x4E0] = v50;
  return (*(v48 + 8 * (((v50 == 0) * (((v49 - 905) ^ 0xFFFFFFBE) + (v49 ^ 0x5CC))) ^ v49)))(v50, v51, v52, v53, 392145697, v54, v55, 3902861560, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1000476BC@<X0>(uint64_t a1@<X8>)
{
  v7 = LODWORD(STACK[0x478]) - ((v3 + 1512307836) & (2 * LODWORD(STACK[0x478]))) - 1391329625;
  v8 = 1785193651 * ((((v6 - 200) | 0x938EC8BA) - (v6 - 200) + ((v6 - 200) & 0x6C713740)) ^ 0x8052249A);
  v5[5] = a1;
  v5[3] = STACK[0x238];
  *(v6 - 168) = v8 + v1 - ((((2 * v3) ^ 0x1D0) - 112) & (2 * v1)) + 1563227050;
  *(v6 - 184) = v8 + 1421512303 + v3;
  v9 = STACK[0x230];
  *v5 = v4;
  v5[1] = v9;
  *(v6 - 148) = v7 ^ v8;
  v10 = (*(v2 + 8 * (v3 + 2215)))(v6 - 200);
  v11 = *(v6 - 152);
  LODWORD(STACK[0x4EC]) = v11;
  return (*(v2 + 8 * ((41 * (v11 != -392105736)) | v3)))(v10, v4);
}

void sub_10004781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = (((a15 ^ 0x5369144E) - 1399395406) ^ ((a15 ^ 0x7F8ECB79) - 2140064633) ^ ((a15 ^ 0x8EAB0F5A) + 1901392038)) + (((v16 ^ 0x24A47B24) - 614759204) ^ ((v16 ^ 0x27F4DB3A) - 670358330) ^ ((v16 ^ 0xA11C7073) - 214058977 + ((v15 + 1210127136) | 0x2384C06A))) + 1469849811;
  *(v17 - 132) = v18 ^ ((v18 ^ 0xCF837F79) + 595525504) ^ ((v18 ^ 0xE6E4BC3F) + 169425978) ^ ((v18 ^ 0x45826340) - 1451236537) ^ ((v18 ^ 0x7FE7DFFF) - 1826988038) ^ 0xB14EAF94;
  JUMPOUT(0x100020530);
}

void sub_100047998(uint64_t a1)
{
  v1 = *a1 ^ (843532609 * ((((2 * a1) | 0x4B562ACC) - a1 - 631969126) ^ 0x79E641E3));
  v2 = *(a1 + 24);
  if (*(v2 + 4) - 763308221 >= 0)
  {
    v3 = *(v2 + 4) - 763308221;
  }

  else
  {
    v3 = 763308221 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 763308221 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 763308221;
  }

  else
  {
    v4 = 763308221 - *(*(a1 + 8) + 4);
  }

  v7[1] = v1 + 1564307779 * ((2 * (v7 & 0x1BBD07B8) - v7 - 465373113) ^ 0x734F3454) - 108;
  v8 = v2;
  v5 = *(&off_100374800 + (v1 ^ 0x119)) - 8;
  (*&v5[8 * v1 + 16576])(v7);
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

uint64_t sub_100047B10@<X0>(int a1@<W1>, char a2@<W8>, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + (a2 & 0x3F));
  *(v8 - 1) = v7;
  *v8 = v7;
  return (*(v6 + 8 * ((((v5 ^ 0x5A8u) - 1354 - 402 == (v4 & 0x30)) * a1) ^ v5 ^ 0x5A8)))();
}

void sub_100047DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  a17 = a12;
  a15 = 0;
  a19 = v21 - 1785193651 * ((((2 * &a15) | 0x1B55EE9C) - &a15 - 229308238) ^ 0x1E761B6E) + v19 + 156;
  (*(v20 + 8 * (v19 ^ v22)))(&a15);
  JUMPOUT(0x1000127B0);
}

uint64_t sub_100047E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v28 = &a17;
  HIDWORD(a18) = -843532609 * ((-316976357 - (v28 | 0xED1B531B) + (v28 | 0x12E4ACE4)) ^ 0x4EA9F861) + 1265912287 * v25 + 441172865;
  LODWORD(a19) = (v26 - 53) ^ (843532609 * ((-316976357 - (v28 | 0xED1B531B) + (v28 | 0x12E4ACE4)) ^ 0x4EA9F861));
  a17 = a16;
  (*(v27 + 8 * (v26 + 467)))(&a17);
  a17 = a16;
  HIDWORD(a18) = -843532609 * ((((2 * &a17) | 0x3AEF1218) - &a17 - 494373132) ^ 0x413ADD89) + 1265912287 * v24 + 441172865;
  LODWORD(a19) = (v26 - 53) ^ (843532609 * ((((2 * &a17) | 0x3AEF1218) - &a17 - 494373132) ^ 0x413ADD89));
  (*(v27 + 8 * (v26 + 467)))(&a17);
  v29 = 1037613739 * ((1430287145 - (&a17 | 0x55407329) + (&a17 | 0xAABF8CD6)) ^ 0x7BBDA1A9);
  a18 = a16;
  a19 = v22;
  a20 = (v26 - 955) ^ v29;
  a21 = (v23 ^ 0xB7DFFFD7) + ((v23 << (((v26 - 92) & 0x1F) - 24)) & 0x6FBFFFAE) + 1861154106 + v29;
  (*(v27 + 8 * (v26 ^ 0xFBF)))(&a17);
  v30 = 1037613739 * (((&a17 | 0x72AE5E6B) + (~&a17 | 0x8D51A194)) ^ 0xA3AC7315);
  a20 = (v26 - 955) ^ v30;
  a21 = (v21 ^ 0x37DFF531) + ((2 * v21) & 0x6FBFEA62) - 286326816 + v30;
  a18 = a16;
  a19 = a12;
  (*(v27 + 8 * (v26 + 405)))(&a17);
  v31 = -843532609 * ((2 * (&a17 & 0xE9D6A98) - &a17 + 1902286182) ^ 0x2D2FC1E3) + 1265912287 * *a11 + 441172865;
  a17 = a16;
  HIDWORD(a18) = v31;
  LODWORD(a19) = (v26 - 53) ^ (843532609 * ((2 * (&a17 & 0xE9D6A98) - &a17 + 1902286182) ^ 0x2D2FC1E3));
  v32 = (*(v27 + 8 * (v26 + 467)))(&a17);
  return (*(v27 + 8 * ((236 * (a18 == -392105736)) ^ v26)))(v32);
}

uint64_t sub_1000481B8()
{
  LODWORD(STACK[0x4E8]) = v0;
  *(v1 + 264) -= 432;
  return (*(v1 + 360))();
}

uint64_t sub_1000481DC@<X0>(int a1@<W8>)
{
  v3 = a1 - 161;
  v4 = (v1 ^ 0xE8A0F0F8) != (((v1 ^ 0xE8A0F0F8) << (((v3 ^ 0x95) - 88) ^ v3 ^ 0x2C)) & 0x5C912AA2);
  return (*(v2 + 8 * ((v4 | (32 * v4)) ^ v3)))();
}

uint64_t sub_1000482F4@<X0>(int a1@<W8>)
{
  v5 = 1785193651 * (((v4 - 128) & 0xEA2F7FCF | ~((v4 - 128) | 0xEA2F7FCF)) ^ 0x60C6C10);
  *(v4 - 124) = v5 - 562359769 + v3;
  *(v4 - 120) = v4 - 228;
  *(v4 - 112) = (a1 - ((v3 + 676992183) & (2 * a1)) - 1808987098) ^ v5;
  v6 = (*(v1 + 8 * (v3 + 1391)))(v4 - 128);
  return (*(v1 + 8 * ((2002 * (*v2 + (*(v4 - 160) & 0x3F) + (((v3 + 813) | 0x115) ^ 0x8885E89B) < 0xFFFFFFC0)) ^ v3)))(v6, 2498662708);
}

void sub_100048840()
{
  v3 = *(v2 + 392);
  v4 = 1785193651 * ((((2 * (v1 - 200)) | 0x44D2CAB4) - (v1 - 200) + 1570151078) ^ 0xB1B5897A);
  *(v1 - 184) = v4 ^ 0x942D0C24;
  *(v1 - 196) = v0 - 562358948 + v4 + 26;
  *(v1 - 192) = v3;
  JUMPOUT(0x10000E368);
}

uint64_t sub_100048990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF93DLL ^ v4 ^ 0x269u) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * (((32 * ((v2 & 0xFFFFFFF8) - 8 == v3)) | (((v2 & 0xFFFFFFF8) - 8 == v3) << 6)) ^ v4)))();
}

uint64_t sub_100048C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + a1) = *(a2 + a1);
  v7 = v3 == a1;
  v8 = a1 + 8;
  v9 = !v7;
  return (*(v6 + 8 * ((v9 * v5) ^ v2)))(v8);
}

uint64_t sub_10004933C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _DWORD *a7)
{
  v10 = a1 - 3;
  v11 = 50899313 * ((2 * ((v9 - 128) & 0x6B3E8EC8) - (v9 - 128) - 1799261902) ^ 0x80EEECA9);
  v12 = (*a7 ^ (a1 - 112820962)) * *(*(a4 + 32) + 16);
  *(v9 - 120) = (v12 ^ 0x7B6FDBBF) - v11 + ((2 * v12) & 0xF6DFB77E) - 1342575130;
  *(v9 - 112) = a5;
  *(v9 - 104) = &a6;
  *(v9 - 128) = v10 - v11 + 775;
  *(v9 - 124) = v11 ^ 0x2D7F28BD;
  v13 = (*(v7 + 8 * (v10 + 1797)))(v9 - 128);
  return (*(v7 + 8 * (((v8 != 1) | (4 * (v8 != 1))) ^ v10)))(v13);
}

uint64_t sub_100049454@<X0>(int a1@<W8>)
{
  v9 = v2 + 2;
  v10 = (v3 - 2);
  *v10 = (v5 ^ v6 ^ v9) * (v9 + 17);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v8 + 8 * (((v4 != 2) * v7) ^ a1)))();
}

uint64_t sub_100049464(uint64_t a1, int a2)
{
  v11.val[0].i64[0] = (v6 - v7 - 1) & 0xF;
  v11.val[0].i64[1] = (v6 - v7 + 14) & 0xF;
  v11.val[1].i64[0] = (v6 - v7 + 13) & 0xF;
  v11.val[1].i64[1] = (v6 - v7 + 12) & 0xF;
  v11.val[2].i64[0] = (v6 - v7 + 11) & 0xF;
  v11.val[2].i64[1] = (v6 - v7 + 10) & 0xF;
  v11.val[3].i64[0] = (v6 - v7 + a2 + 49) & 0xF;
  v11.val[3].i64[1] = (v6 - v7) & 0xF ^ 8;
  *(v8 + -8 - v7 + v6) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v2 + -8 - v7 + v6), *(v4 + v11.val[0].i64[0] - 7)), veor_s8(*(v11.val[0].i64[0] + v3 - 2), *(v11.val[0].i64[0] + v5 - 5)))), 0x3333333333333333), vmul_s8(*&vqtbl4q_s8(v11, xmmword_1002D9820), 0x5959595959595959)));
  return (*(v9 + 8 * ((222 * (8 - (v6 & 0x18) == -v7)) ^ a2)))(xmmword_1002D9820);
}

void sub_100049640()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x100049650);
}

uint64_t sub_10004970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  HIDWORD(v31) = HIDWORD(a15) + 1566774765;
  LODWORD(v31) = 2035086611;
  v29.i64[0] = 0x3333333333333333;
  v29.i64[1] = 0x3333333333333333;
  LODWORD(a21) = (a3 + 1122973483) & 0x17E727F3;
  HIDWORD(a20) = 718 * (a21 ^ 0x160) - 1405531513;
  return sub_100015894(v29, vdupq_n_s32(0x68A0F0FFu), vdupq_n_s32(0xE8A0F0F8), a1, 2770969154, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a2 + a13, v31, a19, a20, a21, v28 - 16, a23, a24, a25, a26, a27, a28);
}

_DWORD *sub_1000498CC()
{
  v5 = 210068311 * (((~(v4 - 144) & 0x72EA49A6) - (~(v4 - 144) | 0x72EA49A7)) ^ 0xE03C7603);
  *(v4 - 116) = v5 + v0 + ((30 * (v3 ^ 0x2E8)) ^ 0xEA562E8D);
  *(v4 - 144) = v5 + v3 + 424;
  *(v4 - 136) = v1;
  *(v4 - 128) = v7;
  (*(v2 + 8 * (v3 + 1676)))(v4 - 144);
  result = v10;
  *v9 = v8;
  *v10 = -392105736;
  return result;
}

uint64_t sub_1000499F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v30 - 120) = (v26 + 554) ^ (((((2 * (v30 - 144)) | 0x3C380F2) - (v30 - 144) + 2115911559) ^ 0x923D2C59) * v25);
  *(v30 - 112) = &a25;
  *(v30 - 104) = v28;
  *(v30 - 144) = &a25;
  *(v30 - 136) = &a21;
  *(v30 - 128) = v29;
  v31 = (*(v27 + 8 * (v26 ^ 0x82Cu)))(v30 - 144);
  return (*(v27 + 8 * ((((a11 - 2054041575) > 0x7FFFFFFE) | (8 * ((a11 - 2054041575) > 0x7FFFFFFE))) ^ (((v26 + 108) | 0x20C) - 396))))(v31);
}

uint64_t sub_100049B1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v12 - 156);
  if (v13 == 2)
  {
    v15 = *(v12 - 160) != ((a3 + 1214121380) & 0x12785CFE) - 1254;
    return (*(v11 + 8 * (((32 * v15) | (v15 << 9)) ^ (a3 + a5))))(a11);
  }

  else
  {
    if (v13 != 1)
    {
      JUMPOUT(0x100049C10);
    }

    return (*(v11 + 8 * (((*(v12 - 160) == 0) ^ (a3 + a5 + 1)) & 1 ^ (a3 + a5))))(a11);
  }
}

uint64_t sub_100049CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, unsigned int a22, uint64_t a23, char *a24, char *a25)
{
  a23 = a20;
  a24 = &a15;
  a25 = &a17;
  a22 = v25 - 143681137 * ((&a21 - 397790356 - 2 * (&a21 & 0xE84A336C)) ^ 0x8912B8BC) + 750;
  v27 = (*(v26 + 8 * (v25 ^ 0x82E)))(&a21);
  return (*(v26 + 8 * ((((v25 + 588) ^ 0x2F) * (a11 == a10)) ^ v25)))(v27);
}

uint64_t sub_100049D8C(uint64_t a1, int a2)
{
  v5 = (a2 ^ 0x710927D0) + v2;
  v6 = v4 - 1891128809 > v5;
  if (v4 - 1891128809 < (a2 ^ 0xF1Du) - 1863739200 != v5 < 0x90E9A12D)
  {
    v6 = v4 - 1891128809 < (a2 ^ 0xF1Du) - 1863739200;
  }

  return (*(v3 + 8 * ((198 * v6) ^ a2)))();
}

uint64_t sub_100049E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v40 = (*(v37 + 8 * (v36 ^ 0xC6C)))(v39 + 4, 0);
  v41 = v39[4] + 22927718 - ((2 * v39[4]) & 0x2BBB2CC);
  v39[1] = v39[6] + 22927718 - ((2 * v39[6]) & 0x2BBB2CC);
  v39[2] = v41;
  v42 = (*(v37 + 8 * (v36 ^ 0xC44)))(v40);
  v39[3] = v42 + 22927718 - ((v42 << ((v36 ^ 0xE2) + v38)) & 0x2BBB2CC);
  v43 = (*(v37 + 8 * (v36 + 964)))();
  *v39 = v43 + 22927718 - ((2 * v43) & 0x2BBB2CC);
  LODWORD(a35) = a36 + 1;
  return sub_100049ED4(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_100049ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v47 = *(v45 + 4 * (v41 - 1));
  v48 = 1664525 * (((v47 ^ (v47 >> 30) ^ 0xC5534E8C) + 1887465515) ^ ((v47 ^ (v47 >> 30) ^ 0xF8B84B6) - 1168590319) ^ ((v47 ^ (v47 >> 30) ^ 0xCAD8CA3A) + 2131489949)) + 2118306107;
  *(v45 + 4 * v41) = (*(v44 + 4 * v43) ^ 0x15DD966) + v43 + ((*(v45 + 4 * v41) - ((2 * *(v45 + 4 * v41)) & 0x722BA986) - 1189751613) ^ v48 ^ ((v48 ^ 0x96755BD0) + 1791501722) ^ ((v48 ^ 0xC48BC113) + 943112027) ^ ((v48 ^ 0xAE46F582) + 1392217036) ^ ((v48 ^ 0xFFFAEEF7) + 55021759) ^ 0xBA575575);
  STACK[0x5C8] = v41 + 1 - a39;
  *(v46 - 112) = -1695099416 - a39 + v42;
  *(v46 - 132) = v42 - 477098545 - a39;
  *(v46 - 128) = -a39;
  *(v46 - 144) = ((v42 - 477098545) & 0xFFDDFB6B) + a39;
  *(v46 - 136) = v42 - 477098545 - a39 - 110;
  STACK[0x5A8] = a37;
  v49 = (*(a40 + 8 * (v42 ^ (v40 + 2361))))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 140)))(v49);
}

uint64_t sub_10004A098()
{
  v6 = *(v9 + 16);
  v7 = 143681137 * ((((v5 - 144) | 0x95C428ED) + (~(v5 - 144) | 0x6A3BD712)) ^ 0xF49CA33C);
  *(v5 - 136) = v10;
  *(v5 - 128) = v7 + v3 + 222;
  *(v5 - 144) = v7 ^ 0x46F03C83;
  (*(v2 + 8 * (v3 ^ 0xC7B)))(v5 - 144);
  *(v5 - 144) = v4;
  *(v5 - 136) = v10;
  *(v5 - 128) = v0;
  *(v5 - 120) = (v3 - 470) ^ (1785193651 * ((2 * ((v5 - 144) & 0x3A0A8638) - (v5 - 144) + 1173715394) ^ 0x562995E2));
  *(v5 - 112) = v4;
  *(v5 - 104) = v1;
  (*(v2 + 8 * (v3 + 996)))(v5 - 144);
  *(v5 - 144) = v4;
  *(v5 - 136) = (v3 - 63) ^ (1785193651 * ((v5 - 1673515695 - 2 * ((v5 - 144) & 0x9C402DE1)) ^ 0x8F9CC1C1));
  *(v5 - 128) = v6;
  return (*(v2 + 8 * (v3 ^ 0xC02)))(v5 - 144);
}

uint64_t sub_10004A298(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v28 + a1 + 2386)))(a17 + 0x40018400054880D1, 0x100004077774924);
  v31 = (*(v29 + 18544))();
  *v30 = v31;
  return sub_10004A374(v31, 750730724, 3544237906, 2780539430, 1514427866, 488325080, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_10004A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, int *a19)
{
  a19 = &a14;
  a17 = a12;
  a16 = (v19 - 379) ^ (50899313 * (((&a16 | 0xDE189124) - (&a16 & 0xDE189124)) ^ 0xCA370CBF));
  v22 = (*(v20 + 8 * (v19 + 586)))(&a16);
  return (*(v20 + 8 * (((a14 == ((v19 - 1713379060) ^ 0x18828B20) + 1732480033) * (((v19 - 1713379060) & 0x817D74DF) + v21)) ^ v19)))(v22);
}

uint64_t sub_10004A588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33)
{
  *a33 = v33;
  v39 = ((v36 ^ (v36 >> 11)) << 7) & 0x9D2C5680 ^ v36 ^ (v36 >> 11);
  v40 = (v39 << ((v34 + a9 - 47) ^ (a9 + 116))) & v37 ^ v39;
  *(*a28 + v35) ^= v40 ^ (v40 >> 18);
  return (*(v38 + 8 * ((a9 | 0x3A0) ^ (8 * (v35 < 0x1FC)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_10004A89C@<X0>(int a1@<W8>, __int16 a2, char a3, char a4, char a5, __int16 a6, char a7, uint64_t a8, int a9, char *a10, char *a11, char *a12, char a13, unsigned int a14, int a15)
{
  v18 = 742307843 * ((((2 * &a8) | 0x8A6AB6C8) - &a8 + 986358940) ^ 0xDB17D631);
  a8 = *(v15 + 32);
  a10 = &a5;
  a14 = (((a1 ^ 0x1757E073) - 391635059) ^ ((a1 ^ 0xB0A808ED) + 1331164947) ^ ((a1 ^ 0xBC048F0D) + v17 + 382 + 1140551378)) - v18 + 667363276;
  a15 = v17 - v18 - 473373827;
  a11 = &a7;
  a12 = &a4;
  a13 = (3 * ((((2 * &a8) | 0xC8) - &a8 - 100) ^ 0x31)) ^ 0x61;
  v19 = (*(v16 + 8 * (v17 + 2255)))(&a8);
  return (*(v16 + 8 * ((2265 * (a9 == -392105736)) ^ v17)))(v19);
}

uint64_t sub_10004AA10@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = ((v6 + v4) & v5 ^ a1) + v3;
  *(v8 + v9) = *(a3 + v9);
  return (*(v7 + 8 * (((v9 == 0) * a2) ^ v6)))();
}

uint64_t sub_10004AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = v7 - 1;
  *(a5 + v10) = *(v6 + v10);
  return (*(v9 + 8 * ((3790 * (v10 == ((v8 + 1966528404) & 0x5C47E77E) - 844)) ^ (a6 + v8 + 1463))))();
}

void sub_10004AAF8(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = v9 - 1115;
  v11 = (v7 ^ 0x3AC20CEF) & (2 * (v7 & (v8 + 1))) ^ v7 & (v8 + 1);
  v12 = ((2 * (v7 ^ 0x3AC29471)) ^ 0x1481B57C) & (v7 ^ 0x3AC29471) ^ (2 * (v7 ^ 0x3AC29471)) & 0x8A40DABE;
  v13 = ((4 * (v12 ^ (v9 + 927422468) & 0xC8B8A7FB ^ 0x8A404D79)) ^ 0x29036AF8) & (v12 ^ (v9 + 927422468) & 0xC8B8A7FB ^ 0x8A404D79) ^ (4 * (v12 ^ (v9 + 927422468) & 0xC8B8A7FB ^ 0x8A404D79)) & 0x8A40DABC;
  v14 = (v13 ^ 0x8004AB0) & (16 * ((v12 ^ 0x84010BC) & (4 * v11) ^ v11)) ^ (v12 ^ 0x84010BC) & (4 * v11) ^ v11;
  v15 = ((16 * (v13 ^ 0x82409006)) ^ 0xA40DABE0) & (v13 ^ 0x82409006) ^ (16 * (v13 ^ 0x82409006)) & 0x8A40DAB0;
  v16 = v14 ^ 0x8A40DABE ^ (v15 ^ 0x80008A00) & (v14 << 8);
  v17 = ((&a3 - 1688391011 - 2 * (&a3 & 0x9B5D329D)) ^ 0x4A5F1FE2) * v6;
  a3 = v7 ^ v17 ^ (2 * ((v16 << 16) & 0xA400000 ^ v16 ^ ((v16 << 16) ^ 0x5ABE0000) & (((v15 ^ 0xA40501E) << 8) & 0xA400000 ^ 0xA000000 ^ (((v15 ^ 0xA40501E) << 8) ^ 0x40DA0000) & (v15 ^ 0xA40501E)))) ^ 0x2C61DF4A;
  a4 = (v10 + 60) ^ v17;
  a5 = a1;
  (*(v5 + 8 * (v10 ^ 0xAC1)))(&a3);
  JUMPOUT(0x10003F9FCLL);
}

uint64_t sub_10004AD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 709;
  v6 = ((v5 - 421670011) & 0x19222F37) - 1074 + a2;
  v7 = *(v4 + v6 - 15);
  v8 = *(v4 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v3 + 8 * ((998 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v5 + 131))))();
}

uint64_t sub_10004AD98@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 2)
  {
    v56 = (v46 + v48 + 1201658629);
    v57 = ((*v56 ^ v51) << ((-109 * ((3 * BYTE4(a26)) ^ 0x16)) ^ 0x1D)) + ((v56[1] ^ v51) << 16) + ((v56[2] ^ v51) << 8);
    *v50 = v57 + (v56[3] ^ v51) + v52 - 2 * ((v57 + (v56[3] ^ v51)) & 0x68A0F0FF ^ (v56[3] ^ v51) & 7);
    v58 = *(v47 + 8 * ((261 * ((v48 + 1201658633) < 0x40)) ^ (3 * HIDWORD(a26))));
    return v58((147 * ((3 * HIDWORD(a26)) ^ 0x416)) ^ 0x41Du, 1201658633, v49 + 16, v58, 2684354560, 4294901760, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else if (a45 == 1)
  {
    v53 = (a1 + 655);
    v54 = *(v46 + (v53 ^ (v48 + 341)) + 1201658629) ^ v51;
    v55 = ((*(v48 + 1201658629 + v46 + 2) ^ v51) << 16) | ((*(v48 + 1201658629 + v46 + 3) ^ 0x33333333) << 24) | v54 | ((*(v48 + 1201658629 + v46 + 1) ^ v51) << 8);
    *v50 = v55 + v52 - 2 * (v55 & 0x68A0F0FF ^ v54 & 7);
    return (*(v47 + 8 * ((120 * ((v48 + 1201658633) < 0x40)) ^ v53)))(1298399232, 571015168, 4294901760, 1201658629, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else
  {
    return (*(v47 + 8 * a7))(1772027904, 135069697, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, *(v47 + 8 * a7), a30, a31, a32, a33, a34, a35);
  }
}

uint64_t sub_10004B47C()
{
  STACK[0x288] = v2;
  v4 = 1388665877 * ((-560808100 - ((v3 - 200) | 0xDE92BF5C) + ((v3 - 200) | 0x216D40A3)) ^ 0xACC0224F);
  v5 = (v3 - 200);
  v5[4] = 0;
  v5[1] = &STACK[0x2E0];
  *v5 = &STACK[0x310];
  *(v3 - 184) = v4 + v1 + 85;
  *(v3 - 180) = v4 + 452683664;
  v6 = (*(v0 + 8 * (v1 ^ 0x91A)))(v3 - 200);
  return (*(v0 + 8 * (((*(v3 - 176) == -392105736) * ((v1 - 13) ^ 0xDC)) ^ v1)))(v6);
}

uint64_t sub_10004B584(uint64_t a1, uint64_t a2)
{
  *(v3 + 1424) = v2;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_10004B5A4@<X0>(uint64_t a1@<X1>, int a2@<W6>, unsigned int a3@<W8>)
{
  v8 = *(v7 - 220 + a3 + 72);
  v9 = ((2 * a3) & 0xAF7751E8) + ((v3 - a2 - 334114424) ^ a3) + v5;
  *(a1 + v9) = (HIBYTE(v8) ^ 0xA2) - ((2 * (HIBYTE(v8) ^ 0xA2)) & 0x66) + 51;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x4C) - ((v8 >> 15) & 0x66) + 51;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0xD0) - 2 * ((BYTE1(v8) ^ 0xD0) & 0x37 ^ BYTE1(v8) & 4) + 51;
  *(a1 + v9 + 3) = v8 ^ 0x5E;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v4) ^ v3)))();
}

uint64_t sub_10004B774@<X0>(int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v60 = (v58 + 4 * v55);
  v61 = v56 & 0x80000000;
  v62 = v55 + 1;
  v63 = *(v58 + 4 * v62);
  v64 = v60[397] ^ ((v63 & 0x7FFFFFFE | v61) >> 1);
  *v60 = (v64 + v59 - (((a2 + 1141675415) & 0xBBF36DFD ^ a1) & (2 * v64))) ^ *(&a55 + (v63 & 1));
  return (*(v57 + 8 * ((406 * (v62 == 227)) ^ a2)))();
}

uint64_t sub_10004B910@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = ~v5 + v3;
  v10 = *(a3 + v9 - 15);
  v11 = *(a3 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * ((1023 * ((((v6 + 33) | v7) ^ a2) + v5 == v4)) ^ (v6 + 1249))))();
}

uint64_t sub_10004BA00@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, uint64_t a16, int a17, int a18, unint64_t a19)
{
  *a14 = a1;
  LODWORD(STACK[0x22C]) = a17;
  STACK[0x230] = a19;
  LODWORD(STACK[0x238]) = a18 - v21 + 2004488308;
  STACK[0x240] = v25 + v21 - 27393310 + ((v19 - 1440732396) & 0x55DFD696u);
  v26 = v19;
  v27 = (*(v22 + v24 * v20 + 8))(a7);
  return (*(v23 + 8 * ((54 * (v27 - 392105736 - ((2 * v27) & 0xD141E1F0) != -392105736)) ^ v26)))();
}

uint64_t sub_10004BF88(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10004C044@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v7 = *result;
  v8 = *(result + 32);
  v9 = *(result + 16);
  *a3 = v5;
  *v9 = v4;
  *v8 = v6;
  *v7 = v3 + a2;
  *(result + 8) = -392105736;
  return result;
}

uint64_t sub_10004C090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = (a13 + v14);
  *(v18 - 1) = v17;
  *v18 = v17;
  return (*(v16 + 8 * ((((((v15 + 73) ^ 0x5A4) & v13) != 16) * ((((v15 + 73) ^ 0xEF) - 264) ^ 0x49C)) ^ (v15 + 73) ^ 0xEF)))();
}

uint64_t sub_10004C5A8@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = ((v2 + 41) ^ 0x22) + *(v1 + v5) - ((2 * *(v1 + v5)) & 0x66);
  return (*(v4 + 8 * ((4044 * (v5 == 0)) ^ v2)))();
}

void sub_10004C65C()
{
  LODWORD(STACK[0x208]) = 0;
  STACK[0x210] = 0;
  JUMPOUT(0x1000324F4);
}

uint64_t sub_10004C720(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = a4 + (((v8 - 1097) | 1) ^ 0x9B2FD3B6);
  v12 = v9 - 1250444298 < v11;
  if (v9 - 1250444298 < a8 != v11 < a8)
  {
    v12 = v11 < a8;
  }

  return (*(v10 + 8 * ((124 * v12) ^ v8)))();
}

uint64_t sub_10004C788(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 26214;
  a1.n128_u8[2] = 102;
  a1.n128_u8[3] = 102;
  a1.n128_u8[4] = 102;
  a1.n128_u8[5] = 102;
  a1.n128_u8[6] = 102;
  a1.n128_u8[7] = 102;
  a2.n128_u16[0] = 13107;
  a2.n128_u8[2] = 51;
  a2.n128_u8[3] = 51;
  a2.n128_u8[4] = 51;
  a2.n128_u8[5] = 51;
  a2.n128_u8[6] = 51;
  a2.n128_u8[7] = 51;
  return sub_10004C7B4(v2 ^ 0x521, 926, a1, a2);
}

void sub_10004CCBC(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 8) - ((v1 >> 23) & 0x66) + 51;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0xAB) - ((2 * (BYTE2(v1) ^ 0xAB)) & 0x66) + 51;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xB7) - ((2 * (BYTE1(v1) ^ 0xB7)) & 0x66) + 51;
  *(v5 + v6 + 3) = v1 ^ 0xEE;
  v7 = *v2;
  v8 = ((v4 ^ 0x5CCC0008) - 1951671066) ^ v4 ^ ((v4 ^ 0xB2BFC2D0) + 1708662334) ^ ((v4 ^ 0xBD541F35) + 1781777369) ^ ((v4 ^ 0x7BBFFEFF) - 1395121645);
  v9 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xAF3FD5EE) + ((a1 + *(v2 + 4) + 4) ^ 0x579FEAF7) - 1470098167;
  *(*v2 + v9) = (HIBYTE(v8) ^ 0x28) - ((2 * (HIBYTE(v8) ^ 0x28)) & 0x66) + 51;
  *(v7 + v9 + 1) = (BYTE2(v8) ^ 0x98) - ((2 * (BYTE2(v8) ^ 0x98)) & 0x66) + 51;
  *(v7 + v9 + 2) = (BYTE1(v8) ^ 0x23) - 2 * ((BYTE1(v8) ^ 0x23) & 0x37 ^ ((((v4 ^ 8) - 8986) ^ v4 ^ ((v4 ^ 0xC2D0) + 7742) ^ ((v4 ^ 0x1F35) - 15399) ^ ((v4 ^ 0xFEFF) + 8723)) >> 8) & 4) + 51;
  *(v7 + v9 + 3) = ((v4 ^ 8) - 26) ^ v4 ^ ((v4 ^ 0xD0) + 62) ^ ((v4 ^ 0x35) - 39) ^ (18 - v4) ^ 0x21;
  *(v2 + 4) = v3;
  sub_100048148();
}

uint64_t sub_10004CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = &a17;
  *(v20 - 128) = a15;
  *(v20 - 136) = (v19 + 1733) ^ (210068311 * ((v20 - 136) ^ 0x92D63FA4));
  v21 = (*(v18 + 8 * (v19 ^ 0xB2E)))(v20 - 136);
  return (*(v18 + 8 * ((22 * ((((v19 - 159) ^ (v17 == 1)) & 1) == 0)) ^ v19)))(v21);
}

uint64_t sub_10004CF24()
{
  v4 = v1 < 0xDF8CD920;
  if (v4 == v0 + 1 > (v2 - 1016) - 3750550202u)
  {
    v4 = (v2 ^ 0xDF8CDCB0uLL) + v0 < v1;
  }

  return (*(v3 + 8 * ((84 * !v4) ^ v2)))();
}

uint64_t sub_10004CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, char *a19, unsigned int a20)
{
  v22 = 1564307779 * (((&a15 | 0x8429BA6B) - (&a15 & 0x8429BA6B)) ^ 0x13247678);
  a19 = &a12;
  a17 = v21 - v22 - 2013067936;
  a18 = -559773842 - v22;
  a20 = 1016788250 - v22;
  a15 = a11;
  v23 = (*(v20 + 8 * (v21 + 905)))(&a15);
  return (*(v20 + 8 * ((893 * (a16 == ((((v21 + 285186698) & 0x23F5) - 392105441) ^ (v21 + 1785985655) & 0x406FF))) ^ v21)))(v23);
}

uint64_t sub_10004D08C(_DWORD *a1)
{
  v2 = *a1 + 1388665877 * ((-2 - ((a1 | 0xAD68937B) + (~a1 | 0x52976C84))) ^ 0xDF3A0E68);
  v3 = v2 + 542396559;
  result = (*(*(&off_100374800 + (v2 ^ 0xDFABAFB2)) + (v2 ^ 0xDFABA6D0) - 1))(*(&off_100374800 + (v2 + 542396559)) - 4, sub_10003022C);
  v5 = **(&off_100374800 + (v3 + 74));
  if (result)
  {
    v5 = 392145478;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_10004D298()
{
  v4 = v3 - 200;
  *(v0 + 5384) = &STACK[0x7EBFE2D7880B29C0];
  *(v3 - 196) = (v2 + 1688) ^ (1785193651 * ((((2 * (v3 - 200)) | 0xD7F5458E) - (v3 - 200) - 1811587783) ^ 0x78264EE7));
  *v4 = 85 - -77 * ((((2 * (v3 + 56)) | 0x8E) - (v3 + 56) + 57) ^ 0xE7);
  *(v4 + 24) = &STACK[0x6F65BB927020959F];
  v5 = (*(v1 + 8 * (v2 + 2024)))(v3 - 200);
  v6 = *(v3 - 192);
  LODWORD(STACK[0x4EC]) = v6;
  return (*(v1 + 8 * ((104 * (((v2 - 125) ^ (v6 == -392105736)) & 1)) ^ (v2 + 561))))(v5);
}

uint64_t sub_10004D39C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v11 = a9 + ((v10 + 235229057) & 0xF1FAAC7D) - 1140702802;
  v12 = a1 - 672390887 < v11;
  if (a1 > 0x2813DEE6 != v11 < 0xD7EC2119)
  {
    v12 = v11 < 0xD7EC2119;
  }

  return (*(v9 + 8 * ((26 * !v12) ^ v10)))();
}

uint64_t sub_10004D4A0()
{
  v5 = *(v3 + 4 * (v1 - 1));
  *(v3 + 4 * v1) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v3 + 4 * v1)) - v1;
  v6 = STACK[0x298];
  v7 = -LODWORD(STACK[0x298]);
  *(v4 - 160) = v0 - STACK[0x298] + 1212455196;
  v8 = v0 + 1484534102 - v6;
  v9 = (v4 - 200);
  v9[4] = v1 + 1 - v6;
  *(v4 - 180) = v8;
  *(v4 - 176) = v7;
  *(v4 - 192) = ((v0 + 1484534102) ^ 0x10) + v6;
  *(v4 - 184) = v8 - 31;
  *v9 = 623 - v6;
  v10 = (*(v2 + 8 * (v0 ^ 0x83D)))(v4 - 200);
  return (*(v2 + 8 * *(v4 - 188)))(v10);
}

uint64_t sub_10004D62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x2B0] = 742307843 * ((v5 - 200) ^ 0xB39CDD6B1E228D55);
  STACK[0x2A0] = 742307843 * (((~(v5 - 200) | 0x7A27A0F1638297F8) + ((v5 - 200) | 0x85D85F0E9C7D6807)) ^ 0x36448265825FE553);
  STACK[0x298] = 1361651671 * (((~(v5 - 200) | 0xD317594E3965C452) + ((v5 - 200) | 0x2CE8A6B1C69A3BADLL)) ^ 0xFF45D58815B8CB20);
  LODWORD(STACK[0x274]) = v4 - 2054008415;
  LODWORD(STACK[0x270]) = v4 ^ 0x1D4;
  v6 = 742307843 * ((2 * ((v5 - 200) & 0x34D3DA31C34AFC98) - (v5 - 200) + 0x4B2C25CE3CB50360) ^ 0xF8B0F8A522978E35);
  STACK[0x228] = v6;
  STACK[0x220] = v6 + 5119;
  LODWORD(STACK[0x21C]) = v4 ^ 0x7AD;
  LODWORD(STACK[0x294]) = (v4 - 250730835) ^ 0x3D;
  LODWORD(STACK[0x2AC]) = v4 - 250730835;
  LODWORD(STACK[0x290]) = (v4 - 250730835) ^ 0x5E;
  LODWORD(STACK[0x2B8]) = v4;
  return sub_10004D9F4(a1, 0, a3, a4, 392145697);
}

uint64_t sub_10004D9F4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = (a2 ^ 0x26Fu) + *(v4 + 264) + 1035;
  LODWORD(STACK[0x43C]) = a1;
  v6 = *(v3 + 8 * (a2 ^ 0x7B3));
  v7 = *(v2 + 8 * ((3999 * (*(v6 - 4) == ((a2 + 184624771) & 0xF4FED3FF) - 413)) ^ a2));
  *(v4 + 264) = v5;
  STACK[0x238] = v6;
  STACK[0x230] = v6 + 16;
  STACK[0x200] = *(v3 + 8 * (a2 - 1803));
  STACK[0x240] = v6 - 4;
  return v7();
}

void sub_10004DAD8(uint64_t a1)
{
  v1 = *(a1 + 32) + 1785193651 * ((2 * (a1 & 0x3B308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004DC00(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 1785193651 * ((v6 - ((v7 - 152) | v6) + ((v7 - 152) | 0x247786205CEAC705)) ^ 0x3043F00E4F362B25);
  STACK[0x5B0] = *v4 + v8;
  STACK[0x5B8] = v8;
  v9 = (v3 + 1493031442) ^ v8;
  *(v7 - 120) = v3 + 1493031442 - v8 - 114;
  *(v7 - 116) = v8;
  *(v7 - 128) = v9;
  *(v7 - 152) = 1443382250 - v8 + v3;
  *(v7 - 148) = v9 ^ 0x81;
  v10 = (*(v5 + 8 * (a3 + v3 + 2336)))(v7 - 152);
  return (*(v5 + 8 * *(v7 - 124)))(v10);
}

uint64_t sub_10004DDF4@<X0>(int a1@<W8>)
{
  v4 = (v1 - 771) | 0x157;
  v5 = ((((v4 - 1137073696) & 0x43C65FCB) + 912) ^ (a1 + 2197)) + v2;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * ((62 * (v6 < 131)) ^ v4)))();
}

uint64_t sub_10004DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  *(v6 - 128) = 395 * (a2 ^ 0x7E0);
  *(v6 - 112) = veorq_s8(*v7, xmmword_1002D9890);
  *(v6 - 144) = v4;
  if (v4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = *(v5 + 8 * ((14 * v10) ^ a2));
  *(v6 - 132) = -42900;
  return v11(a1, a2, a3);
}

uint64_t sub_10004E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int128 a48)
{
  v52 = *(a19 + 24);
  memset(&a48, 51, sizeof(a48));
  v53 = 1037613739 * ((((v51 - 168) ^ 0x78F5287C) & 0x6819443D | ~((v51 - 168) ^ 0x78F5287C | 0x6819443D)) ^ 0x3E11BEC1);
  STACK[0x2C0] = &a48;
  STACK[0x2C8] = v52;
  STACK[0x2D0] = v51 - 188;
  STACK[0x2E0] = &a33;
  *(v51 - 136) = (v48 + 1543) ^ v53;
  *(v51 - 168) = v53 + 1692047150;
  v54 = (*(v49 + 8 * (v48 ^ 0x95D)))(v51 - 168);
  return (*(v49 + 8 * (((*(v51 - 132) == v50) * ((v48 + 982) ^ (v48 - 87) ^ 0x5B)) ^ v48)))(v54);
}

uint64_t sub_10004E6D8()
{
  v6 = 1037613739 * (((v4 | 0xAE491F08) - v4 + (v4 & 0x51B6E0F0)) ^ 0x7F4B3277);
  *(v5 - 120) = v6 + v3 + 1551;
  *(v5 - 136) = ((v3 ^ 0x4B2 ^ v0 ^ 0xEFFFB227) + ((2 * v0) & 0xDFFF6EF2) + 1602091448) ^ v6;
  *(v5 - 128) = v2;
  v7 = (*(v1 + 8 * (v3 ^ 0x8F1)))(v5 - 136);
  return sub_10004E778(v7);
}

uint64_t sub_10004E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 128) = a15;
  *(v19 - 120) = a16;
  *(v19 - 136) = (v18 + 808) ^ (843532609 * (((v17 ^ 0x85E9580E | 0xCF8C91B7) - (v17 ^ 0x85E9580E) + ((v17 ^ 0x85E9580E) & 0x30736E48)) ^ 0x16289D3C));
  v20 = (*(v16 + 8 * (v18 ^ 0xC46)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 132) <= (((v18 - 1084) | 0x498) ^ 0x267991CCu)) * (v18 ^ 0x56B)) ^ v18)))(v20);
}

uint64_t sub_10004E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v25 = 1564307779 * ((&a17 + 1648973795 - 2 * (&a17 & 0x624957E3)) ^ 0xF5449BF0);
  a17 = a16;
  a21 = &a14;
  a19 = v23 - v25 - 2013068417;
  a20 = -268634697 - v25;
  a22 = 1016788250 - v25;
  v26 = (*(v24 + 8 * (v23 + 424)))(&a17);
  return (*(v24 + 8 * ((4015 * (a18 == v22 + ((v23 + 1425251562) & 0x1FD9) - 1049)) ^ v23)))(v26);
}

uint64_t sub_10004EBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = (v18 + 1869) ^ (210068311 * ((v19 - 128) ^ 0x92D63FA4));
  *(v19 - 120) = v17;
  *(v19 - 112) = &a15;
  v20 = (*(v16 + 8 * (v18 ^ 0x856)))(v19 - 128);
  return (*(v16 + 8 * (((v18 + 990 + v18 + 967 - 2465) * (v15 == 1)) ^ v18)))(v20);
}

uint64_t sub_10004EC64(uint64_t result)
{
  v1 = 1785193651 * (((result | 0xED81C447D9FA58CLL) - result + (result & 0xF127E3BB82605A73)) ^ 0x1AEC6A6A6E4349ACLL);
  v2 = *(result + 4) ^ v1;
  v3 = *(result + 36) - v1;
  v4 = *(result + 24) ^ v1;
  v5 = *(result + 16) ^ v1;
  v6 = *(result + 32) + v1;
  v7 = *(result + 8) - v1;
  v8 = v7 > v5;
  v9 = v7 == v5;
  v10 = v8;
  if (v3)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  *(result + 28) = v2 ^ v11;
  return result;
}

uint64_t sub_10004ED40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  LODWORD(a22) = (v26 + 1065) ^ (((((2 * &a22) | 0x544AE290) - &a22 + 1440386744) ^ 0xBE0AECD3) * v25);
  a23 = a21;
  a25 = &a16;
  v28 = (*(v27 + 8 * (v26 + 2030)))(&a22);
  return sub_100024B20(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_10004EDB0@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38)
{
  *a24 = a38 + 89408770;
  v42 = *v38;
  v43 = 1361651671 * ((0xFD58B8C0232C4E9 - (v40 | 0xFD58B8C0232C4E9) + a12) ^ 0x2387074A2EEFCB9ALL);
  *(v41 - 112) = -1695099416 - v43 + a2;
  STACK[0x5A8] = 5119 - v43;
  *(v41 - 136) = ((a2 - 1885195804) ^ 0x4F) - v43;
  *(v41 - 132) = a2 - 1885195804 - v43;
  *(v41 - 144) = v43 + a2 - 1885195804 + 28;
  STACK[0x5C8] = v42 - v43;
  *(v41 - 128) = -1361651671 * ((36881641 - (v40 | 0x232C4E9) + a12) ^ 0x2EEFCB9A);
  v44 = (*(v39 + 8 * (a1 + a2 + 2376)))(v41 - 152);
  return (*(v39 + 8 * *(v41 - 140)))(v44);
}

void sub_10004EF4C(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0xF3824F06) + (~a1 | 0xC7DB0F9))) ^ 0x81D0D215);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v10[0] = 0x2D7F28BD00000082;
  v10[1] = &v11;
  v9[0] = 0x2D7F28BD00000082;
  v9[1] = &v12;
  v6 = v3[1];
  v17 = v10;
  v18 = v5;
  v16 = (1785193651 * (&v13 ^ 0x13DCEC20)) ^ (v1 - 470);
  v14 = v2;
  v15 = v3;
  v13 = v6;
  v7 = *(&off_100374800 + (v1 & 0xAEE3A2A1)) - 8;
  (*&v7[8 * (v1 ^ 0xC2C)])(&v13);
  v8 = *v3;
  v15 = v9;
  v13 = v8;
  LODWORD(v14) = (1785193651 * (((&v13 | 0xEEB9FD85) + (~&v13 | 0x1146027A)) ^ 0xFD6511A4)) ^ (v1 - 63);
  (*&v7[8 * v1 + 8176])(&v13);
  v14 = v4;
  HIDWORD(v13) = v1 + 1388665877 * (((&v13 | 0xDAA33F71) - (&v13 & 0xDAA33F71)) ^ 0x570E5D9D) + 519;
  (*&v7[8 * v1 + 8464])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004F158(uint64_t a1, uint64_t a2, int a3)
{
  v15 = (v12 + 4 * v14);
  v16 = HIDWORD(v7) + v6 * (*(v13 + 4 * v14) ^ v3) + (*v15 ^ v3) + HIDWORD(v5) + v9 * ((v4 - 238) ^ (v3 - 1128) ^ *(v11 + 4 * v14));
  *(v15 - 1) = v16 + v3 - (a3 & (2 * v16));
  return (*(v10 + 8 * ((14 * (v14 + 1 == v8)) ^ v4)))();
}

uint64_t sub_10004F3AC@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *a3 = a1;
  v58 = (*(v54 + 48 * v57 + 8))(a4);
  return (*(v55 + 8 * ((1804 * (v58 - 392105736 - ((2 * v58) & 0xD141E1F0) == -392105736)) ^ v56)))(v58, v59, 2184529142, 2147483652, 268898960, 3902861560, 3826655451, 2997365166, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10004F774()
{
  v4 = (*(v1 + 8 * (v0 ^ 0x859)))();
  LODWORD(STACK[0x43C]) = v2;
  return (*(v1 + 8 * (((((v0 - 234) | 0x215) - 80) * v3) ^ (v0 - 171))))(v4);
}

uint64_t sub_10004F7D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = 4 * a5 - 3053232888;
  v11 = (((*(*(v5 + 8) + v10) ^ 0x221F9504) + ((a3 + 525) ^ 0xDDE0627A)) ^ ((*(*(v5 + 8) + v10) ^ 0xB3AB3407) + 1280625657) ^ ((*(*(v5 + 8) + v10) ^ 0x68F2DE81) + ((232 * (a3 ^ 0x67C)) ^ 0x970D25F7))) + v9;
  v12 = (((*(*(v6 + 8) + v10) ^ 0xB3DC0FFA) + 1277423622) ^ ((*(*(v6 + 8) + v10) ^ 0xD2C91CD7) + 758571817) ^ ((*(*(v6 + 8) + v10) ^ 0x98536CAF) + 1739363153)) + v9;
  v13 = v11 < v8;
  v14 = v11 > v12;
  if (v13 != v12 < v8)
  {
    v14 = v13;
  }

  return (*(v7 + 8 * (a3 ^ (4 * v14))))();
}

uint64_t sub_10004F9F0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) - ((*(v1 + v5) << (v3 ^ 8)) & 0x66) + 51;
  return (*(v4 + 8 * ((26 * (v5 == 0)) ^ v3)))();
}

void sub_10004FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_100374800 + (byte_1002D2464[(byte_1002CDAD0[(-39 * ((qword_1003B9018 - dword_1003B9020) ^ 0x42))] ^ 0xB) - 4] ^ (-39 * ((qword_1003B9018 - dword_1003B9020) ^ 0x42))) - 111);
  v5 = -39 * ((qword_1003B9018 - *v4) ^ 0x42);
  v6 = *(&off_100374800 + (byte_1002D9618[(byte_1002D54E4[v5 - 4] ^ 0xAB) - 8] ^ v5) - 118);
  v7 = 329992409 * ((*(v6 - 4) - *v4) ^ &v12 ^ 0x3F921ABBB7B42942);
  *v4 = v7;
  *(v6 - 4) = v7;
  v10 = 0;
  v14 = 210068311 * ((&v13 + 174337030 - 2 * (&v13 & 0xA642C06)) ^ 0x98B213A2) - 1224077185;
  v13 = &v10;
  LOBYTE(v7) = -39 * (*v4 ^ 0x42 ^ *(v6 - 4));
  v8 = *(&off_100374800 + ((-39 * (dword_1003B9020 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002D9610[byte_1002D54E0[(-39 * (dword_1003B9020 ^ 0x42 ^ qword_1003B9018))] ^ 0x3B]) - 217) - 8;
  (*&v8[8 * (byte_1002CD9DC[(byte_1002D9718[v7 - 8] ^ 0xF3) - 12] ^ v7) + 18864])(&v13);
  v11 = 0;
  v13 = &v11;
  v14 = 210068311 * (((&v13 | 0xF7630E9B) + (~&v13 | 0x89CF164)) ^ 0x65B5313E) - 1224077185;
  v9 = -39 * ((*(v6 - 4) - *v4) ^ 0x42);
  (*&v8[8 * (byte_1002CD8D0[byte_1002D9514[v9 - 4] ^ 0x89] ^ v9) + 18544])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  LODWORD(STACK[0x2E4]) = 2;
  STACK[0x2D8] = 0;
  LODWORD(STACK[0x2C8]) = 0;
  LODWORD(STACK[0x344]) = 0;
  return (*(v41 + 8 * (((((a8 + 112976222) & 0xF9441D76) + ((a8 + 235) ^ 0xFFFFFD53)) * ((v40 & 2) == 0)) ^ a8)))(a1, a2, a3, a4, a5, v42 + 2048, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, v42 + 2048, a40);
}

uint64_t sub_10004FE6C@<X0>(int a1@<W8>)
{
  v8 = (((~v2 & 0x72AD34FA) - (~v2 | 0x72AD34FB)) ^ 0xFF005617) * v1;
  v6[1] = &STACK[0x304];
  *v6 = &STACK[0x308];
  *(v7 - 184) = v8 + v3 + 98;
  *(v7 - 180) = a1 + v8;
  v6[4] = 0;
  (*(v4 + 8 * (v3 ^ 0x915)))(v7 - 200);
  v9 = *(v7 - 176);
  STACK[0x380] = STACK[0x288];
  return (*(v4 + 8 * (((v9 == (v3 ^ 0x135 ^ (v5 + 148))) * (((v3 + 1525700019) & 0xA50FAB7F) + 1015)) ^ v3)))(3450863079, 1339, 3644003432, 650963279, 392145697, 3522093884, 2730212021, 3902861560);
}

uint64_t sub_10005004C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26, uint64_t a27, int a28)
{
  v34 = ((((v30 - 1110) | 0x10) ^ 0xFFFFFFC1) & a2) + 16;
  v31 = 2066391179 * (((&a25 | 0x97EC8519) + (~&a25 | 0x68137AE6)) ^ 0x38CB0700);
  a28 = v30 - v31 - 653;
  a27 = v28;
  a25 = v31 + (((v30 ^ 0x49A071B2) + a2 - a13) ^ 0x74FB2DFD) + ((2 * ((v30 ^ 0x49A071B2) + a2 - a13)) & 0xE9F65BFA) - 1679820157;
  a26 = ((v34 ^ 0xBE3FED37) + 2113658622 + ((2 * v34) & 0x7C7FDA60)) ^ v31;
  v32 = (*(v29 + 8 * (v30 + 1246)))(&a25);
  return (*(v29 + 8 * ((505 * (*(v28 + 24) == -392105736)) ^ v30)))(v32);
}

void sub_1000501F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = (((((v15 - 144) | 0xA2587960) ^ 0xFFFFFFFE) - (~(v15 - 144) | 0x5DA7869F)) ^ 0xC6E07015) * a10;
  *(v15 - 136) = v10 - v16 - 18698496 + v14;
  *(v15 - 132) = v14 - v16 + 1272;
  *(v15 - 128) = v11;
  *(v15 - 144) = v13;
  (*(v12 + 8 * (v14 + 1696)))(v15 - 144);
  JUMPOUT(0x100049954);
}

uint64_t sub_100050268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v24 = *(v17 + 20) + v23;
  v25 = 1361651671 * ((&a12 - 2 * (&a12 & 0x20B2637E) + 548561790) ^ 0xF39093F2);
  a17 = v22;
  a16 = ((((v24 ^ 0xCE) + 50) ^ ((v24 ^ 7) - 7) ^ ((v24 ^ 0xF4 ^ (74 * (v20 ^ 0x3D))) - 82)) + 23) ^ (-41 * ((&a12 - 2 * (&a12 & 0x7E) + 126) ^ 0xF2));
  a15 = &a10;
  a12 = v21 + v25 + 1200179761;
  a13 = v20 - v25 + 1007;
  v26 = (*(v19 + 8 * (v20 ^ 0xB6C)))(&a12);
  return (*(v19 + 8 * ((2013 * (a14 == v18)) ^ v20)))(v26);
}

uint64_t sub_10005037C@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  v10 = (v9 + 4 * v6);
  v11 = (((a5 - 731) | a2) ^ a3) + v6;
  *v10 = v10[397] ^ v8 ^ *(a1 + 4 * (*(v9 + 4 * v11) & 1)) ^ ((*(v9 + 4 * v11) & 0x7FFFFFFE | v5 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((v11 == 227) * a4) ^ a5)))();
}

uint64_t sub_100050468()
{
  v4 = (v3 + 1313181386) & 0x2BAC;
  v11 = v9;
  v12 = &v7;
  LODWORD(v10) = (v3 - 677) ^ (50899313 * ((((&v10 ^ 0xC103041C) & 0xEDB31C5D) + (&v10 ^ 0x2EF85943) - ((&v10 ^ 0x2EF85943) & 0xEDB31C5D)) ^ 0xD764D885));
  (*(v1 + 8 * (v3 ^ 0x120u)))(&v10);
  HIDWORD(v11) = (v3 + 174) ^ ((&v10 ^ 0x8DAD62EC) * v2);
  v10 = v9;
  (*(v1 + 8 * (v3 + 248)))(&v10);
  if (v11 == (v4 ^ v0))
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  v11 = v9;
  LODWORD(v10) = v3 - (((&v10 | 0xE4CA02C2) - &v10 + (&v10 & 0x1B35FD38)) ^ 0x6967602E) * v2 - 834;
  (*(v1 + 8 * (v3 ^ 0x105u)))(&v10);
  LODWORD(v10) = v4 - (((&v10 | 0xD565B874) - (&v10 & 0xD565B874)) ^ 0x58C8DA98) * v2 + 583;
  v11 = v8;
  (*(v1 + 8 * (v4 + 1668)))(&v10);
  return v5 ^ (v0 - 380);
}

uint64_t sub_100050700@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v33 = a1[4];
  v27 = a1[1];
  v28 = a1[2];
  v29 = v28[1];
  *(v26 - 136) = a2;
  *(v26 - 128) = v28;
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((((v26 - 144) | 0x7E43C897) - (v26 - 144) + ((v26 - 144) & 0x81BC3768)) ^ 0x6D9F24B7));
  *(v26 - 112) = &a22;
  *(v26 - 104) = v27;
  *(v26 - 144) = v29;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 136) = &a24;
  *(v26 - 128) = v27;
  *(v26 - 144) = (v24 + 745) ^ (1037613739 * (((v26 - 144) & 0x14A73D1 | ~((v26 - 144) | 0x14A73D1)) ^ 0x2FB7A151));
  *(v26 - 120) = &a22;
  *(v26 - 112) = v28;
  (*(v25 + 8 * (v24 ^ 0xB28)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * (((((v26 - 144) | 0xE5E67C54) ^ 0xFFFFFFFE) - (~(v26 - 144) | 0x1A1983AB)) ^ 0x9C56F8B));
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a22;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((-66626470 - ((v26 - 144) | 0xFC075C5A) + ((v26 - 144) | 0x3F8A3A5)) ^ 0x10244F85));
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a20;
  *(v26 - 112) = &a12;
  *(v26 - 104) = v27;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 112) = &a16;
  *(v26 - 104) = v27;
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((v26 - 30250188 - 2 * ((v26 - 144) & 0xFE326BC4)) ^ 0xEDEE87E4));
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a12;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((((2 * (v26 - 144)) | 0x894864FA) - (v26 - 144) + 995872131) ^ 0xD778DE5D));
  *(v26 - 144) = &a16;
  *(v26 - 136) = &a24;
  *(v26 - 112) = &a14;
  *(v26 - 104) = v27;
  *(v26 - 128) = v28;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  *(v26 - 144) = &a14;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * (((v26 - 144) & 0x367F60B9 | ~((v26 - 144) | 0x367F60B9)) ^ 0xDA5C7366));
  *(v26 - 112) = &a8;
  *(v26 - 104) = v27;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((78452377 - ((v26 - 144) | 0x4AD1699) + ((v26 - 144) | 0xFB52E966)) ^ 0xE88E0546));
  *(v26 - 112) = &a10;
  *(v26 - 104) = v27;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a8;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((((v26 - 144) | 0x68C5F042) - ((v26 - 144) & 0x68C5F042)) ^ 0x7B191C62));
  *(v26 - 112) = &a24;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a10;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  v30 = *v28;
  *(v26 - 136) = (v24 + 725) ^ (1785193651 * ((((v26 - 144) | 0x85116527) + (~(v26 - 144) | 0x7AEE9AD8)) ^ 0x96CD8906));
  *(v26 - 128) = &a18;
  *(v26 - 144) = v30;
  (*(v25 + 8 * (v24 + 1810)))(v26 - 144);
  *(v26 - 136) = v33;
  *(v26 - 140) = v24 + 1388665877 * (((v26 - 144) & 0x535F0B4B | ~((v26 - 144) | 0x535F0B4B)) ^ 0x210D9658) + 1307;
  v31 = (*(v25 + 8 * (v24 + 1846)))(v26 - 144);
  return (*(v25 + 8 * (((*(v26 - 144) - 2054041575 >= 559 * (v24 ^ 0x220u) + 2147482529) * (v24 ^ 0x22B)) | v24)))(v31);
}

uint64_t sub_100050BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v8 + 256) = v5;
  *(v8 + 384) = STACK[0x278];
  STACK[0x2E8] = *(v7 + 8 * v6);
  return sub_100050C98(3450863079, 1339, 3644003432, 650963279, a5, 3522093884);
}

uint64_t sub_100050C98()
{
  *(v5 + 264) = ((v0 - 109) ^ 0xFFFFFFFFFFFFFABELL) + v2 + ((v0 + 675) | 0x22u);
  *(v5 + 128) = v1;
  if (v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((30 * v7) ^ v0)))();
}

uint64_t sub_100050D4C@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W5>, uint64_t a5@<X8>)
{
  v9 = *(a5 + v5 + 72);
  v10 = ((2 * v5) & 0xEEDFEDF8) + (v5 ^ 0x776FF6FE) - 2003826430;
  *(v7 + v10) = v9 ^ a1;
  *(v7 + v10 + 1) = ((v9 >> ((v6 + 9) ^ 0x7C)) ^ a3) - 2 * (((v9 >> ((v6 + 9) ^ 0x7C)) ^ a3) & a4 ^ (v9 >> ((v6 + 9) ^ 0x7C)) & 4) + 51;
  *(v7 + v10 + 2) = (BYTE2(v9) ^ 0x4C) - ((v9 >> 15) & 0x66) + 51;
  *(v7 + v10 + 3) = (HIBYTE(v9) ^ a2) - 2 * ((HIBYTE(v9) ^ a2) & 0xBB ^ HIBYTE(v9) & 8) + 51;
  return (*(v8 + 8 * ((3594 * (v5 + 4 < *(a5 + 92))) ^ v6)))(186);
}

uint64_t sub_100050E94(uint64_t a1, char a2)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v6 + v7);
  return (*(v5 + 8 * (((((v2 ^ a2) ^ (v7 == 0)) & 1) * v4) | (v2 + 192))))();
}

uint64_t sub_100050EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17, int a18, uint64_t *a19, int a20, int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a16 = 27391768;
  v29 = 1082434553 * (&a19 ^ 0x9B47F68A);
  a22 = &a17;
  a19 = &a14;
  a21 = v29 + 66494551 + a18 + 3 * (v26 ^ 0xBC);
  a23 = v29 + v26 + 1204;
  a25 = &a16;
  a26 = a14;
  a24 = &a18;
  v30 = (*(v28 + 8 * (v26 + 2108)))(&a19);
  return (*(v28 + 8 * ((1249 * (a20 == -392105736)) ^ v26)))(v30, v27);
}

uint64_t sub_100051180(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1.n128_u16[0] = 26214;
  a1.n128_u8[2] = 102;
  a1.n128_u8[3] = 102;
  a1.n128_u8[4] = 102;
  a1.n128_u8[5] = 102;
  a1.n128_u8[6] = 102;
  a1.n128_u8[7] = 102;
  a2.n128_u16[0] = 13107;
  a2.n128_u8[2] = 51;
  a2.n128_u8[3] = 51;
  a2.n128_u8[4] = 51;
  a2.n128_u8[5] = 51;
  a2.n128_u8[6] = 51;
  a2.n128_u8[7] = 51;
  return sub_1000511B0(v6 - 7, a4, 92, a6, ((v7 - 44) | 0x72u) ^ 0x27ALL, a1, a2);
}

uint64_t sub_1000512A8()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v1 + v5) ^ 0x33;
  return (*(v4 + 8 * (((v5 == 0) * (v3 + 1231)) ^ v3)))();
}

uint64_t sub_1000512FC()
{
  *(v4 + 264) = v1 - 1616;
  LODWORD(STACK[0x43C]) = v3;
  return (*(v2 + 8 * (((STACK[0x2D8] != 0) * (303 * (v0 ^ 0x172) + ((v0 + 322) ^ 0xFFFFFBAE))) ^ (v0 + 411))))();
}

void sub_100051350()
{
  *v2 = (((v0 - 24675337) & 0x178857C) + 2147483276 + ((((STACK[0x250] - v0) | (v0 - STACK[0x250])) & 0x80000000) == 0)) ^ (v0 + 1);
  (*(v1 + 8 * (v0 ^ 0x92D)))(STACK[0x278]);
  JUMPOUT(0x1000513C8);
}

uint64_t sub_1000514CC@<X0>(int a1@<W8>)
{
  v8 = ((((v7 - 144) | 0x241951C7) - (v7 - 144) + ((v7 - 144) & 0xDBE6AE38)) ^ 0xB6CF6E63) * v6;
  *(v7 - 144) = v8 + (v2 ^ 0x6FFFDEFF) + (a1 & 0xDFFFBDFE) - 40066622;
  *(v7 - 136) = v1 - v8 - 411;
  *(v7 - 128) = v4;
  v9 = (*(v3 + 8 * (v1 + 1362)))(v7 - 144);
  return (*(v3 + 8 * (((2 * ((((v1 ^ 0x45) + 1) ^ (*(v7 - 140) == v5)) & 1)) & 0xEF | (16 * ((((v1 ^ 0x45) + 1) ^ (*(v7 - 140) == v5)) & 1))) ^ v1)))(v9);
}

uint64_t sub_1000515A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = 27391768;
  v30 = *(a2 + 4);
  v31 = *(a2 + 8);
  v32 = 1082434553 * ((1969483614 - (&a21 | 0x7563EF5E) + (&a21 | 0x8A9C10A1)) ^ 0x11DBE62B);
  a24 = &a18;
  a25 = v32 + v28 + 1204;
  a23 = v30 + 66494551 + v32 + 273;
  a27 = &a17;
  a28 = v31;
  a21 = &a14;
  a26 = &a20;
  v34 = (*(v29 + 8 * (v28 + 2108)))(&a21);
  return (*(v29 + 8 * (((a22 == -392105736) * ((v28 + 42) ^ 0x119)) ^ v28)))(v34, a2);
}

uint64_t sub_1000516DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19)
{
  v26 = &a19 + 6 * v21;
  v26[2] = v22;
  v26[3] = v25;
  *(v26 + 2) = a14;
  v26[6] = a16;
  a19 = v20 + 1;
  return (*(v23 + 8 * (((((a9 + 1234117123) & 0xB670DFDB ^ (a5 - 335)) + v19 < a4) * (v24 + ((a9 + 503041537) & 0xEFD5F9BE) + 1807)) ^ (a9 - 319))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10005180C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v10 = (v3 + 22) | v6;
  v11 = (v10 ^ v4) + a3;
  *(STACK[0x230] + v11) = *(v9 + v11);
  return (*(v8 + 8 * (((v11 == ((v10 + v7) & v5 ^ a1)) * ((v10 ^ 0x176) * a2 + 167)) ^ (v10 + 1010))))();
}

uint64_t sub_100051888@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  *(*(a3 + 8) + 4 * (v3 + a2 + v5 - 551 - 261)) = v7 ^ v6;
  v8 = (v5 - 661019445) & 0x27665B5B;
  *(a3 + 4) = a2 + 1;
  v9 = a2 + 1 + v3;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  v10 = ((v9 ^ 0xAFFF2EBF) + ((v8 + 1610504747) & (2 * v9)) + 1342230848) > (v8 ^ 0xFFFFFCAC);
  return (*(v4 + 8 * (((16 * v10) | (32 * v10)) ^ v8)))(a1, v8 ^ 0x5D1u);
}

uint64_t sub_100051AAC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v7 = *(*a3 + (v5 - 1235252674)) ^ 0x33;
  v8 = ((*(*a3 + (v5 - 1235252677)) ^ 0x33333333) << 24) | ((*(*a3 + v5 - 1235254397 + ((a2 - 2133) ^ 0x6DB)) ^ 0x33) << 16) | ((*(*a3 + (v5 - 1235252675)) ^ 0x33) << 8) | v7;
  return (*(v4 + 8 * ((127 * (v6 - *(a1 + 12) + ((v8 + v3 - 2 * (v8 & 0x68A0F0FF ^ v7 & 7)) & 0xFFFFFF ^ 0xA0F0F8) == -1833544666)) ^ a2)))();
}

uint64_t sub_100051B6C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v13 = a1 < a3;
  *(a2 + a8) = *(a7 + v8) - ((2 * *(a7 + v8)) & 0x66) + 51;
  if (v13 == v8 + 1 > v10)
  {
    v13 = ((v9 + a5) & a6 ^ v11) + v8 < a1;
  }

  return (*(v12 + 8 * ((!v13 * a4) ^ v9)))();
}

uint64_t sub_100051FC0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, unsigned int a8@<W8>, uint64_t a9, int a10, int a11)
{
  v19 = (((a11 ^ v16) + v17) ^ ((a11 ^ a1) + a2) ^ ((a11 ^ a3) + a4)) + a5;
  v20 = v19 < v11 + 842;
  v21 = a8 + v11 + (((v15 ^ v12) * v13) ^ v14) < v19;
  if (a8 > a6 != v20)
  {
    v21 = v20;
  }

  return (*(v18 + 8 * ((!v21 * a7) ^ v15)))();
}

uint64_t sub_10005203C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v39 = (((((a35 ^ 0xC1) - 127) ^ a35 ^ ((a35 ^ 8) + 74) ^ ((a35 ^ 9) + 73)) ^ (((a2 - 60) ^ a35) + 64)) & 0xF) != 0xE || (((a35 ^ 0x1B7E07C1) - 1532209535) ^ a35 ^ ((a35 ^ 0xB7312908) + 149125194) ^ ((a35 ^ 0x939DBF09) + 743435849) ^ (((a2 + 2147433412) ^ a35) - 1070764480)) == (((v35 ^ 0x463) + 154) ^ 0x402DAF12);
  v40 = *(v37 + 8 * ((41 * ((((v35 ^ 0x63) + 1) ^ v39) & 1)) | v35 ^ 0x463));
  *(v36 - 176) = -42899;
  return v40(a1, v35 ^ 0x6CBu);
}

void sub_100052170(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a4 + 993;
  v7 = (*(v4 + 8 * (a4 + 993)))(3);
  v8 = *(&off_100374800 + a4 - 1355);
  *(v8 - 4) = v7;
  v9 = v8;
  (*(v4 + 8 * (a4 ^ 0xC06)))();
  v10 = (*(v4 + 8 * (a4 ^ 0xC61)))(66);
  v11 = *(&off_100374800 + (a4 ^ 0x549));
  *(v11 - 4) = v10;
  v11 = (v11 - 4);
  (*(v4 + 8 * (a4 + 1018)))();
  v12 = (*(v4 + 8 * v5))(2);
  v13 = *(&off_100374800 + a4 - 1231);
  *v13 = v12;
  *v12 = 7196;
  **v11 = 0;
  **(&off_100374800 + (a4 ^ 0x540)) = 0;
  v14 = *v13;
  v15 = *v11;
  v16 = *(v9 - 4);
  v15[64] = 1;
  **(&off_100374800 + a4 - 1201) = 51;
  v15[9] = -15;
  v14[1] = 79;
  **(&off_100374800 + (a4 ^ 0x57B)) = 80;
  **(&off_100374800 + (a4 ^ 0x52C)) = -77;
  *v14 = -22;
  v15[11] = 73;
  *v16 = 68;
  v15[20] = -44;
  **(&off_100374800 + a4 - 1230) = -121;
  v15[36] = -11;
  v15[45] = -113;
  v15[49] = 25;
  *(v16 + 1) = 6695;
  **(&off_100374800 + (a4 & 0x24ACE02C)) = -122;
  **(&off_100374800 + (a4 ^ 0x543)) = 88;
  v15[26] = -34;
  v15[60] = -5;
  **(&off_100374800 + (a4 ^ 0x5F8)) = 96;
  **(&off_100374800 + (a4 ^ 0x5EC)) = 80;
  **(&off_100374800 + a4 - 1181) = 17;
  **(&off_100374800 + (a4 & 0x6C89011)) = 119;
  v15[52] = 47;
  v15[50] = 102;
  v15[59] = -59;
  v15[22] = -36;
  v15[29] = 59;
  v15[27] = 34;
  v15[40] = -80;
  v15[13] = 23;
  **(&off_100374800 + (a4 ^ 0x537)) = 99;
  v15[53] = 3;
  **(&off_100374800 + (a4 ^ 0x544)) = -109;
  v15[39] = 54;
  v15[57] = 73;
  **(&off_100374800 + (a4 ^ 0x5C7)) = 83;
  v15[37] = -52;
  v15[63] = -72;
  v17 = *v11;
  *(v17 + 65) = -85;
  *(v17 + 5) = -14;
  *(v17 + 54) = 32;
  *(v17 + 58) = 113;
  *(v17 + 8) = 16909;
  *(v17 + 28) = -39;
  *(v17 + 47) = -4065;
  *(v17 + 21) = 15;
  *(v17 + 41) = -29527;
  *(v17 + 38) = -121;
  *(v17 + 31) = 8824;
  *(v17 + 25) = 69;
  *(v17 + 7) = 27031;
  *(v17 + 23) = -86;
  *(v17 + 14) = -90;
  *(v17 + 62) = -105;
  *(v17 + 33) = 15089;
  *(v17 + 55) = -30385;
  *(v17 + 46) = -17;
  *(v17 + 4) = -92;
  *(v17 + 15) = 72;
  *(v17 + 30) = 36;
  *(v17 + 10) = -98;
  *(v17 + 35) = 52;
  *(v17 + 51) = -15;
  *(v17 + 12) = -15;
  *(v17 + 61) = 73;
  *(v17 + 9) = -9761;
  *(v17 + 43) = 19744;
  *(v17 + 6) = 45;
  *(v17 + 24) = -72;
  JUMPOUT(0x10005321CLL);
}

uint64_t sub_100053518@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int32x4_t a9@<Q2>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v78 = *(v37 + 8 * a6);
  v44 = *(v42 - 156);
  v43 = *(v42 - 152);
  v46 = *(v42 - 148);
  v45 = *(v42 - 144);
  v47 = *(v42 - 132);
  if (v47 == 2)
  {
    v80 = vld4q_s8(v35);
    v70 = veorq_s8(v80.val[1], a7);
    _Q22 = vmovl_high_u8(v70);
    _Q21 = vmovl_u8(*v70.i8);
    v73 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm
    {
      SHLL2           V21.4S, V21.8H, #0x10
      SHLL2           V22.4S, V22.8H, #0x10
    }

    v74 = vmovl_u8(*&veorq_s8(v80.val[2], a7)).u64[0];
    v80.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v80.val[3], a7)));
    v75 = vorrq_s8(vorrq_s8(vorrq_s8(v73, vshll_n_u16(v74, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v80.val[0], a7))), 0x18uLL)), v80.val[2]);
    v80.val[2] = veorq_s8(vandq_s8(v75, a8), (*&v80.val[2] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v33 = vaddq_s32(vsubq_s32(v75, vaddq_s32(v80.val[2], v80.val[2])), a9).u32[0];
    v76 = v33[((v34 + 980) ^ (v39 + 860)) + 805443227];
    v33[v39 + 805443227] = __ROR4__(v33[v39 + 805443224] ^ v38 ^ v33[v39 + 805443219] ^ v33[v39 + 805443211] ^ v76, 31) ^ 0xAC395023;
    v77 = *(v37 + 8 * ((1108 * (v40 == 805443164)) ^ v34));
    return v77(v77, 2889437219, v76, a18, a2, a3, a4, a5, a10, a11, a12, a13, a14, a15, a16, v78, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    if (v47 != 1)
    {
      JUMPOUT(0x100053D9CLL);
    }

    v79 = vld4q_s8(v35);
    v48 = (a5 + a1 - 156);
    v49 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v79.val[0], a7)));
    v50 = veorq_s8(v79.val[2], a7);
    _Q26 = vmovl_u8(*v50.i8);
    _Q25 = vmovl_high_u8(v50);
    __asm
    {
      SHLL2           V27.4S, V25.8H, #0x10
      SHLL2           V28.4S, V26.8H, #0x10
    }

    v79.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v79.val[3], a7))), 0x18uLL), vshll_n_s16(*_Q26.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v79.val[1], a7)), 8uLL), v49));
    v59 = veorq_s8(vandq_s8(v79.val[2], a8), (*&v49 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v33 = vaddq_s32(vsubq_s32(v79.val[2], vaddq_s32(v59, v59)), a9).u32[0];
    v60 = (a5 + a1 + 1431937454) & 0xAAA65DBF;
    v61 = *(&off_100374800 + (v48 ^ 0x186));
    v62 = *(&off_100374800 + (v48 ^ 0x178));
    v63 = (v43 & 0x5511AF87 ^ 0x55112F82 ^ (v43 ^ 0x5DB32F92) & (v45 ^ 0xF75D7FEA) | v60 ^ v46 & 0x548EC4D4 ^ (v43 ^ 0xF6C214B9) & (v46 ^ v38) ^ 0xCC161) + (v44 ^ v38) + *(v61 + 4 * (a18 + v39)) + (v33[(*(*(&off_100374800 + (v48 ^ 0x175)) + a18 + v39 - 4) - 50)] ^ v41);
    v64 = *(v62 + a18 + v39);
    v65 = (v63 ^ 0x1A41AD76) - 1415284374;
    v66 = (((v64 - 56) ^ 0x22) + 17) ^ (v64 - 56) ^ (((v64 - 56) ^ 0xF9) - 52) ^ (((v64 - 56) ^ 0xE9) - 36) ^ (5 - v64);
    v67 = v63 ^ 0x4E1A2BE0 ^ ((v63 ^ 0x2A84AB58) - 1688109240) ^ v65 ^ ((v63 ^ 0x5305231) - 1261074897) ^ ((v63 ^ 0x7BEF7FFF) - 905270303);
    v68 = (((v43 ^ 0x4D440DA6) - 1296305574) ^ ((v43 ^ 0xC36B3306) + 1016384762) ^ ((v43 ^ 0x2C63EECD) - 744746701)) - 1314577237 + ((v67 << (v66 & 0x19 ^ 9) << (v66 & 6 ^ 4)) | (v67 >> (v36 - v64)));
    return (*(v37 + 8 * ((62 * (a18 + 1 == v40)) ^ v48)))(v48, v62, v68 ^ ((v68 ^ 0xB5E2FBEB) + 1162170411) ^ ((v68 ^ 0x310792E) - 206056720) ^ ((v68 ^ 0x44553D44) - 1259170170) ^ ((v68 ^ 0xFDFFEBBF) + 223887487) ^ 0xAD148453, 805443227, 9, v65, 3033892399, v61, a10, a11, a12, a13, a14, a15, a16, v78, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }
}

void sub_100053B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (((v8 ^ 0x8228A3B4) + 2111265868) ^ ((v8 ^ 0x955CF33F) + 1789070529) ^ ((v8 ^ 0xB53880E6) + 1254588186)) - 1878667844 + (((*(v10 - 140) ^ 0x31F4C43E) - 838124606) ^ ((*(v10 - 140) ^ 0xBFFF4FC1) + 1073786943) ^ (((v9 - a8 - 1687) ^ 0xB8A9CAA6 ^ *(v10 - 140)) - 742874002));
  v12 = (v11 ^ 0xA20B931E) & (2 * (v11 & 0xB493D31E)) ^ v11 & 0xB493D31E;
  v13 = ((2 * (v11 ^ 0x830C371E)) ^ 0x6F3FC800) & (v11 ^ 0x830C371E) ^ (2 * (v11 ^ 0x830C371E)) & 0x379FE400;
  v14 = v13 ^ 0x10802400;
  v15 = (v13 ^ 0x261FC000) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0xDE7F9000) & v14 ^ (4 * v14) & 0x379FE400;
  v17 = v15 ^ 0x379FE400 ^ (v16 ^ 0x161F8000) & (16 * v15);
  v18 = (16 * (v16 ^ 0x21806400)) & 0x379FE400 ^ 0x601A400 ^ ((16 * (v16 ^ 0x21806400)) ^ 0x79FE4000) & (v16 ^ 0x21806400);
  v19 = (v17 << 8) & 0x379FE400 ^ v17 ^ ((v17 << 8) ^ 0x9FE40000) & v18;
  *(v10 - 140) = v11 ^ (2 * ((v19 << 16) & 0x379F0000 ^ v19 ^ ((v19 << 16) ^ 0x64000000) & ((v18 << 8) & 0x379F0000 ^ 0x201B0000 ^ ((v18 << 8) ^ 0x9FE40000) & v18))) ^ 0x1EE8CB73;
  JUMPOUT(0x100053D98);
}

uint64_t sub_100054348()
{
  v2 = *(v1 + 18952);

  return v2(v0);
}

uint64_t sub_100054374@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((1008 * ((((v3 ^ 6) - 30) ^ (v4 - 763308221 == (((v3 ^ 0x506) - 1820472306) & 0x6C8236F7) - 1271)) & 1)) ^ v3 ^ 0x506)))();
}

void sub_1000543E0(_DWORD *a1)
{
  v1 = *a1 ^ (210068311 * ((a1 & 0x333F3DED | ~(a1 | 0x333F3DED)) ^ 0x5E16FDB6));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1000544AC()
{
  *(v4 - 136) = (v1 + 329) ^ (((v4 - 2021370031 - 2 * ((v4 - 144) & 0x878457E1)) ^ 0x9458BBC1) * v3);
  *(v4 - 144) = &v6;
  *(v4 - 128) = v0;
  return (*(v2 + 8 * (v1 + 1414)))(v4 - 144);
}

void sub_100054590()
{
  v0 = __chkstk_darwin();
  v1 = *v0 - 50899313 * ((v0 & 0xEEFB953D | ~(v0 | 0xEEFB953D)) ^ 0x52BF759);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000546C8(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0xE8A0F0F8;
}

uint64_t sub_100054808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, char *a17, int a18)
{
  v20 = 742307843 * (((&a15 | 0xAC4969DB) - (&a15 & 0xAC4969DB)) ^ 0xB26BE48E);
  HIDWORD(a17) = v19 - v20 + 1877;
  a18 = v20 ^ 0x38C154A6;
  a16 = v20 + 1546035931;
  LODWORD(a17) = 605012660 - v20;
  (*(v18 + 8 * (v19 + 2314)))(&a15);
  a17 = &a10;
  a18 = v19 + 2066391179 * (((&a15 | 0x2DFD570B) - &a15 + (&a15 & 0xD202A8F0)) ^ 0x82DAD513) + 1137;
  v21 = (*(v18 + 8 * (v19 ^ 0x930)))(&a15);
  return (*(v18 + 8 * ((2093 * (a15 == ((v19 + 1113085858) & 0x9EF) - 392106195)) ^ v19)))(v21);
}

uint64_t sub_1000549C0(int a1, int a2)
{
  v13 = v3 + a1 + (*(*(v11 + 8) + 4 * v4) ^ v8);
  *(*(v2 + 8) + 4 * v4) = v13 + v8 - ((v13 << ((v6 & v7) + 95)) & v10);
  return (*(v9 + 8 * (((v4 + 1 == v12) * a2) ^ v5)))();
}

uint64_t sub_100054A4C@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x66) + 51;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

uint64_t sub_100054A84()
{
  v4 = STACK[0x200];
  (*(v0 + 8 * (v1 + 1696)))(*STACK[0x200], v3, 2048);
  v5 = *(v0 + 8 * ((((*(v0 + 8 * (v1 ^ 0xBED)))(*v4, &STACK[0x440], LODWORD(STACK[0x3C4]) + ((v1 + 132) ^ (v2 + 800)), 1) != 0) * (v1 - 619)) ^ v1));
  return v5();
}

void sub_100054D0C()
{
  *(v4 - 144) = v1 + 1082434553 * (((~(v4 - 144) & 0xCDB5CCEE) - (~(v4 - 144) | 0xCDB5CCEF)) ^ 0x56F23A65) + 480;
  *(v4 - 136) = v2;
  *(v4 - 128) = v3;
  (*(v0 + 8 * (v1 ^ 0x835)))(v4 - 144);
  JUMPOUT(0x10001F370);
}

uint64_t sub_100054DC4(uint64_t result)
{
  v1 = 742307843 * ((((2 * result) | 0xDB1F010A29036638) - result - 0x6D8F80851481B31CLL) ^ 0xDE135DEE0AA33E49);
  v2 = *(result + 8) - v1;
  v3 = *(result + 32) + v1;
  v4 = v3 > v2;
  v5 = v3 == v2;
  v6 = v4;
  if ((*result ^ v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 16;
  if (!v7)
  {
    v8 = 40;
  }

  *(result + 44) = (*(result + v8) - v1) ^ (*(result + 24) - v1);
  return result;
}

uint64_t sub_100054E68(uint64_t a1)
{
  v1 = 742307843 * (((a1 | 0xB9F25DC1) - (a1 & 0xB9F25DC1)) ^ 0xA7D0D094);
  v2 = *(a1 + 12) + v1;
  v3 = *(*(&off_100374800 + v2 - 1765) + 85);
  v4 = *(a1 + 4) - v1 - 1064877473;
  v5 = v3 + 481158404 > v4;
  if (v4 < 0x1CADE504 != v3 > 0xE3521AFB)
  {
    v5 = v3 > 0xE3521AFB;
  }

  return (*(*(&off_100374800 + v2 - 1902) + ((v5 * ((v2 - 474) ^ 0x589)) ^ v2) - 1))();
}

void sub_1000551C0(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3 = ((v7 ^ 0x538) - 245) ^ (843532609 * (((&a3 ^ 0xD5FD5067) - 1420027307 - 2 * ((&a3 ^ 0xD5FD5067) & 0xAB5C1A55)) ^ 0x22EC1EB7));
  a6 = v8;
  a4 = a1;
  (*(v6 + 8 * ((v7 ^ 0x538) + 1817)))(&a3);
  JUMPOUT(0x10000E994);
}

uint64_t sub_100055294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v17 = 1037613739 * (((&a10 | 0xD08D064A) - &a10 + (&a10 & 0x2F72F9B0)) ^ 0x18F2B35);
  a10 = v17 + 139505285;
  a11 = v14;
  a12 = &a9;
  a13 = (v15 - 1484) ^ v17;
  a14 = 681059094 - v17;
  v18 = (*(v16 + 8 * (v15 + 791)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -392105736) * ((76 * (v15 ^ 0x64C)) ^ 0x65B)) ^ v15)))(v18);
}

uint64_t sub_100055354(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_10005536C(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((1549542908 - (a1 | 0x5C5C25FC) + (a1 | 0xA3A3DA03)) ^ 0x3175E5A7);
  v2 = *a1;
  v3 = *(&off_100374800 + v1 - 68) - 8;
  (*&v3[8 * (v1 ^ 0x926)])(*(&off_100374800 + v1 - 25) - 4, sub_10002EAF4);
  __asm { BRAA            X9, X17 }
}

void sub_100055438(uint64_t a1)
{
  v2 = *(&off_100374800 + ((-39 * (dword_1003B8FD8 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002CD8D0[byte_1002D9510[(-39 * (dword_1003B8FD8 ^ 0x42 ^ qword_1003B9018))] ^ 0x50]) + 26);
  v3 = *(v2 - 4);
  v4 = *(&off_100374800 + (byte_1002D9610[byte_1002D54E0[(-39 * ((qword_1003B9018 - v3) ^ 0x42))] ^ 0x7D] ^ (-39 * ((qword_1003B9018 - v3) ^ 0x42))) - 71);
  v5 = *(v4 - 4) - v3 - &v9;
  v6 = 329992409 * v5 + 0x3F921ABBB7B42942;
  v7 = 329992409 * (v5 ^ 0x3F921ABBB7B42942);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v2) = *(v2 - 4);
  v8 = *(&off_100374800 + ((-39 * (dword_1003B8FD8 ^ 0x42 ^ qword_1003B9018)) ^ byte_1002D9610[byte_1002D54E0[(-39 * (dword_1003B8FD8 ^ 0x42 ^ qword_1003B9018))] ^ 0xE8]) - 170) - 8;
  (*&v8[8 * ((-39 * ((v7 + v2) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((v7 + v2) ^ 0x42))] ^ 0x3B]) + 16968])(*(&off_100374800 + ((-39 * ((v7 - v2) ^ 0x42)) ^ byte_1002D9610[byte_1002D54E0[(-39 * ((v7 - v2) ^ 0x42))] ^ 0x7D]) - 19) - 4, sub_10002EAF4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10005566C()
{
  v0.n128_u64[0] = 0x6666666666666666;
  v0.n128_u64[1] = 0x6666666666666666;
  v1.n128_u64[0] = 0x3333333333333333;
  v1.n128_u64[1] = 0x3333333333333333;
  return sub_1000556A8(v0, v1);
}

uint64_t sub_1000556A8@<X0>(int a1@<W7>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v12 = (v7 + v5 + a2);
  v13 = vaddq_s8(vsubq_s8(*(v11 + v5 + 16), vandq_s8(vaddq_s8(*(v11 + v5 + 16), *(v11 + v5 + 16)), a3)), a4);
  *v12 = vaddq_s8(vsubq_s8(*(v11 + v5), vandq_s8(vaddq_s8(*(v11 + v5), *(v11 + v5)), a3)), a4);
  v12[1] = v13;
  return (*(v10 + 8 * (((v8 + v5 == v4) * v9) ^ (a1 + v6 - 10))))();
}

uint64_t sub_100055704(uint64_t a1)
{
  v1 = 210068311 * ((a1 - 205837158 - 2 * (a1 & 0xF3BB2C9A)) ^ 0x616D133E);
  v2 = *a1 - v1;
  v3 = *(a1 + 28) - v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 763308221;
  v5 = v4 - 763308221 < 0;
  v7 = 763308221 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_100374800 + (v2 ^ 0x45E)) + ((254 * (((v2 - 121) ^ ((v3 - 1289254096) < (4 * v7))) & 1)) ^ v2) - 1))();
}

uint64_t sub_10005583C(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = (a13 + (v14 + v13));
  v18 = *v17;
  v19 = v17[1];
  v20 = (a8 + v14);
  *v20 = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a5)), a6);
  v20[1] = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a5)), a6);
  return (*(v16 + 8 * (((4 * (((v14 == 32) ^ (v15 + 49)) & 1)) & 0xF7 | (8 * (((v14 == 32) ^ (v15 + 49)) & 1))) ^ v15)))();
}

void sub_1000558B8(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 62097897 - 2 * (a1 & 0x3B389E9)) ^ 0x179C1472));
  __asm { BRAA            X9, X17 }
}

void sub_100055AF0()
{
  v5 = *(v4 + 88) + 128;
  *(v4 + 392) = v5;
  v6 = 1785193651 * ((2 * ((v3 - 200) & 0x5834C330) - (v3 - 200) - 1479852855) ^ 0xB417D0E9);
  *(v3 - 192) = v5;
  *(v3 - 196) = v6 + v1 - 562358948;
  *(v3 - 184) = v6 ^ 0x942D0C24;
  v7 = v0;
  (*(v2 + 8 * (v1 + 2212)))(v3 - 200);
  STACK[0x4C0] = *(v2 + 8 * v1);
  STACK[0x288] = v7;
  JUMPOUT(0x10000E390);
}

uint64_t sub_100055BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v22 = 1037613739 * ((-340959559 - ((v21 - 120) | 0xEBAD5EB9) + ((v21 - 120) | 0x1452A146)) ^ 0xC5508C39);
  *(v21 - 104) = v22 + v20 + 1005;
  *(v21 - 112) = &a18;
  *(v21 - 120) = (((2 * v18) & 0xDFFB7F62) - 545263232 + (v18 ^ 0x6FFDBE75 ^ (v20 + 216318393) & 0xF31B3BFC)) ^ v22;
  v23 = (*(v19 + 8 * (v20 + 1295)))(v21 - 120);
  return sub_100055CB8(v23);
}

uint64_t sub_100055CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v20 - 112) = &a16;
  *(v20 - 104) = a15;
  *(v20 - 120) = (v17 + 1730) ^ (((((2 * (v20 - 120)) | 0xE09E9A4A) - (v20 - 120) + 263238363) ^ 0xAC0219A0) * v18);
  v21 = (*(v16 + 8 * (v17 + 1876)))(v20 - 120);
  return (*(v16 + 8 * ((19 * (((v17 ^ (*(v20 - 116) > ((v17 + 224) ^ (v19 + 604)))) & 1) == 0)) ^ v17)))(v21);
}

uint64_t sub_100055FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = (a13 + v15);
  *(v18 - 1) = v17;
  *v18 = v17;
  return (*(v16 + 8 * ((((v13 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v14 - 41) | 0x29) ^ 0x7DF)) ^ (v14 - 343))))();
}

uint64_t sub_100056038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71 + 1124;
  v74 = (*(v72 + 8 * (v71 ^ 0xB8A)))(*STACK[0x200], a2, LODWORD(STACK[0x2C8]));
  return (*(v72 + 8 * (((LODWORD(STACK[0x43C]) != ((v73 - 1567) ^ 0xE8A0F003)) * (((v73 - 1417) | 0xC) - 326)) ^ v73)))(v74, a71);
}

uint64_t sub_1000560CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = (v17 + 1824) ^ (((v20 - 1669286860 - 2 * ((v20 - 136) & 0x9C80B4BC)) ^ 0xC0CDE039) * v18);
  *(v20 - 128) = &a17;
  *(v20 - 120) = a16;
  v21 = (*(v19 + 8 * (v17 + 1970)))(v20 - 136);
  return (*(v19 + 8 * (((*(v20 - 132) > 0x26799477u) * (v17 - 346)) ^ v17)))(v21);
}

uint64_t sub_10005615C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_100056174()
{
  if (v0)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((60 * v4) ^ 0x5D2u)))();
}

uint64_t sub_100056270@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v7 = (a1 + (v4 - 1));
  v8 = -1908612391 * ((*(*STACK[0x288] + (*STACK[0x280] & (((v3 + 16) ^ 0x38C) - 1276220572))) ^ v7) & 0x7FFFFFFF);
  v9 = -1908612391 * (v8 ^ HIWORD(v8));
  v10 = *(*(v6 + 8 * (v3 ^ 0x376)) + (v9 >> 24) - 10);
  v11 = -123 * BYTE3(v9);
  v12 = *(*(v6 + 8 * (v3 - 770)) + (v9 >> 24));
  v13 = *(*(v6 + 8 * (v3 - 740)) + (v9 >> 24) - 8) ^ (a2 >> v2) ^ v10 ^ v12 ^ v9;
  LODWORD(v9) = (*(*(v6 + 8 * (v3 - 740)) + (v9 >> 24) - 8) ^ (a2 >> v2) ^ v10 ^ v12 ^ v9);
  *v7 = v11 ^ v13;
  return (*(v5 + 8 * ((254 * (v4 != (v9 != v11))) ^ v3)))();
}

_BYTE *sub_10005634C(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t sub_1000564C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v14 = (v13 + 4 * v9);
  v15 = v9 + 1;
  v16 = *(v13 + 4 * v15);
  v17 = v14[397] ^ ((v16 & 0x7FFFFFFE | v8 & 0x80000000) >> 1);
  *v14 = (v17 + v11 - ((((v7 + a5) | a6) + a7) & (2 * v17))) ^ *(v12 + 4 * (v16 & 1));
  return (*(v10 + 8 * (((v15 == 227) * a3) ^ v7)))();
}

uint64_t sub_10005652C@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v10 = v4 < v5;
  *(v9 - 220 + a2) = *(a1 + v2) - ((2 * *(a1 + v2)) & 0x66) + 51;
  v11 = v2 + 1;
  if (v10 == v11 > v8 + v6)
  {
    v10 = v11 + v5 < v4;
  }

  return (*(v7 + 8 * ((976 * v10) ^ v3)))();
}

char *sub_1000566DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1001B2FA0(a3, result);
  }

  return result;
}

char *sub_1000566FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1001B2FA0(a3, result);
  }

  return result;
}

uint64_t sub_10005671C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_10005676C(uint64_t a1@<X8>)
{
  sub_100007688();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  +[GKPreferences setupForGameDaemon];
  v1 = +[GKPreferences shared];
  v2 = [v1 lockedDown];

  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Lockdown Mode is enabled. Exiting.", &v21, 2u);
    }

    objc_autoreleasePoolPop(v0);
    return 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "^^^^^^^^^^^^^^^^^^", &v21, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "| GAMED STARTING |", &v21, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "vvvvvvvvvvvvvvvvvv", &v21, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = GKFrameworkVersionDescription();
      v16 = +[GKPreferences shared];
      v17 = [v16 isInternalBuild];
      v18 = @"NO";
      if (v17)
      {
        v18 = @"YES";
      }

      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Frameworks Versions:\n%@\nInternal Build:%@", &v21, 0x16u);
    }

    GKDaemonRun();
    v19 = +[GKNetworkRequestManager commonNetworkRequestManager];
    objc_autoreleasePoolPop(v0);
    v20 = +[NSRunLoop mainRunLoop];
    [v20 run];

    return 0xFFFFFFFFLL;
  }
}

void sub_100057944(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100057AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transport];
  v5 = [v4 storeBag];
  v6 = *(a1 + 40);
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100057BD8;
  v9[3] = &unk_100360ED8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v5 getValuesForKeys:v6 queue:v7 completion:v9];
}

uint64_t sub_100057BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_100057E70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 56) clientProxy];
  v5 = [v6 replyQueue];
  [NSData _gkLoadRemoteImageDataForURL:v2 subdirectory:v3 filename:v4 queue:v5 handler:*(a1 + 64)];
}

void sub_100057F04(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_FAULT))
    {
      sub_1002870EC();
    }

    v5 = *(a1 + 40);
    v6 = +[NSData data];
    (*(v5 + 16))(v5, v6);
  }
}

void sub_1000581B0(id *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000582A0;
  v6[3] = &unk_100360F78;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000582A0(uint64_t a1)
{
  v2 = GKImageCachePathForSubdirectoryAndFilename();
  if (v2)
  {
    [*(a1 + 48) _gkWriteToImageCacheWithURLString:v2];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100287164();
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100058550(id *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100058640;
  v6[3] = &unk_100360F78;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_100058640(uint64_t a1)
{
  v2 = GKImageCachePathForSubdirectoryAndFilename();
  if ([v2 containsString:@"../"])
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002871E0();
    }
  }

  else
  {
    v4 = [[NSData alloc] initWithContentsOfFile:v2];
    if ([v4 length])
    {
      [*(a1 + 48) setResult:v4];
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100058718(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void sub_10005893C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058A18;
  block[3] = &unk_100360FC8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_100058A18(uint64_t a1)
{
  v2 = GKImageCachePathForSubdirectoryAndFilename();
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v8 = 0;
    [v5 removeItemAtPath:v2 error:&v8];
    v6 = v8;

    if (v6)
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100287248();
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100058D80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ampController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100058E44;
  v6[3] = &unk_100361018;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 getBagWithCompletion:v6];
}

uint64_t sub_100058E44(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100058E8C(id *a1)
{
  v2 = [a1[4] result];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 doubleForKey:@"metrics/impressions/viewableThreshold"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100058FC4;
    v14[3] = &unk_100361040;
    v15 = a1[5];
    v16 = a1[6];
    [v4 valueWithCompletion:v14];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002872B4(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    (*(a1[6] + 2))();
  }
}

void sub_100058FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059074;
  v7[3] = &unk_100360EB0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100059074(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 32) doubleValue];
  v3 = [NSNumber numberWithDouble:v2 / 1000.0];
  (*(v1 + 16))(v1, v3);
}

void sub_100059714(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v6 = +[GKAMPController controller];
    v4 = [*(a1 + 32) clientProxy];
    v5 = [v4 originalBundleIdentifier];
    [v6 reportClickStreamEventWithHostAppBundleId:v5 metricsFields:v3];
  }
}

void sub_100059890(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v6 = +[GKAMPController controller];
    v4 = [*(a1 + 32) clientProxy];
    v5 = [v4 originalBundleIdentifier];
    [v6 reportClickStreamEventWithHostAppBundleId:v5 metricsFields:v3];
  }
}

void sub_1000599CC(uint64_t a1)
{
  v2 = [*(a1 + 32) overlayServiceUtils];
  [v2 emitMultiplayerEventWithMessage:*(a1 + 40)];
}

void sub_100059B70(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) scheme];
  v4 = [v3 isEqualToString:@"https"];

  if (v4)
  {
    v5 = [*(a1 + 40) clientProxy];
    v6 = [v5 bundleIdentifier];

    if (!v6)
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100287358();
      }
    }

    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *v2;
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Opening HTTPs universal link: %@, for bundleID: %@", buf, 0x16u);
    }

    v11 = objc_opt_new();
    v12 = [v11 openApplicationWithBundleIdentifier:v6 payloadURL:*v2 universalLinkRequired:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100059E28;
    v16[3] = &unk_1003610E0;
    v17 = *v2;
    [v12 addSuccessBlock:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100059FA8;
    v14[3] = &unk_100361108;
    v15 = *v2;
    [v12 addErrorBlock:v14];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002872EC();
    }
  }
}

void sub_100059E28(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  if (v3 == 1)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      v7 = "ASCAppLaunchTrampoline: Successfully opened app product page from universal link: %@";
      goto LABEL_15;
    }
  }

  else if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      v7 = "ASCAppLaunchTrampoline: Successfully trampolined with unknown result from universal link: %@";
      goto LABEL_15;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v12 = 138412290;
      v13 = v6;
      v7 = "ASCAppLaunchTrampoline: Successfully launched app from universal link: %@";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v12, 0xCu);
    }
  }
}

void sub_100059FA8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
  {
    sub_1002873C4();
  }
}

void sub_10005AB18(id a1)
{
  qword_1003B90F0 = objc_alloc_init(GKFriendSuggestionDenier);

  _objc_release_x1();
}

uint64_t sub_10005B050(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"NewsApp";
    }

    return (*(result + 16))(result, 0, &off_100382358, v4);
  }

  return result;
}

void sub_10005B08C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v4 handleURL:*(a1 + 32)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005B1F0;
  v11[3] = &unk_100361170;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = v3;
  v14 = v6;
  [v5 addSuccessBlock:v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005B428;
  v8[3] = &unk_100361198;
  v9 = *(a1 + 48);
  v10 = v6;
  v7 = v6;
  [v5 addErrorBlock:v8];
}

void sub_10005B1F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intValue];
  if (v4 == 1)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ASCAppLaunchTrampoline: Successfully opened app product page", buf, 2u);
    }

    if (!*(a1 + 32))
    {
      v11 = @"com.apple.AppStore";
      goto LABEL_23;
    }

    v8 = [NSString stringWithFormat:@"https://apps.apple.com/app/id%@", *(a1 + 32)];
    goto LABEL_16;
  }

  if (!v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ASCAppLaunchTrampoline: Successfully launched app", buf, 2u);
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = @"thirdPartyApp";
    }

    v8 = v7;
LABEL_16:
    v11 = v8;
    goto LABEL_23;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "ASCAppLaunchTrampoline: Successfully trampolined with unknown result", buf, 2u);
  }

  v11 = @"unknown";
LABEL_23:
  v16[0] = @"code";
  v16[1] = @"targetId";
  v17[0] = v3;
  v17[1] = v11;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [*(a1 + 40) setResult:v14];

  (*(*(a1 + 48) + 16))();
}

void sub_10005B428(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ASCAppLaunchTrampoline: Trampoline failed because of: %@", &v6, 0xCu);
  }

  [*(a1 + 32) setError:v3];
  (*(*(a1 + 40) + 16))();
}

void sub_10005B518(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) error];
  v3 = [*(a1 + 32) result];
  v4 = [v3 objectForKeyedSubscript:@"code"];
  v5 = [*(a1 + 32) result];
  v6 = [v5 objectForKeyedSubscript:@"targetId"];
  (*(v2 + 16))(v2, v7, v4, v6);
}

void sub_10005BC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005BC44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005BC5C(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 bundleIdentifier];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_10005BF44(uint64_t a1)
{
  v2 = *(a1 + 40);
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"playerID"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"authToken"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"accountName"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"pushToken"];
  v6 = [*(a1 + 32) result];
  v7 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v8, v3, v4, v5, v6, v7);
}

void sub_10005C188(id a1)
{
  v1 = +[GKDataRequestManager sharedManager];
  [v1 terminate];
}

void sub_10005C2C8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100287550();
    }
  }
}

void sub_10005C564(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100287620();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028768C();
    }
  }
}

void sub_10005C81C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005C8B0;
  v2[3] = &unk_100361270;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [GKClientProxy removeAllCachesWithHandler:v2];
}

void sub_10005C8B0(uint64_t a1)
{
  v2 = GKInsecureCacheRoot();
  [GKUtilityServicePrivate removeCacheDirectory:v2];

  v3 = GKSupportDataRoot();
  [GKUtilityServicePrivate removeCacheDirectory:v3];

  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C9AC;
  block[3] = &unk_100360FA0;
  v7 = *(a1 + 40);
  dispatch_async(v5, block);
}

void sub_10005CA74(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CB2C;
  block[3] = &unk_100360FA0;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void sub_10005CFFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ampController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005D0C0;
  v6[3] = &unk_100361018;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 getBagWithCompletion:v6];
}

uint64_t sub_10005D0C0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10005D108(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringForKey:GKArcadeProductFamilyId];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005D24C;
    v17[3] = &unk_100361370;
    v5 = *(a1 + 48);
    v17[4] = *(a1 + 40);
    v18 = v5;
    [v4 valueWithCompletion:v17];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100287760(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = *(a1 + 48);
    v16 = [*(a1 + 32) error];
    (*(v15 + 16))(v15, v16);
  }
}

void sub_10005D24C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D324;
  block[3] = &unk_100360FC8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void sub_10005D324(id *a1)
{
  v2 = a1[4];
  v3 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1197, "[GKUtilityServicePrivate checkAndUpdateArcadeSubscriberStatusWithHandler:]_block_invoke_2"];
  v4 = [v2 transactionGroupWithName:v3];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005D4BC;
  v15[3] = &unk_100361348;
  v5 = a1[5];
  v6 = a1[4];
  v16 = v5;
  v17 = v6;
  v7 = v4;
  v18 = v7;
  [v7 performOnManagedObjectContext:v15];
  v8 = [a1[4] clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005D9A8;
  v12[3] = &unk_100360EB0;
  v10 = a1[6];
  v13 = v7;
  v14 = v10;
  v11 = v7;
  [v11 notifyOnQueue:v9 block:v12];
}

void sub_10005D4BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v7 = [v6 isArcadeSubscriber];
  v8 = +[ASDSubscriptionEntitlements sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005D5D8;
  v13[3] = &unk_100361320;
  v9 = *(a1 + 32);
  v18 = v7;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v17 = v5;
  v16 = v11;
  v12 = v5;
  [v8 getSubscriptionEntitlementsForSegment:1 ignoreCaches:0 withResultHandler:v13];
}

void sub_10005D5D8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_100287798();
    }

    [*(a1 + 48) setError:v7];
    (*(*(a1 + 56) + 16))();
    goto LABEL_36;
  }

  if ([v6 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v27 = v6;
      v11 = *v31;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = [v13 familyID];
          v15 = [v14 stringValue];
          v16 = [v15 isEqualToString:*(a1 + 32)];

          if (v16)
          {
            v18 = [v13 expiryDate];
            [v18 timeIntervalSinceNow];
            v20 = v19;

            if (v20 <= 0.0)
            {
              v10 = 0;
            }

            else
            {
              v10 = [v13 expiryDate];
            }

            v6 = v27;
            v17 = v13;
            goto LABEL_23;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v17 = 0;
      v6 = v27;
    }

    else
    {
      v17 = 0;
    }

LABEL_23:
  }

  else
  {
    v17 = 0;
    v10 = 0;
  }

  v21 = *(a1 + 64);
  if (v21 != 1 || v10)
  {
    if ((v21 & 1) != 0 || !v10)
    {
      goto LABEL_31;
    }

    v22 = [(GKService *)GKProfileServicePrivate serviceFromService:*(a1 + 40)];
    [v22 setArcadeSubscriptionExpiration:v10 handler:&stru_1003612F8];
  }

  else
  {
    v22 = [(GKService *)GKProfileServicePrivate serviceFromService:*(a1 + 40)];
    v23 = [NSDate dateWithTimeIntervalSince1970:0.0];
    [v22 setArcadeSubscriptionExpiration:v23 handler:&stru_1003612D8];
  }

LABEL_31:
  if (!os_log_GKGeneral)
  {
    v24 = GKOSLoggers();
  }

  v25 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "checkAndUpdateArcadeSubscriberStatusWithHandler: updating arcade subscription state with entitlement %@", buf, 0xCu);
  }

  v26 = +[GKPreferences shared];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10005D998;
  v28[3] = &unk_100360FA0;
  v29 = *(a1 + 56);
  [v26 updateArcadeSubscriptionState:v17 completionHandler:v28];

LABEL_36:
}

void sub_10005D9A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10005DB58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKFriendSuggester alloc];
  v5 = [v3 contactIDs];

  v6 = [GKFriendSuggesterSettingsProvider alloc];
  v7 = [*(a1 + 32) transport];
  v8 = [v7 storeBag];
  v9 = [(GKFriendSuggesterSettingsProvider *)v6 initWithStoreBag:v8];
  v10 = [(GKFriendSuggester *)v4 initWithDeniedContactIDs:v5 settingsProvider:v9];

  (*(*(a1 + 40) + 16))();
}

void sub_10005DCDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKContactsIntegrationController sharedController];
  v5 = *(a1 + 32);
  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1282, "[GKUtilityServicePrivate rerankedFriendSuggestionsHandlesWithHandler:]_block_invoke"];
  v7 = [v5 transactionGroupWithName:v6];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005DEB4;
  v17[3] = &unk_100361348;
  v8 = v7;
  v18 = v8;
  v19 = v3;
  v20 = v4;
  v9 = v4;
  v10 = v3;
  [v8 performOnManagedObjectContext:v17];
  v11 = [*(a1 + 32) clientProxy];
  v12 = [v11 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005DF40;
  v14[3] = &unk_100361270;
  v15 = v8;
  v16 = *(a1 + 40);
  v13 = v8;
  [v13 notifyOnQueue:v12 block:v14];
}

void sub_10005DEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = a3;
  v7 = [v5 rerankedHandlesWithContactsIntegrationController:v6 context:a2];
  [*(a1 + 32) setResult:v7];

  v8[2]();
}

void sub_10005DF40(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  (*(*(a1 + 40) + 16))();
}

void sub_10005E058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005E12C;
  v8[3] = &unk_100360EB0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_10005E12C(uint64_t a1)
{
  v6[0] = @"contactIDs";
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) contactIDs];
  v6[1] = @"playerIDs";
  v7[0] = v3;
  v4 = [*(a1 + 32) playerIDs];
  v7[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  (*(v2 + 16))(v2, v5);
}

void sub_10005E414(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v7 = GKDeniedPlayerIdKey;
  v8 = v3;
  v5 = a2;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 handleFriendSuggestionDenialWithNotificationPayload:v6 error:v5 handler:a1[6]];
}

void sub_10005E6DC(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v7 = GKBlacklistedContactIdKey;
  v8 = v3;
  v5 = a2;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 handleFriendSuggestionDenialWithNotificationPayload:v6 error:v5 handler:a1[6]];
}

uint64_t sub_10005E8A4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E958;
    v3[3] = &unk_100361410;
    v4 = *(a1 + 40);
    [GKClientProxy enumerateClientsUsingBlock:v3];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10005EA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _gkMapWithBlock:&stru_100361450];
  v5 = [(GKService *)GKProfileServicePrivate serviceFromService:*(a1 + 32)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005EB34;
  v8[3] = &unk_100361478;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v4 withCompletion:v8];
}

void sub_10005EB34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_100287800();
    }
  }

  v8 = *(a1 + 40);
  v9 = [GKUtilityServicePrivate serializeFriendSuggestions:*(a1 + 32) contactIDsSupportingPushFriending:v5];
  (*(v8 + 16))(v8, v9);
}

void sub_10005EF10(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) contactIDsFromSuggestions:a2];
  v4 = [NSOrderedSet orderedSetWithArray:v3];
  v5 = [v4 array];

  (*(*(a1 + 40) + 16))();
}

void sub_10005F03C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1447, "[GKUtilityServicePrivate fetchFriendSuggestionsWithHandler:]_block_invoke"];
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005F1F0;
  v15[3] = &unk_100360F00;
  v15[4] = *(a1 + 32);
  v16 = v3;
  v6 = v5;
  v17 = v6;
  v7 = v3;
  [v6 perform:v15];
  v8 = [*(a1 + 32) clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005F4B4;
  v12[3] = &unk_100360EB0;
  v10 = *(a1 + 40);
  v13 = v6;
  v14 = v10;
  v11 = v6;
  [v11 notifyOnQueue:v9 block:v12];
}

void sub_10005F1F0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005F3CC;
  v15[3] = &unk_1003614E8;
  objc_copyWeak(&v16, &location);
  v4 = objc_retainBlock(v15);
  v5 = [GKRerankNetworkRequester alloc];
  v6 = [*(a1 + 32) clientProxy];
  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [(GKRerankNetworkRequester *)v5 initWithClientProxy:v6 networkManager:v7 transactionGroupProvider:v4];

  v9 = +[GKContactsIntegrationController sharedController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005F46C;
  v12[3] = &unk_1003614A0;
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v11 = v3;
  v14 = v11;
  [v10 suggestionsWithRerankRequester:v8 contactsIntegrationController:v9 transactionGroupProvider:v4 handler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void sub_10005F3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10005F3CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1454, "[GKUtilityServicePrivate fetchFriendSuggestionsWithHandler:]_block_invoke_3"];
  v3 = [WeakRetained transactionGroupWithName:v2];

  return v3;
}

uint64_t sub_10005F46C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10005F4B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void sub_10005F5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1485, "[GKUtilityServicePrivate getGameInviteFriendSuggestionsWithHandler:]_block_invoke"];
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005F758;
  v14[3] = &unk_100360FF0;
  v15 = v3;
  v6 = v5;
  v16 = v6;
  v7 = v3;
  [v6 perform:v14];
  v8 = [*(a1 + 32) clientProxy];
  v9 = [v8 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005F850;
  v11[3] = &unk_100361270;
  v12 = v6;
  v13 = *(a1 + 40);
  v10 = v6;
  [v10 notifyOnQueue:v9 block:v11];
}

void sub_10005F758(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005F808;
  v6[3] = &unk_1003614A0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 gameInviteSuggestionsWithHandler:v6];
}

uint64_t sub_10005F808(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10005F850(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  (*(*(a1 + 40) + 16))();
}

void sub_10005FAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = GKBagKeyWidgetDrawerActivityLivePreview;
  v12[1] = GKBagKeyWidgetDrawerActivityTTL;
  v4 = [NSArray arrayWithObjects:v12 count:2];
  v5 = [*(a1 + 32) transport];
  v6 = [v5 storeBag];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005FC50;
  v9[3] = &unk_100360ED8;
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v6 getValuesForKeys:v4 queue:v7 completion:v9];
}

uint64_t sub_10005FC50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_10005FCC0(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = GKBagKeyWidgetDrawerActivityTTL;
  v4 = [v2 objectForKeyedSubscript:GKBagKeyWidgetDrawerActivityTTL];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &off_100382370;
  }

  v14 = v6;

  v7 = [*(a1 + 32) result];
  v8 = [v7 objectForKeyedSubscript:v3];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &off_100382370;
  }

  v11 = v10;

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) error];
  (*(v12 + 16))(v12, v13, v14, v11);
}

void sub_100060328(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000604C4;
    v8[3] = &unk_100361588;
    v4 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v4;
    [a2 createSnapshotWithCompletion:v8];
    v5 = v9;
  }

  else
  {
    v6 = [*(a1 + 32) clientProxy];
    v7 = [v6 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100060450;
    block[3] = &unk_100360FA0;
    v11 = *(a1 + 40);
    dispatch_async(v7, block);

    v5 = v11;
  }
}

void sub_100060450(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError serverErrorForCode:2 withReason:@"No bag available"];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000604C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) clientProxy];
    v7 = [v6 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006061C;
    block[3] = &unk_100360EB0;
    v15 = *(a1 + 40);
    v14 = v5;
    dispatch_async(v7, block);

    v8 = v15;
  }

  else
  {
    v9 = [a2 compile];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100060634;
    v11[3] = &unk_100361560;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 addFinishBlock:v11];

    v8 = v12;
  }
}

void sub_100060634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060734;
  block[3] = &unk_100361538;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100060A50(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v11 = [NSPredicate predicateWithFormat:@"wasViewed == NO"];
    v12 = [*(a1 + 32) context];
    v13 = [(GKCacheObject *)GKFriendRequestListEntryCacheObject objectsMatchingPredicate:v11 context:v12];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v13;
    v14 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * i) setWasViewed:{1, v21}];
        }

        v15 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    goto LABEL_18;
  }

  if (!v2)
  {
    v3 = [NSPredicate predicateWithFormat:@"wasViewed == NO"];
    v4 = [*(a1 + 32) context];
    v5 = [(GKCacheObject *)GKChallengeCacheObject objectsMatchingPredicate:v3 context:v4];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (j = 0; j != v8; j = j + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v25 + 1) + 8 * j) setWasViewed:1];
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

LABEL_18:
  }

  v18 = +[GKBadgeController sharedController];
  [v18 setBadgeCount:0 forBundleID:GKGameCenterIdentifier badgeType:*(a1 + 48)];
  v19 = [*(a1 + 40) clientProxy];
  v20 = [v19 bundleIdentifier];
  [v18 setBadgeCount:0 forBundleID:v20 badgeType:*(a1 + 48)];
}

void sub_100061468(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientProxy];
  (*(v1 + 16))(v1, [v2 isAppDistributorThirdParty]);
}

uint64_t sub_100061750(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100061848(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100061CE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100061DE8;
  v10[3] = &unk_100361648;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v14 = *(a1 + 56);
  v13 = v3;
  v9 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-logout-user" clientProxy:v6 handler:v10];
}

void sub_100061DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setError:v4];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "gk-logout-user result:%@", buf, 0xCu);
  }

  v7 = [*(a1 + 40) credential];
  v8 = [v7 altDSID];
  v9 = [v8 copy];

  v10 = [*(a1 + 40) credential];
  v11 = [v10 DSID];
  if (v11)
  {
    v12 = [*(a1 + 40) credential];
    v13 = [v12 DSID];
    v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 longLongValue]);
  }

  else
  {
    v14 = 0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100062300;
  v32[3] = &unk_100360FF0;
  v30 = *(a1 + 32);
  v15 = v30.i64[0];
  v33 = vextq_s8(v30, v30, 8uLL);
  [GKDispatchGroup waitUntilDone:v32];
  v16 = [*(a1 + 32) error];

  if (!v16)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "telling authkit DSID %@ is no longer in use", buf, 0xCu);
    }

    v19 = objc_alloc_init(AKAppleIDAuthenticationController);
    if (v9)
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      v21 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKAuth:telling authkit account is not in use using altDSID:%@", buf, 0xCu);
      }

      [v19 setAppleIDWithAltDSID:v9 inUse:0 forService:{6, *&v30}];
    }

    else if (v14)
    {
      if (!os_log_GKGeneral)
      {
        v22 = GKOSLoggers();
      }

      v23 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "GKAuth:telling authkit account is not in use using DSID:%@", buf, 0xCu);
      }

      [v19 setAppleIDWithDSID:v14 inUse:0 forService:{6, *&v30}];
    }

    [*(a1 + 40) notifyWidgetPlayerAuthenticationUpdated];
  }

  v24 = +[GKContactsIntegrationController sharedController];
  [v24 clearCachesWithCompletionHandler:&stru_1003615F8];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000625D4;
  v31[3] = &unk_100361620;
  v25 = *(a1 + 32);
  v31[4] = *(a1 + 40);
  [v25 perform:v31];
  v26 = [objc_opt_class() standardUserDefaults];
  [v26 removeObjectForKey:@"GKLastPushTokenPlayerID"];
  [v26 removeObjectForKey:@"GKLastPushTokenEnvironment"];
  [v26 removeObjectForKey:@"GKLastPushTokenKey"];
  [v26 removeObjectForKey:@"GKLastPushTokenDateKey"];
  if (*(a1 + 56) == 1)
  {
    [v26 setBool:1 forKey:GKOptedOutOfGameCenter];
  }

  else
  {
    [v26 removeObjectForKey:GKOptedOutOfGameCenter];
  }

  [v26 synchronize];
  v27 = +[GKBadgeController sharedController];
  [v27 unbadgeAllApplications];

  v28 = +[GKReporter reporter];
  [v28 reportEvent:GKReporterDomainLogin type:GKLoginSignOut];

  v29 = [*(a1 + 40) ampController];
  [v29 updateMetadataWithLocalPlayer:0];

  (*(*(a1 + 48) + 16))();
}

void sub_100062300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = [*(a1 + 32) credential];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000623E8;
  v9[3] = &unk_1003613E8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v4 removeCredential:v5 completionHandler:v9];
}

void sub_1000623E8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setError:v3];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v9[0] = 67109120;
    v9[1] = [v3 code];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAccountService signOutPlayerWithOptOut: removeCred (error:%d)", v9, 8u);
  }

  [*(a1 + 40) setCredential:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKAccount;
  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
  {
    sub_1002878A4(v8);
  }

  +[GKClientProxy authenticationDidChange];
  (*(*(a1 + 48) + 16))();
}

void sub_100062544(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Finished clearing contacts cache while signing out", v5, 2u);
  }
}

void sub_1000625D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) localPlayer];
  v5 = [v4 playerID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000626A4;
  v7[3] = &unk_100360FA0;
  v8 = v3;
  v6 = v3;
  [GKClientProxy removeCacheForPlayerID:v5 completion:v7];
}

uint64_t sub_1000626A4(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100287934();
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100062718(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKAccountService signOutPlayerWithOptOut: notify", v6, 2u);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5);
}

void sub_100062C88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [GKAccountServicePrivate lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [NSNumber numberWithUnsignedInteger:v8];
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler: WhatsNew copy version displayed: %@", &v14, 0xCu);
  }

  v13 = [NSNumber numberWithUnsignedInteger:v8];
  [*(a1 + 40) setResult:v13];

  [*(a1 + 40) setError:0];
  v4[2](v4);
}

void sub_100062E20(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v3 = [v5 unsignedIntegerValue];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10006338C(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
  {
    sub_100287970();
  }
}

void sub_100063584(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [GKAccountServicePrivate lastPrivacyNoticeVersionDisplayedForPlayerID:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [NSNumber numberWithUnsignedInteger:v8];
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler: Privacy notice version displayed: %@", &v14, 0xCu);
  }

  v13 = [NSNumber numberWithUnsignedInteger:v8];
  [*(a1 + 40) setResult:v13];

  [*(a1 + 40) setError:0];
  v4[2](v4);
}

void sub_10006371C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v3 = [v5 unsignedIntegerValue];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100063B24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [GKAccountServicePrivate lastPersonalizationVersionDisplayedForPlayerID:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler: personalization version displayed: %@", &v11, 0xCu);
  }

  [*(a1 + 40) setResult:v8];
  [*(a1 + 40) setError:0];
  v4[2](v4);
}

void sub_100063C80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100063E90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [GKAccountServicePrivate lastProfilePrivacyVersionDisplayedForPlayerID:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler: profile privacy version displayed: %@", &v11, 0xCu);
  }

  [*(a1 + 40) setResult:v8];
  [*(a1 + 40) setError:0];
  v4[2](v4);
}

void sub_100063FEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000643E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [GKAccountServicePrivate lastFriendSuggestionsVersionDisplayedForPlayerID:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler: profile privacy version displayed: %@", &v11, 0xCu);
  }

  [*(a1 + 40) setResult:v8];
  [*(a1 + 40) setError:0];
  v4[2](v4);
}

void sub_100064540(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100064938(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];
  v8 = [GKAccountServicePrivate lastContactsIntegrationConsentVersionDisplayedForPlayerID:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler: Contacts Integration Consent version displayed: %@", &v11, 0xCu);
  }

  [*(a1 + 40) setResult:v8];
  [*(a1 + 40) setError:0];
  v4[2](v4);
}

void sub_100064A94(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000666CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      sub_100287AE4();
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    else if (!v5)
    {
LABEL_13:
      v8 = *(*(a1 + 40) + 16);
      goto LABEL_14;
    }

    v10 = [*(a1 + 32) clientProxy];
    v11 = [v10 bundleIdentifier];
    [GKCloudKitMultiplayerUtils isCloudDriveEnabledForBundleID:v11];

    goto LABEL_13;
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
  {
    sub_100287A7C();
  }

  v8 = *(*(a1 + 40) + 16);
LABEL_14:
  v8();
}

void sub_100066A64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKChallengeServicePrivate serviceFromService:*(a1 + 32)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066B18;
  v6[3] = &unk_1003616E0;
  v7 = v3;
  v5 = v3;
  [v4 getCountOfChallengesWithHandler:v6];
}

void sub_100066B28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) clientProxy];
  v6 = [v5 bundleIdentifier];
  v7 = [*(a1 + 40) context];
  v8 = [GKGameCacheObject gameForBundleID:v6 context:v7];

  if ([v8 supportsTurnBasedMultiplayer])
  {
    v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v10 = [*(a1 + 32) clientProxy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100066C84;
    v11[3] = &unk_1003615D8;
    v12 = v4;
    [v9 issueRequest:0 bagKey:@"gk-tb-get-turn-counts" clientProxy:v10 handler:v11];
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t sub_100066C84(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v13 = a1;
    [a2 objectForKey:@"turn-counts"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v18 = 0u;
    v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 objectForKey:@"turn-count"];
          v9 = [v7 objectForKey:@"game-descriptor"];
          v10 = [v9 objectForKey:@"bundle-id"];
          if (v10)
          {
            v11 = +[GKBadgeController sharedController];
            [v11 setBadgeCount:objc_msgSend(v8 forBundleID:"unsignedIntegerValue") badgeType:{v10, 2}];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    a1 = v13;
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100066E40(uint64_t a1)
{
  v3 = +[GKBadgeController sharedController];
  [v3 badgeAllApplications];
  v2 = [*(a1 + 32) bundleIdentifier];
  [v3 registerBadgePermissionForBundleID:v2 completionHandler:&stru_100361748];
}

void sub_10006705C(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKAccountService _authenticateUsername", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_authenticateUsername:%@", buf, 0xCu);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 865, "[GKAccountServicePrivate _authenticateUsername:password:altDSID:validateOnly:handler:]_block_invoke"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = [NSError userErrorForServerCode:5000 reason:0];
  [v8 setError:v9];

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      if (*(a1 + 48))
      {
        v10 = *(a1 + 48);
      }

      v32[0] = @"username";
      v32[1] = @"password";
      v33[0] = v10;
      v33[1] = v11;
      v32[2] = @"validatePasswordOnly";
      v12 = [NSNumber numberWithBool:*(a1 + 72)];
      v33[2] = v12;
      v32[3] = @"udid";
      v13 = +[GKDevice currentDevice];
      v14 = [v13 udid];
      v33[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000674C4;
      v26[3] = &unk_1003617E8;
      v26[4] = *(a1 + 56);
      v27 = v15;
      v28 = v8;
      v29 = *(a1 + 32);
      v30 = *(a1 + 48);
      v31 = *(a1 + 72);
      v16 = v15;
      [v28 perform:v26];
    }
  }

  if (*(a1 + 64))
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "_authenticateUsername: notify", buf, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "_authenticateUsername: notify", buf, 2u);
    }

    v21 = [*(a1 + 56) clientProxy];
    v22 = [v21 replyQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100067F04;
    v23[3] = &unk_100360EB0;
    v25 = *(a1 + 64);
    v24 = v8;
    [v24 notifyOnQueue:v22 block:v23];
  }
}

void sub_1000674C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transport];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000675CC;
  v9[3] = &unk_1003617C0;
  v5 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v15 = *(a1 + 72);
  v14 = v3;
  v8 = v3;
  [v4 postRequest:v5 forBagKey:@"gk-authenticate-user" response:v9];
}

void sub_1000675CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100287B54();
    }
  }

  [*(a1 + 32) setError:v6];
  v8 = [v5 representedItem];
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_authenticateUsername:Result present for post request call for gk-authenticate-user", buf, 2u);
    }

    v11 = [v8 objectForKey:GKRequestStatusKey];
    v12 = [v11 integerValue];

    v13 = [v8 objectForKey:GKPlayerIDKey];
    v14 = [v8 objectForKey:@"alias"];
    v15 = [v8 objectForKey:@"auth-token"];
    v16 = v15;
    v35 = v12;
    if (v13 && v15)
    {
      v33 = v5;
      v32 = +[GKPlayerCredentialController sharedController];
      v17 = +[GKPlayerCredential internalRepresentation];
      +[GKLocalPlayerInternal internalRepresentation];
      v19 = v18 = v14;
      [v19 setPlayerID:v13];
      [v19 setAccountName:*(a1 + 40)];
      v34 = v18;
      [v19 setAlias:v18];
      if (*(a1 + 48))
      {
        [v17 setAltDSID:?];
      }

      [GKContactsIntegrationUserSettings applySettingsToObject:v19 fromResults:v8];
      [v17 setPlayerInternal:v19];
      [v17 setAuthenticationToken:v16];
      [v17 setAccountName:*(a1 + 40)];
      v20 = [*(a1 + 56) clientProxy];
      [v17 setEnvironment:{objc_msgSend(v20, "environment")}];

      if (v12 == 5029)
      {
        v21 = 12;
      }

      else
      {
        v21 = 14;
      }

      [v17 setScope:v21];
      v22 = [(GKService *)GKUtilityServicePrivate serviceFromService:*(a1 + 56)];
      v23 = [v22 credential];
      [v23 setAuthenticationToken:v16];

      v24 = *(a1 + 32);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100067A90;
      v36[3] = &unk_100360F00;
      v37 = v17;
      v38 = v32;
      v39 = v24;
      v25 = v32;
      v26 = v17;
      [v24 perform:v36];
      [*(a1 + 56) notifyWidgetPlayerAuthenticationUpdated];
      [*(a1 + 32) setObject:v26 forKeyedSubscript:@"credential"];

      v5 = v33;
    }

    else
    {
      v29 = [*(a1 + 32) error];

      if (v29)
      {
        goto LABEL_30;
      }

      if (!os_log_GKGeneral)
      {
        v30 = GKOSLoggers();
      }

      v34 = v14;
      v31 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "_authenticateUsername:Server Error when posting request for gk-authenticat-user", buf, 2u);
      }

      v19 = [NSError userErrorForServerCode:3 reason:@"no error, but missing playerID or token"];
      [*(a1 + 32) setError:v19];
    }

    v14 = v34;
LABEL_30:
    if (*(a1 + 72) == 1 && v35 == 5029)
    {
      [*(a1 + 32) setError:0];
    }

    goto LABEL_34;
  }

  if (!os_log_GKGeneral)
  {
    v27 = GKOSLoggers();
  }

  v28 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "_authenticateUsername:No result for Post request call", buf, 2u);
  }

LABEL_34:
  (*(*(a1 + 64) + 16))();
}

void sub_100067A90(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] altDSID];

  if (v4)
  {
    v6 = a1[4];
    v5 = a1[5];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100067EB8;
    v17[3] = &unk_100361198;
    v7 = &v18;
    v8 = &v19;
    v18 = a1[6];
    v19 = v3;
    v9 = v3;
    [v5 setPrimaryCredential:v6 completionHandler:v17];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = a1[4];
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "missing altDSID for credential:%@ will try to get it from IDMS", buf, 0xCu);
    }

    v13 = a1[4];
    v14 = a1[5];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100067CA4;
    v20[3] = &unk_100361798;
    v7 = &v21;
    v15 = v13;
    v21 = v15;
    v8 = &v22;
    v22 = a1[5];
    v23 = a1[6];
    v24 = v3;
    v16 = v3;
    [v14 getAltDSIDFromIDMSForCredential:v15 completionHandler:v20];
  }
}

void sub_100067CA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_5;
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100287BBC();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_5:
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "fixed the credential (%@) with a missing altDSID", buf, 0xCu);
  }

  [*(a1 + 32) setAltDSID:v5];
LABEL_11:
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100067E6C;
  v13[3] = &unk_100361198;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  [v11 setPrimaryCredential:v12 completionHandler:v13];
}

uint64_t sub_100067E6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_100067EB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100067F04(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"credential"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100068044(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) authenticationToken];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100068240(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000685F4;
  v30 = sub_100068604;
  v31 = +[GKAuthenticateResponse internalRepresentation];
  v2 = [*(a1 + 32) credential];
  v3 = [v2 playerInternal];
  v4 = [v3 playerID];
  [v27[5] setPlayerID:v4];

  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1191, "[GKAccountServicePrivate _constructAuthenticationResponseWithError:handler:]_block_invoke"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  [v6 setError:*(a1 + 40)];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v7 userInfo];
    v9 = [v8 objectForKey:GKServerStatusCode];

    if (v9 && [v9 integerValue] == 5047)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10006860C;
      v23[3] = &unk_100361860;
      v23[4] = *(a1 + 32);
      v24 = v6;
      v25 = &v26;
      [v24 perform:v23];
    }
  }

  v10 = [*(a1 + 32) credential];

  if (!v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_constructAuthenticationResponseWithError: no credential -- clearing appInit state", buf, 2u);
    }

    v13 = [*(a1 + 32) clientProxy];
    [v13 setAppInitState:@"GKAppInitUnknown"];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000687C4;
  v21[3] = &unk_1003618B0;
  v21[4] = *(a1 + 32);
  v21[5] = &v26;
  [v6 perform:v21];
  v14 = [*(a1 + 32) clientProxy];
  v15 = [v14 replyQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000688E4;
  v17[3] = &unk_1003618D8;
  v19 = *(a1 + 48);
  v20 = &v26;
  v16 = v6;
  v18 = v16;
  [v16 notifyOnQueue:v15 block:v17];

  _Block_object_dispose(&v26, 8);
}

uint64_t sub_1000685F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006860C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transport];
  v5 = [v4 storeBag];
  v6 = [*(a1 + 32) clientProxy];
  v7 = [v6 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100068720;
  v11[3] = &unk_100361838;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v3;
  v14 = v9;
  v12 = v8;
  v10 = v3;
  [v5 getURLForKey:@"ds-password-change-url" queue:v7 handler:v11];
}

void sub_100068720(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) setError:v5];
  }

  if (v6)
  {
    [*(*(*(a1 + 48) + 8) + 40) setPasswordChangeURL:v6];
    [*(*(*(a1 + 48) + 8) + 40) setPasswordChangeRequired:1];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000687C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006885C;
  v7[3] = &unk_100361888;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 _fetchLoginDisabledWithHandler:v7];
}

uint64_t sub_10006885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(*(*(a1 + 40) + 8) + 40) setLoginDisabled:a2];
  [*(*(*(a1 + 40) + 8) + 40) setSuppressLoginSheet:a3];
  [*(*(*(a1 + 40) + 8) + 40) setLoginBannerDisabled:a4];
  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void sub_1000688E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, v3);
}

id sub_100068AA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleID];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_100068FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:@"auth-token"];
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100287C94();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else if (v6)
  {
LABEL_5:
    v9 = +[GKPlayerCredentialController sharedController];
    v10 = [*(a1 + 32) credential];
    [v10 setAuthenticationToken:v6];
    [v10 setScope:{objc_msgSend(v10, "scope") | 2}];
    [v9 setCredential:v10 completionHandler:&stru_100361920];

    goto LABEL_11;
  }

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100287D04();
  }

LABEL_11:
}

void sub_1000690E8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100287D6C();
    }
  }
}

void sub_100069428(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) credential];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100069550;
  v13[3] = &unk_1003619E0;
  v12 = *(a1 + 40);
  v6 = *(a1 + 48);
  v17 = *(a1 + 64);
  v7 = *(a1 + 32);
  v18 = *(a1 + 72);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v12;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = v3;
  v11 = v3;
  [v4 initializeWithCredential:v5 completionHandler:v13];
}

void sub_100069550(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [a2 representedItem];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100069670;
  v11[3] = &unk_1003619B8;
  v12 = *(a1 + 40);
  v13 = v5;
  v18 = *(a1 + 72);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v19 = *(a1 + 80);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v10 = v5;
  [v6 _initGameForDebugModeAppWithResultDictionary:v7 completionHandler:v11];
}

void sub_100069670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 representedItem];
  [*(a1 + 32) setError:*(a1 + 40)];
  if ([*(a1 + 40) code] != 15)
  {
    v5 = [v4 objectForKey:@"status"];
    *(*(*(a1 + 80) + 8) + 24) = [v5 integerValue];

    v6 = [*(a1 + 32) context];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100069840;
    v18 = &unk_100361990;
    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    v7 = v4;
    v21 = v7;
    v8 = v3;
    v9 = *(a1 + 56);
    v22 = v8;
    v23 = v9;
    v24 = *(a1 + 88);
    [v6 performBlockAndWait:&v15];

    v10 = *(a1 + 64);
    v11 = [*(a1 + 56) clientProxy];
    v12 = [v11 replyQueue];
    [v10 sendPushTokenWithReplyQueue:v12];

    if (v7)
    {
      v13 = [v7 objectForKey:@"renew-auth-token"];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        [*(a1 + 56) renewAuthToken];
      }
    }
  }

  (*(*(a1 + 72) + 16))();
}

void sub_100069840(uint64_t a1)
{
  v2 = [*(a1 + 32) isGameCenter];
  v47 = [*(a1 + 32) bundleIdentifier];
  v3 = [*(a1 + 40) context];
  v4 = [GKGameCacheObject gameForBundleID:v47 context:v3];

  v5 = v4;
  if (*(a1 + 48))
  {
    [*(a1 + 56) TTL];
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    else
    {
      [*(a1 + 56) TTL];
      v7 = [NSDate dateWithTimeIntervalSinceNow:?];
    }

    v8 = [*(a1 + 48) objectForKey:@"game-metadata"];
    [v5 updateWithServerRepresentation:v8 expirationDate:v7];
  }

  v9 = [v5 name];

  if (!v9)
  {
    v10 = [*(a1 + 64) clientProxy];
    v11 = +[NSBundle _gkBundleWithPID:](NSBundle, "_gkBundleWithPID:", [v10 pid]);
    v12 = [v11 _gkLocalizedName];
    [v5 setName:v12];
  }

  v13 = *(a1 + 64);
  v14 = [*(a1 + 40) context];
  [v13 _syncPlayerOnboardingParametersInManagedObjectContext:v14 withServerResult:*(a1 + 56)];

  v15 = [*(a1 + 40) context];
  v16 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v15];

  v17 = [*(a1 + 56) representedItem];
  [GKContactsIntegrationUserSettings applySettingsToObject:v16 fromResults:v17];

  v18 = +[GKPlayerCredentialController sharedController];
  v19 = [v16 contactsAssociationID];
  v20 = [v16 contactsIntegrationConsent];
  v21 = [v16 serviceLastUpdatedTimestamp];
  v22 = [*(a1 + 64) clientProxy];
  [v18 setContactAssociationID:v19 contactIntegrationConsent:v20 serviceLastUpdateTimestamp:v21 forEnvironment:objc_msgSend(v22 forcefully:"environment") completionHandler:{0, &stru_100361968}];

  if (v2)
  {
    v23 = *(a1 + 64);
    v24 = [*(a1 + 40) context];
    [v23 _postLaunchEventsForGame:v5 moc:v24];
    v25 = v5;
  }

  else
  {
    v24 = [*(a1 + 48) objectForKey:@"game-metadata"];
    v26 = [v24 objectForKeyedSubscript:@"bundle-id"];
    v27 = [*(a1 + 40) context];
    v28 = [v16 playerID];
    [GKCachingUtils ensureGameInGamesPlayed:v27 playerID:v28 bundleID:v26 gameDescriptor:v24 updateWidget:0];

    v29 = [v5 bundleID];
    [v16 setLastPlayedGame:v29];

    v30 = +[NSDate date];
    [v16 setLastPlayedDate:v30];

    v25 = [GKGameRecordCacheObject recordForGame:v5 playerProfile:v16];
    v31 = [v16 lastPlayedDate];
    [v25 setLastPlayedDate:v31];

    if (*(a1 + 48))
    {
      [v25 updateWithServerRepresentation:?];
      if (*(a1 + 72) == 1)
      {
        v45 = [*(a1 + 64) credential];
        v44 = [v45 playerInternal];
        [v44 playerID];
        v32 = v46 = v26;
        v33 = [*(a1 + 48) objectForKeyedSubscript:GKGamePlayerIDKey];
        v34 = [*(a1 + 48) objectForKeyedSubscript:GKTeamPlayerIDKey];
        v35 = [v5 bundleID];
        v36 = [*(a1 + 40) context];
        [GKProfileServicePrivate verifyAndAssociatePlayerID:v32 withGameScopedPlayerID:v33 andTeamScopedPlayerID:v34 forGameBundleID:v35 usingMoc:v36];

        v26 = v46;
      }
    }

    v37 = [(GKService *)GKProfileService serviceFromService:*(a1 + 64)];
    [v37 setOcelotStateForCurrentApp];
    v38 = *(a1 + 64);
    v39 = [*(a1 + 40) context];
    [v38 _addGameListEntryForGame:v5 profile:v16 moc:v39];

    v40 = *(a1 + 64);
    v41 = [*(a1 + 40) context];
    [v40 _postLaunchEventsForGame:v5 moc:v41];

    v42 = [*(a1 + 64) clientProxy];
    [v42 deliverMostRecentPendingGameActivityInstance];
  }

  v43 = [v25 internalRepresentation];
  [*(a1 + 40) setResult:v43];
}

void sub_100069DB8(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_100287DD4();
  }
}

void sub_100069E28(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3, *(*(*(a1 + 48) + 8) + 24));
}

void sub_10006A21C(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v3 count]);
    [a1[4] setObject:v4 forKeyedSubscript:@"max-achievements"];

    v5 = [NSNumber numberWithBool:1];
    [a1[4] setObject:v5 forKeyedSubscript:@"supports-achievements"];
  }

  v6 = a1[5];
  v7 = a1[6];
  v8 = [a1[7] credential];
  v9 = [v8 playerInternal];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006A3B8;
  v10[3] = &unk_100361A80;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[8];
  v15 = a1[9];
  [v6 getLeaderboardsForGameDescriptor:v7 player:v9 setIdentifier:0 handler:v10];
}

void sub_10006A3B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSNumber numberWithBool:1];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"supports-leaderboards"];

  v5 = [NSNumber numberWithBool:1];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"has-aggregate-leaderboards"];

  v6 = [v3 count];
  v7 = [NSNumber numberWithUnsignedLong:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"num-leaderboard-categories"];

  [*(a1 + 32) setObject:&stru_100374F10 forKeyedSubscript:@"default-leaderboard-category"];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006A53C;
  v10[3] = &unk_100361A58;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  [v8 getLeaderboardSetsForGameDescriptor:v9 handler:v10];
}

void sub_10006A53C(uint64_t a1, void *a2)
{
  v3 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [a2 count]);
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"num-leaderboard-sets"];

  [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:@"game-metadata"];
  v6 = [*(a1 + 40) copy];
  v4 = [GKResource resourceWithID:@"debug-init" representedItem:?];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 0);
  }
}

void sub_10006AC44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [(GKService *)GKProfileServicePrivate serviceFromService:*(a1 + 32)];
    [v3 setPrivacyNoticeVersion:a2 withCompletionHandler:&stru_100361AC8];
  }
}

void sub_10006B1E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B290;
  v6[3] = &unk_100361B18;
  v8 = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 getFriendIDsForPlayer:0 commonFriends:0 handler:v6];
}

void sub_10006B290(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100287FA4(v8);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10006B48C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 40)) != 0)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006B60C;
    v12[3] = &unk_100361B68;
    v13 = *(a1 + 64);
    [v4 _authenticateUsername:v2 password:v3 altDSID:v5 validateOnly:0 handler:v12];
    v6 = v13;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_fetchCredentialsForUsername: no username or password; attempt to grab credentials", v11, 2u);
    }

    v9 = +[GKPlayerCredentialController sharedController];
    v10 = [*(a1 + 48) clientProxy];
    v6 = [v9 primaryCredentialForEnvironment:{objc_msgSend(v10, "environment")}];

    (*(*(a1 + 64) + 16))();
  }
}

void sub_10006B60C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v5 altDSID];
      v23 = 138412290;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "telling authkit altDSID %@ is in use", &v23, 0xCu);
    }

    v12 = objc_alloc_init(AKAppleIDAuthenticationController);
    v13 = [v5 altDSID];

    if (v13)
    {
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      v15 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [v5 altDSID];
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKAuth:telling authkit account is in use using altDSID:%@", &v23, 0xCu);
      }

      v18 = [v5 altDSID];
      [v12 setAppleIDWithAltDSID:v18 inUse:1 forService:6];
    }

    else
    {
      v19 = [v5 DSID];

      if (!v19)
      {
LABEL_23:

        goto LABEL_24;
      }

      v20 = [v5 DSID];
      v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 longLongValue]);

      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "GKAuth:telling authkit account is in use using DSID:%@", &v23, 0xCu);
      }

      [v12 setAppleIDWithDSID:v18 inUse:1 forService:6];
    }

    goto LABEL_23;
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100288044();
  }

LABEL_24:
  (*(*(a1 + 32) + 16))();
}

void sub_10006B9C8(uint64_t a1)
{
  v1 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 32)];
  [v1 getGamesForPlayer:0 includeInstalled:1 handler:&stru_100361BA8];
}

void sub_10006BA28(id a1, NSArray *a2, NSString *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Could not preload stats for the current player due to:%@", &v15, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [NSNumber numberWithUnsignedInteger:[(NSArray *)v6 count]];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "preloaded stats for %@ games for the current player", &v15, 0xCu);
    }
  }
}

void sub_10006BDCC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = *(a1 + 72);
  v4 = [*(a1 + 32) clientProxy];
  [v4 setIsGameCenterEnabledClient:v3];

  if (*(a1 + 40) && *(a1 + 48))
  {
    v5 = +[GKPlayerCredentialController sharedController];
    v6 = [v5 signInVisibilityManager];
    [v6 reset];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1762, "[GKAccountServicePrivate authenticatePlayerWithUsername:password:altDSID:isGame:usingFastPath:handler:]_block_invoke"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = +[GKDevice currentDevice];
  v11 = [v10 isGameKitAvailable];

  if (v11)
  {
    v12 = +[GKPreferences shared];
    v13 = [v12 isGameCenterDisabled];

    if (!v13)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10006C0DC;
      v31[3] = &unk_100361BF8;
      *&v16 = *(a1 + 40);
      *(&v16 + 1) = *(a1 + 32);
      v24 = v16;
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      *&v19 = v17;
      *(&v19 + 1) = v18;
      v32 = v24;
      v33 = v19;
      v34 = v9;
      [v34 perform:v31];

      goto LABEL_11;
    }

    v14 = [NSError errorWithDomain:GKInternalErrorDomain code:103 userInfo:0];
  }

  else
  {
    v14 = [NSError userErrorForCode:10 underlyingError:0];
  }

  v15 = v14;
  [v9 setError:v14];

LABEL_11:
  v20 = [v2 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10006C47C;
  v25[3] = &unk_100361C40;
  v21 = *(a1 + 32);
  v26 = v9;
  v27 = v21;
  v28 = v2;
  v30 = v7;
  v29 = *(a1 + 64);
  v22 = v2;
  v23 = v9;
  [v23 notifyOnQueue:v20 block:v25];
}

void sub_10006C0DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetch credentials with username:%@ ", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006C244;
  v12[3] = &unk_100361BD0;
  v13 = *(a1 + 64);
  v14 = v3;
  v11 = v3;
  [v7 _fetchCredentialsForUsername:v8 password:v9 altDSID:v10 handler:v12];
}

void sub_10006C244(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15[0] = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler:fetched credentials for username. Credential:%@", &v14, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15[0] = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "error fetching credentials: %@", &v14, 0xCu);
  }

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002880AC();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v14 = 67109376;
      LODWORD(v15[0]) = v5 != 0;
      WORD2(v15[0]) = 1024;
      *(v15 + 6) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "authenticatePlayerWithUsername: creds(%d) error(%d)", &v14, 0xEu);
    }
  }

  [*(a1 + 32) setError:v6];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"credential"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10006C47C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"credential"];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 40) clientProxy];
    v5 = [v3 serviceWithTransport:0 forClient:v4 credential:v2];

    [*(a1 + 40) setCredential:v2];
    v6 = +[GKStoreBag storeBagForEnvironment:](GKStoreBag, "storeBagForEnvironment:", [*(a1 + 48) environment]);
    v7 = [GKDataTransport transportWithBag:v6 clientProxy:*(a1 + 48) credential:v2];
    [*(a1 + 40) setTransport:v7];

    v8 = +[GKBadgeController sharedController];
    v9 = [*(a1 + 48) bundleIdentifier];
    [v8 registerBadgePermissionForBundleID:v9 completionHandler:&stru_100361C18];

    if (*(a1 + 64) == 1)
    {
      [*(a1 + 40) updateBadgeCounts];
    }

    [v5 _continueAuthenticationWithHandler:*(a1 + 56)];
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = [*(a1 + 32) error];
    [v11 notifyClient:v10 authenticationDidChangeWithError:v12 handler:*(a1 + 56)];

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      sub_100288114(v14);
    }
  }
}

void sub_10006C728(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006C7B8;
  v3[3] = &unk_100361C68;
  v4 = *(a1 + 48);
  [v1 _constructAuthenticationResponseWithError:v2 handler:v3];
}

void sub_10006C7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002881C0();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

void sub_10006C99C(uint64_t a1, void *a2)
{
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = [*(a1 + 32) credential];
  v6 = [v5 playerInternal];
  v7 = [v6 playerID];

  v8 = [*(a1 + 32) clientProxy];
  v9 = [v8 managedObjectContextForPlayerID:v7];

  v10 = [(GKService *)GKProfileServicePrivate serviceFromService:*(a1 + 32)];
  v11 = [GKPlayerProfileCacheObject piecesToLoadForFamiliarity:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006CAF0;
  v13[3] = &unk_100361C90;
  v15 = Current;
  v14 = v3;
  v12 = v3;
  [v10 loadProfileForPlayer:v7 pieces:v11 context:v9 handler:v13];
}

void sub_10006CAF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002882D8();
    }
  }

  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100288340();
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028837C(v8);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10006CD00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028841C(a1, v4);
  }

  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006CE04;
  v9[3] = &unk_100361D08;
  v9[4] = v6;
  v7 = *(a1 + 40);
  v12 = *(a1 + 56);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [v6 _initGameForLaunchedApp:1 withHandler:v9];
}

void sub_10006CE04(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) credential];
  v10 = [*(a1 + 32) clientProxy];
  v11 = [v10 adamID];
  v12 = [v11 integerValue];

  if (!v12)
  {
    v13 = [v7 adamID];
    v14 = [*(a1 + 32) clientProxy];
    [v14 setAdamID:v13];
  }

  if (v9)
  {
    v15 = [v9 scope];
    v16 = v15;
    if (a4 > 5028)
    {
      if (a4 == 5029 || a4 == 5170)
      {
LABEL_17:
        v16 = v16 & 0xFFFFFFFD;
        goto LABEL_23;
      }
    }

    else
    {
      if (!a4)
      {
        v16 = v15 | 2;
LABEL_23:
        if (v16 != [v9 scope])
        {
          v22 = os_log_GKGeneral;
          if (!os_log_GKGeneral)
          {
            v23 = GKOSLoggers();
            v22 = os_log_GKGeneral;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_100288598(v16, v22);
          }

          v24 = *(a1 + 40);
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_10006D1C0;
          v36[3] = &unk_100361CE0;
          v37 = v9;
          v38 = v16;
          [v24 perform:v36];
        }

        goto LABEL_29;
      }

      if (a4 == 5000)
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        v18 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "server error coming back from appInit. Player is unauthenticated. Removing the authorization flag", buf, 2u);
        }

        goto LABEL_17;
      }
    }

    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002884D0(v21, a4, v8);
    }

    goto LABEL_23;
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100288644();
  }

LABEL_29:
  if (!os_log_GKGeneral)
  {
    v25 = GKOSLoggers();
  }

  v26 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100288684(v26);
  }

  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10006D29C;
  v33 = &unk_100360FF0;
  v27 = *(a1 + 40);
  v34 = *(a1 + 32);
  v28 = v7;
  v35 = v28;
  [v27 perform:&v30];
  if (a4 == 5172 || !a4)
  {
    v29 = [*(a1 + 32) clientProxy];
    [v29 setAppInitState:@"GKAppInitialized"];
  }

  [*(a1 + 40) setError:{v8, v30, v31, v32, v33, v34}];
  (*(*(a1 + 48) + 16))();
}

void sub_10006D1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setScope:*(a1 + 40)];
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D28C;
  v7[3] = &unk_100361CB8;
  v8 = v3;
  v6 = v3;
  [v4 setCredential:v5 completionHandler:v7];
}

void sub_10006D29C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = *(a1 + 40);
  v6 = [v4 environment];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006D364;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 setCurrentGame:v5 serverEnvironment:v6 reply:v8];
}

void sub_10006D4CC(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 bundleIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) notifyClient:v7 playerAuthenticatedWithCredential:*(a1 + 48) authenticatingBundleID:*(a1 + 56)];
    *a3 = 1;
  }
}

void sub_10006D6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if ([*(a1 + 40) length])
    {
      [*(a1 + 32) sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:*(a1 + 40) completionHandler:&stru_100361DB8];
    }

    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100288724();
    }
  }

  else
  {
    [*(a1 + 32) setCurrentGame:v5 serverEnvironment:objc_msgSend(*(a1 + 32) reply:{"environment"), &stru_100361D78}];
    [*(a1 + 32) setAppInitState:@"GKAppInitialized"];
    [*(a1 + 32) sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:*(a1 + 40) completionHandler:&stru_100361D98];
  }
}

void sub_10006D898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006D9A8;
    v9[3] = &unk_100361620;
    v10 = v3;
    [v7 perform:v9];
  }

  else
  {
    v5 = [v3 appInitState];
    v6 = v5;
    if (v5 != @"GKAppInitUnknown")
    {

LABEL_6:
      [*(a1 + 48) notifyClient:v4 playerAuthenticatedWithCredential:*(a1 + 56) authenticatingBundleID:0];
      goto LABEL_7;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

void sub_10006D9A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006DA44;
  v6[3] = &unk_100360FA0;
  v7 = v3;
  v5 = v3;
  [v4 sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:0 completionHandler:v6];
}

void sub_10006DE7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = objc_alloc_init(NSDictionary);
  }

  v4 = [v3 integerValueFromKey:GKFullscreenSignInSheetLimit defaultValue:1];
  v5 = [*(a1 + 32) sheetConfig];
  [v5 setLimit:v4];

  v6 = [v3 integerValueFromKey:GKFullscreenSignInSheetInitialLimit defaultValue:-1];
  v7 = [*(a1 + 32) sheetConfig];
  [v7 setInitialLimit:v6];

  [v3 doubleValueFromKey:GKFullscreenSignInSheetCooldown defaultValue:604800.0];
  v9 = v8;
  v10 = [*(a1 + 32) sheetConfig];
  [v10 setResetPeriod:v9];

  [v3 doubleValueFromKey:GKFullscreenSignInSheetMinTimeBetween defaultValue:0.0];
  v12 = v11;
  v13 = [*(a1 + 32) sheetConfig];
  [v13 setMinTimeBetweenAppearances:v12];

  v14 = [v3 integerValueFromKey:GKFullscreenSignInSheetEnabled defaultValue:0] != 0;
  v15 = [*(a1 + 32) sheetConfig];
  [v15 setEnabled:v14];

  v16 = [v3 integerValueFromKey:GKSignInBannerLimit defaultValue:-1];
  v17 = [*(a1 + 32) bannerConfig];
  [v17 setLimit:v16];

  v18 = [v3 integerValueFromKey:GKSignInBannerInitialLimit defaultValue:-1];
  v19 = [*(a1 + 32) bannerConfig];
  [v19 setInitialLimit:v18];

  [v3 doubleValueFromKey:GKSignInBannerCooldown defaultValue:-1.0];
  v21 = v20;
  v22 = [*(a1 + 32) bannerConfig];
  [v22 setResetPeriod:v21];

  [v3 doubleValueFromKey:GKSignInBannerMinTimeBetween defaultValue:0.0];
  v24 = v23;
  v25 = [*(a1 + 32) bannerConfig];
  [v25 setMinTimeBetweenAppearances:v24];

  v26 = [v3 integerValueFromKey:GKSignInBannerEnabled defaultValue:0] != 0;
  v27 = [*(a1 + 32) bannerConfig];
  [v27 setEnabled:v26];

  v28 = +[GKPlayerCredentialController sharedController];
  v29 = [v28 signInVisibilityManager];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10006E1B4;
  v31[3] = &unk_100361E28;
  v30 = *(a1 + 32);
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  [v29 promptsDisabledWithConfig:v30 scope:1 handler:v31];
}

void sub_10006E98C(uint64_t a1)
{
  v1 = [*(a1 + 32) clientProxy];
  [v1 refreshContentsForDataType:12 userInfo:0];
}

void sub_10006E9D8(uint64_t a1)
{
  v2 = [*(a1 + 32) playerInternal];
  v3 = [v2 playerID];
  v4 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v3 inManagedObjectContext:*(a1 + 40)];

  if (v4)
  {
    [GKPlayerProfileCacheObject buildFamiliarilyLookupForProfile:v4];
  }

  [*(a1 + 40) _gkSafeSave];
}

void sub_10006EA84(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028878C(v3);
  }

  v4 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v4];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10006EEE8;
  v32[3] = &unk_100361EA0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v32[4] = *(a1 + 56);
  v33 = v6;
  v34 = *(a1 + 48);
  v36 = &v37;
  v35 = *(a1 + 32);
  [v5 performBlockAndWait:v32];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(*(a1 + 88));
    v10 = *(v38 + 24);
    v11 = [*(a1 + 64) scope];
    v12 = @"NO";
    if (v10)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *buf = 138412802;
    v42 = v9;
    v43 = 2112;
    v44 = v13;
    if ((v11 & 2) != 0)
    {
      v12 = @"YES";
    }

    v45 = 2112;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ profileIsValid:%@ PlayerIsAuthorized:%@", buf, 0x20u);
  }

  if (*(v38 + 24) == 1 && (v14 = *(a1 + 64)) != 0)
  {
    v15 = ([v14 scope] >> 1) & 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSNumber numberWithBool:v15];
  [*(a1 + 32) setObject:v16 forKeyedSubscript:@"authenticated"];

  if (*(a1 + 64))
  {
    v17 = +[GKBadgeController sharedController];
    [v17 badgeAllApplications];

    v18 = [*(a1 + 56) clientProxy];
    +[GKClientProxy performDelayedRequestsForEnvironment:](GKClientProxy, "performDelayedRequestsForEnvironment:", [v18 environment]);
  }

  if (v15)
  {
    v19 = [objc_opt_class() standardUserDefaults];
    [v19 removeObjectForKey:GKOptedOutOfGameCenter];

    v20 = [(GKService *)GKProfileServicePrivate serviceFromService:*(a1 + 56)];
    v21 = *(a1 + 32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10006F008;
    v26[3] = &unk_100361BF8;
    v27 = *(a1 + 64);
    v22 = v20;
    v23 = *(a1 + 56);
    v28 = v22;
    v29 = v23;
    v30 = *(a1 + 72);
    v31 = *(a1 + 32);
    [v21 perform:v26];
  }

  else
  {
    v24 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
      v24 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100288830();
    }

    [*(a1 + 72) setAppInitState:@"GKAppInitUnknown"];
  }

  _Block_object_dispose(&v37, 8);
}

void sub_10006EEE8(uint64_t a1)
{
  v2 = [*(a1 + 32) _authenticatedLocalPlayerWithCredential:*(a1 + 40) inContext:*(a1 + 48) isValid:*(*(a1 + 64) + 8) + 24];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "authenticated LocalPlayerInternal:%@", &v6, 0xCu);
  }

  if (v2)
  {
    [*(a1 + 56) setObject:v2 forKeyedSubscript:@"localPlayer"];
    v5 = [*(a1 + 32) ampController];
    [v5 updateMetadataWithLocalPlayer:v2];
  }
}

void sub_10006F008(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) playerInternal];
  v5 = [v4 playerID];

  v6 = *(a1 + 40);
  if (v5)
  {
    v15 = v5;
    v7 = [NSArray arrayWithObjects:&v15 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006F17C;
  v10[3] = &unk_100360F28;
  v8 = *(a1 + 56);
  v10[4] = *(a1 + 48);
  v11 = v8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v14 = v3;
  v9 = v3;
  [v6 preloadInstalledGamesScopedPlayerIDs:v7 completion:v10];
  if (v5)
  {
  }
}

uint64_t sub_10006F17C(uint64_t a1)
{
  v2 = [objc_opt_class() standardUserDefaults];
  [v2 removeObjectForKey:GKOptedOutOfGameCenter];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:GKPrimaryCredentialDidChangeNotification object:0];

  [*(a1 + 32) _notifyAllClientsPlayerAuthenticatedFromClient:*(a1 + 40) withCredential:*(a1 + 48) replyGroup:*(a1 + 56)];
  [*(a1 + 32) notifyWidgetPlayerAuthenticationUpdated];
  v4 = *(*(a1 + 64) + 16);

  return v4();
}

void sub_10006F220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) error];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F2E8;
  v7[3] = &unk_100361EF0;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v4 _constructAuthenticationResponseWithError:v5 handler:v7];
}