uint64_t sub_1004E6C7C()
{
  v0 = STACK[0xF10] - 31324;
  STACK[0x7090] = STACK[0x3300] + 16;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x80E)))();
}

uint64_t sub_1004E6E4C()
{
  v0 = STACK[0xF10] - 35219;
  v1 = STACK[0xF10] + 9345;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99D4]) = LODWORD(STACK[0xA810]) - 491221793;
  v2 += 2095781516;
  v3 = v2 < 0xD5420AC4;
  v4 = v2 > LODWORD(STACK[0x36E8]) - 717092156;
  if (v3 != LODWORD(STACK[0x36E8]) > (v0 ^ 0x2ABDF493u))
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((109 * v4) ^ v1)))();
}

uint64_t sub_1004E6F08@<X0>(int a1@<W8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(v2 + v5);
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * v4) ^ a1)))();
}

uint64_t sub_1004E6F30@<X0>(int a1@<W8>)
{
  v3 = 0x47DC11F7047DC12 * (((v2 ^ 0x283D12FA917CA426) + 0x57C2ED056E835BDALL) ^ ((v2 ^ 0x7D8B55E1B74B4841) - 0x7D8B55E1B74B4841) ^ ((((a1 - 2252) | 0x90u) ^ 0x2A49B8E4301D5077) + (v2 ^ 0x55B6471BCFE22B76))) + 0x83F5E45B95F3A12;
  v4 = v3 ^ ((v3 ^ 0x1C903CA82B3F3461) + 0x4D0384873F4D557FLL) ^ ((v3 ^ 0x81D54060FF88B461) - 0x2FB907B014052A81) ^ ((v3 ^ 0xEC2ECC6F4064C715) - 0x42428BBFABE959F5) ^ ((v3 ^ 0xDF07F7777F5ED9F5) - 0x716BB0A794D34715);
  v5 = ((v4 ^ 0x58E3E14014FDD21ALL) - 0x3BF24A7EA8DE1A2CLL) ^ ((v4 ^ 0x15A4D5904D83B3E1) - 0x76B57EAEF1A07BD7);
  LODWORD(v4) = __CFADD__(57 * (v5 ^ ((v4 ^ 0xE32B7300B2F3FF1BLL) + 0x7FC527C1F12FC8D3)), 0xC109C11185D155A6) + (((v5 ^ ((v4 ^ 0xE32B7300B2F3FF1BLL) + 0x7FC527C1F12FC8D3)) * 0x39uLL) >> 64) + 57 * ((__CFADD__(v4 ^ 0x58E3E14014FDD21ALL, 0xC40DB5815721E5D4) - 1) ^ (__CFADD__(v4 ^ 0x15A4D5904D83B3E1, 0x894A81510E5F8429) - 1) ^ (__CFADD__(v4 ^ 0xE32B7300B2F3FF1BLL, 0x7FC527C1F12FC8D3) - 1)) + 1635758352;
  v6 = (v4 ^ 0xDC664E1C) & (2 * (v4 & 0x9E804F1D)) ^ v4 & 0x9E804F1D;
  LODWORD(v5) = ((2 * (v4 ^ 0xD466D806)) ^ 0x95CD2E36) & (v4 ^ 0xD466D806) ^ (2 * (v4 ^ 0xD466D806)) & 0x4AE6971A;
  v7 = v5 ^ 0x4A229109;
  LODWORD(v5) = (v5 ^ 0x410) & (4 * v6) ^ v6;
  v8 = ((4 * v7) ^ 0x2B9A5C6C) & v7 ^ (4 * v7) & 0x4AE69718;
  LODWORD(v5) = (v8 ^ 0xA821400) & (16 * v5) ^ v5;
  v9 = ((16 * (v8 ^ 0x40648313)) ^ 0xAE6971B0) & (v8 ^ 0x40648313) ^ (16 * (v8 ^ 0x40648313)) & 0x4AE69710;
  LODWORD(v5) = v5 ^ 0x4AE6971B ^ (v9 ^ 0xA601100) & (v5 << 8);
  LODWORD(v4) = v4 ^ (2 * ((v5 << 16) & 0x4AE60000 ^ v5 ^ ((v5 << 16) ^ 0x171B0000) & (((v9 ^ 0x4086860B) << 8) & 0x4AE60000 ^ 0x8600000 ^ (((v9 ^ 0x4086860B) << 8) ^ 0x66970000) & (v9 ^ 0x4086860B))));
  return (*(STACK[0xF18] + 8 * ((15648 * ((((v4 ^ 0xA24FA7F5) - 1154679247) ^ ((v4 ^ 0x3B8485CD) + 585620489) ^ ((v4 ^ 0x96824313) - 1881072937)) + v1 < 0x1F)) ^ a1)))();
}

uint64_t sub_1004E7370@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF10];
  v4 = 3 * (STACK[0xF10] ^ 0x8BAC);
  v5 = STACK[0xF10] - 9870;
  *(v2 + 2252) = a1;
  *(v2 + 2248) = v1;
  v6 = (((*(*STACK[0x9A30] + 72 * STACK[0x9A38] + 8) ^ (v3 - 51652498)) + 51616855) ^ ((*(*STACK[0x9A30] + 72 * STACK[0x9A38] + 8) ^ 0x393D34B0) + (v4 ^ 0xC6C2CA95)) ^ ((*(*STACK[0x9A30] + 72 * STACK[0x9A38] + 8) ^ 0x2C049008) - 738496520)) - 1926137994;
  v7 = v6 < 0xA35BB065;
  v8 = v1 + 1364073561 < v6;
  if ((v1 + 1364073561) < 0xA35BB065 != v7)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((426 * v8) ^ v5)))();
}

uint64_t sub_1004E7464()
{
  v2 = (v0 - 956008153) ^ v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA648)))(v2);
  STACK[0x2460] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((2 * v0) ^ 0xAD1A) - 29434)) ^ v0)))();
}

uint64_t sub_1004E74BC()
{
  v0 = STACK[0xF10] - 29757;
  v1 = STACK[0xA810];
  LODWORD(STACK[0x99E4]) = (STACK[0xF10] ^ 0xD6F0AFF1) + LODWORD(STACK[0xA810]);
  v1 -= 1286421210;
  v2 = v1 < 0xBA9B91A;
  v3 = v1 > LODWORD(STACK[0x36E8]) + 195672346;
  if (v2 != LODWORD(STACK[0x36E8]) > 0xF45646E5)
  {
    v3 = v2;
  }

  return (*(STACK[0xF18] + 8 * ((500 * !v3) ^ v0)))();
}

uint64_t sub_1004E7550@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB7E0]) = v2;
  STACK[0x3080] = v3;
  v4 = STACK[0x7690];
  STACK[0x5770] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v4 + ((a1 + 18940) ^ 0x8B4BLL);
  STACK[0x8CF0] = v1;
  if (v1)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0xF18] + 8 * ((823 * v6) ^ a1)))();
}

uint64_t sub_1004E76D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v5 = *STACK[0x36B0] + 508268408;
  v6 = ((v5 & 0xE1B47084) << ((a5 - 28) & 0x1E ^ 0x1D)) & (v5 ^ 0xFDA67227) ^ v5 & 0xE1B47084;
  v7 = ((2 * (v5 ^ 0xBEAE732F)) ^ 0xBE340756) & (v5 ^ 0xBEAE732F) ^ (2 * (v5 ^ 0xBEAE732F)) & 0x5F1A03AA;
  v8 = v7 ^ 0x410A00A9;
  v9 = (v7 ^ 0x4E180288) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x7C680EAC) & v8 ^ (4 * v8) & 0x5F1A03A8;
  v11 = (v10 ^ 0x5C0802A0) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x3120103)) ^ 0xF1A03AB0) & (v10 ^ 0x3120103) ^ (16 * (v10 ^ 0x3120103)) & 0x5F1A03A0;
  v13 = v11 ^ 0x5F1A03AB ^ (v12 ^ 0x51000200) & (v11 << 8);
  v14 = STACK[0x5988] + 4;
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x638];
  STACK[0x2A60] = v14;
  STACK[0x85E8] = v14;
  LODWORD(STACK[0x4874]) = (v5 ^ (2 * ((v13 << 16) & 0x5F1A0000 ^ v13 ^ ((v13 << 16) ^ 0x3AB0000) & (((v12 ^ 0xE1A010B) << 8) & 0x5F1A0000 ^ 0x45180000 ^ (((v12 ^ 0xE1A010B) << 8) ^ 0x1A030000) & (v12 ^ 0xE1A010B))))) & 0xFFFFFFF0 ^ 0xB041B0C1;
  LODWORD(STACK[0x726C]) = -187458865;
  return (*(STACK[0xF18] + 8 * a5))(v14, v14, a1, a2, a3, a4, 0);
}

uint64_t sub_1004E78DC()
{
  v3 = (v1 + 674337029) ^ 0x28319105u;
  v5 = v3 < 8 || STACK[0x1B18] - v2 < (v0 ^ 0xE591 ^ ((v0 + 13915) | 0x18u) ^ 0x2E36uLL);
  v6 = *(STACK[0xF18] + 8 * ((104 * v5) ^ v0));
  STACK[0xCF0] = v3;
  return v6(0x7F8E6DFEAC84402DLL, 0xC2F340176D8EE147, 0x960A24DB292F1188, 0xCB05126D949788C4);
}

uint64_t sub_1004E7A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = (((a9 ^ 0x8036574D) + 1360562773) ^ ((a9 ^ 0x6C9FC444) - 1112467106) ^ ((a9 ^ 0x2BAD76FE) - 92034072)) + 1249571794;
  v41 = (((LODWORD(STACK[0x4EC]) ^ 0xBDFF9C14) + 1107321836) ^ ((LODWORD(STACK[0x4EC]) ^ 0x9757286A) + 1755895702) ^ ((((v38 - 13714) | 6) ^ 0x3C82DC8E) + (LODWORD(STACK[0x4EC]) ^ 0xC37D736F))) + 1249571794;
  v42 = v40 < 0x60A52CC1;
  v43 = v40 > v41;
  if (v42 != v41 < 0x60A52CC1)
  {
    v43 = v42;
  }

  return (*(v39 + 8 * ((61 * v43) ^ (v38 - 1500))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1004E7CFC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 11879)))((((v0 - 35887) | 0xA380u) - 371911793) ^ LODWORD(STACK[0x57E0]));
  STACK[0x7A90] = v2;
  LODWORD(STACK[0x6DCC]) = STACK[0x57E0];
  return (*(v1 + 8 * ((86 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1004E7D74()
{
  *STACK[0xA1A8] ^= ((v0 - 7471) | 0x4008) ^ 0xDA23E;
  *STACK[0xA1B8] ^= 0xCC07C9u;
  *STACK[0xA1C0] ^= 0xAA289u;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E7DF8()
{
  LODWORD(STACK[0xE80]) = v1 - 23717;
  v2 = STACK[0xEC0];
  STACK[0x10EE0] = *STACK[0xEC0];
  v3 = (v1 - 29457) ^ ((&STACK[0x10ED8] ^ 0xE6261BCF) * v0);
  LODWORD(STACK[0x10ED8]) = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *v2 = 0;
  v5 = STACK[0xEB0];
  STACK[0x10EE0] = *STACK[0xEB0];
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ ((((&STACK[0x10ED8] | 0xE4B65C2F) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x1B49A3D0)) ^ 0x29047E0) * v0);
  (*(v4 + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *v5 = 0;
  v6 = STACK[0xE40];
  v7 = *STACK[0xE40];
  LODWORD(STACK[0x10ED8]) = v3;
  STACK[0x10EE0] = v7;
  (*(v4 + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *v6 = 0;
  v8 = STACK[0xED0];
  STACK[0x10EE0] = *STACK[0xED0];
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ ((((&STACK[0x10ED8] | 0xD7929702) - (&STACK[0x10ED8] | 0x286D68FD) + 678258941) ^ 0x31B48CCD) * v0);
  (*(v4 + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *v8 = 0;
  v9 = STACK[0xEA0];
  v10 = *STACK[0xEA0];
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ ((((&STACK[0x10ED8] | 0xB218A160) - (&STACK[0x10ED8] & 0xB218A160)) ^ 0x543EBAAF) * v0);
  STACK[0x10EE0] = v10;
  (*(v4 + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *v9 = 0;
  v11 = STACK[0xE90];
  v12 = *STACK[0xE90];
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (((((&STACK[0x10ED8] | 0xB09BB5B2) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0x4F644A4D)) ^ 0xA9425182) * v0);
  STACK[0x10EE0] = v12;
  v13 = (*(v4 + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *v11 = 0;
  return (*(v4 + 8 * SLODWORD(STACK[0xE80])))(v13);
}

uint64_t sub_1004E8054@<X0>(int a1@<W8>)
{
  v8 = STACK[0xF18];
  STACK[0x5D40] = *(STACK[0xF18] + 8 * v6);
  STACK[0x5B18] = v2;
  LODWORD(STACK[0x6B7C]) = v3;
  LODWORD(STACK[0x4ADC]) = a1;
  STACK[0x2C50] = v5;
  STACK[0x4F40] = v4;
  v9 = STACK[0x7690];
  v10 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x80B0] = v10;
  STACK[0x1030] = v10;
  STACK[0x9208] = (v10 + 42);
  STACK[0x7DB0] = (v10 + 58);
  STACK[0x36D0] = (v10 + 90);
  STACK[0x7690] = v9 + 112;
  STACK[0x6A78] = 0;
  STACK[0x4388] = 0;
  if (v2)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = v11 || a1 == v1 - 371880557;
  return (*(v8 + 8 * ((243 * ((((v1 + 20290) ^ v13) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1004E8114()
{
  v1 = STACK[0x2938];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393316;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E815C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 26986;
  v2 = STACK[0x2050];
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xB558D1DE) - ((&STACK[0x10000] + 3800) | 0x4AA72E21) + 1252470305) ^ 0xD8CEFE22);
  STACK[0x10EE0] = STACK[0x2050];
  LODWORD(STACK[0x10ED8]) = v3 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v3 - 14660;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16326)))(&STACK[0x10ED8]);
  v6 = STACK[0x4C60];
  STACK[0x5400] = v2;
  STACK[0x41A0] = v6;
  LODWORD(STACK[0x20CC]) = -371865855;
  LODWORD(STACK[0x38AC]) = -595466984;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_1004E8230@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x556C]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32590));
  return (*(v2 + 8 * ((5458 * (v1 != -1195299497)) ^ (v1 - 68566 + ((v1 - 1117372412) & 0x4299B6DE)))))();
}

uint64_t sub_1004E8320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x49A0];
  STACK[0x5D28] = &STACK[0x4190];
  LODWORD(STACK[0x4704]) = 185577620;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004E8374()
{
  LODWORD(STACK[0x3908]) += 4;
  if (STACK[0xACF0])
  {
    v1 = STACK[0xACB8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || LODWORD(STACK[0xACC0]) == ((v0 + 2082316513) & 0x83E297FF) + ((v0 + 6708) ^ 0xE9D5479A);
  return (*(STACK[0xF18] + 8 * ((60 * v3) ^ v0)))();
}

uint64_t sub_1004E84C0()
{
  LODWORD(STACK[0x10ED8]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x8DF78674) - (&STACK[0x10000] + 3800) + 956579014) ^ 0x20DDD8F5) - 19489;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 25224)))(&STACK[0x10ED8]);
  v3 = STACK[0x10EE0];
  STACK[0x7208] = STACK[0x10EE0];
  return (*(v1 + 8 * (((((71 * (v0 ^ 0x1C)) ^ (v3 == 0)) & 1) * ((v0 + 611296522) ^ 0x24700E8F)) ^ v0)))(v2);
}

uint64_t sub_1004E85D0()
{
  STACK[0xED0] = v0;
  STACK[0x10EE0] = STACK[0x818];
  LODWORD(STACK[0x10ED8]) = (v2 - 1762676115) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x2F5A85C2) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xD0A57A38)) ^ 0x1E5B48E6));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xF9B)))(&STACK[0x10ED8]);
  v6 = v1 == (((v2 - 44309) | 0x200) ^ 0xE9D5DD1C) || *(STACK[0x798] + 8) == 0;
  return (*(v3 + 8 * ((23 * (((71 * (v2 ^ 0x4F)) ^ v6) & 1)) ^ v2)))(v4);
}

uint64_t sub_1004E8748()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x32Au)))(v1) == 0;
  return (*(v2 + 8 * ((v3 * ((v0 - 1565215188) & 0x5D4AFF6F ^ (v0 + 312934985) & 0xED58BF3F ^ 0xF7CB)) ^ v0)))();
}

uint64_t sub_1004E87C4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33814;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 30624) ^ v1)))();
}

uint64_t sub_1004E8828()
{
  v3 = (v0 - 40953) | 0x6100;
  LODWORD(STACK[0xD20]) = v3;
  v4 = v3 + 7851;
  v5 = v2 & 0xFFFFFFF2 ^ 0x7B8AEF6DLL;
  STACK[0xE40] = v5;
  v6 = STACK[0xA00];
  v7 = *(STACK[0xA00] + v5);
  v8 = v2 & 0xFFFFFFFE ^ 0x7B8AEF6DLL;
  STACK[0xE80] = v8;
  v9 = v0;
  v10 = STACK[0xA80];
  LODWORD(v7) = *(STACK[0xA80] + 4 * (v7 ^ 0x23));
  v11 = *(v6 + v8) ^ 0x83;
  LODWORD(STACK[0x9E0]) = v4;
  LODWORD(STACK[0xD80]) = v7 * (v4 ^ 0xD9E81DBE) - 2121513765;
  LODWORD(v7) = *(v10 + 4 * v11);
  v12 = v2 & 0xFFFFFFF4 ^ 0x7B8AEF6FLL;
  STACK[0xEB0] = v12;
  v13 = *(v6 + v12) ^ 0xF5;
  v14 = v2;
  v15 = -2121513765 - 639081915 * v7;
  v16 = v14 & 0xFFFFFFF7 ^ 0x7B8AEF6CLL;
  STACK[0xE90] = v16;
  v17 = STACK[0xAD8];
  v18 = STACK[0xA98];
  v19 = *(STACK[0xA98] + 4 * (*(v6 + v16) ^ 0xA8));
  LOBYTE(v4) = *(STACK[0xAD8] + v13) ^ (72 * (*(STACK[0xAD8] + v13) ^ 5));
  v20 = v14 & 0xFFFFFFFD ^ 0x7B8AEF6ELL;
  STACK[0xEA0] = v20;
  v21 = STACK[0xAA0];
  LODWORD(v16) = *(STACK[0xAA0] + 4 * (*(v6 + v20) ^ 0x96)) + 21966403;
  v22 = v14 & 0xFFFFFFF0 ^ 0x7B8AEF6FLL;
  STACK[0xDF0] = v22;
  LOBYTE(v22) = *(v17 + (*(v6 + v22) ^ 0x10));
  v23 = v14 & 0xFFFFFFFB ^ 0x7B8AEF6CLL;
  STACK[0xE70] = v23;
  v24 = *(v6 + v23);
  LOBYTE(v23) = v22 ^ (72 * (v22 ^ 5));
  v25 = *(v18 + 4 * (v24 ^ 0xD0));
  v26 = v14 & 0xFFFFFFFA ^ 0x7B8AEF6DLL;
  STACK[0xE60] = v26;
  v27 = *(v6 + v26) ^ 0x93;
  v28 = v14 ^ 0x7B8AEF6CLL;
  STACK[0xDE0] = v28;
  v29 = v14 & 0xFFFFFFFC ^ 0x7B8AEF6FLL;
  STACK[0xE20] = v29;
  v30 = *(v17 + (*(v6 + v29) ^ 0x51));
  v31 = v14 & 0xFFFFFFF8 ^ 0x7B8AEF6FLL;
  STACK[0xDC0] = v31;
  v32 = v30 ^ (72 * (v30 ^ 5));
  v33 = *(v17 + (*(v6 + v31) ^ 0x42));
  v34 = (v25 >> 1) & 0x468DA01;
  v35 = LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xCE0]) ^ v25;
  v36 = v14 & 0xFFFFFFF9 ^ 0x7B8AEF6ELL;
  STACK[0xE30] = v36;
  v37 = v35 ^ v34 ^ (*(v21 + 4 * (*(v6 + v36) ^ 0xF7)) + 21966403);
  v38 = *(v18 + 4 * (*(v6 + v28) ^ 0xF9));
  LODWORD(v27) = v37 ^ (-2121513765 - 639081915 * *(v10 + 4 * v27));
  v39 = v14 & 0xFFFFFFF3 ^ 0x7B8AEF6CLL;
  STACK[0xDA0] = v39;
  v40 = v27 ^ (v33 ^ (72 * (v33 ^ 5)));
  LODWORD(v27) = *(v18 + 4 * (*(v6 + v39) ^ 0xABLL));
  LODWORD(v16) = v1 ^ LODWORD(STACK[0xCF0]) ^ v16 ^ v38 ^ (v38 >> 1) & 0x468DA01;
  LODWORD(STACK[0xE10]) = v14;
  v41 = v14 & 0xFFFFFFF6 ^ 0x7B8AEF6DLL;
  STACK[0xE00] = v41;
  v42 = v16 ^ v15;
  LODWORD(v16) = -2121513765 - 639081915 * *(v10 + 4 * (*(v6 + v41) ^ 0xF7));
  LODWORD(v41) = LODWORD(STACK[0xDD0]) ^ LODWORD(STACK[0xCD0]) ^ v19;
  v43 = v14 & 0xFFFFFFF5 ^ 0x7B8AEF6ELL;
  STACK[0xDD0] = v43;
  LODWORD(v43) = *(v21 + 4 * (*(v6 + v43) ^ 0x99)) + 21966403;
  LODWORD(v16) = v41 ^ (v19 >> 1) & 0x468DA01 ^ v16;
  v44 = v14 & 0xFFFFFFF1 ^ 0x7B8AEF6ELL;
  STACK[0xDB0] = v44;
  v45 = v16 ^ v43 ^ v4;
  LODWORD(v27) = LODWORD(STACK[0xD90]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xD80]) ^ v23 ^ v27 ^ (v27 >> 1) & 0x468DA01 ^ (*(v21 + 4 * (*(v6 + v44) ^ 0x1CLL)) + 21966403);
  v46 = v27 ^ 0xF5B3C1B5;
  v47 = *(&off_1010A0B50 + (v9 ^ 0xAC2C)) - 680200147;
  v48 = *(&off_1010A0B50 + v9 - 38582) - 1965279539;
  LODWORD(v27) = (v27 ^ 0x5DD4C1B6) - 934551947 + *&v48[4 * (v27 ^ 0xCF)];
  v49 = ((v42 ^ v32) ^ 0x5DD4C161) - 934551947 + *&v48[4 * ((v42 ^ v32) ^ 0x18)];
  LODWORD(v23) = (v40 ^ 0x5DD4C179) - 934551947 + *&v48[4 * v40];
  LODWORD(v44) = (v45 ^ 0x5DD4C145) - 934551947 + *&v48[4 * (v45 ^ 0x3C)];
  LODWORD(STACK[0xED0]) = v9;
  v50 = *(&off_1010A0B50 + (v9 ^ 0xB080)) - 1029345359;
  v51 = *(&off_1010A0B50 + (v9 ^ 0xA99E)) - 136967887;
  v52 = (*&v47[4 * (BYTE2(v42) ^ 0x54)] + 103049171) ^ LODWORD(STACK[0xAB0]) ^ (158649619 * *&v50[4 * (BYTE1(v40) ^ 0x89)] - 733433518) ^ (1894482785 * *&v51[4 * HIBYTE(v46)] - 964685308) ^ v44 ^ (1269196952 * *&v50[4 * (BYTE1(v40) ^ 0x89)] - 1572500848) & 0x8B3B0160;
  LODWORD(v43) = (*&v47[4 * ((v45 ^ 0xEFAB146u) >> 16)] + 103049171) ^ LODWORD(STACK[0xA50]) ^ (1894482785 * *&v51[4 * ((v40 ^ 0xF80C897A) >> 24)] - 964685308) ^ (158649619 * *&v50[4 * BYTE1(v46)] - 733433518) ^ v49 ^ ((1269196952 * *&v50[4 * BYTE1(v46)] - 1572500848) | 0x74C4FE98);
  LODWORD(v27) = (*&v47[4 * ((v40 ^ 0xF80C897A) >> 16)] + 103049171) ^ LODWORD(STACK[0xAD0]) ^ (1894482785 * *&v51[4 * (HIBYTE(v42) ^ 0xCB)] - 964685308) ^ (158649619 * *&v50[4 * (BYTE1(v45) ^ 0xB1)] - 733433518) ^ (1269196952 * *&v50[4 * (BYTE1(v45) ^ 0xB1)] - 1572500848) & 0x8B3B0160 ^ v27;
  LODWORD(v44) = *&v47[4 * BYTE2(v46)] + 103049171;
  v53 = *&v50[4 * (BYTE1(v42) ^ 0xB5)];
  LODWORD(v16) = v44 ^ LODWORD(STACK[0xCC0]) ^ (158649619 * v53 - 733433518) ^ v23 ^ (1894482785 * *&v51[4 * ((v45 ^ 0xEFAB146u) >> 24)] - 964685308) ^ (1269196952 * v53 - 1572500848) & 0x8B3B0160;
  v54 = *&v47[4 * ((v27 ^ 0x419CB3B0) >> 16)] + 103049171;
  v55 = 1894482785 * *&v51[4 * (HIBYTE(v52) ^ 0x9F)] - 964685308;
  v56 = v55 + v54 - 2 * (v55 & v54);
  v57 = (*&v47[4 * (BYTE2(v52) ^ 0x63)] + 103049171) ^ LODWORD(STACK[0xC90]) ^ (1894482785 * *&v51[4 * (BYTE3(v16) ^ 0x2A)] - 964685308) ^ (158649619 * *&v50[4 * (BYTE1(v27) ^ 0xB3)] - 733433518) ^ ((v43 ^ 0x5DD4C10B) - 934551947 + *&v48[4 * (v43 ^ 0x72)]) ^ (1269196952 * *&v50[4 * (BYTE1(v27) ^ 0xB3)] - 1572500848) & 0x8B3B0160;
  v58 = *&v50[4 * (BYTE1(v16) ^ 0x39)];
  v59 = (1894482785 * *&v51[4 * ((v27 ^ 0x419CB3B0) >> 24)] - 964685308) ^ LODWORD(STACK[0xCB0]) ^ (*&v47[4 * ((v43 ^ 0x89C96308) >> 16)] + 103049171) ^ (158649619 * v58 - 733433518) ^ (1269196952 * v58 - 1572500848) & 0x8B3B0160 ^ (*&v48[4 * (v52 ^ 0xE0)] + (v52 ^ 0x5DD4C199) - 934551947);
  LODWORD(v23) = *&v50[4 * (BYTE1(v43) ^ 0xB0)];
  v60 = ((v16 ^ 0x5DD4C1C7) - 934551947 + *&v48[4 * (v16 ^ 0xBE)]) ^ LODWORD(STACK[0xC80]) ^ (158649619 * v23 - 733433518) ^ (1269196952 * v23 - 1572500848) & 0x8B3B0160 ^ v56;
  LODWORD(v23) = *&v47[4 * (BYTE2(v16) ^ 3)] + 103049171;
  LODWORD(v16) = *&v50[4 * (BYTE1(v52) ^ 0x16)];
  LODWORD(v43) = (1894482785 * *&v51[4 * ((v43 ^ 0x89C96308) >> 24)] - 964685308) ^ LODWORD(STACK[0xCA0]) ^ v23 ^ (158649619 * v16 - 733433518) ^ ((v27 ^ 0x5DD4C1B3) - 934551947 + *&v48[4 * (v27 ^ 0xCA)]) ^ (1269196952 * v16 - 1572500848) & 0x8B3B0160;
  BYTE1(v16) = BYTE1(v60) ^ 0x2E;
  v61 = (1894482785 * *&v51[4 * ((v59 ^ 0x4BFA2388) >> 24)] - 964685308) ^ LODWORD(STACK[0xC70]) ^ (*&v47[4 * (BYTE2(v43) ^ 0x3A)] + 103049171) ^ (158649619 * *&v50[4 * (BYTE1(v57) ^ 0x27)] - 733433518) ^ (1269196952 * *&v50[4 * (BYTE1(v57) ^ 0x27)] - 1572500848) & 0x8B3B0160 ^ (*&v48[4 * (v60 ^ 0xA6)] + (v60 ^ 0x5DD4C1DF) - 934551947);
  v62 = *&v50[4 * (BYTE1(v43) ^ 0x8A)];
  LODWORD(v44) = (*&v47[4 * ((v59 ^ 0x4BFA2388) >> 16)] + 103049171) ^ LODWORD(STACK[0xC50]) ^ (158649619 * v62 - 733433518) ^ (1894482785 * *&v51[4 * ((v60 ^ 0x2DA92EDCu) >> 24)] - 964685308) ^ ((v57 ^ 0x5DD4C1E7) - 934551947 + *&v48[4 * (v57 ^ 0x9E)]) ^ ((1269196952 * v62 - 1572500848) | 0x74C4FE98);
  v63 = (1894482785 * *&v51[4 * ((v57 ^ 0x83CD27E4) >> 24)] - 964685308) ^ LODWORD(STACK[0xC60]) ^ (*&v47[4 * (BYTE2(v60) ^ 0xA9)] + 103049171) ^ (158649619 * *&v50[4 * ((v59 ^ 0x2388) >> 8)] - 733433518) ^ ((v43 ^ 0x5DD4C135) - 934551947 + *&v48[4 * (v43 ^ 0x4C)]) ^ (1269196952 * *&v50[4 * ((v59 ^ 0x2388) >> 8)] - 1572500848) & 0x8B3B0160;
  LODWORD(v16) = *&v50[4 * BYTE1(v16)];
  LODWORD(v23) = (1894482785 * *&v51[4 * (BYTE3(v43) ^ 0x52)] - 964685308) ^ LODWORD(STACK[0xA70]) ^ (*&v47[4 * ((v57 ^ 0x83CD27E4) >> 16)] + 103049171) ^ (158649619 * v16 - 733433518);
  v64 = v61 ^ 0x316EC83E;
  v65 = v23 ^ ((v59 ^ 0x5DD4C18B) - 934551947 + *&v48[4 * (v59 ^ 0xF2)]) ^ (1269196952 * v16 - 1572500848) & 0x8B3B0160;
  v66 = v44 ^ 0xAD9C7A46;
  v67 = *&v48[4 * (v44 ^ 0x3C)] + (v44 ^ 0x5DD4C145) - 934551947;
  v68 = v63 ^ 0x14F00C64;
  v69 = v65 ^ 0x1BC63150;
  v70 = (1894482785 * *&v51[4 * ((v65 ^ 0x1BC63150u) >> 24)] - 964685308) ^ (*&v47[4 * ((v63 ^ 0x14F00C64) >> 16)] + 103049171) ^ (158649619 * *&v50[4 * BYTE1(v66)] - 733433518) ^ ((v61 ^ 0x5DD4C13D) - 934551947 + *&v48[4 * (v61 ^ 0x44)]) ^ (1269196952 * *&v50[4 * BYTE1(v66)] - 1572500848) & 0x8B3B0160;
  LODWORD(STACK[0xD90]) = LODWORD(STACK[0xEC0]) < 0xD380A211;
  v71 = ((v44 ^ 0xAD9C7A46) >> 16);
  if (BYTE2(v66) >= 0xAFu)
  {
    v71 = BYTE2(v66) - 175;
  }

  v72 = HIWORD(v66) + 81;
  if (BYTE2(v66) < 0xAFu)
  {
    v72 = HIWORD(v66);
  }

  if (v71)
  {
    v73 = 0;
  }

  else
  {
    v73 = v72;
  }

  v74 = (*&v47[4 * ((BYTE2(v66) - v73) ^ 0xC5)] + 103049171) ^ (1894482785 * *&v51[4 * HIBYTE(v68)] - 964685308);
  v75 = (v65 ^ 0x5DD4C153) - 934551947 + *&v48[4 * (v65 ^ 0x2A)];
  v76 = (v63 ^ 0x5DD4C167) - 934551947 + *&v48[4 * (v63 ^ 0x1E)];
  v77 = (1894482785 * *&v51[4 * HIBYTE(v64)] - 964685308) ^ LODWORD(STACK[0xC40]) ^ (*&v47[4 * BYTE2(v69)] + 103049171) ^ (158649619 * *&v50[4 * BYTE1(v68)] - 733433518) ^ (1269196952 * *&v50[4 * BYTE1(v68)] - 1572500848) & 0x8B3B0160 ^ v67;
  v78 = v75 ^ LODWORD(STACK[0xC20]) ^ (158649619 * *&v50[4 * BYTE1(v64)] - 733433518) ^ (1269196952 * *&v50[4 * BYTE1(v64)] - 1572500848) & 0x8B3B0160 ^ ((v74 & 0x602C9EF3 ^ 0xB128FB43) & (v74 & 0x9FD3610C ^ 0xF57FFFF7) | v74 & 0xED3000C);
  v79 = (*&v47[4 * BYTE2(v64)] + 103049171) ^ LODWORD(STACK[0xBE0]) ^ (1894482785 * *&v51[4 * HIBYTE(v66)] - 964685308) ^ (158649619 * *&v50[4 * BYTE1(v69)] - 733433518) ^ v76 ^ ((1269196952 * *&v50[4 * BYTE1(v69)] - 1572500848) | 0x74C4FE98);
  v81 = __ROR4__(__ROR4__(v70 ^ 0x41F33EA9, 29) ^ 0x9E388401, 3);
  v80 = LODWORD(STACK[0xC30]) ^ v81;
  v82 = *&v50[4 * (BYTE1(v77) ^ 0xD7)];
  v83 = (*&v47[4 * (BYTE2(v79) ^ 0xB6)] + 103049171) ^ LODWORD(STACK[0xBA0]) ^ ((v80 ^ 0x5DD4C182) - 934551947 + *&v48[4 * ((LOBYTE(STACK[0xC30]) ^ v81) ^ 0xFB)]) ^ (158649619 * v82 - 733433518) ^ (1269196952 * v82 - 1572500848) & 0x8B3B0160 ^ (1894482785 * *&v51[4 * ((v78 ^ 0xFF035FB8) >> 24)] - 964685308);
  v84 = *&v50[4 * (BYTE1(v79) ^ 0x78)];
  v85 = (1894482785 * *&v51[4 * ((v80 ^ 0xD7BCCD81) >> 24)] - 964685308) ^ LODWORD(STACK[0xB00]) ^ (*&v47[4 * (BYTE2(v78) ^ 3)] + 103049171) ^ (158649619 * v84 - 733433518) ^ ((v77 ^ 0x5DD4C127) - 934551947 + *&v48[4 * (v77 ^ 0x5E)]) ^ (1269196952 * v84 - 1572500848) & 0x8B3B0160;
  v86 = (*&v47[4 * ((v80 ^ 0xD7BCCD81) >> 16)] + 103049171) ^ LODWORD(STACK[0xBD0]) ^ (1894482785 * *&v51[4 * (HIBYTE(v77) ^ 0x86)] - 964685308) ^ (158649619 * *&v50[4 * (BYTE1(v78) ^ 0x5F)] - 733433518) ^ (1269196952 * *&v50[4 * (BYTE1(v78) ^ 0x5F)] - 1572500848) & 0x8B3B0160 ^ (*&v48[4 * (v79 ^ 0xA1)] + (v79 ^ 0x5DD4C1D8) - 934551947);
  v87 = *&v50[4 * (BYTE1(v80) ^ 0x1E)];
  v88 = (*&v47[4 * (BYTE2(v77) ^ 0xCB)] + 103049171) ^ LODWORD(STACK[0xBC0]) ^ (1894482785 * *&v51[4 * ((v79 ^ 0x3B6ABDBu) >> 24)] - 964685308) ^ ((v78 ^ 0x5DD4C1BB) - 934551947 + *&v48[4 * (v78 ^ 0xC2)]) ^ (158649619 * v87 - 733433518) ^ (1269196952 * v87 - 1572500848) & 0x8B3B0160;
  v89 = *&v50[4 * (BYTE1(v86) ^ 0x55)];
  v90 = (*&v47[4 * ((v88 ^ 0xDB8077D2) >> 16)] + 103049171) ^ LODWORD(STACK[0xAB8]) ^ (1894482785 * *&v51[4 * ((v83 ^ 0x4C3657F7) >> 24)] - 964685308) ^ ((v85 ^ 0x5DD4C111) - 934551947 + *&v48[4 * (v85 ^ 0x68)]) ^ (158649619 * v89 - 733433518) ^ (1269196952 * v89 - 1572500848) & 0x8B3B0160;
  v91 = *&v50[4 * (BYTE1(v85) ^ 0x95)];
  v92 = (*&v47[4 * (((v86 ^ 0xC2C3867E) >> LODWORD(STACK[0x9F0]) >> LODWORD(STACK[0xA40])) ^ 0xC5)] + 103049171) ^ (1894482785 * *&v51[4 * ((v88 ^ 0xDB8077D2) >> 24)] - 964685308) ^ (158649619 * v91 - ((317299238 * v91 + 680616612) & 0x56EB7854) + 2143186300) ^ 0xAB75BC2A;
  v93 = (1269196952 * v91 - 1572500848) | 0x74C4FE98;
  v94 = v92 + v93;
  v95 = v92 & v93;
  v96 = *&v50[4 * ((v83 ^ 0x57F7) >> 8)];
  v97 = (1894482785 * *&v51[4 * (HIBYTE(v86) ^ 0x40)] - 964685308) ^ LODWORD(STACK[0xBB0]) ^ (*&v47[4 * ((v85 ^ 0x2D8F4612) >> 16)] + 103049171) ^ (158649619 * v96 - 733433518) ^ (1269196952 * v96 - 1572500848) & 0x8B3B0160 ^ (*&v48[4 * (v88 ^ 0xA8)] + (v88 ^ 0x5DD4C1D1) - 934551947);
  v98 = (*&v47[4 * ((v83 ^ 0x4C3657F7) >> 16)] + 103049171) ^ LODWORD(STACK[0xAC8]) ^ (1894482785 * *&v51[4 * ((v85 ^ 0x2D8F4612) >> 24)] - 964685308) ^ (158649619 * *&v50[4 * ((v88 ^ 0x77D2) >> 8)] - 733433518) ^ ((v86 ^ 0x5DD4C17D) - 934551947 + *&v48[4 * (v86 ^ 4)]) ^ (1269196952 * *&v50[4 * ((v88 ^ 0x77D2) >> 8)] - 1572500848) & 0x8B3B0160;
  v99 = ((v83 ^ 0x5DD4C1F4) - 934551947 + *&v48[4 * (v83 ^ 0x8D)]) ^ LODWORD(STACK[0xB80]) ^ (v94 - 2 * v95);
  v100 = v99 ^ 0x405CA80;
  v101 = *&v48[4 * ((((v83 ^ 0xF4) + 117 + v48[4 * (v83 ^ 0x8D)]) ^ LOBYTE(STACK[0xB80]) ^ (v94 - 2 * v95)) ^ 0xFA)] + ((((v83 ^ 0xF4) + 117 + v48[4 * (v83 ^ 0x8D)]) ^ LOBYTE(STACK[0xB80]) ^ (v94 - 2 * v95)) ^ 0x5DD4C183) - 934551947;
  v102 = BYTE1(v98) ^ 0xC2;
  v103 = (v98 ^ 0x5DD4C18A) - 934551947 + *&v48[4 * (v98 ^ 0xF3)];
  v104 = *&v50[4 * ((v99 ^ 0xCA80) >> 8)];
  v105 = (*&v47[4 * (BYTE2(v90) ^ 0x95)] + 103049171) ^ LODWORD(STACK[0xAF0]) ^ (1894482785 * *&v51[4 * ((v98 ^ 0x9A7AC289) >> 24)] - 964685308) ^ ((v97 ^ 0x5DD4C14E) - 934551947 + *&v48[4 * (v97 ^ 0x37)]) ^ (158649619 * v104 - 733433518) ^ (1269196952 * v104 - 1572500848) & 0x8B3B0160;
  v106 = *&v50[4 * (BYTE1(v90) ^ 0x47)];
  v107 = (1894482785 * *&v51[4 * (HIBYTE(v97) ^ 0xE)] - 964685308) ^ LODWORD(STACK[0xB90]) ^ (*&v47[4 * (BYTE2(v98) ^ 0xBF)] + 103049171) ^ (158649619 * v106 - 733433518) ^ (1269196952 * v106 - 1572500848) & 0x8B3B0160 ^ v101;
  v108 = *&v50[4 * (BYTE1(v97) ^ 0x28)];
  v109 = (1894482785 * *&v51[4 * (HIBYTE(v90) ^ 0x7B)] - 964685308) ^ LODWORD(STACK[0xB70]) ^ (*&v47[4 * (BYTE2(v99) ^ 5)] + 103049171) ^ (158649619 * v108 - 733433518) ^ v103;
  v110 = (*&v47[4 * (BYTE2(v97) ^ 0x8E)] + 103049171) ^ LODWORD(STACK[0xB50]) ^ (158649619 * *&v50[4 * v102] - 733433518) ^ ((v90 ^ 0x5DD4C1D4) - 934551947 + *&v48[4 * (v90 ^ 0xAD)]) ^ (1269196952 * *&v50[4 * v102] - 1572500848) & 0x8B3B0160 ^ (1894482785 * *&v51[4 * HIBYTE(v100)] - 964685308);
  v111 = v109 ^ (1269196952 * v108 - 1572500848) & 0x8B3B0160 ^ 0x9F91C5FF;
  HIDWORD(v112) = (v109 >> 15) & 1 | 0x1024F8E;
  LODWORD(v112) = (v111 << 17) ^ 0xB0000000;
  v113 = *&v48[4 * (v110 ^ 0x4D)] + (v110 ^ 0x5DD4C134) - 934551947;
  v114 = v107 ^ 0xAFA5FEE2;
  BYTE2(v104) = BYTE2(v105) ^ 0x80;
  v115 = (v105 ^ 0x5DD4C1FF) - 934551947 + *&v48[4 * (v105 ^ 0x86)];
  v116 = *&v50[4 * (BYTE1(v110) ^ 0x7D)];
  v117 = (1894482785 * *&v51[4 * ((v105 ^ 0x668033FC) >> 24)] - 964685308) ^ LODWORD(STACK[0xB40]) ^ (*&v47[4 * BYTE2(v111)] + 103049171) ^ (158649619 * v116 - 733433518) ^ ((v107 ^ 0x5DD4C1E1) - 934551947 + *&v48[4 * (v107 ^ 0x98)]) ^ (1269196952 * v116 - 1572500848) & 0x8B3B0160;
  v118 = *&v50[4 * (BYTE1(v105) ^ 0xE0)];
  v119 = (*&v47[4 * ((v107 ^ 0xAFA5FEE2) >> 16)] + 103049171) ^ LODWORD(STACK[0xAC0]) ^ (1894482785 * *&v51[4 * (HIBYTE(v110) ^ 0x7A)] - 964685308) ^ (158649619 * v118 - 733433518) ^ ((v111 ^ 0x5DD4C103) - 934551947 + *&v48[4 * (v111 - ((2 * v111) & 0xF4)) + 488]) ^ ((1269196952 * v118 - 1572500848) | 0x74C4FE98);
  v120 = LODWORD(STACK[0xA60]) ^ (*&v47[4 * (BYTE2(v110) ^ 0x3A)] + 103049171) ^ (1894482785 * *&v51[4 * HIBYTE(v111)] - 964685308) ^ (158649619 * *&v50[4 * BYTE1(v114)] - 733433518) ^ v115 ^ (1269196952 * *&v50[4 * BYTE1(v114)] - 1572500848) & 0x8B3B0160;
  v121 = *&v50[4 * ((v112 >> 25) ^ 0x8127C70B)];
  v122 = v119 ^ 0xCC5C9503;
  v123 = *&v48[4 * (v119 ^ 0x79)] + (v119 ^ 0x5DD4C100) - 934551947;
  v124 = (1894482785 * *&v51[4 * HIBYTE(v114)] - 964685308) ^ LODWORD(STACK[0xB60]) ^ (*&v47[4 * BYTE2(v104)] + 103049171) ^ (158649619 * v121 - 733433518) ^ (1269196952 * v121 - 1572500848) & 0x8B3B0160 ^ v113 ^ 0x8C2D8305;
  v125 = ((97 * v51[4 * HIBYTE(v114)] + 4) ^ LOBYTE(STACK[0xB60]) ^ (v47[4 * BYTE2(v104)] - 45) ^ (19 * v121 + 82) ^ (-112 - 104 * v121) & 0x60 ^ v113) ^ 5;
  if (v125 < 0xE8)
  {
    v126 = v124;
  }

  else
  {
    v125 -= 232;
    v126 = v124 + 24;
  }

  v127 = v120 ^ 0xED4273D7;
  if (v125)
  {
    v126 = 0;
  }

  v128 = *&v50[4 * (BYTE1(v119) ^ 0x46)];
  v129 = LODWORD(STACK[0xA30]) ^ (*&v47[4 * ((v120 ^ 0xED4273D7) >> 16)] + 103049171) ^ (1894482785 * *&v51[4 * (HIBYTE(v117) ^ 0xB5)] - 964685308) ^ (158649619 * v128 - 733433518) ^ ((1269196952 * v128 - 1572500848) | 0x74C4FE98) ^ (((v124 - v126) ^ 0x5DD4C103) - 934551947 + *&v48[4 * ((v124 - v126) ^ 0x7A)]);
  v130 = (v117 ^ 0x5DD4C147) - 934551947 + *&v48[4 * (v117 ^ 0x3E)];
  v131 = *&v47[4 * (BYTE2(v117) ^ 0xB9)];
  v132 = *&v47[4 * BYTE2(v122)];
  v133 = *&v51[4 * HIBYTE(v124)];
  v134 = *&v51[4 * HIBYTE(v122)];
  v135 = *&v50[4 * (BYTE1(v117) ^ 0xA)];
  v136 = (v132 + 103049171) ^ LODWORD(STACK[0xB20]) ^ (1894482785 * *&v51[4 * HIBYTE(v127)] - 964685308) ^ v130 ^ (158649619 * *&v50[4 * BYTE1(v124)] - 733433518) ^ (1269196952 * *&v50[4 * BYTE1(v124)] - 1572500848) & 0x8B3B0160;
  v137 = (v131 + 103049171) ^ LODWORD(STACK[0xB30]) ^ (158649619 * *&v50[4 * BYTE1(v127)] - 733433518) ^ (1269196952 * *&v50[4 * BYTE1(v127)] - 1572500848) & 0x8B3B0160 ^ v123 ^ (1894482785 * v133 - 964685308);
  v138 = (*&v47[4 * BYTE2(v124)] + 103049171) ^ LODWORD(STACK[0xB10]) ^ (158649619 * v135 - 733433518) ^ (1894482785 * v134 - 964685308) ^ ((v120 ^ 0x5DD4C1D4) - 934551947 + *&v48[4 * (v120 ^ 0xAD)]) ^ (1269196952 * v135 - 1572500848) & 0x8B3B0160;
  v139 = HIBYTE(v129);
  v140 = HIBYTE(v136);
  v141 = STACK[0xED0];
  v142 = *(&off_1010A0B50 + LODWORD(STACK[0xED0]) - 37851) - 27669378;
  LODWORD(STACK[0xD80]) = *&v142[4 * (HIBYTE(v137) ^ 0x21)];
  LODWORD(STACK[0xD60]) = *&v142[4 * (HIBYTE(v129) ^ 0x3C)];
  LODWORD(STACK[0xD70]) = *&v142[4 * (HIBYTE(v136) ^ 0x33)];
  v143 = *&v142[4 * (HIBYTE(v138) ^ 0x7D)];
  v144 = *(&off_1010A0B50 + v141 - 38862) - 1030009611;
  LODWORD(STACK[0xD40]) = *&v144[4 * (BYTE2(v129) ^ 0x46)];
  v145 = *&v144[4 * (BYTE2(v136) ^ 0x45)];
  v146 = (HIBYTE(v138) ^ 0xFC) - (HIBYTE(v138) ^ 0x834A6A49);
  LODWORD(STACK[0xD50]) = *&v144[4 * (BYTE2(v138) ^ 0xBA)];
  v147 = *&v144[4 * (BYTE2(v137) ^ 0x13)];
  v148 = *(&off_1010A0B50 + v141 - 36422) - 2124201283;
  v149 = BYTE1(v136);
  v150 = *&v148[4 * (BYTE1(v136) ^ 0xD4)];
  v151 = BYTE1(v138);
  v152 = *&v148[4 * (BYTE1(v138) ^ 0xF2)];
  LODWORD(STACK[0xD30]) = *&v148[4 * (BYTE1(v137) ^ 0x3D)];
  v153 = BYTE1(v129);
  LODWORD(v148) = *&v148[4 * (BYTE1(v129) ^ 0x7A)];
  v154 = v138;
  v155 = *(&off_1010A0B50 + (v141 ^ 0xAE7A)) - 827531155;
  v156 = *&v155[4 * (v138 ^ 0x28)];
  v157 = *&v155[4 * (v137 ^ 0xDD)];
  v158 = v129;
  v159 = *&v155[4 * (v129 ^ 0x50)];
  v160 = LODWORD(STACK[0xA10]) ^ v153 ^ __ROR4__(((-((v137 << 7) & 0x7F800000 ^ 0x864AC42B) ^ (((v137 << 7) & 0x7F800000 ^ 0x1B000000) + 1656044501) ^ 0x7933936C ^ (((v137 << 7) & 0x7F800000 ^ 0x864AC42B) - ((2 * ((v137 << 7) & 0x7F800000 ^ 0x864AC42B)) & 0xF2050050) + 2033423212)) + ((v137 << 7) & 0x7F800000 ^ 0x1B000000)) ^ 0xE3056CB2, 23) ^ v146 ^ v143 ^ v147 ^ v148 ^ ((v136 ^ 0x8211ABEA) - 911029901 + *&v155[4 * (v136 ^ 0x83)]);
  v161 = *(&off_1010A0B50 + (v141 ^ 0xADC5)) - 1243746674;
  LODWORD(v148) = v161[HIBYTE(v160) ^ 0x1BLL];
  v162 = STACK[0x9E8];
  *(v162 + STACK[0xDA0]) = ((((v148 ^ 0x2F) - (v148 ^ 0x69)) ^ 0xFC) + (v148 ^ 0x2F)) ^ ((v148 ^ 0x2F) >> 3) & 0x13;
  v163 = *(&off_1010A0B50 + (v141 ^ 0xA773)) - 2112942678;
  LODWORD(v148) = v163[v160 ^ 0xFALL];
  *(v162 + STACK[0xDF0]) = ((v148 >> 1) | (v148 << 7)) ^ (8 * (v148 >> 1)) ^ 0x36;
  v164 = ((v139 ^ 0xBD) - (v139 ^ 0x834A6A08)) ^ LODWORD(STACK[0xAE8]) ^ v151 ^ v145 ^ v152 ^ ((v137 ^ 0x8211ABB4) - 911029901 + v157) ^ LODWORD(STACK[0xD60]);
  LODWORD(v148) = v163[(((v139 ^ 0xBD) - (v139 ^ 8)) ^ LOBYTE(STACK[0xAE8]) ^ v151 ^ v145 ^ v152 ^ ((v137 ^ 0xB4) + 115 + v157) ^ LOBYTE(STACK[0xD60])) ^ 0x5DLL];
  *(v162 + STACK[0xDC0]) = ((v148 >> 1) | (v148 << 7)) ^ (8 * (v148 >> 1)) ^ 0x4D;
  v165 = *(&off_1010A0B50 + v141 - 40694) - 1905333107;
  *(v162 + STACK[0xE40]) = ((BYTE2(v160) ^ 0xEB) + v165[BYTE2(v160) ^ 0xDDLL] - 7) ^ 0x39;
  v166 = *(&off_1010A0B50 + v141 - 39156) - 155350371;
  *(v162 + STACK[0xDB0]) = v166[BYTE1(v160) ^ 0x13] ^ 0x51;
  LODWORD(v148) = LODWORD(STACK[0xA20]) ^ ((HIBYTE(v137) ^ 0xA0) - (HIBYTE(v137) ^ 0x834A6A15)) ^ v149 ^ LODWORD(STACK[0xD80]) ^ v150 ^ ((v154 ^ 0x8211AB41) - 911029901 + v156) ^ 0x4D629EE4 ^ LODWORD(STACK[0xD40]);
  v167 = BYTE1(v137) ^ LODWORD(STACK[0xAA8]) ^ ((v140 ^ 0xB2) - (v140 ^ 0x834A6A07)) ^ LODWORD(STACK[0xD50]) ^ LODWORD(STACK[0xD70]) ^ LODWORD(STACK[0xD30]) ^ ((v158 ^ 0x8211AB39) - 911029901 + v159);
  LODWORD(v144) = ((v148 & 0x15FA8BF7 ^ 0xB87DF2E4) & (v148 & 0xEA057408 ^ 0x35FBCFF7) | v148 & 0x42000408) ^ LODWORD(STACK[0xAE0]);
  *(v162 + STACK[0xDD0]) = v166[BYTE1(v167) ^ 0xE8] ^ 0xB1;
  *(v162 + STACK[0xE80]) = ((BYTE2(v144) ^ 0x89) + v165[BYTE2(v144) ^ 0xBF] - 7) ^ 0xAF;
  *(v162 + STACK[0xDE0]) = v161[(v144 >> 24) ^ 0xA7] ^ 0x27 ^ (v161[(v144 >> 24) ^ 0xA7] >> 3) & 0x13;
  LODWORD(v148) = v163[v144 ^ 3];
  *(v162 + STACK[0xE20]) = ((v148 >> 1) | (v148 << 7)) ^ (8 * (v148 >> 1)) ^ 0x4A;
  LOWORD(v148) = v161[HIBYTE(v167) ^ 0x78];
  *(v162 + STACK[0xE90]) = (v148 & 0x20 | 0xD9) ^ v148 & 0xDF ^ 0x76 ^ (((((v148 & 0x20 | 0xFFD9) ^ v148 & 0xFFDF) & 0x1F8) >> 3) | 0xAC);
  *(v162 + STACK[0xE00]) = ((BYTE2(v167) ^ 0x66) + v165[BYTE2(v167) ^ 0x50] - 7) ^ 5;
  *(v162 + STACK[0xE70]) = v161[HIBYTE(v164) ^ 0x11] ^ 0x9A ^ (v161[HIBYTE(v164) ^ 0x11] >> 3) & 0x13;
  *(v162 + STACK[0xE60]) = ((BYTE2(v164) ^ 0x98) + v165[BYTE2(v164) ^ 0xAELL] - 7) ^ 0xE6;
  *(v162 + STACK[0xEA0]) = v166[BYTE1(v144) ^ 0x36] ^ 0x8B;
  *(v162 + STACK[0xE30]) = v166[BYTE1(v164) ^ 0x5FLL] ^ 0xA6;
  v168 = v163[v167 ^ 0x5BLL];
  LODWORD(v148) = (((LODWORD(STACK[0xE10]) ^ 0x14754C37) - 343231543) ^ ((LODWORD(STACK[0xE10]) ^ 0x8176276) - 135750262) ^ ((LODWORD(STACK[0xE10]) ^ 0x67E8C12D) - 1743307053)) + 2137976777;
  LODWORD(v148) = ((v148 ^ 0x9B337726) + 1730709653) ^ v148 ^ ((v148 ^ 0xC20ED26B) + 1041575386) ^ ((v148 ^ 0xA52642BF) + 1497218318) ^ ((v148 ^ 0xFFFFE7BF) + 65280014);
  *(v162 + STACK[0xEB0]) = ((v168 >> 1) | (v168 << 7)) ^ (8 * (v168 >> 1)) ^ 0xCF;
  v169 = (((v148 ^ 0xDA0D213E) + 1570517473) ^ ((v148 ^ 0x27CE610) - 2048002353) ^ ((v148 ^ 0xDB95C763) + 1543821246)) + 1326158205;
  v170 = LODWORD(STACK[0xD90]) ^ (v169 < 0xD380A211);
  v171 = v169 < LODWORD(STACK[0xEC0]);
  if (v170)
  {
    v171 = STACK[0xD90];
  }

  return (*(STACK[0xF18] + 8 * ((47 * (v171 ^ 1)) ^ v141)))();
}

uint64_t sub_1004EA724@<X0>(int a1@<W8>)
{
  v1 = a1 - 194;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004EA754@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x5A18];
  v4 = STACK[0x5090];
  v5 = 17902189 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1AE7D8B8) - 1696081736) ^ 0x14A8CEA8);
  LODWORD(STACK[0x10F00]) = v2 - v5 + 35160;
  LODWORD(STACK[0x10EF8]) = ((((((v2 ^ 0x6AC4) + 1501701065) ^ v1) - 1501725639) ^ ((v1 ^ 0x4D6FED27) - 1299180839) ^ ((v1 ^ 0xFD38F60F ^ (v2 - 1006589244) & 0x3BFF7FFF) + 46618127)) + 1159547400) ^ v5;
  STACK[0x10ED8] = a1;
  STACK[0x10EE0] = v4;
  STACK[0x10EE8] = a1;
  STACK[0x10EF0] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 38535)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((123 * (LODWORD(STACK[0x10EFC]) == -371865839)) ^ v2)))(v7);
}

uint64_t sub_1004EA894@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1 + 1;
  STACK[0x10ED8] = *(v1 + 32);
  LODWORD(STACK[0x10EE0]) = v2 + 155453101 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x53602D8) + 87425757) ^ 0xE3101912) - 2049510386;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x8BD96436)))(&STACK[0x10ED8]);
  v5 = *(v1 + 48);
  LODWORD(STACK[0x10EE8]) = v2 - (((&STACK[0x10ED8] | 0x9AC6BE1F) + (~&STACK[0x10ED8] | 0x653941E0)) ^ 0xABC7733A) * v3 + 1948710052;
  STACK[0x10EE0] = v5;
  v6 = (*(v4 + 8 * (v2 ^ 0x8BD965A0)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((v2 > 0x48961E75) * (v2 ^ 0x8BD9BCD5)) ^ (v2 + 1948672025))))(v6);
}

uint64_t sub_1004EAA04()
{
  v3 = v1 - 1353811345;
  v4 = (((*v2 ^ 0x543AC43B) - 1413137467) ^ ((*v2 ^ 0xFC268A77) + 64583049) ^ (((((v0 - 26025) | 0x40C) + 1103709440) ^ *v2) - 1103726941)) - 1725677184;
  v6 = v4 > 0xAF4E7A6E && v3 >= v4;
  return (*(STACK[0xF18] + 8 * ((978 * v6) ^ v0)))();
}

uint64_t sub_1004EAABC@<X0>(unint64_t a1@<X8>)
{
  v4 = v1 - 2119067649 + (((*(v2 + 68) & 0x3F ^ 0xBF1F12A1) + 1564953971) ^ ((v3 ^ 0x381C) - 1680481382 + (*(v2 + 68) & 0x3F ^ 0x798DBC71)) ^ (((4203 * (v3 ^ 0x381C)) ^ *(v2 + 68) & 0x3F ^ 0xC6923D13) + 617279748)) + 1684486307 < 0xFFFFFFC0;
  STACK[0x4E60] = v2;
  LODWORD(STACK[0x983C]) = v1;
  STACK[0x2D08] = a1;
  return (*(STACK[0xF18] + 8 * ((26869 * v4) ^ v3)))();
}

uint64_t sub_1004EABB4()
{
  v1 = STACK[0x7BC8];
  *v1 = *STACK[0x8750] - 0x7E666516A39B349ELL;
  v2 = STACK[0x2030];
  *(v1 + 8) = *(STACK[0x2030] + 56);
  *(v1 + 16) = *(v2 + 24);
  LODWORD(v2) = STACK[0x163C];
  *(v1 + 24) = STACK[0x8BDC];
  *(v1 + 28) = v2;
  v3 = STACK[0xF18];
  STACK[0x18F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * ((((v0 + 248114425) & 0xF136D3DD) - 32253) ^ v0)))();
}

uint64_t sub_1004EAD10()
{
  v0 = STACK[0xF10];
  v1 = 1193 * (STACK[0xF10] ^ 0x8B3E);
  v2 = STACK[0xF10] - 25702;
  v3 = STACK[0xB828];
  v4 = STACK[0xB840];
  v5 = 193924789 * ((((&STACK[0x10000] + 3800) | 0x5DEDF4E9) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xA2120B10)) ^ 0xEB56C68F);
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 274) ^ v5;
  STACK[0x10EE0] = v3;
  STACK[0x10F00] = v4;
  STACK[0x10EF0] = v4;
  LODWORD(STACK[0x10EE8]) = 1924169099 - v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 16679)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((*(STACK[0xB820] + 32) > 0x30u) * (v1 ^ 0x1761)) ^ v2)))(v7);
}

void *sub_1004EAE2C()
{
  v1 = STACK[0xF18];
  STACK[0x37B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7596 ^ (v0 + 16964))))(&STACK[0x9310]);
}

uint64_t sub_1004EAE7C@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0x64D7]) = v2;
  LODWORD(STACK[0x5648]) = v1;
  v3 = 634647737 * (((~&STACK[0x10ED8] | 0x2E9E704B101E9F68) + (&STACK[0x10ED8] | 0xD1618FB4EFE16097)) ^ 0xBBA205B82774F6ALL);
  LODWORD(STACK[0x10EF8]) = a1 - v3 - 1230214699;
  LODWORD(STACK[0x10EFC]) = ((a1 + 1845477760) ^ 0x38) - v3;
  LODWORD(STACK[0x10EE4]) = a1 + 1845477760 + v3;
  LODWORD(STACK[0x10ED8]) = -634647737 * (((~&STACK[0x10ED8] | 0x101E9F68) + (&STACK[0x10ED8] | 0xD1618FB4EFE16097)) ^ 0x82774F6A);
  LODWORD(STACK[0x10EDC]) = a1 + 1845477760 - v3 + 4458;
  STACK[0x10EF0] = -634647737 * (((~&STACK[0x10ED8] | 0x2E9E704B101E9F68) + (&STACK[0x10ED8] | 0xD1618FB4EFE16097)) ^ 0xBBA205B82774F6ALL);
  STACK[0x10EE8] = v2 | v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 + 16305)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_1004EB014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3F98];
  STACK[0x5D28] = &STACK[0x87CC];
  LODWORD(STACK[0x4704]) = -1928922744;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004EB06C@<X0>(_BYTE *a1@<X8>)
{
  *a1 = v1;
  LODWORD(STACK[0x10ED8]) = (v2 - 2608) ^ (1603510583 * (((&STACK[0x10ED8] | 0xEE68C16) - (&STACK[0x10ED8] & 0xEE68C10)) ^ 0x993DBEBD));
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 16406)))(&STACK[0x10ED8]);
  v4 = STACK[0x2568];
  *(STACK[0x2568] + 4) = STACK[0x10EDC];
  LODWORD(STACK[0x10ED8]) = v2 + 634647737 * (((~&STACK[0x10ED8] & 0x84251728) - (~&STACK[0x10ED8] | 0x84251729)) ^ 0xE9B338D5) - 212212507;
  v5 = (*(v3 + 8 * (v2 ^ 0x4005)))(&STACK[0x10ED8]);
  *(v4 + 8) = -1562523887;
  *(v4 + 12) = *STACK[0xAAF0];
  STACK[0x98A8] = *(v3 + 8 * (v2 - 33834));
  return (*(v3 + 8 * (v2 - 29776)))(v5);
}

uint64_t sub_1004EB3FC()
{
  STACK[0x10EE0] = *(v0 + 16);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762667040) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x51D8ABFA) - (&STACK[0x10000] + 3800) - 686577149) ^ 0x19ED98D9));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 10506)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((31 * (*(v0 + 24) == (v1 ^ 0xA1AF))) ^ v1)))(v3);
}

uint64_t sub_1004EB4E0()
{
  v1 = STACK[0xF18];
  STACK[0x8228] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x92B6 ^ ((v0 + 29358) | 0xAC8))))();
}

uint64_t sub_1004EB518()
{
  v0 = STACK[0xF10] - 33732;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x13C9)))();
}

uint64_t sub_1004EB764@<X0>(int a1@<W8>)
{
  v2 = a1 + LODWORD(STACK[0xA2BC]) + 1713003704;
  v3 = v2 > (((v1 - 10306) | 0x186) ^ 0x14D8EAC) + LODWORD(STACK[0x21D4]);
  if (LODWORD(STACK[0x21D4]) > 0xFEB27ED4 != v2 < 0x14D812B)
  {
    v3 = v2 < 0x14D812B;
  }

  return (*(STACK[0xF18] + 8 * ((45 * v3) ^ v1)))();
}

uint64_t sub_1004EB858()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762656043) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x789024A9) - ((&STACK[0x10000] + 3800) & 0x789024A8)) ^ 0x4991E98D));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBC03)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((v4 * (((v0 + 153628000) ^ 0x928A8BC) - 3126)) ^ v0)))(v2);
}

uint64_t sub_1004EB948@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 18317));
  return (*(v1 + 8 * ((a1 - 18317) ^ 0x13B1 ^ (14366 * (((a1 - 18317) ^ 0xC83BA2BE) == a1 + 1697338430)))))();
}

uint64_t sub_1004EBCFC()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) ^ 0x43AE2D67) - 2 * (((&STACK[0x10000] + 3800) ^ 0x43AE2D67) & 0x2CDEB5B0) + 752793008) ^ 0x89568318) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 4770)))(v2);
}

uint64_t sub_1004EBD90@<X0>(int a1@<W8>)
{
  *(v1 + 24) = ((33 * (v2 ^ 0x5D9D)) ^ 0x2A26) + a1;
  STACK[0x10ED8] = *(v1 + 16);
  LODWORD(STACK[0x10EE0]) = v2 + 155453101 * ((((&STACK[0x10000] + 3800) ^ 0x1058001) & 0x6187A2C1 | ((&STACK[0x10000] + 3800) ^ 0x8C501500) & 0x9E785D38) ^ 0x6B738ECE) + 296764976;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x9610)))(&STACK[0x10ED8]);
  v5 = *(v1 + 56);
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4E18] = v7;
  STACK[0xA978] = (v7 + 16);
  STACK[0xA980] = (v7 + 48);
  STACK[0x26A8] = (v7 + 64);
  STACK[0x3170] = (v7 + 80);
  STACK[0x7690] = v6 + 96;
  LODWORD(STACK[0x4B14]) = -371865839;
  STACK[0x53D8] = 0;
  STACK[0x35E0] = 0;
  STACK[0x39E0] = 0;
  LODWORD(STACK[0x4954]) = -371865839;
  STACK[0x67E0] = v5;
  return (*(v3 + 8 * (((v5 != 0) * ((v2 - 331403547) & 0x13C0FF7B ^ 0x8ABE)) ^ v2)))(v4);
}

uint64_t sub_1004EBF44()
{
  v0 = STACK[0xF10];
  v1 = 57 * (STACK[0xF10] ^ 0x8B5C);
  v2 = STACK[0xF10] - 33780;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((((v2 ^ 0x96ECD6Fu) > 0xFB683070) * (v1 + 9783)) ^ (v0 - 30333))))();
}

uint64_t sub_1004EC018@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7690];
  STACK[0xA900] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v1 - 35611 + ((a1 - 37766) | 0x8003u);
  STACK[0x3850] = 0;
  LODWORD(STACK[0x3834]) = -371865839;
  STACK[0x8F88] = 0;
  LODWORD(STACK[0x1950]) = -371865839;
  LODWORD(STACK[0x7E54]) = 1543924816;
  return (*(STACK[0xF18] + 8 * ((78 * (LODWORD(STACK[0x3554]) == ((a1 - 2060001738) & 0x7AC8CF7B) - 371885407)) ^ a1)))();
}

uint64_t sub_1004EC0D0()
{
  STACK[0x3088] = STACK[0xF88];
  LODWORD(STACK[0x1B20]) = v1;
  STACK[0x3038] = STACK[0x4608] ^ 0x20DE4F5147E73171;
  STACK[0x7690] -= 96;
  return (*(STACK[0xF18] + 8 * ((v0 - 35478) ^ 0x1F1C)))();
}

uint64_t sub_1004EC1E0@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBB50] = 0;
  STACK[0xBB58] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBB50] | v13);
  *(&STACK[0xBB50] | v13) = STACK[0xBB57];
  v17 = *(&STACK[0xBB50] | v14);
  *(&STACK[0xBB50] | v14) = STACK[0xBB56];
  v18 = *(&STACK[0xBB50] | v15);
  *(&STACK[0xBB50] | v15) = STACK[0xBB55];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBB57]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBB56]) = v17;
  LOBYTE(STACK[0xBB55]) = v18;
  v23 = STACK[0xBB50];
  LOBYTE(STACK[0xBB50]) = STACK[0xBB54];
  LOBYTE(STACK[0xBB54]) = v23;
  v24 = *(&STACK[0xBB50] | v20);
  *(&STACK[0xBB50] | v20) = STACK[0xBB53];
  LOBYTE(STACK[0xBB53]) = v24;
  v25 = STACK[0xBB51];
  LOBYTE(STACK[0xBB52]) = STACK[0xBB50];
  LOWORD(STACK[0xBB50]) = v25;
  STACK[0xBB50] = vmla_s32(v22, STACK[0xBB50], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBB58];
  v27 = (553300517 * STACK[0xBB58]) ^ v12;
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
  v48 = *(&STACK[0xBB58] + v13);
  *(&STACK[0xBB58] + v13) = STACK[0xBB5F];
  LOBYTE(STACK[0xBB5F]) = v48;
  v49 = *(&STACK[0xBB58] + v14);
  *(&STACK[0xBB58] + v14) = STACK[0xBB5E];
  LOBYTE(STACK[0xBB5E]) = v49;
  v50 = *(&STACK[0xBB58] + v15);
  *(&STACK[0xBB58] + v15) = STACK[0xBB5D];
  LOBYTE(STACK[0xBB5D]) = v50;
  v51 = STACK[0xBB58];
  LOBYTE(STACK[0xBB58]) = STACK[0xBB5C];
  LOBYTE(STACK[0xBB5C]) = v51;
  v52 = *(&STACK[0xBB58] + v20);
  *(&STACK[0xBB58] + v20) = STACK[0xBB5B];
  LOBYTE(STACK[0xBB5B]) = v52;
  v53 = STACK[0xBB59];
  LOBYTE(STACK[0xBB5A]) = STACK[0xBB58];
  LOWORD(STACK[0xBB58]) = v53;
  STACK[0xBB58] = vmla_s32(v22, STACK[0xBB58], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBB58] ^ STACK[0xBB50];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1004EC724@<X0>(int a1@<W8>)
{
  v1 = a1 & 0x6BE4EF7B;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((a1 & 0x6BE4EF7B) + 16238)))();
  return (*(v2 + 8 * (v1 - 23166)))(v3);
}

uint64_t sub_1004EC7AC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34611;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 30552) ^ v1)))();
}

uint64_t sub_1004EC854()
{
  v5 = *(v3 + 47 - v2);
  v6.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v6.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v7 = vmvnq_s8(vandq_s8(vaddq_s8(v5, v5), v6));
  v6.i64[0] = 0x6060606060606060;
  v6.i64[1] = 0x6060606060606060;
  *(v4 + 47 - v2 + v0) = vaddq_s8(vaddq_s8(v5, v6), v7);
  return (*(STACK[0xF18] + 8 * (((v2 != 32) * (v1 - 35617)) ^ (v1 - 8053))))();
}

uint64_t sub_1004EC96C()
{
  LODWORD(STACK[0x7EB0]) = v2;
  v3 = STACK[0x5198];
  v4 = STACK[0x42B0];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  *(v1 + 1372) = v4;
  LODWORD(STACK[0x884C]) = 1390361813;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_1004ECA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x2F0C]) = -371865839;
  STACK[0x1630] = 0;
  LODWORD(STACK[0x8B9C]) = -371865839;
  STACK[0x4410] = 0;
  LODWORD(STACK[0x15F4]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == ((a3 + 963724850) & 0xC68EA5CF) - 371866942) * (((a3 + 1153745711) & 0xBB3BAFBF) - 24707)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1004ECA98@<X0>(int a1@<W8>)
{
  STACK[0x6FB8] = 0x568149B8E14E85F5;
  *(v1 + 8) = 0x23559AFC54E4E09ELL;
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 793808781;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004ECB18()
{
  LODWORD(STACK[0x62EC]) = v0;
  LODWORD(STACK[0x8A8C]) = v1;
  return (*(STACK[0xF18] + 8 * (v2 - 15845)))();
}

uint64_t sub_1004ECB44()
{
  STACK[0x1208] = v0;
  v2 = STACK[0x7690];
  STACK[0x6F68] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((v1 + 1664820388) & 0x9CC4FDF7) + v2 - 44343;
  return (*(STACK[0xF18] + 8 * ((85 * (v0 != 0)) ^ (v1 - 2462))))();
}

uint64_t sub_1004ECC14()
{
  LODWORD(STACK[0xED0]) = 2 * v1;
  LOWORD(STACK[0x10EEC]) = (-2887 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x8EB8) - 28999) ^ 0xA145)) ^ 0x1E00;
  LODWORD(STACK[0x10EE0]) = (v4 - 28637) ^ (634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1E708EB8) - 1636790599) ^ 0xF3E6A145));
  STACK[0x10EF0] = v2;
  LOWORD(STACK[0x10EE4]) = -2887 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x8EB8) - 28999) ^ 0xA145) + (v1 ^ 0x32FF) + ((v0 - 9533) & (2 * v1)) - 4097;
  STACK[0x10ED8] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 ^ 0xA57D)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * (((v4 - 12153) | 0x2009) + 33994)) ^ v4)))(v6);
}

uint64_t sub_1004ECD08()
{
  v1 = STACK[0xF10] - 3381;
  v2 = STACK[0x1800];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*(STACK[0x1800] + 704));
  *(v2 + 704) = 0;
  *(v2 + 712) = v0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004ECE78@<X0>(int a1@<W8>)
{
  v2 = STACK[0xB3CC];
  LODWORD(STACK[0x45E4]) = a1;
  LODWORD(STACK[0x234C]) = v2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004ECECC()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 27379) | 0x8284;
  v2 = STACK[0xF10] - 31747;
  v3 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((((v2 ^ 0x4F413ECBu) < 0x6B90B618) * (v1 - 36701)) ^ (v0 - 33077))))();
}

uint64_t sub_1004ECFA0()
{
  LODWORD(STACK[0x8B74]) = v2;
  STACK[0x7690] = v0 - 112;
  return (*(STACK[0xF18] + 8 * ((480 * (*STACK[0x21A8] != 0)) ^ (v1 - 4669))))();
}

uint64_t sub_1004ED02C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 28175)))(v2);
}

uint64_t sub_1004ED058()
{
  v2 = STACK[0xF18];
  STACK[0x35E0] = (*(STACK[0xF18] + 8 * (v0 + 34962)))(((v0 ^ 0xCA7C) - 956015235) ^ v1);
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1004ED0E0()
{
  v1 = STACK[0xF18];
  STACK[0x9820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 5610) | 0x1024) - 8567) ^ v0)))();
}

uint64_t sub_1004ED120(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&STACK[0xD20] = *(v8 + a5 - 16);
  v14.i64[0] = v7 + a5 + 5;
  v14.i64[1] = v7 + a5 + 4;
  v15.i64[0] = v8 + a5 - 1;
  v15.i64[1] = v8 + a5 - 2;
  v16 = v15;
  *&STACK[0xCC0] = v15;
  v15.i64[0] = v8 + a5 - 3;
  v15.i64[1] = v8 + a5 - 4;
  v17 = v15;
  *&STACK[0xCB0] = v15;
  v18.i64[0] = v8 + a5 - 5;
  v18.i64[1] = a7 + a5 + a1;
  v19.i64[0] = v8 + a5 - 7;
  v19.i64[1] = v8 + a5 - 8;
  v15.i64[0] = v8 + a5 - 9;
  v15.i64[1] = v8 + a5 - 10;
  *&STACK[0xD00] = v15;
  v20.i64[0] = v8 + a5 - 11;
  v20.i64[1] = v8 + a5 - 12;
  *&STACK[0xCF0] = v20;
  v21.i64[0] = v8 + a5 - 13;
  v21.i64[1] = v8 + a5 - 14;
  v22 = v21;
  *&STACK[0xCD0] = v21;
  v21.i64[0] = v8 + a5 - 15;
  v23.i64[0] = v7 + a5 + 3;
  v21.i64[1] = v8 + a5 - 16;
  *&STACK[0xCE0] = v21;
  v23.i64[1] = v7 + a5 + 2;
  v24 = vandq_s8(v21, *&STACK[0xE90]);
  v25 = vandq_s8(v22, *&STACK[0xE90]);
  v26 = vandq_s8(v20, *&STACK[0xE90]);
  v27 = vandq_s8(v15, *&STACK[0xE90]);
  v28 = vandq_s8(v19, *&STACK[0xE90]);
  v29 = vandq_s8(v18, *&STACK[0xE90]);
  v30 = vandq_s8(v17, *&STACK[0xE90]);
  v31 = vandq_s8(v16, *&STACK[0xE90]);
  v32 = *&STACK[0xE90];
  v33 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v41 = vaddq_s64(v40, *&STACK[0xBA0]);
  v42 = vaddq_s64(v39, *&STACK[0xBA0]);
  v43 = vaddq_s64(v38, *&STACK[0xBA0]);
  v44 = vaddq_s64(v37, *&STACK[0xBA0]);
  v45 = vaddq_s64(v36, *&STACK[0xBA0]);
  v46 = vaddq_s64(v35, *&STACK[0xBA0]);
  v47 = vaddq_s64(v34, *&STACK[0xBA0]);
  v48 = vaddq_s64(v33, *&STACK[0xBA0]);
  v49 = *&STACK[0xEB0];
  v50 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v33), *&STACK[0xB90]), v48);
  v51 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v34), *&STACK[0xB90]), v47);
  v52 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v35), *&STACK[0xB90]), v46);
  v53 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v36), *&STACK[0xB90]), v45);
  v54 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v37), *&STACK[0xB90]), v44);
  v55 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v38), *&STACK[0xB90]), v43);
  v56 = vandq_s8(v48, *&STACK[0xB90]);
  v57 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v39), *&STACK[0xB90]), v42);
  v58 = vandq_s8(v47, *&STACK[0xB90]);
  v59 = vandq_s8(v46, *&STACK[0xB90]);
  v60 = vandq_s8(v45, *&STACK[0xB90]);
  v61 = vandq_s8(v44, *&STACK[0xB90]);
  v62 = vandq_s8(v43, *&STACK[0xB90]);
  v63 = vandq_s8(v42, *&STACK[0xB90]);
  *&STACK[0xCA0] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xEB0], v40), *&STACK[0xB90]), v41), vandq_s8(v41, *&STACK[0xB90]));
  *&STACK[0xC90] = vsubq_s64(v57, v63);
  *&STACK[0xC80] = vsubq_s64(v55, v62);
  *&STACK[0xC70] = vsubq_s64(v54, v61);
  v64 = vsubq_s64(v53, v60);
  v65 = vsubq_s64(v52, v59);
  v66 = vsubq_s64(v51, v58);
  v67 = vsubq_s64(v50, v56);
  v68 = *&STACK[0xB80];
  v69 = veorq_s8(v65, *&STACK[0xB80]);
  v70 = veorq_s8(v64, *&STACK[0xB80]);
  v71 = *&STACK[0xB70];
  v72 = veorq_s8(v64, *&STACK[0xB70]);
  v73 = veorq_s8(v65, *&STACK[0xB70]);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v72);
  v76 = *&STACK[0xB60];
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, *&STACK[0xDF0]), vorrq_s8(v74, *&STACK[0xB60])), *&STACK[0xB60]), *&STACK[0xDE0]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, *&STACK[0xDF0]), vorrq_s8(v75, *&STACK[0xB60])), *&STACK[0xB60]), *&STACK[0xDE0]);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79);
  v83 = *&STACK[0xB50];
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, *&STACK[0xDD0]), vorrq_s8(v81, *&STACK[0xB50])), *&STACK[0xB50]), *&STACK[0xDC0]);
  v85 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, *&STACK[0xDD0]), vorrq_s8(v82, *&STACK[0xB50])), *&STACK[0xB50]), *&STACK[0xDC0]);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v88 = veorq_s8(v84, v85);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), *&STACK[0xDB0]), v90), *&STACK[0xDA0]), *&STACK[0xD90]);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), *&STACK[0xDB0]), v89), *&STACK[0xDA0]), *&STACK[0xD90]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v94 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), *&STACK[0xD80]);
  v98 = veorq_s8(v96, *&STACK[0xD80]);
  v99 = *&STACK[0xB40];
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), *&STACK[0xD70]), v98), *&STACK[0xB40]), *&STACK[0xD60]);
  v101 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), *&STACK[0xD70]), v97), *&STACK[0xB40]), *&STACK[0xD60]);
  v104 = veorq_s8(v103, v102);
  v105 = veorq_s8(v100, v101);
  v106 = *&STACK[0xB30];
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), *&STACK[0xB30]);
  v108 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v105), *&STACK[0xB30]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v111 = veorq_s8(v107, v108);
  v112 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v113 = vandq_s8(v23, v32);
  v114 = vandq_s8(v14, v32);
  v115 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vorrq_s8(vandq_s8(vsubq_s64(v49, v117), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v117, *&STACK[0xE60]), *&STACK[0xE40]));
  v119 = vorrq_s8(vandq_s8(vsubq_s64(v49, v115), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v115, *&STACK[0xE60]), *&STACK[0xE40]));
  v120 = veorq_s8(v119, *&STACK[0xD40]);
  v121 = veorq_s8(v118, *&STACK[0xD40]);
  v122 = veorq_s8(v118, *&STACK[0xE30]);
  v123 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v124 = veorq_s8(v119, *&STACK[0xE30]);
  v125 = vdupq_n_s64(a2);
  *&STACK[0xC60] = v125;
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v125);
  v127 = vaddq_s64(v116, v111);
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v124), v125);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v130 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(v112, v110), *&STACK[0xE80]);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v130);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v134 = veorq_s8(v127, *&STACK[0xE80]);
  v135 = vdupq_n_s64(v9);
  *&STACK[0xC50] = v135;
  v136 = vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v135), v133);
  v137 = vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), v135), v132);
  v138 = vdupq_n_s64(v10);
  *&STACK[0xC40] = v138;
  v139 = vaddq_s64(v137, v138);
  v140 = vaddq_s64(v136, v138);
  v141 = vdupq_n_s64(v11);
  *&STACK[0xC30] = v141;
  v142 = veorq_s8(v140, v141);
  v143 = veorq_s8(v139, v141);
  v144 = *&STACK[0xB20];
  v145 = vandq_s8(vaddq_s64(v131, v131), *&STACK[0xB20]);
  v146 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v147 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v148 = vsubq_s64(vandq_s8(vaddq_s64(v134, v134), *&STACK[0xB20]), v134);
  v149 = vdupq_n_s64(a3);
  *&STACK[0xC20] = v149;
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v146), v149);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v147), v149);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v153 = vaddq_s64(vsubq_s64(v145, v131), *&STACK[0xE70]);
  v154 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v155 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v156 = vaddq_s64(v148, *&STACK[0xE70]);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v154);
  v158 = vdupq_n_s64(v12);
  *&STACK[0xE20] = v158;
  v159 = veorq_s8(vaddq_s64(v155, v152), v158);
  v160 = *&STACK[0xD50];
  v161 = veorq_s8(v156, *&STACK[0xD50]);
  v162 = veorq_s8(v157, v158);
  v163 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v164 = veorq_s8(v153, *&STACK[0xD50]);
  v165 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v166 = veorq_s8(v159, v163);
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v166);
  v170 = vaddq_s64(v167, v165);
  v171 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v172 = veorq_s8(v161, v123);
  v173 = veorq_s8(v169, v106);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v175 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v177 = veorq_s8(v170, v106);
  v178 = veorq_s8(v177, v171);
  v110.i64[0] = v7 + a5 + 9;
  v110.i64[1] = v7 + a5 + 8;
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v172);
  v180 = v67;
  v181 = veorq_s8(v67, v68);
  v182 = *&STACK[0xE00];
  v183 = vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), *&STACK[0xE00]));
  v184 = vaddq_s64(v175, v168);
  v185 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v186 = *&STACK[0xB10];
  v187 = veorq_s8(v179, *&STACK[0xB10]);
  v188 = vdupq_n_s64(v13);
  *&STACK[0xE10] = v188;
  v189 = veorq_s8(vaddq_s64(v176, v174), v188);
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v188);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v192 = vshlq_u64(v187, v183);
  v193 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v194 = v66;
  v195 = veorq_s8(v66, v68);
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), veorq_s8(v189, v185));
  v197 = *&STACK[0xC70];
  v198 = veorq_s8(*&STACK[0xC70], v68);
  v199 = vaddq_s64(v193, v191);
  v200 = *&STACK[0xC80];
  v201 = veorq_s8(*&STACK[0xC80], v68);
  v202 = vshlq_u64(veorq_s8(v196, v186), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v182)));
  v203 = *&STACK[0xC90];
  v204 = veorq_s8(*&STACK[0xC90], v68);
  v205 = veorq_s8(v199, v186);
  v206 = v186;
  *&STACK[0xBE0] = v182;
  *&STACK[0xBF0] = v177;
  *&STACK[0xC00] = veorq_s8(v192, v202);
  *&STACK[0xC10] = veorq_s8(vshlq_u64(veorq_s8(v184, v186), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v182))), vshlq_u64(v205, vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v182))));
  v207 = veorq_s8(*&STACK[0xCA0], v68);
  v208 = veorq_s8(*&STACK[0xCA0], v71);
  v209 = veorq_s8(v203, v71);
  v210 = veorq_s8(v200, v71);
  v211 = veorq_s8(v197, v71);
  v212 = veorq_s8(v194, v71);
  v213 = veorq_s8(v180, v71);
  v214 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v213);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v212);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v211);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v210);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v209);
  v220 = vaddq_s64(v214, v208);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v215, *&STACK[0xDF0]), vorrq_s8(v215, v76)), v76), *&STACK[0xDE0]);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v216, *&STACK[0xDF0]), vorrq_s8(v216, v76)), v76), *&STACK[0xDE0]);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v217, *&STACK[0xDF0]), vorrq_s8(v217, v76)), v76), *&STACK[0xDE0]);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v218, *&STACK[0xDF0]), vorrq_s8(v218, v76)), v76), *&STACK[0xDE0]);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, *&STACK[0xDF0]), vorrq_s8(v219, v76)), v76), *&STACK[0xDE0]);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v220, *&STACK[0xDF0]), vorrq_s8(v220, v76)), v76), *&STACK[0xDE0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v228 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v229 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v230 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v231 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v232 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v233 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v232);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v231);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v230);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v229);
  v239 = vaddq_s64(v234, v228);
  v240 = vaddq_s64(v233, v227);
  v241 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235, *&STACK[0xDD0]), vorrq_s8(v235, v83)), v83), *&STACK[0xDC0]);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, *&STACK[0xDD0]), vorrq_s8(v236, v83)), v83), *&STACK[0xDC0]);
  v243 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v237, *&STACK[0xDD0]), vorrq_s8(v237, v83)), v83), *&STACK[0xDC0]);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v238, *&STACK[0xDD0]), vorrq_s8(v238, v83)), v83), *&STACK[0xDC0]);
  v245 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v246 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v239, *&STACK[0xDD0]), vorrq_s8(v239, v83)), v83), *&STACK[0xDC0]);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v240, *&STACK[0xDD0]), vorrq_s8(v240, v83)), v83), *&STACK[0xDC0]);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v249 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v250 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v251 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v252 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v253 = veorq_s8(v241, v245);
  v254 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v253);
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v252);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v251);
  v260 = vaddq_s64(v256, v250);
  v261 = vaddq_s64(v255, v249);
  v262 = vaddq_s64(v254, v248);
  v263 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v262, v262), *&STACK[0xDB0]), v262), *&STACK[0xDA0]), *&STACK[0xD90]);
  v264 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261, v261), *&STACK[0xDB0]), v261), *&STACK[0xDA0]), *&STACK[0xD90]);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260, v260), *&STACK[0xDB0]), v260), *&STACK[0xDA0]), *&STACK[0xD90]);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v259, v259), *&STACK[0xDB0]), v259), *&STACK[0xDA0]), *&STACK[0xD90]);
  v267 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v258, v258), *&STACK[0xDB0]), v258), *&STACK[0xDA0]), *&STACK[0xD90]);
  v269 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v270 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v257, v257), *&STACK[0xDB0]), v257), *&STACK[0xDA0]), *&STACK[0xD90]);
  v271 = veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v272 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v273 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v274 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v275 = veorq_s8(v264, v269);
  v276 = veorq_s8(v263, v267);
  v277 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v279 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v276);
  v280 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v271), *&STACK[0xD80]);
  v281 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v272), *&STACK[0xD80]);
  v282 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v273), *&STACK[0xD80]);
  v283 = veorq_s8(vaddq_s64(v277, v274), *&STACK[0xD80]);
  v284 = veorq_s8(vaddq_s64(v278, v275), *&STACK[0xD80]);
  v285 = veorq_s8(v279, *&STACK[0xD80]);
  v286 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v285, v285), *&STACK[0xD70]), v285), v99), *&STACK[0xD60]);
  v287 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), *&STACK[0xD70]), v284), v99), *&STACK[0xD60]);
  v288 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v283, v283), *&STACK[0xD70]), v283), v99), *&STACK[0xD60]);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v282, v282), *&STACK[0xD70]), v282), v99), *&STACK[0xD60]);
  v290 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v281, v281), *&STACK[0xD70]), v281), v99), *&STACK[0xD60]);
  v292 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v293 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v280, v280), *&STACK[0xD70]), v280), v99), *&STACK[0xD60]);
  v295 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v296 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v297 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  *&STACK[0xC90] = veorq_s8(v289, v295);
  v298 = veorq_s8(v288, v293);
  v299 = veorq_s8(v287, v292);
  v300 = veorq_s8(v286, v290);
  *&STACK[0xCA0] = vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL);
  v301 = vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL);
  v302 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v300);
  *&STACK[0xC80] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v298);
  v303 = v106;
  v304 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v296), v106);
  v305 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v297), v106);
  v306 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v307 = veorq_s8(vaddq_s64(v301, v299), v106);
  *&STACK[0xC70] = vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL);
  v308 = veorq_s8(v302, v106);
  *&STACK[0xBD0] = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  *&STACK[0xBB0] = veorq_s8(v307, vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL));
  v309 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL));
  v310 = veorq_s8(v304, v306);
  *&STACK[0xBC0] = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v311 = vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL);
  v312 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v310);
  v313 = *&STACK[0xE80];
  v314 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL), v309), *&STACK[0xE80]);
  v315 = v144;
  v316 = vsubq_s64(vandq_s8(vaddq_s64(v314, v314), v144), v314);
  v317 = vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL);
  v318 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v319 = *&STACK[0xE90];
  v320 = v110;
  v321 = vandq_s8(v110, *&STACK[0xE90]);
  v322 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v300.i64[0] = v7 + a5 + 7;
  v300.i64[1] = v7 + a5 + 6;
  v323 = vandq_s8(v300, *&STACK[0xE90]);
  v324 = vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL);
  v325 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xEB0], v324), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v324, *&STACK[0xE60]), *&STACK[0xE40]));
  v326 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xEB0], v322), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v322, *&STACK[0xE60]), *&STACK[0xE40]));
  v327 = *&STACK[0xE70];
  v328 = veorq_s8(vaddq_s64(v316, *&STACK[0xE70]), v160);
  v329 = veorq_s8(v328, v318);
  v330 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v331 = *&STACK[0xD40];
  v332 = veorq_s8(v325, *&STACK[0xD40]);
  v333 = vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL);
  v334 = *&STACK[0xE30];
  v335 = veorq_s8(v325, *&STACK[0xE30]);
  v336 = vaddq_s64(v333, v335);
  v337 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v338 = *&STACK[0xC60];
  v339 = veorq_s8(v336, *&STACK[0xC60]);
  v340 = veorq_s8(v339, v337);
  v341 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v340);
  v342 = *&STACK[0xC50];
  v343 = *&STACK[0xC40];
  v344 = *&STACK[0xC30];
  v345 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v341, v341), *&STACK[0xC50]), v341), *&STACK[0xC40]), *&STACK[0xC30]);
  v346 = veorq_s8(v345, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v347 = *&STACK[0xC20];
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v346), *&STACK[0xC20]);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vaddq_s64(v330, v329);
  v352 = *&STACK[0xE20];
  v353 = veorq_s8(vaddq_s64(v350, v349), *&STACK[0xE20]);
  v354 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v355 = v206;
  v356 = *&STACK[0xE00];
  v357 = vshlq_u64(veorq_s8(v351, v206), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCB0], 3uLL), *&STACK[0xE00])));
  v358 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), v354), v303);
  v359 = veorq_s8(v358, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL));
  v360 = *&STACK[0xE10];
  v361 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), v359), *&STACK[0xE10]);
  v362 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), veorq_s8(v361, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL))), v206), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), *&STACK[0xE00])));
  v300.i64[0] = v7 + a5 - 1;
  v300.i64[1] = v7 + a5 - 2;
  *&STACK[0xCB0] = v300;
  v495.val[2] = *&STACK[0xC00];
  v495.val[3] = *&STACK[0xC10];
  v495.val[1] = veorq_s8(v357, v362);
  v363 = veorq_s8(v326, v331);
  v364 = veorq_s8(v326, v334);
  v365 = veorq_s8(v312, v313);
  v366 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v367 = v315;
  v368 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), v364), v338);
  v369 = vsubq_s64(vandq_s8(vaddq_s64(v365, v365), v315), v365);
  v370 = veorq_s8(v368, v366);
  v371 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL), v370);
  v372 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v371, v371), v342), v371), v343), v344);
  v373 = veorq_s8(v372, vsraq_n_u64(vshlq_n_s64(v370, 3uLL), v370, 0x3DuLL));
  v374 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL), v373), v347);
  v375 = veorq_s8(vaddq_s64(v369, v327), v160);
  v376 = veorq_s8(v374, vsraq_n_u64(vshlq_n_s64(v373, 3uLL), v373, 0x3DuLL));
  v377 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v378 = veorq_s8(v375, v317);
  v379 = vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL);
  v380 = veorq_s8(vaddq_s64(v377, v376), v352);
  v381 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v382 = veorq_s8(v380, v379);
  v383 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v382), v303);
  v384 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL));
  v385 = vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL);
  v386 = vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL);
  v312.i64[0] = v7 + a5 - 3;
  v312.i64[1] = v7 + a5 - 4;
  v387 = veorq_s8(vaddq_s64(v385, v384), v360);
  v317.i64[0] = v7 + a5 - 5;
  v317.i64[1] = v7 + a5 - 6;
  v388 = v356;
  v389 = vandq_s8(v317, v319);
  v390 = vandq_s8(v312, v319);
  v495.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v381, v378), v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCC0], 3uLL), v356))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL), veorq_s8(v387, v386)), v355), vnegq_s64(vandq_s8(vshlq_n_s64(v320, 3uLL), v356))));
  v391 = vandq_s8(v300, v319);
  v392 = vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL);
  v393 = vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL);
  v394 = vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL);
  *&STACK[0xCC0] = vqtbl4q_s8(v495, *&STACK[0xD30]);
  v395 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xEB0], v394), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v394, *&STACK[0xE60]), *&STACK[0xE40]));
  v396 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xEB0], v393), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v393, *&STACK[0xE60]), *&STACK[0xE40]));
  v397 = veorq_s8(v396, v331);
  v398 = veorq_s8(v395, v331);
  v399 = veorq_s8(v395, v334);
  v400 = veorq_s8(v396, v334);
  v495.val[2] = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v401 = vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL);
  v402 = vaddq_s64(v495.val[2], v399);
  v495.val[2] = vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL);
  v403 = v338;
  v404 = veorq_s8(v402, v338);
  v405 = veorq_s8(vaddq_s64(v401, v400), v338);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v495.val[2] = veorq_s8(v404, v495.val[2]);
  v407 = vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL);
  v408 = veorq_s8(vaddq_s64(v311, *&STACK[0xBB0]), *&STACK[0xE80]);
  v409 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v495.val[2]);
  v410 = vaddq_s64(v407, v406);
  v411 = vsubq_s64(vandq_s8(vaddq_s64(v408, v408), v367), v408);
  v412 = vsubq_s64(vorrq_s8(vaddq_s64(v410, v410), v342), v410);
  v495.val[3] = veorq_s8(vaddq_s64(*&STACK[0xBC0], *&STACK[0xBD0]), *&STACK[0xE80]);
  v413 = vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL);
  v414 = vsraq_n_u64(vshlq_n_s64(v495.val[2], 3uLL), v495.val[2], 0x3DuLL);
  v415 = veorq_s8(vaddq_s64(v412, v343), v344);
  v416 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v409, v409), v342), v409), v343), v344);
  v417 = v344;
  v495.val[2] = vsubq_s64(vandq_s8(vaddq_s64(v495.val[3], v495.val[3]), v367), v495.val[3]);
  v418 = veorq_s8(v416, v414);
  v495.val[3] = veorq_s8(v415, v413);
  v419 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL), v418), v347);
  v420 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL), v495.val[3]), v347);
  v421 = vsraq_n_u64(vshlq_n_s64(v418, 3uLL), v418, 0x3DuLL);
  v422 = veorq_s8(v420, vsraq_n_u64(vshlq_n_s64(v495.val[3], 3uLL), v495.val[3], 0x3DuLL));
  v423 = veorq_s8(vaddq_s64(v411, *&STACK[0xE70]), *&STACK[0xD50]);
  v495.val[3] = veorq_s8(v419, v421);
  v424 = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v425 = vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL);
  v426 = veorq_s8(vaddq_s64(v495.val[2], *&STACK[0xE70]), *&STACK[0xD50]);
  v495.val[2] = veorq_s8(vaddq_s64(v424, v422), *&STACK[0xE20]);
  v427 = veorq_s8(vaddq_s64(v425, v495.val[3]), *&STACK[0xE20]);
  v428 = veorq_s8(v426, vsraq_n_u64(vshlq_n_s64(*&STACK[0xBD0], 3uLL), *&STACK[0xBD0], 0x3DuLL));
  v429 = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v430 = veorq_s8(v427, vsraq_n_u64(vshlq_n_s64(v495.val[3], 3uLL), v495.val[3], 0x3DuLL));
  v495.val[3] = veorq_s8(v495.val[2], v429);
  v495.val[1] = veorq_s8(v423, vsraq_n_u64(vshlq_n_s64(*&STACK[0xBB0], 3uLL), *&STACK[0xBB0], 0x3DuLL));
  v431 = vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL);
  v432 = vsraq_n_u64(vshlq_n_s64(v495.val[2], 0x38uLL), v495.val[2], 8uLL);
  v495.val[2] = vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL);
  v433 = vaddq_s64(v431, v430);
  v434 = vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL);
  v435 = vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL);
  v436 = veorq_s8(v433, v303);
  v437 = veorq_s8(vaddq_s64(v432, v495.val[3]), v303);
  v438 = veorq_s8(v437, vsraq_n_u64(vshlq_n_s64(v495.val[3], 3uLL), v495.val[3], 0x3DuLL));
  v439 = vaddq_s64(v435, v495.val[1]);
  v495.val[1] = veorq_s8(v436, v434);
  v495.val[3] = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v440 = vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL);
  v441 = vaddq_s64(v495.val[2], v428);
  v442 = veorq_s8(vaddq_s64(v495.val[3], v438), *&STACK[0xE10]);
  v495.val[2] = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v443 = veorq_s8(vaddq_s64(v440, v495.val[1]), *&STACK[0xE10]);
  v444 = veorq_s8(v443, vsraq_n_u64(vshlq_n_s64(v495.val[1], 3uLL), v495.val[1], 0x3DuLL));
  v495.val[1] = veorq_s8(v442, v495.val[2]);
  v495.val[2] = vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL);
  v445 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v495.val[1]), v355), vnegq_s64(vandq_s8(vshlq_n_s64(v312, 3uLL), v356)));
  v446 = veorq_s8(*&STACK[0xC80], v303);
  v447 = veorq_s8(v446, *&STACK[0xC70]);
  v448 = veorq_s8(vshlq_u64(veorq_s8(v441, v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCE0], 3uLL), v388))), vshlq_u64(veorq_s8(vaddq_s64(v495.val[2], v444), v355), vnegq_s64(vandq_s8(vshlq_n_s64(v317, 3uLL), v388))));
  v495.val[3] = veorq_s8(vshlq_u64(veorq_s8(v439, v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCD0], 3uLL), v356))), v445);
  v449 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xEB0], v392), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v392, *&STACK[0xE60]), *&STACK[0xE40]));
  v450 = veorq_s8(v449, v331);
  v451 = veorq_s8(v449, *&STACK[0xE30]);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), v403);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL), v447), *&STACK[0xE80]);
  v455 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453);
  v456 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v455, v455), v342), v455), v343), v417);
  v457 = veorq_s8(v456, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v458 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v454, v454), v367), v454), *&STACK[0xE70]), *&STACK[0xD50]);
  v459 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457), v347);
  v460 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL));
  v461 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), v460), *&STACK[0xE20]);
  v462 = veorq_s8(v461, vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL));
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL)));
  v464 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v461, 0x38uLL), v461, 8uLL), v462), v303);
  v465 = veorq_s8(v464, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v466 = vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL);
  v467 = vshlq_u64(veorq_s8(v463, v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCF0], 3uLL), v356)));
  v468 = veorq_s8(vaddq_s64(v466, v465), *&STACK[0xE10]);
  v447.i64[0] = v7 + a5 + 1;
  v447.i64[1] = v7 + a5;
  v495.val[2] = veorq_s8(v467, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL))), v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCB0], 3uLL), v356))));
  v469 = vandq_s8(v447, *&STACK[0xE90]);
  v470 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v471 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xEB0], v470), *&STACK[0xEA0]), vandq_s8(vaddq_s64(v470, *&STACK[0xE60]), *&STACK[0xE40]));
  v472 = veorq_s8(v471, v331);
  v473 = veorq_s8(v471, *&STACK[0xE30]);
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), v403);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475);
  v477 = veorq_s8(vaddq_s64(*&STACK[0xCA0], *&STACK[0xC90]), v303);
  v478 = veorq_s8(v477, vsraq_n_u64(vshlq_n_s64(*&STACK[0xC90], 3uLL), *&STACK[0xC90], 0x3DuLL));
  v479 = vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL);
  v480 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v476, v476), v342), v476), v343), v417);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v482 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481), v347);
  v483 = vsraq_n_u64(vshlq_n_s64(v478, 3uLL), v478, 0x3DuLL);
  v484 = veorq_s8(v482, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v485 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482, 0x38uLL), v482, 8uLL), v484), *&STACK[0xE20]);
  v486 = veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL));
  v487 = veorq_s8(vaddq_s64(v479, v478), *&STACK[0xE80]);
  v488 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL), v486), v303);
  v489 = veorq_s8(v488, vsraq_n_u64(vshlq_n_s64(v486, 3uLL), v486, 0x3DuLL));
  v490 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v487, v487), v367), v487), *&STACK[0xE70]), *&STACK[0xD50]);
  v491 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL), v489), *&STACK[0xE10]);
  v495.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v490, 0x38uLL), v490, 8uLL), veorq_s8(v490, v483)), v355), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD00], 3uLL), v388))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v489, 3uLL), v489, 0x3DuLL))), v355), vnegq_s64(vandq_s8(vshlq_n_s64(v447, 3uLL), v388))));
  v492 = *&STACK[0xCC0];
  v492.i64[1] = vqtbl4q_s8(*(&v495 + 16), *&STACK[0xD30]).u64[0];
  v493 = vrev64q_s8(v492);
  *(v447.i64[1] - 6) = veorq_s8(vextq_s8(v493, v493, 8uLL), *&STACK[0xD20]);
  return (*(STACK[0xF18] + 8 * (((4 * (a6 != 0)) | (32 * (a6 != 0))) ^ a4)))();
}

uint64_t sub_1004EE76C()
{
  LODWORD(STACK[0x577C]) = v1;
  v2 = v1 == ((v0 - 1558128606) & 0x5CDEFFFF ^ (v0 - 371879151));
  return (*(STACK[0xF18] + 8 * (((16 * v2) | (32 * v2)) ^ v0)))();
}

uint64_t sub_1004EE7C4@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x7ADF ^ ((a1 + 13079) | 0x21C0))))();
}

uint64_t sub_1004EE860@<X0>(int a1@<W8>)
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393378;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004EE8EC(uint64_t a1, int a2, int a3, int a4)
{
  v9 = v4 < v5;
  *(v8 + 16 * (a4 + v7) + 8) = 0;
  if (v9 == a4 + a2 < v5)
  {
    v9 = a4 + a2 < v4;
  }

  return (*(STACK[0xF18] + 8 * ((v9 * a3) ^ v6)))();
}

uint64_t sub_1004EE950()
{
  v1 = STACK[0xF10] - 30235;
  *(STACK[0xB588] + 8) = (((v0 ^ 0xA880636F4630EE94) + 0x577F9C90B9CF116CLL) ^ ((v0 ^ 0xD2EB44A44ACDAB00) + 0x2D14BB5BB5325500) ^ ((v0 ^ 0x7A6B27CBE5288285) - 0x7A6B27CBE5288285)) + 3923101457u;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004EEA54()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F64)))();
}

uint64_t sub_1004EEAB8()
{
  v0 = 6662 * (STACK[0xF10] ^ 0x8B3E);
  v1 = STACK[0xF10] - 32654;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9EC0 ^ v0)))();
}

uint64_t sub_1004EEC24()
{
  v8 = v2 < v5;
  v9 = *(v3 + (v6 - 1203975300));
  v10 = 2 * ((v6 + 124) ^ v6 ^ ((v6 ^ 0x22) + 90) ^ ((v0 ^ 0x54A1907F) + (v6 ^ 0x69) - 1419887939) ^ ((v6 ^ 0x4F) + 53));
  v11 = ((v10 ^ 0xFFFFFFFB) - 24) ^ ((v10 ^ 0xFFFFFFBB) - 88) ^ ((v10 ^ 0x49) + 86);
  v12 = (v4 + (v1 + v6 - 1203975300));
  v13 = v6 - 83 * v11 + (v11 - 22) * ((((v9 ^ 0xFFFFFFB2) + 78) ^ ((v9 ^ 0xFFFFFFAE) + 82) ^ ((v9 ^ 0x43) - 67)) - 78);
  v14 = 1864610357 * ((v12 ^ *(*STACK[0xE50] + (*v7 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v15 = 1864610357 * (v14 ^ HIWORD(v14));
  v16 = *((v15 >> 24) + STACK[0x900] + 2) ^ *(STACK[0x8D8] + (v15 >> 24)) ^ *((v15 >> 24) + STACK[0x8F8] + 7) ^ v15 ^ (103 * (v15 >> 24)) ^ (v13 - 98);
  if (v8 == v6 + 176482384 < v5)
  {
    v8 = v6 + 176482384 < v2;
  }

  *v12 = v16;
  return (*(STACK[0xF18] + 8 * ((2 * v8) | (16 * v8) | v0)))();
}

uint64_t sub_1004EEDC8()
{
  v1 = STACK[0x7484];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393407;
  return (*(STACK[0xF18] + 8 * (v0 ^ (v0 - 728610598) & 0x67D0D8DE ^ 0xC39DF71A ^ (10844 * (v0 == 94744603)))))();
}

uint64_t sub_1004EEE40()
{
  v0 = LODWORD(STACK[0x62D0]) + STACK[0x9AA0] + ((STACK[0xF10] - 1725779012) & 0x66DCFFBF) - 1152395832;
  v1 = (((LODWORD(STACK[0x93CC]) ^ 0x656294C3) - 1700959427) ^ ((LODWORD(STACK[0x93CC]) ^ 0x27A9C631) - 665437745) ^ ((LODWORD(STACK[0x93CC]) ^ 0xAB1E95E3) + 1424058909)) - 978396216;
  v2 = (v0 < 0xDBD914B7) ^ (v1 < 0xDBD914B7);
  v3 = v0 > v1;
  if (v2)
  {
    v3 = v0 < 0xDBD914B7;
  }

  return (*(STACK[0xF18] + 8 * ((29 * !v3) ^ (STACK[0xF10] + 5099))))();
}

uint64_t sub_1004EEF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10];
  LODWORD(STACK[0xA5C0]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 2010559236;
  v6 = ((v5 ^ 0x8996F68C) + 29342331) ^ v5 ^ ((v5 ^ 0xCEDA36C6) + 1190361649) ^ ((v5 ^ 0xC5678DAC) + 1297006939) ^ ((v5 ^ 0xF5FDFEEF) + 2111091226);
  LODWORD(STACK[0xA5CC]) = v6 ^ 0x6D6C4D85;
  return (*(STACK[0xF18] + 8 * (v4 - 28300)))(a1, a2, a3, a4, ((0x51 % (v6 ^ 0x77D6B309)) ^ 0xFFFADC76) + 1078179285 + ((2 * (0x51 % (v6 ^ 0x77D6B309))) & 0xEC));
}

uint64_t sub_1004EF14C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((v0 - 16243) ^ 0xF844)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * (v0 - 16243)))(v3);
}

uint64_t sub_1004EF2B0()
{
  v4 = (v1 - 34875) | 0x5C90;
  v5 = (v1 - 30011) | 0x8070;
  v6 = v1 - 8026;
  *(v2 + 2196) = v3;
  *(v2 + 2192) = v0;
  v7 = v0 + v5 + 621546486;
  v8 = ((v4 + 1938801998 + (*(STACK[0x6F68] + 104) ^ 0x8C6FDB22)) ^ ((*(STACK[0x6F68] + 104) ^ 0xBA7D6DBC) + 1166185028) ^ ((*(STACK[0x6F68] + 104) ^ 0xDFC7718F) + 540577393)) + 863955346;
  v9 = v8 < 0x49A92281;
  v10 = v7 < v8;
  if (v7 < 0x49A92281 != v9)
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((2016 * v10) ^ v6)))();
}

uint64_t sub_1004EF3A0()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = -810195446;
  return (*(STACK[0xF18] + 8 * (v0 - 29678)))();
}

uint64_t sub_1004EF3E0()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11F1)))();
}

uint64_t sub_1004EF688()
{
  v0 = STACK[0xF10] - 10415;
  v1 = STACK[0x66B0];
  *(v1 + 32) = 0;
  *v1 = STACK[0x5250];
  *(v1 + 8) = 0;
  *(v1 + 24) = 1497668694;
  *(v1 + 16) = 0xCED180B0CED180BLL;
  *(v1 + 40) = -758299001;
  *STACK[0xB808] = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004EF700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0xEA0];
  v9 = LODWORD(STACK[0x3AC4]) - 371865839 + (((*(STACK[0x6850] + 64) ^ 0xFC958F1) - 264853745) ^ ((*(STACK[0x6850] + 64) ^ 0x10C611DF) - 281416159) ^ ((*(STACK[0x6850] + 64) ^ ((LODWORD(STACK[0xEA0]) - 46191) | 0x2834) ^ 0xF6DAA609) + 153448897));
  v10 = LODWORD(STACK[0xB4B4]) - 658232844 + v9;
  v11 = (*(STACK[0x2C38] + 8) + 99 * LODWORD(STACK[0xB4B4]) % (*(STACK[0x2C38] + 32) - 5));
  v12 = *(*v7 + (*v6 & 0x72D7ACF8));
  v13 = 1864610357 * ((1864610357 * ((v12 ^ v11) & 0x7FFFFFFF)) ^ ((1864610357 * ((v12 ^ v11) & 0x7FFFFFFF)) >> 16));
  v14 = 1864610357 * ((1864610357 * (((STACK[0x1840] + v10) ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * (((STACK[0x1840] + v10) ^ v12) & 0x7FFFFFFF)) >> 16));
  *(STACK[0x1840] + v10) = *STACK[0x6850] ^ *v11 ^ *(a3 + (v13 >> 24)) ^ *((v13 >> 24) + a5 + 1) ^ *((v13 >> 24) + a6 + 3) ^ *(a3 + (v14 >> 24)) ^ *((v14 >> 24) + a5 + 1) ^ v13 ^ *((v14 >> 24) + a6 + 3) ^ (61 * BYTE3(v13)) ^ v14 ^ (61 * BYTE3(v14)) ^ 0x11;
  LODWORD(STACK[0x3AC4]) = v9 + 1;
  return (*(STACK[0xF18] + 8 * ((253 * ((((*STACK[0x6850] ^ 0xF674E25A) + 160112038) ^ ((*STACK[0x6850] ^ 0x656B193A) - 1701517626) ^ ((*STACK[0x6850] ^ 0x7ACA3C71) - 2060074097)) != 371865839)) ^ v8)))();
}

uint64_t sub_1004EFB28(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0xF18] + 8 * ((v2 - 35610) | 0x2044));
  LODWORD(STACK[0xE60]) = 47179;
  return v4(a1, a2, v3);
}

uint64_t sub_1004EFD64@<X0>(int a1@<W8>)
{
  v2 = STACK[0x7478];
  STACK[0x88B8] = STACK[0x7478];
  v3 = *(v1 + 218);
  STACK[0x2DC0] = v3;
  v4 = v3[2];
  if ((v4 & 0x8000000) != 0)
  {
    v4 |= 0xA000000u;
  }

  LODWORD(STACK[0x7C14]) = v4;
  v5 = *v3;
  STACK[0x4F90] = v2;
  LODWORD(STACK[0x22E8]) = v5 - ((v5 << (((a1 + 73) | 0x40) - 73)) & 0xD3AB8E22) - 371865839;
  LODWORD(STACK[0x35EC]) = 1693393264;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004EFDF0()
{
  v1 = STACK[0xF10] - 29678;
  v2 = STACK[0xF10] - 28401;
  *(STACK[0x7980] + 240) = v0;
  v3 = LODWORD(STACK[0x6134]) + 4;
  LODWORD(STACK[0x6134]) = v3;
  v4 = (((v0 ^ 0xE90DD649) + 384969143) ^ ((v0 ^ 0x3712F38C) - 923988876) ^ ((v0 ^ 0x37CAE2D4) + v1 - 936049185)) + v3 - 76396780;
  v5 = v4 < 0x784719B7;
  v6 = v4 > LODWORD(STACK[0xB7EC]) + 2017925559;
  if (LODWORD(STACK[0xB7EC]) > 0x87B8E648 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((v6 | (16 * v6)) ^ v2)))();
}

uint64_t sub_1004EFEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, int a25, unsigned int a26, char *a27, uint64_t a28, unsigned int a29)
{
  v32 = *(a16 + 32);
  v33 = 1022166737 * (((&a25 ^ 0xB1A0018) & 0xCFBA0098 | (&a25 ^ 0x2040BE61) & 0x3045FF61) ^ 0x914A5FEB);
  a29 = v33 ^ v29 ^ ((v29 ^ 0x3283E2C3) - 1808236169) ^ ((v29 ^ 0xEFFF7EDF) + 1229200747) ^ ((v31 ^ 0xE1ACEBCE) + (v29 ^ 0x4717B585)) ^ ((v29 ^ 0xC32FB5D3) + 1704221776 + ((v31 + 9222) | 0x1812)) ^ 0xF2A05DA2;
  a26 = v33 + v31 + 15309;
  a27 = &a24;
  a28 = v32;
  v34 = (*(v30 + 8 * (v31 + 36200)))(&a25);
  return (*(v30 + 8 * ((48080 * (a25 == -371865839)) ^ v31)))(v34);
}

uint64_t sub_1004F0390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x2168] = a3;
  LODWORD(STACK[0x8A44]) = v4;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 371891606);
}

uint64_t sub_1004F03BC()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 16923 + ((v0 + 4174) | 0x401A))))();
}

uint64_t sub_1004F0478@<X0>(int a1@<W8>)
{
  v1 = a1 - 26561;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004F04AC(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x9F92]) = v2;
  v5 = *(STACK[0xF18] + 8 * (v4 - 27350));
  LODWORD(STACK[0xE10]) = v2;
  return v5(a1, a2, v3);
}

uint64_t sub_1004F050C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x74D0] + STACK[0x7178] - 0x3AE1413A0D5C96C2;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 34282));
  return (*(v2 + 8 * (v0 - 25513)))(v1);
}

void *sub_1004F07C8()
{
  v1 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 1470769766) & 0x57AA1FA8) + 888)))(&STACK[0x3158]);
}

uint64_t sub_1004F0814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x3FA0];
  LODWORD(STACK[0x648C]) = -2121472048;
  return (*(STACK[0xF18] + 8 * (v8 ^ 0x92FD)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004F0860(unint64_t a1)
{
  v5 = (*(v4 + 8) ^ 0xCFBD9F26) + 2069626878 + ((v3 - 1247447237) & (2 * *(v4 + 8)));
  v6 = 139493411 * ((~(&STACK[0x10000] + 3800) & 0x8F531EBE | (&STACK[0x10000] + 3800) & 0x70ACE140) ^ 0x837EFFFB);
  STACK[0x10F00] = v1;
  STACK[0x10EF8] = v2 + 8;
  v7 = *(&off_1010A0B50 + (v3 ^ 0xE9D5C9C8)) - 722428351;
  LODWORD(STACK[0x10ED8]) = v5 ^ v6;
  LODWORD(STACK[0x10EF0]) = v3 - v6 + 371900325;
  STACK[0x10EE0] = v7;
  STACK[0x10EE8] = a1;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v3 ^ 0xE9D50CDB)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((59473 * (((((LODWORD(STACK[0x10EDC]) - v3) | (v3 - LODWORD(STACK[0x10EDC]))) >> (v3 + 14)) & 1) == 0)) ^ (v3 + 371874374))))(v9);
}

uint64_t sub_1004F09B0()
{
  v0 = 37 * (STACK[0xF10] ^ 0x8B68);
  v1 = STACK[0xF10] - 22762;
  v2 = STACK[0xA440] + STACK[0x7F50] - 0x702A859F05954850;
  *v2 = 0x667064762FLL;
  v3 = STACK[0xB268];
  *(v2 + 8) = 0;
  return (*(STACK[0xF18] + 8 * ((30549 * (v3 == v0 - 371868910)) ^ v1)))();
}

uint64_t sub_1004F0A40()
{
  v0 = STACK[0xF10] - 35233;
  v1 = STACK[0xF10] + 1045;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99E8]) = LODWORD(STACK[0xA810]) - 148338664;
  v2 += 825205420;
  v3 = v2 < 0x8986969C;
  v4 = v2 > v0 - 1987668734 + LODWORD(STACK[0x36E8]);
  if (v3 != LODWORD(STACK[0x36E8]) > 0x76796963)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((156 * v4) ^ v1)))();
}

uint64_t sub_1004F0C08()
{
  v0 = STACK[0xF10];
  v1 = 7493 * (STACK[0xF10] ^ 0x8B3E);
  v2 = STACK[0xF10] - 33958;
  STACK[0x7F88] = STACK[0x6F20];
  v3 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((2722 * ((v2 ^ 0x1F869932 ^ v1) < 0x67915124)) | (v0 - 31470))))();
}

uint64_t sub_1004F0D3C(uint64_t a1, uint64_t a2)
{
  v3 = (STACK[0xF10] + 6853) | 0x1904;
  v4 = STACK[0xF10] - 20827;
  LODWORD(STACK[0x749C]) = v2;
  v5 = LOWORD(STACK[0x9FB6]);
  STACK[0x7110] = STACK[0x9FB8];
  return (*(STACK[0xF18] + 8 * ((28167 * (v5 == (v3 ^ 0x74F))) ^ v4)))(a1, a2, 371891606);
}

uint64_t sub_1004F0DF4@<X0>(int a1@<W8>)
{
  v2 = *STACK[0x13E0];
  v3 = (v1 ^ 0xF5E878D6) + a1;
  v4 = (v3 < 0x55204331) ^ (v2 > 0xAADFBCCE);
  v5 = v3 <= v2 + 1428177713;
  if (v4)
  {
    v5 = v2 > 0xAADFBCCE;
  }

  return (*(STACK[0xF18] + 8 * ((!v5 * ((v1 ^ 0xB588) - 443)) ^ v1)))();
}

uint64_t sub_1004F0E6C@<X0>(int a1@<W8>)
{
  v4 = (*(v2 + 8) + 120 * v1 - 0xF0FFEE2F0);
  v4[3] = 0;
  v4[5] = 0;
  v4[14] = 0;
  return (*(v3 + 8 * ((16236 * (v1 == 539107285)) ^ a1)))();
}

uint64_t sub_1004F0ECC()
{
  *(v2 - 1) = v5;
  *v2 = v5;
  return (*(v4 + 8 * (((v1 == 0) * v3) ^ v0)))();
}

uint64_t sub_1004F0EF4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6F78] = a1;
  STACK[0x8B90] = STACK[0x7E30];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 32669)))(48);
  STACK[0x8D08] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((v1 ^ 0x4AF9) - 15164 + 7583 * (v1 ^ 0x4AF9))) | v1)))();
}

uint64_t sub_1004F0F6C@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  STACK[0x4528] = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0x890C]) = 1497668682;
  return (*(v3 + 8 * (((v2 == 0x7E666516A39B34A6) * (((v1 - 27407) | 0x8202) ^ 0xA206)) ^ (v1 + 13019))))();
}

uint64_t sub_1004F1100()
{
  v0 = 10606 * (STACK[0xF10] ^ 0x8B39);
  v1 = STACK[0xF10] - 31120;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] ^ 0x8BC4)) - 121513575);
  v3 = *(v2 + 4);
  LODWORD(STACK[0xC4BE]) = *v2;
  LODWORD(STACK[0xC4C2]) = v3;
  LOWORD(STACK[0xC4C6]) = *(v2 + 8);
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x5B4E ^ v0)))();
}

uint64_t sub_1004F1184@<X0>(int a1@<W8>)
{
  v4 = v1 + v3;
  *(v4 - 0xFFDEAFCBFBF6BC5) = ((a1 ^ 0x11) - 88) ^ v2[19];
  *(v1 + v3 + 691 * (a1 ^ 0x2CABu) - 0xFFDEAFCBFBF8EDDLL) = v2[18] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BC7) = v2[17] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BC8) = v2[16] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BC9) = v2[15] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BCALL) = v2[14] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BCBLL) = v2[13] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BCCLL) = v2[12] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BCDLL) = v2[11] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BCELL) = v2[10] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BCFLL) = v2[9] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD0) = v2[8] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD1) = v2[7] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD2) = v2[6] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD3) = v2[5] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD4) = v2[4] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD5) = v2[3] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD6) = v2[2] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD7) = v2[1] ^ 0x5F;
  *(v4 - 0xFFDEAFCBFBF6BD8) = *v2 ^ 0x5F;
  LODWORD(v4) = (LODWORD(STACK[0x74CC]) ^ (v1 + 1077974076)) != -371865839;
  return (*(STACK[0xF18] + 8 * (((4 * v4) | (16 * v4)) ^ a1)))();
}

uint64_t sub_1004F16F8()
{
  v0 = STACK[0xF10] ^ 0x8AB5;
  v1 = STACK[0xF10] + 2773;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99F4]) = LODWORD(STACK[0xA810]) + 38124019;
  v2 += 1294024235;
  v3 = v2 < 0xA578320F;
  v4 = v2 > v0 - 1518849919 + LODWORD(STACK[0x36E8]);
  if (v3 != LODWORD(STACK[0x36E8]) > 0x5A87CDF0)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * (!v4 | (8 * !v4) | v1)))();
}

uint64_t sub_1004F1794()
{
  v1 = STACK[0xF10] - 23706;
  v2 = STACK[0x75A0];
  *(v2 + 72) = v0;
  *(v2 + 64) = STACK[0x1B90] + 8;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004F197C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W5>, unint64_t a6@<X8>)
{
  v17 = *(STACK[0xF18] + 8 * (a5 - 7225));
  *&STACK[0xED0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xE20] = vdupq_n_s64(0x38uLL);
  *&STACK[0xE10] = vdupq_n_s64(v14);
  *&STACK[0xE00] = vdupq_n_s64(v11);
  *&STACK[0xDF0] = vdupq_n_s64(v12);
  *&STACK[0xEC0] = vdupq_n_s64(v7);
  v18 = STACK[0xCF0] & 0xFFFFFFF0;
  *&STACK[0xD40] = vdupq_n_s64(v8);
  STACK[0xCE0] = v18;
  *&STACK[0xDE0] = vdupq_n_s64(v6);
  *&STACK[0xDD0] = vdupq_n_s64(v15);
  *&STACK[0xDC0] = vdupq_n_s64(a1);
  *&STACK[0xD30] = vdupq_n_s64(a6);
  *&STACK[0xDB0] = vdupq_n_s64(a2);
  *&STACK[0xEB0] = vdupq_n_s64(0x82B08017BF43C069);
  *&STACK[0xEA0] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0xDA0] = vdupq_n_s64(a3);
  *&STACK[0xD90] = vdupq_n_s64(a4);
  *&STACK[0xD80] = vdupq_n_s64(v13);
  *&STACK[0xD70] = vdupq_n_s64(v9);
  *&STACK[0xD60] = vdupq_n_s64(v10);
  *&STACK[0xE30] = xmmword_100BC76B0;
  *&STACK[0xD50] = vdupq_n_s64(v16);
  return v17();
}

uint64_t sub_1004F1B34(uint64_t a1, unint64_t a2)
{
  v3 = STACK[0x7178];
  v4 = STACK[0x5BA0];
  v5 = 353670337 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x17AF3268) - 1750125975) ^ 0x238ECA54);
  LODWORD(STACK[0x10F00]) = v2 - v5 + 10724;
  LODWORD(STACK[0x10EEC]) = v5 ^ 0x4205976F;
  STACK[0x10EF8] = a2;
  STACK[0x10EF0] = STACK[0x688];
  STACK[0x10EE0] = v4;
  STACK[0x10ED8] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 16789)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10EE8]) == ((1094 * (v2 ^ 0x8A8B)) ^ 0xE9D5D609)) * ((v2 + 172) ^ 0xA127)) ^ v2)))(v7);
}

uint64_t sub_1004F1C34()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xD51936EF) - ((&STACK[0x10000] + 3800) | 0x2AE6C910) + 719767824) ^ 0x333F2D20) + 296780315;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 43483)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((495 * (((3 * (v0 ^ 0x86)) ^ (v1 == (v0 ^ 0xE86) - 371877720)) & 1)) ^ v0)))(v3);
}

uint64_t sub_1004F1EB4()
{
  v0 = (STACK[0xF10] + 5829) | 0x89;
  v1 = STACK[0xF10] - 31515;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 40720 + v0)))();
}

uint64_t sub_1004F1F44(uint16x8_t a1, uint8x8_t a2)
{
  a2.i32[0] = *(v3 - v5 + 54);
  *(v4 - v5 + 56) = vuzp1_s8(*&vaddw_u8(a1, a2), *a1.i8).u32[0];
  return (*(STACK[0xF18] + 8 * (((v5 == 48) * v6) ^ v2)))();
}

uint64_t sub_1004F1F80()
{
  v0 = STACK[0xF10] - 32134;
  STACK[0x7830] = STACK[0x8080] + 16;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((LODWORD(STACK[0x998]) ^ 0x6293) + v0)))();
}

uint64_t sub_1004F1FE0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4DA4]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (((a1 + 745193491) & 0xD395B61F ^ 0x8AF8) + a1)))();
}

uint64_t sub_1004F2060(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = v11 - 1;
  v20 = ((*(*v17 + (*v16 & v12)) ^ (v8 + v19)) & 0x7FFFFFFF) * v13;
  v21 = (v20 ^ HIWORD(v20)) * v14;
  *(v9 + v19) = *(v8 + v19) ^ *(v15 + (v21 >> 24)) ^ *((v21 >> 24) + v18 + 6) ^ *(a8 + (v21 >> 24)) ^ v21 ^ (-7 * BYTE3(v21)) ^ a1;
  return (*(STACK[0xF18] + 8 * (((v19 == 0) * a2) ^ v10)))();
}

uint64_t sub_1004F2248()
{
  LODWORD(STACK[0x32BC]) = -371865839;
  *STACK[0x4030] = 0;
  return (*(STACK[0xF18] + 8 * ((11 * (*(STACK[0xFD8] + 4) > ((((v0 + 91) & 0xFC) - 8) & 0xFCu))) ^ v0)))();
}

uint64_t sub_1004F2324@<X0>(uint64_t a1@<X8>)
{
  v3.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v2 + 8 * (v1 - 5419)))(a1 - 15, (v1 + 961513917), 3290598540, 47, 42827448, v3);
}

uint64_t sub_1004F2368(uint64_t a1)
{
  *a1 = 0xE9D5C711E9D5C711;
  *(a1 + 8) = 0x981390C2FED9246;
  *(a1 + 16) = 0;
  *(a1 + 24) = -371865839;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 92) = 1;
  *(a1 + 48) = 0x7C855669B36A63E4;
  *(a1 + 56) = 0x981390C2FED9246;
  v3 = *STACK[0xE58];
  v4 = *STACK[0xE50];
  *(a1 + 64) = ((457 * (v2 ^ 0x7680u)) ^ *(v4 + (v3 & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ *(v4 + (v3 & 0xFFFFFFFFB724B0B8)) & 0x7BED8D6AFF30851ALL ^ 0xA6C8C48FB200000 ^ 0x719361230411D1A9) - (*(v4 + (v3 & 0xFFFFFFFFB724B0B8)) & 0x7BED8D6AFF30851ALL ^ 0xA6C8C48FB200000);
  *(a1 + 72) = (*(v4 + (v3 & 0xFFFFFFFF90A15330)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x26EE718C68DCDF5BLL ^ *(v4 + (v3 & 0xFFFFFFFF90A15330)) & 0x36DE4F0CB1F53807 ^ 0x10100E0091212004) - (*(v4 + (v3 & 0xFFFFFFFF90A15330)) & 0x36DE4F0CB1F53807 ^ 0x10100E0091212004);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(v1 + 512) = a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004F24AC@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x1979)))();
}

uint64_t sub_1004F2580()
{
  STACK[0x3088] = 0;
  LODWORD(STACK[0x1B20]) = -371865839;
  STACK[0x3038] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F2634()
{
  v0 = STACK[0xF10] - 31526;
  v1 = STACK[0xF10] + 15217;
  STACK[0x9D98] = STACK[0x9D90] + 20;
  return (*(STACK[0xF18] + 8 * (((STACK[0x1E98] == 0) * (v0 ^ 0x1017)) ^ v1)))();
}

uint64_t sub_1004F27A0()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 20585) ^ 0x461A) + v0)))();
}

uint64_t sub_1004F2820(uint64_t a1, uint64_t a2)
{
  STACK[0x17A0] = 0;
  LODWORD(STACK[0x4A30]) = -371865839;
  LODWORD(STACK[0x1340]) = -371865839;
  STACK[0x9398] = 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * ((((3 * (v2 ^ 0xAF05) - 24512) ^ v2 ^ 0x943A) * (v3 == -371865840)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_1004F2904()
{
  v4 = STACK[0xF10];
  v5 = STACK[0xF10] - 498298020;
  v6 = STACK[0xA26C];
  v7 = *(v3 + 1772) + 684964203;
  v8 = 906386353 * ((2 * (&STACK[0x10ED8] & 0xF0897C0) - &STACK[0x10ED8] + 1895262265) ^ 0x41F6A51D);
  STACK[0x10EF8] = *(v3 + 1744);
  LODWORD(STACK[0x10EE0]) = v7 ^ v8;
  LODWORD(STACK[0x10EE8]) = v8 + v6 + 274470855;
  LODWORD(STACK[0x10EEC]) = v2 - v8 - 1338384269;
  LODWORD(STACK[0x10EDC]) = ((((v1 ^ 0x9DB501DF) - 295698919) ^ ((v1 ^ 0x3D6A957A) + 1317038782) ^ ((v1 ^ 0x79C1D605) + 170600899)) - 723086396) ^ v8;
  LODWORD(STACK[0x10ED8]) = v8 + v4 - 11790;
  LODWORD(STACK[0x10EF4]) = -371865711 - v8;
  LODWORD(STACK[0x10EF0]) = v0 ^ v8;
  v9 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v4 ^ 0x4702)))(&STACK[0x10ED8]);
  v10 = LODWORD(STACK[0x10EE4]);
  v11 = 634647737 * ((~&STACK[0x10ED8] & 0xAFF233B59308168ALL | &STACK[0x10ED8] & 0x500DCC4A6CF7E970) ^ 0x75299C5AFE9E3976);
  LODWORD(STACK[0x10EF8]) = v4 - v11 - 1230214699;
  LODWORD(STACK[0x10ED8]) = -634647737 * ((~&STACK[0x10ED8] & 0x9308168A | &STACK[0x10ED8] & 0x6CF7E970) ^ 0xFE9E3976);
  LODWORD(STACK[0x10EDC]) = (v5 ^ 0x12F2) - v11;
  LODWORD(STACK[0x10EFC]) = (v5 & 0xFB7F9EB2) - v11;
  LODWORD(STACK[0x10EE4]) = v5 + v11;
  STACK[0x10EF0] = 3923101457u - v11;
  STACK[0x10EE8] = v10 ^ v11;
  v12 = (*(v9 + 8 * (v4 + 16305)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * SLODWORD(STACK[0x10EE0])))(v12);
}

uint64_t sub_1004F2B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v6 + (a3 << 6);
  *v8 = *(v4 + 200);
  *(v8 + 8) = *(v4 + 208);
  *(v8 + 16) = 1;
  *(v8 + 56) = 0x15DB1509EF155482;
  *(v8 + 24) = v3;
  v5[68] = 0;
  v5[67] = 0;
  v5[69] = 0;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_1004F2CA0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x7484]) = a1;
  STACK[0x7690] = ((v1 - 817) | 0x40u) + STACK[0x7690] - 35162;
  v2 = *STACK[0x71B8];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393395;
  return (*(STACK[0xF18] + 8 * (v1 - 29050)))();
}

uint64_t sub_1004F2D00()
{
  v1 = *(*(STACK[0x3E50] + 8) + 8 * (LODWORD(STACK[0x6870]) - 108392493));
  v2 = 193924789 * ((2 * (&STACK[0x10ED8] & 0x4CEF2548D20FB740) - &STACK[0x10ED8] - 0x4CEF2548D20FB748) ^ 0x488BCA439B4B7ADELL);
  STACK[0x10ED8] = *STACK[0x2908];
  STACK[0x10EE8] = ((((v1 ^ 0x3A7BA007DB87B23ALL) - 0x3A7BA007DB87B23ALL) ^ ((v1 ^ 0xC2DE40D66D87AD88) + 0x3D21BF2992785278) ^ ((v1 ^ 0xF124D9DD99ED8DF4) + ((327 * (v0 ^ 0x8241278B)) ^ 0xEDB26226612F937))) + 0x5C39C5D9FED104D4) ^ v2;
  LODWORD(STACK[0x10EF0]) = v2 + v0 + 2109709151;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8241EB9F)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((58443 * (v0 < 0x8AADA4F)) ^ (v0 + 2109682764))))(v4);
}

uint64_t sub_1004F2EB4@<X0>(int a1@<W8>)
{
  HIDWORD(v3) = *(v2 + 4 * (v1 - 417548140)) ^ *(v2 + 4 * (v1 - 417548135)) ^ *(v2 + 4 * (v1 - 417548146)) ^ *(v2 + 4 * (v1 - 417548148)) ^ 0x1D7C867C;
  LODWORD(v3) = *(v2 + 4 * (v1 - 417548140)) ^ *(v2 + 4 * (v1 - 417548135)) ^ *(v2 + 4 * (v1 - 417548146)) ^ *(v2 + 4 * (v1 - 417548148));
  *(v2 + 4 * (v1 - 417548132)) = (a1 - 3873) ^ 0xD32CAA23 ^ (v3 >> 31);
  return (*(STACK[0xF18] + 8 * ((486 * ((v1 - 417548131) > 0x4F)) ^ a1)))();
}

uint64_t sub_1004F2F60()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = -371865839;
  LODWORD(STACK[0x35EC]) = 1693393359;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F2F9C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32595));
  return (*(v1 + 8 * ((v0 - 27650) ^ (v0 - 32595))))();
}

uint64_t sub_1004F2FE0()
{
  v0 = STACK[0xF10] - 22926;
  *(STACK[0x68F0] + 476) = 740984379;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F301C@<X0>(int a1@<W8>)
{
  v1 = a1 | 0x8038;
  v2 = v1 - 17603;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1004F3058()
{
  LODWORD(STACK[0x2324]) = v0;
  STACK[0x7690] += (v1 - 30246) ^ 0xFFFFFFFFFFFFEAD5;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x3928]) == -371865838) * (((v1 + 744518850) & 0xD39F19C3) + 11709)) ^ (v1 - 22805))))();
}

uint64_t sub_1004F3168()
{
  v4 = (((v2 + 5174) | 0x104) ^ 0xBDA8EBC0) + v3;
  *(v0 + v4) ^= *(v1 + v4 + 4);
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004F31B0()
{
  v1 = *(STACK[0x7350] + 24);
  STACK[0x92E8] = v1;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * ((v0 - 14487) ^ v0 ^ 0x47DF)) ^ v0)))();
}

uint64_t sub_1004F3200(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA6F8] = (((v1 ^ 0xC36FB445A0C2C8DCLL) + 0x3C904BBA5F3D3724) ^ ((v1 ^ 0xD87DE7474BC96B6ALL) + 0x278218B8B4369496) ^ ((v1 ^ 0x1B12530202DE64A7) - 0x1B12530202DE64A7)) + 0x6EA672E79DC0EDBFLL + 122 * (v2 ^ 0xA990u);
  *(a1 + 16) = (((v1 ^ 0x4B94255D) - 1268000093) ^ ((v1 ^ 0x13515B5A) - 324098906) ^ ((v1 ^ 0xB110B916) + 1324304106)) - 371865829;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 8429)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((19 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1004F33B8()
{
  STACK[0x10EE0] = STACK[0x710];
  STACK[0x10EE8] = STACK[0x770];
  LODWORD(STACK[0x10ED8]) = ((((&STACK[0x10000] + 3800) | 0xB2991FBB) - ((&STACK[0x10000] + 3800) & 0xB2991FB8)) ^ 0x54BF0474) * v1 + v0 + 4952;
  STACK[0x10EF0] = &STACK[0x4D10];
  LOBYTE(STACK[0x10EFC]) = v2 - ((((&STACK[0x10000] - 40) | 0xBB) - ((&STACK[0x10000] - 40) & 0xB8)) ^ 0x74) * v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF4C9)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((23 * (((v0 + 10) ^ (LODWORD(STACK[0x10EF8]) == v3)) & 1)) ^ v0)))(v5);
}

uint64_t sub_1004F3480(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v19 = *(STACK[0xF18] + 8 * v8);
  *&STACK[0xD20] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xD00] = vdupq_n_s64(0x38uLL);
  *&STACK[0xDE0] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0xCE0] = vdupq_n_s64(0x296E95066F186A7EuLL);
  STACK[0xBC0] = a5 & 0xFFFFFFF8;
  *&STACK[0xCD0] = vdupq_n_s64(a1);
  *&STACK[0xDD0] = vdupq_n_s64(a7);
  *&STACK[0xDC0] = vdupq_n_s64(a6);
  *&STACK[0xDB0] = vdupq_n_s64(v14);
  *&STACK[0xCB0] = vdupq_n_s64(a4);
  *&STACK[0xDA0] = vdupq_n_s64(a8);
  *&STACK[0xD90] = vdupq_n_s64(v16);
  *&STACK[0xC90] = vdupq_n_s64(v13);
  *&STACK[0xD80] = vdupq_n_s64(a3);
  *&STACK[0xD70] = vdupq_n_s64(a2);
  *&STACK[0xD60] = vdupq_n_s64(v12);
  *&STACK[0xD50] = vdupq_n_s64(v18);
  *&STACK[0xD40] = vdupq_n_s64(v17);
  *&STACK[0xD30] = vdupq_n_s64(0x712D560FD0C41AEAuLL);
  *&STACK[0xEB0] = vdupq_n_s64(v10);
  *&STACK[0xEA0] = vdupq_n_s64(0xD5F76ABD8EEE6086);
  *&STACK[0xC70] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0xCF0] = vdupq_n_s64(v11);
  *&STACK[0xCC0] = vdupq_n_s64(v15);
  *&STACK[0xCA0] = vdupq_n_s64(0xC7B84D5584632BB3);
  *&STACK[0xC80] = vdupq_n_s64(0x784FBA2FAF983AE6uLL);
  *&STACK[0xC60] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0xC50] = vdupq_n_s64(0x16916AF990E79581uLL);
  *&STACK[0xC40] = vdupq_n_s64(0xC9F25BB096E59ABALL);
  *&STACK[0xC30] = vdupq_n_s64(0x320DA44F691A6545uLL);
  *&STACK[0xC20] = vdupq_n_s64(0xCAD042536AC2AEC8);
  *&STACK[0xBE0] = xmmword_100F523B0;
  *&STACK[0xBD0] = vdupq_n_s64(v9);
  return v19();
}

uint64_t sub_1004F37E4()
{
  v4 = ((v2 - 2013285043) & 0x7800EBED ^ 0x5BC8BD88) + v1;
  v5 = *(v0 + 4);
  v6 = ((v2 + 269704462) & 0xEFECFFEB ^ 0xB7C24F5D) + v5;
  v7 = v5 > 0x483D3509;
  v8 = v7 ^ (v4 < 0xB7C2CAF6);
  v9 = v4 < v6;
  if (v8)
  {
    v9 = v7;
  }

  return (*(v3 + 8 * ((438 * v9) ^ v2)))();
}

uint64_t sub_1004F3888@<X0>(unsigned int a1@<W8>)
{
  *(v3 + 2540) = a1;
  v4 = ((v2 - 1767332444) & 0x6957AB3B ^ 0x21165359) + v1;
  v5 = v4 < 0x37C42F93;
  if (a1 > ((v2 - 1767332444) ^ 0x5E930F93u) == v5)
  {
    v5 = a1 + 935604115 < v4;
  }

  return (*(STACK[0xF18] + 8 * ((44340 * v5) ^ v2)))();
}

uint64_t sub_1004F39CC()
{
  v0 = STACK[0xF10] - 28197;
  STACK[0x60B8] = &STACK[0x5960];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = -939100714;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F3A18@<X0>(int a1@<W8>)
{
  STACK[0x7508] = STACK[0x6758];
  LODWORD(STACK[0x927C]) = STACK[0x5E2C];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004F3A4C@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBEF0] = 0;
  STACK[0xBEF8] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBEF0] | v13);
  *(&STACK[0xBEF0] | v13) = STACK[0xBEF7];
  v17 = *(&STACK[0xBEF0] | v14);
  *(&STACK[0xBEF0] | v14) = STACK[0xBEF6];
  v18 = *(&STACK[0xBEF0] | v15);
  *(&STACK[0xBEF0] | v15) = STACK[0xBEF5];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBEF7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBEF6]) = v17;
  LOBYTE(STACK[0xBEF5]) = v18;
  v23 = STACK[0xBEF0];
  LOBYTE(STACK[0xBEF0]) = STACK[0xBEF4];
  LOBYTE(STACK[0xBEF4]) = v23;
  v24 = *(&STACK[0xBEF0] | v20);
  *(&STACK[0xBEF0] | v20) = STACK[0xBEF3];
  LOBYTE(STACK[0xBEF3]) = v24;
  v25 = STACK[0xBEF1];
  LOBYTE(STACK[0xBEF2]) = STACK[0xBEF0];
  LOWORD(STACK[0xBEF0]) = v25;
  STACK[0xBEF0] = vmla_s32(v22, STACK[0xBEF0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBEF8];
  v27 = (553300517 * STACK[0xBEF8]) ^ v12;
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
  v48 = *(&STACK[0xBEF8] + v13);
  *(&STACK[0xBEF8] + v13) = STACK[0xBEFF];
  LOBYTE(STACK[0xBEFF]) = v48;
  v49 = *(&STACK[0xBEF8] + v14);
  *(&STACK[0xBEF8] + v14) = STACK[0xBEFE];
  LOBYTE(STACK[0xBEFE]) = v49;
  v50 = *(&STACK[0xBEF8] + v15);
  *(&STACK[0xBEF8] + v15) = STACK[0xBEFD];
  LOBYTE(STACK[0xBEFD]) = v50;
  v51 = STACK[0xBEF8];
  LOBYTE(STACK[0xBEF8]) = STACK[0xBEFC];
  LOBYTE(STACK[0xBEFC]) = v51;
  v52 = *(&STACK[0xBEF8] + v20);
  *(&STACK[0xBEF8] + v20) = STACK[0xBEFB];
  LOBYTE(STACK[0xBEFB]) = v52;
  v53 = STACK[0xBEF9];
  LOBYTE(STACK[0xBEFA]) = STACK[0xBEF8];
  LOWORD(STACK[0xBEF8]) = v53;
  STACK[0xBEF8] = vmla_s32(v22, STACK[0xBEF8], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBEF8] ^ STACK[0xBEF0];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1004F3EF4()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x4958];
  LODWORD(STACK[0x2564]) = -709122590;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F3F58()
{
  v0 = STACK[0xF10] - 96;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x8A38]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004F3F90@<X0>(int a1@<W0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v16 = (a1 + v5);
  v17 = (a3 + v4 + v16);
  v18 = ((v17 ^ *(*v14 + (*v13 & v6))) & 0x7FFFFFFF) * v7;
  v19 = (v18 ^ HIWORD(v18)) * v8;
  *v17 = *(v15 + (v19 >> 24)) ^ *(v11 + v16) ^ *((v19 >> 24) + a2 + 6) ^ *((v19 >> 24) + v12 + 5) ^ v19 ^ (BYTE3(v19) * v9);
  return (*(STACK[0xF18] + 8 * ((2 * (a1 - 1 == v10)) | (32 * (a1 - 1 == v10)) | v3)))();
}

uint64_t sub_1004F40AC()
{
  *(v3 + 40) = (v1 ^ 0x77A7) - 11235 + v0;
  STACK[0x10ED8] = *(v3 + 32);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x6D54F5B8) + 1834284478) ^ 0x8B72EE71) + 296765127;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 28295)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = *(v3 + 48);
  LODWORD(STACK[0x10EE8]) = v1 - (((&STACK[0x10ED8] | 0x4EE755BB) + (~&STACK[0x10ED8] | 0xB118AA44)) ^ 0x7FE6989E) * v2 + 18269;
  v5 = (*(v4 + 8 * (v1 ^ 0x971F)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_1004F4364()
{
  LODWORD(STACK[0x10ED8]) = (v1 - 31048) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xADE8F3C8) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x52170C30)) ^ 0x9CE93EEC));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0xF3C8) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC30)) ^ 0x3EEC) + 18173;
  STACK[0x10EE8] = v0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x66DC)))(&STACK[0x10ED8]);
  v5 = *(v2 + 72);
  STACK[0x19B0] = v2 + 72;
  return (*(v3 + 8 * ((165 * ((((109 * (v1 ^ 0xAD2A) - 19253) ^ (v5 == 0)) & 1) == 0)) ^ v1)))(v4);
}

uint64_t sub_1004F4554()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] - 566566164) & 0x21C4BDF8;
  v3 = (STACK[0xF10] - 33523) | 0x9080;
  v4 = STACK[0xF10] - 10390;
  v5 = STACK[0x1E30];
  *(*(v5 + 480) + 16) = v0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 16221)))(*(*(v5 + 480) + 16) ^ (v2 - 371877135));
  v8 = STACK[0x1E30];
  *(*(v8 + 480) + 8) = v7;
  return (*(v6 + 8 * (((*(*(v8 + 480) + 8) == 0) * (v3 ^ 0x98D0)) | v4)))();
}

uint64_t sub_1004F462C@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0xF10] - 19715;
  v3 = STACK[0xF10] - 23049;
  LODWORD(STACK[0x10ED8]) = v3 + 139493411 * (&STACK[0x10ED8] ^ 0xC2DE145);
  STACK[0x10EE0] = a1;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0xF5F1)))(&STACK[0x10ED8]);
  v5 = *(v1 + 280);
  LODWORD(STACK[0x10ED8]) = v3 + 139493411 * (((&STACK[0x10ED8] | 0xD46A36FA) - (&STACK[0x10ED8] | 0x2B95C905) + 731236613) ^ 0xD847D7BF);
  STACK[0x10EE0] = v5;
  v6 = (*(v4 + 8 * (v2 + 36241)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v6);
}

uint64_t sub_1004F473C@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBB20] = 0;
  STACK[0xBB28] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBB20] | v13);
  *(&STACK[0xBB20] | v13) = STACK[0xBB27];
  v17 = *(&STACK[0xBB20] | v14);
  *(&STACK[0xBB20] | v14) = STACK[0xBB26];
  v18 = *(&STACK[0xBB20] | v15);
  *(&STACK[0xBB20] | v15) = STACK[0xBB25];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBB27]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBB26]) = v17;
  LOBYTE(STACK[0xBB25]) = v18;
  v23 = STACK[0xBB20];
  LOBYTE(STACK[0xBB20]) = STACK[0xBB24];
  LOBYTE(STACK[0xBB24]) = v23;
  v24 = *(&STACK[0xBB20] | v20);
  *(&STACK[0xBB20] | v20) = STACK[0xBB23];
  LOBYTE(STACK[0xBB23]) = v24;
  v25 = STACK[0xBB21];
  LOBYTE(STACK[0xBB22]) = STACK[0xBB20];
  LOWORD(STACK[0xBB20]) = v25;
  STACK[0xBB20] = vmla_s32(v22, STACK[0xBB20], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBB28];
  v27 = (553300517 * STACK[0xBB28]) ^ v12;
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
  v48 = *(&STACK[0xBB28] + v13);
  *(&STACK[0xBB28] + v13) = STACK[0xBB2F];
  LOBYTE(STACK[0xBB2F]) = v48;
  v49 = *(&STACK[0xBB28] + v14);
  *(&STACK[0xBB28] + v14) = STACK[0xBB2E];
  LOBYTE(STACK[0xBB2E]) = v49;
  v50 = *(&STACK[0xBB28] + v15);
  *(&STACK[0xBB28] + v15) = STACK[0xBB2D];
  LOBYTE(STACK[0xBB2D]) = v50;
  v51 = STACK[0xBB28];
  LOBYTE(STACK[0xBB28]) = STACK[0xBB2C];
  LOBYTE(STACK[0xBB2C]) = v51;
  v52 = *(&STACK[0xBB28] + v20);
  *(&STACK[0xBB28] + v20) = STACK[0xBB2B];
  LOBYTE(STACK[0xBB2B]) = v52;
  v53 = STACK[0xBB29];
  LOBYTE(STACK[0xBB2A]) = STACK[0xBB28];
  LOWORD(STACK[0xBB28]) = v53;
  STACK[0xBB28] = vmla_s32(v22, STACK[0xBB28], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBB28] ^ STACK[0xBB20];
  return (*(STACK[0xF18] + 8 * (a2 ^ ((a2 + 538774513) | 0x2582) ^ 0xDFE3755B ^ (52480 * (a2 == 1346463266)))))();
}

uint64_t sub_1004F4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xE12E4993) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x1ED1B668)) ^ 0x708525C) + 296753103;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 ^ 0x41F1)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32424));
  return (*(v6 + 8 * (v5 - 54480 + ((v5 - 11067) | 4))))(v7);
}

uint64_t sub_1004F4D5C()
{
  v1 = STACK[0xF10] - 31084;
  *STACK[0xA370] = v0 ^ 0xE773B63C2CB22AF9;
  v2 = STACK[0xF18];
  STACK[0x21B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3CD1)))();
}

uint64_t sub_1004F50C4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((2 * v0) ^ 0x9578) - 25276) ^ v0)))();
}

uint64_t sub_1004F5100()
{
  v1 = STACK[0x5288];
  v2 = STACK[0x1160];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = (v2 << (v0 - 16)) ^ 0x2BE42C71;
  LODWORD(STACK[0x884C]) = -1628124297;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F519C()
{
  v0 = STACK[0xF10] - 32916;
  STACK[0x1350] = STACK[0x3760];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x395F ^ (23547 * (v0 == 931541983)))))();
}

uint64_t sub_1004F5250()
{
  STACK[0x9708] = 0;
  STACK[0x7DF8] = 0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x9F703A69 ^ (50450 * (v0 > 0x33809D2F)))))();
}

uint64_t sub_1004F55B0()
{
  STACK[0x5C50] = (((v1 ^ 0x4C592C1C855AF40ALL) - 0x4C592C1C855AF40ALL) ^ ((v1 ^ 0xACCE49510F74B22ALL) + 0x5331B6AEF08B4DD6) ^ ((((v0 + 29678) - 0x1F689AB29C050A0ALL) ^ v1) + 0x1F689AB29C047ECFLL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = 221658459;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F5708()
{
  v8 = v5 - 1;
  *(v6 + v8) ^= *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v1 + 3) ^ ((v8 & 0xF) * v2) ^ *((v8 & 0xF) + v4 + 1);
  return (*(v7 + 8 * (v0 ^ (32 * (v8 != 0)))))();
}

uint64_t sub_1004F58A4()
{
  v5 = (((v4 ^ 0x8DB61A13) + 1917445613) ^ ((v4 ^ 0x7CD45A58) - 2094291544) ^ (v0 - 16923 + (v4 ^ 0x18B7875A) - 414684880)) + 1312863512;
  v6 = ((v5 ^ 0x3E6C852F) - 1510370087) ^ v5 ^ ((v5 ^ 0xA0D56E3F) + 994082761) ^ ((v5 ^ 0xC54CF8E7) + 1591339281) ^ ((v5 ^ 0x3F9FFDFF) - 1542788087);
  *(v2 + v3 + (v6 ^ 0x646AEE08) - 0x789F91731D2F89B5) = *(v1 + (v6 ^ 0x646AEE08));
  return (*(STACK[0xF18] + 8 * ((52 * (v6 == 1684729352)) ^ v0)))();
}

uint64_t sub_1004F5B5C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 26967)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004F5B88()
{
  v1 = STACK[0x4E38];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393303;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004F5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 32423;
  *a5 += (v5 - 11063) ^ 0x6005;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x95E98E52 | (&STACK[0x10000] + 3800) & 0x6A1671A8) ^ 0x73CF959D) + 296753103;
  v7 = v5 + 16271;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * v7))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v8 + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x1AFB)))(v9);
}

uint64_t sub_1004F5CB8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (v11 + (v12 ^ a9));
  *v14 = a1;
  v14[1] = a1;
  return (*(STACK[0xF18] + 8 * (((v10 == 0) * v13) ^ v9)))();
}

uint64_t sub_1004F6268@<X0>(char a1@<W8>)
{
  v5 = a1 & 0x1F;
  LODWORD(STACK[0xEC0]) = *(v2 + (v5 << 7) + 4 * (((((((v3 - 30963) | 0x28A0) ^ 0x3AF7) & v1 ^ 0x6754E933) + 2049053467) ^ (((((v3 - 30963) | 0x28A0) ^ 0x3AF7) & v1 ^ 0x74C51E65) + 1773397069) ^ (((((v3 - 30963) | 0x28A0) ^ 0x3AF7) & v1 ^ 0x1391F756u) + 250023296)) - 494336554));
  LODWORD(STACK[0xED0]) = v4;
  return (*(STACK[0xF18] + 8 * ((84 * ((((v5 ^ 0x8A23F86A) + 2117259314) ^ ((v5 ^ 0x7D0EFD0F) - 1994402475) ^ ((v5 ^ 0xF72D0565) + 54275391)) - 1947281500 < 0x8000001F)) ^ (v3 - 23685))))();
}

uint64_t sub_1004F63F0()
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
  STACK[0xC1D8] = v0;
  STACK[0xC1D0] = 0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC1D0] | v10);
  *(&STACK[0xC1D0] | v10) = 0;
  LOBYTE(STACK[0xC1D7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC1D0] | v12);
  *(&STACK[0xC1D0] | v12) = STACK[0xC1D6];
  LOBYTE(STACK[0xC1D6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC1D0] | v14);
  *(&STACK[0xC1D0] | v14) = STACK[0xC1D5];
  LOBYTE(STACK[0xC1D5]) = v15;
  v16 = STACK[0xC1D0];
  LOBYTE(STACK[0xC1D0]) = STACK[0xC1D4];
  LOBYTE(STACK[0xC1D4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC1D0] | v17);
  *(&STACK[0xC1D0] | v17) = STACK[0xC1D3];
  LOBYTE(STACK[0xC1D3]) = v18;
  v19 = STACK[0xC1D1];
  LOBYTE(STACK[0xC1D2]) = STACK[0xC1D0];
  LOWORD(STACK[0xC1D0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC1D0] = vmla_s32(v22, STACK[0xC1D0], vdup_n_s32(0x1000193u));
  STACK[0xC1D8] ^= STACK[0xC1D0];
  STACK[0xC1D8] = vmul_s32(vsub_s32(STACK[0xC1D8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC1DA];
  LOWORD(STACK[0xC1D9]) = STACK[0xC1D8];
  LOBYTE(STACK[0xC1D8]) = v23;
  v24 = (&STACK[0xC1D8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC1DB];
  LOBYTE(STACK[0xC1DB]) = v19;
  LOBYTE(v24) = STACK[0xC1D8];
  LOBYTE(STACK[0xC1D8]) = STACK[0xC1DC];
  LOBYTE(STACK[0xC1DC]) = v24;
  v25 = (&STACK[0xC1D8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC1DD];
  LOBYTE(STACK[0xC1DD]) = v24;
  v26 = (&STACK[0xC1D8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC1DE];
  LOBYTE(STACK[0xC1DE]) = v25;
  v27 = (&STACK[0xC1D8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC1DF];
  LOBYTE(STACK[0xC1DF]) = v28;
  v29 = STACK[0xC1D8];
  v30 = (553300517 * STACK[0xC1D8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC1D8];
  return (*(STACK[0xF18] + 8 * ((31467 * (v1 != 1376849235)) ^ (v1 - 153655289))))(v47, v48);
}

uint64_t sub_1004F68EC@<X0>(int a1@<W0>, _DWORD *a2@<X7>, uint64_t a3@<X8>)
{
  v17 = a3 - 1;
  v18 = (v5 & (2 * v17)) + ((v12 + v3 + v4) ^ v17);
  v19 = ((v7 + v18) ^ *(*v11 + (*a2 & v8))) & 0x7FFFFFFF;
  v20 = ((v19 * v9) ^ ((v19 * v9) >> 16)) * v9;
  *(v7 + v18) = *(v15 + (v20 >> 24)) ^ *(v18 + v13 + v6) ^ *((v20 >> 24) + v16 + 3) ^ *((v20 >> 24) + v14 + 2) ^ v20 ^ (BYTE3(v20) * v10);
  return (*(STACK[0xF18] + 8 * (((v17 == 0) * a1) ^ v12)))();
}

uint64_t sub_1004F6984()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3C47 ^ (v0 + 3269))))();
}

uint64_t sub_1004F69C4@<X0>(int a1@<W8>)
{
  v2 = v1 ^ 0x36BC;
  v3 = a1 >= (v1 ^ 0x36BC) + 435347866 + 1469 * (v1 ^ 0xA568);
  return (*(STACK[0xF18] + 8 * ((4 * v3) | (8 * v3) | v2)))();
}

uint64_t sub_1004F6A18()
{
  v2 = *(v1 + 8);
  STACK[0x6EB0] = v1 + 8;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 703913667) ^ (634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3ED623B8) + 1054221241) ^ 0x53400C45));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 39224)))(&STACK[0x10ED8]);
  STACK[0x5548] = STACK[0x55C0];
  STACK[0x3280] = 0;
  STACK[0x6F48] = 0;
  STACK[0x9748] = 0x1C004DD1B969F6E1;
  STACK[0x6D48] = 0;
  STACK[0x50C0] = &STACK[0x70D8];
  STACK[0x1930] = &STACK[0x40D8];
  STACK[0x3368] = 0;
  STACK[0x2DF8] = 0;
  STACK[0x3C78] = 0;
  STACK[0x5E58] = 0;
  LODWORD(STACK[0x62F4]) = -2111058640;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1004F6B1C()
{
  v0 = STACK[0xF10] - 14431;
  v1 = STACK[0xF10] - 31161;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] - 33863)) - 268512458);
  v3 = *(v2 + 4);
  LODWORD(STACK[0xC3CD]) = *v2;
  LODWORD(STACK[0xC3D1]) = v3;
  LOBYTE(STACK[0xC3D5]) = *(v2 + 8);
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0x546B) + v1)))();
}

uint64_t sub_1004F6BD8()
{
  v1 = v0 + 25681;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x629B)))(LODWORD(STACK[0x1384]));
  *(STACK[0x6D8] - 1818280658) = v3;
  return (*(v2 + 8 * (((((v1 - 68) ^ (v3 == 0)) & 1) * (((v1 - 7667) | 0x12B) ^ 0x8B1F)) | v1)))();
}

uint64_t sub_1004F6C54@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>)
{
  *(a1 + 144) = 0x4036A85B4AFC43E5;
  *(a1 + 152) = 0xF02EE3857396E816;
  return (*(STACK[0xF18] + 8 * ((25397 * (v8 >= v8 + 2070297672)) ^ (v8 + 367931197))))(a2, a3, a4, a5, a6, a7, a8, *&STACK[0xE80]);
}

uint64_t sub_1004F6EB8()
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
  STACK[0xC380] = 0;
  STACK[0xC388] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC380] | v10);
  *(&STACK[0xC380] | v10) = 0;
  LOBYTE(STACK[0xC387]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC380] | v12);
  *(&STACK[0xC380] | v12) = STACK[0xC386];
  LOBYTE(STACK[0xC386]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC380] | v14);
  *(&STACK[0xC380] | v14) = STACK[0xC385];
  LOBYTE(STACK[0xC385]) = v15;
  v16 = STACK[0xC380];
  LOBYTE(STACK[0xC380]) = STACK[0xC384];
  LOBYTE(STACK[0xC384]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC380] | v17);
  *(&STACK[0xC380] | v17) = STACK[0xC383];
  LOBYTE(STACK[0xC383]) = v18;
  v19 = STACK[0xC381];
  LOBYTE(STACK[0xC382]) = STACK[0xC380];
  LOWORD(STACK[0xC380]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC380] = vmla_s32(v22, STACK[0xC380], vdup_n_s32(0x1000193u));
  STACK[0xC388] ^= STACK[0xC380];
  STACK[0xC388] = vmul_s32(vsub_s32(STACK[0xC388], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC38A];
  LOWORD(STACK[0xC389]) = STACK[0xC388];
  LOBYTE(STACK[0xC388]) = v23;
  v24 = (&STACK[0xC388] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC38B];
  LOBYTE(STACK[0xC38B]) = v19;
  LOBYTE(v24) = STACK[0xC388];
  LOBYTE(STACK[0xC388]) = STACK[0xC38C];
  LOBYTE(STACK[0xC38C]) = v24;
  v25 = (&STACK[0xC388] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC38D];
  LOBYTE(STACK[0xC38D]) = v24;
  v26 = (&STACK[0xC388] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC38E];
  LOBYTE(STACK[0xC38E]) = v25;
  v27 = (&STACK[0xC388] | v10);
  v28 = *v27;
  *v27 = STACK[0xC38F];
  LOBYTE(STACK[0xC38F]) = v28;
  v29 = STACK[0xC388];
  v30 = (553300517 * STACK[0xC388]) ^ v9;
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
  *STACK[0x940] = STACK[0xC388];
  return (*(STACK[0xF18] + 8 * (v1 ^ (56981 * (v1 > ((v1 - 760551022) & 0x164B8D8F) + 1309008181)) ^ 0x1709DF03)))(v47, v48);
}

uint64_t sub_1004F74AC()
{
  v2 = (v1 - 6085) | 0x100A;
  LODWORD(STACK[0xED0]) = v2;
  return (*(STACK[0xF18] + 8 * (((v0 == v2 + 760161424) * ((v1 - 8833) ^ 0xE70D)) ^ v1)))();
}

uint64_t sub_1004F76B0()
{
  v2 = STACK[0x3C20];
  LODWORD(STACK[0x2394]) = STACK[0x3C20];
  v3 = STACK[0x3590];
  v4 = STACK[0x7298];
  v5 = 139493411 * ((((&STACK[0x10000] + 3800) | 0xAE023B16) - ((&STACK[0x10000] + 3800) & 0xAE023B10)) ^ 0xA22FDA53);
  LODWORD(STACK[0x10ED8]) = ((((v2 ^ 0x8A80B3AF) + 1971276881) ^ ((v2 ^ 0x42CEA817) - 1120839703) ^ ((v2 ^ 0x219BDCA9) + ((v0 - 38763) ^ 0xDE643742))) + 1092408425) ^ v5;
  LODWORD(STACK[0x10F00]) = (v0 - 13650) ^ v5;
  STACK[0x10EF8] = v1;
  v6 = *(&off_1010A0B50 + v0 - 39627) - 809148675;
  STACK[0x10EE0] = v4;
  STACK[0x10EE8] = v6;
  STACK[0x10F08] = v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 + 8134)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v0 - 38763)))(v8);
}

uint64_t sub_1004F79E8()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x75F0];
  STACK[0x5D28] = &STACK[0x2D30];
  LODWORD(STACK[0x4704]) = 816232184;
  return (*(STACK[0xF18] + 8 * (v0 - 5541)))();
}

uint64_t sub_1004F7A84@<X0>(int a1@<W8>)
{
  v2 = v1 | ((v1 < 0x482D4312) << 32);
  STACK[0x9670] = v2 + 0x7BCF133D9A28BD06;
  v3 = *(STACK[0x938] + 8);
  v4 = v3 + 2120715778;
  v2 += 909789936;
  v5 = v3 > ((a1 + 1530671159) & 0xA4C3EFFB ^ 0xFFFFFFFF8198FAC6);
  v6 = v5 ^ (v2 < 0x7E678E02);
  v7 = v4 > v2;
  if (v6)
  {
    v7 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((!v7 * (((a1 - 22022) | 0x298) ^ 0x1788)) ^ a1)))();
}

uint64_t sub_1004F7C10()
{
  v2 = v0 - 16226;
  v4 = ((v0 - 23986) & STACK[0x24A4]) == -371865834;
  v3 = (v0 - 71);
  v4 = !v4 && v1 == v3;
  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((34563 * v5) ^ v2)))();
}

uint64_t sub_1004F7C68()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 533)))(v2);
}

uint64_t sub_1004F7C94@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2980] = STACK[0x1CE0];
  STACK[0x2E50] = a1;
  LODWORD(STACK[0x65E4]) = -371865839;
  STACK[0x8840] = 0;
  return (*(STACK[0xF18] + 8 * (((a1 == 0) * (v1 - 35638)) ^ (v1 - 6019))))();
}

uint64_t sub_1004F7DC8()
{
  v1 = STACK[0x4DC8];
  STACK[0x36F0] = STACK[0x4120];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170673;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x3C71)))();
}

uint64_t sub_1004F7E10()
{
  v1 = STACK[0xF88];
  STACK[0x3088] = 0;
  LODWORD(STACK[0x1B20]) = -371865839;
  STACK[0x3038] = 0;
  return (*(STACK[0xF18] + 8 * ((213 * (v1 != 0)) ^ (v0 - 5599))))();
}

uint64_t sub_1004F7E54@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE0]) = (v1 - 16251) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x1C3C8580) - (&STACK[0x10000] + 3800) + 1673755257) ^ 0x52C2B75D));
  STACK[0x10ED8] = &STACK[0x69BC];
  STACK[0x10EE8] = 0;
  STACK[0x10EF0] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xBA0E)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004F7FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 11063;
  v7 = v5 - 32421;
  ++*a5;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xFF9B2DD3 | (&STACK[0x10000] + 3800) & 0x64D228) ^ 0x19BD361C) + 296753103;
  v8 = v5 ^ 0x41F1;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * v8))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v9 + 8 * v7);
  return (*(v9 + 8 * (v6 + v7 - 22059)))(v10);
}

uint64_t sub_1004F8108(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = v3 + 32;
  LOWORD(STACK[0x79DE]) = 7096;
  LODWORD(STACK[0x16B4]) = 959455360;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1004F8228@<X0>(int a1@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x13E8] = *(STACK[0xF18] + 8 * v4);
  STACK[0x25E0] = v3;
  LODWORD(STACK[0xB39C]) = v1;
  STACK[0xB3A0] = v5;
  STACK[0x40E8] = v2;
  v7 = STACK[0x7690];
  STACK[0xB3A8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((a1 + 2053399912) ^ 0x7A647CC8u) + v7 - 50131;
  return (*(v6 + 8 * (((4 * (((a1 + 104) ^ (*(v3 + 656) == 0)) & 1)) & 0xF7 | (8 * (((a1 + 2053399912) ^ (*(v3 + 656) == 0)) & 1))) ^ a1)))();
}

uint64_t sub_1004F82BC()
{
  v1 = STACK[0xF18];
  STACK[0x2F78] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 41937) ^ 0x829F) + v0)))();
}

uint64_t sub_1004F839C()
{
  v1 = STACK[0xF18];
  STACK[0x22B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((178 * (v0 != -1326937421)) ^ (v0 - 21852 + v0 + 35330))))();
}

uint64_t sub_1004F83FC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 8141)))(v2);
}

uint64_t sub_1004F8510@<X0>(int a1@<W8>)
{
  v1 = STACK[0x2460];
  *STACK[0x6960] = -371865839;
  STACK[0x1D38] = 0;
  return (*(STACK[0xF18] + 8 * (((((v1 == 0) ^ (105 * (a1 ^ 0xB9))) & 1) * ((a1 ^ 0x74B9) + 96)) ^ a1)))();
}

uint64_t sub_1004F8574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x66BAA5DE | (&STACK[0x10000] + 3800) & 0x99455A20) ^ 0x809CBE11) + 296753103;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32422));
  return (*(v6 + 8 * ((6360 * (v5 - 1389216735 != (v5 ^ 0xEB3F) + 1692855020)) ^ (v5 - 31876))))(v7);
}

uint64_t sub_1004F86F8()
{
  v1 = (STACK[0xF10] ^ 0xC695) + (v0 - 1548484898) * LODWORD(STACK[0xE30]) + 2037209808;
  v2 = (v1 ^ 0xE6CA5769) & (2 * (v1 & 0x86925782)) ^ v1 & 0x86925782;
  v3 = ((2 * (v1 ^ 0xEACA7D6D)) ^ 0xD8B055DE) & (v1 ^ 0xEACA7D6D) ^ (2 * (v1 ^ 0xEACA7D6D)) & 0x6C582AEE;
  v4 = v3 ^ 0x24482A21;
  v5 = (v3 ^ 0x8100008) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xB160ABBC) & v4 ^ (4 * v4) & 0x6C582AEC;
  v7 = (v6 ^ 0x20402AA0) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x4C180043)) ^ 0xC582AEF0) & (v6 ^ 0x4C180043) ^ (16 * (v6 ^ 0x4C180043)) & 0x6C582AE0;
  v9 = v8 ^ 0x2858000F;
  v10 = v7 ^ 0x6C582AEF ^ (v8 ^ 0x44002A00) & (v7 << 8);
  v11 = STACK[0xF10] - 31081;
  STACK[0xEB0] = v1 ^ LODWORD(STACK[0xE20]) ^ (2 * ((v10 << 16) & 0x6C580000 ^ v10 ^ ((v10 << 16) ^ 0x2AEF0000) & ((v9 << 8) & 0x6C580000 ^ 0x24500000 ^ ((v9 << 8) ^ 0x582A0000) & v9))) ^ 0xE275A22BEB4699ACLL;
  v12 = *(STACK[0xF18] + 8 * (v11 ^ 0x1B87 ^ (5332 * (v11 != 2131213858))));
  LODWORD(STACK[0xEC0]) = STACK[0xE10];
  return v12();
}

uint64_t sub_1004F8A14()
{
  v0 = (STACK[0xF10] - 35635) | 0x1C20;
  v1 = STACK[0xF10] + 2254;
  STACK[0x9CF0] = &STACK[0x773C];
  if (STACK[0x5E20])
  {
    v2 = LODWORD(STACK[0x3650]) == -371865839;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((v3 * (v0 - 7183)) ^ v1)))();
}

uint64_t sub_1004F8B30(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = STACK[0xE70] + (((v4 + v6) & 0x1F) << 7);
  v9 = STACK[0xE70] + (((v4 + v6 + 1) & 0x1F) << 7);
  v10 = *(v9 + 4 * v7) - 1125272277;
  *(v8 + 4 * v7) -= 1125272277;
  *(v9 + 4 * v7) = v10;
  return (*(STACK[0xF18] + 8 * (((a3 == 0) * a4) ^ v5)))();
}

uint64_t sub_1004F8D50@<X0>(int a1@<W8>)
{
  v5 = 48 * a1;
  *(v1 + v5 + 24) = v2;
  *(*(v4 + 16) + v5 + 32) = STACK[0xEB0];
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1004F8D8C()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762647699) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x34DB8AA0) - (&STACK[0x10000] + 3800) + 1260680540) ^ 0x7A25B878));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9C9B)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * ((v0 - 945187363) & 0x38565EDF ^ 0xD406)) ^ v0)))(v2);
}

uint64_t sub_1004F8E54()
{
  v2 = STACK[0x8D18];
  v3 = STACK[0x7F30];
  v4 = STACK[0x1718];
  v5 = STACK[0x30E0] + *(v0 + 1864) + ((2278 * (v1 ^ 0xC01E)) ^ 0xDED577AC);
  v6 = 17902189 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x2C3685B0) - 1405712975) ^ 0x227993A1);
  LODWORD(STACK[0x10EF8]) = (((*(v0 + 1868) ^ 0xD99DB67) - 228186983) ^ ((*(v0 + 1868) ^ 0x23EC4A29) - 602688041) ^ ((*(v0 + 1868) ^ 0xC7A0565F) + 945793441)) - v6 + 1737392428;
  LODWORD(STACK[0x10EE8]) = (v1 - 23930) ^ v6;
  STACK[0x10EE0] = v2;
  STACK[0x10ED8] = v3;
  STACK[0x10EF0] = v5;
  STACK[0x10F00] = v4;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD52)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v1))(v8);
}

uint64_t sub_1004F8FE4()
{
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] += ((v1 - 15451) | 1u) + 63;
  STACK[0xC30] = v3;
  v4 = (~v3 + 2 * v3) & 2;
  STACK[0x5DC0] = 16 * ((v4 + 0x2CDB63E99A9EE3) ^ (v4 + 0x10E39BD9665F13) ^ ((v4 ^ 0x11A0E3C597F7EBALL) + 0xE9694678C6A206BLL)) + 0x7365A42AEAA12D0;
  STACK[0x71F0] = v2;
  if (v2)
  {
    v5 = v0 == 7101;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  LODWORD(STACK[0xAA0]) = v6;
  return (*(STACK[0xF18] + 8 * ((19998 * v6) ^ v1)))();
}

uint64_t sub_1004F90CC@<X0>(unint64_t a1@<X8>)
{
  v4 = (v1 - 30676) | 0x8AE;
  v5 = *(v2 + 16);
  v6 = *v2 - ((*v2 << (((((v1 + 44) | 0xAE) - 123) | 8) - 58)) & 0x3723EBEC) + 462550518;
  v7 = *(v2 + 8) ^ 0x3359FD72B512EF04;
  v8 = 1112314453 * (((&STACK[0x10ED8] | 0x18A5C5A8214D4EA1) - (&STACK[0x10ED8] | 0xE75A3A57DEB2B15ELL) - 0x18A5C5A8214D4EA2) ^ 0xE4A96D13CE1B6478);
  LODWORD(STACK[0x10EF8]) = v8 + v4 + 29482;
  STACK[0x10ED8] = a1;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EF0]) = v6 ^ v8;
  STACK[0x10EE8] = v7 - v8;
  STACK[0x10F00] = v5;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v4 ^ 0xC4D7)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * v4))(v10);
}

uint64_t sub_1004F92A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (a7 + 4 * ((v10 + v14) & 0x1F));
  v16 = *v15;
  v17 = v15[1];
  v18 = (v11 + 4 * v10);
  *v18 = v16;
  v18[1] = v17;
  return (*(STACK[0xF18] + 8 * (((((v8 + v7) ^ v9) + v10 != v12) * v13) ^ v8)))();
}

uint64_t sub_1004F9368()
{
  v1 = (STACK[0xF10] + 1747150531) & 0x97DC5FF7;
  v2 = STACK[0xF10] + 15176;
  STACK[0x8F38] = v0;
  return (*(STACK[0xF18] + 8 * (((v0 != 0) * (v1 ^ 0x51E5)) ^ v2)))();
}

uint64_t sub_1004F93C4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 27364)))(*(STACK[0x820] - 1306953403), STACK[0x4400], LODWORD(STACK[0x5EB8]) ^ (((v0 - 22220) | 0x8209) - 371901482));
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004F95B0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3908]) += v1 ^ 0xE9D5C711;
  STACK[0x9E20] = STACK[0x5B30];
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * ((((a1 - 1598033634) | 0x45301E23) + 437254364) ^ a1)))();
}

uint64_t sub_1004F96D0()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] ^ 0x8087) + 15;
  LODWORD(STACK[0xED0]) = STACK[0xF10] - 11457;
  v3 = STACK[0x7D50];
  v4 = STACK[0x8D88];
  v5 = STACK[0x8D88] + 44;
  v6 = STACK[0xA974];
  v7 = 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266);
  STACK[0x10EE8] = STACK[0x9AE0];
  LODWORD(STACK[0x10EF0]) = (v6 + (v2 ^ 0xD9DFC60A)) ^ v7;
  LODWORD(STACK[0x10EE0]) = v1 - v7 - 24549;
  LOBYTE(STACK[0x10F08]) = -75 * ((&STACK[0x10000] - 40) ^ 0x66) + 56;
  STACK[0x10EF8] = v3;
  STACK[0x10F00] = v4 + 24;
  STACK[0x10ED8] = v4 + 44;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 16393)))(&STACK[0x10ED8]);
  v9 = *v3;
  v10 = (((v6 ^ 0xF1F301FA) + 1981959809) ^ v6 ^ ((v6 ^ 0x6B65B19F) - 323682586) ^ ((v6 ^ 0x9DC7FD1E) + 437695078) ^ ((v6 ^ 0x7F7FFDFE) - 122768762)) & 0xFFFFFFF0;
  v11 = 1603510583 * ((((&STACK[0x10000] + 3800) ^ 0x2633E0C4 | 0x24CE01B1) - ((&STACK[0x10000] + 3800) ^ 0x2633E0C4 | 0xDB31FE4E) - 617480626) ^ 0x9526D3DE);
  LODWORD(STACK[0x10EEC]) = (v1 + 5714) ^ v11;
  LODWORD(STACK[0x10EE8]) = v11 - 1809121264 + (((v10 ^ 0xA9DCC751) - 1542046291) ^ ((v10 ^ 0x75DCB8D) + 177680753) ^ ((v10 ^ 0xD6AFBC5C) - 614119774));
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = &v3[56 * v9 + 8];
  STACK[0x10F00] = v4 + 4;
  STACK[0x10EF8] = v5;
  v12 = (*(v8 + 8 * (v1 ^ 0x4075)))(&STACK[0x10ED8]);
  v13 = STACK[0x10EF0];
  LODWORD(STACK[0x7FFC]) = STACK[0x10EF0];
  return (*(v8 + 8 * ((204 * (v13 != v0)) ^ LODWORD(STACK[0xED0]))))(v12);
}

uint64_t sub_1004F9944()
{
  LODWORD(STACK[0x1B10]) = v0;
  STACK[0x5BE0] = 0;
  LODWORD(STACK[0x658C]) = v0;
  LODWORD(STACK[0x10ED8]) = (v2 - 613516098) ^ (1112314453 * ((((2 * &STACK[0x10ED8]) | 0x2BAEBCCC) - &STACK[0x10ED8] + 1781047706) ^ 0x7A8174BF));
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 43999)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = STACK[0x818];
  LODWORD(STACK[0x10ED8]) = (v2 - 1762633529) ^ (906386353 * (((&STACK[0x10ED8] | 0x4F129472) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xB0ED6B88)) ^ 0x7E135956));
  v4 = (*(v3 + 8 * (v2 + 44017)))(&STACK[0x10ED8]);
  STACK[0xAC60] = v1;
  return (*(v3 + 8 * (((*v1 - 1 < 2) * (((v2 - 7336) | 0x891B) + 13332)) ^ v2)))(v4);
}

uint64_t sub_1004F9A84()
{
  v5 = v0 < v2;
  LODWORD(STACK[0xEA0]) = (v1 + 1651122822) & 0x9D95DFD3;
  *(STACK[0xED0] + (v4 - 286130252)) = 45;
  if (v5 == v4 + 2063879313 < v2)
  {
    LOBYTE(v5) = v4 + 2063879313 < v0;
  }

  return (*(STACK[0xF18] + 8 * (((((v1 - 1) ^ v5) & 1) * v3) ^ v1)))();
}

uint64_t sub_1004F9C68(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA584]) ^ 0x2D2D5F90) - 757948304) ^ ((LODWORD(STACK[0xA584]) ^ 0x22658044) - 577077316) ^ ((LODWORD(STACK[0xA584]) ^ 0xF194D796) + 241903722)) + 111954092;
  v3 = (((LODWORD(STACK[0xA580]) ^ 0x6F855D26) - 1871011110) ^ ((LODWORD(STACK[0xA580]) ^ 0x61CA900) - 102541568) ^ ((LODWORD(STACK[0xA580]) ^ 0x804C3337) + 2142489801)) + 1040549360;
  v4 = (((LODWORD(STACK[0xA588]) ^ 0x1E9D5913) - 513628435) ^ ((LODWORD(STACK[0xA588]) ^ 0xBCFA4D0C) + 1124446964) ^ ((LODWORD(STACK[0xA588]) ^ 0x4BB2D30E) - 1270010638)) + v3 * v2 + 1688152301 * (139221294 * v3 + 1656108677 * v2) + 445901646;
  v5 = (v4 ^ 0xA2EC0150) & (2 * (v4 & 0xC8EEA419)) ^ v4 & 0xC8EEA419;
  v6 = ((2 * (v4 ^ 0xB36C0142)) ^ 0xF7054AB6) & (v4 ^ 0xB36C0142) ^ (2 * (v4 ^ 0xB36C0142)) & 0x7B82A55A;
  v7 = v6 ^ 0x882A549;
  v8 = (v6 ^ 0x63000000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xEE0A956C) & v7 ^ (4 * v7) & 0x7B82A558;
  v10 = (v9 ^ 0x6A028540) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x11802013)) ^ 0xB82A55B0) & (v9 ^ 0x11802013) ^ (16 * (v9 ^ 0x11802013)) & 0x7B82A550;
  v12 = v10 ^ 0x7B82A55B ^ (v11 ^ 0x38020500) & (v10 << 8);
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31908) ^ 0x11E8)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ (2 * ((v12 << 16) & 0x7B820000 ^ v12 ^ ((v12 << 16) ^ 0x255B0000) & (((v11 ^ 0x4380A04B) << 8) & 0x7B820000 ^ 0x79020000 ^ (((v11 ^ 0x4380A04B) << 8) ^ 0x2A50000) & (v11 ^ 0x4380A04B)))) ^ 0xDE8A57A4);
}

uint64_t sub_1004FA0AC()
{
  v2 = STACK[0xF10] - 30669;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16221)))(v0);
  STACK[0x80A8] = v4;
  if (v4)
  {
    v5 = *(v1 + 2484);
  }

  else
  {
    v5 = 371891397;
  }

  return (*(v3 + 8 * (((v5 == -371865839) * (((109 * (v2 ^ 0x1229) - 35371) | 0x2A8) + 21582)) ^ v2)))();
}

uint64_t sub_1004FA144()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5DBF750) + 98301783) ^ 0xE3FDEC98) + 296783349;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 46517)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x7E9C]) = v0;
  v4 = STACK[0x5E40];
  v5 = STACK[0x2864];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v4;
  LODWORD(STACK[0x655C]) = v5;
  LODWORD(STACK[0x884C]) = -1311396129;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004FA1FC()
{
  v1 = (v0 + 1240230243) & 0xB613BFFF;
  v2 = v0 + 1727;
  v3 = v0 - 14129;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x3461DDD2) - (&STACK[0x10000] + 3800) + 1708069143) ^ 0xAB3123CD));
  STACK[0x10EE0] = 0;
  v4 = v0 ^ 0x4182;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * v4))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((*STACK[0x970] > (v1 ^ 0xB49E)) * (v2 ^ 0x635F)) ^ v3)))(v6);
}

uint64_t sub_1004FA30C()
{
  v1 = STACK[0xF10] - 29050;
  LODWORD(STACK[0x389C]) = v0;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393332;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004FA360@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 714036326;
  return (*(STACK[0xF18] + 8 * ((a1 | 0x85160052) ^ 0xE5374791 ^ (5110 * ((a1 | 0x85160052) > 0xE1A70425)))))();
}

uint64_t sub_1004FA51C()
{
  v0 = STACK[0xF10] ^ 0xE5F0958C;
  v1 = STACK[0xF10] - 31692;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 + 437250751)))();
}

uint64_t sub_1004FA580@<X0>(int a1@<W1>, char a2@<W5>, int a3@<W8>)
{
  LODWORD(STACK[0xDD0]) = a3 & a1;
  v9 = STACK[0xED0];
  v10 = (((*STACK[0xED0] ^ 3) - 3) ^ ((*STACK[0xED0] ^ 0xB8) + 72) ^ ((*STACK[0xED0] ^ 0xE4) + 28)) + 39;
  v11 = v10 & 0x30 | 0xC7;
  *STACK[0xED0] = v10 ^ (2 * ((v10 ^ 0x2A) & (2 * ((v10 ^ 0x2A) & (2 * ((v10 ^ 0x2A) & (2 * ((v10 ^ 0x2A) & (2 * ((v10 ^ 0x2A) & (2 * (((32 * (((v10 & 0x30) >> 4) & 3)) | 0x1A) & (v10 ^ 0x2A) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0x6F;
  if (v4 == -347583231)
  {
    v12 = v9;
  }

  else
  {
    v12 = (v9 + 1);
  }

  v13 = (((*v12 ^ 0x37) - 55) ^ ((*v12 ^ 0x29) - 41) ^ ((*v12 ^ 0x41) - 65)) + 66;
  v14 = v13 & 0xC5 ^ 0x2F;
  *v12 = v13 ^ (2 * ((v13 ^ 0xE) & (2 * ((v13 ^ 0xE) & (2 * ((v13 ^ 0xE) & (2 * ((v13 ^ 0xE) & (2 * ((v13 ^ 0xE) & (2 * (((2 * (v13 & 0xF)) ^ 0x4A) & (v13 ^ 0xE) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x9A;
  v15 = 2 % (v4 ^ 0xEB484D00);
  v16 = (((LODWORD(STACK[0xE20]) ^ 0x13) - 4) ^ ((LODWORD(STACK[0xE20]) ^ 0xFFFFFFD4) + 61) ^ ((LODWORD(STACK[0xE20]) ^ 3) - 20)) + (((*(v9 + v15) ^ 0x72) - 114) ^ ((*(v9 + v15) ^ 0x1B) - 27) ^ ((*(v9 + v15) ^ 0x36) - 54)) + 126;
  v17 = v16 & 0x5A ^ 0xD3;
  *(v9 + v15) = v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * (v17 ^ v16 & 0x2E)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 5;
  v18 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  v19 = (((*(v9 + 3 % v18) ^ 0x77) - 119) ^ ((*(v9 + 3 % v18) ^ 0xDA) + 38) ^ ((*(v9 + 3 % v18) ^ 0xF2) + 14)) - 45;
  v20 = v19 & 0xCA ^ 0x2E;
  v21 = 2 * ((2 * v20) ^ v20 ^ (2 * v20) & v19);
  v22 = 2 * ((2 * (v21 ^ v20 ^ v21 & v19)) ^ v20 ^ (2 * (v21 ^ v20 ^ v21 & v19)) & v19);
  *(v9 + 3 % v18) = v19 ^ (2 * ((2 * (v22 ^ v20 ^ v22 & v19)) ^ v20 ^ (2 * (v22 ^ v20 ^ v22 & v19)) & v19)) ^ a2;
  v23 = (((*(v9 + 4 % v18) ^ 0xEF) + 17) ^ ((*(v9 + 4 % v18) ^ 0x68) - 104) ^ ((*(v9 + 4 % v18) ^ 0xD8) + 40)) + 62;
  v24 = v23 & 0x35 ^ 0xD1;
  *(v9 + 4 % v18) = v23 ^ (2 * ((v23 ^ 0x12) & (2 * ((v23 ^ 0x12) & (2 * ((v23 ^ 0x12) & (2 * ((v23 ^ 0x12) & (2 * ((v23 ^ 2) & (2 * ((v23 ^ 2) & ~(2 * v23) & 0x26 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ 0x6A;
  v25 = (((*(v9 + 5 % v18) ^ 0x1C) - 28) ^ ((*(v9 + 5 % v18) ^ 0x72) - 114) ^ ((*(v9 + 5 % v18) ^ 0x31) - 49)) + (((~v3 << 7) - 113) ^ ((~v3 << 7) | 0x71) ^ (((~v3 << 7) ^ 0xB6) - 39));
  v26 = v25 + 122;
  v27 = (v25 + 122) & 0x81 | 0x16;
  v28 = v27 ^ (v25 - 6) & 0x2C;
  *(v9 + 5 % v18) = (v25 - 6) ^ (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * ((v25 - 6) & (2 * v27) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ 0xF2;
  v29 = ((LOBYTE(STACK[0xEA0]) - 83) ^ 2) & (2 * ((LOBYTE(STACK[0xEA0]) - 83) & 0x4B)) ^ (LOBYTE(STACK[0xEA0]) - 83) & 0x4B;
  LOBYTE(v15) = ((2 * ((LOBYTE(STACK[0xEA0]) - 83) ^ 0x92)) ^ 0xB2) & ((LOBYTE(STACK[0xEA0]) - 83) ^ 0x92) ^ (2 * ((LOBYTE(STACK[0xEA0]) - 83) ^ 0x92)) & 0xD8;
  LOBYTE(v15) = (LOBYTE(STACK[0xEA0]) - 83) ^ (2 * (((4 * (v15 ^ 0x49)) & 0xD0 ^ ((4 * (v15 ^ 0x49)) ^ 0x60) & (v15 ^ 0x49) ^ 0x40) & (16 * ((v15 ^ 0x10) & (4 * v29) ^ v29)) ^ (v15 ^ 0x10) & (4 * v29) ^ v29));
  LOBYTE(v15) = (((v15 ^ 0xF5) - 11) ^ ((v15 ^ 0x37) + 55) ^ ((v15 ^ 0x89) - 119)) + (((*(v9 + 6 % v18) ^ 0xA8) + 88) ^ ((*(v9 + 6 % v18) ^ 0x52) - 82) ^ ((*(v9 + 6 % v18) ^ 0xA5) + 91)) + 106;
  v30 = v15 & 0x38 ^ 0x4D;
  *(v9 + 6 % v18) = v15 ^ (2 * ((v15 ^ 0x2E) & (2 * ((v15 ^ 0x2E) & (2 * ((v15 ^ 0x2E) & (2 * ((v15 ^ 0x2E) & (2 * (((2 * (v30 ^ v15 & 0x16)) ^ 0xC) & (v15 ^ 0x2E) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ 0x67;
  v31 = (((*(v9 + 7 % v18) ^ 0xF2) + 14) ^ ((*(v9 + 7 % v18) ^ 0xC1) + 63) ^ ((*(v9 + 7 % v18) ^ 0x6C) - 108)) + 25;
  v32 = v31 & 0x26 ^ 0xD7;
  *(v9 + 7 % v18) = v31 ^ (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & 0x1E ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0x79;
  v33 = (((*(v9 + 8 % v18) ^ 0xD9) + 39) ^ ((*(v9 + 8 % v18) ^ 0x2F) - 47) ^ ((*(v9 + 8 % v18) ^ 0xA9) + 87)) + 1;
  v34 = v33 & 0x58 ^ 0x5B;
  *(v9 + 8 % v18) = v33 ^ (2 * ((v33 ^ 0x2A) & (2 * ((v33 ^ 0x2A) & (2 * ((v33 ^ 0x2A) & (2 * ((v33 ^ 0x2A) & (2 * (((2 * v33) & 0x54 ^ 0x72) & (v33 ^ 0x2A) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 7;
  v35 = *(v9 + 9 % v18);
  v36 = (((LODWORD(STACK[0xE00]) ^ 0x22) + 127) ^ ((LODWORD(STACK[0xE00]) ^ 2) + 95) ^ ((LODWORD(STACK[0xE00]) ^ 0x7F) + 36)) + (((v35 ^ 0x4B) - 75) ^ ((v35 ^ 0xFFFFFFA2) + 94) ^ ((v35 ^ 0xFFFFFFB6) + 74)) - 39;
  *(v9 + 9 % v18) = v36 ^ (2 * (v36 & (2 * (v36 & (2 * (((2 * (((4 * (((((4 * ((v36 >> 1) & 1)) | 2) & v36) >> 1) & 3)) | 2) & v36)) ^ 0x7C) & v36 | ~v36 & 0x7E)) | ~v36 & 0x7E)) | ~v36 & 0x7E)) ^ 0x21;
  v37 = v6 % v18;
  LOBYTE(v18) = (((v7 ^ 0xC1) + 21) ^ ((v7 ^ 0x7E) - 84) ^ ((v7 ^ 0xB7) + 99)) + (((*(v9 + v6 % v18) ^ 0x8C) + 116) ^ ((*(v9 + v6 % v18) ^ 0xF) - 15) ^ ((*(v9 + v6 % v18) ^ 0xDC) + 36)) - 97;
  v38 = v18 & 0x32 ^ 0xA8;
  *(v9 + v37) = v18 ^ (2 * ((v18 ^ 0x60) & (2 * ((v18 ^ 0x60) & (2 * ((v18 ^ 0x60) & (2 * ((v18 ^ 0x60) & (2 * ((v18 ^ 0x60) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ 0x6D;
  v39 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  LOBYTE(v37) = (((v8 ^ 0xC5) + 112) ^ ((v8 ^ 1) - 84) ^ ((v8 ^ 0xAD) + 8)) + (((*(v9 + 0xB % v39) ^ 0x8F) + 113) ^ ((*(v9 + 0xB % v39) ^ 0x8E) + 114) ^ ((*(v9 + 0xB % v39) ^ 0x5E) - 94)) - 53;
  v40 = v37 & 0x66 ^ 0x4B;
  *(v9 + 0xB % v39) = v37 ^ (2 * ((v37 ^ 0x50) & (2 * ((v37 ^ 0x50) & (2 * ((v37 ^ 0x50) & (2 * ((v37 ^ 0x50) & (2 * ((v37 ^ 0x50) & (2 * (v40 ^ v37 & 0x36)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x39;
  LOBYTE(v37) = (((*(v9 + 0xC % v39) ^ 0x24) - 36) ^ ((*(v9 + 0xC % v39) ^ 0xBF) + 65) ^ ((*(v9 + 0xC % v39) ^ 0xC4) + 60)) - 68;
  v41 = v37 & 0x91 ^ 0x51;
  *(v9 + 0xC % v39) = v37 ^ (2 * ((v37 ^ 0x6E) & (2 * ((v37 ^ 0x6E) & (2 * ((v37 ^ 0x6E) & (2 * ((v37 ^ 0x6E) & (2 * ((v37 ^ 0x6E) & (2 * (((2 * v37) & 0x5E ^ 0x7E) & (v37 ^ 0x6E) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 0xCE;
  v42 = (LODWORD(STACK[0xE70]) ^ 0x3F) + 106;
  v43 = v42 & 0xD0 ^ 0x1D;
  LOBYTE(v42) = v42 ^ (2 * ((v42 ^ 0x26) & (2 * ((v42 ^ 0x26) & (2 * ((v42 ^ 0x26) & (2 * ((v42 ^ 0x26) & (2 * ((v42 ^ 0x26) & (2 * ((v42 ^ 0x26) & 0x36 ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43));
  v44 = (((*(v9 + 0xD % v39) ^ 0xC1) + 63) ^ ((*(v9 + 0xD % v39) ^ 0xB8) + 72) ^ ((*(v9 + 0xD % v39) ^ 0x26) - 38)) + (((v42 ^ 0xB5) + 71) ^ ((v42 ^ 0x66) - 106) ^ ((v42 ^ 0x77) - 123));
  LOBYTE(v42) = v44 + 87;
  v44 -= 41;
  v45 = 2 * (((2 * v44) & 0x60 ^ v44) & 0x30 ^ (2 * v44) & 0x60 & v42);
  *(v9 + 0xD % v39) = v42 ^ (2 * ((v45 ^ v44) & 0x30 ^ v45 & v42)) ^ 0xEF;
  v46 = LODWORD(STACK[0xE40]) ^ (LODWORD(STACK[0xE30]) >> (LODWORD(STACK[0xDA0]) ^ 8));
  v47 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  LOBYTE(v46) = 3 * (((v46 ^ 0xD0) + 29) ^ (v46 - 51) ^ ((v46 ^ 0x50) - 99)) + (((*(v9 + 0xE % v47) ^ 0x11) - 17) ^ ((*(v9 + 0xE % v47) ^ 0x9E) + 98) ^ ((*(v9 + 0xE % v47) ^ 0xD0) + 48)) + 2;
  v48 = v46 & 0x94 ^ 0x53;
  *(v9 + 0xE % v47) = v46 ^ (2 * ((v46 ^ 0x76) & (2 * ((v46 ^ 0x76) & (2 * ((v46 ^ 0x76) & (2 * ((v46 ^ 0x76) & (2 * (((2 * (v48 ^ v46 & 0x62)) ^ 0x44) & (v46 ^ 0x76) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ 0xCB;
  v49 = 0xF % v47;
  v50 = *(v9 + 0xF % v47);
  v51 = LODWORD(STACK[0xE80]) + (((v50 ^ 0x4B) - 75) ^ ((v50 ^ 0xFFFFFF8F) + 113) ^ ((v50 ^ 0xFFFFFF9B) + 101)) - 67;
  v52 = v51 & 0xF8 ^ 0xD;
  *(v9 + v49) = v51 ^ (2 * ((v51 ^ 0x6E) & (2 * ((v51 ^ 0x6E) & (2 * ((v51 ^ 0x6E) & (2 * ((v51 ^ 0x6E) & (2 * (((2 * (v52 ^ v51 & 0x16)) ^ 0xC) & (v51 ^ 0x6E) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ 0xA7;
  v53 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  LOBYTE(v49) = (((*(v9 + 0x10 % v53) ^ 0xA5) + 91) ^ ((*(v9 + 0x10 % v53) ^ 0x6E) - 110) ^ ((*(v9 + 0x10 % v53) ^ 0x94) + 108)) - 2;
  v54 = v49 & 0xD1 ^ 0x1A;
  *(v9 + 0x10 % v53) = v49 ^ (2 * ((v49 ^ 0x3C) & (2 * ((v49 ^ 0x3C) & (2 * ((v49 ^ 0x3C) & (2 * ((v49 ^ 0x3C) & (2 * ((v49 ^ 0x3C) & (2 * ((v49 ^ 0x3C) & (2 * v49) & 0x7A ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ 0x8E;
  v55 = (((*(v9 + 0x11 % v53) ^ 0x30) - 48) ^ ((*(v9 + 0x11 % v53) ^ 0xF7) + 9) ^ ((*(v9 + 0x11 % v53) ^ 0x98) + 104)) + 35;
  v56 = (v55 & 0x98 | 0x46) ^ v55 & 0xBC;
  *(v9 + 0x11 % v53) = v55 ^ (2 * ((v55 ^ 0x18) & (2 * ((v55 ^ 0x18) & (2 * ((v55 ^ 0x18) & (2 * ((v55 ^ 0x18) & (2 * ((v55 ^ 0x18) & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ 0x7B;
  v57 = STACK[0xDB0] & (v5 ^ 0xEE) | LODWORD(STACK[0xDC0]);
  LOBYTE(v57) = ((((v57 - ((2 * v57) & 0xC3) - 31) ^ 0xCB) + 102) ^ (((v57 - ((2 * v57) & 0xC3) - 31) ^ 0x23) - 114) ^ (((v57 - ((2 * v57) & 0xC3) - 31) ^ 0x55) - 4)) + (((*(v9 + 0x12 % v53) ^ 0x84) + 124) ^ ((*(v9 + 0x12 % v53) ^ 0x4C) - 76) ^ ((*(v9 + 0x12 % v53) ^ 0x97) + 105));
  v58 = v57 - 81;
  v59 = (v57 + 47) & 0x9C | (v57 - 81) & 0x42 | 0x21;
  *(v9 + 0x12 % v53) = v58 ^ (2 * ((v58 ^ 0x1C) & (2 * ((v58 ^ 0x1C) & (2 * ((v58 ^ 0x1C) & (2 * ((v58 ^ 0x1C) & (2 * ((v58 ^ 0x1C) & (2 * ((v58 ^ 0x1C) & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ 0x81;
  v60 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  v61 = *(v9 + 0x13 % v60);
  v62 = ((((LODWORD(STACK[0xE10]) - LODWORD(STACK[0xDF0]) + 118) ^ 0xFFFFFFE8) - 113) ^ (((LODWORD(STACK[0xE10]) - LODWORD(STACK[0xDF0]) + 118) ^ 0x2D) + 76) ^ (((LODWORD(STACK[0xE10]) - LODWORD(STACK[0xDF0]) + 118) ^ 0xFFFFFFB3) - 42)) + (((v61 ^ 0xFFFFFFE7) + 25) ^ ((v61 ^ 0xFFFFFF9D) + 99) ^ ((v61 ^ 0x25) - 37)) + 96;
  v63 = v62 & 0x58 ^ 0xFD;
  *(v9 + 0x13 % v60) = v62 ^ (2 * ((v62 ^ 0x6E) & (2 * ((v62 ^ 0x6E) & (2 * ((v62 ^ 0x6E) & (2 * ((v62 ^ 0x6E) & (2 * ((v62 ^ 0x6E) & (2 * ((v62 ^ 0x6E) & 0x36 ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 7;
  LOBYTE(v18) = (((*(v9 + 0x14 % v60) ^ 0xBF) + 65) ^ ((*(v9 + 0x14 % v60) ^ 0xD3) + 45) ^ ((*(v9 + 0x14 % v60) ^ 0x33) - 51)) - 50;
  LOBYTE(v62) = v18 & 0x25 ^ 0x2C;
  v64 = v18 ^ 0x6C;
  *(v9 + 0x14 % v60) = v18 ^ (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * (v18 & (2 * v18) & 0x5A ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x7A;
  v65 = (LODWORD(STACK[0xDD0]) - 4 * (LODWORD(STACK[0xDD0]) >> 1) + 126) & 0xFFFFFFEF;
  LOBYTE(v65) = (((*(v9 + 0x15 % v60) ^ 0x97) + 105) ^ ((*(v9 + 0x15 % v60) ^ 0x6C) - 108) ^ ((*(v9 + 0x15 % v60) ^ 0xA4) + 92)) - (((v65 ^ 0x2F) + 37) ^ ((v65 ^ 0x9B) - 111) ^ ((v65 ^ 0xCA) - 62)) + 107;
  LOBYTE(v62) = v65 & 0x3E ^ 0xBC;
  *(v9 + 0x15 % v60) = v65 ^ (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x61;
  v66 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  LOBYTE(v62) = ((*(v9 + 0x16 % v66) ^ 0x7B) - 123) ^ ((*(v9 + 0x16 % v66) ^ 0xE9) + 23) ^ ((*(v9 + 0x16 % v66) ^ 0xCD) + 51);
  v67 = (v62 - 99) & 0x9E | 0x21;
  LOBYTE(v62) = v62 + 29;
  v68 = v67 ^ v62 & 0x7E;
  *(v9 + 0x16 % v66) = v62 ^ (2 * ((v62 ^ 0x1E) & (2 * ((v62 ^ 0x1E) & (2 * ((v62 ^ 0x1E) & (2 * ((v62 ^ 0x1E) & (2 * ((v62 ^ 0x1E) & (2 * ((v62 ^ 0x1E) & (2 * v67) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0xBF;
  v69 = (((*(v9 + 0x17 % v66) ^ 0x9E) + 98) ^ ((*(v9 + 0x17 % v66) ^ 0xB3) + 77) ^ ((*(v9 + 0x17 % v66) ^ 0x72) - 114)) + 44;
  v70 = v69 & 0x7D ^ 0x7B;
  *(v9 + 0x17 % v66) = v69 ^ (2 * ((v69 ^ 0xE) & (2 * ((v69 ^ 0xE) & (2 * ((v69 ^ 0xE) & (2 * ((v69 ^ 0xE) & (2 * ((v69 ^ 0xE) & (2 * (((2 * (v69 & 0xF)) ^ 0x72) & (v69 ^ 0xE) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0x22;
  v71 = 0x18 % v66;
  v72 = (((*(v9 + 0x18 % v66) ^ 0xE7) + 25) ^ ((*(v9 + 0x18 % v66) ^ 0xB0) + 80) ^ ((*(v9 + 0x18 % v66) ^ 8) - 8)) - 2;
  LOBYTE(v66) = v72 & 0x76 ^ 0xE6;
  *(v9 + v71) = v72 ^ (2 * ((v72 ^ 0x28) & (2 * ((v72 ^ 0x28) & (2 * ((v72 ^ 0x28) & (2 * ((v72 ^ 0x28) & (2 * (((2 * v72) & 0x54 ^ 0x5C) & (v72 ^ 0x28) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ 0x29;
  v73 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  v74 = LODWORD(STACK[0xE60]) * LODWORD(STACK[0xE60]);
  LOBYTE(v66) = (((*(v9 + 0x19 % v73) ^ 0x1B) - 27) ^ ((*(v9 + 0x19 % v73) ^ 0x82) + 126) ^ ((*(v9 + 0x19 % v73) ^ 0xC6) + 58)) - 10;
  LOBYTE(v62) = v66 & 0xD6 ^ 0x92;
  *(v9 + 0x19 % v73) = v66 ^ (2 * ((v66 ^ 0x30) & (2 * ((v66 ^ 0x30) & (2 * ((v66 ^ 0x30) & (2 * ((v66 ^ 0x30) & (2 * (v66 & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x89;
  LOBYTE(v62) = ((*(v9 + 0x1A % v73) ^ 0x3A) - 58) ^ ((*(v9 + 0x1A % v73) ^ 0x4F) - 79) ^ ((*(v9 + 0x1A % v73) ^ 0x2A) - 42);
  LOBYTE(v61) = v62 + 24;
  LOBYTE(v62) = ((-25 - v62) & 0x90 | 0xE) ^ (v62 + 24) & 0x1C;
  *(v9 + 0x1A % v73) = v61 ^ (2 * ((v61 ^ 0x10) & (2 * ((v61 ^ 0x10) & (2 * ((v61 ^ 0x10) & (2 * ((v61 ^ 0x10) & (2 * ((v61 ^ 0x10) & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0xD3;
  v75 = 0x1B % v73;
  LOBYTE(v73) = (((*(v9 + 0x1B % v73) ^ 0xC0) + 64) ^ ((*(v9 + 0x1B % v73) ^ 0x58) - 88) ^ ((*(v9 + 0x1B % v73) ^ 0xC7) + 57)) - 57;
  LOBYTE(v62) = v73 & 0x7F ^ 0x4F;
  *(v9 + v75) = v73 ^ (2 * ((v73 ^ 0x60) & (2 * ((v73 ^ 0x60) & (2 * ((v73 ^ 0x60) & (2 * ((v73 ^ 0x60) & (2 * ((v73 ^ 0x60) & (2 * (((2 * v73) & 0x42 ^ 0x1E) & v73 ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x20;
  v76 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  LOBYTE(v73) = (((*(v9 + 0x1C % v76) ^ 0x4F) - 79) ^ ((*(v9 + 0x1C % v76) ^ 0x9F) + 97) ^ ((*(v9 + 0x1C % v76) ^ 0x8F) + 113)) - 48;
  LOBYTE(v62) = v73 & 0xD8 | 5;
  LOBYTE(v66) = v62 ^ v73 & 0x3A;
  *(v9 + 0x1C % v76) = v73 ^ (2 * ((v73 ^ 0x58) & (2 * ((v73 ^ 0x58) & (2 * ((v73 ^ 0x58) & (2 * ((v73 ^ 0x58) & (2 * ((v73 ^ 0x58) & (2 * ((v73 ^ 0x58) & (2 * v62) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ 0xBD;
  LOBYTE(v66) = ((*(v9 + 0x1D % v76) ^ 0xA3) + 93) ^ ((*(v9 + 0x1D % v76) ^ 0x9B) + 101) ^ ((*(v9 + 0x1D % v76) ^ 0x67) - 103);
  LOBYTE(v73) = v66 - 66;
  LOBYTE(v66) = 65 - v66;
  LOBYTE(v62) = v66 & 0xEA | 5;
  v77 = v62 ^ v73 & 0x4A;
  LOBYTE(v73) = v73 ^ 0x6A;
  *(v9 + 0x1D % v76) = v66 ^ (2 * (v73 & (2 * (v73 & (2 * (v73 & (2 * (v73 & (2 * (v73 & (2 * (v73 & (2 * v62) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77));
  v76 = 0x1E % v76;
  v78 = ((((v74 - 16 * (v74 >> 3) + 120) ^ 0x5E) - 94) ^ (((v74 - 16 * (v74 >> 3) + 120) ^ 0x23) - 35) ^ (((v74 - 16 * (v74 >> 3) + 120) ^ 5) - 5)) + (((*(v9 + v76) ^ 0x66) - 102) ^ ((*(v9 + v76) ^ 0x4C) - 76) ^ ((*(v9 + v76) ^ 0x75) - 117)) + 104;
  LOBYTE(v75) = v78 & 0x58 ^ 0x50;
  *(v9 + v76) = v78 ^ (2 * ((v78 ^ 0x38) & (2 * ((v78 ^ 0x38) & (2 * ((v78 ^ 0x38) & (2 * ((v78 ^ 0x38) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ 7;
  v79 = LODWORD(STACK[0x53AC]) ^ 0xEB484D00;
  LOBYTE(v75) = (((*(v9 + 0x1F % v79) ^ 0xD3) + 45) ^ ((*(v9 + 0x1F % v79) ^ 0xF3) + 13) ^ ((*(v9 + 0x1F % v79) ^ 0x7F) - 127)) - 48;
  v80 = v75 & 0xBC ^ 0x72;
  *(v9 + 0x1F % v79) = v75 ^ (2 * ((v75 ^ 0x58) & (2 * ((v75 ^ 0x58) & (2 * ((v75 ^ 0x58) & (2 * ((v75 ^ 0x58) & (2 * ((v75 ^ 0x58) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ 0xE3;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xE90])))();
}

uint64_t sub_1004FBC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] + 11600;
  v4 = STACK[0xF10] - 34142;
  LODWORD(STACK[0xA018]) = STACK[0x98D4];
  v5 = 0x9FC % (v3 ^ 0xD69EC34D ^ LODWORD(STACK[0xA01C])) - ((2 * (0x9FC % (v3 ^ 0xD69EC34D ^ LODWORD(STACK[0xA01C])))) & 0xFC) + 66539646;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DEB)))(a1, a2, a3, v3, (((v5 ^ 0xE4C4BDB) - 239881179) ^ ((v5 ^ 0xF761BA69) + 144590231) ^ ((v5 ^ 0xFADAA1CC) + 86335028)) + 1144382153);
}

uint64_t sub_1004FBE84@<X0>(int a1@<W8>)
{
  STACK[0x7538] = v1;
  STACK[0x1038] = 0;
  LODWORD(STACK[0x21D0]) = -371865839;
  STACK[0x7960] = 0;
  STACK[0x1290] = 0;
  return (*(STACK[0xF18] + 8 * (((STACK[0x97E0] == 0) * (a1 - 75206 + 109 * (a1 ^ 0x9BD0))) ^ a1)))();
}

uint64_t sub_1004FBFD0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = *(a1 + v2) ^ *(a1 + v3);
  *(a1 + v2) = v4;
  v5 = *(a1 + v3) ^ v4;
  *(a1 + v3) = v5;
  *(a1 + v2) ^= v5;
  return (*(STACK[0xF18] + 8 * (a2 - 32290)))();
}

uint64_t sub_1004FC028()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 1561508071) & 0xA2ED56EF) - 1820)))();
}

uint64_t sub_1004FC0A4()
{
  LODWORD(STACK[0x71DC]) = v0;
  v2 = STACK[0x77D0];
  STACK[0x10EF0] = STACK[0x4800];
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10EE0]) = (v1 + 371878607) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10ED8] = &STACK[0x71DC];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE9D50C44)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 ^ 0xE9D5CE67 ^ ((((109 * (v1 ^ 0x56)) ^ (((LODWORD(STACK[0x10EE4]) - v1) | (v1 - LODWORD(STACK[0x10EE4]))) < 0)) & 1) * ((v1 ^ 0xE9D54C2A) - 17878)))))(v4);
}

uint64_t sub_1004FC18C()
{
  v4 = v0 + *(v3 + 2152);
  *(v4 - 0x7F3FDE6FFEB6FE9ALL) = v2[19] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FE9BLL) = v2[18] ^ 0x5F;
  *(v4 + ((v1 + 15037) ^ 0x80C0219001498A5FLL)) = v2[17] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FE9DLL) = v2[16] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FE9ELL) = v2[15] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FE9FLL) = v2[14] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA0) = v2[13] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA1) = v2[12] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA2) = v2[11] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA3) = v2[10] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA4) = v2[9] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA5) = v2[8] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA6) = v2[7] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA7) = v2[6] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA8) = v2[5] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEA9) = v2[4] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEAALL) = v2[3] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEABLL) = v2[2] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEACLL) = v2[1] ^ 0x5F;
  *(v4 - 0x7F3FDE6FFEB6FEADLL) = *v2 ^ 0x5F;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004FC400()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 1591533331;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_1004FC494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  LODWORD(STACK[0x98E0]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_1004FC548@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 128);
  v2 = v1 + 128;
  v4 = *(v2 - 16);
  STACK[0x3BF8] = *(v2 - 8);
  STACK[0x3558] = *(v2 + 32);
  STACK[0x3390] = *(v2 + 384);
  STACK[0x4660] = v2 - 92;
  STACK[0x3160] = v4;
  STACK[0x4308] = v2;
  STACK[0x6680] = v3;
  STACK[0x1828] = v2 + 8;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x54A8] = v6;
  STACK[0x4A90] = v6;
  STACK[0x9408] = (v6 + 88);
  STACK[0x9418] = (v6 + 200);
  STACK[0x7690] = v5 + 480;
  STACK[0x3E38] = 0x20DE4F5147E73171;
  LODWORD(STACK[0x4F54]) = 0;
  STACK[0x2E88] = 0;
  if (STACK[0x7020])
  {
    v7 = LODWORD(STACK[0x5508]) == ((a1 - 1256058409) & 0x4ADDBFCF) - 371871804;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(STACK[0xF18] + 8 * ((934 * v8) ^ a1)))();
}

uint64_t sub_1004FC634(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA54C]) ^ 0xA5149B7A) + 1525376134) ^ ((LODWORD(STACK[0xA54C]) ^ 0xC6EDE5E3) + 957487645) ^ ((LODWORD(STACK[0xA54C]) ^ 0xAEDA0CA4) + 1361441628)) - 765471143;
  v3 = (((LODWORD(STACK[0x98D4]) ^ 0xD63C51FF) + 700689921) ^ ((LODWORD(STACK[0x98D4]) ^ 0x73A74D92) - 1940344210) ^ ((LODWORD(STACK[0x98D4]) ^ 0x4C4EDB7C) - 1280236412)) - 122787434;
  v4 = (((LODWORD(STACK[0xA550]) ^ 0x8AF733A8) + 1963510872) ^ ((LODWORD(STACK[0xA550]) ^ 0xC2CC4B9D) + 1026798691) ^ ((LODWORD(STACK[0xA550]) ^ 0xA1EEBF24) + 1578189020)) + v2 * v3 - 1872593805 * (-1509163124 * v3 + 193765593 * v2) + 1156332292;
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31868) ^ 0x11C0)))(a1, a2, v4 ^ ((v4 ^ 0x597E116) - 1848334449) ^ ((v4 ^ 0xF353CD0D) + 1729137558) ^ ((v4 ^ 0x60A74B93) - 186381044) ^ ((v4 ^ 0xFDDFDEEF) + 1771870328) ^ 0x210CC77D);
}

uint64_t sub_1004FC85C()
{
  v1 = STACK[0x6A20];
  *v1 ^= 0xF6u;
  v1[1] ^= 0xA2u;
  v1[2] ^= 0x89u;
  v1[3] ^= 0xDCu;
  v1[4] ^= 0xD4u;
  v1[5] ^= 0x2Au;
  v1[6] ^= (-93 * (v0 ^ 0x1B) + 93) & 0x7F ^ 0xBB;
  v1[7] ^= 0xE9u;
  v1[8] ^= 0xEFu;
  v1[9] ^= 0x77u;
  v1[10] ^= 0x7Fu;
  v1[11] ^= 0x5Eu;
  v1[12] ^= 0xB0u;
  v1[13] ^= 0xECu;
  v1[14] ^= 0x72u;
  v1[15] ^= 0x9Fu;
  v2 = STACK[0x21F0];
  LODWORD(STACK[0x10EE8]) = v0 + 906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24) - 584633294;
  STACK[0x10EE0] = v2;
  STACK[0x10ED8] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE9D50CB0)))(&STACK[0x10ED8]);
  v5 = STACK[0x10EEC];
  *v1 ^= 0xF3u;
  v1[1] ^= 0xECu;
  v1[2] ^= 0x6Fu;
  v1[3] ^= 0x4Bu;
  v1[4] ^= 0x81u;
  v1[5] ^= 0x4Bu;
  v1[6] ^= 0xDFu;
  v1[7] ^= 0xDEu;
  v1[8] ^= 0x7Bu;
  v1[9] ^= 0x5Fu;
  v1[10] ^= 0x6Du;
  v1[11] ^= 0xB7u;
  v1[12] ^= 0x9Cu;
  v6 = v1[15] ^ 0xD5;
  v1[13] ^= 0xA9u;
  v1[14] ^= 0xFDu;
  LODWORD(STACK[0x93D0]) = v5;
  v1[15] = v6;
  return (*(v3 + 8 * ((37169 * (((v5 - v0) | (v0 - v5)) >= 0)) ^ (v0 + 371881443))))(v4);
}

uint64_t sub_1004FCB04()
{
  *(v1 + 32) += (31 * (v0 ^ 0x2F2C) + 1467367690) & 0xA889EF3F ^ 0xFFFF74C4;
  v2 = *(v1 + 8);
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x76C1C840) - 155072441) ^ 0x10E7D388) + 296777031;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 40199)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762637364) ^ (906386353 * (&STACK[0x10ED8] ^ 0x3101CD24));
  v4 = (*(v3 + 8 * (v0 + 40182)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((23 * (*STACK[0x970] < 1)) ^ v0)))(v4);
}

uint64_t sub_1004FCCC0()
{
  v1 = STACK[0x9800];
  v2 = STACK[0x10E4];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = -1474544470;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004FCDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x12F0];
  STACK[0x5D28] = &STACK[0x86A4];
  LODWORD(STACK[0x4704]) = 1840499082;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004FCE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10];
  v8 = STACK[0xF10] - 1232253703;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x55D0];
  STACK[0x5D28] = &STACK[0x8D00];
  LODWORD(STACK[0x4704]) = 520476165;
  return (*(STACK[0xF18] + 8 * ((16276 * (v8 < 0x3D533AD6)) ^ (v7 - 30181))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004FCFEC@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 6795));
  return (*(v1 + 8 * ((((a1 - 6303) | 0x6150) - 21409) ^ (a1 - 6795))))();
}

uint64_t sub_1004FD038(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xA6E8] - 0x5ED04CA5846C1B98 + (((v2 ^ 0xFED18DFEE0C5D396) + 0x12E72011F3A2C6ALL) ^ ((v2 ^ 0xC8DEB1E179DAD9AELL) + 0x37214E1E86252652) ^ ((v2 ^ 0x360F3C1F70CACD29) - 0x360F3C1F70CACD29)) + 0x1B9D85E4ALL;
  v4 = STACK[0xA6E0] - 0x679E8F99B34FB2C6;
  v5 = v3 < 0xD0029739;
  v6 = v3 > v4;
  if (v4 < 0xD0029739 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((108 * v6) ^ (STACK[0xF10] - 803))))(a1, a2, 371891407);
}

uint64_t sub_1004FD288@<X0>(int a1@<W8>)
{
  v2 = a1 - 45961;
  v3 = v1 >= 7 * (v2 ^ 0x109D) + ((v2 + 2710) | 0x401) + 800136891;
  return (*(STACK[0xF18] + 8 * (((4 * v3) | (8 * v3)) ^ v2)))();
}

uint64_t sub_1004FD2E0@<X0>(unsigned int a1@<W8>)
{
  STACK[0x2288] = 0;
  LODWORD(STACK[0x1B64]) = -371865839;
  LODWORD(STACK[0x3598]) = -371865839;
  STACK[0x8F48] = 0;
  LODWORD(STACK[0x3584]) = -371865839;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x8B860438 ^ (82577 * (a1 < 0x3D1D060E)))))();
}

uint64_t sub_1004FD348()
{
  v0 = STACK[0xF10] ^ 0xAC22;
  v1 = STACK[0xF10] - 31944;
  v2 = STACK[0xF18];
  STACK[0x80E8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 3217) ^ v1)))();
}

uint64_t sub_1004FD3A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W8>)
{
  v5 = a3 - 23047;
  v6 = 37 * ((a3 - 23047) ^ 0x6505);
  LODWORD(STACK[0xED0]) = v6;
  v7 = -1802333311 * v3;
  v8 = *(*(v4 + 8 * (v5 - 20812)) + ((v6 ^ 0xA0B6) & (v7 >> 8) ^ 0xEFLL) - 41524026);
  v9 = ((-127 * v3) ^ 0x21) + *(*(v4 + 8 * (v5 ^ 0x6677)) + ((-127 * v3) ^ 0xB1) - 1581633279) - 13;
  LOBYTE(v6) = *(*(v4 + 8 * (v5 ^ 0x6B9F)) + (BYTE2(v7) ^ 0x3ELL) - 290426391) ^ 0x91;
  v10 = *(*(v4 + 8 * (v5 - 20300)) + (HIBYTE(v7) ^ 0x81) - 1813088570);
  v11 = (((((v8 >> 1) | (v8 << 7)) ^ (((v8 >> 1) | (v8 << 7)) >> 5) ^ (((v8 >> 1) | (v8 << 7)) >> 1)) << 8) ^ 0x51B610A4) & (v9 ^ 0x51B6FFA4) | v9 & 0x5B;
  v12 = ((16 * v6) & 0x9F ^ v6) << 16;
  v13 = v3[1];
  v14 = (v12 ^ 0xFF03FFFF) & (v11 ^ 0xB986BC4) ^ v12 & 0xD10000;
  v15 = (v14 ^ 0xA5004118) & (((((v10 >> 7) | (2 * v10)) ^ 0xBE) << 24) ^ 0x977BD378) ^ v14 & 0x42842C87;
  v16 = v15 ^ 0x426A08A2;
  v17 = v15;
  LODWORD(STACK[0xEB0]) = v15;
  v18 = *(v4 + 8 * (v5 - 22705)) - 567370183;
  v19 = *(v4 + 8 * (v5 - 21138)) - 532537010;
  v20 = *(v19 + (v3[13] ^ 0x9BLL)) << 16;
  v21 = (v20 ^ 0xFFF3FFFF) & (((((v13 ^ 0xC) + *(v18 + (v13 ^ 0x6A))) << 24) - 2013265920) ^ 0xA136E52F);
  v22 = v20 & 0xC90000;
  v23 = *(v4 + 8 * (v5 - 23406)) - 1761533550;
  v24 = *(v23 + (v3[15] ^ 0xE7));
  v25 = v3[4];
  STACK[0xEC0] = a1;
  v26 = *(v4 + 8 * (v5 - 20580)) - 877818642;
  v27 = v21 | v22;
  v28 = (v27 ^ 0x42001A50) & ((v24 << 8) ^ 0xC6296472);
  v29 = *(v26 + (v25 ^ 0xB8)) ^ v25;
  v30 = (v29 ^ 0xFFFFFF22) & (v27 & 0x39D60404 ^ 0x52DDE0B2 ^ v28) ^ v29 & 0x3B;
  v31 = *(v19 + (v3[14] ^ 0x9BLL)) << 16;
  v32 = (((((*(v18 + (v3[7] ^ 0x6ALL)) + (v3[7] ^ 0xC)) ^ 5) << 24) - 2013265920) ^ 0xE3A50900) & (v31 ^ 0xFF3AE90E) | v31 & 0x5A0000;
  v33 = *(v23 + (v3[12] ^ 0xE7)) << 8;
  v34 = *v3;
  v35 = *(v26 + (v3[10] ^ 0xB8)) ^ v3[10];
  v36 = ((v33 & 0xFFFFE7FF | (v32 ^ 0x7E81110F) & (v33 ^ 0xFFFFC40F)) ^ 0xBB2ABF8C) & (v35 ^ 0xFFFFFF5B);
  v37 = (((v34 ^ 0xC) + *(v18 + (v34 ^ 0x6A))) << 24) - 2013265920;
  v38 = *(a2 + 105);
  v39 = *(v19 + (v38[2] ^ 0x9BLL));
  v40 = ((v39 << 16) | 0xFF00FFFF) & (v37 ^ 0x41013BE3) & 0xFF01FFFF | (v39 >> 1 << 17);
  v41 = *(v26 + (v38[8] ^ 0xB8)) ^ v38[8];
  v42 = (((v40 ^ 0x8222C410) & ((*(v23 + (v38[5] ^ 0xE7)) << 8) ^ 0xB327A853) | v40 & 0x4CD80000) ^ 0x67BED9E0) & (v41 ^ 0xFFFFFFB9);
  LODWORD(v19) = *(v19 + (v38[9] ^ 0x9BLL)) << 16;
  LODWORD(v23) = *(v23 + (v38[3] ^ 0xE7));
  LODWORD(v26) = *(v26 + (v38[11] ^ 0xB8)) ^ v38[11];
  LODWORD(v19) = v30 ^ v26 & 0x63 ^ (((v23 << 8) & 0x9100 | (((v19 ^ 0xFF601670) & (((((v38[6] ^ 0xC) + *(v18 + (v38[6] ^ 0x6ALL))) << 24) - 2013265920) ^ 0x30ED1670) | v19 & 0x120000) ^ 0xF6AD7890) & ((v23 << 8) ^ 0xFFFFF2F4)) ^ 0xA73A9D7C) & (v26 ^ 0xFFFFFF6F) ^ 0x60BF98C3;
  LODWORD(STACK[0xEA0]) = v16;
  v43 = v35 & 0x7C ^ v36 ^ v16;
  LODWORD(v23) = v19 ^ v43;
  LODWORD(v26) = v30 ^ v17;
  LODWORD(v18) = v16 ^ v30 ^ v17 ^ v41 & 0x4C ^ v42 ^ 0xDA609E5C;
  v44 = v18 ^ v43;
  v45 = v26 ^ v19 ^ 0xCEACF2A3;
  BYTE1(v26) = BYTE1(v44) ^ 0xC8;
  LODWORD(v18) = v18 ^ v23 ^ 0xA6D385E1;
  LODWORD(STACK[0xE90]) = v5;
  v46 = *(v4 + 8 * (v5 ^ 0x6709)) - 1246342719;
  LODWORD(v19) = *(v46 + 4 * HIBYTE(v45));
  v47 = *(v4 + 8 * (v5 - 22029)) - 708573699;
  v48 = 1129036427 * *(v47 + 4 * (BYTE2(v23) ^ 0xAFu)) + 1315697179;
  v49 = *(v4 + 8 * (v5 - 21857)) - 884278263;
  HIDWORD(v50) = *(v49 + 4 * BYTE1(v18));
  LODWORD(v50) = HIDWORD(v50);
  v51 = *(v4 + 8 * (v5 ^ 0x6503)) - 1341454451;
  v52 = *(v51 + 4 * (v44 ^ 0x22u));
  v53 = *(v46 + 4 * ((v44 ^ 0x8DA2C822) >> 24));
  LODWORD(v19) = v19 ^ (v19 >> 6) ^ (v19 >> 2) ^ (v50 >> 10) ^ v48 ^ ((v50 >> 10) >> 3) & 0x31B9EE5 ^ (v48 >> 4) & 0x5026C64 ^ __ROR4__(((((v52 ^ 0xD959C5D4) << 9) & 0xF0000 ^ 0xFC01FFFF) & ((v52 >> 23) & 0x1A5 ^ 0x540F21C3) | ((v52 ^ 0xD959C5D4) << 9) & 0x82A09000) ^ __ROR4__(v52 ^ 0xD959C5D4, 21) ^ 0xD0D441F8, 11);
  v54 = 1129036427 * *(v47 + 4 * BYTE2(v45)) + 1315697179;
  HIDWORD(v50) = *(v49 + 4 * (BYTE1(v23) ^ 0xE2u));
  LODWORD(v50) = HIDWORD(v50);
  v55 = *(v46 + 4 * BYTE3(v18));
  v56 = v53 ^ (v53 >> 6) ^ (v53 >> 2) ^ v54 ^ (v50 >> 10) ^ *(v51 + 4 * v18) ^ (v54 >> 4) & 0x5026C64 ^ ((v50 >> 10) >> 3) & 0x31B9EE5 ^ (*(v51 + 4 * v18) >> 2) & 0x34B055F2;
  v57 = 1129036427 * *(v47 + 4 * (BYTE2(v44) ^ 0xEu)) + 1315697179;
  HIDWORD(v50) = *(v49 + 4 * BYTE1(v45));
  LODWORD(v50) = HIDWORD(v50);
  v58 = v50 >> 10;
  v59 = *(v51 + 4 * (v23 ^ 0xA8u));
  v60 = *(v46 + 4 * (BYTE3(v23) ^ 3));
  LODWORD(v18) = 1129036427 * *(v47 + 4 * BYTE2(v18)) + 1315697179;
  HIDWORD(v50) = *(v49 + 4 * BYTE1(v26));
  LODWORD(v50) = HIDWORD(v50);
  v61 = *(v51 + 4 * v45);
  v62 = v19 ^ 0x7580E47;
  v63 = v56 ^ 0xC810C770;
  v64 = v55 ^ (v55 >> 6) ^ (v55 >> 2) ^ v59 ^ v57 ^ v58 ^ (v59 >> 2) & 0x34B055F2 ^ (v57 >> 4) & 0x5026C64 ^ (v58 >> 3) & 0x31B9EE5 ^ 0x4B92F8AE;
  v65 = v60 ^ (v60 >> 6) ^ (v60 >> 2) ^ v61 ^ (v50 >> 10) ^ v18 ^ (v61 >> 2) & 0x34B055F2 ^ (v18 >> 4) & 0x5026C64 ^ ((v50 >> 10) >> 3) & 0x31B9EE5 ^ 0x8CE14338;
  v66 = 1129036427 * *(v47 + 4 * BYTE2(v65)) + 1315697179;
  HIDWORD(v50) = *(v49 + 4 * BYTE1(v64));
  LODWORD(v50) = HIDWORD(v50);
  v67 = *(v51 + 4 * (v56 ^ 0xBu)) ^ 0xAD920A80;
  v68 = (v67 >> 2) & 0x34B055F2;
  v69 = v68 & v67;
  v70 = v68 + v67;
  v71 = *(v46 + 4 * HIBYTE(v63));
  v72 = *(v46 + 4 * HIBYTE(v62)) ^ (*(v46 + 4 * HIBYTE(v62)) >> 6) ^ (*(v46 + 4 * HIBYTE(v62)) >> 2) ^ v66 ^ (v50 >> 10) ^ (v66 >> 4) & 0x5026C64 ^ ((v50 >> 10) >> 3) & 0x31B9EE5 ^ (~v70 + 2 * v69);
  v73 = 1129036427 * *(v47 + 4 * ((v19 ^ 0x7580E47) >> 16)) + 1315697179;
  HIDWORD(v50) = *(v49 + 4 * BYTE1(v65));
  LODWORD(v50) = HIDWORD(v50);
  v74 = *(v46 + 4 * HIBYTE(v64)) ^ 0xB3D3CFEB;
  v75 = v71 ^ (v71 >> 6) ^ (v71 >> 2) ^ (v50 >> 10) ^ *(v51 + 4 * v64) ^ v73 ^ ((v50 >> 10) >> 3) & 0x31B9EE5 ^ (v73 >> 4) & 0x5026C64 ^ (*(v51 + 4 * v64) >> 2) & 0x34B055F2;
  v76 = 1129036427 * *(v47 + 4 * BYTE2(v63)) + 1315697179;
  HIDWORD(v50) = *(v49 + 4 * (BYTE1(v19) ^ 0x99u));
  LODWORD(v50) = HIDWORD(v50);
  LODWORD(v18) = *(v46 + 4 * HIBYTE(v65)) ^ 0xB3D3CFEB;
  v77 = v18 & 1;
  v78 = (v50 >> 10) ^ v76 ^ *(v51 + 4 * v65) ^ (v76 >> 4) & 0x5026C64 ^ ((v50 >> 10) >> 3) & 0x31B9EE5 ^ (*(v51 + 4 * v65) >> 2) & 0x34B055F2 ^ ((-((v74 >> 6) ^ (v74 >> 2)) ^ (v74 - ((v74 >> 6) ^ (v74 >> 2) ^ v74)) ^ 0x6BB0E11E ^ (((v74 >> 6) ^ (v74 >> 2)) - ((2 * ((v74 >> 6) ^ (v74 >> 2))) & 0x5761C23C) + 1806754078)) + v74);
  v79 = (v18 >> 6) ^ (v18 >> 2);
  v80 = *(v47 + 4 * BYTE2(v64));
  v81 = v18 & 0xFFFFFFFE;
  if ((v79 & v77) != 0)
  {
    v82 = -v77;
  }

  else
  {
    v82 = v77;
  }

  v83 = v82 + v79;
  HIDWORD(v84) = *(v49 + 4 * BYTE1(v63));
  LODWORD(v84) = HIDWORD(v84);
  v85 = v72 ^ 0xBF7;
  v86 = (1129036427 * v80 + 1315697179) ^ v81 ^ (v84 >> 10) ^ *(v51 + 4 * v62) ^ ((v84 >> 10) >> 3) & 0x31B9EE5 ^ ((1129036427 * v80 + 1315697179) >> 4) & 0x5026C64 ^ (*(v51 + 4 * v62) >> 2) & 0x34B055F2 ^ v83;
  v87 = v75 ^ 0xEBB0C742;
  v88 = *(v46 + 4 * ((v72 ^ 0xAB000BF7) >> 24));
  v89 = 1129036427 * *(v47 + 4 * ((v86 ^ 0x5852F5D0) >> 16)) + 1315697179;
  HIDWORD(v84) = *(v49 + 4 * (BYTE1(v78) ^ 0x52u));
  LODWORD(v84) = HIDWORD(v84);
  v90 = v84 >> 10;
  LODWORD(STACK[0xE80]) = (v90 >> 3) & 0x31B9EE5;
  v91 = *(v51 + 4 * (v75 ^ 0x42u));
  v92 = *(v46 + 4 * (HIBYTE(v75) ^ 0x5F));
  v93 = 1129036427 * *(v47 + 4 * BYTE2(v72)) + 1315697179;
  v94 = *(v49 + 4 * ((v86 ^ 0xF5D0) >> 8));
  LODWORD(STACK[0xE40]) = (v93 >> 4) & 0x5026C64;
  HIDWORD(v84) = v94;
  LODWORD(v84) = v94;
  v95 = v84 >> 10;
  LODWORD(STACK[0xE30]) = (v95 >> 3) & 0x31B9EE5;
  v96 = *(v46 + 4 * (HIBYTE(v78) ^ 0x21));
  v97 = BYTE2(v78) ^ 2;
  v98 = *(v51 + 4 * (v78 ^ 0xB2u));
  v99 = ((((v96 ^ 0x517B45C8 ^ (v96 >> 4)) >> 2 << 10) ^ 0x49E4A9D3) & (((v96 ^ 0x517B45C8 ^ (v96 >> 4)) >> 24) ^ 0xFFFFFD36) | ((v96 ^ 0x517B45C8 ^ (v96 >> 4)) >> 24) & 0x2C) ^ __ROR4__(v96 ^ 0x517B45C8, 22);
  HIDWORD(v84) = *(v49 + 4 * HIBYTE(v85));
  LODWORD(v84) = HIDWORD(v84);
  v100 = *(v46 + 4 * (HIBYTE(v86) ^ 0xEC));
  v101 = 1129036427 * *(v47 + 4 * v97) + 1315697179;
  v102 = v100 ^ (v100 >> 6) ^ (v100 >> 2) ^ v101 ^ 0x10BC345C ^ (v101 >> 4) & 0x5026C64;
  v103 = 1129036427 * *(v47 + 4 * BYTE2(v87)) + 1315697179;
  v104 = *(v51 + 4 * (v86 ^ 0xD0u));
  v105 = (v84 >> 10) ^ v104 ^ ((v84 >> 10) >> 3) & 0x31B9EE5;
  HIDWORD(v84) = *(v49 + 4 * BYTE1(v87));
  LODWORD(v84) = HIDWORD(v84);
  v106 = v88 ^ (v88 >> 6) ^ (v88 >> 2) ^ v91 ^ v90 ^ v89 ^ (v91 >> 2) & 0x34B055F2 ^ (v89 >> 4) & 0x5026C64 ^ LODWORD(STACK[0xE80]);
  v107 = *(v46 + 4 * (HIBYTE(v106) ^ 0xF5));
  v108 = *(v51 + 4 * v85) ^ (*(v51 + 4 * v85) >> 2) & 0x34B055F2 ^ (v84 >> 10) ^ ((v84 >> 10) >> 3) & 0x31B9EE5 ^ __ROR4__(__ROR4__(v102, 14) ^ 0xB04EA44F, 18) ^ 0xD4D0CA3F;
  v109 = 1129036427 * *(v47 + 4 * BYTE2(v108)) + 1315697179;
  LODWORD(STACK[0xE80]) = (v109 >> 4) & 0x5026C64;
  v110 = v105 ^ (v104 >> 2) & 0x34B055F2 ^ v103 ^ (v103 >> 4) & 0x5026C64 ^ __ROR4__(v99 ^ 0x2B63B3C3, 10) ^ 0x490AE65A;
  v111 = v107 ^ (v107 >> 6) ^ (v107 >> 2) ^ 0x9DE8732E;
  v112 = *(v49 + 4 * BYTE1(v110));
  LODWORD(STACK[0xE60]) = (2 * v111) & 0x86AD19FE;
  HIDWORD(v84) = v112;
  LODWORD(v84) = v112;
  v113 = v84 >> 10;
  LODWORD(STACK[0xE70]) = (v113 >> 3) & 0x31B9EE5;
  v114 = v92 ^ (v92 >> 6) ^ (v92 >> 2) ^ v93 ^ v95 ^ v98 ^ LODWORD(STACK[0xE40]) ^ LODWORD(STACK[0xE30]) ^ (v98 >> 2) & 0x34B055F2;
  v115 = *(v51 + 4 * ((v92 ^ (v92 >> 6) ^ (v92 >> 2) ^ v93 ^ v95 ^ v98 ^ LOBYTE(STACK[0xE40]) ^ LOBYTE(STACK[0xE30]) ^ (v98 >> 2) & 0xF2) ^ 0xC9u));
  v116 = *(v47 + 4 * (BYTE2(v106) ^ 0x9Au));
  LODWORD(STACK[0xE40]) = (v115 >> 2) & 0x34B055F2;
  v117 = 1129036427 * v116 + 1315697179;
  LODWORD(STACK[0xE30]) = (v117 >> 4) & 0x5026C64;
  HIDWORD(v84) = *(v49 + 4 * BYTE1(v108));
  LODWORD(v84) = HIDWORD(v84);
  v118 = v84 >> 10;
  v119 = *(v46 + 4 * ((v114 ^ 0xCE3ACFC9) >> 24));
  v120 = v119 ^ (v119 >> 6) ^ (v119 >> 2);
  v121 = *(v46 + 4 * HIBYTE(v110));
  v122 = v121 ^ (v121 >> 6) ^ (v121 >> 2);
  v123 = *(v46 + 4 * HIBYTE(v108));
  v124 = v123 ^ (v123 >> 6) ^ (v123 >> 2);
  v125 = v106 ^ 0x4136C358;
  if ((v106 ^ 0x4136C358) >= 0xEE1EE821)
  {
    v126 = 33;
  }

  else
  {
    v126 = 0;
  }

  v127 = v125 + 299964383;
  if (v125 < 0xEE1EE821)
  {
    v127 = v106 ^ 0x4136C358;
  }

  v128 = v127 == 0;
  v129 = (v118 >> 3) & 0x31B9EE5;
  if (!v128)
  {
    v126 = v106 ^ 0x58;
  }

  v130 = 1129036427 * *(v47 + 4 * (BYTE2(v114) ^ 0x3Au)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v106) ^ 0x54u));
  LODWORD(v132) = HIDWORD(v132);
  v131 = v132 >> 10;
  v133 = 1129036427 * *(v47 + 4 * BYTE2(v110)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v114) ^ 0x58u));
  LODWORD(v132) = HIDWORD(v132);
  v134 = v132 >> 10;
  v135 = v122 ^ v130 ^ v131 ^ *(v51 + 4 * v108) ^ (v130 >> 4) & 0x5026C64 ^ (v131 >> 3) & 0x31B9EE5 ^ (*(v51 + 4 * v108) >> 2) & 0x34B055F2;
  v136 = *(v51 + 4 * (v126 ^ 0x7Bu));
  BYTE2(v131) = BYTE2(v135) ^ 0x3E;
  HIDWORD(v132) = *(v49 + 4 * ((v135 ^ 0x7BDA) >> 8));
  LODWORD(v132) = HIDWORD(v132);
  v137 = v124 ^ v136 ^ v134 ^ (v136 >> 2) & 0x34B055F2 ^ v133 ^ (v134 >> 3) & 0x31B9EE5 ^ (v133 >> 4) & 0x5026C64 ^ 0xE6B4A0EA;
  v138 = *(v51 + 4 * v110);
  v139 = 1129036427 * *(v47 + 4 * BYTE2(v137)) + 1315697179;
  v140 = v120 ^ v138 ^ v118 ^ v117 ^ (v138 >> 2) & 0x34B055F2 ^ v129 ^ LODWORD(STACK[0xE30]);
  v141 = *(v51 + 4 * ((v120 ^ v138 ^ v118 ^ v117 ^ (v138 >> 2) & 0xF2 ^ v129 ^ LOBYTE(STACK[0xE30])) ^ 0x35u));
  v142 = v115 ^ LODWORD(STACK[0xE40]) ^ v113 ^ LODWORD(STACK[0xE70]) ^ 0xC78ABBA5 ^ ((-v111 ^ (v111 - LODWORD(STACK[0xE60]) - 1017737985) ^ 0xC3568CFF ^ ((LODWORD(STACK[0xE80]) ^ v109) - (LODWORD(STACK[0xE80]) ^ v109 ^ v111))) + (LODWORD(STACK[0xE80]) ^ v109));
  v143 = *(v46 + 4 * HIBYTE(v142));
  v144 = v143 ^ (v143 >> 6) ^ (v143 >> 2) ^ v139 ^ v141 ^ (v139 >> 4) & 0x5026C64 ^ (v141 >> 2) & 0x34B055F2 ^ __ROR4__((((((v132 >> 10) ^ 0x39022C05) << 15) & 0x7B940000 ^ 0x3C558221) & (((v132 >> 10) >> 17) & 0xC6E ^ 0x7FDFC65D) | ((v132 >> 10) >> 17) & 0xC4E) ^ __ROR4__((v132 >> 10) ^ 0x39022C05, 14) ^ 0xCF305C9F, 18);
  v145 = *(v47 + 4 * BYTE2(v142));
  v146 = -330897231 * v145 + 1315697179;
  v147 = v146 + 1459933658 * v145;
  v148 = (v147 >> 4) & 0x5026C64;
  HIDWORD(v132) = *(v49 + 4 * BYTE1(v137));
  LODWORD(v132) = HIDWORD(v132);
  v149 = v132 >> 10;
  v150 = *(v51 + 4 * (v135 ^ 0xDAu));
  LODWORD(STACK[0xE80]) = v140 ^ 0xAE868B4E;
  v151 = *(v46 + 4 * ((v140 ^ 0xAE868B4E) >> 24));
  v152 = v147 - 2 * (v147 & 0x415CD25D ^ v146 & 1);
  v153 = v151 ^ (v151 >> 6) ^ (v151 >> 2);
  v154 = 1129036427 * *(v47 + 4 * ((v140 ^ 0xAE868B4E) >> 16)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v142) ^ 0x97u));
  LODWORD(v132) = HIDWORD(v132);
  v155 = v132 >> 10;
  v156 = *(v51 + 4 * v137);
  v157 = *(v46 + 4 * (HIBYTE(v135) ^ 0x3C));
  v158 = 1129036427 * *(v47 + 4 * BYTE2(v131)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v140) ^ 0x1Cu));
  LODWORD(v132) = HIDWORD(v132);
  v159 = v153 ^ v150 ^ v149 ^ (v150 >> 2) & 0x34B055F2 ^ (v149 >> 3) & 0x31B9EE5 ^ v148 ^ (v152 + 1096602204);
  v160 = *(v46 + 4 * HIBYTE(v137));
  v161 = v160 ^ (v160 >> 6) ^ (v160 >> 2) ^ *(v51 + 4 * v142) ^ v158 ^ (v132 >> 10) ^ (*(v51 + 4 * v142) >> 2) & 0x34B055F2 ^ (v158 >> 4) & 0x5026C64 ^ ((v132 >> 10) >> 3) & 0x31B9EE5 ^ 0xA6E99C5C;
  v162 = 1129036427 * *(v47 + 4 * BYTE2(v161)) + 1315697179;
  LODWORD(STACK[0xE40]) = (v162 >> 4) & 0x5026C64;
  v163 = v157 ^ (v157 >> 6) ^ (v157 >> 2) ^ v154 ^ v156 ^ (v154 >> 4) & 0x5026C64 ^ v155 ^ (v156 >> 2) & 0x34B055F2 ^ (v155 >> 3) & 0x31B9EE5;
  HIDWORD(v132) = *(v49 + 4 * ((v163 ^ 0x3836) >> 8));
  LODWORD(v132) = HIDWORD(v132);
  v164 = v132 >> 10;
  v165 = ((-(v159 ^ 0x85E58468) ^ (-383021652 - (v159 ^ 0x6CCE09C4)) ^ 0x98B85F7B ^ ((v159 ^ 0x85E58468) - ((2 * (v159 ^ 0x85E58468)) & 0x3170BEF6) - 1732747397)) - 383021652) ^ 0xB4AC977B;
  v166 = *(v46 + 4 * (HIBYTE(v144) ^ 0x48));
  v167 = *(v51 + 4 * (((-(v159 ^ 0x68) ^ (-84 - (v159 ^ 0xC4)) ^ 0x7B ^ ((v159 ^ 0x68) - ((2 * (v159 ^ 0x68)) & 0xF6) + 123)) - 84) ^ 0x7Bu));
  v168 = v166 ^ (v166 >> 6) ^ (v166 >> 2);
  v169 = *(v46 + 4 * HIBYTE(v165)) ^ 0xB3D3CFEB;
  v170 = 1129036427 * *(v47 + 4 * (BYTE2(v144) ^ 0xDDu)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * BYTE1(v161));
  LODWORD(v132) = HIDWORD(v132);
  v171 = *(v51 + 4 * (v163 ^ 0x36u));
  v172 = v170 ^ (v132 >> 10) ^ v171 ^ ((v132 >> 10) >> 3) & 0x31B9EE5 ^ (v170 >> 4) & 0x5026C64 ^ (v171 >> 2) & 0x34B055F2 ^ v169 ^ (((v169 >> 4) + v169 - 2 * ((v169 >> 4) & v169)) >> 2);
  v173 = 1129036427 * *(v47 + 4 * BYTE2(v165)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v144) ^ 0xA9u));
  LODWORD(v132) = HIDWORD(v132);
  v174 = v132 >> 10;
  v175 = *(v51 + 4 * v161);
  v176 = *(v46 + 4 * (HIBYTE(v163) ^ 0xAB)) ^ (*(v46 + 4 * (HIBYTE(v163) ^ 0xAB)) >> 6) ^ (*(v46 + 4 * (HIBYTE(v163) ^ 0xAB)) >> 2);
  v177 = 1129036427 * *(v47 + 4 * (BYTE2(v163) ^ 0x29u)) + 1315697179;
  v178 = (v177 >> 4) & 0x5026C64;
  HIDWORD(v132) = *(v49 + 4 * BYTE1(v165));
  LODWORD(v132) = HIDWORD(v132);
  v179 = *(v46 + 4 * HIBYTE(v161));
  v180 = v179 ^ (v179 >> 6) ^ (v179 >> 2) ^ v177;
  v181 = *(v51 + 4 * (v144 ^ 0xE8u));
  v182 = v180 ^ v181 ^ (v132 >> 10) ^ v178 ^ ((v132 >> 10) >> 3) & 0x31B9EE5 ^ (v181 >> 2) & 0x34B055F2 ^ 0x8A1D4411;
  v183 = 1129036427 * *(v47 + 4 * BYTE2(v182)) + 1315697179;
  LODWORD(STACK[0xE70]) = (v183 >> 4) & 0x5026C64;
  v184 = v176 ^ v174 ^ v175 ^ v173 ^ (v174 >> 3) & 0x31B9EE5 ^ (v173 >> 4) & 0x5026C64 ^ (v175 >> 2) & 0x34B055F2;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v184) ^ 0x99u));
  LODWORD(v132) = HIDWORD(v132);
  v185 = v132 >> 10;
  LODWORD(STACK[0xE60]) = (v185 >> 3) & 0x31B9EE5;
  v186 = *(v51 + 4 * (v172 ^ 0x8Au));
  LODWORD(STACK[0xE30]) = (v186 >> 2) & 0x34B055F2;
  v187 = v168 ^ v164 ^ v162 ^ LODWORD(STACK[0xE40]) ^ (v164 >> 3) & 0x31B9EE5 ^ v167 ^ (v167 >> 2) & 0x34B055F2;
  v188 = v187 ^ 0xD27A5845;
  v189 = 1129036427 * *(v47 + 4 * ((v187 ^ 0xD27A5845) >> 16)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * BYTE1(v182));
  LODWORD(v132) = HIDWORD(v132);
  v190 = v132 >> 10;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v187) ^ 0xCFu));
  LODWORD(v132) = HIDWORD(v132);
  v191 = v132 >> 10;
  v192 = *(v46 + 4 * (HIBYTE(v184) ^ 0xAA));
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v172) ^ 0x8Cu));
  LODWORD(v132) = HIDWORD(v132);
  v193 = v132 >> 10;
  v194 = *(v46 + 4 * HIBYTE(v188));
  v195 = v192 ^ (v192 >> 6) ^ (v192 >> 2);
  v196 = v194 ^ (v194 >> 6) ^ (v194 >> 2);
  v197 = *(v46 + 4 * (HIBYTE(v172) ^ 0x9A));
  v198 = *(v46 + 4 * HIBYTE(v182));
  v199 = 1129036427 * *(v47 + 4 * (BYTE2(v172) ^ 0x4Fu)) + 1315697179;
  v200 = v195 ^ v191 ^ v199;
  v201 = (v193 >> 3) & 0x31B9EE5;
  v202 = v198 ^ (v198 >> 6) ^ (v198 >> 2) ^ v193;
  v203 = v184;
  v204 = 1129036427 * *(v47 + 4 * (BYTE2(v184) ^ 0xF0u)) + 1315697179;
  v205 = (v199 >> 4) & 0x5026C64;
  v206 = *(v51 + 4 * v182);
  v207 = v206 ^ (v191 >> 3) & 0x31B9EE5;
  v208 = (v206 >> 2) & 0x34B055F2;
  v209 = v202 ^ *(v51 + 4 * v188) ^ v204 ^ v201 ^ (v204 >> 4) & 0x5026C64 ^ (*(v51 + 4 * v188) >> 2) & 0x34B055F2;
  v210 = 1129036427 * *(v47 + 4 * (BYTE2(v209) ^ 0xCBu)) + 1315697179;
  v211 = v200 ^ v207 ^ v205 ^ v208;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v211) ^ 0x60u));
  LODWORD(v132) = HIDWORD(v132);
  v212 = v132 >> 10;
  v213 = v197 ^ (v197 >> 6) ^ (v197 >> 2) ^ v189 ^ v190 ^ *(v51 + 4 * v203) ^ (v189 >> 4) & 0x5026C64 ^ (v190 >> 3) & 0x31B9EE5 ^ (*(v51 + 4 * v203) >> 2) & 0x34B055F2 ^ 0x5D2D17C8;
  v214 = *(v51 + 4 * (v197 ^ (v197 >> 6) ^ (v197 >> 2) ^ v189 ^ v190 ^ *(v51 + 4 * v203) ^ (v189 >> 4) & 0x64 ^ (v190 >> 3) & 0xE5 ^ (*(v51 + 4 * v203) >> 2) & 0xF2 ^ 0xC8));
  v215 = v196 ^ v186 ^ v183 ^ v185 ^ LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xE70]) ^ LODWORD(STACK[0xE60]) ^ 0x64130A1C;
  v216 = *(v46 + 4 * HIBYTE(v215));
  HIDWORD(v132) = *(v49 + 4 * BYTE1(v215));
  LODWORD(v132) = HIDWORD(v132);
  v217 = v132 >> 10;
  v218 = v216 ^ (v216 >> 6) ^ (v216 >> 2);
  v219 = *(v51 + 4 * (v209 ^ 0x23u));
  v220 = 1129036427 * *(v47 + 4 * BYTE2(v215)) + 1315697179;
  v221 = v218 ^ v212 ^ v214 ^ v210 ^ (v212 >> 3) & 0x31B9EE5 ^ (v210 >> 4) & 0x5026C64 ^ (v214 >> 2) & 0x34B055F2;
  v222 = BYTE1(v209) ^ 0xA;
  v223 = v211 ^ 0x40;
  v224 = 1129036427 * *(v47 + 4 * BYTE2(v213)) + 1315697179;
  v225 = ((v217 >> 3) & 0x3138404 ^ v217 & 0x8F77840C ^ 0x78887BF7) & (v217 & 0x70887BF3 ^ 0x4CE93E94 ^ (v217 >> 3) & 0x81AE1) | ((v217 >> 3) & 0x3138404 ^ v217 & 0x8F77840C) & 0x83168008;
  v226 = 1129036427 * *(v47 + 4 * ((v211 ^ 0x7E0CF740) >> 16)) + 1315697179;
  v227 = *(v46 + 4 * (HIBYTE(v211) ^ 0xCA));
  v228 = v227 ^ (v227 >> 6) ^ (v227 >> 2) ^ v219 ^ v224 ^ (v219 >> 2) & 0x34B055F2 ^ (v224 >> 4) & 0x5026C64 ^ v225;
  v229 = *(v46 + 4 * (HIBYTE(v209) ^ 0xF0));
  HIDWORD(v132) = *(v49 + 4 * BYTE1(v213));
  LODWORD(v132) = HIDWORD(v132);
  v230 = v229 ^ (v229 >> 6) ^ (v229 >> 2) ^ *(v51 + 4 * v215) ^ v226 ^ (v132 >> 10) ^ (*(v51 + 4 * v215) >> 2) & 0x34B055F2 ^ (v226 >> 4) & 0x5026C64 ^ ((v132 >> 10) >> 3) & 0x31B9EE5;
  v231 = *(v46 + 4 * HIBYTE(v213));
  HIDWORD(v132) = *(v49 + 4 * v222);
  LODWORD(v132) = HIDWORD(v132);
  v232 = v231 ^ (v231 >> 6) ^ (v231 >> 2) ^ *(v51 + 4 * v223) ^ v220 ^ (v132 >> 10) ^ (*(v51 + 4 * v223) >> 2) & 0x34B055F2 ^ (v220 >> 4) & 0x5026C64 ^ ((v132 >> 10) >> 3) & 0x31B9EE5 ^ 0x56F2024C;
  v233 = v228 ^ 0x237D5466;
  v234 = v230 ^ 0x726BC4CC;
  v235 = 1129036427 * *(v47 + 4 * ((v230 ^ 0x726BC4CCu) >> 16)) + 1315697179;
  HIDWORD(v132) = *(v49 + 4 * (BYTE1(v228) ^ 0xC3u));
  LODWORD(v132) = HIDWORD(v132);
  v236 = *(v46 + 4 * ((v221 ^ 0x3A85D055u) >> 24));
  v237 = v236 ^ (v236 >> 6) ^ (v236 >> 2) ^ (v132 >> 10) ^ v235 ^ *(v51 + 4 * v232) ^ (v235 >> 4) & 0x5026C64 ^ ((v132 >> 10) >> 3) & 0x31B9EE5 ^ (*(v51 + 4 * v232) >> 2) & 0x34B055F2;
  v238 = 1129036427 * *(v47 + 4 * ((v221 ^ 0x3A85D055u) >> 16)) + 1315697179;
  v239 = *(v46 + 4 * HIBYTE(v232));
  v240 = *(v51 + 4 * (v228 ^ 0x1Du));
  HIDWORD(v132) = *(v49 + 4 * ((v230 ^ 0xC4CC) >> 8));
  LODWORD(v132) = HIDWORD(v132);
  v241 = v239 ^ (v239 >> 6) ^ (v239 >> 2) ^ v240 ^ (v132 >> 10) ^ (v240 >> 2) & 0x34B055F2 ^ v238 ^ ((v132 >> 10) >> 3) & 0x31B9EE5 ^ (v238 >> 4) & 0x5026C64;
  v242 = 1129036427 * *(v47 + 4 * BYTE2(v232)) + 1315697179;
  v243 = (v242 >> 4) & 0x5026C64 ^ v242;
  v244 = v243 | 0x53715AC4;
  v245 = v243 & 0x53715AC4;
  if ((v242 & 0x10) != 0)
  {
    v246 = 15;
  }

  else
  {
    v246 = -17;
  }

  v247 = v246 - v244;
  v248 = *(v46 + 4 * HIBYTE(v233));
  HIDWORD(v249) = *(v49 + 4 * (BYTE1(v221) ^ 0xD0u));
  LODWORD(v249) = HIDWORD(v249);
  v250 = *(v51 + 4 * (v230 ^ 0xB7u));
  v251 = v248 ^ (v248 >> 6) ^ (v248 >> 2) ^ (v249 >> 10) ^ v250 ^ ((v249 >> 10) >> 3) & 0x31B9EE5 ^ (v250 >> 2) & 0x34B055F2 ^ v245 ^ v247;
  v252 = *(v51 + 4 * (v221 ^ 0x2Eu));
  v253 = 1129036427 * *(v47 + 4 * BYTE2(v233)) + 1315697179;
  v254 = v252 ^ 0xA70E86CE;
  if (!LODWORD(STACK[0xE80]))
  {
    v254 = -178031693;
  }

  v255 = *(v49 + 4 * BYTE1(v232));
  v256 = v241 ^ 0x6BADBDB9;
  HIDWORD(v257) = v255;
  LODWORD(v257) = v255;
  v258 = *(v46 + 4 * HIBYTE(v234));
  v259 = v258 ^ (v258 >> 6) ^ (v258 >> 2) ^ (v257 >> 10) ^ v252 ^ v253 ^ (v253 >> 4) & 0x5026C64 ^ ((v257 >> 10) >> 3) & 0x31B9EE5;
  v260 = ((v254 ^ 0x27A22478) & (v252 ^ 0xB29F3514) ^ v254 & 0x1F0D3F94) >> 2;
  v261 = v259 ^ v260;
  LOBYTE(v255) = v260 & 0x10;
  v262 = v260 & 0x10 ^ 0x10;
  v263 = *(&off_1010A0B50 + LODWORD(STACK[0xE90]) - 24349) - 935562131;
  v264 = *(&off_1010A0B50 + LODWORD(STACK[0xE90]) - 22243) - 714701195;
  v265 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x60E0)) - 889138222;
  v266 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x64A0)) - 1700922862;
  v267 = v266[v241 ^ 0x8BLL] ^ 0x77;
  v268 = ((v237 ^ 0x7904AE47) >> v255 >> v262);
  v269 = *&v265[4 * (BYTE1(v261) ^ 0xE4)] - 178184706;
  v270 = v266[v251 ^ 0x6ELL] ^ 0x3B;
  v271 = (8 * v270) & 0x70 ^ v270;
  v272 = BYTE2(v256);
  v273 = BYTE2(v256) ^ 0x5F;
  v274 = v266[v261 ^ 0xE4] ^ 0x44;
  LOBYTE(v266) = v266[v237 ^ 0xA5] ^ 0x93;
  v275 = *&v264[4 * (BYTE2(v261) ^ 0x1B)] ^ __ROR4__(*&v263[4 * (HIBYTE(v237) ^ 0xC1)], 18) ^ (*&v265[4 * (BYTE1(v251) ^ 0xD8)] - 178184706) ^ BYTE2(v261) ^ 0xF59B7F95 ^ (8 * v267) & 0x70 ^ v267;
  v276 = v275 ^ BYTE2(v251) ^ __ROR4__(*&v263[4 * (HIBYTE(v261) ^ 0x7D)], 18) ^ *&v264[4 * (BYTE2(v251) ^ 0x54)] ^ (*&v265[4 * BYTE1(v256)] - 178184706) ^ (8 * v266) & 0x70 ^ v266;
  v277 = *&v264[4 * (v268 ^ 0xF2)] ^ __ROR4__(*&v263[4 * HIBYTE(v256)], 18) ^ v268 ^ v269 ^ v271 ^ 0xE643797E ^ v276;
  LODWORD(v263) = v272 ^ __ROR4__(*&v263[4 * (HIBYTE(v251) ^ 0xEC)], 18) ^ *&v264[4 * v273] ^ (*&v265[4 * (BYTE1(v237) ^ 0x69)] - 178184706) ^ ((16 * ((v274 >> 1) & 7)) | 7) ^ v274 ^ v275 ^ 0x6A4422F5 ^ v277;
  v278 = v276 ^ 0xC4BEC060 ^ v263;
  v279 = v277 ^ LODWORD(STACK[0xEA0]);
  v280 = LODWORD(STACK[0xEB0]) ^ 0x4E0F208B;
  LODWORD(v264) = v278 ^ v280;
  v281 = v263 ^ v280;
  v282 = v263 ^ v280 ^ v275 ^ v278;
  v283 = STACK[0xE90];
  v284 = *(&off_1010A0B50 + LODWORD(STACK[0xE90]) - 22382) - 1009695342;
  v285 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x6E1C)) - 1451688370;
  LODWORD(v263) = *&v285[4 * (BYTE2(v279) ^ 0x11)] + 594070020;
  v286 = *(&off_1010A0B50 + LODWORD(STACK[0xE90]) - 20392) - 370687094;
  v287 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x637C)) - 965867474;
  LODWORD(v263) = v263 ^ (*&v284[4 * (HIBYTE(v279) ^ 0xA3)] + 719528360) ^ (*&v286[4 * (BYTE1(v279) ^ 0x12)] - 1603298883) ^ (v263 >> 2) & 0x187A5846;
  v288 = v263 ^ v287[v279 ^ 0xC5];
  v289 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x60AA)) - 1489117590;
  v290 = *&v285[4 * (BYTE2(v282) ^ 0x4F)] + 594070020;
  v291 = *&v289[4 * (BYTE2(v263) ^ 0xED)] + (BYTE2(v263) ^ 0xFFFFFF79) + (BYTE2(v263) ^ 0x49244304) - 1275208594;
  v292 = (*&v284[4 * (HIBYTE(v282) ^ 0xA8)] + 719528360) ^ v290 ^ (*&v286[4 * (BYTE1(v282) ^ 0x49)] - 1603298883) ^ (v290 >> 2) & 0x187A5846 ^ v287[v282 ^ 0xE1] ^ 0xAB7A7852;
  v293 = BYTE1(v263) ^ 0x42;
  v294 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x6873)) - 302681379;
  v295 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x6894)) - 1753142138;
  v296 = *(&off_1010A0B50 + LODWORD(STACK[0xE90]) - 23943) - 1325335887;
  LODWORD(v263) = (v296[(v263 >> 24) ^ 0x67] ^ BYTE3(v263));
  v297 = v291 ^ *&v294[4 * v293] ^ (*&v295[4 * (v288 ^ 0x9A)] + 1752637417);
  LODWORD(STACK[0xCF0]) = v292;
  v298 = v297 ^ v292 ^ v263;
  v299 = *&v285[4 * (BYTE2(v264) ^ 0x24)] + 594070020;
  v300 = (*&v284[4 * ((v264 >> 24) ^ 0xD5)] + 719528360) ^ v299 ^ (*&v286[4 * (BYTE1(v264) ^ 0x83)] - 1603298883) ^ (v299 >> 2) & 0x187A5846 ^ v287[v264 ^ 0x83] ^ 0xBA866615;
  LODWORD(STACK[0xCE0]) = v300;
  LODWORD(v264) = v300 ^ v298;
  LODWORD(STACK[0xE80]) = v298;
  LODWORD(STACK[0xEB0]) = v300 ^ v298;
  v301 = *&v285[4 * (BYTE2(v281) ^ 0x74)] + 594070020;
  LODWORD(v263) = (*&v284[4 * (HIBYTE(v281) ^ 0x86)] + 719528360) ^ v301 ^ (v301 >> 2) & 0x187A5846 ^ v287[v281 ^ 0xD7] ^ 0x21990DF0 ^ (*&v286[4 * (-(BYTE1(v281) ^ 0x85) ^ (76 - (BYTE1(v281) ^ 0xC9)) ^ 0x3549DE61 ^ ((BYTE1(v281) ^ 0x85) - 2 * ((BYTE1(v281) ^ 0x85) & 0x6B ^ (v281 >> 8) & 0xA) + 894033505)) + 304] - 1603298883);
  LODWORD(STACK[0xCD0]) = v263;
  v302 = v263 ^ v264 ^ 0x942147B3;
  v303 = v302 ^ 0x1B303270 ^ v288;
  v304 = v298 ^ *&v294[4 * (BYTE1(v303) ^ 0xEF)] ^ (*&v295[4 * (v302 ^ 0x70 ^ v288 ^ 0x48)] + 1752637417) ^ (*&v289[4 * (BYTE2(v303) ^ 0x1A)] + ((2 * ((BYTE2(v303) ^ 0x651B4F7) & (BYTE2(v303) ^ 0x565BBC0C) ^ HIWORD(v303) & 0x86)) ^ 0xF35C97F7) - 48095248) ^ 0x5A475285 ^ (HIBYTE(v303) ^ v296[HIBYTE(v303) ^ 0xB6]);
  v305 = v304 ^ v264 ^ 0x942147B3;
  v306 = v305 ^ 0xF4696988 ^ v302 ^ 0x1B303270;
  LODWORD(STACK[0xD00]) = v288;
  LODWORD(STACK[0xCA0]) = v305 ^ 0xF4696988;
  LODWORD(v263) = v305 ^ 0xF4696988 ^ v288;
  v307 = v263 ^ 0x448A4C9E;
  LODWORD(v286) = *&v289[4 * (BYTE2(v263) ^ 0x13)] + (BYTE2(v263) ^ 0xFFFFFF87) + (BYTE2(v263) ^ 0x492443FA) - 1275208594;
  LODWORD(v287) = BYTE1(v263) ^ 0x6E;
  v308 = *&v295[4 * (v305 ^ 0x88 ^ v288 ^ 0xCA)] + 1752637417;
  LODWORD(v263) = (BYTE3(v263) ^ v296[(v263 >> 24) ^ 0xD5]);
  LODWORD(v287) = *&v294[4 * v287];
  LODWORD(STACK[0xCB0]) = v304;
  v309 = v287 ^ v304 ^ v308 ^ v286 ^ 0x851C9637 ^ v263;
  v310 = v309 ^ v305;
  LODWORD(STACK[0xC90]) = v306;
  v311 = v310 ^ v306;
  LODWORD(v264) = v310;
  LODWORD(STACK[0xEA0]) = v310;
  LODWORD(STACK[0xC80]) = v307;
  v312 = v311 ^ v307;
  v313 = ((v311 ^ v307) >> 16);
  v314 = *&v289[4 * (v313 ^ 0xAD)] - (v313 ^ 0xC6) + (-(v313 ^ 0xC6) ^ (-1227113347 - (v313 ^ 0xB6DBBCBB)) ^ 0x5956F8B6 ^ ((v313 ^ 0xC6) - ((2 * (v313 ^ 0xC6)) & 0x92) - 1498871991)) - 48095248;
  LODWORD(v286) = *&v295[4 * ((v311 ^ v307) ^ 0x56)] + 1752637417;
  LODWORD(v287) = (HIBYTE(v312) ^ v296[HIBYTE(v312) ^ 0x65]);
  LODWORD(v263) = *&v294[4 * (((v311 ^ v307) >> 8) ^ 0x88)];
  LODWORD(STACK[0xC70]) = v309;
  v315 = v286 ^ v263 ^ v309 ^ v314 ^ v287;
  LODWORD(STACK[0xC40]) = v315 ^ 0x192D622B;
  v316 = v264 ^ 0xB47ECC0C ^ v315 ^ 0x192D622B;
  LODWORD(STACK[0xC60]) = v311;
  v317 = v311 ^ 0x1F973E51 ^ v316;
  LODWORD(v263) = *&v289[4 * (((v317 ^ v312) >> 16) ^ 0x42)] + (((v317 ^ v312) >> 16) ^ 0x492443AB) + (((v317 ^ v312) >> 16) ^ 0xFFFFFFD6) - 1275208594;
  LOBYTE(v286) = ((v317 ^ v312) >> 24) ^ v296[((v317 ^ v312) >> 24) ^ 0xCBLL];
  v318 = *&v294[4 * (((v317 ^ v312) >> 8) ^ 0x8A)] ^ v315;
  LODWORD(STACK[0xBE0]) = v317 ^ v312;
  LODWORD(v285) = v318 ^ (*&v295[4 * ((v317 ^ v312) ^ 0xCB)] + 1752637417) ^ v263 ^ 0x52689DEE ^ v286;
  LODWORD(STACK[0xC30]) = v316;
  v319 = v285 ^ v316;
  LODWORD(STACK[0xC50]) = v312;
  v320 = v285 ^ v316 ^ 0xE79396DA ^ v312;
  LODWORD(v263) = *&v289[4 * (BYTE2(v320) ^ 0xB0)] + (BYTE2(v320) ^ 0x49244359) + (BYTE2(v320) ^ 0xFFFFFF24) - 1275208594;
  LOBYTE(v286) = HIBYTE(v320) ^ v296[HIBYTE(v320) ^ 0x67];
  v321 = *&v295[4 * (v320 ^ 0x5A)] + 1752637417;
  LODWORD(v287) = *&v294[4 * (BYTE1(v320) ^ 0x7B)];
  LODWORD(STACK[0xBD0]) = v285;
  v322 = v321 ^ v287 ^ v285 ^ v263 ^ v286;
  LODWORD(STACK[0xC20]) = v317;
  v323 = v319 ^ 0xE79396DA ^ v317;
  LODWORD(v286) = v322 ^ 0xC0D8D68F ^ v319 ^ 0xE79396DA;
  LODWORD(STACK[0xE60]) = v286;
  v324 = v286 ^ 0x92551D93;
  v325 = v286 ^ 0x92551D93 ^ v323;
  LODWORD(STACK[0xBC0]) = v320;
  LODWORD(v286) = v325 ^ 0x94A39AEC ^ v320;
  v326 = *&v294[4 * (BYTE1(v286) ^ 0xA6)] ^ v322 ^ 0xC0D8D68F ^ (*&v295[4 * (v325 ^ 0xEC ^ v320 ^ 0x1C)] + 1752637417) ^ (*&v289[4 * (BYTE2(v286) ^ 0x3B)] + (BYTE2(v286) ^ 0x492443D2) + (BYTE2(v286) ^ 0xFFFFFFAF) - 1275208594) ^ 0x3E7B7D95 ^ (BYTE3(v286) ^ v296[(v286 >> 24) ^ 0xE1]);
  LODWORD(v263) = v286 ^ 0x2DCA9E8C;
  v327 = v326 ^ v324;
  v328 = v326 ^ v324 ^ 0x8658360 ^ v325 ^ 0x94A39AEC;
  LODWORD(STACK[0xB80]) = v263;
  LODWORD(v263) = v328 ^ v263;
  LODWORD(v287) = *&v289[4 * (BYTE2(v263) ^ 0xA4)] + (BYTE2(v263) ^ 0x4924434D) + (BYTE2(v263) ^ 0xFFFFFF30) - 1275208594;
  LOBYTE(v321) = BYTE3(v263) ^ v296[(v263 >> 24) ^ 0xB3];
  LODWORD(v285) = *&v295[4 * (v263 ^ 9)] + 1752637417;
  v329 = *&v294[4 * (BYTE1(v263) ^ 0x88)];
  LODWORD(STACK[0xB90]) = v326;
  v330 = v285 ^ v329 ^ v326 ^ v287 ^ v321;
  v331 = v263 ^ 0x75AEF9B6;
  LODWORD(STACK[0xB60]) = v330;
  LODWORD(v263) = v330 ^ 0xC04AE49E;
  v332 = v330 ^ 0xC04AE49E ^ v327 ^ 0x8658360;
  LODWORD(STACK[0xB70]) = v328;
  v333 = v332 ^ v328 ^ 0x6D0359C7;
  LODWORD(STACK[0xE70]) = v333;
  LODWORD(STACK[0xB50]) = v331;
  LOWORD(v321) = v333 ^ v331;
  v334 = v333 ^ v331 ^ 0xDDD59E2D;
  v335 = *&v294[4 * (BYTE1(v321) ^ 0x34)] ^ v263 ^ (*&v295[4 * (v321 ^ 0xC3)] + 1752637417) ^ (*&v289[4 * (BYTE2(v334) ^ 0xF4)] + (BYTE2(v334) ^ 0xFFFFFF60) + (BYTE2(v334) ^ 0x4924431D) - 1275208594) ^ 0xF8827300 ^ (HIBYTE(v334) ^ v296[HIBYTE(v334) ^ 0x5CLL]);
  v336 = v335 ^ v328 ^ 0x6D0359C7;
  v337 = v336 ^ v334 ^ 0x4EFF26AB;
  if (((v336 ^ v334) & 4) != 0)
  {
    v338 = -4;
  }

  else
  {
    v338 = 4;
  }

  v339 = *&v294[4 * (((v336 ^ v334) >> 8) ^ 0x8C)] ^ (*&v295[4 * ((v338 + v337) ^ 0xEA)] + 1752637417) ^ (HIBYTE(v337) ^ v296[HIBYTE(v337) ^ 0x5CLL]) ^ (*&v289[4 * (BYTE2(v337) ^ 0xF4)] + (BYTE2(v337) ^ 0xFFFFFF60) + (BYTE2(v337) ^ 0x4924431D) - 1275208594) ^ 0x2745918F;
  if ((v319 & 0x40000) != 0)
  {
    v340 = -262144;
  }

  else
  {
    v340 = 0x40000;
  }

  LODWORD(STACK[0xB00]) = v340 + (v319 ^ 0x28C156A2);
  LODWORD(STACK[0xCC0]) = v302;
  LODWORD(STACK[0xBA0]) = v323;
  LODWORD(STACK[0xBB0]) = v322;
  v341 = v327 ^ 0x77FFA825;
  LODWORD(STACK[0xAF0]) = v341;
  v342 = v339 ^ v335;
  v343 = (v302 ^ 0x1985241D) + (v323 ^ 0xB1B43E47) + (v322 ^ 0x93B3322F) + v341 + (v339 ^ v335 ^ 0xCCB6A9EA);
  LODWORD(STACK[0xB40]) = v332;
  v344 = v339 ^ v332 ^ 0x3CEC1537;
  LODWORD(STACK[0xAE8]) = v344 ^ 0x6D243A64;
  v345 = v343 + (v344 ^ 0x6D243A64) + 1854941077;
  v346 = STACK[0xEC0];
  v347 = *(&off_1010A0B50 + (v283 ^ 0x61BA)) - 212429606;
  v348 = v347[*(STACK[0xEC0] + 15) ^ 0x81];
  v349 = v348 ^ (72 * (v348 ^ 5));
  v350 = v347[*(STACK[0xEC0] + 7) ^ 0x6CLL];
  v351 = v350 ^ (72 * (v350 ^ 5));
  v352 = *(STACK[0xEC0] + 11) ^ 0x90;
  STACK[0xAD8] = v347;
  v353 = v347[v352] ^ (72 * (v347[v352] ^ 5));
  LODWORD(STACK[0xB20]) = v336;
  LODWORD(v352) = v344 ^ v336;
  v354 = LODWORD(STACK[0xE80]) ^ 0x4A9BF5F;
  LODWORD(v347) = LODWORD(STACK[0xE60]) ^ 0x56F4CF47;
  v355 = v334 - ((2 * v334) & 0xB0B83DFA) + 1482432253;
  LODWORD(STACK[0xAD0]) = v354;
  LODWORD(STACK[0xAB0]) = v303 ^ 0x9549F55A;
  LODWORD(STACK[0xAC8]) = v347;
  LODWORD(STACK[0xAB8]) = v325 ^ 0x8979A61B;
  LODWORD(STACK[0xAC0]) = v355;
  v356 = v354 - (v303 ^ 0x9549F55A) + v347 + (v325 ^ 0x8979A61B) + v355 + 1502444546 + v345;
  LODWORD(STACK[0xAA8]) = v352 ^ 0xCE1B8ACF;
  v357 = (v352 ^ 0xCE1B8ACF) + v356;
  v358 = *(&off_1010A0B50 + v283 - 24339) - 2119402299;
  v359 = *(&off_1010A0B50 + v283 - 21629) - 817540083;
  v360 = *(&off_1010A0B50 + v283 - 20248) - 667613030;
  LODWORD(STACK[0xD90]) = v349 ^ (*&v358[4 * (v346[14] ^ 0xC3)] + 21966403) ^ *&v359[4 * (v346[12] ^ 0x44)] ^ (*&v359[4 * (v346[12] ^ 0x44)] >> 1) & 0x468DA01 ^ (-639081915 * *&v360[4 * (v346[13] ^ 0xEALL)] - 2121513765) ^ 0xA116438B;
  v361 = *&v359[4 * (v346[8] ^ 0x6ALL)];
  LODWORD(STACK[0xDD0]) = (-639081915 * *&v360[4 * (v346[9] ^ 0x3BLL)] - 2121513765) ^ (*&v358[4 * (v346[10] ^ 0x98)] + 21966403) ^ v361 ^ v353 ^ (v361 >> 1) & 0x468DA01 ^ 0x7B1E41A4;
  v362 = v346[6] ^ 0x70;
  STACK[0xAA0] = v358;
  LODWORD(v362) = *&v358[4 * v362] + 21966403;
  v363 = v346[5] ^ 0xC4;
  STACK[0xA80] = v360;
  LODWORD(v362) = v362 ^ (-639081915 * *&v360[4 * v363] - 2121513765);
  v364 = v346[4] ^ 0xD6;
  STACK[0xA98] = v359;
  LODWORD(STACK[0xE30]) = v362 ^ *&v359[4 * v364] ^ v351 ^ (*&v359[4 * v364] >> 1) & 0x468DA01 ^ 0xA848CC57;
  LODWORD(STACK[0xA70]) = ((LODWORD(STACK[0xEA0]) ^ 0x8933DEFA) & 0xD4CDE64C ^ 0xE52C63CC) & ((LODWORD(STACK[0xEA0]) ^ 0x8933DEFA) & 0x2B3219B3 ^ 0xFFCDE65E) | (LODWORD(STACK[0xEA0]) ^ 0x8933DEFA) & 0xA121833;
  LODWORD(v362) = ((LODWORD(STACK[0x9CC]) ^ 0xB43C0A64) + 1469755084) ^ ((LODWORD(STACK[0x9CC]) ^ 0x9822C60F) + 2072273569) ^ ((LODWORD(STACK[0x9CC]) ^ 0x35785DB4) - 690030308);
  LODWORD(STACK[0xA60]) = (v357 + 2022354817) ^ LODWORD(STACK[0xE70]) ^ (((-2022354817 - v357) ^ (1252888781 - ((v357 + 2022354817) ^ 0x4AAD90CD)) ^ 0x90144891 ^ (v357 - ((2 * (v357 + 2022354817)) & 0x20289122) + 144635922)) + 1252888781);
  v365 = LODWORD(STACK[0xEB0]) ^ 0x64416F73;
  LODWORD(STACK[0xA50]) = v365;
  LODWORD(v363) = (v356 ^ v365) & 0x10;
  LODWORD(STACK[0xEC0]) = v362 - 658477920;
  v366 = *(STACK[0xF18] + 8 * v283);
  LODWORD(STACK[0xB30]) = v335;
  LODWORD(STACK[0xA30]) = v335 ^ v332 ^ 0x3CEC1537;
  LODWORD(STACK[0xAE0]) = v345;
  LODWORD(STACK[0xA20]) = v342 ^ v345;
  LODWORD(STACK[0xB10]) = v337;
  LODWORD(STACK[0xA10]) = v352 ^ v337;
  STACK[0xA00] = STACK[0xA2A8];
  LODWORD(STACK[0xA40]) = v363;
  LODWORD(STACK[0x9F0]) = v363 ^ 0x10;
  STACK[0x9E8] = STACK[0xA2B0];
  return v366();
}

uint64_t sub_1004FFF50@<X0>(uint64_t a1@<X8>)
{
  v6 = &STACK[0xC4D0] + a1;
  STACK[0x7178] = v6;
  STACK[0x5BA0] = (v6 + 80);
  STACK[0x5578] = (v6 + 160);
  STACK[0x75E0] = (v6 + 215);
  STACK[0x13F8] = (v6 + 405);
  STACK[0x4AF0] = (v6 + 421);
  STACK[0x7690] = v2 + 496;
  LODWORD(STACK[0x7058]) = 16;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && v1 == ((327 * (v3 ^ 0x474F)) ^ 0xE9D54C3E);
  return (*(STACK[0xF18] + 8 * ((15521 * v9) ^ v3)))();
}

uint64_t sub_1004FFFEC()
{
  v1 = STACK[0x648] + 49 * ((30 * (v0 ^ 0x2D8B) + 26916) ^ LOWORD(STACK[0x584E]));
  v2 = STACK[0x8F18];
  v3 = STACK[0x3760] + 20;
  LODWORD(STACK[0xED0]) = 107;
  LOBYTE(STACK[0x1AF3]) = 107;
  STACK[0x6920] = v1;
  LODWORD(STACK[0x7850]) = -371865824;
  STACK[0x3930] = v2;
  STACK[0x2A60] = v3;
  STACK[0x85E8] = v3;
  LODWORD(STACK[0x4874]) = -371865823;
  LODWORD(STACK[0x726C]) = -187458879;
  return (*(STACK[0xF18] + 8 * v0))(v3, v3);
}

uint64_t sub_1005000A0()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 2644)))(v1 ^ 0x38A42D21u);
  *(v0 + 704) = v4;
  v5 = STACK[0xA908];
  if (!v4)
  {
    v5 = 371891397;
  }

  LODWORD(STACK[0xA90C]) = v5;
  return (*(v3 + 8 * (((v5 != -371865839) * ((v2 ^ 0x4B7F) - 35595)) ^ v2)))();
}

uint64_t sub_100500118()
{
  v1 = STACK[0x2300];
  v2 = STACK[0x8728];
  *(v2 + 68) ^= *STACK[0x2300];
  *(v2 + 69) ^= v1[1];
  *(v2 + 70) ^= v1[2];
  *(v2 + 71) ^= v1[3];
  *(v2 + 72) ^= v1[4];
  *(v2 + 73) ^= v1[5];
  *(v2 + 74) ^= v1[6];
  *(v2 + 75) ^= v1[7];
  *(v2 + 76) ^= v1[8];
  *(v2 + 77) ^= v1[9];
  *(v2 + 78) ^= v1[10];
  *(v2 + 79) ^= v1[11];
  *(v2 + 80) ^= v1[12];
  *(v2 + 81) ^= v1[13];
  *(v2 + 82) ^= v1[14];
  *(v2 + 83) ^= v1[15];
  v3 = *(v2 + 160);
  if (STACK[0x7640])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((((v0 - 98) ^ v5) & 1 | (2 * (((v0 - 98) ^ v5) & 1))) ^ v0)))();
}

uint64_t sub_100500268()
{
  v1 = STACK[0x3598];
  v2 = STACK[0x4840];
  v3 = STACK[0x8F48];
  v4 = (((LODWORD(STACK[0x3584]) ^ 0xE6453D81) + 431669887) ^ ((LODWORD(STACK[0x3584]) ^ 0x55E2FBF8) - 1440939000) ^ ((LODWORD(STACK[0x3584]) ^ 0x5A720168) - 1517420904)) + 595895573;
  v5 = 139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x5CABA88) - (&STACK[0x10000] + 3800) - 97172108) ^ 0xF618A431);
  STACK[0x10F08] = &STACK[0xFD4];
  STACK[0x10EF8] = v2;
  STACK[0x10EE0] = v3;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EF0]) = ((v0 - 2004833256) ^ 0xF8A53AE2) + v5 + (((v1 ^ 0xFB8040B0) + 75480912) ^ ((v1 ^ 0x2CEA8063) - 753565795) ^ ((v1 ^ 0x3EBF07C2) - 1052706754));
  LODWORD(STACK[0x10EEC]) = v4 ^ v5;
  LODWORD(STACK[0x10F00]) = v5 + 169715253;
  LODWORD(STACK[0x10EF4]) = (v0 - 2004829411) ^ v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x777F17AB)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x2958]) = STACK[0x10EE8];
  v8 = STACK[0xFD4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v8;
  LODWORD(STACK[0x35EC]) = 1693393298;
  return (*(v6 + 8 * ((10830 * (v0 == 1513549338)) ^ (v0 - 2004861553))))(v7);
}

uint64_t sub_100500458()
{
  v2 = ((v1 ^ 0xF9F056A7) + 101689689) ^ ((v1 ^ 0x2E25956F) - 774215023) ^ ((v1 ^ 0x3E0004D9) - 1040192594 + v0 - 45486);
  v3 = LODWORD(STACK[0x3908]) - 1237291424;
  v4 = v2 + ((17 * (v0 ^ 0xCB06)) ^ 0xA016995C);
  v5 = (v3 < 0xB6406E5C) ^ (v4 < 0xB6406E5C);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0xB6406E5C;
  }

  return (*(STACK[0xF18] + 8 * ((13 * v6) ^ v0)))();
}

uint64_t sub_100500590()
{
  *(v4 + 2200) = v3 + 4;
  v5 = (((v2 ^ 0xE726A6DA) + 416897318) ^ ((v2 ^ 0x1522480F) - 354568207) ^ (((((v0 + 2240) | 0x9687) + 466643741) ^ v2) + ((11 * (v0 ^ 0x1FD3)) ^ 0xE42ED18D))) - 1155602567;
  v6 = (v3 + 4) > 0x2EB6DF97;
  v7 = v6 ^ (v5 < 0xD1492068);
  v8 = v3 - 783736724 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  if (v6)
  {
    v1 = 371891407;
  }

  *(v4 + 2204) = v1;
  return (*(STACK[0xF18] + 8 * ((207 * (v1 != -371865839)) ^ v0)))();
}

uint64_t sub_100500698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 6749 * (STACK[0xF10] ^ 0x8B3C);
  v4 = STACK[0xF10] - 34138;
  LODWORD(STACK[0xA024]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  v5 = 0x113 % (LODWORD(STACK[0xA02C]) ^ 0x86144FF8) - (((0x113 % (LODWORD(STACK[0xA02C]) ^ 0x86144FF8)) << (v3 + 118)) & 0x100) - 1651903872;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DD7)))(a1, a2, a3, v3, (((v5 ^ 0x4E61B0AF) - 1315025071) ^ ((v5 ^ 0x15483744) - 357054276) ^ ((v5 ^ 0xC6A0756B) + 962562709)) - 574061365);
}

uint64_t sub_10050078C@<X0>(unsigned int a1@<W8>)
{
  v5 = (v2 - 1077455608) % a1;
  *(v4 + v5) ^= (((((7 * (v1 ^ 0x5D) - 36) ^ BYTE1(*(v3 + 4 * v2 - 0x100E2ABE0))) + (*(v3 + 4 * v2 - 0x100E2ABE0) ^ 0x11)) ^ HIWORD(*(v3 + 4 * v2 - 0x100E2ABE0)) ^ 0x10) + (HIBYTE(*(v3 + 4 * v2 - 0x100E2ABE0)) ^ 0x36) - ((2 * (((((7 * (v1 ^ 0x5D) - 36) ^ BYTE1(*(v3 + 4 * v2 - 0x100E2ABE0))) + (*(v3 + 4 * v2 - 0x100E2ABE0) ^ 0x11)) ^ HIWORD(*(v3 + 4 * v2 - 0x100E2ABE0)) ^ 0x10) + (HIBYTE(*(v3 + 4 * v2 - 0x100E2ABE0)) ^ 0x36))) & 0x77) + 59) ^ 0x3B;
  return (*(STACK[0xF18] + 8 * ((11371 * (v2 == 1077455701)) ^ v1)))();
}

uint64_t sub_100500880()
{
  v0 = STACK[0xF10] ^ 0x925;
  v1 = STACK[0xF10] - 32565;
  LODWORD(STACK[0x1318]) = LODWORD(STACK[0x81DC]) + (LOBYTE(STACK[0x6667]) - 95);
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 31059)))();
}

uint64_t sub_10050092C()
{
  v1 = STACK[0x8264];
  v2 = (v1 ^ ((v0 - 41601) | 0x1900) ^ 0x80202206) & (2 * (v1 & 0xD2B2B987)) ^ v1 & 0xD2B2B987;
  v3 = ((2 * (v1 ^ 0x68BCA889)) ^ 0x741C221C) & (v1 ^ 0x68BCA889) ^ (2 * (v1 ^ 0x68BCA889)) & 0xBA0E110E;
  v4 = v3 ^ (((v0 - 12617) | 0xBF0) - 1979608822);
  v5 = (v3 ^ 0x100C110E) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xE8384438) & v4 ^ (4 * v4) & 0xBA0E110C;
  v7 = v5 ^ 0xBA0E110E ^ (v6 ^ 0xA8080000) & (16 * v5);
  v8 = (16 * (v6 ^ 0x12061106)) & 0xBA0E1100 ^ 0x1A0E010E ^ ((16 * (v6 ^ 0x12061106)) ^ 0xA0E110E0) & (v6 ^ 0x12061106);
  v9 = (v7 << 8) & 0xBA0E1100 ^ v7 ^ ((v7 << 8) ^ 0xE110E00) & v8;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6FC9)))((4 * ((LODWORD(STACK[0x8264]) ^ (2 * ((v9 << 16) & 0x3A0E0000 ^ v9 ^ ((v9 << 16) ^ 0x110E0000) & ((v8 << 8) & 0x3A0E0000 ^ 0x300E0000 ^ ((v8 << 8) ^ 0xE110000) & v8))) ^ 0x9FECF4A1750A1F9FLL) & 0x3FFFFFFF)) ^ 0x9EE21010);
  STACK[0x38F8] = v11;
  return (*(v10 + 8 * (((2 * (v11 == 0)) | (4 * (v11 == 0))) ^ v0)))();
}

uint64_t sub_100500B0C()
{
  v3 = v1 + LODWORD(STACK[0xAD24]) + 1876686142;
  v4 = (((v2 ^ 0x360F4AEA) - 906975839 + ((v0 - 1462268879) & 0x57280FF7)) ^ ((v2 ^ 0x1AF0486A) - 451954794) ^ (((v0 - 1509405655) & 0x59F7ECBB ^ 0x3AD5965E) + (v2 ^ 0xC52AC591))) + 1876199375;
  v5 = v3 < 0x85FEC0BE;
  v6 = v3 > v4;
  if (v5 != v4 < 0x85FEC0BE)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((234 * !v6) ^ (v0 + 5162))))();
}

uint64_t sub_100500C4C()
{
  v5 = v1 + 36 - v3;
  v6 = v0 + v2 + 36 - v3;
  v7.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v7.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v8 = veorq_s8(*(v5 - 31), v7);
  *(v6 - 15) = veorq_s8(*(v5 - 15), v7);
  *(v6 - 31) = v8;
  return (*(STACK[0xF18] + 8 * ((14 * (((v3 == 0) ^ (v4 - 38)) & 1)) ^ v4)))();
}

uint64_t sub_100500CB4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (((a2 ^ 0xA9C33D18) + 1446822632) ^ ((a2 ^ 0xB9D22B8F) + 1177408625) ^ ((v2 ^ 0xFB5974BC ^ a2) + 78029929)) + 233650909;
  v4 = (v3 ^ 0x9D521163) & (2 * (v3 & 0xDD5B1273)) ^ v3 & 0xDD5B1273;
  v5 = ((2 * (v3 ^ 0x2DC03543)) ^ 0xE1364E60) & (v3 ^ 0x2DC03543) ^ (2 * (v3 ^ 0x2DC03543)) & 0xF09B2730;
  v6 = v5 ^ 0x10892110;
  v7 = (v5 ^ 0xE0100200) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xC26C9CC0) & v6 ^ (4 * v6) & 0xF09B2730;
  v9 = (v8 ^ 0xC0080400) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x30932330)) ^ 0x9B27300) & (v8 ^ 0x30932330) ^ (16 * (v8 ^ 0x30932330)) & 0xF09B2700;
  v11 = v9 ^ 0xF09B2730 ^ (v10 ^ 0x922300) & (v9 << 8);
  LODWORD(STACK[0x5954]) = v3 ^ (2 * ((v11 << 16) & 0x709B0000 ^ v11 ^ ((v11 << 16) ^ 0x27300000) & (((v10 ^ 0xF0090430) << 8) & 0x709B0000 ^ 0x60980000 ^ (((v10 ^ 0xF0090430) << 8) ^ 0x1B270000) & (v10 ^ 0xF0090430)))) ^ 0x97051113;
  return (*(STACK[0xF18] + 8 * v2))(STACK[0xED0], 2152611072, a1, 3316700651, 1598596656, 877068288, 4102454442, 122);
}

uint64_t sub_100500F14()
{
  v2 = *(v1 + 8);
  STACK[0x50E0] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 + 703924025) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x375A2C53) - ((&STACK[0x10000] + 3800) & 0x375A2C50)) ^ 0x5ACC03AF));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC3D6)))(&STACK[0x10ED8]);
  STACK[0x23F0] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x5517 ^ (v0 + 1082488278) & 0xBF7AE7D5)))(v4);
}

uint64_t sub_100501088@<X0>(unsigned int a1@<W8>)
{
  v7 = a1 < v1;
  *(*(v5 + 16) + 8 * (v6 + 22367 + v4 - 2009681443)) = 0x981390C2FED9246;
  if (v7 == v4 + 2037359430 < v2)
  {
    v7 = v4 + 2037359430 < a1;
  }

  return (*(STACK[0xF18] + 8 * ((v7 * v3) ^ v6)))();
}

uint64_t sub_10050110C@<X0>(int a1@<W8>)
{
  v3 = (((v2 ^ 0xE139D94F) + 516302513) ^ ((v2 ^ 0xCACF4CCE) + 892384050) ^ (((((v1 + 999551477) & 0xC46B9FFF) + 31680) ^ 0x3DDC264B) + (v2 ^ 0xC2235290))) + 197813909;
  v4 = ((a1 + 569679752) < 0x21F49F84) ^ (v3 < 0x21F49F84);
  v5 = a1 + 569679752 > v3;
  if (v4)
  {
    v5 = (a1 + 569679752) < 0x21F49F84;
  }

  return (*(STACK[0xF18] + 8 * (((2 * !v5) | (8 * !v5)) ^ v1)))();
}

uint64_t sub_100501318()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 33723));
  return (*(v1 + 8 * (v0 - 29776)))();
}

uint64_t sub_10050152C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 1832;
  v2 = 17902189 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x68A4B4A0) - 391859033) ^ 0x66EBA2B7);
  LODWORD(STACK[0x10ED8]) = v2 + 1017869920;
  STACK[0x10EF0] = STACK[0x7218];
  LODWORD(STACK[0x10EEC]) = -1007397285 - v2;
  LODWORD(STACK[0x10EE8]) = v2 + v0 - 29615;
  STACK[0x10EE0] = *(&off_1010A0B50 + v0 - 32919) - 783371162;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16370)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_100501604()
{
  v3 = v1 ^ 0x4284;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  LODWORD(v11) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xC260] = 0;
  STACK[0xC268] = v2 - 0x43D8CBFA0CEB42D4;
  v12 = 16777619 * (((1692773664 * v11) | 7) ^ (1692773664 * v11)) % 7;
  v13 = *(&STACK[0xC260] | v12);
  *(&STACK[0xC260] | v12) = 0;
  LOBYTE(STACK[0xC267]) = v13;
  v14 = 16777619 * (((1692773664 * v11) | 6) ^ (1692773664 * v11)) % 6;
  v15 = *(&STACK[0xC260] | v14);
  *(&STACK[0xC260] | v14) = STACK[0xC266];
  LOBYTE(STACK[0xC266]) = v15;
  v16 = 16777619 * (((1692773664 * v11) | 5) ^ (1692773664 * v11)) % 5;
  v17 = *(&STACK[0xC260] | v16);
  *(&STACK[0xC260] | v16) = STACK[0xC265];
  LOBYTE(STACK[0xC265]) = v17;
  v18 = STACK[0xC260];
  LOBYTE(STACK[0xC260]) = STACK[0xC264];
  LOBYTE(STACK[0xC264]) = v18;
  v19 = 16777619 * (((1692773664 * v11) | 3) ^ (1692773664 * v11)) % 3;
  v20 = *(&STACK[0xC260] | v19);
  *(&STACK[0xC260] | v19) = STACK[0xC263];
  LOBYTE(STACK[0xC263]) = v20;
  v21 = STACK[0xC261];
  LOBYTE(STACK[0xC262]) = STACK[0xC260];
  LOWORD(STACK[0xC260]) = v21;
  v22 = vdup_n_s32(1692773664 * v11);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = (1692773664 * v11) | 1;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  STACK[0xC260] = vmla_s32(v24, STACK[0xC260], vdup_n_s32(0x1000193u));
  STACK[0xC268] ^= STACK[0xC260];
  STACK[0xC268] = vmul_s32(vsub_s32(STACK[0xC268], v24), vdup_n_s32(0x359C449Bu));
  v25 = STACK[0xC26A];
  LOWORD(STACK[0xC269]) = STACK[0xC268];
  LOBYTE(STACK[0xC268]) = v25;
  v26 = (&STACK[0xC268] | v19);
  LOBYTE(v21) = *v26;
  *v26 = STACK[0xC26B];
  LOBYTE(STACK[0xC26B]) = v21;
  LOBYTE(v26) = STACK[0xC268];
  LOBYTE(STACK[0xC268]) = STACK[0xC26C];
  LOBYTE(STACK[0xC26C]) = v26;
  v27 = (&STACK[0xC268] | v16);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC26D];
  LOBYTE(STACK[0xC26D]) = v26;
  v28 = (&STACK[0xC268] | v14);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xC26E];
  LOBYTE(STACK[0xC26E]) = v27;
  v29 = (&STACK[0xC268] | v12);
  v30 = *v29;
  *v29 = STACK[0xC26F];
  LOBYTE(STACK[0xC26F]) = v30;
  v31 = STACK[0xC268];
  v32 = (1692773664 * STACK[0xC268]) ^ v11;
  for (i = 1; i != 12; ++i)
  {
    v34 = 16777619 * ((v32 + i) ^ v32) % i;
    v35 = *(v31 + 8 * v34) ^ *(v31 + 8 * i);
    *(v31 + 8 * i) = v35;
    v36 = *(v31 + 8 * v34) ^ v35;
    *(v31 + 8 * v34) = v36;
    *(v31 + 8 * i) ^= v36;
  }

  v37 = 0;
  v38 = xmmword_100BC7620;
  v39 = xmmword_100BC7630;
  v40 = xmmword_100BC7640;
  v41 = xmmword_100BC7650;
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43 = vdupq_n_s32(v32);
  v44.i64[0] = 0x1000000010;
  v44.i64[1] = 0x1000000010;
  do
  {
    v45 = *(v31 + v37);
    v46 = vmovl_high_u8(v45);
    v47 = vmovl_u8(*v45.i8);
    v49.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v43), vsubq_s32(v40, v43)), v43), vmull_high_u16(v47, v42));
    v49.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v43), vsubq_s32(v39, v43)), v43), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v49.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v43), vsubq_s32(v41, v43)), v43), vmull_u16(*v47.i8, 0x9B009B009B009BLL));
    v49.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v43), vsubq_s32(v38, v43)), v43), vmull_high_u16(v46, v42));
    *(v31 + v37) = vqtbl4q_s8(v49, xmmword_100BC7660);
    v37 += 16;
    v41 = vaddq_s32(v41, v44);
    v40 = vaddq_s32(v40, v44);
    v39 = vaddq_s32(v39, v44);
    v38 = vaddq_s32(v38, v44);
  }

  while (v37 != 96);
  STACK[0x3000] = STACK[0xC268] + v0;
  return (*(STACK[0xF18] + 8 * v3))(v38, v39, v40, v41);
}

uint64_t sub_100501A54()
{
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x5900] = v3;
  STACK[0x4B08] = (v3 + 16);
  STACK[0x7690] = v2 + 32;
  LODWORD(STACK[0x77BC]) = -371865839;
  LOWORD(STACK[0x3FE6]) = 7101;
  LOWORD(STACK[0x897E]) = 7101;
  LOWORD(STACK[0x2C2E]) = 31296;
  LOBYTE(STACK[0x96C3]) = 127;
  STACK[0x1170] = 0;
  STACK[0x1FE0] = 0;
  STACK[0x7C98] = 0;
  STACK[0x9378] = 0;
  STACK[0x5C30] = 0;
  return (*(STACK[0xF18] + 8 * ((2007 * (((v0 + 68) ^ (*v1 == 1)) & 1)) ^ v0)))();
}

uint64_t sub_100501B1C()
{
  v1 = 0;
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v10 = *STACK[0x6780];
  v11 = v9 ^ v8 ^ (550399244 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v9 ^ v8) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v12 = vdupq_n_s32(v11);
  v13 = xmmword_100BC7620;
  v14 = xmmword_100BC7630;
  v15 = xmmword_100BC7640;
  v16 = xmmword_100BC7650;
  v17.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v10 + v1);
    v34.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v12), vmulq_s32(vaddq_s32(v15, v12), vsubq_s32(v15, v12)));
    v34.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v12), vmulq_s32(vaddq_s32(v16, v12), vsubq_s32(v16, v12)));
    v34.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v12), vmulq_s32(vaddq_s32(v14, v12), vsubq_s32(v14, v12)));
    v34.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v12), vmulq_s32(vaddq_s32(v13, v12), vsubq_s32(v13, v12)));
    *(v10 + v1) = vmulq_s8(vqtbl4q_s8(v34, xmmword_100BC7660), v18);
    v1 += 16;
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
    v13 = vaddq_s32(v13, v19);
  }

  while (v1 != 784);
  v21 = 0;
  v22 = xmmword_100F52B30;
  v23 = vdupq_n_s32(v11);
  v24 = xmmword_100F52B40;
  v25 = v10 + 784;
  v26.i64[0] = 0x800000008;
  v26.i64[1] = 0x800000008;
  do
  {
    v17.i64[0] = *(v25 + v21);
    v33.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v17, xmmword_100BC7690), v23), vmulq_s32(vaddq_s32(v22, v23), vsubq_s32(v22, v23)));
    v33.val[0] = veorq_s8(vqtbl1q_s8(v17, xmmword_100BC76A0), veorq_s8(v23, vmulq_s32(vaddq_s32(v24, v23), vsubq_s32(v24, v23))));
    v17 = vqtbl2q_s8(v33, xmmword_100F52AD0);
    *(v25 + v21) = vmul_s8(*v17.i8, 0x9393939393939393);
    v24 = vaddq_s32(v24, v26);
    v22 = vaddq_s32(v22, v26);
    v21 += 8;
  }

  while (v21 != 8);
  v27 = 98;
  do
  {
    v28 = 16777619 * ((v11 + v27) ^ v11) % v27;
    v29 = *(v10 + 8 * v28) ^ *(v10 + 8 * v27);
    *(v10 + 8 * v27) = v29;
    v30 = *(v10 + 8 * v28) ^ v29;
    *(v10 + 8 * v28) = v30;
    *(v10 + 8 * v27) ^= v30;
    v31 = v27-- + 1;
  }

  while (v31 > 2);
  return (*(STACK[0xF18] + 8 * v0))(xmmword_100BC7690, xmmword_100BC76A0, v22);
}

uint64_t sub_100501DC4()
{
  *(v1 + 336) = v1 + 344;
  *(v1 + 608) = v1 + 616;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100501E04()
{
  v2 = STACK[0x33C8];
  LODWORD(STACK[0x36AC]) = v1;
  return (*(STACK[0xF18] + 8 * ((28844 * (v2 == 0)) ^ (v0 - 31799))))();
}

uint64_t sub_100501E40()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 19611)))(v2);
}

uint64_t sub_100501EB8@<X0>(int a1@<W8>)
{
  *(v3 + 1512) = v2;
  *(v3 + 1508) = a1;
  return (*(STACK[0xF18] + 8 * (v1 + 6791)))();
}

uint64_t sub_100501ED8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * ((1786 * (v0 != -866618869)) ^ (v0 - 27219))))(v2);
}

uint64_t sub_100501F40@<X0>(int a1@<W8>)
{
  v1 = a1 - 15179;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100501FB8()
{
  v0 = (STACK[0xF10] - 10219) | 0x428;
  v1 = STACK[0xF10] - 34535;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x74EF) + v1)))();
}

uint64_t sub_100502008()
{
  v1 = STACK[0xF10] - 32624;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x6B80]);
  STACK[0x6B80] = 0;
  LODWORD(STACK[0x379C]) = v0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100502098()
{
  v1 = STACK[0x71FC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393338;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005020D4@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBBF0] = 0;
  STACK[0xBBF8] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBBF0] | v13);
  *(&STACK[0xBBF0] | v13) = STACK[0xBBF7];
  v17 = *(&STACK[0xBBF0] | v14);
  *(&STACK[0xBBF0] | v14) = STACK[0xBBF6];
  v18 = *(&STACK[0xBBF0] | v15);
  *(&STACK[0xBBF0] | v15) = STACK[0xBBF5];
  v19 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v20 = vdup_n_s32(553300517 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBBF7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBBF6]) = v17;
  LOBYTE(STACK[0xBBF5]) = v18;
  v23 = STACK[0xBBF0];
  LOBYTE(STACK[0xBBF0]) = STACK[0xBBF4];
  LOBYTE(STACK[0xBBF4]) = v23;
  v24 = *(&STACK[0xBBF0] | v19);
  *(&STACK[0xBBF0] | v19) = STACK[0xBBF3];
  LOBYTE(STACK[0xBBF3]) = v24;
  v25 = STACK[0xBBF1];
  LOBYTE(STACK[0xBBF2]) = STACK[0xBBF0];
  LOWORD(STACK[0xBBF0]) = v25;
  STACK[0xBBF0] = vmla_s32(v22, STACK[0xBBF0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBBF8];
  v27 = (553300517 * STACK[0xBBF8]) ^ v12;
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
  v48 = *(&STACK[0xBBF8] + v13);
  *(&STACK[0xBBF8] + v13) = STACK[0xBBFF];
  LOBYTE(STACK[0xBBFF]) = v48;
  v49 = *(&STACK[0xBBF8] + v14);
  *(&STACK[0xBBF8] + v14) = STACK[0xBBFE];
  LOBYTE(STACK[0xBBFE]) = v49;
  v50 = *(&STACK[0xBBF8] + v15);
  *(&STACK[0xBBF8] + v15) = STACK[0xBBFD];
  LOBYTE(STACK[0xBBFD]) = v50;
  v51 = STACK[0xBBF8];
  LOBYTE(STACK[0xBBF8]) = STACK[0xBBFC];
  LOBYTE(STACK[0xBBFC]) = v51;
  v52 = *(&STACK[0xBBF8] + v19);
  *(&STACK[0xBBF8] + v19) = STACK[0xBBFB];
  LOBYTE(STACK[0xBBFB]) = v52;
  v53 = STACK[0xBBF9];
  LOBYTE(STACK[0xBBFA]) = STACK[0xBBF8];
  LOWORD(STACK[0xBBF8]) = v53;
  STACK[0xBBF8] = vmla_s32(v22, STACK[0xBBF8], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBBF8] ^ STACK[0xBBF0];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1005025B4()
{
  v1 = (v0 - 20143) | 0x8000;
  v2 = v1 - 27764;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100502714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10] - 34751;
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v6 ^ 0x1507)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_100502760()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34687;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x7357) + v1)))();
}

uint64_t sub_1005027A8()
{
  v0 = 19 * (STACK[0xF10] ^ 0x8A0E);
  v1 = STACK[0xF10] - 33854;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1B2E) + v1)))();
}

uint64_t sub_100502808@<X0>(int a1@<W8>)
{
  v2 = (((LODWORD(STACK[0x2814]) ^ 0xAA8D0035) + 1433599947) ^ ((LODWORD(STACK[0x2814]) ^ 0x834107AC) + 2092890196) ^ (((2 * a1) ^ 0xC018B896 ^ LODWORD(STACK[0x2814])) + 1072054136)) + (a1 ^ 0x5FE8F0E1);
  v3 = v2 < 0x761285DD;
  v4 = v1 < v2;
  if (v1 < 0x761285DD != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v4) | (16 * v4)) ^ a1)))();
}

uint64_t sub_1005028C4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2412)))();
}

uint64_t sub_10050298C()
{
  LODWORD(STACK[0xB318]) = 1115225941;
  LODWORD(STACK[0xB314]) = 4;
  return (*(STACK[0xF18] + 8 * (((((v0 + 1184106223) & 0x80F57BE7) + 7947) * (v0 == 448850723)) ^ (v0 - 947285813))))();
}

uint64_t sub_1005029F8@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 21544 + ((a1 + 23925) | 0x568))))();
}

uint64_t sub_100502AA4@<X0>(int a1@<W8>)
{
  v1 = a1 - 30212;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100502BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x9870] = ((v4 - 6671) | 0x1A24u) + 23722 + STACK[0x9870] - 47943;
  *(a4 + 113) = v6;
  *(a4 + 121) = v8;
  *(a4 + 105) = v7;
  return (*(STACK[0xF18] + 8 * ((53 * (v5 != v8)) ^ v4)))(v5);
}

uint64_t sub_100502D64@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = ((*(*STACK[0xE50] + (*STACK[0xE58] & v4)) ^ (v3 + a2)) & 0x7FFFFFFF) * v5;
  v9 = (v8 ^ HIWORD(v8)) * v5;
  *(v3 + a2) = *((v9 >> 24) + STACK[0x9A8] + 2) ^ *(STACK[0x9B8] + (v9 >> 24)) ^ *((v9 >> 24) + a1 + 4) ^ v9 ^ (BYTE3(v9) * v6);
  return (*(STACK[0xF18] + 8 * (((a2 == 15) * v7) ^ v2)))();
}

uint64_t sub_100502EF0()
{
  *(v1 + 2872) = v2 + 8;
  v4 = (((LODWORD(STACK[0x18F0]) ^ 0x88543B6D) + 2007745683) ^ ((LODWORD(STACK[0x18F0]) ^ 0x477B279B) - 1199253403) ^ ((((v0 - 37710) | 0x120) ^ 0xD905257E) + (LODWORD(STACK[0x18F0]) ^ 0x26FADBE7))) + 1230860094;
  v5 = (v2 + 8) > 0xA07857D2;
  v6 = v5 ^ (v4 < 0x5F87A82D);
  v7 = v2 + 1602725941 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  if (v5)
  {
    v3 = 371891407;
  }

  *(v1 + 2876) = v3;
  return (*(STACK[0xF18] + 8 * ((70 * (v3 != -371865839)) ^ v0)))();
}

uint64_t sub_1005030A0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 806)))(v2);
}

uint64_t sub_1005030C8()
{
  v0 = STACK[0xF10] + 1822;
  v1 = STACK[0xF10] - 33960;
  STACK[0x1FE8] = STACK[0x95B8];
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 32253 + v1)))();
}

uint64_t sub_10050312C()
{
  v0 = STACK[0xF10] - 26978;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 1762661292) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xC9440720) - (&STACK[0x10000] + 3800) - 1688339344) ^ 0x55A3CEB4));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 43232)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((986 * (*STACK[0x970] > (v0 ^ 0x664F) - 18326)) ^ v0)))(v2);
}

uint64_t sub_100503264()
{
  v0 = STACK[0xF10] - 31426;
  STACK[0x6C00] = STACK[0x8308] + 16;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x8A8)))();
}

uint64_t sub_100503298()
{
  v0 = (STACK[0xF10] - 6992) ^ 0x3CF3;
  v1 = STACK[0xF10] - 10763;
  v2 = STACK[0x16C8];
  *(v2 + 304) = 0x981390C2FED9246;
  *(v2 + 312) = 0;
  v3 = STACK[0x7408];
  *v2 = *(STACK[0x7408] + 324) ^ 0xAA627F47;
  *(v2 + 16) = v3[93] ^ 0x82412906;
  *(v2 + 24) = v3[107] ^ (v0 - 2109680146);
  *(v2 + 32) = v3[109] ^ 0x82412906;
  *(v2 + 36) = v3[110] ^ 0x82412906;
  *(v2 + 40) = v3[111] ^ 0x82412906;
  *(v2 + 4) = -371865840;
  return (*(STACK[0xF18] + 8 * ((191 * (v3[111] == -2109658874)) ^ v1)))();
}

uint64_t sub_100503368()
{
  v1 = STACK[0x2950];
  v2 = STACK[0x24D0];
  v3 = (STACK[0x2950] << (((v0 - 80) & 0xDF) + 110)) & (v0 ^ 0xE8A92549AD3B50C5);
  v4 = LODWORD(STACK[0x22C4]) ^ 0x900751E8;
  v5 = 1022166737 * (((&STACK[0x10ED8] ^ 0xAD4202D2A2844FDALL | 0xB4474C5DEF262CEELL) - (&STACK[0x10ED8] ^ 0xAD4202D2A2844FDALL | 0x4BB8B3A210D9D311) + 0x4BB8B3A210D9D311) ^ 0x678F3CF2F7B282A6);
  STACK[0x10EF8] = STACK[0x89C0];
  STACK[0x10ED8] = v2;
  STACK[0x10EE0] = v5 + v1 - v3 - 0xBAB6D5B29625C1DLL;
  LODWORD(STACK[0x10EEC]) = v4 - v5;
  LODWORD(STACK[0x10EF0]) = v0 - v5 + 24657;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 46458)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EE8];
  STACK[0x7690] -= 32;
  return (*(v6 + 8 * ((57314 * (v8 == -371865839)) ^ v0)))(v7);
}

uint64_t sub_100503544@<X0>(int a1@<W0>, int a2@<W6>, unsigned int a3@<W7>, unsigned int a4@<W8>)
{
  v11 = v4 < v10;
  *(v6 + (((a4 ^ v8) * v9) ^ a3) + a1) = *(v5 + (((a4 ^ v8) * v9) ^ a3) + a1);
  v12 = a1 + v7;
  v13 = (a1 + 1);
  v14 = v11 ^ (v12 < v10);
  v15 = v12 < v4;
  if (!v14)
  {
    v11 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((v11 * a2) ^ a4)))(v13);
}

uint64_t sub_1005035A0@<X0>(uint64_t a1@<X8>)
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
  STACK[0xC010] = 0;
  STACK[0xC018] = v2;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC010] | v11);
  *(&STACK[0xC010] | v11) = 0;
  LOBYTE(STACK[0xC017]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC010] | v13);
  *(&STACK[0xC010] | v13) = STACK[0xC016];
  LOBYTE(STACK[0xC016]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC010] | v15);
  *(&STACK[0xC010] | v15) = STACK[0xC015];
  LOBYTE(STACK[0xC015]) = v16;
  v17 = STACK[0xC010];
  LOBYTE(STACK[0xC010]) = STACK[0xC014];
  LOBYTE(STACK[0xC014]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC010] | v18);
  *(&STACK[0xC010] | v18) = STACK[0xC013];
  LOBYTE(STACK[0xC013]) = v19;
  v20 = STACK[0xC011];
  LOBYTE(STACK[0xC012]) = STACK[0xC010];
  LOWORD(STACK[0xC010]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC010] = vmla_s32(v23, STACK[0xC010], vdup_n_s32(0x1000193u));
  STACK[0xC018] ^= STACK[0xC010];
  STACK[0xC018] = vmul_s32(vsub_s32(STACK[0xC018], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC01A];
  LOWORD(STACK[0xC019]) = STACK[0xC018];
  LOBYTE(STACK[0xC018]) = v24;
  v25 = (&STACK[0xC018] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC01B];
  LOBYTE(STACK[0xC01B]) = v20;
  LOBYTE(v25) = STACK[0xC018];
  LOBYTE(STACK[0xC018]) = STACK[0xC01C];
  LOBYTE(STACK[0xC01C]) = v25;
  v26 = (&STACK[0xC018] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC01D];
  LOBYTE(STACK[0xC01D]) = v25;
  v27 = (&STACK[0xC018] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC01E];
  LOBYTE(STACK[0xC01E]) = v26;
  v28 = (&STACK[0xC018] | v11);
  v29 = *v28;
  *v28 = STACK[0xC01F];
  LOBYTE(STACK[0xC01F]) = v29;
  v30 = STACK[0xC018];
  v31 = (1269228062 * STACK[0xC018]) ^ v10;
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
  *(a1 + 264) = STACK[0xC018];
  return (*(STACK[0xF18] + 8 * v1))(v48, v49);
}

uint64_t sub_100503A20()
{
  v3 = 0;
  *v1 |= ((v0 - 1224825874) & 0x4901CFFF) - 35642;
  *(v1 + 8) = 1419159039;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x14CFE928)) ^ 0x14CFE92BLL;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *(v1 + 48);
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v13 = v12 ^ (349169963 * v11) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v14 = vdupq_n_s32(v13);
  v15 = xmmword_100BC7620;
  v16 = xmmword_100BC7630;
  v17 = xmmword_100BC7640;
  v18 = xmmword_100BC7650;
  v19.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v20.i64[0] = 0x9393939393939393;
  v20.i64[1] = 0x9393939393939393;
  v21.i64[0] = 0x1000000010;
  v21.i64[1] = 0x1000000010;
  do
  {
    v22 = *(v11 + v3);
    v36.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v22, xmmword_100BC7690), v14), vmulq_s32(vaddq_s32(v17, v14), vsubq_s32(v17, v14)));
    v36.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v22, xmmword_100BC76A0), v14), vmulq_s32(vaddq_s32(v18, v14), vsubq_s32(v18, v14)));
    v36.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v22, xmmword_100BC7680), v14), vmulq_s32(vaddq_s32(v16, v14), vsubq_s32(v16, v14)));
    v36.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v22, xmmword_100BC7670), v14), vmulq_s32(vaddq_s32(v15, v14), vsubq_s32(v15, v14)));
    *(v11 + v3) = vmulq_s8(vqtbl4q_s8(v36, xmmword_100BC7660), v20);
    v3 += 16;
    v18 = vaddq_s32(v18, v21);
    v17 = vaddq_s32(v17, v21);
    v16 = vaddq_s32(v16, v21);
    v15 = vaddq_s32(v15, v21);
  }

  while (v3 != 256);
  v23 = 0;
  v24 = xmmword_100F52B10;
  v25 = vdupq_n_s32(v13);
  v26 = xmmword_100F52B20;
  v27 = v11 + 256;
  v28.i64[0] = 0x800000008;
  v28.i64[1] = 0x800000008;
  do
  {
    v19.i64[0] = *(v27 + v23);
    v35.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v19, xmmword_100BC7690), v25), vmulq_s32(vaddq_s32(v24, v25), vsubq_s32(v24, v25)));
    v35.val[0] = veorq_s8(vqtbl1q_s8(v19, xmmword_100BC76A0), veorq_s8(v25, vmulq_s32(vaddq_s32(v26, v25), vsubq_s32(v26, v25))));
    v19 = vqtbl2q_s8(v35, xmmword_100F52AD0);
    *(v27 + v23) = vmul_s8(*v19.i8, 0x9393939393939393);
    v26 = vaddq_s32(v26, v28);
    v24 = vaddq_s32(v24, v28);
    v23 += 8;
  }

  while (v23 != 8);
  v29 = 32;
  do
  {
    v30 = 16777619 * ((v13 + v29) ^ v13) % v29;
    v31 = *(v11 + 8 * v30) ^ *(v11 + 8 * v29);
    *(v11 + 8 * v29) = v31;
    v32 = *(v11 + 8 * v30) ^ v31;
    *(v11 + 8 * v30) = v32;
    *(v11 + 8 * v29) ^= v32;
    v33 = v29-- + 1;
  }

  while (v33 > 2);
  STACK[0x8E78] = v2;
  STACK[0x5C50] = 0x3AE1413A0D5C99DALL;
  LODWORD(STACK[0x1374]) = 547993771;
  return (*(STACK[0xF18] + 8 * v0))(xmmword_100BC7690, xmmword_100BC76A0, v24);
}

uint64_t sub_100503D2C()
{
  v1 = STACK[0xA668] - 0x2EDB380E1841660FLL + (((v0 ^ 0xB0D8D16F6A6FE2D8) + 0x4F272E9095901D28) ^ ((v0 ^ 0xC79CF06A3C904965) + 0x38630F95C36FB69BLL) ^ ((v0 ^ 0x77442105BF2A6CACLL) - 0x77442105BF2A6CACLL)) + 0x14F69321CLL;
  v2 = STACK[0xA660] - 0x4D7072F628423AELL;
  v3 = v1 < 0x65936B0B;
  v4 = v1 > v2;
  if (v2 < 0x65936B0B != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((119 * v4) ^ (STACK[0xF10] - 1156))))();
}

uint64_t sub_100503E44(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10] - 35639;
  LOWORD(STACK[0xA406]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 | 0x2061)))(a1, a2, v3);
}

uint64_t sub_100503EBC()
{
  v0 = STACK[0xF10] - 26986;
  v1 = STACK[0x6E98];
  v2 = STACK[0x184C];
  STACK[0x5400] = STACK[0x2558];
  STACK[0x41A0] = v1;
  LODWORD(STACK[0x20CC]) = v2;
  LODWORD(STACK[0x38AC]) = 2032474530;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100503F0C(double a1, double a2, double a3, double a4, __n128 a5, uint64_t a6, int a7, int a8)
{
  v9[-1] = a5;
  *v9 = a5;
  return (*(v12 + 8 * (((a7 & ~(v10 ^ (v8 == 0))) * a8) ^ v11)))();
}

uint64_t sub_100503FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v38 = v34 + 12715;
  v39 = 139493411 * ((v37 - 144) ^ 0xC2DE145);
  *(v37 - 144) = &a34;
  *(v37 - 120) = a24 + 13 * ((v36 - 901317719 + ((v38 + 1605337747) & 0xFF7B6FDF) - 1596662814) % a23);
  *(v37 - 132) = v38 - v39 + 9285;
  *(v37 - 128) = v39 + 404414908;
  v40 = (*(v35 + 8 * (v38 ^ 0xB9CE)))(v37 - 144);
  return (*(v35 + 8 * ((50228 * (*(v37 - 136) == -371865839)) ^ v38)))(v40);
}

uint64_t sub_100504098()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] ^ 0x9797;
  v3 = STACK[0xF10] - 371901482;
  v4 = STACK[0x8800];
  v5 = STACK[0x4F58];
  v6 = STACK[0x1B28] + 8;
  v7 = STACK[0x7CF0];
  v8 = STACK[0xF10] + 13672;
  v9 = 139493411 * ((((2 * (&STACK[0x10000] + 3800)) | 0xEAD01DD8) - (&STACK[0x10000] + 3800) + 177729812) ^ 0xF945EFA9);
  LODWORD(STACK[0x10EE8]) = v9 + (LODWORD(STACK[0x369C]) ^ 0x6B8FEFDF) + ((2 * LODWORD(STACK[0x369C])) & 0xD71FDFBE) - 1133404941;
  STACK[0x10ED8] = v5;
  STACK[0x10EE0] = v6;
  STACK[0x10EF0] = v4;
  STACK[0x10EF8] = v7;
  LODWORD(STACK[0x10F00]) = v8 ^ v9;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v1 + 16690)))(&STACK[0x10ED8]);
  v12 = STACK[0x10F04];
  LODWORD(STACK[0x9B54]) = STACK[0x10F04];
  return (*(v10 + 8 * (v3 ^ 0xE9D59422 ^ (76 * (v0 & ~(v2 ^ (((v12 - v3) | (v3 - v12)) >> 31) ^ (v1 - 21198)))))))(v11);
}

uint64_t sub_1005041DC()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 56);
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v12 = v11 ^ (550399244 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v19.i64[0] = 0x9393939393939393;
  v19.i64[1] = 0x9393939393939393;
  v20.i64[0] = 0x1000000010;
  v20.i64[1] = 0x1000000010;
  do
  {
    v21 = *(v10 + v2);
    v35.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v35.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v35.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v35.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v10 + v2) = vmulq_s8(vqtbl4q_s8(v35, xmmword_100BC7660), v19);
    v2 += 16;
    v17 = vaddq_s32(v17, v20);
    v16 = vaddq_s32(v16, v20);
    v15 = vaddq_s32(v15, v20);
    v14 = vaddq_s32(v14, v20);
  }

  while (v2 != 784);
  v22 = 0;
  v23 = xmmword_100F52B30;
  v24 = vdupq_n_s32(v12);
  v25 = xmmword_100F52B40;
  v26 = v10 + 784;
  v27.i64[0] = 0x800000008;
  v27.i64[1] = 0x800000008;
  do
  {
    v18.i64[0] = *(v26 + v22);
    v34.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v18, xmmword_100BC7690), v24), vmulq_s32(vaddq_s32(v23, v24), vsubq_s32(v23, v24)));
    v34.val[0] = veorq_s8(vqtbl1q_s8(v18, xmmword_100BC76A0), veorq_s8(v24, vmulq_s32(vaddq_s32(v25, v24), vsubq_s32(v25, v24))));
    v18 = vqtbl2q_s8(v34, xmmword_100F52AD0);
    *(v26 + v22) = vmul_s8(*v18.i8, 0x9393939393939393);
    v25 = vaddq_s32(v25, v27);
    v23 = vaddq_s32(v23, v27);
    v22 += 8;
  }

  while (v22 != 8);
  v28 = 98;
  do
  {
    v29 = 16777619 * ((v12 + v28) ^ v12) % v28;
    v30 = *(v10 + 8 * v29) ^ *(v10 + 8 * v28);
    *(v10 + 8 * v28) = v30;
    v31 = *(v10 + 8 * v29) ^ v30;
    *(v10 + 8 * v29) = v31;
    *(v10 + 8 * v28) ^= v31;
    v32 = v28-- + 1;
  }

  while (v32 > 2);
  return (*(STACK[0xF18] + 8 * v1))(xmmword_100BC7690, xmmword_100BC76A0, v23);
}

uint64_t sub_100504484()
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
  return (*(STACK[0xF18] + 8 * (v1 - 17044)))(v28, v29);
}

uint64_t sub_10050476C@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x13F7)))();
}

uint64_t sub_10050482C()
{
  STACK[0x5C50] = 72 * (((v1 ^ 0x1770FDD92941EDE6) + 0x688F0226D6BE121ALL) ^ ((v1 ^ 0xDE977C6EB7A5D94) - 0x4DE977C6EB7A5D94) ^ ((v1 ^ 0x1A998A1F2BEE7763) + (v0 ^ 0x9C76u) + 0x256675E0D410FD62)) + 0x3AE1417BD17C938ALL;
  LODWORD(STACK[0x1374]) = -1268770545;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005048F4@<X0>(int a1@<W8>)
{
  v2 = 1913 * (a1 ^ 0x42CA) + 2098540493 + (((v1 ^ 0xD07F5AD7) + 796960041) ^ ((v1 ^ 0x3DE1BDD9) - 1038204377) ^ (185 * (a1 ^ 0x429E) + (v1 ^ 0xC487F54F) + 997706336));
  v3 = LODWORD(STACK[0x44F8]) > 0xAC03814E;
  v4 = v3 ^ (v2 < 0x53FC7EB1);
  v5 = v2 < LODWORD(STACK[0x44F8]) + 1409056433;
  if (!v4)
  {
    v3 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((16 * v3) | (32 * v3) | a1)))();
}

uint64_t sub_100504B60@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8CC0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((((a1 - 3046) | 0xC042) ^ 0xECAE) + a1)))();
}

uint64_t sub_100504BB4()
{
  v2 = STACK[0x2978];
  v3 = STACK[0x8E48];
  v4 = STACK[0x8B98];
  v5 = (v0 - 1267) ^ LODWORD(STACK[0x8B98]) ^ 0x7DE6C791;
  v6 = 906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x7AB0ED74) - (&STACK[0x10000] + 3800) + 1118275910) ^ 0x8C59BB9E);
  STACK[0x10ED8] = STACK[0x8250];
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EF0]) = v6 + v5 + ((2 * v4) & 0xFBCDA2CA) - 811749413;
  STACK[0x10EF8] = v2;
  STACK[0x10F00] = v1;
  LODWORD(STACK[0x10EE8]) = (v0 + 32013) ^ v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD7E8)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v0))(v8);
}

uint64_t sub_100504D38()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 22895)))(v2);
}

uint64_t sub_100504E10()
{
  *v0 += (v1 + 21416) ^ 0x6005;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x295B74C0) - 1453624123) ^ 0x4F7D6F0A) + 296785582;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC696)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (v1 + 2579)))(v3);
}

uint64_t sub_100504F24@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF10] ^ 0x925;
  v2 = STACK[0xF10] - 32589;
  LODWORD(STACK[0x810C]) = a1;
  v3 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v1 ^ v2 ^ 0x9D21)))();
}

uint64_t sub_100504FC0()
{
  v1 = STACK[0xF10] - 29747;
  v2 = STACK[0x4518];
  *(v2 - 0x217E172EFA1E80CLL) = STACK[0x2350];
  *(v2 - 0x217E172EFA1E808) = STACK[0x11B8];
  *(v2 - 0x217E172EFA1E814) = STACK[0x9604];
  *(v2 - 0x217E172EFA1E810) = v0;
  STACK[0x8FE8] = STACK[0x1180];
  LODWORD(STACK[0x44A8]) = 1497668682;
  LODWORD(STACK[0x7FD8]) = 1986359923;
  LODWORD(STACK[0x704C]) = -2116087559;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1005050A0()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34518;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x74FE) + v1)))();
}

uint64_t sub_1005050E8()
{
  v0 = (STACK[0xF10] - 2315) | 0x880;
  v1 = STACK[0xF10] + 12297;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4D38] = v3;
  STACK[0x7C88] = v3;
  STACK[0x4B18] = (v3 + 576);
  STACK[0x7690] = v2 + v0 - 34256;
  LODWORD(STACK[0x6B5C]) = -371865839;
  LODWORD(STACK[0x3874]) = -371865839;
  if (STACK[0x2D78])
  {
    v4 = STACK[0x7D40] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((21 * v5) ^ v1)))();
}

uint64_t sub_1005052C8()
{
  v0 = STACK[0xF10] - 36;
  v1 = STACK[0xF10] - 21531;
  STACK[0x9D18] = &STACK[0x42A8];
  if (STACK[0x2920])
  {
    v2 = LODWORD(STACK[0x49CC]) == -371865839;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((107 * ((v0 ^ v3) & 1)) ^ v1)))();
}

uint64_t sub_1005053F0()
{
  v0 = STACK[0xF10] + 1508;
  LODWORD(STACK[0x345C]) = STACK[0x2674];
  v1 = STACK[0x85A8];
  STACK[0x4A18] = STACK[0x6630];
  LODWORD(STACK[0x3554]) = STACK[0xF54];
  LODWORD(STACK[0x8E38]) = -1304553729;
  return (*(STACK[0xF18] + 8 * ((38 * (v1 != 0)) ^ v0)))();
}

uint64_t sub_1005054FC()
{
  *(v2 + 2072) = v0 + 612077455;
  if ((v0 + 1441479295) < 0xAE422EBF != LODWORD(STACK[0x36E8]) > 0x51BDD140)
  {
    v3 = (v0 + 1441479295) < 0xAE422EBF;
  }

  else
  {
    v3 = v0 + 1441479295 > ((v1 - 380497148) & 0x16AD65E8 ^ 0xAE422F1F) + LODWORD(STACK[0x36E8]);
  }

  return (*(STACK[0xF18] + 8 * ((70 * !v3) ^ v1)))();
}

uint64_t sub_10050559C()
{
  v1 = STACK[0xF18];
  STACK[0x1DB0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x52A5 ^ (5446 * ((v0 ^ 0x38A9C6A6u) < 0x54819D58)))))();
}

uint64_t sub_100505658()
{
  v2 = *(STACK[0x3CF8] - 0x7E666516A39B34A6);
  STACK[0x5408] = v2;
  LODWORD(STACK[0x8E74]) = STACK[0x69DC];
  v3 = STACK[0x58EC];
  STACK[0x2290] = v1;
  if (v2)
  {
    v4 = v3 == v0 + 1497642634;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v1 == 0;
  return (*(STACK[0xF18] + 8 * ((v6 * (v0 - 26044)) | v0)))();
}

uint64_t sub_100505828()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 1281;
  v2 = STACK[0xB8D0];
  v3 = (((*v2 ^ 0xC7E934B8) + 941017928) ^ ((*v2 ^ 0x40E6708C) - 1088843916) ^ (((107 * (STACK[0xF10] ^ 0x8B24)) ^ 0x6EDA8FD0 ^ *v2) - 1859814181)) + 1428316479;
  *v2 = v3 ^ ((v3 ^ 0x742E6B1C) - 526577974) ^ ((v3 ^ 0x123D40DD) - 2037504759) ^ ((v3 ^ 0x72F04614) - 431807550) ^ ((v3 ^ 0x7FAFF7FF) - 350449109) ^ 0x82995D3B;
  v4 = STACK[0xB8C8];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(*STACK[0xB8C8]);
  *v4 = STACK[0xB8D8];
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_100505960()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74CC ^ (v0 - 1723829474) & 0x66BFEFFA)))();
}

uint64_t sub_100505A44()
{
  v0 = STACK[0xF10] - 30381;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x1300]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100505A7C()
{
  v2 = (((-91 * (v0 ^ 0x39)) ^ 0x72) & (2 * *STACK[0x4A18])) + (*STACK[0x4A18] ^ 0xBF);
  *(v1 + 652) = v2 ^ 0x80;
  LODWORD(STACK[0x7E54]) = 1543924817;
  return (*(STACK[0xF18] + 8 * ((36840 * ((((v0 + 348298959) ^ 0xFFFFFFFE) & 0xFB) == v2)) ^ v0)))();
}

uint64_t sub_100505B5C()
{
  v0 = (STACK[0xF10] - 1027121148) & 0x3D3896DE;
  v1 = STACK[0xF10] - 32491;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x893D) + v1)))();
}

uint64_t sub_100505BB8()
{
  v0 = STACK[0xF10] ^ 0x1962;
  v1 = STACK[0xF10] - 33945;
  STACK[0x8080] = STACK[0x6C00];
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 32268)))();
}

uint64_t sub_100505D10()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 26442) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x9719A7DC) - ((&STACK[0x10000] + 3800) & 0x9719A7D8)) ^ 0xC29577));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 45456)))(&STACK[0x10ED8]);
  v3 = STACK[0x10EDC];
  if ((STACK[0x10EDC] & 0xFFFFFFFE) == ((v0 + 28297) ^ 0xE9D54F42))
  {
    v4 = -371866435;
  }

  else
  {
    v4 = -371866371;
  }

  LODWORD(STACK[0x50F8]) = v4;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v3;
  LODWORD(STACK[0x35EC]) = 1693393354;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100505ECC()
{
  v2 = v0 ^ 0x31382D77;
  v3 = STACK[0xAD08];
  LODWORD(STACK[0x10ED8]) = (v0 ^ 0x31382D77) - 1012831759 * ((~(&STACK[0x10000] + 3800) & 0x1A3E5765 | (&STACK[0x10000] + 3800) & 0xE5C1A898) ^ 0xAAD41EF) - 9672;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v1 + 44;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x3138AA1B)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EDC]) == -371865839) * ((v2 + 1113105013) & 0xBDA7D763 ^ (v2 + 36409))) ^ v2)))(v5);
}

uint64_t sub_100505FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a3;
  STACK[0x2F00] = 0;
  STACK[0x2310] = 0x166668CC9ED56DBFLL;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (((v3 - 31976) | 0x80) - 3792)) ^ (v3 - 28274))))(a1, a2, 371891400);
}

uint64_t sub_100506100()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x8A60];
  STACK[0x5D28] = &STACK[0x7244];
  LODWORD(STACK[0x4704]) = -484219470;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100506228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  v5 = STACK[0xF10] - 34116;
  LODWORD(STACK[0xA0A8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x1DC1 ^ (10306 * (v3 + 558786599 >= (v3 + 1851685914))))))(a1, a2, a3, v4, 1077842701 - 0xC2 / (LODWORD(STACK[0xA0AC]) ^ 0x83489D72) * (LODWORD(STACK[0xA0AC]) ^ 0x83489D72));
}

uint64_t sub_1005062BC()
{
  v0 = STACK[0xF10] - 32116;
  STACK[0x5918] = STACK[0x7818] + 16;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (LODWORD(STACK[0x998]) - 25253 + v0)))();
}

uint64_t sub_1005063EC()
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
  STACK[0xC1B0] = 0;
  STACK[0xC1B8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC1B0] | v10);
  *(&STACK[0xC1B0] | v10) = 0;
  LOBYTE(STACK[0xC1B7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC1B0] | v12);
  *(&STACK[0xC1B0] | v12) = STACK[0xC1B6];
  LOBYTE(STACK[0xC1B6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC1B0] | v14);
  *(&STACK[0xC1B0] | v14) = STACK[0xC1B5];
  LOBYTE(STACK[0xC1B5]) = v15;
  v16 = STACK[0xC1B0];
  LOBYTE(STACK[0xC1B0]) = STACK[0xC1B4];
  LOBYTE(STACK[0xC1B4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC1B0] | v17);
  *(&STACK[0xC1B0] | v17) = STACK[0xC1B3];
  LOBYTE(STACK[0xC1B3]) = v18;
  v19 = STACK[0xC1B1];
  LOBYTE(STACK[0xC1B2]) = STACK[0xC1B0];
  LOWORD(STACK[0xC1B0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC1B0] = vmla_s32(v22, STACK[0xC1B0], vdup_n_s32(0x1000193u));
  STACK[0xC1B8] ^= STACK[0xC1B0];
  STACK[0xC1B8] = vmul_s32(vsub_s32(STACK[0xC1B8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC1BA];
  LOWORD(STACK[0xC1B9]) = STACK[0xC1B8];
  LOBYTE(STACK[0xC1B8]) = v23;
  v24 = (&STACK[0xC1B8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC1BB];
  LOBYTE(STACK[0xC1BB]) = v19;
  LOBYTE(v24) = STACK[0xC1B8];
  LOBYTE(STACK[0xC1B8]) = STACK[0xC1BC];
  LOBYTE(STACK[0xC1BC]) = v24;
  v25 = (&STACK[0xC1B8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC1BD];
  LOBYTE(STACK[0xC1BD]) = v24;
  v26 = (&STACK[0xC1B8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC1BE];
  LOBYTE(STACK[0xC1BE]) = v25;
  v27 = (&STACK[0xC1B8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC1BF];
  LOBYTE(STACK[0xC1BF]) = v28;
  v29 = STACK[0xC1B8];
  v30 = (553300517 * STACK[0xC1B8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC1B8];
  return (*(STACK[0xF18] + 8 * ((((535 * (v1 ^ 0xE750269)) ^ 0xDF23) * (v1 > 0x46C4EC2D)) ^ (v1 - 242529239))))(v47, v48);
}

uint64_t sub_1005068B4()
{
  v0 = STACK[0xF10] - 14557;
  v1 = STACK[0xF10] + 612490794;
  STACK[0x5EC0] = 0x981390C2FED9246;
  STACK[0x2F58] = 0x981390C2FED9246;
  STACK[0x1AE0] = 0xF67EC6F3E5132CA9;
  return (*(STACK[0xF18] + 8 * ((52269 * (v1 == 444247429)) ^ ((v0 ^ 0xDB7D88F8) + v1))))();
}

uint64_t sub_100506A5C()
{
  v1 = STACK[0x6C94];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393340;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100506B94()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v0 - 4744));
  return (*(v1 + 8 * ((((v0 - 4744) ^ 0x11D9) - 1298) ^ (v0 - 4744))))();
}

uint64_t sub_100506BF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, unsigned int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v24 = ((2 * (v10 & 0x432)) & 0xF81F | 0x30000100) ^ (v10 & 0x432 | 0x89D6888C) ^ ((2 * (v10 & 0x432)) ^ 0xB8128800) & (v10 ^ 0x645205BE);
  v25 = (2 * (v10 ^ 0x645205BE)) & 0x40098C ^ 0x400884 ^ ((2 * (v10 ^ 0x645205BE)) ^ 0xCBBF9B18) & (v10 ^ 0x645205BE);
  v26 = (4 * v24) & 0xA1520188 ^ v24 ^ ((4 * v24) ^ a4) & v25;
  v27 = (4 * v25) & 0xB9D68988 ^ 0x1884898C ^ ((4 * v25) ^ a4) & v25;
  v28 = (16 * v26) & v18 ^ v26 ^ ((16 * v26) ^ 0x884898C0) & v27;
  v29 = (16 * v27) & v18 ^ 0x2096010C ^ ((16 * v27) ^ 0x9D6898C0) & v27;
  v30 = v28 ^ (v28 << 8) & 0xB9D68900 ^ ((v28 << 8) ^ 0xC4010C00) & v29 ^ 0xA9128080;
  v31 = (8 * ((v30 << 16) & v14 ^ v30 ^ ((v30 << 16) ^ 0x98C0000) & ((v29 << 8) & v14 ^ 0x9560000 ^ ((v29 << 8) ^ 0x16890000) & v29))) ^ (4 * v10);
  v32 = *(a1 + (v31 ^ 0xF4867CA8) % v8);
  v33 = *(a1 + (v31 ^ 0xF4867CA9) % v8);
  v34 = ((v33 - ((2 * v33) & 0x10)) << 16) + 973602816;
  v35 = *(STACK[0xED0] + (v31 ^ a6) % v8);
  v36 = a2 + ((v35 - (a7 & (2 * v35))) << 8);
  v37 = *(STACK[0xED0] + (v31 ^ v20) % v8);
  *(v17 + 4 * v10 + v11) = (v37 - ((2 * v37) & 0xC0) + v21) & a8 ^ v22 ^ (v36 & v16 ^ v23 ^ (v34 & a5 ^ v19 ^ (v34 ^ a3) & ((((v32 - ((2 * v32) & 0x50)) << 24) - 1476395008) ^ 0xE3B8D5EB)) & (v36 ^ v15)) & ((v37 - ((2 * v37) & 0xC0) + v21) ^ v13);
  return (*(STACK[0xF18] + 8 * (((4 * (v10 + 1 != v12)) | (32 * (v10 + 1 != v12))) ^ v9)))();
}

uint64_t sub_100506F10()
{
  v1 = (STACK[0xF10] - 2070916124) & 0x7B6FABFF;
  v2 = (STACK[0xF10] + 642277954) & 0xD9B77BFA;
  v3 = STACK[0xF10] - 1309;
  STACK[0x5CB0] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ v2 ^ 0xE25F) * (v0 != 0)) ^ v3)))();
}

uint64_t sub_100506F78()
{
  v3 = (v0 & 0xBDB079DF ^ 0x8163) + (*v1 ^ 0xFFFFFFEF) + ((*v1 << (((v0 & 0xDF) - 27) ^ 0x82)) & 0xFFFFFFDE);
  *(v2 + 28) = v3 + 121;
  v4 = v2 + 28;
  *(v4 - 24) = 329966751;
  STACK[0x2880] = v4;
  return (*(STACK[0xF18] + 8 * ((18574 * ((v3 + 5) < 0x1Cu)) ^ v0 & 0xBDB079DF)))();
}

uint64_t sub_100507004()
{
  v0 = STACK[0xF10] - 8004;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x37F8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005070A0()
{
  v2 = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x2A78]) = -371865839;
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0xBCD11088) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x432EEF70)) ^ 0x6C1F11A);
  LODWORD(STACK[0x10EDC]) = v3 - 4463 + v0;
  LODWORD(STACK[0x10EF0]) = v3 ^ v1 ^ ((v1 ^ 0xD5023411) + 1941526437) ^ ((v1 ^ 0x7ACB1099) - 596610259) ^ ((v1 ^ 0xFF7FF7FF) + 1506055243) ^ 0xF2A05DA2 ^ ((v1 ^ 0x9F27B34 ^ (v0 - 22322)) - 1354158967);
  STACK[0x10EE0] = &STACK[0x2A78];
  STACK[0x10EE8] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16428)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((61960 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ (v0 - 22306))))(v5);
}

uint64_t sub_100507208(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 11473;
  v3 = STACK[0xACC4];
  v4 = ((STACK[0xF10] ^ 0xB8E8) - 6678) ^ 0xE9D5DEAC;
  LODWORD(STACK[0xED0]) = STACK[0xACC4];
  return (*(STACK[0xF18] + 8 * ((7 * (v3 == v4)) ^ v2)))(a1, a2, STACK[0x8F0], STACK[0xE58], STACK[0x8E8], STACK[0xE50], STACK[0x8E0]);
}

uint64_t sub_100507274()
{
  v1 = 353670337 * (((~&STACK[0x10ED8] | 0x2A28407D6AB49DB6) + (&STACK[0x10ED8] | 0xD5D7BF82954B6249)) ^ 0x25460909216A9A75);
  LODWORD(STACK[0x10ED8]) = v1 + v0 - 16209;
  LODWORD(STACK[0x10EF0]) = v1 - 1701013927;
  STACK[0x10EE8] = v1 + 0x31B495479FA32553;
  STACK[0x10EE0] = 0x2CB8161969575A1DLL - v1;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 34318)))(&STACK[0x10ED8]);
  v3 = *STACK[0x8E58];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * &STACK[0x10ED8]) | 0x2CAE2F34) - &STACK[0x10ED8] - 374806426) ^ 0xF0710C55) + 296771220;
  STACK[0x10ED8] = v3;
  (*(v2 + 8 * (v0 ^ 0x8EBC)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762643175) ^ (906386353 * (((&STACK[0x10ED8] | 0xF8DC943F) - (&STACK[0x10ED8] | 0x7236BC0) + 119761856) ^ 0xC9DD591B));
  v4 = (*(v2 + 8 * (v0 + 34371)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*STACK[0x970] < 1) * ((v0 ^ 0x6D57) + v0 + 11083 - 38891)) ^ v0)))(v4);
}

uint64_t sub_10050745C()
{
  v1 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 13434)))();
}

uint64_t sub_100507784()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 3989) | v0)))();
}

uint64_t sub_1005077BC()
{
  v0 = STACK[0xF10] - 28485;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005077F0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x7690] = a1 - 32;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393360;
  return (*(STACK[0xF18] + 8 * ((v2 + 398100833) ^ 0x17BB0D5D ^ (10823 * ((v2 + 398100833) > 0x95EE2761)))))();
}

uint64_t sub_100507870()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2318)))();
}

uint64_t sub_1005078E0()
{
  LODWORD(STACK[0x7998]) = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x973B)))(v0 ^ 0xE9D5C711);
  STACK[0x61A8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((v1 + 11672) ^ 0xECBC ^ (v1 + 1778879020) & 0x95F87FBF)) | v1)))();
}

uint64_t sub_1005079B8()
{
  v6 = ((v1 + 119) ^ 0xFF61) & (2 * ((v1 + 119) & 0xFF8A)) ^ (v1 + 119) & 0xFF8A;
  v7 = ((((v1 + 308150391) ^ 0x46353B61) << ((v3 - 32) ^ 0x1B)) ^ 0x572989D6) & ((v1 + 308150391) ^ 0x46353B61) ^ (((v1 + 308150391) ^ 0x46353B61) << ((v3 - 32) ^ 0x1B)) & 0xAB94C4EA;
  v8 = v7 ^ 0x4429;
  LOWORD(v7) = (v7 ^ 0x8040) & (4 * v6) ^ v6;
  v9 = ((4 * v8) ^ 0x13AC) & v8 ^ (4 * v8) & 0xC4E8;
  LOWORD(v7) = v7 ^ 0xC4EB ^ (v9 ^ 0xA0) & (16 * v7);
  v10 = (v1 + 119) ^ (2 * ((v7 << 8) & 0x4400 ^ v7 ^ ((v7 << 8) ^ 0x6B00) & (((16 * (v9 ^ 0xC443)) ^ 0x4E00) & (v9 ^ 0xC443) ^ (16 * (v9 ^ 0xC443)) & 0xC400)));
  v11 = 139493411 * (((v4 | 0x791A3DC8) - v4 + (v4 & 0x86E5C230)) ^ 0x7537DC8D);
  v12 = *STACK[0xED0];
  LOWORD(STACK[0x10EFC]) = -32733 * (((v4 | 0x3DC8) - v4 + (v4 & 0xC230)) ^ 0xDC8D) + 20824 + (((v10 ^ 0xFDE8) + 4172) ^ ((v10 ^ 0xF0B3) + 7441) ^ ((v10 ^ 0xFB07) + 5797));
  LODWORD(STACK[0x10ED8]) = v3 - v11 + 12558;
  LODWORD(STACK[0x10EF8]) = v11 + v5;
  LODWORD(STACK[0x10EE8]) = v11 - 231256020;
  STACK[0x10EE0] = &STACK[0x288C];
  STACK[0x10EF0] = v12;
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v3 ^ 0x4B39)))(&STACK[0x10ED8]);
  if (LODWORD(STACK[0x10F00]) == 1497668682)
  {
    v15 = -371865839;
  }

  else
  {
    v15 = STACK[0x288C];
  }

  *(*(*v0 + 72 * v2 + 32) + 4 * v1) = v15;
  return (*(v13 + 8 * v3))(v14);
}

uint64_t sub_100507CD0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  STACK[0x79E8] = 0;
  return (*(v1 + 8 * (v0 - 14991)))(v2);
}

uint64_t sub_100507D3C()
{
  v0 = (STACK[0xF10] - 7979) | 0x128B;
  v1 = STACK[0xF10] - 32147;
  STACK[0x6398] = STACK[0x3F28] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 23174) ^ v1)))();
}

uint64_t sub_100507DA8@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBB30] = 0;
  STACK[0xBB38] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBB30] | v13);
  *(&STACK[0xBB30] | v13) = STACK[0xBB37];
  v17 = *(&STACK[0xBB30] | v14);
  *(&STACK[0xBB30] | v14) = STACK[0xBB36];
  v18 = *(&STACK[0xBB30] | v15);
  *(&STACK[0xBB30] | v15) = STACK[0xBB35];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBB37]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBB36]) = v17;
  LOBYTE(STACK[0xBB35]) = v18;
  v23 = STACK[0xBB30];
  LOBYTE(STACK[0xBB30]) = STACK[0xBB34];
  LOBYTE(STACK[0xBB34]) = v23;
  v24 = *(&STACK[0xBB30] | v20);
  *(&STACK[0xBB30] | v20) = STACK[0xBB33];
  LOBYTE(STACK[0xBB33]) = v24;
  v25 = STACK[0xBB31];
  LOBYTE(STACK[0xBB32]) = STACK[0xBB30];
  LOWORD(STACK[0xBB30]) = v25;
  STACK[0xBB30] = vmla_s32(v22, STACK[0xBB30], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBB38];
  v27 = (553300517 * STACK[0xBB38]) ^ v12;
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
  v48 = *(&STACK[0xBB38] + v13);
  *(&STACK[0xBB38] + v13) = STACK[0xBB3F];
  LOBYTE(STACK[0xBB3F]) = v48;
  v49 = *(&STACK[0xBB38] + v14);
  *(&STACK[0xBB38] + v14) = STACK[0xBB3E];
  LOBYTE(STACK[0xBB3E]) = v49;
  v50 = *(&STACK[0xBB38] + v15);
  *(&STACK[0xBB38] + v15) = STACK[0xBB3D];
  LOBYTE(STACK[0xBB3D]) = v50;
  v51 = STACK[0xBB38];
  LOBYTE(STACK[0xBB38]) = STACK[0xBB3C];
  LOBYTE(STACK[0xBB3C]) = v51;
  v52 = *(&STACK[0xBB38] + v20);
  *(&STACK[0xBB38] + v20) = STACK[0xBB3B];
  LOBYTE(STACK[0xBB3B]) = v52;
  v53 = STACK[0xBB39];
  LOBYTE(STACK[0xBB3A]) = STACK[0xBB38];
  LOWORD(STACK[0xBB38]) = v53;
  STACK[0xBB38] = vmla_s32(v22, STACK[0xBB38], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBB38] ^ STACK[0xBB30];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100508250()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] - 1831842132) & 0x6D2FEE5E;
  v3 = STACK[0xF10] - 1309203045;
  LODWORD(STACK[0x107C]) = v0;
  v4 = STACK[0x80E0];
  v5 = (v2 - 371917109) ^ (16 * LODWORD(STACK[0x1958]));
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v4;
  LODWORD(STACK[0x655C]) = v5;
  LODWORD(STACK[0x884C]) = -999452218;
  return (*(STACK[0xF18] + 8 * ((1211 * (v3 > 0x273F7E09)) ^ (v1 - 31117))))();
}

uint64_t sub_1005082EC()
{
  v1 = STACK[0xF10] - 8346;
  v2 = *(v0 + 8);
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] + 703890706) ^ (634647737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x100FE228) - 1878007252) ^ 0xFD99CDD0));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 24609)))(&STACK[0x10ED8]);
  v4 = *(v0 + 96);
  v5 = STACK[0x4200];
  v6 = 17902189 * ((~&STACK[0x10ED8] & 0x855BDD52 | &STACK[0x10ED8] & 0x7AA422A8) ^ 0xB14CB42);
  STACK[0x10ED8] = STACK[0x5BE8];
  LODWORD(STACK[0x10EE0]) = v6 + v1 + 3584;
  LODWORD(STACK[0x10EE4]) = v5 - v6;
  STACK[0x10EE8] = &STACK[0x1018];
  STACK[0x10EF0] = v4;
  (*(v3 + 8 * (v1 + 24980)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = *(v0 + 8);
  LODWORD(STACK[0x10ED8]) = v1 - 193924789 * (&STACK[0x10ED8] ^ 0xB6BB3266) + 60357838;
  v7 = (*(v3 + 8 * (v1 + 24680)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v7);
}

uint64_t sub_100508468@<X0>(int a1@<W8>)
{
  v4 = v1 - 1;
  *(v2 + v4) = *(v3 + v4);
  return (*(STACK[0xF18] + 8 * (((4 * (v4 != 0)) | (32 * (v4 != 0))) ^ a1)))();
}

uint64_t sub_100508590()
{
  STACK[0x10EE0] = &STACK[0x6D30];
  LODWORD(STACK[0x10ED8]) = (v0 - 403218333) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0x3DB00FAC) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC24FF050)) ^ 0xDB961463));
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 18425)))(&STACK[0x10ED8]);
  v2 = (*(v1 + 8 * (v0 + 18491)))(STACK[0x698] - 925571059, STACK[0x768] - 1383350530, 16, *(&off_1010A0B50 + v0 - 31731) - 1423979070, &STACK[0x6D30], 2);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10050869C()
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
  STACK[0xC180] = 0;
  STACK[0xC188] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC180] | v10);
  *(&STACK[0xC180] | v10) = 0;
  LOBYTE(STACK[0xC187]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC180] | v12);
  *(&STACK[0xC180] | v12) = STACK[0xC186];
  LOBYTE(STACK[0xC186]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC180] | v14);
  *(&STACK[0xC180] | v14) = STACK[0xC185];
  LOBYTE(STACK[0xC185]) = v15;
  v16 = STACK[0xC180];
  LOBYTE(STACK[0xC180]) = STACK[0xC184];
  LOBYTE(STACK[0xC184]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC180] | v17);
  *(&STACK[0xC180] | v17) = STACK[0xC183];
  LOBYTE(STACK[0xC183]) = v18;
  v19 = STACK[0xC181];
  LOBYTE(STACK[0xC182]) = STACK[0xC180];
  LOWORD(STACK[0xC180]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC180] = vmla_s32(v22, STACK[0xC180], vdup_n_s32(0x1000193u));
  STACK[0xC188] ^= STACK[0xC180];
  STACK[0xC188] = vmul_s32(vsub_s32(STACK[0xC188], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC18A];
  LOWORD(STACK[0xC189]) = STACK[0xC188];
  LOBYTE(STACK[0xC188]) = v23;
  v24 = (&STACK[0xC188] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC18B];
  LOBYTE(STACK[0xC18B]) = v19;
  LOBYTE(v24) = STACK[0xC188];
  LOBYTE(STACK[0xC188]) = STACK[0xC18C];
  LOBYTE(STACK[0xC18C]) = v24;
  v25 = (&STACK[0xC188] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC18D];
  LOBYTE(STACK[0xC18D]) = v24;
  v26 = (&STACK[0xC188] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC18E];
  LOBYTE(STACK[0xC18E]) = v25;
  v27 = (&STACK[0xC188] | v10);
  v28 = *v27;
  *v27 = STACK[0xC18F];
  LOBYTE(STACK[0xC18F]) = v28;
  v29 = STACK[0xC188];
  v30 = (553300517 * STACK[0xC188]) ^ v9;
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
  *v43 = STACK[0xC188];
  return (*(STACK[0xF18] + 8 * (v1 - 19205)))(v48, v49);
}

uint64_t sub_100508B80@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xAB08]) = a1 | 4;
  v5 = (((v2 ^ 0x903754EF) + 1875421969) ^ ((v2 ^ 0x76A77DD5) - 1990688213) ^ ((((v1 ^ 0x527) + 256202555) ^ v2) - 256241195)) - 1117489399;
  v8 = v5 > 0xD38EAFF7 && (a1 | 0xD38EAFFC) > v5 || v4 < 2;
  if (v8)
  {
    v3 = 371891407;
  }

  LODWORD(STACK[0xAB0C]) = v3;
  return (*(STACK[0xF18] + 8 * ((51 * !v8) ^ v1)))();
}

uint64_t sub_100508C54()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x33C0];
  LODWORD(STACK[0x35EC]) = 1693393314;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100508C94()
{
  v0 = STACK[0xF10] - 10546;
  *STACK[0x3CB8] += ((STACK[0xF10] + 8782) ^ 0xCF80) - 25096;
  return (*(STACK[0xF18] + 8 * ((90 * (STACK[0x4AE8] != 0)) ^ v0)))();
}

uint64_t sub_100508CF0()
{
  v0 = STACK[0xF10] - 2333;
  v1 = STACK[0xF10] - 32640;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 30310 + v1)))();
}

uint64_t sub_100508D38()
{
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((((&STACK[0x10000] + 3800) | 0x59969C83) + (~(&STACK[0x10000] + 3800) | 0xA669637C)) ^ 0xEF2DAEE4) + 60349492;
  STACK[0x10EE0] = STACK[0x818];
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4032)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 18597)))(v2);
}

uint64_t sub_100508DC4()
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
  STACK[0xC170] = 0;
  STACK[0xC178] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC170] | v10);
  *(&STACK[0xC170] | v10) = 0;
  LOBYTE(STACK[0xC177]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC170] | v12);
  *(&STACK[0xC170] | v12) = STACK[0xC176];
  LOBYTE(STACK[0xC176]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC170] | v14);
  *(&STACK[0xC170] | v14) = STACK[0xC175];
  LOBYTE(STACK[0xC175]) = v15;
  v16 = STACK[0xC170];
  LOBYTE(STACK[0xC170]) = STACK[0xC174];
  LOBYTE(STACK[0xC174]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC170] | v17);
  *(&STACK[0xC170] | v17) = STACK[0xC173];
  LOBYTE(STACK[0xC173]) = v18;
  v19 = STACK[0xC171];
  LOBYTE(STACK[0xC172]) = STACK[0xC170];
  LOWORD(STACK[0xC170]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC170] = vmla_s32(v22, STACK[0xC170], vdup_n_s32(0x1000193u));
  STACK[0xC178] ^= STACK[0xC170];
  STACK[0xC178] = vmul_s32(vsub_s32(STACK[0xC178], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC17A];
  LOWORD(STACK[0xC179]) = STACK[0xC178];
  LOBYTE(STACK[0xC178]) = v23;
  v24 = (&STACK[0xC178] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC17B];
  LOBYTE(STACK[0xC17B]) = v19;
  LOBYTE(v24) = STACK[0xC178];
  LOBYTE(STACK[0xC178]) = STACK[0xC17C];
  LOBYTE(STACK[0xC17C]) = v24;
  v25 = (&STACK[0xC178] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC17D];
  LOBYTE(STACK[0xC17D]) = v24;
  v26 = (&STACK[0xC178] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC17E];
  LOBYTE(STACK[0xC17E]) = v25;
  v27 = (&STACK[0xC178] | v10);
  v28 = *v27;
  *v27 = STACK[0xC17F];
  LOBYTE(STACK[0xC17F]) = v28;
  v29 = STACK[0xC178];
  v30 = (553300517 * STACK[0xC178]) ^ v9;
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
  *v43 = STACK[0xC178];
  return (*(STACK[0xF18] + 8 * (v1 - 7272)))(v48, v49);
}

uint64_t sub_10050924C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F7E)))();
}

uint64_t sub_100509330@<X0>(uint64_t a1@<X8>)
{
  v2 = (((a1 ^ 0x7A2BC4A6CAB84FB6) - 0x7A2BC4A6CAB84FB6) ^ ((a1 ^ 0xE9E734A02281D894) + 0x1618CB5FDD7E276CLL) ^ (((((v1 + 23821) | 0x920u) - 0x6C330FF9FE143B08) ^ a1) + 0x6C330FF9FE13AFCDLL)) - 0x137CAFEFDC529EABLL;
  v3 = (v2 ^ 0x37A2FEAC42E653DLL) & (2 * (v2 & 0x137CAFF0C62865B8)) ^ v2 & 0x137CAFF0C62865B8;
  v4 = ((2 * (((v1 - 6614) | 0x8003u) ^ 0x5C237EA483E2F16 ^ v2)) ^ 0x2D7D30351C2D832ALL) & (((v1 - 6614) | 0x8003u) ^ 0x5C237EA483E2F16 ^ v2) ^ (2 * (((v1 - 6614) | 0x8003u) ^ 0x5C237EA483E2F16 ^ v2)) & 0x16BE981A8E16C194;
  v5 = v4 ^ 0x1282880A82124095;
  v6 = (v4 ^ 0x434100008008100) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x5AFA606A385B0654) & v5 ^ (4 * v5) & 0x16BE981A8E16C194;
  v8 = (v7 ^ 0x12BA000A08120000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x40498108604C181)) ^ 0x6BE981A8E16C1950) & (v7 ^ 0x40498108604C181) ^ (16 * (v7 ^ 0x40498108604C181)) & 0x16BE981A8E16C190;
  v10 = (v9 ^ 0x2A8800880040100) & (v8 << 8) ^ v8;
  v11 = (((v9 ^ 0x141618120E12C085) << 8) ^ 0xBE981A8E16C19500) & (v9 ^ 0x141618120E12C085) ^ ((v9 ^ 0x141618120E12C085) << 8) & 0x16BE981A8E16C100;
  v12 = v10 ^ 0x16BE981A8E16C195 ^ (v11 ^ 0x1698180A06000000) & (v10 << 16);
  v13 = v2 ^ (2 * ((v12 << 32) & 0x16BE981A00000000 ^ v12 ^ ((v12 << 32) ^ 0xE16C19500000000) & (((v11 ^ 0x26801088164095) << 16) & 0x16BE981A00000000 ^ 0x6A4100800000000 ^ (((v11 ^ 0x26801088164095) << 16) ^ 0x181A8E1600000000) & (v11 ^ 0x26801088164095))));
  STACK[0xAD48] = v13 ^ 0x997ECB9D9FB93100;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v1 + 42378)))(v13 ^ 0xDA05E692);
  STACK[0x8890] = v15;
  return (*(v14 + 8 * ((50 * (v15 == 0)) ^ v1)))();
}

uint64_t sub_1005096DC@<X0>(int a1@<W8>)
{
  v4 = (((v3 ^ 0xE161FEF5) + 513635792 + ((a1 - 109056076) & 0x67FFBBB)) ^ ((v3 ^ 0x7ADD19EA) - 2061310442) ^ ((v3 ^ 0x72690761 ^ (a1 - 30812)) - 1919492110)) - 42104417;
  v5 = ((v2 + 329761459) < 0x13A7C28E) ^ (v4 < 0x13A7C28E);
  v6 = v2 + 329761459 > v4;
  if (v5)
  {
    v6 = (v2 + 329761459) < 0x13A7C28E;
  }

  return (*(STACK[0xF18] + 8 * ((37 * ((v1 | v6) ^ 1)) ^ a1)))();
}

uint64_t sub_1005097C4()
{
  *v2 = *(v1 + 60);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x76E ^ (19 * (v0 ^ 0x65F)))))();
}

uint64_t sub_100509818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v9 = 0;
  v10 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  v16 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  v17 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v16 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v16;
  v18 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v17 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v17;
  STACK[0xBB10] = 0;
  STACK[0xBB18] = v7;
  v19 = 16777619 * ((553300517 * v18 + 7) ^ (553300517 * v18)) % 7;
  v20 = 16777619 * ((553300517 * v18 + 6) ^ (553300517 * v18)) % 6;
  v21 = 16777619 * ((553300517 * v18 + 5) ^ (553300517 * v18)) % 5;
  v22 = *(&STACK[0xBB10] | v19);
  *(&STACK[0xBB10] | v19) = STACK[0xBB17];
  v23 = *(&STACK[0xBB10] | v20);
  *(&STACK[0xBB10] | v20) = STACK[0xBB16];
  v24 = *(&STACK[0xBB10] | v21);
  *(&STACK[0xBB10] | v21) = STACK[0xBB15];
  v25 = vdup_n_s32(553300517 * v18);
  v26 = 16777619 * ((553300517 * v18 + 3) ^ (553300517 * v18)) % 3;
  v27.i32[0] = v25.i32[0];
  v27.i32[1] = 553300517 * v18 + 1;
  LOBYTE(STACK[0xBB17]) = v22;
  v28 = veor_s8(vmul_s32(v27, v25), v25);
  LOBYTE(STACK[0xBB16]) = v23;
  LOBYTE(STACK[0xBB15]) = v24;
  v29 = STACK[0xBB10];
  LOBYTE(STACK[0xBB10]) = STACK[0xBB14];
  LOBYTE(STACK[0xBB14]) = v29;
  v30 = *(&STACK[0xBB10] | v26);
  *(&STACK[0xBB10] | v26) = STACK[0xBB13];
  LOBYTE(STACK[0xBB13]) = v30;
  v31 = STACK[0xBB11];
  LOBYTE(STACK[0xBB12]) = STACK[0xBB10];
  LOWORD(STACK[0xBB10]) = v31;
  STACK[0xBB10] = vmla_s32(v28, STACK[0xBB10], vdup_n_s32(0x1000193u));
  v32 = STACK[0xBB18];
  v33 = (553300517 * STACK[0xBB18]) ^ v18;
  v34 = vdupq_n_s32(v33);
  v35 = xmmword_100BC7620;
  v36 = xmmword_100BC7630;
  v37 = xmmword_100BC7640;
  v38 = xmmword_100BC7650;
  v39.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v40.i64[0] = 0x9393939393939393;
  v40.i64[1] = 0x9393939393939393;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  do
  {
    v42 = *(v32 + v9);
    v62.val[1] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7690), veorq_s8(v34, vmulq_s32(vaddq_s32(v37, v34), vsubq_s32(v37, v34))));
    v62.val[0] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC76A0), veorq_s8(v34, vmulq_s32(vaddq_s32(v38, v34), vsubq_s32(v38, v34))));
    v62.val[2] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7680), veorq_s8(v34, vmulq_s32(vaddq_s32(v36, v34), vsubq_s32(v36, v34))));
    v62.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7670), v34), vmulq_s32(vaddq_s32(v35, v34), vsubq_s32(v35, v34)));
    *(v32 + v9) = vmulq_s8(vqtbl4q_s8(v62, xmmword_100BC7660), v40);
    v9 += 16;
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
    v35 = vaddq_s32(v35, v41);
  }

  while (v9 != 576);
  v43 = 0;
  v44 = xmmword_100F52AE0;
  v45 = vdupq_n_s32(v33);
  v46 = xmmword_100F52AF0;
  v47 = v32 + 576;
  v48.i64[0] = 0x800000008;
  v48.i64[1] = 0x800000008;
  do
  {
    v39.i64[0] = *(v47 + v43);
    v61.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v39, xmmword_100BC7690), v45), vmulq_s32(vaddq_s32(v44, v45), vsubq_s32(v44, v45)));
    v61.val[0] = veorq_s8(vqtbl1q_s8(v39, xmmword_100BC76A0), veorq_s8(v45, vmulq_s32(vaddq_s32(v46, v45), vsubq_s32(v46, v45))));
    v39 = vqtbl2q_s8(v61, xmmword_100F52AD0);
    *(v47 + v43) = vmul_s8(*v39.i8, 0x9393939393939393);
    v46 = vaddq_s32(v46, v48);
    v44 = vaddq_s32(v44, v48);
    v43 += 8;
  }

  while (v43 != 8);
  v49 = 72;
  do
  {
    v50 = 16777619 * ((v33 + v49) ^ v33) % v49;
    v51 = *(v32 + 8 * v50) ^ *(v32 + 8 * v49);
    *(v32 + 8 * v49) = v51;
    v52 = *(v32 + 8 * v50) ^ v51;
    *(v32 + 8 * v50) = v52;
    *(v32 + 8 * v49) ^= v52;
    v53 = v49-- + 1;
  }

  while (v53 > 2);
  v54 = *(&STACK[0xBB18] + v19);
  *(&STACK[0xBB18] + v19) = STACK[0xBB1F];
  LOBYTE(STACK[0xBB1F]) = v54;
  v55 = *(&STACK[0xBB18] + v20);
  *(&STACK[0xBB18] + v20) = STACK[0xBB1E];
  LOBYTE(STACK[0xBB1E]) = v55;
  v56 = *(&STACK[0xBB18] + v21);
  *(&STACK[0xBB18] + v21) = STACK[0xBB1D];
  LOBYTE(STACK[0xBB1D]) = v56;
  v57 = STACK[0xBB18];
  LOBYTE(STACK[0xBB18]) = STACK[0xBB1C];
  LOBYTE(STACK[0xBB1C]) = v57;
  v58 = *(&STACK[0xBB18] + v26);
  *(&STACK[0xBB18] + v26) = STACK[0xBB1B];
  LOBYTE(STACK[0xBB1B]) = v58;
  v59 = STACK[0xBB19];
  LOBYTE(STACK[0xBB1A]) = STACK[0xBB18];
  LOWORD(STACK[0xBB18]) = v59;
  STACK[0xBB18] = vmla_s32(v28, STACK[0xBB18], vdup_n_s32(0x1000193u));
  *a7 = STACK[0xBB18] ^ STACK[0xBB10];
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_100509CC0(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x9228] + 22;
  LOWORD(STACK[0x79DE]) = 7078;
  LODWORD(STACK[0x16B4]) = 1922304491;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100509D7C@<X0>(int a1@<W8>)
{
  v3 = STACK[0x1A20];
  STACK[0xED0] = STACK[0x1A20];
  v4 = STACK[0x9C50];
  v4[56] = *(v3 + v1);
  v4 += 56;
  *v2 = (((a1 - 38405) | 0x4406) ^ 0x4D67) + v1;
  STACK[0xAC30] = v4;
  v5 = *v4 == ((a1 + 547771513) & 0x7F ^ 0x5E);
  return (*(STACK[0xF18] + 8 * ((v5 | (8 * v5)) ^ a1)))();
}

uint64_t sub_100509E34()
{
  LODWORD(STACK[0xABB0]) = v5;
  v7 = v5 + 364431104 + (((*v6 ^ 0x2DAA8A0E) - 766151182) ^ ((*v6 ^ 0x1201209) - 18878985) ^ ((*v6 ^ 0xC55F5F16) + 983605482));
  v8 = (((v4 ^ 0x50D7B34A) - 1356313418) ^ ((v4 ^ 0x6BB65965) - 1807112549) ^ ((((v0 ^ 0xE357) + 759910192) ^ v0 ^ 0x62C5) + (v4 ^ 0xD2B42D3E))) + 364431104;
  v9 = v7 < 0x2BE2FFEF;
  v10 = v7 > v8;
  if (v8 < 0x2BE2FFEF != v9)
  {
    v10 = v9;
  }

  if (!v10)
  {
    v1 = v3;
  }

  LODWORD(STACK[0xABB4]) = v1;
  return (*(STACK[0xF18] + 8 * ((63558 * (v1 == v2)) ^ v0)))();
}

uint64_t sub_100509F70()
{
  v0 = STACK[0xF10];
  STACK[0x57F0] = &STACK[0x7B50];
  STACK[0xA2E0] = &STACK[0x1490];
  return (*(STACK[0xF18] + 8 * (v0 - 29888)))();
}

uint64_t sub_10050A10C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 136813908)))(LODWORD(STACK[0x1544]));
  return (*(v1 + 8 * ((486 * (v0 <= ((v0 - 136862790) ^ 0xA73A2434))) ^ (v0 - 136859488))))(v2);
}

uint64_t sub_10050A34C@<X0>(int a1@<W8>)
{
  *(v3 + 1548) = v2;
  *(v3 + 1544) = a1;
  return (*(STACK[0xF18] + 8 * (v1 - 11341)))();
}

uint64_t sub_10050A36C()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x2358];
  STACK[0x5D28] = &STACK[0x9614];
  LODWORD(STACK[0x4704]) = 1715818725;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10050A440()
{
  STACK[0x3AE8] = 0;
  LODWORD(STACK[0x310C]) = -371865839;
  STACK[0x4468] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10050A488()
{
  *(v1 + 744) = 128;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF55B)))(128);
  STACK[0x5480] = v3;
  *(v1 + 736) = v3;
  return (*(v2 + 8 * (((v3 != 0) * (v0 ^ 0x4009)) ^ v0)))();
}

uint64_t sub_10050A4E0()
{
  v0 = STACK[0xF10] + 13083;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x41A3)))((32 * LODWORD(STACK[0x8154])) ^ 0x3AB8E220u);
  STACK[0x1E60] = v2;
  return (*(v1 + 8 * ((51 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10050A544()
{
  v0 = STACK[0xF10] - 32514;
  LODWORD(STACK[0x67A8]) = (STACK[0xF10] ^ 0x925) - 33294 + LODWORD(STACK[0x6AD4]);
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x18E8)))();
}

uint64_t sub_10050A618@<X0>(int a1@<W8>)
{
  *(v4 + 2192) = v1;
  v5 = v1 + 1361696347;
  v6 = (((v3 ^ 0xDEDB758E) + ((a1 - 86980681) & 0x52EB7EF ^ 0x21248D9A)) ^ ((v3 ^ 0x7C5DA52E) - 2086511918) ^ (((a1 + 254359467) & 0xF0D65F73 ^ v3 ^ 0x4B5308D1) - 1263736753)) + 989830508;
  v7 = v1 > 0xAED629A4;
  v8 = v7 ^ (v6 < 0x5129D65B);
  v9 = v5 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    v2 = 371891407;
  }

  *(v4 + 2196) = v2;
  return (*(STACK[0xF18] + 8 * ((13 * (v2 != -371865839)) ^ a1)))();
}

uint64_t sub_10050A754@<X0>(uint64_t a1@<X8>)
{
  *v3 = *(a1 + 280);
  *(v4 + 604) = *(a1 + 284);
  return (*(STACK[0xF18] + 8 * (((STACK[0xEC0] + v2 + a1 + ((v1 - 1094545374) & 0x413D6FDE ^ 0xFFFFFFFFFFFFB70ALL) > 0x1F) * (((v1 - 1121824339) & 0x42DD7CEF) - 6243)) ^ v1)))();
}

uint64_t sub_10050A7E0()
{
  v3 = (*(STACK[0xAC60] + (v0 - 993499371)) ^ 0xDF) + ((2 * *(STACK[0xAC60] + (v0 - 993499371))) & 0xBF) + 123;
  *(v2 + 26) = v3;
  *v2 = v0 + v1 - 31887;
  return (*(STACK[0xF18] + 8 * ((52749 * ((((v1 + 98) | 0x81) + v3 + 35) < 6u)) ^ v1)))();
}

uint64_t sub_10050A870()
{
  v0 = STACK[0xF10] - 12975;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x8560]);
  STACK[0x8560] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10050A8B0()
{
  v3 = (((LODWORD(STACK[0x5798]) ^ 0xBCB506BC) + 1128986948) ^ ((LODWORD(STACK[0x5798]) ^ 0xB096C120) + 1332297440) ^ (((v1 + 32169) ^ 0xE5F68BB6 ^ LODWORD(STACK[0x5798])) + 436862835)) - LODWORD(STACK[0xB330]) - 863655108;
  LODWORD(STACK[0x5798]) = v3 ^ ((v3 ^ 0xE46E894C) + 1623263607) ^ ((v3 ^ 0x9C79BE9) - 1922556972) ^ ((v3 ^ 0x6906929E) - 307686747) ^ ((v3 ^ 0xFFFFFFFE) + 2068873157) ^ 0x9285B8D4;
  LODWORD(STACK[0xB334]) = -371865839;
  LOBYTE(STACK[0xB33B]) = 1;
  LODWORD(STACK[0xA4D0]) = v0 + v2 + 431723984;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1412)))();
}

uint64_t sub_10050AA18()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x5006)))();
  *(v0 + 656) = 0;
  *(v0 + 664) = -371865839;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10050AA4C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 24) = v4;
  *(v3[3] + 32) = v3[4];
  *(a1 + 8) += v3[1] + ((v1 - 43743) ^ 0xC31DA1F13ADFE9D3);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10050AB08()
{
  STACK[0x3D58] = STACK[0x1258];
  STACK[0x4378] = &STACK[0x3D58];
  LODWORD(STACK[0x8A84]) = 1091770581;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10050AB54()
{
  STACK[0x8FA8] = STACK[0xDA0];
  STACK[0x1DA8] = STACK[0xD20];
  STACK[0x43B8] = STACK[0xD00];
  STACK[0x9538] = STACK[0xAF0];
  STACK[0x23A8] = STACK[0xB20];
  STACK[0x7B60] = STACK[0xB30];
  STACK[0x4060] = v3;
  STACK[0x5238] = STACK[0xB10];
  STACK[0x6D98] = STACK[0xB00];
  STACK[0x8758] = STACK[0xAE8];
  STACK[0x91D0] = v4;
  STACK[0x5700] = v0;
  STACK[0x95E8] = v1;
  STACK[0x4B80] = STACK[0xC80];
  STACK[0x4218] = STACK[0xC90];
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10050ABFC()
{
  v0 = STACK[0xF10];
  STACK[0x95B8] = STACK[0x57D0] + 16;
  return (*(STACK[0xF18] + 8 * (v0 - 29290)))();
}

uint64_t sub_10050AC74()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF265)))((v0 - 101));
  *STACK[0x7D60] = v3;
  return (*(v2 + 8 * ((511 * (((v3 == 0) ^ (v1 - 122)) & 1)) ^ v1)))();
}

uint64_t sub_10050ACD4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x942C]) = v1 + a1;
  v3 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((v2 ^ 0x1AFD) + v2)))();
}

uint64_t sub_10050AF84()
{
  v1 = v0 ^ 0x76B0;
  v2 = STACK[0x2958];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393299;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10050B004()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1010)))();
}

uint64_t sub_10050B100()
{
  v1 = *(STACK[0x2CA8] + 264) == 0;
  STACK[0x7080] = STACK[0x2CA8] + 264;
  return (*(STACK[0xF18] + 8 * (((((v0 - 30) ^ v1) & 1) * ((v0 - 1186) ^ 0x8B0F)) ^ v0)))();
}

uint64_t sub_10050B1BC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = ((v6 + v8) ^ v10) + a5;
  v13 = (a2 < v11) ^ (v12 < ((v6 + v8) & v9) + v5);
  v14 = v12 < a2;
  if (v13)
  {
    v15 = a2 < v11;
  }

  else
  {
    v15 = v14;
  }

  return (*(STACK[0xF18] + 8 * ((v15 * v7) ^ v6)))();
}

uint64_t sub_10050B218()
{
  *(*(*(STACK[0x1E30] + 520) + 8) + 120 * STACK[0x1750] + 8) = *(STACK[0x1E30] + 40);
  v1 = STACK[0xF18];
  STACK[0x7DD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xF573 ^ (v0 + 48697))))();
}

uint64_t sub_10050B280()
{
  LODWORD(STACK[0x5AFC]) = v1;
  v2 = STACK[0x9678];
  *(v2 + 40) = (((v1 ^ 0x48AB80D9) + ((v0 + 1598) ^ 0xB754F41C)) ^ ((v1 ^ 0x282718F) - 42103183) ^ (((v0 - 1441728287) & 0x55EEFBB3) + 1543720999 + (v1 ^ 0xA3FC3647))) - 371865852;
  v2 += 40;
  STACK[0x22C8] = v2;
  v3 = LODWORD(STACK[0x8FB4]);
  *(v2 - 16) = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4E65)))();
  v6 = STACK[0x2128];
  *STACK[0x2128] = v5;
  *STACK[0x9690] = (*(v4 + 8 * (v0 ^ 0x4E65)))(v3 ^ 0xE9D5C711);
  STACK[0x4868] = (*(v4 + 8 * (v0 ^ 0x4E65)))(v1 ^ 0xE9D5C711);
  return (*(v4 + 8 * (((*v6 != 0) | (2 * (*v6 != 0))) ^ v0)))();
}

uint64_t sub_10050B448()
{
  v0 = STACK[0xF10] - 29772;
  v1 = STACK[0xF10] - 33762;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x508)))();
}

uint64_t sub_10050B50C()
{
  v0 = STACK[0xF10] - 2333;
  v1 = STACK[0xF10] - 32574;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x8968) + v1)))();
}

uint64_t sub_10050B60C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*STACK[0xE50] + (*v4 & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  LODWORD(v12) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  STACK[0xBF40] = 0;
  STACK[0xBF48] = v3 - 0x10A99C80114D1487;
  v13 = 16777619 * ((-901292213 * v12 + 7) ^ (-901292213 * v12)) % 7;
  v14 = *(&STACK[0xBF40] | v13);
  *(&STACK[0xBF40] | v13) = 0;
  LOBYTE(STACK[0xBF47]) = v14;
  v15 = 16777619 * ((-901292213 * v12 + 6) ^ (-901292213 * v12)) % 6;
  v16 = *(&STACK[0xBF40] | v15);
  *(&STACK[0xBF40] | v15) = STACK[0xBF46];
  LOBYTE(STACK[0xBF46]) = v16;
  v17 = 16777619 * ((-901292213 * v12 + 5) ^ (-901292213 * v12)) % 5;
  v18 = *(&STACK[0xBF40] | v17);
  *(&STACK[0xBF40] | v17) = STACK[0xBF45];
  LOBYTE(STACK[0xBF45]) = v18;
  v19 = STACK[0xBF40];
  LOBYTE(STACK[0xBF40]) = STACK[0xBF44];
  LOBYTE(STACK[0xBF44]) = v19;
  v20 = 16777619 * ((-901292213 * v12 + 3) ^ (-901292213 * v12)) % 3;
  v21 = *(&STACK[0xBF40] | v20);
  *(&STACK[0xBF40] | v20) = STACK[0xBF43];
  LOBYTE(STACK[0xBF43]) = v21;
  v22 = STACK[0xBF41];
  LOBYTE(STACK[0xBF42]) = STACK[0xBF40];
  LOWORD(STACK[0xBF40]) = v22;
  v23 = vdup_n_s32(-901292213 * v12);
  v24.i32[0] = v23.i32[0];
  v24.i32[1] = -901292213 * v12 + 1;
  v25 = veor_s8(vmul_s32(v24, v23), v23);
  STACK[0xBF40] = vmla_s32(v25, STACK[0xBF40], vdup_n_s32(0x1000193u));
  STACK[0xBF48] ^= STACK[0xBF40];
  STACK[0xBF48] = vmul_s32(vsub_s32(STACK[0xBF48], v25), vdup_n_s32(0x359C449Bu));
  v26 = STACK[0xBF4A];
  LOWORD(STACK[0xBF49]) = STACK[0xBF48];
  LOBYTE(STACK[0xBF48]) = v26;
  v27 = (&STACK[0xBF48] | v20);
  LOBYTE(v22) = *v27;
  *v27 = STACK[0xBF4B];
  LOBYTE(STACK[0xBF4B]) = v22;
  LOBYTE(v27) = STACK[0xBF48];
  LOBYTE(STACK[0xBF48]) = STACK[0xBF4C];
  LOBYTE(STACK[0xBF4C]) = v27;
  v28 = (&STACK[0xBF48] | v17);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xBF4D];
  LOBYTE(STACK[0xBF4D]) = v27;
  v29 = (&STACK[0xBF48] | v15);
  LOBYTE(v28) = *v29;
  *v29 = STACK[0xBF4E];
  LOBYTE(STACK[0xBF4E]) = v28;
  v30 = (&STACK[0xBF48] | v13);
  v31 = *v30;
  *v30 = STACK[0xBF4F];
  LOBYTE(STACK[0xBF4F]) = v31;
  v32 = STACK[0xBF48];
  v33 = (-901292213 * STACK[0xBF48]) ^ v12;
  for (i = 1; i != 48; ++i)
  {
    v35 = 16777619 * ((v33 + i) ^ v33) % i;
    v36 = *(v32 + 8 * v35) ^ *(v32 + 8 * i);
    *(v32 + 8 * i) = v36;
    v37 = *(v32 + 8 * v35) ^ v36;
    *(v32 + 8 * v35) = v37;
    *(v32 + 8 * i) ^= v37;
  }

  v38 = 0;
  v39 = xmmword_100BC7620;
  v40 = xmmword_100BC7630;
  v41 = xmmword_100BC7640;
  v42 = xmmword_100BC7650;
  v43.i64[0] = 0x9B009B009B009BLL;
  v43.i64[1] = 0x9B009B009B009BLL;
  v44 = vdupq_n_s32(v33);
  v45.i64[0] = 0x1000000010;
  v45.i64[1] = 0x1000000010;
  do
  {
    v46 = *(v32 + v38);
    v47 = vmovl_high_u8(v46);
    v48 = vmovl_u8(*v46.i8);
    v50.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v44), vsubq_s32(v41, v44)), v44), vmull_high_u16(v48, v43));
    v50.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v44), vsubq_s32(v40, v44)), v44), vmull_u16(*v47.i8, 0x9B009B009B009BLL));
    v50.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v44), vsubq_s32(v42, v44)), v44), vmull_u16(*v48.i8, 0x9B009B009B009BLL));
    v50.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v44), vsubq_s32(v39, v44)), v44), vmull_high_u16(v47, v43));
    *(v32 + v38) = vqtbl4q_s8(v50, xmmword_100BC7660);
    v38 += 16;
    v42 = vaddq_s32(v42, v45);
    v41 = vaddq_s32(v41, v45);
    v40 = vaddq_s32(v40, v45);
    v39 = vaddq_s32(v39, v45);
  }

  while (v38 != 384);
  STACK[0x2140] = STACK[0xBF48] + v2;
  return (*(STACK[0xF18] + 8 * (((((v1 - 14424) | 0x8418) ^ (v1 + 2062710629) & 0x850DEDB3 ^ 0x3977) * (a1 == 0x217E172EFA1E81CLL)) ^ v1)))(v39, v40, v41, v42);
}

uint64_t sub_10050BAF8()
{
  v1 = STACK[0x916C];
  LODWORD(STACK[0x1BA4]) = STACK[0x916C];
  return (*(STACK[0xF18] + 8 * ((48207 * (v1 == ((v0 - 31296) ^ 0xE9D54DA2 ^ (v0 + 1824550903) & 0x933F9F7B))) ^ v0)))();
}

uint64_t sub_10050BB58@<X0>(unsigned int a1@<W8>)
{
  *(STACK[0x9E70] + STACK[0x9E60] + v1 - 1695481806 + a1 + 31693 - 0xCD019CA07A6180ALL) = *(STACK[0xAD10] + v1 - 1695481806 + a1 + 31693);
  v2 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xEC0]) = v1 - 1;
  return v2();
}

uint64_t sub_10050BD94()
{
  v2 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xD67E32E1 | (&STACK[0x10000] + 3800) & 0x2981CD18) ^ 0x3058292E) + 296788570;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCA7A)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x7C4C]) = LODWORD(STACK[0x5D18]) - ((2 * LODWORD(STACK[0x5D18])) & 0xD3AB8E22) - 371865839;
  return (*(v3 + 8 * (((v1 == -371865839) * ((v0 + 35467) ^ 0x24C9)) ^ v0)))(v4);
}

uint64_t sub_10050BF10()
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
  STACK[0xC140] = 0;
  STACK[0xC148] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC140] | v10);
  *(&STACK[0xC140] | v10) = 0;
  LOBYTE(STACK[0xC147]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC140] | v12);
  *(&STACK[0xC140] | v12) = STACK[0xC146];
  LOBYTE(STACK[0xC146]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC140] | v14);
  *(&STACK[0xC140] | v14) = STACK[0xC145];
  LOBYTE(STACK[0xC145]) = v15;
  v16 = STACK[0xC140];
  LOBYTE(STACK[0xC140]) = STACK[0xC144];
  LOBYTE(STACK[0xC144]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC140] | v17);
  *(&STACK[0xC140] | v17) = STACK[0xC143];
  LOBYTE(STACK[0xC143]) = v18;
  v19 = STACK[0xC141];
  LOBYTE(STACK[0xC142]) = STACK[0xC140];
  LOWORD(STACK[0xC140]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC140] = vmla_s32(v22, STACK[0xC140], vdup_n_s32(0x1000193u));
  STACK[0xC148] ^= STACK[0xC140];
  STACK[0xC148] = vmul_s32(vsub_s32(STACK[0xC148], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC14A];
  LOWORD(STACK[0xC149]) = STACK[0xC148];
  LOBYTE(STACK[0xC148]) = v23;
  v24 = (&STACK[0xC148] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC14B];
  LOBYTE(STACK[0xC14B]) = v19;
  LOBYTE(v24) = STACK[0xC148];
  LOBYTE(STACK[0xC148]) = STACK[0xC14C];
  LOBYTE(STACK[0xC14C]) = v24;
  v25 = (&STACK[0xC148] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC14D];
  LOBYTE(STACK[0xC14D]) = v24;
  v26 = (&STACK[0xC148] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC14E];
  LOBYTE(STACK[0xC14E]) = v25;
  v27 = (&STACK[0xC148] | v10);
  v28 = *v27;
  *v27 = STACK[0xC14F];
  LOBYTE(STACK[0xC14F]) = v28;
  v29 = STACK[0xC148];
  v30 = (553300517 * STACK[0xC148]) ^ v9;
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
  *v43 = STACK[0xC148];
  return (*(STACK[0xF18] + 8 * (v1 - 621)))(v48, v49);
}

uint64_t sub_10050C44C()
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x65C8];
  LODWORD(STACK[0x648C]) = 550803829;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10050C4D0()
{
  STACK[0x9DD8] = ((2 * v1) & 0x6FF9FE34) + (v1 ^ 0xB7C2FB5F37FCFF1ALL) + 0x7DFDBDFDFDEBCF00;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 1689)))();
}

uint64_t sub_10050C590@<X0>(uint64_t a1@<X8>)
{
  *(*(v7 + 16) + 8 * (v2 + v5)) = a1;
  v9 = v3 > v6 && v3 < v1;
  return (*(STACK[0xF18] + 8 * (((2 * v9) | (16 * v9)) ^ v4)))();
}

uint64_t sub_10050C5CC()
{
  v1 = STACK[0xF18];
  STACK[0x1518] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 384551008) & 0xE914BDEF ^ 0x8327) + v0)))();
}

uint64_t sub_10050C618()
{
  v1 = STACK[0xF10];
  *(STACK[0x2890] + 8 * ((((STACK[0xF10] - 1879179078) & 0x7001F7FE) + 0x1EF7466ECFC076FLL) ^ STACK[0xA518])) = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 21289)))();
}

uint64_t sub_10050C688()
{
  v1 = (STACK[0xF10] + 1383690944) & 0xAD86AF7C;
  v3 = *(v0 + 8);
  v2 = v0 + 8;
  STACK[0x1E00] = v2;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762670057) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x1C94934D) - ((&STACK[0x10000] + 3800) & 0x1C949348)) ^ 0x2D955E69));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 7489)))(&STACK[0x10ED8]);
  v6 = *(v2 + 504);
  STACK[0x9678] = v6;
  LODWORD(STACK[0x5AFC]) = -371865839;
  STACK[0x4868] = 0;
  if (v6)
  {
    v7 = STACK[0x3388] == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v4 + 8 * ((v8 * ((v1 ^ 0x10D4) - 83977 + ((v1 - 1404105277) & 0x53B0CFFF))) ^ v1)))(v5);
}

uint64_t sub_10050C7E0(uint64_t a1)
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 35159;
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * (v1 - 30778)))(a1, v2);
}

uint64_t sub_10050C9AC()
{
  STACK[0x9E68] = ((2 * v1) & 0x1FFFD2BE6) + (v1 ^ 0x9EFA3DE3FFFE95F3) + 0x6FD5FABDFF7D8000;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1978)))();
}

uint64_t sub_10050CA7C()
{
  v1 = STACK[0x5FC0];
  v2 = v0 - 37656;
  *v1 ^= ((v0 + 113) & 0xBB) - 3;
  v1[1] ^= 0xAEu;
  v1[2] ^= 0xD3u;
  v1[3] ^= 0x1Eu;
  v1[4] ^= 0x11u;
  v1[5] ^= 0xF8u;
  v1[6] ^= 0x65u;
  v1[7] ^= 0xEFu;
  v1[8] ^= 0x73u;
  v1[9] ^= 0x3Eu;
  v1[10] ^= 0x4Au;
  v1[11] ^= 0xEDu;
  v3 = v1[13] ^ 0x2D;
  v4 = v1[14] ^ 0xEE;
  v5 = v1[15] ^ 0x1C;
  v1[12] ^= 0x44u;
  v1[13] = v3;
  v1[14] = v4;
  v1[15] = v5;
  v6 = STACK[0x6768];
  LODWORD(STACK[0x10ED8]) = (v2 + 10757) ^ (1022166737 * ((((&STACK[0x10000] + 3800) | 0x2AC179BB) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xD53E8640)) ^ 0x90D19829));
  STACK[0x10EE0] = v1;
  STACK[0x10EE8] = v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 38853)))(&STACK[0x10ED8]);
  v9 = STACK[0x10EF0];
  LODWORD(STACK[0x8A54]) = STACK[0x10EF0];
  *v1 = ~*v1;
  v1[1] ^= 0xAu;
  v1[2] ^= 0x68u;
  v1[3] ^= 0xD8u;
  v1[4] ^= 0x76u;
  v1[5] ^= 0x4Fu;
  v1[6] ^= 0x39u;
  v1[7] ^= 0x34u;
  v1[8] ^= 0x21u;
  v1[9] ^= 0xF4u;
  v1[10] ^= 0x63u;
  v1[11] ^= 0x9Du;
  v1[12] ^= 0x71u;
  v1[13] ^= 0xA0u;
  v1[14] ^= 0x32u;
  v1[15] ^= 1u;
  return (*(v7 + 8 * ((433 * (v9 == -371865839)) ^ v2)))(v8);
}

uint64_t sub_10050CD2C()
{
  LODWORD(STACK[0x2554]) = v1;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393268;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_10050CD68()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 32650)))(32);
  STACK[0x95C8] = v2;
  return (*(v1 + 8 * (((((v0 - 17118) | 0x830B) + ((v0 + 14131) | 0x2994) - 79588) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10050CDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v3 = *(STACK[0x4540] + 24);
  STACK[0x2B30] = v3;
  return (*(STACK[0xF18] + 8 * ((4 * ((a3 ^ 0xDB ^ (v3 == 0)) & 1)) & 0xF7 | (8 * ((a3 ^ 0xDB ^ (v3 == 0)) & 1)) | a3)))(a1, a2, 371891400);
}

uint64_t sub_10050CE28()
{
  STACK[0x6F30] = v1;
  STACK[0x1FB0] = v2;
  STACK[0x16B8] = v3;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10050CE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v13 = v12 > v9;
  if (v13 == v11 + a6 < a7)
  {
    v13 = v11 + a6 < v8;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * a8) ^ v10)))();
}

uint64_t sub_10050CEC4()
{
  LODWORD(STACK[0x174C]) = v0;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9D12 ^ (3331 * (v1 ^ 0xBD7)))))();
}

uint64_t sub_10050CF0C()
{
  v1 = v0 | 0xC32;
  v2 = STACK[0xF18];
  STACK[0x3620] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 ^ 0x2A86) + v1)))();
}

uint64_t sub_10050CF70()
{
  v3 = *(v1 + 312);
  LODWORD(STACK[0x10EDC]) = v2 + 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x4208A800) - (&STACK[0x10000] + 3800) + 1039620092) ^ 0x2D644176) + 2139413674;
  STACK[0x10EE0] = v0;
  STACK[0x10EE8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 2139420940)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v2 ^ 0x807BCA44 ^ (8588 * (v2 > 0x275844AC)))))(v5);
}

uint64_t sub_10050D114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] + 2125296752) & 0x8152B8DF;
  v4 = STACK[0xF10] - 34108;
  LODWORD(STACK[0xA0B0]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DC9)))(a1, a2, a3, v3, LODWORD(STACK[0xADF4]) + (v3 ^ 0xF5E0CA3F));
}

uint64_t sub_10050D1E0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = STACK[0x7690];
  STACK[0x4C08] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4A60] = v3;
  STACK[0x7858] = v4;
  STACK[0x7690] = v5 + 16;
  STACK[0x35F0] = 0;
  LODWORD(STACK[0x5B4C]) = -371865839;
  if (a1)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && v2 == a2 - 371890458;
  return (*(STACK[0xF18] + 8 * ((v8 * (327 * (a2 ^ 0x6026) - 35582)) ^ a2)))();
}

uint64_t sub_10050D29C()
{
  STACK[0x60B8] = &STACK[0x55F8];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = 1591440639;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x9E8D1827 ^ (5855 * (v0 < 0xFC0FBE12)))))();
}

uint64_t sub_10050D40C()
{
  *STACK[0x1B58] = 0;
  v1 = STACK[0xF18];
  STACK[0x4AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 16343 + ((v0 - 707727861) & 0x2A2F26FB))))();
}

uint64_t sub_10050D498()
{
  v2 = *(v1 + 8);
  STACK[0x8EA8] = v1 + 8;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762631540) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xFBC29617) + (~(&STACK[0x10000] + 3800) | 0x43D69E8)) ^ 0xCAC35B32));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDDBA)))(&STACK[0x10ED8]);
  v5 = STACK[0x1AC0];
  if (!STACK[0x1AC0])
  {
    v5 = (v1 + 36);
  }

  STACK[0x24D0] = v5;
  if (*v5 == -371865839)
  {
    v6 = 371891400;
  }

  else
  {
    v6 = -371865839;
  }

  if (((v0 - 1620605208) & 0x6098FFFD) - 371906264 + (((*v5 ^ 0xBAF2A027) + 1158504409) ^ ((*v5 ^ 0xCEA925B0) + 827775568) ^ (v0 + 1651615351 + (*v5 ^ 0x9D8E4286))) >= 0x15)
  {
    v7 = 371891400;
  }

  else
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((46515 * (v7 == -371865839)) ^ v0)))(v4);
}

uint64_t sub_10050D644@<X0>(uint64_t a1@<X8>)
{
  v5 = &STACK[0xC4D0] + v1;
  STACK[0x4010] = v5;
  STACK[0x2E48] = (v5 + 48);
  STACK[0x7690] = a1 + 176;
  STACK[0x7CD0] = 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * ((((v2 + 14992) ^ 0xFB1C ^ (v2 - 850582843) & 0x32B2FCAF) * (v4 == v3)) ^ v2)))();
}

uint64_t sub_10050D740(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = (a3 & (2 * a5)) + (a5 ^ 0x3D7F7BD1);
  v10 = (a5 ^ 0xFBD367FF) + 2 * a5;
  v11 = ((*(v6 + v10 + 70031361) ^ v7) << 24) | ((*(v6 + v10 + 70031362) ^ v7) << 16);
  v12 = ((v9 - 822235521) ^ 0x4D3FB53D) & (2 * ((v9 - 822235521) & 0x5B0)) ^ (v9 - 822235521) & 0x5B0;
  v13 = *(v6 + v10 + 70031363);
  v14 = *(v6 + v10 + 70031364) ^ v7;
  v15 = ((2 * ((v9 - 822235521) ^ 0x4D3FBD5D)) ^ 0x7D7AD1DA) & ((v9 - 822235521) ^ 0x4D3FBD5D) ^ (2 * ((v9 - 822235521) ^ 0x4D3FBD5D)) & 0xBEBD68EC;
  v16 = (v15 ^ 0xC0) & (4 * v12) ^ v12;
  v17 = ((4 * (v15 ^ 0x82852825)) ^ 0xFAF5A3B4) & (v15 ^ 0x82852825) ^ (4 * (v15 ^ 0x82852825)) & 0xBEBD68EC;
  v18 = (v17 ^ 0xBAB520A0) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x4084849)) ^ 0xEBD68ED0) & (v17 ^ 0x4084849) ^ (16 * (v17 ^ 0x4084849)) & 0xBEBD68C0;
  v20 = (v11 | ((v13 ^ v7) << 8) | v14) - 2 * ((v11 | ((v13 ^ v7) << 8) | v14) & 0x69D5C71B ^ v14 & 0xA);
  v21 = v18 ^ 0xBEBD68ED ^ (v19 ^ 0xAA940800) & (v18 << 8);
  *(v5 + 4 * ((((v9 - 822235521) ^ (2 * ((v21 << 16) & 0x3EBD0000 ^ v21 ^ ((v21 << 16) ^ 0x68ED0000) & (((v19 ^ 0x1429602D) << 8) & 0x3EBD0000 ^ 0x2950000 ^ (((v19 ^ 0x1429602D) << 8) ^ 0x3D680000) & (v19 ^ 0x1429602D))))) >> 2) ^ 0x37E8811A)) = ((((v20 - 371865839) ^ 0x84A607C1) + 2069493823) ^ (((v20 - 371865839) ^ 0x597EAE1C) - 1501474332) ^ (((v20 - 371865839) ^ 0x340D6ECC) - 873295564)) + 1546185913;
  return (*(v8 + 8 * ((30517 * ((v9 - 1031764941) < 0x40)) ^ a2)))();
}

uint64_t sub_10050DA18@<X0>(int a1@<W8>)
{
  v3 = (v1 - 29207) | 0xA283;
  v4 = v1 - 16345;
  v6 = a1 == 371865838 || (((a1 ^ 0x4611236F) - 1175528303) ^ ((a1 ^ 0xA44F432A) + 1538309334) ^ ((a1 ^ 0xB8BA754) + (v3 ^ 0xF474E30B))) - *(v2 + 948) != 296185716;
  return (*(STACK[0xF18] + 8 * ((238 * v6) ^ v4)))();
}

uint64_t sub_10050DAC8()
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
  STACK[0xC190] = 0;
  STACK[0xC198] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC190] | v10);
  *(&STACK[0xC190] | v10) = 0;
  LOBYTE(STACK[0xC197]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC190] | v12);
  *(&STACK[0xC190] | v12) = STACK[0xC196];
  LOBYTE(STACK[0xC196]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC190] | v14);
  *(&STACK[0xC190] | v14) = STACK[0xC195];
  LOBYTE(STACK[0xC195]) = v15;
  v16 = STACK[0xC190];
  LOBYTE(STACK[0xC190]) = STACK[0xC194];
  LOBYTE(STACK[0xC194]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC190] | v17);
  *(&STACK[0xC190] | v17) = STACK[0xC193];
  LOBYTE(STACK[0xC193]) = v18;
  v19 = STACK[0xC191];
  LOBYTE(STACK[0xC192]) = STACK[0xC190];
  LOWORD(STACK[0xC190]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC190] = vmla_s32(v22, STACK[0xC190], vdup_n_s32(0x1000193u));
  STACK[0xC198] ^= STACK[0xC190];
  STACK[0xC198] = vmul_s32(vsub_s32(STACK[0xC198], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC19A];
  LOWORD(STACK[0xC199]) = STACK[0xC198];
  LOBYTE(STACK[0xC198]) = v23;
  v24 = (&STACK[0xC198] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC19B];
  LOBYTE(STACK[0xC19B]) = v19;
  LOBYTE(v24) = STACK[0xC198];
  LOBYTE(STACK[0xC198]) = STACK[0xC19C];
  LOBYTE(STACK[0xC19C]) = v24;
  v25 = (&STACK[0xC198] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC19D];
  LOBYTE(STACK[0xC19D]) = v24;
  v26 = (&STACK[0xC198] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC19E];
  LOBYTE(STACK[0xC19E]) = v25;
  v27 = (&STACK[0xC198] | v10);
  v28 = *v27;
  *v27 = STACK[0xC19F];
  LOBYTE(STACK[0xC19F]) = v28;
  v29 = STACK[0xC198];
  v30 = (553300517 * STACK[0xC198]) ^ v9;
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
  *v43 = STACK[0xC198];
  return (*(STACK[0xF18] + 8 * (v1 - 25075)))(v48, v49);
}

uint64_t sub_10050DF50()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 9884;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x41A3)))(264);
  STACK[0x9110] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (v0 - 35600)) ^ v1)))();
}

uint64_t sub_10050E108()
{
  LODWORD(STACK[0x9A2C]) = v1;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v0 + 3175) ^ v0)))();
}

uint64_t sub_10050E1B4()
{
  *(v3 + 2128) = v2;
  v5 = v2 + 1341382599;
  v6 = (((v4 ^ 0xB6A41CDA) + 1230758694) ^ ((v4 ^ 0x32827D5D) - 847412573) ^ (((v0 - 20538) | 0x270) + (v4 ^ 0x6DF3A696) - 1844686474)) + 969516760;
  v7 = v2 > 0xB00C2038;
  v8 = v7 ^ (v6 < 0x4FF3DFC7);
  v9 = v5 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    v1 = 371891407;
  }

  *(v3 + 2132) = v1;
  return (*(STACK[0xF18] + 8 * ((114 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_10050E2DC()
{
  v0 = 5 * (STACK[0xF10] ^ 0x913D);
  v1 = STACK[0xF10] - 32547;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9AD7 ^ v0)))();
}

uint64_t sub_10050E32C()
{
  v2 = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x3168]) = v0 + 1;
  v3 = (((v0 + 1) ^ 0xC581) + 16302) ^ (v0 + 1) ^ (((v0 + 1) ^ 0x6FFF) - 27180) ^ (((v1 - 21295) ^ (v0 + 1)) + 7847) ^ (((v0 + 1) ^ 0xF627 ^ v1 ^ 0x8AB9) - 20212);
  v4 = STACK[0x31F0];
  v5 = 139493411 * ((~(&STACK[0x10000] + 3800) & 0x59F89872 | (&STACK[0x10000] + 3800) & 0xA6076788) ^ 0x55D57937);
  STACK[0x10EE0] = &STACK[0x46FC];
  STACK[0x10EF0] = v2;
  LOWORD(STACK[0x10EFC]) = -32733 * ((~(&STACK[0x10000] + 3800) & 0x9872 | (&STACK[0x10000] + 3800) & 0x6788) ^ 0x7937) + (((v3 ^ 0x40A0) + 12591) ^ ((v3 ^ 0x11EC) + 24675) ^ ((v3 ^ 0x549F) + 9490)) - 1798;
  LODWORD(STACK[0x10EE8]) = v5 - 399939611;
  LODWORD(STACK[0x10EF8]) = v5 + 1945538087 * v4 + 777074195;
  LODWORD(STACK[0x10ED8]) = v1 - v5 + 31119;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 37706)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F00];
  LODWORD(STACK[0x40B4]) = STACK[0x10F00];
  return (*(v6 + 8 * ((88 * (v8 != 1497668682)) ^ v1)))(v7);
}

uint64_t sub_10050E5FC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 10402;
  v2 = 858993460 * (((LOWORD(STACK[0x2C2E]) ^ 0x12438109) + 767327991) ^ (((STACK[0xF10] - 12541) ^ 0x1685) - 1383058528 + (LOWORD(STACK[0x2C2E]) ^ 0x126F7FA5)) ^ ((LOWORD(STACK[0x2C2E]) ^ 0x2C84EC) + 2144566036)) - 201896274;
  v3 = (2 * (v2 & 0x3F3C4650)) & 0x60108020 ^ v2 & 0x3F3C4650 ^ ((2 * (v2 & 0x3F3C4650)) | 4) & (v2 ^ 0x5F2DF679);
  v4 = (2 * (v2 ^ 0x5F2DF679)) & 0x6011B02A ^ 0x20109029 ^ ((2 * (v2 ^ 0x5F2DF679)) ^ 0xC0236056) & (v2 ^ 0x5F2DF679);
  v5 = (4 * v3) & 0x60113000 ^ v3 ^ ((4 * v3) | 8) & v4;
  v6 = (4 * v4) & 0x6011B028 ^ 0x60113003 ^ ((4 * v4) ^ 0x8046C0AC) & v4;
  v7 = (16 * v5) & 0x6011B020 ^ v5 ^ ((16 * v5) ^ 0xA0) & v6;
  v8 = (16 * v6) & 0x6011B020 ^ 0x6000B00B ^ ((16 * v6) ^ 0x11B02B0) & v6;
  v9 = v7 ^ (v7 << 8) & 0x6011B000 ^ ((v7 << 8) ^ 0x2A00) & v8 ^ 0x60119001;
  v10 = v2 ^ (2 * ((v9 << 16) & 0x60110000 ^ v9 ^ ((v9 << 16) ^ 0x302B0000) & ((v8 << 8) & 0x60110000 ^ 0x60010000 ^ ((v8 << 8) ^ 0x11B00000) & v8))) ^ 0xDFBE6C4u;
  v11 = (5 * (((v10 ^ 0x5C5FCFAE44C23BDFLL) - 0x5C5FCFAE44C23BDFLL) ^ ((v10 ^ 0xB6E04D107E862A15) + 0x491FB2EF8179D5EBLL) ^ ((v10 ^ 0xEABF82BE88A2D10ALL) + 0x7D41775D2EF6)) + 0x75EF7E81C3C0) >> 32;
  LOWORD(v8) = (v11 & 0x8A14 | 0x742A) ^ v11 & 0xF87C;
  LOWORD(STACK[0x2C2E]) = v11 ^ (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * ((v11 ^ 0xA14) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ 0x828;
  LODWORD(v11) = (LOBYTE(STACK[0x96C3]) | ((LOBYTE(STACK[0x96C3]) < 0x7Fu) << 8)) + (((LODWORD(STACK[0x77BC]) ^ 0x93CB2D98) + 1815401064) ^ ((LODWORD(STACK[0x77BC]) ^ 0x2104E5E0) - 553969120) ^ ((LODWORD(STACK[0x77BC]) ^ 0x5B1A0F69) - 1528434537)) - 1137032280;
  LODWORD(v11) = ((v11 ^ 0x264E6A14) + 198568170) ^ v11 ^ ((v11 ^ 0xEE10217F) - 1014258813) ^ ((v11 ^ 0x65CD8B96) + 1213598060) ^ ((v11 ^ 0x7FF7BDFF) + 1382825731);
  LODWORD(STACK[0x77BC]) = v11 ^ 0x3BB1BA13;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41A3)))(v11 ^ 0xD2647D02);
  STACK[0x1170] = v13;
  return (*(v12 + 8 * ((42 * (v13 == 0)) ^ v1)))();
}

uint64_t sub_10050EB28()
{
  v1.n128_u64[0] = 0xBABABABABABABABALL;
  v1.n128_u64[1] = 0xBABABABABABABABALL;
  return (*(STACK[0xF18] + 8 * (v0 - 13268)))(v1);
}

uint64_t sub_10050EB54()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 30997 + (v0 ^ 0x89D6))))();
}

uint64_t sub_10050EC54()
{
  v2 = LODWORD(STACK[0x3908]) - 1914640333;
  v3 = (((v1 ^ 0x9D00F909) + 1660880631) ^ ((v1 ^ 0x2EA11E72) - 782311026) ^ (((v0 - 1517583199) ^ v0 ^ 0x5237) + (v1 ^ 0x5A74206A))) + 2008461120;
  v4 = (v2 < 0x8DE0E82F) ^ (v3 < 0x8DE0E82F);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0x8DE0E82F;
  }

  return (*(STACK[0xF18] + 8 * ((27 * v5) ^ v0)))();
}

uint64_t sub_10050ED18@<X0>(int a1@<W8>)
{
  *(v1 + 9) = v2;
  v5 = v2 + 1896445625 < (v3 + 842898194);
  if ((v3 + 842898194) < 0xA180E9C2 != (v2 + 1896445625) < 0xA180E9C2)
  {
    v5 = (v3 + 842898194) < 0xA180E9C2;
  }

  if (v4 != ((a1 - 49340265) & 0x2F06DB7) - 371869333)
  {
    v5 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((47391 * v5) ^ a1)))();
}

uint64_t sub_10050EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x1660];
  STACK[0x5D28] = &STACK[0x3744];
  LODWORD(STACK[0x4704]) = -1469343842;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10050EE50()
{
  v1 = STACK[0xF10] - 21666;
  v2 = STACK[0x5BB8];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x5BB8] + 752));
  *(v2 + 752) = 0;
  *(v2 + 760) = v0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10050EEA0()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 734643845;
  v3 = 634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v3 - 1230214699;
  LODWORD(STACK[0x10EFC]) = v2 - v3 + 30;
  LODWORD(STACK[0x10EDC]) = v2 - v3 - 3690;
  LODWORD(STACK[0x10ED8]) = -634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  LODWORD(STACK[0x10EE4]) = v2 + v3;
  STACK[0x10EE8] = v0 ^ v3;
  STACK[0x10EF0] = 3923101457u - v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16305)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_10050EF60@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0xAA8C]) = v4;
  STACK[0xAA80] = v1;
  STACK[0xAA78] = a1;
  STACK[0xAA70] = v5;
  STACK[0xAA68] = v2;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10050EFA0()
{
  STACK[0xA2E8] = STACK[0x85C8];
  STACK[0x73F8] = STACK[0xF58] + 24;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1BF4)))();
}

uint64_t sub_10050F040@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + v3 + 16);
  v5 = (v2 + v3);
  *v5 = *(a1 + v3);
  v5[1] = v4;
  return (*(STACK[0xF18] + 8 * (((v3 == 96) * (((v1 - 4332) | 0x1401) ^ 0x5EB5)) ^ v1)))();
}

uint64_t sub_10050F0B4@<X0>(uint64_t a1@<X8>)
{
  v4.i64[0] = 0xEEEEEEEEEEEEEEEELL;
  v4.i64[1] = 0xEEEEEEEEEEEEEEEELL;
  *(a1 + v1 + 2) = veorq_s8(*(v3 + v1), v4);
  v5 = v1 - 22828 + 5711 * (v2 ^ 0x591Au) == 48;
  return (*(STACK[0xF18] + 8 * (((2 * v5) | (32 * v5)) ^ v2)))();
}

uint64_t sub_10050F16C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  STACK[0x3C38] = 0;
  return (*(v1 + 8 * (v0 + 9797)))(v2);
}

uint64_t sub_10050F1A4()
{
  v0 = STACK[0xF10] - 8117;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x29C8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10050F1E0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32649;
  v2 = STACK[0xF10] - 2131225745;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x49F8]);
  return (*(v3 + 8 * (((v2 > 0xBD9CE590) * (v1 ^ 0x8051)) ^ (v0 - 4576))))(v4);
}

uint64_t sub_10050F24C()
{
  v0 = STACK[0x440] & 0x3FD8FFFF;
  v1 = STACK[0xF18];
  v2 = STACK[0x438];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x438]));
  return (*(v1 + 8 * ((v0 ^ 0x6652) + v2)))();
}

uint64_t sub_10050F28C()
{
  v1 = (STACK[0xF10] - 35385) | 0x8460;
  v2 = STACK[0xF10] + 4180;
  STACK[0x2CA8] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 34113) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_10050F36C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xB560)))((v0 << (v1 - 118 + ((v1 - 75) & 0xD3u))) & 0xFFFFFFF8 ^ 0x3DC42020);
  STACK[0x3AC8] = v3;
  return (*(v2 + 8 * ((64720 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_10050F498()
{
  v1 = v0 - 28957;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 1228667135) & 0xB6C416FF) - 1748) ^ v1)))();
}

uint64_t sub_10050F7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF10] - 2125008205;
  *STACK[0x6AF8] = v7 ^ 0xF1A5161C9282F044;
  return (*(STACK[0xF18] + 8 * ((31176 * (v8 == -1558986271)) ^ v8 & 0x7828AAAEu)))(a1, a2, *(STACK[0x1138] + 24), a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10050F884@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x69BC]) = v3;
  STACK[0x38F8] = 0;
  STACK[0x3AC8] = 0;
  *v1 = 0x981390C2FED9246;
  STACK[0x1220] = v1 + 0xD43AFE53D26566DLL;
  *(v1 + 8) = 95;
  STACK[0x89A8] = v1 + 9;
  return (*(STACK[0xF18] + 8 * (((((v2 ^ 0x7158) + 51737) ^ 0xD775 ^ (683 * (v2 ^ 0x7158))) * (a1 == 0x217E172EFA1E81CLL)) | v2)))();
}

uint64_t sub_10050F950()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 32816)))(v2);
}

uint64_t sub_10050FAF0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 1955;
  v2 = STACK[0x34F8];
  v3 = STACK[0xF10] - 1762661292;
  STACK[0x10EE0] = *(STACK[0x34F8] + 16);
  LODWORD(STACK[0x10ED8]) = v3 ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1C8B9B20) + 478911270) ^ 0x2D8A5602));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((493 * (*(v2 + 24) > (v0 ^ 0x8B3B))) ^ v1)))(v5);
}

uint64_t sub_10050FBA4@<X0>(unsigned int a1@<W8>)
{
  v3 = 48 * v1;
  *(*(v2 + 16) + v3 + 16) = STACK[0xED0];
  *(*(v2 + 16) + v3 + 44) = 3248796;
  return (*(STACK[0xF18] + 8 * a1))(3923101457);
}

uint64_t sub_10050FDF0@<X0>(int a1@<W8>)
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  LODWORD(v10) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC200] = 0;
  STACK[0xC208] = v2 - 0x43D8CBFA0CEB42D4;
  v11 = 16777619 * (((1692773664 * v10) | 7) ^ (1692773664 * v10)) % 7;
  v12 = *(&STACK[0xC200] | v11);
  *(&STACK[0xC200] | v11) = 0;
  LOBYTE(STACK[0xC207]) = v12;
  v13 = 16777619 * (((1692773664 * v10) | 6) ^ (1692773664 * v10)) % 6;
  v14 = *(&STACK[0xC200] | v13);
  *(&STACK[0xC200] | v13) = STACK[0xC206];
  LOBYTE(STACK[0xC206]) = v14;
  v15 = 16777619 * (((1692773664 * v10) | 5) ^ (1692773664 * v10)) % 5;
  v16 = *(&STACK[0xC200] | v15);
  *(&STACK[0xC200] | v15) = STACK[0xC205];
  LOBYTE(STACK[0xC205]) = v16;
  v17 = STACK[0xC200];
  LOBYTE(STACK[0xC200]) = STACK[0xC204];
  LOBYTE(STACK[0xC204]) = v17;
  v18 = 16777619 * (((1692773664 * v10) | 3) ^ (1692773664 * v10)) % 3;
  v19 = *(&STACK[0xC200] | v18);
  *(&STACK[0xC200] | v18) = STACK[0xC203];
  LOBYTE(STACK[0xC203]) = v19;
  v20 = STACK[0xC201];
  LOBYTE(STACK[0xC202]) = STACK[0xC200];
  LOWORD(STACK[0xC200]) = v20;
  v21 = vdup_n_s32(1692773664 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1692773664 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC200] = vmla_s32(v23, STACK[0xC200], vdup_n_s32(0x1000193u));
  STACK[0xC208] ^= STACK[0xC200];
  STACK[0xC208] = vmul_s32(vsub_s32(STACK[0xC208], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC20A];
  LOWORD(STACK[0xC209]) = STACK[0xC208];
  LOBYTE(STACK[0xC208]) = v24;
  v25 = (&STACK[0xC208] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC20B];
  LOBYTE(STACK[0xC20B]) = v20;
  LOBYTE(v25) = STACK[0xC208];
  LOBYTE(STACK[0xC208]) = STACK[0xC20C];
  LOBYTE(STACK[0xC20C]) = v25;
  v26 = (&STACK[0xC208] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC20D];
  LOBYTE(STACK[0xC20D]) = v25;
  v27 = (&STACK[0xC208] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC20E];
  LOBYTE(STACK[0xC20E]) = v26;
  v28 = (&STACK[0xC208] | v11);
  v29 = *v28;
  *v28 = STACK[0xC20F];
  LOBYTE(STACK[0xC20F]) = v29;
  v30 = STACK[0xC208];
  v31 = (1692773664 * STACK[0xC208]) ^ v10;
  for (i = 1; i != 12; ++i)
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
  v42 = vdupq_n_s32(v31);
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_high_u16(v46, v41));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v42), vsubq_s32(v40, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_high_u16(v45, v41));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_100BC7660);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 96);
  STACK[0x5558] = STACK[0xC208] + v1;
  return (*(STACK[0xF18] + 8 * a1))(v37, v38, v39, v40);
}

uint64_t sub_100510248()
{
  v0 = STACK[0xF10] - 29772;
  v1 = STACK[0xF10] - 33685;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 2519)))();
}

uint64_t sub_100510300()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0xEC43;
  v2 = STACK[0xF10] - 34538;
  v3 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((((v2 ^ 0x140692CBu) < 0x3F99BA9A) * (v1 - 19035)) ^ (v0 - 32837))))();
}

uint64_t sub_100510370()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9722;
  LODWORD(STACK[0x1374]) = 133498601;
  return (*(STACK[0xF18] + 8 * (v0 - 29678)))();
}

uint64_t sub_10051049C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 | 0x9000;
  *v1 = 0x63763DECAD3647A7;
  *(v1 + 8) = 0xC1F2B486029B4389;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x51D1B4B8));
  *(v1 + 24) = 0xE9D5C711E9D5C711;
  *(v1 + 32) = 0xE9D5C711E9D5C711;
  *(v1 + 16) = (v4 & ((v3 + 113335011) & 0xF93E9FBB ^ 0x7FFFFFFFFFFF74C4) ^ v4 & 0x1FC516A027D04555 ^ 0xBFF57FE5F7FE4F75) - (v4 & 0x1FC516A027D04555 ^ 0x9C84002022100410);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 116) = -371865839;
  *(v1 + 144) = -371865839;
  *(v1 + 128) = -371865839;
  *(v1 + 268) = -371865839;
  *(v1 + 260) = 0xE9D5C711E9D5C711;
  return (*(STACK[0xF18] + 8 * ((49 * (((a1 == 0x981390C2FED9246) ^ (v3 - 1)) & 1)) ^ v3)))();
}

uint64_t sub_10051070C()
{
  STACK[0x9E70] = ((2 * v0) & 0x12FFD7CB6) + (v0 ^ 0x5FD09DDB97FEBE5BLL) - 0x530084119058A651;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 437250752 + ((v1 + 1710229273) | 0x80000830))))();
}

uint64_t sub_100510888()
{
  STACK[0x9680] = v1 + 4;
  v2 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 - 16932 + 291 * (v0 ^ 0x3F5))))();
}

uint64_t sub_100510AF4()
{
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * (((&STACK[0x10ED8] | 0x4AB74D77) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xB548B288)) ^ 0xFC0C7F11) + 1185103093;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x9AF4)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = STACK[0x800];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762647854) ^ (((~&STACK[0x10ED8] & 0x6DBAF9F8 | &STACK[0x10ED8] & 0x92450600) ^ 0x5CBB34DC) * v1);
  v3 = (*(v2 + 8 * (v0 + 29692)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*(STACK[0x828] - 250462103) == 0) * (((v0 - 130801342) & 0x7CBFEF5) - 30328)) ^ v0)))(v3);
}

uint64_t sub_100510C18()
{
  v2 = v0 - 16224;
  v3 = (*(STACK[0xE60] + (v1 - 649173215)) - 102) % ((v2 ^ 0x66) - 28);
  if (((*(STACK[0xE60] + (v1 - 649173213)) - 102) % 6u + 1) + v3 <= 0x1F)
  {
    v4 = ((*(STACK[0xE60] + (v1 - 649173213)) - 102) % 6u + 1);
  }

  else
  {
    v4 = v3 ^ 0x1F;
  }

  return (*(STACK[0xF18] + 8 * ((55 * (v4 < 2)) ^ v2)))();
}

uint64_t sub_100510DC4()
{
  STACK[0x1060] = 0;
  LODWORD(STACK[0x9404]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((9441 * (*v1 == (((v0 + 115) ^ (105 * (v0 ^ 0xA6))) ^ 0x21))) ^ v0)))();
}

uint64_t sub_100510E6C()
{
  v2 = STACK[0x6B80];
  v3 = STACK[0x379C];
  STACK[0x4A98] = v1;
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 118664884;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_100510EBC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 195967697;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16272)))(LODWORD(STACK[0x2518]), STACK[0xAFE8], 1024);
  v4 = 17902189 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x39297565B990CB00) - 0x46D68A9A466F34FALL) ^ 0x7D69D6B037DFDD16);
  LODWORD(STACK[0x10EFC]) = v1 + v4;
  STACK[0x10EE0] = 1 - v4;
  STACK[0x10EF0] = v3 ^ v4;
  LODWORD(STACK[0x10ED8]) = v4;
  LODWORD(STACK[0x10EF8]) = (v1 | 0x10) - v4;
  LODWORD(STACK[0x10EEC]) = v4 ^ v1 ^ 0x131D;
  LODWORD(STACK[0x10EE8]) = v0 - v4 + 397536979;
  v5 = (*(v2 + 8 * (v0 ^ 0x4793)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * SLODWORD(STACK[0x10EDC])))(v5);
}

uint64_t sub_100511020()
{
  STACK[0x10ED8] = *STACK[0x56A0];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((2 * (&STACK[0x10ED8] & 0x2B8ED0C0) - &STACK[0x10ED8] - 730779844) ^ 0x325734F3) + 296753103;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x6E05C380) - 301612156) ^ 0xDF040EA0));
  STACK[0x10EE0] = 0;
  v2 = (*(v1 + 8 * (v0 + 16254)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((11265 * (*STACK[0x970] > (v0 ^ 0xE65F ^ (v0 + 680845884) & 0xD76AFFEC))) ^ (v0 + 1476))))(v2);
}

uint64_t sub_100511580@<X0>(uint64_t a1@<X8>)
{
  *v1 = 0x63763DECAD3647A7;
  *(v1 + 8) = 0xC1F2B486029B4389;
  v4 = *(a1 + (v3 & 0x51D1B4B8));
  *(v1 + 32) = -371865839;
  *(v1 + 16) = (v4 & 0x7FFFFFFFFFFFFFFFLL ^ 0x23717FC5D5EE4B65 ^ (v2 + 3432) ^ v4 & 0x3818BE8E1FE03F68 ^ 0x9808800A0A001E76) - ((v2 + 3432) ^ v4 & 0x3818BE8E1FE03F68 ^ 0x9808800A0A001E76);
  *(v1 + 24) = 0xE9D5C711E9D5C711;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 144) = -371865839;
  *(v1 + 128) = -371865839;
  *(v1 + 116) = -371865839;
  *(v1 + 148) = 2;
  *(v1 + 40) = 0;
  *(v1 + 120) = 0;
  *(v1 + 136) = 0;
  *(v1 + 268) = -371865839;
  *(v1 + 260) = 0xE9D5C711E9D5C711;
  *(v1 + 232) = 0;
  *(v1 + 240) = -371865839;
  *(v1 + 152) = 0xE9D5C711E9D5C711;
  *(v1 + 160) = 0;
  *(v1 + 168) = -371865839;
  *(v1 + 224) = -371865839;
  STACK[0x60B8] = &STACK[0x28D8];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = 237183248;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10051169C()
{
  v0 = STACK[0xF10] - 25529;
  v1 = STACK[0xF10] - 88;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 1762661292) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 41783)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((v1 ^ (*STACK[0x970] > ((347 * (v0 ^ 0x2791)) ^ 0x19C1))) & 1 | v0)))(v3);
}

uint64_t sub_100511754@<X0>(int a1@<W8>)
{
  STACK[0x5598] = v2;
  LODWORD(STACK[0x1684]) = v4;
  LOBYTE(STACK[0x3E27]) = v3;
  v5 = (((LODWORD(STACK[0x7704]) ^ 0x6C25F502) + (((v1 ^ 0xFD76) + 2989) ^ 0x93DA555C)) ^ ((LODWORD(STACK[0x7704]) ^ 0x1B5F5516) - 459232534) ^ ((LODWORD(STACK[0x7704]) ^ 0x9EAF6705) + 1632671995)) - 1284756280;
  v6 = v5 < 0xC99665B7;
  v7 = v4 - 2004766874 < v5;
  if ((v4 - 2004766874) < 0xC99665B7 != v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a1 != -371865839)
  {
    v8 = 0;
  }

  return (*(STACK[0xF18] + 8 * (((2 * v8) | (8 * v8)) ^ v1)))();
}

uint64_t sub_10051183C()
{
  STACK[0xACB0] = &STACK[0x2724];
  if (STACK[0x2920])
  {
    v1 = LODWORD(STACK[0x49CC]) == ((v0 - 6454) | 0x8644) - 371900347;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((v2 * ((109 * ((v0 + 9549) ^ 0x3E4C)) ^ 0x8B2A)) ^ (v0 + 9549))))();
}

uint64_t sub_1005118C0()
{
  v1 = STACK[0x2380];
  v2 = *STACK[0x4BE8];
  LODWORD(STACK[0x3830]) = 1;
  STACK[0x7100] = v1;
  STACK[0x8AD8] = v2;
  STACK[0x5180] = STACK[0x67C0];
  LODWORD(STACK[0x2F3C]) = 713684064;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100511914(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0xF18] + 8 * (((v2 == -1169949123) * ((v2 - 1611554910) & 0x600EEB7B ^ 0xEB94)) ^ (v2 + 8264)));
  LODWORD(STACK[0xE20]) = 47179;
  return v4(a1, a2, v3);
}

uint64_t sub_10051197C()
{
  v0 = STACK[0xF10];
  v1 = 196 * (STACK[0xF10] ^ 0x8B3C);
  v2 = STACK[0xF10] + 7289;
  v3 = STACK[0xF10] + 14507;
  LODWORD(STACK[0x3AC4]) += 4;
  v4 = STACK[0x5378];
  v5 = STACK[0x6850];
  LODWORD(STACK[0x10EF0]) = (v0 + 5112) ^ (634647737 * ((~(&STACK[0x10000] + 3800) & 0x84431EC2 | (&STACK[0x10000] + 3800) & 0x7BBCE138) ^ 0xE9D5313E));
  STACK[0x10ED8] = v5;
  STACK[0x10EE8] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 16508)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((2014 * (((v2 ^ (LOBYTE(STACK[0x10EE0]) == (v1 - 55))) & 1) == 0)) ^ v3)))(v7);
}

uint64_t sub_100511A98()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 2845)))(v2);
}

uint64_t sub_100511AC4@<X0>(unsigned int a1@<W8>)
{
  v2 = v1 == 1;
  if (v1 == 1)
  {
    v3 = STACK[0x6788];
  }

  else
  {
    v3 = (STACK[0x2F80] + 8);
  }

  v4 = *v3;
  v5 = STACK[0x3D30];
  if (!v2)
  {
    v5 = STACK[0x2F80];
  }

  if (v4)
  {
    v6 = *v5 == ((a1 + 18432) ^ 0xE9D54C2A);
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(STACK[0xF18] + 8 * ((110 * v7) ^ a1)))();
}

uint64_t sub_100511B74@<X0>(int a1@<W8>)
{
  v1 = ((2 * STACK[0x3BB8]) & 0x72FE5D7FBFFF7BF4) - 0x11010C17C64A0428 + (STACK[0x3BB8] ^ 0x397F2EBFDFFFD6F2 ^ ((a1 + 8819) | 0x2A00u));
  LODWORD(STACK[0x705C]) = STACK[0x17D8];
  STACK[0x3CC8] = v1;
  LODWORD(STACK[0x2D84]) = 8;
  LOBYTE(STACK[0x3FCF]) = 96;
  LODWORD(STACK[0x4078]) = 54763615;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100511C14()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -776149771;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_100511C40()
{
  v3 = *(STACK[0x5558] - 0x43D8CBFA0CEB427CLL);
  STACK[0x10EF0] = STACK[0x588];
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EE8]) = (v1 + 19081) ^ (1603510583 * ((~(&STACK[0x10000] + 3800) & 0xBBC8630B | (&STACK[0x10000] + 3800) & 0x44379CF0) ^ 0x2C1351A0));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 35476)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x287C]) = STACK[0x10ED8];
  v6 = (((v0 ^ 0x46398B9AAB4CD261) - 0x46398B9AAB4CD261) ^ ((v0 ^ 0x7C69B86A61786DC8) - 0x7C69B86A61786DC8) ^ ((v0 ^ 0x3A5033F0E32DADE8) - 0x3A5033F0E32DADE8)) + 0x6E58D3575C006FF2 + ((v1 - 1517555026) ^ 0xA58CB9C4);
  v7 = (v6 ^ 0x15278C00E91A9690) & (2 * (v6 & 0x91A72CA8CD181718)) ^ v6 & 0x91A72CA8CD181718;
  v8 = ((2 * ((v1 - 1517555026) & 0x5A73CFF2 ^ 0x366B9D40692A9C62 ^ v6)) ^ 0x4F9963D148651310) & ((v1 - 1517555026) & 0x5A73CFF2 ^ 0x366B9D40692A9C62 ^ v6) ^ (2 * ((v1 - 1517555026) & 0x5A73CFF2 ^ 0x366B9D40692A9C62 ^ v6)) & 0xA7CCB1E8A4328988;
  v9 = v8 ^ 0xA0449028A4128888;
  v10 = (v8 ^ 0x78821C000200000) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x9F32C7A290CA2620) & v9 ^ (4 * v9) & 0xA7CCB1E8A4328988;
  v12 = (v11 ^ 0x870081A080020000) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x20CC304824308988)) ^ 0x7CCB1E8A43289880) & (v11 ^ 0x20CC304824308988) ^ (16 * (v11 ^ 0x20CC304824308988)) & 0xA7CCB1E8A4328980;
  v14 = (v13 ^ 0x24C8108800208800) & (v12 << 8) ^ v12;
  v15 = (((v13 ^ 0x8304A160A4120108) << 8) ^ 0xCCB1E8A432898800) & (v13 ^ 0x8304A160A4120108) ^ ((v13 ^ 0x8304A160A4120108) << 8) & 0xA7CCB1E8A4328800;
  v16 = v14 ^ 0xA7CCB1E8A4328988 ^ (v15 ^ 0x8480A0A020000000) & (v14 << 16);
  v17 = v6 ^ (2 * ((v16 << 32) & 0x27CCB1E800000000 ^ v16 ^ ((v16 << 32) ^ 0x2432898800000000) & (((v15 ^ 0x234C114884320188) << 16) & 0x27CCB1E800000000 ^ 0x60411C800000000 ^ (((v15 ^ 0x234C114884320188) << 16) ^ 0x31E8A43200000000) & (v15 ^ 0x234C114884320188))));
  STACK[0xA9F0] = v17 ^ 0xB6B870DF6A553FDBLL;
  v18 = (((v17 ^ 0xBFE6D698FE082480) - 0x95EA647945D1B5BLL) ^ ((v17 ^ 0x9237A22079F6E867) - 0x248FD2FF13A3D7BCLL) ^ ((v17 ^ 0xBBEE38D10283C8EFLL) - 0xD56480E68D6F734)) + 0x20873CB7D5C47DBFLL;
  v19 = (LODWORD(STACK[0x44F8]) ^ 0x3FF7BFAFBBF7E9BDLL) - 0x3FF7BFAED55BA7D1 + ((2 * LODWORD(STACK[0x44F8])) & 0x177EFD37ALL);
  LODWORD(v9) = (v19 < 0xE69C41EC) ^ (v18 < 0xE69C41EC);
  v20 = v18 < v19;
  if (v9)
  {
    v20 = v19 < 0xE69C41EC;
  }

  if (v20)
  {
    v21 = v2;
  }

  else
  {
    v21 = 371891374;
  }

  LODWORD(STACK[0xA9FC]) = v21;
  return (*(v4 + 8 * ((33370 * v20) ^ v1)))(v5);
}

uint64_t sub_100512128@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8940]) = 533546277;
  LODWORD(STACK[0x7B94]) = v1;
  return (*(STACK[0xF18] + 8 * ((a1 & 0xDA17EBBF) - 1844)))();
}

uint64_t sub_1005122BC@<X0>(int a1@<W8>)
{
  v4 = (((v3 ^ 0x9B039A8F) - 1304634875) ^ ((v3 ^ 0x9AC3714D) - 1275317817) ^ ((v1 ^ 0x17EAFC39) + (v3 ^ 0x3ED593A7))) - 498662061;
  if (a1 - 126796221 > v4 && v4 > 0xF8713E41)
  {
    v2 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((39236 * (v2 == -371865839)) ^ v1)))();
}

uint64_t sub_1005124A4()
{
  LOBYTE(STACK[0x8E47]) = v0;
  STACK[0x4D30] = 0;
  return (*(STACK[0xF18] + 8 * ((((6295 * (v1 ^ 0x8B3C) + 1740148638) & 0x9846F5CA ^ 0x31D5) * (v2 != 43981)) ^ (v1 + 2761))))();
}

uint64_t sub_1005125B8()
{
  v1 = STACK[0xF10] ^ 0xBB09;
  v3 = v0 != ((v1 + 21) ^ 0x3046) || *STACK[0x940] == 0;
  return (*(STACK[0xF18] + 8 * ((117 * v3) ^ v1)))();
}

uint64_t sub_100512628()
{
  v2 = (((LODWORD(STACK[0x1248]) ^ 0xBF2AE89F) + 1087706977) ^ ((LODWORD(STACK[0x1248]) ^ 0xCD79C9CB) + 847656501) ^ ((LODWORD(STACK[0x1248]) ^ 0x9B86DC1E ^ ((v1 ^ 0xB17E) - 20704)) + 1685658043)) + 217426157;
  v4 = v2 > 0x231FE1DB && v2 < v0 - 933104266;
  return (*(STACK[0xF18] + 8 * ((30 * v4) ^ v1)))();
}

uint64_t sub_1005126E0()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2263)))();
}

uint64_t sub_1005127A4()
{
  STACK[0xAA20] = STACK[0x8670] - 0x20DE4F5147E7312CLL;
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xAA28] = v2;
  STACK[0x7690] = v1 + 64;
  v3 = STACK[0xF18];
  v4 = *(STACK[0xF18] + 8 * (v0 ^ 0x6EB8));
  STACK[0xAA30] = (v2 + 28);
  v4(*(&off_1010A0B50 + (v0 ^ 0xA19D)) - 1139308122);
  v5 = (*(v3 + 8 * (v0 + 9759)))(LODWORD(STACK[0x8B98]));
  STACK[0x2978] = v5;
  return (*(v3 + 8 * (((v5 != 0) * (((v0 - 36229) ^ 0xFFFFEFC4) + (v0 ^ 0xA3CE))) ^ v0)))();
}

uint64_t sub_10051289C()
{
  v0 = STACK[0xF10] - 28051;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x7DF8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005129E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X7>, uint64_t a5@<X8>)
{
  STACK[0xE90] = *(v15 + v9 - 8);
  v19.i64[0] = v15 + v9 - 7;
  v19.i64[1] = v15 + v9 - 8;
  v20.i64[0] = v15 + v9 - 3;
  v20.i64[1] = v15 + v9 - 4;
  v21.i64[0] = v15 + v9 - 1;
  v21.i64[1] = v15 + v9 - 2;
  v22.i64[0] = v13 + v9 + v7;
  v22.i64[1] = v15 + v9 - 6;
  v23 = v22;
  *&STACK[0xE80] = v22;
  v22.i64[0] = a2 + v9 + v7;
  v22.i64[1] = a5 + v9 - 6;
  *&STACK[0xE40] = v22;
  v24.i64[0] = a5 + v9 - 1;
  v24.i64[1] = a5 + v9 - 2;
  v25.i64[0] = a5 + v9 - 3;
  v26.i64[0] = a5 + v9 - 7;
  v25.i64[1] = a5 + v9 - 4;
  v26.i64[1] = a5 + v9 - 8;
  v27 = *&STACK[0xD60];
  v28 = vandq_s8(v23, *&STACK[0xD60]);
  v29 = vandq_s8(v21, *&STACK[0xD60]);
  v30 = vandq_s8(v20, *&STACK[0xD60]);
  v31 = vandq_s8(v19, *&STACK[0xD60]);
  v32 = *&STACK[0xD20];
  v33 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0xD20]), *&STACK[0xE10]);
  v34 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), *&STACK[0xD20]), *&STACK[0xE10]);
  v35 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), *&STACK[0xD20]), *&STACK[0xE10]);
  v36 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), *&STACK[0xD20]), *&STACK[0xE10]);
  v37 = veorq_s8(v36, *&STACK[0xE00]);
  v38 = veorq_s8(v35, *&STACK[0xE00]);
  v39 = veorq_s8(v34, *&STACK[0xE00]);
  v40 = veorq_s8(v33, *&STACK[0xE00]);
  v41 = veorq_s8(v33, *&STACK[0xDF0]);
  v42 = veorq_s8(v34, *&STACK[0xDF0]);
  v43 = veorq_s8(v36, *&STACK[0xDF0]);
  v44 = veorq_s8(v35, *&STACK[0xDF0]);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v44);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v41), *&STACK[0xDE0]);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v43), *&STACK[0xDE0]);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v42), *&STACK[0xDE0]);
  v50 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v53 = veorq_s8(v45, *&STACK[0xDE0]);
  v54 = veorq_s8(v47, v52);
  v55 = veorq_s8(v53, v51);
  v56 = veorq_s8(v49, v50);
  v57 = veorq_s8(v46, v48);
  v58 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v60 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v57);
  v62 = vaddq_s64(v60, v56);
  v63 = vaddq_s64(v59, v55);
  v64 = vaddq_s64(v58, v54);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), *&STACK[0xDD0]), v64), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), *&STACK[0xDD0]), v63), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), *&STACK[0xDD0]), v62), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v68 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v69 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), *&STACK[0xDD0]), v61), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v73 = veorq_s8(v67, v70);
  v74 = veorq_s8(v65, v68);
  v75 = veorq_s8(v66, v69);
  v76 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v74);
  v80 = veorq_s8(vaddq_s64(v76, v72), v18);
  v81 = veorq_s8(v79, v18);
  v82 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v83 = veorq_s8(vaddq_s64(v77, v73), v18);
  v84 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(v78, v75), v18);
  v87 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v88 = veorq_s8(v86, v85);
  v89 = veorq_s8(v83, v84);
  v90 = veorq_s8(v80, v82);
  v91 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v90);
  v95 = vaddq_s64(v93, v89);
  v96 = vaddq_s64(v92, v88);
  v97 = vaddq_s64(v91, v87);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), *&STACK[0xDA0]), v97), *&STACK[0xD90]), *&STACK[0xD80]);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), *&STACK[0xDA0]), v96), *&STACK[0xD90]), *&STACK[0xD80]);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), *&STACK[0xDA0]), v95), *&STACK[0xD90]), *&STACK[0xD80]);
  v101 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0xDA0]), v94), *&STACK[0xD90]), *&STACK[0xD80]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v106 = veorq_s8(v100, v103);
  v107 = veorq_s8(v98, v101);
  v108 = veorq_s8(v99, v102);
  v109 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  *&STACK[0xE70] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v107);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v108);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v106);
  v112 = vaddq_s64(v109, v105);
  v113 = vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), *&STACK[0xED0]), v112);
  v114 = vsubq_s64(vorrq_s8(vaddq_s64(v111, v111), *&STACK[0xED0]), v111);
  v115 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  *&STACK[0xE30] = vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), *&STACK[0xED0]), v110);
  *&STACK[0xE60] = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v116 = *&STACK[0xD70];
  v117 = vaddq_s64(v114, *&STACK[0xD70]);
  v118 = vandq_s8(v26, v27);
  v119 = vandq_s8(v25, v27);
  v120 = vandq_s8(v24, v27);
  v121 = vandq_s8(v22, v27);
  v122 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v125 = veorq_s8(vaddq_s64(v113, *&STACK[0xD70]), *&STACK[0xEC0]);
  v126 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v127 = vaddq_s64(v126, v32);
  v128 = vaddq_s64(v123, v32);
  v129 = veorq_s8(v117, *&STACK[0xEC0]);
  v130 = vsubq_s64(*&STACK[0xCD0], v126);
  v131 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v132 = vandq_s8(vsubq_s64(*&STACK[0xCD0], v123), *&STACK[0xCC0]);
  v133 = veorq_s8(v125, v115);
  v134 = vorrq_s8(vandq_s8(v130, *&STACK[0xCC0]), vandq_s8(v127, *&STACK[0xCB0]));
  v135 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xCD0], v124), *&STACK[0xCC0]), vandq_s8(vaddq_s64(v124, v32), *&STACK[0xCB0]));
  v136 = vorrq_s8(v132, vandq_s8(v128, *&STACK[0xCB0]));
  *&STACK[0xE20] = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xCD0], v122), *&STACK[0xCC0]), vandq_s8(vaddq_s64(v122, v32), *&STACK[0xCB0]));
  v137 = veorq_s8(v135, *&STACK[0xEB0]);
  v138 = veorq_s8(v134, *&STACK[0xEB0]);
  v139 = veorq_s8(v134, *&STACK[0xEA0]);
  v140 = veorq_s8(v135, *&STACK[0xEA0]);
  v141 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v140);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v144 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(v143, vandq_s8(vaddq_s64(v143, v143), v16)), *&STACK[0xC90]), *&STACK[0xC80]);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v142, vandq_s8(vaddq_s64(v142, v142), v16)), *&STACK[0xC90]), *&STACK[0xC80]);
  v147 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v148 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v149 = veorq_s8(v145, v147);
  v150 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v149);
  v153 = veorq_s8(vaddq_s64(v150, v148), *&STACK[0xC70]);
  v154 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v155 = veorq_s8(v152, *&STACK[0xC70]);
  v156 = vaddq_s64(v144, v133);
  v157 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v158 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v157), v18);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v158), v18);
  v161 = veorq_s8(vaddq_s64(v141, v131), *&STACK[0xCE0]);
  v162 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v163 = veorq_s8(v156, *&STACK[0xCE0]);
  v164 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v165 = veorq_s8(v163, v154);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v164);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v162);
  v168 = veorq_s8(v161, v151);
  v169 = vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0xC50]), v167);
  v170 = vdupq_n_s64(v5);
  v171 = vaddq_s64(v169, v170);
  v172 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v173 = vdupq_n_s64(a1);
  v174 = veorq_s8(v171, v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0xC50]), v166), v170), v173);
  v176 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v177 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v178 = veorq_s8(v174, v172);
  v179 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v178);
  v182 = vaddq_s64(v179, v177);
  v183 = vdupq_n_s64(v11);
  v184 = vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), v183), v182);
  v185 = vaddq_s64(v180, v168);
  v186 = vdupq_n_s64(a4);
  v187 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v183), v181), v186);
  v188 = vdupq_n_s64(v12);
  v189 = vaddq_s64(v176, v165);
  v190 = veorq_s8(vaddq_s64(v184, v186), v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v192 = veorq_s8(v187, v188);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v194 = veorq_s8(v190, v191);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), *&STACK[0xCE0]);
  v196 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v194), *&STACK[0xCE0]);
  v197 = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v198 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v199 = veorq_s8(v195, v197);
  v200 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v202 = vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), *&STACK[0xD40]), v189);
  v203 = vdupq_n_s64(v14);
  v204 = vshlq_u64(veorq_s8(vaddq_s64(v201, v199), v203), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), *&STACK[0xD50])));
  v261.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v202, *&STACK[0xD30]), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), *&STACK[0xD50]))), vshlq_u64(veorq_s8(vaddq_s64(v200, v198), v203), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), *&STACK[0xD50]))));
  v261.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), *&STACK[0xD40]), v185), *&STACK[0xD30]), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), *&STACK[0xD50]))), v204);
  v205 = veorq_s8(v136, *&STACK[0xEB0]);
  v206 = veorq_s8(v136, *&STACK[0xEA0]);
  v207 = veorq_s8(vaddq_s64(*&STACK[0xE30], v116), *&STACK[0xEC0]);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v209 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v210 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(v208, vandq_s8(vaddq_s64(v208, v208), v16)), *&STACK[0xC90]), *&STACK[0xC80]);
  v212 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v213 = veorq_s8(v211, v210);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v213), *&STACK[0xC70]);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v219 = veorq_s8(v216, v18);
  v220 = veorq_s8(v219, v217);
  v221 = vaddq_s64(v212, v209);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220);
  v223 = veorq_s8(v221, *&STACK[0xCE0]);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), *&STACK[0xC50]), v222), v170), v173);
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v226 = veorq_s8(v223, v218);
  v227 = veorq_s8(v224, v225);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v227);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v226);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v183), v228), v186), v188);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), *&STACK[0xCE0]);
  v261.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), *&STACK[0xD40]), v229), *&STACK[0xD30]), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), *&STACK[0xD50]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL))), v203), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), *&STACK[0xD50]))));
  v233 = veorq_s8(*&STACK[0xE20], *&STACK[0xEB0]);
  v234 = veorq_s8(*&STACK[0xE20], *&STACK[0xEA0]);
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(v235, vandq_s8(vaddq_s64(v235, v235), v16)), *&STACK[0xC90]), *&STACK[0xC80]);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), *&STACK[0xC70]);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(*&STACK[0xE70], *&STACK[0xE70]), *&STACK[0xED0]), *&STACK[0xE70]), v116), *&STACK[0xEC0]);
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239), v18);
  v242 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v243 = veorq_s8(v240, *&STACK[0xE60]);
  v244 = veorq_s8(v241, v242);
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v244);
  v246 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v247 = vsubq_s64(vandq_s8(vaddq_s64(v245, v245), *&STACK[0xC50]), v245);
  v248 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v249 = veorq_s8(vaddq_s64(v246, v243), *&STACK[0xCE0]);
  v250 = veorq_s8(vaddq_s64(v247, v170), v173);
  v251 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v252 = veorq_s8(v249, v248);
  v253 = veorq_s8(v250, v251);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v253);
  v255 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v256 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v254, v254), v183), v254), v186), v188);
  v257 = vaddq_s64(v255, v252);
  v258 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v258), *&STACK[0xCE0]);
  v261.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v257, v257), *&STACK[0xD40]), v257), *&STACK[0xD30]), v17), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE80], 3uLL), *&STACK[0xD50]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL))), v203), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE40], 3uLL), *&STACK[0xD50]))));
  *(a5 + v9 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v261, *&STACK[0xC60])), STACK[0xE90]);
  return (*(STACK[0xF18] + 8 * ((((v10 | (v8 + v9)) >= 0) * a3) ^ v6)))();
}

uint64_t sub_1005134A4(int a1)
{
  v2 = v1 - 1107313823 + (a1 ^ 0x1C78) + 17282;
  v3 = (v2 ^ 0x66332E63) & (2 * (v2 & 0x67202C70)) ^ v2 & 0x67202C70;
  v4 = ((75 * (a1 ^ 0x1C78)) ^ 0x8E26817B ^ (2 * (v2 ^ 0x20337603))) & (v2 ^ 0x20337603) ^ (2 * (v2 ^ 0x20337603)) & 0x47135A72;
  v5 = v4 ^ 0x41114A11;
  v6 = (v4 ^ 0x4001040) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x1C4D69CC) & v5 ^ (4 * v5) & 0x47135A70;
  v8 = (v7 ^ 0x4014840) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x43121233)) ^ 0x7135A730) & (v7 ^ 0x43121233) ^ (16 * (v7 ^ 0x43121233)) & 0x47135A70;
  return (*(STACK[0xF18] + 8 * ((21527 * ((v2 ^ (2 * ((((v9 ^ 0x6025843) << 8) & 0x47130000 ^ 0x3120000 ^ (((v9 ^ 0x6025843) << 8) ^ 0x135A0000) & (v9 ^ 0x6025843)) & (((v9 ^ 0x41110200) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x41110200) & (v8 << 8) ^ v8)) ^ 0xFFFFFFFF98DFD38FLL) + STACK[0xED0] == 0x25804E7F7C91AAAELL)) ^ a1)))();
}

uint64_t sub_100513648@<X0>(int a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unsigned int a4@<W8>, int64x2_t a5@<Q5>, int8x16_t a6@<Q6>, int64x2_t a7@<Q7>)
{
  v28 = (a1 - 722) | a4;
  v29.i64[0] = a3 + v9 - 7;
  v29.i64[1] = a3 + v9 - 8;
  v30.i64[0] = a3 + v9 - 5;
  v30.i64[1] = a3 + v9 - 6;
  v31.i64[0] = a3 + v9 - 3;
  v31.i64[1] = a3 + v9 - 4;
  v32.i64[0] = a3 + v9 + (v28 ^ v7);
  v32.i64[1] = a3 + v9 - 2;
  v33 = vandq_s8(v32, v12);
  v34 = vandq_s8(v31, v12);
  v35 = vandq_s8(v30, v12);
  v36 = vandq_s8(v29, v12);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v41 = vorrq_s8(vaddq_s64(v37, a5), a6);
  v42 = v11;
  v43 = vorrq_s8(vsubq_s64(a7, v37), v14);
  v44 = vaddq_s64(vorrq_s8(vsubq_s64(a7, v39), v14), vorrq_s8(vaddq_s64(v39, a5), a6));
  v45 = vsubq_s64(v15, vaddq_s64(v43, v41));
  v46 = vsubq_s64(v15, vaddq_s64(vorrq_s8(vsubq_s64(a7, v38), v14), vorrq_s8(vaddq_s64(v38, a5), a6)));
  v47 = veorq_s8(v46, v16);
  v48 = veorq_s8(v45, v16);
  v49 = veorq_s8(v45, v17);
  v50 = veorq_s8(v46, v17);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v52, v52), v18), v52), v19), v20);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), v18), v51), v19), v20);
  v55 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v56 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v57 = veorq_s8(v53, v55);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), v21);
  v61 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v62 = veorq_s8(v59, v21);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v61);
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), v27);
  v68 = veorq_s8(v66, v27);
  v69 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, v22), vorrq_s8(v73, v24)), v24), v23);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, v22), vorrq_s8(v74, v24)), v24), v23);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), v25);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78), v25);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v26);
  v87 = veorq_s8(v85, v26);
  v88 = vsubq_s64(v15, v44);
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v42)));
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v42)));
  v89 = veorq_s8(v88, v16);
  v90 = veorq_s8(v88, v17);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v91, v91), v18), v91), v19), v20);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v21);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v27);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v98, v22), vorrq_s8(v98, v24)), v24), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v25);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v26);
  v104 = vsubq_s64(v15, vaddq_s64(vorrq_s8(vsubq_s64(a7, v40), v14), vorrq_s8(vaddq_s64(v40, a5), a6)));
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v42)));
  v105 = veorq_s8(v104, v16);
  v106 = veorq_s8(v104, v17);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v18), v107), v19), v20);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v21);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v27);
  v113 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v115 = veorq_s8(v112, v113);
  v116 = vaddq_s64(v114, v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v22), vorrq_s8(v116, v24)), v24), v23);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v25);
  v120 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = veorq_s8(v119, v120);
  v123 = veorq_s8(vaddq_s64(v121, v122), v26);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v42)));
  *(v10 + v9 + (v28 ^ v7)) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v125, *&STACK[0xE70])), *(a3 + v9 + (v28 ^ v7) - 7));
  return (*(STACK[0xF18] + 8 * (((a2 == 0) * v8) ^ a1)))();
}

uint64_t sub_100513BB0()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762637128) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x226B304C | (&STACK[0x10000] + 3800) & 0xDD94CFB0) ^ 0x136AFD68));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE66E)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((19728 * (*STACK[0x970] > ((330 * (v0 ^ 0x2C52) - 8247) ^ (v0 + 24164)))) ^ v0)))(v2);
}

uint64_t sub_100513E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52, int a53, int a54, int a55)
{
  STACK[0x2F0] = a52;
  LODWORD(STACK[0x228]) = v55;
  LODWORD(STACK[0x2AC]) = a2;
  LODWORD(STACK[0x460]) = a53;
  LODWORD(STACK[0x404]) = a55;
  return (*(v56 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100513E78@<X0>(int a1@<W8>)
{
  v1 = a1 - 24370;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x741F ^ (v1 - 305405199) & 0x12347FFA)))();
}

uint64_t sub_100513ED4()
{
  STACK[0x4F90] = *STACK[0x10D8];
  LODWORD(STACK[0x22E8]) = STACK[0x242C];
  LODWORD(STACK[0x35EC]) = 1693393221;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100513F68@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE0]) = (v1 - 27124) ^ (155453101 * ((((&STACK[0x10000] + 3800) ^ 0xBDDD4B6E) - 2 * (((&STACK[0x10000] + 3800) ^ 0xBDDD4B6E) & 0x7A95C64) - 2018943899) ^ 0xDC520CC4));
  STACK[0x10ED8] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4626)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 - 15295)))(v3);
}

uint64_t sub_10051409C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 1631029026;
  v3 = STACK[0xB730] + 4 * (SLODWORD(STACK[0xA1B4]) ^ 0x23C6854FLL);
  STACK[0xA1C8] = v3;
  STACK[0xE10] = v3;
  *v3 = v0;
  LOWORD(v3) = 2850 * (((*(STACK[0xB708] + 23) ^ 0x7BD8) - 31704) ^ ((*(STACK[0xB708] + 23) ^ 0x468F) - 18063) ^ ((*(STACK[0xB708] + 23) ^ 0x3D08) - 15624)) + 32594;
  v4 = v3 & 0xD050 ^ 0x1B02;
  LODWORD(v3) = ((v3 ^ (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x224C) & (2 * ((v3 ^ 0x220C) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0xFFB8) & 0xFFFE;
  v5 = v2 & 0xBFD90D3A;
  v6 = 1603510583 * (((~&STACK[0x10ED8] | 0x126F4D9D96D311E4) + (&STACK[0x10ED8] | 0xED90B262692CEE1BLL)) ^ 0xD261A58EFEF7DCB1);
  LODWORD(STACK[0x10F00]) = v1 - v6 - 1781272532;
  v7 = v2 ^ v6;
  LODWORD(STACK[0x10EF0]) = v7 ^ 0x1387;
  LODWORD(STACK[0x10EE0]) = v7;
  STACK[0x10ED8] = (((23 * (((v3 ^ 0x59B64AE0) - 1505118944) ^ ((v3 ^ 0x795DBEE7) - 2036186855) ^ ((v3 ^ 0x20EBDBEF) + 1319953)) + 4607448) >> 16) + 105) ^ v6;
  STACK[0x10EE8] = v6 ^ 0xAB;
  LODWORD(STACK[0x10EF4]) = v5 - v6;
  LODWORD(STACK[0x10EF8]) = v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41BA)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * SLODWORD(STACK[0x10EFC])))(v9);
}

uint64_t sub_100514310()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 27006;
  LODWORD(STACK[0x3834]) = v0;
  LODWORD(STACK[0x7E54]) += 4;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 16221)))(v1 ^ 0xC704E5F7);
  STACK[0x3850] = v5;
  return (*(v4 + 8 * ((109 * (v5 != 0)) ^ v3)))();
}