uint64_t sub_100350F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = a9 + v20 - 179606839;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((2 * v23 - 0x2CD890DC65595E7CLL) & v18) + v17;
  v25 = __ROR8__(v24 ^ v16, 8);
  v26 = v24 ^ a8;
  v27 = ((a7 | (2 * (v25 + v26))) - (v25 + v26) + a6) ^ a5;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) ^ a4) - (a3 & (2 * ((v29 + v28) ^ a4))) + a2) ^ a1;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v15 & (2 * (v32 + v31))) - (v32 + v31) + v14) ^ v13;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = *(v9 + v20 - 179606839);
  v37 = (v35 + v34 - (v12 & (2 * (v35 + v34))) + v11) ^ v10;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = ((v19 + 1043984409) & 0xB7117EFB ^ 0xFFFFFFFFFFFFFBB4) + v20;
  v40 = (__ROR8__(v37, 8) + v38) ^ 0x398AD2670602F2C9;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xC48877EC7E57888;
  *v22 = v36 ^ 0x12 ^ (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * (v22 & 7u)));
  return (*(v21 + 8 * (((((v39 - v19) | (v19 - v39)) >> 63) | (8 * (((v39 - v19) | (v19 - v39)) >> 63))) ^ v19 & 0xA04A3E2E)))();
}

uint64_t sub_100351118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 7534;
  v4 = STACK[0x1528];
  v5 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))(*(STACK[0x1528] - 0x4120F47AB517FA19));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517FA19) = 0;
  *(v4 - 0x4120F47AB517F655) = -1240130101;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10035144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 7785;
  v4 = STACK[0x1528];
  v5 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))(*(STACK[0x1528] - 0x4120F47AB517F9F1));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517F9F1) = 0;
  *(v4 - 0x4120F47AB517F641) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_100351500()
{
  v0 = STACK[0x798] - 2046;
  v1 = STACK[0x7B8];
  v2 = (*(STACK[0x7B8] + 8 * (STACK[0x798] ^ 0x710D)))();
  STACK[0x1990] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10035153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798];
  v4 = 61 * (STACK[0x798] ^ 0x3BBD);
  v5 = STACK[0x1390];
  v6 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))(*(STACK[0x1390] - 0x4120F47AB517FA09));
  v7 = STACK[0x7B8];
  *(v5 - 0x4120F47AB517FA09) = 0;
  *(v5 - 0x4120F47AB517F64DLL) = 0;
  return (*(v7 + 8 * (((v3 == -550442686) * (v4 + 877)) ^ (v3 - 9191))))(v6);
}

uint64_t sub_1003515E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 12573;
  v4 = (*(a3 + 8 * (STACK[0x798] + 3829)))(STACK[0x1868] - 0x388E91526D1D7DF0);
  v5 = STACK[0x7B8];
  *STACK[0x22B8] = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10035167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 3829)))();
  v6 = STACK[0x7B8];
  *(v4 + 24) = 0;
  return (*(v6 + 8 * (v3 - 13016)))(v5);
}

uint64_t sub_100351750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 10377;
  v4 = STACK[0x1528];
  v5 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))(*(STACK[0x1528] - 0x4120F47AB517F9D1));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517F9D1) = 0;
  *(v4 - 0x4120F47AB517F619) = -1240130101;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10035186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 10481;
  v4 = STACK[0x1528];
  v5 = (*(a3 + 8 * (STACK[0x798] + 3829)))(*(STACK[0x1528] - 0x4120F47AB517F9E1));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517F9E1) = 0;
  *(v4 - 0x4120F47AB517F635) = -1240130101;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_1003518FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 10018;
  v4 = STACK[0x1390];
  v5 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))(*(STACK[0x1390] - 0x4120F47AB517F9F1));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517F9F1) = 0;
  *(v4 - 0x4120F47AB517F641) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10035197C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 5029;
  v4 = STACK[0x1528];
  v5 = (*(a3 + 8 * (STACK[0x798] + 3829)))(*(STACK[0x1528] - 0x4120F47AB517F9D9));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517F9D9) = 0;
  *(v4 - 0x4120F47AB517F631) = -1240130101;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_100351A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] + 745554188;
  v4 = STACK[0x1528];
  v5 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))(*(STACK[0x1528] - 0x4120F47AB517FA01));
  v6 = STACK[0x7B8];
  *(v4 - 0x4120F47AB517FA01) = 0;
  *(v4 - 0x4120F47AB517F649) = 0;
  return (*(v6 + 8 * (v3 ^ 0x2C704CEF ^ (2812 * (v3 > 0x280C8497)))))(v5);
}

uint64_t sub_100351BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 - 6341) | 0x48;
  STACK[0x2220] = *(a3 + 8 * v4);
  return (*(a3 + 8 * (v4 + 1817)))();
}

uint64_t sub_100352000@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1600] = *(a1 + 8 * v4);
  LODWORD(STACK[0x291C]) = a2;
  v9 = STACK[0x1340];
  v10 = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x2920] = v10;
  STACK[0x2928] = (v10 + 20);
  STACK[0x2930] = (v10 + 40);
  STACK[0x1340] = v9 + 64;
  STACK[0x1938] = v3;
  STACK[0x1218] = v5;
  STACK[0x1988] = 0;
  STACK[0x1118] = 0;
  STACK[0xA50] = 0;
  LODWORD(STACK[0x1C54]) = 496132398;
  if (v5)
  {
    v11 = v7 == v6;
  }

  else
  {
    v11 = 1;
  }

  v14 = v11 || v3 == 0 || a2 == v8;
  return (*(a1 + 8 * ((v14 * (((v2 - 17712) | 0x800) - 2825)) ^ v2)))();
}

uint64_t sub_1003520E0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = (a2 ^ 0x49EAE234) + v3 - 694193256;
  LODWORD(STACK[0x1B68]) = v4;
  return (*(a1 + 8 * ((51 * (v4 == ((v2 + 1344001256) & 0xAFE432D7 ^ 0x42AE5574))) ^ (v2 + 6920))))();
}

uint64_t sub_1003521CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v3 + 13345)))((v5 + v4 + 21));
  v7 = STACK[0x7B8];
  STACK[0x2938] = v6;
  STACK[0xA50] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (((v3 + 979838882) & 0xC598C76B) - 1336)) ^ v3)))();
}

uint64_t sub_1003522F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * ((v3 - 13350) ^ 0x5955)))();
  v5 = STACK[0x7B8];
  STACK[0x1C28] = 0;
  return (*(v5 + 8 * (v3 - 13350)))(v4);
}

uint64_t sub_10035237C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = v3 - v2;
  v5 = (*(a1 + 8 * (a2 + v3 + 807)))();
  v6 = STACK[0x7B8];
  STACK[0xA50] = 0;
  return (*(v6 + 8 * ((v3 + 180053571 + v4) ^ (9530 * (v3 < 0xE7CDB760)))))(v5);
}

uint64_t sub_100352434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x582A)))();
  v5 = STACK[0x7B8];
  STACK[0x1988] = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_1003524BC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = a2 - 12362;
  v3 = (*(a1 + 8 * (a2 ^ 0x710D)))();
  return (*(STACK[0x7B8] + 8 * v2))(v3);
}

uint64_t sub_100352558@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v2 = STACK[0x798] - 3239;
  STACK[0x1340] = a2 - 1200;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100352574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1F40] = STACK[0xF30] - 0x2C5B5C3AA1F3F47ALL;
  STACK[0x940] = *(a3 + 8 * v3);
  return (*(a3 + 8 * ((v3 + 5478) ^ v3)))();
}

uint64_t sub_100352624@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v8 = STACK[0x1340];
  v9 = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x1B58] = (v9 + 0x53A911473888BE47);
  STACK[0x1340] = v8 + 2816;
  STACK[0x21B8] = v2;
  *(v9 + 102) = v6 - 32;
  *(v9 + 103) = v6;
  *(v9 + 52) = v9 + 0xB3C366FCAC564A8;
  *(v9 + 300) = v6 - 194;
  *(v9 + 301) = v6;
  *(v9 + 151) = v9 + 0xB3C366FCAC56638;
  *(v9 + 153) = &STACK[0xB3C366FCAC57244];
  LODWORD(STACK[0x620]) = v6 - 1;
  *(v9 + 304) = v6 - 1;
  *(v9 + 305) = v6;
  *(v9 + 502) = v6 - 194;
  *(v9 + 503) = v6;
  *(v9 + 252) = v9 + 0xB3C366FCAC56960;
  *(v9 + 700) = v6 - 194;
  *(v9 + 701) = v6;
  *(v9 + 351) = v9 + 0xB3C366FCAC56C78;
  if (v3 | a2)
  {
    v10 = v7 == a1;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  return (*(v5 + 8 * ((50 * v11) ^ v4)))();
}

uint64_t sub_100352828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  STACK[0x710] = v13;
  STACK[0x610] = v12 + 0x26261EE40B9DD68DLL;
  *v14 = v15;
  return (*(a3 + 8 * ((v11 + 4239) ^ (9096 * (a8 == 0x513B21BE3C896C2FLL)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_100352910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(v4 + 1224) + v5) = -1240195638;
  *(v4 + 1220) = STACK[0x620];
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100352960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0x660]) = a4;
  STACK[0x5C0] = a8;
  return (*(a3 + 8 * (((((v9 + 1004403841) & 0xC421CFE0) + ((v9 - 176855523) & 0xA8A667F) - 3036) * (v8 == 0)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1003529DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v16 = *(a1 + 8 * v14);
  v17 = ((((v15 - 232) | 0x53ED231BA11242DALL) - (v15 - 232) + ((v15 - 232) & 0xAC12DCE45EEDBD20)) ^ 0xFB096620170B9A0CLL) * v12;
  *(v15 - 216) = a2;
  v18 = v15 - 232;
  *(v18 + 24) = v11 - v17 + v14 + 59;
  *(v18 + 28) = ((v14 ^ (v13 + 2987) ^ 0xBE585769) + a11) ^ v17;
  v19 = STACK[0x610];
  *(v15 - 232) = v16 ^ v17;
  *(v15 - 224) = v19;
  v20 = (*(a1 + 8 * (v14 + 17480)))(v15 - 232);
  return (*(STACK[0x7B8] + 8 * (v14 + 6032)))(v20);
}

uint64_t sub_100352AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 14210)))(((3644 * (v3 ^ 0x12D1)) ^ 0x93F16CD4) + v4);
  v6 = STACK[0x7B8];
  STACK[0x1C28] = v5;
  return (*(v6 + 8 * (((v5 == 0) * (v3 - 4354)) ^ v3)))();
}

uint64_t sub_100352D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v23 = ((((v22 - 232) | 0x886E9C51C80087C9) - (v22 - 232) + ((v22 - 232) & 0x779163AE37FF7830)) ^ 0x208AD96A7E195F1FLL) * v19;
  v24 = *(a3 + 8 * v21) ^ v23;
  *(v22 - 216) = v18;
  v25 = v22 - 232;
  *(v25 + 24) = v17 - v23 + v21;
  *(v25 + 28) = (a17 - 993483851) ^ v23;
  v26 = STACK[0x610];
  *(v22 - 232) = v24;
  *(v22 - 224) = v26;
  v27 = (*(a3 + 8 * (v21 + 17421)))(v22 - 232);
  return (*(STACK[0x7B8] + 8 * (v21 ^ 0xCA9 ^ (5890 * ((((v21 ^ (v20 + 3042)) + 1904654040) ^ v21) > 0x11490FED)))))(v27);
}

uint64_t sub_100352E10()
{
  *(v5 - 0x53A911473888BE47) = v0;
  *(v5 - 0x53A911473888BE3FLL) = v1;
  v6 = STACK[0x1340];
  v7 = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x730] = (v7 + 0x26261EE40B9DD7FDLL);
  STACK[0x1340] = v6 + 800;
  STACK[0x650] = v5 - 0x53A911473888BE47;
  STACK[0x640] = *(v5 - 0x53A911473888BE47);
  STACK[0x670] = *(v5 - 0x53A911473888BE3FLL);
  *(v7 + 194) = STACK[0x660];
  *(v7 + 195) = -1240130101;
  *(v7 + 98) = v7 + 0xB3C366FCAC56490;
  return (*(v4 + 8 * (v3 ^ v2 ^ (13151 * (v3 < 0xBAC3B295)))))(3978265673, 8373, 8375, 2995, 9528, 439, 1527418597, 2942032838);
}

uint64_t sub_10035304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x600] = v11;
  *(v11 - 0x53A911473888BE37) = -754930655 - v4;
  v12 = STACK[0x640];
  v13 = STACK[0x620];
  *(*(STACK[0x640] + v8) + v9) = STACK[0x620];
  *(v12 - 0x26261EE40B9DD4F1) = v13;
  STACK[0x20A8] = *(v10 + 8 * v7);
  LODWORD(STACK[0x570]) = (v6 - v5) ^ 0x54E8C4DD;
  v14 = *(v10 + 8 * (((3 * (v7 ^ 0x82C)) ^ 0x6947) + v7));
  LODWORD(STACK[0x510]) = 1610609660;
  LODWORD(STACK[0x500]) = -1073747976;
  LODWORD(STACK[0x780]) = -771588097;
  STACK[0x760] = v12;
  return v14(a1, a2, v10, a4, 1334703793);
}

uint64_t sub_10035326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  LODWORD(STACK[0xE44]) = a6 & 0x1F ^ 0xD8C9CAA3;
  LODWORD(STACK[0xE84]) = 32 - (a6 & 0x1F ^ 0x1D);
  LODWORD(STACK[0x1F6C]) = ((a6 >> ((v6 ^ 0xD) - 12)) ^ 0x75DCD952) - 20971808 + ((2 * (a6 >> ((v6 ^ 0xD) - 12))) & 0xEF73EE8 ^ 0x4460C48);
  v9 = STACK[0x760];
  v10 = *(STACK[0x760] + v8) ^ v7;
  if (v10 < 0)
  {
    v10 = -v10;
  }

  LODWORD(STACK[0x12BC]) = (v10 ^ 0x76EEDFEF) - 48763776 + ((2 * v10) & 0xEDDDBFDE);
  v11 = *(a3 + 8 * v6);
  STACK[0x7A0] = v9;
  return v11();
}

uint64_t sub_1003535FC@<X0>(char a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v12 = *(a4 + v6);
  v13 = ((2 * (*(v12 + 4 * (a3 + 1) + v7) ^ v5)) << ~a1) | ((*(v12 + 4 * a3 + v7) ^ v5) >> a1);
  *(v12 + 4 * v8 + v7) = v13 + v5 - (v10 & (2 * v13));
  return (*(a2 + 8 * (((v11 == 0) * a5) ^ v9)))();
}

uint64_t sub_10035368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(v6 + 4 * (v3 - 1) + v5) ^ 0xB6151DCB) >> v4;
  *(v6 + 4 * v7 + v5) = v9 - 1240130101 - ((((v8 + 1342305311) & 0xAFFDDDEF) + 1814703657) & (2 * v9));
  return (*(a3 + 8 * ((61 * ((*(STACK[0x760] - 0x26261EE40B9DD4F1) ^ 0xB6151DCB) > 0)) ^ (v8 - 10180))))();
}

uint64_t sub_1003537A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = -7575946 - a8;
  if (v8 >= 0)
  {
    v11 = v9;
  }

  *(STACK[0x760] - 0x26261EE40B9DD4F1) = a6 - 128217367 + v11 - 1240130101 - ((2 * (a6 - 128217367 + v11)) & 0x6C2A3B96);
  return (*(a3 + 8 * v10))(1943958054);
}

uint64_t sub_10035383C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a5 + v8) + 4 * (a1 - 1943958054) + v9) = *(*(a5 + v8) + 4 * (v6 + a1) + v9);
  v11 = a1 == v5;
  v12 = (a1 + 1);
  v13 = v11;
  return (*(a3 + 8 * ((v13 * ((6 * v7) ^ 0x1D23)) ^ v10)))(v12);
}

uint64_t sub_100353BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8 + 14244 + LODWORD(STACK[0x1BD0]) - 297334605;
  v9 = (v8 < 2071576801) ^ (LODWORD(STACK[0xE64]) - 297316772 < ((a8 + 1748225402) & 0x97CC3FDB ^ 0x7B79DBBA));
  v10 = v8 < LODWORD(STACK[0xE64]) - 297316772;
  if (v9)
  {
    v10 = LODWORD(STACK[0xE64]) - 297316772 < ((a8 + 1748225402) & 0x97CC3FDB ^ 0x7B79DBBA);
  }

  if (v10)
  {
    v11 = STACK[0x1BD0];
  }

  else
  {
    v11 = STACK[0xE64];
  }

  return (*(a3 + 8 * ((15283 * (v11 - 221409925 > 0)) ^ (a8 + 3384))))(17832, 1555865075);
}

uint64_t sub_100353CE0@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  v19 = v9 ^ v11;
  v20 = 4 * v19;
  v21 = *(v13 + v10) + v20;
  v22 = (*(v21 + v12) ^ v6) + (v8 ^ v17) + (*(*(v14 + v10) + v20 + v12) ^ v6);
  *(v21 + v12) = (v22 - ((v22 << ((v16 | 1) ^ a1)) & v15) + v18) ^ a2;
  return (*(a3 + 8 * (((((v11 + v19 - ((2 * v19 + 2) & a6) + 1) ^ v11) < a4) * v7) ^ a5)))();
}

uint64_t sub_100353E4C@<X0>(uint64_t a1@<X2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X7>, int a6@<W8>)
{
  v17 = v9 ^ v11;
  v18 = *(a5 + v10) + 4 * v17;
  v19 = (*(v18 + v12) ^ v14) + ((a4 + v16) ^ v8);
  *(v18 + v12) = (v19 - (a3 & (2 * v19)) + v13) ^ v6;
  return (*(a1 + 8 * (((((v11 + v17 - ((2 * v17 + 2) & a6) + 1) ^ v11) < v7) * v15) ^ a2)))();
}

uint64_t sub_100353FAC@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>)
{
  v18 = v11 ^ v13;
  v19 = 4 * v18;
  v20 = (*(*(a6 + v12) + v19 + v14) ^ v16) + (v10 ^ v8);
  *(*(a7 + v12) + v19 + v14) = (v9 + v20 - (v17 & (2 * v20)) + a2) ^ a5;
  return (*(a3 + 8 * (((((v13 + v18 - ((2 * v18 + 2) & a8) + 1) ^ v13) < a1) * v15) ^ a4)))();
}

uint64_t sub_100354140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = STACK[0x141C];
  v9 = STACK[0x1F9C];
  v10 = LODWORD(STACK[0x1F9C]) - 1291023687;
  v11 = LODWORD(STACK[0x141C]) - 1291023687 < v10;
  if (LODWORD(STACK[0x141C]) - 1291023687 < 1005435917 != v10 < 1005435917)
  {
    v11 = v10 < 1005435917;
  }

  LODWORD(STACK[0x7A0]) = v9;
  if (v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  return (*(a3 + 8 * ((8155 * (v12 + ((a8 + 1745716449) & 0x97F27B29 ^ 0xF71EE6A2) < 0x7FFFFFFF)) ^ a8)))(0xE49D8256212F934CLL, 0x19D820C054A7E76ELL);
}

uint64_t sub_1003542AC@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W4>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  v21 = a4 < v19;
  v22 = 4 * (v16 + v17);
  v23 = *(v12 + v9) + v22;
  v24 = (((v15 & v20) + v7) ^ v8) + (*(v23 + v11) ^ v6) - (*(*(v13 + v9) + v22 + v11) ^ v6) + v10;
  *(v23 + v11) = (v24 - (a1 & (2 * v24)) + a3) ^ a6;
  if (v21 == v16 + v18 < v19)
  {
    v21 = v16 + v18 < a4;
  }

  return (*(a2 + 8 * ((v21 * v14) ^ a5)))();
}

uint64_t sub_100354350(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a4 - 1226154986;
  v7 = v5 - 2124186047 < v6;
  if (v6 < 1070304618 != v5 - 2124186047 < (v4 ^ 0x1BB7) + 1070291226)
  {
    v7 = v6 < 1070304618;
  }

  return (*(a3 + 8 * (((2 * !v7) | (16 * !v7)) ^ v4)))(0x3896964ABE63F196, 0x1C4B4B255F31F8CBLL);
}

uint64_t sub_100354448(int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a4 < v19;
  v21 = *(a8 + v13) + 4 * (v12 + ((v9 + 1115) ^ v16));
  v22 = (v11 ^ v8) + v10 + (*(v21 + v15) ^ v14);
  *(v21 + v15) = (v22 - (a1 & (2 * v22)) + a2) ^ a5;
  LODWORD(v21) = v12 + 1 + v17;
  v23 = v20 ^ (v21 < v19);
  v24 = v21 < a4;
  if (!v23)
  {
    v20 = v24;
  }

  return (*(a3 + 8 * ((v20 * v18) ^ v9)))();
}

uint64_t sub_1003544C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = (((a6 - 11184) | 0x1418) ^ 0xEA837515) + LODWORD(STACK[0x7A0]);
  v8 = v6 - 1258517544 < v7;
  if (v6 - 1258517544 < 1935973121 != v7 < 1935973121)
  {
    v8 = v7 < 1935973121;
  }

  return (*(a3 + 8 * (((2 * !v8) | (32 * !v8)) ^ a6)))();
}

uint64_t sub_1003545E0@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X7>, int a7@<W8>)
{
  v20 = a1 < v14;
  v21 = 4 * (v10 + v17);
  v22 = (*(*(a5 + v11) + v21 + v13) ^ v18) + (v9 ^ v7);
  *(*(a6 + v11) + v21 + v13) = (v22 - ((v22 << (a4 ^ v8 ^ a2)) & v15) + a7) ^ v16;
  v23 = v10 + 1 + v19;
  LODWORD(v21) = v20 ^ (v23 < 1935973121);
  v24 = v23 < a1;
  if (!v21)
  {
    v20 = v24;
  }

  return (*(a3 + 8 * ((v20 * v12) ^ a4)))();
}

uint64_t sub_10035479C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, int a7@<W7>, char a8@<W8>)
{
  v19 = *(a4 + v11) + 4 * (v13 ^ v14);
  v20 = (*(v19 + v12) ^ v18) + (a7 ^ v8);
  *(v19 + v12) = (v20 - ((v20 << (a6 & (a8 + 33) ^ v17)) & a5) + v15) ^ v10;
  return (*(a3 + 8 * (((((v14 + (v13 ^ v14) - ((2 * (v13 ^ v14) + 2) & a2) + 1) ^ v14) < v9) * v16) ^ a1)))();
}

uint64_t sub_100354B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1C74];
  LODWORD(STACK[0x1BEC]) = STACK[0x1C74];
  return (*(a3 + 8 * (((v4 == 1424540892) * (v3 + 16890)) ^ v3)))((v3 + 2514));
}

uint64_t sub_100354C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xCC4];
  LODWORD(STACK[0x15EC]) = STACK[0xCC4];
  return (*(a3 + 8 * (((((v3 - 1545341540) & 0x5C1C3BFE) - 3588) * (v4 == 1424540892)) ^ v3)))();
}

uint64_t sub_100354E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = a7 + v9;
  *(*(a5 + v11) + 4 * (v14 + 2579) + v13) = v8;
  return (*(a3 + 8 * (((v14 + 2578 > v12) * a8) ^ v10)))();
}

uint64_t sub_100354EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(a5 + a6);
  if (v10 >= 0)
  {
    v8 = -327730008 - v8;
  }

  *(a5 + a6) = v9 - 1240145299 + a7 + (v10 ^ v7) + v8 + 2580 - ((2 * (a7 + (v10 ^ v7) + v8 + 2580)) & 0x6C2A3B96) + 11761;
  return (*(a3 + 8 * v9))();
}

uint64_t sub_100354F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 - 10225;
  v5 = STACK[0x1384];
  LODWORD(STACK[0x1320]) = STACK[0x1384];
  return (*(a3 + 8 * (((v5 == (v4 ^ 0x2356) + 1424525694) * (v4 ^ 0x1832)) ^ v4)))();
}

uint64_t sub_100354FA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = STACK[0x15E8];
  LODWORD(STACK[0x140C]) = STACK[0x15E8];
  return (*(a3 + 8 * (((v4 == 1424540892) * ((a4 ^ 0x329D) - 963)) ^ a4)))();
}

uint64_t sub_1003550A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xDB0];
  LODWORD(STACK[0x1354]) = STACK[0xDB0];
  return (*(a3 + 8 * (((((v3 + 3666) | 0x28) - 801) * (v4 == 1424540892)) ^ v3)))();
}

uint64_t sub_100355124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  STACK[0x900] = a7;
  STACK[0x19C0] = a6;
  v10 = *(a3 + 8 * ((55 * (((v7 - 90) ^ (*(a7 + v9) == v8)) & 1)) ^ v7));
  STACK[0x7A0] = a6;
  return v10((v7 - 1883) | 0x91Eu);
}

uint64_t sub_100355250(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x141C]) = (v9 ^ 0x6EF9337E) - 1712849450 + (v8 & 0xDDF266FC);
  LODWORD(STACK[0x1F9C]) = (a7 & STACK[0x500]) + (a8 ^ LODWORD(STACK[0x510])) + ((a1 + 1781) ^ 0xA8E10C49);
  return (*(a3 + 8 * a1))();
}

uint64_t sub_1003552DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x1BD0]) = (v10 ^ 0x2F7FFAA7) - 575506466 + (v9 & 0x5EFFF54E);
  LODWORD(STACK[0xE64]) = (a8 ^ 0x7F3F73BD) - 1913454904 + ((4187 * (v8 ^ 0x2A1F) - 25250199) & a7);
  return (*(a3 + 8 * v8))();
}

uint64_t sub_100355430@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v15 = *(a4 + v7);
  v16 = *(v15 + v11 + 4 * a3) ^ v5;
  *(v15 + 4 * (v14 + a3 + a1) + v8) = ((v16 >> v10) | v6 ^ v5) + v5 - (v12 & (2 * ((v16 >> v10) | v6 ^ v5)));
  return (*(a2 + 8 * (((v13 + a3 >= 0) * a5) ^ v9)))();
}

uint64_t sub_10035549C(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = a8 + 364733430 + v9 + a6 + a4;
  *(*(a5 + v10) + 4 * (v12 + 1695) + v11) = v8;
  return (*(a3 + 8 * ((62 * (((v12 + 1694 >= 0) ^ (a1 - 90)) & 1)) ^ a1)))();
}

uint64_t sub_10035555C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v11 + 1406463461 + 3 * (v8 ^ 0x1EA7) + 1826;
  if (*(*(a5 + v9) + 4 * (v11 + 364746045) + v10) != v7)
  {
    v12 = a2;
  }

  *(a5 - 0x26261EE40B9DD4F1) = (a4 + v12 + 3) * (a7 - 575404038) + v7 - ((2 * (a4 + v12 + 3) * (a7 - 575404038)) & 0x6C2A3B96);
  return (*(a3 + 8 * v8))();
}

uint64_t sub_1003555EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x20A8];
  v7 = STACK[0x798];
  STACK[0x7A0] = STACK[0x730];
  return v6(v7, a2, a3, v7, 1334703793, a6, STACK[0x710], v7);
}

uint64_t sub_100355658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8 * (STACK[0x798] - 1217));
  STACK[0x7A0] = STACK[0x730];
  return v3();
}

uint64_t sub_100355730(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a7 + v10);
  v12 = a1 ^ 0x12E4 ^ v11 ^ 0xB6152695;
  if (v12 < 0)
  {
    v12 = -v12;
  }

  *(a8 + v10) = v11;
  v13 = v12 + v8 - (v9 & (2 * v12)) != v8;
  return (*(a3 + 8 * (((2 * v13) | (4 * v13)) ^ a1)))();
}

uint64_t sub_10035578C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1 + v9 + (a4 ^ v11) - ((v13 + 2 * (a4 ^ v11)) & v12) + v7;
  *(*(STACK[0x7A0] + v8) + 4 * (v14 ^ v11) + v10) = *(*(a7 + v8) + 4 * (v14 ^ v11) + v10);
  return (*(a3 + 8 * (((2 * (v14 != v11)) | (4 * (v14 != v11))) ^ a1)))();
}

uint64_t sub_100355B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8 * (v3 - 11423));
  STACK[0x7A0] = STACK[0x730];
  return v4();
}

uint64_t sub_100355F30(int a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x1CF4]) = v3;
  STACK[0x20A8] = *(a3 + 8 * a1);
  return (*(a3 + 8 * (((a1 + 16835) ^ 0x4036) + a1)))();
}

uint64_t sub_100355F88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = STACK[0x19C0];
  v8 = *(STACK[0x19C0] + v6);
  LODWORD(STACK[0x1CF4]) = v4;
  *(v7 + v6) = v5 + (v8 ^ 0x49EAE234) - (((a4 ^ 0x3D86) + 9287 + 2 * (v8 ^ 0x49EAE234) - 15196) & 0x6C2A3B96) + 1;
  return (*(a3 + 8 * (a4 ^ 0x3D86)))();
}

uint64_t sub_1003566BC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8 * (((v3 > ((a1 + 5571) ^ 0x55747DC5)) * ((a1 ^ 0x3ED3) - 8434)) ^ a1));
  STACK[0x7A0] = STACK[0x670];
  return v4();
}

uint64_t sub_100356F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x18F8] = STACK[0x730];
  STACK[0xEE0] = STACK[0x640];
  LODWORD(STACK[0x19F4]) = -999359954;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100356FCC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x18F8] = STACK[0x730];
  STACK[0xEE0] = STACK[0x670];
  LODWORD(STACK[0x19F4]) = -999359955;
  return (*(a3 + 8 * a4))();
}

uint64_t sub_100357014(int a1, uint64_t a2, uint64_t a3)
{
  STACK[0x18F8] = STACK[0x730];
  STACK[0xEE0] = STACK[0x670];
  LODWORD(STACK[0x19F4]) = -999359953;
  return (*(a3 + 8 * a1))();
}

uint64_t sub_100357390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  STACK[0x18F8] = v4;
  STACK[0xEE0] = a2;
  LODWORD(STACK[0x19F4]) = -999359956;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003573C4(int a1, uint64_t a2, uint64_t a3)
{
  STACK[0x18F8] = v3;
  STACK[0xEE0] = v4;
  LODWORD(STACK[0x19F4]) = -999359958;
  return (*(a3 + 8 * a1))();
}

uint64_t sub_1003574CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v10 = STACK[0x1340];
  v11 = STACK[0x1340] + a6 + 25 * (v8 ^ 0x42Du);
  STACK[0x1130] = v11 + 0x26261EE40B9D8EBFLL;
  v12 = v11 - 18750;
  STACK[0x7C8] = v11 + 0x26261EE40B9D91D7;
  STACK[0x1340] = v10 + 784;
  v13 = STACK[0x660];
  *(v12 + 776) = STACK[0x660];
  *(v12 + 780) = v9;
  *(v12 + 784) = v11 + 0xB3C366FCAC51B52;
  *(v12 + 1568) = v13;
  *(v12 + 1572) = v9;
  *(v12 + 1576) = v11 + 0xB3C366FCAC51E6ALL;
  v14 = *(STACK[0x600] - 0x53A911473888BE3FLL);
  STACK[0x12D8] = a8;
  STACK[0x1170] = STACK[0x610];
  STACK[0x1F70] = v14;
  STACK[0x890] = a7;
  STACK[0x1468] = v11 + 0x26261EE40B9D8EBFLL;
  LODWORD(STACK[0x142C]) = 977989610;
  v15 = *(a3 + 8 * v8);
  STACK[0x750] = a8;
  return v15();
}

uint64_t sub_1003575C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x1008] = a8;
  v9 = STACK[0x670];
  STACK[0x1A28] = STACK[0x670];
  STACK[0xA40] = a7;
  STACK[0x1388] = v9;
  STACK[0x750] = a8;
  LODWORD(STACK[0x1438]) = 313524238;
  return (*(a3 + 8 * v8))(v9);
}

uint64_t sub_100357610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0xD00] = a7;
  STACK[0x800] = a1;
  v13 = a6 + v9;
  STACK[0xDD8] = a6 + v9 + 0x26261EE40B9DD7FDLL;
  STACK[0x1028] = a6 + v9 + 0x26261EE40B9DDB15;
  STACK[0x1340] = v9 + 1584;
  *(v13 + 776) = v7;
  *(v13 + 780) = v11;
  *(v13 + 784) = a6 + v9 + 0xB3C366FCAC56490;
  *(v13 + 1568) = v7;
  *(v13 + 1572) = v11;
  *(v13 + 1576) = a6 + v9 + 0xB3C366FCAC567A8;
  return (*(a3 + 8 * ((54 * ((*(a2 + v12) ^ 0xB6151DCB) * (*(v10 + v12) ^ (((v8 - 12958) ^ 0x2923) - 1240145112)) != 0)) ^ v8)))();
}

uint64_t sub_100357708(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x7A0] = v5;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  v10 = (v9 ^ 0xFCFFFED7) + 457945087 + ((2 * v9) & 0xF9FFFDAE);
  LODWORD(STACK[0x700]) = v8;
  v11 = *(a3 + 8 * ((13 * (((((a4 ^ 0x2122) + 7981) ^ (v8 > v9)) & 1) == 0)) ^ a4));
  STACK[0x6F0] = v4;
  return v11(v10);
}

uint64_t sub_1003577BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(a2 + v6) ^ v5;
  v8 = LODWORD(STACK[0x700]) ^ 0x3F6FBFDE;
  v9 = LODWORD(STACK[0x700]) << (v3 + 83);
  if (v7 < 0)
  {
    v7 = -v7;
  }

  v10 = *(a3 + 8 * v3);
  STACK[0x6F0] = a2;
  LODWORD(STACK[0x700]) = v7;
  return v10(v8 - 656675080 + (v9 & 0x7EDF7FBCu), v4);
}

uint64_t sub_100357868(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x6E0] = a2;
  LODWORD(STACK[0x5E0]) = a8;
  return (*(a3 + 8 * (v8 | (4 * (v9 > 17 * (v8 ^ 0x3445) - 1936184686)))))((v9 - 211308568));
}

uint64_t sub_1003578D0@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W8>)
{
  *(*(v9 + 784) + 4 * (a3 + a4) + v7) = v8;
  v11 = a3 + v4 > v6 || a3 + v4 <= a1;
  return (*(a2 + 8 * (v5 | (4 * v11))))();
}

uint64_t sub_100357964(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a4 + 1179989131 + v5 + 260920158;
  v7 = (v4 > 277307851) ^ (v6 < -277307852);
  LODWORD(STACK[0x740]) = v4 + 1870175796;
  v8 = v6 < v4 + 1870175796;
  if (v7)
  {
    v8 = v4 > 277307851;
  }

  return (*(a3 + 8 * ((!v8 * (a4 - 10989)) | a4)))();
}

uint64_t sub_100357D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v20 = *(a3 + 8 * (((v19 - 245670268) | 0x1812) - 13777));
  STACK[0x7A0] = a19;
  return v20();
}

uint64_t sub_100357EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (v4 - 271279638) & 0x102B7FFB;
  LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x700]) + 2041853017;
  LODWORD(STACK[0x6B0]) = v8 + 105614395;
  STACK[0x6A0] = *(*(STACK[0x6E0] + v5) + v6) ^ v3;
  STACK[0x690] = (((v8 - 3574) ^ 0xFFFFCE8A) + v7);
  v9 = *(a3 + 8 * v8);
  STACK[0x680] = 4 * v7;
  STACK[0x6D0] = v7;
  return v9();
}

uint64_t sub_100357F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = SLODWORD(STACK[0x700]) <= SLODWORD(STACK[0x6B0]);
  v11 = v8 ^ HIDWORD(v5);
  v12 = *(v9 + 784);
  v13 = STACK[0x680];
  v14 = ((((v7 - 1584015009) & 0x5E6A2BF7u) + 1667 + 3664778415) ^ HIDWORD(v4)) + v11 + (*(v12 + STACK[0x680] + v6) ^ v3);
  v15 = v14 - ((2 * v14) & 0x21532BB2CLL) + 0x3D6A079D0A995D96;
  *(v12 + 4 * STACK[0x690] + v6) = v15 ^ 0xBC8C405D;
  v16 = !v10;
  *(*(v9 + 784) + v13 + v6) = (HIDWORD(v15) ^ 0x3D6A079D) + v3 - ((2 * (HIDWORD(v15) ^ 0x3D6A079D)) & 0x6C2A3B96);
  v17 = LODWORD(STACK[0x740]) + 1612597505;
  v18 = v16 ^ (v17 < -105630631);
  v19 = v17 < SLODWORD(STACK[0x6C0]);
  if (v18)
  {
    v19 = v16;
  }

  return (*(a3 + 8 * (v7 ^ (26099 * v19))))();
}

uint64_t sub_1003581F4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, int a7@<W7>, int a8@<W8>)
{
  v24 = *(v23 + 784);
  v25 = (a5 + a1 + a8 - 2201) ^ v21;
  v26 = 4 * v25;
  v27 = (*(v24 + v26 + v15) ^ v8) + (v14 ^ HIDWORD(v12)) + (*(*(v16 + v13) + v26 + v15) ^ v8) * v19;
  v28 = (HIDWORD(v9) ^ 0xDA704624) + (*(*(a6 + v13) + v26 + v15) ^ v8) * a3 + ((v27 + v18 - (a4 & (2 * v27))) ^ v22);
  v29 = STACK[0x7B8];
  *(v24 + 4 * (v25 - 1) + v15) = (v28 + v10 - (v20 & (2 * v28))) ^ a2;
  return (*(v29 + 8 * (((((a5 + v25 - ((2 * v25 + 2) & a7) + 1) ^ a5) >= v11) * v17) ^ a1)))();
}

uint64_t sub_100358344@<X0>(int a1@<W1>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  v22 = *(v21 + 784);
  v23 = v19 ^ v12;
  v24 = 4 * (v19 ^ v12);
  v25 = (*(v22 + v24 + v13) ^ v7) + (v20 ^ HIDWORD(v10));
  v26 = (a7 ^ HIDWORD(v8)) + (*(*(a5 + v11) + v24 + v13) ^ v7) * a2 + ((3 * (v17 ^ a6) + v25 - (v15 & (2 * v25)) + a3) ^ v16);
  v27 = STACK[0x7B8];
  *(v22 + 4 * (v23 - 1) + v13) = (v26 + v9 - (v18 & (2 * v26))) ^ a1;
  LODWORD(v25) = ((v12 + v23 - ((2 * v23 + 2) & a4) + 1) ^ v12) >= v14;
  return (*(v27 + 8 * (((8 * v25) | (32 * v25)) ^ v17)))();
}

uint64_t sub_10035845C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v11 = v6 > 277307851;
  v12 = (v4 - 1701061175) & 0x6563F7FE;
  v13 = v4 - 4199;
  v14 = ((v12 - 1240134491) ^ *(v7 + a2 + v5)) + (a3 ^ HIDWORD(v9));
  v15 = v14 - ((2 * v14) & 0x2950D2178) + 0x4CF215954A8690BCLL;
  *(v7 + 4 * a1 + v5) = v15 ^ 0xFC938D77;
  *(*(v10 + 784) + a2 + v5) = v3 + (HIDWORD(v15) ^ 0x4CF21595) - ((2 * (HIDWORD(v15) ^ 0x4CF21595)) & 0x6C2A3BB6);
  if (v11 == v8 + 1440920284 < -277307852)
  {
    v11 = v8 + 1440920284 < SLODWORD(STACK[0x740]);
  }

  return (*(STACK[0x7B8] + 8 * (v13 ^ (27398 * v11))))();
}

uint64_t sub_100358680@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v20 = v13 > v16;
  v21 = *(v19 + 784);
  v22 = (*(v21 + 4 * (v9 + 1 + a2) + v12) ^ v6) + (a6 ^ HIDWORD(v17)) + (*(*(a5 + v10) + 4 * (v9 + 1 + a2) + v12) ^ v6) * v14;
  *(v21 + 4 * (v9 + a2) + v12) = (v22 + v8 - ((v7 - 426 + v11) & (2 * v22))) ^ v15;
  if (v20 == v9 + v18 < a3)
  {
    v20 = v9 + v18 < a1;
  }

  return (*(STACK[0x7B8] + 8 * ((!v20 * a4) ^ v7)))();
}

uint64_t sub_10035879C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x1008] = v9;
  STACK[0x1A28] = a1;
  STACK[0xA40] = a8;
  STACK[0x1388] = a1;
  STACK[0x750] = v9;
  LODWORD(STACK[0x1438]) = 555710425;
  return (*(a3 + 8 * v8))();
}

uint64_t sub_1003587E8(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = STACK[0x1130];
  v13 = STACK[0x620];
  *(*(v12 + v8) + v9) = STACK[0x620];
  *(v12 + v11) = v13;
  STACK[0x12D8] = v10;
  STACK[0x1170] = v12;
  STACK[0x1F70] = a1;
  STACK[0x890] = a8;
  STACK[0x1468] = a1;
  LODWORD(STACK[0x142C]) = 245679304;
  v14 = *(a3 + 8 * a4);
  STACK[0x750] = v10;
  return v14(a1, a1);
}

uint64_t sub_10035884C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0xB98] = a7;
  STACK[0x920] = a1;
  v11 = STACK[0x1340];
  v12 = a6 + v11;
  v13 = a6 + STACK[0x1340] + 0xB3C366FCAC56490;
  STACK[0xD48] = a6 + STACK[0x1340] + 0x26261EE40B9DD7FDLL;
  STACK[0xC48] = a6 + v11 + 0x26261EE40B9DDB15;
  STACK[0x1340] = v11 + (((v7 + 14664) | 0x200u) ^ 0x4430);
  v14 = STACK[0x660];
  *(v12 + 776) = STACK[0x660];
  *(v12 + 780) = v9;
  *(v12 + 784) = v13;
  *(v12 + 1568) = v14;
  *(v12 + 1572) = v9;
  *(v12 + 1576) = a6 + v11 + 0xB3C366FCAC567A8;
  return (*(a3 + 8 * (((32 * (*(v8 + v10) != v9)) | ((*(v8 + v10) != v9) << 6)) ^ v7)))();
}

uint64_t sub_100358938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x7A0] = v9;
  v11 = v8 ^ v10;
  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  return (*(a3 + 8 * (((8 * (((v12 > 194) ^ (a8 - 27)) & 1)) & 0xEF | (16 * (((v12 > 194) ^ (a8 - 27)) & 1))) ^ a8)))();
}

uint64_t sub_10035898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x680]) = (v5 ^ 0x6FF3F5FC) + (v4 ^ 0xFBFDEE59) + ((2 * v5) & 0xDFE7EBF8);
  STACK[0x700] = v5;
  return (*(a3 + 8 * (v3 ^ (25 * (v5 > -1661978558)))))(1325920598, 2483535041);
}

uint64_t sub_100358A40@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W8>)
{
  *(*(v12 + 784) + 4 * (a1 + v9) + v10) = v11;
  v13 = a1 + a2;
  v14 = (a1 + 1);
  v15 = v13 + ((v6 + v5) & v7);
  v17 = v15 > a4 || v15 <= v8;
  return (*(a3 + 8 * ((v17 * a5) ^ v6)))(v14);
}

uint64_t sub_100358AE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x6D0]) = ((v5 - 1188473540) ^ v6) + a4;
  STACK[0x6C0] = *(*(v8 - 0x26261EE40B9DD4EDLL) + v7) ^ v4;
  LODWORD(STACK[0x6B0]) = (v5 + 673) ^ 0x1C49;
  v9 = STACK[0x700];
  STACK[0x6A0] = (STACK[0x700] - 1);
  v10 = *(a3 + 8 * (v5 - 4631));
  STACK[0x690] = 4 * v9;
  STACK[0x6F0] = v8;
  LODWORD(STACK[0x6E0]) = a4;
  return v10();
}

uint64_t sub_100358B70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = STACK[0x6E0];
  v9 = *(v7 + 784);
  v10 = STACK[0x690];
  v11 = (((v5 + 6467) + 945420473) ^ HIDWORD(v4)) + (((v5 ^ 0x5EFu) + 2982698723) ^ HIDWORD(a1)) + (*(v9 + STACK[0x690] + v6) ^ v3);
  v12 = v11 - ((2 * v11) & 0x7D0F512F2) - 0x6BE4D04C17857687;
  *(v9 + 4 * STACK[0x6A0] + v6) = v12 ^ 0x5E6F94B2;
  *(*(v7 + 784) + v10 + v6) = (HIDWORD(v12) ^ 0x941B2FB3) + v3 - ((2 * (HIDWORD(v12) ^ 0x941B2FB3)) & 0x6C2A3B96);
  LODWORD(v12) = LODWORD(STACK[0x740]) + 1729839557;
  LODWORD(v9) = (v8 > -959011850) ^ (v12 < 959011849);
  v13 = v12 < SLODWORD(STACK[0x6D0]);
  if (v9)
  {
    v13 = v8 > -959011850;
  }

  return (*(a3 + 8 * (v5 ^ (10751 * v13))))();
}

uint64_t sub_100358CB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a4 != LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x740]) = v4;
  return (*(a3 + 8 * (v5 ^ (223 * v6))))();
}

uint64_t sub_100358E54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v25 = *(v24 + 784);
  v26 = v22 ^ v14;
  v27 = 4 * (v22 ^ v14);
  v28 = (*(v25 + v27 + v15) ^ v8) + (a2 ^ HIDWORD(a1)) + (*(*(v17 + v13) + v27 + v15) ^ v8) * v11;
  v29 = (*(*(a7 + v13) + v27 + v15) ^ v8) * v12 + (HIDWORD(v9) ^ 0x385A2BA3) + ((v28 + v23 - ((((v20 + a6) | a8) ^ (v21 + 2275)) & (2 * v28))) ^ 0x4C3740D1);
  *(v25 + 4 * (v26 - 1) + v15) = (v29 + v18 - (v10 & (2 * v29))) ^ a5;
  return (*(a3 + 8 * ((223 * (((v14 + v26 + ((v19 - 2 * v26) | v16) + 2) ^ v14) < a4)) ^ v20)))();
}

uint64_t sub_100358FA8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char a6, uint64_t a7, int a8)
{
  v23 = *(v22 + 784);
  v24 = v20 ^ v13;
  v25 = 4 * (v20 ^ v13);
  v26 = (*(v23 + v25 + v14) ^ v8) + (a2 ^ HIDWORD(a1));
  v27 = (*(*(a7 + v12) + v25 + v14) ^ v8) * v11 + (HIDWORD(v9) ^ 0x385A2BA3) + ((v21 + v26 + (v16 | ~(v26 << ((a8 + a4) & a6 ^ v15))) + 1) ^ 0x4C3740D1);
  *(v23 + 4 * (v24 - 1) + v14) = (v27 + v17 - (v10 & (2 * v27))) ^ v18;
  return (*(a3 + 8 * ((28 * (((v13 + v24 - ((2 * v24 + 2) & a5) + 1) ^ v13) < v19)) ^ a8)))();
}

uint64_t sub_100359168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (LODWORD(STACK[0x1D40]) - 239711548 >= 0)
  {
    v7 = LODWORD(STACK[0x1D40]) - 239711548;
  }

  else
  {
    v7 = ~(LODWORD(STACK[0x1D40]) - 239711549);
  }

  v8 = *(STACK[0x5C0] - 0x513B21BE3C896C2BLL) ^ v6;
  if (v8 < 0)
  {
    v8 = -v8;
  }

  return (*(a3 + 8 * ((1020 * ((((v7 >> 5) - 1789520775 - ((v7 >> 5 << (((a6 ^ 0x3F) + 44) ^ 5)) & 0xAAC28F2)) ^ 0x95561479) < v8)) ^ a6)))();
}

uint64_t sub_100359304(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = STACK[0x1130];
  v10 = STACK[0x7C8];
  STACK[0x12D8] = v8;
  STACK[0x1170] = v9;
  STACK[0x1F70] = v10;
  STACK[0x890] = a8;
  STACK[0x1468] = v10;
  LODWORD(STACK[0x142C]) = -1535649191;
  v11 = *(a3 + 8 * a4);
  STACK[0x750] = v8;
  return v11(v10, v10);
}

uint64_t sub_1003593B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = LODWORD(STACK[0x9B4]) >> 1;
  LODWORD(STACK[0xFFC]) = v4 ^ 0x1FBF871B;
  return (*(a3 + 8 * (((((v4 ^ 0xA957D00) & STACK[0x570]) == 0) * (((((a4 + 514894365) & 0xE14F6FFA ^ 0x2770) + 15188) ^ 0xFFFFC00F) + 145 * ((a4 + 514894365) & 0xE14F6FFA ^ 0x2770))) ^ (a4 + 514894365) & 0xE14F6FFA)))();
}

uint64_t sub_1003594F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x700] + 278289002;
  v10 = STACK[0x700] > 1869194645;
  LODWORD(STACK[0x740]) = v9;
  v11 = a8 - 1098366939 < v9;
  if (v10 != a8 - 1098366939 < -1869194646)
  {
    v11 = v10;
  }

  return (*(a3 + 8 * ((476 * ((v11 ^ (v8 - 1)) & 1)) ^ v8)))();
}

uint64_t sub_1003597CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 - 11434) | 0x2180;
  LODWORD(STACK[0x6F0]) = (19 * (v5 ^ 0x2601)) ^ 0x2152;
  STACK[0x6E0] = v4 - 1;
  return (*(a3 + 8 * v5))();
}

uint64_t sub_100359824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v17 = v14 > 1869194645;
  v18 = (*(v9 + v13 + v10) ^ v8) + (v12 ^ HIDWORD(v11));
  v19 = v18 - ((2 * v18) & 0xD629B40C) - 0x5498A4A794EB25FALL;
  *(v9 + 4 * STACK[0x6E0] + v10) = v19 ^ (((v15 - 15117) | 0x2102) - 587094406);
  *(*(v16 + 784) + v13 + v10) = (HIDWORD(v19) ^ 0xAB675B58) + v8 - ((2 * (HIDWORD(v19) ^ 0xAB675B58)) & 0x6C2A3BB6);
  if (v17 == a8 - 1098366938 < -1869194646)
  {
    v17 = a8 - 1098366938 < SLODWORD(STACK[0x740]);
  }

  return (*(a3 + 8 * ((v15 - 2088) ^ (1551 * v17))))();
}

uint64_t sub_100359A38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v20 = v17 > a2;
  v21 = *(v19 + 784);
  v22 = (*(v21 + 4 * (v11 + 1 + v18) + v13) ^ v8) + (v16 ^ HIDWORD(v15)) + (*(*(a7 + v12) + 4 * (v11 + 1 + v18) + v13) ^ v8) * a1;
  *(v21 + 4 * (v11 + v18) + v13) = (v9 + 3284 + v22 - (a8 & (2 * v22)) + v10) ^ a6;
  if (v20 == v11 + a5 < v14)
  {
    v20 = v11 + a5 < a4;
  }

  return (*(a3 + 8 * ((v20 | (16 * v20)) ^ v9)))();
}

uint64_t sub_100359AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x1CF4]) = v4;
  STACK[0x1340] -= 1584;
  return (*(a3 + 8 * (((STACK[0x21B8] != 0x142AC8D28520B734) * ((v3 ^ 0xFFFFE038) + v3 + 5601)) ^ v3)))();
}

uint64_t sub_100359BBC@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, _DWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = a2 - 13251;
  v19 = *(a1 + 8 * v14);
  *(v17 - 232) = a13;
  *(v17 - 224) = v16;
  v20 = v15 + v13 + 1901182499 * ((2 * ((v17 - 232) & 0x2D1843E0) - (v17 - 232) - 756564962) ^ 0x9EFA3BFC);
  v21 = v17 - 232;
  *(v21 + 24) = v20;
  *(v21 + 28) = 1901182499 * ((2 * ((v17 - 232) & 0x2D1843E0) - (v17 - 232) - 756564962) ^ 0x9EFA3BFC) - 1426395468 + a2;
  *(v17 - 216) = v19 - 1901182499 * ((2 * ((v17 - 232) & 0x7215B7632D1843E0) - (v17 - 232) + 0xDEA489CD2E7BC1ELL) ^ 0x3CC303EC9EFA3BFCLL);
  v22 = (*(a1 + 8 * (a2 + 3845)))(v17 - 232);
  v23 = STACK[0x7B8];
  *a9 = a8;
  return (*(v23 + 8 * v18))(v22);
}

uint64_t sub_100359CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x798] - 9606;
  STACK[0x1340] = v3 - 3952;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_100359F00(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = a1 < v8;
  if (v12 == v10 + a8 < v8)
  {
    v12 = v10 + a8 < a1;
  }

  return (*(v11 + 8 * ((!v12 * v9) ^ a2)))();
}

uint64_t sub_10035A030(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v13 = v8 < a2;
  if (v13 == v10 + v11 < a7)
  {
    v13 = v10 + v11 < v8;
  }

  return (*(v12 + 8 * ((v13 * a8) ^ v9)))();
}

uint64_t sub_10035A158(uint64_t a1, unsigned int a2, int a3)
{
  v7 = a2 < v4;
  if (v7 == v5 - 66754455 < v4)
  {
    v7 = v5 - 66754455 < a2;
  }

  return (*(v6 + 8 * ((!v7 * a3) ^ v3)))();
}

uint64_t sub_10035A24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 1295 * (v3 ^ 0xB6151CC6);
  v7 = STACK[0x990];
  STACK[0xFC8] = STACK[0x990];
  v8 = &STACK[0x2A60] + v4 - 3952;
  STACK[0x1718] = &v8[v5];
  STACK[0x16A0] = (v8 + 164);
  STACK[0x1340] = v4 - 18958 + ((v6 - 1189365221) & 0x46E43F7F);
  STACK[0x1248] = 0;
  LODWORD(STACK[0x1024]) = -1240130101;
  STACK[0x11A8] = 0;
  LODWORD(STACK[0x1C3C]) = -1240130101;
  STACK[0x1568] = 0x5169BC75931DF3BBLL;
  return (*(a3 + 8 * ((30 * ((((v6 - 1687949769) ^ (v7 == 0x4120F47AB517FA21)) & 1) == 0)) ^ v6)))();
}

uint64_t sub_10035A384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1E90] = STACK[0x550];
  STACK[0x13F0] = 0;
  LODWORD(STACK[0x1D74]) = v4;
  LODWORD(STACK[0x181C]) = -60682236;
  return (*(a3 + 8 * ((4264 * ((v3 & 0xF2CFC1FF) < 0x3B1E4822)) ^ ((v3 & 0xF2CFC1FF) - 47169627))))();
}

uint64_t sub_10035A4B0(uint64_t a1, int a2, int a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v10 = a1 + (a2 - v8);
  *(v10 - 15) = a4;
  *(v10 - 31) = a4;
  return (*(a6 + 8 * (v9 | (4 * (v7 + v8 + a3 != v6)))))();
}

uint64_t sub_10035A52C()
{
  v2 = (v1 - 1613155789) & 0x60269933;
  v3 = ((v0 & 0x18) - v2) | (v2 - (v0 & 0x18));
  return (*(STACK[0x7B8] + 8 * ((8 * ((((((v2 + 10502) | 0x1258) - 5691) ^ (v3 >> 31)) & 1) == 0)) & 0xEF | (16 * (((((((v1 + 51) & 0x33) + 6) | 0x58) - 59) ^ ~(v3 < 0)) & 1)) | v2 ^ 0xE04u)))();
}

uint64_t sub_10035A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 14842;
  v4 = (STACK[0x798] - 12597) | 0x1144;
  STACK[0xA58] = STACK[0xF30] - 0x2C5B5C3AA1F3F5B2;
  STACK[0x1480] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (v3 ^ 0x833 ^ v4)))();
}

uint64_t sub_10035A9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1340];
  STACK[0xDF8] = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x1340] = ((((v3 - 14482) | 0x344Eu) - 350374647) ^ 0xEB1DECF8) + v4;
  STACK[0x14B8] = 0;
  v5 = (*(a3 + 8 * (v3 + 3620)))();
  v6 = STACK[0x7B8];
  STACK[0x1030] = 0x5169BC75931DF3BBLL;
  LODWORD(STACK[0x1838]) = 0;
  return (*(v6 + 8 * (((2 * (STACK[0xFC8] != 0x4120F47AB517FA21)) | (8 * (STACK[0xFC8] != 0x4120F47AB517FA21))) ^ v3)))(v5);
}

uint64_t sub_10035AB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1E90] = STACK[0x4C0];
  STACK[0x13F0] = 0;
  LODWORD(STACK[0x1D74]) = v4;
  LODWORD(STACK[0x181C]) = -60682240;
  return (*(a3 + 8 * (v3 + 350364468)))();
}

uint64_t sub_10035AC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8 * v3);
  v6 = 2054851651 * ((((v4 - 232) | 0xCDC41B0B69B01C3CLL) - ((v4 - 232) & 0xCDC41B0B69B01C3CLL)) ^ 0x6C3360F0E51EB31ALL);
  *(v4 - 220) = (v3 - 1915005059) ^ v6;
  *(v4 - 232) = v5 - v6;
  (*(a3 + 8 * (v3 + 17518)))(v4 - 232);
  LODWORD(STACK[0x1838]) = *(v4 - 224) ^ 0x46D2938E;
  v7 = 358777457 * ((v4 - 232 - 2 * ((v4 - 232) & 0x73BC016636D08CFALL) + 0x73BC016636D08CFALL) ^ 0xEEC0907F59788888);
  v8 = STACK[0x240];
  *(v4 - 224) = *(STACK[0x7B8] + 8 * (v3 ^ 0x38)) ^ v7;
  *(v4 - 216) = v8;
  *(v4 - 232) = v7 + v3 - 2101687144;
  v9 = (*(STACK[0x7B8] + 8 * (v3 + 17519)))(v4 - 232);
  v10 = STACK[0x7B8];
  v11 = STACK[0x1838];
  STACK[0x18C8] = STACK[0x1030];
  LODWORD(STACK[0x1E9C]) = v11 - 1240130101 - ((v11 << ((-63 * (v3 ^ 0x1D)) ^ 0x15)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682457;
  return (*(v10 + 8 * (v3 ^ 0x1EC2)))(v9);
}

uint64_t sub_10035AE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1030];
  STACK[0xEF0] = STACK[0xFC8] - 0x9D4E87F36EF2C36;
  STACK[0x2458] = v4;
  STACK[0x968] = v4;
  return (*(a3 + 8 * (((v4 == 0x5169BC75931DF3BBLL) * (((v3 ^ 0x141B) + 13012) ^ 0x3A85)) | v3)))();
}

uint64_t sub_10035AFB8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = ((v3 - 4777) ^ (a2 - 375)) + ((2 * v2) ^ 0x51DFA32643E8B9A0) - ((((v3 + 577504147) & 0xDD93E37FLL ^ 0x155) + 2 * ((2 * v2) ^ 0x51DFA32643E8B9A0)) & 0x51DFA32643E8B9A0);
  STACK[0x1660] = v4;
  v5 = (*(a1 + 8 * (v3 ^ 0x5034)))(v4 & 0xFFFFFFFE ^ 0x21F45CD0);
  v6 = STACK[0x7B8];
  STACK[0xCF0] = v5;
  v7 = v5 == 0;
  LOBYTE(STACK[0x2467]) = v7;
  return (*(v6 + 8 * ((228 * v7) ^ v3)))();
}

uint64_t sub_10035B178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x798] - 9749;
  v6 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))();
  v7 = STACK[0x7B8];
  *(v3 + v4) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_10035B1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0xCF0];
  *(v3 + v4) = STACK[0xCF0];
  *(v3 - 0x5169BC75931DF3B3) = STACK[0x1660];
  *(v3 - 0x5169BC75931DF3A3) = *(v3 - 0x5169BC75931DF3A3) + v5 - *(v3 - 0x5169BC75931DF3ABLL);
  v7 = STACK[0x798] - 7737;
  *(v3 - 0x5169BC75931DF3ABLL) = v5;
  v8 = LOBYTE(STACK[0x2467]);
  if (!v6)
  {
    v8 = 0;
  }

  return (*(a3 + 8 * ((23492 * v8) ^ v7)))();
}

uint64_t sub_10035B268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 - 8937) | 0x508;
  v5 = *(a3 + 8 * (v3 - 7649));
  v6 = 8 * (*(STACK[0x968] - 0x5169BC75931DF3A3) + *(STACK[0x968] - 0x5169BC75931DF3BBLL) - 0x4006AC62910A0ABLL);
  v7 = -1023045297 - 927196479 * STACK[0xEF0];
  v8 = STACK[0xEF0] - 0x374C0BFB7E28CD84;
  LODWORD(STACK[0x7A0]) = v4 - 5103;
  return v5(v6, v7, v8, (v4 - 7533));
}

uint64_t sub_10035B3DC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v23 = __ROR8__((v10 + a6) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((2 * (v23 + v16)) | 0xE39A91B11F82BA70) - (v23 + v16) - 0x71CD48D88FC15D38;
  v25 = v24 ^ 0x7325A5ED70FEBBC6;
  v24 ^= 0x3FB819631A643DD5uLL;
  v26 = __ROR8__(v25, 8);
  v27 = (v7 - ((v26 + v24) | v7) + ((v26 + v24) | 0xCE668826EE511BE0)) ^ 0xB985D7F212EF2C6CLL;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) | 0x2C73FCF98683FBA6) - (v29 + v28) - 0x1639FE7CC341FDD3) ^ 0x5D6704D05173393DLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v15;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__((v6 - ((v34 + v33) | v6) + ((v34 + v33) | v19)) ^ v20, 8);
  v36 = (v6 - ((v34 + v33) | v6) + ((v34 + v33) | v19)) ^ v20 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ v17;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - (v21 & (2 * (v39 + v38))) + v22) ^ v8;
  *(v10 + a6) = *(v13 + ((-927196479 * ((a2 >> a4) ^ a2)) >> 24)) ^ *(a3 + a6) ^ *(((-927196479 * ((a2 >> a4) ^ a2)) >> 24) + a5 + 5) ^ *(((-927196479 * ((a2 >> a4) ^ a2)) >> 24) + v12 + 1) ^ (-63 * ((a2 >> a4) ^ a2)) ^ (27 * ((-927196479 * ((a2 >> a4) ^ a2)) >> 24)) ^ (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61))) ^ v14) >> (a1 & 0x38));
  return (*(v18 + 8 * (((a6 == -15) * v11) ^ v9)))(a1 - 8, a2 + 927196479);
}

uint64_t sub_10035B5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x7A0];
  *(STACK[0x968] - 0x5169BC75931DF3A3) += (LODWORD(STACK[0x7A0]) - 469) ^ 0x7A9;
  return (*(v6 + 8 * v7))(a1, a2, v6, a4, a5, a6, 4232069604);
}

uint64_t sub_10035B654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1030];
  STACK[0x15A0] = STACK[0xFC8] - 0x4120F47AB517F9AELL;
  STACK[0x2468] = v4;
  STACK[0x1508] = v4;
  return (*(a3 + 8 * (((v4 == 0x5169BC75931DF3BBLL) * (v3 - 32217 + 3270 * (v3 ^ 0x41F7))) ^ v3)))();
}

uint64_t sub_10035B818@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = ((2 * v2) ^ 0x51DFA32643E8B9A0) - ((2 * ((2 * v2) ^ 0x51DFA32643E8B9A0) + 32) & 0x51DFA32643E8B9A0) + ((v3 - 14004) ^ 0x3A11u ^ (a2 + 2798));
  STACK[0x19E8] = v4;
  v5 = (*(a1 + 8 * (v3 + 4691)))(v4 & 0xFFFFFFFE ^ 0x21F45CD0);
  v6 = STACK[0x7B8];
  STACK[0x1608] = v5;
  v7 = v5 == 0;
  LOBYTE(STACK[0x2473]) = v7;
  return (*(v6 + 8 * (v3 ^ (16 * v7))))();
}

uint64_t sub_10035B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))();
  v7 = STACK[0x7B8];
  *(v3 + v4) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_10035BA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0x1608];
  *(v3 + v4) = STACK[0x1608];
  *(v3 - 0x5169BC75931DF3B3) = STACK[0x19E8];
  *(v3 - 0x5169BC75931DF3A3) = *(v3 - 0x5169BC75931DF3A3) + v5 - *(v3 - 0x5169BC75931DF3ABLL);
  *(v3 - 0x5169BC75931DF3ABLL) = v5;
  return (*(a3 + 8 * ((97 * (v6 == 0 || (STACK[0x2473] & 1) == 0)) ^ (STACK[0x798] - 10680))))();
}

uint64_t sub_10035BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 10647;
  v4 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))();
  return (*(STACK[0x7B8] + 8 * v3))(v4);
}

uint64_t sub_10035BB48()
{
  v0 = (STACK[0x798] + 1837733787) & 0x92766D56;
  v1 = STACK[0x798] + 1703;
  *(STACK[0x1508] - 0x5169BC75931DF3A3) += 16;
  return (*(STACK[0x7B8] + 8 * ((1412 * (LODWORD(STACK[0x2474]) == (v0 ^ 0xAB7723A6))) ^ v1)))();
}

uint64_t sub_10035BDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v6 - 232) = v4 + 2054851651 * (((~(v6 - 232) & 0x69798E4A) - (~(v6 - 232) | 0x69798E4B)) ^ 0xE5D7216D) + 1449;
  v7 = (*(a3 + 8 * (v4 + 6191)))(v6 - 232);
  return (*(STACK[0x7B8] + 8 * ((((v5 & 0x7FFFFFF0) == v3) * (((v4 + 490) | 0x8C0) ^ 0x38FA)) ^ v4)))(v7);
}

uint64_t sub_10035BE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v8 - 224);
  v10 = (v7 + v3 - 1073609056);
  *v10 = v9 ^ 0x27;
  *(v7 + v3 + ((((v6 + 2083917009) & 0x83C9FDD8) - 10230) ^ 0xFFFFFFFFC002127BLL)) = BYTE1(v9) ^ 0x84;
  v10[2] = BYTE2(v9) ^ 0x69;
  v10[3] = BYTE3(v9) ^ 0xF5;
  v10[4] = BYTE4(v9) ^ 0xC8;
  v10[5] = BYTE5(v9) ^ 0x70;
  v10[6] = BYTE6(v9) ^ 0x79;
  v10[7] = HIBYTE(v9) ^ 0x60;
  v12 = ((v7 + 8) & (v4 + 16)) == v4 && v7 + 8 != v5;
  return (*(a3 + 8 * (v6 ^ (101 * v12))))();
}

uint64_t sub_10035BF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xD28] = 0;
  STACK[0x948] = 0x7B5D6517AE3CB359;
  return (*(a3 + 8 * (((v3 == 0x5169BC75931DF3BBLL) * (((v4 - 13229) | 8) - 1965)) ^ (v4 - 13225))))();
}

uint64_t sub_10035BFE0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(v2 - 0x5169BC75931DF3A3) + (a2 + 14218) - 0x4006AC591988422;
  v4 = (((a2 + 8545) | 0x1244u) ^ 0x8C5BA736D3E6F40CLL) + *(v2 - 0x5169BC75931DF3ABLL);
  v5 = v3 < 0x97785BDB;
  v6 = v3 > v4;
  if (v5 != v4 < 0x97785BDB)
  {
    v6 = v5;
  }

  return (*(a1 + 8 * ((14970 * v6) ^ a2)))();
}

uint64_t sub_10035C0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x948] = v3 - v4 - ((2 * (v3 - v4) - 0x20B823F8CAFE2862) & 0xF6BACA2F5C7966B2) - 0x14FEACE4B74260D8;
  v6 = (*(a3 + 8 * (v5 + 2835)))((v3 - v4 - ((2 * (v3 - v4) + 889313182) & 0x5C7966B2u) + 1220386600) ^ 0xAE3CB359);
  v7 = STACK[0x7B8];
  STACK[0xD28] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (51 * (v5 ^ 0x3E69) - 15137)) ^ v5)))();
}

uint64_t sub_10035C390@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v23 = (v9 - 1);
  v24 = (v23 | ((v23 < 0x4E9204C6) << 32)) + 0x2094768062F6E29BLL;
  v25 = __ROR8__((a6 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = -2 - ((((v6 + 265) - v25 - 0x6993B791CD538C21) | 0x10BE00759A7D0D46) + ((v25 + 0x993B791CD5350C2) | 0xEF41FF8A6582F2B9));
  v27 = v26 ^ 0x1256ED406542EBB8;
  v28 = v26 ^ a3;
  v29 = __ROR8__(v27, 8);
  v30 = ((a4 | (2 * (v29 + v28))) - (v29 + v28) + a5) ^ v13;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x4B5EFAAC9232C4EELL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__(((v14 | (2 * (v34 + v33))) - (v34 + v33) + v15) ^ v16, 8);
  v36 = ((v14 | (2 * (v34 + v33))) - (v34 + v33) + v15) ^ v16 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36 - (v17 & (2 * (v35 + v36))) + v18) ^ v19;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x398AD2670602F2C9;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v8 - ((v41 + v40) | v8) + ((v41 + v40) | v20)) ^ v21;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = STACK[0x7B8];
  *(v24 + a1 + v11) = *(a6 + v24) ^ a2 ^ (((v44 + v43 - (v22 & (2 * (v44 + v43))) + v7) ^ v10) >> (8 * ((a6 + v23 - 101) & 7)));
  return (*(v45 + 8 * (((v23 == 1318192326) * v12) ^ v6)))();
}

uint64_t sub_10035C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x798];
  v5 = STACK[0x798] - 13221;
  v6 = STACK[0xD28];
  STACK[0x14B8] = STACK[0xD28];
  v7 = LODWORD(STACK[0x948]) ^ (v4 + 405369652);
  v8 = STACK[0xF30] - 0x48FE6F88227B567;
  v9 = STACK[0xF30] - 0x1E3CA308A09D42EBLL;
  v10 = LODWORD(STACK[0x948]) ^ 0x4992CCDC;
  v11 = 693709591 * ((((v3 - 232) | 0x2180643E) - ((v3 - 232) & 0x2180643E)) ^ 0x88B2DE25);
  *(v3 - 224) = v6;
  *(v3 - 208) = v6;
  *(v3 - 200) = v9;
  v12 = (v3 - 232);
  *v12 = v4 - v11 - 12806;
  v12[4] = v10 - v11 + ((2 * v7) & 0xCF5CFF0A ^ 0x4C083B02) + 1601940096;
  *(v3 - 192) = v8;
  v13 = (*(a3 + 8 * (v4 + 3921)))(v3 - 232);
  return (*(STACK[0x7B8] + 8 * ((11585 * (*(v3 - 228) == -1418238986)) ^ v5)))(v13);
}

uint64_t sub_10035C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x798] - 11959;
  STACK[0x1248] = v3;
  LODWORD(STACK[0x1024]) = v4;
  LODWORD(STACK[0x1350]) = -1418238986;
  return (*(a3 + 8 * v5))();
}

uint64_t sub_10035C700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 + 3829)))();
  v6 = STACK[0x7B8];
  STACK[0x14B8] = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10035C768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798];
  v4 = STACK[0x798] - 13528;
  *(STACK[0x1F28] - 0x5169BC75931DF3ABLL) += LODWORD(STACK[0x24B4]);
  *STACK[0x1C40] = STACK[0x1AC0];
  STACK[0xB20] = *(a3 + 8 * (v3 - 14735));
  return (*(a3 + 8 * (((v4 | 0x2000) ^ 0x2DF1) + v3 - 14735)))();
}

uint64_t sub_10035C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x19F8] - 0x5169BC75931DF3ABLL) += LODWORD(STACK[0x24AC]);
  v3 = STACK[0x798];
  v4 = STACK[0x798] - 5336;
  *STACK[0xED8] = STACK[0xFE0];
  STACK[0xB20] = *(a3 + 8 * (v3 - 14745));
  return (*(a3 + 8 * ((6113 * (v3 == 733216059)) ^ (v4 + v3 - 14745 - 6917))))();
}

uint64_t sub_10035C8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1EC0] - 0x5169BC75931DF3ABLL) += LODWORD(STACK[0x24B0]);
  v3 = STACK[0x798];
  v4 = STACK[0x798] - 5336;
  *STACK[0x1A08] = STACK[0xE28];
  STACK[0xB20] = *(a3 + 8 * (v3 - 14746));
  return (*(a3 + 8 * ((v4 ^ 0x2D04) + v3 - 14746)))();
}

uint64_t sub_10035C974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x15F0] - 0x5169BC75931DF3ABLL) += LODWORD(STACK[0x24A8]);
  v3 = STACK[0x798];
  v4 = STACK[0x798] - 5336;
  *STACK[0x21F0] = STACK[0x18F0];
  STACK[0xB20] = *(a3 + 8 * (v3 - 14722));
  return (*(a3 + 8 * ((v4 ^ 0x2DEC) + v3 - 14722)))();
}

uint64_t sub_10035CA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798];
  v4 = (STACK[0x798] - 13528) | 0x2000;
  *(STACK[0x8D8] - 0x5169BC75931DF3ABLL) += LODWORD(STACK[0x24B8]);
  *STACK[0xDE0] = STACK[0xFA0];
  STACK[0xB20] = *(a3 + 8 * (v3 - 14714));
  return (*(a3 + 8 * (v3 - 21662 + v4)))();
}

uint64_t sub_10035CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 8851;
  v4 = STACK[0x798] - 3116;
  v5 = STACK[0x798] - 12276;
  v6 = STACK[0x1350];
  STACK[0x1340] -= 16;
  return (*(a3 + 8 * ((6053 * (v6 == v3 + v4 - 1418259438 + 2023)) ^ v5)))();
}

uint64_t sub_10035CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1024];
  STACK[0x18C8] = STACK[0x1568];
  LODWORD(STACK[0x1E9C]) = v4;
  LODWORD(STACK[0xAF4]) = -1658682454;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10035CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1430] = STACK[0x1718] - 0x3003F5FCB78C140ELL;
  v4 = STACK[0xF30] == 0x2C5B5C3AA1F3F591;
  STACK[0x2478] = STACK[0xF30] - 0x2C5B5C3AA1F3F591;
  v5 = STACK[0x1340];
  STACK[0x2480] = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x1340] = v5 + 64;
  v6 = v4;
  return (*(a3 + 8 * ((v6 * (v3 + 6915)) ^ v3)))();
}

uint64_t sub_10035CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (a1 + v4);
  *&v6 = 0x1212121212121212;
  *(&v6 + 1) = 0x1212121212121212;
  *v5 = v6;
  v5[1] = v6;
  return (*(a2 + 8 * (((a3 ^ 0x3B7E) + v4 == 64) | (2 * ((a3 ^ 0x3B7E) + v4 == 64)) | v3)))();
}

uint64_t sub_10035CD2C@<X0>(uint64_t a1@<X2>, int a2@<W8>, __n128 a3@<Q0>)
{
  v7 = (v3 + v5);
  *v7 = a3;
  v7[1] = a3;
  return (*(a1 + 8 * (((v5 + v4 == 330) * a2) ^ v6)))();
}

uint64_t sub_10035CD84(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * v6);
  v8 = STACK[0x798];
  LODWORD(STACK[0x7A0]) = STACK[0x798] - 15196;
  LODWORD(STACK[0x750]) = v8 - 14876;
  LODWORD(STACK[0x780]) = v8 - 9560;
  LODWORD(STACK[0x760]) = v8 - 11447;
  LODWORD(v8) = v8 - 14885;
  LODWORD(STACK[0x730]) = v8;
  LODWORD(STACK[0x740]) = v8 ^ 0x4C35C17;
  v9.n128_u64[0] = 0x2424242424242424;
  v9.n128_u64[1] = 0x2424242424242424;
  v10.n128_u64[0] = 0x1212121212121212;
  v10.n128_u64[1] = 0x1212121212121212;
  return v7(a1, a2, a3, v9, v10);
}

uint64_t sub_10035CE48(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x20C4]) = a1;
  STACK[0x1CF8] = *(v3 + 8 * a3);
  return (*(v3 + 8 * (a3 - 11444 + ((a3 - 654) | 0x3498))))();
}

uint64_t sub_10035CEBC@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  STACK[0x1340] += 320;
  LODWORD(STACK[0x183C]) = *(a3 - 0x43E7F7FA96F70715);
  LODWORD(STACK[0x1B8C]) = *(a3 + v3);
  LODWORD(STACK[0x1830]) = *(a3 - 0x43E7F7FA96F7070DLL);
  LODWORD(STACK[0x184C]) = *(a3 - 0x43E7F7FA96F70709);
  return (*(a1 + 8 * (v5 ^ a2 ^ (24953 * (v5 >= ((690 * (v5 ^ v4)) ^ 0x852013AE))))))();
}

uint64_t sub_10035D05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = (a6 + v12);
  v14 = (v7 + ((2 * v13) & 0xFF55FFD0) + (v13 ^ 0x5BBDFD3D7FAAFFEBLL) + v9);
  v15 = (((a3 + 3673) ^ 0x72 ^ *v14) << 24) | ((v14[1] ^ v8) << 16) | ((v14[2] ^ v8) << 8);
  *(v6 + v13) = (v15 | v14[3] ^ v8) + v11 - 2 * ((v15 | v14[3] ^ v8) & 0x6280CBE6 ^ (v14[3] ^ v8) & 6);
  return (*(v10 + 8 * ((15 * ((a6 + 4 + v12) < 0x40)) ^ a3)))();
}

uint64_t sub_10035D128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v6 + 4 * (v10 + v7 - 8)) ^ *(v6 + 4 * (v10 + v7 - 3));
  v12 = v11 + v9 - ((2 * v11) & 0xC50197C0);
  v13 = *(v6 + 4 * (v10 + v7 - 16)) ^ *(v6 + 4 * (((5 * (v5 ^ 0x24B9)) ^ 0xDAEA4CEB) + v7));
  HIDWORD(v14) = v13 ^ v12 ^ 0x6280CBE0;
  LODWORD(v14) = v13 ^ ~v12;
  *(v6 + 4 * (a5 + v10)) = (v14 >> 31) + v9 - ((2 * (v14 >> 31)) & 0xC50197C0);
  return (*(v8 + 8 * ((7467 * ((a5 + 1 + v10) < 0x50)) ^ v5)))();
}

uint64_t sub_10035D1E0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  HIDWORD(v18) = a1 ^ 0x44041E4;
  LODWORD(v18) = ~a1;
  v19 = (v18 >> 27) + (v8 ^ a7) + (*(v9 + 4 * (a6 + v17)) ^ v16) + ((v11 ^ 0x3BFBE1B) & (a8 ^ (v14 + 5701 * (v10 ^ 0x223F) - 1414)) | (v11 ^ a7) & (v12 ^ a7));
  return (*(v13 + 8 * ((93 * ((a6 + 1 + v17) < 0x14)) ^ v10)))(v19 - ((2 * v19 - 1257966798) & v15) + 1455602557);
}

uint64_t sub_10035D2C8(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  HIDWORD(v16) = a1 ^ 0x44041E4;
  LODWORD(v16) = (v7 - 6744) ^ ~a1;
  v17 = (v16 >> 27) + (a3 ^ a7) + (((v10 ^ v11) + a7 - (v13 & (2 * (v10 ^ v11)))) ^ a5) + (*(v8 + 4 * (v9 + v15)) ^ v14);
  return (*(v12 + 8 * ((25 * ((v9 + 1 + v15) > 0x27)) ^ v7)))(v17 - ((2 * v17 - 575416510) & v13) + 1796877701);
}

uint64_t sub_10035D394(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  HIDWORD(v16) = a1 ^ 0x44041E4;
  LODWORD(v16) = ~a1;
  v17 = (v16 >> 27) + (a8 ^ a7) + ((v12 ^ a7 | v11 ^ a7) & (v10 ^ a7) | (v12 ^ a7) & (v11 ^ a7)) + (*(v9 + 4 * (v8 - 104 + a6 - 622174950)) ^ v14);
  return (*(v13 + 8 * ((21128 * ((a6 + 1 + v15) < 0x3C)) ^ v8)))(v17 - 2 * ((v17 + 253476060) & 0x7C4041E5 ^ v17 & 1u) - 1956905280);
}

uint64_t sub_10035D47C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  HIDWORD(v17) = a1 ^ 0x44041E4;
  LODWORD(v17) = ~a1;
  v18 = (v17 >> 27) + (a5 ^ a7) + ((((v7 - 503736821) & 0x1E067F2E) + v13 + (a3 ^ v11) - (v14 & (2 * (a3 ^ v11)))) ^ v9) + (*(v8 + 4 * (v10 + v16)) ^ v15);
  return (*(v12 + 8 * ((1016 * ((v10 + 1 + v16) < 0x50)) ^ v7)))(v18 - ((2 * v18 - 1798995028) & v14) - 962395206, a2, a1, a4, v9);
}

uint64_t sub_10035D550@<X0>(int a1@<W0>, int a2@<W5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>)
{
  LODWORD(STACK[0x183C]) = a1;
  LODWORD(STACK[0x1B8C]) = a4;
  LODWORD(STACK[0x1830]) = v7;
  LODWORD(STACK[0x184C]) = a2;
  v11 = (*(a5 - 0x43E7F7FA96F70705) ^ a3) + ((v5 + v9) ^ v6);
  *(a5 - 0x43E7F7FA96F70705) = v11 + a3 - (v10 & (2 * v11));
  return (*(v8 + 8 * v5))(LODWORD(STACK[0x183C]));
}

uint64_t sub_10035D688(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6, int a7)
{
  v12 = (a6 + a7);
  v13 = (v9 + ((2 * v12) & 0xFE77F7F0) + (v12 ^ 0x37CBFBFFFF3BFBFBLL) - 0x37CBFBFFFF3BFBFBLL);
  v14 = *v13 ^ v10;
  LODWORD(v13) = ((v13[2] ^ v10) << 16) | ((v13[3] ^ v10) << 24) | v14 & 0xFFFF00FF | ((a3 ^ v13[1]) << 8);
  *(v8 + v12) = v13 + a4 - 2 * (v13 & 0x6280CBF8 ^ v14 & 0x18);
  return (*(v11 + 8 * ((125 * ((a6 + 4 + a7) < 0x40)) ^ v7)))();
}

uint64_t sub_10035DB14(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x183C]) = a1;
  LODWORD(STACK[0x1830]) = v8;
  LODWORD(STACK[0x1B8C]) = v9;
  LODWORD(STACK[0x184C]) = a8;
  return (*(v10 + 8 * a6))();
}

uint64_t sub_10035DB70@<X0>(int a1@<W0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v4 = (*(a3 - 0x43E7F7FA96F70715) ^ a2) + (a1 ^ a2);
  *(a3 - 0x43E7F7FA96F70715) = v4 + a2 - (v3 & (2 * v4));
  v5 = (*(a3 - 0x43E7F7FA96F70711) ^ a2) + (LODWORD(STACK[0x1B8C]) ^ a2);
  *(a3 - 0x43E7F7FA96F70711) = v5 + a2 - (v3 & (2 * v5));
  v6 = (*(a3 - 0x43E7F7FA96F7070DLL) ^ a2) + (LODWORD(STACK[0x1830]) ^ a2);
  *(a3 - 0x43E7F7FA96F7070DLL) = v6 + a2 - (v3 & (2 * v6));
  v7 = (*(a3 - 0x43E7F7FA96F70709) ^ a2) + (LODWORD(STACK[0x184C]) ^ a2);
  *(a3 - 0x43E7F7FA96F70709) = v7 + a2 - (v3 & (2 * v7));
  STACK[0x1340] -= 320;
  return (STACK[0x1CF8])(STACK[0x798], STACK[0x798], STACK[0x798]);
}

uint64_t sub_10035DFA8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = (v7 + (v8 + a2 + a5));
  v14 = *v13;
  v15 = v13[1];
  v16 = (v9 + a5);
  *v16 = v14;
  v16[1] = v15;
  return (*(v11 + 8 * (a6 | (16 * (((v6 + v12) ^ v10) + a5 == 64)))))();
}

uint64_t sub_10035E1A8(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = (v6 + (v8 + a2 + a6));
  v13 = *v12;
  v14 = v12[1];
  v15 = (v7 + a6);
  *v15 = v13;
  v15[1] = v14;
  return (*(v9 + 8 * (((a6 + (a3 + v10) == 673) * v11) ^ a5)))();
}

uint64_t sub_10035E28C(int a1)
{
  LODWORD(STACK[0xD6C]) = a1;
  STACK[0x1CF8] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3C6D ^ (6733 * (v1 ^ 0x283)))))();
}

uint64_t sub_10035E2FC(uint64_t a1, int a2)
{
  v4 = LODWORD(STACK[0x740]) + LODWORD(STACK[0x998]);
  v5 = v2 + 1514850203 > v4;
  if ((v2 + 1514850203) < 0x8447ECA9 != v4 < 0x8447ECA9)
  {
    v5 = (v2 + 1514850203) < 0x8447ECA9;
  }

  return (*(v3 + 8 * ((42 * !v5) ^ (a2 - 1496))))();
}

uint64_t sub_10035E43C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = (v6 + (v8 + v11 + a5));
  v15 = *v14;
  v16 = v14[1];
  v17 = (v9 + a5);
  *v17 = v15;
  v17[1] = v16;
  return (*(v10 + 8 * ((((v7 ^ v12 ^ v13) + a5 == 64) * a2) ^ a6)))();
}

uint64_t sub_10035E4E8(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x1B7C]) = a3;
  STACK[0x1CF8] = *(v3 + 8 * a1);
  return (*(v3 + 8 * ((2678 * (a1 - 2082599022 > (a1 + 292472032))) | a1 ^ 0x28F)))();
}

uint64_t sub_10035E56C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = (v5 + (v7 + v11 + v8));
  v13 = *v12;
  v14 = v12[1];
  v15 = (v6 + v8);
  *v15 = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a1)), a2);
  v15[1] = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a1)), a2);
  return (*(v9 + 8 * ((86 * (((a5 + v10) ^ 0x2A3) + v8 != 64)) ^ (a5 - 2597))))();
}

uint64_t sub_10035E5D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0xC9C]) = a1;
  STACK[0x1CF8] = *(v5 + 8 * a5);
  return (*(v5 + 8 * (a5 ^ 0x3C6F ^ (2 * a5) ^ 0x319C)))();
}

uint64_t sub_10035E734(uint64_t a1, uint64_t a2, int a3)
{
  if (v3 - 1066871637 > 0x40)
  {
    v5 = v3 - 1066871637;
  }

  else
  {
    v5 = 64;
  }

  v6 = v5 - v3 + 1066856440 + (5066 * (a3 ^ 0x4701u)) >= ((a3 - 2370) ^ 0x3DC8uLL);
  return (*(v4 + 8 * (((4 * v6) | (16 * v6)) ^ a3)))();
}

uint64_t sub_10035E7C0(uint64_t a1, int a2)
{
  v5 = v2 - 1066877580 + ((a2 - 610) ^ 0x2C69u);
  if (v5 <= 0x40)
  {
    v5 = 64;
  }

  v6 = 1066871638 - v2 + v5 - 1;
  if (HIDWORD(v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = 1066034569 - v3 >= v6;
  }

  v8 = !v7;
  return (*(v4 + 8 * ((4 * v8) | (16 * v8) | a2)))();
}

uint64_t sub_10035EB90@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v20 = (a1 + a3);
  v21 = *(v13 + (v20 & 0xFFFFFFFC));
  v22 = (v12 + (a5 & (2 * v20)) + v10 + (v14 & v15 ^ v20 ^ a4));
  v22[1] = (BYTE2(v21) ^ 0x40) - (a6 & (v21 >> 15)) + 18;
  *v22 = (HIBYTE(v21) ^ 0xFC) - (a6 & (2 * (HIBYTE(v21) ^ 0xFC))) + 18;
  v22[2] = (a7 ^ BYTE1(v21)) - (a6 & (v21 >> 7)) + 18;
  v22[3] = v21 ^ a8;
  LODWORD(v22) = *(a9 + v9) + v17;
  v23 = v22 < v11;
  v24 = (a1 + v16 < v11) ^ v23;
  v25 = a1 + v16 < v22;
  v26 = (a1 + 4);
  if (v24)
  {
    v25 = v23;
  }

  return (*(v19 + 8 * ((v25 * v18) ^ a2)))(v26);
}

uint64_t sub_10035EDF8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v20 = (a3 + a2);
  v21 = *(v14 + v20);
  v22 = (v13 + (a5 & (2 * v20)) + (v20 ^ a4) + v11);
  *v22 = v21 ^ a6;
  v22[2] = (BYTE2(v21) ^ 0x40) - (a8 & (v21 >> 15)) + 18;
  v22[1] = ((v21 >> ((v9 ^ v15) + 97)) ^ a7) - (a8 & (2 * (v21 >> ((v9 ^ v15) + 97)))) + 18;
  v22[3] = (HIBYTE(v21) ^ 0xFC) - (a8 & (2 * (HIBYTE(v21) ^ 0xFC))) + 18;
  LODWORD(v22) = *(a9 + v10) + v17;
  v23 = v22 < v12;
  v24 = a3 + v16 < v22;
  if (a3 + v16 < v12 != v23)
  {
    v24 = v23;
  }

  return (*(v19 + 8 * ((v24 * v18) ^ a1)))();
}

uint64_t sub_10035F04C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v20 = (v9 + v15 + a3 + a2);
  v21 = *(v14 + (v20 & 0xFFFFFFFC));
  v22 = (v13 + (a5 & (2 * v20)) + (v20 ^ a4) + v11);
  v22[1] = (BYTE2(v21) ^ 0x40) - (a6 & (v21 >> 15)) + 18;
  *v22 = (HIBYTE(v21) ^ 0xFC) - (a6 & (2 * (HIBYTE(v21) ^ 0xFC))) + 18;
  v22[2] = (a7 ^ BYTE1(v21)) - (a6 & (v21 >> 7)) + 18;
  v22[3] = v21 ^ a8;
  LODWORD(v22) = *(a9 + v10) + v17;
  v23 = v22 < v12;
  v24 = a3 + v16 < v22;
  if (a3 + v16 < v12 != v23)
  {
    v24 = v23;
  }

  return (*(v19 + 8 * ((v24 * v18) ^ a1)))();
}

uint64_t sub_10035F270@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v18 = (a3 + a2);
  v19 = *(v13 + (v18 & 0xFFFFFFFC));
  v20 = (v12 + (a5 & (2 * v18)) + (v18 ^ a4) + v10);
  *v20 = v19 ^ a6;
  v20[1] = (a7 ^ BYTE1(v19)) - (a8 & (v19 >> 7)) + 18;
  v20[2] = (BYTE2(v19) ^ 0x40) - (a8 & (v19 >> 15)) + 18;
  v20[3] = (HIBYTE(v19) ^ 0xFC) - (a8 & (2 * (HIBYTE(v19) ^ 0xFC))) + 18;
  v21 = *(a9 + v9) + v15;
  v22 = a3 + v14 < v21;
  if (a3 + v14 < v11 != v21 < v11)
  {
    v22 = v21 < v11;
  }

  return (*(v17 + 8 * ((v22 * v16) ^ a1)))();
}

uint64_t sub_10035F53C@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v19 = a3 + a2 + (v15 & a1);
  v20 = *(v14 + (v19 & 0xFFFFFFFC));
  v21 = (v13 + (a5 & (2 * v19)) + (v19 ^ a4) + v10);
  v21[1] = (BYTE2(v20) ^ 0x40) - (a6 & (v20 >> 15)) + 18;
  *v21 = (HIBYTE(v20) ^ 0xFC) - (a6 & (2 * (HIBYTE(v20) ^ 0xFC))) + 18;
  v21[2] = (a7 ^ BYTE1(v20)) - (a6 & (v20 >> 7)) + 18;
  v21[3] = v20 ^ a8;
  LODWORD(v21) = *(a9 + v9) + v17;
  v22 = v21 < v11;
  v23 = a3 + v16 < v21;
  if (a3 + v16 < v11 != v22)
  {
    v23 = v22;
  }

  return (*(v18 + 8 * ((2 * v23) | (4 * v23) | v12)))();
}

uint64_t sub_10035F7B4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v19 = (v15 + a1);
  v20 = *(v14 + v19);
  v21 = (a3 & (2 * v19)) + (v19 ^ a2);
  *(v13 + v21 + (v10 ^ (v11 + 926))) = v20 ^ a4;
  v22 = (v13 + v11 + v21);
  *v22 = (a5 ^ BYTE1(v20)) - (a6 & (v20 >> 7)) + 18;
  v22[1] = (BYTE2(v20) ^ 0x40) - (a6 & (v20 >> 15)) + 18;
  v22[2] = (HIBYTE(v20) ^ 0xFC) - (a6 & (2 * (HIBYTE(v20) ^ 0xFC))) + 18;
  LODWORD(v22) = *(a9 + v9) + a8;
  v23 = v22 < v12;
  v24 = v15 + a7 < v22;
  if (v15 + a7 < v12 != v23)
  {
    v24 = v23;
  }

  return (*(v18 + 8 * ((v24 * v17) ^ v16)))();
}

uint64_t sub_10035F91C(int a1, _OWORD *a2, int a3, uint64_t a4, int a5, int a6)
{
  v8 = a2[1];
  v9 = (v6 + (a5 + a3));
  *v9 = *a2;
  v9[1] = v8;
  return (*(v7 + 8 * (((a4 == 0) * a6) ^ a1)))();
}

uint64_t sub_10035FA38@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v3 = (*(a2 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + 439262118 - 2 * (((*(a2 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + 64) & 0x1A2E9B67 ^ *(a2 - 0x43E7F7FA96F70719) & 1);
  *(a2 - 0x43E7F7FA96F70719) = v3;
  return (*(v2 + 8 * ((13033 * ((v3 ^ (51 * (a1 ^ 0x10CCu) + 439246818)) < 0x40)) ^ a1)))();
}

uint64_t sub_10035FB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1340] = v4 - 64;
  if (STACK[0x1248])
  {
    v6 = LODWORD(STACK[0x1024]) == v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(a3 + 8 * ((v7 * ((v3 ^ 0x39CC) - 641)) ^ (v3 - 9945))))();
}

uint64_t sub_10035FBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x16A0];
  v5 = STACK[0x1340];
  v6 = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x1D08] = v6;
  STACK[0x1340] = v5 + ((v3 - 14621) | 0x30u) - 593;
  STACK[0x12C8] = v4;
  v7 = STACK[0x1430];
  STACK[0x9A0] = STACK[0x1430] + 0x2042DCB015FA5D24;
  STACK[0xEC8] = v6;
  v9 = v7 == 0x23A51B4A80FCAA39 || v6 == 0;
  return (*(a3 + 8 * ((v9 | (8 * v9)) ^ (v3 + 1251))))();
}

uint64_t sub_10035FCA0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(v2 - 0x23A51B4A80FCA9D9) = (*(v2 - 0x23A51B4A80FCA9D9) & 0x1FF) + 307378688;
  *(v2 - 0x23A51B4A80FCA9F5) = 439262054;
  *(v2 - 0x23A51B4A80FCA9F9) = -1343401483;
  *(v2 - 0x23A51B4A80FCA9DDLL) = 1744978929;
  return (*(a1 + 8 * (a2 ^ 0xDEC8)))();
}

uint64_t sub_10035FDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v4 ^ 0x24Eu) & *(v3 - 0x23A51B4A80FCA9F5);
  *(v3 - 0x23A51B4A80FCAA39 + (v5 ^ 0x26)) = -110;
  return (*(a3 + 8 * ((14687 * ((v5 ^ 0x26) > 0x37)) ^ v4)))();
}

uint64_t sub_10035FEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 <= 0x3EuLL;
  v6 = 62 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  return (*(a3 + 8 * (v4 | (4 * (v6 + (v4 + 2149) - 15197 < ((v4 - 1982068634) & 0x7623FFFE ^ 0x3B4EuLL))))))();
}

uint64_t sub_10035FEFC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u16[0] = 4626;
  a1.n128_u8[2] = 18;
  a1.n128_u8[3] = 18;
  a1.n128_u8[4] = 18;
  a1.n128_u8[5] = 18;
  a1.n128_u8[6] = 18;
  a1.n128_u8[7] = 18;
  return (*(a4 + 8 * (v4 - 7141)))(a1);
}

uint64_t sub_10035FF38(uint64_t a1, double a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v12 = (v7 + v11 + v8 + v9);
  *v12 = a2;
  v12[1] = a2;
  return (*(a7 + 8 * (((v10 + v9 == a1) * a5) ^ a4)))();
}

uint64_t sub_1003600DC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u16[0] = 4626;
  a1.n128_u8[2] = 18;
  a1.n128_u8[3] = 18;
  a1.n128_u8[4] = 18;
  a1.n128_u8[5] = 18;
  a1.n128_u8[6] = 18;
  a1.n128_u8[7] = 18;
  return (*(a4 + 8 * (v4 - 11785)))((v5 & 0xFFFFFFFFFFFFFFF0) - 16, a1);
}

uint64_t sub_100360128(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *v6 = a2;
  v6[1] = a2;
  return (*(a4 + 8 * (((a1 == 0) * v4) | v5)))(a1 - 16);
}

uint64_t sub_1003601B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + v6 + v5) = v8;
  v10 = (((v6 + 1 + v5) ^ ~v7) & (v6 + 1 + v5 - v7) | v7 & ~(v6 + 1 + v5)) >> (v4 - 95);
  return (*(a3 + 8 * ((2 * (v10 & 1)) & 0xF7 | (8 * (v10 & 1)) | v9)))();
}

uint64_t sub_1003602B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x43E7F7FA96F70719);
  *(a2 - 0x43E7F7FA96F70725) = ((8 * v4) ^ 0x30) - ((((8 * v4) ^ 0x30) << ((v3 - 108) & 0x5E ^ 0x1F)) & 0x20) + 18;
  *(a2 - 0x43E7F7FA96F70724) = ((v4 >> 5) ^ 0xDB) - ((2 * ((v4 >> 5) ^ 0xDB)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70723) = ((v4 >> 13) ^ 0x74) - ((2 * ((v4 >> 13) ^ 0x74)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70722) = ((v4 >> 21) ^ 0xD1) - ((2 * ((v4 >> 21) ^ 0xD1)) & 0x24) + 18;
  v5 = *(a2 - 0x43E7F7FA96F7071DLL);
  HIDWORD(v6) = v5 ^ 0x15;
  LODWORD(v6) = v4;
  *(a2 - 0x43E7F7FA96F70721) = (v6 >> 29) - ((2 * (v6 >> 29)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70720) = ((v5 >> 5) ^ 0x8F) - ((2 * ((v5 >> 5) ^ 0x8F)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F7071FLL) = ((v5 >> 13) ^ 0x6A) - ((2 * ((v5 >> 13) ^ 0x6A)) & 0x24) + 18;
  return (*(a1 + 8 * ((12329 * (v3 != 2031455446)) ^ (v2 + v3 + 1558))))();
}

uint64_t sub_10036049C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x43E7F7FA96F7071DLL);
  *(a2 - 0x43E7F7FA96F70725) = ((v3 >> 21) ^ 0x7F) + (~(2 * ((v3 >> 21) ^ 0x7F)) | 0xDB) + 19;
  *(a2 - 0x43E7F7FA96F70724) = ((((v2 + 121) | 4) + 76) ^ (v3 >> 13)) - 2 * (((((v2 + 121) | 4) + 76) ^ (v3 >> 13)) & 0x16 ^ (v3 >> 13) & 4) + 18;
  *(a2 - 0x43E7F7FA96F70723) = ((v3 >> 5) ^ 0x8F) - ((2 * ((v3 >> 5) ^ 0x8F)) & 0x24) + 18;
  v4 = *(a2 - 0x43E7F7FA96F70719);
  HIDWORD(v5) = v3 ^ 0x15;
  LODWORD(v5) = v4;
  *(a2 - 0x43E7F7FA96F70722) = (v5 >> 29) - ((2 * (v5 >> 29)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70721) = ((v4 >> 21) ^ 0xD1) + ~(2 * (((v4 >> 21) ^ 0xD1) & 0x1A ^ (v4 >> 21) & 8)) + 19;
  *(a2 - 0x43E7F7FA96F70720) = ((v4 >> 13) ^ 0x74) - 2 * (((v4 >> 13) ^ 0x74) & 0x1A ^ (v4 >> 13) & 8) + 18;
  *(a2 - 0x43E7F7FA96F7071FLL) = ((v4 >> 5) ^ 0xDB) - ((2 * ((v4 >> 5) ^ 0xDB)) & 0x24) + 18;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1003606C8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(v2 - 0x23A51B4A80FCA9E1) = 1066573844;
  *(v2 + v3) = a2 - 16;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_1003606FC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(v2 - 0x23A51B4A80FCA9F1) = 0x138DEA6D9B0562E5;
  *(v2 - 0x23A51B4A80FCA9E9) = 0xEC72159264FA9D1ALL;
  *(v2 + v3) = a2;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_10036075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x1D00] = v8 + a8;
  STACK[0x1D58] = v8 - 0x23A51B4A80FCA9D5;
  return (*(a3 + 8 * (((34 * (v9 ^ 0xD38) + (v9 ^ 0xFFFFC840)) * (v8 == v10)) ^ v9)))();
}

uint64_t sub_100360880(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  if ((a3 + a7 + 1) > 0x40)
  {
    v9 = a3 + a7 + 1;
  }

  else
  {
    v9 = 64;
  }

  v11 = (a2 - a4 - a5 + v9) < 0x1F || (a6 - 100) < 0x20;
  return (*(v8 + 8 * ((((((v7 + 425178149) ^ v11) & 1) == 0) * ((298 * (v7 ^ 0x7A4)) ^ 0x3B24)) ^ v7)))();
}

uint64_t sub_100360960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _OWORD *a6)
{
  v9 = a6[1];
  v10 = (v6 + a1);
  *v10 = *a6;
  v10[1] = v9;
  return (*(v8 + 8 * (((a4 == 0) * a5) ^ v7)))(a1 + 32, a2, a3, a4 - 32);
}

uint64_t sub_100360A48(int a1)
{
  LODWORD(STACK[0x93C]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * a1);
  return (*(v2 + 8 * (((a1 + 12655) | 0x90) ^ 0x3DBA | a1)))();
}

uint64_t sub_100360AA4(int a1)
{
  if (v2 - 2079716211 > 0x40)
  {
    v4 = v2 - 2079716211;
  }

  else
  {
    v4 = 64;
  }

  return (*(v3 + 8 * (((v4 - v2 + 2079716212 < 8) * ((a1 - 2130) ^ (a1 + 3686) ^ 0x1E08)) ^ a1)))(v2, v1);
}

uint64_t sub_100360B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((v4 + v6 + 1) > 0x40)
  {
    v8 = v4 + v6 + 1;
  }

  else
  {
    v8 = 64;
  }

  v9 = a4 - v6 + v8 - 1;
  if (HIDWORD(v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = 593106895 - v5 >= v9;
  }

  v11 = !v10;
  return (*(v7 + 8 * (((((a3 - 9254) | 0x160C) ^ 0x16FA) * v11) ^ a3)))(v6, v5);
}

uint64_t sub_100360D4C(int a1, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v8 = a2[1];
  v9 = (v6 + (a6 + a4));
  *v9 = *a2;
  v9[1] = v8;
  return (*(v7 + 8 * (((a3 == 0) * a5) ^ a1)))();
}

uint64_t sub_100360E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = (*(a4 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + 439262118 - 2 * (((*(a4 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + 64) & 0x1A2E9B7F ^ ((a3 ^ 9) - 8210) & *(a4 - 0x43E7F7FA96F70719));
  *(a4 - 0x43E7F7FA96F70719) = v5;
  return (*(v4 + 8 * (((v5 ^ 0x1A2E9B40u) > 0x3F) | (8 * ((v5 ^ 0x1A2E9B40u) > 0x3F)) | a3)))(a1, a2, v4);
}

uint64_t sub_100360F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x18A0] = v8 + a8;
  v11 = STACK[0x1D08];
  LODWORD(STACK[0x998]) = *(v8 - 0x23A51B4A80FCA9DDLL);
  STACK[0x1C48] = v11;
  return (*(a3 + 8 * (((v8 != v9) * ((v10 - 7610) ^ 0x1C58)) ^ (v10 - 9824))))();
}

uint64_t sub_100361068(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((a5 + 1183318019) > 0x40)
  {
    v6 = a5 + 1183318019;
  }

  else
  {
    v6 = 64;
  }

  return (*(v5 + 8 * (((-a2 - a4 + (((a3 + 1888577596) | 0x24C6121) ^ 0xCBAA189E) + v6 < 0x1F) * (a3 - 7673)) ^ a3)))();
}

uint64_t sub_100361114(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a4 + a2;
  v12 = v11 + ((a3 + 2089393913) & 0x83767B8F) + 1183303540;
  if (v12 <= 0x40)
  {
    v12 = v9;
  }

  return (*(v10 + 8 * (((a1 - v11 >= a8 + a1 + v8 + v12) * (((a3 + 2145378789) & 0xF2FDE777) - 1927145252)) ^ (a3 - 1151))))();
}

uint64_t sub_100361220(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, int a7)
{
  v11 = *(v7 + v9 + 16);
  v12 = (v8 + (a5 + v9));
  *v12 = *(v7 + v9);
  v12[1] = v11;
  return (*(v10 + 8 * (((((a1 + 277) ^ a6) + v9 == a4) * a7) ^ a1)))();
}

uint64_t sub_100361340(int a1)
{
  LODWORD(STACK[0xA3C]) = v1;
  STACK[0x1CF8] = *(v2 + 8 * a1);
  return (*(v2 + 24024))();
}

uint64_t sub_100361398()
{
  v4 = 694 * (v0 ^ 0x3B57) + v1 + 1100278840;
  v5 = ((v2 + 59762171) < 0x6B9229EC) ^ (v4 < 0x6B9229EC);
  v6 = v4 < v2 + 59762171;
  if (v5)
  {
    v6 = (v2 + 59762171) < 0x6B9229EC;
  }

  return (*(v3 + 8 * ((25 * v6) ^ (v0 - 7803))))();
}

uint64_t sub_100361454(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v14 = v10 < v6;
  *(a1 + (v8 + a3 + v7 + a4)) = *(a2 + (v11 + v12));
  if (v14 == v11 + a5 < v6)
  {
    v14 = v11 + a5 < v10;
  }

  return (*(v13 + 8 * ((v14 * a6) ^ v9)))();
}

uint64_t sub_1003614B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = (*(a7 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + v8 - 1744978929 + 439262054 - ((((*(a7 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + v8 - 1744978929) << (((v7 + 26) | 9) + 120)) & 0x345D36CC);
  *(a7 - 0x43E7F7FA96F70719) = v10;
  return (*(v9 + 8 * ((12211 * ((v10 ^ 0x1A2E9B66u) < v8 - 1744978929)) ^ v7)))(a1, a2, v9, a3, a4, a5, a6, 0x2042DCB015FA5D24);
}

uint64_t sub_100361618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0x12C8];
  STACK[0x1590] = v8 + a8;
  STACK[0x1080] = v11;
  v13 = v8 == v9 || v11 == 0;
  return (*(a3 + 8 * ((v13 * ((v10 + 225559456) & 0xF28E037F ^ 0x264)) ^ (v10 - 5246))))();
}

uint64_t sub_100361670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1340] += v3 ^ 0xFFFFFFFFFFFFC4BELL;
  v4 = STACK[0x1568];
  STACK[0xC28] = STACK[0x16A0];
  STACK[0x2488] = v4;
  STACK[0x16C8] = v4;
  return (*(a3 + 8 * ((v4 == 0x5169BC75931DF3BBLL) ^ (v3 + 3286))))();
}

uint64_t sub_100361804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ((2 * v3) ^ 0x51DFA32643E8B9A0) + 0x28EFD19321F45CD0 - 2 * ((((2 * v3) ^ 0x51DFA32643E8B9A0) + 20) & 0x28EFD19321F45CD2 ^ (2 * v3) & 2) + (v4 - 10682) - 372;
  STACK[0x1FC8] = v5;
  v6 = (*(a3 + 8 * (v4 ^ 0x6114)))(v5 & ((v4 + 4124) + 4294952096) ^ 0x21F45CD0);
  v7 = STACK[0x7B8];
  STACK[0xF80] = v6;
  v8 = v6 == 0;
  LOBYTE(STACK[0x2493]) = v8;
  return (*(v7 + 8 * ((15 * v8) ^ v4)))();
}

uint64_t sub_100361908@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (((a2 - 636) | 0x2404) - 9184) ^ *(v2 - 0x23A51B4A80FCA9F5) & 0x3Fu;
  *(v2 + v3 - 0x23A51B4A80FCAA39) = -110;
  return (*(a1 + 8 * (((v3 > 0x37) * ((298 * (a2 ^ 0x24D)) ^ 0x323D)) ^ a2)))();
}

uint64_t sub_100361A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 62 - v3;
  if (v3 > 0x3EuLL)
  {
    v5 = 0;
  }

  return (*(a3 + 8 * (((v5 + 1 < ((v4 + 10826) ^ 0x3B4EuLL)) * ((v4 + 10826) ^ 0x3B08)) ^ v4)))();
}

uint64_t sub_100361A58(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u16[0] = 4626;
  a1.n128_u8[2] = 18;
  a1.n128_u8[3] = 18;
  a1.n128_u8[4] = 18;
  a1.n128_u8[5] = 18;
  a1.n128_u8[6] = 18;
  a1.n128_u8[7] = 18;
  return (*(a4 + 8 * (v4 - 11926)))(737 * (v4 ^ 0x3B5Bu), a1);
}

uint64_t sub_100361A94(uint64_t a1, int a2, double a3, uint64_t a4, uint64_t a5)
{
  v11 = (v6 + v8 + v9 + v5);
  *v11 = a3;
  v11[1] = a3;
  return (*(a5 + 8 * (((v8 + a1 - 3669 == v10) * v7) ^ a2)))();
}

uint64_t sub_100361C58(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u16[0] = 4626;
  a1.n128_u8[2] = 18;
  a1.n128_u8[3] = 18;
  a1.n128_u8[4] = 18;
  a1.n128_u8[5] = 18;
  a1.n128_u8[6] = 18;
  a1.n128_u8[7] = 18;
  return (*(a4 + 8 * (v5 - 4921)))((v4 & 0xFFFFFFFFFFFFFFF0) - 16, a1);
}

uint64_t sub_100361CB4(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *v6 = a2;
  v6[1] = a2;
  return (*(a4 + 8 * (((a1 == 0) * v5) ^ v4)))(a1 - 16);
}

uint64_t sub_100361E44@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x43E7F7FA96F70719);
  *(a2 - 0x43E7F7FA96F70725) = ((8 * v3) ^ 0x30) - ((((v2 + 36) | 0xC0) ^ 0xD6) & (2 * ((8 * v3) ^ 0x30))) + 18;
  *(a2 - 0x43E7F7FA96F70724) = ((v3 >> 5) ^ 0xDB) - ((2 * ((v3 >> 5) ^ 0xDB)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70723) = ((v3 >> 13) ^ 0x74) - 2 * (((v3 >> 13) ^ 0x74) & 0x1A ^ (v3 >> 13) & 8) + 18;
  *(a2 - 0x43E7F7FA96F70722) = ((v3 >> 21) ^ 0xD1) - ((2 * ((v3 >> 21) ^ 0xD1)) & 0x24) + 18;
  v4 = *(a2 - 0x43E7F7FA96F7071DLL);
  HIDWORD(v5) = v4 ^ 0x15;
  LODWORD(v5) = v3;
  *(a2 - 0x43E7F7FA96F70721) = (v5 >> 29) - ((2 * (v5 >> 29)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70720) = ((v4 >> 5) ^ 0x8F) - ((2 * ((v4 >> 5) ^ 0x8F)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F7071FLL) = ((v4 >> 13) ^ 0x6A) - ((2 * ((v4 >> 13) ^ 0x6A)) & 0x24) + 18;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100362028@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x43E7F7FA96F7071DLL);
  *(a2 - 0x43E7F7FA96F70725) = (((v2 ^ 0xE4) - 119) ^ (v3 >> 21)) - ((2 * (((v2 ^ 0xE4) - 119) ^ (v3 >> 21))) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70724) = ((v3 >> 13) ^ 0x6A) - 2 * (((v3 >> 13) ^ 0x6A) & 0x13 ^ ((v3 & 0x2000) != 0)) + 18;
  *(a2 - 0x43E7F7FA96F70723) = ((v3 >> 5) ^ 0x8F) - ((2 * ((v3 >> 5) ^ 0x8F)) & 0x24) + 18;
  v4 = *(a2 - 0x43E7F7FA96F70719);
  HIDWORD(v5) = v3 ^ 0x15;
  LODWORD(v5) = v4;
  *(a2 - 0x43E7F7FA96F70722) = (v5 >> 29) - ((2 * (v5 >> 29)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70721) = ((v4 >> 21) ^ 0xD1) - 2 * (((v4 >> 21) ^ 0xD1) & 0x16 ^ (v4 >> 21) & 4) + 18;
  *(a2 - 0x43E7F7FA96F70720) = ((v4 >> 13) ^ 0x74) - ((2 * ((v4 >> 13) ^ 0x74)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F7071FLL) = ((v4 >> 5) ^ 0xDB) + (~(2 * ((v4 >> 5) ^ 0xDB)) | 0xDB) + 19;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1003622F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8 * v3);
  v5 = STACK[0x798];
  LODWORD(STACK[0x780]) = (STACK[0x798] - 9758) | 0x2211;
  v6.n128_u64[0] = 0x2424242424242424;
  v6.n128_u64[1] = 0x2424242424242424;
  v7.n128_u64[0] = 0x1212121212121212;
  v7.n128_u64[1] = 0x1212121212121212;
  LODWORD(STACK[0x6D0]) = v5 ^ 0x3DC8;
  LODWORD(STACK[0x760]) = v5 - 6576;
  LODWORD(STACK[0x700]) = (v5 ^ 0x3DC8) + 6897;
  LODWORD(STACK[0x750]) = (v5 ^ 0x3DC8) - 1066873325;
  LODWORD(STACK[0x7A0]) = v5 ^ 0xEED;
  LODWORD(STACK[0x740]) = (v5 ^ 0xEED) + 474313477;
  LODWORD(STACK[0x6C0]) = v5 - 12458;
  LODWORD(STACK[0x730]) = (v5 - 9436063) & 0x8FFE5E;
  LODWORD(STACK[0x710]) = v5 - 6410;
  LODWORD(STACK[0x6F0]) = v5 - 4770;
  LODWORD(STACK[0x6E0]) = v5 - 12042;
  return v4(v6, v7);
}

uint64_t sub_100362430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x798] - 671;
  v6 = (*(a3 + 8 * (STACK[0x798] + 3829)))();
  v7 = STACK[0x7B8];
  *(v3 + v4) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_10036245C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0xF80];
  *(v3 + v4) = STACK[0xF80];
  *(v3 - 0x5169BC75931DF3B3) = STACK[0x1FC8];
  *(v3 - 0x5169BC75931DF3A3) = *(v3 - 0x5169BC75931DF3A3) + v5 - *(v3 - 0x5169BC75931DF3ABLL);
  *(v3 - 0x5169BC75931DF3ABLL) = v5;
  return (*(a3 + 8 * ((30 * (v6 == 0 || (STACK[0x2493] & 1) == 0)) ^ (STACK[0x798] - 8990))))();
}

uint64_t sub_1003624F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 7684;
  v4 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))();
  return (*(STACK[0x7B8] + 8 * v3))(v4);
}

uint64_t sub_100362580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 0x5169BC75931DF3A3);
  v5 = *(a1 - 0x5169BC75931DF3BBLL);
  STACK[0x7A0] = *(a2 + 8 * v2);
  return (*(a2 + 8 * v3))(0x15C002465262230BLL, 0xEA3FFDB934658B4BLL, v5 + v4 + ((v3 - 13) ^ 0xE63F92F30B54D1B7), 0x1C0B4925D2291A4, 0x32859A7A21D775ALL, 0x4FB5E529C887F149, 0x769353B568A5236, 0xFC4B656254BAD6E4);
}

uint64_t sub_1003626FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = v23 + (((v16 + v23) < 0x793851A9) << 32) + a1;
  v25 = __ROR8__((a3 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 + v11) | a4) - ((v25 + v11) | v10) + v10;
  v27 = v26 ^ a5;
  v28 = v26 ^ a6;
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x77E35FD4FCBE378CLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v12;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v15;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__(((a7 & (2 * (v35 + v34))) - (v35 + v34) + a8) ^ v17, 8);
  v37 = ((a7 & (2 * (v35 + v34))) - (v35 + v34) + a8) ^ v17 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ v13;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xC48877EC7E57888;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(a3 + v24) = *(v24 + v9 + a2) ^ v21 ^ ((((v18 & (2 * (v42 + v41))) - (v42 + v41) + v19) ^ v20) >> (8 * ((a3 + v23 + a1) & 7)));
  return (*(a9 + 8 * (((v16 + v23 != 2033734057) * v22) ^ v14)))();
}

uint64_t sub_100362828()
{
  v0 = STACK[0x798] - 7858;
  *(STACK[0x16C8] - 0x5169BC75931DF3A3) += 20;
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100362904@<X0>(uint64_t a1@<X2>, char a2@<W8>)
{
  LOBYTE(STACK[0x295F]) = a2;
  STACK[0x2960] = v3;
  STACK[0xF28] = v3;
  return (*(a1 + 8 * (((v3 == 0x5169BC75931DF3BBLL) * ((v2 ^ 0x2033) - 14967)) ^ v2)))();
}

uint64_t sub_100362A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + ((2 * v4) ^ 0x51DFA32643E8B9A1) - ((2 * ((2 * v4) ^ 0x51DFA32643E8B9A1)) & 0x51DFA32643E8B9A0) + 9 * (v5 ^ 0xF2Fu) - 279;
  STACK[0x1FD0] = v6;
  v7 = (*(a3 + 8 * (v5 ^ 0x4566)))(v6 ^ 0x21F45CD0);
  v8 = STACK[0x7B8];
  STACK[0x978] = v7;
  v9 = v7 == 0;
  LOBYTE(STACK[0x296B]) = v9;
  return (*(v8 + 8 * ((7 * v9) ^ v5)))();
}

uint64_t sub_100362C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0xFC8] - 0x4120F47AB517F62DLL);
  STACK[0x18C8] = STACK[0x1568];
  LODWORD(STACK[0x1E9C]) = (v3 ^ 0x17DF) - 1240136208 + v4 - ((2 * v4) & 0x6C2A3B96) + 2247;
  LODWORD(STACK[0xAF4]) = -1658682455;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100362D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (STACK[0xFC8] - 0x4120F47AB517F625);
  STACK[0x1688] = v4;
  return (*(a3 + 8 * (((*v4 != 0) * ((3 * (v3 ^ 0x34AF)) ^ 0x161)) ^ v3)))();
}

uint64_t sub_100362EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *STACK[0x1688];
  STACK[0x18C8] = STACK[0x1568];
  LODWORD(STACK[0x1E9C]) = v5 + v4 - ((v5 << (((v3 + 115) & 0xD5) - 19)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682456;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100362FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1B38] = STACK[0x11A8];
  STACK[0x1758] = (LODWORD(STACK[0x1C3C]) ^ v4) - (((LODWORD(STACK[0x1C3C]) ^ v4) << (-54 * (v3 ^ 0x6D) - 93)) & 0x188C65DA6) - 0x14D8B68D3B9CD12DLL;
  LODWORD(STACK[0x1F7C]) = -1418238986;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100363098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 3829)))();
  v5 = STACK[0x7B8];
  STACK[0x11A8] = 0;
  return (*(v5 + 8 * (v3 - 3116)))(v4);
}

uint64_t sub_100363160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 9606;
  v4 = STACK[0x1F7C];
  STACK[0x1340] += (699 * (STACK[0x798] ^ 0x3B56)) ^ 0xFFFFFFFFFFFFEA98;
  return (*(a3 + 8 * ((9265 * (v4 == -1418238986)) ^ v3)))();
}

uint64_t sub_1003631BC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = STACK[0x990];
  *(v3 - 0x4120F47AB517F614) = -123;
  *(v3 - 0x4120F47AB517F661) = v2 - 2;
  STACK[0x20B8] = STACK[0x1B38];
  STACK[0x19C8] = STACK[0x1758];
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1003632E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x79E6)))();
  v5 = STACK[0x7B8];
  STACK[0x18E8] = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_1003634D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = (*(a3 + 8 * (v4 ^ 0x4DF3)))();
  v7 = STACK[0x7B8];
  *(STACK[0x18E8] + 16 * v5 + 8) = 0;
  return (*(v7 + 8 * v4))(v6);
}

uint64_t sub_100363638(uint64_t a1, int a2)
{
  STACK[0x8B8] = v3;
  LODWORD(STACK[0xA9C]) = STACK[0x780];
  LODWORD(STACK[0x8EC]) = STACK[0x760];
  return (*(v4 + 8 * ((((v2 - 3020) ^ 0x17D7 ^ (v2 + 2121041456) & 0x81936FF3) * a2) ^ v2)))();
}

uint64_t sub_100363784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1BF0] = STACK[0x1C90] + 0x5261D24F740CB853;
  STACK[0xB20] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (v3 - 6919 + v3 + 9407)))();
}

uint64_t sub_100363850@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v2 = *(STACK[0x1BF0] - 0x5261D24F740CB83FLL);
  v3 = STACK[0x1C90] + 0x110B3786D1D853F7;
  STACK[0x1498] = STACK[0x9E8];
  LODWORD(STACK[0xB84]) = (v2 ^ 0xFF98E6D9) + 1727503280 + ((v2 << (((a2 + 109) | 0x50) - 124)) & 0xFF31CDB2);
  STACK[0x1128] = v3;
  STACK[0x2180] = 0;
  LODWORD(STACK[0x11C4]) = -183221770;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100363934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1C90] + 0x761475DE06B9EF62;
  STACK[0x7A0] = v4;
  STACK[0x1F00] = v4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100363970(uint64_t a1, int a2, uint64_t a3, int a4)
{
  STACK[0x8B8] = v4;
  LODWORD(STACK[0xA9C]) = STACK[0x780];
  LODWORD(STACK[0x8EC]) = STACK[0x760];
  return (*(v5 + 8 * ((((a4 ^ 0x3681) + 27883) * a2) ^ a4)))();
}

uint64_t sub_100363B10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 0x5169BC75931DF3A3) - 0x4006AC531EA2179 + ((v1 + 479702176) ^ 0x1C97F421u);
  v3 = *(a1 - 0x5169BC75931DF3ABLL) - 0x73A458C8CC6AD1EALL;
  v4 = v2 < 0xF726BA9F;
  v5 = v2 > v3;
  v6 = (v3 < 0xF726BA9F) ^ v4;
  v7 = v5;
  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return (*(STACK[0x7B8] + 8 * ((v8 * ((v1 + 479702176) & 0xE36876E0 ^ 0x548A)) ^ v1)))();
}

uint64_t sub_100363BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x28E0] = v3 + 0x2868533ED2F15C97;
  v8 = (v5 - v6 + 0x6FA3EE03A4D0F5C1) > 0xA5009F1 && v5 - v6 + 0x6FA3EE03A4D0F5C1 < v3 - 1242123842;
  return (*(a3 + 8 * (((((3 * (v4 ^ 0x4731)) ^ 0xFFFFC74E) + 2 * (v4 ^ 0x5BCF)) * v8) | v4)))();
}

uint64_t sub_100363D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1278] = STACK[0x1C90] + 0x5261D24F740CB877;
  STACK[0xB20] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (v3 - 6861 + 4931 * (v3 ^ 0x18F))))();
}

uint64_t sub_100363DF8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x1C90] + 0x110B3786D1D8541FLL;
  v3 = (*(STACK[0x1278] - 0x5261D24F740CB83FLL) ^ 0x66D8CEBF) - 4738102 + ((*(STACK[0x1278] - 0x5261D24F740CB83FLL) << (a2 + 65)) & 0xCDB19D7E);
  STACK[0x1498] = STACK[0x9E8];
  LODWORD(STACK[0xB84]) = v3;
  STACK[0x1128] = v2;
  STACK[0x2180] = 0;
  LODWORD(STACK[0x11C4]) = -183221769;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100363ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1578] = STACK[0x9E8];
  STACK[0x1520] = STACK[0x1C90] + 72;
  STACK[0x2208] = *(a3 + 8 * v3);
  return (*(a3 + 8 * ((v3 + 674) ^ v3)))();
}

uint64_t sub_100363F28()
{
  v0 = STACK[0x798] + 107;
  v1 = (STACK[0x798] - 13079) | 0x3508;
  v2 = STACK[0x798] + 2889;
  LOBYTE(STACK[0x19A7]) = 0;
  LOBYTE(STACK[0x10F7]) = 0;
  return (*(STACK[0x7B8] + 8 * ((((v0 ^ (STACK[0x1578] == 0x5169BC75931DF3BBLL)) & 1) * (v1 ^ 0x3D42)) ^ v2)))();
}

uint64_t sub_100363FA8()
{
  v2 = *(v1 - 0x5169BC75931DF3A3) - *(v1 - 0x5169BC75931DF3ABLL);
  v3 = *(STACK[0x7B8] + 8 * ((10531 * (((v2 - ((2 * v2 + 889313182) & (((v0 ^ 0x298A) - 10216) ^ 0xB02E8511)) + 1922577396) ^ 0xD8174824) < 2)) ^ v0));
  STACK[0x7A0] = STACK[0x3C8];
  return v3();
}

uint64_t sub_100364050@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, int a3@<W8>)
{
  STACK[0x750] = STACK[0x1578];
  LODWORD(STACK[0x780]) = STACK[0xA9C];
  LODWORD(STACK[0x760]) = STACK[0x8EC];
  return (*(a1 + 8 * a3))(4238, 2257665724, 962826695, 2294223928, 4294941037, a2, 4294954385, 360004917);
}

uint64_t sub_1003641C8(uint64_t a1)
{
  v9 = v1 == v6;
  if (v2 == v7)
  {
    v9 = 1;
  }

  return (*(v5 + 8 * (((v9 ^ ((v4 ^ v8) * v3)) & 1 | (2 * ((v9 ^ ((v4 ^ v8) * v3)) & 1))) ^ v4)))(a1, 0);
}

uint64_t sub_10036420C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(v6 - 0x5169BC75931DF3A3) - 0x4006AC5EFAD52BCLL + (a6 ^ 0x69F8u) + 6552;
  v9 = *(v6 - 0x5169BC75931DF3ABLL) - 0x73A458C98A2DFAC2;
  v10 = (v9 < a3) ^ (v8 < a3);
  v11 = v8 > v9;
  if (v10)
  {
    v12 = v8 < a3;
  }

  else
  {
    v12 = v11;
  }

  return (*(v7 + 8 * ((v12 * ((((a6 ^ 0x69F8) - 1145742002) & 0x77DFFDF2) - 865430562)) ^ a6 ^ 0x69F8)))(a1, 0);
}

uint64_t sub_100364360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(v6 - 0x5169BC75931DF3BBLL) + v7 - 0x73A458C9C3918C89;
  v10 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = v10 - ((((a6 - 960) | 0x3C0u) + 2 * v10 + 0x53276F239AA65DBBLL) & 0x716C62C2F93AA62ELL) + 0x2249E8F349F0A3D9;
  v12 = __ROR8__(v11 ^ 0xBA5EDC5483A2B5E9, 8);
  v11 ^= 0xF6C360DAE93833FALL;
  v13 = (0xD53B6B84590E73B3 - ((v12 + v11) ^ 0x17D9181410C69D74 | 0xD53B6B84590E73B3) + ((v12 + v11) ^ 0x17D9181410C69D74 | 0x2AC4947BA6F18C4CLL)) ^ 0x4AFED3BB4A8926B4;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x4B5EFAAC9232C4EELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x83A4EBD40C3CAF16;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0xB6B6E5A36BC3AEELL) - (v19 + v18) + 0x7A4A48D2E4A1E289) ^ 0x70ECD69FC6613C5ELL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xB46B3DDB2C530337 - ((v22 + v21) | 0xB46B3DDB2C530337) + ((v22 + v21) | 0x4B94C224D3ACFCC8)) ^ 0x721E1043D5AE0E01;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0xC491517153041274) - (v25 + v24) - 0x6248A8B8A982093ALL) ^ 0x6E002FC66E6771B2;
  *(STACK[0x7A0] - 0x761475DE06B9EF42) = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v24, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((*(v6 - 0x5169BC75931DF3BBLL) + v7 + 119) & 7))) ^ *v9;
  ++*(v6 - 0x5169BC75931DF3ABLL);
  return (*(v8 + 8 * (a6 - 6552)))(a1, 1);
}

uint64_t sub_1003648B4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = *(v5 + 8 * ((((a4 - 3743) ^ 0x7A9 ^ (2 * a4) ^ 0x4F12) * a2) ^ a4));
  LODWORD(STACK[0x780]) = v4;
  STACK[0x7A0] = STACK[0x238];
  return v6();
}

uint64_t sub_100364930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 8 * (v3 - 9731));
  LODWORD(STACK[0x760]) = v4;
  STACK[0x7A0] = STACK[0x230];
  return v6(a1, 2257665724, a3, 2294223928);
}

uint64_t sub_100364988(uint64_t a1, int a2)
{
  STACK[0x8B8] = v3;
  LODWORD(STACK[0xA9C]) = STACK[0x780];
  LODWORD(STACK[0x8EC]) = STACK[0x760];
  return (*(v4 + 8 * ((((v2 + 5021) ^ 0x21C8) * a2) ^ v2)))();
}

uint64_t sub_1003649D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = LOBYTE(STACK[0x1EF7]) + 1;
  LOBYTE(STACK[0x1EF7]) = v4;
  v5 = (*(a3 + 8 * (v3 + 3669)))(v4 << ((v3 - 106) & 0x6A ^ (5 * (v3 ^ 0x66)) ^ 5u));
  v6 = STACK[0x7B8];
  STACK[0x10D8] = v5;
  return (*(v6 + 8 * ((15 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100364AEC(uint64_t a1, int a2)
{
  STACK[0x8B8] = v3;
  LODWORD(STACK[0xA9C]) = STACK[0x780];
  LODWORD(STACK[0x8EC]) = STACK[0x760];
  return (*(v4 + 8 * (((((v2 - 85990823) & 0x5203FCF) + ((v2 - 157349415) & 0x39F7DB54) - 815203597) * a2) ^ v2)))();
}

uint64_t sub_100364C9C()
{
  v1 = STACK[0x7B8];
  STACK[0xB20] = *(STACK[0x7B8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 9353) | 4) - 6599) ^ v0)))();
}

uint64_t sub_100364DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  STACK[0x1990] = 0;
  v45 = (LOBYTE(STACK[0x10F7]) ^ (2005 * (v44 ^ 0xEC9) + 1744348446)) + ((2 * LOBYTE(STACK[0x10F7])) & 0x136) - 23619858;
  STACK[0x1498] = STACK[0x1578];
  LODWORD(STACK[0xB84]) = v45;
  STACK[0x1128] = a44;
  STACK[0x2180] = 0;
  LODWORD(STACK[0x11C4]) = -183221774;
  return (*(STACK[0x7B8] + 8 * v44))();
}

uint64_t sub_100364E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x8B8] = v6;
  LODWORD(STACK[0xA9C]) = STACK[0x780];
  LODWORD(STACK[0x8EC]) = v7;
  return (*(v8 + 8 * (v5 + 3901)))(a1, a2, v8, a4, a5, STACK[0x728], 4232069604);
}

uint64_t sub_100364EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x8B8] = v6;
  LODWORD(STACK[0xA9C]) = v7;
  LODWORD(STACK[0x8EC]) = STACK[0x760];
  return (*(v8 + 8 * v5))(a1, a2, a3, a4, a5, STACK[0x728], 4232069604);
}

uint64_t sub_100364FA0()
{
  v1 = STACK[0x7B8];
  STACK[0x2220] = *(STACK[0x7B8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 1828)))();
}

uint64_t sub_1003651F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1C90];
  v5 = STACK[0x1390];
  *(v5 - 0x4120F47AB517F629) = *(STACK[0x1C90] + 72);
  *(v5 - 0x4120F47AB517F621) = *(v4 + 76);
  v6 = *(v4 + 56) - 1240130101 - ((2 * *(v4 + 56) + 50) & 0x6C2A3B96) + 25;
  *(v5 - 0x4120F47AB517F659) = v6;
  v7 = (*(a3 + 8 * (v3 + 8486)))(v6 ^ (((v3 - 10032) | 0xCD0u) - 1240133893));
  v8 = STACK[0x7B8];
  *(v5 - 0x4120F47AB517FA21) = v7;
  return (*(v8 + 8 * ((82 * (v7 != 0)) ^ v3)))();
}

uint64_t sub_1003652EC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *(v4 + 32);
  v6 = *(v5 - 0x4120F47AB517FA21);
  v6[20] = *(v4 + 52);
  v6[19] = *(v4 + 51);
  v6[18] = *(v4 + 50);
  v6[17] = *(v4 + 49);
  v6[16] = *(v4 + 48);
  v6[15] = *(v4 + 47);
  v6[14] = *(v4 + 46);
  v6[13] = *(v4 + 45);
  v6[12] = *(v4 + 44);
  v6[11] = *(v4 + 43);
  v6[10] = *(v4 + 42);
  v6[9] = *(v4 + 41);
  v6[8] = *(v4 + 40);
  v6[7] = *(v4 + 39);
  v6[6] = *(v4 + 38);
  v6[5] = *(v4 + 37);
  v6[4] = *(v4 + 36);
  v6[3] = *(v4 + 35);
  v6[2] = *(v4 + 34);
  v6[1] = *(v4 + 33);
  v7 = *(v5 - 0x4120F47AB517FA21);
  v8 = *(v4 + 56) - ((2 * *(v4 + 56)) & 0x5894B556) - 1404413269;
  v7[21] = HIBYTE(v8) ^ 0xAC;
  v7[22] = BYTE2(v8) ^ 0x4A;
  v7[23] = (v8 >> (v3 + 56)) ^ 0x5A;
  v7[24] = v8 ^ 0xAB;
  v9 = *(v4 + 56) - ((2 * *(v4 + 56)) & 0x4837C462) - 1541676495;
  v10 = (v9 ^ 0xDAFCDDC6) - 134288032 + ((2 * v9) & 0xFDCE7FEE ^ 0x48064462) != 1994796375;
  return (*(a3 + 8 * (((2 * v10) | (4 * v10)) ^ v3)))();
}

uint64_t sub_1003654AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v5 + 16472)))(*(v3 + 20));
  v7 = STACK[0x7B8];
  STACK[0x1868] = v6 + 0x388E91526D1D7DF0;
  return (*(v7 + 8 * (((v6 != 0) * (((v5 + 6170) | 0x1085) ^ (v4 + (v5 ^ 0xAB776A08) + 2373))) ^ v5)))();
}

uint64_t sub_10036553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v5 + 24);
  v10 = 693709591 * ((((v8 - 232) | 0x2C48AC75) - (v8 - 232) + ((v8 - 232) & 0xD3B75388)) ^ 0x857A166E);
  v11 = v8 - 232;
  *(v11 + 40) = v10 + (*(v5 + 20) ^ 0x7F5F7FBD) + ((((3 * (v7 ^ 0xAB777329)) ^ 0x1757) - 21046864) & (2 * *(v5 + 20))) - 827351081;
  *(v11 + 8) = v10 + v7 + 1418255267 + 2063;
  *(v8 - 216) = v4 - 0x9D4E87F36EF2C36;
  *(v8 - 208) = v5 + 0x67301DA000F3501BLL;
  *(v8 - 232) = v3;
  *(v8 - 200) = v9;
  v12 = (*(a3 + 8 * (v7 ^ 0xAB772942)))(v8 - 232);
  return (*(STACK[0x7B8] + 8 * (v7 ^ v6 ^ (12179 * (((*(v8 - 188) - v7) | (v7 - *(v8 - 188))) >= 0)))))(v12);
}

uint64_t sub_10036567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xB00] = v3;
  STACK[0xC20] = 0;
  LODWORD(STACK[0x1724]) = 0;
  STACK[0x1C98] = 0x5169BC75931DF3BBLL;
  return (*(a3 + 8 * ((((2 * v4) ^ 0x549E ^ (v4 + 1300762933) & 0xB277FB9D ^ 0x2E5F) * (v3 == 0x4120F47AB517FA21)) ^ v4)))();
}

uint64_t sub_100365700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v4)
  {
    v6 = v5 == ((v3 - 1159211021) & 0x45183B9F) - 12957;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(a3 + 8 * ((v7 * (v3 ^ 0x1F65)) ^ v3)))();
}

uint64_t sub_100365750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 ^ 0x1117;
  v6 = 281 * (v3 ^ 0x1F3F);
  *(v4 - 0x4120F47AB517F9F1) = 0;
  v7 = 67 * (v3 ^ 0x1FCF);
  *(v4 - 0x4120F47AB517FA01) = 0u;
  *(v4 - 0x4120F47AB517FA11) = 0u;
  v8 = (*(a3 + 8 * ((v3 ^ 0x1117) + 15417)))(32);
  v9 = STACK[0x7B8];
  STACK[0x15A8] = v8 + 0x5169BC75931DF3BBLL;
  return (*(v9 + 8 * (((v8 == 0) * ((v6 ^ 0xFFFFF6B6) + v7)) ^ v5)))();
}

uint64_t sub_100365878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 - 995678070)))();
  v6 = STACK[0x7B8];
  *v4 = 0;
  return (*(v6 + 8 * ((v3 + 2426) ^ v3 ^ (1331 * (v3 < 0x8CBB1329)))))(v5);
}

uint64_t sub_1003658D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v7 = (v5 - 1);
  v8 = (v7 | ((v7 < v2) << 32)) + a2 + 0x434C3ECA5759254FLL;
  *(v8 + v3 + 25) = *(v4 + v8);
  return (*(a1 + 8 * ((2 * (((v7 == v2) ^ (v6 + 1)) & 1)) & 0xFB | (4 * (((v7 == v2) ^ (v6 + 1)) & 1)) | v6)))();
}

uint64_t sub_100365938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4 - ((v4 << (v5 + 114)) & 0x43E8B9A0) + 0x28EFD19321F45CD0;
  if (!v3)
  {
    v7 = 0x28EFD19321F45ED0;
  }

  *(v6 + 8) = v7;
  *(v6 + 16) = 0x73A458C9C3918C89;
  return (*(a3 + 8 * ((((v5 - 9520) ^ 0xE49) * (v3 == 0)) ^ v5)))();
}

uint64_t sub_100365A18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3[3] = a2;
  v5 = (*(a1 + 8 * (v4 ^ 0x256)))((((v4 - 405713449) & 0x182E7A7F) + 569658489) ^ v2);
  v6 = STACK[0x7B8];
  *v3 = v5;
  return (*(v6 + 8 * ((137 * (((v4 - 1) ^ (v5 == 0)) & 1)) | v4)))();
}

uint64_t sub_100365B70@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1C98] = v2;
  STACK[0xB20] = *(a1 + 8 * (a2 - 14723));
  return (*(a1 + 8 * ((a2 - 5336) ^ (a2 - 14723) ^ 0x2A1B)))();
}

uint64_t sub_100365C70(uint64_t a1)
{
  v5 = (v3 - 998119892);
  v6 = -927196479 * (((v4 + v5) ^ *(*(STACK[0x2F8] - 1044409835) + (*(STACK[0x2F0] - 1120588707) & 0xFFFFFFFFBA961A1CLL))) & 0x7FFFFFFF);
  v7 = __ROR8__((a1 + v5) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = -927196479 * ((v6 >> ((v2 + 31) ^ 0x4E)) ^ v6);
  v9 = ((2 * (v7 + 0x6993B791CD5350C2)) | 0xE82DF3FE00E56B20) - (v7 + 0x6993B791CD5350C2) + 0xBE90600FF8D4A70;
  v10 = v9 ^ 0xF6FE14CAFF4D536ELL;
  v9 ^= 0xBA63A84495D7D57DLL;
  v11 = (__ROR8__(v10, 8) + v9) ^ 0x77E35FD4FCBE378CLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x4B5EFAAC9232C4EELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x20922515C7812F22) - (v15 + v14) + 0x6FB6ED751C3F686FLL) ^ 0x13EDF95EEFFC3887;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xF55961B2DD3F2129;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xD24028649C61E07ALL) - 0x16DFEBCDB1CF0FC3) ^ 0xD0AAC655483202F4;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xC48877EC7E57888;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = STACK[0x7B8];
  *(a1 + v5) = *(*(&off_10044E3E0 + v2 - 10381) + (v8 >> 24) - 304515955) ^ *(v4 + v5 - 0x388E91526D1D7DF0) ^ *(*(&off_10044E3E0 + (v2 ^ 0x28A0)) + (v8 >> 24) - 2024172087) ^ *(*(&off_10044E3E0 + v2 - 10417) + (v8 >> 24) - 2082052663) ^ v8 ^ (-127 * BYTE3(v8)) ^ (((v25 + v24 - ((2 * (v25 + v24)) & 0xF76948225665DA7CLL) - 0x44B5BEED4CD12C2) ^ 0x57F83A741AC4420ELL) >> (8 * ((a1 + v5) & 7)));
  return (*(v26 + 8 * ((125 * (v3 - 1 != v1)) ^ v2)))();
}

uint64_t sub_100365FDC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0xB00];
  LODWORD(STACK[0x24A8]) = *(STACK[0xB00] - 0x4120F47AB517F645);
  v2 -= 0x4120F47AB517F9F9;
  STACK[0x21F0] = v2;
  STACK[0x18F0] = 0;
  return (*(a1 + 8 * (((v2 != 0) * (((a2 + 8717) | 0x1100) - 15196)) | a2)))();
}

uint64_t sub_1003660A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x5169BC75931DF3A3) - 0x4006AC5AAD0B8E8;
  v6 = *(v4 - 0x5169BC75931DF3ABLL) - 0x73A458C94551A4B7;
  v7 = v5 < 0x7E3FE7D2;
  v8 = v5 > v6;
  if (v7 != v6 < 0x7E3FE7D2)
  {
    v8 = v7;
  }

  return (*(a3 + 8 * ((v8 * (((v3 + 680) | 0x81C) - 9240)) ^ v3)))();
}

uint64_t sub_1003661D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0xCF6u)))(v3);
  v6 = STACK[0x7B8];
  STACK[0x18F0] = v5;
  return (*(v6 + 8 * (((v5 == 0) * (((v4 - 2882) ^ 0x3F14) - 1085)) | v4)))();
}

uint64_t sub_1003662D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xB00];
  LODWORD(STACK[0x24AC]) = *(STACK[0xB00] - 0x4120F47AB517F641);
  v4 -= 0x4120F47AB517F9F1;
  STACK[0xED8] = v4;
  STACK[0xFE0] = 0;
  return (*(a3 + 8 * (v3 ^ (32 * (v4 != 0)))))();
}

uint64_t sub_1003663A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x5169BC75931DF3A3) - 0x4006AC5B27ADC93;
  v6 = *(v4 - 0x5169BC75931DF3ABLL) - 0x73A458C94CFBC862;
  v7 = v5 < 0x7695C427;
  v8 = v5 > v6;
  if (v7 != v6 < (((v3 + 8381) | 0x1250u) - 10657) + 1989522026)
  {
    v8 = v7;
  }

  return (*(a3 + 8 * ((11840 * v8) ^ v3)))();
}

uint64_t sub_1003664C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 + 4883)))(v3);
  v6 = STACK[0x7B8];
  STACK[0xFE0] = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((((v4 + 1449490490) & 0xA99A54EB) + 14098) ^ (298 * (v4 ^ 0x3770)))) ^ v4)))();
}

uint64_t sub_100366604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xB00];
  LODWORD(STACK[0x24B0]) = *(STACK[0xB00] - 0x4120F47AB517F649);
  v4 -= 0x4120F47AB517FA01;
  STACK[0x1A08] = v4;
  STACK[0xE28] = 0;
  return (*(a3 + 8 * (((v4 == 0) * ((v3 ^ 0x309C) - 33685 + ((v3 - 945) | 0x4048))) ^ v3)))();
}

uint64_t sub_1003666D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x5169BC75931DF3A3) - 0x4006AC5CE13D992;
  v6 = ((v3 - 154751515) & 0x93973F7 ^ 0x8C5BA736976B092DLL) + *(v4 - 0x5169BC75931DF3ABLL);
  v7 = v5 < 0x5AFCC728;
  v8 = v5 > v6;
  if (v7 != v6 < 0x5AFCC728)
  {
    v8 = v7;
  }

  return (*(a3 + 8 * ((13292 * v8) ^ v3)))();
}

uint64_t sub_1003667F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0x6EFC)))(v3);
  v6 = STACK[0x7B8];
  STACK[0xE28] = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((v4 - 8302) ^ 0x42D)) ^ v4)))();
}

uint64_t sub_10036691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xB00];
  LODWORD(STACK[0x24B4]) = *(STACK[0xB00] - 0x4120F47AB517F651);
  v4 -= 0x4120F47AB517FA11;
  STACK[0x1C40] = v4;
  STACK[0x1AC0] = 0;
  return (*(a3 + 8 * (((v4 != 0) * ((894 * (v3 ^ 0x3447)) ^ (v3 - 413316184) & 0x18A299B5 ^ 0x2229)) ^ v3)))();
}

uint64_t sub_100366A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x5169BC75931DF3A3) - 0x4006AC536A03A9ELL;
  v6 = *(v4 - 0x5169BC75931DF3ABLL) - 0x73A458C8D121266DLL;
  v7 = v5 < 0xF270661C;
  v8 = v5 > v6;
  if (v7 != v6 < ((((v3 & 0x40E81FF7) - 2143) | 0x3348u) ^ 0xF2705D42uLL))
  {
    v8 = v7;
  }

  return (*(a3 + 8 * ((v8 * (((v3 & 0x40E81FF7) + 12126) ^ 0x19AC)) ^ v3 & 0x40E81FF7)))();
}

uint64_t sub_100366B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0x51AF)))(v3);
  v6 = STACK[0x7B8];
  STACK[0x1AC0] = v5;
  return (*(v6 + 8 * (((((v5 == 0) ^ (v4 - 122)) & 1) * (v4 ^ 0x1C0E)) ^ v4)))();
}

uint64_t sub_100366C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xB00];
  LODWORD(STACK[0x24B8]) = *(STACK[0xB00] - 0x4120F47AB517F64DLL);
  v4 -= 0x4120F47AB517FA09;
  STACK[0xDE0] = v4;
  STACK[0xFA0] = 0;
  return (*(a3 + 8 * (((v4 == 0) * ((v3 + 2119855234) & 0x81A5B97D ^ 0x3984)) ^ v3)))();
}

uint64_t sub_100366D34@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = a2 - 9196;
  v4 = ((v3 - 188619315) & 0xB3E3FFF ^ 0xFBFF953A563D8927) + *(v2 - 0x5169BC75931DF3A3);
  v5 = *(v2 - 0x5169BC75931DF3ABLL) - 0x73A458C944433956;
  v6 = v4 < 0x7F4E5333;
  v7 = v4 > v5;
  if (v5 < 0x7F4E5333 != v6)
  {
    v7 = v6;
  }

  return (*(a1 + 8 * ((15381 * v7) ^ v3)))();
}

uint64_t sub_100366E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0x4449)))(v3);
  v6 = STACK[0x7B8];
  STACK[0xFA0] = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((v4 + 11583) ^ v4 ^ 0xA5F ^ 0x3F35)) ^ v4)))();
}

uint64_t sub_100366F64@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x1724];
  STACK[0x1498] = STACK[0x1C98];
  LODWORD(STACK[0xB84]) = (v2 ^ 0x67B1D7AF) - 18961702 + (((a2 + 267073469) & 0xF014FFFF ^ 0xCF63E923) & (2 * v2));
  STACK[0x1128] = STACK[0x268];
  STACK[0x2180] = 0;
  LODWORD(STACK[0x11C4]) = -183221772;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100367660@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v8 = v6 == v2;
  v9 = v7 ^ a2;
  v10 = *(v4 + v9);
  v11 = v8;
  v12 = (*(v3 + v9) << 56) | ((v10 ^ 0x12u) << 48) | (v11 << 33);
  v13 = *(STACK[0x3B0] - 1598335027);
  v14 = v12 - ((v12 << (-11 * (v5 ^ 0x56) + ((v5 + 13) ^ 0x10u))) & 0x6F3C000400000000) + 0x379EABBB4EAE2307;
  *(STACK[0x3B0] - 1598335027) = v13 + 1;
  v15 = v13 & 0x3F;
  v16 = 8 * (v13 & 0x3F);
  v17 = (STACK[0x3C0] + v16);
  v18 = v16 + STACK[0x3B8] - 496;
  if (v15 <= 0x3D)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  *v19 = v14;
  return (*(a1 + 8 * ((5918 * v11) ^ v5)))();
}

uint64_t sub_100367924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 1798;
  *(STACK[0x1390] - 0x4120F47AB517F661) = -1240130104;
  LODWORD(STACK[0x24BC]) = -1418238986;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100367BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v4 + 3829)))();
  v7 = STACK[0x7B8];
  *(v3 + v5) = 0;
  return (*(v7 + 8 * (v4 - 1798)))(v6);
}

uint64_t sub_100367C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + 1058999153) & 0xFFFFFFFFC0E0BDBELL;
  STACK[0x22B8] = STACK[0x1C90] + 20;
  STACK[0x2220] = *(a3 + 8 * v4);
  return (*(a3 + 8 * (v4 + 1795)))();
}

uint64_t sub_100367F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8 * (v3 ^ 0x25192833 ^ (6093 * (v3 >= ((v3 - 622392835) ^ 0xABD16556)))));
  v5 = STACK[0x798];
  LODWORD(STACK[0x7A0]) = STACK[0x798] - 14641;
  LODWORD(STACK[0x780]) = v5 - 14732;
  LODWORD(STACK[0x760]) = v5 - 14760;
  LODWORD(STACK[0x750]) = v5 ^ 0x3A27;
  LODWORD(STACK[0x740]) = v5 - 14625;
  LODWORD(STACK[0x730]) = (v5 - 14625) ^ 0x172D;
  LODWORD(STACK[0x710]) = v5 - 14632;
  LODWORD(STACK[0x700]) = (v5 ^ 0x2D45) + v5 - 14632;
  LODWORD(STACK[0x6F0]) = 87 * (v5 ^ 0x3B79);
  LODWORD(STACK[0x6E0]) = v5 - 14635;
  LODWORD(STACK[0x6D0]) = v5 + 759460787;
  LODWORD(STACK[0x6C0]) = v5 - 14191;
  STACK[0x6B0] = ((v5 - 14588) | 0x418Cu) - 16825;
  LODWORD(STACK[0x6A0]) = v5 - 1650883609;
  LODWORD(STACK[0x690]) = v5 - 14621;
  LODWORD(STACK[0x680]) = v5 - 7411;
  LODWORD(STACK[0x670]) = v5 - 14677;
  LODWORD(STACK[0x660]) = v5 - 11869;
  LODWORD(STACK[0x650]) = v5 - 14642;
  LODWORD(STACK[0x640]) = (v5 - 14642) ^ 0x173C;
  LODWORD(STACK[0x620]) = v5 - 14664;
  STACK[0x610] = 0x6000FD6ED0100C96;
  LODWORD(STACK[0x600]) = v5 - 15133;
  return v4(0xC1735204F928B1ACLL);
}

uint64_t sub_100368204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x1FA0] + 4);
  STACK[0x18C8] = STACK[0x1140];
  LODWORD(STACK[0x1E9C]) = v5 + v4 - ((v5 << ((v3 - 13) & 0x55 ^ 0x15)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682449;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003682CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x1FA0] + 8);
  v6 = STACK[0x1140];
  STACK[0x1440] = STACK[0x1FA0] + 8;
  STACK[0x18C8] = v6;
  LODWORD(STACK[0x1E9C]) = v5 + v4 - ((v5 << (((v3 + 57) | 0x10) - 19)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682450;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100368380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 ^ 0x2240;
  STACK[0x1D18] = *(a3 + 8 * v4);
  return (*(a3 + 8 * (v4 ^ 0xED8)))();
}

uint64_t sub_10036843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x1140];
  v6 = *(STACK[0x1FA0] + 24);
  STACK[0xB28] = STACK[0x1FA0] + 24;
  STACK[0x18C8] = v5;
  LODWORD(STACK[0x1E9C]) = v6 + v4 - ((v6 << ((v3 - 84) & 0x9C ^ 0x15)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682451;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100368584@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = STACK[0x1140];
  v4 = *(STACK[0x1FA0] + 40);
  STACK[0x1180] = STACK[0x1FA0] + 40;
  STACK[0x18C8] = v3;
  LODWORD(STACK[0x1E9C]) = v4 + v2 - ((v4 << ((4 * (a2 ^ 0x1D)) ^ 0x15)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682452;
  return (*(a1 + 8 * (a2 ^ 0x33D3)))();
}

uint64_t sub_100368780@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 56);
  STACK[0x18C8] = STACK[0x1140];
  LODWORD(STACK[0x1E9C]) = (((v2 + 202753373) | 0xB00) ^ 0xB61512DF) + v3 - ((2 * v3) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682461;
  return (*(a1 + 8 * ((7907 * (v2 > 0xE5EB56E9)) ^ (v2 + 202753905))))();
}

uint64_t sub_100368854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x1140];
  v6 = *(STACK[0x1FA0] + 60);
  STACK[0x1580] = STACK[0x1FA0] + 60;
  STACK[0x18C8] = v5;
  LODWORD(STACK[0x1E9C]) = v6 + v4 - ((v6 << (v3 + 54)) & 0x6C2A3B96);
  LODWORD(STACK[0xAF4]) = -1658682462;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003689F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v4 + 1210951988) & 0xB7D25EAE;
  v6 = ((*(v3 - 0x5169BC75931DF3A3) - *(v3 - 0x5169BC75931DF3ABLL) - ((((*(v3 - 0x5169BC75931DF3A3) - *(v3 - 0x5169BC75931DF3ABLL)) << (((v5 - 28) | 0x81) ^ (v5 + 100))) + 6) & 4) + 1) & 0xF) != 2;
  return (*(a3 + 8 * (((8 * v6) | (16 * v6)) ^ v5)))();
}

uint64_t sub_100368BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x21C8] = STACK[0x1810];
  LODWORD(STACK[0x176C]) = STACK[0x9DC];
  LODWORD(STACK[0x212C]) = -1418238986;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100368C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x710D)))();
  v5 = STACK[0x7B8];
  STACK[0x1810] = 0;
  return (*(v5 + 8 * (v3 - 4021)))(v4);
}

uint64_t sub_100368C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 12272;
  v4 = STACK[0x212C];
  STACK[0x1340] = STACK[0x1340] + ((STACK[0x798] - 15048) | 0x160) - 518;
  return (*(a3 + 8 * ((229 * (v4 != -1418238986)) ^ v3)))();
}

uint64_t sub_100368DF8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0xBE0] = a2;
  STACK[0x1650] = v3;
  LODWORD(STACK[0xE10]) = v4;
  return (*(a1 + 8 * (((a2 != 0x43E7F7FA96F7075DLL) * (((v2 + 37772393) & 0xFDBFBB5E) + (v2 ^ 0xFFFFE73B))) ^ v2)))();
}

uint64_t sub_100369100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9.n128_u64[0] = 0x2424242424242424;
  v9.n128_u64[1] = 0x2424242424242424;
  v10.n128_u64[0] = 0x1212121212121212;
  v10.n128_u64[1] = 0x1212121212121212;
  return (*(v8 + 8 * (5066 * (a8 ^ 0x437A) - 11604)))(v9, v10);
}

uint64_t sub_100369144(uint64_t a1, int8x16_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, unsigned int a9, int a10)
{
  v13 = (v10 + a9);
  v14 = *v13;
  v15 = v13[1];
  v16 = (a1 + a8);
  *v16 = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  v16[1] = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a2)), a3);
  return (*(v12 + 8 * (((a10 == 0) * v11) ^ a7)))();
}

uint64_t sub_100369224(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  a2.n128_u16[0] = 9252;
  a2.n128_u8[2] = 36;
  a2.n128_u8[3] = 36;
  a2.n128_u8[4] = 36;
  a2.n128_u8[5] = 36;
  a2.n128_u8[6] = 36;
  a2.n128_u8[7] = 36;
  a3.n128_u16[0] = 4626;
  a3.n128_u8[2] = 18;
  a3.n128_u8[3] = 18;
  a3.n128_u8[4] = 18;
  a3.n128_u8[5] = 18;
  a3.n128_u8[6] = 18;
  a3.n128_u8[7] = 18;
  return (*(v9 + 8 * a9))(a1, a2, a3);
}

uint64_t sub_100369398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, uint64_t a4@<X8>)
{
  v7 = (*(a4 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + v5 + 439262054 - (v4 & (2 * ((*(a4 - 0x43E7F7FA96F70719) ^ 0x1A2E9B66) + v5)));
  *(a4 - 0x43E7F7FA96F70719) = v7;
  return (*(v6 + 8 * ((224 * (((a3 + 40) ^ ((v7 ^ 0x1A2E9B66u) < v5)) & 1)) ^ a3)))(a1, a2, v6);
}

uint64_t sub_1003694E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1358];
  v5 = STACK[0x1340];
  STACK[0x1D60] = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x1340] = v5 + 32;
  STACK[0x1C78] = v4;
  v7 = STACK[0x15B0] == 0x43E7F7FA96F7075DLL || v4 == 0;
  return (*(a3 + 8 * ((v7 * (((v3 + 489025510) & 0xE2DA3F7F) - 15192)) ^ v3)))();
}

uint64_t sub_100369580(int a1, int a2, int a3, uint64_t a4, int a5)
{
  if ((a5 - 1028565229) > 0x40)
  {
    v7 = a5 - 1028565229;
  }

  else
  {
    v7 = 64;
  }

  return (*(v6 + 8 * ((((a3 ^ 0x3291) - 4254) * ((v5 - a1 - a2 + v7) < 0x1F)) | a3)))();
}

uint64_t sub_1003695F4(int a1, int a2, uint64_t a3, int a4, unsigned int a5, int a6)
{
  v8 = a2 + a1;
  v9 = ((7 * ((a4 - 1622425788) & 0x60B437E7 ^ 0xE37)) ^ 0xC2B113C0) + v8;
  if (v9 <= 0x40)
  {
    v9 = a5;
  }

  return (*(v7 + 8 * ((434 * (v6 - v8 < a6 + v9)) ^ a4)))();
}

uint64_t sub_1003696AC()
{
  v2.n128_u64[0] = 0x2424242424242424;
  v2.n128_u64[1] = 0x2424242424242424;
  v3.n128_u64[0] = 0x1212121212121212;
  v3.n128_u64[1] = 0x1212121212121212;
  return (*(v1 + 8 * v0))(v2, v3);
}

uint64_t sub_1003696F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v11 = (v7 + v6);
  v12 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a5)), a6);
  *v11 = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a5)), a6);
  v11[1] = v12;
  return (*(v10 + 8 * (((a3 == 0) * a4) ^ v9)))(a1, a2, a3 - 32);
}

uint64_t sub_100369814(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0xF44]) = v2;
  STACK[0x1CF8] = *(v4 + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x3EC2 ^ ((v3 + 3621) | 0x2492))))(a1, a2, v4, 3599573750);
}

uint64_t sub_100369864@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  v5 = v2 + 9522;
  v6 = (v2 - 936) | 0x330E;
  STACK[0x1B48] = a2;
  STACK[0x16A8] = v3;
  v8 = a2 == v4 || v3 == 0;
  return (*(a1 + 8 * ((((v8 ^ (v5 + 109)) & 1) * (v6 ^ 0x3B1D)) ^ v5)))();
}

uint64_t sub_1003698D0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 - 639) | 0x1701;
  v4 = (v3 - 5850) & *(a2 - 0x43E7F7FA96F70719);
  *(a2 - 0x43E7F7FA96F7075DLL + (v4 ^ 0x26)) = -110;
  return (*(a1 + 8 * ((17889 * ((v4 ^ 0x26) > 0x37)) ^ v2)))((v3 + 9285));
}

uint64_t sub_1003699A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 <= 0x3EuLL;
  v7 = 62 - v3;
  if (!v6)
  {
    v7 = 0;
  }

  v5 = 6 * (((v4 - 6786) | 0x2114) ^ 0x32BBu);
  return (*(a3 + 8 * (((8 * (v7 + 1 >= (v5 - 15182))) | (16 * (v7 + 1 >= (v5 - 15182)))) ^ v4)))();
}

uint64_t sub_100369A00@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a3.n128_u16[0] = 4626;
  a3.n128_u8[2] = 18;
  a3.n128_u8[3] = 18;
  a3.n128_u8[4] = 18;
  a3.n128_u8[5] = 18;
  a3.n128_u8[6] = 18;
  a3.n128_u8[7] = 18;
  return (*(a1 + 8 * (v4 - 12100)))(v3 + a2 - 0x43E7F7FAE1C60C4ALL, a3);
}

uint64_t sub_100369A58(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + v5);
  *v8 = a2;
  v8[1] = a2;
  return (*(a4 + 8 * (((v6 == 0) * v7) ^ v4)))(a1 + 16);
}

uint64_t sub_100369B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = v5 + v4;
  *(v3 + v9) = v7;
  return (*(a3 + 8 * ((((v9 + 1) < 0x40) * v8) ^ v6)))();
}

uint64_t sub_100369C4C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u16[0] = 4626;
  a1.n128_u8[2] = 18;
  a1.n128_u8[3] = 18;
  a1.n128_u8[4] = 18;
  a1.n128_u8[5] = 18;
  a1.n128_u8[6] = 18;
  a1.n128_u8[7] = 18;
  return (*(a4 + 8 * (v4 - 12885)))(503, a1);
}

uint64_t sub_100369CA4(int a1, double a2, uint64_t a3, uint64_t a4)
{
  *v5 = a2;
  v5[1] = a2;
  return (*(a4 + 8 * (((v4 != 0) * a1) ^ v6)))();
}

uint64_t sub_100369E28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 + 687001514) & 0xD70D36FF;
  v4 = *(a2 - 0x43E7F7FA96F70719);
  *(a2 - 0x43E7F7FA96F70725) = ((8 * v4) ^ 0x30) - ((((8 * v4) ^ 0x30) << ((51 * (v3 ^ 0xCC)) ^ 0xAE)) & 0x20) + 18;
  *(a2 - 0x43E7F7FA96F70724) = ((v4 >> 5) ^ 0xDB) + ~(2 * (((v4 >> 5) ^ 0xDB) & 0x16 ^ (v4 >> 5) & 4)) + 19;
  *(a2 - 0x43E7F7FA96F70723) = ((v4 >> 13) ^ 0x74) - ((2 * ((v4 >> 13) ^ 0x74)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70722) = ((v4 >> 21) ^ 0xD1) - 2 * (((v4 >> 21) ^ 0xD1) & 0x16 ^ (v4 >> 21) & 4) + 18;
  v5 = *(a2 - 0x43E7F7FA96F7071DLL);
  HIDWORD(v6) = v5 ^ 0x15;
  LODWORD(v6) = v4;
  *(a2 - 0x43E7F7FA96F70721) = (v6 >> 29) - ((2 * (v6 >> 29)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70720) = ((v5 >> 5) ^ 0x8F) - ((2 * ((v5 >> 5) ^ 0x8F)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F7071FLL) = ((v5 >> 13) ^ 0x6A) + (~(2 * ((v5 >> 13) ^ 0x6A)) | 0xDB) + 19;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10036A194@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a3.n128_u16[0] = 4626;
  a3.n128_u8[2] = 18;
  a3.n128_u8[3] = 18;
  a3.n128_u8[4] = 18;
  a3.n128_u8[5] = 18;
  a3.n128_u8[6] = 18;
  a3.n128_u8[7] = 18;
  return (*(a1 + 8 * v5))(v4 - (v3 & 0xFFFFFFF8), a2 - 7, a3);
}

uint64_t sub_10036A294@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x43E7F7FA96F7071DLL);
  *(a2 - 0x43E7F7FA96F70725) = ((v2 - 57) | 0x8F) + ((v3 >> 21) ^ 0x7F) - ((2 * ((v3 >> 21) ^ 0x7F)) & 0x24) + 99;
  *(a2 - 0x43E7F7FA96F70724) = ((v3 >> 13) ^ 0x6A) - ((2 * ((v3 >> 13) ^ 0x6A)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70723) = ((v3 >> 5) ^ 0x8F) + (~(2 * ((v3 >> 5) ^ 0x8F)) | 0xDB) + 19;
  v4 = *(a2 - 0x43E7F7FA96F70719);
  HIDWORD(v5) = v3 ^ 0x15;
  LODWORD(v5) = v4;
  *(a2 - 0x43E7F7FA96F70722) = (v5 >> 29) + (~(2 * (v5 >> 29)) | 0xDB) + 19;
  *(a2 - 0x43E7F7FA96F70721) = ((v4 >> 21) ^ 0xD1) - ((2 * ((v4 >> 21) ^ 0xD1)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F70720) = ((v4 >> 13) ^ 0x74) - ((2 * ((v4 >> 13) ^ 0x74)) & 0x24) + 18;
  *(a2 - 0x43E7F7FA96F7071FLL) = ((v4 >> 5) ^ 0xDB) - ((2 * ((v4 >> 5) ^ 0xDB)) & 0x24) + 18;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10036A4A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9.n128_u64[0] = 0x1212121212121212;
  v9.n128_u64[1] = 0x1212121212121212;
  return (*(a6 + 8 * (a1 - 4964)))(338 * (a1 ^ 0x3B75u), (v7 + v8 - 1928607938), (v6 & 0xFFFFFFE0) - 32, 4060, v9);
}

uint64_t sub_10036A4EC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>, int8x16_t a7@<Q0>)
{
  v9 = (a2 + a1);
  v10 = *(v7 + v9 - 15);
  v11 = *(v7 + v9 - 31);
  v12 = a6 + v9;
  *(v12 - 15) = veorq_s8(v10, a7);
  *(v12 - 31) = veorq_s8(v11, a7);
  return (*(a5 + 8 * (((a3 == 0) * a4) ^ v8)))();
}

uint64_t sub_10036A624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x1340];
  v8 = STACK[0x1358];
  STACK[0x24D0] = STACK[0x1358];
  v9 = STACK[0x2088];
  v10 = STACK[0x1058];
  STACK[0x24D8] = STACK[0x1058];
  STACK[0x24E0] = &STACK[0x2A60] + v7 - 32;
  STACK[0x1340] = v7 - 16;
  v14 = STACK[0x2148] != 0x4120F47AB517FA21 && v8 != 0 && v9 != 0 && v10 != 0;
  return (*(a6 + 8 * ((v14 * (((v6 - 5315) | 0x101) - 229)) ^ v6)))();
}

uint64_t sub_10036A8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x1A38] + 16);
  STACK[0x18C8] = STACK[0x13E0];
  LODWORD(STACK[0x1E9C]) = v5 + v4 - (((v3 - 2487) ^ 0x6C2A3482) & (2 * v5));
  LODWORD(STACK[0xAF4]) = -1658682463;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10036A9E4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1890] = v2;
  STACK[0x2948] = v3;
  STACK[0xF08] = v3;
  return (*(a1 + 8 * (((v3 == 0x5169BC75931DF3BBLL) * (a2 - 17113 + ((a2 - 822448664) & 0x3105B37B))) ^ a2)))();
}

uint64_t sub_10036ABD0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = v3 - 11725;
  v6 = ((2 * v4) ^ 0x51DFA32643E8B9A0) + a2 + ((v3 - 11725) ^ 0x1375 ^ (v3 - 1186) ^ 0x9ECFD4BD1A68E71FLL);
  v7 = v6 + v2 - ((2 * v6) & 0x51DFA32643E8B9A0);
  STACK[0x1F90] = v7;
  v8 = (*(a1 + 8 * (v3 + 2646)))(v7 ^ 0x21F45CD0);
  v9 = STACK[0x7B8];
  STACK[0xEE8] = v8;
  v10 = v8 == 0;
  LOBYTE(STACK[0x295E]) = v10;
  return (*(v9 + 8 * (((16 * v10) | (v10 << 6)) ^ v5)))();
}

uint64_t sub_10036ADF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 14824;
  STACK[0x1480] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (v3 ^ 0xDCC ^ ((v3 != 711419589) * (v3 + 7434)))))();
}

uint64_t sub_10036AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1A38] + 48);
  STACK[0x18C8] = STACK[0x13E0];
  LODWORD(STACK[0x1E9C]) = ((v3 + 1162421876) & 0xBAB6CFD4) - 1240136208 + v4 - ((2 * v4) & 0x6C2A3B96) + 2247;
  LODWORD(STACK[0xAF4]) = -1658682464;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10036B0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x1A38] + 52);
  STACK[0x18C8] = STACK[0x13E0];
  LODWORD(STACK[0x1E9C]) = v5 + v4 - ((((v3 + 424916721) & 0xE6AC3F57) + 1814703234) & (2 * v5));
  LODWORD(STACK[0xAF4]) = -1658682453;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10036B198@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x28F8] = v2;
  STACK[0x840] = v3;
  STACK[0x8C8] = 0;
  STACK[0x1640] = 0x1CFA749F6EA60FB3;
  return (*(a1 + 8 * (((v4 == 0x5169BC75931DF3BBLL) * ((a2 + 4449) ^ (a2 + 4470))) ^ a2)))();
}

uint64_t sub_10036B204@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(v2 - 0x5169BC75931DF3A3) - 0x4006AC5B2C7AAA0;
  v4 = *(v2 - 0x5169BC75931DF3ABLL) - 0x73A458C94D48966FLL;
  v5 = v3 < 0x7648F61A;
  v6 = v3 > v4;
  v7 = v5 ^ (v4 < ((a2 - 569993712) & 0x21F96CD7) + 1984481610);
  v8 = v6;
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  return (*(a1 + 8 * ((4483 * v9) ^ (a2 + 23))))();
}

uint64_t sub_10036B2D0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = (v3 + 1624455983) & 0x9F2C9BD6;
  STACK[0x1640] = a2 - v2 - ((v4 + 14216 + 2 * (a2 - v2) + 0x1F47DC0735019C40) & 0x39F4E93EDD4C1F66) - 0x73619D5CF6D9047ELL;
  v5 = (*(a1 + 8 * (v3 + 7558)))((a2 - v2 - ((v4 + 14216 + 2 * (a2 - v2) + 889297984) & 0xDD4C1F66) + 153549698) ^ 0x6EA60FB3);
  v6 = STACK[0x7B8];
  STACK[0x8C8] = v5;
  return (*(v6 + 8 * ((2 * (v5 != 0)) | (8 * (v5 != 0)) | v3)))();
}

uint64_t sub_10036B44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x2090] = STACK[0x1450];
  LODWORD(STACK[0x1324]) = STACK[0x1514];
  LODWORD(STACK[0x207C]) = -1418238986;
  return (*(a3 + 8 * ((27033 * (v3 > ((v3 - 928869799) & 0xE6CCBF5F) + 1548511242)) ^ (v3 - 1351664205))))();
}

uint64_t sub_10036B4FC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = (a2 - 325560185) & 0x1367BB7E;
  v3 = (*(a1 + 8 * (v2 ^ 0x710Du)))();
  v4 = STACK[0x7B8];
  STACK[0x1450] = 0;
  return (*(v4 + 8 * (v2 - 5126)))(v3);
}

uint64_t sub_10036B5D4@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  STACK[0xA80] = STACK[0x2090];
  STACK[0x8B0] = (LODWORD(STACK[0x1324]) ^ v2) - (((a2 ^ 0x35E2) + 4068867518) & (2 * (LODWORD(STACK[0x1324]) ^ v2))) + 0xDE0AC9F79431C8ELL;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_10036B658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 + 3829)))();
  v6 = STACK[0x7B8];
  *(v3 + 32) = 0;
  return (*(v6 + 8 * (v4 - 1200)))(v5);
}

uint64_t sub_10036B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0x710D)))();
  v6 = STACK[0x7B8];
  *(v3 + 16) = 0;
  return (*(v6 + 8 * (v4 + 1463)))(v5);
}

uint64_t sub_10036B700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v4 + 3829)))();
  v7 = STACK[0x7B8];
  *(v3 + 48) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_10036B970@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X3>, unsigned int a4@<W4>, uint64_t a5@<X8>)
{
  v10 = v8 + 56 * a4;
  *(v10 + 8 * a5 + 24) = a3;
  *(v10 + 4 * a5 + 4) = a1;
  *(v5 + v7) = a5 + v6 + a2 - 93;
  return (*(v9 + 8 * v6))();
}

uint64_t sub_10036BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x17D0] - 0x4120F47AB517FA21);
  v5 = *(STACK[0x17D0] - 0x4120F47AB517F659);
  STACK[0x1BC0] = STACK[0xA60];
  LODWORD(STACK[0x20F4]) = 1453479097;
  LODWORD(STACK[0x1A04]) = -1513609819;
  STACK[0x8F8] = v4;
  LODWORD(STACK[0x13C4]) = v5;
  LODWORD(STACK[0xCA8]) = 1904880544;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10036C0F0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(v2 - 0x270676553BF336B9);
  STACK[0x1550] = v3;
  return (*(a1 + 8 * ((215 * (((v3 == 0xAB5C364D9808152) ^ (a2 - 1)) & 1)) ^ a2)))();
}

uint64_t sub_10036C1C4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = a2 + 3052;
  v3 = (*(a1 + 8 * (a2 + 11834)))(32);
  v4 = STACK[0x7B8];
  STACK[0x1540] = v3 + 0x4761F68478C333F5;
  return (*(v4 + 8 * (((v3 == 0) * (((v2 ^ 0x38B5) + 4143) ^ v2 ^ 0x8E2)) ^ v2)))();
}

uint64_t sub_10036C250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  *(a1 + 16) = 419260803;
  v5 = (*(a3 + 8 * (v3 + 14745)))(37);
  v6 = STACK[0x7B8];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((v3 ^ 0x2BE3) - 15086)) ^ v3)))();
}

uint64_t sub_10036C3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1690];
  v5 = *(STACK[0x1690] - 0x4761F68478C333EDLL);
  v6 = STACK[0x1540];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * (((v5 == 0x4761F68478C333F5) * (((v3 + 1181022658) & 0x399AF7FB ^ 0xFFFFEC3B) + 43 * (v3 ^ 0x1564))) ^ v3)))();
}

uint64_t sub_10036C67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 6682)))();
  v5 = STACK[0x7B8];
  *(STACK[0x1690] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10036C740@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x5A96)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0x1690] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0x1F3C]) == ((v2 - 4091) | 0x2020) - 1418247412) * (149 * (v2 ^ 0x10A3) - 6225)) ^ v2)))(v3);
}

uint64_t sub_10036C88C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(v5 - 0x4761F68478C333F5) = v3;
  *(v3 - 0x4761F68478C333EDLL) = *(a2 + v2);
  *(a2 + v2) = v3;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_10036C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 ^ 0x6AB9)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10036CA04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + v2) = v3;
  *(a2 - 0xAB5C364D9808152) = v3;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_10036CAF4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(v2 - 0x270676553BF336B9);
  STACK[0x1210] = v3;
  return (*(a1 + 8 * (((2 * (((v3 == 0xAB5C364D9808152) ^ (14 * (a2 ^ 0x82) - 1)) & 1)) & 0xEF | (16 * (((v3 == 0xAB5C364D9808152) ^ (14 * (a2 ^ 0x82) - 1)) & 1))) ^ (14 * (a2 ^ 0x2B82)))))();
}

uint64_t sub_10036CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x6054u)))(32);
  v5 = STACK[0x7B8];
  STACK[0x1348] = v4 + 0x4761F68478C333F5;
  return (*(v5 + 8 * (((v4 != 0) * ((v3 - 5037) ^ 0x1641)) | v3)))();
}

uint64_t sub_10036CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 - 256) | 0x609;
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  *(a1 + 16) = 419260815;
  v6 = (*(a3 + 8 * (v5 ^ 0x655D)))(49);
  v7 = STACK[0x7B8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((29 * (((((v5 ^ 0x6D16) - 16743) ^ (v6 == 0)) & 1) == 0)) ^ v5)))();
}

uint64_t sub_10036CE88@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + v2) = v3;
  *(a2 - 0xAB5C364D9808152) = v3;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_10036CEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1B90];
  v5 = *(STACK[0x1B90] - 0x4761F68478C333EDLL);
  v6 = STACK[0x1348];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * (((v5 == 0x4761F68478C333F5) * ((v3 ^ 0x2BBA) - 14097 + 6 * (v3 ^ 0x2BBA))) | v3)))();
}

uint64_t sub_10036D188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ (v3 + 2921))))();
  v6 = STACK[0x7B8];
  *(STACK[0x1B90] - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * (((((v4 + 1823029417) & 0x62BA7FFD) - 3298) * (v4 < 0x697D09A0)) ^ (v4 - 815554768))))(v5);
}

uint64_t sub_10036D268@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 15136)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0x1B90] = 0x4761F68478C333F5;
  return (*(v4 + 8 * ((7459 * (LODWORD(STACK[0x1284]) == ((v2 + 921446604) & 0xC913DE55) - 1418244703)) ^ v2)))(v3);
}

uint64_t sub_10036D368@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = a2 | 0x604;
  v4 = (*(a1 + 8 * ((a2 | 0x604) + 17423)))();
  v5 = STACK[0x7B8];
  *(v2 - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10036D468@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(v5 - 0x4761F68478C333F5) = v4;
  *(v4 - 0x4761F68478C333EDLL) = *(a2 + v3);
  *(a2 + v3) = v4;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10036D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x24EC]) = *(STACK[0x17D0] - 0x4120F47AB517F655);
  return (*(a3 + 8 * (((v4 != 0x270676553BF336C1) * (((v3 - 12863) ^ 0x37BE) - 15109)) ^ v3)))();
}

uint64_t sub_10036D574@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(v2 - 0x270676553BF336B9);
  STACK[0xD38] = v3;
  return (*(a1 + 8 * ((26 * ((((a2 + 223194878) ^ (v3 == 0xAB5C364D9808152)) & 1) == 0)) | a2)))();
}

uint64_t sub_10036D5E0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1950] = v2;
  v7 = v3 != 0xAB5C364D9808152 && (v4 ^ (v5 - 1)) < ((1721 * ((a2 - 1081117922) & 0x4070BB5F ^ 0x3B5C)) ^ 0xFFFFF284);
  return (*(a1 + 8 * ((16044 * v7) ^ a2)))();
}

uint64_t sub_10036D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 15588)))(32);
  v5 = STACK[0x7B8];
  STACK[0xD70] = v4 + 0x4761F68478C333F5;
  return (*(v5 + 8 * (((v4 != 0) * (v3 - 3262)) ^ v3)))();
}

uint64_t sub_10036D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 - 2014156419) & 0x780DAB96;
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v7 = v3 ^ 0xB6151DCB;
  STACK[0x24F0] = v7;
  LODWORD(v7) = ((v7 + 10) ^ 0x5FFFEDFE) - 1191347360 + (((v7 + 10) << ((((v4 + 125) & 0x96) - 34) ^ (((v4 + 125) & 0x96) - 33))) & 0xBFFFDBFC);
  *(a1 + 16) = v7;
  v8 = (*(a3 + 8 * (v6 + 10192)))((v7 - 419260766));
  v9 = STACK[0x7B8];
  *(a1 + 24) = v8;
  return (*(v9 + 8 * ((95 * (v8 != 0)) ^ v6)))();
}

uint64_t sub_10036D874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1FF0];
  v5 = *(STACK[0x1FF0] - 0x4761F68478C333EDLL);
  v6 = STACK[0xD70];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * ((122 * (v5 != 0x4761F68478C333F5)) ^ v3)))();
}

uint64_t sub_10036DB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 12664)))();
  v5 = STACK[0x7B8];
  *(STACK[0x1FF0] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * (v3 + 4510)))(v4);
}

uint64_t sub_10036DBE4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0xAB7729A5)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0x1FF0] = 0x4761F68478C333F5;
  return (*(v4 + 8 * ((19838 * (((v2 + 43) ^ (((LODWORD(STACK[0x161C]) - v2) | (v2 - LODWORD(STACK[0x161C]))) < 0)) & 1)) ^ (v2 + 1418242428))))(v3);
}

uint64_t sub_10036DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 + 12526)))();
  v6 = STACK[0x7B8];
  *(v3 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * (v4 + 2337)))(v5);
}

uint64_t sub_10036DE70@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *(v4 - 0x4761F68478C333F5) = v2;
  *(v2 - 0x4761F68478C333EDLL) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10036DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x24FC]) = *(STACK[0x17D0] - 0x4120F47AB517F651);
  return (*(a3 + 8 * ((481 * (((v4 == 0x270676553BF336C1) ^ (((v3 + 26) & 0x5F) + 79)) & 1)) ^ v3)))();
}

uint64_t sub_10036E088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x270676553BF336B9);
  STACK[0x1068] = v5;
  return (*(a3 + 8 * ((27 * (((v5 == 0xAB5C364D9808152) ^ (((v3 + 87) | 0x5A) - 119)) & 1)) ^ v3)))();
}

uint64_t sub_10036E0F0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0xDA0] = a2;
  v6 = v3 != 0xAB5C364D9808152 && v4 < 0xFFFFFFF6;
  return (*(a1 + 8 * (((((v2 + 367) | 0x2808) - 6704) * v6) ^ v2)))();
}

uint64_t sub_10036E138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * ((v3 - 2786) ^ 0x7A2A)))(32);
  v5 = STACK[0x7B8];
  STACK[0x10B8] = v4 + 0x4761F68478C333F5;
  return (*(v5 + 8 * (((v4 == 0) * (((156 * ((v3 - 2786) ^ 0x3044)) ^ 0xFFFFEFBE) + 24 * ((v3 - 2786) ^ 0x325F))) ^ (v3 - 2786))))();
}

uint64_t sub_10036E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  STACK[0x2500] = v3;
  *(a1 + 16) = ((v4 - 6627) ^ 0x18FD700D) + v3;
  v6 = (*(a3 + 8 * (v4 + 5902)))((v3 + 10));
  v7 = STACK[0x7B8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((2 * (((v4 - 1) ^ (v6 == 0)) & 1)) & 0xEF | (16 * (((v4 - 1) ^ (v6 == 0)) & 1))) ^ v4)))();
}

uint64_t sub_10036E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1668];
  v5 = *(STACK[0x1668] - 0x4761F68478C333EDLL);
  v6 = STACK[0x10B8];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * (((v5 == 0x4761F68478C333F5) * ((v3 + 31) ^ 0x4E ^ (16 * (v3 ^ 0x261F)))) ^ v3)))();
}

uint64_t sub_10036E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 4154)))();
  v5 = STACK[0x7B8];
  *(STACK[0x1668] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10036E7A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 12079)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0x1668] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0xC60]) == (v2 ^ 0x3904) - 1418247722) * ((v2 - 1471078213) & 0x57AEFF7E ^ 0x1C60)) ^ v2)))(v3);
}

uint64_t sub_10036E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 ^ 0x6873)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10036E944@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *(v4 - 0x4761F68478C333F5) = v2;
  *(v2 - 0x4761F68478C333EDLL) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10036E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x250C]) = *(STACK[0x17D0] - 0x4120F47AB517F64DLL);
  return (*(a3 + 8 * (((v4 != 0x270676553BF336C1) * (v3 - 15147)) ^ (v3 - 9486))))();
}

uint64_t sub_10036EA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 0x270676553BF336B9);
  STACK[0x1EA0] = v5;
  return (*(a3 + 8 * (((v5 == 0xAB5C364D9808152) * (((v4 - 15182) ^ 0x3B4E) + ((v4 - 15182) | 0x90A) - 17473)) ^ (v4 - 6020))))();
}

uint64_t sub_10036EA9C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0xC68] = a2;
  v6 = v3 != 0xAB5C364D9808152 && v4 < 0xFFFFFFF6;
  return (*(a1 + 8 * ((((((v2 + 6702) | 0x1816) + 2615) ^ 0xEF7) * v6) ^ v2)))();
}

uint64_t sub_10036EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 1217)))(32);
  v5 = STACK[0x7B8];
  STACK[0x1188] = v4 + 0x4761F68478C333F5;
  return (*(v5 + 8 * (((v4 == 0) * ((v3 ^ 0x42E0) - 1901)) | v3)))();
}

uint64_t sub_10036EB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4 + 2183;
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  STACK[0x2510] = v3;
  *(a1 + 16) = v3 + 419260776;
  v7 = (*(a3 + 8 * (v6 ^ 0x45AA)))((v3 + 10));
  v8 = STACK[0x7B8];
  *(a1 + 24) = v7;
  return (*(v8 + 8 * (((v7 != 0) * ((2 * ((v6 - 564385287) & 0x21A3DF6F ^ 0x190F)) ^ 0x1F1B)) ^ v6)))();
}

uint64_t sub_10036ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA88];
  v5 = *(STACK[0xA88] - 0x4761F68478C333EDLL);
  v6 = STACK[0x1188];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * (((v5 == 0x4761F68478C333F5) * ((v3 ^ 0x1C) - 11105 + ((v3 + 1340213661) & 0xB01DF77F))) ^ v3)))();
}

uint64_t sub_10036EF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 11814)))();
  v5 = STACK[0x7B8];
  *(STACK[0xA88] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10036F028@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2 - 15363;
  v4 = (*(a1 + 8 * (v3 + 16705)))(a2 - 0x4761F68478C333F5);
  v5 = STACK[0x7B8];
  STACK[0xA88] = 0x4761F68478C333F5;
  return (*(v5 + 8 * (((LODWORD(STACK[0x1CA4]) != -1418238986) * (((v3 + 10568) | 0x904) - 15149)) ^ v3)))(v4);
}

uint64_t sub_10036F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 17108)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10036F2A8@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *(v4 - 0x4761F68478C333F5) = v2;
  *(v2 - 0x4761F68478C333EDLL) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10036F2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x251C]) = *(STACK[0x17D0] - 0x4120F47AB517F649);
  return (*(a3 + 8 * (((v4 == 0x270676553BF336C1) * (((v3 + 120799833) & 0xF8CCB7ED) - 13526)) ^ (v3 - 7414))))();
}

uint64_t sub_10036F394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x270676553BF336B9);
  STACK[0x1FE0] = v5;
  return (*(a3 + 8 * (((v5 == 0xAB5C364D9808152) * ((((v3 - 12643) | 0x19) + 14083) ^ 0x3B47)) ^ v3)))();
}

uint64_t sub_10036F3F8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0xD58] = a2;
  v6 = v3 != 0xAB5C364D9808152 && v4 < ((v2 - 16307) ^ v2 ^ 0x3F05u);
  return (*(a1 + 8 * ((3365 * v6) ^ v2)))();
}

uint64_t sub_10036F444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 9127;
  v5 = (*(a3 + 8 * (v3 + 17915)))(32);
  v6 = STACK[0x7B8];
  STACK[0x14D8] = v5 + 0x4761F68478C333F5;
  return (*(v6 + 8 * (((v5 != 0) * ((4451 * (v4 ^ 0x2801)) ^ 0x3474)) ^ v4)))();
}

uint64_t sub_10036F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  STACK[0x2520] = v3;
  *(a1 + 16) = v3 + 419260776;
  v6 = (*(a3 + 8 * (v4 ^ 0x7E7F)))((v3 + 10));
  v7 = STACK[0x7B8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 == 0) * (((v4 ^ 0xF77) - 8697) ^ 0x1972)) ^ v4)))();
}

uint64_t sub_10036F73C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = a2 + 3232;
  v3 = STACK[0xA20];
  v4 = *(STACK[0xA20] - 0x4761F68478C333EDLL);
  v5 = STACK[0x14D8];
  *(v5 - 0x4761F68478C333EDLL) = v4;
  *(v5 - 0x4761F68478C333F5) = *(v3 - 0x4761F68478C333F5);
  return (*(a1 + 8 * (((v4 != 0x4761F68478C333F5) * (v2 - 9363)) ^ v2)))();
}

uint64_t sub_10036F9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 | 0x4213)))();
  v5 = STACK[0x7B8];
  *(STACK[0xA20] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10036FA94@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x5254)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0xA20] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0xEC4]) == ((3 * (v2 ^ 0x14E0)) ^ 0xAB774543)) * (((v2 ^ 0x14E0) + 11895) ^ 0xAF9)) ^ v2)))(v3);
}

uint64_t sub_10036FB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 ^ 0x6CE6)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10036FC20@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *(v4 - 0x4761F68478C333F5) = v2;
  *(v2 - 0x4761F68478C333EDLL) = *a2;
  return (*(a1 + 8 * (v3 ^ 0x1234DC3A)))();
}

uint64_t sub_10036FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x252C]) = *(STACK[0x17D0] - 0x4120F47AB517F645);
  return (*(a3 + 8 * (((v4 == 0x270676553BF336C1) * ((v3 + 2276) ^ 0x446D)) ^ (v3 - 11202))))();
}

uint64_t sub_10036FD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x270676553BF336B9);
  STACK[0x1318] = v5;
  return (*(a3 + 8 * (((2 * (v5 != 0xAB5C364D9808152)) | (32 * (v5 != 0xAB5C364D9808152))) ^ v3)))();
}

uint64_t sub_10036FD5C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x16B0] = a2;
  v6 = v2 != 0xAB5C364D9808152 && v3 < (((v4 ^ 0x2D0E) + 9486) ^ 0xFFFFC8BE ^ ((v4 ^ 0x2D0E) - 1997600794) & 0x7710EDDF);
  return (*(a1 + 8 * ((11818 * v6) ^ v4 ^ 0x2D0E)))();
}

uint64_t sub_10036FDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 15936)))(32);
  v5 = STACK[0x7B8];
  STACK[0x17E8] = v4 + 0x4761F68478C333F5;
  return (*(v5 + 8 * (((v4 == 0) * (((v3 - 552119319) & 0x20E8E426) + (v3 ^ 0xFFFFB7F3))) ^ v3)))();
}

uint64_t sub_10036FE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  STACK[0x2530] = v3;
  *(a1 + 16) = ((591 * (v4 ^ 0x442D)) ^ 0x18FD700D) + v3;
  v6 = (*(a3 + 8 * (v4 + 1584)))((v3 + 10));
  v7 = STACK[0x7B8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((19 * ((((v4 - 2248) ^ (v6 == 0)) & 1) == 0)) ^ v4)))();
}

uint64_t sub_10036FFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x820];
  v5 = *(STACK[0x820] - 0x4761F68478C333EDLL);
  v6 = STACK[0x17E8];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * (((v5 != 0x4761F68478C333F5) * (((v3 - 2127) | 0x4800) ^ 0x4988)) ^ v3)))();
}

uint64_t sub_100370270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x5B23)))();
  v5 = STACK[0x7B8];
  *(STACK[0x820] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_100370308@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x464E)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0x820] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0x1634]) == (v2 ^ 0xAB776FEB)) * ((6 * (v2 ^ 0x5F8)) ^ 0x262F)) ^ v2)))(v3);
}

uint64_t sub_1003704C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 8167)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10037056C@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *(v4 - 0x4761F68478C333F5) = v2;
  *(v2 - 0x4761F68478C333EDLL) = *a2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_1003705D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x253C]) = *(STACK[0x17D0] - 0x4120F47AB517F641);
  return (*(a3 + 8 * (((v4 == 0x270676553BF336C1) * ((719 * (v3 ^ 0x3B4B)) ^ 0x3A8E)) ^ (v3 + 2002))))();
}

uint64_t sub_100370660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x270676553BF336B9);
  STACK[0x2100] = v5;
  return (*(a3 + 8 * (((v5 == 0xAB5C364D9808152) * ((v3 + 99) ^ 0x2CF5 ^ ((v3 - 13483) | 0x1000))) ^ v3)))();
}

uint64_t sub_1003706C0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x16E8] = a2;
  v6 = v3 != 0xAB5C364D9808152 && v4 < v2 - 5722;
  return (*(a1 + 8 * ((v6 * (17 * (v2 ^ 0x17FF) + 6912)) ^ v2)))();
}

uint64_t sub_100370718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 11703)))(32);
  v5 = STACK[0x7B8];
  STACK[0xD20] = v4 + 0x4761F68478C333F5;
  return (*(v5 + 8 * (((v4 == 0) * (((v3 - 7069) | 0x4490) - 17773)) ^ v3)))();
}

uint64_t sub_1003707A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  STACK[0x2540] = v3;
  *(a1 + 16) = (((v4 ^ 0x7ECC) - 8697) ^ 0x18FD700D) + v3;
  v6 = (*(a3 + 8 * (v4 + 1220)))((v3 + 10));
  v7 = STACK[0x7B8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (v4 | (4 * (v6 == 0)))))();
}

uint64_t sub_100370900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1E10];
  v5 = *(STACK[0x1E10] - 0x4761F68478C333EDLL);
  v6 = STACK[0xD20];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(a3 + 8 * (((v5 == 0x4761F68478C333F5) * (((v3 + 1197425278) & 0xB8A09F3D) + ((v3 + 4920) ^ 0xFFFFAE71))) ^ v3)))();
}

uint64_t sub_100370B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x6E69)))();
  v5 = STACK[0x7B8];
  *(STACK[0x1E10] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_100370C18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 11673)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x7B8];
  STACK[0x1E10] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0xC0C]) == ((17 * (v2 ^ 0x1FCB)) ^ 0xAB775977)) * (((v2 - 1694941) & 0xD4DDE3EF) + 725356180)) ^ v2)))(v3);
}

uint64_t sub_100370D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v6 - 0x4761F68478C333F5) = v4;
  *(v4 - 0x4761F68478C333EDLL) = *v3;
  return (*(a3 + 8 * v5))();
}

uint64_t sub_100370E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 ^ 0x6598)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_100370F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x17D0] - 0x4120F47AB517F9E9);
  v5 = *(STACK[0x17D0] - 0x4120F47AB517F63DLL);
  STACK[0x1BC0] = STACK[0xA60];
  LODWORD(STACK[0x20F4]) = 1453479097;
  LODWORD(STACK[0x1A04]) = -878335835;
  STACK[0x8F8] = v4;
  LODWORD(STACK[0x13C4]) = v5;
  LODWORD(STACK[0xCA8]) = -715091061;
  return (*(a3 + 8 * ((6946 * (v3 == -1156016997)) ^ (v3 + 725341808 + v3 + 725347069))))();
}

uint64_t sub_100371118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x17D0] - 0x4120F47AB517F9E1);
  v5 = *(STACK[0x17D0] - 0x4120F47AB517F635);
  STACK[0x1BC0] = STACK[0xA60];
  LODWORD(STACK[0x20F4]) = 1453479097;
  LODWORD(STACK[0x1A04]) = 616579796;
  STACK[0x8F8] = v4;
  LODWORD(STACK[0x13C4]) = v5;
  LODWORD(STACK[0xCA8]) = 959904630;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003711E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x17D0] - 0x4120F47AB517F9D9);
  v5 = *(STACK[0x17D0] - 0x4120F47AB517F631);
  STACK[0x1BC0] = STACK[0xA60];
  LODWORD(STACK[0x20F4]) = 1453479097;
  LODWORD(STACK[0x1A04]) = 805768635;
  STACK[0x8F8] = v4;
  LODWORD(STACK[0x13C4]) = v5;
  LODWORD(STACK[0xCA8]) = -1660066975;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100371644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xA60];
  LODWORD(STACK[0x254C]) = *(STACK[0x17D0] - 0x4120F47AB517F619);
  return (*(a3 + 8 * (((v4 != 0x270676553BF336C1) * ((v3 - 2268) ^ 0xAE6)) ^ v3)))();
}

uint64_t sub_1003716D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x270676553BF336B9);
  STACK[0x1400] = v5;
  return (*(a3 + 8 * (((((541 * (v3 ^ 0x91A) + 1677908881) & 0x9BFD3BDF) - 15181) * (v5 == 0xAB5C364D9808152)) ^ v3)))();
}

uint64_t sub_100371744@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0xEA0] = a2;
  v7 = v3 != 0xAB5C364D9808152 && (v4 ^ (v5 - 1)) < (((v2 - 6565) | 0x3116) ^ 0xFFFFC4A8);
  return (*(a1 + 8 * ((v7 * (v2 - 4874)) ^ v2)))();
}

uint64_t sub_1003717A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 - 534;
  v5 = (v3 - 8941) | 0x2231;
  v6 = v3 - 3183;
  v7 = (*(a3 + 8 * ((v3 - 534) ^ 0x6B81)))(32);
  v8 = STACK[0x7B8];
  STACK[0x1500] = v7 + 0x4761F68478C333F5;
  return (*(v8 + 8 * (((v7 != 0) * (v5 + (v6 ^ 0xFFFFCB81))) ^ v4)))();
}

uint64_t sub_100371824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v6 = v3 ^ 0xB6151DCB;
  STACK[0x2550] = v6;
  LODWORD(v6) = ((v6 + 10) ^ 0x5BFD6BDE) + ((2 * (v6 + 10)) & 0xB7FAD7BC) + ((v4 - 2572) | 0x40) - 1124080613;
  *(a1 + 16) = v6;
  v7 = (*(a3 + 8 * (v4 ^ 0x6967)))((v6 - 419260766));
  v8 = STACK[0x7B8];
  *(a1 + 24) = v7;
  return (*(v8 + 8 * ((99 * (v7 == 0)) ^ v4)))();
}

uint64_t sub_100371C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x20E0];
  v5 = *(STACK[0x20E0] - 0x4761F68478C333EDLL);
  v6 = STACK[0x1500];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 + a2) = *(v4 + a2);
  return (*(a3 + 8 * (((v5 == 0x4761F68478C333F5) * (((v3 + 853754059) | 0x41149048) - 1945629890)) ^ v3)))();
}

uint64_t sub_100371ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x5F57)))();
  v5 = STACK[0x7B8];
  *(STACK[0x20E0] - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4, 0xB89E097B873CCC0BLL);
}

uint64_t sub_100371F80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 8 * (v3 + 10364)))(a3 + a1);
  v5 = STACK[0x7B8];
  STACK[0x20E0] = 0x4761F68478C333F5;
  return (*(v5 + 8 * (((LODWORD(STACK[0x2154]) == (v3 ^ 0xAB774221)) * (((v3 - 8287) | 0x1606) + 20031)) ^ v3)))(v4);
}

uint64_t sub_100372060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 12957)))();
  v6 = STACK[0x7B8];
  *(v4 - 0x4761F68478C333DDLL) = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_100372148@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(v5 + a1) = v3;
  *(v3 - 0x4761F68478C333EDLL) = *a3;
  return (*(a2 + 8 * v4))();
}

uint64_t sub_10037226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xB60];
  v5 = STACK[0x107C];
  STACK[0x1BC0] = STACK[0xA60];
  LODWORD(STACK[0x20F4]) = 1453479097;
  LODWORD(STACK[0x1A04]) = 660892762;
  STACK[0x8F8] = v4;
  LODWORD(STACK[0x13C4]) = v5;
  LODWORD(STACK[0xCA8]) = 14928716;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003723B0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x13B8] = *(a1 + 8 * v5);
  STACK[0x1F50] = v4;
  STACK[0x1DF8] = a2;
  STACK[0x1228] = v2;
  STACK[0x1B08] = 0;
  LODWORD(STACK[0x1A44]) = 0;
  STACK[0xE50] = 0x270676553BF336C1;
  return (*(a1 + 8 * (((a2 == 0x63F1152E8C988102) * (((v3 - 1289) | 0x2A4A) - 15140)) ^ v3)))();
}

uint64_t sub_1003724C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1538];
  v5 = STACK[0x1574];
  STACK[0x1BC0] = STACK[0xA60];
  LODWORD(STACK[0x20F4]) = 1453479097;
  LODWORD(STACK[0x1A04]) = 264681904;
  STACK[0x8F8] = v4;
  LODWORD(STACK[0x13C4]) = v5;
  LODWORD(STACK[0xCA8]) = 1689924407;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003725B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x14FC]) = v4;
  STACK[0x1C08] = *(a3 + 8 * (v3 - 13911));
  return (*(a3 + 8 * (((v3 + 98333857) & 0xFA2377F7 ^ 0x299A) + v3 - 13911)))(1141409555);
}

uint64_t sub_100372644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))();
  v5 = STACK[0x7B8];
  STACK[0xB60] = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_100372698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 3399;
  v4 = (*(a3 + 8 * (STACK[0x798] ^ 0x710D)))();
  return (*(STACK[0x7B8] + 8 * v3))(v4);
}

uint64_t sub_1003726C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0x798] + 771822595) & 0xD1FEBFFF;
  v4 = STACK[0x798] + 2045;
  v5 = STACK[0x14FC];
  STACK[0x1340] -= 800;
  return (*(a3 + 8 * (((v5 == -1418238986) * (v3 ^ 0xBB2)) ^ v4)))();
}

uint64_t sub_1003727CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8 * v3);
  v6 = 1751014823 * ((~(v4 - 232) & 0xAFBC0E65945A13B5 | (v4 - 232) & 0x5043F19A6BA5EC4ALL) ^ 0x2D7815BBC1A94C22);
  *(v4 - 208) = STACK[0x638];
  *(v4 - 200) = v3 - v6 - 1660721863;
  v7 = v5 - v6;
  v8 = STACK[0x5D8];
  *(v4 - 232) = v7;
  *(v4 - 224) = v8;
  v9 = (*(a3 + 8 * (v3 + 17437)))(v4 - 232);
  return (*(STACK[0x7B8] + 8 * ((11750 * (*(v4 - 216) == -1418238986)) ^ ((((v3 + 4089) | 0x3A) ^ 0x573) + v3))))(v9);
}

uint64_t sub_10037299C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x798] - 3318;
  LODWORD(STACK[0x1BA4]) = v3;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_100372A08@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x5AB679E9A06C14EALL) = 320605868;
  v2 = STACK[0x7B8];
  STACK[0x1A10] = *(STACK[0x7B8] + 8 * a1);
  return (*(v2 + 8 * ((((a1 + 16260) | 0x182) ^ 0x4579) + a1)))();
}

uint64_t sub_100372AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 ^ 0x5418)))(1040);
  STACK[0xD08] = v5 + 0x4120F47AB517FA21;
  return (*(a3 + 8 * (v3 ^ (16 * (v5 != 0)))))();
}

uint64_t sub_100372B20()
{
  v1 = STACK[0x7B8];
  STACK[0x1A88] = *(STACK[0x7B8] + 8 * (v0 | 0x122));
  return (*(v1 + 22808))(1141409555);
}

uint64_t sub_100372D88@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x880];
  STACK[0x7F0] = STACK[0x880];
  return (*(a1 + 8 * (((v2 == 0x270676553BF336C1) * (((a2 - 4723) | 0x1944) ^ (a2 + 1667))) ^ a2)))();
}

uint64_t sub_100372DDC@<X0>(int a1@<W8>)
{
  v2 = a1 + 2356;
  v3 = *(v1 - 0x270676553BF336B9);
  STACK[0x1920] = 0;
  return (*(STACK[0x7B8] + 8 * ((22 * (v3 != 0xAB5C364D9808152)) | v2)))();
}

uint64_t sub_100372E30@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x9C8] = 0x4761F68478C333F5;
  STACK[0xE18] = 0x3AC3EC4A20C0EE42;
  return (*(a1 + 8 * ((((((v2 - 9649) | 0x241) - 4903) ^ 0x3C73 ^ (((v2 - 9649) | 0x241) + 1556161965) & 0xA33EFB5F) * (a2 == v3)) ^ ((v2 - 9649) | 0x241))))();
}

uint64_t sub_100372EB8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -305882243;
  STACK[0x18E0] = a36;
  LODWORD(STACK[0x7D4]) = 1681584390;
  return (*(a1 + 8 * v36))(1141409555);
}

uint64_t sub_100372F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x9C8] - 0x4761F68478C333DDLL);
  STACK[0x1860] = v4;
  return (*(a3 + 8 * (((v4 == 0) * ((((v3 + 1748140315) & 0x97CD54DF) + 9880) ^ v3 ^ 0x58D)) ^ v3)))();
}

uint64_t sub_100372FF4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < ((6 * (((a2 - 5254) | 0x331) ^ 0xA9C)) ^ 0x18FD5200u)) << 32)) + 0x35D5A1C936398009;
  STACK[0x2558] = v3;
  v4 = STACK[0xE18];
  STACK[0x2560] = STACK[0xE18];
  return (*(a1 + 8 * ((3074 * (v3 - v4 + 0x4EE4A80D18A04D1 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_1003730E8()
{
  v0 = STACK[0x798] - 8793;
  STACK[0xD88] = STACK[0x2568];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_10037316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xD88] = 0;
  LODWORD(STACK[0x11E4]) = v4;
  return (*(a3 + 8 * (v3 - 7872)))();
}

uint64_t sub_1003731A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 - 0x270676553BF336C1);
  STACK[0x1C88] = 0;
  return (*(a3 + 8 * (((v6 != v5) * (v3 - 12687)) ^ v3)))();
}

uint64_t sub_1003731FC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x17E0] = 0x4761F68478C333F5;
  STACK[0xA70] = 0x2B6CBB625A1BFC41;
  return (*(STACK[0x7B8] + 8 * (((((a1 == 0xAB5C364D9808152) ^ (v1 - 38)) & 1) * ((v1 + 281955758) & 0xEF31BB5E ^ 0x3B54)) ^ (v1 - 2860))))();
}

uint64_t sub_100373294@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -305882243;
  STACK[0x18E0] = a48;
  LODWORD(STACK[0x7D4]) = 1681584437;
  return (*(a1 + 8 * ((2376 * (v48 >= (((v48 - 123624955) | 0x380A) ^ 0x8D42E120))) ^ (v48 - 123623425))))(1141409555);
}

uint64_t sub_10037337C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0x17E0] - 0x4761F68478C333DDLL);
  STACK[0x1958] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((((a2 - 254696048) & 0xF2E7F5F) - 723) ^ 0x3888)) | (a2 + 6142))))();
}

uint64_t sub_1003733FC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = v2 + ((a2 - 6205) | 0x1B10u) + ((v2 < ((a2 - 3447) | 0x104Au) + 419245568) << 32) + 0x6890D9E4F10A2F47;
  STACK[0x2578] = v3;
  v4 = STACK[0xA70];
  STACK[0x2580] = STACK[0xA70];
  return (*(a1 + 8 * ((29324 * (v3 - v4 - 0x3D241E82AFEBD7CCLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_1003734D4()
{
  v0 = STACK[0x798] - 7587;
  STACK[0xD88] = STACK[0x2588];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_10037355C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x880];
  STACK[0x2108] = STACK[0x880];
  return (*(a1 + 8 * (((v2 == 0x270676553BF336C1) * (((a2 - 857) | 0xA00) + ((a2 + 4564) ^ 0xFFFF8269))) ^ a2)))();
}

uint64_t sub_1003735B8()
{
  v2 = *(v0 - 0x270676553BF336B9);
  STACK[0xF20] = 0;
  return (*(STACK[0x7B8] + 8 * (((v2 == 0xAB5C364D9808152) * (((v1 - 16235) | 0x4001) - 18126)) ^ v1)))();
}

uint64_t sub_100373618@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1870] = 0x4761F68478C333F5;
  STACK[0x1560] = 0x38A051E40A9F4105;
  return (*(a1 + 8 * ((((v2 - 1014) ^ 0x45B6 ^ (v2 - 1392076444) & 0x52F9273A) * (a2 == 0xAB5C364D9808152)) ^ (v2 - 1014))))();
}

uint64_t sub_1003736A4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 2122972197;
  STACK[0x18E0] = a19;
  LODWORD(STACK[0x7D4]) = 1681584389;
  return (*(a1 + 8 * v19))(1141409555);
}

uint64_t sub_10037371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xD88] = 0;
  LODWORD(STACK[0x11E4]) = v4;
  return (*(a3 + 8 * (v3 - 6448)))();
}

uint64_t sub_100373774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 13428;
  v5 = v3 - 57;
  v6 = *(STACK[0x1870] - 0x4761F68478C333DDLL);
  STACK[0xD60] = v6;
  return (*(a3 + 8 * ((58 * (((v6 == 0) ^ v5) & 1)) ^ v4)))();
}

uint64_t sub_1003737F0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x5D41CF20227A6B46 + ((a2 + 834877372) & 0x4E3CBB7E);
  STACK[0x2598] = v3;
  v4 = STACK[0x1560];
  STACK[0x25A0] = STACK[0x1560];
  return (*(a1 + 8 * (((v3 - v4 - 0x24A17D3C30D8CF07 < 0xFFFFFFFFFFFFFFF6) * (((a2 + 1447834460) & 0x29B3BFDE) - 14994)) | a2)))();
}

uint64_t sub_1003738CC()
{
  v0 = STACK[0x798] - 5617;
  STACK[0xC90] = STACK[0x25A8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100373944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xC90] = 0;
  LODWORD(STACK[0xA7C]) = v4;
  return (*(a3 + 8 * (v3 - 11211)))();
}

uint64_t sub_10037397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 0x270676553BF336C1);
  STACK[0xBA0] = 0;
  return (*(a3 + 8 * (((v5 != 0xAB5C364D9808152) * ((v4 - 3011) ^ 0x77A ^ (v4 + 1747613013) & 0x97D57FAF)) | v4)))();
}

uint64_t sub_1003739F0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1710] = 0x4761F68478C333F5;
  STACK[0x1678] = 0x287A51C06DCBD88CLL;
  return (*(STACK[0x7B8] + 8 * (((((v1 ^ 0x778) - 2095130288) ^ 0x831F14C9) * (a1 == 0xAB5C364D9808152)) ^ v1)))();
}

uint64_t sub_100373A70@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 2122972197;
  STACK[0x18E0] = a34;
  LODWORD(STACK[0x7D4]) = 1681584436;
  return (*(a1 + 8 * ((1296 * (v34 < 0xCF2DC3F8)) ^ (v34 + 2095101010 + (v34 ^ 0x831F2D94)))))(1141409555);
}

uint64_t sub_100373B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1710] - 0x4761F68478C333DDLL);
  STACK[0x1178] = v4;
  return (*(a3 + 8 * (((v4 != 0) * (v3 - 1595)) ^ v3)))();
}

uint64_t sub_100373BD4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = v3 + ((v2 + 11159) | 0x918u) + ((v3 < a2 + 419245568) << 32) + 0x63DA9EB0B5EAC8FFLL;
  STACK[0x25B8] = v4;
  v5 = STACK[0x1678];
  STACK[0x25C0] = STACK[0x1678];
  return (*(a1 + 8 * ((4623 * (v4 - v5 - 0x3B604CF0611C9539 < 0xFFFFFFFFFFFFFFF6)) ^ v2)))();
}

uint64_t sub_100373DF0()
{
  v0 = STACK[0x798] - 7480;
  STACK[0xC90] = STACK[0x25C8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100373E70@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x880];
  v3 = STACK[0xD08];
  v4 = STACK[0xD08] + 0x1301790C6D2BFF37;
  STACK[0x11D8] = STACK[0xD08] - 0x4120F47AB517F655;
  STACK[0xC18] = v4;
  STACK[0xF18] = v2;
  v6 = v2 == 0x270676553BF336C1 || v3 == 0x4120F47AB517FA19;
  return (*(a1 + 8 * ((v6 * (((a2 ^ 0x1955) - 2867) ^ 0x300E)) ^ a2)))();
}

uint64_t sub_100373F08()
{
  v5 = *(v2 - 0x270676553BF336B9);
  STACK[0x1880] = v0;
  STACK[0x1CE0] = 0;
  v7 = v5 != 0xAB5C364D9808152 && v3 != v4;
  return (*(STACK[0x7B8] + 8 * ((v7 * (((v1 ^ 0x7948) - 1662) ^ 0x42FA)) ^ v1)))();
}

uint64_t sub_100373F6C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1748] = 0x4761F68478C333F5;
  STACK[0x1FA8] = 0x2466C81C00BE8EE5;
  return (*(a1 + 8 * ((234 * ((((a2 == 0xAB5C364D9808152) ^ (v2 + 7)) ^ (v2 - 106)) & 1)) ^ v2)))();
}

uint64_t sub_100373FF4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 1142123099;
  STACK[0x18E0] = a20;
  LODWORD(STACK[0x7D4]) = 1681584388;
  return (*(a1 + 8 * (v20 & 0x4FFCBFBF)))(1141409555);
}

uint64_t sub_100374084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xC90] = 0;
  LODWORD(STACK[0xA7C]) = v4;
  return (*(a3 + 8 * (v3 - 10068)))();
}

uint64_t sub_1003740E4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0x1748] - 0x4761F68478C333DDLL);
  STACK[0x1878] = v2;
  return (*(a1 + 8 * ((v2 == 0) | (a2 - 167293447) & 0x9F8EFFEu)))();
}

uint64_t sub_10037415C@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < ((17 * (a2 ^ 0x968)) ^ 0x18FD5200)) << 32)) + 0x29B66A3E55531DECLL;
  STACK[0x25D8] = v3;
  v4 = STACK[0x1FA8];
  STACK[0x25E0] = STACK[0x1FA8];
  LODWORD(v3) = v3 - v4 - 0x54FA2226D91F86FLL >= (a2 ^ 0xFFFFFFFFFFFFF5E0);
  return (*(a1 + 8 * (((2 * v3) | (8 * v3)) ^ a2)))();
}

uint64_t sub_10037422C()
{
  v0 = STACK[0x798] - 10001;
  *(STACK[0x1880] - 0x54226D872243F950) = STACK[0x25E8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_1003742D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1880] - 0x54226D872243F950) = 0;
  *STACK[0x11D8] = v4;
  return (*(a3 + 8 * ((v3 - 2514) ^ v3 ^ (4722 * (v3 < 0xE0080333)))))();
}

uint64_t sub_100374348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 - 0x270676553BF336C1);
  STACK[0x930] = v3;
  STACK[0x950] = 0;
  v8 = v6 == 0xAB5C364D9808152 || v3 == 0x54226D872243F950;
  return (*(a3 + 8 * ((v8 * (((v5 - 370247558) ^ 0xE9EEA9EC) + ((v5 - 370247558) & 0x16117FFE) - 19497)) ^ v5)))();
}

uint64_t sub_1003743DC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x8A0] = 0x4761F68478C333F5;
  STACK[0xDD0] = 0x605CDF0ACFCBBBBBLL;
  return (*(STACK[0x7B8] + 8 * ((((917 * (v1 ^ 0x12B1)) ^ (131 * (v1 ^ 0x1238)) ^ 0x407A) * (a1 != 0xAB5C364D9808152)) ^ v1)))();
}

uint64_t sub_100374468@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 1142123099;
  STACK[0x18E0] = a35;
  LODWORD(STACK[0x7D4]) = 1681584395;
  return (*(a1 + 8 * v35))(1141409555);
}

uint64_t sub_10037453C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x8A0] - 0x4761F68478C333DDLL);
  STACK[0x1588] = v4;
  return (*(a3 + 8 * ((v4 == 0) ^ v3)))();
}

uint64_t sub_10037459C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 - 915320870) & 0x368E7BB7;
  v4 = (a2 | ((a2 < 0x18FD695E) << 32)) + 0x73807C0D5660B5A5 + ((v3 - 4706) | 0x38Au);
  STACK[0x25F8] = v4;
  v5 = STACK[0xDD0];
  STACK[0x2600] = STACK[0xDD0];
  return (*(a1 + 8 * ((10917 * (v4 - v5 - 0x13239D029F92672DLL < (((v3 - 4755) | 0x4701u) ^ 0xFFFFFFFFFFFFB8D7))) ^ v3)))();
}

uint64_t sub_1003746C0()
{
  v0 = STACK[0x798] - 11771;
  *(STACK[0x930] - 0x54226D872243F950) = STACK[0x2608];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_10037479C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x930] - 0x54226D872243F950) = 0;
  *STACK[0x11D8] = v4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100374810@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x880];
  v3 = STACK[0xD08];
  v4 = STACK[0xD08] + 0x2BAC9058E3099C64;
  STACK[0x13C8] = STACK[0xD08] - 0x4120F47AB517F651;
  STACK[0xB40] = v4;
  STACK[0x1E58] = v2;
  v6 = v2 == 0x270676553BF336C1 || v3 == 0x4120F47AB517FA11;
  return (*(a1 + 8 * (((((a2 + 26) ^ v6) & 1) * (((a2 - 10327) | 0x42) - 4796)) ^ a2)))();
}

uint64_t sub_1003748D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v5 - 0x270676553BF336B9);
  STACK[0x1730] = v4;
  STACK[0x1F48] = 0;
  v10 = v8 == 0xAB5C364D9808152 || v6 == v7;
  return (*(a3 + 8 * ((v10 * (27 * (v3 ^ 0x1359) + (v3 ^ 0xFFFFCA9B))) ^ v3)))();
}

uint64_t sub_100374944@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1D38] = 0x4761F68478C333F5;
  STACK[0x1150] = 0x6CAAE0D5FD4E3169;
  return (*(a1 + 8 * (((((v2 - 1907616378) & 0x71B3C7FA) - 1746) * (a2 == v3)) ^ v2)))();
}

uint64_t sub_1003749AC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -325981036;
  STACK[0x18E0] = a26;
  LODWORD(STACK[0x7D4]) = 1681584411;
  return (*(a1 + 8 * v26))(1141409555);
}

uint64_t sub_100374A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1D38] - 0x4761F68478C333DDLL);
  STACK[0x1E20] = v4;
  return (*(a3 + 8 * (((v4 == 0) * (((v3 + 75870343) & 0xFB7A3EFF ^ 0xFFFFF9B0) + 1140 * (v3 ^ 0x1EBA))) ^ v3)))();
}

uint64_t sub_100374AF0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0xFC3167BAC34E173;
  STACK[0x2618] = v3;
  v4 = STACK[0x1150];
  STACK[0x2620] = STACK[0x1150];
  return (*(a1 + 8 * ((11858 * (v3 - v4 + ((2 * a2) ^ 0x1496u) + ((a2 + 5401) | 0x1806u) + 0x5CE7CA5A381BA248 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_100374BAC()
{
  v0 = STACK[0x798] - 3516;
  *(STACK[0x1730] - 0x6CCD84D398219675) = STACK[0x2628];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100374C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1730] - 0x6CCD84D398219675) = 0;
  *STACK[0x13C8] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100374C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 - 0x270676553BF336C1);
  STACK[0x1CB8] = v3;
  STACK[0x1018] = 0;
  v9 = v7 == v6 || v3 == 0x6CCD84D398219675;
  return (*(a3 + 8 * ((v9 * (((v5 + 1580) | 0xC00) - 7632)) ^ v5)))();
}

uint64_t sub_100374CE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1C10] = 0x4761F68478C333F5;
  STACK[0x1928] = 0xBE7473E66C4590;
  return (*(a1 + 8 * ((7 * (((a2 == 0xAB5C364D9808152) ^ (v2 - 1)) & 1)) ^ (v2 + 13409))))();
}

uint64_t sub_100374D80@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -325981036;
  STACK[0x18E0] = STACK[0x420];
  LODWORD(STACK[0x7D4]) = 1681584394;
  return (*(a1 + 8 * v2))(1141409555);
}

uint64_t sub_100374E48@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0x1C10] - 0x4761F68478C333DDLL);
  STACK[0xBD0] = v2;
  return (*(a1 + 8 * (((v2 != 0) * (((4 * a2) ^ 0x51B8) - 3161)) ^ a2)))();
}

uint64_t sub_100374EA8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x3250A080E04411C3;
  STACK[0x2638] = v3;
  v4 = STACK[0x1928];
  STACK[0x2640] = STACK[0x1928];
  return (*(a1 + 8 * (((v3 - v4 - 0x31922C0D12D5359BLL < ((a2 - 131455995) & 0x7D5FFDF) - 15208) * ((113 * (a2 ^ 0x1765)) ^ 0x102)) ^ a2)))();
}

uint64_t sub_100374F84()
{
  v0 = STACK[0x798] - 10267;
  *(STACK[0x1CB8] - 0x6CCD84D398219675) = STACK[0x2648];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_10037501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1CB8] - 0x6CCD84D398219675) = 0;
  *STACK[0x13C8] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003750A0@<X0>(int a1@<W8>)
{
  v1 = STACK[0x880];
  v2 = STACK[0xD08];
  v3 = STACK[0xD08] - 0xD97DAC9B741F79FLL;
  STACK[0x7C0] = STACK[0xD08] - 0x4120F47AB517F64DLL;
  STACK[0x10E8] = v3;
  STACK[0x870] = v1;
  v5 = v1 == 0x270676553BF336C1 || v2 == 0x4120F47AB517FA09;
  return (*(STACK[0x7B8] + 8 * ((v5 * ((((a1 - 14368) | 0x4006) ^ 0xFFFFBAAA) + ((a1 - 807901731) & 0x3027676F))) ^ a1)))();
}

uint64_t sub_10037515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v5 - 0x270676553BF336B9);
  STACK[0x12A0] = v4;
  STACK[0x1BD8] = 0;
  v10 = v8 == 0xAB5C364D9808152 || v6 == v7;
  return (*(a3 + 8 * (((((v3 - 1) ^ v10) & 1) * (v3 - 16889)) ^ v3)))();
}

uint64_t sub_1003751C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1E48] = 0x4761F68478C333F5;
  STACK[0xC58] = 0x7E6378726839A265;
  return (*(a1 + 8 * (((((v2 - 14468) | 0x3201) ^ (((v2 - 966) ^ 0x396A) + 13412)) * (a2 == v3)) | (v2 - 966))))();
}

uint64_t sub_100375230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x12A0] - 0x338919B0FDD6026ALL) = 0;
  *STACK[0x7C0] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 - 0x270676553BF336C1);
  STACK[0xBC8] = v3;
  STACK[0x1798] = 0;
  v9 = v7 != v6 && v3 != 0x338919B0FDD6026ALL;
  return (*(a3 + 8 * ((v9 * ((((v5 - 350977465) & 0x14EB576D) + 2065) ^ 0xF3C)) ^ v5)))();
}

uint64_t sub_1003752F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x10E0] = 0x4761F68478C333F5;
  STACK[0x21B0] = 0x7C63507F934B6A43;
  return (*(a1 + 8 * (((a2 != 0xAB5C364D9808152) * ((v2 ^ 0x740) - 1858)) ^ v2)))();
}

uint64_t sub_10037535C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 1530064461;
  STACK[0x18E0] = STACK[0x2D8];
  LODWORD(STACK[0x7D4]) = 1681584393;
  return (*(a1 + 2096 * (v2 ^ 0xF79)))(1141409555);
}

uint64_t sub_1003753F0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 1530064461;
  STACK[0x18E0] = STACK[0x320];
  LODWORD(STACK[0x7D4]) = 1681584410;
  return (*(a1 + 8 * v2))(1141409555);
}

uint64_t sub_1003754C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1E48] - 0x4761F68478C333DDLL);
  STACK[0x1148] = v4;
  return (*(a3 + 8 * ((((((v3 - 12684) | 0x8CF) ^ 0xFFFFCF64) + ((v3 - 1262319877) & 0x4B3D7FEB)) * (v4 == 0)) ^ v3)))();
}

uint64_t sub_100375550@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < (a2 ^ 0x3081u) + 419245568) << 32)) + 0x6A32D16A3D5ADALL;
  STACK[0x2658] = v3;
  v4 = STACK[0xC58];
  STACK[0x2660] = STACK[0xC58];
  return (*(a1 + 8 * ((5912 * (v3 - v4 + 0x7DF945A0E4FEDE23 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_100375600()
{
  v0 = STACK[0x798] - 8815;
  *(STACK[0x12A0] - 0x338919B0FDD6026ALL) = STACK[0x2668];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_1003756C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x10E0] - 0x4761F68478C333DDLL);
  STACK[0x16F8] = v4;
  return (*(a3 + 8 * ((91 * (((v4 == 0) ^ (v3 + ((v3 - 79) ^ 0x11) + 1)) & 1)) ^ (v3 + 10673))))();
}

uint64_t sub_100375740@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x4E21E61E71519C25 + ((a2 - 1209419520) & 0x48163FBF);
  STACK[0x2678] = v3;
  v4 = STACK[0x21B0];
  STACK[0x2680] = STACK[0x21B0];
  return (*(a1 + 8 * ((5712 * (v3 - v4 + 0x2E416A6108FC5C78 < ((a2 + 11232) ^ 0xFFFFFFFFFFFFC4A8))) ^ a2)))();
}

uint64_t sub_100375814()
{
  v0 = STACK[0x798] - 2525;
  *(STACK[0xBC8] - 0x338919B0FDD6026ALL) = STACK[0x2688];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100375894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0xBC8] - 0x338919B0FDD6026ALL) = 0;
  *STACK[0x7C0] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100375910()
{
  v1 = v0 + 10739;
  v2 = (v0 - 875) | 0x1008;
  v3 = STACK[0x880];
  v4 = STACK[0xD08];
  v5 = STACK[0xD08] + 0x1602C969551034B7;
  STACK[0xAC8] = STACK[0xD08] - 0x4120F47AB517F649;
  STACK[0x2130] = v5;
  STACK[0x2050] = v3;
  v7 = v3 == 0x270676553BF336C1 || v4 == 0x4120F47AB517FA01;
  return (*(STACK[0x7B8] + 8 * ((v7 * ((v2 ^ 0xFFFFAF83) + 4443 * (v1 ^ 0x3164))) ^ v1)))();
}

uint64_t sub_1003759CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v5 - 0x270676553BF336B9);
  STACK[0x1E08] = v4;
  STACK[0xB38] = 0;
  v10 = v8 != 0xAB5C364D9808152 && v6 != v7;
  return (*(a3 + 8 * ((v10 * (((v3 - 3821) ^ 0x27D4) - 4506)) | v3)))();
}

uint64_t sub_100375A2C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0xC50] = 0x4761F68478C333F5;
  STACK[0x850] = 0x7102554F9F4362C0;
  return (*(a1 + 8 * ((((((v2 - 4011) | 0x52A) + 2122) ^ 0xF65) * (a2 == v3)) ^ v2)))();
}

uint64_t sub_100375A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1E08] - 0x5723BDE40A282EB8) = 0;
  *STACK[0xAC8] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100375ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 - 0x270676553BF336C1);
  STACK[0x1E78] = v3;
  STACK[0x20D0] = 0;
  v9 = v7 == v6 || v3 == 0x5723BDE40A282EB8;
  return (*(a3 + 8 * (((((v4 - 124) ^ v9) & 1) * (((v4 - 4943) | 0x1003) - 12874)) ^ v4)))();
}

uint64_t sub_100375B68@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1A98] = 0x4761F68478C333F5;
  STACK[0x1B40] = 0x59A4878516ADA9BBLL;
  return (*(a1 + 8 * (((a2 != 0xAB5C364D9808152) * (v2 ^ 0x334C)) ^ v2)))();
}

uint64_t sub_100375BDC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -2104477595;
  STACK[0x18E0] = STACK[0x2E0];
  LODWORD(STACK[0x7D4]) = 1681584392;
  return (*(a1 + 8 * (v2 ^ 0x3419)))(1141409555);
}

uint64_t sub_100375C68@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -2104477595;
  STACK[0x18E0] = STACK[0x328];
  LODWORD(STACK[0x7D4]) = 1681584409;
  return (*(a1 + 8 * v2))(1141409555);
}

uint64_t sub_100375D4C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0xC50] - 0x4761F68478C333DDLL);
  STACK[0x21A8] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((119 * ((a2 + 1418246360) ^ 0x1CF0) - 3434) ^ ((a2 + 1418240794) | 0x864))) ^ (a2 + 1418246360))))();
}

uint64_t sub_100375DD0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < (a2 ^ 0x13A6u) + 419256810) << 32)) + 0x1E678F2D020FA63FLL;
  STACK[0x2698] = v3;
  v4 = STACK[0x850];
  STACK[0x26A0] = STACK[0x850];
  return (*(a1 + 8 * (((v3 - v4 + 0x529AC62284365319 < 0xFFFFFFFFFFFFFFF6) * (a2 ^ 0x46FC)) ^ a2)))();
}

uint64_t sub_100375E88()
{
  v0 = STACK[0x798] - 7741;
  *(STACK[0x1E08] - 0x5723BDE40A282EB8) = STACK[0x26A8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100375F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1A98] - 0x4761F68478C333DDLL);
  STACK[0x1DD8] = v4;
  return (*(a3 + 8 * (((v4 == 0) * (((v3 - 638) ^ 0x1D38) - 4615)) ^ v3)))();
}

uint64_t sub_100375FD4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = a2 ^ v2;
  v5 = (v3 | ((v3 < 0x18FD695E) << 32)) + 0x42B40CAD85053D62;
  STACK[0x26B8] = v5;
  v6 = STACK[0x1B40];
  STACK[0x26C0] = STACK[0x1B40];
  return (*(a1 + 8 * (((v5 - v6 + 0x16F07AD778AB02F1 < 0xFFFFFFFFFFFFFFF6) * ((5066 * (a2 ^ 0x12C6) - 13204) ^ v4)) ^ a2)))();
}

uint64_t sub_100376098()
{
  v0 = STACK[0x798] - 6885;
  *(STACK[0x1E78] - 0x5723BDE40A282EB8) = STACK[0x26C8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100376120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1E78] - 0x5723BDE40A282EB8) = 0;
  *STACK[0xAC8] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100376194@<X0>(int a1@<W8>)
{
  v1 = STACK[0x880];
  v2 = STACK[0xD08];
  v3 = STACK[0xD08] - 0x26F5CCA3F83F6655;
  STACK[0x2020] = STACK[0xD08] - 0x4120F47AB517F645;
  STACK[0xC70] = v3;
  STACK[0xA48] = v1;
  v5 = v1 != 0x270676553BF336C1 && v2 != 0x4120F47AB517F9F9;
  return (*(STACK[0x7B8] + 8 * ((v5 * (((a1 + 1380) | 0x408) - 4732)) ^ a1)))();
}

uint64_t sub_100376238@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v6 = (a2 + 15722) | 0x191;
  v7 = *(v4 - 0x270676553BF336B9);
  STACK[0xB08] = v3;
  STACK[0xF90] = 0;
  v9 = v7 == 0xAB5C364D9808152 || v2 == v5;
  return (*(a1 + 8 * ((v9 * (((v6 - 7405) ^ 0xFFFFF260) + (v6 ^ 0x680B))) ^ v6)))();
}

uint64_t sub_1003762B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1FD8] = 0x4761F68478C333F5;
  STACK[0x17A0] = 0x434333903E5CC4E5;
  return (*(a1 + 8 * ((((v2 - 1619497512) & 0x608777BF ^ (v2 + 1228151405) & 0xB6CBFCD7 ^ 0x3FF5) * (a2 == v3)) | v2)))();
}

uint64_t sub_100376330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0xB08] - 0x1A2B27D6BCD893A4) = 0;
  *STACK[0x2020] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037637C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 - 0x270676553BF336C1);
  STACK[0xE68] = v3;
  STACK[0x19A8] = 0;
  v9 = v7 == v6 || v3 == 0x1A2B27D6BCD893A4;
  return (*(a3 + 8 * ((29 * (((v5 - 1) ^ v9) & 1)) ^ v5)))();
}

uint64_t sub_1003763F0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0xC10] = 0x4761F68478C333F5;
  STACK[0xD80] = 0x22FBF9EC6FCAA2ELL;
  return (*(a1 + 8 * ((((((v2 - 4988) | 0xA10) - 888) ^ (v2 - 3296)) * (a2 == 0xAB5C364D9808152)) ^ (v2 + 8070))))();
}

uint64_t sub_100376474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0xE68] - 0x1A2B27D6BCD893A4) = 0;
  *STACK[0x2020] = 0;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003764EC()
{
  v1 = STACK[0x880];
  v2 = STACK[0xD08];
  v3 = STACK[0xD08] + 0x85CD5234E0B5BA4;
  STACK[0x1E70] = STACK[0xD08] - 0x4120F47AB517F641;
  STACK[0x1D28] = v3;
  STACK[0x1548] = v1;
  v5 = v1 == 0x270676553BF336C1 || v2 == 0x4120F47AB517F9F1;
  return (*(STACK[0x7B8] + 8 * ((v5 * ((((v0 + 1900) ^ 0x6E94) - 9441) ^ 0x77B)) ^ (v0 + 1900))))();
}

uint64_t sub_1003765A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v6 = *(a2 - 0x270676553BF336B9);
  STACK[0x1808] = v4;
  STACK[0x1E30] = 0;
  v8 = v6 != 0xAB5C364D9808152 && v3 != v5;
  return (*(a1 + 8 * ((v8 * (453 * (v2 ^ 0x2C43) - 13078)) ^ v2)))();
}

uint64_t sub_100376608@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x2110] = 0x4761F68478C333F5;
  STACK[0x12B0] = 0x124EB84AE57B7D7BLL;
  return (*(a1 + 8 * (((((a2 == v3) ^ ((v2 ^ 0x31) + 16)) & 1) * (((v2 ^ 0x6931) + 752167016) & 0xFFBFB37E ^ 0x2C9521B6)) ^ v2 ^ 0x6931)))();
}

uint64_t sub_10037669C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 527024423;
  STACK[0x18E0] = STACK[0x338];
  LODWORD(STACK[0x7D4]) = 1681584415;
  return (*(a1 + 8 * (v3 ^ (v2 + 1222) ^ ((((v3 - 747956254) | 2) ^ 0x307C) * (v3 == 820662651)))))(1141409555);
}

uint64_t sub_10037673C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 2131604540;
  STACK[0x18E0] = STACK[0x428];
  LODWORD(STACK[0x7D4]) = 1681584399;
  return (*(a1 + 8 * v2))(1141409555);
}

uint64_t sub_1003767BC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 2131604540;
  STACK[0x18E0] = STACK[0x330];
  LODWORD(STACK[0x7D4]) = 1681584408;
  return (*(a1 + 8 * v2))(1141409555);
}

uint64_t sub_100376888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1FD8] - 0x4761F68478C333DDLL);
  STACK[0x1658] = v4;
  return (*(a3 + 8 * (((((v3 + 22) ^ (v4 == 0)) & 1) * ((18 * (v3 ^ 0x3BF2)) ^ 0x15BA)) | v3)))();
}

uint64_t sub_1003768F8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x19272014A1EA6FE5;
  STACK[0x26D8] = v3;
  v4 = STACK[0x17A0];
  STACK[0x26E0] = STACK[0x17A0];
  LODWORD(v3) = v3 - v4 + 0x2A1C137B8374EB98 < ((a2 + 9025) ^ 0xFFFFFFFFFFFFC721);
  return (*(a1 + 8 * ((8 * ((((a2 + 104) ^ v3) & 1) == 0)) & 0xBF | ((((a2 - 1246762392) ^ ~v3) & 1) << 6) | a2)))();
}

uint64_t sub_1003769CC()
{
  v0 = STACK[0x798] - 9153;
  *(STACK[0xB08] - 0x1A2B27D6BCD893A4) = STACK[0x26E8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100376AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0xC10] - 0x4761F68478C333DDLL);
  STACK[0x1B98] = v4;
  return (*(a3 + 8 * (((v4 != 0) * (((v3 ^ 0x1CB3) - 2728) ^ 0xFFFFFFEA)) ^ v3)))();
}

uint64_t sub_100376B14@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0xE552BFCD5F58B34;
  STACK[0x26F8] = v3;
  v4 = STACK[0xD80];
  STACK[0x2700] = STACK[0xD80];
  return (*(a1 + 8 * (a2 ^ 0xFFFFDB2C ^ (6007 * (((((a2 + 2728) ^ 0xA97 | a2) << 32) & ~(v3 - v4 - 0xC256C5E27F64A6ELL) | ((((a2 + 2728) ^ 0xA97 | a2) << 32) | ~(v3 - v4 - 0xC256C5E27F64A6ELL)) & (v3 - v4 - 0xC256C5E27F64A6ELL - (a2 | (((a2 + 2728) ^ 0xA97 | a2) << 32)))) >> 63)))))();
}

uint64_t sub_100376BF8()
{
  v0 = STACK[0x798] - 5495;
  *(STACK[0xE68] - 0x1A2B27D6BCD893A4) = STACK[0x2708];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100376CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x2110] - 0x4761F68478C333DDLL);
  STACK[0xB30] = v4;
  return (*(a3 + 8 * (((((v4 == 0) ^ (-45 * (v3 ^ 0x24))) & 1) * ((v3 + 1129421692) & 0xBCAE5F5E ^ 0x99F)) ^ v3)))();
}

uint64_t sub_100376D7C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = v2 + ((a2 - 2118) | 0x401Du) + ((v2 < ((a2 + 5826) | 0x1B56u) + 419245568) << 32) + 0x2CD41BF9AA3866F7;
  STACK[0x2718] = v3;
  v4 = STACK[0x12B0];
  STACK[0x2720] = STACK[0x12B0];
  return (*(a1 + 8 * ((6624 * (v3 - v4 - 0x1A8563AEDDBA9401 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_100376E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (STACK[0x1E30])
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((((v3 ^ v5) & 1) * ((v3 - 14682) ^ 0x79D)) ^ v3)))();
}

uint64_t sub_100376E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 ^ 0x69D2;
  v5 = (v3 ^ 0x431D) + 2853;
  v6 = 2 * (v3 ^ 0x431D);
  v7 = (*(a3 + 8 * ((v3 ^ 0x69D2) + 8583)))(*STACK[0x1E70]);
  v8 = STACK[0x7B8];
  STACK[0x2728] = v7;
  if (v7)
  {
    v9 = -1418238986;
  }

  else
  {
    v9 = 1418211938;
  }

  LODWORD(STACK[0x2734]) = v9;
  return (*(v8 + 8 * (((v7 == 0) * ((v5 ^ 0xFFFFF138) + v6)) ^ v4)))();
}

uint64_t sub_100376F54@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(STACK[0x1808] - 0x497DC99E03235595) = 0;
  *STACK[0x1E70] = 0;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100376F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x1548] - 0x270676553BF336C1);
  v6 = STACK[0x1D28];
  STACK[0xE58] = STACK[0x1D28];
  STACK[0x1100] = 0;
  v8 = v5 != v4 && v6 != 0x497DC99E03235595;
  return (*(a3 + 8 * ((v8 * ((v3 ^ 0x1CCD) - 14103 + ((v3 - 11497) | 0x115))) | v3)))();
}

uint64_t sub_100377018@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0xD50] = 0x4761F68478C333F5;
  STACK[0x2038] = 0x1A95AAB38B4D5ABDLL;
  return (*(a1 + 8 * ((((((v2 - 10364) ^ (a2 == 0xAB5C364D9808152)) & 1) == 0) * (((v2 - 10866) | 0x200) ^ 0x70B)) | v2)))();
}

uint64_t sub_100377098@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 527024423;
  STACK[0x18E0] = STACK[0x3F8];
  LODWORD(STACK[0x7D4]) = 1681584427;
  return (*(a1 + 8 * v2))(1141409555);
}

uint64_t sub_100377170()
{
  v0 = STACK[0x798];
  v1 = STACK[0x798] + 1696103568;
  *(STACK[0x1808] - 0x497DC99E03235595) = STACK[0x2728];
  return (*(STACK[0x7B8] + 8 * (v1 ^ 0x651890FB ^ ((v1 != 508794401) * (v0 - 11159)))))();
}

uint64_t sub_10037722C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(STACK[0xD50] - 0x4761F68478C333DDLL);
  STACK[0x13A0] = v3;
  return (*(a1 + 8 * (((v3 == 0) * (((a2 - 15814) | v2) ^ 0x78E5)) ^ a2)))();
}

uint64_t sub_100377294@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = a2 - 4186;
  v4 = (a2 - 3546) | 0x942;
  v5 = (v2 | ((v2 < 0x18FD695E) << 32)) + (((a2 - 15350) | 0x330u) ^ 0x1017175149D7477ALL);
  STACK[0x2738] = v5;
  v6 = STACK[0x2038];
  STACK[0x2740] = STACK[0x2038];
  return (*(a1 + 8 * (((v5 - v6 + 0xA7E93622878B10BLL < 0xFFFFFFFFFFFFFFF6) * (v4 - 7841)) ^ v3)))();
}

uint64_t sub_1003773FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 3663)))(*STACK[0x1E70]);
  v6 = STACK[0x7B8];
  STACK[0x2748] = v5;
  if (v5)
  {
    v7 = -1418238986;
  }

  else
  {
    v7 = v4;
  }

  LODWORD(STACK[0x2754]) = v7;
  return (*(v6 + 8 * (((v5 != 0) * (((v3 - 1119) ^ 0xFFFFCBC0) + (v3 ^ 0x3811))) ^ v3)))();
}

uint64_t sub_10037753C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *v4 - a1;
  v9 = a4 + v6 - 2012719577 >= (v5 ^ 0x3400u) && v7 > 0xF;
  return (*(STACK[0x7B8] + 8 * ((27 * v9) ^ v5)))();
}

uint64_t sub_10037768C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = *(STACK[0x7B8] + 8 * v5);
  *&STACK[0x780] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x760] = vdupq_n_s64(0x38uLL);
  *&STACK[0x750] = vdupq_n_s64(0x72B0B1A0EB3E1587uLL);
  *&STACK[0x740] = vdupq_n_s64(v8);
  *&STACK[0x730] = vdupq_n_s64(0xD4F4E5F14C1EA78uLL);
  *&STACK[0x710] = vdupq_n_s64(v7);
  *&STACK[0x700] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x6F0] = xmmword_1004248B0;
  return v9(STACK[0x7B8], (v6 + a4 + a3 - a5 + 2), (v6 + a4 + a3 - a5 + 3), (v6 + a4 + a3 - a5 + 4), (v6 + a4 + v5 - a5 - 2012731877), (v6 + a4 + a3 - a5 + 6));
}

uint64_t sub_100377840(uint64_t a1, int a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v40 = (v21 + v16);
  v41.i64[0] = v14 + (v20 + v16);
  v41.i64[1] = v14 + (v19 + v16);
  v42.i64[0] = v14 + (a3 + v16);
  v42.i64[1] = v14 + (a2 + v16);
  v43.i64[0] = v14 + (a5 + v16);
  v43.i64[1] = v14 + (a4 + v16);
  v44.i64[0] = v14 + v40;
  v44.i64[1] = v14 + (a6 + v16);
  v45 = vandq_s8(v44, *&STACK[0x780]);
  v46 = vandq_s8(v43, *&STACK[0x780]);
  v47 = vandq_s8(v42, *&STACK[0x780]);
  v48 = vandq_s8(v41, *&STACK[0x780]);
  v49 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v53 = *&STACK[0x730];
  v54 = *&STACK[0x740];
  *&STACK[0x7A0] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x730], v52), a13), vorrq_s8(vaddq_s64(v52, v23), *&STACK[0x740]));
  v55 = vaddq_s64(vorrq_s8(vsubq_s64(v53, v51), a13), vorrq_s8(vaddq_s64(v51, v23), v54));
  v56 = vsubq_s64(*&STACK[0x700], vaddq_s64(vorrq_s8(vsubq_s64(v53, v49), a13), vorrq_s8(vaddq_s64(v49, v23), v54)));
  v57 = vsubq_s64(*&STACK[0x700], vaddq_s64(vorrq_s8(vsubq_s64(v53, v50), a13), vorrq_s8(vaddq_s64(v50, v23), v54)));
  v58 = veorq_s8(v57, a14);
  v59 = veorq_s8(v56, a14);
  v60 = veorq_s8(v56, v24);
  v61 = veorq_s8(v57, v24);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v60);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), v25)), v26), v27);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v62, vandq_s8(vaddq_s64(v62, v62), v25)), v26), v27);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v28), v70), v29), v30);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v28), v69), v29), v30);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, v31), vorrq_s8(v77, v32)), v32), v33);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v31), vorrq_s8(v78, v32)), v32), v33);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81), v34);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82), v34);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v35);
  v91 = veorq_s8(v89, v35);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = vaddq_s64(v95, v93);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v36)), v37), v38);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v36)), v37), v38);
  v100 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v102 = veorq_s8(v98, v100);
  v103 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v105 = vsubq_s64(*&STACK[0x700], v55);
  v143.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v104, v102), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), *&STACK[0x760])));
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v103, v101), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), *&STACK[0x760])));
  v106 = veorq_s8(v105, a14);
  v107 = veorq_s8(v105, v24);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(v108, vandq_s8(vaddq_s64(v108, v108), v25)), v26), v27);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v28), v111), v29), v30);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, v31), vorrq_s8(v114, v32)), v32), v33);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v34);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v35);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v36)), v37), v38);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v124 = vsubq_s64(*&STACK[0x700], *&STACK[0x7A0]);
  v143.val[1] = vshlq_u64(veorq_s8(v123, v39), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), *&STACK[0x760])));
  v125 = veorq_s8(v124, a14);
  v126 = veorq_s8(v124, v24);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), v25)), v26), v27);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v28), v130), v29), v30);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v31), vorrq_s8(v133, v32)), v32), v33);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v34);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v35);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v140, vandq_s8(vaddq_s64(v140, v140), v36)), v37), v38);
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), *&STACK[0x760])));
  *(v17 + v40) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v14 + v40 - 7)), 0x1212121212121212), *&vqtbl4q_s8(v143, *&STACK[0x6F0])));
  return (*(a1 + 8 * (((v18 == v16) * v22) ^ v15)))();
}

uint64_t sub_100377E90(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = *(STACK[0x7B8] + 8 * (a2 - 6473));
  *&STACK[0x6C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x6B0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x7A0] = vdupq_n_s64(0x72B0B1A0EB3E1587uLL);
  *&STACK[0x780] = vdupq_n_s64(v14);
  *&STACK[0x760] = vdupq_n_s64(0xD4F4E5F14C1EA78uLL);
  *&STACK[0x750] = vdupq_n_s64(v13);
  *&STACK[0x6A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x690] = vdupq_n_s64(0xB1E1BEFD78E917EDLL);
  *&STACK[0x680] = vdupq_n_s64(v15);
  *&STACK[0x670] = vdupq_n_s64(v10);
  *&STACK[0x660] = vdupq_n_s64(0x3C9B56C8E758C3AAuLL);
  *&STACK[0x650] = vdupq_n_s64(v9);
  *&STACK[0x640] = vdupq_n_s64(0xB3B287B23D42BC6uLL);
  *&STACK[0x620] = vdupq_n_s64(a8);
  *&STACK[0x610] = vdupq_n_s64(v11);
  *&STACK[0x600] = vdupq_n_s64(v12);
  *&STACK[0x5E0] = vdupq_n_s64(0x7D0FEE692F663634uLL);
  *&STACK[0x740] = vdupq_n_s64(0x80A3287483B4C7C9);
  *&STACK[0x5C0] = vdupq_n_s64(0x8562C5B0FD26117BLL);
  *&STACK[0x570] = vdupq_n_s64(0x977EB3F49C3491F4);
  *&STACK[0x510] = vdupq_n_s64(0x4BBF59FA4E1A48FAuLL);
  *&STACK[0x500] = vdupq_n_s64(0xDC4A354AB52C5289);
  return v16(STACK[0x7B8], (v8 + a4 + a2 - 2012736640), (v8 + a4 + a3 + 6), (v8 + a4 + a3 + 7), 4294967280);
}

uint64_t sub_1003780FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X7>, int a7@<W8>, int8x16_t a8@<Q7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int64x2_t a15, int8x16_t a16, int8x16_t a17)
{
  v43.i64[0] = v17 + (a7 + a5 + 16);
  v43.i64[1] = v17 + (v25 + a5 + 16);
  *&STACK[0x730] = v43;
  v44.i64[0] = v17 + (v21 + a5 + 16);
  v44.i64[1] = v17 + (v31 + a5 + 16);
  v45.i64[0] = v17 + (v23 + a5 + 16);
  v45.i64[1] = v17 + (v22 + a5 + 16);
  v46.i64[0] = v17 + (a2 + a5 + 16);
  v46.i64[1] = v17 + (v24 + a5 + 16);
  v47 = (a4 + a5 + 16);
  v43.i64[0] = v17 + v47;
  v43.i64[1] = v17 + (a3 + a5 + 16);
  *&STACK[0x710] = v43;
  v48 = *&STACK[0x6C0];
  v49 = vandq_s8(v43, *&STACK[0x6C0]);
  v50 = vandq_s8(v46, *&STACK[0x6C0]);
  v51 = vandq_s8(v45, *&STACK[0x6C0]);
  v52 = vandq_s8(v44, *&STACK[0x6C0]);
  v53 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v57 = vorrq_s8(vaddq_s64(v53, *&STACK[0x7A0]), *&STACK[0x780]);
  v58 = vorrq_s8(vaddq_s64(v54, *&STACK[0x7A0]), *&STACK[0x780]);
  v59 = vorrq_s8(vaddq_s64(v55, *&STACK[0x7A0]), *&STACK[0x780]);
  v60 = vorrq_s8(vsubq_s64(*&STACK[0x760], v53), *&STACK[0x750]);
  v61 = vorrq_s8(vsubq_s64(*&STACK[0x760], v54), *&STACK[0x750]);
  v62 = vorrq_s8(vsubq_s64(*&STACK[0x760], v55), *&STACK[0x750]);
  *&STACK[0x700] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x760], v56), *&STACK[0x750]), vorrq_s8(vaddq_s64(v56, *&STACK[0x7A0]), *&STACK[0x780]));
  v63 = vaddq_s64(v62, v59);
  v64 = vsubq_s64(*&STACK[0x6A0], vaddq_s64(v60, v57));
  v65 = vsubq_s64(*&STACK[0x6A0], vaddq_s64(v61, v58));
  v66 = *&STACK[0x6A0];
  v67 = *&STACK[0x690];
  v68 = veorq_s8(v65, *&STACK[0x690]);
  v69 = veorq_s8(v64, *&STACK[0x690]);
  v70 = veorq_s8(v64, v35);
  v71 = veorq_s8(v65, v35);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70);
  v74 = *&STACK[0x660];
  v75 = veorq_s8(vaddq_s64(vsubq_s64(v73, vandq_s8(vaddq_s64(v73, v73), a8)), *&STACK[0x660]), v34);
  v76 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(v72, vandq_s8(vaddq_s64(v72, v72), a8)), *&STACK[0x660]), v34);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v76);
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), v36), v82), v38), v39);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), v36), v81), v38), v39);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86);
  v89 = vaddq_s64(v87, v85);
  v90 = *&STACK[0x600];
  v91 = *&STACK[0x5E0];
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, *&STACK[0x600]), vorrq_s8(v88, a15)), a15), *&STACK[0x5E0]);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, *&STACK[0x600]), vorrq_s8(v89, a15)), a15), *&STACK[0x5E0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v95 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v96 = *&STACK[0x740];
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x740]);
  v98 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v95), *&STACK[0x740]);
  v101 = veorq_s8(v100, v99);
  v102 = veorq_s8(v97, v98);
  v103 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v102);
  v105 = veorq_s8(vaddq_s64(v103, v101), v41);
  v106 = veorq_s8(v104, v41);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v108 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v108);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v42)), v40), v37);
  v112 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v42)), v40), v37);
  v115 = veorq_s8(v114, v113);
  v116 = veorq_s8(v111, v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v114.i64[0] = v17 + (v27 + a5 + 16);
  v114.i64[1] = v17 + (v26 + a5 + 16);
  *&STACK[0x6D0] = v114;
  v118 = vsubq_s64(v66, v63);
  v119 = veorq_s8(vaddq_s64(v117, v115), a17);
  v229.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v116), a17), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v33)));
  v229.val[2] = vshlq_u64(v119, vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v33)));
  v120 = v67;
  v121 = veorq_s8(v118, v67);
  v122 = veorq_s8(v118, v35);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(v123, vandq_s8(vaddq_s64(v123, v123), a8)), v74), v34);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v36), v126), v38), v39);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = v90;
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, v90), vorrq_s8(v129, a15)), a15), v91);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v96);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v41);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v42)), v40), v37);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v136.i64[0] = v17 + (v20 + a5 + 16);
  v67.i64[0] = v17 + (v18 + a5 + 16);
  v67.i64[1] = v17 + (v30 + a5 + 16);
  *&STACK[0x6E0] = v67;
  v136.i64[1] = v17 + (v19 + a5 + 16);
  *&STACK[0x6F0] = v136;
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = vandq_s8(v136, v48);
  v142 = vsubq_s64(v66, *&STACK[0x700]);
  v143 = v66;
  v229.val[1] = vshlq_u64(veorq_s8(v140, a17), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), v33)));
  v144 = veorq_s8(v142, v120);
  v145 = veorq_s8(v142, v35);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), a8)), v74), v34);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v149, v149), v36), v149), v38), v39);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151);
  v153 = v130;
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, v130), vorrq_s8(v152, a15)), a15), v91);
  v155 = v91;
  v156 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v156), v96);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v41);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), v42)), v40), v37);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v165 = vandq_s8(v67, v48);
  v166 = vaddq_s64(v164, v163);
  v167 = vandq_s8(v114, v48);
  v229.val[0] = vshlq_u64(veorq_s8(v166, a17), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x710], 3uLL), v33)));
  v168 = *&STACK[0x730];
  v169 = vandq_s8(*&STACK[0x730], v48);
  v170 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v174 = *&STACK[0x7A0];
  v175 = *&STACK[0x780];
  v176 = *&STACK[0x760];
  v177 = *&STACK[0x750];
  *&STACK[0x710] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x760], v173), *&STACK[0x750]), vorrq_s8(vaddq_s64(v173, *&STACK[0x7A0]), *&STACK[0x780]));
  v178 = vsubq_s64(v143, vaddq_s64(vorrq_s8(vsubq_s64(v176, v170), v177), vorrq_s8(vaddq_s64(v170, v174), v175)));
  v179 = vsubq_s64(v143, vaddq_s64(vorrq_s8(vsubq_s64(v176, v171), v177), vorrq_s8(vaddq_s64(v171, v174), v175)));
  v141.i64[0] = vqtbl4q_s8(v229, a16).u64[0];
  v229.val[0] = veorq_s8(v179, v120);
  v229.val[1] = veorq_s8(v178, v120);
  v229.val[2] = veorq_s8(v178, v35);
  v229.val[3] = veorq_s8(v179, v35);
  v229.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v229.val[3]);
  v229.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), v229.val[2]);
  v229.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v229.val[1], vandq_s8(vaddq_s64(v229.val[1], v229.val[1]), a8)), v74), v34);
  v180 = vsraq_n_u64(vshlq_n_s64(v229.val[2], 3uLL), v229.val[2], 0x3DuLL);
  v229.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v229.val[0], vandq_s8(vaddq_s64(v229.val[0], v229.val[0]), a8)), v74), v34);
  v229.val[2] = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v229.val[3], 3uLL), v229.val[3], 0x3DuLL));
  v229.val[3] = veorq_s8(v229.val[1], v180);
  v181 = vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL);
  v229.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), v229.val[3]);
  v229.val[1] = vaddq_s64(v181, v229.val[2]);
  v229.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v229.val[1], v229.val[1]), v36), v229.val[1]), v38), v39);
  v229.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v229.val[0], v229.val[0]), v36), v229.val[0]), v38), v39);
  v182 = vsraq_n_u64(vshlq_n_s64(v229.val[2], 3uLL), v229.val[2], 0x3DuLL);
  v229.val[2] = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v229.val[3], 3uLL), v229.val[3], 0x3DuLL));
  v229.val[3] = veorq_s8(v229.val[1], v182);
  v183 = vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL);
  v229.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), v229.val[3]);
  v229.val[1] = vaddq_s64(v183, v229.val[2]);
  v229.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v229.val[0], v153), vorrq_s8(v229.val[0], a15)), a15), v155);
  v229.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v229.val[1], v153), vorrq_s8(v229.val[1], a15)), a15), v155);
  v229.val[2] = veorq_s8(v229.val[1], vsraq_n_u64(vshlq_n_s64(v229.val[2], 3uLL), v229.val[2], 0x3DuLL));
  v229.val[3] = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v229.val[3], 3uLL), v229.val[3], 0x3DuLL));
  v229.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), v229.val[2]), *&STACK[0x740]);
  v229.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v229.val[3]), *&STACK[0x740]);
  v184 = vsraq_n_u64(vshlq_n_s64(v229.val[2], 3uLL), v229.val[2], 0x3DuLL);
  v229.val[2] = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v229.val[3], 3uLL), v229.val[3], 0x3DuLL));
  v229.val[3] = veorq_s8(v229.val[1], v184);
  v185 = vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL);
  v229.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), v229.val[3]);
  v229.val[1] = veorq_s8(vaddq_s64(v185, v229.val[2]), v41);
  v186 = vsraq_n_u64(vshlq_n_s64(v229.val[2], 3uLL), v229.val[2], 0x3DuLL);
  v229.val[0] = veorq_s8(v229.val[0], v41);
  v229.val[2] = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v229.val[3], 3uLL), v229.val[3], 0x3DuLL));
  v229.val[3] = veorq_s8(v229.val[1], v186);
  v187 = vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL);
  v229.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), v229.val[3]);
  v229.val[1] = vaddq_s64(v187, v229.val[2]);
  v229.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v229.val[1], vandq_s8(vaddq_s64(v229.val[1], v229.val[1]), v42)), v40), v37);
  v229.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v229.val[0], vandq_s8(vaddq_s64(v229.val[0], v229.val[0]), v42)), v40), v37);
  v188 = vsraq_n_u64(vshlq_n_s64(v229.val[2], 3uLL), v229.val[2], 0x3DuLL);
  v229.val[2] = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v229.val[3], 3uLL), v229.val[3], 0x3DuLL));
  v189 = vsubq_s64(v143, vaddq_s64(vorrq_s8(vsubq_s64(v176, v172), v177), vorrq_s8(vaddq_s64(v172, v174), v175)));
  v229.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[1], 0x38uLL), v229.val[1], 8uLL), veorq_s8(v229.val[1], v188)), a17), vnegq_s64(vandq_s8(vshlq_n_s64(v168, 3uLL), v33)));
  v229.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v229.val[2]), a17), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x6D0], 3uLL), v33)));
  v190 = veorq_s8(v189, v120);
  v191 = veorq_s8(v189, v35);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), a8)), v74), v34);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), v36), v195), v38), v39);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v198, v153), vorrq_s8(v198, a15)), a15), v155);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200), *&STACK[0x740]);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), v41);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(v205, vandq_s8(vaddq_s64(v205, v205), v42)), v40), v37);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL)));
  v208 = vsubq_s64(v143, *&STACK[0x710]);
  v229.val[1] = vshlq_u64(veorq_s8(v207, a17), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x6E0], 3uLL), v33)));
  v209 = veorq_s8(v208, v120);
  v210 = veorq_s8(v208, v35);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), a8)), v74), v34);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213);
  v215 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v214, v214), v36), v214), v38), v39);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v217, v153), vorrq_s8(v217, a15)), a15), v155);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), *&STACK[0x740]);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v41);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(v224, vandq_s8(vaddq_s64(v224, v224), v42)), v40), v37);
  v229.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL))), a17), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x6F0], 3uLL), v33)));
  v141.i64[1] = vqtbl4q_s8(v229, a16).u64[0];
  v226 = vrev64q_s8(*(v17 + v47 - 15));
  v229.val[0].i64[0] = 0x1212121212121212;
  v229.val[0].i64[1] = 0x1212121212121212;
  v227 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v226, v226, 8uLL), v229.val[0]), v141));
  *(a6 + v47) = vextq_s8(v227, v227, 8uLL);
  return (*(a1 + 8 * (((v29 == a5) * v28) ^ v32)))();
}

uint64_t sub_100378E5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X7>, int a8@<W8>)
{
  v23 = (v15 + a8 - 2);
  v24 = __ROR8__((v8 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = a3 - (((v14 - v24) | v19) + ((v24 + v12) | v20));
  v26 = __ROR8__(v25 ^ 0xB1E1BEFD78E917EDLL, 8);
  v27 = v25 ^ v22;
  v28 = (v26 + v27 - ((2 * (v26 + v27)) & 0x7936AD91CEB18754) + 0x3C9B56C8E758C3AALL) ^ v16;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xB3B287B23D42BC6) - (v30 + v29) + a7) ^ v17;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v13 - ((v33 + v32) | v13) + ((v33 + v32) | v18)) ^ 0x7D0FEE692F663634, 8);
  v35 = (v13 - ((v33 + v32) | v13) + ((v33 + v32) | v18)) ^ 0x7D0FEE692F663634 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ v11;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v10;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  *(a1 + v23) = *(v8 + v23) ^ a4 ^ (((__ROR8__((v40 + v39 - ((2 * (v40 + v39)) & 0x977EB3F49C3491F4) + v21) ^ 0xDC4A354AB52C5289, 8) + ((v40 + v39 - ((2 * (v40 + v39)) & 0x977EB3F49C3491F4) + v21) ^ 0xDC4A354AB52C5289 ^ __ROR8__(v39, 61))) ^ v9) >> (8 * ((v8 + v15 + a8 - 2) & 7)));
  return (*(STACK[0x7B8] + 8 * (((a8 - 1 == a5) * a6) ^ a2)))();
}

uint64_t sub_100378FE8()
{
  v0 = STACK[0x798] - 11601;
  *(STACK[0x1970] - 0x4576AA59CFD25DBCLL) = STACK[0x27A8];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_10037903C()
{
  v0 = STACK[0x798] - 13322;
  *(STACK[0xE58] - 0x497DC99E03235595) = STACK[0x2748];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_1003790C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0xE58] - 0x497DC99E03235595) = 0;
  *STACK[0x1E70] = 0;
  return (*(a3 + 8 * (v3 - 10856)))();
}

uint64_t sub_100379158()
{
  v1 = STACK[0x7B8];
  STACK[0x1980] = *(STACK[0x7B8] + 8 * v0);
  return (*(v1 + 44928))(1141409555);
}

uint64_t sub_1003791B4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0x11E8]) = v2;
  STACK[0x19D0] = v5;
  STACK[0x1BF8] = v3;
  STACK[0x1E60] = a2;
  v8 = a2 == 0x270676553BF336C1 || v3 == 0x6925162F5D8E3BFFLL || v5 == 0x4EA6AE41372665ADLL;
  return (*(a1 + 8 * ((v8 * (((v4 - 1983219728) & 0x76356E3F) + 298 * (v4 ^ 0x1E33) - 16242)) ^ v4)))();
}

uint64_t sub_1003792A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1800] = v4;
  STACK[0x1840] = v2;
  STACK[0x1000] = 0;
  v8 = a2 != v5 && v2 != 0x6925162F5D8E3BFFLL && v4 != 0x4EA6AE41372665ADLL;
  return (*(a1 + 8 * ((v8 * (v3 ^ 0x1315 ^ (v3 - 1894607912) & 0x70ED7F5E)) ^ v3)))();
}

uint64_t sub_100379328@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1C68] = 0x4761F68478C333F5;
  STACK[0x1B60] = 0;
  STACK[0x1258] = 0x59645178C1F596E7;
  return (*(a1 + 8 * ((((v2 - 3784) ^ (v2 - 12229) ^ 0x2F12) * (a2 == 0xAB5C364D9808152)) ^ v2)))();
}

uint64_t sub_1003793A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1840] - 0x6925162F5D8E3BFFLL) = 0;
  *(STACK[0x1800] - 0x4EA6AE41372665ADLL) = v4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003794F4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = v2;
  STACK[0x18E0] = STACK[0x418];
  LODWORD(STACK[0x7D4]) = 1681584440;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_100379810()
{
  v0 = STACK[0x798] - 7315;
  *(STACK[0xCA0] - 0x4576AA59CFD25DBCLL) = STACK[0x2788];
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_100379B34@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x880];
  v3 = STACK[0xD08] - 0x4120F47AB517F61DLL;
  STACK[0x1FB0] = v3;
  STACK[0x1B80] = v2;
  v5 = v2 == 0x270676553BF336C1 || v3 == 0;
  return (*(a1 + 8 * ((v5 * (((a2 - 950032483) & 0x38A07FDE ^ 0xFFFFE5C8) + 123 * (a2 ^ 0x13B4))) ^ a2)))();
}

uint64_t sub_100379BCC()
{
  v4 = *(v1 - 0x270676553BF336B9);
  STACK[0x1108] = v2;
  STACK[0x1B18] = 0x4761F68478C333F5;
  LODWORD(STACK[0x1054]) = v3;
  STACK[0x16F0] = 0x48397223F586CF49;
  return (*(STACK[0x7B8] + 8 * (((v4 == 0xAB5C364D9808152) * ((v0 ^ 0x2E78) - 17020 + ((v0 + 4280) | 0x154))) | v0)))();
}

uint64_t sub_100379C64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43)
{
  STACK[0x1A90] = a4;
  LODWORD(STACK[0xCDC]) = 1411472813;
  STACK[0x18E0] = a43;
  LODWORD(STACK[0x7D4]) = 1681584398;
  return (*(v44 + 8 * v43))(1141409555, a1, v44, a2, a3, STACK[0x728], 4232069604);
}

uint64_t sub_100379D44@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x1B18] - 0x4761F68478C333DDLL);
  STACK[0x18C0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((a1 - 15236) | 0x3A58) ^ 0x3B60)) ^ a1)))();
}

uint64_t sub_100379DA8@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + ((3 * ((a1 - 12985) ^ 0x1A1Bu) + 0x1C40D822B110CD3ELL) ^ ((a1 - 8568) | 0x204Cu));
  STACK[0x2758] = v3;
  v4 = STACK[0x16F0];
  STACK[0x2760] = STACK[0x16F0];
  return (*(v2 + 8 * ((15037 * (v3 - v4 + 0x2BF89A012B78321FLL < 0xFFFFFFFFFFFFFFF6)) ^ (a1 - 12985))))();
}

uint64_t sub_100379E78()
{
  v3 = *(STACK[0x1B80] - 0x270676553BF336C1);
  v4 = STACK[0x1FB0];
  STACK[0x7F8] = STACK[0x1FB0];
  STACK[0xA18] = 0x4761F68478C333F5;
  LODWORD(STACK[0x89C]) = v1;
  STACK[0xA30] = 0x3CB628EEECDAB99ALL;
  v6 = v3 == 0xAB5C364D9808152 || v4 == 0;
  return (*(v2 + 8 * ((14 * ((((v0 - 13364) ^ v6) & 1) == 0)) ^ (v0 - 10987))))();
}

uint64_t sub_100379F1C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1A90] = a1;
  LODWORD(STACK[0xCDC]) = 1411472813;
  STACK[0x18E0] = STACK[0x2E8];
  LODWORD(STACK[0x7D4]) = 1681584419;
  return (*(STACK[0x7B8] + 8 * v1))(1141409555);
}

uint64_t sub_100379FE0@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0xA18] - 0x4761F68478C333DDLL);
  STACK[0x1A80] = v1;
  return (*(STACK[0x7B8] + 8 * (((v1 != 0) * ((a1 ^ 0x7F29) - 14971)) ^ a1)))();
}

uint64_t sub_10037A048@<X0>(int a1@<W8>)
{
  v2 = (a1 - 17491) | 0x759;
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x5EAFB5DC972894BELL;
  STACK[0x2768] = v3;
  v4 = STACK[0xA30];
  STACK[0x2770] = STACK[0xA30];
  return (*(STACK[0x7B8] + 8 * ((17501 * (v3 - v4 - 0x21F98CEDC34B448CLL < (v2 ^ 0x3C23u) - 15208)) ^ v2)))();
}

uint64_t sub_10037A158@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0x1A68] - 0x4761F68478C333DDLL);
  STACK[0xA00] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((a2 + 1718903402) & 0x998BBD9F ^ 0x3983)) ^ a2)))();
}

uint64_t sub_10037A1C4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = a2 + 4;
  v4 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x4486710A47EC4E5CLL;
  STACK[0x2778] = v4;
  v5 = STACK[0xAB8];
  STACK[0x2780] = STACK[0xAB8];
  return (*(a1 + 8 * (v3 | (8 * (v4 - v5 + ((v3 + 663823982) & 0xD86EFB5E ^ 0xD4E2E14543A6EEA2) >= ((v3 + 8198) ^ 0xFFFFFFFFFFFFC661))))))();
}

uint64_t sub_10037A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0xCA0] - 0x4576AA59CFD25DBCLL) = 0;
  *STACK[0x1C60] = v4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037A2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 - 0x270676553BF336C1);
  STACK[0x1970] = v3;
  STACK[0x1598] = 0;
  v9 = v7 == v6 || v3 == 0x4576AA59CFD25DBCLL;
  return (*(a3 + 8 * ((v9 * ((((v5 - 2856) | 0x201) - 8264) ^ 0x626)) ^ v5)))();
}

uint64_t sub_10037A314@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x1790] = 0x4761F68478C333F5;
  STACK[0x1D10] = 0xB9339FBE21E8C0ALL;
  return (*(a1 + 8 * ((((v2 ^ 0x20EF) - 1792) * (a2 == 0xAB5C364D9808152)) ^ v2)))();
}

uint64_t sub_10037A378@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -1969598551;
  STACK[0x18E0] = a37;
  LODWORD(STACK[0x7D4]) = 1681584418;
  return (*(a1 + 8 * v37))(1141409555);
}

uint64_t sub_10037A474@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0x1790] - 0x4761F68478C333DDLL);
  STACK[0x8F0] = v2;
  return (*(a1 + 8 * ((((a2 ^ (v2 == 0)) & 1) * ((a2 - 3899) ^ 0xCA3)) ^ a2)))();
}

uint64_t sub_10037A4DC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = a2 ^ 0x3C3E;
  v4 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x17298E40259DBB89;
  STACK[0x2798] = v4;
  v5 = STACK[0x1D10];
  STACK[0x27A0] = STACK[0x1D10];
  return (*(a1 + 8 * ((2987 * (v4 - v5 + ((v3 + 4975) ^ 0xF469ABBBA3835C47) < ((v3 - 624577073) & 0x253A2ED7 ^ 0xFFFFFFFFFFFFF360))) ^ v3)))();
}

uint64_t sub_10037A5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1970] - 0x4576AA59CFD25DBCLL) = 0;
  *STACK[0x1C60] = v4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 ^ 0x4FDA)))(LODWORD(STACK[0xCC8]) ^ v4);
  v6 = STACK[0x7B8];
  v7 = STACK[0xD08];
  *(v7 - 0x4120F47AB517F9E9) = v5;
  *(v7 - 0x4120F47AB517F63DLL) = STACK[0xCC8];
  STACK[0x2210] = *(v6 + 8 * v3);
  return (*(v6 + 8 * (v3 ^ 0x95F)))();
}

uint64_t sub_10037A790@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = STACK[0xD08];
  *(v4 - 0x4120F47AB517F9E9) = 0;
  *(v4 - 0x4120F47AB517F63DLL) = v3;
  return (*(a1 + 8 * (a2 ^ v2)))();
}

uint64_t sub_10037A8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (LODWORD(STACK[0xA7C]) ^ v4) - (((LODWORD(STACK[0xA7C]) ^ v4) << (v3 - 18)) & 0xB9CA3D0E) + 1558519431;
  v6 = ((2 * v5) & 0x7FFF7C36 ^ 0x39CA3C06) + (v5 ^ 0xE31AA09C) + 2146425344 != 1072666651;
  return (*(a3 + 8 * ((4 * v6) | (8 * v6) | v3)))((v3 - 9109));
}

uint64_t sub_10037AB3C()
{
  v6 = (v5 - 2055540790);
  v7 = *(v3 + v6);
  v8 = v2 + v6;
  v9 = -927196479 * (((-927196479 * v8) >> (((v1 + 57) & 0x5F) - 3)) ^ (-927196479 * v8));
  v10 = STACK[0x7B8];
  *(v8 - 0x374C0BFB7E28CD93) = v7 ^ *(STACK[0x458] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x468] + 5) ^ *((v9 >> 24) + STACK[0x460] + 1) ^ v9 ^ (27 * ((-927196479 * (((-927196479 * v8) >> (((v1 + 57) & 0x5F) - 3)) ^ (-927196479 * v8))) >> 24)) ^ 0x12;
  return (*(v10 + 8 * (((v5 - 1 == v0) * v4) ^ v1)))();
}

uint64_t sub_10037AC58(int a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, char a6, int a7, int a8)
{
  v11 = v9 + a3;
  v12 = *(v11 - 31);
  v13 = v8 + a3;
  *(v13 - 15) = *(v11 - 15);
  *(v13 - 31) = v12;
  return (*(v10 + 8 * (((a7 & ~((a5 | a4) >> a6)) * a8) ^ a1)))();
}

uint64_t sub_10037AD74@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 0x4120F47AB517F614) = STACK[0x15C4];
  *(a3 - 0x4120F47AB517F615) = a1 - 126 + LOBYTE(STACK[0x91C]) - ((2 * LOBYTE(STACK[0x91C])) & 0xE8) - 12;
  *(a3 - 0x4120F47AB517F661) = LODWORD(STACK[0x1D44]) + v4 - ((2 * LODWORD(STACK[0x1D44])) & 0x6C2A3B96);
  STACK[0x1980] = *(v3 + 8 * a1);
  return (*(v3 + 8 * (a1 + 4210)))(1141409555, a2, v3);
}

uint64_t sub_10037AEAC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1E68] = *(a1 + 8 * a2);
  STACK[0xCD0] = v3;
  LODWORD(STACK[0x119C]) = 0;
  LODWORD(STACK[0xCCC]) = 0;
  STACK[0x1A20] = 0x270676553BF336C1;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || v5 == (v2 ^ 0x8E3) - 1240145299;
  return (*(a1 + 8 * ((77 * (((v2 + 60) ^ v8) & 1)) ^ v2)))();
}

uint64_t sub_10037AF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1788] = v6;
  LODWORD(STACK[0x18BC]) = v5;
  v7 = STACK[0x1340];
  STACK[0xB70] = &STACK[0x2A60] + STACK[0x1340];
  STACK[0x1340] = ((v3 - 1730086284) & 0x671EF5FB) + v7 - 13370;
  STACK[0x2178] = v4;
  STACK[0xB10] = 0;
  STACK[0xA08] = 0;
  STACK[0x1518] = 0;
  LODWORD(STACK[0xAB4]) = -1240130101;
  LODWORD(STACK[0xB94]) = 0;
  STACK[0xCB0] = 0x5AB679E9A06C14EALL;
  STACK[0xF60] = 0;
  LODWORD(STACK[0x2034]) = -1240130101;
  v8 = (*(a3 + 8 * (v3 ^ 0x9AD)))();
  v11 = v6 == 0x5CBFB01FE227C14ALL || v4 == 0 || v5 == -1240130101;
  return (*(STACK[0x7B8] + 8 * ((v11 * (v3 - 15579)) ^ v3)))(v8);
}

uint64_t sub_10037B058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x7E0Cu)))(128);
  v5 = STACK[0x7B8];
  STACK[0x1850] = v4 + 0x270676553BF336C1;
  return (*(v5 + 8 * (((v4 == 0) * ((((v3 - 755178588) & 0x2D02FB6F) + 10240) ^ (6 * (v3 ^ 0x3DBF)))) ^ v3)))();
}

uint64_t sub_10037B224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 17112)))(112);
  v5 = STACK[0x7B8];
  STACK[0x1D68] = v4 + 0x5AB679E9A06C14EALL;
  return (*(v5 + 8 * ((250 * (((v4 == 0) ^ (v3 + 1)) & 1)) ^ v3)))();
}

uint64_t sub_10037B2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 320605855;
  *(a1 + 4) = 716240777;
  *(a1 + 72) = 0x49836E4B49836E4BLL;
  *(a1 + 80) = 545;
  *(a1 + 8) = 0x1212121212121212;
  *(a1 + 16) = 0x1212121212121212;
  *(a1 + 24) = 0x1212121212121212;
  *(a1 + 32) = 0x1212121212121212;
  *(a1 + 40) = 0x1212121212121212;
  *(a1 + 48) = 0x1212121212121212;
  *(a1 + 56) = 0x1212121212121212;
  *(a1 + 64) = 0x1212121212121212;
  v5 = STACK[0x1D68];
  *(v5 - 0x5AB679E9A06C1496) = -1125453800;
  *(v5 - 0x5AB679E9A06C1482) = 49289790;
  *(v5 - 0x5AB679E9A06C1492) = 0x1212121212121212;
  *(v5 - 0x5AB679E9A06C148ALL) = 0x1212121212121212;
  *(v5 - 0x5AB679E9A06C147ELL) = 28;
  *(v3 - 0x26E49573C00BC3B6) = v5;
  return (*(a3 + 8 * ((v4 - 1366) | 0x2111)))();
}

uint64_t sub_10037B4E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 - 0x270676553BF336B1) = *(v3 - 0x5AB679E9A06C14EALL);
  *(a2 - 0x270676553BF33669) = *(v3 - 0x5AB679E9A06C14A2);
  *(a2 - 0x270676553BF33665) = *(v3 - 0x5AB679E9A06C149ELL);
  *(a2 - 0x270676553BF33661) = *(v3 - 0x5AB679E9A06C149ALL);
  *(a2 - 0x270676553BF33660) = *(v3 - 0x5AB679E9A06C1499);
  *(a2 - 0x270676553BF33649) = *(v3 - 0x5AB679E9A06C1482);
  *(a2 - 0x270676553BF3365DLL) = *(v3 - 0x5AB679E9A06C1496);
  *(a2 - 0x270676553BF33645) = *(v3 - 0x5AB679E9A06C147ELL) & 1 ^ 0x27;
  return (*(a1 + 8 * (v2 - 7797)))();
}

uint64_t sub_10037B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v18 = (v9 + v8) & 0xF;
  *(a4 + v9) = *(a5 + v9) ^ (-63 * v18) ^ *(*(v17 + 8 * a6) + a7 + v18) ^ *(*(v17 + 8 * a8) + v12 + v18) ^ *(v11 + v18 + *(v17 + 8 * v13) + v14 - 3567) ^ v15;
  return (*(v16 + 8 * (v10 | (16 * (v9 == -31)))))();
}

uint64_t sub_10037B7F4@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + 0x270676553BF33659;
  v10 = (v1 + v3 - 0x33B003946478DE39) < 0x10 || (v1 + 0x270676553BF33659 + *(v4 + 8 * (v2 - 11595)) - 453888039) < 0x10 || (v6 + *(v4 + 8 * (v2 - 11482)) - 1137891790) < 0x10 || (v6 + *(v4 + 8 * (v2 & 0x1A85C00B)) - 953913542) < 0x10;
  return (*(v5 + 8 * ((v10 * (((v2 - 1129) | 0x480) ^ 0x2D69)) ^ v2)))(a1 - 0x270676553BF33659);
}

uint64_t sub_10037B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(v6 - 0x5AB679E9A06C14E6);
  *(a5 - 0x270676553BF336ADLL) = v8;
  return (*(v7 + 8 * (((v8 == v5 + 716236451) * (v5 - 857)) ^ v5)))(a1, a2, v7, a3, a4, STACK[0x728], 4232069604);
}

uint64_t sub_10037BB7C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v3 - 0x270676553BF336B9) = a1 + 0xAB5C364D9808152;
  return (*(a3 + 8 * ((((((v4 & 0xAE6677A5) + 1578584058) & 0xA1E8BFDE) - 15178) * (v3 == 0x270676553BF336C1)) ^ v4 & 0xAE6677A5)))();
}

uint64_t sub_10037BC18@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = a2 + 891;
  v3 = ((a2 + 123) ^ 0x5E) - 15;
  v4 = (*(a1 + 8 * (a2 + 5841)))(16);
  return (*(STACK[0x7B8] + 8 * ((2 * ((v3 ^ (v4 == 0)) & 1)) & 0xDF | (32 * ((v3 ^ (v4 == 0)) & 1)) | v2)))();
}

uint64_t sub_10037BC98(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *v3 = a1 + 0xAB5C364D9808152;
  return (*(a3 + 8 * ((5381 * (v4 <= ((v4 + v5) | 0x142) + 1475495745)) ^ (v4 - 2004276322))))();
}

uint64_t sub_10037BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x2178];
  STACK[0x7E8] = STACK[0x1850] + 0x4FFC2E04CB16379BLL;
  STACK[0x9C0] = v4;
  LODWORD(STACK[0x206C]) = STACK[0x18BC];
  LODWORD(STACK[0x1494]) = 1542395457;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037BDEC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *STACK[0x1328] = STACK[0xD08];
  LODWORD(STACK[0x1BA4]) = -1418238986;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_10037BE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x798] - 3318;
  LODWORD(STACK[0x1BA4]) = v3;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_10037BE8C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x5188)))(a2 - 0x4120F47AB517FA21);
  v4 = STACK[0x7B8];
  STACK[0xD08] = 0x4120F47AB517FA21;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_10037BF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x710D)))();
  v5 = STACK[0x7B8];
  STACK[0x2070] = 0;
  return (*(v5 + 8 * (v3 - 10257)))(v4);
}

uint64_t sub_10037BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 3829)))();
  v5 = STACK[0x7B8];
  STACK[0xD88] = 0;
  return (*(v5 + 8 * (v3 - 8623)))(v4);
}

uint64_t sub_10037BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x710D)))();
  v5 = STACK[0x7B8];
  STACK[0xC90] = 0;
  return (*(v5 + 8 * (v3 - 12222)))(v4);
}

uint64_t sub_10037C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 ^ 0x710D)))();
  v5 = STACK[0x7B8];
  STACK[0xAA0] = 0;
  return (*(v5 + 8 * (v3 - 5701)))(v4);
}

uint64_t sub_10037C06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8 * (v3 + 3829)))();
  v5 = STACK[0x7B8];
  STACK[0x1708] = 0;
  return (*(v5 + 8 * (v3 - 6490)))(v4);
}

uint64_t sub_10037C174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 0x5CBFB01FE227C14ALL);
  STACK[0xE88] = v5;
  return (*(a3 + 8 * (((v5 == 0x270676553BF336C1) * ((v4 ^ 0x3BC6) + 3000 + 102 * (v4 ^ 0x3BC6) - 18290)) ^ v4)))();
}

uint64_t sub_10037C1D4@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W8>)
{
  STACK[0x12C0] = v3 + 0x4FFC2E04CB1637A3;
  LODWORD(STACK[0x1FFC]) = a1 + 8;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_10037C244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 12014;
  STACK[0x1850] = 0x270676553BF336C1;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037C2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 8892;
  STACK[0x1F60] = 0x270676553BF336C1;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037C38C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x270676553BF336C1);
  STACK[0xFD8] = 0x4761F68478C333F5;
  STACK[0x19B0] = 0x1F185EAD1C7D6F80;
  return (*(a1 + 8 * (((v3 == 0xAB5C364D9808152) * ((((v2 ^ 0x1B59) - 699) ^ 0xFFFFC3D9) + 6 * (v2 ^ 0x1B59))) ^ v2)))();
}

uint64_t sub_10037C424@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = -365885575;
  STACK[0x18E0] = a50;
  LODWORD(STACK[0x7D4]) = 1681584417;
  return (*(a1 + 8 * v50))();
}

uint64_t sub_10037C4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0xFD8] - 0x4761F68478C333DDLL);
  STACK[0x1698] = v4;
  return (*(a3 + 8 * (((v4 != 0) * (((5 * (v3 ^ 0x4447)) ^ 0x29B3) - 15156)) ^ v3)))();
}

uint64_t sub_10037C54C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x11060548A7182676;
  STACK[0x27B8] = v3;
  v4 = STACK[0x19B0];
  STACK[0x27C0] = STACK[0x19B0];
  return (*(a1 + 8 * (((v3 - v4 + 0xE1259645C67DFA2 < 0xFFFFFFFFFFFFFFF6) * ((34 * (a2 ^ 0x1352) + 679395456) & 0xD7813F7E ^ 0x6F3)) ^ a2)))();
}

uint64_t sub_10037C9A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x7A0]) = -960066777;
  STACK[0x760] = a2 - 0x270676553BF336A9;
  STACK[0x780] = STACK[0xB70];
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10037CB84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x270676553BF336C1);
  STACK[0x1998] = 0x4761F68478C333F5;
  STACK[0x14E0] = 0x5E9E3EF775582257;
  return (*(a1 + 8 * (((v3 == 0xAB5C364D9808152) * ((v2 - 13364) ^ 0x7BA)) ^ (v2 - 11080))))();
}

uint64_t sub_10037CC0C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 1262304268;
  STACK[0x18E0] = a65;
  LODWORD(STACK[0x7D4]) = 1681584416;
  return (*(a1 + 8 * v65))();
}

uint64_t sub_10037CCB4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = *(STACK[0x1998] - 0x4761F68478C333DDLL);
  STACK[0x1DA0] = v2;
  return (*(a1 + 8 * (((((a2 + 126) ^ (v2 == 0)) & 1) == 0) | (((((a2 + 126) ^ (v2 == 0)) & 1) == 0) << 6) | a2)))();
}

uint64_t sub_10037CD2C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = 94 * (a2 ^ 0x27AD);
  v4 = (v2 | ((v2 < 0x18FD695E) << 32)) + (((v3 + 8842) | 0x84Eu) ^ 0x41E40F8B191DE1A5);
  STACK[0x27C8] = v4;
  v5 = STACK[0x14E0];
  STACK[0x27D0] = STACK[0x14E0];
  return (*(a1 + 8 * (((v4 - v5 + 0x1CBA2F6C433CDDF4 < 0xFFFFFFFFFFFFFFF6) * (v3 + 8170)) ^ v3)))();
}

uint64_t sub_10037CEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x270676553BF336C1);
  STACK[0x1368] = 0x4761F68478C333F5;
  STACK[0x7E0] = 0x5BF1317B6371F38FLL;
  return (*(a3 + 8 * (((v5 == 0xAB5C364D9808152) * ((v3 - 688580455) & 0x290AB7FE ^ 0x71B)) ^ v3)))();
}

uint64_t sub_10037CF40@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = 1328047355;
  STACK[0x18E0] = a33;
  LODWORD(STACK[0x7D4]) = 1681584423;
  return (*(a1 + 8 * v33))(1141409555);
}

uint64_t sub_10037CFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 | 0x514;
  v5 = (*(a3 + 8 * ((v3 | 0x514) ^ 0xF28)))(16);
  return (*(STACK[0x7B8] + 8 * (((v5 == 0) * ((298 * (v4 ^ 0x454D) + 1086293025) & 0xBF404CF0 ^ 0xCA6)) ^ v4)))();
}

uint64_t sub_10037D068(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v4 - 0x270676553BF336B9) = a1 + 0xAB5C364D9808152;
  LODWORD(STACK[0x145C]) = -1418238986;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037D0C4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (a2 - 14369) | 0x28E7;
  STACK[0x808] = v2 - 0x270676553BF336B9;
  v4 = STACK[0x1518];
  LODWORD(STACK[0xE34]) = STACK[0xAB4];
  STACK[0x1780] = v4;
  STACK[0x2158] = 0x35618A149F79ECD1;
  LODWORD(STACK[0xC64]) = -1240130101;
  STACK[0x1120] = 0x7643118333A2D791;
  STACK[0x1B30] = 0;
  v5 = (*(a1 + 8 * (v3 + 4207)))(16);
  v6 = STACK[0x7B8];
  STACK[0xBF8] = v5 + 0xAB5C364D9808152;
  return (*(v6 + 8 * (((v5 == 0) * (v3 - 29061 + ((v3 - 1770355209) & 0x69857B7F))) ^ v3)))();
}

uint64_t sub_10037D1D0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1368] - 0x4761F68478C333DDLL);
  STACK[0xBA8] = v4;
  return (*(a3 + 8 * (((v4 != 0) * ((v3 - 3114) ^ (v3 - 3118))) ^ v3)))();
}

uint64_t sub_10037D2AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x2EE487559357A2C0;
  STACK[0x27D8] = v3;
  v4 = STACK[0x7E0];
  STACK[0x27E0] = STACK[0x7E0];
  return (*(a1 + 8 * ((15120 * (((((a2 | ((a2 ^ 9) << 32)) ^ (v3 - v4 + 0x2D0CAA25B71CE767)) & (a2 | ((a2 ^ 9) << 32))) >> (__clz((a2 | ((a2 ^ 9) << 32)) ^ (v3 - v4 + 0x2D0CAA25B71CE767) | 1) ^ 0x3Fu)) & 1)) ^ (a2 + 7895))))();
}

uint64_t sub_10037D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x14B0] - 0x4761F68478C333DDLL);
  STACK[0x18D8] = v4;
  return (*(a3 + 8 * (((((149 * (v3 ^ 0x1EAB) - 606552929) & 0x24274DAA) - 17796) * (v4 != 0)) ^ v3)))();
}

uint64_t sub_10037D470@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < ((a2 + 982792790) & 0x456BBB5F ^ 0x18FD5200)) << 32)) + 0x3A10459B12EC8FB1;
  STACK[0x27E8] = v3;
  v4 = STACK[0x1C80];
  STACK[0x27F0] = STACK[0x1C80];
  return (*(a1 + 8 * ((911 * ((a2 ^ 0x392C1D50CCB6EAF8) - v4 + v3 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_10037D5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x1780];
  STACK[0x1410] = STACK[0x1780];
  return (*(a3 + 8 * ((200 * ((((v3 - 8498) ^ 0xFFFFF3BB ^ (v4 == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_10037D648@<X0>(uint64_t a1@<X8>)
{
  v3 = ((2 * v1) & 0x17326E5B6) + (v1 ^ 0xFFFDAEEFB99372DBLL);
  STACK[0x27F8] = v3 + 0x5BDFDFF7E6FD8F65;
  STACK[0x2800] = v2;
  return (*(STACK[0x7B8] + 8 * ((15175 * ((((a1 | ((a1 + 9) << 32) | (v3 - v2 + 0x3563DB24E5E679ECLL)) - (v3 - v2 + 0x3563DB24E5E679ECLL)) | (v3 - v2 + 0x3563DB24E5E679ECLL - (a1 | ((a1 + 9) << 32))) & ~((v3 - v2 + 0x3563DB24E5E679ECLL) ^ (a1 | ((a1 + 9) << 32)))) >> 63)) ^ (a1 + 3643))))();
}

uint64_t sub_10037D8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x2120] = STACK[0x1850];
  STACK[0x1C08] = *(a3 + 8 * v3);
  return (*(a3 + 8 * ((((v3 - 1199) | 0x27F4) ^ 0x2935) + v3)))(1141409555);
}

uint64_t sub_10037DA20()
{
  v1 = STACK[0x1ED0];
  v2 = *(STACK[0x1ED0] - 0x4761F68478C333EDLL);
  v3 = STACK[0x1E88];
  *(v3 - 0x4761F68478C333EDLL) = v2;
  *(v3 - 0x4761F68478C333F5) = *(v1 - 0x4761F68478C333F5);
  return (*(STACK[0x7B8] + 8 * ((41 * ((((v0 - 12510) ^ (v0 - 16004) ^ (v2 == 0x4761F68478C333F5)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_10037DC84()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x676D)))();
  v3 = STACK[0x7B8];
  *(STACK[0x1ED0] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * v1))(v2);
}

uint64_t sub_10037DD10@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x7B8];
  v3 = (*(STACK[0x7B8] + 8 * (v1 ^ 0x6779)))(a1 - 0x4761F68478C333F5);
  STACK[0x1ED0] = 0x4761F68478C333F5;
  return (*(v2 + 8 * (((LODWORD(STACK[0xEC0]) == -1418238986) * (((v1 + 2140918224) & 0x8064312D) + 16186)) ^ v1)))(v3);
}

uint64_t sub_10037DE54@<X0>(void *a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_10037DEFC()
{
  v3 = (*(v0 + 8 * (v2 + 9280)))();
  v4 = STACK[0x7B8];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_10037DF88()
{
  v2 = STACK[0x7B8];
  v3 = (*(STACK[0x7B8] + 8 * (v1 + 15394)))(v0 - 0x4761F68478C333F5);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10037DFC8()
{
  LODWORD(STACK[0x21A4]) = v1;
  STACK[0x16B8] = STACK[0xBF8];
  STACK[0x12C0] = STACK[0x410];
  LODWORD(STACK[0x1FFC]) = 1141409561;
  return (*(STACK[0x7B8] + 8 * v0))();
}

uint64_t sub_10037E0B0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0x1ECC]) = v2;
  STACK[0x20E8] = v3;
  STACK[0x17D8] = a2;
  v6 = a2 == 0x270676553BF336C1 || v3 == 0;
  return (*(a1 + 8 * (((((v4 - 1) ^ v6) & 1) * (((v4 - 4607) | 0x310) ^ 0x32E)) ^ v4)))();
}

uint64_t sub_10037E1FC@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v6 = *a2;
  STACK[0xD10] = *(a1 + 8 * v3);
  STACK[0xFE8] = v2;
  STACK[0x1310] = 0x4761F68478C333F5;
  STACK[0xAF8] = 0x7643118333A2D791;
  STACK[0x10A0] = 0x6528FA664AB6DF78;
  v8 = v6 == v5 || v2 == 0;
  return (*(a1 + 8 * ((v8 * (((2 * v4) ^ 0x40DE) + 102 * (v4 ^ 0x236F) - 14991)) ^ v4)))();
}

uint64_t sub_10037E374@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = v2;
  STACK[0x18E0] = STACK[0x4B0];
  LODWORD(STACK[0x7D4]) = 1681584430;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10037E484()
{
  v1 = *(STACK[0x1310] - 0x4761F68478C333DDLL);
  STACK[0xCF8] = v1;
  return (*(STACK[0x7B8] + 8 * (((v1 == 0) * (((v0 - 2951) ^ 0xFFFFEDE0) + ((v0 - 2951) | 0x1210))) ^ v0)))();
}

uint64_t sub_10037E4F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 ^ 0x3046;
  v3 = (a1 | ((a1 < (((v1 ^ 0x3046) + 138144437) & 0xF7C3FFFF ^ 0x18FD6AE3)) << 32)) + 0x304430B5486A2BFBLL;
  STACK[0x2828] = v3;
  v4 = STACK[0x10A0];
  STACK[0x2830] = STACK[0x10A0];
  return (*(STACK[0x7B8] + 8 * ((14426 * (v3 - v4 + 0x34E4C9B0E94F4A15 < (v2 + 8790) - 15208)) ^ v2)))();
}

uint64_t sub_10037E608@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x21DC]) = v2;
  STACK[0x15D8] = v4;
  STACK[0xB18] = v3;
  v6 = v3 != 0x270676553BF336C1 && v4 != 0x5CDC3C0A939360E4;
  return (*(a1 + 8 * ((v6 * ((a2 - 14285) ^ 0x3BD1 ^ ((a2 - 11739) | 0x304A))) ^ a2)))();
}

uint64_t sub_10037E6DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x10C8] = v2;
  STACK[0xA68] = 0x4761F68478C333F5;
  LODWORD(STACK[0x21EC]) = v5;
  STACK[0xC88] = 0x29941F82EDD26341;
  v7 = a2 == v4 || v2 == 0x5CDC3C0A939360E4;
  return (*(a1 + 8 * ((((v3 ^ v7) & 1) * ((v3 - 1203954726) & 0x47C2D77A ^ 0x70E)) ^ v3)))();
}

uint64_t sub_10037E76C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = v2;
  STACK[0x18E0] = STACK[0x4B8];
  LODWORD(STACK[0x7D4]) = 1681584429;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10037E8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 14328;
  v4 = (STACK[0x798] - 8987) | 0x20AC;
  STACK[0x1A88] = *(a3 + 8 * v3);
  return (*(a3 + 8 * ((v4 - 12458) ^ v3)))();
}

uint64_t sub_10037E958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0xCD0] + 8) = STACK[0xCD0] + 0xB3C366FCAC564A0;
  LODWORD(STACK[0x928]) = 438907493;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10037E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0xA68] - 0x4761F68478C333DDLL);
  STACK[0x1CD0] = v4;
  return (*(a3 + 8 * (((v4 == 0) * (((v3 - 4049) ^ 0xFFFFC4A8) - 15156)) ^ v3)))();
}

uint64_t sub_10037EA58@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x458F3180659036DALL;
  STACK[0x2838] = v3;
  v4 = STACK[0xC88];
  STACK[0x2840] = STACK[0xC88];
  v5 = ((a2 | 9) << ((a2 - 66) ^ 0x94)) + a2;
  return (*(a1 + 8 * (a2 ^ 0xFFFFEC23 ^ (15174 * ((v5 & ~(v3 - v4 - 0x1BFB11FD90BB3D01) | (v5 | (v3 - v4 - 0x1BFB11FD90BB3D01) ^ (((a2 + 190) | 0x303) - 952)) & (v3 - v4 - 0x1BFB11FD90BB3D01 - v5)) >> 63)))))();
}

uint64_t sub_10037EBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 232) = v3 + 2054851651 * (((v4 - 232) & 0xA85AFD84 | ~((v4 - 232) | 0xA85AFD84)) ^ 0xDB0BAD5D) + 9192;
  v5 = (*(a3 + 8 * (v3 + 13934)))(v4 - 232);
  v6 = STACK[0x7B8];
  v7 = (v3 + 2212) ^ 0x437C8567 ^ *(v4 - 224);
  STACK[0x19B8] = *(STACK[0x1F60] - 0x270676553BF336B9);
  LODWORD(STACK[0x1B6C]) = 1082348533;
  LODWORD(STACK[0xFB8]) = v7;
  LODWORD(STACK[0x10D4]) = -2068341473;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10037ECC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1C68] - 0x4761F68478C333DDLL);
  STACK[0x1BB8] = v4;
  return (*(a3 + 8 * (((v4 == 0) * (v3 - 24272 + ((v3 + 1374737575) & 0xAE0EF77D))) ^ v3)))();
}

uint64_t sub_10037ED48@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + (((a2 - 4725) | 0x61u) ^ 0x3C51AA8956B9A4D9);
  STACK[0x2848] = v3;
  v4 = STACK[0x1258];
  STACK[0x2850] = STACK[0x1258];
  return (*(a1 + 8 * ((15728 * (v3 - v4 + 0x1D12A6EF523E85CFLL < (a2 ^ 0x3D5Au) - 10289)) ^ a2)))();
}

uint64_t sub_10037EE30@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x2864]) = v2;
  STACK[0x2868] = v4;
  v8 = a2 == v6 || v4 == v5;
  return (*(a1 + 8 * ((v8 * (((v3 - 14320) | 0x3A14) ^ 0x3B37)) ^ v3)))();
}

uint64_t sub_10037F21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  STACK[0x1238] = v5;
  return (*(a3 + 8 * (((v5 != 0x4761F68478C333F5) * (((v4 + 520323089) & 0xE0FC7CFE) - 14432)) ^ (v4 - 2168))))();
}

uint64_t sub_10037FAF0()
{
  v2 = *(STACK[0x1638] - 0x4761F68478C333DDLL);
  STACK[0xBC0] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 + 88)) & 1) * ((v0 + 303720714) & 0xEDE5BFDF ^ 0x363A)) ^ v0)))();
}

uint64_t sub_10037FB6C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 6487) | 0x100;
  v4 = (a1 | ((a1 < (((v3 - 10178) | 0x201) ^ ((v3 ^ 0x1E93u) + 419246854))) << 32)) + 0x5DB23B5A1A951296;
  STACK[0x2870] = v4;
  v5 = STACK[0x1010];
  STACK[0x2878] = STACK[0x1010];
  return (*(v2 + 8 * ((1296 * (v4 - v5 - 0x305C14E7C9797FE1 < 0xFFFFFFFFFFFFFFF6)) ^ v3)))();
}

uint64_t sub_10037FFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x1610] - 0x4761F68478C333DDLL);
  STACK[0xF00] = v4;
  return (*(a3 + 8 * (((v4 == 0) * ((v3 - 1588460447) ^ 0xA1520C28 ^ (v3 - 1588460447) & 0x5EADFF5E ^ 0xCD4)) ^ v3)))();
}

uint64_t sub_100380038@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < (((a2 - 13520) | 0xA0) ^ 0x18FD6AF9u)) << 32)) + 0x4C6DB4182C1C8D28;
  STACK[0x2880] = v3;
  v4 = STACK[0x1FC0];
  STACK[0x2888] = STACK[0x1FC0];
  return (*(a1 + 8 * (((v3 - v4 + 0x2ED5AC565C2B4DA1 < 0xFFFFFFFFFFFFFFF6) * (a2 + 16404)) ^ a2)))();
}

uint64_t sub_100380370@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 0x4761F68478C333F5) = v3;
  *(v3 - 0x4761F68478C333EDLL) = *(a1 + v2);
  *(a1 + v2) = v3;
  return (*(v5 + 8 * (v1 + 6314)))();
}

uint64_t sub_10038055C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x1AB0];
  v2 = *(STACK[0x1AB0] - 0x4761F68478C333EDLL);
  v3 = (a1 + 1418255686) | 0x200;
  v4 = STACK[0x1268];
  *(v4 - 0x4761F68478C333EDLL) = v2;
  *(v4 - 0x4761F68478C333F5) = *(v1 - 0x4761F68478C333F5);
  return (*(STACK[0x7B8] + 8 * ((112 * (((v3 - 111) ^ (v2 == 0x4761F68478C333F5)) & 1)) ^ v3)))();
}

uint64_t sub_1003807F0()
{
  v2 = (*(v0 + 8 * (v1 + 17188)))();
  v3 = STACK[0x7B8];
  *(STACK[0x1AB0] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * v1))(v2);
}

uint64_t sub_100380898@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x7B8];
  v4 = (*(STACK[0x7B8] + 8 * (v1 + 11468)))(a1 - 0x4761F68478C333F5);
  STACK[0x1AB0] = 0x4761F68478C333F5;
  return (*(v3 + 8 * (((LODWORD(STACK[0xC34]) == v2) * (((v1 + 9222) ^ 0x5703) + ((v1 + 9222) | 0x270) - 12260)) ^ v1)))(v4);
}

uint64_t sub_100380928@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0xAB5C364D9808152) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_100380964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x928];
  LODWORD(STACK[0x928]) += (v3 - 14674) ^ 0x7C5;
  return (*(a3 + 8 * ((83 * (v4 - 438909531 + ((v3 - 15088) | 0x1D1u) < 0x40)) ^ v3)))();
}

uint64_t sub_1003809E8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = STACK[0x1A20];
  LODWORD(STACK[0x964]) = ((v2 + 1720793689) & 0x996EAFD4 ^ 0xEF9C7B5B) + a2 - ((((v2 - 952) ^ 0x730E53F6) + 2 * a2) & v4);
  v6 = v3 + 4 * (a2 - 438907493);
  STACK[0xC80] = v6;
  STACK[0x1220] = v5;
  v8 = v5 == 0x270676553BF336C1 || v6 == 0xB3C366FCAC56490;
  return (*(a1 + 8 * ((127 * v8) ^ v2)))();
}

uint64_t sub_100380A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v5 - 0x270676553BF336B9);
  STACK[0xB58] = v4;
  STACK[0x1638] = 0x4761F68478C333F5;
  LODWORD(STACK[0x814]) = v7;
  STACK[0x1010] = 0x2D5626726A18FC1DLL;
  v10 = v8 != 0xAB5C364D9808152 && v4 != v6;
  return (*(a3 + 8 * ((v10 * ((((v3 + 2495) | 0x4D4) ^ 0xFFFFCF24) + (v3 ^ 0x2E6E))) ^ v3)))();
}

uint64_t sub_100380B34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X8>)
{
  STACK[0x1A90] = a4;
  LODWORD(STACK[0xCDC]) = v4;
  STACK[0x18E0] = STACK[0x430];
  LODWORD(STACK[0x7D4]) = 1681584414;
  return (*(v6 + 8 * v5))(1141409555, a1, v6, a2, a3, STACK[0x728], 4232069604);
}

uint64_t sub_100380BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(STACK[0x1220] - 0x270676553BF336C1);
  v8 = STACK[0xC80];
  STACK[0x2018] = STACK[0xC80];
  STACK[0x1610] = 0x4761F68478C333F5;
  LODWORD(STACK[0x1F14]) = -1240130101;
  STACK[0x1FC0] = 0x7B43606EA1454431;
  v10 = v7 == 0xAB5C364D9808152 || v8 == 0xB3C366FCAC56490;
  return (*(v6 + 8 * ((4038 * ((((v5 + 903) ^ v10) & 1) == 0)) ^ v5)))(1141409555, a2, v6, a4, a5, STACK[0x728], 4232069604);
}

uint64_t sub_100380C78@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x1A90] = a2;
  LODWORD(STACK[0xCDC]) = STACK[0x964];
  STACK[0x18E0] = STACK[0x3F0];
  LODWORD(STACK[0x7D4]) = 1681584396;
  return (*(a1 + 8 * ((v2 - 513034264) & 0x1E94176A)))();
}

uint64_t sub_100380D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v4 = LODWORD(STACK[0x119C]) + v5 - ((2 * LODWORD(STACK[0x119C])) & 0x6C2A3B96);
  v4[1] = LODWORD(STACK[0xCCC]) + ((v3 + 1786023944) & 0x958B6CFB ^ (v5 - 1179)) - ((2 * LODWORD(STACK[0xCCC])) & 0x6C2A3B96);
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100380DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x14D4]) = v4;
  STACK[0x1C08] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (v3 ^ 0x3078 ^ (v3 + 8956))))();
}

uint64_t sub_100380EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v5 + 12973)))();
  v7 = STACK[0x7B8];
  *(v3 + v4) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_100381128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0x6E58)))(v3);
  v6 = STACK[0x7B8];
  STACK[0x10D8] = 0;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_100381208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 10560)))();
  v6 = STACK[0x7B8];
  *v4 = 0;
  return (*(v6 + 8 * (v3 - 2632)))(v5);
}

uint64_t sub_10038127C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x17A8];
  v3 = STACK[0x1898];
  STACK[0x7E8] = STACK[0x4E8];
  STACK[0x9C0] = v2;
  LODWORD(STACK[0x206C]) = v3;
  LODWORD(STACK[0x1494]) = -589945929;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100381398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x19B8] = STACK[0x1DB8];
  LODWORD(STACK[0x1B6C]) = -815579951;
  LODWORD(STACK[0xFB8]) = STACK[0x189C];
  LODWORD(STACK[0x10D4]) = -1483311431;
  return (*(a3 + 8 * ((6109 * (v3 != -1221988315)) ^ (v3 - 1772298160))))();
}

uint64_t sub_100381488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAA8] = 0;
  STACK[0x1AD0] = *(STACK[0x988] - 0x270676553BF336B9);
  STACK[0x1940] = a48;
  STACK[0x1298] = a66;
  LODWORD(STACK[0xBDC]) = -1665418831;
  return (*(a3 + 8 * v66))();
}

uint64_t sub_1003814DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x1B28] = 0;
  STACK[0x18D0] = *(STACK[0x988] - 0x270676553BF336B9);
  STACK[0x1040] = a49;
  STACK[0x1680] = a66;
  LODWORD(STACK[0x1B20]) = 953756289;
  return (*(a3 + 8 * v66))();
}

uint64_t sub_1003815CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x15C8] = STACK[0x1DB8];
  LODWORD(STACK[0x87C]) = 1328047355;
  STACK[0x21C0] = v3;
  LODWORD(STACK[0x17F0]) = -1240130085;
  LODWORD(STACK[0x164C]) = 2014088543;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_100381698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v7 - 232) = v6 + 2054851651 * ((((v7 - 232) | 0xF390D162) - (v7 - 232) + ((v7 - 232) & 0xC6F2E98)) ^ 0x7F3E7E44) + 1814;
  v8 = (*(a3 + 8 * (v6 ^ 0x7AEC)))(v7 - 232);
  v9 = STACK[0x7B8];
  *(v5 + v3 - 1614972703) = *(v7 - 224) ^ (v6 + 110);
  return (*(v9 + 8 * (((2 * (((v5 == v4 + 15) ^ (v6 + 70)) & 1)) & 0xFB | (4 * (((v5 == v4 + 15) ^ (v6 + 70)) & 1))) ^ v6)))(v8);
}

uint64_t sub_100381768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (v7 - 529061307) & 0x1F88E79F;
  *(v4 - 1614977107 + 300 * (v8 ^ 0x4299u) + 2305) = (((v7 + 69) & 0x9F) - 105) ^ HIBYTE(v3) ^ 0xB1;
  return (*(a3 + 8 * (v8 ^ (42 * (v6 == v5 + 14)))))();
}

uint64_t sub_100381B08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v8 = 1901182499 * ((v7 - 232) ^ 0x4C1D87E2);
  v9 = (v7 - 232);
  v9[7] = ((v4 ^ 0x6CEAE234) + 1742451679 + ((v4 << (((v6 - 73) | 0x80) + 16)) & 0xB5FFFFFE ^ 0x242A3B96)) ^ v8;
  v9[8] = (v6 + 5853) ^ v8;
  *v9 = ((v3 ^ 0x5CAAE26C) + 2146365439 + ((2 * v3) & 0xD57FFF4E ^ 0x442A3B06)) ^ v8;
  *(v7 - 224) = a2;
  *(v7 - 216) = v5;
  *(v7 - 192) = v2;
  *(v7 - 184) = a2;
  v10 = (*(a1 + 8 * (v6 ^ 0x5D86)))(v7 - 232);
  return (*(STACK[0x7B8] + 8 * v6))(v10);
}

uint64_t sub_100381BF4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  v6 = STACK[0x988] + 0x51BCF095CB70AFBLL;
  v7 = -587088623 * *(STACK[0x988] - 0x270676553BF3365DLL) - 332567923;
  v8 = (v4 ^ 0xDE3 ^ *(STACK[0x988] - 0x270676553BF33649) ^ 0x4D0FFFA5) + ((2 * *(STACK[0x988] - 0x270676553BF33649)) & 0x9FFFDCD4 ^ 0x5E01454) - 69248522;
  STACK[0x29F8] = *(a1 + 8 * v4);
  LODWORD(STACK[0x2A00]) = v7;
  LODWORD(STACK[0x2A04]) = 853154850;
  STACK[0x2A08] = v6;
  LODWORD(STACK[0x2A10]) = v8;
  STACK[0x2A18] = v2;
  STACK[0x2A20] = a2;
  STACK[0x2A28] = a2;
  LODWORD(STACK[0x2A30]) = (v3 ^ 0x4BEACAB6) + 114096867 + ((2 * v3) & 0xFBFFAEFA ^ 0x682A2A92);
  *(v5 - 232) = &STACK[0x29F8];
  *(v5 - 220) = (v4 + 879788239) ^ (41492489 * ((((v5 - 232) | 0x487A54E2) - ((v5 - 232) & 0x487A54E2)) ^ 0xE92E5859));
  v9 = (*(a1 + 8 * (v4 ^ 0x4C52)))(v5 - 232);
  return (*(STACK[0x7B8] + 8 * (v4 + 4520)))(v9);
}

uint64_t sub_100381DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x15C8] = STACK[0x1DB8];
  LODWORD(STACK[0x87C]) = 1099992266;
  STACK[0x21C0] = v4;
  LODWORD(STACK[0x17F0]) = v5 + 32;
  LODWORD(STACK[0x164C]) = -2119928590;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100381E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x1B28];
  v6 = STACK[0x1DAC];
  STACK[0x15C8] = STACK[0x1DB8];
  LODWORD(STACK[0x87C]) = 1262304268;
  STACK[0x21C0] = v5;
  LODWORD(STACK[0x17F0]) = v6;
  LODWORD(STACK[0x164C]) = v4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100381F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xAA8];
  v5 = STACK[0x1DAC];
  STACK[0x15C8] = STACK[0x1DB8];
  LODWORD(STACK[0x87C]) = 1262304268;
  STACK[0x21C0] = v4;
  LODWORD(STACK[0x17F0]) = v5;
  LODWORD(STACK[0x164C]) = -1798028264;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10038217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + 6868;
  v6 = *(a3 + 8 * (v3 + 15983));
  STACK[0x780] = STACK[0x1C18];
  v7 = v6();
  v8 = STACK[0x7B8];
  STACK[0x760] = v4 - 0x270676553BF336A9;
  v9 = *(v8 + 8 * v5);
  LODWORD(STACK[0x7A0]) = 1789030517;
  return v9(v7);
}

uint64_t sub_100382250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x1AD0] = STACK[0x1DB8];
  STACK[0x1940] = a65;
  STACK[0x1298] = a64;
  LODWORD(STACK[0xBDC]) = -61604904;
  return (*(a3 + 8 * v65))();
}

uint64_t sub_1003822F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x1EE8] - 0x6F2905C845F27CA9) = STACK[0x848];
  *STACK[0x958] = v3 ^ 0x7BC ^ LODWORD(STACK[0x12FC]) ^ 0xB6151186;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100382350@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x103C]) = v2;
  STACK[0x12C0] = STACK[0x4E8];
  LODWORD(STACK[0x1FFC]) = 1141409564;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100382380@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0xCB8] = a2;
  LODWORD(STACK[0x1728]) = v4;
  STACK[0x2160] = v3;
  STACK[0x908] = 0x19292F0C15456F00;
  LODWORD(STACK[0x9F4]) = v2;
  STACK[0x1760] = 0x8C38D1834A63647;
  STACK[0x13D0] = 0;
  v6 = (*(a1 + 8 * (v5 ^ 0x6A04)))(16);
  v7 = STACK[0x7B8];
  STACK[0x1D50] = v6 + 0xAB5C364D9808152;
  return (*(v7 + 8 * (((v6 == 0) * ((((v5 - 6226) | 0x464) - 965) ^ 0x896)) | v5)))();
}

uint64_t sub_100382444(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003825C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v6 = (*(((2 * (v4 - 0x19292F0C15456EFALL)) & 0x3EEE7D7E7FF7D7CALL) + ((v4 - 0x19292F0C15456EFALL) ^ 0xDF773EBF3FFBEBE5) + a2 + 0x2088C140C004141BLL) << 24) | (*(((2 * (v4 - 0x19292F0C15456EFALL)) & 0x3EEE7D7E7FF7D7CALL) + ((v4 - 0x19292F0C15456EFALL) ^ 0xDF773EBF3FFBEBE5) + a2 + 0x2088C140C004141CLL) << 16) | (*(((2 * (v4 - 0x19292F0C15456EFALL)) & 0x3EEE7D7E7FF7D7CALL) + ((v4 - 0x19292F0C15456EFALL) ^ 0xDF773EBF3FFBEBE5) + a2 + 0x2088C140C004141DLL) << 8);
  v7 = *(((2 * (v4 - 0x19292F0C15456EFALL)) & 0x3EEE7D7E7FF7D7CALL) + ((v4 - 0x19292F0C15456EFALL) ^ 0xDF773EBF3FFBEBE5) + a2 + 0x2088C140C004141ELL);
  v8 = (((v6 | v7) + v5 - 2 * ((v6 | v7) & 0x36151DCF ^ v7 & 4)) ^ v5) + v4 - 0x19292F0B8DC4FF46;
  v9 = v3 - 0x7BBD94D7706266AFLL;
  v11 = v9 > 0x87806FAF && v8 > v9;
  return (*(a1 + 8 * ((83 * v11) ^ v2)))();
}

uint64_t sub_1003828FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v6 = *(a2 + (v3 ^ 0x2F66u ^ v4) + v5) << 56;
  v7 = (a2 + v5 + v2);
  v8 = v6 | (*v7 << 48) | (v7[1] << 40) | (v7[2] << 32) | (v7[3] << 24) | (v7[4] << 16) | (v7[5] << 8) | v7[6];
  STACK[0x1760] = v8 + 0x8C38D1834A63647 - ((2 * v8) & 0x11871A30694C6C8ELL);
  return (*(a1 + 8 * v3))();
}

uint64_t sub_100382CD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x13D0] = v2 + v6 + a2 - 1;
  STACK[0x908] = v3;
  return (*(a1 + 8 * (v5 ^ (v4 + 521) ^ ((((((v7 - v5) | (v5 - v7)) >> (-27 * (v5 ^ (v8 + 2)) - 63)) & 1) == 0) * (((v5 + 1240140881) | 0x1142) - 10555)))))();
}

uint64_t sub_100382DFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v7 = *(v5 + a2 + (v4 + 10022) - 0x19292F0C1545AA54) << 24;
  v8 = (a2 + v5 + v2);
  v9 = v7 | (*v8 << 16) | (v8[1] << 8);
  LODWORD(STACK[0x9F4]) = (v9 | v8[2]) + v6 - 2 * ((v9 | v8[2]) & v3 ^ v8[2] & 4);
  return (*(a1 + 8 * v4))();
}

uint64_t sub_100382E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4 - 9260;
  v8 = STACK[0x9F4];
  v9 = STACK[0x1760];
  v10 = STACK[0x13D0];
  STACK[0x1E80] = STACK[0x1D50];
  LODWORD(STACK[0x1B24]) = v5;
  LOWORD(STACK[0x1BB6]) = v3;
  LODWORD(STACK[0x1158]) = v6;
  LODWORD(STACK[0x173C]) = v8;
  STACK[0x1CD8] = v9;
  STACK[0xF68] = v10;
  LODWORD(STACK[0x16D4]) = 953200129;
  return (*(a3 + 8 * v7))();
}

uint64_t sub_100382F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x1E1C]) = v3;
  STACK[0x9B8] = STACK[0x1D50];
  STACK[0x12C0] = STACK[0x450];
  LODWORD(STACK[0x1FFC]) = 1141409555;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_100382F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v5 == 0x4120F47AB517FA21 || v4 == 0;
  STACK[0xBF0] = v5;
  return (*(a3 + 8 * ((v7 * ((((v3 + 4454) | 0x105) - 9420) ^ 0x11F0)) ^ v3)))();
}

uint64_t sub_100382FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 8 * (v4 ^ 0x7F8A)))(v3, 256);
  v8 = v6 + v7 - ((2 * v7 + 2) & 0x6C2A3B96) + 1;
  *(v5 - 0x4120F47AB517F619) = v8;
  v9 = (*(STACK[0x7B8] + 8 * (v4 + 5241)))(v8 ^ v6);
  v10 = STACK[0x7B8];
  *(v5 - 0x4120F47AB517F9D1) = v9;
  return (*(v10 + 8 * (((v9 == 0) * (((v4 + 938779062) & 0xC80B397D) - 4323)) ^ v4)))();
}

uint64_t sub_1003831CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 - 0x4120F47AB517F9D1);
  STACK[0x2250] = *(a3 + 8 * (v3 - 4035));
  return (*(a3 + 8 * (v3 - 1434)))(v5);
}

uint64_t sub_1003832BC@<X0>(unint64_t a1@<X8>)
{
  v7 = STACK[0x798] - 12733;
  STACK[0xD90] = v1;
  STACK[0x1C30] = a1;
  LODWORD(STACK[0x209C]) = v2;
  STACK[0x12A8] = v3;
  LODWORD(STACK[0x14EC]) = v4;
  return (*(STACK[0x7B8] + 8 * (v7 ^ (16526 * (v6 == v5)))))();
}

uint64_t sub_1003833A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X8>)
{
  STACK[0xD90] = v6;
  STACK[0x1C30] = a6;
  LODWORD(STACK[0x209C]) = v7;
  STACK[0x12A8] = v9;
  LODWORD(STACK[0x14EC]) = v10;
  return (*(a5 + 8 * v8))(a1, a2, a5, a3, a4, STACK[0x728]);
}

uint64_t sub_100383528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x1630]) = v4;
  STACK[0x1C08] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (((v3 + 8949) ^ 0x2985) + v3)))(1141409555);
}

uint64_t sub_100383570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1270] = STACK[0x1F60];
  STACK[0x1C08] = *(a3 + 8 * v3);
  return (*(a3 + 8 * (v3 ^ 0x318F ^ ((v3 + 469) | 0x2116))))(1141409555);
}

uint64_t sub_100383690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] + 581;
  v4 = (STACK[0x798] + 1061929121) & 0xC0B43F5E;
  v5 = STACK[0x798] - 97;
  v6 = LODWORD(STACK[0x1AF4])++;
  return (*(a3 + 8 * ((28 * ((v5 ^ ((v4 ^ 0xA569D0A1) + v6 < 0x40)) & 1)) | v3)))();
}

uint64_t sub_100383700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 & 0xFFFFFFFFFC7A7F53;
  STACK[0x1260] = *(a3 + 8 * v4);
  return (*(a3 + 8 * ((4951 * ((v4 ^ 0xBC245A61) > 0x8BB22B10)) ^ (v4 - 15761 + 3319 * (v4 ^ 0x454)))))();
}

uint64_t sub_100383788@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x19B8] = *(v3 - 0x270676553BF336B9);
  LODWORD(STACK[0x1B6C]) = v4;
  LODWORD(STACK[0xFB8]) = a2;
  LODWORD(STACK[0x10D4]) = 956687238;
  return (*(a1 + 8 * (v2 - 9035)))();
}

uint64_t sub_10038381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 2014;
  LODWORD(STACK[0x1AF4]) = 1519784962;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_1003839B4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1E80] = v2;
  LODWORD(STACK[0x1B24]) = v4;
  LOWORD(STACK[0x1BB6]) = 4422;
  LODWORD(STACK[0x16D4]) = 468922006;
  LODWORD(STACK[0x1158]) = v5 + 4;
  LODWORD(STACK[0x173C]) = a2;
  STACK[0x1CD8] = 0x8C38D1834A63647;
  STACK[0xF68] = 0;
  return (*(a1 + 8 * ((14770 * (v3 <= ((v3 + 646472889) | 0x2041) - 1099960908)) ^ (v3 + 646478825))))();
}

uint64_t sub_100383E18@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1D80] = v2;
  LODWORD(STACK[0x2890]) = v7;
  LOWORD(STACK[0x2896]) = v3;
  LODWORD(STACK[0x2898]) = v8;
  LODWORD(STACK[0x289C]) = a2;
  STACK[0x28A0] = v5;
  STACK[0x28A8] = v6;
  v11 = v2 != 0xAB5C364D9808152 && (v8 ^ (v9 - 1)) < 0xFFFFFFF6;
  return (*(a1 + 8 * ((v11 * ((v4 + 9736) ^ 0xA02 ^ (v4 - 1989452868) & 0x7694C7FD)) | v4)))();
}

uint64_t sub_100383EA8()
{
  v1 = STACK[0x7B8];
  v2 = (*(STACK[0x7B8] + 8 * (v0 + 1035)))(32);
  STACK[0x1268] = v2 + 0x4761F68478C333F5;
  return (*(v1 + 8 * (((((v0 + 68) ^ (v2 == 0)) & 1) * (v0 - 17780)) ^ v0)))();
}

uint64_t sub_100383F24(uint64_t a1)
{
  v4 = v2 - 10488;
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = v1 ^ 0xB6151DCB;
  STACK[0x28B0] = v5;
  LODWORD(v5) = ((2 * (v5 + 10)) & 0x37FAFBBC) + ((v5 + 10) ^ 0x9BFD7DDE) + ((v4 + 1684426154) & 0x9B9995CF ^ 0x7CFFEB4D);
  *(a1 + 16) = v5;
  v6 = STACK[0x7B8];
  v7 = (*(STACK[0x7B8] + 8 * (v4 + 11523)))((v5 - 419260766));
  *(a1 + 24) = v7;
  return (*(v6 + 8 * (((v7 == 0) * (2887 * (v4 ^ 0x1D51) - 5562)) ^ v4)))();
}

uint64_t sub_100384058()
{
  v3 = (*(v0 + 8 * (v1 + 13253)))();
  v4 = STACK[0x7B8];
  *(v2 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_1003840DC()
{
  v2 = STACK[0x7B8];
  v3 = (*(STACK[0x7B8] + 8 * (v0 ^ 0xF55)))(v1 - 0x4761F68478C333F5);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003844C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x15C8] = *(v3 - 0x270676553BF336C1);
  LODWORD(STACK[0x87C]) = v6;
  STACK[0x21C0] = v4;
  LODWORD(STACK[0x17F0]) = v5;
  LODWORD(STACK[0x164C]) = -1315177775;
  return (*(a3 + 8 * v7))();
}

uint64_t sub_100384544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x15C8] = *(v3 - 0x270676553BF336B9);
  LODWORD(STACK[0x87C]) = v6;
  STACK[0x21C0] = v4;
  LODWORD(STACK[0x17F0]) = v5;
  LODWORD(STACK[0x164C]) = 1692188217;
  return (*(a3 + 8 * (v7 - 775458561)))();
}

uint64_t sub_100384D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = STACK[0x17F0];
  v7 = STACK[0x21C0];
  v8 = STACK[0x87C];
  STACK[0x1E80] = v3;
  LODWORD(STACK[0x1B24]) = v8;
  LOWORD(STACK[0x1BB6]) = -10518;
  LODWORD(STACK[0x1158]) = v6;
  LODWORD(STACK[0x173C]) = v5;
  STACK[0x1CD8] = 0x8C38D1834A63647;
  LODWORD(STACK[0x16D4]) = 630348047;
  STACK[0xF68] = v7;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_1003853E4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = STACK[0x1AD0];
  v5 = STACK[0x1940];
  STACK[0x28B8] = STACK[0x1298];
  STACK[0x14C0] = v5;
  STACK[0x830] = 0;
  LODWORD(STACK[0x11A0]) = v3;
  return (*(a1 + 8 * ((((7599 * (a2 ^ 0x1CE6) - 965643231) & 0x398E7FD0 ^ 0x2EFA) * (v4 != v2)) ^ a2)))();
}

uint64_t sub_1003855B0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = 1986790740 - v2 + a2 - ((2 * (1986790740 - v2 + a2) + 620229638) & 0x6C2A3B96) - 930015282;
  LODWORD(STACK[0x11A0]) = v5;
  v6 = (*(a1 + 8 * (v3 + 2292)))(v5 ^ v4);
  v7 = STACK[0x7B8];
  STACK[0x830] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (((v3 - 2382) | 0x34A) ^ 0x3B48)) ^ v3)))();
}

uint64_t sub_1003856EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  v7 = (v3 + a3);
  v8 = ((2 * v7) & 0xFF7DEFF4) + (v7 ^ 0xBBA7FD777FBEF7FALL) + a1;
  *(v8 + 0x4458028880410806) = 0;
  *(v8 + ((v4 + 622404392) ^ 0x44580288A5582D7ALL)) = 0;
  *(v8 + 0x4458028880410809) = 0;
  *(((2 * (v7 + 4)) & 0x12FFDFFDELL) + ((v7 + 4) ^ 0x7DF9BFBF97FEFFEFLL) + a1 - 0x7DF9BFBF97FEFFEFLL) = -9392;
  v9 = ((2 * (v7 + 6)) & 0x1B7597B7ELL) + ((v7 + 6) ^ 0xBFF6FF77DBACBDBFLL) + a1 + 0x4009008824534241;
  *v9 = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = (-69 - (((2 * v5 + 120) & 0x56) + v6)) ^ 0xAB;
  STACK[0x2208] = *(a2 + 8 * v4);
  return (*(a2 + 8 * (v4 ^ 0x4A8)))();
}

uint64_t sub_100385CA0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = 1052614780 - *(v2 - 0x4761F68478C333E5);
  v5 = a2 - 1364707748 > v4;
  if (a2 - 1364707748 < (((v3 ^ 0x63EE) - 7220) ^ 0x25C03FB1u) != v4 < 0x25C0371F)
  {
    v5 = a2 - 1364707748 < (((v3 ^ 0x63EE) - 7220) ^ 0x25C03FB1u);
  }

  return (*(a1 + 8 * ((31 * v5) ^ v3)))();
}

uint64_t sub_100385F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = (v12 | ((v12 < v9) << 32)) + 0x255B07BE854924D0;
  v15 = v14 + v10 - 0x255B07BE89A8D368;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((v16 + a6) & 0x4010E9E83BB82F35 ^ 0x200002033000124) + ((v16 + a6) & ((v8 + 778) ^ 0xB9EF1617C447EB94) ^ 0x30C800000440D049) - 1;
  v18 = __ROR8__(v17 ^ 0x648F3655AB3EBC47, 8);
  v17 ^= 0xF10ABB52F2CE107CLL;
  v19 = (((2 * (v18 + v17)) & 0x475D9ED9F33B10C6) - (v18 + v17) + 0x5C5130930662779CLL) ^ 0x2D22AFA49D9BF845;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a5;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a2;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a3;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a7 - ((v29 + v28) | a7) + ((v29 + v28) | 0xCC0A83AA59BDF645)) ^ 0x5BFFEF1AA28BEC36;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  *(a1 + a8 + v14) = (((((2 * (v32 + v31)) | 0x6AFFFDB07E3B3B12) - (v32 + v31) - 0x357FFED83F1D9D89) ^ 0xCD66D4ADD4E56F17) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(v13 + 8 * ((2030 * (v11 == 0)) ^ v8)))();
}

uint64_t sub_1003861FC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x1E80] = v2;
  LODWORD(STACK[0x1B24]) = v4;
  LOWORD(STACK[0x1BB6]) = 692;
  LODWORD(STACK[0x1158]) = v5 - 8;
  LODWORD(STACK[0x173C]) = v5;
  STACK[0x1CD8] = v3;
  LODWORD(STACK[0x16D4]) = 791774088;
  STACK[0xF68] = 0;
  return (*(a1 + 8 * (a2 - 10293)))();
}

uint64_t sub_1003864D8(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7)
{
  v12 = v9 < v8;
  v13 = v11 + a4;
  v14 = ((v11 + a2) & a3 ^ a6) + v7;
  v15 = v12 ^ (v14 < v8);
  v16 = v14 < v9;
  if (!v15)
  {
    v12 = v16;
  }

  return (*(v10 + 8 * ((v12 * a7) ^ v13)))();
}

uint64_t sub_1003866E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  LODWORD(STACK[0x2144]) = v6;
  v10 = v5 + 40 * v9;
  v11 = *(v10 + 24);
  LODWORD(v10) = *(v10 + 32);
  STACK[0x15C8] = STACK[0x1C30];
  LODWORD(STACK[0x87C]) = v11;
  STACK[0x21C0] = v7;
  LODWORD(STACK[0x17F0]) = v10;
  LODWORD(STACK[0x164C]) = -1476127938;
  return (*(v8 + 8 * (a5 ^ 0x1A2E)))(a1, a2, v8, a3, a4, STACK[0x728], 4232069604);
}

uint64_t sub_1003868E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x2144]) = v6;
  v10 = v5 + 40 * v9;
  v11 = *(v10 + 24);
  LODWORD(v10) = *(v10 + 8);
  STACK[0x19B8] = STACK[0x1C30];
  LODWORD(STACK[0x1B6C]) = v11;
  LODWORD(STACK[0xFB8]) = v10;
  LODWORD(STACK[0x10D4]) = 371657196;
  return (*(v8 + 8 * v7))(a1, a2, v8, a4, a5, STACK[0x728], 4232069604);
}

uint64_t sub_10038698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x2144]) = v6;
  v10 = *(v5 + 40 * v9 + 24);
  v11 = *(STACK[0x7A0] + 40 * v9 - 0x2E228979AB1A7806);
  STACK[0x1F08] = STACK[0x1C30];
  LODWORD(STACK[0xB90]) = v10;
  STACK[0x1CC0] = v11;
  LODWORD(STACK[0x1EC8]) = -1934973512;
  return (*(v8 + 8 * v7))(a1, a2, v8, a4, a5, STACK[0x728], 4232069604);
}

uint64_t sub_100386AC0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x28C8] = v3;
  STACK[0x1700] = v2;
  STACK[0x1B70] = 0;
  LODWORD(STACK[0x108C]) = 709066045;
  LODWORD(STACK[0x1E28]) = v5;
  return (*(a1 + 8 * (((((a2 + 34) ^ (v4 == 0xAB5C364D9808152)) & 1) * (a2 - 14936)) ^ a2)))();
}

uint64_t sub_100386C58@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = (a2 + 3) & 0xF;
  LODWORD(STACK[0x108C]) = ((v2 + 444788658) & 0xE57CF3D3) - v4 + 709061628;
  LODWORD(STACK[0x28D0]) = -1418238986;
  return (*(a1 + 8 * ((25617 * ((16 - v4) + (a2 - 1214212375) < v3 + 3254)) ^ v2)))();
}

uint64_t sub_100386CEC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = v2 + a2 - ((2 * (v2 + a2) + 448410476) & 0x6C2A3B96) + 1131558785;
  LODWORD(STACK[0x1E28]) = v5;
  v6 = (*(a1 + 8 * (v3 ^ 0x5B07)))(v5 ^ v4);
  v7 = STACK[0x7B8];
  STACK[0x1B70] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (((v3 + 509004174) & 0xE1A93DE8) + ((v3 + 10423) | 0x156) - 21534)) ^ v3)))();
}

uint64_t sub_100386F5C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = ((v3 - 15654) | 0x2436) - *(v2 - 0x4761F68478C333E5) - 784808037;
  v5 = a2 + 1876695397 > v4;
  if ((a2 + 1876695397) < 0xB83B827C != v4 < 0xB83B827C)
  {
    v5 = (a2 + 1876695397) < 0xB83B827C;
  }

  return (*(a1 + 8 * (((8 * v5) | (16 * v5)) ^ v3)))();
}

uint64_t sub_100387288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = (v17 | ((v17 < v10) << 32)) + 0x122F5B9815EA0D49;
  v20 = (v14 - 1444) + v19 + v11 - 0x122F5B9841395EF9;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = a1 + v15 + v19;
  v23 = v21 - ((a6 + 2 * v21) & 0x25C1D39330189B28) + 0x5919B6A834A631BLL;
  v24 = __ROR8__(v23 ^ 0xC6A7DFBC047220BFLL, 8);
  v23 ^= 0x532252BB5D828C84uLL;
  v25 = (v24 + v23) ^ a4;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a2;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xCF048CB0FFFE1ACELL) - (v29 + v28) + 0x187DB9A78000F298) ^ 0xD36268A2891A873ELL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xB0C104016A1458EELL) + 0x58608200B50A2C77) ^ 0xD8C3AA7436BEEBBELL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((2 * (v35 + v34)) | 0x29D0B04F6069146CLL) - (v35 + v34);
  v37 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = (v36 - 0x14E85827B0348A36) ^ 0x918A9D974D129B4DLL;
  v39 = ((v37 + a8) | 0x4DB55771656C47E3) - ((v37 + a8) | v12) + v12;
  v40 = v39 ^ 0x4F5DBA449A53A11DLL;
  v41 = v38 ^ __ROR8__(v34, 61);
  v39 ^= 0x3C006CAF0C9270EuLL;
  v42 = (__ROR8__(v40, 8) + v39) ^ a3;
  v43 = v42 ^ __ROR8__(v39, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v9;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v38, 8) + v41) ^ v13;
  v47 = (__ROR8__(v44, 8) + v45) ^ v18;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8) + v48;
  v50 = (((2 * v49) & 0xB29E551FCF567774) - v49 + 0x26B0D5701854C445) ^ 0xD3E9B4C2C56BE56CLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v41, 61));
  v53 = __ROR8__(v50, 8);
  v54 = (((2 * (v53 + v51)) & 0xC95BDFF66F213F6ELL) - (v53 + v51) + 0x1B521004C86F6048) ^ 0x22D8C263CE6D9281;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ a7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *v22 = (((a5 - (v52 | a5) + (v52 | 0x90A460FA0134A3D6)) ^ 0x68BD4A8FEACC5148) >> (8 * (v20 & 7u))) ^ (((((2 * (v58 + v57)) & 0x9041B642E88C552CLL) - (v58 + v57) + 0x37DF24DE8BB9D569) ^ 0x9B93BABBBA4F7A59) >> (8 * (v22 & 7u))) ^ *v20;
  return (*(v8 + 8 * ((910 * (v16 == 0)) ^ v14)))();
}

uint64_t sub_100387BE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = STACK[0x798];
  *v8 = a4;
  *a5 = a8;
  return (*(a3 + 8 * (v9 - 3576)))();
}

uint64_t sub_100387C18@<X0>(int a1@<W5>, void *a2@<X6>, unint64_t a3@<X8>)
{
  v16 = *a2 + v9 - 0x29042A29C848A081;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((2 * (v17 + v14)) | 0x41464A5B394381C2) - (v17 + v14) - 0x20A3252D9CA1C0E1;
  v19 = __ROR8__(v18 ^ 0x224BC818639E261FLL, 8);
  v18 ^= 0x6ED674960904A00CuLL;
  v20 = (v19 + v18) ^ v7;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v8 - ((v22 + v21) | v8) + ((v22 + v21) | 0x94ADF2ED9093A116)) ^ 0xDFF3084102A165F8;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v13;
  v26 = *(v11 + 8 * a1);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v25, 8) + v27) ^ v15;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x398AD2670602F2C9;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v12;
  *v16 = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * (v16 & 7u))) ^ HIBYTE(v4) ^ 0x39;
  v33 = __ROR8__((v16 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = (v33 + v14) ^ v5;
  v35 = __ROR8__((v33 + v14) ^ v10, 8);
  v36 = __ROR8__((((v35 + v34) & v6 ^ 0x8826C05100060884) + ((v35 + v34) ^ 0x37993C8639997610) - (((v35 + v34) ^ 0x37993C8639997610) & v6)) ^ 0xCCC48F87CD302B18, 8);
  v37 = (((v35 + v34) & v6 ^ 0x8826C05100060884) + ((v35 + v34) ^ 0x37993C8639997610) - (((v35 + v34) ^ 0x37993C8639997610) & v6)) ^ 0xCCC48F87CD302B18 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ 0x4B5EFAAC9232C4EELL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0xD2CC4FF622D0DD5ELL - ((v40 + v39) | 0xD2CC4FF622D0DD5ELL) + ((v40 + v39) | 0x2D33B009DD2F22A1)) ^ 0xAE975BDDD1138DB7;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0xBA550E4D1AF9B3B6) - (v43 + v42) - 0x5D2A87268D7CD9DCLL) ^ 0x578C196BAFBC070DLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = __ROR8__((((2 * (v46 + v45)) | 0x524236F1B792259ELL) - (v46 + v45) + 0x56DEE4872436ED31) ^ 0x90ABC91FDDCBE006, 8);
  v48 = (((2 * (v46 + v45)) | 0x524236F1B792259ELL) - (v46 + v45) + 0x56DEE4872436ED31) ^ 0x90ABC91FDDCBE006 ^ __ROR8__(v45, 61);
  *(v16 + 1) = (((__ROR8__((v47 + v48) ^ v12, 8) + ((v47 + v48) ^ v12 ^ __ROR8__(v48, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v16 + 1) & 7))) ^ BYTE2(v4) ^ 0x90;
  v49 = __ROR8__((v16 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v50 = ((2 * (v49 + v14)) | 0x20034F39A2C9E294) - (v49 + v14) - 0x1001A79CD164F14ALL;
  v51 = __ROR8__(v50 ^ 0x12E94AA92E5B17B4, 8);
  v50 ^= 0x5E74F62744C191A7uLL;
  v52 = (((v51 + v50) & 0x3E559E766351B66FLL ^ 0x1804960262400267) + ((v51 + v50) & 0xC1AA61899CAE4990 ^ 0x8100618110064981) - 1) ^ 0xEEE7A8578EF87C6BLL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x4B5EFAAC9232C4EELL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((((2 * (v56 + v55)) | 0x64C4DA04D527E96ELL) - (v56 + v55) + 0x4D9D92FD956C0B49) ^ 0x31C686D666AF5BA1, 8);
  v58 = (((2 * (v56 + v55)) | 0x64C4DA04D527E96ELL) - (v56 + v55) + 0x4D9D92FD956C0B49) ^ 0x31C686D666AF5BA1 ^ __ROR8__(v55, 61);
  v59 = (v57 + v58) ^ v15;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x398AD2670602F2C9;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v12;
  *(v16 + 2) = (((__ROR8__(v63, 8) + (v63 ^ __ROR8__(v62, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v16 + 2) & 7))) ^ BYTE1(v4) ^ 0xC7;
  v64 = __ROR8__((v16 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = (v64 + v14) ^ v5;
  v66 = (__ROR8__((v64 + v14) ^ v10, 8) + v65) ^ v7;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x4B5EFAAC9232C4EELL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ v13;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ v15;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x398AD2670602F2C9;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ v12;
  v77 = __ROR8__(v76, 8) + (v76 ^ __ROR8__(v75, 61));
  *(v16 + 3) = v4 ^ v3 ^ (((((2 * v77) | 0x4D88BAE9387C10B4) - v77 + 0x593BA28B63C1F7A6) ^ a3) >> (8 * ((v16 + 3) & 7)));
  return v26();
}

uint64_t sub_100388180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 11338;
  *(STACK[0x1BE0] - 0x5169BC75931DF3A3) += 4;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_100388434(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, unint64_t a7)
{
  v13 = *(STACK[0x7B8] + 8 * v7);
  LODWORD(STACK[0x760]) = v8 & 0xFFFFFFF8;
  v14 = a5 + a4 + a3;
  *&STACK[0x780] = xmmword_1004248B0;
  return v13(a1, a2, (v14 + 1), (v14 + 2), (v14 + 3), (v14 + 4), (v14 + 5), vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(a7), vdupq_n_s64(v9), vdupq_n_s64(0x7A8058D03F761AA3uLL), vdupq_n_s64(v10), vdupq_n_s64(v11), vdupq_n_s64(v12));
}

uint64_t sub_10038856C(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, uint64_t a16)
{
  v39.i64[0] = a16 + v16 + v17 + (a11 + v21 + 8);
  v39.i64[1] = a16 + v16 + v17 + (v19 + v21 + 8);
  v40.i64[0] = a16 + v16 + v17 + (a13 + v21 + 8);
  v40.i64[1] = a16 + v16 + v17 + (a12 + v21 + 8);
  v41.i64[0] = a16 + v16 + v17 + (a15 + v21 + 8);
  v41.i64[1] = a16 + v16 + v17 + (a14 + v21 + 8);
  v42.i64[0] = a16 + v16 + v17 + (v20 + v21 + 8);
  v42.i64[1] = a16 + v16 + v17 + (v24 + v21 + v22 + 8);
  v43 = vandq_s8(v42, a1);
  v44 = vandq_s8(v41, a1);
  v45 = vandq_s8(v40, a1);
  v46 = vandq_s8(v39, a1);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a3);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a3);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a3);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), a3);
  v51 = vsubq_s64(vorrq_s8(v49, a4), vorrq_s8(v49, a5));
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v50, a4), vorrq_s8(v50, a5)), a5);
  v53 = vaddq_s64(v51, a5);
  v54 = veorq_s8(v53, a6);
  v55 = veorq_s8(v52, a6);
  v56 = veorq_s8(v52, a7);
  v57 = veorq_s8(v53, a7);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v59, v59), a8), v59), v26), v27);
  v61 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v62 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), a8), v58), v26), v27);
  v64 = veorq_s8(v63, v62);
  v65 = veorq_s8(v60, v61);
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v65);
  v68 = veorq_s8(vaddq_s64(v66, v64), v28);
  v69 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v70 = veorq_s8(v67, v28);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v68, v69);
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(v75, v29);
  v77 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v75, v30), v31), v76), vandq_s8(v76, v30));
  v78 = veorq_s8(v74, v29);
  v79 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v74, v30), v31), v78), vandq_s8(v78, v30)), v32);
  v80 = veorq_s8(v77, v32);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81), v33);
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82), v33);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v87 = veorq_s8(v83, v84);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v34);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v92 = veorq_s8(v89, v34);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), v35);
  v98 = veorq_s8(v96, v35);
  v99 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(v48, a4), vorrq_s8(v48, a5)), a5);
  v105 = vaddq_s64(v103, v101);
  v106 = vaddq_s64(v102, v100);
  v146.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v36), v105), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a2)));
  v146.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v36), v106), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a2)));
  v107 = veorq_s8(v104, a6);
  v108 = veorq_s8(v104, a7);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), a8), v109), v26), v27);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v28);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(v114, v29);
  v116 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v114, v30), v31), v115), vandq_s8(v115, v30)), v32);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v33);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v34);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v35);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL)));
  v124 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a4), vorrq_s8(v47, a5)), a5);
  v146.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v36), v123), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a2)));
  v125 = veorq_s8(v124, a6);
  v126 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v127 = veorq_s8(v124, a7);
  v128 = vaddq_s64(v126, v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), a8), v128), v26), v27);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v28);
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v134 = veorq_s8(v131, v132);
  v135 = vaddq_s64(v133, v134);
  v136 = veorq_s8(v135, v29);
  v137 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v135, v30), v31), v136), vandq_s8(v136, v30)), v32);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v33);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v34);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v35);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL)));
  v146.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), v36), v144), v37), v38), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a2)));
  *(v42.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v146, *&STACK[0x780]));
  return (*(STACK[0x7B8] + 8 * (((v23 == v21) * v25) ^ v18)))();
}

uint64_t sub_100388BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unint64_t a6@<X6>, int a7@<W8>)
{
  STACK[0x750] = *(STACK[0x7B8] + 8 * (a7 - 9645));
  v19 = v15;
  v20 = a5 + a4 + a3;
  LODWORD(STACK[0x710]) = v20 - 8;
  *&STACK[0x6C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x6B0] = vdupq_n_s64(0x38uLL);
  LODWORD(STACK[0x700]) = v20 - 7;
  LODWORD(STACK[0x6F0]) = v20 - 6;
  *&STACK[0x780] = vdupq_n_s64(a6);
  *&STACK[0x760] = vdupq_n_s64(v11);
  LODWORD(STACK[0x6E0]) = v20 - 5;
  *&STACK[0x6A0] = vdupq_n_s64(v12);
  *&STACK[0x690] = vdupq_n_s64(v13);
  *&STACK[0x680] = vdupq_n_s64(v16);
  *&STACK[0x670] = vdupq_n_s64(v8);
  *&STACK[0x660] = vdupq_n_s64(v14);
  *&STACK[0x650] = vdupq_n_s64(0x4B5EFAAC9232C4EEuLL);
  *&STACK[0x640] = vdupq_n_s64(v17);
  *&STACK[0x620] = vdupq_n_s64(v7);
  *&STACK[0x610] = vdupq_n_s64(v9);
  *&STACK[0x600] = vdupq_n_s64(v18);
  *&STACK[0x5E0] = vdupq_n_s64(0x398AD2670602F2C9uLL);
  *&STACK[0x5C0] = vdupq_n_s64(v19);
  *&STACK[0x570] = vdupq_n_s64(v10);
  *&STACK[0x510] = vdupq_n_s64(0x1084DAB49D8E8D77uLL);
  *&STACK[0x500] = vdupq_n_s64(0x4337BB2E5387DDB9uLL);
  *&STACK[0x6D0] = xmmword_1004248A0;
  return (STACK[0x750])(a1, a2, (v20 + 4), (v20 + 5), (v20 - 2508), (v20 + 7), 4294967280);
}

uint64_t sub_100388DF8(double a1, double a2, double a3, double a4, int8x16_t a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, uint64_t a16)
{
  v42 = (LODWORD(STACK[0x6F0]) + a15 + 16);
  v43 = v17 + v18 + (LODWORD(STACK[0x6E0]) + a15 + 16);
  *&v44 = a16 + v17 + v18 + (LODWORD(STACK[0x700]) + a15 + 16);
  *(&v44 + 1) = a16 + v17 + v18 + (LODWORD(STACK[0x710]) + a15 + 16);
  *&STACK[0x750] = v44;
  *&v44 = a16 + v43;
  *(&v44 + 1) = a16 + v17 + v18 + v42;
  *&STACK[0x740] = v44;
  v45.i64[0] = a16 + v17 + v18 + (v21 + a15 + 16);
  v45.i64[1] = a16 + v17 + v18 + (v27 + a15 + 16);
  v46.i64[0] = a16 + v17 + v18 + (v25 + a15 + 16);
  v46.i64[1] = a16 + v17 + v18 + (v22 + a15 + 16);
  v47.i64[0] = a16 + v17 + v18 + (a12 + a15 + 16);
  v47.i64[1] = a16 + v17 + v18 + (a11 + a15 + 16);
  v48.i64[0] = a16 + v17 + v18 + (a14 + a15 + 16);
  v48.i64[1] = a16 + v17 + v18 + (a13 + a15 + v23 + 16);
  v49 = vandq_s8(v48, *&STACK[0x6C0]);
  v50 = vandq_s8(v47, *&STACK[0x6C0]);
  v51 = vandq_s8(v46, *&STACK[0x6C0]);
  v52 = vandq_s8(v45, *&STACK[0x6C0]);
  v53 = *&STACK[0x6C0];
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), *&STACK[0x780]);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), *&STACK[0x780]);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), *&STACK[0x780]);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), *&STACK[0x780]);
  v58 = *&STACK[0x760];
  v59 = vorrq_s8(v57, *&STACK[0x760]);
  v60 = vorrq_s8(v56, *&STACK[0x760]);
  *&STACK[0x730] = vsubq_s64(vorrq_s8(v54, *&STACK[0x760]), vorrq_s8(v54, v29));
  v61 = vsubq_s64(vorrq_s8(v55, v58), vorrq_s8(v55, v29));
  v62 = vsubq_s64(v60, vorrq_s8(v56, v29));
  v63 = vaddq_s64(vsubq_s64(v59, vorrq_s8(v57, v29)), v29);
  v64 = vaddq_s64(v62, v29);
  v65 = veorq_s8(v64, *&STACK[0x6A0]);
  v66 = veorq_s8(v63, *&STACK[0x6A0]);
  v67 = veorq_s8(v63, a8);
  v68 = veorq_s8(v64, a8);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x680]), v70), v30), v31);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x680]), v69), v30), v31);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v32);
  v79 = veorq_s8(v77, v32);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v81);
  v85 = veorq_s8(v84, v34);
  v86 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v84, v33), v35), v85), vandq_s8(v85, v33));
  v87 = veorq_s8(v83, v34);
  v88 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v83, v33), v35), v87), vandq_s8(v87, v33)), v36);
  v89 = veorq_s8(v86, v36);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v37);
  v95 = veorq_s8(v93, v37);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v98);
  v101 = veorq_s8(vaddq_s64(v99, v97), v38);
  v102 = veorq_s8(v100, v38);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v105 = veorq_s8(v101, v103);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), v39);
  v109 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v110 = veorq_s8(v107, v39);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(v108, v109);
  v109.i64[0] = a16 + v17 + v18 + (v16 + a15 + 16);
  v113 = vaddq_s64(v61, v29);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), v40), v115), v41), a5);
  v224.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v40), v114), v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), *&STACK[0x6B0])));
  v224.val[2] = vshlq_u64(v116, vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), *&STACK[0x6B0])));
  v117 = veorq_s8(v113, *&STACK[0x6A0]);
  v118 = veorq_s8(v113, a8);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), *&STACK[0x680]), v119), v30), v31);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v32);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(v124, v34);
  v126 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v124, v33), v35), v125), vandq_s8(v125, v33)), v36);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v37);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v38);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v39);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v132.i64[0] = a16 + v17 + v18 + (v20 + a15 + 16);
  v109.i64[1] = a16 + v17 + v18 + (v24 + a15 + 16);
  v132.i64[1] = a16 + v17 + v18 + (v19 + a15 + 16);
  v135 = vaddq_s64(v134, v133);
  v136 = vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), v40), v135);
  v137 = vandq_s8(v132, v53);
  v138 = vaddq_s64(*&STACK[0x730], v29);
  v224.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v136, v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v47, 3uLL), *&STACK[0x6B0])));
  v139 = veorq_s8(v138, *&STACK[0x6A0]);
  v140 = veorq_s8(v138, a8);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), *&STACK[0x680]), v141), v30), v31);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v32);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(v146, v34);
  v148 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v146, v33), v35), v147), vandq_s8(v147, v33)), v36);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v37);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v38);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v39);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vandq_s8(v109, v53);
  v158 = vaddq_s64(v156, v155);
  v159 = vandq_s8(*&STACK[0x740], v53);
  v224.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), v40), v158), v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v48, 3uLL), *&STACK[0x6B0])));
  v160 = vandq_s8(*&STACK[0x750], v53);
  v161 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), *&STACK[0x780]);
  v165 = vaddq_s64(v163, *&STACK[0x780]);
  v166 = vaddq_s64(v162, *&STACK[0x780]);
  v167 = vaddq_s64(v161, *&STACK[0x780]);
  v168 = vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x760]), vorrq_s8(v167, v29)), v29);
  v169 = vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x760]), vorrq_s8(v166, v29)), v29);
  v166.i64[0] = vqtbl4q_s8(v224, *&STACK[0x6D0]).u64[0];
  v224.val[3] = veorq_s8(v169, *&STACK[0x6A0]);
  v224.val[0] = veorq_s8(v168, *&STACK[0x6A0]);
  v224.val[1] = veorq_s8(v168, a8);
  v224.val[2] = veorq_s8(v169, a8);
  v224.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL), v224.val[2]);
  v224.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[1]);
  v224.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v224.val[0], v224.val[0]), *&STACK[0x680]), v224.val[0]), v30), v31);
  v224.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v224.val[3], v224.val[3]), *&STACK[0x680]), v224.val[3]), v30), v31);
  v170 = vsraq_n_u64(vshlq_n_s64(v224.val[1], 3uLL), v224.val[1], 0x3DuLL);
  v224.val[1] = veorq_s8(v224.val[3], vsraq_n_u64(vshlq_n_s64(v224.val[2], 3uLL), v224.val[2], 0x3DuLL));
  v224.val[2] = veorq_s8(v224.val[0], v170);
  v171 = vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL);
  v224.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[2]);
  v224.val[0] = veorq_s8(vaddq_s64(v171, v224.val[1]), v32);
  v224.val[3] = veorq_s8(v224.val[3], v32);
  v172 = vsraq_n_u64(vshlq_n_s64(v224.val[1], 3uLL), v224.val[1], 0x3DuLL);
  v224.val[1] = veorq_s8(v224.val[3], vsraq_n_u64(vshlq_n_s64(v224.val[2], 3uLL), v224.val[2], 0x3DuLL));
  v224.val[2] = veorq_s8(v224.val[0], v172);
  v173 = vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL);
  v224.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[2]);
  v224.val[0] = vaddq_s64(v173, v224.val[1]);
  v174 = veorq_s8(v224.val[0], v34);
  v224.val[0] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v224.val[0], v33), v35), v174), vandq_s8(v174, v33));
  v175 = veorq_s8(v224.val[3], v34);
  v224.val[3] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v224.val[3], v33), v35), v175), vandq_s8(v175, v33)), v36);
  v224.val[0] = veorq_s8(v224.val[0], v36);
  v224.val[1] = veorq_s8(v224.val[0], vsraq_n_u64(vshlq_n_s64(v224.val[1], 3uLL), v224.val[1], 0x3DuLL));
  v224.val[2] = veorq_s8(v224.val[3], vsraq_n_u64(vshlq_n_s64(v224.val[2], 3uLL), v224.val[2], 0x3DuLL));
  v224.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[1]), v37);
  v224.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL), v224.val[2]), v37);
  v176 = vsraq_n_u64(vshlq_n_s64(v224.val[1], 3uLL), v224.val[1], 0x3DuLL);
  v224.val[1] = veorq_s8(v224.val[3], vsraq_n_u64(vshlq_n_s64(v224.val[2], 3uLL), v224.val[2], 0x3DuLL));
  v224.val[2] = veorq_s8(v224.val[0], v176);
  v177 = vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL);
  v224.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[2]);
  v224.val[0] = veorq_s8(vaddq_s64(v177, v224.val[1]), v38);
  v224.val[3] = veorq_s8(v224.val[3], v38);
  v178 = vsraq_n_u64(vshlq_n_s64(v224.val[1], 3uLL), v224.val[1], 0x3DuLL);
  v224.val[1] = veorq_s8(v224.val[3], vsraq_n_u64(vshlq_n_s64(v224.val[2], 3uLL), v224.val[2], 0x3DuLL));
  v224.val[2] = veorq_s8(v224.val[0], v178);
  v179 = vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL);
  v224.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[2]);
  v224.val[0] = veorq_s8(vaddq_s64(v179, v224.val[1]), v39);
  v180 = vsraq_n_u64(vshlq_n_s64(v224.val[1], 3uLL), v224.val[1], 0x3DuLL);
  v224.val[3] = veorq_s8(v224.val[3], v39);
  v224.val[1] = veorq_s8(v224.val[3], vsraq_n_u64(vshlq_n_s64(v224.val[2], 3uLL), v224.val[2], 0x3DuLL));
  v224.val[2] = veorq_s8(v224.val[0], v180);
  v181 = vsraq_n_u64(vshlq_n_s64(v224.val[3], 0x38uLL), v224.val[3], 8uLL);
  v182 = vaddq_s64(vsubq_s64(vorrq_s8(v165, *&STACK[0x760]), vorrq_s8(v165, v29)), v29);
  v224.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224.val[0], 0x38uLL), v224.val[0], 8uLL), v224.val[2]);
  v224.val[0] = vaddq_s64(v181, v224.val[1]);
  v224.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224.val[3], v224.val[3]), v40), v224.val[3]), v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x750], 3uLL), *&STACK[0x6B0])));
  v224.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224.val[0], v224.val[0]), v40), v224.val[0]), v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x740], 3uLL), *&STACK[0x6B0])));
  v183 = veorq_s8(v182, *&STACK[0x6A0]);
  v184 = veorq_s8(v182, a8);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v185, v185), *&STACK[0x680]), v185), v30), v31);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v32);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(v190, v34);
  v192 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v190, v33), v35), v191), vandq_s8(v191, v33));
  v193 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v194 = veorq_s8(v192, v36);
  v195 = veorq_s8(v194, v193);
  v196 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195), v37);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v38);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v39);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL)));
  v202 = vaddq_s64(vsubq_s64(vorrq_s8(v164, *&STACK[0x760]), vorrq_s8(v164, v29)), v29);
  v224.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v201, v201), v40), v201), v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v109, 3uLL), *&STACK[0x6B0])));
  v203 = veorq_s8(v202, *&STACK[0x6A0]);
  v204 = veorq_s8(v202, a8);
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205, v205), *&STACK[0x680]), v205), v30), v31);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), v32);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = vandq_s8(v210, v33);
  v212 = veorq_s8(v210, v34);
  v213 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(v211, v35), v212), vandq_s8(v212, v33)), v36);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v37);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v38);
  v218 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v220 = veorq_s8(v217, v218);
  v221 = veorq_s8(vaddq_s64(v219, v220), v39);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL)));
  v224.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v222, v222), v40), v222), v41), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v132, 3uLL), *&STACK[0x6B0])));
  v166.i64[1] = vqtbl4q_s8(v224, *&STACK[0x6D0]).u64[0];
  v224.val[3] = vrev64q_s8(v166);
  *(a16 + v17 + v18 + (a14 + a15 + 16) - 15) = vextq_s8(v224.val[3], v224.val[3], 8uLL);
  return (*(STACK[0x7B8] + 8 * ((533 * (v26 == a15)) ^ v28)))();
}

uint64_t sub_100389AE0@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v23 = a4 + STACK[0x7A0] - 0x62086BABF87B81A8 + (a5 ^ v11) + v5 + a1;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 + a3) | v15) - ((v24 + a3) | v8) + v8;
  v26 = v25 ^ v16;
  v27 = v25 ^ v17;
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__(((v20 & (2 * (v28 + v27))) - (v28 + v27) + v7) ^ v18, 8);
  v30 = ((v20 & (2 * (v28 + v27))) - (v28 + v27) + v7) ^ v18 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ 0x4B5EFAAC9232C4EELL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) & v9 ^ v6) + ((v33 + v32) ^ v21) - (((v33 + v32) ^ v21) & v9)) ^ v12;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v22;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x398AD2670602F2C9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v19;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *v23 = (((v13 | (2 * (v42 + v41))) - (v42 + v41) + 0x1084DAB49D8E8D77) ^ 0x4337BB2E5387DDB9uLL) >> (8 * (v23 & 7u));
  return (*(STACK[0x7B8] + 8 * (((v5 - 1 == v14) * a2) ^ v10)))();
}

uint64_t sub_100389C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(STACK[0x1700] - 0x432718DBD204B306) = a8;
  *(STACK[0x28C8] - 0x46C4AF0BF9FBDE70) = STACK[0x1E28];
  return (*(STACK[0x7B8] + 8 * v8))();
}

uint64_t sub_100389CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = (*(a3 + 8 * (v8 + 15913)))(a8);
  return (*(STACK[0x7B8] + 8 * v9))(v10);
}

uint64_t sub_100389E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8 * v3);
  STACK[0x7A0] = STACK[0x210];
  return v4();
}

uint64_t sub_100389EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4 ^ 0x8E;
  v6 = (v4 - 127) & 0x7B;
  v7 = v4 - 8337;
  LOBYTE(STACK[0x10C7]) = v3;
  v8 = LOBYTE(STACK[0x1EF7]);
  v9 = (v3 + v5 - 114);
  v10 = v6 + v8 + 81;
  v11 = v8 > 0x53;
  v12 = v11 ^ (v9 < 0xAC);
  v13 = v9 < v10;
  if (!v12)
  {
    v11 = v13;
  }

  return (*(a3 + 8 * ((!v11 | (2 * !v11)) ^ v7)))();
}

uint64_t sub_10038A02C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *STACK[0x2058] = (LOBYTE(STACK[0x204F]) ^ 0x1F) + 2 * (STACK[0x204F] & 0x1F) + ((a2 - 100) | 3) - 6;
  *(STACK[0xC40] - 0x62D4BCAF552756AFLL) = STACK[0x10D8];
  *STACK[0xB78] = (LOBYTE(STACK[0x1EF7]) ^ 0x7FF2585F) - 1082277958 + ((2 * LOBYTE(STACK[0x1EF7])) & 0xBE);
  return (*(a1 + 8 * a2))();
}

uint64_t sub_10038A0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1820] = (((v4 - 74) ^ 0x34) + v3);
  STACK[0xB20] = *(a3 + 8 * v4);
  return (*(a3 + 8 * (v4 + 2934)))();
}

uint64_t sub_10038A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + 53;
  v6 = *(v4 - 0x5169BC75931DF3A3) - 0x4006AC60AB8D026;
  v7 = *(v4 - 0x5169BC75931DF3ABLL) - 0x73A458C9A539BBF5;
  v8 = v6 < 0x1E57D094;
  v9 = v6 > v7;
  if (v8 != v7 < (34 * (v5 ^ 0x2704u)) + 509056310)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return (*(a3 + 8 * ((3064 * v10) ^ v5)))();
}

uint64_t sub_10038A2A8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v8 = v4 + *(v7 - 0x5169BC75931DF3BBLL) - 0x73A458C9C3918C89;
  v9 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = -2 - ((v9 + 0x6993B791CD5350C2) | 0x3289903CBCB5F929) - ((v5 - v9 + 0x166C486E32AC73DFLL) | 0xCD766FC3434A06D6);
  v11 = v10 ^ 0xCF9E82F6BC75E028;
  v10 ^= 0x83033E78D6EF663BLL;
  v12 = __ROR8__(v11, 8);
  v13 = (((2 * (v12 + v10)) | 0x2F4460519652A2D0) - (v12 + v10) - 0x17A23028CB295168) ^ 0x60416FFC379766E4;
  v14 = v13 ^ __ROR8__(v10, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((v15 + v14) | 0x53F67FDA8DFFA40ALL) - ((v15 + v14) | 0xAC09802572005BF5) - 0x53F67FDA8DFFA40BLL) ^ 0x18A885761FCD60E4;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0xB8075C6229A434F4) - (v18 + v17) - 0x5C03AE3114D21A7BLL) ^ 0x2058BA1AE7114A93;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xF55961B2DD3F2129;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) | 0x5D1976E27BB7246ALL) - ((v23 + v22) | 0xA2E6891D8448DB95) - 0x5D1976E27BB7246BLL) ^ 0x6493A4857DB5D6A3;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xC48877EC7E57888;
  v27 = __ROR8__((v8 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = ((v27 + 0x6993B791CD5350C2) & 0x135D1001DE90E8EDLL ^ 0x134510004E80E889) + ((v27 + 0x6993B791CD5350C2) & 0xE8A2EFFE216F1712 ^ 0xE0220C7400071701) - 1;
  v29 = v28 ^ 0xF18FF141B1B81977;
  v28 ^= 0xBD124DCFDB229F64;
  v30 = __ROR8__(v29, 8);
  v31 = (((v30 + v28) ^ 0x821054B22C4BB692) - ((2 * ((v30 + v28) ^ 0x821054B22C4BB692)) & 0x1C5686B837B9C3C0) - 0x71D4BCA3E4231E20) ^ 0x7BD8483ACB2960FELL;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x4B5EFAAC9232C4EELL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) & 0x4BEFFC500E129FD8) - (v35 + v34) - 0x25F7FE2807094FEDLL) ^ 0x59ACEA03F4CA1F05;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xF55961B2DD3F2129;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = (((2 * (v39 + v40)) | 0xEEB0D8C717AB99AALL) - (v39 + v40) + 0x8A7939C742A332BLL) ^ 0xCED2BE048DD73E1CLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xC48877EC7E57888;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * (v8 & 7u))) ^ *v8) << 24) | (((((v45 + v44 - ((2 * (v45 + v44)) & 0x73E325A77A01C50ELL) - 0x460E6D2C42FF1D79) ^ 0x15BD0CB68CF64DB7uLL) >> (8 * ((v8 + 1) & 7))) ^ *(v8 + 1)) << 16);
  v47 = __ROR8__((v8 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = ((0x966C486E32ACAF3DLL - v47) & 0xF38F5F598A2FDD1ALL) + v47 + 0x6993B791CD5350C2 - ((v47 + 0x6993B791CD5350C2) & 0xF38F5F598A2FDD1ALL);
  v49 = v48 ^ 0xF167B26C75103BE4;
  v48 ^= 0xBDFA0EE21F8ABDF7;
  v50 = (__ROR8__(v49, 8) + v48) ^ 0x77E35FD4FCBE378CLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x4B5EFAAC9232C4EELL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ a1;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) | 0x6D420619E98B8708) - (v56 + v55) - 0x36A1030CF4C5C384) ^ 0xC3F862BE29FAE2ADLL;
  v58 = STACK[0x7B8];
  v59 = v57 ^ __ROR8__(v55, 61);
  v60 = (__ROR8__(v57, 8) + v59) ^ v6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xC48877EC7E57888;
  LODWORD(v62) = v46 | (((((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v8 + 2) & 7))) ^ *(v8 + 2)) << 8);
  v63 = *(v8 + 3);
  v8 += 3;
  v64 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = ((2 * (v64 + 0x6993B791CD5350C2)) | 0x529F01745FD9DE6ELL) - (v64 + 0x6993B791CD5350C2) - 0x294F80BA2FECEF37;
  v66 = v65 ^ 0x2BA76D8FD0D309C9;
  v65 ^= 0x673AD101BA498FDAuLL;
  v67 = (__ROR8__(v66, 8) + v65) ^ 0x77E35FD4FCBE378CLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((v69 + v68) & 0xC8BAAD6E420FD67ELL ^ 0x8A0A0604202963ALL) + ((v69 + v68) ^ 0xE05F1F0E8C5D60C4) - (((v69 + v68) ^ 0xE05F1F0E8C5D60C4) & 0xC8BAAD6E420FD67ELL)) ^ 0x63BB48CC5C607254;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ a1;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xF55961B2DD3F2129;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ v6;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (((v78 + v77) & 0x22A8D7B0770AF380 ^ 0xA882001308D380) + ((v78 + v77) ^ 0x260575B6E4472409) - (((v78 + v77) ^ 0x260575B6E4472409) & 0x22A8D7B0770AF380)) ^ 0x8E5257854A8AF01;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  LODWORD(v8) = (((((v81 + v80) | 0xF4895D506624F10ELL) - ((v81 + v80) | 0xB76A2AF99DB0EF1) + 0xB76A2AF99DB0EF1) ^ 0x58C5C33557D25E3ELL) >> (8 * (v8 & 7u))) ^ v63;
  *(a2 - 0x5261D24F740CB83FLL) = ((v62 | v8) - 2 * ((v62 | v8) & 0x3CFC5E3E ^ v8 & 8) + 1023172150) ^ 0x3CFC5E36;
  *(STACK[0x2198] + v3) += 4;
  return (*(v58 + 8 * v2))();
}

uint64_t sub_10038AAFC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (STACK[0x10D8] + 16 * STACK[0x1820]);
  v4 = *v3;
  v5 = v3 + 0x110B3786D1D853E7;
  LODWORD(v3) = (*v3 ^ 0x77D8AEAB) - 289942562;
  STACK[0x1498] = STACK[0x1858];
  LODWORD(STACK[0xB84]) = v3 + ((2 * v4) & 0xEFB15D56);
  STACK[0x1128] = v5;
  STACK[0x2180] = 0;
  LODWORD(STACK[0x11C4]) = -183221771;
  return (*(a1 + 8 * (v2 ^ (a2 + 2883) ^ (4940 * (v2 == -2048994804)))))();
}

uint64_t sub_10038AE50@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x296C]) = v3;
  STACK[0x2970] = v4;
  v5 = STACK[0x1340];
  STACK[0x2978] = &STACK[0x2A60] + STACK[0x1340] + 0x2968F53CA5E43631;
  STACK[0x1340] = (a2 + 12458) + v5 - 18549;
  STACK[0x7D8] = v2;
  if (v2)
  {
    v6 = v4 == 0x5480F16B0E863CB5;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a1 + 8 * ((v7 * ((a2 ^ 0x2365) - 15030)) ^ a2)))();
}

uint64_t sub_10038AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v4 = 1024473426;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1891954783;
  *(v4 + 24) = v6;
  *(v4 + 40) = v6;
  STACK[0x2980] = v4 + 40;
  *(v4 + 48) = 0;
  STACK[0x2988] = v4 + 48;
  *(v4 + 56) = v6;
  STACK[0x2990] = v4 + 56;
  *(v4 + 64) = 0;
  STACK[0x2998] = v4 + 64;
  *(v4 + 72) = v6;
  *(v4 + 32) = 0;
  STACK[0x29A0] = v4 + 72;
  *(v4 + 80) = 0;
  STACK[0x29A8] = v4 + 80;
  *(v4 + 88) = 18;
  return (*(a3 + 8 * ((((v3 - 18086) ^ 0x396A ^ ((v3 - 7573) | 0x100E)) * (v7 == v5)) ^ v3)))();
}

uint64_t sub_10038B018@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  STACK[0x828] = *(a1 + 8 * v2);
  v6 = v3 == 0x5480F16B0E863CB5 || a2 == 0x5480F16B0E863CB5;
  return (*(a1 + 8 * (((((v4 - 68) ^ v6) & 1) * (v4 - 11651)) ^ v4)))();
}

uint64_t sub_10038B210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = a1 + 1;
  v15 = v11 == 53 || v13 == (v10 + 2476) + v8;
  return (*(v12 + 8 * ((v15 * ((17 * (v10 ^ a8)) ^ v9)) ^ v10)))();
}

uint64_t sub_10038B248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v5 - 0x5480F16B0E863CB5) = v4;
  STACK[0x2208] = *(a3 + 8 * v3);
  return (*(a3 + 8 * ((v3 + 670) ^ v3)))();
}

uint64_t sub_10038B380(uint64_t a1, uint64_t a2, char a3, int a4, int a5, int a6)
{
  if (v8 == 19)
  {
    v14 = 0;
  }

  else
  {
    v13 = (*(v9 + (v8 & 0xF)) ^ *(a1 + v8) ^ *(v10 + (v8 & 0xF)) ^ ((v8 & 0xF) * a3) ^ *((v8 & 0xF) + v11 + 2)) - *(a2 + v8);
    v14 = v13 + v7 - (a4 & (2 * v13)) == a5;
  }

  v15 = !v14;
  return (*(v12 + 8 * ((v15 * a6) ^ v6)))();
}

uint64_t sub_10038B3E8@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x83C]) = (a1 ^ v7 | v5 ^ v2) - ((2 * (a1 ^ v7 | v5 ^ v2)) & 0x160274C6) - 1962853789;
  LODWORD(STACK[0x1088]) = v9;
  v10 = *(a2 - 0x5480F16B0E863521);
  LODWORD(STACK[0x1DC4]) = v10;
  v11 = STACK[0x1340];
  STACK[0x1ED8] = &STACK[0x142AC8D28520E194] + STACK[0x1340];
  STACK[0x1340] = ((v6 - 1613416974) & 0x602A9F9F) + v11 - 2966;
  STACK[0x1DE0] = a2 - 0x5480F16B0E86351DLL;
  LODWORD(STACK[0x11BC]) = -1240130101;
  v14 = (v10 == 193142792 || (v10 & 0xFFFFFFEF) == 193142788) && v3 != v4;
  return (*(v8 + 8 * ((19 * v14) | v6)))(2876728310);
}

uint64_t sub_10038B8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x1D90];
  v6 = (*(a3 + 8 * (v3 + 16878)))(STACK[0x1D90] - 0x5480F16B0E863CB5, v4 - 0x5480F16B0E863CB5, 2248);
  return (*(STACK[0x7B8] + 8 * (((*(v5 - 0x5480F16B0E863A69) == 2080884513) * (((v3 + 551558100) & 0xDF1FFFB3) + 6700)) ^ v3)))(v6);
}

uint64_t sub_10038B930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 0x5480F16B0E863A2DLL) = v4 - 0x4944BAFB43C0D595;
  *(v4 - 0x5480F16B0E86389DLL) = v4 - 0x4944BAFB43C0D405;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10038B9F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2 - 2802;
  v5 = (*(a1 + 8 * (v4 + 12692)))(a2 - 0x5480F16B0E863CB5);
  v6 = STACK[0x7B8];
  STACK[0xDC0] = v3;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_10038BA84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = (*(a1 + 8 * (v3 + 11374)))(a2 - 0x5480F16B0E863CB5);
  v5 = STACK[0x7B8];
  STACK[0x1300] = v2;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10038BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0xC7C]) = v3;
  STACK[0x1EA8] = v5;
  STACK[0x940] = *(a3 + 8 * (v4 - 14786));
  return (*(a3 + 8 * (v4 - 22655 + ((v4 - 14924) | 0x32CD))))();
}

uint64_t sub_10038BDF8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x28D8] = a2;
  STACK[0x1910] = v3;
  return (*(a1 + 8 * (((((v4 + 80) ^ (a2 == v2)) & 1) * ((v4 ^ 0x7EE7) - 15099)) ^ v4)))();
}

uint64_t sub_10038BE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 | 0x4780;
  v5 = (*(a3 + 8 * ((v3 | 0x4780) ^ 0xDDF)))(32);
  v6 = STACK[0x7B8];
  STACK[0x1910] = v5 + 0x5169BC75931DF3BBLL;
  return (*(v6 + 8 * (((8 * (((v5 == 0) ^ (v4 - 104)) & 1)) & 0xDF | (32 * (((v5 == 0) ^ (v4 - 104)) & 1))) ^ v4)))();
}

uint64_t sub_10038BF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 8) = 0x28EFD19321F45ED0;
  *(v4 + 16) = 0x73A458C9C3918C89;
  return (*(a3 + 8 * ((3922 * (v3 >= v3 + 1586168178)) ^ (v3 + 1327193045))))();
}

uint64_t sub_10038BFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 4628)))();
  v6 = STACK[0x7B8];
  *v4 = 0;
  return (*(v6 + 8 * v3))(v5);
}

uint64_t sub_10038BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 8) = (v5 ^ v6) - ((2 * (v5 ^ v6)) & 0x43E8B9A0) + ((v3 + 15907) ^ 0x28EFD19321F414CBLL);
  *(v4 + 16) = 0x73A458C9C3918C89;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10038C08C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4[3] = v2;
  v5 = (*(a1 + 8 * (v3 + 571)))(((v3 ^ 0xFFFFBA01) + v3 - 14902) & a2 ^ 0x21F45CD0);
  v6 = STACK[0x7B8];
  *v4 = v5;
  return (*(v6 + 8 * (((2 * (v5 == 0)) | (4 * (v5 == 0))) ^ v3)))();
}

uint64_t sub_10038C3D4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x600]) = 0;
  v4 = *(a3 + 8 * ((((v3 + 5053) ^ 0x2D75) * (a1 < 0x10)) ^ v3));
  LODWORD(STACK[0x5E0]) = a1;
  return v4();
}

uint64_t sub_10038C55C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, int8x16_t a9@<Q0>, int8x16_t a10@<Q1>, int64x2_t a11@<Q2>, int8x16_t a12@<Q3>, int8x16_t a13@<Q4>, int8x16_t a14@<Q5>, int64x2_t a15@<Q6>, int8x16_t a16@<Q7>)
{
  v35 = (v18 + a7);
  v36.i64[0] = a8 + (v18 + a3);
  v36.i64[1] = a8 + (v18 + a2);
  v37.i64[0] = a8 + (v18 + a5);
  v37.i64[1] = a8 + (v18 + a4);
  v38.i64[0] = a8 + v35;
  v38.i64[1] = a8 + (v18 + a6);
  v39.i64[0] = a8 + (v18 + a1);
  v39.i64[1] = a8 + (v18 + v20 + v21);
  v40 = vandq_s8(v39, a9);
  v41 = vandq_s8(v38, a9);
  v42 = vandq_s8(v37, a9);
  v43 = vandq_s8(v36, a9);
  v44 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v48 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v46, v46), a11), a12), v46);
  v49 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v47, v47), a11), a12), v47);
  v50 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v45, v45), a11), a12), v45), a15);
  v51 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v44, v44), a11), a12), v44), a15);
  v52 = veorq_s8(v51, a16);
  v53 = veorq_s8(v50, a16);
  v54 = veorq_s8(v50, v24);
  v55 = veorq_s8(v51, v24);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), a13);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), a13);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v25);
  v64 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v65 = veorq_s8(v62, v25);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v64);
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v26), v70), v27), v28);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v26), v69), v27), v28);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), a14);
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v80 = veorq_s8(v77, a14);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v79);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v29);
  v86 = veorq_s8(v84, v29);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = veorq_s8(vaddq_s64(v90, v88), v30);
  v93 = veorq_s8(v91, v30);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v99 = vaddq_s64(v48, a15);
  v100 = vaddq_s64(v98, v96);
  v101 = vaddq_s64(v97, v95);
  v134.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v31), v100), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a10)));
  v134.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v31), v101), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a10)));
  v102 = veorq_s8(v99, a16);
  v103 = veorq_s8(v99, v24);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), a13);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v25);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v26), v108), v27), v28);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), a14);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v29);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v30);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL)));
  v117 = vaddq_s64(v49, a15);
  v134.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), v31), v116), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a10)));
  v118 = veorq_s8(v117, a16);
  v119 = veorq_s8(v117, v24);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), a13);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v25);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v26), v124), v27), v28);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), a14);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v29);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v30);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL)));
  v134.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), v31), v132), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a10)));
  *(a8 + v35 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v134, v34)), *(v17 + v35));
  return (*(v23 + 8 * (((v18 != v19) * v22) ^ v16)))((a1 - 8), (a2 - 8), (a3 - 8));
}

uint64_t sub_10038CB58(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x7A0] = *(a3 + 8 * v13);
  STACK[0x510] = a5 - 15;
  LODWORD(STACK[0x600]) = a1 & 0xFFFFFFF0;
  LODWORD(STACK[0x5C0]) = a2;
  LODWORD(STACK[0x570]) = a4;
  LODWORD(STACK[0x500]) = a2 + a4 - 1338507151;
  *&STACK[0x760] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x750] = vdupq_n_s64(0x38uLL);
  *&STACK[0x740] = vdupq_n_s64(0xD3276F239AA6A184);
  *&STACK[0x730] = vdupq_n_s64(a8);
  *&STACK[0x710] = vdupq_n_s64(v11);
  *&STACK[0x700] = vdupq_n_s64(v12);
  *&STACK[0x6F0] = vdupq_n_s64(0xC1762AE45C71F8C2);
  *&STACK[0x6E0] = vdupq_n_s64(0x77E35FD4FCBE378CuLL);
  *&STACK[0x6D0] = vdupq_n_s64(0x4B5EFAAC9232C4EEuLL);
  *&STACK[0x6C0] = vdupq_n_s64(v15);
  *&STACK[0x6B0] = vdupq_n_s64(v16);
  *&STACK[0x6A0] = vdupq_n_s64(v9);
  *&STACK[0x690] = vdupq_n_s64(0xF55961B2DD3F2129);
  *&STACK[0x680] = vdupq_n_s64(0x398AD2670602F2C9uLL);
  *&STACK[0x670] = vdupq_n_s64(0xC48877EC7E57888uLL);
  *&STACK[0x660] = vdupq_n_s64(v10);
  *&STACK[0x650] = vdupq_n_s64(v8);
  *&STACK[0x640] = vdupq_n_s64(v14);
  *&STACK[0x780] = xmmword_1004248A0;
  return (STACK[0x7A0])((a2 + a4 - 1338507136), (v13 - 1408845697) & 0x53F95ECD ^ 0xB43D5204);
}

uint64_t sub_10038CD80@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, uint64_t a7@<X8>, int8x16_t a8@<Q1>, int8x16_t a9@<Q2>, int64x2_t a10@<Q5>, int8x16_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  *&v39 = a7 + (v26 + v28);
  *(&v39 + 1) = a7 + (v22 + v28);
  *&STACK[0x7A0] = v39;
  v40.i64[0] = a7 + (a3 + v28);
  v41.i64[0] = a7 + (v23 + v28);
  v40.i64[1] = a7 + (a6 + v28);
  v41.i64[1] = a7 + (v15 + v28);
  v42.i64[0] = a7 + (v18 + v28);
  v42.i64[1] = a7 + (v19 + v28);
  v43 = (a1 + v28);
  v44.i64[0] = a7 + v43;
  v44.i64[1] = a7 + (v20 + v28);
  v45.i64[0] = a7 + (v16 + v28);
  v45.i64[1] = a7 + (v17 + v28 + a2);
  v46 = vandq_s8(v45, *&STACK[0x760]);
  v47 = vandq_s8(v44, *&STACK[0x760]);
  v48 = vandq_s8(v42, *&STACK[0x760]);
  v49 = vandq_s8(v41, *&STACK[0x760]);
  v50 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v54 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v52, v52), a10), *&STACK[0x730]), v52);
  v55 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v53, v53), a10), *&STACK[0x730]), v53);
  v56 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v51, v51), a10), *&STACK[0x730]), v51), *&STACK[0x710]);
  v57 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v50, v50), a10), *&STACK[0x730]), v50), *&STACK[0x710]);
  v58 = veorq_s8(v57, a11);
  v59 = veorq_s8(v56, a11);
  v60 = veorq_s8(v56, a12);
  v61 = veorq_s8(v57, a12);
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v60), v29);
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61), v29);
  v66 = veorq_s8(v65, v64);
  v67 = veorq_s8(v62, v63);
  v68 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), v30);
  v71 = veorq_s8(v69, v30);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v31), v76), v32), v33);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), v31), v75), v32), v33);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80);
  v83 = veorq_s8(vaddq_s64(v81, v79), v34);
  v84 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v85 = veorq_s8(v82, v34);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = veorq_s8(v83, v84);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v35);
  v91 = veorq_s8(v89, v35);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), v36);
  v98 = veorq_s8(v96, v36);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v100 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v93.i64[0] = a7 + (a4 + v28);
  v93.i64[1] = a7 + (v13 + v28);
  v102 = vaddq_s64(v54, *&STACK[0x710]);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100);
  v104 = vaddq_s64(v101, v99);
  v223.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), v37), v103), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a9)));
  v223.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v37), v104), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a9)));
  v105 = veorq_s8(v102, a11);
  v106 = veorq_s8(v102, a12);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v29);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v30);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v31), v111), v32), v33);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v34);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v35);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v36);
  v41.i64[0] = a7 + (v14 + v28);
  v41.i64[1] = a7 + (a5 + v28);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL)));
  v120 = vandq_s8(v41, *&STACK[0x760]);
  v121 = vaddq_s64(v55, *&STACK[0x710]);
  v223.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v37), v119), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), a9)));
  v122 = veorq_s8(v121, a11);
  v123 = veorq_s8(v121, a12);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v29);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v30);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v31), v128), v32), v33);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v34);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v35);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v36);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v138 = vandq_s8(v93, *&STACK[0x760]);
  v139 = vaddq_s64(v137, v136);
  v140 = vandq_s8(v40, *&STACK[0x760]);
  v223.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), v37), v139), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), a9)));
  v141 = vandq_s8(*&STACK[0x7A0], *&STACK[0x760]);
  v142 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v146 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v144, v144), a10), *&STACK[0x730]), v144);
  v147 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v145, v145), a10), *&STACK[0x730]), v145);
  v148 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v143, v143), a10), *&STACK[0x730]), v143), *&STACK[0x710]);
  v149 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v142, v142), a10), *&STACK[0x730]), v142), *&STACK[0x710]);
  v142.i64[0] = vqtbl4q_s8(v223, *&STACK[0x780]).u64[0];
  v150 = veorq_s8(v149, a11);
  v151 = veorq_s8(v148, a11);
  v152 = veorq_s8(v148, a12);
  v153 = veorq_s8(v149, a12);
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), v29);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v153), v29);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(v154, v223.val[0]);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(v223.val[0], v156), v30);
  v160 = veorq_s8(v158, v30);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v162 = veorq_s8(v159, v223.val[0]);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v162);
  v164 = vaddq_s64(v223.val[0], v161);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), v31), v164), v32), v33);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v31), v163), v32), v33);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v168 = veorq_s8(v165, v223.val[0]);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(v223.val[0], v167), v34);
  v171 = veorq_s8(v169, v34);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v173 = veorq_s8(v170, v223.val[0]);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(v223.val[0], v172), v35);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v176 = veorq_s8(v174, v35);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v178 = veorq_s8(v175, v223.val[0]);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(v223.val[0], v177), v36);
  v181 = veorq_s8(v179, v36);
  v223.val[0] = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v183 = vaddq_s64(v146, *&STACK[0x710]);
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), veorq_s8(v180, v223.val[0]));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v223.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v184, v184), v37), v184), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x7A0], 3uLL), a9)));
  v223.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), v37), v185), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a9)));
  v186 = veorq_s8(v183, a11);
  v187 = veorq_s8(v183, a12);
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v29);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), v30);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v31), v192), v32), v33);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v34);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v35);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v36);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL)));
  v201 = vaddq_s64(v147, *&STACK[0x710]);
  v223.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v200, v200), v37), v200), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), a9)));
  v202 = veorq_s8(v201, a11);
  v203 = veorq_s8(v201, a12);
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203), v29);
  v205 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v207 = veorq_s8(v204, v205);
  v208 = veorq_s8(vaddq_s64(v206, v207), v30);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v210, v210), v31), v210), v32), v33);
  v212 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v214 = veorq_s8(v211, v212);
  v215 = veorq_s8(vaddq_s64(v213, v214), v34);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v35);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v36);
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL)));
  v223.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v220, v220), v37), v220), v38), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a9)));
  v142.i64[1] = vqtbl4q_s8(v223, *&STACK[0x780]).u64[0];
  v221 = vrev64q_s8(v142);
  *(a7 + v43 - 15) = veorq_s8(vextq_s8(v221, v221, 8uLL), *(v12 + v43));
  return (*(v24 + 8 * (((v21 == v28) * v27) ^ v25)))();
}

uint64_t sub_10038D8D4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v20 = __ROR8__((a3 + (v4 + v10)) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((v6 + 2 * v20) & a2) - v20 + v14;
  v22 = v21 ^ v15;
  v21 ^= 0xC1762AE45C71F8C2;
  v23 = (__ROR8__(v22, 8) + v21) ^ v7;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v11;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((v18 & (2 * (v27 + v26))) - (v27 + v26) + v19) ^ v12;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x398AD2670602F2C9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v8;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = STACK[0x7B8];
  *(a3 + (v4 + v10)) = ((((v13 | (2 * (v36 + v35))) - (v36 + v35) + v3) ^ v16) >> (8 * ((a3 + v4 + v10) & 7))) ^ *(a1 + (v4 + v10));
  return (*(v37 + 8 * (((v4 - 1 == v17) | (2 * (v4 - 1 == v17))) ^ v9)))();
}

uint64_t sub_10038DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x28EC]) = v4;
  STACK[0x28F0] = v3;
  STACK[0xFF0] = v6;
  STACK[0x1190] = 0;
  return (*(a3 + 8 * (((v6 == 0x110B3786D1D853DFLL) * (((v5 - 1797278414) & 0x6B201CF9) + ((v5 - 5753) | 0xB5A) - 21261)) ^ v5)))();
}

uint64_t sub_10038DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (((v3 + 11083) | 0x301u) ^ 0xFBFF953A9ECA2877) + *(v4 - 0x5169BC75931DF3A3);
  v6 = *(v4 - 0x5169BC75931DF3ABLL) - 0x73A458C8FBB67FEBLL;
  v7 = v5 < 0xC7DB0C9E;
  v8 = v5 > v6;
  if (v6 < 0xC7DB0C9E != v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(a3 + 8 * ((v9 * (((v3 + 11083) ^ 0x7BCC) - 14992)) ^ v3)))();
}

uint64_t sub_10038DF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v4 ^ 0x540B)))(v3);
  v6 = STACK[0x7B8];
  STACK[0x1190] = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((v4 ^ 0xFFFFE210) + v4 - 6770)) ^ v4)))();
}

uint64_t sub_10038E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 ^ 0x1D6E;
  v6 = *(a3 + 8 * ((85 * ((v4 ^ 0xF562A200) + (v3 ^ 0x5281DAC ^ (2 * v4) & 0xEFE97F9C) != 2012528590)) ^ v3));
  LODWORD(STACK[0x7A0]) = v5;
  return v6();
}

uint64_t sub_10038E1C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>)
{
  v24 = (a2 | ((a2 < v14) << 32)) + a3;
  v25 = __ROR8__((v10 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = v22;
  v27 = a7 - (((a5 - v25) | a6) + ((v25 + v11) | a4));
  v28 = v27 ^ a8;
  v29 = v27 ^ v16;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x77E35FD4FCBE378CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a1;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v9;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xF55961B2DD3F2129;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v17 & (2 * (v38 + v37))) - (v38 + v37) + v18) ^ v19;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v13;
  *(v24 + v26 + v20) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ a9) >> (8 * ((v10 + a2 + a3) & 7))) ^ *(v10 + v24);
  return (*(v23 + 8 * (((v12 == 0) * v21) ^ v15)))();
}

uint64_t sub_10038E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x798] - 11084;
  *(STACK[0x840] - 0x78EA0BC2489CC298) = STACK[0x8C8];
  *STACK[0x28F8] = LODWORD(STACK[0x1640]) ^ 0xD8B31278;
  return (*(a3 + 8 * v3))();
}

uint64_t sub_10038E374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x10F8] - 0x5169BC75931DF3ABLL) += (LODWORD(STACK[0x28EC]) - 1720746633);
  *(STACK[0xFF0] - 0x110B3786D1D853DFLL) = STACK[0x1190];
  return (*(a3 + 8 * (((2 * (STACK[0x28F0] != 0)) | (4 * (STACK[0x28F0] != 0))) ^ (STACK[0x798] - 8275))))();
}

uint64_t sub_10038E400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x798] - 7417;
  *v4 = v3;
  return (*(a3 + 8 * v5))();
}

uint64_t sub_10038E5F4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x2904]) = a2;
  STACK[0x2908] = v4;
  STACK[0x1BE0] = v4;
  return (*(a1 + 8 * ((45 * ((((v3 ^ 0x4A) - 61) ^ (v4 == v2)) & 1)) ^ v3)))();
}

uint64_t sub_10038E768@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = (v2 << ((v3 - 66) ^ (v3 - 37) & 0xFD ^ 0x26u)) ^ 0x51DFA32643E8B9A0;
  v5 = a2 + v4 - ((2 * v4 + 8) & 0x51DFA32643E8B9A0) + 4;
  STACK[0x17F8] = v5;
  v6 = (*(a1 + 8 * (v3 + 10934)))(v5 & 0xFFFFFFFE ^ 0x21F45CD0);
  v7 = STACK[0x7B8];
  STACK[0x1DF0] = v6;
  v8 = v6 == 0;
  LOBYTE(STACK[0x2917]) = v8;
  return (*(v7 + 8 * ((16294 * v8) ^ v3)))();
}

uint64_t sub_10038EF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = (v11 + 140135042 + v9);
  v24 = v23 == v19;
  v25 = (v23 | ((v23 < v19) << 32)) + 0x339974C1D82D21FLL;
  v26 = (a9 + v25);
  v27 = __ROR8__((a9 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = v25 + a1;
  v29 = (v27 + v22) ^ v15;
  v30 = (__ROR8__((v27 + v22) ^ a2, 8) + v29) ^ v14;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v17;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v16 - ((v34 + v33) | v16) + ((v34 + v33) | 0xFB5C0C2E490A5BEFLL)) ^ 0x78F8E7FA4536F4F9 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__((v16 - ((v34 + v33) | v16) + ((v34 + v33) | 0xFB5C0C2E490A5BEFLL)) ^ 0x78F8E7FA4536F4F9, 8) + v35) ^ v12;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v13 - ((v38 + v37) | v13) + ((v38 + v37) | 0x590C5756BDAC135FLL)) ^ 0x60868531BBAEE196;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = __ROR8__(v28 & 0xFFFFFFFFFFFFFFF8, 8) + v22;
  v43 = v42 ^ a2;
  v44 = v42 ^ v15;
  v45 = (__ROR8__(v43, 8) + v44) ^ v14;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v17;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v41 + v40)) | 0xD47A7A584FE0DEC8) - (v41 + v40) + 0x15C2C2D3D80F909CLL) ^ 0xE675BA52E01517ECLL;
  v51 = (((2 * (v49 + v48)) & 0x676002D658E0DE48) - (v49 + v48) - 0x33B0016B2C706F25) ^ 0x4FEB1540DFB33FCDLL;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v40, 61));
  v54 = (__ROR8__(v51, 8) + v52) ^ v12;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v52, 61);
  v57 = (v55 + v56 - ((2 * (v55 + v56)) & 0x474F8A5A57F425DALL) + 0x23A7C52D2BFA12EDLL) ^ 0x1A2D174A2DF8E024;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = ((v10 | (2 * (v59 + v58))) - (v59 + v58) + a4) ^ a5;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  *v28 = ((((a6 | (2 * (v62 + v61))) - (v62 + v61) + a7) ^ a8) >> (8 * (v28 & 7u))) ^ ((v53 ^ v21) >> (8 * (v26 & 7u))) ^ *v26;
  v63 = v24;
  return (*(a3 + 8 * ((v63 * v18) ^ v20)))();
}

uint64_t sub_10038F2E0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = a2 ^ 0x56A4;
  v5 = (*(a1 + 8 * ((a2 ^ 0x56A4) + 10811)))();
  v6 = STACK[0x7B8];
  *(v3 + v2) = 0;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_10038F33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v5 - 0x5169BC75931DF3B3) = STACK[0x1FD0];
  v7 = *(v5 - 0x5169BC75931DF3A3) + v6 - *(v5 - 0x5169BC75931DF3ABLL);
  v8 = STACK[0x978];
  *(v5 + v3) = STACK[0x978];
  *(v5 - 0x5169BC75931DF3A3) = v7;
  *(v5 - 0x5169BC75931DF3ABLL) = v6;
  v9 = LOBYTE(STACK[0x296B]);
  if (!v8)
  {
    v9 = 0;
  }

  return (*(a3 + 8 * ((v9 * ((v4 - 753605600) & 0x2CEB3FDE ^ 0x3365)) ^ v4)))();
}

uint64_t sub_10038F488@<X0>(uint64_t a1@<X2>, char a2@<W8>)
{
  v6 = v3 + v4 - 0x4006AC62910A0ABLL;
  v7 = ((v2 + 1774611496) & 0x9639BFFE) + __ROR8__((v6 - 15) & 0xFFFFFFFFFFFFFFF8, 8) + 0x6993B791CD531564;
  v8 = v7 ^ 0x2E8ED35FF3FE6FELL;
  v7 ^= 0x4E7551BB95A560EDuLL;
  v9 = __ROR8__(v8, 8);
  v10 = (((v9 + v7) | 0xADC03164832F472CLL) - ((v9 + v7) | 0x523FCE9B7CD0B8D3) + 0x523FCE9B7CD0B8D3) ^ 0xDA236EB07F9170A0;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) | 0x561A0035773B08F0) - (v12 + v11) + 0x54F2FFE544627B88) ^ 0xE053FAB629AF4096;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((((2 * (v15 + v14)) & 0x4D2CE315855354D0) - (v15 + v14) - 0x2696718AC2A9AA69) ^ 0x5ACD65A1316AFA81, 8);
  v17 = (((2 * (v15 + v14)) & 0x4D2CE315855354D0) - (v15 + v14) - 0x2696718AC2A9AA69) ^ 0x5ACD65A1316AFA81 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17) ^ 0xF55961B2DD3F2129;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x398AD2670602F2C9;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xC48877EC7E57888;
  *(v6 - 15) = a2 ^ 0x5E ^ (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v6 - 15) & 7)));
  ++*(v5 - 0x5169BC75931DF3A3);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10038F718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v4 + 2580)))();
  v7 = STACK[0x7B8];
  *(v3 + v5) = 0;
  return (*(v7 + 8 * v4))(v6);
}

uint64_t sub_10038F74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = STACK[0x1DF0];
  *(v4 + v5) = STACK[0x1DF0];
  *(v4 - 0x5169BC75931DF3B3) = STACK[0x17F8];
  *(v4 - 0x5169BC75931DF3A3) = ((v3 + 1068068315) & 0xC056BF5F) + *(v4 - 0x5169BC75931DF3A3) - *(v4 - 0x5169BC75931DF3ABLL) + 0x73A458C9C391512BLL;
  *(v4 - 0x5169BC75931DF3ABLL) = v6;
  v8 = LOBYTE(STACK[0x2917]);
  if (!v7)
  {
    v8 = 0;
  }

  return (*(a3 + 8 * ((v8 * ((v3 ^ 0x357D) - 15094)) ^ v3)))();
}

uint64_t sub_10038F954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 8 * (v5 + 7657)))();
  v7 = STACK[0x7B8];
  *(v3 + v4) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_10038F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = STACK[0xEE8];
  *(v4 + v6) = STACK[0xEE8];
  *(v4 - 0x5169BC75931DF3B3) = STACK[0x1F90];
  *(v4 - 0x5169BC75931DF3A3) = *(v4 - 0x5169BC75931DF3A3) + (v3 ^ v5 ^ 0x73A458C9C391B7D7) - *(v4 - 0x5169BC75931DF3ABLL);
  *(v4 - 0x5169BC75931DF3ABLL) = v7;
  v9 = LOBYTE(STACK[0x295E]);
  if (!v8)
  {
    v9 = 0;
  }

  return (*(a3 + 8 * ((v9 * ((2533 * (v3 ^ 0x2DD3)) ^ 0x3B7A)) ^ v3)))();
}

uint64_t sub_10038FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + 66) | 0x40;
  v5 = v3 + 205;
  STACK[0x7A0] = STACK[0xF08];
  v6 = STACK[0x2950];
  STACK[0x780] = STACK[0x2950];
  v7 = v6 - ((2 * v6 + 886159886) & 0x809D82F8) + ((v3 + 345097606) | 0x2010) + 1176862095;
  return (*(a3 + 8 * ((107 * ((v7 ^ 0x5F953EE5) - 278465537 + ((v7 << (v4 + 33)) & 0x3FB7FF32 ^ 0x958230) == 256045976)) ^ v5)))();
}

uint64_t sub_10038FCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = (v9 - 1);
  v26 = (v25 | ((v25 < v11) << 32)) + 0x70301B34873BECEDLL;
  v27 = v13 + a4 + v26;
  v28 = __ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (((a5 & 0x870DD5F0 ^ v14) - v28) & v10) + v28 + a8 - ((v28 + a8) & v10);
  v30 = v29 ^ v15;
  v31 = v29 ^ v16;
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x77E35FD4FCBE378CLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v17 | (2 * (v34 + v33))) - (v34 + v33) + v18) ^ v19;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ a7;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xF55961B2DD3F2129;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - (v21 & (2 * (v41 + v40))) + v22) ^ v23;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v12 - ((v44 + v43) | v12) + ((v44 + v43) | v24)) ^ v8;
  *v27 = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ a6) >> (8 * (v27 & 7u))) ^ *(v26 + a1 - 0x70301B34967EE085);
  return (*(v20 + 8 * ((28 * (v25 != v11)) ^ a3)))();
}

void sub_10038FEB4(_DWORD *a1)
{
  v1 = *a1 - 2054851651 * ((-2 - ((a1 | 0x5B46B343) + (~a1 | 0xA4B94CBC))) ^ 0x2817E39A);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100390110(__n128 a1)
{
  v1[-1] = a1;
  *v1 = a1;
  return (*(v5 + 8 * (((v2 == 0) * ((v4 + 915) ^ v3)) ^ v4)))();
}

uint64_t sub_100390190(__n128 a1)
{
  v2[-1] = a1;
  *v2 = a1;
  return (*(v6 + 8 * (((v3 == v4) * v5) ^ v1)))();
}

uint64_t sub_1003901EC@<X0>(unsigned int a1@<W8>, __n128 a2@<Q0>)
{
  v7 = (v5 + v2);
  *v7 = a2;
  v7[1] = a2;
  return (*(v6 + 8 * (((v3 + v2 == 64) * v4) ^ a1)))();
}

uint64_t sub_100390214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *v45 = v45;
  STACK[0x300] = v45;
  STACK[0x380] = 0x800000008;
  a45 = v47;
  STACK[0x308] = &a45;
  STACK[0x3C0] = 0x100000002;
  v49 = (*(v48 + 8 * (v46 ^ 0x5AD0)))(0);
  return (*(v48 + 8 * ((16357 * (LODWORD(STACK[0x3C4]) == 1)) ^ v46)))(v49);
}

uint64_t sub_100390348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32 * a2) = a1;
  *(v2 + 8 * LODWORD(STACK[0x3C0]) + 512) = v2 + 32 * LODWORD(STACK[0x3C0]);
  *(v2 + 4 * LODWORD(STACK[0x3C0]) + 640) = 8;
  LODWORD(STACK[0x3C0]) = v3 + 2646 + LODWORD(STACK[0x3C0]) - 6901;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_10039044C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(v3 + 32 * a2) = (a1 ^ 0x31FF7BBF) - 838826943 + ((2 * a1) & 0x63FEF77E);
  *(v3 + 8 * LODWORD(STACK[0x3C0]) + 512) = v3 + 32 * LODWORD(STACK[0x3C0]);
  *(v3 + 4 * LODWORD(STACK[0x3C0]) + 640) = 4;
  LODWORD(STACK[0x3C0]) += (v2 + 1234) ^ 0x1FC9;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1003904C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, _BYTE *a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28)
{
  *a18 = (*(v30 + 8 * (v28 ^ 0x55AE)))(14);
  (*(v30 + 8 * (v28 ^ 0x558F)))();
  v34 = (*(v30 + 8 * (v28 + 10910)))(4);
  *v31 = v34;
  *v34 = -1936946036;
  **v31 = 0;
  v35 = *a18;
  *(v29 + 15) = -88;
  *(v35 + 11) = 37;
  *v32 = -47;
  *v33 = -94;
  *(v35 + 9) = 16309;
  *a26 = 106;
  *a22 = -82;
  *(v29 + 1) = 93;
  *(v35 + 7) = 7190;
  *a23 = 25;
  *v35 = 79;
  *a24 = 16;
  *(v35 + 5) = -32;
  *(v29 + 6) = -38;
  *(v29 + 8) = 1805;
  *(v35 + 2) = -12354;
  *(v35 + 12) = 21;
  *a27 = -73;
  *(v29 + 3) = -107;
  *a28 = 55;
  *(v29 + 10) = 24582;
  *(v29 + 13) = 6;
  *(v29 + 7) = -59;
  *(v35 + 4) = -5;
  *(v29 + 16) = -38;
  *(v29 + 14) = -36;
  *a25 = 122;
  *v29 = -3;
  *(v29 + 2) = 110;
  *(v29 + 12) = -35;
  *(v29 + 4) = -29495;
  *(v35 + 6) = -66;
  *(v35 + 13) = 6;
  *(v35 + 1) = -97;
  return (*(v30 + 8 * ((28 * (((v28 + 28) ^ 0x59 ^ (LODWORD(STACK[0x3C0]) == 0)) & 1)) ^ v28)))();
}

uint64_t sub_100390D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{
  v269 = (v42 + 360) | 0x13C4u;
  v44 = v39 ^ 0x6364AA1555F99B9ALL ^ (v42 - 652120621) & 0x26DE7F7F;
  v45 = (v44 - (v38 ^ v39 ^ 0x5D17D6E911BDDDA1)) ^ ((v38 ^ 0xC18C8303BBBB962BLL ^ v269) + 1);
  v46 = (0x44E2DEA3968AE83ELL - (a7 ^ (v40 + a32) ^ 0x2DA3ABDF25BD733ALL)) ^ a7 ^ (v40 + a32) ^ ((a7 ^ (v40 + a32) ^ 0x96BE8A834CC864FBLL) + 1);
  v47 = ((2 * v46) & 0xF5DEBE7FFC7667DELL ^ 0xD082AA7964662608) + (v46 ^ 0x93AE2A434D0CA8EBLL);
  v48 = v47 - ((2 * v47 - 0x6C190138CF609762) & 0x8D329EB9509C7B9CLL) + 0x108CCEC0409DF21DLL;
  v49 = v38 ^ 0x3E737CFC44445220;
  v50 = ((v38 ^ 0x3E737CFC44445220) - (v38 ^ 0x3E737CFC44445220 ^ v45)) ^ -v45;
  v51 = v45 ^ 0x28510C92D4A2EDFLL ^ (v50 + 0x28510C92D4A2EDFLL - ((2 * v50) & 0x50A21925A945DBELL));
  v52 = a3 ^ 0x36034E649E13FA84;
  v53 = v44 + (v38 ^ 0x3E737CFC44445220) + v51 - ((2 * (v44 + (v38 ^ 0x3E737CFC44445220) + v51)) & 0x81ACF02ADF4B7D04) - 0x3F2987EA905A417ELL;
  v54 = v38 ^ a3 ^ 0x36034E649E13FA84;
  v55 = (v48 ^ v41 ^ 0xE3FF2B7AD10E6FB3) & (a3 ^ 0x894DB174D6DE4B40);
  v56 = (v53 ^ 0xF9021C87B73CFC82) & (v54 ^ 0x7EC27C13F3761C1BLL);
  v57 = v48 ^ v41 ^ v49 & (a3 ^ 0x76B24E8B2921B4BFLL);
  v58 = (v53 ^ 0x6FDE37848C3037DLL) & (v48 ^ 0xC6994F5CA84E3DCELL);
  v59 = v53 ^ (v48 ^ v41 ^ 0x1C00D4852EF1904CLL) & (0xB60C809C67B04BB0 - v47);
  v60 = (v55 - ((2 * v55) & 0x41842733A908FC58) - 0x5F3DEC662B7B81D4) ^ v48 ^ v59;
  *(&v62 + 1) = v60 ^ 0x2A1CC3C00F72;
  *&v62 = v60 ^ 0xDBB4400000000000;
  v61 = v62 >> 46;
  v63 = v58 ^ v54;
  v64 = v63 ^ v59;
  *(&v62 + 1) = v61 ^ 0x38815;
  *&v62 = v61 ^ 0x9A3069BCA2D80000;
  v65 = v62 >> 18;
  v66 = v65 ^ 0x6F7C17A89EC43383;
  v67 = v65 ^ 0x6F7C17A89EC43383 ^ v64 ^ (((v64 << 36) ^ 0x96BA5C9000000000) - 0x72868EDB7B54E4CBLL - ((2 * ((v64 << 36) ^ 0x96BA5C9000000000)) & 0x1AF2E24000000000));
  v68 = ((2 * (v67 & 1)) ^ 2) & 0xFFFFFFFFFFFFFFFELL | v67 & 1;
  v69 = (v64 >> 19) ^ 0x15FE3840B32DLL;
  v70 = v67 & 0xFFFFFFFFFFFFFFFELL;
  v71 = ((v65 << 25) ^ 0x1834DE516C000000) - ((2 * ((v65 << 25) ^ 0x1834DE516C000000)) & 0x2C63CE2BFC000000) + 0x1631E715FFA6C284;
  v72 = 0x54BB6E64E3B336E0 - v68;
  if (((v68 - 1) & v69) == 0)
  {
    v72 = v68 + 0x54BB6E64E3B336DELL;
  }

  v73 = v69 - 0x54BB6E64E3B336DFLL + v72;
  v74 = (v56 - ((2 * v56) & 0x8DCDED8EB432F252) - 0x39190938A5E686D7) ^ v57;
  v75 = ((v74 ^ 0xDAE6224274E8E965) - 2 * ((v74 ^ 0xDAE6224274E8E965) & 0x3F4EFF1048CDB1D6 ^ v74 & 0x12) - 0x40B100EFB7324E3CLL) ^ v52;
  *(&v76 + 1) = v65 ^ 0x205668C1A6F28B6;
  *&v76 = ~v65;
  v77 = v65 >> 39;
  v78 = (v65 >> 39) ^ v66 ^ ((v76 >> 61) - 0x72868EDB7B54E4CBLL - ((2 * (v76 >> 61)) & 0x1AF2E2490956366ALL));
  v79 = v78 & 0xB06BFF78032F89EBLL ^ v71 & 0xB06BFF7802000000;
  v80 = (v79 | v78 & 0x4F940087FCD07614 ^ v71 & 0x4F940087FC000000) ^ 0x1631E715FFC40ACDLL;
  v81 = v80 - 0x584D15E8E26102BELL - ((2 * v80) & 0x4F65D42E3B3DFA84);
  v82 = v75 ^ (v75 >> 10);
  v83 = (v70 ^ ((v64 >> 28) | (v64 << 45)) ^ v73 ^ 0xDB48E20F66778591) - 0x72868EDB7B54E4CBLL - 2 * ((v70 ^ ((v64 >> 28) | (v64 << 45)) ^ v73 ^ 0xDB48E20F66778591) & 0xD79712484AB1B3DLL ^ (v70 ^ ((v64 >> 28) | (v64 << 45)) ^ v73) & 8);
  v84 = (v57 >> 1) ^ (v57 >> 6) ^ (v57 << 58) ^ 0x45464FE09903968ALL;
  v85 = ((v84 ^ (~v57 << 63)) - ((2 * v84) & 0xBAC29A5AB00F7DB8) - 0x229EB2D2A7F84124) ^ v57 ^ v81;
  *&v76 = __ROR8__(v75, 26);
  v86 = (v76 & 0xFF80003FFFFFFFFFLL ^ 0x54000026F27762E9) + 0x676229F1CBF63CB2 - 2 * ((v76 & 0xFF80003FFFFFFFFFLL ^ 0x54000026F27762E9) & 0x67000031CBF63CB6 ^ (v75 >> 26) & 4);
  *(&v76 + 1) = v82 ^ 0x1DE;
  *&v76 = v82 ^ 0x9BEF2FFCC7B9E200;
  v87 = ((2 * ((v86 ^ 0x676229F1CBF63CB2) + ((v76 >> 9) ^ 0x3042E64A8D93ADALL) - 2 * ((v86 ^ 0x676229F1CBF63CB2) & ((v76 >> 9) ^ 0x3042E64A8D93ADALL)))) & 0x74FBFD6BECD7FDFELL) + (((v86 ^ 0x676229F1CBF63CB2) + ((v76 >> 9) ^ 0x3042E64A8D93ADALL) - 2 * ((v86 ^ 0x676229F1CBF63CB2) & ((v76 >> 9) ^ 0x3042E64A8D93ADALL))) ^ 0xBA7DFEB5F66BFEFFLL);
  *(&v76 + 1) = v87 + 0x2014A09940101;
  *&v76 = v87 + 0x4582014A09940101;
  v88 = v76 >> 55;
  v89 = v63 ^ (v63 << 23) ^ ((v63 >> 7) ^ (v63 >> 41) | (v63 << 57));
  if ((v79 & 0x40000000000000) != 0)
  {
    v90 = (v81 ^ 0x1772EA171D9EFD42 ^ (2 * v81) & 0xFF80000000000000) + 2 * (((2 * v81) & 0xFF80000000000000 ^ 0x4F00000000000000) & (v81 ^ 0x586062040C14F042)) + 0x77144BE02D8D4A45;
  }

  else
  {
    v90 = (((v81 ^ 0xA7B2EA171D9EFD42) + 0x40000000000000) ^ 0xFFD4CBE3EFAFCBDFLL) + 0x773F7FFC3DDD7E66 + ((2 * ((v81 ^ 0xA7B2EA171D9EFD42) + 0x40000000000000)) & 0xFFA997C7DF5F97BELL);
  }

  v91 = (v75 << 47) ^ (v75 << 54) ^ v88;
  v92 = v91 ^ v89;
  v93 = v66 ^ v89 ^ v83;
  v94 = v91 ^ v89 ^ 0x1CF25966DE4937D6;
  v95 = v93 ^ 0xA2146832406E4C65 ^ ((v90 - 0x77144BE02D8D4A45) ^ 0xFFBFFFFFFFFFFFFFLL) & (v85 ^ 0x8FF61569EAE588D1);
  v96 = v94 & (v91 ^ 0x509AB6AE4D8A4BF9) ^ v85;
  v97 = v92 ^ (v93 ^ 0x4C68EFC893C37C2FLL) & (v81 ^ 0xA7B2EA171D9EFD42);
  v98 = (v92 & 0x4000000000) == 0;
  v99 = 0xFFFFFFC000000000;
  if (!v98)
  {
    v99 = 0x4000000000;
  }

  v100 = v99 + v94;
  *(&v102 + 1) = v88 ^ 0x951B275B406;
  *&v102 = v91 ^ 0xAF65400000000000;
  v101 = v102 >> 45;
  v103 = (v91 ^ 0xAF654951B275B406) & (v85 ^ 0x7009EA96151A772ELL);
  v104 = v97 ^ v95;
  v105 = v97 ^ v95 ^ 0xA88C2D20AEAC5BC6;
  v106 = (v100 ^ 0xFFFFFFBFFFFFFFFFLL) & (v93 ^ 0xB39710376C3C83D0);
  v107 = (v103 - ((2 * v103) & 0x2306F00A58A59F6ALL) + 0x118378052C52CFB5) ^ v95;
  v108 = (v107 - 0x584D15E8E26102BELL - ((2 * v107) & 0x4F65D42E3B3DFA84)) ^ v81;
  v109 = (v104 ^ 0x1F60F1B377D9CB30) - 2 * (((v104 ^ 0x1F60F1B377D9CB30) + 0x7FFFE00000000000) & 0x555E7B77B5EC5DBFLL ^ (v104 ^ 0x1F60F1B377D9CB30) & a8) - 0x2AA1A4884A13A26DLL;
  *(&v102 + 1) = v101 ^ 0x45C17;
  *&v102 = v101 ^ 0x1CF78C6AC4300000;
  v110 = v102 >> 19;
  if ((v105 & 0x200000000000) == 0)
  {
    v109 = ((2 * v105) & 0x400000000000) + (v104 ^ 0x1F60D1B377D9CB30) - 2 * ((((2 * v105) & 0x400000000000) + (v104 ^ 0x1F60D1B377D9CB30)) & 0x555E7B77B5EC5DB7 ^ (v104 ^ 0x30) & 0x24) - 0x2AA184884A13A26DLL;
  }

  v111 = v96 ^ v110 ^ v106;
  v112 = ((v96 ^ (v96 >> 1) ^ (v96 << 58) ^ 0xA3B7F3CDAF366303) + ((v96 >> 6) ^ 0x3349575DB289108) - 2 * ((v96 ^ (v96 >> 1) ^ 0x3B7F3CDAF366303) & ((v96 >> 6) ^ 0x3349575DB289108))) ^ (v96 << 63);
  v113 = v108 ^ (8 * v108) ^ (v108 >> 39) ^ (v108 << 25) ^ (v108 >> 61);
  *(&v114 + 1) = v111;
  *&v114 = v111 ^ 0x72ED4DAFE5981B84 ^ (((v111 << 54) ^ 0x9580000000000000) - ((2 * ((v111 << 54) ^ 0x9580000000000000)) & 0xAA00000000000000) - 0x2AF2B40857E4DE2ELL);
  v115 = ((v109 >> 28) ^ (v105 >> 19) | (v109 << 45)) ^ (v109 << 36) ^ 0xD577AFC0CE75CC55;
  v116 = v115 - ((2 * v115) & 0xC63CA41D57336B90) - 0x1CE1ADF154664A38;
  v117 = (v114 >> 1) ^ __ROR8__(v111, 11) & 0x801FFFFFFFFFFFFFLL;
  v118 = v113 ^ 0x7379D966551C9618 ^ v112;
  *(&v114 + 1) = v117 ^ 0x14FC00CB09B067;
  *&v114 = v117;
  v119 = v114 >> 63;
  v120 = v77 & 0x11;
  v121 = v97 ^ (v97 >> 7) ^ (((v97 << 57) ^ (v97 << 23)) & 0xFFFFFFFFFF800000 | (v97 >> 41));
  if ((v118 & 0x1000000000000000) != 0)
  {
    v122 = 0x1000000000000000;
  }

  else
  {
    v122 = 0xF000000000000000;
  }

  v123 = v116 ^ v105;
  v124 = ((v111 ^ 0xA7E006584D833A56) >> (v120 ^ 1u) >> (v120 ^ 0x10u)) + 0x60E80D1263A7CC65 - ((2 * ((v111 ^ 0xA7E006584D833A56) >> (v120 ^ 1u) >> (v120 ^ 0x10u))) & 0xC1D01A24C74F98CALL);
  v125 = v124 ^ (v111 << 47) ^ v119;
  v126 = (v125 ^ v121 ^ 0x43BC8547CC543E20) & (v123 ^ v121 ^ 0xAD14DB4AA467CF43) ^ (v125 ^ v121) & 0xB866227D8685E7C7;
  v127 = v123 ^ v121 ^ (v113 ^ 0x5A242C041AA6EA6DLL) & v112;
  v128 = v113 ^ 0x7A2EEBE3CAD0502ALL ^ (((v125 ^ 0xFDC30D1263A7CC65) & ((v122 + (v118 ^ 0xD6A20A9DB045838ALL)) ^ 0xEFFFFFFFFFFFFFFFLL)) - 0x295DF5624FBA7C76 - ((2 * ((v125 ^ 0xFDC30D1263A7CC65) & ((v122 + (v118 ^ 0xD6A20A9DB045838ALL)) ^ 0xEFFFFFFFFFFFFFFFLL))) & 0xAD44153B608B0714));
  v129 = v128 & (v127 ^ 0x1572F93722E22884);
  v130 = (v125 ^ 0x23CF2ED9C58339ALL) & (v121 ^ 0x418077AA500C0DBALL) ^ v118;
  v131 = v128 + (v127 ^ 0x1572F93722E22884);
  v132 = v125 ^ v123 ^ ((v123 ^ v121 ^ 0x1572F93722E22884 | v113 ^ 0xA5DBD3FBE5591592) - ((2 * (v123 ^ v121 ^ 0x1572F93722E22884 | v113 ^ 0xA5DBD3FBE5591592)) & 0x131C4314EC275854) + 0x98E218A7613AC2ALL);
  v133 = v132 ^ v127;
  v134 = v126 ^ v125;
  *(&v136 + 1) = v134 & 0x2A79A46D ^ 0x112065;
  *&v136 = v134 & 0x8CBFD1F52A79A46DLL ^ 0x41FD0A02A000000;
  v135 = v136 >> 21;
  *(&v136 + 1) = v135 ^ 0x5A8DB716B3BLL;
  *&v136 = v135 ^ 0x7191200000000000;
  v137 = v131 - 2 * v129 - 2 * ((v131 - 2 * v129) & 0x7567A2BAA2C09C37 ^ v131 & 1);
  v138 = (v136 >> 43) ^ 0xB51B6E2D676E3224 | v134 & 0x73402E0AD5865B92 ^ 0x7200220294000182;
  v139 = ((v133 ^ 0x6C8F82EE5CC37FE9) - (v133 ^ 0x6C8F82E8943B510CLL ^ (v133 >> 28))) ^ (((v133 >> 28) ^ 0xFFFFFFF93707D11ALL) + 1);
  v140 = ((v133 >> 28) ^ 0x9EA521D2226160B4 ^ (v139 - ((2 * v139) & 0x3D4A43A9D5329CA2) - 0x615ADE2B1566B1AFLL)) + (v133 ^ 0x6C8F82EE5CC37FE9);
  v141 = v138 + (v130 ^ 0xD6A20A9DB045838ALL) - 2 * (v138 & (v130 ^ 0x56A20A9DB045838ALL));
  v142 = v141 + 0x490C8C944D0F20AALL - ((2 * v141) & 0x921919289A1E4154);
  v143 = v142 >> 17;
  v144 = (v142 >> 17) & 0x80 ^ 0xABFA99F9F37C45BDLL;
  v145 = v130 ^ (v130 >> 1) ^ ((v130 >> 6) | (~v130 << 63));
  v146 = (v137 - 0xA985D455D3F63CALL) ^ ((v137 - 0xA985D455D3F63CALL) >> 39) ^ ((((v137 - 0xA985D455D3F63CALL) << 25) ^ (8 * (v137 - 0xA985D455D3F63CALL))) & 0xFFFFFFFFFFFFFFF8 | ((0xA985D455D3F63C9 - v137) >> 61));
  v147 = v142 ^ (v142 >> 10) ^ (v142 << 47) ^ (((v142 << 54) ^ 0x2A80000000000000) + 0x490C8C944D0F20AALL - ((2 * ((v142 << 54) ^ 0x2A80000000000000)) & 0x9200000000000000));
  v148 = v146 ^ 0x2B1F3657D92EB2C3;
  v149 = ((v146 ^ 0x2B1F3657D92EB2C3) - (v145 ^ 0x1A7F123B8A7BCD4FLL ^ v146)) ^ ((v145 ^ 0xCE9FDB93ACAA8073) + 1);
  v150 = v145 ^ 0x27B79FB9B68D3EAELL ^ (v149 - ((2 * v149) & 0x2DAF77ABCBB08244) + 0x16D7BBD5E5D84122);
  v151 = v132 ^ (v132 << 23) ^ (v132 >> 7) ^ ((v132 >> 41) | (v132 << 57));
  v98 = (v147 | (0xABFA99F9F37C453CLL - v144)) == -1;
  v152 = v144 + 0x7FD5FF57ECDFBBD4;
  v153 = v150 + (v146 ^ 0x2B1F3657D92EB2C3);
  v154 = 0xD7CB334BD3D8464ELL - v144;
  if (!v98)
  {
    v152 = v154;
  }

  v155 = ((v147 ^ 0x90474323251343C8) - 0x2BD09951E05C0111 + v152) ^ v143 & 0x7FFFFFFFFF7FLL;
  v156 = v155 ^ 0xE159605A6176CF94;
  v157 = __ROR8__(v133, 19) ^ (v133 << 36) ^ v151 ^ v140;
  v158 = v153 ^ (v130 << 58);
  v159 = v155 ^ 0xE159605A6176CF94 ^ v151;
  v160 = v146 ^ 0xD4E0C9A826D14D3CLL;
  v161 = (v155 ^ 0x2486464A2607) & (v158 ^ 0x73FFFFFFFFFFFFFFLL) ^ v146;
  v162 = (v155 ^ 0xFFFFDB79B9B5D9F8) & (v151 ^ 0x2B3F2A5B87ED0C3FLL) ^ v158;
  v163 = v159 ^ ((v157 ^ 0x66E1F411672EB716 ^ (2 * v157)) + 2 * (((2 * v157) ^ 0x6E140D4B109E70B1) & (v157 ^ 0x8F5F95A77B0C7A7))) & v148;
  v164 = v161 & 0x80000 ^ 0x5771B85E73AF3FDALL;
  v165 = v164 - 0x1300381422041718;
  v166 = (v158 ^ 0x8C00000000000000) & v160 ^ v157;
  v167 = v164 - 0x5771B85E73A73FDALL;
  v168 = ((v159 ^ 0x359991785F2E1A53) & (v157 ^ 0x88F5F95A77B0C7A7)) - ((2 * ((v159 ^ 0x359991785F2E1A53) & (v157 ^ 0x88F5F95A77B0C7A7))) & 0xC2B289B84E79D326);
  v169 = v166 ^ 0x88F5F95A77B0C7A7;
  v170 = v161 & 0xFFFFFFFFFFF7FFFFLL;
  v171 = v163 ^ v166;
  v172 = v162 ^ v156 ^ (v168 - 0x1EA6BB23D8C3166DLL);
  v173 = 0x9BE338A8C54A689CLL - v164;
  if ((v167 & v169) == 0)
  {
    v173 = v165;
  }

  v174 = (v169 - 0x4471804A51A328C2 + v173) ^ v170;
  v175 = (0x1000000001 * (v171 ^ 0x2E3E20BF363AFFB3) - (((v171 << 37) ^ 0xC75FF66000000000) & ((2 * v171) ^ 0x5C7C417E6C75FF66))) ^ ((v171 >> 19) ^ (v171 >> 28) | (v171 << 45));
  v176 = 0x5669F84C58A581E1 - 0x334AEC0EF59FFB1CLL * (v175 ^ 0x5FF665C527F5ED34) - ((0x996A27E214C009C8 * (v175 ^ 0x5FF665C527F5ED34)) & 0xACD3F098B14B03C0);
  v177 = v174 >> 39;
  v178 = (v163 ^ 0xCA666E87A0D1E5ACLL) + (((v163 ^ 0xCA666E87A0D1E5ACLL) - (v163 ^ 0xCA666E870D0BC36BLL)) ^ 0xFFFFFFFFFFFFFFFELL) + ((2 * v163) & 0x15BB44D8ELL ^ 0x141A04908) - 2916755143;
  v179 = ((8 * v174) ^ 0x4583BEF9EE9E8418) + 0x3951ADA963EC3AADLL - ((2 * ((8 * v174) ^ 0x4583BEF9EE9E8418)) & 0x72A35B52C7D87550);
  v180 = (v174 ^ 0x88B077DF3DD3D083) >> (v172 & 0x3D ^ 0x35) >> (v172 & 0x3D ^ 8);
  v181 = ((2 * ((v179 ^ 0x3951ADA963EC3AADLL) + (v174 ^ (v174 << 25) ^ 0x36CBD07E3BD3D083) - 2 * ((v179 ^ 0x3951ADA963EC3AADLL) & (v174 ^ (v174 << 25) ^ 0x36CBD07E3BD3D083)))) & 0x6FAFD7FFC9DC794ELL) + (((v179 ^ 0x3951ADA963EC3AADLL) + (v174 ^ (v174 << 25) ^ 0x36CBD07E3BD3D083) - 2 * ((v179 ^ 0x3951ADA963EC3AADLL) & (v174 ^ (v174 << 25) ^ 0x36CBD07E3BD3D083))) ^ 0xB7D7EBFFE4EE3CA7) + 0x482814001B11C359;
  v182 = (v181 + (v177 ^ 0xFFFFFFFFFEEE9F10 ^ v181) + 1) ^ ((v177 ^ 0xFFFFFFFFFEEE9F10) + 1);
  v183 = v126 & 0x8CBFD1F52A600000;
  v184 = 3182303469u * ((v175 ^ 0x99F9D897F506CD5 ^ v176) + 2 * ((v176 ^ 0x5669F84C58A581E1) & (v175 ^ 0x5FF665C527F5ED34)));
  v185 = (((v172 << 47) ^ 0x9E1A800000000000) - 0x4485CD84357FC163 - ((2 * ((v172 << 47) ^ 0x9E1A800000000000)) & 0x76F4000000000000)) ^ 0xBB7A327BCA803E9DLL;
  v186 = ((v177 ^ 0xB6A0BAC1C5DAE1A3 ^ (v182 - ((2 * v182) & 0x6D41758389970298) - 0x495F453E3B347EB4)) + v181) ^ v180;
  v187 = v186 ^ 0x5DE77C5D027E5C3ELL;
  v188 = (((~v162 << 63) ^ (v162 << 58)) & 0xFC00000000000000 | (v162 >> 6)) ^ v162 ^ (((v162 >> 1) ^ 0x10CE6CD2B5693629) + 0x2D3511E3149BC9BDLL - 2 * (((v162 >> 1) ^ 0x10CE6CD2B5693629) & 0x2D3511E3149BC9BFLL ^ (v162 >> 1) & 2));
  v189 = v186 ^ 0x5DE77C5D027E5C3ELL ^ v188;
  *(&v190 + 1) = v172 ^ 0x35;
  *&v190 = v172 ^ 0x85DB43559B5D3C00;
  v191 = v178 ^ (v178 << 57) ^ (v178 << 23) ^ (v178 >> 7) ^ (v178 >> 41);
  v192 = (v185 + (v172 ^ (v172 >> 17) ^ 0x85DB01B83AF7F19BLL) - ((v185 & (v172 ^ (v172 >> 17) ^ 0x85DB01B83AF7F19BLL)) << (v93 & 1) << !(v93 & 1))) ^ (v190 >> 10);
  v193 = v192 ^ v191;
  v194 = v184 ^ v191;
  v195 = (((2 * (v189 ^ 0x83A47F859873C8BBLL)) ^ 0xC3268E0F1C210E4BLL) + (v189 ^ 0x1DC8C77DE99CB061)) & v192;
  v196 = (v191 ^ 0xB25EA4F1123CEDE9) & ~v192;
  if ((v193 & 0x400000000) != 0)
  {
    v197 = 0xFFFFFFFC00000000;
  }

  else
  {
    v197 = 0x400000000;
  }

  v198 = v189 ^ 0x83A47F859873C8BBLL ^ v196;
  v199 = v194 ^ 0xF0997501EE1B6501 ^ (v188 ^ 0x402FBB20EBE2EC5FLL) & ~v186;
  v200 = v186 & (v194 ^ 0x4DA15B0EEDC31216);
  v201 = ((v197 + (v193 ^ 0xB25EA4F1123CEDE9)) ^ 0xFFFFFFFBFFFFFFFFLL) & (v194 ^ 0xB25EA4F1123CEDE9) ^ v192;
  v202 = v200 ^ v193;
  v203 = v202 ^ 0xDAAD0916C90E7DEDLL;
  v204 = (v201 & 0x100000000000000 ^ 0x2FFF7E7DFB5CCF71) + 2 * (v201 & 0x100000000000000);
  v205 = v204 - 0x3030801C244C301;
  v98 = ((v198 ^ 0x9E00000000000000) & (v204 - 0x2FFF7E7DFB5CCF71)) == 0;
  v206 = v202 ^ 0xDAAD0916C90E7DEDLL ^ v199;
  v207 = v201 & 0xFEFFFFFFFFFFFFFFLL;
  v208 = 0x5CFBF4FA3474DBE1 - v204;
  if (v98)
  {
    v208 = v205;
  }

  v209 = (v198 ^ 0x9E6CB8F871EF78DALL) - 0x2CFC767C39180C70 + v208 - 0x355140AEBFA7B0F4 - ((2 * ((v198 ^ 0x9E6CB8F871EF78DALL) - 0x2CFC767C39180C70 + v208)) & 0x955D7EA280B09E18);
  v210 = (v195 - ((2 * v195) & 0x858FA3E1F84F11D0) + 0x42C7D1F0FC2788E8) ^ v199;
  v211 = (v210 + 0x5DE77C5D027E5C3ELL - ((2 * v210) & 0xBBCEF8BA04FCB87CLL)) ^ v187;
  v212 = (((((v207 ^ 0xA67ABE3387CBCF03) - (v207 ^ 0x6CD40162C793800FLL ^ v209)) ^ ((v209 ^ 0x355140AEBFA7B0F3) + 1)) - 0x355140AEBFA7B0F4 - ((2 * (((v207 ^ 0xA67ABE3387CBCF03) - (v207 ^ 0x6CD40162C793800FLL ^ v209)) ^ ((v209 ^ 0x355140AEBFA7B0F3) + 1))) & 0x955D7EA280B09E18)) ^ v209) + (v207 ^ 0xA67ABE3387CBCF03);
  v213 = v212 + 0x1F36969ECDA5891FLL - ((2 * v212) & 0x3E6D2D3D9B4B123ELL);
  v214 = ((v198 << 58) ^ 0xCC00000000000000) - 0x65FE574E0181736CLL - ((2 * ((v198 << 58) ^ 0xCC00000000000000)) & 0x3000000000000000);
  *(&v217 + 1) = v213 ^ 0x11F;
  *&v217 = v213 ^ 0x1F36969ECDA58800;
  v216 = v217 >> 10;
  v218 = v198 ^ (v198 >> 1) ^ ((v198 >> 6) | (~v198 << 63));
  v219 = v211 ^ (8 * v211) ^ (v211 >> 39) ^ (v211 >> 61) ^ (v211 << 25);
  *(&v217 + 1) = v213 ^ 0x1891F;
  *&v217 = v213 ^ 0x1F36969ECDA40000;
  v220 = v217 >> 17;
  v221 = v218 ^ 0x7400000000000000;
  if (v124 != 0x60E80D1263A7CC65)
  {
    v221 = v218 ^ v214 ^ 0x1000000000000000;
  }

  v98 = v183 == 0x24004500000000;
  v222 = v219 ^ 0xF09269938A20778ALL;
  v223 = v218 ^ 0xC29CECDF114DDFB2;
  v224 = v214 ^ 0x9A01A8B1FE7E8C94;
  v225 = v216 ^ v213 ^ v220;
  v215 = (v206 >> 19) ^ (v206 >> 28) | (v206 << 45);
  v226 = (v215 ^ (v206 << 36) ^ 0x8217E8176BAAE507) - ((2 * (v215 ^ (v206 << 36) ^ 0x8217E8176BAAE507)) & 0x4858A7130FB4C142);
  v227 = v221 ^ 0xB400000000000000;
  if (v98)
  {
    v227 = 0xFC00000000000000;
  }

  v228 = v224 & v223 & v227 ^ (v224 | v223);
  v229 = (v202 >> 7) ^ (v202 << 23) ^ ((v202 >> 41) | (v202 << 57));
  v230 = ((v229 ^ 0x4AA44006B28E28CELL) + 0x68F3ADE7DB329004 - 2 * ((v229 ^ 0x4AA44006B28E28CELL) & 0x68F3ADE7DB329005 ^ v229 & 1)) ^ v203;
  v231 = v206 ^ 0x3A6ED51901D39BA7 ^ (v226 + 0x242C538987DA60A1);
  v232 = v231 & (v230 ^ 0x57E0513DCC4737BFLL);
  v233 = (v228 - (v219 ^ 0xA2C933A7CF3FCDBDLL ^ v228)) ^ ((v219 ^ 0x5D36CC5830C03242) + 1);
  v234 = ((v233 + 0x525B5A34451FBA37 - ((2 * v233) & 0xA4B6B4688A3F746ELL)) ^ v222) + v228;
  v235 = v234 - 0x338ACAC67540D780 - ((2 * v234) & 0x98EA6A73157E5100);
  v236 = v225 ^ v230;
  v237 = v225 ^ v230 ^ 0xB4F16447711EAE3BLL;
  v238 = (v230 ^ 0xD7E0513DCC4737BFLL) + v231;
  v239 = v235 ^ 0xCC7535398ABF2880;
  v240 = (v235 ^ 0xCC7535398ABF2880) & (((2 * v219) ^ 0xBA6D98B061806485) + (v219 ^ 0xA2C933A7CF3FCDBDLL));
  v241 = (v225 ^ 0xE0C96961325A76E0) & (v230 ^ 0x9714698F7BD65619) ^ v225 & 0x40F438B2B79161A6;
  v242 = v238 - 2 * v232 - ((2 * (v238 - 2 * v232)) & 0xB95A3C6B950140ACLL) - 0x2352E1CA357F5FAALL;
  v243 = v235 ^ 0x338ACAC67540D77FLL;
  v244 = (v241 ^ 0xBF3FD7DFCDEF9F5FLL) + 1;
  v245 = (((v235 ^ 0xCC7535398ABF2880) - (v241 ^ 0x8CB51D19B8AF4820 ^ v235)) ^ 0xF9E5FFEFD7F8E558) + 0x61A001028071AA8 + ((2 * ((v235 ^ 0xCC7535398ABF2880) - (v241 ^ 0x8CB51D19B8AF4820 ^ v235))) & 0xF3CBFFDFAFF1CAB0);
  v246 = v241 ^ 0x40C02820321060A0;
  v247 = v245 + (v241 ^ 0x40C02820321060A0) - 2 * (v245 & (v241 ^ 0x40C02820321060A0));
  v248 = v247 - 0x30938AE711BF738 - ((2 * v247) & 0xF9ED8EA31DC81190);
  v249 = v244 ^ 0x7EFC5EF5D1E9BFFFLL;
  v250 = (2 * v244) & 0xFDF8BDEBA3D37FFELL;
  v251 = v240 ^ v242;
  v252 = v237 & 0x5A22299921109A25 ^ (v236 ^ 0x3729385CFE1D415FLL) & (v242 ^ 0x868F37ACEB903A73);
  v253 = v249 - 0x7EFC5EF5D1E9BFFFLL + v250;
  v254 = ((v253 - (v248 & 0x100000000000)) ^ 0x75F7FFDEFFFF1FF7) - 4963925615083520000 + ((2 * (v253 - (v248 & 0x100000000000))) & 0xEBEFFFBDFFFE3FEELL);
  v255 = (((v248 & 0x100000000000) - v246) ^ 0x7535DFDAFD7B7FF7) - 0x4421480800006000 + ((2 * ((v248 & 0x100000000000) - v246)) & 0xEA6BBFB5FAF6FFEELL);
  v256 = v243 & (v225 ^ 0x1F36969ECDA5891FLL);
  v257 = v225 ^ 0x77EE03F5D6C08339 ^ v252;
  v98 = (v248 & 0x100000000000 & v253) == 0;
  v258 = ((2 * v225) & 0xBD19BFD7DFBFDFFELL ^ 0x1401A806503FCDC4) + (v225 ^ 0x549D2BF8C7E0191DLL) + 0x2173201410201001;
  v259 = (v258 + v257 + 1) ^ ((v252 ^ 0xFDFFF7E6FEFF75DBLL) + 1);
  v260 = v252 ^ 0x1A28C97D52C13ECLL ^ (v259 - ((2 * v259) & 0x745091DA8593390) + 0x3A2848ED42C99C8);
  v261 = v248 & 0xFFFFEFFFFFFFFFFFLL;
  if (v98)
  {
    v254 = v255;
  }

  v263 = ((v261 ^ 0xFCF6C7518EE408C8 ^ (v254 - 0x311497D2FD7B1FF7)) + v239 + 0x34FB63D1729C62AELL - ((2 * ((v261 ^ 0xFCF6C7518EE408C8 ^ (v254 - 0x311497D2FD7B1FF7)) + v239)) & 0x69F6C7A2E538C55CLL)) ^ (v258 + v260);
  v264 = (v118 & 0xEE ^ a30) - (v118 ^ 0x9B) - ((2 * ((v118 & 0xEE ^ a30) - (v118 ^ 0x9B))) & 0x8C) + 70;
  v265 = (v263 ^ 0x34FB63D1729C62AELL) >> (v264 ^ 0x46u) >> (v264 ^ 0x57u);
  v266 = (~(2 * a38) & 2) + (a38 ^ 0xEAB51AC6);
  v267 = v263 ^ (v263 << 47) ^ __ROR8__(v263, 10) ^ v265;
  v262 = (((v256 + 0x525B5A34451FBA37 - ((2 * v256) & 0xA4B6B4688A3F746ELL)) ^ v222) - ((2 * ((v256 + 0x525B5A34451FBA37 - ((2 * v256) & 0xA4B6B4688A3F746ELL)) ^ v222)) & 0x562E3AD98DC25676) - 0x54E8E293391ED4C5) ^ v251;
  return (*(v43 + 8 * (v42 | (39 * (((v266 - 357229881 - ((2 * v266) & 0xD56A358E)) ^ 0xEAB51AC7) >= a34)))))(a1, v267, v267 ^ 0xA834FA831E86D88ALL, v269, a5, a6, v262 ^ (v262 >> 39) ^ (8 * v262) ^ ((v262 >> 61) | (v262 << 25)) ^ 0x5CE3C7B6BF3F9D39);
}