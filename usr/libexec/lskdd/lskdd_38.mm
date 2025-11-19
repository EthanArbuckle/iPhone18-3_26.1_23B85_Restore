uint64_t sub_100B06168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12, unsigned int a13)
{
  v17 = (((&a11 | 0xC83F4691) - &a11 + (&a11 & 0x37C0B968)) ^ 0x2E841D97) * v15;
  v18 = *(v14 + 32) ^ v17;
  a11 = *(v14 + 12) + v17;
  a12 = v18;
  a13 = v17 ^ 0xD7529DD0;
  v19 = (*(v16 + 255616))(&a11);
  *(v13 + 32) = 5;
  return (*(v16 + 152472))(v19);
}

uint64_t sub_100B061F4()
{
  v1 = v0 + 2204;
  LODWORD(STACK[0x57A0]) = STACK[0x5780] & 0x5D11F5EC;
  v2 = *(STACK[0x57D8] + 8 * (v1 - 10613));
  LODWORD(STACK[0x5780]) = v1 - 14455;
  return v2();
}

uint64_t sub_100B06308()
{
  v2 = *(STACK[0xF80] + 24);
  STACK[0x14F0] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 15)) & 1) * ((v0 + 296683541) & 0xEE509ECF ^ 0x1D3C)) ^ v0)))();
}

uint64_t sub_100B063F4()
{
  v1 = *(v0 + 2848);
  v2 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v1 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (0x688F5A3738C7E09ALL - ((v2 + v3) | 0x688F5A3738C7E09ALL) + ((v2 + v3) | 0x9770A5C8C7381F65)) ^ 0x55DF9B62F8C9A781;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) | 0xB896B8493B4ACD0ALL) - (v6 + v5) - 0x5C4B5C249DA56685) ^ 0x39B908F98528D279;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (v9 + v8 - ((2 * (v9 + v8)) & 0xD641DF86C15FAAAALL) + 0x6B20EFC360AFD555) ^ 0x4D0A95501B6C7D8;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (0x19D161CB3CE34E23 - ((v12 + v11) ^ 0x4E1642BB9581E5BDLL | 0x19D161CB3CE34E23) + ((v12 + v11) ^ 0x4E1642BB9581E5BDLL | 0xE62E9E34C31CB1DCLL)) ^ 0x98A414A81EB474ALL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x2B882193EA4E63CLL) + 0x15C410C9F52731ELL) ^ 0xEE58614D6AB73BF2;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD8C7B31FCA19D9DELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5455012E8AB1C38FLL;
  LODWORD(v1) = 3903 * ((((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v19, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 4008381;
  LODWORD(v1) = *(*(v0 + 4008) + v1 - 5896 * (((1456909 * v1) >> 32) >> 1));
  HIDWORD(v15) = v1 ^ 4;
  LODWORD(v15) = (v1 << 24) - 469762048;
  LODWORD(v1) = ((v15 >> 27) >> 6) | (4 * (v15 >> 27));
  LOBYTE(v1) = (((v1 - ((2 * v1) & 0x42) - 95) & 0x80) != 0) | (2 * (v1 - ((2 * v1) & 0x42) - 95));
  *(*(v0 + 4000) + 38049) = (((v1 ^ 0x59) - 100) ^ ((v1 ^ 0x12) - 47) ^ ((v1 ^ 8) - 53)) - 102;
  v21 = *(v0 + 3984) + 19;
  *(v0 + 296) = v21;
  v22 = STACK[0x57D8];
  v23 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] ^ 0x153B));
  *(v0 + 2856) = v21;
  *(v0 + 280) = v23;
  return (*(v22 + 8 * (LODWORD(STACK[0x4D50]) + 31504)))();
}

uint64_t sub_100B06710(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5)
{
  v7 = STACK[0x880];
  v8 = *(STACK[0x8B0] + 8 * SLODWORD(STACK[0x880]));
  STACK[0x870] = v6;
  return v8(a1, a2, (v7 - 437464074) & 0x1A135E3E, v5 & 7, *&STACK[0x5B0], a5, *&STACK[0x640], *&STACK[0x590], *&STACK[0x5F0]);
}

uint64_t sub_100B06ACC(uint64_t a1, __n128 a2, __n128 a3)
{
  *&STACK[0x590] = a3;
  *&STACK[0x5B0] = a2;
  return (*(v4 + 8 * (v3 ^ 0x200A ^ (30877 * (v3 == -1118369728)))))(a1, 1211082140, 1211098651);
}

uint64_t sub_100B06C34()
{
  v4 = STACK[0x1090];
  *(STACK[0x1090] + 16) = ((v1 - 1211075128) ^ 0xBAE157A) + v0;
  *(v3 - 240) = v1 - 289235981 * ((~((v3 - 240) ^ 0x88F618EF | 0x7A7815A8) + (((v3 - 240) ^ 0x88F618EF) & 0x7A7815A8)) ^ 0x8AF32287) + 17530;
  (*(v2 + 8 * (v1 + 28350)))(v3 - 240);
  *(v4 + 20) = *(v3 - 236) - 877354925;
  *(v3 - 232) = (v1 + 1518583470) ^ (1089234077 * ((v3 - 240) ^ 0xE05DDC78));
  (*(v2 + 8 * (v1 + 28299)))(v3 - 240);
  *(v4 + 24) = *(v3 - 240) ^ 0xF3E211F98F1E5042;
  *(v3 - 232) = v1 + 800103191 * ((((v3 - 240) | 0xDDAEADD1) - (v3 - 240) + ((v3 - 240) & 0x22515228)) ^ 0xACEAE0B2) + 771486952;
  (*(v2 + 8 * (v1 ^ 0x71BD)))(v3 - 240);
  *(v4 + 32) = *(v3 - 240) ^ (3 * (v1 ^ 0x2A30u) - 0xC1DEE0670E227A9);
  *(v3 - 240) = (v1 - 673051500) ^ (1534937323 * ((((v3 - 240) | 0x2922B2A3) - ((v3 - 240) & 0x2922B2A3)) ^ 0xEFCC49E4));
  v5 = (*(v2 + 8 * (v1 + 28335)))(v3 - 240);
  *(v4 + 40) = *(v3 - 232) ^ 0xF3E211F98F1E5042;
  v6 = LOBYTE(STACK[0x1377]);
  LODWORD(STACK[0x680]) = STACK[0x90C];
  return (*(v2 + 8 * ((22768 * v6) ^ v1)))(v5);
}

uint64_t sub_100B06F40(uint64_t a1)
{
  v2 = *a1 ^ (1534937323 * (((a1 | 0xD40AB453) - a1 + (a1 & 0x2BF54BAC)) ^ 0x12E44F14));
  result = (*(*(&off_101353600 + (v2 ^ 0xD7E21F0B)) + 8 * v2 + 0x140F30F74))(@"BoardId", 0);
  *(a1 + 8) = result - ((2 * result) & 0xE7C423F31E3CA084) - 0xC1DEE0670E1AFBELL;
  return result;
}

void sub_100B07010(uint64_t a1)
{
  v1 = *(a1 + 16) - 410706167 * ((-2 - ((a1 | 0x5EE26E2C) + (~a1 | 0xA11D91D3))) ^ 0x3AC2BD85);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100B07124@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v29 - 176) = a1;
  v30 = 144 * ((v25 + 1974162087) ^ 0x5ABCB8Eu);
  v31 = *(v29 - 160);
  v32 = (v31 ^ 0x6C8CBD4B) - 238252401;
  *(v29 - 156) = (v31 ^ 0xA963EF6C) + 874765482;
  v33 = (v31 ^ 0x58AF21E2) - 974187992;
  v34 = (v31 ^ 0xFFFFBFFF) + 1656720443;
  HIDWORD(a19) = 2 * (v27 & 0x812DE32F);
  v35 = ((2 * (v27 ^ 0x5897C354)) ^ 0xB37440F6) & (v27 ^ 0x5897C354) ^ (2 * (v27 ^ 0x5897C354)) & 0xD9BA207A;
  v36 = v35 ^ 0x488A2009;
  v37 = (v35 ^ 0x1300070) & (4 * (HIDWORD(a19) & (v27 ^ 0x588DC30E) ^ v27 & 0x812DE32F)) ^ HIDWORD(a19) & (v27 ^ 0x588DC30E) ^ v27 & 0x812DE32F;
  v38 = ((4 * v36) ^ 0x66E881EC) & v36 ^ (4 * v36) & 0xD9BA2078;
  v39 = (v38 ^ 0x40A80060) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x99122013)) ^ 0x9BA207B0) & (v38 ^ 0x99122013) ^ (16 * (v38 ^ 0x99122013)) & 0xD9BA2070;
  v41 = v39 ^ 0xD9BA207B ^ (v40 ^ 0x99A20000) & (v39 << 8);
  *(v29 - 192) = *(v28 + 8 * ((v25 + 1974162087) ^ 0x75ABDD51 ^ (15443 * (v25 != -1014909693))));
  *(v29 - 100) = v30 ^ 0x3293;
  return (*(v29 - 192))(v32 ^ v33 ^ v34, v30 ^ 0x2B26, 2 * ((v41 << 16) & 0x59BA0000 ^ v41 ^ ((v41 << 16) ^ 0x207B0000) & (((v40 ^ 0x4018204B) << 8) & 0x59BA0000 ^ 0x419A0000 ^ (((v40 ^ 0x4018204B) << 8) ^ 0x3A200000) & (v40 ^ 0x4018204B))), 255, a11, v30, (v30 ^ 0x3293) + 978773736, HIDWORD(a15), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v26, a21, a22, a23, a24, a25);
}

uint64_t sub_100B07670(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v4 = (*(v2 + 8 * (v1 + 12187)))(42);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((((v1 + 92) ^ (v4 == 0)) & 1) * ((v1 - 1210737892) & 0xFFFA9BD1 ^ 0xB7D083E0)) ^ v1)))();
}

uint64_t sub_100B07748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x870] = v7;
  v9 = STACK[0x8B0];
  STACK[0x430] = *(STACK[0x8B0] + 8 * v6);
  return (*(v9 + 8 * (v8 ^ v5 ^ ((v8 > 0x382B5E20) * (v8 ^ 0xC6242353)))))(a1, -3083895697, 0xB2823E14A03C0367, 54, a5, 0x7171C1A0366789E7, 0x5B59BDFF45E7179DLL, 0x277DC8E19F5CF592);
}

uint64_t sub_100B07C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = a8 ^ 0x7293u;
  STACK[0x630] = v12;
  v13 = v12 + (((1645 * v8 + 2113825) % 0xA88u) ^ 0xFEE7DDFFBD8C5EF8) + ((2 * ((1645 * v8 + 2113825) % 0xA88u)) & 0x1DF0) + STACK[0x638];
  v14 = *STACK[0x660];
  v15 = *v11;
  LODWORD(v12) = *(v14 + (v15 & STACK[0x648]));
  v16 = *v9;
  v17 = *v9 ^ v10;
  LODWORD(v13) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + 1114869808 + v12 - 963544004) & v17)) ^ *(v13 - 0x448B275BF6A989E5) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + 1114869808 + v12 - 963544002) & v17)) ^ (76 * (v13 + 48));
  v18 = STACK[0x640] + 4 * ((551 * (((v13 ^ 0xE94A1A04) - 1363084602) ^ ((v13 ^ 0x2FFEC6EE) + 1752442416) ^ ((v13 ^ 0xC6B4DC9A) - 2126627748)) + 70279701) % 0x1D48);
  LODWORD(v14) = *(v14 + (v15 & STACK[0x658]));
  v19 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v14 + 673210726) & v17)) ^ *(v18 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v14 + 673210728) & v17));
  LODWORD(v13) = 1645 * (((v19 ^ (6319 * v18)) >> 8) ^ 0x79) + 3391990;
  v20 = v13 - 2696 * (((12744711 * v13) >> 32) >> 3);
  v21 = (v20 ^ 0x767A77CFFFADB5ABLL) + STACK[0x638] + ((2 * v20) & 0xB56);
  v22 = 1645 * (((v19 ^ (333999 * v18)) >> 16) ^ 0x25) + 3391990;
  v23 = *(v21 + 0x43E23ED3C7353040);
  v24 = (1645 * (((((v19 ^ (-1962600273 * v18)) >> 24) ^ 0x51BF27DF) - 2113072970) ^ ((((v19 ^ (-1962600273 * v18)) >> 24) ^ 0x2052AD51) - 203384260) ^ ((((v19 ^ (-1962600273 * v18)) >> 24) ^ 0x71ED8A2D) - 1570783928)) - 1341963020) % 0xA88;
  v25 = v22 - 2696 * (((12744711 * v22) >> 32) >> 3);
  v26 = v21 + 5392981;
  v27 = (v25 ^ 0x77F67F7F2DFBD0FELL) + ((2 * v25) & 0x1FC) + STACK[0x638];
  LODWORD(v25) = (v25 ^ 0x2DFBD0FE) + ((2 * v25) & 0x1FC) + LODWORD(STACK[0x638]) - 771477758;
  v28 = *(v27 + 0x4266372498E714EDLL);
  LODWORD(v15) = 1645 * ((((v19 ^ (-81 * v18)) ^ 0x1B54838E) + 962033006) ^ (((v19 ^ (-81 * v18)) ^ 0x449CE206) + 1721701606) ^ (((v19 ^ (-81 * v18)) ^ 0x5FC86141) + 2110494627)) + 1824452519;
  v29 = (v24 ^ 0x3FBEFD51FDEEFFEALL) + STACK[0x638] + ((2 * v24) & 0x1FD4);
  LODWORD(v18) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 + v12 - 963544004) & v17)) ^ v23 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((0x6100CAA4DD8726CDLL * (v16 ^ 0xDB653AB621E69720) + 0x6100CAA4DD8726CDLL + (v26 + v12 - 963544002)) & (v16 ^ 0xDB653AB621E69720))) ^ (76 * v26);
  v30 = ((v15 % 0xA88) ^ 0xFCFA731CDFAEB2F2) + STACK[0x638] + ((2 * (v15 % 0xA88)) & 0x5E4);
  LODWORD(v27) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v29 + 34668566 + v12 - 963544004) & v17)) ^ *(v29 + 0x7A9DB951C8F3E601) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v29 + 34668566 + v12 - 963544002) & v17)) ^ (76 * (v29 + 22));
  LODWORD(v25) = (*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v25 + v12 - 963544004) & v17)) ^ v28 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v25 + v12 - 963544002) & v17)) ^ (76 * v25)) << 8;
  LODWORD(v30) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 542199054 + v12 - 963544004) & v17)) ^ *(v30 - 0x429DBC7918CBCD07) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 542199054 + v12 - 963544002) & v17)) ^ (76 * (v30 + 14));
  v31 = STACK[0x640] + 4 * (551 * (((2 * v8) & 0xA14) + (v8 ^ 0x50Au)) % 0x1D48);
  *(v31 - 0x34EE34220E8AC3B8) = (-1962600273 * v31) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v31 + 673210726) & v17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v31 + 673210728) & v17)) ^ 0x9E651F39 ^ ((((((((v27 << 16) ^ 0xCDB49F) & (v25 ^ 0xFF849F) | v25 & 0x4B00) ^ 0x6AF78) & (v18 ^ 0xFFFF9F) ^ v18 & 0x18) << 8) ^ 0x861B91B0) & (v30 ^ 0xFFFFFF80) | v30 & 0x4F);
  return (*(STACK[0x668] + 8 * ((46 * (v8 != 255)) ^ a8)))();
}

uint64_t sub_100B082AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v21 = a1 < v14;
  v22 = (*(a7 + 8 * ((v9 | ((v9 < 0x1B9880B4) << 32)) + 0x77DD02A8A7934034) + 0x4117EAB9E6A1F8C0) ^ 0xA9A9A9A9A9A9A9A9) * ((187 * a8) - 0x66D0A83C304EAD84);
  v23 = (v9 | ((v9 < 0x1B9880B4) << 32)) + 0x5478957DB3F2CB48 + (((v22 ^ a5 ^ 0x7A323062195CE12FLL) - 0x723DB386E9C2F13ELL) ^ ((v22 ^ a5 ^ 0x8F198411AC63899ALL) + 0x78E9F80AA3026675) ^ ((v22 ^ a5 ^ 0xF52BB473B53F68B5) + 0x2DBC868BA5E875CLL));
  v24 = (v23 ^ 0xAB86ED66B182D785) & (2 * (v23 & 0xB396EE672112C415)) ^ v23 & 0xB396EE672112C415;
  v25 = ((2 * (v23 ^ 0xAB8FA566B1A7DF8FLL)) ^ 0x30329603216A3734) & (v23 ^ 0xAB8FA566B1A7DF8FLL) ^ (2 * (v23 ^ 0xAB8FA566B1A7DF8FLL)) & v12;
  v26 = v25 ^ 0x80949009095088ALL;
  v27 = (v25 ^ 0x1010020100001010) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x60652C0642D46E68) & v26 ^ (4 * v26) & (v12 - 2);
  v29 = ((16 * (v28 ^ 0x1818430190211192)) ^ 0x8194B0190B51B9A0) & (v28 ^ 0x1818430190211192) ^ (16 * (v28 ^ 0x1818430190211192)) & (v12 - 10);
  v30 = (v29 ^ 0x10000100111900) & (((v28 ^ 0x1080000940A00) & (16 * v27) ^ v27) << 8) ^ (v28 ^ 0x1080000940A00) & (16 * v27) ^ v27;
  v31 = (((v29 ^ 0x18094B0090A4021ALL) << 8) ^ 0x194B0190B51B9A00) & (v29 ^ 0x18094B0090A4021ALL) ^ ((v29 ^ 0x18094B0090A4021ALL) << 8) & (v12 - 154);
  v32 = v30 ^ v12 ^ (v31 ^ 0x1809010090110000) & (v30 << 16);
  v33 = (v23 ^ (2 * ((v32 << 32) & a2 ^ v32 ^ ((v32 << 32) ^ 0x10B51B9A00000000) & (((v31 ^ 0x104A0100A4019ALL) << 16) & a2 ^ 0x10184B0000000000 ^ (((v31 ^ 0x104A0100A4019ALL) << 16) ^ 0x4B0190B500000000) & (v31 ^ 0x104A0100A4019ALL))))) >> 32;
  v34 = v23 - (((v33 ^ 0xC37C743138CC3E7CLL) + 0x227C1401DF882E90) ^ ((v33 ^ 0xFE517C8546BE84FLL) - 0x111A88074CD00743) ^ ((v33 ^ 0xCC9963F9CF21B857) + 0x2D9903C92865A8A5)) - 0x6B68B1689A2ABD53;
  v35 = v34 - (v34 >> 16) - ((v34 - (v34 >> 16)) >> 8);
  v36 = v35 + v13;
  v37 = ((v35 + v13) << 19) & 0x37FFEC6E00000;
  v38 = (v9 | ((v9 < 0x1B9880B4) << 32)) + 0x7428F53B16792E9ALL + ((((v35 + v18) ^ v22 ^ 0x781EB05B07789498) - 0x449EBCF4E4E266CELL) ^ (((v35 + v18) ^ v22 ^ 0x2601E3F13E12EE42) - 0x1A81EF5EDD881C14) ^ (((v35 + v18) ^ v22 ^ 0x5E1F53AA396A7ADALL) - 0x629F5F05DAF0888CLL));
  v39 = (((v38 ^ 0x585FAAAF8CA9D060) - 0x6FF74224C2DF6C98) ^ v38 ^ ((v38 ^ 0x63D99B7945420C0) - 0x3195713CDA229C38) ^ ((v38 ^ 0xDB3D306D6DF0B6A6) + 0x136A2719DC79F5A2) ^ ((v38 ^ 0xB2F7EBFE3B7BFAFELL) + 0x7AA0FC8A8AF2B9FALL)) >> 32;
  v40 = ((v37 ^ (v36 << 21)) >> 21) ^ a4;
  v41 = v38 - (((v39 ^ 0xC22AE5927F9CC626) + 0x2C051ECD192A074ELL) ^ ((v39 ^ 0xDA080C86B9FB2926) + 0x3427F7D9DF4DE84ELL) ^ ((v39 ^ 0x1822E914F1CF078BLL) - 0x9F2EDB46886391FLL)) - 0x4978ED2BFD589317;
  v42 = v41 - (v41 >> 16) - ((v41 - (v41 >> 16)) >> 8);
  LODWORD(v33) = v8 & ((v42 + v13) >> 2) ^ (v42 + v13);
  v43 = (v9 | ((v9 < 0x1B9880B4) << 32)) + 0x266217F2761395D8 + ((((v42 + v18) ^ v22 ^ 0x7A33B51A21676553) + 0x74E86946BB71F61CLL) ^ (((v42 + v18) ^ v22 ^ 0xFC19E22C727D7E9BLL) - 0xD3DC18F1794122CLL) ^ (((v42 + v18) ^ v22 ^ 0x862A5736531A1BC8) - 0x770E749536F3777FLL));
  v44 = (v43 ^ 0xC2B08BB0D5BD172BLL) & (2 * (v43 & 0xCAC20BB0D43D562BLL)) ^ v43 & 0xCAC20BB0D43D562BLL;
  v45 = ((2 * (v43 ^ 0x46B48DF07DE7B32FLL)) ^ 0x18ED0C8153B5CA08) & (v43 ^ 0x46B48DF07DE7B32FLL) ^ (2 * (v43 ^ 0x46B48DF07DE7B32FLL)) & v11;
  v46 = v45 ^ 0x84128240A84A2504;
  v47 = (v45 ^ 0x80004000190C000) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x31DA1902A76B9410) & v46 ^ (4 * v46) & v11;
  v49 = ((16 * (v48 ^ 0x8C24864008906104)) ^ 0xC768640A9DAE5040) & (v48 ^ 0x8C24864008906104) ^ (16 * (v48 ^ 0x8C24864008906104)) & (v11 - 4);
  v50 = (v49 ^ 0x84600400898A4000) & (((v48 ^ 0x520000A14A8400) & (16 * v47) ^ v47) << 8) ^ (v48 ^ 0x520000A14A8400) & (16 * v47) ^ v47;
  v51 = (((v49 ^ 0x81682402050A504) << 8) ^ 0x768640A9DAE50400) & (v49 ^ 0x81682402050A504) ^ ((v49 ^ 0x81682402050A504) << 8) & (v11 - 4);
  v52 = v40 ^ v33;
  v53 = v50 ^ v11 ^ (v51 ^ 0x406000088C00000) & (v50 << 16);
  v54 = (v43 ^ (2 * ((v53 << 32) & v20 ^ v53 ^ ((v53 << 32) ^ 0x29DAE50400000000) & (((v51 ^ 0x88708640211AE104) << 16) & v20 ^ 0x836060000000000 ^ (((v51 ^ 0x88708640211AE104) << 16) ^ 0x640A9DA00000000) & (v51 ^ 0x88708640211AE104))))) >> 32;
  v55 = v43 - (((v54 ^ 0x3C8F243C42C8CFCCLL) - 0x2ADFC4726ACDC854) ^ ((v54 ^ 0x15D056EB791CBF75) - 0x380B6A55119B8EDLL) ^ ((v54 ^ v10) + v17)) + v15;
  v56 = v55 - (v55 >> 16) - ((v55 - (v55 >> 16)) >> 8);
  if (v21 == v9 + v16 < v14)
  {
    v21 = v9 + v16 < a1;
  }

  return (*(*(v19 - 120) + 8 * (*(v19 - 136) | (8 * !v21))))(a1, a2, v9 + v16 < a1, v52 ^ v8 & ((v56 + v13) >> 2) ^ (v56 + v13));
}

uint64_t sub_100B08C00(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  STACK[0x4F0] = *(a12 + a2 - 8);
  v35.i64[0] = a12 + a2 - 7;
  v35.i64[1] = a12 + a2 - 8;
  v36.i64[0] = a12 + a2 - 5;
  v36.i64[1] = a12 + a2 - 6;
  v37.i64[0] = a12 + a2 - 3;
  v38 = STACK[0x540];
  v37.i64[1] = a12 + a2 - 4;
  v39.i64[0] = a12 + a2 - 1;
  v39.i64[1] = a12 + a2 + (v16 ^ a13);
  v40 = vandq_s8(v39, v20);
  v41 = vandq_s8(v37, v20);
  v42 = vandq_s8(v36, v20);
  v43 = vandq_s8(v35, v20);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v19);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v19);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v19);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v19);
  v48 = vsubq_s64(vorrq_s8(v45, a9), vorrq_s8(v45, a7));
  v49 = vsubq_s64(vorrq_s8(v46, a9), vorrq_s8(v46, a7));
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a9), vorrq_s8(v47, a7)), a7);
  v51 = vaddq_s64(v49, a7);
  v52 = veorq_s8(v51, v21);
  v53 = veorq_s8(v50, v21);
  v54 = veorq_s8(v50, a10);
  v55 = veorq_s8(v51, a10);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), v22);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), v22);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v57);
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v23);
  v64 = veorq_s8(v62, v23);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), v24);
  v71 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v72 = veorq_s8(v69, v24);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = veorq_s8(v70, v71);
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = vaddq_s64(v75, v73);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v26), vorrq_s8(v76, v25)), v25), v27);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, v26), vorrq_s8(v77, v25)), v25), v27);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), v28), v83), v29), v30);
  v85 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), v28), v82), v29), v30);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v85);
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = vaddq_s64(v89, v87);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), v31)), v32), v33);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(v90, vandq_s8(vaddq_s64(v90, v90), v31)), v32), v33);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v96 = veorq_s8(v92, v93);
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v99 = vaddq_s64(v48, a7);
  v100 = veorq_s8(vaddq_s64(v97, v95), a8);
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v98, v96), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v18)));
  v139.val[2] = vshlq_u64(v100, vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v18)));
  v101 = veorq_s8(v99, v21);
  v102 = veorq_s8(v99, a10);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v22);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v23);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v24);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v26), vorrq_s8(v109, v25)), v25), v27);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v28), v112), v29), v30);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), v31)), v32), v33);
  v117 = vaddq_s64(vsubq_s64(vorrq_s8(v44, a9), vorrq_s8(v44, a7)), a7);
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v18)));
  v118 = veorq_s8(v117, v21);
  v119 = veorq_s8(v117, a10);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v22);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v23);
  v123 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = veorq_s8(v122, v123);
  v126 = veorq_s8(vaddq_s64(v124, v125), v24);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v26), vorrq_s8(v128, v25)), v25), v27);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = veorq_s8(v129, v130);
  v133 = vaddq_s64(v131, v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), v28), v133), v29), v30);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v31)), v32), v33);
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v18)));
  *(a14 + a2) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(STACK[0x4F0]), 0xF0F0F0F0F0F0F0FLL), *&vqtbl4q_s8(v139, v34)));
  return (*(v38 + 8 * (((v17 == a2) * a15) ^ v15)))(a1, a2 - 8);
}

uint64_t sub_100B09114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = LODWORD(STACK[0x270]) + 2120246621;
  v69 = STACK[0x540];
  LODWORD(STACK[0x260]) = v68;
  v70 = *(v69 + 8 * v68);
  STACK[0x250] = 16 - (v67 & 0xFFFFFFF0);
  v71 = a1 + a4 + v62 + v67;
  STACK[0x240] = v71 + 0x2A3230844003B307;
  STACK[0x230] = v63 + v67 - 28292;
  STACK[0x220] = v71 + 0x2A3230844004217BLL;
  STACK[0x210] = v71 + 0x2A3230844004217CLL;
  STACK[0x200] = v71 + 0x2A3230844004217DLL;
  return v70(a1, a2, v66, 0x123497575FC7277DLL, v64, v65, a6, 0x90224A555BCB4C3CLL, a9, a10, a11, v67 & 0xFFFFFFF0, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v71 + 0x2A32308440042189, v71 + 0x2A3230844004218ALL, a48, v71 + 0x2A32308440042188, a50, v71 + 0x2A32308440042187, a52, a53, a54, a55, a56, v71 + 0x2A32308440042186, a58, v71 + 0x2A32308440042184, a60, v71 + 0x2A32308440042183, a62, v71 + 0x2A32308440042182);
}

uint64_t sub_100B093E4(uint64_t a1)
{
  v4 = 1089234077 * ((((v3 - 240) | 0x5D9FA01F9B071F78) - ((v3 - 240) & 0x5D9FA01F9B071F78)) ^ 0x43BB3C7B5AC300);
  STACK[0x25D8] = v4 - 0x154833A2A5760706;
  *(v3 - 208) = (v1 - 1117895228) ^ v4;
  STACK[0x25D0] = (((2 * a1) & 0x2E) - 0x400149400811035 + (a1 & 0x1F ^ 0x555F5ED5AFFFB1FBLL ^ (v1 + 3426))) ^ v4;
  (*(v2 + 8 * (v1 ^ 0x5EE4)))(v3 - 240);
  v5 = (*(v2 + 8 * (v1 + 23086)))(STACK[0x4D0], STACK[0x25E0], STACK[0x25E8], STACK[0x530]);
  return (*(v2 + 8 * v1))(v5);
}

uint64_t sub_100B095C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t *a27)
{
  v34 = 0;
  v35 = *(*v31 + (*STACK[0x4B8] & (v30 - 1))) ^ v30;
  v36 = *(v29 + 2792) ^ 0x722E09814B3EBE59;
  v37 = *(v36 + (v35 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v35;
  v38 = *(v36 + (v37 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v37;
  v39 = *(v36 + (v38 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v38;
  v40 = *(v36 + (v39 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v39;
  v41 = *(v36 + (v40 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v40;
  v42 = *(v36 + (v41 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v41;
  v43 = *(v36 + (v42 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v42;
  v44 = *(v36 + (v43 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v43;
  STACK[0x21E0] = 0;
  STACK[0x21E8] = v27;
  v45 = ((v44 * v30 + 7) ^ (v44 * v30)) * v28 % 7;
  v46 = ((v44 * v30 + 6) ^ (v44 * v30)) * v28 % 6;
  v47 = ((v44 * v30 + 5) ^ (v44 * v30)) * v28 % 5;
  v48 = *(&STACK[0x21E0] | v45);
  *(&STACK[0x21E0] | v45) = STACK[0x21E7];
  v49 = *(&STACK[0x21E0] | v46);
  *(&STACK[0x21E0] | v46) = STACK[0x21E6];
  v50 = *(&STACK[0x21E0] | v47);
  *(&STACK[0x21E0] | v47) = STACK[0x21E5];
  v51 = ((v44 * v30 + 3) ^ (v44 * v30)) * v28 % 3;
  v52 = vdup_n_s32(v44 * v30);
  v53.i32[0] = v52.i32[0];
  v53.i32[1] = v44 * v30 + 1;
  LOBYTE(STACK[0x21E7]) = v48;
  v54 = veor_s8(vmul_s32(v53, v52), v52);
  LOBYTE(STACK[0x21E6]) = v49;
  LOBYTE(STACK[0x21E5]) = v50;
  v55 = STACK[0x21E0];
  LOBYTE(STACK[0x21E0]) = STACK[0x21E4];
  LOBYTE(STACK[0x21E4]) = v55;
  v56 = *(&STACK[0x21E0] | v51);
  *(&STACK[0x21E0] | v51) = STACK[0x21E3];
  LOBYTE(STACK[0x21E3]) = v56;
  v57 = STACK[0x21E1];
  LOBYTE(STACK[0x21E2]) = STACK[0x21E0];
  LOWORD(STACK[0x21E0]) = v57;
  STACK[0x21E0] = vmla_s32(v54, STACK[0x21E0], vdup_n_s32(0x1000193u));
  v58 = STACK[0x21E8];
  v59 = (STACK[0x21E8] * v30) ^ v44;
  v60 = vdupq_n_s32(v59);
  v61 = xmmword_1012370F0;
  v62 = xmmword_101237100;
  v63 = xmmword_101237110;
  v64 = xmmword_101237120;
  v65.i64[0] = 0x9393939393939393;
  v65.i64[1] = 0x9393939393939393;
  v66.i64[0] = 0x1000000010;
  v66.i64[1] = 0x1000000010;
  do
  {
    v67 = *(v58 + v34);
    v80.val[1] = veorq_s8(vqtbl1q_s8(v67, xmmword_101237140), veorq_s8(v60, vmulq_s32(vaddq_s32(v63, v60), vsubq_s32(v63, v60))));
    v80.val[0] = veorq_s8(vqtbl1q_s8(v67, xmmword_101237150), veorq_s8(v60, vmulq_s32(vaddq_s32(v64, v60), vsubq_s32(v64, v60))));
    v80.val[2] = veorq_s8(vqtbl1q_s8(v67, xmmword_101237160), veorq_s8(v60, vmulq_s32(vaddq_s32(v62, v60), vsubq_s32(v62, v60))));
    v80.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v67, xmmword_101237170), v60), vmulq_s32(vaddq_s32(v61, v60), vsubq_s32(v61, v60)));
    *(v58 + v34) = vmulq_s8(vqtbl4q_s8(v80, xmmword_101237130), v65);
    v34 += 16;
    v64 = vaddq_s32(v64, v66);
    v63 = vaddq_s32(v63, v66);
    v62 = vaddq_s32(v62, v66);
    v61 = vaddq_s32(v61, v66);
  }

  while (v34 != 32);
  v68 = 3;
  do
  {
    v69 = ((v59 + v68) ^ v59) * v28 % v68;
    v70 = *(v58 + 8 * v69) ^ *(v58 + 8 * v68);
    *(v58 + 8 * v68) = v70;
    v71 = *(v58 + 8 * v69) ^ v70;
    *(v58 + 8 * v69) = v71;
    *(v58 + 8 * v68) ^= v71;
    v72 = v68-- + 1;
  }

  while (v72 > 2);
  v73 = *(&STACK[0x21E8] + v45);
  *(&STACK[0x21E8] + v45) = STACK[0x21EF];
  LOBYTE(STACK[0x21EF]) = v73;
  v74 = *(&STACK[0x21E8] + v46);
  *(&STACK[0x21E8] + v46) = STACK[0x21EE];
  LOBYTE(STACK[0x21EE]) = v74;
  v75 = *(&STACK[0x21E8] + v47);
  *(&STACK[0x21E8] + v47) = STACK[0x21ED];
  LOBYTE(STACK[0x21ED]) = v75;
  v76 = STACK[0x21E8];
  LOBYTE(STACK[0x21E8]) = STACK[0x21EC];
  LOBYTE(STACK[0x21EC]) = v76;
  v77 = *(&STACK[0x21E8] + v51);
  *(&STACK[0x21E8] + v51) = STACK[0x21EB];
  LOBYTE(STACK[0x21EB]) = v77;
  v78 = STACK[0x21E9];
  LOBYTE(STACK[0x21EA]) = STACK[0x21E8];
  LOWORD(STACK[0x21E8]) = v78;
  STACK[0x21E8] = vmla_s32(v54, STACK[0x21E8], vdup_n_s32(0x1000193u));
  *a27 = STACK[0x21E8] ^ STACK[0x21E0];
  return (*(v33 + 8 * (v32 - 25519)))();
}

uint64_t sub_100B099F8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xD14]) = v3;
  LODWORD(STACK[0x104C]) = v3;
  STACK[0x8D0] = 0;
  LODWORD(STACK[0x10B4]) = 0;
  STACK[0x1730] = 0;
  LODWORD(STACK[0xA34]) = 1280;
  v5 = &STACK[0x1D80] + STACK[0xAB0];
  STACK[0xAB0] += 128;
  STACK[0x11D0] = 0;
  LODWORD(STACK[0xD7C]) = v3;
  STACK[0xE00] = v2;
  *v5 = 0x1D8A118EDE6D14DLL;
  *(v5 + 2) = 0;
  *(v5 + 2) = 0;
  *(v5 + 6) = 1414217035;
  *(v5 + 28) = 0x800000002;
  *(v5 + 9) = 1;
  *(v5 + 5) = 0;
  *(v5 + 12) = -1055333906;
  *(v5 + 7) = 0;
  *(v5 + 16) = 1768711563;
  *(v5 + 68) = 0x400000001;
  *(v5 + 19) = 2;
  *(v5 + 22) = ((a1 ^ 0x1A2B) + 786501533) ^ v1;
  *(v5 + 12) = 0;
  *(v5 + 13) = 0x1C81CC4C3;
  *(v5 + 28) = 4;
  LODWORD(STACK[0x408]) = 3;
  STACK[0x418] = &STACK[0xE00];
  STACK[0x4C0] = v5;
  *(v5 + 10) = 0;
  return (*(v4 + 8 * (a1 + 14864)))();
}

uint64_t sub_100B09C24@<X0>(int a1@<W8>)
{
  v4 = v2 + a1 + 88;
  *(v3 - 232) = a1 - 16169987 * ((((2 * (v3 - 240)) | 0xB49B6C96) - (v3 - 240) - 1515042379) ^ 0xFC38363) - 395422282;
  v5 = (*(v1 + 8 * (a1 ^ 0xB7D0FFF4)))(v3 - 240);
  return (*(v1 + 8 * v4))(v5);
}

uint64_t sub_100B09DAC()
{
  LODWORD(STACK[0x820]) = 0;
  v2 = *(STACK[0x718] + 14);
  v3 = STACK[0x718];
  v4 = STACK[0x678];
  v5 = *(STACK[0x678] + 53);
  STACK[0x7E0] = v5;
  v6 = STACK[0x670];
  v7 = *(STACK[0x670] + 71);
  v8 = *(v4 + 41);
  v9 = STACK[0x708];
  v10 = *(STACK[0x708] + 118);
  v11 = v4;
  v12 = *(v4 + 22) + 0x22481ADCEB3141AALL - ((2 * *(v4 + 22)) & 0x5555);
  v13 = *(*(&off_101353600 + v1 + 1211072363) + (v12 ^ 0x22481ADCEB3141AALL));
  v14 = *(&off_101353600 + v1 + 1211072363);
  v2 -= 125;
  v15 = v2 & 0xF9 ^ 0x39;
  v16 = (v2 ^ 6) & (2 * ((v2 ^ 6) & (2 * ((v2 ^ 6) & (2 * ((v2 ^ 6) & (2 * ((v2 ^ 6) & (2 * ((((2 * (v2 & 7)) ^ 0x7E) & 6 | v15) ^ ((2 * (v2 & 7)) ^ 0x7E) & v2)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15;
  v17 = v3;
  v18 = *(v3 + 34);
  v19 = v8 - 2 * (v8 & 0x1F) - 0x15111765D9F862E1;
  v20 = ((((v5 - ((2 * v5) & 0x13C)) << 8) - 0x13F437002EFA6200) ^ 0x78E14775CBE18EDELL) & (v19 ^ 0x15111765D9F862E0);
  v21 = *(STACK[0x670] + 10);
  v22 = v11[49];
  v23 = v12 << 16;
  v24 = v17[36];
  v25 = ((*(STACK[0x670] + 57) - ((2 * *(STACK[0x670] + 57)) & 0xFFEFu) + 21) << 56) - 0x1E00000000000000;
  v26 = v2 ^ (2 * v16) ^ 0x3F;
  v27 = ((*(STACK[0x708] + 108) - ((2 * *(STACK[0x708] + 108)) & 0x1Cu) + 5917) << 48) - 0xF000000000000;
  v28 = 2 * ((v13 & v10) - ((2 * (v13 & v10)) & 0x50)) + 80;
  v29 = (v23 ^ 0xE52314CEBE55FFFFLL) & (v19 & 0x400020010F21 ^ 0xD79519BD51A8F48ELL ^ v20) ^ v23 & 0x1880290014B20000;
  STACK[0x7B0] = v14 + 3;
  v30 = v14;
  LODWORD(v20) = *(v14 + 3 + v26);
  v31 = v11[25] - ((2 * v11[25]) & 0x1D0) - 0x1A84676EE6748818;
  v32 = v10 + v13 - (((v28 ^ 0x85) - 35) ^ ((v28 ^ 0xA7) - 1) ^ ((v28 ^ 0x72) + 44)) + 104;
  v33 = v32 & 0x6C ^ 0xE5;
  v34 = v29 & 0x5E60A89680CF2578 ^ 0xFBFFFF7F7FFFFBD7 ^ (v29 ^ 0xA000004894101286) & ((((v18 + (~(2 * v18) | 0xFFFFFFFEB3)) << 24) - 0x693496C559000000) ^ 0x37543E53D930DA87);
  v35 = (v13 ^ v32 ^ (2 * ((v32 ^ 0x22) & (2 * ((v32 ^ 0x22) & (2 * ((v32 ^ 0x22) & (2 * ((v32 ^ 0x22) & (2 * (((2 * v32) & 0x44 ^ 0x4E) & (v32 ^ 2) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x6Cu;
  v36 = v34 + (v35 << 32) - 2 * ((v34 + (v35 << 32)) & 0x657F8CAA2158AFBFLL ^ v34 & 4) - 0x1A807355DEA75045;
  v37 = (((v24 - ((2 * v24) & 0x40u) + 5451044) << 40) - 0x40000000000) ^ 0xB652ACAA2158AFBBLL ^ v36;
  v38 = ((v22 + (~(2 * v22) | 0xFFFFFFFFFFFFFF0FLL)) << 24) + 0x1B54F41F79000000;
  v39 = (v37 - ((2 * v37) & 0x37C6CC7507C7D310) + 0x5BE3663A83E3E988) ^ v27;
  v40 = v39 ^ 0x4CED663A83E3E988;
  v41 = v39 & 0x90128A0597F501D4 ^ 0x6FED77FAEBEBFFABLL ^ (v39 ^ 0xB30011C068081623) & (v25 ^ 0x98ED75FA680AFE2BLL);
  LODWORD(v39) = v6[64];
  v42 = v25 ^ 0x6FFF58C4752F97C1 ^ (v40 - 2 * (v40 & 0x18FF58C4752F97C5 ^ v36 & 4) - 0x6700A73B8AD0683FLL);
  LODWORD(v36) = v11[60];
  LODWORD(v37) = v6[27];
  STACK[0x7A0] = v42 + v41 - 2 * v42;
  LOBYTE(v23) = (((v20 >> 1) | (v20 << 7)) - (v20 & 0xF6) - 5) ^ 0xDE;
  v43 = ((v36 - ((2 * v36) & 0xFFFFFF87) + 9080042) << 40) - 0x270000000000;
  v44 = v23 << 16;
  v45 = (103 * ((((2 * v7) & 0x80 ^ 0xAA) + 33) ^ (((2 * v7) & 0x80) - 107) ^ (((2 * v7) & 0x80 ^ 0xA5) + 48)) + 19) & v7;
  v46 = v45 + ((2 * v45) & 0x80) + 64;
  LOBYTE(v29) = (((v46 ^ 0xA7) + 89) ^ v46 ^ ((v46 ^ 0xE7) + 25)) + (((((2 * v7) | 0x7E) ^ v7 ^ 0x6B) - 3) ^ ((((2 * v7) | 0x7E) ^ v7 ^ 0x36) - 94) ^ ((((2 * v7) | 0x7E) ^ v7 ^ 0x63) - 11));
  LOBYTE(v23) = v29 - 18;
  LOBYTE(v29) = ((v29 + 110) & 0xA8 | 0x54) ^ (v29 - 18) & 0xF8;
  LOBYTE(v23) = v23 ^ (2 * ((v23 ^ 0x20) & (2 * ((v23 ^ 0x28) & (2 * ((v23 ^ 0x28) & (2 * ((v23 ^ 0x28) & (2 * ((v23 ^ 0x28) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  v47 = v11[68] - ((2 * v11[68]) & 0xC8);
  v48 = v6[60];
  v49 = (v31 & 0x80842E4 ^ 0xC328B9C451F2B6AELL ^ (v31 ^ 0x1A84676EE6748813) & ((((v21 - ((2 * v21) & 0xD8)) << 8) - 0x5193049F19D9400) ^ 0xD98313093BF7711BLL)) & ~v44 ^ (v44 | 0xE04D657B6C6FE955);
  STACK[0x7F0] = v14;
  STACK[0x880] = v14 + 791;
  LODWORD(v23) = *(v14 + 791 + (v7 & 0x26 ^ (v46 ^ 0x98 ^ v23 & 0xC1) & (~v7 | 0xC1u) ^ 0xF9));
  v50 = v9[34] - ((2 * v9[34]) & 0x14) + 0x242B78D3D37EFA0ALL;
  v51 = ((v37 - ((2 * v37) & 0x188) - 1305041978) << 32) - 0x200000000;
  v52 = ((v39 - ((2 * v39) & 0xFFFFFFE3) + 1327878942) << 32) - 0x2D00000000;
  v53 = (v51 ^ 0x8810C3BFF2EE643) & (v38 ^ 0x33F35E412A2EE643) ^ v51 & 0x921055A100000000;
  LODWORD(v39) = ((v23 >> 5) & 1 | 0x5C) ^ ((v23 >> 5) | (8 * v23)) & 0x7FE ^ 0x1E;
  v54 = v53 & 0x5476A3876A008440 ^ 0xBBBFFFFED73FF65FLL ^ (v53 ^ 0x454854208511101CLL) & (v43 ^ 0x21059F78953F721FLL) | v49;
  v55 = v11;
  v56 = v6[96];
  v57 = ((((v6[2] - ((2 * v6[2]) & 0x42)) << 8) + 0x58383A5873712100) ^ 0x779EB8154772C349) & (v50 ^ 0xDBD4872C2C810557) ^ v50 & 0x82000C22C09B6;
  v58 = ((v39 >> 3) | (32 * v39)) ^ ((((v39 >> 3) | (32 * v39)) ^ 0xC3) >> 3) ^ ((((v39 >> 3) | (32 * v39)) ^ 0xC3) >> 1);
  v59 = ((v17[22] - ((2 * v17[22]) & 0x1C)) << 8) - 0x23E132EBC611F200;
  LODWORD(v43) = v6[29];
  v60 = (v57 ^ 0xD0515DB209D01494) & ((((v48 - ((2 * v48) & 0xFFFFFFFFFFFFFF07)) << 16) - 0x31C27E970D7D0000) ^ 0xF8EAEE6325843EDFLL) ^ v57 & 0xC92890F428F8C120;
  v61 = (v60 ^ 0xC00010B008000100) & ((((v11[40] - ((2 * v11[40]) & 0x6A)) << 24) - 0x410E5A6DCB000000) ^ 0x374ED28BE42DC18CLL) ^ v60 & 0x764088E62ED23E73;
  v62 = v61 & 0x3BB027E7C5956B21 ^ 0xFFFFFF5FFF6FFFDFLL ^ (v61 ^ 0x400000A008400000) & (v52 ^ 0x8B6A0AE93A6A94DELL);
  LOBYTE(v23) = v11[67] + 85;
  LOBYTE(v52) = v23 & 0x94 ^ 0x32;
  LOBYTE(v57) = (v23 ^ 0x30) & (2 * ((v23 ^ 0x30) & (2 * ((v23 ^ 0x30) & (2 * ((v23 ^ 0x30) & (2 * (v23 & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52;
  v63 = v7 == 64;
  LODWORD(v14) = v6[40];
  v64 = ((((v6[59] - ((2 * v6[59]) & 0x196)) << 16) + 0x6EFA855058CB0000) ^ 0x550D796444401C0) & (v59 ^ 0x23E132EBC61179EBLL);
  v65 = ((v6[28] - ((2 * v6[28]) & 0x2Au) + 11860267) << 40) - 0x160000000000;
  v66 = v17[39] - ((2 * v17[39]) & 0x4E);
  STACK[0x7D0] = v30 + 534;
  v67 = *(v30 + 534 + ((v23 ^ (2 * v57)) ^ 0xD4u));
  v68 = v43 - ((2 * v43) & 0x11111111);
  v69 = v56 - ((2 * v56) & 0xDA);
  v70 = v65 ^ 0xC33AD95987436B3FLL ^ (v62 - ((2 * v62) & 0x6F8798B30E86D67ELL) + 0x77C3CC5987436B3FLL);
  v71 = v14 - ((2 * v14) & 0x64);
  v72 = 25 * v67 - 118;
  LOBYTE(v57) = v72 & 0xE4 ^ 0xDB;
  v73 = -v62;
  v74 = (117 - 25 * v67) & (2 * ((v72 ^ 0x76) & (2 * ((v72 ^ 0x76) & (2 * ((v72 ^ 0x76) & (2 * ((v72 ^ 0x76) & (2 * ((v72 ^ 0x76) & 0x12 ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57;
  v75 = v9[44] - ((2 * v9[44]) & 0xDA);
  v76 = -v62 ^ 0x622B14A5CBC599FLL;
  if (v63)
  {
    v76 = 0xF9DD4EB5A343A660;
  }

  v77 = v76 & v73;
  v78 = v65 ^ 0xB4F9150000000000;
  v79 = v77 ^ ((v62 ^ v73) & 0x622B14A5CBC599FLL | v62 & 0x79DD4EB5A343A660) ^ (v78 - v70);
  v80 = v72 ^ ~(2 * v74);
  v81 = v55[24] - ((2 * v55[24]) & 0x112);
  v82 = v6[74] - ((2 * v6[74]) & 0xC4);
  LODWORD(STACK[0x810]) = 1432735940;
  v83 = (v82 + 0x2282FEC3A3B90E62) & 0x20230000000037CLL ^ (((v0 - 1432735940) | (1432735940 - v0)) < 0) ^ (v59 & 0x94148D102160FE00 ^ 0xD777163EE2C4E343 ^ v64) & ((v82 + 0x2282FEC3A3B90E62) ^ 0xDD7D013C5C46F19DLL);
  v84 = 50 * v67 + 42;
  v85 = v84 & 0x14 | 0x23;
  LOBYTE(v82) = (v84 ^ 0x56) & (2 * ((v84 ^ 0x56) & (2 * ((v84 ^ 0x56) & (2 * ((v84 ^ 0x56) & (2 * ((v84 ^ 0x56) & (2 * (v85 ^ (-50 * v67) & 2)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85;
  v86 = STACK[0x780] & 0xFDF47F9F;
  LODWORD(STACK[0x800]) = v86;
  v87 = ((v68 + 16306) << 48) - 0x2A000000000000;
  LOBYTE(v82) = v84 ^ (2 * v82);
  v88 = ((v75 + 155) << 56) - 0x2E00000000000000;
  LOBYTE(v82) = v82 & 0xFE | (v80 < 0);
  v89 = v79 + v78;
  v90 = (v79 + v78) & 0x67B11C5BFA2F927ELL ^ v79 & 0x1C;
  LOBYTE(v78) = v55[48];
  v91 = v55;
  v92 = v83 & 0x5C739C0D5304A1FDLL ^ 0xABCFFBFAFFFBFEE3 ^ (v83 ^ 0xD534061720D01000) & (((v81 << 24) - 0x249BA5AB77000000) ^ 0x78E839A625FB5E02);
  v93 = (v87 ^ 0xD8391C5BFA2F9262 ^ (v89 - 2 * v90 - 0x184EE3A405D06D9ELL)) - ((2 * (v87 ^ 0xD8391C5BFA2F9262 ^ (v89 - 2 * v90 - 0x184EE3A405D06D9ELL))) & 0xD87A84C2CB6FBAAALL);
  v94 = v9[20] + 7687610 - ((2 * v9[20]) & 0x13Cu);
  v95 = (((v9[88] - ((2 * v9[88]) & 0x48u) + 5644873) << 40) - 0x250000000000) ^ 0x71FE5EE31480AE84 ^ (v92 + ((v82 ^ 0x50u) << 32) + 0x27DC7AE31480AE84 - 2 * ((v92 + ((v82 ^ 0x50u) << 32)) & 0x27DC7AE31480AEB5 ^ v92 & 0x31));
  v96 = (((v9[90] - ((2 * v9[90]) & 0x3Au) + 63522) << 48) - 0x5000000000000) ^ 0xFBB2659A181C2FC9 ^ (v95 + 0x3AF659A181C2FC9 - 2 * (v95 & 0x3AF659A181C2FDBLL ^ (v92 - 124 - 2 * (v92 & 0xB5 ^ v92 & 0x31)) & 0x12));
  LOBYTE(v95) = (2 * v78) & 0x14;
  LODWORD(v89) = *v6 - ((2 * *v6) & 0x6C);
  LOBYTE(v81) = v95 & v78;
  LOBYTE(v78) = v95 ^ v78;
  LODWORD(v92) = v6[38] - ((2 * v6[38]) & 0xFFBF);
  v97 = (v96 - ((2 * v96) & 0x6FEDC3D4BB1984C8) - 0x8091E15A2733D9CLL) ^ v88;
  LOBYTE(v96) = (((2 * v81) ^ 0x62) + 74) ^ (2 * v81 - 52) ^ (((2 * v81) ^ 0xB1) - 101);
  LODWORD(v81) = *(*STACK[0x710] + 4);
  v98 = v81 ^ 0xBF;
  v99 = ((v81 << (v86 - 22)) & 0xD5FDAF7E) + (v81 ^ 0xEAFED7BF) + 352397377;
  STACK[0x7C0] = v99;
  v100 = v54 & 0x15122D71E167D8E6 ^ v99 ^ ((((v47 + 33684) << 48) - 0x30000000000000) ^ 0x6989D28E1E982719) & ~v54 ^ ((117 * (v58 ^ 0xABu)) << 56);
  v101 = STACK[0x7B0];
  LODWORD(v78) = *(STACK[0x7B0] + (((((v78 ^ 0xF1) - 104) ^ ((v78 ^ 0x74) + 19) ^ ((v78 ^ 0x8F) - 22)) + v96 + 103) ^ 0xC6));
  v102 = ((v69 << 16) - 0x238799A534930000) & 0x8C084648C17B0000 ^ 0xDCF8E7DEFFED02A2 ^ ((v66 + 0x1CA4F0DA63B94427) & 0x200010228005D0 ^ 0xEC13B9C04133B48DLL ^ ((((v6[39] - ((2 * v6[39]) & 0xFF7F)) << 8) + 0x4E279E74DC2ABF00) ^ 0xF2E48632811D0D2FLL) & ((v66 + 0x1CA4F0DA63B94427) ^ 0xE35B0F259C46BB18)) & (((v69 << 16) - 0x238799A534930000) ^ 0x238799A53492FFFFLL);
  v103 = (((v71 + 213) << 56) - 0x2300000000000000) ^ (v93 - 0x13C2BD9E9A4822ABLL) ^ v100;
  v104 = ((v78 >> 1) | (v78 << 7)) - ((2 * ((v78 >> 1) | (v78 << 7))) & 0xFFB2) - 39;
  HIDWORD(v105) = ~((v104 >> 7) & 1 | (2 * (v104 ^ 0x7B)));
  LODWORD(v105) = (v104 ^ 0x7B) << 25;
  v106 = v100 ^ 0xC416DB095E8F0EC5;
  v107 = (v97 ^ 0xD58BE29589750165) & (v103 ^ 0xD4D430787942FAADLL);
  v108 = v102 + (((v105 >> 25) ^ 7u) << 24);
  v109 = v103 ^ 0x2B2BCF8786BD0552;
  v110 = ~(2 * (v97 ^ 0xD58BE29589750165)) + (v97 ^ 0xD58BE29589750165);
  v111 = (v108 | 0xDEEA5C056ECD8385) ^ ((((v92 + 1196686365) << 32) - 0x3E00000000) ^ 0x99B9A7DA6ECD8385) & ~v108;
  v112 = ((v94 << 40) - 0x1C0000000000) ^ (((v89 + 72) << 56) - 0x1200000000000000) & 0x2A00000000000000 ^ ((((v89 + 72) << 56) - 0x1200000000000000) ^ 0xC9FF622ADEF556B5) & ((((v55[78] - ((2 * v55[78]) & 0x164u) + 11476) << 48) - 0x22000000000000) ^ 0xF91F622ADEF556B5) ^ 0x3AF9B9604CF83403 ^ (v111 - ((2 * v111) & 0x70328A95241AC56CLL) - 0x47E6BAB56DF29D4ALL);
  LODWORD(v89) = v107 ^ v100 ^ 0x5E8F0EC5;
  v113 = STACK[0x7A0] ^ v41 ^ v112;
  v114 = v113 ^ v109 & (v100 ^ 0x3BE924F6A170F13ALL);
  v115 = (v107 ^ v100 ^ 0xC416DB095E8F0EC5) & 0xFFFFFFFFFFDFFFFFLL;
  v116 = v97 ^ v112;
  v117 = v116 ^ 0x2D21AA707856C612;
  v118 = v116 ^ 0xD2DE558F87A939EDLL;
  v119 = (v113 ^ 0x67F5C18C7AA3AAE3) & v106;
  v120 = v89 & 0x200000;
  if (STACK[0x7E0])
  {
    v121 = (v110 ^ -v110 ^ (v118 - (v118 ^ v110))) + v118;
  }

  else
  {
    v121 = v117;
  }

  v122 = v118 & (v113 ^ 0x980A3E73855C551CLL);
  v123 = v121 & v110 ^ v109;
  v124 = __ROR8__(v117 ^ v119, 9) ^ 0x7F65D70B897E754ALL;
  if ((v120 & v114) != 0)
  {
    v125 = -v120;
  }

  else
  {
    v125 = v120;
  }

  v126 = v123 ^ 0x6E807D10291F7139;
  v127 = __ROR8__(v124, 55);
  v128 = (v125 + (v114 ^ 0x980A3E73855C551CLL)) ^ v115;
  v129 = v114 ^ 0x308EFF0999A50632 ^ v127;
  v130 = v97 ^ v122 ^ 0x930E664067B08317 ^ v123;
  v131 = v130 << 54;
  *(&v132 + 1) = v128 ^ 0x1829DBD49149AC6DLL;
  *&v132 = v128;
  v133 = (v132 >> 61) ^ v128 ^ 0x1829DBD49149AC6DLL ^ ((v128 ^ 0x1829DBD49149AC6DLL) >> 39) ^ ((v128 ^ 0x1829DBD49149AC6DLL) << 25);
  *(&v132 + 1) = v127 ^ 0x4CB9C8F05F5B770CLL;
  *&v132 = v127;
  v134 = (v132 >> 41) ^ 0x265CE4 ^ ((((v127 ^ 0x4CB9C8F05F5B770CLL) << 57) ^ (0xFE00000000000000 * (v127 ^ 0x4CB9C8F05F5B770CLL)) ^ ((v127 ^ 0x4CB9C8F05F5B770CLL ^ ((v127 ^ 0x4CB9C8F05F5B770CuLL) >> 7)) - (v127 ^ 0x4CB9C8F05F5B770CLL ^ ((v127 ^ 0x4CB9C8F05F5B770CuLL) >> 7) ^ ((v127 ^ 0x4CB9C8F05F5B770CLL) << 57)))) + (v127 ^ 0x4CB9C8F05F5B770CLL ^ ((v127 ^ 0x4CB9C8F05F5B770CuLL) >> 7)));
  v135 = v129 ^ __ROR8__(v129, 28) ^ __ROR8__(v129, 19) ^ v134;
  v136 = v126 ^ __ROR8__(v126, 1) ^ (v126 >> 6) ^ (v126 << 58) ^ v133;
  v137 = v130 ^ (v130 >> 10) ^ (v130 >> 17) ^ (v130 << 47) ^ (v130 << 54);
  v138 = v18 & 1 | 0xDE;
  v139 = v137 ^ v134 ^ v133 & ~v135;
  v140 = v77 & 0x3D;
  *&v132 = __ROR8__(__ROR8__(v136 & (~(2 * v133) + v133) ^ v135, 31) ^ 0x2C7407DE2882E1E3, 33);
  v141 = v135 & ~(v137 ^ v134);
  v142 = v137 & ~v136 ^ v133 ^ v132 ^ 0x144170F1963A03EFLL;
  v143 = v134 & ~v137 ^ v136;
  v144 = v142 - 0x1934BEF15062C8A1 - ((2 * v142) & 0xCD96821D5F3A6EBELL);
  v145 = v139 ^ 0x56AAE6BF024184FFLL ^ v132 ^ 0x144170F1963A03EFLL;
  v146 = ((v138 ^ 0x3A991C74F67C307ELL ^ (v144 + 0x3A991C74F67C307ELL - 2 * (v144 & 0x3A991C74F67C30A1 ^ (v142 - 0x1934BEF15062C8A1) & 1) + 34)) >> v140 >> (v140 ^ 0x3Du)) + 10;
  v147 = v137 ^ 0x3378C4AC0693E070 ^ v141 ^ v143;
  LODWORD(v137) = *(v101 + ((((((16 * v146) | (v146 >> 4)) ^ 0x4F) >> 4) | (16 * (((16 * v146) | (v146 >> 4)) ^ 0x4F))) ^ 0x32));
  *(&v132 + 1) = v143;
  *&v132 = v143 ^ 0x15C7857573502C40;
  v148 = v132 >> 1;
  v149 = v144 ^ (((v137 >> 1) | (v137 << 7)) - (v137 & 0xAC) - 42) ^ 0xF3u ^ (8 * v144) ^ (v144 >> 39) ^ (v144 << 25);
  *(&v132 + 1) = v143;
  *&v132 = v143 ^ 0x15C7857573502C40;
  v150 = v148 ^ v143 ^ 0x15C7857573502C40 ^ (v132 >> 6) ^ v149;
  v151 = v147 ^ __ROR8__(v147, 10) ^ (v147 >> 17) ^ (v147 << 47);
  if (v131)
  {
    v152 = v150;
  }

  else
  {
    v152 = -1;
  }

  v153 = (v152 ^ v149) & v150;
  *(&v154 + 1) = v139;
  *&v154 = v139 ^ 0x62C1F2A9E89E4C79;
  v155 = v139 ^ 0x62C1F2A9E89E4C79 ^ ((v139 ^ 0x62C1F2A9E89E4C79) >> 7) ^ (v154 >> 41) ^ ((v139 ^ 0x62C1F2A9E89E4C79) << 57);
  v156 = v153 & 0x400000;
  v157 = v151 ^ v155 ^ 0x54F44F263C800000;
  v158 = v155 ^ 0x54F44F263C800000 ^ __ROR8__(v145, 28) ^ ((v145 ^ (v145 >> 19) ^ -(v145 ^ (v145 >> 19)) ^ ((v145 << 45) - (v145 ^ (v145 >> 19) ^ (v145 << 45)))) + (v145 << 45));
  v159 = v153 & 0xFFFFFFFFFFBFFFFFLL;
  v160 = (v151 & ~v150) + v149 - 2 * (v151 & ~v150 & v149);
  v161 = v151 & (v155 ^ 0x54F44F263C800000) ^ v155 ^ v150;
  if ((v156 & v158) != 0)
  {
    v162 = -v156;
  }

  else
  {
    v162 = v156;
  }

  v163 = v149 & ~v158 ^ v157;
  v164 = (v162 + v158) ^ v159;
  v165 = v163 ^ 0x7D752DD7DCC251B6 ^ v164;
  v166 = v161 ^ 0xB3164FD27F2AFCDFLL;
  v167 = v151 ^ v158 & ~v157 ^ 0x8C84456A88EF51B0 ^ v161;
  v168 = v167 ^ __ROR8__(v167, 10) ^ (v167 >> 17) ^ (v167 << 47);
  v169 = v163 ^ 0x66173F92B629299ALL ^ __ROR8__(v163 ^ 0x66173F92B629299ALL, 7) ^ ((v163 ^ 0x66173F92B629299AuLL) >> 41) ^ ((v163 ^ 0x66173F92B629299ALL) << 23);
  v170 = v166 ^ __ROR8__(v166, 1) ^ __ROR8__(v166, 6);
  v171 = v160 ^ 0xEEAFC2D3EC65C482 ^ v164 ^ __ROR8__(v160 ^ 0xEEAFC2D3EC65C482 ^ v164, 61) ^ ((v160 ^ 0xEEAFC2D3EC65C482 ^ v164) >> 39) ^ ((v160 ^ 0xEEAFC2D3EC65C482 ^ v164) << 25);
  v172 = v168 ^ v169;
  v173 = v165 ^ v169 ^ __ROR8__(v165, 19) ^ (v165 >> 28) ^ (v165 << 36);
  v174 = v171 ^ v170;
  v175 = v170 & ~v171 ^ v173;
  v176 = v173 & ~(v168 ^ v169);
  v177 = v174 ^ v169 & ~v168;
  v178 = v171 & ~v173 ^ v172;
  v179 = __ROR8__(__ROR8__(v175 ^ 0xA3D1A2BD23C0909FLL ^ v178, 31) ^ 0x4781213F47A3457ALL, 33) ^ 0xC5AB08FD33C1B5A7;
  v180 = v175 ^ __ROR8__(__ROR8__(v168 & ~v174 ^ v171, 18) ^ 0x38F00641558B66E0, 46) ^ 0x288996ADBDE4C462;
  v181 = (8 * v180) & 0x800000000;
  v182 = *(v101 + (((v180 >> ((((16 * v146) | (v146 >> 4)) ^ 0x4F) & 0x3D) >> ((((16 * v146) | (v146 >> 4)) ^ 0x4F) & 0x3D ^ 0x3D)) + 10) ^ 0xC6));
  v183 = v178 ^ 0xA0B866C79876C7E4;
  v184 = v176 ^ 0xCC98C5A695FE0D08 ^ (v177 + v168 - 2 * (v174 & v168));
  v185 = (((v182 >> 1) | (v182 << 7)) - (v182 & 0x38) + 28) ^ 0x39u;
  if ((v181 & v180) != 0)
  {
    v181 = -v181;
  }

  v186 = __ROR8__(v184, 10);
  v187 = (v185 ^ (v180 >> 39) | (v180 << 25)) ^ (8 * v180) & 0xFFFFFFF7FFFFFFFFLL ^ (v181 + v180);
  v188 = v177 ^ 0x32237A0B9C0468F5 ^ __ROR8__(v177 ^ 0x32237A0B9C0468F5, 1) ^ ((v177 ^ 0x32237A0B9C0468F5) >> 6) ^ ((v177 ^ 0x32237A0B9C0468F5) << 58);
  v189 = v187 ^ v188;
  v190 = v183 ^ (v183 >> 41) ^ __ROR8__(v183, 7) ^ (v183 << 23);
  v191 = __ROR8__(__ROR8__(((v184 ^ v186) + (v184 >> 17) - 2 * ((v184 ^ v186) & (v184 >> 17))) ^ 0xF76DEF122D1C6103, 5) ^ 0x1FBB6F789168E308, 59) ^ (v184 << 47);
  v192 = v191 & ~(v187 ^ v188) ^ v187;
  v193 = v190 ^ v179 ^ __ROR8__(v179, 19) ^ (v179 << 36) ^ (v179 >> 28);
  v194 = v188 & ~v187 ^ v193;
  v195 = v191 ^ v190 ^ v187 & ~v193;
  v196 = v192 ^ v194;
  v197 = v194 ^ 0xE78A8F8F26E90B2BLL ^ v195;
  v198 = v193 & ~(v191 ^ v190);
  v199 = v190 & ~v191 ^ v189;
  v200 = v199 ^ ((v198 ^ -v198 ^ (v191 - (v198 ^ v191))) + v191) ^ 0x1DE76D00F7B2971ELL;
  v201 = v195 ^ 0xF14770720A54D309;
  v202 = __ROR8__((16 * (v197 & 0x7FFFF)) ^ __ROR8__(v197, 41) ^ 0x7DCAEC3E7420CF26, 23);
  v203 = v195 ^ 0xF14770720A54D309 ^ __ROR8__(v195 ^ 0xF14770720A54D309, 7);
  v204 = ((v199 ^ 0xA2A16E7D4060C2ACLL ^ ((v199 ^ 0xA2A16E7D4060C2ACLL) >> 1)) + (v199 << 63)) ^ __ROR8__(v199 ^ 0xA2A16E7D4060C2ACLL, 6);
  v205 = ((((v195 >> 41) ^ 0x4ADB221B) >> 18) & 0xFFFFC01F | (((v195 >> 41) ^ 0x4ADB221B) << 14)) ^ 0xE068C008;
  v206 = v196 ^ 0x68ABEAE5737B7693 ^ ((v196 ^ 0x68ABEAE5737B7693) >> 39) ^ __ROR8__(v196 ^ 0x68ABEAE5737B7693, 61) ^ ((v196 ^ 0x68ABEAE5737B7693) << 25);
  v207 = (v205 >> 14) & 0xFFFFFFFFFF83FFFFLL | ((v205 & 0x1F) << 18) | (v201 << 23);
  v208 = v206 ^ v204;
  v209 = v200 ^ (v200 << 47) ^ ((v200 >> 17) ^ (v200 >> 10) | (v200 << 54));
  v210 = v209 & ~(v206 ^ v204);
  v211 = ((v207 - (v207 ^ v203)) ^ v203 ^ -((v207 - (v207 ^ v203)) ^ v203) ^ (-v203 - ((v207 - (v207 ^ v203)) ^ v203 ^ -v203))) - v203 + v207;
  v212 = v211 ^ v209;
  v213 = (v197 << 36) ^ (v197 >> 19) ^ (v202 ^ 0x419E4CFB95D87CE8) & 0x8B57859E9BD84F33 ^ ((v202 ^ 0x419E4CFB95D87CE8) & 0x74A87A616427B0CCLL ^ (v197 >> 28) & 0x16427B0CCLL | (v197 >> 28) & 0xE9BD84F33) ^ v211;
  v214 = v213 & ~(v211 ^ v209);
  v215 = v213 ^ v204 & ~v206;
  v216 = v210 ^ v206 ^ v215;
  v217 = v211 & ~v209 ^ v208;
  v218 = v217 + 0x60319059DF71CA55 - ((2 * v217) & 0xC06320B3BEE394AALL);
  v219 = v206 & ~v213 ^ v212;
  v220 = v219 ^ v215;
  v221 = v217 ^ __ROR8__(__ROR8__(v214 ^ v209, 61) ^ 0x80E9D79846F361F1, 3);
  *(&v223 + 1) = v217 + 0x60319059DF71CA55;
  *&v223 = v218;
  v222 = v223 >> 1;
  *(&v223 + 1) = v220 ^ 0x638FA;
  *&v223 = v220 ^ 0x2139B22338980000;
  v224 = ((2 * v216) & 0x2A0781FEC9D97EF0 ^ v216 ^ 0x9503C0FF64ECBF78) - ((2 * v216) & 0x2A0781FEC9D97EF0) + 2 * ((2 * v216) & 0x2A0781FEC9D97EF0 & (v216 ^ 0x9503C0FF64ECBF78));
  v225 = v219 ^ 0xA39DBBE78CD033FCLL;
  v226 = v222 ^ v218 ^ (v218 >> 6);
  v227 = v220 ^ __ROR8__(v220, 28) ^ (v223 >> 19);
  *(&v223 + 1) = v221 ^ 8;
  *&v223 = v221 ^ 0xB851EBBF3DA34000;
  v228 = v223 >> 10;
  v229 = __ROR8__(__ROR8__(v226 ^ v208, 57) ^ 0xAD20AAD4EA78767DLL, 7);
  *&v223 = __ROR8__(v229 ^ 0xFB5A4155A9D4F0ECLL, 25);
  v230 = v219 ^ __ROR8__(v219 ^ 0xA39DBBE78CD033FCLL, 7);
  v231 = v224 ^ __ROR8__(v224, 61) ^ (v224 >> 39);
  v232 = v231 ^ (v224 << 25);
  v55[53] = BYTE1(v227) ^ 0x1A;
  v233 = v229 ^ v226 ^ __ROR8__((v223 + ((v218 & 0x3F) << 33) - 2 * (v223 & ((v218 & 0x3F) << 33))) ^ 0x879EA13397A0AB5FLL, 39);
  v55[41] = ((v227 & 0x48 ^ 0x9E) & (v227 & 0xB7 ^ 0x7E) | v227 & 0x21) ^ 0xD7;
  v234 = STACK[0x7D0];
  LOBYTE(v224) = *(STACK[0x7D0] + (((BYTE2(v227) ^ 5) + 5) ^ 0x40));
  LOBYTE(v229) = 25 * v224 + 127;
  LOBYTE(v218) = (v229 & 0x81 | 0x30) ^ v229 & 0x60;
  v235 = STACK[0x708];
  *(v235 + 118) = BYTE4(v227) ^ 0x81;
  LOBYTE(v212) = v229 ^ ~(2 * (v229 & ~(2 * (v229 & (2 * (v229 & (2 * (v229 & (2 * (v229 & (2 * (v229 & (2 * v218) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ v218))));
  LOBYTE(v224) = 50 * v224 - 121;
  LOBYTE(v229) = v224 & 0xE ^ 0x4A;
  v236 = STACK[0x718];
  v236[34] = BYTE3(v227) ^ 0x2B;
  v55[22] = ((v224 ^ (2 * ((v224 ^ 0x78) & (2 * ((v224 ^ 0x78) & (2 * ((v224 ^ 0x78) & (2 * ((v224 ^ 0x78) & (2 * ((v224 ^ 0x78) & (2 * v229) ^ v229)) ^ v229)) ^ v229)) ^ v229)) ^ v229)) ^ 0xCB) & 0xFE | ((v212 & 0x80) != 0)) ^ 0x80;
  v237 = STACK[0x7F0] + 262;
  LODWORD(v224) = *(v237 + (BYTE5(v227) ^ 0x15));
  v238 = ((v224 >> 4) | (16 * v224)) - ((2 * ((v224 >> 4) | (16 * v224))) & 0xFFFFFFF3) + 121;
  DWORD1(v223) = v238 ^ 1;
  LODWORD(v223) = (v238 ^ 0x78) << 24;
  v239 = (v223 >> 27) ^ ((0x82u >> ((v146 >> 4) & 3) >> (~(v146 >> 4) & 3)) + 64) ^ 0x76;
  *&v223 = __ROR8__(v225, 41);
  LOBYTE(v212) = (v239 >> 5) | (8 * v239);
  v240 = (v223 - ((2 * v223) & 0xCE3727D0970C3852) + 0x671B93E84B861C29) ^ v230;
  v241 = v240 ^ 0x2BE4C4A16215810DLL;
  v236[36] = (((v212 ^ 0xB4) + 58) ^ ((v212 ^ 8) - 122) ^ ((v212 ^ 0xF) - 125)) - 53;
  LODWORD(v212) = *(v234 + ((((v227 >> 47) & 0xA) + (BYTE6(v227) ^ 0xDF)) ^ 0x40));
  v236[14] = BYTE2(v231);
  v242 = v221 ^ __ROR8__(v221, 17) ^ v228;
  LODWORD(v228) = 25 * v212 - 38;
  LODWORD(v229) = v228 & 0xFFFFFFFC ^ 0xFFFFFFEF;
  v6[10] = BYTE1(v231);
  v6[57] = ((HIBYTE(v227) ^ 0xA8) - ((2 * HIBYTE(v227)) & 0xA0) - 48) ^ 0xD0;
  v91[25] = v231;
  LOBYTE(v224) = 50 * v212 - 96;
  LOBYTE(v212) = (v224 & 0x60 | 0x17) ^ v224 & 0xEF;
  *(v235 + 108) = (v224 ^ (2 * ((v224 ^ 0x60) & (2 * ((v224 ^ 0x60) & (2 * ((v224 ^ 0x60) & (2 * ((v224 ^ 0x60) & (2 * ((v224 ^ 0x60) & (2 * ((v224 ^ 0x60) & (2 * v212) ^ v212)) ^ v212)) ^ v212)) ^ v212)) ^ v212)) ^ v212)) ^ 0x4D) & ~((~(v228 ^ (2 * (v228 & (2 * ((v228 ^ 0x26) & (2 * ((v228 ^ 0x26) & (2 * ((v228 ^ 0x26) & (2 * (((2 * (v229 ^ v228 & 0x5A)) ^ 4) & (v228 ^ 0x26) ^ v229)) ^ v229)) ^ v229)) ^ v229)) ^ v229))) & 0x80) >> 7) ^ 0x87;
  v243 = *(v101 + ((BYTE3(v232) + 10) ^ 0xC6));
  v6[71] = HIBYTE(v232);
  v244 = (HIBYTE(v233) ^ 0xFFFFFF9C) - ((2 * (HIBYTE(v233) ^ 0xFFFFFF9C)) & 0x24) + 18;
  v91[49] = (((v243 >> 1) | (v243 << 7)) - (v243 & 0xAC) - 42) ^ 0xF3;
  v245 = v177 & 1;
  v91[68] = BYTE6(v232);
  v91[60] = BYTE5(v232);
  v6[64] = ((BYTE4(v233) ^ 3) + (~(2 * (BYTE4(v233) ^ 3)) | 0x9B) + 51) ^ 0x32;
  *(v235 + 34) = v233 ^ 0xAE;
  v6[27] = BYTE4(v232);
  v91[40] = BYTE3(v233) ^ 0x16;
  v6[2] = ((BYTE1(v233) ^ 0xCD) - ((2 * (BYTE1(v233) ^ 0xCD)) & 0x26) + 19) ^ 0x13;
  v6[28] = ((BYTE5(v233) - 2 * (BYTE5(v233) & 7) + 15) ^ 7) - 8;
  v6[60] = ((BYTE2(v233) ^ 0xDB) + ((2 * (BYTE2(v233) ^ 0xDB)) & 0x80) + 64) ^ 0x40;
  v246 = STACK[0x880];
  v247 = *(STACK[0x880] + (((BYTE6(v233) ^ 0x75) + 64) ^ 0x61));
  v248 = ~v247 & 2;
  v249 = (v247 >> 2) ^ 0x22;
  if ((v249 & v248) != 0)
  {
    v248 = -v248;
  }

  v6[40] = v244 ^ 0x12;
  v250 = v247 & 0xFD ^ 0x89 ^ (v248 + v249);
  v251 = v247 & 0xEF;
  v252 = v250 >> v245 >> (v245 ^ 1u);
  v253 = v247 & 0x10;
  if ((v252 & v253) != 0)
  {
    v253 = -v253;
  }

  v236[22] = BYTE1(v242) ^ 0xDE;
  v6[59] = ((BYTE2(v242) ^ 0x7C) - 2 * ((BYTE2(v242) ^ 0x7C) & 0x17 ^ BYTE2(v242) & 1) + 22) ^ 0x16;
  v6[29] = 117 * (v251 ^ (v253 + v252) ^ 0xE3);
  v6[74] = v242 ^ 0xD9;
  v254 = (1 - v98) & 1;
  v91[24] = BYTE3(v242) ^ 0xC8;
  v255 = *(v246 + ((((BYTE4(v242) ^ 0x97) + 64) | (HIDWORD(v242) ^ 0x1855B797) & 0x22) ^ 0x61));
  v256 = v255 ^ 0xD0;
  *(v235 + 88) = BYTE5(v242) ^ 0xB7;
  v257 = (((((v255 >> 2) ^ 0x22) - 2 * (((v255 >> 2) ^ 0x22) & 0x1F ^ (v255 >> 2) & 4) + 91) ^ v255 ^ 0xD0) >> (v254 ^ 1)) >> ((((v254 ^ 1) - v254) ^ 0xFE) + (v254 ^ 1u));
  v236[39] = v240 ^ 0xD5;
  v91[48] = ((v240 ^ 0x6215810D) >> 24) ^ 0xA5;
  v6[39] = ((BYTE1(v241) ^ 0xAE) - ((2 * (BYTE1(v241) ^ 0xAE)) & 0xE3) + 113) ^ 0x71;
  v6[96] = ((BYTE2(v241) ^ 0x43) - ((2 * (BYTE2(v241) ^ 0x43)) & 0xE4) - 14) ^ 0xF2;
  *(v235 + 90) = BYTE6(v242) ^ 0x55;
  LOBYTE(v257) = (v257 - ((2 * v257) & 0xE0) - 16) ^ v256;
  v91[67] = 117 * (((v257 ^ 0x31) - 39) ^ ((v257 ^ 0x81) + 105) ^ ((v257 ^ 0x73) - 101)) + 89;
  v258 = (v240 ^ 0xC486280FC7562FD5) >> (v230 & 0x20 ^ 0x20) >> (v230 & 0x20);
  v6[38] = (v258 - ((2 * v258) & 0xE3) + 113) ^ 0x71;
  *(v235 + 44) = HIBYTE(v242) ^ 0x18;
  v259 = *(v237 + BYTE5(v240));
  *v6 = HIBYTE(v241) ^ 0xEF;
  v260 = ((v259 >> 4) | (16 * v259)) + (~(2 * ((v259 >> 4) | (16 * v259))) | 0xFFFFFFD7) - 107;
  v91[78] = BYTE6(v240) ^ 0x86;
  *(v235 + 20) = (((v260 ^ 0x5E) - 16) ^ ((v260 ^ 0xE6) + 88) ^ ((v260 ^ 0xA4) + 22)) + ((((2 * v260) & 0x14 ^ 0x94) - 64) ^ (((2 * v260) & 0x14) + 44) ^ (((2 * v260) & 0x14 ^ 0x92) - 70)) + 34;
  v261 = STACK[0x710];
  *(*STACK[0x710] + 4) = STACK[0x7C0] + 1;
  LODWORD(STACK[0x880]) = ((2 * *(v235 + 60)) & 0xF5FEBF3C) + (*(v235 + 60) ^ 0x7AFF5F9E);
  v262 = *(*v261 + 9);
  v263 = *v261;
  STACK[0x7E0] = *v261;
  v264 = v236[11];
  v265 = v235;
  v266 = v91[63];
  v267 = v91;
  v268 = *(v235 + 30);
  v269 = *(v235 + 86);
  v270 = *(v235 + 120) + 44;
  v271 = v270 & 8 | 0xFFFFFFF5;
  v272 = v270 ^ (2 * ((v270 ^ 0x2E) & (2 * ((v270 ^ 0x2E) & (2 * ((v270 ^ 0x2E) & (2 * ((v270 ^ 0x2E) & (2 * ((v270 ^ 0x2E) & (2 * (((16 * (((v270 & 8) >> 3) & 1)) | 0x26) & (v270 ^ 0x2E) ^ v271)) ^ v271)) ^ v271)) ^ v271)) ^ v271)) ^ v271));
  v273 = v6[67] - ((2 * v6[67]) & 0xF2u) + 367083141;
  STACK[0x7F0] = &byte_101048F95[268];
  v274 = byte_101048F95[(v272 ^ 0x16) + 268];
  v268 -= 100;
  v275 = v268 & 0xAB ^ 0x9C;
  v276 = v268 ^ (2 * ((v268 ^ 0x32) & (2 * ((v268 ^ 0x32) & (2 * ((v268 ^ 0x32) & (2 * ((v268 ^ 0x32) & (2 * ((v268 ^ 0x32) & (2 * ((v268 ^ 0x32) & (2 * v268) ^ v275)) ^ v275)) ^ v275)) ^ v275)) ^ v275)) ^ v275));
  v277 = ((v264 - ((2 * v264) & 0x192)) << 16) + 0x754528A813C90000;
  v278 = *(v235 + 18);
  v279 = ((v269 - ((2 * v269) & 0x48)) << 8) + 0x4E510511755F2400;
  v280 = v91[62];
  v281 = ((v265[26] - ((2 * v265[26]) & 0xA0)) << 24) - 0x7433D5FAB0000000;
  v282 = ((v262 - ((2 * v262) & 0xC4) - 0x56F982DBA097FC9ELL) & 0x410CA9BF ^ 0x4498B30522DACB55 ^ (v279 ^ 0xF34CDC5CD71C7240) & ((v262 - ((2 * v262) & 0xC4) - 0x56F982DBA097FC9ELL) ^ 0x56F982DBA097FC82)) & (v277 ^ 0x8ABAD757EC36FFFFLL) ^ v277 & 0x44000A73E6E0000;
  STACK[0x7C0] = v282;
  v283 = (v281 ^ 0xA2862ED78392F9CDLL) & (((v273 << 32) - 0xC00000000) ^ 0xEA1EC186FFD6FFDFLL) ^ ((v273 << 32) - 0xC00000000) & 0x14A13B2D00000000;
  v284 = (v283 ^ 0x14C1042C6D0632) & (v282 ^ 0x1517047522F7B0) ^ v283 & 0xF821359009048;
  v285 = 45 * (v274 ^ v272 ^ 0x75u);
  LOBYTE(v274) = ((2 * v276) & 0x12 ^ 0xEF) + (((v276 ^ 0x6C) + 102) ^ ((v276 ^ 0x72) + 124) ^ ((v276 ^ 0x40) + 74)) + (v276 ^ ((v276 ^ 0x7A) + 116) ^ ((v276 ^ 0xD2) - 36) ^ 0xF6) - 123;
  LOBYTE(v277) = byte_101048F95[(v276 ^ 0xDELL) + 524];
  STACK[0x7D0] = &byte_101048F95[524];
  LOBYTE(v281) = v274 & 0xCB ^ 0x9B;
  LOBYTE(v274) = v277 + v274 + ((2 * v274) ^ (4 * ((v274 ^ 0x14) & (2 * ((v274 ^ 0x54) & (2 * ((v274 ^ 0x54) & (2 * ((v274 ^ 0x54) & (2 * ((v274 ^ 0x54) & (2 * v281) ^ v281)) ^ v281)) ^ v281)) ^ v281)) ^ v281)) ^ 0x69) - 42;
  v286 = (v284 << 11) & 0x33218271E7706800 ^ 0xDFFFFFBFDFDFFFB8 ^ ((v284 << 11) ^ 0x24000000000187B8) & ((((v266 - ((2 * v266) & 0xF4u) + 5544) << 51) - 0x170000000000000) ^ 0x670E7D8E188F97B8);
  v287 = *(v235 + 113);
  v288 = v6[4] + 41;
  LOBYTE(v277) = v288 & 0x27 ^ 0xB1;
  v289 = (v288 ^ 0x44) & (2 * ((v288 ^ 0x44) & (2 * ((v288 ^ 0x44) & (2 * ((v288 ^ 0x44) & (2 * ((v288 ^ 0x44) & (2 * (((2 * v288) & 0xA ^ 0x62) & v288 ^ v277)) ^ v277)) ^ v277)) ^ v277)) ^ v277)) ^ v277;
  v290 = *(v263 + 8);
  v291 = v287 + 177567661 + (~(2 * v287) | 0x3FFFFEA7u);
  v292 = ((v280 + 0x3E1D8C9DFAA5F5C6 - ((2 * v280) & 0x18C)) ^ 0x3E1D8C9DFAA5F5C6) << (v287 & 0x10) << (v287 & 0x10 ^ 0x10u);
  v293 = v292 & 0x93000800EDLL;
  v294 = v6[23] - ((2 * v6[23]) & 0x5555) + 32682;
  v295 = (((-101 * (v274 - 2 * (v274 & 0x2F)) + 117) << 8) ^ 0x63CD) & (v294 ^ 0x8067) ^ v294 & 0x9C32;
  v296 = v6[22] - ((2 * v6[22]) & 0xAA) + 0x58DCEBD93AB1FD55;
  v297 = v295 & 0xF812 ^ v292 & 0x6C00F70012 | v295 & 0x7ED;
  v298 = ((v290 - ((2 * v290) & 0xA2u) + 119) << 56) - 0x2600000000000000;
  v299 = v236[33];
  v300 = __ROR8__((v286 - ((2 * v286) & 0x63B82E92F2485000) + 0x31DC174979242E29) ^ __ROR8__(v278 - ((2 * v278) & 0x1C0) - 0x729D4A276D1FFC20, 5) ^ 0xF2385A9F95E070C5, 11) ^ (v285 << 56);
  v301 = v293 ^ ((byte_101048F95[(v288 ^ (2 * v289)) ^ 0x38] ^ 0x8Fu) << 32) ^ v297;
  v302 = ((v301 ^ 0xFFFFFF44FAF60010) & ((((v236[40] - ((2 * v236[40]) & 0x13Au) + 15123112) << 40) - 0xB0000000000) ^ 0x263C8F44FAF6037ALL) | v301 & 0xBB0009FC85) ^ 0xC0FE1244FAF67FFFLL;
  v303 = ((v236[13] - ((2 * v236[13]) & 0x146u) + 2769) << 48) - 0x2E000000000000;
  v304 = *(v235 + 1);
  v305 = ((v265[71] + 0x57D0AF673015B2E6 - ((2 * v265[71]) & 0x1CC)) ^ 0x57D0AF673015B2E6) << (v276 & 0x18 ^ 0x18u) << (v276 & 0x18);
  LOBYTE(v290) = (((v304 ^ 0xEA) + 32) ^ ((v304 ^ 0x62) - 104) ^ ((v304 ^ 0xC7) + 51)) + ((2 * v304) & 0x9F ^ (((2 * v304) & 0x9F) - 52) ^ (((2 * v304) & 0x9F ^ 0xB5) + 63) ^ 0xB4) + 37;
  LOBYTE(v287) = v290 & 0x92 ^ 0x87;
  LOBYTE(v297) = v290 ^ (2 * ((v290 ^ 0x14) & (2 * ((v290 ^ 0x14) & (2 * ((v290 ^ 0x14) & (2 * ((v290 ^ 0x14) & (2 * ((v290 ^ 0x14) & 6 ^ v287)) ^ v287)) ^ v287)) ^ v287)) ^ v287));
  v306 = v267[56] - ((2 * v267[56]) & 0x11A) - 0x27ACFD1D6ECC4973;
  v307 = (v306 ^ 0x27ACFD1D6ECC4972) & ((((v6[82] - ((2 * v6[82]) & 0xFFF3)) << 8) + 0x4960A481F8F6F900) ^ 0x46E6269FB8F7A3F2) ^ v306 & 0x401100409012A50DLL;
  v308 = (LODWORD(STACK[0x880]) - 2063556510);
  v309 = (((v267[61] - ((2 * v267[61]) & 0x54)) << 24) + 0x2127B2322A000000) ^ (v308 - ((2 * v308) & 0xFD2A279ALL) - 0x59612B18816AEC33) ^ v298 ^ v303;
  LODWORD(v298) = v6[66];
  v310 = v6;
  v311 = v309 ^ (v302 - ((2 * v302) & 0x207E321E3E0B142) + 0x4103F190F1F058A1);
  v312 = __ROR8__((((v296 << 43) & 0x5F80000000000 ^ 0xA80000000000) + ((v296 << 42) & 0xD000000000000 ^ 0x9D57FC6FF64AD10DLL) + (~(v296 << 42) & 0x1000000000000) - ((((v296 << 42) ^ 0xF0A7C420999D9231) + 0x3309E34669B1FE74) ^ (((v296 << 42) ^ 0xEDA88499052214ELL) - 0x328B50D09F81B2F3) ^ (((v296 << 42) ^ 0x3988186909CFB37FLL) - 0x5D9C0F0061C20C2)) + ((v291 << 34) & 0xF9400000000 ^ 0x733BFEFBC3B4898BLL ^ ((((v267[9] - ((2 * v267[9]) & 0x134)) << 26) + 0x9A9FD7668000000) ^ 0x7A920D1DABB4898BLL) & ((v291 << 34) ^ 0xD5AA214FFFFE9D9FLL)) + 0x670876F6F9E19B36) ^ 0x140C2F642F62D611, 26);
  v313 = (v305 ^ v312) - ((2 * (v305 ^ v312)) & 0x46C26381558C47E4) - 0x5C9ECE3F5539DC0ELL;
  v314 = (((v265[96] - ((2 * v265[96]) & 0x82u) + 147806566) << 32) - 0x2500000000) ^ 0xABAE6881AAC623F2 ^ v313;
  v315 = (v307 ^ 0xB0687DA12FEC0100) & ((((v267[47] - ((2 * v267[47]) & 0x1E8)) << 16) + 0x72143D4351F40000) ^ 0xEC31C497F928BB06) ^ v307 & 0x61DA062B572344F9;
  v316 = (((v299 - ((2 * v299) & 0x124u) + 8061638) << 40) - 0x340000000000) ^ 0x3832A55DED4B513BLL ^ (v314 + 0x4330375DED4B513BLL - 2 * (v314 & 0x4330375DED4B513FLL ^ v313 & 4));
  v317 = v267;
  v318 = v267[6] - ((2 * v267[6]) & 0x16) - 0xC7754216A027BF5;
  v319 = ((((v6[63] - ((2 * v6[63]) & 0x1E8)) << 24) + 0x7C733436F4000000) ^ 0x960D3257393BB081) & (v315 ^ 0x204804210720404ALL) ^ v315 & 0x1581F99E32C44F7ELL;
  v320 = (((v265[53] - ((2 * v265[53]) & 0x1E8u) + 15652) << 48) - 0x30000000000000) ^ 0x62DDEDC55A0BC787 ^ (v316 - ((2 * v316) & 0xBC53DB8AB4178F0ELL) + 0x5E29EDC55A0BC787);
  v321 = (v320 - ((2 * v320) & 0x40D8D9757F022D6ALL) - 0x5F939345407EE94BLL) ^ (((v265[93] - ((2 * v265[93]) & 0x46u) + 64) << 56) - 0x1D00000000000000);
  LOBYTE(v305) = byte_101048F95[(v297 ^ 0xE7) + 524] - 2 * ((v297 ^ 0x6E) & (v297 ^ 0x67)) + 73;
  LOBYTE(v320) = v305 & 0xE4 ^ 0x2F;
  LOBYTE(v315) = (v305 ^ 0x2E) & (2 * ((v305 ^ 0x2E) & (2 * ((v305 ^ 0x2E) & (2 * ((v305 ^ 0x2E) & (2 * (((2 * (v320 ^ v305 & 0x4A)) ^ 0x14) & (v305 ^ 0x2E) ^ v320)) ^ v320)) ^ v320)) ^ v320)) ^ v320;
  v322 = (v319 ^ 0xFFFFFFFFFC441FBDLL | (((v6[56] - ((2 * v6[56]) & 0xA6u) + 1386596190) << 32) - 0xB00000000) ^ 0xEBD7ECF801BBE042) ^ v319 & 0xB9722BAB01BBE042;
  v323 = (((v298 - ((2 * v298) & 0x174) + 7361738) << 40) - 0x100000000000) ^ 0x80A098CD5160539ELL ^ (v322 - ((2 * v322) & 0x61E8459AA2C0A73CLL) - 0xF0BDD32AE9FAC62);
  v324 = v323 - ((2 * v323) & 0x77D21D022A3541ELL) + 0x43BE90E81151AA0FLL;
  v325 = (((v310[41] - ((2 * v310[41]) & 0x150u) + 53674) << 48) - 0x2000000000000) ^ 0x921690E81151AA0FLL ^ v324;
  v326 = (v325 + 0x21ECBB6298E945C6 - 2 * (v325 & 0x21ECBB6298E945F6 ^ v324 & 0x30)) ^ (((v6[49] - ((2 * v6[49]) & 0xEAu) + 145) << 56) - 0x1C00000000000000);
  v327 = (-101 * (v305 ^ (2 * v315) ^ 0xCB)) << 16;
  v328 = v327 & 0xEB0000 | ((v318 & 0x800000004C5 | 0x903B53A2AE225932) ^ (v318 ^ 0xC7754216A027B30) & ((((v267[38] - ((2 * v267[38]) & 0x5A)) << 8) - 0x757CD0CBF914D300) ^ 0xE5B77E6251DD563ALL)) & ~v327;
  v329 = v321 ^ v311 ^ 0xB5441657FF395460;
  v330 = (v328 ^ 0xF0F50B064BD076) & ((((v265[9] - ((2 * v265[9]) & 0x194)) << 24) + 0x5EDABE92CA000000) ^ 0x4F2D9D8DC05BD67ELL) ^ v328 & 0xEE08DCE0F5A42981;
  v331 = v330 & 0xF877C8A3DC959C94 ^ 0xFFFF3FFFFB7FF77FLL ^ (v330 ^ 0xD40000200100) & ((((v267[69] - ((2 * v267[69]) & 0x152u) - 366680134) << 32) - 0x1100000000) ^ 0xEDACD0F5236A636BLL);
  v332 = (((v267[17] - ((2 * v267[17]) & 0x1D6u) + 935209) << 40) - 0x3E0000000000) ^ 0xFE9B646EFAFB8239 ^ (v331 - ((2 * v331) & 0x61BF1EDDF5F70472) - 0xF20709105047DC7);
  v333 = v332 - ((2 * v332) & 0x6F55568505CC48C4) + 0x37AAAB4282E62462;
  v334 = (((v267[77] - ((2 * v267[77]) & 0xFF07u) + 49563) << 48) - 0x18000000000000) ^ 0xF629AB4282E62462 ^ v333;
  v335 = (((v6[61] - ((2 * v6[61]) & 0xFFC7u) + 251) << 56) - 0x1800000000000000) ^ 0x1C51581F8B354192 ^ (v334 - 2 * (v334 & 0x7F51581F8B35419ALL ^ v333 & 8) - 0xAEA7E074CABE6ELL);
  v336 = v300 ^ v335;
  v337 = v335 ^ v326;
  v338 = v336 ^ v329 & (v311 ^ 0x8B4F89A8EF142C30);
  v339 = (v336 ^ 0x34947F7C5DDF4D23) & (v311 ^ 0x74B0765710EBD3CFLL) ^ v337;
  v340 = (v337 ^ 0x2B5CCD6FD6DF4426) & (v326 ^ 0xE07F000455FAD03CLL) ^ v329;
  v341 = v311 ^ (v321 ^ v311 ^ 0x4ABBE9A800C6AB9FLL) & (v326 ^ 0x1F80FFFBAA052FC3) ^ 0xA7F22D002382CD7ELL ^ v338;
  v342 = v338 ^ 0x831D9B8494EC312ALL ^ v339;
  v343 = v340 ^ 0x6E807D10291F7139;
  v344 = v339 ^ 0xAC4B128D756EA7D4;
  v345 = (v339 ^ 0xAC4B128D756EA7D4) << 57;
  v346 = v341 ^ __ROR8__(v341, 61) ^ (v341 >> 39) ^ (v341 << 25);
  v347 = ((((v339 ^ 0xAC4B128D756EA7D4) - (v339 ^ 0xAC4B128D756EA7A1)) ^ 0xFFFFFFFFFFFFFFFELL) + (v339 ^ 0xAC4B128D756EA7D4)) >> 7;
  v348 = v326 ^ (v337 ^ 0xD4A332902920BBD9) & (v336 ^ 0xCB6B8083A220B2DCLL) ^ v340 ^ 0x59057B2E44C0ADB1;
  v349 = v344 >> (~(v298 & 0x29 ^ 0xAE) & 8) >> ((v298 & 0x29 ^ 0xAE) & 0x21 ^ 0x20) >> (v298 & 0x29 ^ 0x29);
  v350 = v343 ^ __ROR8__(v343, 1) ^ (v343 >> 6) ^ (v343 << 58);
  v351 = v347 & 0x1623B5266218413;
  v352 = v347 & 0x9DC4AD99DE7BECLL ^ v344 & 0x929DC4AD99DE7BECLL;
  v353 = __ROR8__(__ROR8__(v348, 62) & 0xFFFFFFFFFFF80003 ^ __ROR8__(v348 ^ __ROR8__(v348, 10), 45) ^ 0x54D538691192768ELL, 19) ^ (v348 << 47);
  v354 = v345 ^ (v344 << 23) ^ v349 ^ (v352 | v351 ^ v344 & 0x6D623B5266218413);
  v355 = v353 ^ 0x4ED1CA9AA70D2232 ^ v354;
  v356 = v342 ^ __ROR8__(v342, 19) ^ (v342 >> 28) ^ (v342 << 36) ^ v354;
  v357 = v356 ^ v350 & ~v346;
  v358 = ((v356 ^ v346) + (v346 | ~v356) + 1) ^ v355;
  v359 = v357 ^ 0x56AAE6BF024184FFLL ^ v358;
  v63 = (v274 & 0x2F) == 0;
  v360 = v350 ^ v346;
  v361 = v356 & ~v355;
  v362 = (v353 ^ 0x4ED1CA9AA70D2232) & 0x800000000000;
  v363 = (v353 ^ 0xB12E356558F2DDCDLL) & v354 ^ v350 ^ v346;
  v364 = STACK[0x8B0];
  v365 = ((v359 >> 19) ^ -(v359 >> 19) ^ (((v359 >> 19) ^ v359) + v359 - 2 * ((v359 >> 19) ^ v359))) + v359;
  v366 = __ROR8__(__ROR8__(__ROR8__(v358, 36) ^ 0x9AC7F9FFBA3C61EDLL, 34) ^ 0x5FAE1DF908496B49, 58) ^ 0x2A80923256BB01D5;
  v367 = __ROR8__(((v366 & 0x7F) << 32) ^ __ROR8__(v366 ^ (v366 >> 7) ^ (v366 >> 41), 25) ^ 0x8B4A74AC18F7C271, 39);
  *(&v368 + 1) = (v365 ^ (v359 << 45) | (v359 >> 28)) ^ v365 & (v359 >> 28);
  *&v368 = *(&v368 + 1) ^ (v359 << 36);
  v369 = v353 ^ v361 ^ v363 ^ 0x7DA90E36A19EC242;
  v370 = v367 ^ (v366 << 23) ^ 0x5831EF84E31694E9;
  v371 = v369 ^ __ROR8__(v369, 10) ^ (v369 << 47) ^ (v369 >> 17);
  v372 = __ROR8__((v368 >> 8) ^ (v367 << 56) ^ (v370 >> 8) ^ 0xF6FF7B5A2778BA50, 56);
  v373 = (v372 ^ 0xFF7B5A2778BA501FLL) & ~(v370 ^ v371) ^ v371;
  v374 = v373 ^ 0x80000000000000;
  if (v63)
  {
    v374 = 0xFF7FFFFFFFFFFFFFLL;
  }

  if (STACK[0x7C0] == 0xFDC56AE8D3D99C37)
  {
    v375 = 0;
  }

  else
  {
    v375 = v353 ^ 0x4ED1CA9AA70D2232;
  }

  v376 = v360 ^ ~v375;
  v377 = v350 ^ ~v346;
  if ((v362 & ~v360) != 0)
  {
    v378 = -v362;
  }

  else
  {
    v378 = (v353 ^ 0x4ED1CA9AA70D2232) & 0x800000000000;
  }

  v379 = (v376 | v353 ^ 0x4ED1CA9AA70D2232) ^ (v353 ^ 0x4ED1CA9AA70D2232) & 0xFFFF7FFFFFFFFFFFLL ^ (v378 + v377);
  v380 = v357 ^ 0xE6CB410EAF9D375FLL ^ (v379 + v346 - 2 * (v379 & v346));
  v381 = v363 << 58;
  v382 = (((v363 ^ 0x15C7857573502C40) >> 6) | (v363 << 63)) + (v363 ^ 0x15C7857573502C40 ^ ((v363 ^ 0x15C7857573502C40) >> 1)) - 2 * ((v363 ^ 0x15C7857573502C40 ^ ((v363 ^ 0x15C7857573502C40) >> 1)) & ((v363 ^ 0x15C7857573502C40) >> 6));
  v383 = 2 * ((v363 ^ 0x15C7857573502C40 ^ ((v363 ^ 0x15C7857573502C40) >> 1)) & ((v363 ^ 0x15C7857573502C40) >> 6)) - ((((v363 ^ 0x15C7857573502C40) >> 6) | (v363 << 63)) + (v363 ^ 0x15C7857573502C40 ^ ((v363 ^ 0x15C7857573502C40) >> 1)));
  v384 = v382 ^ (v363 << 58);
  v385 = __ROR8__(v382 ^ v383, 36) ^ 0xCB7C3DCC9E374C7;
  v386 = __ROR8__(v380, 61);
  v387 = (v380 ^ v386 ^ (v380 << 25) ^ -(v380 ^ v386 ^ (v380 << 25)) ^ ((v380 >> 39) - (v380 ^ v386 ^ (v380 << 25) ^ (v380 >> 39)))) + (v380 >> 39);
  v388 = ((v381 - v384) ^ (v385 >> 28) ^ ((v385 << 36) | 0x1000) ^ 0x9E374C70CB7C2DCCLL) + v381;
  v389 = v387 ^ v388;
  v390 = v371 & ~(v387 ^ v388);
  v391 = (v372 ^ 0x84A5D88745AFE0) & v387 ^ v370 ^ v371;
  v392 = v372 ^ 0xFF7B5A2778BA501FLL ^ v388 & ~v387;
  v393 = v370 & ~v371;
  v394 = v373 & 0x80000000000000;
  v395 = v393 ^ v389;
  v396 = v390 ^ v387;
  v397 = v396 ^ 0xEEAFC2D3EC65C482 ^ v392;
  v398 = v392 ^ 0x7D752DD7DCC251B6 ^ v391;
  if ((v373 & 0x80000000000000 & v395) != 0)
  {
    v394 = -v394;
  }

  v399 = (v394 + v395) ^ v374 & v373;
  v401 = v396 ^ ~v392;
  if (v336 == 0x34947F7C5DDF4D23)
  {
    v402 = 0x58700A4CB46F51B0;
  }

  else
  {
    v402 = ((v399 - (v399 ^ 0x278FF5B34B90AE4FLL)) ^ 0x7FFFFFFFFFFFFFFELL) + v399;
  }

  *(&v403 + 1) = v397;
  *&v403 = v401;
  v404 = (v403 >> 61) ^ v397 ^ (v397 << 25);
  v405 = v391 ^ 0x66173F92B629299ALL ^ __ROR8__(v391 ^ 0x66173F92B629299ALL, 7) ^ ((v391 ^ 0x66173F92B629299AuLL) >> 41) ^ ((v391 ^ 0x66173F92B629299ALL) << 23);
  v406 = (v404 & 0x6A41CAB971D838FLL ^ (v397 >> 39) & 0x11D838F | (v397 >> 39) & 0xE27C70) ^ v404 & 0xF95BE35468E27C70;
  v407 = v398 ^ __ROR8__(v398, 19) ^ (v398 >> 28) ^ (v398 << 36) ^ v405;
  v400 = v399 - 0x278FF5B34B90AE50;
  v408 = (v400 - 2 * (v402 & v399)) ^ ((v400 - 2 * (v402 & v399)) << 47) ^ ((v400 - 2 * (v402 & v399)) >> 10) ^ (((v400 - 2 * (v402 & v399)) >> 17) | ((v400 - 2 * (v402 & v399)) << 54));
  v409 = v408 ^ v405;
  v410 = (((v395 ^ 0xE7E200F443AAFCDFLL) >> 6) | ((v395 ^ 0xE7E200F443AAFCDFLL) << 63)) ^ ((v395 ^ 0xE7E200F443AAFCDFLL) << 58) ^ __ROR8__(__ROR8__(v395 ^ 0xE7E200F443AAFCDFLL, 52) & 0xFFFFFFFFFFFFEFFFLL ^ __ROR8__(v395 ^ 0xE7E200F443AAFCDFLL, 51) ^ 0xCEC2A471AFBF372ALL, 13) ^ v406;
  v411 = v408 ^ v405 ^ v406 & ~v407;
  v412 = v405 & ~v408;
  v413 = (v410 ^ 0xB9567615238D7DF9) & ~v406 ^ v407;
  if ((v409 & 0x4000) != 0)
  {
    v414 = -16384;
  }

  else
  {
    v414 = 0x4000;
  }

  v415 = v412 ^ v410 ^ 0xB9567615238D7DF9;
  v416 = v408 & (v410 ^ 0x46A989EADC728206);
  v417 = v415 ^ v408 ^ ((v414 + v409) ^ 0xFFFFFFFFFFFFBFFFLL) & v407;
  v418 = v413 ^ v406 ^ v416;
  v419 = v415 ^ 0x32237A0B9C0468F5;
  v420 = ((v413 ^ 0xC5AB08FD33C1B5A7 ^ v411) << 45) & (v413 ^ 0xC5AB08FD33C1B5A7 ^ v411) ^ __ROR8__(v413 ^ 0xC5AB08FD33C1B5A7 ^ v411, 28) ^ (v413 ^ 0xC5AB08FD33C1B5A7 ^ v411 ^ ((v413 ^ 0xC5AB08FD33C1B5A7 ^ v411) >> 19) | ((v413 ^ 0xC5AB08FD33C1B5A7 ^ v411) << 45));
  v421 = ((v418 ^ 0x318CC080266427A3 ^ (v418 >> 61) ^ -(v418 ^ 0x318CC080266427A3 ^ (v418 >> 61)) ^ (8 * (v418 ^ 0x318CC080266427A2) - (v418 ^ 0x318CC080266427A3 ^ (v418 >> 61) ^ (8 * (v418 ^ 0x318CC080266427A2))))) + 8 * (v418 ^ 0x318CC080266427A2)) ^ __ROR8__(v418 ^ 0x318CC080266427A2, 39);
  v422 = v411 ^ 0xA0B866C79876C7E4 ^ __ROR8__(v411 ^ 0xA0B866C79876C7E4, 7) ^ ((v411 ^ 0xA0B866C79876C7E4) >> 41) ^ ((v411 ^ 0xA0B866C79876C7E4) << 23);
  v423 = v422 & 0x4000;
  v424 = (v417 & 0x1000000000000 | 0xCC98C5A695FE0D08) ^ v417 & 0xFFFEFFFFFFFFFFFFLL ^ __ROR8__((v417 & 0x1000000000000 | 0xCC98C5A695FE0D08) ^ v417 & 0xFFFEFFFFFFFFFFFFLL, 10) ^ (((v417 & 0x1000000000000 | 0xCC98C5A695FE0D08) ^ v417 & 0xFFFEFFFFFFFFFFFFLL) >> 17) ^ (((v417 & 0x1000000000000 | 0xCC98C5A695FE0D08) ^ v417 & 0xFFFEFFFFFFFFFFFFLL) << 47);
  v425 = v424 ^ v422;
  if ((v422 & 0x4000 & v420) != 0)
  {
    v423 = -v423;
  }

  v426 = (v423 + v420) ^ v422 & 0xFFFFFFFFFFFFBFFFLL;
  v427 = v419 ^ __ROR8__(v419, 1) ^ (v419 >> 6) ^ (v419 << 58);
  v428 = v421 ^ v427;
  v429 = v424 & ~(v421 ^ v427);
  v430 = v426 & ~v425;
  v431 = v427 & ~v421;
  v432 = v425 ^ v421 & ~v426;
  v433 = v429 ^ v421;
  v434 = v426 ^ v431;
  v435 = v433 & 0x10000000000000;
  v436 = v434 ^ 0xE78A8F8F26E90B2BLL ^ v432;
  v437 = v433 & 0xFFEFFFFFFFFFFFFFLL;
  v438 = v422 & ~v424 ^ v428;
  v439 = v432 & 0x10000000000 | 0xF14770720A54D309;
  v440 = v432 & 0xFFFFFEFFFFFFFFFFLL;
  if ((v435 & v434) != 0)
  {
    v435 = -v435;
  }

  v441 = v435 + v434;
  v442 = v438 ^ 0xA2A16E7D4060C2ACLL;
  v443 = v439 ^ v440;
  v444 = v424 ^ 0x1DE76D00F7B2971ELL ^ v430 ^ v438;
  v445 = (v441 ^ v437) + 0x68ABEAE5737B7693 - ((2 * (v441 ^ v437)) & 0xD157D5CAE6F6ED26);
  v446 = (8 * v445) & 0x8000000000000;
  *(&v448 + 1) = v438;
  *&v448 = v438 ^ 0xA2A16E7D4060C2ACLL;
  v447 = v448 >> 1;
  if ((v446 & v445) != 0)
  {
    v446 = -v446;
  }

  v449 = (8 * v445) & 0xFFF7FFFFFFFFFFFFLL ^ __ROR8__(v445, 39) ^ (v446 + (v445 ^ (v445 >> 61)));
  v450 = v447 ^ v442 ^ (v442 >> 6) ^ (v442 << 58);
  v451 = v443 ^ __ROR8__(v443, 7) ^ (v443 >> 41) ^ (v443 << 23);
  v452 = v444 ^ __ROR8__(v444, 10) ^ (v444 >> 17) ^ (v444 << 47);
  v453 = ((v436 >> 28) | (v436 << 45)) ^ (v436 << 36) ^ (((v436 >> 19) ^ -(v436 >> 19) ^ (2 * ((v436 >> 19) & v436) - (v436 >> 19))) + v436) ^ v451;
  v454 = v451 ^ v452;
  v455 = v449 ^ v450;
  v456 = v451 & ~v452;
  v457 = v449 ^ v456;
  v458 = v450 & ~v449;
  v459 = v449 & ~v453 ^ v454;
  v460 = v453 & ~v454;
  v461 = v455 ^ v456;
  v462 = __ROR8__(__ROR8__(v449 ^ v456 ^ -(v449 ^ v456) ^ (v458 - (v449 ^ v456 ^ v458)), 51) ^ 0xB1FE630E876701CELL, 13);
  v463 = v452 & ~v455;
  v464 = v457 ^ v453 ^ ((v462 ^ 0xE758FF318743B38) + v458);
  v465 = v464 ^ v459;
  v466 = v464 ^ v459 ^ 0xB6B768613EBB9D27;
  v467 = v461 ^ ((v460 ^ v452) - ((2 * (v460 ^ v452)) & 0xE22A148954D4A2BELL) + 0x71150A44AA6A515FLL);
  *(&v469 + 1) = (v466 ^ -v466 ^ ((v466 >> 19) - ((v466 >> 19) ^ v466))) + (v466 >> 19);
  *&v469 = *(&v469 + 1) ^ (v466 << 45);
  v468 = v469 >> 2;
  v470 = v467 ^ 0x50673FD491973D66;
  v471 = v449 ^ v463 ^ 0x571B3575A2341BFALL ^ v464;
  v472 = (v467 >> 10) ^ 0x1C4542912A9A94;
  *&v469 = __ROR8__(v466, 30);
  v473 = v461 ^ 0xF44A3AE8CEC80918;
  v474 = (v471 >> 61) + v471 - 2 * ((v471 >> 61) & v471);
  *&v469 = __ROR8__(v469 & 0xC0000003FFFFFFFFLL ^ 0xA2D102F68AC20279 ^ v468, 62);
  v475 = ((v469 - (v469 ^ 0x8B440BDA2B0809E6)) ^ 0xFFFFFFFFFFFFFFFCLL) + v469;
  v476 = v472 & 0xFFFFBFFFFFFFFFFFLL;
  v477 = v472 & 0x400000000000;
  v478 = v475 ^ (v465 << 36);
  v479 = v474 + 8 * v471 - 2 * (v474 & (8 * v471));
  v480 = v479 & 0x960FD72D856E3579 ^ (v471 >> 39) & 0x16E3579;
  if ((v477 & v467) != 0)
  {
    v481 = -v477;
  }

  else
  {
    v481 = v477;
  }

  v482 = v479 & 0x69F028D27A91CA86 ^ (v471 >> 39) & 0x91CA86;
  v483 = (v476 ^ (v467 >> 17) ^ 0x66FCB5DDC75545CFLL) & ((v470 << 54) ^ 0xBFFFFFFFFFFFFFFFLL) | (v470 << 54) & 0x9900000000000000;
  v484 = byte_101048F95[(v475 - 18) ^ 0x1FLL];
  v265[86] = BYTE1(v475);
  v265[26] = BYTE3(v475);
  v485 = v265;
  v486 = (v481 + (v467 ^ 0xAD3A2E22C9027A26)) ^ v483;
  *(&v487 + 1) = v461;
  *&v487 = v461 ^ 0xF44A3AE8CEC80918;
  v488 = v473 ^ (v461 >> 6) ^ (v487 >> 1);
  v489 = STACK[0x718];
  *(v489 + 11) = BYTE2(v475);
  v490 = (v480 | v482) ^ (v471 << 25);
  v6[67] = (((v478 ^ 0xEBB9D27000000000) >> 32) - ((2 * ((v478 ^ 0xEBB9D27000000000) >> 32)) & 0x9A) - 51) ^ 0xCD;
  v265[120] = (v478 ^ 0xEBB9D27000000000) >> 56;
  v6[23] = ((v480 | v482) - ((2 * (v480 | v482)) & 0xAE) - 41) ^ 0xD7;
  v491 = STACK[0x7E0];
  *(v491 + 9) = v484 ^ 0x8F;
  v485[18] = (v478 ^ 0xEBB9D27000000000) >> 48;
  v267[63] = ((v478 ^ 0xEBB9D27000000000) >> 32) >> 8;
  v485[30] = (v480 | v482) >> 8;
  v492 = STACK[0x7F0];
  v493 = (((v480 | v482) >> 16) - 38 - ((2 * (((v480 | v482) >> 16) - 38)) & 0xBC) - 34) ^ *(STACK[0x7F0] + ((((v480 | v482) >> 16) - 38) ^ 0x1ELL));
  v267[62] = 45 * (((v493 ^ 0x38) + 72) ^ ((v493 ^ 0xA1) - 33) ^ ((v493 ^ 0x3A) + 70)) + 39;
  v494 = *(v492 + ((BYTE3(v490) - 38) ^ 0x1ELL));
  v495 = (BYTE3(v490) - 38) & 0xFE | (BYTE3(v490) ^ v494) & 1;
  v496 = (v495 ^ 1) + ((2 * ((v495 ^ 1 | 0x7C) ^ v495)) ^ 5);
  v497 = (BYTE4(v490) + 79);
  v267[61] = (45 * ((v496 - 3) ^ v494 & 0xFE)) ^ 0x80;
  v498 = STACK[0x7D0];
  v499 = (v497 ^ 0xF5) + ((BYTE4(v490) + 79) ^ 0xFC) - ((2 * ((v497 ^ 0xF5) + ((BYTE4(v490) + 79) ^ 0xFC))) & 0xDA) - 19;
  v500 = *(STACK[0x7D0] + (((v497 ^ 0xF5) - (v497 ^ 0x75)) ^ 0xFFFFFF00) + (v497 ^ 0xF5)) - (((v499 ^ 0x63) - 99) ^ ((v499 ^ 0x86) + 122) ^ ((v499 ^ 8) - 8)) + 49;
  v501 = v500 & 0xE0 ^ 0x83;
  v317[9] = v488 ^ 0x11;
  *(v489 + 40) = BYTE5(v490);
  v502 = v459 ^ 0xC82025ADB5EE3DBDLL;
  v310[4] = -101 * (v500 ^ (2 * ((v500 ^ 0x62) & (2 * ((v500 ^ 0x62) & (2 * ((v500 ^ 0x62) & (2 * ((v500 ^ 0x62) & (2 * ((v500 ^ 0x42) & (2 * ((v500 ^ 0x42) & 2 ^ v501)) ^ v501)) ^ v501)) ^ v501)) ^ v501)) ^ v501)) ^ 0xCF);
  *(v491 + 8) = HIBYTE(v490);
  v503 = v502 >> 41;
  *&v487 = __ROR8__(v502, 7);
  v504 = ((((v470 << 47) ^ 0xF1F19044CA00431BLL) - 0x14D36448D870C238) ^ (((v470 << 47) ^ 0x3195457862FD8468) + 0x2B484E8B8F72FAB5) ^ (((v470 << 47) ^ 0x63C4D53CA8FDC773) + 0x7919DECF4572B9B0)) + 0x1D9394033AC876EALL + (((v486 ^ 0xE10914B6B7787E43) + 0x3F2D9C37A90C8F40) ^ ((v486 ^ 0x60964A37908D159) - 0x27D213DD9883DFDALL) ^ ((v486 ^ 0x11CB989C07AC545ELL) - 0x3010EFE2E6275ADDLL));
  v505 = v502 ^ v487 ^ -(v502 ^ v487);
  v506 = v502 ^ v487 ^ (v502 >> 41);
  v502 <<= 23;
  v507 = (v505 ^ (v503 - v506)) + v503;
  v508 = v488 ^ (v473 << 58);
  v509 = (v502 & 0xFC979118FD000000 ^ 0x91B4AFE9D6EBBAB1 ^ v507 & 0xFC979118FD189D41) & (v507 & 0x3686EE702E762BELL ^ 0xFFFFBFFBFFFFBFF7) | v507 & 0x24840060004400ELL;
  v485[113] = BYTE1(v488) ^ 0x7B;
  *(v489 + 13) = BYTE6(v490);
  v310[22] = BYTE2(v488) ^ 0xC5;
  v485[53] = BYTE6(v488) ^ 0xEB;
  v485[96] = BYTE4(v488) ^ 0xB8;
  v485[71] = BYTE3(v488) ^ 0x10;
  *(v489 + 33) = BYTE5(v488) ^ 0x67;
  v317[47] = BYTE2(v486) ^ 0xDC;
  v310[82] = BYTE1(v486) ^ 0xFB;
  v317[56] = v486 ^ 0x44;
  v485[93] = HIBYTE(v508) ^ 0x40;
  LODWORD(v507) = 2 * ((((BYTE3(v486) ^ 0xC9) + 79) ^ 0x75) & (((BYTE3(v486) ^ 0xC9) + 79) ^ 0x7C)) - ((4 * ((((BYTE3(v486) ^ 0xC9) + 79) ^ 0x75) & (((BYTE3(v486) ^ 0xC9) + 79) ^ 0x7C)) + 18) & 0x18) + 21;
  LOBYTE(v489) = *(v498 + (((BYTE3(v486) ^ 0xC9) + 79) ^ 0x75)) - (((v507 ^ 0xB5) + 75) ^ ((v507 ^ 0xB) - 11) ^ ((v507 ^ 0xB2) + 78)) + 47;
  LOBYTE(v507) = v489 & 0xCD ^ 4;
  LOBYTE(v489) = v489 ^ (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * (v489 & (2 * v507) ^ v507)) ^ v507)) ^ v507)) ^ v507)) ^ v507)) ^ v507));
  LOBYTE(v507) = ((v489 ^ 0x8D) + 63) ^ ((v489 ^ 0x17) - 91) ^ ((v489 ^ 0x78) - 52);
  v317[38] = BYTE1(v509) ^ 0xBA;
  v510 = v509 ^ v502 & 0x3686EE702800000;
  v317[6] = v509 ^ 0xB1;
  v511 = v504 - ((2 * ((v486 ^ 0x76CBA80041C08944) & ((v470 << 47) ^ 0x5E82BF0441E389CCLL) ^ v486 & 0x7D22BF0441E389CCLL)) ^ 0xE805500083811288);
  v310[63] = -101 * v507 + 90;
  v310[41] = BYTE6(v511);
  v310[66] = BYTE5(v504);
  v310[49] = HIBYTE(v511);
  v310[56] = BYTE4(v486) ^ 0x89;
  v512 = v310;
  v513 = ((BYTE2(v510) ^ 0xEB) - 38 - ((2 * ((BYTE2(v510) ^ 0xEB) - 38)) & 0xEC) + 118) ^ *(v492 + (((BYTE2(v510) ^ 0xEB) - 38) ^ 0x1ELL));
  v485[9] = ((v509 ^ v502 & 0x2800000) >> 24) ^ 0xD6;
  v317[77] = BYTE6(v510) ^ 0xB4;
  v485[1] = 45 * (((v513 ^ 0x87) + 63) ^ ((v513 ^ 0x28) - 110) ^ ((v513 ^ 0xA4) + 30)) - 119;
  v317[17] = BYTE5(v510) ^ 0xAF;
  v317[69] = BYTE4(v510) ^ 0xE9;
  v512[61] = HIBYTE(v510) ^ 0x91;
  *(v485 + 15) = v308 + 1;
  STACK[0x1428] = v478 ^ 0xD2A5D2787B004B68;
  v514 = STACK[0x810];
  v515 = LODWORD(STACK[0x810]) != -149226432;
  LODWORD(STACK[0x880]) -= 838949248;
  return (*(v364 + 8 * (v514 ^ 0x5565D450 ^ (10875 * v515))))();
}

uint64_t sub_100B0E7F4()
{
  LODWORD(STACK[0xA5C]) = v3;
  v4 = (*(v1 + 8 * (v0 + v2)))(STACK[0x9B0]);
  STACK[0x9B0] = 0;
  return (*(v1 + 8 * (v0 - 503376375)))(v4);
}

unint64_t sub_100B0E898(unint64_t result)
{
  v1 = (*result ^ (1089234077 * (((result | 0x26BB3C895650A626) - result + (result & 0xD944C376A9AF59D9)) ^ 0x7B6727AAB60D7A5ELL))) - 0x515F4A41AF7E8E42;
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100B0E930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x13B8];
  STACK[0x870] = STACK[0xF28];
  return (*(v5 + 8 * ((v4 + 1211074320) ^ 0x28ED)))(a1, a2, a3, a4, v6);
}

void sub_100B0EA3C(_DWORD *a1)
{
  v1 = *a1 ^ (1097177827 * ((2003086012 - (a1 | 0x7764AABC) + (a1 | 0x889B5543)) ^ 0xCC08032A));
  v2 = *(&off_101353600 + (v1 ^ 0x6AE6));
  v5 = (1917435887 * ((&v4 & 0xB9F8EA31 | ~(&v4 | 0xB9F8EA31)) ^ 0xA0BC4EC8)) ^ (v1 - 1723137826);
  v4 = v2 - 4;
  v3 = *(&off_101353600 + (v1 - 25303)) - 4;
  (*&v3[8 * (v1 + 5123)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100B0EB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x8A0] = STACK[0xA68];
  STACK[0x890] = *v5 & 0xFFFFFFFFFFFFFFF8;
  return (*(v4 + 8 * v3))(63, a2, a3, STACK[0x820]);
}

uint64_t sub_100B0EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x3F0] = v6;
  v13 = LODWORD(STACK[0x4B0]) + 1211077855;
  LODWORD(STACK[0x460]) = v13;
  v14 = *(v10 + 8 * v13);
  STACK[0x3E0] = v8 & 0xFFFFFFF0;
  v15 = STACK[0x5D8];
  STACK[0x3E8] = v9;
  *&STACK[0x4A0] = v11;
  *&STACK[0x490] = v12;
  return v14(a1, a2, a3, 0x101237000, a5, (v8 & 0xFFFFFFF0) - 16, v5 + v9 + v15, v7);
}

uint64_t sub_100B0EEB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v14 = STACK[0x640] + 4 * (v7 * v13 + a7 - (((((v7 * v13 + a7) >> 3) * a5) >> 32) >> 7) * v11);
  v15 = *(*STACK[0x660] + (*v12 & STACK[0x658]));
  v16 = STACK[0x640] + 4 * ((v7 * v13 + 2977604) % (a2 - 5672));
  v17 = *v9 ^ v10;
  *(v16 - 0x34EE34220E8AC3B8) = (-1962600273 * v16) ^ *(v14 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v14) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + v15 + 673210726) & v17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + v15 + v8) & v17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + 673210726) & v17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + v8) & v17));
  return (*(STACK[0x668] + 8 * ((17356 * (v7 == 255)) ^ a2)))();
}

uint64_t sub_100B0EFE0(uint64_t a1, _DWORD *a2)
{
  LODWORD(STACK[0x824]) = a2[22];
  LODWORD(STACK[0x8D0]) = a2[23];
  LODWORD(STACK[0x8B0]) = a2[24];
  STACK[0x720] = a2;
  LODWORD(STACK[0x8F4]) = a2[25];
  return (*(v3 + 8 * (v2 + 5882)))();
}

uint64_t sub_100B0F084@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 22928)))(a1);
  *(STACK[0x1318] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100B0F238(int a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7.n128_u64[0] = 0x3636363636363636;
  v7.n128_u64[1] = 0x3636363636363636;
  v8.n128_u64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v8.n128_u64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v9.n128_u64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v9.n128_u64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v10.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v10.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  return (*(v5 + 8 * (((a1 >= ((v6 - 24736) | 0x193) - 6031) * ((v6 - 16379) ^ 0x36BB)) ^ v6)))(a2, a3, a4, a5, v7, v8, v9, v10);
}

uint64_t sub_100B0F354()
{
  LODWORD(STACK[0x4DE0]) = LODWORD(STACK[0x4E20]) + LODWORD(STACK[0x4DD0]);
  v1 = *(STACK[0x57D8] + 8 * (v0 - 7402));
  LODWORD(STACK[0x3230]) = LODWORD(STACK[0x4B80]) | LODWORD(STACK[0x4DA8]);
  return v1(86454940);
}

uint64_t sub_100B0F3F4@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  STACK[0x2C8] = v43;
  v45 = a2 + 4447;
  v46 = a2 + 21692;
  v47 = (*(v44 + 8 * (a2 + 21692)))(1028);
  v48 = (*(v44 + 8 * v46))(1028);
  STACK[0x2A8] = v47;
  if (v47)
  {
    v56 = v48 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = !v56;
  return (*(v44 + 8 * (v57 ^ v45)))(v48, v49, v50, v51, v52, v53, v54, v55, a3, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100B0F478()
{
  v2 = *(v0 + 295);
  *(v0 + 1871) = v2;
  v3 = *(v0 + 2296);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v3 & 0x60E8E6D0) + 837241408 + (v3 & 0x9F171928 | 0x60E8E6D6) + 1942)));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v7 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xA1B29DC5D776132BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0xF3D04C9AB4115901 - ((v19 + v18) | 0xF3D04C9AB4115901) + ((v19 + v18) | 0xC2FB3654BEEA6FELL)) ^ 0xD4E8007A81F77F20;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v3) = 8 * (v3 & 7);
  v23 = ((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3;
  v24 = STACK[0x8070];
  v25 = *(STACK[0x8070] + 7955);
  *(v0 + 1872) = v23;
  v26 = *(v5 + (v6 & ((v4 ^ 0xDBF7BCCA) - 1227326494 + ((2 * v4) & 0xB7EF7990))));
  v27 = (v26 + v8 - ((2 * (v26 + v8)) & 0xB32D798BE3BB21F6) - 0x2669433A0E226F05) ^ 0x1B39826FCE2C281FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x5DC65B64AFE2754) + 0x2EE32DB257F13AALL) ^ 0x671C66063DF2A756;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x6FF046966119128DLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__((0x5F96853AAE4CFD62 - ((v34 + v33) | 0x5F96853AAE4CFD62) + ((v34 + v33) | 0xA0697AC551B3029DLL)) ^ 0x1DBE70086C511B6, 8);
  v36 = (0x5F96853AAE4CFD62 - ((v34 + v33) | 0x5F96853AAE4CFD62) + ((v34 + v33) | 0xA0697AC551B3029DLL)) ^ 0x1DBE70086C511B6 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ v1;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5455012E8AB1C38FLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  *(v24 + 7955) = v2 ^ v25 ^ (((0xB822B796D04E2210 - ((v43 + v42) | 0xB822B796D04E2210) + ((v43 + v42) | 0x47DD48692FB1DDEFLL)) ^ 0x289228D521B3830FLL) >> v3);
  v44 = (STACK[0x8070] + 7362);
  *(v0 + 2304) = v44;
  *(v0 + 2319) = *v44;
  v45 = *(v0 + 3920) + 25;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) + 29451));
  *(v0 + 2320) = v45;
  *(v0 + 280) = v47;
  return (*(v46 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_100B0F860@<X0>(int a1@<W8>)
{
  v1 = (a1 - 271618112) & 0x103063FE;
  v2 = STACK[0x8B0];
  v3 = (*(STACK[0x8B0] + 8 * (v1 ^ 0x5FA0u)))(32);
  STACK[0x14D8] = v3;
  return (*(v2 + 8 * ((((v1 ^ 0x3D ^ (v3 == 0)) & 1) * (((v1 - 502) | 0x53) - 8661)) ^ v1)))();
}

uint64_t sub_100B0F8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W7>, unsigned __int8 *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v33 - 176) = a1;
  v34 = *(v33 - 128);
  v35 = *(a2 + 8 * (v34 ^ 0x2DAE)) - 12;
  v36 = ((a5[3] ^ 0x97) - 58) ^ *(v35 + (a5[3] ^ 0xEBLL));
  v37 = *(a2 + 8 * (v34 - 9817));
  v38 = *(v37 + (a5[9] ^ 0x76));
  v39 = a5[12];
  *(v33 - 144) = v31;
  v40 = *(a2 + 8 * (v34 - 9154));
  v41 = a5[2];
  v42 = *(a2 + 8 * (v34 - 9054)) - 4;
  v43 = *(v42 + (v41 ^ 0xEE));
  *(v33 - 160) = v39 ^ 0x82 ^ ((v39 ^ 0x82) - 6) ^ 0x32 ^ *(v40 + (v39 ^ 0x93));
  v44 = v41 ^ v43 ^ 0x1F;
  LODWORD(v39) = (*(v37 + (a5[5] ^ 0x6DLL)) ^ 0x39) << 16;
  v45 = a5[11];
  v46 = *(v35 + (v45 ^ 0x67));
  v47 = v36 | (v44 << 8) | ((*(v37 + (a5[1] ^ 2)) ^ 0x96) << 16);
  v48 = a5[4];
  v49 = *(v40 + (v48 ^ 0x11));
  *(v33 - 168) = *(v37 + (a5[13] ^ 0xA9)) ^ 0x5E;
  v50 = v46 ^ ((v45 ^ 0x1B) - 58) ^ 0xC8 | ((v38 ^ 0x5A) << 16);
  LODWORD(v39) = v39 | ((v48 ^ (v48 - 6) ^ 0x2C ^ v49) << 24) | *(v35 + (a5[7] ^ 0x5BLL)) ^ ((a5[7] ^ 0x27) - 58) ^ 0xC8;
  v51 = *(v40 + (*a5 ^ 0xAFLL)) ^ *a5 ^ 0xFFFFFFBE ^ ((*a5 ^ 0xFFFFFFBE) - 6) ^ 0x84;
  v52 = a5[8];
  v53 = (v52 ^ 0x5E) - 6;
  v54 = v53 + (v52 ^ 0x5E);
  v55 = v53 & (v52 ^ 0x5E);
  LODWORD(v52) = *(v40 + (v52 ^ 0x4F));
  *(v33 - 184) = *(v35 + (a5[15] ^ 0x8ELL)) ^ ((a5[15] ^ 0xF2) - 58) ^ 0xC8;
  v56 = v47 | (v51 << 24);
  v57 = v50 | ((v52 ^ (v54 - 2 * v55) ^ 0x46) << 24);
  v58 = a5[6];
  v59 = *(v42 + (v58 ^ 0x3C));
  *(v33 - 188) = a5[14] ^ 0x24 ^ *(v42 + (a5[14] ^ 0x2FLL));
  *(v33 - 148) = (a5[10] ^ 0x5C ^ *(v42 + (a5[10] ^ 0xF4))) << 8;
  *(v33 - 192) = v57 ^ 0x9DFBFFE9;
  *(v33 - 196) = v57 & 0x6A740016;
  LODWORD(v62) = v39 | ((v58 ^ 0xE5 ^ v59) << 8);
  *(v33 - 208) = v62 ^ 0x43;
  HIDWORD(a31) = v56 ^ 0x7C;
  HIDWORD(v62) = a4;
  *(v33 - 120) = a3;
  v60 = *(a3 + 8 * v34);
  *(v33 - 136) = v32;
  return v60(4193034353, 2794016582, 1397008290, 2517839681, 2007932949, 33556224, 4294967205, 4294967181, a6, a7, a8, a9, a10, a11, a12, a13, a14, v62, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v42, v40, v37, v35, a31);
}

uint64_t sub_100B0FD50(uint64_t a1)
{
  LODWORD(STACK[0xBFC]) = v2;
  STACK[0xD98] = STACK[0x9F0];
  STACK[0xC00] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x2C5A ^ (v1 + 24398))))(a1, 1211082140);
}

uint64_t sub_100B0FDA8()
{
  v3 = STACK[0x1BD8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0x19F0] = v3;
  return (*(v2 + 8 * ((985 * (v3 > STACK[0x1BD0])) ^ (v1 - 1211071434))))();
}

uint64_t sub_100B101F0()
{
  LODWORD(STACK[0x530]) = 0;
  v4 = *(v3 + 8 * v0);
  v5 = STACK[0x4D0];
  STACK[0x490] = v2;
  STACK[0x4C0] = v2 ^ v5;
  STACK[0x4A0] = v1;
  return v4();
}

uint64_t sub_100B1039C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v62 = *(&STACK[0xC30] + (v61 + a5 * a7) % 0x1540u);
  *(&a61 + (a3 + 1633 * a5) % 0xA88u) = (((v62 ^ ((a6 ^ 0x13) + 115)) + 108) ^ ((v62 ^ 0xCB) + 39) ^ ((v62 ^ 0x3F) - 45)) - 65;
  return (*(a60 + 8 * ((8185 * (((a5 + 1 - a6) | (a6 - (a5 + 1))) >= 0)) ^ (a6 + 19946))))();
}

uint64_t sub_100B1045C@<X0>(char a1@<W0>, char a2@<W2>, char a3@<W4>, char a4@<W5>, char a5@<W7>, char a6@<W8>)
{
  v17 = LODWORD(STACK[0x2E1C]) | LODWORD(STACK[0x2E0C]);
  v18 = STACK[0x2E20] ^ STACK[0x3750];
  v19 = STACK[0xFE40];
  STACK[0x56E0] = STACK[0xFE40];
  v19[92] = a2;
  v19[86] = v14;
  v20 = (2 * v9) ^ 0xE5C;
  v19[93] = v12;
  v19[83] = v7;
  v19[90] = a3;
  v19[82] = v6;
  v19[84] = v16;
  v19[88] = a6;
  v19[85] = v10;
  v19[81] = a4;
  v19[80] = v8;
  v19[95] = v11;
  v19[87] = a1;
  v19[94] = v13;
  v19[91] = v15;
  v19[89] = a5;
  v21 = STACK[0x49F0];
  v22 = *STACK[0x49F0];
  v23 = (v18 ^ STACK[0x3A08] ^ 0x45) + STACK[0x3A08];
  STACK[0x56F0] = v23;
  v24 = v17 ^ LODWORD(STACK[0x2E10]);
  LODWORD(STACK[0x5700]) = v20;
  v25 = (v20 - 18231) & -v23;
  v26 = v23 & 7;
  if ((v23 & 7) != 0)
  {
    v27 = 255;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 << v25;
  v29 = 16843009 * v28;
  if ((v23 & 7) != 0)
  {
    v30 = ~v28;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29 ^ v30 & STACK[0x2E14];
  v32 = 16843009 * v24 + 1354804236;
  v33 = (v32 ^ 0xAE3E03F0) & (2 * (v32 & 0xAF3F53F4)) ^ v32 & 0xAF3F53F4;
  v34 = ((2 * (v32 ^ 0xF25C82F8)) ^ 0xBAC7A218) & (v32 ^ 0xF25C82F8);
  v35 = v32 ^ (2 * (v34 & (4 * v34) & (16 * (v34 & (4 * v33) ^ v33)) ^ v34 & (4 * v33) ^ v33));
  v36 = STACK[0x2E70];
  LODWORD(STACK[0x5760]) = v31 >> LODWORD(STACK[0x2E70]);
  v37 = v35 ^ 0xFFFFFFAF;
  v38 = (((v35 ^ 0xAF ^ v22) & (v31 >> v36)) << v36) + ((v35 ^ 0xAF ^ v22) >> (v23 & 7));
  v39 = STACK[0x2E68];
  v40 = 2 * LODWORD(STACK[0x2E08]);
  v41 = v40 & (4 * ((v38 ^ (2 * (v38 & v39))) & v39)) ^ (v38 ^ (2 * (v38 & v39)));
  v42 = 4 * (STACK[0x2E68] & v40);
  v43 = v40 & 0xF0;
  v44 = STACK[0x5490];
  LOBYTE(v33) = *((v41 ^ 0x8C ^ v42 & (16 * (v41 & STACK[0x2E68])) & v43) + STACK[0x5490] + 12591);
  v45 = LODWORD(STACK[0x2E18]) ^ v17 ^ 7;
  v46 = (((v33 ^ 0x67) - 103) ^ ((v33 ^ 0xD6) + 42) ^ ((v33 ^ 0xB4) + 76)) - 27;
  v47 = (((16843009 * v45 - 1415304972) ^ 0xC0760E7A) - 1808934542) ^ (16843009 * v45 - 1415304972) ^ (((16843009 * v45 - 1415304972) ^ 0xA678B772) - 232562566) ^ (((16843009 * v45 - 1415304972) ^ 0x32DD6C13) + 1720105753) ^ (((16843009 * v45 - 1415304972) ^ 0xFF77FDEF) - 1423168795);
  v48 = STACK[0x2E64];
  v49 = LODWORD(STACK[0x2E64]) >> v25;
  *v21 = v46 ^ (32 * v33) ^ (2 * v46) ^ 0xCA;
  v50 = v21[1] ^ v47;
  v51 = v47;
  LODWORD(STACK[0x57B0]) = 2 * v49;
  v52 = STACK[0x2E6C];
  v53 = (((v49 - ((2 * v49) & 0xBF) + 95) & 0x63 ^ 0x43 ^ (v50 ^ 0x6B) & ((v49 - ((2 * v49) & 0xBF) + 95) ^ 0x5F)) << v25) + ((v50 ^ 8) >> LODWORD(STACK[0x2E6C]));
  v54 = v40 & (4 * ((v53 ^ (2 * (v53 & v39))) & v39)) ^ (v53 ^ (2 * (v53 & v39)));
  v21[1] = *((v54 ^ 0x5A ^ v42 & (16 * (v54 & v39)) & v43) + v44 + 12331) ^ 0x47;
  v55 = v21[2] ^ v35 ^ 0x18;
  v56 = v35 ^ 0x18;
  LODWORD(STACK[0x5720]) = v35 ^ 0x18;
  v57 = v31 >> v25;
  v58 = ((((v31 >> v25) ^ 0xFFFFFFC0) & 0x8B ^ v55 & 0xC0 ^ (v55 ^ 0x3C) & ((v31 >> v25) ^ 0xFFFFFFC0) ^ 0x80) << v25) ^ ((v55 ^ 0xB7) >> v52);
  v59 = (2 * (v58 & v39 & 0x7F)) ^ v58;
  LOBYTE(v59) = *((v40 & (4 * (v59 & v39)) ^ v59 ^ 0x66 ^ v42 & (16 * ((v40 & (4 * (v59 & v39)) ^ v59) & v39)) & v43) + v44 + 12591);
  LOBYTE(v55) = (((v59 ^ 0xB1) + 79) ^ ((v59 ^ 0x1F) - 31) ^ ((v59 ^ 0xAB) + 85)) - 27;
  v21[2] = v55 ^ (32 * v59) ^ (2 * v55) ^ 0x89;
  v60 = ((((v48 >> v36) ^ 5) & 0x75 ^ (v21[3] ^ v56) & 5 ^ (v21[3] ^ v56 ^ 0xC2) & ((v48 >> v36) ^ 5) ^ 5) << v36) | ((v21[3] ^ v56 ^ 0xB7) >> v26);
  v61 = (2 * (v60 & v39 & 0x7F)) ^ v60;
  v21[3] = *((v40 & (4 * (v61 & v39)) ^ v61 ^ v42 & (16 * ((v40 & (4 * (v61 & v39)) ^ v61) & v39)) & v43 ^ 0x1Cu) + v44 + 12331) ^ 0xAE;
  LOBYTE(v61) = v21[4];
  LODWORD(STACK[0x5710]) = v51;
  v62 = (((v51 ^ 8 ^ v61) & (v48 >> v36)) << v36) + ((v51 ^ 8 ^ v61) >> v52);
  v63 = v40 & (4 * ((v62 ^ (2 * (v62 & v39))) & v39)) ^ (v62 ^ (2 * (v62 & v39)));
  v21[4] = *((v63 ^ 0x77 ^ v42 & (16 * (v63 & v39)) & v43) + v44 + 12331) ^ 0xD9;
  v64 = (((v51 ^ 8 ^ v21[5]) & v57) << v25) | ((v51 ^ 8 ^ v21[5]) >> v26);
  v65 = (2 * (v64 & v39 & 0x7F)) ^ v64;
  v21[5] = *((v40 & (4 * (v65 & v39)) ^ v65 ^ 0x98 ^ v42 & (16 * ((v40 & (4 * (v65 & v39)) ^ v65) & v39)) & v43) + v44 + 12331) ^ 0x3C;
  v66 = (((v37 ^ v21[6]) & v57) << v25) + ((v37 ^ v21[6]) >> v52);
  v67 = v40 & (4 * ((v66 ^ (2 * (v66 & v39))) & v39)) ^ (v66 ^ (2 * (v66 & v39)));
  v21[6] = *((v67 ^ 0x96 ^ v42 & (16 * (v67 & v39)) & v43) + v44 + 12331) ^ 0xD8;
  v68 = v21[7] ^ v51;
  v69 = v48 >> v36;
  v70 = 2 * (v48 >> v36);
  LODWORD(STACK[0x5740]) = v70;
  v71 = (((v69 - (v70 & 0x6A) - 75) & 0x6D ^ 0x25 ^ (v68 ^ 0x65) & ((v69 - (v70 & 0x6A) - 75) ^ 0xB5)) << v36) | ((v68 ^ 8) >> v26);
  v72 = (2 * (v71 & v39 & 0x7F)) ^ v71;
  LOBYTE(v72) = *((v40 & (4 * (v72 & v39)) ^ v72 ^ 0x72 ^ v42 & (16 * ((v40 & (4 * (v72 & v39)) ^ v72) & v39)) & v43) + v44 + 12591);
  LOBYTE(v55) = (((v72 ^ 0x7D) - 125) ^ ((v72 ^ 0x2B) - 43) ^ ((v72 ^ 0x53) - 83)) - 27;
  v21[7] = v55 ^ (32 * v72) ^ (2 * v55) ^ 0xB8;
  v73 = (((v37 ^ v21[8]) & v57) << v25) + ((v37 ^ v21[8]) >> v52);
  v74 = v40 & (4 * ((v73 ^ (2 * (v73 & v39))) & v39)) ^ (v73 ^ (2 * (v73 & v39)));
  LOBYTE(v74) = *((v74 ^ 0x79 ^ v42 & (16 * (v74 & v39)) & v43) + v44 + 12591);
  LOBYTE(v55) = (((v74 ^ 0xE7) + 25) ^ ((v74 ^ 0xFC) + 4) ^ ((v74 ^ 0x1E) - 30)) - 27;
  v21[8] = v55 ^ (32 * v74) ^ (2 * v55) ^ 0xFA;
  LOBYTE(v74) = v37 ^ v21[9];
  LODWORD(STACK[0x5730]) = v37;
  LODWORD(STACK[0x5790]) = v48 >> v36;
  v75 = ((v74 & (v48 >> v36)) << v36) + (v74 >> v26);
  v76 = v40 & (4 * ((v75 ^ (2 * (v75 & v39))) & v39)) ^ (v75 ^ (2 * (v75 & v39)));
  LOBYTE(v76) = *((v76 ^ 0xE4 ^ v42 & (16 * (v76 & v39)) & v43) + v44 + 12591);
  v77 = (((v76 ^ 0x7F) - 127) ^ ((v76 ^ 0x5B) - 91) ^ ((v76 ^ 0x21) - 33)) - 27;
  v21[9] = v77 ^ (32 * v76) ^ (2 * v77) ^ 0xBF;
  v51 ^= 8u;
  v78 = STACK[0x5760];
  v79 = (((v51 ^ v21[10]) & STACK[0x5760]) << v36) + ((v51 ^ v21[10]) >> v52);
  v80 = v40 & (4 * ((v79 ^ (2 * (v79 & v39))) & v39)) ^ (v79 ^ (2 * (v79 & v39)));
  v21[10] = *((v80 ^ v42 & (16 * (v80 & v39)) & v43 ^ 0x1Eu) + v44 + 12331) ^ 0x5F;
  LOBYTE(v80) = v51 ^ v21[11];
  LODWORD(STACK[0x57A0]) = v51;
  v81 = v49;
  LOBYTE(v33) = v26;
  v82 = ((v80 & v49) << v25) + (v80 >> v26);
  v83 = v40 & (4 * ((v82 ^ (2 * (v82 & v39))) & v39)) ^ (v82 ^ (2 * (v82 & v39)));
  LOBYTE(v83) = *((v83 ^ 0xB ^ v42 & (16 * (v83 & v39)) & v43) + v44 + 12591);
  v84 = (((v83 ^ 0x18) - 24) ^ ((v83 ^ 0x34) - 52) ^ ((v83 ^ 0x29) - 41)) - 27;
  v21[11] = v84 ^ (32 * v83) ^ (2 * v84) ^ 0x5A;
  v85 = (v37 ^ v21[12]);
  v86 = v36;
  v87 = (((v85 & v69) << v86) + (v85 >> v26)) ^ (2 * ((((v85 & v69) << v86) + (v85 >> v26)) & v39));
  v88 = v40 & (4 * (v87 & v39)) ^ v87;
  LOBYTE(v88) = *((v88 ^ 0x48 ^ v42 & (16 * (v88 & v39)) & v43) + v44 + 12591);
  v89 = ((v88 ^ 0x62) - 98) ^ ((v88 ^ 0x3C) - 60) ^ ((v88 ^ 0x5B) - 91);
  v21[12] = (v89 - 27) ^ ((32 * v88) | 0x15) ^ (2 * (v89 - 27));
  v90 = STACK[0x5720];
  v91 = v21[13] ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x5780]) = 2 * v57;
  LODWORD(STACK[0x57C0]) = v57;
  v92 = v52;
  v93 = (((v57 - ((2 * v57) & 0xFFFFFFEA) + 117) & 0x61 ^ 0x61 ^ (v91 ^ 0xD6) & ((v57 - ((2 * v57) & 0xFFFFFFEA) + 117) ^ 0x75)) << v25) ^ ((v91 ^ 0xB7) >> v52);
  v94 = (2 * (v93 & v39 & 0x7F)) ^ v93;
  v21[13] = *((v40 & (4 * (v94 & v39)) ^ v94 ^ 0xC3 ^ v42 & (16 * ((v40 & (4 * (v94 & v39)) ^ v94) & v39)) & v43) + v44 + 12331) ^ 0x57;
  v95 = STACK[0x5710];
  v96 = v78;
  v97 = 2 * v78;
  v98 = v78 + (~(2 * v78) | 0xB1) - 88;
  LOBYTE(v78) = v33;
  v99 = ((v98 & 0x62 ^ ((v21[14] ^ v95) ^ 0x6A) & (v98 ^ 0xA7) ^ 0x22) << v36) + ((v21[14] ^ v95 ^ 8) >> v33);
  v100 = v40 & (4 * ((v99 ^ (2 * (v99 & v39))) & v39)) ^ (v99 ^ (2 * (v99 & v39)));
  v21[14] = *((v100 ^ v42 & (16 * (v100 & v39)) & v43 ^ 8u) + v44 + 12331) ^ 0x9F;
  v101 = v81;
  v102 = ((v51 ^ v21[15]) & v81) << v25;
  v103 = (v51 ^ v21[15]) >> v92;
  v104 = v92;
  v105 = (2 * ((v102 ^ v103) & v39 & 0x7F)) ^ v102 ^ v103;
  LOBYTE(v105) = *((v40 & (4 * (v105 & v39)) ^ v105 ^ 0xBD ^ v42 & (16 * ((v40 & (4 * (v105 & v39)) ^ v105) & v39)) & v43) + v44 + 12591);
  LOBYTE(v102) = (((v105 ^ 0xA5) + 91) ^ ((v105 ^ 0x7D) - 125) ^ ((v105 ^ 0xDD) + 35)) - 27;
  v21[15] = v102 ^ (32 * v105) ^ (2 * v102) ^ 0x25;
  v106 = v25;
  v107 = v78;
  v108 = (((v57 - ((2 * v57) & 0xFFFFFFF8) + 124) & 0x1A ^ (v21[16] ^ v90 ^ 0xAD) & ((v57 - ((2 * v57) & 0xFFFFFFF8) + 124) ^ 0x7C) ^ 0x18) << v25) ^ ((v21[16] ^ v90 ^ 0xB7) >> v78);
  v109 = (2 * (v108 & v39 & 0x7F)) ^ v108;
  LOBYTE(v109) = *((v40 & (4 * (v109 & v39)) ^ v109 ^ 0xAD ^ v42 & (16 * ((v40 & (4 * (v109 & v39)) ^ v109) & v39)) & v43) + v44 + 12591);
  LOBYTE(v102) = (((v109 ^ 0x35) - 53) ^ ((v109 ^ 0x47) - 71) ^ ((v109 ^ 0x77) - 119)) - 27;
  v21[16] = v102 ^ (32 * v109) ^ (2 * v102) ^ 0x41;
  v110 = STACK[0x5730];
  v111 = (((v110 ^ v21[17]) & STACK[0x5790]) << v36) + ((v110 ^ v21[17]) >> v104);
  v112 = v40 & (4 * ((v111 ^ (2 * (v111 & v39))) & v39)) ^ (v111 ^ (2 * (v111 & v39)));
  v113 = v112 ^ 0x9B ^ v42 & (16 * (v112 & v39)) & v43;
  v114 = v95;
  if (v95)
  {
    v115 = 1927933969;
  }

  else
  {
    v115 = 1927933715;
  }

  v116 = (((v95 ^ 0x2C7F27C4) + 2126103513) ^ ((v95 ^ 0x6379282C) + 834653233) ^ ((v95 ^ 0xE4A2271C) - 1234910463)) + v115;
  v117 = ((2 * (v116 ^ 0x60A9DCB2)) ^ 0xE635316E) & (v116 ^ 0x60A9DCB2) ^ (2 * (v116 ^ 0x60A9DCB2)) & 0xF31A98B6;
  v118 = v117 ^ 0x110A8891;
  v119 = (v117 ^ 0xC2101024) & (4 * (((2 * v116) & 0x2766880A ^ 0x93B34405) & v116)) ^ ((2 * v116) & 0x2766880A ^ 0x93B34405) & v116;
  v21[17] = *(v113 + v44 + 12331) ^ 0x3E;
  v120 = v116 ^ (2 * (((4 * v118) & 0x731A98B4 ^ ((4 * v118) ^ 0x4C6A62D0) & v118 ^ 0x10) & (16 * v119) ^ v119)) ^ v21[18] ^ 0xFFFFFFF8;
  v121 = ((v120 & v101) << v25) | (v120 >> v107);
  v122 = (2 * (v121 & v39 & 0x7F)) ^ v121;
  LOBYTE(v116) = *((v40 & (4 * (v122 & v39)) ^ v122 ^ 0xC9 ^ v42 & (16 * ((v40 & (4 * (v122 & v39)) ^ v122) & v39)) & v43) + v44 + 12591);
  LOBYTE(v119) = (((v116 ^ 0xFB) + 5) ^ ((v116 ^ 0xE) - 14) ^ ((v116 ^ 0xF0) + 16)) - 27;
  v21[18] = v119 ^ (32 * v116) ^ (2 * v119) ^ 0x21;
  v123 = (((v96 - (v97 & 0x58) + 44) & 0x49 ^ (v21[19] ^ v95 ^ 0x41) & ((v96 - (v97 & 0x58) + 44) ^ 0x2C) ^ 8) << v36) ^ ((v21[19] ^ v95 ^ 8) >> v104);
  v124 = (2 * (v123 & v39 & 0x7F)) ^ v123;
  v21[19] = *((v40 & (4 * (v124 & v39)) ^ v124 ^ 0xF9 ^ v42 & (16 * ((v40 & (4 * (v124 & v39)) ^ v124) & v39)) & v43) + v44 + 12331) ^ 0xFA;
  v125 = v96;
  v126 = v36;
  v127 = (((v96 ^ 0x24) & 0x2C ^ (v21[20] ^ v90) & 0x24 ^ (v21[20] ^ v90 ^ 0x9B) & (v96 ^ 0x24) ^ 0x24) << v36) ^ ((v21[20] ^ v90 ^ 0xB7) >> v104);
  v128 = (2 * (v127 & v39 & 0x7F)) ^ v127;
  LOBYTE(v128) = *((v40 & (4 * (v128 & v39)) ^ v128 ^ 0x84 ^ v42 & (16 * ((v40 & (4 * (v128 & v39)) ^ v128) & v39)) & v43) + v44 + 12591);
  LOBYTE(v119) = (((v128 ^ 0x87) + 121) ^ ((v128 ^ 0xD7) + 41) ^ ((v128 ^ 0x55) - 85)) - 27;
  v21[20] = v119 ^ (32 * v128) ^ (2 * v119) ^ 0x8A;
  v129 = (((v110 ^ v21[21]) & v101) << v25) ^ ((v110 ^ v21[21]) >> v107);
  v130 = (2 * (v129 & v39 & 0x7F)) ^ v129;
  LOBYTE(v130) = *((v40 & (4 * (v130 & v39)) ^ v130 ^ 0x98 ^ v42 & (16 * ((v40 & (4 * (v130 & v39)) ^ v130) & v39)) & v43) + v44 + 12591);
  LOBYTE(v119) = (((v130 ^ 0xB3) + 77) ^ ((v130 ^ 0x43) - 67) ^ ((v130 ^ 0xF5) + 11)) - 27;
  v21[21] = v119 ^ (32 * v130) ^ (2 * v119) ^ 0xFB;
  v131 = (((v96 - (v97 & 0xFFFFFFD8) + 108) & 0xC9 ^ 0x48 ^ (v21[22] ^ v114 ^ 0xFFFFFFC1) & ((v96 - (v97 & 0xFFFFFFD8) + 108) ^ 0x6C)) << v36) ^ ((v21[22] ^ v114 ^ 8) >> v104);
  v132 = (2 * (v131 & v39 & 0x7F)) ^ v131;
  v21[22] = *((v40 & (4 * (v132 & v39)) ^ v132 ^ 0x86 ^ v42 & (16 * ((v40 & (4 * (v132 & v39)) ^ v132) & v39)) & v43) + v44 + 12331) ^ 0xBC;
  v133 = (((v110 ^ v21[23]) & v101) << v25) | ((v110 ^ v21[23]) >> v107);
  v134 = (2 * (v133 & v39 & 0x7F)) ^ v133;
  v21[23] = *((v40 & (4 * (v134 & v39)) ^ v134 ^ v42 & (16 * ((v40 & (4 * (v134 & v39)) ^ v134) & v39)) & v43 ^ 0xCu) + v44 + 12331) ^ 0xCA;
  v135 = STACK[0x5790];
  v136 = STACK[0x5740];
  v137 = (((v135 - v136 - 1) & 0xE2 ^ 0xE2 ^ ((v21[24] ^ v114) ^ 0xEA) & (v136 - v135)) << v86) + ((v21[24] ^ v114 ^ 8) >> v107);
  v138 = v40 & (4 * ((v137 ^ (2 * (v137 & v39))) & v39)) ^ (v137 ^ (2 * (v137 & v39)));
  v21[24] = *((v138 ^ 0xC4 ^ v42 & (16 * (v138 & v39)) & v43) + v44 + 12331);
  v139 = STACK[0x57C0];
  v140 = (((v110 ^ v21[25]) & STACK[0x57C0]) << v106) ^ ((v110 ^ v21[25]) >> v104);
  v141 = (2 * (v140 & v39 & 0x7F)) ^ v140;
  v21[25] = *((v40 & (4 * (v141 & v39)) ^ v141 ^ 0x7B ^ v42 & (16 * ((v40 & (4 * (v141 & v39)) ^ v141) & v39)) & v43) + v44 + 12331) ^ 0xCC;
  v142 = (((v125 - (v97 & 0x12) - 119) & 0xEB ^ 0x89 ^ ((v21[26] ^ v114) ^ 0xE3) & ((v125 - (v97 & 0x12) - 119) ^ 0x89)) << v86) + ((v21[26] ^ v114 ^ 8) >> v107);
  v143 = v40 & (4 * ((v142 ^ (2 * (v142 & v39))) & v39)) ^ (v142 ^ (2 * (v142 & v39)));
  v21[26] = *((v143 ^ 0x46 ^ v42 & (16 * (v143 & v39)) & v43) + v44 + 12331) ^ 0x36;
  v144 = (((v110 ^ v21[27]) & v101) << v106) | ((v110 ^ v21[27]) >> v104);
  v145 = (2 * (v144 & v39 & 0x7F)) ^ v144;
  v21[27] = *((v40 & (4 * (v145 & v39)) ^ v145 ^ 0x45 ^ v42 & (16 * ((v40 & (4 * (v145 & v39)) ^ v145) & v39)) & v43) + v44 + 12331) ^ 0x34;
  v146 = STACK[0x57A0];
  v147 = (((v146 ^ v21[28]) & v139) << v106) ^ ((v146 ^ v21[28]) >> v104);
  v148 = (2 * (v147 & v39 & 0x7F)) ^ v147;
  v21[28] = *((v40 & (4 * (v148 & v39)) ^ v148 ^ 0xBB ^ v42 & (16 * ((v40 & (4 * (v148 & v39)) ^ v148) & v39)) & v43) + v44 + 12331) ^ 0x46;
  v149 = v135;
  v150 = (((v146 ^ v21[29]) & v135) << v86) ^ ((v146 ^ v21[29]) >> v107);
  v151 = (2 * (v150 & v39 & 0x7F)) ^ v150;
  LOBYTE(v151) = *((v40 & (4 * (v151 & v39)) ^ v151 ^ 0x77 ^ v42 & (16 * ((v40 & (4 * (v151 & v39)) ^ v151) & v39)) & v43) + v44 + 12591);
  LOBYTE(v119) = ((v151 ^ 0xAF) + 81) ^ ((v151 ^ 0x8A) + 118) ^ ((v151 ^ 0x20) - 32);
  v21[29] = (v119 - 27) ^ ((32 * v151) | 0x1E) ^ (2 * (v119 - 27));
  v152 = v110 ^ v21[30];
  LODWORD(STACK[0x5750]) = v101;
  v153 = ((v152 & v101) << v106) | (v152 >> v107);
  v154 = (2 * (v153 & v39 & 0x7F)) ^ v153;
  LOBYTE(v154) = *((v40 & (4 * (v154 & v39)) ^ v154 ^ 0xA9 ^ v42 & (16 * ((v40 & (4 * (v154 & v39)) ^ v154) & v39)) & v43) + v44 + 12591);
  LOBYTE(v119) = (((v154 ^ 0xE9) + 23) ^ ((v154 ^ 0x1D) - 29) ^ ((v154 ^ 0xF1) + 15)) - 27;
  v21[30] = v119 ^ ((32 * v154) | 0x14) ^ (2 * v119);
  v155 = v21[31] ^ v114;
  v156 = v125 - (v97 & 0x5E) - 81;
  LODWORD(STACK[0x56D0]) = v156;
  v157 = ((v156 & 0xA ^ 0xA ^ (v155 ^ 2) & (v156 ^ 0xAF)) << v86) ^ ((v155 ^ 8) >> v104);
  v158 = (2 * (v157 & v39 & 0x7F)) ^ v157;
  v21[31] = *((v40 & (4 * (v158 & v39)) ^ v158 ^ 0x12 ^ v42 & (16 * ((v40 & (4 * (v158 & v39)) ^ v158) & v39)) & v43) + v44 + 12331) ^ 0x4A;
  v159 = v110 ^ v21[32];
  v160 = (v110 ^ v21[32]) >> v104;
  v161 = v104;
  v162 = ((v159 & v101) << v106) ^ v160;
  v163 = (2 * (v162 & v39 & 0x7F)) ^ v162;
  v21[32] = *((v40 & (4 * (v163 & v39)) ^ v163 ^ 0x76 ^ v42 & (16 * ((v40 & (4 * (v163 & v39)) ^ v163) & v39)) & v43) + v44 + 12331) ^ 0x2A;
  v164 = STACK[0x5720];
  v165 = v97;
  v166 = v107;
  v167 = (((v125 - (v97 & 0x6E) - 73) & 0x78 ^ (v21[33] ^ v164 ^ 0xFFFFFFCF) & ((v125 - (v97 & 0x6E) - 73) ^ 0xB7) ^ 0x30) << v126) ^ ((v21[33] ^ v164 ^ 0xB7) >> v107);
  v168 = (2 * (v167 & v39 & 0x7F)) ^ v167;
  v21[33] = *((v40 & (4 * (v168 & v39)) ^ v168 ^ 0xB4 ^ v42 & (16 * ((v40 & (4 * (v168 & v39)) ^ v168) & v39)) & v43) + v44 + 12331) ^ 0x51;
  v169 = ((((v21[34] ^ v114) & 0xFFFFFFF1 | ((v135 - (v136 & 0xE) - 121) ^ 0x76) & 0xC) ^ (v21[34] ^ v114 ^ 4) & ((v135 - (v136 & 0xE) - 121) ^ 0x76)) << v126) | ((v21[34] ^ v114 ^ 8) >> v107);
  v170 = (2 * (v169 & v39 & 0x7F)) ^ v169;
  v21[34] = *((v40 & (4 * (v170 & v39)) ^ v170 ^ 0x12 ^ v42 & (16 * ((v40 & (4 * (v170 & v39)) ^ v170) & v39)) & v43) + v44 + 12331) ^ 0x4A;
  LOBYTE(v170) = v21[35] ^ v164;
  v171 = STACK[0x57C0];
  LODWORD(STACK[0x56C0]) = LODWORD(STACK[0x57C0]) - 68;
  v172 = STACK[0x5780];
  v173 = ((((~v172 | 0x89) + v171 - 68) & 0xE8 ^ 0xA8 ^ (v170 ^ 0x5F) & (((~v172 | 0x89) + v171 - 68) ^ 0xBB)) << v106) + ((v170 ^ 0xB7) >> v161);
  v174 = v40 & (4 * ((v173 ^ (2 * (v173 & v39))) & v39)) ^ (v173 ^ (2 * (v173 & v39)));
  v21[35] = *((v174 ^ 0x32 ^ v42 & (16 * (v174 & v39)) & v43) + v44 + 12331) ^ 0x32;
  v175 = (((v171 - (v172 & 0xFFFFFF90) - 56) & 0x77777777 ^ (v21[36] ^ v114 ^ 0x7F) & ((v171 - (v172 & 0xFFFFFF90) - 56) ^ 0xC8) ^ 0x40) << v106) | ((v21[36] ^ v114 ^ 8) >> v107);
  v176 = (2 * (v175 & v39 & 0x7F)) ^ v175;
  v21[36] = *((v40 & (4 * (v176 & v39)) ^ v176 ^ 0x73 ^ v42 & (16 * ((v40 & (4 * (v176 & v39)) ^ v176) & v39)) & v43) + v44 + 12331) ^ 0x8C;
  v177 = v136;
  v178 = (((v149 - (v136 & 0x22) + 17) & 0x2F ^ (v21[37] ^ v164 ^ 0x98) & ((v149 - (v136 & 0x22) + 17) ^ 0x11111111) ^ 1) << v126) | ((v21[37] ^ v164 ^ 0xB7) >> v161);
  v179 = (2 * (v178 & v39 & 0x7F)) ^ v178;
  LOBYTE(v179) = *((v40 & (4 * (v179 & v39)) ^ v179 ^ v42 & (16 * ((v40 & (4 * (v179 & v39)) ^ v179) & v39)) & v43 ^ 0x30u) + v44 + 12591);
  v180 = ((v179 ^ 0x81) + 127) ^ ((v179 ^ 0x3F) - 63) ^ ((v179 ^ 0xBB) + 69);
  v21[37] = (v180 - 27) ^ ((32 * v179) | 4) ^ (2 * (v180 - 27));
  v181 = v125;
  v182 = (((v125 + (~v97 | 0x7D) - 62) & 0xE1 ^ (v21[38] ^ v114 ^ 0xE9) & ((v125 + (~v97 | 0x7D) - 62) ^ 0xC1) ^ 0xFFFFFFC1) << v126) | ((v21[38] ^ v114 ^ 8) >> v107);
  v183 = (2 * (v182 & v39 & 0x7F)) ^ v182;
  LOBYTE(v183) = *((v40 & (4 * (v183 & v39)) ^ v183 ^ 0x3B ^ v42 & (16 * ((v40 & (4 * (v183 & v39)) ^ v183) & v39)) & v43) + v44 + 12591);
  LOBYTE(v179) = (((v183 ^ 0x4A) - 74) ^ ((v183 ^ 0xE8) + 24) ^ ((v183 ^ 0xA7) + 89)) - 27;
  v21[38] = v179 ^ (32 * v183) ^ (2 * v179) ^ 0x46;
  v184 = STACK[0x57A0];
  v185 = STACK[0x5750];
  v186 = (((v184 ^ v21[39]) & STACK[0x5750]) << v106) ^ ((v184 ^ v21[39]) >> v161);
  v187 = (2 * (v186 & v39 & 0x7F)) ^ v186;
  v21[39] = *((v40 & (4 * (v187 & v39)) ^ v187 ^ v42 & (16 * ((v40 & (4 * (v187 & v39)) ^ v187) & v39)) & v43 ^ 0x20u) + v44 + 12331) ^ 0xA7;
  v188 = v21[40];
  LODWORD(STACK[0x5680]) = v9;
  v189 = v164;
  v190 = v188 ^ v164;
  v191 = STACK[0x57B0];
  v192 = v161;
  v193 = (((v185 - (v191 & 0xFFFFFFF7) + 123) & 0x79 ^ 0x79 ^ (v190 ^ 0xCE) & ((v185 - (v191 & 0xFFFFFFF7) + 123) ^ 0x7B)) << v106) ^ ((v190 ^ 0xB7) >> v161);
  v194 = (2 * (v193 & v39 & 0x7F)) ^ v193;
  LOBYTE(v194) = *((v40 & (4 * (v194 & v39)) ^ v194 ^ 0x9C ^ v42 & (16 * ((v40 & (4 * (v194 & v39)) ^ v194) & v39)) & v43) + v44 + 12591);
  LOBYTE(v118) = (((v194 ^ 0x7D) - 125) ^ ((v194 ^ 0x16) - 22) ^ ((v194 ^ 0x6E) - 110)) - 27;
  v21[40] = v118 ^ (32 * v194) ^ (2 * v118) ^ 0xAE;
  LOBYTE(v149) = v166;
  v195 = (((v125 - (v165 & 0xFFFFFFB6) + 91) & 0xAE ^ 0xA ^ (v21[41] ^ v189 ^ 0x19) & ((v125 - (v165 & 0xFFFFFFB6) + 91) ^ 0x5B)) << v126) | ((v21[41] ^ v189 ^ 0xB7) >> v166);
  v196 = (2 * (v195 & v39 & 0x7F)) ^ v195;
  v21[41] = *((v40 & (4 * (v196 & v39)) ^ v196 ^ 0x7A ^ v42 & (16 * ((v40 & (4 * (v196 & v39)) ^ v196) & v39)) & v43) + v44 + 12331) ^ 0x3F;
  v197 = v177;
  v198 = STACK[0x5790];
  v199 = v126;
  v200 = (((v198 - (v177 & 0x5E) - 81) & 0x9C ^ 0x8C ^ (v21[42] ^ v114 ^ 0x94) & ((v198 - (v177 & 0x5E) - 81) ^ 0xAF)) << v126) ^ ((v21[42] ^ v114 ^ 8) >> v149);
  v201 = (2 * (v200 & v39 & 0x7F)) ^ v200;
  v21[42] = *((v40 & (4 * (v201 & v39)) ^ v201 ^ 0x28 ^ v42 & (16 * ((v40 & (4 * (v201 & v39)) ^ v201) & v39)) & v43) + v44 + 12331) ^ 0xE7;
  v202 = STACK[0x57C0];
  v203 = (((v184 ^ v21[43]) & STACK[0x57C0]) << v106) ^ ((v184 ^ v21[43]) >> v192);
  v204 = (2 * (v203 & v39 & 0x7F)) ^ v203;
  v21[43] = *((v40 & (4 * (v204 & v39)) ^ v204 ^ 0x5B ^ v42 & (16 * ((v40 & (4 * (v204 & v39)) ^ v204) & v39)) & v43) + v44 + 12331) ^ 0xB4;
  v205 = v21[44] ^ v189;
  v206 = v185 - (v191 & 0x24);
  v207 = v185;
  LODWORD(STACK[0x5660]) = v206;
  v208 = (((v206 + 18) & 0x8A ^ (v205 ^ 0x3D) & ((v206 + 18) ^ 0x12) ^ 2) << v106) ^ ((v205 ^ 0xB7) >> v149);
  v209 = (2 * (v208 & v39 & 0x7F)) ^ v208;
  v21[44] = *((v40 & (4 * (v209 & v39)) ^ v209 ^ v42 & (16 * ((v40 & (4 * (v209 & v39)) ^ v209) & v39)) & v43 ^ 0x3Eu) + v44 + 12331) ^ 0x27;
  v210 = v21[45] ^ v189;
  v211 = v189;
  LOBYTE(v189) = v165;
  LODWORD(STACK[0x5770]) = v165;
  v212 = (((v125 - (v165 & 0x64) + 50) & 0x23 ^ (v210 ^ 0x94) & ((v125 - (v165 & 0x64) + 50) ^ 0x32) ^ 0x22222222) << v199) | ((v210 ^ 0xB7) >> v192);
  v213 = (2 * (v212 & v39 & 0x7F)) ^ v212;
  LOBYTE(v213) = *((v40 & (4 * (v213 & v39)) ^ v213 ^ v42 & (16 * ((v40 & (4 * (v213 & v39)) ^ v213) & v39)) & v43 ^ 0x3Cu) + v44 + 12591);
  LOBYTE(v118) = (((v213 ^ 0xD6) + 42) ^ ((v213 ^ 0xAA) + 86) ^ ((v213 ^ 0x79) - 121)) - 27;
  v21[45] = v118 ^ ((32 * v213) | 0x11) ^ (2 * v118);
  v214 = v202;
  v215 = (((v184 ^ v21[46]) & v202) << v106) + ((v184 ^ v21[46]) >> v149);
  v216 = v40 & (4 * ((v215 ^ (2 * (v215 & v39))) & v39)) ^ (v215 ^ (2 * (v215 & v39)));
  LOBYTE(v216) = *((v216 ^ 0x8B ^ v42 & (16 * (v216 & v39)) & v43) + v44 + 12591);
  LOBYTE(v118) = (((v216 ^ 0xBE) + 66) ^ ((v216 ^ 0x3A) - 58) ^ ((v216 ^ 0x81) + 127)) - 27;
  v21[46] = v118 ^ (32 * v216) ^ (2 * v118) ^ 0x9D;
  v217 = (((LODWORD(STACK[0x5730]) ^ v21[47]) & v198) << v199) | ((LOBYTE(STACK[0x5730]) ^ v21[47]) >> v192);
  v218 = (2 * (v217 & v39 & 0x7F)) ^ v217;
  LOBYTE(v218) = *((v40 & (4 * (v218 & v39)) ^ v218 ^ 0xAD ^ v42 & (16 * ((v40 & (4 * (v218 & v39)) ^ v218) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = (((v218 ^ 0x39) - 57) ^ ((v218 ^ 0xC1) + 63) ^ ((v218 ^ 0xFD) + 3)) - 27;
  v21[47] = v165 ^ (32 * v218) ^ (2 * v165) ^ 0x41;
  v219 = (((v184 ^ v21[48]) & v202) << v106) ^ ((v184 ^ v21[48]) >> v149);
  v220 = (2 * (v219 & v39 & 0x7F)) ^ v219;
  LOBYTE(v220) = *((v40 & (4 * (v220 & v39)) ^ v220 ^ v42 & (16 * ((v40 & (4 * (v220 & v39)) ^ v220) & v39)) & v43 ^ 0x38u) + v44 + 12591);
  LOBYTE(v165) = (((v220 ^ 0x1F) - 31) ^ ((v220 ^ 0xAB) + 85) ^ ((v220 ^ 0xB1) + 79)) - 27;
  v21[48] = v165 ^ (32 * v220) ^ (2 * v165) ^ 0x44;
  v221 = (((v198 - (v197 & 0xFFFFFFEA) - 11) & 0xE9 ^ (v21[49] ^ v211 ^ 0x5E) & ((v198 - (v197 & 0xFFFFFFEA) - 11) ^ 0xF5) ^ 0xFFFFFFE1) << v199) | ((v21[49] ^ v211 ^ 0xB7) >> v192);
  v222 = (2 * (v221 & v39 & 0x7F)) ^ v221;
  v21[49] = *((v40 & (4 * (v222 & v39)) ^ v222 ^ 0xB6 ^ v42 & (16 * ((v40 & (4 * (v222 & v39)) ^ v222) & v39)) & v43) + v44 + 12331) ^ 0xA0;
  v223 = STACK[0x5710];
  v224 = (((v181 - (v189 & 0x2E) - 105) & 0x27 ^ (v21[50] ^ v223 ^ 0x2F) & ((v181 - (v189 & 0x2E) - 105) ^ 0x97) ^ 7) << v199) ^ ((v21[50] ^ v223 ^ 8) >> v149);
  v225 = (2 * (v224 & v39 & 0x7F)) ^ v224;
  LOBYTE(v225) = *((v40 & (4 * (v225 & v39)) ^ v225 ^ 0x4A ^ v42 & (16 * ((v40 & (4 * (v225 & v39)) ^ v225) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = (((v225 ^ 0x19) - 25) ^ ((v225 ^ 0xCB) + 53) ^ ((v225 ^ 0xD7) + 41)) - 27;
  v21[50] = v165 ^ (32 * v225) ^ (2 * v165) ^ 0xE4;
  LOBYTE(v139) = STACK[0x57B0];
  LOBYTE(v202) = v207;
  v226 = (((v207 - (STACK[0x57B0] & 0x1E) - 113) & 0x87 ^ (v21[51] ^ v223 ^ 0x8F) & ((v207 - (STACK[0x57B0] & 0x1E) - 113) ^ 0x8F) ^ 0xFFFFFF87) << v106) | ((v21[51] ^ v223 ^ 8) >> v192);
  v227 = (2 * (v226 & v39 & 0x7F)) ^ v226;
  v21[51] = *((v40 & (4 * (v227 & v39)) ^ v227 ^ 0x9C ^ v42 & (16 * ((v40 & (4 * (v227 & v39)) ^ v227) & v39)) & v43) + v44 + 12331) ^ 0x69;
  v228 = v197;
  v229 = (((v198 - (v228 & 0xFFFFFF83) + 65) & 0x58 ^ (v21[52] ^ v211 ^ 0xFFFFFFEF) & ((v198 - (v228 & 0xFFFFFF83) + 65) ^ 0x41) ^ 0x40) << v199) | ((v21[52] ^ v211 ^ 0xB7) >> v149);
  v230 = (2 * (v229 & v39 & 0x7F)) ^ v229;
  v21[52] = *((v40 & (4 * (v230 & v39)) ^ v230 ^ 0x9C ^ v42 & (16 * ((v40 & (4 * (v230 & v39)) ^ v230) & v39)) & v43) + v44 + 12331) ^ 0x69;
  v231 = STACK[0x5780];
  v232 = v214;
  LOBYTE(v184) = v106;
  v233 = (((v214 - (v231 & 0x72) - 71) & 0x6D ^ 0x29 ^ ((v21[53] ^ v211) ^ 0xDA) & ((v214 - (v231 & 0x72) - 71) ^ 0xB9)) << v106) + ((v21[53] ^ v211 ^ 0xB7) >> v192);
  v234 = v40 & (4 * ((v233 ^ (2 * (v233 & v39))) & v39)) ^ (v233 ^ (2 * (v233 & v39)));
  LOBYTE(v234) = *((v234 ^ 0xF1 ^ v42 & (16 * (v234 & v39)) & v43) + v44 + 12591);
  LOBYTE(v230) = (((v234 ^ 0xD1) + 47) ^ ((v234 ^ 0xBF) + 65) ^ ((v234 ^ 0x6B) - 107)) - 27;
  v21[53] = v230 ^ (32 * v234) ^ (2 * v230) ^ 0x7D;
  v235 = v223;
  LOBYTE(v234) = v21[54] ^ v223;
  LOBYTE(v223) = v192;
  v236 = (((v202 - (v139 & 0x87) + 67) & 0xA6 ^ (v234 ^ 0xAE) & ((v202 - (v139 & 0x87) + 67) ^ 0x43) ^ 2) << v106) + ((v234 ^ 8) >> v192);
  v237 = v40 & (4 * ((v236 ^ (2 * (v236 & v39))) & v39)) ^ (v236 ^ (2 * (v236 & v39)));
  LOBYTE(v237) = *((v237 ^ v42 & (16 * (v237 & v39)) & v43 ^ 7u) + v44 + 12591);
  LOBYTE(v230) = (((v237 ^ 0x84) + 124) ^ ((v237 ^ 0x7F) - 127) ^ ((v237 ^ 0xFE) + 2)) - 27;
  v21[54] = v230 ^ (32 * v237) ^ (2 * v230) ^ 0x4F;
  v238 = v235;
  v239 = v149;
  v240 = (((v181 ^ 0x4C) & 0xA8 ^ (v21[55] ^ v235) & 0x4C ^ (v21[55] ^ v235 ^ 0xA0) & (v181 ^ 0x4C) ^ 8) << v199) | ((v21[55] ^ v235 ^ 8) >> v149);
  v241 = (2 * (v240 & v39 & 0x7F)) ^ v240;
  v21[55] = *((v40 & (4 * (v241 & v39)) ^ v241 ^ 0x3D ^ v42 & (16 * ((v40 & (4 * (v241 & v39)) ^ v241) & v39)) & v43) + v44 + 12331) ^ 0x25;
  v242 = v198 - (v197 & 0x4E);
  v243 = v198;
  LODWORD(STACK[0x5730]) = v242;
  LOBYTE(v241) = v242 - 89;
  v244 = (v242 - 89) ^ 0xFFFFFFA7;
  LODWORD(STACK[0x5670]) = v244;
  v245 = ((v241 & 0x87 ^ (v21[56] ^ v211 ^ 0x30) & v244 ^ 0xFFFFFF87) << v199) | ((v21[56] ^ v211 ^ 0xB7) >> v192);
  v246 = (2 * (v245 & v39 & 0x7F)) ^ v245;
  v21[56] = *((v40 & (4 * (v246 & v39)) ^ v246 ^ 0x24 ^ v42 & (16 * ((v40 & (4 * (v246 & v39)) ^ v246) & v39)) & v43) + v44 + 12331) ^ 0xF2;
  v247 = v232 - (v231 & 0xFFFFFFB4);
  v248 = v239;
  v249 = (((v247 + 90) & 0x7C ^ 0x58 ^ (v21[57] ^ v235 ^ 0x74) & ((v247 + 90) ^ 0x5A)) << v184) ^ ((v21[57] ^ v235 ^ 8) >> v239);
  v250 = (2 * (v249 & v39 & 0x7F)) ^ v249;
  LOBYTE(v250) = *((v40 & (4 * (v250 & v39)) ^ v250 ^ 0x61 ^ v42 & (16 * ((v40 & (4 * (v250 & v39)) ^ v250) & v39)) & v43) + v44 + 12591);
  LOBYTE(v197) = (((v250 ^ 0xAC) + 84) ^ ((v250 ^ 0xC3) + 61) ^ ((v250 ^ 0x6A) - 106)) - 27;
  v21[57] = v197 ^ (32 * v250) ^ (2 * v197) ^ 0xDE;
  v251 = (((v202 - (v139 & 0xEC) - 10) & 0xA8 ^ 0xA0 ^ ((v21[58] ^ v211) ^ 0x1F) & ((v202 - (v139 & 0xEC) - 10) ^ 0xF6)) << v184) + ((v21[58] ^ v211 ^ 0xB7) >> v223);
  v252 = v40 & (4 * ((v251 ^ (2 * (v251 & v39))) & v39)) ^ (v251 ^ (2 * (v251 & v39)));
  v21[58] = *((v252 ^ 0x52 ^ v42 & (16 * (v252 & v39)) & v43) + v44 + 12331) ^ 7;
  v253 = (((v181 - (STACK[0x5770] & 0xFFFFFFD6) - 21) & 0x96 ^ 0x82 ^ (v21[59] ^ v238 ^ 0x9E) & ((v181 - (STACK[0x5770] & 0xFFFFFFD6) - 21) ^ 0xEB)) << v199) ^ ((v21[59] ^ v238 ^ 8) >> v239);
  v254 = (2 * (v253 & v39 & 0x7F)) ^ v253;
  LOBYTE(v254) = *((v40 & (4 * (v254 & v39)) ^ v254 ^ 0x46 ^ v42 & (16 * ((v40 & (4 * (v254 & v39)) ^ v254) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = (((v254 ^ 0x89) + 119) ^ ((v254 ^ 0x36) - 54) ^ ((v254 ^ 0xBA) + 70)) - 27;
  v21[59] = v165 ^ (32 * v254) ^ (2 * v165) ^ 0xF1;
  v255 = (((v243 - (v228 & 0x2C) - 106) & 0xB7 ^ 0x96 ^ (v21[60] ^ v211) & ((v243 - (v228 & 0x2C) - 106) ^ 0x96)) << v199) ^ ((v21[60] ^ v211 ^ 0xB7) >> v223);
  v256 = (2 * (v255 & v39 & 0x7F)) ^ v255;
  LOBYTE(v256) = *((v40 & (4 * (v256 & v39)) ^ v256 ^ 0xCD ^ v42 & (16 * ((v40 & (4 * (v256 & v39)) ^ v256) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = (((v256 ^ 0xCC) + 52) ^ ((v256 ^ 0xAF) + 81) ^ ((v256 ^ 0x66) - 102)) - 27;
  v21[60] = v165 ^ (32 * v256) ^ (2 * v165) ^ 0x74;
  v257 = (((-54 - (v232 - (v231 & 0x6A))) & 8 ^ (v21[61] ^ v211 ^ 0xFFFFFFBF) & ((v232 - (v231 & 0x6A) + 53) ^ 0x35) ^ 8) << v184) ^ ((v21[61] ^ v211 ^ 0xB7) >> v239);
  v258 = (2 * (v257 & v39 & 0x7F)) ^ v257;
  LOBYTE(v258) = *((v40 & (4 * (v258 & v39)) ^ v258 ^ 0xA6 ^ v42 & (16 * ((v40 & (4 * (v258 & v39)) ^ v258) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = ((v258 ^ 0xD3) + 45) ^ ((v258 ^ 6) - 6) ^ ((v258 ^ 0xD0) + 48);
  v21[61] = (v165 - 27) ^ ((32 * v258) | 3) ^ (2 * (v165 - 27));
  v259 = STACK[0x57A0];
  v260 = (((v259 ^ v21[62]) & v232) << v184) | ((v259 ^ v21[62]) >> v239);
  v261 = (2 * (v260 & v39 & 0x7F)) ^ v260;
  v21[62] = *((v40 & (4 * (v261 & v39)) ^ v261 ^ 0x47 ^ v42 & (16 * ((v40 & (4 * (v261 & v39)) ^ v261) & v39)) & v43) + v44 + 12331) ^ 0xC5;
  LOBYTE(v198) = v223;
  v262 = (((v243 - (v228 & 0xFFFFFFB0) - 40) & 0x9B ^ 0x98 ^ (v21[63] ^ v211 ^ 0x2C) & ((v243 - (v228 & 0xFFFFFFB0) - 40) ^ 0xD8)) << v199) | ((v21[63] ^ v211 ^ 0xB7) >> v223);
  v263 = (2 * (v262 & v39 & 0x7F)) ^ v262;
  v21[63] = *((v40 & (4 * (v263 & v39)) ^ v263 ^ 0x79 ^ v42 & (16 * ((v40 & (4 * (v263 & v39)) ^ v263) & v39)) & v43) + v44 + 12331) ^ 0x3D;
  v264 = (((v247 - 38) & 0x2B ^ 0xA ^ ((v21[64] ^ v238) ^ 0x23) & ((v247 - 38) ^ 0xDA)) << v184) + ((v21[64] ^ v238 ^ 8) >> v223);
  v265 = v40 & (4 * ((v264 ^ (2 * (v264 & v39))) & v39)) ^ (v264 ^ (2 * (v264 & v39)));
  v21[64] = *((v265 ^ 0xE1 ^ v42 & (16 * (v265 & v39)) & v43) + v44 + 12331) ^ 0xDE;
  v266 = v228;
  v267 = v235;
  v268 = ((((v243 - (v228 & 0x28) - 108) ^ 0xFFFFFF8C) & 0x6A ^ (v21[65] ^ v238) & 0x18 ^ (v21[65] ^ v238 ^ 0x62) & ((v243 - (v228 & 0x28) - 108) ^ 0xFFFFFF8C) ^ 8) << v199) | ((v21[65] ^ v238 ^ 8) >> v248);
  v269 = (2 * (v268 & v39 & 0x7F)) ^ v268;
  LOBYTE(v269) = *((v40 & (4 * (v269 & v39)) ^ v269 ^ 0x1A ^ v42 & (16 * ((v40 & (4 * (v269 & v39)) ^ v269) & v39)) & v43) + v44 + 12591);
  LOBYTE(v263) = ((v269 ^ 0xEF) + 17) ^ ((v269 ^ 0x25) - 37) ^ ((v269 ^ 0xCF) + 49);
  v21[65] = (v263 - 27) ^ (32 * v269) ^ (2 * v263 - ((4 * (v263 - 27)) & 0x10) + 83) ^ 0x44;
  v270 = STACK[0x5750];
  v271 = ((((v21[66] ^ v211) ^ 0xB6) & ((LODWORD(STACK[0x5660]) - 110) ^ 0x92) ^ STACK[0x5750] & 1) << v184) + ((v21[66] ^ v211 ^ 0xB7) >> v248);
  v272 = v40 & (4 * ((v271 ^ (2 * (v271 & v39))) & v39)) ^ (v271 ^ (2 * (v271 & v39)));
  v21[66] = *((v272 ^ 0x57 ^ v42 & (16 * (v272 & v39)) & v43) + v44 + 12331) ^ 0xA1;
  v273 = STACK[0x5760];
  v274 = (((v259 ^ v21[67]) & STACK[0x5760]) << v199) ^ ((v259 ^ v21[67]) >> v198);
  v275 = (2 * (v274 & v39 & 0x7F)) ^ v274;
  LOBYTE(v275) = *((v40 & (4 * (v275 & v39)) ^ v275 ^ 0x8B ^ v42 & (16 * ((v40 & (4 * (v275 & v39)) ^ v275) & v39)) & v43) + v44 + 12591);
  LOBYTE(v263) = ((v275 ^ 0xB9) + 71) ^ ((v275 ^ 0x68) - 104) ^ ((v275 ^ 0xD4) + 44);
  v21[67] = (v263 - 27) ^ (32 * v275) ^ 0x74 ^ (2 * v263 - ((4 * (v263 - 27)) & 0xD0) - 77);
  v276 = STACK[0x5770];
  v277 = (((v273 - (v276 & 0xA0) - 48) & 0xE7 ^ ((v21[68] ^ v211) ^ 0x50) & ((v273 - (v276 & 0xA0) - 48) ^ 0xD0) ^ 0xC0) << v199) + ((v21[68] ^ v211 ^ 0xB7) >> v248);
  v278 = v40 & (4 * ((v277 ^ (2 * (v277 & v39))) & v39)) ^ (v277 ^ (2 * (v277 & v39)));
  v21[68] = *((v278 ^ 0x36 ^ v42 & (16 * (v278 & v39)) & v43) + v44 + 12331) ^ 0x67;
  v279 = STACK[0x57B0];
  v280 = (((v270 - (v279 & 0xFFFFFFB4) + 90) & 0xFFFFFFF3 ^ 0x52 ^ (v21[69] ^ v211 ^ 0x44444444) & ((v270 - (v279 & 0xFFFFFFB4) + 90) ^ 0x5A)) << v184) ^ ((v21[69] ^ v211 ^ 0xB7) >> v198);
  v281 = (2 * (v280 & v39 & 0x7F)) ^ v280;
  LOBYTE(v281) = *((v40 & (4 * (v281 & v39)) ^ v281 ^ 0x9B ^ v42 & (16 * ((v40 & (4 * (v281 & v39)) ^ v281) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = ((v281 ^ 0xF) - 15) ^ ((v281 ^ 0x23) - 35) ^ ((v281 ^ 0x29) - 41);
  v21[69] = (v165 - 27) ^ (32 * v281) ^ 0xCE ^ ((2 * v165 - ((4 * (v165 - 27)) & 0x6C)) | 1);
  v282 = STACK[0x5780];
  LOBYTE(v165) = LODWORD(STACK[0x57C0]) - (STACK[0x5780] & 0xD6) + 107;
  v283 = ((v165 & 0x68 ^ 0x68 ^ ((v21[70] ^ v238) ^ 0x60) & (v165 ^ 0x6B)) << v184) + ((v21[70] ^ v238 ^ 8) >> v198);
  v284 = v40 & (4 * ((v283 ^ (2 * (v283 & v39))) & v39)) ^ (v283 ^ (2 * (v283 & v39)));
  LOBYTE(v284) = *((v284 ^ 0xBB ^ v42 & (16 * (v284 & v39)) & v43) + v44 + 12591);
  LOBYTE(v275) = ((v284 ^ 0xA0) + 96) ^ ((v284 ^ 0x1C) - 28) ^ ((v284 ^ 0xB9) + 71);
  v21[70] = (v275 - 27) ^ (32 * v284) ^ 0xF4 ^ (2 * v275 - ((4 * (v275 - 27)) & 0xE8) + 63);
  v285 = (((-19 - (v243 - (v266 & 0x24))) & 0x68 ^ 0x68 ^ (v21[71] ^ v211 ^ 0xFFFFFFDF) & ((v243 - (v266 & 0x24) + 18) ^ 0x12)) << v199) ^ ((v21[71] ^ v211 ^ 0xB7) >> v248);
  v286 = (2 * (v285 & v39 & 0x7F)) ^ v285;
  v21[71] = *((v40 & (4 * (v286 & v39)) ^ v286 ^ 0x22 ^ v42 & (16 * ((v40 & (4 * (v286 & v39)) ^ v286) & v39)) & v43) + v44 + 12331) ^ 0x56;
  v287 = v273;
  LOBYTE(v181) = v199;
  v288 = (((LODWORD(STACK[0x57A0]) ^ v21[72]) & ((v273 - (v276 & 0x7C) - 66) ^ 0xBE)) << v199) ^ ((LOBYTE(STACK[0x57A0]) ^ v21[72]) >> v198);
  v289 = (2 * (v288 & v39 & 0x7F)) ^ v288;
  v21[72] = *((v40 & (4 * (v289 & v39)) ^ v289 ^ 0x46 ^ v42 & (16 * ((v40 & (4 * (v289 & v39)) ^ v289) & v39)) & v43) + v44 + 12331) ^ 0x36;
  v290 = (v270 + (~v279 | 0xFFFFFFB9) - 92) ^ 0xFFFFFFE3;
  v291 = ((((v21[73] ^ v267) & 0x40 | v290 & 0x8C) ^ (v21[73] ^ v267 ^ 0x84) & v290) << v184) | ((v21[73] ^ v267 ^ 8) >> v248);
  v292 = (2 * (v291 & v39 & 0x7F)) ^ v291;
  LOBYTE(v292) = *((v40 & (4 * (v292 & v39)) ^ v292 ^ 0xF1 ^ v42 & (16 * ((v40 & (4 * (v292 & v39)) ^ v292) & v39)) & v43) + v44 + 12591);
  LOBYTE(v290) = ((v292 ^ 0x2B) - 43) ^ ((v292 ^ 0xFB) + 5) ^ ((v292 ^ 0xD5) + 43);
  v21[73] = (v290 - 27) ^ (32 * v292) ^ 0xB6 ^ ((~(4 * (v290 - 27)) | 0x6B) + 2 * v290 - 106);
  v293 = (((v287 - (v276 & 0xE) + 7) & 0x4A ^ ((v21[74] ^ v211) ^ 0xFD) & ((v287 - (v276 & 0xE) + 7) ^ 7) ^ 2) << v199) + ((v21[74] ^ v211 ^ 0xB7) >> v198);
  v294 = v40 & (4 * ((v293 ^ (2 * (v293 & v39))) & v39)) ^ (v293 ^ (2 * (v293 & v39)));
  LOBYTE(v294) = *((v294 ^ 0xDC ^ v42 & (16 * (v294 & v39)) & v43) + v44 + 12591);
  LOBYTE(v290) = ((v294 ^ 0xC0) + 64) ^ ((v294 ^ 0x23) - 35) ^ ((v294 ^ 0xE6) + 26);
  v21[74] = (v290 - 27) ^ (32 * v294) ^ 0x5D ^ (2 * v290 - 4 * ((v290 - 27) & 0x1F) - 120);
  v295 = v270;
  v296 = (((v270 - (v279 & 0x62) + 49) & 0x99 ^ (v21[75] ^ v267 ^ 0x91) & ((v270 - (v279 & 0x62) + 49) ^ 0x31) ^ 0x11111111) << v184) ^ ((v21[75] ^ v267 ^ 8) >> v248);
  v297 = (2 * (v296 & v39 & 0x7F)) ^ v296;
  LOBYTE(v297) = *((v40 & (4 * (v297 & v39)) ^ v297 ^ 0xA7 ^ v42 & (16 * ((v40 & (4 * (v297 & v39)) ^ v297) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = ((v297 ^ 0x38) - 56) ^ ((v297 ^ 0xAA) + 86) ^ ((v297 ^ 0x97) + 105);
  v21[75] = (v165 - 27) ^ (32 * v297) ^ 0x8D ^ (2 * v165 - ((4 * (v165 - 27)) & 0xF8) + 71);
  v298 = v282;
  v299 = (((LODWORD(STACK[0x56C0]) - (v282 & 0x78)) & 0xFFFFFFF3 ^ 0xB0 ^ (v21[76] ^ v211 ^ 0x44444444) & ((LODWORD(STACK[0x56C0]) - (v282 & 0x78)) ^ 0xBC)) << v184) | ((v21[76] ^ v211 ^ 0xB7) >> v248);
  v300 = (2 * (v299 & v39 & 0x7F)) ^ v299;
  LOBYTE(v300) = *((v40 & (4 * (v300 & v39)) ^ v300 ^ 0x89 ^ v42 & (16 * ((v40 & (4 * (v300 & v39)) ^ v300) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = ((v300 ^ 0x91) + 111) ^ ((v300 ^ 0x37) - 55) ^ ((v300 ^ 0xA3) + 93);
  v21[76] = (v165 - 27) ^ (32 * v300) ^ (2 * v165 - ((4 * (v165 - 27)) & 0xA4) + 29) ^ 0x3F;
  v301 = STACK[0x5740];
  v302 = STACK[0x5790];
  v303 = (((v302 - (v301 & 0x78) + 60) & 0xC4 ^ ((v21[77] ^ v267) ^ 0xCC) & ((v302 - (v301 & 0x78) + 60) ^ 0x3C) ^ 4) << v199) + ((v21[77] ^ v267 ^ 8) >> v198);
  v304 = v40 & (4 * ((v303 ^ (2 * (v303 & v39))) & v39)) ^ (v303 ^ (2 * (v303 & v39)));
  v21[77] = *((v304 ^ 0xB1 ^ v42 & (16 * (v304 & v39)) & v43) + v44 + 12331) ^ 0xF7;
  v305 = (((v287 - (v276 & 0x56) + 43) & 0x9A ^ 0xA ^ (v21[78] ^ v211 ^ 0x2D) & ((v287 - (v276 & 0x56) + 43) ^ 0x2B)) << v199) | ((v21[78] ^ v211 ^ 0xB7) >> v248);
  v306 = (2 * (v305 & v39 & 0x7F)) ^ v305;
  LOBYTE(v294) = *((v40 & (4 * (v306 & v39)) ^ v306 ^ 0x91 ^ v42 & (16 * ((v40 & (4 * (v306 & v39)) ^ v306) & v39)) & v43) + v44 + 12591);
  LOBYTE(v306) = (((v294 ^ 0x7F) - 127) ^ ((v294 ^ 0x42) - 66) ^ ((v294 ^ 0x38) - 56)) - 27;
  v21[78] = v306 ^ (32 * v294) ^ (((4 * v306) & 0x6C) - 2 * v306 + 72);
  v307 = (((v295 - (v279 & 0xFFFFFFC3) + 97) & 0xFFFFFFE7 ^ 0x61 ^ (v21[79] ^ v267 ^ 0xFFFFFFEF) & ((v295 - (v279 & 0xFFFFFFC3) + 97) ^ 0x61)) << v184) ^ ((v21[79] ^ v267 ^ 8) >> v198);
  v308 = (2 * (v307 & v39 & 0x7F)) ^ v307;
  v21[79] = *((v40 & (4 * (v308 & v39)) ^ v308 ^ 0x32 ^ v42 & (16 * ((v40 & (4 * (v308 & v39)) ^ v308) & v39)) & v43) + v44 + 12331) ^ 0x32;
  v309 = STACK[0x56E0];
  v310 = STACK[0x57C0];
  v311 = v184;
  v312 = (((v310 - (v298 & 0xFB) + 125) & 0x62 ^ ((*(v309 + 80) ^ v211) ^ 0xD5) & ((v310 - (v298 & 0xFB) + 125) ^ 0x7D) ^ 0x60) << v184) + ((*(v309 + 80) ^ v211 ^ 0xB7) >> v198);
  v313 = v40 & (4 * ((v312 ^ (2 * (v312 & v39))) & v39)) ^ (v312 ^ (2 * (v312 & v39)));
  LOBYTE(v313) = *((v313 ^ 0xDF ^ v42 & (16 * (v313 & v39)) & v43) + v44 + 12591);
  LOBYTE(v306) = ((v313 ^ 0xCA) + 54) ^ ((v313 ^ 0xBF) + 65) ^ ((v313 ^ 0x70) - 112);
  *(v309 + 80) = (v306 - 27) ^ (32 * v313) ^ 0x26 ^ (2 * v306 - ((4 * (v306 - 27)) & 0x8F) - 111);
  v314 = (((LODWORD(STACK[0x5730]) + 39) & 0x82 ^ ((*(v309 + 81) ^ v211) ^ 0x35) & LODWORD(STACK[0x5670]) ^ 2) << v181) + ((*(v309 + 81) ^ v211 ^ 0xB7) >> v248);
  v315 = v40 & (4 * ((v314 ^ (2 * (v314 & v39))) & v39)) ^ (v314 ^ (2 * (v314 & v39)));
  *(v309 + 81) = *((v315 ^ 0xA1 ^ v42 & (16 * (v315 & v39)) & v43) + v44 + 12331) ^ 0x93;
  v316 = (((v310 - (v298 & 0xFFFFFF8F) + 71) & 0x79 ^ 0x41 ^ (*(v309 + 82) ^ v267 ^ 0x71) & ((v310 - (v298 & 0xFFFFFF8F) + 71) ^ 0x47)) << v184) | ((*(v309 + 82) ^ v267 ^ 8) >> v198);
  v317 = (2 * (v316 & v39 & 0x7F)) ^ v316;
  LOBYTE(v317) = *((v40 & (4 * (v317 & v39)) ^ v317 ^ 0xEA ^ v42 & (16 * ((v40 & (4 * (v317 & v39)) ^ v317) & v39)) & v43) + v44 + 12591);
  LOBYTE(v165) = ((v317 ^ 0xA8) + 88) ^ ((v317 ^ 0x94) + 108) ^ ((v317 ^ 0x39) - 57);
  *(v309 + 82) = (v165 - 27) ^ (32 * v317) ^ 0xB8 ^ (2 * v165 - ((4 * (v165 - 27)) & 0xC7) - 83);
  v318 = v301;
  v319 = v302;
  v320 = (v302 + (~v301 | 0xFFFFFF83) - 65) ^ 0xFFFFFFB8;
  v321 = ((((*(v309 + 83) ^ v267) & 6 | v320 & 0xA1) ^ (*(v309 + 83) ^ v267 ^ 0xA9) & v320) << v181) | ((*(v309 + 83) ^ v267 ^ 8) >> v248);
  v322 = (2 * (v321 & v39 & 0x7F)) ^ v321;
  LOBYTE(v301) = *((v40 & (4 * (v322 & v39)) ^ v322 ^ 0xD2 ^ v42 & (16 * ((v40 & (4 * (v322 & v39)) ^ v322) & v39)) & v43) + v44 + 12591);
  LOBYTE(v320) = ((v301 ^ 0x44) - 68) ^ ((v301 ^ 0x87) + 121) ^ ((v301 ^ 0xC6) + 58);
  *(v309 + 83) = (v320 - 27) ^ (32 * v301) ^ 0xC6 ^ (((4 * (v320 - 27)) & 0x80) + 2 * v320 - 117);
  v323 = v211;
  v324 = (((*(v309 + 84) ^ v211) & 0x69 ^ 0x83) & ((*(v309 + 84) ^ v211) & 0xFFFFFF96 ^ 0x6D) | (*(v309 + 84) ^ v211) & 0x14) ^ 0xB6;
  v325 = (((v324 & v295) << v311) + (v324 >> v198)) ^ (2 * ((((v324 & v295) << v311) + (v324 >> v198)) & v39));
  v326 = v40 & (4 * (v325 & v39)) ^ v325;
  *(v309 + 84) = *((v326 ^ 0xC1 ^ v42 & (16 * (v326 & v39)) & v43) + v44 + 12331) ^ 0xA6;
  v327 = ((STACK[0x56D0] & 4 ^ (*(v309 + 85) ^ v323) & 0xC ^ (*(v309 + 85) ^ v323 ^ 0xB3) & (LODWORD(STACK[0x56D0]) ^ 0xA3) ^ 4) << v181) | ((*(v309 + 85) ^ v323 ^ 0xB7) >> v248);
  v328 = (2 * (v327 & v39 & 0x7F)) ^ v327;
  LOBYTE(v328) = *((v40 & (4 * (v328 & v39)) ^ v328 ^ 0xDB ^ v42 & (16 * ((v40 & (4 * (v328 & v39)) ^ v328) & v39)) & v43) + v44 + 12591);
  LOBYTE(v326) = ((v328 ^ 0xCA) + 54) ^ ((v328 ^ 0xDE) + 34) ^ ((v328 ^ 0x11) - 17);
  *(v309 + 85) = (v326 - 27) ^ (32 * v328) ^ (2 * v326 - ((4 * (v326 - 27)) & 0x9F) + 25) ^ 0xFB;
  v329 = v309;
  LODWORD(v309) = (((v295 - (v279 & 0x76) + 59) & 0x88 ^ (*(v309 + 86) ^ v267) & 0x6D ^ ((*(v309 + 86) ^ v267) ^ 0x80) & ((v295 - (v279 & 0x76) + 59) ^ 0x56) ^ 8) << v311) + ((*(v309 + 86) ^ v267 ^ 8) >> v198);
  LODWORD(v309) = v40 & (4 * ((v309 ^ (2 * (v309 & v39))) & v39)) ^ (v309 ^ (2 * (v309 & v39)));
  LOBYTE(v309) = *((v309 ^ 0xE6 ^ v42 & (16 * (v309 & v39)) & v43) + v44 + 12591);
  LOBYTE(v328) = ((v309 ^ 0xA2) + 94) ^ v309 ^ ((v309 ^ 0x27) - 39);
  v329[86] = (v328 - 27) ^ (32 * v309) ^ 0x76 ^ (2 * v328 - ((4 * (v328 - 27)) & 0x70) + 2);
  v330 = STACK[0x5770];
  v331 = STACK[0x5760];
  LODWORD(v309) = (((v329[87] ^ v323 ^ 0xF5) & ((v331 - (STACK[0x5770] & 0x18) + 12) ^ 0xC) ^ (v331 - (STACK[0x5770] & 0x18) + 12) & 0x42) << v181) ^ ((v329[87] ^ v323 ^ 0xB7) >> v248);
  LODWORD(v309) = (2 * (v309 & v39 & 0x7F)) ^ v309;
  v329[87] = *((v40 & (4 * (v309 & v39)) ^ v309 ^ 0x7D ^ v42 & (16 * ((v40 & (4 * (v309 & v39)) ^ v309) & v39)) & v43) + v44 + 12331) ^ 0x68;
  LODWORD(v309) = (((v319 - (v318 & 0x3A) - 99) & 0xFFFFFF8F ^ 0x8D ^ (v329[88] ^ v267 ^ 0xFFFFFF87) & ((v319 - (v318 & 0x3A) - 99) ^ 0x9D)) << v181) ^ ((v329[88] ^ v267 ^ 8) >> v198);
  LODWORD(v309) = (2 * (v309 & v39 & 0x7F)) ^ v309;
  v329[88] = *((v40 & (4 * (v309 & v39)) ^ v309 ^ 0x4D ^ v42 & (16 * ((v40 & (4 * (v309 & v39)) ^ v309) & v39)) & v43) + v44 + 12331) ^ 0x74;
  LODWORD(v309) = (((v310 - (v298 & 0xFFFFFFE8) - 12) & 0x42 ^ (v329[89] ^ v267 ^ 0x4A) & ((v310 - (v298 & 0xFFFFFFE8) - 12) ^ 0xF4) ^ 0x40) << v311) | ((v329[89] ^ v267 ^ 8) >> v248);
  LODWORD(v309) = (2 * (v309 & v39 & 0x7F)) ^ v309;
  LOBYTE(v309) = *((v40 & (4 * (v309 & v39)) ^ v309 ^ 0x7A ^ v42 & (16 * ((v40 & (4 * (v309 & v39)) ^ v309) & v39)) & v43) + v44 + 12591);
  LOBYTE(v287) = ((v309 ^ 0xDD) + 35) ^ ((v309 ^ 0xC3) + 61) ^ ((v309 ^ 0x1B) - 27);
  v329[89] = (v287 - 27) ^ (32 * v309) ^ 0x98 ^ (2 * v287 - ((4 * (v287 - 27)) & 0xC0) + 42);
  LODWORD(v309) = (v319 + (~v318 | 0x47) - 35) ^ 0xFFFFFFDA;
  LODWORD(v309) = ((v309 & 0x3E ^ (v329[90] ^ v323) & 6 ^ (v329[90] ^ v323 ^ 0x89) & v309 ^ 6) << v181) ^ ((v329[90] ^ v323 ^ 0xB7) >> v198);
  LODWORD(v309) = (2 * (v309 & v39 & 0x7F)) ^ v309;
  v329[90] = *((v40 & (4 * (v309 & v39)) ^ v309 ^ 0x2C ^ v42 & (16 * ((v40 & (4 * (v309 & v39)) ^ v309) & v39)) & v43) + v44 + 12331) ^ 0xB2;
  LODWORD(v309) = (((v310 - (v298 & 0xA8) + 84) & 0xB0 ^ ((v329[91] ^ v323) ^ 7) & ((v310 - (v298 & 0xA8) + 84) ^ 0x54) ^ 0x10) << v311) + ((v329[91] ^ v323 ^ 0xB7) >> v248);
  LODWORD(v309) = v40 & (4 * ((v309 ^ (2 * (v309 & v39))) & v39)) ^ (v309 ^ (2 * (v309 & v39)));
  v329[91] = *((v309 ^ 0x6F ^ v42 & (16 * (v309 & v39)) & v43) + v44 + 12331) ^ 0xFD;
  LODWORD(v309) = (((v329[92] ^ v267 ^ 0xDA) & ((v310 + (~v298 | 0xFFFFFFAF) + 41) ^ 0x28) ^ (v310 + (~v298 | 0xFFFFFFAF) + 41) & 0xD2) << v311) ^ ((v329[92] ^ v267 ^ 8) >> v248);
  LODWORD(v309) = (2 * (v309 & v39 & 0x7F)) ^ v309;
  v329[92] = *((v40 & (4 * (v309 & v39)) ^ v309 ^ 0x83 ^ v42 & (16 * ((v40 & (4 * (v309 & v39)) ^ v309) & v39)) & v43) + v44 + 12331) ^ 0x1A;
  LODWORD(v309) = (((v319 + (~v318 | 0x27) - 19) & 0xFFFFFFC1 ^ (v329[93] ^ v323 ^ 0x76) & ((v319 + (~v318 | 0x27) - 19) ^ 0xEC) ^ 0xC0) << v181) ^ ((v329[93] ^ v323 ^ 0xB7) >> v198);
  LODWORD(v309) = (2 * (v309 & v39 & 0x7F)) ^ v309;
  v329[93] = *((v40 & (4 * (v309 & v39)) ^ v309 ^ 0x94 ^ v42 & (16 * ((v40 & (4 * (v309 & v39)) ^ v309) & v39)) & v43) + v44 + 12331) ^ 0x29;
  LODWORD(v309) = v329[94] ^ v267;
  v332 = ((32 - (v331 - (v330 & 0xBF))) & 0x20 ^ (v309 ^ 0x28) & ((v331 - (v330 & 0xFFFFFFBF) - 33) ^ 0xFFFFFFDF) ^ 0x20) << v181;
  LODWORD(v309) = (((v309 ^ 8) >> ((v198 - ((2 * v198) & 4) - 110) & 0x19 ^ 0x10)) >> ((v198 - ((2 * v198) & 4) - 110) & 6 ^ 2)) ^ (v332 - (v332 >> 5 << 6) + 96) ^ 0x60;
  LOBYTE(v309) = (2 * v39) & (4 * ((v309 ^ (2 * (v309 & v39))) & v39)) ^ v309 ^ (2 * (v309 & v39));
  v329[94] = *(v44 + ((v309 ^ (8 * v39) & (4 * v39) & (2 * v39) & (16 * (v309 & v39))) ^ 0xFBu) + 12331) ^ 0xB;
  LODWORD(v309) = v329[95] ^ v267;
  v333 = LODWORD(STACK[0x5750]) - (STACK[0x57B0] & 0x70) - 72;
  v334 = (v333 & 0x7F ^ (v309 ^ 0x77) & (v333 ^ 0xFFFFFFB8) ^ 0x38) << v311;
  LODWORD(v309) = ((v309 ^ 8) >> (STACK[0x56F0] & 3)) >> (STACK[0x56F0] & 4);
  LOBYTE(v309) = (v334 ^ 0x77) & (v309 ^ 0x46) ^ (v309 | 0x77) ^ (v334 ^ 0x77) & 0xB9;
  LOBYTE(v309) = (2 * v39) & (4 * ((v309 ^ (2 * (v309 & v39))) & v39)) ^ v309 ^ (2 * (v309 & v39));
  LOBYTE(v309) = *(v44 + (v309 ^ 0x2Eu ^ ((8 * v39) & (4 * v39) & (2 * v39) & (16 * (v309 & v39)))) + 12591);
  LOBYTE(v334) = (((v309 ^ 0x9B) + 101) ^ ((v309 ^ 6) - 6) ^ ((v309 ^ 0x98) + 104)) - 27;
  v329[95] = v334 ^ ((32 * v309) | 6) ^ (((2 * v334) ^ 0x7F) + ((4 * v334) & 0xF8) + 3);
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5680])))();
}

uint64_t sub_100B148CC@<X0>(int a1@<W8>)
{
  v2 = STACK[0x11F8];
  STACK[0x1310] = (a1 ^ 0x238Eu) + STACK[0x1310] - 14307;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 7133) | 0x8C0) - 2270)) | a1)))();
}

uint64_t sub_100B1494C@<X0>(unint64_t a1@<X8>)
{
  STACK[0xC40] = a1;
  LODWORD(STACK[0x12CC]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100B1498C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 - 0x683CBC57EAB92A36) = a1 + 0x308E083E0C524CBELL;
  return (*(v3 + 8 * ((((v2 ^ 0xFFFF8DB9) + (v2 ^ 0x73F5)) * (v1 != 0x683CBC57EAB92A3ELL)) ^ v2)))();
}

uint64_t sub_100B14A0C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v8 = (v3 + (v5 << (v4 + 16)));
  v9 = v8[1];
  *(a2 - 1) = *v8;
  *a2 = v9;
  return (*(v7 + 8 * ((23722 * (a3 == v5)) ^ v6)))(a1, a2 + 2);
}

uint64_t sub_100B14A4C()
{
  v3 = ((v0 - 1208858671) & 0xFFDDDFB3) + 1067958528;
  v4 = STACK[0x10B0];
  if (LODWORD(STACK[0x10B0]) == -769884024)
  {
    v5 = -143113071;
  }

  else
  {
    v5 = -143155722;
  }

  v6 = v1 == v3;
  v7 = v1 == v3;
  if (v6)
  {
    v1 = v5;
  }

  LODWORD(STACK[0x1344]) = v1;
  if (v4 != -769884024)
  {
    v7 = 0;
  }

  return (*(v2 + 8 * ((v7 * ((v0 - 8994) ^ 0x54F)) ^ v0)))();
}

uint64_t sub_100B14AD8@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v5 = __ROR8__(a1 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x67659A219E1678C7 - v5) & 0x59384F21CB8C4789 | (v5 - 0x67659A219E1678C8) & 0xA0C7B0DE3473B876;
  v7 = __ROR8__(v6 ^ 0xF67C6B5BEBC0C515, 8);
  v6 ^= 0x32AF45A8E48CFCD1uLL;
  v8 = (v7 + v6) ^ 0x767CBF12CE87AC7DLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xBD6CE439E669F3DFLL;
  v11 = __ROR8__(v10, 8);
  v12 = *(v3 + 8 * v4);
  v13 = v10 ^ __ROR8__(v9, 61);
  v14 = (v11 + v13) ^ 0x1A1C4C99A6B3D690;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0x872D8E7D34B67662) - (v16 + v15) + 0x3C6938C165A4C4CELL) ^ 0x6486940AAD73A295;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0xBB877486649C029ALL) - (v19 + v18) - 0x5DC3BA43324E014DLL) ^ 0xAEC9668EBB2183BELL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8469B2E456434039;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  *a1 = (((v24 + v23 - ((2 * (v24 + v23)) & 0xFD49B1A9EF5C04E0) - 0x15B272B0851FD90) ^ 0xF76CBDCE9BD47C2ALL) >> (8 * (a1 & 7u))) ^ HIBYTE(a2) ^ 0x26;
  v25 = __ROR8__((a1 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((2 * (v25 - 0x67659A219E1678C8)) | 0xBCC242512D0F10CALL) - (v25 - 0x67659A219E1678C8) + 0x219EDED76978779BLL;
  v27 = __ROR8__(v26 ^ 0x71250552B6CB0AF9, 8);
  v26 ^= 0xB5F62BA1B987333DLL;
  v28 = (((2 * (v27 + v26)) | 0xF86C8A3964387342) - (v27 + v26) + 0x3C9BAE34DE3C65FLL) ^ 0x8A4AFA0E7C9B95DCLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xBD6CE439E669F3DFLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x1A1C4C99A6B3D690;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (0xA98F017DADFDDC60 - ((v33 + v34) | 0xA98F017DADFDDC60) + ((v33 + v34) | 0x5670FE825202239FLL)) ^ 0xE9F52499AD545C4;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v2;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x8469B2E456434039;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  *(a1 + 1) = (((v41 + v40 - ((2 * (v41 + v40)) & 0xC97629E8885EAB0ALL) + 0x64BB14F4442F5585) ^ 0x6D7371EE28552BDFLL) >> (8 * ((a1 + 1) & 7))) ^ BYTE2(a2) ^ 0xF9;
  v42 = __ROR8__((a1 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = ((2 * v42 + 0x3134CBBCC3D30E70) & 0xD0C698A515E73AE2) - v42 - 0xFDB230ECDD24AALL;
  v44 = v43 ^ 0x38D897D75540E012;
  v43 ^= 0xFC0BB9245A0CD9D6;
  v45 = (__ROR8__(v44, 8) + v43) ^ 0x767CBF12CE87AC7DLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (0x9D5F64679DCF0A2ELL - ((v47 + v46) | 0x9D5F64679DCF0A2ELL) + ((v47 + v46) | 0x62A09B986230F5D1)) ^ 0xDFCC7FA18459060ELL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (v50 + v49 - ((2 * (v50 + v49)) & 0xCB86E2D7BBD4A508) + 0x65C3716BDDEA5284) ^ 0x7FDF3DF27B598414;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0xBA6A34E809EF503ALL) - (v53 + v52) - 0x5D351A7404F7A81DLL) ^ 0x5DAB6BFCC20CE46;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (0x9D824E624666FD11 - ((v56 + v55) | 0x9D824E624666FD11) + ((v56 + v55) | 0x627DB19DB99902EELL)) ^ 0x91776D5030F6801DLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v59 + v58 - ((2 * (v59 + v58)) & 0x45A76BA7CF19C44ALL) + 0x22D3B5D3E78CE225) ^ 0xA6BA0737B1CFA21CLL;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  *(a1 + 2) = (((0x32FA6A8FD35FA01BLL - ((v62 + v61) | 0x32FA6A8FD35FA01BLL) + ((v62 + v61) | 0xCD0595702CA05FE4)) ^ 0xC4CDF06A40DA21BELL) >> (8 * ((a1 + 2) & 7))) ^ BYTE1(a2) ^ 0x79;
  v63 = __ROR8__((a1 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = ((2 * v63 + 0x3134CBBCC3D30E70) & 0x33B63C6199A84F82) - v63 + 0x4B8A7BF0D1425106;
  v65 = v64 ^ 0x4B60C5B513675AA2;
  v64 ^= 0x8FB3EB461C2B6366;
  v66 = __ROR8__(v65, 8);
  v67 = (((2 * (v66 + v64)) | 0x86088FECD6CA450ELL) - (v66 + v64) + 0x3CFBB809949ADD79) ^ 0xB578F8E4A5E28EFALL;
  v68 = v67 ^ __ROR8__(v64, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((v69 + v68) & 0x8616BC497E4DD51FLL ^ 0x841034007044111BLL) + ((v69 + v68) & 0x79E943B681B22AE0 ^ 0x40439001B00861) - 1) ^ 0x393C93A9979DEAA4;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (0x8A4FBD0E38F564A6 - ((v72 + v71) | 0x8A4FBD0E38F564A6) + ((v72 + v71) | 0x75B042F1C70A9B59)) ^ 0x6FAC0E6861B94DC9;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x58EFACCBC8D7665BLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v2;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0xCE47D4B90A0CA33ELL) - (v79 + v78) + 0x18DC15A37AF9AE60) ^ 0x9CB5A7472CBAEE59;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  *(a1 + 3) = a2 ^ 0x14 ^ (((((2 * (v82 + v81)) & 0x5E1CA041745E0538) - (v82 + v81) + 0x50F1AFDF45D0FD63) ^ 0x5939CAC529AA8339) >> (8 * ((a1 + 3) & 7)));
  return v12();
}

uint64_t sub_100B15890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v25 = a2 - 1;
  v26 = (v13 + v25);
  v27 = __ROR8__((v13 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = ((v27 + 0x4E0B6541E4935D63) | v22) - ((v27 + 0x4E0B6541E4935D63) | v9) + v9;
  v29 = v28 ^ v18;
  v30 = v28 ^ a3;
  v31 = (__ROR8__(v29, 8) + v30) ^ v21;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v24;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (v10 - ((v34 + v35) | v10) + ((v34 + v35) | a4)) ^ v8;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((a7 & (2 * (v38 + v37))) - (v38 + v37) + v12) ^ v7;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v14;
  v42 = (v11 - (v41 | v11) + (v41 | v15)) ^ a5;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v17;
  *(a1 + v25 + a6) = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ v19) >> (8 * (v26 & 7u))) ^ *v26;
  return (*(v23 + 8 * (((v25 == 0) * v20) ^ v16)))();
}

uint64_t sub_100B15F5C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *a1 = *v2;
  *(a1 + 4) = *(v2 + 4);
  *(a1 + 5) = *(v2 + 5);
  return (*(v3 + 8 * (a2 - 17114)))();
}

void sub_100B15FF4()
{
  v0 = __chkstk_darwin();
  v1 = 289235981 * (((v0 | 0xFDAF86E5) - v0 + (v0 & 0x250791A)) ^ 0x7A2D56DA);
  v2 = *v0 + v1;
  v3 = *(v0 + 44) ^ v1;
  v4 = *(v0 + 8);
  v19 = *(v0 + 16);
  v5 = *(v0 + 24) - v1;
  v18 = *(v0 + 48);
  v6 = *(&off_101353600 + (v2 ^ 0x1AF7)) - 4;
  v7 = *(v0 + 32);
  (*&v6[8 * (v2 ^ 0x63F4)])(*(&off_101353600 + (v2 ^ 0x1A84)) - 8, v20, 2696);
  (*&v6[8 * v2 + 189856])(*(&off_101353600 + (v2 ^ 0x1CDA)) - 12, &v21, 29984);
  v8 = (*&v6[8 * (v2 ^ 0x639F)])(29984);
  v9 = (*&v6[8 * v2 + 189672])(2696);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v17 = v10 || v4 == 0 || v3 == 142540101 || v19 == 0 || v5 == 359748693 || v18 == 0 || v7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100B161BC()
{
  LODWORD(STACK[0x820]) = 0;
  v2 = v0 ^ 0xB7D0EBBD;
  STACK[0x830] = v2;
  v3 = STACK[0x678];
  v4 = v2 + ((*(STACK[0x678] + 53) - ((2 * *(STACK[0x678] + 53)) & 0xA0)) << 8);
  v5 = *(STACK[0x678] + 22);
  STACK[0x7F0] = v5;
  STACK[0x800] = v5 >> 1;
  v6 = STACK[0x670];
  v7 = *(STACK[0x670] + 10);
  LODWORD(v2) = *(STACK[0x718] + 36);
  v8 = STACK[0x718];
  v9 = *(&off_101353600 + (v0 ^ (v0 + 1067)));
  v10 = *(v9 + 803 + (((v5 >> 1) ^ 0x97u) & ~(v5 << 7) ^ 0xDALL));
  v11 = (103 * *(STACK[0x718] + 34)) + 1955309570 - ((206 * *(STACK[0x718] + 34)) & 0xC0) + 94;
  v12 = v3[41];
  STACK[0x790] = v12;
  v13 = ((v12 - ((2 * v12) & 0x82) + 0x2640A62075759D41) ^ 0xD9BF59DF8A8A6216) & ((v4 - 0x79A6F8B8E6DD182CLL) ^ 0x4DD1A714A18ED716) ^ (v12 - ((2 * v12) & 0x82) + 0x2640A62075759D41) & 0x24400620041018E9;
  STACK[0x750] = v13;
  v14 = STACK[0x708];
  v15 = *(STACK[0x708] + 108);
  LOBYTE(v4) = *(v9 + (v11 ^ 0x748BA802u));
  STACK[0x7B0] = v9;
  v16 = ((v10 ^ ((((v5 >> 1) ^ 0x97) & ~(v5 << 7) ^ 0x66) + (v5 & 0xF4 ^ 0x14)) ^ 0x17) + 54) << 16;
  v17 = -45 * v4;
  LOBYTE(v11) = -45 * v4 - ((-45 * v4) ^ 0x1D);
  v18 = *(v8 + 14);
  v19 = v7;
  v20 = v7 >> 1;
  LODWORD(STACK[0x780]) = v15 - ((2 * v15) & 0x136);
  v21 = v14[118];
  LODWORD(v7) = ((v2 >> 1) | (v2 << 7)) - (v2 & 0x36) - 101;
  v22 = (v20 ^ 0xFFFFFF92) & ~(v19 << 7);
  STACK[0x7A0] = v19;
  v23 = v11 + v17 + ((v11 - (v11 ^ 0xFE)) ^ 0xFC);
  v24 = v6[2];
  v25 = *(v9 + 803 + (v7 ^ 0xD6)) ^ ((((v7 ^ 0x15) - 124) ^ ((v7 ^ 0x89) + 32) ^ ((v7 ^ 0x8C) + 27)) - 13);
  STACK[0x770] = ((v6[57] - 0x5BD2754545B96BA2 - ((2 * v6[57]) & 0xBC)) ^ 0xA42D8ABABA46945ELL) << ((v2 & 0x38 ^ 0xA) & 0x30) << (~(v2 & 0x38 ^ 0xA) & 8) << (v2 & 0x38 ^ 0x38);
  v26 = v3;
  v27 = v3[49];
  v28 = v3[25] - ((2 * v3[25]) & 0x4A) + 0x40D569252F21DF25;
  LOBYTE(v20) = (v23 >> 5) | (8 * v23);
  v29 = v3[60];
  LODWORD(v5) = v6[27];
  v30 = ((v24 - ((2 * v24) & 0x1B6)) << 8) - 9472;
  v31 = v14[34];
  v32 = v16 & 0xFFFFFFFF00FFFFFFLL | (v20 << 24);
  v33 = ((v18 - ((2 * v18) & 0x1F8)) << 16) + 0x462A8BF469FC0000;
  STACK[0x810] = v1;
  v34 = v6[60];
  v35 = (((v21 << 32) ^ 0x9AD153F6638AC725) & ~v32 | v32 & 0x9C750000) ^ 0x9AD153F6638AC725;
  LODWORD(v18) = *(v9 + 803 + (v22 ^ 0xDFLL));
  STACK[0x7C0] = v9 + 803;
  v36 = (v22 ^ 0x63) + (v19 & 0xF4 ^ 0x14);
  v37 = v3[40];
  LOBYTE(v32) = v31 - ((2 * v31) & 0xDE) + 111;
  v38 = ((((((v36 ^ 0x17 ^ v18) + 54) - ((2 * ((v36 ^ 0x17 ^ v18) + 54)) & 0x1D2)) << 8) + 0x9F3E86D4475E900) ^ 0x2750810AC148757ELL) & (v28 ^ 0xBF2A96DAD0DE20DBLL) ^ v28 & 0x4000000006381;
  v39 = ((v29 - ((2 * v29) & 0x1E4u) + 5944614) << 40) - 0x340000000000;
  v40 = (v38 ^ 0x69565D26BBFDDCA8) & (v33 ^ 0xB9D5740B9603FFFFLL) ^ v33 & 0xA8BB4413F0000;
  v41 = v35 | ((((2 * v25) & 0x6C ^ 0x2C) + (v25 ^ 0x21)) << 40);
  v42 = ((v41 - 2 * (v41 & 0x14B8220ECCEE255ELL ^ v35 & 4) - 0x6B47DDF13311DAA6) ^ 0xCE30E7276FBC7EF4) & (v13 ^ 0x1037598C434260A8);
  v43 = ((v27 - ((2 * v27) & 0xBC)) << 24) + 0x6996A7605E000000;
  v44 = ((v6[71] - ((2 * v6[71]) & 0x18u) + 41) << 56) - 0x1D00000000000000;
  v45 = ((v32 & 0x8F ^ 0x8F384FF5851E3F54) & (v30 & 0x5700 ^ 0xFFFADFFFDF1F6CDFLL) | v30 & 0x4000) ^ 0x8F384FF5851E7F5BLL;
  v46 = ((v33 ^ 0xB9D5740B9603FFFFLL) + 1) ^ v33 ^ ((((v38 ^ 0xC7DE3DF7EC75A2C4) + 0x59A55A05FF58F106) ^ ((v38 ^ 0xEA27971D64D0539DLL) + 0x745CF0EF77FD005DLL) ^ ((v38 ^ 0x35EC38D0D982E26) - 0x62DA5B80E14A8218)) - (((v40 ^ 0xDA36F514C17C2BD2) - 0x477E2560F5C090C5) ^ ((v40 ^ 0xCD6E4CE2EA5EDB19) - 0x50269C96DEE2600ELL) ^ ((v40 ^ 0x50A3060354DEF31CLL) + 0x321429889F9DB7F5)) + 0x747081E91EAEBA81);
  v47 = v30 & 0x8800 | 0x542C010205AB144CLL;
  v48 = v32 & 0x70 ^ 0x542C010205AB9C2CLL | v30 & 0xA800;
  LOBYTE(v18) = v6[64] - 12;
  LOBYTE(v30) = v18 & 0x23 | 0x54;
  LOBYTE(v18) = v18 ^ (2 * ((v18 ^ 0x3A) & (2 * ((v18 ^ 0x3A) & (2 * ((v18 ^ 0x3A) & (2 * ((v18 ^ 0x3A) & (2 * ((v18 ^ 0x3A) & (2 * ((v18 ^ 0x3A) & (2 * (v18 & 0x23)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30));
  v49 = (((v38 ^ 0x42A5977503D729CALL) - 0x23210F78EF0585F4) ^ ((v38 ^ 0xDE1BF9F5EEFD086ELL) + 0x40609E07FDD05BB0) ^ ((v38 ^ 0xB21907E76817FEDBLL) + 0x2C6260157B3AAD1BLL)) + 0x39650FD9716DA70BLL + (((v46 ^ 0xCD0F28E1D525AE3BLL) - 0x6164BD7ABBA79DF1) ^ ((v46 ^ 0x4824294281425B02) + 0x1BB04326103F9738) ^ ((v46 ^ 0xC3018A573D9BF539) - 0x6F6A1FCC5319C6F3));
  v50 = ((v5 - ((2 * v5) & 0x1EC) + 1405663283) << 32) - 0x3D00000000;
  LODWORD(v38) = v6[28];
  v51 = (v50 ^ 0xAC374809FF33FB71) & (v43 ^ 0xB91E12A85533FB71) ^ v50 & 0x3400A3700000000 ^ v49;
  v52 = ((v26[68] - ((2 * v26[68]) & 0x1ACu) + 2540) << 48) - 0x16000000000000;
  STACK[0x7D0] = v9 + 270;
  v53 = (((v39 ^ 0xD74125637969F1B2) + 0x54B130A99E98AB9CLL) ^ ((v39 ^ 0x262AD18C5C3E601FLL) - 0x5A253BB94430C5C9) ^ ((v39 ^ 0xABDF06EF255791ADLL) + 0x282F1325C2A6CB85)) - 2 * (v49 & (v39 ^ 0x5AB4F20000000000)) + 0x5FC101392E2B28EDLL + (((v51 ^ 0x45C28C9392DFA1E5) + 0x50F02D96700F267DLL) ^ ((v51 ^ 0xA1F3BB63F0DD49CLL) + 0x1F2D9AB3DDDD5306) ^ ((v51 ^ 0x9C1500DBA6E18E08) - 0x76D85E21BBCEF66ELL));
  v54 = v52 ^ 0x357957C774BA45CELL ^ (v53 - ((2 * v53) & 0x795EAF8EE9748B9CLL) + 0x3CAF57C774BA45CELL);
  LOBYTE(v18) = *(v9 + 270 + (v18 ^ 0x16)) ^ ((v18 ^ 0x2A) - 87) ^ 0xF9;
  v55 = (((v34 - ((2 * v34) & 0x1C8)) << 16) - 0x3AB46B38981C0000) ^ (((v37 - ((2 * v37) & 0xBC)) << 24) - 0x58C04441A2000000) ^ 0x62742F7939E40000 ^ (v45 | v48 ^ v47);
  v56 = (v54 ^ -v54 ^ ((v44 ^ 0xC00000000000000) - (v44 ^ 0x7A3F1A4EC0A4B5D2 ^ (v54 - ((2 * v54) & 0xEC7E349D81496BA4) + 0x763F1A4EC0A4B5D2)))) + (v44 ^ 0xC00000000000000);
  v57 = (v55 ^ -v55 ^ ((((v18 >> 1) | (v18 << 7)) << 32) - ((((v18 >> 1) | (v18 << 7)) << 32) ^ v55))) + (((v18 >> 1) | (v18 << 7)) << 32);
  v58 = v6[74] - ((2 * v6[74]) & 0xFF1F) - 0x11B1D2D865181071;
  v59 = ((((*(STACK[0x718] + 22) - ((2 * *(STACK[0x718] + 22)) & 0x1A)) << 8) + 0x368BC6EF89D10D00) ^ 0x5AF65AA59F268D5) & (v58 ^ 0x11B1D2D86518107ALL) ^ v58 & 0x8800082000401A2ALL;
  v60 = (((v38 - ((2 * v38) & 0x3A) + 3306065) << 40) - 0x340000000000) ^ 0x9661BEE1BFEC20F2 ^ (v57 - ((2 * v57) & 0x482747C37FD841E4) - 0x5BEC5C1E4013DF0ELL);
  LODWORD(v57) = ((v6[96] >> 1) | (v6[96] << 7)) - (v6[96] & 0x32);
  v61 = ((v26[24] - ((2 * v26[24]) & 0x16C)) << 24) + 0x4A91588EB6000000;
  v62 = *(STACK[0x718] + 39) - ((2 * *(STACK[0x718] + 39)) & 0xAA) + 0x4CDF74A0B22F5E55;
  v63 = (v59 & 0xCF824A14280F6232 ^ 0xDD44653A2F3EB88DLL ^ (v59 ^ 0x44DB549A2F9C9000) & ((((v6[59] - 2 * (v6[59] & 0x1F)) << 16) - 0x2466076EF9E10000) ^ 0xEBE44D7AD1EF9DCDLL)) & (v61 ^ 0xB56EA77149FFFFFFLL) ^ v61 & 0x880000A07000000;
  v64 = (((v6[29] - ((2 * v6[29]) & 0xFFBFu) + 41468) << 48) - 0x1D000000000000) ^ 0x22A64D7733DC325BLL ^ (v60 - 0x7C86B288CC23CDA4 + (~(2 * v60) | 0xF90D651198479B49));
  LOBYTE(v60) = *(v9 + 803 + ((v57 - 103) ^ 0xD4)) ^ (((2 * (v57 - 103)) & 0xF4 ^ 0x24) + ((102 - v57) ^ 0x97)) ^ 0x17;
  v65 = (((v14[88] - ((2 * v14[88]) & 0x194u) + 7811055) << 40) - 0x250000000000) ^ v63 & 0x3730429DBA55E7B9 ^ (v63 ^ 0x9146252001221804) & ((((v26[67] - ((2 * v26[67]) & 0x72u) + 1459042375) << 32) - 0xE00000000) ^ 0x9E38855B45AA1846) ^ 0x99D035FFFFEF5F56;
  v66 = v14;
  v67 = (v65 - 2 * (v65 & 0x73DDE7B215F4B1B7 ^ v58 & 0x20) - 0xC22184DEA0B4E69) ^ ((v14[90] + 50481 + (~(2 * v14[90]) | 0xFFFFFF9F)) << 48) ^ 0x36EDE7B215F4B197;
  v68 = ((v60 + 54) << 16) & 0x7D0000 | (v62 & 0x4020000800001D7 ^ 0x28BDF20E2F340005 ^ ((((v6[39] - ((2 * v6[39]) & 0xBE)) << 8) + 0x1AD278750B715F00) ^ 0x4B3F075268C77D28) & (v62 ^ 0xB3208B5F4DD0A1EDLL)) & ~((v60 + 54) << 16);
  v69 = (v67 - ((2 * v67) & 0x1317E2D4AB714650) - 0x36740E95AA475CD8) ^ (((v14[44] - ((2 * v14[44]) & 0x6Au) + 215) << 56) - 0x2200000000000000);
  v70 = ((v26[48] - ((2 * v26[48]) & 0x188)) << 24) + 0x564B0B60C4000000;
  v71 = (((v14[20] - ((2 * v14[20]) & 0x18u) + 6099776) << 40) - 0x340000000000) ^ 0x5D130C0000000000;
  v72 = (v68 & 0xFF827A692EA482FELL ^ 0xBA3A0D755A381041 ^ (v68 ^ 0x82AD72D611595D01) & ((((v6[38] - ((2 * v6[38]) & 0xF0u) + 455645827) << 32) - 0xB00000000) ^ 0x1B551FEED15B7D01)) & (v70 ^ 0xA9B4F49F3BFFFFFFLL) ^ v70 & 0x100A0B3578000000;
  v73 = (((v6[40] - ((2 * v6[40]) & 0x66u) + 221) << 56) - 0x2A00000000000000) ^ (v64 - ((2 * v64) & 0xF6B095C6701CCA5CLL) - 0x4A7B51CC7F19AD2);
  v74 = ((*v6 - ((2 * *v6) & 0x92u) + 239) << 56) - 0x2600000000000000;
  v75 = (v71 ^ -v71 ^ ((v72 ^ 0xD74F8BEAC7E36F38) - ((v71 - ((2 * v71) & 0x73F600000000000) - 0x3C604F70F339D499) ^ 0x14D03B65CB25445FLL ^ v72))) + (v72 ^ 0xD74F8BEAC7E36F38);
  v76 = ((((v26[78] - ((2 * v26[78]) & 0x22u) + 6479) << 48) - 0x3E000000000000) ^ 0xEDD837D1F26D9DE0) & (v74 ^ 0x36FF3FF5F26FFFFALL);
  v77 = *(*STACK[0x710] + 4);
  STACK[0x7E0] = v77;
  v78 = v56 ^ v77;
  v79 = v78 ^ v73;
  v80 = v76 ^ (v74 & 0xB00000000000000 | 0x5013D735EA581627);
  v81 = v79 ^ 0xD7A3158BC59C9A30;
  v82 = v80 ^ (v75 - ((2 * v75) & 0x5BB5C1C8306B178ELL) - 0x52251F1BE7CA7439);
  v83 = (((LODWORD(STACK[0x780]) + 65474) << 48) - 0x27000000000000) ^ STACK[0x770] ^ STACK[0x750] & 0xA5773AD65CADA451 ^ v82 ^ v42;
  v84 = (v79 ^ 0x285CEA743A6365CFLL) & (v69 ^ 0x33F6F21581416029);
  v85 = v78 ^ 0x2EFB0987401729DCLL;
  v86 = (v83 ^ 0x67A626F7C55C751CLL) & (v78 ^ 0x2EFB0987401729DCLL);
  v87 = v81 & (v78 ^ 0xD104F678BFE8D623);
  v88 = v69 ^ v82;
  v89 = v86 ^ v88 ^ 0xCB5CBAF07062A75ELL;
  v90 = v81 ^ (v88 ^ 0xCB5CBAF07062A75ELL) & (v69 ^ 0xCC090DEA7EBE9FD6);
  v91 = v84 & 0x100000;
  if ((v84 & 0x100000 & v85) != 0)
  {
    v91 = -v91;
  }

  v92 = v83 ^ 0x9859D9083AA38AE3;
  v93 = v92 ^ v87;
  v94 = v93 ^ v84 & 0xFFFFFFFFFFEFFFFFLL ^ (v91 + v85);
  v95 = ((((((v88 ^ 0xCB5CBAF07062A75ELL) & 0x3744ACE36E77675BLL) - ((v88 ^ 0xCB5CBAF07062A75ELL) & 0x3744ACE36E77675BLL ^ 0x3744ACE36E77675BLL)) ^ 0xFFFFFFFFFFFFFFFELL) + ((v88 ^ 0xCB5CBAF07062A75ELL) & 0x3744ACE36E77675BLL)) | (v88 ^ 0x34A3450F8F9D58A1) & 0xC8BB531C918898A4) & v92;
  v96 = v89 ^ 0x632AD668E013C7D0 ^ v93;
  v97 = v90 ^ 0x6E807D10291F7139;
  if (v48 == v47)
  {
    v98 = v94 ^ 0x1829DBD49149AC6DLL;
  }

  else
  {
    v98 = v94 ^ 0x1829DB8000000000;
  }

  v99 = v69 ^ v95 ^ 0x757376C06F84E25BLL ^ v90;
  *(&v100 + 1) = v94 ^ 0x1829DBD49149AC6DLL;
  *&v100 = v94;
  v101 = v97 << (STACK[0x790] & 0x30) << (STACK[0x790] & 0xA) << (~STACK[0x790] & 0x3A);
  v102 = v97 ^ __ROR8__(v97, 1) ^ (v97 >> 6);
  v103 = __ROR8__((v98 >> 15) & 0x1FFFFFF000000 ^ __ROR8__((v100 >> 61) ^ v94 ^ 0x1829DBD49149AC6DLL, 40) ^ 0xE0B31CBDB076CD80, 24) ^ ((v94 ^ 0x1829DBD49149AC6DLL) << 25);
  v104 = v103 ^ 0x76CD80E0B31CBDB0;
  v105 = v99 ^ __ROR8__(v99, 10) ^ (v99 >> 17) ^ (v99 << 47);
  v106 = v103 ^ 0x76CD80E0B31CBDB0 ^ ((v102 ^ -v102 ^ (v101 - (v101 ^ v102))) + v101);
  v107 = v89 ^ 0x8717DFE2A3B1E3F2 ^ __ROR8__(v89 ^ 0x8717DFE2A3B1E3F2, 7) ^ ((v89 ^ 0x8717DFE2A3B1E3F2) << 23) ^ ((v89 ^ 0x8717DFE2A3B1E3F2) >> 41);
  v108 = ((((v103 ^ 0x76CD80E0B31CBDB0) - (v103 ^ 0x89327F1F4CE3424FLL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v103 ^ 0x76CD80E0B31CBDB0)) & v106;
  v109 = v96 ^ __ROR8__(v96, 19) ^ (v96 >> 28) ^ (v96 << 36) ^ v107;
  v110 = v105 ^ v107;
  v111 = v105 & ~v106;
  v112 = v106 ^ v107 & ~v105;
  v113 = v104 & ~v109 ^ v105 ^ v107;
  v114 = v113 ^ 0x56AAE6BF024184FFLL ^ v108 ^ v109;
  v115 = v109 & ~v110 ^ v105;
  v116 = ((v108 ^ v109 ^ -(v108 ^ v109) ^ ((v111 ^ v104) - (v108 ^ v109 ^ v111 ^ v104))) + (v111 ^ v104)) ^ 0xE6CB410EAF9D375FLL;
  v117 = v114 & 0x66AE914FDB2F7A95 ^ (v114 << 45) ^ ((v114 >> 19) & 0xEB024D0856ALL ^ v114 & 0x99516EB024D0856ALL | (v114 >> 19) & 0x114FDB2F7A95);
  v118 = (v112 + v115 - 2 * (v112 & v115)) ^ 0x3378C4AC0693E070;
  v119 = ((v114 >> 28) ^ -(v114 >> 28) ^ (v117 - (v117 ^ (v114 >> 28)))) + v117;
  v120 = v116 ^ (8 * v116) ^ (v116 << 25) ^ (v116 >> 39) ^ (v116 >> 61);
  v121 = ((v118 ^ (v118 >> 10)) + (v118 << 54) - 2 * ((v118 << 54) & v118)) ^ __ROR8__(v118, 17);
  v122 = v119 & 0x74E2F1C3A79ECCEBLL ^ (v114 << 36) & 0x74E2F1C000000000 | v119 & 0x8B1D0E3C58613314 ^ (v114 << 36) & 0x8B1D0E3000000000;
  *(&v100 + 1) = v112;
  *&v100 = v112 ^ 0x15C7857573502C40;
  v123 = ((v112 ^ 0x15C7857573502C40 ^ ((v112 ^ 0x15C7857573502C40) >> 1)) & 0xA75BA79203C18905 ^ (v112 << 63) | (v112 ^ 0x15C7857573502C40 ^ ((v112 ^ 0x15C7857573502C40) >> 1)) & 0x58A4586DFC3E76FALL) ^ (v100 >> 6);
  v124 = __ROR8__(__ROR8__(v121, 7) ^ 0x437DDE0442B25B3ALL, 57);
  v125 = v120 ^ v123;
  v126 = v113 ^ 0x62C1F2A9E89E4C79 ^ __ROR8__(v113 ^ 0x62C1F2A9E89E4C79, 7) ^ ((v113 ^ 0x62C1F2A9E89E4C79) >> 41) ^ ((v113 ^ 0x62C1F2A9E89E4C79) << 23);
  v127 = v124 ^ 0x4110FDDEA6D262DELL;
  v128 = v121 ^ v126;
  v129 = (v124 ^ 0x4110FDDEA6D262DELL | 0xFFFFBFFFFFFFFFFFLL) - (v124 ^ 0xBEEF4221592D9D21);
  v130 = v129 & 0x10000000000;
  v131 = v127 & 0x400000000000;
  if ((v127 & 0x400000000000 & ~(v121 ^ v126)) != 0)
  {
    v131 = -v131;
  }

  if ((v130 & ~v128) != 0)
  {
    v130 = -v130;
  }

  v132 = v131 + (v121 ^ ~v126) + v130;
  v133 = (v122 ^ -v122 ^ (v126 - (v122 ^ v126))) + v126;
  v134 = v132 ^ v129 & 0xFFFFFEFFFFFFFFFFLL;
  v135 = v133 & ~v128;
  if (v51 == 0xD3C8B7FE0B33FB71)
  {
    v134 = v127;
  }

  v136 = v133 ^ v123 & ~v120;
  v137 = v134 & v128 ^ v125;
  v138 = v120 & ~v133;
  v139 = v120 ^ 0xEEAFC2D3EC65C482 ^ v121 & ~v125 ^ v136;
  v140 = v138 ^ v128;
  v141 = v140 ^ v136;
  *(&v142 + 1) = v141 ^ 0x7D752DD7DCC251B6 ^ ((v141 ^ 0x7D752DD7DCC251B6uLL) >> 19);
  *&v142 = v141 ^ 0x7D752DD7DCC251B6;
  v143 = (v142 >> 52) ^ __ROR8__(v141 ^ 0x7D752DD7DCC251B6, 7) & 0xFE00000000000FFFLL ^ 0xADBA340565865829;
  v144 = v121 ^ 0xD8700A4CB46F51B0 ^ v135 ^ v137;
  *(&v142 + 1) = v141 ^ 0x7D752DD7DCC251B6;
  *&v142 = v141;
  v145 = (v142 >> 28) ^ __ROR8__(v143, 12) ^ 0x829ADBA497048518;
  v146 = v139 ^ __ROR8__(v139, 61) ^ (v139 >> 39) ^ (v139 << 25);
  v147 = v140 ^ 0x66173F92B629299ALL ^ ((v140 ^ 0x66173F92B629299ALL) << 23) ^ (((v140 ^ 0x66173F92B629299ALL) >> 7) ^ ((v140 ^ 0x66173F92B629299ALL) >> 41) | ((v140 ^ 0x66173F92B629299ALL) << 57));
  v148 = __ROR8__(v145, 12);
  v149 = v144 ^ __ROR8__(v144, 10) ^ (v144 >> 17) ^ (v144 << 47);
  v150 = v137 ^ 0xE7E200F443AAFCDFLL ^ __ROR8__(v137 ^ 0xE7E200F443AAFCDFLL, 1) ^ ((v137 ^ 0xE7E200F443AAFCDFLL) >> 6) ^ ((v137 ^ 0xE7E200F443AAFCDFLL) << 58);
  v151 = __ROR8__(v147, 12);
  v152 = __ROR8__(v149, 40) ^ 0x70F4F18803772BCBLL;
  v153 = v148 & 0x1000000;
  if ((v148 & 0x1000000 & v151) != 0)
  {
    v153 = -v153;
  }

  v154 = (v153 + v151) ^ v148 & 0xFFFFFFFFFEFFFFFFLL;
  v155 = v149 ^ v147;
  v156 = ((v154 - (v154 ^ 0x5A6B1BEBB2830660)) ^ 0xFFFFFFFFFFFFFFC0) + v154;
  v157 = (__ROR8__(v152, 24) ^ 0x88D4348F0B0E77FCLL) & (v149 ^ v147) ^ v150 ^ v146;
  v158 = (v147 ^ -v147 ^ (v145 - (__ROR8__(v156, 52) ^ 0xB1BEBB28306605A6))) + v145;
  v159 = v158 ^ v150 & ~v146;
  v160 = v146 & ~v158 ^ v155;
  v161 = v146 ^ 0x318CC080266427A2 ^ v149 & ~(v150 ^ v146) ^ v159;
  v162 = v158 & ~v155 ^ v149;
  v163 = v159 ^ 0xC5AB08FD33C1B5A7 ^ v160;
  v164 = v161 ^ __ROR8__(v161, 61) ^ (v161 << 25) ^ (v161 >> 39);
  v165 = v157 ^ 0xCC98C5A695FE0D08 ^ v162;
  v160 ^= 0xA0B866C79876C7E4;
  v166 = (v160 << 23) & 0xA674C7D947800000;
  v167 = (v160 << 23) & 0x598B3826B8000000;
  v168 = (((v157 ^ 0x32237A0B9C0468F5) & 0x3F) << 48) ^ __ROR8__(v157 ^ 0x32237A0B9C0468F5 ^ __ROR8__(v157 ^ 0x32237A0B9C0468F5, 1) ^ ((v157 ^ 0x32237A0B9C0468F5) >> 6), 10) ^ 0x324D349053FE0F69;
  v169 = (v160 >> ((STACK[0x7A0] >> 1) & 7) >> ((STACK[0x7A0] >> 1) & 7 ^ 7)) ^ v160 ^ ((v160 >> 41) | (v160 << 57));
  v170 = __ROR8__(__ROR8__(v165, 26) & 0xFFFF003FFFFFFFFFLL ^ __ROR8__(v165, 16) ^ 0x93814257E7ABAD09, 48) ^ 0x4257E7ABAD099381;
  v171 = v170 & 1;
  v172 = (v169 & 0x598B3826B8372652) + v167;
  v173 = v169 & v167;
  if ((v170 & 1 & (v165 >> 17)) != 0)
  {
    v171 = -v171;
  }

  v174 = v164 ^ __ROR8__(v168, 54);
  v175 = v170 & 0xFFFFFFFFFFFFFFFELL ^ (v165 << 47) ^ (v171 + ((v165 >> 17) | (v165 << 54)));
  v176 = v174 ^ 0xCB2DBEB007C25B36;
  v177 = v169 & 0xA674C7D947C8D9ADLL ^ v166 ^ (v172 + 2 * v173 - 4 * v173);
  v178 = v175 ^ v177;
  v179 = v163 ^ (v163 << 36) ^ ((v163 >> 19) ^ (v163 >> 28) | (v163 << 45)) ^ v177;
  v180 = v179 & ~(v175 ^ v177);
  v181 = v177 & ~v175;
  if (v162 == v157)
  {
    v182 = v175;
  }

  else
  {
    v182 = v175 ^ ~v176;
  }

  v183 = v174 ^ 0x34D2414FF83DA4C9;
  v184 = (v174 ^ 0x34D2414FF83DA4C9) & ~v164;
  v185 = v164 & ~v179;
  v186 = v179 ^ v184;
  v187 = v181 ^ v183;
  v188 = v186 ^ 0xE78A8F8F26E90B2BLL ^ v178 ^ v185;
  v189 = (v186 ^ v164 ^ v182 & v176) + 0x68ABEAE5737B7693 - ((2 * (v186 ^ v164 ^ v182 & v176)) & 0xD157D5CAE6F6ED26);
  v190 = __ROR8__(__ROR8__(v189, 47) & 0xFFFFFFFFFFFE3FFFLL ^ __ROR8__(v189 ^ (v189 >> 61), 50) ^ 0x7A7CF2C225D1082FLL, 14) ^ 0x20BDE9F3CB089744;
  *(&v191 + 1) = v187;
  *&v191 = v187 ^ 0xA2A16E7D4060C2ACLL;
  v192 = (v191 >> 1) ^ v187 ^ 0xA2A16E7D4060C2ACLL ^ ((v187 ^ 0xA2A16E7D4060C2ACLL) >> 6) ^ ((v187 ^ 0xA2A16E7D4060C2ACLL) << 58);
  v193 = (v190 & 0xDADECF39C97D681CLL ^ (v189 >> 39) & 0x17D681C | v190 & 0x252130C6368297E3) ^ __ROR8__(v189, 39) & 0xFFFFFFFFFE8297E3;
  v194 = v178 ^ v185 ^ 0xF14770720A54D309 ^ ((v178 ^ v185 ^ 0xF14770720A54D309) << 23) ^ (((v178 ^ v185 ^ 0xF14770720A54D309) >> 41) ^ ((v178 ^ v185 ^ 0xF14770720A54D309) >> 7) | ((v178 ^ v185 ^ 0xF14770720A54D309) << 57));
  v195 = ~(v178 ^ v185 ^ 9 ^ ((v178 ^ v185 ^ 0xF14770720A54D309) >> 41) ^ ((v178 ^ v185 ^ 0xF14770720A54D309) >> 7));
  v196 = v187 ^ 0x1DE76D00F7B2971ELL ^ v180 ^ v175 ^ __ROR8__(v187 ^ 0x1DE76D00F7B2971ELL ^ v180 ^ v175, 10) ^ ((v187 ^ 0x1DE76D00F7B2971ELL ^ v180 ^ v175) << 47) ^ ((v187 ^ 0x1DE76D00F7B2971ELL ^ v180 ^ v175) >> 17);
  v197 = v193 ^ v192;
  v198 = v188 ^ __ROR8__(v188, 19) ^ (v188 << 36) ^ (v188 >> 28) ^ v194;
  v199 = v196 & ~(v193 ^ v192) ^ v193;
  v200 = v193 & ~v198 ^ v196 ^ v194;
  v201 = v192 & ~v193 ^ v198;
  v202 = v197 ^ v194 & ~v196;
  v203 = v199 ^ v201;
  v204 = (v200 - ((2 * v200) & 0x42736446713C71F4) + 0x2139B223389E38FALL) ^ v201;
  v205 = v204 ^ 0x87C89DE8DF6D5E91;
  v206 = ((v204 >> 19) - 0x783762172092A16FLL - ((v204 >> 18) & 0x3BD1BEDABD22)) ^ v204 ^ 0x87C89DE8DF6D5E91;
  v207 = v198 & ~(v196 ^ v194) ^ v196 ^ v202;
  v208 = (v204 << 45) & (v204 ^ 0xC8400000000000) & 0x6EE400000000000 ^ (v204 << 45) & 0xC8400000000000 ^ (v206 | (v204 << 45)) & 0x6EE49FA780B0876;
  v209 = (((v204 << 45) & 0xF911A00000000000 ^ 0xFAAF94D67FE97D96 ^ v206 & 0xF911B60587F4F789) & ~v208 | v208 & 0x440492800020060) ^ (v204 >> 28);
  v210 = (v202 ^ 0x60319059DF71CA55) << STACK[0x800] << ((STACK[0x7F0] >> 1) & 0x3F ^ 0x3F);
  v211 = v200 - 0x5C624418732FCC04 - ((2 * v200) & 0x473B77CF19A067F8);
  *(&v191 + 1) = v203 ^ 0x1503C0FF64ECBF78;
  *&v191 = v203 ^ 0x8000000000000000;
  v212 = v209 ^ (v205 << 36);
  v26[53] = BYTE1(v209) ^ 0x7D;
  v213 = (v209 >> 17) & 0x80 | (v209 >> 25);
  v214 = v203 ^ __ROR8__(v203, 39) ^ (v191 >> 61);
  *(&v191 + 1) = v207 ^ 0x36;
  *&v191 = v207 ^ 0x884CD14C357D2C00;
  v26[41] = v209 ^ 0x96;
  v215 = v202 ^ (v202 >> 6) ^ (v202 >> 1) ^ (v202 << 58) ^ v210;
  v216 = v207 ^ __ROR8__(v207, 17) ^ (v191 >> 10);
  v26[22] = BYTE2(v209) ^ 0xE9;
  v217 = STACK[0x7B0] + 532;
  LOBYTE(v202) = (v213 ^ 0xA9) + *(v217 + (v213 ^ 0xF6));
  v218 = v211 ^ (v211 << 23) ^ ((v211 >> 7) ^ (v211 >> 41) | (v211 << 57));
  v219 = STACK[0x718];
  v219[34] = (((2 * v202) & 0x28) - v202 - 21) ^ 0x20;
  v220 = STACK[0x7D0];
  LOBYTE(v213) = *(STACK[0x7D0] + (((BYTE4(v212) ^ 0xC6) - 81) ^ 0x35)) ^ ((((BYTE4(v212) ^ 0xC6) - 81) ^ 9) - 87) ^ 0xA5;
  LODWORD(v211) = (v214 ^ 0x6BCA198195C6B8F9uLL) % 0x186F3B020FB60C4ELL;
  v219[36] = BYTE5(v212) ^ 0x7D;
  v66[118] = ((v213 >> 1) | (v213 << 7)) ^ 0x2E;
  LOBYTE(v213) = (v211 ^ 0x84) - ((2 * v211) & 0xF6) + (((v214 ^ 0x1F) - 80) ^ ((v214 ^ 0x71) - 62) ^ ((v214 ^ 0x97) + 40)) + 1 - ((2 * ((v211 ^ 0x84) - ((2 * v211) & 0xF6) + (((v214 ^ 0x1F) - 80) ^ ((v214 ^ 0x71) - 62) ^ ((v214 ^ 0x97) + 40)) + 1) + 2) & 0xA) + 54;
  LOBYTE(v207) = ((((v211 - ((2 * v211) & 4) + 2) ^ 0x9A) - 43) ^ (((v211 - ((2 * v211) & 4) + 2) ^ 0x85) - 52) ^ (((v211 - ((2 * v211) & 4) + 2) ^ 0x1D) + 84)) + (((v213 ^ 0xAC) + 84) ^ ((v213 ^ 2) - 2) ^ ((v213 ^ 0xAB) + 85)) - 72;
  LODWORD(v213) = *(v220 + (((BYTE6(v212) ^ 0x7A) - 81) ^ 0x35));
  v26[25] = v207;
  LODWORD(v202) = ((((HIWORD(v212) ^ 0xC7A) + 175) ^ 9) - 87) ^ v213;
  LODWORD(v213) = (v214 >> 9) & 0x80 | (v214 >> 17) & 0x7F;
  v6[57] = HIBYTE(v212) ^ 0xC;
  v66[108] = ((v202 >> 1) | (v202 << 7)) ^ 0xFC;
  LODWORD(v212) = *(v220 + (((BYTE1(v214) ^ 0xB8) - 81) ^ 0x35)) ^ (((((v214 >> 8) ^ 0x95C6B8) + 175) ^ 9) - 87) ^ 0x11;
  v6[10] = ((v212 >> 1) | (v212 << 7)) ^ 0x74;
  LOBYTE(v202) = *(v217 + (v213 ^ 0x8D ^ -(v213 ^ 0x8D) ^ (167 - (v213 ^ 0x2A))) + 167);
  v26[49] = BYTE3(v214) ^ 0x95;
  v6[71] = HIBYTE(v214) ^ 0x6B;
  LOBYTE(v202) = (v213 ^ 0x75 ^ v202) + 2 * ((v213 ^ 0x75) & v202);
  v6[28] = BYTE5(v215) ^ 0x9E;
  v6[27] = BYTE4(v214) ^ 0x81;
  v26[68] = BYTE6(v214) ^ 0xCA;
  v66[34] = v215 ^ 0x56;
  v219[14] = (v202 - ((2 * v202) & 0x66) + 51) ^ 0xF8;
  v6[60] = BYTE2(v215) ^ 0xB4;
  v26[60] = BYTE5(v214) ^ 0x19;
  v6[64] = BYTE4(v215) ^ 0x34;
  v26[40] = BYTE3(v215) ^ 0x57;
  v6[2] = BYTE1(v215) ^ 0xE8;
  v6[29] = BYTE6(v215) ^ 0xA9;
  v221 = ((v216 & 1) << 7) | (v216 >> 1);
  LODWORD(v212) = (v221 ^ 0xCF) + 122;
  LODWORD(v215) = *(v220 + ((((v215 >> 55) & 0x5E ^ 0xA) + (HIBYTE(v215) ^ 0xAA)) ^ 0x35)) ^ (((((v215 >> 55) & 0x5E ^ 0xA) + (HIBYTE(v215) ^ 0xAA)) ^ 9) - 87) ^ 0x51;
  v6[40] = ((v215 >> 1) | (v215 << 7)) ^ 0x54;
  v222 = (v216 ^ 0x1E57956A5DDB3688) >> (v194 & 0x10) >> (v194 & 0x20);
  v223 = STACK[0x7C0];
  LODWORD(v221) = *(STACK[0x7C0] + (v221 ^ 9));
  v6[59] = BYTE2(v216) ^ 0xDB;
  LODWORD(v221) = ((v221 >> 2) | (v221 << 6)) ^ ((v212 << 6) | (v212 >> 2)) ^ 0xFFFFFFA5;
  v219[22] = BYTE1(v216) ^ 0x36;
  v66[88] = BYTE5(v216) ^ 0x95;
  v26[67] = BYTE4(v216) ^ 0x6A;
  v26[24] = BYTE3(v216) ^ 0x5D;
  LOBYTE(v190) = ((((v221 >> 6) | (4 * v221)) ^ 0xBE) - 99) ^ ((((v221 >> 6) | (4 * v221)) ^ 6) + 37) ^ ((((v221 >> 6) | (4 * v221)) ^ 0x39) + 28);
  v66[90] = ((((v222 >> (v195 & 0x30)) - ((2 * (v222 >> (v195 & 0x30))) & 0xB4) - 102) ^ 2) - 64) ^ 0x58;
  LOBYTE(v221) = (v216 >> 49) & 0x80 | (v216 >> 57);
  v6[74] = v190 - 110;
  LOBYTE(v190) = ((v221 ^ 0x84) + 122) ^ *(v223 + (v221 ^ 0x42));
  v66[44] = (((v190 ^ 0xCF) + 70) ^ ((v190 ^ 0x90) + 27) ^ ((v190 ^ 0x48) - 61)) - 104;
  LODWORD(v202) = (((v218 >> 1) & 0x6E | (v218 << 7)) ^ ((v218 >> 1) | 0xEE) ^ 0xFFFFFFF8) + *(v217 + (((v218 >> 1) & 0x6E | (v218 << 7)) ^ ((v218 >> 1) | 0xEE) ^ 0xA7));
  v6[38] = BYTE4(v218);
  LODWORD(v217) = (BYTE5(v218) - 81);
  v26[48] = BYTE3(v218);
  LOBYTE(v202) = v202 ^ -v202 ^ (-53 - (v202 ^ 0xCB));
  v6[39] = BYTE1(v218);
  v6[96] = BYTE2(v218);
  LODWORD(v190) = ((9 - (v217 ^ 9)) ^ v217) - v217 - 2 * (((9 - (v217 ^ 9)) ^ v217) & -v217);
  v219[39] = (((v202 ^ 0xA3) + 10) ^ ((v202 ^ 0x71) - 36) ^ ((v202 ^ 0xD2) + 121)) + 32;
  LODWORD(v221) = *(v220 + ((v190 + 9) ^ 0x3CLL));
  LODWORD(v202) = (((v190 - 78) >> 1) | (v190 << 7)) - ((v190 - 78) & 0xFFFFFFBE) + 95;
  v224 = HIBYTE(v218);
  LODWORD(v202) = (((v202 ^ ((v221 >> 1) | (v221 << 7))) >> 7) & 1 | (2 * (v202 ^ ((v221 >> 1) | (v221 << 7))))) ^ 0xFFFFFFD7;
  v66[20] = ((v202 >> 1) | (v202 << 7)) ^ 0x48;
  LODWORD(v202) = *(v220 + ((BYTE6(v218) - 81) ^ 0x35));
  LODWORD(v221) = ((HIWORD(v218) + 175) ^ 9) - 75;
  LODWORD(v218) = v221 & 0xFFFFFFBA ^ 0xFFFFFFE3;
  DWORD1(v191) = v221 ^ ~v202;
  LODWORD(v191) = (v221 ^ v202 ^ (2 * ((v221 ^ 0x74) & (2 * ((v221 ^ 0x74) & (2 * ((v221 ^ 0x74) & (2 * ((v221 ^ 0x74) & (2 * ((v221 ^ 0x74) & (2 * (v218 ^ v221 & 0xE)) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ 0x42) << 24;
  v26[78] = v191 >> 25;
  *v6 = v224;
  v225 = STACK[0x710];
  *(*STACK[0x710] + 4) = STACK[0x7E0] + 1;
  v226 = *v225;
  v227 = v66;
  v228 = ((v66[26] - ((2 * v66[26]) & 0x3A)) << 24) + 0x5079D8981D000000;
  v229 = *(v226 + 9) - ((2 * *(v226 + 9)) & 0xF0) - 0x549FB7F4C7646288;
  v230 = ((((v66[86] - 2 * (v66[86] & 0x7F)) << 8) - 0x119A3D31845C8100) ^ 0x451ECB40F35CE48CLL) & (v229 ^ 0x549FB7F4C76462B7) ^ v229 & 0x473;
  v231 = (v228 & 0x106810133B000000 ^ 0xDD3267F3F4 ^ ((((v219[11] - ((2 * v219[11]) & 0x1A2)) << 16) + 0x39BC4FB190D10000) ^ 0x592DA65D54260021) & (v228 ^ 0xAF862767E2FF3DE5)) & (v230 ^ 0x7077006003);
  v232 = v230 & 0xDE106F0C2ALL;
  v233 = v219[40];
  v234 = ((v6[67] - ((2 * v6[67]) & 0xFF87u) + 297095925) << 32) - 0x3200000000;
  LOBYTE(v220) = (((v233 ^ 0x25) - 107) ^ ((v233 ^ 0xB6) + 8) ^ ((v233 ^ 0xCB) + 123)) - 47;
  LOBYTE(v230) = v220 & 0x74 ^ 0xE1;
  v235 = v232 ^ 0xD9C94B4172 ^ v231;
  v236 = ((v66[18] - ((2 * v66[18]) & 0xFFBFu) + 43522) << 48) - 0x23000000000000;
  v237 = ((v66[30] - ((2 * v66[30]) & 0xB4)) << 8) - 0x12F5BFAD5B95A600;
  LOBYTE(v220) = v220 ^ (byte_1012A9F24[v233 ^ 0xFB] - ((2 * byte_1012A9F24[v233 ^ 0xFB]) & 0x4E) - 89) ^ (2 * ((v220 ^ 0x32) & (2 * ((v220 ^ 0x32) & (2 * ((v220 ^ 0x32) & (2 * ((v220 ^ 0x32) & (2 * ((v220 ^ 0x22) & (2 * ((v220 ^ 0x22) & 6 ^ v230)) ^ v230)) ^ v230)) ^ v230)) ^ v230)) ^ v230));
  v238 = ((v6[23] - ((2 * v6[23]) & 0x146) + 0xF68E7E68053D8A3) ^ 0x970B1FB33E5DEC47) & (v237 ^ 0x5069BAA55A25E5FFLL) ^ v237 & 0x650800020061CB00;
  v239 = (((((v234 ^ 0x3CFFFFFFFFLL) & v235 & 0xFFFFFFFFFFLL ^ v234 & 0x8900000000 | (((v26[63] - ((2 * v26[63]) & 0x18Cu) + 15749619) << 40) + 0xD30000000000) & 0xFF0000000000) ^ 0xFFFF110019494140) & (v236 ^ 0x5B3611E63D4DE3C6) | ((v234 ^ 0x3CFFFFFFFFLL) & v235 & 0xFFFFFFFFFFLL ^ v234 & 0x8900000000) & 0xEE19C2B21C39 | (((v26[63] - ((2 * v26[63]) & 0x18Cu) + 15749619) << 40) + 0xD30000000000) & 0xEE0000000000) ^ 0xD10000080000010) & ((((v66[120] - ((2 * v66[120]) & 0x1Au) + 163) << 56) - 0x1600000000000000) ^ 0x1BF182368B0D0698) ^ ((((v234 ^ 0x3CFFFFFFFFLL) & v235 & 0xFFFFFFFFFFLL ^ v234 & 0x8900000000 | (((v26[63] - ((2 * v26[63]) & 0x18Cu) + 15749619) << 40) + 0xD30000000000) & 0xFF0000000000) ^ 0xFFFF110019494140) & (v236 ^ 0x5B3611E63D4DE3C6) & 0x690E7DC974F2F967 | ((v234 ^ 0x3CFFFFFFFFLL) & v235 & 0xFFFFFFFFFFLL ^ v234 & 0x8900000000) & 0x6C0940B21821 | (((v26[63] - ((2 * v26[63]) & 0x18Cu) + 15749619) << 40) + 0xD30000000000) & 0x6C0000000000);
  v240 = ((((v26[62] - ((2 * v26[62]) & 0x19C)) << 16) - 0x53204CE8C6320000) ^ 0x495604BAC5539B47) & (v238 ^ 0x29407A8419181B3) ^ v238 & 0x1A764852036264B8;
  v241 = v240 & 0x17DE557E1B3B5A29 ^ 0xFDEBFFFFFEFFFFF7 ^ (v240 ^ 0x214000001000010) & ((((v26[61] - ((2 * v26[61]) & 0x1B2)) << 24) + 0x70D252D7D9000000) ^ 0x98F3F8563DC4A5D6);
  v242 = ((v6[22] - ((2 * v6[22]) & 0xB6)) << 16) - 0x11E57C16D5A50000;
  v243 = (((v227[53] - ((2 * v227[53]) & 0x1A0u) + 30986) << 48) - 0x3A000000000000) ^ 0x78D0000000000000;
  LOBYTE(v233) = byte_1012A9F24[(v26[47] ^ 0x3FLL) + 536];
  v244 = (v242 ^ 0x11E57C1090A0C230) & ((((v219[33] - ((2 * v219[33]) & 0x100u) + 7011226) << 40) - 0x1A0000000000) ^ 0x1ABB83992B0C230) ^ v242 & 0x840A83C02D4F0000;
  v245 = v241 | (((v6[4] - ((2 * v6[4]) & 0x1A2u) + 747230937) << 32) - 0x800000000) ^ 0x2C89D6D100000000;
  v246 = (v244 ^ 0x10A5440645040D41) & ((((v66[71] - ((2 * v66[71]) & 0x1AC)) << 24) + 0x1D0FE965D6000000) ^ 0xEA732118944E8D61) ^ v244 & 0x8833780BDB14210;
  v247 = v26[9] - ((2 * v26[9]) & 0x170) + 0x133F8D9DBD9574B8;
  v248 = v246 & 0xC873BE2AE2D14E40 ^ 0xFFFEFBFDFFFFCFFDLL ^ (v246 ^ 0x8104020500008CLL) & ((((v66[96] - ((2 * v66[96]) & 0x7777u) + 460995049) << 32) - 0x2E00000000) ^ 0x2CF6786E1D2E81BDLL) | (((v66[113] - ((2 * v66[113]) & 0x5E)) << 8) + 0x3F012673691A2F00) ^ 0x3F012673691A2F00;
  v249 = v26[56] - ((2 * v26[56]) & 0x1F4) + 0x3F2170596A1129FALL;
  v250 = (v243 - ((2 * v243) & 0x6052000000000000) - 0x4FD692112D933C72) ^ v247 & 0x38490201007AALL ^ ((v248 - ((2 * v248) & 0x5EB1D75BB2CCD82ELL) - 0x10A71452269993E9) ^ 0xED4082E245A1D442) & (v247 ^ 0xECC07262426A8B47);
  v251 = v233 ^ (4 * (v233 & 0xF ^ 8 | v233 ^ 0x37)) ^ 0xBA;
  v252 = v26[6] - ((2 * v26[6]) & 0x124) + 0x47F28D8FE4041192;
  v253 = ((v227[1] - ((2 * v227[1]) & 0x3C)) << 16) - 0x5ED7D5524DE20000;
  v254 = (v252 & 0x4000080400002BALL ^ 0xC00E24019ECF9A74 ^ ((((v26[38] - ((2 * v26[38]) & 0x3333)) << 8) - 0x3D119765CD216700) ^ 0x8BA32E88A5026445) & (v252 ^ 0xB80D72701BFBEE57)) & (v253 ^ 0x5ED7D5524DE1FFFFLL) ^ v253 & 0x2028082CB6EC0000;
  v255 = (v254 ^ 0x5294954004609048) & ((((v227[9] - ((2 * v227[9]) & 0x170)) << 24) + 0x12B56AD9B8000000) ^ 0x342D204CCC67F1E8);
  v256 = *(v227 + 15);
  LOBYTE(v247) = (v26[9] - ((2 * v26[9]) & 0x70) - 72) & 0x20;
  v257 = (((v219[13] - ((2 * v219[13]) & 0x38u) + 16713) << 48) - 0x2D000000000000) ^ (v256 - ((2 * v256) & 0xA0EB2AD0) + 0x42007ADE50759568) ^ (((*(v226 + 8) - ((2 * *(v226 + 8)) & 0x62u) + 94) << 56) - 0x2D00000000000000) ^ v245 ^ (((v220 ^ 0xC2) - 31) << 40);
  LODWORD(v246) = v6[61];
  v258 = (((v26[69] - 0x172F0D5DFB50D9C5 - ((2 * v26[69]) & 0x76)) ^ 0xE8D0F2A204AF263BLL) << (v247 ^ 0x20u) << v247) ^ v254 & 0xD967B56A8B980E17;
  *(&v191 + 1) = ((v249 & 0x200000040002E84 ^ 0x7560EE9D9DB85E0CLL ^ (v249 ^ 0xC0DE8FA695EED601) & ((((v6[82] - ((2 * v6[82]) & 0x4E)) << 8) - 0x2448D887827D900) ^ 0x6D8518E8874EB67BLL)) & ~(((v251 >> 6) | (4 * v251)) << 16) | (((v251 >> 6) | (4 * v251)) << 16) & 0xD10000) ^ 0xE75E8402DD2EE7F7 | (((v6[63] - ((2 * v6[63]) & 0x3C)) << 24) - 0x7E6B3A69E2000000) ^ 0x8194C5961E000000;
  *&v191 = *(&v191 + 1) | (((v6[56] - ((2 * v6[56]) & 0xEEu) - 310115955) << 32) - 0x1600000000) ^ 0xED84017700000000;
  v259 = (v258 ^ v255 ^ 0xAFFB6ABFFF7FF7EBLL) - ((2 * (v258 ^ v255 ^ 0xAFFB6ABFFF7FF7EBLL)) & 0x393EF8F01B1E50C2) - 0x63608387F270D79FLL;
  v260 = (((v26[17] - ((2 * v26[17]) & 0x1D6u) + 15200498) << 40) - 0x70000000000) ^ 0x7B6F97780D8F2861 ^ v259;
  v261 = v257 ^ (((v227[93] - ((2 * v227[93]) & 0x74u) + 238) << 56) - 0x3400000000000000) ^ ((v250 ^ 0xB23280316EBB7F73) + 0x12016C33BC502FB7 - 2 * ((v250 ^ 0xB23280316EBB7F73) & 0x12016C33BC502FBFLL ^ v250 & 8));
  v262 = (((v6[49] - ((2 * v6[49]) & 0xDAu) + 162) << 56) - 0x3500000000000000) ^ __ROR8__((((v6[66] - ((2 * v6[66]) & 0x174)) << 13) + 0x7415608EB0974000) ^ 0x7216E549C3EC45AALL ^ (v191 >> 27), 37) ^ (((v6[41] - ((2 * v6[41]) & 0x12Eu) + 17364) << 48) - 0x3D000000000000);
  v263 = (((((2 * (v246 & 0x3F ^ (v246 | (((STACK[0x810] + 1614794749) | (-1614794749 - STACK[0x810])) >> 31) | 0x7FFFFFD4))) ^ 0x57) + v246) << 56) + 0x1500000000000000) ^ (((v26[77] - ((2 * v26[77]) & 0xB4u) + 43666) << 48) - 0x38000000000000) ^ 0x98DACC4C4C0373A0 ^ (v260 + 0x2680CC4C4C0373A0 - 2 * (v260 & 0x2680CC4C4C0373B4 ^ v259 & 0x14));
  v264 = v263 ^ v262 ^ 0x5E609CB462DC762BLL;
  v265 = v239 ^ v263;
  v266 = v265 ^ 0x1C155960ED27B897;
  v267 = (v261 ^ 0x166680FFF50C9592) & (v262 ^ 0x5E609CB462DC762BLL);
  v268 = v261 ^ 0xE9997F000AF36A6DLL;
  v269 = v257 ^ 0xDBB59BCCE5FB0DCBLL;
  v270 = v268 & (v257 ^ 0x244A64331A04F234);
  v271 = v265 ^ 0xE3EAA69F12D84768;
  v272 = (v264 ^ 0xCB23CD6B8325941ALL) & v271;
  if ((v267 & 0x2000000 & v257) != 0)
  {
    v273 = -(v267 & 0x2000000);
  }

  else
  {
    v273 = v267 & 0x2000000;
  }

  v274 = v271 ^ v270;
  v275 = (v273 + v269) ^ v267 & 0xFFFFFFFFFDFFFFFFLL ^ v274;
  v276 = v264 ^ 0x34DC32947CDA6BE5;
  v277 = __ROR8__(v272 ^ v262 ^ 0x5E609CB462DC762BLL, 54);
  v278 = v266 & v269 ^ v276;
  v279 = v276 & (v262 ^ 0xA19F634B9D2389D4) ^ v268;
  v280 = v274 ^ 0x632AD668E013C7D0 ^ v278;
  v281 = v279 ^ __ROR8__(v277 ^ 0x5392CBC29175B0F0, 10) ^ 0x7A9160671E61DF1ELL;
  *(&v282 + 1) = v275 ^ 0x1829DBD49149AC6DLL;
  *&v282 = v275;
  v283 = (v282 >> 61) ^ v275 ^ 0x1829DBD49149AC6DLL ^ ((v275 ^ 0x1829DBD49149AC6DLL) >> 39) ^ ((v275 ^ 0x1829DBD49149AC6DLL) << 25);
  v284 = v281 ^ (v281 << 47) ^ (v281 >> 10) ^ ((v281 >> 17) | (v281 << 54));
  v285 = v278 ^ 0x8717DFE2A3B1E3F2 ^ __ROR8__(v278 ^ 0x8717DFE2A3B1E3F2, 7) ^ ((v278 ^ 0x8717DFE2A3B1E3F2) >> 41) ^ ((v278 ^ 0x8717DFE2A3B1E3F2) << 23);
  v286 = v280 ^ __ROR8__(v280, 19) ^ (v280 >> 28) ^ (v280 << 36) ^ v285;
  v287 = v279 ^ 0x6E807D10291F7139 ^ ((v279 ^ 0x6E807D10291F7139) >> 1) ^ ((v279 ^ 0x6E807D10291F7139) >> 6) ^ ((v279 ^ 0x6E807D10291F7139) << 58) ^ ((v279 ^ 0x6E807D10291F7139) << 63);
  v288 = v283 ^ v287;
  v289 = v287 & ~v283 ^ v286;
  v290 = v283 & ~v286;
  v291 = v286 & ~(v284 ^ v285);
  v292 = v284 ^ v285 ^ v290;
  v293 = v285 & ~v284 ^ v288;
  v294 = v289 ^ __ROR8__(__ROR8__(v284 & ~v288 ^ v283, 52) ^ 0x53C0E1C555075456, 12);
  v295 = __ROR8__(__ROR8__(v292 ^ v289, 35) ^ 0x2B29D6112FA2A642, 29) ^ 0x2BBFD4AE5B0F3476;
  v296 = v293 ^ -v293 ^ (0x15C7857573502C40 - (v293 ^ 0x15C7857573502C40));
  v297 = v284 ^ 0x3378C4AC0693E070 ^ v291 ^ v293;
  v298 = v294 ^ 0xA3AE7D00B3C8672ALL ^ (v294 >> 39) ^ __ROR8__(v294 ^ 0xA3AE7D00B3C8672ALL, 61) ^ ((v294 ^ 0xA3AE7D00B3C8672ALL) << 25);
  v299 = v298 ^ 0x1475CFA;
  v300 = v292 ^ 0x62C1F2A9E89E4C79;
  *(&v282 + 1) = v296;
  *&v282 = v296 + 0x15C7857573502C40;
  v301 = v282 >> 1;
  *(&v282 + 1) = v296;
  *&v282 = v296 + 0x15C7857573502C40;
  v302 = v301 ^ (v296 + 0x15C7857573502C40) ^ (v282 >> 6);
  v303 = v300 << 23;
  v304 = v298 ^ 0x1475CFA ^ v302;
  v305 = v300 ^ (v300 >> 7) ^ ((v300 >> 41) | (v300 << 57));
  v306 = v297 ^ __ROR8__(v297, 10) ^ (v297 >> 17) ^ (v297 << 47);
  v307 = v305 & 0x2EC588A9D2EAE3C6 ^ v303 & 0x2EC588A9D2800000 | v305 & 0xD13A77562D151C39 ^ v303 & 0xD13A77562D000000;
  v308 = v295 ^ __ROR8__(v295, 19) ^ (v295 >> 28) ^ (v295 << 36) ^ v307;
  v309 = (v298 ^ 0x1475CFA) & ~v308;
  v310 = (v298 ^ 0xFFFFFFFFFEB8A305) & v302 ^ v308;
  v311 = v308 & ~(v307 ^ v306);
  v312 = (v307 ^ v306 ^ -(v307 ^ v306) ^ (v309 - (v309 ^ v307 ^ v306))) + v309;
  v313 = v304 ^ v307 & ~v306;
  v314 = v306 & ~v304 ^ v299 ^ v310;
  v315 = v310 ^ 0x7D752DD7DCC251B6 ^ v312;
  v316 = v306 ^ 0xD8700A4CB46F51B0 ^ v311 ^ v313;
  v312 ^= 0x66173F92B629299AuLL;
  v317 = v316 ^ (v316 >> 10) ^ (v316 >> 17) ^ (v316 << 47) ^ (v316 << (v289 & 0x36) << (v289 & 0x36 ^ 0x36));
  v318 = (0xEEAFC2D3EC65C482 - (v314 & 0x8000000000000000)) ^ v314 & 0x7FFFFFFFFFFFFFFFLL ^ __ROR8__((0xEEAFC2D3EC65C482 - (v314 & 0x8000000000000000)) ^ v314 & 0x7FFFFFFFFFFFFFFFLL, 61) ^ (((0xEEAFC2D3EC65C482 - (v314 & 0x8000000000000000)) ^ v314 & 0x7FFFFFFFFFFFFFFFLL) >> 39) ^ (((0xEEAFC2D3EC65C482 - (v314 & 0x8000000000000000)) ^ v314 & 0x7FFFFFFFFFFFFFFFLL) << 25);
  *(&v282 + 1) = ~v313;
  *&v282 = v313 ^ 0xE7E200F443AAFCDFLL;
  v319 = (v282 >> 1) ^ v313 ^ 0xE7E200F443AAFCDFLL ^ ((v313 ^ 0xE7E200F443AAFCDFLL) >> 6) ^ ((v313 ^ 0xE7E200F443AAFCDFLL) << 58);
  v320 = v312 ^ __ROR8__(v312, 7) ^ (v312 >> 41);
  v321 = v318 ^ v319;
  v322 = v317 & ~(v318 ^ v319);
  v323 = (v320 & 0x80 | (v312 << 23) | v320 & 0xFFFFFFFFFFFFFF7FLL) ^ v320 & (v312 << 23);
  v324 = (v315 << 45) & v315 ^ __ROR8__(v315, 28) ^ (v315 ^ (v315 >> 19) | (v315 << 45)) ^ v323;
  v325 = v323 ^ v317;
  v326 = v324 ^ v319 & ~v318;
  v327 = __ROR8__(v324, 12) ^ 0x233E2B6BE886B10CLL;
  if (((v323 ^ v317) & 0x200000000000) != 0)
  {
    v328 = 0xFFFFE00000000000;
  }

  else
  {
    v328 = 0x200000000000;
  }

  v329 = v323 & ~v317 ^ v321;
  v330 = v322 ^ v318 ^ v326;
  v331 = (__ROR8__(v327, 52) ^ 0x1D49417794EF3DCCLL) & v318 ^ v325;
  v332 = v326 ^ 0xC5AB08FD33C1B5A7 ^ v331;
  v333 = ((v328 + v325) ^ 0xFFFFDFFFFFFFFFFFLL) & v324;
  v334 = ((v329 & 0xC69BBC5071FEC292 ^ ((v329 & 0xC69BBC5071FEC292) - (v329 & 0xC69BBC5071FEC292 ^ 0x203380010044090)) ^ 0xFFFFFFFFFFFFFFE0) + 2 * ((((v329 & 0xC69BBC5071FEC292) - (v329 & 0xC69BBC5071FEC292 ^ 0x203380010044090)) ^ 0xFFFFFFFFFFFFFF81) & v329 & 0xC69BBC5071FEC292)) | v329 & 0x396443AF8E013D6DLL ^ 0x3020420B8C002865;
  v335 = v317 ^ 0xCC98C5A695FE0D08 ^ v329 ^ v333;
  v336 = (v330 ^ 0x318CC080266427A2) & 0xFFFFFBFFFFFFFFFFLL ^ (8 * (v330 ^ 0x318CC080266427A2)) ^ (v330 & 0x40000000000 | ((v330 ^ 0x318CC080266427A2) >> 61));
  v337 = (v336 + ((v330 >> 39) ^ 0x631981) - 2 * (v336 & ((v330 >> 39) ^ 0x631981))) ^ ((v330 ^ 0x318CC080266427A2) << 25);
  v338 = v334 ^ (v334 << 58) ^ ((v334 >> 1) ^ (v334 >> 6) | (v334 << 63));
  v339 = (v332 ^ (v332 >> 19)) & 0xB567374BA29CF3FDLL ^ __ROR8__(v332, 28) ^ ((v332 ^ (v332 >> 19)) & 0x4A98C8B45D630C02 ^ (v332 << 45) & 0x4A98C00000000000 | (v332 << 45) & 0xB567200000000000);
  v340 = v331 ^ 0xA0B866C79876C7E4 ^ __ROR8__(v331 ^ 0xA0B866C79876C7E4, 7) ^ ((v331 ^ 0xA0B866C79876C7E4) >> 41);
  v341 = v338 ^ v337;
  v342 = v335 ^ __ROR8__(v335, 10) ^ __ROR8__(v335, 17);
  v343 = v340 & 0xF9E814F8D558C246 ^ ((v331 ^ 0xA0B866C79876C7E4) << 23) & 0xF9E814F8D5000000 | v340 & 0x617EB072AA73DB9 ^ ((v331 ^ 0xA0B866C79876C7E4) << 23) & 0x617EB072A800000;
  v344 = ((v339 & 0x8000000000000000) + v343) ^ v339 & 0x7FFFFFFFFFFFFFFFLL;
  v345 = v342 & ~(v338 ^ v337);
  v346 = v343 ^ v342;
  v347 = (v343 ^ v342) & 0x1000000000000000;
  v348 = v337 & ~v344;
  v349 = v344 ^ v338 & ~v337;
  if ((v348 & v347) != 0)
  {
    v347 = -v347;
  }

  v350 = (v347 + v348) ^ v346 & 0xEFFFFFFFFFFFFFFFLL;
  v351 = (v350 ^ v349 ^ -(v350 ^ v349) ^ (0xE78A8F8F26E90B2BLL - (v350 ^ v349 ^ 0xE78A8F8F26E90B2BLL))) - 0x18757070D916F4D5;
  v352 = v337 ^ 0x68ABEAE5737B7693 ^ v345 ^ v349;
  v353 = v351 << 36;
  v354 = v352 << 25;
  v355 = (v344 & ~v346) + v342 - 2 * (v344 & ~v346 & v342);
  v356 = v352 ^ (v352 >> 39) ^ (v352 >> 61) ^ (v352 << (v346 & 3) << (v346 & 3 ^ 3));
  v357 = v351 ^ __ROR8__(v351, 19) ^ (v351 >> 28);
  v358 = v357 & (v351 << 36);
  v359 = v357 + v353;
  v360 = v350 ^ 0xF14770720A54D309 ^ ((v350 ^ 0xF14770720A54D309) << 57) ^ __ROR8__(v350 ^ 0xF14770720A54D309, 41) ^ ((v350 ^ 0xF14770720A54D309) >> 7);
  v361 = v359 - 2 * v358;
  v362 = v361 & v360;
  v363 = v361 | v360;
  v364 = v363 & 4;
  if ((v362 & 4) != 0)
  {
    v364 = -v364;
  }

  v365 = (v320 & 0xFFFFFFFFFFFFFF7FLL) == 0;
  v366 = v343 & ~v342 ^ v341;
  v367 = v366 ^ 0x1DE76D00F7B2971ELL ^ v355;
  *(&v368 + 1) = v366;
  *&v368 = v366 ^ 0xA2A16E7D4060C2ACLL;
  v369 = (v356 ^ -v356 ^ (v354 - v356 - (v354 ^ -v354 ^ (v356 - (v356 ^ v354))))) + v354;
  v370 = (v368 >> 1) ^ v366 ^ 0xA2A16E7D4060C2ACLL ^ ((v366 ^ 0xA2A16E7D4060C2ACLL) >> 6) ^ ((v366 ^ 0xA2A16E7D4060C2ACLL) << 58);
  v371 = v367 ^ __ROR8__(v367, 10) ^ (v367 >> 17) ^ (v367 << 47);
  v372 = v360 ^ v371;
  v373 = (v364 + v362) ^ v363 & 0xFFFFFFFFFFFFFFFBLL;
  v374 = ((v373 ^ v369) + (v369 | ~v373) + 1) ^ v360 ^ v371;
  v375 = (v374 ^ 0xC82025ADB5EE3DBDLL) << 23;
  v376 = v375 ^ 0x17551394C0000000;
  if (v365)
  {
    v376 = 0xE8AAEC6B3F800000;
  }

  v365 = v342 == -1;
  v377 = v369 ^ v370;
  v378 = v360 & ~v371;
  if (v365)
  {
    v378 = v372;
  }

  v379 = v373 & ~v372;
  v380 = v373 ^ v370 & ~v369;
  v381 = v371 & ~v377 ^ v369 ^ v380;
  v382 = v377 ^ v378 & ~v371;
  v383 = v382 ^ v371 ^ v379;
  v384 = (v374 ^ 0xB6B768613EBB9D27) + v380 - 2 * ((v374 ^ 0xB6B768613EBB9D27) & v380);
  *(&v385 + 1) = v381 ^ 0x171B3575A2341BFALL;
  *&v385 = v381 ^ 0x4000000000000000;
  v386 = v384 ^ __ROR8__(v384, 28) ^ (v384 << 45) ^ (v384 >> (v383 & 0x13) >> (v383 & 0x13 ^ 0x13));
  v387 = v381 ^ __ROR8__(v381, 39) ^ (v385 >> 61);
  *(v226 + 9) = v386;
  v227[26] = BYTE3(v386);
  v227[18] = BYTE6(v386);
  v388 = (((v374 ^ 0xC82025ADB5EE3DBDLL) >> 7) & 0xB37CF4923F91B2 ^ (v374 ^ 0xC82025ADB5EE3DBDLL) & 0x26B37CF4923F91B2 | ((v374 ^ 0xC82025ADB5EE3DBDLL) >> 7) & 0x14C830B6DC06E4DLL ^ (v374 ^ 0xC82025ADB5EE3DBDLL) & 0xD94C830B6DC06E4DLL) ^ (((v374 ^ 0xC82025ADB5EE3DBDLL) >> 41) | ((v374 ^ 0xC82025ADB5EE3DBDLL) << 57));
  v389 = STACK[0x718];
  v389[11] = BYTE2(v386);
  v6[67] = (BYTE4(v386) - ((2 * BYTE4(v386)) & 0xB0) - 40) ^ 0xD8;
  v227[86] = BYTE1(v386);
  v26[63] = BYTE5(v386);
  v390 = (v376 & v375) - ((2 * (v376 & v375)) & 0x5096AFB5FC000000);
  v391 = byte_1012A9F24[(HIBYTE(v386) ^ 0x3F) + 536];
  v389[40] = BYTE5(v387) ^ 0x5D;
  v6[23] = v387 ^ 0x90;
  v6[4] = ((BYTE4(v387) ^ 0x42) - ((2 * (BYTE4(v387) ^ 0x42)) & 0xD8) + 108) ^ 0x6C;
  v227[30] = BYTE1(v387) ^ 0x2D;
  LOBYTE(v379) = ((v391 ^ ((v391 >> 4) << 6) ^ 0x6F) >> 6) | (4 * (v391 ^ ((v391 >> 4) << 6) ^ 0x6F));
  v26[62] = BYTE2(v387) ^ 0x9A;
  v392 = ((v388 & 0x17551394C03AAB22 ^ v375 & 0x17551394C0000000 ^ 0x3F6009D51F579F41) + 0x823B2F759874C81) ^ ((v388 & 0x17551394C03AAB22 ^ v375 & 0x17551394C0000000 ^ 0xD7A686501E09805ELL) - 0x1F1AC28DA726AC60) ^ ((v388 & 0x17551394C03AAB22 ^ v375 & 0x17551394C0000000 ^ 0xE8C68F85015E1F1FLL) - 0x207ACB58B8713321);
  v393 = (((v390 - 0x57B4A825019B662ALL) ^ v388 & 0xE8AAEC6B3FC554DDLL ^ 0xD93EB69FAA42AF53) - 0x4BA249D51AC835A3) ^ (((v390 - 0x57B4A825019B662ALL) ^ v388 & 0xE8AAEC6B3FC554DDLL ^ 0x9522CF717917ABA5) - 0x7BE303BC99D3155) ^ (((v390 - 0x57B4A825019B662ALL) ^ v388 & 0xE8AAEC6B3FC554DDLL ^ 0xE4572E342D319D20) - 0x76CBD17E9DBB07D0);
  v394 = v382 ^ 0x81A98ED1E6B539A9 ^ (v382 >> 6) ^ __ROR8__(v382 ^ 0x81A98ED1E6B539A9, 1);
  v395 = v394 ^ ((v382 ^ 0x81A98ED1E6B539A9) << 58);
  v396 = v392 + 0x2A1D05B888C96F81 + v393;
  v26[61] = BYTE3(v387) ^ 0x56;
  v227[120] = v379 ^ 0xA4;
  LOBYTE(v393) = byte_1012A9F24[BYTE6(v387) ^ 0xA4];
  *(v226 + 8) = HIBYTE(v387) ^ 0xBC;
  v397 = ((v396 ^ 0x7BBC89A524E42940) - 0x5D3591EFA448695DLL) ^ v396 ^ ((v396 ^ 0xD0C00BE0C02BCA97) + 0x9B6EC55BF787576) ^ ((v396 ^ 0x3A1BE4F0DB857E37) - 0x1C92FCBA5B293E2ALL) ^ ((v396 ^ 0xB7EE7EFFBFE6DDFDLL) + 0x6E98994AC0B56220);
  v6[22] = BYTE2(v394) ^ 0x86;
  v227[71] = BYTE3(v394) ^ 0xAC;
  v26[9] = v394 ^ 0xF8;
  v389[13] = (((((BYTE6(v387) ^ 7) + 109) ^ v393 ^ 0x90) - 87) ^ ((((BYTE6(v387) ^ 7) + 109) ^ v393 ^ 0xD) + 54) ^ ((((BYTE6(v387) ^ 7) + 109) ^ v393 ^ 0x8C) - 75)) - 73;
  v227[113] = BYTE1(v394) ^ 0xD3;
  LOBYTE(v396) = ((BYTE4(v395) ^ 0xC5) + 109) ^ byte_1012A9F24[BYTE4(v395) ^ 0x66];
  v227[96] = (((v396 ^ 0x58) - 113) ^ ((v396 ^ 0x5B) - 114) ^ ((v396 ^ 0x12) - 59)) + 25;
  LODWORD(v396) = byte_1012A9F24[(((v394 >> 39) & 0xFE | (v394 >> 47) & 1) ^ 0x73) + 267] + 24;
  v227[53] = BYTE6(v394) ^ 0xF9;
  v227[93] = HIBYTE(v395) ^ 0x4B;
  *&v385 = __ROR8__(v383 ^ 0x93D603E02A9D5C71, 10);
  v398 = v383 ^ 0x93D603E02A9D5C71 ^ (v383 >> 17) ^ v385;
  v399 = v398 ^ ((v383 ^ 0x93D603E02A9D5C71) << 47);
  v389[33] = ((((v396 >> 3) & 0x1C ^ v396 ^ 0x42) - 69) ^ (((v396 >> 3) & 0x1C ^ v396 ^ 0x93) + 108) ^ (((v396 >> 3) & 0x1C ^ v396 ^ 0x90) + 105)) - 84;
  v26[56] = v398 ^ 0xE1;
  v400 = byte_1012A9F24[(((v398 >> 7) & 0xFE | (v398 >> 15) & 1) ^ 0x17) + 267];
  v6[56] = BYTE4(v398) ^ 0xD8;
  v26[47] = BYTE2(v398) ^ 0x54;
  v6[63] = ((v383 ^ 0x2A9D5C71 ^ (v383 >> 17) ^ v385) >> 24) ^ 0x3A;
  v6[66] = BYTE5(v399) ^ 0xB7;
  v401 = (v387 & 0xED7D2D4D39A79BD2 ^ 0xAC5D0D4010820990 ^ -(v387 & 0xED7D2D4D39A79BD2 ^ 0xAC5D0D4010820990) ^ (((v386 ^ v387) & 0xED7D2D4D39A79BD2 ^ 0xAC5D0D4010820990) - (v386 & 0xED7D2D4D39A79BD2))) + ((v386 ^ v387) & 0xED7D2D4D39A79BD2 ^ 0xAC5D0D4010820990);
  v26[69] = BYTE4(v397) ^ 0x4A;
  v227[1] = BYTE2(v397) ^ 0xAC;
  v6[49] = HIBYTE(v399) ^ 0x36;
  v6[82] = ((v400 + 24) ^ 0x41 ^ ((v400 + 24) >> 3) & 0x1C) + 102;
  v227[9] = BYTE3(v397) ^ 0x80;
  v26[17] = BYTE5(v397) ^ 0x18;
  v6[41] = BYTE6(v399) ^ 0x6E;
  v26[6] = v397 ^ 0x1D;
  v6[61] = HIBYTE(v397) ^ 0x26;
  v26[77] = BYTE6(v397) ^ 0x89;
  v26[38] = BYTE1(v397) ^ 0x40;
  *(v227 + 15) = v256 + 1;
  STACK[0xDA8] = v386 & 0x1282D2B2C658642DLL ^ 0x2CF617E8CEB5C179 ^ (v401 - ((2 * v401) & 0x2BD42FC16B6B1422) + 0x15EA17E0B5B58A11);
  return (*(STACK[0x8B0] + 128480))();
}

uint64_t sub_100B1A510@<X0>(int a1@<W8>)
{
  *v4 = v3;
  *(v3 + 8) = *(v1 + v2);
  *(v1 + v2) = v3;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_100B1A5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  *(a55 + 248) = *(v55 + 1752);
  *(a55 + 256) = STACK[0x1E00];
  return (*(STACK[0x540] + 151104))(a1, a2, 2120264440);
}

uint64_t sub_100B1A670@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v37 = STACK[0xA34];
  STACK[0xFF8] = v35 + 4;
  v38 = ((v37 + 400966540) ^ 0xC3513A7B) & (2 * ((v37 + 400966540) & 0xE819BC70)) ^ (v37 + 400966540) & 0xE819BC70;
  v39 = ((a1 - 2035) ^ 0x4752 ^ (2 * ((v37 + 400966540) ^ 0x8352325B)) ^ 0xD6975059) & ((v37 + 400966540) ^ 0x8352325B) ^ (2 * ((v37 + 400966540) ^ 0x8352325B)) & a35;
  v40 = v39 ^ 0x29488229;
  v41 = (v39 ^ 0x40030000) & (4 * v38) ^ v38;
  v42 = ((4 * v40) ^ 0xAD2E38AC) & v40 ^ (4 * v40) & 0x6B4B8E28;
  v43 = (v42 ^ 0x290A0820) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x42418603)) ^ 0xB4B8E2B0) & (v42 ^ 0x42418603) ^ (16 * (v42 ^ 0x42418603)) & 0x6B4B8E20;
  v45 = v43 ^ 0x6B4B8E2B ^ (v44 ^ 0x20088200) & (v43 << 8);
  LODWORD(STACK[0x10AC]) = 0;
  STACK[0x1810] = 0;
  LODWORD(STACK[0x908]) = -769884012;
  STACK[0x1360] = 0x683CBC57EAB92A3ELL;
  STACK[0x14F8] = 0;
  LODWORD(STACK[0x14BC]) = -769884012;
  LODWORD(STACK[0xD78]) = -143113071;
  LODWORD(STACK[0x1028]) = (v37 + 400966540) ^ (2 * ((v45 << 16) & 0x6B4B0000 ^ v45 ^ ((v45 << 16) ^ 0xE2B0000) & (((v44 ^ 0x4B430C0B) << 8) & 0x6B4B0000 ^ 0x20410000 ^ (((v44 ^ 0x4B430C0B) << 8) ^ 0x4B8E0000) & (v44 ^ 0x4B430C0B)))) ^ 0xF88420B2;
  return (*(v36 + 8 * ((9800 * (((a1 - 2035) ^ 0x4BA90616u) < 0x7514C46A)) ^ (a1 - 3071))))();
}

uint64_t sub_100B1A8A4@<X0>(unsigned int a1@<W8>)
{
  v8 = *(v7 + (v5 + v1));
  v9 = 18 * v8 + 48;
  v10 = v9 & 0x72 ^ 0xD1;
  v11 = (v9 ^ 0x50) & (2 * ((v9 ^ 0x50) & (2 * ((v9 ^ 0x50) & (2 * ((v9 ^ 0x50) & (2 * (v9 & (2 * (v10 ^ v9 & 0x22)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10;
  v12 = v3 < a1;
  v13 = ((((v9 ^ (2 * v11) ^ 0x7C) - 119) ^ ((v9 ^ (2 * v11) ^ 0x55) - 94) ^ ((v9 ^ (2 * v11) ^ 0x5A) - 81)) + 120) * v8 + 100;
  v14 = ((2 * v5) & 0x32 ^ v1) & v5 ^ 0xDB;
  v15 = v13 & 0xB6 ^ 0x1D;
  v16 = (v5 ^ (2 * (((2 * (v5 ^ 0xC2)) ^ 0xB4) & (v5 ^ 0xC2) & ((4 * v14) ^ 4) ^ v14))) & 0xF ^ 0xFLL;
  v17 = (*(&STACK[0x300] + v16) - ((2 * *(&STACK[0x300] + v16)) & 0x2A) + 21) ^ v13 ^ (2 * ((v13 ^ 0x1C) & (2 * ((v13 ^ 0x1C) & (2 * ((v13 ^ 0x1C) & (2 * ((v13 ^ 0x1C) & (2 * ((v13 ^ 0x1C) & (2 * (v15 ^ v13 & 0x2A)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  if (v12 == v5 - 1250242442 < a1)
  {
    v12 = v5 - 1250242442 < v3;
  }

  v18 = *(v6 + 8 * ((!v12 * v4) ^ v2));
  *(&STACK[0x300] + v16) = v17 ^ 0xA3;
  return v18();
}

uint64_t sub_100B1AA88()
{
  *STACK[0x5E0] = 0x79CEC8CF5A6FCEBALL;
  STACK[0x1580] = 0x4322B87CA9B2587;
  v2 = (*(v1 + 254448))(8) == 0;
  return (*(v1 + 8 * ((17 * ((v2 ^ 0xD9) & 1)) | (v0 - 1211073672))))();
}

uint64_t sub_100B1AB3C()
{
  LODWORD(STACK[0xC30]) = STACK[0x880];
  v2 = (*(v0 + 8 * (v1 ^ 0xB7D0FFDC)))(STACK[0x990]);
  STACK[0x990] = 0;
  return (*(v0 + 8 * (v1 + 1211076110)))(v2);
}

uint64_t sub_100B1ABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, int a6@<W8>)
{
  v21 = __ROR8__(((a6 - 1979700109) & 0x75FFF37F ^ 0xFFFFFFFFFFFFCD83) & (v8 + v7), 8);
  v22 = (v13 - v21) & 0x439D2ABD3471CBB2 | (v21 + a4) & 0xBC62D542CB8E344DLL;
  v23 = a3 + v7 + a2;
  v24 = v22 ^ 0xC885972756BC9DF2;
  v22 ^= 0xEE8C64F46FE79247;
  v25 = __ROR8__(v24, 8);
  v26 = (((2 * (v25 + v22)) & 0xDC4B9C91A65ED506) - (v25 + v22) - 0x6E25CE48D32F6A84) ^ 0xCB9F2D3AB443EBCLL;
  v27 = v26 ^ __ROR8__(v22, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v15;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v10;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a5;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) & 0x868CC9EE5EC6762BLL ^ 0x28848221A06340BLL) + ((v34 + v33) ^ 0x9D34A3DCE4C1C3E0) - (((v34 + v33) ^ 0x9D34A3DCE4C1C3E0) & 0x868CC9EE5EC6762BLL)) ^ 0x1E64666057BA65EELL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0xC0AEC7D099485520) + 0x605763E84CA42A90) ^ 0x4EFA4EB9ABA5AD44;
  v39 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v36, 61));
  v40 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = -2 - (((0x1C64917143BAF700 - v40) | 0xD284178F14B643ABLL) + ((v40 + v9) | 0x2D7BE870EB49BC54));
  v42 = v41 ^ 0xD7E235E7DD645506;
  v43 = v41 ^ v20;
  v44 = (__ROR8__(v42, 8) + v43) ^ v19;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x1038643522CD1792;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a1;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v17;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x5FD252103B569EALL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v14;
  *v23 = ((v39 ^ v16) >> (8 * ((v8 + v7) & 7))) ^ (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v53, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (v23 & 7u))) ^ *(v8 + v7);
  return (*(v11 + 8 * ((((v7 + 1) ^ v6) != 4036132611) | a6)))(a1, v12, v18);
}

uint64_t sub_100B1AF10()
{
  v3 = *(STACK[0x1630] - 0x683CBC57EAB92A3ELL);
  STACK[0xD58] = 0;
  STACK[0xAD0] = 0;
  return (*(v1 + 8 * (((v3 != 0x308E083E0C524CBELL) * (((v0 + 1211071599) | 0x113) ^ 0x13A)) ^ (v2 + v0 - 847))))();
}

uint64_t sub_100B1B098@<X0>(uint64_t a1@<X3>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v59 = *(&a56 + (1633 * a3 + 2129432) % 0xA88u);
  v60 = *(a1 + 4 * (3677 * (v59 | ((v59 < (a2 + 41)) << 8)) + 3426964 - ((((3677 * (v59 | ((v59 < (a2 + 41)) << 8)) + 3426964) * v56) >> 32) >> 12) * v58));
  v61 = *(&a56 + (1633 * (v60 ^ 0x72u) + 3834854) % 0xA88);
  v62 = *(&a56 + (1633 * (((HIBYTE(v60) ^ 0x17B62634) - 1451252255) ^ ((HIBYTE(v60) ^ 0x2CBE246B) - 1837652032) ^ ((HIBYTE(v60) ^ 0x3B0802AA) - 2050915969)) - 53669236) % 0xA88u);
  v63 = *(&a56 + (1633 * (((BYTE1(v60) ^ 0xFBB8E3B2) + 1382476615) ^ ((BYTE1(v60) ^ 0x8F6E57BC) + 649092937) ^ ((BYTE1(v60) ^ 0x74D6B4C3) - 586630088)) + 1860700652) % 0xA88);
  v64 = v62 & 0xB3 ^ 9;
  v65 = *(&a56 + (1633 * (((BYTE2(v60) ^ 0x29B706F8) + 1271378051) ^ ((BYTE2(v60) ^ 0xB806F990) - 629780501) ^ ((BYTE2(v60) ^ 0x91B1FF9C) - 205436441)) + 255723583) % 0xA88);
  v66 = v65 & 0xFB ^ 0x2D;
  v67 = v62 ^ (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * v64) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  v68 = v65 ^ (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * v66) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v69 = v63 & 0x47 ^ 0x53;
  v70 = v63 & (2 * (v63 & (2 * (((2 * (((2 * v63) & 0x42 | 0x21) & v63)) ^ 0x66666666) & v63 ^ v69)) ^ v69)) ^ v69;
  v71 = v69 & 0xFFFFFFDF | (32 * ((v70 >> 4) & 1));
  v72 = v63 ^ (2 * ((v69 & 0xFFFFFFDF | (32 * (((v71 ^ v63 & (2 * v70)) >> 4) & 1))) ^ v63 & (2 * (v71 ^ v63 & (2 * v70)))));
  v73 = v61 & 0x13 ^ 0xF9;
  LOBYTE(v69) = v61 ^ 0x20;
  v74 = v61 ^ (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (((2 * (((2 * v61) & 0xC2 | 0x21) & v61)) ^ 0x32) & v69 ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73));
  *(a1 + 4 * (v57 + 3677 * a3 - ((((v57 + 3677 * a3) * v56) >> 32) >> 12) * v58)) = ((((((((v68 << 8) ^ 0xFF046A) & ((v67 << 16) ^ 0x34076A) | (v68 << 8) & 0xF800) ^ 0x6F41EC) & (v72 ^ 0xFFFFE9) ^ v72 & 0x79) << 8) ^ 0x8BA7F31B) & (v74 ^ 0xFFFFFF4C) | v74 & 0xE4) ^ 0x96EDF969;
  return (*(a55 + 8 * ((28876 * (a3 == 255)) ^ a2)))();
}

uint64_t sub_100B1B668(int a1, unsigned int a2)
{
  v5 = *(STACK[0x39C8] + (v2 ^ 0x6CLL));
  v6 = 1325511043 * (*(STACK[0x39D8] + ((*(STACK[0x39D0] + (v2 ^ 0x37)) - 99) ^ (v3 + 35))) ^ ((v5 >> 5) | (8 * v5)) ^ 0x74);
  v7 = (v6 ^ a2) + v2 + (((v6 ^ a2) + v2) >> 16);
  v8 = v7 - (v7 >> 8);
  v9 = ((v8 + 1213236304) ^ v6) + v2 + ((((v8 + 1213236304) ^ v6) + v2) >> 16);
  return (*(v4 + 8 * ((14 * (LODWORD(STACK[0x4DF8]) > v2 + 1)) ^ v3)))((v8 - 1540865496) ^ a1 ^ (v9 - (v9 >> 8) - 1540865496));
}

uint64_t sub_100B1B798@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 18650;
  v4 = (*(v2 + 8 * (v3 + 30861)))(a1);
  v5 = v4 == (*(v2 + 8 * (v3 + 30870)))();
  return (*(v2 + 8 * ((v5 * ((974 * (v3 ^ 0x3D5)) ^ 0x52C2)) ^ v3)))(2174744536);
}

uint64_t sub_100B1B840@<X0>(int a1@<W8>)
{
  STACK[0x3D70] = 0;
  v3 = -LODWORD(STACK[0x32D0]);
  v4 = (a1 ^ LODWORD(STACK[0x3550]) ^ v3) - LODWORD(STACK[0x3E38]);
  v5 = v1 ^ LODWORD(STACK[0x3550]) ^ v3;
  v6 = STACK[0x3D88];
  v7 = a1 - LODWORD(STACK[0x3D88]);
  v8 = v1 ^ LODWORD(STACK[0x3550]) ^ a1;
  v9 = (v7 + v1) ^ v7;
  v10 = STACK[0x3D80];
  v11 = v8 - (LODWORD(STACK[0x3D80]) ^ v3 ^ LODWORD(STACK[0x3E38]));
  v12 = v5 - LODWORD(STACK[0x3D80]);
  v13 = STACK[0x3D98];
  v14 = LODWORD(STACK[0x3E38]) - LODWORD(STACK[0x3D98]);
  v15 = STACK[0x3E18];
  LODWORD(STACK[0x3D58]) = v11 ^ LODWORD(STACK[0x3E18]);
  v16 = -LODWORD(STACK[0x32E8]);
  v7 += 537368335;
  v17 = v6 - v15 - v9;
  v18 = STACK[0x3D90];
  LODWORD(STACK[0x3D50]) = v12 ^ LODWORD(STACK[0x3D90]) ^ v4;
  v19 = (v14 + v10) ^ v14;
  v20 = v13 - v18 - v19;
  v14 += 537368335;
  v21 = (v7 ^ v16 ^ LODWORD(STACK[0x3650])) - v14;
  v22 = v7 ^ v15;
  v23 = v7 ^ LODWORD(STACK[0x3650]) ^ v9;
  v24 = v9 ^ v16 ^ LODWORD(STACK[0x3650]);
  v25 = v17 ^ v9;
  LODWORD(STACK[0x3E38]) = (v23 - (v14 ^ v16 ^ v19)) ^ v15;
  v26 = v14 ^ v18;
  v27 = v25 ^ (v17 + v15);
  v28 = v17 + 1063149957;
  v29 = v27 ^ (v17 + 1063149957);
  LODWORD(STACK[0x3D88]) = v21 ^ v18 ^ (v24 - v19);
  v25 ^= 0xAE46ADBC;
  v30 = v20 ^ v19;
  v31 = v20 + v18;
  v32 = v25 ^ v22;
  v20 += 1063149957;
  v33 = -LODWORD(STACK[0x36E0]);
  v34 = v30 ^ v31;
  v35 = v34 ^ v20;
  v30 ^= 0xAE46ADBC;
  v36 = STACK[0x3820];
  v37 = v30 ^ v26;
  v38 = (v25 ^ v22 ^ LODWORD(STACK[0x3820]) ^ v33) - (v30 ^ v26);
  LODWORD(STACK[0x3D28]) = v27 ^ ((v22 ^ LODWORD(STACK[0x3820])) - (v26 ^ v33));
  v39 = (v25 - v28) ^ v28;
  LODWORD(STACK[0x3D30]) = ((v25 ^ v36 ^ v33) - v30) ^ v34 ^ v38;
  v40 = ((v25 ^ v22) + v29) ^ (v25 - v28);
  v41 = v29 + 1707574889;
  v42 = (v34 ^ v20) + v37;
  v43 = v30 - v20;
  v44 = v43 ^ v20;
  v45 = v42 ^ v43;
  v46 = -LODWORD(STACK[0x37A8]);
  v47 = v35 + 1707574889;
  v48 = ((v32 + 1579608017) ^ v46 ^ STACK[0x3850]) - (v37 + 1579608017);
  v49 = (v32 + 1579608017) ^ STACK[0x3850] ^ v40;
  v32 -= 1515298025;
  v50 = v45 ^ v47;
  LODWORD(STACK[0x3D38]) = v48 ^ v44 ^ ((v40 ^ v46 ^ STACK[0x3850]) - v45);
  v51 = v40 ^ v41;
  LODWORD(STACK[0x3D98]) = (v49 - ((v37 + 1579608017) ^ v46 ^ v45)) ^ v39;
  v52 = v39 - v51;
  v51 -= 1620796564;
  v53 = v44 + 889848905 - v50;
  v54 = v51 + v32;
  v50 -= 1620796564;
  v51 ^= 0x9E6F2F92;
  v55 = v51 + (v40 ^ v32) + 1222495443;
  v56 = v54 - 127980978 + v55;
  v57 = v50 ^ 0x9E6F2F92;
  v58 = (v52 + 889848905 - v51) ^ v51;
  v59 = (v50 ^ 0x9E6F2F92) + (v45 ^ (v37 - 1515298025)) + 1222495443;
  v60 = v50 + v37 - 1515298025 - 127980978 + v59;
  v61 = -LODWORD(STACK[0x32D8]);
  v62 = v60 ^ v61;
  v59 += 1047912261;
  v63 = v61 ^ LODWORD(STACK[0x3840]);
  v64 = (v56 ^ v63) - v60;
  v65 = ((v55 + 1047912261) ^ v63) - v59;
  v66 = (v53 - v57) ^ v57;
  LODWORD(STACK[0x3E18]) = ((v56 ^ LODWORD(STACK[0x3840]) ^ (v55 + 1047912261)) - (v62 ^ v59)) ^ v58;
  v67 = v59 - v66;
  v68 = v55 + 1047912261 - v58;
  v69 = -LODWORD(STACK[0x32E0]);
  LODWORD(STACK[0x3D60]) = v64 ^ v66 ^ v65;
  v58 -= 1597954448;
  v70 = v66 - 1597954448;
  v71 = v58 ^ v56 ^ v69;
  v72 = v58 ^ 0x42953AF1 ^ v68;
  v73 = v60 ^ 0x7216354A ^ v70;
  v74 = STACK[0x38B0];
  LODWORD(STACK[0x3290]) = v71;
  v75 = v70 ^ 0x42953AF1 ^ v67;
  LODWORD(STACK[0x3D90]) = ((v74 ^ 0x7216354A ^ v71) - v73) ^ v70 ^ 0x42953AF1 ^ ((v74 ^ v69 ^ v72) - v75);
  LODWORD(STACK[0x3D80]) = ((v74 ^ 0x7216354A ^ v58 ^ v56 ^ v72) - (v73 ^ v69 ^ v75)) ^ v58 ^ 0x42953AF1;
  v76 = *(v2 + 8 * SLODWORD(STACK[0x3D48]));
  v77 = (LODWORD(STACK[0x3D48]) + 1181008769) & 0xB99B64BF;
  LODWORD(STACK[0x3B20]) = v77;
  LODWORD(STACK[0x3CC8]) = v77 - 24349;
  LODWORD(STACK[0x3D68]) = STACK[0x3808];
  LODWORD(STACK[0x3858]) = STACK[0x38B8];
  return v76();
}

uint64_t sub_100B1BD98()
{
  v2 = *(STACK[0x8B0] + 8 * (v0 + 1211079493));
  STACK[0x380] = 16 - (v1 & 0xFFFFFFF0);
  return v2(0x2D4BF6941BDEDF4ELL);
}

uint64_t sub_100B1BF5C@<X0>(int a1@<W8>)
{
  v5 = STACK[0x1768];
  v6 = STACK[0x17C4];
  v7 = STACK[0x1040];
  LOBYTE(STACK[0x2044]) = 9 - -99 * ((((v4 + 16) | 0xC7) - ((v4 + 16) & 0xC7)) ^ 0xBF);
  *(v4 - 240) = 1089234077 * ((((v4 - 240) | 0x18BEBFC7) - ((v4 - 240) & 0x18BEBFC7)) ^ 0xF8E363BF) + v2 + 1885797390;
  *(v4 - 208) = -1089234077 * ((((v4 - 240) | 0x18BEBFC7) - ((v4 - 240) & 0x18BEBFC7)) ^ 0xF8E363BF) + 1138202975 * v6 + 276145179;
  *(v4 - 216) = 0;
  *(v4 - 232) = 0;
  *(v4 - 200) = v7;
  *(v4 - 192) = v5;
  v8 = (*(v3 + 8 * (v2 ^ a1)))(v4 - 240);
  return (*(v3 + 8 * ((26081 * (v2 == ((v2 + 674708879) ^ 0x9EA98D7C))) ^ (v1 + v2 + 2))))(v8);
}

uint64_t sub_100B1C0E4()
{
  STACK[0x4F0] = 0;
  *(v3 + 16) = v0;
  *v5 = v2;
  *(v3 + 24) = -1389924012;
  *(v3 + 32) = v4;
  STACK[0x940] = v6;
  LODWORD(STACK[0x1514]) = 0;
  STACK[0xDE8] = 0;
  STACK[0x530] = &STACK[0x1514];
  STACK[0x8F8] = &STACK[0x1514];
  LODWORD(STACK[0x1654]) = 85487648;
  return (*(v7 + 8 * v1))();
}

uint64_t sub_100B1C1A8()
{
  v3 = (*(v2 + 8 * (v0 + 1211103420)))(v1);
  STACK[0x11F0] = 0;
  return (*(v2 + 8 * (v0 + 1211075575)))(v3, 1211082140);
}

uint64_t sub_100B1C1F0()
{
  LODWORD(STACK[0x5600]) = v0;
  v2 = 40 * (v1 ^ 0x24C0);
  LODWORD(STACK[0x5610]) = v2;
  v3 = (v2 - 6420) | 0x2B8;
  v4 = LODWORD(STACK[0x5440]) + 1;
  LODWORD(STACK[0x5640]) = v3;
  return (*(STACK[0x57D8] + 8 * ((20599 * (v4 == (v3 ^ 0x23FC))) ^ v1)))();
}

uint64_t sub_100B1C288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = STACK[0x204];
  v12 = *(v10 - 120);
  (*(v12 + 8 * (LODWORD(STACK[0x204]) ^ 0x5C66)))(STACK[0x370]);
  (*(v12 + 8 * (v11 + 23450)))(STACK[0x228]);
  return (*(v12 + 8 * v11))(a10);
}

uint64_t sub_100B1C2D4(uint64_t a1, int a2)
{
  v5 = (*(STACK[0xF60] + 16) ^ 0xFBDFFDBF) + 1201761110 + ((2 * *(STACK[0xF60] + 16)) & 0xF7BFFB7E);
  STACK[0xAB0] = (v2 - 7365) + STACK[0xAB0] - 3657;
  return (*(v3 + 8 * (((v5 == 1132554517) * (v4 + v2 - a2 - 353 + 887)) ^ v2)))();
}

uint64_t sub_100B1C3E8(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x400];
  *(a2 + 3392) = v2;
  LODWORD(STACK[0x13CC]) = -143155721;
  return (*(v3 + 8 * v4))();
}

uint64_t sub_100B1C418@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v2 = v5;
  *v3 = v6;
  return (*(v8 + 8 * (v9 + 1211076543 + a2)))(a1, v7, v4);
}

uint64_t sub_100B1C45C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100B1C4A8()
{
  v3 = (*(v2 + 8 * (v0 + 11472)))();
  *(v1 + 2896) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100B1C5E8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  a3[4076] = *v4;
  a3[4077] = v4[1];
  a3[4078] = v4[2];
  a3[4079] = v4[3];
  return (*(v5 + 8 * v3))();
}

uint64_t sub_100B1C714()
{
  v8 = v4 - 1;
  *(v6 + 1616) = v8;
  *(v3 + v8) = (v0 ^ v2) * (v0 + 17);
  return (*(v7 + 8 * (((*(v6 + 1616) == 0) * v5) ^ v1)))();
}

uint64_t sub_100B1C750()
{
  v3 = v0 - 2120234788;
  v4 = (*(v2 + 254448))(16) == 0;
  return (*(v2 + 8 * ((v4 * (5 * (((v1 - 2120235263) | 0x1454) ^ 0x33F5) - 5856)) ^ v3)))();
}

uint64_t sub_100B1C844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  v20 = a7 + v7;
  v21 = *STACK[0x4B8] & 0xFFFFFFFFFFFFFFF8;
  v22 = *(*v17 + (((v13 & (v9 - 23110)) - 103642729) & v21));
  v23 = (v22 + __ROR8__(v13 & (v9 - 23110), 8)) ^ v16;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0x2D36DE8A63F8B222) - (v25 + v24) - 0x169B6F4531FC5911) ^ 0x3A92DAB0D0C3358;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x2275D4C73835399BLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xE5AF1AB32EBD3CDDLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0x825CC18EE9D0F4DELL) - (v32 + v31) - 0x412E60C774E87A70) ^ 0x790C56CE475232B1;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = *(*v17 + (((v20 & 0xFFFFFFF8 & v11) + (v20 & 0xFFFFFFF8 | (v11 + 2)) + 184601117) & v21));
  v37 = (v36 + __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v16;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v15;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (((2 * (v35 + v34)) & 0xA0E8AF9F32B42F54) - (v35 + v34) + 0x2F8BA83066A5E855) ^ 0x87AD88953F77322DLL;
  v43 = (v14 - ((v40 + v41) | v14) + ((v40 + v41) | 0x45D53DA5824AEBE1)) ^ 0x67A0E962BA7FD27ALL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = v42 ^ __ROR8__(v34, 61);
  v46 = __ROR8__(v43, 8) + v44;
  v47 = (__ROR8__(v42, 8) + v45) ^ a2;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v19 - (v46 | v19) + (v46 | 0x89EC422A339D35AELL)) ^ 0x6C4358991D200973;
  v51 = v50 ^ __ROR8__(v44, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a3;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v12;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (v56 + v55 - ((2 * (v56 + v55)) & 0x3C68C2AB8473A492) - 0x61CB9EAA3DC62DB7) ^ 0xC1B98D6B61A1D852;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  *v20 = (((((v59 + v58) & a1 ^ 0x121234A01AE00604) + ((v59 + v58) ^ 0xE544C357A11D9973) - (((v59 + v58) ^ 0xE544C357A11D9973) & a1)) ^ 0x56913C671F3DDE4FLL) >> (8 * (v20 & 7u))) ^ *a6 ^ (((v49 + v48 - ((2 * (v49 + v48)) & 0x39EF63A177AD053ELL) - 0x63084E2F44297D61) ^ 0x5D3479021F13CAB7) >> (a4 & 0x38));
  return (*(v18 + 8 * (v8 | (2 * (a5 < v10)))))();
}

uint64_t sub_100B1CED0()
{
  LODWORD(STACK[0x1074]) = v1;
  STACK[0x9D0] = *(v2 + 8 * (v0 + 1211072280));
  return (*(v2 + 8 * ((((v0 + 1934351342) & 0xD4E3FDBB) - 18401) ^ (v0 + 1211072280))))();
}

uint64_t sub_100B20000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = STACK[0x3D68];
  v6 = STACK[0x3D18];
  v6[65] = LODWORD(STACK[0x3D68]) >> (a3 + 19);
  v6[66] = BYTE1(v5);
  v7 = LODWORD(STACK[0x3E18]) > v3;
  LODWORD(STACK[0x3CF0]) = HIBYTE(v5);
  v6[64] = HIBYTE(v5);
  v6[67] = v5;
  return (*(v4 + 8 * ((21261 * v7) ^ a3)))(a1, a2, 0);
}

uint64_t sub_100B20060@<X0>(int a1@<W8>)
{
  v7 = STACK[0x3D18];
  *(v7 + 332) = v1;
  *STACK[0x3DA8] = v2;
  v8 = v2;
  v9 = (v1 << 16) | (v2 << 24);
  STACK[0x3D90] = v9;
  *STACK[0x3DA0] = v4;
  v10 = v4;
  *(v7 + 261) = v3;
  v11 = (v4 << 24) | (v3 << 16);
  *(v7 + 333) = v6;
  v12 = STACK[0x3E38];
  *(v7 + 334) = STACK[0x3E38];
  v13 = v12;
  v14 = v12 | (v6 << 8);
  *(v7 + 262) = a1;
  v15 = STACK[0x3E40];
  *(v7 + 263) = STACK[0x3E40];
  v16 = v15;
  v17 = v15 | (a1 << 8);
  v18 = v14 | v9;
  LODWORD(STACK[0x3D88]) = ((v14 | v9) >> 14) | (v14 << 18);
  v19 = v2 - v6;
  v20 = v1 - (v6 ^ 0x36A2F42B);
  v21 = v19 + (v6 ^ 0x36A2F42B);
  v22 = v20 ^ v19;
  *(v7 + 335) = v22;
  v23 = (v12 ^ 0x4711B079) + 2084192490;
  v24 = v20 - v23;
  v25 = v22 - v24;
  LODWORD(STACK[0x3E38]) = ((v14 | v9) >> 13) | (v14 << 19);
  *(v7 + 336) = v24;
  *(v7 + 337) = v21;
  v26 = v24 ^ v21;
  *(v7 + 338) = v23;
  v27 = v23 ^ v21;
  v28 = v25 + v21;
  v29 = v27 ^ v28;
  v30 = v29 + v26;
  v31 = v30 ^ v25;
  LODWORD(STACK[0x3D80]) = ((v14 | v9) >> 11) | (v14 << 21);
  *(v7 + 339) = v30 ^ v25;
  LODWORD(v9) = v28 ^ 0x1E2AF442;
  *(v7 + 340) = v30;
  v32 = v28 ^ 0xBBA5C703;
  v33 = v31 + 1935265548;
  v32 -= 59844385;
  v34 = v9 + 1544758645 + v29;
  v35 = v32 ^ v25;
  *(v7 + 341) = v9;
  *(v7 + 342) = v29;
  LODWORD(STACK[0x3D78]) = (v18 >> 3) | (v13 << 29);
  LOBYTE(v9) = v33 + v35;
  v36 = (v33 + v35) ^ v32;
  *(v7 + 343) = v9;
  *(v7 + 344) = v35;
  LODWORD(STACK[0x3D70]) = (v18 >> 1) | (v13 << 31);
  v37 = v34 ^ v35;
  *(v7 + 345) = v32;
  *(v7 + 346) = v34;
  v38 = v36 + v37;
  v39 = v37 + (v34 ^ 0xCB888948);
  *(v7 + 347) = v38;
  *(v7 + 348) = v39;
  v40 = (v37 + v32) ^ 0xFDA3A036;
  *(v7 + 349) = v40;
  LODWORD(STACK[0x3D58]) = (v13 << 24) ^ (v13 << 27) ^ (v14 << 20) ^ (v14 << 17);
  *(v7 + 350) = (v34 ^ 0x48) - 19;
  LODWORD(v9) = v40 + v39;
  v41 = v17 | v11;
  LODWORD(STACK[0x3D60]) = (v4 >> 1) | ((v17 | v11) << 7);
  v42 = v39 ^ 0xCFF09A0C;
  v43 = v40 + v39 - (v39 ^ 0xCFF09A0C);
  *(v7 + 353) = v43;
  HIDWORD(v45) = v17 | v11;
  LODWORD(v45) = v11;
  v44 = v45 >> 22;
  LODWORD(v14) = (v34 ^ 0xCB888948) + 947709421 - v9 + (v39 ^ 0xCFF09A0C);
  HIDWORD(v45) = v17 | v11;
  LODWORD(v45) = v11;
  v46 = v45 >> 21;
  v47 = v43 ^ (v38 + (v39 ^ 0xCFF09A0C));
  HIDWORD(v45) = v17 | v11;
  LODWORD(v45) = v11;
  v48 = v45 >> 19;
  v49 = v47 + v9;
  LODWORD(v9) = v47 + v9 + v14;
  HIDWORD(v45) = v17 | v11;
  LODWORD(v45) = v11;
  *(v7 + 358) = v9 + 15;
  v50 = v4 - a1;
  v51 = a1 ^ 0x36A2F42B;
  v52 = v3 - (a1 ^ 0x36A2F42B);
  v53 = v50 ^ v52;
  *(v7 + 264) = v50 ^ v52;
  LODWORD(STACK[0x3D50]) = v10 | ((v17 | v11) << 8);
  v54 = (v15 ^ 0x4711B079) + 2084192490;
  v55 = v50 + v51;
  *(v7 + 265) = v52 - ((v15 ^ 0x79) - 22);
  v56 = LODWORD(STACK[0x3D98]) ^ 0x5FA9;
  LODWORD(STACK[0x3D20]) = __PAIR64__(v16, v17 | v11) >> 5;
  LODWORD(STACK[0x3CF0]) = __PAIR64__(v16, v17 | v11) >> 2;
  LODWORD(STACK[0x3D10]) = __PAIR64__(v16, v17 | v11) >> 1;
  LODWORD(STACK[0x3D28]) = v41 ^ (__PAIR64__(v17, v11) >> 16) ^ v44 ^ v46 ^ v48 ^ (v45 >> 18) ^ (__PAIR64__(v17, v41) >> 13) ^ (__PAIR64__(v17, v41) >> 12) ^ (__PAIR64__(v17, v41) >> 11) ^ (__PAIR64__(v17, v41) >> 10) ^ (__PAIR64__(v17, v41) >> 9) ^ (__PAIR64__(v16, v41) >> 8) ^ (__PAIR64__(v16, v41) >> 7) ^ __ROR4__(v41, 6);
  v57 = *(v7 + 335);
  v58 = *(v7 + 264);
  LODWORD(STACK[0x3D68]) = v58;
  v59 = v58 << 24;
  v60 = (v57 << 24) | (*(v7 + 336) << 16);
  v61 = v59 | (*(v7 + 265) << 16);
  LODWORD(STACK[0x3E40]) = v56;
  v56 += 5752;
  v62 = v53 - (v52 - v54);
  *(v7 + 266) = v55;
  v63 = v55 ^ (v52 - v54);
  *(v7 + 267) = v54;
  v64 = v62 + v55;
  v65 = v55 ^ v54 ^ (v62 + v55);
  v66 = v65 + v63;
  LODWORD(STACK[0x3B08]) = v56;
  v67 = (v62 + v55) ^ 0x1E2ADE80 ^ v56;
  *(v7 + 270) = v67;
  *(v7 + 271) = v65;
  v68 = v65 + 1544758645 + v67;
  v69 = *(v7 + 338);
  v70 = v69 | (*(v7 + 337) << 8);
  v71 = v70 | v60;
  LODWORD(STACK[0x3D48]) = ((v70 | v60) >> 8) | (v69 << 24);
  LODWORD(STACK[0x3D40]) = ((v70 | v60) >> 5) | (v69 << 27);
  LODWORD(STACK[0x3D30]) = ((v70 | v60) >> 3) | (v69 << 29);
  LODWORD(STACK[0x3D38]) = ((v70 | v60) >> 1) | (v69 << 31);
  *(v7 + 269) = v66;
  v72 = v66 ^ v62;
  *(v7 + 268) = v72;
  v73 = (v64 ^ 0xBBA5C703) - 59844385;
  v74 = v73 ^ v62;
  v75 = v72 + 1935265548 + v74;
  *(v7 + 272) = v75;
  *(v7 + 273) = v74;
  *(v7 + 274) = v73;
  *(v7 + 275) = v68;
  v76 = v68 ^ v74;
  v77 = v76 + (v75 ^ v73);
  *(v7 + 276) = v77;
  v78 = v76 + v73;
  LODWORD(v69) = v68 ^ 0xCB888948;
  v79 = (v68 ^ 0xCB888948) + v76;
  *(v7 + 277) = v79;
  *(v7 + 278) = v78 ^ 0x36;
  v80 = (v78 ^ 0xFDA3A036) + v79;
  v79 ^= 0xCFF09A0C;
  *(v7 + 282) = v80 - v79;
  v81 = (v80 - v79) ^ (v79 + v77);
  LODWORD(STACK[0x3CE8]) = ((v70 | v60) >> 13) | (v70 << 19);
  LODWORD(STACK[0x3CE0]) = ((v70 | v60) >> 11) | (v70 << 21);
  v82 = (v70 << 18) ^ (v70 << 20) ^ (v70 << 17);
  *(v7 + 279) = v69 - 19;
  LODWORD(v69) = v69 + 947709421 - v80 + v79;
  v83 = v81 + v80;
  v84 = v81 + v80 + v69;
  LODWORD(STACK[0x3B20]) = v84;
  *(v7 + 287) = v84 + 15;
  *(v7 + 351) = v47;
  v85 = v47 + v42;
  *(v7 + 352) = v85;
  *(v7 + 354) = v14;
  *(v7 + 280) = v81;
  *(v7 + 281) = v81 + v79;
  *(v7 + 283) = v69;
  v86 = v81 ^ v69;
  v87 = (v81 + v79) ^ v69;
  v88 = v14 ^ v47 ^ v9;
  *(v7 + 355) = v88;
  LODWORD(v14) = v85 ^ v14 ^ v49 ^ 0x69A41CC7;
  *(v7 + 356) = v14;
  LODWORD(v14) = (v14 ^ 0xFA16A2AB) - 1384234242;
  *(v7 + 360) = v14;
  v89 = v88 + (v49 ^ 0x69A41CC7);
  v90 = v9 + 568105573 + v89;
  v89 ^= 0x2E9560F8u;
  *(v7 + 361) = v89;
  *(v7 + 362) = v90;
  LODWORD(v14) = v14 + (v49 ^ 0x69A41CC7);
  v91 = v90 - v89;
  v92 = v89 - 2 * v14;
  *(v7 + 357) = v49 ^ 0xC7;
  v93 = -(v49 ^ 0x69A41CC7);
  *(v7 + 359) = v93;
  v94 = (v91 ^ v93) - v92;
  *(v7 + 363) = v94;
  LODWORD(v14) = v14 - v91;
  *(v7 + 364) = v14;
  *(v7 + 365) = v92;
  v95 = v92 ^ v91;
  *(v7 + 366) = v95;
  LODWORD(v14) = v95 ^ v14;
  v96 = (v94 - v14) ^ 0x682A2A14;
  *(v7 + 367) = v96;
  v92 ^= 0x46E98155u;
  LODWORD(v14) = v14 + v92;
  *(v7 + 368) = v14;
  v95 -= 533850829;
  v97 = v95 + v92;
  *(v7 + 369) = v97;
  v95 ^= 0x4A917747u;
  *(v7 + 370) = v95;
  v96 += 1093426356;
  LODWORD(v14) = v14 - v95;
  v98 = v96 + v95;
  v96 ^= 0x12B265F4u;
  *(v7 + 371) = v96;
  v99 = (v98 ^ v97) + v14;
  LODWORD(v14) = v14 + 281085419;
  *(v7 + 372) = v14;
  *(v7 + 373) = v99;
  v100 = v99 + v98;
  *(v7 + 374) = v100;
  v101 = v96 + 1209012740;
  LODWORD(v9) = v96 + 1209012740 + v14 + v99;
  LODWORD(v70) = v100 ^ v99;
  LODWORD(STACK[0x3B18]) = v9 ^ 0xC7553D16 ^ v100;
  v102 = STACK[0x3D90];
  v103 = LODWORD(STACK[0x3D58]) ^ (v18 >> 5) ^ (v18 >> 8) ^ (v18 >> 12) ^ (v18 >> 15) ^ LODWORD(STACK[0x3E38]) ^ ((v8 >> 5) | (8 * v18)) ^ ((v8 >> 7) | (2 * v18)) ^ ((v8 >> 2) | (v18 << 6)) ^ ((v8 >> 1) | (v18 << 7)) ^ (v8 | (v18 << 8)) ^ ((v102 >> 23) | (v18 << 9)) ^ ((v102 >> 22) | (v18 << 10)) ^ ((v102 >> 19) | (v18 << 13)) ^ ((v102 >> 18) | (v18 << 14)) ^ ((STACK[0x3D90] >> 17) | (v18 << 15)) ^ LODWORD(STACK[0x3D88]) ^ LODWORD(STACK[0x3D80]) ^ LODWORD(STACK[0x3D78]) ^ LODWORD(STACK[0x3D70]);
  LODWORD(v69) = LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3D20]) ^ LODWORD(STACK[0x3CF0]) ^ LODWORD(STACK[0x3D10]) ^ LODWORD(STACK[0x3D50]) ^ LODWORD(STACK[0x3D60]);
  LODWORD(v18) = (v60 >> 19) | (v71 << 13);
  LODWORD(STACK[0x3E38]) = (v60 >> 18) | (v71 << 14);
  v104 = (v60 >> 17) | (v71 << 15);
  v105 = *(v7 + 267);
  v106 = v105 | (*(v7 + 266) << 8);
  v107 = v106 | v61;
  v108 = v82 ^ (v71 >> 12) ^ (v71 >> 14) ^ (v71 >> 15) ^ ((v57 >> 5) | (8 * v71)) ^ ((v57 >> 7) | (2 * v71)) ^ ((v57 >> 2) | (v71 << 6)) ^ ((v57 >> 1) | (v71 << 7)) ^ (v57 | (v71 << 8));
  HIDWORD(v45) = v106 | v61;
  LODWORD(v45) = v61;
  v109 = v45 >> 22;
  HIDWORD(v45) = v106 | v61;
  LODWORD(v45) = v61;
  v110 = ((v60 >> 23) | (v71 << 9)) ^ ((v60 >> 22) | (v71 << 10));
  LODWORD(v102) = v109 ^ (v45 >> 21);
  HIDWORD(v45) = v106 | v61;
  LODWORD(v45) = v61;
  v111 = v45 >> 19;
  HIDWORD(v45) = v106 | v61;
  LODWORD(v45) = v61;
  v112 = STACK[0x3B20];
  v113 = v86 ^ LODWORD(STACK[0x3B20]);
  LODWORD(v102) = v107 ^ (__PAIR64__(v106, v61) >> 16) ^ __ROR4__(v107, 25) ^ v102 ^ v111 ^ (v45 >> 18);
  HIDWORD(v45) = v106;
  LODWORD(v45) = v106 | v61;
  *(v7 + 284) = v113;
  v114 = v83 ^ 0x69A41CC7;
  v115 = v87 ^ v83 ^ 0x69A41CC7;
  *(v7 + 285) = v115;
  v116 = v113 + (v83 ^ 0x69A41CC7);
  v117 = (v115 ^ 0xFA16A2AB) - 1384234242;
  *(v7 + 289) = v117;
  v118 = v117 + v114;
  LODWORD(v71) = (v116 ^ 0x2E9560F8) - 2 * (v117 + v114);
  v119 = v101 - v70;
  v120 = LODWORD(STACK[0x3D68]) | (v107 << 8);
  LODWORD(v57) = v70 + v9;
  LODWORD(v70) = STACK[0x3B18];
  LODWORD(v14) = (v57 + v9) ^ (LODWORD(STACK[0x3B18]) + v9);
  v121 = v102 ^ (__PAIR64__(v106, v107) >> 13) ^ (v45 >> 12) ^ (__PAIR64__(v106, v107) >> 11) ^ (__PAIR64__(v106, v107) >> 10) ^ __ROR4__(v107, 9) ^ (__PAIR64__(v105, v107) >> 8) ^ (__PAIR64__(v105, v107) >> 7) ^ (__PAIR64__(v105, v107) >> 6) ^ (__PAIR64__(v105, v107) >> 5) ^ __ROR4__(v107, 2) ^ __ROR4__(v107, 1);
  v122 = v119 - (v57 + v9);
  LODWORD(v102) = (v57 ^ 0x3ED459E3) - v122;
  v123 = v57 + v9 - v102;
  v124 = v110 ^ v18 ^ LODWORD(STACK[0x3E38]);
  LODWORD(v18) = v102 - v123;
  LODWORD(STACK[0x3E38]) = v14 - 2 * (v102 - v123);
  v125 = v108 ^ v124 ^ v104;
  v126 = LODWORD(STACK[0x3CE8]) ^ LODWORD(STACK[0x3CE0]) ^ LODWORD(STACK[0x3D48]) ^ LODWORD(STACK[0x3D40]);
  LODWORD(STACK[0x3D68]) = v103 >> 8;
  v127 = v125 ^ v126 ^ LODWORD(STACK[0x3D30]) ^ LODWORD(STACK[0x3D38]);
  LODWORD(STACK[0x3D78]) = HIBYTE(v127);
  *(v7 + 375) = v119;
  LODWORD(STACK[0x3D80]) = HIWORD(v127);
  v128 = v121 ^ v120;
  v129 = (v121 ^ v120) >> 24;
  *(v7 + 376) = v9;
  LODWORD(STACK[0x3D88]) = v127 >> 8;
  *(v7 + 377) = v57;
  *(v7 + 378) = v70;
  v130 = *(v7 + 339);
  *(v7 + 286) = v114;
  *(v7 + 381) = v102;
  v131 = (v130 << 24) | (*(v7 + 340) << 16);
  v132 = *(v7 + 268);
  LODWORD(STACK[0x3D90]) = v132;
  LODWORD(v102) = v112 + 568105573 + v116;
  v133 = -v114;
  *(v7 + 288) = v133;
  *(v7 + 290) = v116 ^ 0xF8;
  *(v7 + 291) = v102;
  LODWORD(v102) = v102 - (v116 ^ 0x2E9560F8);
  LODWORD(v9) = (v132 << 24) | (*(v7 + 269) << 16);
  v134 = (v102 ^ v133) - v71;
  *(v7 + 292) = v134;
  *(v7 + 382) = v14;
  v135 = v118 - v102;
  *(v7 + 293) = v118 - v102;
  *(v7 + 294) = v71;
  LOBYTE(v57) = v71 ^ v102;
  *(v7 + 295) = v71 ^ v102;
  *STACK[0x3DA8] = HIBYTE(v103);
  *STACK[0x3DA0] = BYTE3(v69);
  *(v7 + 332) = BYTE2(v103);
  *(v7 + 261) = BYTE2(v69);
  v136 = *(v7 + 342);
  v137 = v136 | (*(v7 + 341) << 8);
  v138 = v71 ^ v102 ^ v135;
  v139 = v137 | v131;
  LODWORD(STACK[0x3D70]) = (v130 >> 7) | (2 * (v137 | v131));
  v140 = (v134 - v138) ^ 0x682A2A14;
  *(v7 + 296) = v140;
  *(v7 + 333) = STACK[0x3D68];
  v141 = v138 + (v71 ^ 0x46E98155);
  *(v7 + 297) = v141;
  *(v7 + 262) = BYTE1(v69);
  LODWORD(STACK[0x3D68]) = (v130 >> 5) | (8 * (v137 | v131));
  v142 = (v71 ^ v102) - 533850829 + (v71 ^ 0x46E98155);
  *(v7 + 298) = (v71 ^ v102) + 51 + (v71 ^ 0x55);
  LODWORD(v102) = ((v71 ^ v102) - 533850829) ^ 0x4A917747;
  *(v7 + 299) = (v57 + 51) ^ 0x47;
  *(v7 + 334) = v103;
  *(v7 + 263) = v69;
  LODWORD(v71) = (v130 >> 2) | ((v137 | v131) << 6);
  v140 += 1093426356;
  v143 = v140 ^ 0x12B265F4;
  *(v7 + 300) = v140 ^ 0xF4;
  v144 = v141 - v102;
  LODWORD(v14) = v130 | ((v137 | v131) << 8);
  v145 = v140 + v102;
  LODWORD(v130) = (v130 >> 1) | ((v137 | v131) << 7);
  LODWORD(v69) = (v145 ^ v142) + v144;
  v144 += 281085419;
  *(v7 + 301) = v144;
  *(v7 + 302) = v69;
  v146 = v69 + v145;
  *(v7 + 303) = v146;
  v147 = (v131 >> 23) | ((v137 | v131) << 9);
  *(v7 + 379) = v122 - 58;
  *(v7 + 380) = v123;
  *(v7 + 335) = STACK[0x3D78];
  *(v7 + 264) = v129;
  v148 = v123 ^ (v122 - 1866618170);
  v149 = (v131 >> 22) | ((v137 | v131) << 10);
  v150 = v123 + 483566244 + v148;
  v151 = v148 ^ v18;
  *(v7 + 383) = v151;
  *(v7 + 384) = v150;
  LODWORD(v18) = v18 + 1871022313;
  *(v7 + 385) = v18;
  LODWORD(v57) = STACK[0x3E38];
  *(v7 + 386) = STACK[0x3E38];
  *(v7 + 336) = STACK[0x3D80];
  v152 = (v131 >> 19) | ((v137 | v131) << 13);
  LODWORD(v60) = v150 ^ v151;
  LODWORD(v102) = v18 - (v150 ^ v151);
  v153 = v150 - v102;
  LODWORD(v18) = (v131 >> 18) | ((v137 | v131) << 14);
  v154 = v153 ^ v102;
  *(v7 + 389) = v153 ^ v102;
  *(v7 + 265) = BYTE2(v128);
  *(v7 + 337) = STACK[0x3D88];
  *(v7 + 266) = BYTE1(v128);
  *(v7 + 338) = v127;
  *(v7 + 267) = v128;
  v143 += 1209012740;
  v155 = (v131 >> 17) | ((v137 | v131) << 15);
  LODWORD(v102) = v143 + v144 + v69;
  v156 = v146 ^ v69;
  v157 = v102 ^ 0xC7553D16 ^ v146;
  LODWORD(v69) = ((v137 | v131) >> 15) | (v137 << 17);
  LODWORD(STACK[0x3D88]) = v60 + 1723199459;
  v158 = ((v137 | v131) >> 14) | (v137 << 18);
  LODWORD(v131) = (v57 ^ 0x49E88255) - (v60 + 1723199459);
  LODWORD(STACK[0x3D80]) = v131;
  LODWORD(STACK[0x3D78]) = v153 ^ 0xD93F6055;
  LODWORD(v60) = (v139 >> 13) | (v137 << 19);
  LODWORD(STACK[0x3E38]) = v131 + 1891330736 + (v153 ^ 0xD93F6055) + v154;
  v159 = (v139 >> 12) | (v137 << 20);
  LODWORD(v137) = (v139 >> 11) | (v137 << 21);
  LODWORD(v131) = (v139 >> 8) | (v136 << 24);
  v160 = (v139 >> 5) | (v136 << 27);
  v161 = v139 >> 3;
  LODWORD(v139) = (v139 >> 1) | (v136 << 31);
  LODWORD(v161) = v161 | (v136 << 29);
  LODWORD(v136) = v71 ^ v130;
  v162 = v143 - v156;
  v163 = v156 + v102;
  *(v7 + 304) = v162;
  *(v7 + 305) = v102;
  *(v7 + 306) = v163;
  *(v7 + 307) = v157;
  v164 = v157 + v102;
  LODWORD(v102) = v163 + v102;
  v165 = v162 - v102;
  v166 = (v163 ^ 0x3ED459E3) - v165;
  v165 -= 1866618170;
  *(v7 + 308) = v165;
  v167 = v164 ^ v102;
  LODWORD(v102) = v102 - v166;
  *(v7 + 309) = v102;
  *(v7 + 310) = v166;
  v168 = v166 - v102;
  v169 = v102 ^ v165;
  LODWORD(v71) = v102 + 483566244 + v169;
  *(v7 + 311) = v167;
  v170 = v169 ^ v168;
  *(v7 + 312) = v170;
  *(v7 + 313) = v71;
  v171 = v167 - 2 * v168;
  v168 += 1871022313;
  *(v7 + 314) = v168;
  *(v7 + 315) = v171;
  LODWORD(v102) = v161 ^ v136;
  v172 = *(v7 + 271);
  LODWORD(v161) = v172 | (*(v7 + 270) << 8);
  v173 = STACK[0x3D90];
  LODWORD(v14) = v102 ^ LODWORD(STACK[0x3D70]) ^ LODWORD(STACK[0x3D68]) ^ v14;
  LODWORD(v102) = v161 | v9;
  v174 = v147 ^ v149;
  HIDWORD(v45) = v161 | v9;
  LODWORD(v45) = v9;
  v175 = v45 >> 22;
  v176 = v71 ^ v170;
  v177 = v174 ^ v152;
  HIDWORD(v45) = v161 | v9;
  LODWORD(v45) = v9;
  LODWORD(v130) = v45 >> 21;
  v178 = v168 - v176;
  v179 = v71 - v178;
  LODWORD(v136) = (LODWORD(STACK[0x3D90]) >> 1) | ((v161 | v9) << 7);
  v180 = (v71 - v178) ^ v178;
  *(v7 + 318) = v180;
  LODWORD(v18) = v177 ^ v18;
  HIDWORD(v45) = v161 | v9;
  LODWORD(v45) = v9;
  v181 = v45 >> 19;
  v176 += 1723199459;
  LODWORD(STACK[0x3D68]) = v176;
  HIDWORD(v45) = v161 | v9;
  LODWORD(v45) = v9;
  LOBYTE(v71) = v179 ^ 0x55;
  v182 = (v171 ^ 0x49E88255) - v176;
  LODWORD(STACK[0x3D70]) = v182;
  v183 = v14 ^ v18 ^ v155 ^ v69 ^ v158 ^ v60 ^ v159 ^ v137 ^ v131 ^ v160 ^ v139;
  *(v7 + 339) = HIBYTE(v183);
  LODWORD(v102) = v102 ^ (__PAIR64__(v161, v9) >> 16) ^ v175 ^ v130 ^ v181 ^ (v45 >> 18) ^ (__PAIR64__(v161, v102) >> 13) ^ (__PAIR64__(v161, v102) >> 12) ^ (__PAIR64__(v161, v102) >> 11) ^ (__PAIR64__(v161, v102) >> 10) ^ (__PAIR64__(v161, v102) >> 9) ^ (__PAIR64__(v172, v102) >> 8) ^ (__PAIR64__(v172, v102) >> 7) ^ __ROR4__(v102, 6) ^ (__PAIR64__(v172, v102) >> 5) ^ (__PAIR64__(v172, v102) >> 2) ^ __ROR4__(v102, 1) ^ (v173 | (v102 << 8)) ^ v136;
  *(v7 + 268) = BYTE3(v102);
  *(v7 + 340) = BYTE2(v183);
  LODWORD(STACK[0x3D90]) = v182 + 1891330736 + (v179 ^ 0xD93F6055) + v180;
  *(v7 + 269) = BYTE2(v102);
  *(v7 + 341) = BYTE1(v183);
  *(v7 + 270) = BYTE1(v102);
  *(v7 + 342) = v183;
  *(v7 + 271) = v102;
  v184 = *(v7 + 343);
  LODWORD(v102) = *(v7 + 272);
  v185 = (v184 << 24) | (*(v7 + 344) << 16);
  v186 = *(v7 + 346);
  v187 = v186 | (*(v7 + 345) << 8);
  v188 = v187 | v185;
  LODWORD(v69) = _byteswap_ulong(*(v7 + 272));
  LODWORD(v184) = ((v184 >> 7) | (v186 << 29)) ^ (v187 << 19) ^ ((v187 | v185) >> 3) ^ ((v187 | v185) >> 13) ^ (2 * v188) ^ ((v184 >> 2) | ((v187 | v185) << 6)) ^ ((v184 >> 5) | (8 * (v187 | v185))) ^ ((v184 >> 1) | ((v187 | v185) << 7)) ^ (v184 | ((v187 | v185) << 8)) ^ ((v185 >> 23) | ((v187 | v185) << 9)) ^ ((v185 >> 22) | ((v187 | v185) << 10)) ^ ((v185 >> 19) | ((v187 | v185) << 13)) ^ ((v185 >> 18) | (v188 << 14)) ^ ((v185 >> 17) | (v188 << 15)) ^ (((v187 | v185) >> 15) | (v187 << 17)) ^ (((v187 | v185) >> 14) | (v187 << 18)) ^ (((v187 | v185) >> 12) | (v187 << 20)) ^ (((v187 | v185) >> 11) | (v187 << 21)) ^ (((v187 | v185) >> 8) | (v186 << 24)) ^ (((v187 | v185) >> 5) | (v186 << 27)) ^ (((v187 | v185) >> 1) | (v186 << 31));
  HIDWORD(v45) = v69;
  LODWORD(v45) = (v102 << 24) | (*(v7 + 273) << 16);
  LODWORD(v185) = v45 >> 22;
  HIDWORD(v45) = v69;
  v189 = v45 >> 21;
  HIDWORD(v45) = v69;
  LODWORD(v186) = v45 >> 19;
  HIDWORD(v45) = v69;
  v190 = v45 >> 18;
  HIDWORD(v45) = *(v7 + 275) | (*(v7 + 274) << 8);
  LODWORD(v161) = v45 >> 16;
  LODWORD(v45) = v69;
  LODWORD(v60) = v45 >> 13;
  LODWORD(v45) = v69;
  LODWORD(v139) = v45 >> 12;
  LODWORD(v45) = v69;
  v191 = v45 >> 11;
  LODWORD(v45) = v69;
  LODWORD(v187) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 275);
  LODWORD(v45) = v69;
  v192 = v45 >> 7;
  LODWORD(v45) = v69;
  LODWORD(v137) = v45 >> 6;
  LODWORD(v45) = v69;
  LODWORD(v102) = v69 ^ v161 ^ v185 ^ v189 ^ v190 ^ v186 ^ v60 ^ v139 ^ v191 ^ v187 ^ __ROR4__(v69, 9) ^ __ROR4__(v69, 8) ^ v192 ^ v137 ^ __ROR4__(v69, 5) ^ __ROR4__(v69, 2) ^ (v45 >> 1) ^ (v102 | (v69 << 8)) ^ ((v102 >> 1) | (v69 << 7));
  *(v7 + 343) = BYTE3(v184);
  *(v7 + 272) = BYTE3(v102);
  *(v7 + 344) = BYTE2(v184);
  *(v7 + 273) = BYTE2(v102);
  *(v7 + 345) = BYTE1(v184);
  *(v7 + 274) = BYTE1(v102);
  *(v7 + 346) = v184;
  *(v7 + 275) = v102;
  v193 = *(v7 + 347);
  v194 = (v193 << 24) | (*(v7 + 348) << 16);
  v195 = *(v7 + 350);
  v196 = v195 | (*(v7 + 349) << 8);
  v197 = v196 | v194;
  LODWORD(v130) = ((v196 | v194) >> 12) | (v196 << 20);
  v198 = *(v7 + 276);
  LODWORD(v186) = _byteswap_ulong(*(v7 + 276));
  LODWORD(v196) = ((v197 >> 11) | (v196 << 21)) ^ ((v193 >> 7) | (2 * (v196 | v194))) ^ ((v193 >> 5) | (8 * (v196 | v194))) ^ ((v193 >> 2) | ((v196 | v194) << 6)) ^ ((v193 >> 1) | ((v196 | v194) << 7)) ^ (v193 | ((v196 | v194) << 8)) ^ ((v194 >> 23) | ((v196 | v194) << 9)) ^ ((v194 >> 22) | ((v196 | v194) << 10)) ^ ((v194 >> 19) | ((v196 | v194) << 13)) ^ ((v194 >> 18) | ((v196 | v194) << 14)) ^ ((v194 >> 17) | ((v196 | v194) << 15)) ^ ((v197 >> 15) | (v196 << 17)) ^ ((v197 >> 14) | (v196 << 18)) ^ ((v197 >> 13) | (v196 << 19));
  LODWORD(v193) = v130 ^ ((v197 >> 8) | (v195 << 24)) ^ ((v197 >> 5) | (v195 << 27)) ^ ((v197 >> 3) | (v195 << 29)) ^ ((v197 >> 1) | (v195 << 31));
  HIDWORD(v45) = v186;
  LODWORD(v45) = (*(v7 + 277) << 16) | (v198 << 24);
  LODWORD(v161) = v45 >> 22;
  HIDWORD(v45) = v186;
  LODWORD(v194) = v45 >> 21;
  HIDWORD(v45) = v186;
  LODWORD(v195) = v45 >> 19;
  HIDWORD(v45) = v186;
  LODWORD(v136) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 279) | (*(v7 + 278) << 8);
  LODWORD(v197) = v45 >> 16;
  LODWORD(v45) = v186;
  LODWORD(v69) = v45 >> 13;
  LODWORD(v45) = v186;
  LODWORD(v139) = v45 >> 12;
  LODWORD(v45) = v186;
  v199 = v45 >> 11;
  LODWORD(v45) = v186;
  LODWORD(v60) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 279);
  LODWORD(v45) = v186;
  v200 = v45 >> 7;
  LODWORD(v196) = v196 ^ v193;
  LODWORD(v45) = v186;
  LODWORD(v193) = v45 >> 6;
  LODWORD(v45) = v186;
  *(v7 + 347) = BYTE3(v196);
  LODWORD(v193) = v186 ^ v197 ^ __ROR4__(v186, 24) ^ v161 ^ v194 ^ v195 ^ v136 ^ v69 ^ v139 ^ v199 ^ v60 ^ __ROR4__(v186, 9) ^ __ROR4__(v186, 8) ^ v200 ^ v193 ^ (v45 >> 5) ^ __ROR4__(v186, 2) ^ __ROR4__(v186, 1) ^ ((v198 >> 1) | (v186 << 7));
  *(v7 + 276) = BYTE3(v193);
  *(v7 + 348) = BYTE2(v196);
  *(v7 + 277) = BYTE2(v193);
  *(v7 + 349) = BYTE1(v196);
  *(v7 + 278) = BYTE1(v193);
  *(v7 + 350) = v196;
  *(v7 + 279) = v193;
  LODWORD(v161) = *(v7 + 280);
  v201 = *(v7 + 351);
  v202 = (*(v7 + 352) << 16) | (v201 << 24);
  v203 = *(v7 + 354);
  v204 = v203 | (*(v7 + 353) << 8);
  LODWORD(v186) = _byteswap_ulong(*(v7 + 280));
  HIDWORD(v45) = v186;
  LODWORD(v45) = (v161 << 24) | (*(v7 + 281) << 16);
  LODWORD(v139) = v45 >> 22;
  LODWORD(v193) = (v204 << 20) ^ (v204 << 21) ^ (v204 << 18) ^ ((v204 | v202) >> 11) ^ ((v204 | v202) >> 12) ^ ((v204 | v202) >> 14) ^ (((v204 | v202) >> 8) | (v203 << 24)) ^ ((v201 >> 7) | (2 * (v204 | v202))) ^ ((v201 >> 5) | (8 * (v204 | v202))) ^ ((v201 >> 2) | ((v204 | v202) << 6)) ^ ((v201 >> 1) | ((v204 | v202) << 7)) ^ (v201 | ((v204 | v202) << 8)) ^ ((v202 >> 23) | ((v204 | v202) << 9)) ^ ((v202 >> 22) | ((v204 | v202) << 10)) ^ ((v202 >> 19) | ((v204 | v202) << 13)) ^ ((v202 >> 18) | ((v204 | v202) << 14)) ^ ((v202 >> 17) | ((v204 | v202) << 15)) ^ (((v204 | v202) >> 15) | (v204 << 17)) ^ (((v204 | v202) >> 13) | (v204 << 19)) ^ (((v204 | v202) >> 5) | (v203 << 27)) ^ (((v204 | v202) >> 3) | (v203 << 29)) ^ (((v204 | v202) >> 1) | (v203 << 31));
  HIDWORD(v45) = v186;
  LODWORD(v201) = v45 >> 21;
  HIDWORD(v45) = v186;
  LODWORD(v202) = v45 >> 19;
  HIDWORD(v45) = v186;
  LODWORD(v197) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 283) | (*(v7 + 282) << 8);
  LODWORD(v196) = v45 >> 16;
  LODWORD(v45) = v186;
  LODWORD(v187) = v45 >> 13;
  LODWORD(v45) = v186;
  v205 = v45 >> 12;
  LODWORD(v45) = v186;
  LODWORD(v60) = v45 >> 10;
  LODWORD(v45) = v186;
  LODWORD(v136) = v45 >> 9;
  HIDWORD(v45) = *(v7 + 283);
  LODWORD(v45) = v186;
  v206 = v45 >> 7;
  LODWORD(v45) = v186;
  LODWORD(v203) = v45 >> 8;
  LODWORD(v45) = v186;
  LODWORD(v137) = v45 >> 6;
  LODWORD(v45) = v186;
  v207 = v45 >> 5;
  LODWORD(v45) = v186;
  LODWORD(v196) = v186 ^ v196 ^ v202 ^ v201 ^ __ROR4__(v186, 25) ^ v139 ^ v197 ^ v187 ^ v205 ^ __ROR4__(v186, 11) ^ v60 ^ v136 ^ v203 ^ v206 ^ v137 ^ v207 ^ (v45 >> 2) ^ __ROR4__(v186, 1) ^ (v161 | (v186 << 8));
  *(v7 + 351) = BYTE3(v193);
  *(v7 + 280) = BYTE3(v196);
  *(v7 + 352) = BYTE2(v193);
  *(v7 + 281) = BYTE2(v196);
  *(v7 + 353) = BYTE1(v193);
  *(v7 + 282) = BYTE1(v196);
  *(v7 + 354) = v193;
  *(v7 + 283) = v196;
  v208 = *(v7 + 355);
  LODWORD(v196) = *(v7 + 284);
  v209 = (v208 << 24) | (*(v7 + 356) << 16);
  v210 = *(v7 + 358);
  v211 = v210 | (*(v7 + 357) << 8);
  v212 = v211 | v209;
  v213 = _byteswap_ulong(*(v7 + 284));
  LODWORD(v208) = (v211 << 21) ^ (v210 << 24) ^ (v211 << 18) ^ ((v211 | v209) >> 8) ^ ((v211 | v209) >> 11) ^ (v212 >> 14) ^ (((v211 | v209) >> 15) | (v211 << 17)) ^ ((v208 >> 5) | (8 * (v211 | v209))) ^ ((v208 >> 7) | (2 * (v211 | v209))) ^ ((v208 >> 2) | ((v211 | v209) << 6)) ^ ((v208 >> 1) | ((v211 | v209) << 7)) ^ (v208 | ((v211 | v209) << 8)) ^ ((v209 >> 23) | ((v211 | v209) << 9)) ^ ((v209 >> 22) | ((v211 | v209) << 10)) ^ ((v209 >> 19) | (v212 << 13)) ^ ((v209 >> 18) | (v212 << 14)) ^ ((v209 >> 17) | (v212 << 15)) ^ (((v211 | v209) >> 13) | (v211 << 19)) ^ (((v211 | v209) >> 12) | (v211 << 20)) ^ (((v211 | v209) >> 5) | (v210 << 27)) ^ (((v211 | v209) >> 3) | (v210 << 29)) ^ (((v211 | v209) >> 1) | (v210 << 31));
  HIDWORD(v45) = v213;
  LODWORD(v45) = (v196 << 24) | (*(v7 + 285) << 16);
  LODWORD(v209) = v45 >> 22;
  HIDWORD(v45) = v213;
  LODWORD(v187) = v45 >> 21;
  HIDWORD(v45) = v213;
  LODWORD(v186) = v45 >> 19;
  HIDWORD(v45) = v213;
  LODWORD(v60) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 287) | (*(v7 + 286) << 8);
  LODWORD(v161) = v45 >> 16;
  LODWORD(v45) = v213;
  LODWORD(v136) = v45 >> 13;
  LODWORD(v45) = v213;
  LODWORD(v204) = v45 >> 12;
  LODWORD(v45) = v213;
  LODWORD(v211) = v45 >> 11;
  LODWORD(v45) = v213;
  LODWORD(v212) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 287);
  LODWORD(v45) = v213;
  LODWORD(v203) = v45 >> 8;
  LODWORD(v45) = v213;
  LODWORD(v137) = v45 >> 7;
  LODWORD(v45) = v213;
  v214 = v45 >> 6;
  LODWORD(v45) = v213;
  LODWORD(v131) = v45 >> 5;
  LODWORD(v45) = v213;
  *(v7 + 355) = BYTE3(v208);
  LODWORD(v196) = v213 ^ v161 ^ v209 ^ v187 ^ v186 ^ v60 ^ v136 ^ v204 ^ v211 ^ v212 ^ __ROR4__(v213, 9) ^ v203 ^ v137 ^ v214 ^ v131 ^ (v45 >> 2) ^ __ROR4__(v213, 1) ^ (v196 | (v213 << 8)) ^ ((v196 >> 1) | (v213 << 7));
  *(v7 + 284) = BYTE3(v196);
  *(v7 + 356) = BYTE2(v208);
  *(v7 + 285) = BYTE2(v196);
  *(v7 + 357) = BYTE1(v208);
  *(v7 + 286) = BYTE1(v196);
  *(v7 + 358) = v208;
  *(v7 + 287) = v196;
  v215 = *(v7 + 359);
  LODWORD(v209) = *(v7 + 288);
  v216 = (v215 << 24) | (*(v7 + 360) << 16);
  LODWORD(v212) = (v209 << 24) | (*(v7 + 289) << 16);
  v217 = *(v7 + 362);
  LODWORD(v161) = *(v7 + 291);
  v218 = v217 | (*(v7 + 361) << 8);
  v219 = v218 | v216;
  LODWORD(v187) = v161 | (*(v7 + 290) << 8);
  LODWORD(v196) = v187 | v212;
  v220 = ((v215 >> 5) | (8 * (v218 | v216))) ^ ((v215 >> 7) | (2 * (v218 | v216))) ^ ((v215 >> 2) | ((v218 | v216) << 6)) ^ ((v215 >> 1) | ((v218 | v216) << 7)) ^ (v215 | ((v218 | v216) << 8)) ^ ((v216 >> 23) | ((v218 | v216) << 9)) ^ ((v216 >> 22) | ((v218 | v216) << 10)) ^ ((v216 >> 19) | ((v218 | v216) << 13));
  LODWORD(v137) = (v209 >> 1) | ((v187 | v212) << 7);
  LODWORD(STACK[0x3CE8]) = v220;
  LODWORD(v215) = (v218 << 21) ^ (v217 << 29) ^ (v218 << 19) ^ (v218 << 17) ^ (v219 >> 3) ^ (v219 >> 11) ^ (v219 >> 13) ^ ((v218 | v216) >> 15) ^ ((v216 >> 17) | (v219 << 15)) ^ ((v216 >> 18) | ((v218 | v216) << 14)) ^ ((v219 >> 14) | (v218 << 18)) ^ ((v219 >> 12) | (v218 << 20)) ^ ((v219 >> 8) | (v217 << 24)) ^ ((v219 >> 5) | (v217 << 27)) ^ ((v219 >> 1) | (v217 << 31)) ^ v220;
  LODWORD(v201) = v209 | ((v187 | v212) << 8);
  HIDWORD(v45) = v187 | v212;
  LODWORD(v45) = v212;
  LODWORD(v209) = v45 >> 22;
  HIDWORD(v45) = v187 | v212;
  LODWORD(v45) = v212;
  LODWORD(v218) = v45 >> 21;
  HIDWORD(v45) = v187 | v212;
  LODWORD(v45) = v212;
  LODWORD(v217) = v45 >> 19;
  HIDWORD(v45) = v187 | v212;
  LODWORD(v45) = v212;
  LODWORD(v219) = v45 >> 18;
  HIDWORD(v45) = v187;
  LODWORD(v45) = v187 | v212;
  *(v7 + 359) = BYTE3(v215);
  LODWORD(v196) = v196 ^ (__PAIR64__(v187, v212) >> 16) ^ (v45 >> 13) ^ v219 ^ v217 ^ v209 ^ v218 ^ (__PAIR64__(v187, v196) >> 12) ^ (__PAIR64__(v187, v196) >> 11) ^ (__PAIR64__(v187, v196) >> 10) ^ (__PAIR64__(v187, v196) >> 9) ^ (__PAIR64__(v161, v187 | v212) >> 8) ^ __ROR4__(v187 | v212, 7) ^ (__PAIR64__(v161, v196) >> 6) ^ (__PAIR64__(v161, v196) >> 5) ^ __ROR4__(v187 | v212, 2) ^ __ROR4__(v187 | v212, 1) ^ v201 ^ v137;
  *(v7 + 288) = BYTE3(v196);
  *(v7 + 360) = BYTE2(v215);
  *(v7 + 289) = BYTE2(v196);
  *(v7 + 361) = BYTE1(v215);
  *(v7 + 290) = BYTE1(v196);
  *(v7 + 362) = v215;
  *(v7 + 291) = v196;
  LODWORD(v196) = *(v7 + 292);
  v221 = *(v7 + 363);
  v222 = (v221 << 24) | (*(v7 + 364) << 16);
  v223 = *(v7 + 366);
  v224 = v223 | (*(v7 + 365) << 8);
  v225 = v224 | v222;
  v226 = ((v224 | v222) >> 8) | (v223 << 24);
  LODWORD(v131) = ((v224 | v222) >> 5) | (v223 << 27);
  v227 = ((v224 | v222) >> 1) | (v223 << 31);
  v228 = (v224 << 20) ^ (v223 << 29) ^ (v225 >> 3) ^ (v225 >> 12) ^ ((v221 >> 7) | (2 * (v224 | v222))) ^ ((v221 >> 5) | (8 * (v224 | v222)));
  LODWORD(v223) = _byteswap_ulong(*(v7 + 292));
  LODWORD(v224) = v228 ^ ((v221 >> 2) | ((v224 | v222) << 6)) ^ ((v221 >> 1) | ((v224 | v222) << 7)) ^ (v221 | ((v224 | v222) << 8)) ^ ((v222 >> 23) | ((v224 | v222) << 9)) ^ ((v222 >> 22) | (v225 << 10)) ^ ((v222 >> 19) | (v225 << 13)) ^ ((v222 >> 18) | (v225 << 14)) ^ ((v222 >> 17) | (v225 << 15)) ^ (((v224 | v222) >> 15) | (v224 << 17)) ^ (((v224 | v222) >> 14) | (v224 << 18)) ^ (((v224 | v222) >> 13) | (v224 << 19)) ^ (((v224 | v222) >> 11) | (v224 << 21)) ^ v226 ^ v131 ^ v227;
  HIDWORD(v45) = v223;
  LODWORD(v45) = (v196 << 24) | (*(v7 + 293) << 16);
  v229 = v45 >> 22;
  HIDWORD(v45) = v223;
  LODWORD(v221) = v45 >> 21;
  HIDWORD(v45) = v223;
  LODWORD(v222) = v45 >> 19;
  HIDWORD(v45) = v223;
  LODWORD(v187) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 295) | (*(v7 + 294) << 8);
  LODWORD(v161) = v45 >> 16;
  LODWORD(v45) = v223;
  LODWORD(v219) = v45 >> 13;
  LODWORD(v45) = v223;
  LODWORD(v216) = v45 >> 12;
  LODWORD(v45) = v223;
  LODWORD(v204) = v45 >> 11;
  LODWORD(v45) = v223;
  LODWORD(v225) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 295);
  LODWORD(v45) = v223;
  LODWORD(v210) = v45 >> 8;
  LODWORD(v45) = v223;
  LODWORD(v211) = v45 >> 7;
  LODWORD(v45) = v223;
  LODWORD(v203) = v45 >> 5;
  LODWORD(v45) = v223;
  v230 = v45 >> 2;
  LODWORD(v45) = v223;
  *(v7 + 363) = BYTE3(v224);
  LODWORD(v196) = v223 ^ v161 ^ __ROR4__(v223, 25) ^ v229 ^ v221 ^ v222 ^ v187 ^ v219 ^ v216 ^ v204 ^ v225 ^ __ROR4__(v223, 9) ^ v210 ^ v211 ^ __ROR4__(v223, 6) ^ v203 ^ v230 ^ (v45 >> 1) ^ (v196 | (v223 << 8));
  *(v7 + 292) = BYTE3(v196);
  *(v7 + 364) = BYTE2(v224);
  *(v7 + 293) = BYTE2(v196);
  *(v7 + 365) = BYTE1(v224);
  *(v7 + 294) = BYTE1(v196);
  *(v7 + 366) = v224;
  *(v7 + 295) = v196;
  v231 = *(v7 + 367);
  v232 = (v231 << 24) | (*(v7 + 368) << 16);
  v233 = *(v7 + 370);
  v234 = v233 | (*(v7 + 369) << 8);
  v235 = v234 | v232;
  LODWORD(v221) = *(v7 + 296);
  LODWORD(v219) = _byteswap_ulong(*(v7 + 296));
  HIDWORD(v45) = v219;
  LODWORD(v45) = (v221 << 24) | (*(v7 + 297) << 16);
  LODWORD(v216) = v45 >> 22;
  HIDWORD(v45) = v219;
  LODWORD(v204) = v45 >> 21;
  HIDWORD(v45) = v219;
  LODWORD(v210) = v45 >> 19;
  HIDWORD(v45) = v219;
  LODWORD(v211) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 299) | (*(v7 + 298) << 8);
  LODWORD(v218) = v45 >> 16;
  LODWORD(v45) = v219;
  LODWORD(v203) = v45 >> 13;
  LODWORD(v45) = v219;
  LODWORD(v137) = v45 >> 12;
  LODWORD(v45) = v219;
  v236 = v45 >> 11;
  LODWORD(v45) = v219;
  LODWORD(v224) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 299);
  LODWORD(v45) = v219;
  LODWORD(v131) = v45 >> 8;
  LODWORD(v216) = v216 ^ v204;
  LODWORD(v45) = v219;
  LODWORD(v204) = v45 >> 7;
  LODWORD(v216) = v216 ^ v210;
  LODWORD(v45) = v219;
  LODWORD(v210) = v45 >> 6;
  LODWORD(v216) = v216 ^ v211;
  LODWORD(v45) = v219;
  LODWORD(v211) = v45 >> 5;
  LODWORD(v45) = v219;
  LODWORD(v218) = v219 ^ v218 ^ __ROR4__(v219, 24) ^ v216 ^ v203 ^ v137 ^ v236 ^ v224 ^ __ROR4__(v219, 9) ^ v131 ^ v204 ^ v210 ^ v211 ^ (v45 >> 2) ^ __ROR4__(v219, 1) ^ ((v221 >> 1) | (v219 << 7));
  LODWORD(v196) = (v234 << 20) ^ (v233 << 24) ^ (v235 >> 8) ^ (v235 >> 12) ^ ((v231 >> 2) | ((v234 | v232) << 6)) ^ ((v231 >> 7) | (2 * (v234 | v232))) ^ ((v231 >> 1) | ((v234 | v232) << 7)) ^ (v231 | ((v234 | v232) << 8)) ^ ((v232 >> 23) | ((v234 | v232) << 9)) ^ ((v232 >> 22) | ((v234 | v232) << 10)) ^ ((v232 >> 19) | (v235 << 13)) ^ ((v232 >> 18) | (v235 << 14)) ^ ((v232 >> 17) | (v235 << 15)) ^ (((v234 | v232) >> 15) | (v234 << 17)) ^ (((v234 | v232) >> 14) | (v234 << 18)) ^ (((v234 | v232) >> 13) | (v234 << 19)) ^ ((v231 >> 5) | (8 * (v234 | v232))) ^ (((v234 | v232) >> 11) | (v234 << 21)) ^ (((v234 | v232) >> 5) | (v233 << 27)) ^ (((v234 | v232) >> 3) | (v233 << 29)) ^ (((v234 | v232) >> 1) | (v233 << 31));
  *(v7 + 367) = BYTE3(v196);
  *(v7 + 296) = BYTE3(v218);
  *(v7 + 368) = BYTE2(v196);
  *(v7 + 297) = BYTE2(v218);
  *(v7 + 369) = ((v235 >> 8) ^ (v235 >> 12) ^ ((v231 >> 2) | ((v234 | v232) << 6)) ^ ((v231 >> 7) | (2 * (v234 | v232))) ^ ((v231 >> 1) | ((v234 | v232) << 7)) ^ (v231 | ((v234 | v232) << 8)) ^ ((v232 >> 23) | ((v234 | v232) << 9)) ^ ((v232 >> 22) | ((v234 | v232) << 10)) ^ ((v232 >> 19) | (v235 << 13)) ^ ((v232 >> 18) | (v235 << 14)) ^ ((v232 >> 17) | (v235 << 15)) ^ ((v234 | v232) >> 15) ^ ((v234 | v232) >> 14) ^ ((v234 | v232) >> 13) ^ ((v231 >> 5) | (8 * (v234 | v232))) ^ ((v234 | v232) >> 11) ^ ((v234 | v232) >> 5) ^ ((v234 | v232) >> 3) ^ ((v234 | v232) >> 1)) >> 8;
  *(v7 + 298) = BYTE1(v218);
  *(v7 + 370) = BYTE1(v235) ^ (v235 >> 12) ^ ((v231 >> 2) | ((v234 | v232) << 6)) ^ ((v231 >> 7) | (2 * (v234 | v232))) ^ ((v231 >> 1) | ((v234 | v232) << 7)) ^ v231 ^ (v232 >> 23) ^ (v232 >> 22) ^ (v232 >> 19) ^ (v232 >> 18) ^ (v232 >> 17) ^ ((v234 | v232) >> 15) ^ ((v234 | v232) >> 14) ^ ((v234 | v232) >> 13) ^ ((v231 >> 5) | (8 * (v234 | v232))) ^ ((v234 | v232) >> 11) ^ ((v234 | v232) >> 5) ^ ((v234 | v232) >> 3) ^ ((v234 | v232) >> 1);
  *(v7 + 299) = v218;
  v237 = *(v7 + 371);
  v238 = (v237 << 24) | (*(v7 + 372) << 16);
  v239 = *(v7 + 374);
  v240 = v239 | (*(v7 + 373) << 8);
  v241 = v240 | v238;
  LODWORD(v233) = (v237 >> 7) | (2 * (v240 | v238));
  LODWORD(v218) = (v237 >> 5) | (8 * (v240 | v238));
  LODWORD(v231) = (v237 >> 2) | ((v240 | v238) << 6);
  LODWORD(v216) = (v237 >> 1) | ((v240 | v238) << 7);
  LODWORD(v219) = (v238 >> 23) | ((v240 | v238) << 9);
  LODWORD(v204) = v237 | ((v240 | v238) << 8);
  LODWORD(v237) = (v238 >> 22) | ((v240 | v238) << 10);
  v242 = ((v240 | v238) >> 15) | (v240 << 17);
  LODWORD(v221) = ((v240 | v238) >> 13) | (v240 << 19);
  LODWORD(v203) = ((v240 | v238) >> 12) | (v240 << 20);
  v243 = ((v240 | v238) >> 8) | (v239 << 24);
  LODWORD(v137) = ((v240 | v238) >> 1) | (v239 << 31);
  v244 = (v240 | v238) >> 3;
  LODWORD(v240) = (v239 << 27) ^ (v239 << 29) ^ (v240 << 21) ^ (v240 << 18);
  LODWORD(v239) = v244 ^ (v241 >> 5) ^ (v241 >> 11);
  LODWORD(v244) = (v238 >> 19) | (v241 << 13);
  LODWORD(v240) = v240 ^ v239;
  LODWORD(v239) = (v238 >> 18) | (v241 << 14);
  LODWORD(v238) = (v238 >> 17) | (v241 << 15);
  LODWORD(v241) = (v241 >> 14) ^ v239;
  LODWORD(v239) = *(v7 + 303);
  LODWORD(v238) = v241 ^ v238;
  LODWORD(v241) = _byteswap_ulong(*(v7 + 300));
  LODWORD(v237) = v240 ^ v238 ^ v237 ^ v244 ^ v218 ^ v233 ^ v231 ^ v216 ^ v204 ^ v219 ^ v242;
  v245 = v221 ^ v203 ^ v243 ^ v137;
  HIDWORD(v45) = v241;
  LODWORD(v45) = (*(v7 + 300) << 24) | (*(v7 + 301) << 16);
  LODWORD(v221) = v45 >> 22;
  HIDWORD(v45) = v241;
  LODWORD(v238) = v45 >> 21;
  HIDWORD(v45) = v241;
  LODWORD(v233) = v45 >> 19;
  HIDWORD(v45) = v241;
  LODWORD(v218) = v45 >> 18;
  HIDWORD(v45) = v239 | (*(v7 + 302) << 8);
  LODWORD(v196) = v45 >> 16;
  LODWORD(v45) = v241;
  LODWORD(v231) = v45 >> 12;
  LODWORD(v45) = v241;
  LODWORD(v219) = v45 >> 11;
  LODWORD(v45) = v241;
  LODWORD(v216) = v45 >> 10;
  LODWORD(v237) = v237 ^ v245;
  LODWORD(v45) = v241;
  *(v7 + 371) = BYTE3(v237);
  LODWORD(v196) = v241 ^ v196 ^ __ROR4__(v241, 24) ^ __ROR4__(v241, 25) ^ v221 ^ v238 ^ v233 ^ v218 ^ __ROR4__(v241, 13) ^ v231 ^ v219 ^ v216 ^ (v45 >> 9) ^ (__PAIR64__(v239, v241) >> 8) ^ (__PAIR64__(v239, v241) >> 7) ^ (__PAIR64__(v239, v241) >> 6) ^ (__PAIR64__(v239, v241) >> 5) ^ (__PAIR64__(v239, v241) >> 2) ^ (__PAIR64__(v239, v241) >> 1);
  *(v7 + 300) = BYTE3(v196);
  *(v7 + 372) = BYTE2(v237);
  *(v7 + 301) = BYTE2(v196);
  *(v7 + 373) = BYTE1(v237);
  *(v7 + 302) = BYTE1(v196);
  *(v7 + 374) = v237;
  *(v7 + 303) = v196;
  LODWORD(v196) = *(v7 + 304);
  v246 = *(v7 + 375);
  v247 = (v246 << 24) | (*(v7 + 376) << 16);
  v248 = *(v7 + 378);
  v249 = v248 | (*(v7 + 377) << 8);
  v250 = v249 | v247;
  LODWORD(v231) = (v246 >> 7) | (2 * (v249 | v247));
  LODWORD(v219) = (v246 >> 5) | (8 * (v249 | v247));
  LODWORD(v216) = (v246 >> 2) | ((v249 | v247) << 6);
  LODWORD(v221) = (v246 >> 1) | ((v249 | v247) << 7);
  LODWORD(v218) = (v247 >> 23) | ((v249 | v247) << 9);
  LODWORD(v246) = v246 | ((v249 | v247) << 8);
  LODWORD(v204) = (v247 >> 22) | ((v249 | v247) << 10);
  LODWORD(v240) = (v247 >> 19) | ((v249 | v247) << 13);
  LODWORD(v239) = (v247 >> 18) | ((v249 | v247) << 14);
  LODWORD(v247) = (v247 >> 17) | ((v249 | v247) << 15);
  LODWORD(v137) = (v250 >> 8) | (v248 << 24);
  LODWORD(v203) = (v250 >> 5) | (v248 << 27);
  v251 = (v250 >> 3) | (v248 << 29);
  LODWORD(v248) = (v250 >> 1) | (v248 << 31);
  LODWORD(v244) = (v250 >> 15) | (v249 << 17);
  v252 = (v250 >> 14) | (v249 << 18);
  LODWORD(v130) = (v250 >> 13) | (v249 << 19);
  v253 = (v250 >> 12) | (v249 << 20);
  LODWORD(v249) = ((v250 >> 11) | (v249 << 21)) ^ v231 ^ v219;
  LODWORD(v246) = v216 ^ v221 ^ v246;
  LODWORD(v221) = *(v7 + 307);
  LODWORD(v250) = v221 | (*(v7 + 306) << 8);
  LODWORD(v246) = v249 ^ v246;
  LODWORD(v249) = v250 | (v196 << 24) | (*(v7 + 305) << 16);
  LODWORD(v246) = v246 ^ v218 ^ v204 ^ v240 ^ v239 ^ v247 ^ v244 ^ v252 ^ v130 ^ v253 ^ v137 ^ v203 ^ v251 ^ v248;
  HIDWORD(v45) = v249;
  LODWORD(v45) = (v196 << 24) | (*(v7 + 305) << 16);
  LODWORD(v248) = v45 >> 22;
  HIDWORD(v45) = v249;
  LODWORD(v218) = v45 >> 21;
  HIDWORD(v45) = v249;
  LODWORD(v231) = v45 >> 19;
  HIDWORD(v45) = v249;
  LODWORD(v219) = v45 >> 18;
  HIDWORD(v45) = v250;
  *(v7 + 375) = BYTE3(v246);
  LODWORD(v196) = (v45 >> 16) ^ (v250 << 22) ^ v249 ^ v248 ^ v218 ^ v231 ^ v219 ^ (__PAIR64__(v250, v249) >> 13) ^ (__PAIR64__(v250, v249) >> 12) ^ (__PAIR64__(v250, v249) >> 11) ^ (v249 >> 10) ^ (__PAIR64__(v250, v249) >> 9) ^ __ROR4__(v249, 8) ^ (__PAIR64__(v221, v249) >> 7) ^ (__PAIR64__(v221, v249) >> 6) ^ (__PAIR64__(v221, v249) >> 5) ^ (__PAIR64__(v221, v249) >> 1) ^ (__PAIR64__(v221, v249) >> 2) ^ (v196 | (v249 << 8)) ^ ((v196 >> 1) | (v249 << 7));
  *(v7 + 304) = BYTE3(v196);
  *(v7 + 376) = BYTE2(v246);
  *(v7 + 305) = BYTE2(v196);
  *(v7 + 377) = BYTE1(v246);
  *(v7 + 306) = BYTE1(v196);
  *(v7 + 378) = v246;
  *(v7 + 307) = v196;
  LODWORD(v232) = *(v7 + 308);
  v254 = *(v7 + 379);
  v255 = (*(v7 + 380) << 16) | (v254 << 24);
  v256 = *(v7 + 382);
  v257 = v256 | (*(v7 + 381) << 8);
  LODWORD(v231) = v257 | v255;
  LODWORD(v249) = (v254 >> 5) | (8 * (v257 | v255));
  LODWORD(v219) = (v254 >> 7) | (2 * (v257 | v255));
  LODWORD(v248) = (v254 >> 2) | ((v257 | v255) << 6);
  LODWORD(v218) = (v254 >> 1) | ((v257 | v255) << 7);
  LODWORD(v216) = v254 | ((v257 | v255) << 8);
  LODWORD(v254) = _byteswap_ulong(*(v7 + 308));
  LODWORD(v246) = (v257 << 19) ^ (v257 << 21) ^ (v257 << 18) ^ (v257 << 17) ^ ((v257 | v255) >> 11) ^ ((v257 | v255) >> 13) ^ ((v257 | v255) >> 14) ^ ((v257 | v255) >> 15) ^ ((v255 >> 22) | ((v257 | v255) << 10)) ^ ((v255 >> 23) | ((v257 | v255) << 9)) ^ ((v255 >> 19) | ((v257 | v255) << 13)) ^ v219 ^ v249 ^ v248 ^ v218 ^ v216 ^ ((v255 >> 18) | (v231 << 14)) ^ ((v255 >> 17) | (v231 << 15)) ^ (((v257 | v255) >> 12) | (v257 << 20)) ^ (((v257 | v255) >> 8) | (v256 << 24)) ^ (((v257 | v255) >> 5) | (v256 << 27)) ^ (((v257 | v255) >> 3) | (v256 << 29)) ^ (((v257 | v255) >> 1) | (v256 << 31));
  HIDWORD(v45) = v254;
  LODWORD(v45) = (v232 << 24) | (*(v7 + 309) << 16);
  LODWORD(v249) = v45 >> 22;
  HIDWORD(v45) = v254;
  LODWORD(v255) = v45 >> 21;
  HIDWORD(v45) = v254;
  LODWORD(v248) = v45 >> 19;
  HIDWORD(v45) = v254;
  LODWORD(v218) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 311) | (*(v7 + 310) << 8);
  LODWORD(v196) = v45 >> 16;
  LODWORD(v45) = v254;
  LODWORD(v219) = v45 >> 13;
  LODWORD(v45) = v254;
  LODWORD(v216) = v45 >> 11;
  LODWORD(v45) = v254;
  LODWORD(v256) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 311);
  LODWORD(v45) = v254;
  LODWORD(v257) = v45 >> 8;
  HIDWORD(v45) |= *(v7 + 310) << 8;
  LODWORD(v45) = v254;
  LODWORD(v221) = v45 >> 9;
  HIDWORD(v45) = *(v7 + 311);
  LODWORD(v45) = v254;
  LODWORD(v239) = v45 >> 7;
  LODWORD(v45) = v254;
  LODWORD(v203) = v45 >> 6;
  LODWORD(v45) = v254;
  LODWORD(v137) = v45 >> 5;
  LODWORD(v45) = v254;
  LODWORD(v244) = v45 >> 1;
  LODWORD(v45) = v254;
  LODWORD(v196) = v254 ^ v196 ^ __ROR4__(v254, 24) ^ v249 ^ v255 ^ v248 ^ v218 ^ v219 ^ __ROR4__(v254, 12) ^ v216 ^ v256 ^ v221 ^ v257 ^ v239 ^ v203 ^ v137 ^ (v45 >> 2) ^ v244 ^ ((v232 >> 1) | (v254 << 7));
  *(v7 + 379) = BYTE3(v246);
  *(v7 + 308) = BYTE3(v196);
  *(v7 + 380) = BYTE2(v246);
  *(v7 + 309) = BYTE2(v196);
  *(v7 + 381) = BYTE1(v246);
  *(v7 + 310) = BYTE1(v196);
  *(v7 + 382) = v246;
  *(v7 + 311) = v196;
  v258 = *(v7 + 383);
  LODWORD(v196) = *(v7 + 312);
  v259 = (v258 << 24) | (*(v7 + 384) << 16);
  v260 = *(v7 + 386);
  v261 = v260 | (*(v7 + 385) << 8);
  v262 = v261 | v259;
  LODWORD(v232) = (v196 << 24) | (*(v7 + 313) << 16);
  LODWORD(v248) = (v258 >> 7) | (2 * (v261 | v259));
  LODWORD(v256) = (v258 >> 2) | ((v261 | v259) << 6);
  LODWORD(v239) = (v258 >> 5) | (8 * (v261 | v259));
  LODWORD(v231) = (v258 >> 1) | ((v261 | v259) << 7);
  LODWORD(v257) = (v259 >> 23) | ((v261 | v259) << 9);
  LODWORD(v218) = v258 | ((v261 | v259) << 8);
  LODWORD(v221) = ((v261 | v259) >> 14) | (v261 << 18);
  LODWORD(v258) = ((v261 | v259) >> 15) | (v261 << 17);
  LODWORD(v254) = ((v261 | v259) >> 13) | (v261 << 19);
  LODWORD(v203) = ((v261 | v259) >> 5) | (v260 << 27);
  v263 = ((v261 | v259) >> 1) | (v260 << 31);
  LODWORD(v244) = ((v261 | v259) >> 3) | (v260 << 29);
  LODWORD(v260) = (v261 << 21) ^ (v260 << 24) ^ (v261 << 20);
  LODWORD(v261) = ((v261 | v259) >> 11) ^ ((v261 | v259) >> 12);
  LODWORD(v137) = (v259 >> 22) | (v262 << 10);
  v264 = (v259 >> 19) | (v262 << 13);
  LODWORD(v130) = (v259 >> 18) | (v262 << 14);
  LODWORD(v259) = (v259 >> 17) | (v262 << 15);
  LODWORD(v262) = v260 ^ v261 ^ (v262 >> 8) ^ v239;
  LODWORD(v261) = *(v7 + 315);
  LODWORD(v260) = v261 | (*(v7 + 314) << 8);
  LODWORD(v248) = v248 ^ v256 ^ v231;
  LODWORD(v231) = v260 | v232;
  LODWORD(v259) = v262 ^ v248 ^ v257 ^ v218 ^ v137 ^ v264 ^ v130 ^ v259 ^ v258 ^ v221 ^ v254 ^ v203 ^ v244 ^ v263;
  LODWORD(STACK[0x3D60]) = v196 | ((v260 | v232) << 8);
  HIDWORD(v45) = v260 | v232;
  LODWORD(v45) = v232;
  v265 = v45 >> 22;
  HIDWORD(v45) = v260 | v232;
  LODWORD(v45) = v232;
  LODWORD(v248) = v45 >> 21;
  HIDWORD(v45) = v260 | v232;
  LODWORD(v45) = v232;
  LODWORD(STACK[0x3D58]) = v45 >> 19;
  HIDWORD(v45) = v260 | v232;
  LODWORD(v45) = v232;
  LODWORD(STACK[0x3D50]) = v45 >> 18;
  LODWORD(v232) = __PAIR64__(v260, v232) >> 16;
  LODWORD(v218) = __PAIR64__(v260, v231) >> 13;
  LODWORD(v257) = __PAIR64__(v260, v231) >> 12;
  LODWORD(v239) = __PAIR64__(v260, v231) >> 11;
  LODWORD(v203) = __PAIR64__(v260, v231) >> 10;
  LODWORD(v260) = __PAIR64__(v260, v231) >> 9;
  LODWORD(v137) = __PAIR64__(v261, v231) >> 8;
  v266 = __PAIR64__(v261, v231) >> 7;
  LODWORD(v244) = __PAIR64__(v261, v231) >> 6;
  v267 = __PAIR64__(v261, v231) >> 5;
  LODWORD(v256) = (v196 >> 1) | (v231 << 7);
  LODWORD(v130) = __PAIR64__(v261, v231) >> 2;
  LODWORD(v261) = __PAIR64__(v261, v231) >> 1;
  LODWORD(v262) = v231 ^ v232;
  v268 = STACK[0x3D88];
  *(v7 + 387) = STACK[0x3D88];
  LODWORD(v258) = STACK[0x3D68];
  *(v7 + 316) = STACK[0x3D68];
  LODWORD(v231) = STACK[0x3D78];
  *(v7 + 388) = STACK[0x3D78];
  *(v7 + 317) = v71;
  LODWORD(v221) = STACK[0x3D80];
  *(v7 + 390) = STACK[0x3D80];
  v268 ^= 0xA6419677;
  LODWORD(v196) = STACK[0x3D70];
  *(v7 + 319) = STACK[0x3D70];
  LOBYTE(v253) = (v221 - 59) ^ v268;
  LODWORD(STACK[0x3D88]) = v268 - 1064717832;
  *(v7 + 391) = v268 - 8;
  LOBYTE(v221) = (v196 - 59) ^ v258 ^ 0x77;
  LODWORD(v196) = (v258 ^ 0xA6419677) - 1064717832;
  LODWORD(STACK[0x3D80]) = v196;
  *(v7 + 320) = v196;
  LODWORD(STACK[0x3D78]) = v231 + 147486151;
  *(v7 + 392) = v231 - 57;
  *(v7 + 321) = v71 - 57;
  *(v7 + 393) = STACK[0x3E38];
  *(v7 + 394) = v253;
  LODWORD(v196) = v262 ^ v265 ^ v248 ^ LODWORD(STACK[0x3D58]) ^ LODWORD(STACK[0x3D50]) ^ v218 ^ v257 ^ v239 ^ v203 ^ v260 ^ v137 ^ v266 ^ v244 ^ v267 ^ v130 ^ v261 ^ LODWORD(STACK[0x3D60]) ^ v256;
  *(v7 + 383) = BYTE3(v259);
  *(v7 + 312) = BYTE3(v196);
  *(v7 + 384) = BYTE2(v259);
  *(v7 + 313) = BYTE2(v196);
  *(v7 + 385) = BYTE1(v259);
  *(v7 + 314) = BYTE1(v196);
  *(v7 + 386) = v259;
  *(v7 + 315) = v196;
  v269 = *(v7 + 387);
  LODWORD(v196) = *(v7 + 316);
  v270 = (v269 << 24) | (*(v7 + 388) << 16);
  v271 = *(v7 + 390);
  v272 = v271 | (*(v7 + 389) << 8);
  v273 = v272 | v270;
  LODWORD(v239) = _byteswap_ulong(*(v7 + 316));
  LODWORD(v269) = ((v269 >> 5) | (v271 << 29)) ^ (v271 << 27) ^ (v272 << 18) ^ (v273 >> 3) ^ ((v272 | v270) >> 5) ^ (v273 >> 14) ^ (8 * v273) ^ ((v269 >> 7) | (2 * (v272 | v270))) ^ ((v269 >> 2) | ((v272 | v270) << 6)) ^ ((v269 >> 1) | ((v272 | v270) << 7)) ^ (v269 | ((v272 | v270) << 8)) ^ ((v270 >> 23) | ((v272 | v270) << 9)) ^ ((v270 >> 22) | ((v272 | v270) << 10)) ^ ((v270 >> 19) | (v273 << 13)) ^ ((v270 >> 18) | (v273 << 14)) ^ ((v270 >> 17) | (v273 << 15)) ^ (((v272 | v270) >> 15) | (v272 << 17)) ^ (((v272 | v270) >> 13) | (v272 << 19)) ^ (((v272 | v270) >> 12) | (v272 << 20)) ^ (((v272 | v270) >> 11) | (v272 << 21)) ^ (((v272 | v270) >> 8) | (v271 << 24)) ^ (((v272 | v270) >> 1) | (v271 << 31));
  HIDWORD(v45) = v239;
  LODWORD(v45) = (v196 << 24) | (*(v7 + 317) << 16);
  LODWORD(v270) = v45 >> 22;
  HIDWORD(v45) = v239;
  LODWORD(v273) = v45 >> 21;
  HIDWORD(v45) = v239;
  LODWORD(v248) = v45 >> 19;
  HIDWORD(v45) = v239;
  LODWORD(v218) = v45 >> 18;
  HIDWORD(v45) = *(v7 + 319) | (*(v7 + 318) << 8);
  LODWORD(v232) = v45 >> 16;
  LODWORD(v45) = v239;
  LODWORD(v231) = v45 >> 13;
  LODWORD(v45) = v239;
  LODWORD(v260) = v45 >> 12;
  LODWORD(v45) = v239;
  LODWORD(v261) = v45 >> 11;
  LODWORD(v45) = v239;
  LODWORD(v272) = v45 >> 10;
  HIDWORD(v45) = *(v7 + 319);
  LODWORD(v45) = v239;
  LODWORD(v271) = v45 >> 8;
  LODWORD(v45) = v239;
  LODWORD(v203) = v45 >> 7;
  LODWORD(v45) = v239;
  LODWORD(v137) = v45 >> 6;
  LODWORD(v45) = v239;
  v274 = v45 >> 5;
  LODWORD(v45) = v239;
  LODWORD(v244) = v45 >> 1;
  LODWORD(v45) = v239;
  LODWORD(v196) = v239 ^ v232 ^ v270 ^ v273 ^ v248 ^ v218 ^ v231 ^ v260 ^ v261 ^ v272 ^ __ROR4__(v239, 9) ^ v271 ^ v203 ^ v137 ^ v274 ^ (v45 >> 2) ^ v244 ^ (v196 | (v239 << 8)) ^ ((v196 >> 1) | (v239 << 7));
  *(v7 + 387) = BYTE3(v269);
  *(v7 + 316) = BYTE3(v196);
  *(v7 + 388) = BYTE2(v269);
  *(v7 + 317) = BYTE2(v196);
  *(v7 + 389) = BYTE1(v269);
  *(v7 + 318) = BYTE1(v196);
  *(v7 + 390) = v269;
  *(v7 + 319) = v196;
  v275 = *(v7 + 394);
  v276 = v275 | (*(v7 + 393) << 8);
  v277 = *(v7 + 391);
  v278 = (*(v7 + 392) << 16) | (v277 << 24);
  LODWORD(v196) = *(v7 + 320);
  LODWORD(v232) = (v196 << 24) | (*(v7 + 321) << 16);
  v279 = STACK[0x3D90];
  *(v7 + 322) = STACK[0x3D90];
  *(v7 + 323) = v221;
  LODWORD(v218) = v221 | (v279 << 8);
  LODWORD(v272) = v218 | v232;
  LODWORD(v276) = (((v278 | v276) >> 13) | (v276 << 19)) ^ (((v278 | v276) >> 12) | (v276 << 20)) ^ (((v278 | v276) >> 11) | (v276 << 21)) ^ ((v277 >> 5) | (8 * (v278 | v276))) ^ ((v277 >> 7) | (2 * (v278 | v276))) ^ ((v277 >> 2) | ((v278 | v276) << 6)) ^ ((v277 >> 1) | ((v278 | v276) << 7)) ^ (v277 | ((v278 | v276) << 8)) ^ ((v278 >> 23) | ((v278 | v276) << 9)) ^ ((v278 >> 22) | ((v278 | v276) << 10)) ^ ((v278 >> 19) | ((v278 | v276) << 13)) ^ ((v278 >> 18) | ((v278 | v276) << 14)) ^ ((v278 >> 17) | ((v278 | v276) << 15)) ^ (((v278 | v276) >> 15) | (v276 << 17)) ^ (((v278 | v276) >> 14) | (v276 << 18)) ^ (((v278 | v276) >> 8) | (v275 << 24)) ^ (((v278 | v276) >> 5) | (v275 << 27)) ^ (((v278 | v276) >> 3) | (v275 << 29)) ^ (((v278 | v276) >> 1) | (v275 << 31));
  HIDWORD(v45) = v218 | v232;
  LODWORD(v45) = v232;
  LODWORD(v278) = v45 >> 19;
  HIDWORD(v45) = v218 | v232;
  LODWORD(v45) = v232;
  LODWORD(v277) = (v232 >> 21) ^ (v232 >> 22) ^ (__PAIR64__(v218, v232) >> 16) ^ (v218 | v232) ^ __ROR4__(v272, 25) ^ (v272 << 10) ^ (v272 << 11) ^ v278 ^ (v45 >> 18) ^ (__PAIR64__(v218, v218 | v232) >> 13) ^ (__PAIR64__(v218, v272) >> 12);
  HIDWORD(v45) = v218;
  LODWORD(v45) = v218 | v232;
  LODWORD(v232) = (v45 >> 10) ^ (__PAIR64__(v218, v218 | v232) >> 9);
  HIDWORD(v45) = v221;
  LODWORD(v45) = v272;
  LODWORD(v232) = v232 ^ (v45 >> 8);
  HIDWORD(v45) = v221;
  LODWORD(v45) = v272;
  LODWORD(v232) = v232 ^ (v45 >> 7);
  HIDWORD(v45) = v221;
  LODWORD(v45) = v272;
  LODWORD(v232) = v232 ^ (v45 >> 6);
  HIDWORD(v45) = v221;
  LODWORD(v45) = v272;
  LODWORD(v232) = v232 ^ (v45 >> 5);
  HIDWORD(v45) = v221;
  LODWORD(v45) = v272;
  LODWORD(v232) = v232 ^ (v45 >> 2);
  HIDWORD(v45) = v221;
  LODWORD(v45) = v272;
  LODWORD(v196) = v277 ^ __ROR4__(v272, 11) ^ v232 ^ (v45 >> 1) ^ (v196 | (v272 << 8));
  *(v7 + 391) = BYTE3(v276);
  *(v7 + 320) = BYTE3(v196);
  *(v7 + 392) = BYTE2(v276);
  *(v7 + 321) = BYTE2(v196);
  *(v7 + 393) = BYTE1(v276);
  *(v7 + 322) = BYTE1(v196);
  *(v7 + 394) = v276;
  *(v7 + 323) = v196;
  return (*(v5 + 8 * (LODWORD(STACK[0x3D98]) ^ (1953 * (LODWORD(STACK[0x3870]) < LODWORD(STACK[0x3E18]))))))();
}

uint64_t sub_100B227DC()
{
  v4 = STACK[0x3C40];
  *(v4 + 76) = 0;
  v5 = STACK[0x39B8];
  *(v5 + 4) = 0;
  LODWORD(STACK[0x23AC]) = 107 * (v0 ^ 0x5EFF);
  v6 = STACK[0x3C38];
  v6[19] = 89;
  v7 = STACK[0x3C48];
  *(v7 + 48) = 10;
  *(v4 + 7) = -49;
  *(v7 + 89) = 99;
  *(v7 + 34) = 69;
  v6[18] = 43;
  v6[59] = -44;
  *(v4 + 115) = -46;
  *(v7 + 31) = -52;
  *(v4 + 72) = -36;
  *(v7 + 9) = 114;
  *(v7 + 7) = 38;
  *(v4 + 27) = 99;
  *(v5 + 23) = 117;
  *(v7 + 30) = 48;
  *(v4 + 32) = -93;
  v6[32] = 107;
  *(v4 + 83) = 53;
  v6[1] = 45;
  *(v4 + 94) = 35;
  *(v7 + 42) = -60;
  *(v4 + 107) = 47;
  v6[74] = -38;
  *(v4 + 23) = 12;
  v6[65] = 48;
  *(v7 + 21) = -121;
  *(v7 + 44) = 88;
  *(v4 + 2) = 120;
  *(v4 + 97) = 109;
  v6[50] = 96;
  v6[52] = 15;
  *(v4 + 84) = -85;
  *(v7 + 13) = 58;
  *(v4 + 70) = -51;
  *(v5 + 1) = 45;
  v6[64] = -117;
  v6[20] = -32;
  v6[43] = -34;
  *(v7 + 91) = 66;
  *(v4 + 73) = -24;
  *(v7 + 3) = 56;
  *(v7 + 78) = -26;
  *(v4 + 69) = -9;
  *(v4 + 106) = -44;
  *v6 = 53;
  v6[14] = 2;
  v6[36] = 84;
  *(v7 + 17) = 9;
  v6[30] = 61;
  v6[57] = 58;
  *(v4 + 67) = -45;
  *(v7 + 15) = -77;
  v6[21] = 96;
  *(v4 + 4) = -29815;
  *(v7 + 47) = -9;
  v6[42] = 99;
  *(v4 + 54) = -50;
  v6[73] = 109;
  v6[2] = -123;
  *(v4 + 25) = 67;
  *(v4 + 68) = -105;
  *(v4 + 64) = -108;
  *(v7 + 26) = 67;
  *(v7 + 50) = 28;
  v6[27] = 98;
  v6[3] = -80;
  *(v7 + 54) = 23;
  *(v4 + 15) = 115;
  *(v4 + 43) = -44;
  *(v4 + 121) = -45;
  v6[26] = 111;
  v6[33] = -4;
  *(v4 + 99) = 67;
  *(v7 + 55) = 116;
  *(v4 + 6) = 105;
  *(v7 + 65) = 120;
  *(v4 + 119) = -42;
  *(v4 + 59) = 54;
  *(v4 + 80) = -61;
  *(v7 + 84) = 0;
  v6[46] = 38;
  *(v7 + 36) = 27;
  *(v4 + 55) = 123;
  *(v7 + 14) = 65;
  v6[7] = 111;
  *(v4 + 10) = -65;
  v6[5] = 28;
  *(v4 + 56) = -16;
  *(v4 + 104) = -124;
  *(v4 + 75) = -69;
  *(v4 + 48) = -2;
  *(v7 + 51) = 52;
  *(v4 + 45) = 14;
  *(v4 + 19) = 24;
  *(v7 + 76) = -105;
  *(v7 + 18) = -116;
  *(v4 + 52) = 101;
  v6[10] = -110;
  *(v4 + 51) = -125;
  *(v4 + 49) = 9;
  *(v4 + 22) = 113;
  *(v4 + 66) = -54;
  *(v4 + 47) = 21;
  *(v4 + 114) = 27;
  *(v4 + 33) = 18;
  *(v4 + 81) = 83;
  v6[37] = -120;
  *(v4 + 16) = 95;
  *(v4 + 28) = 20646;
  *(v4 + 50) = 104;
  *(v4 + 12) = 38;
  v6[72] = -11;
  *(v4 + 35) = -29363;
  *(v4 + 8) = -42;
  *(v4 + 3) = 100;
  *(v4 + 110) = -126;
  *(v4 + 95) = -10;
  *(v4 + 117) = 83;
  *v1 = v2;
  STACK[0x3E20] = STACK[0x3F00];
  STACK[0x3D98] = STACK[0x3EE0];
  STACK[0x3D78] = STACK[0x3ED8];
  STACK[0x3D70] = STACK[0x3E50];
  return (*(v3 + 8 * v0))();
}

uint64_t sub_100B22BF4@<X0>(char a1@<W8>)
{
  v8 = *v1 ^ (2 * a1);
  if (v3 == v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  *v1 ^= v9;
  return (*(v7 + 8 * (((v2 == 0) * v6) ^ v4)))();
}

void *sub_100B22C2C@<X0>(int a1@<W8>)
{
  STACK[0xF98] = v2;
  STACK[0xE00] = v1;
  LODWORD(STACK[0x1614]) = 1280;
  v6 = STACK[0x1310];
  v7 = &STACK[0x2280] + STACK[0x1310];
  *(v4 + 752) = v3;
  LODWORD(STACK[0x1B3C]) = -769884012;
  LODWORD(STACK[0x199C]) = -769884012;
  STACK[0x1350] = 0;
  LODWORD(STACK[0x15CC]) = 0;
  STACK[0xCE8] = 0;
  STACK[0x1310] = (a1 + 20763) + v6 - 22545;
  *(v4 + 1112) = 0;
  STACK[0x658] = 0x683CBC57EAB92A3ELL;
  *v7 = v3;
  *(v7 + 2) = 0;
  *(v7 + 2) = 0;
  *(v7 + 6) = 1414217035;
  *(v7 + 28) = 0x800000002;
  *(v7 + 9) = 1;
  *(v7 + 5) = 0;
  *(v7 + 12) = -491200154;
  *(v7 + 7) = 0;
  *(v7 + 16) = 1768711563;
  *(v7 + 68) = 0x400000001;
  *(v7 + 19) = 2;
  STACK[0x870] = *(v5 + 8 * a1);
  LODWORD(STACK[0x161C]) = -769884012;
  return (*(v5 + 8 * (a1 + 6587)))(&STACK[0x658]);
}

uint64_t sub_100B22DE8()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & (-1511283057 * (((220510319 * (STACK[0x4730] & 0xFFFFFFF8)) | 0xBE744BA1) + ((220510319 * (STACK[0x4730] & 0xFFFFFFF8)) & 0xBE744BA0)) - 1794862147)) & 0xFFFFFFFFFFFFFFF8));
  v3 = (__ROR8__(STACK[0x4730] & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) & 0x3E7E41F2E388095ELL) - (v7 + v6) - 0x1F3F20F971C404B0) ^ 0x8F309990EF22E9DDLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((((2 * (v10 + v9)) & 0x457C4053C6A68996) - (v10 + v9) - 0x22BE2029E35344CCLL) ^ 0x7CF34213CBDAA81FLL, 8);
  v12 = (((2 * (v10 + v9)) & 0x457C4053C6A68996) - (v10 + v9) - 0x22BE2029E35344CCLL) ^ 0x7CF34213CBDAA81FLL ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) & 0xA6232292E7528D6CLL) - (v11 + v12) + 0x2CEE6EB68C56B949) ^ 0xC3EA4EF779B3F1A5;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5455012E8AB1C38FLL;
  v19 = v17 ^ __ROR8__(v16, 61);
  v18 = __ROR8__(v17, 8);
  LODWORD(v19) = (((0x9ADE70F38E147183 - ((v18 + v19) | 0x9ADE70F38E147183) + ((v18 + v19) | 0x65218F0C71EB8E7CLL)) ^ 0xA6EEFB07FE9D09CLL) >> (8 * (STACK[0x4730] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LODWORD(v19) = (((v19 ^ 0x41) + 106) ^ ((v19 ^ 0xFFFFFF95) - 66) ^ ((v19 ^ 0xFFFFFFD4) - 3)) - 23;
  LODWORD(v19) = v19 - 44 * ((187 * v19) >> 13);
  if ((v19 & 0xFE) != 0)
  {
    v19 = v19;
  }

  else
  {
    v19 = 1;
  }

  STACK[0x4708] = v19;
  v20 = SLODWORD(STACK[0x46E8]);
  v21 = *(v1 + 8 * v20);
  LODWORD(STACK[0x43F8]) = v20;
  LODWORD(STACK[0x43FC]) = 45 - v19;
  STACK[0x4400] = 1;
  STACK[0x4408] = 0;
  LODWORD(STACK[0x4410]) = STACK[0x46F8];
  LODWORD(STACK[0x4414]) = STACK[0x46F4];
  LODWORD(STACK[0x4418]) = 1197650328;
  LODWORD(STACK[0x441C]) = STACK[0x4724];
  return v21();
}

uint64_t sub_100B231C0()
{
  (*(v2 + 8 * (v1 ^ 0x51AB)))(v0);
  v3 = (*(v2 + 8 * (v1 + 20258)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100B23388@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 0x55A8D952E5D46856) = 32;
  *(v3 - 0x55A8D952E5D46877) = *(a1 - 0x79CEC8CF5A6FCE83);
  *(v3 - 0x55A8D952E5D46878) = *(a1 - 0x79CEC8CF5A6FCE84);
  *(v3 - 0x55A8D952E5D46879) = *(a1 - 0x79CEC8CF5A6FCE85);
  *(v3 - 0x55A8D952E5D4687ALL) = *(a1 - 0x79CEC8CF5A6FCE86);
  *(v3 - 0x55A8D952E5D4687BLL) = *(a1 - 0x79CEC8CF5A6FCE87);
  *(v3 - 0x55A8D952E5D4687CLL) = *(a1 - 0x79CEC8CF5A6FCE88);
  *(v3 - 0x55A8D952E5D4687DLL) = *(a1 - 0x79CEC8CF5A6FCE89);
  *(v3 - 0x55A8D952E5D4687ELL) = *(a1 - 0x79CEC8CF5A6FCE8ALL);
  *(v3 - 0x55A8D952E5D4687FLL) = *(a1 - 0x79CEC8CF5A6FCE8BLL);
  *(v3 - 0x55A8D952E5D46880) = *(a1 - 0x79CEC8CF5A6FCE8CLL);
  *(v3 - 0x55A8D952E5D46881) = *(a1 - 0x79CEC8CF5A6FCE8DLL);
  *(v3 - 0x55A8D952E5D46882) = *(a1 - 0x79CEC8CF5A6FCE8ELL);
  *(v3 - 0x55A8D952E5D46883) = *(a1 - 0x79CEC8CF5A6FCE8FLL);
  *(v3 - 0x55A8D952E5D46884) = *(a1 - 0x79CEC8CF5A6FCE90);
  *(v3 - 0x55A8D952E5D46885) = *(a1 - 0x79CEC8CF5A6FCE91);
  *(v3 - 0x55A8D952E5D46886) = *(a1 - 0x79CEC8CF5A6FCE92);
  *(v3 - 0x55A8D952E5D46887) = *(a1 - 0x79CEC8CF5A6FCE93);
  *(v3 - 0x55A8D952E5D46888) = *(a1 - 0x79CEC8CF5A6FCE94);
  *(v3 - 0x55A8D952E5D46889) = *(a1 - 0x79CEC8CF5A6FCE95);
  *(v3 - 0x55A8D952E5D4688ALL) = *(a1 - 0x79CEC8CF5A6FCE96);
  *(v3 - 0x55A8D952E5D4688BLL) = *(a1 - 0x79CEC8CF5A6FCE97);
  *(v3 - 0x55A8D952E5D4688CLL) = *(a1 - 0x79CEC8CF5A6FCE98);
  *(v3 - 0x55A8D952E5D4688DLL) = *(a1 - 0x79CEC8CF5A6FCE99);
  *(v3 - 0x55A8D952E5D4688ELL) = *(a1 - 0x79CEC8CF5A6FCE9ALL);
  *(v3 - 0x55A8D952E5D4688FLL) = *(a1 - 0x79CEC8CF5A6FCE9BLL);
  *(v3 - 0x55A8D952E5D46890) = *(a1 - 0x79CEC8CF5A6FCE9CLL);
  *(v3 - 0x55A8D952E5D46891) = *(a1 - 0x79CEC8CF5A6FCE9DLL);
  *(v3 - 0x55A8D952E5D46892) = *(a1 - 0x79CEC8CF5A6FCE9ELL);
  *(v3 - 0x55A8D952E5D46893) = *(a1 - 0x79CEC8CF5A6FCE9FLL);
  *(v3 - 0x55A8D952E5D46894) = *(a1 - 0x79CEC8CF5A6FCEA0);
  *(v3 - 0x55A8D952E5D46895) = *(a1 - 0x79CEC8CF5A6FCEA1);
  *(v3 - 0x55A8D952E5D46896) = *v1;
  return (*(v4 + 8 * (v2 + 13227)))();
}

uint64_t sub_100B23948@<X0>(int a1@<W8>)
{
  v4 = STACK[0x3B38];
  v4[2041] = HIBYTE(v2);
  v4[2042] = BYTE2(v2);
  v4[2043] = v2 >> (((a1 + 108) | 0x90) + 56);
  v4[2044] = v2;
  return (*(v3 + 8 * ((21350 * (LODWORD(STACK[0x3E18]) > v1)) ^ a1)))();
}

uint64_t sub_100B23D60@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * ((26779 * (LODWORD(STACK[0x3688]) == ((((a1 - 9868) ^ 0x66AF) + 2688) ^ 0x5D16))) ^ (a1 - 9868)));
  LODWORD(STACK[0x3688]) = 9;
  LODWORD(STACK[0x3CF0]) = 6;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v4 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  v5 = STACK[0x3E18];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x3B00]) = v5;
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  v6 = STACK[0x3318];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = v6;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100B23EF0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x47D8]) = LODWORD(STACK[0x56D0]) | LODWORD(STACK[0x5760]);
  LODWORD(STACK[0x4868]) = v7 | LODWORD(STACK[0x55D0]);
  LODWORD(STACK[0x49B0]) = a1 | LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x49C0]) = v6 | LODWORD(STACK[0x53F8]);
  return (*(STACK[0x57D8] + 8 * ((2 * (a6 ^ 0xB1568741) - 1319727671) ^ a6 ^ (13101 * (a6 == 701389809)))))(7025400);
}

uint64_t sub_100B23FD4@<X0>(unsigned int a1@<W8>)
{
  v6 = 75 * (*(&STACK[0x2E0] + (v5 + 217 * (a1 & 0xF)) % ((v1 + 1115) ^ 0x4AA7u)) ^ (16 * (*(&STACK[0x2E0] + (v5 + 217 * (a1 >> 4)) % 0x3CA) & 0xF)) ^ 0xF0) + 64200;
  LOBYTE(v6) = *(v4 + (v6 - 1184 * ((3627507 * v6) >> 32)));
  v7 = v3 + 217 * (((((((v6 ^ 0x27) - 39) ^ ((v6 ^ 0x6A) - 106) ^ ((v6 ^ 0x14) - 20)) + 122) & 0xF0) >> 4) ^ 9);
  *(&STACK[0x2E0] + (217 * v2 - 1822264912) % 0x3CAu) = (16 * *(&STACK[0x2E0] + (v7 - 970 * ((4427802 * v7) >> 32)))) ^ 0x7C;
  return (*(STACK[0x2D0] + 8 * ((47 * (v2 == 1987646098)) ^ v1)))();
}

uint64_t sub_100B24270()
{
  v5 = 1917435887 * ((v4 + 592835833 - 2 * ((v4 - 144) & 0x2355F589)) ^ 0xC5EEAE8F);
  *(v4 - 144) = v0 - v5 + 624143679;
  *(v4 - 140) = v5 + (((v0 + 804423705) & 0xD00D7FBE) + 1733108507) * v3 - 1019824223;
  *(v4 - 128) = v1;
  v6 = (*(v2 + 8 * (v0 + 19617)))(v4 - 144);
  return (*(v2 + 8 * v0))(v6);
}

uint64_t sub_100B243D4()
{
  LODWORD(STACK[0xEE0]) = v0;
  STACK[0xED8] = v1;
  return (*(v3 + 8 * (v2 + 19 * (v2 ^ 0x36B) - 3528)))();
}

uint64_t sub_100B24428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v37 = v33;
  v34 = -2103540229 * (*(a1 + 16) + v32) - 2019968932;
  v35 = ((v34 ^ 0x33757C7A) + ((v31 + 13520) ^ 0x892E127F)) ^ v34 ^ ((v34 ^ 0xB695F3F6) + 214890605) ^ (11 * (v31 ^ 0x342F) + (v34 ^ 0xFF1B8476) + 1161845314) ^ ((v34 ^ 0x3F5FFF9F) - 2063272954);
  STACK[0x208] = &STACK[0x240];
  return (*(STACK[0x200] + 8 * ((27 * (v35 != 1168438373)) ^ v31)))(2231694342, a2, a3, v35, a5, 3919412083, a7, a8, a9, v37, a1, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_100B245BC@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x12B0];
  v8 = 1534937323 * ((((v6 - 240) | 0x861AED24) - (v6 - 240) + ((v6 - 240) & 0x79E512D8)) ^ 0x40F41663);
  *(v6 - 224) = v1;
  *(v6 - 208) = v7;
  *(v6 - 200) = a1;
  *(v6 - 216) = (v4 + 2125) ^ v8;
  *(v6 - 212) = (v2 ^ 0x6E21E85) + v8;
  *(v6 - 228) = (v3 ^ 0xDF7E7EF7) - v8 + ((2 * v3) & 0xBEFCFDEE) + 870956413 + v4 - 1494;
  *(v6 - 240) = a1;
  v9 = (*(v5 + 8 * (v4 ^ 0x41E5)))(v6 - 240);
  return (*(v5 + 8 * v4))(v9);
}

uint64_t sub_100B246D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  *a10 = LODWORD(STACK[0x2AB8]) << (v10 + 36);
  v12 = *(v11 + 8 * v10);
  LODWORD(STACK[0x3B08]) = 25 * ((v10 - 23) ^ 0x2184);
  return v12();
}

uint64_t sub_100B2482C()
{
  STACK[0x16C8] = v0;
  STACK[0xA38] = v1;
  STACK[0x1670] = v0;
  LODWORD(STACK[0xB0C]) = -769884032;
  STACK[0xB38] = v1;
  LODWORD(STACK[0x1628]) = -2060320166;
  return (*(v2 + 74768))();
}

uint64_t sub_100B248A4@<X0>(int a1@<W8>)
{
  *(v3 + 3800) = v1;
  v5 = *v1;
  *(v3 + 1768) = *v1;
  return (*(v4 + 8 * (((v5 != v2) * (((a1 + 899055486) & 0xCA696FF8) - 3009)) ^ a1)))();
}

uint64_t sub_100B2492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  LODWORD(STACK[0x3B08]) = v23 ^ 0x69F5;
  v25 = *(v24 + 8 * v23);
  LODWORD(STACK[0x3688]) = 1;
  return v25(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100B249F0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2130] = v1;
  v2 = STACK[0x1818];
  STACK[0x2138] = STACK[0x1818];
  return (*(STACK[0x540] + 8 * (a1 ^ 0x819FDFFF ^ ((a1 - 2129034757) | 0x864008) ^ ((((a1 - (v1 - v2)) | (v1 - v2)) >> 63) * ((a1 + 1418) ^ 0x4FF4)))))();
}

uint64_t sub_100B24A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B80]) = 0;
  LODWORD(STACK[0x2A98]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  LODWORD(STACK[0x7F8]) = 0;
  LODWORD(STACK[0x838]) = 0;
  LODWORD(STACK[0x2B18]) = 0;
  LODWORD(STACK[0x2B08]) = 0;
  LODWORD(STACK[0x2AA0]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x840]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0x8E8]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x2AC0]) = 0;
  LODWORD(STACK[0x8F0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x2B10]) = 0;
  LODWORD(STACK[0x2AD0]) = 0;
  LODWORD(STACK[0x880]) = 0;
  LODWORD(STACK[0x888]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  v5 = 18 * (v3 ^ 0x1071u);
  STACK[0x3AF0] = v5;
  v6 = STACK[0x3688];
  v7 = *(v4 + 8 * (((LODWORD(STACK[0x3688]) == (v5 ^ 0x5292)) * ((101 * (v3 ^ 0x1465)) ^ 0xED7)) ^ v3));
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3988]) = 39;
  v8 = STACK[0x4A8];
  STACK[0x3D78] = STACK[0x448];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x32C8]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x918]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  LODWORD(STACK[0x800]) = 1;
  LODWORD(STACK[0x8C0]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x810]) = 1;
  LODWORD(STACK[0x2AF8]) = 1;
  LODWORD(STACK[0x2A90]) = 1;
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x820]) = 1;
  LODWORD(STACK[0x8D0]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x830]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = v6;
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(v5) = STACK[0x1A78];
  LODWORD(STACK[0x2B40]) = STACK[0x1A78];
  LODWORD(STACK[0x2B88]) = STACK[0x3E18];
  v9 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3268]) = v5;
  LODWORD(STACK[0x3438]) = v9;
  LODWORD(STACK[0x3998]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  return v7(a1, 0, a3, v8);
}

uint64_t sub_100B24CCC@<X0>(int a1@<W8>)
{
  *(v3 + 1400) = *(v6 + 8 * a1);
  STACK[0x1F90] = v1;
  STACK[0x1F98] = v2;
  v7 = *(v3 + 3392);
  STACK[0x1310] = v7 + 16;
  STACK[0x618] = 1;
  strcpy(&STACK[0x2280] + v7, "Library/");
  v8 = *(&off_101353600 + v5 - 25239);
  v9 = *v8;
  v4[112] = **v8 ^ 0x14;
  v4[113] = v9[1] ^ 0x14;
  v4[114] = v9[2] ^ 0x14;
  v4[115] = v9[3] ^ (((v5 - 106) & 0xF9) - 37);
  v4[116] = v9[4] ^ 0x14;
  v4[117] = (v5 - 50) & 0xEB ^ v9[5] ^ 0x77;
  v4[118] = v9[6] ^ 0x14;
  v4[119] = v9[7] ^ 0x14;
  v4[120] = v9[8] ^ 0x14;
  v4[121] = v9[9] ^ 0x14;
  v4[122] = v9[10] ^ 0x14;
  v4[123] = v9[11] ^ 0x14;
  v4[124] = v9[12] ^ 0x14;
  v4[125] = v9[13] ^ 0x14;
  v4[126] = v9[14] ^ 0x14;
  v4[127] = v9[15] ^ 0x14;
  v4[128] = v9[16] ^ 0x14;
  v4[129] = v9[17] ^ 0x14;
  v4[130] = v9[18] ^ 0x14;
  v4[131] = v9[19] ^ 0x14;
  v10 = *v8;
  v4[132] = v10[20] ^ 0x14;
  v4[133] = v10[21] ^ 0x14;
  v4[134] = v10[22] ^ 0x14;
  v4[135] = v10[23] ^ 0x14;
  v4[136] = v10[24] ^ 0x14;
  v4[137] = v10[25] ^ 0x14;
  v4[138] = v10[26] ^ 0x14;
  v4[139] = v10[27] ^ 0x14;
  v4[140] = v10[28] ^ 0x14;
  v11 = (*(v6 + 8 * (v5 + 6210)))(0, &STACK[0x2230], &STACK[0x618]);
  STACK[0x1120] = v11;
  if (v11)
  {
    v12 = STACK[0x618] == 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  return (*(v6 + 8 * ((98 * v13) ^ v5)))();
}

uint64_t sub_100B24F5C()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x47B8] & 0xFFFFFFF8) + ((455580812 - (STACK[0x47B8] & 0xFFFFFFF8)) | 0xC1420C7D) + (((STACK[0x47B8] & 0xFFFFFFF8) + 618161010) | 0xC1420C7D) - 779211728)) & 0xFFFFFFFFFFFFFFF8));
  v3 = (__ROR8__(STACK[0x47B8] & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (0xAAA69862535BE83FLL - ((v9 + v8) | 0xAAA69862535BE83FLL) + ((v9 + v8) | 0x5559679DACA417C0)) ^ 0xF4EBFA587BD204EBLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xEF042041F5E548ECLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (0x4175EFFE502B671ALL - ((v17 + v16) | 0x4175EFFE502B671ALL) + ((v17 + v16) | 0xBE8A1001AFD498E5)) ^ 0xEADF112F25655B6ALL;
  v20 = v18 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v18, 8);
  LODWORD(v20) = (((0x9432F938AEAB61CALL - ((v19 + v20) | 0x9432F938AEAB61CALL) + ((v19 + v20) | 0x6BCD06C751549E35)) ^ 0x482667B5F56C0D5) >> (8 * (STACK[0x47B8] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LODWORD(v20) = (((v20 ^ 0x6A) + 95) ^ ((v20 ^ 0xFFFFFFAD) - 102) ^ ((v20 ^ 0xFFFFFFC7) - 12)) - 44;
  LODWORD(v20) = v20 - 44 * ((187 * v20) >> 13);
  if ((v20 & 0xFE) != 0)
  {
    v20 = v20;
  }

  else
  {
    v20 = 1;
  }

  STACK[0x47A0] = v20;
  v21 = SLODWORD(STACK[0x478C]);
  v22 = *(v1 + 8 * v21);
  LODWORD(STACK[0x4738]) = v21;
  LODWORD(STACK[0x473C]) = 45 - v20;
  STACK[0x4740] = 1;
  STACK[0x4748] = 0;
  LODWORD(STACK[0x4750]) = 215186530;
  return v22();
}

uint64_t sub_100B2527C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  STACK[0x37A8] = 0;
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  v8 = *(v6 + 8 * (((((((v4 & 0x5F4C37EF) + 7343) ^ LODWORD(STACK[0x3D50])) & 1) == 0) * ((((v4 & 0x5F4C37EF) + 5923) | 0x100C) - 23818)) ^ v4 & 0x5F4C37EF));
  LODWORD(STACK[0x3D88]) = 2;
  STACK[0x3D40] = STACK[0x468];
  STACK[0x3D78] = STACK[0x10F8];
  STACK[0x3B20] = STACK[0x1A88];
  STACK[0x3B18] = STACK[0x1A80];
  STACK[0x3CD0] = LODWORD(STACK[0x3D60]);
  LODWORD(STACK[0x3CF0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  STACK[0x3840] = 1;
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x3B00]) = STACK[0x1C28];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x3D58]) = 1;
  STACK[0x3D90] = a3;
  LODWORD(STACK[0x31D0]) = STACK[0x3E18];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3CE0]) = v7;
  LODWORD(STACK[0x3810]) = v5;
  LODWORD(STACK[0x3830]) = a3;
  LODWORD(STACK[0x1A70]) = a4;
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3D38]) = STACK[0x1B50];
  LODWORD(STACK[0x3D30]) = STACK[0x3310];
  LODWORD(STACK[0x3D28]) = STACK[0x3308];
  LODWORD(STACK[0x3D20]) = STACK[0x3300];
  LODWORD(STACK[0x3E18]) = a4;
  return v8();
}

uint64_t sub_100B2540C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xB28]) = v1;
  *(v5 + 3152) = v2;
  *(v5 + 520) = a1;
  v8 = a1 == v4 || v2 == 0;
  return (*(v6 + 8 * ((v8 * (((v3 - 2053137486) & 0xFBFFC35C) + 2120236534)) ^ v3)))();
}

uint64_t sub_100B2546C@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0x3E38]) == 0;
  STACK[0x2768] = STACK[0x3378] & 1;
  return (*(v1 + 8 * (((((a1 - 1195013624) & 0x473A7F9F ^ 0xFFFFC88C) + a1 - 10423) * v2) ^ a1)))();
}

uint64_t sub_100B2555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  STACK[0x328] = v4;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v8 = *(a3 + 8 * ((v7 * ((739 * (v3 ^ 0x5053)) ^ (5 * (v3 ^ 0x5451)) ^ 0x3F3E)) ^ v3));
  LODWORD(STACK[0x204]) = -42900;
  return v8(a1, a2);
}

uint64_t sub_100B255B8()
{
  v2 = STACK[0x1208];
  STACK[0xAB0] = STACK[0x1208];
  return (*(v1 + 8 * ((v2 == 0) | v0)))();
}

uint64_t sub_100B2562C@<X0>(int a1@<W1>, int a2@<W3>, unint64_t a3@<X6>, int a4@<W8>)
{
  HIDWORD(v13) = STACK[0x3D48];
  LODWORD(v13) = STACK[0x3D48];
  v14 = (v13 >> 6) ^ __ROR4__(STACK[0x3D48], 11) ^ __ROR4__(STACK[0x3D48], 25);
  v15 = STACK[0x3D78];
  LODWORD(STACK[0x3CF0]) = STACK[0x3D78];
  v16 = (v15 << 21) ^ __ROR4__(v15, 6) ^ (v15 >> 11);
  v17 = STACK[0x3E18];
  v18 = STACK[0x3D40];
  LODWORD(STACK[0x3D20]) = HIDWORD(v13);
  LODWORD(STACK[0x3D40]) = a4;
  v19 = v17 ^ v15 & v12 ^ v17 & v15 ^ HIDWORD(v13) & v18 ^ HIDWORD(v13) & a4;
  LODWORD(STACK[0x3E18]) = v12;
  LODWORD(v13) = __ROR4__(v15, 25);
  v20 = a1 ^ LODWORD(STACK[0x3D50]);
  v21 = v18 ^ v15 & a4 ^ v18 & v15 ^ HIDWORD(v13) & v17 ^ HIDWORD(v13) & v12;
  v22 = a1 ^ 0x8C32B5E6;
  v23 = (v10 + 386038740) ^ v22;
  v24 = ((v20 ^ v14 ^ v16 ^ v13) - (v20 ^ v14)) ^ ((v8 ^ v16 ^ v13) - v8) ^ ((v9 ^ v16 ^ v13) - v9);
  v25 = (v6 ^ 0x1C5097A3) - v20;
  v26 = (v22 + 1499673895) ^ v20 ^ v23;
  v27 = (v26 ^ v19 ^ v21) - (v26 ^ v19);
  v28 = v8 ^ 0x8C32B5E6;
  v29 = v8 ^ 0x8C32B5E6 ^ (v4 + 386038740);
  v30 = (LODWORD(STACK[0x3B60]) ^ v5 ^ 0x1C5086AA) - (v9 ^ v8);
  v31 = v9 ^ v8 ^ v29;
  v32 = (v8 ^ 0x8C32B5E6) + 1499673895;
  v33 = v31 ^ v32;
  v34 = ((v21 ^ v32) - v32) ^ ((v31 ^ v21) - v31);
  v35 = STACK[0x3D80];
  LODWORD(STACK[0x3D78]) = STACK[0x3D70];
  LODWORD(STACK[0x3D50]) = STACK[0x3D68];
  v36 = STACK[0x3D38];
  v37 = STACK[0x3D60];
  v38 = STACK[0x3D58];
  v39 = v27 ^ v34;
  STACK[0x3D28] = a3;
  v40 = v23 ^ (v22 - 1219845489);
  v41 = v6 + LODWORD(STACK[0x3D88]);
  v42 = v40 ^ v25 ^ v26;
  LODWORD(STACK[0x3D58]) = v42;
  v43 = v26 - v42;
  LODWORD(STACK[0x3D88]) = v40 - 933281195;
  v44 = v29 ^ (v28 - 1219845489);
  v45 = v30 ^ v44 ^ v33;
  v46 = v41 + v25 + v19;
  v47 = *(STACK[0x3E40] + 6436);
  v48 = STACK[0x3E40];
  STACK[0x3E40] = STACK[0x3E40];
  v49 = v46 + v47 + v14;
  v50 = *(STACK[0x3DC0] + 4 * ((a3 + 63) ^ 0x27) + 147572);
  v51 = v44 - 933281195;
  v52 = v49 + (v50 ^ (4 * v50) ^ 0x9789B85A);
  LODWORD(STACK[0x3D60]) = LODWORD(STACK[0x3D90]) + LODWORD(STACK[0x3D30]) - v30 + *v48 + v24 + ((((a3 + 63) ^ 0xFFFFFFC1) + ((a3 + 63) ^ 0x74ECF492) + *(STACK[0x3DC0] + 4 * ((a3 + 63) ^ 0x1FLL) + 186484) + 2) ^ 0xEAF8CA62) + v39;
  HIDWORD(v13) = v38;
  LODWORD(v13) = v38;
  v53 = (v13 >> 13) ^ __ROR4__(v38, 2);
  v55 = __PAIR64__(v37, __ROR4__(v38, 22));
  v54 = v53 ^ v55;
  LODWORD(v55) = v37;
  v56 = (v55 >> 13) ^ __ROR4__(v37, 2);
  LODWORD(v55) = __ROR4__(v37, 22);
  LODWORD(STACK[0x3CD0]) = v37;
  LODWORD(STACK[0x3BF0]) = v35;
  v57 = v11 & a2 ^ v11 & v37 ^ (v36 ^ a2) & v38 ^ v35 & (v36 ^ v37);
  LODWORD(STACK[0x3D80]) = v38;
  LODWORD(STACK[0x3D70]) = v36;
  LODWORD(STACK[0x3D38]) = a2;
  LODWORD(STACK[0x3D68]) = v11;
  v58 = v11 & v38 ^ v37 & a2 ^ v36 & v37 ^ v36 & a2 ^ v35 & v11 ^ v35 & v38;
  v59 = v43 ^ (v23 - LODWORD(STACK[0x3D58]));
  v60 = v23 - LODWORD(STACK[0x3D58]) - v59;
  v61 = ((v23 ^ v54 ^ v43 ^ v56 ^ v55) - (v23 ^ v54 ^ v43)) ^ ((v56 ^ v55 ^ v29) - v29) ^ (((v33 - v45) ^ v56 ^ v55) - (v33 - v45));
  v62 = (v29 - v45) ^ (v33 - v45);
  v63 = LODWORD(STACK[0x3D88]) ^ 0x9E3496A;
  v64 = v59 + v63;
  v65 = LODWORD(STACK[0x3D58]) - (v59 + v63);
  v66 = STACK[0x3D58];
  v67 = v29 - v45 - v62;
  v51 ^= 0x9E3496Au;
  v68 = v62 + v51;
  v69 = v63 - v60 - 1870452042;
  v70 = ((v68 ^ v57) - v68) ^ ((v67 ^ v57) - v67) ^ ((v60 ^ v64 ^ v58 ^ v57) - (v60 ^ v64 ^ v58));
  v71 = v69 + v64 - v65;
  v72 = v51 - v67;
  v73 = v45 - v68;
  LODWORD(v48) = v72 - 1870452042 + v68 - (v45 - v68);
  v74 = ((v60 ^ v18 ^ v71 ^ v17) - (v60 ^ v18 ^ v71)) ^ ((v67 ^ v17) - v67) ^ ((v48 ^ v17) - v48);
  v75 = v68 - v67;
  v76 = (v72 - 1870452042) ^ v67;
  v77 = v64 - v60;
  v78 = v69 ^ v60;
  v71 ^= 0x133EBC99u;
  v79 = v69 - v71;
  LODWORD(STACK[0x3D90]) = v77 + v18;
  v71 -= 659097392;
  v80 = v77 + v78;
  v81 = v78 - 1902606602;
  v82 = STACK[0x3D50];
  v83 = STACK[0x3D78];
  LODWORD(STACK[0x3D88]) = v74 - v75;
  v84 = v76 + v75;
  v76 -= 1902606602;
  v85 = (v48 ^ 0x133EBC99) - 659097392;
  v86 = ((v76 ^ v83) - v76) ^ (((v78 - 1902606602) ^ v82 ^ v71 ^ v83) - ((v78 - 1902606602) ^ v82 ^ v71)) ^ ((v85 ^ v83) - v85);
  v87 = v72 - (v48 ^ 0x133EBC99) + 1144610506;
  v88 = v84 - v87;
  v89 = STACK[0x3D60];
  v90 = v88 - LODWORD(STACK[0x3D60]) - v86;
  v91 = v80 - v79 + 1279904748;
  v92 = v91 + v71;
  v93 = v92 ^ (v79 - 1279904748);
  v94 = v52 + v82 + v91;
  v95 = v93 ^ v91;
  v96 = v88 + v85;
  v97 = v96 ^ v87;
  v98 = v76 - v97;
  v99 = v97 ^ v88;
  v97 -= 621560369;
  v100 = (v99 + 1884761290) ^ v97 ^ v90;
  v101 = ((v95 + 1884761290) ^ v94 ^ v90) - (v99 + 1884761290);
  v102 = v81 - v93;
  v93 -= 621560369;
  v103 = v93 ^ v94;
  v104 = v99 + v98;
  LODWORD(STACK[0x3D78]) = v101 ^ v104 ^ ((v90 ^ v103) - v97);
  v105 = v95 + v92;
  v106 = v99 + v96;
  v107 = v95 + v102;
  v99 += 1312131567;
  v108 = v106 ^ v97;
  v109 = v105 ^ v93;
  LODWORD(STACK[0x3D48]) = ((v103 ^ (v95 + 1884761290)) - v100) ^ v107;
  v110 = v106 ^ v99;
  v111 = v45 - v52 - v65 - v58 - v61;
  v112 = v99 - v108;
  v113 = v66 + v54 - v73 + v70 + v89;
  v114 = v111 ^ v113 ^ (v109 + 289463856);
  v115 = (v95 + 1312131567 - v109) ^ v113;
  LODWORD(STACK[0x3D60]) = ((v115 ^ v111) - v112) ^ (v104 - v106 - 383920455) ^ (v114 - (v108 + 289463856));
  LODWORD(STACK[0x3D58]) = ((v115 ^ (v109 + 289463856)) - ((v108 + 289463856) ^ v111 ^ v112)) ^ (v107 - v105 - 383920455);
  LODWORD(STACK[0x3D50]) = ((v95 + 1312131567) ^ v105) - v109 - 2044553501;
  v116 = *(v7 + 8 * ((18394 * (STACK[0x3D28] == 0)) ^ STACK[0x3D98]));
  STACK[0x3E40] += 4;
  LODWORD(STACK[0x3D30]) = 1388471399 - (v112 + v110);
  return v116();
}

uint64_t sub_100B262E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = *(v10 + 8 * v8);
  LODWORD(STACK[0x410]) = v9 - 1145;
  STACK[0x4D0] = 1534937323 * ((((v11 - 240) | 0xD89EFB6A2A5D368BLL) - (v11 - 240) + ((v11 - 240) & 0x27610495D5A2C970)) ^ 0x15E673A8ECB3CDCCLL);
  STACK[0x470] = (v11 - 240) | 0xF927FE821C306BB6;
  LODWORD(STACK[0x480]) = a8 + 629241256;
  LODWORD(STACK[0x460]) = (a8 + 629241256) ^ 0xD60;
  LODWORD(STACK[0x430]) = a8 ^ (a8 - 183);
  LODWORD(STACK[0x420]) = a8 - 1657171687;
  STACK[0x400] = (a8 + 1046261231) & 0x4003BFD5;
  *&STACK[0x3E0] = xmmword_1012370B0;
  STACK[0x3F0] = 1917435887 * ((2 * ((v11 - 240) & 0x72A3B7EADFDBC390) - (v11 - 240) - 0x72A3B7EADFDBC392) ^ 0x585724EBC69F6768);
  LODWORD(STACK[0x3D0]) = 981778239;
  return v12();
}

uint64_t sub_100B26488()
{
  *(v4 - 240) = v1 + 410706167 * ((((v4 - 240) | 0x1F2E3D89) + (~(v4 - 240) | 0xE0D1C276)) ^ 0x84F111DE) + 391041193;
  (*(v2 + 8 * (v1 + 391064700)))(v4 - 240);
  *(*(v3 + 8) + v0) = 0xD38CBDD3ACAFF84ALL;
  return (*(v2 + 8 * ((((v1 + 588613670) & 0xF4397BFE ^ 0x174E8913) + v1) ^ (24760 * (v1 != -155332232)))))(*(v3 + 8));
}

uint64_t sub_100B26730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v11 + 656) = v9 + (v8 - 2101965948);
  LOWORD(STACK[0x15DE]) = (v10 - v8) ^ (((v10 - v8) | (v8 - v10)) >> 31) ^ (a8 + 15861);
  LODWORD(STACK[0x1214]) = -2091128454;
  return (*(v12 + 8 * (((a8 - 123847222) & 0x85C23B7B ^ 0x1779) + a8 + 2120236533)))();
}

uint64_t sub_100B267BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 | 0x1040;
  *(a1 + 64) += 2120236533 + ((v3 + 26324288) | 0x800E0008);
  return (*(v2 + 8 * v3))();
}

uint64_t sub_100B26834()
{
  v2 = STACK[0x578];
  v3 = STACK[0xEAC];
  STACK[0x1728] = 0;
  LODWORD(STACK[0x12FC]) = -769884012;
  LODWORD(STACK[0x784]) = -143113071;
  STACK[0x7C8] = v2 + 4;
  v4 = (((v3 + 1345972458) & 0xAFC61712) << (9 * (v0 ^ 0x69) - 90)) & ((v3 + 1345972458) ^ 0x2FB54601) ^ (v3 + 1345972458) & 0xAFC61712;
  v5 = ((2 * ((v3 + 1345972458) ^ 0x74B16025)) ^ 0xB6EEEE6E) & ((v3 + 1345972458) ^ 0x74B16025) ^ (2 * ((v3 + 1345972458) ^ 0x74B16025)) & 0xDB777736;
  v6 = v5 ^ 0x49111111;
  v7 = (v5 ^ 0x92216500) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x6DDDDCDC) & v6 ^ (4 * v6) & 0xDB777734;
  v9 = (v8 ^ 0x49555400) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x92222323)) ^ 0xB7777370) & (v8 ^ 0x92222323) ^ (16 * (v8 ^ 0x92222323)) & 0xDB777730;
  v11 = v9 ^ 0xDB777737 ^ (v10 ^ 0x93777300) & (v9 << 8);
  LODWORD(STACK[0xFB0]) = (v3 + 1345972458) ^ (2 * ((v11 << 16) & 0x5B770000 ^ v11 ^ ((v11 << 16) ^ 0x77370000) & (((v10 ^ 0x48000407) << 8) & 0x5B770000 ^ (((v10 ^ 0x48000407) << 8) ^ 0x77770000) & (v10 ^ 0x48000407) ^ 0x8000000))) ^ 0x6D5A79E8;
  return (*(v1 + 8 * (v0 ^ 0x1B22)))(2120236533, 2120264440);
}

uint64_t sub_100B26AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v46 = LOBYTE(STACK[0x3F17]);
  v47 = *(*STACK[0x3E40] + (a43 & *v43));
  v48 = (v47 + STACK[0x1690]) ^ 0xC2AF3EAA3FF1B8E4;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = *(v44 + 8 * SLODWORD(STACK[0x4648]));
  v51 = __ROR8__(v48, 8);
  STACK[0x26D8] = LOBYTE(STACK[0x464F]);
  STACK[0x3950] = LOBYTE(STACK[0x465E]);
  STACK[0x3D30] = LOBYTE(STACK[0x466D]);
  v52 = (((2 * (v51 + v49)) & 0xF06974E9CE0D447ELL) - (v51 + v49) - 0x7834BA74E706A240) ^ 0xE23911560074E93CLL;
  STACK[0x2F18] = LOBYTE(STACK[0x466E]);
  v53 = v52 ^ __ROR8__(v49, 61);
  STACK[0x3BE0] = LOBYTE(STACK[0x466F]);
  STACK[0x2ED8] = LOBYTE(STACK[0x467E]);
  v54 = __ROR8__(v52, 8);
  STACK[0x2E78] = LOBYTE(STACK[0x468F]);
  STACK[0x22A0] = LOBYTE(STACK[0x46A6]);
  STACK[0x2270] = LOBYTE(STACK[0x46A7]);
  v55 = (((2 * (v54 + v53)) & 0xE8BBB54F06CD2A88) - (v54 + v53) + 0xBA225587C996ABBLL) ^ 0x645263CE1D807836;
  STACK[0x3878] = LOBYTE(STACK[0x46B5]);
  v56 = v55 ^ __ROR8__(v53, 61);
  STACK[0x2278] = LOBYTE(STACK[0x46B6]);
  LODWORD(STACK[0x21CC]) = LOBYTE(STACK[0x46C7]);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xA1B29DC5D776132BLL;
  STACK[0x2D78] = LOBYTE(STACK[0x46D4]);
  STACK[0x2800] = LOBYTE(STACK[0x46D5]);
  v58 = v57 ^ __ROR8__(v56, 61);
  STACK[0x35A0] = LOBYTE(STACK[0x46D6]);
  STACK[0x1AF0] = LOBYTE(STACK[0x46D7]);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xEF042041F5E548ECLL;
  STACK[0x2848] = LOBYTE(STACK[0x46E2]);
  STACK[0x2288] = LOBYTE(STACK[0x46E3]);
  v60 = v59 ^ __ROR8__(v58, 61);
  STACK[0x3C78] = LOBYTE(STACK[0x6BE0]);
  STACK[0x30E0] = LOBYTE(STACK[0x6BE1]);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xD8C7B31FCA19D9DELL;
  STACK[0x2380] = LOBYTE(STACK[0x6BE2]);
  STACK[0x2880] = LOBYTE(STACK[0x6BE3]);
  v62 = v61 ^ __ROR8__(v60, 61);
  STACK[0x3140] = LOBYTE(STACK[0x6BE5]);
  STACK[0x2DD8] = LOBYTE(STACK[0x6BE6]);
  v63 = __ROR8__(v61, 8);
  STACK[0x2790] = LOBYTE(STACK[0x6BE7]);
  STACK[0x2648] = LOBYTE(STACK[0x6BE8]);
  v64 = (((2 * (v63 + v62)) & 0x25FFC4643C4719EALL) - (v63 + v62) - 0x12FFE2321E238CF6) ^ 0xB9551CE36B6DB085;
  STACK[0x2F78] = LOBYTE(STACK[0x6BE9]);
  STACK[0x3150] = LOBYTE(STACK[0x6BEA]);
  LODWORD(STACK[0x11EC]) = (((__ROR8__(v64, 8) + (v64 ^ __ROR8__(v62, 61))) ^ 0x6F4F60BC0E025EE0) >> STACK[0x1678]) ^ v46;
  STACK[0x2640] = LOBYTE(STACK[0x6BEB]);
  STACK[0x31E0] = LODWORD(STACK[0x6BEC]);
  STACK[0x3CF0] = LODWORD(STACK[0x6BF0]);
  LODWORD(STACK[0x3370]) = STACK[0x6BF4];
  LODWORD(STACK[0x3378]) = STACK[0x6BF8];
  LODWORD(STACK[0x34E0]) = STACK[0x6BFC];
  LODWORD(STACK[0x20C4]) = STACK[0x6C00];
  LODWORD(STACK[0x2098]) = STACK[0x6C04];
  STACK[0x3D28] = LODWORD(STACK[0x6C08]);
  LODWORD(STACK[0x2090]) = STACK[0x6C0C];
  STACK[0x3D68] = LODWORD(STACK[0x6C10]);
  STACK[0x37F0] = LODWORD(STACK[0x6C14]);
  LODWORD(STACK[0x2088]) = STACK[0x6C18];
  STACK[0x3D78] = LODWORD(STACK[0x6C1C]);
  LODWORD(STACK[0x3D10]) = STACK[0x6C2C];
  LODWORD(STACK[0x1780]) = LOBYTE(STACK[0x6D3E]);
  STACK[0x2E90] = LOBYTE(STACK[0x6D3F]);
  STACK[0x36E0] = LOBYTE(STACK[0x6D40]);
  LODWORD(STACK[0x1F6C]) = LOBYTE(STACK[0x6D41]);
  STACK[0x2D68] = LOBYTE(STACK[0x6D42]);
  STACK[0x2268] = LOBYTE(STACK[0x6D43]);
  STACK[0x2358] = LOBYTE(STACK[0x6D44]);
  STACK[0x3088] = LOBYTE(STACK[0x6D45]);
  LODWORD(STACK[0x1EAC]) = LOBYTE(STACK[0x6D46]);
  STACK[0x2D60] = LOBYTE(STACK[0x6D47]);
  STACK[0x33B8] = LOBYTE(STACK[0x6D49]);
  LODWORD(STACK[0x1E80]) = LOBYTE(STACK[0x6D4A]);
  LODWORD(STACK[0x39E8]) = LOBYTE(STACK[0x6D4B]);
  LODWORD(STACK[0x1774]) = LOBYTE(STACK[0x6D4C]);
  STACK[0x2CA0] = LOBYTE(STACK[0x6D4D]);
  STACK[0x3590] = LOBYTE(STACK[0x6D4E]);
  STACK[0x2D58] = LOBYTE(STACK[0x6D4F]);
  LODWORD(STACK[0x17A4]) = LOBYTE(STACK[0x6D50]);
  STACK[0x36C0] = LOBYTE(STACK[0x6D51]);
  STACK[0x2290] = LOBYTE(STACK[0x6D52]);
  STACK[0x3BB0] = LOBYTE(STACK[0x6D53]);
  STACK[0x1800] = LOBYTE(STACK[0x6D54]);
  STACK[0x2128] = LOBYTE(STACK[0x6D55]);
  STACK[0x3C60] = LOBYTE(STACK[0x6D56]);
  STACK[0x2FC8] = LOBYTE(STACK[0x6D57]);
  STACK[0x2D20] = LOBYTE(STACK[0x6D58]);
  STACK[0x30C0] = LOBYTE(STACK[0x6D59]);
  STACK[0x2788] = LOBYTE(STACK[0x6D5A]);
  LODWORD(STACK[0x1EA4]) = LOBYTE(STACK[0x6D5B]);
  STACK[0x26C0] = LOBYTE(STACK[0x6D5C]);
  STACK[0x26A0] = LOBYTE(STACK[0x6D5D]);
  LODWORD(STACK[0x1764]) = LOBYTE(STACK[0x6D5E]);
  STACK[0x2340] = LOBYTE(STACK[0x6D5F]);
  STACK[0x2DB0] = LOBYTE(STACK[0x6D60]);
  STACK[0x2C90] = LOBYTE(STACK[0x6D61]);
  STACK[0x2F40] = LOBYTE(STACK[0x6D62]);
  LODWORD(STACK[0x1738]) = LOBYTE(STACK[0x6D63]);
  STACK[0x2F50] = LOBYTE(STACK[0x6D64]);
  STACK[0x2CF0] = LOBYTE(STACK[0x6D65]);
  STACK[0x2E40] = LOBYTE(STACK[0x6D66]);
  LODWORD(STACK[0x17FC]) = LOBYTE(STACK[0x6D67]);
  STACK[0x1C80] = LOBYTE(STACK[0x6D68]);
  STACK[0x3B88] = LOBYTE(STACK[0x6D69]);
  STACK[0x3098] = LOBYTE(STACK[0x6D6A]);
  LODWORD(STACK[0x1F5C]) = LOBYTE(STACK[0x6D6B]);
  LODWORD(STACK[0x1768]) = LOBYTE(STACK[0x6D6C]);
  LODWORD(STACK[0x1838]) = LOBYTE(STACK[0x6D6D]);
  STACK[0x2678] = LOBYTE(STACK[0x6D6E]);
  STACK[0x2770] = LOBYTE(STACK[0x6D6F]);
  STACK[0x2378] = LOBYTE(STACK[0x6D70]);
  STACK[0x2CB8] = LOBYTE(STACK[0x6D71]);
  STACK[0x2680] = LOBYTE(STACK[0x6D72]);
  STACK[0x2390] = LOBYTE(STACK[0x6D73]);
  STACK[0x1C58] = LOBYTE(STACK[0x6D74]);
  STACK[0x3788] = LOBYTE(STACK[0x6D75]);
  STACK[0x27F0] = LOBYTE(STACK[0x6D76]);
  STACK[0x3450] = LOBYTE(STACK[0x6D77]);
  STACK[0x1820] = LOBYTE(STACK[0x6D78]);
  LODWORD(STACK[0x1FC4]) = LOBYTE(STACK[0x6D79]);
  LODWORD(STACK[0x1F58]) = LOBYTE(STACK[0x6D7A]);
  STACK[0x25D8] = LOBYTE(STACK[0x6D7B]);
  LODWORD(STACK[0x1FD4]) = LOBYTE(STACK[0x6D7C]);
  STACK[0x28C0] = LOBYTE(STACK[0x6D7D]);
  STACK[0x3758] = LOBYTE(STACK[0x6D7E]);
  STACK[0x2D10] = LOBYTE(STACK[0x6D7F]);
  STACK[0x22E0] = LOBYTE(STACK[0x6D80]);
  STACK[0x2410] = LOBYTE(STACK[0x6D81]);
  STACK[0x2F80] = LOBYTE(STACK[0x6D82]);
  LODWORD(STACK[0x1770]) = LOBYTE(STACK[0x6D83]);
  LODWORD(STACK[0x1784]) = LOBYTE(STACK[0x6D84]);
  STACK[0x3000] = LOBYTE(STACK[0x6D85]);
  STACK[0x2C98] = LOBYTE(STACK[0x6D86]);
  STACK[0x3478] = LOBYTE(STACK[0x6D87]);
  STACK[0x1E90] = LOBYTE(STACK[0x6D88]);
  STACK[0x22F8] = LOBYTE(STACK[0x6D89]);
  STACK[0x2FF8] = LOBYTE(STACK[0x6D8A]);
  STACK[0x1F60] = LOBYTE(STACK[0x6D8B]);
  LODWORD(STACK[0x176C]) = LOBYTE(STACK[0x6D8C]);
  LODWORD(STACK[0x1E98]) = LOBYTE(STACK[0x6D8D]);
  LODWORD(STACK[0x21D4]) = LOBYTE(STACK[0x6D8E]);
  STACK[0x2408] = LOBYTE(STACK[0x6D8F]);
  STACK[0x30A8] = LOBYTE(STACK[0x6D90]);
  STACK[0x2718] = LOBYTE(STACK[0x6D91]);
  STACK[0x1FC8] = LOBYTE(STACK[0x6D92]);
  LODWORD(STACK[0x1EA8]) = LOBYTE(STACK[0x6D93]);
  STACK[0x3BF8] = LOBYTE(STACK[0x6D94]);
  LODWORD(STACK[0x1E9C]) = LOBYTE(STACK[0x6D95]);
  STACK[0x2E88] = LOBYTE(STACK[0x6D96]);
  STACK[0x3BE8] = LOBYTE(STACK[0x6D97]);
  STACK[0x26A8] = LOBYTE(STACK[0x6D98]);
  STACK[0x1C38] = LOBYTE(STACK[0x6D99]);
  STACK[0x36F0] = LOBYTE(STACK[0x6D9A]);
  STACK[0x2868] = LOBYTE(STACK[0x6D9B]);
  STACK[0x2D18] = LOBYTE(STACK[0x6D9C]);
  STACK[0x2950] = LOBYTE(STACK[0x6D9D]);
  STACK[0x2780] = LOBYTE(STACK[0x6D9E]);
  LODWORD(STACK[0x1754]) = LOBYTE(STACK[0x6D9F]);
  STACK[0x2DA8] = LOBYTE(STACK[0x6DA0]);
  STACK[0x2FA8] = LOBYTE(STACK[0x6DA1]);
  LODWORD(STACK[0x1FC0]) = LOBYTE(STACK[0x6DA2]);
  STACK[0x2520] = LOBYTE(STACK[0x6DA3]);
  LODWORD(STACK[0x1760]) = LOBYTE(STACK[0x6DA4]);
  STACK[0x28E0] = LOBYTE(STACK[0x6DA5]);
  STACK[0x2A28] = LOBYTE(STACK[0x6DA6]);
  STACK[0x2D90] = LOBYTE(STACK[0x6DA7]);
  LODWORD(STACK[0x175C]) = LOBYTE(STACK[0x6DA8]);
  STACK[0x2768] = LOBYTE(STACK[0x6DA9]);
  STACK[0x2ED0] = LOBYTE(STACK[0x6DAA]);
  STACK[0x1E88] = LOBYTE(STACK[0x6DAB]);
  STACK[0x3730] = LOBYTE(STACK[0x6DAC]);
  STACK[0x3BD8] = LOBYTE(STACK[0x6DAD]);
  LODWORD(STACK[0x1EA0]) = LOBYTE(STACK[0x6DAE]);
  STACK[0x2F90] = LOBYTE(STACK[0x6DAF]);
  STACK[0x25C8] = LOBYTE(STACK[0x6DB0]);
  STACK[0x25C0] = LOBYTE(STACK[0x6DB1]);
  STACK[0x3050] = LOBYTE(STACK[0x6DB2]);
  STACK[0x25A8] = LOBYTE(STACK[0x6DB3]);
  LODWORD(STACK[0x1FB8]) = LOBYTE(STACK[0x6DB4]);
  STACK[0x3058] = LOBYTE(STACK[0x6DB5]);
  LODWORD(STACK[0x1F54]) = LOBYTE(STACK[0x6DB6]);
  STACK[0x2E70] = LOBYTE(STACK[0x6DB7]);
  STACK[0x3070] = LOBYTE(STACK[0x6DB8]);
  LODWORD(STACK[0x1758]) = LOBYTE(STACK[0x6DB9]);
  STACK[0x2C88] = LOBYTE(STACK[0x6DBA]);
  LODWORD(STACK[0x179C]) = LOBYTE(STACK[0x6DBB]);
  STACK[0x2D00] = LOBYTE(STACK[0x6DBC]);
  LODWORD(STACK[0x174C]) = LOBYTE(STACK[0x6DBD]);
  STACK[0x3B48] = LOBYTE(STACK[0x6DBE]);
  STACK[0x2D98] = LOBYTE(STACK[0x6DBF]);
  STACK[0x3008] = LOBYTE(STACK[0x6DC0]);
  LODWORD(STACK[0x177C]) = LOBYTE(STACK[0x6DC1]);
  STACK[0x26B8] = LOBYTE(STACK[0x6DC2]);
  STACK[0x22C0] = LOBYTE(STACK[0x6DC3]);
  STACK[0x2CA8] = LOBYTE(STACK[0x6DC4]);
  STACK[0x2910] = LOBYTE(STACK[0x6DC5]);
  LODWORD(STACK[0x1750]) = LOBYTE(STACK[0x6DC6]);
  STACK[0x34A0] = LOBYTE(STACK[0x6DC7]);
  STACK[0x2C70] = LOBYTE(STACK[0x6DC8]);
  STACK[0x17F0] = LOBYTE(STACK[0x6DC9]);
  STACK[0x2860] = LOBYTE(STACK[0x6DCA]);
  STACK[0x2D08] = LOBYTE(STACK[0x6DCB]);
  LODWORD(STACK[0x1FB4]) = LOBYTE(STACK[0x6DCC]);
  STACK[0x30E8] = LOBYTE(STACK[0x6DCD]);
  STACK[0x2FA0] = LOBYTE(STACK[0x6DCE]);
  LODWORD(STACK[0x1F4C]) = LOBYTE(STACK[0x6DCF]);
  LODWORD(STACK[0x1FBC]) = LOBYTE(STACK[0x6DD0]);
  STACK[0x28A0] = LOBYTE(STACK[0x6DD1]);
  STACK[0x2368] = LOBYTE(STACK[0x6DD2]);
  STACK[0x2280] = LOBYTE(STACK[0x6DD3]);
  STACK[0x2F48] = LOBYTE(STACK[0x6DD4]);
  STACK[0x2EF0] = LOBYTE(STACK[0x6DD5]);
  LODWORD(STACK[0x1FB0]) = LOBYTE(STACK[0x6DD6]);
  LODWORD(STACK[0x17F8]) = LOBYTE(STACK[0x6DD7]);
  STACK[0x3C00] = LOBYTE(STACK[0x6DD8]);
  STACK[0x34B8] = LOBYTE(STACK[0x6DD9]);
  STACK[0x2D80] = LOBYTE(STACK[0x6DDA]);
  STACK[0x3C70] = LOBYTE(STACK[0x6DDB]);
  STACK[0x3020] = LOBYTE(STACK[0x6DDC]);
  STACK[0x2750] = LOBYTE(STACK[0x6DDD]);
  STACK[0x21D8] = LOBYTE(STACK[0x6DDE]);
  STACK[0x3468] = LOBYTE(STACK[0x6DDF]);
  STACK[0x3028] = LOBYTE(STACK[0x6DE0]);
  LODWORD(STACK[0x1E84]) = LOBYTE(STACK[0x6DE1]);
  STACK[0x17E8] = LOBYTE(STACK[0x6DE2]);
  STACK[0x2610] = LOBYTE(STACK[0x6DE3]);
  STACK[0x2D70] = LOBYTE(STACK[0x6DE4]);
  STACK[0x3CB8] = LOBYTE(STACK[0x6DE5]);
  STACK[0x3D60] = LOBYTE(STACK[0x6DE6]);
  LODWORD(STACK[0x1748]) = LOBYTE(STACK[0x6DE7]);
  STACK[0x33F0] = LOBYTE(STACK[0x6DE8]);
  STACK[0x2A00] = LOBYTE(STACK[0x6DE9]);
  STACK[0x3030] = LOBYTE(STACK[0x6DEA]);
  STACK[0x2E50] = LOBYTE(STACK[0x6DEB]);
  STACK[0x1FA8] = LOBYTE(STACK[0x6DEC]);
  STACK[0x2900] = LOBYTE(STACK[0x6DED]);
  STACK[0x3CB0] = LOBYTE(STACK[0x6DEE]);
  STACK[0x30F8] = LOBYTE(STACK[0x6DEF]);
  LODWORD(STACK[0x1F50]) = LOBYTE(STACK[0x6DF0]);
  LODWORD(STACK[0x1E7C]) = LOBYTE(STACK[0x6DF1]);
  STACK[0x3038] = LOBYTE(STACK[0x6DF2]);
  STACK[0x17E0] = LOBYTE(STACK[0x6DF3]);
  STACK[0x3108] = LOBYTE(STACK[0x6DF4]);
  STACK[0x2710] = LOBYTE(STACK[0x6DF5]);
  STACK[0x31B8] = LOBYTE(STACK[0x6DF6]);
  STACK[0x28F0] = LOBYTE(STACK[0x6DF7]);
  STACK[0x1C48] = LOBYTE(STACK[0x6DF8]);
  STACK[0x2DF0] = LOBYTE(STACK[0x6DF9]);
  STACK[0x2EE0] = LOBYTE(STACK[0x6DFA]);
  LODWORD(STACK[0x1E78]) = LOBYTE(STACK[0x6DFB]);
  LODWORD(STACK[0x173C]) = LOBYTE(STACK[0x6DFC]);
  STACK[0x24E0] = LOBYTE(STACK[0x6DFD]);
  STACK[0x25B8] = LOBYTE(STACK[0x6DFE]);
  STACK[0x23A0] = LOBYTE(STACK[0x6DFF]);
  STACK[0x2348] = LOBYTE(STACK[0x6E00]);
  LODWORD(STACK[0x1C78]) = LOBYTE(STACK[0x6E01]);
  STACK[0x27A8] = LOBYTE(STACK[0x6E02]);
  STACK[0x2EE8] = LOBYTE(STACK[0x6E03]);
  STACK[0x27D8] = LOBYTE(STACK[0x6E04]);
  STACK[0x3C18] = LOBYTE(STACK[0x6E05]);
  STACK[0x3B98] = LOBYTE(STACK[0x6E06]);
  STACK[0x2A20] = LOBYTE(STACK[0x6E07]);
  LODWORD(STACK[0x1740]) = LOBYTE(STACK[0x6E08]);
  LODWORD(STACK[0x23F8]) = LOBYTE(STACK[0x6E09]);
  STACK[0x2318] = LOBYTE(STACK[0x6E0A]);
  LODWORD(STACK[0x1F48]) = LOBYTE(STACK[0x6E0B]);
  STACK[0x2F08] = LOBYTE(STACK[0x6F5C]);
  STACK[0x2858] = LOBYTE(STACK[0x6F56]);
  STACK[0x1E50] = LOBYTE(STACK[0x6F57]);
  LODWORD(STACK[0x172C]) = LOBYTE(STACK[0x6F58]);
  LODWORD(STACK[0x1F38]) = LOBYTE(STACK[0x6F59]);
  STACK[0x23E8] = LOBYTE(STACK[0x6F5A]);
  LODWORD(STACK[0x1730]) = LOBYTE(STACK[0x6F5B]);
  LODWORD(STACK[0x1728]) = LOBYTE(STACK[0x6F50]);
  STACK[0x2E58] = LOBYTE(STACK[0x6F51]);
  STACK[0x24D0] = LOBYTE(STACK[0x6F52]);
  LODWORD(STACK[0x1E58]) = LOBYTE(STACK[0x6F53]);
  STACK[0x2F68] = LOBYTE(STACK[0x6F54]);
  STACK[0x3D50] = LOBYTE(STACK[0x6F55]);
  LODWORD(STACK[0x1FA4]) = LOBYTE(STACK[0x6F4A]);
  STACK[0x26F8] = LOBYTE(STACK[0x6F4B]);
  LODWORD(STACK[0x1E60]) = LOBYTE(STACK[0x6F4C]);
  STACK[0x3BC8] = LOBYTE(STACK[0x6F4D]);
  STACK[0x25B0] = LOBYTE(STACK[0x6F4E]);
  LODWORD(STACK[0x1724]) = LOBYTE(STACK[0x6F4F]);
  STACK[0x2998] = LOBYTE(STACK[0x6F43]);
  LODWORD(STACK[0x1720]) = LOBYTE(STACK[0x6F45]);
  LODWORD(STACK[0x1E48]) = LOBYTE(STACK[0x6F46]);
  STACK[0x3120] = LOBYTE(STACK[0x6F47]);
  LODWORD(STACK[0x170C]) = LOBYTE(STACK[0x6F48]);
  STACK[0x35D0] = LOBYTE(STACK[0x6F49]);
  LODWORD(STACK[0x23E0]) = LOBYTE(STACK[0x6F3D]);
  LODWORD(STACK[0x1F40]) = LOBYTE(STACK[0x6F3E]);
  STACK[0x2C40] = LOBYTE(STACK[0x6F3F]);
  LODWORD(STACK[0x1E30]) = LOBYTE(STACK[0x6F40]);
  STACK[0x2EC8] = LOBYTE(STACK[0x6F41]);
  STACK[0x32B8] = LOBYTE(STACK[0x6F42]);
  STACK[0x3128] = LOBYTE(STACK[0x6F37]);
  STACK[0x26C8] = LOBYTE(STACK[0x6F38]);
  STACK[0x27C0] = LOBYTE(STACK[0x6F39]);
  LODWORD(STACK[0x171C]) = LOBYTE(STACK[0x6F3A]);
  LODWORD(STACK[0x1F30]) = LOBYTE(STACK[0x6F3B]);
  STACK[0x2120] = LOBYTE(STACK[0x6F3C]);
  LODWORD(STACK[0x1718]) = LOBYTE(STACK[0x6F31]);
  LODWORD(STACK[0x1700]) = LOBYTE(STACK[0x6F32]);
  LODWORD(STACK[0x1F44]) = LOBYTE(STACK[0x6F33]);
  STACK[0x17C0] = LOBYTE(STACK[0x6F34]);
  LODWORD(STACK[0x1E28]) = LOBYTE(STACK[0x6F35]);
  STACK[0x31F0] = LOBYTE(STACK[0x6F36]);
  STACK[0x17C8] = LOBYTE(STACK[0x6F2B]);
  LODWORD(STACK[0x1714]) = LOBYTE(STACK[0x6F2C]);
  LODWORD(STACK[0x1704]) = LOBYTE(STACK[0x6F2D]);
  STACK[0x1E00] = LOBYTE(STACK[0x6F2E]);
  STACK[0x2808] = LOBYTE(STACK[0x6F2F]);
  STACK[0x3060] = LOBYTE(STACK[0x6F30]);
  STACK[0x3750] = LOBYTE(STACK[0x6F24]);
  STACK[0x3C10] = LOBYTE(STACK[0x6F25]);
  LODWORD(STACK[0x1710]) = LOBYTE(STACK[0x6F26]);
  LODWORD(STACK[0x16FC]) = LOBYTE(STACK[0x6F28]);
  STACK[0x1E38] = LOBYTE(STACK[0x6F29]);
  STACK[0x2DA0] = LOBYTE(STACK[0x6F2A]);
  LODWORD(STACK[0x1744]) = LOBYTE(STACK[0x6F1E]);
  LODWORD(STACK[0x1F2C]) = LOBYTE(STACK[0x6F1F]);
  STACK[0x21E8] = LOBYTE(STACK[0x6F20]);
  LODWORD(STACK[0x1E34]) = LOBYTE(STACK[0x6F21]);
  STACK[0x22B8] = LOBYTE(STACK[0x6F22]);
  STACK[0x2DC8] = LOBYTE(STACK[0x6F23]);
  STACK[0x1E40] = LOBYTE(STACK[0x6F18]);
  STACK[0x33D0] = LOBYTE(STACK[0x6F19]);
  STACK[0x2F30] = LOBYTE(STACK[0x6F1A]);
  STACK[0x27E8] = LOBYTE(STACK[0x6F1B]);
  STACK[0x3160] = LOBYTE(STACK[0x6F1C]);
  LODWORD(STACK[0x1E2C]) = LOBYTE(STACK[0x6F1D]);
  STACK[0x30C8] = LOBYTE(STACK[0x6F11]);
  STACK[0x3CC0] = LOBYTE(STACK[0x6F12]);
  STACK[0x2518] = LOBYTE(STACK[0x6F13]);
  LODWORD(STACK[0x1F3C]) = LOBYTE(STACK[0x6F14]);
  STACK[0x1818] = LOBYTE(STACK[0x6F16]);
  LODWORD(STACK[0x1E4C]) = LOBYTE(STACK[0x6F17]);
  LODWORD(STACK[0x1708]) = LOBYTE(STACK[0x6F0B]);
  STACK[0x1DD8] = LOBYTE(STACK[0x6F0C]);
  STACK[0x2D40] = LOBYTE(STACK[0x6F0D]);
  LODWORD(STACK[0x1FA0]) = LOBYTE(STACK[0x6F0E]);
  STACK[0x22A8] = LOBYTE(STACK[0x6F0F]);
  STACK[0x2918] = LOBYTE(STACK[0x6F10]);
  STACK[0x2DE8] = LOBYTE(STACK[0x6F05]);
  STACK[0x2F98] = LOBYTE(STACK[0x6F06]);
  STACK[0x3C20] = LOBYTE(STACK[0x6F07]);
  STACK[0x2E30] = LOBYTE(STACK[0x6F08]);
  STACK[0x2A10] = LOBYTE(STACK[0x6F09]);
  LODWORD(STACK[0x1DEC]) = LOBYTE(STACK[0x6F0A]);
  STACK[0x2D50] = LOBYTE(STACK[0x6EFF]);
  STACK[0x3568] = LOBYTE(STACK[0x6F00]);
  STACK[0x23D8] = LOBYTE(STACK[0x6F01]);
  LODWORD(STACK[0x1FEC]) = LOBYTE(STACK[0x6F02]);
  STACK[0x1DC8] = LOBYTE(STACK[0x6F03]);
  STACK[0x2EC0] = LOBYTE(STACK[0x6F04]);
  LODWORD(STACK[0x1C70]) = LOBYTE(STACK[0x6EF9]);
  STACK[0x27A0] = LOBYTE(STACK[0x6EFA]);
  STACK[0x3CD8] = LOBYTE(STACK[0x6EFB]);
  STACK[0x2E28] = LOBYTE(STACK[0x6EFC]);
  LODWORD(STACK[0x1F34]) = LOBYTE(STACK[0x6EFD]);
  STACK[0x3C08] = LOBYTE(STACK[0x6EFE]);
  STACK[0x3BF0] = LOBYTE(STACK[0x6EF3]);
  STACK[0x2008] = LOBYTE(STACK[0x6EF4]);
  STACK[0x3040] = LOBYTE(STACK[0x6EF5]);
  LODWORD(STACK[0x1E14]) = LOBYTE(STACK[0x6EF6]);
  LODWORD(STACK[0x16F0]) = LOBYTE(STACK[0x6EF7]);
  LODWORD(STACK[0x16F8]) = LOBYTE(STACK[0x6EF8]);
  LODWORD(STACK[0x21D0]) = LOBYTE(STACK[0x6EED]);
  STACK[0x3D48] = LOBYTE(STACK[0x6EEE]);
  STACK[0x3498] = LOBYTE(STACK[0x6EEF]);
  STACK[0x1E08] = LOBYTE(STACK[0x6EF0]);
  STACK[0x2738] = LOBYTE(STACK[0x6EF1]);
  STACK[0x2C68] = LOBYTE(STACK[0x6EF2]);
  STACK[0x2E80] = LOBYTE(STACK[0x6EE7]);
  STACK[0x25E0] = LOBYTE(STACK[0x6EE8]);
  STACK[0x30F0] = LOBYTE(STACK[0x6EE9]);
  STACK[0x2190] = LOBYTE(STACK[0x6EEA]);
  STACK[0x2CB0] = LOBYTE(STACK[0x6EEB]);
  STACK[0x2F58] = LOBYTE(STACK[0x6EEC]);
  LODWORD(STACK[0x1F20]) = LOBYTE(STACK[0x6EE1]);
  LODWORD(STACK[0x1D88]) = LOBYTE(STACK[0x6EE2]);
  STACK[0x33C8] = LOBYTE(STACK[0x6EE3]);
  STACK[0x1E18] = LOBYTE(STACK[0x6EE4]);
  STACK[0x3080] = LOBYTE(STACK[0x6EE5]);
  STACK[0x2EA8] = LOBYTE(STACK[0x6EE6]);
  STACK[0x1DA0] = LOBYTE(STACK[0x6EDB]);
  LODWORD(STACK[0x1E24]) = LOBYTE(STACK[0x6EDC]);
  STACK[0x2DD0] = LOBYTE(STACK[0x6EDD]);
  LODWORD(STACK[0x1F9C]) = LOBYTE(STACK[0x6EDE]);
  LODWORD(STACK[0x1DD4]) = LOBYTE(STACK[0x6EDF]);
  STACK[0x1DF0] = LOBYTE(STACK[0x6EE0]);
  LODWORD(STACK[0x1E20]) = LOBYTE(STACK[0x6ED5]);
  STACK[0x1D98] = LOBYTE(STACK[0x6ED6]);
  STACK[0x3938] = LOBYTE(STACK[0x6ED7]);
  LODWORD(STACK[0x16F4]) = LOBYTE(STACK[0x6ED8]);
  STACK[0x17B0] = LOBYTE(STACK[0x6ED9]);
  LODWORD(STACK[0x1DFC]) = LOBYTE(STACK[0x6EDA]);
  STACK[0x3298] = LOBYTE(STACK[0x6ECF]);
  STACK[0x3848] = LOBYTE(STACK[0x6ED0]);
  LODWORD(STACK[0x16E4]) = LOBYTE(STACK[0x6ED1]);
  LODWORD(STACK[0x1F28]) = LOBYTE(STACK[0x6ED2]);
  STACK[0x2310] = LOBYTE(STACK[0x6ED3]);
  STACK[0x3C80] = LOBYTE(STACK[0x6ED4]);
  STACK[0x1AE8] = LOBYTE(STACK[0x6EC9]);
  STACK[0x2EA0] = LOBYTE(STACK[0x6ECA]);
  LODWORD(STACK[0x1F1C]) = LOBYTE(STACK[0x6ECB]);
  STACK[0x2E48] = LOBYTE(STACK[0x6ECC]);
  STACK[0x2830] = LOBYTE(STACK[0x6ECD]);
  LODWORD(STACK[0x1F24]) = LOBYTE(STACK[0x6ECE]);
  LODWORD(STACK[0x1F8C]) = LOBYTE(STACK[0x6EC3]);
  STACK[0x2D48] = LOBYTE(STACK[0x6EC4]);
  STACK[0x3A60] = LOBYTE(STACK[0x6EC5]);
  STACK[0x3B90] = LOBYTE(STACK[0x6EC6]);
  STACK[0x22C8] = LOBYTE(STACK[0x6EC7]);
  STACK[0x2528] = LOBYTE(STACK[0x6EC8]);
  STACK[0x25E8] = LOBYTE(STACK[0x6EBD]);
  STACK[0x2E38] = LOBYTE(STACK[0x6EBE]);
  STACK[0x2C78] = LOBYTE(STACK[0x6EBF]);
  STACK[0x30A0] = LOBYTE(STACK[0x6EC0]);
  STACK[0x2DB8] = LOBYTE(STACK[0x6EC1]);
  STACK[0x2FF0] = LOBYTE(STACK[0x6EC2]);
  LODWORD(STACK[0x17BC]) = LOBYTE(STACK[0x6EB6]);
  STACK[0x1D78] = LOBYTE(STACK[0x6EB7]);
  STACK[0x2E08] = LOBYTE(STACK[0x6EB8]);
  STACK[0x2838] = LOBYTE(STACK[0x6EB9]);
  STACK[0x2658] = LOBYTE(STACK[0x6EBA]);
  STACK[0x2EB8] = LOBYTE(STACK[0x6EBB]);
  LODWORD(STACK[0x1D74]) = LOBYTE(STACK[0x6EB0]);
  STACK[0x2388] = LOBYTE(STACK[0x6EB1]);
  STACK[0x3BC0] = LOBYTE(STACK[0x6EB2]);
  STACK[0x3010] = LOBYTE(STACK[0x6EB3]);
  LODWORD(STACK[0x1DBC]) = LOBYTE(STACK[0x6EB4]);
  STACK[0x1D68] = LOBYTE(STACK[0x6EB5]);
  STACK[0x24D8] = LOBYTE(STACK[0x6EAA]);
  STACK[0x3C88] = LOBYTE(STACK[0x6EAB]);
  LODWORD(STACK[0x1DE8]) = LOBYTE(STACK[0x6EAC]);
  STACK[0x3018] = LOBYTE(STACK[0x6EAD]);
  STACK[0x24E8] = LOBYTE(STACK[0x6EAE]);
  LODWORD(STACK[0x1F7C]) = LOBYTE(STACK[0x6EAF]);
  STACK[0x3340] = LOBYTE(STACK[0x6EA4]);
  LODWORD(STACK[0x1798]) = LOBYTE(STACK[0x6EA5]);
  STACK[0x2F70] = LOBYTE(STACK[0x6EA6]);
  STACK[0x3458] = LOBYTE(STACK[0x6EA7]);
  STACK[0x1D90] = LOBYTE(STACK[0x6EA8]);
  STACK[0x1DC0] = LOBYTE(STACK[0x6EA9]);
  STACK[0x30D8] = LOBYTE(STACK[0x6E9D]);
  STACK[0x25A0] = LOBYTE(STACK[0x6E9E]);
  LODWORD(STACK[0x16E8]) = LOBYTE(STACK[0x6E9F]);
  LODWORD(STACK[0x16EC]) = LOBYTE(STACK[0x6EA0]);
  STACK[0x3500] = LOBYTE(STACK[0x6EA1]);
  STACK[0x2C80] = LOBYTE(STACK[0x6EA3]);
  LODWORD(STACK[0x17A0]) = LOBYTE(STACK[0x6E97]);
  STACK[0x2198] = LOBYTE(STACK[0x6E98]);
  LODWORD(STACK[0x1DE4]) = LOBYTE(STACK[0x6E99]);
  STACK[0x2638] = LOBYTE(STACK[0x6E9A]);
  STACK[0x2A08] = LOBYTE(STACK[0x6E9B]);
  STACK[0x2200] = LOBYTE(STACK[0x6E9C]);
  STACK[0x3460] = LOBYTE(STACK[0x6E91]);
  STACK[0x3158] = LOBYTE(STACK[0x6E92]);
  STACK[0x1AE0] = LOBYTE(STACK[0x6E93]);
  STACK[0x1D80] = LOBYTE(STACK[0x6E94]);
  STACK[0x33B0] = LOBYTE(STACK[0x6E95]);
  STACK[0x1BB0] = LOBYTE(STACK[0x6E96]);
  LODWORD(STACK[0x1D58]) = LOBYTE(STACK[0x6E8B]);
  STACK[0x2840] = LOBYTE(STACK[0x6E8C]);
  LODWORD(STACK[0x3B68]) = LOBYTE(STACK[0x6E8D]);
  STACK[0x3BB8] = LOBYTE(STACK[0x6E8E]);
  STACK[0x3858] = LOBYTE(STACK[0x6E8F]);
  LODWORD(STACK[0x1DB0]) = LOBYTE(STACK[0x6E90]);
  LODWORD(STACK[0x1DAC]) = LOBYTE(STACK[0x6E84]);
  STACK[0x27E0] = LOBYTE(STACK[0x6E86]);
  LODWORD(STACK[0x1DB4]) = LOBYTE(STACK[0x6E87]);
  STACK[0x2930] = LOBYTE(STACK[0x6E88]);
  STACK[0x28D8] = LOBYTE(STACK[0x6E89]);
  STACK[0x27B8] = LOBYTE(STACK[0x6E8A]);
  LODWORD(STACK[0x1DB8]) = LOBYTE(STACK[0x6E7E]);
  STACK[0x2FB0] = LOBYTE(STACK[0x6E7F]);
  STACK[0x2CC0] = LOBYTE(STACK[0x6E80]);
  STACK[0x2C50] = LOBYTE(STACK[0x6E81]);
  LODWORD(STACK[0x1F78]) = LOBYTE(STACK[0x6E82]);
  STACK[0x3470] = LOBYTE(STACK[0x6E83]);
  STACK[0x3148] = LOBYTE(STACK[0x6E78]);
  STACK[0x2818] = LOBYTE(STACK[0x6E79]);
  STACK[0x1810] = LOBYTE(STACK[0x6E7A]);
  STACK[0x2D30] = LOBYTE(STACK[0x6E7B]);
  STACK[0x21C0] = LOBYTE(STACK[0x6E7C]);
  STACK[0x2630] = LOBYTE(STACK[0x6E7D]);
  STACK[0x2CE8] = LOBYTE(STACK[0x6E72]);
  LODWORD(STACK[0x1F08]) = LOBYTE(STACK[0x6E73]);
  STACK[0x21E0] = LOBYTE(STACK[0x6E74]);
  STACK[0x2748] = LOBYTE(STACK[0x6E75]);
  STACK[0x1828] = LOBYTE(STACK[0x6E76]);
  STACK[0x2FD8] = LOBYTE(STACK[0x6E77]);
  STACK[0x26B0] = LOBYTE(STACK[0x6E6B]);
  STACK[0x3CA8] = LOBYTE(STACK[0x6E6C]);
  STACK[0x28A8] = LOBYTE(STACK[0x6E6D]);
  STACK[0x3480] = LOBYTE(STACK[0x6E6E]);
  LODWORD(STACK[0x1F18]) = LOBYTE(STACK[0x6E6F]);
  STACK[0x2F88] = LOBYTE(STACK[0x6E71]);
  LODWORD(STACK[0x1D44]) = LOBYTE(STACK[0x6E65]);
  STACK[0x3658] = LOBYTE(STACK[0x6E66]);
  STACK[0x3800] = LOBYTE(STACK[0x6E67]);
  LODWORD(STACK[0x1D38]) = LOBYTE(STACK[0x6E68]);
  LODWORD(STACK[0x1C68]) = LOBYTE(STACK[0x6E69]);
  STACK[0x23B8] = LOBYTE(STACK[0x6E6A]);
  STACK[0x3388] = LOBYTE(STACK[0x6E5E]);
  LODWORD(STACK[0x1794]) = LOBYTE(STACK[0x6E5F]);
  STACK[0x37A8] = LOBYTE(STACK[0x6E61]);
  STACK[0x2D38] = LOBYTE(STACK[0x6E62]);
  STACK[0x2758] = LOBYTE(STACK[0x6E63]);
  STACK[0x29F8] = LOBYTE(STACK[0x6E64]);
  STACK[0x3768] = LOBYTE(STACK[0x6E58]);
  LODWORD(STACK[0x1D3C]) = LOBYTE(STACK[0x6E59]);
  STACK[0x1F90] = LOBYTE(STACK[0x6E5A]);
  STACK[0x3588] = LOBYTE(STACK[0x6E5B]);
  STACK[0x2850] = LOBYTE(STACK[0x6E5C]);
  STACK[0x2400] = LOBYTE(STACK[0x6E5D]);
  STACK[0x28E8] = LOBYTE(STACK[0x6E52]);
  STACK[0x26D0] = LOBYTE(STACK[0x6E53]);
  STACK[0x3138] = LOBYTE(STACK[0x6E54]);
  STACK[0x2E18] = LOBYTE(STACK[0x6E55]);
  LODWORD(STACK[0x1790]) = LOBYTE(STACK[0x6E56]);
  LODWORD(STACK[0x1D8C]) = LOBYTE(STACK[0x6E57]);
  LODWORD(STACK[0x17AC]) = LOBYTE(STACK[0x6E4C]);
  LODWORD(STACK[0x16D0]) = LOBYTE(STACK[0x6E4D]);
  LODWORD(STACK[0x1D5C]) = LOBYTE(STACK[0x6E4E]);
  STACK[0x1AF8] = LOBYTE(STACK[0x6E4F]);
  STACK[0x22E8] = LOBYTE(STACK[0x6E50]);
  STACK[0x1EF8] = LOBYTE(STACK[0x6E51]);
  LODWORD(STACK[0x1D64]) = LOBYTE(STACK[0x6E45]);
  STACK[0x27D0] = LOBYTE(STACK[0x6E46]);
  STACK[0x1F80] = LOBYTE(STACK[0x6E47]);
  STACK[0x3C90] = LOBYTE(STACK[0x6E49]);
  LODWORD(STACK[0x1D60]) = LOBYTE(STACK[0x6E4A]);
  STACK[0x1F00] = LOBYTE(STACK[0x6E4B]);
  STACK[0x1EE0] = LOBYTE(STACK[0x6E3F]);
  LODWORD(STACK[0x16E0]) = LOBYTE(STACK[0x6E40]);
  STACK[0x3130] = LOBYTE(STACK[0x6E41]);
  STACK[0x2690] = LOBYTE(STACK[0x6E42]);
  STACK[0x3078] = LOBYTE(STACK[0x6E43]);
  STACK[0x2E10] = LOBYTE(STACK[0x6E44]);
  STACK[0x3440] = LOBYTE(STACK[0x6E39]);
  STACK[0x2CD8] = LOBYTE(STACK[0x6E3A]);
  STACK[0x30B8] = LOBYTE(STACK[0x6E3B]);
  LODWORD(STACK[0x23D0]) = LOBYTE(STACK[0x6E3C]);
  STACK[0x28F8] = LOBYTE(STACK[0x6E3D]);
  STACK[0x3BA0] = LOBYTE(STACK[0x6E3E]);
  LODWORD(STACK[0x1F0C]) = LOBYTE(STACK[0x6E33]);
  LODWORD(STACK[0x16D4]) = LOBYTE(STACK[0x6E34]);
  STACK[0x3538] = LOBYTE(STACK[0x6E35]);
  LODWORD(STACK[0x16D8]) = LOBYTE(STACK[0x6E36]);
  STACK[0x22B0] = LOBYTE(STACK[0x6E37]);
  LODWORD(STACK[0x1EF0]) = LOBYTE(STACK[0x6E38]);
  LODWORD(STACK[0x1F10]) = LOBYTE(STACK[0x6E2D]);
  STACK[0x3D20] = LOBYTE(STACK[0x6E2E]);
  LODWORD(STACK[0x1734]) = LOBYTE(STACK[0x6E2F]);
  STACK[0x2298] = LOBYTE(STACK[0x6E30]);
  STACK[0x34A8] = LOBYTE(STACK[0x6E31]);
  STACK[0x2C38] = LOBYTE(STACK[0x6E32]);
  STACK[0x26E0] = LOBYTE(STACK[0x6E27]);
  LODWORD(STACK[0x16DC]) = LOBYTE(STACK[0x6E28]);
  LODWORD(STACK[0x1D30]) = LOBYTE(STACK[0x6E29]);
  STACK[0x3810] = LOBYTE(STACK[0x6E2A]);
  STACK[0x2DC0] = LOBYTE(STACK[0x6E2B]);
  STACK[0x2FD0] = LOBYTE(STACK[0x6E2C]);
  STACK[0x2338] = LOBYTE(STACK[0x6E21]);
  STACK[0x1D20] = LOBYTE(STACK[0x6E22]);
  STACK[0x2940] = LOBYTE(STACK[0x6E23]);
  STACK[0x2E20] = LOBYTE(STACK[0x6E24]);
  LODWORD(STACK[0x1D34]) = LOBYTE(STACK[0x6E25]);
  STACK[0x3640] = LOBYTE(STACK[0x6E26]);
  STACK[0x3090] = LOBYTE(STACK[0x6E1B]);
  STACK[0x3418] = LOBYTE(STACK[0x6E1C]);
  LODWORD(STACK[0x1D2C]) = LOBYTE(STACK[0x6E1D]);
  STACK[0x30B0] = LOBYTE(STACK[0x6E1E]);
  STACK[0x3C98] = LOBYTE(STACK[0x6E1F]);
  LODWORD(STACK[0x1EEC]) = LOBYTE(STACK[0x6E20]);
  LODWORD(STACK[0x1E64]) = LOBYTE(STACK[0x6E14]);
  STACK[0x2CF8] = LOBYTE(STACK[0x6E16]);
  STACK[0x23F0] = LOBYTE(STACK[0x6E17]);
  STACK[0x24C0] = LOBYTE(STACK[0x6E18]);
  STACK[0x2F38] = LOBYTE(STACK[0x6E19]);
  LODWORD(STACK[0x1E5C]) = LOBYTE(STACK[0x6E1A]);
  LODWORD(STACK[0x1E74]) = LOBYTE(STACK[0x6E0E]);
  STACK[0x3068] = LOBYTE(STACK[0x6E0F]);
  LODWORD(STACK[0x1778]) = LOBYTE(STACK[0x6E10]);
  STACK[0x3BA8] = LOBYTE(STACK[0x6E11]);
  STACK[0x34E8] = LOBYTE(STACK[0x6E12]);
  STACK[0x1E68] = LOBYTE(STACK[0x6E13]);
  STACK[0x34F0] = LOBYTE(STACK[0x6E0C]);
  STACK[0x2990] = LOBYTE(STACK[0x6E0D]);
  STACK[0x2740] = LOBYTE(STACK[0x6F5D]);
  LODWORD(STACK[0x33E4]) = LOBYTE(STACK[0x6F5E]);
  STACK[0x2F28] = LOBYTE(STACK[0x6F5F]);
  STACK[0x1808] = LOBYTE(STACK[0x6F60]);
  STACK[0x2888] = LOBYTE(STACK[0x6F61]);
  LODWORD(STACK[0x1F14]) = LOBYTE(STACK[0x6F62]);
  STACK[0x2040] = LOBYTE(STACK[0x6F63]);
  LODWORD(STACK[0x1D54]) = LOBYTE(STACK[0x6F64]);
  LODWORD(STACK[0x1D40]) = LOBYTE(STACK[0x6F65]);
  STACK[0x2E68] = LOBYTE(STACK[0x6F66]);
  STACK[0x1D48] = LOBYTE(STACK[0x6F67]);
  STACK[0x2DF8] = LOBYTE(STACK[0x6F68]);
  STACK[0x2728] = LOBYTE(STACK[0x6F69]);
  STACK[0x3D40] = LOBYTE(STACK[0x6F6B]);
  STACK[0x2CE0] = LOBYTE(STACK[0x6F6C]);
  STACK[0x2E00] = LOBYTE(STACK[0x6F6D]);
  STACK[0x2828] = LOBYTE(STACK[0x6F6E]);
  STACK[0x2798] = LOBYTE(STACK[0x6F6F]);
  LODWORD(STACK[0x1D18]) = LOBYTE(STACK[0x6F71]);
  LODWORD(STACK[0x1D14]) = LOBYTE(STACK[0x6F72]);
  LODWORD(STACK[0x178C]) = LOBYTE(STACK[0x6F74]);
  STACK[0x2890] = LOBYTE(STACK[0x6F75]);
  LODWORD(STACK[0x16CC]) = LOBYTE(STACK[0x6F76]);
  STACK[0x23C8] = LOBYTE(STACK[0x6F77]);
  STACK[0x2668] = LOBYTE(STACK[0x6F78]);
  STACK[0x2DE0] = LOBYTE(STACK[0x6F79]);
  LODWORD(STACK[0x1EF4]) = LOBYTE(STACK[0x6F7A]);
  LODWORD(STACK[0x16C8]) = LOBYTE(STACK[0x6F7B]);
  STACK[0x2FE0] = LOBYTE(STACK[0x6F7C]);
  STACK[0x3520] = LOBYTE(STACK[0x6F7D]);
  STACK[0x3C68] = LOBYTE(STACK[0x6F7E]);
  LODWORD(STACK[0x1F74]) = LOBYTE(STACK[0x6F7F]);
  STACK[0x2C30] = LOBYTE(STACK[0x6F80]);
  LODWORD(STACK[0x1C60]) = LOBYTE(STACK[0x6F81]);
  STACK[0x2F20] = LOBYTE(STACK[0x6F82]);
  LODWORD(STACK[0x1D1C]) = LOBYTE(STACK[0x6F83]);
  STACK[0x22F0] = LOBYTE(STACK[0x6F84]);
  LODWORD(STACK[0x1D10]) = LOBYTE(STACK[0x6F85]);
  LODWORD(STACK[0x17A8]) = LOBYTE(STACK[0x6F86]);
  LODWORD(STACK[0x1D28]) = LOBYTE(STACK[0x6F87]);
  LODWORD(STACK[0x1D0C]) = LOBYTE(STACK[0x6F88]);
  STACK[0x3708] = LOBYTE(STACK[0x6F89]);
  LODWORD(STACK[0x1788]) = LOBYTE(STACK[0x6F8A]);
  STACK[0x1D00] = LOBYTE(STACK[0x6F8B]);
  STACK[0x2E60] = LOBYTE(STACK[0x6F8C]);
  STACK[0x2810] = LOBYTE(STACK[0x6F8D]);
  LODWORD(STACK[0x1CEC]) = LOBYTE(STACK[0x6F8F]);
  STACK[0x3718] = LOBYTE(STACK[0x6F91]);
  STACK[0x2C60] = LOBYTE(STACK[0x6F92]);
  STACK[0x2350] = LOBYTE(STACK[0x6F93]);
  STACK[0x1CF8] = LOBYTE(STACK[0x6F94]);
  LODWORD(STACK[0x1EDC]) = LOBYTE(STACK[0x6F95]);
  LODWORD(STACK[0x1FE8]) = LOBYTE(STACK[0x6F96]);
  STACK[0x24C8] = LOBYTE(STACK[0x6F97]);
  STACK[0x1CF0] = LOBYTE(STACK[0x6F98]);
  LODWORD(STACK[0x1CE4]) = LOBYTE(STACK[0x6F99]);
  LODWORD(STACK[0x1CE8]) = LOBYTE(STACK[0x6F9A]);
  STACK[0x2778] = LOBYTE(STACK[0x6F9B]);
  LODWORD(STACK[0x1FE4]) = LOBYTE(STACK[0x6F9C]);
  STACK[0x3600] = LOBYTE(STACK[0x6F9D]);
  LODWORD(STACK[0x1ED0]) = LOBYTE(STACK[0x6F9E]);
  LODWORD(STACK[0x1D08]) = LOBYTE(STACK[0x6F9F]);
  STACK[0x1EC0] = LOBYTE(STACK[0x6FA0]);
  STACK[0x2208] = LOBYTE(STACK[0x6FA1]);
  STACK[0x3BD0] = LOBYTE(STACK[0x6FA2]);
  STACK[0x3A68] = LOBYTE(STACK[0x6FA3]);
  STACK[0x2210] = LOBYTE(STACK[0x6FA4]);
  STACK[0x32A8] = LOBYTE(STACK[0x6FA5]);
  LODWORD(STACK[0x1ED8]) = LOBYTE(STACK[0x6FA6]);
  LODWORD(STACK[0x16C4]) = LOBYTE(STACK[0x6FA7]);
  STACK[0x2EF8] = LOBYTE(STACK[0x6FA8]);
  STACK[0x2C58] = LOBYTE(STACK[0x6FA9]);
  STACK[0x3048] = LOBYTE(STACK[0x6FAA]);
  STACK[0x3168] = LOBYTE(STACK[0x6FAB]);
  STACK[0x2360] = LOBYTE(STACK[0x6FAC]);
  STACK[0x25D0] = LOBYTE(STACK[0x6FAD]);
  STACK[0x2F00] = LOBYTE(STACK[0x6FAE]);
  STACK[0x2FC0] = LOBYTE(STACK[0x6FAF]);
  STACK[0x2CC8] = LOBYTE(STACK[0x6FB0]);
  STACK[0x22D0] = LOBYTE(STACK[0x6FB1]);
  LODWORD(STACK[0x1ED4]) = LOBYTE(STACK[0x6FB2]);
  LODWORD(STACK[0x1CE0]) = LOBYTE(STACK[0x6FB3]);
  STACK[0x1CD8] = LOBYTE(STACK[0x6FB4]);
  STACK[0x2A68] = LOBYTE(STACK[0x6FB5]);
  STACK[0x3CA0] = LOBYTE(STACK[0x6FB6]);
  STACK[0x23C0] = LOBYTE(STACK[0x6FB7]);
  STACK[0x2FE8] = LOBYTE(STACK[0x6FB8]);
  STACK[0x2300] = LOBYTE(STACK[0x6FB9]);
  LODWORD(STACK[0x1ECC]) = LOBYTE(STACK[0x6FBA]);
  STACK[0x2F10] = LOBYTE(STACK[0x6FBB]);
  STACK[0x2398] = LOBYTE(STACK[0x6FBC]);
  STACK[0x3390] = LOBYTE(STACK[0x6FBD]);
  STACK[0x1EB8] = LOBYTE(STACK[0x6FBE]);
  STACK[0x3630] = LOBYTE(STACK[0x6FBF]);
  STACK[0x2A40] = LOBYTE(STACK[0x6FC0]);
  STACK[0x1CD0] = LOBYTE(STACK[0x6FC1]);
  LODWORD(STACK[0x1F70]) = LOBYTE(STACK[0x6FC2]);
  STACK[0x2870] = LOBYTE(STACK[0x6FC3]);
  STACK[0x3490] = LOBYTE(STACK[0x6FC4]);
  STACK[0x2E98] = LOBYTE(STACK[0x6FC5]);
  STACK[0x2670] = LOBYTE(STACK[0x6FC6]);
  STACK[0x1EB0] = LOBYTE(STACK[0x6FC7]);
  STACK[0x2D28] = LOBYTE(STACK[0x6FC8]);
  STACK[0x27B0] = LOBYTE(STACK[0x6FC9]);
  STACK[0x2C48] = LOBYTE(STACK[0x6FCA]);
  STACK[0x2730] = LOBYTE(STACK[0x6FCB]);
  STACK[0x2598] = LOBYTE(STACK[0x6FCC]);
  STACK[0x1CC0] = LOBYTE(STACK[0x6FCD]);
  STACK[0x1CB8] = LOBYTE(STACK[0x6FCE]);
  STACK[0x2EB0] = LOBYTE(STACK[0x6FCF]);
  STACK[0x28D0] = LOBYTE(STACK[0x6FD0]);
  STACK[0x3110] = LOBYTE(STACK[0x6FD1]);
  STACK[0x3720] = LOBYTE(STACK[0x6FD2]);
  STACK[0x39A0] = LOBYTE(STACK[0x6FD3]);
  STACK[0x32C8] = LOBYTE(STACK[0x6FD4]);
  STACK[0x2FB8] = LOBYTE(STACK[0x6FD5]);
  LODWORD(STACK[0x1CCC]) = LOBYTE(STACK[0x6FD6]);
  STACK[0x2320] = LOBYTE(STACK[0x6FD7]);
  LODWORD(STACK[0x1CB4]) = LOBYTE(STACK[0x6FD8]);
  STACK[0x1AD8] = LOBYTE(STACK[0x6FD9]);
  STACK[0x1CA0] = LOBYTE(STACK[0x6FDA]);
  STACK[0x32B0] = LOBYTE(STACK[0x6FDB]);
  LODWORD(STACK[0x16C0]) = LOBYTE(STACK[0x6FDC]);
  STACK[0x2820] = LOBYTE(STACK[0x6FDD]);
  STACK[0x2878] = LOBYTE(STACK[0x6FDE]);
  STACK[0x1C40] = LOBYTE(STACK[0x6FDF]);
  STACK[0x2CD0] = LOBYTE(STACK[0x6FE0]);
  LODWORD(STACK[0x3118]) = LOBYTE(STACK[0x6FE1]);
  LODWORD(STACK[0x16BC]) = LOBYTE(STACK[0x6FE2]);
  LODWORD(STACK[0x16B8]) = LOBYTE(STACK[0x6FE3]);
  STACK[0x1CA8] = LOBYTE(STACK[0x6FE4]);
  STACK[0x3100] = LOBYTE(STACK[0x6FE5]);
  LODWORD(STACK[0x1C9C]) = LOBYTE(STACK[0x6FE6]);
  LODWORD(STACK[0x3638]) = LOBYTE(STACK[0x6FE7]);
  STACK[0x3828] = LOBYTE(STACK[0x6FE8]);
  STACK[0x33F8] = LOBYTE(STACK[0x6FE9]);
  STACK[0x26F0] = LOBYTE(STACK[0x6FEA]);
  STACK[0x37C0] = LOBYTE(STACK[0x6FEB]);
  LODWORD(STACK[0x3AA0]) = STACK[0x6FEC];
  LODWORD(STACK[0x3AE8]) = STACK[0x6FF0];
  STACK[0x22D8] = LODWORD(STACK[0x6FF4]);
  STACK[0x2238] = LODWORD(STACK[0x6FF8]);
  LODWORD(STACK[0x32D0]) = STACK[0x6FFC];
  LODWORD(STACK[0x39C0]) = STACK[0x7000];
  LODWORD(STACK[0x2078]) = STACK[0x7004];
  LODWORD(STACK[0x17DC]) = STACK[0x7008];
  STACK[0x3840] = LODWORD(STACK[0x700C]);
  STACK[0x3960] = LODWORD(STACK[0x7010]);
  LODWORD(STACK[0x3760]) = STACK[0x7014];
  LODWORD(STACK[0x2428]) = STACK[0x7018];
  LODWORD(STACK[0x1BE0]) = STACK[0x701C];
  LODWORD(STACK[0x2144]) = STACK[0x7020];
  LODWORD(STACK[0x268C]) = STACK[0x7024];
  LODWORD(STACK[0x28CC]) = STACK[0x7028];
  LODWORD(STACK[0x3830]) = STACK[0x702C];
  LODWORD(STACK[0x2234]) = STACK[0x7030];
  LODWORD(STACK[0x3368]) = STACK[0x7034];
  STACK[0x2100] = LODWORD(STACK[0x7038]);
  LODWORD(STACK[0x366C]) = STACK[0x703C];
  STACK[0x3980] = LODWORD(STACK[0x7040]);
  LODWORD(STACK[0x2134]) = STACK[0x7044];
  LODWORD(STACK[0x20AC]) = STACK[0x7048];
  STACK[0x38B8] = LODWORD(STACK[0x704C]);
  LODWORD(STACK[0x3888]) = STACK[0x7050];
  STACK[0x3AD8] = LODWORD(STACK[0x7054]);
  STACK[0x3D58] = LODWORD(STACK[0x7058]);
  LODWORD(STACK[0x37F8]) = STACK[0x705C];
  LODWORD(STACK[0x1834]) = STACK[0x7060];
  LODWORD(STACK[0x3688]) = STACK[0x7064];
  LODWORD(STACK[0x2080]) = STACK[0x7068];
  LODWORD(STACK[0x20A0]) = STACK[0x706C];
  STACK[0x23B0] = LODWORD(STACK[0x7070]);
  STACK[0x3700] = LODWORD(STACK[0x7074]);
  LODWORD(STACK[0x3558]) = STACK[0x7078];
  LODWORD(STACK[0x1B5C]) = STACK[0x707C];
  STACK[0x1BC0] = LODWORD(STACK[0x7080]);
  STACK[0x37E8] = LODWORD(STACK[0x7084]);
  LODWORD(STACK[0x2C20]) = STACK[0x7088];
  LODWORD(STACK[0x1C98]) = STACK[0x708C];
  STACK[0x3870] = LODWORD(STACK[0x7090]);
  STACK[0x1B60] = LODWORD(STACK[0x7094]);
  STACK[0x2148] = LODWORD(STACK[0x7098]);
  STACK[0x3E40] = LODWORD(STACK[0x709C]);
  STACK[0x37B8] = LODWORD(STACK[0x70A0]);
  STACK[0x1B40] = LODWORD(STACK[0x70A4]);
  STACK[0x34D8] = LODWORD(STACK[0x70A8]);
  STACK[0x3798] = LODWORD(STACK[0x70AC]);
  LODWORD(STACK[0x3D90]) = STACK[0x70B0];
  LODWORD(STACK[0x3790]) = STACK[0x70B4];
  LODWORD(STACK[0x20B8]) = STACK[0x70B8];
  LODWORD(STACK[0x34D4]) = STACK[0x70BC];
  STACK[0x39F0] = LODWORD(STACK[0x70C0]);
  STACK[0x2038] = LODWORD(STACK[0x70C4]);
  STACK[0x3850] = LODWORD(STACK[0x70C8]);
  LODWORD(STACK[0x31B0]) = STACK[0x70CC];
  STACK[0x3540] = LODWORD(STACK[0x70D0]);
  STACK[0x3AE0] = LODWORD(STACK[0x70D4]);
  LODWORD(STACK[0x3B20]) = STACK[0x70D8];
  LODWORD(STACK[0x3CE8]) = STACK[0x70DC];
  LODWORD(STACK[0x3710]) = STACK[0x70E0];
  LODWORD(STACK[0x3A28]) = STACK[0x70E4];
  STACK[0x17D0] = LODWORD(STACK[0x70E8]);
  STACK[0x3CC8] = LODWORD(STACK[0x70EC]);
  STACK[0x3890] = LODWORD(STACK[0x70F0]);
  LODWORD(STACK[0x3D70]) = STACK[0x70F4];
  LODWORD(STACK[0x1BE4]) = STACK[0x70F8];
  LODWORD(STACK[0x16B4]) = STACK[0x70FC];
  STACK[0x2370] = LODWORD(STACK[0x7100]);
  STACK[0x3E38] = LODWORD(STACK[0x7104]);
  STACK[0x1FD8] = LODWORD(STACK[0x7108]);
  STACK[0x3338] = LODWORD(STACK[0x710C]);
  STACK[0x3620] = LODWORD(STACK[0x7110]);
  LODWORD(STACK[0x2704]) = STACK[0x7114];
  STACK[0x3B08] = LODWORD(STACK[0x7118]);
  LODWORD(STACK[0x3D38]) = STACK[0x711C];
  LODWORD(STACK[0x2424]) = STACK[0x7120];
  LODWORD(STACK[0x20F0]) = STACK[0x7124];
  LODWORD(STACK[0x351C]) = STACK[0x7128];
  LODWORD(STACK[0x37A0]) = STACK[0x712C];
  LODWORD(STACK[0x20E8]) = STACK[0x7130];
  LODWORD(STACK[0x2030]) = STACK[0x7134];
  LODWORD(STACK[0x3B00]) = STACK[0x7138];
  STACK[0x3D98] = LODWORD(STACK[0x713C]);
  STACK[0x3D80] = LODWORD(STACK[0x7140]);
  STACK[0x3698] = LODWORD(STACK[0x7144]);
  STACK[0x3880] = LODWORD(STACK[0x7148]);
  LODWORD(STACK[0x2924]) = STACK[0x714C];
  LODWORD(STACK[0x21F4]) = STACK[0x7150];
  LODWORD(STACK[0x3860]) = STACK[0x7154];
  STACK[0x33C0] = LODWORD(STACK[0x7158]);
  LODWORD(STACK[0x3B18]) = STACK[0x715C];
  STACK[0x38B0] = LODWORD(STACK[0x7160]);
  STACK[0x33A8] = LODWORD(STACK[0x7164]);
  LODWORD(STACK[0x3958]) = STACK[0x7168];
  STACK[0x3900] = LODWORD(STACK[0x716C]);
  STACK[0x1C88] = LODWORD(STACK[0x7170]);
  STACK[0x2138] = LODWORD(STACK[0x7174]);
  STACK[0x3928] = LODWORD(STACK[0x7178]);
  STACK[0x3820] = LODWORD(STACK[0x717C]);
  LODWORD(STACK[0x39A8]) = STACK[0x7180];
  LODWORD(STACK[0x3488]) = STACK[0x7184];
  STACK[0x3998] = LODWORD(STACK[0x7188]);
  STACK[0x2228] = LODWORD(STACK[0x718C]);
  STACK[0x3318] = LODWORD(STACK[0x7190]);
  LODWORD(STACK[0x3930]) = STACK[0x7194];
  LODWORD(STACK[0x3AF0]) = STACK[0x7198];
  STACK[0x36F8] = LODWORD(STACK[0x719C]);
  LODWORD(STACK[0x2158]) = STACK[0x71A0];
  STACK[0x21F8] = LODWORD(STACK[0x71A4]);
  LODWORD(STACK[0x3808]) = STACK[0x71A8];
  STACK[0x3D88] = LODWORD(STACK[0x71AC]);
  LODWORD(STACK[0x195C]) = STACK[0x71B0];
  LODWORD(STACK[0x20B0]) = STACK[0x71B4];
  LODWORD(STACK[0x3CE0]) = 25;
  STACK[0x3E18] = v45;
  STACK[0x1AC0] = STACK[0x71B8];
  return v50();
}

uint64_t sub_100B28B18()
{
  v2 = STACK[0x44A0];
  v3 = STACK[0x3F17];
  v4 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x44A0] & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(STACK[0x44AC]) = LODWORD(STACK[0x6CD4]) ^ LODWORD(STACK[0x449C]) ^ LODWORD(STACK[0x4478]) ^ LODWORD(STACK[0x447C]);
  v5 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v4) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) | 0x190371E9280795CLL) - (v7 + v6) + 0x7F37E470B6BFC352) ^ 0xE53A4F5251CD8852 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__((((2 * (v7 + v6)) | 0x190371E9280795CLL) - (v7 + v6) + 0x7F37E470B6BFC352) ^ 0xE53A4F5251CD8852, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xEF042041F5E548ECLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5455012E8AB1C38FLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  LOBYTE(v18) = (((((2 * (v19 + v18)) | 0x8FE8A5A9763C3AC8) - (v19 + v18) - 0x47F452D4BB1E1D64) ^ 0x28BB3268B51C4384) >> (8 * (v2 & 7u))) ^ v3;
  LOBYTE(v18) = (((v18 ^ 0xE9) + 115) ^ ((v18 ^ 0xC7) + 93) ^ ((v18 ^ 0x2E) - 74)) + 121;
  v20 = STACK[0x37D0] + (v18 - 44 * ((187 * v18) >> 13));
  STACK[0x44B0] = v20;
  v21 = *(v1 + 8 * (LODWORD(STACK[0x3AAC]) + 21626));
  STACK[0x3F18] = v20;
  STACK[0x3F08] = v21;
  return (*(v1 + 8 * (LODWORD(STACK[0x232C]) + 10513)))();
}

uint64_t sub_100B28DB0(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v13 = (((2 * v5) & 0x7AFFCBFFEB7FB5AELL) + (v5 ^ 0xFD7FE5FFF5BFDAD7) + v4 + 0x2801A000A402529);
  v14 = (v13[1] << (v11 + v10 + a4 - 40 + 15)) | (*v13 << 24) | (v13[2] << 8);
  LODWORD(STACK[0x1B7C]) = v14 & v6 ^ a2 ^ ((v13[3] + v9 - ((2 * v13[3]) & 0x28)) ^ v7) & (v14 ^ v8);
  return (*(v12 + 8 * a4))();
}

uint64_t sub_100B28E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v11 = *(v10 + 8 * ((((v9 + 1580) ^ v9 ^ 0x6424 ^ 0x6ABC) * (v8 == 39)) ^ v9));
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2260];
  STACK[0x16A8] = STACK[0x36D0];
  STACK[0x3398] = STACK[0x37A8];
  STACK[0x16A0] = STACK[0x3860];
  STACK[0x29B0] = STACK[0x3760];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a8;
  LODWORD(STACK[0x268C]) = a7;
  v12 = STACK[0x3810];
  LODWORD(STACK[0x3E18]) = STACK[0x3810];
  LODWORD(STACK[0x366C]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  v13 = STACK[0x3540];
  STACK[0x37B8] = LODWORD(STACK[0x3550]);
  LODWORD(STACK[0x3D40]) = v13;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = STACK[0x32D8];
  LODWORD(STACK[0x31D0]) = STACK[0x38C8];
  LODWORD(STACK[0x2A48]) = STACK[0x33C0];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = v12;
  STACK[0x33A8] = LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x2630]) = STACK[0x32E8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x128C]) = STACK[0x36A0];
  return v11();
}

uint64_t sub_100B29070(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + (a2 << ((a1 - 88) ^ 0x86u)));
  *v6 = 0u;
  v6[1] = 0u;
  return (*(v5 + 8 * ((60 * (a4 == a2)) ^ a1)))();
}

uint64_t sub_100B290B4()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x41F8] & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(STACK[0x41F8] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (0xB0D1927AE4F82A3CLL - ((v3 + v2) | 0xB0D1927AE4F82A3CLL) + ((v3 + v2) | 0x4F2E6D851B07D5C3)) ^ (LODWORD(STACK[0x41F4]) - 0x727EACD0DB0A07CFLL);
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0x2BB8EFE202D9D34ALL) + 0x15DC77F1016CE9A5) ^ 0x7A2C31676075FB28;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0xE484DDFAB799EF08) - (v11 + v10) - 0x72426EFD5BCCF784) ^ 0xD3F0F3388CBAE4AFLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((v14 + v13 - ((2 * (v14 + v13)) & 0xD2D6789D1174B696) + 0x696B3C4E88BA5B4BLL) ^ 0x866F1C0F7D5F13A7, 8);
  v16 = (v14 + v13 - ((2 * (v14 + v13)) & 0xD2D6789D1174B696) + 0x696B3C4E88BA5B4BLL) ^ 0x866F1C0F7D5F13A7 ^ __ROR8__(v13, 61);
  v17 = (v15 + v16 - ((2 * (v15 + v16)) & 0x9A5E7C8F7FC72892) + 0x4D2F3E47BFE39449) ^ 0x95E88D5875FA4D97;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0xA8C79E368543F7CELL) - 0x2B9C30E4BD5E0419) ^ 0x8036CE35C8103868;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  LODWORD(v21) = -715186797 * ((((v22 + v21 - ((2 * (v22 + v21)) & 0xC85F3722F57939A6) + 0x642F9B917ABC9CD3) ^ 0xB60FB2D74BEC233) >> (8 * (STACK[0x41F8] & 7u))) ^ LOBYTE(STACK[0x3F17]));
  v23 = STACK[0x41E8];
  v24 = (v21 ^ LODWORD(STACK[0x41D8])) + v23 + (((v21 ^ LODWORD(STACK[0x41D8])) + v23) >> 16);
  v25 = v24 + (v24 >> 8);
  LODWORD(v20) = STACK[0x41DC];
  LODWORD(v15) = v25 + 1928782826;
  v26 = STACK[0x41E0];
  v27 = v25 - 437401644;
  v28 = STACK[0x41E4];
  LODWORD(v21) = (v27 ^ v21) + v23 + (((v27 ^ v21) + v23) >> 16);
  LODWORD(v21) = v21 + (v21 >> 8);
  LODWORD(STACK[0x4204]) = v21;
  v29 = v21 ^ v20 ^ v25;
  LODWORD(STACK[0x4208]) = v29;
  LODWORD(v20) = (v21 + 1928782826) ^ v26 ^ v15;
  LODWORD(STACK[0x420C]) = v20;
  LODWORD(v21) = v21 - 437401644;
  v30 = v21 ^ v28 ^ v27;
  LODWORD(STACK[0x4210]) = v30;
  v31 = *(v1 + 8 * ((85 * (v23 < 0x2B)) ^ LODWORD(STACK[0x41F0])));
  LODWORD(STACK[0x41BC]) = STACK[0x41F0];
  STACK[0x41C0] = v23 + 1;
  LODWORD(STACK[0x41C8]) = v30;
  LODWORD(STACK[0x41CC]) = v20;
  LODWORD(STACK[0x41D0]) = v29;
  LODWORD(STACK[0x41D4]) = v21;
  return v31();
}

uint64_t sub_100B29440()
{
  v2 = *(v1 + 8 * ((27082 * (LODWORD(STACK[0x3D58]) < ((v0 - 427386948) ^ 0xE686BD68))) ^ v0));
  LODWORD(STACK[0x3D98]) = 2;
  return v2();
}

uint64_t sub_100B29570(uint64_t a1, int a2)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v3 = *(v2 + 8 * (a2 - 14420));
  LODWORD(STACK[0x3CF0]) = 33;
  LODWORD(STACK[0x3D88]) = 2;
  v4 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v5 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v4;
  STACK[0x3B18] = v5;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v6 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = v6;
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v3();
}

uint64_t sub_100B29694@<X0>(int a1@<W2>, int a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0x824]) = v6;
  LODWORD(STACK[0x8D0]) = a3;
  LODWORD(STACK[0x8B0]) = v8;
  LODWORD(STACK[0x8F4]) = v3;
  LODWORD(STACK[0x810]) = 435131668;
  LODWORD(STACK[0x860]) = a1;
  LODWORD(STACK[0x90C]) = v7;
  LODWORD(STACK[0x8FC]) = v9;
  LODWORD(STACK[0x7D4]) = a2;
  v10 = STACK[0x720];
  v11 = *(STACK[0x720] + 92);
  v12 = (((v4 ^ 0x6021394) - 716388530) ^ ((v4 ^ 0x65965038) - 1227324190) ^ (((((v5 + 369160038) | 0x8000419) + 80955225) ^ v4) - 241532564)) + (((*(STACK[0x720] + 88) ^ 0x6C5C6DBD) - 1817996733) ^ ((*(STACK[0x720] + 88) ^ 0xFC9E44F7) + 56736521) ^ ((*(STACK[0x720] + 88) ^ 0xFD331472) + 46984078)) - 132706155;
  v13 = (v12 ^ 0xF3AB4DDA) & (2 * (v12 & 0xE3CB69DB)) ^ v12 & 0xE3CB69DB;
  v14 = ((2 * (v12 ^ 0x32BD4C4C)) ^ 0xA2EC4B2E) & (v12 ^ 0x32BD4C4C) ^ (2 * (v12 ^ 0x32BD4C4C)) & 0xD1762596;
  v15 = v14 ^ 0x51122491;
  v16 = (v14 ^ 0x80640104) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0x45D8965C) & v15 ^ (4 * v15) & 0xD1762594;
  v18 = (v17 ^ 0x41500410) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x90262183)) ^ 0x17625970) & (v17 ^ 0x90262183) ^ (16 * (v17 ^ 0x90262183)) & 0xD1762590;
  v20 = v18 ^ 0xD1762597 ^ (v19 ^ 0x11620100) & (v18 << 8);
  v10[22] = v12 ^ (2 * ((v20 << 16) & 0x51760000 ^ v20 ^ ((v20 << 16) ^ 0x25970000) & (((v19 ^ 0xC0142487) << 8) & 0x51760000 ^ 0x1520000 ^ (((v19 ^ 0xC0142487) << 8) ^ 0x76250000) & (v19 ^ 0xC0142487)))) ^ 0x2EFA1FCD;
  v21 = (((LODWORD(STACK[0x8D0]) ^ 0x48C48C22) - 1220840482) ^ ((LODWORD(STACK[0x8D0]) ^ 0xD67BFBC2) + 696517694) ^ ((LODWORD(STACK[0x8D0]) ^ 0xF34E4AD8) + 212972840)) + (((v11 ^ 0xA3D8AE84) + 1546080636) ^ ((v11 ^ 0x42B39D7D) - 1119067517) ^ ((v11 ^ 0x8C9A0EC1) + 1936060735)) - 213251433;
  v22 = (v21 ^ 0xC49C4FDD) & (2 * (v21 & 0xE8986FD9)) ^ v21 & 0xE8986FD9;
  v23 = ((2 * (v21 ^ 0xC59C0DED)) ^ 0x5A08C468) & (v21 ^ 0xC59C0DED) ^ (2 * (v21 ^ 0xC59C0DED)) & 0x2D046234;
  v24 = v23 ^ 0x25042214;
  v25 = (v23 ^ 0x4020) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xB41188D0) & v24 ^ (4 * v24) & 0x2D046234;
  v27 = (v26 ^ 0x24000010) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x9046224)) ^ 0xD0462340) & (v26 ^ 0x9046224) ^ (16 * (v26 ^ 0x9046224)) & 0x2D046230;
  v29 = v27 ^ 0x2D046234 ^ (v28 ^ 0x42200) & (v27 << 8);
  v10[23] = v21 ^ (2 * ((v29 << 16) & 0x2D040000 ^ v29 ^ ((v29 << 16) ^ 0x62340000) & (((v28 ^ 0x2D004034) << 8) & 0x2D040000 ^ 0x29040000 ^ (((v28 ^ 0x2D004034) << 8) ^ 0x4620000) & (v28 ^ 0x2D004034)))) ^ 0x9F699689;
  v30 = v10[25];
  v31 = (((LODWORD(STACK[0x8B0]) ^ 0xD63C82E6) + 700677402) ^ ((LODWORD(STACK[0x8B0]) ^ 0x21F93846) - 569980998) ^ ((LODWORD(STACK[0x8B0]) ^ 0x9A348798) + 1707833448)) + (((v10[24] ^ 0x9A223295) + 1709034859) ^ ((v10[24] ^ 0x1FDE4A06) - 534661638) ^ ((v10[24] ^ 0xE80D45AB) + 401783381)) - 113565334;
  v32 = (v31 ^ 0xE2171525) & (2 * (v31 & 0xE2A75906)) ^ v31 & 0xE2A75906;
  v33 = ((2 * (v31 ^ 0x2755372D)) ^ 0x8BE4DC56) & (v31 ^ 0x2755372D) ^ (2 * (v31 ^ 0x2755372D)) & 0xC5F26E2A;
  v34 = v33 ^ 0x44122229;
  v35 = (v33 ^ 0x81A04C00) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x17C9B8AC) & v34 ^ (4 * v34) & 0xC5F26E28;
  v37 = (v36 ^ 0x5C02820) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0xC0324603)) ^ 0x5F26E2B0) & (v36 ^ 0xC0324603) ^ (16 * (v36 ^ 0xC0324603)) & 0xC5F26E20;
  v39 = v37 ^ 0xC5F26E2B ^ (v38 ^ 0x45226200) & (v37 << 8);
  v10[24] = v31 ^ (2 * ((v39 << 16) & 0x45F20000 ^ v39 ^ ((v39 << 16) ^ 0x6E2B0000) & (((v38 ^ 0x80D00C0B) << 8) & 0x45F20000 ^ 0x5900000 ^ (((v38 ^ 0x80D00C0B) << 8) ^ 0x726E0000) & (v38 ^ 0x80D00C0B)))) ^ 0x8CF6B868;
  v40 = (((LODWORD(STACK[0x8F4]) ^ 0xB532FD93) + 1254949485) ^ ((LODWORD(STACK[0x8F4]) ^ 0xE25E5228) + 497135064) ^ ((LODWORD(STACK[0x8F4]) ^ 0x3A9D9283) - 983405187)) + (((v30 ^ 0xE9628C02) + 379417598) ^ ((v30 ^ 0xA71CA0F1) + 1491296015) ^ ((v30 ^ 0x238F11CB) - 596578763)) + 567943846;
  v10[25] = v40 ^ ((v40 ^ 0xB93E4265) + 53876141) ^ ((v40 ^ 0x91D531B7) + 735929983) ^ ((v40 ^ 0x92E33599) + 686514769) ^ ((v40 ^ 0xFFFFEE7D) + 1173862837) ^ 0x2806950E;
  return (*(STACK[0x7A0] + 8 * v5))(435131604);
}

uint64_t sub_100B29EE0()
{
  v2 = STACK[0x928] - 0x79CEC8CF5A6FCEB2;
  STACK[0x1CA0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 3587) | 0x4894) ^ 0x48D8) + v0)))(v2);
}

uint64_t sub_100B29F4C@<X0>(uint64_t a1@<X8>)
{
  v6[489] = v1;
  LODWORD(STACK[0x1104]) = v2;
  v9 = v6[424];
  v10 = (&STACK[0x2280] + v9);
  v6[225] = &STACK[0x2280] + v9;
  v6[158] = &STACK[0x2280] + v9 + 16;
  v6[98] = &STACK[0x2280] + v9 + 48;
  v6[424] = v9 + (v4 ^ 0x6226);
  v6[222] = a1;
  *v10 = 0;
  v10[1] = 0;
  v11 = (*(v8 + 8 * (v4 + 6629)))();
  *(v5 + 96) = 0x308E083E0C524CBELL;
  v6[318] = 0;
  LODWORD(STACK[0x18EC]) = v7;
  v6[336] = 0;
  LODWORD(STACK[0xA74]) = v7;
  STACK[0x1680] = v3;
  return (*(v8 + 8 * (((v3 == 0x683CBC57EAB92A3ELL) * (v4 - 24972)) ^ v4)))(v11);
}

uint64_t sub_100B2A038@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v20 = v8;
  LODWORD(STACK[0x3BE8]) += LODWORD(STACK[0x3D58]);
  LODWORD(STACK[0x3BF0]) += LODWORD(STACK[0x3D60]);
  v21 = ((v5 ^ v15) - v15) ^ ((v5 ^ v9) - v9) ^ ((v5 ^ v13 ^ LODWORD(STACK[0x3D88]) ^ v7) - (LODWORD(STACK[0x3D88]) ^ v7 ^ v13));
  v22 = v15 ^ LODWORD(STACK[0x3D50]);
  v23 = v13 ^ LODWORD(STACK[0x3D48]) ^ (v7 + LODWORD(STACK[0x3D48]));
  v24 = LODWORD(STACK[0x3D50]) + v9;
  v25 = (v13 ^ LODWORD(STACK[0x3D48])) - 842557220;
  v26 = v22 ^ v24;
  v27 = v22 - 842557220;
  v28 = ((v22 ^ v24 ^ LODWORD(STACK[0x3D98])) - (v22 ^ v24)) ^ (((v22 - 842557220) ^ LODWORD(STACK[0x3D98])) - (v22 - 842557220)) ^ ((v25 ^ a1 ^ v23 ^ LODWORD(STACK[0x3D98])) - (v25 ^ a1 ^ v23));
  LODWORD(STACK[0x3CE0]) = v14;
  v29 = v23 ^ v14 ^ (v16 + 1514233425);
  LODWORD(STACK[0x3D98]) = v23 ^ v14;
  v30 = v25 - v29;
  v31 = v20;
  v32 = STACK[0x3D78];
  v33 = (v20 ^ LODWORD(STACK[0x3D78]) ^ (v25 - v29)) - ((v25 - v29) ^ v20);
  LODWORD(STACK[0x3D90]) = v21 - a2;
  v34 = v26 ^ a2 ^ (v11 + 1514233425);
  v35 = v28 - (v26 ^ a2);
  v36 = (v26 ^ a2) - v27;
  v37 = v34 - 1079437758;
  v38 = (v34 - 1079437758) ^ v26;
  v39 = v38 ^ 0x5D5BADB7 ^ (v27 - v34);
  v40 = ((v38 ^ 0x5D5BADB7 ^ v32) - (v38 ^ 0x5D5BADB7)) ^ v33 ^ ((v39 ^ v32) - v39);
  v29 -= 1079437758;
  v41 = (v23 ^ v14) - v25;
  v42 = v29 ^ v23;
  v43 = v30 ^ 0x5D5BADB7 ^ v42;
  v44 = v43 ^ v29;
  v45 = (v42 ^ 0x7A2E0036) - (v41 ^ 0x96FBFAEA);
  v46 = v43 - v41 + 941521062;
  v47 = v39 ^ v37;
  v48 = v39 - v36;
  v49 = v40 - v36;
  v50 = v36 ^ 0x96FBFAEA;
  v51 = (v38 ^ 0x7A2E0036) - (v36 ^ 0x96FBFAEA);
  v48 += 941521062;
  v50 += 2140833008;
  v52 = (((v51 ^ v6) - v51) ^ ((v45 ^ a4 ^ v46 ^ v6) - (v45 ^ a4 ^ v46)) ^ ((v48 ^ v6) - v48)) - v50;
  v53 = (v47 + 90083522) ^ v50;
  v54 = v46 - (v44 + 90083522) - 1728671;
  v55 = v45 + 1398103045 + v54;
  v56 = STACK[0x3D70];
  v57 = v48 - (v47 + 90083522) - 1728671;
  v58 = v51 + 1398103045 + v57;
  v59 = v58 ^ v53 ^ 0xB278F994;
  v60 = v47 - 75318502 - (v53 ^ 0xB278F994);
  v61 = (((v58 ^ LODWORD(STACK[0x3D68])) - v58) ^ ((v57 ^ LODWORD(STACK[0x3D68])) - v57) ^ ((v55 ^ v54 ^ v56 ^ LODWORD(STACK[0x3D68])) - (v55 ^ v54 ^ v56))) - (v53 ^ 0xB278F994);
  v62 = (v41 ^ 0x96FBFAEA) + 2140833008;
  v63 = (v44 + 90083522) ^ v62;
  v64 = v63 ^ 0xB278F994;
  v65 = v44 - 75318502 - (v63 ^ 0xB278F994);
  v66 = v65 ^ v54 ^ v55 ^ v63 ^ 0xB278F994;
  v67 = v66 + (v63 ^ 0xBA2444A4);
  v68 = v67 + (v55 ^ v64);
  v69 = v60 ^ v57 ^ v59;
  v70 = v69 + (v53 ^ 0xBA2444A4);
  v71 = v70 + v59;
  v72 = ((v69 ^ a3) - v69) ^ ((v66 ^ a5 ^ v68 ^ a3) - (v66 ^ a5 ^ v68)) ^ (((v70 + v59) ^ a3) - (v70 + v59));
  v73 = v68 ^ (v65 + 34456695);
  v74 = v73 ^ (v68 + (v67 ^ v66));
  v75 = v74 + (v67 ^ v66);
  v76 = STACK[0x3D80];
  v77 = v71 ^ (v60 + 34456695);
  v78 = v77 ^ (v71 + (v70 ^ v69));
  v79 = v78 + (v70 ^ v69);
  v80 = ((v78 ^ LODWORD(STACK[0x3E18])) - v78) ^ ((v74 ^ v76 ^ v75 ^ LODWORD(STACK[0x3E18])) - (v74 ^ v76 ^ v75)) ^ ((v79 ^ LODWORD(STACK[0x3E18])) - v79);
  LODWORD(STACK[0x3C78]) += v31 + v41;
  v81 = v67 + 2 * v73;
  v82 = v73 + 1004956509;
  v83 = v81 - v74;
  v84 = v74 - (v81 - v74);
  v85 = v82 + v81 - v74 - 583276776;
  LODWORD(STACK[0x3C90]) += v52;
  v86 = v70 + 2 * v77;
  LODWORD(STACK[0x3BF8]) += v80 - v86;
  LODWORD(STACK[0x3C88]) += v49;
  LODWORD(STACK[0x3C68]) += v35;
  LODWORD(STACK[0x3C18]) += v72 - v70;
  v87 = v77 + 1004956509;
  v88 = a5 + LODWORD(STACK[0x3C08]);
  LODWORD(STACK[0x3E18]) = (v83 ^ v75) - 1757917986;
  LODWORD(STACK[0x3C08]) = v88 + v67;
  v89 = v84 + 583276776;
  v90 = v78 + 583276776 - (v86 - v78);
  LODWORD(STACK[0x3C80]) += a4 + v62;
  v91 = ((v86 - v78) ^ v79) - 1757917986;
  v92 = v87 - (583276776 - (v86 - v78));
  LODWORD(STACK[0x3E38]) = v85 + v83;
  LODWORD(STACK[0x3C00]) += v61;
  LODWORD(STACK[0x3C70]) += LODWORD(STACK[0x3E40]) + LODWORD(STACK[0x3D98]);
  LODWORD(STACK[0x3E40]) = v92;
  LODWORD(STACK[0x3D98]) = v92 + v86 - v78;
  LODWORD(STACK[0x3BE0]) += v76 + v81;
  LODWORD(STACK[0x3C20]) += LODWORD(STACK[0x3CE0]) + LODWORD(STACK[0x3D88]);
  LODWORD(STACK[0x3C60]) += LODWORD(STACK[0x3D90]);
  LODWORD(STACK[0x3C10]) += v64 + v56;
  v93 = LODWORD(STACK[0x3BD8]);
  if (v93 == 108)
  {
    v94 = STACK[0x5AF5];
    LODWORD(STACK[0x3D90]) = v12 - 4317;
    *STACK[0x3DA8] = v94;
    v95 = STACK[0x3D18];
    v95[334] = STACK[0x5AF7];
    v95[333] = STACK[0x5AF4];
    v95[336] = STACK[0x4E93];
    v95[332] = STACK[0x5AF6];
    v95[335] = STACK[0x5AF8];
    v95[337] = STACK[0x5AFA];
    v95[338] = STACK[0x5AF9];
    v95[344] = STACK[0x5AFB];
    v95[340] = STACK[0x5AFE];
    v95[339] = STACK[0x5AFC];
    v95[341] = STACK[0x5AFD];
    v95[348] = STACK[0x5B00];
    v95[343] = STACK[0x5AFF];
    v95[345] = STACK[0x5B01];
    v95[342] = STACK[0x5B03];
    v95[350] = STACK[0x5B02];
    v95[347] = STACK[0x5B04];
    v95[346] = STACK[0x4E92];
    v95[349] = STACK[0x5B05];
    v95[352] = STACK[0x5B07];
    v95[354] = STACK[0x5B06];
    v95[353] = STACK[0x5B08];
    v95[356] = STACK[0x5B09];
    v95[357] = STACK[0x5B0B];
    v95[351] = STACK[0x5B0A];
    v95[362] = STACK[0x5B0D];
    v95[361] = STACK[0x5B0C];
    v95[358] = STACK[0x5B0E];
    v95[355] = STACK[0x5B0F];
    v95[363] = STACK[0x5B11];
    v95[364] = STACK[0x5B10];
    v95[360] = STACK[0x5B12];
    v95[365] = STACK[0x5B14];
    v95[366] = STACK[0x5B13];
    v95[368] = STACK[0x5B15];
    v95[367] = STACK[0x5B16];
    v95[359] = STACK[0x5B18];
    v95[373] = STACK[0x5B17];
    v95[371] = STACK[0x5B19];
    v95[372] = STACK[0x5B1B];
    v95[374] = STACK[0x5B1C];
    v95[369] = STACK[0x5B1A];
    v95[375] = STACK[0x5B1F];
    v95[376] = STACK[0x5B1D];
    v95[370] = STACK[0x5B1E];
    v95[378] = STACK[0x5B20];
    v95[377] = STACK[0x5B21];
    v95[379] = STACK[0x5B23];
    v95[382] = STACK[0x5B22];
    v95[380] = STACK[0x5344];
    v95[384] = STACK[0x5B25];
    v95[385] = STACK[0x5B24];
    v95[383] = STACK[0x5B27];
    v95[381] = STACK[0x5B26];
    v95[386] = STACK[0x5B28];
    v95[388] = STACK[0x5B29];
    v95[387] = STACK[0x5B2B];
    v95[389] = STACK[0x5B2A];
    v95[390] = STACK[0x5B2D];
    v95[394] = STACK[0x5B2C];
    v95[391] = STACK[0x5B2E];
    v95[392] = STACK[0x5B2F];
    v95[393] = STACK[0x5B30];
    v95[268] = STACK[0x522F];
    v95[261] = STACK[0x50AB];
    v95[265] = STACK[0x5213];
    v95[270] = STACK[0x5050];
    v95[264] = STACK[0x50AC];
    v95[271] = STACK[0x5096];
    v95[272] = STACK[0x5236];
    *STACK[0x3DA0] = STACK[0x511B];
    v95[269] = STACK[0x50BA];
    v95[263] = STACK[0x5057];
    v95[275] = STACK[0x51F2];
    v95[266] = STACK[0x5155];
    v95[274] = STACK[0x51D5];
    v95[278] = STACK[0x5058];
    v95[267] = STACK[0x5033];
    v95[282] = STACK[0x520E];
    v95[283] = STACK[0x5117];
    v95[273] = STACK[0x50D5];
    v95[287] = STACK[0x5211];
    v95[279] = STACK[0x520C];
    v95[262] = STACK[0x5112];
    v95[277] = STACK[0x517D];
    v95[293] = STACK[0x5190];
    v95[280] = STACK[0x5098];
    v95[281] = STACK[0x5142];
    v95[276] = STACK[0x5061];
    v95[289] = STACK[0x502B];
    v95[290] = STACK[0x5174];
    v95[284] = STACK[0x50A3];
    v95[292] = STACK[0x5070];
    v95[288] = STACK[0x5099];
    v95[286] = STACK[0x5202];
    v95[285] = STACK[0x5124];
    v95[291] = STACK[0x5091];
    v95[299] = STACK[0x5158];
    v95[295] = STACK[0x50DD];
    v95[294] = STACK[0x5157];
    v95[300] = STACK[0x517F];
    v95[301] = STACK[0x5054];
    v95[297] = STACK[0x5225];
    v95[298] = STACK[0x502F];
    v95[305] = STACK[0x51A6];
    v95[307] = STACK[0x51AC];
    v95[302] = STACK[0x5161];
    v95[296] = STACK[0x51F4];
    v95[304] = STACK[0x5028];
    v95[311] = STACK[0x5209];
    v95[309] = STACK[0x50CF];
    v95[303] = STACK[0x50DB];
    v95[310] = STACK[0x51C0];
    v95[317] = STACK[0x50EA];
    v95[312] = STACK[0x5212];
    v95[323] = STACK[0x503C];
    v95[314] = STACK[0x522D];
    v95[308] = STACK[0x50B6];
    v95[319] = STACK[0x5087];
    v95[320] = STACK[0x50AE];
    v95[306] = STACK[0x5130];
    v95[318] = STACK[0x522B];
    v95[313] = STACK[0x5119];
    v95[316] = STACK[0x51C3];
    v95[315] = STACK[0x5073];
    v95[321] = STACK[0x5145];
    v95[322] = STACK[0x50CE];
    v96 = *(v10 + 8 * (v12 - 9017));
    STACK[0x3658] = LOBYTE(STACK[0x4E92]);
    LODWORD(STACK[0x3BD0]) = 64;
    LODWORD(STACK[0x3BD8]) = 109;
    STACK[0x35D0] = LOBYTE(STACK[0x5B27]);
    return v96();
  }

  else if (LODWORD(STACK[0x3BD8]) > 0x6Eu)
  {
    if (v93 == 111)
    {
      v100 = STACK[0x3DA8];
      *v100 = v89;
      v101 = v100;
      v102 = STACK[0x3DA0];
      *v102 = v90;
      v103 = STACK[0x3D18];
      v104 = STACK[0x3E18];
      v103[332] = STACK[0x3E18];
      v103[261] = v91;
      v103[333] = STACK[0x3E38];
      v103[262] = STACK[0x3D98];
      v103[334] = v85;
      v105 = v85 - v89;
      v106 = STACK[0x3E40];
      v103[263] = STACK[0x3E40];
      v107 = v106 - v90;
      LODWORD(v100) = v86 + v87 - (v106 - v90);
      v108 = v81 + v82 - v105;
      v109 = v85 - (v104 ^ 0xCBC924D7);
      v103[335] = v109;
      v110 = v106 - (v91 ^ 0xCBC924D7);
      v103[264] = v110;
      v103[336] = v104 ^ 0x87;
      v111 = v91 ^ 0xE9B2AED1 ^ (2347 * (v12 ^ 0x529C));
      v105 ^= 0xF59B9DD5;
      v103[265] = v111;
      v107 ^= 0xF59B9DD5;
      v103[337] = v108;
      v103[266] = v100;
      v103[338] = v105;
      v112 = v111 ^ v107;
      v103[267] = v107;
      v113 = v105 ^ v104 ^ 0xE9B2BC87;
      v114 = v105 - v108;
      v115 = v114 ^ v109;
      v116 = v108 - v115;
      v117 = v107 - v100;
      v118 = v110 ^ v117;
      LODWORD(v100) = v100 - v118;
      v119 = v117 - v112;
      v115 ^= 0xFB061AD6;
      v120 = v114 - v113;
      v103[339] = v115;
      v118 ^= 0xFB061AD6;
      v103[268] = v118;
      v103[340] = v113 - 56;
      v103[269] = v112 - 56;
      v103[341] = v116 + v113;
      v103[270] = v112 + v100;
      v103[342] = v120;
      v121 = v120 - v115;
      v103[271] = v119;
      v112 -= 145792312;
      v115 -= 980593451;
      v122 = v119 - v118;
      v123 = v121 ^ v115;
      v113 -= 145792312;
      v116 += 69741404;
      v124 = v115 + v113;
      v118 -= 980593451;
      v125 = v122 ^ v118;
      v103[343] = v124;
      v126 = v112 + v118;
      v103[272] = v126;
      v127 = v124 ^ v113;
      v103[344] = v113;
      v103[273] = v112;
      LODWORD(v100) = v100 + 69741404;
      v103[345] = v116;
      v103[274] = v100;
      v103[346] = v123;
      v128 = v123 ^ v113;
      v129 = v126 ^ v112;
      v103[275] = v125;
      LODWORD(v100) = v129 ^ v100;
      v130 = v127 ^ v116;
      v131 = v130 - v127;
      v132 = v100 - v129;
      v113 ^= 0x188C560u;
      v133 = v125 ^ v112 ^ (v100 - v129);
      v103[347] = v127 + v113;
      v134 = v128 ^ (v130 - v127);
      v135 = v112 ^ 0x188C560;
      v103[276] = v129 + (v112 ^ 0x60);
      v136 = v130 + v113;
      v137 = (v112 ^ 0x188C560) + 1922400410;
      v103[348] = v113 - 102;
      v103[277] = (v112 ^ 0x60) - 102;
      v103[349] = v131;
      v138 = v113 + 1922400410 - v134;
      v103[278] = v132;
      v139 = v137 - v133;
      LODWORD(v100) = v100 + v135;
      v103[350] = v134;
      v103[279] = v133;
      v140 = v133 ^ v100;
      LODWORD(v100) = v100 + 1911968848;
      v141 = v132 + 1967656280 + v139;
      v142 = v134 ^ v136;
      v143 = v131 + 1967656280 + v138;
      v136 += 1911968848;
      v138 ^= 0xC49C26C7;
      v103[351] = v136;
      v103[280] = v100;
      v139 ^= 0xC49C26C7;
      v103[352] = v138;
      v144 = v140 ^ v139;
      v145 = v142 ^ v138;
      v103[281] = v139;
      v103[353] = v143;
      v103[282] = v141;
      v103[354] = v145;
      v146 = v145 ^ v143;
      v103[283] = v144;
      v147 = v144 ^ v141;
      v148 = v138 + v143 + v146;
      v149 = (v138 ^ v136) + 1653593927;
      v150 = v139 + v141;
      v151 = v138 - v146 - 1711212011;
      v146 += 1578809351;
      LODWORD(v100) = (v139 ^ v100) + 1653593927;
      v103[355] = v149;
      v152 = v139 - v147 - 1711212011;
      v103[284] = v100;
      v103[356] = v151;
      v153 = v150 + v147;
      v103[285] = v152;
      v103[357] = v148;
      v154 = v148 + v149;
      LODWORD(v100) = v153 + v100;
      v103[286] = v153;
      v103[358] = v146;
      v155 = v146 - v154;
      v103[287] = v147 + 7;
      v156 = v154 ^ v151;
      v157 = v147 - v100 + 1672929142;
      v155 += 94119791;
      LODWORD(v100) = v152 ^ v100;
      v151 ^= 0xCDD96E7F;
      v158 = (v148 ^ 0x1C9585C6) - v151;
      v103[359] = v156 ^ 0x26;
      v152 ^= 0xCDD96E7F;
      v103[288] = v100 ^ 0x26;
      v103[360] = v151;
      v103[289] = v152;
      v159 = v151 - 1933785340 + (v156 ^ 0x57206426);
      v103[361] = v158;
      v160 = v155 + v158;
      v161 = (v153 ^ 0x1C9585C6) - v152;
      v103[290] = v161;
      v103[362] = v155;
      v103[291] = v157;
      v162 = v152 - 1933785340 + (v100 ^ 0x57206426);
      LODWORD(v100) = v100 ^ 0x52FF6128;
      v163 = (v156 ^ 0x52FF6128) - v159;
      v164 = v100 - v162;
      v103[363] = v163;
      v103[292] = v100 - v162;
      v165 = v156 ^ 0x8C8CEA51 ^ v155;
      v166 = v160 + v165;
      v103[364] = v159;
      v103[293] = v162;
      v103[365] = v160 + v165;
      LODWORD(v100) = v157 ^ v100 ^ 0xDE738B79;
      v167 = v161 + v157 + v100;
      v103[294] = v167;
      v103[366] = v165;
      v168 = v165 - v159;
      v103[295] = v100;
      v169 = v166 ^ v168;
      v170 = v169 ^ (v159 - 916075750);
      LODWORD(v100) = v100 - v162;
      v171 = v100 ^ v167;
      v172 = v168 ^ v163;
      v173 = v171 ^ (v162 - 916075750);
      v174 = v164 ^ v100;
      v103[367] = v170 + (v168 ^ v163);
      v103[296] = v173 + (v164 ^ v100);
      v169 ^= 0xE7FDFAu;
      v103[368] = v170;
      v103[297] = v173;
      v103[369] = v169;
      v171 ^= 0xE7FDFAu;
      v103[298] = v171;
      v103[370] = v168 ^ 0x9D;
      v103[299] = v100 ^ 0x9D;
      LODWORD(v100) = v170 - ((v163 ^ 0xE25D469D) + v169);
      v175 = v171 - 66087380;
      v176 = v173 - ((v164 ^ 0xE25D469D) + v171);
      v177 = (v163 ^ 0xE25D469D) - (v169 - 66087380);
      v178 = v169 - 66087380 - v100;
      v179 = v172 - v100;
      v103[371] = v179;
      v180 = v179 - v177;
      v103[300] = v174 - v176;
      v103[372] = v100;
      v103[301] = v176;
      v181 = (v164 ^ 0xE25D469D) - v175;
      v103[373] = v178;
      v182 = v175 - v176;
      v103[302] = v182;
      v103[374] = v177;
      LODWORD(v100) = v178 ^ v100 ^ (-1825255053 - v177 + v178);
      v103[303] = v181;
      v183 = v174 - v176 - v181;
      v184 = v182 ^ v176 ^ (-1825255053 - v181 + v182);
      v103[375] = v180 - v178;
      v181 -= 954129429;
      v177 -= 954129429;
      v103[304] = v183 - v182;
      v103[376] = v100;
      v103[305] = v184;
      v103[377] = v178;
      v103[306] = v182;
      v103[378] = v177;
      v185 = v100 ^ v177;
      v186 = v185 + v178;
      v187 = v186 + v185;
      v103[307] = v181;
      v188 = v184 ^ v181;
      v189 = v188 + v182;
      v190 = v189 + v188;
      v191 = v184 ^ v183 ^ v189;
      LODWORD(v100) = v100 ^ v180 ^ v186;
      v189 -= 899972287;
      v192 = v100 + v180;
      v186 -= 899972287;
      v193 = v191 + v183;
      v103[379] = v192;
      v103[308] = v193;
      v103[380] = v100;
      v103[309] = v191;
      LODWORD(v100) = v100 - v187;
      v103[381] = v186;
      v103[310] = v189;
      v192 -= 989407990;
      v103[382] = v187;
      v194 = v186 + v187;
      v187 += 1175452324;
      v195 = v190 + v189;
      v196 = v191 - v190;
      v197 = v194 + v187;
      LODWORD(v100) = v192 ^ v100;
      v193 -= 989407990;
      v103[311] = v190;
      v190 += 1175452324;
      v198 = v195 + v190;
      v187 ^= 0xC20A74EA;
      v199 = v192 ^ v187;
      v190 ^= 0xC20A74EA;
      v200 = v193 ^ v196;
      v201 = v193 ^ v190;
      v103[383] = v199;
      v103[312] = v201;
      v103[384] = v100;
      LODWORD(v100) = v100 + v197;
      v103[313] = v200;
      v103[385] = v197;
      v103[314] = v198;
      v202 = v197 - v199;
      v103[386] = v187;
      v103[315] = v190;
      v203 = v200 + v198;
      v204 = v187 - v199 - 1948571663;
      v205 = v198 - v201;
      LODWORD(v100) = v100 + v202;
      v206 = (v199 - 1116324930) ^ 0xB1AECBA;
      v207 = v203 + v205;
      v208 = v190 - v201 - 1948571663;
      v209 = (v201 - 1116324930) ^ 0xB1AECBA;
      v103[387] = v206;
      v103[316] = v209;
      v103[388] = v100;
      v103[317] = v207;
      v210 = v208 + v205;
      v103[389] = v204 + v202;
      v103[318] = v210;
      v103[390] = v204;
      v103[319] = v208;
      LODWORD(v100) = (v204 ^ v100) + v206;
      v211 = (v204 + v202) ^ 0x9D5B484D;
      v212 = v211 + v204;
      v213 = (v207 ^ v208) + v209;
      v214 = -v206;
      LOBYTE(v164) = v211 - v100;
      LODWORD(STACK[0x3D98]) = v211 - v100;
      v210 ^= 0x9D5B484D;
      LODWORD(v100) = v100 - 879123346;
      LODWORD(STACK[0x3D90]) = v100;
      v103[391] = v100;
      LODWORD(STACK[0x3E18]) = v214;
      LOBYTE(v202) = v212 ^ v214;
      LODWORD(STACK[0x3D80]) = v212 ^ v214;
      LODWORD(STACK[0x3D88]) = v210 - v213;
      LODWORD(STACK[0x3E40]) = v213 - 879123346;
      v103[320] = v213 + 110;
      LODWORD(STACK[0x3E38]) = -v209;
      v215 = (v210 + v208) ^ -v209;
      LODWORD(STACK[0x3D78]) = v215;
      v103[392] = v214;
      v103[321] = -v209;
      v103[393] = v164;
      v103[322] = v210 - v213;
      v103[394] = v202;
      v103[323] = v215;
      v216 = *v101;
      v217 = v103[261];
      v218 = *v102;
      v219 = v103[262];
      v220 = STACK[0x3D20];
      v221 = *(STACK[0x3D20] + 4 * (v103[334] ^ 0xB8));
      v222 = v103[263];
      v223 = *(STACK[0x3D20] + 4 * (v103[333] ^ 0x60)) ^ 0xB0C70B6;
      v224 = *(STACK[0x3D20] + 4 * (v103[332] ^ 0xF2)) ^ 0xB0C70FF;
      STACK[0x2510] = v216;
      LODWORD(v222) = *(v220 + 4 * (v222 ^ 0xF8));
      LODWORD(v219) = *(v220 + 4 * (v219 ^ 0xB6)) ^ 0xB0C70DD;
      v225 = *(v220 + 4 * (v217 ^ 0xDD)) ^ 0x8B0C70E8;
      LODWORD(v218) = *(v220 + 4 * (v218 ^ 0x66)) ^ 0xB0C70B5;
      v226 = v221 ^ 0xB0C70DA ^ __ROR4__(v223, 24) ^ (v224 << 16) ^ HIWORD(v224) ^ __ROR4__(*(v220 + 4 * (v216 ^ 0xCF)) ^ 0x8B0C70E1, 8);
      *v101 = HIBYTE(v226);
      LODWORD(v219) = v222 ^ 0xB0C70FA ^ __ROR4__(v219, 24) ^ __ROR4__(v225, 16);
      v227 = __ROR4__(v218, 8);
      *v102 = (WORD1(v219) ^ HIWORD(v227)) >> 8;
      v103[332] = BYTE2(v226);
      v103[261] = BYTE2(v219) ^ BYTE2(v227);
      v103[333] = BYTE1(v226);
      v103[262] = (v219 ^ v227) >> 8;
      v103[334] = v226;
      v103[263] = v219 ^ v227;
      v228 = *(v220 + 4 * (v103[267] ^ 0xAELL));
      LODWORD(v218) = *(v220 + 4 * (v103[338] ^ 0x14)) ^ 0xB0C708C ^ __ROR4__(*(v220 + 4 * (v103[337] ^ 0xD6)) ^ 0xB0C70ED, 24) ^ __ROR4__(*(v220 + 4 * (v103[336] ^ 0x18)) ^ 0xB0C708A, 16) ^ __ROR4__(*(v220 + 4 * (v103[335] ^ 0xD9)) ^ 0x8B0C70EA, 8);
      v229 = *(v220 + 4 * (v103[266] ^ 0x8DLL));
      LODWORD(v216) = *(v220 + 4 * (v103[264] ^ 0x2DLL));
      v230 = *(v220 + 4 * (v103[265] ^ 0xA9)) ^ 0x8B0C70D2;
      v103[335] = BYTE3(v218);
      LODWORD(STACK[0x3D70]) = -1962118976;
      v231 = v228 ^ 0xB0C70D1 ^ __ROR4__(v229 ^ 0x8B0C70C0, 24) ^ __ROR4__(v230, 16) ^ __ROR4__(v216 ^ 0x8B0C7090, 8);
      v103[264] = HIBYTE(v231);
      v103[336] = BYTE2(v218);
      v103[265] = BYTE2(v231);
      v103[337] = BYTE1(v218);
      v103[266] = BYTE1(v231);
      v103[338] = v218;
      v103[267] = v231;
      LODWORD(v216) = *(v220 + 4 * (v103[269] ^ 0xFELL)) ^ 0xB0C70F9;
      LODWORD(v217) = *(v220 + 4 * (v103[342] ^ 0xFLL)) ^ 0x8B0C7081 ^ __ROR4__(*(v220 + 4 * (v103[341] ^ 0xF8)) ^ 0xB0C70FA, 24) ^ __ROR4__(*(v220 + 4 * (v103[340] ^ 0x1ELL)) ^ LODWORD(STACK[0x3CC0]), 16) ^ __ROR4__(*(v220 + 4 * (v103[339] ^ 0x2DLL)) ^ 0x8B0C7090, 8);
      LODWORD(v218) = *(v220 + 4 * (v103[268] ^ 0x4ALL)) ^ 0xB0C70A3;
      v232 = *(v220 + 4 * (v103[271] ^ 0x65));
      v233 = *(v220 + 4 * (v103[270] ^ 0xF2));
      v103[339] = BYTE3(v217);
      v234 = v232 ^ 0x8B0C70B4 ^ __ROR4__(v233 ^ 0xB0C70FF, 24) ^ __ROR4__(v216, 16);
      v235 = __ROR4__(v218, 8);
      v103[268] = (v234 ^ v235) >> 24;
      v103[340] = BYTE2(v217);
      v103[269] = (v234 ^ v235) >> 16;
      v103[341] = BYTE1(v217);
      v103[270] = (v234 ^ v235) >> 8;
      v103[342] = v217;
      v103[271] = v234 ^ v235;
      v236 = *(v220 + 4 * (v103[274] ^ 0xB9)) ^ 0x8B0C70DA;
      v237 = *(v220 + 4 * (v103[273] ^ 0xF5)) ^ 0x8B0C70FC;
      LODWORD(v100) = *(v220 + 4 * (v103[272] ^ 0xA6)) ^ 0xB0C70D5;
      LODWORD(v218) = *(v220 + 4 * (v103[346] ^ 0xDCLL)) ^ 0xB0C70E8 ^ __ROR4__(*(v220 + 4 * (v103[345] ^ 0xF0)) ^ 0xB0C70FE, 24) ^ __ROR4__(*(v220 + 4 * (v103[344] ^ 0x1BLL)) ^ 0x8B0C708B, 16) ^ __ROR4__(*(v220 + 4 * (v103[343] ^ 0x3CLL)) ^ 0xB0C7098, 8);
      v238 = v103[275];
      STACK[0x2658] = v238;
      LODWORD(v238) = *(v220 + 4 * (v238 ^ 0xEF)) ^ 0x8B0C70F1 ^ __ROR4__(v236, 24) ^ __ROR4__(v237, 16) ^ __ROR4__(v100, 8);
      v103[343] = BYTE3(v218);
      v103[272] = BYTE3(v238);
      v103[344] = BYTE2(v218);
      v103[273] = BYTE2(v238);
      v103[345] = BYTE1(v218);
      v103[274] = BYTE1(v238);
      v103[346] = v218;
      v103[275] = v238;
      LODWORD(v238) = *(v220 + 4 * (v103[349] ^ 0xCFLL)) ^ 0x8B0C70E1;
      LODWORD(v100) = *(v220 + 4 * (v103[348] ^ 0x26)) ^ 0xB0C7095;
      v239 = v103[347] ^ 0x14;
      v240 = *(v220 + 4 * (v103[276] ^ 0xC5)) ^ 0x8B0C70E4;
      v241 = *(v220 + 4 * (v103[279] ^ 0xF0)) ^ 0xB0C70FE ^ __ROR4__(*(v220 + 4 * (v103[278] ^ 0x33)) ^ 0x8B0C709F, 24) ^ __ROR4__(*(v220 + 4 * (v103[277] ^ 0x12)) ^ 0xB0C708F, 16);
      v242 = v103[350];
      STACK[0x2500] = v242;
      v243 = v241 ^ __ROR4__(v240, 8);
      LODWORD(v238) = *(v220 + 4 * (v242 ^ 0x59)) ^ 0x8B0C70AA ^ __ROR4__(v238, 24) ^ __ROR4__(v100, 16) ^ __ROR4__(*(v220 + 4 * v239) ^ 0xB0C708C, 8);
      v103[347] = BYTE3(v238);
      v103[276] = HIBYTE(v243);
      v103[348] = BYTE2(v238);
      v103[277] = BYTE2(v243);
      v103[349] = BYTE1(v238);
      v103[278] = BYTE1(v243);
      v103[350] = v238;
      v103[279] = v243;
      LODWORD(v222) = *(v220 + 4 * (v103[282] ^ 0x64)) ^ 0xB0C70B4;
      LODWORD(v238) = *(v220 + 4 * (v103[354] ^ 0x32)) ^ 0xB0C709F ^ __ROR4__(*(v220 + 4 * (v103[353] ^ 0x28)) ^ 0xB0C7092, 24) ^ __ROR4__(*(v220 + 4 * (v103[352] ^ 0x79)) ^ 0x8B0C70BA, 16) ^ __ROR4__(*(v220 + 4 * (v103[351] ^ 0xF1)) ^ 0x8B0C70FE, 8);
      LODWORD(v100) = *(v220 + 4 * (v103[281] ^ 0x7FLL)) ^ 0x8B0C70B9;
      LODWORD(v239) = *(v220 + 4 * (v103[280] ^ 0x6DLL)) ^ 0x8B0C70B0;
      v244 = v103[283];
      STACK[0x26B0] = v244;
      LODWORD(v244) = *(v220 + 4 * (v244 ^ 6));
      v103[351] = BYTE3(v238);
      LODWORD(v100) = v244 ^ LODWORD(STACK[0x3CC8]) ^ __ROR4__(v222, 24) ^ __ROR4__(v100, 16) ^ __ROR4__(v239, 8);
      v103[280] = BYTE3(v100);
      v103[352] = BYTE2(v238);
      v103[281] = BYTE2(v100);
      v103[353] = BYTE1(v238);
      v103[282] = BYTE1(v100);
      v103[354] = v238;
      v103[283] = v100;
      LODWORD(v238) = *(v220 + 4 * (v103[356] ^ 0xEELL)) ^ 0xB0C70F1;
      v245 = v103[287] ^ 0xCBLL;
      v246 = v103[357] ^ 0xEFLL;
      v247 = v103[358];
      STACK[0x24B8] = v247;
      LODWORD(v222) = *(v220 + 4 * (v103[286] ^ 0xCDLL)) ^ 0x8B0C70E0;
      LODWORD(v242) = *(v220 + 4 * (v103[285] ^ 2)) ^ 0xB0C7087;
      LODWORD(v238) = *(v220 + 4 * (v247 ^ 0xEF)) ^ 0x8B0C70F1 ^ __ROR4__(*(v220 + 4 * v246) ^ 0x8B0C70F1, 24) ^ __ROR4__(v238, 16) ^ __ROR4__(*(v220 + 4 * (v103[355] ^ 0xECLL)) ^ 0xB0C70F0, 8);
      LODWORD(v245) = *(v220 + 4 * v245);
      LODWORD(v246) = *(v220 + 4 * (v103[284] ^ 0xCCLL));
      v103[355] = BYTE3(v238);
      LODWORD(v245) = v245 ^ 0x8B0C70E3 ^ __ROR4__(v222, 24) ^ __ROR4__(v242, 16) ^ __ROR4__(v246 ^ 0xB0C70E0, 8);
      v103[284] = BYTE3(v245);
      v103[356] = BYTE2(v238);
      v103[285] = BYTE2(v245);
      v103[357] = BYTE1(v238);
      v103[286] = BYTE1(v245);
      v103[358] = v238;
      v103[287] = v245;
      LODWORD(v238) = *(v220 + 4 * (v103[362] ^ 0xCCLL)) ^ 0xB0C70E0 ^ __ROR4__(*(v220 + 4 * (v103[361] ^ 0xB6)) ^ 0xB0C70DD, 24) ^ __ROR4__(*(v220 + 4 * (v103[360] ^ 0x21)) ^ 0x8B0C7096, 16) ^ __ROR4__(*(v220 + 4 * (v103[359] ^ 0x49)) ^ 0x8B0C70A2, 8);
      LODWORD(v245) = *(v220 + 4 * (v103[291] ^ 0x39)) ^ 0x8B0C709A ^ __ROR4__(*(v220 + 4 * (v103[290] ^ 0x61)) ^ 0x8B0C70B6, 24) ^ __ROR4__(*(v220 + 4 * (v103[289] ^ 0xBELL)) ^ 0xB0C70D9, 16) ^ __ROR4__(*(v220 + 4 * (v103[288] ^ 0xDCLL)) ^ 0xB0C70E8, 8);
      v103[359] = BYTE3(v238);
      v103[288] = BYTE3(v245);
      v103[360] = BYTE2(v238);
      v103[289] = BYTE2(v245);
      v103[361] = BYTE1(v238);
      v103[290] = BYTE1(v245);
      v103[362] = v238;
      v103[291] = v245;
      LODWORD(v242) = *(v220 + 4 * (v103[295] ^ 0x56)) ^ 0xB0C70AD ^ __ROR4__(*(v220 + 4 * (v103[294] ^ 0x94)) ^ 0xB0C70CC, 24) ^ __ROR4__(*(v220 + 4 * (v103[293] ^ 0x43)) ^ 0x8B0C70A7, 16) ^ __ROR4__(*(v220 + 4 * (v103[292] ^ 0x51)) ^ 0x8B0C70AE, 8);
      LODWORD(v238) = *(v220 + 4 * (v103[366] ^ 0xA4)) ^ 0xB0C70D4 ^ __ROR4__(*(v220 + 4 * (v103[365] ^ 0x6ELL)) ^ 0xB0C70B1, 24) ^ __ROR4__(*(v220 + 4 * (v103[364] ^ 0x5ALL)) ^ 0xB0C70AB, 16) ^ __ROR4__(*(v220 + 4 * (v103[363] ^ 0x52)) ^ 0xB0C70AF, 8);
      v103[363] = BYTE3(v238);
      v103[292] = BYTE3(v242);
      v103[364] = BYTE2(v238);
      v103[293] = BYTE2(v242);
      v103[365] = BYTE1(v238);
      v103[294] = BYTE1(v242);
      v103[366] = v238;
      v103[295] = v242;
      v248 = v103[367] ^ 5;
      v249 = v103[369];
      STACK[0x3658] = v249;
      v250 = v103[297] ^ 0x2DLL;
      LODWORD(v248) = *(v220 + 4 * (v103[370] ^ 0x71)) ^ 0x8B0C70BE ^ __ROR4__(*(v220 + 4 * (v249 ^ 0xE7)) ^ 0x8B0C70F5, 24) ^ __ROR4__(*(v220 + 4 * (v103[368] ^ 0xF3)) ^ 0x8B0C70FF, 16) ^ __ROR4__(*(v220 + 4 * v248) ^ LODWORD(STACK[0x3CD0]), 8);
      LODWORD(v245) = *(v220 + 4 * (v103[296] ^ 0xC0)) ^ 0xB0C70E6;
      LODWORD(v222) = *(v220 + 4 * (v103[299] ^ 0xABLL)) ^ 0x8B0C70D3;
      v251 = v103[298];
      STACK[0x3C98] = v251;
      LODWORD(v222) = v222 ^ __ROR4__(*(v220 + 4 * (v251 ^ 0x60)) ^ 0xB0C70B6, 24) ^ __ROR4__(*(v220 + 4 * v250) ^ 0x8B0C7090, 16);
      v252 = __ROR4__(v245, 8);
      v103[367] = BYTE3(v248);
      v103[296] = (v222 ^ v252) >> 24;
      v103[368] = BYTE2(v248);
      v103[297] = (v222 ^ v252) >> 16;
      v103[369] = BYTE1(v248);
      v103[298] = (v222 ^ v252) >> 8;
      v103[370] = v248;
      v103[299] = v222 ^ v252;
      LODWORD(v248) = *(v220 + 4 * (v103[373] ^ 0x60)) ^ 0xB0C70B6;
      v253 = v103[372];
      STACK[0x3CB0] = v253;
      LODWORD(v248) = *(v220 + 4 * (v103[374] ^ 0x3FLL)) ^ 0x8B0C7099 ^ __ROR4__(v248, 24) ^ __ROR4__(*(v220 + 4 * (v253 ^ 0xAF)) ^ 0x8B0C70D1, 16) ^ __ROR4__(*(v220 + 4 * (v103[371] ^ 0x99)) ^ 0x8B0C70CA, 8);
      LODWORD(v245) = *(v220 + 4 * (v103[303] ^ 0xFALL)) ^ 0xB0C70FB ^ __ROR4__(*(v220 + 4 * (v103[302] ^ 0x19)) ^ 0x8B0C708A, 24) ^ __ROR4__(*(v220 + 4 * (v103[301] ^ 4)) ^ 0xB0C7084, 16) ^ __ROR4__(*(v220 + 4 * (v103[300] ^ 0x6FLL)) ^ 0x8B0C70B1, 8);
      v103[371] = BYTE3(v248);
      v103[300] = BYTE3(v245);
      v103[372] = BYTE2(v248);
      v103[301] = BYTE2(v245);
      v103[373] = BYTE1(v248);
      v103[302] = BYTE1(v245);
      v103[374] = v248;
      v103[303] = v245;
      v254 = *(v220 + 4 * (v103[307] ^ 0xDLL)) ^ 0x8B0C7080 ^ __ROR4__(*(v220 + 4 * (v103[306] ^ 0xBFLL)) ^ 0x8B0C70D9, 24) ^ __ROR4__(*(v220 + 4 * (v103[305] ^ 0xE2)) ^ 0xB0C70F7, 16) ^ __ROR4__(*(v220 + 4 * (v103[304] ^ 0x70)) ^ 0xB0C70BE, 8);
      LODWORD(v248) = *(v220 + 4 * (v103[378] ^ 0x1BLL)) ^ 0x8B0C708B ^ __ROR4__(*(v220 + 4 * (v103[377] ^ 0xFLL)) ^ 0x8B0C7081, 24) ^ __ROR4__(*(v220 + 4 * (v103[376] ^ 0x74)) ^ 0xB0C70BC, 16) ^ __ROR4__(*(v220 + 4 * (v103[375] ^ 0x7ALL)) ^ 0xB0C70BB, 8);
      v103[375] = BYTE3(v248);
      v103[304] = HIBYTE(v254);
      v103[376] = BYTE2(v248);
      v103[305] = BYTE2(v254);
      v103[377] = BYTE1(v248);
      v103[306] = BYTE1(v254);
      v103[378] = v248;
      v103[307] = v254;
      v255 = v103[382] ^ 0xA0;
      v256 = v103[380];
      STACK[0x2818] = v256;
      LODWORD(v250) = *(v220 + 4 * (v103[310] ^ 0xF2)) ^ 0xB0C70FF;
      v257 = *(v220 + 4 * (v103[309] ^ 0xC7)) ^ 0x8B0C70E5;
      v258 = *(v220 + 4 * (v103[308] ^ 0x2CLL)) ^ 0xB0C7090;
      LODWORD(v247) = *(v220 + 4 * (v103[311] ^ 0x86));
      LODWORD(v255) = *(v220 + 4 * v255) ^ 0xB0C70D6 ^ __ROR4__(*(v220 + 4 * (v103[381] ^ 0xB8)) ^ 0xB0C70DA, 24) ^ __ROR4__(*(v220 + 4 * (v256 ^ 0xEC)) ^ 0xB0C70F0, 16) ^ __ROR4__(*(v220 + 4 * (v103[379] ^ 0x13)) ^ 0x8B0C708F, 8);
      v103[379] = BYTE3(v255);
      LODWORD(v247) = v247 ^ 0xB0C70C5 ^ __ROR4__(v250, 24) ^ __ROR4__(v257, 16) ^ __ROR4__(v258, 8);
      v103[308] = BYTE3(v247);
      v103[380] = BYTE2(v255);
      v103[309] = BYTE2(v247);
      v103[381] = BYTE1(v255);
      v103[310] = BYTE1(v247);
      v103[382] = v255;
      v103[311] = v247;
      v259 = *(v220 + 4 * ~v103[386]) ^ 0x8B0C70F9 ^ __ROR4__(*(v220 + 4 * (v103[385] ^ 0x1BLL)) ^ 0x8B0C708B, 24) ^ __ROR4__(*(v220 + 4 * (v103[384] ^ 0x3ELL)) ^ 0xB0C7099, 16) ^ __ROR4__(*(v220 + 4 * (v103[383] ^ 0x89)) ^ 0x8B0C70C2, 8);
      LODWORD(v253) = *(v220 + 4 * (v103[315] ^ 0x87)) ^ 0x8B0C70C5 ^ __ROR4__(*(v220 + 4 * (v103[314] ^ 0x7ALL)) ^ 0xB0C70BB, 24) ^ __ROR4__(*(v220 + 4 * (v103[313] ^ 0xAELL)) ^ 0xB0C70D1, 16) ^ __ROR4__(*(v220 + 4 * (v103[312] ^ 0xB8)) ^ 0xB0C70DA, 8);
      v103[383] = HIBYTE(v259);
      v103[312] = BYTE3(v253);
      v103[384] = BYTE2(v259);
      v103[313] = BYTE2(v253);
      v103[385] = BYTE1(v259);
      v103[314] = BYTE1(v253);
      v103[386] = v259;
      v103[315] = v253;
      v260 = v103[390] ^ 0x8DLL;
      v261 = *(v220 + 4 * (v103[389] ^ 0x6ALL)) ^ 0xB0C70B3;
      v262 = v103[388];
      STACK[0x24F8] = v262;
      v263 = *(v220 + 4 * v260) ^ LODWORD(STACK[0x3D70]) ^ __ROR4__(v261, 24) ^ __ROR4__(*(v220 + 4 * (v262 ^ 0xD7)) ^ 0x8B0C70ED, 16) ^ __ROR4__(*(v220 + 4 * (v103[387] ^ 0x30)) ^ 0xB0C709E, 8);
      LODWORD(v260) = *(v220 + 4 * (v103[319] ^ 0xEALL)) ^ 0xB0C70F3 ^ __ROR4__(*(v220 + 4 * (v103[318] ^ 0xE0)) ^ 0xB0C70F6, 24) ^ __ROR4__(*(v220 + 4 * (v103[317] ^ 0xBFLL)) ^ 0x8B0C70D9, 16) ^ __ROR4__(*(v220 + 4 * (v103[316] ^ 0x71)) ^ 0x8B0C70BE, 8);
      v103[387] = HIBYTE(v263);
      v103[316] = BYTE3(v260);
      v103[388] = BYTE2(v263);
      v103[317] = BYTE2(v260);
      v103[389] = BYTE1(v263);
      v103[318] = BYTE1(v260);
      v103[390] = v263;
      v103[319] = v260;
      v264 = v103[320];
      v265 = v103[321];
      v266 = v103[394];
      LODWORD(v245) = *(v220 + 4 * (v103[393] ^ 0xBFLL)) ^ 0x8B0C70D9;
      v267 = *(v220 + 4 * (v103[392] ^ 0x45)) ^ 0x8B0C70A4;
      v268 = v103[391] ^ 0xF3;
      v269 = v103[323] ^ 0xD3;
      v270 = v103[322];
      STACK[0x24F0] = v266;
      LODWORD(v219) = *(v220 + 4 * v269);
      LODWORD(v269) = *(v220 + 4 * (v270 ^ 0x6C)) ^ 0xB0C70B0;
      LODWORD(v265) = *(v220 + 4 * (v265 ^ 0x84)) ^ 0xB0C70C4;
      LODWORD(v264) = *(v220 + 4 * (v264 ^ 0xF4)) ^ 0xB0C70FC;
      LODWORD(v255) = *(v220 + 4 * (v266 ^ 0x87)) ^ 0x8B0C70C5 ^ __ROR4__(v245, 24) ^ __ROR4__(v267, 16) ^ __ROR4__(*(v220 + 4 * v268) ^ 0x8B0C70FF, 8);
      v103[391] = BYTE3(v255);
      LODWORD(v245) = v219 ^ 0x8B0C70EF ^ __ROR4__(v269, 24) ^ (v265 << 16) ^ WORD1(v265) ^ __ROR4__(v264, 8);
      v103[320] = BYTE3(v245);
      v103[392] = BYTE2(v255);
      v103[321] = BYTE2(v245);
      v103[393] = BYTE1(v255);
      v103[322] = BYTE1(v245);
      v103[394] = v255;
      LODWORD(v219) = LODWORD(STACK[0x3E40]) - LODWORD(STACK[0x3D78]);
      LODWORD(v264) = LODWORD(STACK[0x3D98]) - (LODWORD(STACK[0x3D90]) - LODWORD(STACK[0x3D80]));
      LODWORD(v269) = STACK[0x3D88];
      LODWORD(STACK[0x3E18]) ^= LODWORD(STACK[0x3D98]) ^ v264;
      v103[323] = v245;
      *STACK[0x3DA8] ^= 0x40u;
      LODWORD(STACK[0x3D98]) = (v269 - v219) ^ 0xE73FD74D;
      LODWORD(STACK[0x3E38]) = v264 ^ 0xE73FD74D;
      v271 = *(v10 + 8 * (v12 - 1));
      LODWORD(STACK[0x3BD0]) = 256;
      return v271();
    }

    else
    {
      v272 = LODWORD(STACK[0x3BD0]) + 64;
      v273 = STACK[0x705C];
      LODWORD(STACK[0x3BD0]) = v272;
      return (*(v10 + 8 * (((v273 == v272) * ((v12 ^ 0xFFFFBC9B) + v12 - 16456)) ^ (v12 - 1))))();
    }
  }

  else
  {
    v98 = STACK[0x3D18];
    if (v93 == 109)
    {
      v98[332] = STACK[0x5B31];
      v98[333] = STACK[0x5B32];
      v98[334] = STACK[0x5342];
      v98[336] = STACK[0x5B34];
      *STACK[0x3DA8] = STACK[0x5B35];
      v98[337] = STACK[0x5B36];
      v98[338] = STACK[0x5B33];
      v98[339] = STACK[0x5B37];
      v98[341] = STACK[0x5B39];
      v98[335] = STACK[0x5B38];
      v98[346] = STACK[0x5B3B];
      v98[340] = STACK[0x5B3A];
      v98[343] = STACK[0x5B3D];
      v98[342] = STACK[0x5B3C];
      v98[344] = STACK[0x5B3E];
      v98[345] = STACK[0x5B3F];
      v98[347] = STACK[0x5B40];
      v98[350] = STACK[0x5B41];
      v98[349] = STACK[0x5B42];
      v98[348] = STACK[0x5B43];
      v98[351] = STACK[0x5B44];
      v98[352] = STACK[0x5B45];
      v98[353] = STACK[0x5B46];
      v98[356] = STACK[0x5B48];
      v98[354] = STACK[0x5B47];
      v98[357] = STACK[0x5B49];
      v98[355] = STACK[0x5347];
      v98[358] = STACK[0x5B4A];
      v98[359] = STACK[0x5B4B];
      v98[361] = STACK[0x5B4C];
      v98[362] = STACK[0x5B4E];
      v98[360] = STACK[0x5B4D];
      v98[363] = STACK[0x5B4F];
      v98[364] = STACK[0x5B50];
      v98[366] = STACK[0x5B53];
      v98[368] = STACK[0x5B52];
      v98[370] = STACK[0x5B51];
      v98[367] = STACK[0x5B54];
      v98[371] = STACK[0x5B55];
      v98[374] = STACK[0x5B57];
      v98[365] = STACK[0x5B56];
      v98[369] = STACK[0x5B58];
      v98[373] = STACK[0x5B59];
      v98[375] = STACK[0x5B5A];
      v98[380] = STACK[0x5B5C];
      v98[377] = STACK[0x5B5D];
      v98[378] = STACK[0x5B5E];
      v98[372] = STACK[0x5B5B];
      v98[376] = STACK[0x5B5F];
      v98[384] = STACK[0x5243];
      v98[379] = STACK[0x5B60];
      v98[383] = STACK[0x5B63];
      v98[382] = STACK[0x5B62];
      v98[381] = STACK[0x5B61];
      v98[387] = STACK[0x5B64];
      v98[385] = STACK[0x5B65];
      v98[386] = STACK[0x5B66];
      v98[388] = STACK[0x5B67];
      v98[392] = STACK[0x5B68];
      v98[391] = STACK[0x5B69];
      v98[390] = STACK[0x5B6A];
      v98[389] = STACK[0x5B6C];
      v98[394] = STACK[0x5B6D];
      v98[393] = STACK[0x5B6B];
      v98[270] = STACK[0x5221];
      v98[264] = STACK[0x512A];
      v98[268] = STACK[0x5231];
      *STACK[0x3DA0] = STACK[0x5025];
      v98[271] = STACK[0x5199];
      v98[279] = STACK[0x5134];
      v98[261] = STACK[0x51D6];
      v98[266] = STACK[0x51EE];
      v98[262] = STACK[0x5131];
      v98[265] = STACK[0x5042];
      v98[273] = STACK[0x5238];
      v98[272] = STACK[0x521E];
      v98[267] = STACK[0x518D];
      v98[289] = STACK[0x5253];
      v98[276] = STACK[0x50B3];
      v98[263] = STACK[0x5107];
      v98[287] = STACK[0x51F7];
      v98[269] = STACK[0x50E7];
      v98[274] = STACK[0x515A];
      v98[282] = STACK[0x51CD];
      v98[275] = STACK[0x503B];
      v98[280] = STACK[0x5084];
      v98[293] = STACK[0x5035];
      v98[277] = STACK[0x51D4];
      v98[295] = STACK[0x51FF];
      v98[285] = STACK[0x5153];
      v98[278] = STACK[0x521D];
      v98[288] = STACK[0x510F];
      v98[281] = STACK[0x50CB];
      v98[299] = STACK[0x5200];
      v98[284] = STACK[0x512D];
      v98[292] = STACK[0x50C8];
      v98[296] = STACK[0x50B1];
      v98[290] = STACK[0x5167];
      v98[302] = STACK[0x521F];
      v98[283] = STACK[0x5147];
      v98[301] = STACK[0x51A2];
      v98[291] = STACK[0x51B5];
      v98[286] = STACK[0x505E];
      v98[300] = STACK[0x50CA];
      v98[297] = STACK[0x5030];
      v98[307] = STACK[0x517A];
      v98[298] = STACK[0x506D];
      v98[314] = STACK[0x50B0];
      v98[303] = STACK[0x50A7];
      v98[294] = STACK[0x51D3];
      v98[306] = STACK[0x51DD];
      v98[305] = STACK[0x50E5];
      v98[313] = STACK[0x51FD];
      v98[320] = STACK[0x50E1];
      v98[315] = STACK[0x5205];
      v98[304] = STACK[0x5100];
      v98[317] = STACK[0x50E4];
      v98[318] = STACK[0x5140];
      v98[310] = STACK[0x5254];
      v98[322] = STACK[0x505B];
      v98[309] = STACK[0x513C];
      v98[319] = STACK[0x5094];
      v98[321] = STACK[0x50DC];
      v98[316] = STACK[0x5110];
      v98[323] = STACK[0x50E6];
      v98[312] = STACK[0x5086];
      v98[311] = STACK[0x5219];
      v98[308] = STACK[0x503F];
      v99 = *(v10 + 8 * (v12 + 2375));
      STACK[0x2810] = LOBYTE(STACK[0x5B4D]);
      LODWORD(STACK[0x3BD0]) = 128;
      LODWORD(STACK[0x3BD8]) = 110;
      STACK[0x2410] = LOBYTE(STACK[0x5B6D]);
    }

    else
    {
      v98[336] = STACK[0x5B6E];
      *STACK[0x3DA8] = STACK[0x5B6F];
      v98[332] = STACK[0x5B70];
      v98[333] = STACK[0x5B71];
      v98[334] = STACK[0x5B72];
      v98[335] = STACK[0x5B73];
      v98[339] = STACK[0x5B75];
      v98[338] = STACK[0x5B74];
      v98[340] = STACK[0x5B76];
      v98[337] = STACK[0x5B77];
      v98[344] = STACK[0x5B78];
      v98[341] = STACK[0x5B79];
      v98[343] = STACK[0x4E91];
      v98[342] = STACK[0x5B7B];
      v98[346] = STACK[0x5B7A];
      v98[345] = STACK[0x5B7C];
      v98[347] = STACK[0x5B7D];
      v98[348] = STACK[0x5B7E];
      v98[349] = STACK[0x5B7F];
      v98[356] = STACK[0x5B81];
      v98[350] = STACK[0x5B80];
      v98[352] = STACK[0x5B82];
      v98[351] = STACK[0x5B83];
      v98[354] = STACK[0x5B84];
      v98[353] = STACK[0x5B85];
      v98[355] = STACK[0x5B86];
      v98[359] = STACK[0x5B87];
      v98[358] = STACK[0x5B88];
      v98[360] = STACK[0x5B8A];
      v98[361] = STACK[0x5B8B];
      v98[357] = STACK[0x5B89];
      v98[362] = STACK[0x5B8C];
      v98[363] = STACK[0x5B8D];
      v98[367] = STACK[0x5B8F];
      v98[368] = STACK[0x5B8E];
      v98[365] = STACK[0x5B90];
      v98[369] = STACK[0x5B92];
      v98[364] = STACK[0x5B91];
      v98[366] = STACK[0x534B];
      v98[373] = STACK[0x5349];
      v98[371] = STACK[0x5B93];
      v98[372] = STACK[0x5B94];
      v98[374] = STACK[0x5B95];
      v98[376] = STACK[0x5B96];
      v98[375] = STACK[0x5B98];
      v98[370] = STACK[0x5B97];
      v98[378] = STACK[0x5B99];
      v98[377] = STACK[0x5358];
      v98[383] = STACK[0x4E90];
      v98[381] = STACK[0x5B9A];
      v98[382] = STACK[0x5B9B];
      v98[379] = STACK[0x5B9C];
      v98[385] = STACK[0x5B9E];
      v98[387] = STACK[0x5B9D];
      v98[384] = STACK[0x5B9F];
      v98[380] = STACK[0x5BA0];
      v98[389] = STACK[0x5BA1];
      v98[386] = STACK[0x5BA2];
      v98[388] = STACK[0x5BA3];
      v98[392] = STACK[0x5BA4];
      v98[391] = STACK[0x5BA5];
      v98[390] = STACK[0x5BA6];
      v98[394] = STACK[0x535E];
      v98[393] = STACK[0x5BA7];
      v98[266] = STACK[0x521B];
      *STACK[0x3DA0] = STACK[0x5128];
      v98[263] = STACK[0x5121];
      v98[262] = STACK[0x514D];
      v98[269] = STACK[0x50C4];
      v98[278] = STACK[0x51AB];
      v98[268] = STACK[0x505A];
      v98[279] = STACK[0x51B1];
      v98[267] = STACK[0x51BF];
      v98[264] = STACK[0x5044];
      v98[273] = STACK[0x50F7];
      v98[270] = STACK[0x51FA];
      v98[277] = STACK[0x506C];
      v98[261] = STACK[0x51EB];
      v98[265] = STACK[0x51C5];
      v98[284] = STACK[0x5218];
      v98[293] = STACK[0x51CC];
      v98[272] = STACK[0x5255];
      v98[288] = STACK[0x503E];
      v98[271] = STACK[0x5228];
      v98[280] = STACK[0x5115];
      v98[276] = STACK[0x507B];
      v98[281] = STACK[0x51F0];
      v98[289] = STACK[0x5104];
      v98[275] = STACK[0x510E];
      v98[295] = STACK[0x5256];
      v98[291] = STACK[0x504F];
      v98[287] = STACK[0x51B0];
      v98[300] = STACK[0x5062];
      v98[290] = STACK[0x51C1];
      v98[282] = STACK[0x512E];
      v98[283] = STACK[0x51CB];
      v98[274] = STACK[0x51D1];
      v98[285] = STACK[0x50F2];
      v98[292] = STACK[0x51E9];
      v98[296] = STACK[0x5136];
      v98[310] = STACK[0x5031];
      v98[299] = STACK[0x51DB];
      v98[309] = STACK[0x50FE];
      v98[298] = STACK[0x5118];
      v98[302] = STACK[0x512F];
      v98[297] = STACK[0x51C6];
      v98[286] = STACK[0x50BF];
      v98[304] = STACK[0x51AD];
      v98[301] = STACK[0x5187];
      v98[294] = STACK[0x5163];
      v98[306] = STACK[0x50D8];
      v98[313] = STACK[0x5239];
      v98[305] = STACK[0x51C9];
      v98[303] = STACK[0x51A0];
      v98[320] = STACK[0x50D0];
      v98[311] = STACK[0x50A1];
      v98[314] = STACK[0x516B];
      v98[308] = STACK[0x50FF];
      v98[316] = STACK[0x51F3];
      v98[312] = STACK[0x5090];
      v98[318] = STACK[0x5126];
      v98[315] = STACK[0x511C];
      v98[307] = STACK[0x51D0];
      v98[317] = STACK[0x50B8];
      v98[319] = STACK[0x50F9];
      v98[321] = STACK[0x50C1];
      v98[322] = STACK[0x50F5];
      v98[323] = STACK[0x5206];
      v99 = *(v10 + 8 * (v12 - 2938));
      LODWORD(STACK[0x3BD0]) = 192;
      LODWORD(STACK[0x3BD8]) = 111;
      STACK[0x3590] = LOBYTE(STACK[0x5BA4]);
    }

    return v99();
  }
}

uint64_t sub_100B2CA7C()
{
  LODWORD(STACK[0x3D90]) = 0;
  v3 = STACK[0x3D10];
  v4 = STACK[0x3B38];
  v4[2086] = STACK[0x3D10];
  v4[2088] = v3 >> (v0 ^ 0x9F);
  v4[2087] = v1;
  v4[2089] = BYTE3(v3);
  v4[2090] = BYTE4(v3);
  v4[2092] = BYTE6(v3);
  v4[2093] = HIBYTE(v3);
  v4[2091] = BYTE5(v3);
  v5 = *(v2 + 8 * v0);
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D98]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3D80]) = 1;
  return v5();
}

uint64_t sub_100B2CAF4()
{
  v2 = *(STACK[0x1638] + 24);
  STACK[0xB70] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 1647503470) & 0x6232AFCB) - 10440)) | v0)))();
}

uint64_t sub_100B2CBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W6>, unsigned int a7@<W8>)
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  LODWORD(STACK[0x3290]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3298]) = 0;
  LODWORD(STACK[0x32A0]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x32A8]) = 0;
  LODWORD(STACK[0x3248]) = 0;
  LODWORD(STACK[0x2B98]) = 0;
  LODWORD(STACK[0x2BA0]) = 0;
  LODWORD(STACK[0x3250]) = 0;
  LODWORD(STACK[0x2BA8]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x3258]) = 0;
  LODWORD(STACK[0x2BD0]) = 0;
  LODWORD(STACK[0x2BD8]) = 0;
  LODWORD(STACK[0x3260]) = 0;
  LODWORD(STACK[0x2BE0]) = 0;
  LODWORD(STACK[0x2BE8]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x3270]) = 0;
  LODWORD(STACK[0x2BF0]) = 0;
  LODWORD(STACK[0x2BF8]) = 0;
  LODWORD(STACK[0x3278]) = 0;
  LODWORD(STACK[0x2C00]) = 0;
  LODWORD(STACK[0x2C08]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2C10]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  LODWORD(STACK[0x2BC8]) = 0;
  if (v10 < v9)
  {
    v8 = v7;
  }

  v13 = a7 + 979634826;
  v14 = *(v11 + 8 * a7);
  LODWORD(STACK[0x3D68]) = v13 & 0xC59BFADF;
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  STACK[0x11F0] = STACK[0x3B08];
  STACK[0x1208] = STACK[0x3D10];
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  STACK[0x11F8] = v12;
  LODWORD(STACK[0x3D20]) = STACK[0x3948];
  LODWORD(STACK[0x32D8]) = STACK[0x3540];
  LODWORD(STACK[0x1A70]) = STACK[0x3D38];
  LODWORD(STACK[0x3860]) = STACK[0x3710];
  LODWORD(STACK[0x31D0]) = a6;
  STACK[0x3620] = LODWORD(STACK[0x3D28]);
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  LODWORD(STACK[0x3D80]) = STACK[0x3810];
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  LODWORD(STACK[0x3AD8]) = 39;
  v15 = STACK[0x2928];
  LODWORD(STACK[0x3808]) = v8;
  LODWORD(STACK[0x2500]) = v8;
  return v14(a1, a2, a3, a4, a5, 0, v15, 0);
}

uint64_t sub_100B2CD1C@<X0>(int a1@<W8>)
{
  v7 = *(v1 + 8) / 1000;
  STACK[0x1310] -= 16;
  v8 = STACK[0x4D0];
  v8[1] = v7;
  v8[2] = a1;
  v8[3] = (*(v4 + 8 * (v5 ^ v2)))();
  *v8 = (*(v4 + 8 * (v5 + 2120268429)))();
  v9 = *(v4 + 8 * (v3 + v5 + 115));
  v10 = STACK[0x4A0] - ((2 * STACK[0x4A0]) & 0xDDA4C6CC) - 288201882;
  STACK[0x4C0] = 3 - 1534937323 * ((((2 * (v6 - 240)) | 0x86A3BBC075B0F104) - (v6 - 240) + 0x3CAE221FC527877ELL) ^ 0xE295522FC3683C5);
  LODWORD(STACK[0x490]) = v10 ^ 0xC95D8D21;
  LODWORD(STACK[0x480]) = 891837391;
  return v9();
}

uint64_t sub_100B2CEB0(uint64_t a1)
{
  *a1 = 16;
  *(a1 + 8) = 0;
  *(a1 + 40) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xD38CBDD3ACAFF84ALL;
  v3 = (*(v2 + 8 * (v1 ^ 0x2FCF)))(256) != 0;
  return (*(v2 + 8 * ((v3 * (((v1 - 2146669029) | 0x1930000) ^ 0x819F9035 ^ (v1 + 37298701) & 0xFDC6DFDB)) ^ v1)))();
}

uint64_t sub_100B2CF84@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5[2] = *(v7 + 8 * a2);
  *(a1 + 584) = v4;
  v5[400] = v3;
  v5[143] = v6;
  *(a1 + 168) = v6;
  v9 = v6 == 0x2369327399A66D95 || *(v6 - 0x2369327399A66D85) == 0x1883660EE8144416;
  return (*(v7 + 8 * ((v9 * ((v2 - 1260375440) ^ 0xB4E05954 ^ (v2 - 1260375440) & 0x4B1FDF56 ^ 0x79F9)) | v2)))();
}

uint64_t sub_100B2D088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v45 = LOBYTE(STACK[0x3F17]);
  v46 = *(*STACK[0x3E40] + (a42 & *v42));
  v47 = (v46 + STACK[0x1688]) ^ 0xC2AF3EAA3FF1B8E4;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = *(v43 + 8 * SLODWORD(STACK[0x44C0]));
  v50 = (__ROR8__(v47, 8) + v48) ^ 0x65F254DD188DB4FCLL;
  STACK[0x3150] = LOBYTE(STACK[0x44C4]);
  STACK[0x3BB0] = LOBYTE(STACK[0x44C6]);
  STACK[0x3040] = LOBYTE(STACK[0x44C7]);
  STACK[0x24E0] = LOBYTE(STACK[0x44DC]);
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x6FF046966119128DLL;
  STACK[0x24D0] = LOBYTE(STACK[0x44DD]);
  STACK[0x2390] = LOBYTE(STACK[0x44DE]);
  v53 = v52 ^ __ROR8__(v51, 61);
  STACK[0x33D0] = LOBYTE(STACK[0x44DF]);
  STACK[0x3D30] = LOBYTE(STACK[0x44FE]);
  v54 = __ROR8__(v52, 8);
  STACK[0x2630] = LOBYTE(STACK[0x44FF]);
  STACK[0x3C80] = LOBYTE(STACK[0x450C]);
  v55 = (((2 * (v54 + v53)) & 0x8072346624925A30) - (v54 + v53) - 0x40391A3312492D19) ^ 0x1E7478093AC0C1CCLL;
  STACK[0x2768] = LOBYTE(STACK[0x450D]);
  STACK[0x3588] = LOBYTE(STACK[0x450F]);
  v56 = v55 ^ __ROR8__(v53, 61);
  STACK[0x3B48] = LOBYTE(STACK[0x451F]);
  STACK[0x3BB8] = LOBYTE(STACK[0x452E]);
  v57 = __ROR8__(v55, 8);
  STACK[0x2C88] = LOBYTE(STACK[0x452F]);
  STACK[0x2520] = LOBYTE(STACK[0x453A]);
  v58 = (v57 + v56 - ((2 * (v57 + v56)) & 0x60A71D625C9922CELL) + 0x30538EB12E4C9167) ^ 0xDF57AEF0DBA9D98BLL;
  STACK[0x3878] = LOBYTE(STACK[0x453B]);
  STACK[0x3C78] = LOBYTE(STACK[0x6BE0]);
  v59 = v58 ^ __ROR8__(v56, 61);
  STACK[0x30E0] = LOBYTE(STACK[0x6BE1]);
  STACK[0x2380] = LOBYTE(STACK[0x6BE2]);
  v60 = __ROR8__(v58, 8);
  STACK[0x2880] = LOBYTE(STACK[0x6BE3]);
  STACK[0x1AF0] = LOBYTE(STACK[0x6BE4]);
  v61 = (((v60 + v59) | 0xA940DB8C4DE645B2) - ((v60 + v59) | 0x56BF2473B219BA4DLL) + 0x56BF2473B219BA4DLL) ^ 0x7187689387FF9C6CLL;
  STACK[0x3140] = LOBYTE(STACK[0x6BE5]);
  v62 = v61 ^ __ROR8__(v59, 61);
  STACK[0x2DD8] = LOBYTE(STACK[0x6BE6]);
  v63 = __ROR8__(v61, 8);
  STACK[0x2790] = LOBYTE(STACK[0x6BE7]);
  STACK[0x2648] = LOBYTE(STACK[0x6BE8]);
  v64 = (v63 + v62 - ((2 * (v63 + v62)) & 0x47A0B34D18D2A3EELL) - 0x5C2FA6597396AE09) ^ 0xF785588806D89278;
  STACK[0x2F78] = LOBYTE(STACK[0x6BE9]);
  STACK[0x2640] = LOBYTE(STACK[0x6BEB]);
  LODWORD(STACK[0x11EC]) = (((__ROR8__(v64, 8) + (v64 ^ __ROR8__(v62, 61))) ^ 0x6F4F60BC0E025EE0) >> STACK[0x1680]) ^ v45;
  STACK[0x31E0] = LODWORD(STACK[0x6BEC]);
  STACK[0x3CF0] = LODWORD(STACK[0x6BF0]);
  LODWORD(STACK[0x3370]) = STACK[0x6BF4];
  LODWORD(STACK[0x3378]) = STACK[0x6BF8];
  LODWORD(STACK[0x34E0]) = STACK[0x6BFC];
  LODWORD(STACK[0x20C4]) = STACK[0x6C00];
  LODWORD(STACK[0x2098]) = STACK[0x6C04];
  STACK[0x3D28] = LODWORD(STACK[0x6C08]);
  LODWORD(STACK[0x2090]) = STACK[0x6C0C];
  STACK[0x3D68] = LODWORD(STACK[0x6C10]);
  STACK[0x37F0] = LODWORD(STACK[0x6C14]);
  LODWORD(STACK[0x2088]) = STACK[0x6C18];
  STACK[0x3D78] = LODWORD(STACK[0x6C1C]);
  LODWORD(STACK[0x3D10]) = STACK[0x6C2C];
  LODWORD(STACK[0x1780]) = LOBYTE(STACK[0x6D3E]);
  STACK[0x2E90] = LOBYTE(STACK[0x6D3F]);
  STACK[0x36E0] = LOBYTE(STACK[0x6D40]);
  LODWORD(STACK[0x1F6C]) = LOBYTE(STACK[0x6D41]);
  STACK[0x2D68] = LOBYTE(STACK[0x6D42]);
  STACK[0x2268] = LOBYTE(STACK[0x6D43]);
  STACK[0x2358] = LOBYTE(STACK[0x6D44]);
  STACK[0x3088] = LOBYTE(STACK[0x6D45]);
  LODWORD(STACK[0x1EAC]) = LOBYTE(STACK[0x6D46]);
  STACK[0x2D60] = LOBYTE(STACK[0x6D47]);
  STACK[0x2278] = LOBYTE(STACK[0x6D48]);
  STACK[0x33B8] = LOBYTE(STACK[0x6D49]);
  LODWORD(STACK[0x1E80]) = LOBYTE(STACK[0x6D4A]);
  LODWORD(STACK[0x39E8]) = LOBYTE(STACK[0x6D4B]);
  LODWORD(STACK[0x1774]) = LOBYTE(STACK[0x6D4C]);
  STACK[0x2CA0] = LOBYTE(STACK[0x6D4D]);
  STACK[0x3590] = LOBYTE(STACK[0x6D4E]);
  STACK[0x2D58] = LOBYTE(STACK[0x6D4F]);
  LODWORD(STACK[0x17A4]) = LOBYTE(STACK[0x6D50]);
  STACK[0x36C0] = LOBYTE(STACK[0x6D51]);
  STACK[0x2290] = LOBYTE(STACK[0x6D52]);
  STACK[0x1800] = LOBYTE(STACK[0x6D54]);
  STACK[0x2128] = LOBYTE(STACK[0x6D55]);
  STACK[0x3C60] = LOBYTE(STACK[0x6D56]);
  STACK[0x2FC8] = LOBYTE(STACK[0x6D57]);
  STACK[0x2D20] = LOBYTE(STACK[0x6D58]);
  STACK[0x30C0] = LOBYTE(STACK[0x6D59]);
  STACK[0x2788] = LOBYTE(STACK[0x6D5A]);
  LODWORD(STACK[0x1EA4]) = LOBYTE(STACK[0x6D5B]);
  STACK[0x26C0] = LOBYTE(STACK[0x6D5C]);
  STACK[0x26A0] = LOBYTE(STACK[0x6D5D]);
  LODWORD(STACK[0x1764]) = LOBYTE(STACK[0x6D5E]);
  STACK[0x2340] = LOBYTE(STACK[0x6D5F]);
  STACK[0x2DB0] = LOBYTE(STACK[0x6D60]);
  STACK[0x2C90] = LOBYTE(STACK[0x6D61]);
  STACK[0x2F40] = LOBYTE(STACK[0x6D62]);
  LODWORD(STACK[0x1738]) = LOBYTE(STACK[0x6D63]);
  STACK[0x2F50] = LOBYTE(STACK[0x6D64]);
  STACK[0x2CF0] = LOBYTE(STACK[0x6D65]);
  STACK[0x2E40] = LOBYTE(STACK[0x6D66]);
  LODWORD(STACK[0x17FC]) = LOBYTE(STACK[0x6D67]);
  STACK[0x1C80] = LOBYTE(STACK[0x6D68]);
  STACK[0x3B88] = LOBYTE(STACK[0x6D69]);
  STACK[0x3098] = LOBYTE(STACK[0x6D6A]);
  LODWORD(STACK[0x1F5C]) = LOBYTE(STACK[0x6D6B]);
  LODWORD(STACK[0x1768]) = LOBYTE(STACK[0x6D6C]);
  LODWORD(STACK[0x1838]) = LOBYTE(STACK[0x6D6D]);
  STACK[0x2678] = LOBYTE(STACK[0x6D6E]);
  STACK[0x2770] = LOBYTE(STACK[0x6D6F]);
  STACK[0x2378] = LOBYTE(STACK[0x6D70]);
  STACK[0x2CB8] = LOBYTE(STACK[0x6D71]);
  STACK[0x2680] = LOBYTE(STACK[0x6D72]);
  STACK[0x1C58] = LOBYTE(STACK[0x6D74]);
  STACK[0x3788] = LOBYTE(STACK[0x6D75]);
  STACK[0x27F0] = LOBYTE(STACK[0x6D76]);
  STACK[0x3450] = LOBYTE(STACK[0x6D77]);
  STACK[0x1820] = LOBYTE(STACK[0x6D78]);
  LODWORD(STACK[0x1FC4]) = LOBYTE(STACK[0x6D79]);
  LODWORD(STACK[0x1F58]) = LOBYTE(STACK[0x6D7A]);
  STACK[0x25D8] = LOBYTE(STACK[0x6D7B]);
  LODWORD(STACK[0x1FD4]) = LOBYTE(STACK[0x6D7C]);
  STACK[0x28C0] = LOBYTE(STACK[0x6D7D]);
  STACK[0x3758] = LOBYTE(STACK[0x6D7E]);
  STACK[0x2D10] = LOBYTE(STACK[0x6D7F]);
  STACK[0x22E0] = LOBYTE(STACK[0x6D80]);
  STACK[0x2410] = LOBYTE(STACK[0x6D81]);
  STACK[0x2F80] = LOBYTE(STACK[0x6D82]);
  LODWORD(STACK[0x1770]) = LOBYTE(STACK[0x6D83]);
  LODWORD(STACK[0x1784]) = LOBYTE(STACK[0x6D84]);
  STACK[0x3000] = LOBYTE(STACK[0x6D85]);
  STACK[0x2C98] = LOBYTE(STACK[0x6D86]);
  STACK[0x3478] = LOBYTE(STACK[0x6D87]);
  STACK[0x1E90] = LOBYTE(STACK[0x6D88]);
  STACK[0x22F8] = LOBYTE(STACK[0x6D89]);
  STACK[0x2FF8] = LOBYTE(STACK[0x6D8A]);
  STACK[0x1F60] = LOBYTE(STACK[0x6D8B]);
  LODWORD(STACK[0x176C]) = LOBYTE(STACK[0x6D8C]);
  LODWORD(STACK[0x1E98]) = LOBYTE(STACK[0x6D8D]);
  LODWORD(STACK[0x21D4]) = LOBYTE(STACK[0x6D8E]);
  STACK[0x2408] = LOBYTE(STACK[0x6D8F]);
  STACK[0x30A8] = LOBYTE(STACK[0x6D90]);
  STACK[0x2718] = LOBYTE(STACK[0x6D91]);
  STACK[0x1FC8] = LOBYTE(STACK[0x6D92]);
  LODWORD(STACK[0x1EA8]) = LOBYTE(STACK[0x6D93]);
  STACK[0x3BF8] = LOBYTE(STACK[0x6D94]);
  LODWORD(STACK[0x1E9C]) = LOBYTE(STACK[0x6D95]);
  STACK[0x2E88] = LOBYTE(STACK[0x6D96]);
  STACK[0x3BE8] = LOBYTE(STACK[0x6D97]);
  STACK[0x26A8] = LOBYTE(STACK[0x6D98]);
  STACK[0x1C38] = LOBYTE(STACK[0x6D99]);
  STACK[0x36F0] = LOBYTE(STACK[0x6D9A]);
  STACK[0x2868] = LOBYTE(STACK[0x6D9B]);
  STACK[0x2D18] = LOBYTE(STACK[0x6D9C]);
  STACK[0x2950] = LOBYTE(STACK[0x6D9D]);
  STACK[0x2780] = LOBYTE(STACK[0x6D9E]);
  LODWORD(STACK[0x1754]) = LOBYTE(STACK[0x6D9F]);
  STACK[0x2DA8] = LOBYTE(STACK[0x6DA0]);
  STACK[0x2FA8] = LOBYTE(STACK[0x6DA1]);
  LODWORD(STACK[0x1FC0]) = LOBYTE(STACK[0x6DA2]);
  LODWORD(STACK[0x1760]) = LOBYTE(STACK[0x6DA4]);
  STACK[0x28E0] = LOBYTE(STACK[0x6DA5]);
  STACK[0x2A28] = LOBYTE(STACK[0x6DA6]);
  STACK[0x2D90] = LOBYTE(STACK[0x6DA7]);
  LODWORD(STACK[0x175C]) = LOBYTE(STACK[0x6DA8]);
  STACK[0x2ED0] = LOBYTE(STACK[0x6DAA]);
  STACK[0x1E88] = LOBYTE(STACK[0x6DAB]);
  STACK[0x3730] = LOBYTE(STACK[0x6DAC]);
  STACK[0x3BD8] = LOBYTE(STACK[0x6DAD]);
  LODWORD(STACK[0x1EA0]) = LOBYTE(STACK[0x6DAE]);
  STACK[0x2F90] = LOBYTE(STACK[0x6DAF]);
  STACK[0x25C8] = LOBYTE(STACK[0x6DB0]);
  STACK[0x25C0] = LOBYTE(STACK[0x6DB1]);
  STACK[0x3050] = LOBYTE(STACK[0x6DB2]);
  STACK[0x25A8] = LOBYTE(STACK[0x6DB3]);
  LODWORD(STACK[0x1FB8]) = LOBYTE(STACK[0x6DB4]);
  STACK[0x3058] = LOBYTE(STACK[0x6DB5]);
  LODWORD(STACK[0x1F54]) = LOBYTE(STACK[0x6DB6]);
  STACK[0x2E70] = LOBYTE(STACK[0x6DB7]);
  STACK[0x3070] = LOBYTE(STACK[0x6DB8]);
  LODWORD(STACK[0x1758]) = LOBYTE(STACK[0x6DB9]);
  LODWORD(STACK[0x179C]) = LOBYTE(STACK[0x6DBB]);
  STACK[0x2D00] = LOBYTE(STACK[0x6DBC]);
  LODWORD(STACK[0x174C]) = LOBYTE(STACK[0x6DBD]);
  STACK[0x2D98] = LOBYTE(STACK[0x6DBF]);
  STACK[0x3008] = LOBYTE(STACK[0x6DC0]);
  LODWORD(STACK[0x177C]) = LOBYTE(STACK[0x6DC1]);
  STACK[0x26B8] = LOBYTE(STACK[0x6DC2]);
  STACK[0x22C0] = LOBYTE(STACK[0x6DC3]);
  STACK[0x2CA8] = LOBYTE(STACK[0x6DC4]);
  STACK[0x2910] = LOBYTE(STACK[0x6DC5]);
  LODWORD(STACK[0x1750]) = LOBYTE(STACK[0x6DC6]);
  STACK[0x34A0] = LOBYTE(STACK[0x6DC7]);
  STACK[0x2C70] = LOBYTE(STACK[0x6DC8]);
  STACK[0x17F0] = LOBYTE(STACK[0x6DC9]);
  STACK[0x2860] = LOBYTE(STACK[0x6DCA]);
  STACK[0x2D08] = LOBYTE(STACK[0x6DCB]);
  LODWORD(STACK[0x1FB4]) = LOBYTE(STACK[0x6DCC]);
  STACK[0x30E8] = LOBYTE(STACK[0x6DCD]);
  STACK[0x2FA0] = LOBYTE(STACK[0x6DCE]);
  LODWORD(STACK[0x1F4C]) = LOBYTE(STACK[0x6DCF]);
  LODWORD(STACK[0x1FBC]) = LOBYTE(STACK[0x6DD0]);
  STACK[0x28A0] = LOBYTE(STACK[0x6DD1]);
  STACK[0x2368] = LOBYTE(STACK[0x6DD2]);
  STACK[0x2280] = LOBYTE(STACK[0x6DD3]);
  STACK[0x2F48] = LOBYTE(STACK[0x6DD4]);
  STACK[0x2EF0] = LOBYTE(STACK[0x6DD5]);
  LODWORD(STACK[0x1FB0]) = LOBYTE(STACK[0x6DD6]);
  LODWORD(STACK[0x17F8]) = LOBYTE(STACK[0x6DD7]);
  STACK[0x3C00] = LOBYTE(STACK[0x6DD8]);
  STACK[0x34B8] = LOBYTE(STACK[0x6DD9]);
  STACK[0x2D80] = LOBYTE(STACK[0x6DDA]);
  STACK[0x3C70] = LOBYTE(STACK[0x6DDB]);
  STACK[0x3020] = LOBYTE(STACK[0x6DDC]);
  STACK[0x2750] = LOBYTE(STACK[0x6DDD]);
  STACK[0x21D8] = LOBYTE(STACK[0x6DDE]);
  STACK[0x3468] = LOBYTE(STACK[0x6DDF]);
  STACK[0x3028] = LOBYTE(STACK[0x6DE0]);
  LODWORD(STACK[0x1E84]) = LOBYTE(STACK[0x6DE1]);
  STACK[0x17E8] = LOBYTE(STACK[0x6DE2]);
  STACK[0x2610] = LOBYTE(STACK[0x6DE3]);
  STACK[0x2D70] = LOBYTE(STACK[0x6DE4]);
  STACK[0x3CB8] = LOBYTE(STACK[0x6DE5]);
  STACK[0x3D60] = LOBYTE(STACK[0x6DE6]);
  LODWORD(STACK[0x1748]) = LOBYTE(STACK[0x6DE7]);
  STACK[0x33F0] = LOBYTE(STACK[0x6DE8]);
  STACK[0x2A00] = LOBYTE(STACK[0x6DE9]);
  STACK[0x3030] = LOBYTE(STACK[0x6DEA]);
  STACK[0x2E50] = LOBYTE(STACK[0x6DEB]);
  STACK[0x1FA8] = LOBYTE(STACK[0x6DEC]);
  STACK[0x2900] = LOBYTE(STACK[0x6DED]);
  STACK[0x3CB0] = LOBYTE(STACK[0x6DEE]);
  STACK[0x30F8] = LOBYTE(STACK[0x6DEF]);
  LODWORD(STACK[0x1F50]) = LOBYTE(STACK[0x6DF0]);
  LODWORD(STACK[0x1E7C]) = LOBYTE(STACK[0x6DF1]);
  STACK[0x3038] = LOBYTE(STACK[0x6DF2]);
  STACK[0x17E0] = LOBYTE(STACK[0x6DF3]);
  STACK[0x3108] = LOBYTE(STACK[0x6DF4]);
  STACK[0x2710] = LOBYTE(STACK[0x6DF5]);
  STACK[0x31B8] = LOBYTE(STACK[0x6DF6]);
  STACK[0x28F0] = LOBYTE(STACK[0x6DF7]);
  STACK[0x1C48] = LOBYTE(STACK[0x6DF8]);
  STACK[0x2DF0] = LOBYTE(STACK[0x6DF9]);
  STACK[0x2EE0] = LOBYTE(STACK[0x6DFA]);
  LODWORD(STACK[0x1E78]) = LOBYTE(STACK[0x6DFB]);
  LODWORD(STACK[0x173C]) = LOBYTE(STACK[0x6DFC]);
  STACK[0x25B8] = LOBYTE(STACK[0x6DFE]);
  STACK[0x23A0] = LOBYTE(STACK[0x6DFF]);
  STACK[0x2348] = LOBYTE(STACK[0x6E00]);
  LODWORD(STACK[0x1C78]) = LOBYTE(STACK[0x6E01]);
  STACK[0x27A8] = LOBYTE(STACK[0x6E02]);
  STACK[0x2EE8] = LOBYTE(STACK[0x6E03]);
  STACK[0x27D8] = LOBYTE(STACK[0x6E04]);
  STACK[0x3C18] = LOBYTE(STACK[0x6E05]);
  STACK[0x3B98] = LOBYTE(STACK[0x6E06]);
  STACK[0x2A20] = LOBYTE(STACK[0x6E07]);
  LODWORD(STACK[0x1740]) = LOBYTE(STACK[0x6E08]);
  LODWORD(STACK[0x23F8]) = LOBYTE(STACK[0x6E09]);
  STACK[0x2318] = LOBYTE(STACK[0x6E0A]);
  LODWORD(STACK[0x1F48]) = LOBYTE(STACK[0x6E0B]);
  STACK[0x34F0] = LOBYTE(STACK[0x6E0C]);
  STACK[0x2990] = LOBYTE(STACK[0x6E0D]);
  LODWORD(STACK[0x1E74]) = LOBYTE(STACK[0x6E0E]);
  STACK[0x3068] = LOBYTE(STACK[0x6E0F]);
  LODWORD(STACK[0x1778]) = LOBYTE(STACK[0x6E10]);
  STACK[0x3BA8] = LOBYTE(STACK[0x6E11]);
  STACK[0x34E8] = LOBYTE(STACK[0x6E12]);
  STACK[0x1808] = LOBYTE(STACK[0x6F60]);
  STACK[0x23E8] = LOBYTE(STACK[0x6F5A]);
  LODWORD(STACK[0x1730]) = LOBYTE(STACK[0x6F5B]);
  STACK[0x2F08] = LOBYTE(STACK[0x6F5C]);
  STACK[0x2740] = LOBYTE(STACK[0x6F5D]);
  LODWORD(STACK[0x33E4]) = LOBYTE(STACK[0x6F5E]);
  STACK[0x2F28] = LOBYTE(STACK[0x6F5F]);
  STACK[0x2F68] = LOBYTE(STACK[0x6F54]);
  STACK[0x3D50] = LOBYTE(STACK[0x6F55]);
  STACK[0x2858] = LOBYTE(STACK[0x6F56]);
  STACK[0x1E50] = LOBYTE(STACK[0x6F57]);
  LODWORD(STACK[0x172C]) = LOBYTE(STACK[0x6F58]);
  LODWORD(STACK[0x1F38]) = LOBYTE(STACK[0x6F59]);
  STACK[0x3BC8] = LOBYTE(STACK[0x6F4D]);
  STACK[0x25B0] = LOBYTE(STACK[0x6F4E]);
  LODWORD(STACK[0x1724]) = LOBYTE(STACK[0x6F4F]);
  LODWORD(STACK[0x1728]) = LOBYTE(STACK[0x6F50]);
  STACK[0x2E58] = LOBYTE(STACK[0x6F51]);
  LODWORD(STACK[0x1E58]) = LOBYTE(STACK[0x6F53]);
  STACK[0x3120] = LOBYTE(STACK[0x6F47]);
  LODWORD(STACK[0x170C]) = LOBYTE(STACK[0x6F48]);
  STACK[0x35D0] = LOBYTE(STACK[0x6F49]);
  LODWORD(STACK[0x1FA4]) = LOBYTE(STACK[0x6F4A]);
  STACK[0x26F8] = LOBYTE(STACK[0x6F4B]);
  LODWORD(STACK[0x1E60]) = LOBYTE(STACK[0x6F4C]);
  STACK[0x2EC8] = LOBYTE(STACK[0x6F41]);
  STACK[0x32B8] = LOBYTE(STACK[0x6F42]);
  STACK[0x2998] = LOBYTE(STACK[0x6F43]);
  STACK[0x2270] = LOBYTE(STACK[0x6F44]);
  LODWORD(STACK[0x1720]) = LOBYTE(STACK[0x6F45]);
  LODWORD(STACK[0x1E48]) = LOBYTE(STACK[0x6F46]);
  LODWORD(STACK[0x1F30]) = LOBYTE(STACK[0x6F3B]);
  STACK[0x2120] = LOBYTE(STACK[0x6F3C]);
  LODWORD(STACK[0x23E0]) = LOBYTE(STACK[0x6F3D]);
  LODWORD(STACK[0x1F40]) = LOBYTE(STACK[0x6F3E]);
  STACK[0x2C40] = LOBYTE(STACK[0x6F3F]);
  LODWORD(STACK[0x1E30]) = LOBYTE(STACK[0x6F40]);
  LODWORD(STACK[0x1E28]) = LOBYTE(STACK[0x6F35]);
  STACK[0x31F0] = LOBYTE(STACK[0x6F36]);
  STACK[0x3128] = LOBYTE(STACK[0x6F37]);
  STACK[0x26C8] = LOBYTE(STACK[0x6F38]);
  STACK[0x27C0] = LOBYTE(STACK[0x6F39]);
  LODWORD(STACK[0x171C]) = LOBYTE(STACK[0x6F3A]);
  STACK[0x2808] = LOBYTE(STACK[0x6F2F]);
  STACK[0x3060] = LOBYTE(STACK[0x6F30]);
  LODWORD(STACK[0x1718]) = LOBYTE(STACK[0x6F31]);
  LODWORD(STACK[0x1700]) = LOBYTE(STACK[0x6F32]);
  LODWORD(STACK[0x1F44]) = LOBYTE(STACK[0x6F33]);
  STACK[0x17C0] = LOBYTE(STACK[0x6F34]);
  STACK[0x1E38] = LOBYTE(STACK[0x6F29]);
  STACK[0x2DA0] = LOBYTE(STACK[0x6F2A]);
  STACK[0x17C8] = LOBYTE(STACK[0x6F2B]);
  LODWORD(STACK[0x1714]) = LOBYTE(STACK[0x6F2C]);
  LODWORD(STACK[0x1704]) = LOBYTE(STACK[0x6F2D]);
  STACK[0x1E00] = LOBYTE(STACK[0x6F2E]);
  STACK[0x2DC8] = LOBYTE(STACK[0x6F23]);
  STACK[0x3750] = LOBYTE(STACK[0x6F24]);
  STACK[0x3C10] = LOBYTE(STACK[0x6F25]);
  LODWORD(STACK[0x1710]) = LOBYTE(STACK[0x6F26]);
  STACK[0x2D78] = LOBYTE(STACK[0x6F27]);
  LODWORD(STACK[0x16FC]) = LOBYTE(STACK[0x6F28]);
  LODWORD(STACK[0x1E2C]) = LOBYTE(STACK[0x6F1D]);
  LODWORD(STACK[0x1744]) = LOBYTE(STACK[0x6F1E]);
  LODWORD(STACK[0x1F2C]) = LOBYTE(STACK[0x6F1F]);
  STACK[0x21E8] = LOBYTE(STACK[0x6F20]);
  LODWORD(STACK[0x1E34]) = LOBYTE(STACK[0x6F21]);
  STACK[0x22B8] = LOBYTE(STACK[0x6F22]);
  STACK[0x1818] = LOBYTE(STACK[0x6F16]);
  LODWORD(STACK[0x1E4C]) = LOBYTE(STACK[0x6F17]);
  STACK[0x1E40] = LOBYTE(STACK[0x6F18]);
  STACK[0x2F30] = LOBYTE(STACK[0x6F1A]);
  STACK[0x27E8] = LOBYTE(STACK[0x6F1B]);
  STACK[0x3160] = LOBYTE(STACK[0x6F1C]);
  STACK[0x2918] = LOBYTE(STACK[0x6F10]);
  STACK[0x30C8] = LOBYTE(STACK[0x6F11]);
  STACK[0x3CC0] = LOBYTE(STACK[0x6F12]);
  STACK[0x2518] = LOBYTE(STACK[0x6F13]);
  LODWORD(STACK[0x1F3C]) = LOBYTE(STACK[0x6F14]);
  STACK[0x2F18] = LOBYTE(STACK[0x6F15]);
  LODWORD(STACK[0x1DEC]) = LOBYTE(STACK[0x6F0A]);
  LODWORD(STACK[0x1708]) = LOBYTE(STACK[0x6F0B]);
  STACK[0x1DD8] = LOBYTE(STACK[0x6F0C]);
  STACK[0x2D40] = LOBYTE(STACK[0x6F0D]);
  LODWORD(STACK[0x1FA0]) = LOBYTE(STACK[0x6F0E]);
  STACK[0x22A8] = LOBYTE(STACK[0x6F0F]);
  STACK[0x2EC0] = LOBYTE(STACK[0x6F04]);
  STACK[0x2DE8] = LOBYTE(STACK[0x6F05]);
  STACK[0x2F98] = LOBYTE(STACK[0x6F06]);
  STACK[0x3C20] = LOBYTE(STACK[0x6F07]);
  STACK[0x2E30] = LOBYTE(STACK[0x6F08]);
  STACK[0x2A10] = LOBYTE(STACK[0x6F09]);
  STACK[0x3C08] = LOBYTE(STACK[0x6EFE]);
  STACK[0x2D50] = LOBYTE(STACK[0x6EFF]);
  STACK[0x3568] = LOBYTE(STACK[0x6F00]);
  STACK[0x23D8] = LOBYTE(STACK[0x6F01]);
  LODWORD(STACK[0x1FEC]) = LOBYTE(STACK[0x6F02]);
  STACK[0x1DC8] = LOBYTE(STACK[0x6F03]);
  LODWORD(STACK[0x16F8]) = LOBYTE(STACK[0x6EF8]);
  LODWORD(STACK[0x1C70]) = LOBYTE(STACK[0x6EF9]);
  STACK[0x27A0] = LOBYTE(STACK[0x6EFA]);
  STACK[0x3CD8] = LOBYTE(STACK[0x6EFB]);
  STACK[0x2E28] = LOBYTE(STACK[0x6EFC]);
  LODWORD(STACK[0x1F34]) = LOBYTE(STACK[0x6EFD]);
  STACK[0x2738] = LOBYTE(STACK[0x6EF1]);
  STACK[0x2C68] = LOBYTE(STACK[0x6EF2]);
  STACK[0x3BF0] = LOBYTE(STACK[0x6EF3]);
  STACK[0x2008] = LOBYTE(STACK[0x6EF4]);
  LODWORD(STACK[0x1E14]) = LOBYTE(STACK[0x6EF6]);
  LODWORD(STACK[0x16F0]) = LOBYTE(STACK[0x6EF7]);
  STACK[0x2CB0] = LOBYTE(STACK[0x6EEB]);
  STACK[0x2F58] = LOBYTE(STACK[0x6EEC]);
  LODWORD(STACK[0x21D0]) = LOBYTE(STACK[0x6EED]);
  STACK[0x3D48] = LOBYTE(STACK[0x6EEE]);
  STACK[0x3498] = LOBYTE(STACK[0x6EEF]);
  STACK[0x1E08] = LOBYTE(STACK[0x6EF0]);
  STACK[0x3080] = LOBYTE(STACK[0x6EE5]);
  STACK[0x2EA8] = LOBYTE(STACK[0x6EE6]);
  STACK[0x2E80] = LOBYTE(STACK[0x6EE7]);
  STACK[0x25E0] = LOBYTE(STACK[0x6EE8]);
  STACK[0x30F0] = LOBYTE(STACK[0x6EE9]);
  STACK[0x2190] = LOBYTE(STACK[0x6EEA]);
  LODWORD(STACK[0x1DD4]) = LOBYTE(STACK[0x6EDF]);
  STACK[0x1DF0] = LOBYTE(STACK[0x6EE0]);
  LODWORD(STACK[0x1F20]) = LOBYTE(STACK[0x6EE1]);
  LODWORD(STACK[0x1D88]) = LOBYTE(STACK[0x6EE2]);
  STACK[0x33C8] = LOBYTE(STACK[0x6EE3]);
  STACK[0x1E18] = LOBYTE(STACK[0x6EE4]);
  STACK[0x17B0] = LOBYTE(STACK[0x6ED9]);
  LODWORD(STACK[0x1DFC]) = LOBYTE(STACK[0x6EDA]);
  STACK[0x1DA0] = LOBYTE(STACK[0x6EDB]);
  LODWORD(STACK[0x1E24]) = LOBYTE(STACK[0x6EDC]);
  STACK[0x2DD0] = LOBYTE(STACK[0x6EDD]);
  LODWORD(STACK[0x1F9C]) = LOBYTE(STACK[0x6EDE]);
  LODWORD(STACK[0x1F28]) = LOBYTE(STACK[0x6ED2]);
  STACK[0x2310] = LOBYTE(STACK[0x6ED3]);
  LODWORD(STACK[0x1E20]) = LOBYTE(STACK[0x6ED5]);
  STACK[0x1D98] = LOBYTE(STACK[0x6ED6]);
  STACK[0x3938] = LOBYTE(STACK[0x6ED7]);
  LODWORD(STACK[0x16F4]) = LOBYTE(STACK[0x6ED8]);
  STACK[0x2E48] = LOBYTE(STACK[0x6ECC]);
  STACK[0x2830] = LOBYTE(STACK[0x6ECD]);
  LODWORD(STACK[0x1F24]) = LOBYTE(STACK[0x6ECE]);
  STACK[0x3298] = LOBYTE(STACK[0x6ECF]);
  STACK[0x3848] = LOBYTE(STACK[0x6ED0]);
  LODWORD(STACK[0x16E4]) = LOBYTE(STACK[0x6ED1]);
  STACK[0x3B90] = LOBYTE(STACK[0x6EC6]);
  STACK[0x22C8] = LOBYTE(STACK[0x6EC7]);
  STACK[0x2528] = LOBYTE(STACK[0x6EC8]);
  STACK[0x1AE8] = LOBYTE(STACK[0x6EC9]);
  STACK[0x2EA0] = LOBYTE(STACK[0x6ECA]);
  LODWORD(STACK[0x1F1C]) = LOBYTE(STACK[0x6ECB]);
  STACK[0x30A0] = LOBYTE(STACK[0x6EC0]);
  STACK[0x2DB8] = LOBYTE(STACK[0x6EC1]);
  STACK[0x2FF0] = LOBYTE(STACK[0x6EC2]);
  LODWORD(STACK[0x1F8C]) = LOBYTE(STACK[0x6EC3]);
  STACK[0x2D48] = LOBYTE(STACK[0x6EC4]);
  STACK[0x3A60] = LOBYTE(STACK[0x6EC5]);
  STACK[0x2658] = LOBYTE(STACK[0x6EBA]);
  STACK[0x2EB8] = LOBYTE(STACK[0x6EBB]);
  STACK[0x22A0] = LOBYTE(STACK[0x6EBC]);
  STACK[0x25E8] = LOBYTE(STACK[0x6EBD]);
  STACK[0x2E38] = LOBYTE(STACK[0x6EBE]);
  STACK[0x2C78] = LOBYTE(STACK[0x6EBF]);
  LODWORD(STACK[0x1DBC]) = LOBYTE(STACK[0x6EB4]);
  STACK[0x1D68] = LOBYTE(STACK[0x6EB5]);
  LODWORD(STACK[0x17BC]) = LOBYTE(STACK[0x6EB6]);
  STACK[0x1D78] = LOBYTE(STACK[0x6EB7]);
  STACK[0x2E08] = LOBYTE(STACK[0x6EB8]);
  STACK[0x2838] = LOBYTE(STACK[0x6EB9]);
  STACK[0x24E8] = LOBYTE(STACK[0x6EAE]);
  LODWORD(STACK[0x1F7C]) = LOBYTE(STACK[0x6EAF]);
  LODWORD(STACK[0x1D74]) = LOBYTE(STACK[0x6EB0]);
  STACK[0x2388] = LOBYTE(STACK[0x6EB1]);
  STACK[0x3BC0] = LOBYTE(STACK[0x6EB2]);
  STACK[0x3010] = LOBYTE(STACK[0x6EB3]);
  STACK[0x1D90] = LOBYTE(STACK[0x6EA8]);
  STACK[0x1DC0] = LOBYTE(STACK[0x6EA9]);
  STACK[0x24D8] = LOBYTE(STACK[0x6EAA]);
  STACK[0x3C88] = LOBYTE(STACK[0x6EAB]);
  LODWORD(STACK[0x1DE8]) = LOBYTE(STACK[0x6EAC]);
  STACK[0x3018] = LOBYTE(STACK[0x6EAD]);
  STACK[0x2E78] = LOBYTE(STACK[0x6EA2]);
  STACK[0x2C80] = LOBYTE(STACK[0x6EA3]);
  STACK[0x3340] = LOBYTE(STACK[0x6EA4]);
  LODWORD(STACK[0x1798]) = LOBYTE(STACK[0x6EA5]);
  STACK[0x2F70] = LOBYTE(STACK[0x6EA6]);
  STACK[0x3458] = LOBYTE(STACK[0x6EA7]);
  STACK[0x2200] = LOBYTE(STACK[0x6E9C]);
  STACK[0x30D8] = LOBYTE(STACK[0x6E9D]);
  STACK[0x25A0] = LOBYTE(STACK[0x6E9E]);
  LODWORD(STACK[0x16E8]) = LOBYTE(STACK[0x6E9F]);
  LODWORD(STACK[0x16EC]) = LOBYTE(STACK[0x6EA0]);
  STACK[0x3500] = LOBYTE(STACK[0x6EA1]);
  STACK[0x1BB0] = LOBYTE(STACK[0x6E96]);
  LODWORD(STACK[0x17A0]) = LOBYTE(STACK[0x6E97]);
  STACK[0x2198] = LOBYTE(STACK[0x6E98]);
  LODWORD(STACK[0x1DE4]) = LOBYTE(STACK[0x6E99]);
  STACK[0x2638] = LOBYTE(STACK[0x6E9A]);
  STACK[0x2A08] = LOBYTE(STACK[0x6E9B]);
  LODWORD(STACK[0x1DB0]) = LOBYTE(STACK[0x6E90]);
  STACK[0x3460] = LOBYTE(STACK[0x6E91]);
  STACK[0x3158] = LOBYTE(STACK[0x6E92]);
  STACK[0x1AE0] = LOBYTE(STACK[0x6E93]);
  STACK[0x1D80] = LOBYTE(STACK[0x6E94]);
  STACK[0x33B0] = LOBYTE(STACK[0x6E95]);
  STACK[0x28D8] = LOBYTE(STACK[0x6E89]);
  STACK[0x27B8] = LOBYTE(STACK[0x6E8A]);
  LODWORD(STACK[0x1D58]) = LOBYTE(STACK[0x6E8B]);
  STACK[0x2840] = LOBYTE(STACK[0x6E8C]);
  LODWORD(STACK[0x3B68]) = LOBYTE(STACK[0x6E8D]);
  STACK[0x3858] = LOBYTE(STACK[0x6E8F]);
  STACK[0x3470] = LOBYTE(STACK[0x6E83]);
  LODWORD(STACK[0x1DAC]) = LOBYTE(STACK[0x6E84]);
  STACK[0x3950] = LOBYTE(STACK[0x6E85]);
  STACK[0x27E0] = LOBYTE(STACK[0x6E86]);
  LODWORD(STACK[0x1DB4]) = LOBYTE(STACK[0x6E87]);
  STACK[0x2930] = LOBYTE(STACK[0x6E88]);
  STACK[0x21C0] = LOBYTE(STACK[0x6E7C]);
  LODWORD(STACK[0x1DB8]) = LOBYTE(STACK[0x6E7E]);
  STACK[0x2FB0] = LOBYTE(STACK[0x6E7F]);
  STACK[0x2CC0] = LOBYTE(STACK[0x6E80]);
  STACK[0x2C50] = LOBYTE(STACK[0x6E81]);
  LODWORD(STACK[0x1F78]) = LOBYTE(STACK[0x6E82]);
  STACK[0x1828] = LOBYTE(STACK[0x6E76]);
  STACK[0x2FD8] = LOBYTE(STACK[0x6E77]);
  STACK[0x3148] = LOBYTE(STACK[0x6E78]);
  STACK[0x2818] = LOBYTE(STACK[0x6E79]);
  STACK[0x1810] = LOBYTE(STACK[0x6E7A]);
  STACK[0x2D30] = LOBYTE(STACK[0x6E7B]);
  STACK[0x2288] = LOBYTE(STACK[0x6E70]);
  STACK[0x2F88] = LOBYTE(STACK[0x6E71]);
  STACK[0x2CE8] = LOBYTE(STACK[0x6E72]);
  LODWORD(STACK[0x1F08]) = LOBYTE(STACK[0x6E73]);
  STACK[0x21E0] = LOBYTE(STACK[0x6E74]);
  STACK[0x2748] = LOBYTE(STACK[0x6E75]);
  STACK[0x23B8] = LOBYTE(STACK[0x6E6A]);
  STACK[0x26B0] = LOBYTE(STACK[0x6E6B]);
  STACK[0x3CA8] = LOBYTE(STACK[0x6E6C]);
  STACK[0x28A8] = LOBYTE(STACK[0x6E6D]);
  STACK[0x3480] = LOBYTE(STACK[0x6E6E]);
  LODWORD(STACK[0x1F18]) = LOBYTE(STACK[0x6E6F]);
  STACK[0x29F8] = LOBYTE(STACK[0x6E64]);
  LODWORD(STACK[0x1D44]) = LOBYTE(STACK[0x6E65]);
  STACK[0x3658] = LOBYTE(STACK[0x6E66]);
  STACK[0x3800] = LOBYTE(STACK[0x6E67]);
  LODWORD(STACK[0x1D38]) = LOBYTE(STACK[0x6E68]);
  LODWORD(STACK[0x1C68]) = LOBYTE(STACK[0x6E69]);
  STACK[0x3388] = LOBYTE(STACK[0x6E5E]);
  LODWORD(STACK[0x1794]) = LOBYTE(STACK[0x6E5F]);
  STACK[0x3BE0] = LOBYTE(STACK[0x6E60]);
  STACK[0x37A8] = LOBYTE(STACK[0x6E61]);
  STACK[0x2D38] = LOBYTE(STACK[0x6E62]);
  STACK[0x2758] = LOBYTE(STACK[0x6E63]);
  LODWORD(STACK[0x1D8C]) = LOBYTE(STACK[0x6E57]);
  STACK[0x3768] = LOBYTE(STACK[0x6E58]);
  LODWORD(STACK[0x1D3C]) = LOBYTE(STACK[0x6E59]);
  STACK[0x1F90] = LOBYTE(STACK[0x6E5A]);
  STACK[0x2850] = LOBYTE(STACK[0x6E5C]);
  STACK[0x2400] = LOBYTE(STACK[0x6E5D]);
  STACK[0x1EF8] = LOBYTE(STACK[0x6E51]);
  STACK[0x28E8] = LOBYTE(STACK[0x6E52]);
  STACK[0x26D0] = LOBYTE(STACK[0x6E53]);
  STACK[0x3138] = LOBYTE(STACK[0x6E54]);
  STACK[0x2E18] = LOBYTE(STACK[0x6E55]);
  LODWORD(STACK[0x1790]) = LOBYTE(STACK[0x6E56]);
  STACK[0x1F00] = LOBYTE(STACK[0x6E4B]);
  LODWORD(STACK[0x17AC]) = LOBYTE(STACK[0x6E4C]);
  LODWORD(STACK[0x16D0]) = LOBYTE(STACK[0x6E4D]);
  LODWORD(STACK[0x1D5C]) = LOBYTE(STACK[0x6E4E]);
  STACK[0x1AF8] = LOBYTE(STACK[0x6E4F]);
  STACK[0x22E8] = LOBYTE(STACK[0x6E50]);
  LODWORD(STACK[0x1D64]) = LOBYTE(STACK[0x6E45]);
  STACK[0x27D0] = LOBYTE(STACK[0x6E46]);
  STACK[0x1F80] = LOBYTE(STACK[0x6E47]);
  STACK[0x26D8] = LOBYTE(STACK[0x6E48]);
  STACK[0x3C90] = LOBYTE(STACK[0x6E49]);
  LODWORD(STACK[0x1D60]) = LOBYTE(STACK[0x6E4A]);
  STACK[0x1EE0] = LOBYTE(STACK[0x6E3F]);
  LODWORD(STACK[0x16E0]) = LOBYTE(STACK[0x6E40]);
  STACK[0x3130] = LOBYTE(STACK[0x6E41]);
  STACK[0x2690] = LOBYTE(STACK[0x6E42]);
  STACK[0x3078] = LOBYTE(STACK[0x6E43]);
  STACK[0x2E10] = LOBYTE(STACK[0x6E44]);
  STACK[0x3440] = LOBYTE(STACK[0x6E39]);
  STACK[0x2CD8] = LOBYTE(STACK[0x6E3A]);
  STACK[0x30B8] = LOBYTE(STACK[0x6E3B]);
  LODWORD(STACK[0x23D0]) = LOBYTE(STACK[0x6E3C]);
  STACK[0x28F8] = LOBYTE(STACK[0x6E3D]);
  STACK[0x3BA0] = LOBYTE(STACK[0x6E3E]);
  LODWORD(STACK[0x1F0C]) = LOBYTE(STACK[0x6E33]);
  LODWORD(STACK[0x16D4]) = LOBYTE(STACK[0x6E34]);
  STACK[0x3538] = LOBYTE(STACK[0x6E35]);
  LODWORD(STACK[0x16D8]) = LOBYTE(STACK[0x6E36]);
  STACK[0x22B0] = LOBYTE(STACK[0x6E37]);
  LODWORD(STACK[0x1EF0]) = LOBYTE(STACK[0x6E38]);
  LODWORD(STACK[0x1F10]) = LOBYTE(STACK[0x6E2D]);
  STACK[0x3D20] = LOBYTE(STACK[0x6E2E]);
  LODWORD(STACK[0x1734]) = LOBYTE(STACK[0x6E2F]);
  STACK[0x2298] = LOBYTE(STACK[0x6E30]);
  STACK[0x34A8] = LOBYTE(STACK[0x6E31]);
  STACK[0x2C38] = LOBYTE(STACK[0x6E32]);
  STACK[0x26E0] = LOBYTE(STACK[0x6E27]);
  LODWORD(STACK[0x16DC]) = LOBYTE(STACK[0x6E28]);
  LODWORD(STACK[0x1D30]) = LOBYTE(STACK[0x6E29]);
  STACK[0x3810] = LOBYTE(STACK[0x6E2A]);
  STACK[0x2DC0] = LOBYTE(STACK[0x6E2B]);
  STACK[0x2FD0] = LOBYTE(STACK[0x6E2C]);
  STACK[0x2338] = LOBYTE(STACK[0x6E21]);
  STACK[0x1D20] = LOBYTE(STACK[0x6E22]);
  STACK[0x2940] = LOBYTE(STACK[0x6E23]);
  STACK[0x2E20] = LOBYTE(STACK[0x6E24]);
  LODWORD(STACK[0x1D34]) = LOBYTE(STACK[0x6E25]);
  STACK[0x3640] = LOBYTE(STACK[0x6E26]);
  STACK[0x3090] = LOBYTE(STACK[0x6E1B]);
  STACK[0x3418] = LOBYTE(STACK[0x6E1C]);
  LODWORD(STACK[0x1D2C]) = LOBYTE(STACK[0x6E1D]);
  STACK[0x30B0] = LOBYTE(STACK[0x6E1E]);
  STACK[0x3C98] = LOBYTE(STACK[0x6E1F]);
  LODWORD(STACK[0x1EEC]) = LOBYTE(STACK[0x6E20]);
  STACK[0x2ED8] = LOBYTE(STACK[0x6E15]);
  STACK[0x2CF8] = LOBYTE(STACK[0x6E16]);
  STACK[0x23F0] = LOBYTE(STACK[0x6E17]);
  STACK[0x24C0] = LOBYTE(STACK[0x6E18]);
  STACK[0x2F38] = LOBYTE(STACK[0x6E19]);
  LODWORD(STACK[0x1E5C]) = LOBYTE(STACK[0x6E1A]);
  STACK[0x1E68] = LOBYTE(STACK[0x6E13]);
  LODWORD(STACK[0x1E64]) = LOBYTE(STACK[0x6E14]);
  STACK[0x2888] = LOBYTE(STACK[0x6F61]);
  LODWORD(STACK[0x1F14]) = LOBYTE(STACK[0x6F62]);
  STACK[0x2040] = LOBYTE(STACK[0x6F63]);
  LODWORD(STACK[0x1D54]) = LOBYTE(STACK[0x6F64]);
  LODWORD(STACK[0x1D40]) = LOBYTE(STACK[0x6F65]);
  STACK[0x2E68] = LOBYTE(STACK[0x6F66]);
  STACK[0x1D48] = LOBYTE(STACK[0x6F67]);
  STACK[0x2DF8] = LOBYTE(STACK[0x6F68]);
  STACK[0x2728] = LOBYTE(STACK[0x6F69]);
  STACK[0x35A0] = LOBYTE(STACK[0x6F6A]);
  STACK[0x3D40] = LOBYTE(STACK[0x6F6B]);
  STACK[0x2CE0] = LOBYTE(STACK[0x6F6C]);
  STACK[0x2E00] = LOBYTE(STACK[0x6F6D]);
  STACK[0x2828] = LOBYTE(STACK[0x6F6E]);
  STACK[0x2798] = LOBYTE(STACK[0x6F6F]);
  STACK[0x2848] = LOBYTE(STACK[0x6F70]);
  LODWORD(STACK[0x1D18]) = LOBYTE(STACK[0x6F71]);
  LODWORD(STACK[0x1D14]) = LOBYTE(STACK[0x6F72]);
  LODWORD(STACK[0x178C]) = LOBYTE(STACK[0x6F74]);
  STACK[0x2890] = LOBYTE(STACK[0x6F75]);
  LODWORD(STACK[0x16CC]) = LOBYTE(STACK[0x6F76]);
  STACK[0x23C8] = LOBYTE(STACK[0x6F77]);
  STACK[0x2668] = LOBYTE(STACK[0x6F78]);
  STACK[0x2DE0] = LOBYTE(STACK[0x6F79]);
  LODWORD(STACK[0x1EF4]) = LOBYTE(STACK[0x6F7A]);
  LODWORD(STACK[0x16C8]) = LOBYTE(STACK[0x6F7B]);
  STACK[0x2FE0] = LOBYTE(STACK[0x6F7C]);
  STACK[0x3520] = LOBYTE(STACK[0x6F7D]);
  STACK[0x3C68] = LOBYTE(STACK[0x6F7E]);
  LODWORD(STACK[0x1F74]) = LOBYTE(STACK[0x6F7F]);
  STACK[0x2C30] = LOBYTE(STACK[0x6F80]);
  LODWORD(STACK[0x1C60]) = LOBYTE(STACK[0x6F81]);
  STACK[0x2F20] = LOBYTE(STACK[0x6F82]);
  LODWORD(STACK[0x1D1C]) = LOBYTE(STACK[0x6F83]);
  STACK[0x22F0] = LOBYTE(STACK[0x6F84]);
  LODWORD(STACK[0x1D10]) = LOBYTE(STACK[0x6F85]);
  LODWORD(STACK[0x17A8]) = LOBYTE(STACK[0x6F86]);
  LODWORD(STACK[0x1D28]) = LOBYTE(STACK[0x6F87]);
  LODWORD(STACK[0x1D0C]) = LOBYTE(STACK[0x6F88]);
  STACK[0x3708] = LOBYTE(STACK[0x6F89]);
  LODWORD(STACK[0x1788]) = LOBYTE(STACK[0x6F8A]);
  STACK[0x1D00] = LOBYTE(STACK[0x6F8B]);
  STACK[0x2E60] = LOBYTE(STACK[0x6F8C]);
  STACK[0x2810] = LOBYTE(STACK[0x6F8D]);
  STACK[0x2800] = LOBYTE(STACK[0x6F8E]);
  LODWORD(STACK[0x1CEC]) = LOBYTE(STACK[0x6F8F]);
  LODWORD(STACK[0x21CC]) = LOBYTE(STACK[0x6F90]);
  STACK[0x3718] = LOBYTE(STACK[0x6F91]);
  STACK[0x2C60] = LOBYTE(STACK[0x6F92]);
  STACK[0x2350] = LOBYTE(STACK[0x6F93]);
  STACK[0x1CF8] = LOBYTE(STACK[0x6F94]);
  LODWORD(STACK[0x1EDC]) = LOBYTE(STACK[0x6F95]);
  LODWORD(STACK[0x1FE8]) = LOBYTE(STACK[0x6F96]);
  STACK[0x24C8] = LOBYTE(STACK[0x6F97]);
  STACK[0x1CF0] = LOBYTE(STACK[0x6F98]);
  LODWORD(STACK[0x1CE4]) = LOBYTE(STACK[0x6F99]);
  LODWORD(STACK[0x1CE8]) = LOBYTE(STACK[0x6F9A]);
  STACK[0x2778] = LOBYTE(STACK[0x6F9B]);
  LODWORD(STACK[0x1FE4]) = LOBYTE(STACK[0x6F9C]);
  STACK[0x3600] = LOBYTE(STACK[0x6F9D]);
  LODWORD(STACK[0x1ED0]) = LOBYTE(STACK[0x6F9E]);
  LODWORD(STACK[0x1D08]) = LOBYTE(STACK[0x6F9F]);
  STACK[0x1EC0] = LOBYTE(STACK[0x6FA0]);
  STACK[0x2208] = LOBYTE(STACK[0x6FA1]);
  STACK[0x3BD0] = LOBYTE(STACK[0x6FA2]);
  STACK[0x3A68] = LOBYTE(STACK[0x6FA3]);
  STACK[0x2210] = LOBYTE(STACK[0x6FA4]);
  STACK[0x32A8] = LOBYTE(STACK[0x6FA5]);
  LODWORD(STACK[0x1ED8]) = LOBYTE(STACK[0x6FA6]);
  LODWORD(STACK[0x16C4]) = LOBYTE(STACK[0x6FA7]);
  STACK[0x2EF8] = LOBYTE(STACK[0x6FA8]);
  STACK[0x2C58] = LOBYTE(STACK[0x6FA9]);
  STACK[0x3048] = LOBYTE(STACK[0x6FAA]);
  STACK[0x3168] = LOBYTE(STACK[0x6FAB]);
  STACK[0x2360] = LOBYTE(STACK[0x6FAC]);
  STACK[0x25D0] = LOBYTE(STACK[0x6FAD]);
  STACK[0x2F00] = LOBYTE(STACK[0x6FAE]);
  STACK[0x2FC0] = LOBYTE(STACK[0x6FAF]);
  STACK[0x2CC8] = LOBYTE(STACK[0x6FB0]);
  STACK[0x22D0] = LOBYTE(STACK[0x6FB1]);
  LODWORD(STACK[0x1ED4]) = LOBYTE(STACK[0x6FB2]);
  LODWORD(STACK[0x1CE0]) = LOBYTE(STACK[0x6FB3]);
  STACK[0x1CD8] = LOBYTE(STACK[0x6FB4]);
  STACK[0x2A68] = LOBYTE(STACK[0x6FB5]);
  STACK[0x3CA0] = LOBYTE(STACK[0x6FB6]);
  STACK[0x23C0] = LOBYTE(STACK[0x6FB7]);
  STACK[0x2FE8] = LOBYTE(STACK[0x6FB8]);
  STACK[0x2300] = LOBYTE(STACK[0x6FB9]);
  LODWORD(STACK[0x1ECC]) = LOBYTE(STACK[0x6FBA]);
  STACK[0x2F10] = LOBYTE(STACK[0x6FBB]);
  STACK[0x2398] = LOBYTE(STACK[0x6FBC]);
  STACK[0x3390] = LOBYTE(STACK[0x6FBD]);
  STACK[0x1EB8] = LOBYTE(STACK[0x6FBE]);
  STACK[0x3630] = LOBYTE(STACK[0x6FBF]);
  STACK[0x2A40] = LOBYTE(STACK[0x6FC0]);
  STACK[0x1CD0] = LOBYTE(STACK[0x6FC1]);
  LODWORD(STACK[0x1F70]) = LOBYTE(STACK[0x6FC2]);
  STACK[0x2870] = LOBYTE(STACK[0x6FC3]);
  STACK[0x3490] = LOBYTE(STACK[0x6FC4]);
  STACK[0x2E98] = LOBYTE(STACK[0x6FC5]);
  STACK[0x2670] = LOBYTE(STACK[0x6FC6]);
  STACK[0x1EB0] = LOBYTE(STACK[0x6FC7]);
  STACK[0x2D28] = LOBYTE(STACK[0x6FC8]);
  STACK[0x27B0] = LOBYTE(STACK[0x6FC9]);
  STACK[0x2C48] = LOBYTE(STACK[0x6FCA]);
  STACK[0x2730] = LOBYTE(STACK[0x6FCB]);
  STACK[0x2598] = LOBYTE(STACK[0x6FCC]);
  STACK[0x1CC0] = LOBYTE(STACK[0x6FCD]);
  STACK[0x1CB8] = LOBYTE(STACK[0x6FCE]);
  STACK[0x2EB0] = LOBYTE(STACK[0x6FCF]);
  STACK[0x28D0] = LOBYTE(STACK[0x6FD0]);
  STACK[0x3110] = LOBYTE(STACK[0x6FD1]);
  STACK[0x3720] = LOBYTE(STACK[0x6FD2]);
  STACK[0x39A0] = LOBYTE(STACK[0x6FD3]);
  STACK[0x32C8] = LOBYTE(STACK[0x6FD4]);
  STACK[0x2FB8] = LOBYTE(STACK[0x6FD5]);
  LODWORD(STACK[0x1CCC]) = LOBYTE(STACK[0x6FD6]);
  STACK[0x2320] = LOBYTE(STACK[0x6FD7]);
  LODWORD(STACK[0x1CB4]) = LOBYTE(STACK[0x6FD8]);
  STACK[0x1AD8] = LOBYTE(STACK[0x6FD9]);
  STACK[0x1CA0] = LOBYTE(STACK[0x6FDA]);
  STACK[0x32B0] = LOBYTE(STACK[0x6FDB]);
  LODWORD(STACK[0x16C0]) = LOBYTE(STACK[0x6FDC]);
  STACK[0x2820] = LOBYTE(STACK[0x6FDD]);
  STACK[0x2878] = LOBYTE(STACK[0x6FDE]);
  STACK[0x1C40] = LOBYTE(STACK[0x6FDF]);
  STACK[0x2CD0] = LOBYTE(STACK[0x6FE0]);
  LODWORD(STACK[0x3118]) = LOBYTE(STACK[0x6FE1]);
  LODWORD(STACK[0x16BC]) = LOBYTE(STACK[0x6FE2]);
  LODWORD(STACK[0x16B8]) = LOBYTE(STACK[0x6FE3]);
  STACK[0x1CA8] = LOBYTE(STACK[0x6FE4]);
  STACK[0x3100] = LOBYTE(STACK[0x6FE5]);
  LODWORD(STACK[0x1C9C]) = LOBYTE(STACK[0x6FE6]);
  LODWORD(STACK[0x3638]) = LOBYTE(STACK[0x6FE7]);
  STACK[0x3828] = LOBYTE(STACK[0x6FE8]);
  STACK[0x33F8] = LOBYTE(STACK[0x6FE9]);
  STACK[0x26F0] = LOBYTE(STACK[0x6FEA]);
  STACK[0x37C0] = LOBYTE(STACK[0x6FEB]);
  LODWORD(STACK[0x3AA0]) = STACK[0x6FEC];
  LODWORD(STACK[0x3AE8]) = STACK[0x6FF0];
  STACK[0x22D8] = LODWORD(STACK[0x6FF4]);
  STACK[0x2238] = LODWORD(STACK[0x6FF8]);
  LODWORD(STACK[0x32D0]) = STACK[0x6FFC];
  LODWORD(STACK[0x39C0]) = STACK[0x7000];
  LODWORD(STACK[0x2078]) = STACK[0x7004];
  LODWORD(STACK[0x17DC]) = STACK[0x7008];
  STACK[0x3840] = LODWORD(STACK[0x700C]);
  STACK[0x3960] = LODWORD(STACK[0x7010]);
  LODWORD(STACK[0x3760]) = STACK[0x7014];
  LODWORD(STACK[0x2428]) = STACK[0x7018];
  LODWORD(STACK[0x1BE0]) = STACK[0x701C];
  LODWORD(STACK[0x2144]) = STACK[0x7020];
  LODWORD(STACK[0x268C]) = STACK[0x7024];
  LODWORD(STACK[0x28CC]) = STACK[0x7028];
  LODWORD(STACK[0x3830]) = STACK[0x702C];
  LODWORD(STACK[0x2234]) = STACK[0x7030];
  LODWORD(STACK[0x3368]) = STACK[0x7034];
  STACK[0x2100] = LODWORD(STACK[0x7038]);
  LODWORD(STACK[0x366C]) = STACK[0x703C];
  STACK[0x3980] = LODWORD(STACK[0x7040]);
  LODWORD(STACK[0x2134]) = STACK[0x7044];
  LODWORD(STACK[0x20AC]) = STACK[0x7048];
  STACK[0x38B8] = LODWORD(STACK[0x704C]);
  LODWORD(STACK[0x3888]) = STACK[0x7050];
  STACK[0x3AD8] = LODWORD(STACK[0x7054]);
  STACK[0x3D58] = LODWORD(STACK[0x7058]);
  LODWORD(STACK[0x37F8]) = STACK[0x705C];
  LODWORD(STACK[0x1834]) = STACK[0x7060];
  LODWORD(STACK[0x3688]) = STACK[0x7064];
  LODWORD(STACK[0x2080]) = STACK[0x7068];
  LODWORD(STACK[0x20A0]) = STACK[0x706C];
  STACK[0x23B0] = LODWORD(STACK[0x7070]);
  STACK[0x3700] = LODWORD(STACK[0x7074]);
  LODWORD(STACK[0x3558]) = STACK[0x7078];
  LODWORD(STACK[0x1B5C]) = STACK[0x707C];
  STACK[0x1BC0] = LODWORD(STACK[0x7080]);
  STACK[0x37E8] = LODWORD(STACK[0x7084]);
  LODWORD(STACK[0x2C20]) = STACK[0x7088];
  LODWORD(STACK[0x1C98]) = STACK[0x708C];
  STACK[0x3870] = LODWORD(STACK[0x7090]);
  STACK[0x1B60] = LODWORD(STACK[0x7094]);
  STACK[0x2148] = LODWORD(STACK[0x7098]);
  STACK[0x3E40] = LODWORD(STACK[0x709C]);
  STACK[0x37B8] = LODWORD(STACK[0x70A0]);
  STACK[0x1B40] = LODWORD(STACK[0x70A4]);
  STACK[0x34D8] = LODWORD(STACK[0x70A8]);
  STACK[0x3798] = LODWORD(STACK[0x70AC]);
  LODWORD(STACK[0x3D90]) = STACK[0x70B0];
  LODWORD(STACK[0x3790]) = STACK[0x70B4];
  LODWORD(STACK[0x20B8]) = STACK[0x70B8];
  LODWORD(STACK[0x34D4]) = STACK[0x70BC];
  STACK[0x39F0] = LODWORD(STACK[0x70C0]);
  STACK[0x2038] = LODWORD(STACK[0x70C4]);
  STACK[0x3850] = LODWORD(STACK[0x70C8]);
  LODWORD(STACK[0x31B0]) = STACK[0x70CC];
  STACK[0x3540] = LODWORD(STACK[0x70D0]);
  STACK[0x3AE0] = LODWORD(STACK[0x70D4]);
  LODWORD(STACK[0x3B20]) = STACK[0x70D8];
  LODWORD(STACK[0x3CE8]) = STACK[0x70DC];
  LODWORD(STACK[0x3710]) = STACK[0x70E0];
  LODWORD(STACK[0x3A28]) = STACK[0x70E4];
  STACK[0x17D0] = LODWORD(STACK[0x70E8]);
  STACK[0x3CC8] = LODWORD(STACK[0x70EC]);
  STACK[0x3890] = LODWORD(STACK[0x70F0]);
  LODWORD(STACK[0x3D70]) = STACK[0x70F4];
  LODWORD(STACK[0x1BE4]) = STACK[0x70F8];
  LODWORD(STACK[0x16B4]) = STACK[0x70FC];
  STACK[0x2370] = LODWORD(STACK[0x7100]);
  STACK[0x3E38] = LODWORD(STACK[0x7104]);
  STACK[0x1FD8] = LODWORD(STACK[0x7108]);
  STACK[0x3338] = LODWORD(STACK[0x710C]);
  STACK[0x3620] = LODWORD(STACK[0x7110]);
  LODWORD(STACK[0x2704]) = STACK[0x7114];
  STACK[0x3B08] = LODWORD(STACK[0x7118]);
  LODWORD(STACK[0x3D38]) = STACK[0x711C];
  LODWORD(STACK[0x2424]) = STACK[0x7120];
  LODWORD(STACK[0x20F0]) = STACK[0x7124];
  LODWORD(STACK[0x351C]) = STACK[0x7128];
  LODWORD(STACK[0x37A0]) = STACK[0x712C];
  LODWORD(STACK[0x20E8]) = STACK[0x7130];
  LODWORD(STACK[0x2030]) = STACK[0x7134];
  LODWORD(STACK[0x3B00]) = STACK[0x7138];
  STACK[0x3D98] = LODWORD(STACK[0x713C]);
  STACK[0x3D80] = LODWORD(STACK[0x7140]);
  STACK[0x3698] = LODWORD(STACK[0x7144]);
  STACK[0x3880] = LODWORD(STACK[0x7148]);
  LODWORD(STACK[0x2924]) = STACK[0x714C];
  LODWORD(STACK[0x21F4]) = STACK[0x7150];
  LODWORD(STACK[0x3860]) = STACK[0x7154];
  STACK[0x33C0] = LODWORD(STACK[0x7158]);
  LODWORD(STACK[0x3B18]) = STACK[0x715C];
  STACK[0x38B0] = LODWORD(STACK[0x7160]);
  STACK[0x33A8] = LODWORD(STACK[0x7164]);
  LODWORD(STACK[0x3958]) = STACK[0x7168];
  STACK[0x3900] = LODWORD(STACK[0x716C]);
  STACK[0x1C88] = LODWORD(STACK[0x7170]);
  STACK[0x2138] = LODWORD(STACK[0x7174]);
  STACK[0x3928] = LODWORD(STACK[0x7178]);
  STACK[0x3820] = LODWORD(STACK[0x717C]);
  LODWORD(STACK[0x39A8]) = STACK[0x7180];
  LODWORD(STACK[0x3488]) = STACK[0x7184];
  STACK[0x3998] = LODWORD(STACK[0x7188]);
  STACK[0x2228] = LODWORD(STACK[0x718C]);
  STACK[0x3318] = LODWORD(STACK[0x7190]);
  LODWORD(STACK[0x3930]) = STACK[0x7194];
  LODWORD(STACK[0x3AF0]) = STACK[0x7198];
  STACK[0x36F8] = LODWORD(STACK[0x719C]);
  LODWORD(STACK[0x2158]) = STACK[0x71A0];
  STACK[0x21F8] = LODWORD(STACK[0x71A4]);
  LODWORD(STACK[0x3808]) = STACK[0x71A8];
  STACK[0x3D88] = LODWORD(STACK[0x71AC]);
  LODWORD(STACK[0x195C]) = STACK[0x71B0];
  LODWORD(STACK[0x20B0]) = STACK[0x71B4];
  LODWORD(STACK[0x3CE0]) = 28;
  STACK[0x3E18] = v44;
  STACK[0x1AC0] = STACK[0x71B8];
  return v49();
}

uint64_t sub_100B2F1B0@<X0>(uint64_t a1@<X8>)
{
  v10 = *(*(v8 + 8 * (v7 + v5 + 834)) + a1 - 12);
  *(v6 + a1) = v10;
  v11 = v10 == (((v5 + 125) | v2) ^ v3);
  return (*(v9 + 8 * (((16 * (v4 & ~((v5 + v1) ^ v11))) & 0xFFFFFFBF | ((((v5 + v1) ^ ~v11) & 1) << 6)) ^ (v5 + 2120247952))))();
}

uint64_t sub_100B2F26C@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0xEB8] + 24);
  STACK[0x1AE0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((a1 - 3622) | 0x124) ^ 0xB56)) ^ a1)))();
}

uint64_t sub_100B2F344(uint64_t a1, _DWORD *a2)
{
  a2[18] = 567089508;
  a2[19] = -1455058452;
  a2[20] = -567089509;
  a2[21] = 1455058451;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100B2F38C@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0xC20] + v1;
  STACK[0xD48] = a1;
  STACK[0x960] = v5;
  return (*(v4 + 8 * ((32211 * (v3 == (((v2 + 625985933) | 0x92808211) ^ (v2 + 1707854626)))) ^ v2)))();
}

uint64_t sub_100B2F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xCAC]) = 0;
  *(v8 + 472) = 4;
  v13 = (*(v11 + 8 * (v9 ^ (a8 - 1010))))(&STACK[0x224D], &STACK[0x8F4], &STACK[0x1908], 0, 0);
  v14 = 551690071 * ((2 * (((v12 - 240) ^ 0x35860CA0D98952A0) & 0x42DA404059C54808) - ((v12 - 240) ^ 0x35860CA0D98952A0) + 0x3D25BFBFA63AB7F3) ^ 0x793EE1D1315EB604);
  *(v12 - 240) = (v9 + 1041169529) ^ (551690071 * ((2 * (((v12 - 240) ^ 0xD98952A0) & 0x59C54808) - ((v12 - 240) ^ 0xD98952A0) - 1506101261) ^ 0x315EB604));
  *(v12 - 236) = (v9 + 1193120385) ^ (551690071 * ((2 * (((v12 - 240) ^ 0xD98952A0) & 0x59C54808) - ((v12 - 240) ^ 0xD98952A0) - 1506101261) ^ 0x315EB604));
  *(v10 + 1064) = v13 - v14;
  *(v12 - 232) = ((v9 + 1193122024) ^ 0xED) - 551690071 * ((2 * (((v12 - 240) ^ 0xD98952A0) & 0x59C54808) - ((v12 - 240) ^ 0xD98952A0) - 1506101261) ^ 0x315EB604);
  *(v12 - 228) = v9 + 1193122024 - 551690071 * ((2 * (((v12 - 240) ^ 0xD98952A0) & 0x59C54808) - ((v12 - 240) ^ 0xD98952A0) - 1506101261) ^ 0x315EB604);
  *(v12 - 224) = 551690071 * ((2 * (((v12 - 240) ^ 0xD98952A0) & 0x59C54808) - ((v12 - 240) ^ 0xD98952A0) - 1506101261) ^ 0x315EB604);
  *(v10 + 1072) = v14;
  v15 = (*(v11 + 8 * (v9 + 2120268347)))(v12 - 240);
  return (*(v11 + 8 * *(v12 - 220)))(v15);
}

uint64_t sub_100B2F980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B18]) = 0;
  LODWORD(STACK[0x2B08]) = 0;
  LODWORD(STACK[0x8E8]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x2AC0]) = 0;
  LODWORD(STACK[0x8F0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x2B10]) = 0;
  LODWORD(STACK[0x2AD0]) = 0;
  LODWORD(STACK[0x880]) = 0;
  LODWORD(STACK[0x888]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  v6 = LODWORD(STACK[0x2C20]) == 40;
  v7 = (a5 - 252031882) & 0xF05DA9F;
  v8 = (a5 + 682403927) & 0xD7537EBE;
  LODWORD(STACK[0x3B08]) = v7;
  STACK[0x3AF0] = v8;
  v9 = (v7 + 535) ^ v8;
  v10 = !v6;
  v11 = *(v5 + 8 * ((v9 * v10) ^ a5));
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  v12 = STACK[0x21F4];
  LODWORD(STACK[0x3438]) = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = v12;
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v13 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v13;
  v14 = STACK[0x32E8];
  LODWORD(STACK[0x3298]) = STACK[0x32E8];
  LODWORD(STACK[0x3B00]) = v14;
  LODWORD(STACK[0x3290]) = v14;
  v15 = LODWORD(STACK[0x3830]);
  STACK[0x3D90] = v15;
  LODWORD(STACK[0x32D0]) = v15;
  v16 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v16;
  v17 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v17;
  LODWORD(STACK[0x3AE8]) = v17;
  v18 = STACK[0x3E18];
  LODWORD(STACK[0x2B88]) = STACK[0x3E18];
  LODWORD(STACK[0x3AE0]) = v18;
  v19 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v19;
  v20 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v20;
  v21 = v20;
  LODWORD(STACK[0x2C20]) = 41;
  LODWORD(STACK[0x3988]) = 26;
  v22 = STACK[0x438];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x2B80]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x32C8]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x918]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  LODWORD(STACK[0x800]) = 1;
  LODWORD(STACK[0x8C0]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x810]) = 1;
  LODWORD(STACK[0x2AF8]) = 1;
  LODWORD(STACK[0x2A90]) = 1;
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x820]) = 1;
  LODWORD(STACK[0x8D0]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x830]) = 1;
  LODWORD(STACK[0x2A98]) = 1;
  LODWORD(STACK[0x8D8]) = 1;
  LODWORD(STACK[0x7F8]) = 1;
  LODWORD(STACK[0x838]) = 1;
  LODWORD(STACK[0x2AA0]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x840]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  v23 = STACK[0x3E0];
  STACK[0x32E0] = STACK[0x3E0];
  STACK[0x3D50] = v23;
  STACK[0x3AD8] = v23;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3980]) = 41;
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  return v11(a1, 0, a2, v22, a3, a4, v21);
}

uint64_t sub_100B2FDB0()
{
  (*(v4 + 8 * (v3 ^ 0x61AE)))(STACK[0x4F0]);
  v5 = (*(v4 + 8 * (v3 + 24163)))((v0 + v1));
  return (*(v4 + 8 * ((17036 * (v2 == (v3 ^ 0x819FDFD2) - 526540212)) ^ v3)))(v5);
}

uint64_t sub_100B2FE1C()
{
  STACK[0x13E8] = STACK[0xC58];
  v2 = STACK[0xAB0];
  v3 = &STACK[0x1D80] + STACK[0xAB0];
  STACK[0x1208] = v3;
  STACK[0xAB0] = v2 + 32;
  v4 = (*(v1 + 8 * (v0 ^ 0x7414)))(v3, 0, 32);
  return (*(v1 + 8 * (v0 - 21555 + ((v0 - 1028165208) & 0x3D48EF9F))))(v4);
}

uint64_t sub_100B2FF78@<X0>(int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X5>, int a4@<W8>)
{
  v13 = *(*(a2 + 8 * v7) + 4 * ((v4 ^ v11) ^ v6) - 4) ^ v8;
  *(a3 + 4 * v4) = v10 ^ v13 ^ (v13 >> v9) ^ (v13 >> 5) ^ a1;
  return (*(v12 + 8 * (((2 * (v5 == 0)) | (8 * (v5 == 0))) ^ a4)))();
}

uint64_t sub_100B2FFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, int a48, int a49, unsigned int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, uint64_t a63)
{
  v77 = 1633 * a54 + 424580 - 5392 * ((796545 * (1633 * a54 + 424580)) >> 32);
  v78 = 1633 * a55 - 5392 * ((796545 * (1633 * a55)) >> 32);
  v403 = (v74 + 243730526) & 0xF178F74D;
  if (a50 >= 2)
  {
    v83 = (1633 * a50 - 2696) % 0xA88;
  }

  else
  {
    v83 = 1633 * a50;
  }

  v84 = *(&a71 + v83);
  v85 = v77 - 2696;
  if (v77 < 0xA88)
  {
    v85 = 1633 * a54 + 424580 - 5392 * ((796545 * (1633 * a54 + 424580)) >> 32);
  }

  v86 = *(&a71 + v85) | ((*(&a71 + v85) < 0x5Fu) << 8);
  v87 = 1633 * (((2 * a58) & 0x10) + (a51 ^ 0x208));
  v88 = (1633 * a57 + 846464) % 0xA88u;
  v399 = *(&a71 + (v87 - 2696 * ((1593089 * v87) >> 32)));
  v400 = *(&a71 + (1633 * a53 + 424580 - 2696 * ((1593089 * (1633 * a53 + 424580)) >> 32)));
  v89 = *(&a71 + 1633 * a56 + 3408071 - 2696 * (((12744711 * (1633 * a56 + 3408071)) >> 32) >> 3));
  v90 = v89 | ((v89 < 0x5F) << 8);
  v91 = *(&a71 + v88) | ((*(&a71 + v88) < 0x5Fu) << 8);
  if (v78 >= 0xA88)
  {
    v93 = v78 - 2696;
  }

  else
  {
    v93 = 1633 * a55 - 5392 * ((796545 * (1633 * a55)) >> 32);
  }

  v80 = 1633 * a48 + 3408071 - 2696 * (((12744711 * (1633 * a48 + 3408071)) >> 32) >> 3);
  v94 = *(&a71 + v80) | ((*(&a71 + v80) < 0x5Fu) << 8);
  v95 = &STACK[0xC30];
  v96 = *(v95 + (v90 * v76 + 18624005) % 0x1540u) ^ *(v95 + (v91 * v76 + 10983199) % 0x1540u) ^ *(v95 + (v86 * v76 + 9100575) % 0x1540u) ^ *(v95 + ((*(&a71 + v93) | ((*(&a71 + v93) < 0x5Fu) << 8)) * v76 + 1544340) % 0x1540u);
  v97 = (HIBYTE(v96) ^ 0xF13) + 2 * ((HIBYTE(v96) | 0xF13) ^ HIBYTE(v96) ^ 0xF13);
  v82 = *(&a71 + ((v403 ^ 0x416C) * a59 + 849160) % 0xA88);
  v98 = v82 | ((v82 < 0x5F) << 8);
  v99 = LOBYTE(STACK[0x983]);
  v100 = v99 & 0xFFFFFF87 ^ 0xFFFFFFB3;
  v396 = v99 ^ (2 * ((v99 ^ 0x20) & (2 * ((v99 ^ 0x20) & (2 * ((v99 ^ 0x20) & (2 * ((v99 ^ 0x20) & (2 * (((2 * (((2 * v99) & 0x42 | 0x21) & v99)) ^ 0x26) & (v99 ^ 0x20) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  v81 = *(&a71 + (1633 * a46 + 424580 - 2696 * ((1593089 * (1633 * a46 + 424580)) >> 32)));
  v101 = BYTE2(v96) * v76 + 18013623 - 5440 * (((101058055 * (BYTE2(v96) * v76 + 18013623)) >> 32) >> 7);
  v102 = (((v96 ^ 0x10A94563) - 1226565937) ^ ((v96 ^ 0x736DC05F) - 719285261) ^ ((v96 ^ 0x63C4853C) - 980822382)) * v76 + 1532302794;
  v79 = 1633 * a49 + 3408071 - 2696 * (((12744711 * (1633 * a49 + 3408071)) >> 32) >> 3);
  v103 = *(v95 + ((v81 | ((v81 < 0x5F) << 8)) * v76 + 9100575) % 0x1540) ^ *(v95 + ((LOBYTE(STACK[0xBD8]) | ((LOBYTE(STACK[0xBD8]) < 0x5Fu) << 8)) * v76 + 10983199) % 0x1540u) ^ __ROR4__(__ROR4__(*(&STACK[0xC30] + ((*(&a71 + v79) | ((*(&a71 + v79) < 0x5Fu) << 8)) * v76 + 18624005) % 0x1540u), 8) ^ 0xD86C4287, 24) ^ *(&STACK[0xC30] + ((v84 | ((v84 < 0x5F) << 8)) * v76 + 1544340) % 0x1540) ^ 0x2951B35E;
  v104 = v96 ^ 0x5A240F8A;
  v105 = BYTE1(v96) * v76 + 10391202 - 5440 * (((12632257 * (BYTE1(v96) * v76 + 10391202)) >> 32) >> 4);
  v106 = v97 * v76 - 5440 * (((12632257 * (v97 * v76)) >> 32) >> 4);
  v107 = v98 * v76;
  v108 = (v98 * v76 + 10977759) % 0x1540u;
  v109 = v107 + 10983199;
  if (v109 >> 6 > 0x54)
  {
    v109 = v108;
  }

  v110 = *(&STACK[0xC30] + v109);
  v393 = *(&a71 + (1633 * a65 + 424580 - 2696 * ((1593089 * (1633 * a65 + 424580)) >> 32)));
  v111 = *(&STACK[0xC30] + ((v393 | ((v393 < 0x5F) << 8)) * v76 + 9100575) % 0x1540);
  v112 = v111 & 0x10000;
  v113 = (((v110 ^ 0x6F25DE22) - 1864752674) ^ ((v110 ^ 0x8D7C202F) + 1921245137) ^ ((v110 ^ 0x17AD337F) - 397226879)) - (((v112 ^ 0x4F0FC417) - 279215776) ^ (v112 - 614118831) ^ ((v112 ^ 0xD2D343D3) + 1921451676)) - 682889725;
  v114 = (v113 ^ 0x3CF994BF) & (2 * (v113 & 0xBEFD24B8)) ^ v113 & 0xBEFD24B8;
  v115 = ((2 * (v113 ^ 0x3551DCBF)) ^ 0x1759F00E) & (v113 ^ 0x3551DCBF) ^ (2 * (v113 ^ 0x3551DCBF)) & 0x8BACF806;
  v116 = (v115 ^ 0x308B000) & (4 * v114) ^ v114;
  v117 = ((4 * (v115 ^ 0x88A40801)) ^ 0x2EB3E01C) & (v115 ^ 0x88A40801) ^ (4 * (v115 ^ 0x88A40801)) & 0x8BACF804;
  v118 = v116 ^ 0x8BACF807 ^ (v117 ^ 0xAA0E000) & (16 * v116);
  v119 = (16 * (v117 ^ 0x810C1803)) & 0x8BACF800 ^ 0x1207807 ^ ((16 * (v117 ^ 0x810C1803)) ^ 0xBACF8070) & (v117 ^ 0x810C1803);
  v120 = (v118 << 8) & 0x8BACF800 ^ v118 ^ ((v118 << 8) ^ 0xACF80700) & v119;
  v121 = v113 ^ (2 * ((v120 << 16) & 0xBAC0000 ^ v120 ^ ((v120 << 16) ^ 0x78070000) & ((v119 << 8) & 0xBAC0000 ^ 0x3040000 ^ ((v119 << 8) ^ 0xACF80000) & v119))) ^ 0xB6C8299E;
  if ((v102 % 0x2A80) >> 6 >= 0x55)
  {
    v122 = v102 % 0x2A80 - 5440;
  }

  else
  {
    v122 = v102 % 0x2A80;
  }

  v123 = (v112 | 0xEBC0305A) ^ v110;
  if ((v110 & v112) != 0)
  {
    v123 = v121;
  }

  v401 = *(&a71 + 1633 * a47 + 3408071 - 2696 * (((12744711 * (1633 * a47 + 3408071)) >> 32) >> 3));
  v405 = *(&a71 + (1633 * a61 - 2696 * ((1593089 * (1633 * a61)) >> 32)));
  v372 = *(&STACK[0xC30] + ((v401 | ((v401 < 0x5F) << 8)) * v76 + 18624005) % 0x1540) ^ *(&STACK[0xC30] + ((v405 | ((v405 < 0x5F) << 8)) * v76 + 1544340) % 0x1540) ^ v111 & 0xFFFEFFFF ^ v123;
  v124 = (v396 ^ 0xFFFFFFF7) << 24;
  v378 = v124 ^ 0x8FBA5CD2;
  v374 = v372 ^ 0x3C0BF3AD ^ *(&STACK[0xC30] + v101) ^ v103 ^ *(&STACK[0xC30] + v105) ^ *(&STACK[0xC30] + v106) ^ 0x829B76D4 ^ *(&STACK[0xC30] + v122);
  v375 = *(&STACK[0xC30] + v101) ^ v103 ^ *(&STACK[0xC30] + v105) ^ *(&STACK[0xC30] + v106) ^ 0x829B76D4 ^ *(&STACK[0xC30] + v122);
  v92 = *(&a71 + (1633 * a52 - 2696 * ((1593089 * (1633 * a52)) >> 32)));
  v125 = v374 ^ *(&STACK[0xC30] + (v94 * v76 + 18624005) % 0x1540u) ^ *(&STACK[0xC30] + ((v92 | ((v92 < 0x5F) << 8)) * v76 + 1544340) % 0x1540) ^ *(&STACK[0xC30] + ((v400 | ((v400 < 0x5F) << 8)) * v76 + 9100575) % 0x1540) ^ *(&STACK[0xC30] + ((v399 | ((v399 < 0x5F) << 8)) * v76 + 10983199) % 0x1540) ^ 0x4482C151;
  v126 = v125 ^ v104;
  v127 = v125 ^ v104 ^ v124 ^ 0x8FBA5CD2;
  v128 = LOBYTE(STACK[0x350]);
  v129 = v128 & 0xA1 | 6;
  v130 = v129 ^ v128 & 0xC;
  v131 = v128 ^ (2 * ((v128 ^ 0x20) & (2 * ((v128 ^ 0x20) & (2 * ((v128 ^ 0x20) & (2 * ((v128 ^ 0x20) & (2 * ((v128 ^ 0x20) & (2 * (v128 & (2 * v129) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ v130));
  v132 = (58832 * (HIBYTE(v127) ^ 0xF1) + 227032688) >> 4;
  v133 = __PAIR64__(a64, __ROR4__(__ROR4__(*(&STACK[0xC30] + (BYTE1(v126) ^ 0x4F) * v76 + 10391202 - 5440 * (((12632257 * ((BYTE1(v126) ^ 0x4Fu) * v76 + 10391202)) >> 32) >> 4)), 7) ^ 0xD3D987A3, 25));
  v134 = *(&STACK[0xC30] + (v126 ^ 0x7E) * v76 - 5440 * (((1579033 * ((v126 ^ 0x7Eu) * v76)) >> 32) >> 1)) ^ *(&STACK[0xC30] + (BYTE2(v126) ^ 0xE5) * v76 + 18008183 - 5440 * (((12632257 * ((BYTE2(v126) ^ 0xE5u) * v76 + 18008183)) >> 32) >> 4)) ^ v133 ^ *(&STACK[0xC30] + v132 - 5440 * (((12632257 * v132) >> 32) >> 4)) ^ 0x8579ED46;
  v135 = v372 ^ 0x3C0BF3AD ^ v134;
  v389 = v125;
  v136 = (((v125 ^ 0xA616C802) + 1508456446) ^ ((v125 ^ 0x1712F12B) - 387117355) ^ ((v125 ^ 0xE5C579DD) + 440043043)) + (((v135 ^ 0x5D38D22B) - 1564004907) ^ ((v135 ^ 0x8E5A683E) + 1906677698) ^ ((v135 ^ 0x6D13454D) - 1829979469)) + ((2 * ((v125 ^ 0x54C140F4) & (v135 ^ 0x3CDFE54F) ^ v125 & 0x2AE1A17)) ^ 0xFEFFFFD7);
  v137 = (v136 - ((2 * (v136 + 322125901)) & 0xE2BE2758) + 76698617) ^ v127;
  v138 = LOBYTE(STACK[0xA7A]);
  v139 = v138 & 0x89 | 0x34;
  v369 = v138;
  v371 = v138 ^ 0x20;
  v406 = (v131 ^ 0x25) << 24;
  v140 = (((v137 ^ v406) >> 24) ^ 0x88) * v76 + 14189543;
  v350 = v134 ^ v375;
  v141 = *(&STACK[0xC30] + v137 * v76 - 5440 * (((1579033 * (v137 * v76)) >> 32) >> 1)) ^ *(&STACK[0xC30] + BYTE2(v137) * v76 + 18013623 - 5440 * (((101058055 * (BYTE2(v137) * v76 + 18013623)) >> 32) >> 7)) ^ v134 ^ v375 ^ *(&STACK[0xC30] + v140 - 5440 * (((12632257 * v140) >> 32) >> 4)) ^ *(&STACK[0xC30] + BYTE1(v137) * v76 + 10391202 - 5440 * (((12632257 * (BYTE1(v137) * v76 + 10391202)) >> 32) >> 4)) ^ 0x5ACC4CB7;
  v368 = v135 ^ v141;
  v365 = v136 + 322125901;
  v366 = v135 ^ v141 ^ ((v138 ^ (2 * ((v138 ^ 0x20) & (2 * ((v138 ^ 0x20) & (2 * ((v138 ^ 0x20) & (2 * ((v138 ^ 0x20) & (2 * ((v138 ^ 0x20) & (2 * (((2 * (v138 & 0x89)) | 9) & v138)) ^ v139)) ^ v139)) ^ v139)) ^ v139)) ^ v139)) ^ 9) << 24);
  HIDWORD(v398) = v137 ^ v406 ^ 0xB4A7CC16;
  v142 = (v136 + 322125901) ^ HIDWORD(v398) ^ v366 ^ 0xDD8F5DCC;
  v143 = (v142 ^ 0xEEEEEEEE) & (v124 ^ 0x70000000) ^ v124 & 0x45000000;
  v341 = v124;
  v144 = v142 ^ 0xA74B186F;
  v145 = (((v124 ^ 0xE8A6FE53) - 1729929857) ^ ((v124 ^ 0x7918FA91) + 157112765) ^ ((v124 ^ 0xE1BE04C2) - 1845778448)) + (((v142 ^ 0xCBD89CEF) + 1295775329) ^ ((v142 ^ 0xB78A5D12) + 828979102) ^ ((v142 ^ 0x57F59D35) - 787023941)) - ((((2 * v143) ^ 0x4DB3BA1E) + 630156390) ^ (((2 * v143) ^ 0x71C3E720) + 436154716) ^ (((2 * v143) ^ 0xBC705D3E) - 733181114)) + 1870050730;
  v146 = ((v145 ^ 0x3C78E9F9) - 146493789) ^ v145 ^ ((v145 ^ 0xA9015E32) + 1648171370) ^ ((v145 ^ 0x6E43D090) - 1518364724) ^ ((v145 ^ 0xCFF9DFFF) + 80058533);
  v147 = v136 - 2 * ((v136 + 322125901) & 0x170090DF ^ (((((v125 ^ 2) - 2) ^ ((v125 ^ 0x2B) - 43)) ^ ((v125 ^ 0xDD) + 35)) + ((((v135 ^ 0x2B) - 43) ^ ((v135 ^ 0x3E) - 62)) ^ ((v135 ^ 0x4D) - 77))) & 1) + 708038955;
  LODWORD(v398) = v141;
  v360 = *(&STACK[0xC30] + (BYTE2(v144) ^ 0xEC) * v76 + 18013623 - 5440 * (((101058055 * ((BYTE2(v144) ^ 0xECu) * v76 + 18013623)) >> 32) >> 7)) ^ *(&STACK[0xC30] + (BYTE1(v144) ^ 0x44) * v76 + 10391202 - 5440 * (((12632257 * ((BYTE1(v144) ^ 0x44u) * v76 + 10391202)) >> 32) >> 4)) ^ v141 ^ *(&STACK[0xC30] + (v144 ^ 0xA7) * v76 - 5440 * (((1579033 * ((v144 ^ 0xA7u) * v76)) >> 32) >> 1)) ^ 0xDA6EE7D6 ^ *(&STACK[0xC30] + ((((HIBYTE(v146) ^ 0xD71E1F3A) + 1196218320) ^ ((HIBYTE(v146) ^ 0x5B1BF7A1) - 884392107) ^ ((HIBYTE(v146) ^ 0x8C05E8AF) + 475471963)) * v76 + 197851501) % 0x1540);
  v361 = v366 ^ 0xDD8F5DCC ^ v124;
  v148 = v361 ^ 0x670090DE;
  v338 = (v148 + 781243805 + (~(2 * v148) | 0xA2DE54C7)) ^ v360;
  v149 = v338 ^ v366 ^ 0xDD8F5DCC ^ v147;
  v150 = ((v149 & 0x20000000 ^ 0xF21701DB) + 1930346512) ^ (v149 & 0x20000000 | 0x829A01D7) ^ ((v149 & 0x20000000 ^ 0xF2C6E18A) + 1944002655);
  v151 = v150 - 1853629028;
  v152 = (v151 ^ 0xE948662E) & (2 * (v151 & 0xE000000F)) | v151 & 0xE000000F;
  v153 = ((2 * (v151 ^ 0xFB48E720)) ^ 0x2C550F5E) & (v151 ^ 0xFB48E720) ^ (2 * (v151 ^ 0xFB48E720)) & 0x162A87AE;
  v154 = (v153 ^ 0x420068D) & (4 * v152) | v152;
  v155 = ((4 * (v153 ^ 0x122A80A1)) ^ 0x58AA1EBC) & (v153 ^ 0x122A80A1) ^ (4 * (v153 ^ 0x122A80A1)) & 0x162A87AC;
  v156 = (v155 ^ 0x102A06A0) & (16 * v154) ^ v154;
  v157 = ((16 * (v155 ^ 0x6008103)) ^ 0x62A87AF0) & (v155 ^ 0x6008103) ^ (16 * (v155 ^ 0x6008103)) & 0x162A87A0;
  v158 = v156 ^ 0x162A87AF ^ (v157 ^ 0x2280200) & (v156 << 8);
  v159 = (v150 - 1853629028) ^ (2 * ((v158 << 16) & 0x162A0000 ^ v158 ^ ((v158 << 16) ^ 0x7AF0000) & (((v157 ^ 0x1402850F) << 8) & 0x162A0000 ^ 0x14280000 ^ (((v157 ^ 0x1402850F) << 8) ^ 0x2A870000) & (v157 ^ 0x1402850F))));
  v160 = ((v159 ^ 0xCD636FD1) & (v146 ^ 0xF60B0276) ^ v159 & 0xC2C8BAD2) == -1069536560;
  LODWORD(v133) = a62 << 24;
  LODWORD(v339) = v133 >> 28;
  v161 = LOBYTE(STACK[0x304]);
  v162 = v161 & 0xFFFFFFFD ^ 0x2E;
  v163 = v161 ^ (2 * ((v161 ^ 0x20) & (2 * ((v161 ^ 0x20) & (2 * ((v161 ^ 0x20) & (2 * ((v161 ^ 0x20) & (2 * ((v161 ^ 0x20) & (2 * ((v161 ^ 0x20) & (2 * v162) ^ v162)) ^ v162)) ^ v162)) ^ v162)) ^ v162)) ^ v162));
  v164 = LOBYTE(STACK[0xA6A]);
  v165 = v164 & 0xA1 | 0x1C;
  v166 = v165 ^ v164 & 0x78;
  v167 = (v164 ^ 0x20) & (2 * ((v164 ^ 0x20) & (2 * ((v164 ^ 0x20) & (2 * ((v164 ^ 0x20) & (2 * ((v164 ^ 0x20) & (2 * (v164 & (2 * v165) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ v166;
  v168 = LOBYTE(STACK[0x672]);
  v169 = v168 & 0xFFFFFFC1 ^ 0xFFFFFF90;
  v170 = (v168 ^ 0x20) & (2 * ((v168 ^ 0x20) & (2 * ((v168 ^ 0x20) & (2 * ((v168 ^ 0x20) & (2 * ((v168 ^ 0x20) & (2 * (((2 * v168) & 0x42 | 0x21) & v168)) ^ v169)) ^ v169)) ^ v169)) ^ v169)) ^ v169;
  v171 = v406 ^ 0x6D099B07 ^ (v149 - ((2 * v149) & 0xCA13360E) - 452355321);
  v172 = LOBYTE(STACK[0xBEC]);
  v173 = v172 & 0x4B ^ 0x55;
  v174 = v172 & (2 * (v172 & (2 * (((2 * (((2 * v172) & 0xFFFFFFC2 | 0x21) & v172)) ^ 0x6A) & v172 ^ v173)) ^ v173)) ^ v173;
  v175 = v173 & 0xFFFFFFDF | (32 * ((v174 >> 4) & 1));
  v176 = (((v173 & 0xFFFFFFDF | (32 * (((v175 ^ v172 & (2 * v174)) >> 4) & 1))) ^ v172 & (2 * (v175 ^ v172 & (2 * v174)))) << 25) ^ (v172 << 24);
  v402 = v176;
  v177 = (v167 << 25) ^ (v164 << 24);
  v178 = LOBYTE(STACK[0x2B7]);
  v179 = v178 & 0x53 ^ 0xFFFFFFD9;
  v392 = v178 ^ (2 * ((v178 ^ 0x20) & (2 * ((v178 ^ 0x20) & (2 * ((v178 ^ 0x20) & (2 * ((v178 ^ 0x20) & (2 * (((2 * (((2 * v178) & 0xFFFFFFC2 | 0x21) & v178)) ^ 0x72) & (v178 ^ 0x20) ^ v179)) ^ v179)) ^ v179)) ^ v179)) ^ v179)) ^ 0x76;
  v180 = -1816698554 - v150;
  if (v160)
  {
    v180 = v150 - 1853629028;
  }

  v181 = (((v146 ^ 0x373581) + 1947986759) ^ ((v146 ^ 0xC82B3215) - 1140331309) ^ ((v146 ^ 0xFCDFBF30) - 1997315592)) - 399456271 + v180;
  v182 = (v181 ^ 0xF10821B2) & (2 * (v181 & 0xC442323A)) ^ v181 & 0xC442323A;
  v183 = ((2 * (v181 ^ 0xF18C05E2)) ^ 0x6B9C6FB0) & (v181 ^ 0xF18C05E2) ^ (2 * (v181 ^ 0xF18C05E2)) & 0x35CE37D8;
  v184 = (v183 ^ 0x21080190) & (4 * v182) ^ v182;
  v185 = ((4 * (v183 ^ 0x14421048)) ^ 0xD738DF60) & (v183 ^ 0x14421048) ^ (4 * (v183 ^ 0x14421048)) & 0x35CE37D8;
  v186 = (v185 ^ 0x15081740) & (16 * v184) ^ v184;
  v187 = ((16 * (v185 ^ 0x20C62098)) ^ 0x5CE37D80) & (v185 ^ 0x20C62098) ^ (16 * (v185 ^ 0x20C62098)) & 0x35CE37D0;
  v188 = v186 ^ 0x35CE37D8 ^ (v187 ^ 0x14C23500) & (v186 << 8);
  v189 = ((v149 & 0xDFFFFFFF) - ((2 * v149) & 0x9691A3A6) - 347549229) ^ v181 ^ (2 * ((v188 << 16) & 0x35CE0000 ^ v188 ^ ((v188 << 16) ^ 0x37D80000) & (((v187 ^ 0x210C0258) << 8) & 0x35CE0000 ^ 0x31C80000 ^ (((v187 ^ 0x210C0258) << 8) ^ 0x4E370000) & (v187 ^ 0x210C0258)))) ^ 0x2F068C59;
  v190 = LOBYTE(STACK[0xA0E]);
  v191 = v190 & 0xFFFFFFEB ^ 0x25;
  v390 = (v190 ^ 0x20) & (2 * ((v190 ^ 0x20) & (2 * ((v190 ^ 0x20) & (2 * ((v190 ^ 0x20) & (2 * ((v190 ^ 0x20) & (2 * (v190 & (2 * v191) ^ v191)) ^ v191)) ^ v191)) ^ v191)) ^ v191)) ^ v191;
  v192 = a73 & 0x45 ^ 0xFFFFFFD2;
  v193 = a73 ^ 0x20;
  v194 = a73 ^ (2 * (v193 & (2 * (v193 & (2 * (v193 & (2 * (v193 & (2 * (((2 * (((2 * a73) & 0xFFC2 | 0x21) & a73)) ^ 0x64) & v193 ^ v192)) ^ v192)) ^ v192)) ^ v192)) ^ v192));
  v195 = v189 ^ v177;
  v196 = *(&STACK[0xC30] + BYTE2(v189) * v76 + 18013623 - 5440 * (((101058055 * (BYTE2(v189) * v76 + 18013623)) >> 32) >> 7)) ^ *(&STACK[0xC30] + v189 * v76 - 5440 * (((1579033 * (v189 * v76)) >> 32) >> 1)) ^ *(&STACK[0xC30] + BYTE1(v189) * v76 + 10391202 - 5440 * (((12632257 * (BYTE1(v189) * v76 + 10391202)) >> 32) >> 4)) ^ *(&STACK[0xC30] + (HIBYTE(v195) ^ 0xD9) * v76 + 14189543 - 5440 * (((12632257 * ((HIBYTE(v195) ^ 0xD9) * v76 + 14189543)) >> 32) >> 4)) ^ 0x3A4E992A;
  v197 = LOBYTE(STACK[0x8E9]);
  v198 = v197 & 0xFFFFFFE5 ^ 0xFFFFFFA2;
  v199 = v196 ^ ((v163 ^ 0x1A) << 24) ^ v148;
  v200 = v199 ^ 0x87C3F513;
  v201 = v171 ^ v199;
  v397 = __PAIR64__(v146, v195);
  v202 = v201 ^ v195 ^ 0x44E992A;
  v203 = LOBYTE(STACK[0x36F]);
  v204 = v203 & 0x5B ^ 0xFFFFFFDD;
  v354 = v203 ^ (2 * ((v203 ^ 0x20) & (2 * ((v203 ^ 0x20) & (2 * ((v203 ^ 0x20) & (2 * ((v203 ^ 0x20) & (2 * (((2 * (((2 * v203) & 0xFFFFFFC2 | 0x21) & v203)) ^ 0x7A) & (v203 ^ 0x20) ^ v204)) ^ v204)) ^ v204)) ^ v204)) ^ v204));
  v205 = LOBYTE(STACK[0x21D]);
  v206 = v205 & 0xFFFFFFD9 ^ 0xFFFFFF9C;
  v207 = v205 ^ (2 * ((v205 ^ 0x20) & (2 * ((v205 ^ 0x20) & (2 * ((v205 ^ 0x20) & (2 * ((v205 ^ 0x20) & (2 * ((v205 ^ 0x20) & (2 * (((2 * v205) & 0x42 | 0x21) & v205)) ^ v206)) ^ v206)) ^ v206)) ^ v206)) ^ v206));
  v208 = (v170 << 25) ^ (v168 << 24);
  v209 = BYTE2(v202) * v76 + 18013623 - 5440 * (((101058055 * (BYTE2(v202) * v76 + 18013623)) >> 32) >> 7);
  v210 = BYTE1(v202) * v76 + 10391202 - 5440 * (((12632257 * (BYTE1(v202) * v76 + 10391202)) >> 32) >> 4);
  v211 = v202 ^ v176;
  v212 = (((v202 ^ v176) >> 24) ^ 0x4B) * v76 + 14189543;
  v363 = v196 ^ v360;
  HIDWORD(v395) = v200;
  HIDWORD(v332) = *(&STACK[0xC30] + v209) ^ v196 ^ v360 ^ *(&STACK[0xC30] + (v201 ^ v195 ^ 0x2A) * v76 - 5440 * (((1579033 * ((v201 ^ v195 ^ 0x2A) * v76)) >> 32) >> 1)) ^ *(&STACK[0xC30] + v210) ^ *(&STACK[0xC30] + v212 - 5440 * (((12632257 * v212) >> 32) >> 4));
  v358 = v200 ^ HIDWORD(v332) ^ 0x4E53208F;
  LODWORD(v395) = v201 ^ 0xCB437003;
  v213 = v358 ^ ((v194 ^ 0x32) << 24) ^ v201 ^ 0xAA4E992A;
  v214 = v213 - ((2 * v213) & 0xCF7B989A) - 406991795;
  v215 = (v207 ^ 0x6A) << 24;
  HIDWORD(v394) = v211;
  v404 = v215 ^ 0x54BDCC4D;
  v216 = v214 ^ v215 ^ 0x54BDCC4D ^ v208 ^ v211;
  v217 = (v214 ^ v215 ^ 0x4D ^ v208 ^ v211);
  v218 = LOBYTE(STACK[0x269]);
  v219 = v218 & 0xFFFFFF85 ^ 0xFFFFFFB2;
  v220 = v218 ^ 0x20;
  v335 = v214 ^ v215 ^ 0x54BDCC4D;
  v221 = (v335 - 2 * (v335 & 0x1BAC031D ^ v214 & 0x10) + 464257805) ^ ((v218 ^ (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (((2 * (((2 * v218) & 0x42 | 0x21) & v218)) ^ 0x24) & v220 ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ 0xB2) << 24) ^ 0x2CAC030D;
  v222 = HIDWORD(v332) ^ *(&STACK[0xC30] + BYTE1(v216) * v76 + 10391202 - 5440 * (((12632257 * (BYTE1(v216) * v76 + 10391202)) >> 32) >> 4)) ^ *(&STACK[0xC30] + BYTE2(v216) * v76 + 18013623 - 5440 * (((101058055 * (BYTE2(v216) * v76 + 18013623)) >> 32) >> 7)) ^ *(&STACK[0xC30] + ((((v217 ^ 0x5FFCDEC0) - 1584441350) ^ ((v217 ^ 0x23BE6CC1) - 573708807) ^ ((v217 ^ 0x7C42B201u) - 2110702791)) * v76 + 1048967662) % 0x1540) ^ *(&STACK[0xC30] + ((((HIBYTE(v216) ^ 0xD7212819) + 1031848561) ^ ((HIBYTE(v216) ^ 0x11A68519) - 83398799) ^ ((HIBYTE(v216) ^ 0xC687AD8A) + 740706276)) * v76 - 382879981) % 0x1540);
  v223 = (((v197 ^ 0x20) & (2 * ((v197 ^ 0x20) & (2 * ((v197 ^ 0x20) & (2 * ((v197 ^ 0x20) & (2 * ((v197 ^ 0x20) & (2 * (v197 & (2 * v198) ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ v198) << 25) ^ (v197 << 24);
  v224 = (v200 ^ HIDWORD(v332)) & 0x10;
  v355 = v222 ^ 0x6B7D2DC;
  if (((v222 ^ 0x6B7D2DC) & v224) != 0)
  {
    v224 = -v224;
  }

  v225 = (v221 - ((2 * v221) & 0x6BD27340) - 1243006560) ^ (v200 ^ HIDWORD(v332) ^ 0x4E53208F) & 0xFFFFFFEF ^ v215 ^ 0x6E939A0 ^ ((v222 ^ v215 ^ 0xA7DE4CB6) + v224);
  v226 = (v200 ^ HIDWORD(v332) ^ 0x4E53208F) & 0xFFFFFFEF ^ v215 ^ 0x6E939A0 ^ ((v222 ^ v215 ^ 0xA7DE4CB6) + v224);
  LODWORD(v394) = v216;
  v227 = (v225 - ((2 * v225) & 0xAE3EA40C) + 1461670406) ^ v223 ^ v216;
  v228 = LOBYTE(STACK[0x615]);
  v229 = v228 & 0xFFFFFF91 ^ 0x38;
  v230 = (v228 ^ 0x20) & (2 * ((v228 ^ 0x20) & (2 * ((v228 ^ 0x20) & (2 * ((v228 ^ 0x20) & (2 * ((v228 ^ 0x20) & (2 * (((2 * v228) & 0x42 | 0x21) & v228)) ^ v229)) ^ v229)) ^ v229)) ^ v229)) ^ v229;
  v231 = ((v225 - ((2 * v225) & 0xC) + 6) ^ v223 ^ v216);
  v232 = ((v231 ^ 0xBC0B38CC) + 1325060199) ^ ((v231 ^ 0x30213F30) - 1026500709) ^ ((v231 ^ 0x8C2A07FA) + 2128342865);
  HIDWORD(v333) = v227;
  v233 = v232 * v76 - 2090532057;
  v234 = LOBYTE(STACK[0xAD7]);
  v235 = v234 & 0xFFFFFF8F ^ 0x37;
  v236 = v234 ^ (2 * ((v234 ^ 0x20) & (2 * ((v234 ^ 0x20) & (2 * ((v234 ^ 0x20) & (2 * ((v234 ^ 0x20) & (2 * (((2 * (((2 * v234) & 0x42 | 0x21) & v234)) ^ 0x2E) & (v234 ^ 0x20) ^ v235)) ^ v235)) ^ v235)) ^ v235)) ^ v235));
  v237 = (v232 * v76 - 2090537497) % 0x1540;
  v238 = __ROR4__(v222 ^ 0x6B7D2DC ^ *(&STACK[0xC30] + (BYTE2(v227) ^ 0x1F) * v76 + 18013623 - 5440 * (((101058055 * ((BYTE2(v227) ^ 0x1Fu) * v76 + 18013623)) >> 32) >> 7)), 17) ^ 0x5FA1CF21;
  v239 = v232 + 219027281;
  v240 = (v390 << 25) ^ (v190 << 24) ^ 0x912337C;
  if (v239 >= 0xFFFFFFFE)
  {
    v241 = v233;
  }

  else
  {
    v241 = v237;
  }

  LODWORD(v336) = LOBYTE(STACK[0xB05]);
  v242 = v336 & 0xFFFFFFF7 ^ 0xFFFFFFAB;
  LODWORD(v332) = v336 ^ 0x20;
  LODWORD(v340) = (v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * v242) ^ v242)) ^ v242)) ^ v242)) ^ v242)) ^ v242)) ^ v242;
  v243 = (v230 << 25) ^ (v228 << 24);
  v244 = *(&STACK[0xC30] + (BYTE1(v227) ^ 0x52) * v76 + 10391202 - 5440 * (((12632257 * ((BYTE1(v227) ^ 0x52u) * v76 + 10391202)) >> 32) >> 4)) ^ *(&STACK[0xC30] + ((((HIBYTE(v227) ^ 0x636F93D5) - 1555206555) ^ ((HIBYTE(v227) ^ 0x33E15343) - 205279501) ^ ((HIBYTE(v227) ^ 0x508EC0AE) - 1867760352)) * v76 + 1246026949) % 0x1540u) ^ __ROR4__(v238, 15) ^ *(&STACK[0xC30] + v241) ^ 0xE611B2EB;
  v245 = STACK[0x984];
  v246 = STACK[0x984] & 0x4F ^ 0xD7;
  LODWORD(v331) = (v245 ^ (2 * ((v245 ^ 0x20) & (2 * ((v245 ^ 0x20) & (2 * ((v245 ^ 0x20) & (2 * ((v245 ^ 0x20) & (2 * (((2 * (((2 * v245) & 0x42 | 0x21) & v245)) ^ 0xEE) & (v245 ^ 0x20) ^ v246)) ^ v246)) ^ v246)) ^ v246)) ^ v246))) ^ 0xC7CA84A9;
  v247 = v392 << 24;
  v248 = (v392 << 24) ^ 0x96634A70;
  v352 = (v225 - ((2 * v225) & 0x66C694E0) - 1285338512) ^ v248;
  v249 = (v243 ^ 0x11000000) & (v226 ^ v244 ^ 0x69000000) ^ v243 & 0x36000000;
  v250 = (v352 - 2 * (v352 & 0x5FD3AA63 ^ v225 & 1) - 539776414) ^ v226 ^ v244;
  v251 = ((v243 ^ 0x773D7CC8) + 631848668) ^ ((v243 ^ 0x42650C18) + 284249612) ^ ((v243 ^ 0xA45870D0) - 154389820);
  v252 = LOBYTE(STACK[0x303]);
  v253 = v252 & 0x5B ^ 0xFFFFFFDD;
  v357 = v252 ^ (2 * ((v252 ^ 0x20) & (2 * ((v252 ^ 0x20) & (2 * ((v252 ^ 0x20) & (2 * ((v252 ^ 0x20) & (2 * (((2 * (((2 * v252) & 0xFFFFFFC2 | 0x21) & v252)) ^ 0x7A) & (v252 ^ 0x20) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253));
  v254 = LOBYTE(STACK[0xC0B]);
  v255 = v254 & 0xA1 | 0x12;
  v256 = v255 ^ v254 & 0x64;
  v257 = v254 ^ (2 * ((v254 ^ 0x20) & (2 * ((v254 ^ 0x20) & (2 * ((v254 ^ 0x20) & (2 * ((v254 ^ 0x20) & (2 * (v254 & (2 * (v254 & (2 * v255) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ v256));
  v258 = v250 ^ ((v236 ^ 0x45) << 24) ^ v227;
  v259 = ((v258 ^ 0x5206) >> 8) * v76 + 10391202;
  v260 = (((v226 ^ v244 ^ 0xA5BAB07E) + 1514491778) ^ ((v226 ^ v244 ^ 0x2916982A) - 689346602) ^ ((v226 ^ v244 ^ 0x537F8236) - 1400865334)) + v251 - ((((2 * v249) ^ 0xF45E1608) - 1490021010) ^ (((2 * v249) ^ 0x971AE916) - 998970764) ^ (((2 * v249) ^ 0x4344FF1E) + 271252604)) - 978660009;
  v261 = ((v260 ^ 0x3327042A) - 114978185) ^ v260 ^ ((v260 ^ 0x8659DD77) + 1281051436) ^ ((v260 ^ 0x7EF44703) - 1258892960) ^ ((v260 ^ 0xFE77F7FD) + 880107938);
  v262 = ((v258 ^ 0xF21F5206) >> 16) * v76 + 18013623;
  v263 = LOBYTE(STACK[0xA6B]);
  v264 = v263 & 0x59 ^ 0xFFFFFFDC;
  v265 = (v263 ^ 0x20) & (2 * ((v263 ^ 0x20) & (2 * ((v263 ^ 0x20) & (2 * ((v263 ^ 0x20) & (2 * ((v263 ^ 0x20) & (2 * (((2 * v263) & 0xFFFFFFC2 | 0x21) & v263)) ^ v264)) ^ v264)) ^ v264)) ^ v264)) ^ v264;
  v266 = LOBYTE(STACK[0xA5B]);
  v267 = v266 & 0x69 ^ 0x64;
  v347 = v261;
  v348 = *(&STACK[0xC30] + v259 - 5440 * (((12632257 * v259) >> 32) >> 4)) ^ *(&STACK[0xC30] + ((v258 ^ 0xF21F5206) >> 24) * v76 + 14189543 - 5440 * (((12632257 * (((v258 ^ 0xF21F5206) >> 24) * v76 + 14189543)) >> 32) >> 4)) ^ *(&STACK[0xC30] + v262 - 5440 * (((101058055 * v262) >> 32) >> 7)) ^ v404 ^ v244 ^ *(&STACK[0xC30] + (v258 ^ 6) * v76 - 5440 * (((1579033 * ((v258 ^ 6u) * v76)) >> 32) >> 1));
  v344 = (v265 << 25) ^ (v263 << 24) ^ 0x39FA8BF ^ v250;
  v268 = v348 ^ v240 ^ 0x6F956CF3;
  v345 = v268 + (((v261 ^ 0xFD25182) - 423807490) ^ ((v261 ^ 0x7DAA961F) - 1798966687) ^ ((v261 ^ 0x4785AE3E) - 1360344510)) + 594407971 - ((2 * ((v261 ^ 0x72A30DD9) & v268 ^ (v348 ^ v240) & 0x475E647A)) ^ 0x8E28C8E4);
  v269 = (v345 - 2 * (v345 & 0x674614BB ^ (v268 + ((((v261 ^ 0x82) - 2) ^ ((v261 ^ 0x1F) + 97)) ^ ((v261 ^ 0x3E) + 66)) + 35) & 1) - 414837574) ^ ((v257 ^ 0x23) << 24) ^ 0x14614BA;
  HIDWORD(v391) = v258 ^ 0xF21F5206;
  v270 = v248 ^ ((v258 ^ 0xF21F5206) - 2 * ((v258 ^ 0xF21F5206) & 0x33634A79 ^ v258 & 9) - 1285338512);
  v271 = LOBYTE(STACK[0x26A]);
  v272 = v271 & 0x7D ^ 0x6E;
  v273 = v271 ^ (2 * ((v271 ^ 0x20) & (2 * ((v271 ^ 0x20) & (2 * ((v271 ^ 0x20) & (2 * ((v271 ^ 0x20) & (2 * (((2 * (((2 * v271) & 0xFFFFFFC2 | 0x21) & v271)) ^ 0x5C) & v271 ^ v272)) ^ v272)) ^ v272)) ^ v272)) ^ v272));
  v274 = (v269 - ((2 * v269) & 0xB53F517E) + 1520412863) ^ v344;
  v275 = v274 ^ v270;
  v276 = ((((v269 - ((2 * v269) & 0x517E) - 22337) ^ v344 ^ v270) >> 8) ^ 0xB0A) + (((v274 ^ v270) >> 7) & 0x14);
  v277 = LOBYTE(STACK[0x671]);
  v278 = v277 & 0x23 ^ 0x41;
  HIDWORD(a20) = (v266 ^ (2 * ((v266 ^ 0x20) & (2 * ((v266 ^ 0x20) & (2 * ((v266 ^ 0x20) & (2 * ((v266 ^ 0x20) & (2 * (v266 & (2 * (((2 * v266) & 0xFFFFFFC2 | 0x21) & v266)) ^ v267)) ^ v267)) ^ v267)) ^ v267)) ^ v267)) ^ 0xCCCCCCCC) << 24;
  LODWORD(v391) = v274 ^ v270 ^ HIDWORD(a20) ^ 0x5DA7930A;
  LODWORD(v342) = ((v273 ^ 0xC0) << 24) ^ 0x7CFCE02F;
  HIDWORD(v342) = v274;
  v279 = LOBYTE(STACK[0x937]);
  v280 = v279 & 0xFFFFFFDF ^ 0xFFFFFF9F;
  LODWORD(v334) = (((v277 ^ 0x20) & (2 * ((v277 ^ 0x20) & (2 * ((v277 ^ 0x20) & (2 * ((v277 ^ 0x20) & (2 * (((2 * (((2 * v277) & 0xFFFFFFC2 | 0x21) & v277)) ^ 2) & v277 ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278) << 25) ^ (v277 << 24);
  HIDWORD(v339) = v348 ^ v240 ^ *(&STACK[0xC30] + BYTE2(v275) * v76 + 18013623 - 5440 * (((101058055 * (BYTE2(v275) * v76 + 18013623)) >> 32) >> 7)) ^ *(&STACK[0xC30] + v275 * v76 - 5440 * (((1579033 * (v275 * v76)) >> 32) >> 1)) ^ *(&STACK[0xC30] + v276 * v76 - 5440 * (((12632257 * (v276 * v76)) >> 32) >> 4)) ^ 0xA264A2AA ^ *(&STACK[0xC30] + ((((((v275 ^ HIDWORD(a20)) >> 24) ^ 0x5E697E25) - 1174386470) ^ ((((v275 ^ HIDWORD(a20)) >> 24) ^ 0x4EA7FC58) - 1429288283) ^ ((((v275 ^ HIDWORD(a20)) >> 24) ^ 0x10CE82D8) - 190335963)) * v76 + 1168562485) % 0x1540);
  v281 = v341 ^ 0x24C140F4 ^ v389;
  HIDWORD(v340) = v247 ^ (v274 - ((2 * v274) & 0x66C694E0) - 1285338512) ^ 0x49A26AEF;
  HIDWORD(v331) = (v338 - ((2 * v338) & 0x91F1354) + 76515754) ^ ((v279 ^ (2 * ((v279 ^ 0x20) & (2 * ((v279 ^ 0x20) & (2 * ((v279 ^ 0x20) & (2 * ((v279 ^ 0x20) & (2 * (((2 * (((2 * v279) & 0x42 | 0x21) & v279)) ^ 0x7E) & (v279 ^ 0x20) ^ v280)) ^ v280)) ^ v280)) ^ v280)) ^ v280)) ^ 0x7D) << 24) ^ 0xA68F89AA;
  v282 = LOBYTE(STACK[0x778]);
  v283 = v282 & 0xFFFFFF93 ^ 0xFFFFFFB9;
  v284 = __PAIR64__(v244, v404 ^ v244 ^ v240) >> 13;
  LODWORD(v337) = v282 ^ (2 * ((v282 ^ 0x20) & (2 * ((v282 ^ 0x20) & (2 * ((v282 ^ 0x20) & (2 * ((v282 ^ 0x20) & (2 * (((2 * (((2 * v282) & 0x42 | 0x21) & v282)) ^ 0x32) & (v282 ^ 0x20) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283));
  v285 = (a74 & 0xE1 | v75) ^ a74 & 0xE8;
  v286 = v218 & 0xFFFFFF99 ^ 0x3C;
  v287 = LOBYTE(STACK[0xAF5]);
  v288 = v287 & 5 | 0x72;
  HIDWORD(v289) = v284 ^ 0x2B;
  LODWORD(v289) = v284 ^ 0x9E137C80;
  HIDWORD(v289) = v289 >> 6;
  LODWORD(v289) = HIDWORD(v289);
  v290 = v335 ^ ((v218 ^ v287 ^ (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (((2 * v218) | 0x21) & v218)) ^ v286)) ^ v286)) ^ v286)) ^ v286)) ^ v286 ^ v288 ^ (v287 ^ 0x20) & (2 * ((v287 ^ 0x20) & (2 * ((v287 ^ 0x20) & (2 * ((v287 ^ 0x20) & (2 * ((v287 ^ 0x20) & (2 * ((v287 & (2 * (v287 & 5 | 0x12))) ^ (v287 & 5 | 0x12))) ^ v288)) ^ v288)) ^ v288)) ^ v288)))) ^ 0x9C) << 24);
  HIDWORD(v388) = (v289 >> 13) - ((2 * (v289 >> 13)) & 0x62A0E9FE) - 1320127233;
  v291 = LOBYTE(STACK[0x4C2]);
  v292 = v291 & 0xFFFFFFE3 ^ 0x21;
  v293 = (v291 ^ 0x20) & (2 * ((v291 ^ 0x20) & (2 * ((v291 ^ 0x20) & (2 * ((v291 ^ 0x20) & (2 * ((v291 ^ 0x20) & (2 * (v291 & (2 * v292) ^ v292)) ^ v292)) ^ v292)) ^ v292)) ^ v292)) ^ v292;
  HIDWORD(v289) = v350 ^ 0x27EFD;
  LODWORD(v289) = v350 ^ v406 ^ 0x26300000;
  v294 = v289 >> 19;
  HIDWORD(v336) = (((a74 ^ 0x20) & (2 * ((a74 ^ 0x20) & (2 * ((a74 ^ 0x20) & (2 * ((a74 ^ 0x20) & (2 * (a74 & (2 * (a74 & (2 * v285) ^ v285)) ^ v285)) ^ v285)) ^ v285)) ^ v285)) ^ v285) << 25) ^ (a74 << 24);
  v295 = LOBYTE(STACK[0x457]);
  v296 = v295 & 0xFFFFFFAB ^ 0xFFFFFF85;
  HIDWORD(v334) = v295 ^ (2 * ((v295 ^ 0x20) & (2 * ((v295 ^ 0x20) & (2 * ((v295 ^ 0x20) & (2 * ((v295 ^ 0x20) & (2 * ((v295 ^ 0x20) & (2 * (v295 & (2 * v296) ^ v296)) ^ v296)) ^ v296)) ^ v296)) ^ v296)) ^ v296)) ^ v75;
  v351 = (v293 << 25) ^ (v291 << 24);
  v297 = LOBYTE(STACK[0x812]);
  v298 = v297 & 0x19 ^ 0x7C;
  HIDWORD(v337) = v297 ^ (2 * ((v297 ^ 0x20) & (2 * ((v297 ^ 0x20) & (2 * ((v297 ^ 0x20) & (2 * ((v297 ^ 0x20) & (2 * ((v297 ^ 0x20) & (2 * (((2 * v297) & 0xFFFFFFC2 | 0x21) & v297)) ^ v298)) ^ v298)) ^ v298)) ^ v298)) ^ v298)) ^ 0xCB;
  v299 = __PAIR64__(v289 >> 19, __ROR4__(v331, 7));
  LODWORD(v333) = v299 ^ 0x8044B800;
  LODWORD(v299) = v294;
  LODWORD(v388) = (v299 >> 13) - ((2 * (v299 >> 13)) & 0xA9992780) - 724790336;
  LODWORD(a44) = v372 ^ 0x1C0785D;
  LODWORD(a43) = (((v372 ^ 0x54C62C6F) - 1758322626) ^ ((v372 ^ 0xB6561D9C) + 1973555663) ^ ((v372 ^ 0x95001A9) - 895218180)) - 423238947;
  v300 = ((v374 & 0x20000 ^ 0xDFFF709B) + 234752132) ^ 0x3FF80106;
  v301 = (v300 + 2081313628) ^ 0xB4FAEBC5;
  v302 = (2 * ((v300 + 2081313628) & 0xE0001)) & v301 ^ (v300 + 2081313628) & 0xE0001 ^ ((2 * ((v300 + 2081313628) & 0xE0001)) & 0xFFF7F7F7 | 0x808);
  v303 = (2 * v301) & 0x514DF4E ^ 0x5144142 ^ ((2 * v301) ^ 0xA29BE9C) & v301;
  v304 = (4 * v302) & 0x514DF4C ^ v302 ^ ((4 * v302) ^ 0x2020) & v303;
  v305 = (4 * v303) & 0x514DF4C ^ 0x1048246 ^ ((4 * v303) ^ 0x14537D38) & v303;
  v306 = (16 * v304) & 0x514DF40 ^ v304 ^ ((16 * v304) ^ 0x8080) & v305;
  v307 = (16 * v305) & 0x514DF40 ^ 0x4100B0E ^ ((16 * v305) ^ 0x514DF4E0) & v305;
  v308 = v306 ^ (v306 << 8) & 0x514DF00 ^ ((v306 << 8) ^ 0x880800) & v307 ^ 0x5145F46;
  HIDWORD(v387) = v300 + 2081313628;
  v309 = (v300 + 2081313628) ^ (2 * ((v308 << 16) & 0x5140000 ^ v308 ^ ((v308 << 16) ^ 0x5F4E0000) & ((v307 << 8) & 0x5140000 ^ ((v307 << 8) ^ 0x14DF0000) & v307 ^ 0x1000000)));
  LODWORD(v387) = v309 ^ 0xB1CF8A17;
  HIDWORD(v386) = v309 & 0xD1C344C2;
  LODWORD(v386) = 538264462 - v300;
  HIDWORD(v385) = v281 - 1054451951 + (~(2 * v281) | 0x7DB351DF);
  v310 = ((v368 & 0x10) + 1706272632) ^ ((v368 & 0x10) + 1984177016) ^ ((v368 & 0x10 ^ 0x4DCB4237) + 704174673);
  LODWORD(v385) = v365 ^ v361 ^ 0x670090DE;
  HIDWORD(v384) = (v365 ^ v361) & 0x7779166E;
  v311 = v369 & 0x73 ^ 0xFFFFFFE9;
  v312 = v371 & (2 * (v371 & (2 * (v371 & (2 * (v371 & (2 * (((2 * (((2 * v369) & 0xFFFFFFC2 | 0x21) & v369)) ^ 0x52) & v369 ^ v311)) ^ v311)) ^ v311)) ^ v311)) ^ v311;
  v313 = (v310 - 1431345639);
  v314 = ((v310 + 26137) & 0x161 | (((((v310 + 26137) & 0x161) >> 6) & 1) << 7) | 0x30008800) ^ ((v310 - 1431345639) ^ 0xCB17CDDA) & (2 * ((v310 + 26137) & 0x161));
  v315 = (2 * (v313 ^ 0xCB17CDDA)) & 0x3A0ACCB4 ^ 0xA0A4495 ^ ((2 * (v313 ^ 0xCB17CDDA)) ^ 0x7415996A) & (v313 ^ 0xCB17CDDA);
  v316 = (4 * v314) & 0x20C84 ^ v314 ^ v315 & (4 * v314) & 0x1FFC;
  v317 = (4 * v315) ^ 0xE82B32D4;
  v318 = (4 * v315) & 0x3A0ACCB4 ^ 0x1200CC21 ^ v317 & v315;
  v319 = (16 * v316) & 0x3A0ACCB0 ^ v316 ^ ((16 * v316) ^ 0x288000) & v318;
  v320 = (16 * v318) & 0x3A0ACCB0 ^ 0x1A0204A5 ^ ((16 * v318) ^ 0xA0ACCB50) & v318;
  v321 = v319 ^ (v319 << 8) & 0x3A0ACC00 ^ ((v319 << 8) ^ 0xA080000) & v320 ^ 0x8C4B5;
  v322 = (v321 << 16) ^ 0x4CB50000u;
  HIDWORD(v383) = 1930860297 - v310;
  LODWORD(v383) = (((v365 ^ v361 ^ 0x8E615A73) - 690635292) ^ ((v365 ^ v361 ^ 0x3FA0A171) + 1729382114) ^ ((v365 ^ v361 ^ 0xD6C16BDC) - 1904898995)) + 1756688345;
  HIDWORD(v382) = (v366 & 0xFFFFFFEF ^ 0xCA8FCD02) - ((2 * (v366 & 0xFFFFFFEF ^ 0xCA8FCD02)) & 0x4FC3584) + 41818834;
  v323 = v336 & 0x5D ^ 0x5E;
  v324 = (v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * ((v336 ^ 0x20) & (2 * (v336 & (2 * v323) ^ v323)) ^ v323)) ^ v323)) ^ v323)) ^ v323)) ^ v323;
  LODWORD(v382) = (HIDWORD(v332) ^ (v331 << 24) ^ 0xF2DE4CB6) - ((2 * (HIDWORD(v332) ^ (v331 << 24) ^ 0xF2DE4CB6)) & 0xE0ED8046) + 1886830627;
  HIDWORD(v381) = (((v290 ^ 0x49DCD721) - 198425767) ^ ((v290 ^ 0x50DF0504) - 315649666) ^ ((v290 ^ 0x1903D225) - 1527560611)) + 620958910;
  v325 = ((HIDWORD(v333) & 0x200000 ^ 0x94EE1A5E) + 1472897271) ^ ((HIDWORD(v333) & 0x200000) - 608484053) ^ ((HIDWORD(v333) & 0x200000 ^ 0x99A57F17) + 1518454208);
  v326 = (((v325 - 1317585897) ^ 0xB5C2F70) - 2143803824) ^ (v325 - 1317585897) ^ (((v325 - 1317585897) ^ 0x6FBF1B85) - 455404869) ^ (((v325 - 1317585897) ^ 0xCFC73CCA) + 1151546870) ^ (((v325 - 1317585897) ^ 0xDFBFFEFF) + 1423701953);
  HIDWORD(v380) = v326 ^ 0x749BF6C0;
  LODWORD(v381) = v325 - 1317585897;
  LODWORD(v380) = v326 & 0x8971F789;
  HIDWORD(v379) = 935375209 - v325;
  v327 = v378 ^ v375;
  HIDWORD(v377) = v374 & 0xFFFDFFFF ^ v378;
  LODWORD(v379) = v327;
  LODWORD(v377) = v365 ^ v406;
  HIDWORD(v376) = v369 ^ (2 * v312);
  LODWORD(v376) = v336 ^ (2 * v324);
  HIDWORD(v373) = v334 ^ v360;
  LODWORD(v373) = (HIDWORD(v331) - ((2 * HIDWORD(v331)) & 0x4F702520) + 666374800) ^ 0x27B81290;
  HIDWORD(v370) = v404 ^ v363;
  HIDWORD(v299) = v333;
  LODWORD(v299) = v333;
  LODWORD(v370) = ((v299 >> 10) << 9) ^ v358;
  HIDWORD(v367) = ((v337 ^ 0xFFFFFFC7) << 24) ^ v355;
  LODWORD(v367) = HIDWORD(v336) ^ v352;
  HIDWORD(v364) = v348 ^ (HIDWORD(v334) << 24);
  LODWORD(v364) = v342 ^ v226;
  HIDWORD(v362) = v342 ^ v347;
  LODWORD(v362) = v342 ^ v344;
  HIDWORD(v359) = v345 ^ HIDWORD(a20);
  LODWORD(v359) = HIDWORD(v342) ^ v351;
  v328 = v342 ^ v345 ^ HIDWORD(v339);
  HIDWORD(v356) = ((v357 ^ 0xFFFFFFE1) << 24) ^ HIDWORD(v339);
  LODWORD(v356) = (HIDWORD(v337) << 24) ^ v328;
  HIDWORD(v353) = HIDWORD(v340) ^ v328 ^ ((v354 ^ 0x63) << 24);
  LODWORD(v384) = v310 - 1431345639;
  v329 = v313 ^ (2 * ((v321 << 16) & 0x3A0A0000 ^ v321 ^ v322 & ((v320 << 8) & 0x3A0A0000 ^ 0x30020000 ^ ((v320 << 8) ^ 0xACC0000) & v320)));
  HIDWORD(v349) = v329 ^ 0x95089805;
  LODWORD(v353) = (v336 ^ (2 * v340));
  LODWORD(v349) = v329 & 0x250F5854;
  HIDWORD(v346) = v290 ^ 0x40BFCA4;
  HIDWORD(v343) = v403 ^ 0x583FF8E0;
  LODWORD(v346) = HIDWORD(v333) & 0xFFDFFFFF;
  LODWORD(v343) = v171 ^ v402;
  HIDWORD(a20) = 164868;
  return (*(a70 + 8 * v74))(1423701953, v313, LOBYTE(STACK[0xA7A]), HIDWORD(v333), a69, LOBYTE(STACK[0xB05]), v322, v317, a9, v331, v332, v333, v334, v336, v337, v339, v340, v342, a19, a20, v343, v346, v349, v353, v356, v359, v362, v364, v367, v370, v373, v376, v377, v379, v380, v381, v382, v383, v384, v385, v386, v387, a43, a44, v388, v391, v394, v395, v397, v398);
}

uint64_t sub_100B3389C()
{
  LODWORD(STACK[0x18A4]) = 0;
  STACK[0x1320] = 4;
  v3 = (*(v1 + 8 * (v0 ^ 0x819FBE1A)))(&STACK[0x224D], &STACK[0x1A1C], &STACK[0x1320], 0, 0);
  v4 = 551690071 * ((((2 * (v2 - 240)) | 0xB4B34F9D5C8C0E24) - (v2 - 240) + 0x25A6583151B9F8EELL) ^ 0xABC4F500E0AB5445);
  *(v2 - 240) = (v0 + 1041169529) ^ v4;
  *(v2 - 236) = v4 ^ (v0 - 1602583612) ^ 0xFED;
  STACK[0x25F0] = v4;
  STACK[0x25E8] = v3 - v4;
  *(v2 - 232) = v0 - 1602583612 - v4 + 5230;
  *(v2 - 228) = v0 - 1602583612 - v4;
  *(v2 - 224) = v4;
  v5 = (*(v1 + 8 * (v0 + 2120268347)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 220)))(v5);
}

uint64_t sub_100B339C8()
{
  STACK[0x1C48] = v1;
  v3 = STACK[0xE90];
  STACK[0x1C50] = STACK[0xE90];
  return (*(v2 + 8 * (((v1 - v3 <= ((v0 - 4252) | 0x451u) - 1654) * ((507 * (v0 ^ 0x12D7)) ^ 0x397A)) ^ v0)))();
}

uint64_t sub_100B33A2C(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned __int8 a39)
{
  STACK[0x328] = v46 ^ v43;
  v48 = STACK[0x338];
  v49 = *(STACK[0x338] + (a3 ^ 4));
  v50 = 77 * v49 - 41;
  LODWORD(STACK[0x280]) = v50;
  v51 = v50 ^ 6;
  v52 = (v50 & 0xFFFFFF87 | 0x70) ^ v50 & 0xFFFFFFE0;
  LODWORD(STACK[0x248]) = v52;
  LODWORD(STACK[0x258]) = v51 & (2 * (v51 & (2 * (v51 & (2 * (v51 & (2 * (v51 & (2 * (v51 & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  LODWORD(STACK[0x268]) = 104 * v49 - 89;
  v53 = *(v48 + (a8 ^ 0xF6));
  v54 = 77 * v53 - 46;
  LODWORD(STACK[0x270]) = v54;
  v55 = v54 ^ 0xC;
  v56 = (v54 & 0xFFFFFF8C | 0x50) ^ v54 & 0xFFFFFFA0;
  LODWORD(STACK[0x228]) = v56;
  LODWORD(STACK[0x250]) = v55 & (2 * (v55 & (2 * (v55 & (2 * (v55 & (2 * (v55 & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56));
  v57 = 104 * v53 - 108;
  LODWORD(STACK[0x230]) = v57;
  LODWORD(STACK[0x204]) = v57 & 0xFFFFFFE0 ^ 0xFFFFFFC3;
  LODWORD(STACK[0x208]) = (v57 ^ v44) & (2 * ((v57 ^ v44) & (2 * ((v57 ^ v44) & (2 * ((v57 ^ v44) & (2 * (v57 & 0xFFFFFFE0)) ^ v57 & 0xFFFFFFE0)) ^ v57 & 0xFFFFFFE0)) ^ v57 & 0xFFFFFFE0 ^ 0xFFFFFFC3));
  v58 = *(v48 + (a1 ^ 0xF0));
  v59 = 77 * v58 + 65;
  LODWORD(STACK[0x278]) = v59;
  v60 = v59 & 0x3D ^ v45;
  LODWORD(STACK[0x240]) = v60;
  LODWORD(STACK[0x260]) = (v59 ^ 0x1C) & (2 * ((v59 ^ 0x1C) & (2 * ((v59 ^ 0x1C) & (2 * ((v59 ^ 0x1C) & (2 * ((v59 ^ 0x1C) & (2 * (v59 & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  v61 = 104 * v58 - 107;
  LODWORD(STACK[0x238]) = v61;
  v62 = (v61 & 0x58 | 6) ^ v61 & 0x38;
  LODWORD(STACK[0x210]) = v62;
  LODWORD(STACK[0x218]) = (v61 ^ 0x58) & (2 * ((v61 ^ 0x58) & (2 * ((v61 ^ 0x58) & (2 * ((v61 ^ 0x58) & (2 * ((v61 ^ 0x58) & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62));
  v63 = 77 * *(v48 + (v39 ^ 0xC4)) + 5;
  LODWORD(STACK[0x220]) = v63;
  v97 = v63 & 0xFFFFFFB7 ^ 0x3F;
  v64 = (2 * v63) & 0x32 ^ 0x6E;
  v63 ^= 0x58u;
  LODWORD(STACK[0x200]) = v63 & (2 * (v63 & (2 * (v63 & (2 * (v63 & (2 * (v63 & (2 * (v64 & v63 ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97));
  v65 = *(v48 + (v42 ^ 0xC7));
  v66 = 17 - 51 * v65;
  v95 = v66 & 0x2D ^ 0x70;
  v96 = (v66 ^ 0x4C) & (2 * ((v66 ^ 0x4C) & (2 * ((v66 ^ 0x4C) & (2 * ((v66 ^ 0x4C) & (2 * ((v66 ^ 0x4C) & (2 * (v66 & (2 * v66) & 0x1A ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95));
  v94 = v66 + (v65 << 7);
  v93 = 104 * v65 - 43;
  v67 = v93 & v40 ^ 0x48;
  v92 = (v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67;
  v68 = *(v48 + (a39 ^ 0xC1));
  v91 = 77 * v68 - 30;
  v69 = v91 & 0x16 ^ 0xFFFFFFDD;
  v90 = 104 * v68 - 97;
  LODWORD(STACK[0x290]) = ((2 * (((2 * (((2 * (v90 ^ 0x10)) & 0x70 ^ 0x38) & (v90 ^ 0x10))) ^ 0x78) & (v90 ^ 0x50))) ^ 0x78) & (v90 ^ 0x50) ^ v69 ^ (v91 ^ 0x7C) & (2 * ((v91 ^ 0x7C) & (2 * ((v91 ^ 0x7C) & (2 * ((v91 ^ 0x7C) & (2 * ((v91 ^ 0x7C) & (2 * (v69 ^ v91 & 0x2A)) ^ v69)) ^ v69)) ^ v69)) ^ v69));
  v70 = *(v48 + (STACK[0x2F8] ^ 0xBBLL));
  LODWORD(STACK[0x2F8]) = -16;
  LODWORD(STACK[0x288]) = 77 * v70 - 16;
  LODWORD(STACK[0x298]) = 77 * *(v48 + (STACK[0x298] ^ 0x19)) - 39;
  v71 = 77 * *(v48 + (STACK[0x2A8] ^ 0x19)) + 115;
  LODWORD(STACK[0x2A8]) = v71;
  v72 = v71 & 0x45 ^ 0x7D;
  v73 = (2 * v71) & 0x56 ^ 0x2E;
  v71 ^= 0x6Au;
  LODWORD(STACK[0x2A0]) = v71 & (2 * (v71 & (2 * (v71 & (2 * (v71 & (2 * (v71 & (2 * (v73 & v71 ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72));
  v74 = 77 * *(v48 + (STACK[0x2B8] ^ 0x19)) - 63;
  LODWORD(STACK[0x2B8]) = v74;
  v75 = v74 & 0x23 ^ 0xFFFFFFC3;
  v76 = (2 * v74) & 0x3A ^ 0x3E;
  v74 ^= 0x1Cu;
  LODWORD(STACK[0x2B0]) = v74 & (2 * (v74 & (2 * (v74 & (2 * (v74 & (2 * (v74 & (2 * (v76 & v74 ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75));
  v77 = *(v48 + (STACK[0x2C0] ^ 0x19));
  v78 = 99 - 51 * v77;
  v79 = v78 & 0x3F ^ 0xFFFFFFA2;
  LODWORD(STACK[0x2C0]) = (v78 ^ 0x7A) & (2 * ((v78 ^ 0x7A) & (2 * ((v78 ^ 0x7A) & (2 * ((v78 ^ 0x7A) & (2 * ((v78 ^ 0x7A) & (2 * ((v78 ^ 0xFFFFFFF3) & (2 * v78) & 0x76 ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79;
  v88 = 104 * v77 + 23;
  v89 = v78 + (v77 << 7);
  v80 = v88 & 0x3D ^ 0x32;
  v81 = *(v48 + (STACK[0x2C8] ^ 0x19));
  LODWORD(STACK[0x2C8]) = -51 * v81 - 79 + (v81 << 7);
  v82 = *(v48 + (STACK[0x2E0] ^ 0x19));
  v83 = 77 * v82 - 64;
  LODWORD(STACK[0x2E0]) = v83;
  v84 = (77 * v82) & 0xE ^ 0xFFFFFFD8;
  LODWORD(STACK[0x2D8]) = (v83 ^ 0x1C) & (2 * ((v83 ^ 0x1C) & (2 * ((v83 ^ 0x1C) & (2 * ((v83 ^ 0x1C) & (2 * ((v83 ^ 0x1C) & (2 * v84) ^ v84)) ^ v84)) ^ v84)) ^ v84));
  LODWORD(STACK[0x2D0]) = 104 * v82 + 19;
  v85 = 77 * *(v48 + (STACK[0x2E8] ^ 0x19)) + 114;
  v86 = v85 & 0x1A ^ 0x1F;
  LODWORD(STACK[0x2E8]) = (v85 ^ 0x6C) & (2 * ((v85 ^ 0x6C) & (2 * ((v85 ^ 0x6C) & (2 * ((v85 ^ 0x6C) & (2 * ((v85 ^ 0x6C) & (2 * ((v85 ^ 0x6C) & 0x36 ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86));
  LODWORD(v48) = v93 ^ v88 ^ v89 ^ v94 ^ (2 * (v92 ^ v96 ^ v95 ^ LODWORD(STACK[0x2C0]) ^ (v88 ^ 0x58) & (2 * ((v88 ^ 0x58) & (2 * ((v88 ^ 0x58) & (2 * ((v88 ^ 0x58) & (2 * ((v88 ^ 0x58) & (2 * (v88 & (2 * v88) & 0x32 ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80));
  *(v41 + 8 * (((STACK[0x334] & 0xF8) >> 3) ^ 0x16)) = *(a2 + 8 * ((LODWORD(STACK[0x334]) ^ 3 | 0xFFFFFFF0) & 0xD7)) ^ STACK[0x328] ^ 0x30B9EB40FE9C455DLL;
  return (*(STACK[0x348] + 8 * v47))(v48 ^ 0x82u);
}

uint64_t sub_100B35630(uint64_t a1)
{
  v6 = *(a1 + 68);
  v7 = a1 + 56;
  v9 = STACK[0x768];
  v10 = *(*STACK[0x768] + (*v4 & (((((2 * ((a1 + 56) & 0xFFFFFFF8)) & 0xB1ED3C20) + ((a1 + 56) & 0xFFFFFFF8 ^ 0x58F69E17)) & 0xFFFFFFF8) - 1596200064)));
  v11 = (v1 + 548062450) ^ 0xF41651499F5E3F4CLL ^ (v10 + __ROR8__((a1 + 56) & 0xFFFFFFFFFFFFFFF8, 8));
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x153242EE3CF06A49;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v5;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17) ^ 0xE5AF1AB32EBD3CDDLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xC7DDC9F6CC45B721;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xA82620A559D2DA78;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5F8DEC3EA3980A1BLL;
  *(a1 + 56) = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ v2) >> (8 * (v7 & 7u))) ^ (8 * v6);
  v25 = *(*v9 + (((((a1 + 57) & 0x1A566748 | 0xE5A998B3) - 103642729 + ((a1 + 57) & 0xE5A998B0 | 0x1A56674C) + 1) & *v4) & 0xFFFFFFFFFFFFFFF8));
  v26 = (v25 + __ROR8__((a1 + 57) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x61EB52B7A3C96E6ALL) - (v28 + v27) - 0x30F5A95BD1E4B736) ^ 0xDA38144A12EB2283;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v5;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xE5AF1AB32EBD3CDDLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xC7DDC9F6CC45B721;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA82620A559D2DA78;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x5F8DEC3EA3980A1BLL;
  v40 = __ROR8__(v39, 8);
  v41 = __ROR8__(v38, 61);
  *(a1 + 57) = ((v6 >> 5) - ((v6 >> 4) & 0xA) - 123) ^ 0x85 ^ (((((2 * ((v40 + (v39 ^ v41)) ^ 0x74820F8CC546114FLL)) | 0x800D929DC877F340) - ((v40 + (v39 ^ v41)) ^ 0x74820F8CC546114FLL) + 0x3FF936B11BC40660) ^ 0x75470E1085B8A0C7) >> (8 * ((a1 + 57) & 7)));
  v42 = STACK[0xA88];
  v43 = STACK[0xA88];
  v44 = *(STACK[0xA88] + 68);
  v45 = STACK[0xA88] + 58;
  v46 = *(*v9 + ((*v4 & ((v45 & 0xFFFFFFF8 ^ 0xF3BA559D) + 102249466 + ((2 * (v45 & 0xFFFFFFF8)) & 0xE774AB30))) & 0xFFFFFFFFFFFFFFF8));
  v47 = __ROR8__(v45 & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = (v47 + v46 - ((2 * (v47 + v46)) & 0xE47C148080CD7F70) - 0xDC1F5BFBF994048) ^ 0x6285B09DF3883DFLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (0x12D23BEF3C77DDA4 - ((v50 + v49) | 0x12D23BEF3C77DDA4) + ((v50 + v49) | 0xED2DC410C388225BLL)) ^ 0xF81F86FEFF784812;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v5;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v52, 61);
  v56 = (v54 + v55) ^ 0xE5AF1AB32EBD3CDDLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (0xC266A4D617392352 - ((v58 + v57) | 0xC266A4D617392352) + ((v58 + v57) | 0x3D995B29E8C6DCADLL)) ^ 0xFA4492DF24836B8CLL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xA82620A559D2DA78;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x5F8DEC3EA3980A1BLL;
  *(v42 + 58) = ((v44 >> 13) - ((v44 >> 12) & 0x8A) + 69) ^ 0x45 ^ (((__ROR8__(v63, 8) + (v63 ^ __ROR8__(v62, 61))) ^ v2) >> (8 * (v45 & 7u)));
  v64 = *(*v9 + ((*v4 & (((v42 + 59) & 0xFFFFFFF8 ^ 0x5E8EB106) + 1482767006 + ((2 * ((v42 + 59) & 0xFFFFFFF8)) | 0x42E29DF3))) & 0xFFFFFFFFFFFFFFF8));
  v65 = (v64 + __ROR8__((v42 + 59) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0x1FECEC5F22B7C6F4) - 0x700989D06EA41C86) ^ 0x9AC434C1ADAB8933;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ v5;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0x579D84F9051619B0) - (v72 + v71) + 0x54313D837D74F327) ^ 0xB19E273053C9CFFALL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xC7DDC9F6CC45B721;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x387D737F0617A292) - 0x63C146407CF42EB7) ^ 0x3418991ADAD90B31 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__((v77 + v76 - ((2 * (v77 + v76)) & 0x387D737F0617A292) - 0x63C146407CF42EB7) ^ 0x3418991ADAD90B31, 8) + v78) ^ 0x5F8DEC3EA3980A1BLL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  *(v42 + 59) = ((v44 >> 21) - ((v44 >> 20) & 0xF6) + 123) ^ 0x7B ^ (((0x7D4D25F02A193AE5 - ((v81 + v80) | 0x7D4D25F02A193AE5) + ((v81 + v80) | 0x82B2DA0FD5E6C51ALL)) ^ 0x437112DD71238D32) >> (8 * ((v42 + 59) & 7)));
  v82 = *(v43 + 64);
  HIDWORD(v81) = v82;
  LODWORD(v81) = *(v43 + 68);
  v83 = (v81 >> 29) - ((2 * (v81 >> 29)) & 0x70) + 56;
  v84 = *(*v9 + ((*v4 & (((v43 + 60) & 0x18680260) + ((v43 + 60) & 0xE797FD98 | 0x18680260) - 513112268)) & 0xFFFFFFFFFFFFFFF8));
  v85 = (v84 + __ROR8__((v43 + 60) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x153242EE3CF06A49;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((2 * (v89 + v88)) | 0x143C8E3340B96288) - (v89 + v88) + 0x75E1B8E65FA34EBCLL) ^ 0xA86B93DE986988DFLL;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xE5AF1AB32EBD3CDDLL;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xC7DDC9F6CC45B721;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (0x69BAFC27C2A525DFLL - ((v96 + v95) | 0x69BAFC27C2A525DFLL) + ((v96 + v95) | 0x964503D83D5ADA20)) ^ 0x3E63237D64880058;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  *(v43 + 60) = v83 ^ (((__ROR8__((((2 * (v99 + v98)) & 0x390EF823E819A738) - (v99 + v98) + 0x637883EE0BF32C63) ^ 0x3CF56FD0A86B2678, 8) + ((((2 * (v99 + v98)) & 0x390EF823E819A738) - (v99 + v98) + 0x637883EE0BF32C63) ^ 0x3CF56FD0A86B2678 ^ __ROR8__(v98, 61))) ^ v2) >> (8 * ((v43 + 60) & 7))) ^ 0x38;
  v100 = *(*v9 + ((*v4 & (((v43 + 61) & 0xC0C31810 | 0x3F3CE7EB) - 103642729 + ((v43 + 61) & 0x3F3CE7E8 | 0xC0C31815))) & 0xFFFFFFFFFFFFFFF8));
  v101 = __ROR8__((v43 + 61) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (0xAAB19A7A1513BF7CLL - ((v100 + v101) | 0xAAB19A7A1513BF7CLL) + ((v100 + v101) | 0x554E6585EAEC4083)) ^ 0xA15834CC75B27CE4;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (0x36AF90C38B77AAF6 - ((v104 + v103) | 0x36AF90C38B77AAF6) + ((v104 + v103) | 0xC9506F3C74885509)) ^ 0xDC622DD248783F40;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ v5;
  v108 = __ROR8__(v107, 8);
  v109 = v107 ^ __ROR8__(v106, 61);
  v110 = (v108 + v109 - ((2 * (v108 + v109)) & 0xACD7E9AAF839F6EELL) - 0x29940B2A83E30489) ^ 0x33C4EE6652A1C7AALL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xC7DDC9F6CC45B721;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((2 * (v114 + v113)) | 0x60DF15674F63E282) - (v114 + v113) - 0x306F8AB3A7B1F141) ^ 0x9849AA16FE632B39;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (v117 + v116 - ((2 * (v117 + v116)) & 0xB5F800480EA81F64) - 0x2503FFDBF8ABF04ELL) ^ 0x8571EC1AA4CC05A9;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  *(v43 + 61) = ((~(v82 >> 4) | 0xF5) + (v82 >> 5) - 122) ^ 0x85 ^ (((0x77764F4DB4F4AA66 - ((v120 + v119) | 0x77764F4DB4F4AA66) + ((v120 + v119) | 0x8889B0B24B0B5599)) ^ 0x494A7860EFCE1DB1) >> (8 * ((v43 + 61) & 7)));
  v121 = STACK[0xA88];
  v122 = *(STACK[0xA88] + 64);
  v123 = STACK[0xA88] + 62;
  v124 = *(*v9 + ((*v4 & ((v123 & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v125 = (__ROR8__(v123 & 0xFFFFFFFFFFFFFFF8, 8) + v124) ^ 0xF41651499F5E3C67;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x153242EE3CF06A49;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (v129 + v128 - ((2 * (v129 + v128)) & 0x9EF1462230FFE55CLL) + 0x4F78A311187FF2AELL) ^ 0x6D0D77D6204ACB35;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (0xDC13126C98BB92BCLL - ((v132 + v131) | 0xDC13126C98BB92BCLL) + ((v132 + v131) | 0x23ECED9367446D43)) ^ 0xC643F72049F9519ELL ^ __ROR8__(v131, 61);
  v134 = (__ROR8__((0xDC13126C98BB92BCLL - ((v132 + v131) | 0xDC13126C98BB92BCLL) + ((v132 + v131) | 0x23ECED9367446D43)) ^ 0xC643F72049F9519ELL, 8) + v133) ^ 0xC7DDC9F6CC45B721;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0xA82620A559D2DA78;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  *(v121 + 62) = ((v122 >> 13) - ((v122 >> 12) & 0x5C) - 82) ^ 0xAE ^ (((__ROR8__((((2 * (v138 + v137)) | 0xD2B93E3E50C3D2BALL) - (v138 + v137) + 0x16A360E0D79E16A3) ^ 0xB6D173218BF9E346, 8) + ((((2 * (v138 + v137)) | 0xD2B93E3E50C3D2BALL) - (v138 + v137) + 0x16A360E0D79E16A3) ^ 0xB6D173218BF9E346 ^ __ROR8__(v137, 61))) ^ v2) >> (8 * (v123 & 7u)));
  v139 = *(*v9 + ((*v4 & (((v121 + 63) & 0xCB608230) + ((v121 + 63) & 0x349F7DC8 | 0xCB608234) + 779224931)) & 0xFFFFFFFFFFFFFFF8));
  v140 = (v139 + __ROR8__((v121 + 63) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x153242EE3CF06A49;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ v5;
  v145 = __ROR8__(v144, 8);
  v146 = v144 ^ __ROR8__(v143, 61);
  v147 = (v145 + v146) ^ 0xE5AF1AB32EBD3CDDLL;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (((2 * (v149 + v148)) & 0x5BD79DE6F3F65254) - (v149 + v148) + 0x5214310C8604D6D5) ^ 0x95C9F8FA4A4161F4;
  v151 = v150 ^ __ROR8__(v148, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0xA82620A559D2DA78;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x5F8DEC3EA3980A1BLL;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  *(v121 + 63) = ((v122 >> 21) - ((v122 >> 20) & 0x62) + 49) ^ 0x31 ^ (((((2 * ((v156 + v155) ^ 0x107BE6722411E84ELL)) | 0x30FCE49744A5A7FALL) - ((v156 + v155) ^ 0x107BE6722411E84ELL) + 0x67818DB45DAD2C03) ^ 0x49C65CEB2286739BuLL) >> (8 * ((v121 + 63) & 7)));
  return (*(v3 + 8 * ((13991 * (v1 > 0xA24F3388)) ^ (v1 + 548061934))))();
}

uint64_t sub_100B36528@<X0>(_BYTE *a1@<X8>)
{
  a1[31] = v2[31] ^ 0x3C;
  a1[30] = (((v1 - 53) | 0x24) + 93) ^ v2[30];
  a1[29] = v2[29] ^ 0x5F;
  a1[28] = v2[28] ^ 0x72;
  a1[27] = v2[27] ^ 0x63;
  a1[26] = v2[26] ^ 0xF6;
  a1[25] = v2[25] ^ 0x23;
  a1[24] = v2[24] ^ 0xBE;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100B36624@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 == 0xA148291BDA8D7F91;
  v5 = STACK[0x35C];
  v6 = LODWORD(STACK[0x35C]) ^ 1;
  v7 = 1534937323 * ((~(v1 | 0xB52BF097A7305236) + (v1 & 0xB52BF097A7305236)) ^ 0x87AC87AA9E21568ELL);
  if (v4)
  {
    v8 = 1534937323 * ((~(v1 | 0xB52BF097A7305236) + (v1 & 0xB52BF097A7305236)) ^ 0x87AC87AA9E21568ELL);
  }

  else
  {
    v8 = v7 + 1;
  }

  *(v3 - 216) = v8;
  *(v3 - 232) = v5 - v7 + 3481;
  *(v3 - 228) = v7 + 1451516474;
  *(v3 - 208) = v6 + v7;
  *(v3 - 224) = v7;
  *(v3 - 220) = v5 ^ v7;
  *(v3 - 240) = v7;
  v9 = (*(v2 + 254368))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v9);
}

uint64_t sub_100B366F0@<X0>(int a1@<W8>)
{
  v4 = STACK[0x1710];
  *(v2 + 1624) = STACK[0x1710];
  v5 = *(v4 - 0x1883660EE814440ALL);
  LODWORD(STACK[0x1D90]) = v5 + 37;
  v6 = *(v4 - 0x1883660EE814440ELL) - 1452458552;
  v5 -= 1452458515;
  v7 = v5 < 0x26B6B244;
  v8 = v6 < v5;
  if (v7 != v6 < ((a1 - 73416950) & 0x85FFD3AC ^ 0xA7297048))
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = v1;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0x1D94]) = v9;
  return (*(v3 + 8 * (a1 ^ (8 * v8))))();
}

uint64_t sub_100B367C8()
{
  STACK[0x1BF0] = v1;
  v3 = STACK[0x8E0];
  STACK[0x1BF8] = STACK[0x8E0];
  return (*(v2 + 8 * (((v1 - v3 > (v0 ^ 0xB7D09BED) - 3083895688u) * ((3 * (v0 ^ 0x1A4A)) ^ 0x3BB3)) ^ v0)))();
}

uint64_t sub_100B36834()
{
  STACK[0xC88] = 4;
  v3 = (*(v1 + 8 * (v0 + 2120268298)))(&STACK[0x224D], &STACK[0x83C], &STACK[0xC88], 0, 0);
  STACK[0x25E8] = -551690071 * ((2 * ((v2 - 240) & 0x10E45F51D93E89A0) - (v2 - 240) - 0x10E45F51D93E89A6) ^ 0x9E86F260682C250DLL);
  *(v2 - 240) = (v0 + 1041169529) ^ (551690071 * ((2 * ((v2 - 240) & 0xD93E89A0) - (v2 - 240) + 650212954) ^ 0x682C250D));
  *(v2 - 236) = (v0 + 450349123) ^ (551690071 * ((2 * ((v2 - 240) & 0xD93E89A0) - (v2 - 240) + 650212954) ^ 0x682C250D));
  *(v2 - 232) = v0 - 551690071 * ((2 * ((v2 - 240) & 0xD93E89A0) - (v2 - 240) + 650212954) ^ 0x682C250D) + 450347899;
  *(v2 - 228) = v0 - 551690071 * ((2 * ((v2 - 240) & 0xD93E89A0) - (v2 - 240) + 650212954) ^ 0x682C250D) + 450347914;
  STACK[0x25F0] = 551690071 * ((2 * ((v2 - 240) & 0x10E45F51D93E89A0) - (v2 - 240) - 0x10E45F51D93E89A6) ^ 0x9E86F260682C250DLL) + v3;
  *(v2 - 224) = 551690071 * ((2 * ((v2 - 240) & 0xD93E89A0) - (v2 - 240) + 650212954) ^ 0x682C250D);
  v4 = (*(v1 + 8 * (v0 ^ 0x819FBE4B)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 220)))(v4);
}

uint64_t sub_100B36AF8(uint64_t a1)
{
  LODWORD(STACK[0xF44]) = v1;
  STACK[0x9D0] = *(v3 + 8 * (v2 + 1211072288));
  return (*(v3 + 8 * (v2 ^ 0xB7D096D3 | (v2 + 1211072288))))(a1, 1211082140);
}

uint64_t sub_100B36C08@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W7>, int a6@<W8>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v15 = (a2 + v10 + v11);
  v16 = *v15;
  v17 = v15[1];
  v18 = (a3 + (v10 + a4));
  *v18 = vaddq_s8(vsubq_s8(v16, vandq_s8(vaddq_s8(v16, v16), a7)), a8);
  v18[1] = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a7)), a8);
  return (*(v13 + 8 * (((v10 + v12 + ((v9 + a6 - 1705) | a5) == v8) * v14) ^ a1)))();
}

uint64_t sub_100B37260()
{
  v4 = *(v1 + 1872);
  v5 = 1534937323 * ((v3 - 240 - 2 * ((v3 - 240) & 0xCF3CFE7655DDE1A7) - 0x30C30189AA221E59) ^ 0x24476B493331AE0);
  STACK[0x25D0] = v5;
  *(v3 - 224) = 1534937323 * ((v3 - 240 - 2 * ((v3 - 240) & 0x55DDE1A7) + 1440604583) ^ 0x93331AE0);
  *(v3 - 220) = (v0 + 264183341) ^ (1534937323 * ((v3 - 240 - 2 * ((v3 - 240) & 0x55DDE1A7) + 1440604583) ^ 0x93331AE0));
  *(v3 - 232) = v0 + 264183341 - 1534937323 * ((v3 - 240 - 2 * ((v3 - 240) & 0x55DDE1A7) + 1440604583) ^ 0x93331AE0) + 3488;
  *(v3 - 228) = 1534937323 * ((v3 - 240 - 2 * ((v3 - 240) & 0x55DDE1A7) + 1440604583) ^ 0x93331AE0) + v0 - 723214290;
  STACK[0x25E8] = v4 + v5;
  *(v3 - 208) = 1534937323 * ((v3 - 240 - 2 * ((v3 - 240) & 0x55DDE1A7) + 1440604583) ^ 0x93331AE0) + v0 + 264183341 - 30;
  v6 = (*(v2 + 8 * (v0 + 2120268328)))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v6);
}

uint64_t sub_100B37378()
{
  v2 = *(STACK[0xAB8] + 24);
  STACK[0x1638] = v2;
  return (*(v1 + 8 * ((124 * (((v2 == 0) ^ (-115 * (((v0 - 15) | 0xB0) ^ 0xB3))) & 1)) ^ v0)))();
}

uint64_t sub_100B373E0@<X0>(unint64_t a1@<X1>, int a2@<W2>, unint64_t a3@<X8>)
{
  v6 = (a2 + 650094392) | 0x91108180;
  LODWORD(STACK[0x4B0]) = v6;
  v7 = *(v5 + 8 * (((v4 < ((a2 - 457464666) & 0x1B441FFF ^ 0x1F6FuLL)) * (v6 ^ 0xB7D083A0)) ^ a2));
  *&STACK[0x880] = vdupq_n_s64(v3);
  *&STACK[0x820] = vdupq_n_s64(0x424A4E908EF1F472uLL);
  *&STACK[0x8A0] = vdupq_n_s64(a3);
  *&STACK[0x870] = vdupq_n_s64(0x47B76BB18D449D98uLL);
  *&STACK[0x850] = vdupq_n_s64(a1);
  *&STACK[0x800] = vdupq_n_s64(0x9307A233A3552064);
  *&STACK[0x7F0] = vdupq_n_s64(0x367C2EE62E556FCDuLL);
  *&STACK[0x810] = vdupq_n_s64(0x9967FA0BA4337986);
  return v7();
}

uint64_t sub_100B374E0()
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x950] = v3;
  return (*(STACK[0x8B0] + 8 * (((v3 == 0x308E083E0C524CBELL) * ((((v0 - 1671374533) & 0x639F5FDF) - 1211092046) ^ (v2 + 7))) | v0)))();
}

uint64_t sub_100B3758C@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x348];
  if (a1 == 0xA148291BDA8D7F91)
  {
    v4 = STACK[0x348];
  }

  else
  {
    v4 = v3 + 1;
  }

  *(v2 - 216) = v4;
  v5 = LODWORD(STACK[0x354]) - v3;
  v6 = STACK[0x358];
  *(v2 - 208) = v3 + LODWORD(STACK[0x358]) - 720;
  *(v2 - 232) = v5;
  *(v2 - 228) = v3 + 1451516474;
  *(v2 - 240) = v3;
  *(v2 - 224) = v3;
  *(v2 - 220) = v6 ^ v3;
  v7 = (*(v1 + 254368))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 204)))(v7);
}