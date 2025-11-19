uint64_t sub_1005145A0()
{
  v5 = v3 + v0;
  v6 = *(v3 + v0);
  *(v5 - 160) = *(v3 + v0 - 16);
  *(v5 - 144) = v6;
  return (*(STACK[0xF18] + 8 * (((v0 + 32 == v1) * v4) ^ v2)))();
}

uint64_t sub_1005145D0(int a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = (v8 ^ 0x8B3C) * v11;
  if (a3 < v10 != v7 + a1 < ((v12 + a7) | v9) + a2)
  {
    v13 = a3 < v10;
  }

  else
  {
    v13 = v7 + a1 < a3;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * a4) ^ v12)))();
}

uint64_t sub_100514638(int a1, int a2, unint64_t a3)
{
  LODWORD(STACK[0xEA0]) = a1;
  LODWORD(STACK[0xEC0]) = v4;
  LODWORD(STACK[0xED0]) = a2;
  STACK[0xEB0] = a3;
  return (*(STACK[0xF18] + 8 * v3))(94372620, 540737536, 1166016512, 1003225088, 2406349636, 1723350101);
}

uint64_t sub_100514798()
{
  v1 = (((v0 ^ 0xB2DFD2E7) + 1676742655) ^ ((v0 ^ 0xEA023E7D) + 992797541) ^ (((116 * (STACK[0xF10] ^ 0x8B3C) - 1613167039) ^ v0) + 1324864629)) + 1105502447;
  v2 = (((LODWORD(STACK[0xB4D4]) ^ 0xC0F57E53) + 1057653165) ^ ((LODWORD(STACK[0xB4D4]) ^ 0xD21869FD) + 770151939) ^ ((LODWORD(STACK[0xB4D4]) ^ 0xFB38D0BF) + 80162625)) + 1105502447;
  v3 = v1 < 0x580ED9DE;
  v4 = v1 > v2;
  if (v2 < 0x580ED9DE != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((212 * v4) ^ (STACK[0xF10] + 13619))))();
}

uint64_t sub_1005148C0()
{
  v2 = STACK[0x4310];
  v3 = 72 * (((((v1 ^ 0xAC3D) - 9414) | 0x30A5u) ^ 0x896BBAAF3E2922ELL) + STACK[0x2CE0]);
  *(*v2 + v3 + 16) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xAC3D | ((*(*v2 + v3 + 16) == 0) << 6))))();
}

uint64_t sub_10051493C()
{
  v0 = (STACK[0xF10] + 486241412) & 0xE3040746;
  v1 = STACK[0xF10] - 16626;
  v2 = LODWORD(STACK[0xA8F8]) + (*STACK[0x5A88] - 45);
  LODWORD(STACK[0x9A8C]) = v2 - 1982205110;
  LODWORD(STACK[0x9A90]) = v2 - 93179276;
  v2 += 330777700;
  v3 = (((LODWORD(STACK[0x93CC]) ^ 0x8140CB23) + 2126460125) ^ ((LODWORD(STACK[0x93CC]) ^ 0x926B8C1F) + (v0 ^ 0x6D9474E7)) ^ ((LODWORD(STACK[0x93CC]) ^ 0xFAFE802D) + 83984339)) + 1941116715;
  v4 = v2 < 0x89DD501A;
  v5 = v2 > v3;
  if (v4 != v3 < 0x89DD501A)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((v5 | (16 * v5)) ^ v1)))();
}

uint64_t sub_100514A9C(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x7938];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1149024933;
  return (*(STACK[0xF18] + 8 * (v2 - 30612)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100514BAC()
{
  v4 = *(*(*v1 + 72 * v0 + 16) + 16 * v2 + 12);
  v5 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x27C08CE3) - ((&STACK[0x10000] + 3800) & 0x27C08CE0)) ^ 0x93E174DE);
  LODWORD(STACK[0x10ED8]) = v3 - v5 - 87453365;
  LODWORD(STACK[0x10EDC]) = ((((v4 ^ 0x9742290C) + 1757271796) ^ ((v4 ^ 0x84359FAC) + 2076860500) ^ (((v3 - 2463) | 0x4BC1) + 89989758 + (v4 ^ 0xFAA271B1))) + 38076517) ^ v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 41474)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((85 * (LOBYTE(STACK[0x10EE0]) != 73)) ^ v3)))(v7);
}

uint64_t sub_100514CD8@<X0>(int a1@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x7F18] = *(STACK[0xF18] + 8 * a1);
  STACK[0x1CD8] = v5;
  LODWORD(STACK[0x48B0]) = v1;
  LOBYTE(STACK[0x3EC7]) = v3;
  STACK[0x2240] = v4;
  return (*(v6 + 8 * (((v1 - 1443395238 < ((v2 - 1282) ^ 0xFFFF74C5)) * (((v2 - 35896) | 0x1348) - 5173)) ^ v2)))();
}

uint64_t sub_100514E04@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x9118] + 24);
  STACK[0x6720] = v1;
  return (*(STACK[0xF18] + 8 * ((((((a1 + 1895404547) ^ (v1 == 0)) & 1) == 0) * ((11881 * (a1 ^ 0x6AD2)) ^ 0x8B0F)) ^ a1)))();
}

uint64_t sub_100514EEC()
{
  v0 = (STACK[0xF10] - 1211) | 0x4004;
  v1 = STACK[0xF10] - 34252;
  v2 = STACK[0xA430] + 85;
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 + v0 - 45699)))(v2);
}

uint64_t sub_100514F9C()
{
  v0 = (STACK[0xF10] - 1249791964) & 0x4A7DFFE7;
  v1 = STACK[0xF10] - 34115;
  v2 = STACK[0xF18];
  STACK[0x7A58] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x5B5A) + v1)))();
}

uint64_t sub_1005150B0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31756;
  v2 = STACK[0x9840];
  *(v2 + 60) = STACK[0xF10] ^ 0x28 ^ *STACK[0x3238];
  STACK[0x99C0] = v2 + 61;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v0 - 30007)))();
}

uint64_t sub_100515178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x8838];
  STACK[0x6290] = STACK[0x8838] + 28;
  STACK[0x1830] = v6 + 68;
  v7 = STACK[0x7690];
  v8 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x8F18] = v8;
  STACK[0x7690] = v7 + ((v5 + 23243) ^ 0x8B1BLL);
  STACK[0x58B0] = (v8 + 16);
  STACK[0x95A0] = (v8 + 16);
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 1349488910;
  return (*(STACK[0xF18] + 8 * v5))(a1, a2, STACK[0xE58], STACK[0xE50], a5, 367782106, 4889, 1919092000);
}

uint64_t sub_100515234()
{
  v1 = *STACK[0x4288];
  LODWORD(STACK[0x10ED8]) = (v0 + 703924016) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0xAC3F8817) + (~(&STACK[0x10000] + 3800) | 0x53C077E8)) ^ 0xC1A9A7EA));
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 49573)))(&STACK[0x10ED8]);
  STACK[0x23F0] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((((v0 + 15203) | 0x2240) ^ 0x5766) + v0) ^ (20299 * ((v0 ^ 0xEAD05B56) < 0x86EEDDDD)))))(v3);
}

uint64_t sub_10051533C(uint64_t a1)
{
  *(a1 + 24) = -371865839;
  *(v4 + 4) = v3;
  *(v4 + 748) = 0;
  *(v4 + 760) = -371865839;
  *(v4 + 752) = 0;
  *(v4 + 776) = 174777416;
  *(v4 + 768) = 0;
  *(v4 + 552) = 0;
  *(v4 + 640) = 0;
  *(v4 + 656) = 0;
  *(v4 + 672) = 0;
  *(v4 + 688) = 0;
  *(v4 + 704) = 0;
  *(v4 + 720) = 0;
  LODWORD(STACK[0x10ED8]) = v2 - 33706 + 634647737 * ((~&STACK[0x10ED8] & 0xD86F0FA3 | &STACK[0x10ED8] & 0x2790F058) ^ 0xB5F9205F) - 212184825;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 10363)))(&STACK[0x10ED8]);
  *(v4 + 780) = 0xE9D5C711A2DDC711;
  LOWORD(STACK[0x10EE0]) = 23473 * (((&STACK[0x10ED8] | 0xE59D) - (&STACK[0x10ED8] | 0x1A62) + 6754) ^ 0x28B9) + 18093;
  STACK[0x10EE8] = v1 + 352;
  LODWORD(STACK[0x10ED8]) = (v2 - 28574) ^ (906386353 * (((&STACK[0x10ED8] | 0xCE43E59D) - (&STACK[0x10ED8] | 0x31BC1A62) + 834411106) ^ 0xFF4228B9));
  (*(v5 + 8 * (v2 + 10222)))(&STACK[0x10ED8]);
  v6 = *(v1 + 384) - ((*(v1 + 384) / 0x11u) | (16 * (*(v1 + 384) / 0x11u)));
  v7 = (((((2 * v6) & 0x36) + (v6 ^ 0xFB) + 85) < (v2 + 125)) << 8) + (((2 * v6) & 0x36) + (v6 ^ 0xFB));
  *(v4 + 648) = v7 + 42803878;
  v8 = (*(v5 + 8 * ((v2 - 33706) ^ 0xD581)))((v7 + 21));
  *(v4 + 640) = v8;
  return (*(v5 + 8 * (((v8 == 0) | (4 * (v8 == 0))) ^ (v2 - 33706))))();
}

uint64_t sub_100515540()
{
  v8 = v6 > v1;
  v9 = (v7 + v5);
  v10 = v8 ^ (v9 < (((v2 ^ v3) + v4) ^ 0x87FFu));
  v11 = v9 < v0;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0xF18] + 8 * ((!v8 * v3) ^ v2)))();
}

uint64_t sub_1005155FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x6EB8] = 0;
  LODWORD(STACK[0x8584]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((((a3 + 2210) ^ 0xA922 ^ (a3 - 849544738) & 0x32A287CE) * (v3 == -371865840)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_100515668(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0xF18] + 8 * (v2 - 27350));
  LODWORD(STACK[0xE70]) = 47179;
  return v4(a1, a2, v3);
}

uint64_t sub_1005156A0()
{
  LODWORD(STACK[0x4B6C]) = v2;
  v5 = v1 + 640 * v3;
  STACK[0x6E68] = v5;
  STACK[0x10ED8] = *(v0 + 16);
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xC6D45640) - ((&STACK[0x10000] + 3800) | 0x392BA9BF) + 959162815) ^ 0x20F24D8F) + 296740284;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v4 + 3452)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((((((v4 - 513800537) & 0x1E9F7DBB) + 18826) ^ 0x8B2D) * (v5 == 0)) ^ v4)))(v7);
}

uint64_t sub_100516270@<X0>(int a1@<W8>)
{
  STACK[0x9158] = v1;
  STACK[0x8E60] = v1 - 24;
  return (*(STACK[0xF18] + 8 * (((((v1 == 0) ^ (105 * (a1 ^ 0x62))) & 1) * ((a1 + 152749214) & 0xF6E49EBF ^ 0x1CBC)) ^ a1)))();
}

uint64_t sub_100516338()
{
  v2 = STACK[0x94F0];
  v3 = STACK[0x7F30];
  v4 = STACK[0x1718];
  v5 = STACK[0x30E0] + (*(v0 + 1864) - 556438242);
  v6 = (((*(v0 + 1868) ^ 0xD7BC994B) + 675505845) ^ ((*(v0 + 1868) ^ 0x3B4AE73D) - 994764605) ^ (v1 - 42347 + (*(v0 + 1868) ^ 0x523B967) - 86234137)) + 173857827;
  v7 = 906386353 * ((((&STACK[0x10000] + 3800) | 0xB36B6B4F) - ((&STACK[0x10000] + 3800) | 0x4C9494B0) + 1284805808) ^ 0x826AA66B);
  LODWORD(STACK[0x10EF4]) = (v1 - 30767) ^ v7;
  STACK[0x10EE8] = v2;
  STACK[0x10F00] = v5;
  STACK[0x10ED8] = v4;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EF0]) = v6 ^ v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC59)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v1))(v9);
}

uint64_t sub_100516468()
{
  LODWORD(STACK[0x7F2C]) += 4;
  LODWORD(STACK[0x10ED8]) = v0 + 634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x16E7D240) - (&STACK[0x10000] + 3800) - 384291400) ^ 0x848E0244) - 212179722;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC014)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 29034 + v0 + 32785)))(v2);
}

uint64_t sub_1005165B4()
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((13581 * (STACK[0xF10] == -1605506560)) ^ (STACK[0xF10] - 30778))))();
}

uint64_t sub_1005167D4@<X0>(int a1@<W8>)
{
  v3 = (*(v2 - 0x10A99C80114D144FLL) & 0x20) == 0;
  STACK[0x5E78] = &STACK[0xC4D0] + v1;
  *(&STACK[0xC4D0] + v1) = *(v2 - 0x10A99C80114D144BLL);
  if (v3)
  {
    v4 = -371996909;
  }

  else
  {
    v4 = -371996910;
  }

  LODWORD(STACK[0xA4F0]) = v4;
  v5 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v5 + 8 * (((a1 + 3895) ^ 0x19DC) + a1)))();
}

uint64_t sub_100516878()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2325)))();
}

uint64_t sub_100516944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x3908]) += 16;
  v8 = STACK[0x7D40];
  LODWORD(STACK[0xACEC]) = *(STACK[0x7D40] + 176);
  v9 = *(v8 + 184);
  STACK[0xACF0] = v9;
  if (v9)
  {
    v10 = STACK[0xACB8] == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(STACK[0xF18] + 8 * (((((v7 + 87) ^ v11) & 1) * (((v7 + 454765725) & 0xE4E4ABFD) - 2863)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, &off_1010A0B50);
}

uint64_t sub_1005169CC(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x9438] + 24);
  STACK[0x6890] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v2 - 47615) | 0x1410) - 5173)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_100516A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a8 + 12);
  v11 = v10 + 732567967;
  v12 = v10 > 0xD455E660;
  if (v12 == v8 - 567198997 < (((v9 + 22881) | 0x220) ^ 0x2BAA8EAFu))
  {
    v12 = v8 - 567198997 < v11;
  }

  return (*(STACK[0xF18] + 8 * ((47648 * v12) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, 371891374);
}

uint64_t sub_100516B20()
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((((*(STACK[0xF18] + 8 * (v0 ^ 0x7C5B)))(24) == 0) ^ (v0 + 124)) & 1) * ((v0 + 648595068) & 0xD956BEFC ^ 0x3C33)) ^ v0));
  return v2();
}

uint64_t sub_100516BEC()
{
  v1 = STACK[0x2FB8];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x386D7AB0) + 946698934) ^ 0x8ED648D0) - 7539;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 41072)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100516D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 40) = 0;
  *(*(a2 + 480) + 24) = 0;
  *(*(a2 + 480) + 8) = 0;
  v3 = (((LODWORD(STACK[0x7FF4]) ^ (v2 + 516935235)) - 516950488) ^ ((LODWORD(STACK[0x7FF4]) ^ 0x7B2109E) - 129110174) ^ ((LODWORD(STACK[0x7FF4]) ^ (15 * (v2 ^ 0x3BA2) - 256386274)) + 256385449)) - 371865851;
  v4 = __CFADD__(v3, 12);
  v5 = v3 < 0xFFFFFFF4;
  if (v4)
  {
    v6 = 371891407;
  }

  else
  {
    v6 = -371865839;
  }

  LODWORD(STACK[0xB504]) = v6;
  return (*(STACK[0xF18] + 8 * ((47 * v5) ^ v2)))();
}

uint64_t sub_100516E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 32436;
  *a5 += v5 - 35642;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x472E4760) - (&STACK[0x10000] + 3800) + 953268377) ^ 0xDEF7A356) + 296753103;
  STACK[0x10ED8] = 0;
  v7 = v5 ^ 0x41F1;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * v7))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v8 + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x1AE8)))(v9);
}

uint64_t sub_100516EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8 + 437333593;
  v9 = STACK[0x853C];
  v10 = LODWORD(STACK[0x7B34]) ^ 0xF3644023;
  v11 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0x139CBC34) - ((&STACK[0x10000] + 3800) | 0xEC6343CB) - 329038901) ^ 0x84478E9F);
  STACK[0x10EE8] = STACK[0x53B8];
  LODWORD(STACK[0x10EF0]) = v10 - v11;
  LODWORD(STACK[0x10EDC]) = v11 ^ v9 ^ 0x4B063357;
  LODWORD(STACK[0x10EE0]) = a8 + 437333593 - v11 + 1859442945;
  STACK[0x10EF8] = &STACK[0x2C98];
  STACK[0x10F00] = &STACK[0x9818];
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * ((a8 + 437333593) ^ 0x1A1186C0)))(&STACK[0x10ED8]);
  v14 = STACK[0x9818];
  v15 = STACK[0x2C98];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v14;
  LODWORD(STACK[0x655C]) = v15;
  LODWORD(STACK[0x884C]) = -39699200;
  return (*(v12 + 8 * (((v8 > 0xE1B930DF) * (v8 ^ 0x1A1172E7)) ^ (v8 - 437336247))))(v13);
}

uint64_t sub_100517034()
{
  v3 = 2 * (*(v1 + 1) & 0x3F) + (*(v1 + 1) ^ 0xBF);
  *(v2 + 9) = (v0 - 18) ^ 0x8F ^ v3 ^ 0x8C;
  *v2 = 993499389;
  STACK[0x6658] = v2 + 9;
  return (*(STACK[0xF18] + 8 * ((41353 * (v3 == 192)) ^ v0)))();
}

uint64_t sub_1005170A8(uint64_t a1, unsigned __int8 a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = (a2 ^ 0x1B) & (2 * (a2 & a5)) ^ a2 & a5;
  v9 = (a2 ^ (2 * (((2 * (a2 ^ 0x3F)) & 0x6C ^ ((2 * (a2 ^ 0x3F)) ^ 0xD8) & (a2 ^ 0x3F) ^ 8) & (4 * v8) ^ v8))) & 0x1F ^ 0x13;
  *(a6 + 4 * v9) += 1976181163;
  if (v6 < 0x4FC6C6D != a3 < 0x4FC6C6D)
  {
    v10 = v6 < 0x4FC6C6D;
  }

  else
  {
    v10 = a3 < v6;
  }

  return (*(STACK[0xF18] + 8 * ((73 * !v10) ^ v7)))();
}

uint64_t sub_100517318()
{
  *v0 = *v0 + 3 * (v1 ^ 0x2CB5) - 35642;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x58E3A50) - ((&STACK[0x10000] + 3800) | 0xFA71C5AF) - 93207121) ^ 0xE3A8219F) + 296788014;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC816)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 + 5023)))(v3);
}

uint64_t sub_1005173D8()
{
  STACK[0x9A30] = v1 + 112;
  STACK[0x9A38] = (v0 - 1196686634);
  return (*(STACK[0xF18] + 8 * ((((v2 + 177632877) & 0xF569BFDB) - 5460) ^ v2)))();
}

uint64_t sub_1005174E0@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 - 1;
  STACK[0x90A0] = v5;
  v6 = ((v3 ^ 0x77) - 12) ^ v3 ^ ((v3 ^ 0xDC) + 89) ^ ((v3 ^ 0xFB) + 0x80) ^ ((v2 ^ v3) - 80);
  *(a1 + v5) = ((((v6 ^ 0x54) - 44) ^ ((v6 ^ 0xB7) + 49) ^ ((v6 ^ 0x22) - 90)) - 40) * (v3 - 106) - 31 * v3 - 42;
  return (*(STACK[0xF18] + 8 * ((47597 * (STACK[0x90A0] == 0)) ^ v1)))();
}

uint64_t sub_10051776C()
{
  v0 = STACK[0xF10] ^ 0xE5F0958C;
  v1 = STACK[0xF10] - 31721;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 + 437250780)))();
}

uint64_t sub_1005177D8()
{
  v1 = STACK[0x40DC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393330;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10051786C@<X0>(int a1@<W8>)
{
  *(v2 + 40) = ((((v1 - 968857025) & 0x39BF78DD) + 4703) ^ 0x8B3A) + a1;
  v4 = *(v2 + 32);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((2 * &STACK[0x10ED8]) | 0x63AB95FA) - &STACK[0x10ED8] + 1311388931) ^ 0x57F3D132) + 296750411;
  STACK[0x10ED8] = v4;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x5F75)))(&STACK[0x10ED8]);
  v6 = *(v2 + 48);
  v7 = STACK[0x1730];
  v8 = ((LODWORD(STACK[0x59E8]) ^ 0x1606D387) - 369546119) ^ ((LODWORD(STACK[0x59E8]) ^ 0xD0F363EB) + 789355541) ^ ((LODWORD(STACK[0x59E8]) ^ 0x2F20777D) - 790656893);
  v9 = 634647737 * (((&STACK[0x10ED8] | 0xC3BEC613) - (&STACK[0x10ED8] | 0x3C4139EC) + 1010907628) ^ 0xAE28E9EF);
  LODWORD(STACK[0x10EF0]) = v1 - v9 - 10635;
  STACK[0x10F08] = v6;
  LODWORD(STACK[0x10F00]) = v8 - v9 + 50589644;
  STACK[0x10EF8] = &STACK[0x2628];
  STACK[0x10EE8] = v7;
  STACK[0x10EE0] = &STACK[0x7D1C];
  (*(v5 + 8 * (v1 ^ 0x5E7D)))(&STACK[0x10ED8]);
  v10 = *(v2 + 32);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762663984) ^ ((((&STACK[0x10ED8] | 0xAF92B933) - (&STACK[0x10ED8] & 0xAF92B930)) ^ 0x9E937417) * v3);
  STACK[0x10EE0] = v10;
  v11 = (*(v5 + 8 * (v1 ^ 0x5F06)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((118 * (*(v2 + 40) < 1)) ^ v1)))(v11);
}

uint64_t sub_100517BD4()
{
  v3 = v2 + v1;
  *v3 = -24416;
  *(v3 + 2) = -96;
  v4 = v1 + 3 == ((v0 + 1964793972) & 0x8AE39F7F) - 35635;
  return (*(STACK[0xF18] + 8 * (((2 * (((-21 * (v0 ^ 0x56)) ^ v4) & 1)) & 0xDF | (32 * (((-21 * (v0 ^ 0x56)) ^ v4) & 1))) ^ v0)))();
}

uint64_t sub_100517D14()
{
  LODWORD(STACK[0x1988]) = v1;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((6064 * ((v0 - 1957361964) < 0xE46E87F2)) ^ (v0 - 1503))))();
}

uint64_t sub_100517F8C()
{
  v0 = (STACK[0xF10] - 133894972) & 0x7FA9EEF;
  v1 = STACK[0xF10] - 33727;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 2477)))();
}

uint64_t sub_100518024@<X0>(int a1@<W8>)
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
  STACK[0xBD80] = 0;
  STACK[0xBD88] = v2;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBD80] | v13);
  *(&STACK[0xBD80] | v13) = STACK[0xBD87];
  v17 = *(&STACK[0xBD80] | v14);
  *(&STACK[0xBD80] | v14) = STACK[0xBD86];
  v18 = *(&STACK[0xBD80] | v15);
  *(&STACK[0xBD80] | v15) = STACK[0xBD85];
  v19 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v20 = vdup_n_s32(1269228062 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBD87]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBD86]) = v17;
  LOBYTE(STACK[0xBD85]) = v18;
  v23 = STACK[0xBD80];
  LOBYTE(STACK[0xBD80]) = STACK[0xBD84];
  LOBYTE(STACK[0xBD84]) = v23;
  v24 = *(&STACK[0xBD80] | v19);
  *(&STACK[0xBD80] | v19) = STACK[0xBD83];
  LOBYTE(STACK[0xBD83]) = v24;
  v25 = STACK[0xBD81];
  LOBYTE(STACK[0xBD82]) = STACK[0xBD80];
  LOWORD(STACK[0xBD80]) = v25;
  STACK[0xBD80] = vmla_s32(v22, STACK[0xBD80], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD88];
  v27 = (1269228062 * STACK[0xBD88]) ^ v12;
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
  v48 = *(&STACK[0xBD88] + v13);
  *(&STACK[0xBD88] + v13) = STACK[0xBD8F];
  LOBYTE(STACK[0xBD8F]) = v48;
  v49 = *(&STACK[0xBD88] + v14);
  *(&STACK[0xBD88] + v14) = STACK[0xBD8E];
  LOBYTE(STACK[0xBD8E]) = v49;
  v50 = *(&STACK[0xBD88] + v15);
  *(&STACK[0xBD88] + v15) = STACK[0xBD8D];
  LOBYTE(STACK[0xBD8D]) = v50;
  v51 = STACK[0xBD88];
  LOBYTE(STACK[0xBD88]) = STACK[0xBD8C];
  v52 = *(&STACK[0xBD88] + v19);
  *(&STACK[0xBD88] + v19) = STACK[0xBD8B];
  LOBYTE(STACK[0xBD8C]) = v51;
  LOBYTE(STACK[0xBD8B]) = v52;
  v53 = STACK[0xBD89];
  LOBYTE(STACK[0xBD8A]) = STACK[0xBD88];
  LOWORD(STACK[0xBD88]) = v53;
  STACK[0xBD88] = vmla_s32(v22, STACK[0xBD88], vdup_n_s32(0x1000193u));
  *v1 = STACK[0xBD88] ^ STACK[0xBD80];
  return (*(STACK[0xF18] + 8 * (a1 - 25670)))();
}

uint64_t sub_1005184B4()
{
  v0 = STACK[0xF10] + 11600;
  v1 = STACK[0xF10] - 34095;
  LODWORD(STACK[0xA4C0]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v0 ^ v1 ^ 0xA6B1)))();
}

uint64_t sub_10051853C()
{
  v1 = (v0 - 17974) | 0x4890;
  v2 = STACK[0xEC0];
  v3 = *STACK[0xEC0];
  v4 = *(STACK[0xEC0] + 4);
  v5 = *(STACK[0xEC0] + 852);
  v6 = 325298697 << ((v4 ^ 0x1A) & 0xD ^ 4) << ((v4 ^ 0x1A) & 0x12 ^ 2);
  LODWORD(STACK[0xEA0]) = v1;
  LOBYTE(v4) = ((v4 ^ 0xD4) + (v1 ^ 0xFC)) ^ ((v4 ^ 0x52) - 82) ^ ((v4 ^ 0x3A) - 58);
  LOBYTE(v4) = (v4 + 28) ^ (25 - v4) ^ 0x94 ^ (((25 - v4) ^ 0xA) + 1);
  v7 = ((0x1363AA09u >> (v4 & 0xC) >> (v4 & 0x13 ^ 1)) ^ v6) & (v5 ^ 0x5B6E30B5);
  v8 = STACK[0xE90];
  v9 = *(STACK[0xE90] + 4 * (v2[29] & 0x3F ^ 0x3CLL));
  v10 = (((v9 ^ 0xC91A450E64FC35ALL) - 0xC91A450E64FC35ALL) ^ ((v9 ^ 0x48F522BF8A968A3BLL) - 0x48F522BF8A968A3BLL) ^ ((v9 ^ 0x446486EF603DE492) - 0x446486EF603DE492)) + 2307256188;
  LODWORD(v10) = ((2863311531u * v10 + 0x73B11EE32BCA3F7DLL) >> 33) | ((v10 > 0xD27651AA) << 31);
  v11 = (v10 ^ 0x1C5D1824) & (2 * (v10 & 0x9C9C5AB6)) ^ v10 & 0x9C9C5AB6;
  v12 = ((2 * (v10 ^ 0x15750D64)) ^ 0x13D2AFA4) & (v10 ^ 0x15750D64) ^ (2 * (v10 ^ 0x15750D64)) & 0x89E957D2;
  v13 = v12 ^ 0x88295052;
  v14 = (v12 ^ 0xC00780) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x27A55F48) & v13 ^ (4 * v13) & 0x89E957D0;
  v16 = (v15 ^ 0x1A15740) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x88480092)) ^ 0x9E957D20) & (v15 ^ 0x88480092) ^ (16 * (v15 ^ 0x88480092)) & 0x89E957C0;
  v18 = v16 ^ 0x89E957D2 ^ (v17 ^ 0x88815500) & (v16 << 8);
  v19 = (v10 ^ (2 * ((v18 << 16) & 0x9E90000 ^ v18 ^ ((v18 << 16) ^ 0x57D20000) & (((v17 ^ 0x16802D2) << 8) & 0x9E90000 ^ 0xA80000 ^ (((v17 ^ 0x16802D2) << 8) ^ 0x69570000) & (v17 ^ 0x16802D2)))) ^ 0xD31C0C55) & (v5 ^ 0xA491CF4A) ^ v5 & 0x5FD2F947;
  v20 = (v19 ^ 0xFB6F36BD) & (v7 ^ 0x65A75862) ^ v19 & 0x9A58A79D;
  v21 = (((v2[167] ^ 0xCE6A6180) + 831889024) ^ ((v2[167] ^ 0x74451D2) - 121917906) ^ ((v2[167] ^ 0x924000E7) + 1841299225)) - (((v20 ^ 0x8A9EA956) + 941641507) ^ ((v20 ^ 0x56C80DFD) - 461968502) ^ ((v20 ^ 0xB9E17DC9) + 190815166)) + 1114805550;
  v2[167] = v21 ^ ((v21 ^ 0x5C8E2BBD) - 1400180447) ^ ((v21 ^ 0xE4CD3933) + 348775343) ^ ((v21 ^ 0x4A42C81B) - 1169812857) ^ ((v21 ^ 0xFDFAFFF7) + 234759531) ^ 0x549515D7;
  v22 = v2[121];
  v23 = v22 & 0xCEC9E46;
  v24 = *(&off_1010A0B50 + (v0 - 18084)) - 860764670;
  v25 = (*&v24[4 * (v2[75] & 0x3F ^ 0x3CLL)] ^ 0x807CEC91) & (v22 ^ 0xF31B520C) ^ v22 & 0x400BF0D8;
  v26 = (v25 ^ 0x1CF48FE7) & (v23 ^ 0x5C9D47A7) ^ v25 & 0xAF86341A;
  v27 = (((v2[208] ^ 0x677565B0) - 1735746992) ^ ((v2[208] ^ 0x47586D09) - 1196977417) ^ ((v2[208] ^ 0x7B43380C) - 2068002828)) - (((v26 ^ 0x824C6237) - 1014633176) ^ ((v26 ^ 0xBA560667) - 73430664) ^ ((v26 ^ 0x6861BFBD) + 698888366)) - 1025711801;
  LODWORD(v10) = (v27 ^ 0x2A63A74D) & (2 * (v27 & 0xAA43A46C)) ^ v27 & 0xAA43A46C;
  v28 = ((2 * (v27 ^ 0x2A67AF05)) ^ 0x4816D2) & (v27 ^ 0x2A67AF05) ^ (2 * (v27 ^ 0x2A67AF05)) & 0x80240B68;
  v29 = v28 ^ 0x80240929;
  v30 = (v28 ^ 0x240) & (4 * v10) ^ v10;
  LODWORD(v10) = ((4 * v29) ^ 0x902DA4) & v29 ^ (4 * v29) & 0x80240B68;
  v31 = (v10 ^ 0x920) & (16 * v30) ^ v30;
  LODWORD(v10) = ((16 * (v10 ^ 0x80240249)) ^ 0x240B690) & (v10 ^ 0x80240249) ^ (16 * (v10 ^ 0x80240249)) & 0x80240B40;
  v32 = v31 ^ 0x80240B69 ^ (v10 ^ 0x200) & (v31 << 8);
  v2[208] = v27 ^ (2 * ((v32 << 16) & 0x240000 ^ v32 ^ ((v32 << 16) ^ 0xB690000) & (((v10 ^ 0x80240969) << 8) & 0x240000 ^ 0x240000 ^ (((v10 ^ 0x80240969) << 8) ^ 0x240B0000) & (v10 ^ 0x80240969)))) ^ 0xF125820B;
  v2[100] ^= 0x4308175u;
  v33 = v8[v2[66] & 0x3F ^ 0x3CLL];
  v34 = (((v2[196] ^ 0x60140104) - 1611923716) ^ ((v2[196] ^ 0xAFBBD5B5) + 1346644555) ^ ((v2[196] ^ 0x94C1E404) + 1799232508)) - (((v33 ^ 0x22EF9995) - 586127765) ^ ((v33 ^ 0xE8F32AAF) + 386717009) ^ ((v33 ^ 0xC6F81EC9) + 956817719));
  v2[196] = (-1317634754 - v34) ^ (v34 - 858155502) ^ (((v34 - 858155502) ^ 0xD86F03D3) + 1505816445) ^ (((v34 - 858155502) ^ 0xE3CD0AF1) + 1650648671) ^ (((v34 - 858155502) ^ 0xBA0DE58D) + 1000474915) ^ 0x253E23E5;
  v35 = *&v24[4 * (v2[56] & 0x3F ^ 0x3CLL)];
  v36 = (((v35 ^ 0x39323201D58DE311) - 0x39323201D58DE311) ^ ((v35 ^ 0x16D711D203EA959) - 0x16D711D203EA959) ^ ((v35 ^ 0x385F431C35C45601) - 0x385F431C35C45601)) + 3291937365;
  LODWORD(v36) = (((v2[118] ^ 0x842F336D) + 2077281427) ^ ((v2[118] ^ 0x67057741) - 1728411457) ^ ((v2[118] ^ 0xEFCEE9DF) + 271652385)) + ((v36 > 0x5BCD1CE4) << 30) + 600813382 + ((3435973837u * v36 - 0x4970E3EA67265F9CLL) >> 34);
  v2[118] = v36 ^ ((v36 ^ 0x350EBFA0) - 1883274798) ^ ((v36 ^ 0xBB74700D) + 29707901) ^ ((v36 ^ 0x31CBF194) - 1954885658) ^ ((v36 ^ 0xFAFFFFB7) + 1078903239) ^ 0x49AA6C7D;
  v37 = v2[221] >> 1;
  LODWORD(v10) = v2[27];
  LODWORD(STACK[0xE70]) = v2[28];
  LODWORD(v36) = (((v37 ^ 0x572C455E) - 894003214) ^ ((v37 ^ 0xB12F6868) + 750107336) ^ ((v37 ^ 0x344BCA93) - 1445914563)) + (((v10 ^ 0x7222A3F) - 119679551) ^ ((v10 ^ 0xE6285189) + 433565303) ^ ((v10 ^ 0x1448DA0A) - 340318730)) - 286382930;
  v2[27] = v36 ^ ((v36 ^ 0xEF78DD66) + 1509594469) ^ ((v36 ^ 0x362D3BD6) - 2135985195) ^ ((v36 ^ 0xEFD58EB2) + 1498924721) ^ ((v36 ^ 0x7FFDDFFF) - 914384898) ^ 0xBC3F1641;
  LODWORD(v36) = (((v2[130] ^ 0x7FA1EFF7) - 2141319159) ^ ((v2[130] ^ 0x5FD1B628) - 1607579176) ^ ((v2[130] ^ 0x2C94F42C) - 747959340)) + 1926759015;
  v2[130] = v36 ^ ((v36 ^ 0xB4E969DF) + 161585670) ^ ((v36 ^ 0x5C5B0332) - 518786839) ^ ((v36 ^ 0xD7F29F37) + 1790602478) ^ ((v36 ^ 0x7DF7F9FF) - 1061221850) ^ 0x4E53A1D6;
  LODWORD(v36) = (v2[142] & 0x40000040 ^ 0xEE0E1D5A ^ (v2[142] & 0xC17025F9 ^ 0xFF9FDA0E) & (v2[135] ^ 0x46676DB1)) & (v2[142] & 0x3E8FDA06 ^ 0xCDF4ADFB) ^ v2[142] & 0x1A020206;
  LODWORD(v36) = (((v2[218] ^ 0x5796FEFC) - 1469513468) ^ ((v2[218] ^ 0xFFF45E89) + 762231) ^ ((v2[218] ^ 0xF30C90C0) + 217280320)) + 852976335 + (((v36 ^ 0x3AB07FBA) - 74211460) ^ ((v36 ^ 0x937E0AB8) + 1381886586) ^ ((v36 ^ 0x1F41AA5E) - 563983712));
  v38 = v36 ^ ((v36 ^ 0xB16F2DE1) + 25535399) ^ ((v36 ^ 0xA503D94E) + 367613706) ^ ((v36 ^ 0xA9867AE8) + 426570928) ^ ((v36 ^ 0xF2FFFFFF) + 1108701625);
  v2[218] = v38 ^ 0x147B410D;
  LODWORD(v10) = (((v2[206] ^ 0x9D30508D) + 1657778035) ^ ((v2[206] ^ 0xF9BA6C3D) + 105223107) ^ ((v2[206] ^ 0x3FE40C05) - 1071909893)) + (((v2[66] ^ 0x44D2DE11) - 1154670097) ^ ((v2[66] ^ 0xA66A1898) + 1502996328) ^ ((v2[66] ^ 0x17FA6735) - 402286389)) - 1179062796;
  v39 = (v10 ^ 0x96F7D078) & (2 * (v10 & 0x96F7E47D)) ^ v10 & 0x96F7E47D;
  v40 = ((2 * (v10 ^ 0xBF919820)) ^ 0x52CCF8BA) & (v10 ^ 0xBF919820) ^ (2 * (v10 ^ 0xBF919820)) & 0x29667C5C;
  v41 = v40 ^ 0x29220445;
  v42 = (v40 ^ 0x443018) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0xA599F174) & v41 ^ (4 * v41) & 0x29667C5C;
  v44 = (v43 ^ 0x21007050) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x8660C09)) ^ 0x9667C5D0) & (v43 ^ 0x8660C09) ^ (16 * (v43 ^ 0x8660C09)) & 0x29667C50;
  v46 = v44 ^ 0x29667C5D ^ (v45 ^ 0x664400) & (v44 << 8);
  LODWORD(v10) = v10 ^ (2 * ((v46 << 16) & 0x29660000 ^ v46 ^ ((v46 << 16) ^ 0x7C5D0000) & (((v45 ^ 0x2900380D) << 8) & 0x29660000 ^ 0x9020000 ^ (((v45 ^ 0x2900380D) << 8) ^ 0x667C0000) & (v45 ^ 0x2900380D))));
  v2[66] = v10 ^ 0x61F1BD7B;
  v2[157] ^= 0x47B31237u;
  v47 = v2[4];
  v48 = v2[5];
  v49 = (v10 ^ 0x6B4CE338) & (v48 ^ 0xB75D351D) ^ (v10 ^ 0x61F1BD7B) & 0xBDE06B5E;
  LODWORD(v10) = (v10 ^ 0x94B31CC7) & (v48 ^ 0x8E65C1AA) ^ (v10 ^ 0x61F1BD7B) & 0x7B276016;
  LODWORD(v10) = 2 * ((v49 & 0x3089F60F ^ 0x86BBD4F ^ (v49 ^ 0x775FB5BD) & (v2[117] ^ 0x3C6D5BFC)) & (v10 ^ 0xEFDDFEB) ^ v10 & 0x479DF6BD);
  LODWORD(v10) = (((v10 ^ 0xC12B586B) + 133740696) ^ ((v10 ^ 0xEA85F3AA) + 743838551) ^ ((v10 ^ 0xD96AF96D) + 532224402)) + 728554880;
  v50 = ((v10 ^ 0x202776F0) - 1280727272) ^ v10 ^ ((v10 ^ 0x4BEE402E) - 664759862) ^ ((v10 ^ 0xF847E631) + 1808349143) ^ ((v10 ^ 0xFFFFFEF7) + 1819356945);
  v51 = STACK[0xEB0];
  v52 = *(STACK[0xEB0] + 4 * (v2[79] & 0x3F ^ 0x3CLL));
  LODWORD(v36) = (v2[155] & 0x184A023 ^ 0x4CDA930 ^ ((v38 ^ 0x147B410D) & 0x31BEA7CD ^ (v38 ^ 0x4F1571B8) & (v2[155] ^ 0x3D5A0A3E) ^ 0x6F5D3759) & (v2[155] & 0x79D7A4FF ^ 0x8EECFFF3)) & (v52 & 0x445071EC ^ 0xFBEFBEB7) ^ v52 & 0x401030EC;
  LODWORD(v36) = (((v2[156] ^ 0x57AC3967) - 1470904679) ^ ((v2[156] ^ 0x9F9B6B4A) + 1617204406) ^ ((v2[156] ^ 0xC4D3FFDE) + 992739362)) - 1635043744 + (((v36 ^ 0x5C0A1D0E) - 1304776450) ^ ((v36 ^ 0x2DBB624E) - 1014247490) ^ ((v36 ^ 0xA1FC1E4) - 466654184));
  v2[156] = v36 ^ ((v36 ^ 0x12E011DE) - 899975707) ^ ((v36 ^ 0x7E636A35) - 1495790064) ^ ((v36 ^ 0x34BC1BD0) - 335052821) ^ ((v36 ^ 0x7F7BFBFE) - 1480548411) ^ 0x2BA03636;
  LODWORD(v36) = v2[97];
  v53 = v2[213];
  LODWORD(v10) = (v53 ^ 0x5B6E30B5) & (v36 ^ 0xC3C55322);
  v54 = v51[v2[49] & 0x3F ^ 0x3CLL];
  v55 = ((v54 ^ 0x21FF6435) - 570385461) ^ ((v54 ^ 0xFEC8B0DE) + 20401954) ^ ((v54 ^ 0x8459E45E) + 2074483618);
  v56 = (v55 + 1533948085) * ((((v54 ^ 0xAAD2BF75) + 1429029003) ^ ((v54 ^ 0xBBB14DC0) + 1146008128) ^ ((v54 ^ 0x4A0DC200) - 1242415616)) + 945711551) + 588236534 * v55 - 74825251;
  LODWORD(v36) = (v56 ^ ((v56 ^ 0x3766B95A) - 2064043189) ^ ((v56 ^ 0xA8D9680C) + 457630237) ^ ((v56 ^ 0xAC245B42) + 532402515) ^ ((v56 ^ 0x7FFBFFFB) - 865831444) ^ 0xD33FE286) & (v36 ^ 0xF31B520C) ^ v36 & 0x9F5F9769;
  v2[91] ^= v36 & 0xF0890852 ^ (v36 ^ 0x6CE4EDF7) & (v53 & 0xCF21FED1 ^ 0x4456C73C ^ v10) ^ 0x9F7FF7AD;
  v57 = *&v24[4 * (v2[24] & 0x3F ^ 0x3CLL)];
  v58 = (((v57 ^ 0xF4B8BAF7B09C37F4) + 0xB4745084F63C80CLL) ^ ((v57 ^ 0x6DD0CA3FB52EA0C9) - 0x6DD0CA3FB52EA0C9) ^ ((v57 ^ 0x996870C8C5C58B74) + 0x66978F373A3A748CLL)) + 3378107784u;
  LODWORD(v58) = ((2863311531u * v58 + 0x5ACA3E08A7B46CEBLL) >> 33) | ((v58 > 0xF7D0A2F2) << 31);
  v59 = (v58 ^ 0xAF0492BE) & (2 * (v58 & 0xCFA4A33C)) ^ v58 & 0xCFA4A33C;
  LODWORD(v10) = ((2 * (v58 ^ 0xB34CD0DE)) ^ 0xF9D0E7C4) & (v58 ^ 0xB34CD0DE) ^ (2 * (v58 ^ 0xB34CD0DE)) & 0x7CE873E2;
  v60 = v10 ^ 0x4281022;
  LODWORD(v10) = (v10 ^ 0x788001C0) & (4 * v59) ^ v59;
  v61 = ((4 * v60) ^ 0xF3A1CF88) & v60 ^ (4 * v60) & 0x7CE873E0;
  LODWORD(v10) = (v61 ^ 0x70A04380) & (16 * v10) ^ v10;
  v62 = ((16 * (v61 ^ 0xC483062)) ^ 0xCE873E20) & (v61 ^ 0xC483062) ^ (16 * (v61 ^ 0xC483062)) & 0x7CE873E0;
  LODWORD(v10) = v10 ^ 0x7CE873E2 ^ (v62 ^ 0x4C803200) & (v10 << 8);
  v2[185] ^= v58 ^ (2 * ((v10 << 16) & 0x7CE80000 ^ v10 ^ ((v10 << 16) ^ 0x73E20000) & (((v62 ^ 0x306841C2) << 8) & 0x7CE80000 ^ 0x14880000 ^ (((v62 ^ 0x306841C2) << 8) ^ 0x68730000) & (v62 ^ 0x306841C2)))) ^ 0xD7B444F8;
  v2[51] = v2[66];
  LODWORD(v58) = v2[95];
  LODWORD(v10) = v58 & 0x48142020;
  LODWORD(v58) = (v58 & 0xDB546124 ^ 0xD3104004) & (v2[157] ^ 0xC9544120) ^ v58 & 0xC1106000;
  v63 = v2[127];
  v64 = v2[71];
  LODWORD(STACK[0xE80]) = v50;
  v65 = (v50 ^ 0xD677C6C6) & (v64 ^ 0xABD5E43) ^ v64 & 0x45F91721;
  v66 = (v50 ^ 0xA56B64EB) & (v64 ^ 0xF542A1BC) ^ v64 & 0xC91A4AF3;
  v67 = (v65 & 0x20A21ED8 ^ 0x240B8A08 ^ (v65 ^ 0x240288DA) & (v63 ^ 0x2402920B)) & (v66 & 0x24AB9EDB ^ 0x24A99E4B) ^ v66 & 0x20A21C0B;
  v2[9] = v67 & 0x421101B ^ 0x9ADD6E48 ^ (v67 ^ 0xFBF47D27) & (v58 & 0x9544100 ^ 0xBCA7BF53 ^ (v58 ^ 0x1E2D30B7) & (v10 ^ 0xDE2D1097));
  LOBYTE(v10) = v2[60];
  LODWORD(v58) = v8[v2[53] & 0x3F ^ 0x3CLL] ^ 0xCE4ADF3;
  v68 = v58 >> ((v10 ^ 0xC) & 0xD) >> ((v10 ^ 0x10) & 0x12);
  LOBYTE(v10) = ((v10 ^ 0x7D) - 125) ^ ((v10 ^ 0x4A) - 74) ^ ((v10 ^ 0x8B) + 117);
  LOBYTE(v10) = (-127 - v10) ^ (-124 - v10) ^ (((-127 - v10) ^ 0x5B) + 26) ^ (((-127 - v10) ^ 0x11) + 20) ^ (((-127 - v10) ^ 0x17) + 22);
  LODWORD(v58) = (v58 << (v10 & 3 ^ 1) << (~v10 & 0x1C)) ^ v68;
  LODWORD(v10) = v2[149];
  v69 = ((v10 ^ 0xC680959C) + 964651620) ^ ((v10 ^ 0xE0B498FD) + 525035267) ^ ((v10 ^ 0x2AD0A092) - 718315666);
  v70 = (((v10 ^ 0xF6079466) + 167275418) ^ ((v10 ^ 0xC091D721) + 1064184031) ^ ((v10 ^ 0x3A72EEB4) - 980610740)) + 2132772721;
  LODWORD(v10) = ((v10 ^ 0x690A3CA) - 110142410) ^ ((v10 ^ 0xBEA9DC43) + 1096164285) ^ ((v10 ^ 0xB4DDD27A) + 1260531078);
  LODWORD(v10) = ((v69 + 216313331) * v70 - 1916459390 * v69 - 702311121) * (v10 + 216313331) + 1523438135 * v10 + 1450699272;
  v71 = (v10 ^ 0xBCF58BAD) & (2 * (v10 & 0xBEF1CB2D)) ^ v10 & 0xBEF1CB2D;
  v72 = ((2 * (v10 ^ 0xA9549BAD)) ^ 0x2F4AA100) & (v10 ^ 0xA9549BAD) ^ (2 * (v10 ^ 0xA9549BAD)) & 0x17A55080;
  v73 = v72 ^ 0x10A55080;
  v74 = (v72 ^ 0x7000000) & (4 * v71) ^ v71;
  v75 = ((4 * v73) ^ 0x5E954200) & v73 ^ (4 * v73) & 0x17A55080;
  v76 = v74 ^ 0x17A55080 ^ (v75 ^ 0x16854000) & (16 * v74);
  v77 = (16 * (v75 ^ 0x1201080)) & 0x17A55080 ^ 0x5A05080 ^ ((16 * (v75 ^ 0x1201080)) ^ 0x7A550800) & (v75 ^ 0x1201080);
  v78 = (v76 << 8) & 0x17A55000 ^ v76 ^ ((v76 << 8) ^ 0xA5508000) & v77;
  LODWORD(v10) = v10 ^ (2 * ((v78 << 16) & 0x17A50000 ^ v78 ^ ((v78 << 16) ^ 0x50800000) & ((v77 << 8) & 0x17A50000 ^ 0x12A50000 ^ ((v77 << 8) ^ 0x25500000) & v77)));
  v79 = (v10 ^ 0x414484D2) & (v58 & 0x79D7A4FF ^ 0x984804C);
  LODWORD(v58) = (v10 ^ 0xBABB6A2D) & (v58 ^ 0x52010195) ^ v10 & 0x52010195;
  LODWORD(v58) = (((v2[109] ^ 0xE2EA0578) + 487979656) ^ ((v2[109] ^ 0x2832AC3D) - 674409533) ^ ((v2[109] ^ 0xC63C04B6) + 969145162)) + 2128300406 + (v58 & 0x2AEF9583 ^ 0xD7116A7D ^ (v58 ^ 0xEDD6EEFA) & (v10 & 0x705324B3 ^ 0xEC87CA11 ^ v79));
  LODWORD(v10) = (v58 ^ 0xE086278) & (2 * (v58 & 0x8E09647D)) ^ v58 & 0x8E09647D;
  v80 = ((2 * (v58 ^ 0x21A2A62)) ^ 0x18269C3E) & (v58 ^ 0x21A2A62) ^ (2 * (v58 ^ 0x21A2A62)) & 0x8C134E1E;
  v81 = v80 ^ 0x84114201;
  v82 = (v80 ^ 0x802001C) & (4 * v10) ^ v10;
  LODWORD(v10) = ((4 * v81) ^ 0x304D387C) & v81 ^ (4 * v81) & 0x8C134E1C;
  v83 = (v10 ^ 0x10810) & (16 * v82) ^ v82;
  LODWORD(v10) = ((16 * (v10 ^ 0x8C124603)) ^ 0xC134E1F0) & (v10 ^ 0x8C124603) ^ (16 * (v10 ^ 0x8C124603)) & 0x8C134E10;
  v84 = v83 ^ 0x8C134E1F ^ (v10 ^ 0x80104000) & (v83 << 8);
  v2[109] = v58 ^ (2 * ((v84 << 16) & 0xC130000 ^ v84 ^ ((v84 << 16) ^ 0x4E1F0000) & (((v10 ^ 0xC030E0F) << 8) & 0xC130000 ^ 0xC110000 ^ (((v10 ^ 0xC030E0F) << 8) ^ 0x134E0000) & (v10 ^ 0xC030E0F)))) ^ 0x82ED55B0;
  LODWORD(STACK[0xE40]) = v8[v2[62] & 0x3F ^ 0x3CLL];
  v85 = v2[10];
  LODWORD(STACK[0xDE0]) = v2[9];
  v86 = v51[v85 & 0x3F ^ 0x3CLL];
  v87 = v2[32];
  LODWORD(v58) = ((v2[4] & 0xB84CEDC8 | v2[33] & 0x47B31237) ^ 0x4A0D5E73) - 2078785639 + (((*v8 ^ 0xB7321B69) + 1221452951) ^ ((*v8 ^ 0x7E0C297D) - 2114726269) ^ ((*v8 ^ 0xC5DA9FE7) + 975527961));
  *v8 = v58 ^ ((v58 ^ 0xB2CD8729) + 973203828) ^ ((v58 ^ 0xFD6C4B60) + 1973429563) ^ ((v58 ^ 0x476D2313) - 811512502) ^ ((v58 ^ 0x7FFF7EFF) - 147648346) ^ 0x7BD73C56;
  LODWORD(v58) = v51[v2[79] & 0x3F ^ 0x3CLL];
  LODWORD(v58) = (-1146122733 << (11 - (((v58 ^ 0xF) + 17) ^ -v58 ^ ((v58 ^ 5) + 27)))) ^ (0xBBAF8E13 >> (v58 & 0x1F ^ 0x15));
  v88 = v2[27] & 0x3F ^ 0x3CLL;
  LODWORD(STACK[0xE20]) = *&v24[4 * v88];
  v2[172] = (-2002993422 << v58) ^ 0x5B6E30B5 ^ (0x889CBEF2 >> -v58);
  v2[205] = 1673153465;
  LODWORD(v58) = (((v8[v88] ^ 0x9555479F) + 1789573217) ^ ((v8[v88] ^ 0x5A435D46) - 1514364230) ^ ((v8[v88] ^ 0xC3F2B72A) + 1007503574)) - (((v2[149] ^ 0xCB18B1D) - 212962077) ^ ((v2[149] ^ 0x1E5025E8) - 508569064) ^ ((v2[149] ^ 0x1E050306) - 503644934));
  LODWORD(v88) = v2[137];
  v89 = v2[30];
  STACK[0xE10] = v2[29];
  LODWORD(v88) = v58 & (v88 ^ 0xCE4ADF3) | (v89 & 0x501E60CC ^ 0xFFE3BFBF) & (v88 ^ 0xF31B520C);
  v2[189] = v88 - ((2 * v88) & 0xB6DC616A) + 1533948085;
  LODWORD(v88) = *&v24[4 * (v2[70] & 0x3F ^ 0x3CLL)];
  LODWORD(v88) = 3 * (((v88 ^ 0xBFD619C9) + 1076487735) ^ ((v88 ^ 0xE02C540F) + 533965809) ^ ((v88 ^ 0x9F8D518F) + 1618128497)) + (((v2[132] ^ 0xD60A3EE5) + 703971611) ^ ((v2[132] ^ 0x7A3BA9AC) - 2050730412) ^ ((v2[132] ^ 0xA0D53ABA) + 1596638534)) + 1836967511;
  v90 = (v88 ^ 0xE4CA1877) & (2 * (v88 & 0xE0CC1C77)) ^ v88 & 0xE0CC1C77;
  v91 = ((2 * (v88 ^ 0x255A0859)) ^ 0x8B2C285C) & (v88 ^ 0x255A0859) ^ (2 * (v88 ^ 0x255A0859)) & 0xC596142E;
  v92 = (v91 ^ 0x8100000C) & (4 * v90) ^ v90;
  v93 = ((4 * (v91 ^ 0x44921422)) ^ 0x165850B8) & (v91 ^ 0x44921422) ^ (4 * (v91 ^ 0x44921422)) & 0xC5961428;
  v94 = (v93 ^ 0x4101020) & (16 * v92) ^ v92;
  v95 = ((16 * (v93 ^ 0xC1860406)) ^ 0x596142E0) & (v93 ^ 0xC1860406) ^ (16 * (v93 ^ 0xC1860406)) & 0xC5961420;
  v96 = v94 ^ 0xC596142E ^ (v95 ^ 0x41000000) & (v94 << 8);
  v2[132] = v88 ^ (2 * ((v96 << 16) & 0x45960000 ^ v96 ^ ((v96 << 16) ^ 0x142E0000) & (((v95 ^ 0x8496140E) << 8) & 0x45960000 ^ 0x41820000 ^ (((v95 ^ 0x8496140E) << 8) ^ 0x16140000) & (v95 ^ 0x8496140E)))) ^ 0x6F0899D8;
  LODWORD(v88) = (((v2[166] ^ 0x5AECD20B) - 1525469707) ^ ((v2[166] ^ 0xCDBABC0E) + 843400178) ^ ((v2[166] ^ 0xCC385EB0) + 868720976)) + 1490365084;
  v2[166] = v88 ^ ((v88 ^ 0x3992DEEE) - 2080454815) ^ ((v88 ^ 0x4886CEDA) - 219490475) ^ ((v88 ^ 0x5B6A19BA) - 519700427) ^ ((v88 ^ 0x6FEDEFFF) - 712903054) ^ 0x1EFDD6C4;
  LODWORD(v88) = v2[85] & 0x494AD572 ^ 0xF7F7ABBD ^ (v2[85] ^ 0xABD5E43) & (*&v24[4 * (v2[89] & 0x3F ^ 0x3CLL)] ^ 0x76C236C4);
  v97 = (((v2[70] ^ 0x807BC542) + 2139372222) ^ ((v2[70] ^ 0xA8399EC7) + 1472618809) ^ ((v2[70] ^ 0xDD00FA39) + 587138503)) + 1058383048 + v88 + v88 * (v2[60] ^ 0xABD5E43);
  v2[70] = v97 ^ ((v97 ^ 0xBAD2BEF) - 1115564259) ^ ((v97 ^ 0xF3DDFE69) + 1173422747) ^ ((v97 ^ 0x8F5A2935) + 964089287) ^ ((v97 ^ 0x3EF9FFBF) - 1999305907) ^ 0xBC91A2B0;
  v98 = v2[25];
  v99 = v2[24] & 0x3FLL ^ 0x3C;
  v100 = (((*&v24[4 * v99] ^ 0x18E8067F) - 417859199) ^ ((*&v24[4 * v99] ^ 0x1D02F5B3) - 486733235) ^ ((*&v24[4 * v99] ^ 0xC59DEF85) + 979505275)) - 308640293;
  v101 = v51[v2[83] & 0x3F ^ 0x3CLL];
  v102 = (((v101 ^ 0xF3BDBB3B) + 205669573) ^ ((v101 ^ 0x8962DD3D) + 1990009539) ^ ((v101 ^ 0x21B156B3) - 565270195)) - 862852883;
  v103 = 1033970551 * (1126406264 * v100 - 1017574270 * v102) + v102 * v100 + 882247664;
  v104 = (((v2[199] ^ 0xA10B472F) + 1593096401) ^ ((v2[199] ^ 0x9E9C7EC4) + 1633911100) ^ ((v2[199] ^ 0x64F9095E) - 1694042462)) - v103 * v103 * v103 + 1556484852;
  v2[199] = v104 ^ ((v104 ^ 0x48C75B51) - 1234221422) ^ ((v104 ^ 0x679BDD1A) - 1724661541) ^ ((v104 ^ 0x51F6BBEB) - 1352751572) ^ ((v104 ^ 0x7FFDDF9F) - 2125086112) ^ 0x5A39D28A;
  v2[159] = (((-1209467592 << (4 - (((v2[60] ^ 0xF) + 17) ^ v2[60] ^ ((v2[60] ^ 0xF3) + 13)))) ^ (0xB7E8FD38 >> (v2[60] & 0x1F ^ 0x1C))) >> 1) ^ 0x5B6E30B5;
  LODWORD(v99) = v2[221] ^ v8[v99];
  v2[221] = v99 ^ 0xCE4ADF3;
  *v2 = v3 ^ 0xD629CF09;
  v105 = v2[10];
  v106 = *&v24[4 * (v2[11] & 0x3FLL ^ 0x3C)];
  LODWORD(v88) = (((v106 ^ 0xA6007CF5) + 1509917451) ^ ((v106 ^ 0x820E648C) + 2112985972) ^ ((v106 ^ 0xE4790430) + 461831120)) - 422419968;
  v107 = (((v106 ^ 0x19E4B44) - 27151172) ^ ((v106 ^ 0x9B104816) + 1693431786) ^ ((v106 ^ 0x5AF91F1B) - 1526275867)) + 215741913;
  v108 = v88 * v107 + 1255142435 * (-1152182109 * v107 - 12079408 * v88) - 2132060688;
  LODWORD(v99) = (v99 ^ 0xA87562B9) + (((v2[218] ^ 0x4FA1919F) - 1335988639) ^ ((v2[218] ^ 0xE776911F) + 411660001) ^ ((v2[218] ^ 0xF3B93035) + 205967307)) + 1543680868 + v108 + v108 * (v106 ^ 0x3F88E3B6);
  v2[218] = v99 ^ ((v99 ^ 0x1F2222C5) - 532062315) ^ ((v99 ^ 0x50EDCA32) - 1350125724) ^ ((v99 ^ 0x30809566) - 806623176) ^ ((v99 ^ 0x7FDBFF3F) - 2135915921) ^ 0x5BFAB21B;
  LODWORD(v99) = v51[v2[45] & 0x3F ^ 0x3CLL];
  v109 = (((v99 ^ 0xE255E1B) - 237329947) ^ ((v99 ^ 0xFED8E349) + 19340471) ^ ((v99 ^ 0xAB938DE7) + 1416393241)) - 1624923252;
  LODWORD(v99) = (((v99 ^ 0x61CAAA6B) - 1640671851) ^ ((v99 ^ 0xE0A7E22E) + 525868498) ^ ((v99 ^ 0xDA0378F0) + 637306640)) - 2010093284;
  v110 = v109 * v99 + 716561185 * (-908094087 * v109 - 261506807 * v99);
  v111 = v8[v87 & 0x3F ^ 0x3CLL];
  v112 = (((v111 ^ 0xE130B34B) + 516902069) ^ ((v111 ^ 0xBFF9B788) + 1074153592) ^ ((v111 ^ 0x522DA930) - 1378724144)) + 1960153851;
  LODWORD(v99) = (((v111 ^ 0xF2CEDD52) + 221323950) ^ ((v111 ^ 0x8D425F3E) + 1925030082) ^ ((v111 ^ 0x73682F9F) - 1936207775)) - 1976379794;
  v113 = 856651873 * (-526410248 * v99 + 946659749 * v112) + v112 * v99;
  v114 = (v8[v2[61] & 0x3F ^ 0x3CLL] ^ 0xF31B520C) / 5;
  LODWORD(v88) = v114 - ((2 * v114) & 0x6C99626C) - 1236487882;
  v115 = v2[5];
  v116 = v2[6];
  v117 = v2[30];
  LODWORD(v99) = v2[31];
  v118 = (v117 ^ 0xABD5E43) & (v116 ^ 0xDAF8B231) ^ v117 & 0xD045EC72;
  v119 = v118 & 0x5CFC8892 ^ 0x5CF88090 ^ (v118 ^ 0xFFFAB3BD) & (v2[172] ^ 0x792B827) | v117 & 0x55D649D4 ^ 0x55420194 ^ (v117 ^ 0xF542A1BC) & (v116 ^ 0xA094E868);
  LODWORD(v58) = (v110 + 1524382849) * (v110 + 1524382849) * (v110 + 1524382849);
  v2[49] = v58 - ((2 * v58) & 0xEA854378) - 180182596;
  v2[165] ^= (v113 + 1157057240) * (v111 ^ 0xCE4ADF3);
  v120 = ((v8[v2[19] & 0x3F ^ 0x3CLL] >> 1) ^ 0xF98DA906) + (((v47 ^ 0xFF23DD50) + 14426800) ^ ((v47 ^ 0xEEFDAC37) + 285365193) ^ ((v47 ^ 0xE49CD0DB) + 459484965)) + 1808890369;
  LODWORD(v58) = (2 * (v120 & 0x897127BC)) & (v120 ^ 0x6923832A) ^ v120 & 0x897127BC ^ ((2 * (v120 & 0x897127BC)) & 0x420410 | 0x40000004);
  v121 = (2 * (v120 ^ 0x6923832A)) & 0xE052A496 ^ 0x2052A492 ^ ((2 * (v120 ^ 0x6923832A)) ^ 0xC0A5492C) & (v120 ^ 0x6923832A);
  LODWORD(v58) = (4 * v58) & 0x6040A490 ^ v58 ^ ((4 * v58) ^ 0x10) & v121;
  v122 = (4 * v121) & 0xE052A490 ^ 0x60102486 ^ ((4 * v121) ^ 0x814A9258) & v121;
  LODWORD(v58) = (16 * v58) & 0xE052A490 ^ v58 ^ ((16 * v58) ^ 0x140) & v122;
  v123 = (16 * v122) & 0xE052A480 ^ 0xE050A496 ^ ((16 * v122) ^ 0x52A4960) & v122;
  LODWORD(v58) = v58 ^ (v58 << 8) & 0xE052A400 ^ ((v58 << 8) ^ 0x1400) & v123 ^ 0xA052A082;
  LODWORD(STACK[0xE60]) = (((v119 * v119 - 211955457) ^ 0x64C63FFB) - 1686917309) ^ (v119 * v119 - 211955457) ^ (((v119 * v119 - 211955457) ^ 0x8E92B5CD) + 1898390901) ^ (((v119 * v119 - 211955457) ^ 0x85E11885) + 2052360253) ^ (((v119 * v119 - 211955457) ^ 0x6FFFFDF5) - 1874170547);
  v124 = *&v24[4 * ((((((v119 * v119 - 1) ^ 0xFB) + 67) ^ (v119 * v119 - 1) ^ (((v119 * v119 - 1) ^ 0xCD) + 117) ^ (((v119 * v119 - 1) ^ 0x85) + 61)) ^ (((v119 * v119 - 1) ^ 0xF5) + 77)) & 0x3F ^ 6)];
  v2[4] = v120 ^ (2 * ((v58 << 16) & 0x60520000 ^ v58 ^ ((v58 << 16) ^ 0x24960000) & ((v123 << 8) & 0x60520000 ^ 0x20520000 ^ ((v123 << 8) ^ 0x52A40000) & v123))) ^ 0xFCB2CF2C;
  LODWORD(v58) = (((v2[51] ^ 0x224B84B) - 35960907) ^ ((v2[51] ^ 0x6FD51D6) - 117264854) ^ ((v2[51] ^ 0xF19B4821) + 241481695)) - (v2[149] ^ 0x64580983) / 3 + 248829501;
  v2[51] = v58 ^ ((v58 ^ 0xD97BAD7A) + 1058432517) ^ ((v58 ^ 0x39F734F9) - 543490168) ^ ((v58 ^ 0x6C372FD) - 525420156) ^ ((v58 ^ 0xFFDDDFFF) + 430969986) ^ 0xECD0953D;
  v2[13] ^= v2[43] ^ 0xF542A1BC;
  LODWORD(v58) = (((v2[164] ^ 0x17197CBA) - 387546298) ^ ((v2[164] ^ 0xC2CA59A9) + 1026926167) ^ ((v2[164] ^ 0x8EBD15A6) + 1900210778)) - (v2[157] & 0x2004080 ^ 0x48D08481 ^ (v51[v115 & 0x3F ^ 0x3CLL] ^ 0x119ED420) & (v2[157] & 0x30A52A0 ^ 0xFCD58DA1) | v2[157] & 0x48C00400 ^ 0x8E02444) - 894745618;
  LODWORD(STACK[0xE30]) = v88;
  v125 = v88 & 0x3F ^ 0x36;
  v2[164] = v58 ^ ((v58 ^ 0x54AD5560) - 999310937) ^ ((v58 ^ 0x1A7EEF66) - 1967389791) ^ ((v58 ^ 0xDA1916D0) + 1255930391) ^ ((v58 ^ 0xFBF7BFEF) + 1798656810) ^ 0x3453238C;
  v126 = v2[142] ^ ((v2[215] & 0xB0006188 ^ 0x14A03286) & (v2[129] ^ 0x24A02102) ^ (v2[215] & 0x20000080 | 0x800) | v2[215] & 0x4A01206 ^ 0x43331035);
  v2[142] = v126 ^ 0x880;
  LODWORD(v58) = v8[v105 & 0x3F ^ 0x3CLL];
  LODWORD(v58) = (((v105 ^ 0x9A23CDDC) + 1708929572) ^ ((v105 ^ 0x2A4083FD) - 708871165) ^ ((v105 ^ 0x4521EF9D) - 1159851933)) - ((*&v24[4 * (v2[70] & 0x3F ^ 0x3CLL)] & 0xD008802 ^ 0x704008B8) & (v58 & 0x1400888 ^ 0xFE6889B2) | v58 & 0x4008002 ^ 0x480F402) + 1127839179;
  v2[10] = v58 ^ ((v58 ^ 0x6B08681E) - 654228497) ^ ((v58 ^ 0xD1560034) + 1667181509) ^ ((v58 ^ 0x8576352) - 1168226141) ^ ((v58 ^ 0xFFFFDF77) + 1308030088) ^ 0xB8B475B3;
  v127 = (((v2[93] ^ 0x4F29EA40) - 1328147008) ^ ((v2[93] ^ 0x8FAC7797) + 1884522601) ^ ((v2[93] ^ 0x35C73C6B) - 902249579)) - 1591368160;
  LODWORD(v58) = (v127 ^ 0xD5B19370) & (2 * (v127 & 0xE1811B62)) ^ v127 & 0xE1811B62;
  v128 = ((2 * (v127 ^ 0x94B18170)) ^ 0xEA613424) & (v127 ^ 0x94B18170) ^ (2 * (v127 ^ 0x94B18170)) & 0x75309A12;
  LODWORD(v58) = (v128 ^ 0x1000) & (4 * v58) ^ v58;
  v129 = ((4 * (v128 ^ 0x15108A12)) ^ 0xD4C26848) & (v128 ^ 0x15108A12) ^ (4 * (v128 ^ 0x15108A12)) & 0x75309A10;
  LODWORD(v58) = v58 ^ 0x75309A12 ^ (v129 ^ 0x54000800) & (16 * v58);
  v130 = ((16 * (v129 ^ 0x21309212)) ^ 0x5309A120) & (v129 ^ 0x21309212) ^ (16 * (v129 ^ 0x21309212)) & 0x75309A00;
  LODWORD(v58) = v130 & 0xC08EE000 ^ v58 ^ (v130 ^ 0x51008012) & ((v58 << 8) ^ 0xF014F200);
  v131 = ((v130 << 8) ^ 0xC00EE000) & (v130 ^ 0x51008012) ^ v130 & 0xC08EE000;
  v2[93] = v127 ^ (2 * (v131 & 0x408EE000 ^ v58 ^ ((v58 << 16) ^ 0xDA9CE00C) & (v131 ^ 0x35300000) ^ ((v58 << 16) ^ 0xDA9CE00C) & 0x75308000)) ^ 0xFEA28EFA;
  LODWORD(v58) = (((v2[200] ^ 0xD911D7B6) + 653142090) ^ ((v2[200] ^ 0x1C63EF6E) - 476311406) ^ ((v2[200] ^ 0x9E1C086D) + 1642330003)) - (((v126 ^ 0x6BA46D29) - 1805936041) ^ ((v126 ^ 0xEBAD20EF) + 340973457) ^ ((v126 ^ 0x8CEDE8B5) + 1930567627)) - 1105139407;
  v2[200] = v58 ^ ((v58 ^ 0xE5957E90) + 1979574017) ^ ((v58 ^ 0x7F16678E) - 276890081) ^ ((v58 ^ 0x9AEB808C) + 176363805) ^ ((v58 ^ 0x6FFFFFFD) - 6855058) ^ 0x34F956DA;
  v132 = *&v24[4 * (v2[53] & 0x3F ^ 0x3CLL)];
  v133 = (v132 & 0x20825900 ^ 0xF1844391 ^ (v2[89] ^ 0xF30B0592) & (v132 & 0x20835902 ^ 0xF78CC7BB)) + (((*v51 ^ 0x9DBBB5D3) + 1648642605) ^ ((*v51 ^ 0xBE29A347) + 1104567481) ^ ((*v51 ^ 0x78FC2621) - 2029790753)) - 615025208;
  LODWORD(v58) = (v133 ^ 0x2986B8ED) & (2 * (v133 & 0x8016BAEE)) ^ v133 & 0x8016BAEE;
  v134 = ((2 * (v133 ^ 0x29A2C875)) ^ 0x5368E536) & (v133 ^ 0x29A2C875) ^ (2 * (v133 ^ 0x29A2C875)) & 0xA9B4729A;
  LODWORD(v58) = (v134 ^ 0x206010) & (4 * v58) ^ v58;
  v135 = ((4 * (v134 ^ 0xA8941289)) ^ 0xA6D1CA6C) & (v134 ^ 0xA8941289) ^ (4 * (v134 ^ 0xA8941289)) & 0xA9B47298;
  LODWORD(v58) = (v135 ^ 0xA0904200) & (16 * v58) ^ v58;
  v136 = ((16 * (v135 ^ 0x9243093)) ^ 0x9B4729B0) & (v135 ^ 0x9243093) ^ (16 * (v135 ^ 0x9243093)) & 0xA9B47290;
  LODWORD(v58) = v58 ^ 0xA9B4729B ^ (v136 ^ 0x89042000) & (v58 << 8);
  v137 = v51[v2[16] & 0x3F ^ 0x3CLL];
  *v51 = v133 ^ (2 * ((v58 << 16) & 0x29B40000 ^ v58 ^ ((v58 << 16) ^ 0x729B0000) & (((v136 ^ 0x20B0520B) << 8) & 0x29B40000 ^ 0x9840000 ^ (((v136 ^ 0x20B0520B) << 8) ^ 0x34720000) & (v136 ^ 0x20B0520B)))) ^ 0xC9306F6D;
  LODWORD(v58) = v8[v2[62] & 0x3F ^ 0x3CLL];
  LODWORD(v58) = (((v58 ^ 0xB9F94F8E) + 1174843506) ^ ((v58 ^ 0xEE1B7340) + 300190912) ^ ((v58 ^ 0x5B06913D) - 1527157053)) - (((v2[142] ^ 0xBC70127F) + 1133505921) ^ ((v2[142] ^ 0x2E4621BB) - 776348091) ^ ((v2[142] ^ 0x9ED29E37) + 1630364105)) + 1528689580;
  LODWORD(v58) = ((v58 ^ 0xCFF61CD7) + 1796477061) ^ v58 ^ ((v58 ^ 0x34B34501) - 1873721005) ^ ((v58 ^ 0xDFA75785) + 2068143063) ^ ((v58 ^ 0x7FFFFDFF) - 618794579);
  v138 = v2[9];
  v139 = (v58 ^ 0xB6D2936D) & (v138 ^ 0xABD5E43) ^ v138 & 0x12309F3E;
  LODWORD(v58) = v139 & 0x10D39149 ^ 0x10C38149 ^ (v139 ^ 0xFDCFE1FD) & (v2[165] ^ 0x4BBDA1FC) | v138 & 0x3A93CA84 ^ 0x30028084 ^ (v58 ^ 0x618E3928) & (v138 ^ 0xF542A1BC);
  v2[218] = v58 - ((2 * v58) & 0xB6DC616A) + 1533948085;
  v140 = *&v24[4 * (v2[40] & 0x3F ^ 0x3CLL)];
  LODWORD(v58) = (((v140 ^ 0x3A95411D) - 982860061) ^ ((v140 ^ 0x89DD46D9) + 1981987111) ^ ((v140 ^ 0x733F1B8D) - 1933515661)) - 653129422;
  v141 = (((v140 ^ 0xD2F0AF70) + 755978384) ^ ((v140 ^ 0x638D7BEC) - 1670216684) ^ ((v140 ^ 0x710AC8D5) - 1896532181)) - 667060842;
  v142 = 829686237 * (806890371 * v141 + 2047011279 * v58) + v58 * v141;
  LODWORD(v58) = 110 * (((v2[215] ^ 0x5A42969F) + 633170273) ^ ((v2[215] ^ 0x6DC92ADE) + 305583394) ^ ((v2[215] ^ 0x6CE58CF4) - 1826983156)) + 1618613420;
  LODWORD(v58) = ((v58 ^ 0x10835D70) - 128088982) ^ v58 ^ ((v58 ^ 0x44F94788) - 1406689646) ^ ((v58 ^ 0x38A4C3E1) - 797304071) ^ ((v58 ^ 0x7BFFFFFF) - 1826543897);
  v143 = (((v58 ^ 0xFA182506) - 800727908) ^ ((v58 ^ 0xA7F976C0) - 1918595234) ^ ((v58 ^ 0x4AC075DC) + 1620937794)) + ((v86 & 0x18 | STACK[0xE40] & 0x21) ^ 0xFFFFFF0C) - 611966154;
  LODWORD(v58) = (v143 ^ 0xF6FAFD5A) & (2 * (v143 & 0xE6FCFD43)) ^ v143 & 0xE6FCFD43;
  LODWORD(STACK[0xE40]) = v143;
  v144 = ((2 * (v143 ^ 0xF6CB6F58)) ^ 0x206F2436) & (v143 ^ 0xF6CB6F58) ^ (2 * (v143 ^ 0xF6CB6F58)) & 0x1037921A;
  LODWORD(v58) = v58 ^ 0x1037921B ^ (v144 ^ 0x270010) & (4 * v58);
  v145 = (16 * v58) & 0x10 ^ v58 ^ ((16 * v58) ^ 0x37921B0) & ((4 * (v144 ^ 0x10109209)) & 0x10379210 ^ 0x10219210 ^ ((4 * (v144 ^ 0x10109209)) ^ 0x40DE4860) & (v144 ^ 0x10109209));
  LODWORD(STACK[0xDF0]) = STACK[0xE20] & 0xB4A897BD ^ 0xC9235C4B;
  v146 = v2[36];
  LODWORD(v58) = (((v124 ^ 0x2A6AE017) - 711647255) ^ ((v124 ^ 0xE2F4EE2F) + 487264721) ^ ((v124 ^ 0x8E91271) - 149492337)) + 444797818;
  v147 = ((v58 ^ 0x732BEE3B) - 1634929345) ^ v58 ^ ((v58 ^ 0x883A045A) + 1704796000) ^ ((v58 ^ 0x16F6FD74) - 78518670) ^ ((v58 ^ 0xFFBFF3EF) + 303622379);
  LODWORD(v58) = -1947263414 - ((2 * v2[97]) & 0x6814D610 ^ 0x8E225362);
  LOBYTE(v88) = (v58 ^ 9) & (2 * (v58 & 0x20)) ^ v58 & 0x20;
  LOBYTE(v115) = ((2 * (v58 ^ 9)) ^ 0x50) & (v58 ^ 9) ^ (2 * (v58 ^ 9)) & 0x22;
  LOBYTE(v58) = v58 ^ (2 * (((4 * (v115 ^ 0x21)) & 0x20 ^ 0x20 ^ ((4 * (v115 ^ 0x21)) ^ 0xA0) & (v115 ^ 0x21)) & (16 * (v115 & (4 * v88) ^ v88)) ^ v115 & (4 * v88) ^ v88));
  v148 = v8[v98 & 0x3F ^ 0x3CLL];
  LOBYTE(v98) = v58 ^ 0x5E;
  v149 = (v148 ^ 4) & (v137 ^ 2);
  LODWORD(v88) = v148 & 0xBF ^ 0x58 ^ (v148 ^ 0xCE4ADF3) & (v137 ^ 0x884BF20A);
  v150 = (((LODWORD(STACK[0xE70]) ^ 0xD1FA2EC0) + 772133184) ^ ((LODWORD(STACK[0xE70]) ^ 0x4DD205F8) - 1305609720) ^ ((LODWORD(STACK[0xE70]) ^ 0x696A8A84) - 1768589956)) - (((v142 + 1848394517) * (v140 ^ 0x40771C49)) & 0x47B31237) + 252367847;
  LODWORD(v58) = (v150 ^ 0xA52B45D4) & (2 * (v150 & 0xC6334195)) ^ v150 & 0xC6334195;
  v151 = ((2 * (v150 ^ 0x256944FE)) ^ 0xC6B40AD6) & (v150 ^ 0x256944FE) ^ (2 * (v150 ^ 0x256944FE)) & 0xE35A056A;
  LODWORD(v58) = (v151 ^ 0x100040) & (4 * v58) ^ v58;
  v152 = ((4 * (v151 ^ 0x214A0529)) ^ 0x8D6815AC) & (v151 ^ 0x214A0529) ^ (4 * (v151 ^ 0x214A0529)) & 0xE35A0568;
  LODWORD(v58) = (v152 ^ 0x81480520) & (16 * v58) ^ v58;
  v153 = ((16 * (v152 ^ 0x62120043)) ^ 0x35A056B0) & (v152 ^ 0x62120043) ^ (16 * (v152 ^ 0x62120043)) & 0xE35A0560;
  LODWORD(v58) = v58 ^ 0xE35A056B ^ (v153 ^ 0x21000400) & (v58 << 8);
  v2[28] = v150 ^ (2 * ((v58 << 16) & 0x635A0000 ^ v58 ^ ((v58 << 16) ^ 0x56B0000) & (((v153 ^ 0xC25A014B) << 8) & 0x635A0000 ^ 0x215A0000 ^ (((v153 ^ 0xC25A014B) << 8) ^ 0x5A050000) & (v153 ^ 0xC25A014B)))) ^ 0xF751EAFF;
  v2[133] = v2[11] & 0xDCC3B7B1 ^ 0xD8A60C43;
  v154 = *&v24[4 * (v2[37] & 0x3F ^ 0x3CLL)];
  v155 = (((v154 ^ 0x1012C1FC) - 269664764) ^ ((v154 ^ 0x7572D0F6) - 1970458870) ^ ((v154 ^ 0xA5170D43) + 1525215933)) + (((v2[208] ^ 0x3B499E27) - 994680359) ^ ((v2[208] ^ 0x338BBD) - 3378109) ^ ((v2[208] ^ 0x6014252F) - 1611932975)) + 1157174397;
  LODWORD(v58) = (v155 ^ 0x84CAB099) & (2 * (v155 & 0xD6EC3881)) ^ v155 & 0xD6EC3881;
  v156 = ((2 * (v155 ^ 0x8C829199)) ^ 0xB4DD5230) & (v155 ^ 0x8C829199) ^ (2 * (v155 ^ 0x8C829199)) & 0x5A6EA918;
  LODWORD(v58) = (v156 ^ 0x10400000) & (4 * v58) ^ v58;
  v157 = ((4 * (v156 ^ 0x4A22A908)) ^ 0x69BAA460) & (v156 ^ 0x4A22A908) ^ (4 * (v156 ^ 0x4A22A908)) & 0x5A6EA918;
  LODWORD(v58) = (v157 ^ 0x482AA000) & (16 * v58) ^ v58;
  v158 = ((16 * (v157 ^ 0x12440918)) ^ 0xA6EA9180) & (v157 ^ 0x12440918) ^ (16 * (v157 ^ 0x12440918)) & 0x5A6EA900;
  LODWORD(v58) = v58 ^ 0x5A6EA918 ^ (v158 ^ 0x26A8100) & (v58 << 8);
  v2[208] = v155 ^ (2 * ((v58 << 16) & 0x5A6E0000 ^ v58 ^ ((v58 << 16) ^ 0x29180000) & (((v158 ^ 0x58042818) << 8) & 0x5A6E0000 ^ 0x10460000 ^ (((v158 ^ 0x58042818) << 8) ^ 0x6EA90000) & (v158 ^ 0x58042818)))) ^ 0x294F5A04;
  LODWORD(v58) = v51[v99 & 0x3F ^ 0x3C];
  v159 = (((v2[93] ^ 0xE748E518) + 414653160) ^ ((v2[93] ^ 0x8EA4483C) + 1901836228) ^ ((v2[93] ^ 0x9CAE0C98) + 1666315112)) + 277997274 + ((3 * (((v58 ^ 0x74618AEF) + 194934033) ^ ((v58 ^ 0xDA91DF80) + 627974272) ^ ((v58 ^ 0x759E65DA) + 174168614)) + 306876959) & 0x407FF587);
  LODWORD(v58) = (v159 ^ 0x13BA9A71) & (2 * (v159 & 0xA3B0C302)) ^ v159 & 0xA3B0C302;
  LODWORD(v99) = ((2 * (v159 ^ 0x52FB9C75)) ^ 0xE296BEEE) & (v159 ^ 0x52FB9C75) ^ (2 * (v159 ^ 0x52FB9C75)) & 0xF14B5F76;
  LODWORD(v58) = (v99 ^ 0x80021C00) & (4 * v58) ^ v58;
  LODWORD(v99) = ((4 * (v99 ^ 0x11494111)) ^ 0xC52D7DDC) & (v99 ^ 0x11494111) ^ (4 * (v99 ^ 0x11494111)) & 0xF14B5F74;
  LODWORD(v58) = (v99 ^ 0xC1095D40) & (16 * v58) ^ v58;
  LODWORD(v99) = ((16 * (v99 ^ 0x30420223)) ^ 0x14B5F770) & (v99 ^ 0x30420223) ^ (16 * (v99 ^ 0x30420223)) & 0xF14B5F70;
  LODWORD(v58) = v58 ^ 0xF14B5F77 ^ (v99 ^ 0x10015700) & (v58 << 8);
  v2[93] = v159 ^ (2 * ((v58 << 16) & 0x714B0000 ^ v58 ^ ((v58 << 16) ^ 0x5F770000) & (((v99 ^ 0xE14A0807) << 8) & 0x714B0000 ^ (((v99 ^ 0xE14A0807) << 8) ^ 0x4B5F0000) & (v99 ^ 0xE14A0807) ^ 0x30000000))) ^ 0x16E2DC50;
  LODWORD(v58) = *&v24[4 * (STACK[0xE80] & 0x3F ^ 0x18)];
  LODWORD(STACK[0xE20]) = v149;
  LODWORD(STACK[0xE00]) = v88 & (v149 | 0x68);
  LODWORD(v58) = ((v58 & 0x47B31237 ^ 0xD03B7441) << -(v146 & 0xF ^ 0xC)) ^ ((v58 & 0x47B31237 ^ 0xD03B7441) >> (v146 & 0xF ^ 0xC));
  LODWORD(v88) = (((v2[151] ^ 0xCC09DDAB) + 871768661) ^ ((v2[151] ^ 0x4402EBEE) - 1141042158) ^ ((v2[151] ^ 0x84EF9BB6) + 2064671818)) - 1669761545 + (((v58 ^ 0xEB086F7F) + 1013969869) ^ ((v58 ^ 0x80167E54) + 1467081448) ^ ((v58 ^ 0x6B1E112B) - 1132884583));
  LODWORD(v58) = (v88 ^ 0xDD5BDB00) & (2 * (v88 & 0x99039B48)) ^ v88 & 0x99039B48;
  v160 = ((2 * (v88 ^ 0xFF5FCD80)) ^ 0xCCB8AD90) & (v88 ^ 0xFF5FCD80) ^ (2 * (v88 ^ 0xFF5FCD80)) & 0x665C56C8;
  LODWORD(v58) = (v160 ^ 0x44180400) & (4 * v58) ^ v58;
  v161 = ((4 * (v160 ^ 0x22445248)) ^ 0x99715B20) & (v160 ^ 0x22445248) ^ (4 * (v160 ^ 0x22445248)) & 0x665C56C8;
  LODWORD(v58) = (v161 ^ 0x505200) & (16 * v58) ^ v58;
  v162 = ((16 * (v161 ^ 0x660C04C8)) ^ 0x65C56C80) & (v161 ^ 0x660C04C8) ^ (16 * (v161 ^ 0x660C04C8)) & 0x665C56C0;
  LODWORD(v58) = v58 ^ 0x665C56C8 ^ (v162 ^ 0x64444400) & (v58 << 8);
  v2[151] = v88 ^ (2 * ((v58 << 16) & 0x665C0000 ^ v58 ^ ((v58 << 16) ^ 0x56C80000) & (((v162 ^ 0x2181248) << 8) & 0x665C0000 ^ 0x22080000 ^ (((v162 ^ 0x2181248) << 8) ^ 0x5C560000) & (v162 ^ 0x2181248)))) ^ 0xD5CF9B2B;
  LODWORD(v58) = (v2[9] ^ 0xF542A1BC) / 3 + (((v2[173] ^ 0xCA8A1D71) + 896918159) ^ ((v2[173] ^ 0x2EAE37FF) - 783169535) ^ ((v2[173] ^ 0xBF4A1A3B) + 1085662661)) + 1993838395;
  v2[173] = v58 ^ ((v58 ^ 0xC08EB888) + 605559282) ^ ((v58 ^ 0x8C5C77EC) + 1758123670) ^ ((v58 ^ 0xA855EE3D) + 1287868229) ^ ((v58 ^ 0xFFEE7FDF) + 460906151) ^ 0x40076E33;
  LODWORD(v88) = *&v24[4 * (v51[v2[92] & 0x3F ^ 0x3CLL] & 0x3F ^ 0x35)];
  LODWORD(v58) = (((v2[197] ^ 0xD40C478F) + 737392753) ^ ((v2[197] ^ 0xB4F77DED) + 1258848787) ^ ((v2[197] ^ 0x3B950AD7) - 999623383)) - (((v88 ^ 0x222B64E8) - 573269224) ^ ((v88 ^ 0x46BC39E5) - 1186740709) ^ ((v88 ^ 0xA4E04144) + 1528807100)) + 260172649;
  v2[197] = v58 ^ ((v58 ^ 0x1EDE068C) - 1783943281) ^ ((v58 ^ 0x93C208F7) + 414654966) ^ ((v58 ^ 0x86696271) + 219958132) ^ ((v58 ^ 0x7FFFBAF7) - 192244746) ^ 0x2FE4E648;
  v163 = 2 * v8[v98 & 0x3E ^ 0x38];
  LODWORD(v58) = ((3 * (((v2[206] ^ 0x29393AD7) + 382125353) ^ ((v2[206] ^ 0xA7316BD9) + 416191527) ^ ((v2[206] ^ 0x156661BB) + 714710597)) + 306876959) & 0x20E877D1 | v163 & 0xDF17882E) ^ 0x19010826;
  LODWORD(v58) = v58 - 2 * (v58 & 0x71ADCF3F ^ v163 & 8) - 240267465;
  v164 = (((v2[137] ^ 0x551FF1E7) - 1428156903) ^ ((v2[137] ^ 0xFA55E288) + 95034744) ^ ((v2[137] ^ 0xA3AEBE9C) + 1548829028)) + 1206363942 + (((v58 ^ 0xE6A9CA08) + 425080312) ^ ((v58 ^ 0xF65E5B4) - 258336180) ^ ((v58 ^ 0x1861E08B) - 409067659));
  LODWORD(v58) = (v164 ^ 0x2680D442) & (2 * (v164 & 0xB6AAD604)) ^ v164 & 0xB6AAD604;
  LODWORD(v88) = ((2 * (v164 ^ 0x23C1D04A)) ^ 0x2AD60C9C) & (v164 ^ 0x23C1D04A) ^ (2 * (v164 ^ 0x23C1D04A)) & 0x956B064E;
  LODWORD(v58) = (v88 ^ 0x420000) & (4 * v58) ^ v58;
  LODWORD(v88) = ((4 * (v88 ^ 0x95290242)) ^ 0x55AC1938) & (v88 ^ 0x95290242) ^ (4 * (v88 ^ 0x95290242)) & 0x956B0648;
  LODWORD(v58) = (v88 ^ 0x15280000) & (16 * v58) ^ v58;
  LODWORD(v88) = ((16 * (v88 ^ 0x80430646)) ^ 0x56B064E0) & (v88 ^ 0x80430646) ^ (16 * (v88 ^ 0x80430646)) & 0x956B0640;
  LODWORD(v58) = v58 ^ 0x956B064E ^ (v88 ^ 0x14200400) & (v58 << 8);
  v2[137] = v164 ^ (2 * ((v58 << 16) & 0x156B0000 ^ v58 ^ ((v58 << 16) ^ 0x64E0000) & (((v88 ^ 0x814B020E) << 8) & 0x156B0000 ^ 0x14690000 ^ (((v88 ^ 0x814B020E) << 8) ^ 0x6B060000) & (v88 ^ 0x814B020E)))) ^ 0x980C776B;
  LODWORD(STACK[0xE70]) = v147;
  v2[216] = ~v51[v147 & 0x3F ^ 0x3A];
  v165 = v8[STACK[0xE10] & 0x3F ^ 0x3C];
  LODWORD(v58) = (((v165 ^ 0x16776A9C) - 376924828) ^ ((v165 ^ 0x826F28A5) + 2106644315) ^ ((v165 ^ 0x98FCEFCA) + 1728254006)) - (((*&v24[4 * v125] ^ 0x5E5A18B4) - 1582962868) ^ ((*&v24[4 * v125] ^ 0x82AF550) - 137033040) ^ ((*&v24[4 * v125] ^ 0x9607F1AD) + 1777864275)) + 1368547359;
  LODWORD(v58) = (((LODWORD(STACK[0xDE0]) ^ 0xB1AC7F60) + 1314095264) ^ ((LODWORD(STACK[0xDE0]) ^ 0x715BC348) - 1901839176) ^ ((LODWORD(STACK[0xDE0]) ^ 0x35B51D94) - 901062036)) + 83392662 + ((((v58 ^ 0xB92C2DB3) + 1140268090) ^ v58 ^ ((v58 ^ 0x925DEB45) + 1753668304) ^ ((v58 ^ 0x11AAD77C) - 344856841) ^ ((v58 ^ 0x3FFFDFFE) - 987435402)) & 0xFEB54BC6 ^ 0xFAD3219B);
  v2[9] = v58 ^ ((v58 ^ 0xB7D6EBBE) + 1201455772) ^ ((v58 ^ 0x1AA7D06E) - 353502900) ^ ((v58 ^ 0x9D1B12F4) + 1834040274) ^ ((v58 ^ 0x3FDFFFFE) - 812263716) ^ 0xFAF77766;
  LODWORD(v58) = STACK[0x11DC];
  LODWORD(STACK[0xE10]) = 2 * v145;
  return (*(STACK[0xF18] + 8 * ((226 * ((((v58 ^ 0x52ABE993) - 1386998163) ^ ((v58 ^ 0x737B7B02) - 1937472258) ^ ((v58 ^ 0xCA98DF91) + 895950959)) == 347583232)) ^ v0)))();
}

uint64_t sub_10051D8F8@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 + v3);
  v8 = v3 + v5;
  v9 = v3 - 1;
  *(a1 + v9) = *(v6 + v9) ^ *(v2 + v9) ^ (v9 * ((v1 - 116) ^ 0xFC)) ^ v7 ^ *(v8 + 5);
  return (*(STACK[0xF18] + 8 * ((109 * (v9 != 0)) ^ v1)))();
}

uint64_t sub_10051D9B0()
{
  v1 = STACK[0xF18];
  STACK[0x2C40] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xD8B ^ (v0 + 174291391) & 0xF59CB9B9)))();
}

uint64_t sub_10051DB6C@<X0>(int a1@<W8>)
{
  v2 = (a1 - 799360200) & 0x2FA56EDE;
  v3 = (v1 ^ 0xAA4B7290) + 1437896048;
  v4 = (v3 ^ ((v1 ^ 0x1A67155B) - 442963291) ^ (v2 - 1509542768 + (((a1 ^ 0xAC2B) + 1509487750) ^ v1))) == 0x1629946F || (v3 ^ ((v1 ^ 0x1A67155B) - 442963291) ^ (v2 - 1509542768 + (((a1 ^ 0xAC2B) + 1509487750) ^ v1))) == 371823724;
  v5 = v4;
  v6 = v5 ^ 0x7F;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return (*(STACK[0xF18] + 8 * (a1 ^ 0x1673 ^ (8364 * ((((v6 + v7 - a1) | (a1 - (v6 + v7))) & 0x80) == 0)))))();
}

uint64_t sub_10051DC5C@<X0>(int a1@<W8>)
{
  v2 = ((((((a1 - 746646364) & 0x2C80FFFF) - 170512413) ^ v1) + 170471486) ^ ((v1 ^ 0xDCA53A46) + 593151418) ^ ((v1 ^ 0x80460C29 ^ ((a1 - 35610) | 0x1382)) + 2142888054)) + 667348102;
  v3 = 16 * (v2 ^ ((v2 ^ 0x42240C21) - 1018498646) ^ ((v2 ^ 0x4BA444C8) - 892683967) ^ ((v2 ^ 0xA8EEB561) + 696273130) ^ ((v2 ^ 0xDFFFFFFF) + 1586561656) ^ 0xD7A4E879);
  v4 = (((v3 ^ 0xD0C7136D) - 997344295) ^ ((v3 ^ 0x7C01EC46) + 1749763316) ^ ((v3 ^ 0x3F985FCB) + 735246207)) - 248087263;
  v5 = v4 < 0x784A8577;
  v6 = v4 > LODWORD(STACK[0xEC0]);
  if (LODWORD(STACK[0xEC0]) < 0x784A8577 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v6) | (16 * v6)) ^ (a1 - 16908))))();
}

uint64_t sub_10051DEC4()
{
  v2 = STACK[0x4400];
  *(v1 + 3480) = STACK[0x4400];
  STACK[0x49D8] = v2;
  STACK[0xADA0] = v2;
  LODWORD(STACK[0xADAC]) = STACK[0x5EB8];
  return (*(STACK[0xF18] + 8 * (v0 - 8414)))();
}

uint64_t sub_10051DF14@<X0>(int a1@<W8>)
{
  v1 = a1 - 24231;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10051DF9C()
{
  v4 = v0 - 22687;
  *v2 = *(v3 + 400);
  *(v1 + 172) = -371865840;
  *(v1 + 248) = *(v3 + 480);
  v5 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x11BA)))();
}

uint64_t sub_10051E248(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = a4 < 0x9F59D9AA;
  if (v8 == a6 + 1987590257 < ((((a8 + 1131652918) & 0xBC8CBBFB) - 1621561775) ^ ((a8 - 2025) | 0x8006)))
  {
    v8 = a6 + 1987590257 < a4;
  }

  return (*(STACK[0xF18] + 8 * ((4628 * v8) | a8)))();
}

uint64_t sub_10051E2D4()
{
  STACK[0x9F70] = STACK[0x8B80] + 128;
  v1 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x300F) + v0)))();
}

uint64_t sub_10051E478()
{
  v1 = *(STACK[0x2D40] + 24);
  STACK[0x6088] = v1;
  return (*(STACK[0xF18] + 8 * ((63 * (((v1 == 0) ^ (v0 - 64)) & 1)) ^ v0)))();
}

uint64_t sub_10051E580()
{
  STACK[0x8FE8] = STACK[0x7BF0];
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1769236338;
  LODWORD(STACK[0x704C]) = -2116087611;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10051E5F0@<X0>(int a1@<W5>, int a2@<W6>, unsigned int a3@<W8>)
{
  v8 = a3 > v5;
  v9 = ((a2 - 15) ^ a1) + v7;
  v10 = v8 ^ (v9 < v3);
  v11 = v9 < v4;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0xF18] + 8 * ((v8 * v6) ^ a2)))();
}

uint64_t sub_10051E6BC()
{
  *(v1 + 184) = -124;
  *(v1 + 36) = -371865839;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((6385 * ((v0 ^ 0x3892F441u) < 0xB7E09444)) ^ (v0 - 25688 + ((v0 + 4684) | 0x4219)))))();
}

uint64_t sub_10051E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x10D0];
  STACK[0x5D28] = &STACK[0x522C];
  LODWORD(STACK[0x4704]) = -1823813650;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10051E8D4()
{
  v5 = 193924789 * ((((2 * v4) | 0xD3B980A9EE1AF7C2) - v4 + 0x16233FAB08F2841FLL) ^ 0x1247D0A041B64987);
  STACK[0x10EE0] = (v0 - ((11881 * (v3 ^ 0x5045u) + 0x130272185FDA9951) & v2) + 0x981390C2FED9246) ^ v5;
  STACK[0x10EE8] = v1 - 0x43D8CBFA0CEB429CLL;
  LODWORD(STACK[0x10EDC]) = (v3 + 19719) ^ v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0x9B38)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v3))(v7);
}

uint64_t sub_10051E9C4()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -935694681;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_10051E9F0()
{
  v2 = v0 | 0x910A;
  v3 = STACK[0xF18];
  *(*(STACK[0xF18] + 8 * (v2 ^ 0x78A0)))() = 0;
  v4 = (*(v3 + 8 * (v2 + 6098)))(v1 + 33, 272);
  v5 = ((2 * v4) & 0xFF8ADFFE) + (v4 ^ 0x7FC56FFF);
  LODWORD(STACK[0x8520]) = v5 - 1249919305;
  return (*(v3 + 8 * ((82 * (((v2 + 2) ^ ((v5 + 3837953) >= 0)) & 1)) ^ v2)))();
}

uint64_t sub_10051EB40@<X0>(int a1@<W8>)
{
  v1 = STACK[0x91C8];
  if ((((4 * ((a1 + 620464148) & 0xDB04DBFB ^ 0x92E0)) ^ 0x981390C2FEDF52ALL) + (((v1 ^ 0xE8939DBBF50EE218) + 0x176C62440AF11DE8) ^ ((v1 ^ 0xC31B6D41B2362FELL) - 0xC31B6D41B2362FELL) ^ ((v1 ^ 0xED231263C1C012A0) + 0x12DCED9C3E3FED60))) >> 32)
  {
    v2 = 1;
  }

  else
  {
    v2 = STACK[0x86E7];
  }

  LOBYTE(STACK[0xAF97]) = v2;
  v3 = STACK[0x38F8];
  STACK[0xAF98] = STACK[0x38F8];
  STACK[0xAFA0] = v1;
  if (v3)
  {
    v4 = LODWORD(STACK[0x9000]) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((7438 * v5) ^ a1)))();
}

uint64_t sub_10051ECF8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 1770012687)))(STACK[0x6A98]);
  STACK[0x6A98] = 0;
  return (*(v1 + 8 * ((804 * (v0 > 0x33B6AC26)) ^ (v0 - 1770044683))))(v2);
}

uint64_t sub_10051ED68()
{
  v1 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x17FCDEA0) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xE8032158)) ^ 0xF1DAC56F) + 296775481;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 38649)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10051EEA0()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 3274) ^ 0xFA2) + v0)))();
}

uint64_t sub_10051EF88@<X0>(int a1@<W8>)
{
  v6 = a1 ^ 0x8807;
  LODWORD(STACK[0xEC0]) = 21 * (a1 ^ 0xC400);
  STACK[0xEB0] = &v5[3].u64[1];
  LODWORD(STACK[0x10EDC]) = ((a1 ^ 0x8807) + 19157) ^ (155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x14692570) - (&STACK[0x10000] + 3800) - 342435187) ^ 0xDB0C142));
  STACK[0x10EE0] = v5;
  STACK[0x10EE8] = v5;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (a1 ^ 0xE74)))(&STACK[0x10ED8]);
  v5[1] = veorq_s8(*v5, xmmword_100F523A0);
  v8 = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0x16116940 | 0xE1AA8615) + ((&STACK[0x10000] + 3800) ^ 0x61200615 | 0x1E5579EA)) ^ 0x1AA740A8);
  STACK[0x10EF0] = v4;
  LOWORD(STACK[0x10EF8]) = v8 + 11298;
  v9 = STACK[0xEB0];
  STACK[0x10EE0] = STACK[0xEB0];
  LODWORD(STACK[0x10EE8]) = v8 ^ 0x28D20269;
  LODWORD(STACK[0x10ED8]) = v6 - v8 + 3244;
  (*(v7 + 8 * (v6 ^ 0x87C9)))(&STACK[0x10ED8]);
  v10 = 634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x2AA240F8) - (&STACK[0x10000] + 3800) - 715276537) ^ 0xB8CB90FB);
  v11 = ((((LODWORD(STACK[0xED0]) ^ 0xD17F4B6D) + 780186771) ^ ((LODWORD(STACK[0xED0]) ^ 0xB2EDD097) + 1293037417) ^ ((LODWORD(STACK[0xED0]) ^ 0x8A475CEB) + 1975027085 + LODWORD(STACK[0xEC0]))) + (v6 ^ 0xF012A2F)) ^ v10;
  STACK[0x10EE8] = v9;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE4]) = v11;
  LODWORD(STACK[0x10EE0]) = v6 - v10 + 5370;
  (*(v7 + 8 * (v6 + 32209)))(&STACK[0x10ED8]);
  STACK[0x10ED8] = v9;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10EE8]) = v6 - 353670337 * ((((2 * ((&STACK[0x10000] + 3800) ^ 0xA7B375C3)) | 0x85E7FAFC) - ((&STACK[0x10000] + 3800) ^ 0xA7B375C3) + 1024197250) ^ 0xD1617080) - 19753;
  v12 = (*(v7 + 8 * (v6 ^ 0x8798)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((53476 * (*(v3 + 66) == 6498)) ^ v6)))(v12);
}

uint64_t sub_10051F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (((v4 ^ 0x72446E6F) - 1917087343) ^ ((v4 ^ 0x1E1F9861) - 505387105) ^ ((v4 ^ 0x8713BB0E) + 2028750066)) + 743413776;
  LODWORD(STACK[0x69F4]) = v5 ^ ((v5 ^ 0x5568053A) - 342839290) ^ ((v5 ^ 0x23605786) - 1650924870) ^ ((v5 ^ 0xC8F0A583) + 1980240061) ^ ((v5 ^ 0xFFFFBDFF) + 1090980033) ^ 0xAA4F07C0;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xEC0])))(2051246788, 54635, a3, a4, 3247001908, 653262848, 314269642, 861991936);
}

uint64_t sub_10051F440()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 40;
  v2 = (STACK[0xF10] + 1734593718) & 0x989BAF6E;
  v3 = STACK[0xF10] + 14747;
  v4 = 17902189 * ((((&STACK[0x10000] + 3800) | 0x2F721EC8) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xD08DE130)) ^ 0xA13D08D8);
  v5 = v4 + STACK[0xF10] - 29615;
  STACK[0x10EF0] = STACK[0x7218];
  LODWORD(STACK[0x10EEC]) = -1007397285 - v4;
  LODWORD(STACK[0x10EE8]) = v5;
  LODWORD(STACK[0x10ED8]) = v4 + 1017869920;
  STACK[0x10EE0] = *(&off_1010A0B50 + (v0 ^ 0x8E1C)) - 1957552383;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4016)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((((v1 ^ (STACK[0x7988] == 0)) & 1) * (v2 ^ 0x6B6)) ^ v3)))(v7);
}

uint64_t sub_10051F564()
{
  v1 = v0 + 2973;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762662768) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xC39161BE) - ((&STACK[0x10000] + 3800) | 0x3C6E9E41) + 1013882433) ^ 0xF290AC9A));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 14778)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*STACK[0x970] > 0) * (((v1 ^ 0xFD9B) - 2089772918) ^ 0x8371343B)) ^ v1)))(v3);
}

uint64_t sub_10051F630@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x886C]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (a1 - 30974 + 16655 * (a1 ^ 0xBB3))))();
}

uint64_t sub_10051F680()
{
  v4 = v1 - 27356;
  v5 = v1 + 110;
  v6 = (*(v2 + (v0 - 993499370)) ^ 0x5A) + ((2 * *(v2 + (v0 - 993499370))) & 0xB4) - 24;
  *(v3 + 27) = v6;
  *v3 = v0 + 18;
  STACK[0xAC68] = v3 + 27;
  return (*(STACK[0xF18] + 8 * ((103 * ((v5 ^ (v6 == ((v4 ^ 0xDF) - 38))) & 1)) ^ v4)))();
}

uint64_t sub_10051F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x6DA8];
  STACK[0x5D28] = &STACK[0x3AF4];
  LODWORD(STACK[0x4704]) = 80468526;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10051F7D8@<X0>(int a1@<W1>, unsigned int a2@<W2>, unsigned int a3@<W3>, unsigned int a4@<W5>, char a5@<W6>, uint64_t a6@<X7>, char a7@<W8>)
{
  v14 = a2 < a3;
  v15 = (v7 ^ (2 * (((v11 ^ v9) & v7 ^ v11 & a5) & (4 * ((v11 & a7 ^ v8) & v7)) ^ (v11 & a7 ^ v8) & v7))) & 0x1F ^ v13;
  *(a6 + 4 * v15) += v12;
  if (v14 == a4 < v10)
  {
    v14 = a4 < a2;
  }

  return (*(STACK[0xF18] + 8 * ((31 * !v14) ^ a1)))();
}

uint64_t sub_10051F888@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 64);
  v2 = *(v1 + 68);
  *(v1 + 56) = (v2 << (a1 + 2)) - ((16 * v2) & 0xBF) + 95;
  *(v1 + 57) = (v2 >> 5) - ((v2 >> 4) & 0xBE) + 95;
  *(v1 + 58) = (v2 >> 13) - ((v2 >> 12) & 0xBE) + 95;
  *(v1 + 59) = (v2 >> 21) - ((v2 >> 20) & 0xBE) + 95;
  *(v1 + 60) = (__PAIR64__(v3, v2) >> 29) - ((2 * (__PAIR64__(v3, v2) >> 29)) & 0xBF) + 95;
  *(v1 + 61) = (v3 >> 5) - ((v3 >> 4) & 0xBE) + 95;
  *(v1 + 62) = (v3 >> 13) - ((v3 >> 12) & 0xBE) + 95;
  return (*(STACK[0xF18] + 8 * (a1 + 8508)))();
}

uint64_t sub_10051FAA4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x8040] = a1;
  v2 = STACK[0xF18];
  STACK[0x8A90] = *(STACK[0xF18] + 8 * (v1 + 106));
  return (*(v2 + 8 * (((v1 - 1951798442) & 0x7456D6F5 ^ 0x97E3) + v1 + 106)))();
}

uint64_t sub_10051FBD8()
{
  LODWORD(STACK[0x97AC]) = v0;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 30920 + ((v1 + 29851) | 0x208))))();
}

uint64_t sub_10051FC28()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x9458];
  LODWORD(STACK[0x35EC]) = 1693393312;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10051FC94()
{
  STACK[0x9DE8] = ((((v0 - 3568) | 0x6280u) + 1203673247) & (2 * v1)) + (v1 ^ 0x3FB2979A23DF7E3CLL) - 0x882800000080E14;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 1723)))();
}

uint64_t sub_10051FDA4@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xAF7C]) = v5;
  STACK[0xAF80] = v4;
  STACK[0xAF88] = v2;
  LODWORD(STACK[0x11CC]) = 0;
  LODWORD(STACK[0x5F0C]) = 0;
  if (a1)
  {
    v6 = v3 == v1 - 371917082;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0xF18] + 8 * ((30 * (((v1 - 108) ^ v7) & 1)) ^ v1)))();
}

uint64_t sub_10051FE60@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 647009145;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10051FE90()
{
  v2 = *(STACK[0x2B08] - 0x10A99C80114D147FLL);
  v3 = *(v2 - 0x217E172EFA1E81CLL);
  v4 = v2 - 0x217E172EFA1E800;
  LODWORD(v2) = (((*(v2 - 0x217E172EFA1E804) ^ 0xF7E01573) + 136309389) ^ ((*(v2 - 0x217E172EFA1E804) ^ 0x7D077C03) - 2097642499) ^ ((v0 ^ 0x6A79) - 1664280516 + (*(v2 - 0x217E172EFA1E804) ^ 0x6332AE61))) - 54746966;
  v5 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10ED8]) = v2 ^ v5;
  LODWORD(STACK[0x10EF8]) = v0 - v5 + 18503;
  STACK[0x10F00] = v4;
  STACK[0x10EE8] = &STACK[0x7840];
  STACK[0x10EE0] = &STACK[0x7968];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 30634)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F08];
  LODWORD(STACK[0x924C]) = STACK[0x10F08];
  return (*(v6 + 8 * ((53731 * (v8 == v1)) ^ v0)))(v7);
}

uint64_t sub_10051FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 2779 * (STACK[0xF10] ^ 0x8B2A);
  v4 = STACK[0xF10] - 34163;
  LODWORD(STACK[0x9EFC]) = (v3 ^ 0xFFFF4775) & LODWORD(STACK[0x98D4]) ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DFE)))(a1, a2, a3, v3, ((0x226 % (LODWORD(STACK[0x9F04]) ^ 0x481A41BCu)) ^ 0x37F35FF3) + 139145816 + ((2 * (0x226 % (LODWORD(STACK[0x9F04]) ^ 0x481A41BCu))) & 0x7E6));
}

uint64_t sub_10052009C()
{
  v1 = *STACK[0x7CB8];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((-2 - (((&STACK[0x10000] + 3800) ^ 0x12400802 | 0xADBF51C9) + ((&STACK[0x10000] + 3800) ^ 0x890B41C0 | 0x5240AE36))) ^ 0x8292ADF2) + 296760173;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 23341)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1005203BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0xF18] + 8 * (((1433 * (v4 ^ 0x1C7A) - 11265) * (LODWORD(STACK[0xE90]) != -371865781)) ^ v4));
  STACK[0xE80] = 0x681545D2F6DF8F5FLL;
  STACK[0xE70] = 0x97EABA2D092070A1;
  STACK[0xE60] = 0x1CCAE6C03F7DC19FLL;
  STACK[0xE40] = 0xE335193FC0823E61;
  STACK[0xE30] = 0x367AA73832449F79;
  STACK[0xE20] = 0xC98558C7CDBB6087;
  STACK[0xE10] = 0xE527211FC9AC8EFELL;
  STACK[0xE00] = 0x4D7F4AC8EDB7A59CLL;
  STACK[0xDF0] = 0xEAFD6FFDDFFDFADDLL;
  STACK[0xDE0] = 0xCBFB77DD0A5E5DF9;
  return v5(0xB8408CB4B9DC4841, 0xBB10DFE5E7189F3, 0x9F2632BF76345949, a4, 0x60D9CD4089CBA6B7, 0xB4B56A12200AB4CCLL, 1724701216, 0x4B4A95EDDFF54B34);
}

uint64_t sub_10052068C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8F10]) = v1;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393271;
  return (*(STACK[0xF18] + 8 * (a1 - 29050)))();
}

uint64_t sub_100520734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 29045;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x1B40];
  LODWORD(STACK[0x648C]) = 960165944;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100520784()
{
  v3 = *(v1 + 8);
  v2 = v1 + 8;
  STACK[0x1AD8] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 703883442) ^ (634647737 * (((((&STACK[0x10000] + 3800) | 0x13FCA2C) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xFEC035D3)) ^ 0x93561A2F));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 8999)))(&STACK[0x10ED8]);
  STACK[0xAAF0] = v2 + 28;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xAAF8] = v7;
  STACK[0x2568] = (v7 + 168);
  STACK[0x7690] = ((v0 - 9619) | 0x2CE4u) + v6 - 44460;
  STACK[0x8C08] = 0x20DE4F5147E73171;
  STACK[0x3B68] = 0;
  return (*(v4 + 8 * (((STACK[0x2730] == 0) * (v0 - 42825)) ^ v0)))(v5, STACK[0x2730]);
}

uint64_t sub_100520904()
{
  v3 = v0 ^ v1;
  v4 = v2[1];
  v5 = ((v3 - 105600545 + (*v2 ^ 0x64AF58E)) ^ ((*v2 ^ 0x7325D05C) - 1931858012) ^ ((*v2 ^ 0x9CBAE2C3) + 1665473853)) + 386470283;
  v6 = v5 < 0x2D334A7A;
  v7 = v5 > v4 + 758336122;
  if (v4 > 0xD2CCB585 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((7697 * v7) ^ v3)))();
}

uint64_t sub_100520A10()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  *v0 = 0;
  return (*(v2 + 8 * (v1 - 27856)))(v3);
}

uint64_t sub_100520AA0@<X0>(uint64_t a1@<X8>)
{
  v2 = (((((v1 + 5167) | 0x30) ^ 0x18D4ECB9) + (*(a1 + 16) ^ 0xE72B987E)) ^ ((*(a1 + 16) ^ 0xEE8F9C69) + 292578199) ^ (((v1 - 29889) | 0x8920) + 529379775 + (*(a1 + 16) ^ 0xE071C306))) - 827734338;
  v3 = (((*(a1 + 12) ^ 0x932A4F08) + 1825943800) ^ ((*(a1 + 12) ^ 0x9EDFAA09) + 1629509111) ^ ((*(a1 + 12) ^ 0xE4202210) + 467656176)) - 827734338;
  v4 = (v2 < 0xE4D3FFAD) ^ (v3 < 0xE4D3FFAD);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0xE4D3FFAD;
  }

  return (*(STACK[0xF18] + 8 * ((62254 * v5) ^ v1)))();
}

uint64_t sub_100520C64()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4085)))();
}

uint64_t sub_100520F50()
{
  v0 = STACK[0xF10] ^ 0x9DD4;
  v1 = STACK[0xF10] - 33769;
  STACK[0xA148] = STACK[0xA128] + 49;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x503)))();
}

uint64_t sub_100520FB0()
{
  v2 = *STACK[0xAC00];
  *(v0 + 8) = v2;
  *v0 = 1;
  return (*(STACK[0xF18] + 8 * (((v2 == ((v1 + 206656337) & 0xDE ^ 0x5F)) * (v1 - 7017)) ^ v1)))();
}

uint64_t sub_100521020(__n128 a1)
{
  a1.n128_u16[0] = -1286;
  a1.n128_u8[2] = -6;
  a1.n128_u8[3] = -6;
  a1.n128_u8[4] = -6;
  a1.n128_u8[5] = -6;
  a1.n128_u8[6] = -6;
  a1.n128_u8[7] = -6;
  return (*(STACK[0xF18] + 8 * v1))(a1);
}

uint64_t sub_100521068@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W6>, int a5@<W8>)
{
  *(a2 + 20) = v6;
  *(a3 + 1) = v5;
  return (*(STACK[0xF18] + 8 * (((a1 == ((a5 + a4) | v9) + v10) * (((a5 + v7) | v8) ^ v11)) ^ a5)))();
}

uint64_t sub_1005212A4@<X0>(unint64_t a1@<X3>, int a2@<W8>)
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 14906;
  STACK[0x3A50] = a1;
  LODWORD(STACK[0x65B4]) = a2;
  LODWORD(STACK[0x6878]) = STACK[0x9E8];
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0xBF8B) * (a2 == -371865839)) ^ v3)))();
}

uint64_t sub_1005212FC()
{
  v5 = *(v0 + 72 * v3 + 16);
  v6 = (v2 - 1070504135);
  *(v1 + 2184) = v6;
  LODWORD(v5) = *(v5 + 16 * v6 + 12);
  v7 = 193924789 * ((((&STACK[0x10000] + 3800) | 0x311DA99D) - ((&STACK[0x10000] + 3800) & 0x311DA998)) ^ 0x87A69BFB);
  LODWORD(STACK[0x10EE0]) = (3 * (((v4 - 2425) | 0x92E) ^ 0x29C4) + 422821511 + (((v5 ^ 0x54E685BA) - 1424393658) ^ ((v5 ^ 0x15C3A642) - 365143618) ^ ((v5 ^ 0xA8F0E4E9) + 1460607767))) ^ v7;
  LODWORD(STACK[0x10ED8]) = (v4 + 209451420) ^ v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v4 ^ 0xE21C)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((46729 * (LOBYTE(STACK[0x10EDC]) == 55)) ^ v4)))(v9);
}

uint64_t sub_10052143C@<X0>(unsigned int a1@<W8>)
{
  v2 = STACK[0x38D0];
  *(v2 + 4) = STACK[0x88E4];
  *(*(STACK[0x650] + v1) + 8 * SLODWORD(STACK[0x24E8])) = v2;
  STACK[0x6FB8] = (a1 ^ 0x60F) + 0x568149B9CB23C1CBLL + (((*(STACK[0x6308] + 4) ^ 0xBAB740942681F289) + 0x4548BF6BD97E0D77) ^ ((*(STACK[0x6308] + 4) ^ 0x52BC129B28979139) - 0x52BC129B28979139) ^ ((*(STACK[0x6308] + 4) ^ 0xE80B520FE7C3A4A1) + 0x17F4ADF0183C5B5FLL));
  LODWORD(STACK[0x13B4]) = -371865839;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100521524()
{
  v3 = STACK[0x345C];
  v4 = 17902189 * ((((&STACK[0x10000] + 3800) | 0xC6190C5B) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x39E6F3A0)) ^ 0x48561A4B);
  STACK[0x10EE8] = STACK[0x7208];
  LODWORD(STACK[0x10EF0]) = v4 ^ v3 ^ 0x2FA9AF20 ^ v1 ^ 0xA3B5;
  STACK[0x10F00] = &STACK[0x441C];
  STACK[0x10EF8] = v2;
  LODWORD(STACK[0x10EE0]) = (v1 + 25922) ^ v4;
  STACK[0x10F18] = v0;
  STACK[0x10F10] = &STACK[0x27E0];
  STACK[0x10ED8] = &STACK[0x6563];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 41732)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_100521600()
{
  v0 = STACK[0xF10] - 15037;
  v1 = LOBYTE(STACK[0xABE3]);
  LODWORD(STACK[0xABE4]) = LODWORD(STACK[0xABD8]) + ((STACK[0xF10] - 31530) ^ 0xE9D5D700 ^ *STACK[0xAB90]);
  return (*(STACK[0xF18] + 8 * ((38801 * v1) ^ v0)))();
}

uint64_t sub_10052168C()
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

uint64_t sub_100521970()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 555;
  v2 = *STACK[0x8510];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] - 193924789 * ((2 * ((&STACK[0x10000] + 3800) & 0x261453F0) - (&STACK[0x10000] + 3800) - 638866418) ^ 0x6F509E68) + 60349492;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4032)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_100521AA4()
{
  v0 = STACK[0xF10] + 2617;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5FEC)))(72);
  *(STACK[0x1E30] + 480) = v2;
  return (*(v1 + 8 * ((228 * (((v2 == 0) ^ (-125 * (v0 ^ 0x73))) & 1)) ^ v0)))();
}

uint64_t sub_100521BE0()
{
  v1 = STACK[0x3B48];
  v2 = STACK[0x6A48];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = -677939793;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100521C28@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBDC0] = 0;
  STACK[0xBDC8] = v1 - 0x43D8CBFA0CEB42D4;
  v13 = 16777619 * (((1692773664 * v12) | 7) ^ (1692773664 * v12)) % 7;
  v14 = 16777619 * (((1692773664 * v12) | 6) ^ (1692773664 * v12)) % 6;
  v15 = 16777619 * (((1692773664 * v12) | 5) ^ (1692773664 * v12)) % 5;
  v16 = *(&STACK[0xBDC0] | v13);
  *(&STACK[0xBDC0] | v13) = STACK[0xBDC7];
  v17 = *(&STACK[0xBDC0] | v14);
  *(&STACK[0xBDC0] | v14) = STACK[0xBDC6];
  v18 = *(&STACK[0xBDC0] | v15);
  *(&STACK[0xBDC0] | v15) = STACK[0xBDC5];
  v19 = vdup_n_s32(1692773664 * v12);
  v20 = 16777619 * (((1692773664 * v12) | 3) ^ (1692773664 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = (1692773664 * v12) | 1;
  LOBYTE(STACK[0xBDC7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBDC6]) = v17;
  LOBYTE(STACK[0xBDC5]) = v18;
  v23 = STACK[0xBDC0];
  LOBYTE(STACK[0xBDC0]) = STACK[0xBDC4];
  LOBYTE(STACK[0xBDC4]) = v23;
  v24 = *(&STACK[0xBDC0] | v20);
  *(&STACK[0xBDC0] | v20) = STACK[0xBDC3];
  LOBYTE(STACK[0xBDC3]) = v24;
  v25 = STACK[0xBDC1];
  LOBYTE(STACK[0xBDC2]) = STACK[0xBDC0];
  LOWORD(STACK[0xBDC0]) = v25;
  STACK[0xBDC0] = vmla_s32(v22, STACK[0xBDC0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBDC8];
  v27 = (1692773664 * STACK[0xBDC8]) ^ v12;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_100BC7620;
  v30 = xmmword_100BC7630;
  v31 = xmmword_100BC7640;
  v32 = xmmword_100BC7650;
  v33.i64[0] = 0x9393939393939393;
  v33.i64[1] = 0x9393939393939393;
  v34.i64[0] = 0x1000000010;
  v34.i64[1] = 0x1000000010;
  do
  {
    v35 = *(v26 + v3);
    v48.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v48.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v48.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v48.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v3) = vmulq_s8(vqtbl4q_s8(v48, xmmword_100BC7660), v33);
    v3 += 16;
    v32 = vaddq_s32(v32, v34);
    v31 = vaddq_s32(v31, v34);
    v30 = vaddq_s32(v30, v34);
    v29 = vaddq_s32(v29, v34);
  }

  while (v3 != 96);
  v36 = 11;
  do
  {
    v37 = 16777619 * ((v27 + v36) ^ v27) % v36;
    v38 = *(v26 + 8 * v37) ^ *(v26 + 8 * v36);
    *(v26 + 8 * v36) = v38;
    v39 = *(v26 + 8 * v37) ^ v38;
    *(v26 + 8 * v37) = v39;
    *(v26 + 8 * v36) ^= v39;
    v40 = v36-- + 1;
  }

  while (v40 > 2);
  v41 = *(&STACK[0xBDC8] + v13);
  *(&STACK[0xBDC8] + v13) = STACK[0xBDCF];
  LOBYTE(STACK[0xBDCF]) = v41;
  v42 = *(&STACK[0xBDC8] + v14);
  *(&STACK[0xBDC8] + v14) = STACK[0xBDCE];
  LOBYTE(STACK[0xBDCE]) = v42;
  v43 = *(&STACK[0xBDC8] + v15);
  *(&STACK[0xBDC8] + v15) = STACK[0xBDCD];
  LOBYTE(STACK[0xBDCD]) = v43;
  v44 = STACK[0xBDC8];
  LOBYTE(STACK[0xBDC8]) = STACK[0xBDCC];
  LOBYTE(STACK[0xBDCC]) = v44;
  v45 = *(&STACK[0xBDC8] + v20);
  *(&STACK[0xBDC8] + v20) = STACK[0xBDCB];
  LOBYTE(STACK[0xBDCB]) = v45;
  v46 = STACK[0xBDC9];
  LOBYTE(STACK[0xBDCA]) = STACK[0xBDC8];
  LOWORD(STACK[0xBDC8]) = v46;
  STACK[0xBDC8] = vmla_s32(v22, STACK[0xBDC8], vdup_n_s32(0x1000193u));
  STACK[0x2738] = (STACK[0xBDC8] ^ STACK[0xBDC0]) + a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10052205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v12 = v8 < v9;
  if (v12 == a8 + a7 < v9)
  {
    v12 = a8 + a7 < v8;
  }

  return (*(STACK[0xF18] + 8 * ((((v11 + a5) ^ v10) * v12) ^ v11)))();
}

uint64_t sub_1005220B0()
{
  v1 = STACK[0x533C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393288;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100522164()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762638229) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x7E950348) - (&STACK[0x10000] + 3800) - 2123694922) ^ 0xB06B3192));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xFB9D)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] < 1) * (((v0 - 4371) | 0x9C0C) - 48045)) ^ v0)))(v2);
}

uint64_t sub_10052224C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = (v5 + v3 * v4);
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = a1;
  v8[4] = 0x63229C6CAA627F47;
  v8[5] = 0x95BDDB4F3E212ELL;
  return (*(STACK[0xF18] + 8 * (((v3 + 1 == v6) * ((v2 | v7) ^ 0x55E3)) ^ a2)))();
}

uint64_t sub_10052232C@<X0>(int a1@<W8>)
{
  v1 = a1 & 0xE103EF7B;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 & 0xE103EF7B ^ 0x4192)))();
  return (*(v2 + 8 * (v1 - 22718)))(v3);
}

uint64_t sub_100522364()
{
  STACK[0x9EB8] = ((v0 << (((v1 - 113) | 0xB3) ^ 0xB6)) & 0x3EBFF5AE) + (v0 ^ 0xFBFBBFDE1F5FFAD7) + 0x7F4F5D39FFF0E7ECLL;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1790)))();
}

uint64_t sub_10052251C()
{
  v2 = LODWORD(STACK[0x7704]);
  v3 = (((v2 ^ 0x776D890222C1E749) - 0x776D890222C1E749) ^ ((v2 ^ 0x5D617C1088ADC625) - 0x5D617C1088ADC625) ^ ((v2 ^ 0x2A0CF51243B9E67DLL) - 0x2A0CF51243B9E67DLL)) + 0x4D5FAE8B9BDD9FDELL;
  STACK[0x5DB0] = v3;
  v4 = ((((v2 ^ 0x22C1E749) - 583133001) ^ ((v2 ^ 0x88ADC625) + 2001877467) ^ ((v2 ^ 0x43B9E67D) - 1136256637)) - 1679974434) & 0x4DF82733;
  v5 = (((((v2 ^ 0x22C1E749) - 583133001) ^ ((v2 ^ 0x88ADC625) + 2001877467) ^ ((v2 ^ 0x43B9E67D) - 1136256637)) - 1679974434) ^ 0x29FB06B3) & (2 * v4) ^ v4;
  v6 = ((2 * (v3 ^ (v0 - 1337310693 + ((v0 - 40290) | 0x2210)))) ^ 0xFB664B48) & (v3 ^ (v0 - 1337310693 + ((v0 - 40290) | 0x2210))) ^ (2 * (v3 ^ (v0 - 1337310693 + ((v0 - 40290) | 0x2210)))) & 0xFDB325A4;
  v7 = v6 ^ 0x49124A4;
  v8 = (v6 ^ 0x79200100) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xF6CC9690) & v7 ^ (4 * v7) & 0xFDB325A0;
  v10 = (v9 ^ 0xF4800480) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x9332124)) ^ 0xDB325A40) & (v9 ^ 0x9332124) ^ (16 * (v9 ^ 0x9332124)) & 0xFDB32580;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v0 + 11441)))((32 * ((((v11 ^ 0x248125A4) << 8) & 0x5B30000 ^ 0x1210000 ^ (((v11 ^ 0x248125A4) << 8) ^ 0xB3250000) & (v11 ^ 0x248125A4)) & (((v11 ^ 0xD9320000) & (v10 << 8) ^ v10) << 16) ^ (v11 ^ 0xD9320000) & (v10 << 8) ^ v10)) ^ (16 * ((((v2 ^ 0x22C1E749) - 583133001) ^ ((v2 ^ 0x88ADC625) + 2001877467) ^ ((v2 ^ 0x43B9E67D) - 1136256637)) - 1679974434)) ^ 0xDF827330);
  *(v1 + 8) = v13;
  STACK[0xFB8] = v1 + 8;
  return (*(v12 + 8 * ((999 * (v13 != 0)) ^ v0)))();
}

uint64_t sub_1005227D0@<X0>(int a1@<W8>)
{
  v3 = v1 + 1147575041 + (((v2 ^ 0x121BF42B) - 303821867) ^ ((v2 ^ 0x5C6775B) - 96892763) ^ (((a1 + 25314) ^ 0x1F730A4) + (v2 ^ 0xFE084461)));
  v4 = (((LODWORD(STACK[0xABFC]) ^ 0x6DC96BCF) - 1841916879) ^ ((LODWORD(STACK[0xABFC]) ^ 0x8B38340C) + 1959250932) ^ ((LODWORD(STACK[0xABFC]) ^ 0xF2498D2) - 254056658)) - 2101238418;
  v5 = v3 < 0x98EBDE5D;
  v6 = v3 > v4;
  if (v5 != v4 < 0x98EBDE5D)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((51 * v6) ^ a1)))();
}

uint64_t sub_1005228E8()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9759)))((8 * (*(STACK[0x630] - 341378134) - ((v0 + 78469105) & (2 * *(STACK[0x630] - 341378134)))) + 313972424) ^ 0x12B6D6C8u);
  *(v1 + v2) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((v0 - 1939596835) & 0x739BFA67) - 29154)) ^ v0)))();
}

uint64_t sub_100522A10()
{
  v0 = STACK[0xF10] - 5899;
  v1 = *(STACK[0x2140] - 0x10A99C80114D146FLL);
  STACK[0x6F38] = v1;
  v2 = STACK[0x29F8];
  STACK[0x8B28] = STACK[0x29F8];
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7120] = v4;
  STACK[0x1870] = (v4 + 20);
  STACK[0x7690] = v3 + 48;
  LODWORD(STACK[0x4AFC]) = 1497668682;
  v6 = v1 == 0x427A3CD3E8C5DA2FLL || v2 == 0x427A3CD3E8C5DA2FLL;
  return (*(STACK[0xF18] + 8 * ((126 * (((((v0 ^ 0xFF0B) + 1441) ^ v6) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100522AD0()
{
  v0 = STACK[0xF10] - 33702;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x117E)))();
}

uint64_t sub_100522C1C()
{
  v0 = STACK[0xF10];
  STACK[0x42C0] = STACK[0x7830] + 16;
  return (*(STACK[0xF18] + 8 * (v0 - 29290)))();
}

uint64_t sub_100522D68()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 15116;
  v2 = STACK[0xF10] - 30960;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 2608) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xEE582397) - ((&STACK[0x10000] + 3800) & 0xEE582390)) ^ 0x7983113C));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x406A)))(&STACK[0x10ED8]);
  STACK[0x5D78] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v1 + v2 - 50396)))(v4);
}

uint64_t sub_100522F24()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 29772;
  v2 = STACK[0xF10] - 33935;
  v3 = STACK[0x9AE8];
  v4 = LODWORD(STACK[0x2178]);
  *(v3 + 4) = 66049;
  *(v3 + 8) = bswap32((((v4 ^ 0xAFF9A572) + (v1 ^ 0x50064C61)) ^ ((v4 ^ 0xF8726BF6) + 126718986) ^ ((v4 ^ 0xBE5E0995) + 1101133419)) - 371865795);
  v5 = STACK[0x8D88];
  *v5 = *STACK[0x7D50];
  *(v5 + 1) = 0;
  *(v5 + 2) = LOBYTE(STACK[0xA973]) - 47;
  *(v5 + 3) = 0;
  STACK[0x10EE8] = v5 + 4;
  LODWORD(STACK[0x10ED8]) = (v0 - 22550) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800) ^ 0xCD24) + 18076;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x418A)))(&STACK[0x10ED8]);
  *(v5 + 20) = bswap32(LODWORD(STACK[0xA974]) - 2016325765);
  STACK[0x9AF0] = (((v4 ^ 0xC10E7B92217ECD68) + 0x3EF1846DDE813298) ^ ((v4 ^ 0xFAA1D552E796DC22) + 0x55E2AAD186923DELL) ^ ((v4 ^ 0x3BAFAEC02F3DD65BLL) - 0x3BAFAEC02F3DD65BLL)) + 0x3AE1413AF7325DD3;
  STACK[0x98A8] = *(v6 + 8 * v2);
  return (*(v6 + 8 * (v2 ^ 0x1212)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_100523328@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (v3 ^ 0x73BA1AFE) + a2 + ((v3 << ((v2 + 87) ^ 0x93)) & 0x1FC);
  LODWORD(STACK[0x923C]) = v4 + 1304763194;
  v4 -= 1941576438;
  LODWORD(STACK[0x80F8]) = v4;
  LODWORD(STACK[0x8DE8]) = v4;
  STACK[0x8EC8] = a1;
  return (*(STACK[0xF18] + 8 * (v2 + 12232)))();
}

uint64_t sub_1005233D4@<X0>(uint64_t a1@<X8>)
{
  v4.i64[0] = 0xDCDCDCDCDCDCDCDCLL;
  v4.i64[1] = 0xDCDCDCDCDCDCDCDCLL;
  v5.i64[0] = 0xEEEEEEEEEEEEEEEELL;
  v5.i64[1] = 0xEEEEEEEEEEEEEEEELL;
  *(v3 + v2) = vaddq_s8(vsubq_s8(*(a1 + v2), vandq_s8(vaddq_s8(*(a1 + v2), *(a1 + v2)), v4)), v5);
  return (*(STACK[0xF18] + 8 * ((38953 * (v2 == 0)) ^ v1)))();
}

uint64_t sub_100523430()
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

  return (*(STACK[0xF18] + 8 * (v1 - 8927)))();
}

uint64_t sub_100523698()
{
  v3 = (v2 + (v1 << 7) - 0x35558DAB80);
  *v3 = 0x4C1240434C124043;
  v3[1] = 0x4C1240434C124043;
  v3[2] = 0x4C1240434C124043;
  v3[3] = 0x4C1240434C124043;
  v3[4] = 0x4C1240434C124043;
  v3[5] = 0x4C1240434C124043;
  v3[6] = 0x4C1240434C124043;
  v3[7] = 0x4C1240434C124043;
  v3[8] = 0x4C1240434C124043;
  v3[9] = 0x4C1240434C124043;
  v3[10] = 0x4C1240434C124043;
  v3[11] = 0x4C1240434C124043;
  v3[12] = 0x4C1240434C124043;
  v3[13] = 0x4C1240434C124043;
  v3[14] = 0x4C1240434C124043;
  v3[15] = 0x4C1240434C124043;
  return (*(STACK[0xF18] + 8 * (((v1 == 1789598582) * (((v0 + 494) | 0x8899) ^ 0x10B5)) ^ v0)))();
}

uint64_t sub_10052374C()
{
  v2 = STACK[0x1770];
  *v2 = v1;
  v3 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x3DB4)))(v2 + 1);
}

uint64_t sub_10052385C()
{
  v0 = STACK[0xF10] - 31350;
  STACK[0x2118] = STACK[0x5F10] + (SLODWORD(STACK[0x1EDC]) ^ 0x196691DFLL);
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x814)))();
}

uint64_t sub_100523BB0@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 1192) = a1;
  *(v3 + 1188) = v2;
  v4 = v2 + 151993138;
  v5 = (((*(v3 + 1184) ^ 0xC00FC347) + (((v1 - 39657) | 0x8118) ^ 0x3FF0B782)) ^ ((*(v3 + 1184) ^ 0xB4D40AD6) + ((v1 + 679558770) & 0xD77E1DB3 ^ 0x4B2BF418)) ^ ((*(v3 + 1184) ^ 0x2ACA46CA) - 717899466)) + 1938552199;
  v6 = (v4 < 0x157A662C) ^ (v5 < 0x157A662C);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x157A662C;
  }

  return (*(STACK[0xF18] + 8 * ((38 * v7) ^ v1)))();
}

uint64_t sub_100523D60@<X0>(int a1@<W8>)
{
  STACK[0x79C0] = 0;
  LODWORD(STACK[0x7E74]) = -371865839;
  LODWORD(STACK[0x4B00]) = -371865839;
  STACK[0x1E28] = 0;
  LODWORD(STACK[0x7160]) = -371865839;
  STACK[0x6D10] = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100523DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10];
  LODWORD(STACK[0xA5F0]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 1703568310;
  v6 = ((v5 ^ 0xD6C481B0) + 1286675957) ^ v5 ^ ((v5 ^ 0x4FCA2626) - 708855197) ^ ((v5 ^ 0x127BBB92) - 2012338217) ^ ((v5 ^ 0xEEFF7FBF) + 1955259388);
  LODWORD(STACK[0xA5FC]) = v6 ^ 0xACB8E8C;
  return (*(STACK[0xF18] + 8 * (v4 - 28300)))(a1, a2, a3, a4, ((9 % (v6 ^ 0x658A63BB)) ^ 0xCF8CFAFE) + 1890686797 + ((2 * (9 % (v6 ^ 0x658A63BB))) & 0x1C));
}

uint64_t sub_100523EDC()
{
  LOWORD(STACK[0x3FE6]) = 7085;
  LOWORD(STACK[0x897E]) = 7085;
  LOBYTE(STACK[0x96C3]) = -65;
  return (*(STACK[0xF18] + 54376))();
}

uint64_t sub_100523FC8@<X0>(int a1@<W8>)
{
  STACK[0x7030] = STACK[0x1D10] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((1892 * (a1 ^ 0x486) - 21525) | a1)))();
}

uint64_t sub_10052401C()
{
  v1 = STACK[0x4468] - ((STACK[0x4468] << ((v0 + 63) & 0xFB ^ 0x3Au)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  STACK[0x81A8] = STACK[0x8C68];
  STACK[0x97E8] = v1;
  LODWORD(STACK[0x6974]) = 103711520;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005240AC()
{
  v2 = 52 * (v0 ^ 0x74A0);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 16504)))();
  *(v1 + 48) = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 - 2078318629) & 0x7BE03777 ^ 0x2100)) ^ v2)))();
}

uint64_t sub_100524124()
{
  v1 = STACK[0x50AC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393375;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100524170()
{
  v1 = STACK[0x7D2C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393292;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005241B0()
{
  v0 = STACK[0xF10] - 68;
  v1 = STACK[0xF10] + 12622;
  LODWORD(STACK[0x68C4]) += (STACK[0xF10] - 27547) ^ 0x1FA8;
  return (*(STACK[0xF18] + 8 * (((v0 ^ (STACK[0x2700] == 0)) & 1 | (32 * ((v0 ^ (STACK[0x2700] == 0)) & 1))) ^ v1)))();
}

uint64_t sub_1005242A4()
{
  STACK[0x9F80] = STACK[0x5A18];
  STACK[0xEC0] = STACK[0xA710];
  return (*(STACK[0xF18] + 8 * ((((v0 + 1443281949) > 0xD48E4707) * (((v0 - 66269433) & 0x3F3AF7F) + 2792)) ^ (v0 + 25947))))();
}

uint64_t sub_10052439C@<X0>(uint64_t a1@<X8>)
{
  v2 = (((a1 ^ 0x21CE119507A962D3) - 0x21CE119507A962D3) ^ ((a1 ^ 0xD1C21DCCE50D4E31) + 0x2E3DE2331AF2B1CFLL) ^ (((327 * (v1 ^ 0x1720u)) ^ 0xFF3F3A6F48E9F36) + (a1 ^ 0xF00C0C590B71EBF3))) + 0x3AE1413AF7325DD3;
  STACK[0x3050] = v2;
  STACK[0x5C50] = v2;
  LODWORD(STACK[0x1374]) = -1842049351;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10052446C@<X0>(int a1@<W8>)
{
  v4 = (v1 - 1239884347);
  v5 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFACDF6E5CLL)) + v2 + 4 * v4;
  *(STACK[0xED0] + 4 * v4) ^= ((v2 + 4 * v4) * v3) ^ *(v2 + 4 * v4) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v5 - 1394643362) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0x353F216A ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (((v5 - 1394643360) + (qword_1010C0540 ^ 0x94DFF197226FCCCLL) * ((a1 - 41465) ^ 0x27951D0F8EE454C5) + 0x27951D0F8EE473C9) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10052462C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 19117;
  v3 = STACK[0x8610];
  v4 = STACK[0x99A8];
  v5 = STACK[0x1A68] + STACK[0x9998];
  v6 = LODWORD(STACK[0x6BEC]) - LODWORD(STACK[0x9994]);
  v7 = (v6 ^ 0xECDECBA8) & (2 * (v6 & (((STACK[0xF10] - 27430) | 0x182A) ^ 0xCEDED392))) ^ v6 & (((STACK[0xF10] - 27430) | 0x182A) ^ 0xCEDED392);
  v8 = ((2 * (v6 ^ 0x7DFA0AE2)) ^ 0x6649C29E) & (v6 ^ 0x7DFA0AE2) ^ (2 * (v6 ^ 0x7DFA0AE2)) & 0xB324E14E;
  v9 = v8 ^ 0x91242141;
  v10 = (v8 ^ 0xA200C00C) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xCC93853C) & v9 ^ (4 * v9) & 0xB324E14C;
  v12 = (v11 ^ 0x80008100) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x33246043)) ^ 0x324E14F0) & (v11 ^ 0x33246043) ^ (16 * (v11 ^ 0x33246043)) & 0xB324E140;
  v14 = v12 ^ 0xB324E14F ^ (v13 ^ 0x32040000) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x33240000 ^ v14 ^ ((v14 << 16) ^ 0x614F0000) & (((v13 ^ 0x8120E10F) << 8) & 0x33240000 ^ 0x13040000 ^ (((v13 ^ 0x8120E10F) << 8) ^ 0x24E10000) & (v13 ^ 0x8120E10F))));
  v16 = STACK[0xF10] - 2846;
  v17 = 17902189 * ((((&STACK[0x10000] + 3800) | 0x6B4D9307) + (~(&STACK[0x10000] + 3800) | 0x94B26CF8)) ^ 0xE5028516);
  STACK[0x10F00] = STACK[0x3D28] + STACK[0x9998];
  STACK[0x10EE0] = v4;
  STACK[0x10ED8] = v5;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10EF8]) = (((v15 ^ 0x2947B329) - 705518859) ^ ((v15 ^ 0x69D22449) - 1788398187) ^ ((v15 ^ 0xAA0ABE53) + 1455402895)) - v17 + 37568765;
  LODWORD(STACK[0x10EF0]) = v16 ^ v17;
  v18 = STACK[0xF18];
  v19 = (*(STACK[0xF18] + 8 * (v1 + 16524)))(&STACK[0x10ED8]);
  return (*(v18 + 8 * ((12688 * (LODWORD(STACK[0x10EF4]) == v0)) ^ v2)))(v19);
}

uint64_t sub_1005248E8@<X0>(unsigned int a1@<W8>)
{
  *((v1 - 1807920008) + STACK[0x9D88] + STACK[0x2920] - 0x654C5E8519297F41) = *(STACK[0xACA8] + (v1 - 1807920008));
  LODWORD(STACK[0xCB0]) = a1 - 339923661;
  v2 = ((a1 - 339923661) ^ 0xFFFF74C4) + v1;
  v3 = *(STACK[0xF18] + 8 * (a1 ^ 0x1443516C ^ (4535 * (a1 > 0x62323B26))));
  LODWORD(STACK[0xE90]) = v2;
  return v3();
}

uint64_t sub_100524980()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31082;
  LODWORD(STACK[0x67BC]) = STACK[0x98D4];
  LODWORD(STACK[0x859C]) = (((LODWORD(STACK[0x9FA4]) ^ 0x162DB7DD) - 372094941) ^ ((LODWORD(STACK[0x9FA4]) ^ 0x7298CD4A) - 1922616650) ^ ((LODWORD(STACK[0x9FA4]) ^ 0x69E8B316) - 1776857878)) - LODWORD(STACK[0x7FCC]) + 1154750989;
  return (*(STACK[0xF18] + 8 * ((v0 - 20347) ^ v1)))();
}

uint64_t sub_100524AD0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = a2 < v2;
  *(a1 + 8 * (v4 - 926857049)) = 0;
  if (v6 == v4 + 1886168121 < ((v5 - 845597072) & 0x3266BFFD ^ 0xA7AB74DC))
  {
    v6 = v4 + 1886168121 < a2;
  }

  return (*(STACK[0xF18] + 8 * ((!v6 * v3) ^ v5)))();
}

uint64_t sub_100524B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = STACK[0xD20];
  LODWORD(STACK[0xE30]) = v6 ^ 0x266B558E;
  LODWORD(STACK[0xD90]) = a5 ^ 0x349EA99A;
  LODWORD(STACK[0xDD0]) = v5 ^ (v7 - 76574561) & 0x490AE59 ^ 0xF4C08473;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_100524D2C()
{
  v2 = *(v0 + 32);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762636590) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x34DE8D0C) - ((&STACK[0x10000] + 3800) & 0x34DE8D08)) ^ 0x5DF4028));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE004)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*(v0 + 40) == 0) * (((v1 + 1019644674) & 0xC339DFFF) - 33177)) ^ v1)))(v4);
}

uint64_t sub_100524DE8()
{
  v0 = (STACK[0xF10] - 9499) | 0x158;
  v1 = STACK[0xF10] - 34552;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ 0x74D0 | v1)))();
}

uint64_t sub_100524E94()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F28)))();
}

uint64_t sub_100524F6C()
{
  v0 = STACK[0xF10] + 6033;
  v1 = STACK[0xF10] - 31743;
  v2 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0xB499)))();
}

uint64_t sub_100525040()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x1150];
  LODWORD(STACK[0x2564]) = -1985481870;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005251A0()
{
  v1 = *(STACK[0x8830] - 0x27EAE90AB831A5CCLL);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393405;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005251FC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1005252F0()
{
  v3 = (STACK[0xED0] + v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = (STACK[0xEB0] + v0);
  *v6 = v4;
  v6[1] = v5;
  return (*(STACK[0xF18] + 8 * ((1013 * (v2 & ~((v1 + 12555) ^ (v0 == 32)))) ^ v1)))();
}

uint64_t sub_100525414@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v3 = STACK[0x7480];
  v4 = STACK[0x7370];
  STACK[0x1618] = STACK[0x7370];
  LODWORD(STACK[0x242C]) = a2;
  STACK[0x3660] = a1;
  v5 = STACK[0x7690];
  STACK[0x10D8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v5 + 576;
  v7 = v3 == -371865839 || v4 == 0;
  return (*(STACK[0xF18] + 8 * ((47 * ((((v2 ^ 0x97) - 8) ^ v7) & 1)) ^ v2)))();
}

uint64_t sub_100525498()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  STACK[0x8730] = 0;
  return (*(v1 + 8 * (v0 - 19734)))(v2);
}

uint64_t sub_100525508()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33773;
  LODWORD(STACK[0xA214]) = LODWORD(STACK[0xA200]) - 416154442;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((15158 * (v1 == -1272961141)) ^ (v0 - 29776))))();
}

uint64_t sub_100525728()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 2473;
  v3 = STACK[0x8238];
  *(v3 - 0x43D8CBFA0CEB428CLL) = 0u;
  STACK[0x10ED8] = v3 - 0x43D8CBFA0CEB429CLL;
  LODWORD(STACK[0x10EE0]) = (v1 - 846730392) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0xA946D0D2) - ((&STACK[0x10000] + 3800) | 0x56B92F2D) + 1454976813) ^ 0x4F60CB1D));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16484)))(&STACK[0x10ED8]);
  STACK[0x4B78] = v3 - 0x43D8CBFA0CEB42A4;
  LODWORD(STACK[0x8D48]) = LODWORD(STACK[0x9724]) ^ v0;
  return (*(v4 + 8 * (((STACK[0x80B8] == 0) * (v1 ^ 0x8B3C)) ^ v2)))(v5);
}

uint64_t sub_1005258D4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v4 = (((v2 - 218352530) & 0x232E8FBB ^ 0x1BFFFF6A4) & (2 * a2)) + (((v2 ^ 0xE9D5C471) + 0x4DA9DB5FDFFFBB6FLL) ^ a2);
  *(a1 + 149) = v4 - 0x37E755C935A59924;
  v4 -= 0x4DA9DB5F29706A6DLL;
  v5 = STACK[0x7D20] - 0x6F6F2C6D6B5C45B6;
  v6 = v4 < 0xB68F545E;
  v7 = v4 > v5;
  if (v5 < 0xB68F545E != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v3;
  }

  *(a1 + 157) = v8;
  v9 = ((v8 - v2) | (v2 - v8)) >= 0;
  *(a1 + 164) = v9;
  return (*(STACK[0xF18] + 8 * ((57563 * v9) ^ (v2 + 371894535))))();
}

uint64_t sub_100525A00()
{
  v1 = LODWORD(STACK[0x5AF4]) - 1788331954;
  v2 = (((LODWORD(STACK[0x92A4]) ^ ((v0 ^ 0x1DE2750E) + 565260233)) - 1066669984) ^ ((LODWORD(STACK[0x92A4]) ^ 0xA9143F6D) + 1458290835) ^ (((19 * (v0 ^ 0x9AB0)) ^ LODWORD(STACK[0x92A4]) ^ 0x7F557017) - 2136338396)) + 2134769502;
  v3 = (v1 < 0x9568384D) ^ (v2 < 0x9568384D);
  v4 = v1 > v2;
  if (v3)
  {
    v4 = v1 < 0x9568384D;
  }

  return (*(STACK[0xF18] + 8 * (v0 ^ (4 * !v4))))();
}

uint64_t sub_100525AE0()
{
  v4 = *v0 + (*v2 ^ 0x6F0F9D5E) + ((*v2 << (v3 - 50 + ((v3 + 41) & 0x5F))) & 0xBC) - 1645011367;
  v5 = (*v1 ^ 0x6BF3D87B) - 1592859844 + ((2 * *v1) & 0xF6);
  v6 = v4 < 0xD02BBB7;
  v7 = v4 > v5;
  if (v6 != v5 < 0xD02BBB7)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((3991 * !v7) ^ v3)))();
}

uint64_t sub_100525BBC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  STACK[0x1A20] = 0;
  return (*(v1 + 8 * (v0 - 6346)))(v2);
}

uint64_t sub_100525C54()
{
  v1 = STACK[0xF10] - 25413;
  STACK[0x9078] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100525C78()
{
  v1 = STACK[0x52F0];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v0 + 5808) ^ v0)))(v1);
}

uint64_t sub_100525D54()
{
  v0 = STACK[0xF10] - 32111;
  STACK[0x5F10] = STACK[0x13C8] + 16;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((LODWORD(STACK[0x998]) ^ 0x656A) + v0)))();
}

uint64_t sub_100525DA8@<X0>(int a1@<W8>)
{
  v3 = v1 + 1088579800 + (((a1 ^ 0xE66C0330) + 429128912) ^ ((a1 ^ 0xBBA24EF0) + 1146990864) ^ (((v2 - 1273299050) ^ a1) + 1273263407));
  LODWORD(STACK[0x4FD4]) = a1;
  LODWORD(STACK[0x1088]) = v3;
  return (*(STACK[0xF18] + 8 * ((247 * (v3 == 1460445639)) ^ (v2 - 27842))))();
}

uint64_t sub_100525EF4@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0xEC0] + 4 * v2 - 0x1E0984D84);
  v4 = v3 >> (a1 - 27);
  v5 = (((v3 >> 8) ^ 0xF542A1) + (v3 ^ 0xF542A1BC)) ^ HIWORD(v3);
  LOBYTE(v5) = (((v4 ^ 0xF2) - 11) ^ ((v4 ^ 0x51) + 88) ^ ((v4 ^ 0x56) + 81)) - 72 + (((v5 ^ 0x55) - 46) ^ ((v5 ^ 0x65) - 30) ^ ((v5 ^ 0x72) - 9));
  LOBYTE(v4) = (v5 ^ 0xA9) & (2 * (v5 & 0x8D)) ^ v5 & 0x8D;
  v6 = ((2 * (v5 ^ 0xBB)) ^ 0x6C) & (v5 ^ 0xBB) ^ (2 * (v5 ^ 0xBB)) & 0x36;
  *(STACK[0xED0] + (v2 - 2015761249) % v1) ^= 0x8D ^ v5 ^ (2 * (((4 * (v6 ^ 0x12)) & 0x30 ^ ((4 * (v6 ^ 0x12)) ^ 0xD0) & (v6 ^ 0x12) ^ 0x10) & (16 * ((v6 ^ 0x24) & (4 * v4) ^ v4)) ^ (v6 ^ 0x24) & (4 * v4) ^ v4));
  return (*(STACK[0xF18] + 8 * ((11086 * (v2 == 2015761342)) ^ a1)))();
}

uint64_t sub_1005260F4()
{
  v1 = STACK[0xF18];
  STACK[0x2E10] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((50631 * ((v0 - 702326373) < 0x68B9DDF3)) ^ (v0 + 14506))))();
}

uint64_t sub_100526188()
{
  v1 = STACK[0xF18];
  STACK[0x8A90] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 21985) ^ v0)))();
}

uint64_t sub_100526204()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34536;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x74E0) + v1)))();
}

uint64_t sub_1005262F0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA884]) = v2;
  LODWORD(STACK[0xA880]) = v1;
  v3 = *(*STACK[0xA870] + 72 * STACK[0xA878] + 8);
  v4 = ((((a1 - 24897) ^ 0x4B8941C1 ^ v3) - 1267296315) ^ ((v3 ^ 0x83CC3E93) + 2083766637) ^ ((v3 ^ 0x219091B9) - 563122617)) + 942617094;
  v5 = v4 < 0x4E596AF5;
  v6 = v1 + 243978798 < v4;
  if ((v1 + 243978798) < 0x4E596AF5 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((62 * !v6) ^ (a1 + 3607))))();
}

uint64_t sub_1005263D8()
{
  v0 = STACK[0xF10] - 2333;
  v1 = STACK[0xF10] - 32504;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x8A90) + v1)))();
}

uint64_t sub_10052657C@<X0>(int a1@<W8>)
{
  v8 = a1 - 21511;
  v9 = ((*(v2 - 0x465B8135CE0769DELL) ^ v7) + v6) ^ ((*(v2 - 0x465B8135CE0769DELL) ^ v5) + v4) ^ ((*(v2 - 0x465B8135CE0769DELL) ^ v3) + v1);
  v10 = 17902189 * ((((&STACK[0x10000] + 3800) | 0x9BF93774) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x6406C888)) ^ 0x15B62164);
  LODWORD(STACK[0x10EE0]) = ((311 * (a1 ^ 0x8B2A)) ^ 0xEFD868D1) - v10 + v9;
  LODWORD(STACK[0x10ED8]) = a1 - v10 - 20606;
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4095)))(&STACK[0x10ED8]);
  return (*(v11 + 8 * v8))(v12);
}

uint64_t sub_100526664()
{
  LODWORD(STACK[0x494C]) = v0;
  v4 = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  v5 = STACK[0x232C];
  v6 = ((773 * (v3 ^ 0xAB56)) ^ 0xF5826156) + (((v2 ^ 0xE72C7BB) - 242403259) ^ ((v2 ^ 0xB631B90B) + 1238255349) ^ ((v2 ^ 0x5196B9A1) - 1368832417));
  v7 = (((v3 - 16137) ^ 0xB52A73BC ^ v6) + 1098497107) ^ v6 ^ ((v6 ^ 0xAA641FF4) + 1580710958) ^ ((v6 ^ 0xF31DA3A6) + 122552448) ^ ((v6 ^ 0xE7FFFFFF) + 330062887);
  LODWORD(STACK[0x4B44]) = v7 ^ 0xE2799B37;
  v8 = 139493411 * ((~(&STACK[0x10000] + 3800) & 0xB7F78E50 | (&STACK[0x10000] + 3800) & 0x480871A8) ^ 0xBBDA6F15);
  STACK[0x10EE0] = &STACK[0x494C];
  LODWORD(STACK[0x10ED8]) = v3 - v8 + 1544;
  LODWORD(STACK[0x10EE8]) = v8 - 231254985;
  LOWORD(STACK[0x10EFC]) = -32733 * ((~(&STACK[0x10000] + 3800) & 0x8E50 | (&STACK[0x10000] + 3800) & 0x71A8) ^ 0x6F15) - 10822 + (((v7 ^ 0x776D) - 17193) ^ ((v7 ^ 0x5BE4) - 28576) ^ ((v7 ^ 0x70AF) - 17643));
  STACK[0x10EF0] = v4;
  LODWORD(STACK[0x10EF8]) = v8 + 1945538087 * v5 + 777074195;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v3 ^ 0x6043)))(&STACK[0x10ED8]);
  v11 = STACK[0x10F00];
  LODWORD(STACK[0x31F0]) = STACK[0x10F00];
  v12 = LODWORD(STACK[0x494C]) ^ 0x981390CC6385557;
  STACK[0x3B40] = v12;
  v13 = *v1;
  v14 = ((v2 ^ 0x8DCFE1483499F871) + 0x72301EB7CB66078FLL) ^ ((v2 ^ 0x421D9EB7753D31BDLL) - 0x421D9EB7753D31BDLL) ^ ((v2 ^ 0xCFD27FFFA8710EDDLL) + 0x302D8000578EF123);
  STACK[0x2CE0] = v14 + 0x77694455F5F32646;
  *(v13 + 72 * v14 + 0x41C41FFCC8) = v12;
  return (*(v9 + 8 * (((8 * (v11 == 1497668682)) | (16 * (v11 == 1497668682))) ^ v3)))(v10);
}

uint64_t sub_1005269A0@<X0>(int a1@<W8>)
{
  v3 = a1 + (v2 ^ 0xC704E5F7);
  v4 = (((LODWORD(STACK[0x9974]) ^ 0x1BEACF8F) - 468373391) ^ ((LODWORD(STACK[0x9974]) ^ 0x24F9F8CC) - 620361932) ^ (((((STACK[0xF10] - 31291) | 0x8CE) - 691612028) ^ LODWORD(STACK[0x9974])) + 691605422)) - 1235953214;
  v5 = (v3 > 0x3380ED4E) ^ (v4 < 0xCC7F12B1);
  v6 = v3 + ((STACK[0xF10] + 1380193284) & 0xADBBEBFB) - 864123018 > v4;
  if (v5)
  {
    v6 = v3 > 0x3380ED4E;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = *(v1 + 1968);
  }

  return (*(STACK[0xF18] + 8 * ((6471 * ((((v7 - (STACK[0xF10] - 371901482)) | (STACK[0xF10] - 371901482 - v7)) & 0x80000000) == 0)) ^ (STACK[0xF10] - 27108))))();
}

uint64_t sub_100526B2C()
{
  v0 = STACK[0xF10] - 16805;
  v1 = STACK[0xA918];
  LODWORD(STACK[0xA920]) = ((244 * (STACK[0xF10] ^ 0x8B3D)) ^ 0xE9D5C2A9 ^ *(STACK[0x1A98] + 728)) + LODWORD(STACK[0x9AAC]);
  LODWORD(STACK[0xA91C]) = v1;
  return (*(STACK[0xF18] + 8 * ((13 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_100526BAC()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xBBE0] = 0;
  STACK[0xBBE8] = v0;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBBE0] | v12);
  *(&STACK[0xBBE0] | v12) = STACK[0xBBE7];
  v16 = *(&STACK[0xBBE0] | v13);
  *(&STACK[0xBBE0] | v13) = STACK[0xBBE6];
  v17 = *(&STACK[0xBBE0] | v14);
  *(&STACK[0xBBE0] | v14) = STACK[0xBBE5];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBBE7]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBBE6]) = v16;
  LOBYTE(STACK[0xBBE5]) = v17;
  v22 = STACK[0xBBE0];
  LOBYTE(STACK[0xBBE0]) = STACK[0xBBE4];
  LOBYTE(STACK[0xBBE4]) = v22;
  v23 = *(&STACK[0xBBE0] | v18);
  *(&STACK[0xBBE0] | v18) = STACK[0xBBE3];
  LOBYTE(STACK[0xBBE3]) = v23;
  v24 = STACK[0xBBE1];
  LOBYTE(STACK[0xBBE2]) = STACK[0xBBE0];
  LOWORD(STACK[0xBBE0]) = v24;
  STACK[0xBBE0] = vmla_s32(v21, STACK[0xBBE0], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBBE8];
  v26 = (553300517 * STACK[0xBBE8]) ^ v11;
  v27 = vdupq_n_s32(v26);
  v28 = xmmword_100BC7620;
  v29 = xmmword_100BC7630;
  v30 = xmmword_100BC7640;
  v31 = xmmword_100BC7650;
  v32.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v33.i64[0] = 0x9393939393939393;
  v33.i64[1] = 0x9393939393939393;
  v34.i64[0] = 0x1000000010;
  v34.i64[1] = 0x1000000010;
  do
  {
    v35 = *(v25 + v2);
    v55.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v55.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v55.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v55, xmmword_100BC7660), v33);
    v2 += 16;
    v31 = vaddq_s32(v31, v34);
    v30 = vaddq_s32(v30, v34);
    v29 = vaddq_s32(v29, v34);
    v28 = vaddq_s32(v28, v34);
  }

  while (v2 != 576);
  v36 = 0;
  v37 = xmmword_100F52AE0;
  v38 = vdupq_n_s32(v26);
  v39 = xmmword_100F52AF0;
  v40 = v25 + 576;
  v41.i64[0] = 0x800000008;
  v41.i64[1] = 0x800000008;
  do
  {
    v32.i64[0] = *(v40 + v36);
    v54.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v54.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v54, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v42 = 72;
  do
  {
    v43 = 16777619 * ((v26 + v42) ^ v26) % v42;
    v44 = *(v25 + 8 * v43) ^ *(v25 + 8 * v42);
    *(v25 + 8 * v42) = v44;
    v45 = *(v25 + 8 * v43) ^ v44;
    *(v25 + 8 * v43) = v45;
    *(v25 + 8 * v42) ^= v45;
    v46 = v42-- + 1;
  }

  while (v46 > 2);
  v47 = *(&STACK[0xBBE8] + v12);
  *(&STACK[0xBBE8] + v12) = STACK[0xBBEF];
  LOBYTE(STACK[0xBBEF]) = v47;
  v48 = *(&STACK[0xBBE8] + v13);
  *(&STACK[0xBBE8] + v13) = STACK[0xBBEE];
  LOBYTE(STACK[0xBBEE]) = v48;
  v49 = *(&STACK[0xBBE8] + v14);
  *(&STACK[0xBBE8] + v14) = STACK[0xBBED];
  LOBYTE(STACK[0xBBED]) = v49;
  v50 = STACK[0xBBE8];
  LOBYTE(STACK[0xBBE8]) = STACK[0xBBEC];
  LOBYTE(STACK[0xBBEC]) = v50;
  v51 = *(&STACK[0xBBE8] + v18);
  *(&STACK[0xBBE8] + v18) = STACK[0xBBEB];
  LOBYTE(STACK[0xBBEB]) = v51;
  v52 = STACK[0xBBE9];
  LOBYTE(STACK[0xBBEA]) = STACK[0xBBE8];
  LOWORD(STACK[0xBBE8]) = v52;
  STACK[0xBBE8] = vmla_s32(v21, STACK[0xBBE8], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBBE8] ^ STACK[0xBBE0];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10052708C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, int a3@<W8>)
{
  v4 = 3 * (a3 ^ 0x3107);
  v5 = STACK[0x2C38];
  STACK[0xEC0] = STACK[0x2C38];
  v6 = *(a2 + 1204);
  v7 = *(v5 + 32) - 5;
  STACK[0xEB0] = 19 * v6 % v7;
  STACK[0xEA0] = (v6 * (v4 - 19338) + 89) % v7;
  v8 = *(STACK[0xF18] + 8 * a3);
  LODWORD(STACK[0xE90]) = v6 - 658232843 + v3;
  LODWORD(STACK[0xED0]) = v4;
  LODWORD(STACK[0xE80]) = v4 ^ 0x7FFFB46C;
  return v8(STACK[0x8C8], a1, STACK[0x920], STACK[0xE58], STACK[0xE50], 1797850369, 3595700738, 2497116926);
}

uint64_t sub_10052715C()
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 371901482;
  v5 = *(v1 + 1760);
  v6 = *(v2 + 49);
  *(v5 + 48) = *(v2 + 45) ^ 0xE9D5C711;
  *(v5 + 56) = v6 - (((v0 - v4) | (v4 - v0)) >= 0) + (v4 & 0x142828A7) + ((v6 < 0x32273352) << 32) + 0x62234C599906D4A7;
  return (*(STACK[0xF18] + 8 * (v3 - 2528)))();
}

uint64_t sub_1005272CC()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393310;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_100527318()
{
  v3 = STACK[0x55BC];
  STACK[0x8FE8] = *(*(v1 + 8) + v2);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x7FD8]) = 1751474532;
  LODWORD(STACK[0x704C]) = -2116087565;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v0 - 17299)))();
}

uint64_t sub_100527438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * v5);
  return (*(v7 + 8 * ((((v5 + 31331) | 0x2E) - 24892) ^ v5)))(a1, a2, a3, a4, v6);
}

uint64_t sub_1005274C0()
{
  v4 = (((v2 ^ 0xE7EF6A48) + 403740088) ^ ((v2 ^ 0xED91FF1) - 249110513) ^ ((v3 ^ 0xFF1C6C89) + (v2 ^ 0xE3B2A8))) + 1396976172;
  STACK[0x63A8] = v0 + 136;
  STACK[0x20A0] = v0 + 100;
  STACK[0x14A0] = v0;
  v5 = 634647737 * ((~(&STACK[0x10000] + 3800) & 0xD2B48FCD | (&STACK[0x10000] + 3800) & 0x2D4B7030) ^ 0xBF22A031);
  LODWORD(STACK[0x10ED8]) = v5 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v3 - v5 + 12326;
  v6 = v4 ^ ((v4 ^ 0xBD0F5EE9) + 731824698) ^ ((v4 ^ 0xAB20FD54) + 1035035013) ^ ((v4 ^ 0xFC3F6D) - 1771199554) ^ ((v4 ^ 0x7FBDFFFF) - 382966992) ^ 0x80BBA43E;
  STACK[0x10EE0] = v0;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 + 43312)))(&STACK[0x10ED8]);
  STACK[0x5400] = v0;
  STACK[0x41A0] = v1;
  LODWORD(STACK[0x20CC]) = v6;
  LODWORD(STACK[0x38AC]) = 1895200854;
  return (*(v7 + 8 * v3))(v8);
}

uint64_t sub_100527660@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v23 = (((v7 ^ 0x58380E83) - 1480068739) ^ ((v7 ^ 0x854F110C) + 2058415860) ^ ((v7 ^ 0x34A2D89E) - 883087518)) + a2;
  v24 = (v23 ^ a4) & (2 * (v23 & 0xF72AA38C)) ^ v23 & 0xF72AA38C;
  v25 = ((2 * (v23 ^ 0x8BE393B9)) ^ a5) & (v23 ^ 0x8BE393B9) ^ (2 * (v23 ^ 0x8BE393B9)) & v15;
  v26 = v25 ^ v16;
  v27 = (v25 ^ v17) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ v18) & v26 ^ (4 * v26) & v15;
  v29 = (v28 ^ 0x70000000) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ v19)) ^ a3) & (v28 ^ v19) ^ (16 * (v28 ^ v19)) & v21;
  v31 = v29 ^ a6 ^ (v30 ^ v6) & (v29 << 8);
  v32 = v23 ^ (2 * ((v31 << 16) & v11 ^ v31 ^ ((v31 << 16) ^ v13) & (((v30 ^ v22) << 8) & v11 ^ v12 ^ (((v30 ^ v22) << 8) ^ v14) & (v30 ^ v22))));
  *(v20 + v10 + (v32 ^ a1)) = *(v9 + (v32 ^ a1));
  return (*(STACK[0xF18] + 8 * (((v32 == a1) | (8 * (v32 == a1))) ^ v8)))();
}

uint64_t sub_1005277B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = STACK[0x5888];
  LODWORD(STACK[0x10ED8]) = v3 + 193924789 * ((2 * ((&STACK[0x10000] + 3800) & 0x2AFF6180) - (&STACK[0x10000] + 3800) + 1426103932) ^ 0xE3BBAC1A) - 19915;
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0x9038)))(&STACK[0x10ED8]);
  STACK[0x7690] = (v3 + 136842612) + STACK[0x7690] - 136866442;
  return (*(v5 + 8 * ((13513 * (a3 == ((v3 + 18577) ^ 0xE9D56476))) ^ v3)))(v7);
}

uint64_t sub_100527958()
{
  *v0 = HIBYTE(v2);
  v0[1] = BYTE6(v2);
  v0[2] = BYTE5(v2);
  v0[3] = BYTE4(v2);
  v0[4] = BYTE3(v2);
  v0[5] = BYTE2(v2);
  v0[6] = BYTE1(v2);
  v0[7] = (v2 - ((2 * v2) & 0x70) - 72) ^ 0xB8;
  v0[8] = HIBYTE(v3) ^ 0x19;
  v0[9] = BYTE2(v3) ^ 0x66;
  v0[10] = BYTE1(v3) ^ 0x91;
  v0[11] = v3 ^ 0xDF;
  v0[12] = HIBYTE(v1) ^ 0xE9;
  v0[13] = BYTE2(v1) ^ 0xD5;
  v0[14] = BYTE1(v1) ^ 0xC7;
  v0[15] = v1 ^ 0x11;
  return (STACK[0x5040])();
}

uint64_t sub_100527AD8()
{
  v0 = (STACK[0xF10] - 1685043092) & 0x646F2DFD;
  v1 = STACK[0xF10] - 5182;
  v2 = STACK[0x4E94];
  *(STACK[0x2C78] + (v2 + 68)) = 94;
  v3 = *STACK[0x3878];
  LODWORD(STACK[0x680C]) = v2 + v0 - 352;
  return (*(STACK[0xF18] + 8 * ((52490 * (v3 == -371865834)) ^ v1)))();
}

uint64_t sub_100527B94()
{
  v0 = STACK[0xF10] - 35167;
  *(STACK[0x2C78] + (LODWORD(STACK[0x3778]) + 8)) = 94;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x192A)))();
}

uint64_t sub_100527BE4()
{
  v1 = (STACK[0xF10] - 12939) | 0x240;
  v2 = STACK[0xF10] - 22225;
  v3 = STACK[0xF10] - 28646;
  STACK[0x5498] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + (v2 ^ 0xFFFF915C)) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_100527CB8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X7>, unint64_t a5@<X8>)
{
  v17 = *(STACK[0xF18] + 8 * v6);
  *&STACK[0xD60] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xD50] = vdupq_n_s64(0x38uLL);
  *&STACK[0xD20] = vdupq_n_s64(v9);
  *&STACK[0xE10] = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  *&STACK[0xE00] = vdupq_n_s64(0x12219E3FC273472uLL);
  *&STACK[0xDF0] = vdupq_n_s64(0xB5A94E2F7B1B987CLL);
  *&STACK[0xDE0] = vdupq_n_s64(v11);
  *&STACK[0xDD0] = vdupq_n_s64(v5);
  *&STACK[0xDC0] = vdupq_n_s64(a5);
  STACK[0xC30] = v10 & 0xFFFFFFF8;
  *&STACK[0xDB0] = vdupq_n_s64(v15);
  *&STACK[0xCF0] = vdupq_n_s64(a4);
  *&STACK[0xDA0] = vdupq_n_s64(v7);
  *&STACK[0xD90] = vdupq_n_s64(a1);
  *&STACK[0xD80] = vdupq_n_s64(v14);
  *&STACK[0xED0] = vdupq_n_s64(v16);
  *&STACK[0xD70] = vdupq_n_s64(v8);
  STACK[0xC40] = a3;
  *&STACK[0xEC0] = vdupq_n_s64(0x1948316F80CDDDA0uLL);
  *&STACK[0xCE0] = vdupq_n_s64(v12);
  *&STACK[0xD40] = vdupq_n_s64(0xCC3717CE5664B278);
  *&STACK[0xD30] = vdupq_n_s64(0x19E47418D4CDA6C4uLL);
  *&STACK[0xD00] = vdupq_n_s64(0x7D07FFC04E2C5624uLL);
  *&STACK[0xCD0] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0xCC0] = vdupq_n_s64(0x185F139E2B33A58DuLL);
  *&STACK[0xCB0] = vdupq_n_s64(0xE5A0EC61D4CC5A72);
  *&STACK[0xEB0] = vdupq_n_s64(0x1D7D0A7DD71491FFuLL);
  *&STACK[0xEA0] = vdupq_n_s64(0xA9F65DB150283DF1);
  *&STACK[0xCA0] = vdupq_n_s64(0xEFCF42790778521ALL);
  *&STACK[0xC90] = vdupq_n_s64(0x77E7A13C83BC290DuLL);
  *&STACK[0xC80] = vdupq_n_s64(v13);
  *&STACK[0xC70] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0xC60] = xmmword_100F523B0;
  *&STACK[0xC50] = vdupq_n_s64(0xBA0879D57248E560);
  return v17(0xA04B4302F9984D26, a2 + v10 - 12382, 48713);
}

uint64_t sub_100528068()
{
  v1 = 14 * (STACK[0xF10] ^ 0x8B55);
  v2 = STACK[0xF10] + 9658;
  *(STACK[0x3378] + 84) = v0;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0xA4F8]) == -388643056) * (v1 ^ 0x7F2)) ^ v2)))();
}

uint64_t sub_1005280C4(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10];
  v3 = STACK[0x9078];
  LODWORD(STACK[0x9F4C]) = *(STACK[0x9078] + 64);
  return (*(STACK[0xF18] + 8 * (v2 - 27580)))(a1, a2, *v3 ^ 0xA365B90B);
}

uint64_t sub_1005281FC()
{
  v1 = STACK[0xF10] - 12542;
  v2 = STACK[0xF10] + 16111;
  STACK[0x3068] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0x5A3B) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100528248(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0x9B10]) ^ 0xC64C3850) + 968083376) ^ ((LODWORD(STACK[0x9B10]) ^ 0x34D1651E) - 886138142) ^ ((LODWORD(STACK[0x9B10]) ^ 0x1B489A5F) - 457742943)) + ((((LODWORD(STACK[0x9B0C]) ^ 0x3C3956C6) - 1010390726) ^ ((LODWORD(STACK[0x9B0C]) ^ 0x3B889226) - 998806054) ^ ((LODWORD(STACK[0x9B0C]) ^ 0xDE100F6A) + 569372822)) - 643708022) * (LODWORD(STACK[0xB9D8]) ^ LODWORD(STACK[0x98D4])) + 781507515;
  v3 = (v2 ^ 0x3B04C355) & (2 * (v2 & 0xBB40EB56)) ^ v2 & 0xBB40EB56;
  v4 = ((2 * (v2 ^ 0x2B85C375)) ^ 0x218A5046) & (v2 ^ 0x2B85C375) ^ (2 * (v2 ^ 0x2B85C375)) & 0x90C52822;
  v5 = v4 ^ 0x90452821;
  v6 = v4 & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x4314A08C) & v5 ^ (4 * v5) & 0x90C52820;
  v8 = (v7 ^ 0x42000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x90C10823)) ^ 0xC528230) & (v7 ^ 0x90C10823) ^ (16 * (v7 ^ 0x90C10823)) & 0x90C52820;
  v10 = v8 ^ 0x90C52823 ^ (v9 ^ 0x400000) & (v8 << 8);
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31870) ^ 0x11C2)))(a1, a2, v2 ^ (2 * ((v10 << 16) & 0x10C50000 ^ v10 ^ ((v10 << 16) ^ 0x28230000) & (((v9 ^ 0x90852803) << 8) & 0x10C50000 ^ 0x10C50000 ^ (((v9 ^ 0x90852803) << 8) ^ 0x45280000) & (v9 ^ 0x90852803)))) ^ 0xD078C50A);
}

uint64_t sub_100528668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v5[2] = a5[8] - ((2 * a5[8]) & 0x482520C) - 2109658874;
  v5[3] = a5[9] - ((a5[9] << (v6 + 70)) & 0x482520C) - 2109658874;
  v5[4] = a5[10] - 2109658873 + (~(2 * a5[10]) | 0xFB7DADF3);
  return (*(STACK[0xF18] + 8 * v6))(a1, a2, a3, a4, &off_1010A0B50);
}

uint64_t sub_100528784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34064;
  LODWORD(STACK[0xA578]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1E1D)))(a1, a2, a3);
}

uint64_t sub_100528844()
{
  STACK[0x34E8] = v1 + 44;
  STACK[0x998] = STACK[0x1850];
  return (*(STACK[0xF18] + 8 * (((v0 ^ 0x3039) + 19353) ^ v0)))();
}

uint64_t sub_100528878()
{
  v1 = STACK[0xF10] - 26703;
  v2 = STACK[0x75A0];
  *(v2 + 56) = v0;
  *(v2 + 48) = STACK[0x1B90] + (LODWORD(STACK[0xA0E8]) - 150219390);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100528928()
{
  STACK[0xDB0] = 0;
  STACK[0xDA0] = &STACK[0x622C];
  v1 = *(STACK[0xF18] + 8 * (((*(*(STACK[0xD00] + 24) + 32) == STACK[0xD00]) * ((v0 ^ 0xE462) + 28858)) ^ v0));
  STACK[0xD20] = STACK[0xD00];
  return v1();
}

uint64_t sub_10052897C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6308];
  LODWORD(STACK[0x13B4]) = a1;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * ((v1 - 11565) ^ v1 ^ 0xF93D)) ^ v1)))();
}

uint64_t sub_1005289C0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32585;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 28346) ^ v1)))();
}

uint64_t sub_100528AC4(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a2 - 1001578301 + (((*(a3 + 12) ^ 0x582F58BC) - 1479497916) ^ ((*(a3 + 12) ^ 0xA796F79) - 175730553) ^ ((((v3 + 23538) | 0x63) ^ 0x447C7ED7) + (*(a3 + 12) ^ 0xBB83F0D4)));
  v9 = (((v7 ^ 0x8899644A) + 2003213238) ^ ((v7 ^ 0x339191E4) - 865178084) ^ ((v7 ^ 0x52DD32BF) - 1390228159)) - 1001578301;
  v10 = v8 < 0xDA7759B2;
  v11 = v8 > v9;
  if (v9 < 0xDA7759B2 != v10)
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  return (*(STACK[0xF18] + 8 * (((4 * (v12 != v6)) | ((v12 != v6) << 6)) ^ v3)))();
}

uint64_t sub_100528CE0@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBE50] = 0;
  STACK[0xBE58] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBE50] | v13);
  *(&STACK[0xBE50] | v13) = STACK[0xBE57];
  v17 = *(&STACK[0xBE50] | v14);
  *(&STACK[0xBE50] | v14) = STACK[0xBE56];
  v18 = *(&STACK[0xBE50] | v15);
  *(&STACK[0xBE50] | v15) = STACK[0xBE55];
  v19 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v20 = vdup_n_s32(553300517 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBE57]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBE56]) = v17;
  LOBYTE(STACK[0xBE55]) = v18;
  v23 = STACK[0xBE50];
  LOBYTE(STACK[0xBE50]) = STACK[0xBE54];
  LOBYTE(STACK[0xBE54]) = v23;
  v24 = *(&STACK[0xBE50] | v19);
  *(&STACK[0xBE50] | v19) = STACK[0xBE53];
  LOBYTE(STACK[0xBE53]) = v24;
  v25 = STACK[0xBE51];
  LOBYTE(STACK[0xBE52]) = STACK[0xBE50];
  LOWORD(STACK[0xBE50]) = v25;
  STACK[0xBE50] = vmla_s32(v22, STACK[0xBE50], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE58];
  v27 = (553300517 * STACK[0xBE58]) ^ v12;
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
  v48 = *(&STACK[0xBE58] + v13);
  *(&STACK[0xBE58] + v13) = STACK[0xBE5F];
  LOBYTE(STACK[0xBE5F]) = v48;
  v49 = *(&STACK[0xBE58] + v14);
  *(&STACK[0xBE58] + v14) = STACK[0xBE5E];
  LOBYTE(STACK[0xBE5E]) = v49;
  v50 = *(&STACK[0xBE58] + v15);
  *(&STACK[0xBE58] + v15) = STACK[0xBE5D];
  LOBYTE(STACK[0xBE5D]) = v50;
  v51 = STACK[0xBE58];
  LOBYTE(STACK[0xBE58]) = STACK[0xBE5C];
  LOBYTE(STACK[0xBE5C]) = v51;
  v52 = *(&STACK[0xBE58] + v19);
  *(&STACK[0xBE58] + v19) = STACK[0xBE5B];
  LOBYTE(STACK[0xBE5B]) = v52;
  v53 = STACK[0xBE59];
  LOBYTE(STACK[0xBE5A]) = STACK[0xBE58];
  LOWORD(STACK[0xBE58]) = v53;
  STACK[0xBE58] = vmla_s32(v22, STACK[0xBE58], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBE58] ^ STACK[0xBE50];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100529178()
{
  v0 = STACK[0xF18];
  v1 = (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xBB0])))(STACK[0xCA0]) != 0;
  return (*(v0 + 8 * ((v1 * LODWORD(STACK[0xBA0])) ^ LODWORD(STACK[0xBD0]))))();
}

uint64_t sub_1005291F0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v2 - 29624) ^ (155453101 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x7FFFA590) + 2147460497) ^ 0x99D9BE5E));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x413E)))(&STACK[0x10ED8]);
  v1[37] = 0;
  v4 = v1[39];
  LODWORD(STACK[0x10ED8]) = (v2 - 29624) ^ (155453101 * (((&STACK[0x10ED8] | 0x12FBD3C9) - (&STACK[0x10ED8] & 0x12FBD3C8)) ^ 0xF4DDC806));
  STACK[0x10EE0] = v4;
  (*(v3 + 8 * (v2 + 16122)))(&STACK[0x10ED8]);
  v1[39] = 0;
  STACK[0x10EE0] = v1[38];
  LODWORD(STACK[0x10ED8]) = (v2 - 29624) ^ (155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF));
  (*(v3 + 8 * (v2 + 16122)))(&STACK[0x10ED8]);
  v1[38] = 0;
  STACK[0x10EE0] = v1[36];
  LODWORD(STACK[0x10ED8]) = (v2 - 29624) ^ (155453101 * ((~&STACK[0x10ED8] & 0xAEC3CCE2 | &STACK[0x10ED8] & 0x513C3318) ^ 0x48E5D72D));
  (*(v3 + 8 * (v2 ^ 0x413E)))(&STACK[0x10ED8]);
  v1[36] = 0;
  v5 = v1[34];
  LODWORD(STACK[0x10ED8]) = (v2 - 29624) ^ (155453101 * ((((&STACK[0x10ED8] ^ 0xF8000) & 0xD1588848) + (&STACK[0x10ED8] ^ 0xD5D35868) - ((&STACK[0x10ED8] ^ 0xD5D35868) & 0xD1588848)) ^ 0xE2ADCBEF));
  STACK[0x10EE0] = v5;
  (*(v3 + 8 * (v2 ^ 0x413E)))(&STACK[0x10ED8]);
  v1[34] = 0;
  v6 = v1[35];
  LODWORD(STACK[0x10ED8]) = (v2 - 29624) ^ (155453101 * ((((&STACK[0x10ED8] | 0xEEA035A2) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0x115FCA5D)) ^ 0xF779D192));
  STACK[0x10EE0] = v6;
  v7 = (*(v3 + 8 * (v2 + 16122)))(&STACK[0x10ED8]);
  v1[35] = 0;
  return (*(v3 + 8 * (((v1[41] == 0) * (v2 ^ 0x8C3F)) ^ v2)))(v7);
}

uint64_t sub_100529494()
{
  v0 = STACK[0xF10] - 33714;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1337)))();
}

uint64_t sub_100529524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 32411;
  *a5 += ((v5 - 11067) | 4) ^ 0x6005;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x294FB952 | (&STACK[0x10000] + 3800) & 0xD6B046A8) ^ 0xCF69A29D) + 296753103;
  v7 = v5 + 16271;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * v7))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v8 + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x1ACF)))(v9);
}

uint64_t sub_100529640(unint64_t a1)
{
  *a1 = 0x425D765000000011;
  *(a1 + 12) = 44;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v2 = STACK[0x8D08];
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  STACK[0x8D08] = a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1005296A0()
{
  v4 = STACK[0x7690];
  STACK[0x8850] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v4 + 64;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || v0 != v1 - 371948394 + 327 * (v1 ^ 0xB759);
  return (*(STACK[0xF18] + 8 * ((11 * v7) ^ v1)))();
}

uint64_t sub_100529760()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xBBD0] = 0;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBBD0] | v12);
  *(&STACK[0xBBD0] | v12) = STACK[0xBBD7];
  v16 = *(&STACK[0xBBD0] | v13);
  *(&STACK[0xBBD0] | v13) = STACK[0xBBD6];
  v17 = *(&STACK[0xBBD0] | v14);
  *(&STACK[0xBBD0] | v14) = STACK[0xBBD5];
  STACK[0xBBD8] = v0;
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBBD7]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBBD6]) = v16;
  LOBYTE(STACK[0xBBD5]) = v17;
  v22 = STACK[0xBBD0];
  LOBYTE(STACK[0xBBD0]) = STACK[0xBBD4];
  LOBYTE(STACK[0xBBD4]) = v22;
  v23 = *(&STACK[0xBBD0] | v18);
  *(&STACK[0xBBD0] | v18) = STACK[0xBBD3];
  LOBYTE(STACK[0xBBD3]) = v23;
  v24 = STACK[0xBBD1];
  LOBYTE(STACK[0xBBD2]) = STACK[0xBBD0];
  LOWORD(STACK[0xBBD0]) = v24;
  STACK[0xBBD0] = vmla_s32(v21, STACK[0xBBD0], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBBD8];
  v26 = (553300517 * STACK[0xBBD8]) ^ v11;
  v27 = vdupq_n_s32(v26);
  v28 = xmmword_100BC7620;
  v29 = xmmword_100BC7630;
  v30 = xmmword_100BC7640;
  v31 = xmmword_100BC7650;
  v32.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v33.i64[0] = 0x9393939393939393;
  v33.i64[1] = 0x9393939393939393;
  v34.i64[0] = 0x1000000010;
  v34.i64[1] = 0x1000000010;
  do
  {
    v35 = *(v25 + v2);
    v55.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v55.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v55.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v55, xmmword_100BC7660), v33);
    v2 += 16;
    v31 = vaddq_s32(v31, v34);
    v30 = vaddq_s32(v30, v34);
    v29 = vaddq_s32(v29, v34);
    v28 = vaddq_s32(v28, v34);
  }

  while (v2 != 576);
  v36 = 0;
  v37 = xmmword_100F52AE0;
  v38 = vdupq_n_s32(v26);
  v39 = xmmword_100F52AF0;
  v40 = v25 + 576;
  v41.i64[0] = 0x800000008;
  v41.i64[1] = 0x800000008;
  do
  {
    v32.i64[0] = *(v40 + v36);
    v54.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v54.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v54, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v42 = 72;
  do
  {
    v43 = 16777619 * ((v26 + v42) ^ v26) % v42;
    v44 = *(v25 + 8 * v43) ^ *(v25 + 8 * v42);
    *(v25 + 8 * v42) = v44;
    v45 = *(v25 + 8 * v43) ^ v44;
    *(v25 + 8 * v43) = v45;
    *(v25 + 8 * v42) ^= v45;
    v46 = v42-- + 1;
  }

  while (v46 > 2);
  v47 = *(&STACK[0xBBD8] + v12);
  *(&STACK[0xBBD8] + v12) = STACK[0xBBDF];
  LOBYTE(STACK[0xBBDF]) = v47;
  v48 = *(&STACK[0xBBD8] + v13);
  *(&STACK[0xBBD8] + v13) = STACK[0xBBDE];
  LOBYTE(STACK[0xBBDE]) = v48;
  v49 = *(&STACK[0xBBD8] + v14);
  *(&STACK[0xBBD8] + v14) = STACK[0xBBDD];
  LOBYTE(STACK[0xBBDD]) = v49;
  v50 = STACK[0xBBD8];
  LOBYTE(STACK[0xBBD8]) = STACK[0xBBDC];
  LOBYTE(STACK[0xBBDC]) = v50;
  v51 = *(&STACK[0xBBD8] + v18);
  *(&STACK[0xBBD8] + v18) = STACK[0xBBDB];
  LOBYTE(STACK[0xBBDB]) = v51;
  v52 = STACK[0xBBD9];
  LOBYTE(STACK[0xBBDA]) = STACK[0xBBD8];
  LOWORD(STACK[0xBBD8]) = v52;
  STACK[0xBBD8] = vmla_s32(v21, STACK[0xBBD8], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBBD8] ^ STACK[0xBBD0];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100529CC0()
{
  v0 = STACK[0xF10] + 9502;
  STACK[0x9028] = STACK[0xA670];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100529D9C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 7507;
  v2 = STACK[0xF10] - 28047;
  v3 = STACK[0x680C];
  *(STACK[0x2C78] + (v3 + 8)) = *(STACK[0x6F68] + 40) - ((2 * *(STACK[0x6F68] + 40)) & 0xBF) + 95;
  v4 = *STACK[0x3878];
  LODWORD(STACK[0x7B04]) = v3 + 9;
  return (*(STACK[0xF18] + 8 * ((105 * (((v1 ^ (v4 == (v0 ^ 0xE9D54C2D))) & 1) == 0)) ^ v2)))();
}

uint64_t sub_100529EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, char a7@<W8>)
{
  v24 = (a1 ^ v9 ^ ((v12 + v10) | a7)) & (2 * (a1 & v8)) ^ a1 & v8;
  v25 = ((2 * (a1 ^ v7)) ^ v18) & (a1 ^ v7) ^ (2 * (a1 ^ v7)) & v19;
  v26 = a1 ^ (2 * (((4 * (v25 ^ v20)) & v23 ^ a6 ^ ((4 * (v25 ^ v20)) ^ v22) & (v25 ^ v20)) & (16 * ((v25 ^ v21) & (4 * v24) ^ v24)) ^ (v25 ^ v21) & (4 * v24) ^ v24));
  v27 = (((v26 ^ v14) + v15) ^ ((v26 ^ v16) + v17) ^ ((v26 ^ 0xC2) + 117)) + 38;
  v28 = v11 - 1;
  STACK[0x4C98] = v28;
  *(a2 + v28) = v27 * (a1 + v13) + (v27 * a3 + (a1 + v13) * a4) * a5 - 16;
  return (*(STACK[0xF18] + 8 * (v12 ^ 0x8D13 ^ (8848 * ((((STACK[0x4C98] - v12) | (v12 - STACK[0x4C98])) & 0x8000000000000000) == 0)))))(a1 + 1);
}

uint64_t sub_10052A008()
{
  v1 = STACK[0x63F8] + 24;
  STACK[0x4938] = v1;
  v2 = 634647737 * (((((&STACK[0x10000] + 3800) | 0xA459659A) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x5BA69A65)) ^ 0x3630B599);
  LODWORD(STACK[0x10ED8]) = v2 - 1431125373;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 12326;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEAD0)))(&STACK[0x10ED8]);
  v5 = STACK[0x4908];
  v6 = STACK[0x1BB4];
  STACK[0x5400] = v1;
  STACK[0x41A0] = v5;
  LODWORD(STACK[0x20CC]) = v6;
  LODWORD(STACK[0x38AC]) = -1223069361;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10052A0D8()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 20118;
  v3 = ((STACK[0xF10] - 27257) ^ 0x20CD) & v0;
  LODWORD(STACK[0x400C]) = v3 | 0xE9D5C700;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16221)))(v3 ^ 0x11u);
  STACK[0x8ED0] = v5;
  return (*(v4 + 8 * ((421 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_10052A164()
{
  v1 = STACK[0x4088];
  v2 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x5017E5AE) - ((&STACK[0x10000] + 3800) & 0x5017E5A8)) ^ 0xB631FE61);
  LODWORD(STACK[0x10EE0]) = LODWORD(STACK[0x162C]) - v2 - ((2 * LODWORD(STACK[0x162C])) & 0x36EA6EEA) - 1686816907;
  LODWORD(STACK[0x10EDC]) = v2 + 16792 + v0;
  LODWORD(STACK[0x10ED8]) = 462747179 * v1 - v2 + 1541267130;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA2CD)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE4]) == -371865839) * ((v0 + 9018) ^ 0x2227)) ^ v0)))(v4);
}

uint64_t sub_10052A45C@<X0>(int a1@<W8>)
{
  *(STACK[0xB5A8] + 48) = v2;
  LODWORD(STACK[0xB5C0]) = 3 * (a1 ^ 0x5102) + LODWORD(STACK[0xB5C0]) - 18043;
  LODWORD(STACK[0xB5BC]) = v1;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x2C71)))();
}

uint64_t sub_10052A4B0@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x1D28];
  STACK[0x1310] = a1;
  STACK[0x2AF8] = v4 + v1;
  return (*(STACK[0xF18] + 8 * ((29756 * (v3 == (v2 & 0xB6A0FFF7) + 1645 + (v2 & 0xB6A0FFF7 ^ 0x3AEE) - 371948620)) ^ v2 & 0xB6A0FFF7)))();
}

uint64_t sub_10052A50C()
{
  v0 = STACK[0xF10] - 25926;
  v1 = STACK[0xF10] - 31157;
  *(STACK[0x6E68] + 608) = 841900868;
  return (*(STACK[0xF18] + 8 * ((((LODWORD(STACK[0x7E3C]) - 1) < 2) * ((v0 + 36981) ^ v1)) ^ v0)))();
}

uint64_t sub_10052A570()
{
  v1 = STACK[0xF18];
  STACK[0x4C70] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 - 23555 + ((v0 + 14801) | 0x2400)) ^ (18385 * ((v0 ^ 0x51A0A464) > 0x15D2C7B)))))();
}

uint64_t sub_10052A5F4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v34.i64[0] = v16 + v18 - 7;
  v34.i64[1] = v16 + v18 - 8;
  v35.i64[0] = v16 + v18 - 3;
  v35.i64[1] = v16 + v18 - 4;
  v36.i64[0] = v16 + v18 - 1;
  v36.i64[1] = v16 + v18 - 2;
  v37.i64[0] = v16 + v18 + v20;
  v37.i64[1] = v16 + v18 - 6;
  v38 = vandq_s8(v37, a1);
  v39 = vandq_s8(v36, a1);
  v40 = vandq_s8(v35, a1);
  v41 = vandq_s8(v34, a1);
  v42 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v46 = vaddq_s64(v43, a3);
  v47 = vaddq_s64(v42, a3);
  v48 = veorq_s8(v47, a4);
  v49 = veorq_s8(v46, a4);
  v50 = veorq_s8(v46, a5);
  v51 = veorq_s8(v47, a5);
  v52 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51);
  v54 = vaddq_s64(v52, v50);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v53, a6), vorrq_s8(v53, a7)), a7), a8);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, a6), vorrq_s8(v54, a7)), a7), a8);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58);
  v61 = veorq_s8(vaddq_s64(v59, v57), v22);
  v62 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v63 = veorq_s8(v60, v22);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v61, v62);
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v23), vorrq_s8(v67, v24)), v24), v25);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, v23), vorrq_s8(v68, v24)), v24), v25);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v71), v26);
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v72), v26);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v77 = veorq_s8(v73, v74);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v27);
  v81 = veorq_s8(v79, v27);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = vaddq_s64(v85, v83);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(v87, vandq_s8(vaddq_s64(v87, v87), v28)), v29), v30);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(v86, vandq_s8(vaddq_s64(v86, v86), v28)), v29), v30);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v92 = veorq_s8(v88, v89);
  v93 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v95 = vaddq_s64(v44, a3);
  v96 = vaddq_s64(v94, v92);
  v97 = vaddq_s64(v93, v91);
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v31), v96), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), v31), v97), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v98 = veorq_s8(v95, a4);
  v99 = veorq_s8(v95, a5);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, a6), vorrq_s8(v100, a7)), a7), a8);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v22);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v23), vorrq_s8(v105, v24)), v24), v25);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v26);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v27);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v28)), v29), v30);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL)));
  v115 = vaddq_s64(v45, a3);
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v31), v114), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v116 = veorq_s8(v115, a4);
  v117 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v118 = veorq_s8(v115, a5);
  v119 = vaddq_s64(v117, v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, a6), vorrq_s8(v119, a7)), a7), a8);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v22);
  v123 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = veorq_s8(v122, v123);
  v126 = vaddq_s64(v124, v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v23), vorrq_s8(v126, v24)), v24), v25);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v26);
  v130 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = veorq_s8(v129, v130);
  v133 = veorq_s8(vaddq_s64(v131, v132), v27);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), v28)), v29), v30);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL)));
  v139.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), v31), v137), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2)));
  *(v19 + v18) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v16 + v18 - 8)), 0x5F5F5F5F5F5F5F5FLL), *&vqtbl4q_s8(v139, *&STACK[0xED0])));
  return (*(STACK[0xF18] + 8 * (((v17 == v18) * v21) ^ a16)))();
}

uint64_t sub_10052AB54()
{
  STACK[0x10EE0] = *STACK[0x16F8];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((((2 * &STACK[0x10ED8]) | 0x8283BD62) - &STACK[0x10ED8] - 1094835889) ^ 0xF7FAECD7) + 60349492;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16334)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x787D4D8) + 126342363) ^ 0x368619FF));
  STACK[0x10EE0] = 0;
  v2 = (*(v1 + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((137 * (*STACK[0x970] < 1)) ^ (v0 - 24307))))(v2);
}

uint64_t sub_10052ACD0()
{
  v1 = STACK[0xF18];
  STACK[0x6820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 35192 + ((v0 - 1896) | 0xB141))))();
}

uint64_t sub_10052AD1C()
{
  v1 = (v0 - 28336) | 0x3E5;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 - 1816275288) & 0x6C42BBF9) - 34315) ^ v1)))();
}

uint64_t sub_10052ADC8()
{
  v1 = STACK[0xF10] - 35039;
  LODWORD(STACK[0x9890]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x270B)))();
}

uint64_t sub_10052AE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48)
{
  LODWORD(STACK[0x348]) = v48;
  LODWORD(STACK[0x24C]) = 789390329;
  return (*(v49 + 8 * (a48 - 22794)))();
}

uint64_t sub_10052AED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x1598];
  LODWORD(STACK[0x648C]) = -744397898;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10052AF24()
{
  v3 = 23958;
  atomic_compare_exchange_strong(v1, &v3, 0xA94EFu);
  return (*(v2 + 8 * (((v3 == 23958) * (((v0 - 39581) | 0x2806) - 10761)) ^ v0)))();
}

uint64_t sub_10052AF6C@<X0>(int a1@<W8>)
{
  v6 = (((v5 ^ 0x22A2C120) - 581091616) ^ ((v5 ^ 0xD9AE6926) + 642881242) ^ ((((v1 ^ 0xE9D5BA29) + 688105478) ^ v5) - 316239639)) - 1677609281;
  v7 = a1 - 1305743410 > v6;
  v8 = ((a1 - 1305743410) < 0xB22BEFAE) ^ (v6 < 0xB22BEFAE);
  v9 = v7;
  if (v8)
  {
    v10 = (a1 - 1305743410) < 0xB22BEFAE;
  }

  else
  {
    v10 = v9;
  }

  if (!v10)
  {
    v2 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((51731 * (v2 == v4)) ^ v1)))();
}

uint64_t sub_10052B044()
{
  v0 = 3331 * (STACK[0xF10] ^ 0x8B31);
  v1 = STACK[0xF10] - 32554;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x897C) + v1)))();
}

uint64_t sub_10052B0CC()
{
  v1 = v0 + 479959888 + ((v0 + 851825681 + (LODWORD(STACK[0x8370]) ^ 0xDAD19DE6) - 228047142) ^ ((LODWORD(STACK[0x8370]) ^ 0x12BA0C88) - 314182792) ^ ((LODWORD(STACK[0x8370]) ^ 0x21BE567F) - 566122111));
  v2 = ((v1 ^ 0x428273C5) - 1883531397) ^ v1 ^ ((v1 ^ 0xF04133B3) + 1031329549) ^ ((v1 ^ 0xFFFBA4E9) + 851591255) ^ ((v1 ^ 0x7FFEFFDF) - 1295574175);
  LODWORD(STACK[0x8370]) = v2 ^ 0xDB13DC51;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 33641)))(v2 ^ 0x32C61B40);
  STACK[0xF88] = v4;
  return (*(v3 + 8 * ((26 * (v4 == 0)) ^ v0)))();
}

uint64_t sub_10052B284@<X0>(int a1@<W8>)
{
  v2 = (((a1 ^ 0xCA12DCAE) + 904697879 + 11881 * (v1 ^ 0x648A)) ^ ((a1 ^ 0xC74F9E52) + 951083438) ^ (((v1 - 460840604) ^ a1) + 460814867)) - 371865843 < 0xFFFFFFFC;
  LOBYTE(STACK[0xB307]) = v2;
  return (*(STACK[0xF18] + 8 * ((41266 * v2) ^ v1)))();
}

uint64_t sub_10052B36C()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 3744) | 0x6340) ^ 0x6512) + v0)))();
}

uint64_t sub_10052B3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v5 = *(STACK[0x630] - 341378134);
  LODWORD(STACK[0x24E8]) = v5;
  v6 = v5 == ((a5 - 7589) | 0x1800) - 8052;
  return (*(STACK[0xF18] + 8 * (((8 * v6) | (32 * v6)) ^ a5)))(a1, a2, a3, a4, STACK[0x650], -108594335);
}

uint64_t sub_10052B470(uint64_t a1, uint64_t a2)
{
  STACK[0x3AF8] = 0;
  LODWORD(STACK[0x5504]) = -371865839;
  STACK[0x7ED8] = 0;
  LODWORD(STACK[0x8B7C]) = -371865839;
  STACK[0x11A0] = 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * (((v3 == ((((v2 ^ 0xC4CB) - 20167) | 0x8A12) ^ 0xE9D54C2B)) * ((((v2 ^ 0xC4CB) - 15276) | 0x112) ^ 0x20F8)) ^ v2 ^ 0xC4CB)))(a1, a2, 3923101457);
}

uint64_t sub_10052B508@<X0>(int a1@<W8>)
{
  v6 = (v4 ^ 0x24DF) + v5 - 928;
  LODWORD(STACK[0xAAC4]) = v6;
  v7 = (((a1 ^ 0x36EA8717) - 921339671) ^ ((a1 ^ 0x9BDED906) + 1679894266) ^ (((v4 + 25552) ^ 0xBB1EEC3B) + (a1 ^ 0x44E19900))) - 1028066127;
  v8 = v6 > 0x271CD25F;
  v9 = v8 ^ (v7 < 0xD8E32DA0);
  v10 = v5 - 656200268 > v7;
  if (v9)
  {
    v10 = v8;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v3;
  }

  LODWORD(STACK[0xAAC8]) = v11;
  LOBYTE(STACK[0xAACF]) = v11 == v1;
  return (*(STACK[0xF18] + 8 * ((151 * (v11 != v1)) ^ v4)))();
}

uint64_t sub_10052B604@<X0>(unsigned __int16 a1@<W8>)
{
  v2 = ((v1 + 31680) ^ 0x108A) + 61127430 + (((LODWORD(STACK[0x81EC]) ^ 0x6A834C01) - 1786989569) ^ ((LODWORD(STACK[0x81EC]) ^ 0xC89E1B33) + 929162445) ^ ((LODWORD(STACK[0x81EC]) ^ 0x4BC89023) - 1271435299));
  v3 = (a1 | ((a1 < 0x448Bu) << 16)) + 433011365;
  v4 = (v3 < 0x19CF7F30) ^ (v2 < 0x19CF7F30);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0x19CF7F30;
  }

  return (*(STACK[0xF18] + 8 * (v1 | (4 * v5))))();
}

uint64_t sub_10052B750()
{
  LODWORD(STACK[0xB56C]) = v1;
  LODWORD(STACK[0xB568]) = 371891406;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10052B77C()
{
  v0 = STACK[0xF10] - 33886;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1036)))();
}

uint64_t sub_10052BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a5 & v5;
  LODWORD(STACK[0x369C]) = (((LODWORD(STACK[0x3E04]) ^ 0xA9210234) + 1457454540) ^ ((LODWORD(STACK[0x3E04]) ^ 0x4F899B19) - 1334418201) ^ ((((a5 & v5) - 1874264999) ^ LODWORD(STACK[0x3E04]) ^ 0x9F341374) - 259874364)) - 371865847;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * ((a5 & v5) + 31145)))();
  STACK[0x7CF0] = v8;
  return (*(v7 + 8 * ((496 * (v8 != 0)) ^ v6)))();
}

uint64_t sub_10052BB50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0xBD0]) = v8 - 334;
  v9 = v8 - 28284;
  v10 = STACK[0xF18];
  LODWORD(STACK[0xBC0]) = v9;
  v11 = *(v10 + 8 * v9);
  STACK[0xB80] = a1 & 0xFFFFFFF0;
  STACK[0xB40] = a8;
  return v11();
}

uint64_t sub_10052BC98@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x96D8]) = v2;
  STACK[0x6A60] = v1;
  v4 = (a1 - 42803853);
  LODWORD(STACK[0x3A6C]) = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 + 31891)))(v4);
  STACK[0x3230] = v6;
  return (*(v5 + 8 * (((((v3 + 4) ^ (v6 == 0)) & 1) * (v3 - 19952)) ^ v3)))();
}

uint64_t sub_10052BD48@<X0>(unsigned int a1@<W8>)
{
  v1 = STACK[0x5EE8] + (STACK[0x6E38] << 6) + 0x4CD1A95AE96E6CC0;
  *(STACK[0x5EE8] + (STACK[0x6E38] << 6) + 0x4CD1A95AE96E6CD0) = 0;
  *STACK[0x4928] = 0x981390C2FED9246;
  *STACK[0x2470] = 0x981390C2FED9246;
  v2 = *(STACK[0x5498] + 504);
  if (v2 == ((a1 + 273011324) ^ 0x245F7FC6))
  {
    v3 = 445313503;
  }

  else
  {
    v3 = -445313504;
  }

  *(STACK[0x5498] + 504) = v2 + 445313503 + (((v3 ^ 0x28D729BC) - 685189564) ^ ((v3 ^ 0x1725B7D) - 24271741) ^ ((v3 ^ 0x332F831E) - 858751774));
  *(v1 + 56) = 0x15DB1509EF155482;
  return (*(STACK[0xF18] + 8 * ((30842 * (a1 > 0x26EE5501)) ^ (a1 + 273005066))))();
}

uint64_t sub_10052C06C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *&v11 = a1 + v3 - 15;
  *(&v11 + 1) = a1 + v3 - 16;
  *&STACK[0xEB0] = v11;
  *&v11 = a1 + v3 - 13;
  *(&v11 + 1) = a1 + v3 - 14;
  *&STACK[0xEA0] = v11;
  v12.i64[0] = a1 + v3 - 7;
  v12.i64[1] = a1 + v3 - 8;
  v13.i64[0] = a1 + v3 - 5;
  v13.i64[1] = a1 + v3 - 6;
  v14.i64[0] = a1 + v3 - 3;
  v14.i64[1] = a1 + v3 - 4;
  v15.i64[0] = a1 + v3 + (v4 ^ a2);
  v15.i64[1] = a1 + v3 - 2;
  v16 = vandq_s8(v15, v9);
  v17 = vandq_s8(v14, v9);
  v18 = vandq_s8(v13, v9);
  v19 = vandq_s8(v12, v9);
  v20 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v23 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v24 = *&STACK[0xE40];
  v25 = *&STACK[0xE30];
  v26 = vorrq_s8(vaddq_s64(v20, *&STACK[0xE40]), *&STACK[0xE30]);
  v27 = vorrq_s8(vaddq_s64(v21, *&STACK[0xE40]), *&STACK[0xE30]);
  v28 = vorrq_s8(vaddq_s64(v22, *&STACK[0xE40]), *&STACK[0xE30]);
  v29 = *&STACK[0xE20];
  v30 = vsubq_s64(*&STACK[0xE20], v22);
  v31 = vsubq_s64(*&STACK[0xE20], v21);
  v32 = *&STACK[0xE10];
  *&STACK[0xE90] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0xE20], v23), *&STACK[0xE10]), vorrq_s8(vaddq_s64(v23, *&STACK[0xE40]), *&STACK[0xE30]));
  v33 = vorrq_s8(vsubq_s64(v29, v20), v32);
  v34 = vaddq_s64(vorrq_s8(v30, v32), v28);
  v35 = *&STACK[0xE00];
  v36 = vsubq_s64(*&STACK[0xE00], vaddq_s64(v33, v26));
  v37 = vsubq_s64(*&STACK[0xE00], vaddq_s64(vorrq_s8(v31, v32), v27));
  v38 = *&STACK[0xDF0];
  v39 = veorq_s8(v37, *&STACK[0xDF0]);
  v40 = veorq_s8(v36, *&STACK[0xDF0]);
  v41 = *&STACK[0xDE0];
  v42 = veorq_s8(v36, *&STACK[0xDE0]);
  v43 = veorq_s8(v37, *&STACK[0xDE0]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v43);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v42);
  v46 = *&STACK[0xDD0];
  v47 = *&STACK[0xDC0];
  v48 = *&STACK[0xDB0];
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v45, v45), *&STACK[0xDD0]), v45), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v50 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v44, v44), *&STACK[0xDD0]), v44), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v53 = veorq_s8(v52, v51);
  v54 = veorq_s8(v49, v50);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v54);
  v57 = *&STACK[0xDA0];
  v58 = veorq_s8(vaddq_s64(v55, v53), *&STACK[0xDA0]);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v56, *&STACK[0xDA0]);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v58, v59);
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = *&STACK[0xD90];
  v66 = veorq_s8(vaddq_s64(v63, v61), *&STACK[0xD90]);
  v67 = veorq_s8(v64, *&STACK[0xD90]);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v72 = *&STACK[0xD80];
  v73 = *&STACK[0xD70];
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0xD80]), vorrq_s8(v70, v10)), v10), *&STACK[0xD70]);
  v75 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0xD80]), vorrq_s8(v71, v10)), v10), *&STACK[0xD70]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v78 = veorq_s8(v74, v75);
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = *&STACK[0xD60];
  v82 = veorq_s8(vaddq_s64(v79, v77), *&STACK[0xD60]);
  v83 = veorq_s8(v80, *&STACK[0xD60]);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = *&STACK[0xD50];
  v90 = veorq_s8(vaddq_s64(v87, v85), *&STACK[0xD50]);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v92 = veorq_s8(v88, *&STACK[0xD50]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v94 = vdupq_n_s64(v8);
  v95 = vsubq_s64(*&STACK[0xE00], v34);
  v96 = *&STACK[0xE60];
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), veorq_s8(v90, v91)), *&STACK[0xE60]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v94)));
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), *&STACK[0xE60]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v94)));
  v97 = veorq_s8(v95, *&STACK[0xDF0]);
  v98 = veorq_s8(v95, *&STACK[0xDE0]);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), *&STACK[0xDD0]), v99), *&STACK[0xDC0]), *&STACK[0xDB0]);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), *&STACK[0xDA0]);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), *&STACK[0xD90]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, *&STACK[0xD80]), vorrq_s8(v106, v10)), v10), *&STACK[0xD70]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), *&STACK[0xD60]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0xD50]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v110.i64[0] = a1 + v3 - 9;
  v113.i64[0] = a1 + v3 - 11;
  v113.i64[1] = a1 + v3 - 12;
  *&STACK[0xE80] = v113;
  v110.i64[1] = a1 + v3 - 10;
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v115 = vandq_s8(v110, *&STACK[0xEC0]);
  v116 = vsubq_s64(v35, *&STACK[0xE90]);
  v190.val[1] = vshlq_u64(veorq_s8(v114, v96), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v94)));
  v117 = veorq_s8(v116, v38);
  v118 = veorq_s8(v116, v41);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v46), v119), v47), v48);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v57);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v65);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v72), vorrq_s8(v126, v10)), v10), v73);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v81);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v89);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v134 = vandq_s8(v113, *&STACK[0xEC0]);
  v135 = vaddq_s64(v133, v132);
  v136 = vandq_s8(*&STACK[0xEA0], *&STACK[0xEC0]);
  v190.val[0] = vshlq_u64(veorq_s8(v135, v96), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v94)));
  v137 = vandq_s8(*&STACK[0xEB0], *&STACK[0xEC0]);
  v138 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v142 = vaddq_s64(vorrq_s8(vsubq_s64(v29, v141), v32), vorrq_s8(vaddq_s64(v141, v24), v25));
  v143 = vaddq_s64(vorrq_s8(vsubq_s64(v29, v140), v32), vorrq_s8(vaddq_s64(v140, v24), v25));
  v144 = vsubq_s64(v35, vaddq_s64(vorrq_s8(vsubq_s64(v29, v138), v32), vorrq_s8(vaddq_s64(v138, v24), v25)));
  v145 = vsubq_s64(v35, vaddq_s64(vorrq_s8(vsubq_s64(v29, v139), v32), vorrq_s8(vaddq_s64(v139, v24), v25)));
  v139.i64[0] = vqtbl4q_s8(v190, *&STACK[0xD40]).u64[0];
  v190.val[0] = veorq_s8(v145, v38);
  v190.val[1] = veorq_s8(v144, v38);
  v190.val[2] = veorq_s8(v144, v41);
  v190.val[3] = veorq_s8(v145, v41);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[3]);
  v190.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), v190.val[2]);
  v146 = v46;
  v190.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[1], v190.val[1]), v46), v190.val[1]), v47), v48);
  v147 = vsraq_n_u64(vshlq_n_s64(v190.val[2], 3uLL), v190.val[2], 0x3DuLL);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[0], v190.val[0]), v46), v190.val[0]), v47), v48);
  v190.val[2] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[3], 3uLL), v190.val[3], 0x3DuLL));
  v190.val[3] = veorq_s8(v190.val[1], v147);
  v148 = vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), v190.val[3]);
  v190.val[1] = veorq_s8(vaddq_s64(v148, v190.val[2]), v57);
  v190.val[0] = veorq_s8(v190.val[0], v57);
  v149 = vsraq_n_u64(vshlq_n_s64(v190.val[2], 3uLL), v190.val[2], 0x3DuLL);
  v190.val[2] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[3], 3uLL), v190.val[3], 0x3DuLL));
  v190.val[3] = veorq_s8(v190.val[1], v149);
  v150 = vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), v190.val[3]);
  v190.val[1] = veorq_s8(vaddq_s64(v150, v190.val[2]), v65);
  v151 = vsraq_n_u64(vshlq_n_s64(v190.val[2], 3uLL), v190.val[2], 0x3DuLL);
  v190.val[0] = veorq_s8(v190.val[0], v65);
  v190.val[2] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[3], 3uLL), v190.val[3], 0x3DuLL));
  v190.val[3] = veorq_s8(v190.val[1], v151);
  v152 = vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), v190.val[3]);
  v190.val[1] = vaddq_s64(v152, v190.val[2]);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[0], v72), vorrq_s8(v190.val[0], v10)), v10), v73);
  v190.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190.val[1], v72), vorrq_s8(v190.val[1], v10)), v10), v73);
  v190.val[2] = veorq_s8(v190.val[1], vsraq_n_u64(vshlq_n_s64(v190.val[2], 3uLL), v190.val[2], 0x3DuLL));
  v190.val[3] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[3], 3uLL), v190.val[3], 0x3DuLL));
  v190.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), v190.val[2]), v81);
  v153 = vsraq_n_u64(vshlq_n_s64(v190.val[2], 3uLL), v190.val[2], 0x3DuLL);
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[3]), v81);
  v190.val[2] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[3], 3uLL), v190.val[3], 0x3DuLL));
  v190.val[3] = veorq_s8(v190.val[1], v153);
  v154 = vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL);
  v190.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), v190.val[3]);
  v190.val[1] = veorq_s8(vaddq_s64(v154, v190.val[2]), v89);
  v155 = vsraq_n_u64(vshlq_n_s64(v190.val[2], 3uLL), v190.val[2], 0x3DuLL);
  v190.val[0] = veorq_s8(v190.val[0], v89);
  v190.val[2] = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v190.val[3], 3uLL), v190.val[3], 0x3DuLL));
  v156 = vsubq_s64(v35, v143);
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[1], 0x38uLL), v190.val[1], 8uLL), veorq_s8(v190.val[1], v155)), v96), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xEB0], 3uLL), v94)));
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v190.val[2]), v96), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xEA0], 3uLL), v94)));
  v157 = veorq_s8(v156, v38);
  v158 = veorq_s8(v156, v41);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), v146), v159), v47), v48);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v57);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v65);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v72), vorrq_s8(v166, v10)), v10), v73);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v81);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v89);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL)));
  v173 = vsubq_s64(v35, v142);
  v190.val[1] = vshlq_u64(veorq_s8(v172, v96), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE80], 3uLL), v94)));
  v174 = veorq_s8(v173, v38);
  v175 = veorq_s8(v173, v41);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v146), v176), v47), v48);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v57);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v65);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183, v72), vorrq_s8(v183, v10)), v10), v73);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v81);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v89);
  v190.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v96), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), v94)));
  v139.i64[1] = vqtbl4q_s8(v190, *&STACK[0xD40]).u64[0];
  v190.val[1] = vrev64q_s8(v139);
  *(v7 + v3 + (v4 ^ a2)) = veorq_s8(vextq_s8(v190.val[1], v190.val[1], 8uLL), *(a1 + v3 + (v4 ^ a2) - 15));
  return (*(STACK[0xF18] + 8 * (((v6 == 0) * v2) ^ v5)))();
}

uint64_t sub_10052CAC0()
{
  v0 = (STACK[0xF10] - 33577) | 0x301;
  v1 = (STACK[0xF10] - 35640) | 0xB10;
  v2 = STACK[0xF10] - 22487;
  v3 = STACK[0x43B0];
  STACK[0x7690] -= 32;
  return (*(STACK[0xF18] + 8 * (((v3 == (v0 ^ 0xE9D5CC02)) * (v1 + 40479)) ^ v2)))();
}

uint64_t sub_10052CB34()
{
  v2 = (v1 + 17495) | 0x4101;
  v3 = *(v0 + 16);
  LODWORD(STACK[0x10ED8]) = (v2 - 1762675066) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x600F9400) - (&STACK[0x10000] + 3800) + 535849980) ^ 0x2EF1A6D8));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 2480)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((62 * (*(v0 + 24) != 0)) ^ v2)))(v5);
}

uint64_t sub_10052CBF4()
{
  STACK[0x10ED8] = *STACK[0x8360];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF) + 296752544;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x47A0)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661851) ^ (906386353 * (((&STACK[0x10ED8] | 0x5897065) - (&STACK[0x10ED8] & 0x5897060)) ^ 0x3488BD41));
  STACK[0x10EE0] = 0;
  v2 = (*(v1 + 8 * (v0 + 15695)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((13490 * (*STACK[0x970] > ((19 * (v0 ^ 0x8C31)) ^ 0x19C1))) ^ v0)))(v2);
}

uint64_t sub_10052CD00()
{
  v3 = STACK[0xEC0];
  *(v0 + (v2 - 21)) ^= (33 * (LODWORD(STACK[0xEC0]) ^ 0x8D)) ^ *(v1 + (v2 - 21) + 46) ^ (v2 - ((2 * v2 + 24) & 0xF4) + 6) ^ 0x87;
  v4 = (v2 + 1) | (((v2 + 1) < 0x15u) << 8);
  v5 = (*(v1 + 66) + 16011);
  v6 = v5 < 0x57D9;
  v7 = v5 > v4 + 22468;
  if ((v4 + 16414) < 0x4033 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((29650 * v7) ^ v3)))();
}

uint64_t sub_10052CDD0()
{
  v1 = STACK[0xF10] ^ 0x4E9C;
  v2 = LODWORD(STACK[0x3908]) - 758486857;
  v3 = (((v0 ^ 0x1E24E9F5) - 505735669) ^ ((v0 ^ 0xF147D7DA) + 246949926) ^ ((v0 ^ 0x6B6F93E) + ((v1 + 1344549462) & 0xAFDB7CFF) - 112684603)) + ((v1 - 46686) ^ 0xBCA02089);
  v4 = (v2 < 0xD2CA68AF) ^ (v3 < 0xD2CA68AF);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0xD2CA68AF;
  }

  return (*(STACK[0xF18] + 8 * ((114 * !v5) ^ v1)))();
}

uint64_t sub_10052CEBC()
{
  LODWORD(STACK[0xAF2C]) = 0;
  LODWORD(STACK[0xAF28]) = 371891330;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10052CEE8()
{
  LODWORD(STACK[0x52AC]) = v1;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762641289) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xA95258B6) - ((&STACK[0x10000] + 3800) & 0xA95258B0)) ^ 0x98539592));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 36257)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((7 * (*STACK[0x970] <= ((v0 + 903397927) & 0xCA277CFB ^ 0x7C3B))) ^ v0)))(v3);
}

uint64_t sub_10052CFBC()
{
  v2 = (((v1 ^ 0x1A274BCE47E90E47) - 0x1A274BCE47E90E47) ^ ((v1 ^ 0xD6E3FD4023450F02) + 0x291C02BFDCBAF0FELL) ^ ((v1 ^ 0xCCC4B68E8D79C654) + 0x333B49717285AE71 + v0 + 29678)) + 0x3AE1413AF7325DD3;
  STACK[0x74D0] = v2;
  STACK[0x5C50] = v2;
  LODWORD(STACK[0x1374]) = -236916640;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10052D084()
{
  v1 = v0 | 0x928;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((v0 | 0x928) ^ 0x4192)))();
  return (*(v2 + 8 * (v1 + 3906)))(v3);
}

uint64_t sub_10052D0B4@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0xCD118C7D;
  v5 = v1 - 545885043;
  v6 = STACK[0x4268];
  v7 = 634647737 * ((2 * (&STACK[0x10ED8] & 0xE0880D8) - &STACK[0x10ED8] - 235438304) ^ 0x9C6150DC);
  STACK[0x10EF0] = v2 + 69;
  STACK[0x10EE0] = v6;
  LOWORD(STACK[0x10EF8]) = -2887 * ((2 * (&STACK[0x10ED8] & 0x80D8) - &STACK[0x10ED8] + 32544) ^ 0x50DC) + 11302;
  LODWORD(STACK[0x10ED8]) = (a1 ^ 0xCD118C7D) - v7 + 21077;
  LODWORD(STACK[0x10EE8]) = v7 ^ 0x28D20269;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (a1 ^ 0xCD11411D)))(&STACK[0x10ED8]);
  v9 = 634647737 * ((((2 * &STACK[0x10ED8]) | 0x5551B86C) - &STACK[0x10ED8] - 715709494) ^ 0x473EF3CA);
  STACK[0x10EE8] = v6;
  STACK[0x10ED8] = STACK[0xEC0];
  LODWORD(STACK[0x10EE0]) = v4 - v9 + 23203;
  LODWORD(STACK[0x10EE4]) = (v3 + 77766647) ^ v9;
  (*(v8 + 8 * (v4 + 50042)))(&STACK[0x10ED8]);
  v10 = STACK[0xED0];
  v11 = STACK[0xED0] + v5;
  LODWORD(STACK[0x10EE8]) = v4 - 353670337 * ((~&STACK[0x10ED8] & 0x970CD03D | &STACK[0x10ED8] & 0x68F32FC0) ^ 0x232D2800) - 1920;
  STACK[0x10ED8] = v6;
  STACK[0x10EE0] = v11;
  v12 = (*(v8 + 8 * (v4 + 49969)))(&STACK[0x10ED8]);
  *(v10 + v5 + 20) = 1;
  *(v10 + v5 + 21) = 4;
  return (*(v8 + 8 * (v4 + 20790)))(v12);
}

uint64_t sub_10052D2F0()
{
  v2 = LODWORD(STACK[0x48B0]) + 548849323;
  v3 = v2 < ((v0 + 136193188) & 0xF7E15FBA ^ 0x76BE8D76) + v0 + 12072;
  v4 = v0 - 14817;
  v5 = v1 + 1992244559 < v2;
  if (v1 > 0x8940C2B0 != v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((57409 * v6) ^ v4)))();
}

uint64_t sub_10052D3B0()
{
  v1 = STACK[0xF10] + 1081;
  v2 = STACK[0xF10] + 2972;
  v3 = STACK[0x2E48];
  *(v3 + 116) = v0;
  *(v3 + 120) = 0;
  *(v3 + 128) = v0;
  *(v3 + 136) = 0;
  *(v3 + 144) = v0;
  v4 = LODWORD(STACK[0x8374]) ^ (v1 + 0x981390CC637C5E3);
  v5 = STACK[0x4010];
  *v5 = STACK[0x7CD0];
  *(v5 + 8) = v4;
  *(v5 + 16) = 0;
  *(v5 + 24) = v0;
  *(v5 + 32) = *(STACK[0x4048] - 0x7E666516A39B34A6);
  *(v5 + 40) = STACK[0xA7FC];
  STACK[0x3060] = v5;
  STACK[0x6A58] = v3;
  LODWORD(STACK[0x575C]) = 0;
  LODWORD(STACK[0x4E3C]) = -1877417908;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10052D46C()
{
  v0 = (STACK[0xF10] - 27107) | 0x4620;
  v1 = STACK[0xF10] - 34586;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x74B2 ^ v0)))();
}

uint64_t sub_10052D4BC()
{
  v2 = v1 == ((v0 - 16760) ^ 0x5944ED60);
  LOBYTE(STACK[0x895F]) = v2;
  return (*(STACK[0xF18] + 8 * ((v2 * (((v0 - 45722) | 0x1700) - 5822)) ^ (v0 - 16760))))();
}

uint64_t sub_10052D674()
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
  STACK[0xC320] = 0;
  STACK[0xC328] = v0;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC320] | v11);
  *(&STACK[0xC320] | v11) = 0;
  LOBYTE(STACK[0xC327]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC320] | v13);
  *(&STACK[0xC320] | v13) = STACK[0xC326];
  LOBYTE(STACK[0xC326]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC320] | v15);
  *(&STACK[0xC320] | v15) = STACK[0xC325];
  LOBYTE(STACK[0xC325]) = v16;
  v17 = STACK[0xC320];
  LOBYTE(STACK[0xC320]) = STACK[0xC324];
  LOBYTE(STACK[0xC324]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC320] | v18);
  *(&STACK[0xC320] | v18) = STACK[0xC323];
  LOBYTE(STACK[0xC323]) = v19;
  v20 = STACK[0xC321];
  LOBYTE(STACK[0xC322]) = STACK[0xC320];
  LOWORD(STACK[0xC320]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC320] = vmla_s32(v23, STACK[0xC320], vdup_n_s32(0x1000193u));
  STACK[0xC328] ^= STACK[0xC320];
  STACK[0xC328] = vmul_s32(vsub_s32(STACK[0xC328], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC32A];
  LOWORD(STACK[0xC329]) = STACK[0xC328];
  LOBYTE(STACK[0xC328]) = v24;
  v25 = (&STACK[0xC328] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC32B];
  LOBYTE(STACK[0xC32B]) = v20;
  LOBYTE(v25) = STACK[0xC328];
  LOBYTE(STACK[0xC328]) = STACK[0xC32C];
  LOBYTE(STACK[0xC32C]) = v25;
  v26 = (&STACK[0xC328] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC32D];
  LOBYTE(STACK[0xC32D]) = v25;
  v27 = (&STACK[0xC328] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC32E];
  LOBYTE(STACK[0xC32E]) = v26;
  v28 = (&STACK[0xC328] | v11);
  v29 = *v28;
  *v28 = STACK[0xC32F];
  LOBYTE(STACK[0xC32F]) = v29;
  v30 = STACK[0xC328];
  v31 = (1269228062 * STACK[0xC328]) ^ v10;
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
  *(v1 + 264) = STACK[0xC328];
  return (*(STACK[0xF18] + 8 * (v2 - 21451)))(v48, v49);
}

uint64_t sub_10052DAFC()
{
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x1DC0CBCA) - ((&STACK[0x10000] + 3800) & 0x1DC0CBC8)) ^ 0xFBE6D005) - 1908433636;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 2089796828)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x54BC]) = v0;
  v4 = STACK[0x43C0];
  v5 = STACK[0x634C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v4;
  LODWORD(STACK[0x655C]) = v5;
  LODWORD(STACK[0x884C]) = 2028602406;
  return (*(v2 + 8 * (((v1 < 0x9AB40DD4) * (v1 + 2089751029)) ^ (v1 + 2089745672))))(v3);
}

uint64_t sub_10052DBF8@<X0>(int a1@<W8>)
{
  v1 = a1 + 14878;
  v2 = a1 - 23366;
  v3 = v2 ^ 0x8B22;
  v4 = v2 | 0x8B22;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762663918) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x2093F03E) - ((&STACK[0x10000] + 3800) & 0x2093F038)) ^ 0x11923D1A));
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x5FC4)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v7 = 1;
  }

  else
  {
    v7 = *STACK[0x940] == 0;
  }

  v8 = v7;
  return (*(v5 + 8 * ((v8 * (v3 + v4 - 71031)) ^ v1)))(v6);
}

uint64_t sub_10052DD14()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 25361;
  v2 = STACK[0xA118];
  v3 = STACK[0xA110];
  v4 = STACK[0xA0F0];
  v5 = 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0xF59F4514) - (&STACK[0x10000] + 3800) - 2060427914) ^ 0x95998853);
  LODWORD(STACK[0x10EDC]) = (STACK[0xF10] + 679158052) ^ v5;
  STACK[0x10EF8] = v2;
  LODWORD(STACK[0x10EF0]) = v5 - 700240269;
  LOWORD(STACK[0x10ED8]) = -28075 * ((((2 * (&STACK[0x10000] + 3800)) | 0x4514) - (&STACK[0x10000] + 3800) + 23926) ^ 0x8853) + 3787;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v3;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16309)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v1))(528, 2672, 21391);
}

uint64_t sub_10052DE1C(uint64_t a1, uint64_t a2)
{
  v4 = LODWORD(STACK[0xEC0]) < LODWORD(STACK[0xEB0]);
  if (v4 == (v3 - 1347407429) < 0xDF58FECE)
  {
    v4 = (v3 - 1347407429) < LODWORD(STACK[0xEC0]);
  }

  return (*(STACK[0xF18] + 8 * ((28 * !v4) ^ v2)))(a1, a2, (v2 - 24077) | 0xFu);
}

uint64_t sub_10052DE8C()
{
  *(v3 + (v2 - 1086687783)) = *(v5 + (v2 - 1086687783)) - ((*(v5 + (v2 - 1086687783)) << (v4 ^ 0x1A)) & 0xBE) + 95;
  if (v0 < 0x3E02BA55 != (v2 - 46321617) < 0x3E02BA55)
  {
    v6 = v0 < 0x3E02BA55;
  }

  else
  {
    v6 = v2 - 46321617 < v0;
  }

  return (*(STACK[0xF18] + 8 * ((v6 * v1) ^ v4)))();
}

uint64_t sub_10052DFB8()
{
  v2 = v0 + 72 * STACK[0xED0] + 68;
  v3 = STACK[0x66D0];
  v4 = STACK[0x3B40];
  v5 = 1603510583 * (((&STACK[0x10ED8] | 0x18E4AA96FEDF0EC6) - (&STACK[0x10ED8] | 0xE71B55690120F139) - 0x18E4AA96FEDF0EC7) ^ 0x2715BD7A69043C6DLL);
  LODWORD(STACK[0x10F08]) = v5 ^ 0x6B8428B9;
  STACK[0x10F00] = 0;
  STACK[0x10EE0] = (((v4 ^ 0xAE152EE893CF420CLL) + 0x51EAD1176C30BDF4) ^ ((v4 ^ 0x3960A8C262034D8ELL) - 0x3960A8C262034D8ELL) ^ ((v1 - 21423) + (v4 ^ 0x9EF4BF26DE219DC4) + 0x610B40D921DE49B4)) - v5 + 0x4EECE95124A7303FLL;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE8]) = v5 + v1 + 6734;
  STACK[0x10EF8] = v3;
  STACK[0x10EF0] = v2;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0xA784)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_10052E138()
{
  LODWORD(STACK[0x2938]) = v1;
  v2 = STACK[0x68D0];
  v3 = STACK[0x3A7C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 1231997729;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_10052E200()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 228);
  if (v3 | *(v0 + 220))
  {
    v4 = 20;
  }

  else
  {
    v4 = 60;
  }

  LODWORD(STACK[0x6D7C]) = v4;
  v5 = v2 ^ 0x6AB0BA71E8371A2DLL;
  v6 = STACK[0xBA80];
  v7 = STACK[0xBA88];
  if (v3)
  {
    v5 = 0x9CCE7C8238257795;
  }

  v8 = 1012831759 * ((2 * (&STACK[0x10ED8] & 0x7E85AC8842731030) - &STACK[0x10ED8] + 0x17A5377BD8CEFCBLL) ^ 0x25E6AF3AAD1FF941);
  STACK[0x10EF8] = v5 - v8;
  STACK[0x10EF0] = v7;
  STACK[0x10EE8] = &STACK[0x6D7C];
  LODWORD(STACK[0x10EE4]) = v8 + v1 + 21167;
  STACK[0x10ED8] = v6;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v1 ^ 0xCC9B)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * (((71 * (v1 ^ 0x6D)) ^ (((*(v0 + 216) - v1) | (v1 - *(v0 + 216))) >= 0)) & 1 | v1 ^ 0x6C5C)))(v10);
}

uint64_t sub_10052E3C8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD7D6EA84)))();
  STACK[0x4690] = 0;
  return (*(v1 + 8 * (v0 ^ 0xD7D62137 ^ ((((v0 - 1554276590) & 0x84CECBFB) - 27554) * (v0 != -1828116238)))))(v2);
}

uint64_t sub_10052E4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + ((v2 - 1472519225) & 0x57C4CFFD) - 2672;
  v4 = a1 + 1889023136 + ((v2 - 1472519225) ^ 0xA83B3F18) < v1;
  if (v1 < 0x70983A0A != v3 > 0xFFFFFFFF8F67C5F5)
  {
    v4 = v1 < 0x70983A0A;
  }

  return (*(STACK[0xF18] + 8 * (v4 ^ v2)))();
}

uint64_t sub_10052E5E8()
{
  LODWORD(STACK[0x99B4]) = v1;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v0 - 33906));
  return (*(v2 + 8 * (((v0 - 29772) ^ 0x6CD) + v0 - 33906)))();
}

uint64_t sub_10052E6C4@<X0>(uint64_t a1@<X8>)
{
  *v3 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return (*(STACK[0xF18] + 8 * ((v2 + 1838725143) ^ 0x6D992DBC ^ (61702 * ((v2 + 1838725143) > 0xEFAB8581)))))();
}

uint64_t sub_10052E730@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5EE8] = a1 + 376;
  LODWORD(STACK[0xFC4]) = 2069206151;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10052E77C()
{
  v2 = *(v1 + 8);
  STACK[0x5A08] = v2;
  return (*(STACK[0xF18] + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 - 48902) | 0x430B) - 17135)) ^ v0)))();
}

uint64_t sub_10052E7D4()
{
  v1 = STACK[0xF18];
  STACK[0x9318] = *(STACK[0xF18] + 8 * (v0 - 31371));
  return (*(v1 + 8 * ((v0 ^ 0xB8CF) + v0 - 31371)))();
}

uint64_t sub_10052EB4C@<X0>(int a1@<W7>, unsigned int a2@<W8>)
{
  v8 = LODWORD(STACK[0x330]) ^ (LODWORD(STACK[0x304]) << 6);
  v9 = LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x2F8]);
  v10 = LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x300]);
  LODWORD(STACK[0xE70]) = LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x32C]);
  v11 = v9 ^ (16 * LOBYTE(STACK[0x328]));
  LODWORD(STACK[0xE80]) = v8 ^ LODWORD(STACK[0x308]);
  LODWORD(STACK[0xCF0]) = v6;
  v12 = 327 * (v6 ^ 0x5EBBu);
  STACK[0xED0] = v12;
  LODWORD(STACK[0xE90]) = (v12 - 50) & LODWORD(STACK[0x30C]);
  v13 = (LODWORD(STACK[0x33C]) >> 4) & 7 ^ LODWORD(STACK[0x33C]);
  v14 = a2 ^ LODWORD(STACK[0x338]) ^ (LODWORD(STACK[0x338]) >> 4) ^ HIBYTE(v4);
  v15 = STACK[0x370];
  v16 = v14 ^ 0xC8 ^ *(STACK[0x370] + (1151 * (((v14 ^ 0x4AE803A) + 447285163) ^ ((v14 ^ 0xEF05D53C) - 251506003) ^ ((v14 ^ 0xEBAB552D) - 173223234)) - 61384838) % 0xC80);
  v17 = 1151 * (LODWORD(STACK[0x344]) ^ ((HIBYTE(a2) ^ 0x7B) - ((2 * (HIBYTE(a2) ^ 0x7B)) & 0xFFFFFF07) - 993353597) ^ 0xC4CAA0E2 ^ v4) + 1492847;
  v18 = (LODWORD(STACK[0x340]) ^ STACK[0x310] & 9) ^ 0x59 ^ (BYTE1(v4) ^ BYTE2(a2));
  LODWORD(STACK[0xD20]) = a1;
  v19 = *(v15 + (1151 * (((v18 ^ 0x8E1C002C) + 1910767572) ^ ((v18 ^ 0x9B8EC3A8) + 1685142616) ^ ((v18 ^ 0x1592C379) - 361939833)) + 890874) % 0xC80);
  v20 = *(v15 + v17 % 0xC80);
  v21 = ((((v19 >> 1) & 0x40 ^ v19) << 8) ^ 0x7AF86864) & (v20 ^ 0xFAFDFF0C) | v20 & 0x9B;
  v22 = v21 ^ 0x7A1B70D6 | (v21 ^ 0x85E48F29) & (v16 << 24);
  v23 = LODWORD(STACK[0x314]) ^ LODWORD(STACK[0x348]) ^ (16 * LOBYTE(STACK[0x348])) ^ BYTE2(v4) ^ BYTE1(a2);
  LODWORD(STACK[0xEC0]) = v22 & 0x63E5EA15 ^ 0x9DFB55FA ^ (v22 ^ 0xC1C15C2) & (((*(v15 + (1151 * (((v23 ^ 0x12B8CE5C) - 314101446) ^ ((v23 ^ 0xA9E3624F) + 1444715819) ^ ((v23 ^ 0xBB5BAC2B) + 1151619919)) + 485722) % 0xC80) ^ v23) << 16) ^ 0x9CD715EA);
  v24 = ((HIBYTE(v3) ^ 0xDF) - ((2 * (HIBYTE(v3) ^ 0xDF)) & 0x11111111) - 1425564024) ^ v13;
  v25 = *(v15 + (1151 * (v7 ^ 0x3A19D184 ^ ((v24 ^ 0xAB079E42) - 2 * ((v24 ^ 0xAB079E42) & 0x3A19D138 ^ v24 & 0x10) + 974770472)) + 1492847) % 0xC80);
  v26 = (((*(v15 + (1151 * (((v11 ^ 0xAF ^ BYTE2(v7) ^ BYTE1(v3) ^ 0xF2166C6F) + 1122848589) ^ ((v11 ^ 0xAF ^ BYTE2(v7) ^ BYTE1(v3) ^ 0xC66A83D9) + 1989255419) ^ ((v11 ^ 0xAF ^ BYTE2(v7) ^ BYTE1(v3) ^ 0x347CEF93) - 2071475023)) + 1189221507) % 0xC80) ^ v11 ^ 0xAF ^ BYTE2(v7) ^ BYTE1(v3)) << 16) ^ 0x4AC90F8C) & (v25 ^ 0x5FFF6F08) ^ (v25 & 0x73 | 0x15436000);
  v27 = (LODWORD(STACK[0x350]) ^ STACK[0x318] & 9) ^ 0xEA ^ ((((BYTE2(v3) ^ 0x3F) - ((2 * (BYTE2(v3) ^ 0x3F)) & 0x78) + 60) ^ BYTE1(v7) ^ 0x65) - ((2 * (((BYTE2(v3) ^ 0x3F) - ((2 * (BYTE2(v3) ^ 0x3F)) & 0x78) + 60) ^ BYTE1(v7) ^ 0x65)) & 0xE7) - 13);
  v28 = *(v15 + (1151 * (((v27 ^ 0x6D250CE6) - 1831144678) ^ ((v27 ^ 0x7B736B5) - 129447605) ^ ((v27 ^ 0x6A923A39u) - 1787968057)) + 721677) % 0xC80);
  v29 = (((((v28 >> 1) | 0x3F) ^ v28) << 8) ^ 0x2DB6E305) & (v26 ^ 0x72F99098) ^ v26 & 0x524901FA;
  v30 = LODWORD(STACK[0x34C]) ^ (LODWORD(STACK[0x34C]) >> 4) ^ HIBYTE(v7) ^ v3;
  v31 = (v29 ^ 0x80009022) & (((*(v15 + (1151 * (((v30 ^ 0xE886B026) + 229316080) ^ ((v30 ^ 0x2A3A2E6B) - 820540509) ^ ((v30 ^ 0xC2BC9EED) + 663829285)) - 1745361368) % 0xC80) ^ v30 ^ 0xFFFFFFE1) << 24) ^ 0x3677B52A) ^ v29 & 0x4884AD5;
  LODWORD(STACK[0xEA0]) = v31;
  v32 = v31 ^ 0x8C716131;
  v33 = STACK[0x368];
  v34 = *(STACK[0x368] + 4 * (1117 * (v31 ^ 0xBE) + 4030136 - 4160 * (((8259553 * (1117 * (v31 ^ 0xBEu) + 4030136)) >> 32) >> 3)));
  LODWORD(STACK[0xE60]) = (v34 ^ 0x4B3B95A1) - 756304474;
  LODWORD(STACK[0xE40]) = (v34 ^ 0x7EB52E65) - 412807582;
  LODWORD(STACK[0xE30]) = (v34 ^ 0xAE569BC0) + 931576773;
  v35 = *(v33 + 4 * (1117 * (BYTE2(v32) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v32) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  v36 = *(v33 + 4 * (1117 * (((v31 ^ 0x6131) >> 8) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (((v31 ^ 0x6131) >> 8) ^ 0xF2u) + 1721297)) >> 32) >> 2))) + (((v31 ^ 0x6131) >> 8) ^ 0x60B77E40) - 1714413562;
  v37 = *(v33 + 4 * (1117 * (((v31 ^ 0x8C716131) >> 24) ^ 0x4E) - 4160 * ((1032445 * (1117 * (((v31 ^ 0x8C716131) >> 24) ^ 0x4E))) >> 32))) + (((v31 ^ 0x8C716131) >> 24) ^ 0x5D660AA3) - 1714413562;
  v38 = ((LOBYTE(STACK[0x354]) ^ (LODWORD(STACK[0x354]) >> 4) & 7 ^ 0xF) - ((2 * (LODWORD(STACK[0x354]) ^ (LODWORD(STACK[0x354]) >> 4) & 7 ^ 0xF)) & 0x12A) + 2062662549) ^ HIBYTE(LODWORD(STACK[0xEB0])) ^ 0x7AF1BBD0;
  v39 = (1151 * ((v38 - ((2 * v38) & 0x1AC24902) - 849271679) ^ 0xCD612461 ^ v5) + 1492847) % 0xC80;
  v40 = v10 ^ LODWORD(STACK[0xEB0]) ^ HIBYTE(v5);
  v41 = v40 ^ 0xC9 ^ *(v15 + (1151 * (((v40 ^ 0x327939AE) + 1260432274) ^ ((v40 ^ 0x1DB45721) + 1693304095) ^ ((v40 ^ 0x2FCD6E8Cu) + 1452604596)) + 1719278971) % 0xC80);
  v42 = (v5 >> 8) ^ HIWORD(LODWORD(STACK[0xEB0])) ^ 0xFFFFFFE9;
  v43 = (LODWORD(STACK[0x358]) ^ STACK[0x31C] & 9) ^ 0x97 ^ (v42 - ((2 * v42) & 0x4E) - 89);
  v44 = *(v15 + (1151 * (((v43 ^ 0xF9140D2B) + 116126421) ^ ((v43 ^ 0x60998C9C) - 1620675740) ^ ((v43 ^ 0x998D81CC) + 1718779444)) + 741244) % 0xC80);
  v45 = LODWORD(STACK[0xE70]) ^ (LODWORD(STACK[0x320]) + 4) ^ ((BYTE2(v5) ^ BYTE1(LODWORD(STACK[0xEB0])) ^ 0xD6) - ((2 * (BYTE2(v5) ^ BYTE1(LODWORD(STACK[0xEB0])) ^ 0xD6)) & 0x7C) + 62);
  v46 = (v44 ^ 0x34 ^ ((v44 >> 1) & 0x40 | 0x29)) << 8;
  v47 = *(v15 + v39) & 0xB7 ^ 0x9DD8A5EF ^ ((v41 << 24) & 0xB0000000 ^ 0x68FFDDBD ^ (((((*(v15 + (1151 * (((v45 ^ 0xB8890CA) - 193499240) ^ ((v45 ^ 0xFC9DE00) - 264887970) ^ ((v45 ^ 0x4414E66u) - 71388868)) + 315374) % 0xC80) ^ v45) << 16) ^ 0x88278E5) & ~v46 | v46 & 0xFFFF87FF) ^ 0x477D4D10) & ((v41 << 24) ^ 0x48FFFFFD)) & (*(v15 + v39) ^ 0xFFFFFF34);
  LODWORD(STACK[0xCE0]) = v47;
  v48 = v35 ^ v34 ^ LODWORD(STACK[0xE60]) ^ LODWORD(STACK[0xE40]) ^ LODWORD(STACK[0xE30]) ^ ((v34 ^ 0xFDF7FFFF) + 1680334844) ^ ((v35 ^ 0xD4C63B32) + 1293294391) ^ ((v35 ^ 0x526B7502) - 876915449) ^ ((v35 ^ 0x1C7D2634) - 2052258255) ^ ((v35 ^ 0xFCFFB7FF) + 1697617916) ^ v37 ^ v36;
  v49 = LODWORD(STACK[0xD20]) ^ LODWORD(STACK[0x35C]) ^ (LODWORD(STACK[0x35C]) >> 4) ^ HIBYTE(v2);
  v50 = *(v15 + (1151 * (((v49 ^ 0xEFED6D7E) - 2086007107) ^ ((v49 ^ 0x8CCE7882) - 527885503) ^ ((v49 ^ 0x63231547) + 258242182)) + 725244984) % 0xC80) ^ v49;
  v51 = LODWORD(STACK[0xE80]) ^ BYTE2(v2) ^ BYTE1(LODWORD(STACK[0xD20]));
  v52 = *(v15 + (1151 * (((LOBYTE(STACK[0x360]) ^ (LODWORD(STACK[0x360]) >> 4) & 7 ^ 0x79) - ((2 * (LODWORD(STACK[0x360]) ^ (LODWORD(STACK[0x360]) >> 4) & 7 ^ 0x79)) & 0xB6) + 1199300187) ^ HIBYTE(LODWORD(STACK[0xD20])) ^ 0x477BDE02 ^ v2) + 1492847) % 0xC80);
  v53 = (LODWORD(STACK[0x364]) ^ LODWORD(STACK[0xE90])) ^ 0xFA ^ ((BYTE1(v2) ^ HIWORD(LODWORD(STACK[0xD20])) ^ 0x20) - 2 * ((BYTE1(v2) ^ HIWORD(LODWORD(STACK[0xD20])) ^ 0x20) & 0x39 ^ (BYTE1(v2) ^ HIWORD(LODWORD(STACK[0xD20]))) & 8) + 49);
  v54 = *(v15 + (1151 * (((v53 ^ 0xDFE8CF3F) + 538390721) ^ ((v53 ^ 0xEC72036B) + 328072341) ^ ((v53 ^ 0x339ACC75) - 865782901)) + 637654) % 0xC80);
  v55 = (((v54 >> 1) & 0x40 | 0xB7) ^ v54) << 8;
  v56 = (v50 << 24) & 0xCCCCCCCC ^ 0x73C9691D ^ ((v55 & 0xFA00 | (v55 ^ 0xFFFFFCFF) & (((((*(v15 + (1151 * (((v51 ^ 0x8C32CFCC) + 1942827172) ^ ((v51 ^ 0xF97F456A) + 109099526) ^ ((v51 ^ 0x754D8AE9) - 1968015993)) + 555933) % 0xC80) ^ v51) << 16) ^ 0x20A301BE) & (v52 ^ 0xE7FF65ED) | v52 & 0x41) ^ 0xC2F9043A)) ^ 0xD13B76D8) & ((v50 << 24) ^ 0x8DFFFFFF);
  LODWORD(STACK[0xCB0]) = v48 ^ v47;
  v57 = v48 ^ v47 ^ (BYTE2(v32) - ((v32 >> 15) & 0xD6) + 1262774891);
  LODWORD(STACK[0xDB0]) = v57;
  v58 = v57 ^ 0x50EB3173;
  LODWORD(v12) = LODWORD(STACK[0xEA0]) ^ 0xFD52130E;
  v59 = v57 ^ 0x50EB3173 ^ LODWORD(STACK[0xEC0]);
  LODWORD(STACK[0xE40]) = v59 ^ v56;
  LODWORD(STACK[0xE60]) = v59;
  v60 = v56;
  LODWORD(STACK[0xCD0]) = v56;
  v61 = v12 ^ v59 ^ v56;
  LODWORD(STACK[0xC80]) = v61;
  v62 = *(v33 + 4 * (1117 * (v61 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v61 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  v63 = 1117 * (BYTE2(v61) ^ 0x66);
  LODWORD(STACK[0xDA0]) = v63;
  v64 = *(v33 + 4 * (v63 + 3737482 - 4160 * (((8259553 * (v63 + 3737482)) >> 32) >> 3)));
  LODWORD(STACK[0xC60]) = HIBYTE(v61);
  v65 = *(v33 + 4 * (1117 * (HIBYTE(v61) ^ 0x4E) - 4160 * ((1032445 * (1117 * (HIBYTE(v61) ^ 0x4E))) >> 32))) + (HIBYTE(v61) ^ 0x5D660AA3) - 1714413562;
  LODWORD(STACK[0xC50]) = BYTE1(v61);
  v66 = v64 ^ ((v64 ^ 0x4366CC06) - 625546237) ^ ((v64 ^ 0xB4744D1B) + 765750560) ^ ((v64 ^ 0x2EC28259) - 1223515554) ^ ((v64 ^ 0xBFFFDCBF) + 640679100) ^ v65 ^ (BYTE2(v61) - ((v61 >> 15) & 0x44) - 1297157086) ^ (*(v33 + 4 * (1117 * (BYTE1(v61) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v61) ^ 0xF2u) + 1721297)) >> 32) >> 2))) + (BYTE1(v61) ^ 0x60B77E40) - 1714413562) ^ 0xD4812BD9;
  v67 = ((v62 ^ 0xD5C36FF1) + 1276334070) ^ v62 ^ ((v62 ^ 0xB94DCA85) + 547220098) ^ ((v62 ^ 0x757BC520) - 324279003) ^ ((v62 ^ 0x7FDABFAF) - 435511380) ^ v58 ^ (v66 - ((2 * v66) & 0x1030C362) - 2011668047);
  LODWORD(STACK[0xEB0]) = v67;
  v68 = v67 ^ 0xFFD3A8D3;
  v69 = v67 ^ 0xFFD3A8D3 ^ v60;
  v70 = v69 ^ v61;
  LODWORD(STACK[0xE80]) = v69;
  v71 = v69 ^ v61 ^ 0xD10000A5;
  LODWORD(STACK[0xCC0]) = v71;
  v72 = *(v33 + 4 * (1117 * (v71 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v71 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  LODWORD(v15) = BYTE2(v70);
  LODWORD(STACK[0xD90]) = BYTE2(v70);
  v73 = *(v33 + 4 * (1117 * (BYTE2(v70) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v70) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  LODWORD(STACK[0xCA0]) = BYTE1(v70);
  v74 = *(v33 + 4 * (1117 * (BYTE1(v70) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v70) ^ 0xF2u) + 1721297)) >> 32) >> 2))) + (BYTE1(v70) ^ 0x60B77E40) - 1714413562;
  LODWORD(STACK[0xC90]) = HIBYTE(v71);
  v75 = v74 ^ (*(v33 + 4 * (1117 * (HIBYTE(v71) ^ 0x4E) - 4160 * ((1032445 * (1117 * (HIBYTE(v71) ^ 0x4E))) >> 32))) + (HIBYTE(v71) ^ 0x5D660AA3) - 1714413562);
  v76 = v73 ^ ((v73 ^ 0xF36549EA) + 1790274031) ^ ((v73 ^ 0x801E66A4) + 432948897) ^ ((v73 ^ 0xE3AF0F4B) + 2055155536) ^ ((v73 ^ 0xF6FBFFFE) + 1865146363) ^ 0xA01F92E8 ^ (v75 - ((2 * v75) & 0x8C609A26) - 969913069);
  v77 = ((v72 ^ 0xC4DF4E0D) + 1561292298) ^ v72 ^ ((v72 ^ 0xE8A4FD80) + 1903484293) ^ ((v72 ^ 0xB58B9309) + 744207118) ^ ((v72 ^ 0xFFDFFF7F) + 1712316284) ^ v68 ^ (v76 - ((2 * v76) & 0x89C0F60) - 2075261008);
  LODWORD(STACK[0x3D0]) = v77;
  LODWORD(STACK[0xE90]) = v68 ^ v59;
  v78 = v77 ^ v15;
  LODWORD(STACK[0xD80]) = v78;
  v79 = v78 ^ 0xE261D84B ^ v68 ^ v59;
  LODWORD(STACK[0xE70]) = v79;
  v80 = v79 ^ 0x11E4163C;
  v81 = v79 ^ 0x11E4163C ^ v69;
  v82 = v81 ^ v71;
  v83 = v81;
  LODWORD(STACK[0xE30]) = v81;
  LODWORD(STACK[0xC40]) = v82 ^ 0x3D0000A5;
  LODWORD(STACK[0xC70]) = v82 ^ 0xA5;
  v84 = *(v33 + 4 * (1117 * (v82 ^ 0x2A) + 4030136 - 4160 * (((8259553 * (1117 * (v82 ^ 0x2Au) + 4030136)) >> 32) >> 3)));
  v85 = ((2 * (v84 ^ 0xA26AF234)) ^ 0x7775A462) & (v84 ^ 0xA26AF234) ^ (2 * (v84 ^ 0xA26AF234)) & 0x3BBAD230;
  v86 = ((4 * (v85 ^ 0x88A5211)) ^ 0xEEEB48C4) & (v85 ^ 0x88A5211) ^ (4 * (v85 ^ 0x88A5211)) & 0x3BBAD230;
  v87 = ((16 * (v86 ^ 0x11109231)) ^ 0xBBAD2310) & (v86 ^ 0x11109231) ^ (16 * (v86 ^ 0x11109231)) & 0x3BBAD210;
  v88 = (v84 ^ 0x91CAB234) & (2 * (v84 & 0x99D02005)) ^ v84 & 0x99D02005;
  v89 = (v86 ^ 0x2AAA4000) & (16 * ((v85 ^ 0x23008020) & (4 * v88) ^ v88)) ^ (v85 ^ 0x23008020) & (4 * v88) ^ v88;
  v90 = v89 ^ 0x3BBAD231 ^ (v87 ^ 0x3BA80200) & (v89 << 8);
  LODWORD(STACK[0xD70]) = BYTE2(v82);
  v91 = *(v33 + 4 * (1117 * (BYTE2(v82) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v82) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  LODWORD(STACK[0xC20]) = BYTE1(v82);
  v92 = (v82 ^ 0x3D0000A5) >> 24;
  LODWORD(STACK[0xC30]) = v92;
  v93 = v33;
  v94 = v91 ^ ((v91 ^ 0x44FE0A30) - 584177099) ^ ((v91 ^ 0x28E64EF6) - 1321832717) ^ ((v91 ^ 0x45CC64C2) - 602127161) ^ ((v91 ^ 0x4FFBFFFF) - 701767684) ^ (BYTE2(v82) - ((v82 >> 15) & 0x12A) + 1145902741) ^ (*(v33 + 4 * (1117 * (v92 ^ 0x4E) - 4160 * ((1032445 * (1117 * (v92 ^ 0x4E))) >> 32))) + (v92 ^ 0x5D660AA3) - 1714413562) ^ (*(v33 + 4 * (1117 * (BYTE1(v82) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v82) ^ 0xF2u) + 1721297)) >> 32) >> 2))) + (BYTE1(v82) ^ 0x60B77E40) - 1714413562) ^ 0x2262C96E;
  v95 = v84 ^ (2 * ((v90 << 16) & 0x3BBA0000 ^ v90 ^ ((v90 << 16) ^ 0x52310000) & (((v87 ^ 0x12D021) << 8) & 0x3BBA0000 ^ 0x1280000 ^ (((v87 ^ 0x12D021) << 8) ^ 0x3AD20000) & (v87 ^ 0x12D021)))) ^ v78 ^ 0xE261D84B ^ (v94 - ((2 * v94) & 0xB64FE396) - 618139189);
  LODWORD(STACK[0xDC0]) = v95;
  v96 = v95 ^ 0x54572531;
  v97 = v95 ^ 0x54572531 ^ v80;
  LODWORD(STACK[0xDE0]) = v97;
  v98 = v97 ^ 0x3966A4BE;
  v99 = v97 ^ 0x3966A4BE ^ v83;
  LODWORD(STACK[0xDF0]) = v99;
  v100 = v99 ^ 0x2882B282;
  v101 = v82 ^ 0x8B514604 ^ v99 ^ 0x2882B282;
  v102 = v82 ^ 4 ^ v99 ^ 0x82;
  LODWORD(STACK[0x9E0]) = v102;
  v103 = *(v33 + 4 * (1117 * (v102 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v102 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  v104 = ((2 * (v103 ^ 0xCAD64677)) ^ 0xA60CCCE4) & (v103 ^ 0xCAD64677) ^ (2 * (v103 ^ 0xCAD64677)) & 0x53066672;
  v105 = ((4 * (v104 ^ 0x51022212)) ^ 0x4C1999C8) & (v104 ^ 0x51022212) ^ (4 * (v104 ^ 0x51022212)) & 0x53066670;
  v106 = ((16 * (v105 ^ 0x13066632)) ^ 0x30666720) & (v105 ^ 0x13066632) ^ (16 * (v105 ^ 0x13066632)) & 0x53066660;
  v107 = (v103 ^ 0xD9D60675) & (2 * (v103 & 0x99D02005)) ^ v103 & 0x99D02005;
  v108 = (v105 ^ 0x40000040) & (16 * ((v104 ^ 0x2000020) & (4 * v107) ^ v107)) ^ (v104 ^ 0x2000020) & (4 * v107) ^ v107;
  v109 = v108 ^ 0x53066672 ^ (v106 ^ 0x10066600) & (v108 << 8);
  LODWORD(STACK[0x9CC]) = BYTE1(v101);
  v110 = (BYTE1(v101) ^ 0x60B77E40) + *(v33 + 4 * (1117 * (BYTE1(v101) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v101) ^ 0xF2u) + 1721297)) >> 32) >> 2)));
  v111 = v110 - ((2 * v110 + 329269260) & 0x1007CEEA) - 1579939973;
  LODWORD(STACK[0x998]) = HIBYTE(v101);
  v112 = *(v33 + 4 * (1117 * (HIBYTE(v101) ^ 0x4E) - 4160 * ((1032445 * (1117 * (HIBYTE(v101) ^ 0x4E))) >> 32))) + (HIBYTE(v101) ^ 0x5D660AA3) - 1714413562;
  LODWORD(STACK[0xBD0]) = BYTE2(v101);
  v113 = *(v33 + 4 * (1117 * (BYTE2(v101) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v101) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  v114 = ((2 * (v113 ^ 0xC6A46E9C)) ^ 0xBEE89D32) & (v113 ^ 0xC6A46E9C) ^ (2 * (v113 ^ 0xC6A46E9C)) & 0x5F744E98;
  v115 = ((4 * (v114 ^ 0x41144289)) ^ 0x7DD13A64) & (v114 ^ 0x41144289) ^ (4 * (v114 ^ 0x41144289)) & 0x5F744E98;
  v116 = ((16 * (v115 ^ 0x2244499)) ^ 0xF744E990) & (v115 ^ 0x2244499) ^ (16 * (v115 ^ 0x2244499)) & 0x5F744E90;
  v117 = (v113 ^ 0xD5842E94) & (2 * (v113 & 0x99D02005)) ^ v113 & 0x99D02005;
  v118 = (v115 ^ 0x5D500A00) & (16 * ((v114 ^ 0xE400010) & (4 * v117) ^ v117)) ^ (v114 ^ 0xE400010) & (4 * v117) ^ v117;
  v119 = v118 ^ 0x5F744E99 ^ (v116 ^ 0x57444800) & (v118 << 8);
  v120 = v113 ^ v103 ^ (2 * ((v109 << 16) & 0x53060000 ^ v109 ^ ((v109 << 16) ^ 0x66720000) & (((v106 ^ 0x43000052) << 8) & 0x53060000 ^ 0x51000000 ^ (((v106 ^ 0x43000052) << 8) ^ 0x6660000) & (v106 ^ 0x43000052)) ^ v119 ^ (v119 << 16) & 0x5F740000 ^ ((v119 << 16) ^ 0x4E990000) & (((v116 ^ 0x8300609) << 8) & 0x5F740000 ^ 0xB300000 ^ (((v116 ^ 0x8300609) << 8) ^ 0x744E0000) & (v116 ^ 0x8300609)))) ^ v96 ^ v112 ^ (BYTE2(v101) - ((v101 >> 15) & 0xDA) + 916154733) ^ v111;
  LODWORD(STACK[0xE10]) = v120;
  v121 = v120 ^ 0x3E58DFCE;
  v122 = v120 ^ 0x3E58DFCE ^ v98;
  LODWORD(STACK[0xE20]) = v122;
  v123 = v122 ^ 0x64A1C018;
  v124 = v122 ^ 0x64A1C018 ^ v82;
  v125 = *(v33 + 4 * (1117 * (BYTE2(v124) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v124) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  v126 = ((2 * (v125 ^ 0xF5314829)) ^ 0xD9C2D058) & (v125 ^ 0xF5314829) ^ (2 * (v125 ^ 0xF5314829)) & 0x6CE1682C;
  v127 = (4 * (v126 ^ 0x24212824)) & 0x6CE16828 ^ 0x4C60480C ^ ((4 * (v126 ^ 0x24212824)) ^ 0xB385A0B0) & (v126 ^ 0x24212824);
  v128 = (16 * v127) & 0x6CE16800 ^ 0x20E1682C ^ ((16 * v127) ^ 0xCE1682C0) & v127;
  v129 = (v125 ^ 0xD5910821) & (2 * (v125 & 0x99D02005)) ^ v125 & 0x99D02005;
  v130 = v129 ^ 0x6CE1682C ^ (v126 ^ 0x48C00008) & (4 * v129);
  v131 = (16 * v130) & 0x6CE16820 ^ v130 ^ ((16 * v130) ^ 0xCE1682C0) & v127;
  v132 = v131 ^ (v131 << 8) & 0x6CE16800 ^ ((v131 << 8) ^ 0xE1682C00) & v128 ^ 0x2C602800;
  v133 = (v132 << 16) & 0x6CE10000 ^ v132 ^ ((v132 << 16) ^ 0x682C0000) & ((v128 << 8) & 0x6CE10000 ^ 0xC810000 ^ ((v128 << 8) ^ 0x61680000) & v128);
  LODWORD(STACK[0x598]) = v124;
  v134 = *(v33 + 4 * (1117 * (v124 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v124 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  LODWORD(STACK[0x518]) = BYTE1(v124);
  v135 = (BYTE1(v124) ^ 0x60B77E40) + *(v33 + 4 * (1117 * (BYTE1(v124) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v124) ^ 0xF2u) + 1721297)) >> 32) >> 2)));
  v136 = v135 - ((2 * v135 + 866140172) & 0x2FB0C450) + 833126958;
  v137 = (v124 ^ 0xDE000000) >> 24;
  LODWORD(STACK[0x520]) = v137;
  if (((v124 ^ 0xDE000000) & 0x4000000) != 0)
  {
    v138 = -4;
  }

  else
  {
    v138 = 4;
  }

  v139 = v134 ^ ((v134 ^ 0xC88EB173) + 1365152120) ^ ((v134 ^ 0x16940B5B) - 1891357856) ^ ((v134 ^ 0xC39A9A2C) + 1514846761) ^ ((v134 ^ 0x7BAFFFFF) - 494936068) ^ (*(v33 + 4 * (1117 * (v137 ^ 0x4E) - 4160 * ((1032445 * (1117 * (v137 ^ 0x4E))) >> 32))) + ((v138 + (v137 ^ 0x81)) ^ 0x5D660A26) - 1714413562) ^ 0xF1F7BDD3 ^ v136;
  v140 = v125 ^ (2 * v133) ^ v121 ^ (v139 - ((2 * v139) & 0xE6ECC2B2) + 1937138009);
  LODWORD(STACK[0x488]) = v140;
  v141 = v123 ^ v100;
  v142 = v140 ^ BYTE2(v124);
  LODWORD(STACK[0xAE8]) = v142;
  v143 = v142 ^ 0x5ED59ED2;
  v144 = v142 ^ 0x5ED59ED2 ^ v123;
  LODWORD(STACK[0xE00]) = v144;
  v145 = v144 ^ 0x11E41699;
  v146 = v144 ^ 0x11E41699 ^ v141;
  v147 = v141;
  LODWORD(STACK[0x4A0]) = v141;
  LODWORD(STACK[0x47C]) = v146;
  v148 = v124 ^ 0x1973BDF1 ^ v146 ^ 0x5382B227;
  LODWORD(STACK[0xB00]) = v146 ^ 0x5382B227;
  v149 = v124 ^ 0xF1 ^ v146 ^ 0x27;
  LODWORD(STACK[0x458]) = v149;
  v150 = *(v33 + 4 * (1117 * (v149 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v149 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  v151 = ((2 * (v150 ^ 0x1187E40)) ^ 0x3190BC8A) & (v150 ^ 0x1187E40) ^ (2 * (v150 ^ 0x1187E40)) & 0x98C85E44;
  v152 = ((4 * (v151 ^ 0x88484245)) ^ 0x63217914) & (v151 ^ 0x88484245) ^ (4 * (v151 ^ 0x88484245)) & 0x98C85E44;
  v153 = ((16 * (v152 ^ 0x98C80641)) ^ 0x8C85E450) & (v152 ^ 0x98C80641) ^ (16 * (v152 ^ 0x98C80641)) & 0x98C85E40;
  v154 = (v150 ^ 0x11983E40) & (2 * (v150 & 0x99D02005)) ^ v150 & 0x99D02005;
  v155 = (v152 ^ 0x5800) & (16 * ((v151 ^ 0x800000) & (4 * v154) ^ v154)) ^ (v151 ^ 0x800000) & (4 * v154) ^ v154;
  v156 = v155 ^ 0x98C85E45 ^ (v153 ^ 0x88804400) & (v155 << 8);
  v157 = (v156 << 16) & 0x18C80000 ^ v156 ^ ((v156 << 16) ^ 0x5E450000) & (((v153 ^ 0x10481A05) << 8) & 0x18C80000 ^ 0x10800000 ^ (((v153 ^ 0x10481A05) << 8) ^ 0x485E0000) & (v153 ^ 0x10481A05));
  v158 = *(v33 + 4 * (1117 * (BYTE2(v148) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v148) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  v159 = ((2 * (v158 ^ 0x40D21D62)) ^ 0xB2047ACE) & (v158 ^ 0x40D21D62) ^ (2 * (v158 ^ 0x40D21D62)) & 0xD9023D66;
  v160 = ((4 * (v159 ^ 0x49020521)) ^ 0x6408F59C) & (v159 ^ 0x49020521) ^ (4 * (v159 ^ 0x49020521)) & 0xD9023D64;
  v161 = ((16 * (v160 ^ 0x99020863)) ^ 0x9023D670) & (v160 ^ 0x99020863) ^ (16 * (v160 ^ 0x99020863)) & 0xD9023D60;
  v162 = (v158 ^ 0x51D21D60) & (2 * (v158 & 0x99D02005)) ^ v158 & 0x99D02005;
  v163 = (v160 ^ 0x40003500) & (16 * ((v159 ^ 0x80000007) & (4 * v162) ^ v162)) ^ (v159 ^ 0x80000007) & (4 * v162) ^ v162;
  v164 = v163 ^ 0xD9023D67 ^ (v161 ^ 0x90021400) & (v163 << 8);
  LODWORD(STACK[0x450]) = HIBYTE(v148);
  v165 = (HIBYTE(v148) ^ 0x5D660AA3) + *(v33 + 4 * (1117 * (HIBYTE(v148) ^ 0x4E) - 4160 * ((1032445 * (1117 * (HIBYTE(v148) ^ 0x4E))) >> 32)));
  LODWORD(STACK[0x468]) = BYTE1(v148);
  v166 = v158 ^ (2 * ((v164 << 16) & 0x59020000 ^ v164 ^ ((v164 << 16) ^ 0x3D670000) & (((v161 ^ 0x49002907) << 8) & 0x59020000 ^ 0x59020000 ^ (((v161 ^ 0x49002907) << 8) ^ 0x23D0000) & (v161 ^ 0x49002907)))) ^ (*(v33 + 4 * (1117 * (BYTE1(v148) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v148) ^ 0xF2u) + 1721297)) >> 32) >> 2))) + (BYTE1(v148) ^ 0x60B77E40) - 1714413562) ^ (v165 - ((2 * v165 + 866140172) & 0xBBF0C5E6) - 137854215) ^ 0x44283838;
  v167 = v150 ^ (2 * v157) ^ v143 ^ (v166 - ((2 * v166) & 0x57A7BCC4) - 1412178334);
  LODWORD(STACK[0xA50]) = v167;
  v168 = v167 ^ BYTE2(v148);
  LODWORD(STACK[0x510]) = v168;
  LODWORD(STACK[0xA60]) = v168 ^ 0xE8907900;
  v169 = 1117 * (((v168 ^ 0xE8907900) >> 16) ^ 0xAF) + 3451530;
  LODWORD(STACK[0xD60]) = v169 - 4160 * (((4129777 * v169) >> 32) >> 2);
  v170 = v168 ^ 0x331342ED;
  v171 = v168 ^ 0x331342ED ^ v145;
  v172 = v171 ^ v146 ^ 0x5382B227;
  v173 = v171;
  LODWORD(STACK[0xDD0]) = v171;
  LODWORD(STACK[0xB10]) = v172 ^ v148;
  LODWORD(STACK[0x508]) = v172;
  v174 = v172 ^ v148 ^ 0xDD50CFCE;
  LODWORD(STACK[0xD50]) = 1117 * (BYTE2(v174) ^ 0xEA) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v174) ^ 0xEAu) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xA40]) = v172 ^ 0xDD50CFCE;
  v175 = 1117 * (((v172 ^ 0xDD50CFCE) >> 16) ^ 0xBD) + 3451530;
  LODWORD(STACK[0xD40]) = v175 - 4160 * (((4129777 * v175) >> 32) >> 2);
  LODWORD(STACK[0x500]) = v173 ^ 0x1A23723F;
  v176 = 1117 * (((v173 ^ 0x1A23723Fu) >> 16) ^ 0x1A) + 3451530;
  LODWORD(STACK[0xD30]) = v176 - 4160 * (((4129777 * v176) >> 32) >> 2);
  v177 = LODWORD(STACK[0xDE0]) ^ 0xB88B5038;
  LODWORD(STACK[0x4F8]) = v177;
  LODWORD(STACK[0xD20]) = 1117 * (BYTE2(v177) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v177) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v178 = LODWORD(STACK[0xDF0]) ^ 0x1D3F423;
  LODWORD(STACK[0x4F0]) = v178;
  LODWORD(STACK[0xD00]) = 1117 * (BYTE2(v178) ^ 0xF3) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v178) ^ 0xF3u) + 3451530)) >> 32) >> 2);
  v179 = LODWORD(STACK[0xDC0]) ^ 0x2283759E;
  LODWORD(STACK[0x4E8]) = v179;
  LODWORD(STACK[0xBE0]) = 1117 * (BYTE2(v179) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v179) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xBD0]) = 1117 * (LODWORD(STACK[0xBD0]) ^ 4) + 3451530 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xBD0]) ^ 4u) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xBC0]) = LODWORD(STACK[0xDA0]) + 3451530 - 4160 * (((4129777 * (LODWORD(STACK[0xDA0]) + 3451530)) >> 32) >> 2);
  v180 = LODWORD(STACK[0xE40]) ^ 0x712372B4;
  LODWORD(STACK[0xB70]) = v180;
  LODWORD(STACK[0xBB0]) = 1117 * (BYTE2(v180) ^ 0x8D) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v180) ^ 0x8Du) + 3451530)) >> 32) >> 2);
  v181 = LODWORD(STACK[0xE60]) ^ 0x296C1F6F;
  LODWORD(STACK[0xB60]) = v181;
  LODWORD(STACK[0xBA0]) = 1117 * (BYTE2(v181) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v181) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v182 = LODWORD(STACK[0xDB0]) ^ 0x9A8BB54C;
  LODWORD(STACK[0xB50]) = v182;
  LODWORD(STACK[0xB90]) = 1117 * (BYTE2(v182) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v182) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v183 = LODWORD(STACK[0xE10]) ^ 0x1D2ADCF5;
  LODWORD(STACK[0x4E0]) = v183;
  LODWORD(STACK[0xB80]) = 1117 * (BYTE2(v183) ^ 0x35) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v183) ^ 0x35u) + 3451530)) >> 32) >> 2);
  v184 = LODWORD(STACK[0xE20]) ^ 0x2041A643;
  LODWORD(STACK[0x498]) = v184;
  LODWORD(STACK[0xB40]) = 1117 * (BYTE2(v184) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v184) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xB30]) = 1117 * (BYTE2(v124) ^ 0xC6) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v124) ^ 0xC6u) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0x480]) = v147 ^ 0x9551466B;
  v185 = 1117 * (((v147 ^ 0x9551466B) >> 16) ^ 0xA3) + 3451530;
  LODWORD(STACK[0xB20]) = v185 - 4160 * (((4129777 * v185) >> 32) >> 2);
  LODWORD(STACK[0x490]) = v146 ^ 0xCB86DFD6;
  v186 = 1117 * (((v146 ^ 0xCB86DFD6) >> 16) ^ 0x4A) + 3451530;
  LODWORD(STACK[0xAF0]) = v186 - 4160 * (((4129777 * v186) >> 32) >> 2);
  v187 = LODWORD(STACK[0xAE8]) ^ 0x6EB1D2ED;
  LODWORD(STACK[0x470]) = v187;
  v188 = *(v33 + 4 * (1117 * (BYTE2(v187) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v187) ^ 0x4Au) + 3451530)) >> 32) >> 2)));
  LODWORD(STACK[0xAA8]) = v188;
  LODWORD(STACK[0x364]) = -1386610688 * v188 - 1564344320;
  LODWORD(STACK[0x360]) = 1489332944 * v188 - 2110450160;
  v189 = LODWORD(STACK[0xE00]) ^ 0xD0441799;
  LODWORD(STACK[0x35C]) = v189;
  LODWORD(STACK[0xAD0]) = 1117 * (BYTE2(v189) ^ 0x60) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v189) ^ 0x60u) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xAC8]) = 1117 * (BYTE2(v148) ^ 0x1B) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v148) ^ 0x1Bu) + 3451530)) >> 32) >> 2);
  v190 = *(v33 + 4 * (1117 * (BYTE2(v174) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v174) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  LODWORD(STACK[0x464]) = v174;
  v191 = *(v33 + 4 * (1117 * (v174 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v174 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  v192 = ((2 * (v191 ^ 0xE567B41A)) ^ 0xF96F283E) & (v191 ^ 0xE567B41A) ^ (2 * (v191 ^ 0xE567B41A)) & 0x7CB7941E;
  v193 = ((4 * (v192 ^ 0x4909401)) ^ 0xF2DE507C) & (v192 ^ 0x4909401) ^ (4 * (v192 ^ 0x4909401)) & 0x7CB7941C;
  v194 = ((16 * (v193 ^ 0xC218403)) ^ 0xCB7941F0) & (v193 ^ 0xC218403) ^ (16 * (v193 ^ 0xC218403)) & 0x7CB79410;
  v195 = (v191 ^ 0xD5C7B410) & (2 * (v191 & 0x99D02005)) ^ v191 & 0x99D02005;
  v196 = (v193 ^ 0x70961010) & (16 * ((v192 ^ 0x6801001C) & (4 * v195) ^ v195)) ^ (v192 ^ 0x6801001C) & (4 * v195) ^ v195;
  v197 = v196 ^ 0x7CB7941F ^ (v194 ^ 0x48310000) & (v196 << 8);
  LODWORD(STACK[0x44C]) = BYTE1(v174);
  v198 = (BYTE1(v174) ^ 0x60B77E40) + *(v33 + 4 * (1117 * (BYTE1(v174) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v174) ^ 0xF2u) + 1721297)) >> 32) >> 2)));
  v199 = v191 ^ (2 * ((v197 << 16) & 0x7CB70000 ^ v197 ^ ((v197 << 16) ^ 0x141F0000) & (((v194 ^ 0x3486940F) << 8) & 0x7CB70000 ^ 0x48230000 ^ (((v194 ^ 0x3486940F) << 8) ^ 0x37940000) & (v194 ^ 0x3486940F)))) ^ (v198 - ((2 * v198 + 866140172) & 0x89E0E834) + 1589679136);
  LODWORD(STACK[0x440]) = HIBYTE(v174);
  v200 = ((v190 ^ 0xF96A1A2C) + 1622817321) ^ v190 ^ ((v190 ^ 0x2F23DE49) - 1225523634) ^ ((v190 ^ 0xCF99C461) + 1447683174) ^ ((v190 ^ 0x7FFFDFFF) - 433061892) ^ v170 ^ (*(v33 + 4 * (1117 * (HIBYTE(v174) ^ 0x4E) - 4160 * ((1032445 * (1117 * (HIBYTE(v174) ^ 0x4E))) >> 32))) + (HIBYTE(v174) ^ 0x5D660AA3) - 1714413562) ^ ((v199 ^ 0x8C617C21) - 2 * ((v199 ^ 0x8C617C21) & 0xE45BF2B ^ v199 & 0xA) - 1908031711);
  LODWORD(STACK[0x3A8]) = v200;
  v201 = v200 ^ BYTE2(v174);
  LODWORD(STACK[0xAE8]) = v201;
  v201 ^= 0x1B489B8Au;
  v202 = v201 ^ LODWORD(STACK[0xB00]);
  LODWORD(STACK[0xDB0]) = v202;
  v203 = v202 ^ 0x6DB4D9F2;
  v204 = STACK[0xB10];
  v205 = LODWORD(STACK[0xB10]) ^ 0x96F10F73 ^ v202 ^ 0x6DB4D9F2;
  LODWORD(STACK[0x33C]) = v203;
  v206 = BYTE2(v205);
  v207 = *(v33 + 4 * (1117 * (BYTE2(v205) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (BYTE2(v205) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  LODWORD(STACK[0x358]) = v205;
  v208 = *(v33 + 4 * (1117 * (v205 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v205 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  LODWORD(STACK[0x344]) = HIBYTE(v205);
  v209 = *(v33 + 4 * (1117 * (HIBYTE(v205) ^ 0x4E) - 4160 * ((1032445 * (1117 * (HIBYTE(v205) ^ 0x4E))) >> 32))) + (HIBYTE(v205) ^ 0x5D660AA3) - 1714413562;
  LODWORD(STACK[0x348]) = BYTE1(v205);
  v210 = v208 ^ v207 ^ ((v207 ^ 0x42F17393) - 618572904) ^ ((v207 ^ 0xFC6E52D0) + 1706980053) ^ ((v207 ^ 0xA75F01C7) + 1049567684) ^ ((v207 ^ 0x7FEFFF7F) - 432021636) ^ ((v208 ^ 0x8FB3017) - 1859448812) ^ ((v208 ^ 0x5D6A90E9) - 994397970) ^ ((v208 ^ 0x484900F2) - 778493705) ^ ((v208 ^ 0x7BF77FF7) - 500736012) ^ v201 ^ v209 ^ (*(v33 + 4 * (1117 * (BYTE1(v205) ^ 0xF2) + 1721297 - 4160 * (((4129777 * (1117 * (BYTE1(v205) ^ 0xF2u) + 1721297)) >> 32) >> 2))) + (BYTE1(v205) ^ 0x60B77E40) - 1714413562);
  LODWORD(STACK[0x350]) = v210;
  v211 = v201 ^ LODWORD(STACK[0xDD0]);
  v212 = v210 ^ v206;
  v213 = v206;
  v214 = v210 ^ v206 ^ 0x4C66A4BE;
  LODWORD(STACK[0x304]) = v214;
  BYTE2(v206) = BYTE2(v211);
  LODWORD(STACK[0x2F8]) = v211;
  v215 = v211 ^ 0x5C82B282 ^ v214;
  v216 = v215 - ((2 * v215) & 0xF801B986) - 67052349;
  LODWORD(STACK[0x34C]) = v216;
  LODWORD(STACK[0xAC0]) = 1117 * (BYTE2(v216) ^ 0xDC) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v216) ^ 0xDCu) + 3451530)) >> 32) >> 2);
  v212 ^= 0x77B1DD5Au;
  LODWORD(STACK[0x340]) = v212;
  LODWORD(STACK[0xAB8]) = 1117 * (BYTE2(v212) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v212) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0x338]) = v215;
  v217 = v204 ^ 0x2150CFCE ^ v215;
  LODWORD(STACK[0xDA0]) = v217;
  LODWORD(STACK[0x300]) = BYTE2(v217);
  LODWORD(STACK[0x9E8]) = 1117 * (BYTE2(v217) ^ 0x91) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v217) ^ 0x91u) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0x318]) = v215 ^ v203;
  v218 = v215 ^ v203 ^ 0xB7D3ECED;
  LODWORD(STACK[0x314]) = v218;
  LODWORD(STACK[0xAB0]) = 1117 * (BYTE2(v218) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v218) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v219 = LODWORD(STACK[0xE30]) ^ 0x3DC12302;
  LODWORD(STACK[0xB10]) = v219;
  LODWORD(STACK[0xAA0]) = 1117 * (BYTE2(v219) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v219) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xA98]) = 1117 * (LODWORD(STACK[0xD70]) ^ 0xBD) + 3451530 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xD70]) ^ 0xBDu) + 3451530)) >> 32) >> 2);
  v220 = LODWORD(STACK[0xD80]) ^ 0x8EC5D27F;
  LODWORD(STACK[0x2FC]) = v220;
  LODWORD(STACK[0xA80]) = 1117 * (BYTE2(v220) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v220) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v221 = LODWORD(STACK[0xE70]) ^ 0xF92A063C;
  LODWORD(STACK[0xB00]) = v221;
  LODWORD(STACK[0xA70]) = 1117 * (BYTE2(v221) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v221) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0x4D8]) = 1117 * (BYTE2(v206) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v206) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xA30]) = 1117 * (v213 ^ 0x49) + 3451530 - 4160 * (((4129777 * (1117 * (v213 ^ 0x49u) + 3451530)) >> 32) >> 2);
  v222 = LODWORD(STACK[0xDB0]) ^ 0xFB151DBC;
  LODWORD(STACK[0x2F0]) = v222;
  v223 = 1117 * (BYTE2(v222) ^ 0x35) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v222) ^ 0x35u) + 3451530)) >> 32) >> 2);
  v224 = LODWORD(STACK[0xAE8]) ^ 0x28B32E34;
  LODWORD(STACK[0x2EC]) = v224;
  LODWORD(STACK[0xA20]) = 1117 * (BYTE2(v224) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v224) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  LODWORD(STACK[0xA10]) = 1117 * (LODWORD(STACK[0xD90]) ^ 0xDE) + 3451530 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xD90]) ^ 0xDEu) + 3451530)) >> 32) >> 2);
  v225 = LODWORD(STACK[0xE80]) ^ 0xC0B70018;
  LODWORD(STACK[0xAE8]) = v225;
  LODWORD(STACK[0xA00]) = 1117 * (BYTE2(v225) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v225) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v226 = LODWORD(STACK[0xE90]) ^ 0x48E506A8;
  LODWORD(STACK[0xAE0]) = v226;
  LODWORD(STACK[0x9F0]) = 1117 * (BYTE2(v226) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v226) ^ 0x4Au) + 3451530)) >> 32) >> 2);
  v227 = LODWORD(STACK[0xEB0]) ^ 0x4082D15B;
  LODWORD(STACK[0xAD8]) = v227;
  v228 = v33;
  v229 = *(v33 + 4 * LODWORD(STACK[0xD60]));
  v230 = *(v33 + 4 * LODWORD(STACK[0xD50]));
  v231 = *(v93 + 4 * LODWORD(STACK[0xD40]));
  v232 = *(v93 + 4 * LODWORD(STACK[0xD30]));
  LODWORD(STACK[0x4A8]) = v232;
  v233 = *(v93 + 4 * LODWORD(STACK[0xD20]));
  v234 = *(v93 + 4 * LODWORD(STACK[0xD00]));
  LODWORD(STACK[0x4D0]) = *(v228 + 4 * LODWORD(STACK[0xBE0]));
  LODWORD(STACK[0x4C0]) = *(v228 + 4 * LODWORD(STACK[0xBD0]));
  v235 = *(v228 + 4 * LODWORD(STACK[0xBC0]));
  v236 = *(v228 + 4 * LODWORD(STACK[0xBB0]));
  v237 = *(v228 + 4 * LODWORD(STACK[0xBA0]));
  v238 = *(v228 + 4 * LODWORD(STACK[0xB90]));
  v239 = *(v228 + 4 * LODWORD(STACK[0xB80]));
  v240 = *(v228 + 4 * LODWORD(STACK[0xB40]));
  v241 = *(v228 + 4 * LODWORD(STACK[0xB30]));
  v242 = *(v228 + 4 * LODWORD(STACK[0xB20]));
  v243 = *(v228 + 4 * LODWORD(STACK[0xAF0]));
  v244 = *(v228 + 4 * LODWORD(STACK[0xAD0]));
  v245 = *(v228 + 4 * LODWORD(STACK[0xAC8]));
  LODWORD(STACK[0x4B8]) = v245;
  LODWORD(STACK[0xD90]) = *(v228 + 4 * LODWORD(STACK[0xAC0]));
  LODWORD(STACK[0xD80]) = *(v228 + 4 * LODWORD(STACK[0xAB8]));
  LODWORD(STACK[0xD70]) = *(v228 + 4 * LODWORD(STACK[0x9E8]));
  LODWORD(STACK[0xD60]) = *(v228 + 4 * LODWORD(STACK[0xAB0]));
  LODWORD(STACK[0xD50]) = *(v228 + 4 * LODWORD(STACK[0xAA0]));
  LODWORD(STACK[0xD40]) = *(v228 + 4 * LODWORD(STACK[0xA98]));
  LODWORD(STACK[0xD30]) = *(v228 + 4 * LODWORD(STACK[0xA80]));
  LODWORD(STACK[0xD20]) = *(v228 + 4 * LODWORD(STACK[0xA70]));
  LODWORD(STACK[0xD00]) = *(v228 + 4 * LODWORD(STACK[0x4D8]));
  v246 = *(v228 + 4 * LODWORD(STACK[0xA30]));
  LODWORD(STACK[0x41C]) = v246;
  v247 = *(v228 + 4 * v223);
  v248 = *(v228 + 4 * LODWORD(STACK[0xA20]));
  v249 = *(v228 + 4 * LODWORD(STACK[0xA10]));
  v250 = *(v228 + 4 * LODWORD(STACK[0xA00]));
  v251 = *(v228 + 4 * LODWORD(STACK[0x9F0]));
  LODWORD(STACK[0x414]) = *(v228 + 4 * (1117 * (BYTE2(v227) ^ 0x4A) + 3451530 - 4160 * (((4129777 * (1117 * (BYTE2(v227) ^ 0x4Au) + 3451530)) >> 32) >> 2)));
  LODWORD(STACK[0x3FC]) = 415591120 * v229 + 37033488;
  LODWORD(STACK[0x428]) = 415591120 * v230 + 37033488;
  LODWORD(STACK[0x438]) = 415591120 * v231 + 37033488;
  LODWORD(STACK[0x418]) = 415591120 * v232 + 37033488;
  LODWORD(STACK[0xAA0]) = 415591120 * v233 + 37033488;
  LODWORD(STACK[0xA80]) = 415591120 * v234 + 37033488;
  v252 = STACK[0x4D0];
  LODWORD(STACK[0x32C]) = 415591120 * LODWORD(STACK[0x4D0]) + 37033488;
  v253 = STACK[0x4C0];
  LODWORD(STACK[0x330]) = 415591120 * LODWORD(STACK[0x4C0]) + 37033488;
  LODWORD(STACK[0xBE0]) = 415591120 * v235 + 37033488;
  LODWORD(STACK[0xAC0]) = 415591120 * v236 + 37033488;
  LODWORD(STACK[0xBD0]) = 415591120 * v237 + 37033488;
  LODWORD(STACK[0xBA0]) = 415591120 * v238 + 37033488;
  LODWORD(STACK[0xA30]) = 415591120 * v239 + 37033488;
  LODWORD(STACK[0x9F0]) = 415591120 * v240 + 37033488;
  LODWORD(STACK[0xA10]) = 415591120 * v241 + 37033488;
  LODWORD(STACK[0x334]) = 415591120 * v242 + 37033488;
  LODWORD(STACK[0x4B0]) = 415591120 * v243 + 37033488;
  LODWORD(STACK[0x4D8]) = 415591120 * v244 + 37033488;
  LODWORD(STACK[0x4C8]) = 415591120 * v245 + 37033488;
  LODWORD(STACK[0x3B4]) = 415591120 * LODWORD(STACK[0xD90]) + 37033488;
  LODWORD(STACK[0x398]) = 415591120 * LODWORD(STACK[0xD80]) + 37033488;
  LODWORD(STACK[0x31C]) = 415591120 * LODWORD(STACK[0xD70]) + 37033488;
  LODWORD(STACK[0x3A4]) = 415591120 * LODWORD(STACK[0xD60]) + 37033488;
  LODWORD(STACK[0xB30]) = 415591120 * LODWORD(STACK[0xD50]) + 37033488;
  LODWORD(STACK[0xAF0]) = 415591120 * LODWORD(STACK[0xD40]) + 37033488;
  LODWORD(STACK[0xAB0]) = 415591120 * LODWORD(STACK[0xD30]) + 37033488;
  LODWORD(STACK[0xB20]) = 415591120 * LODWORD(STACK[0xD20]) + 37033488;
  LODWORD(STACK[0x3C4]) = 415591120 * LODWORD(STACK[0xD00]) + 37033488;
  LODWORD(STACK[0x3CC]) = 415591120 * v246 + 37033488;
  LODWORD(STACK[0x3C8]) = 415591120 * v247 + 37033488;
  LODWORD(STACK[0x3D8]) = 415591120 * v248 + 37033488;
  LODWORD(STACK[0xAC8]) = 415591120 * v249 + 37033488;
  LODWORD(STACK[0xB40]) = 415591120 * v250 + 37033488;
  v254 = v251;
  LODWORD(STACK[0xB80]) = 415591120 * v251 + 37033488;
  v255 = STACK[0x414];
  LODWORD(STACK[0xAD0]) = 415591120 * LODWORD(STACK[0x414]) + 37033488;
  LODWORD(STACK[0x3F8]) = -980658515 * v229 + 941838689;
  LODWORD(STACK[0x420]) = -980658515 * v230 + 941838689;
  LODWORD(STACK[0x430]) = -980658515 * v231 + 941838689;
  LODWORD(STACK[0x400]) = -980658515 * LODWORD(STACK[0x4A8]) + 941838689;
  LODWORD(STACK[0xA98]) = -980658515 * v233 + 941838689;
  LODWORD(STACK[0xA70]) = -980658515 * v234 + 941838689;
  v256 = -980658515 * v252 + 941838689;
  v257 = -980658515 * v253 + 941838689;
  LODWORD(STACK[0xBC0]) = -980658515 * v235 + 941838689;
  LODWORD(STACK[0xAB8]) = -980658515 * v236 + 941838689;
  LODWORD(STACK[0xBB0]) = -980658515 * v237 + 941838689;
  LODWORD(STACK[0xB90]) = -980658515 * v238 + 941838689;
  LODWORD(STACK[0xA20]) = -980658515 * v239 + 941838689;
  LODWORD(STACK[0x9E8]) = -980658515 * v240 + 941838689;
  LODWORD(STACK[0xA00]) = -980658515 * v241 + 941838689;
  v258 = -980658515 * v242 + 941838689;
  LODWORD(STACK[0x4A8]) = -980658515 * v243 + 941838689;
  LODWORD(STACK[0x4D0]) = -980658515 * LODWORD(STACK[0xAA8]) + 941838689;
  LODWORD(STACK[0x4C0]) = -980658515 * v244 + 941838689;
  LODWORD(STACK[0x4B8]) = -980658515 * LODWORD(STACK[0x4B8]) + 941838689;
  LODWORD(STACK[0x388]) = -980658515 * LODWORD(STACK[0xD90]) + 941838689;
  LODWORD(STACK[0x354]) = -980658515 * LODWORD(STACK[0xD80]) + 941838689;
  v259 = -980658515 * LODWORD(STACK[0xD70]) + 941838689;
  LODWORD(STACK[0x378]) = -980658515 * LODWORD(STACK[0xD60]) + 941838689;
  LODWORD(STACK[0xD70]) = -980658515 * LODWORD(STACK[0xD50]) + 941838689;
  LODWORD(STACK[0xD50]) = -980658515 * LODWORD(STACK[0xD40]) + 941838689;
  LODWORD(STACK[0xAA8]) = -980658515 * LODWORD(STACK[0xD30]) + 941838689;
  LODWORD(STACK[0xD60]) = -980658515 * LODWORD(STACK[0xD20]) + 941838689;
  LODWORD(STACK[0x3B8]) = -980658515 * LODWORD(STACK[0xD00]) + 941838689;
  LODWORD(STACK[0x3C0]) = -980658515 * LODWORD(STACK[0x41C]) + 941838689;
  LODWORD(STACK[0x3BC]) = -980658515 * v247 + 941838689;
  LODWORD(STACK[0x3D4]) = -980658515 * v248 + 941838689;
  LODWORD(STACK[0xD30]) = -980658515 * v249 + 941838689;
  LODWORD(STACK[0xD80]) = -980658515 * v250 + 941838689;
  LODWORD(STACK[0xD90]) = -980658515 * v254 + 941838689;
  LODWORD(STACK[0xD40]) = -980658515 * v255 + 941838689;
  v260 = 1117 * (HIBYTE(LODWORD(STACK[0xA50])) ^ 0x51) + 2009483;
  LODWORD(v228) = 1117 * (LODWORD(STACK[0x510]) ^ 0xD) + 2874041;
  v261 = STACK[0x368];
  v262 = *(STACK[0x368] + 4 * (v260 - 4160 * (((4129777 * v260) >> 32) >> 2)));
  LODWORD(STACK[0x3EC]) = v228 - 4160 * (((4129777 * v228) >> 32) >> 2);
  HIDWORD(v263) = v262 + 5;
  LODWORD(v263) = v262 - 1714413563;
  LODWORD(STACK[0x3F0]) = v263 >> 6;
  LODWORD(STACK[0x3E4]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xA60])) ^ 0xA3) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xA60])) ^ 0xA3u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0xA60])) ^ 0x9EB09190) - 1714413563;
  LODWORD(STACK[0x410]) = *(v261 + 4 * (1117 * (LODWORD(STACK[0x44C]) ^ 0x2A) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x44C]) ^ 0x2Au) + 3161110)) >> 32) >> 2))) + (LODWORD(STACK[0x44C]) ^ 0x9EB09119) - 1714413563;
  LODWORD(STACK[0x408]) = 1117 * (LODWORD(STACK[0x464]) ^ 0x2B) + 2874041 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x464]) ^ 0x2Bu) + 2874041)) >> 32) >> 2);
  v264 = *(v261 + 4 * (1117 * (LODWORD(STACK[0x440]) ^ 0xE5) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x440]) ^ 0xE5u) + 2009483)) >> 32) >> 2)));
  HIDWORD(v263) = v264 + 5;
  LODWORD(v263) = v264 - 1714413563;
  LODWORD(STACK[0x404]) = v263 >> 6;
  v265 = 1117 * (HIBYTE(LODWORD(STACK[0x508])) ^ 0xF7) + 2009483;
  v266 = *(v261 + 4 * (v265 - 4160 * (((4129777 * v265) >> 32) >> 2)));
  HIDWORD(v263) = v266 + 5;
  LODWORD(v263) = v266 - 1714413563;
  LODWORD(STACK[0x41C]) = v263 >> 6;
  v267 = STACK[0xA40];
  LODWORD(STACK[0x414]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xA40])) ^ 0x3E) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xA40])) ^ 0x3Eu) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0xA40])) ^ 0x9EB0910D) - 1714413563;
  LODWORD(STACK[0x40C]) = 1117 * (v267 ^ 0x69) + 2874041 - 4160 * (((4129777 * (1117 * (v267 ^ 0x69u) + 2874041)) >> 32) >> 2);
  v268 = 1117 * (HIBYTE(LODWORD(STACK[0xDD0])) ^ 0x4A) + 2009483;
  v269 = *(v261 + 4 * (v268 - 4160 * (((4129777 * v268) >> 32) >> 2)));
  LODWORD(STACK[0x3F4]) = ((v269 ^ 0x12) + 23) ^ v269 ^ ((v269 ^ 9) + 14);
  LODWORD(STACK[0x3E8]) = ((v269 ^ 0xAE42F63B) + 932369984) ^ v269 ^ ((v269 ^ 0x998DDF1C) + 6160153) ^ ((v269 ^ 0xBF1E0920) + 651045168) ^ ((v269 ^ 0xEEFEFFF4) + 1999560692);
  v270 = STACK[0x500];
  v271 = 1117 * (LODWORD(STACK[0x500]) ^ 0x49) + 2874041;
  LODWORD(STACK[0x3E0]) = v271 - 4160 * (((4129777 * v271) >> 32) >> 2);
  LODWORD(v228) = BYTE1(v270) ^ 0x9EB0910E;
  v272 = 1117 * (BYTE1(v270) ^ 0x3D) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v270) ^ 0x3Du) + 3161110)) >> 32) >> 2);
  v273 = 1117 * (HIBYTE(LODWORD(STACK[0xDE0])) ^ 0x1A) + 2009483;
  v274 = *(v261 + 4 * (v273 - 4160 * (((4129777 * v273) >> 32) >> 2)));
  LODWORD(STACK[0x3DC]) = *(v261 + 4 * v272) + v228 - 1714413563;
  HIDWORD(v263) = v274 + 5;
  LODWORD(v263) = v274 - 1714413563;
  LODWORD(STACK[0xDE0]) = v263 >> 6;
  v275 = STACK[0x4F8];
  HIDWORD(v263) = (LODWORD(STACK[0x4F8]) << 10) & 0x3FC0000 ^ 0x2B80000;
  LODWORD(v263) = HIDWORD(v263);
  LODWORD(STACK[0xD20]) = *(v261 + 4 * ((1117 * ((v263 >> 18) ^ 0x64) + 3161110) % 0x1040)) + ((v263 >> 18) ^ 0x9EB09157) - 1714413563;
  v276 = v275 ^ 0xBD;
  v277 = STACK[0x4F0];
  LODWORD(v228) = 1117 * (LODWORD(STACK[0x4F0]) ^ 0x1B) + 2874041;
  LODWORD(v228) = *(v261 + 4 * (v228 - 4160 * (((4129777 * v228) >> 32) >> 2)));
  HIDWORD(v263) = v228 + 8197;
  LODWORD(v263) = v228 - 1714413563;
  LODWORD(STACK[0xD00]) = 1117 * v276 + 2874041 - 4160 * (((4129777 * (1117 * v276 + 2874041)) >> 32) >> 2);
  HIDWORD(v263) = v263 >> 14;
  LODWORD(v263) = HIDWORD(v263);
  LODWORD(STACK[0xA60]) = (v263 >> 18) - 1302178486;
  LODWORD(STACK[0xA50]) = *(v261 + 4 * (1117 * (BYTE1(v277) ^ 0x7E) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v277) ^ 0x7Eu) + 3161110)) >> 32) >> 2))) + (BYTE1(v277) ^ 0x9EB0914D) - 1714413563;
  v278 = 1117 * (HIBYTE(LODWORD(STACK[0xDF0])) ^ 0xA3) + 2009483;
  v279 = *(v261 + 4 * (v278 - 4160 * (((4129777 * v278) >> 32) >> 2)));
  HIDWORD(v263) = v279 + 5;
  LODWORD(v263) = v279 - 1714413563;
  LODWORD(STACK[0xA40]) = v263 >> 6;
  v280 = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xDC0])) ^ 0x29) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xDC0])) ^ 0x29u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0xDC0])) ^ 0x9EB0911A) - 1714413563;
  LODWORD(v228) = 1117 * (HIBYTE(LODWORD(STACK[0xDC0])) ^ 0xE6) + 2009483;
  LODWORD(v228) = *(v261 + 4 * (v228 - 4160 * (((4129777 * v228) >> 32) >> 2)));
  HIDWORD(v263) = v228 + 5;
  LODWORD(v263) = v228 - 1714413563;
  v281 = 1117 * (LODWORD(STACK[0x4E8]) ^ 0x30) + 2874041;
  LODWORD(v228) = (*(v261 + 4 * (v281 - 4160 * (((4129777 * v281) >> 32) >> 2))) + 1278375247) ^ (v263 >> 6) ^ v256 ^ (8 * (LODWORD(STACK[0x32C]) ^ v256));
  LODWORD(STACK[0xDC0]) = v280 + v228 - 2 * (v280 & v228);
  LODWORD(STACK[0xDF0]) = *(v261 + 4 * (1117 * (LODWORD(STACK[0x9CC]) ^ 0x80) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x9CC]) ^ 0x80u) + 3161110)) >> 32) >> 2))) + (LODWORD(STACK[0x9CC]) ^ 0x9EB091B3) - 1714413563;
  LODWORD(v228) = *(v261 + 4 * (1117 * (LODWORD(STACK[0x998]) ^ 0xFC) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x998]) ^ 0xFCu) + 2009483)) >> 32) >> 2)));
  HIDWORD(v263) = v228 + 30416901;
  LODWORD(v263) = v228 - 1714413563;
  LODWORD(STACK[0xDD0]) = v257 ^ (*(v261 + 4 * (1117 * (LODWORD(STACK[0x9E0]) ^ 0x35) + 2874041 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x9E0]) ^ 0x35u) + 2874041)) >> 32) >> 2))) + 1278375247) ^ (8 * (v257 ^ LODWORD(STACK[0x330]))) ^ __ROR4__(v263 >> 25, 13);
  v282 = 1117 * (HIBYTE(LODWORD(STACK[0xE10])) ^ 0xBF) + 2009483;
  v283 = *(v261 + 4 * (v282 - 4160 * (((4129777 * v282) >> 32) >> 2)));
  HIDWORD(v263) = v283 + 5;
  LODWORD(v263) = v283 - 1714413563;
  LODWORD(STACK[0x9E0]) = v263 >> 6;
  v284 = STACK[0x4E0];
  LODWORD(STACK[0x9CC]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x4E0])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x4E0])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x4E0])) ^ 0x9EB09157) - 1714413563;
  LODWORD(STACK[0x998]) = 1117 * (v284 ^ 0x78) + 2874041 - 4160 * (((4129777 * (1117 * (v284 ^ 0x78u) + 2874041)) >> 32) >> 2);
  v285 = STACK[0x498];
  LODWORD(STACK[0x510]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x498])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x498])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x498])) ^ 0x9EB09157) - 1714413563;
  LODWORD(STACK[0x4F0]) = 1117 * (v285 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v285 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v286 = 1117 * (HIBYTE(LODWORD(STACK[0xE20])) ^ 0x82) + 2009483;
  v287 = *(v261 + 4 * (v286 - 4160 * (((4129777 * v286) >> 32) >> 2)));
  HIDWORD(v263) = v287 + 5;
  LODWORD(v263) = v287 - 1714413563;
  LODWORD(STACK[0x500]) = v263 >> 6;
  LODWORD(STACK[0x598]) = 1117 * (LODWORD(STACK[0x598]) ^ 0x6D) + 2874041 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x598]) ^ 0x6Du) + 2874041)) >> 32) >> 2);
  v288 = *(v261 + 4 * (1117 * (LODWORD(STACK[0x520]) ^ 0xCE) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x520]) ^ 0xCEu) + 2009483)) >> 32) >> 2)));
  HIDWORD(v263) = v288 + 5;
  LODWORD(v263) = v288 - 1714413563;
  LODWORD(STACK[0x520]) = v263 >> 6;
  LODWORD(STACK[0x518]) = *(v261 + 4 * (1117 * (LODWORD(STACK[0x518]) ^ 0xC1) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x518]) ^ 0xC1u) + 3161110)) >> 32) >> 2))) + (LODWORD(STACK[0x518]) ^ 0x9EB091F2) - 1714413563;
  v289 = STACK[0x480];
  LODWORD(STACK[0x508]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x480])) ^ 0x4C) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x480])) ^ 0x4Cu) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x480])) ^ 0x9EB0917F) - 1714413563;
  v290 = v258 ^ LODWORD(STACK[0x334]);
  v291 = 1117 * (HIBYTE(LODWORD(STACK[0x4A0])) ^ 0x37) + 2009483;
  v292 = *(v261 + 4 * (v291 - 4160 * (((4129777 * v291) >> 32) >> 2)));
  HIDWORD(v263) = v292 + 5;
  LODWORD(v263) = v292 - 1714413563;
  LODWORD(STACK[0x4F8]) = v263 >> 6;
  LODWORD(v228) = 1117 * (HIBYTE(LODWORD(STACK[0x47C])) ^ 0x69) + 2009483;
  LODWORD(v228) = *(v261 + 4 * (v228 - 4160 * (((4129777 * v228) >> 32) >> 2)));
  HIDWORD(v263) = v228 + 5;
  LODWORD(v263) = v228 - 1714413563;
  LODWORD(STACK[0x464]) = v263 >> 6;
  LODWORD(STACK[0x4E8]) = 8 * v290 + (v258 ^ 0xCE2606FD) - 2 * ((8 * v290) & (v258 ^ 0xCE2606FD));
  LODWORD(STACK[0x4E0]) = 1117 * (v289 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v289 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v293 = STACK[0x490];
  LODWORD(STACK[0x44C]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x490])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x490])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x490])) ^ 0x9EB09157) - 1714413563;
  LODWORD(STACK[0x440]) = 1117 * (v293 ^ 0xF) + 2874041 - 4160 * (((4129777 * (1117 * (v293 ^ 0xFu) + 2874041)) >> 32) >> 2);
  HIDWORD(v263) = STACK[0x364] & 0xFFFFE000 | (LODWORD(STACK[0x360]) >> 19);
  LODWORD(v263) = STACK[0x364];
  LODWORD(STACK[0x4A0]) = v263 >> 29;
  v294 = STACK[0x470];
  LODWORD(STACK[0x498]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x470])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x470])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x470])) ^ 0x9EB09157) - 1714413563;
  LODWORD(STACK[0x490]) = 1117 * (v294 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v294 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v295 = 1117 * (HIBYTE(LODWORD(STACK[0x488])) ^ 0xCC) + 2009483;
  v296 = *(v261 + 4 * (v295 - 4160 * (((4129777 * v295) >> 32) >> 2)));
  HIDWORD(v263) = v296 + 5;
  LODWORD(v263) = v296 - 1714413563;
  LODWORD(STACK[0x488]) = v263 >> 6;
  v297 = 1117 * (HIBYTE(LODWORD(STACK[0xE00])) ^ 0xA6) + 2009483;
  v298 = *(v261 + 4 * (v297 - 4160 * (((4129777 * v297) >> 32) >> 2)));
  HIDWORD(v263) = v298 + 5;
  LODWORD(v263) = v298 - 1714413563;
  LODWORD(STACK[0x480]) = v263 >> 6;
  v299 = STACK[0x35C];
  LODWORD(STACK[0x47C]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x35C])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x35C])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + ((LODWORD(STACK[0x35C]) >> 8) & 0x57) + (BYTE1(LODWORD(STACK[0x35C])) | 0x9EB09157) - 2 * ((LODWORD(STACK[0x35C]) >> 8) & 0x57);
  LODWORD(STACK[0x470]) = 1117 * (v299 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v299 ^ 0x30u) + 2874041)) >> 32) >> 2);
  LODWORD(STACK[0x468]) = *(v261 + 4 * (1117 * (LODWORD(STACK[0x468]) ^ 0xE) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x468]) ^ 0xEu) + 3161110)) >> 32) >> 2))) + (LODWORD(STACK[0x468]) ^ 0x9EB0913D) - 1714413563;
  v300 = 1117 * (LODWORD(STACK[0x458]) ^ 0x21) + 2874041 - 8320 * (((4129777 * (1117 * (LODWORD(STACK[0x458]) ^ 0x21u) + 2874041)) >> 32) >> 3);
  if (v300 >> 6 >= 0x41)
  {
    v300 -= 4160;
  }

  LODWORD(STACK[0x458]) = v300;
  v301 = *(v261 + 4 * (1117 * (LODWORD(STACK[0x450]) ^ 0x38) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x450]) ^ 0x38u) + 2009483)) >> 32) >> 2)));
  HIDWORD(v302) = v301 + 5;
  LODWORD(v302) = v301 - 1714413563;
  LODWORD(STACK[0x450]) = v302 >> 6;
  v303 = STACK[0x34C];
  v304 = 1117 * (HIBYTE(LODWORD(STACK[0x34C])) ^ 0xE9) + 2009483;
  v305 = *(v261 + 4 * (v304 - 4160 * (((4129777 * v304) >> 32) >> 2)));
  HIDWORD(v302) = v305 + 5;
  LODWORD(v302) = v305 - 1714413563;
  LODWORD(STACK[0x334]) = v302 >> 6;
  LODWORD(STACK[0x330]) = *(v261 + 4 * (1117 * (BYTE1(v303) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v303) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(v303) ^ 0x9EB09157) - 1714413563;
  LODWORD(STACK[0x32C]) = 1117 * (v303 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v303 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v306 = 1117 * (HIBYTE(LODWORD(STACK[0x350])) ^ 0xD5) + 2009483;
  v307 = *(v261 + 4 * (v306 - 4160 * (((4129777 * v306) >> 32) >> 2)));
  HIDWORD(v302) = v307 + 5;
  LODWORD(v302) = v307 - 1714413563;
  LODWORD(STACK[0x328]) = v302 >> 6;
  v308 = STACK[0x340];
  v309 = 1117 * (LODWORD(STACK[0x340]) ^ 0x30) + 2874041;
  LODWORD(STACK[0x324]) = v309 - 4160 * (((4129777 * v309) >> 32) >> 2);
  v310 = BYTE1(v308);
  v311 = 1117 * (BYTE1(v308) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v308) ^ 0x64u) + 3161110)) >> 32) >> 2);
  v312 = STACK[0xDA0];
  v313 = HIBYTE(LODWORD(STACK[0xDA0]));
  v314 = *(v261 + 4 * (1117 * (v313 ^ 0xB6) + 2009483 - 4160 * (((4129777 * (1117 * (v313 ^ 0xB6u) + 2009483)) >> 32) >> 2)));
  HIDWORD(v302) = v314 + 5;
  LODWORD(v302) = v314 - 1714413563;
  LODWORD(STACK[0x320]) = *(v261 + 4 * v311) + (v310 ^ 0x9EB09157) - 1714413563;
  v315 = v312;
  LODWORD(STACK[0x310]) = 1117 * (v312 ^ 6) + 2874041 - 4160 * (((4129777 * (1117 * (v312 ^ 6u) + 2874041)) >> 32) >> 2);
  v316 = BYTE1(v312);
  v317 = v312;
  LODWORD(STACK[0x30C]) = *(v261 + 4 * (1117 * (BYTE1(v312) ^ 0x4E) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v312) ^ 0x4Eu) + 3161110)) >> 32) >> 2))) + (BYTE1(v312) ^ 0x9EB0917D) - 1714413563;
  LODWORD(STACK[0x308]) = (v302 >> 6) ^ v259 ^ (8 * (LODWORD(STACK[0x31C]) ^ v259));
  v318 = STACK[0x314];
  LODWORD(STACK[0x31C]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x314])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x314])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x314])) ^ 0x9EB09157) - 1714413563;
  v319 = 1117 * (HIBYTE(LODWORD(STACK[0x318])) ^ 0x11) + 2009483;
  v320 = *(v261 + 4 * (v319 - 4160 * (((4129777 * v319) >> 32) >> 2)));
  HIDWORD(v302) = v320 + 5;
  LODWORD(v302) = v320 - 1714413563;
  LODWORD(STACK[0x318]) = v302 >> 6;
  LODWORD(STACK[0x314]) = 1117 * (v318 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v318 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v321 = 1117 * (HIBYTE(LODWORD(STACK[0x3D0])) ^ 0x2C) + 2009483;
  v322 = *(v261 + 4 * (v321 - 4160 * (((4129777 * v321) >> 32) >> 2)));
  HIDWORD(v302) = v322 + 5;
  LODWORD(v302) = v322 - 1714413563;
  LODWORD(STACK[0xE20]) = v302 >> 6;
  v323 = STACK[0x2FC];
  LODWORD(STACK[0xE10]) = (BYTE1(LODWORD(STACK[0x2FC])) ^ 0x9EB09157) - 1714413563 + *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x2FC])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x2FC])) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  LODWORD(STACK[0xE00]) = 1117 * (v323 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v323 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v324 = STACK[0x2F8];
  v325 = 1117 * (HIBYTE(LODWORD(STACK[0x2F8])) ^ 0x18) + 2009483;
  v326 = *(v261 + 4 * (v325 - 4160 * (((4129777 * v325) >> 32) >> 2)));
  HIDWORD(v302) = v326 + 5;
  LODWORD(v302) = v326 - 1714413563;
  LODWORD(STACK[0x360]) = v302 >> 6;
  LODWORD(STACK[0x350]) = 1117 * (v324 ^ 0xB3) + 2874041 - 4160 * (((4129777 * (1117 * (v324 ^ 0xB3u) + 2874041)) >> 32) >> 2);
  LODWORD(STACK[0x34C]) = *(v261 + 4 * (1117 * (((v324 ^ 0x6C83) >> 8) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (((v324 ^ 0x6C83) >> 8) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (((v324 ^ 0x6C83) >> 8) ^ 0x9EB09157) - 1714413563;
  v327 = *(v261 + 4 * (1117 * (LODWORD(STACK[0x344]) ^ 0x77) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x344]) ^ 0x77u) + 2009483)) >> 32) >> 2)));
  HIDWORD(v302) = v327 + 5;
  LODWORD(v302) = v327 - 1714413563;
  LODWORD(STACK[0x364]) = v302 >> 6;
  LODWORD(STACK[0x35C]) = 1117 * (LODWORD(STACK[0x358]) ^ 0xF0) + 2874041 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x358]) ^ 0xF0u) + 2874041)) >> 32) >> 2);
  LODWORD(STACK[0x358]) = *(v261 + 4 * (1117 * (LODWORD(STACK[0x348]) ^ 0x75) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0x348]) ^ 0x75u) + 3161110)) >> 32) >> 2))) + (LODWORD(STACK[0x348]) ^ 0x9EB09146) - 1714413563;
  v328 = STACK[0x2F0];
  LODWORD(STACK[0x348]) = *(v261 + 4 * (1117 * (BYTE1(LODWORD(STACK[0x2F0])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0x2F0])) ^ 0x64u) + 3161110)) >> 32) >> 2))) + (BYTE1(LODWORD(STACK[0x2F0])) ^ 0x9EB09157) - 1714413563;
  LODWORD(STACK[0x344]) = 1117 * (v328 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v328 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v329 = 1117 * (HIBYTE(LODWORD(STACK[0xDB0])) ^ 0x59) + 2009483;
  v330 = *(v261 + 4 * (v329 - 4160 * (((4129777 * v329) >> 32) >> 2)));
  HIDWORD(v302) = v330 + 5;
  LODWORD(v302) = v330 - 1714413563;
  LODWORD(STACK[0x340]) = v302 >> 6;
  v331 = STACK[0x2EC];
  v332 = LODWORD(STACK[0x2EC]) ^ 0x8C;
  v333 = 1117 * (HIBYTE(LODWORD(STACK[0x3A8])) ^ 0x8A) + 2009483;
  v334 = *(v261 + 4 * (v333 - 4160 * (((4129777 * v333) >> 32) >> 2)));
  HIDWORD(v302) = v334 + 5;
  LODWORD(v302) = v334 - 1714413563;
  LODWORD(STACK[0xDB0]) = v302 >> 6;
  LODWORD(STACK[0x3D0]) = 1117 * v332 + 2874041 - 4160 * (((4129777 * (1117 * v332 + 2874041)) >> 32) >> 2);
  LODWORD(STACK[0x3A8]) = *(v261 + 4 * (1117 * (BYTE1(v331) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v331) ^ 0x64u) + 3161110)) >> 32) >> 2))) + ((BYTE1(v331) | 0x9EB09157) ^ (v331 >> 8) & 0x57) - 1714413563;
  v335 = *(v261 + 4 * (1117 * (v315 ^ 0x8F) + 4030136 - 4160 * (((8259553 * (1117 * (v315 ^ 0x8Fu) + 4030136)) >> 32) >> 3)));
  v336 = ((2 * (v335 ^ 0xA8097965)) ^ 0x63B2B2C0) & (v335 ^ 0xA8097965) ^ (2 * (v335 ^ 0xA8097965)) & 0x31D95960;
  v337 = ((4 * (v336 ^ 0x10494920)) ^ 0xC7656580) & (v336 ^ 0x10494920) ^ (4 * (v336 ^ 0x10494920)) & 0x31D95960;
  v338 = ((16 * (v337 ^ 0x30981860)) ^ 0x1D959600) & (v337 ^ 0x30981860) ^ (16 * (v337 ^ 0x30981860)) & 0x31D95940;
  v339 = (v335 ^ 0x99893965) & (2 * (v335 & 0x99D02005)) ^ v335 & 0x99D02005;
  v340 = (v337 ^ 0x1414100) & (16 * ((v336 ^ 0x21800000) & (4 * v339) ^ v339)) ^ (v336 ^ 0x21800000) & (4 * v339) ^ v339;
  v341 = v340 ^ 0x31D95960 ^ (v338 ^ 0x11911000) & (v340 << 8);
  v342 = (v341 << 16) & 0x31D90000 ^ v341 ^ ((v341 << 16) ^ 0x59600000) & (((v338 ^ 0x20484960) << 8) & 0x31D90000 ^ 0x20800000 ^ (((v338 ^ 0x20484960) << 8) ^ 0x59590000) & (v338 ^ 0x20484960));
  v344 = 1117 * (v316 ^ 0xF2) + 1721297 - 8320 * (((4129777 * (1117 * (v316 ^ 0xF2u) + 1721297)) >> 32) >> 3);
  if (v344 >> 6 >= 0x41)
  {
    v344 -= 4160;
  }

  v343 = *(v261 + 4 * (1117 * (LODWORD(STACK[0x300]) ^ 0x66) + 3737482 - 4160 * (((8259553 * (1117 * (LODWORD(STACK[0x300]) ^ 0x66u) + 3737482)) >> 32) >> 3)));
  v345 = v343 ^ (LODWORD(STACK[0x300]) - ((v317 >> 15) & 0xB4) + 1580835930) ^ ((v343 ^ 0x892EA597) + 285115796) ^ ((v343 ^ 0x59840351) - 1068227754) ^ ((v316 ^ 0x60B77E40) - 1714413562 + *(v261 + 4 * v344)) ^ ((v343 ^ 0x2F7886C2) - 1230461241) ^ ((v343 ^ 0x99FDFFFF) + 3006460) ^ ((v313 ^ 0x5D660AA3) - 1714413562 + *(v261 + 4 * (1117 * (v313 ^ 0x4E) - 4160 * ((1032445 * (1117 * (v313 ^ 0x4Eu))) >> 32))));
  LODWORD(STACK[0x304]) ^= v335 ^ ((v345 ^ 0x38167BA1) - 2 * ((v345 ^ 0x38167BA1) & 0x1B68309E ^ v345 & 6) + 459813016) ^ (2 * v342);
  LOBYTE(v343) = *(STACK[0x370] + (1151 * (((*(STACK[0x390] + 26) ^ 0xDFB82279) + 541580631) ^ ((*(STACK[0x390] + 26) ^ 0xD246D6E2) + 767109582) ^ ((*(STACK[0x390] + 26) ^ 0xDFEF4C6) - 234812438)) + 1056618) % 0xC80);
  v346 = (((v343 ^ 0xE4) + 28) ^ ((v343 ^ 0x65) - 101) ^ ((v343 ^ 0x69) - 105)) + 83;
  LOBYTE(v343) = v346 & 0x87 ^ 0xA5;
  v347 = v346 ^ (2 * ((v346 ^ 0x3C) & (2 * ((v346 ^ 0x3C) & (2 * ((v346 ^ 0x3C) & (2 * ((v346 ^ 0x3C) & (2 * ((v346 ^ 0x3C) & (2 * (((2 * v346) & 0x7A ^ 0x3A) & v346 ^ v343)) ^ v343)) ^ v343)) ^ v343)) ^ v343)) ^ v343));
  v348 = *(STACK[0x390] + 21);
  v349 = (((v348 ^ 0xE1) - 105) ^ ((v348 ^ 0xF5) - 125) ^ ((v348 ^ 0xD8) - 80)) + 22;
  v350 = v349 ^ 0xCF;
  v351 = ((v349 ^ 0x28) + 62) ^ v349 ^ ((v349 ^ 0xD1) - 59) ^ ((v349 ^ 0xDC) - 54);
  v352 = *(STACK[0x390] + 29);
  v353 = ((v352 ^ 0xF9) + 67) ^ ((v352 ^ 0xB7) + 13) ^ ((v352 ^ 0xF7) + 77);
  v354 = (v353 - 52) ^ (27 - v353) ^ (((v353 - 52) ^ 0x75) + 110) ^ (((v353 - 52) ^ 0xB3) - 84) ^ (((v353 - 52) ^ 0xDE) - 57);
  v355 = *(STACK[0x370] + (1151 * (((v348 ^ 0x36B8C9AE) + 511664472) ^ ((v348 ^ 0xE704C25D) - 809276763) ^ ((v348 ^ 0xD1BC0B0A) - 109337612)) - 1502070562) % 0xC80);
  v356 = (((v351 ^ (v350 - 37) ^ v348 ^ 0x3E) - 86) ^ ((v351 ^ (v350 - 37) ^ v348 ^ 0xDC) + 76) ^ ((v351 ^ (v350 - 37) ^ v348 ^ 0xC4) + 84)) + (((v355 ^ 0xFD) + 3) ^ ((v355 ^ 0x1A) - 26) ^ ((v355 ^ 0xF) - 15));
  v357 = v356 - 109;
  v358 = (v356 + 19) & 0xA3 | 0x1C;
  v359 = v358 ^ v357 & 0x78;
  v360 = v357 ^ (2 * ((v357 ^ 0x22) & (2 * ((v357 ^ 0x22) & (2 * ((v357 ^ 0x22) & (2 * ((v357 ^ 0x22) & (2 * ((v357 ^ 0x22) & (2 * ((v357 ^ 0x22) & (2 * v358) ^ v359)) ^ v359)) ^ v359)) ^ v359)) ^ v359)) ^ v359));
  v361 = *(STACK[0x370] + (1151 * (((*(STACK[0x390] + 22) ^ 0x4E448115) - 1313112408) ^ ((*(STACK[0x390] + 22) ^ 0x3AFE0478) - 989725749) ^ ((*(STACK[0x390] + 22) ^ 0x74BA85C1u) - 1958380940)) + 1153302) % 0xC80);
  v362 = (((v361 ^ 0x44) - 68) ^ ((v361 ^ 0x54) - 84) ^ ((v361 ^ 0xF8) + 8)) - 127;
  v363 = v362 & 0x75 ^ 0xF7;
  v364 = v362 ^ (2 * ((v362 ^ 0xE) & (2 * ((v362 ^ 0xE) & (2 * ((v362 ^ 0xE) & (2 * ((v362 ^ 0xE) & (2 * ((v362 ^ 0xE) & (2 * (((2 * (v362 & 0xF)) ^ 0x7A) & (v362 ^ 0xE) ^ v363)) ^ v363)) ^ v363)) ^ v363)) ^ v363)) ^ v363));
  v365 = ((v347 << 8) ^ 0xFF470297) & ((*(STACK[0x370] + (1151 * (((*(STACK[0x390] + 24) ^ 0x1904EE86) - 419753577) ^ ((*(STACK[0x390] + 24) ^ 0x45624317) - 1164067832) ^ ((*(STACK[0x390] + 24) ^ 0x5C66AD02u) - 1550233069)) + 2844121) % 0xC80) << 24) ^ 0x51470B97) | (v347 << 8) & 0xF400;
  v366 = *(STACK[0x390] + 17);
  v367 = (((v366 ^ 0x78) - 125) ^ ((v366 ^ 0xF1) + 12) ^ ((v366 ^ 0x91) + 108)) + 86;
  v368 = v367 & 0xEF ^ 0xA0;
  v369 = *(STACK[0x370] + (1151 * (((*(STACK[0x390] + 23) ^ 0x4ACB3392) - 1254830895) ^ ((*(STACK[0x390] + 23) ^ 0xCEC55668) + 825927979) ^ ((*(STACK[0x390] + 23) ^ 0x840E65E3) + 2079431330)) + 1383502) % 0xC80);
  v370 = *(STACK[0x370] + (1151 * (((*(STACK[0x390] + 19) ^ 0xA28EC85A) + 1567700908) ^ ((*(STACK[0x390] + 19) ^ 0xAF188751) + 1357346977) ^ ((*(STACK[0x390] + 19) ^ 0xD964F59) - 227954519)) + 1300630) % 0xC80);
  v371 = (v370 >> 4) & 0xA;
  v372 = v371 ^ v370;
  v373 = v371 ^ ~v370;
  v374 = v367 ^ v366 ^ (2 * ((v367 ^ 0x2E) & (2 * ((v367 ^ 0x2E) & (2 * ((v367 ^ 0x2E) & (2 * ((v367 ^ 0x2E) & (2 * ((v367 ^ 0x2E) & (2 * ((v367 ^ 0xE) & (2 * v368) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368));
  v375 = ((v366 ^ 0x424B5991) - 1112234280) ^ (v366 - 185) ^ ((v366 ^ 0x7AC556BC) - 2059752965);
  v376 = ((v369 >> 4) & 0xA | 0xB0) ^ v369;
  LOBYTE(v366) = v354 ^ v352;
  LOBYTE(v352) = *(STACK[0x370] + (1151 * (((v352 ^ 0xBDF38D5C) + 449483061) ^ ((v352 ^ 0xB3C285C) - 1408945099) ^ ((v352 ^ 0xB6CFA58C) + 301382117)) + 643541954) % 0xC80);
  LOBYTE(v366) = (((v366 ^ 0x6B) + 84) ^ ((v366 ^ 0xC3) - 4) ^ ((v366 ^ 0xF6) - 49)) + (((v352 ^ 0x34) - 52) ^ ((v352 ^ 0x5B) - 91) ^ ((v352 ^ 0x87) + 121)) - 8;
  LOBYTE(v352) = (v366 & 0x89 | 0x32) ^ v366 & 0x64;
  LOBYTE(v366) = v366 ^ (2 * ((v366 ^ 8) & (2 * ((v366 ^ 8) & (2 * ((v366 ^ 8) & (2 * ((v366 ^ 8) & (2 * ((v366 ^ 8) & (2 * ((v366 ^ 8) & (2 * v352) ^ v352)) ^ v352)) ^ v352)) ^ v352)) ^ v352)) ^ v352));
  v377 = (1151 * v375 + 2567881) % 0xC80u;
  v378 = ((((v360 << 16) ^ 0xFFF3FFFF) & ((*(STACK[0x370] + (1151 * (((*(STACK[0x390] + 20) ^ 0x2140B3AF) - 557888484) ^ ((*(STACK[0x390] + 20) ^ 0xFCB533D) - 264983414) ^ ((*(STACK[0x390] + 20) ^ 0x2E8BE080u) - 780918987)) + 2803836) % 0xC80) << 24) ^ 0x445C378F) | (v360 << 16) & 0xA30000) ^ 0x398F2C10) & (v376 ^ 0xFFFF3F5A);
  v379 = *(STACK[0x390] + 25);
  v380 = 1151 * (((*(STACK[0x390] + 27) ^ 0x104EAA12) - 273590854) ^ ((*(STACK[0x390] + 27) ^ 0x7102E95A) - 1896016142) ^ ((*(STACK[0x390] + 27) ^ 0x614C4362) - 1632387894)) + 1339764;
  v381 = (((v379 ^ 0x17) + 45) ^ ((v379 ^ 0xD2) - 22) ^ ((v379 ^ 0x52) + 106)) - 9;
  v382 = ((*(STACK[0x370] + (1151 * (((*(STACK[0x390] + 16) ^ 0xF523CD76) + 182203068) ^ ((*(STACK[0x390] + 16) ^ 0xCDF0C3A3) + 839859311) ^ ((*(STACK[0x390] + 16) ^ 0x38D30E0E) - 953355836)) + 2969580) % 0xC80) << 24) ^ 0x3F10FF03) & (*&v373 | 0xFFFFFF00) | v372 & 0xFC;
  v383 = *(STACK[0x370] + (1151 * (((*(STACK[0x390] + 18) ^ 0xD3F864D) - 222266912) ^ ((*(STACK[0x390] + 18) ^ 0xF9188560) + 115833587) ^ ((*(STACK[0x390] + 18) ^ 0xF4270344) + 198769879)) + 898931) % 0xC80);
  v384 = (((v383 ^ 1) - 1) ^ ((v383 ^ 0x26) - 38) ^ ((v383 ^ 0xCF) + 49)) + 82;
  v385 = v384 & 0x48 ^ 0x4D;
  v386 = v384 ^ (2 * ((v384 ^ 0x3E) & (2 * ((v384 ^ 0x3E) & (2 * ((v384 ^ 0x3E) & (2 * ((v384 ^ 0x3E) & (2 * ((v384 ^ 0x3E) & (2 * ((v384 ^ 0x3E) & 0x36 ^ v385)) ^ v385)) ^ v385)) ^ v385)) ^ v385)) ^ v385));
  v387 = ((v381 ^ 0x44) + 8) ^ v381 ^ ((v381 ^ 0x61) + 35) ^ ((v381 ^ 0xA6) - 26) ^ ((v381 ^ 0x3F) + 125) ^ v379;
  LOBYTE(v375) = *(STACK[0x370] + (1151 * (((v379 ^ 0xA229087) + 1444886615) ^ ((v379 ^ 0x47EDD4E) + 1480816032) ^ ((v379 ^ 0xE5C4D6Bu) + 1382147515)) + 1189884881) % 0xC80);
  LOBYTE(v348) = (((v387 ^ 4) + 79) ^ ((v387 ^ 0x7E) + 53) ^ ((v387 ^ 0x51) + 28)) + (((v375 ^ 0xC4) + 60) ^ ((v375 ^ 0x98) + 104) ^ ((v375 ^ 0xB4) + 76)) - 67;
  LOBYTE(v375) = v348 & 0xB1 ^ 0xF4;
  LOBYTE(v348) = v348 ^ (2 * ((v348 ^ 0x48) & (2 * ((v348 ^ 0x48) & (2 * ((v348 ^ 0x48) & (2 * ((v348 ^ 0x48) & (2 * ((v348 ^ 0x48) & (2 * (v348 & (2 * v348) & 0x12 ^ v375)) ^ v375)) ^ v375)) ^ v375)) ^ v375)) ^ v375));
  v388 = (((*(STACK[0x370] + v377) ^ 0xAE) + 82) ^ ((*(STACK[0x370] + v377) ^ 0xAB) + 85) ^ ((*(STACK[0x370] + v377) ^ 0xED) + 19)) + (((v374 ^ 0xA9) - 64) ^ ((v374 ^ 0x99) - 112) ^ ((v374 ^ 0xC7) - 46)) + 74;
  LOBYTE(v375) = v388 & 0xBA ^ 7;
  LOBYTE(v377) = v388 ^ (2 * ((v388 ^ 0x3C) & (2 * ((v388 ^ 0x3C) & (2 * ((v388 ^ 0x3C) & (2 * ((v388 ^ 0x3C) & (2 * ((v388 ^ 0x3C) & (2 * ((v388 ^ 0x3C) & 6 ^ v375)) ^ v375)) ^ v375)) ^ v375)) ^ v375)) ^ v375));
  v389 = (1151 * (((*(STACK[0x390] + 31) ^ 0x61E87510) - 1642624449) ^ ((*(STACK[0x390] + 31) ^ 0x85960CB9) + 2053763992) ^ ((*(STACK[0x390] + 31) ^ 0xE47E7979) + 461473368)) + 1195889) % 0xC80;
  v390 = LODWORD(STACK[0x338]) ^ (v364 << 8) & 0xBD00 ^ (v378 ^ (v376 & 0x60 | 0xFAE25911)) & ((v364 << 8) ^ 0xFFFFF0FF);
  v391 = LODWORD(STACK[0x304]) ^ 0xEB08107A;
  v392 = v391 ^ LODWORD(STACK[0x33C]);
  v393 = v391 ^ v390;
  v394 = ((v386 << 8) ^ 0xFFD520FF) & (v382 ^ 0x7DC55513) | (v386 << 8) & 0x5555;
  LOBYTE(v343) = *(STACK[0x370] + (1151 * (((*(STACK[0x390] + 30) ^ 0x7621C3E6) - 1981924108) ^ ((*(STACK[0x390] + 30) ^ 0xBF1D56FE) + 1088596460) ^ ((*(STACK[0x390] + 30) ^ 0xC93C959E) + 918776460)) + 1018635) % 0xC80);
  LOBYTE(v343) = (((v343 ^ 0x7A) - 122) ^ ((v343 ^ 0x44) - 68) ^ ((v343 ^ 0xD6) + 42)) + 90;
  LOBYTE(v391) = v343 & 0x28 ^ 0x59;
  LOBYTE(v343) = v343 ^ (2 * ((v343 ^ 0x36) & (2 * ((v343 ^ 0x36) & (2 * ((v343 ^ 0x36) & (2 * ((v343 ^ 0x36) & (2 * ((v343 ^ 0x36) & (2 * ((v343 ^ 0x36) & 0x1E ^ v391)) ^ v391)) ^ v391)) ^ v391)) ^ v391)) ^ v391));
  v395 = v394 & 0xA695B618 ^ ((v377 << 16) ^ 0x595E49E7) & (v394 ^ 0x7A2A20E3) ^ LODWORD(STACK[0x304]);
  v396 = ((v348 << 16) ^ 0x426ED0FA) & (v365 ^ 0x72B8E169) ^ v365 & 0xBD062F04;
  v397 = v392 ^ LODWORD(STACK[0xDA0]);
  v398 = v396 & 0x16F6C18 ^ (v396 ^ 0x8C900001) & ((*(STACK[0x370] + v380 % 0xC80) >> 4) & 0xA ^ *(STACK[0x370] + v380 % 0xC80) ^ 0xFE90933B) ^ v392;
  v399 = ((((v343 << 8) | 0xFFFF01FF) & ((v366 << 16) ^ 0x4465A683) | (v343 << 8) & 0x5900) ^ 0x35A6CA43) & ((*(STACK[0x370] + v389) >> 4) & 0xA ^ *(STACK[0x370] + v389) ^ 0x7FFFFFE7) | ((*(STACK[0x370] + v389) >> 4) & 0xA ^ *(STACK[0x370] + v389)) & 0x3F;
  v400 = v399 & 0x3C7C1221 ^ (v399 ^ 0x8E02C10A) & (((*(STACK[0x370] + (1151 * (((*(STACK[0x390] + 28) ^ 0xFAAE876) - 262858962) ^ ((*(STACK[0x390] + 28) ^ 0x29B7B0DC) - 699904120) ^ ((*(STACK[0x390] + 28) ^ 0x261D588Fu) - 639457323)) + 2849876) % 0xC80) ^ 0x6C) << 24) ^ 0x5983EDDE) ^ (v397 - ((2 * v397) & 0x9137EA62) - 929303247);
  v401 = v400 ^ 0xE98D4537;
  v402 = HIBYTE(v400) ^ 0xEE;
  v403 = 1117 * (((v394 & 0xB618 ^ (v394 ^ 0x20E3) & 0x49E7 ^ LOWORD(STACK[0x304]) ^ 0xB264) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0x33C]) = v403 - 4160 * (((4129777 * v403) >> 32) >> 2);
  v404 = 1117 * (((v398 ^ 0x46AA) >> 8) ^ 0xAE) + 2586972;
  BYTE2(v391) = BYTE2(v393) ^ 0xB0;
  v405 = 1117 * (((v393 ^ 0x900) >> 8) ^ 0xB1) + 2586972;
  v406 = *(v261 + 4 * (1117 * (HIBYTE(v393) ^ 0xDE) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v393) ^ 0xDE) + 575255)) >> 32) >> 1)));
  v407 = (v406 ^ 0xD18CAB80) & (2 * (v406 & 0x99D02005)) ^ v406 & 0x99D02005;
  v408 = ((2 * (v406 ^ 0xF08CAB8A)) ^ 0xD2B9171E) & (v406 ^ 0xF08CAB8A) ^ (2 * (v406 ^ 0xF08CAB8A)) & 0x695C8B8E;
  v409 = (v408 ^ 0x4000000C) & (4 * v407) ^ v407;
  v410 = ((4 * (v408 ^ 0x29448881)) ^ 0xA5722E3C) & (v408 ^ 0x29448881) ^ (4 * (v408 ^ 0x29448881)) & 0x695C8B8C;
  v411 = (v410 ^ 0x21500A00) & (16 * v409) ^ v409;
  v412 = ((16 * (v410 ^ 0x480C8183)) ^ 0x95C8B8F0) & (v410 ^ 0x480C8183) ^ (16 * (v410 ^ 0x480C8183)) & 0x695C8B80;
  v413 = v411 ^ 0x695C8B8F ^ (v412 ^ 0x1488800) & (v411 << 8);
  v414 = (((4 * v406) ^ (8 * ((v413 << 16) & 0x95C0000 ^ v413 ^ ((v413 << 16) ^ 0xB8F0000) & (((v412 ^ 0x6814030F) << 8) & 0x95C0000 ^ 0x1540000 ^ (((v412 ^ 0x6814030F) << 8) ^ 0x1C8B0000) & (v412 ^ 0x6814030F)))) ^ 0x65C4DC6C) - 1367283032) ^ (v406 + 1315671559);
  LODWORD(STACK[0xDA0]) = 1117 * (BYTE1(v401) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v401) ^ 0xAEu) + 2586972)) >> 32) >> 2);
  LODWORD(STACK[0x390]) = 1117 * (HIBYTE(v395) ^ 0x7B) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v395) ^ 0x7B) + 575255)) >> 32) >> 1);
  v415 = 1117 * (v393 ^ 0x2B) + 1147159 - 4160 * (((2064889 * (1117 * (v393 ^ 0x2Bu) + 1147159)) >> 32) >> 1);
  v416 = *(v261 + 4 * (1117 * v402 + 575255 - 4160 * (((2064889 * (1117 * v402 + 575255)) >> 32) >> 1)));
  v417 = (v416 ^ 0x15C39081) & (2 * (v416 & 0x99D02005)) ^ v416 & 0x99D02005;
  v418 = ((2 * (v416 ^ 0x25439081)) ^ 0x79276108) & (v416 ^ 0x25439081) ^ (2 * (v416 ^ 0x25439081)) & 0xBC93B084;
  v419 = (v418 ^ 0x28010000) & (4 * v417) ^ v417;
  v420 = ((4 * (v418 ^ 0x84909084)) ^ 0xF24EC210) & (v418 ^ 0x84909084) ^ (4 * (v418 ^ 0x84909084)) & 0xBC93B080;
  v421 = (v420 ^ 0xB0028000) & (16 * v419) ^ v419;
  v422 = ((16 * (v420 ^ 0xC913084)) ^ 0xC93B0840) & (v420 ^ 0xC913084) ^ (16 * (v420 ^ 0xC913084)) & 0xBC93B080;
  v423 = v421 ^ 0xBC93B084 ^ (v422 ^ 0x88130000) & (v421 << 8);
  v424 = *(v261 + 4 * (v405 - 4160 * (((4129777 * v405) >> 32) >> 2))) - 1915001779;
  v425 = (v424 >> 8) ^ (v424 >> 4) ^ (*(v261 + 4 * (1117 * (v395 ^ 0xD8) + 1147159 - 4160 * (((2064889 * (1117 * (v395 ^ 0xD8u) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (v416 + 1315671559) ^ (((4 * v416) ^ (8 * ((v423 << 16) & 0x1C930000 ^ v423 ^ ((v423 << 16) ^ 0x10840000) & (((v422 ^ 0x3480B084) << 8) & 0x1C930000 ^ 0xC030000 ^ (((v422 ^ 0x3480B084) << 8) ^ 0x13B00000) & (v422 ^ 0x3480B084)))) ^ 0x7DD0434) - 1367283032);
  v426 = *(v261 + 4 * (v404 - 4160 * (((4129777 * v404) >> 32) >> 2))) - 1915001779;
  v427 = *(v261 + 4 * (1117 * (HIBYTE(v398) ^ 0xD8) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v398) ^ 0xD8) + 575255)) >> 32) >> 1)));
  v428 = (v426 >> 8) ^ (v426 >> 4) ^ (*(v261 + 4 * v415) - 1488286341);
  v429 = ((2 * (v427 & 0x99D02005)) & 0x200400A | v427 & 0x99D02005) ^ (2 * (v427 & 0x99D02005)) & (v427 ^ 0xD789E9DE);
  v430 = ((2 * (v427 ^ 0xD789E9DE)) ^ 0x9CB393B6) & (v427 ^ 0xD789E9DE) ^ (2 * (v427 ^ 0xD789E9DE)) & 0x4E59C9DA;
  v431 = (v430 ^ 0xC09C851) & (4 * v429) ^ v429;
  v432 = ((4 * (v430 ^ 0x42484849)) ^ 0x3967276C) & (v430 ^ 0x42484849) ^ (4 * (v430 ^ 0x42484849)) & 0x4E59C9D8;
  v433 = (v432 ^ 0x8410140) & (16 * v431) ^ v431;
  v434 = ((16 * (v432 ^ 0x4618C893)) ^ 0xE59C9DB0) & (v432 ^ 0x4618C893) ^ (16 * (v432 ^ 0x4618C893)) & 0x4E59C9D0;
  v435 = v433 ^ 0x4E59C9DB ^ (v434 ^ 0x44188900) & (v433 << 8);
  v436 = *(v261 + 4 * (1117 * (BYTE2(v398) ^ 0xCB) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v398) ^ 0xCBu) + 2298786)) >> 32) >> 2)));
  v437 = 1117 * (BYTE2(v391) ^ 0xB6) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v391) ^ 0xB6u) + 2298786)) >> 32) >> 2);
  v438 = 1117 * (v398 ^ 0x16) + 1147159 - 4160 * (((2064889 * (1117 * (v398 ^ 0x16u) + 1147159)) >> 32) >> 1);
  v439 = (v436 ^ 0xD19F1F41) & (2 * (v436 & 0x99D02005)) ^ v436 & 0x99D02005;
  v440 = ((2 * (v436 ^ 0xD2BF1F49)) ^ 0x96DE7E98) & (v436 ^ 0xD2BF1F49) ^ (2 * (v436 ^ 0xD2BF1F49)) & 0x4B6F3F4C;
  v441 = (v440 ^ 0x2400008) & (4 * v439) ^ v439;
  v442 = ((4 * (v440 ^ 0x49210144)) ^ 0x2DBCFD30) & (v440 ^ 0x49210144) ^ (4 * (v440 ^ 0x49210144)) & 0x4B6F3F48;
  v443 = (v442 ^ 0x92C3D00) & (16 * v441) ^ v441;
  v444 = ((16 * (v442 ^ 0x4243024C)) ^ 0xB6F3F4C0) & (v442 ^ 0x4243024C) ^ (16 * (v442 ^ 0x4243024C)) & 0x4B6F3F40;
  v445 = v443 ^ 0x4B6F3F4C ^ (v444 ^ 0x2633400) & (v443 << 8);
  v446 = *(v261 + 4 * (1117 * (BYTE2(v395) ^ 0x62) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v395) ^ 0x62u) + 2298786)) >> 32) >> 2)));
  v447 = LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x30C]) ^ (*(v261 + 4 * LODWORD(STACK[0x310])) + 1278375247) ^ v424 ^ v436 ^ (v425 - ((2 * v425) & 0xA491F1EA) + 1380514037) ^ (2 * ((v445 << 16) & 0x4B6F0000 ^ v445 ^ ((v445 << 16) ^ 0x3F4C0000) & (((v444 ^ 0x490C0B0C) << 8) & 0x4B6F0000 ^ (((v444 ^ 0x490C0B0C) << 8) ^ 0x6F3F0000) & (v444 ^ 0x490C0B0C) ^ 0x400000)));
  v448 = *(v261 + 4 * LODWORD(STACK[0x33C])) - 1915001779;
  v449 = v448 ^ (v448 >> 8) ^ (v448 >> 4) ^ (v427 + 1315671559) ^ (*(v261 + 4 * (1117 * (v401 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v401 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((4 * v427) ^ (8 * ((v435 << 16) & 0xE590000 ^ v435 ^ ((v435 << 16) ^ 0x9DB0000) & (((v434 ^ 0xA41404B) << 8) & 0xE590000 ^ 0x6100000 ^ (((v434 ^ 0xA41404B) << 8) ^ 0x19C90000) & (v434 ^ 0xA41404B)))) ^ 0x5746CECC) - 1367283032);
  v450 = *(v261 + 4 * v437);
  v451 = (v450 ^ 0x9DCA8431) & (2 * (v450 & 0x99D02005)) ^ v450 & 0x99D02005;
  v452 = ((2 * (v450 ^ 0xAFEA8431)) ^ 0x6C754868) & (v450 ^ 0xAFEA8431) ^ (2 * (v450 ^ 0xAFEA8431)) & 0x363AA434;
  v453 = (v452 ^ 0x24000020) & (4 * v451) ^ v451;
  v454 = ((4 * (v452 ^ 0x120AA414)) ^ 0xD8EA90D0) & (v452 ^ 0x120AA414) ^ (4 * (v452 ^ 0x120AA414)) & 0x363AA430;
  v455 = (v454 ^ 0x102A8010) & (16 * v453) ^ v453;
  v456 = ((16 * (v454 ^ 0x26102424)) ^ 0x63AA4340) & (v454 ^ 0x26102424) ^ (16 * (v454 ^ 0x26102424)) & 0x363AA400;
  v457 = v455 ^ 0x363AA434 ^ (v456 ^ 0x222A0000) & (v455 << 8);
  v458 = (v457 << 16) & 0x363A0000 ^ v457 ^ ((v457 << 16) ^ 0x24340000) & (((v456 ^ 0x1410A434) << 8) & 0x363A0000 ^ 0x41A0000 ^ (((v456 ^ 0x1410A434) << 8) ^ 0x3AA40000) & (v456 ^ 0x1410A434));
  v459 = v449 - ((2 * v449) & 0x44AD874C);
  v460 = *(v261 + 4 * (1117 * (BYTE2(v401) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v401) ^ 0x7Fu) + 2298786)) >> 32) >> 2)));
  v461 = v459 + 576111526;
  v462 = (v460 ^ 0x95943CC1) & (2 * (v460 & 0x99D02005)) ^ v460 & 0x99D02005;
  v463 = ((2 * (v460 ^ 0x97143CC9)) ^ 0x1D883998) & (v460 ^ 0x97143CC9) ^ (2 * (v460 ^ 0x97143CC9)) & 0xEC41CCC;
  v464 = (v463 ^ 0xC800008) & (4 * v462) ^ v462;
  v465 = ((4 * (v463 ^ 0x2440444)) ^ 0x3B107330) & (v463 ^ 0x2440444) ^ (4 * (v463 ^ 0x2440444)) & 0xEC41CC8;
  v466 = v464 ^ 0xEC41CCC ^ (v465 ^ 0xA001000) & (16 * v464);
  v467 = ((16 * (v465 ^ 0x4C40CCC)) ^ 0xEC41CCC0) & (v465 ^ 0x4C40CCC) ^ (16 * (v465 ^ 0x4C40CCC)) & 0xEC41CC0;
  v468 = v467 & 0xFD5BE380 ^ v466 ^ (v467 ^ 0xC400C8C) & ((v466 << 8) ^ 0x39472F80);
  v469 = ((v467 << 8) ^ 0xBD572380) & (v467 ^ 0xC400C8C) ^ v467 & 0xFD5BE380;
  v470 = *(v261 + 4 * LODWORD(STACK[0x390]));
  v471 = LODWORD(STACK[0x354]) ^ (*(v261 + 4 * LODWORD(STACK[0x324])) + 1278375247) ^ LODWORD(STACK[0x328]) ^ (8 * (LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x398]))) ^ LODWORD(STACK[0x320]) ^ v426 ^ (v470 + 1315671559) ^ v460 ^ (((4 * (((v470 ^ 0x6677875B) + 1067951968) ^ v470 ^ ((v470 ^ 0x2E44E0D0) + 932495573) ^ ((v470 ^ 0x11B7478F) + 140994444) ^ ((v470 ^ 0x3FABFFFF) + 645652476))) ^ 0x98BF7FEC) - 1367283032) ^ (v428 - ((2 * v428) & 0x6CEF10A6) - 1233680301) ^ (2 * (v469 & 0x7D5BE380 ^ v468 ^ ((v468 << 16) ^ 0xE117E382) & (v469 ^ 0x2840000) ^ ((v468 << 16) ^ 0xE117E382) & 0xEC40080)) ^ 0x68B01FBE;
  v472 = (*(v261 + 4 * LODWORD(STACK[0x314])) + 1278375247) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x378]) ^ (8 * (LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x3A4]))) ^ LODWORD(STACK[0x31C]) ^ v450 ^ (2 * v458) ^ v461;
  v473 = v471 - ((2 * v471) & 0x5381B29A) + 700504397;
  v474 = *(v261 + 4 * LODWORD(STACK[0xDA0])) - 1915001779;
  v475 = LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x388]) ^ (8 * (LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x3B4]))) ^ (*(v261 + 4 * LODWORD(STACK[0x32C])) + 1278375247) ^ LODWORD(STACK[0x330]) ^ v474 ^ (v474 >> 4) ^ (v474 >> 8) ^ v446 ^ ((v446 ^ 0x4044B367) - 644574364) ^ ((v446 ^ 0x669EC7FB) - 11606016) ^ ((v446 ^ 0x3F8A5699) - 1504020834) ^ ((v446 ^ 0x7F7FFDFE) - 424681989) ^ (*(v261 + 4 * v438) - 1488286341) ^ (v414 - ((2 * v414) & 0x3FD97D06) - 1611874685);
  v476 = v472 ^ 0xBDB6D508;
  v477 = HIBYTE(v472) ^ 0xBA;
  v478 = v475 ^ 0xD245C3A9;
  v479 = 1117 * ((((v447 ^ 0xA5F9) >> 8) | 0xAE) ^ ((v447 ^ 0xFAC6A5F9) >> 8) & 0xAE) + 2586972;
  LODWORD(STACK[0xDA0]) = v479 - 4160 * (((4129777 * v479) >> 32) >> 2);
  v480 = 1117 * v477 + 575255 - 4160 * (((2064889 * (1117 * v477 + 575255)) >> 32) >> 1);
  v481 = *(v261 + 4 * (1117 * (HIBYTE(v447) ^ 0xFD) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v447) ^ 0xFD) + 575255)) >> 32) >> 1)));
  v482 = (v481 ^ 0x99DA1FE4) & (2 * (v481 & 0x99D02005)) ^ v481 & 0x99D02005;
  v483 = ((2 * (v481 ^ 0xBAFA1FEE)) ^ 0x46547FD6) & (v481 ^ 0xBAFA1FEE) ^ (2 * (v481 ^ 0xBAFA1FEE)) & 0x232A3FEA;
  v484 = (v483 ^ 0x2000000) & (4 * v482) ^ v482;
  v485 = ((4 * (v483 ^ 0x212A0029)) ^ 0x8CA8FFAC) & (v483 ^ 0x212A0029) ^ (4 * (v483 ^ 0x212A0029)) & 0x232A3FE8;
  v486 = (v485 ^ 0x283FA0) & (16 * v484) ^ v484;
  v487 = ((16 * (v485 ^ 0x23020043)) ^ 0x32A3FEB0) & (v485 ^ 0x23020043) ^ (16 * (v485 ^ 0x23020043)) & 0x232A3FE0;
  v488 = v486 ^ 0x232A3FEB ^ (v487 ^ 0x22223E00) & (v486 << 8);
  v489 = (((4 * v481) ^ (8 * ((v488 << 16) & 0x32A0000 ^ v488 ^ ((v488 << 16) ^ 0x1FEB0000) & (((v487 ^ 0x108014B) << 8) & 0x32A0000 ^ (((v487 ^ 0x108014B) << 8) ^ 0xA3F0000) & (v487 ^ 0x108014B) ^ 0x1000000))) ^ 0x67417F4C) - 1367283032) ^ (v481 + 1315671559);
  v490 = *(v261 + 4 * v480);
  v491 = (2 * (v490 & 0x99D02005)) & 0x20804000 ^ (v490 & 0x99D02005 | 0x20004100) ^ (2 * (v490 & 0x99D02005)) & (v490 ^ 0x3906E3C1);
  v492 = (2 * (v490 ^ 0x3906E3C1)) & 0xA0D6C3C4 ^ 0xA0524044 ^ ((2 * (v490 ^ 0x3906E3C1)) ^ 0x41AD8788) & (v490 ^ 0x3906E3C1);
  v493 = (4 * v491) & 0xA0C08004 ^ v491 ^ ((4 * v491) ^ 0x80010400) & v492;
  v494 = (4 * v492) & 0xA0D6C3C0 ^ 0x2084C0C4 ^ ((4 * v492) ^ 0x835B0F10) & v492;
  v495 = (16 * v493) & 0xA0D6C3C0 ^ v493 ^ ((16 * v493) ^ 0x41000) & v494;
  v496 = (16 * v494) & 0xA0D6C3C0 ^ 0xA092C384 ^ ((16 * v494) ^ 0xD6C3C40) & v494;
  v497 = v495 ^ (v495 << 8) & 0xA0D6C300 ^ ((v495 << 8) ^ 0x4410000) & v496 ^ 0x9282C4;
  LODWORD(STACK[0x3A4]) = 1117 * ((v471 - ((2 * v471) & 0x9A) + 77) ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * ((v471 - ((2 * v471) & 0x9A) + 77) ^ 0xBCu) + 1147159)) >> 32) >> 1);
  v498 = *(v261 + 4 * (1117 * (HIBYTE(v475) ^ 0xD5) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v475) ^ 0xD5) + 575255)) >> 32) >> 1)));
  LODWORD(STACK[0x3B4]) = 1117 * (BYTE1(v476) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v476) ^ 0xAEu) + 2586972)) >> 32) >> 2);
  v499 = *(v261 + 4 * (1117 * (BYTE1(v473) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v473) ^ 0xAEu) + 2586972)) >> 32) >> 2))) - 1915001779;
  v500 = (v499 >> 8) ^ (v499 >> 4) ^ (v490 + 1315671559) ^ (*(v261 + 4 * (1117 * (v447 ^ 0x45) + 1147159 - 4160 * (((2064889 * (1117 * (v447 ^ 0x45u) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((4 * v490) ^ (8 * ((v497 << 16) & 0xD60000 ^ v497 ^ ((v497 << 16) ^ 0x3C40000) & ((v496 << 8) & 0xD60000 ^ 0x140000 ^ ((v496 << 8) ^ 0x16C30000) & v496))) ^ 0x67D69E34) - 1367283032);
  v501 = *(v261 + 4 * (1117 * (BYTE2(v478) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v478) ^ 0x7Fu) + 2298786)) >> 32) >> 2)));
  v502 = ((2 * (v501 & 0x99D02005)) & 0xE07FFFFF | v501 & 0x99D02005) ^ (2 * (v501 & 0x99D02005)) & (v501 ^ 0xF5A8E64F);
  v503 = ((2 * (v501 ^ 0xF5A8E64F)) ^ 0xD8F18C94) & (v501 ^ 0xF5A8E64F) ^ (2 * (v501 ^ 0xF5A8E64F)) & 0x6C78C64A;
  v504 = (v503 ^ 0x4848C242) & (4 * v502) ^ v502;
  v505 = ((4 * (v503 ^ 0x2408424A)) ^ 0xB1E31928) & (v503 ^ 0x2408424A) ^ (4 * (v503 ^ 0x2408424A)) & 0x6C78C648;
  v506 = (v505 ^ 0x20600000) & (16 * v504) ^ v504;
  v507 = ((16 * (v505 ^ 0x4C18C642)) ^ 0xC78C64A0) & (v505 ^ 0x4C18C642) ^ (16 * (v505 ^ 0x4C18C642)) & 0x6C78C640;
  v508 = v506 ^ 0x6C78C64A ^ (v507 ^ 0x44084400) & (v506 << 8);
  v509 = v500 - ((2 * v500) & 0xE77982A6) - 205733549;
  v510 = *(v261 + 4 * (1117 * (BYTE2(v476) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v476) ^ 0x7Fu) + 2298786)) >> 32) >> 2)));
  v511 = (v510 ^ 0x9D901CB0) & (2 * (v510 & 0x99D02005)) ^ v510 & 0x99D02005;
  v512 = ((2 * (v510 ^ 0x9E101CB2)) ^ 0xF80796E) & (v510 ^ 0x9E101CB2) ^ (2 * (v510 ^ 0x9E101CB2)) & 0x7C03CB6;
  v513 = (v512 ^ 0x7800024) & (4 * v511) ^ v511;
  v514 = ((4 * (v512 ^ 0x400491)) ^ 0x1F00F2DC) & (v512 ^ 0x400491) ^ (4 * (v512 ^ 0x400491)) & 0x7C03CB4;
  v515 = (v514 ^ 0x7003090) & (16 * v513) ^ v513;
  v516 = ((16 * (v514 ^ 0xC00C23)) ^ 0x7C03CB70) & (v514 ^ 0xC00C23) ^ (16 * (v514 ^ 0xC00C23)) & 0x7C03CB0;
  v517 = v515 ^ 0x7C03CB7 ^ (v516 ^ 0x4000800) & (v515 << 8);
  v518 = (v517 << 16) & 0x7C00000 ^ v517 ^ ((v517 << 16) ^ 0x3CB70000) & (((v516 ^ 0x3C03487) << 8) & 0x7C00000 ^ (((v516 ^ 0x3C03487) << 8) ^ 0x403C0000) & (v516 ^ 0x3C03487) ^ 0x7C00000);
  v519 = *(v261 + 4 * LODWORD(STACK[0xDA0])) - 1915001779;
  v520 = v519 ^ (v519 >> 8) ^ (v519 >> 4) ^ (v498 + 1315671559) ^ (*(v261 + 4 * (1117 * (v476 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v476 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((4 * (((v498 ^ 0x8B1C5C31) + 315391030) ^ v498 ^ ((v498 ^ 0x37135623) + 784561704) ^ ((v498 ^ 0x25CF2EB4) + 1008668337) ^ ((v498 ^ 0x3FEFFB5D) + 641719130))) ^ 0x98BF7FEC) - 1367283032);
  v521 = *(v261 + 4 * (1117 * (BYTE2(v473) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v473) ^ 0x7Fu) + 2298786)) >> 32) >> 2)));
  v522 = (v521 ^ 0x91970F34) & (2 * (v521 & 0x99D02005)) ^ v521 & 0x99D02005;
  v523 = ((2 * (v521 ^ 0x91370F34)) ^ 0x11CE5E62) & (v521 ^ 0x91370F34) ^ (2 * (v521 ^ 0x91370F34)) & 0x8E72F30;
  v524 = (v523 ^ 0xE000E0) & (4 * v522) ^ v522;
  v525 = ((4 * (v523 ^ 0x8212111)) ^ 0x239CBCC4) & (v523 ^ 0x8212111) ^ (4 * (v523 ^ 0x8212111)) & 0x8E72F30;
  v526 = (v525 ^ 0x842C00) & (16 * v524) ^ v524;
  v527 = ((16 * (v525 ^ 0x8630331)) ^ 0x8E72F310) & (v525 ^ 0x8630331) ^ (16 * (v525 ^ 0x8630331)) & 0x8E72F10;
  v528 = v526 ^ 0x8E72F31 ^ (v527 ^ 0x8622300) & (v526 << 8);
  v529 = LODWORD(STACK[0x360]) ^ (*(v261 + 4 * LODWORD(STACK[0x350])) + 1278375247) ^ LODWORD(STACK[0x3B8]) ^ (8 * (LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x3B8]))) ^ LODWORD(STACK[0x34C]) ^ v521 ^ (v520 - ((2 * v520) & 0x43AF8C2C) - 1579694570) ^ (2 * ((v528 << 16) & 0x8E70000 ^ v528 ^ ((v528 << 16) ^ 0x2F310000) & (((v527 ^ 0x850C21) << 8) & 0x8E70000 ^ 0x8C00000 ^ (((v527 ^ 0x850C21) << 8) ^ 0x672F0000) & (v527 ^ 0x850C21))));
  v530 = (*(v261 + 4 * LODWORD(STACK[0x344])) + 1278375247) ^ LODWORD(STACK[0x3BC]) ^ (8 * (LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3C8]))) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x348]) ^ v501 ^ v499 ^ (2 * ((v508 << 16) & 0x6C780000 ^ v508 ^ ((v508 << 16) ^ 0x464A0000) & (((v507 ^ 0x2870824A) << 8) & 0x6C780000 ^ 0x4380000 ^ (((v507 ^ 0x2870824A) << 8) ^ 0x78C60000) & (v507 ^ 0x2870824A)))) ^ v509;
  v531 = *(v261 + 4 * (1117 * (BYTE1(v478) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v478) ^ 0xAEu) + 2586972)) >> 32) >> 2))) - 1915001779;
  v532 = *(v261 + 4 * (1117 * (HIBYTE(v473) ^ 7) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v473) ^ 7) + 575255)) >> 32) >> 1)));
  v533 = (*(v261 + 4 * LODWORD(STACK[0x35C])) + 1278375247) ^ LODWORD(STACK[0x364]) ^ LODWORD(STACK[0x3C0]) ^ (8 * (LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x3CC]))) ^ LODWORD(STACK[0x358]) ^ v510 ^ v531 ^ (*(v261 + 4 * LODWORD(STACK[0x3A4])) - 1488286341) ^ (v531 >> 4) ^ (v531 >> 8) ^ (2 * v518) ^ (v489 - ((2 * v489) & 0x86125C5A) - 1022808531);
  v534 = *(v261 + 4 * (1117 * (BYTE2(v447) ^ 0xB9) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v447) ^ 0xB9u) + 2298786)) >> 32) >> 2)));
  v535 = (v534 ^ 0x19D30D54) & (2 * (v534 & 0x99D02005)) ^ v534 & 0x99D02005;
  v536 = ((2 * (v534 ^ 0x8730D56)) ^ 0x23465AA6) & (v534 ^ 0x8730D56) ^ (2 * (v534 ^ 0x8730D56)) & 0x91A32D52;
  v537 = (v536 ^ 0x1000000) & (4 * v535) ^ v535;
  v538 = ((4 * (v536 ^ 0x90A12551)) ^ 0x468CB54C) & (v536 ^ 0x90A12551) ^ (4 * (v536 ^ 0x90A12551)) & 0x91A32D50;
  v539 = (v538 ^ 0x802540) & (16 * v537) ^ v537;
  v540 = ((16 * (v538 ^ 0x91230813)) ^ 0x1A32D530) & (v538 ^ 0x91230813) ^ (16 * (v538 ^ 0x91230813)) & 0x91A32D50;
  v541 = v539 ^ 0x91A32D53 ^ (v540 ^ 0x10220500) & (v539 << 8);
  v542 = *(v261 + 4 * (1117 * (v478 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v478 ^ 0xBCu) + 1147159)) >> 32) >> 1)));
  v543 = *(v261 + 4 * LODWORD(STACK[0x3B4])) - 1915001779;
  v544 = LODWORD(STACK[0x3D4]) ^ (*(v261 + 4 * LODWORD(STACK[0x3D0])) + 1278375247) ^ (8 * (LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3D4]))) ^ LODWORD(STACK[0xDB0]) ^ LODWORD(STACK[0x3A8]) ^ v543 ^ (v543 >> 4) ^ (v543 >> 8) ^ (v532 + 1315671559) ^ v534 ^ (v542 - ((2 * v542 + 244652790) & 0xCBDC138) - 1381405161) ^ (((4 * (((v532 ^ 0x91A7F8F4) + 142072049) ^ v532 ^ ((v532 ^ 0x136B964C) + 180074057) ^ ((v532 ^ 0x13344EBC) + 182742713) ^ ((v532 ^ 0x37D7FFFF) + 772268028))) ^ 0x98BF7FEC) - 1367283032) ^ (2 * ((v541 << 16) & 0x11A30000 ^ v541 ^ ((v541 << 16) ^ 0x2D530000) & (((v540 ^ 0x81812843) << 8) & 0x11A30000 ^ 0x10820000 ^ (((v540 ^ 0x81812843) << 8) ^ 0x232D0000) & (v540 ^ 0x81812843))));
  v545 = 1117 * (v530 ^ 0x13) + 1147159 - 4160 * (((2064889 * (1117 * (v530 ^ 0x13u) + 1147159)) >> 32) >> 1);
  v546 = v529 ^ 0x2109138B;
  v547 = 1117 * (((v529 ^ 0x138B) >> 8) ^ 0xAE) + 2586972;
  v548 = 1117 * (((v533 ^ 0x6BDAF189) >> 16) ^ 0x7F) + 2298786;
  v549 = v548 - 4160 * (((4129777 * v548) >> 32) >> 2);
  v550 = 1117 * (((v533 ^ 0xF189) >> 8) ^ 0xAE) + 2586972;
  v551 = v550 - 4160 * (((4129777 * v550) >> 32) >> 2);
  v552 = 1117 * (((v530 ^ 0xB861F2AF) >> 16) ^ 0x7F) + 2298786;
  v553 = 1117 * (HIBYTE(v529) ^ 0x26) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v529) ^ 0x26) + 575255)) >> 32) >> 1);
  v554 = 1117 * ((v544 ^ 0x99 | 0xBC) ^ (v544 ^ 0x66EA0699) & 0xBC) + 1147159;
  LODWORD(STACK[0xDA0]) = v554 - 4160 * (((2064889 * v554) >> 32) >> 1);
  v555 = 1117 * (((v530 ^ 0xF2AF) >> 8) ^ 0xB1) + 2586972;
  v556 = v555 - 4160 * (((4129777 * v555) >> 32) >> 2);
  v557 = 1117 * (((v544 ^ 0x699) >> 8) ^ 0xB1) + 2586972;
  LODWORD(STACK[0xDB0]) = v557 - 4160 * (((4129777 * v557) >> 32) >> 2);
  v558 = *(v261 + 4 * (v552 - 4160 * (((4129777 * v552) >> 32) >> 2)));
  v559 = 1117 * (((v544 ^ 0x66EA0699) >> 16) ^ 0x7F) + 2298786;
  v560 = v559 - 4160 * (((4129777 * v559) >> 32) >> 2);
  v561 = (v558 ^ 0x198915B0) & (2 * (v558 & 0x99D02005)) ^ v558 & 0x99D02005;
  v562 = ((2 * (v558 ^ 0x2AA955BA)) ^ 0x66F2EB7E) & (v558 ^ 0x2AA955BA) ^ (2 * (v558 ^ 0x2AA955BA)) & 0xB37975BE;
  v563 = (v562 ^ 0x2240003C) & (4 * v561) ^ v561;
  v564 = ((4 * (v562 ^ 0x91091481)) ^ 0xCDE5D6FC) & (v562 ^ 0x91091481) ^ (4 * (v562 ^ 0x91091481)) & 0xB37975BC;
  v565 = (v564 ^ 0x816154B0) & (16 * v563) ^ v563;
  v566 = ((16 * (v564 ^ 0x32182103)) ^ 0x37975BF0) & (v564 ^ 0x32182103) ^ (16 * (v564 ^ 0x32182103)) & 0xB37975B0;
  v567 = v565 ^ 0xB37975BF ^ (v566 ^ 0x33115100) & (v565 << 8);
  v568 = *(v261 + 4 * (v547 - 4160 * (((4129777 * v547) >> 32) >> 2)));
  LODWORD(STACK[0x3D8]) = (v567 << 16) & 0x33790000 ^ v567 ^ ((v567 << 16) ^ 0x75BF0000) & (((v566 ^ 0x8068240F) << 8) & 0x33790000 ^ 0x2080000 ^ (((v566 ^ 0x8068240F) << 8) ^ 0x79750000) & (v566 ^ 0x8068240F));
  v569 = v568 - 1915001779;
  v570 = ((v568 - 1915001779) >> 8) ^ ((v568 - 1915001779) >> 4);
  LODWORD(STACK[0x3D4]) = v570 - ((2 * v570) & 0xF9F599E) - 1479562033;
  v571 = 1117 * (HIBYTE(v530) ^ 0xBF) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v530) ^ 0xBF) + 575255)) >> 32) >> 1);
  v572 = *(v261 + 4 * v553);
  v573 = (v572 ^ 0x91D9AE50) & (2 * (v572 & 0x99D02005)) ^ v572 & 0x99D02005;
  v574 = ((2 * (v572 ^ 0x92D9EE52)) ^ 0x16139CAE) & (v572 ^ 0x92D9EE52) ^ (2 * (v572 ^ 0x92D9EE52)) & 0xB09CE56;
  v575 = (v574 ^ 0x2018004) & (4 * v573) ^ v573;
  v576 = ((4 * (v574 ^ 0x9084251)) ^ 0x2C27395C) & (v574 ^ 0x9084251) ^ (4 * (v574 ^ 0x9084251)) & 0xB09CE54;
  v577 = (v576 ^ 0x8010850) & (16 * v575) ^ v575;
  v578 = ((16 * (v576 ^ 0x308C603)) ^ 0xB09CE570) & (v576 ^ 0x308C603) ^ (16 * (v576 ^ 0x308C603)) & 0xB09CE50;
  v579 = v577 ^ 0xB09CE57 ^ (v578 ^ 0x8C400) & (v577 << 8);
  v580 = (4 * v572) ^ (8 * ((v579 << 16) & 0xB090000 ^ v579 ^ ((v579 << 16) ^ 0xE570000) & (((v578 ^ 0xB010A07) << 8) & 0xB090000 ^ 0x2010000 ^ (((v578 ^ 0xB010A07) << 8) ^ 0x9CE0000) & (v578 ^ 0xB010A07)))) ^ 0x6F06F2AC;
  v581 = *(v261 + 4 * (1117 * (HIBYTE(v544) ^ 0x61) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v544) ^ 0x61) + 575255)) >> 32) >> 1)));
  v582 = (v581 ^ 0x518926C1) & (2 * (v581 & 0x99D02005)) ^ v581 & 0x99D02005;
  v583 = ((2 * (v581 ^ 0x412966CB)) ^ 0xB1F28D9C) & (v581 ^ 0x412966CB) ^ (2 * (v581 ^ 0x412966CB)) & 0xD8F946CE;
  v584 = (v583 ^ 0x80C0000C) & (4 * v582) ^ v582;
  v585 = ((4 * (v583 ^ 0x48094242)) ^ 0x63E51B38) & (v583 ^ 0x48094242) ^ (4 * (v583 ^ 0x48094242)) & 0xD8F946C8;
  v586 = (v585 ^ 0x40E10200) & (16 * v584) ^ v584;
  v587 = ((16 * (v585 ^ 0x981844C6)) ^ 0x8F946CE0) & (v585 ^ 0x981844C6) ^ (16 * (v585 ^ 0x981844C6)) & 0xD8F946C0;
  v588 = v586 ^ 0xD8F946CE ^ (v587 ^ 0x88904400) & (v586 << 8);
  v589 = *(v261 + 4 * v549);
  v590 = *(v261 + 4 * v556) - 1915001779;
  v591 = *(v261 + 4 * v545);
  v592 = *(v261 + 4 * v551) - 1915001779;
  v593 = (v591 - 1488286341) ^ (v592 >> 4) ^ (v592 >> 8) ^ (v572 + 1315671559);
  v594 = *(v261 + 4 * v560);
  v595 = (v594 ^ 0x95D93E04) & (2 * (v594 & 0x99D02005)) ^ v594 & 0x99D02005;
  v596 = ((2 * (v594 ^ 0xA5F93E06)) ^ 0x78523C06) & (v594 ^ 0xA5F93E06) ^ (2 * (v594 ^ 0xA5F93E06)) & 0x3C291E02;
  v597 = (v596 ^ 0x38000000) & (4 * v595) ^ v595;
  v598 = ((4 * (v596 ^ 0x4290201)) ^ 0xF0A4780C) & (v596 ^ 0x4290201) ^ (4 * (v596 ^ 0x4290201)) & 0x3C291E00;
  v599 = (v598 ^ 0x30201800) & (16 * v597) ^ v597;
  v600 = ((16 * (v598 ^ 0xC090603)) ^ 0xC291E030) & (v598 ^ 0xC090603) ^ (16 * (v598 ^ 0xC090603)) & 0x3C291E00;
  v601 = v599 ^ 0x3C291E03 ^ (v600 ^ 0x10000) & (v599 << 8);
  v602 = (v593 ^ (v580 - 1367283032)) - ((2 * (v593 ^ (v580 - 1367283032))) & 0xF8F0BF7E) - 59220033;
  v603 = 1117 * (BYTE2(v546) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v546) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  v604 = LODWORD(STACK[0x3F8]) ^ (*(v261 + 4 * LODWORD(STACK[0x3EC])) + 1278375247) ^ (8 * (LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3FC]))) ^ LODWORD(STACK[0x3F0]) ^ LODWORD(STACK[0x3E4]) ^ v589 ^ ((v589 ^ 0x3F94093F) - 1505482436) ^ ((v589 ^ 0x2009575F) - 1176930468) ^ ((v589 ^ 0x868F7EE6) + 526343907) ^ ((v589 ^ 0xFF3DFF7D) + 1726865274) ^ v590 ^ (v581 + 1315671559) ^ (((v590 >> 8) ^ (v590 >> 4)) - ((2 * ((v590 >> 8) ^ (v590 >> 4))) & 0x71DF22C) - 2087782122) ^ (*(v261 + 4 * (1117 * (v546 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v546 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((4 * v581) ^ (8 * ((v588 << 16) & 0x18F90000 ^ v588 ^ ((v588 << 16) ^ 0x6CE0000) & (((v587 ^ 0x5069020E) << 8) & 0x18F90000 ^ 0xB90000 ^ (((v587 ^ 0x5069020E) << 8) ^ 0x19460000) & (v587 ^ 0x5069020E)))) ^ 0xA6CAB664) - 1367283032);
  v605 = *(v261 + 4 * v571);
  v606 = (v605 ^ 0x9DC294C5) & (2 * (v605 & 0x99D02005)) ^ v605 & 0x99D02005;
  v607 = ((2 * (v605 ^ 0xBD6294C5)) ^ 0x49656980) & (v605 ^ 0xBD6294C5) ^ (2 * (v605 ^ 0xBD6294C5)) & 0x24B2B4C0;
  v608 = v607 & (4 * v606) ^ v606;
  v609 = ((4 * (v607 ^ 0x24929440)) ^ 0x92CAD300) & (v607 ^ 0x24929440) ^ (4 * (v607 ^ 0x24929440)) & 0x24B2B4C0;
  v610 = (v609 ^ 0x829000) & (16 * v608) ^ v608;
  v611 = ((16 * (v609 ^ 0x243024C0)) ^ 0x4B2B4C00) & (v609 ^ 0x243024C0) ^ (16 * (v609 ^ 0x243024C0)) & 0x24B2B4C0;
  v612 = v610 ^ 0x24B2B4C0 ^ (v611 ^ 0x220400) & (v610 << 8);
  v613 = LODWORD(STACK[0x400]) ^ (*(v261 + 4 * LODWORD(STACK[0x3E0])) + 1278375247) ^ (8 * (LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x400]))) ^ (LODWORD(STACK[0x3F4]) << 26) ^ (LODWORD(STACK[0x3E8]) >> 6) ^ LODWORD(STACK[0x3DC]) ^ v594 ^ v592 ^ (2 * ((v601 << 16) & 0x3C290000 ^ v601 ^ ((v601 << 16) ^ 0x1E030000) & (((v600 ^ 0x3C281E03) << 8) & 0x3C290000 ^ 0x14210000 ^ (((v600 ^ 0x3C281E03) << 8) ^ 0x291E0000) & (v600 ^ 0x3C281E03)))) ^ v602;
  v614 = (((4 * v605) ^ (8 * ((v612 << 16) & 0x4B20000 ^ v612 ^ ((v612 << 16) ^ 0x14C00000) & (((v611 ^ 0x2490B0C0) << 8) & 0x4B20000 ^ 0x4020000 ^ (((v611 ^ 0x2490B0C0) << 8) ^ 0x12B40000) & (v611 ^ 0x2490B0C0)))) ^ 0x66D52614) - 1367283032) ^ (v605 + 1315671559);
  v615 = *(v261 + 4 * (1117 * (HIBYTE(v533) ^ 0x6C) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v533) ^ 0x6C) + 575255)) >> 32) >> 1)));
  v616 = (v615 ^ 0x15C6B7E0) & (2 * (v615 & 0x99D02005)) ^ v615 & 0x99D02005;
  v617 = ((2 * (v615 ^ 0x4E6B7E2)) ^ 0x3A6D2FCE) & (v615 ^ 0x4E6B7E2) ^ (2 * (v615 ^ 0x4E6B7E2)) & 0x9D3697E6;
  v618 = (v617 ^ 0x8000004) & (4 * v616) ^ v616;
  v619 = ((4 * (v617 ^ 0x85129021)) ^ 0x74DA5F9C) & (v617 ^ 0x85129021) ^ (4 * (v617 ^ 0x85129021)) & 0x9D3697E4;
  v620 = (v619 ^ 0x14121780) & (16 * v618) ^ v618;
  v621 = ((16 * (v619 ^ 0x89248063)) ^ 0xD3697E70) & (v619 ^ 0x89248063) ^ (16 * (v619 ^ 0x89248063)) & 0x9D3697E0;
  v622 = v620 ^ 0x9D3697E7 ^ (v621 ^ 0x91201600) & (v620 << 8);
  v623 = (*(v261 + 4 * LODWORD(STACK[0x408])) + 1278375247) ^ LODWORD(STACK[0x420]) ^ (8 * (LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x420]))) ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x410]) ^ v569 ^ v558 ^ (*(v261 + 4 * LODWORD(STACK[0xDA0])) - 1488286341) ^ LODWORD(STACK[0x3D4]) ^ (v615 + 1315671559) ^ (2 * LODWORD(STACK[0x3D8])) ^ (((4 * v615) ^ (8 * ((v622 << 16) & 0x1D360000 ^ v622 ^ ((v622 << 16) ^ 0x17E70000) & (((v621 ^ 0xC168187) << 8) & 0x1D360000 ^ 0x9200000 ^ (((v621 ^ 0xC168187) << 8) ^ 0x16970000) & (v621 ^ 0xC168187)))) ^ 0x27C43F2C) - 1367283032);
  v624 = *(v261 + 4 * v603);
  v625 = *(v261 + 4 * LODWORD(STACK[0xDB0])) - 1915001779;
  v626 = LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x430]) ^ (8 * (LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x438]))) ^ (*(v261 + 4 * LODWORD(STACK[0x40C])) + 1278375247) ^ LODWORD(STACK[0x414]) ^ v625 ^ (v625 >> 4) ^ (v625 >> 8) ^ v624 ^ ((v624 ^ 0x54486502) - 845658873) ^ (*(v261 + 4 * (1117 * (v533 ^ 0x35) + 1147159 - 4160 * (((2064889 * (1117 * (v533 ^ 0x35u) + 1147159)) >> 32) >> 1))) - 1488286341) ^ ((v624 ^ 0xC0CA64C7) + 1494893764) ^ ((v624 ^ 0x2C5269C1) - 1249752634) ^ ((v624 ^ 0xDEFFB7FF) + 1194301436) ^ (v614 - ((2 * v614) & 0x45F6EF68) - 1560578124);
  BYTE2(v624) = BYTE2(v613) ^ 0x57;
  v627 = 1117 * (((v613 ^ 0x3ED4) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xDA0]) = v627 - 4160 * (((4129777 * v627) >> 32) >> 2);
  LODWORD(STACK[0x438]) = 1117 * (v604 ^ 0x7B) + 1147159 - 4160 * (((2064889 * (1117 * (v604 ^ 0x7Bu) + 1147159)) >> 32) >> 1);
  v628 = 1117 * (((v604 ^ 0xE043D1C7) >> 16) ^ 0x7F) + 2298786;
  v629 = v628 - 4160 * (((4129777 * v628) >> 32) >> 2);
  v630 = v626 ^ 0x82063DF2;
  v631 = 1117 * (((v626 ^ 0x3DF2) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xDB0]) = v631 - 4160 * (((4129777 * v631) >> 32) >> 2);
  v632 = v623 ^ 0x848D4CFE;
  v633 = 1117 * (((v604 ^ 0xD1C7) >> 8) ^ 0xAE) + 2586972;
  v634 = v633 - 4160 * (((4129777 * v633) >> 32) >> 2);
  v635 = (~((v623 ^ 0x848D4CFE) >> 7) & 0x18) + (((v623 ^ 0x4CFE) >> 8) ^ 0x9A2);
  v636 = 1117 * (v613 ^ 0x68) + 1147159 - 4160 * (((2064889 * (1117 * (v613 ^ 0x68u) + 1147159)) >> 32) >> 1);
  v637 = HIBYTE(v623) ^ 0x83;
  v638 = *(v261 + 4 * (1117 * (HIBYTE(v613) ^ 0xB3) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v613) ^ 0xB3) + 575255)) >> 32) >> 1)));
  v639 = 1117 * (BYTE2(v624) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v624) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  v640 = ((2 * (v638 & 0x99D02005)) & 0x2204002 | v638 & 0x99D02005) ^ (2 * (v638 & 0x99D02005)) & (v638 ^ 0x9FFCEF26);
  v641 = (2 * (v638 ^ 0x9FFCEF26)) & 0x62CCF22 ^ 0x2244121 ^ ((2 * (v638 ^ 0x9FFCEF26)) ^ 0xC599E46) & (v638 ^ 0x9FFCEF26);
  v642 = (4 * v640) & v641 ^ v640 ^ ((4 * v640) & 0x6008020 | 0x200C00);
  v643 = (4 * v641) & 0x62CCF20 ^ 0x60CC323 ^ ((4 * v641) ^ 0x18B33C8C) & v641;
  v644 = (16 * v642) & 0x62CCF20 ^ v642 ^ ((16 * v642) ^ 0x200C000) & v643;
  v645 = (16 * v643) & 0x62CCF20 ^ 0x4200D03 ^ ((16 * v643) ^ 0x62CCF230) & v643;
  v646 = v644 ^ (v644 << 8) & 0x62CCF00 ^ ((v644 << 8) ^ 0x20CC0000) & v645 ^ 0x4000323;
  v647 = (4 * v638) ^ (8 * ((v646 << 16) & 0x62C0000 ^ v646 ^ ((v646 << 16) ^ 0xF230000) & ((v645 << 8) & 0x62C0000 ^ 0x2200000 ^ ((v645 << 8) ^ 0xCCF0000) & v645))) ^ 0x6726F90C;
  v648 = 1117 * (BYTE2(v632) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v632) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  v649 = 1117 * (v632 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v632 ^ 0xBCu) + 1147159)) >> 32) >> 1);
  v650 = *(v261 + 4 * (1117 * (HIBYTE(v626) ^ 0x85) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v626) ^ 0x85) + 575255)) >> 32) >> 1)));
  v651 = (v650 ^ 0x99CB9985) & (2 * (v650 & 0x99D02005)) ^ v650 & 0x99D02005;
  v652 = ((2 * (v650 ^ 0xA86BD987)) ^ 0x6377F304) & (v650 ^ 0xA86BD987) ^ (2 * (v650 ^ 0xA86BD987)) & 0x31BBF982;
  v653 = (v652 ^ 0x21018000) & (4 * v651) ^ v651;
  v654 = ((4 * (v652 ^ 0x10880882)) ^ 0xC6EFE608) & (v652 ^ 0x10880882) ^ (4 * (v652 ^ 0x10880882)) & 0x31BBF980;
  v655 = (v654 ^ 0xABE000) & (16 * v653) ^ v653;
  v656 = ((16 * (v654 ^ 0x31101982)) ^ 0x1BBF9820) & (v654 ^ 0x31101982) ^ (16 * (v654 ^ 0x31101982)) & 0x31BBF980;
  v657 = v655 ^ 0x31BBF982 ^ (v656 ^ 0x11BB9800) & (v655 << 8);
  v658 = (4 * v650) ^ (8 * ((v657 << 16) & 0x11BB0000 ^ v657 ^ ((v657 << 16) ^ 0x19820000) & (((v656 ^ 0x20006182) << 8) & 0x11BB0000 ^ (((v656 ^ 0x20006182) << 8) ^ 0x1BF90000) & (v656 ^ 0x20006182) ^ 0x20000))) ^ 0x668F4C04;
  LODWORD(STACK[0x430]) = 1117 * v635 - 4160 * (((4129777 * (1117 * v635)) >> 32) >> 2);
  v659 = *(v261 + 4 * (1117 * (HIBYTE(v604) ^ 0xE7) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v604) ^ 0xE7) + 575255)) >> 32) >> 1)));
  v660 = v659 & 0x99D02005 ^ 0x36002102 ^ (v659 ^ 0x9DD00105) & (2 * (v659 & 0x99D02005));
  v661 = (2 * (v659 ^ 0xAFD00107)) & 0x36002102 ^ 0x12002102 ^ ((2 * (v659 ^ 0xAFD00107)) ^ 0x6C004204) & (v659 ^ 0xAFD00107);
  v662 = (4 * v660) & 0x36000000 ^ v660 ^ ((4 * v660) ^ 0xD8008408) & v661;
  v663 = (4 * v661) & 0x36002100 ^ 0x26002102 ^ ((4 * v661) ^ 0xD8008408) & v661;
  v664 = (16 * v662) & 0x36002100 ^ v662 ^ ((16 * v662) ^ 0x60021020) & v663;
  v665 = (16 * v663) & 0x36002100 ^ 0x16002102 ^ ((16 * v663) ^ 0x60021020) & v663;
  v666 = (v664 << 8) & 0x36002100 ^ v664 ^ ((v664 << 8) ^ 0x210200) & v665;
  LODWORD(STACK[0x428]) = (4 * v659) ^ (8 * ((v666 << 16) & 0x16000000 ^ v666 ^ ((v666 << 16) ^ 0x1020000) & ((v665 << 8) & 0x16000000 ^ 0x16000000 ^ ((v665 << 8) ^ 0x210000) & v665))) ^ 0x57418804;
  v667 = *(v261 + 4 * v648);
  v668 = (v667 ^ 0x55C9B680) & (2 * (v667 & 0x99D02005)) ^ v667 & 0x99D02005;
  v669 = ((2 * (v667 ^ 0x4469F682)) ^ 0xBB73AD0E) & (v667 ^ 0x4469F682) ^ (2 * (v667 ^ 0x4469F682)) & 0xDDB9D686;
  v670 = (v669 ^ 0x89018004) & (4 * v668) ^ v668;
  v671 = ((4 * (v669 ^ 0x44885281)) ^ 0x76E75A1C) & (v669 ^ 0x44885281) ^ (4 * (v669 ^ 0x44885281)) & 0xDDB9D684;
  v672 = (v671 ^ 0x54A15200) & (16 * v670) ^ v670;
  v673 = ((16 * (v671 ^ 0x89188483)) ^ 0xDB9D6870) & (v671 ^ 0x89188483) ^ (16 * (v671 ^ 0x89188483)) & 0xDDB9D680;
  v674 = v672 ^ 0xDDB9D687 ^ (v673 ^ 0xD9994000) & (v672 << 8);
  v675 = (v674 << 16) & 0x5DB90000 ^ v674 ^ ((v674 << 16) ^ 0x56870000) & (((v673 ^ 0x4209687) << 8) & 0x5DB90000 ^ 0x44290000 ^ (((v673 ^ 0x4209687) << 8) ^ 0x39D60000) & (v673 ^ 0x4209687));
  v676 = *(v261 + 4 * v636) - ((2 * *(v261 + 4 * v636) + 244652790) & 0xCCD08B2) - 1380904492;
  v677 = (v647 - 1367283032) ^ (v638 + 1315671559);
  v678 = *(v261 + 4 * v634) - 1915001779;
  v679 = *(v261 + 4 * v629);
  v680 = (v678 >> 8) ^ (v678 >> 4) ^ (v650 + 1315671559) ^ (v658 - 1367283032);
  v681 = (v679 ^ 0x59C80D30) & (2 * (v679 & 0x99D02005)) ^ v679 & 0x99D02005;
  v682 = ((2 * (v679 ^ 0x79480D38)) ^ 0xC1305A7A) & (v679 ^ 0x79480D38) ^ (2 * (v679 ^ 0x79480D38)) & 0xE0982D3C;
  v683 = (v682 ^ 0xC0000038) & (4 * v681) ^ v681;
  v684 = ((4 * (v682 ^ 0x20882505)) ^ 0x8260B4F4) & (v682 ^ 0x20882505) ^ (4 * (v682 ^ 0x20882505)) & 0xE0982D3C;
  v685 = (v684 ^ 0x80002430) & (16 * v683) ^ v683;
  v686 = ((16 * (v684 ^ 0x60980909)) ^ 0x982D3D0) & (v684 ^ 0x60980909) ^ (16 * (v684 ^ 0x60980909)) & 0xE0982D10;
  v687 = v685 ^ 0xE0982D3D ^ (v686 ^ 0x800100) & (v685 << 8);
  v688 = (v687 << 16) & 0x60980000 ^ v687 ^ ((v687 << 16) ^ 0x2D3D0000) & (((v686 ^ 0xE0182C2D) << 8) & 0x60980000 ^ 0x60900000 ^ (((v686 ^ 0xE0182C2D) << 8) ^ 0x182D0000) & (v686 ^ 0xE0182C2D));
  v689 = *(v261 + 4 * v639);
  v690 = *(v261 + 4 * (1117 * v637 + 575255 - 4160 * (((2064889 * (1117 * v637 + 575255)) >> 32) >> 1)));
  v691 = ((2 * (v690 & 0x99D02005)) & 0x7FC000 | v690 & 0x99D02005) ^ (2 * (v690 & 0x99D02005)) & (v690 ^ 0xD5E97271);
  v692 = ((2 * (v690 ^ 0xD5E97271)) ^ 0x9872A4E8) & (v690 ^ 0xD5E97271) ^ (2 * (v690 ^ 0xD5E97271)) & 0x4C395274;
  v693 = (v692 ^ 0x8085220) & (4 * v691) ^ v691;
  v694 = ((4 * (v692 ^ 0x44095214)) ^ 0x30E549D0) & (v692 ^ 0x44095214) ^ (4 * (v692 ^ 0x44095214)) & 0x4C395270;
  v695 = (v694 ^ 0x214050) & (16 * v693) ^ v693;
  v696 = ((16 * (v694 ^ 0x4C181224)) ^ 0xC3952740) & (v694 ^ 0x4C181224) ^ (16 * (v694 ^ 0x4C181224)) & 0x4C395240;
  v697 = v695 ^ 0x4C395274 ^ (v696 ^ 0x40110200) & (v695 << 8);
  v698 = LODWORD(STACK[0x464]) ^ LODWORD(STACK[0x4A8]) ^ (8 * (LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x4A8]))) ^ (*(v261 + 4 * LODWORD(STACK[0x440])) + 1278375247) ^ LODWORD(STACK[0x44C]) ^ v689 ^ v678 ^ ((v689 ^ 0x5AF3471A) - 1021090017) ^ ((v689 ^ 0xAC5C4151) + 898392406) ^ ((v689 ^ 0x6E7D164F) - 139643316) ^ ((v689 ^ 0xFEFDCFFF) + 1731063804) ^ (*(v261 + 4 * v649) - 1488286341) ^ (v680 - ((2 * v680) & 0xC29D9120) + 1632553104);
  v699 = *(v261 + 4 * LODWORD(STACK[0xDA0])) - 1915001779;
  v700 = v261;
  v701 = (v699 >> 8) ^ (v699 >> 4) ^ (*(v261 + 4 * LODWORD(STACK[0x438])) - 1488286341) ^ (v690 + 1315671559) ^ (((4 * v690) ^ (8 * ((v697 << 16) & 0xC390000 ^ v697 ^ ((v697 << 16) ^ 0x12740000) & (((v696 ^ 0xC285034) << 8) & 0xC390000 ^ 0x4290000 ^ (((v696 ^ 0xC285034) << 8) ^ 0x19520000) & (v696 ^ 0xC285034)))) ^ 0x70A13B4) - 1367283032);
  v702 = *(v261 + 4 * (1117 * (BYTE2(v630) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v630) ^ 0x7Fu) + 2298786)) >> 32) >> 2)));
  v703 = (v702 ^ 0x19992B70) & (2 * (v702 & 0x99D02005)) ^ v702 & 0x99D02005;
  v704 = ((2 * (v702 ^ 0x3A192B72)) ^ 0x479216EE) & (v702 ^ 0x3A192B72) ^ (2 * (v702 ^ 0x3A192B72)) & 0xA3C90B76;
  v705 = (v704 ^ 0x3800024) & (4 * v703) ^ v703;
  v706 = ((4 * (v704 ^ 0xA0490911)) ^ 0x8F242DDC) & (v704 ^ 0xA0490911) ^ (4 * (v704 ^ 0xA0490911)) & 0xA3C90B74;
  v707 = (v706 ^ 0x83000950) & (16 * v705) ^ v705;
  v708 = ((16 * (v706 ^ 0x20C90223)) ^ 0x3C90B770) & (v706 ^ 0x20C90223) ^ (16 * (v706 ^ 0x20C90223)) & 0xA3C90B70;
  v709 = v707 ^ 0xA3C90B77 ^ (v708 ^ 0x20800300) & (v707 << 8);
  v710 = (*(v261 + 4 * LODWORD(STACK[0x458])) + 1278375247) ^ LODWORD(STACK[0x4B8]) ^ (8 * (LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4C8]))) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x468]) ^ v699 ^ v702 ^ (v701 - ((2 * v701) & 0xF95A5ECE) - 55759001) ^ (2 * ((v709 << 16) & 0x23C90000 ^ v709 ^ ((v709 << 16) ^ 0xB770000) & (((v708 ^ 0x83490807) << 8) & 0x23C90000 ^ 0x22C00000 ^ (((v708 ^ 0x83490807) << 8) ^ 0x490B0000) & (v708 ^ 0x83490807))));
  v711 = *(v261 + 4 * LODWORD(STACK[0x430])) - 1915001779;
  v712 = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x4C0]) ^ (8 * (LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x4D8]))) ^ (*(v261 + 4 * LODWORD(STACK[0x470])) + 1278375247) ^ (LODWORD(STACK[0x47C]) - 1714413563) ^ v679 ^ v711 ^ (v711 >> 4) ^ (v711 >> 8) ^ (*(v261 + 4 * (1117 * (v630 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v630 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (2 * v688) ^ (v677 - ((2 * v677) & 0xFD99FAA) - 2014523435);
  v713 = *(v261 + 4 * LODWORD(STACK[0xDB0])) - 1915001779;
  v714 = (*(v261 + 4 * LODWORD(STACK[0x490])) + 1278375247) ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x4D0]) ^ (8 * (LODWORD(STACK[0x4D0]) ^ __ROR4__(STACK[0x4A0], 16))) ^ LODWORD(STACK[0x498]) ^ v713 ^ (v713 >> 4) ^ (v713 >> 8) ^ v667 ^ v676 ^ (v659 + 1315671559) ^ (2 * v675) ^ (LODWORD(STACK[0x428]) - 1367283032);
  v715 = v712 ^ 0x6AB93DA1;
  v716 = v710 ^ 0x5B0FEA0D;
  v717 = 1117 * (((v710 ^ 0xEA0D) >> 8) ^ 0xAE) + 2586972;
  v718 = v717 - 4160 * (((4129777 * v717) >> 32) >> 2);
  v719 = 1117 * (HIBYTE(v712) ^ 0x6D) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v712) ^ 0x6D) + 575255)) >> 32) >> 1);
  v720 = v698 ^ 0x6B65DC3D;
  v721 = 1117 * (((v714 ^ 0xEEAB) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xDA0]) = v721 - 4160 * (((4129777 * v721) >> 32) >> 2);
  v722 = *(v261 + 4 * (1117 * (HIBYTE(v710) ^ 0x5C) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v710) ^ 0x5C) + 575255)) >> 32) >> 1)));
  v723 = (((4 * ((640671739 - v722) ^ v722 ^ ((v722 ^ 0x7814F25) + 508653346) ^ ((v722 ^ 0x1BADE848) + 41797709) ^ ((v722 ^ 0x5FC8769) + 472688494))) ^ 0x98BF7FEC) - 1367283032) ^ (v722 + 1315671559);
  v724 = 1117 * (((v714 ^ 0x2F9CEEAB) >> 16) ^ 0x7F) + 2298786;
  v725 = v724 - 4160 * (((4129777 * v724) >> 32) >> 2);
  v726 = *(v261 + 4 * v719);
  v727 = (2 * (v726 & 0x99D02005)) & (v726 ^ 0x5D45193D) ^ v726 & 0x99D02005 ^ ((2 * (v726 & 0x99D02005)) & 0x8888888 | 0x80002010);
  v728 = (2 * (v726 ^ 0x5D45193D)) & 0xC4953938 ^ 0x44950908 ^ ((2 * (v726 ^ 0x5D45193D)) ^ 0x892A7270) & (v726 ^ 0x5D45193D);
  v729 = (4 * v727) & 0xC4810038 ^ v727 ^ ((4 * v727) ^ 0x8040) & v728;
  v730 = (4 * v728) & 0xC4953938 ^ 0xC4811918 ^ ((4 * v728) ^ 0x1254E4E0) & v728;
  v731 = (16 * v729) & 0xC4953930 ^ v729 ^ ((16 * v729) ^ 0x20100) & v730;
  v732 = (16 * v730) & 0xC4953900 ^ 0x84842838 ^ ((16 * v730) ^ 0x49539380) & v730;
  v733 = v731 ^ (v731 << 8) & 0xC4953900 ^ ((v731 << 8) ^ 0x211000) & v732 ^ 0x44940828;
  v734 = (4 * v726) ^ (8 * ((v733 << 16) & 0x4950000 ^ v733 ^ ((v733 << 16) ^ 0x19380000) & ((v732 << 8) & 0x4950000 ^ 0x840000 ^ ((v732 << 8) ^ 0x15390000) & v732))) ^ 0x436949D4;
  LODWORD(STACK[0xDB0]) = 1117 * (BYTE1(v715) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v715) ^ 0xAEu) + 2586972)) >> 32) >> 2);
  v735 = *(v261 + 4 * (1117 * (HIBYTE(v698) ^ 0xA4) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v698) ^ 0xA4) + 575255)) >> 32) >> 1)));
  v736 = (v735 ^ 0xD5D38770) & (2 * (v735 & 0x99D02005)) ^ v735 & 0x99D02005;
  v737 = ((2 * (v735 ^ 0xD753877A)) ^ 0x9D074EFE) & (v735 ^ 0xD753877A) ^ (2 * (v735 ^ 0xD753877A)) & 0x4E83A77E;
  v738 = (v737 ^ 0xC01003C) & (4 * v736) ^ v736;
  v739 = ((4 * (v737 ^ 0x4280A101)) ^ 0x3A0E9DFC) & (v737 ^ 0x4280A101) ^ (4 * (v737 ^ 0x4280A101)) & 0x4E83A77C;
  v740 = (v739 ^ 0xA028570) & (16 * v738) ^ v738;
  v741 = ((16 * (v739 ^ 0x44812203)) ^ 0xE83A77F0) & (v739 ^ 0x44812203) ^ (16 * (v739 ^ 0x44812203)) & 0x4E83A770;
  v742 = v740 ^ 0x4E83A77F ^ (v741 ^ 0x48022700) & (v740 << 8);
  v743 = (4 * v735) ^ (8 * ((v742 << 16) & 0xE830000 ^ v742 ^ ((v742 << 16) ^ 0x77F0000) & (((v741 ^ 0x681800F) << 8) & 0xE830000 ^ (((v741 ^ 0x681800F) << 8) ^ 0x3A70000) & (v741 ^ 0x681800F) ^ 0xC000000)));
  v744 = *(v261 + 4 * (1117 * (BYTE2(v720) ^ 0xB6) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v720) ^ 0xB6u) + 2298786)) >> 32) >> 2)));
  LODWORD(STACK[0x4D8]) = 1117 * (BYTE2(v716) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v716) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  LODWORD(STACK[0x4D0]) = (v744 ^ 0xAE6FE9F6) + 935315955;
  v745 = v723 - ((2 * v723) & 0xF8665CF2) - 63754631;
  v746 = *(v261 + 4 * v718) - 1915001779;
  v747 = (v746 >> 8) ^ (v746 >> 4) ^ (v726 + 1315671559) ^ (*(v261 + 4 * (1117 * (v720 ^ 0x2B) + 1147159 - 4160 * (((2064889 * (1117 * (v720 ^ 0x2Bu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (v734 - 1367283032);
  v748 = *(v261 + 4 * v725);
  v749 = ((2 * (v748 & 0x99D02005)) & 0x1FFFFE | v748 & 0x99D02005) ^ (2 * (v748 & 0x99D02005)) & (v748 ^ 0x95DEC48E);
  v750 = ((2 * (v748 ^ 0x95DEC48E)) ^ 0x181DC916) & (v748 ^ 0x95DEC48E) ^ (2 * (v748 ^ 0x95DEC48E)) & 0xC0EE48A;
  v751 = (v750 ^ 0x802A481) & (4 * v749) ^ v749;
  v752 = ((4 * (v750 ^ 0x4022489)) ^ 0x303B922C) & (v750 ^ 0x4022489) ^ (4 * (v750 ^ 0x4022489)) & 0xC0EE488;
  v753 = (v752 ^ 0xA8000) & (16 * v751) ^ v751;
  v754 = ((16 * (v752 ^ 0xC046483)) ^ 0xC0EE48B0) & (v752 ^ 0xC046483) ^ (16 * (v752 ^ 0xC046483)) & 0xC0EE480;
  v755 = v753 ^ 0xC0EE48B ^ (v754 ^ 0xE4000) & (v753 << 8);
  v756 = (v755 << 16) & 0xC0E0000 ^ v755 ^ ((v755 << 16) ^ 0x648B0000) & (((v754 ^ 0xC00A40B) << 8) & 0xC0E0000 ^ 0xA0000 ^ (((v754 ^ 0xC00A40B) << 8) ^ 0xEE40000) & (v754 ^ 0xC00A40B));
  v757 = v747 - ((2 * v747) & 0xA332D20C) + 1369008390;
  v758 = 1117 * (v715 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v715 ^ 0xBCu) + 1147159)) >> 32) >> 1);
  LODWORD(STACK[0x4C8]) = 1117 * (BYTE1(v720) ^ 0xB1) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v720) ^ 0xB1u) + 2586972)) >> 32) >> 2);
  v759 = LODWORD(STACK[0x500]) ^ (*(v261 + 4 * LODWORD(STACK[0x4F0])) + 1278375247) ^ LODWORD(STACK[0x9E8]) ^ (8 * (LODWORD(STACK[0x9E8]) ^ LODWORD(STACK[0x9F0]))) ^ LODWORD(STACK[0x510]) ^ v748 ^ v746 ^ (2 * v756) ^ v757;
  v760 = *(v261 + 4 * LODWORD(STACK[0xDA0])) - 1915001779;
  v761 = v760 ^ (v735 + 1315671559) ^ (v760 >> 4) ^ (v760 >> 8) ^ ((v743 ^ 0x2345BBEC) - 1367283032);
  v762 = *(v261 + 4 * (1117 * (BYTE2(v715) ^ 0xB6) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v715) ^ 0xB6u) + 2298786)) >> 32) >> 2)));
  v763 = (*(v700 + 4 * LODWORD(STACK[0x4E0])) + 1278375247) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x4E8]) ^ v762 ^ ((v762 ^ 0x59D46A96) - 1073460589) ^ ((v762 ^ 0x817A938A) + 413840271) ^ ((v762 ^ 0xC076D958) + 1504115037) ^ ((v762 ^ 0x7EF7FFBF) - 416817220) ^ (*(v700 + 4 * (1117 * (v716 ^ 0x2B) + 1147159 - 4160 * (((2064889 * (1117 * (v716 ^ 0x2Bu) + 1147159)) >> 32) >> 1))) - 1488286341);
  v764 = *(v261 + 4 * (1117 * (HIBYTE(v714) ^ 0x28) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v714) ^ 0x28) + 575255)) >> 32) >> 1)));
  v765 = v763 ^ (v761 - ((2 * v761) & 0x25CCF838) + 317094940);
  HIDWORD(v766) = STACK[0x598];
  LODWORD(v766) = STACK[0x598];
  v767 = *(v261 + 4 * LODWORD(STACK[0xDB0])) - 1915001779;
  v768 = LODWORD(STACK[0xA00]) ^ (*(v700 + 4 * ((v766 >> 26) >> 6)) + 1278375247) ^ (8 * (LODWORD(STACK[0xA10]) ^ LODWORD(STACK[0xA00]))) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x518]) ^ v744 ^ ((v744 ^ 0x697C9B7B) - 257115264) ^ LODWORD(STACK[0x4D0]) ^ ((v744 ^ 0xDCC3528B) + 1158902416) ^ ((v744 ^ 0x7DFFFFFD) - 466624518) ^ v767 ^ (v767 >> 4) ^ (v767 >> 8) ^ (*(v700 + 4 * (1117 * (v714 ^ 0x17) + 1147159 - 4160 * (((2064889 * (1117 * (v714 ^ 0x17u) + 1147159)) >> 32) >> 1))) - 1488286341) ^ v745;
  v769 = *(v261 + 4 * LODWORD(STACK[0x4D8]));
  v770 = *(v700 + 4 * v758) - ((2 * *(v700 + 4 * v758) + 1318394614) & 0xB67C00AA) - 2104980016;
  LODWORD(STACK[0xA00]) = v765 ^ 0x935CF24E;
  LODWORD(STACK[0xDA0]) = v759 ^ 0xC69C9A08;
  v771 = 1117 * (((v759 ^ 0xC69C9A08) >> 16) ^ 0x7F) + 2298786;
  v772 = *(v261 + 4 * LODWORD(STACK[0x4C8])) - 1915001779;
  v773 = LODWORD(STACK[0x9E0]) ^ LODWORD(STACK[0xA20]) ^ (8 * (LODWORD(STACK[0xA20]) ^ LODWORD(STACK[0xA30]))) ^ (*(v261 + 4 * LODWORD(STACK[0x998])) + 1278375247) ^ LODWORD(STACK[0x9CC]) ^ (v764 + 1315671559) ^ v772 ^ (v772 >> 4) ^ (v772 >> 8) ^ v769 ^ ((v769 ^ 0xD051FD9A) + 1233247647) ^ ((v769 ^ 0xA542CDAC) + 1016262057) ^ ((v769 ^ 0xEAC13832) + 1930500151) ^ ((v769 ^ 0xF9FDD7FF) + 1613625340) ^ (((4 * (((v764 ^ 0xA4CC1E38) + 1025261117) ^ v764 ^ ((v764 ^ 0x3CB6B0E7) + 627478756) ^ ((v764 ^ 0x1AA9E5B) + 410697312) ^ ((v764 ^ 0x3FFFEF7F) + 640667516))) ^ 0x98BF7FEC) - 1367283032) ^ v770;
  v774 = 1117 * (((v759 ^ 0x9A08) >> 8) ^ 0xAE) + 2582812;
  LODWORD(STACK[0xDB0]) = v774 - 4160 * (((4129777 * v774) >> 32) >> 2);
  v775 = v773 ^ 0x7E8D02F2;
  v776 = HIBYTE(v773) ^ 0x79;
  v777 = 1117 * ((v765 ^ 0x4E | 0xBC) ^ (v765 ^ 0x935CF24E) & 0xBC) + 1147159;
  LODWORD(STACK[0xA20]) = v777 - 4160 * (((2064889 * v777) >> 32) >> 1);
  v778 = 1117 * (v768 ^ 0x15) + 1147159 - 4160 * (((2064889 * (1117 * (v768 ^ 0x15u) + 1147159)) >> 32) >> 1);
  v779 = *(v261 + 4 * (v771 - 4160 * (((4129777 * v771) >> 32) >> 2)));
  v780 = *(v261 + 4 * v778) - ((2 * *(v261 + 4 * v778) + 1318394614) & 0x87A250CA) + 1796978144;
  v781 = *(v261 + 4 * (1117 * v776 + 575255 - 4160 * (((2064889 * (1117 * v776 + 575255)) >> 32) >> 1)));
  LODWORD(STACK[0xA10]) = ((v781 ^ 0x27ED7A13) + 1044208152) ^ v781 ^ ((v781 ^ 0x2B18A7E0) + 852002789) ^ ((v781 ^ 0x1D25F5D7) + 83219924) ^ ((v781 ^ 0x37FFF7DF) + 774887388);
  v782 = *(v261 + 4 * (1117 * (BYTE1(v775) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v775) ^ 0xAEu) + 2586972)) >> 32) >> 2))) - 1915001779;
  HIDWORD(v766) = v782 ^ (v782 >> 4);
  LODWORD(v766) = HIDWORD(v766);
  HIDWORD(v766) = (v766 >> 12) & 0xFF0FFFFF;
  LODWORD(v766) = (v782 ^ (v782 >> 4)) << 20;
  v783 = 1117 * (((v765 ^ 0xF24E) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xA30]) = 1117 * (BYTE1(v768) ^ 0x39) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v768) ^ 0x39u) + 2586972)) >> 32) >> 2);
  v784 = *(v261 + 4 * (1117 * (HIBYTE(v765) ^ 0x94) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v765) ^ 0x94) + 575255)) >> 32) >> 1)));
  v785 = (v784 ^ 0x9981B120) & (2 * (v784 & 0x99D02005)) ^ v784 & 0x99D02005;
  v786 = ((2 * (v784 ^ 0x8981F12A)) ^ 0x20A3A25E) & (v784 ^ 0x8981F12A) ^ (2 * (v784 ^ 0x8981F12A)) & 0x1051D12E;
  v787 = (v786 ^ 0x1800C) & (4 * v785) ^ v785;
  v788 = ((4 * (v786 ^ 0x10505121)) ^ 0x414744BC) & (v786 ^ 0x10505121) ^ (4 * (v786 ^ 0x10505121)) & 0x1051D12C;
  v789 = (v788 ^ 0x414020) & (16 * v787) ^ v787;
  v790 = ((16 * (v788 ^ 0x10109103)) ^ 0x51D12F0) & (v788 ^ 0x10109103) ^ (16 * (v788 ^ 0x10109103)) & 0x1051D120;
  v791 = v789 ^ 0x1051D12F ^ (v790 ^ 0x111000) & (v789 << 8);
  v792 = LODWORD(STACK[0xA70]) ^ (8 * (LODWORD(STACK[0xA80]) ^ LODWORD(STACK[0xA70]))) ^ LODWORD(STACK[0xA60]) ^ LODWORD(STACK[0xA40]) ^ LODWORD(STACK[0xA50]) ^ v779 ^ ((v779 ^ 0x68115755) - 238979246) ^ ((v779 ^ 0xD5179DF3) + 1288158712) ^ ((v779 ^ 0x2446EE2A) - 1114190289) ^ ((v779 ^ 0xFF6FFB77) + 1723849588) ^ v782 ^ (v784 + 1315671559) ^ v780 ^ __ROR4__(v766 >> 30, 26) ^ (((4 * v784) ^ (8 * ((v791 << 16) & 0x10510000 ^ v791 ^ ((v791 << 16) ^ 0x112F0000) & ((((v790 ^ 0x1040C10F) << 8) ^ 0x11D10000) & (v790 ^ 0x1040C10F) ^ ((v790 ^ 0x1040C10F) << 8) & 0x10510000))) ^ 0x65C6096C) - 1367283032);
  LODWORD(STACK[0xA80]) = v792;
  v793 = *(v700 + 4 * (1117 * (HIBYTE(v759) ^ 0xC1) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v759) ^ 0xC1) + 575255)) >> 32) >> 1)));
  v794 = (v793 ^ 0x9DC8B4C0) & (2 * (v793 & 0x99D02005)) ^ v793 & 0x99D02005;
  v795 = ((2 * (v793 ^ 0xAD48B4CA)) ^ 0x6931299E) & (v793 ^ 0xAD48B4CA) ^ (2 * (v793 ^ 0xAD48B4CA)) & 0x349894CE;
  v796 = (v795 ^ 0x2000000C) & (4 * v794) ^ v794;
  v797 = ((4 * (v795 ^ 0x14889441)) ^ 0xD262533C) & (v795 ^ 0x14889441) ^ (4 * (v795 ^ 0x14889441)) & 0x349894CC;
  v798 = (v797 ^ 0x10001000) & (16 * v796) ^ v796;
  v799 = ((16 * (v797 ^ 0x249884C3)) ^ 0x49894CF0) & (v797 ^ 0x249884C3) ^ (16 * (v797 ^ 0x249884C3)) & 0x349894C0;
  v800 = v798 ^ 0x349894CF ^ (v799 ^ 0x880400) & (v798 << 8);
  v801 = (4 * v793) ^ (8 * ((v800 << 16) & 0x14980000 ^ v800 ^ ((v800 << 16) ^ 0x14CF0000) & (((v799 ^ 0x3410900F) << 8) & 0x14980000 ^ 0x4080000 ^ (((v799 ^ 0x3410900F) << 8) ^ 0x18940000) & (v799 ^ 0x3410900F)))) ^ 0x67C4266C;
  v802 = 1117 * (((v768 ^ 0xC54E97A9) >> 16) ^ 0xB6) + 2298786;
  v803 = v802 - 4160 * (((4129777 * v802) >> 32) >> 2);
  v804 = *(v700 + 4 * (1117 * (BYTE2(v775) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v775) ^ 0x7Fu) + 2298786)) >> 32) >> 2)));
  v805 = (v804 ^ 0x11800000) & (2 * (v804 & 0x99D02005)) ^ v804 & 0x99D02005;
  v806 = ((2 * (v804 ^ 0x841F2B24)) ^ 0x3B9E1642) & (v804 ^ 0x841F2B24) ^ (2 * (v804 ^ 0x841F2B24)) & 0x1DCF0B20;
  v807 = (v806 ^ 0x9800000) & (4 * v805) ^ v805;
  v808 = ((4 * (v806 ^ 0x4410921)) ^ 0x773C2C84) & (v806 ^ 0x4410921) ^ (4 * (v806 ^ 0x4410921)) & 0x1DCF0B20;
  v809 = (v808 ^ 0x150C0800) & (16 * v807) ^ v807;
  v810 = ((16 * (v808 ^ 0x8C30321)) ^ 0xDCF0B210) & (v808 ^ 0x8C30321) ^ (16 * (v808 ^ 0x8C30321)) & 0x1DCF0B00;
  v811 = v809 ^ 0x1DCF0B21 ^ (v810 ^ 0x1CC00200) & (v809 << 8);
  v812 = *(v700 + 4 * LODWORD(STACK[0xA20]));
  v813 = *(v700 + 4 * (1117 * (HIBYTE(v768) ^ 0xC2) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v768) ^ 0xC2) + 575255)) >> 32) >> 1)));
  v814 = 1117 * (LODWORD(STACK[0xDA0]) ^ 0x2B) + 1147159;
  v815 = 1117 * (BYTE2(LODWORD(STACK[0xA00])) ^ 0x7F) + 2298786;
  v816 = *(v700 + 4 * (v783 - 4160 * (((4129777 * v783) >> 32) >> 2))) - 1915001779;
  v817 = v816 ^ (v781 + 1315671559) ^ (v816 >> 4) ^ (v816 >> 8) ^ (((4 * LODWORD(STACK[0xA10])) ^ 0x98BF7FEC) - 1367283032) ^ (*(v700 + 4 * (v814 - 4160 * (((2064889 * v814) >> 32) >> 1))) - 1488286341);
  v818 = *(v700 + 4 * v803);
  v819 = (v818 ^ 0xD98185E1) & (2 * (v818 & 0x99D02005)) ^ v818 & 0x99D02005;
  v820 = ((2 * (v818 ^ 0xDAA185E1)) ^ 0x86E34BC8) & (v818 ^ 0xDAA185E1) ^ (2 * (v818 ^ 0xDAA185E1)) & 0x4371A5E4;
  v821 = (v820 ^ 0x2410000) & (4 * v819) ^ v819;
  v822 = ((4 * (v820 ^ 0x4110A424)) ^ 0xDC69790) & (v820 ^ 0x4110A424) ^ (4 * (v820 ^ 0x4110A424)) & 0x4371A5E0;
  v823 = (v822 ^ 0x1408580) & (16 * v821) ^ v821;
  v824 = ((16 * (v822 ^ 0x42312064)) ^ 0x371A5E40) & (v822 ^ 0x42312064) ^ (16 * (v822 ^ 0x42312064)) & 0x4371A5C0;
  v825 = v823 ^ 0x4371A5E4 ^ (v824 ^ 0x3100400) & (v823 << 8);
  v826 = v818 ^ LODWORD(STACK[0xDC0]) ^ (v817 - ((2 * v817) & 0x79ECAB60) + 1022776752) ^ (2 * ((v825 << 16) & 0x43710000 ^ v825 ^ ((v825 << 16) ^ 0x25E40000) & (((v824 ^ 0x4061A1A4) << 8) & 0x43710000 ^ 0x2500000 ^ (((v824 ^ 0x4061A1A4) << 8) ^ 0x71A50000) & (v824 ^ 0x4061A1A4))));
  LODWORD(STACK[0xA70]) = v826;
  v827 = *(v700 + 4 * LODWORD(STACK[0xA30])) - 1915001779;
  v828 = LODWORD(STACK[0xDE0]) ^ LODWORD(STACK[0xA98]) ^ (8 * (LODWORD(STACK[0xA98]) ^ LODWORD(STACK[0xAA0]))) ^ (*(v700 + 4 * LODWORD(STACK[0xD00])) + 1278375247) ^ LODWORD(STACK[0xD20]) ^ v804 ^ (v793 + 1315671559) ^ v827 ^ (v812 - ((2 * v812 + 244652790) & 0xB5BA8B6) - 1393008170) ^ (v827 >> 4) ^ (v827 >> 8) ^ (2 * ((v811 << 16) & 0x1DCF0000 ^ v811 ^ ((v811 << 16) ^ 0xB210000) & (((v810 ^ 0x10F0921) << 8) & 0x1DCF0000 ^ 0x10C40000 ^ (((v810 ^ 0x10F0921) << 8) ^ 0x4F0B0000) & (v810 ^ 0x10F0921)))) ^ (v801 - 1367283032);
  LODWORD(STACK[0xAA0]) = v828;
  v829 = *(v700 + 4 * LODWORD(STACK[0xDB0])) - 1915001779;
  v830 = (v829 >> 8) ^ (v829 >> 4) ^ (v813 + 1315671559) ^ (*(v700 + 4 * (1117 * (v775 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v775 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((4 * (((v813 ^ 0xE4FF2DF) + 396350172) ^ v813 ^ ((v813 ^ 0x1C5FF557) + 93312340) ^ ((v813 ^ 0xBE1260C) + 305202697) ^ ((v813 ^ 0x3FDEFE7F) + 638508668))) ^ 0x98BF7FEC) - 1367283032);
  v831 = *(v700 + 4 * (v815 - 4160 * (((4129777 * v815) >> 32) >> 2)));
  v832 = (v831 ^ 0x59D51B70) & (2 * (v831 & 0x99D02005)) ^ v831 & 0x99D02005;
  v833 = ((2 * (v831 ^ 0x5A555B70)) ^ 0x870AF6EA) & (v831 ^ 0x5A555B70) ^ (2 * (v831 ^ 0x5A555B70)) & 0xC3857B74;
  v834 = (v833 ^ 0x83000020) & (4 * v832) ^ v832;
  v835 = ((4 * (v833 ^ 0x40850915)) ^ 0xE15EDD4) & (v833 ^ 0x40850915) ^ (4 * (v833 ^ 0x40850915)) & 0xC3857B74;
  v836 = (v835 ^ 0x2056950) & (16 * v834) ^ v834;
  v837 = ((16 * (v835 ^ 0xC1801221)) ^ 0x3857B750) & (v835 ^ 0xC1801221) ^ (16 * (v835 ^ 0xC1801221)) & 0xC3857B50;
  v838 = v836 ^ 0xC3857B75 ^ (v837 ^ 0x53300) & (v836 << 8);
  v839 = LODWORD(STACK[0xDF0]) ^ LODWORD(STACK[0xDD0]) ^ v829 ^ v831 ^ (v830 - ((2 * v830) & 0xDAFAC126) + 1836933267) ^ (2 * ((v838 << 16) & 0x43850000 ^ v838 ^ ((v838 << 16) ^ 0x7B750000) & (((v837 ^ 0xC3804825) << 8) & 0x43850000 ^ 0x42840000 ^ (((v837 ^ 0xC3804825) << 8) ^ 0x57B0000) & (v837 ^ 0xC3804825))));
  LODWORD(STACK[0xD00]) = v792 ^ 0x786E8DA8;
  v840 = 1117 * (((v792 ^ 0x8DA8) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xA98]) = v828 ^ 0x2881516D;
  v841 = *(v700 + 4 * (1117 * (HIBYTE(v826) ^ 0x73) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v826) ^ 0x73) + 575255)) >> 32) >> 1)));
  v842 = (v841 ^ 0x9DC21274) & (2 * (v841 & 0x99D02005)) ^ v841 & 0x99D02005;
  v843 = ((2 * (v841 ^ 0xBD621276)) ^ 0x496464E6) & (v841 ^ 0xBD621276) ^ (2 * (v841 ^ 0xBD621276)) & 0x24B23272;
  v844 = (v843 ^ 0x20) & (4 * v842) ^ v842;
  v845 = ((4 * (v843 ^ 0x24921211)) ^ 0x92C8C9CC) & (v843 ^ 0x24921211) ^ (4 * (v843 ^ 0x24921211)) & 0x24B23270;
  v846 = (v845 ^ 0x800040) & (16 * v844) ^ v844;
  v847 = ((16 * (v845 ^ 0x24323233)) ^ 0x4B232730) & (v845 ^ 0x24323233) ^ (16 * (v845 ^ 0x24323233)) & 0x24B23270;
  v848 = v846 ^ 0x24B23273 ^ (v847 ^ 0x222200) & (v846 << 8);
  v849 = 1117 * (((v839 ^ 0x8E184712) >> 16) ^ 0x7F) + 2298786;
  v850 = *(v700 + 4 * (v840 - 4160 * (((4129777 * v840) >> 32) >> 2))) - 1915001779;
  v851 = v850 ^ (v841 + 1315671559) ^ (v850 >> 4) ^ (v850 >> 8) ^ (*(v700 + 4 * (1117 * (v828 ^ 0xD1) + 1147159 - 4160 * (((2064889 * (1117 * (v828 ^ 0xD1u) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((4 * v841) ^ (8 * ((v848 << 16) & 0x4B20000 ^ v848 ^ ((v848 << 16) ^ 0x12730000) & (((v847 ^ 0x24901043) << 8) & 0x4B20000 ^ 0x4800000 ^ (((v847 ^ 0x24901043) << 8) ^ 0x12320000) & (v847 ^ 0x24901043)))) ^ 0x4341138C) - 1367283032);
  v852 = *(v700 + 4 * (v849 - 4160 * (((4129777 * v849) >> 32) >> 2)));
  v853 = LODWORD(STACK[0xE20]) ^ LODWORD(STACK[0xE10]) ^ LODWORD(STACK[0xAA8]) ^ (8 * (LODWORD(STACK[0xAA8]) ^ LODWORD(STACK[0xAB0]))) ^ (*(v700 + 4 * LODWORD(STACK[0xE00])) + 1278375247) ^ v852 ^ ((v852 ^ 0x9A6B3AA2) + 62593703) ^ ((v852 ^ 0x31D31C23) - 1476183000) ^ ((v852 ^ 0x3368568C) - 1430751607) ^ ((v852 ^ 0xFEFFAFF6) + 1731170291) ^ (v851 - ((2 * v851) & 0x666EB4B0) - 1288218024);
  LODWORD(STACK[0xD20]) = v853;
  LODWORD(STACK[0xAA8]) = v853 ^ 0xB93444A8;
  v854 = 1117 * (((v853 ^ 0x44A8) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xAB0]) = v854 - 8320 * (((4129777 * v854) >> 32) >> 3);
  LODWORD(STACK[0xE20]) = (LODWORD(STACK[0xC50]) ^ 0x9EB091DB) - 1714413563 + *(v700 + 4 * (1117 * (LODWORD(STACK[0xC50]) ^ 0xE8) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xC50]) ^ 0xE8u) + 3161110)) >> 32) >> 2)));
  v855 = 1117 * (LODWORD(STACK[0xC80]) ^ 0xFE) + 2874041;
  v856 = *(v700 + 4 * (1117 * (LODWORD(STACK[0xC60]) ^ 0xD) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xC60]) ^ 0xDu) + 2009483)) >> 32) >> 2)));
  HIDWORD(v766) = v856 + 5;
  LODWORD(v766) = v856 - 1714413563;
  LODWORD(STACK[0xE10]) = v766 >> 6;
  v857 = 1117 * (HIBYTE(LODWORD(STACK[0xE40])) ^ 0xD9) + 2009483;
  v858 = *(v700 + 4 * (v857 - 4160 * (((4129777 * v857) >> 32) >> 2)));
  HIDWORD(v766) = v858 + 5;
  LODWORD(v766) = v858 - 1714413563;
  LODWORD(STACK[0xE40]) = v766 >> 6;
  v859 = 1117 * (LODWORD(STACK[0xB70]) ^ 0x30) + 2874041;
  LODWORD(STACK[0xE00]) = LODWORD(STACK[0xAB8]) ^ (*(v700 + 4 * (v859 - 4160 * (((4129777 * v859) >> 32) >> 2))) + 1278375247) ^ ((BYTE1(LODWORD(STACK[0xB70])) ^ 0x9EB09192) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xB70])) ^ 0xA1) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xB70])) ^ 0xA1u) + 3161110)) >> 32) >> 2)))) ^ (8 * (LODWORD(STACK[0xAB8]) ^ LODWORD(STACK[0xAC0])));
  v860 = STACK[0xB60];
  LODWORD(STACK[0xDF0]) = (BYTE1(LODWORD(STACK[0xB60])) ^ 0x9EB09157) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xB60])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xB60])) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  v861 = 1117 * (v860 ^ 0x30) + 2874041 - 4160 * (((4129777 * (1117 * (v860 ^ 0x30u) + 2874041)) >> 32) >> 2);
  v862 = 1117 * (HIBYTE(LODWORD(STACK[0xE60])) ^ 0x8B) + 2009483;
  v863 = *(v700 + 4 * (v862 - 4160 * (((4129777 * v862) >> 32) >> 2)));
  HIDWORD(v766) = v863 + 5;
  LODWORD(v766) = v863 - 1714413563;
  LODWORD(STACK[0xE60]) = v766 >> 6;
  v864 = STACK[0xB50];
  LODWORD(STACK[0xDE0]) = (BYTE1(LODWORD(STACK[0xB50])) ^ 0x9EB09157) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xB50])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xB50])) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  v865 = 1117 * (HIBYTE(LODWORD(STACK[0xCB0])) ^ 0x73) + 2009483;
  v866 = *(v700 + 4 * (v865 - 4160 * (((4129777 * v865) >> 32) >> 2)));
  HIDWORD(v766) = v866 + 5;
  LODWORD(v766) = v866 - 1714413563;
  LODWORD(STACK[0xDD0]) = v766 >> 6;
  v867 = 1117 * (v864 ^ 0xC3) + 2874041 - 4160 * (((4129777 * (1117 * (v864 ^ 0xC3u) + 2874041)) >> 32) >> 2);
  v868 = STACK[0xB10];
  v869 = 1117 * ((LODWORD(STACK[0xB10]) ^ 0xA3D) + ((2 * LODWORD(STACK[0xE30])) & 0x1A));
  v870 = v869 - 4160 * (((4129777 * v869) >> 32) >> 2);
  v871 = 1117 * (HIBYTE(LODWORD(STACK[0xE30])) ^ 0x50) + 2009483;
  v872 = *(v700 + 4 * (v871 - 4160 * (((4129777 * v871) >> 32) >> 2)));
  HIDWORD(v766) = v872 + 5;
  LODWORD(v766) = v872 - 1714413563;
  LODWORD(STACK[0xC80]) = v766 >> 6;
  LODWORD(STACK[0xC60]) = (BYTE1(v868) ^ 0x9EB09157) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(v868) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v868) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  v873 = (LODWORD(STACK[0xC20]) ^ 0x9EB09165) - 1714413563 + *(v700 + 4 * (1117 * (LODWORD(STACK[0xC20]) ^ 0x56) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xC20]) ^ 0x56u) + 3161110)) >> 32) >> 2)));
  v874 = 1117 * (((LODWORD(STACK[0xC40]) >> 23) & 0xE ^ 8) + (LODWORD(STACK[0xC30]) ^ 0x75B));
  v875 = *(v700 + 4 * (v874 - 4160 * (((8259553 * v874) >> 32) >> 3)));
  HIDWORD(v766) = v875 + 5;
  LODWORD(v766) = v875 - 1714413563;
  v876 = v766 >> 6;
  v877 = 1117 * (HIBYTE(LODWORD(STACK[0xE70])) ^ 0x5B) + 2009483;
  v878 = *(v700 + 4 * (v877 - 4160 * (((4129777 * v877) >> 32) >> 2)));
  HIDWORD(v766) = v878 + 5;
  LODWORD(v766) = v878 - 1714413563;
  LODWORD(STACK[0xC50]) = v766 >> 6;
  v879 = 1117 * (LODWORD(STACK[0xC70]) ^ 0xC) + 2874041 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xC70]) ^ 0xCu) + 2874041)) >> 32) >> 2);
  v880 = 1117 * (LODWORD(STACK[0xB00]) ^ 0x7F) + 2874041;
  LODWORD(STACK[0xC70]) = (BYTE1(LODWORD(STACK[0xB00])) ^ 0x9EB09157) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xB00])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xB00])) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  v881 = *(v700 + 4 * (1117 * (LODWORD(STACK[0xC90]) ^ 0xE1) + 2009483 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xC90]) ^ 0xE1u) + 2009483)) >> 32) >> 2)));
  HIDWORD(v766) = v881 + 5;
  LODWORD(v766) = v881 - 1714413563;
  LODWORD(STACK[0xE30]) = (v766 >> 6) ^ LODWORD(STACK[0xD30]) ^ ((LODWORD(STACK[0xCA0]) ^ 0x9EB091F2) - 1714413563 + *(v700 + 4 * (1117 * (LODWORD(STACK[0xCA0]) ^ 0xC1) + 3161110 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xCA0]) ^ 0xC1u) + 3161110)) >> 32) >> 2)))) ^ (8 * (LODWORD(STACK[0xAC8]) ^ LODWORD(STACK[0xD30]))) ^ (*(v700 + 4 * (1117 * (LODWORD(STACK[0xCC0]) ^ 0xE4) + 2874041 - 4160 * (((4129777 * (1117 * (LODWORD(STACK[0xCC0]) ^ 0xE4u) + 2874041)) >> 32) >> 2))) + 1278375247);
  v882 = STACK[0xE80];
  v883 = 1117 * (HIBYTE(LODWORD(STACK[0xE80])) ^ 0x62) + 2009483;
  v884 = *(v700 + 4 * (v883 - 4160 * (((4129777 * v883) >> 32) >> 2)));
  HIDWORD(v766) = v884 + 5;
  LODWORD(v766) = v884 - 1714413563;
  LODWORD(STACK[0xCC0]) = v766 >> 6;
  LODWORD(STACK[0xCB0]) = (BYTE1(v882) ^ 0x9EB09180) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(v882) ^ 0xB3) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(v882) ^ 0xB3u) + 3161110)) >> 32) >> 2)));
  v885 = 1117 * (HIBYTE(LODWORD(STACK[0xE90])) ^ 0xEA) + 2009483;
  v886 = 1117 * (LODWORD(STACK[0xAE8]) ^ 0x30) + 2874041;
  v887 = *(v700 + 4 * (v885 - 4160 * (((4129777 * v885) >> 32) >> 2)));
  HIDWORD(v766) = v887 + 5;
  LODWORD(v766) = v887 - 1714413563;
  LODWORD(STACK[0xDC0]) = v766 >> 6;
  v888 = 1117 * (LODWORD(STACK[0xAE0]) ^ 0x30) + 2874041;
  LODWORD(STACK[0xDB0]) = (BYTE1(LODWORD(STACK[0xAE0])) ^ 0x9EB09157) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xAE0])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xAE0])) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  v889 = (BYTE1(LODWORD(STACK[0xAD8])) ^ 0x9EB09157) - 1714413563 + *(v700 + 4 * (1117 * (BYTE1(LODWORD(STACK[0xAD8])) ^ 0x64) + 3161110 - 4160 * (((4129777 * (1117 * (BYTE1(LODWORD(STACK[0xAD8])) ^ 0x64u) + 3161110)) >> 32) >> 2)));
  v890 = 1117 * (LODWORD(STACK[0xAD8]) ^ 0x30) + 2874041;
  LODWORD(STACK[0xE90]) = *(v700 + 4 * (v855 % 0x1040)) + 1278375247;
  LODWORD(STACK[0xE80]) = *(v700 + 4 * v861) + 1278375247;
  LODWORD(STACK[0xE70]) = *(v700 + 4 * v867) + 1278375247;
  v891 = *(v700 + 4 * v870) + 1278375247;
  v892 = *(v700 + 4 * v879) + 1278375247;
  v893 = *(v700 + 4 * (v880 - 4160 * (((4129777 * v880) >> 32) >> 2))) + 1278375247;
  LODWORD(STACK[0xCA0]) = *(v700 + 4 * (v886 - 4160 * (((4129777 * v886) >> 32) >> 2))) + 1278375247;
  LODWORD(STACK[0xD30]) = *(v700 + 4 * (v888 - 4160 * (((4129777 * v888) >> 32) >> 2))) + 1278375247;
  v894 = v700;
  v895 = LODWORD(STACK[0xD40]) ^ (*(v700 + 4 * (v890 - 4160 * (((4129777 * v890) >> 32) >> 2))) + 1278375247) ^ (8 * (LODWORD(STACK[0xAD0]) ^ LODWORD(STACK[0xD40])));
  LODWORD(STACK[0xDA0]) = v895 + v889 - 2 * (v895 & v889);
  v896 = 1117 * (HIBYTE(LODWORD(STACK[0xEB0])) ^ 0xE2) + 2009483;
  v897 = *(v700 + 4 * (v896 - 4160 * (((4129777 * v896) >> 32) >> 2)));
  HIDWORD(v766) = v897 + 5;
  LODWORD(v766) = v897 - 1714413563;
  LODWORD(STACK[0xEB0]) = v766 >> 6;
  v898 = LODWORD(STACK[0xA70]) ^ 0x74AFA53E;
  v899 = 1117 * (LODWORD(STACK[0xD00]) ^ 0xBC) + 1147159;
  v900 = v899 - 4160 * (((2064889 * v899) >> 32) >> 1);
  v901 = 1117 * (BYTE1(v898) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v898) ^ 0xAEu) + 2586972)) >> 32) >> 2);
  v902 = 1117 * (BYTE1(LODWORD(STACK[0xA98])) ^ 0xB1) + 2586972;
  v903 = 1117 * (BYTE2(v898) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v898) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  v904 = 1117 * (LOBYTE(STACK[0xA70]) ^ 0x82) + 1147159;
  v905 = v904 - 4160 * (((2064889 * v904) >> 32) >> 1);
  v906 = 1117 * (((v839 ^ 0x4712) >> 8) ^ 0xAE) + 2586972;
  v907 = v906 - 4160 * (((4129777 * v906) >> 32) >> 2);
  v908 = 1117 * (HIBYTE(LODWORD(STACK[0xA80])) ^ 0x7F) + 575255;
  v909 = 1117 * (BYTE2(LODWORD(STACK[0xA98])) ^ 0x7F) + 2298786;
  v910 = 1117 * (HIBYTE(LODWORD(STACK[0xAA0])) ^ 0x2F) + 575255;
  v911 = 1117 * (BYTE2(LODWORD(STACK[0xD00])) ^ 0xB6) + 2298786;
  v912 = v911 - 4160 * (((4129777 * v911) >> 32) >> 2);
  v913 = *(v700 + 4 * (v902 - 4160 * (((4129777 * v902) >> 32) >> 2))) - 1915001779;
  v914 = *(v700 + 4 * (1117 * (HIBYTE(v839) ^ 0x89) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v839) ^ 0x89) + 575255)) >> 32) >> 1)));
  v915 = (v913 >> 8) ^ (v913 >> 4) ^ (*(v700 + 4 * v905) - 1488286341);
  v916 = *(v700 + 4 * v912);
  v917 = (v916 ^ 0x9D98B714) & (2 * (v916 & 0x99D02005)) ^ v916 & 0x99D02005;
  v918 = ((2 * (v916 ^ 0xAC18F71E)) ^ 0x6B91AE36) & (v916 ^ 0xAC18F71E) ^ (2 * (v916 ^ 0xAC18F71E)) & 0x35C8D71A;
  v919 = (v918 ^ 0x21808010) & (4 * v917) ^ v917;
  v920 = ((4 * (v918 ^ 0x14485109)) ^ 0xD7235C6C) & (v918 ^ 0x14485109) ^ (4 * (v918 ^ 0x14485109)) & 0x35C8D718;
  v921 = (v920 ^ 0x15005400) & (16 * v919) ^ v919;
  v922 = ((16 * (v920 ^ 0x20C88313)) ^ 0x5C8D71B0) & (v920 ^ 0x20C88313) ^ (16 * (v920 ^ 0x20C88313)) & 0x35C8D710;
  v923 = v921 ^ 0x35C8D71B ^ (v922 ^ 0x14885100) & (v921 << 8);
  v924 = LODWORD(STACK[0xD50]) ^ v873 ^ (8 * (LODWORD(STACK[0xAF0]) ^ LODWORD(STACK[0xD50]))) ^ v876 ^ v892 ^ v913 ^ v916 ^ (v914 + 1315671559) ^ (v915 - ((2 * v915) & 0xB382945E) - 641643985) ^ (((4 * (((v914 ^ 0x6B33A5E0) + 853771749) ^ v914 ^ ((v914 ^ 0x3FC3E393) + 638829464) ^ ((v914 ^ 0xD20E433) + 351323192) ^ ((v914 ^ 0x3FFF7DBB) + 640638400))) ^ 0x98BF7FEC) - 1367283032) ^ (2 * ((v923 << 16) & 0x35C80000 ^ v923 ^ ((v923 << 16) ^ 0x571B0000) & (((v922 ^ 0x2140860B) << 8) & 0x35C80000 ^ 0x35080000 ^ (((v922 ^ 0x2140860B) << 8) ^ 0x48D70000) & (v922 ^ 0x2140860B))));
  v925 = *(v700 + 4 * v903);
  v926 = (v925 ^ 0x5998B155) & (2 * (v925 & 0x99D02005)) ^ v925 & 0x99D02005;
  v927 = ((2 * (v925 ^ 0x6838F15F)) ^ 0xE3D1A2B4) & (v925 ^ 0x6838F15F) ^ (2 * (v925 ^ 0x6838F15F)) & 0xF1E8D15A;
  v928 = (v927 ^ 0xE1C08010) & (4 * v926) ^ v926;
  v929 = ((4 * (v927 ^ 0x1028514A)) ^ 0xC7A34568) & (v927 ^ 0x1028514A) ^ (4 * (v927 ^ 0x1028514A)) & 0xF1E8D158;
  v930 = (v929 ^ 0xC1A04140) & (16 * v928) ^ v928;
  v931 = ((16 * (v929 ^ 0x30489012)) ^ 0x1E8D15A0) & (v929 ^ 0x30489012) ^ (16 * (v929 ^ 0x30489012)) & 0xF1E8D140;
  v932 = v930 ^ 0xF1E8D15A ^ (v931 ^ 0x10881100) & (v930 << 8);
  v933 = (v932 << 16) & 0x71E80000 ^ v932 ^ ((v932 << 16) ^ 0x515A0000) & (((v931 ^ 0xE160C05A) << 8) & 0x71E80000 ^ 0x11280000 ^ (((v931 ^ 0xE160C05A) << 8) ^ 0x68D10000) & (v931 ^ 0xE160C05A));
  v934 = *(v700 + 4 * (1117 * (v839 ^ 0xAE) + 1147159 - 4160 * (((2064889 * (1117 * (v839 ^ 0xAEu) + 1147159)) >> 32) >> 1)));
  v935 = *(v700 + 4 * (v908 - 4160 * (((2064889 * v908) >> 32) >> 1)));
  v936 = (v935 ^ 0x5D8024E4) & (2 * (v935 & 0x99D02005)) ^ v935 & 0x99D02005;
  v937 = ((2 * (v935 ^ 0x4F0064EE)) ^ 0xADA089D6) & (v935 ^ 0x4F0064EE) ^ (2 * (v935 ^ 0x4F0064EE)) & 0xD6D044EA;
  v938 = (v937 ^ 0x84800000) & (4 * v936) ^ v936;
  v939 = ((4 * (v937 ^ 0x52504429)) ^ 0x5B4113AC) & (v937 ^ 0x52504429) ^ (4 * (v937 ^ 0x52504429)) & 0xD6D044E8;
  v940 = (v939 ^ 0x524000A0) & (16 * v938) ^ v938;
  v941 = ((16 * (v939 ^ 0x84904443)) ^ 0x6D044EB0) & (v939 ^ 0x84904443) ^ (16 * (v939 ^ 0x84904443)) & 0xD6D044E0;
  v942 = v940 ^ 0xD6D044EB ^ (v941 ^ 0x44004400) & (v940 << 8);
  v943 = (4 * v935) ^ (8 * ((v942 << 16) & 0x16D00000 ^ v942 ^ ((v942 << 16) ^ 0x4EB0000) & (((v941 ^ 0x92D0004B) << 8) & 0x16D00000 ^ 0x6900000 ^ (((v941 ^ 0x92D0004B) << 8) ^ 0x10440000) & (v941 ^ 0x92D0004B)))) ^ 0xF7C2A74C;
  v944 = *(v700 + 4 * v901) - 1915001779;
  v945 = (v944 >> 8) ^ (v944 >> 4) ^ (((2 * (((v934 ^ 0x2E4B7F29) + 932929326) ^ v934 ^ ((v934 ^ 0x44DD7FC8) + 1561157581) ^ ((v934 ^ 0x3462AA4) + 177605281) ^ ((v934 ^ 0xFFFF5BE) + 103798203))) & 0x1AF4DAEC ^ 0x8549AE4) + (v934 ^ ((v934 ^ 0xB1C84038) + 672686141) ^ ((v934 ^ 0xF5BE39E4) + 1819154913) ^ ((v934 ^ 0xCDA2D9D9) + 1416821214) ^ ((v934 ^ 0xEFFB7FFE) + 1982554107) ^ 0x6B55B28D));
  v946 = *(v700 + 4 * (v910 - 4160 * (((2064889 * v910) >> 32) >> 1)));
  v947 = (v946 ^ 0x1DC00D55) & (2 * (v946 & 0x99D02005)) ^ v946 & 0x99D02005;
  v948 = ((2 * (v946 ^ 0x3F600D5D)) ^ 0x4D605AB0) & (v946 ^ 0x3F600D5D) ^ (2 * (v946 ^ 0x3F600D5D)) & 0xA6B02D58;
  v949 = (v948 ^ 0x4000010) & (4 * v947) ^ v947;
  v950 = ((4 * (v948 ^ 0xA2902548)) ^ 0x9AC0B560) & (v948 ^ 0xA2902548) ^ (4 * (v948 ^ 0xA2902548)) & 0xA6B02D58;
  v951 = (v950 ^ 0x82802540) & (16 * v949) ^ v949;
  v952 = ((16 * (v950 ^ 0x24300818)) ^ 0x6B02D580) & (v950 ^ 0x24300818) ^ (16 * (v950 ^ 0x24300818)) & 0xA6B02D40;
  v953 = v951 ^ 0xA6B02D58 ^ (v952 ^ 0x22000500) & (v951 << 8);
  v954 = *(v700 + 4 * (v909 - 4160 * (((4129777 * v909) >> 32) >> 2)));
  v955 = *(v700 + 4 * v907) - 1915001779;
  v956 = LODWORD(STACK[0xD60]) ^ v893 ^ (8 * (LODWORD(STACK[0xB20]) ^ LODWORD(STACK[0xD60]))) ^ LODWORD(STACK[0xC50]) ^ LODWORD(STACK[0xC70]) ^ v925 ^ v955 ^ (*(v700 + 4 * v900) - ((2 * *(v700 + 4 * v900) + 1318394614) & 0xB79EAFD6) - 2095454874) ^ (v955 >> 4) ^ (v955 >> 8) ^ (v946 + 1315671559) ^ (2 * v933) ^ (((4 * v946) ^ (8 * ((v953 << 16) & 0x6B00000 ^ v953 ^ ((v953 << 16) ^ 0xD580000) & (((v952 ^ 0x84B02858) << 8) & 0x6B00000 ^ 0x6900000 ^ (((v952 ^ 0x84B02858) << 8) ^ 0x102D0000) & (v952 ^ 0x84B02858)))) ^ 0x7241EAD4) - 1367283032);
  v957 = LODWORD(STACK[0xD70]) ^ v891 ^ LODWORD(STACK[0xC80]) ^ (8 * (LODWORD(STACK[0xB30]) ^ LODWORD(STACK[0xD70]))) ^ LODWORD(STACK[0xC60]) ^ v944 ^ v954 ^ ((v954 ^ 0x4D4F9A05) - 727729662) ^ ((v954 ^ 0x6EDF2131) - 150011594) ^ ((v954 ^ 0xBA408B20) + 596683557) ^ ((v954 ^ 0xFFFFEFEF) + 1714409452) ^ (v935 + 1315671559) ^ (v945 - ((2 * v945) & 0xDDAAB55A) - 288007507) ^ (v943 - 1367283032);
  v958 = v956 ^ 0x258CDCFC;
  v959 = v924 ^ 0xAFBB735B;
  v960 = *(v700 + 4 * (1117 * (BYTE1(v958) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v958) ^ 0xAEu) + 2586972)) >> 32) >> 2)));
  v961 = ((2 * (v960 ^ 0xAF57D80F)) ^ 0x6D0FF014) & (v960 ^ 0xAF57D80F) ^ (2 * (v960 ^ 0xAF57D80F)) & 0x3687F80A;
  v962 = v961 ^ 0x1280080A;
  v963 = 2 * (v960 & 0x99D02005);
  v964 = (v961 ^ 0x24018000) & (4 * (v963 & (v960 ^ 0x9DD79805) ^ v960 & 0x99D02005)) ^ v963 & (v960 ^ 0x9DD79805) ^ v960 & 0x99D02005;
  v965 = ((4 * v962) ^ 0xDA1FE028) & v962 ^ (4 * v962) & 0x3687F808;
  v966 = (v965 ^ 0x1207E000) & (16 * v964) ^ v964;
  v967 = ((16 * (v965 ^ 0x24801802)) ^ 0x687F80A0) & (v965 ^ 0x24801802) ^ (16 * (v965 ^ 0x24801802)) & 0x3687F800;
  v968 = v966 ^ 0x3687F80A ^ (v967 ^ 0x20078000) & (v966 << 8);
  v969 = (v968 << 16) & 0x36870000 ^ v968 ^ ((v968 << 16) ^ 0x780A0000) & (((v967 ^ 0x1680780A) << 8) & 0x36870000 ^ 0x30070000 ^ (((v967 ^ 0x1680780A) << 8) ^ 0x7F80000) & (v967 ^ 0x1680780A));
  v970 = *(v700 + 4 * (1117 * (HIBYTE(v956) ^ 0xEA) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v956) ^ 0xEA) + 575255)) >> 32) >> 1)));
  v971 = (v970 ^ 0x99DAB214) & (2 * (v970 & 0x99D02005)) ^ v970 & 0x99D02005;
  v972 = ((2 * (v970 ^ 0x9A5AF21E)) ^ 0x715A436) & (v970 ^ 0x9A5AF21E) ^ (2 * (v970 ^ 0x9A5AF21E)) & 0x38AD21A;
  v973 = (v972 ^ 0x3008010) & (4 * v971) ^ v971;
  v974 = ((4 * (v972 ^ 0x8A5209)) ^ 0xE2B486C) & (v972 ^ 0x8A5209) ^ (4 * (v972 ^ 0x8A5209)) & 0x38AD218;
  v975 = (v974 ^ 0x20A4000) & (16 * v973) ^ v973;
  v976 = ((16 * (v974 ^ 0x1809213)) ^ 0x38AD21B0) & (v974 ^ 0x1809213) ^ (16 * (v974 ^ 0x1809213)) & 0x38AD210;
  v977 = v975 ^ 0x38AD21B ^ (v976 ^ 0x880000) & (v975 << 8);
  LODWORD(STACK[0xD50]) = (4 * v970) ^ (8 * ((v977 << 16) & 0x38A0000 ^ v977 ^ ((v977 << 16) ^ 0x121B0000) & (((v976 ^ 0x302D20B) << 8) & 0x38A0000 ^ 0x1080000 ^ (((v976 ^ 0x302D20B) << 8) ^ 0xAD20000) & (v976 ^ 0x302D20B)))) ^ 0x6B4610CC;
  v978 = 1117 * (HIBYTE(v924) ^ 0xA8) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v924) ^ 0xA8) + 575255)) >> 32) >> 1);
  v979 = v963 & (v960 ^ 0x15C92B55) ^ v960 & 0x99D02005;
  v980 = ((2 * (v960 ^ 0x6696B55)) ^ 0x3F7296A0) & (v960 ^ 0x6696B55) ^ (2 * (v960 ^ 0x6696B55)) & 0x9FB94B50;
  v981 = (v980 ^ 0xF000000) & (4 * v979) ^ v979;
  v982 = ((4 * (v980 ^ 0x80894950)) ^ 0x7EE52D40) & (v980 ^ 0x80894950) ^ (4 * (v980 ^ 0x80894950)) & 0x9FB94B50;
  v983 = (v982 ^ 0x1EA10940) & (16 * v981) ^ v981;
  v984 = ((16 * (v982 ^ 0x81184210)) ^ 0xFB94B500) & (v982 ^ 0x81184210) ^ (16 * (v982 ^ 0x81184210)) & 0x9FB94B40;
  v985 = v983 ^ 0x9FB94B50 ^ (v984 ^ 0x9B900100) & (v983 << 8);
  LODWORD(STACK[0xD60]) = (((4 * ((v985 << 16) & 0x1A010000 ^ v985 ^ ((v985 << 16) ^ 0xE000000) & (((v984 ^ 0x4294A50) << 8) & 0x1FB90000 ^ (((v984 ^ 0x4294A50) << 8) ^ 0x394B0000) & (v984 ^ 0x4294A50) ^ 0x2000000))) ^ (2 * v960)) & 0xE8168890 ^ 0x60040800) + (v960 ^ (2 * v969) ^ 0x60D09459);
  v986 = HIBYTE(LODWORD(STACK[0xD20])) ^ 0xBE;
  LODWORD(STACK[0xD70]) = 1117 * (BYTE2(v959) ^ 0xB6) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v959) ^ 0xB6u) + 2298786)) >> 32) >> 2);
  v987 = STACK[0xAA8];
  LODWORD(STACK[0xD40]) = 1117 * (BYTE2(LODWORD(STACK[0xAA8])) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(LODWORD(STACK[0xAA8])) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  v988 = 1117 * v986 + 575255 - 4160 * (((2064889 * (1117 * v986 + 575255)) >> 32) >> 1);
  v989 = *(v700 + 4 * (1117 * (HIBYTE(v957) ^ 0x29) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v957) ^ 0x29) + 575255)) >> 32) >> 1)));
  v990 = (v989 + 1315671559) ^ (*(v700 + 4 * (1117 * (v959 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v959 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341);
  v991 = (v989 ^ 0x91988291) & (2 * (v989 & 0x99D02005)) ^ v989 & 0x99D02005;
  v992 = ((2 * (v989 ^ 0x8218C29B)) ^ 0x3791C53C) & (v989 ^ 0x8218C29B) ^ (2 * (v989 ^ 0x8218C29B)) & 0x1BC8E29E;
  v993 = (v992 ^ 0x380801C) & (4 * v991) ^ v991;
  v994 = ((4 * (v992 ^ 0x8482282)) ^ 0x6F238A78) & (v992 ^ 0x8482282) ^ (4 * (v992 ^ 0x8482282)) & 0x1BC8E298;
  v995 = (v994 ^ 0xB008210) & (16 * v993) ^ v993;
  v996 = ((16 * (v994 ^ 0x10C86086)) ^ 0xBC8E29E0) & (v994 ^ 0x10C86086) ^ (16 * (v994 ^ 0x10C86086)) & 0x1BC8E280;
  v997 = v995 ^ 0x1BC8E29E ^ (v996 ^ 0x18882000) & (v995 << 8);
  v998 = (4 * v989) ^ (8 * ((v997 << 16) & 0x1BC80000 ^ v997 ^ ((v997 << 16) ^ 0x29E0000) & (((v996 ^ 0x340C21E) << 8) & 0x1BC80000 ^ 0x13080000 ^ (((v996 ^ 0x340C21E) << 8) ^ 0x8E20000) & (v996 ^ 0x340C21E)))) ^ 0xAD4794E4;
  if (LODWORD(STACK[0xAB0]) >> 6 >= 0x41)
  {
    v999 = LODWORD(STACK[0xAB0]) - 4160;
  }

  else
  {
    v999 = STACK[0xAB0];
  }

  v1000 = 1117 * (BYTE1(v957) ^ 0x28) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v957) ^ 0x28u) + 2586972)) >> 32) >> 2);
  v1001 = *(v700 + 4 * v978);
  v1002 = (v1001 ^ 0x9183A7E0) & (2 * (v1001 & 0x99D02005)) ^ v1001 & 0x99D02005;
  v1003 = ((2 * (v1001 ^ 0x9003A7E0)) ^ 0x13A70FCA) & (v1001 ^ 0x9003A7E0) ^ (2 * (v1001 ^ 0x9003A7E0)) & 0x9D387E4;
  v1004 = (v1003 ^ 0x1810000) & (4 * v1002) ^ v1002;
  v1005 = ((4 * (v1003 ^ 0x8508025)) ^ 0x274E1F94) & (v1003 ^ 0x8508025) ^ (4 * (v1003 ^ 0x8508025)) & 0x9D387E4;
  v1006 = (v1005 ^ 0x1420780) & (16 * v1004) ^ v1004;
  v1007 = ((16 * (v1005 ^ 0x8918061)) ^ 0x9D387E50) & (v1005 ^ 0x8918061) ^ (16 * (v1005 ^ 0x8918061)) & 0x9D387C0;
  v1008 = v1006 ^ 0x9D387E5 ^ (v1007 ^ 0x9100600) & (v1006 << 8);
  v1009 = (((4 * v1001) ^ (8 * ((v1008 << 16) & 0x9D30000 ^ v1008 ^ ((v1008 << 16) ^ 0x7E50000) & (((v1007 ^ 0xC381A5) << 8) & 0x9D30000 ^ 0x8500000 ^ (((v1007 ^ 0xC381A5) << 8) ^ 0x13870000) & (v1007 ^ 0xC381A5)))) ^ 0x27D4BF3C) - 1367283032) ^ (v1001 + 1315671559);
  v1010 = *(v700 + 4 * v988);
  v1011 = (v1010 ^ 0x19DF2C81) & (2 * (v1010 & 0x99D02005)) ^ v1010 & 0x99D02005;
  v1012 = ((2 * (v1010 ^ 0x3B7F6C89)) ^ 0x455E9918) & (v1010 ^ 0x3B7F6C89) ^ (2 * (v1010 ^ 0x3B7F6C89)) & 0xA2AF4C8C;
  v1013 = (v1012 ^ 8) & (4 * v1011) ^ v1011;
  v1014 = ((4 * (v1012 ^ 0xA2A14484)) ^ 0x8ABD3230) & (v1012 ^ 0xA2A14484) ^ (4 * (v1012 ^ 0xA2A14484)) & 0xA2AF4C88;
  v1015 = (v1014 ^ 0x82AD0000) & (16 * v1013) ^ v1013;
  v1016 = ((16 * (v1014 ^ 0x20024C8C)) ^ 0x2AF4C8C0) & (v1014 ^ 0x20024C8C) ^ (16 * (v1014 ^ 0x20024C8C)) & 0xA2AF4C80;
  v1017 = v1015 ^ 0xA2AF4C8C ^ (v1016 ^ 0x22A44800) & (v1015 << 8);
  v1018 = (4 * v1010) ^ (8 * ((v1017 << 16) & 0x2AF0000 ^ v1017 ^ ((v1017 << 16) ^ 0xC8C0000) & (((v1016 ^ 0x800B040C) << 8) & 0x2AF0000 ^ 0xA30000 ^ (((v1016 ^ 0x800B040C) << 8) ^ 0xF4C0000) & (v1016 ^ 0x800B040C)))) ^ 0x765AE474;
  v1019 = v998 - 1367283032;
  v1020 = *(v700 + 4 * v999) - 1915001779;
  v1021 = v990 ^ (v1020 >> 4) ^ (v1020 >> 8) ^ v1019;
  v1022 = *(v700 + 4 * (1117 * (BYTE2(v958) ^ 0xB6) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v958) ^ 0xB6u) + 2298786)) >> 32) >> 2)));
  v1023 = (v1022 ^ 0x599D0C20) & (2 * (v1022 & 0x99D02005)) ^ v1022 & 0x99D02005;
  v1024 = ((2 * (v1022 ^ 0x4A9D0C28)) ^ 0xA69A585A) & (v1022 ^ 0x4A9D0C28) ^ (2 * (v1022 ^ 0x4A9D0C28)) & 0xD34D2C2C;
  v1025 = (v1024 ^ 0x82000008) & (4 * v1023) ^ v1023;
  v1026 = ((4 * (v1024 ^ 0x51452425)) ^ 0x4D34B0B4) & (v1024 ^ 0x51452425) ^ (4 * (v1024 ^ 0x51452425)) & 0xD34D2C2C;
  v1027 = (v1026 ^ 0x41042020) & (16 * v1025) ^ v1025;
  v1028 = ((16 * (v1026 ^ 0x92490C09)) ^ 0x34D2C2D0) & (v1026 ^ 0x92490C09) ^ (16 * (v1026 ^ 0x92490C09)) & 0xD34D2C00;
  v1029 = v1027 ^ 0xD34D2C2D ^ (v1028 ^ 0x10400000) & (v1027 << 8);
  v1030 = *(v700 + 4 * (1117 * (BYTE1(v959) ^ 0xAE) + 2586972 - 4160 * (((4129777 * (1117 * (BYTE1(v959) ^ 0xAEu) + 2586972)) >> 32) >> 2))) - 1915001779;
  v1031 = v1030 ^ (v970 + 1315671559) ^ (v1030 >> 4) ^ (v1030 >> 8) ^ (*(v700 + 4 * (1117 * (v957 ^ 0x25) + 1147159 - 4160 * (((2064889 * (1117 * (v957 ^ 0x25u) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (LODWORD(STACK[0xD50]) - 1367283032);
  v1032 = LODWORD(STACK[0xCB0]) ^ LODWORD(STACK[0xCA0]) ^ LODWORD(STACK[0xCC0]) ^ LODWORD(STACK[0xD80]) ^ (8 * (LODWORD(STACK[0xD80]) ^ LODWORD(STACK[0xB40]))) ^ v1022 ^ v1020 ^ (v1021 - ((2 * v1021) & 0x3E5C83BC) - 1624358434) ^ (2 * ((v1029 << 16) & 0x534D0000 ^ v1029 ^ ((v1029 << 16) ^ 0x2C2D0000) & (((v1028 ^ 0xC30D2C2D) << 8) & 0x534D0000 ^ 0x12410000 ^ (((v1028 ^ 0xC30D2C2D) << 8) ^ 0x4D2C0000) & (v1028 ^ 0xC30D2C2D))));
  v1033 = *(v700 + 4 * (1117 * (BYTE2(v957) ^ 0x85) + 2298786 - 4160 * (((4129777 * (1117 * (BYTE2(v957) ^ 0x85u) + 2298786)) >> 32) >> 2)));
  v1034 = (v1033 ^ 0x99C91114) & (2 * (v1033 & 0x99D02005)) ^ v1033 & 0x99D02005;
  v1035 = ((2 * (v1033 ^ 0xABC9511C)) ^ 0x6432E232) & (v1033 ^ 0xABC9511C) ^ (2 * (v1033 ^ 0xABC9511C)) & 0x32197118;
  v1036 = (v1035 ^ 0x20000010) & (4 * v1034) ^ v1034;
  v1037 = ((4 * (v1035 ^ 0x12091109)) ^ 0xC865C464) & (v1035 ^ 0x12091109) ^ (4 * (v1035 ^ 0x12091109)) & 0x32197118;
  v1038 = (v1037 ^ 0x14000) & (16 * v1036) ^ v1036;
  v1039 = ((16 * (v1037 ^ 0x32183119)) ^ 0x21971190) & (v1037 ^ 0x32183119) ^ (16 * (v1037 ^ 0x32183119)) & 0x32197110;
  v1040 = v1038 ^ 0x32197119 ^ (v1039 ^ 0x20111100) & (v1038 << 8);
  v1041 = (v1040 << 16) & 0x32190000 ^ v1040 ^ ((v1040 << 16) ^ 0x71190000) & (((v1039 ^ 0x12086009) << 8) & 0x32190000 ^ 0x22080000 ^ (((v1039 ^ 0x12086009) << 8) ^ 0x19710000) & (v1039 ^ 0x12086009));
  v1042 = v1009 ^ (LODWORD(STACK[0xD60]) >> 4) ^ (LODWORD(STACK[0xD60]) >> 8);
  v1043 = *(v700 + 4 * LODWORD(STACK[0xD40]));
  v1044 = ((2 * (v1043 & 0x99D02005)) & 0x22204000 | v1043 & 0x99D02005) ^ (2 * (v1043 & 0x99D02005)) & (v1043 ^ 0xB7F05DA0);
  v1045 = ((2 * (v1043 ^ 0xB7F05DA0)) ^ 0x5C40FB4A) & (v1043 ^ 0xB7F05DA0) ^ (2 * (v1043 ^ 0xB7F05DA0)) & 0x2E207DA4;
  v1046 = (v1045 ^ 0xC200481) & (4 * v1044) ^ v1044;
  v1047 = ((4 * (v1045 ^ 0x222004A5)) ^ 0xB881F694) & (v1045 ^ 0x222004A5) ^ (4 * (v1045 ^ 0x222004A5)) & 0x2E207DA4;
  v1048 = (v1047 ^ 0x28007480) & (16 * v1046) ^ v1046;
  v1049 = ((16 * (v1047 ^ 0x6200921)) ^ 0xE207DA50) & (v1047 ^ 0x6200921) ^ (16 * (v1047 ^ 0x6200921)) & 0x2E207D80;
  v1050 = v1048 ^ 0x2E207DA5 ^ (v1049 ^ 0x22005800) & (v1048 << 8);
  v1051 = LODWORD(STACK[0xD90]) ^ LODWORD(STACK[0xD30]) ^ (8 * (LODWORD(STACK[0xB80]) ^ LODWORD(STACK[0xD90]))) ^ LODWORD(STACK[0xDC0]) ^ LODWORD(STACK[0xDB0]) ^ v1043 ^ (2 * ((v1050 << 16) & 0x2E200000 ^ v1050 ^ ((v1050 << 16) ^ 0x7DA50000) & (((v1049 ^ 0xC2025A5) << 8) & 0x2E200000 ^ (((v1049 ^ 0xC2025A5) << 8) ^ 0x207D0000) & (v1049 ^ 0xC2025A5) ^ 0xE000000)));
  v1052 = *(v700 + 4 * LODWORD(STACK[0xD70]));
  v1053 = v1051 ^ (v1031 - ((2 * v1031) & 0xA7C1CCFE) + 1407247999);
  v1054 = *(v700 + 4 * v1000) - 1915001779;
  v1055 = v1033 ^ LODWORD(STACK[0xE30]) ^ (*(v700 + 4 * (1117 * (v987 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v987 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ LODWORD(STACK[0xD60]) ^ (2 * v1041) ^ (v1042 - ((2 * v1042) & 0xC1900B16) - 523762293);
  v1056 = LODWORD(STACK[0xDA0]) ^ LODWORD(STACK[0xEB0]) ^ v1052 ^ ((v1052 ^ 0x556D862B) - 859986384) ^ ((v1052 ^ 0xCF453580) + 1452610949) ^ ((v1052 ^ 0x83F833A7) + 438834084) ^ ((v1052 ^ 0x7FFF5FF7) - 433094668) ^ (v1010 + 1315671559) ^ v1054 ^ (*(v700 + 4 * (1117 * (v958 ^ 0xBC) + 1147159 - 4160 * (((2064889 * (1117 * (v958 ^ 0xBCu) + 1147159)) >> 32) >> 1))) - 1488286341) ^ (((v1054 >> 8) ^ (v1054 >> 4)) - ((2 * ((v1054 >> 8) ^ (v1054 >> 4))) & 0xD7F54E4) + 1186966130) ^ (v1018 - 1367283032);
  v1057 = 1117 * (((v1032 ^ 0x8986) >> 8) ^ 0xAE) + 2586972;
  LODWORD(STACK[0xEB0]) = 1117 * (v1032 ^ 0x3A) + 1147159 - 4160 * (((2064889 * (1117 * (v1032 ^ 0x3Au) + 1147159)) >> 32) >> 1);
  LOBYTE(v1049) = v1056 ^ 0x75;
  v1058 = 1117 * (((v1056 ^ 0x4475) >> 8) ^ 0xB1) + 2586972;
  v1059 = v1058 - 4160 * (((4129777 * v1058) >> 32) >> 2);
  LODWORD(STACK[0xDA0]) = 1117 * (((v1056 ^ 0x27734475) >> 16) ^ 0x7F) + 2298786 - 4160 * (((4129777 * (1117 * (((v1056 ^ 0x27734475) >> 16) ^ 0x7Fu) + 2298786)) >> 32) >> 2);
  LODWORD(STACK[0xD80]) = v1055;
  v1060 = v1055 ^ 0x79;
  LOBYTE(v1058) = v1051 ^ (127 - v1031) ^ 0x35;
  v1061 = ((v1051 ^ (v1031 - ((2 * v1031) & 0xCCFE) - 6529) ^ 0x3C35) >> 8) ^ 0xAE;
  v1062 = 1117 * (((v1055 ^ 0x96886879) >> 16) ^ 0x7F) + 2298786;
  v1063 = 1117 * (((v1053 ^ 0xE173C35) >> 16) ^ 0x7F) + 2298786;
  v1064 = 1117 * (((v1032 ^ 0x15CB8986) >> 16) ^ 0x7F) + 2298786;
  v1065 = v1062 - 4160 * (((4129777 * v1062) >> 32) >> 2);
  LODWORD(STACK[0xDC0]) = v1063 - 4160 * (((4129777 * v1063) >> 32) >> 2);
  v1066 = 1117 * (HIBYTE(v1053) ^ 9) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v1053) ^ 9) + 575255)) >> 32) >> 1);
  v1067 = v1064 - 4160 * (((4129777 * v1064) >> 32) >> 2);
  v1068 = 1117 * (((v1055 ^ 0x6879) >> 8) ^ 0xAE) + 2586972;
  v1069 = 1117 * v1061 + 2586972 - 4160 * (((4129777 * (1117 * v1061 + 2586972)) >> 32) >> 2);
  v1070 = 1117 * (HIBYTE(v1032) ^ 0x12) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v1032) ^ 0x12) + 575255)) >> 32) >> 1);
  v1071 = (v1058 ^ 0x4BF) + 2 * (v1058 & 3);
  LODWORD(STACK[0xD40]) = 1117 * v1071 - 4160 * (((2064889 * (1117 * v1071)) >> 32) >> 1);
  v1072 = *(v700 + 4 * (1117 * (HIBYTE(v1056) ^ 0xE8) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v1056) ^ 0xE8) + 575255)) >> 32) >> 1)));
  v1073 = *(v700 + 4 * (1117 * (HIBYTE(v1055) ^ 0x91) + 575255 - 4160 * (((2064889 * (1117 * (HIBYTE(v1055) ^ 0x91) + 575255)) >> 32) >> 1))) + 1315671559;
  LODWORD(STACK[0xE30]) = ((2 * v1073) & 0x2E099950) + (v1073 ^ 0x3704CCA8);
  v1074 = *(v700 + 4 * v1066);
  v1075 = *(v894 + 4 * (v1057 - 4160 * (((4129777 * v1057) >> 32) >> 2))) - 1915001779;
  v1076 = (v1075 >> 8) ^ (v1075 >> 4) ^ (v1072 + 1315671559) ^ (((4 * (((v1072 ^ 0xEC3F51A4) + 904884641) ^ v1072 ^ ((v1072 ^ 0x12CF840B) + 186622992) ^ ((v1072 ^ 0x2620FFBA) + 1072750527) ^ ((v1072 ^ 0x3EFFF5EE) + 657446379))) ^ 0x98BF7FEC) - 1367283032);
  v1077 = *(v894 + 4 * v1067);
  LODWORD(STACK[0xDB0]) = (v1077 ^ 0xB0FA7544) + 690640193;
  LODWORD(STACK[0xD90]) = (v1077 ^ 0xD9DDB266) + 1074631267;
  LODWORD(STACK[0xD70]) = (v1077 ^ 0xF2D76766) + 1795639139;
  LODWORD(STACK[0xD60]) = (v1077 ^ 0xFDDF7FBF) + 1678729148;
  v1078 = *(v894 + 4 * v1069) - 1915001779;
  LODWORD(STACK[0xD50]) = ((v1078 >> 8) ^ (v1078 >> 4)) - ((2 * ((v1078 >> 8) ^ (v1078 >> 4))) & 0x2BA7C72) + 1365065273;
  v1079 = 1117 * (v1049 ^ 0x2B) + 1147159;
  v1080 = *(v894 + 4 * v1059) - 1915001779;
  v1081 = *(v894 + 4 * (v1068 - 4160 * (((4129777 * v1068) >> 32) >> 2))) - 1915001779;
  v1082 = *(v894 + 4 * v1065);
  LODWORD(STACK[0xD30]) = v1079 - 4160 * (((2064889 * v1079) >> 32) >> 1);
  v1083 = v1076 - ((2 * v1076) & 0xF09C276A) + 2018382773;
  v1084 = *(v894 + 4 * v1070);
  v1085 = (v1084 ^ 0xD1C4B884) & (2 * (v1084 & 0x99D02005)) ^ v1084 & 0x99D02005;
  v1086 = ((2 * (v1084 ^ 0xF064F884)) ^ 0xD369B102) & (v1084 ^ 0xF064F884) ^ (2 * (v1084 ^ 0xF064F884)) & 0x69B4D880;
  v1087 = (v1086 ^ 0x41008000) & (4 * v1085) ^ v1085;
  v1088 = ((4 * (v1086 ^ 0x28944881)) ^ 0xA6D36204) & (v1086 ^ 0x28944881) ^ (4 * (v1086 ^ 0x28944881)) & 0x69B4D880;
  v1089 = (v1088 ^ 0x20904000) & (16 * v1087) ^ v1087;
  v1090 = ((16 * (v1088 ^ 0x49249881)) ^ 0x9B4D8810) & (v1088 ^ 0x49249881) ^ (16 * (v1088 ^ 0x49249881)) & 0x69B4D880;
  v1091 = v1089 ^ 0x69B4D881 ^ (v1090 ^ 0x9048800) & (v1089 << 8);
  v1092 = (v1091 << 16) & 0x9B40000 ^ v1091 ^ ((v1091 << 16) ^ 0x18810000) & (((v1090 ^ 0x60B05081) << 8) & 0x9B40000 ^ 0x9240000 ^ (((v1090 ^ 0x60B05081) << 8) ^ 0x14D80000) & (v1090 ^ 0x60B05081));
  v1093 = v1084 + 1315671559;
  v1094 = ((4 * v1084) ^ (8 * v1092) ^ 0x6EE6441C) - 1367283032;
  v1095 = *(v894 + 4 * LODWORD(STACK[0xDA0]));
  v1096 = *(v894 + 4 * LODWORD(STACK[0xEB0]));
  v1097 = LODWORD(STACK[0xDE0]) ^ LODWORD(STACK[0xDD0]) ^ LODWORD(STACK[0xE70]) ^ LODWORD(STACK[0xB90]) ^ (8 * (LODWORD(STACK[0xBA0]) ^ LODWORD(STACK[0xB90]))) ^ v1082 ^ v1075 ^ ((v1082 ^ 0x5622F49E) - 806169445) ^ ((v1082 ^ 0x77E72D35) - 298382030) ^ ((v1082 ^ 0x3017FDAF) - 1446519380) ^ ((v1082 ^ 0x77FDFBFF) - 298984452) ^ (*(v894 + 4 * LODWORD(STACK[0xD40])) - 1488286341) ^ 0x9B653287 ^ v1083;
  v1098 = *(v894 + 4 * LODWORD(STACK[0xDC0]));
  v1099 = (v1098 ^ 0x51D21EF4) & (2 * (v1098 & 0x99D02005)) ^ v1098 & 0x99D02005;
  v1100 = ((2 * (v1098 ^ 0x42D25EF4)) ^ 0xB604FDE2) & (v1098 ^ 0x42D25EF4) ^ (2 * (v1098 ^ 0x42D25EF4)) & 0xDB027EF0;
  v1101 = (v1100 ^ 0x82000020) & (4 * v1099) ^ v1099;
  v1102 = ((4 * (v1100 ^ 0x49020211)) ^ 0x6C09FBC4) & (v1100 ^ 0x49020211) ^ (4 * (v1100 ^ 0x49020211)) & 0xDB027EF0;
  v1103 = (v1102 ^ 0x48007AC0) & (16 * v1101) ^ v1101;
  v1104 = ((16 * (v1102 ^ 0x93020431)) ^ 0xB027EF10) & (v1102 ^ 0x93020431) ^ (16 * (v1102 ^ 0x93020431)) & 0xDB027ED0;
  v1105 = v1103 ^ 0xDB027EF1 ^ (v1104 ^ 0x90026E00) & (v1103 << 8);
  v1106 = 1117 * ((v1060 ^ 0x428) + ((2 * (STACK[0xD80] & 3)) ^ 4));
  v1107 = v1080 ^ v1098 ^ (((v1080 >> 8) ^ (v1080 >> 4)) - ((2 * ((v1080 >> 8) ^ (v1080 >> 4))) & 0x26A4F28) - 1590351980) ^ (2 * ((v1105 << 16) & 0x5B020000 ^ v1105 ^ ((v1105 << 16) ^ 0x7EF10000) & (((v1104 ^ 0x4B0010E1) << 8) & 0x5B020000 ^ 0x59000000 ^ (((v1104 ^ 0x4B0010E1) << 8) ^ 0x27E0000) & (v1104 ^ 0x4B0010E1)))) ^ 0xB59A0FC3;
  v1108 = LODWORD(STACK[0xDF0]) ^ LODWORD(STACK[0xE80]) ^ LODWORD(STACK[0xBB0]) ^ (8 * (LODWORD(STACK[0xBD0]) ^ LODWORD(STACK[0xBB0]))) ^ LODWORD(STACK[0xE60]) ^ v1095 ^ ((v1095 ^ 0xC067CC42) + 1505225799) ^ ((v1095 ^ 0xCD9D8546) + 1414374723) ^ ((v1095 ^ 0x302B6900) - 1443149563) ^ ((v1095 ^ 0x5BFEFFFF) - 1037115396) ^ (v1074 + 1315671559) ^ v1081 ^ (v1096 - ((2 * v1096 + 1318394614) & 0xDEE5EB7E) + 381518650) ^ (v1081 >> 4) ^ (v1081 >> 8) ^ (((4 * (((v1074 ^ 0x3B0F7DFF) + 585063932) ^ v1074 ^ ((v1074 ^ 0xFB1C313) + 375513880) ^ ((v1074 ^ 0x3D6E9E6C) + 616480361) ^ ((v1074 ^ 0x2FFFFF7B) + 909107072))) ^ 0x98BF7FEC) - 1367283032) ^ 0xDD3022F1;
  v1109 = LODWORD(STACK[0xE20]) ^ LODWORD(STACK[0xE90]) ^ LODWORD(STACK[0xBC0]) ^ (8 * (LODWORD(STACK[0xBE0]) ^ LODWORD(STACK[0xBC0]))) ^ LODWORD(STACK[0xE10]) ^ v1078 ^ v1077 ^ LODWORD(STACK[0xD90]) ^ LODWORD(STACK[0xDB0]) ^ LODWORD(STACK[0xD70]) ^ LODWORD(STACK[0xD60]) ^ v1073 ^ LODWORD(STACK[0xD50]) ^ (4 * LODWORD(STACK[0xE30])) ^ (*(v894 + 4 * LODWORD(STACK[0xD30])) - 1488286341) ^ 0xDB39457F;
  v1110 = LODWORD(STACK[0xE40]) ^ LODWORD(STACK[0xE00]) ^ (*(v894 + 4 * (v1106 - 4160 * (((2064889 * v1106) >> 32) >> 1))) - 1488286341) ^ 0x8E09DEFF ^ ((v1094 ^ v1093) + v1107 - 2 * ((v1094 ^ v1093) & v1107));
  v1111 = 1117 * (((LOWORD(STACK[0xDF0]) ^ LOWORD(STACK[0xE80]) ^ LOWORD(STACK[0xBB0]) ^ (8 * (LOWORD(STACK[0xBD0]) ^ LOWORD(STACK[0xBB0]))) ^ LOWORD(STACK[0xE60]) ^ v1095 ^ ((v1095 ^ 0xCC42) - 5049) ^ ((v1095 ^ 0x8546) - 23229) ^ ((v1095 ^ 0x6900) + 18693) ^ (-v1095 - 8197) ^ (v1074 - 29177) ^ v1081 ^ (v1096 - ((2 * v1096 + 6902) & 0xEB7E) - 31942) ^ (v1081 >> 4) ^ (v1081 >> 8) ^ (((4 * (((v1074 ^ 0x7DFF) + 24060) ^ v1074 ^ ((v1074 ^ 0xC313) - 7400) ^ ((v1074 ^ 0x9E6C) - 16791) ^ ((v1074 ^ 0xFF7B) - 8320))) ^ 0x7FEC) - 5464) ^ 0x22F1) >> 8) ^ 0xDD) + 288186;
  LODWORD(STACK[0xEB0]) = BYTE2(v1108);
  v1112 = HIBYTE(v1097);
  v1113 = 1117 * (HIBYTE(v1097) ^ 0xAC) + 1435345;
  LODWORD(STACK[0xE70]) = 1117 * (BYTE2(v1097) ^ 0x4C) + 861207 - 4160 * (((2064889 * (1117 * (BYTE2(v1097) ^ 0x4Cu) + 861207)) >> 32) >> 1);
  v1114 = 1117 * (BYTE2(v1109) ^ 0x4C) + 861207 - 4160 * (((2064889 * (1117 * (BYTE2(v1109) ^ 0x4Cu) + 861207)) >> 32) >> 1);
  v1115 = v1111 - 4160 * ((1032445 * v1111) >> 32);
  v1116 = 1117 * (BYTE1(v1109) ^ 0xDD) + 288186 - 4160 * ((1032445 * (1117 * (BYTE1(v1109) ^ 0xDDu) + 288186)) >> 32);
  v1117 = 1117 * (BYTE2(v1108) ^ 0xA9) + 861207 - 4160 * (((2064889 * (1117 * (BYTE2(v1108) ^ 0xA9u) + 861207)) >> 32) >> 1);
  v1118 = 1117 * (HIBYTE(v1109) ^ 0xF7) + 1435345 - 4160 * (((2064889 * (1117 * (HIBYTE(v1109) ^ 0xF7) + 1435345)) >> 32) >> 1);
  v1119 = *(v894 + 4 * (1117 * (v1108 ^ 0x63) + 4325024 - 4160 * (((8259553 * (1117 * (v1108 ^ 0x63u) + 4325024)) >> 32) >> 3)));
  LODWORD(STACK[0xE90]) = 1617246163 * *(v894 + 4 * (1117 * (v1109 ^ 0x63) + 4325024 - 4160 * (((8259553 * (1117 * (v1109 ^ 0x63u) + 4325024)) >> 32) >> 3))) - 10193121;
  v1120 = 1617246163 * v1119 - 10193121;
  v1121 = 1617246163 * *(v894 + 4 * (1117 * (v1097 ^ 0xB1) + 4325024 - 4160 * (((8259553 * (1117 * (v1097 ^ 0xB1u) + 4325024)) >> 32) >> 3))) - 10193121;
  LODWORD(STACK[0xE80]) = 1617246163 * *(v894 + 4 * (1117 * (v1110 ^ 0x63) + 4325024 - 4160 * (((8259553 * (1117 * (v1110 ^ 0x63u) + 4325024)) >> 32) >> 3))) - 10193121;
  v1122 = (HIBYTE(v1109) ^ 0x56F6B32A) + HIBYTE(v1109);
  v1123 = (HIBYTE(v1108) ^ 0x56F6B32A) + HIBYTE(v1108);
  v1124 = *(v894 + 4 * (1117 * (HIBYTE(v1110) ^ 0xAC) + 1435345 - 4160 * (((2064889 * (1117 * (HIBYTE(v1110) ^ 0xAC) + 1435345)) >> 32) >> 1)));
  LODWORD(STACK[0xE60]) = (v1124 ^ 0xA8EB55BC) + 825980345;
  LODWORD(STACK[0xE30]) = (v1124 ^ 0xDE39143C) + 1206465593;
  v1125 = *(v894 + 4 * v1115) + 108442623;
  v1126 = *(v894 + 4 * (1117 * (BYTE1(v1097) ^ 0xDD) + 288186 - 4160 * ((1032445 * (1117 * (BYTE1(v1097) ^ 0xDDu) + 288186)) >> 32))) + 108442623;
  v1127 = *(v894 + 4 * (1117 * (BYTE1(v1110) ^ 0xDD) + 288186 - 4160 * ((1032445 * (1117 * (BYTE1(v1110) ^ 0xDDu) + 288186)) >> 32))) + 108442623;
  v1128 = *(v894 + 4 * (1117 * (HIBYTE(v1108) ^ 0xF7) + 1435345 - 4160 * (((2064889 * (1117 * (HIBYTE(v1108) ^ 0xF7) + 1435345)) >> 32) >> 1)));
  v1129 = (v1128 & 0x99D02005 | (2 * (v1128 & 0x99D02005)) & 0x60606060 | 0x18000) ^ (2 * (v1128 & 0x99D02005)) & (v1128 ^ 0xB5F9F630);
  v1130 = (2 * (v1128 ^ 0xB5F9F630)) & 0x2C29D634 ^ 0x24285215 ^ ((2 * (v1128 ^ 0xB5F9F630)) ^ 0x5853AC6A) & (v1128 ^ 0xB5F9F630);
  v1131 = (4 * v1129) & 0x2C018034 ^ v1129 ^ v1130 & 0xEFC1803C & (4 * v1129);
  v1132 = (4 * v1130) & 0x2C29D634 ^ 0xC088621 ^ ((4 * v1130) ^ 0xB0A758D4) & v1130;
  v1133 = (16 * v1131) & 0x2C29D630 ^ v1131 ^ ((16 * v1131) ^ 0x180000) & v1132;
  v1134 = (16 * v1132) & 0x2C29D610 ^ 0x2C209425 ^ ((16 * v1132) ^ 0xC29D6350) & v1132;
  v1135 = v1133 ^ (v1133 << 8) & 0x2C29D600 ^ ((v1133 << 8) ^ 0x9800000) & v1134 ^ 0x24205635;
  LODWORD(STACK[0xE40]) = ((v1135 << 16) ^ 0x56350000) & ((v1134 << 8) & 0x2C290000 ^ 0x4290000 ^ ((v1134 << 8) ^ 0x29D60000) & v1134) ^ v1135 ^ ((v1135 << 16) & 0x2C290000 | 0xD204);
  v1136 = *(v894 + 4 * (v1113 - 4160 * (((2064889 * v1113) >> 32) >> 1)));
  v1137 = ((2 * (v1136 & 0x99D02005)) & 0x200400A | v1136 & 0x99D02005) ^ (2 * (v1136 & 0x99D02005)) & (v1136 ^ 0x17C8DC2A);
  v1138 = ((2 * (v1136 ^ 0x17C8DC2A)) ^ 0x1C31F85E) & (v1136 ^ 0x17C8DC2A) ^ (2 * (v1136 ^ 0x17C8DC2A)) & 0x8E18FC2E;
  v1139 = (v1138 ^ 0xC08840D) & (4 * v1137) ^ v1137;
  v1140 = ((4 * (v1138 ^ 0x82080421)) ^ 0x3863F0BC) & (v1138 ^ 0x82080421) ^ (4 * (v1138 ^ 0x82080421)) & 0x8E18FC2C;
  v1141 = (v1140 ^ 0x800F020) & (16 * v1139) ^ v1139;
  v1142 = ((16 * (v1140 ^ 0x86180C03)) ^ 0xE18FC2F0) & (v1140 ^ 0x86180C03) ^ (16 * (v1140 ^ 0x86180C03)) & 0x8E18FC20;
  v1143 = v1141 ^ 0x8E18FC2F ^ (v1142 ^ 0x8008C000) & (v1141 << 8);
  v1144 = (v1143 << 16) & 0xE180000 ^ v1143 ^ ((v1143 << 16) ^ 0x7C2F0000) & (((v1142 ^ 0xE103C0F) << 8) & 0xE180000 ^ (((v1142 ^ 0xE103C0F) << 8) ^ 0x18FC0000) & (v1142 ^ 0xE103C0F) ^ 0x6000000);
  v1145 = (v1112 ^ 0x56F6B371) + (v1112 ^ 0x5B) - ((2 * ((v1112 ^ 0x56F6B371) + (v1112 ^ 0x5B))) & 0xAD646FF6) - 21282821;
  v1146 = v1121 ^ v1125;
  v1147 = v1120 ^ v1136 ^ v1145 ^ v1127 ^ (2 * v1144);
  v1148 = *(v894 + 4 * v1114);
  v1149 = *(v894 + 4 * LODWORD(STACK[0xE70]));
  v1150 = *(v894 + 4 * v1117);
  v1151 = (v1147 ^ 0x634AE7A0) - 2 * ((v1147 ^ 0x634AE7A0) & 0x95AC7DF ^ v1147 & 0xF);
  v1152 = *(v894 + 4 * (1117 * (BYTE2(v1110) ^ 0xA9) + 861207 - 4160 * (((2064889 * (1117 * (BYTE2(v1110) ^ 0xA9u) + 861207)) >> 32) >> 1)));
  v1153 = *(v894 + 4 * v1118);
  v1154 = v1148 ^ LODWORD(STACK[0xCE0]) ^ ((v1148 ^ 0xA5EEC11D) + 1010753818) ^ ((v1148 ^ 0x5F5F7BC2) - 963683385) ^ ((v1148 ^ 0xE3619AF9) + 2058468094) ^ ((v1148 ^ 0x7FFFFFDD) - 433070118) ^ (v1151 + 156944336);
  v1155 = v1122 ^ v1153 ^ ((v1153 ^ 0x5B84C8F5) - 1034622734) ^ ((v1153 ^ 0x73E2927A) - 365776257) ^ ((v1153 ^ 0xD1F65A8F) + 1210481292) ^ ((v1153 ^ 0x9FBFDFFB) + 108003328) ^ 0x32E56817 ^ (v1146 - ((2 * v1146) & 0xA9956FD8) + 1422571500);
  v1156 = (LODWORD(STACK[0xEB0]) ^ 0xE5) + (LODWORD(STACK[0xEB0]) ^ 0x3EEF2265) - 2 * ((LODWORD(STACK[0xEB0]) ^ 0x3EEF2265) & (LODWORD(STACK[0xEB0]) ^ 0xE5));
  v1157 = (v1150 ^ 0xD59130D4) & (2 * (v1150 & 0x99D02005)) ^ v1150 & 0x99D02005;
  v1158 = ((2 * (v1150 ^ 0xF63130DC)) ^ 0xDFC221B2) & (v1150 ^ 0xF63130DC) ^ (2 * (v1150 ^ 0xF63130DC)) & 0x6FE110D8;
  v1159 = (v1158 ^ 0x4FC00010) & (4 * v1157) ^ v1157;
  v1160 = ((4 * (v1158 ^ 0x20211049)) ^ 0xBF844364) & (v1158 ^ 0x20211049) ^ (4 * (v1158 ^ 0x20211049)) & 0x6FE110D8;
  v1161 = (v1160 ^ 0x2F800040) & (16 * v1159) ^ v1159;
  v1162 = ((16 * (v1160 ^ 0x40611099)) ^ 0xFE110D90) & (v1160 ^ 0x40611099) ^ (16 * (v1160 ^ 0x40611099)) & 0x6FE110D0;
  v1163 = v1161 ^ 0x6FE110D9 ^ (v1162 ^ 0x6E010000) & (v1161 << 8);
  v1164 = v1126 ^ LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0xE90]) ^ v1150 ^ v1124 ^ LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xE60]) ^ ((v1124 ^ 0x2F0260A0) - 1227734875) ^ ((v1124 ^ 0x3FFFFEDB) - 1506812192) ^ (v1156 - ((2 * v1156) & 0x15C20242) - 873395935) ^ ((HIBYTE(v1110) ^ 0x5B) + (HIBYTE(v1110) ^ 0x56F6B371) - ((2 * ((HIBYTE(v1110) ^ 0x5B) + (HIBYTE(v1110) ^ 0x56F6B371))) & 0x9C462A2) - 1528612527) ^ (2 * ((v1163 << 16) & 0x6FE10000 ^ v1163 ^ ((v1163 << 16) ^ 0x10D90000) & (((v1162 ^ 0x1E01049) << 8) & 0x6FE10000 ^ 0xEE10000 ^ (((v1162 ^ 0x1E01049) << 8) ^ 0x61100000) & (v1162 ^ 0x1E01049))));
  v1165 = ((2 * (v1152 & 0x99D02005)) & 0x2000008 | v1152 & 0x99D02005) ^ (2 * (v1152 & 0x99D02005)) & (v1152 ^ 0x5BC39849);
  v1166 = ((2 * (v1152 ^ 0x5BC39849)) ^ 0x84277098) & (v1152 ^ 0x5BC39849) ^ (2 * (v1152 ^ 0x5BC39849)) & 0xC213B84C;
  v1167 = (v1166 ^ 0x80110848) & (4 * v1165) ^ v1165;
  v1168 = ((4 * (v1166 ^ 0x42108844)) ^ 0x84EE130) & (v1166 ^ 0x42108844) ^ (4 * (v1166 ^ 0x42108844)) & 0xC213B848;
  v1169 = (v1168 ^ 0x2A000) & (16 * v1167) ^ v1167;
  v1170 = ((16 * (v1168 ^ 0xC211184C)) ^ 0x213B84C0) & (v1168 ^ 0xC211184C) ^ (16 * (v1168 ^ 0xC211184C)) & 0xC213B840;
  v1171 = v1169 ^ 0xC213B84C ^ (v1170 ^ 0x138000) & (v1169 << 8);
  v1172 = v1152 ^ LODWORD(STACK[0xEA0]) ^ (v1155 - ((2 * v1155) & 0xB44CA198) - 635023156) ^ (2 * ((v1171 << 16) & 0x42130000 ^ v1171 ^ ((v1171 << 16) ^ 0x384C0000) & (((v1170 ^ 0xC200380C) << 8) & 0x42130000 ^ 0x40030000 ^ (((v1170 ^ 0xC200380C) << 8) ^ 0x13B80000) & (v1170 ^ 0xC200380C))));
  v1173 = v1149 ^ LODWORD(STACK[0xEC0]) ^ ((v1149 ^ 0x88C3389) - 1856236658) ^ ((v1149 ^ 0x78576356) - 511229101) ^ ((v1149 ^ 0x691B30DA) - 255127329) ^ ((v1149 ^ 0x7FEFBFFE) - 432037893) ^ (*(v894 + 4 * v1116) - ((2 * *(v894 + 4 * v1116) + 216885246) & 0x4953445A) + 723539500) ^ v1128 ^ (v1123 - ((2 * v1123) & 0xA84121E6) + 1563021555) ^ LODWORD(STACK[0xE80]) ^ (2 * LODWORD(STACK[0xE40]));
  LOBYTE(v1153) = v1164 ^ 0xB7;
  v1174 = 1151 * (((v1164 ^ 0x32B7) >> 8) ^ 0xF4) + 2093669;
  v1175 = STACK[0x370];
  v1176 = *(STACK[0x370] + v1174 - 3200 * (((2684355 * v1174) >> 32) >> 1));
  v1177 = ((v1176 ^ 0x7A) - 122) ^ ((v1176 ^ 0x29) - 41) ^ ((v1176 ^ 0xFFFFFFBB) + 69);
  v1178 = (13 - v1177) & 0xFFFFFFDB;
  v1177 -= 14;
  v1179 = v1178 ^ v1177 & 0xFFFFFF92;
  v1180 = v1177 ^ (2 * ((v1177 ^ 0x5A) & (2 * ((v1177 ^ 0x5A) & (2 * ((v1177 ^ 0x5A) & (2 * ((v1177 ^ 0x5A) & (2 * ((v1177 ^ 0x5A) & (2 * ((v1177 ^ 0x12) & (2 * v1179) ^ v1179)) ^ v1179)) ^ v1179)) ^ v1179)) ^ v1179)) ^ v1179));
  v1181 = v1173 ^ 0xE8D2746F;
  v1182 = STACK[0x380];
  v1182[10] = v1180 ^ 0x95 ^ (v1180 >> 1) & 9;
  v1183 = *(v1175 + 1151 * (HIBYTE(v1173) ^ 0xAC) + 2997204 - 3200 * (((2684355 * (1151 * (HIBYTE(v1173) ^ 0xAC) + 2997204)) >> 32) >> 1));
  v1184 = 1151 * (((v1164 ^ 0x306832B7) >> 16) ^ 0x4A) + 1794409;
  v1185 = v1184 - 3200 * (((2684355 * v1184) >> 32) >> 1);
  v1182[4] = v1183 ^ (v1183 >> 4) ^ 0x28;
  v1186 = v1172 ^ 0x789770D8;
  LOBYTE(v1183) = *(v1175 + v1185);
  LOBYTE(v1094) = ((8 * (v1183 ^ 0x1D)) ^ 0xBA) & ((2 * (v1183 ^ 0x1D)) ^ 0xA8) ^ (2 * (v1183 ^ 0x1D)) & 0x1A;
  LOBYTE(v1094) = 5 * (((v1183 ^ 0x16) - 11) ^ ((v1183 ^ 0xAB) + 74) ^ ((v1183 ^ 0xF4) + 23)) - (((v1094 ^ 0xA1) + 67) ^ ((v1094 ^ 0x6A) - 118) ^ ((v1094 ^ 0xC3) + 33)) - 4;
  v1182[9] = v1183 ^ (16 * v1094) ^ (32 * ((v1094 ^ 4) & (2 * (v1094 & (2 * (v1094 | 0x21)) ^ (v1094 | 0x21))) ^ (v1094 | 0x21))) ^ 0xD6;
  v1187 = *(v1175 + (1151 * (v1172 ^ 3) - 3200 * ((1342178 * (1151 * (v1172 ^ 3u))) >> 32)));
  v1188 = (((v1187 ^ 0xA) - 10) ^ ((v1187 ^ 0xFFFFFF93) + 109) ^ ((v1187 ^ 0x71) - 113)) + 77;
  v1189 = v1188 & 0x2B ^ 0x5E;
  v1190 = (v1188 ^ 0x3E) & (2 * ((v1188 ^ 0x3E) & (2 * ((v1188 ^ 0x3E) & (2 * ((v1188 ^ 0x3E) & (2 * ((v1188 ^ 0x3E) & (2 * ((v1188 ^ 0x3E) & (2 * v1188) ^ v1189)) ^ v1189)) ^ v1189)) ^ v1189)) ^ v1189));
  v1182[15] = v1188 ^ (2 * (v1190 ^ v1189)) ^ (((v1188 ^ (2 * (v1190 ^ v1189))) >> 4) & 7 | 0x58) ^ 0x3E;
  v1191 = *(v1175 + 1151 * (HIBYTE(v1164) ^ 0x62) + 2997204 - 3200 * (((2684355 * (1151 * (HIBYTE(v1164) ^ 0x62) + 2997204)) >> 32) >> 1));
  v1182[8] = v1191 ^ (v1191 >> 4) ^ 0x80;
  v1192 = *(v1175 + (1151 * (v1181 ^ 0xE7) - 3200 * ((1342178 * (1151 * (v1181 ^ 0xE7u))) >> 32)));
  v1193 = (((v1192 ^ 0x59) - 89) ^ ((v1192 ^ 0x6E) - 110) ^ ((v1192 ^ 0xFFFFFFDF) + 33)) + 78;
  v1194 = v1193 & 0xFFFFFF8E ^ 0xFFFFFFA8;
  v1195 = v1193 ^ (2 * ((v1193 ^ 0x3C) & (2 * ((v1193 ^ 0x3C) & (2 * ((v1193 ^ 0x3C) & (2 * ((v1193 ^ 0x3C) & (2 * ((v1193 ^ 0x3C) & (2 * v1194) ^ v1194)) ^ v1194)) ^ v1194)) ^ v1194)) ^ v1194));
  v1182[7] = v1195 ^ (v1195 >> 4) & 7 ^ 0xFD;
  v1196 = *(v1175 + (1151 * (v1153 ^ 0xE6) - 3200 * ((1342178 * (1151 * (v1153 ^ 0xE6u))) >> 32)));
  v1197 = ((v1196 ^ 0x72) - 114) ^ ((v1196 ^ 0xFFFFFF8B) + 117) ^ ((v1196 ^ 0x11) - 17);
  v1198 = v1197 + 44;
  v1199 = ((-45 - v1197) & 0xFFFFFFE0 | 8) ^ (v1197 + 44) & 0x50;
  v1200 = v1198 ^ (2 * ((v1198 ^ 0x60) & (2 * ((v1198 ^ 0x60) & (2 * ((v1198 ^ 0x60) & (2 * ((v1198 ^ 0x60) & (2 * ((v1198 ^ 0x60) & (2 * v1199) ^ v1199)) ^ v1199)) ^ v1199)) ^ v1199)) ^ v1199));
  v1201 = v1154 ^ 0x50399B42;
  v1182[11] = v1200 ^ 0xC5 ^ (v1200 >> 4) & 7;
  v1202 = *(v1175 + 1151 * (HIBYTE(v1154) ^ 0xC) + 2997204 - 3200 * (((2684355 * (1151 * (HIBYTE(v1154) ^ 0xC) + 2997204)) >> 32) >> 1));
  *v1182 = v1202 ^ 0x49 ^ ((v1202 >> 4) | 0xC0);
  LOBYTE(v1202) = *(v1175 + 1151 * (BYTE2(v1201) ^ 0x61) + 1794409 - 3200 * (((2684355 * (1151 * (BYTE2(v1201) ^ 0x61u) + 1794409)) >> 32) >> 1));
  v1182[1] = v1202 ^ ((v1202 << 6) | 0x1D) ^ ((16 * v1202) | 3) ^ 0xE8;
  LOBYTE(v1202) = *(v1175 + 1151 * (BYTE2(v1181) ^ 0x11) + 1794409 - 3200 * (((2684355 * (1151 * (BYTE2(v1181) ^ 0x11u) + 1794409)) >> 32) >> 1));
  v1182[5] = v1202 ^ ((v1202 ^ 0x41) << 6) ^ (16 * (v1202 ^ 0x41)) ^ 0x8B;
  v1203 = *(v1175 + 1151 * (BYTE1(v1181) ^ 0xFA) + 2093669 - 3200 * (((2684355 * (1151 * (BYTE1(v1181) ^ 0xFAu) + 2093669)) >> 32) >> 1));
  v1204 = (((v1203 ^ 0xFFFFFFD6) + 42) ^ ((v1203 ^ 0x7D) - 125) ^ ((v1203 ^ 0x43) - 67)) + 67;
  v1205 = v1204 & 0x22 | 0x5C;
  v1206 = v1204 ^ (2 * ((v1204 ^ 8) & (2 * ((v1204 ^ 8) & (2 * ((v1204 ^ 8) & (2 * ((v1204 ^ 8) & (2 * ((v1204 ^ 8) & (2 * (v1204 & 0x22)) ^ v1205)) ^ v1205)) ^ v1205)) ^ v1205)) ^ v1205));
  v1182[6] = v1206 ^ 0xB3 ^ ((v1206 >> 1) & 9 | 0x44);
  v1207 = *(v1175 + 1151 * (BYTE1(v1186) ^ 0x66) + 2093669 - 3200 * (((2684355 * (1151 * (BYTE1(v1186) ^ 0x66u) + 2093669)) >> 32) >> 1));
  v1208 = (((v1207 ^ 0xFFFFFFEC) + 20) ^ ((v1207 ^ 0x4B) - 75) ^ ((v1207 ^ 0x4F) - 79)) + 30;
  v1209 = v1208 & 0x3D ^ 0xFFFFFFCB;
  v1210 = v1208 ^ 0x2E;
  v1211 = v1208 ^ (2 * (v1210 & (2 * (v1210 & (2 * (v1210 & (2 * (v1210 & (2 * (v1210 & (2 * (((2 * v1208) & 0x5E ^ 0x12) & (v1208 ^ 0xE) ^ v1209)) ^ v1209)) ^ v1209)) ^ v1209)) ^ v1209)) ^ v1209));
  v1182[14] = v1211 ^ 0x63 ^ (v1211 >> 1) & 9;
  v1212 = *(v1175 + 1151 * (BYTE1(v1201) ^ 0xAA) + 2093669 - 3200 * (((2684355 * (1151 * (BYTE1(v1201) ^ 0xAAu) + 2093669)) >> 32) >> 1));
  v1213 = (((v1212 ^ 0x7F) - 127) ^ ((v1212 ^ 0xFFFFFFD8) + 40) ^ ((v1212 ^ 0x4F) - 79)) + 66;
  v1214 = v1213 & 0x51 ^ 0x67;
  v1215 = v1213 ^ (2 * ((v1213 ^ 0xA) & (2 * ((v1213 ^ 0xA) & (2 * ((v1213 ^ 0xA) & (2 * ((v1213 ^ 0xA) & (2 * ((v1213 ^ 0xA) & (2 * (((2 * v1213) & 0x16 ^ 0x5A) & (v1213 ^ 0xA) ^ v1214)) ^ v1214)) ^ v1214)) ^ v1214)) ^ v1214)) ^ v1214));
  v1182[2] = v1215 ^ 0x6B ^ (v1215 >> 1) & 9;
  v1216 = *(v1175 + (1151 * (v1201 ^ 0xFC) - 3200 * ((1342178 * (1151 * (v1201 ^ 0xFCu))) >> 32)));
  v1217 = (((v1216 ^ 0xFFFFFFD3) + 45) ^ ((v1216 ^ 0xFFFFFFF3) + 13) ^ ((v1216 ^ 0xFFFFFFC8) + 56)) + 67;
  v1218 = v1217 & 0xFFFFFF91 | 0x64;
  v1219 = v1217 ^ 0x48;
  v1220 = v1217 ^ (2 * (v1219 & (2 * (v1219 & (2 * (v1219 & (2 * (v1219 & (2 * (v1219 & (2 * (v1219 & (2 * (v1217 & 0xFFFFFF91)) ^ v1218)) ^ v1218)) ^ v1218)) ^ v1218)) ^ v1218)) ^ v1218));
  v1182[3] = v1220 ^ (v1220 >> 4) & 7 ^ 0xFE;
  v1221 = *(v1175 + 1151 * (HIBYTE(v1172) ^ 0x47) + 2997204 - 3200 * (((2684355 * (1151 * (HIBYTE(v1172) ^ 0x47) + 2997204)) >> 32) >> 1));
  v1182[12] = v1221 ^ (v1221 >> 4) ^ 0x29;
  LOBYTE(v1221) = *(v1175 + 1151 * (BYTE2(v1186) ^ 0xAC) + 1794409 - 3200 * (((2684355 * (1151 * (BYTE2(v1186) ^ 0xACu) + 1794409)) >> 32) >> 1));
  v1182[13] = v1221 ^ ((v1221 ^ 0xC5) << 6) ^ (16 * (v1221 ^ 0xC5)) ^ 0x62;
  STACK[0x7690] -= 80;
  v1222 = STACK[0x21E8];
  v1223 = STACK[0xBA90];
  v1222[63] = *(STACK[0xBA90] + 15);
  v1222[62] = v1223[14];
  v1222[61] = v1223[13];
  v1222[60] = v1223[12];
  v1222[59] = v1223[11];
  v1222[58] = v1223[10];
  v1222[57] = v1223[9];
  v1222[56] = v1223[8];
  v1222[55] = v1223[7];
  v1222[54] = v1223[6];
  v1222[53] = v1223[5];
  v1222[52] = v1223[4];
  v1222[51] = v1223[3];
  v1222[50] = v1223[2];
  v1222[49] = v1223[1];
  v1222[48] = *v1223;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xCF0])))();
}

uint64_t sub_10053D34C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 ^ 0x237ALL));
  return (*(v1 + 8 * (v0 ^ 0x3C6B)))();
}

uint64_t sub_10053D48C@<X0>(int a1@<W8>)
{
  v2 = a1 - 30246;
  LODWORD(STACK[0x14B0]) = v1;
  v3 = STACK[0x3AE8];
  v4 = STACK[0x310C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = 910485304;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10053D4DC()
{
  v7 = *(v4 + v3);
  v8 = v3 + v5;
  v9 = v3 - 1;
  *(v2 + v9) = *(v6 + v9) ^ *(v1 + v9) ^ v7 ^ (((v0 + 8) & 0x6B ^ 0xA6) * v9) ^ *(v8 + 5);
  return (*(STACK[0xF18] + 8 * ((26751 * (v9 == 0)) ^ v0)))();
}

uint64_t sub_10053D608@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v7 = v5 + (a5 ^ 0xB5C34D59) + LODWORD(STACK[0x3C94]);
  LODWORD(STACK[0xED0]) = 107;
  LOBYTE(STACK[0x1AF3]) = 107;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x658];
  STACK[0x2A60] = v7;
  STACK[0x85E8] = v7;
  LODWORD(STACK[0x4874]) = v6;
  LODWORD(STACK[0x726C]) = -187458877;
  return (*(STACK[0xF18] + 8 * a5))(v7, v7, a1, a2, a3, a4, 0);
}

uint64_t sub_10053D6E8()
{
  v3 = (v1 + 1945) + *(*(v2 + 8) + 8 * (v0 - 108392493)) + 0x981390BFFFFE342;
  v4 = *STACK[0x5630];
  STACK[0x2DA0] = *STACK[0x4F18];
  STACK[0x43F8] = v3;
  STACK[0x6160] = v4;
  LODWORD(STACK[0x72A4]) = -1643620138;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10053D7D4()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((14362 * (v0 + 1077519390 + 172 * (v0 ^ 0x4FEu) > 0x441C8920)) ^ (v0 + 4999))))();
}

uint64_t sub_10053D840()
{
  v2 = *(v1 + 8);
  STACK[0x19F0] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 + 703924007) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x4344F1FD) - ((&STACK[0x10000] + 3800) & 0x4344F1F8)) ^ 0x2ED2DE01));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC3E4)))(&STACK[0x10ED8]);
  STACK[0x23F0] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 - 13603 + (v0 ^ 0x6FE6))))(v4);
}

uint64_t sub_10053D918()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31352;
  STACK[0x7918] = STACK[0x8DA8] + 16;
  return (*(STACK[0xF18] + 8 * ((10613 * (v1 == 648034296)) ^ (v0 - 29290))))();
}

uint64_t sub_10053D968()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762650142) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xC1B89D30) - ((&STACK[0x10000] + 3800) & 0xC1B89D30)) ^ 0xF0B95014));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9514)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] < 1) * ((((v0 - 1963836860) & 0x750D7FCF) + 33278) ^ 0x9BAF)) ^ v0)))(v2);
}

uint64_t sub_10053DA74@<X0>(int a1@<W8>)
{
  *(v1 + v2) = *(v3 + v2) ^ *(v5 + v2) ^ 0x5F;
  v6 = v2 + 1836519902 < v4;
  if (v4 < 0x6D7711DD != (v2 + 1) > 0xFFFFFFFF9288EE22)
  {
    v6 = v4 < 0x6D7711DD;
  }

  return (*(STACK[0xF18] + 8 * ((v6 * (2843 * (a1 ^ 0x3F0D) - 25531)) ^ a1)))();
}

uint64_t sub_10053DB00()
{
  v1 = STACK[0xF10] - 25125;
  LODWORD(STACK[0x4520]) = v0;
  v2 = LOWORD(STACK[0x9906]);
  STACK[0x7E60] = STACK[0x9908];
  return (*(STACK[0xF18] + 8 * (v1 | (8 * (v2 != 47179)))))();
}

uint64_t sub_10053DB44@<X0>(uint64_t a1@<X8>, uint64_t a2, int a3, char a4, unint64_t a5, int a6, uint64_t a7, int a8, int a9, char *a10)
{
  v16 = *(v11 + 20) - v10;
  *v12 = -371865839;
  v17 = 155453101 * (((&a5 | 0xD7B2FA2ED5C9F7EBLL) - (&a5 & 0xD7B2FA2ED5C9F7E8)) ^ 0x6BC5A4DB33EFEC24);
  a5 = (a1 ^ ((a1 ^ 0xA47D3D5F87E90E57) + 0x6627306593016A32) ^ ((a1 ^ 0x69DE4145F125FD0ELL) - 0x547BB3801A326697) ^ ((a1 ^ 0xDBDFBBDEFDFCEDEFLL) + 0x1985B6E4E9142CD3 + ((v15 - 16802) | 0x5821u)) ^ (((v15 - 2010613307) & 0x77D7F756 ^ 0xE983383B74CF561ELL) + (a1 ^ 0x2BD935016027852FLL)) ^ 0xE32E973717249445) - v17;
  a6 = (v15 + 15901) ^ v17;
  a10 = &a4;
  a7 = v14;
  a9 = v17 + 248778151 * v16 + 1872186447;
  v18 = (*(v13 + 8 * (v15 + 34308)))(&a5);
  return (*(v13 + 8 * ((115 * (a8 == -371865839)) ^ v15)))(v18);
}

uint64_t sub_10053DD18()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34001;
  STACK[0x25E8] = STACK[0x2118] + ((STACK[0xF10] + 1822) ^ 0x9259);
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 28748)))();
}

uint64_t sub_10053DE04()
{
  v0 = (STACK[0xF10] + 1878527140) & 0x9007EA3E;
  v1 = STACK[0xF10] - 32679;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x89C1) + v1)))();
}

uint64_t sub_10053DE64()
{
  v2 = STACK[0xF10] ^ 0x3B5F;
  v3 = STACK[0xF10] - 32816;
  *(STACK[0x2408] - 0x65D7F4DC84452C26) = v0;
  return (*(STACK[0xF18] + 8 * (((v2 + 2231) * (v1 == -955980298)) ^ v3)))();
}

uint64_t sub_10053DF00@<X0>(__int16 a1@<W8>)
{
  LODWORD(STACK[0x6F64]) = v1;
  LOWORD(STACK[0x564E]) = a1;
  return (*(STACK[0xF18] + 8 * ((40359 * (v3 == ((v2 - 426939510) & 0x1972FFBF) - 371901482)) ^ v2)))();
}

uint64_t sub_10053DFB4@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x4942;
  v4 = -63 * (a1 ^ 0x40);
  *v2 = v1 & 0xFFFFFFFE;
  *(v2 + 8) = 1424285854;
  v5 = *(v2 + 32);
  LODWORD(STACK[0x10ED8]) = (v3 - 1762631026) ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0x510B3C26) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xAEF4C3D9)) ^ 0x9FF50EFD));
  STACK[0x10EE0] = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0xDFB8)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((((v4 ^ (*(v2 + 40) == 0)) & 1) * (v3 - 5319)) ^ v3)))(v7);
}

uint64_t sub_10053E090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0xF18] + 8 * v3);
  v6 = *(STACK[0xF18] + 299720);
  STACK[0x598] = v4 + 32;
  v7 = STACK[0xF10];
  v8 = STACK[0xF10] - 32187;
  STACK[0x5040] = v5;
  LODWORD(STACK[0x518]) = v8;
  LODWORD(STACK[0x510]) = (v7 - 24401) ^ v8;
  LODWORD(STACK[0x508]) = v7 - 10041;
  LODWORD(STACK[0x500]) = v7 - 32129;
  LODWORD(STACK[0x4F8]) = (v7 - 32129) ^ 0x554B;
  LODWORD(STACK[0x4F0]) = v7 - 32145;
  LODWORD(STACK[0x4E8]) = v7 - 32168;
  LODWORD(STACK[0x4D8]) = v7 + 1480805685;
  LODWORD(STACK[0x4E0]) = v7 - 32125;
  LODWORD(STACK[0x4D0]) = (v7 - 32125) ^ 0x25A;
  LODWORD(STACK[0x4C8]) = v7 - 8891;
  LODWORD(STACK[0x4C0]) = v7 - 32163;
  LODWORD(STACK[0x4B8]) = v7 - 32120;
  LODWORD(STACK[0x4B0]) = v7 - 32173;
  LODWORD(STACK[0x4A8]) = v7 - 32148;
  LODWORD(STACK[0x4A0]) = v7 - 32122;
  LODWORD(STACK[0x498]) = v7 - 14001;
  LODWORD(STACK[0x490]) = v7 - 32142;
  LODWORD(STACK[0x488]) = (v7 - 32142) ^ 0x555C;
  LODWORD(STACK[0x480]) = v7 - 8483;
  LODWORD(STACK[0x47C]) = v7 - 32119;
  LODWORD(STACK[0x470]) = v7 - 10555;
  LODWORD(STACK[0x468]) = v7 - 32124;
  LODWORD(STACK[0x464]) = (v7 - 32124) ^ 0x554E;
  LODWORD(STACK[0x458]) = v7 - 32208;
  LODWORD(STACK[0x450]) = v7 + 1614148516;
  LODWORD(STACK[0x44C]) = v7 - 32127;
  LODWORD(STACK[0x440]) = v7 - 1071189152;
  LODWORD(STACK[0x438]) = v7 - 32154;
  LODWORD(STACK[0x998]) = v7 - 3232;
  return v6(a1, a2, a3, &STACK[0xA237], &STACK[0x6954], &STACK[0x30FF], 4294919689);
}

uint64_t sub_10053E2E4@<X0>(unsigned int a1@<W8>)
{
  v2 = (a1 ^ 0x55DFDFBFEFFFD1F9) - 0x55DFDFBFEFFFD1F9 + ((2 * a1) & 0x1DFFFA3F2);
  v3 = STACK[0x9840];
  v4 = STACK[0x6758];
  v5 = (STACK[0x6758] + v2);
  v5[19] = *(STACK[0x9840] + 27);
  v5[18] = v3[26];
  *(v4 + (v1 ^ 0x4FB5) + v2) = v3[25];
  v5[16] = v3[24];
  v5[15] = v3[23];
  v5[14] = v3[22];
  v5[13] = v3[21];
  v5[12] = v3[20];
  v5[11] = v3[19];
  v5[10] = v3[18];
  v5[9] = v3[17];
  v5[8] = v3[16];
  v5[7] = v3[15];
  v5[6] = v3[14];
  v5[5] = v3[13];
  v5[4] = v3[12];
  v5[3] = v3[11];
  v5[2] = v3[10];
  v5[1] = v3[9];
  *v5 = v3[8];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10053E548()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37437)))(STACK[0x7CF0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10053E614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = 5 * (v5 ^ 0x980F);
  v7 = v5 - 32426;
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x7BF58A6F) - ((&STACK[0x10000] + 3800) & 0x7BF58A68)) ^ 0x9DD391A0) + 296753103;
  STACK[0x10ED8] = 0;
  v8 = v5 ^ 0x41F1;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * v8))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v9 + 8 * v7);
  return (*(v9 + 8 * ((v6 - 17670) ^ v7)))(v10);
}

uint64_t sub_10053E6CC()
{
  v0 = STACK[0xF10] - 29188;
  LODWORD(STACK[0x394C]) = -371865855;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10053E700()
{
  v0 = 34 * (STACK[0xF10] ^ 0x8BEC);
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x2E0C];
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x30DC]) = (v0 ^ 0x1C8A) + v2;
  STACK[0x5EF8] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = STACK[0x681C];
  LODWORD(STACK[0x2CE8]) = -684815943;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10053E768()
{
  STACK[0x5C50] = ((((16 * v1) ^ 0x257E376477FA357FLL) + 0x350A5BCA2AD18CABLL) ^ (((16 * v1) ^ 0xA7309C273A81D33ALL) - 0x48BB0F7698559510) ^ (((16 * v1) ^ v0 ^ 0x824EAB4DD0278018) - 0x6DC5381C72F3D17FLL)) + 0x2A6CD4994CE4CDFCLL;
  LODWORD(STACK[0x1374]) = 424522024;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10053E88C(uint64_t a1, int a2, int a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11)
{
  v21 = (v13 - 1) & 0xF;
  v22 = v12;
  v23.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v23.i64[1] = a9;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(v17 + v13), *(v20 + v21 - 15)), veorq_s8(*(v19 + v21 - 15), *(v18 + v21 - 15))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a11), vmulq_s8(v23, a10)));
  *(a1 + v13) = vextq_s8(v25, v25, 8uLL);
  return (*(STACK[0xF18] + 8 * (((a2 & ~((v15 | v14) >> v16)) * a3) ^ v11)))();
}

uint64_t sub_10053E960(double a1, __n128 a2, __n128 a3)
{
  a2.n128_u16[0] = 30069;
  a2.n128_u8[2] = 117;
  a2.n128_u8[3] = 117;
  a2.n128_u8[4] = 117;
  a2.n128_u8[5] = 117;
  a2.n128_u8[6] = 117;
  a2.n128_u8[7] = 117;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(STACK[0xF18] + 8 * v3))(xmmword_100F523B0, a2, a3);
}

uint64_t sub_10053EAA0()
{
  v0 = STACK[0xF10] - 15590;
  *(STACK[0xAE48] + 12) = 1600085855;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10053EB58()
{
  v1 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xED0]) = (v0 - 11155) | 0x8801;
  return v1(762853648, 1864610357, 59, 0x8C0A9E6847DF8E23, 4851);
}

uint64_t sub_10053EC20()
{
  v0 = STACK[0xF10] - 33764;
  LODWORD(STACK[0xA204]) = (STACK[0xF10] ^ 0x2007CBDC) + LODWORD(STACK[0xA1FC]);
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11BC)))();
}

uint64_t sub_10053ED98()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x1C71024A) - (&STACK[0x10000] + 3800) - 238584101) ^ 0xE81E9AEA) + 296782153;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD30B)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393287;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10053EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10];
  STACK[0xA408] = STACK[0xA410] + 8;
  return (*(STACK[0xF18] + 8 * (v6 - 29888)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10053EE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(v5 - 586084794) = a3;
  STACK[0x5DC0] = STACK[0x5DC0] - v3 + v4 - 32;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x85AE)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10053F040@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W8>)
{
  v12 = v8 + v7;
  *(*v11 + v12 * v9 + 8) = v10;
  *(*v11 + v12 * v9 + 12) = a1;
  *(*v11 + v12 * v9 + 24) = v10;
  *(*v11 + v12 * v9 + 68) = v10;
  *(*v11 + v12 * v9 + 40) = 0;
  *(*v11 + v12 * v9 + 48) = v10;
  *(*v11 + v12 * v9 + 56) = 0;
  v13 = v8 + a2 < a4;
  if (a4 < v4 != v8 + a2 < v4)
  {
    v13 = a4 < v4;
  }

  *(*v11 + (v8 + v7) * v9 + 64) = v10;
  return (*(STACK[0xF18] + 8 * ((((v5 ^ v13) & 1) * a3) ^ v6)))();
}

uint64_t sub_10053F154()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34346;
  v2 = STACK[0x8A38];
  *(v2 + 4) = STACK[0xF10] ^ 0xF2 ^ LOBYTE(STACK[0xA971]);
  *(v2 + 5) = 769;
  *(v2 + 7) = 0;
  *(v2 + 8) = -1744830464;
  *(v2 + 12) = *(STACK[0x2438] + 1);
  v2 += 12;
  STACK[0x9548] = v2;
  *(v2 + 1) = 6799;
  *(v2 + 3) = -100;
  v3 = 1112314453 * (((~(&STACK[0x10000] + 3800) | 0xB5B30C28) + ((&STACK[0x10000] + 3800) | 0x4A4CF3D7)) ^ 0xA51AD90F);
  LOWORD(STACK[0x10EDC]) = 28939 - v3;
  STACK[0x10EE0] = v2 + 4;
  LODWORD(STACK[0x10ED8]) = v0 - v3 - 7989;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16642)))(&STACK[0x10ED8]);
  *(v2 + 4) = 256;
  v5 = STACK[0x9AD8];
  STACK[0x98B0] = *(v4 + 8 * v1);
  return (*(v4 + 8 * (v1 ^ 0x115D ^ (3388 * ((v1 ^ 0xB63B983C) > 0x4AED3717)))))(v5);
}

uint64_t sub_10053F2A4()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 56);
  v11 = v9 ^ (550399244 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  for (i = 1; i != 99; ++i)
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

  while (v16 != 784);
  v27 = 0;
  v28 = xmmword_100F52B30;
  v29 = xmmword_100F52B40;
  v30 = vdupq_n_s32(v11);
  v31 = v10 + 784;
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

uint64_t sub_10053F6A0()
{
  v0 = STACK[0xF10] - 28838;
  v1 = STACK[0xB098];
  v2 = *(STACK[0xB098] + 132) + (((LODWORD(STACK[0xB0A4]) ^ 0x1924EFF8) - 421851128) ^ (STACK[0xF10] + 361429104 + (LODWORD(STACK[0xB0A4]) ^ 0xEA747C55)) ^ ((LODWORD(STACK[0xB0A4]) ^ 0x1A8554BC) - 444945596)) - 371865796;
  *(v1 + 128) = STACK[0xB0A4];
  *(v1 + 132) = v2;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10053F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = STACK[0xF10];
  v6 = STACK[0xF10] - 35176;
  v7 = ((LODWORD(STACK[0xB738]) ^ 0x65756227) - 1702191655) ^ ((LODWORD(STACK[0xB738]) ^ 0x500422F5) - 1342448373) ^ ((LODWORD(STACK[0xB738]) ^ 0xA277479A) + 1569241190);
  v8 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xFE2745A7) - ((&STACK[0x10000] + 3800) & 0xFE2745A0)) ^ 0x93B16A5B);
  v9 = v8 + (((LODWORD(STACK[0xA194]) ^ 0x63612B68) - 1667312488) ^ ((LODWORD(STACK[0xA194]) ^ 0x51DC57E4) - 1373394916) ^ ((LODWORD(STACK[0xA194]) ^ 0x7B0E7D37) - 2064547127)) - 1462826144;
  LODWORD(STACK[0x10EDC]) = ((*STACK[0xA198] ^ 0xB86F2980) + 1878916857 + ((2 * (*STACK[0xA198] ^ 0x5F)) & 0xFFFFFFBF)) ^ v8;
  LODWORD(STACK[0x10ED8]) = v9;
  LODWORD(STACK[0x10EF4]) = v5 - v8 + 1352419535;
  STACK[0x10EE8] = a5;
  LODWORD(STACK[0x10EE0]) = v8 + v7 - 1038619786;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v5 ^ 0x4008)))(&STACK[0x10ED8]);
  return (*(v10 + 8 * (v6 ^ 0x1925)))(v11);
}

uint64_t sub_10053FA88@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x53D8];
  STACK[0x10EF0] = STACK[0x35E0];
  LODWORD(STACK[0x10EEC]) = v1 - 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x473440B8) + 1194606778) ^ 0x2AA26F46) + 10690;
  STACK[0x10ED8] = v2;
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 28234)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((85 * ((((LODWORD(STACK[0x4B14]) ^ 0xDBCE6A72) + 607229326) ^ ((LODWORD(STACK[0x4B14]) ^ 0x55CC93ED) - 1439470573) ^ ((LODWORD(STACK[0x4B14]) ^ (v1 + 1742135411)) - 1742159502)) - 371865856 < 0xFFFFFFEF)) ^ v1)))(v4);
}

uint64_t sub_10053FC10(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x3760] + 20;
  LOWORD(STACK[0x79DE]) = 7097;
  LODWORD(STACK[0x16B4]) = 2078317911;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10053FD2C(unint64_t a1)
{
  v1 = STACK[0xF10] - 26486;
  LODWORD(STACK[0x10ED8]) = v1 - 353670337 * ((((2 * (&STACK[0x10000] + 3800)) | 0xC54459A4) - (&STACK[0x10000] + 3800) + 492688174) ^ 0x5683D4EF) + 2950;
  STACK[0x10EE0] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE862)))(&STACK[0x10ED8]);
  STACK[0xED0] = STACK[0x6858];
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10053FDD0(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(*(v1 + 480) + 24) = 0;
  *(*(v1 + 480) + 8) = 0;
  *(v1 + 68) = -371865837;
  v3 = (v2 ^ 0x7326) - 371878249 + (((LODWORD(STACK[0x4714]) ^ 0x75A2A119) - 1973592345) ^ ((LODWORD(STACK[0x4714]) ^ 0x58F7918) - 93288728) ^ ((LODWORD(STACK[0x4714]) ^ 0x99F81F10) + ((v2 - 16345) ^ 0x6607E39B)));
  v4 = v3 > 0xFFFFFFE7;
  if (v3 >= 0xFFFFFFE8)
  {
    v5 = 371891407;
  }

  else
  {
    v5 = -371865839;
  }

  LODWORD(STACK[0xB514]) = v5;
  return (*(STACK[0xF18] + 8 * ((37 * v4) ^ v2)))();
}

uint64_t sub_10053FEB0()
{
  v3 = STACK[0x9778] + 8;
  STACK[0x10EF8] = v1;
  LODWORD(STACK[0x10EF0]) = (v0 - 12840) ^ (1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x994BFA0) - 1986740313) ^ 0x66C2957E));
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16815)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((248 * (LODWORD(STACK[0x10ED8]) != ((v0 - 1344318439) & 0x50206BEB) + ((v0 - 35088) | 0x8910) - 371920746)) ^ (v0 - 26818))))(v5);
}

uint64_t sub_100540028()
{
  v0 = STACK[0xF10] ^ 0x9DD4;
  v1 = STACK[0xF10] - 33807;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x57D)))();
}

uint64_t sub_1005400C8()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762673772) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x4F575708) - (&STACK[0x10000] + 3800) - 1331123984) ^ 0x81A965D4));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x7142)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = !v3;
  return (*(v1 + 8 * ((v4 * (v0 - 81814 + 109 * (v0 ^ 0xBABC))) ^ v0)))(v2);
}

uint64_t sub_1005401A0()
{
  STACK[0x10ED8] = *STACK[0x4940];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * (((&STACK[0x10ED8] | 0x5FB5EA49) + (~&STACK[0x10ED8] | 0xA04A15B6)) ^ 0xB993F187) + 296753103;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * (((&STACK[0x10ED8] | 0xFEB2F00C) - (&STACK[0x10ED8] & 0xFEB2F008)) ^ 0xCFB33D28));
  v2 = (*(v1 + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > ((5585 * (v0 ^ 0x8B3E)) ^ 0x6D15)) * (347 * (v0 ^ 0x8B28) + 35955)) ^ (v0 - 28155))))(v2);
}

uint64_t sub_100540340()
{
  v0 = STACK[0xF10] - 3384;
  v1 = STACK[0x1800];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x1800] + 768));
  *(v1 + 768) = 0;
  *(v1 + 776) = 174777416;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100540450()
{
  v0 = STACK[0xF10] - 26284;
  *(STACK[0x68F0] + 64) &= ~0x40u;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100540494()
{
  v0 = STACK[0xF10] - 30191;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x4B48]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005404CC()
{
  v0 = STACK[0xF10] - 34000;
  STACK[0x4D28] = STACK[0x51B8] + ((5 * (STACK[0xF10] ^ 0x967E) - 1397870887) ^ 0xACAEC132);
  v1 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1C84)))();
}

uint64_t sub_1005405F0(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x5850];
  LOWORD(STACK[0x79DE]) = 7081;
  LODWORD(STACK[0x16B4]) = -1227031643;
  return (*(STACK[0xF18] + 8 * (v2 - 271)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100540638@<X0>(uint64_t a1@<X8>)
{
  v1[2] = v3 & 0xFEFFFFFF;
  v1[44] = 2;
  v1[42] = 801182931;
  v1[43] = *(a1 + 408);
  return (*(STACK[0xF18] + 8 * ((366 * ((*(a1 + 64) & 0x40) == ((3 * (v2 ^ 0xA2F3)) ^ 0xFFFFC113) + 1327 * (v2 ^ 0xACEA))) ^ v2)))();
}

uint64_t sub_1005406F8@<X0>(int a1@<W8>)
{
  v3 = v1 + 3591;
  v4 = (((LODWORD(STACK[0x46FC]) ^ (((v1 - 35305) ^ 0x165Au) + 0x260CA37AC3CBCC7DLL)) + (((v1 - 35305) | 0x1C09u) ^ 0xD9F35C853C340120)) ^ ((LODWORD(STACK[0x46FC]) ^ 0xDC7011CE7600CB37) + 0x238FEE3189FF34C9) ^ ((LODWORD(STACK[0x46FC]) ^ 0xFA7CB2B45C1EEFA3) + 0x5834D4BA3E1105DLL)) + 0x22EE7699737308D9;
  v5 = STACK[0x4310];
  v6 = 72 * STACK[0x2CE0] + 0x6A64C81497BD3918;
  v7 = *(*STACK[0x4310] + v6 + 16);
  v8 = (LODWORD(STACK[0x51D4]) | ((LODWORD(STACK[0x51D4]) < 0x3A0405D3uLL) << 32)) + 0x4743B5B12B10767FLL;
  STACK[0x9230] = v8;
  v9 = 16 * v8 - 0x743B5B165147C520;
  *(v7 + v9) = v4;
  *(*(*v5 + v6 + 16) + v9 + 8) = a1;
  LODWORD(STACK[0x5DE8]) = -371865839;
  LODWORD(STACK[0x49F4]) = -371865839;
  v10 = *(v2 - 0x217E172EFA1E81CLL);
  LODWORD(v4) = STACK[0x40B4];
  LODWORD(v7) = 139493411 * ((((&STACK[0x10000] + 3800) | 0x3B2DC38C) - ((&STACK[0x10000] + 3800) | 0xC4D23C73) - 992854925) ^ 0x370022C9);
  LODWORD(STACK[0x10ED8]) = v1 - v7 + 9741;
  LODWORD(STACK[0x10EE8]) = v7 - 516727508;
  LOWORD(STACK[0x10EFC]) = -32733 * ((((&STACK[0x10000] + 3800) | 0xC38C) - ((&STACK[0x10000] + 3800) | 0x3C73) + 15475) ^ 0x22C9) + 27993;
  STACK[0x10EF0] = v10;
  STACK[0x10EE0] = &STACK[0x5DE8];
  LODWORD(STACK[0x10EF8]) = v7 + 1945538087 * v4 + 777074195;
  LODWORD(v10) = v1 ^ 0x4038;
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * v10))(&STACK[0x10ED8]);
  return (*(v11 + 8 * ((11 * (LODWORD(STACK[0x10F00]) != 1497668682)) ^ v3)))(v12);
}

uint64_t sub_10054099C@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 + 21873;
  v4 = v1 + 17823;
  v5 = v1 + 13339;
  v6 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0x5D0CC0E1 | (&STACK[0x10000] + 3800) & 0xA2F33F18) ^ 0xB25AEA38);
  LODWORD(STACK[0x10EE0]) = v5 ^ v6;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE8]) = v6 + 1073095412;
  STACK[0x10EF0] = STACK[0x558];
  STACK[0x10EF8] = a1;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 ^ 0x47D0)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v4))(v8);
}

uint64_t sub_100540A48()
{
  v2 = *(v0 + 32);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762650919) ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0x1D3883F0) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xE2C77C0F)) ^ 0xD3C6B12B));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 26627)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*(v0 + 40) == 0) * (v1 + 15983)) ^ v1)))(v4);
}

uint64_t sub_100540BEC()
{
  v1 = STACK[0xF18];
  STACK[0x1518] = *(STACK[0xF18] + 8 * (v0 - 31799));
  return (*(v1 + 8 * ((((v0 - 1851) | 0x114C) ^ 0x832F) + v0 - 31799)))();
}

uint64_t sub_100540C6C@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0xFE0];
  *(v3 + 24) = v2;
  *(v3 + 16) = *v3 + a1;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x495BBABE ^ (10858 * (v1 > 0x846FA5A4)))))();
}

uint64_t sub_100540D28(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  STACK[0xB80] = 0;
  v8 = *(STACK[0xF18] + 8 * ((19 * (((a1 < 0x10) ^ (v6 - 78)) & 1)) ^ v6));
  STACK[0xB70] = a4;
  STACK[0xB60] = a6;
  STACK[0xB50] = v7;
  return v8();
}

uint64_t sub_100540D7C()
{
  v3 = *STACK[0x5630];
  LODWORD(STACK[0x10ED8]) = (v1 + 17251) ^ (1603510583 * ((2 * ((&STACK[0x10000] + 3800) & 0x2B03ED80) - (&STACK[0x10000] + 3800) + 1425805951) ^ 0xC32720D4));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF6F9)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EDC];
  v7 = *v0;
  v8 = *v2;
  STACK[0x59A0] = v3;
  LODWORD(STACK[0x8344]) = v6;
  STACK[0x5A58] = v7;
  LODWORD(STACK[0x8B1C]) = v8;
  STACK[0x9210] = &STACK[0x2380];
  LODWORD(STACK[0x4F34]) = 589910212;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100540E54()
{
  *(v0 + 4) = 0;
  STACK[0xAC18] = v0 + 4;
  return (*(STACK[0xF18] + 8 * (((*(v0 + 27) != 0) * ((14639 * (v1 ^ 0x4ADA) - 1691206259) & 0x64CDFCFF ^ 0xACD7)) ^ v1)))();
}

uint64_t sub_100540F2C()
{
  v1 = STACK[0xF10] - 9020;
  LODWORD(STACK[0xA200]) = ((STACK[0xF10] - 2007739230) & 0x77AB27EF) + LODWORD(STACK[0xA204]) - 966385065 + *STACK[0xAF40];
  return (*(STACK[0xF18] + 8 * ((4095 * (v0 & ~LOBYTE(STACK[0x845F]))) ^ v1)))();
}

uint64_t sub_100541118()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 56);
  v11 = v9 ^ (550399244 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  for (i = 1; i != 99; ++i)
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

  while (v16 != 784);
  v27 = 0;
  v28 = xmmword_100F52B30;
  v29 = xmmword_100F52B40;
  v30 = vdupq_n_s32(v11);
  v31 = v10 + 784;
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

uint64_t sub_1005413AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2A6C]) = v1;
  v3 = a1 + v1;
  LODWORD(STACK[0xAC9C]) = v3 + 1283269324;
  v4 = (((v2 - 22123) ^ 0x8032) - 800108514 + ((v3 - 337819341) ^ 0x46D86837)) ^ (v3 - 337819341) ^ (((v3 - 337819341) ^ 0xCC5CF64A) + 1523270950) ^ (((v3 - 337819341) ^ 0x1E53AD02) - 2000413074) ^ (((v3 - 337819341) ^ 0xFDBF7FEF) + 1797835905);
  LODWORD(STACK[0x3650]) = v4 ^ 0x80BD8B81;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 26916)))(v4 ^ 0x69684C90);
  STACK[0x5E20] = v6;
  return (*(v5 + 8 * ((233 * (v6 == 0)) ^ v2)))();
}

uint64_t sub_100541594(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA5E4]) ^ 0xE64ABC12) + 431309806) ^ ((LODWORD(STACK[0xA5E4]) ^ 0x382B7BE6) - 942373862) ^ ((LODWORD(STACK[0xA5E4]) ^ 0x1DB2AE6B) - 498249323)) - 566547888;
  v3 = (((LODWORD(STACK[0xA5E0]) ^ 0xDE3BA6AA) + 566516054) ^ ((LODWORD(STACK[0xA5E0]) ^ 0x26885346) - 646468422) ^ ((LODWORD(STACK[0xA5E0]) ^ 0x116632FD) - 291910397)) + 875102941;
  v4 = (((LODWORD(STACK[0xA5E8]) ^ 0x684FB819) - 1750054937) ^ ((LODWORD(STACK[0xA5E8]) ^ 0x58561DFF) - 1482038783) ^ ((LODWORD(STACK[0xA5E8]) ^ 0xD9CC62F7) + 640916745)) + v3 * v2 + 928884157 * (-1330631685 * v3 - 1955555772 * v2) - 1251007622;
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31904) ^ 0x11E4)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ ((v4 ^ 0x1A3AA125) - 773498232) ^ ((v4 ^ 0x6403CE87) - 1344522970) ^ ((v4 ^ 0xB5E6B020) + 2117684099) ^ ((v4 ^ 0xFFFFDBDF) + 874520702) ^ 0x9745BD56);
}

uint64_t sub_1005417B0()
{
  LODWORD(STACK[0x4394]) = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762671427) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4E219068) - 836661138) ^ 0xFF205D4A));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x786B)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((57 * (*STACK[0x970] > (((v0 + 387513259) & 0xE8E6FBEF ^ 0xFFFF4086) + ((v0 + 50307693) & 0xFCFFBFD5)))) ^ v0)))(v3);
}

uint64_t sub_100541894@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = ((2 * (v3 - 8)) & 0x571FEFFA) + ((v3 - 8) ^ v5);
  *(v6 + v2 + 11881 * (a1 ^ 0x66C4u) - 0x5FFF9E972B90833ALL) = *(a2 + v4 + v6);
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100541C14()
{
  STACK[0x5C50] = (((*(v1 + 16) ^ 0x48F4FEFBC77435DDLL) - 0x48F4FEFBC77435DDLL) ^ ((*(v1 + 16) ^ 0x47BCFF70522EF8C3) - 0x47BCFF70522EF8C3) ^ (((v0 + 29678) ^ *(v1 + 16) ^ 0xF48018B7C8F8134) - 0xF48018B7C8F0A0FLL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -1683265715;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100541CDC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a3 < 0x22924BC;
  v10 = ((965 * (v8 ^ v7)) ^ 0xF7D40CDE) + a7;
  v11 = v9 ^ (v10 < 0x22924BC);
  v12 = v10 < a3;
  if (!v11)
  {
    v9 = v12;
  }

  return (*(STACK[0xF18] + 8 * ((v9 * (((v8 ^ v7) + 50204) ^ 0xC42C)) ^ v8)))();
}

uint64_t sub_100541E94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 48);
  STACK[0xA9C8] = a1 + 48;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * ((v1 + 1690416956) & 0x9B3EBFBB ^ 0x9F78 ^ (5 * (v1 ^ 0x104C)))) | v1)))();
}

uint64_t sub_100541F40@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBB40] = 0;
  STACK[0xBB48] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBB40] | v13);
  *(&STACK[0xBB40] | v13) = STACK[0xBB47];
  v17 = *(&STACK[0xBB40] | v14);
  *(&STACK[0xBB40] | v14) = STACK[0xBB46];
  v18 = *(&STACK[0xBB40] | v15);
  *(&STACK[0xBB40] | v15) = STACK[0xBB45];
  v19 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v20 = vdup_n_s32(553300517 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBB47]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBB46]) = v17;
  LOBYTE(STACK[0xBB45]) = v18;
  v23 = STACK[0xBB40];
  LOBYTE(STACK[0xBB40]) = STACK[0xBB44];
  LOBYTE(STACK[0xBB44]) = v23;
  v24 = *(&STACK[0xBB40] | v19);
  *(&STACK[0xBB40] | v19) = STACK[0xBB43];
  LOBYTE(STACK[0xBB43]) = v24;
  v25 = STACK[0xBB41];
  LOBYTE(STACK[0xBB42]) = STACK[0xBB40];
  LOWORD(STACK[0xBB40]) = v25;
  STACK[0xBB40] = vmla_s32(v22, STACK[0xBB40], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBB48];
  v27 = (553300517 * STACK[0xBB48]) ^ v12;
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
  v48 = *(&STACK[0xBB48] + v13);
  *(&STACK[0xBB48] + v13) = STACK[0xBB4F];
  LOBYTE(STACK[0xBB4F]) = v48;
  v49 = *(&STACK[0xBB48] + v14);
  *(&STACK[0xBB48] + v14) = STACK[0xBB4E];
  LOBYTE(STACK[0xBB4E]) = v49;
  v50 = *(&STACK[0xBB48] + v15);
  *(&STACK[0xBB48] + v15) = STACK[0xBB4D];
  LOBYTE(STACK[0xBB4D]) = v50;
  v51 = STACK[0xBB48];
  LOBYTE(STACK[0xBB48]) = STACK[0xBB4C];
  LOBYTE(STACK[0xBB4C]) = v51;
  v52 = *(&STACK[0xBB48] + v19);
  *(&STACK[0xBB48] + v19) = STACK[0xBB4B];
  LOBYTE(STACK[0xBB4B]) = v52;
  v53 = STACK[0xBB49];
  LOBYTE(STACK[0xBB4A]) = STACK[0xBB48];
  LOWORD(STACK[0xBB48]) = v53;
  STACK[0xBB48] = vmla_s32(v22, STACK[0xBB48], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBB48] ^ STACK[0xBB40];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1005423D8(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v5.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v6.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v6.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(STACK[0xF18] + 8 * v4))(a1, 4294951672, 1403876493, 2891099963, 44518, 29816, 35404, 51, a2, a3, a4, v5, v6);
}

uint64_t sub_10054244C()
{
  v5 = v1 < v2;
  if (v5 == v4 + 1292088430 < v2)
  {
    v5 = v4 + 1292088430 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * v3) ^ v0)))(v4 + 1292088430 < v1);
}

uint64_t sub_100542BCC()
{
  v2 = v1 - 23782;
  v3 = v1 + 16238;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))(v0);
  STACK[0x9058] = 0;
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_100542C24()
{
  v2 = v0 - 13088;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 12257)))();
  *(v1 + 120) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100542D34()
{
  v2 = 1133 * (v1 ^ 0x8B2C);
  v3 = (v0 ^ 0x2618E300) - 639165184;
  v4 = ((((v1 + 254323156) ^ v0) - 254358799) ^ v3 ^ ((v0 ^ 0xC0E474D5 ^ v2) + 1058795234)) == 0x1629946F || ((((v1 + 254323156) ^ v0) - 254358799) ^ v3 ^ ((v0 ^ 0xC0E474D5 ^ v2) + 1058795234)) == 371823724;
  v5 = v4;
  v6 = v5 ^ 0x7F;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((163 * (v6 + v7 != 127)) ^ (v1 - 4360))))();
}

uint64_t sub_100542E08(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA594]) ^ 0x94B33325) + 1800195291) ^ ((LODWORD(STACK[0xA594]) ^ 0x46985469) - 1184388201) ^ ((LODWORD(STACK[0xA594]) ^ 0x5B6DA8D7) - 1533913303)) - 199750916;
  v3 = (((LODWORD(STACK[0xA590]) ^ 0x8C3FD098) + 1941974888) ^ ((LODWORD(STACK[0xA590]) ^ 0x54D683D3) - 1423344595) ^ ((LODWORD(STACK[0xA590]) ^ 0x313C945A) - 826053722)) + 1095116801;
  v4 = (((LODWORD(STACK[0xA598]) ^ 0x35278664) - 891782756) ^ ((LODWORD(STACK[0xA598]) ^ 0xEFB04605) + 273660411) ^ ((LODWORD(STACK[0xA598]) ^ 0x33420770) - 859965296)) + v3 * v2 - 309731335 * (1090035543 * v3 - 2100462704 * v2) - 1140981811;
  v5 = (v4 ^ 0xB92BD9A4) & (2 * (v4 & 0xB9B3D234)) ^ v4 & 0xB9B3D234;
  v6 = ((2 * (v4 ^ 0xA86C5DAC)) ^ 0x23BF1F30) & (v4 ^ 0xA86C5DAC) ^ (2 * (v4 ^ 0xA86C5DAC)) & 0x11DF8F98;
  v7 = v6 ^ 0x10408088;
  v8 = (v6 ^ 0x19F0910) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x477E3E60) & v7 ^ (4 * v7) & 0x11DF8F98;
  v10 = (v9 ^ 0x15E0E00) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x10818198)) ^ 0x1DF8F980) & (v9 ^ 0x10818198) ^ (16 * (v9 ^ 0x10818198)) & 0x11DF8F80;
  v12 = v10 ^ 0x11DF8F98 ^ (v11 ^ 0x11D88900) & (v10 << 8);
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31894) ^ 0x11DA)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ (2 * ((v12 << 16) & 0x11DF0000 ^ v12 ^ ((v12 << 16) ^ 0xF980000) & (((v11 ^ 0x70618) << 8) & 0x11DF0000 ^ 0x500000 ^ (((v11 ^ 0x70618) << 8) ^ 0x5F8F0000) & (v11 ^ 0x70618)))) ^ 0x3A59740F);
}

uint64_t sub_10054318C()
{
  v1 = STACK[0x2F8C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393248;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100543204()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 13958)))(v0, 1825);
  return (*(v2 + 8 * (v1 | (32 * ((((((v1 - 35431) | 0x15B) ^ 0x7EFDF7C9) & (2 * v3)) + (v3 ^ 0x3F7EFE1B) + ((v1 + 1568916144) & 0xA27BE9FF ^ 0x4081405E)) >= 0)))))(v3);
}

uint64_t sub_1005432A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = ((*(*a6 + (*a5 & v12)) ^ v10) & 0x7FFFFFFF) * v13;
  v17 = (v16 ^ HIWORD(v16)) * v13;
  *(v9 + v11) = *((v17 >> 24) + v15 + 2) ^ *(a7 + (v17 >> 24)) ^ *((v17 >> 24) + a8 + 4) ^ v17 ^ (BYTE3(v17) * v14);
  return (*(STACK[0xF18] + 8 * (((v11 == 15) * a1) ^ v8)))();
}

uint64_t sub_100543418()
{
  STACK[0x4C38] = 0;
  LODWORD(STACK[0x8C2C]) = v0;
  v3 = (((v2 + 1614867979) | 0x89948511) + 371866415) * LODWORD(STACK[0x5DB0]) - 1231749751;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x996D)))(((v3 ^ 0x3D0DEF74) - 1966155197) ^ v3 ^ ((v3 ^ 0x76D9F8A5) - 1055208044) ^ ((v3 ^ 0xEC076375) + 1539593796) ^ ((v3 ^ 0xEFEFBE6D) + 1479314268) ^ 0x483CCAC9);
  v6 = STACK[0xFB8];
  v7 = *STACK[0xFB8];
  STACK[0x74A8] = (v1 - 1091876433);
  v8 = 16 * (v1 - 1091876433);
  *(v7 + v8 + 8) = v5;
  LODWORD(v7) = *(*v6 + v8 + 8) == 0;
  return (*(v4 + 8 * ((v7 | (2 * v7)) ^ v2)))();
}

uint64_t sub_100543550()
{
  v5 = STACK[0xB998];
  v6 = STACK[0xB9A0];
  *v5 = *STACK[0xB9A0] ^ *v2 ^ 0x5F;
  v5[1] = v6[1] ^ v2[1] ^ 0x5F;
  v5[2] = v6[2] ^ (((v0 - 93) | 0x2A) + 36) ^ v2[2];
  v5[3] = v6[3] ^ v2[3] ^ 0x5F;
  v5[4] = v6[4] ^ v2[4] ^ 0x5F;
  v5[5] = v6[5] ^ v2[5] ^ 0x5F;
  v5[6] = v6[6] ^ v2[6] ^ 0x5F;
  v5[7] = v6[7] ^ v2[7] ^ 0x5F;
  v5[8] = v6[8] ^ v2[8] ^ 0x5F;
  v5[9] = v6[9] ^ v2[9] ^ 0x5F;
  v5[10] = v6[10] ^ v2[10] ^ 0x5F;
  v5[11] = v6[11] ^ v2[11] ^ 0x5F;
  v5[12] = v6[12] ^ v2[12] ^ 0x5F;
  v5[13] = v6[13] ^ v2[13] ^ 0x5F;
  v5[14] = v6[14] ^ v2[14] ^ 0x5F;
  v5[15] = v6[15] ^ v2[15] ^ 0x5F;
  v5[16] = v6[16] ^ v2[16] ^ 0x5F;
  v5[17] = v6[17] ^ v2[17] ^ 0x5F;
  v5[18] = v6[18] ^ v2[18] ^ 0x5F;
  v5[19] = v6[19] ^ v2[19] ^ 0x5F;
  v7 = STACK[0x5938];
  v8 = STACK[0xB998];
  v9 = ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x21A381E0) - 1583119899) ^ 0xCC35AE19) * v4;
  LOWORD(STACK[0x10EE4]) = v9 + (LOWORD(STACK[0x1622]) ^ 0x7AFE) + ((2 * LOWORD(STACK[0x1622])) & 0xF5FC) - 22528;
  LOWORD(STACK[0x10EEC]) = v9 ^ 0x1E00;
  STACK[0x10EF0] = v7;
  STACK[0x10ED8] = v8;
  LODWORD(STACK[0x10EE0]) = v1 ^ v9;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v0 + 46898)))(&STACK[0x10ED8]);
  return (*(v10 + 8 * ((19376 * (LODWORD(STACK[0x10EE8]) == v3)) ^ v0)))(v11);
}

uint64_t sub_100543888()
{
  v0 = STACK[0xF10] + 4806;
  LODWORD(STACK[0xA318]) = ((388 * (STACK[0xF10] ^ 0x8B32)) ^ 0xDD201684) + LODWORD(STACK[0xA324]) + (((LODWORD(STACK[0x83E4]) ^ 0x6981647B) - 1770087547) ^ ((LODWORD(STACK[0x83E4]) ^ 0x1F514125) - 525418789) ^ (((55 * (STACK[0xF10] ^ 0x8966)) ^ 0x60FA9C4A) + (LODWORD(STACK[0x83E4]) ^ 0x9F05E24F)));
  return (*(STACK[0xF18] + 8 * ((11 * LOBYTE(STACK[0xB107])) ^ v0)))();
}

uint64_t sub_100543958()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 3008) | 0x8202) - 25361) ^ v0)))();
}

uint64_t sub_100543A24(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = v11 - 1;
  v18 = ((*(*STACK[0xE50] + (*STACK[0xE58] & v13)) ^ (v16 + v17)) & 0x7FFFFFFF) * v14;
  v19 = (v18 ^ HIWORD(v18)) * v14;
  *(v16 + v17) = *(v9 + v17) ^ *(STACK[0x740] + (v19 >> 24)) ^ *(STACK[0x730] + (v19 >> 24)) ^ *(a8 + (v19 >> 24)) ^ v19 ^ ((((v18 ^ HIWORD(v18)) * v14) >> 24) * ((v8 ^ v12) + 73)) ^ v15;
  return (*(STACK[0xF18] + 8 * (((v17 == 0) * a1) ^ v10)))();
}

uint64_t sub_100543AB8()
{
  v2 = STACK[0x9798] + 8;
  v3 = STACK[0x15C0] + 4;
  v4 = STACK[0x62F8];
  v5 = (((LODWORD(STACK[0x2098]) ^ 0xBF8AA190) + 1081433712) ^ ((LODWORD(STACK[0x2098]) ^ 0x5F4596D5) - 1598396117) ^ ((LODWORD(STACK[0x2098]) ^ (((v0 + 510163450) & 0xE197CF3F) + 152724761)) + ((109 * (v0 ^ 0x4346)) ^ 0xF6E58497))) - 371865843;
  v6 = 155453101 * ((((&STACK[0x10000] + 3800) | 0xA7CC0A19) + (~(&STACK[0x10000] + 3800) | 0x5833F5E6)) ^ 0x41EA11D7);
  LODWORD(STACK[0x10F00]) = v6 + v0 + 9485;
  LODWORD(STACK[0x10EEC]) = v6 + (v5 ^ 0x4FFBFF4E) + ((2 * v5) & 0x9FF7FE9C) - 1281533956;
  STACK[0x10ED8] = v4 + 4;
  STACK[0x10EE0] = v3;
  STACK[0x10EF8] = v2;
  STACK[0x10EF0] = STACK[0x858];
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 + 35365)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((51837 * (LODWORD(STACK[0x10EE8]) == v1)) ^ v0)))(v8);
}

uint64_t sub_100543DE0@<X0>(int a1@<W8>)
{
  v3 = v1 - 1470183953 + (((LODWORD(STACK[0xACD4]) ^ 0x7ABA779) - 128690041) ^ ((LODWORD(STACK[0xACD4]) ^ 0xC83FC3CF) + 935345201) ^ ((((a1 ^ 0x4F1C) - 2079768292) & 0x7BF6F7FF) + (LODWORD(STACK[0xACD4]) ^ 0x2641A3A7) - 641865892));
  v4 = (((v2 ^ 0x29094AF4) - 688474868) ^ ((v2 ^ 0x38FAD7BC) - 955963324) ^ (((((a1 ^ 0x4F1C) - 13281) | 0x74B) ^ 0x7D9AAEC) + (v2 ^ 0xF8265A59))) - 1470183957;
  v5 = v3 < 0xBE88FEDA;
  v6 = v3 > v4;
  if (v5 != v4 < 0xBE88FEDA)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((v6 | (8 * v6)) ^ a1 ^ 0x4F1C)))();
}

uint64_t sub_100543F4C()
{
  v1 = STACK[0xF10] + 10188;
  STACK[0x96C8] = v0;
  return (*(STACK[0xF18] + 8 * (((4 * (v0 != 0)) | (16 * (v0 != 0))) ^ v1)))();
}

uint64_t sub_100543FA4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 21745)))(v2);
}

uint64_t sub_10054406C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 31877)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100560C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8)
{
  v14 = v8 > a6;
  v15 = v12 + a8 + v10 + a7;
  v16 = v14 ^ (v15 < v10 + v11);
  v17 = v15 < v9;
  if (!v16)
  {
    v14 = v17;
  }

  return (*(STACK[0xF18] + 8 * ((v14 * v13) ^ v10)))();
}

uint64_t sub_100560CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  LODWORD(STACK[0x3908]) = (a8 ^ 0xAA0E) + LODWORD(STACK[0x3908]) - 2870;
  v8 = STACK[0x5E20];
  STACK[0x2920] = STACK[0x5E20];
  LODWORD(STACK[0x49CC]) = STACK[0x3650];
  if (STACK[0x7D40])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0xF18] + 8 * ((v10 * ((a8 - 5645) ^ 0x8B1E)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, &off_1010A0B50);
}

uint64_t sub_100560D70()
{
  v2 = *(STACK[0xE60] + (v1 - 649173213));
  v3 = v2 & 0x38 ^ 0xE8 ^ ((v0 + 105) | 0x3B);
  v4 = v2 ^ 0x77 ^ ((v0 - 78) | 0x24);
  v5 = (v2 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (((2 * (v3 ^ v2 & 0x22)) ^ 4) & v4 ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0xFC;
  v6 = 21846 * (((v5 ^ 0x37A1) + 18527) ^ ((v5 ^ 0x25D0) - 9680) ^ ((v5 ^ 0x12B5) + 27979)) - 28595;
  v7 = v6 & 0x78EB ^ 0xDBB0;
  v8 = v6 ^ 0x458A;
  v9 = (v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * ((v6 ^ 0x102) & (2 * v6) & 0xB16 ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xFFC4;
  v10 = (((3 * (((v9 ^ 0x71D7F9F6) - 1909979638) ^ ((v9 ^ 0x6D2778F9) - 1831303417) ^ ((v9 ^ 0x1CF00620u) + 1047008)) + 7968141) >> 16) - 49);
  LODWORD(STACK[0xDF0]) = v1 + 5;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x13E49E9E ^ (25 * ((((v10 | ((v10 < 0x46) << 8)) + 333755985 - v0) | (v0 - ((v10 | ((v10 < 0x46) << 8)) + 333755985))) >> 31)))))(STACK[0xE70]);
}

uint64_t sub_100560FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  v5 = (STACK[0xF10] - 35645) & LODWORD(STACK[0x98D4]);
  LODWORD(STACK[0xA60C]) = (((v5 ^ 0x32AC305E) + 9048311) ^ ((v5 ^ 0x364B6017) + 74268864) ^ ((v5 ^ 0xED329758) - 552290319)) + 705335633;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, 1077852561 - 0x2746 / (LODWORD(STACK[0xA614]) ^ 0xE7011160) * (LODWORD(STACK[0xA614]) ^ 0xE7011160));
}

uint64_t sub_100561090(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x47A4]) = v3;
  STACK[0x14C8] = v5;
  STACK[0x88E8] = v6;
  STACK[0x1998] = v2;
  if (v2)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || v6 == 0;
  return (*(STACK[0xF18] + 8 * ((v9 * (((v4 - 37754) | 0x2048) ^ 0x2414)) ^ v4)))(a1, a2, 371891400);
}

uint64_t sub_100561158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = bswap32(*(v4 + 4) ^ 0xAA627F47);
  *(a3 + 16 * v5 + 8) = v6 - ((v6 << ((71 * ((v3 + 3) ^ 0x8C)) ^ 0x3Au)) & 0x5FDB248C) + 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * (v3 - 12285)))();
}

uint64_t sub_1005611D0@<X0>(__int16 a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, char a9@<W8>)
{
  v21 = *(v20 + (((((v10 - (a9 & 0x7A)) ^ a1) & a4) * a5) & 0x1FF ^ 0x100));
  v22 = v21 & 0x5E ^ 0xD4;
  v23 = 2899 * ((v21 ^ (2 * ((v21 ^ v12) & (2 * ((v21 ^ v12) & (2 * ((v21 ^ v12) & (2 * ((v21 ^ v12) & (2 * ((v21 ^ v12) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xA0) + 8137493;
  v24 = *(v19 + 4 * (v23 - (((13849149 * v23) >> 32) >> 5) * a2)) ^ 0xF725353ALL;
  v25 = *(v20 + (((v24 >> 24) * a5) & 0x1FF));
  v26 = v25 & 0x9A ^ 0xB2;
  v27 = *(v20 + ((BYTE2(v24) * a5) & 0x1FF));
  v28 = v27 & 0xA2 ^ 0x1E;
  v29 = *(v20 + ((BYTE1(v24) * a5) & 0x1FF));
  v30 = v25 ^ (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v31 = v29 & 4 | 0x6B;
  v32 = v27 ^ (2 * ((v27 ^ v12) & (2 * ((v27 ^ v12) & (2 * ((v27 ^ v12) & (2 * ((v27 ^ v12) & (2 * ((v27 ^ v12) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  LODWORD(v24) = *(v20 + ((v24 * a5) & 0x1FF));
  v33 = v24 & 0xDC ^ a7;
  v34 = v29 ^ (2 * ((v29 ^ v9) & (2 * ((v29 ^ v9) & (2 * ((v29 ^ v9) & (2 * ((v29 ^ v9) & (2 * ((v29 ^ v9) & (2 * (((8 * ((v29 & 4) != 0)) | 0x32) & (v29 ^ v9) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31));
  v35 = (v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * (((2 * (v33 ^ v24 & a8)) ^ 0x44444444) & (v24 ^ v9) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v36 = ((v30 ^ 0x9A) << 16) | ((v32 ^ 0xA2) << 8);
  *(v13 + 4 * (*(STACK[0xED0] + 4 * (v11 - v11 / 0x26C4 * a2)) ^ v17)) = a6 ^ ((v14 ^ (((v34 ^ 0x33E9E7) & ~v36 | v36 & 0xCC1600) << 8)) & ((v24 ^ (2 * v35)) ^ v15) | (v24 ^ (2 * v35)) & v16);
  return (*(STACK[0xF18] + 8 * (((v10 == 444) * v18) ^ a3)))();
}

uint64_t sub_100561478()
{
  v1 = *STACK[0x24A8];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296765409;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 28577)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100561520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 912773740) & 0x3667FFBB;
  v4 = STACK[0xF10] - 34130;
  LODWORD(STACK[0xA054]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DDF)))(a1, a2, a3, v3, ((0x88 % (v3 ^ 0x46B4ADB3 ^ LODWORD(STACK[0xA05C]))) ^ 0x3B72F2DE) + 80453485 + ((2 * (0x88 % (v3 ^ 0x46B4ADB3 ^ LODWORD(STACK[0xA05C])))) & 0x1BC));
}

uint64_t sub_100561720()
{
  v0 = STACK[0xF10] - 32130;
  STACK[0x9510] = STACK[0x13C0] + 16;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((LODWORD(STACK[0x998]) ^ 0x629F) + v0)))();
}

uint64_t sub_100561780()
{
  *(v1 + 128) = *v0;
  *(v1 + 129) = *(v2 + 4);
  v5 = v3 == (v4 ^ 0xE9D5F138);
  LOBYTE(STACK[0xA972]) = v5;
  return (*(STACK[0xF18] + 8 * ((v5 * (((v4 + 3126) | 0x40C) ^ 0xA87)) ^ v4)))();
}

uint64_t sub_100561808()
{
  *v0 = v1;
  STACK[0x11D0] = v3;
  v5 = STACK[0xF18];
  *v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xFB3D)))();
  return (*(v5 + 8 * v2))();
}

uint64_t sub_1005618B8()
{
  STACK[0x5C50] = 0x3AE1413A0D5C96D3;
  LODWORD(STACK[0x1374]) = 1209432435;
  return (*(STACK[0xF18] + 8 * (v0 - 29678)))();
}

uint64_t sub_1005619AC()
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
  STACK[0xC060] = 0;
  STACK[0xC068] = v0;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC060] | v11);
  *(&STACK[0xC060] | v11) = 0;
  LOBYTE(STACK[0xC067]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC060] | v13);
  *(&STACK[0xC060] | v13) = STACK[0xC066];
  LOBYTE(STACK[0xC066]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC060] | v15);
  *(&STACK[0xC060] | v15) = STACK[0xC065];
  LOBYTE(STACK[0xC065]) = v16;
  v17 = STACK[0xC060];
  LOBYTE(STACK[0xC060]) = STACK[0xC064];
  LOBYTE(STACK[0xC064]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC060] | v18);
  *(&STACK[0xC060] | v18) = STACK[0xC063];
  LOBYTE(STACK[0xC063]) = v19;
  v20 = STACK[0xC061];
  LOBYTE(STACK[0xC062]) = STACK[0xC060];
  LOWORD(STACK[0xC060]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC060] = vmla_s32(v23, STACK[0xC060], vdup_n_s32(0x1000193u));
  STACK[0xC068] ^= STACK[0xC060];
  STACK[0xC068] = vmul_s32(vsub_s32(STACK[0xC068], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC06A];
  LOWORD(STACK[0xC069]) = STACK[0xC068];
  LOBYTE(STACK[0xC068]) = v24;
  v25 = (&STACK[0xC068] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC06B];
  LOBYTE(STACK[0xC06B]) = v20;
  LOBYTE(v25) = STACK[0xC068];
  LOBYTE(STACK[0xC068]) = STACK[0xC06C];
  LOBYTE(STACK[0xC06C]) = v25;
  v26 = (&STACK[0xC068] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC06D];
  LOBYTE(STACK[0xC06D]) = v25;
  v27 = (&STACK[0xC068] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC06E];
  LOBYTE(STACK[0xC06E]) = v26;
  v28 = (&STACK[0xC068] | v11);
  v29 = *v28;
  *v28 = STACK[0xC06F];
  LOBYTE(STACK[0xC06F]) = v29;
  v30 = STACK[0xC068];
  v31 = (1269228062 * STACK[0xC068]) ^ v10;
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
  *(v2 + 264) = STACK[0xC068];
  return (*(STACK[0xF18] + 8 * (((v1 + 19296) | 0x329) - 21663)))(v48, v49);
}

uint64_t sub_100561E44(unsigned int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(STACK[0xED0] + (a5 - 822663583)) = v5;
  v8 = v7 < a1;
  if (v8 == a5 + 1553197639 < (v6 - 1919138776))
  {
    v8 = a5 + 1553197639 < v7;
  }

  return (*(STACK[0xF18] + 8 * ((v8 * a3) ^ v6)))();
}

uint64_t sub_100561EF4()
{
  STACK[0x7478] = *v1;
  STACK[0x5300] = STACK[0x7008];
  LODWORD(STACK[0x567C]) = 797082749;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100561FD4()
{
  v0 = STACK[0xF10] - 31342;
  STACK[0x3018] = STACK[0x1DD8] + 16;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x81C)))();
}

uint64_t sub_10056203C@<X0>(uint64_t a1@<X0>, char a2@<W8>, __n128 a3@<Q0>)
{
  v4.n128_u64[0] = (a2 + 13) & 0xF;
  v4.n128_u64[1] = (a2 + 12) & 0xF;
  v5.n128_u64[0] = (a2 + 11) & 0xF;
  v5.n128_u64[1] = (a2 + 10) & 0xF;
  v6.n128_u64[0] = (a2 + 9) & 0xF;
  v6.n128_u64[1] = a2 & 0xF ^ 8;
  v10.val[0].i64[0] = (a2 + 7) & 0xF;
  v10.val[0].i64[1] = (a2 + 6) & 0xF;
  v10.val[1].i64[0] = (a2 + 5) & 0xF;
  v10.val[1].i64[1] = (a2 + 4) & 0xF;
  v10.val[2].i64[0] = (a2 + 3) & 0xF;
  v10.val[2].i64[1] = (a2 + 2) & 0xF;
  v10.val[3].i64[0] = (a2 + 1) & 0xF;
  v10.val[3].i64[1] = a2 & 0xF;
  v7.n128_u64[0] = 0x7575757575757575;
  v7.n128_u64[1] = 0x7575757575757575;
  v8.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v8.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(STACK[0xF18] + 8 * v3))(a1, 1, 58, a3, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v7, v8);
}

uint64_t sub_1005622B0()
{
  v0 = (STACK[0xF10] - 238046844) & 0xE2FC344;
  v1 = STACK[0xF10] + 9506;
  STACK[0x2870] = STACK[0x8DD0];
  v2 = ((((LODWORD(STACK[0x8BA0]) >> 4) ^ 0xEC6EFEDB) + 1120029579) ^ (((LODWORD(STACK[0x8BA0]) >> 4) ^ 0x8C858A3C) + 573128558) ^ ((v0 ^ 0x6E762892 ^ (LODWORD(STACK[0x8BA0]) >> 4)) - 1059414584)) - 737097065;
  LODWORD(STACK[0x5D0C]) = (16 * (((v2 ^ 0x1F25505C) + 77077525) ^ v2 ^ ((v2 ^ 0xCEDE882) + 122725579) ^ ((v2 ^ 0xA75F416) + 29931615) ^ ((v2 ^ 0xDFFFF7F) + 105034552))) ^ 0x5D4DAAAF;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1005623E4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 += v4 - 3201;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x46B6016A) - ((&STACK[0x10000] + 3800) & 0x46B60168)) ^ 0xA0901AA5) + 296785544;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 ^ 0xC648)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x1AED)))(v6);
}

uint64_t sub_100562494()
{
  v2 = STACK[0xB754];
  LODWORD(STACK[0x81BC]) = v1;
  return (*(STACK[0xF18] + 8 * (((8 * (((v2 == -371865839) ^ ((v0 ^ 0x88) + 86)) & 1)) & 0xEF | (16 * (((v2 == -371865839) ^ ((v0 ^ 0x88) + 86)) & 1))) ^ v0)))();
}

uint64_t sub_1005624EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0xDF0]) = v5 + 5;
  v6 = v4 - 178634741 + a4 - 7624 == 1753795542;
  return (*(STACK[0xF18] + 8 * ((4 * v6) | (8 * v6) | a4)))(STACK[0xE70]);
}

uint64_t sub_100562594()
{
  v0 = (STACK[0xF10] + 2128342208) & 0x8123EF7C;
  v1 = STACK[0xF10] - 34537;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x74E1) + v1)))();
}

uint64_t sub_1005625EC(uint64_t a1, int a2)
{
  STACK[0xDB0] = 0;
  STACK[0xDA0] = &STACK[0x622C];
  v3 = *(STACK[0xF18] + 8 * (((((a2 + 1760661850) & 0x970EBF7B) - 18043) * (*(v2 + 24) == STACK[0xD18])) ^ a2));
  STACK[0xD20] = STACK[0xD18];
  return v3();
}

uint64_t sub_10056267C@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  STACK[0x4118] = *(STACK[0xF18] + 8 * v2);
  LOWORD(STACK[0x46E6]) = v1;
  return (*(v3 + 8 * a1))(7177, 4294960119, 55225, 10311, 17120);
}

uint64_t sub_10056277C()
{
  v1 = 0;
  v2 = v0 ^ 0x1F6;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v11 = *STACK[0x8700];
  v12 = v10 ^ v9 ^ (550399244 * v11) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 ^ v9) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
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
    v21 = *(v11 + v1);
    v35.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v35.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v35.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v35.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v11 + v1) = vmulq_s8(vqtbl4q_s8(v35, xmmword_100BC7660), v19);
    v1 += 16;
    v17 = vaddq_s32(v17, v20);
    v16 = vaddq_s32(v16, v20);
    v15 = vaddq_s32(v15, v20);
    v14 = vaddq_s32(v14, v20);
  }

  while (v1 != 784);
  v22 = 0;
  v23 = xmmword_100F52B30;
  v24 = vdupq_n_s32(v12);
  v25 = xmmword_100F52B40;
  v26 = v11 + 784;
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
    v30 = *(v11 + 8 * v29) ^ *(v11 + 8 * v28);
    *(v11 + 8 * v28) = v30;
    v31 = *(v11 + 8 * v29) ^ v30;
    *(v11 + 8 * v29) = v31;
    *(v11 + 8 * v28) ^= v31;
    v32 = v28-- + 1;
  }

  while (v32 > 2);
  return (*(STACK[0xF18] + 8 * v2))(xmmword_100BC7690, xmmword_100BC76A0, v23);
}

uint64_t sub_100562A34@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF10] - 2333;
  v2 = STACK[0xF10] - 32535;
  LODWORD(STACK[0x4764]) = a1;
  v3 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((v1 ^ 0x8AB3) + v2)))();
}

uint64_t sub_100562A84()
{
  LODWORD(STACK[0x10ED8]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xB11F9598) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4EE06A60)) ^ 0x57398E57) - 1701;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 43012)))(&STACK[0x10ED8]);
  v3 = STACK[0x10EE0];
  STACK[0x2800] = STACK[0x10EE0];
  return (*(v1 + 8 * (((v3 == 0) * ((((v0 - 8906) | 0x8A10) + 24089) ^ ((v0 + 23844) | 0xA22))) ^ v0)))(v2);
}

uint64_t sub_100562B48(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = *(*(STACK[0x75D0] + 112) + v8 * a3 + 8);
  v16 = v10 + v12 + ((v9 - 101161738) & a2);
  v17 = (((v15 ^ (((v9 - 33377) | 0x8313) + a4)) + a5) ^ ((v15 ^ a6) + a7) ^ ((v15 ^ a8) + v11)) + v13;
  v18 = v17 < v14;
  v19 = v16 < v17;
  if (v16 < v14 != v18)
  {
    v19 = v18;
  }

  return (*(STACK[0xF18] + 8 * (((8 * v19) | (16 * v19)) ^ v9)))();
}

uint64_t sub_100562BE8(void *a1)
{
  v1 = STACK[0xB90];
  *a1 = 0x3CE25E0EC5200378;
  return (*(STACK[0xF18] + 8 * (((*(*(STACK[0x9D0] + 80) + 24) == STACK[0xD18]) * (v1 + 45745)) ^ v1)))();
}

uint64_t sub_100562CE8()
{
  STACK[0xAD18] = v1;
  if (v1)
  {
    v2 = STACK[0xACF8] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * (((((v0 + 26) ^ v3) & 1) * ((v0 - 49382) ^ 0x35F)) ^ v0)))();
}

uint64_t sub_100562D40()
{
  v2 = ((v1 ^ 0xE3380D15) + 482865899) ^ ((v1 ^ 0xE7272611) + 416864751) ^ ((v1 ^ 0xEDCA672E ^ (11881 * (v0 ^ 0xA953))) + (((v0 ^ 0xA953) + 3943) ^ 0x12351C81));
  v3 = LODWORD(STACK[0x3908]) + 519737361;
  v2 += 147871518;
  v4 = (v3 < 0x1EFA900D) ^ (v2 < 0x1EFA900D);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x1EFA900D;
  }

  return (*(STACK[0xF18] + 8 * ((53 * !v5) ^ v0)))();
}

uint64_t sub_1005630AC()
{
  v1 = (STACK[0xF10] - 35579) | 0x1D00;
  v2 = STACK[0xF10] - 9913;
  STACK[0x7DB8] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 7457) * (v0 != 0)) ^ v2)))();
}

uint64_t sub_1005630F4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 34702)))(v1);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100563134@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x9840];
  *(v2 + 96) = a1;
  *(v2 + 88) = STACK[0x36E8];
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x1708] = v4;
  STACK[0xA820] = v4;
  STACK[0xA828] = (v4 + 16);
  STACK[0xA830] = (v4 + 48);
  STACK[0x7690] = v3 + 96;
  STACK[0x6758] = 0;
  LODWORD(STACK[0x5E2C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (a2 ^ 0x49A1 ^ (65492 * (((((((~(*v2 - 96) | 0xFFFFFF00) + a2) ^ (~(*v2 - 96) + a2)) - 1) & ~((a2 - 1473876037) ^ ((~(*v2 - 96) | 0xFFFFFF00) + a2))) >> 15) & 1)))))();
}

uint64_t sub_100563268()
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x3F10];
  LODWORD(STACK[0x648C]) = 223314137;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005632A8()
{
  STACK[0x9058] = v1;
  LODWORD(STACK[0x892C]) = v2;
  STACK[0x97E0] = v1;
  STACK[0x5B60] = STACK[0x27B0];
  return (*(STACK[0xF18] + 8 * ((((v0 + 12739) ^ 0x2807 ^ (v0 + 742601159) & 0xD3BCFFFB) * (v2 == 1202816384)) ^ v0)))();
}

uint64_t sub_1005633A4@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBDE0] = 0;
  STACK[0xBDE8] = v2 - 0x10A99C80114D1487;
  v13 = 16777619 * ((-901292213 * v12 + 7) ^ (-901292213 * v12)) % 7;
  v14 = 16777619 * ((-901292213 * v12 + 6) ^ (-901292213 * v12)) % 6;
  v15 = 16777619 * ((-901292213 * v12 + 5) ^ (-901292213 * v12)) % 5;
  v16 = *(&STACK[0xBDE0] | v13);
  *(&STACK[0xBDE0] | v13) = STACK[0xBDE7];
  v17 = *(&STACK[0xBDE0] | v14);
  *(&STACK[0xBDE0] | v14) = STACK[0xBDE6];
  v18 = *(&STACK[0xBDE0] | v15);
  *(&STACK[0xBDE0] | v15) = STACK[0xBDE5];
  v19 = vdup_n_s32(-901292213 * v12);
  v20 = 16777619 * ((-901292213 * v12 + 3) ^ (-901292213 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = -901292213 * v12 + 1;
  LOBYTE(STACK[0xBDE7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBDE6]) = v17;
  LOBYTE(STACK[0xBDE5]) = v18;
  v23 = STACK[0xBDE0];
  LOBYTE(STACK[0xBDE0]) = STACK[0xBDE4];
  LOBYTE(STACK[0xBDE4]) = v23;
  v24 = *(&STACK[0xBDE0] | v20);
  *(&STACK[0xBDE0] | v20) = STACK[0xBDE3];
  LOBYTE(STACK[0xBDE3]) = v24;
  v25 = STACK[0xBDE1];
  LOBYTE(STACK[0xBDE2]) = STACK[0xBDE0];
  LOWORD(STACK[0xBDE0]) = v25;
  STACK[0xBDE0] = vmla_s32(v22, STACK[0xBDE0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBDE8];
  v27 = (-901292213 * STACK[0xBDE8]) ^ v12;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_100BC7620;
  v30 = xmmword_100BC7630;
  v31 = xmmword_100BC7640;
  v32 = xmmword_100BC7650;
  v33.i64[0] = 0x9393939393939393;
  v33.i64[1] = 0x9393939393939393;
  v34.i64[0] = 0x1000000010;
  v34.i64[1] = 0x1000000010;
  do
  {
    v35 = *(v26 + v3);
    v49.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v49.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v49.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v49.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v3) = vmulq_s8(vqtbl4q_s8(v49, xmmword_100BC7660), v33);
    v3 += 16;
    v32 = vaddq_s32(v32, v34);
    v31 = vaddq_s32(v31, v34);
    v30 = vaddq_s32(v30, v34);
    v29 = vaddq_s32(v29, v34);
  }

  while (v3 != 384);
  v36 = 47;
  do
  {
    v37 = 16777619 * ((v27 + v36) ^ v27) % v36;
    v38 = *(v26 + 8 * v37) ^ *(v26 + 8 * v36);
    *(v26 + 8 * v36) = v38;
    v39 = *(v26 + 8 * v37) ^ v38;
    *(v26 + 8 * v37) = v39;
    *(v26 + 8 * v36) ^= v39;
    v40 = v36-- + 1;
  }

  while (v40 > 2);
  v41 = *(&STACK[0xBDE8] + v13);
  *(&STACK[0xBDE8] + v13) = STACK[0xBDEF];
  v42 = *(&STACK[0xBDE8] + v14);
  *(&STACK[0xBDE8] + v14) = STACK[0xBDEE];
  v43 = *(&STACK[0xBDE8] + v15);
  *(&STACK[0xBDE8] + v15) = STACK[0xBDED];
  v44 = STACK[0xBDE8];
  LOBYTE(STACK[0xBDE8]) = STACK[0xBDEC];
  v45 = *(&STACK[0xBDE8] + v20);
  *(&STACK[0xBDE8] + v20) = STACK[0xBDEB];
  LOBYTE(STACK[0xBDEF]) = v41;
  LOBYTE(STACK[0xBDEE]) = v42;
  LOBYTE(STACK[0xBDED]) = v43;
  LOBYTE(STACK[0xBDEC]) = v44;
  LOBYTE(STACK[0xBDEB]) = v45;
  v46 = STACK[0xBDE9];
  LOBYTE(STACK[0xBDEA]) = STACK[0xBDE8];
  LOWORD(STACK[0xBDE8]) = v46;
  STACK[0xBDE8] = vmla_s32(v22, STACK[0xBDE8], vdup_n_s32(0x1000193u));
  STACK[0x2478] = (STACK[0xBDE8] ^ STACK[0xBDE0]) + v1;
  v47 = STACK[0xF18];
  STACK[0x4050] = *(STACK[0xF18] + 8 * a1);
  return (*(v47 + 8 * ((2899 * (a1 ^ 0x7C4) + 18040) ^ a1)))();
}

uint64_t sub_100563850()
{
  v2 = STACK[0x6E18];
  *(v2 - 0x43D8CBFA0CEB4284) = v1;
  *(v2 - 0x43D8CBFA0CEB428CLL) = STACK[0x30F0];
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x7E50]) == -371865839) * (((v0 - 770650300) & 0x2DEEA5FA ^ 0xFFFF8253) + ((v0 - 34346) | 0x9800))) ^ (v0 - 1502))))();
}

uint64_t sub_10056391C()
{
  LODWORD(STACK[0x2320]) = -371865839;
  v2 = *(v0 - 0x217E172EFA1E81CLL);
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x5E0487D) - ((&STACK[0x10000] + 3800) | 0xFA1FB782) - 98584702) ^ 0x68766781);
  LODWORD(STACK[0x10ED8]) = ((((*(v0 - 0x217E172EFA1E804) ^ 0x20D57666) - 550860390) ^ (((v1 - 19810) | 0x700) + 245292976 + (*(v0 - 0x217E172EFA1E804) ^ 0xF1610948)) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0x3861B83F) + (v1 ^ 0xC79E1AAB))) - 54746966) ^ v3;
  STACK[0x10F00] = v0 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10EF8]) = v1 - v3 + 15863;
  STACK[0x10EE0] = &STACK[0x3574];
  STACK[0x10EE8] = &STACK[0x762C];
  STACK[0x10EF0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x97AE)))(&STACK[0x10ED8]);
  v6 = STACK[0x10F08];
  LODWORD(STACK[0x28F4]) = STACK[0x10F08];
  return (*(v4 + 8 * ((7 * (v6 != -371865839)) ^ v1)))(v5);
}

uint64_t sub_100563AA4(uint64_t a1, uint64_t a2)
{
  STACK[0xDB0] = 0;
  v4 = STACK[0xCC0] < 0x7FFFFFFFFFFFFF82;
  v5 = STACK[0xF18];
  STACK[0xD70] = *(STACK[0xF18] + 8 * v2);
  return (*(v5 + 8 * (((v3 + 19629) * v4) ^ (v3 - 3222))))(a1, a2, 4442, 21312, 3697482187, 1199981840, 1048357671, 2778331108);
}

uint64_t sub_100563CC8()
{
  LODWORD(STACK[0x10ED8]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x6C641E7D) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x939BE180)) ^ 0x8A4205B2) - 34681;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6F30)))(&STACK[0x10ED8]);
  v3 = STACK[0x10EE0];
  STACK[0x39C0] = STACK[0x10EE0];
  return (*(v1 + 8 * (((v3 == 0) * (((34 * (v0 ^ 0xA1BD)) ^ 0x3253) - 35625)) ^ v0)))(v2);
}

uint64_t sub_100563D7C@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x380D;
  v3 = (v2 - 508495802) & 0x1E4EFFFE;
  LODWORD(STACK[0xED0]) = v3;
  return (*(STACK[0xF18] + 8 * ((((((v2 - 508495802) ^ 0xE1B11DF6) + 30286) ^ v3) * (v1 == 640208529)) ^ v2)))();
}

uint64_t sub_100563DE0@<X0>(char a1@<W8>)
{
  v4 = a1 & 0x45 ^ 0xD2;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 ^ 0x561D)))((8 * (a1 ^ (2 * (v1 & (2 * (v1 & (2 * ((((v1 & (2 * ((v2 ^ 0x64) & v1 ^ v4))) ^ v4) << (5 * (v3 ^ 0xF2) - 82)) & v1 ^ v4)) ^ v4)) ^ v4)))) ^ 0x228);
  STACK[0x3B68] = v6;
  return (*(v5 + 8 * ((78 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_100563E90()
{
  v1 = STACK[0xF18];
  STACK[0x3468] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1236937575) > 0xD05ADC61) * ((v0 - 1825975987) & 0x6CD63EAE ^ 0x2A2F)) ^ (v0 + 1470))))();
}

uint64_t sub_100563F70@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0x48085141) - ((&STACK[0x10000] + 3800) | 0xB7F7AEBE) - 1208504642) ^ 0xAE2E4A8E));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 272) = 0;
  return (*(v3 + 8 * (v1 - 11687)))(v4);
}

uint64_t sub_10056406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 = *a5 - 24579 + 12290 * (v5 ^ 0x8B39);
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xA82BC7A5) - ((&STACK[0x10000] + 3800) | 0x57D4385A) + 1473525850) ^ 0x4E0DDC6A) + 296753103;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 ^ 0x41F1)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32450));
  return (*(v6 + 8 * (v5 - 29900)))(v7);
}

uint64_t sub_100564184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = 0x275C559D275C55A9;
  *(v4 + 56) = 0x275C559D275C559DLL;
  STACK[0xA98] = ((v3 + 11968) + 0x664C93877BA38A3BLL) ^ &STACK[0xF28];
  STACK[0x520] = &STACK[0xF28] ^ 0x664C93877BA41347;
  v5 = *(STACK[0xF18] + 8 * v3);
  *&STACK[0xA80] = vdupq_n_s32(0xB453AE79);
  *&STACK[0xA70] = vdupq_n_s32(0xB477FFC4);
  *&STACK[0xA60] = vdupq_n_s32(0xE611B136);
  *&STACK[0xA50] = vdupq_n_s32(0x68407226u);
  *&STACK[0xA40] = vdupq_n_s32(0x35F7ACEDu);
  *&STACK[0xA30] = vdupq_n_s32(0xBBA66FFF);
  *&STACK[0xA20] = vdupq_n_s32(0x67B5FC24u);
  *&STACK[0xA10] = vdupq_n_s32(0xE9E43F38);
  *&STACK[0xA00] = vdupq_n_s32(0x101u);
  v6 = STACK[0xF10];
  v7 = STACK[0xF10] - 14906;
  *&STACK[0x9F0] = vdupq_n_s32(0x90E6C54D);
  LODWORD(STACK[0x9E0]) = v6 - 24006;
  LODWORD(STACK[0x518]) = v7;
  LODWORD(STACK[0x9CC]) = v7 ^ 0xE9D59610;
  v8 = STACK[0x3A50];
  LODWORD(STACK[0x598]) = v6 - 12556;
  return v5(0, 567, a3, v8);
}

uint64_t sub_10056438C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11FC)))();
}

uint64_t sub_100564590()
{
  v0 = (STACK[0xF10] - 33987) | 0x6100;
  v1 = STACK[0xF10] - 34618;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ 0x7492 | v1)))();
}

uint64_t sub_10056488C(uint64_t a1)
{
  *a1 = ((17 * (v1 ^ 0x68)) ^ 0xA0) + *STACK[0x6658];
  *(a1 + 4) = 0;
  *(a1 + 8) = *STACK[0x5640] - 97;
  *(a1 + 10) = 0;
  v2 = STACK[0xF18];
  STACK[0x2378] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x71AD)))();
}

uint64_t sub_1005648F8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB9C0]) = a1;
  v2 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1601)))();
}

uint64_t sub_100564B84@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0xFE0];
  *(v3 + 40) = v2;
  *(v3 + 32) = *v3 + a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100564BC0()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 13421)))(v0 ^ 0xC704E5F7);
  *(v2 + 2288) = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((v1 ^ 0x913C) - 1792)) ^ v1)))();
}

uint64_t sub_100564CA8(uint64_t a1, uint64_t a2)
{
  STACK[0x4808] = 0;
  LODWORD(STACK[0x2B74]) = -371865839;
  STACK[0x60A8] = 0;
  LODWORD(STACK[0x1380]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v2 | (4 * (v3 != ((((v2 - 4738) | 0x8933) - 29045) ^ 0xE9D5DED6))))))(a1, a2, 371891535);
}

uint64_t sub_100564D10()
{
  v0 = STACK[0xF10] ^ 0xB32E;
  v1 = STACK[0xF10] - 34007;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 6687) ^ v1)))();
}

uint64_t sub_100564DB0(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 1508510803;
  STACK[0x95A0] = STACK[0x78A0];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1331806964;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0xA6165E2A)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100564E10()
{
  v0 = STACK[0xF10] - 74;
  v1 = STACK[0xF10] + 15774;
  LODWORD(STACK[0xA1F8]) = STACK[0xF10] + 1566600312 + LODWORD(STACK[0xAF2C]);
  return (*(STACK[0xF18] + 8 * ((7 * ((v0 ^ LOBYTE(STACK[0x84F7])) & 1)) ^ v1)))();
}

uint64_t sub_100564E78()
{
  *STACK[0xA3B8] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4EF0)))(v0 ^ 0xE9D5C711);
  *STACK[0xA3C0] = v3;
  return (*(v2 + 8 * ((233 * (v3 != 0)) ^ v1)))();
}

uint64_t sub_100564ED4()
{
  v2 = (((LODWORD(STACK[0x9974]) ^ 0xDA690B28) + 630650072) ^ ((LODWORD(STACK[0x9974]) ^ 0x1A1A6356) + (v1 ^ 0xE5E509B7)) ^ (((v1 - 3333) | 0x323) + (LODWORD(STACK[0x9974]) ^ 0x29A6AF6F) - 698825386)) - 1965402867;
  v3 = v2 < 0xA1048DFC;
  v4 = v0 - 1593537028 < v2;
  if (v0 > 0x5EFB7203 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((20837 * v4) ^ v1)))();
}

uint64_t sub_1005650B8@<X0>(int a1@<W8>)
{
  v4 = STACK[0xF18];
  STACK[0x6170] = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0x3E1C]) = v2;
  STACK[0x75A0] = v1;
  v5 = STACK[0x7690];
  STACK[0x14D0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v5 + ((v3 + 51365) ^ 0xCA26);
  STACK[0x1B90] = 0;
  LODWORD(STACK[0x2F74]) = 1744484927;
  LODWORD(STACK[0x10ED8]) = (v3 + 32682) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xB3A6B58A) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4C594A70)) ^ 0x247D8721));
  v6 = (*(v4 + 8 * (v3 + 51696)))(&STACK[0x10ED8]);
  STACK[0x2998] = *(v4 + 8 * v3);
  return (*(v4 + 8 * (v3 + 4936)))(v6);
}

uint64_t sub_10056531C()
{
  v0 = LODWORD(STACK[0x480]) | 0x1483;
  v1 = STACK[0xF18];
  v2 = STACK[0x47C];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x47C]));
  return (*(v1 + 8 * ((v0 - 21229) ^ v2)))();
}

uint64_t sub_10056543C()
{
  v1 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BE7CD30));
  STACK[0x2EB0] = (v1 & 0x7FFFFFFFFFFFFFFFLL ^ 0x48FC76979869B0F3 ^ ((v0 - 662520203) & 0x277DBF3F ^ 0x720032968230247ALL) & v1 ^ 0xB200000002100F00) - (((v0 - 662520203) & 0x277DBF3F ^ 0x720032968230247ALL) & v1 ^ 0xB200000002100F00);
  LODWORD(STACK[0x6CA8]) = -371865839;
  STACK[0x4B28] = 0;
  return (*(STACK[0xF18] + 8 * ((10881 * (v0 == 228702161)) ^ (v0 + 3066))))();
}

uint64_t sub_100565524()
{
  v4 = *(v3 + 744);
  LODWORD(STACK[0xAF2C]) = v4;
  LODWORD(STACK[0xAF28]) = -371865839;
  STACK[0xAF30] = (v4 ^ 0xF93BE6D7FEFF7FEFLL) + 0x6FFF5BFE4FEECCBFLL + ((v4 << (v0 + v0 + 11 - 118)) & 0x1FDFEFFDELL);
  STACK[0xAF38] = (v2 ^ 0x2FF77F953FAC3EFFLL) - 0xD44001004A81036 + ((2 * v2) & 0x7F587DFE);
  STACK[0xAF40] = v3 + 560;
  v5 = v2 + v4 + *(v3 + 560) + 541671605;
  v6 = (v5 ^ 0xDFA4BE59) & (2 * (v5 & 0xDFB6BF58)) ^ v5 & 0xDFB6BF58;
  LODWORD(v4) = ((2 * (v5 ^ 0xDEE1DAF9)) ^ 0x2AECB42) & (v5 ^ 0xDEE1DAF9) ^ (2 * (v5 ^ 0xDEE1DAF9)) & 0x15765A0;
  v7 = v4 ^ 0x15124A1;
  LODWORD(v4) = (v4 ^ 0x64100) & (4 * v6) ^ v6;
  v8 = ((4 * v7) ^ 0x55D9684) & v7 ^ (4 * v7) & 0x15765A0;
  LODWORD(v4) = (v8 ^ 0x1550480) & (16 * v4) ^ v4;
  v9 = ((16 * (v8 ^ 0x26121)) ^ 0x15765A10) & (v8 ^ 0x26121) ^ (16 * (v8 ^ 0x26121)) & 0x1576580;
  LODWORD(v4) = v4 ^ 0x15765A1 ^ (v9 ^ 0x1564000) & (v4 << 8);
  LODWORD(STACK[0x7AFC]) = v5 ^ (2 * ((v4 << 16) & 0x1570000 ^ v4 ^ ((v4 << 16) ^ 0x65A10000) & (((v9 ^ 0x125A1) << 8) & 0x1570000 ^ 0x120000 ^ (((v9 ^ 0x125A1) << 8) ^ 0x57650000) & (v9 ^ 0x125A1)))) ^ 0x36CFB30B;
  return (*(STACK[0xF18] + 8 * ((119 * v1) ^ v0)))();
}

uint64_t sub_100565768@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2D80]) = -371865839;
  STACK[0x1E80] = 0;
  LODWORD(STACK[0x2E7C]) = -371865839;
  LODWORD(STACK[0x5DD4]) = -371865839;
  STACK[0x7DD8] = 0;
  LOBYTE(STACK[0x91A3]) = v1 == ((a1 - 2820) ^ 0xE9D5858D);
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100565960(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  STACK[0x9438] = 0;
  STACK[0x8C90] = 0x47D94FA29F465F13;
  return (*(STACK[0xF18] + 8 * (((((((v2 ^ 0x83A) - 26560) | 0x801) + 31671) ^ (109 * (v2 ^ 0x6797))) * (v4 == 0)) ^ v2 ^ 0x83A)))(a1, a2, 371891400);
}

uint64_t sub_100565A3C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF10] ^ 0xED3F;
  v2 = (2 * STACK[0xF10]) ^ 0x19DC2;
  v3 = STACK[0xF10] - 35643;
  LODWORD(STACK[0x1F70]) = a1;
  return (*(STACK[0xF18] + 8 * (v1 ^ v3 ^ 0x728F ^ (((((*(STACK[0x6EE8] + 104) - v3) | (v3 - *(STACK[0x6EE8] + 104))) & 0x80) == 0) * (v2 - 35734)))))();
}

uint64_t sub_100565AF8()
{
  v1 = STACK[0xF10] - 1177;
  v2 = STACK[0x4438];
  *(*(STACK[0x4438] + 264) + 16) = ((((v0 >> 1) ^ 0x302B365E) + 1480540018) ^ (((v0 >> 1) ^ 0x6E24EDB8) + 103867544) ^ (((v0 >> 1) ^ 0x2AE5386E) + 1123103042)) - 486468263;
  *(*(v2 + 264) + 24) = 0;
  *(*(v2 + 264) + 96) = 0;
  *(*(v2 + 264) + 168) = 0;
  *(*(v2 + 264) + 240) = 0;
  *(*(v2 + 264) + 312) = 0;
  *(*(v2 + 264) + 384) = 0;
  *(*(v2 + 264) + 456) = 0;
  *(*(v2 + 264) + 528) = 0;
  *(*(v2 + 264) + 600) = 0;
  *(*(v2 + 264) + 672) = 0;
  *(*(v2 + 264) + 744) = 0;
  *(*(v2 + 264) + 816) = 0;
  *(*(v2 + 264) + 888) = 0;
  *(*(v2 + 264) + 960) = 0;
  *(*(v2 + 264) + 1032) = 0;
  *(*(v2 + 264) + 1104) = 0;
  *(*(v2 + 264) + 1176) = 0;
  *(*(v2 + 264) + 1248) = 0;
  *(*(v2 + 264) + 1320) = 0;
  *(*(v2 + 264) + 1392) = 0;
  *(*(v2 + 264) + 1464) = 0;
  *(*(v2 + 264) + 1536) = 0;
  *(*(v2 + 264) + 1608) = 0;
  *(*(v2 + 264) + 1680) = 0;
  *(*(v2 + 264) + 1752) = 0;
  *(*(v2 + 264) + 1824) = 0;
  *(*(v2 + 264) + 1896) = 0;
  *(*(v2 + 264) + 1968) = 0;
  *(*(v2 + 264) + 2040) = 0;
  *(*(v2 + 264) + 2112) = 0;
  return (*(STACK[0xF18] + 8 * ((109 * (*(v2 + 264) == 0)) ^ v1)))();
}

uint64_t sub_100565C8C()
{
  v2 = *(STACK[0x3828] + 24);
  v3 = *(STACK[0xF18] + 8 * ((26 * (((11881 * (v0 ^ 0x1C21u) + 3071783591) ^ v1) >= ((174 * (v0 ^ 0x1D2Du)) ^ 0xB83AuLL))) ^ v0));
  STACK[0xED0] = STACK[0x8230];
  STACK[0xEC0] = v2;
  return v3(0x99D254A368C6101BLL, 0xD62CF47B3332F3F0, 0x270B9CE44EC93332, 0x18BDF6F3D659C9FELL);
}

uint64_t sub_100565F50()
{
  v0 = 57 * (STACK[0xF10] ^ 0x8B5C);
  v1 = STACK[0xF10] - 33730;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1BAA) + v1)))();
}

uint64_t sub_100566004@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1C6C]) = 0;
  LODWORD(STACK[0x195C]) = a1;
  return (*(STACK[0xF18] + 8 * (v1 - 10498)))();
}

uint64_t sub_1005660B0@<X0>(int a1@<W8>)
{
  v3 = STACK[0x4A18];
  LODWORD(STACK[0x7E54]) = ((v1 + 1000399468) & 0xC45E7DF5 ^ 0x1573) + a1;
  v4 = *(v3 + (a1 - 1543924815));
  v5 = (v4 ^ (((v1 + 663755372) & 0xD86FBBBF) - 939953276)) + 2128606592 + ((2 * v4) & 0xFFFFFF7F);
  LODWORD(STACK[0xA95C]) = v5;
  v6 = a1 - 524035795 + v5;
  v7 = (((v2 ^ 0x93154502) + 1827322622) ^ ((v2 ^ 0x65067865) - 1694922853) ^ ((v2 ^ 0x1FC6FA76) - 533133942)) + 1836712139;
  v8 = (v7 < 0x83A439BA) ^ (v6 < 0x83A439BA);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x83A439BA;
  }

  return (*(STACK[0xF18] + 8 * (((2 * v9) | (16 * v9)) ^ v1)))();
}

uint64_t sub_1005661FC()
{
  v0 = STACK[0xF10] + 852081806;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x1588]);
  STACK[0x1588] = 0;
  return (*(v1 + 8 * (v0 ^ 0x32CA52B2 ^ (2860 * (v0 < 0xBBD5CF6C)))))(v2);
}

uint64_t sub_10056630C@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x507C])++;
  *(STACK[0xD30] - 775311879) = v3 + 1;
  v4 = *(v2 - 586084794);
  v5 = 906386353 * STACK[0xB60];
  LODWORD(STACK[0x10EE8]) = v5 | 1;
  LODWORD(STACK[0x10EFC]) = ((a1 - 1128772611) ^ 0x126A) + v5;
  LODWORD(STACK[0x10F00]) = v5 + a1 + v1;
  STACK[0x10EF0] = v5 ^ 0x13FF;
  LODWORD(STACK[0x10F04]) = (a1 - 1128772447) ^ v5;
  LODWORD(STACK[0x10ED8]) = (a1 - 1128772611) ^ v5;
  STACK[0x10EE0] = v4 - v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (a1 + 16331)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * SLODWORD(STACK[0x10EF8])))(v7);
}

uint64_t sub_100566418()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x54E8];
  LODWORD(STACK[0x2564]) = 168374415;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005666D0@<X0>(int a1@<W8>)
{
  v6 = v1 - 1;
  *(v4 + v6) = *(v3 + v6) ^ v5;
  return (*(STACK[0xF18] + 8 * (((v6 == 0) * v2) ^ a1)))();
}

uint64_t sub_100566754()
{
  v0 = STACK[0xF10] - 1447;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x3230]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10056678C(_WORD *a1)
{
  *a1 = 513;
  v2 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 15465) | 0x141C) - 15870) ^ v1)))();
}

uint64_t sub_100566828()
{
  *STACK[0x32D8] = *(v1 - 0x10A99C80114D144BLL);
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + v0 + 3952 - 1923)))();
}

uint64_t sub_100566960()
{
  v1 = STACK[0xF10] - 20149;
  *(STACK[0x29B0] + 12) = v0 ^ (569 * (STACK[0xF10] ^ 0x8B22)) ^ 0xC704D266;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100566A38()
{
  v2 = *(v1 + 8);
  STACK[0x16A0] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 + 703923643) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0xC2E1039F) - ((&STACK[0x10000] + 3800) & 0xC2E10398)) ^ 0xAF772C63));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC050)))(&STACK[0x10ED8]);
  STACK[0x4490] = v1 + 112;
  STACK[0x2E10] = *(v3 + 8 * v0);
  return (*(v3 + 8 * ((((v0 - 2642) | 0x3812) + 4478) ^ v0)))(v4);
}

uint64_t sub_100566B98()
{
  v1 = STACK[0xF10] - 22853;
  v2 = LODWORD(STACK[0x6134]) + (((*(STACK[0x7980] + 128) ^ (STACK[0xF10] + 1213592157)) - 1213627800) ^ ((*(STACK[0x7980] + 128) ^ 0xA6033DD4) + 1509737004) ^ ((*(STACK[0x7980] + 128) ^ 0x780875D) - 125863773));
  LODWORD(STACK[0x6134]) = v2 + v0;
  return (*(STACK[0xF18] + 8 * ((995 * ((v2 - 2094322339) + 4 > STACK[0xB7F0])) ^ v1)))();
}

uint64_t sub_100566CC0(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x3760] + 62;
  LOWORD(STACK[0x79DE]) = 7099;
  LODWORD(STACK[0x16B4]) = -1487820384;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100566D1C()
{
  v1 = v0 ^ 0xCE4E;
  v2 = (v0 + 1653333108) & 0x9D73FFDF;
  v3 = v0 + 4597;
  v4 = STACK[0x10BC];
  LODWORD(STACK[0x3E7C]) = STACK[0x10BC];
  STACK[0x6350] = STACK[0x5AB0];
  v5 = ((((v4 >> 4) ^ 0x3CE4A318) - 501992134) ^ (((v4 >> 4) ^ (v1 + 715496195)) - 195725734) ^ (((v2 + 417052546) ^ (v4 >> 4)) - 970159823)) + 1912650430;
  v6 = 16 * (((v5 ^ 0x3C1B5A66) + 25829528) ^ v5 ^ ((v5 ^ 0x100EDF) + 226587695) ^ ((v5 ^ 0x19A2E78) + 202069130) ^ ((v5 ^ 0xFFFFFFCF) + 40797503));
  LODWORD(STACK[0x1EDC]) = v6 ^ 0x3F8EC13F;
  STACK[0x3E90] = STACK[0x1DD0];
  v7 = STACK[0x24E4];
  v8 = (((v7 ^ 0xDE15F1B3) + 568987213) ^ ((v7 ^ 0x69C93EAB) - 1774796459) ^ ((v7 ^ 0xAEBA5EC7) + 1363517753)) + (((LODWORD(STACK[0x8C74]) ^ 0xC2559933) + 1034577613) ^ ((LODWORD(STACK[0x8C74]) ^ 0x8314F4D3) + 2095778605) ^ ((LODWORD(STACK[0x8C74]) ^ 0x5827FC3F) - 1479015487)) + (((LODWORD(STACK[0x90E4]) ^ 0x33427A6F) - 859994735) ^ ((LODWORD(STACK[0x90E4]) ^ 0x6BFE8C57) - 1811844183) ^ ((LODWORD(STACK[0x90E4]) ^ 0x41DA67E7) - 1104832487)) + (((LODWORD(STACK[0x5D0C]) ^ 0x105B5205) - 274420229) ^ ((LODWORD(STACK[0x5D0C]) ^ 0x6702CE06) - 1728237062) ^ ((LODWORD(STACK[0x5D0C]) ^ 0x6E3F0DDC) - 1849626076)) + (((v6 ^ 0xD806597C) + 410478525) ^ ((v6 ^ 0x55D8FCAC) - 1784036755) ^ ((v6 ^ 0xAB36F530) + 1799867377));
  LODWORD(STACK[0x4274]) = v8 + 2130762587;
  return (*(STACK[0xF18] + 8 * ((15 * (v8 == -2130762587)) | v3)))();
}

uint64_t sub_10056718C()
{
  LODWORD(STACK[0x4A04]) = v1;
  v2 = STACK[0x22F0];
  v3 = STACK[0x3D84];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 2023818149;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005671E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 703984953;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x7720];
  LODWORD(STACK[0x648C]) = 878293521;
  return (*(STACK[0xF18] + 8 * (v7 ^ 0xD60A91A2 ^ (7782 * (v7 != 1023610096)))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10056737C()
{
  v0 = STACK[0xF10];
  STACK[0xED0] = STACK[0xF10] - 34922;
  v1 = STACK[0xBAC8];
  v2 = STACK[0xBAB8];
  v3 = STACK[0x3708];
  v4 = STACK[0xBAC0];
  v5 = ~(2 * LODWORD(STACK[0xBAC0])) | 0x5153E909;
  v6 = 1603510583 * (((&STACK[0x10ED8] | 0x1AED882D) + (~&STACK[0x10ED8] | 0xE51277D2)) ^ 0x8D36BA87);
  v7 = (LODWORD(STACK[0xBAC4]) - ((2 * LODWORD(STACK[0xBAC4])) & 0xB64EBEF2) - 618176647) ^ v6;
  LODWORD(STACK[0x10F00]) = (*STACK[0xBAB8] ^ 0x449A6E28) + v6;
  LODWORD(STACK[0x10ED8]) = v6 ^ 0x3A6F0BA;
  LODWORD(STACK[0x10EE4]) = v7;
  LODWORD(STACK[0x10EE0]) = v4 - v6 + v5 - 682226820;
  LODWORD(STACK[0x10EE8]) = (v0 + 727016269) ^ v6;
  STACK[0x10F08] = v1;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x842B260C4815F818;
  STACK[0x10EF0] = v3;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16658)))(&STACK[0x10ED8]);
  v9 = STACK[0x2528];
  v10 = 1603510583 * (((&STACK[0x10ED8] | 0xA4B57DED) - (&STACK[0x10ED8] & 0xA4B57DE8)) ^ 0x336E4F46);
  LODWORD(STACK[0x10F00]) = (*v2 ^ 0x449A6E28) + v10;
  LODWORD(STACK[0x10EE8]) = (v0 + 727016269) ^ v10;
  LODWORD(STACK[0x10ED8]) = v10 ^ 0x3A6F078;
  STACK[0x10F08] = v1;
  LODWORD(STACK[0x10EE4]) = v10 ^ 0x85C046F2;
  LODWORD(STACK[0x10EE0]) = -2051629030 - v10;
  STACK[0x10EF0] = v9;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x842B260C4815F818;
  (*(v8 + 8 * (v0 + 16658)))(&STACK[0x10ED8]);
  LOWORD(STACK[0x10EE0]) = 23473 * ((((2 * &STACK[0x10ED8]) | 0x8F7E) - &STACK[0x10ED8] - 18367) ^ 0x8A9B) + 18068;
  LODWORD(STACK[0x10ED8]) = (v0 - 22550) ^ (906386353 * ((((2 * &STACK[0x10ED8]) | 0xB8868F7E) - &STACK[0x10ED8] - 1547913151) ^ 0x6D428A9B));
  STACK[0x10EE8] = &STACK[0xC43A];
  v11 = (*(v8 + 8 * (v0 + 16246)))(&STACK[0x10ED8]);
  STACK[0x9898] = v1;
  LODWORD(STACK[0x98A0]) = *v2;
  return (*(v8 + 8 * (v0 - 29888)))(v11);
}

uint64_t sub_100567604@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x7D40];
  *(v2 + 140) = 0x45037CE01622CB94;
  *(v2 + 152) = *(a1 + 40);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x607 ^ (5618 * ((v1 + 1901573457) < 0xF2813031)))))();
}

uint64_t sub_100567730(__n128 a1, __n128 a2)
{
  v3 = *(STACK[0xF18] + 8 * v2);
  v4 = STACK[0xF10];
  LODWORD(STACK[0xED0]) = STACK[0xF10] - 34680;
  LODWORD(STACK[0xEC0]) = v4 ^ 0xCB0AD306;
  LODWORD(STACK[0xEB0]) = v4 + 679158052;
  LODWORD(STACK[0xEA0]) = v4 + 16309;
  v5.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v5.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return v3(51, a1, a2, v5);
}

uint64_t sub_100567868@<X0>(int a1@<W8>)
{
  v3 = a1 + 1289341052 + (((v2 ^ 0x2FD5B3B4) - 802534324) ^ ((v2 ^ 0xD05B2E40) + 799330752) ^ ((v2 ^ 0x165B5AE5) - 375085797));
  v4 = (((LODWORD(STACK[0x4ADC]) ^ 0xC96D489A) + 915584870) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x5D278C6F) - 1562872943) ^ (((327 * (v1 ^ 0x2D92) + 2107537577) ^ LODWORD(STACK[0x4ADC])) + ((v1 - 5810) ^ 0x8260EB51))) + 1289341052;
  v5 = v3 < 0x6304016B;
  v6 = v3 > v4;
  if (v5 != v4 < 0x6304016B)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xB3FC];
  }

  LODWORD(STACK[0x2BA4]) = v7;
  return (*(STACK[0xF18] + 8 * ((41837 * (v7 == -371865839)) ^ v1)))();
}

uint64_t sub_100567A48()
{
  *(STACK[0x63C0] + 66) = (LOBYTE(STACK[0x637F]) | ((LOBYTE(STACK[0x637F]) < ((v0 - 78) ^ 0xE6u)) << 8)) + 6469;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11D6)))();
}

uint64_t sub_100567AD4()
{
  v0 = STACK[0xF10] - 34137;
  LODWORD(STACK[0xA044]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x9DF ^ (5131 * ((v0 ^ 0xDF24C2E2) < 0xFA229CD7)))))();
}

uint64_t sub_100567BEC()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4022)))();
}

uint64_t sub_100567C74()
{
  v0 = (STACK[0xF10] + 230874177) & 0xF23CFFFB;
  v1 = STACK[0xF10] - 34546;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 21462) | v1)))();
}

uint64_t sub_100567CCC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x950C]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 31051 + (v1 ^ 0x89E0))))();
}

uint64_t sub_100567D10()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9842;
  LODWORD(STACK[0x1374]) = 1826791170;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x99272FE5 ^ ((v0 != 1155109058) * (v0 + 1725491304)))))();
}

uint64_t sub_100567DBC(_BYTE *a1)
{
  v4 = *(v2 + 640);
  *a1 = *v1 ^ 0x5F ^ *v4;
  a1[1] = v1[1] ^ 0x5F ^ v4[1];
  a1[2] = v1[2] ^ 0x5F ^ v4[2];
  a1[3] = v1[3] ^ 0x5F ^ v4[3];
  a1[4] = v1[4] ^ 0x5F ^ v4[4];
  a1[5] = v1[5] ^ 0x5F ^ v4[5];
  a1[6] = v1[6] ^ (v3 + 91) ^ v4[6];
  a1[7] = v1[7] ^ 0x5F ^ v4[7];
  a1[8] = v1[8] ^ 0x5F ^ v4[8];
  a1[9] = v1[9] ^ 0x5F ^ v4[9];
  a1[10] = v1[10] ^ 0x5F ^ v4[10];
  a1[11] = v1[11] ^ 0x5F ^ v4[11];
  a1[12] = v1[12] ^ 0x5F ^ v4[12];
  a1[13] = v1[13] ^ 0x5F ^ v4[13];
  a1[14] = v1[14] ^ 0x5F ^ v4[14];
  a1[15] = v1[15] ^ 0x5F ^ v4[15];
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10056803C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x95B2)))();
  *(v0 + 64) = v3;
  return (*(v2 + 8 * ((79 * (((v3 == 0) ^ (((v1 - 30) | 0x52) + 119)) & 1)) ^ v1)))();
}

uint64_t sub_1005680FC()
{
  STACK[0x9058] = 0;
  LODWORD(STACK[0x892C]) = 1202816382;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100568230@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, int a8@<W8>)
{
  v21 = (((v15 ^ 0x5FBF432B) - 1606370091) ^ ((v15 ^ 0xD8C8D571) + 657926799) ^ (((v18 + 25678) ^ 0x915D258E) + (v15 ^ 0x6EA2514B))) + ((v18 + 24197) ^ 0x52C7B016);
  v22 = (v21 ^ 0xC74C1D0D) & (2 * (v21 & 0x970E91AC)) ^ v21 & 0x970E91AC;
  v23 = ((2 * (v21 ^ 0xCF481F5D)) ^ 0xB08D1DE2) & (v21 ^ 0xCF481F5D) ^ (2 * (v21 ^ 0xCF481F5D)) & v19;
  v24 = v23 ^ 0x48428211;
  v25 = (v23 ^ 0x10040CE0) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x611A3BC4) & v24 ^ (4 * v24) & v19;
  v27 = (v26 ^ a8) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ v20)) ^ v12) & (v26 ^ v20) ^ (16 * (v26 ^ v20)) & v8;
  v29 = v27 ^ v14 ^ (v28 ^ v9) & (v27 << 8);
  v30 = v21 ^ (2 * ((v29 << 16) & a1 ^ v29 ^ ((v29 << 16) ^ a2) & (((v28 ^ v13) << 8) & a1 ^ v11 ^ (((v28 ^ v13) << 8) ^ v10) & (v28 ^ v13))));
  LOBYTE(v29) = *(STACK[0x6F0] + ((v30 ^ a3) & 0xF)) ^ *(v17 + (v30 ^ a3)) ^ *(STACK[0x6F8] + ((v30 ^ a3) & 0xF)) ^ *(STACK[0x700] + ((v30 ^ a3) & 0xF)) ^ (((v30 ^ a3) & 0xF) * a4);
  return (*(STACK[0xF18] + 8 * ((((((v29 ^ a5) - 109) ^ ((v29 ^ a6) - 5) ^ ((v29 ^ a7) - 120)) == 240) * v16) ^ v18)))();
}

uint64_t sub_100568418()
{
  STACK[0x18E0] = 0;
  LODWORD(STACK[0x44F8]) = 0;
  v1 = *STACK[0x4288];
  LODWORD(STACK[0x10ED8]) = (v0 + 703890155) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x8501C7E1) - ((&STACK[0x10000] + 3800) & 0x8501C7E0)) ^ 0xE897E81D));
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 15712)))(&STACK[0x10ED8]);
  STACK[0x1640] = *(STACK[0x52B8] + 120);
  STACK[0x66B8] = 0;
  LODWORD(STACK[0x5A50]) = 0;
  STACK[0x1028] = 0;
  return (*(v2 + 8 * (v0 + 2821)))(v3);
}

uint64_t sub_1005684F4@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x5674]) = v1;
  STACK[0x8628] = a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100568524()
{
  v2 = *(STACK[0xF18] + 8 * (((v1 >= (((v0 - 13282) | 0x2008) ^ 0xA6F4u)) * (((v0 + 110574630) & 0xF968AFFF) - 42636)) ^ v0));
  LODWORD(STACK[0xDC0]) = v1;
  return v2();
}

uint64_t sub_1005685B8@<X0>(int a1@<W8>)
{
  v2 = v1 ^ 0x43D8CBFA0CEBD29CLL ^ (a1 + 1590696244) & 0xA12FDBE8;
  STACK[0x5558] = v2;
  return (*(STACK[0xF18] + 8 * ((122 * (v2 != 0x43D8CBFA0CEB42D4)) ^ a1)))();
}

uint64_t sub_100568620(uint64_t a1, int a2, int a3, int a4)
{
  v9 = v4 < v5;
  if (v9 == a4 + a2 < (v7 & v8) + a3)
  {
    v9 = a4 + a2 < v4;
  }

  return (*(STACK[0xF18] + 8 * (((16 * v9) | (32 * v9)) ^ v6)))();
}

uint64_t sub_100568718()
{
  v2 = (((*(v0 + 104) ^ 0x91857DB1) + ((v1 - 6766) ^ 0x6E7A8A96)) ^ ((*(v0 + 104) ^ 0x4DC6DA26) - 1304877606) ^ ((*(v0 + 104) ^ 0x35966086) - 899047558)) - 919681569;
  LODWORD(STACK[0xEC0]) = v2;
  return (*(STACK[0xF18] + 8 * ((55 * (v2 != -547815730)) ^ v1)))();
}

uint64_t sub_1005687B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8)
{
  LODWORD(STACK[0xDB0]) = v12 ^ (2 * v14);
  LODWORD(STACK[0xED0]) = a4 ^ 0xFFFFFFA3;
  LODWORD(STACK[0xE30]) = v13 * v17 - 119 * v15;
  v18 = (((*a8 ^ 0x8C) + 116) ^ ((*a8 ^ 0xCE) + 50) ^ ((*a8 ^ 0x1D) - 29)) - v16 + 22;
  v19 = (v18 & 0x86 | 0x71) ^ v18 & 0xEE;
  *a8 = v18 ^ (2 * ((v18 ^ 6) & (2 * ((v18 ^ 6) & (2 * ((v18 ^ 6) & (2 * ((v18 ^ 6) & (2 * ((v18 ^ 6) & (2 * ((v18 ^ 6) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ 0x37;
  if (a7 == 23860446)
  {
    v20 = a8;
  }

  else
  {
    v20 = a8 + 1;
  }

  v21 = (((LODWORD(STACK[0xD70]) ^ 0xFFFFFFE3) + 29) ^ ((LODWORD(STACK[0xD70]) ^ 0x71) - 113) ^ ((LODWORD(STACK[0xD70]) ^ 0xFFFFFFCD) + 51)) + (((*v20 ^ 0xFFFFFF94) + 108) ^ ((*v20 ^ 0xFFFFFFCD) + 51) ^ ((*v20 ^ 6) - 6)) - 63;
  v22 = v21 & 0xA7 ^ 0x75;
  *v20 = v21 ^ (2 * ((v21 ^ 0x7C) & (2 * ((v21 ^ 0x7C) & (2 * ((v21 ^ 0x7C) & (2 * ((v21 ^ 0x7C) & (2 * ((v21 ^ 0x7C) & (2 * (((2 * v21) & 0x7A ^ 0x5A) & v21 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xF8;
  v23 = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v24 = STACK[0x9B78];
  v25 = (((*(v24 + 2 % v23) ^ 7) - 7) ^ ((*(v24 + 2 % v23) ^ 0x43) - 67) ^ ((*(v24 + 2 % v23) ^ 0x1B) - 27)) + 93;
  v26 = v25 & 0x7C ^ 0xCF;
  *(v24 + 2 % v23) = v25 ^ (2 * ((v25 ^ 0x66) & (2 * ((v25 ^ 0x66) & (2 * ((v25 ^ 0x66) & (2 * ((v25 ^ 0x66) & (2 * (((2 * (v26 ^ v25 & 0x1A)) ^ 4) & (v25 ^ 0x66) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ 0x23;
  v27 = *(v24 + 3 % v23);
  v28 = LODWORD(STACK[0xDE0]) + (((v27 ^ 0x3E) - 62) ^ ((v27 ^ 0xFFFFFF8A) + 118) ^ ((v27 ^ 0xFFFFFFEB) + 21));
  v29 = v28 + 13;
  LOBYTE(v28) = v28 - 115;
  *(v24 + 3 % v23) = v28 ^ (2 * ((v29 ^ 0x7A) & (2 * ((v29 ^ 0x7A) & (2 * ((v29 ^ 0x7A) & (2 * ((v29 ^ 0x7A) & (2 * ((v29 ^ 0x7A) & (2 * ((v29 ^ 0x72) & (2 * (v28 & 0xFB)) ^ v28 & 0xFB)) ^ v28 & 0xFB)) ^ v28 & 0xFB)) ^ v28 & 0xFB)) ^ v28 & 0xFB)) ^ v28 & 0xFB)) ^ 0x24;
  v30 = v11 + (((*(v24 + 4 % v23) ^ 0xBA) + 70) ^ ((*(v24 + 4 % v23) ^ v9) + 82) ^ ((*(v24 + 4 % v23) ^ 0x4B) - 75)) - 3;
  v31 = v30 & 0x2B ^ 0xC3;
  *(v24 + 4 % v23) = v30 ^ (2 * ((v30 ^ 0x24) & (2 * ((v30 ^ 0x24) & (2 * ((v30 ^ 0x24) & (2 * ((v30 ^ 0x24) & (2 * (((2 * (((2 * v30) & 0x4A | 0x25) & v30)) ^ 0xE) & (v30 ^ 4) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x74;
  v32 = v10 % v23;
  v33 = (((*(v24 + v10 % v23) ^ 0xC0) + 64) ^ ((*(v24 + v10 % v23) ^ 0x59) - 89) ^ ((*(v24 + v10 % v23) ^ 0xC6) + 58)) - 101;
  v34 = v33 & 0xA8 | 0x13;
  LOBYTE(v28) = v34 ^ v33 & 0x66;
  *(v24 + v32) = v33 ^ (2 * ((v33 ^ 0x28) & (2 * ((v33 ^ 0x28) & (2 * ((v33 ^ 0x28) & (2 * ((v33 ^ 0x28) & (2 * ((v33 ^ 0x28) & (2 * (v33 & (2 * v34) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ 0x91;
  v35 = *(v24 + 6 % v23);
  v36 = (((v35 ^ 0xFFFFFFCD) + 51) ^ ((v35 ^ 0xFFFFFFBE) + 66) ^ ((v35 ^ 0x2C) - 44)) + LODWORD(STACK[0xDA0]);
  v37 = v36 + 82;
  LOBYTE(v36) = (-83 - v36) & 0x85 | 0x22;
  v38 = v36 ^ v37 & 0x46;
  *(v24 + 6 % v23) = v37 ^ (2 * ((v37 ^ 4) & (2 * ((v37 ^ 4) & (2 * ((v37 ^ 4) & (2 * ((v37 ^ 4) & (2 * ((v37 ^ 4) & (2 * (v37 & (2 * v36) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ 0x9C;
  v39 = (((*(v24 + 7 % v23) ^ 0x5E) - 94) ^ ((*(v24 + 7 % v23) ^ 0x2E) - 46) ^ ((*(v24 + 7 % v23) ^ 0x2F) - 47)) - 2;
  v40 = v39 & 0x65 ^ 0x7A;
  *(v24 + 7 % v23) = v39 ^ (2 * ((v39 ^ 0x30) & (2 * ((v39 ^ 0x30) & (2 * ((v39 ^ 0x30) & (2 * ((v39 ^ 0x30) & (2 * ((v39 ^ 0x30) & (2 * ((v39 ^ 0x30) & (2 * v39) & 0x62 ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x3A;
  v41 = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v42 = STACK[0x9B78];
  v43 = (((*(v42 + 8 % v41) ^ 0xA2) + 94) ^ ((*(v42 + 8 % v41) ^ 0xD5) + 43) ^ ((*(v42 + 8 % v41) ^ 0x28) - 40)) + 51;
  *(v42 + 8 % v41) = v43 ^ (2 * ((v43 ^ 0x10) & (2 * ((v43 ^ 0x10) & (2 * ((v43 ^ 0x10) & (2 * (((2 * (((2 * (((2 * v43) & 0x22 | 0x11) & v43)) | 0x11) & v43)) ^ 0x46) & (v43 ^ 0x10) ^ v43 & 0x57 ^ 0x63)) ^ v43 & 0x57 ^ 0x63)) ^ v43 & 0x57 ^ 0x63)) ^ v43 & 0x57 ^ 0x63)) ^ 8;
  v44 = *(v42 + 9 % v41);
  v45 = (((v44 ^ 0x23) - 35) ^ ((v44 ^ 0xFFFFFFCA) + 54) ^ ((v44 ^ 0xFFFFFFB6) + 74)) + 66;
  *(v42 + 9 % v41) = v45 ^ (2 * (v45 & (2 * (v45 & (2 * (((2 * (((4 * (((((4 * ((v45 >> 1) & 1)) | 2) & v45) >> 1) & 3)) | 2) & v45)) ^ 0x3C) & v45 ^ v45 & 0x3E ^ 0x5E)) ^ v45 & 0x3E ^ 0x5E)) ^ v45 & 0x3E ^ 0x5E)) ^ 0x61;
  v46 = *(v42 + 0xA % v41);
  v47 = (((v46 ^ 0x2C) - 44) ^ ((v46 ^ 0xFFFFFF99) + 103) ^ ((v46 ^ 0xFFFFFFEA) + 22)) - LODWORD(STACK[0xE00]) - 51;
  v48 = v47 & 0x7B ^ 0x4C;
  *(v42 + 0xA % v41) = v47 ^ (2 * ((v47 ^ 0x62) & (2 * ((v47 ^ 0x62) & (2 * ((v47 ^ 0x62) & (2 * ((v47 ^ 0x62) & (2 * ((v47 ^ 0x62) & (2 * ((v47 ^ 0xC3) & (2 * v47) & 0x46 ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ 0x24;
  v49 = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v50 = STACK[0x9B78];
  LOBYTE(v47) = (((*(v50 + 0xB % v49) ^ 0x5E) - 94) ^ ((*(v50 + 0xB % v49) ^ 0x4B) - 75) ^ ((*(v50 + 0xB % v49) ^ 0x4A) - 74)) - 59;
  v51 = v47 & 0xC7 ^ 0xA4;
  v52 = 2 * ((2 * v47) & v47 ^ (2 * v47) ^ v51);
  v53 = 2 * ((2 * (v52 ^ v51 ^ v52 & v47)) ^ v51 ^ (2 * (v52 ^ v51 ^ v52 & v47)) & v47);
  v54 = 2 * ((2 * (v53 ^ v51 ^ v53 & v47)) ^ v51 ^ (2 * (v53 ^ v51 ^ v53 & v47)) & v47);
  *(v50 + 0xB % v49) = v47 ^ (2 * (v54 ^ v51 ^ v54 & v47)) ^ 0x98;
  LOBYTE(v47) = (((*(v50 + 0xC % v49) ^ 0x13) - 19) ^ ((*(v50 + 0xC % v49) ^ 0xE7) + 25) ^ ((*(v50 + 0xC % v49) ^ 0xAB) + 85)) + 44;
  v55 = v47 & 0xD6 ^ 0xAF;
  *(v50 + 0xC % v49) = v47 ^ (2 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & 0xE ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ 0x89;
  v56 = *(v50 + 0xD % v49);
  v57 = (((LODWORD(STACK[0xE90]) ^ 0xFFFFFFBB) + 61) ^ ((LODWORD(STACK[0xE90]) ^ 0xFFFFFF9F) + 25) ^ ((LODWORD(STACK[0xE90]) ^ 0x29) - 81)) + (((v56 ^ 0x1D) - 29) ^ ((v56 ^ 0xFFFFFFF4) + 12) ^ ((v56 ^ 0xFFFFFFB6) + 74)) + 2;
  v58 = v57 & 0x3C ^ 0x35;
  *(v50 + 0xD % v49) = v57 ^ (2 * ((v57 ^ 0x52) & (2 * ((v57 ^ 0x52) & (2 * ((v57 ^ 0x52) & (2 * ((v57 ^ 0x52) & (2 * ((v57 ^ 0x52) & (2 * ((v58 | 2) ^ v57 & 0x2E)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ 0x63;
  v59 = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v60 = STACK[0x9B78];
  v61 = *(STACK[0x9B78] + 0xE % v59);
  v62 = LODWORD(STACK[0xEA0]) + (((v61 ^ 0xFFFFFFA5) + 91) ^ ((v61 ^ 0x14) - 20) ^ ((v61 ^ 0xFFFFFFEE) + 18)) + 98;
  LOBYTE(v61) = v62 & 0xD3 ^ 0xBB;
  *(v60 + 0xE % v59) = v62 ^ (2 * ((v62 ^ 0x7C) & (2 * ((v62 ^ 0x7C) & (2 * ((v62 ^ 0x7C) & (2 * ((v62 ^ 0x7C) & (2 * ((v62 ^ 0x7C) & (2 * (((2 * v62) & 0x7A ^ 0x2E) & (v62 ^ 0x7C) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ 0x8C;
  LOBYTE(v62) = (((*(v60 + 0xF % v59) ^ 0xC4) + 60) ^ ((*(v60 + 0xF % v59) ^ 0xE1) + 31) ^ ((*(v60 + 0xF % v59) ^ 0x7A) - 122)) - 14;
  LOBYTE(v61) = v62 & 0x94 | 0x61;
  *(v60 + 0xF % v59) = v62 ^ (2 * ((v62 ^ 0x52) & (2 * ((v62 ^ 0x52) & (2 * ((v62 ^ 0x52) & (2 * ((v62 ^ 0x52) & (2 * (((2 * (v61 ^ v62 & 0x46)) ^ 4) & (v62 ^ 0x52) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ 0xCB;
  LOBYTE(v61) = (((*(v60 + 0x10 % v59) ^ 0xC6) + 58) ^ ((*(v60 + 0x10 % v59) ^ 0xD6) + 42) ^ ((*(v60 + 0x10 % v59) ^ 0x4F) - 79)) - 46;
  v63 = v61 & 0xD ^ 0xF3;
  *(v60 + 0x10 % v59) = v61 ^ (2 * ((v61 ^ 0x2E) & (2 * ((v61 ^ 0x2E) & (2 * ((v61 ^ 0x2E) & (2 * ((v61 ^ 0x2E) & (2 * ((v61 ^ 0x2E) & (2 * (((2 * v61) & 0x5E ^ 0x22) & (v61 ^ 0x2E) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0x52;
  LODWORD(v60) = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v64 = STACK[0x9B78];
  LOBYTE(v61) = (((*(v64 + 0x11 % v60) ^ 0xEE) + 18) ^ ((*(v64 + 0x11 % v60) ^ 0x16) - 22) ^ ((*(v64 + 0x11 % v60) ^ 0xA7) + 89)) - 19;
  v65 = v61 & 0x36 ^ 0xD1;
  *(v64 + 0x11 % v60) = v61 ^ (2 * ((v61 ^ 0x14) & (2 * ((v61 ^ 0x14) & (2 * ((v61 ^ 0x14) & (2 * ((v61 ^ 0x14) & (2 * (v65 ^ v61 & 0x22)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0x69;
  LOBYTE(v28) = (((*(v64 + 0x12 % v60) ^ 0x9B) + 101) ^ ((*(v64 + 0x12 % v60) ^ 0xAD) + 83) ^ ((*(v64 + 0x12 % v60) ^ 0x69) - 105)) - 94;
  LOBYTE(v61) = v28 & 0xCF ^ 0x98;
  *(v64 + 0x12 % v60) = v28 ^ (2 * ((v28 ^ 0x5E) & (2 * ((v28 ^ 0x5E) & (2 * ((v28 ^ 0x5E) & (2 * ((v28 ^ 0x5E) & (2 * ((v28 ^ 0x5E) & (2 * ((v28 ^ 0x1E) & (2 * v28) & 0x3E ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ 0x90;
  v66 = *(v64 + 0x13 % v60);
  v67 = LODWORD(STACK[0xEB0]) + (((v66 ^ 0x5A) - 90) ^ ((v66 ^ 0x7E) - 126) ^ ((v66 ^ 0x7B) - 123)) + 98;
  LOBYTE(v61) = v67 & 0x39 ^ 0xA6;
  *(v64 + 0x13 % v60) = v67 ^ (2 * ((v67 ^ 0x7C) & (2 * ((v67 ^ 0x7C) & (2 * ((v67 ^ 0x7C) & (2 * ((v67 ^ 0x7C) & (2 * ((v67 ^ 0x7C) & (2 * ((v67 ^ 0x7C) & (2 * v67) & 0x7A ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ 0x66;
  LODWORD(v64) = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v68 = STACK[0x9B78];
  LOBYTE(v61) = (((*(v68 + 0x14 % v64) ^ 0xA1) + 95) ^ ((*(v68 + 0x14 % v64) ^ 0x82) + 126) ^ ((*(v68 + 0x14 % v64) ^ 0x7C) - 124)) + 123;
  v69 = v61 & 0x8B | 0x50;
  *(v68 + 0x14 % v64) = v61 ^ (2 * ((v61 ^ 0x6A) & (2 * ((v61 ^ 0x6A) & (2 * ((v61 ^ 0x6A) & (2 * ((v61 ^ 0x6A) & (2 * ((v61 ^ 0x6A) & (2 * ((v61 ^ 0x62) & (2 * (v61 & 0x8B)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0xD4;
  LOBYTE(v61) = (((*(v68 + 0x15 % v64) ^ 0x52) - 82) ^ ((*(v68 + 0x15 % v64) ^ 0xB5) + 75) ^ ((*(v68 + 0x15 % v64) ^ 0xB8) + 72)) - 86;
  v70 = v61 & 0x65 ^ 0x4B;
  v71 = v61 ^ 0x56;
  *(v68 + 0x15 % v64) = v61 ^ (2 * (v71 & (2 * (v71 & (2 * (v71 & (2 * (v71 & (2 * (v71 & (2 * (((2 * v61) & 0x2E ^ 0x32) & (v61 ^ 0x16) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0x3A;
  LOBYTE(v23) = (((*(v68 + 0x16 % v64) ^ 0x29) - 41) ^ ((*(v68 + 0x16 % v64) ^ 0x16) - 22) ^ ((*(v68 + 0x16 % v64) ^ 0x60) - 96)) - 73;
  LOBYTE(v61) = v23 & 0x3E ^ 0x3A;
  *(v68 + 0x16 % v64) = v23 ^ (2 * ((v23 ^ 0x48) & (2 * ((v23 ^ 0x48) & (2 * ((v23 ^ 0x48) & (2 * ((v23 ^ 0x48) & (2 * ((v23 ^ 0x48) & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ 0x61;
  v72 = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v73 = STACK[0x9B78];
  LOBYTE(v68) = *(STACK[0x9B78] + 0x17 % v72);
  LOBYTE(v68) = ((v68 ^ 0xBE) + 66) ^ ((v68 ^ 0x81) + 127) ^ ((v68 ^ 0x60) - 96);
  LOBYTE(v61) = (v68 + 52) & 0xCD | 0x12;
  LOBYTE(v68) = v68 - 76;
  v74 = v61 ^ v68 & 0x3C;
  LOBYTE(v64) = v68 ^ 0x4C;
  *(v73 + 0x17 % v72) = v68 ^ (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * (v64 & (2 * v61) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ 0xAE;
  LODWORD(v68) = *(v73 + 0x18 % v72);
  v75 = (LODWORD(STACK[0xE20]) ^ (LODWORD(STACK[0xDD0]) ^ (LODWORD(STACK[0xDB0]) ^ 0xFFFFFFBB) & STACK[0xDF0] ^ 0x7F) & STACK[0xDC0] ^ 0xFFFFFF83) + (((v68 ^ 0x40) - 64) ^ ((v68 ^ 0x4F) - 79) ^ ((v68 ^ 0x50) - 80)) - 102;
  v76 = v75 & 0xA9 ^ 0x72;
  *(v73 + 0x18 % v72) = v75 ^ (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * ((v75 ^ 0x44) & (2 * (v75 & (2 * v75) & 0xA ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ 0xF6;
  LOBYTE(v32) = (((*(v73 + 0x19 % v72) ^ 0xA9) + 87) ^ ((*(v73 + 0x19 % v72) ^ 0x4A) - 74) ^ ((*(v73 + 0x19 % v72) ^ 0xBC) + 68)) - 49;
  v77 = v32 & 0xC5 | 0xA;
  LOBYTE(v62) = v77 ^ v32 & 0x1C;
  *(v73 + 0x19 % v72) = v32 ^ (2 * ((v32 ^ 0x44) & (2 * ((v32 ^ 0x44) & (2 * ((v32 ^ 0x44) & (2 * ((v32 ^ 0x44) & (2 * ((v32 ^ 0x44) & (2 * (v32 & (2 * v77) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x86;
  v78 = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v79 = STACK[0x9B78];
  LODWORD(v73) = *(STACK[0x9B78] + 0x1A % v78);
  v80 = LODWORD(STACK[0xE30]) + ((LODWORD(STACK[0xE40]) - 77) ^ LODWORD(STACK[0xE60]) ^ LODWORD(STACK[0xE70])) + (STACK[0xE80] & 0xFFFFFF80) + (((v73 ^ 0x72) - 114) ^ ((v73 ^ 0x60) - 96) ^ ((v73 ^ 0x4D) - 77)) - 73;
  LOBYTE(v73) = v80 & 0x21 ^ 0x27;
  *(v79 + 0x1A % v78) = v80 ^ (2 * ((v80 ^ 0x5A) & (2 * ((v80 ^ 0x5A) & (2 * ((v80 ^ 0x5A) & (2 * ((v80 ^ 0x5A) & (2 * ((v80 ^ 0x5A) & (2 * (((2 * v80) & 0x36 ^ 0x7A) & (v80 ^ 0x5A) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0x7E;
  LOBYTE(v80) = ((*(v79 + 0x1B % v78) ^ 0xFD) + 3) ^ ((*(v79 + 0x1B % v78) ^ 0x4B) - 75) ^ ((*(v79 + 0x1B % v78) ^ 0xE9) + 23);
  LOBYTE(v73) = v80 - 46;
  LOBYTE(v80) = v80 + 82;
  LOBYTE(v72) = v80 & 0x89 | 0x60;
  v81 = v72 ^ v73 & 0xC0;
  LOBYTE(v72) = (v73 ^ 8) & (2 * ((v73 ^ 8) & (2 * ((v73 ^ 8) & (2 * ((v73 ^ 8) & (2 * ((v73 ^ 8) & (2 * (v80 & (2 * v72) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81));
  v82 = LODWORD(STACK[0xEC0]) >> 1;
  *(v79 + 0x1B % v78) = v73 ^ (2 * (v72 ^ v81)) ^ 0x16;
  v83 = 0x1C % v78;
  LOBYTE(v78) = (((*(v79 + 0x1C % v78) ^ 0xC8) + 56) ^ ((*(v79 + 0x1C % v78) ^ 0x8C) + 116) ^ ((*(v79 + 0x1C % v78) ^ 0x1B) - 27)) - 103;
  LOBYTE(v73) = (v78 & 0xC2 | 0x3C) ^ v78 & 0xF8;
  *(v79 + v83) = v78 ^ (2 * ((v78 ^ 0x40) & (2 * ((v78 ^ 0x40) & (2 * ((v78 ^ 0x40) & (2 * ((v78 ^ 0x40) & (2 * ((v78 ^ 0x40) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0x65;
  LODWORD(v79) = LODWORD(STACK[0x4FB4]) ^ 0x16C14DF;
  v84 = STACK[0x9B78];
  v85 = *(STACK[0x9B78] + 0x1D % v79);
  v86 = LODWORD(STACK[0xE10]) + (((v85 ^ 0xFFFFFF87) + 121) ^ ((v85 ^ 0x7E) - 126) ^ ((v85 ^ 0xFFFFFFA6) + 90)) - 119;
  LOBYTE(v73) = v86 & 0xB1 ^ 0x1C;
  *(v84 + 0x1D % v79) = v86 ^ (2 * ((v86 ^ 0x18) & (2 * ((v86 ^ 0x18) & (2 * ((v86 ^ 0x18) & (2 * ((v86 ^ 0x18) & (2 * ((v86 ^ 0x18) & (2 * ((v86 ^ 0x18) & (2 * v86) & 0x32 ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0xEE;
  v87 = *(v84 + 0x1E % v79);
  v88 = LODWORD(STACK[0xED0]) + (((v87 ^ 0x59) - 89) ^ ((v87 ^ 0xFFFFFFDC) + 36) ^ ((v87 ^ 0xFFFFFFDA) + 38)) - 125;
  LOBYTE(v73) = v88 & 0x9C ^ 0xE0;
  *(v84 + 0x1E % v79) = v88 ^ (2 * ((v88 ^ 0x5C) & (2 * ((v88 ^ 0x5C) & (2 * ((v88 ^ 0x5C) & (2 * ((v88 ^ 0x5C) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0xC3;
  LODWORD(v79) = 0x1F % v79;
  v89 = (v82 ^ 0xFFFFFFFC) + (((*(v84 + v79) ^ 0xFFFFFFE6) + 26) ^ ((*(v84 + v79) ^ 0xFFFFFF84) + 124) ^ ((*(v84 + v79) ^ 0x3D) - 61)) + 110;
  v90 = v89 & 7 ^ 0xB;
  v91 = v89 & (2 * (v89 & (2 * (((2 * v89) & 0x62 ^ 0x76) & v89 ^ v90)) ^ v90)) ^ v90;
  v92 = (v90 & 0xFFFFFF8F | (16 * ((v91 >> 3) & 7))) ^ v89 & (2 * v91);
  v93 = v90 & 0xFFFFFF8F | (16 * ((v92 >> 3) & 7));
  *(v84 + v79) = v89 ^ (2 * ((v90 & 0x8F | (16 * (((v93 ^ v89 & (2 * v92)) >> 3) & 7))) ^ v89 & (2 * (v93 ^ v89 & (2 * v92))))) ^ 0x58;
  return (*(STACK[0xF18] + 8 * v8))(100);
}

uint64_t sub_100569C48()
{
  v3 = (((v0 ^ 0xA5973B83) + (v2 ^ 0x5A685A8E)) ^ ((v0 ^ 0x108BE528) - 277603624) ^ ((v0 ^ 0x98FAAED4) + 1728401708)) + 1673121874;
  v4 = v3 < -1244438573;
  v5 = v3 > v1 - 807166401;
  if (v1 - 807166401 < -1244438573 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((500 * !v5) ^ v2)))();
}

uint64_t sub_100569D50@<X0>(unsigned int a1@<W0>, char a2@<W3>, char a3@<W4>, _BYTE *a4@<X8>)
{
  v7 = ((*a4 ^ 0x6F) - 111) ^ ((*a4 ^ 0xB1) + 79) ^ ((*a4 ^ 0x81) + 127);
  v8 = v7 + 116;
  v9 = ((-117 - v7) & 0xE6 | 8) ^ (v7 + 116) & 0x54;
  *a4 = v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0xED;
  if (v5 == -347583231)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 + 1;
  }

  v11 = (((LODWORD(STACK[0xE70]) ^ 0x36) + 40) ^ (LODWORD(STACK[0xE70]) + 18) ^ ((LODWORD(STACK[0xE70]) ^ 0x30) + 34)) + (((*v10 ^ 0xFFFFFFE8) + 24) ^ ((*v10 ^ 0x6A) - 106) ^ ((*v10 ^ 0xFFFFFFDD) + 35)) - 88;
  v12 = v11 & 0x81 ^ 0x91;
  *v10 = v11 ^ (2 * ((v11 ^ 0x1E) & (2 * ((v11 ^ 0x1E) & (2 * ((v11 ^ 0x1E) & (2 * ((v11 ^ 0x1E) & (2 * ((v11 ^ 0x1E) & (2 * (((2 * (v11 & 0x1F)) ^ 0x1E) & (v11 ^ 0x1E) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0xDE;
  v13 = 2 % (v5 ^ 0xEB484D00);
  v14 = (((a4[v13] ^ 0x5D) - 93) ^ ((a4[v13] ^ 0x60) - 96) ^ ((a4[v13] ^ 0x62) - 98)) + 112;
  LOBYTE(v11) = v14 & 0x8E ^ 0x52;
  a4[v13] = v14 ^ (2 * ((v14 ^ 0x68) & (2 * ((v14 ^ 0x68) & (2 * ((v14 ^ 0x68) & (2 * ((v14 ^ 0x68) & (2 * ((v14 ^ 0x68) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0xD1;
  v15 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v16 = STACK[0x9A68];
  LOBYTE(v13) = (((*(v16 + 3 % v15) ^ 0x31) - 49) ^ *(v16 + 3 % v15) ^ ((*(v16 + 3 % v15) ^ 0x6E) - 110)) - 49;
  LOBYTE(v11) = v13 & 0x6D ^ 0x71;
  *(v16 + 3 % v15) = v13 ^ (2 * ((v13 ^ 0xA) & (2 * ((v13 ^ 0xA) & (2 * ((v13 ^ 0xA) & (2 * ((v13 ^ 0xA) & (2 * ((v13 ^ 0xA) & (2 * (((a2 & (2 * v13) ^ 0xE6) & 2 | v11) ^ (a2 & (2 * v13) ^ 0xE6) & v13)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0x32;
  v17 = (((*(v16 + 4 % v15) ^ 0x6B) - 107) ^ ((*(v16 + 4 % v15) ^ 0x57) - 87) ^ ((*(v16 + 4 % v15) ^ 0x63) - 99)) + 59;
  v18 = v17 & 0x31 ^ 0xBB;
  *(v16 + 4 % v15) = v17 ^ (2 * ((v17 ^ 0x42) & (2 * ((v17 ^ 0x42) & (2 * ((v17 ^ 0x42) & (2 * ((v17 ^ 0x42) & (2 * ((v17 ^ 0x42) & (2 * (((2 * (v17 & 3)) ^ 0x72) & (v17 ^ 0x42) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ 0x6E;
  v19 = (((*(v16 + 5 % v15) ^ 0x1D) - 29) ^ ((*(v16 + 5 % v15) ^ 0xBC) + 68) ^ ((*(v16 + 5 % v15) ^ 0xFE) + 2)) - 88;
  v20 = v19 & 0x50 ^ 0x53;
  *(v16 + 5 % v15) = v19 ^ (2 * ((v19 ^ 0x32) & (2 * ((v19 ^ 0x32) & (2 * ((v19 ^ 0x32) & (2 * ((v19 ^ 0x32) & (2 * ((v19 ^ 0x22) & (2 * ((v19 ^ 0x22) & 0x22 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ 0xF;
  v21 = (((*(v16 + a1 % v15) ^ 0x2F) - 47) ^ ((*(v16 + a1 % v15) ^ 0x4B) - 75) ^ ((*(v16 + a1 % v15) ^ 0x3B) - 59)) + 62;
  v22 = v21 & 0xAB ^ 0x1B;
  *(v16 + a1 % v15) = v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * (((2 * v21) & 0x6A ^ 0x1E) & (v21 ^ 0x34) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xF4;
  v23 = (((*(v16 + 7 % v15) ^ 0x17) - 23) ^ ((*(v16 + 7 % v15) ^ 0xEF) + 17) ^ ((*(v16 + 7 % v15) ^ 0xA7) + 89)) - 85;
  v24 = v23 & 0xD5 ^ 0x17;
  *(v16 + 7 % v15) = v23 ^ (2 * ((v23 ^ 0x2E) & (2 * ((v23 ^ 0x2E) & (2 * ((v23 ^ 0x2E) & (2 * ((v23 ^ 0x2E) & (2 * ((v23 ^ 0x2E) & (2 * (((2 * v23) & 0x5E ^ 0x7A) & (v23 ^ 0x2E) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ 0x8A;
  v25 = 8 % v15;
  v26 = (((*(v16 + 8 % v15) ^ 0x96) + 106) ^ ((*(v16 + 8 % v15) ^ 0x9E) + 98) ^ ((*(v16 + 8 % v15) ^ 0x57) - 87)) + 65;
  v27 = v26 & 0x59 ^ 0x49;
  LOBYTE(v15) = (((2 * v26) & 0x8F ^ 0x9E) & 6 | v27) ^ ((2 * v26) & 0x8F ^ 0x9E) & v26;
  *(v16 + v25) = v26 ^ (2 * ((v26 ^ 0x46) & (2 * ((v26 ^ 0x46) & (2 * ((v26 ^ 0x46) & (2 * ((v26 ^ 0x46) & (2 * ((v27 & 0xF9 | (2 * (v15 & 3))) ^ v26 & (2 * v15))) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ 6;
  v28 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v29 = STACK[0x9A68];
  v30 = (((a3 ^ 0x82) + 88) ^ (a3 - 42) ^ ((a3 ^ 0xDF) + 11)) + (((*(v29 + 9 % v28) ^ 0x14) - 20) ^ ((*(v29 + 9 % v28) ^ 0x66) - 102) ^ ((*(v29 + 9 % v28) ^ 0x2D) - 45)) - 27;
  v31 = v30 & 0x1B ^ 0x15;
  *(v29 + 9 % v28) = v30 ^ (2 * ((v30 ^ 0x70) & (2 * ((v30 ^ 0x70) & (2 * ((v30 ^ 0x70) & (2 * ((v30 ^ 0x70) & (2 * ((v30 ^ 0x70) & (2 * (((2 * v30) & 0x62 ^ 0x6A) & v30 ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x44;
  v32 = (((*(v29 + 0xA % v28) ^ 0x93) + 109) ^ ((*(v29 + 0xA % v28) ^ 0x5B) - 91) ^ ((*(v29 + 0xA % v28) ^ 0x97) + 105)) + 54;
  v33 = v32 & 0x20 ^ 0xAB;
  *(v29 + 0xA % v28) = v32 ^ (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & 0x32 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ 0x7F;
  v34 = 0xB % v28;
  v35 = *(v29 + 0xB % v28);
  v36 = (((LODWORD(STACK[0xED0]) ^ 1) + 118) ^ ((LODWORD(STACK[0xED0]) ^ 0x7F) + 12) ^ ((LODWORD(STACK[0xED0]) ^ 0xFFFFFFBF) - 52)) + (((v35 ^ 0xFFFFFFBD) + 67) ^ ((v35 ^ 0xFFFFFFD7) + 41) ^ ((v35 ^ 0x35) - 53)) - 21;
  LOBYTE(v15) = v36 & 0xB0 | 9;
  *(v29 + v34) = v36 ^ (2 * ((v36 ^ 0x3E) & (2 * ((v36 ^ 0x3E) & (2 * ((v36 ^ 0x3E) & (2 * ((v36 ^ 0x3E) & (2 * ((v36 ^ 0x3E) & (2 * ((v36 ^ 0x3E) & 0xE ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0xEF;
  v37 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v38 = STACK[0x9A68];
  v39 = (((*(v38 + 0xC % v37) ^ 0x76) - 118) ^ ((*(v38 + 0xC % v37) ^ 0xD2) + 46) ^ ((*(v38 + 0xC % v37) ^ 0xFB) + 5)) + 115;
  v40 = v39 & 0x8D ^ 0x9C;
  *(v38 + 0xC % v37) = v39 ^ (2 * ((v39 ^ 0x14) & (2 * ((v39 ^ 0x14) & (2 * ((v39 ^ 0x14) & (2 * ((v39 ^ 0x14) & (2 * ((v39 ^ 0x14) & (2 * (((2 * v39) & 0x2A | 0x15) & v39)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0xD2;
  LODWORD(v29) = *(v38 + 0xD % v37);
  v41 = (((v29 ^ 0xFFFFFFFE) + 2) ^ ((v29 ^ 0x70) - 112) ^ ((v29 ^ 0xFFFFFFD1) + 47)) + (((LODWORD(STACK[0xE60]) ^ 0xFFFFFF9F) + 19) ^ ((LODWORD(STACK[0xE60]) ^ 0xFFFFFF94) + 26) ^ ((LODWORD(STACK[0xE60]) ^ 0xFFFFFFA2) + 48));
  v42 = v41 & 0x4E ^ 0xCA;
  *(v38 + 0xD % v37) = v41 ^ (2 * ((v41 ^ 0x38) & (2 * ((v41 ^ 0x38) & (2 * ((v41 ^ 0x38) & (2 * ((v41 ^ 0x38) & (2 * ((v41 ^ 0x38) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ 0x91;
  LOBYTE(v41) = (((*(v38 + 0xE % v37) ^ 0xD1) + 47) ^ ((*(v38 + 0xE % v37) ^ 0xC0) + 64) ^ ((*(v38 + 0xE % v37) ^ 0x4E) - 78)) + 83;
  v43 = v41 & 0x97 ^ 0xB1;
  *(v38 + 0xE % v37) = v41 ^ (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * (((2 * v41) & 0x6A ^ 0x22) & v41 ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ 0xC8;
  v44 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v45 = STACK[0x9A68];
  v46 = (((*(v45 + 0xF % v44) ^ 0xF6) + 10) ^ ((*(v45 + 0xF % v44) ^ 0x20) - 32) ^ ((*(v45 + 0xF % v44) ^ 0x89) + 119)) + 49;
  v47 = v46 & 0xC7 ^ 0x98;
  *(v45 + 0xF % v44) = v46 ^ (2 * ((v46 ^ 0x56) & (2 * ((v46 ^ 0x56) & (2 * ((v46 ^ 0x56) & (2 * ((v46 ^ 0x56) & (2 * ((v46 ^ 0x56) & (2 * ((v46 ^ 6) & (2 * v46) & 0x2E ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ 0x98;
  v48 = *(v45 + 0x10 % v44);
  v49 = (((LODWORD(STACK[0xE00]) ^ 0x3E) + 50) ^ ((LODWORD(STACK[0xE00]) ^ 0x64) + 108) ^ ((LODWORD(STACK[0xE00]) ^ 0x7B) + 117)) + (((v48 ^ 0xFFFFFFD3) + 45) ^ ((v48 ^ 0x29) - 41) ^ ((v48 ^ 0xFFFFFFA5) + 91)) + 57;
  v50 = v49 & 0xBD ^ 0x67;
  *(v45 + 0x10 % v44) = v49 ^ (2 * ((v49 ^ 0x76) & (2 * ((v49 ^ 0x76) & (2 * ((v49 ^ 0x76) & (2 * ((v49 ^ 0x76) & (2 * ((v49 ^ 0x76) & (2 * (((2 * v49) & 0x6E ^ 0x4A) & (v49 ^ 0x66) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ 0xE2;
  LOBYTE(v29) = (((*(v45 + 0x11 % v44) ^ 0x94) + 108) ^ ((*(v45 + 0x11 % v44) ^ 0x5C) - 92) ^ ((*(v45 + 0x11 % v44) ^ 0x97) + 105)) + 15;
  LOBYTE(v41) = v29 & 0x24 ^ 0x39;
  *(v45 + 0x11 % v44) = v29 ^ (2 * ((v29 ^ 0x72) & (2 * ((v29 ^ 0x72) & (2 * ((v29 ^ 0x72) & (2 * ((v29 ^ 0x72) & (2 * ((v29 ^ 0x72) & (2 * ((v29 ^ 0x72) & 0x16 ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 0x7B;
  v51 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v52 = STACK[0x9A68];
  LOBYTE(v41) = (((*(v52 + 0x12 % v51) ^ 0x1B) - 27) ^ ((*(v52 + 0x12 % v51) ^ 0xCD) + 51) ^ ((*(v52 + 0x12 % v51) ^ 0x89) + 119)) + 28;
  v53 = v41 & 0x3D ^ 0x2C;
  *(v52 + 0x12 % v51) = v41 ^ (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * (v41 & (2 * v41) & 0x4A ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ 0x62;
  LOBYTE(v41) = ((*(v52 + 0x13 % v51) ^ 0x6A) - 106) ^ ((*(v52 + 0x13 % v51) ^ 0xAD) + 83) ^ ((*(v52 + 0x13 % v51) ^ 0x98) + 104);
  v54 = (v41 + 19) & 0xE0 ^ 0x89;
  *(v52 + 0x13 % v51) = (v41 + 19) ^ (2 * (((v41 + 19) ^ 0x6E) & (2 * (((v41 + 19) ^ 0x6E) & (2 * (((v41 + 19) ^ 0x6E) & (2 * (((v41 + 19) ^ 0x6E) & (2 * (((v41 + 19) ^ 0x6E) & (2 * (v54 ^ (12 - v41) & 0xE)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ 0xBF;
  LOBYTE(v13) = (((*(v52 + 0x14 % v51) ^ 0x10) - 16) ^ ((*(v52 + 0x14 % v51) ^ 0x5E) - 94) ^ ((*(v52 + 0x14 % v51) ^ 0x11) - 17)) + (((v6 ^ 0x12) + 73) ^ ((v6 ^ 0x43) + 26) ^ ((v6 ^ 0x71) + 44));
  LOBYTE(v41) = -88 - v13;
  LOBYTE(v13) = v13 + 87;
  LOBYTE(v41) = (v41 & 0x8D | 0x62) ^ v13 & 0xD6;
  *(v52 + 0x14 % v51) = v13 ^ (2 * ((v13 ^ 0xC) & (2 * ((v13 ^ 0xC) & (2 * ((v13 ^ 0xC) & (2 * ((v13 ^ 0xC) & (2 * ((v13 ^ 0xC) & (2 * ((v13 ^ 0xC) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 4;
  v55 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v56 = STACK[0x9A68];
  v57 = *(STACK[0x9A68] + 0x15 % v55);
  v58 = (((LODWORD(STACK[0xE10]) ^ 0x70) + 41) ^ ((LODWORD(STACK[0xE10]) ^ 0xFFFFFFE3) - 68) ^ ((LODWORD(STACK[0xE10]) ^ 0xFFFFFFAE) - 9)) + (((v57 ^ 0x7A) - 122) ^ ((v57 ^ 0xFFFFFF9B) + 101) ^ ((v57 ^ 0xFFFFFFBE) + 66)) + 66;
  LOBYTE(v51) = v58 & 0x4B ^ 0xCA;
  *(v56 + 0x15 % v55) = v58 ^ (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * v58) & 0x6E ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ 0x14;
  v55 = 0x16 % v55;
  v59 = (((LODWORD(STACK[0xE40]) ^ 0x33) + 26) ^ ((LODWORD(STACK[0xE40]) ^ 0xFFFFFFCA) - 31) ^ ((LODWORD(STACK[0xE40]) ^ 0xFFFFFFA4) - 113)) + (((*(v56 + v55) ^ 0xFFFFFFF6) + 10) ^ ((*(v56 + v55) ^ 0x36) - 54) ^ ((*(v56 + v55) ^ 0xFFFFFF9F) + 97)) + 6;
  v60 = v59 & 0xE7 ^ 0x83;
  *(v56 + v55) = v59 ^ (2 * ((v59 ^ 0x60) & (2 * ((v59 ^ 0x60) & (2 * ((v59 ^ 0x60) & (2 * ((v59 ^ 0x60) & (2 * ((v59 ^ 0x60) & (2 * (v59 & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 0xB8;
  v61 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v62 = STACK[0x9A68];
  LOBYTE(v58) = (((*(v62 + 0x17 % v61) ^ 0xA0) + 96) ^ *(v62 + 0x17 % v61) ^ ((*(v62 + 0x17 % v61) ^ 0x7F) - 127)) + 117;
  LOBYTE(v16) = v58 & 0x1E ^ 0xC9;
  *(v62 + 0x17 % v61) = v58 ^ (2 * ((v58 ^ 0xC) & (2 * ((v58 ^ 0xC) & (2 * ((v58 ^ 0xC) & (2 * ((v58 ^ 0xC) & (2 * ((v58 ^ 0xC) & (2 * (v16 ^ v58 & 0x12)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0x41;
  v63 = (LODWORD(STACK[0xDF0]) | STACK[0xE20] & 0xAE) - ((2 * (LODWORD(STACK[0xDF0]) | STACK[0xE20] & 0xAE)) & 0xBA) - 35;
  LOBYTE(v63) = (((v63 ^ 0xC) - 27) ^ ((v63 ^ 0xB1) + 90) ^ ((v63 ^ 0x60) - 119)) + (((*(v62 + 0x18 % v61) ^ 0x46) - 70) ^ ((*(v62 + 0x18 % v61) ^ 0xF5) + 11) ^ ((*(v62 + 0x18 % v61) ^ 0xEC) + 20)) + 120;
  LOBYTE(v38) = v63 & 0x65 ^ 0xFA;
  *(v62 + 0x18 % v61) = v63 ^ (2 * ((v63 ^ 0x30) & (2 * ((v63 ^ 0x30) & (2 * ((v63 ^ 0x30) & (2 * ((v63 ^ 0x30) & (2 * ((v63 ^ 0x30) & (2 * ((v63 ^ 0x30) & (2 * v63) & 0x62 ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ 0x3A;
  v61 = 0x19 % v61;
  LOBYTE(v63) = ((*(v62 + v61) ^ 0xC3) + 61) ^ ((*(v62 + v61) ^ 0x36) - 54) ^ ((*(v62 + v61) ^ 0xAA) + 86);
  LOBYTE(v58) = v63 - 57;
  LOBYTE(v63) = (56 - v63) & 0xE6 | 9;
  LOBYTE(v38) = v63 ^ v58 & 0x5A;
  *(v62 + v61) = v58 ^ (2 * ((v58 ^ 0x66) & (2 * ((v58 ^ 0x66) & (2 * ((v58 ^ 0x66) & (2 * ((v58 ^ 0x66) & (2 * ((v58 ^ 0x66) & (2 * ((v58 ^ 0x66) & (2 * v63) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ 0xE3;
  v64 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v65 = STACK[0x9A68];
  LOBYTE(v38) = (((*(v65 + 0x1A % v64) ^ 0x3E) - 62) ^ ((*(v65 + 0x1A % v64) ^ 0xB4) + 76) ^ ((*(v65 + 0x1A % v64) ^ 0xD5) + 43)) + 1;
  *(v65 + 0x1A % v64) = v38 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v38 ^ 0x2C)) & 0x68 ^ 0x34) & (v38 ^ 0x2C))) ^ 0x34) & (v38 ^ 0x2C))) ^ 0x34) & (v38 ^ 0x2C))) ^ 0x74) & (v38 ^ 0x2C))) ^ 0xAB;
  v66 = *(v65 + 0x1B % v64);
  v67 = -3 * (LODWORD(STACK[0xE80]) ^ 0x5D) + (((v66 ^ 0x14) - 20) ^ ((v66 ^ 0xFFFFFFF7) + 9) ^ ((v66 ^ 0xFFFFFFBC) + 68)) + 18;
  LOBYTE(v38) = v67 & 0x1F ^ 0x42;
  *(v65 + 0x1B % v64) = v67 ^ (2 * ((v67 ^ 0x1A) & (2 * ((v67 ^ 0x1A) & (2 * ((v67 ^ 0x1A) & (2 * ((v67 ^ 0x1A) & (2 * ((v67 ^ 0x1A) & (2 * ((v67 ^ 0x12) & (2 * v67) & 0x36 ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ 0x40;
  v64 = 0x1C % v64;
  v68 = (((*(v65 + v64) ^ 0x55) - 85) ^ ((*(v65 + v64) ^ 0xC6) + 58) ^ ((*(v65 + v64) ^ 0xCC) + 52)) + 22;
  LOBYTE(v67) = v68 & 0xC3 ^ 0x3E;
  *(v65 + v64) = v68 ^ (2 * ((v68 ^ 0x16) & (2 * ((v68 ^ 0x16) & (2 * ((v68 ^ 0x16) & (2 * ((v68 ^ 0x16) & (2 * ((v68 ^ 0x16) & (2 * ((v68 ^ 0x16) & (2 * v68) & 0x2E ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ 0x9C;
  v69 = LODWORD(STACK[0x5954]) ^ 0xEB484D00;
  v70 = STACK[0x9A68];
  v71 = (((*(v70 + 0x1D % v69) ^ 0x3C) - 60) ^ ((*(v70 + 0x1D % v69) ^ 0xEC) + 20) ^ ((*(v70 + 0x1D % v69) ^ 0x8F) + 113)) - 28;
  LOBYTE(v63) = v71 & 0xC9 | 0x20;
  LOBYTE(v11) = v63 ^ v71 & 0xC0;
  *(v70 + 0x1D % v69) = v71 ^ (2 * ((v71 ^ 0x48) & (2 * ((v71 ^ 0x48) & (2 * ((v71 ^ 0x48) & (2 * ((v71 ^ 0x48) & (2 * ((v71 ^ 0x48) & (2 * ((v71 ^ 0x48) & (2 * v63) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0x56;
  v72 = (((*(v70 + 0x1F % v69) ^ 0x1C) - 28) ^ ((*(v70 + 0x1F % v69) ^ 0x49) - 73) ^ ((*(v70 + 0x1F % v69) ^ 0xA) - 10)) - 55;
  LOBYTE(v63) = v72 & 2 ^ 0x97;
  *(v70 + 0x1F % v69) = v72 ^ (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & 0x26 ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0x5D;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_10056B1F0()
{
  STACK[0x7690] -= 320;
  STACK[0x5C50] = (*(STACK[0x4790] + 36) ^ ((v0 + 29678) + 0x7AFFE57FEF7C6CB4)) - 0x401EA445E220612DLL + ((2 * *(STACK[0x4790] + 36)) & 0x1DEF9EFDELL);
  LODWORD(STACK[0x1374]) = -1348162363;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10056B278()
{
  v1 = STACK[0x4A04];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393308;
  return (*(STACK[0xF18] + 8 * (v0 & 0xEBB53DFD)))();
}

uint64_t sub_10056B4A4()
{
  v0 = STACK[0xF10] - 31332;
  STACK[0x6E58] = STACK[0x6398] + 32;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x806 ^ (10618 * (v0 == -1293025086)))))();
}

uint64_t sub_10056B4F0()
{
  STACK[0x7690] += ((v0 - 7849) | 0xAC1u) ^ 0xFFFFFFFFFFFFE533;
  LODWORD(STACK[0x441C]) = -371865839;
  STACK[0x27E0] = 0;
  LOBYTE(STACK[0x6563]) = 53;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10056B564()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x77C0];
  STACK[0x5D28] = &STACK[0x14DC];
  LODWORD(STACK[0x4704]) = 1820927819;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10056B5B0()
{
  STACK[0x9D08] = ((2 * v2) & 0x1F7E5DE9ELL) + (v2 ^ 0xBB79B77DFBF2EF4FLL) + 0x76EFDFEF9FFD77B6;
  STACK[0x9D10] = v0;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 - 23866 + v1 + 21620)))();
}

uint64_t sub_10056B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34085;
  LODWORD(STACK[0xA4E4]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1E20)))(a1, a2, a3);
}

uint64_t sub_10056B780()
{
  v2 = *(STACK[0xE60] + (v0 - 649173215));
  v3 = *(STACK[0xE60] + v0 - 649182473 + v1 - 3478);
  v4 = v2 & 0x3A ^ 0x50;
  v5 = v2 ^ (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4));
  v6 = 2115 * (((v5 ^ 0x695) - 1680) ^ ((v5 ^ 0xF9B3) + 1610) ^ ((v5 ^ 0xFF1C) + 231)) - 25069;
  v7 = v6 & 0xB098 ^ 0xA71B;
  v8 = v6 ^ 0x6A6A;
  v9 = (v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (((2 * (v7 ^ v6 & 0x5AF2)) ^ 0x14C4) & v8 ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xF0FF;
  v10 = 31 * (((v9 ^ 0xDE8415B6) + 561769034) ^ ((v9 ^ 0x9F8E0B72) + 1618080910) ^ ((v9 ^ 0x410A5EA3) + 16097629)) + 4508793;
  v11 = (((BYTE2(v10) < 0x3Du) << 8) | BYTE2(v10)) + 1461305936;
  v12 = v3 & 0x26 ^ 0x46;
  v13 = (v12 & 0xFFFFFFE7 | (8 * (((v3 & (2 * v12) ^ v12) >> 2) & 3))) ^ v3 & (2 * (v3 & (2 * v12) ^ v12));
  v14 = (v12 & 0xFFFFFFE7 | (8 * ((v13 >> 2) & 3))) ^ v3 & (2 * v13);
  v15 = v12 & 0xFFFFFFE7 | (8 * ((v14 >> 2) & 3));
  LOWORD(v12) = (v3 ^ (2 * ((v12 & 0xE7 | (8 * (((v15 ^ v3 & (2 * v14)) >> 2) & 3))) ^ v3 & (2 * (v15 ^ v3 & (2 * v14)))))) ^ 0xE3;
  LOWORD(v12) = 10923 * (((v12 ^ 0xD216) + 11754) ^ ((v12 ^ 0x1682) - 5762) ^ ((v12 ^ 0xC451) + 15279)) - 48;
  LOWORD(v14) = v12 & 0x77A9 ^ 0xD171;
  LOWORD(v3) = v12 ^ 0x55C6;
  v16 = (v12 ^ (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (((2 * v12) & 0x2B8E ^ 0x226E) & (v12 ^ 0x1C6) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xED1A;
  v17 = (((6 * (((v16 ^ 0x3D88C55B) + 1115110053) ^ ((v16 ^ 0x2B0FD191) + 1425026671) ^ ((v16 ^ 0x16878E79u) + 7893383)) + 8036402) >> 16) - 46);
  return (*(STACK[0xF18] + 8 * ((61879 * (v11 - 1973199252 + (v17 | ((v17 < 0x48) << 8)) + 511893151 < 0xFFFFFFE0)) ^ v1)))();
}

uint64_t sub_10056C23C()
{
  v1 = *(STACK[0x2F10] + 48);
  STACK[0x5E00] = STACK[0x2F10] + 48;
  return (*(STACK[0xF18] + 8 * ((((((v0 - 21207) ^ (v1 == 0)) & 1) == 0) * (((v0 - 1081771756) & 0x407AAB3F) - 35633)) ^ v0)))();
}

uint64_t sub_10056C2C8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 12458)))(v2);
}

uint64_t sub_10056C414()
{
  v0 = (STACK[0xF10] + 961344702) & 0xC6B2FCA6;
  v1 = (STACK[0xF10] - 29883) | 0x803;
  v2 = STACK[0xF10] - 19411;
  v3 = *STACK[0x6510];
  *STACK[0x6510] = v3 + 16;
  v4 = (((v0 ^ 0xE82D89C3 ^ LODWORD(STACK[0xAC5C])) + 399641245) ^ (v1 + 1415926092 + (LODWORD(STACK[0xAC5C]) ^ 0xAB9A9031)) ^ ((LODWORD(STACK[0xAC5C]) ^ 0xAA62A243) + 1436376509)) + 92252248;
  v5 = ((v3 - 529381283) < 0x1BA9E147) ^ (v4 < 0x1BA9E147);
  v6 = v3 - 529381283 > v4;
  if (v5)
  {
    v6 = (v3 - 529381283) < 0x1BA9E147;
  }

  return (*(STACK[0xF18] + 8 * ((7 * v6) ^ v2)))();
}

uint64_t sub_10056C520@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((((a1 - 300) | 0x108A) ^ 0x19B5) + a1)))();
}

uint64_t sub_10056C57C()
{
  v0 = STACK[0xF10] + 1822;
  v1 = STACK[0xF10] - 33943;
  STACK[0x4740] = STACK[0x2780];
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 32270 + v1)))();
}

uint64_t sub_10056CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53, char a54, char a55, char a56, char a57, char a58, char a59, char a60, char a61, int a62, uint64_t a63)
{
  v69 = (16 * v64);
  a61 = *(a19 + v69 + 15);
  a60 = *(a19 + v69 + 14);
  a59 = *(a19 + v69 + 13);
  a58 = *(a19 + v69 + 12);
  a57 = *(a19 + v69 + 11);
  a56 = *(a19 + v69 + 10);
  a55 = *(a19 + v69 + 9);
  a54 = *(a19 + v69 + 8);
  a53 = *(a19 + v69 + 7);
  a52 = *(a19 + v69 + 6);
  a51 = *(a19 + v69 + 5);
  a50 = *(a19 + v69 + 4);
  a49 = *(a19 + v69 + 3);
  a48 = *(a19 + v69 + 2);
  a47 = *(a19 + v69 + 1);
  a46 = *(a19 + v69);
  a62 = v65 + 353670337 * a14 + 8269;
  a63 = a4;
  a64 = &a28;
  v66 = (*(a2 + 8 * (v65 ^ 0x56F8)))(&a62);
  v67 = (a20 + v69);
  v67[15] = a43;
  v67[14] = a42;
  v67[13] = a41;
  v67[12] = a40;
  v67[11] = a39;
  v67[10] = a38;
  v67[9] = a37;
  v67[8] = a36;
  v67[7] = a35;
  v67[6] = a34;
  v67[5] = a33;
  v67[4] = a32;
  v67[3] = a31;
  v67[2] = a30;
  v67[1] = a29;
  *v67 = a28;
  return (*(a21 + 8 * v65))(v66);
}

uint64_t sub_10056CED0()
{
  v5 = (*(v4 + 8 * (v0 + 17662)))(v1);
  *(v3 + 112) = 0;
  return (*(v2 + 8 * (v0 - 25221)))(v5);
}

uint64_t sub_10056CF68()
{
  v2 = v0 - 1754732212;
  STACK[0x5C50] = ((((4 * v1) ^ 0x28FA03E416BBF206) + 0x4A626F760A376E93) ^ (((4 * v1) ^ 0x11A5501E2851594) + 0x63823993FE098901) ^ (((v2 + 1754732686) ^ 0x4B783A744FE5EC78) + ((4 * v1) ^ 0x29E056E65369FBD6))) - 0x27B72B57AE7EEA0FLL;
  LODWORD(STACK[0x1374]) = -1559793968;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x9769673B ^ (731 * (v2 < 0xEACAAEA1)))))();
}

uint64_t sub_10056D208()
{
  v2 = (((*(v0 + 96) ^ 0x99A862EE) + 1717017874) ^ ((*(v0 + 96) ^ 0x1F476FEF) - 524775407) ^ (((v1 + 1557729193) & 0xA3264DFE ^ 0x90C530AC) + (*(v0 + 96) ^ 0x6F3ACA10))) + 635267050;
  LODWORD(STACK[0x662C]) = v2 ^ ((v2 ^ 0xACD91F09) + 1864450108) ^ ((v2 ^ 0xC9D3A42B) + 170654490) ^ ((v2 ^ 0x2EB6E418) - 313607381) ^ ((v2 ^ 0x77BBFFF7) - 1270636346) ^ 0xD5D267DC;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10056D498()
{
  v1 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 332809144) & 0x13D6757F) - 168) ^ v0)))();
}

uint64_t sub_10056D4E4(uint64_t a1)
{
  *(a1 + 340) = STACK[0xA3F8];
  *(a1 + 336) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == -371865839) * ((v1 + 239622340) & 0xF1B73F76 ^ 0x3882)) ^ (v1 - 26565))))();
}

uint64_t sub_10056D5DC@<X0>(int a1@<W8>)
{
  v3 = (v2 - 31183);
  v4 = (v1 > 0xFFBB) ^ (v3 < 0x44);
  v5 = v3 < (((327 * (a1 ^ 0x1303)) ^ 0x8B7F) + v1);
  if (v4)
  {
    v5 = v1 > 0xFFBB;
  }

  if (v5)
  {
    v6 = -371865839;
  }

  else
  {
    v6 = 371891407;
  }

  LODWORD(STACK[0xB9C4]) = v6;
  return (*(STACK[0xF18] + 8 * ((35360 * v5) ^ a1)))();
}

uint64_t sub_10056D668(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v9 = v8 + 1;
  if (a7)
  {
    v10 = v9 == a5;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(STACK[0xF18] + 8 * (((((v7 - 2987) | a3) + a6) * v11) ^ v7)))();
}

uint64_t sub_10056D6A8(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x2514]) = a3;
  v4 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 + 2388)))();
}

uint64_t sub_10056D8E4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(STACK[0x1BE8]);
  return (*(v1 + 8 * (v0 + 1358)))(v2);
}

uint64_t sub_10056D910@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x3CEA;
  STACK[0x1D00] = 0x65D7F4DC84452C66;
  LODWORD(STACK[0x7F2C]) = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x41A3)))(16);
  STACK[0x9340] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 - 11414) ^ 0xFFFF74B1) + v1 - 46891)) ^ v1)))();
}

uint64_t sub_10056D998()
{
  LODWORD(STACK[0xB334]) = v2;
  LOBYTE(STACK[0xB33B]) = 0;
  LODWORD(STACK[0x7934]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10056DA18()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32970;
  v2 = STACK[0xA178];
  v3 = STACK[0xA120];
  v2[15] = *(STACK[0xA120] + 31);
  v2[14] = v3[30];
  v2[13] = v3[29];
  v2[12] = v3[28];
  v2[11] = v3[27];
  v2[10] = v3[26];
  v2[9] = v3[25];
  v2[8] = v3[24];
  v2[7] = v3[23];
  v2[6] = v3[22];
  v2[5] = v3[21];
  v2[4] = v3[20];
  v2[3] = v3[19];
  v2[2] = v3[18];
  v2[1] = v3[17];
  *v2 = v3[16];
  v4 = STACK[0xA188];
  v5 = STACK[0x8618];
  v6 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  STACK[0x10EF8] = STACK[0xA180];
  STACK[0x10F08] = v2;
  LODWORD(STACK[0x10EF0]) = v6 + v0 - 26576;
  LODWORD(STACK[0x10F00]) = v6 ^ 0x350E01B4;
  STACK[0x10EE8] = v5;
  STACK[0x10EE0] = v4;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 + 16836)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v1))(v8);
}

uint64_t sub_10056DB48()
{
  v1 = STACK[0x17E0] + 64;
  v2 = STACK[0x9C3C];
  v3 = (v2 ^ 0x4BA5325) & (2 * (v2 & 0xA6BB63B6)) ^ v2 & 0xA6BB63B6;
  v4 = ((2 * (v2 ^ 0x41AED36D)) ^ 0xCE2B61B6) & (v2 ^ 0x41AED36D) ^ (2 * (v2 ^ 0x41AED36D)) & 0xE715B0DA;
  v5 = v4 ^ (v0 + 554993947);
  v6 = (v4 ^ 0x86010090) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x9C56C36C) & v5 ^ (4 * v5) & 0xE715B0D8;
  v8 = (v7 ^ 0x84148040) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x63013093)) ^ 0x715B0DB0) & (v7 ^ 0x63013093) ^ (16 * (v7 ^ 0x63013093)) & 0xE715B0D0;
  v10 = v8 ^ 0xE715B0DB ^ (v9 ^ 0x61110000) & (v8 << 8);
  v11 = (v10 << 16) & 0x67150000 ^ v10 ^ ((v10 << 16) ^ 0x30DB0000) & (((v9 ^ 0x8604B04B) << 8) & 0x67150000 ^ 0x62050000 ^ (((v9 ^ 0x8604B04B) << 8) ^ 0x15B00000) & (v9 ^ 0x8604B04B));
  v12 = 1012831759 * ((&STACK[0x10000] + 3800) ^ 0x1093168A);
  STACK[0x10EF0] = *(STACK[0x9C30] - 0x217E172EFA1E81CLL);
  STACK[0x10F00] = v1;
  LODWORD(STACK[0x10EE8]) = v0 - v12 + 11203;
  STACK[0x10EE0] = &STACK[0x880C];
  LODWORD(STACK[0x10ED8]) = 471346820 - v12;
  LODWORD(STACK[0x10F08]) = v12 ^ v2 ^ (2 * v11) ^ 0x2F6F0DF2;
  LOBYTE(STACK[0x10EF8]) = 69 - 15 * ((&STACK[0x10000] - 40) ^ 0x8A);
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCD93)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x9C2C]) = STACK[0x10EFC];
  STACK[0x98A8] = *(v13 + 8 * v0);
  return (*(v13 + 8 * (v0 + 4029)))(v14);
}

uint64_t sub_10056DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x1630];
  STACK[0x5D28] = &STACK[0x8B9C];
  LODWORD(STACK[0x4704]) = 500904902;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10056DDDC()
{
  v0 = (STACK[0xF10] + 2074768292) & 0x84557D63;
  v1 = STACK[0xF10] - 32914;
  STACK[0x8330] = STACK[0x3760];
  return (*(STACK[0xF18] + 8 * (v1 - 21236 + v0)))();
}

uint64_t sub_10056DE78()
{
  STACK[0x9E18] = (v0 ^ v1 ^ 0xE5F011FC ^ 0x7CDFD7775A1FC34ALL) + ((2 * v0) & 0x17FDFBBFALL) - 0x4404604A2C05448;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 2458)))();
}

uint64_t sub_10056DFA0()
{
  v2 = STACK[0x8B98];
  if (LODWORD(STACK[0x8B98]) >= 4)
  {
    v3 = 144733506;
  }

  else
  {
    v3 = 144733502;
  }

  v4 = (v3 ^ 0x78293EA0) & ((v0 ^ 0x6977) - 16775) & ~(2 * (v3 & 0x40 ^ 0x8F76B460)) | v3 & 0x40 ^ 0x8F76B460;
  v5 = (((v3 ^ 0x78293EA0) << (((v0 - 100) | 0x23) - 58)) ^ 0x108948C4) & (v3 ^ 0x78293EA0) ^ (((v3 ^ 0x78293EA0) << (((v0 - 100) | 0x23) - 58)) & 0x80020060 | 0x602000);
  v6 = v4 ^ v5 & 0x100949C0 ^ ((4 * v4) ^ 0x20830848) & (v5 ^ 0x80622022) ^ 0xF149440;
  v7 = ((4 * (v5 ^ 0x80622022)) ^ 0x22C70C48) & (v5 ^ 0xF149442) ^ v5 & 0x100949C0;
  v8 = v6 ^ v7 & 0x1F1DDDC0 ^ ((16 * v6) ^ 0x193FDFE0) & (v7 ^ 0xF149442);
  v9 = ((16 * v7) ^ 0xEE5499C0) & (v7 ^ 0xF149442) ^ v7 & 0x1F1DDDC0;
  v10 = v8 ^ v9 & 0x1F1DDDC0 ^ ((v8 << 8) ^ 0x69A9BFC0) & (v9 ^ 0xF149462);
  v11 = ((v9 << 8) ^ 0xB899DC0) & (v9 ^ 0xF149462) ^ v9 & 0x1F1DDDC0;
  v12 = (v3 ^ (2 * (v10 ^ v11 & 0x1F1DDDC0 ^ ((v10 << 16) ^ 0x3F3FDDC0) & (v11 ^ 0x620000) ^ ((v10 << 16) ^ 0x3F3FDDC0) & 0xF769440))) & 0xFFFFFFF7;
  v13 = ((v12 ^ 0x16E6FC7B) - 736315291) ^ ((v12 ^ 0x923376E4) + 1355363068) ^ ((v12 ^ 0x6D676891) - 1348653937);
  v14 = v13 - 248808869 > v2 + 477372525;
  if (v2 > 0xE38BDF92 != v13 - 248808869 < 0x1C74206D)
  {
    v14 = v13 - 248808869 < 0x1C74206D;
  }

  LODWORD(STACK[0xAA38]) = v13 - 581447892;
  v15 = v2 < 4 || v14;
  if (v15)
  {
    v16 = 371891407;
  }

  else
  {
    v16 = v1;
  }

  LODWORD(STACK[0xAA3C]) = v16;
  return (*(STACK[0xF18] + 8 * (v15 | v0)))();
}