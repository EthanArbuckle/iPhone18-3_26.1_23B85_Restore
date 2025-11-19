uint64_t sub_1006F6D24()
{
  v0 = STACK[0x51B8] - 22614;
  *(STACK[0xE3D0] + 456) = 0x1FF90131E266DB89;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x32CA)))();
}

uint64_t sub_1006F6DB0@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, int a4@<W8>)
{
  v12 = STACK[0x57C0];
  if ((STACK[0x57C0] & 2) != 0)
  {
    v5 = v9;
  }

  LODWORD(STACK[0x5510]) = v5;
  if ((v12 & 2) != 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = v11;
  }

  LODWORD(STACK[0x51C8]) = v13;
  v14 = STACK[0x51D0];
  if ((STACK[0x5780] & 2) == 0)
  {
    v14 = STACK[0x51C0];
  }

  LODWORD(STACK[0x5420]) = v14;
  v15 = (v8 - 983492658) ^ (v10 + ((a1 + a4 + ((a1 + a4) >> 16)) >> 8) + ((a1 + a4) >> 16) + a1 + a3 - 1);
  v16 = v15 - (v15 >> 12) + ((v15 - (v15 >> 12)) >> 5);
  v17 = v16 ^ v4;
  v18 = (v16 ^ 0x63FC5B0A) + ((v16 ^ 0x63FC5B0A) >> 15) + (((v16 ^ 0x63FC5B0A) + ((v16 ^ 0x63FC5B0A) >> 15)) >> 1);
  v19 = v18 ^ v6;
  v20 = (v18 ^ 0xBF7C1EC9) + ((v18 ^ 0xBF7C1EC9) >> 15) + (((v18 ^ 0xBF7C1EC9) + ((v18 ^ 0xBF7C1EC9) >> 15)) >> 7);
  v21 = v20 + 573618605 - ((v20 + 573618605) >> 15) - ((v20 + 573618605 - ((v20 + 573618605) >> 15)) >> 1);
  v22 = v17 ^ v21;
  v23 = (v21 ^ 0x6220D51A) + ((v21 ^ 0x6220D51A) >> 11) - (((v21 ^ 0x6220D51A) + ((v21 ^ 0x6220D51A) >> 11)) >> 5);
  v24 = v19 ^ v23;
  v25 = v23 + 1578928324 - ((v23 + 1578928324) >> 12) + ((v23 + 1578928324 - ((v23 + 1578928324) >> 12)) >> 7);
  v26 = v25 - 1255408131 + ((v25 - 1255408131) >> 8) - ((v25 - 1255408131 + ((v25 - 1255408131) >> 8)) >> 5);
  v27 = v22 ^ v26;
  v28 = (v26 ^ 0x1FEFEDF) + ((v26 ^ 0x1FEFEDF) >> 12) - (((v26 ^ 0x1FEFEDF) + ((v26 ^ 0x1FEFEDF) >> 12)) >> 7);
  v29 = v24 ^ v28;
  v30 = v27 & 0xFE ^ 0x1A;
  v31 = v20 ^ v7 ^ v25 ^ ((v28 ^ 0xF14257BF) - ((v28 ^ 0xF14257BF) >> 13) - (((v28 ^ 0xF14257BF) - ((v28 ^ 0xF14257BF) >> 13)) >> 4));
  LODWORD(STACK[0x5500]) = v30;
  LODWORD(STACK[0x5180]) = 16843009 * v30;
  LODWORD(STACK[0x5750]) = v31;
  v32 = v31 & 7;
  LODWORD(STACK[0x5368]) = v32 ^ 2;
  v33 = -(v32 ^ 2) & 7;
  LODWORD(STACK[0x5540]) = v32;
  v34 = v32 == 2;
  if (v32 == 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = 255;
  }

  LODWORD(STACK[0x5770]) = v33;
  v36 = v35 << v33;
  v37 = 16843009 * v36;
  LODWORD(STACK[0x5310]) = (-1660944384 * v36) & v29 ^ v37;
  v38 = LODWORD(STACK[0x56F0]) ^ 0x7A76B0B8;
  if (v34)
  {
    v39 = 0;
  }

  else
  {
    v39 = ~v36;
  }

  LODWORD(STACK[0x56D0]) = (v27 & v39);
  LODWORD(STACK[0x5570]) = 2 * ((v37 - v38) & ~v37);
  LODWORD(STACK[0x56F0]) = v27;
  LODWORD(STACK[0x55D0]) = v29;
  v40 = 16843009 * (v29 ^ 0x2B ^ ((v29 ^ 0x592B) >> 8) ^ ((v29 ^ 0xB8FF592B) >> 16) ^ HIBYTE(v29) ^ 0x38);
  LODWORD(STACK[0x55C0]) = v40;
  LODWORD(STACK[0x53D0]) = v40 ^ 0x80808080;
  return (*(STACK[0x57D8] + 8 * v8))();
}

uint64_t sub_1006F74C4(uint64_t a1)
{
  v2 = STACK[0x8CA0];
  STACK[0x6690] = STACK[0x8CA0];
  STACK[0xCE50] = &STACK[0x1D1BD];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xE63F9ADC7288A3B1;
  LODWORD(STACK[0xCD80]) = -1094285309;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1006F7584(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  if ((((v9 >> 33) ^ HIDWORD(v9) ^ a7) & 1) == 0)
  {
    v7 = v10;
  }

  v11 = a2 + ((((((a1 ^ 0x7A) - 69) ^ ((a1 ^ 0x28) - 23) ^ ((((a6 - 49) | 0x10) ^ 0xA6) + (a1 ^ 0x52))) - 64) % 5u + 11) << 44);
  if (v7 != -1267808264)
  {
    v11 = 0xA000FFFFFFFFLL;
  }

  *v8 = (v11 & 0x2600094DC1AF6 | (v9 ^ 0xEBB92C6E9051514BLL) & ~v11) ^ 0xEBB92C6E9051514BLL;
  return (*(STACK[0x57D8] + 8 * (a6 - 7584)))();
}

uint64_t sub_1006F7758()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x8924];
  LODWORD(STACK[0x9094]) = -32197419;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006F77D4()
{
  v0 = 23 * (STACK[0x51B8] ^ 0x589B);
  v1 = STACK[0x51B8] - 19649;
  STACK[0x7968] = STACK[0xAFC0] + SLODWORD(STACK[0xB76C]);
  v2 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 3233)))();
}

uint64_t sub_1006F78BC(uint64_t a1)
{
  v2 = STACK[0x9C48];
  STACK[0x57F8] = STACK[0x9C48];
  STACK[0xCBB0] = STACK[0x9650];
  LODWORD(STACK[0xCE5C]) = ((((LODWORD(STACK[0xC454]) ^ 0x613D8A19) + (((v1 ^ 0x2F2A) + 2803) ^ 0x9EC255F6)) ^ ((LODWORD(STACK[0xC454]) ^ 0xE290A4FA) + 493837062) ^ ((LODWORD(STACK[0xC454]) ^ 0x51B1AE77) - 1370599031)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xA69F2A76F2C71801;
  LODWORD(STACK[0xCD80]) = -1476695983;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x2F2A)))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1006F7BE0()
{
  v1 = STACK[0x783C];
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xADF8];
  LODWORD(STACK[0x8C54]) = v1;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = -746967318;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006F7CBC()
{
  STACK[0x87E0] = 0x2C73422C535007B5;
  v2 = STACK[0x78D4];
  v3 = STACK[0xC510];
  STACK[0x8BD0] = STACK[0x8348];
  LODWORD(STACK[0xCF20]) = v2;
  STACK[0xADD0] = v3;
  LODWORD(STACK[0x5EC8]) = v0;
  STACK[0x5DC0] = &STACK[0x87E0];
  LODWORD(STACK[0xBAE0]) = 1913612150;
  return (*(STACK[0x57D8] + 8 * (((v1 != -2138354048) * ((v1 - 50175671) ^ 0x2966)) ^ (v1 - 50170994))))();
}

uint64_t sub_1006F8080()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * ((v1 | 0x1020) + 1409)))(*(v0 + 2208) ^ 0xD21C8094);
  STACK[0x76C0] = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x1020) - 9909) | 0x2055) - 28255)) ^ (v1 | 0x1020))))();
}

uint64_t sub_1006F80F4()
{
  v0 = STACK[0x51B8] - 18944;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x6108]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006F8188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X8>)
{
  *a6 = v6;
  *(*STACK[0x41A0] + 33 * v6) = 1;
  STACK[0x8D60] = v6;
  v9 = STACK[0x57D8];
  STACK[0xD2D0] = *(STACK[0x57D8] + 8 * (v8 - 21662));
  return (*(v9 + 8 * (v8 - 21662 + v7 + 113 * (v8 ^ 0x5831))))(a1, a2, a3, a4, a5, LODWORD(STACK[0x36F0]), 13115, 1065131826);
}

uint64_t sub_1006F8220()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))(v1);
  STACK[0x6910] = 0;
  return (*(v2 + 8 * (v0 - 5802)))(v3);
}

uint64_t sub_1006F82E8()
{
  v3 = (v0 + 924657857) & 0xC8E2FDFF;
  v4 = v0 - 11541;
  v5 = STACK[0x57D8];
  v6 = v0;
  v7 = (*(STACK[0x57D8] + 8 * (v0 + 19113)))(v1);
  STACK[0x9BA0] = v7;
  return (*(v5 + 8 * (((v2 & ~(v4 ^ (v7 == 0))) * (v3 ^ 0x586E)) ^ v6)))();
}

uint64_t sub_1006F83DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xD0C8] = STACK[0xB368];
  STACK[0x98B8] = 0;
  LODWORD(STACK[0xA76C]) = 0;
  v9 = *(v8 + 104);
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 21350));
  return (*(v10 + 8 * (v7 - 17963)))(v9, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1006F84A0()
{
  LOBYTE(STACK[0x1D4C8]) = 3 * ((((v2 + 16) | 0x13) - ((v2 + 16) & 0x13)) ^ 0x3B) + 97;
  LODWORD(STACK[0x1D4CC]) = 16169987 * ((((v2 - 240) | 0x1CAEDE13) - ((v2 - 240) & 0x1CAEDE13)) ^ 0x4920EB3B) + v0 - 271201425;
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0x543A)))(v2 - 240);
  v4 = STACK[0x6C00];
  *v4 = STACK[0x7908];
  *(v4 + 8) = 3072;
  v5 = *(v3 + 8 * ((((*(v3 + 8 * (v0 ^ 0x54C4)))(*v1, 19) == ((v0 - 43367520) & 0x37FF9E7F) - 896141941) * (((v0 + 899891493) & 0xCA5CBEA5) + 18629)) ^ v0));
  return v5();
}

uint64_t sub_1006F8600(int a1)
{
  v4 = v1 - 7125;
  v6 = v3 != -143113071 || LODWORD(STACK[0xAA98]) == ((4861 * (v4 ^ 0x22DB)) ^ (v2 + 1697));
  return (*(STACK[0x57D8] + 8 * ((v6 * a1) ^ v4)))();
}

uint64_t sub_1006F86A4()
{
  v1 = STACK[0xAF68];
  v2 = *(STACK[0xAF68] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDE58]) = v2 + 8;
  v3 = *(v1 - 0x1883660EE814440ELL) - 1732850697;
  v2 -= 1732850689;
  v4 = v2 < 0x16004073;
  v5 = v3 < v2;
  if (v4 != v3 < 0x16004073)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0xB2B0] == 0) | v6 & 1;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDE5C]) = v8;
  return (*(STACK[0x57D8] + 8 * ((v7 * (((v0 - 3515) ^ 0x505B) - 2053)) ^ v0)))();
}

uint64_t sub_1006F87C4()
{
  v0 = STACK[0x51B8] - 9132;
  v1 = STACK[0x57D8];
  v2 = STACK[0x1BF4];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1BF4]));
  return (*(v1 + 8 * (v0 + v2 - 10613)))();
}

uint64_t sub_1006F8814@<X0>(unsigned int a1@<W8>)
{
  v2 = STACK[0x51B8];
  v3 = (STACK[0x51B8] - 620886823) ^ 5;
  v4 = 1534937323 * ((((v1 - 240) | 0xE715B89F4A4818B0) - ((v1 - 240) & 0xE715B89F4A4818B0)) ^ 0x2A6D305D8CA6E3F7);
  LODWORD(STACK[0x1D4CC]) = v4 + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4C8]) = ((v2 - 620886823) ^ 0x1075) - v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4D4]) = (v2 - 620886823) ^ v4;
  LODWORD(STACK[0x1D4E0]) = v3 + v4;
  STACK[0x1D4C0] = a1 ^ v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 + 9182)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1006F88F0@<X0>(int a1@<W8>)
{
  v3 = STACK[0x2940];
  LODWORD(STACK[0x1D4D4]) = (a1 + 513549071) ^ STACK[0x2940];
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4CC]) = v3 + a1 + 1451493860;
  STACK[0x1D4D8] = v3 + v1;
  LODWORD(STACK[0x1D4C8]) = a1 + 513549071 - v3 - 1469;
  LODWORD(STACK[0x1D4E0]) = v3 + a1 + 513549071 - 99;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2462)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5, 104);
}

uint64_t sub_1006F8998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v12 - 1;
  *(a1 + v13 + v8) = *(v9 + v13) - ((*(v9 + v13) << ((v10 ^ 0x82) + 45)) & 0x1E) + 15;
  return (*(STACK[0x57D8] + 8 * (((v13 != 0) * a8) ^ v11)))();
}

uint64_t sub_1006F89E4()
{
  v2 = (v0 - 17924) | 0x5B62u;
  v3 = (STACK[0x5740] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v4 = STACK[0x5348];
  STACK[0x5550] = v3;
  v5 = *(STACK[0x53A0] + (v4 & v3));
  STACK[0x55A0] = v5 + STACK[0x5780];
  STACK[0x55D0] = __ROR8__(v5, 61);
  LODWORD(v5) = LODWORD(STACK[0x53D0]) == 28;
  v6 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v7 = *v6;
  v8 = (((v2 + 1097048136) & 0xBE9C15FF) - 5562) & v6;
  STACK[0x5258] = __ROR8__(v8, 8);
  STACK[0x5260] = 8 * (v6 & 7);
  LODWORD(STACK[0x5288]) = v7 ^ v1;
  STACK[0x5220] = *STACK[0x51E8];
  STACK[0x5250] = *STACK[0x51F0];
  STACK[0x5218] = v8;
  STACK[0x5208] = (v8 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 28;
  STACK[0x5590] = v2;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (158 * v5))))();
}

uint64_t sub_1006F8B0C@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  STACK[0xB4E8] = v5;
  v7 = *v5;
  STACK[0x84A8] = v7;
  return (*(STACK[0x57D8] + 8 * (((((a5 ^ a1) ^ (v7 == a3)) & 1) * (((a5 + a2) | v6) ^ a4)) | a5)))();
}

uint64_t sub_1006F8C5C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 592) = a1;
  *(v2 + 600) = (v1 - 1723133771) ^ (1917435887 * (v3 ^ 0xE6BB5B06));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v4 - 240);
  return (*(v5 + 8 * (v1 - 5658)))(v6);
}

uint64_t sub_1006F8CEC()
{
  v1 = STACK[0x9350];
  STACK[0x6A58] = *(STACK[0x9350] + 96);
  STACK[0x7F80] = *(v1 + 112);
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006F8D70()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 25032 + 1738 * (v0 ^ 0xBE3))))();
}

uint64_t sub_1006F8EFC()
{
  v1 = STACK[0x8E60];
  v2 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x49D03C6B ^ (v0 + 1238379966))))(v1);
}

uint64_t sub_1006F8FB0@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x4E60]) = LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x5540]);
  v1 = LODWORD(STACK[0x50C8]) - LODWORD(STACK[0x50D0]);
  LODWORD(STACK[0x50D8]) = LODWORD(STACK[0x5100]) + (LODWORD(STACK[0x5520]) ^ 0x43F41E5C);
  LODWORD(STACK[0x51A8]) += LODWORD(STACK[0x50E0]);
  LODWORD(STACK[0x50E0]) = LODWORD(STACK[0x5530]) << 8;
  LODWORD(STACK[0x5100]) = STACK[0x50F8] & 0xFFFFFFDF;
  LODWORD(STACK[0x5550]) ^= LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x5120]) ^ v1 ^ 0x319F56D3;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1006F9344()
{
  v1 = *(STACK[0x6040] + 24);
  STACK[0x5EF8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * ((((v0 - 24100) | 0x2D) + 7574) ^ 0x30AC)) ^ v0)))();
}

uint64_t sub_1006F93A0()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x6BE0]);
  return (*(v1 + 8 * ((v0 ^ 0x1587) + v0)))(v2);
}

uint64_t sub_1006F93EC(uint64_t a1, uint64_t a2)
{
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = STACK[0x7ED8] - 13705 + (v2 ^ 0x2178u);
  return (*(STACK[0x57D8] + 8 * ((219 * ((((v2 ^ 0x9E) + 26) ^ (STACK[0x50F0] > v3)) & 1)) ^ v2 ^ 0x519E)))(a1, a2, STACK[0x9C8], STACK[0x9C0], STACK[0x9B8], 10236, -11464, 2781);
}

uint64_t sub_1006F946C()
{
  v0 = STACK[0x51B8] - 45;
  v1 = STACK[0x51B8] - 8144;
  STACK[0xB800] = 0x55A8D952E5D4689ELL;
  if (STACK[0x9358])
  {
    v2 = STACK[0xB790] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || STACK[0x88E0] == 0;
  return (*(STACK[0x57D8] + 8 * ((11 * ((v0 ^ v4) & 1)) ^ v1)))();
}

uint64_t sub_1006F95D8()
{
  v1 = STACK[0x6690];
  v2 = *(STACK[0x6690] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDC0C]) = v2 + 8;
  v3 = *(v1 - 0x1883660EE814440ELL) + 973779075;
  v2 += 973779083;
  v4 = v2 < 0xB75424FF;
  v5 = v3 < v2;
  if (v4 != v3 < 0xB75424FF)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = STACK[0xCE50] == 0 || v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDC10]) = v8;
  return (*(STACK[0x57D8] + 8 * ((((((v0 - 5458) ^ v7) & 1) == 0) * ((5 * (v0 ^ 0x6C30)) ^ 0x7E4)) ^ v0)))();
}

uint64_t sub_1006F978C@<X0>(int a1@<W8>)
{
  v1 = a1 - 8729;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (a1 + 9207)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006F9818()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x27B4)))();
  STACK[0xAB50] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006F99FC@<X0>(int a1@<W8>)
{
  v2 = a1 - 18667;
  v3 = (a1 + 979801005) & 0xC5992796;
  v4 = (a1 - 27708) | 0x5840;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (a1 + 4154)))(v1 + 25, 272);
  return (*(v5 + 8 * (((v6 < (v4 ^ 0x5856)) * (v3 ^ 0x2799)) ^ v2)))(v6);
}

uint64_t sub_1006F9B7C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v9 = *(STACK[0x57C0] + (a1 * v8 + 8698028) % (a2 - 15458));
  v10 = (((v9 ^ 0x14C37805) - 348354565) ^ ((v9 ^ 0xE419641A) + 468098022) ^ ((v9 ^ 0xF0DA1CD8) + 254141224)) * v3 + 32804496;
  v11 = *(v2 + 4 * (v10 - (((v10 * v6) >> 32) >> 12) * v5));
  v12 = v11;
  v13 = ((HIBYTE(v11) ^ 0x541FD93) - 778523072) ^ ((HIBYTE(v11) ^ 0x9ABA079) - 579669034) ^ ((HIBYTE(v11) ^ 0xCEA5D82) - 667742673);
  v14 = (BYTE2(v11) ^ 0x4F) * v8 + 6213569 - 5816 * (((11815591 * ((BYTE2(v11) ^ 0x4Fu) * v8 + 6213569)) >> 32) >> 4);
  v15 = ((v11 ^ 0x3FEBA55A) + 143660123) ^ ((v11 ^ 0xAE9D021D) - 1712934114);
  v16 = *(STACK[0x57C0] + (BYTE1(v11) ^ 0xB6) * v8 + 6213569 - 5816 * (((11815591 * ((BYTE1(v11) ^ 0xB6u) * v8 + 6213569)) >> 32) >> 4));
  v17 = *(STACK[0x57C0] + v14) << 8;
  v18 = (v15 ^ ((v12 ^ 0x9176A7CD) - 1509091634)) * v8 + 1599541032;
  HIDWORD(v19) = ((v17 ^ 0x94A) & (v16 ^ 0xFB8) | v16 & 0xB5) ^ 0xECF;
  LODWORD(v19) = ((v17 ^ 0x30FF3000) & ((*(STACK[0x57C0] + v13 * v8 + 1425739754 - 5816 * (((((v13 * v8 + 1425739754) >> 3) * v7) >> 32) >> 7)) << 16) ^ 0x304A7000) | v17 & 0x8000) ^ 0x8DF000;
  v20 = *(STACK[0x57C0] + v18 - 5816 * ((((v18 >> 3) * v7) >> 32) >> 7));
  HIDWORD(v19) = v19 >> 12;
  LODWORD(v19) = HIDWORD(v19);
  *(v2 + 4 * (v4 + a1 * v3 - ((((v4 + a1 * v3) * v6) >> 32) >> 12) * v5)) = ((((v19 >> 20) << 8) ^ 0x5B5D4351) & (v20 ^ 0xFFFFFF10) | v20 & 0xAE) ^ 0x3312F55D;
  return (*(STACK[0x57D8] + 8 * ((a1 == 255) | a2)))();
}

uint64_t sub_1006F9E88()
{
  v1 = STACK[0x11DC];
  STACK[0x9738] = v0;
  LODWORD(STACK[0x7194]) = STACK[0xBAB4];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1006F9ECC@<X0>(int a1@<W0>, int a2@<W2>, unsigned int a3@<W5>, uint64_t a4@<X6>, uint64_t a5@<X7>, unsigned int a6@<W8>)
{
  v19 = (a6 | ((a6 < 0x71444D3) << 32)) + v17;
  v20 = 0x3393DB319BEF4307 * (*(STACK[0x57B0] + 8 * (STACK[0x57C0] + v19) + v13) ^ 0x8484848484848484);
  v21 = v19 + a4 + (((v20 ^ v12 ^ v14) + v15) ^ ((v20 ^ v12 ^ v18) + v11) ^ ((v20 ^ v12 ^ a5) + v6));
  v22 = (((v21 ^ v8) + 0x443759EE528042FFLL) ^ v21 ^ ((v21 ^ 0x36597DCEF126B5A6) - 0x677A0098B48FDAB3) ^ ((v21 ^ 0xF21E0C20A2AEED08) + 0x5CC28E8918F87DE3) ^ ((v21 ^ 0x7F8FD7FFFEF7E5AELL) - 0x2EACAAA9BB5E8ABALL)) >> 32;
  v23 = v21 - (((v22 ^ 0x3B68004281626A4ELL) - 0x2850D5CB12AC800) ^ ((v22 ^ 0x5DFA8327CCA83ABFLL) - 0x64178E39FCE098F1) ^ ((v22 ^ 0x669283651CE92DA7) - 0x5F7F8E7B2CA18FE9)) + 0x74EF758B58EAB1D3;
  v24 = v23 + (v23 >> 16) + ((v23 + (v23 >> 16)) >> 8) + v9;
  v25 = v19 - 0x52EFF6260AEE38D6 + (((v24 ^ v20 ^ 0xCB12BE0B0E62643BLL) + 0x401947F69875AC7DLL) ^ ((v24 ^ v20 ^ 0x976DEDF32D3B73FELL) + 0x1C66140EBB2CBBBALL) ^ ((v24 ^ v20 ^ 0x5C7F53F8235917C5) - 0x288B55FA4AB1207DLL));
  v26 = (((v25 ^ 0x21F114ECDC18F80CLL) - 0x7348326FCA600082) ^ v25 ^ ((v25 ^ 0x91D6CF696007C772) + 0x3C9016158980C004) ^ ((v25 ^ 0x950360D175988087) + 0x3845B9AD9C1F87F7) ^ ((v25 ^ 0x779D9DD7DFFF4777) - 0x2524BB54C987BFF9)) >> 32;
  v27 = v25 - (((v26 ^ 0x23E826072C5BDB7FLL) + 0x290DC29FFB282EB1) ^ ((v26 ^ 0xA76DB260B09702B8) - 0x5277A907981B0888) ^ ((v26 ^ 0x84859467CE75FF44) - 0x719F8F00E6F9F574)) - 0x47D341EA90AE2541;
  v28 = v27 + (v27 >> 16) + ((v27 + (v27 >> 16)) >> 8) + v9;
  v29 = a2 & (2 * v28) ^ v28;
  v30 = v19 + 0x2FF2637E73EA86A3 + (((v28 ^ v20 ^ 0xD1CCE69B07F294D0) + 0x1D25A10BE03A6FB9) ^ ((v28 ^ v20 ^ 0x718529ABEF23FA83) - 0x429391C4F714FE14) ^ ((v28 ^ v20 ^ 0xA049CF30E8D16E53) + 0x6CA088A00F19953CLL));
  v31 = a2 & (2 * v24) ^ v24 ^ a1 ^ v29;
  v32 = (((v30 ^ 0x1C5BF37CB409A34ELL) - 0xB233EC6530B4866) ^ v30 ^ ((v30 ^ 0xBC6AE9B4FDB18414) + 0x54EDDBF1E54C90C4) ^ ((v30 ^ 0x5AA4288D584DB3BFLL) - 0x4DDCE537BF4F5897) ^ ((v30 ^ 0xEDEDFFFFF6F77FCDLL) + 0x56ACDBAEE0A6B1BLL)) >> 32;
  v33 = v30 - (((v32 ^ 0x95FD5B1307100C08) + 0x2AB112FD10DB0A63) ^ ((v32 ^ 0x2338BCD3BEDF31D3) - 0x638B0AC256EBC846) ^ ((v32 ^ 0xB6C5E7C0AEB7F061) + 0x989AE2EB97CF60CLL)) - 0x582C83CCE64F1F57;
  v34 = v33 + (v33 >> 16) + ((v33 + (v33 >> 16)) >> 8);
  if (v10 < a3 != a6 + 1299185549 < 0x5484445F)
  {
    v35 = v10 < a3;
  }

  else
  {
    v35 = a6 + 1299185549 < v10;
  }

  return (*(STACK[0x57D8] + 8 * ((v35 * v16) ^ v7)))(v31 ^ a2 & (2 * (v34 + v9)) ^ (v34 + v9));
}

uint64_t sub_1006FA564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x7964]) = LODWORD(STACK[0x5DE8]) + v4;
  v5 = STACK[0x57D8];
  v6 = STACK[0x246C];
  STACK[0xBE28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x246C]));
  return (*(v5 + 8 * (v6 ^ a4)))();
}

uint64_t sub_1006FA8D8()
{
  v2 = STACK[0x57D8];
  v3 = *(v2 + 8 * ((120 * ((*(STACK[0x57D8] + 8 * (v0 + 16255)))(v1 ^ 0x7D49747C ^ ((v1 ^ 0x4FC01EB6) - 847866570) ^ ((v1 ^ 0xB09EE29E) + 841509150) ^ ((v1 ^ 0xF7EFFFB7) + 1968796725) ^ ((v1 ^ 0x75F82FB5 ^ (((v0 - 13367) | 0x4453) + 2939)) - 145818527)) == 0)) ^ v0));
  return v3();
}

uint64_t sub_1006FA9B4()
{
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((((v2 - 240) | 0x10181BB7) - (v2 - 240) + ((v2 - 240) & 0xEFE7E448)) ^ 0xF6A340B1));
  STACK[0x1D4C0] = v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 13755)))(v4);
}

uint64_t sub_1006FAA4C()
{
  v0 = STACK[0x51B8] - 19672;
  STACK[0xA650] = STACK[0x9D18];
  v1 = *STACK[0x45F8];
  v2 = *STACK[0x45F0];
  LODWORD(STACK[0xC1E4]) = 16 * ((3 * (v2 + v1)) & 7) + 32;
  v3 = (19 * ((v2 ^ v1) ^ 0x10)) & 0x17;
  if (v3 == 1)
  {
    v3 = 0;
  }

  LODWORD(STACK[0xBFAC]) = v3;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x2FAC)))();
}

uint64_t sub_1006FAB1C()
{
  *v1 = 0x5E6653D96D0CF4EBLL;
  v1[1] = 0xF9E4F3B5C631896;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006FABAC()
{
  v1 = v0 & 0x74DE36DF;
  v2 = STACK[0xBE68];
  v3 = *(STACK[0xBE68] + 32);
  STACK[0xBF00] = *(STACK[0xBE68] + 24) - 0xC1DEE0670E1AFBELL - ((2 * *(STACK[0xBE68] + 24)) & 0xE7C423F31E3CA084);
  STACK[0x7978] = v3 - 0xC1DEE0670E1AFBELL - ((((v1 - 3029) | 0x32) - 0x183BDC0CE1C3782FLL) & (2 * v3));
  STACK[0x9D98] = *(v2 + 40) - 0xC1DEE0670E1AFBELL - ((2 * *(v2 + 40)) & 0xE7C423F31E3CA084);
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1006FADD8()
{
  v0 = STACK[0x57B0];
  v1 = STACK[0x57B0] - 9784;
  v2 = STACK[0x57B0] ^ 0x2446;
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * v2))(STACK[0xD4A0]);
  (*(v3 + 8 * v2))(STACK[0xD498] - 0x76D80982DFC39851);
  LODWORD(v0) = v0 + 9146;
  (*(v3 + 8 * v0))(STACK[0xD4B8]);
  (*(v3 + 8 * v2))(STACK[0xD4B0] - 0x537D20363747B7F8);
  (*(v3 + 8 * v0))(STACK[0xD4C8]);
  (*(v3 + 8 * v2))(STACK[0xD4A8]);
  (*(v3 + 8 * v2))(STACK[0xD4C0]);
  v4 = (*(v3 + 8 * v0))(STACK[0xD488]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1006FAFDC()
{
  *(v3 + 3276) = v0;
  *(v3 + 3272) = v1;
  return (*(STACK[0x57D8] + 8 * (((v0 == -143113071) * (v2 + 10)) | v2 ^ 0x1C25)))();
}

uint64_t sub_1006FB020()
{
  v1 = STACK[0x57D8];
  STACK[0x91E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + (v0 ^ 0x4885) - 2938)))();
}

uint64_t sub_1006FB074()
{
  v1 = v0;
  LODWORD(STACK[0xB1F0]) = *(STACK[0x5D40] + 52);
  v2 = STACK[0x7ED8] - 128;
  STACK[0x66B8] = &STACK[0x10120] + v2;
  STACK[0x7ED8] = v2 + ((2 * v0) ^ 0x17DELL);
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x77F4)))(&STACK[0x10120] + v2, 0, 120);
  STACK[0x7A18] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 + 5777)))(v4);
}

uint64_t sub_1006FB100@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v11 = (((v7 + 672) | 0xC12u) + 4294963533) & v9;
  v12 = v5 + v11;
  v13 = *(a5 + v11);
  v14 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = (v14 + a4) ^ 0x6B970A892F00BB58;
  v16 = __ROR8__((v14 + a4) ^ v10, 8);
  v17 = (((2 * (v16 + v15)) & 0xF75CD194F0FC1F08) - (v16 + v15) + 0x45197358781F07BLL) ^ 0x722D282749065C06;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((((v19 + v18) & 0x158AC8CD6A062314 ^ 0x150A08886A002014) + ((v19 + v18) ^ 0xA0D5E357153653A1) - (((v19 + v18) ^ 0xA0D5E357153653A1) & 0x158AC8CD6A062314)) ^ 0x833CFA39959836ALL, 8);
  v21 = (((v19 + v18) & 0x158AC8CD6A062314 ^ 0x150A08886A002014) + ((v19 + v18) ^ 0xA0D5E357153653A1) - (((v19 + v18) ^ 0xA0D5E357153653A1) & 0x158AC8CD6A062314)) ^ 0x833CFA39959836ALL ^ __ROR8__(v18, 61);
  v22 = (v20 + v21) ^ a3;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((v24 + v23) | 0x933F5CD7082F911) - ((v24 + v23) | 0xF6CC0A328F7D06EELL) - 0x933F5CD7082F912) ^ 0x51DC5906B8559F4ALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a2;
  v30 = __ROR8__(v29, 8);
  v31 = __ROR8__(v28, 61);
  v32 = (v13 << 48) | (((((((2 * (v30 + (v29 ^ v31))) | 0xDD69B8B753659FF2) - (v30 + (v29 ^ v31)) + 0x114B23A4564D3007) ^ 0xE77CB941C5C8B1A3) >> (8 * (v12 & 7u))) ^ *v12) << 56);
  LODWORD(v12) = ((2 * v7) & 0xBE61EFF6) + (v7 ^ 0xDF30F7FB);
  LODWORD(v28) = v6 - v12 + 1434961062;
  LODWORD(v29) = (v28 ^ 0x6D0DAA04) & (2 * (v28 & 0x89A93355)) ^ v28 & 0x89A93355;
  v33 = ((2 * (v28 ^ LODWORD(STACK[0x1CA4]))) ^ LODWORD(STACK[0x1CA8])) & (v28 ^ LODWORD(STACK[0x1CA4])) ^ (2 * (v28 ^ LODWORD(STACK[0x1CA4]))) & 0xE7B49FDA;
  LODWORD(v30) = v33 ^ 0x20948049;
  v34 = (v33 ^ 0x47201F90) & (4 * v29) ^ v29;
  LODWORD(v29) = ((4 * v30) ^ 0x9ED27F6C) & v30 ^ (4 * v30) & 0xE7B49FD8;
  v35 = v34 ^ 0xE7B49FDB ^ (v29 ^ 0x86901F40) & (16 * v34);
  LODWORD(v29) = ((16 * (v29 ^ 0x61248093)) ^ 0x7B49FDB0) & (v29 ^ 0x61248093) ^ (16 * (v29 ^ 0x61248093)) & 0xE7B49FD0;
  v36 = (v35 << 8) & 0xE7B49F00 ^ v35 ^ ((v35 << 8) ^ 0xB49FDB00) & v29;
  LODWORD(v28) = v28 ^ (2 * ((v36 << 16) ^ v36 ^ (v36 << 16) & ((v29 << 8) & ~v29 ^ 0x43200000)));
  v37 = v12 - v6 + 1742727800;
  LODWORD(v29) = (v37 ^ LODWORD(STACK[0x1CAC])) & (2 * (v37 & 0xB8EF1D8D)) ^ v37 & 0xB8EF1D8D;
  v38 = ((2 * (v37 ^ 0xB1C99FB2)) ^ 0x124D047E) & (v37 ^ 0xB1C99FB2) ^ (2 * (v37 ^ 0xB1C99FB2)) & 0x926823E;
  LODWORD(v30) = v38 ^ 0x9228201;
  v39 = (v38 ^ 0x806003D) & (4 * v29) ^ v29;
  LODWORD(v29) = ((4 * v30) ^ 0x249A08FC) & v30 ^ (4 * v30) & 0x926823C;
  v40 = v29 & (16 * v39) ^ v39;
  LODWORD(v29) = ((16 * (v29 ^ 0x9248203)) ^ 0x926823F0) & (v29 ^ 0x9248203);
  v41 = (v12 + 550438917) ^ ((v28 | ~(v37 ^ (2 * (v29 & (v29 << 8) & ((v29 & (v40 << 8) ^ v40) << 16) ^ v29 & (v40 << 8) ^ v40)))) >> 31) ^ 1;
  if (!v8)
  {
    LOBYTE(v41) = 2;
  }

  v42 = v32 & 0xFFFFFFFCFFFFFFFFLL | ((v41 & 3) << 32);
  v43 = *STACK[0x4170];
  *STACK[0x4170] = v43 + 1;
  v44 = v43 & 0x3F;
  v45 = v42 - 0x152B4172048D4BBELL - ((2 * v42) & 0xD5A8000200000000);
  v46 = 8 * v44;
  v47 = v44 > 0x1B;
  v48 = (STACK[0x4C10] + 8 * v44);
  v49 = v46 + STACK[0x4C08] - 224;
  if (v47)
  {
    v48 = v49;
  }

  *v48 = v45;
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x296D)))();
}

uint64_t sub_1006FB5BC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 13553;
  v2 = STACK[0x6740];
  *v2 = 0x1D8A118EDE6D14DLL;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1414217035;
  *(v2 + 28) = 0x800000002;
  *(v2 + 36) = 1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 957766676;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1768711563;
  *(v2 + 68) = 0x400000001;
  v3 = v1 ^ 0xD38CBDD3ACAFDB2FLL ^ STACK[0xBD90];
  *(v2 + 76) = 2;
  *(v2 + 80) = v3;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 1315558685;
  *(v2 + 108) = 0x800000002;
  *(v2 + 116) = 2;
  v4 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * (v0 - 21448));
  return (*(v4 + 8 * (v0 - 9040)))();
}

uint64_t sub_1006FB730()
{
  v1 = STACK[0x90E8];
  *(v1 + 96) = 0;
  *(v1 + 104) = -769884012;
  *(v1 + 112) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 14243)))();
}

uint64_t sub_1006FB784@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = v7 - 1;
  v16 = v9 + a7 + v15;
  v17 = *v14 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(*v13 + (((v16 & 0xFFFFFFF8) + a2) & v17));
  v19 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (0xC02C3DA03E3DFEC5 - ((v19 + v18) | 0xC02C3DA03E3DFEC5) + ((v19 + v18) | 0x3FD3C25FC1C2013ALL)) ^ 0xB42D83242EBD111CLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xC933E755CB296E9BLL;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (((v23 + v24) & 0x1E03040024510097 ^ 0x1203040024500080) + ((v23 + v24) ^ 0xECB05B3F820DBE7FLL) - (((v23 + v24) ^ 0xECB05B3F820DBE7FLL) & 0x1E03040024510097)) ^ 0xC3E6CCD3AACD8ABDLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0x498A2D36A9061C2BLL - ((v27 + v26) | 0x498A2D36A9061C2BLL) + ((v27 + v26) | 0xB675D2C956F9E3D4)) ^ 0x8017133C7C974FEALL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x64AD3D2C8E1655C0) - (v30 + v29) + 0x4DA96169B8F4D51FLL) ^ 0x30A0FE93543C27A1;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v10;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = *(*v13 + ((((a1 + v15) & 0xFFFFFFF8) + a3) & v17));
  v37 = (v36 + __ROR8__((a1 + v15) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a4;
  v40 = (0x3C906D252DDBA4EBLL - ((v35 + v34) | 0x3C906D252DDBA4EBLL) + ((v35 + v34) | 0xC36F92DAD2245B14)) ^ 0x9DDD88205652D876;
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v39, 8) + v41) ^ a5;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v12;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xDA604B0C03A2BF99;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) & 0x3C7DAC24C4D30F58) - (v48 + v47) - 0x1E3ED612626987ADLL) ^ 0x1BF4CB2056A84994;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v11;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  *(a1 + v15) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v34, 61))) ^ a6) >> (8 * (v16 & 7u))) ^ (((v53 + v52 - ((2 * (v53 + v52)) & 0x1AFD5624B7FC4DA4) - 0x728154EDA401D92ELL) ^ 0x790DA023F58E53A9uLL) >> (8 * ((a1 + v15) & 7))) ^ *v16;
  return (*(STACK[0x57D8] + 8 * ((95 * (v15 != 0)) ^ v8)))();
}

uint64_t sub_1006FBB6C()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x9C0C];
  LODWORD(STACK[0x9094]) = -32197484;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006FBBF8()
{
  v2 = *(STACK[0x57D8] + 8 * (v0 - 18304));
  *(v1 + 3776) = v0;
  return v2();
}

uint64_t sub_1006FBD38()
{
  v1 = STACK[0x57D8];
  STACK[0x5838] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4154) ^ v0)))();
}

uint64_t sub_1006FBDF4()
{
  v0 = STACK[0x51B8] + 1178;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2468)))(*STACK[0x7800] + (LOWORD(STACK[0x5B96]) ^ 0xF2A9));
  *STACK[0x86D8] = v2;
  return (*(v1 + 8 * ((449 * ((LODWORD(STACK[0x419C]) ^ (v2 == 0)) & 1)) ^ v0)))();
}

uint64_t sub_1006FBE78()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] + 6565;
  LODWORD(STACK[0x9B50]) = LODWORD(STACK[0x77EC]) - 769884012 - (((STACK[0x51B8] - 1383807151) & 0x527AEC5E ^ 0xA4390D2E) & (2 * LODWORD(STACK[0x77EC])));
  v2 = STACK[0x5D90];
  STACK[0x81E0] = STACK[0x5D90];
  v3 = STACK[0x6430];
  STACK[0x6E40] = STACK[0x6430];
  v4 = STACK[0x7ED8];
  v5 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x6150] = v5;
  STACK[0xB078] = (v5 + 256);
  STACK[0x7ED8] = v4 + 384;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x240D)))();
  LODWORD(STACK[0xB26C]) = 113;
  if (v2)
  {
    v8 = STACK[0x6578] == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v3 == 0;
  return (*(v6 + 8 * ((988 * v10) ^ v1)))(v7);
}

uint64_t sub_1006FBF80()
{
  v0 = STACK[0x34C8];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x34C8]) ^ 0x52E8)))();
  STACK[0xAFF0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006FC078@<X0>(int a1@<W8>)
{
  v6 = *(STACK[0x53F8] + (LODWORD(STACK[0x5210]) & ((((STACK[0x53E8] | 0x14CDB1DD) + (STACK[0x53E8] | 0xEB324E22) - 349024733) & 0xFFFFFFF8) - 1895175432)));
  v7 = (v6 + STACK[0x5620]) ^ 0xB88801D4E1C76353;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (v9 + v8 - ((2 * (v9 + v8)) & 0xF2BC78EFE737A47ELL) - 0x6A1C3880C642DC1) ^ 0xC1968D1D149EBA48;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) | 0x526AB168E5FA6B12) - ((v12 + v11) | 0xAD954E971A0594EDLL) - 0x526AB168E5FA6B13) ^ 0xB7EA0015693F8E43;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x46C3EE741B05D5FELL) - (v15 + v14) + 0x5C9E08C5F27D1500) ^ 0xBD3FF59E2328EC7ALL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0x12DED0B55EEE0D8FLL) - ((v18 + v17) | 0xED212F4AA111F270) - 0x12DED0B55EEE0D90) ^ 0xC8BE9BB95D4CB216;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xFA35E2CDCB3E31C7;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v2;
  v24 = __ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61));
  v25 = *(STACK[0x5200] + (((1967659757 * ((((-647998747 * STACK[0x5158]) & 0xFDC1E900) + ((-647998747 * STACK[0x5158]) | 0xFDC1E900)) | 4) + 2129467494) & STACK[0x5208]) & 0xFFFFFFFFFFFFFFF8));
  v26 = (v25 + STACK[0x5258]) ^ 0xB88801D4E1C76353;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x38C8B16AE7056877;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xE580B17D8CC5E551;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) | 0xC105D64E458B456ALL) - (v32 + v31) - 0x6082EB2722C5A2B5) ^ 0x8123167CF3905BCFLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x3E5FCD8A5F6B499ALL) - ((v35 + v34) | 0xC1A03275A094B665) - 0x3E5FCD8A5F6B499BLL) ^ 0xE43F86865CC9F603;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) | 0xFD033D0EC2754B3CLL) - (v38 + v37) + 0x17E61789EC55A62) ^ 0x4B47C4AAA049459;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v2;
  v42 = *(STACK[0x56F0] + (STACK[0x5190] & (STACK[0x53B0] + 2050767130) & 0xFFFFFFFFFFFFFFF8));
  v43 = (((2 * (v42 + STACK[0x5440])) & 0x52225ACFD8ABD128) - (v42 + STACK[0x5440]) + 0x56EED29813AA176BLL) ^ 0xEE66D34CF26D7438;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = ((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5670];
  v46 = (__ROR8__(v43, 8) + v44) ^ 0x38C8B16AE7056877;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = __ROR8__((((2 * (v48 + v47)) & 0x853DC08603FEE1A6) - (v48 + v47) - 0x429EE04301FF70D4) ^ 0x58E1AEC172C56A7DLL, 8);
  v50 = (((2 * (v48 + v47)) & 0x853DC08603FEE1A6) - (v48 + v47) - 0x429EE04301FF70D4) ^ 0x58E1AEC172C56A7DLL ^ __ROR8__(v47, 61);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((((2 * v24) & 0x2C464D4B62C3C1A8) - v24 + 0x69DCD95A4E9E1F2BLL) ^ 0x9DAFD26BE0EE6A50) >> STACK[0x57B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56E0]) ^ v45;
  v51 = (((2 * (v49 + v50)) & 0x630DC36CB4CD58E6) - (v49 + v50) - 0x3186E1B65A66AC74) ^ 0x2FD8E31274CCAAF6 ^ __ROR8__(v50, 61);
  v52 = (__ROR8__((((2 * (v49 + v50)) & 0x630DC36CB4CD58E6) - (v49 + v50) - 0x3186E1B65A66AC74) ^ 0x2FD8E31274CCAAF6, 8) + v51) ^ 0xDA604B0C03A2BF99;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xFA35E2CDCB3E31C7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((v56 + v55) | 0x2A93897F87616F18) - ((v56 + v55) | 0xD56C7680789E90E7) - 0x2A93897F87616F19) ^ 0xF8638599A784BCB6;
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v55, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5450]);
  v58 = *(STACK[0x5250] + (v3 & v4));
  v59 = (v58 + STACK[0x52C0]) ^ 0xB88801D4E1C76353;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((v61 + v60) | 0xF91206EECB43F546) - ((v61 + v60) | 0x6EDF91134BC0AB9) + 0x6EDF91134BC0AB9) ^ 0xC1DAB7842C469D31;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0x76460DD6FE65D07CLL) - (v64 + v63) - 0x3B2306EB7F32E83ELL) ^ 0xDEA3B796F3F70D6FLL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xE1A1FD5BD155F97ALL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xDA604B0C03A2BF99;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xFA35E2CDCB3E31C7;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v2;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5348]) ^ (((((2 * (v75 + v74)) | 0x27816F96CA1A459ALL) - (v75 + v74) - 0x13C0B7CB650D22CDLL) ^ 0xE7B3BCFACB7D57B6) >> STACK[0x5328]);
  v76 = STACK[0x51E8];
  LODWORD(v74) = *STACK[0x51E8];
  LODWORD(STACK[0x50B8]) = v74;
  v77 = v74 & 0xFFFFFFF8;
  LODWORD(v74) = -1965296693 * STACK[0x5260];
  LODWORD(STACK[0x50B0]) = v77;
  v78 = *(STACK[0x5268] + (v77 & (-1216865821 * ((v74 | 0xE75C076F) + (v74 | 0x18A3F891)) + 2050767130)));
  v79 = (v78 + STACK[0x5288] - ((2 * (v78 + STACK[0x5288])) & 0x6E232AAAEA60BECLL) - 0x7C8EE6AAA8ACFA0ALL) ^ 0x3BF91881B69466A5;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x38C8B16AE7056877;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xE580B17D8CC5E551;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((v85 + v84) | 0xBA6D64B73EF6365ELL) - ((v85 + v84) | 0x45929B48C109C9A1) + 0x45929B48C109C9A1) ^ 0x5BCC99ECEFA3CF24;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xDA604B0C03A2BF99;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xFA35E2CDCB3E31C7;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) | 0x6A6A7E502B74E612) - (v92 + v91) - 0x35353F2815BA7309) ^ 0xE7C533CE355FA0A7;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v96 = ((((v95 + v94) | 0xE7F0B494E8459E71) - ((v95 + v94) | 0x180F4B6B17BA618ELL) + 0x180F4B6B17BA618ELL) ^ 0x1383BFA54635EB0ALL) >> STACK[0x5358];
  LODWORD(STACK[0x5198]) = v1 ^ 0x7F;
  LODWORD(STACK[0x54B0]) = v1 ^ 0x7F ^ v96;
  v97 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v98 = *v76;
  v99 = *STACK[0x51F0];
  LODWORD(v96) = *v97 ^ v5;
  STACK[0x5148] = v99;
  v100 = *(v99 + ((((v97 & 0xFFFFFFF8) + 2050767130) & v98) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x5138] = v97 & 0xFFFFFFFFFFFFFFF8;
  v101 = __ROR8__(v97 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5140] = v101;
  v102 = (v100 + v101) ^ 0xB88801D4E1C76353;
  v103 = __ROR8__(v100, 61);
  v104 = v102 ^ v103;
  v105 = (__ROR8__(v102, 8) + (v102 ^ v103)) ^ 0x38C8B16AE7056877;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xE580B17D8CC5E551;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xE1A1FD5BD155F97ALL;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xDA604B0C03A2BF99;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xFA35E2CDCB3E31C7;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ v2;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = 8 * (v97 & 7);
  STACK[0x51A8] = v118;
  LODWORD(STACK[0x51C0]) = v96;
  LODWORD(STACK[0x5220]) = v96 ^ (((((2 * (v117 + v116)) & 0x9F37452B21A3828ELL) - (v117 + v116) - 0x4F9BA29590D1C148) ^ 0x4417565BC15E4BC3) >> v118);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 58;
  v119 = LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x52F0]) = 111;
  v120 = *(STACK[0x57D8] + 8 * (a1 ^ (490 * (((v119 == 58) ^ 0xFFCFFF7B) + 2 * (v119 == 58) == -3145861))));
  LODWORD(STACK[0x5338]) = 57;
  STACK[0x52F8] = v119;
  return v120();
}

uint64_t sub_1006FD1E4(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x5780]) = a1;
  v19 = (v18 + v9) >> 16;
  v20 = (v18 + v9 + v19) >> 8;
  v21 = v18 + v19 + v20;
  v22 = (v21 + v13);
  v23 = v22 >> 11;
  v24 = v22 + (v22 >> 11);
  v25 = v16 + v21 + (v24 >> 5) + (v22 >> 11) + v12;
  LODWORD(v24) = v24 >> 5;
  LODWORD(v21) = v18 + v14 + (v22 >> 11) + v20 + v24 + v19;
  v26 = v21 >> 13;
  LODWORD(v21) = (v21 + (v21 >> 13)) >> 5;
  LODWORD(v22) = v18 + v26 + v24 + v21 + (v22 >> 11) + v20 + v19;
  v27 = v22 + a6;
  v28 = (v22 + a6) >> 15;
  v29 = v22 + v28;
  v30 = (v27 + v28) >> 2;
  v31 = v16 + v22 + v28 - v30 - a7;
  LODWORD(v22) = (v16 + v22 - a8) ^ v17 ^ v15 & ((v16 + v22 - a8) >> 1);
  v32 = v29 + a3;
  v33 = (v32 - v30) >> 9;
  v34 = v32 + v33 - v30;
  LODWORD(v21) = v18 + v33 + v28 + v21 + (v34 >> 3) + v26 + v24 + v23 + v20 + v19;
  v35 = v16 + v21 - v30 - v11;
  STACK[0x5770] = v25;
  STACK[0x5750] = v35;
  LODWORD(v35) = v35 ^ v25;
  LODWORD(v24) = (v34 >> 3) + v34 - 1181963997;
  v36 = v24 >> 12;
  LODWORD(v24) = (v24 >> 12) + v24;
  LODWORD(v21) = v21 + v36 + (v24 >> 7) - v30;
  LODWORD(v25) = v16 + v21 - (((v24 >> 7) + v24 - 505175844 - (((v24 >> 7) + v24 - 505175844) >> 11)) >> 7) - (((v24 >> 7) + v24 - 505175844) >> 11) - v8;
  STACK[0x5760] = v31;
  v37 = (v25 ^ 0xB27566C9) + ((v25 ^ 0xB27566C9) >> 13) - (((v25 ^ 0xB27566C9) + ((v25 ^ 0xB27566C9) >> 13)) >> 6);
  LODWORD(STACK[0x5740]) = (v35 ^ v37) >> 1;
  v38 = (v37 ^ 0xD21A5998) - ((v37 ^ 0xD21A5998) >> 11) + (((v37 ^ 0xD21A5998) - ((v37 ^ 0xD21A5998) >> 11)) >> 3);
  LODWORD(STACK[0x50D0]) = v38 >> 1;
  LODWORD(STACK[0x5640]) = v22;
  LODWORD(STACK[0x5630]) = (v15 & ((v16 + v21 - v10) >> 1) ^ (v16 + v21 - v10)) & v22;
  LODWORD(STACK[0x5108]) = v38;
  LODWORD(v21) = (v38 ^ 0xD45CB986) - ((v38 ^ 0xD45CB986) >> 10) + (((v38 ^ 0xD45CB986) - ((v38 ^ 0xD45CB986) >> 10)) >> 7);
  v39 = STACK[0x5460];
  LODWORD(v21) = ((v15 & (v21 >> 1)) + v21 - 2 * (v15 & (v21 >> 1) & v21)) ^ v15 & ((v25 ^ v31) >> 1);
  LODWORD(STACK[0x5228]) = v15 & (((LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x56F0])) ^ LODWORD(STACK[0x5460])) >> 1);
  v40 = STACK[0x55F0];
  LODWORD(v22) = (LODWORD(STACK[0x56D0]) + 1438776612 - ((2 * LODWORD(STACK[0x56D0])) & 0xAB83FA48)) ^ LODWORD(STACK[0x55F0]);
  v41 = STACK[0x5700];
  LODWORD(STACK[0x50C8]) = v22;
  LODWORD(STACK[0x56D0]) = (v39 >> 1) & 0x515377FB;
  LODWORD(STACK[0x50C0]) = (v22 ^ v41) >> 1;
  LODWORD(v35) = (v40 >> 1) ^ 0x2AE0FE92;
  LODWORD(STACK[0x5700]) = v35 & 0x504140BB;
  LODWORD(STACK[0x56F0]) = v35 & 0x1123740 ^ v40 & 0xAD32BF40;
  LODWORD(STACK[0x5570]) = (2 * v21) & 0xAB83FA48;
  LODWORD(STACK[0x5210]) = v21 + 1438776612;
  return (*(STACK[0x57D8] + 8 * LODWORD(STACK[0x5790])))(LODWORD(STACK[0x5148]));
}

uint64_t sub_1006FD6B4()
{
  STACK[0x74A0] = v2;
  LODWORD(STACK[0x901C]) = STACK[0xBF58];
  STACK[0x8090] = v1;
  LODWORD(STACK[0x8014]) = (((v3 - v0) | (v0 - v3)) >> 31) - 769884028;
  STACK[0xA3B8] = &STACK[0x7028];
  STACK[0x8BD8] = &STACK[0x8CF4];
  LODWORD(STACK[0xAC7C]) = STACK[0x19DC];
  return (*(STACK[0x57D8] + 8 * (v0 + 143095231 + v0 + 143143272)))();
}

uint64_t sub_1006FD8D8()
{
  v0 = STACK[0x51B8] - 20100;
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1805)))();
}

uint64_t sub_1006FD9C4()
{
  v1 = *(STACK[0x6540] - 0x1883660EE814440ALL) - 769884012 + (((LODWORD(STACK[0xC42C]) ^ 0x20551EF) - 33903087) ^ ((LODWORD(STACK[0xC42C]) ^ 0xE0C7E71D) + 523770083) ^ ((v0 ^ 0x1596 ^ LODWORD(STACK[0xC42C]) ^ 0x30DE6E30) - 819869286));
  v2 = *(STACK[0x6540] - 0x1883660EE814440ELL);
  LODWORD(STACK[0xE67C]) = v1;
  v2 -= 1805005517;
  v1 -= 1805005517;
  v3 = v1 < 0x11B341AF;
  v4 = v2 < v1;
  if (v2 < 0x11B341AF != v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = (STACK[0xA7E8] == 0) | v5 & 1;
  if (v6)
  {
    v7 = -143155721;
  }

  else
  {
    v7 = -143113071;
  }

  LODWORD(STACK[0xE680]) = v7;
  return (*(STACK[0x57D8] + 8 * ((50 * v6) | v0)))();
}

uint64_t sub_1006FDCA0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 | 0x991)))(1028);
  STACK[0xD830] = v2;
  return (*(v1 + 8 * (((((v0 ^ (v2 == 0)) & 1) == 0) * ((v0 - 19241) ^ 0x2751)) ^ v0)))();
}

uint64_t sub_1006FDD08()
{
  v0 = STACK[0x51B8] - 14793;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xC378]);
  STACK[0xC378] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006FDD68()
{
  STACK[0xCCC8] = v1;
  STACK[0x9830] = &STACK[0xB5F8];
  LODWORD(STACK[0x8724]) = -814867821;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006FDEEC()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x8D7C];
  LODWORD(STACK[0x9094]) = -32197504;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006FDF68()
{
  *v1 = ((389 * (v2 ^ 0x6F4E)) ^ (v2 - 16439)) + v0;
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v2 + 1717142751) ^ (1964904101 * (((v3 - 240) & 0x750D0E66 | ~((v3 - 240) | 0x750D0E66)) ^ 0x70D01A1D));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 3316)))(v3 - 240);
  return (*(v4 + 8 * ((51 * (*(STACK[0x4D10] + 8) == 0)) ^ v2)))(v5);
}

uint64_t sub_1006FE190()
{
  v0 = LODWORD(STACK[0xDDAC]) == ((STACK[0x51B8] - 1057329807) & 0x3F057AFE ^ 0xF7780457);
  if ((LODWORD(STACK[0x90E0]) ^ (LODWORD(STACK[0x99A4]) + LODWORD(STACK[0x8644]))) != 0xD21C8094)
  {
    v0 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((28210 * v0) ^ (STACK[0x51B8] - 13828))))();
}

uint64_t sub_1006FE3C0@<X0>(_BYTE *a1@<X8>)
{
  a1[115] = v1[23];
  a1[114] = v1[22];
  a1[113] = v1[21];
  a1[112] = v1[20];
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1006FE470()
{
  v0 = STACK[0x1B18];
  v1 = LODWORD(STACK[0x1B18]) + 4147;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1B18]));
  return (*(v2 + 8 * (v0 ^ 0x249 ^ v1)))();
}

uint64_t sub_1006FE4F0()
{
  v1 = STACK[0xAF08];
  v2 = STACK[0x57D8];
  STACK[0x5BC8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((((v0 + 1261) | 0x1104) ^ 0x440A) + v0)))(v1);
}

uint64_t sub_1006FE618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (STACK[0x51B8] - 13393) | 0x4930;
  v5 = STACK[0x51B8] - 20534;
  LODWORD(STACK[0x74C4]) = -769883996;
  v6 = STACK[0x57D8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * v5);
  return (*(v6 + 8 * ((v4 ^ 0x65B0) + v5)))(a1, a2, a3, a4, 0xFA35E2CDCB3E31C7);
}

uint64_t sub_1006FE6B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X6>, int a6@<W8>)
{
  LODWORD(STACK[0x50F8]) = 0;
  LODWORD(STACK[0x5660]) = 0;
  LODWORD(STACK[0x5258]) = 0;
  LODWORD(STACK[0x5490]) = v10;
  LODWORD(STACK[0x5670]) = 0;
  LODWORD(STACK[0x5700]) = v11;
  v15 = (a6 - 1176235683) & STACK[0x1B70];
  LODWORD(STACK[0x57A0]) = (a6 + 1150180797) & 0xBB71A5C7;
  v16 = *(STACK[0x57D8] + 8 * (((((v6 == 5) ^ (a6 - 67)) & 1) * (v15 - 13074)) ^ a6));
  LODWORD(STACK[0x5398]) = a4;
  LODWORD(STACK[0x5680]) = 1;
  LODWORD(STACK[0x5250]) = -1951856434;
  LODWORD(STACK[0x5450]) = v7;
  LODWORD(STACK[0x56D0]) = v12;
  LODWORD(STACK[0x56E0]) = v8;
  LODWORD(STACK[0x5460]) = a2;
  LODWORD(STACK[0x5440]) = v14;
  LODWORD(STACK[0x53A8]) = v9;
  LODWORD(STACK[0x53B0]) = v13;
  LODWORD(STACK[0x53A0]) = a3;
  return v16(a1, LODWORD(STACK[0x53E8]), LODWORD(STACK[0x5730]), 6, LODWORD(STACK[0x5720]), LODWORD(STACK[0x5470]), a5, LODWORD(STACK[0x54D0]));
}

uint64_t sub_1006FE9E8()
{
  v0 = STACK[0x51B8] ^ 0x69DB;
  v1 = STACK[0x57D8];
  v2 = STACK[0x222C];
  STACK[0x5D78] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x222C]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x2BB2)))();
}

uint64_t sub_1006FEA70(uint64_t a1)
{
  v1 = STACK[0x51B8] - 4832;
  *(STACK[0xE208] + 1576) = 0x200000000;
  return (*(STACK[0x57D8] + 8 * v1))(a1, STACK[0x4118], STACK[0x4110]);
}

uint64_t sub_1006FEB70@<X0>(int a1@<W8>)
{
  STACK[0xA550] = STACK[0x6150];
  v1 = STACK[0x7ED8];
  v2 = (&STACK[0x10120] + STACK[0x7ED8]);
  STACK[0xBDF8] = v2;
  STACK[0x7ED8] = ((a1 - 19532341) & 0x12A3FDF ^ 0x3BD7) + v1;
  *v2 = 0;
  v2[1] = 0;
  STACK[0x8808] = v2 + 4;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x2CA3)))();
}

uint64_t sub_1006FEBF0(uint64_t a1)
{
  v2 = STACK[0xA228];
  STACK[0x8030] = STACK[0xA228];
  LODWORD(STACK[0x813C]) = ((((v1 ^ 0x350F ^ LODWORD(STACK[0x5D00]) ^ 0xB37BABC1) + 1283748912) ^ ((LODWORD(STACK[0x5D00]) ^ 0x944130CE) + 1807666994) ^ ((LODWORD(STACK[0x5D00]) ^ 0xF5263B8A) + 182043766)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xFB6342D37F4CDB8CLL;
  LODWORD(STACK[0xCD80]) = 1244403676;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1006FEE3C()
{
  v0 = STACK[0x51B8] - 1153;
  *(STACK[0x6F20] - 0x1883660EE814440ALL) = STACK[0xE66C];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xE670]) == -143113071) * (STACK[0xF00] + 230)) ^ v0)))();
}

uint64_t sub_1006FEF24@<X0>(int a1@<W2>, int a2@<W4>, unint64_t a3@<X5>, int a4@<W7>, unsigned __int8 *a5@<X8>)
{
  v9 = (v5 + 3469);
  v10 = a5[6];
  v11 = v10 ^ a2;
  STACK[0xD4A0] = 0;
  STACK[0xD4C8] = 0;
  v12 = *(&off_101353600 + v5 - 4372) - 12;
  STACK[0x5700] = v12;
  LOBYTE(v10) = v12[(((v10 ^ a2) - (v10 ^ 0x7E)) ^ 0xFFFFFFFE) + (v10 ^ a2)];
  v13 = v10 & 4;
  STACK[0xD4C0] = 0;
  v14 = v11 + (v9 ^ 0xFFFFFF89);
  STACK[0xD4B0] = 0x537D20363747B7F8;
  v15 = v10 & 0xFB;
  v16 = a5[13];
  if ((v13 & v14) != 0)
  {
    v13 = -v13;
  }

  v17 = *(&off_101353600 + (v5 ^ 0x105D)) - 4;
  v18 = v17[v16 ^ 0x66];
  v19 = a5[9] ^ v7;
  STACK[0xD4B8] = 0;
  v20 = v15 ^ 0x4D ^ (v13 + v14);
  STACK[0xD498] = 0x76D80982DFC39851;
  STACK[0xD488] = 0;
  v21 = v18 - ((2 * v18) & 0xCC);
  LODWORD(STACK[0xD484]) = -612960250;
  v22 = v20 << 8;
  v23 = *(&off_101353600 + (v5 ^ 0x1625)) - 12;
  v24 = v23[v19] + 121;
  v25 = v21 - 26;
  v26 = a5[15] ^ 0xFLL;
  v27 = *(&off_101353600 + (v5 ^ 0x17B8)) - 8;
  STACK[0x56D0] = v27;
  LOBYTE(v26) = v27[v26];
  LODWORD(STACK[0x57C0]) = v16 ^ 0x9C ^ v25;
  v28 = *(&off_101353600 + v5 - 5372) - 8;
  LODWORD(v19) = v28[a5[10] ^ 0x5BLL];
  LODWORD(STACK[0x57A0]) = v24 ^ 0x5B;
  v29 = a5[11];
  v30 = *(&off_101353600 + v5 - 5590);
  STACK[0x5680] = v30;
  v31 = *(v30 + (v29 ^ 0xFA));
  v32 = a5[14];
  LODWORD(STACK[0x57B0]) = v26 ^ 0xC7 ^ (16 * (v26 ^ 0xC7) * (v26 ^ 0xC7));
  LODWORD(STACK[0x5790]) = v31 | ((v19 ^ a1) << 8);
  v33 = *(&off_101353600 + (v5 ^ 0x1345)) - 4;
  STACK[0x5670] = v33;
  LODWORD(v19) = v33[v32 ^ 0xEE];
  v34 = a5[4] ^ 0xA4;
  LODWORD(STACK[0x5780]) = v19 ^ 0x4B;
  v35 = *(&off_101353600 + v5 - 4558) - 8;
  LODWORD(v19) = *(v35 + v34);
  v36 = a5[3] ^ 0xF5;
  v37 = *(&off_101353600 + v5 - 4420) - 12;
  STACK[0x5650] = v37;
  v38 = v22 | ((((v19 >> 1) | (v19 << 7)) ^ 0xE) << 24);
  LODWORD(v19) = (((v37[v36] >> (v29 & 7 ^ 2)) >> (v29 & 7 ^ 5)) | (2 * v37[v36])) ^ 0x17;
  v39 = *(&off_101353600 + (v5 ^ 0x17F0));
  LODWORD(STACK[0x5770]) = *(v39 + (a5[8] ^ 0xA9)) ^ 0xDD;
  v40 = *a5 ^ 0xAELL;
  STACK[0x5640] = v39;
  LODWORD(v40) = (*(v39 + v40) >> 2) | (*(v39 + v40) << 6);
  v41 = a5[12] ^ a3;
  STACK[0x5660] = v35;
  v42 = a5[7] ^ 0x26;
  LOBYTE(v41) = (*(v35 + v41) >> 1) | (*(v35 + v41) << 7);
  LODWORD(v19) = ((v19 >> 1) | (v19 << 7)) | (((((v40 ^ 0x5E) >> 6) | (4 * (v40 ^ 0x5E))) ^ a4) << 24);
  v43 = *(&off_101353600 + (v5 ^ 0x1276)) - 12;
  STACK[0x5630] = v43;
  LODWORD(v40) = *(v43 + v42);
  v44 = a5[5];
  v45 = v40 | v38;
  LOBYTE(v40) = v41 ^ 0xE8;
  STACK[0x56F0] = v17;
  v46 = v17[v44 ^ 0x9B];
  v47 = a5[1] ^ 0x1CLL;
  STACK[0x56E0] = v23;
  v48 = v23[v47];
  LODWORD(STACK[0x5760]) = v40;
  LODWORD(v35) = v45 | ((v44 ^ 0x2A ^ v46) << 16);
  v49 = a5[2] ^ 0x5ELL;
  STACK[0x56C0] = v28;
  LODWORD(v19) = v19 & 0xFF00FFFF | (((v48 + 121) ^ 0x37) << 16);
  LODWORD(v43) = (v28[v49] ^ 0x84) << 8;
  LODWORD(STACK[0x5730]) = v43;
  LODWORD(STACK[0x5710]) = v35;
  LODWORD(STACK[0x5740]) = v35 ^ v6;
  LODWORD(STACK[0x5720]) = ((v43 ^ 0x23C5381) & ~v19 | v19 & 0xFDC3007E) ^ 0x23C53AC;
  v50 = STACK[0xD4D0];
  v51 = STACK[0xD490];
  LODWORD(STACK[0x5620]) = v8;
  v52 = *(STACK[0x57D8] + 8 * v5);
  LODWORD(STACK[0x5750]) = (v5 + 19001) | 0x41;
  return v52(v9, v51, 1602923584, 937601808, 298631931, v50, 4294967278, (((v8 ^ 0xC795068B) - 1003141361) ^ ((v8 ^ 0xFB57CFBF) - 117993925) ^ ((v8 ^ 0xC33D36D4) - 1063422126)) + 422429826);
}

uint64_t sub_1006FF4BC()
{
  v2 = *(v1 + 68);
  v3 = v1 + 56;
  v4 = v1;
  v5 = STACK[0x51E8];
  v6 = STACK[0x51F0];
  v7 = *(*STACK[0x51F0] + (*STACK[0x51E8] & (((v1 + 56) & 0xFFFFFFF8 ^ 0x26B63988) + 545833760 + ((2 * ((v1 + 56) & 0xFFFFFFF8)) | 0xB2938CEF)) & (((v0 + 656555206) & 0xD8DDA74E) - 1044)));
  v8 = __ROR8__((v1 + 56) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (((2 * (v7 + v8)) & 0x7B2445B762D5DF7ALL) - (v7 + v8) - 0x3D9222DBB16AEFBELL) ^ 0x367B8C6DD1CB2C25;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0x810A8F269B54C4DALL) - 0x3F7AB86CB2559D93) ^ 0xD5B7057D715A0824;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0xB0DC1E8124B49340) + 0x586E0F40925A49A0) ^ 0x7A1BDB87AA6F703BLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0x83AD960AB14D949ELL) - (v17 + v16) + 0x3E2934FAA75935B0) ^ 0xDB862E4989E4096DLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xFD7C84B47B020068) - (v20 + v19) + 0x141BDA5C27EFFCCLL) ^ 0x39638BACF1C4B715;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xA82620A559D2DA78;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ 0x5F8DEC3EA3980A1BLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  *(v4 + 56) = (((((2 * (v28 + v27)) & 0xFF26BBEE46108042) - (v28 + v27) - 0x7F935DF723084022) ^ 0x41AF6ADA7832F7F6) >> (8 * (v3 & 7u))) ^ (8 * v2);
  v29 = *(*v6 + (((((v4 + 57) & 0xFFFFFFF8) - 103642729) & *v5) & 0xFFFFFFFFFFFFFFF8));
  v30 = (v29 + __ROR8__((v4 + 57) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v32 + v31 - ((2 * (v32 + v31)) & 0xF855D7348273C524) + 0x7C2AEB9A4139E292) ^ 0x6918A9747DC988DBLL, 8);
  v34 = (v32 + v31 - ((2 * (v32 + v31)) & 0xF855D7348273C524) + 0x7C2AEB9A4139E292) ^ 0x6918A9747DC988DBLL ^ __ROR8__(v31, 61);
  v35 = (0xF7522402A0C52DF7 - ((v33 + v34) | 0xF7522402A0C52DF7) + ((v33 + v34) | 0x8ADDBFD5F3AD208)) ^ 0x2AD80F3A670FEB93;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xE5AF1AB32EBD3CDDLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0x59E6AC2340332172) - (v39 + v38) + 0x530CA9EE5FE66F46) ^ 0x94D1601893A3D867;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xA82620A559D2DA78;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  *(v4 + 57) = ((~(v2 >> 4) | 0x39) + (v2 >> 5) - 28) ^ (((__ROR8__((((2 * ((v44 + v43) ^ 0x6E48FF4B84B84CB2)) | 0xD5FF77B0E4B7FC66) - ((v44 + v43) ^ 0x6E48FF4B84B84CB2) - 0x6AFFBBD8725BFE33) ^ 0x5B3AA8AD557BB89ALL, 8) + ((((2 * ((v44 + v43) ^ 0x6E48FF4B84B84CB2)) | 0xD5FF77B0E4B7FC66) - ((v44 + v43) ^ 0x6E48FF4B84B84CB2) - 0x6AFFBBD8725BFE33) ^ 0x5B3AA8AD557BB89ALL ^ __ROR8__(v43, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v4 + 57) & 7))) ^ 0xE3;
  v45 = STACK[0xC348];
  v46 = STACK[0xC348];
  v47 = *(STACK[0xC348] + 68);
  v48 = *(*v6 + ((((((2 * ((v45 + 58) & 0xFFFFFFF8)) & 0x697929A0) + ((v45 + 58) & 0xFFFFFFF8 ^ 0x34BC94D7)) & 0xFFFFFFF8) - 988416832) & *v5));
  v49 = __ROR8__((STACK[0xC348] + 58) & 0xFFFFFFFFFFFFFFF8, 8);
  v50 = (((v49 + v48) ^ 0x842E2058189B2D58) - ((2 * ((v49 + v48) ^ 0x842E2058189B2D58)) & 0x2F5C62F77BE4ECFELL) + 0x17AE317BBDF2767FLL) ^ 0x6796406A3A376740;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x153242EE3CF06A49;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v54 + v53 - ((2 * (v54 + v53)) & 0xF41E364C4EEEF66CLL) - 0x5F0E4D9D88884CALL) ^ 0xD87ACFE11F4242ADLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xE5AF1AB32EBD3CDDLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((0x12F1A8A5114B8E5 - ((v59 + v58) | 0x12F1A8A5114B8E5) + ((v59 + v58) | 0xFED0E575AEEB471ALL)) ^ 0x390D2C8362AEF03BLL, 8);
  v61 = (0x12F1A8A5114B8E5 - ((v59 + v58) | 0x12F1A8A5114B8E5) + ((v59 + v58) | 0xFED0E575AEEB471ALL)) ^ 0x390D2C8362AEF03BLL ^ __ROR8__(v58, 61);
  v62 = (v60 + v61 - ((2 * (v60 + v61)) & 0x9422FDF262F30068) - 0x35EE8106CE867FCCLL) ^ 0x62375E5C68AB5A4CLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x5F8DEC3EA3980A1BLL;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  *(v45 + 58) = ((v47 >> 13) - ((v47 >> 12) & 0xF0) - 8) ^ (((0x63BFC91373BCB98BLL - ((v66 + v65) ^ 0xF3C7E595FCA8B55ELL | 0x63BFC91373BCB98BLL) + ((v66 + v65) ^ 0xF3C7E595FCA8B55ELL | 0x9C4036EC8C434674)) ^ 0xAE441BABD42EBB02) >> (8 * ((v45 + 58) & 7))) ^ 0xF8;
  v67 = *(*v6 + (((((v45 + 59) & 0xFFFFFFF8) - 103642729) & *v5) & 0xFFFFFFFFFFFFFFF8));
  v68 = (v67 + __ROR8__((v45 + 59) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v69 = __ROR8__(v68, 8);
  v70 = v68 ^ __ROR8__(v67, 61);
  v71 = (v69 + v70) ^ 0x153242EE3CF06A49;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x2275D4C73835399BLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__((((2 * (v75 + v74)) & 0xBD031AC5720DFCALL) - (v75 + v74) + 0x7A17E729D46F901ALL) ^ 0x9FB8FD9AFAD2ACC7, 8);
  v77 = (((2 * (v75 + v74)) & 0xBD031AC5720DFCALL) - (v75 + v74) + 0x7A17E729D46F901ALL) ^ 0x9FB8FD9AFAD2ACC7 ^ __ROR8__(v74, 61);
  v78 = (v76 + v77) ^ 0xC7DDC9F6CC45B721;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((2 * (v80 + v79)) | 0x978C5B09C4B3464ELL) - (v80 + v79) + 0x3439D27B1DA65CD9) ^ 0x63E00D21BB8B795FLL;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x5F8DEC3EA3980A1BLL;
  v84 = __ROR8__(v83, 8);
  v85 = __ROR8__(v82, 61);
  *(v45 + 59) = ((v47 >> 21) - ((v47 >> 20) & 0xC0) + 96) ^ (((((2 * (v84 + (v83 ^ v85))) & 0x6C6A07EE33C0704) - (v84 + (v83 ^ v85)) + 0x7C9CAFC08E61FC7DLL) ^ 0xBD5F67122AA4B455) >> (8 * ((v45 + 59) & 7))) ^ 0x60;
  LODWORD(v45) = *(v46 + 64);
  HIDWORD(v85) = v45;
  LODWORD(v85) = *(v46 + 68);
  LOBYTE(v43) = (v85 >> 29) + (~(2 * (v85 >> 29)) | 0x9F);
  v86 = *(*v6 + ((*v5 & (((v46 + 60) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v87 = (v86 + __ROR8__((v46 + 60) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x153242EE3CF06A49;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = __ROR8__((v91 + v90 - ((2 * (v91 + v90)) & 0xF7CCA7D7B48C7290) - 0x419AC1425B9C6B8) ^ 0xD993872CE27300D3, 8);
  v93 = (v91 + v90 - ((2 * (v91 + v90)) & 0xF7CCA7D7B48C7290) - 0x419AC1425B9C6B8) ^ 0xD993872CE27300D3 ^ __ROR8__(v90, 61);
  v94 = (0xB20822F82EE1933FLL - ((v92 + v93) | 0xB20822F82EE1933FLL) + ((v92 + v93) | 0x4DF7DD07D11E6CC0)) ^ 0xA858C7B4FFA3501DLL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xC7DDC9F6CC45B721;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (0x305B589913879123 - ((v98 + v97) | 0x305B589913879123) + ((v98 + v97) | 0xCFA4A766EC786EDCLL)) ^ 0x678287C3B5AAB4A4;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (0x43A40A02A25FB863 - ((v101 + v100) | 0x43A40A02A25FB863) + ((v101 + v100) | 0xBC5BF5FD5DA0479CLL)) ^ 0xE3D619C3FE384D87;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  *(v46 + 60) = (v43 + 49) ^ (((((2 * (v104 + v103)) & 0x92CA235E1A0A8104) - (v104 + v103) - 0x496511AF0D054083) ^ 0x77592682563FF755) >> (8 * ((v46 + 60) & 7))) ^ 0x30;
  v105 = *(*v6 + (((((v46 + 61) & 0xFFFFFFF8) - 103642729) & *v5) & 0xFFFFFFFFFFFFFFF8));
  v106 = (v105 + __ROR8__((v46 + 61) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (0x8DF475E438CC0A7ELL - ((v108 + v107) | 0x8DF475E438CC0A7ELL) + ((v108 + v107) | 0x720B8A1BC733F581)) ^ 0x6739C8F5FBC39FC8 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__((0x8DF475E438CC0A7ELL - ((v108 + v107) | 0x8DF475E438CC0A7ELL) + ((v108 + v107) | 0x720B8A1BC733F581)) ^ 0x6739C8F5FBC39FC8, 8) + v109) ^ 0x2275D4C73835399BLL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xE5AF1AB32EBD3CDDLL;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = __ROR8__((((2 * (v114 + v113)) & 0xAAA9BB1BC21E4600) - (v114 + v113) - 0x5554DD8DE10F2301) ^ 0x6D76EB84D2B56BDELL, 8);
  v116 = (((2 * (v114 + v113)) & 0xAAA9BB1BC21E4600) - (v114 + v113) - 0x5554DD8DE10F2301) ^ 0x6D76EB84D2B56BDELL ^ __ROR8__(v113, 61);
  v117 = (v115 + v116 - ((2 * (v115 + v116)) & 0x85571F13D172653ALL) - 0x3D5470761746CD63) ^ 0x6A8DAF2CB16BE8E5;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x5F8DEC3EA3980A1BLL;
  *(v46 + 61) = ((v45 >> 5) - ((v45 >> 4) & 0x9C) - 50) ^ 0xCE ^ (((__ROR8__(v119, 8) + (v119 ^ __ROR8__(v118, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v46 + 61) & 7)));
  v120 = STACK[0xC348];
  LODWORD(v45) = *(STACK[0xC348] + 64);
  v121 = *(*v6 + ((*v5 & (((v120 + 62) & 0x9497BA88 | 0x6B684577) - 103642729 + ((v120 + 62) & 0x6B684570 | 0x9497BA88) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v122 = (__ROR8__((STACK[0xC348] + 62) & 0xFFFFFFFFFFFFFFF8, 8) + v121) ^ 0xF41651499F5E3C67;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x153242EE3CF06A49;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x2275D4C73835399BLL;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) & 0x59D4815965C7DE9ELL) - (v128 + v127) - 0x2CEA40ACB2E3EF50) ^ 0x36BAA5E063A12C6DLL;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0xC7DDC9F6CC45B721;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0xDE31EB2B3E4A5F58) + 0x6F18F5959F252FACLL) ^ 0xC73ED530C6F7F5D4 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__((v133 + v132 - ((2 * (v133 + v132)) & 0xDE31EB2B3E4A5F58) + 0x6F18F5959F252FACLL) ^ 0xC73ED530C6F7F5D4, 8) + v134) ^ 0x5F8DEC3EA3980A1BLL;
  *(v120 + 62) = ((v45 >> 13) - ((v45 >> 12) & 0x3C) - 98) ^ 0x9E ^ (((__ROR8__(v135, 8) + (v135 ^ __ROR8__(v134, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v120 + 62) & 7)));
  v136 = *(*v6 + (((((v120 + 63) & 0xFFFFFFF8) - 103642729) & *v5) & 0xFFFFFFFFFFFFFFF8));
  v137 = __ROR8__((v120 + 63) & 0xFFFFFFFFFFFFFFF8, 8);
  v138 = __ROR8__((v136 + v137 - ((2 * (v136 + v137)) & 0x6853FF74EB8289DCLL) - 0x4BD600458A3EBB12) ^ 0x403FAEF3EA9F7889, 8);
  v139 = (v136 + v137 - ((2 * (v136 + v137)) & 0x6853FF74EB8289DCLL) - 0x4BD600458A3EBB12) ^ 0x403FAEF3EA9F7889 ^ __ROR8__(v136, 61);
  v140 = (((2 * (v138 + v139)) & 0xD903EEA5D00CBF9CLL) - (v138 + v139) - 0x6C81F752E8065FCFLL) ^ 0x864C4A432B09CA78;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x2275D4C73835399BLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xE5AF1AB32EBD3CDDLL;
  v145 = __ROR8__(v144, 8);
  v146 = v144 ^ __ROR8__(v143, 61);
  v147 = (0xE3D6000F7C5FDA01 - ((v145 + v146) | 0xE3D6000F7C5FDA01) + ((v145 + v146) | 0x1C29FFF083A025FELL)) ^ 0xDBF436064FE592DFLL;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xA82620A559D2DA78;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (((2 * (v151 + v150)) & 0xC191C457AF9F84BCLL) - (v151 + v150) - 0x60C8E22BD7CFC25FLL) ^ 0xC0BAF1EA8BA837BALL;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = __ROR8__(v152, 8);
  *(v120 + 63) = ((v45 >> 21) - ((v45 >> 20) & 0xA4) - 46) ^ 0xD2 ^ (((((2 * (v154 + v153)) & 0x62B0168A33D6201ALL) - (v154 + v153) + 0x4EA7F4BAE614EFF2) ^ 0x8F643C6842D1A7DALL) >> (8 * ((v120 + 63) & 7)));
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100700464()
{
  LODWORD(STACK[0x1D4C0]) = v0 + 410706167 * ((((v1 - 240) | 0x5B97A5A3) + (~(v1 - 240) | 0xA4685A5C)) ^ 0xC04889F4) - 14302;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9205)))(v1 - 240);
  return (*(v2 + 8 * (v0 - 11555)))(v3);
}

uint64_t sub_1007004E4(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 51;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100700534()
{
  v1 = STACK[0x57D8];
  STACK[0x8B80] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 741219468) & 0x2C2E5CFD) + 1574)))();
}

uint64_t sub_100700680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x5700]) = LODWORD(STACK[0x5730]) ^ 0x99CA7B8;
  STACK[0x5710] = STACK[0x5770] ^ 0x1172C174;
  v3 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x57A0]));
  STACK[0x57B0] = (LODWORD(STACK[0x57A0]) - 18256);
  return v3(a1, 0x115116E7DC312230, a3, 3265691150);
}

uint64_t sub_100700A70(uint64_t a1, uint64_t a2, int a3)
{
  v3 = STACK[0x51B8] ^ 0x8CCC7AC7;
  v4 = STACK[0x51B8] - 20076;
  STACK[0xBB60] = STACK[0xA440] + 16;
  v5 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * (a3 + v3 + v4 + 23)))();
}

uint64_t sub_100700AF4()
{
  v0 = STACK[0x51B8];
  STACK[0xCBC8] = 0xD38CBDD3ACAFF84ALL;
  return (*(STACK[0x57D8] + 8 * (v0 - 20373)))();
}

uint64_t sub_100700C6C(uint64_t a1)
{
  v3 = v1 ^ 0x4585;
  v4 = v1 - 19833;
  LODWORD(STACK[0xD99C]) = v2;
  v5 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * ((v3 - 1366) ^ v4)))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_100700D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  LODWORD(STACK[0x53D0]) = LODWORD(STACK[0x54A0]) ^ 0x8113373A;
  v7 = STACK[0x5108] & 0xEB7FB274;
  LODWORD(STACK[0x5108]) = STACK[0x50C8] & 0xEB7FB274;
  v8 = LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x50F0]) ^ v5 ^ LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x5130]) ^ v6 ^ v7;
  LODWORD(STACK[0x50F8]) = STACK[0x50D0] & 0xEB7FB274;
  LODWORD(STACK[0x5130]) = v8;
  LODWORD(STACK[0x5308]) = v8 ^ 0xC3B96F2F;
  return (*(STACK[0x57D8] + 8 * a5))();
}

uint64_t sub_100700F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = (STACK[0x57C0] & 2) == 0;
  v7 = STACK[0x5770];
  if ((STACK[0x57C0] & 2) != 0)
  {
    v7 = STACK[0x5750];
  }

  LODWORD(STACK[0x5408]) = v7;
  v8 = STACK[0x55C0];
  if (v6)
  {
    v8 = STACK[0x5580];
  }

  LODWORD(STACK[0x5470]) = v8;
  v9 = STACK[0x56D0];
  if (!v6)
  {
    v9 = STACK[0x55D0];
  }

  LODWORD(STACK[0x5560]) = v9;
  v10 = (STACK[0x5780] & 2) == 0;
  v11 = STACK[0x51C8];
  if ((STACK[0x5780] & 2) == 0)
  {
    v11 = STACK[0x51B0];
  }

  LODWORD(STACK[0x5410]) = v11;
  v12 = STACK[0x5430];
  if (v10)
  {
    v12 = STACK[0x5420];
  }

  LODWORD(STACK[0x5430]) = v12;
  return (*(STACK[0x57D8] + 8 * (a6 - 5368)))();
}

uint64_t sub_1007012EC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W5>, int a4@<W8>)
{
  v9 = (a4 + v8 + ((v8 + v7) >> 16) - ((v8 + v7 + ((v8 + v7) >> 16)) >> 8) - v6) ^ 0xC3EFFA0F;
  v10 = v9 + (v9 >> 8) + ((v9 + (v9 >> 8)) >> 6);
  LODWORD(STACK[0x5118]) = (v10 ^ -v10 ^ ((a1 & (v10 >> 2)) - (a1 & (v10 >> 2) ^ v10))) + (a1 & (v10 >> 2));
  v11 = STACK[0x55F0];
  v12 = a1 & ((LODWORD(STACK[0x5790]) ^ 0x7C98BA77 ^ LODWORD(STACK[0x5740]) ^ v11) >> 2) ^ LODWORD(STACK[0x5790]) ^ 0x7C98BA77 ^ LODWORD(STACK[0x5740]) ^ v11;
  LODWORD(STACK[0x5110]) = v12 - ((2 * v12) & 0x1D30516C) + 244852918;
  v13 = STACK[0x55C0];
  v14 = a1 & ((LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5780]) ^ v13) >> 2) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5780]) ^ v13;
  v15 = v14 - ((2 * v14) & 0x103CF772) - 2011268167;
  v16 = LODWORD(STACK[0x57C0]) + 797749503 - ((2 * LODWORD(STACK[0x57C0])) & 0x5F1961FE);
  v17 = LODWORD(STACK[0x5310]) + 1771067716 - ((2 * LODWORD(STACK[0x5780])) & 0x205FF6AE);
  LODWORD(STACK[0x52F0]) = LODWORD(STACK[0x5510]) ^ 0x7906673C;
  v18 = (v10 ^ 0x46FC31C8) - ((v10 ^ 0x46FC31C8) >> 13) - (((v10 ^ 0x46FC31C8) - ((v10 ^ 0x46FC31C8) >> 13)) >> 4);
  v19 = v18 + 366068626 + ((v18 + 366068626) >> 12) - ((v18 + 366068626 + ((v18 + 366068626) >> 12)) >> 6);
  v20 = LODWORD(STACK[0x5108]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x5710]);
  v21 = (v19 ^ 0x7F70C12F) - ((v19 ^ 0x7F70C12F) >> 10) + (((v19 ^ 0x7F70C12F) - ((v19 ^ 0x7F70C12F) >> 10)) >> 5);
  LODWORD(STACK[0x57A0]) = a1 & (v21 >> 2);
  v22 = (v17 + 2260) ^ v20 ^ v13 ^ a1 & (v13 >> 2);
  LODWORD(STACK[0x57C0]) = v21;
  v23 = (v21 ^ 0xC6BB0CF1) + ((v21 ^ 0xC6BB0CF1) >> 14) + (((v21 ^ 0xC6BB0CF1) + ((v21 ^ 0xC6BB0CF1) >> 14)) >> 4);
  v24 = v23 - 1274243017 + ((v23 - 1274243017) >> 14) + ((v23 - 1274243017 + ((v23 - 1274243017) >> 14)) >> 6);
  v25 = v22 ^ LODWORD(STACK[0x55B0]) ^ v15 ^ a3 ^ LODWORD(STACK[0x55D0]);
  v26 = v24 - 391941237 + ((v24 - 391941237) >> 15) + ((v24 - 391941237 + ((v24 - 391941237) >> 15)) >> 1);
  v27 = v25 ^ LODWORD(STACK[0x5128]) ^ LODWORD(STACK[0x5120]);
  LODWORD(STACK[0x5780]) = v26 >> 2;
  v28 = v26 - ((v26 + 106723516) >> 9) + 106723516 - ((v26 - ((v26 + 106723516) >> 9) + 106723516) >> 5);
  v29 = v28 + 1217341658 + ((v28 + 1217341658) >> 8) + ((v28 + 1217341658 + ((v28 + 1217341658) >> 8)) >> 5);
  v30 = v27 ^ LODWORD(STACK[0x5760]) ^ v4;
  LODWORD(STACK[0x5760]) = a1 & (v11 >> 2);
  v31 = v30 ^ v18 ^ v23 ^ v28 ^ a1 & ((v23 ^ v18 ^ v28) >> 2);
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x52F8]) ^ a1 & ((LODWORD(STACK[0x5750]) ^ v16 ^ LODWORD(STACK[0x5770])) >> 2) ^ ((LODWORD(STACK[0x5750]) ^ v16) - ((2 * (LODWORD(STACK[0x5750]) ^ v16)) & 0xD4EC8DEC) - 361347338) ^ ((a1 & (LODWORD(STACK[0x5720]) >> 2) ^ 0x20303000) + 797749503 - ((2 * (a1 & (LODWORD(STACK[0x5720]) >> 2) ^ 0x20303000)) & 0x5D00600A)) ^ a2 ^ v19 ^ v24 ^ v29 ^ a1 & ((v24 ^ v19 ^ v29) >> 2);
  LODWORD(STACK[0x5128]) = v31;
  LODWORD(STACK[0x52F8]) = v31 ^ 0x86D86925;
  LODWORD(STACK[0x55D0]) = LODWORD(STACK[0x5320]) ^ 0x52;
  v32 = STACK[0x5340];
  LODWORD(STACK[0x55C0]) = ~LODWORD(STACK[0x5340]);
  LODWORD(STACK[0x55B0]) = LODWORD(STACK[0x5348]) ^ 8;
  return (*(STACK[0x57D8] + 8 * v5))(3293798831, v32 & 0xC92075A9, LODWORD(STACK[0x51D0]));
}

uint64_t sub_100701810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v13 = v9 - 1;
  v14 = a1 + a8 + v13;
  v15 = *(*a7 + ((*v11 & ((((v14 & 0xFFFFFFF8) - 808749098) ^ 0x313C82B9) + 2033467019 + ((2 * (v14 & 0xFFFFFFF8) + 529985452) & 0x62790570))) & 0xFFFFFFFFFFFFFFF8));
  v16 = (__ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + v15) ^ a3;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) & a4 ^ 0xC0E0025F025486) + ((v18 + v17) ^ 0xFB37069C20FD0871) - (((v18 + v17) ^ 0xFB37069C20FD0871) & a4)) ^ 0x710E55E498923CB1;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a2;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (((2 * (v22 + v23)) & 0xC57EF661D7A245D4) - (v22 + v23) + 0x1D4084CF142EDD15) ^ 0xFCE17994C57B246FLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xDA604B0C03A2BF99;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a5;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = v29 + v30 - ((2 * (v29 + v30)) & 0x53746843C1FECD94) - 0x5645CBDE1F009936;
  *v14 = *(v12 + v13 + v8) ^ (((__ROR8__(v31 ^ 0x7B4A38C7C01AB564, 8) + (v31 ^ 0x7B4A38C7C01AB564 ^ __ROR8__(v30, 61))) ^ a6) >> (8 * (v14 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (((v13 != 0) | (2 * (v13 != 0))) ^ v10)))();
}

uint64_t sub_100701A34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v12 = (v7 - 1) & 0xF;
  *(a2 + v7) = *(a3 + v7) ^ v12 ^ *(*(v8 + 8 * a4) - 12 + v12) ^ *(*(v8 + 8 * (v5 ^ v10)) - 12 + (v6 ^ v9) + v12) ^ *(v12 + *(v8 + 8 * a5) - 12 + 4) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (((v7 == -31) * v11) ^ v5)))();
}

uint64_t sub_100701BB8@<X0>(unint64_t *a1@<X8>)
{
  *STACK[0xBB50] = -769883916;
  STACK[0xE020] = STACK[0x7718] + v1;
  LODWORD(STACK[0xE028]) = v2;
  v4 = (6 * ((v3 - 8905) ^ 0x493D) + LODWORD(STACK[0xA8FC]) + (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x2D5887C)) & 0x7FFFFFFF ^ 0xC61726DB) - 22613) * (v3 + 1978705062);
  LODWORD(STACK[0x88EC]) = v4;
  STACK[0x7F48] = *a1;
  STACK[0x83A8] = STACK[0xB658] - 0x30BDFED8F32E64E1;
  v5 = STACK[0x7ED8];
  STACK[0x9080] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + 16;
  STACK[0xBB00] = 0;
  return (*(STACK[0x57D8] + 8 * ((15 * ((v4 & 0xFFFFFFFB) != 113)) ^ (v3 - 8905))))();
}

uint64_t sub_100702048()
{
  v3 = *(STACK[0x44F0] + 260) & 1;
  v4 = 1534937323 * ((((v2 - 240) | 0x47204C83D0B65EF0) - ((v2 - 240) & 0x47204C83D0B65EF0)) ^ 0x8A58C4411658A5B7);
  *(v1 + 616) = v4;
  *(v1 + 608) = v4;
  *(v1 + 600) = ((v0 + 1030327151) ^ 0xE2F) - v4;
  *(v1 + 612) = (v0 + 1030327151) ^ v4;
  *(v1 + 624) = v4 + v0 + 1030327151 + 14;
  *(v1 + 604) = v4 + v0 + 1451493860;
  *(v1 + 592) = v3 ^ v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1007021B4@<X0>(uint64_t a1@<X8>)
{
  v6 = a1 + v1;
  v7 = STACK[0x51E8];
  v8 = STACK[0x51F0];
  v9 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v6 & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v10 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (0x897CCD981DB0F678 - ((v10 + v9) | (((v2 - 3320) | 0x8E2u) - 0x76833267E24F0988)) + ((v10 + v9) | 0x76833267E24F00A1) + 2278) ^ 0x8295632E7D113CC6;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v4;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x49051306241EA072) + 0x24828983120F5039) ^ 0x6F75D442A3A69A2;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xE5AF1AB32EBD3CDDLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xC7DDC9F6CC45B721;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xA82620A559D2DA78;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5F8DEC3EA3980A1BLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  LODWORD(STACK[0x5B0C]) = v1;
  *v6 = (((v26 + v25 - ((2 * (v26 + v25)) & 0xCD0C06BD105637C4) - 0x1979FCA177D4E41ELL) ^ 0x2745CB8C2CEE53CALL) >> (8 * (v6 & 7u))) ^ 0x50;
  v27 = a1 + v1 + 1;
  v28 = *(*v8 + ((*v7 & ((v27 & 0xFFFFFFF8 ^ v3) + 1600040017 + ((2 * (v27 & 0xFFFFFFF8)) & 0x34E79B30) + 4010)) & 0xFFFFFFFFFFFFFFF8));
  v29 = (v28 + __ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v5;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v4;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (0x44BC72ACAB9C5B9 - ((v33 + v32) | 0x44BC72ACAB9C5B9) + ((v33 + v32) | 0xFBB438D535463A46)) ^ 0xD9C1EC120D7303DDLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE5AF1AB32EBD3CDDLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xC7DDC9F6CC45B721;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0x2897B6A266D9A627 - ((v40 + v39) | 0x2897B6A266D9A627) + ((v40 + v39) | 0xD768495D992659D8)) ^ 0x7F4E69F8C0F483A0 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__((0x2897B6A266D9A627 - ((v40 + v39) | 0x2897B6A266D9A627) + ((v40 + v39) | 0xD768495D992659D8)) ^ 0x7F4E69F8C0F483A0, 8) + v41) ^ 0x5F8DEC3EA3980A1BLL;
  *v27 = (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v27 & 7u))) ^ 0x10;
  v43 = STACK[0x57D8];
  STACK[0xB1C8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v43 + 8 * (v2 + 4657)))();
}

uint64_t sub_1007025D8()
{
  v5 = v4 - 1;
  *(v2 + v5 + v0) = *(v1 + v5) - 2 * (*(v1 + v5) & 0xF) + 15;
  return (*(STACK[0x57D8] + 8 * (((((v3 ^ 0x49) + 1) ^ (v5 == 0)) & 1 | (32 * ((((v3 ^ 0x49) + 1) ^ (v5 == 0)) & 1))) ^ v3)))();
}

uint64_t sub_100702668()
{
  v1 = STACK[0x63A8];
  v2 = *(STACK[0x63A8] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDBEC]) = v2 + 8;
  v3 = *(v1 - 0x1883660EE814440ELL) + 24801016;
  v2 += 24801024;
  v4 = v2 < (((v0 ^ 0x6D46) - 20543) ^ 0x7EC3EB63u);
  v5 = v3 < v2;
  if (v4 != v3 < 0x7EC3E374)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x9F08] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDBF0]) = v8;
  return (*(STACK[0x57D8] + 8 * ((70 * ((v7 & 1) == 0)) | v0)))();
}

uint64_t sub_100702754()
{
  v3 = v0 + 12577;
  v4 = STACK[0xC554];
  v5 = STACK[0xA790];
  v6 = STACK[0x5F48];
  v7 = STACK[0xCB20];
  v8 = 1089234077 * ((-2 - (((v2 - 240) ^ 0x4202A00 | 0x3B9FC4B6) + ((v2 - 240) ^ 0x28944030 | 0xC4603B49))) ^ 0x331649B7);
  STACK[0x1D4F0] = v1;
  STACK[0x1D4E8] = v5;
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((-2 - (((v2 + 16) | 0xB6) + ((v2 + 16) ^ 0x30 | 0x49))) ^ 0xB7);
  LODWORD(STACK[0x1D4C0]) = v8 + v0 + 16911;
  STACK[0x1D4C8] = v7;
  LODWORD(STACK[0x1D4E0]) = 1668369943 - v8 + ((v0 - 772211467) & 0x2E075B5F ^ 0x43D7C109) * v4;
  STACK[0x1D4D8] = v6;
  v9 = v0 + 31797;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * v9))(v2 - 240);
  return (*(v10 + 8 * v3))(v11);
}

uint64_t sub_100702878@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X5>, int a3@<W8>)
{
  v3 = (a3 - 120) | 0x74;
  v4 = (*(STACK[0x53F8] + 4737) ^ *a2);
  v5 = *(STACK[0x57D8] + 8 * a3);
  LODWORD(STACK[0x5570]) = v3;
  STACK[0x5580] = (v3 + 2062392961);
  return v5(a1, v4);
}

uint64_t sub_1007028D8()
{
  v3 = v0 + 3200;
  v4 = v1[9] ^ 0x47;
  LODWORD(STACK[0x57B0]) = v2;
  v5 = *(&off_101353600 + (v2 ^ 0x9AD3FC58)) - 8;
  LODWORD(v4) = v5[v4];
  v6 = v5[*v1 ^ 0x32];
  LODWORD(STACK[0x57C0]) = v2 ^ v3;
  v7 = v5[v1[13] ^ 0xE6];
  v8 = v5;
  v9 = *(&off_101353600 + v2 + 1697385334) - 8;
  v10 = *(&off_101353600 + v2 + 1697385423) - 4;
  v11 = v10[v1[11] ^ 0x6ELL];
  v12 = ((v9[v1[14] ^ 0xC8] << 8) ^ 0x5AD32312) & ((v7 << 16) ^ 0xFBF3FFD6) | (v7 << 16) & 0x2C0000;
  LODWORD(v4) = (v11 ^ 0xFFFF000F) & ((v4 << 16) ^ 0xC4B6001C) | v11 & 0xFFFFFFE3;
  v13 = v9;
  v14 = v9[v1[7] ^ 0xFCLL];
  v15 = v9[v1[6] ^ 0xD3] << 8;
  v16 = *(&off_101353600 + (v2 ^ 0x9AD3F820)) - 8;
  v17 = (((v15 - 3276726) & ((v9[v1[4] ^ 0x7ALL] << 24) ^ 0x3BCEC44A) | v15 & 0x3B00) ^ 0xA57157E1) & (v14 ^ 0xFFFFFFC1);
  LODWORD(v9) = (v16[v1[8] ^ 0xF9] ^ v1[8]) << 24;
  v18 = v1[12];
  v19 = v5[v1[10] ^ 0xBBLL] << 8;
  v20 = v16[v18 ^ 0x1D];
  v21 = (v9 ^ 0x44FF50FF) & (v4 ^ 0x3CA450E6);
  v22 = STACK[0xD3F8];
  v23 = *(STACK[0xD3F8] + 3);
  STACK[0x5440] = v23;
  LODWORD(v4) = v20 ^ v18;
  v24 = v10[v23 ^ 0x37];
  v25 = *(v22 + 2);
  STACK[0x5650] = v25;
  v26 = *(v22 + 15);
  STACK[0x55E0] = v26;
  v27 = *(v22 + 1);
  STACK[0x55B0] = 2 * v22;
  v28 = *(v22 + 5);
  STACK[0x5450] = v28;
  STACK[0x5660] = v22 + 5;
  LODWORD(v23) = v13[v28 ^ 0x3D];
  LODWORD(STACK[0x57A0]) = (v9 & 0x7000000 ^ 0xCE8F3C3F ^ v21) & (v19 ^ 0xFFFF98FF);
  LODWORD(v5) = v23 << 16;
  v29 = v13;
  LODWORD(v18) = ((v23 << 16) ^ 0xFFEDFFFF) & (v17 ^ (v14 & 0x13205154 | 0xECDFAEA8));
  v30 = v13[v25 ^ 0xBD] << 8;
  LODWORD(v23) = (v30 ^ 0xFF280CFF) & (((v24 ^ 0xFF616011) & (((v6 ^ 0x9D) << ((v2 ^ v3) - 55)) ^ 0xBC6160D9) | v24 & 0x26) ^ 0xAB49ACDA);
  LODWORD(v28) = v30 & 0x33333333;
  LOBYTE(v30) = v13[v26 ^ 0xEC];
  v31 = (v30 | 0xFFFFFF00) & (v12 & 0x482F4300 ^ 0x126A6D0C ^ ((v4 << 24) ^ 0xDD0BC68) & (v12 ^ 0xA50A3EE9));
  STACK[0x5610] = v27;
  v32 = (v22 + 630859008 - ((2 * v22) & 0x4B344AFE) + 127) & 0xFFFFFFF8;
  v33 = (((v32 ^ 0x4F93E462) - 1862736962) ^ ((v32 ^ 0xA4C5EBB1) + 2075061359) ^ ((v32 ^ 0xCECC2AAB) + 296168821)) + 1311565052;
  v34 = *STACK[0x51E8];
  LODWORD(v13) = v33 ^ ((v33 ^ 0xA801BE65) + 414531480) ^ ((v33 ^ 0xB24F6946) + 50063541) ^ ((v33 ^ 0xAA7656D1) + 448976676) ^ ((v33 ^ 0xFF73FFFF) + 1338473998) ^ 0x4F4B7E08;
  v35 = (v16[v27 ^ 0x6E] ^ v27) << 16;
  v36 = (v35 ^ 0xFF2AFFFF) & (v28 ^ 0x96BAB523 ^ v23);
  v37 = *STACK[0x51F0];
  STACK[0x5378] = v34 & 0xFFFFFFF8;
  *(&v38 + 1) = v32 ^ 0x78;
  *&v38 = (v22 - 0x670D7C1FDA65DB00 - ((2 * v22) & 0x31E507C04B344AFELL) + 127) ^ 0x98F283E0259A2500;
  v39 = v37;
  v40 = *(v37 + (v34 & 0xFFFFFFF8 & v13)) + (v38 >> 8);
  *&v38 = __ROR8__(*(v37 + (v34 & 0xFFFFFFF8 & v13)), 61);
  v41 = (v38 - ((2 * v38) & 0x5F0A1C7EC261F376) + 0x2F850E3F6130F9BBLL) ^ v40;
  *&v38 = __ROR8__(v40 ^ 0x4C72612F90B15516, 8);
  v42 = (((v38 ^ 0x52F8FCE9D320C5C7) + 0x73C81711BAD6B278) ^ ((v38 ^ 0xD6F24FDA2EA2F400) - 0x83D5BDDB8AB7C4FLL) ^ ((v38 ^ 0xF5B2D7039B8DDEAELL) - 0x2B7DC3040D8456E1)) + 0x285BCC0C0C0B7B6BLL + (((v41 ^ 0xB6226F66176431ACLL) - 0x15556BC4F50FE035) ^ ((v41 ^ 0x34B84757B121297BLL) + 0x6830BC0AACB5071ELL) ^ ((v41 ^ 0x59097747582BDD0BLL) + 0x5818C1A45BFF36ELL));
  v43 = v42 ^ __ROR8__(v41 ^ 0xA37704A2E26BD199, 61);
  *&v38 = __ROR8__(v42 ^ 0x350E0D4C8D2C01E9, 8);
  v44 = ((((v43 ^ 0xCCC094384587C9EELL) + 0x21D0E9DF62A65197) ^ ((v43 ^ 0x9ABD47CBD398D13CLL) + 0x77AD3A2CF4B94945) ^ ((v43 ^ 0x846D4FBD4AC7D0B0) + 0x697D325A6DE648C9)) + 0x21B0487E88D1B9EELL + (((v38 ^ 0xED9D377CB3318B12) - 0x2D0C211B954B5D70) ^ ((v38 ^ 0x14AB16D0B6E14AF1) + 0x2BC5FF486F64636DLL) ^ ((v38 ^ 0x59161DE3A7611D88) + 0x6678F47B7EE43416))) ^ 0x1FF47AEA4C7B75ABLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  *&v38 = __ROR8__(v44, 8);
  v46 = (((v45 ^ 0xEFBA8AE4B3C32F68) - 0x2133DBDC78597E68) ^ ((v45 ^ 0x8089A5FCE100D05CLL) - 0x4E00F4C42A9A815CLL) ^ ((v45 ^ 0xC2366343C04BF012) - 0xCBF327B0BD1A112)) + (((v38 ^ 0x16D2DBBCDD403C54) + 0x1E6DF14D29B476D1) ^ ((v38 ^ 0x9A2F2DCA6AFC326ALL) - 0x6D6FF8C461F78711) ^ ((v38 ^ 0xBCC077D89AC84072) - 0x4B80A2D691C3F509)) + 0x2B0972037F92595DLL;
  v47 = v46 ^ __ROR8__(v45 ^ 0xCE895138CB9A5100, 61);
  *&v38 = __ROR8__(v46 ^ 0xCFCEEBDCEB98E553, 8);
  v48 = ((((v47 ^ 0x5F27D042920C4843) - 0x181222CDE49841) ^ ((v47 ^ 0xF9F19296B6D15963) + 0x5931AF0916C6769FLL) ^ ((v47 ^ 0x5F19B37DC2F2DCCELL) - 0x26711D9D1A0CCCLL)) + 0x2D74F4019A3982BDLL + (((v38 ^ 0x3C5EA0413C888176) - 0x34F00187B33FC07ELL) ^ ((v38 ^ 0x96442D959C901D32) + 0x611573ACECD8A3C6) ^ ((v38 ^ 0x2430EC25CFDDB99DLL) - 0x2C9E4DE3406AF895))) ^ 0x4FBE66F5DD15B6C1;
  *&v38 = __ROR8__(v48, 8);
  v49 = v48 ^ __ROR8__(v47 ^ 0x5F3FC2605FE8D002, 61);
  v50 = v49 ^ 0xD3CF0504681EAD5FLL;
  v51 = ((((v38 ^ 0xC767C66A23690749) + 0x5B1D3FC0D3808A77) ^ ((v38 ^ 0x6E9B5091D1F2D85) - 0x656CB35C12095F45) ^ ((v38 ^ 0x210610CC3D677ACDLL) - 0x428316993271080DLL)) + (((v49 ^ 0x64A46835231145C0) + 0x489492CEB4F01761) ^ ((v49 ^ 0x374458600A74F8E8) + 0x1B74A29B9D95AA49) ^ ((v49 ^ 0xEC02011BF60D53ADLL) - 0x3FCD041F9E13FEF2)) - 0x10C565BB3C829965) ^ 0xA82620A559D2DA78;
  *&v38 = __ROR8__(v50, 61);
  STACK[0x5368] = *(v22 + 8);
  STACK[0x5530] = v22 + 8;
  v52 = 2 * (v22 + 8);
  STACK[0x5590] = v52;
  v53 = v22 - 0x1A33354C623FC8F8 - (v52 & 0xCB9995673B806E90) + 72;
  LODWORD(v37) = (((v53 & 0xFFFFFFF8 ^ 0xF537763D) - 825041503) ^ ((v53 & 0xFFFFFFF8 ^ 0xFFCE5748) - 1003750186) ^ ((v53 & 0xFFFFFFF8 ^ 0x9739163D) - 1394819679)) + 1619720812;
  v54 = (v37 ^ 0xF215E905) & (2 * (v37 & 0xF321F250)) ^ v37 & 0xF321F250;
  LODWORD(v25) = ((2 * (v37 ^ 0xB0556D85)) ^ 0x86E93FA0) & (v37 ^ 0xB0556D85) ^ (2 * (v37 ^ 0xB0556D85)) & 0x43749FD0;
  v55 = (v25 ^ 0x101B80) & (4 * v54) ^ v54;
  LODWORD(v25) = ((4 * (v25 ^ 0x41148050)) ^ 0xDD27F40) & (v25 ^ 0x41148050) ^ (4 * (v25 ^ 0x41148050)) & 0x43749FD0;
  v56 = (v25 ^ 0x1501F40) & (16 * v55) ^ v55;
  LODWORD(v25) = ((16 * (v25 ^ 0x42248090)) ^ 0x3749FD00) & (v25 ^ 0x42248090) ^ (16 * (v25 ^ 0x42248090)) & 0x43749FD0;
  v57 = v56 ^ 0x43749FD0 ^ (v25 ^ 0x3409D00) & (v56 << 8);
  v58 = (v51 - ((2 * v51) & 0x9AC752B5B1D977ECLL) + 0x4D63A95AD8ECBBF6) ^ v38 ^ 0x2C0A0B0F635EA525;
  v59 = (v58 + __ROR8__(v51, 8)) ^ 0x5F8DEC3EA3980A1BLL;
  v60 = (v59 ^ __ROR8__(v58, 61)) + __ROR8__(v59, 8);
  LOBYTE(v58) = 8 * (v22 & 7);
  STACK[0x5278] = v22;
  v61 = ((v60 ^ 0xC1C3C8D2A4C54828) >> v58) - ((2 * ((v60 ^ 0xC1C3C8D2A4C54828) >> v58)) & 0x42EAED1E45343CC8);
  STACK[0x53C8] = v34;
  *(&v38 + 1) = v53 & 0xFFFFFFF8 ^ 0x48;
  *&v38 = v53 ^ 0xE5CCCAB39DC03700;
  STACK[0x52A8] = v39;
  v62 = *(v39 + (v34 & (v37 ^ (2 * ((v57 << 16) & 0x43740000 ^ v57 ^ ((v57 << 16) ^ 0x1FD00000) & (((v25 ^ 0x403402D0) << 8) & 0x43740000 ^ 0x3600000 ^ (((v25 ^ 0x403402D0) << 8) ^ 0x749F0000) & (v25 ^ 0x403402D0)))) ^ 0xBB85F640) & 0xFFFFFFF8 ^ v34 & 0xC8ED3BB0)) + (v38 >> 8);
  *&v38 = __ROR8__(*(v39 + (v34 & (v37 ^ (2 * ((v57 << 16) & 0x43740000 ^ v57 ^ ((v57 << 16) ^ 0x1FD00000) & (((v25 ^ 0x403402D0) << 8) & 0x43740000 ^ 0x3600000 ^ (((v25 ^ 0x403402D0) << 8) ^ 0x749F0000) & (v25 ^ 0x403402D0)))) ^ 0xBB85F640) & 0xFFFFFFF8 ^ v34 & 0xC8ED3BB0)), 61);
  v63 = (v38 - ((2 * v38) & 0x7AAAB5FAE3025D2ALL) - 0x42AAA5028E7ED16BLL) ^ v62;
  v64 = (((((v62 << 56) ^ 0x8EA4DEDAFB2E1DFCLL) + 0x5133E1DDE558C94) ^ (((v62 << 56) ^ 0x590956282A36E0B0) - 0x2D414910F0B28E20) ^ (((v62 << 56) ^ 0xB0AD88F2D118FD4CLL) + 0x3B1A6835F4636C24)) + ((((v62 >> 8) ^ 0x7AF978931CEEC51BLL) - 0x69BA5FB3B11A84ADLL) ^ (((v62 >> 8) ^ 0xCEE96EF4C4D9D118) + 0x2255B62B96D26F52) ^ (((v62 >> 8) ^ 0xB4E4003691A84A3FLL) + 0x5858D8E9C3A3F477)) - 0x4A6F629784F5ABFALL + (((v63 ^ 0xC45669BA8CF625E5) - 0x3842EB3DE33F2FBLL) ^ ((v63 ^ 0xD33CE3686C6923CDLL) - 0x14EEA4613EACF4D3) ^ ((v63 ^ 0x5E2981660E4014DALL) + 0x66043990A37A3C3CLL))) ^ 0xFFC88AE7A38093D4;
  v65 = __ROR8__(v64, 8);
  v66 = v64 ^ __ROR8__(v63 ^ 0xC7D2470952C5D71ELL, 61);
  v67 = ((((v65 ^ 0xD84F06FA73AEB52ELL) - 0x6D79A4FE28A437C3) ^ ((v65 ^ 0xF34F93A44F778FB4) - 0x467931A0147D0D59) ^ ((v65 ^ 0xB6EA6F9635464A63) - 0x3DCCD926E4CC88ELL)) + (((v66 ^ 0x33244FA84DB8C69ALL) + 0x48004902AF5981A8) ^ ((v66 ^ 0xF5025D539B4B1DD5) - 0x71D9A4068655A517) ^ ((v66 ^ 0x5856BF1FA9550DB6) + 0x2372B9B54BB44A8CLL)) + 0x4387AD7DB54E604FLL) ^ 0xC9A6D08767CF407FLL;
  v68 = v67 ^ __ROR8__(v66 ^ 0x84DBF9551D1EB8C2, 61);
  *&v38 = __ROR8__(v67, 8);
  v69 = ((((v38 ^ 0x28E4D292F453C826) - 0xC1BF51E2DDB5E3DLL) ^ ((v38 ^ 0xA9DE457185B16818) + 0x72DE9D02A3C601FDLL) ^ ((v38 ^ 0x65D144E731BD5A47) - 0x412E636BE835CC5CLL)) + (((v68 ^ 0x12AEFFD37F9FF30) + 0x702AB2C1AC6A8BA0) ^ ((v68 ^ 0xAB6094B921156458) - 0x259F367A4579EF08) ^ ((v68 ^ 0x94C3DA8F5CD59354) - 0x1A3C784C38B91804)) + 0x708AF790C82CEFCELL) ^ 0x6EAF8DBE9AFF074CLL;
  v70 = v69 ^ __ROR8__(v68 ^ 0x8EFFA2C3646C8B50, 61);
  *&v38 = __ROR8__(v69, 8);
  v71 = (((v70 ^ 0xBAB0C44D429E604ELL) + 0x103AE72488F53D70) ^ ((v70 ^ 0x8781D09C89F37862) + 0x2D0BF3F543982544) ^ ((v70 ^ 0x35819B9D0D8338D8) - 0x60F4470B38179A06)) + (((v38 ^ 0xB81B04D2AB0CD89ELL) + 0x799A431257A20933) ^ ((v38 ^ 0xBAADA99C70E0B679) + 0x7B2CEE5C8C4E67D6) ^ ((v38 ^ 0x933DADD9D6582CDCLL) + 0x52BCEA192AF6FD71)) + 0xDBB0C83025FEE92;
  v72 = v71 ^ __ROR8__(v70 ^ 0x5575DC963594A2DELL, 61);
  *&v38 = __ROR8__(v71 ^ 0xC7DDC9F6CC45B721, 8);
  v73 = ((2 * v38) & 0xFFF4FF3EFE7FFFFCLL) + (v38 ^ 0x7FFA7F9F7F3FFFFELL) + (((v72 ^ 0x8D63893AD1111FFFLL) - 0x5C841685F4FB00D8) ^ ((v72 ^ 0xAE24F16E5FC6565BLL) - 0x7FC36ED17A2C497CLL) ^ ((v72 ^ 0xAB02F75D946EFD7) + 0x24A84F3503530F10));
  v74 = (v73 - ((2 * (v73 + 0x781648FEF33BB956)) & 0x924D462712E649B6) - 0x3EC313ED835121CFLL) ^ __ROR8__(v72 ^ 0xD1E79FBF25EA1F27, 61) ^ 0x2186C745437C3404;
  v75 = (v74 + __ROR8__((v73 + 0x781648FEF33BB956) ^ 0xA82620A559D2DA78, 8)) ^ 0x5F8DEC3EA3980A1BLL;
  v76 = ((v75 ^ __ROR8__(v74, 61)) + __ROR8__(v75, 8)) ^ 0xC1C3C8D2A4C54828;
  v77 = (v76 >> v58) - ((2 * (v76 >> v58)) & 0xA448B70EE7EFA918);
  STACK[0x5470] = v22 + 16;
  v78 = 2 * (v22 + 16);
  STACK[0x5460] = v78;
  v79 = v22 + 16 - (v78 & 0xC1C0C1CD5C4D8C8) + 0x60E060E6AE26C64;
  LODWORD(v75) = (((v79 & 0xFFFFFFF8 ^ 0x8F799AB8) + 864512648) ^ ((v79 & 0xFFFFFFF8 ^ 0x232580DB) - 1613008667) ^ ((v79 & 0xFFFFFFF8 ^ 0xC6BE7603) + 2051049021)) + 1260118023;
  LODWORD(v27) = v75 ^ ((v75 ^ 0x1C5BE55B) - 993925003) ^ ((v75 ^ 0x50DD8932) - 2008579042) ^ ((v75 ^ 0x8C1C6742) + 1418095214) ^ ((v75 ^ 0xE7FFF9FB) + 1063646421) ^ 0x2765F2D0;
  LOBYTE(v75) = v58 ^ 0x3E;
  v80 = 4 * ((v76 << (v58 ^ 0x3Eu)) - ((2 * (v76 << (v58 ^ 0x3Eu))) & 0x37D1AA06ED8B080)) - 0x7905CABF224E9E58;
  v81 = ((v80 ^ 0xD057F3DCE98BF7B9) + 0x730B13107F85699CLL) ^ ((v80 ^ 0x3A74493A5D380BD5) - 0x66D7560934C96A08) ^ ((v80 ^ 0x6CD98FA669029DC4) - 0x307A909500F3FC19);
  LODWORD(v80) = v61 + 580525668;
  v82 = ((((v61 - 0x5E8A8970DD65E19CLL) ^ 0xA1589A690B362568) + 0x5EA76596F4C9DA98) ^ (((v61 - 0x5E8A8970DD65E19CLL) ^ 0x9DDFB87745B38C15) + 0x62204788BA4C73EBLL) ^ (((v61 - 0x5E8A8970DD65E19CLL) ^ 0x9DF254916C1FB719) + 0x620DAB6E93E048E7)) + 0x7BCEA102D6DA1ED9 + v81;
  v83 = ((((v79 >> 8) ^ 0x9E2D18E736170C59) - 0x118F568220862715) ^ (((v79 >> 8) ^ 0x8E17F7C3F34CE9E7) - 0x1B5B9A6E5DDC2ABLL) ^ (((v79 >> 8) ^ 0x103CE122CB3107D2) + 0x606150B8225FD362)) + (((((v79 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0xAEEF3C264917C641) - 0x4416CAE1B16F8F66) ^ ((((v79 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0xF4711290656A34F1) - 0x1E88E4579D127DD6) ^ ((((v79 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0x3A9E2EB62C7DF2B0) + 0x2F98278E2BFA4469));
  v84 = *(v39 + (v34 & 0xFFFFFFF8 & v27));
  v85 = v83 + 0x1A9E372B11741247 + v84;
  *&v38 = __ROR8__(v84, 61);
  v86 = (v38 - ((2 * v38) & 0x8928AE58DE965720) - 0x3B6BA8D390B4D470) ^ v85;
  *&v38 = __ROR8__(v85 ^ 0x21BD3CA750DAC0AELL, 8);
  v87 = (((v38 ^ 0xD07705E81611EDF1) - 0x51D7212A1FB69281) ^ ((v38 ^ 0xE773D96F9A15584ELL) - 0x66D3FDAD93B2273ELL) ^ ((v38 ^ 0xFED177EA62CB3143) - 0x7F7153286B6C4E33)) + 0x616D569633B94C34 + (((v86 ^ 0x2351CDA72F948779) - 0xB240D2493D1C026) ^ ((v86 ^ 0x329DFEAE55A3C74ELL) - 0x1AE83E2DE9E68011) ^ ((v86 ^ 0x214E356C8A2257C0) - 0x93BF5EF3667109FLL));
  *&v38 = __ROR8__(v86 ^ 0x2875C083BC45475FLL, 61);
  v88 = v87 ^ v38;
  v89 = v87 ^ ~v38;
  *&v38 = __ROR8__(v87 ^ 0xF931856DD1F19B5, 8);
  v90 = ((v38 ^ 0xAD7FD0F039B759B0) + 0x4B0AF7CE9212BFC3) ^ ((v38 ^ 0xB28FB25A5372290ELL) + 0x54FA9564F8D7CF7DLL) ^ ((v38 ^ 0xE3EAC3F0D2249FCDLL) + 0x59FE4CE798179C0);
  *(&v38 + 1) = v88 ^ 0x15E154A15431359BLL;
  *&v38 = v89;
  v91 = (((v88 ^ 0x8ADBA8777E2D960BLL) - 0x1F3AFCD62A1CA390) ^ ((v88 ^ 0x346FFE0BB8E45586) + 0x5E715555132A9FE3) ^ ((v88 ^ 0x6C3823A098BB2C84) + 0x62688FE3375E6E1)) + 0x2CFD9B18F6FFD190 + v90;
  v92 = v91 ^ (v38 >> 61);
  *&v38 = __ROR8__(v91 ^ 0xCCC7504FB23EF5A9, 8);
  v93 = (((v92 ^ 0x85ED623CBC83A666) + 0x47AF208398346FF0) ^ ((v92 ^ 0xFEC80D4FE7CD012FLL) + 0x3C8A4FF0C37AC8A7) ^ ((v92 ^ 0x6239B05C31654A43) - 0x5F840D1CEA2D7C35)) - 0x1CD71DD8D0BCDE20 + (((v38 ^ 0xEA13A611DE869048) - 0x667A6B222BD3DDE0) ^ ((v38 ^ 0x50A245519E750B4) + 0x769C1699134DE2E4) ^ ((v38 ^ 0xDDF730C04FEBCB30) - 0x519EFDF3BABE8698));
  v94 = v93 ^ __ROR8__(v92 ^ 0x3DBDBD40DB483676, 61);
  *&v38 = __ROR8__(v93 ^ 0xB176C5C342AB505, 8);
  v95 = (((v94 ^ 0xA3AC6EE88D6F95FBLL) - 0x6E3CBCC99BBD161CLL) ^ ((v94 ^ 0x8094837BD5DA84EBLL) - 0x4D04515AC308070CLL) ^ ((v94 ^ 0xE39CE45DFD16F62CLL) - 0x2E0C367CEBC475CBLL)) - 0x4C85CF3B443D67BBLL + (((v38 ^ 0x43AB453591145003) - 0x3D00A996765FF4E0) ^ ((v38 ^ 0xACAADF83DB9DC1B3) + 0x2DFECCDFC3299AB0) ^ ((v38 ^ 0x37EF22C0A5930639) - 0x4944CE6342D8A2DALL));
  v96 = v95 ^ __ROR8__(v94 ^ 0xCD90D22116D283E7, 61) ^ 0xAE7B168B57CE91F9;
  v97 = (__ROR8__(v95 ^ 0xC7DDC9F6CC45B721, 8) + v96) ^ 0xA82620A559D2DA78;
  *&v38 = __ROR8__(v96, 61);
  v98 = v97 ^ v38;
  v99 = (v97 ^ v38) + (v97 << 56) + (v97 >> 8);
  v100 = v99 ^ __ROR8__(v98, 61);
  *&v38 = __ROR8__(v99 ^ 0x5F8DEC3EA3980A1BLL, 8);
  v101 = 4 * ((((v38 + (v100 ^ 0x1F8DEC3EA3980A1BLL)) ^ 0x1C3C8D2A4C54828) << v75) - ((2 * (((v38 + (v100 ^ 0x1F8DEC3EA3980A1BLL)) ^ 0x1C3C8D2A4C54828) << v75)) & 0x36F919EFD48B3900)) - 0x120DCC2056E98D64;
  v102 = ((v101 ^ 0xD2FADE33A1673952) + 0x2E6251EAEE0513C8) ^ ((v101 ^ 0xFACBCBC925231B9BLL) + 0x65344106A41310FLL) ^ ((v101 ^ 0xC5C326252D525055) + 0x395BA9FC62307AC1);
  LODWORD(v101) = v77 + 1945621644;
  v103 = v102 - 0x3F46607F727C837ELL + ((((v77 - 0x2DDBA4788C082B74) ^ 0x61F03ECA542F393ALL) - 0x61F03ECA542F393ALL) ^ (((v77 - 0x2DDBA4788C082B74) ^ 0xCDD981E0621B1D97) + 0x32267E1F9DE4E269) ^ (((v77 - 0x2DDBA4788C082B74) ^ 0x7E0DE4AD45C3F021) - 0x7E0DE4AD45C3F021));
  LODWORD(v102) = (((v82 - ((2 * v82) & 0x234C) - 28250) >> 8) ^ v16[((v82 - ((2 * v82) & 0x234C) - 28250) >> 8) ^ 0x4DLL]) << 16;
  LODWORD(v80) = (v102 ^ 0xFFF8FFFF) & (((v80 ^ v16[v80 ^ 0x1ELL]) << 24) ^ 0x8759B170) | v102 & 0xA60000;
  LODWORD(v102) = *(v8 + (BYTE2(v82) ^ 0x81)) << 8;
  LODWORD(v100) = v10[BYTE3(v82) ^ 0x81];
  LODWORD(v102) = v36 ^ v35 & 0x6D0000 ^ v100 & 0xFFFFFFE3 ^ ((v102 & 0x6A00 | (v80 ^ 0x84A02481) & (v102 ^ 0xFFFF5BF1)) ^ 0x100D3ED) & (v100 ^ 0xFFFFFF17);
  LODWORD(STACK[0x5770]) = v102;
  v104 = v10[BYTE5(v82) ^ 0xDALL];
  STACK[0x54B0] = v10;
  v105 = ((v104 << 16) ^ 0xFF277DE3) & ((*(v8 + (BYTE4(v82) ^ 0x78)) << 24) ^ 0x16377DE3) | (v104 << 16) & 0xC80000;
  STACK[0x54A0] = v29;
  LODWORD(v82) = HIBYTE(v82) ^ v16[HIBYTE(v82) ^ 0xE1];
  v106 = v101 ^ v16[v101 ^ 0x3DLL];
  LODWORD(v101) = v18 ^ v5 & 0xFF9FFFFF ^ v82 & 0x59 ^ (v82 ^ 0xFFFFFF83) & (v105 & 0xAB691002 ^ 0x565AE304 ^ (v105 | 0x8200) & ((*(v29 + (BYTE6(v82) ^ 0x76)) << 8) ^ 0x549649A0));
  LODWORD(STACK[0x5750]) = v101;
  LODWORD(v4) = (((v106 << 24) ^ 0xFDFFFFFF) & ((*(v29 + (BYTE1(v103) ^ 0x2DLL)) << 16) ^ 0xA646ED19) & 0xABEF0409 | (v106 << 24) & 0x9000000) ^ 0x1ABE21E0 ^ ((((v106 << 24) ^ 0xFDFFFFFF) & ((*(v29 + (BYTE1(v103) ^ 0x2DLL)) << 16) ^ 0xA646ED19) | (v106 << 24) & 0x59000000) ^ 0x40001204) & ((v10[BYTE2(v103) ^ 0x5ALL] << 8) ^ 0x54104014);
  STACK[0x54C0] = v8;
  v107 = *(v8 + (BYTE3(v103) ^ 0x9FLL));
  LODWORD(v100) = LODWORD(STACK[0x57A0]) ^ v19 & 0x9300 ^ (v107 & 2 | 0x2B08000) ^ v4 & (v107 ^ 0xFFFFFFA1);
  LODWORD(STACK[0x5760]) = v100;
  LODWORD(v4) = BYTE5(v103) ^ v16[BYTE5(v103) ^ 0xA2];
  v108 = v16[BYTE6(v103) ^ 0x5CLL];
  STACK[0x5490] = v16;
  v109 = BYTE6(v103) ^ v108;
  v110 = (*(v8 + (BYTE4(v103) ^ 0x51)) ^ 0x95) << 24;
  LODWORD(v4) = ((v4 << 16) ^ 0x6A6CE026) & (v110 ^ 0xFEFFF2EE) | v110 & 0x95000000;
  v111 = HIBYTE(v103) ^ v16[HIBYTE(v103) ^ 0x17];
  v112 = v31 ^ v30 & 0x9B ^ v111 & 0x4D ^ (v4 & 0x71D02020 ^ 0x14A07D9 ^ (v4 ^ 0x840A1F49) & ((v109 << 8) ^ 0x8E2FD04B)) & (v111 ^ 0xFFFFFF6C);
  v113 = *(&off_101353600 + v2 + 1697385685) - 4;
  v114 = *(*(&off_101353600 + v2 + 1697385576) + ((v112 ^ 0x86FAE87E) >> 24) - 3) ^ 0xC3208E3F;
  DWORD1(v38) = (v114 >> 3) ^ (v114 >> 2) ^ (v114 - ((2 * v114) & 0xB5C19A0) - 2052191024);
  LODWORD(v38) = DWORD1(v38);
  v115 = (v38 >> 8) - ((2 * (v38 >> 8)) & 0x7EE7EE98);
  v116 = *(*(&off_101353600 + v2 + 1697385576) + (BYTE1(v112) ^ 0xA4u) - 3);
  v117 = *(&off_101353600 + v2 + 1697385576) - 12;
  v118 = *(&off_101353600 + (LODWORD(STACK[0x57B0]) ^ 0x9AD3FBD3)) - 4;
  LODWORD(v38) = __ROR4__(*&v118[4 * (v112 ^ 0x5E)], 28);
  v119 = v38 ^ 0x58C506A0 ^ (4 * (v38 ^ 0x58C506A0)) ^ __ROR4__(v116 ^ ((v116 ^ 0xC3208E3F) >> 3) ^ ((v116 ^ 0xC3208E3F) >> 2) ^ 0x93479C19, 24) ^ v102 ^ (v115 + 1064564556);
  LODWORD(v38) = __ROR4__(*&v113[4 * (BYTE2(v112) ^ 0xC9)] ^ ((((BYTE2(v112) ^ 0xA9E6B2BF) - 1240415810) ^ ((BYTE2(v112) ^ 0x730680FC) + 1827730431) ^ ((BYTE2(v112) ^ 0xF7D1EEEB) - 400056854)) + (((BYTE2(v112) ^ 0x6A583AF1) - 970678698) ^ ((BYTE2(v112) ^ 0xEC34653F) + 1078509980) ^ ((BYTE2(v112) ^ 0x866C5FE3) + 705755976)) + 549170123) ^ 0x3741B392, 16);
  LODWORD(STACK[0x56C0]) = v119 ^ v38;
  LODWORD(v4) = v119 ^ v38 ^ 0x475247A2;
  v120 = v4 ^ v101 ^ 0x3FA14D31;
  LODWORD(STACK[0x5710]) = v120;
  LODWORD(STACK[0x5630]) = v120 ^ v100;
  LODWORD(v82) = v120 ^ v100 ^ 0x531B7B67;
  v121 = v82 ^ v112 ^ 0x86FAE87E;
  LODWORD(v5) = *&v117[4 * (HIBYTE(v121) ^ 0xF0)];
  v122 = *&v118[4 * (BYTE2(v121) ^ 0x88)];
  DWORD1(v38) = v122 ^ 0xFE3CE75;
  LODWORD(v38) = v122 ^ 0x55555555;
  v123 = *(&off_101353600 + v2 + 1697384583) - 12;
  v124 = *&v123[4 * (BYTE1(v121) ^ 0xF4)];
  LODWORD(v29) = *&v123[4 * ((v82 ^ v112 ^ 0x7E) ^ 0x2B)];
  LODWORD(v5) = v29 ^ __ROR4__(v5 ^ ((v5 ^ 0xC3208E3F) >> 3) ^ ((v5 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 8) ^ __ROR4__(v124 ^ 0x8012E224 ^ (((8 * v124) ^ 0xF7FDD5D0) + 226072400), 24) ^ (((8 * v29) ^ 0xF7FDD5D0) + 226072400) ^ __ROR4__((v38 >> 28) ^ (4 * (v38 >> 28)) ^ 0xD7AAAFC5, 16) ^ 0x18183DFA;
  v125 = v101 ^ 0x3FA14D31 ^ v5;
  LODWORD(STACK[0x5740]) = v82 ^ v125;
  LODWORD(v101) = v125;
  LODWORD(STACK[0x5720]) = v125;
  v126 = v82 ^ v125 ^ 0x9CF28A3;
  v127 = v126 ^ v121;
  v128 = *&v118[4 * (((v126 ^ v121) >> 8) ^ 0x5C)];
  LODWORD(v5) = v4 ^ v5;
  LODWORD(STACK[0x5580]) = v5;
  DWORD1(v38) = v128 ^ 0xFE3CE75;
  LODWORD(v38) = v128 ^ 0x55555555;
  DWORD1(v38) = (v38 >> 28) ^ (4 * (v38 >> 28)) ^ 0xD7AAAFC5;
  LODWORD(v38) = DWORD1(v38);
  v129 = *&v117[4 * (((v126 ^ v121) >> 16) ^ 0xA8)];
  v130 = *&v113[4 * ((v126 ^ v82 ^ v112 ^ 0x7E) ^ 0x47)] ^ __ROR4__(v129 ^ ((v129 ^ 0xC3208E3F) >> 3) ^ ((v129 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 16) ^ (((v126 ^ v82 ^ v112 ^ 0x7E) ^ 0xA3) + ((v126 ^ v82 ^ v112 ^ 0x7E) ^ 0x2D31DC26));
  LODWORD(v38) = __ROR4__(__ROR4__(((v38 >> 24) - ((2 * (v38 >> 24)) & 0x10F96DB8) + 142391004) ^ v5 ^ __ROR4__(*&v113[4 * (HIBYTE(v127) ^ 0x64)] ^ ((HIBYTE(v127) ^ 0x2D31DC05) + (HIBYTE(v127) ^ 0x80)) ^ 0x3741B392, 8) ^ 0x3714B127, 26) ^ 0x1ACAA8AB, 6);
  LODWORD(STACK[0x5730]) = v130 ^ v38;
  LODWORD(v4) = v130 ^ v38 ^ 0xDCC82855;
  v131 = v4 ^ v101;
  LODWORD(v102) = v4;
  LODWORD(STACK[0x5680]) = v4;
  LODWORD(v100) = v4 ^ v101 ^ 0x4F6E0171;
  LODWORD(STACK[0x55C0]) = v100;
  v132 = v100 ^ v121 ^ 0x6478E29;
  v133 = *&v118[4 * (((v100 ^ v82 ^ v112 ^ 0xE87E ^ 0xD402) >> 8) ^ 0x6D)];
  DWORD1(v38) = v133 ^ 0xFE3CE75;
  LODWORD(v38) = v133 ^ 0x55555555;
  LODWORD(v4) = *&v123[4 * ((v100 ^ v82 ^ v112 ^ 0x7E) ^ 0x69)] ^ 0x1EFFBABA;
  LODWORD(v82) = (8 * v4 + 226072400) ^ __ROR4__((v38 >> 28) ^ (4 * (v38 >> 28)) ^ 0xD7AAAFC5, 24) ^ __ROR4__(*&v113[4 * (HIBYTE(v132) ^ 0xA5)] ^ ((HIBYTE(v132) ^ 0x41) + (HIBYTE(v132) ^ 0x2D31DCC4)) ^ 0x3741B392, 8);
  LODWORD(v38) = __ROR4__(*&v113[4 * (BYTE2(v132) ^ 0xA5)] ^ ((BYTE2(v132) ^ 0x41) + (BYTE2(v132) ^ 0x2D31DCC4)) ^ 0x3741B392, 16);
  v134 = v102 ^ v4 ^ ((v82 ^ v38) - ((2 * (v82 ^ v38)) & 0xB99050AA) - 590862251);
  LODWORD(STACK[0x55D0]) = 2 * v134;
  LODWORD(v102) = v134;
  LODWORD(STACK[0x5570]) = v134;
  LODWORD(v82) = (v134 + 1924762064 - ((2 * v134) & 0xE57313A0)) ^ v131;
  v135 = v100 ^ v126;
  LODWORD(STACK[0x56E0]) = v82 ^ 0x15E8734D;
  LODWORD(STACK[0x5540]) = v100 ^ v126;
  v136 = v100 ^ v126 ^ 0x50F9E9B9 ^ ((v82 ^ 0x15E8734D) - ((2 * (v82 ^ 0x15E8734D)) & 0x2DA57FC0) - 1764573216);
  LODWORD(STACK[0x5620]) = v136;
  v137 = v136 ^ v132;
  v138 = *&v117[4 * (((v136 ^ v100 ^ v121 ^ 0x8E29) >> 8) ^ 0x36)];
  LODWORD(STACK[0x53E8]) = 758242437;
  v139 = *&v113[4 * (BYTE2(v137) ^ 0xE4)];
  v140 = *&v118[4 * (HIBYTE(v137) ^ 0x36)];
  DWORD1(v38) = v140 ^ 0xFE3CE75;
  LODWORD(v38) = v140 ^ 0x55555555;
  LODWORD(STACK[0x55F0]) = v137;
  LODWORD(v29) = *&v123[4 * (v137 ^ 0xD2)] ^ 0x1EFFBABA;
  v141 = (8 * v29 + 226072400) ^ v29 ^ __ROR4__(v138 ^ ((v138 ^ 0xC3208E3F) >> 3) ^ ((v138 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 24) ^ __ROR4__((v38 >> 28) ^ (4 * (v38 >> 28)) ^ 0xD7AAAFC5, 8) ^ v102 ^ __ROR4__(((BYTE2(v137) ^ 0x2D31DC85) + BYTE2(v137) + v139 - 2 * (((BYTE2(v137) ^ 0x2D31DC85) + BYTE2(v137)) & v139)) ^ 0x3741B392, 16);
  LODWORD(v4) = (v141 - ((2 * v141) & 0x2DA57FC0) - 1764573216) ^ v135;
  LODWORD(STACK[0x54E0]) = v4;
  v142 = v4 ^ 0xA7F9B85;
  v143 = v4 ^ 0xA7F9B85 ^ v137;
  LODWORD(v29) = *&v113[4 * (((v143 ^ 0x3BACEB0C) >> 16) ^ 0xA5)] ^ ((((v143 ^ 0x3BACEB0C) >> 16) ^ 0x41) + (((v143 ^ 0x3BACEB0C) >> 16) ^ 0x2D31DCC4)) ^ 0x3741B392;
  LODWORD(v80) = v143 ^ 0x3BACEB0C;
  LODWORD(STACK[0x5550]) = v143 ^ 0x3BACEB0C;
  v144 = *&v113[4 * (((v143 ^ 0xEB0C) >> 8) ^ 0xA5)] ^ ((((v143 ^ 0xEB0C) >> 8) ^ 0x2D31DCC4) + (((v143 ^ 0xEB0C) >> 8) ^ 0x41)) ^ 0x3741B392;
  LODWORD(v18) = *&v117[4 * (HIBYTE(v143) ^ 0xBE)];
  v145 = *&v123[4 * (v143 ^ 0x4C)] ^ 0x1EFFBABA;
  v146 = (8 * v145 + 226072400) ^ v145 ^ __ROR4__(v18 ^ ((v18 ^ 0xC3208E3F) >> 3) ^ ((v18 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 8) ^ v141 ^ __ROR4__(v29, 16) ^ __ROR4__(v144, 24);
  LODWORD(v4) = v82 ^ 0xD0C2EA7D ^ v141;
  LODWORD(STACK[0x5560]) = v4;
  LODWORD(v82) = v146 ^ v4;
  LODWORD(STACK[0x5700]) = v146;
  v147 = v146 ^ v4 ^ v142;
  v148 = v147 ^ v80;
  LODWORD(STACK[0x56D0]) = v147;
  LODWORD(STACK[0x57A0]) = v147 ^ v80 ^ 0x6F2A9930;
  v149 = (v146 ^ v4 ^ v142 ^ v80) ^ 0x9E;
  v150 = ((v82 ^ v142 ^ v80) ^ 0x2D31DCF4) + ((v82 ^ v142 ^ v80) ^ 0x71);
  LODWORD(v29) = ((v146 ^ v4 ^ v142 ^ v80 ^ 0x589E) >> 8) ^ 0x44;
  v151 = v117;
  v152 = *&v113[4 * (v149 ^ 0xB)] ^ __ROR4__(*&v117[4 * v29] ^ ((*&v117[4 * v29] ^ 0xC3208E3F) >> 3) ^ ((*&v117[4 * v29] ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 24) ^ v146 ^ v150 ^ __ROR4__(*&v113[4 * (((v148 ^ 0x6F2A9930u) >> 24) ^ 0xA5)] ^ ((((v148 ^ 0x6F2A9930u) >> 24) ^ 0x41) + (((v148 ^ 0x6F2A9930u) >> 24) ^ 0x2D31DCC4)) ^ 0x3741B392, 8) ^ __ROR4__(*&v113[4 * (((v148 ^ 0x6F2A9930u) >> 16) ^ 0xA5)] ^ ((((v148 ^ 0x6F2A9930u) >> 16) ^ 0x2D31DCC4) + (((v148 ^ 0x6F2A9930u) >> 16) ^ 0x41)) ^ 0x3741B392, 16);
  LODWORD(STACK[0x5420]) = v152;
  LODWORD(STACK[0x56F0]) = v82 ^ 0xAA000000;
  v153 = v152 ^ 0x6F2A9930 ^ v82 ^ 0xAA000000;
  v154 = v147 ^ 0x9241B392 ^ v153;
  v155 = v154 ^ v148;
  LODWORD(v29) = *&v118[4 * (((v154 ^ v148) >> 8) ^ 0xAE)];
  STACK[0x5338] = v118;
  DWORD1(v38) = v29 ^ 0xFE3CE75;
  LODWORD(v38) = v29 ^ 0x55555555;
  LODWORD(v18) = *&v123[4 * (((v154 ^ v148) >> 24) ^ 0x8B)];
  LODWORD(v29) = (v38 >> 28) ^ (4 * (v38 >> 28));
  DWORD1(v38) = v18 ^ 0x8012E224 ^ (((8 * v18) ^ 0xF7FDD5D0) + 226072400);
  LODWORD(v38) = DWORD1(v38);
  LODWORD(v18) = *(v151 + 4 * (((v154 ^ v148) >> 16) ^ 0xAFu));
  v156 = v151;
  STACK[0x5340] = v151;
  v157 = (v38 >> 8) ^ __ROR4__(v29 ^ 0xD7AAAFC5, 24) ^ v152 ^ 0x6F2A9930;
  LODWORD(v29) = v18 ^ ((v18 ^ 0xC3208E3F) >> 3) ^ ((v18 ^ 0xC3208E3F) >> 2);
  LODWORD(v18) = v147 ^ 0x92 ^ v153 ^ v148;
  v158 = (v18 ^ 0x71) + (v18 ^ 0x2D31DCF4);
  DWORD1(v38) = v29 ^ 0x468E82EF;
  LODWORD(v38) = v29 ^ 0x468E82EF;
  v159 = v38 >> 16;
  v160 = *&v113[4 * (v18 ^ 0x95)];
  v161 = v157 & 0x20000;
  if ((v157 & 0x20000 & v159) != 0)
  {
    v161 = -v161;
  }

  v162 = v160 ^ v157 & 0xFFFDFFFF ^ v158 ^ 0x3841B392 ^ (v161 + v159);
  LODWORD(STACK[0x5510]) = v155 ^ 0xCB2A9930;
  LODWORD(STACK[0x5520]) = v153 ^ 0xFD6B2AA2;
  v163 = v162 ^ v153 ^ 0xFD6B2AA2;
  v164 = v162;
  LODWORD(STACK[0x5670]) = v162;
  v165 = v163 ^ v154;
  LODWORD(STACK[0x5640]) = v163;
  v166 = v163 ^ v154 ^ 0xDDACEB0C;
  LODWORD(STACK[0x5600]) = v166;
  v167 = v166 ^ v155 ^ 0xCB2A9930;
  v168 = *&v113[4 * (((v167 ^ 0xA4000000) >> 24) ^ 0xA5)] ^ ((((v167 ^ 0xA4000000) >> 24) ^ 0x41) + (((v167 ^ 0xA4000000) >> 24) ^ 0x2D31DCC4)) ^ 0x3741B392;
  STACK[0x52A0] = v123;
  v169 = *&v123[4 * (BYTE2(v167) ^ 0x40)];
  v170 = *&v123[4 * (BYTE1(v167) ^ 0x40)];
  v171 = *&v123[4 * (v167 ^ 0x40)] ^ 0x1EFFBABA;
  v172 = (8 * v171 + 226072400) ^ v171 ^ __ROR4__(v169 ^ 0x8012E224 ^ (((8 * v169) ^ 0xF7FDD5D0) + 226072400), 16) ^ __ROR4__(v170 ^ 0x8012E224 ^ (((8 * v170) ^ 0xF7FDD5D0) + 226072400), 24) ^ v164 ^ __ROR4__(v168, 8);
  v173 = v163 ^ 0xDDACEB0C ^ v172 ^ 0x79ACEB0C;
  v174 = v173 ^ v165;
  v175 = v173;
  LODWORD(STACK[0x55A0]) = v173;
  v176 = v173 ^ v165 ^ 0x79ACEB0C;
  LODWORD(STACK[0x54F0]) = v176;
  v177 = v176 ^ v167 ^ 0xA4000000;
  v178 = *(v156 + 4 * (BYTE2(v177) ^ 0x68u));
  LODWORD(STACK[0x5480]) = v177 ^ 0xABED589E;
  STACK[0x52E0] = v113;
  v179 = *&v118[4 * (HIBYTE(v177) ^ 0x9C)];
  HIDWORD(v180) = v179 ^ 0xFE3CE75;
  LODWORD(v180) = v179 ^ 0x55555555;
  v181 = *&v113[4 * ((v176 ^ v167) ^ 0x3B)] ^ __ROR4__(v178 ^ ((v178 ^ 0xC3208E3F) >> 3) ^ ((v178 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 16) ^ __ROR4__((v180 >> 28) ^ (4 * (v180 >> 28)) ^ 0xD7AAAFC5, 8) ^ v172 ^ 0x79ACEB0C ^ (((v176 ^ v167) ^ 0x2D31DC5A) + ((v176 ^ v167) ^ 0xDF));
  LODWORD(v180) = __ROR4__(*&v113[4 * (((v176 ^ v167 ^ 0x589E) >> 8) ^ 0xA5)] ^ ((((v176 ^ v167 ^ 0x589E) >> 8) ^ 0x2D31DCC4) + (((v176 ^ v167 ^ 0x589E) >> 8) ^ 0x41)) ^ 0x3741B392, 24);
  LODWORD(STACK[0x54D0]) = v181 ^ v180;
  LODWORD(STACK[0x5500]) = v112;
  v182 = (((v127 ^ 0xC8E5A2B9) - 1529954294) ^ ((v127 ^ 0xAFC1F745) - 1008036362) ^ ((v127 ^ 0x4873106C) + 609776349)) - (((v112 ^ 0xEF03313C) + 1452080416) ^ ((v112 ^ 0xD40E77BD) + 1837218719) ^ ((v112 ^ 0x5CD34323) - 446918911));
  v183 = v174 ^ 0x1C2C5409;
  v184 = v181 ^ v180 ^ v175;
  LODWORD(STACK[0x5790]) = v184 ^ 0xE141B392 ^ v167 ^ 0xA4000000;
  LODWORD(STACK[0x5780]) = v183 ^ v184 ^ 0xE141B392;
  v185 = LODWORD(STACK[0x5580]) ^ 0x3F6807FB ^ -(LODWORD(STACK[0x5580]) ^ 0x3F6807FB) ^ (-293982606 - (LODWORD(STACK[0x5580]) ^ 0xD1122989));
  v186 = v172 ^ 0x62B75000;
  v187 = STACK[0x54E0];
  v188 = (((v121 ^ 0x3EBB1964) + 1713367588) ^ ((v121 ^ 0x3C23A516) + 1686591058) ^ ((v121 ^ 0xED7F3F85) - 1243886397)) + 1562088364 + (((v187 ^ 0x297A658D) + 1167066242) ^ ((v187 ^ 0x3665C706) + 1519363595) ^ ((v187 ^ 0x98553825) - 188786390));
  LODWORD(STACK[0x5430]) = v184 ^ 0x2F2C5409;
  v189 = STACK[0x5630];
  v190 = (((v189 ^ 0x6A0E813F) + 1824022820) ^ ((v189 ^ 0xAFBA2B82) - 1458779233) ^ ((v189 ^ 0xFCDE9B3A) - 93816025)) - (((v141 ^ 0x684730A5) - 1729826409) ^ ((v141 ^ 0xBB212190) + 1266868388) ^ ((v141 ^ 0x594D1B0) - 180940668));
  v191 = v190 - 1873981373;
  v192 = 2 * (v190 - 1873981373);
  LODWORD(STACK[0x5408]) = v190 + 1343604025 - (v192 & 0x7F910984);
  LODWORD(STACK[0x5400]) = v185 - 293982606;
  LODWORD(STACK[0x5410]) = v185 - 2 * ((v185 - 293982606) & 0x2BFCFAD9 ^ v185 & 1);
  LODWORD(STACK[0x53D0]) = v190 - (v192 & 0xF65BDD58);
  v193 = LODWORD(STACK[0x5540]) ^ 0xDF3BF3ED;
  v194 = STACK[0x5420];
  v195 = v193 - (LODWORD(STACK[0x5420]) ^ 0xA6DDA235);
  LODWORD(STACK[0x5318]) = v195 - 1796029109;
  v196 = 2 * (v195 - 1796029109);
  LODWORD(STACK[0x53A8]) = v195 - (v196 & 0x11F82F62);
  v197 = LODWORD(STACK[0x56C0]) ^ 0x3068A81B;
  v198 = (v187 ^ 0x874A9AAE) + v197;
  LODWORD(STACK[0x5630]) = v189 ^ 0x262C31F6 ^ (v198 + 582548970) ^ (v195 - (v196 & 0x3E8C00E2) - 1271347780);
  v199 = (v194 ^ 0xA6DDA235) + v197;
  LODWORD(STACK[0x5580]) = v199 ^ 0x83CB5B54;
  v200 = ((v199 ^ 0x83CB5B54) + 1924762064 - 2 * ((v199 ^ 0x83CB5B54) & 0x72B989DA ^ v199 & 0xA)) ^ LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x5540]) = v132 - ((2 * v132) & 0x57F9F5B0);
  v201 = LODWORD(STACK[0x5570]) - (STACK[0x55D0] & 0x17042D98);
  LODWORD(STACK[0x53A0]) = v167 ^ 0x2E0A831F;
  v202 = v148 ^ 0xA530C702 ^ v167 ^ 0x2E0A831F;
  v203 = v202 - 2118646353;
  LODWORD(STACK[0x53D8]) = v127 ^ v188 ^ 0x78CFC852 ^ 0x93D49D4F ^ (v202 - ((2 * (v202 - 2118646353)) & 0x2EFE440E) - 1724438602);
  LODWORD(STACK[0x5328]) = v198 + 582548970;
  LODWORD(STACK[0x56C0]) = v121 ^ (v198 - ((2 * (v198 + 582548970)) & 0xF9221CF8) - 1622537114);
  v204 = v202 - 783298326 - ((2 * (v202 - 2118646353)) & 0x9F2F99D0);
  v205 = v200 - ((2 * v200) & 0x57F9F5B0);
  LODWORD(STACK[0x5390]) = v186;
  v206 = (v184 ^ 0x2F2C5409) - v186;
  v207 = v206 + 1652526334;
  v208 = (v206 - ((2 * (v206 + 1652526334)) & 0xB35DFC92) + 1009683271) ^ v141;
  LODWORD(STACK[0x53F8]) = LODWORD(STACK[0x5550]) - ((2 * LODWORD(STACK[0x5550])) & 0x17042D98);
  LODWORD(STACK[0x5570]) = v182 - 1697275295;
  v209 = v201 - 1954408756;
  v210 = (v182 - 1697275295) ^ 0x72F2408E;
  LODWORD(STACK[0x53C0]) = (v208 ^ 0xF5C3ECC) - 2 * ((v208 ^ 0xF5C3ECC) & 0xB8216DC ^ v208 & 0x10);
  LODWORD(STACK[0x53B0]) = ((v206 + 1652526334) ^ LODWORD(STACK[0x5560])) - ((2 * ((v206 + 1652526334) ^ LODWORD(STACK[0x5560]))) & 0x17042D98);
  v211 = LODWORD(STACK[0x5620]) - ((2 * LODWORD(STACK[0x5620])) & 0x17042D98);
  v212 = LODWORD(STACK[0x55F0]) - ((2 * LODWORD(STACK[0x55F0])) & 0x17042D98);
  LODWORD(STACK[0x5620]) = ((v211 - 1954408756) ^ v210) - ((2 * ((v211 - 1954408756) ^ v210)) & 0x57F9F5B0);
  LODWORD(STACK[0x5560]) = ((v212 - 1954408756) ^ v210) - ((2 * ((v212 - 1954408756) ^ v210)) & 0x57F9F5B0);
  v213 = v187 ^ 0x93159EF3 ^ (v206 - ((2 * (v206 + 1652526334)) & 0x28BE08BA) + 1994297691);
  LODWORD(STACK[0x5360]) = -386149785;
  LODWORD(STACK[0x5420]) = v154 - 1954408756 + (~(2 * v154) | 0xE8FBD267);
  LODWORD(STACK[0x5398]) = v213 - ((2 * v213) & 0x17042D98);
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x5510]) - ((2 * LODWORD(STACK[0x5510])) & 0x17042D98);
  LODWORD(STACK[0x53E0]) = (v194 ^ 0xA6DDA235) - 2 * ((v194 ^ 0xA6DDA235) & 0xB8216CE ^ v194 & 2);
  v214 = (v194 ^ 0xA6DDA235) - 1103279369 + LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x54E0]) = v214;
  v215 = v214 ^ LODWORD(STACK[0x5520]);
  HIDWORD(v180) = (v215 + 133596 - ((2 * v215) & STACK[0xDAC]) + 3312) ^ v210;
  LODWORD(v180) = (v215 - ((2 * v215) & 0x17042D98) - 1954408756) ^ v210;
  LODWORD(STACK[0x53B8]) = v180 >> 20;
  v216 = STACK[0x5710];
  v217 = LODWORD(STACK[0x5710]) ^ 0x6F9EA4AC ^ LODWORD(STACK[0x5680]);
  v218 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x57A0]);
  LODWORD(STACK[0x52B8]) = v218;
  LODWORD(STACK[0x5240]) = v217;
  v219 = v218 ^ 0x1A09D594 ^ v217;
  v220 = v218 ^ 0x1A09D594;
  v221 = v219 ^ LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x5680]) = v221;
  LODWORD(STACK[0x5370]) = v219 ^ 0xB0F6E392;
  v222 = v219 ^ 0xB0F6E392 ^ LODWORD(STACK[0x5480]);
  v223 = v222 ^ v221 ^ 0x1B1BBB0C;
  v224 = ((v223 & 0x808197E7) + (v222 ^ v221 ^ 0x9B9A2CEB)) & v223 ^ LODWORD(STACK[0x56E0]);
  v225 = (v224 - ((2 * v224) & 0x17042D98) - 1954408756) ^ v210;
  v226 = v188 ^ v223 ^ 0x2CA8BD7F ^ (v225 - 1409484072 + (~(2 * v225) | 0xA8060A4F) + 1);
  v227 = STACK[0x5580];
  v228 = LODWORD(STACK[0x5580]) ^ v188 ^ 0x78CFC852;
  v229 = v228 ^ (v193 - ((2 * v193) & 0x57F9F5B0) - 1409484072);
  v230 = *(&off_101353600 + (LODWORD(STACK[0x57B0]) ^ 0x9AD3FBCC)) - 8;
  LODWORD(STACK[0x5358]) = v230;
  v231 = (v223 ^ v230) + v229 + 1431797362;
  v232 = (v197 - ((2 * v197) & 0x11F82F62) - 1996744783) ^ v216;
  LODWORD(STACK[0x55F0]) = v216 ^ 0x60B8AD80 ^ (v198 + 582548970) ^ (LODWORD(STACK[0x53A8]) + 502193404);
  v233 = v188 ^ 0x61DF6DE6 ^ (v205 - 1409484072);
  v234 = LODWORD(STACK[0x54D0]) ^ 0x84C10C97;
  v235 = v186 - v234 - 2126408301;
  v236 = v232 ^ 0xBF6130B9 ^ v235;
  LODWORD(STACK[0x54F0]) = v236 ^ LODWORD(STACK[0x5750]) ^ (LODWORD(STACK[0x53D0]) - 1954857233) ^ 0x66EE1DE9;
  LODWORD(STACK[0x52D0]) = v191;
  v237 = v236 ^ v191;
  v238 = v237 ^ LODWORD(STACK[0x5500]) ^ 0x3E70CA95;
  v239 = v237 ^ LODWORD(STACK[0x5770]) ^ 0x38F5BC06;
  v240 = LODWORD(STACK[0x5408]) + 4044;
  LODWORD(STACK[0x52C8]) = v232;
  LODWORD(STACK[0x52C0]) = v232 ^ 0x83414439;
  v241 = LODWORD(STACK[0x5760]) ^ v232 ^ 0x83414439 ^ v240;
  v242 = STACK[0x53A0];
  v243 = LODWORD(STACK[0x53A0]) - LODWORD(STACK[0x5400]) + 1621000591;
  LODWORD(STACK[0x5300]) = v243;
  v244 = v220 ^ v243;
  LODWORD(STACK[0x5308]) = v220;
  v245 = (v244 ^ LODWORD(STACK[0x5600]) ^ 0xA4000000) - ((2 * (v244 ^ LODWORD(STACK[0x5600]))) & 0x1415063E);
  v246 = ((v209 ^ v210) - ((2 * (v209 ^ v210)) & 0x57F9F5B0) - 1409484072) ^ 0xFA0B483 ^ v188 ^ 0x78CFC852;
  v247 = LODWORD(STACK[0x5740]) ^ 0xB74CEF68 ^ v188 ^ 0x78CFC852 ^ (v204 + 429);
  v248 = v188 ^ 0x78CFC852 ^ (LODWORD(STACK[0x5410]) - 1703466678) ^ v203;
  v249 = LODWORD(STACK[0x5720]) ^ v188 ^ 0x703D96AE;
  LODWORD(STACK[0x52D8]) = v203;
  v250 = v249 ^ v203;
  v251 = STACK[0x53D8];
  if (v231)
  {
    v252 = STACK[0x53D8];
  }

  else
  {
    v252 = v247;
  }

  LODWORD(STACK[0x55D0]) = v252;
  if ((v231 & 1) == 0)
  {
    v247 = v250;
  }

  LODWORD(STACK[0x5770]) = v247;
  if (v231)
  {
    v253 = v250;
  }

  else
  {
    v253 = v248;
  }

  LODWORD(STACK[0x55C0]) = v253;
  if (v231)
  {
    v254 = v248;
  }

  else
  {
    v254 = v251;
  }

  LODWORD(STACK[0x5740]) = v254;
  v255 = v228 ^ (LODWORD(STACK[0x5540]) - 1409484072) ^ 0x18511626;
  LODWORD(STACK[0x5320]) = v188;
  v256 = v227;
  v257 = LODWORD(STACK[0x5730]) ^ v188 ^ 0x6648BD9C ^ v227;
  if (v231)
  {
    v258 = v229;
  }

  else
  {
    v258 = v188 ^ 0x61DF6DE6 ^ (v205 - 1409484072);
  }

  if ((v231 & 1) == 0)
  {
    v233 = LODWORD(STACK[0x5730]) ^ v188 ^ 0x6648BD9C ^ v227;
  }

  LODWORD(STACK[0x5760]) = v233;
  if (v231)
  {
    v259 = v257;
  }

  else
  {
    v259 = v255;
  }

  if (v231)
  {
    v229 = v255;
  }

  LODWORD(STACK[0x5750]) = v229;
  v260 = v188 ^ 0x2DE90EED ^ (LODWORD(STACK[0x5560]) - 1409484072);
  v261 = v188 ^ 0x2DE90EED ^ (LODWORD(STACK[0x5620]) - 1409484072);
  if (v231)
  {
    v262 = v226;
  }

  else
  {
    v262 = v246;
  }

  LODWORD(STACK[0x5560]) = v262;
  if (v231)
  {
    v263 = v246;
  }

  else
  {
    v263 = v260;
  }

  LODWORD(STACK[0x5730]) = v263;
  if ((v231 & 1) == 0)
  {
    v260 = v261;
  }

  LODWORD(STACK[0x5550]) = v260;
  if ((v231 & 1) == 0)
  {
    v261 = v226;
  }

  LODWORD(STACK[0x5720]) = v261;
  v264 = LODWORD(STACK[0x5570]) ^ 0x612A193B ^ (LODWORD(STACK[0x53B0]) - 1954408756);
  v265 = LODWORD(STACK[0x53F8]) - 1954408756;
  v266 = (LODWORD(STACK[0x53C0]) - 1954408756) ^ v210;
  v267 = (LODWORD(STACK[0x5398]) - 1954408756) ^ v210;
  LODWORD(STACK[0x5310]) = v207;
  LODWORD(STACK[0x52E8]) = v207 ^ v210;
  v268 = v207 ^ v210 ^ 0xB7D859B5;
  LODWORD(STACK[0x52F0]) = v268;
  v269 = v268 ^ v265;
  if (v231)
  {
    v270 = v269;
  }

  else
  {
    v270 = v267;
  }

  LODWORD(STACK[0x5620]) = v270;
  if (v231)
  {
    v269 = v266;
  }

  LODWORD(STACK[0x5540]) = v269;
  if (v231)
  {
    v271 = v264;
  }

  else
  {
    v271 = v266;
  }

  LODWORD(STACK[0x5600]) = v271;
  if (v231)
  {
    v264 = v267;
  }

  LODWORD(STACK[0x5520]) = v264;
  v272 = LODWORD(STACK[0x56F0]) ^ 0x35DD9F9C;
  v273 = LODWORD(STACK[0x5700]) ^ 0x3BDD9F9C;
  LODWORD(STACK[0x5330]) = v220 ^ v207;
  v274 = v273 ^ v220 ^ v207;
  v275 = v272 ^ v220 ^ v207;
  v276 = STACK[0x56D0];
  v277 = LODWORD(STACK[0x56D0]) ^ 0xA530C702 ^ v220 ^ v207;
  LODWORD(STACK[0x52F8]) = v220 ^ v207 ^ 0xCA1A5E32;
  v278 = v220 ^ v207 ^ 0xCA1A5E32 ^ LODWORD(STACK[0x57A0]);
  if (v231)
  {
    v279 = v275;
  }

  else
  {
    v279 = v274;
  }

  LODWORD(STACK[0x5510]) = v279;
  if (v231)
  {
    v275 = v277;
  }

  LODWORD(STACK[0x5710]) = v275;
  if (v231)
  {
    v280 = v278;
  }

  else
  {
    v280 = v277;
  }

  LODWORD(STACK[0x5500]) = v280;
  if (v231)
  {
    v281 = v274;
  }

  else
  {
    v281 = v278;
  }

  LODWORD(STACK[0x5700]) = v281;
  LODWORD(STACK[0x5350]) = v219;
  v282 = v219 ^ LODWORD(STACK[0x5390]);
  v283 = LODWORD(STACK[0x55A0]) ^ 0x1B1BBB0C ^ v219;
  v284 = __ROR4__(STACK[0x5680], 6) ^ 0x578E8D98;
  if (v231)
  {
    v285 = LODWORD(STACK[0x55A0]) ^ 0x1B1BBB0C ^ v219;
  }

  else
  {
    v285 = v219 ^ LODWORD(STACK[0x5390]);
  }

  LODWORD(STACK[0x5270]) = v285;
  if ((v231 & 1) == 0)
  {
    v282 = v222;
  }

  LODWORD(STACK[0x56F0]) = v282;
  v286 = __ROR4__(v284, 26) ^ 0xF8B8DD19;
  if (v231)
  {
    v283 = v286;
  }

  LODWORD(STACK[0x56E0]) = v283;
  if (v231)
  {
    v286 = v222;
  }

  LODWORD(STACK[0x5268]) = v286;
  v287 = STACK[0x5780];
  v288 = LODWORD(STACK[0x5780]) + v197;
  LODWORD(STACK[0x5280]) = v288;
  v289 = LODWORD(STACK[0x5328]) ^ v197 ^ LODWORD(STACK[0x5318]);
  v290 = LODWORD(STACK[0x56C0]) ^ 0x93768D8B ^ LODWORD(STACK[0x5318]);
  v291 = LODWORD(STACK[0x53E0]) - 1954408756;
  v292 = LODWORD(STACK[0x5420]) + 1;
  v293 = LODWORD(STACK[0x53F0]) - 1954408756;
  LODWORD(STACK[0x5238]) = v210;
  v294 = LODWORD(STACK[0x54E0]) ^ v210;
  v295 = v294 ^ v291;
  v296 = LODWORD(STACK[0x53B8]) ^ 0xFFED9B9C;
  v297 = v276 ^ 0xDCC3B477 ^ v242;
  v298 = v244 ^ v242;
  LODWORD(STACK[0x54D0]) = -813203835 - v288;
  LODWORD(STACK[0x5248]) = v297;
  LODWORD(STACK[0x5288]) = v297 ^ v256;
  v299 = (-813203835 - v288) ^ v297 ^ v256;
  v300 = v299 ^ LODWORD(STACK[0x5430]);
  v301 = v299 ^ v234;
  v302 = v299 ^ v287;
  v303 = v299;
  LODWORD(STACK[0x57A0]) = v299;
  LODWORD(STACK[0x52B0]) = v235;
  v304 = v241 ^ 0x6FDA9008 ^ v235;
  LODWORD(STACK[0x5430]) = v238;
  if (v231)
  {
    v305 = v238;
  }

  else
  {
    v305 = v241 ^ 0x6FDA9008 ^ v235;
  }

  v306 = STACK[0x54F0];
  if ((v231 & 1) == 0)
  {
    v304 = STACK[0x54F0];
  }

  LODWORD(STACK[0x56D0]) = v304;
  LODWORD(STACK[0x5420]) = v239;
  if (v231)
  {
    v307 = v306;
  }

  else
  {
    v307 = v239;
  }

  v308 = __ROR4__(v296, 12) ^ 0x72942ED0;
  LODWORD(STACK[0x5290]) = v294;
  v309 = v294 ^ v293 ^ 0x6F5BD009;
  LODWORD(STACK[0x53A8]) = v308;
  if (v231)
  {
    v310 = v308;
  }

  else
  {
    v310 = v295;
  }

  LODWORD(STACK[0x54F0]) = v310;
  if ((v231 & 1) == 0)
  {
    v295 = v309;
  }

  LODWORD(STACK[0x5780]) = v295;
  v311 = v294 ^ v292 ^ 0xCB5BD009;
  v312 = v245 - 1979022561;
  LODWORD(STACK[0x53A0]) = v311;
  if (v231)
  {
    v313 = v309;
  }

  else
  {
    v313 = v311;
  }

  LODWORD(STACK[0x5408]) = v313;
  v314 = LODWORD(STACK[0x5640]) ^ 0x57A66813;
  LODWORD(STACK[0x5298]) = v244;
  v315 = v314 ^ v244;
  v316 = LODWORD(STACK[0x5670]) ^ 0xF3A66813 ^ v244;
  v317 = v303 ^ LODWORD(STACK[0x5790]) ^ 0xCE6DE79B;
  LODWORD(STACK[0x5410]) = v289;
  LODWORD(STACK[0x53F0]) = v290;
  if (v231)
  {
    v318 = v289;
  }

  else
  {
    v318 = v290;
  }

  v319 = STACK[0x5630];
  if ((v231 & 1) == 0)
  {
    v319 = STACK[0x55F0];
  }

  LODWORD(STACK[0x5390]) = v315;
  LODWORD(STACK[0x5380]) = v316;
  if ((v231 & 1) == 0)
  {
    v315 = v316;
  }

  LODWORD(STACK[0x5400]) = v315;
  LODWORD(STACK[0x53E0]) = v298;
  LODWORD(STACK[0x5398]) = v312;
  if (v231)
  {
    v320 = v298;
  }

  else
  {
    v320 = v312;
  }

  LODWORD(STACK[0x53F8]) = v320;
  LODWORD(STACK[0x53B0]) = v302;
  LODWORD(STACK[0x5348]) = v317;
  if (v231)
  {
    v321 = v317;
  }

  else
  {
    v321 = v302;
  }

  LODWORD(STACK[0x56C0]) = v321;
  LODWORD(STACK[0x53C0]) = v300;
  LODWORD(STACK[0x53B8]) = v301;
  if (v231)
  {
    v322 = v300;
  }

  else
  {
    v322 = v301;
  }

  LODWORD(STACK[0x5680]) = v322;
  LODWORD(STACK[0x55A0]) = v231;
  v323 = (v231 & 2) == 0;
  if ((v231 & 2) != 0)
  {
    v324 = v307;
  }

  else
  {
    v324 = v305;
  }

  LODWORD(STACK[0x5388]) = v324;
  if ((v231 & 2) != 0)
  {
    v325 = v305;
  }

  else
  {
    v325 = v307;
  }

  LODWORD(STACK[0x53D0]) = v325;
  if ((v231 & 2) != 0)
  {
    v326 = v319;
  }

  else
  {
    v326 = v318;
  }

  LODWORD(STACK[0x53D8]) = v326;
  if ((v231 & 2) == 0)
  {
    v318 = v319;
  }

  LODWORD(STACK[0x5670]) = v318;
  if ((v231 & 2) != 0)
  {
    v327 = v259;
  }

  else
  {
    v327 = v258;
  }

  LODWORD(STACK[0x5640]) = v327;
  if ((v231 & 2) != 0)
  {
    v328 = v258;
  }

  else
  {
    v328 = v259;
  }

  LODWORD(STACK[0x5480]) = v328;
  v329 = STACK[0x5278];
  v330 = STACK[0x5490];
  v331 = STACK[0x54B0];
  v332 = *(STACK[0x54B0] + (*(STACK[0x5278] + 7) ^ 0xCFLL));
  v333 = ((*(STACK[0x54B0] + (*(STACK[0x5278] + 4) ^ 0x2FLL)) << 24) ^ 0x5B5250D5) & (v332 ^ 0xFFDFFE0E) | v332 & 0x2A;
  v334 = (LODWORD(STACK[0xDB0]) ^ ((*v329 ^ 0xAB ^ *(STACK[0x5490] + (*v329 ^ 0xF5))) << 24)) & ~*(v331 + (STACK[0x5440] ^ 0xCE)) | *(v331 + (STACK[0x5440] ^ 0xCE)) & 0xD7;
  v335 = *(STACK[0x54B0] + (*(STACK[0x5278] + 6) ^ 0xD3));
  v336 = STACK[0x54C0];
  v337 = ((((v335 << 8) & 0x4900 ^ 0xDF1542D9) & (v333 & 0x9F000059 ^ 0xDE154BC1) & 0xFFFF7FFF | (((v335 >> 7) & 1) << 15)) ^ 0xDE02B680) & (((v335 << 8) & 0x3600 | v333 & 0x600000A6) ^ 0x9F17FDFB) ^ ((v335 << 8) & 0x200 | v333 & 0x600000A6);
  v338 = *(STACK[0x54B0] + (*(STACK[0x5278] + 9) ^ 0xD4)) << 16;
  v339 = STACK[0x54A0];
  v340 = *(STACK[0x54A0] + (*(STACK[0x5278] + 11) ^ 0x55));
  v341 = (((v338 ^ 0xFF3FFFFF) & ((*(STACK[0x54C0] + (STACK[0x5368] ^ 0x36)) << 24) ^ 0x736A4095) | v338 & 0x950000) ^ 0x732A1CDC) & (v340 ^ 0xFFFF5D87);
  LODWORD(STACK[0x5790]) = (((*(STACK[0x5490] + (STACK[0x5450] ^ 0x3E)) ^ STACK[0x5450]) << 16) ^ 0x6AC10469) & (v337 ^ 0x90E84B4F);
  v342 = *(v339 + (v329[12] ^ 0x20)) << 24;
  v343 = ((*(v331 + (v329[13] ^ 0x26)) << 16) ^ 0x9B76F52B) & (v342 ^ 0x80FFFF7B) ^ ((v342 & 0x64000000 | 0x100105) + 2379);
  v344 = (v343 ^ 0x24000080) & ((*(v336 + (v329[14] ^ 0xBCLL)) << 8) ^ 0xA400B2BA);
  v345 = *(v336 + (v329[10] ^ 0x7DLL)) << 8;
  LODWORD(STACK[0x5450]) = (v345 ^ 0xFFFF38FF) & ((v340 & 0xB6 | v341) ^ 0xB32A687B);
  v346 = *(v339 + (STACK[0x55E0] ^ 0x81));
  v347 = (v346 ^ 0xFFFFFFC8) & (v343 & 0x5BFF2040 ^ 0x5386C2B4 ^ v344);
  v348 = STACK[0x5660] - (STACK[0x55B0] & 4);
  v349 = &v329[-(STACK[0x55B0] & 0xB4BCD9BF49A76D92) + 0x5A5E6CDFA4D3B600];
  v350 = *(v336 + (STACK[0x5610] ^ 0x1F)) << 16;
  LODWORD(STACK[0x5660]) = (v334 & 0x9E0840DB ^ 0x98060EE7 ^ (((*(v330 + (STACK[0x5650] ^ 0x72)) ^ STACK[0x5650]) << 8) ^ 0x61D5F424) & (v334 ^ 0xE3272BDC)) & (v350 ^ 0xFF71FFFF);
  v351 = v349 + 201;
  LODWORD(v349) = (v349 + 201) & 0xFFFFFFF8;
  v352 = (((v349 ^ 0x7544BDFC) + 1256566447) ^ ((v349 ^ 0x3713F86B) + 145943354) ^ ((v349 ^ 0xE684F35F) - 651829234)) - 961194282;
  *(&v353 + 1) = v349 ^ 0xC8;
  *&v353 = v351 ^ 0x5A5E6CDFA4D3B600;
  v354 = *(STACK[0x52A8] + (((((v352 ^ 0xF4C8E72E) + 1667394060) ^ v352 ^ ((v352 ^ 0x7998673) - 1875702953) ^ ((v352 ^ 0x4479EC78) - 741121698) ^ ((v352 ^ 0xDF7DFFFF) + 1222079195)) & 0xFFFFFFF8 ^ 0x685572D8) & STACK[0x53C8]));
  v355 = v354 + (v353 >> 8);
  *&v353 = __ROR8__(v354, 61);
  v356 = (v353 - ((2 * v353) & 0x950372B0B439AC62) + 0x4A81B9585A1CD631) ^ v355;
  *&v353 = __ROR8__(v355, 8);
  v357 = (((v356 ^ 0x4489B529D300627) + 0x7CF5BBA972F8885FLL) ^ ((v356 ^ 0xC72DE912E5A17127) - 0x406F3616F59600A1) ^ ((v356 ^ 0x7DF29A51BDD39D56) + 0x54FBAAA521B1330)) + ((((v353 - ((2 * v353) & 0xA0780BF9B07FEB6CLL) - 0x2FC3FA0327C00A4ALL) ^ 0x4AED5BB461340C0DLL) - 0x60CE027EC4A28912) ^ (((v353 - ((2 * v353) & 0xA0780BF9B07FEB6CLL) - 0x2FC3FA0327C00A4ALL) ^ 0x7F087585B021C6BBLL) - 0x552B2C4F15B743A4) ^ (((v353 - ((2 * v353) & 0xA0780BF9B07FEB6CLL) - 0x2FC3FA0327C00A4ALL) ^ 0x822D3D9C40B5613CLL) + 0x57F19BA91ADC1BDDLL)) - 0x283F7E82F654359BLL;
  v358 = v357 ^ __ROR8__(v356 ^ 0x8742DF0410377186, 61);
  *&v353 = __ROR8__(v357 ^ 0x614C57C8CF0CC13ALL, 8);
  v359 = (((v358 ^ 0xF1FB396DAC610130) + 0x247B919FA5ACCC87) ^ ((v358 ^ 0xE8C714B008B024ALL) - 0x24F32646F6B93003) ^ ((v358 ^ 0x24ECB2663BB6B7B2) - 0xE93E56BCD8485FBLL)) - 0x3D8B6E8EB8473812 + (((v353 ^ 0x9EAFAD55E2BC869ELL) - 0x3D54376322053B58) ^ ((v353 ^ 0x1AF6B405E1003810) + 0x46F2D1CCDE467A2ALL) ^ ((v353 ^ 0xF72D6745254F4225) - 0x54D6FD73E5F6FFE3));
  v360 = v359 ^ __ROR8__(v358, 61);
  *&v353 = __ROR8__(v359 ^ 0xF68B409A8F2A99DCLL, 8);
  v361 = (((v360 ^ 0xD1857D12B26E3CCALL) + 0x68ECF085D31BBB44) ^ ((v360 ^ 0xDBCC55035B40B4BLL) - 0x4B2AB738AB3E733DLL) ^ ((v360 ^ 0x2293BE81050AA85CLL) - 0x6405CCE99B80D02ALL)) + 0x14048198DF3FCBB5 + (((v353 ^ 0xD8B05D25F455D130) + 0x3B5350A394F9D566) ^ ((v353 ^ 0xD42B02FFE87CE660) + 0x37C80F7988D0E236) ^ ((v353 ^ 0x4B4FA14E419E28F0) - 0x57535337DECDD35ALL));
  v362 = v361 ^ __ROR8__(v360 ^ 0x469672689E8A7876, 61);
  *&v353 = __ROR8__(v361 ^ 0xA159342F03CFB118, 8);
  v363 = (((v362 ^ 0xA0177B3FD5C8F015) - 0x57F9AB037368BA1) ^ ((v362 ^ 0x4447FB9EF266DB22) + 0x1ED0E5EEEF675F6ALL) ^ ((v362 ^ 0xC01C3F4AEBC42AB7) - 0x6574DEC5093A5103)) - 0x6106EB56646AE752 + (((v353 ^ 0x3842DD6B59AE70E0) + 0x1F2D62FF577C63E9) ^ ((v353 ^ 0x993AB74F38E5AF30) - 0x41AAF724C9C843C7) ^ ((v353 ^ 0x643C9C0AFD66AD5DLL) + 0x4353239EF3B4BE56));
  v364 = v363 ^ __ROR8__(v362 ^ 0xA568E18FE2FE7BB4, 61);
  *(&v353 + 1) = v363 ^ 0x21;
  *&v353 = v363 ^ 0xC7DDC9F6CC45B700;
  v365 = (v364 ^ 0xCEFF3AD7B8E66685) + (v353 >> 8);
  *(&v353 + 1) = v364 ^ 0xEFF3AD7B8E66685;
  *&v353 = v364 ^ 0xC000000000000000;
  v365 ^= 0xA82620A559D2DA78;
  v366 = v365 ^ (v353 >> 61);
  v367 = (v366 + __ROR8__(v365, 8)) ^ 0x5F8DEC3EA3980A1BLL;
  v368 = (v367 ^ __ROR8__(v366, 61)) + __ROR8__(v367, 8);
  v369 = STACK[0x5530] - 0x137F04AC4E752A00 - (STACK[0x5590] & 0xD901F6A76315ACF6) + 123;
  v370 = (((v369 & 0xFFFFFFF8 ^ 0xFB59AB63) + 1195804925) ^ ((v369 & 0xFFFFFFF8 ^ 0x7FFBBE34) - 1008427604) ^ ((v369 & 0xFFFFFFF8 ^ 0x3528C32F) - 1992826703)) - 305160676;
  LODWORD(v329) = (v370 ^ 0xFF4CE543) & (2 * (v370 & 0xFE6CF593)) ^ v370 & 0xFE6CF593;
  v371 = ((2 * (v370 ^ 0x87CC6761)) ^ 0xF34125E4) & (v370 ^ 0x87CC6761) ^ (2 * (v370 ^ 0x87CC6761)) & 0x79A092F2;
  LODWORD(v329) = (v371 ^ 0x710000C2) & (4 * v329) ^ v329;
  v372 = ((4 * (v371 ^ 0x8A09212)) ^ 0xE6824BC8) & (v371 ^ 0x8A09212) ^ (4 * (v371 ^ 0x8A09212)) & 0x79A092F0;
  LODWORD(v329) = (v372 ^ 0x608002C2) & (16 * v329) ^ v329;
  v373 = ((16 * (v372 ^ 0x19209032)) ^ 0x9A092F20) & (v372 ^ 0x19209032) ^ (16 * (v372 ^ 0x19209032)) & 0x79A092F0;
  LODWORD(v329) = v329 ^ 0x79A092F2 ^ (v373 ^ 0x180002D2) & (v329 << 8);
  *(&v353 + 1) = v369 & 0xFFFFFFF8 ^ 0x78;
  *&v353 = v369 ^ 0xEC80FB53B18AD600;
  v374 = *(STACK[0x52A8] + (STACK[0x5378] & (v370 ^ (2 * ((v329 << 16) & 0x79A00000 ^ v329 ^ ((v329 << 16) ^ 0x12F20000) & (((v373 ^ 0x61A090D2) << 8) & 0x79A00000 ^ 0x59200000 ^ (((v373 ^ 0x61A090D2) << 8) ^ 0xA0920000) & (v373 ^ 0x61A090D2)))) ^ 0x2C6DD070))) + (v353 >> 8);
  *&v353 = __ROR8__(*(STACK[0x52A8] + (STACK[0x5378] & (v370 ^ (2 * ((v329 << 16) & 0x79A00000 ^ v329 ^ ((v329 << 16) ^ 0x12F20000) & (((v373 ^ 0x61A090D2) << 8) & 0x79A00000 ^ 0x59200000 ^ (((v373 ^ 0x61A090D2) << 8) ^ 0xA0920000) & (v373 ^ 0x61A090D2)))) ^ 0x2C6DD070))), 61);
  v374 ^= 0x461B4ABFBB9B6CEEuLL;
  v375 = (v353 - ((2 * v353) & 0xA401C86D96F2953ALL) - 0x2DFF1BC93486B563) ^ v374;
  *&v353 = __ROR8__(v374, 8);
  v376 = (((v353 ^ 0xB987DAC5FD23EE5ELL) + 0x63BEB29ADEC75EBCLL) ^ ((v353 ^ 0x10285B8634773847) - 0x35EECC26E86C775DLL) ^ ((v353 ^ 0x201D8C583F701349) - 0x5DB1BF8E36B5C53)) + 0xC829A7C19FBA45ELL + (((v375 ^ 0xDD6834C0DE1A6F0DLL) + 0x2297CB3F21E590F3) ^ ((v375 ^ 0x7E263C809C51614FLL) - 0x7E263C809C51614FLL) ^ ((v375 ^ 0xC343F780ADF71456) + 0x3CBC087F5208EBAALL));
  *&v353 = __ROR8__(v375, 61);
  v377 = v376 ^ v353;
  v378 = ((((v376 << 56) ^ 0xCA3C4E4D2C12B276) - 0x4471085E5EEAC100) ^ (((v376 << 56) ^ 0x3D32E7B63582F5D2) + 0x4C805E5AB885795CLL) ^ (((v376 << 56) ^ 0xBE0EA9FB199047A4) - 0x3043EFE86B6834D2)) + ((((v376 >> 8) ^ 0xEE658681A54A95ACLL) + 0x5465DB206C17B873) ^ (((v376 >> 8) ^ 0x88948AC260399118) + 0x3294D763A964BCC7) ^ (((v376 >> 8) ^ 0x66E43E012B4FF4DELL) - 0x231B9C5F1DED26FFLL)) + (((v376 ^ v353 ^ 0x14B4850DDBA81271) - 0x5747BB001D6A8307) ^ ((v376 ^ v353 ^ 0x8B8114A33FE4A98DLL) + 0x378DD55106D9C705) ^ ((v376 ^ v353 ^ 0x8A682D47A55C0116) + 0x3664ECB59C616FA0)) + 0x63E65914D368C15DLL;
  v379 = v378 ^ __ROR8__(v377, 61);
  *&v353 = __ROR8__(v378 ^ 0xCC978A6395695DE5, 8);
  v380 = ((((v379 ^ 0x29495AAECFD4536CLL) + 0x17F17755F87A25D2) ^ ((v379 ^ 0x14BE242AC860EE2FLL) + 0x2A0609D1FFCE9893) ^ ((v379 ^ 0xB56F4D0937045388) - 0x74289F0DFF55DACALL)) + 0x2389E03452B93357 + (((v353 ^ 0x4BD714D0B18991CLL) + 0x5C059246099DF14ALL) ^ ((v353 ^ 0xF8A07F61431A8FB2) - 0x5FE76395BE601818) ^ ((v353 ^ 0x82F3EC72ECAF4ACALL) - 0x25B4F08611D5DD60))) ^ 0x51632EF958935351;
  v381 = __ROR8__(v380, 8);
  v382 = v380 ^ __ROR8__(v379 ^ 0xC147D204C8518942, 61);
  v383 = (((v381 ^ 0x69745612CB008E41) + 0xB2F1F36011034C2) ^ ((v381 ^ 0xEB914C1803C858FFLL) - 0x7635FAC336271D80) ^ ((v381 ^ 0xE51D63E82BEF8D1) + 0x6C0A9F1A48AE4252)) + (((v382 ^ 0x7006891544B546BELL) + 0x6D4A100CD6E71122) ^ ((v382 ^ 0xA420C14F68DC720BLL) - 0x4693A7A90571DA6BLL) ^ ((v382 ^ 0x2E15705F9D4C6773) + 0x3359E9460F1E30EDLL)) + 0x2990D9D35C2266B6;
  v384 = v383 ^ __ROR8__(v382 ^ 0xE2B366E66DADA860, 61);
  *&v353 = __ROR8__(v383 ^ 0xC7DDC9F6CC45B721, 8);
  v385 = ((v353 ^ 0x7DBED777DEFCE7FFLL) + ((2 * v353) & 0xFB7DAEEFBDF9CFFELL) + (((v384 ^ 0x24385C5FAF61092BLL) - 0x43E377D6FE23E65FLL) ^ ((v384 ^ 0xACDAAD29C6573786) + 0x34FE795F68EA270ELL) ^ ((v384 ^ 0x8B3DCF9E413454BCLL) + 0x13191BE8EF894438)) - 0x19BAC21665BC629ALL) ^ 0xA82620A559D2DA78;
  v386 = (v385 - ((2 * v385) & 0x380C92938F00CA0ALL) - 0x63F9B6B6387F9AFBLL) ^ __ROR8__(v384 ^ 0x67DB2B895142EF74, 61) ^ 0xBC26E2420D844E2ELL;
  v387 = (v386 + __ROR8__(v385, 8)) ^ 0x5F8DEC3EA3980A1BLL;
  v388 = __ROR8__(v387, 8) + (v387 ^ __ROR8__(v386, 61));
  v389 = STACK[0x5460] & 0x27358D69019B28F2;
  v390 = 8 * v348 + 40;
  v391 = v390 & 0x38 ^ 0xC;
  LOBYTE(v329) = v390 & 0x38 ^ 0x10;
  v392 = (v368 ^ 0xC1C3C8D2A4C54828) >> v329;
  v393 = 2 * ((v388 ^ 0x41C3C8D2A4C54828) << (v390 & 0x20 ^ 0x23u) << (v391 & 0x1C));
  v394 = (((v392 ^ 0xEB1F2541DCF85DB8) - 0x330420E0F64B589ALL) ^ ((v392 ^ 0xB7439B8A79E25D18) - 0x6F589E2B5351583ALL) ^ ((v392 ^ 0x5C5CBECBA51A00A0) + 0x7BB844957056FA7ELL)) - 0x728BBAAEA8AD0D77 + (((v393 ^ 0x74AA4BE4000E985ALL) + 0x3E0C8BABD36E8AC3) ^ ((v393 ^ 0x8E4F7014AB21FD2ALL) - 0x3B164FA487BE104DLL) ^ ((v393 ^ 0xFAE53BF0AB2F6570) - 0x4FBC044087B08817));
  v395 = (v388 ^ 0xC1C3C8D2A4C54828) >> v329;
  v396 = STACK[0x5470] + 0x139AC6B480CD9400 - v389 + 121;
  LODWORD(v389) = (LODWORD(STACK[0x5470]) - 2134010880 - v389 + 121) & 0xFFFFFFF8;
  LODWORD(v329) = (((v389 ^ 0x47D36CBD) + 1574093631) ^ ((v389 ^ 0x136BC2A6) + 157969702) ^ ((v389 ^ 0xD4753A63) - 831220255)) + 1997616267;
  LODWORD(v393) = (v329 ^ 0xC7F01C9E) & (2 * (v329 & 0xE7F51910)) ^ v329 & 0xE7F51910;
  v397 = ((2 * (v329 ^ 0x87303C9E)) ^ 0xC18A4B1C) & (v329 ^ 0x87303C9E) ^ (2 * (v329 ^ 0x87303C9E)) & 0x60C5258E;
  LODWORD(v393) = (v397 ^ 0x810002) & (4 * v393) ^ v393;
  v398 = ((4 * (v397 ^ 0x20452482)) ^ 0x83149638) & (v397 ^ 0x20452482) ^ (4 * (v397 ^ 0x20452482)) & 0x60C5258C;
  LODWORD(v393) = (v398 ^ 0x40406) & (16 * v393) ^ v393;
  v399 = ((16 * (v398 ^ 0x60C12186)) ^ 0xC5258E0) & (v398 ^ 0x60C12186) ^ (16 * (v398 ^ 0x60C12186)) & 0x60C52580;
  LODWORD(v393) = v393 ^ 0x60C5258E ^ (v399 ^ 0x40000E) & (v393 << 8);
  *(&v353 + 1) = v389 ^ 0x78;
  *&v353 = v396 ^ 0x139AC6B480CD9400;
  v400 = *(STACK[0x52A8] + (STACK[0x5378] & (v329 ^ (2 * ((v393 << 16) & 0x60C50000 ^ v393 ^ ((v393 << 16) ^ 0x258E0000) & (((v399 ^ 0x6085250E) << 8) & 0x60C50000 ^ 0x20C00000 ^ (((v399 ^ 0x6085250E) << 8) ^ 0x45250000) & (v399 ^ 0x6085250E)))) ^ 0x67775208))) + (v353 >> 8);
  *&v353 = __ROR8__(*(STACK[0x52A8] + (STACK[0x5378] & (v329 ^ (2 * ((v393 << 16) & 0x60C50000 ^ v393 ^ ((v393 << 16) ^ 0x258E0000) & (((v399 ^ 0x6085250E) << 8) & 0x60C50000 ^ 0x20C00000 ^ (((v399 ^ 0x6085250E) << 8) ^ 0x45250000) & (v399 ^ 0x6085250E)))) ^ 0x67775208))), 61);
  v400 ^= 0x7AFE78E33613FA8DuLL;
  v401 = (v353 - ((2 * v353) & 0xAF55F6C643C5E52ALL) - 0x2855049CDE1D0D6BLL) ^ v400;
  *&v353 = __ROR8__(v400, 8);
  v402 = ((((v353 ^ 0x19D0A9D74BCEF965) + 0x29D2B480A603279ALL) ^ ((v353 ^ 0x9CF872C31C2240CBLL) - 0x5305906B0E1061C8) ^ ((v353 ^ 0x6FA6333DFD45F468) + 0x5FA42E6A10882A95)) + 0x7EB5DD4B414AA144 + (((v401 ^ 0x65587A1E2766C8DBLL) - 0x65587A1E2766C8DBLL) ^ ((v401 ^ 0xA76B9EBB34BC6221) + 0x58946144CB439DDFLL) ^ ((v401 ^ 0x9B71366C9B759E85) + 0x648EC993648A617BLL))) ^ 0xC501E5F40F9E52E8;
  v403 = v402 ^ __ROR8__(v401, 61);
  *&v353 = __ROR8__(v402, 8);
  v404 = (((v353 ^ 0x9CCF3FB6879AAC40) + 0x73309F0802D25378) ^ ((v353 ^ 0x38EB7B0F25EBB67) - 0x138EE8F188E9BBAFLL) ^ ((v353 ^ 0x3E91BBA16FF7791FLL) - 0x2E91E4E0154079D7)) + (((v403 ^ 0x345F0FF74AC6C962) + 0x7C2F59A3CBAF236BLL) ^ ((v403 ^ 0xD142371E59502178) - 0x66CD9EB527C6348FLL) ^ ((v403 ^ 0xFF3809BF65817341) - 0x48B7A0141B1766B6)) + 0x5F7B05E36905FD9CLL;
  v405 = v404 ^ __ROR8__(v403 ^ 0xB78FA9AB7E9615F7, 61);
  *&v353 = __ROR8__(v404 ^ 0xD92E98711F10F5D4, 8);
  v406 = (((v405 ^ 0x195F871EE55A4097) + 0x3E5AA64F72E695D4) ^ ((v405 ^ 0x4C4938FD21BAC0F7) + 0x6B4C19ACB60615B4) ^ ((v405 ^ 0x1A37ACCCB8D9CC9ELL) + 0x3D328D9D2F6519DBLL)) + 0x7372A45138B21DC5 + (((v353 ^ 0xA085E31C5996A5ADLL) - 0x34E86E80CB8637E1) ^ ((v353 ^ 0xD895E47A790112B4) - 0x4CF869E6EB1180F8) ^ ((v353 ^ 0x37EB5C2A96B092D5) + 0x5C792E49FB5FFF67));
  v407 = v406 ^ __ROR8__(v405 ^ 0xD8FADEAE68432ABBLL, 61);
  *&v353 = __ROR8__(v406 ^ 0xB1B1FFB019F9750DLL, 8);
  v408 = ((((v407 ^ 0xAE88AFC283F6EC3) - 0x5EF27FF6D37FA7C9) ^ ((v407 ^ 0x37D353FD21F698AFLL) - 0x63C9A6F7DAB651A5) ^ ((v407 ^ 0x664AAFBA84A7F89DLL) - 0x32505AB07FE73197)) - 0x120410A6A32738FLL + (((v353 ^ 0x3342F0E892E419B5) - 0xC62D5498E4D998ALL) ^ ((v353 ^ 0x6F31BAE60D0BCA30) - 0x50119F4711A24A0FLL) ^ ((v353 ^ 0x8C2754EB9CD897CCLL) + 0x4CF88EB57F8EE80DLL))) ^ 0xE11CA276111A7951;
  v409 = __ROR8__(v408, 8);
  v410 = v408 ^ __ROR8__(v407 ^ 0x541AF50AFB40C90ALL, 61);
  v411 = (((v409 ^ 0xCFCD66C5435D0F0DLL) + 0x30ACF41D45EFF43) ^ ((v409 ^ 0xCBC707D69E41556CLL) + 0x700AE520942A524) ^ ((v409 ^ 0x742CA0785DC105AFLL) - 0x4714F603353D0A1FLL)) + (((v410 ^ 0x59B0FC05F9EC2391) - 0x2DD8869F84F05361) ^ ((v410 ^ 0xC96C1E870198B168) + 0x42FB9BE2837B3E68) ^ ((v410 ^ 0xCD419489945D6351) + 0x46D611EC16BEEC5FLL));
  v412 = (v411 - ((2 * (v411 + 0x6D13A3A1F956D1D6)) & 0x29FDC4D7A084ECB0) + 0x212860DC999482ELL) ^ __ROR8__(v410 ^ 0x74687A9A7D1C70F0, 61) ^ 0x7370A646003CA6E1;
  *&v353 = __ROR8__((v411 + 0x6D13A3A1F956D1D6) ^ 0xA82620A559D2DA78, 8);
  v413 = v412 + v353 + 0x5F8DEC3EA3980A1BLL - ((2 * (v412 + v353)) & 0xBF1BD87D47301436);
  v414 = 2 * (((((v412 + v353) ^ 0x5F8DEC3EA3980A1BLL ^ __ROR8__(v412, 61)) + (v413 << 56) + (v413 >> 8)) ^ 0x41C3C8D2A4C54828) << (v390 & 0x30 ^ 0x22u) << (v391 & 0xC | 1u));
  v415 = (((v395 ^ 0x2CC3F3FB5F7744E8) - 0x4ED274214585CB4BLL) ^ ((v395 ^ 0x6CF1965E21F60EF9) - 0xEE011843B04815ALL) ^ ((v395 ^ 0x403265A57E814A11) - 0x2223E27F6473C5B2)) - 0x4CED44F2C507AADCLL + (((v414 ^ 0xADF372B56269DFABLL) + 0x30DBE79BD93E5D6) ^ ((v414 ^ 0x6569EDFA7EAC9408) - 0x3468DEC95EA95189) ^ ((v414 ^ 0xC89A9F4F1CC54BA3) + 0x66645383C33F71DELL));
  LODWORD(v414) = *(v331 + (v392 ^ 0xDCLL)) << 24;
  LODWORD(v411) = (((v394 - ((2 * v394) & 0xE5EC9CDE) - 218739089) >> 16) ^ *(v330 + (((v394 - ((2 * v394) & 0xE5EC9CDE) - 218739089) >> 16) ^ 0xECLL))) << 8;
  LODWORD(v392) = *(v336 + (BYTE3(v394) ^ 0xB9));
  LODWORD(v414) = ((v411 & 0x1D00 | (v411 ^ 0xFFFF7FFF) & ((((*(v336 + (BYTE1(v394) ^ 0x48)) << 16) ^ 0xD0524158) & (v414 ^ 0x73FFD558) | v414 & 0x2F000000) ^ 0xE1DEA311)) ^ 0xA2FFDFD5) & (v392 ^ 0xFFFFFFD3);
  v416 = (BYTE4(v394) ^ -BYTE4(v394) ^ (75 - (BYTE4(v394) ^ 0x4Bu))) + 75;
  LODWORD(v413) = *(v331 + (BYTE5(v394) ^ 0xA6)) << 16;
  LODWORD(v416) = ((((v416 - ((2 * v416) & 0x9A) - 51) ^ *(v330 + (v416 ^ 0xEF))) << 24) ^ 0xFC682689) & (v413 ^ 0xFF423FAB) | v413 & 0x970000;
  LODWORD(v413) = *(v331 + (BYTE6(v394) ^ 0x9DLL)) << 8;
  LODWORD(v394) = *(v336 + (HIBYTE(v394) ^ 0x4C));
  v417 = ((v416 ^ 0x545F5CA3) & (v413 ^ 0xFFFFEBAB) ^ ((v413 & 0xCFD985F6 | 0x30263209) + 3794)) & (v394 ^ 0xFFFFFF23);
  LODWORD(v395) = *(v331 + (v395 ^ 0xC2)) ^ 0xC0;
  LODWORD(v416) = ((*(v331 + (BYTE1(v415) ^ 0x2CLL)) << 16) ^ 0xF913499D) & ((v395 << 24) ^ 0x25FF4DDF) & 0xF9FFFFFF | (((v395 >> 1) & 3) << 25);
  LODWORD(v395) = *(v339 + (BYTE3(v415) ^ 0xCCLL));
  LODWORD(v395) = v395 & 0xFFFFFFF7 ^ 0x48CF4DC8 ^ (v416 ^ 0xFC4CF895) & (v395 ^ 0xFFFFFD4B);
  LODWORD(v416) = *(v336 + (BYTE2(v415) ^ 0x93)) << 8;
  LODWORD(v395) = v395 & ~v416 | v416 & 0x300;
  LODWORD(v416) = (*(v339 + (BYTE4(v415) ^ 0xC7)) ^ 0xB5) << 24;
  LODWORD(v416) = ((*(v339 + (BYTE5(v415) ^ 0xCFLL)) << 16) ^ 0x6635C82C) & (v416 ^ 0x9FFFE8AF) | v416 & 0x99000000;
  LODWORD(v415) = *(v331 + (HIBYTE(v415) ^ 0xEB));
  LODWORD(v416) = v347 ^ v346 & 0xB1 ^ v416 & 0xC9D10004 ^ ((((*(v331 + (BYTE6(v415) ^ 0x33)) << 8) ^ 0x7AD17FB1) & (v415 ^ 0x7AFDFF34) | v415 & 0x4E) ^ 0x4CFF4791) & (v416 ^ 0x9E737D3);
  v418 = STACK[0x5338];
  LODWORD(v413) = *(STACK[0x5338] + 4 * (BYTE2(v416) ^ 0x12u));
  DWORD1(v353) = v413 ^ 0xFE3CE75;
  LODWORD(v353) = v413 ^ 0x55555555;
  LODWORD(v413) = v353 >> 28;
  v419 = STACK[0x52A0];
  v420 = *(STACK[0x52A0] + 4 * (BYTE3(v416) ^ 0x1A));
  LODWORD(v415) = *(STACK[0x5338] + 4 * (BYTE1(v416) ^ 0x2Cu));
  DWORD1(v353) = v415 ^ 0xFE3CE75;
  LODWORD(v353) = v415 ^ 0x55555555;
  v421 = v350 & 0x240000 ^ LODWORD(STACK[0x5660]) ^ v392 & 0x63;
  LODWORD(v392) = *(STACK[0x52A0] + 4 * (v416 ^ 0x52u)) ^ 0x1EFFBABA;
  v422 = v421 ^ v392 ^ (8 * v392 + 226072400) ^ __ROR4__(v413 ^ (4 * v413) ^ 0xD7AAAFC5, 16) ^ __ROR4__(v420 ^ 0x8012E224 ^ (((8 * v420) ^ 0xF7FDD5D0) + 226072400), 8) ^ __ROR4__((v353 >> 28) ^ (4 * (v353 >> 28)) ^ 0xD7AAAFC5, 24) ^ v414 ^ 0x4246F035;
  LODWORD(v414) = LODWORD(STACK[0x5790]) ^ v337 & 0x9511FB96 ^ v394 & 0xE ^ v417;
  LODWORD(v353) = __ROR4__(v345 & 0xCB00 ^ LODWORD(STACK[0x5450]) ^ v395 ^ v414 ^ 0xAFDB27E8 ^ v422, 16) ^ 0x86B033D3;
  DWORD1(v353) = v353;
  v423 = v353 >> 16;
  v424 = STACK[0x5340];
  LODWORD(v395) = *(STACK[0x5340] + 4 * (((WORD1(v353) ^ v416 ^ 0xAFCB) >> 8) ^ 4u));
  v425 = STACK[0x52E0];
  LODWORD(v392) = *(STACK[0x5340] + 4 * (((v423 ^ v416) >> 24) ^ 9));
  v426 = *(STACK[0x5338] + 4 * ((BYTE2(v353) ^ v416) ^ 0xF6u));
  DWORD1(v353) = v426 ^ 0xFE3CE75;
  LODWORD(v353) = v426 ^ 0x55555555;
  LODWORD(v395) = (v353 >> 28) ^ (4 * (v353 >> 28)) ^ __ROR4__(v395 ^ ((v395 ^ 0xC3208E3F) >> 3) ^ ((v395 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 24) ^ __ROR4__(v392 ^ ((v392 ^ 0xC3208E3F) >> 3) ^ ((v392 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 8) ^ __ROR4__(*(STACK[0x52E0] + 4 * (((v423 ^ v416) >> 16) ^ 0x6Fu)) ^ ((((v423 ^ v416) >> 16) ^ 0x2D31DC0E) + (((v423 ^ v416) >> 16) ^ 0x8B)) ^ 0x3741B392, 16);
  v427 = v423 ^ v416 ^ 0x35948A79;
  v428 = v395 ^ v414;
  LODWORD(v414) = v395 ^ v414 ^ v423;
  LODWORD(STACK[0x5660]) = v414 ^ 0xBAFCEE68;
  LODWORD(v416) = ((v414 ^ 0xBAFCEE68) - ((2 * (v414 ^ 0xBAFCEE68)) & 0x72BD4970) - 1184979784) ^ v427;
  v429 = (((v414 ^ 0x68) - ((2 * (v414 ^ 0x68)) & 0x70) - 72) ^ v427);
  v430 = *(v425 + 4 * (v429 ^ 0xDBu)) ^ v422 ^ v395 ^ ((v416 ^ 0x2D31DCBA) + (v429 ^ 0x3F)) ^ 0x19BE1EE2;
  LODWORD(v395) = *(v425 + 4 * (((v416 ^ 0x3714B17E) >> 24) ^ 0xA5)) ^ ((((v416 ^ 0x3714B17E) >> 24) ^ 0x2D31DCC4) + (((v416 ^ 0x3714B17E) >> 24) ^ 0x41)) ^ 0x3741B392;
  LODWORD(v392) = ((v416 ^ 0x3714B17E) >> 16);
  LODWORD(v416) = *(v424 + 4 * (BYTE1(v416) ^ 0x34u));
  DWORD1(v353) = v416 ^ ((v416 ^ 0xC3208E3F) >> 3) ^ ((v416 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF;
  LODWORD(v353) = DWORD1(v353);
  LODWORD(v395) = (v353 >> 24) ^ __ROR4__(v395, 8) ^ __ROR4__(*(v425 + 4 * (v392 ^ 0xA5)) ^ ((v392 ^ 0x41) + (v392 ^ 0x2D31DCC4)) ^ 0x3741B392, 16) ^ __ROR4__(__ROR4__(v430, 8) ^ 0x22771176, 24) ^ 0xDFA92C09;
  v431 = (v395 - ((2 * v395) & 0x1896480E) - 1941232633) ^ v428;
  v432 = v431 ^ 0xD74C4EC2;
  v433 = (v432 - ((2 * v432) & 0x72BD4970) - 1184979784) ^ v427;
  LODWORD(v413) = *(v424 + 4 * (BYTE1(v433) ^ 0x85u));
  v434 = *(v419 + 4 * (HIBYTE(v433) ^ 0x40));
  LODWORD(v395) = *(v425 + 4 * (v433 ^ 0xA5u)) ^ __ROR4__(v413 ^ ((v413 ^ 0xC3208E3F) >> 3) ^ ((v413 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 24) ^ __ROR4__(v434 ^ 0x8012E224 ^ (((8 * v434) ^ 0xF7FDD5D0) + 226072400), 8) ^ v395 ^ (LODWORD(STACK[0x53E8]) + 2 * ((v433 ^ 0x41) & (v433 ^ 0x2D31DCC4))) ^ __ROR4__(*(v425 + 4 * (BYTE2(v433) ^ 0xA5u)) ^ ((BYTE2(v433) ^ 0x41) + (BYTE2(v433) ^ 0x2D31DCC4)) ^ 0x3741B392, 16);
  LODWORD(v414) = v414 ^ 0x8DE85F16 ^ v395;
  LODWORD(v392) = *(v424 + 4 * (((v414 ^ v433) >> 24) ^ 0xDA));
  v435 = *(v418 + 4 * (((v414 ^ v433) >> 8) ^ 0x84u));
  DWORD1(v353) = v435 ^ 0xFE3CE75;
  LODWORD(v353) = v435 ^ 0x55555555;
  LODWORD(v416) = *(v424 + 4 * ((v414 ^ v433) ^ 0x17u)) ^ 0xC3208E3F;
  LODWORD(v416) = v416 ^ (v416 >> 3) ^ (v416 >> 2) ^ __ROR4__(v392 ^ ((v392 ^ 0xC3208E3F) >> 3) ^ ((v392 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 8) ^ __ROR4__((v353 >> 28) ^ (4 * (v353 >> 28)) ^ 0xD7AAAFC5, 24) ^ __ROR4__(*(v425 + 4 * (((v414 ^ v433) >> 16) ^ 0xE4u)) ^ ((((v414 ^ v433) >> 16) ^ LODWORD(STACK[0x53E8])) + ((v414 ^ v433) >> 16)) ^ 0x3741B392, 16);
  v436 = v416 ^ v395;
  v437 = v416 ^ v431;
  v438 = v416 ^ v431 ^ 0xF6E24212;
  v439 = v438 ^ v433;
  v440 = v425;
  LODWORD(v395) = *(v419 + 4 * (((v438 ^ v433) >> 16) ^ 0x40u));
  v441 = *(v425 + 4 * ((v416 ^ v431) ^ 0x12 ^ v433 ^ 0xA5u)) ^ __ROR4__(v395 ^ 0x8012E224 ^ (((8 * v395) ^ 0xF7FDD5D0) + 226072400), 16) ^ v436 ^ (((v416 ^ v431) ^ 0x12 ^ v433 ^ 0x2D31DCC4) + ((v416 ^ v431) ^ 0x12 ^ v433 ^ 0x41)) ^ __ROR4__(*(v425 + 4 * (HIBYTE(v439) ^ 0xA5)) ^ ((HIBYTE(v439) ^ 0x2D31DCC4) + (HIBYTE(v439) ^ 0x41)) ^ 0x3741B392, 8) ^ __ROR4__(*(v425 + 4 * (BYTE1(v439) ^ 0xA5u)) ^ ((BYTE1(v439) ^ 0x2D31DCC4) + (BYTE1(v439) ^ 0x41)) ^ 0x3741B392, 24);
  LODWORD(STACK[0x5610]) = v441;
  LODWORD(STACK[0x5790]) = v438 ^ v414;
  v442 = v441 ^ 0x7EEFBF42;
  LODWORD(STACK[0x5650]) = v441 ^ 0x7EEFBF42 ^ v438;
  v443 = v441 ^ 0x7EEFBF42 ^ v438 ^ v438 ^ v414;
  LODWORD(STACK[0x5590]) = v443 ^ 0x5F41B392;
  v444 = v443 ^ 0x5F41B392 ^ v438 ^ v433;
  v445 = *(v418 + 4 * (HIBYTE(v444) ^ 0xE));
  v446 = STACK[0x5270];
  v447 = STACK[0x5268];
  if (v323)
  {
    v448 = STACK[0x5268];
  }

  else
  {
    v448 = STACK[0x5270];
  }

  LODWORD(STACK[0x53C8]) = v448;
  if (v323)
  {
    v449 = v446;
  }

  else
  {
    v449 = v447;
  }

  LODWORD(STACK[0x5530]) = v449;
  HIDWORD(v450) = v445 ^ 0xFE3CE75;
  LODWORD(v450) = v445 ^ 0x55555555;
  LODWORD(STACK[0x53E8]) = v444 ^ 0x3941B392;
  v451 = ((v444 ^ 0xB392) >> 8);
  v452 = *(v419 + 4 * (BYTE2(v444) ^ 1u));
  v453 = *(v424 + 4 * (v444 ^ 0x17u)) ^ 0xC3208E3F;
  v454 = v453 ^ (v453 >> 3) ^ (v453 >> 2) ^ __ROR4__((v450 >> 28) ^ (4 * (v450 >> 28)) ^ 0xD7AAAFC5, 8) ^ __ROR4__(v452 ^ 0x8012E224 ^ (((8 * v452) ^ 0xF7FDD5D0) + 226072400), 16) ^ __ROR4__(*(v440 + 4 * (v451 ^ 0xA5u)) ^ ((v451 ^ 0x2D31DCC4) + (v451 ^ 0x41)) ^ 0x3741B392, 24);
  v455 = v442 ^ v454;
  v456 = v437 ^ 0x7C4C4EC2 ^ v454;
  v457 = *(v419 + 4 * (((v456 ^ v439) >> 24) ^ 0x40));
  v458 = v418;
  v459 = *(v418 + 4 * ((((v456 ^ v439) >> 8) ^ 0x73) - ((2 * (((v456 ^ v439) >> 8) ^ 0x73)) & 0x88888888) + 68));
  HIDWORD(v450) = v459 ^ 0xFE3CE75;
  LODWORD(v450) = v459 ^ 0x55555555;
  v460 = v450 >> 28;
  v461 = *(v418 + 4 * (((v456 ^ v439) >> 16) ^ 0x37u));
  HIDWORD(v450) = v461 ^ 0xFE3CE75;
  LODWORD(v450) = v461 ^ 0x55555555;
  v462 = *(v440 + 4 * ((v456 ^ v439) ^ 0xA5u)) ^ __ROR4__(v457 ^ 0x8012E224 ^ (((8 * v457) ^ 0xF7FDD5D0) + 226072400), 8) ^ __ROR4__(v460 ^ (4 * v460) ^ 0xD7AAAFC5, 24) ^ __ROR4__((v450 >> 28) ^ (4 * (v450 >> 28)) ^ 0xD7AAAFC5, 16) ^ v455 ^ (((v456 ^ v439) ^ 0x41) + ((v456 ^ v439) ^ 0x2D31DCC4));
  v463 = v443 ^ 0xD5EFBF42 ^ v462;
  v464 = v463 ^ v456 ^ v439;
  v465 = *(v424 + 4 * (HIBYTE(v464) ^ 0x62));
  v466 = v464 ^ 0xE741B392;
  v467 = *(v418 + 4 * (v443 ^ 0x42 ^ v462 ^ (v456 ^ v439) ^ 0xA5u));
  HIDWORD(v450) = v467 ^ 0xFE3CE75;
  LODWORD(v450) = v467 ^ 0x55555555;
  v468 = *(v419 + 4 * (BYTE1(v464) ^ 0xF3u));
  v469 = v468 ^ 0x8012E224 ^ (((8 * v468) ^ 0xF7FDD5D0) + 226072400);
  v470 = (v450 >> 28) ^ (4 * (v450 >> 28)) ^ __ROR4__(v465 ^ ((v465 ^ 0xC3208E3F) >> 3) ^ ((v465 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 8) ^ HIBYTE(v469) ^ v462 ^ (v469 << (STACK[0x5780] & 8) << (STACK[0x5780] & 8 ^ 8)) ^ __ROR4__(*(v440 + 4 * (BYTE2(v466) ^ 0xA5u)) ^ ((BYTE2(v466) ^ 0x2D31DCC4) + (BYTE2(v466) ^ 0x41)) ^ 0x3741B392, 16);
  v471 = v456 ^ v443;
  v472 = v470 ^ 0xB604A315;
  v473 = v456 ^ v443 ^ 0x8141B392 ^ v470 ^ 0xB604A315;
  v474 = v473 ^ v464;
  v475 = *(v424 + 4 * (((v473 ^ v464) >> 16) ^ 0x85u));
  v476 = *(v419 + 4 * (((v473 ^ v464) >> 24) ^ 0x40));
  v477 = *(v458 + 4 * (((v473 ^ v464) >> 8) ^ 0x37u));
  HIDWORD(v450) = v477 ^ 0xFE3CE75;
  LODWORD(v450) = v477 ^ 0x55555555;
  v478 = *(v424 + 4 * ((v473 ^ v464) ^ 0x85u)) ^ 0xC3208E3F;
  v479 = v478 ^ (v478 >> 3) ^ (v478 >> 2) ^ __ROR4__(v475 ^ ((v475 ^ 0xC3208E3F) >> 3) ^ ((v475 ^ 0xC3208E3F) >> 2) ^ 0x468E82EF, 16) ^ __ROR4__(v476 ^ 0x8012E224 ^ (((8 * v476) ^ 0xF7FDD5D0) + 226072400), 8) ^ __ROR4__((v450 >> 28) ^ (4 * (v450 >> 28)) ^ 0xD7AAAFC5, 24);
  v480 = (LODWORD(STACK[0x5660]) ^ v432 ^ LODWORD(STACK[0x5580])) - ((2 * (LODWORD(STACK[0x5660]) ^ v432 ^ LODWORD(STACK[0x5580]))) & 0x57F9F5B0);
  v481 = v439 - ((2 * v439) & 0x17042D98);
  v482 = STACK[0x54E0];
  v483 = (v471 ^ 0x68000000) - ((2 * (v471 ^ 0x68000000)) & 0x17042D98);
  v484 = (v456 ^ v439 ^ v482) - ((2 * (v456 ^ v439 ^ v482)) & 0x17042D98);
  v485 = (v456 ^ v482) - ((2 * (v456 ^ v482)) & 0x17042D98);
  v486 = v462 ^ v456;
  v487 = v479 ^ v486 ^ 0x54AE0CD0;
  LODWORD(STACK[0x5660]) = (LODWORD(STACK[0x54D0]) ^ (LODWORD(STACK[0x5280]) + 813203835) ^ ((v466 ^ v487 ^ LODWORD(STACK[0x5288])) - (v466 ^ v487 ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x54D0])))) + (v466 ^ v487 ^ LODWORD(STACK[0x5288]));
  v488 = (v466 ^ LODWORD(STACK[0x5358])) + (LODWORD(STACK[0x5320]) ^ 0x578A6F0A ^ (v480 - 1409484072));
  v489 = LODWORD(STACK[0x52E8]) ^ (v436 - ((2 * v436) & 0x17042D98) - 1954408756) ^ 0xC937E6F7;
  v490 = STACK[0x52F0];
  LODWORD(STACK[0x5280]) = LODWORD(STACK[0x52F0]) ^ (v438 - ((2 * v438) & 0x17042D98) - 1954408756);
  v491 = v490 ^ (v481 - 1954408756);
  v492 = v488 + 1431797362;
  if (v323)
  {
    v493 = STACK[0x55C0];
  }

  else
  {
    v493 = STACK[0x55D0];
  }

  v494 = STACK[0x5760];
  if (v323)
  {
    v494 = STACK[0x5750];
  }

  LODWORD(STACK[0x55B0]) = v494;
  if (v323)
  {
    v495 = STACK[0x5720];
  }

  else
  {
    v495 = STACK[0x5730];
  }

  LODWORD(STACK[0x5440]) = v495;
  if (v323)
  {
    v496 = STACK[0x5560];
  }

  else
  {
    v496 = STACK[0x5550];
  }

  LODWORD(STACK[0x5470]) = v496;
  if (v323)
  {
    v497 = STACK[0x5520];
  }

  else
  {
    v497 = STACK[0x5540];
  }

  LODWORD(STACK[0x5258]) = v497;
  if (v323)
  {
    v498 = STACK[0x5620];
  }

  else
  {
    v498 = STACK[0x5600];
  }

  if (v323)
  {
    v499 = STACK[0x5510];
  }

  else
  {
    v499 = STACK[0x5500];
  }

  v500 = STACK[0x5710];
  if (v323)
  {
    v500 = STACK[0x5700];
  }

  LODWORD(STACK[0x55E0]) = v500;
  if (v323)
  {
    v501 = STACK[0x54F0];
  }

  else
  {
    v501 = STACK[0x5408];
  }

  LODWORD(STACK[0x5378]) = v501;
  if (v323)
  {
    v502 = STACK[0x5400];
  }

  else
  {
    v502 = STACK[0x53F8];
  }

  LODWORD(STACK[0x5450]) = v502;
  if (v323)
  {
    v503 = STACK[0x56E0];
  }

  else
  {
    v503 = STACK[0x56F0];
  }

  if (v492)
  {
    v504 = v489;
  }

  else
  {
    v504 = v491;
  }

  LODWORD(STACK[0x5340]) = v504;
  v505 = LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x53E8]);
  v506 = LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5610]) ^ 0x8DB452E2;
  v507 = LODWORD(STACK[0x5330]) ^ 0xF35BEDA0 ^ LODWORD(STACK[0x5590]);
  v508 = LODWORD(STACK[0x5330]) ^ 0xF35BEDA0 ^ LODWORD(STACK[0x5650]);
  v509 = LODWORD(STACK[0x5570]) ^ 0xAE462FC5 ^ ((v455 ^ v482) - ((2 * (v455 ^ v482)) & 0x17042D98) - 1954408756);
  v510 = LODWORD(STACK[0x5570]) ^ 0x1DA99087 ^ (v485 - 1954408756);
  v511 = LODWORD(STACK[0x5570]) ^ 0x1DA99087 ^ (v484 - 1954408756);
  v512 = LODWORD(STACK[0x5290]) ^ (v483 - 1954408756) ^ 0x615BD009;
  v513 = (v466 ^ LODWORD(STACK[0x5308])) & 0x7FFFFFFF ^ 0x3A6CEC6C ^ (((v466 ^ LODWORD(STACK[0x5308])) & 0x80000000) + LODWORD(STACK[0x5300]));
  v514 = LODWORD(STACK[0x5298]) ^ v463 ^ 0xDD2D5FFE;
  v515 = LODWORD(STACK[0x5298]) ^ 0x6EC2E0BC ^ v462;
  v516 = LODWORD(STACK[0x5298]) ^ 0x6EC2E0BC ^ v486;
  v517 = LODWORD(STACK[0x5370]) ^ v474;
  v518 = LODWORD(STACK[0x5370]) ^ v472;
  v519 = v472 ^ LODWORD(STACK[0x5350]) ^ v486 ^ 0xE458EF42;
  v520 = LODWORD(STACK[0x57A0]) ^ v472 ^ 0x9DC3EB4B ^ v479;
  v521 = LODWORD(STACK[0x5350]) ^ 0x57B75000 ^ v473;
  v522 = LODWORD(STACK[0x57A0]) ^ v487 ^ v473 ^ 0x7A8258D9;
  v523 = LODWORD(STACK[0x57A0]) ^ v487 ^ 0x9DC3EB4B;
  v524 = LODWORD(STACK[0x5660]) ^ 0x9DC3EB4B;
  LODWORD(STACK[0x51B0]) = v522;
  if (v492)
  {
    v525 = v522;
  }

  else
  {
    v525 = v523;
  }

  if (v492)
  {
    v526 = v523;
  }

  else
  {
    v526 = v520;
  }

  LODWORD(STACK[0x53E8]) = v526;
  LODWORD(STACK[0x51A8]) = v524;
  if (v492)
  {
    v527 = v520;
  }

  else
  {
    v527 = v524;
  }

  LODWORD(STACK[0x52F0]) = v505;
  LODWORD(STACK[0x5270]) = v507;
  if (v492)
  {
    v528 = v505;
  }

  else
  {
    v528 = v507;
  }

  LODWORD(STACK[0x5278]) = v506;
  LODWORD(STACK[0x5268]) = v508;
  if (v492)
  {
    v506 = v508;
  }

  LODWORD(STACK[0x5260]) = v509;
  LODWORD(STACK[0x5250]) = v510;
  if (v492)
  {
    v529 = v510;
  }

  else
  {
    v529 = v509;
  }

  LODWORD(STACK[0x5228]) = v511;
  LODWORD(STACK[0x5210]) = v512;
  if (v492)
  {
    v530 = v511;
  }

  else
  {
    v530 = v512;
  }

  LODWORD(STACK[0x51F8]) = v516;
  LODWORD(STACK[0x51E0]) = v515;
  if (v492)
  {
    v531 = v516;
  }

  else
  {
    v531 = v515;
  }

  LODWORD(STACK[0x5208]) = v513;
  LODWORD(STACK[0x5200]) = v514;
  if (v492)
  {
    v532 = v513;
  }

  else
  {
    v532 = v514;
  }

  LODWORD(STACK[0x51D8]) = v517;
  LODWORD(STACK[0x51D0]) = v518;
  if (v492)
  {
    v533 = v518;
  }

  else
  {
    v533 = v517;
  }

  LODWORD(STACK[0x51C8]) = v519;
  LODWORD(STACK[0x51C0]) = v521;
  if (v492)
  {
    v534 = v521;
  }

  else
  {
    v534 = v519;
  }

  LODWORD(STACK[0x5610]) = v492;
  if ((v492 & 2) != 0)
  {
    v535 = v530;
  }

  else
  {
    v535 = v529;
  }

  LODWORD(STACK[0x52A8]) = v535;
  if ((v492 & 2) != 0)
  {
    v536 = v529;
  }

  else
  {
    v536 = v530;
  }

  LODWORD(STACK[0x5298]) = v536;
  LODWORD(STACK[0x5358]) = v503;
  v537 = (v503 - 1831354461) ^ LODWORD(STACK[0xDB4]);
  LODWORD(STACK[0x5368]) = v493;
  v538 = v493 - LODWORD(STACK[0x5670]) - 603628607;
  STACK[0x57A0] = STACK[0xD3F0] - 0x309E3E9C99932E38;
  v539 = v538 + v537;
  LODWORD(STACK[0x52E8]) = v528;
  LODWORD(STACK[0x52E0]) = v506;
  if ((v492 & 2) != 0)
  {
    v540 = v528;
  }

  else
  {
    v540 = v506;
  }

  LODWORD(STACK[0x52A0]) = v540;
  LODWORD(STACK[0x5220]) = v531;
  LODWORD(STACK[0x5218]) = v532;
  if ((v492 & 2) != 0)
  {
    v541 = v531;
  }

  else
  {
    v541 = v532;
  }

  LODWORD(STACK[0x5290]) = v541;
  LODWORD(STACK[0x5370]) = v533;
  LODWORD(STACK[0x5350]) = v534;
  if ((v492 & 2) != 0)
  {
    v542 = v533;
  }

  else
  {
    v542 = v534;
  }

  LODWORD(STACK[0x5288]) = v542;
  LODWORD(STACK[0x5330]) = v525;
  LODWORD(STACK[0x52F8]) = v527;
  if ((v492 & 2) != 0)
  {
    v543 = v525;
  }

  else
  {
    v543 = v527;
  }

  LODWORD(STACK[0x5230]) = v543;
  v544 = (23802 * (LODWORD(STACK[0x57B0]) > 0xBF4591E6)) ^ (LODWORD(STACK[0x57B0]) + 1697397746);
  v545 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5310]);
  v546 = STACK[0x5360];
  LODWORD(STACK[0x51A0]) = v545;
  LODWORD(STACK[0x5198]) = v546 | ~(2 * v545);
  LODWORD(STACK[0x5460]) = v498;
  v547 = ((v498 ^ 0x3C9E6EBA) + 1167576148) ^ LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x5360]) = v499;
  v548 = 2 * (v547 - v499) - 980619912;
  v549 = (v539 >> 1) + 1984063823;
  v550 = 2 * (((LODWORD(STACK[0x5640]) + 686551309) ^ LODWORD(STACK[0x55B0])) + 1325529291 - LODWORD(STACK[0x55E0])) - 1145801594;
  v551 = *(STACK[0x57D8] + 8 * v544);
  LODWORD(STACK[0x5590]) = v549;
  LODWORD(STACK[0x5650]) = v548;
  LODWORD(STACK[0x5660]) = v550;
  STACK[0x5790] = STACK[0xD3E8];
  STACK[0x57B0] = (LODWORD(STACK[0x57C0]) - 8384);
  return v551();
}

uint64_t sub_10070A44C()
{
  LODWORD(STACK[0x9F48]) = -143113071;
  LOBYTE(STACK[0xA90F]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 + 26)))();
}

uint64_t sub_10070A480()
{
  v0 = (STACK[0x51B8] - 1808783447) & 0x6BCF95EF;
  v1 = STACK[0x51B8] - 19581;
  STACK[0xB158] = STACK[0x67B8] + SLODWORD(STACK[0x84A4]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1321) + v1)))();
}

uint64_t sub_10070A514(unint64_t a1)
{
  v2 = v1 | 0x1088;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * (v2 ^ 0x6BE9));
  STACK[0x57C0] = a1;
  v5 = v4();
  v6 = v5 == (*(v3 + 8 * (v2 + 25824)))();
  return (*(v3 + 8 * ((v6 * (((v2 ^ 0x152) + 14536) ^ (v2 + 14347))) ^ v2)))();
}

uint64_t sub_10070A5C8(uint64_t a1, uint64_t a2, int a3)
{
  if (v4)
  {
    v5 = v3 == a3 - 1267835965;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  return (*(STACK[0x57D8] + 8 * ((v6 * (((a3 + 1760882367) & 0x970AED7F) - 18440)) ^ a3)))();
}

uint64_t sub_10070A628()
{
  v1 = STACK[0xA2A0];
  v2 = *(STACK[0xA2A0] - 0x1883660EE814440ALL) - 769884012 + (((LODWORD(STACK[0x82A4]) ^ 0x8A570166) + 1974009498) ^ (((v0 - 6864) | 4) + (LODWORD(STACK[0x82A4]) ^ 0xEAC5D5C5) + 356110821) ^ ((LODWORD(STACK[0x82A4]) ^ ((v0 ^ 0x7B08) - 1299297267)) + 1299295177));
  LODWORD(STACK[0xDFAC]) = v2;
  v3 = *(v1 - 0x1883660EE814440ELL) + 1516349173;
  v2 += 1516349173;
  v4 = v2 < 0xD7AB1B71;
  v5 = v3 < v2;
  if (v3 < 0xD7AB1B71 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x6240] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDFB0]) = v8;
  return (*(STACK[0x57D8] + 8 * (((32 * ((v7 & 1) == 0)) & 0x7F | (((v7 & 1) == 0) << 7)) ^ v0)))();
}

uint64_t sub_10070A780@<X0>(int a1@<W8>)
{
  STACK[0xACD8] = STACK[0xC4D0];
  LODWORD(STACK[0x5AA4]) = STACK[0x7EBC];
  STACK[0x73D0] = STACK[0x7910];
  return (*(STACK[0x57D8] + 8 * ((((a1 ^ 0x978) * v1) ^ 0xC35) + a1)))();
}

uint64_t sub_10070A84C()
{
  v2 = STACK[0x9C90];
  *(v2 + 608) = STACK[0xBB58];
  *(v2 + 616) = &STACK[0x10108];
  *(v2 + 624) = 2;
  v3 = STACK[0x8D18];
  *(v2 + 632) = STACK[0x8D18];
  v4 = *STACK[0x51E8];
  v5 = *STACK[0x51F0];
  v6 = *(v5 + (v4 & ((v3 & 0xFFFFFFF8) + 2050767130) & (((v0 - 6888) | 0x5816) + (v0 ^ 0xFFFFBC8A))));
  v7 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (((2 * (v6 + v7)) & 0xB4522008F60E2B80) - (v6 + v7) - 0x5A2910047B0715C1) ^ 0x1D5EEE2F653F896CLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((((2 * (v10 + v9)) & 0x79EF8F9E491CEC36) - (v10 + v9) - 0x3CF7C7CF248E761CLL) ^ 0xFBC0895A3C74E193, 8);
  v12 = (((2 * (v10 + v9)) & 0x79EF8F9E491CEC36) - (v10 + v9) - 0x3CF7C7CF248E761CLL) ^ 0xFBC0895A3C74E193 ^ __ROR8__(v9, 61);
  v13 = (((v11 + v12) | 0xB858CF4BD48AF3A7) - ((v11 + v12) | 0x47A730B42B750C58) + 0x47A730B42B750C58) ^ 0x5DD87E36584F16F6;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xE1A1FD5BD155F97ALL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0xB9422C841D0EA5D6) - (v17 + v16) - 0x5CA116420E8752ECLL) ^ 0x793EA2B1F2DA128DLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xFA35E2CDCB3E31C7;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xD2F00CE620E5D3AELL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((((2 * (v24 + v23)) & 0x5B7E17A64D42C360) - (v24 + v23) + 0x5240F42CD95E9E4FLL) ^ 0xA633FF1D772EEB34) >> (8 * (v3 & 7u))) ^ *v3;
  v26 = *++v3;
  v27 = *(v5 + (((((v3 & 0x7FE1DEE8 | 0x801E2115) + (v3 & 0x801E2110 | 0x7FE1DEEA) + 2145509099) & 0xFFFFFFF8) - 94741968) & v4));
  v28 = (v27 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (((2 * (v29 + v30)) & 0xF48A45E0F0869D0ELL) - (v29 + v30) - 0x7A4522F078434E88) ^ 0xBD726C6560B9D90FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) ^ 0xCF00570380ACA620 | 0xF31F85AF1ABA57D8) - ((v33 + v32) ^ 0xCF00570380ACA620 | 0xCE07A50E545A827) + 0xCE07A50E545A827) ^ 0xD99F63D116D314A9;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE1A1FD5BD155F97ALL;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (((v37 + v38) ^ 0xBA9611480E9D72E0) - ((2 * ((v37 + v38) ^ 0xBA9611480E9D72E0)) & 0x88AEBF5587A573B8) + 0x44575FAAC3D2B9DCLL) ^ 0x24A105EECEED74A5;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = __ROR8__((((2 * (v41 + v40)) & 0x8C01C17CF361E3C6) - (v41 + v40) + 0x39FF1F41864F0E1CLL) ^ 0xC3CAFD8C4D713FDBLL, 8);
  v43 = (((2 * (v41 + v40)) & 0x8C01C17CF361E3C6) - (v41 + v40) + 0x39FF1F41864F0E1CLL) ^ 0xC3CAFD8C4D713FDBLL ^ __ROR8__(v40, 61);
  v44 = (((v42 + v43) | 0xDB3821FF823284EDLL) - ((v42 + v43) | 0x24C7DE007DCD7B12) + 0x24C7DE007DCD7B12) ^ 0x9C82D19A2D75743;
  LODWORD(v3) = v25 + 16 * ((((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v3 & 7u))) ^ v26);
  *(v2 + 640) = (v3 - 47 * (((2789 * v3) >> 16) >> 1) + 17);
  *(v2 + 644) = 0;
  *(v2 + 648) = STACK[0x67F8];
  *(v2 + 656) = STACK[0xC86C];
  *(v2 + 664) = STACK[0x9DF8];
  *(v2 + 672) = 16;
  *(v2 + 680) = STACK[0x7640];
  *(v2 + 688) = 20;
  *(v2 + 696) = STACK[0xCFA8];
  *(v2 + 704) = STACK[0xCF98];
  *(v2 + 712) = &STACK[0xC1E8];
  *(v2 + 720) = &STACK[0xA4D4];
  LODWORD(STACK[0x1D4CC]) = (v0 - 1178827136) ^ (1964904101 * ((v1 + 160184166 - 2 * ((v1 - 240) & 0x98C3856)) ^ 0xF3AED3D2));
  STACK[0x1D4C0] = v2 + 608;
  v45 = STACK[0x57D8];
  v46 = (*(STACK[0x57D8] + 8 * (v0 + 24975)))(v1 - 240);
  v47 = STACK[0x1D4C8];
  LODWORD(STACK[0xDA90]) = STACK[0x1D4C8];
  return (*(v45 + 8 * ((1878 * (v47 == -143113071)) ^ v0)))(v46);
}

uint64_t sub_10070AF28()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B20])))(v2);
}

uint64_t sub_10070AF58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = STACK[0x51B8] ^ 0x5F9F;
  STACK[0xD200] = (a2 ^ 0xDDEFFB49FBFDD9FFLL) + 2 * a2 + 0x277CDCBE15B6FFDCLL;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x12C5)))(STACK[0x9210], a1, 2622178349);
}

uint64_t sub_10070B778()
{
  v0 = STACK[0x36D0];
  *(STACK[0x6D38] + 144) = STACK[0xA590];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10070B7B8()
{
  v0 = STACK[0x51B8] - 20236;
  STACK[0x7ED8] += STACK[0x51B8] + 3441 - 26183;
  return (*(STACK[0x57D8] + 8 * ((23639 * (LODWORD(STACK[0xC2AC]) == -143113071)) ^ v0)))();
}

uint64_t sub_10070B868()
{
  STACK[0xAF60] = v4 + 2;
  v5 = *(v1 + (v0 & (((2 * (v3 & 0xFFFFFFF8)) & 0xCB09A7C0) - 1806846541 + (v3 & 0xFFFFFFF8 ^ 0x65848BB2 ^ (v2 - 298313227) ^ 0xEE386781)) & 0xFFFFFFF8));
  v6 = (v5 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((v8 + v7) | (v2 - 298313227) & 0x11C7FDFF ^ 0x27EC3F2C30967D65) - ((v8 + v7) | 0xD813C0D3CF69BF4DLL) - 0x27EC3F2C309640B3) ^ 0x32DE7DC20C662AFBLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x2275D4C73835399BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE5AF1AB32EBD3CDDLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xC7DDC9F6CC45B721;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17) ^ 0xA82620A559D2DA78;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x39037E7769B37FD6) - (v20 + v19) + 0x637E40C44B264015) ^ 0xC30C53051741B5F0;
  v22 = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v19, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v3 & 7u))) ^ *(v4 + 1);
  return (*(STACK[0x57D8] + 8 * ((20348 * ((((v22 ^ 0x9A) - 66) ^ ((v22 ^ 0xAC) - 116) ^ ((v22 ^ 0x36) + 18)) == 56)) ^ v2)))();
}

uint64_t sub_10070BA9C()
{
  v0 = 3158 * (STACK[0x15DC] & 0x5F2FBE8F ^ 0x2C0B);
  v1 = STACK[0x51B8] + 1920;
  v2 = STACK[0x76B8];
  v3 = STACK[0x9708];
  v4 = STACK[0xA310];
  STACK[0xD408] = STACK[0x9708] + 0x3FDF3874E9451F45;
  STACK[0xD3E0] = v4;
  STACK[0xD3F8] = v2;
  STACK[0xD3F0] = v3 + 0x309E3E9C99932E38;
  STACK[0xD3E8] = v4;
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || v2 == 0;
  return (*(STACK[0x57D8] + 8 * ((v7 * (v0 ^ 0x316E)) ^ v1)))();
}

uint64_t sub_10070BB78(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(STACK[0x5740] + (STACK[0x52C8] & (a1 + 48533211 - (a1 & 0x88A85170) + (a1 | 0x7757AE8D) - 1102)));
  v7 = (v6 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x38C8B16AE7056877;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xE580B17D8CC5E551;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE1A1FD5BD155F97ALL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xDA604B0C03A2BF99;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xF61D1008512F3172) - (v17 + v16) - 0x7B0E8804289798B9) ^ 0x813B6AC9E3A9A97ELL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD2F00CE620E5D3AELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = ((((v22 + v21) | 0x2E149F3BAE8E0B6ALL) - ((v22 + v21) | 0xD1EB60C45171F495) - 0x2E149F3BAE8E0B6BLL) ^ 0xDA67940A00FE7E11) >> STACK[0x5780];
  LODWORD(v23) = ((v23 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFFC8) + 41) ^ ((v23 ^ LODWORD(STACK[0x5790]) ^ 0xF) - 16) ^ ((v23 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFFC7) + 40);
  v24 = *(STACK[0x53F8] + (a5 & ((STACK[0x53E8] ^ 0x8FEAEBF9) - 363770591 + (STACK[0x5150] & 0x1FD5D7F0))));
  v25 = (v24 + STACK[0x5620]) ^ 0xB88801D4E1C76353;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((v27 + v26) | 0xBD349CC89E87909ALL) - ((v27 + v26) | 0x42CB633761786F65) + 0x42CB633761786F65) ^ 0x85FC2DA27982F8EDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * ((v30 + v29) ^ 0x8F647627AAB9192FLL)) | 0x92B7486D15FC8A02) - ((v30 + v29) ^ 0x8F647627AAB9192FLL) + 0x36A45BC97501BAFFLL) ^ 0xA3BF636CAC82B97FLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xE1A1FD5BD155F97ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0x98B3D5D4073C2C0ELL) - 0x33A61515FC61E9F9) ^ 0x1639A1E6003CA99ELL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xFA35E2CDCB3E31C7;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD2F00CE620E5D3AELL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((((2 * (v42 + v41)) & 0x4D41C827499009E6) - (v42 + v41) - 0x26A0E413A4C804F4) ^ 0x2D2C10DDF5478E77) >> STACK[0x57B0]);
  LODWORD(STACK[0x56F0]) = v23 + 36;
  v43 = *(STACK[0x57D8] + 8 * v5);
  LODWORD(STACK[0x52B0]) = 61;
  STACK[0x52F8] = 53;
  return v43();
}

uint64_t sub_10070C1B0()
{
  v2 = *(v0 - 0x683CBC57EAB92A36);
  STACK[0x69B8] = v2;
  return (*(STACK[0x57D8] + 8 * ((31 * (((v2 == 0x308E083E0C524CBELL) ^ (v1 - 73)) & 1)) ^ (v1 + 5816))))();
}

uint64_t sub_10070C224@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x7718] + v2;
  v7 = ((v3 + 5183) ^ 0x2A25205) + 1978732275 * (v4 - (v1 ^ 0x39E8D924));
  v8 = ((v7 ^ LODWORD(STACK[0x510])) - 478216879) ^ v7 ^ ((v7 ^ 0x81BF46A9) + 2095240422) ^ ((v7 ^ 0xE2C1BFE9) + 530328998) ^ ((v7 ^ 0x7FFFFBEF) - 2103285340);
  v9 = ((v8 ^ 0xB204E22F) - 1505347701) ^ ((v8 ^ 0xCD359B2D) - 646492535) ^ ((v8 ^ 0x7D9314B1) + 1775354133);
  LODWORD(STACK[0xAE04]) = v9 + 1718140005;
  STACK[0x7ED8] = a1;
  STACK[0xE068] = v6;
  STACK[0xB4D0] = &STACK[0x10120] + v5;
  STACK[0x9FB0] = 0;
  return (*(STACK[0x57D8] + 8 * ((32226 * (((((v9 + 101) ^ (7 - v9) ^ (((v9 + 101) ^ 6) + 6)) ^ ((((v9 + 101) ^ 8) + 12) ^ (((v9 + 101) ^ 0xFD) - 1))) & 0xF) == 12)) ^ v3)))();
}

uint64_t sub_10070C3D0()
{
  v5 = v0 & ((v3 & 0xFFFFFFF8 ^ 0x7009E210) - 1983338617 + (LODWORD(STACK[0x1534]) & (2 * (v3 & 0xFFFFFFF8)))) & (((v1 - 321983435) & STACK[0x1530]) - 22622);
  STACK[0xAF60] = v2 + 2;
  v6 = *(v4 + v5);
  v7 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (((2 * (v6 + v7)) | 0x2D932F2AAD18DA78) - (v6 + v7) - 0x16C99795568C6D3CLL) ^ 0xE2DFC6DCC9D2515BLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x153242EE3CF06A49;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x2275D4C73835399BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x5D6ADC23F37784A4) - (v14 + v13) - 0x2EB56E11F9BBC253) ^ 0x34E58B5D28F90170;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0x40E8E1927921B720) - (v17 + v16) + 0x5F8B8F36C36F246FLL) ^ 0x985646C00F2A934ELL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xDBDF6D2B9F2B8420) - (v20 + v19) - 0x6DEFB695CF95C211) ^ 0x3A3669CF69B8E797;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) | 0x1BEF85E59F3EA62DLL) - ((v23 + v22) | 0xE4107A1A60C159D2) - 0x1BEF85E59F3EA62ELL) ^ 0x446269DB3CA6AC36;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  LOBYTE(v24) = (((((2 * (v26 + v25)) & 0xABC0AE6C4960465ALL) - (v26 + v25) - 0x55E0573624B0232ELL) ^ 0x6BDC601B7F8A94FALL) >> (8 * (v3 & 7u))) ^ *(v2 + 1);
  return (*(STACK[0x57D8] + 8 * ((7191 * ((((v24 ^ 0x4E) + 102) ^ ((v24 ^ 0xB) + 33) ^ ((v24 ^ 0x45) + 111)) == 52)) ^ v1)))();
}

uint64_t sub_10070C6A4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x297E0833)))();
  STACK[0x9060] = 0;
  return (*(v1 + 8 * (v0 ^ 0x297E2EC1 ^ v0 ^ 0x297E2F00 ^ (6255 * (v0 != 710048489)))))(v2);
}

uint64_t sub_10070C758()
{
  v4 = *(v1 - 0x683CBC57EAB92A3ELL);
  STACK[0xCC90] = v0;
  STACK[0x5FF8] = 0;
  v6 = v4 != v3 && v0 != 0;
  return (*(STACK[0x57D8] + 8 * ((945 * v6) ^ v2)))();
}

uint64_t sub_10070C928()
{
  v0 = STACK[0x5450];
  LODWORD(STACK[0x5150]) = LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x51E0]) ^ LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x5200]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5340]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x54D0]);
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10070CA84()
{
  STACK[0xBB08] = STACK[0xB080] + 16;
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 4174) ^ 0x152) + v0)))();
}

uint64_t sub_10070CAD8()
{
  v1 = STACK[0x57D8];
  STACK[0xB838] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 144979203) & 0x8A46D3F ^ 0x6CA9) + v0)))();
}

uint64_t sub_10070CB40@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v4 = __ROR8__((((v3 + 15293) | 0x1806u) - 22622) & a2, 8);
  v5 = (v4 + a1) ^ 0x19BD561D2BFA5152;
  v6 = __ROR8__((v4 + a1) ^ 0x5662268C9D216ADLL, 8);
  v7 = (v6 + v5 - ((2 * (v6 + v5)) & 0x3E5DC26EC9784C6ELL) + 0x1F2EE13764BC2637) ^ 0xE286021353DE06A0;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (0x96CEB1B8EB1520C4 - ((v9 + v8) | 0x96CEB1B8EB1520C4) + ((v9 + v8) | 0x69314E4714EADF3BLL)) ^ 0x79092A723627C8A9;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (0x2A440736893C457ALL - ((v12 + v11) | 0x2A440736893C457ALL) + ((v12 + v11) | 0xD5BBF8C976C3BA85)) ^ 0x6A4D3AD257CDF5B2;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x9882E727DB37CF94;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (((2 * (v16 + v17)) | 0x86197EBAF6BDCBA6) - (v16 + v17) - 0x430CBF5D7B5EE5D3) ^ 0x46F19A7C78EB8C39;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x7B5626353E243BAALL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  *a2 = (((((2 * (v22 + v21)) | 0xBD146BD0BE782EA8) - (v22 + v21) - 0x5E8A35E85F3C1754) ^ 0xF191E105D55A011FLL) >> (8 * (a2 & 7u))) ^ v2;
  return (*(STACK[0x57D8] + 8 * (v3 + 4949)))();
}

uint64_t sub_10070CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x57D8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * ((v4 + 4259) ^ v4)))(a1, a2, a3, a4, 0xFA35E2CDCB3E31C7, 0xE580B17D8CC5E551, 2050767130, 385182804);
}

uint64_t sub_10070CFD8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = -749512935 * *(v7 + v9);
  v11 = STACK[0x5750];
  v12 = v9 + STACK[0x5750] + (v10 ^ a7) + (((v10 ^ a7) + a2) >> 16) + (((v10 ^ a7) + a2 + (((v10 ^ a7) + a2) >> 16)) >> 8);
  v13 = v9 + STACK[0x5750] + (v12 ^ v10) + (((v12 ^ v10) + a2) >> 16) + (((v12 ^ v10) + a2 + (((v12 ^ v10) + a2) >> 16)) >> 8);
  v14 = v12 ^ a1 ^ (v12 >> 1) & 0x5F56FCBB ^ v13 ^ (v13 >> 1) & 0x5F56FCBB;
  v15 = v9 + STACK[0x5750] + (v13 ^ v10) + (((v13 ^ v10) + a2) >> 16) + (((v13 ^ v10) + a2 + (((v13 ^ v10) + a2) >> 16)) >> 8);
  v16 = (v14 ^ -v14 ^ (((v15 >> 1) & 0x5F56FCBB ^ v15) - ((v15 >> 1) & 0x5F56FCBB ^ v15 ^ v14))) + ((v15 >> 1) & 0x5F56FCBB ^ v15);
  v17 = *(STACK[0x57D8] + 8 * ((3713 * (v9 + v8 == 15)) ^ LODWORD(STACK[0x5740])));
  --STACK[0x5770];
  STACK[0x5750] = v11 + 1;
  return v17(v16, (a2 + 1));
}

uint64_t sub_10070D1CC()
{
  v2 = v0 + LODWORD(STACK[0x57C0]) + ((v1 - 237947482) & 0xE2EFCD6 ^ 0x3A23C39A) - 772391430;
  v3 = (LODWORD(STACK[0x57C0]) > 0x9C61D50E) ^ (v2 < 0x639E2AF1);
  v4 = LODWORD(STACK[0x57C0]) + 1671301615 + v1 - 1239 > v2;
  if (v3)
  {
    v5 = LODWORD(STACK[0x57C0]) > 0x9C61D50E;
  }

  else
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((41 * v5) ^ (v1 + 18294))))();
}

uint64_t sub_10070D474(int a1, unint64_t a2)
{
  LODWORD(STACK[0x5208]) = a1 ^ v2;
  v3 = *(STACK[0x57D8] + 8 * (a2 - 6922));
  STACK[0x57B0] = a2;
  return v3();
}

uint64_t sub_10070D4F0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x8E80] = 0;
  return (*(v1 + 8 * (v0 - 17087)))(v2);
}

uint64_t sub_10070D610@<X0>(unint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v14 = v10 - 1;
  v15 = v7 + v14 + v8;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = a6 + v14 + v6;
  v18 = (v16 + v11) ^ a3;
  v19 = __ROR8__(v9 ^ 0xAF44247A204C9D83 ^ (v16 + v11), 8);
  v20 = (((2 * (v19 + v18)) | 0x69E536BA7F7DC63CLL) - (v19 + v18) - 0x34F29B5D3FBEE31ELL) ^ 0x428E244FF1394F63;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v13;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a2;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * ((v26 + v25) ^ 0xFBA5327EF4DC1227)) & 0xD7C719B69079B01ELL) - ((v26 + v25) ^ 0xFBA5327EF4DC1227) - 0x6BE38CDB483CD810) ^ 0x3756ED918BC8538CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v12;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = ((2 * (v31 + v30)) | 0x6FFD71C04CFB499ELL) - (v31 + v30);
  v33 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = v33 - ((2 * v33 + 0x3134CBBCC3D30E70) & 0x92BA5181F4FAAE2CLL) + 0x63F78E9F5C66DE4ELL;
  v35 = v34 ^ 0x64190CBADA31D58ALL;
  v34 ^= 0xA0CA2249D57DEC4ELL;
  v36 = (__ROR8__(v35, 8) + v34) ^ a4;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__((v32 - 0x37FEB8E0267DA4CFLL) ^ 0xB3970A04703EE4F6, 8) + ((v32 - 0x37FEB8E0267DA4CFLL) ^ 0xB3970A04703EE4F6 ^ __ROR8__(v30, 61));
  v39 = (__ROR8__(v36, 8) + v37) ^ v13;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a2;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * ((v43 + v42) ^ 0xFB39F9EB59DC1C78)) | 0xED289D83DA60109ELL) - ((v43 + v42) ^ 0xFB39F9EB59DC1C78) - 0x76944EC1ED30084FLL) ^ 0xD5421BE17C3B726CLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v12;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a5;
  *v17 = (((((2 * v38) & 0xEFAE7D4DB9FC58D2) - v38 + 0x828C1592301D396) ^ 0x1E0A4434F7BADCCLL) >> (8 * (v15 & 7u))) ^ (((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v47, 61))) ^ a1) >> (8 * (v17 & 7u))) ^ *v15;
  return (*(STACK[0x57D8] + 8 * ((21093 * (v14 == 0)) ^ v9)))();
}

uint64_t sub_10070D9CC()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * ((v1 + 1037108669) ^ 0x30D5)))();
  *(v0 + 8) = 0;
  return (*(v2 + 8 * (v1 + 1037108669)))(v3);
}

uint64_t sub_10070DADC()
{
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xDF49AC04));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0xDF49AC05) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0xDF49AC05;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  STACK[0xEF30] = 0;
  STACK[0xEF38] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF30] | v10);
  *(&STACK[0xEF30] | v10) = 0;
  LOBYTE(STACK[0xEF37]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF30] | v12);
  *(&STACK[0xEF30] | v12) = STACK[0xEF36];
  LOBYTE(STACK[0xEF36]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF30] | v14);
  *(&STACK[0xEF30] | v14) = STACK[0xEF35];
  LOBYTE(STACK[0xEF35]) = v15;
  v16 = STACK[0xEF30];
  LOBYTE(STACK[0xEF30]) = STACK[0xEF34];
  LOBYTE(STACK[0xEF34]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF30] | v17);
  *(&STACK[0xEF30] | v17) = STACK[0xEF33];
  LOBYTE(STACK[0xEF33]) = v18;
  v19 = STACK[0xEF31];
  LOBYTE(STACK[0xEF32]) = STACK[0xEF30];
  LOWORD(STACK[0xEF30]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF30] = vmla_s32(v22, STACK[0xEF30], vdup_n_s32(0x1000193u));
  STACK[0xEF38] ^= STACK[0xEF30];
  STACK[0xEF38] = vmul_s32(vsub_s32(STACK[0xEF38], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF3A];
  LOWORD(STACK[0xEF39]) = STACK[0xEF38];
  LOBYTE(STACK[0xEF38]) = v23;
  v24 = (&STACK[0xEF38] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF3B];
  LOBYTE(STACK[0xEF3B]) = v25;
  LOBYTE(v24) = STACK[0xEF38];
  LOBYTE(STACK[0xEF38]) = STACK[0xEF3C];
  LOBYTE(STACK[0xEF3C]) = v24;
  v26 = (&STACK[0xEF38] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF3D];
  LOBYTE(STACK[0xEF3D]) = v24;
  v27 = (&STACK[0xEF38] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF3E];
  LOBYTE(STACK[0xEF3E]) = v26;
  v28 = (&STACK[0xEF38] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF3F];
  LOBYTE(STACK[0xEF3F]) = v29;
  v30 = STACK[0xEF38];
  v31 = (-548819963 * STACK[0xEF38]) ^ v9;
  for (i = 1; i != 4; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_1012370F0;
  v38 = xmmword_101237100;
  v39 = xmmword_101237110;
  v40 = xmmword_101237120;
  v41 = vdupq_n_s32(v31);
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_high_u16(v46, v42));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)), v41), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_high_u16(v45, v42));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_101237130);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 32);
  *STACK[0x4630] = STACK[0xEF38];
  return (*(STACK[0x57D8] + 8 * (v1 - 6346)))(v37, v38, v39, v40);
}

uint64_t sub_10070E0F8()
{
  v0 = STACK[0x51B8] ^ 0x5D8B6ECC;
  v1 = STACK[0x51B8] - 21235;
  v2 = STACK[0xBC10];
  *v2 = *(STACK[0xC010] - 0x30BDFED8F32E6565);
  v2[3] = STACK[0x6A6C];
  v3 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((v0 - 1569398610) ^ v1)))(v2 + 49);
}

uint64_t sub_10070E21C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 253668870;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10070E26C()
{
  v0 = (STACK[0x51B8] + 1301291411) & 0xB26FD75F;
  v1 = STACK[0x51B8] - 19786;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x5985) + v1)))();
}

uint64_t sub_10070E2E0()
{
  v1 = STACK[0xE358];
  v2 = LODWORD(STACK[0xE364]);
  v3 = LODWORD(STACK[0xE368]);
  v4 = LOBYTE(STACK[0xE37B]);
  v5 = LODWORD(STACK[0xE37C]);
  v6 = LODWORD(STACK[0xE380]);
  v7 = LODWORD(STACK[0xE394]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3B8];
  return (*(STACK[0x57D8] + 8 * v0))(v1, v3, v2, v7, v5, v4, v6);
}

uint64_t sub_10070E3B8@<X0>(int a1@<W3>, int a2@<W8>)
{
  v2 = *(STACK[0x57D8] + 8 * (((a1 == a2 - 13128) * (((a2 + 2119486484) & 0x81AB59EE) - 5641)) ^ a2));
  LODWORD(STACK[0x57B0]) = STACK[0x5530];
  return v2();
}

uint64_t sub_10070E420()
{
  v1 = STACK[0xA8E8];
  STACK[0x9EA0] = STACK[0xA8E8] - 0x79296B4A625EDE04;
  STACK[0xC018] = v1 - 0x79296B4A625EDF14;
  v2 = ((v0 + 1616878013) & 0x9FA076F7 ^ 0xBA1D3F60) + ((v0 - 910787019) & 0x364979DF) + *(v1 - 0x79296B4A625EDF10);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  LODWORD(STACK[0x9E9C]) = 4 * v2;
  return (*(STACK[0x57D8] + 8 * (v0 | (4 * ((4 * v2) > 0x100)))))();
}

uint64_t sub_10070E504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8];
  v5 = STACK[0xACC0];
  v6 = STACK[0x649C];
  LODWORD(STACK[0x97A8]) = -143113071;
  STACK[0x6778] = 0;
  LODWORD(STACK[0x77D4]) = -769884012;
  LODWORD(STACK[0xAF74]) = -143113071;
  STACK[0xBC88] = v5 + 4;
  v7 = ((v6 + 1223159237) ^ 0xA7931AB6) & (2 * ((v6 + 1223159237) & 0xB7181237)) ^ (v6 + 1223159237) & 0xB7181237;
  v8 = ((2 * ((v6 + 1223159237) ^ 0x8BB33EB4)) ^ 0x79565906) & ((v6 + 1223159237) ^ 0x8BB33EB4) ^ (2 * ((v6 + 1223159237) ^ 0x8BB33EB4)) & 0x3CAB2C82;
  v9 = v8 ^ 0x4A92481;
  v10 = (v8 ^ 0x38000800) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xF2ACB20C) & v9 ^ (4 * v9) & 0x3CAB2C80;
  v12 = v10 ^ 0x3CAB2C83 ^ (v11 ^ 0x30A82000) & (16 * v10);
  v13 = (16 * (v11 ^ 0xC030C83)) & 0x3CAB2C80 ^ 0x34092483 ^ ((16 * (v11 ^ 0xC030C83)) ^ 0xCAB2C830) & (v11 ^ 0xC030C83);
  v14 = (v12 << 8) & 0x3CAB2C00 ^ v12 ^ ((v12 << 8) ^ 0xAB2C8300) & v13;
  LODWORD(STACK[0x7EF0]) = (v6 + 1223159237) ^ (2 * ((v14 << 16) & 0x3CAB0000 ^ v14 ^ ((v14 << 16) ^ 0x2C830000) & ((v13 << 8) & 0x3CAB0000 ^ 0x14830000 ^ ((v13 << 8) ^ 0x2B2C0000) & v13))) ^ 0x1504CBA5;
  return (*(STACK[0x57D8] + 8 * (v4 - 18049)))(a1, 22611, a3, a4, 19);
}

uint64_t sub_10070E718@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v13 = a5 + v8 + v6;
  v14 = *(*v10 + ((*v12 & ((((v9 + 1809403923) | 0x4856) ^ v13 & 0xFFFFFFF8 ^ 0x21746CB0) + 457617935 + ((2 * (v13 & 0xFFFFFFF8)) | 0xBD179631) + 3184)) & 0xFFFFFFFFFFFFFFF8));
  v15 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (((2 * (v15 + v14)) & 0x81B998017E1037A0) - (v15 + v14) - 0x40DCCC00BF081BD1) ^ 0x4B3562B6DFA9D848;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x8DBD2E03FBCEB426) - 0x392168FE0218A5EDLL) ^ 0xD3ECD5EFC117305ALL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) & 0x2A6F6202D3C604E0) - (v21 + v20) + 0x6AC84EFE961CFD8FLL) ^ 0x48BD9A39AE29C414, 8);
  v23 = (((2 * (v21 + v20)) & 0x2A6F6202D3C604E0) - (v21 + v20) + 0x6AC84EFE961CFD8FLL) ^ 0x48BD9A39AE29C414 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ a1;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0x5ED6A15E31C647E3 - ((v28 + v27) | 0x5ED6A15E31C647E3) + ((v28 + v27) | a4)) ^ v11;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) | 0xA8B2DEFD3053496ALL) - (v31 + v30) + 0x2BA6908167D65B4BLL) ^ 0x8BD483403BB1AEAELL;
  *(v5 + v8) = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v30, 61))) ^ a2) >> (8 * (v13 & 7u))) ^ *v13;
  LODWORD(v13) = ((((v8 + 1) ^ v7) - v9) | (v9 - ((v8 + 1) ^ v7))) >= 0;
  return (*(STACK[0x57D8] + 8 * (((4 * v13) | (32 * v13)) ^ (v9 + 1809405296))))();
}

uint64_t sub_10070E95C()
{
  v2 = STACK[0xA4F8];
  STACK[0xE890] = v1;
  STACK[0xE898] = v2;
  return (*(STACK[0x57D8] + 8 * ((958 * (v1 - v2 > (((v0 - 269) | 0xA10u) ^ 0x2AF9uLL))) ^ v0)))();
}

uint64_t sub_10070E9E8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xBCF8] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x1FAD)))();
}

uint64_t sub_10070EAE4()
{
  v1 = STACK[0xB328];
  v2 = STACK[0x81C8];
  v3 = STACK[0x95D8];
  v4 = STACK[0x7364];
  v5 = STACK[0x51B8];
  v6 = STACK[0x51B8] + 847660746;
  v7 = 1379010179 * ((((v0 - 240) | 0xFB04A327) + (~(v0 - 240) | 0x4FB5CD8)) ^ 0xDF559A48);
  STACK[0x1D4C0] = STACK[0x6110];
  LODWORD(STACK[0x1D4E8]) = v7 - 467101311 + 1806817213 * v4;
  STACK[0x1D4E0] = v2;
  STACK[0x1D4D0] = v3;
  STACK[0x1D4D8] = v1;
  LODWORD(STACK[0x1D4C8]) = v6 ^ v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v5 + 9236)))(v0 - 240);
  return (*(v8 + 8 * (((LODWORD(STACK[0x1D4EC]) == 221187128) * (v5 - 22599)) ^ LODWORD(STACK[0x1344]))))(v9);
}

uint64_t sub_10070EC74()
{
  LODWORD(STACK[0xDA50]) = v0;
  LODWORD(STACK[0xDA4C]) = v2;
  LODWORD(STACK[0x5B38]) = v1;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1A58])))();
}

uint64_t sub_10070EF34(int a1)
{
  STACK[0x5058] = v4;
  LODWORD(STACK[0x47C8]) = v2 | LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x55D0]) = a1 & (v3 ^ 0xE3DFCCA);
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10070F498(uint64_t a1, int a2)
{
  v5 = *(*(a1 + 1360) + 4 * ((v2 + 6419 * v3) % 0x2240u));
  *(*(a1 + 1368) + (a2 + 5621 * v3) % (v4 - 17704)) = (((v5 ^ 0xA8) - 46) ^ ((v5 ^ 0xB3) - 53) ^ ((v5 ^ 0xFD) - 123)) - 84;
  HIDWORD(v6) = v3 + 1;
  LODWORD(v6) = v3 + 1;
  return (*(STACK[0x57D8] + 8 * ((121 * ((v6 >> 27) > 0x1FE0)) ^ v4)))();
}

uint64_t sub_10070F540@<X0>(int a1@<W8>)
{
  v4 = STACK[0x57D8];
  STACK[0xAC40] = *(STACK[0x57D8] + 8 * v1);
  STACK[0x7CE0] = v3;
  STACK[0xC690] = v2;
  LODWORD(STACK[0x7A24]) = 0;
  return (*(v4 + 8 * ((984 * (*STACK[0x3DB8] == ((a1 - 547042783) & 0x209B3D7C ^ 0x24D7A573 ^ (3 * (a1 ^ 0x35D9))))) ^ a1)))();
}

uint64_t sub_10070F700()
{
  v3 = STACK[0x57D8];
  STACK[0x98E8] = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0xEA08]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10070F748(uint64_t a1)
{
  v2 = (v1 + 4688);
  v3 = *(a1 + 3392) - 22613 + v2;
  v4 = *(STACK[0x57D8] + 8 * (((v3 < *(STACK[0x4D10] + 16)) * (v2 ^ 0x68BB)) ^ v1));
  *(a1 + 3380) = v2;
  *(a1 + 3384) = v3;
  return v4();
}

uint64_t sub_10070F978@<X0>(int a1@<W0>, int a2@<W8>)
{
  v4 = (a2 - 13394) | 0xA22;
  v5 = a2 - 11363;
  v6 = STACK[0x57D8];
  STACK[0xC6F8] = *(STACK[0x57D8] + 8 * v2);
  v7 = a1 << ((a2 - 82) ^ 7);
  v8 = *(v3 + 16);
  v9 = __CFADD__(v8, v7);
  v10 = v8 + v7;
  v11 = v9;
  *(v3 + 16) = v10;
  return (*(v6 + 8 * ((v11 * (v4 ^ 0x299F)) ^ v5)))();
}

uint64_t sub_10070FA0C(int a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x4B90]) = LODWORD(STACK[0x4E00]) | LODWORD(STACK[0x4E20]);
  v8 = *STACK[0x4EC8];
  LODWORD(STACK[0x4B58]) = a6 & 0x7257E749;
  v9 = *STACK[0x52E0];
  LODWORD(STACK[0x4DA8]) = v6 | a4;
  v10 = *STACK[0x5318];
  LODWORD(STACK[0x4E00]) = a3 & (a1 ^ 0x9D2B5314);
  v11 = *STACK[0x53E8];
  v12 = *STACK[0x57C0];
  v13 = v11 & 0x5C ^ 0xFC;
  v14 = *STACK[0x5138];
  v15 = (v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)));
  v16 = v14 & 0x14 ^ 0xFFFFFF98;
  v17 = v12 & 0x66 ^ 0x41;
  v18 = (v15 << 16) | (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x44) & (2 * (v17 ^ v12 & 2)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x66) << 8);
  v19 = ((v18 ^ 0x217FFF) & (v15 ^ 0x7D7FFC) | v18 & 0x828000) << 8;
  v20 = v9 & 0x6E ^ 0xC5;
  LOBYTE(v18) = (v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x44) & (2 * (v20 ^ v9 & 0xA)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20;
  v21 = v8 & 0xEC ^ 4;
  v22 = (v10 & 0xE4 | 0x13) ^ v10 & 0xEE;
  v23 = *STACK[0x5420];
  v24 = (((v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xEC) << 8) | (((v9 ^ (2 * v18)) ^ 0x6E) << 16);
  v25 = (((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xD9662B) & ~v24 | v24 & 0x269900) << 8;
  LOBYTE(v24) = v23 & 0x82 ^ 0x57;
  LODWORD(STACK[0x4E20]) = v25 & 0x9C6A5700;
  return (*(STACK[0x57D8] + 8 * v7))(v19 ^ 0x80004CFF, a2, v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)), 21613735, (v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & 0x26 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))), v25 ^ 0x229188FFu);
}

uint64_t sub_10070FD94@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 600) = (v2 - 1723130904) ^ ((v4 ^ 0xE6BB5B06) * v1);
  *(v3 + 592) = a1;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x3113)))(v5 - 240);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_10070FE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, int a12)
{
  v15 = *(v13 + 28);
  v16 = 1379010179 * ((((2 * &a10) | 0xBC9BA528) - &a10 - 1582158484) ^ 0x7A1CEBFA);
  a10 = *(v13 + 12) ^ v16;
  a11 = 1529243080 - v16;
  a12 = v15 - v16;
  v17 = (*(v14 + 255528))(&a10);
  *(v12 + 32) = 5;
  return (*(v14 + 200680))(v17);
}

uint64_t sub_10070FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(v10 + 8);
  v19 = v18 + 4 * (v8 + v13);
  v20 = v18 + 4 * v8;
  v21 = *v15 & 0xFFFFFFFFFFFFFFF8;
  v22 = *(*v14 + (((v19 & 0xFFFFFFF8) - 133448597) & v21));
  v23 = (__ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8) + v22) ^ v16;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x8A47714CF38C4783;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((v12 & (2 * (v27 + v26))) - (v27 + v26) + 0x343EC3C211669695) ^ 0x965527B80B0FB9E5;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a6;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = *(*v14 + (((v20 & 0xFFFFFFF8) - 133448597) & v21));
  v34 = v32 + v31 - ((2 * (v32 + v31)) & 0x8D3273873736914);
  v35 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (0x92ACE94D73854ECFLL - ((v33 + v35) | 0x92ACE94D73854ECFLL) + ((v33 + v35) | 0x6D5316B28C7AB130)) ^ 0xDD0462895DD2448CLL;
  v37 = v36 ^ __ROR8__(v33, 61);
  v38 = (v34 + 0x469939C39B9B48ALL) ^ 0x79635936D0558C97;
  v39 = __ROR8__(v36, 8);
  v40 = v38 ^ __ROR8__(v31, 61);
  v41 = (((2 * (v39 + v37)) & 0x3AEEFCFF77337C32) - (v39 + v37) + 0x62888180446641E6) ^ 0xE8CFF0CCB7EA0665;
  v42 = __ROR8__(v38, 8);
  v43 = v41 ^ __ROR8__(v37, 61);
  v44 = (__ROR8__(v41, 8) + v43) ^ a8;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v43, 61);
  v47 = (((2 * (v42 + v40)) & 0xEB316319EFFB2A64) - (v42 + v40) + 0xA674E7308026ACDLL) ^ 0x5896C63A10DABC6FLL;
  v48 = v47 ^ __ROR8__(v40, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xB20726EF1F63AAFLL;
  v50 = (v45 + v46 - ((2 * (v45 + v46)) & 0x729384C4DD0FF220) - 0x46B63D9D917806F0) ^ 0xA54AD55A8A21B814;
  v51 = v50 ^ __ROR8__(v46, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a7;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (0xF016A10E15B8C267 - ((v54 + v53) | 0xF016A10E15B8C267) + ((v54 + v53) | 0xFE95EF1EA473D98)) ^ 0x5D18D6B8F29FEB3ALL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x6BD877B0D2F9CB9ELL;
  v58 = (((2 * v57) | 0xAE5C25F5BA8C719ALL) - v57 - 0x572E12FADD4638CDLL) ^ 0x37D61724FE49C9FCLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  *v20 = (((v60 + v59 - ((2 * (v60 + v59)) & 0x7D909D3414482462) - 0x4137B165F5DBEDCFLL) ^ 0x2F76C3729DB8AC71) >> (8 * (v20 & 7u))) ^ (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v19 & 7u))) ^ *v19;
  return (*(STACK[0x57D8] + 8 * (((v8 + 1 != v11) * v17) ^ v9)))();
}

uint64_t sub_100710344()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x3B27)))();
  **STACK[0xFE30] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1007103C4()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 3945) | 0xC0) - 339)))();
}

uint64_t sub_1007103FC()
{
  v0 = STACK[0x3578];
  v1 = LODWORD(STACK[0x3578]) ^ 0x107C;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3578]));
  return (*(v2 + 8 * ((v1 + 504) ^ v0)))();
}

uint64_t sub_100710438()
{
  v1 = *(v0 + 295);
  v2 = *(v0 + 2624);
  v3 = v2 & 0xFFFFFFF8;
  v4 = *STACK[0x51F0];
  v5 = *STACK[0x51E8] & 0xFFFFFFF8;
  v6 = *(v4 + (v5 & ((v2 & 0xFFFFFFF8) - 1831847764)));
  *(v0 + 2573) = v1;
  v7 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = __ROR8__((((v6 + v7) & 0x35B0E0DA3106349DLL ^ 0x148040D230042480) + ((v6 + v7) & 0xCA4F1F25CEF9CB62 ^ 0xC80A1D2500680B03) - 1) ^ 0x1E25635D0F9D9766, 8);
  v9 = (((v6 + v7) & 0x35B0E0DA3106349DLL ^ 0x148040D230042480) + ((v6 + v7) & 0xCA4F1F25CEF9CB62 ^ 0xC80A1D2500680B03) - 1) ^ 0x1E25635D0F9D9766 ^ __ROR8__(v6, 61);
  v10 = (v8 + v9) ^ 0x65F254DD188DB4FCLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x6FF046966119128DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0xDD324DE71E8F6381 - ((v16 + v15) | 0xDD324DE71E8F6381) + ((v16 + v15) | 0x22CDB218E1709C7ELL)) ^ 0xCDC992591495D492;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD8C7B31FCA19D9DELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  v22 = __ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61));
  LOBYTE(v2) = 8 * (v2 & 7);
  *(v0 + 2574) = ((0x27E6D33AE8B91986 - (v22 | 0x27E6D33AE8B91986) + (v22 | 0xD8192CC51746E679)) ^ 0xB7564C791944B899) >> v2;
  v23 = *(v4 + (v5 & ((v3 ^ 0xD84446D8) + 1796505477 + ((2 * v3) | 0x4F77724F))));
  v24 = (v23 + v7) ^ 0xC2AF3EAA3FF1B8E4;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x65F254DD188DB4FCLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x6FF046966119128DLL;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30 - ((2 * (v29 + v30)) & 0x55850D67E64D97E8) + 0x2AC286B3F326CBF4) ^ 0x8B701B762450D8DFLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (0x143639246E3962F4 - ((v33 + v32) | 0x143639246E3962F4) + ((v33 + v32) | 0xEBC9C6DB91C69D0BLL)) ^ 0x4CDE69A6423D5E7;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xD8C7B31FCA19D9DELL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x5455012E8AB1C38FLL;
  **(v0 + 2608) = v1 ^ *(v0 + 2623) ^ (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v2);
  v39 = *(v0 + 3920) + 43;
  *(v0 + 296) = v39;
  v40 = STACK[0x57D8];
  v41 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23E7));
  *(v0 + 2632) = v39;
  *(v0 + 280) = v41;
  return (*(v40 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7B10)))();
}

uint64_t sub_1007107DC()
{
  *v2 = 0;
  *(v4 + 2097) = 0u;
  *(v4 + 2113) = 0u;
  return (*(v0 + 8 * ((389 * (v1 == (v3 ^ 0x500E) - 143117709)) ^ (v3 - 12274))))();
}

uint64_t sub_100710C14()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x4E93)))();
  STACK[0xB1F8] = 0;
  return (*(v1 + 8 * (v0 ^ 0x6872)))(v2);
}

uint64_t sub_100710C58()
{
  LODWORD(STACK[0x5760]) = v0 + 6837;
  v9 = STACK[0x8070];
  v10 = *(STACK[0x8070] + 3774);
  LODWORD(STACK[0x5770]) = v0 - 2013117963;
  v11 = *(v7 + ((16 * v10) & 0xBF ^ 0xC2 ^ ((v0 - 11) ^ 0xC4 ^ (16 * v10)) & (v10 ^ 0xFAu)) + 1550);
  v12 = v11 ^ 0xFFFFFFCB ^ (2 * (v2 & ~v11) - ((4 * (v2 & ~v11)) & 0x68) + 52);
  v13 = STACK[0x5240];
  v14 = STACK[0x5790];
  v15 = STACK[0x5740];
  *(v9 + 10543) = (((v12 & LODWORD(STACK[0x5240])) >> v4) | (v12 << STACK[0x5790])) ^ LODWORD(STACK[0x5740]) ^ 0x33;
  v16 = STACK[0x8070];
  v17 = *((v16[3181] & 0x80 ^ ((16 * v16[3774]) | 0xF) & (v16[3181] ^ 0x59) ^ ((16 * v16[3774]) & 0x10 | 1) ^ 0xFDu) + v7 + 2326);
  v18 = v17 ^ 0xFFFFFFB7 ^ (~(4 * ((v17 ^ 0x48) & v6)) + 2 * ((v17 ^ 0x48) & v6));
  v19 = STACK[0x4E44];
  v20 = STACK[0x5710];
  v21 = v20 ^ 0x94;
  v16[9950] = (((v18 & STACK[0x4E44]) >> v3) + (v18 << v5)) ^ LODWORD(STACK[0x5710]) ^ 0x94;
  v22 = STACK[0x8070];
  v23 = *(v7 + ((16 * v22[3774]) & 0xB0 ^ (v22[2588] ^ 0xF2) & ((16 * v22[3774]) ^ 0x8F) ^ 0x77u) + 2326);
  v24 = v23 ^ 0xFFFFFFBE ^ ((~(4 * ((v23 ^ 0x48) & STACK[0x5700])) | 0x13) + 2 * ((v23 ^ 0x48) & STACK[0x5700]) - 9);
  v22[9357] = (((v24 & v19) >> v3) + (v24 << v14)) ^ v20 ^ 0x94;
  v25 = STACK[0x8070];
  v26 = *((v25[1995] & 0x9A ^ 0x48 ^ ((16 * v25[3774]) ^ 0x15) & (v25[1995] ^ 0x40u)) + v7 + 1550);
  v27 = v26 ^ 0x2B ^ ((~(4 * (v6 & ~v26)) | 0x57) + 2 * (v6 & ~v26) - 43);
  v25[8764] = (((v27 & v13) >> v4) + (v27 << v5)) ^ v15 ^ 0x33;
  v28 = STACK[0x8070];
  v29 = *((v28[1402] & 0x19 ^ 0x48 ^ ((16 * v28[3774]) ^ 0x96) & (v28[1402] ^ 0x41u)) + v7 + 1550);
  v30 = v29 ^ 0xFFFFFFE8 ^ ((~(4 * (STACK[0x5700] & ~v29)) | 0xFFFFFFD3) + 2 * (STACK[0x5700] & ~v29) + 24);
  v28[8171] = (((v30 & v13) >> v4) + (v30 << v14)) ^ v15 ^ 0x33;
  v31 = STACK[0x8070];
  v32 = *(v7 + ((16 * v31[3774]) & 0x80 ^ 0xCD ^ (v31[809] ^ 0xC5) & ((16 * v31[3774]) ^ 0x8Fu)) + 1550);
  v33 = v32 ^ 0xFFFFFFDC ^ (2 * (v6 & ~v32) - ((4 * (v6 & ~v32)) & 0x44) + 35);
  v31[7578] = (((v33 & v19) >> v3) + (v33 << v5)) ^ v20 ^ 0x94;
  v34 = STACK[0x8070];
  v35 = *((((16 * v34[3774]) ^ 0xFFFFFFCF) & (v34[216] ^ 0x48) ^ v34[216] & 0x40) + v7 + 1550);
  v36 = v35 ^ 0x79 ^ (2 * (STACK[0x5700] & ~v35) - 4 * (STACK[0x5700] & ~v35 & 3) - 122);
  v34[6985] = (((v36 & v13) >> v4) | (v36 << v14)) ^ v15 ^ 0x33;
  v37 = STACK[0x8070];
  v38 = *((v37[12553] & 0xC6 ^ 0xBD ^ ((16 * v37[3774]) ^ 0x49) & (v37[12553] ^ 0x4Au)) + v7 + 2326);
  v39 = v38 ^ 0xFFFFFFC2 ^ (2 * ((v38 ^ 0x48) & v6) - ((4 * ((v38 ^ 0x48) & v6)) & 0x14) - 118);
  v37[6392] = (((v39 & v19) >> v3) + (v39 << v5)) ^ v20 ^ 0x94;
  v40 = STACK[0x8070];
  v41 = *(v7 + ((16 * v40[3774]) & 0x55 ^ 0x4A ^ (v40[11960] ^ 0x12) & ((16 * v40[3774]) ^ 0x8Fu)) + 1550);
  v42 = v41 ^ 0x55 ^ (2 * (v6 & ~v41) - ((4 * (v6 & ~v41)) & 0x54) - 86);
  v40[5799] = (((v42 & v19) >> v3) | (v42 << v5)) ^ v20 ^ 0x94;
  v43 = STACK[0x8070];
  v44 = *(v7 + ((16 * v43[3774]) & 0x60 ^ 0x45 ^ (v43[11367] ^ 0x2D) & ((16 * v43[3774]) ^ 0x8Fu)) + 1550);
  v45 = 2 * (STACK[0x5700] & ~v44) - 4 * (STACK[0x5700] & ~v44 & 7) - 114;
  v43[5206] = (((v44 ^ 0x71u ^ v45) & v13) >> v4) ^ ((v44 ^ 0x71 ^ v45) << v14) ^ v15 ^ 0x33;
  v46 = STACK[0x8070];
  v47 = *((v46[10774] & 0x86 ^ ((16 * v46[3774]) | 9) & (v46[10774] ^ 0x51) ^ ((16 * v46[3774]) & 0x16 | 9) ^ 0xFDu) + v7 + 2326);
  v48 = v47 ^ 0xFFFFFFEB ^ (2 * ((v47 ^ 0x48) & v6) - ((4 * ((v47 ^ 0x48) & v6)) & 0x44) - 93);
  v46[4613] = (((v48 & v19) >> v4) + (v48 << v5)) ^ v20 ^ 0x94;
  v49 = STACK[0x8070];
  v50 = *(v7 + ((16 * v49[3774]) & 0x70 ^ 0x4B ^ ((16 * v49[3774]) ^ 0x8F) & (v49[10181] ^ 0x33u)) + 1550);
  v51 = v50 ^ 0xFFFFFFCB ^ (2 * (STACK[0x5700] & ~v50) - ((4 * (STACK[0x5700] & ~v50)) & 0x68) + 52);
  v49[4020] = (((v51 & v13) >> v3) + (v51 << v14)) ^ v15 ^ 0x33;
  v52 = STACK[0x8070];
  v53 = *((v52[9588] & 0xD5 ^ 0xBD ^ ((16 * v52[3774]) ^ 0x5A) & (v52[9588] ^ 0x48u)) + v7 + 2326);
  v54 = v53 ^ 0xFFFFFFC2 ^ (2 * ((v53 ^ 0x48) & STACK[0x5700]) - ((4 * ((v53 ^ 0x48) & STACK[0x5700])) & 0x14) - 118);
  v52[3427] = ((v54 & v13) >> v4) ^ (v54 << v14) ^ v15 ^ 0x33;
  v55 = STACK[0x8070];
  v56 = *(v7 + ((16 * v55[3774]) & 0xBF ^ 0xCB ^ (v55[8995] ^ 0xF3) & ((16 * v55[3774]) ^ 0x8Fu)) + 1550);
  v57 = v56 & 5 ^ (v6 ^ 0xFFFFFF85) & 0x2F ^ (v56 ^ 0x50) & (v6 ^ 0xFFFFFF85);
  v58 = v56 ^ (((2 * v57) ^ 0xA) + ((4 * v57) & 0x380) + 64) ^ 0xFFFFFFBF;
  v55[2834] = (((v58 & v19) >> v3) | (v58 << v5)) ^ v20 ^ 0x94;
  v59 = STACK[0x8070];
  v60 = *(v7 + ((16 * v59[3774]) & 0xE0 ^ 0xCA ^ (v59[8402] ^ 0xA2) & ((16 * v59[3774]) ^ 0x8Fu)) + 1550);
  v61 = (2 * (v60 & 0x27 ^ (LODWORD(STACK[0x5700]) ^ 0x27) & 0x3F ^ (v60 ^ 0x40) & (LODWORD(STACK[0x5700]) ^ 0x27))) ^ 0x4E;
  v62 = v60 ^ 0xFFFFFFCD ^ (v61 - ((2 * v61) & 0x64) + 50);
  v59[2241] = (((v62 & v13) >> v4) | (v62 << v5)) ^ v20 ^ 0x94;
  v63 = STACK[0x8070];
  v64 = *((v63[7809] & 0x79 ^ ((16 * v63[3774]) ^ 0xF6) & (v63[7809] ^ 0x40) ^ 8u) + v7 + 1550);
  v65 = 2 * (v64 & 0x1D ^ (v6 ^ 0xFFFFFF9D) & 0x3F ^ (v64 ^ 0x40) & (v6 ^ 0xFFFFFF9D));
  v66 = (v65 ^ 0x3A) - 2 * ((v65 ^ 0x3A) & 0x4C ^ v65 & 4) + 73;
  v63[1648] = ((((v64 ^ 0xB6 ^ v66) & v19) >> v3) + ((v64 ^ 0xFFFFFFB6 ^ v66) << v14)) ^ v15 ^ 0x33;
  v67 = STACK[0x8070];
  v68 = *(v7 + ((16 * v67[3181]) & 0x30 ^ (v67[3774] ^ 0x79) & ((16 * v67[3181]) ^ 0x8F) ^ 0xFCu) + 2326);
  v69 = v68 ^ 0x35 ^ (2 * ((v68 ^ 0x48) & STACK[0x5700]) - 8 * (((v68 ^ 0x48u) & STACK[0x5700]) >> 1) + 125);
  v67[1055] = (((v69 & v13) >> v3) | (v69 << v5)) ^ v20 ^ 0x94;
  v70 = STACK[0x8070];
  v71 = *(v7 + ((~*(v70 + 3181) & 0x8F | (*(v70 + 3181) ^ 0x40) & (16 * *(v70 + 3181))) ^ 0xC7u) + 1550);
  v72 = v71 ^ 0xFFFFFF98 ^ (2 * (v6 & ~v71) - ((4 * (v6 & ~v71)) & 0xFFFFFFCF) + 103);
  *(v70 + 462) = (((v72 & v19) >> v4) | (v72 << v14)) ^ v15 ^ 0x33;
  v73 = STACK[0x8070];
  v74 = *(v7 + ((16 * v73[3181]) & 0x9F ^ 0x7B ^ ((16 * v73[3181]) ^ 0x8F) & (v73[2588] ^ 0xDEu)) + 2326);
  v75 = v74 ^ 0xFFFFFF9D ^ (2 * ((v74 ^ 0x48) & STACK[0x5700]) - ((4 * ((v74 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFA8) - 43);
  v73[12799] = (((v75 & v19) >> v3) + (v75 << v5)) ^ v20 ^ 0x94;
  v76 = STACK[0x8070];
  v77 = *((v76[1995] & 0xFE ^ ((16 * v76[3181]) ^ 0x71) & (v76[1995] ^ 0x4A) ^ 8u) + v7 + 1550);
  v78 = v77 ^ 0xFFFFFFD0 ^ (2 * (v6 & ~v77) - ((4 * (v6 & ~v77)) & 0x5C) + 47);
  v76[12206] = (((v78 & v13) >> v4) | (v78 << v14)) ^ v15 ^ 0x33;
  v79 = STACK[0x8070];
  v80 = *((((16 * v79[3181]) ^ 0x6A) & (v79[1402] ^ 0x4D) ^ v79[1402] & 0xE5u) + v7 + 1550);
  v81 = (2 * (v80 & 0x56 ^ (LODWORD(STACK[0x5700]) ^ 0xFFFFFFD6) & 0x77 ^ (v80 ^ 8) & (LODWORD(STACK[0x5700]) ^ 0xFFFFFFD6))) ^ 0xFFFFFFAC;
  v82 = v80 ^ 0xFFFFFF9E ^ (v81 - (v81 >> 5 << 6) + 97);
  v79[11613] = (((v82 & v19) >> v3) + (v82 << v5)) ^ v20 ^ 0x94;
  v83 = STACK[0x8070];
  v84 = *(v7 + ((16 * v83[3181]) & 0xE0 ^ 0xCD ^ (v83[809] ^ 0xA5) & ((16 * v83[3181]) ^ 0x8Fu)) + 1550);
  v85 = v84 ^ (((2 * (v84 & 0x43 ^ (v6 ^ 0x43) & 0x4F ^ (v84 ^ 0x30) & (v6 ^ 0x43))) ^ 0xFFFFFF86) - ((4 * ((v84 ^ 0x30) & (v6 ^ 0x43))) & 0x380) + 64) ^ 0xFFFFFFBF;
  v83[11020] = ((v85 & v13) >> v4) ^ (v85 << v14) ^ v15 ^ 0x33;
  v86 = STACK[0x8070];
  v87 = *(v7 + ((16 * *(v86 + 3181)) & 0xE0 ^ 0xCB ^ (*(v86 + 216) ^ 0xA3) & ((16 * *(v86 + 3181)) ^ 0x8Fu)) + 1550);
  v88 = v87 ^ 0xFFFFFFA2 ^ (2 * (STACK[0x5700] & ~v87) - ((4 * (STACK[0x5700] & ~v87)) & 0xFFFFFFB8) + 93);
  *(v86 + 10427) = (((v88 & v19) >> v4) + (v88 << v14)) ^ v15 ^ 0x33;
  LODWORD(v86) = *((((16 * *(STACK[0x8070] + 3181)) ^ 0xAE) & (*(STACK[0x8070] + 12553) ^ 0x48) ^ (*(STACK[0x8070] + 12553) & 0x21 | 0x40u)) + v7 + 1550);
  LODWORD(v86) = v86 ^ 0xB ^ (2 * (v6 & ~v86) - ((4 * (v6 & ~v86)) & 0xFFFFFFE8) - 12);
  *(STACK[0x8070] + 9834) = (((v86 & v13) >> v3) | (v86 << v5)) ^ v20 ^ 0x94;
  LODWORD(v86) = *(v7 + ((16 * *(STACK[0x8070] + 3181)) & 0xC0 ^ (*(STACK[0x8070] + 11960) ^ 0x85) & ((16 * *(STACK[0x8070] + 3181)) ^ 0x8F) ^ 0x70u) + 2326);
  LODWORD(v86) = v86 ^ 0xFFFFFFB6 ^ (-2 * ((v86 ^ 0x48) & LODWORD(STACK[0x5700])) - 2);
  *(STACK[0x8070] + 9241) = (((v86 & v13) >> v3) | (v86 << v14)) ^ v20 ^ 0x94;
  LODWORD(v86) = *((*(STACK[0x8070] + 11367) & 0x2F ^ 0xF5 ^ ((16 * *(STACK[0x8070] + 3181)) ^ 0xA0) & (*(STACK[0x8070] + 11367) ^ 0x4Fu)) + v7 + 2326);
  LODWORD(v86) = v86 ^ 0xFFFFFFAE ^ (2 * ((v86 ^ 0x48) & v6) - ((4 * ((v86 ^ 0x48) & v6)) & 0xFFFFFFCF) - 26);
  *(STACK[0x8070] + 8648) = (((v86 & v19) >> v4) | (v86 << v5)) ^ v15 ^ 0x33;
  LODWORD(v86) = *(((*(STACK[0x8070] + 10774) & 0x90 | 0x40) ^ ((16 * *(STACK[0x8070] + 3181)) ^ 0x1F) & (*(STACK[0x8070] + 10774) ^ 0x48u)) + v7 + 1550);
  LODWORD(v86) = v86 ^ 0xFFFFFFED ^ (2 * (STACK[0x5700] & ~v86) - ((4 * (STACK[0x5700] & ~v86)) & 0x24) + 18);
  *(STACK[0x8070] + 8055) = (((v86 & v19) >> v4) + (v86 << v14)) ^ v15 ^ 0x33;
  LODWORD(v86) = *(v7 + ((16 * *(STACK[0x8070] + 3181)) & 0x80 ^ ((16 * *(STACK[0x8070] + 3181)) ^ 0x34) & (*(STACK[0x8070] + 10181) ^ 0xC0) ^ (*(STACK[0x8070] + 10181) ^ 0xC0) & 0xBB ^ 0xC8u) + 1550);
  LODWORD(v86) = v86 ^ (2 * (v6 & ~v86) - ((4 * (v6 & ~v86)) & 0x38) + 28) ^ 0xFFFFFFE3;
  *(STACK[0x8070] + 7462) = (((v86 & v13) >> v3) | (v86 << v5)) ^ v20 ^ 0x94;
  LODWORD(v86) = *(v7 + (*(STACK[0x8070] + 9588) & 0x3E ^ 0xA ^ ((16 * *(STACK[0x8070] + 3181)) ^ 0x4E | *(STACK[0x8070] + 9588) ^ 0xBDu)) + 2326);
  LODWORD(v86) = v86 ^ 0x24 ^ (2 * ((v86 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v86 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFD8) + 108);
  *(STACK[0x8070] + 6869) = ((v86 & v19) >> v4) ^ (v86 << v14) ^ v15 ^ 0x33;
  LODWORD(v86) = *((((16 * *(STACK[0x8070] + 3181)) ^ 0xFFFFFF8F) & (*(STACK[0x8070] + 8995) ^ 0x48) ^ 0x40) + v7 + 1550);
  LODWORD(v86) = v86 ^ (2 * (v6 & ~v86) - ((4 * (v6 & ~v86)) & 0x40) + 32) ^ 0xFFFFFFDF;
  *(STACK[0x8070] + 6276) = (((v86 & v13) >> v3) + (v86 << v5)) ^ v20 ^ 0x94;
  LODWORD(v86) = *(v7 + ((16 * *(STACK[0x8070] + 3181)) & 0x80 ^ 0xCE ^ (*(STACK[0x8070] + 8402) ^ 0xC6) & ((16 * *(STACK[0x8070] + 3181)) ^ 0x8Fu)) + 1550);
  v89 = 2 * (v86 & 0x10 ^ (LODWORD(STACK[0x5700]) ^ 0xFFFFFF90) & 0x3B ^ (v86 ^ 0x44) & (LODWORD(STACK[0x5700]) ^ 0xFFFFFF90));
  LODWORD(v86) = v86 ^ 0xDE ^ ((v89 ^ 0x20) + ~(2 * ((v89 ^ 0x20) & 0x26 ^ v89 & 6)) + 34);
  LODWORD(v86) = (v8 ^ -v8 ^ (((v86 & v19) >> v4) + (v86 << v5) - ((((v86 & v19) >> v4) + (v86 << v5)) ^ v8))) + ((v86 & v19) >> v4) + (v86 << v5);
  *(STACK[0x8070] + 5683) = (v86 - ((2 * v86) & 0xA4) + 82) ^ 0xE5;
  LODWORD(v86) = *(v7 + ((16 * *(STACK[0x8070] + 3181)) & 0x9F ^ 0x74 ^ (*(STACK[0x8070] + 7809) ^ 0xD1) & ((16 * *(STACK[0x8070] + 3181)) ^ 0x8Fu)) + 2326);
  LODWORD(v86) = v86 ^ (2 * ((v86 ^ 0x48) & v6) - ((4 * ((v86 ^ 0x48) & v6)) & 0x60) - 80) ^ 0xFFFFFFF8;
  *(STACK[0x8070] + 5090) = (((v86 & v13) >> v3) + (v86 << v14)) ^ v15 ^ 0x33;
  v90 = STACK[0x8070];
  v91 = *(v7 + ((16 * v90[2588]) & 0xE0 ^ (v90[3774] ^ 0xAA) & ((16 * v90[2588]) ^ 0x8F) ^ 0x7Fu) + 2326);
  v92 = v91 ^ 0xFFFFFFBB ^ (2 * ((v91 ^ 0x48) & v6) - ((4 * ((v91 ^ 0x48) & v6)) & 0xFFFFFFE7) - 13);
  v90[4497] = ((v92 & v19) >> v3) ^ (v92 << v14) ^ v20 ^ 0x94;
  v93 = STACK[0x8070];
  v94 = *((v93[3181] & 0x7E ^ ((16 * v93[2588]) ^ 0xFFFFFFF1) & (v93[3181] ^ 0x48) ^ 8) + v7 + 1550);
  v95 = v94 ^ 0x56 ^ (2 * (STACK[0x5700] & ~v94) - ((4 * (STACK[0x5700] & ~v94)) & 0x50) - 87);
  v93[3904] = (((v95 & v13) >> v4) + (v95 << v5)) ^ v15 ^ 0x33;
  v96 = STACK[0x8070];
  v97 = *((*(v96 + 2588) & 0x9A ^ ((16 * *(v96 + 2588)) ^ 0x15) & (*(v96 + 2588) ^ 0x25) ^ ((16 * *(v96 + 2588)) ^ 0x15) & 0x65 ^ 0xF5u) + v7 + 2326);
  v98 = v97 ^ 0x5F ^ (2 * ((v97 ^ 0x48) & STACK[0x5700]) - ((4 * ((v97 ^ 0x48) & STACK[0x5700])) & 0x2C) + 23);
  *(v96 + 3311) = (((v98 & v19) >> v4) | (v98 << v14)) ^ v20 ^ 0x94;
  v99 = STACK[0x8070];
  v100 = *((v99[1995] & 0x1D ^ 0x48 ^ ((16 * v99[2588]) ^ 0x92) & (v99[1995] ^ 0x48u)) + v7 + 1550);
  v101 = v100 ^ 0xFFFFFFE9 ^ (2 * (v6 & ~v100) - ((4 * (v6 & ~v100)) & 0x2C) + 22);
  v99[2718] = ((v101 & v13) >> v3) ^ (v101 << v5) ^ v15 ^ 0x33;
  v102 = STACK[0x8070];
  v103 = *(v7 + ((16 * v102[2588]) & 0x9F ^ (v102[1402] ^ 0xD8) & ((16 * v102[2588]) ^ 0x8F) ^ 0xC0u) + 1550);
  v104 = v103 ^ (2 * (STACK[0x5700] & ~v103) - 32 * ((STACK[0x5700] & ~v103) >> 3) - 15) ^ 0xE;
  v102[2125] = (((v104 & v19) >> v3) | (v104 << v5)) ^ v15 ^ 0x33;
  v105 = STACK[0x8070];
  v106 = *(v7 + ((v105[809] ^ 0xC1) & ((16 * v105[2588]) ^ 0x8F) ^ ((16 * v105[2588]) | 0x74u)) + 2326);
  v107 = v106 ^ 0xFFFFFF9A ^ (2 * ((v106 ^ 0x48) & v6) - ((4 * ((v106 ^ 0x48) & v6)) & 0xFFFFFFA4) - 46);
  v105[1532] = ((v107 & v13) >> v4) ^ (v107 << v14) ^ v20 ^ 0x94;
  v108 = STACK[0x8070];
  v109 = *((((16 * v108[2588]) ^ 0x3F) & (v108[216] ^ 0x48) ^ (v108[216] & 0xB0 | 0x40u)) + v7 + 1550);
  v110 = v109 ^ 0xFFFFFFC6 ^ (2 * (STACK[0x5700] & ~v109) - ((4 * (STACK[0x5700] & ~v109)) & 0x70) + 57);
  v108[939] = ((v110 & v19) >> v4) ^ (v110 << v14) ^ v15 ^ 0x33;
  v111 = STACK[0x8070];
  v112 = *((*(v111 + 12553) & 0xA1 ^ 0xFD ^ ((16 * *(v111 + 2588)) ^ 0x2E) & (*(v111 + 12553) ^ 0x49u)) + v7 + 2326);
  v113 = v112 ^ (2 * ((v112 ^ 0x48) & v6) - ((4 * ((v112 ^ 0x48) & v6)) & 0xFFFFFF94) + 75) ^ 3;
  *(v111 + 346) = ((v113 & v13) >> v3) ^ (v113 << v5) ^ v20 ^ 0x94;
  v114 = STACK[0x8070] + 11960;
  LODWORD(v111) = *((*v114 & 0xFC ^ ((16 * *(STACK[0x8070] + 2588)) ^ 0x73) & (*v114 ^ 0x40) ^ 8u) + v7 + 1550);
  LODWORD(v111) = v111 ^ 0x21 ^ (2 * (v6 & ~v111) - ((4 * (v6 & ~v111)) & 0xFFFFFFBF) - 34);
  *(v114 + 723) = (((v111 & v13) >> v4) + (v111 << v5)) ^ v15 ^ 0x33;
  LODWORD(v111) = *(v7 + (*(STACK[0x8070] + 11367) & 0x30 ^ ((16 * *(STACK[0x8070] + 2588)) ^ 0xBF) & (*(STACK[0x8070] + 11367) ^ 0x48) ^ 0xFDu) + 2326);
  LODWORD(v111) = (((4 * ((v111 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0x6C) - 2 * ((v111 ^ 0x48) & LODWORD(STACK[0x5700])) + 72) ^ v111;
  *(STACK[0x8070] + 12090) = ((v111 & v19) >> v3) ^ (v111 << v14) ^ v20 ^ 0x94;
  LODWORD(v111) = *((*(STACK[0x8070] + 10774) & 0xAA ^ 0x48 ^ ((16 * *(STACK[0x8070] + 2588)) ^ 0x25) & (*(STACK[0x8070] + 10774) ^ 0x42u)) + v7 + 1550);
  LODWORD(v111) = v111 ^ 0xFFFFFF8C ^ (2 * (STACK[0x5700] & ~v111) - ((4 * (STACK[0x5700] & ~v111)) & 0xFFFFFFE7) + 115);
  *(STACK[0x8070] + 11497) = (((v111 & v19) >> v4) | (v111 << v14)) ^ v20 ^ 0x94;
  LODWORD(v111) = *(v7 + ((16 * *(STACK[0x8070] + 2588)) & 0xE0 ^ 0x7D ^ ((16 * *(STACK[0x8070] + 2588)) ^ 0x8F) & (*(STACK[0x8070] + 10181) ^ 0xA8u)) + 2326);
  LODWORD(v111) = v111 ^ 0x33 ^ (2 * ((v111 ^ 0x48) & v6) - ((4 * ((v111 ^ 0x48) & v6)) & 0xFFFFFFF7) + 123);
  *(STACK[0x8070] + 10904) = (((v111 & v13) >> v3) | (v111 << v5)) ^ v15 ^ 0x33;
  LODWORD(v111) = *(v7 + (*(STACK[0x8070] + 9588) & 0x77 ^ 0xBD ^ ((16 * *(STACK[0x8070] + 2588)) ^ 0xF8) & (*(STACK[0x8070] + 9588) ^ 0x4Cu)) + 2326);
  LODWORD(v111) = v111 ^ 0x47 ^ (2 * ((v111 ^ 0x48) & LODWORD(STACK[0x4E50])) - 4 * ((v111 ^ 0x48) & LODWORD(STACK[0x4E50]) & 7) + 15);
  *(STACK[0x8070] + 10311) = (((v111 & v13) >> v3) + (v111 << v5)) ^ v15 ^ 0x33;
  LODWORD(v111) = *((*(STACK[0x8070] + 8995) & 0x5D ^ ((16 * *(STACK[0x8070] + 2588)) ^ 0xD2) & (*(STACK[0x8070] + 8995) ^ 0x4D) ^ 8u) + v7 + 1550);
  LODWORD(v111) = v111 ^ 0xFFFFFFA4 ^ (2 * (STACK[0x5700] & ~v111) - ((4 * (STACK[0x5700] & ~v111)) & 0xFFFFFFB4) + 91);
  *(STACK[0x8070] + 9718) = (((v111 & v19) >> v4) + (v111 << v14)) ^ v20 ^ 0x94;
  LODWORD(v111) = *(v7 + ((16 * *(STACK[0x8070] + 2588)) & 0x50 ^ (*(STACK[0x8070] + 8402) ^ 0x1C) & ((16 * *(STACK[0x8070] + 2588)) ^ 0x8F) ^ 0x44u) + 1550);
  LODWORD(v111) = v111 ^ 0xFFFFFF88 ^ (2 * (STACK[0x5700] & ~v111) - ((4 * (STACK[0x5700] & ~v111)) & 0xFFFFFFEF) + 119);
  *(STACK[0x8070] + 9125) = (((v111 & v13) >> v4) + (v111 << v14)) ^ v15 ^ 0x33;
  LODWORD(v111) = *(v7 + ((16 * *(STACK[0x8070] + 2588)) & 0x55 ^ 0xF6 ^ (*(STACK[0x8070] + 7809) ^ 0x13) & ((16 * *(STACK[0x8070] + 2588)) ^ 0x8Fu)) + 2326);
  LODWORD(v111) = v111 ^ 0x12 ^ (2 * ((v111 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v111 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 0xFFFFFFB4) + 90);
  *(STACK[0x8070] + 8532) = ((v111 & v19) >> v3) ^ (v111 << v5) ^ v20 ^ 0x94;
  v115 = STACK[0x8070];
  LODWORD(v114) = *(v7 + ((16 * v115[1995]) & 0xE0 ^ ((16 * v115[1995]) ^ 0x8F) & (v115[3774] ^ 0xA9) ^ 0xC1u) + 1550);
  LODWORD(v114) = v114 ^ 0xFFFFFF94 ^ (2 * (STACK[0x4E50] & ~v114) - ((4 * (STACK[0x4E50] & ~v114)) & 0xFFFFFFD4) + 107);
  v115[7939] = (((v114 & v19) >> v3) + (v114 << v5)) ^ v15 ^ 0x33;
  v116 = STACK[0x8070];
  LODWORD(v114) = *(v7 + ((((16 * v116[1995]) ^ 0x8A) & (v116[3181] ^ 0x4D) | v116[3181] & 5) ^ 0xFDu) + 2326);
  LODWORD(v114) = v114 ^ (2 * ((v114 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v114 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFAC) + 86) ^ 0x1E;
  v116[7346] = ((v114 & v13) >> v4) ^ (v114 << v14) ^ v20 ^ 0x94;
  v117 = STACK[0x8070];
  LODWORD(v114) = *((v117[2588] & 0x82 ^ 0xFD ^ ((16 * v117[1995]) | 0xD) & (v117[2588] ^ 0x4Au)) + v7 + 2326);
  v118 = v114 & 0x58 ^ (LODWORD(STACK[0x5700]) ^ 0xFFFFFFD8) & 0x6D ^ (v114 ^ 0x25) & (LODWORD(STACK[0x5700]) ^ 0xFFFFFFD8);
  LODWORD(v114) = v114 ^ (((2 * v118) ^ 0xFFFFFF90) - ((4 * v118) & 0x50) - 87) ^ 0xFFFFFFE1;
  v117[6753] = (((v114 & v13) >> v4) | (v114 << v5)) ^ v15 ^ 0x33;
  v119 = STACK[0x8070];
  LODWORD(v114) = *(v7 + ((16 * *(v119 + 1995)) & 0xBF ^ ((16 * *(v119 + 1995)) ^ 0x8F) & (*(v119 + 1995) ^ 0xF9) ^ 0x7Cu) + 2326);
  LODWORD(v114) = (LODWORD(STACK[0x4E50]) & (v114 ^ 0x48) & 0x7F ^ (v114 >> 1) | (v114 << 7)) ^ 0xFFFFFFD7;
  LODWORD(v114) = ((v114 >> 7) & 1 | (2 * v114)) ^ 0xFFFFFFE7;
  *(v119 + 6160) = (((v114 & v19) >> v3) | (v114 << v14)) ^ v20 ^ 0x94;
  v120 = STACK[0x8070];
  v121 = *((v120[1402] & 0xEC ^ 0xB5 ^ ((16 * v120[1995]) ^ 0x63) & (v120[1402] ^ 0x40u)) + v7 + 2326);
  v122 = v121 ^ 0x61 ^ (2 * ((v121 ^ 0x48) & STACK[0x5700]) - ((4 * ((v121 ^ 0x48) & STACK[0x5700])) & 0x50) + 41);
  v120[5567] = (((v122 & v19) >> v4) | (v122 << v5)) ^ v15 ^ 0x33;
  v123 = STACK[0x8070];
  v124 = *(v7 + ((16 * v123[1995]) & 0x9F ^ 0xCA ^ (v123[809] ^ 0xD2) & ((16 * v123[1995]) ^ 0x8Fu)) + 1550);
  v125 = v124 ^ 0x5E ^ (2 * (STACK[0x4E50] & ~v124) - ((4 * (STACK[0x4E50] & ~v124)) & 0x40) - 95);
  v123[4974] = (((v125 & v13) >> v3) | (v125 << v14)) ^ v20 ^ 0x94;
  v126 = STACK[0x8070];
  v127 = *(v7 + ((16 * v126[1995]) & 0x20 ^ (v126[216] ^ 0x69) & ((16 * v126[1995]) ^ 0x8F) ^ 0xFCu) + 2326);
  v128 = v127 ^ 0xFFFFFF8E ^ ((~(4 * ((v127 ^ 0x48) & STACK[0x5700])) | 0x73) + 2 * ((v127 ^ 0x48) & STACK[0x5700]) - 57);
  v126[4381] = ((v128 & v13) >> v3) ^ (v128 << v5) ^ v20 ^ 0x94;
  v129 = STACK[0x8070];
  v130 = *((((16 * v129[1995]) ^ 0x78) & (v129[12553] ^ 0x4C) ^ v129[12553] & 0xF7u) + v7 + 1550);
  v131 = v130 ^ 0xFFFFFFBC ^ (2 * (STACK[0x4E50] & ~v130) - ((4 * (STACK[0x4E50] & ~v130)) & 0xFFFFFF87) + 67);
  v129[3788] = ((v131 & v19) >> v4) ^ (v131 << v14) ^ v15 ^ 0x33;
  v132 = STACK[0x8070];
  v133 = *((v132[11960] & 0x78 ^ ((16 * v132[1995]) ^ 0xFFFFFFF7) & (v132[11960] ^ 0x40) ^ 8) + v7 + 1550);
  v134 = 2 * (v133 & 0x48 ^ (LODWORD(STACK[0x5700]) ^ 0x48) & 0x59 ^ (v133 ^ 0x26) & (LODWORD(STACK[0x5700]) ^ 0x48));
  v135 = v133 ^ 0xFFFFFFC4 ^ ((v134 ^ 0xFFFFFF90) - 2 * ((v134 ^ 0xFFFFFF90) & 0x3E ^ v134 & 4) + 59);
  v132[3195] = (((v135 & v13) >> v4) + (v135 << v14)) ^ v20 ^ 0x94;
  v136 = STACK[0x8070];
  v137 = *((((16 * v136[1995]) ^ 0xD8) & (v136[11367] ^ 0x49) ^ v136[11367] & 0x57u) + v7 + 1550);
  v138 = v137 ^ (2 * (STACK[0x4E50] & ~v137) - ((4 * (STACK[0x4E50] & ~v137)) & 0x30) + 24) ^ 0xFFFFFFE7;
  v136[2602] = (((v138 & v19) >> v3) + (v138 << v5)) ^ v15 ^ 0x33;
  v139 = STACK[0x8070];
  v140 = *((v139[10774] & 0xF3 ^ 0xBD ^ ((16 * v139[1995]) ^ 0x7C) & (v139[10774] ^ 0x48u)) + v7 + 2326);
  v141 = v140 ^ 0xFFFFFFE8 ^ ((~(4 * ((v140 ^ 0x48) & STACK[0x4E50])) | 0xFFFFFFBF) + 2 * ((v140 ^ 0x48) & STACK[0x4E50]) - 95);
  v139[2009] = (((v141 & v13) >> v3) | (v141 << v5)) ^ v20 ^ 0x94;
  v142 = STACK[0x8070];
  v143 = *((v142[10181] & 0x85 ^ 0xFD ^ ((16 * v142[1995]) | 0xA) & (v142[10181] ^ 0x4Cu)) + v7 + 2326);
  v144 = v143 ^ 0xFFFFFFDE ^ (2 * ((v143 ^ 0x48) & STACK[0x5700]) - ((4 * ((v143 ^ 0x48) & STACK[0x5700])) & 0x2C) - 106);
  v142[1416] = (((v144 & v19) >> v4) + (v144 << v14)) ^ v15 ^ 0x33;
  v145 = STACK[0x8070];
  v146 = *(v7 + ((16 * v145[1995]) & 0xE0 ^ ((16 * v145[1995]) ^ 0x8F) & (v145[9588] ^ 0xA9) ^ 0x7Cu) + 2326);
  LODWORD(v114) = v146 ^ 0x61 ^ (2 * ((v146 ^ 0x48) & STACK[0x5700]) - ((4 * ((v146 ^ 0x48) & STACK[0x5700])) & 0x50) + 41);
  v145[823] = (((v114 & v19) >> v3) | (v114 << v14)) ^ v20 ^ 0x94;
  v147 = STACK[0x8070];
  LODWORD(v114) = *(v7 + ((v147[8995] & 0x22 | 0x48) ^ ((16 * v147[1995]) ^ 0xAD) & (v147[8995] ^ 0x40u)) + 1550);
  LODWORD(v114) = v114 ^ 0x6A ^ (2 * (STACK[0x4E50] & ~v114) - ((4 * (STACK[0x4E50] & ~v114)) & 0x28) - 107);
  v147[230] = ((v114 & v13) >> v4) ^ (v114 << v5) ^ v15 ^ 0x33;
  v148 = STACK[0x8070];
  LOBYTE(v114) = ((((16 * *(v148 + 1995)) ^ 0x65) + 25) ^ (((16 * *(v148 + 1995)) ^ 0x3F) + 67) ^ (((16 * *(v148 + 1995)) ^ 0x2A) + 88)) + 86;
  LOBYTE(v146) = v114 & 0x30 ^ 0x5B;
  LOBYTE(v114) = v114 ^ (2 * ((v114 ^ 0x1C) & (2 * ((v114 ^ 0x1C) & (2 * ((v114 ^ 0x1C) & (2 * ((v114 ^ 0x1C) & (2 * ((v114 ^ 0x1C) & (2 * ((v114 ^ 0x1C) & 0x2E ^ v146)) ^ v146)) ^ v146)) ^ v146)) ^ v146)) ^ v146));
  LODWORD(v114) = *(v7 + (v114 & 0xA0 ^ (v114 ^ 0xCD) & (*(STACK[0x8070] + 8402) ^ 0xE8u) ^ 0xC0) + 1550);
  LODWORD(v114) = v114 ^ 0xFFFFFFE2 ^ (2 * (STACK[0x4E50] & ~v114) - ((4 * (STACK[0x4E50] & ~v114)) & 0x38) + 29);
  *(v148 + 12567) = (((v114 & v13) >> v4) + (v114 << v5)) ^ v15 ^ 0x33;
  v149 = STACK[0x8070];
  LODWORD(v114) = *((v149[7809] & 0x6B ^ (v1 ^ (16 * v149[1995])) & (v149[7809] ^ 0x43) ^ 8u) + v7 + 1550);
  LODWORD(v114) = v114 ^ (2 * (STACK[0x5700] & ~v114) - 4 * (STACK[0x5700] & ~v114 & 0x1F) + 62) ^ 0xFFFFFFC1;
  v149[11974] = (((v114 & v19) >> v3) + (v114 << v14)) ^ v20 ^ 0x94;
  v150 = STACK[0x8070];
  LODWORD(v114) = (16 * *(STACK[0x8070] + 1402)) ^ 0xFFFFFFA6;
  LODWORD(v114) = *((*(v150 + 3774) & 0x29 ^ (*(v150 + 3774) ^ 0x1E) & v114 ^ v114 & 0x56 ^ 0xF5) + v7 + 2326);
  LODWORD(v114) = v114 ^ 0xFFFFFFAC ^ (2 * ((v114 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v114 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFC8) - 28);
  *(v150 + 11381) = (((v114 & v13) >> v3) + (v114 << v14)) ^ v15 ^ 0x33;
  v151 = STACK[0x8070];
  LODWORD(v114) = *(v7 + ((16 * v151[1402]) & 0xAA ^ 0x7B ^ (v151[3181] ^ 0xEE) & ((16 * v151[1402]) ^ 0x8Fu)) + 2326);
  LODWORD(v114) = v114 ^ 0x44 ^ (2 * ((v114 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v114 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 0x18) + 12);
  v151[10788] = (((v114 & v19) >> v4) + (v114 << v5)) ^ v20 ^ 0x94;
  v152 = STACK[0x8070];
  LODWORD(v114) = *(v7 + ((16 * v152[1402]) & 0xC0 ^ (v152[2588] ^ 0x89) & 0xBF ^ ((16 * v152[1402]) ^ 0x30) & (v152[2588] ^ 0x89) ^ 0xC1u) + 1550);
  LODWORD(v114) = v114 ^ 0xFFFFFFA1 ^ (2 * (STACK[0x5700] & ~v114) - ((4 * (STACK[0x5700] & ~v114)) & 0xFFFFFFBF) + 94);
  v152[10195] = (((v114 & v19) >> v4) + (v114 << v14)) ^ v15 ^ 0x33;
  v153 = STACK[0x8070];
  LODWORD(v114) = *(((v153[1995] ^ 0x42u) & ((16 * (v153[1402] & 0xF)) ^ 0x8F) ^ 0xF7) + v7 + 2326);
  LODWORD(v114) = v114 ^ (2 * ((v114 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v114 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 0x70) - 72) ^ 0xFFFFFFF0;
  v153[9602] = (((v114 & v13) >> v3) + (v114 << v5)) ^ v20 ^ 0x94;
  v154 = STACK[0x8070];
  LODWORD(v114) = *((*(v154 + 1402) & 0x9D ^ 0xF5 ^ ((16 * *(v154 + 1402)) ^ 0x12) & (*(v154 + 1402) ^ 0x4Cu)) + v7 + 2326);
  LODWORD(v114) = v114 ^ 0xFFFFFF86 ^ (2 * ((v114 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v114 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 0xFFFFFF9F) - 50);
  *(v154 + 9009) = ((v114 & v13) >> v3) ^ (v114 << v14) ^ v15 ^ 0x33;
  v155 = STACK[0x8070];
  LODWORD(v114) = *((v155[809] & 0xBB ^ 0x48 ^ ((16 * v155[1402]) ^ 0x34) & (v155[809] ^ 0x42u)) + v7 + 1550);
  LODWORD(v114) = v114 ^ (2 * (STACK[0x5700] & ~v114) - 4 * (STACK[0x5700] & ~v114 & 0xF) + 30) ^ 0xFFFFFFE1;
  v155[8416] = (((v114 & v19) >> v4) + (v114 << v5)) ^ v20 ^ 0x94;
  v156 = STACK[0x8070];
  LODWORD(v114) = *((v156[216] & 0x9B ^ 0xF5 ^ ((16 * v156[1402]) ^ 0x14) & (v156[216] ^ 0x41u)) + v7 + 2326);
  LODWORD(v114) = v114 ^ (2 * ((v114 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v114 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFF9F) - 49) ^ 0xFFFFFF87;
  v156[7823] = ((v114 & v19) >> v4) ^ (v114 << v14) ^ v20 ^ 0x94;
  v157 = STACK[0x8070];
  LODWORD(v114) = *(v7 + (((16 * (v157[1402] & 3)) | 0x4A) ^ ((16 * v157[1402]) ^ 0x8F) & (v157[12553] ^ 0x72u)) + 1550);
  v158 = LODWORD(STACK[0x4E50]) ^ 0x20;
  LODWORD(STACK[0x5750]) = v158;
  v159 = 2 * (v114 & 0x20 ^ v158 & 0x66 ^ (v114 ^ 0x19) & v158);
  LODWORD(v114) = v114 ^ 0xFFFFFFAD ^ ((v159 ^ 0x40) + ~(2 * ((v159 ^ 0x40) & 0x56 ^ v159 & 4)) + 83);
  v157[7230] = (((v114 & v13) >> v3) | (v114 << v5)) ^ v15 ^ 0x33;
  v160 = STACK[0x8070];
  v161 = *(v7 + (v160[11960] & 0x31 ^ ((16 * v160[1402]) ^ 0xBE) & (v160[11960] ^ 0x48) ^ 0xFDu) + 2326);
  v162 = (v161 & 0x11111111 | STACK[0x4E50] & 0x6C) ^ (v161 ^ 0x24) & (LODWORD(STACK[0x4E50]) ^ 0x11);
  v163 = v161 ^ 0x16 ^ (2 * v162 - ((4 * v162) & 0xFFFFFFBF) + 94);
  v160[6637] = (((v163 & v13) >> v4) + (v163 << v5)) ^ v20 ^ 0x94;
  v164 = STACK[0x8070];
  v165 = *(((v164[11367] & 0x32 | 0x40) ^ ((16 * v164[1402]) ^ 0xBD) & (v164[11367] ^ 0x48u)) + v7 + 1550);
  v166 = v165 ^ 0x24 ^ ((~(4 * (STACK[0x5700] & ~v165)) | 0x4B) + 2 * (STACK[0x5700] & ~v165) - 36);
  v164[6044] = (((v166 & v19) >> v3) + (v166 << v14)) ^ v15 ^ 0x33;
  v167 = STACK[0x8070];
  v168 = *(v7 + ((16 * v167[1402]) & 0xDF ^ 0xC5 ^ (v167[10774] ^ 0x9D) & ((16 * v167[1402]) ^ 0x8Fu)) + 1550);
  v169 = v168 ^ 0xFFFFFFA3 ^ (2 * (STACK[0x5700] & ~v168) - ((4 * (STACK[0x5700] & ~v168)) & 0xFFFFFFB8) + 92);
  v167[5451] = ((v169 & v13) >> v3) ^ (v169 << v14) ^ v15 ^ 0x33;
  v170 = STACK[0x8070];
  v171 = *(v7 + ((16 * v170[1402]) & 0xC0 ^ 0x75 ^ (v170[10181] ^ 0x80) & ((16 * v170[1402]) ^ 0x8Fu)) + 2326);
  v172 = v171 ^ 0xFFFFFFBC ^ (2 * ((v171 ^ 0x48) & STACK[0x4E50]) - ((4 * ((v171 ^ 0x48) & STACK[0x4E50])) & 0xFFFFFFE8) - 12);
  v170[4858] = (((v172 & v19) >> v4) + (v172 << v5)) ^ v20 ^ 0x94;
  v173 = STACK[0x8070];
  v174 = *(v7 + ((16 * v173[1402]) & 0x40 ^ 0x48 ^ ((16 * v173[1402]) ^ 0x8Fu) & v173[9588]) + 1550);
  v175 = v174 ^ 0xFFFFFFAF ^ (2 * (STACK[0x4E50] & ~v174) - ((4 * (STACK[0x4E50] & ~v174)) & 0xFFFFFFA0) + 80);
  v173[4265] = (((v175 & v19) >> v4) | (v175 << v14)) ^ v20 ^ 0x94;
  v176 = STACK[0x8070];
  v177 = *(v7 + ((16 * v176[1402]) & 0xD0 ^ (v176[8995] ^ 0x92) & ((16 * v176[1402]) ^ 0x8F) ^ 0x77u) + 2326);
  v178 = v177 & 0x54 ^ (LODWORD(STACK[0x5700]) ^ 0x54) & 0x63 ^ (v177 ^ 0x2B) & (LODWORD(STACK[0x5700]) ^ 0x54);
  v179 = v177 ^ (2 * v178 - ((4 * v178) & 0x3A0) - 48) ^ 0x18;
  v176[3672] = (((v179 & v13) >> v3) | (v179 << v5)) ^ v15 ^ 0x33;
  v180 = STACK[0x8070];
  v181 = *(((v180[8402] ^ 0x46u) & ((16 * (v180[1402] & 0xF)) ^ 0x8F) ^ 0xF3) + v7 + 2326);
  v182 = v181 ^ 0xFFFFFFDB ^ (2 * ((v181 ^ 0x48) & STACK[0x5700]) - ((4 * ((v181 ^ 0x48) & STACK[0x5700])) & 0x24) - 109);
  v180[3079] = (((v182 & v13) >> v4) | (v182 << v5)) ^ v15 ^ 0x33;
  v183 = STACK[0x8070];
  v184 = *(v7 + ((16 * v183[1402]) & 0xE0 ^ (v183[7809] ^ 0xAB) & ((16 * v183[1402]) ^ 0x8F) ^ 0x7Eu) + 2326);
  v185 = v184 ^ (2 * ((v184 ^ 0x48) & STACK[0x4E50]) - 16 * (((v184 ^ 0x48u) & STACK[0x4E50]) >> 2) + 120) ^ 0x30;
  v183[2486] = ((v185 & v19) >> v3) ^ (v185 << v14) ^ v20 ^ 0x94;
  v186 = STACK[0x8070];
  v187 = *(v7 + ((16 * v186[809]) & 0x40 ^ 0x48 ^ ((16 * v186[809]) ^ 0x8Fu) & v186[3774]) + 1550);
  v188 = v187 ^ 0xFFFFFF88 ^ ((~(4 * (STACK[0x4E50] & ~v187)) | 0x13) + 2 * (STACK[0x4E50] & ~v187) + 120);
  v186[1893] = ((v188 & v13) >> v3) ^ (v188 << v14) ^ v15 ^ 0x33;
  v189 = STACK[0x8070];
  v190 = *(v7 + ((16 * v189[809]) & 0x20 ^ 0xF2 ^ (v189[3181] ^ 0x67) & ((16 * v189[809]) ^ 0x8Fu)) + 2326);
  v191 = v190 ^ 0xFFFFFFAA ^ (2 * ((v190 ^ 0x48) & STACK[0x5700]) - ((4 * ((v190 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFC7) - 30);
  v189[1300] = ((v191 & v19) >> v4) ^ (v191 << v5) ^ v20 ^ 0x94;
  v192 = STACK[0x8070];
  v193 = *((((16 * v192[809]) ^ 0xFFFFFFF9) & (v192[2588] ^ 0x48) ^ v192[2588] & 0x76) + v7 + 1550);
  v194 = v193 ^ 0x48 ^ (2 * (STACK[0x4E50] & ~v193) - ((4 * (STACK[0x4E50] & ~v193)) & 0x6C) - 73);
  v192[707] = (((v194 & v19) >> v4) | (v194 << v14)) ^ v20 ^ 0x94;
  v195 = STACK[0x8070];
  v196 = *(v7 + ((v195[1995] ^ 0x8E) & 0xB6 ^ (16 * v195[809]) & 0xC0 ^ ((16 * v195[809]) ^ 0x39) & (v195[1995] ^ 0x8E) ^ 0x7Bu) + 2326);
  v197 = v196 ^ 0xFFFFFF88 ^ (2 * ((v196 ^ 0x48) & STACK[0x5700]) + (((v196 ^ 0x48u) & STACK[0x5700]) >> 5 << 7) - 64);
  v195[114] = (((v197 & v13) >> v3) | (v197 << v5)) ^ v15 ^ 0x33;
  v198 = STACK[0x8070];
  v199 = *(v7 + ((16 * v198[809]) & 0x60 ^ 0x4B ^ ((16 * v198[809]) ^ 0x8F) & (v198[1402] ^ 0x23u)) + 1550);
  v200 = v199 ^ 0xFFFFFFA3 ^ (2 * (STACK[0x4E50] & ~v199) - ((4 * (STACK[0x4E50] & ~v199)) & 0xFFFFFFB8) + 92);
  v198[12451] = (((v200 & v13) >> v3) + (v200 << v14)) ^ v20 ^ 0x94;
  v201 = STACK[0x8070];
  v202 = *(v7 + (((16 * *(v201 + 809)) ^ 0x8F) & (*(v201 + 809) ^ 0x44) ^ 0xF1u) + 2326);
  v203 = v202 ^ 0xFFFFFF96 ^ (2 * ((v202 ^ 0x48) & STACK[0x5700]) - ((4 * ((v202 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFBF) - 34);
  *(v201 + 11858) = ((v203 & v19) >> v4) ^ (v203 << v5) ^ v15 ^ 0x33;
  v204 = STACK[0x8070];
  v205 = *(v7 + ((16 * *(v204 + 809)) & 0x55 ^ 0xFA ^ ((16 * *(v204 + 809)) ^ 0x8F) & (*(v204 + 216) ^ 0x1Fu)) + 2326);
  v206 = v205 ^ 0x5F ^ (2 * ((v205 ^ 0x48) & STACK[0x4E50]) - ((4 * ((v205 ^ 0x48) & STACK[0x4E50])) & 0x2C) + 23);
  *(v204 + 11265) = (((v206 & v13) >> v3) + (v206 << v14)) ^ v20 ^ 0x94;
  LODWORD(v204) = *(v7 + ((16 * *(STACK[0x8070] + 809)) & 0x70 ^ (*(STACK[0x8070] + 12553) ^ 0x3B) & ((16 * *(STACK[0x8070] + 809)) ^ 0x8F) ^ 0xFEu) + 2326);
  v207 = (v204 >> 7) | (2 * v204);
  LODWORD(v204) = (((v204 ^ 0x48) & STACK[0x5700]) >> 6) | (4 * ((v204 ^ 0x48) & LODWORD(STACK[0x5700])));
  LODWORD(v204) = v207 ^ 0xFFFFFFCE ^ ((v204 & 0xFFFFFFFD) - ((2 * v204) & 0x7DA) - 19);
  LODWORD(v204) = ((v204 >> 1) | (v204 << 7)) ^ 0xFFFFFFD9;
  *(STACK[0x8070] + 10672) = ((v204 & v19) >> v4) ^ (v204 << v5) ^ v15 ^ 0x33;
  LODWORD(v204) = *((*(STACK[0x8070] + 11960) & 0xD4 ^ 0xBD ^ ((16 * *(STACK[0x8070] + 809)) ^ 0x5B) & (*(STACK[0x8070] + 11960) ^ 0x4Cu)) + v7 + 2326);
  v208 = v204 & 0x2B ^ (LODWORD(STACK[0x4E50]) ^ 0xFFFFFFAB) & 0x4C ^ (v204 ^ 4) & (LODWORD(STACK[0x4E50]) ^ 0xFFFFFFAB);
  LODWORD(v204) = v204 ^ 0x45 ^ (((2 * v208) ^ 0x10) - ((4 * v208) & 0x18) + 13);
  *(STACK[0x8070] + 10079) = ((v204 & v19) >> v4) ^ (v204 << v5) ^ v20 ^ 0x94;
  LODWORD(v204) = *(v7 + ((16 * *(STACK[0x8070] + 809)) & 0xB0 ^ ((16 * *(STACK[0x8070] + 809)) ^ 0x8F) & (*(STACK[0x8070] + 11367) ^ 0xF9) ^ 0xC1u) + 1550);
  LODWORD(v204) = v204 ^ 0x74 ^ (2 * (STACK[0x5700] & ~v204) - ((4 * (STACK[0x5700] & ~v204)) & 0x14) - 117);
  *(STACK[0x8070] + 9486) = (((v204 & v13) >> v3) | (v204 << v14)) ^ v15 ^ 0x33;
  v209 = STACK[0x8070] + 0x2000;
  LODWORD(v204) = *((((16 * *(STACK[0x8070] + 809)) ^ 0x5E) & (*(STACK[0x8070] + 10774) ^ 0x48) ^ *(STACK[0x8070] + 10774) & 0xD1u) + v7 + 1550);
  v210 = LODWORD(STACK[0x4E50]) ^ 0x44;
  LODWORD(STACK[0x56F0]) = v210;
  v211 = v204 & 0x44444444 ^ v210 & 0x47 ^ (v204 ^ 0x38) & v210;
  LODWORD(v204) = v204 ^ 0x7B ^ (((2 * v211) ^ 0xFFFFFF88) - ((4 * v211) & 8) - 124);
  *(v209 + 701) = (((v204 & v19) >> v4) + (v204 << v14)) ^ v20 ^ 0x94;
  LODWORD(v204) = *(v7 + (((*(STACK[0x8070] + 10181) ^ 0x88) & 0x8F | (*(STACK[0x8070] + 10181) ^ 0x47) & (16 * *(STACK[0x8070] + 809))) ^ 0x7Du) + 2326);
  LODWORD(v204) = v204 ^ 0xFFFFFF82 ^ (2 * ((v204 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v204 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFF94) - 54);
  *(STACK[0x8070] + 8300) = (((v204 & v13) >> v3) | (v204 << v5)) ^ v15 ^ 0x33;
  LOBYTE(v204) = *(v7 + ((16 * *(STACK[0x8070] + 809)) & 0x40 ^ 0x4F ^ ((16 * *(STACK[0x8070] + 809)) ^ 0x8F) & (*(STACK[0x8070] + 9588) ^ 7u)) + 1550);
  LOBYTE(v204) = v204 ^ 0x3D ^ (2 * (STACK[0x5700] & ~v204) - ((4 * (STACK[0x5700] & ~v204)) & 0x87) - 62);
  v212 = v204 << v5;
  v213 = (v204 & v13) >> v3;
  v214 = v213 == 0;
  v215 = v213 ^ v212;
  if (v214)
  {
    v215 = 0;
  }

  *(STACK[0x8070] + 7707) = (v215 | v212) ^ v20 ^ 0x94;
  v216 = *((*(STACK[0x8070] + 8995) & 0x81 ^ 0xFD ^ ((16 * *(STACK[0x8070] + 809)) | 0xE) & (*(STACK[0x8070] + 8995) ^ 0x49u)) + v7 + 2326);
  v217 = v216 ^ 0xFFFFFFE6 ^ (2 * ((v216 ^ 0x48) & STACK[0x4E50]) - ((4 * ((v216 ^ 0x48) & STACK[0x4E50])) & 0x5C) - 82);
  *(STACK[0x8070] + 7114) = ((v217 & v19) >> v4) ^ (v217 << v14) ^ v15 ^ 0x33;
  v218 = *(v7 + (((16 * (*(STACK[0x8070] + 809) & 3)) | 0x4A) ^ (*(STACK[0x8070] + 8402) ^ 0x72) & ((16 * *(STACK[0x8070] + 809)) ^ 0x8Fu)) + 1550);
  v219 = v218 ^ 0x31 ^ ((~(4 * (STACK[0x5700] & ~v218)) | 0x63) + 2 * (STACK[0x5700] & ~v218) - 49);
  *(STACK[0x8070] + 6521) = (((v219 & v19) >> v4) | (v219 << v5)) ^ v20 ^ 0x94;
  v220 = *((*(STACK[0x8070] + 7809) & 0xF8 ^ ((16 * *(STACK[0x8070] + 809)) ^ 0x77777777) & (*(STACK[0x8070] + 7809) ^ 0x48) ^ 8u) + v7 + 1550);
  v221 = v220 ^ (2 * (STACK[0x4E50] & ~v220) - 127) ^ 0x7E;
  *(STACK[0x8070] + 5928) = ((v221 & v13) >> v3) ^ (v221 << v14) ^ v15 ^ 0x33;
  v222 = STACK[0x8070];
  v223 = *(v7 + (((16 * (v222[216] & 3)) | 0x4C) ^ ((16 * v222[216]) ^ 0x8F) & (v222[3774] ^ 0x74u)) + 1550);
  v224 = (v223 ^ (2 * (LOBYTE(STACK[0x5700]) & ~v223) - 4 * (LOBYTE(STACK[0x5700]) & ~v223 & 1) + 2)) ^ 0xFD;
  v225 = ((v224 & v13) >> v3) + (v224 << v14) + LODWORD(STACK[0x5238]) - 2 * ((((v224 & v13) >> v3) + (v224 << v14)) & STACK[0x5238]);
  v222[5335] = (v225 - ((2 * v225) & 0x92) + 73) ^ 0xFE;
  v226 = STACK[0x8070];
  v227 = *(v7 + ((16 * v226[216]) & 0xC0 ^ ((16 * v226[216]) ^ 0x8F) & (v226[3181] ^ 0x84) ^ 0xCCu) + 1550);
  v228 = v227 ^ (2 * (STACK[0x4E50] & ~v227) - ((4 * (STACK[0x4E50] & ~v227)) & 0xFFFFFFCF) - 25) ^ 0x18;
  v226[4742] = ((v228 & v19) >> v4) ^ (v228 << v5) ^ v20 ^ 0x94;
  v229 = STACK[0x8070];
  v230 = *(v7 + (((16 * v229[216]) ^ 0x9B) & (v229[2588] ^ 0xC) ^ ((v229[2588] ^ 0xC) & 0x14 | (((v229[216] & 4) != 0) << 6)) ^ 0x44u) + 1550);
  v231 = v230 ^ 0xFFFFFFAB ^ (2 * (STACK[0x5700] & ~v230) - ((4 * (STACK[0x5700] & ~v230)) & 0xFFFFFFA8) + 84);
  v229[4149] = (((v231 & v19) >> v3) + (v231 << v5)) ^ v15 ^ 0x33;
  v232 = STACK[0x8070];
  v233 = *(v7 + (v232[1995] & 0x36 ^ ((16 * v232[216]) ^ 0xB9) & (v232[1995] ^ 0x48) ^ 0xFDu) + 2326);
  v234 = v233 ^ 0x53 ^ ((~(4 * ((v233 ^ 0x48) & STACK[0x4E50])) | 0xFFFFFFCB) + 2 * ((v233 ^ 0x48) & STACK[0x4E50]) + 28);
  v232[3556] = ((v234 & v13) >> v4) ^ (v234 << v14) ^ v20 ^ 0x94;
  v235 = STACK[0x8070];
  v236 = *(v7 + ((16 * v235[216]) & 0xE0 ^ 0x72 ^ ((16 * v235[216]) ^ 0x8F) & (v235[1402] ^ 0xA7u)) + 2326);
  v237 = v236 ^ 0x1D ^ ((~(4 * ((v236 ^ 0x48) & STACK[0x4E50])) | 0x57) + 2 * ((v236 ^ 0x48) & STACK[0x4E50]) + 86);
  v235[2963] = (((v237 & v13) >> v3) + (v237 << v14)) ^ v20 ^ 0x94;
  v238 = STACK[0x8070];
  v239 = *(v7 + ((v238[809] ^ 0xCA) & ((16 * v238[216]) ^ 0x8F) ^ ((16 * v238[216]) | 0x7Fu)) + 2326);
  v240 = v239 ^ 0x33 ^ ((~(4 * ((v239 ^ 0x48) & STACK[0x5700])) | 0xB) + 2 * ((v239 ^ 0x48) & STACK[0x5700]) + 124);
  v238[2370] = (((v240 & v19) >> v4) | (v240 << v5)) ^ v15 ^ 0x33;
  v241 = STACK[0x8070];
  v242 = *(v7 + (((*(v241 + 216) ^ 0xBA) & 0x8F | (*(v241 + 216) ^ 0x45) & (16 * *(v241 + 216))) ^ 0x7Fu) + 2326);
  v243 = v242 ^ 0xFFFFFFEA ^ (2 * ((v242 ^ 0x48) & STACK[0x4E50]) - ((4 * ((v242 ^ 0x48) & STACK[0x4E50])) & 0x44) - 94);
  *(v241 + 1777) = (((v243 & v13) >> v4) | (v243 << v14)) ^ v15 ^ 0x33;
  v244 = STACK[0x8070];
  v245 = *(v7 + ((16 * v244[216]) & 0x30 ^ ((16 * v244[216]) ^ 0x8F) & (v244[12553] ^ 0x7C) ^ 0xF9u) + 2326);
  v246 = v245 ^ 0xFFFFFFDA ^ ((~(4 * ((v245 ^ 0x48) & STACK[0x5700])) | 0xFFFFFFDB) + 2 * ((v245 ^ 0x48) & STACK[0x5700]) - 109);
  v244[1184] = (((v246 & v19) >> v3) + (v246 << v5)) ^ v20 ^ 0x94;
  v247 = STACK[0x8070];
  v248 = *(v7 + ((16 * *(v247 + 216)) & 0x80 ^ 0xC6 ^ ((16 * *(v247 + 216)) ^ 0x8F) & (*(v247 + 11960) ^ 0xCEu)) + 1550);
  v249 = v248 ^ 0x27 ^ (2 * (STACK[0x5700] & ~v248) - ((4 * (STACK[0x5700] & ~v248)) & 0xFFFFFFB0) - 40);
  *(v247 + 591) = ((v249 & v19) >> v3) ^ (v249 << v5) ^ v20 ^ 0x94;
  LODWORD(v247) = *(v7 + ((16 * *(STACK[0x8070] + 216)) & 0x9F ^ (*(STACK[0x8070] + 11367) ^ 0xDD) & ((16 * *(STACK[0x8070] + 216)) ^ 0x8F) ^ 0x78u) + 2326);
  LODWORD(v247) = v247 ^ 0x4C ^ (2 * ((v247 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v247 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 8) + 4);
  *(STACK[0x8070] + 12928) = (((v247 & v13) >> v4) | (v247 << v14)) ^ v15 ^ 0x33;
  v250 = STACK[0x8070] + 10774;
  LODWORD(v247) = *((*v250 & 0xDC ^ ((16 * *(STACK[0x8070] + 216)) ^ 0x53) & (*v250 ^ 0x48) ^ 8u) + v7 + 1550);
  LODWORD(v247) = v247 ^ 0x63 ^ (2 * (STACK[0x5700] & ~v247) - ((4 * (STACK[0x5700] & ~v247)) & 0x38) - 100);
  *(v250 + 1561) = (((v247 & v19) >> v3) + (v247 << v5)) ^ v20 ^ 0x94;
  LODWORD(v247) = *(v7 + ((16 * *(STACK[0x8070] + 216)) & 0xBF ^ ((16 * *(STACK[0x8070] + 216)) ^ 0x40) & (*(STACK[0x8070] + 10181) ^ 0xF3) ^ (*(STACK[0x8070] + 10181) ^ 0xF3) & 0xCF ^ 0x76u) + 2326);
  LODWORD(v247) = v247 ^ 0xFFFFFFD2 ^ (2 * ((v247 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v247 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 0x34) - 102);
  *(STACK[0x8070] + 11742) = (((v247 & v13) >> v4) | (v247 << v14)) ^ v15 ^ 0x33;
  LODWORD(v247) = *(v7 + ((16 * *(STACK[0x8070] + 216)) & 0x40 ^ 0x41 ^ (*(STACK[0x8070] + 9588) ^ 9) & ((16 * *(STACK[0x8070] + 216)) ^ 0x8Fu)) + 1550);
  LODWORD(v247) = v247 ^ (2 * (STACK[0x5700] & ~v247) - ((4 * (STACK[0x5700] & ~v247)) & 0xFFFFFF8F) - 57) ^ 0x38;
  *(STACK[0x8070] + 11149) = ((v247 & v13) >> v4) ^ (v247 << v14) ^ v15 ^ 0x33;
  LODWORD(v247) = *(v7 + ((16 * *(STACK[0x8070] + 216)) & 0x9F ^ 0x76 ^ (*(STACK[0x8070] + 8995) ^ 0xD3) & ((16 * *(STACK[0x8070] + 216)) ^ 0x8Fu)) + 2326);
  LODWORD(v247) = v247 ^ 0x5B ^ (2 * ((v247 ^ 0x48) & LODWORD(STACK[0x4E50])) - ((4 * ((v247 ^ 0x48) & LODWORD(STACK[0x4E50]))) & 0x24) + 19);
  *(STACK[0x8070] + 10556) = ((v247 & v19) >> v3) ^ (v247 << v5) ^ v20 ^ 0x94;
  LODWORD(v247) = *(v7 + ((16 * *(STACK[0x8070] + 216)) & 0xC0 ^ 0xCD ^ ((16 * *(STACK[0x8070] + 216)) ^ 0x8F) & (*(STACK[0x8070] + 8402) ^ 0x85u)) + 1550);
  LODWORD(v247) = v247 ^ 0xFFFFFFAD ^ (2 * (STACK[0x4E50] & ~v247) - ((4 * (STACK[0x4E50] & ~v247)) & 0xFFFFFFA4) + 82);
  *(STACK[0x8070] + 9963) = ((v247 & v19) >> v4) ^ (v247 << v5) ^ v15 ^ 0x33;
  LODWORD(v247) = *(v7 + (((16 * (*(STACK[0x8070] + 216) & 3)) | 0x40) ^ (*(STACK[0x8070] + 7809) ^ 0x78) & ((16 * *(STACK[0x8070] + 216)) ^ 0x8Fu)) + 1550);
  LODWORD(v247) = v247 ^ 0x6D ^ (2 * (STACK[0x5700] & ~v247) - ((4 * (STACK[0x5700] & ~v247)) & 0x24) - 110);
  *(STACK[0x8070] + 9370) = ((v247 & v13) >> v3) ^ (v247 << v14) ^ v20 ^ 0x94;
  LODWORD(v247) = *(((*(STACK[0x8070] + 3774) & 0x86 | 0x40) ^ ((16 * *(STACK[0x8070] + 12553)) | 9) & (*(STACK[0x8070] + 3774) ^ 0x4Cu)) + v7 + 1550);
  LODWORD(v247) = v247 ^ 0xFFFFFF86 ^ (2 * (STACK[0x5700] & ~v247) - 16 * ((STACK[0x5700] & ~v247) >> 2) + 121);
  *(STACK[0x8070] + 8777) = (((v247 & v19) >> v3) | (v247 << v5)) ^ v20 ^ 0x94;
  v251 = STACK[0x8070];
  v252 = *(v7 + ((16 * v251[12553]) & 0x60 ^ ((16 * v251[12553]) ^ 0x8F) & (v251[3181] ^ 0x25) ^ 0xF0u) + 2326);
  v253 = v252 ^ 0x19 ^ (2 * ((v252 ^ 0x48) & STACK[0x4E50]) - ((4 * ((v252 ^ 0x48) & STACK[0x4E50])) & 0xFFFFFFA0) + 81);
  v251[8184] = ((v253 & v13) >> v4) ^ (v253 << v14) ^ v15 ^ 0x33;
  v254 = STACK[0x8070];
  v255 = *(v7 + ((16 * v254[12553]) & 0xA0 ^ (v254[2588] ^ 0xEF) & ((16 * v254[12553]) ^ 0x8F) ^ 0xC7u) + 1550);
  v256 = ((2 * (v255 & 8 ^ (LODWORD(STACK[0x5700]) ^ 0xFFFFFF88) & 0x5A ^ (v255 ^ 0x25) & (LODWORD(STACK[0x5700]) ^ 0xFFFFFF88))) ^ 0x10) - ((4 * ((v255 ^ 0x25) & (LODWORD(STACK[0x5700]) ^ 0xFFFFFF88))) & 0x394) + 75;
  v254[7591] = ((((v255 ^ 0xB4 ^ v256) & v13) >> v4) + ((v255 ^ 0xFFFFFFB4 ^ v256) << v5)) ^ v20 ^ 0x94;
  v257 = STACK[0x8070];
  v258 = *(v7 + ((16 * v257[12553]) & 0x20 ^ 0xFA ^ (v257[1995] ^ 0x6F) & ((16 * v257[12553]) ^ 0x8Fu)) + 2326);
  v259 = v258 ^ 0xB ^ (2 * ((v258 ^ 0x48) & STACK[0x4E50]) - ((4 * ((v258 ^ 0x48) & STACK[0x4E50])) & 0xFFFFFF87) + 67);
  v257[6998] = ((v259 & v19) >> v3) ^ (v259 << v14) ^ v15 ^ 0x33;
  v260 = STACK[0x8070];
  v261 = *(((((16 * v260[12553]) ^ 0x88888888) & (v260[1402] ^ 0x4F) | v260[1402] & 7) ^ 0x40) + v7 + 1550);
  v262 = v261 ^ ((~(4 * (STACK[0x4E50] & ~v261)) | 0xF) + 2 * (STACK[0x4E50] & ~v261) - 6) ^ 6;
  v260[6405] = (((v262 & v13) >> v3) + (v262 << v14)) ^ v20 ^ 0x94;
  v263 = STACK[0x8070];
  v264 = *(v7 + ((16 * v263[12553]) & 0xBF ^ 0x71 ^ (v263[809] ^ 0xF4) & ((16 * v263[12553]) ^ 0x8Fu)) + 2326);
  v265 = v264 ^ 0xFFFFFF93 ^ (2 * ((v264 ^ 0x48) & STACK[0x5700]) - ((4 * ((v264 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFB4) - 37);
  v263[5812] = (((v265 & v19) >> v4) + (v265 << v5)) ^ v15 ^ 0x33;
  v266 = STACK[0x8070];
  v267 = *(v7 + (v266[216] & 0x11 ^ ((16 * v266[12553]) ^ 0x9E) & (v266[216] ^ 0x48) ^ 0xFDu) + 2326);
  v268 = v267 ^ 0x5A ^ (2 * ((v267 ^ 0x48) & STACK[0x5700]) - ((4 * ((v267 ^ 0x48) & STACK[0x5700])) & 0x24) + 18);
  v266[5219] = (((v268 & v13) >> v3) | (v268 << v14)) ^ v15 ^ 0x33;
  v269 = STACK[0x8070];
  v270 = *((*(v269 + 12553) & 0xCB ^ ((16 * *(v269 + 12553)) ^ 0x44444444) & (*(v269 + 12553) ^ 0x40) ^ 8u) + v7 + 1550);
  v271 = v270 ^ 0x50 ^ (2 * (STACK[0x4E50] & ~v270) - ((4 * (STACK[0x4E50] & ~v270)) & 0x5C) - 81);
  *(v269 + 4626) = (((v271 & v19) >> v4) | (v271 << v5)) ^ v20 ^ 0x94;
  v272 = STACK[0x8070];
  v273 = *((v272[11960] & 0x5C ^ ((16 * v272[12553]) ^ 0xD3) & (v272[11960] ^ 0x40) ^ 8u) + v7 + 1550);
  v274 = v273 ^ 0xFFFFFFA4 ^ (2 * (STACK[0x4E50] & ~v273) - ((4 * (STACK[0x4E50] & ~v273)) & 0xFFFFFFB4) + 91);
  v275 = v20 ^ 0x94;
  v272[4033] = (((v274 & v13) >> v3) + (v274 << v5)) ^ v20 ^ 0x94;
  v276 = STACK[0x8070];
  v277 = *(((v276[11367] & 0x24 | 0x40) ^ ((16 * v276[12553]) ^ 0xAB) & (v276[11367] ^ 0x4Cu)) + v7 + 1550);
  v278 = v277 ^ 0xFFFFFFB5 ^ (2 * (STACK[0x5700] & ~v277) - ((4 * (STACK[0x5700] & ~v277)) & 0xFFFFFF94) + 74);
  v276[3440] = ((v278 & v19) >> v4) ^ (v278 << v14) ^ v15 ^ 0x33;
  v279 = STACK[0x8070];
  v280 = *(v7 + (((16 * (v279[12553] & 1)) | 0x4F) ^ (v279[10774] ^ 0x57) & ((16 * v279[12553]) ^ 0x8Fu)) + 1550);
  v281 = v280 ^ (2 * (STACK[0x4E50] & ~v280) - 4 * (STACK[0x4E50] & ~v280 & 7) - 113) ^ 0x70;
  v279[2847] = (((v281 & v13) >> v4) | (v281 << v5)) ^ v20 ^ 0x94;
  v282 = STACK[0x8070];
  v283 = *((((16 * v282[12553]) ^ 0x79) & (v282[10181] ^ 0x48) ^ v282[10181] & 0xF6u) + v7 + 1550);
  v284 = v283 ^ 0xFFFFFFAA ^ (2 * (STACK[0x5700] & ~v283) - ((4 * (STACK[0x5700] & ~v283)) & 0xFFFFFFA8) + 85);
  v282[2254] = ((v284 & v19) >> v3) ^ (v284 << v14) ^ v15 ^ 0x33;
  v285 = STACK[0x8070];
  LODWORD(v250) = *((v285[9588] & 0x1E ^ 0x48 ^ ((16 * v285[12553]) ^ 0x91) & (v285[9588] ^ 0x4Au)) + v7 + 1550);
  LODWORD(v250) = v250 ^ (2 * (STACK[0x4E50] & ~v250) - 4 * (STACK[0x4E50] & ~v250 & 7) + 15) ^ 0xFFFFFFF0;
  v285[1661] = (((v250 & v13) >> v3) | (v250 << v5)) ^ v15 ^ 0x33;
  v286 = STACK[0x8070];
  LODWORD(v250) = *((v286[8995] & 0x1E ^ 0xF5 ^ ((16 * v286[12553]) ^ 0x91) & (v286[8995] ^ 0x4Cu)) + v7 + 2326);
  v287 = 2 * ((v250 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v250 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0x40);
  v288 = STACK[0x4E50];
  v286[1068] = ((((v250 ^ 0xE8u ^ (v287 - 96)) & v19) >> v4) | ((v250 ^ 0xFFFFFFE8 ^ (v287 - 96)) << v14)) ^ v20 ^ 0x94;
  v289 = STACK[0x8070];
  v290 = *(((*(v289 + 8402) & 0x36 | 0x40) ^ ((16 * *(v289 + 12553)) ^ 0xB9) & (*(v289 + 8402) ^ 0x48u)) + v7 + 1550);
  v291 = v290 ^ 0xFFFFFFC6 ^ (2 * (v288 & ~v290) - ((4 * (v288 & ~v290)) & 0x70) + 57);
  *(v289 + 475) = (((v291 & v13) >> v4) + (v291 << v14)) ^ v15 ^ 0x33;
  LODWORD(v289) = *(v7 + ((16 * *(STACK[0x8070] + 12553)) & 0x40 ^ 0x43 ^ (*(STACK[0x8070] + 7809) ^ 0xB) & ((16 * *(STACK[0x8070] + 12553)) ^ 0x8Fu)) + 1550);
  LODWORD(v289) = v289 ^ 0x53 ^ (2 * (STACK[0x5700] & ~v289) - ((4 * (STACK[0x5700] & ~v289)) & 0x58) - 84);
  *(STACK[0x8070] + 12812) = (((v289 & v19) >> v3) + (v289 << v5)) ^ v20 ^ 0x94;
  LODWORD(v289) = *(v7 + ((16 * *(STACK[0x8070] + 11960)) & 0xBF ^ 0x7D ^ ((16 * *(STACK[0x8070] + 11960)) ^ 0x8F) & (*(STACK[0x8070] + 3774) ^ 0xF8u)) + 2326);
  LODWORD(v289) = v289 ^ 0xFFFFFF90 ^ (2 * ((v289 ^ 0x48) & v288) - ((4 * ((v289 ^ 0x48) & v288)) & 0xFFFFFFB0) - 40);
  *(STACK[0x8070] + 12219) = (((v289 & v13) >> v3) | (v289 << v14)) ^ v20 ^ 0x94;
  LODWORD(v289) = *(v7 + ((16 * *(STACK[0x8070] + 11960)) & 0x9F ^ (*(STACK[0x8070] + 3181) ^ 0xDA) & ((16 * *(STACK[0x8070] + 11960)) ^ 0x8F) ^ 0x7Fu) + 2326);
  LODWORD(v289) = v289 ^ 0x53 ^ (2 * ((v289 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v289 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0x34) + 27);
  *(STACK[0x8070] + 11626) = ((v289 & v19) >> v4) ^ (v289 << v5) ^ v15 ^ 0x33;
  LODWORD(v289) = *((((16 * *(STACK[0x8070] + 11960)) ^ 0xFFFFFF8F) & (*(STACK[0x8070] + 2588) ^ 0x48) ^ 0x40) + v7 + 1550);
  LODWORD(v289) = v289 ^ 0xFFFFFFC4 ^ (2 * (STACK[0x5700] & ~v289) - ((4 * (STACK[0x5700] & ~v289)) & 0x74) + 59);
  *(STACK[0x8070] + 11033) = (((v289 & v19) >> v3) | (v289 << v14)) ^ v20 ^ 0x94;
  LODWORD(v289) = *(v7 + ((((16 * *(STACK[0x8070] + 11960)) ^ 0x8E) & (*(STACK[0x8070] + 1995) ^ 0x49) & 0xFE | *(STACK[0x8070] + 1995) & 1) ^ 0xFDu) + 2326);
  LODWORD(v289) = v289 ^ 0xFFFFFFAA ^ (2 * ((v289 ^ 0x48) & v288) - ((4 * ((v289 ^ 0x48) & v288)) & 0xFFFFFFC7) - 30);
  *(STACK[0x8070] + 10440) = (((v289 & v13) >> v4) + (v289 << v5)) ^ v15 ^ 0x33;
  LODWORD(v289) = *(v7 + (((16 * *(STACK[0x8070] + 11960)) ^ 0x90) & (*(STACK[0x8070] + 1402) ^ 0xF) ^ ((*(STACK[0x8070] + 1402) ^ 0xF) & 0x1F | (((*(STACK[0x8070] + 11960) & 4) != 0) << 6)) ^ 0x47u) + 1550);
  LODWORD(v289) = v289 ^ 0xFFFFFFBC ^ (2 * (STACK[0x5700] & ~v289) - ((4 * (STACK[0x5700] & ~v289)) & 0xFFFFFF87) + 67);
  *(STACK[0x8070] + 9847) = (((v289 & v19) >> v4) + (v289 << v14)) ^ v20 ^ 0x94;
  LODWORD(v289) = *((*(STACK[0x8070] + 809) & 0x9B ^ 0xF5 ^ ((16 * *(STACK[0x8070] + 11960)) ^ 0x14) & (*(STACK[0x8070] + 809) ^ 0x42u)) + v7 + 2326);
  LODWORD(v289) = v289 ^ 0xFFFFFF91 ^ (2 * ((v289 ^ 0x48) & v288) - ((4 * ((v289 ^ 0x48) & v288)) & 0xFFFFFFB0) - 39);
  *(STACK[0x8070] + 9254) = (((v289 & v13) >> v3) + (v289 << v5)) ^ v15 ^ 0x33;
  LODWORD(v289) = *(v7 + ((16 * *(STACK[0x8070] + 11960)) & 0x40 ^ 0x41 ^ (*(STACK[0x8070] + 216) ^ 9) & ((16 * *(STACK[0x8070] + 11960)) ^ 0x8Fu)) + 1550);
  v292 = 2 * (v289 & 0x60 ^ (LODWORD(STACK[0x5700]) ^ 0x60) & 0x7C ^ (v289 ^ 3) & (LODWORD(STACK[0x5700]) ^ 0x60));
  LODWORD(v289) = v289 ^ ((v292 ^ 0xFFFFFFC0) - 2 * ((v292 ^ 0xFFFFFFC0) & 0x78 ^ v292 & 8) - 15) ^ 0xE;
  *(STACK[0x8070] + 8661) = ((v289 & v13) >> v3) ^ (v289 << v14) ^ v20 ^ 0x94;
  LODWORD(v289) = *(v7 + ((((16 * *(STACK[0x8070] + 11960)) ^ 0x88) & (*(STACK[0x8070] + 12553) ^ 0x49) | *(STACK[0x8070] + 12553) & 7) ^ 0xFDu) + 2326);
  LODWORD(v289) = v289 ^ 0xFFFFFFCB ^ (2 * ((v289 ^ 0x48) & v288) - 4 * ((v289 ^ 0x48) & v288 & 1) - 125);
  *(STACK[0x8070] + 8068) = (((v289 & v19) >> v4) + (v289 << v5)) ^ v15 ^ 0x33;
  v293 = STACK[0x8070];
  v294 = *(v7 + (((*(v293 + 11960) ^ 0x82) & 0x8F | (*(v293 + 11960) ^ 0x4D) & (16 * *(v293 + 11960))) ^ 0xCAu) + 1550);
  v295 = v294 ^ 0x13 ^ (2 * (STACK[0x5700] & ~v294) - ((4 * (STACK[0x5700] & ~v294)) & 0xFFFFFFD8) - 20);
  *(v293 + 7475) = (((v295 & v19) >> v3) + (v295 << v14)) ^ v20 ^ 0x94;
  v296 = STACK[0x8070];
  v297 = *(v7 + ((16 * v296[11960]) & 0xC0 ^ 0x75 ^ (v296[11367] ^ 0x80) & ((16 * v296[11960]) ^ 0x8Fu)) + 2326);
  v298 = v297 ^ 0x42 ^ (2 * ((v297 ^ 0x48) & v288) - ((4 * ((v297 ^ 0x48) & v288)) & 0x14) + 10);
  v296[6882] = (((v298 & v13) >> v4) + (v298 << v5)) ^ v15 ^ 0x33;
  v299 = STACK[0x8070];
  v300 = *(v7 + ((16 * v299[11960]) & 0x70 ^ 0x4B ^ (v299[10774] ^ 0x33) & ((16 * v299[11960]) ^ 0x8Fu)) + 1550);
  v301 = v300 ^ (2 * (v288 & ~v300) - ((4 * (v288 & ~v300)) & 0xFFFFFFC7) - 29) ^ 0x1C;
  v299[6289] = (((v301 & v13) >> v3) + (v301 << v5)) ^ v20 ^ 0x94;
  v302 = STACK[0x8070];
  v303 = *(v7 + ((16 * v302[11960]) & 0x80 ^ 0xC2 ^ (v302[10181] ^ 0xCA) & ((16 * v302[11960]) ^ 0x8Fu)) + 1550);
  v304 = v303 ^ 0x68 ^ (2 * (STACK[0x5700] & ~v303) - ((4 * (STACK[0x5700] & ~v303)) & 0x2C) - 105);
  v302[5696] = ((v304 & v19) >> v4) ^ (v304 << v14) ^ v15 ^ 0x33;
  v305 = STACK[0x8070];
  v306 = *(v7 + (((v305[9588] ^ 0xFB) & 0x8F | (v305[9588] ^ 0x44) & (16 * v305[11960])) ^ 0xC3u) + 1550);
  v307 = v306 ^ 0x5A ^ (2 * (STACK[0x5700] & ~v306) - ((4 * (STACK[0x5700] & ~v306)) & 0x48) - 91);
  v305[5103] = (((v307 & v13) >> v3) | (v307 << v5)) ^ v20 ^ 0x94;
  v308 = STACK[0x8070];
  v309 = *(v7 + ((16 * v308[11960]) & 0x30 ^ (v308[8995] ^ 0x72) & ((16 * v308[11960]) ^ 0x8F) ^ 0xF7u) + 2326);
  v310 = v309 ^ 0xFFFFFFC5 ^ (2 * ((v309 ^ 0x48) & v288) - ((4 * ((v309 ^ 0x48) & v288)) & 0x18) - 115);
  v308[4510] = (((v310 & v19) >> v4) + (v310 << v14)) ^ v15 ^ 0x33;
  v311 = STACK[0x8070];
  v312 = *((((16 * v311[11960]) ^ 0xED) & (v311[8402] ^ 0x48) ^ v311[8402] & 0x62u) + v7 + 1550);
  v313 = v312 ^ 0x6C ^ (2 * (v288 & ~v312) - ((4 * (v288 & ~v312)) & 0x24) - 109);
  v311[3917] = ((v313 & v13) >> v4) ^ (v313 << v5) ^ v15 ^ 0x33;
  v314 = STACK[0x8070];
  v315 = *(v7 + ((16 * v314[11960]) & 0x80 ^ (v314[7809] ^ 0xC4) & ((16 * v314[11960]) ^ 0x8F) ^ 0xCCu) + 1550);
  v316 = v315 ^ 0xFFFFFF93 ^ (2 * (STACK[0x5700] & ~v315) - ((4 * (STACK[0x5700] & ~v315)) & 0xFFFFFFD8) + 108);
  v314[3324] = ((v316 & v19) >> v3) ^ (v316 << v14) ^ v20 ^ 0x94;
  v317 = STACK[0x8070];
  v318 = *(v7 + (((v317[3774] ^ 0x83) & 0x8F | (v317[3774] ^ 0x4C) & (16 * v317[11367])) ^ 0xCBu) + 1550);
  v319 = v318 ^ 0x25 ^ (2 * (STACK[0x5700] & ~v318) - ((4 * (STACK[0x5700] & ~v318)) & 0xFFFFFFB4) - 38);
  v317[2731] = (((v319 & v19) >> v4) | (v319 << v5)) ^ v20 ^ 0x94;
  v320 = STACK[0x8070];
  v321 = *(((v320[3181] & 0xB5 | 0x40) ^ ((16 * v320[11367]) ^ 0x3A) & (v320[3181] ^ 0x49u)) + v7 + 1550);
  v322 = v321 ^ 0xFFFFFFF4 ^ (2 * (v288 & ~v321) - ((4 * (v288 & ~v321)) & 0x14) + 11);
  v320[2138] = ((v322 & v13) >> v3) ^ (v322 << v14) ^ v15 ^ 0x33;
  v323 = STACK[0x8070];
  v324 = *((v323[2588] & 0xBB ^ 0xF5 ^ ((16 * v323[11367]) ^ 0x34) & (v323[2588] ^ 0x43u)) + v7 + 2326);
  v325 = ((2 * v324) & 0xFFFFFF9A ^ 0xFFFFFFF5) + (((v324 ^ 0xFFFFFFFE) + 2) ^ ((v324 ^ 0xFFFFFFCB) + 53) ^ ((v324 ^ 0x30) - 48)) + 83;
  v323[1545] = (((v325 ^ (2 * (v325 & v288))) & v13) >> v4) ^ ((v325 ^ (2 * (v325 & v288))) << v14) ^ v20 ^ 0x94;
  v326 = STACK[0x8070];
  v327 = *(v7 + ((16 * v326[11367]) & 0x20 ^ 0xF2 ^ ((16 * v326[11367]) ^ 0x8F) & (v326[1995] ^ 0x67u)) + 2326);
  v328 = v327 ^ 0x14 ^ (2 * ((v327 ^ 0x48) & STACK[0x5700]) - ((4 * ((v327 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFB8) + 92);
  v326[952] = (((v328 & v19) >> v3) | (v328 << v5)) ^ v15 ^ 0x33;
  v329 = STACK[0x8070];
  v330 = *(v7 + ((16 * *(v329 + 11367)) & 0x70 ^ 0xF5 ^ ((16 * *(v329 + 11367)) ^ 0x8F) & (*(v329 + 1402) ^ 0x30u)) + 2326);
  v331 = v330 ^ 0xFFFFFF86 ^ ((~(4 * ((v330 ^ 0x48) & v288)) | 0x63) + 2 * ((v330 ^ 0x48) & v288) - 49);
  *(v329 + 359) = (((v331 & v19) >> v4) | (v331 << v5)) ^ v15 ^ 0x33;
  LODWORD(v329) = *(v7 + ((16 * *(STACK[0x8070] + 11367)) & 0x70 ^ 0x4B ^ (*(STACK[0x8070] + 809) ^ 0x33) & ((16 * *(STACK[0x8070] + 11367)) ^ 0x8Fu)) + 1550);
  LODWORD(v329) = v329 ^ 0xFFFFFFAB ^ ((~(4 * (STACK[0x5700] & ~v329)) | 0x57) + 2 * (STACK[0x5700] & ~v329) + 85);
  *(STACK[0x8070] + 12696) = (((v329 & v13) >> v3) | (v329 << v14)) ^ v20 ^ 0x94;
  LODWORD(v329) = *((*(STACK[0x8070] + 216) & 0x4E ^ 0xB5 ^ ((16 * *(STACK[0x8070] + 11367)) ^ 0xFFFFFFC1) & (*(STACK[0x8070] + 216) ^ 0x44)) + v7 + 2326);
  LODWORD(v329) = v329 ^ 0xFFFFFFBB ^ (2 * ((v329 ^ 0x48) & v288) - ((4 * ((v329 ^ 0x48) & v288)) & 0xFFFFFFE7) - 13);
  *(STACK[0x8070] + 12103) = (((v329 & v19) >> v3) + (v329 << v14)) ^ v20 ^ 0x94;
  v332 = *((*(STACK[0x8070] + 12553) & 0x38 ^ 0xF5 ^ ((16 * *(STACK[0x8070] + 11367)) ^ 0xB7) & (*(STACK[0x8070] + 12553) ^ 0x40u)) + v7 + 2326);
  v333 = v332 ^ (2 * ((v332 ^ 0x48) & STACK[0x5700]) - ((4 * ((v332 ^ 0x48) & STACK[0x5700])) & 0x68) + 52) ^ 0x7C;
  *(STACK[0x8070] + 11510) = (((v333 & v13) >> v4) | (v333 << v5)) ^ v15 ^ 0x33;
  v334 = *(v7 + ((16 * *(STACK[0x8070] + 11367)) & 0x20 ^ (*(STACK[0x8070] + 11960) ^ 0x6C) & ((16 * *(STACK[0x8070] + 11367)) ^ 0x8F) ^ 0xF9u) + 2326);
  v335 = v334 ^ 0xFFFFFF9E ^ (2 * ((v334 ^ 0x48) & v288) - ((4 * ((v334 ^ 0x48) & v288)) & 0xFFFFFFAC) - 42);
  *(STACK[0x8070] + 10917) = (((v335 & v13) >> v3) + (v335 << v14)) ^ v20 ^ 0x94;
  v336 = *(v7 + ((16 * *(STACK[0x8070] + 11367)) & 0xDF ^ 0xC9 ^ ((16 * *(STACK[0x8070] + 11367)) ^ 0x8F) & (*(STACK[0x8070] + 11367) ^ 0x91u)) + 1550);
  v337 = v336 ^ 0xB ^ (2 * (STACK[0x5700] & ~v336) - ((4 * (STACK[0x5700] & ~v336)) & 0xFFFFFFE8) - 12);
  *(STACK[0x8070] + 10324) = (((v337 & v19) >> v4) + (v337 << v5)) ^ v15 ^ 0x33;
  v338 = *((((16 * *(STACK[0x8070] + 11367)) ^ 0xCD) & (*(STACK[0x8070] + 10774) ^ 0x48) ^ *(STACK[0x8070] + 10774) & 0x42u) + v7 + 1550);
  v339 = v338 ^ 0xFFFFFFA3 ^ (2 * (v288 & ~v338) - ((4 * (v288 & ~v338)) & 0xFFFFFFB8) + 92);
  *(STACK[0x8070] + 9731) = (((v339 & v19) >> v4) + (v339 << v5)) ^ v20 ^ 0x94;
  v340 = *(v7 + ((16 * *(STACK[0x8070] + 11367)) & 0x50 ^ (*(STACK[0x8070] + 10181) ^ 0x18) & ((16 * *(STACK[0x8070] + 11367)) ^ 0x8F) ^ 0xFDu) + 2326);
  v341 = v340 ^ 0x79 ^ (2 * ((v340 ^ 0x48) & STACK[0x5700]) - ((4 * ((v340 ^ 0x48) & STACK[0x5700])) & 0x60) + 49);
  *(STACK[0x8070] + 9138) = (((v341 & v13) >> v3) + (v341 << v14)) ^ v15 ^ 0x33;
  v342 = *(((*(STACK[0x8070] + 9588) ^ 0x44444444u) & ((16 * (*(STACK[0x8070] + 11367) & 0xF)) ^ 0x8F) ^ 0xF1) + v7 + 2326);
  v343 = v342 ^ 0xFFFFFFB9 ^ (2 * ((v342 ^ 0x48) & v288) - 32 * (((v342 ^ 0x48) & v288) >> 3) - 15);
  *(STACK[0x8070] + 8545) = (((v343 & v19) >> v3) + (v343 << v14)) ^ v20 ^ 0x94;
  v344 = *(v7 + (((*(STACK[0x8070] + 8995) ^ 0x83) & 0x8F | (*(STACK[0x8070] + 8995) ^ 0x4C) & (16 * *(STACK[0x8070] + 11367))) ^ 0x76u) + 2326);
  v345 = v344 ^ 0xFFFFFFB1 ^ ((~(4 * ((v344 ^ 0x48) & STACK[0x5700])) | 0xF) + 2 * ((v344 ^ 0x48) & STACK[0x5700]) - 6);
  *(STACK[0x8070] + 7952) = ((v345 & v13) >> v4) ^ (v345 << v5) ^ v15 ^ 0x33;
  v346 = *(v7 + ((16 * *(STACK[0x8070] + 11367)) & 0x55 ^ 0x4F ^ ((16 * *(STACK[0x8070] + 11367)) ^ 0x8F) & (*(STACK[0x8070] + 8402) ^ 0x17u)) + 1550);
  v347 = (2 * (v346 & 0x1F ^ (v288 ^ 0xFFFFFF9F) & 0x5F ^ (v346 ^ 0x20) & (v288 ^ 0xFFFFFF9F))) ^ 0x3E;
  v348 = v346 ^ 0x7A ^ (v347 - ((2 * v347) & 8) - 123);
  *(STACK[0x8070] + 7359) = (((v348 & v13) >> v3) + (v348 << v14)) ^ v20 ^ 0x94;
  v349 = *((*(STACK[0x8070] + 7809) & 0x8F ^ 0x48 ^ (*(STACK[0x8070] + 7809) ^ 0x47) & (16 * *(STACK[0x8070] + 11367))) + v7 + 1550);
  v350 = (((v349 ^ 0xFFFFFF98) + 104) ^ ((v349 ^ 0xFFFFFFC1) + 63) ^ ((v349 ^ 0x5C) - 92)) + (~(2 * v349) | 0xB);
  *(STACK[0x8070] + 6766) = ((((v350 ^ (2 * (v350 & LOBYTE(STACK[0x5700])))) & v19) >> v4) | ((v350 ^ (2 * (v350 & STACK[0x5700]))) << v5)) ^ v15 ^ 0x33;
  v351 = STACK[0x8070];
  v352 = *(v7 + (((32 * ((*(v351 + 10774) & 2) != 0)) | 0x43) ^ (*(v351 + 3774) ^ 0x6B) & ((16 * *(v351 + 10774)) ^ 0x8Fu)) + 1550);
  LODWORD(v329) = v352 ^ 0x17 ^ (2 * (v288 & ~v352) - ((4 * (v288 & ~v352)) & 0xFFFFFFD0) - 24);
  *(v351 + 6173) = ((v329 & v19) >> v4) ^ (v329 << v5) ^ v20 ^ 0x94;
  v353 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (v353[3181] & 0x13 ^ ((16 * v353[10774]) ^ 0x9C) & (v353[3181] ^ 0x48) ^ 0xFDu) + 2326);
  LODWORD(v351) = v351 ^ ((~(4 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700]))) | 0x5F) + 2 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700])) + 81) ^ 0x18;
  v353[5580] = ((v351 & v13) >> v3) ^ (v351 << v14) ^ v15 ^ 0x33;
  v354 = STACK[0x8070];
  LODWORD(v351) = *((v354[2588] & 0x99 ^ 0xF5 ^ ((16 * v354[10774]) ^ 0x16) & (v354[2588] ^ 0x41u)) + v7 + 2326);
  LODWORD(v351) = v351 ^ 0x16 ^ (2 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFBF) + 94);
  v354[4987] = ((v351 & v13) >> v3) ^ (v351 << v5) ^ v15 ^ 0x33;
  v355 = STACK[0x8070];
  LODWORD(v351) = *(v7 + ((v355[1995] ^ 0xD1 | (16 * v355[10774]) ^ 0x70) ^ ((32 * ((v355[10774] >> 1) & 3)) | 4u)) + 2326);
  LODWORD(v351) = v351 ^ 0xFFFFFFBA ^ (2 * ((v351 ^ 0x48) & v288) - ((4 * ((v351 ^ 0x48) & v288)) & 0xFFFFFFE7) - 14);
  v355[4394] = (((v351 & v19) >> v4) | (v351 << v14)) ^ v20 ^ 0x94;
  v356 = STACK[0x8070];
  LODWORD(v351) = *((v356[1402] & 0x68 ^ ((16 * v356[10774]) ^ 0xFFFFFFE7) & (v356[1402] ^ 0x48) ^ 8) + v7 + 1550);
  v357 = (2 * (v351 & 0x47 ^ (v288 ^ 0x47) & 0x57 ^ (v351 ^ 0x28) & (v288 ^ 0x47))) ^ 0xFFFFFF8E;
  LODWORD(v351) = v351 ^ (v357 + (~(2 * v357) | 0x3B) - 28) ^ 0x1C;
  v356[3801] = (((v351 & v19) >> v4) + (v351 << v14)) ^ v20 ^ 0x94;
  v358 = STACK[0x8070];
  LODWORD(v351) = *(v7 + ((16 * v358[10774]) & 0xAA ^ 0xCB ^ (v358[809] ^ 0xE3) & ((16 * v358[10774]) ^ 0x8Fu)) + 1550);
  LODWORD(v351) = v351 ^ (2 * (STACK[0x5700] & ~v351) - 4 * (STACK[0x5700] & ~v351 & 0x1F) + 63) ^ 0xFFFFFFC0;
  v358[3208] = ((v351 & v13) >> v3) ^ (v351 << v5) ^ v15 ^ 0x33;
  v359 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (((16 * v359[10774]) & 0x10 | 0x44) ^ ((16 * v359[10774]) ^ 0x6A) & (v359[216] ^ 0x5C) ^ (v359[216] ^ 0x5C) & 0xE5u) + 1550);
  LODWORD(v351) = v351 ^ ((~(4 * (STACK[0x5700] & ~v351)) | 0xFFFFFF9F) + 2 * (STACK[0x5700] & ~v351) + 49) ^ 0xFFFFFFCF;
  v359[2615] = ((v351 & v19) >> v4) ^ (v351 << v14) ^ v20 ^ 0x94;
  v360 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (((v360[12553] ^ 0x80) & 0x8F | (v360[12553] ^ 0x4F) & (16 * v360[10774])) ^ 0x75u) + 2326);
  LODWORD(v351) = v351 ^ 0xB ^ (2 * ((v351 ^ 0x48) & v288) - ((4 * ((v351 ^ 0x48) & v288)) & 0xFFFFFF87) + 67);
  v360[2022] = ((v351 & v13) >> v3) ^ (v351 << v5) ^ v15 ^ 0x33;
  v361 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (v361[11960] & 0xF9 ^ 0x4A ^ ((16 * v361[10774]) ^ 0x89 | v361[11960] ^ 0xBFu)) + 2326);
  LODWORD(v351) = v351 ^ 0xFFFFFFE8 ^ (2 * ((v351 ^ 0x48) & v288) - ((4 * ((v351 ^ 0x48) & v288)) & 0x40) - 96);
  v361[1429] = (((v351 & v13) >> v4) | (v351 << v14)) ^ v20 ^ 0x94;
  v362 = STACK[0x8070];
  LODWORD(v351) = *((v362[11367] & 0x7D ^ 0xB5 ^ ((16 * v362[10774]) ^ 0xF2) & (v362[11367] ^ 0x40u)) + v7 + 2326);
  v363 = v351 ^ 0xFFFFFFF5 ^ (2 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0x78) - 67);
  v362[836] = ((v363 & v19) >> v3) ^ (v363 << v5) ^ v15 ^ 0x33;
  v364 = STACK[0x8070];
  v365 = *(v7 + (*(v364 + 10774) & 0x10 ^ ((16 * *(v364 + 10774)) ^ 0x9F) & (*(v364 + 10774) ^ 0x48) ^ 0xFDu) + 2326);
  v366 = v365 ^ 0xFFFFFF84 ^ ((~(4 * ((v365 ^ 0x48) & STACK[0x5700])) | 0x67) + 2 * ((v365 ^ 0x48) & STACK[0x5700]) - 51);
  *(v364 + 243) = (((v366 & v13) >> v4) | (v366 << v5)) ^ v15 ^ 0x33;
  v367 = *(v7 + (((*(STACK[0x8070] + 10181) ^ 0x8A) & 0x8F | (*(STACK[0x8070] + 10181) ^ 0x45) & (16 * *(STACK[0x8070] + 10774))) ^ 0xC2u) + 1550);
  v368 = v367 ^ (2 * (v288 & ~v367) - ((4 * (v288 & ~v367)) & 0x30) + 24) ^ 0xFFFFFFE7;
  *(STACK[0x8070] + 12580) = (((v368 & v19) >> v3) | (v368 << v14)) ^ v20 ^ 0x94;
  v369 = *(v7 + (((16 * *(STACK[0x8070] + 10774)) ^ 0x40) & (*(STACK[0x8070] + 9588) ^ 0x50) ^ ((16 * *(STACK[0x8070] + 10774)) & 0x10 | (*(STACK[0x8070] + 9588) ^ 0x50) & 0xCF) ^ 0x48u) + 1550);
  v370 = v369 ^ 0xFFFFFFA4 ^ (2 * (STACK[0x5700] & ~v369) - ((4 * (STACK[0x5700] & ~v369)) & 0xFFFFFFB4) + 91);
  *(STACK[0x8070] + 11987) = ((v370 & v13) >> v3) ^ (v370 << v14) ^ v20 ^ 0x94;
  v371 = *(v7 + ((16 * *(STACK[0x8070] + 10774)) & 0x60 ^ (*(STACK[0x8070] + 8995) ^ 0x2E) & ((16 * *(STACK[0x8070] + 10774)) ^ 0x8F) ^ 0xFBu) + 2326);
  v372 = v371 ^ 0xFFFFFF8B ^ (2 * ((v371 ^ 0x48) & v288) - ((4 * ((v371 ^ 0x48) & v288)) & 0xFFFFFF87) - 61);
  *(STACK[0x8070] + 11394) = (((v372 & v19) >> v4) | (v372 << v5)) ^ v15 ^ 0x33;
  v373 = *(v7 + ((16 * *(STACK[0x8070] + 10774)) & 0x60 ^ (*(STACK[0x8070] + 8402) ^ 0x26) & ((16 * *(STACK[0x8070] + 10774)) ^ 0x8F) ^ 0xF3u) + 2326);
  v374 = v373 ^ 0xFFFFFFAB ^ (2 * ((v373 ^ 0x48) & STACK[0x5700]) - ((4 * ((v373 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFC7) - 29);
  *(STACK[0x8070] + 10801) = (((v374 & v13) >> v3) + (v374 << v14)) ^ v15 ^ 0x33;
  LODWORD(v351) = *((((*(STACK[0x8070] + 7809) ^ 0xBE) & 0x85u | ((16 * *(STACK[0x8070] + 10774)) & ~(*(STACK[0x8070] + 7809) ^ 0xBE)) | (*(STACK[0x8070] + 7809) ^ 0xBELL) & 0xA) ^ 0xC6) + v7 + 1550);
  v375 = v351 & 0x10 ^ (v288 ^ 0xFFFFFF90) & 0x5D ^ (v351 ^ 0x22) & (v288 ^ 0xFFFFFF90);
  LODWORD(v351) = v351 ^ 0xFFFFFFA1 ^ (((2 * v375) ^ 0x20) - ((4 * v375) & 0xFFFFFFBF) + 94);
  *(STACK[0x8070] + 10208) = (((v351 & v19) >> v4) + (v351 << v5)) ^ v20 ^ 0x94;
  LODWORD(v364) = *((((16 * *(STACK[0x8070] + 10181)) ^ 0xFFFFFF8F) & (*(STACK[0x8070] + 3774) ^ 0x48) ^ 0xFD) + v7 + 2326);
  LODWORD(v364) = v364 ^ 0xFFFFFF86 ^ (2 * ((v364 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v364 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFF9F) - 50);
  *(STACK[0x8070] + 9615) = (((v364 & v19) >> v4) | (v364 << v14)) ^ v15 ^ 0x33;
  LODWORD(v364) = *(v7 + (((32 * ((*(STACK[0x8070] + 10181) & 2) != 0)) | 0x41) ^ ((16 * *(STACK[0x8070] + 10181)) ^ 0x8F) & (*(STACK[0x8070] + 3181) ^ 0x69u)) + 1550);
  LODWORD(v364) = v364 ^ 0x48 ^ (2 * (v288 & ~v364) - ((4 * (v288 & ~v364)) & 0x6C) - 73);
  *(STACK[0x8070] + 9022) = ((v364 & v13) >> v3) ^ (v364 << v5) ^ v20 ^ 0x94;
  LODWORD(v364) = *(v7 + (*(STACK[0x8070] + 2588) & 0x14 ^ ((16 * *(STACK[0x8070] + 10181)) ^ 0x9B) & (*(STACK[0x8070] + 2588) ^ 0x4C) ^ 0xFDu) + 2326);
  LODWORD(v364) = v364 ^ 0x43 ^ (2 * ((v364 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v364 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0x14) + 11);
  *(STACK[0x8070] + 8429) = (((v364 & v19) >> v3) + (v364 << v14)) ^ v15 ^ 0x33;
  LODWORD(v364) = *(v7 + ((16 * *(STACK[0x8070] + 10181)) & 0x90 ^ (*(STACK[0x8070] + 1995) ^ 0xD2) & ((16 * *(STACK[0x8070] + 10181)) ^ 0x8F) ^ 0x77u) + 2326);
  LODWORD(v364) = v364 ^ 0x32 ^ (2 * ((v364 ^ 0x48) & v288) - ((4 * ((v364 ^ 0x48) & v288)) & 0xFFFFFFF7) + 122);
  *(STACK[0x8070] + 7836) = (((v364 & v13) >> v4) + (v364 << v5)) ^ v20 ^ 0x94;
  LODWORD(v364) = *((*(STACK[0x8070] + 1402) & 0x7A ^ 0xB5 ^ ((16 * *(STACK[0x8070] + 10181)) ^ 0xF5) & (*(STACK[0x8070] + 1402) ^ 0x42u)) + v7 + 2326);
  LODWORD(v364) = v364 ^ (2 * ((v364 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v364 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFE8) + 116) ^ 0x3C;
  *(STACK[0x8070] + 7243) = (((v364 & v13) >> v4) | (v364 << v14)) ^ v20 ^ 0x94;
  LODWORD(v364) = *(v7 + ((16 * *(STACK[0x8070] + 10181)) & 0x10 ^ ((16 * *(STACK[0x8070] + 10181)) ^ 0x8F) & (*(STACK[0x8070] + 809) ^ 0x52) ^ 0xF7u) + 2326);
  LODWORD(v364) = v364 ^ (2 * ((v364 ^ 0x48) & v288) - ((4 * ((v364 ^ 0x48) & v288)) & 0xFFFFFFEF) - 9) ^ 0xFFFFFFBF;
  *(STACK[0x8070] + 6650) = ((v364 & v19) >> v3) ^ (v364 << v5) ^ v15 ^ 0x33;
  v376 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (((16 * (v376[10181] & 1)) | 0x49) ^ (v376[216] ^ 0x51) & ((16 * v376[10181]) ^ 0x8Fu)) + 1550);
  LODWORD(v351) = v351 ^ 0xFFFFFFD5 ^ (2 * (v288 & ~v351) - ((4 * (v288 & ~v351)) & 0x54) + 42);
  v376[6057] = (((v351 & v13) >> v3) + (v351 << v14)) ^ v15 ^ 0x33;
  v377 = STACK[0x8070];
  LODWORD(v351) = *(v7 + ((v377[12553] ^ 0x98 | (16 * v377[10181]) ^ 0x70) ^ ((32 * ((v377[10181] & 2) != 0)) | 0xDu)) + 2326);
  LODWORD(v351) = v351 ^ (2 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v351 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFF8F) + 71) ^ 0xF;
  v377[5464] = ((v351 & v19) >> v4) ^ (v351 << v5) ^ v20 ^ 0x94;
  v378 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (v378[11960] & 0x12 ^ ((16 * v378[10181]) ^ 0x9D) & (v378[11960] ^ 0x48) ^ 0xFDu) + 2326);
  LODWORD(v351) = v351 ^ 0xFFFFFFBE ^ (2 * ((v351 ^ 0x48) & v288) - ((4 * ((v351 ^ 0x48) & v288)) & 0xFFFFFFEF) - 10);
  v378[4871] = (((v351 & v19) >> v3) + (v351 << v5)) ^ v20 ^ 0x94;
  v379 = STACK[0x8070];
  LODWORD(v351) = *(v7 + ((16 * v379[10181]) & 0xC0 ^ 0xCB ^ (v379[11367] ^ 0x83) & ((16 * v379[10181]) ^ 0x8Fu)) + 1550);
  LODWORD(v351) = v351 ^ (2 * (STACK[0x5700] & ~v351) - 4 * (STACK[0x5700] & ~v351 & 0xF) - 97) ^ 0x60;
  v379[4278] = (((v351 & v13) >> v4) | (v351 << v14)) ^ v15 ^ 0x33;
  v380 = STACK[0x8070];
  LODWORD(v351) = *((v380[10774] & 0xD4 ^ 0xBD ^ ((16 * v380[10181]) ^ 0x5B) & (v380[10774] ^ 0x48u)) + v7 + 2326);
  LODWORD(v351) = v351 ^ 0xFFFFFFE9 ^ (2 * ((v351 ^ 0x48) & v288) - ((4 * ((v351 ^ 0x48) & v288)) & 0x40) - 95);
  v380[3685] = ((v351 & v19) >> v4) ^ (v351 << v14) ^ v20 ^ 0x94;
  v381 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (((16 * (*(v381 + 10181) & 1)) | 0x48) ^ (*(v381 + 10181) ^ 0x50) & 0xC9 ^ ((16 * *(v381 + 10181)) ^ 0x46) & (*(v381 + 10181) ^ 0x50u)) + 1550);
  LODWORD(v351) = v351 ^ 0xFFFFFFDB ^ (2 * (STACK[0x5700] & ~v351) - ((4 * (STACK[0x5700] & ~v351)) & 0x48) + 36);
  *(v381 + 3092) = ((v351 & v13) >> v3) ^ (v351 << v5) ^ v15 ^ 0x33;
  v382 = STACK[0x8070];
  LODWORD(v351) = *(v7 + (((16 * v382[10181]) ^ 0xCB) & (v382[9588] ^ 0x4C) ^ v382[9588] & 0x44u) + 1550);
  LODWORD(v351) = v351 ^ 0x3A ^ (2 * (STACK[0x5700] & ~v351) - ((4 * (STACK[0x5700] & ~v351)) & 0xFFFFFF88) - 59);
  v382[2499] = (((v351 & v19) >> v4) + (v351 << v5)) ^ v20 ^ 0x94;
  v383 = STACK[0x8070];
  LODWORD(v351) = *((v383[8995] & 0x46 ^ 0xBD ^ ((16 * v383[10181]) ^ 0xC9) & (v383[8995] ^ 0x48u)) + v7 + 2326);
  LODWORD(v351) = v351 ^ 0xFFFFFF94 ^ (2 * ((v351 ^ 0x48) & v288) - ((4 * ((v351 ^ 0x48) & v288)) & 0xFFFFFFB8) - 36);
  v383[1906] = (((v351 & v13) >> v3) + (v351 << v14)) ^ v15 ^ 0x33;
  v384 = STACK[0x8070];
  LODWORD(v351) = *(v7 + ((16 * v384[10181]) & 0x20 ^ (v384[8402] ^ 0x6D) & 0x55 ^ ((16 * v384[10181]) ^ 0xDA) & (v384[8402] ^ 0x6D) ^ 0xF8u) + 2326);
  v385 = (v351 & 0x20 | STACK[0x5700] & 0x58) ^ (v351 ^ 0x10) & (LODWORD(STACK[0x5700]) ^ 0x20);
  LODWORD(v351) = v351 ^ 0x5F ^ (2 * v385 - ((4 * v385) & 0x2C) + 23);
  v384[1313] = (((v351 & v13) >> v4) | (v351 << v5)) ^ v15 ^ 0x33;
  v386 = STACK[0x8070];
  v387 = *(v7 + ((16 * v386[10181]) & 0xAA ^ 0x76 ^ ((16 * v386[10181]) ^ 0x8F) & (v386[7809] ^ 0xE3u)) + 2326);
  v388 = v387 ^ 0xFFFFFFCC ^ (2 * ((v387 ^ 0x48) & v288) - ((4 * ((v387 ^ 0x48) & v288)) & 8) - 124);
  v386[720] = (((v388 & v19) >> v3) + (v388 << v14)) ^ v20 ^ 0x94;
  v389 = STACK[0x8070];
  v390 = *(v7 + ((*(v389 + 3774) ^ 0xE5 | (16 * *(v389 + 9588)) ^ 0x70) ^ (16 * *(v389 + 9588)) & 0x55u) + 2326);
  v391 = v390 ^ (2 * ((v390 ^ 0x48) & STACK[0x5700]) - ((4 * ((v390 ^ 0x48) & STACK[0x5700])) & 0x6C) - 74) ^ 0xFFFFFFFE;
  *(v389 + 127) = (((v391 & v13) >> v4) | (v391 << v14)) ^ v20 ^ 0x94;
  LODWORD(v389) = *(v7 + ((16 * *(STACK[0x8070] + 9588)) & 0xAA ^ 0xCA ^ (*(STACK[0x8070] + 3181) ^ 0xE2) & ((16 * *(STACK[0x8070] + 9588)) ^ 0x8Fu)) + 1550);
  LODWORD(v389) = v389 ^ 0x64 ^ (2 * (v288 & ~v389) - ((4 * (v288 & ~v389)) & 0x34) - 101);
  *(STACK[0x8070] + 12464) = ((v389 & v19) >> v3) ^ (v389 << v5) ^ v15 ^ 0x33;
  LODWORD(v389) = *((*(STACK[0x8070] + 2588) & 0xFD ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x72) & (*(STACK[0x8070] + 2588) ^ 0x4C) ^ 8u) + v7 + 1550);
  LODWORD(v389) = v389 ^ 0xFFFFFF85 ^ (2 * (STACK[0x5700] & ~v389) - ((4 * (STACK[0x5700] & ~v389)) & 0xFFFFFFF7) + 122);
  *(STACK[0x8070] + 11871) = (((v389 & v13) >> v3) + (v389 << v5)) ^ v15 ^ 0x33;
  LODWORD(v389) = *((*(STACK[0x8070] + 1995) & 0xA9 ^ 0x48 ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x26) & (*(STACK[0x8070] + 1995) ^ 0x48u)) + v7 + 1550);
  LODWORD(v389) = (~(4 * (v288 & ~v389)) + 2 * (v288 & ~v389)) ^ v389;
  *(STACK[0x8070] + 11278) = (((v389 & v19) >> v4) + (v389 << v14)) ^ v20 ^ 0x94;
  LODWORD(v389) = *(v7 + (*(STACK[0x8070] + 1402) & 0x14 ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x9B) & (*(STACK[0x8070] + 1402) ^ 0x4C) ^ 0xFDu) + 2326);
  LODWORD(v389) = v389 ^ 0xFFFFFFA4 ^ ((~(4 * ((v389 ^ 0x48) & v288)) | 0x27) + 2 * ((v389 ^ 0x48) & v288) - 19);
  *(STACK[0x8070] + 10685) = (((v389 & v13) >> v3) + (v389 << v5)) ^ v20 ^ 0x94;
  LODWORD(v389) = *((((16 * *(STACK[0x8070] + 9588)) ^ 0xFFFFFF8F) & (*(STACK[0x8070] + 809) ^ 0x40) ^ 0x48) + v7 + 1550);
  LODWORD(v389) = v389 ^ 0x50 ^ ((~(4 * (STACK[0x5700] & ~v389)) | 0xFFFFFFA3) + 2 * (STACK[0x5700] & ~v389) - 80);
  *(STACK[0x8070] + 10092) = (((v389 & v19) >> v4) + (v389 << v14)) ^ v15 ^ 0x33;
  LOBYTE(v389) = *(((*(STACK[0x8070] + 216) & 0x10 | 0x40) ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0xFFFFFF9F) & (*(STACK[0x8070] + 216) ^ 0x48)) + v7 + 1550);
  LODWORD(v389) = v389 ^ 0xBC ^ (2 * (LOBYTE(STACK[0x5700]) & ~v389) - ((4 * (LOBYTE(STACK[0x5700]) & ~v389)) & 0x87) + 67);
  LODWORD(v389) = (((v389 & v13) >> v3) + (v389 << v5)) ^ LODWORD(STACK[0x5238]);
  *(STACK[0x8070] + 9499) = (v389 - ((2 * v389) & 0xA4) + 82) ^ 0xE5;
  v392 = *(((*(STACK[0x8070] + 12553) & 0xB4 | 0x40) ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x3B) & (*(STACK[0x8070] + 12553) ^ 0x4Cu)) + v7 + 1550);
  v393 = v392 ^ 0x68 ^ (2 * (v288 & ~v392) - ((4 * (v288 & ~v392)) & 0x2C) - 105);
  *(STACK[0x8070] + 8906) = (((v393 & v19) >> v4) | (v393 << v14)) ^ v20 ^ 0x94;
  v394 = *((((16 * *(STACK[0x8070] + 9588)) ^ 0x6E) & (*(STACK[0x8070] + 11960) ^ 0x48) ^ *(STACK[0x8070] + 11960) & 0xE1u) + v7 + 1550);
  v395 = v394 ^ 0xFFFFFF8E ^ (2 * (STACK[0x5700] & ~v394) - 32 * ((STACK[0x5700] & ~v394) >> 3) + 113);
  *(STACK[0x8070] + 8313) = (((v395 & v19) >> v3) + (v395 << v14)) ^ v20 ^ 0x94;
  v396 = *(v7 + (((32 * ((*(STACK[0x8070] + 9588) & 2) != 0)) | 0x4B) ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x8F) & (*(STACK[0x8070] + 11367) ^ 0x63u)) + 1550);
  v397 = (2 * (v396 & 0x44444444 ^ STACK[0x56F0] & 0x56 ^ (v396 ^ 0x29) & STACK[0x56F0])) ^ 0xFFFFFF88;
  v398 = v396 ^ 0xFFFFFFE4 ^ (v397 - ((2 * v397) & 0x34) + 27);
  *(STACK[0x8070] + 7720) = (((v398 & v13) >> v4) | (v398 << v5)) ^ v15 ^ 0x33;
  v399 = *((*(STACK[0x8070] + 10774) & 0xBA ^ 0xF5 ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x35) & (*(STACK[0x8070] + 10774) ^ 0x48u)) + v7 + 2326);
  v400 = v399 ^ 0x2B ^ (2 * ((v399 ^ 0x48) & v288) - ((4 * ((v399 ^ 0x48) & v288)) & 0xFFFFFFC7) + 99);
  *(STACK[0x8070] + 7127) = (((v400 & v19) >> v3) | (v400 << v14)) ^ v15 ^ 0x33;
  v401 = *(((*(STACK[0x8070] + 10181) ^ 0x41u) & ((16 * (*(STACK[0x8070] + 9588) & 0xF)) ^ 0x8F) ^ 0xF4) + v7 + 2326);
  v402 = v401 ^ 0xFFFFFFAF ^ (2 * ((v401 ^ 0x48) & STACK[0x5700]) - ((4 * ((v401 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFCF) - 25);
  *(STACK[0x8070] + 6534) = ((v402 & v13) >> v4) ^ (v402 << v5) ^ v20 ^ 0x94;
  v403 = *((*(STACK[0x8070] + 9588) & 0xFC ^ ((16 * *(STACK[0x8070] + 9588)) ^ 0x73) & (*(STACK[0x8070] + 9588) ^ 0x40) ^ 8u) + v7 + 1550);
  v404 = v403 ^ 0xFFFFFF95 ^ (2 * (STACK[0x5700] & ~v403) - ((4 * (STACK[0x5700] & ~v403)) & 0xFFFFFFD4) + 106);
  *(STACK[0x8070] + 5941) = (((v404 & v19) >> v3) | (v404 << v14)) ^ v15 ^ 0x33;
  LODWORD(v389) = (16 * *(STACK[0x8070] + 9588)) ^ 0x2E;
  LODWORD(v389) = *((*(STACK[0x8070] + 8995) & 0xA1 ^ (*(STACK[0x8070] + 8995) ^ 0x1E) & v389 ^ v389 & 0x56 ^ 0xFD) + v7 + 2326);
  LODWORD(v389) = v389 ^ 0xFFFFFFB2 ^ ((~(4 * ((v389 ^ 0x48) & v288)) | 0xB) + 2 * ((v389 ^ 0x48) & v288) - 5);
  *(STACK[0x8070] + 5348) = (((v389 & v13) >> v4) + (v389 << v5)) ^ v20 ^ 0x94;
  LODWORD(v389) = *((((16 * *(STACK[0x8070] + 9588)) ^ 0x4F) & (*(STACK[0x8070] + 8402) ^ 0x48) ^ *(STACK[0x8070] + 8402) & 0xC0u) + v7 + 1550);
  LODWORD(v389) = v389 ^ 0xFFFFFFD6 ^ (2 * (v288 & ~v389) - ((4 * (v288 & ~v389)) & 0x50) + 41);
  *(STACK[0x8070] + 4755) = ((v389 & v19) >> v4) ^ (v389 << v5) ^ v15 ^ 0x33;
  LODWORD(v389) = *(v7 + ((16 * *(STACK[0x8070] + 9588)) & 0x9F ^ 0xC2 ^ (*(STACK[0x8070] + 7809) ^ 0xDA) & ((16 * *(STACK[0x8070] + 9588)) ^ 0x8Fu)) + 1550);
  LODWORD(v389) = v389 ^ 0x71 ^ (2 * (STACK[0x5700] & ~v389) - 4 * (STACK[0x5700] & ~v389 & 7) - 114);
  *(STACK[0x8070] + 4162) = (((v389 & v13) >> v3) + (v389 << v14)) ^ v20 ^ 0x94;
  v405 = STACK[0x8070];
  v406 = *(v7 + ((16 * v405[8995]) & 0x60 ^ 0xF2 ^ ((16 * v405[8995]) ^ 0x8F) & (v405[3774] ^ 0x27u)) + 2326);
  v407 = v406 ^ 0xFFFFFFBE ^ (2 * ((v406 ^ 0x48) & STACK[0x5700]) - ((4 * ((v406 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFEF) - 10);
  v405[3569] = (((v407 & v19) >> v3) | (v407 << v5)) ^ v15 ^ 0x33;
  v408 = STACK[0x8070];
  v409 = *(v7 + (((v408[3181] ^ 0x82) & 0x8F | (v408[3181] ^ 0x4D) & (16 * v408[8995])) ^ 0xCAu) + 1550);
  v410 = 2 * (v409 & 0x28 ^ (v288 ^ 0xFFFFFFA8) & 0x2C ^ (v409 ^ 0x53) & (v288 ^ 0xFFFFFFA8));
  v411 = v409 ^ 0x6E ^ ((v410 ^ 0x50) - 2 * ((v410 ^ 0x50) & 0x12 ^ v410 & 2) - 111);
  v408[2976] = (((v411 & v13) >> v4) | (v411 << v14)) ^ v20 ^ 0x94;
  v412 = STACK[0x8070];
  v413 = *(v7 + ((16 * v412[8995]) & 0x90 ^ ((16 * v412[8995]) ^ 0x8F) & (v412[2588] ^ 0xDF) ^ 0xC7u) + 1550);
  v414 = v413 ^ 0xFFFFFFFA ^ (2 * (STACK[0x5700] & ~v413) - ((4 * (STACK[0x5700] & ~v413)) & 8) + 5);
  v412[2383] = (((v414 & v19) >> v4) + (v414 << v14)) ^ v15 ^ 0x33;
  v415 = STACK[0x8070];
  v416 = *(v7 + ((16 * v415[8995]) & 0x70 ^ (v415[1995] ^ 0x3C) & ((16 * v415[8995]) ^ 0x8F) ^ 0xF9u) + 2326);
  v417 = 2 * (v416 & 0x18 ^ (v288 ^ 0x18) & 0x4C ^ (v416 ^ 4) & (v288 ^ 0x18));
  v418 = v416 ^ 0xFFFFFFDC ^ ((v417 ^ 0x10) - 2 * ((v417 ^ 0x10) & 0x16 ^ v417 & 2) - 108);
  v415[1790] = ((v418 & v13) >> v3) ^ (v418 << v5) ^ v20 ^ 0x94;
  v419 = STACK[0x8070];
  v420 = *((((16 * *(v419 + 8995)) ^ 0x2B) & (*(v419 + 1402) ^ 0x48) ^ (*(v419 + 1402) & 0xA4 | 0x40u)) + v7 + 1550);
  v421 = v420 ^ 0x16 ^ (2 * (STACK[0x5700] & ~v420) - ((4 * (STACK[0x5700] & ~v420)) & 0xFFFFFFD0) - 23);
  *(v419 + 1197) = (((v421 & v13) >> v3) + (v421 << v5)) ^ v20 ^ 0x94;
  v422 = STACK[0x8070];
  LODWORD(v419) = *((*(v422 + 809) & 0x1B ^ 0x48 ^ ((16 * *(v422 + 8995)) ^ 0x94) & (*(v422 + 809) ^ 0x42u)) + v7 + 1550);
  v423 = (((v419 ^ 0xFFFFFFA9) + 87) ^ ((v419 ^ 0x7A) - 122) ^ ((v419 ^ 0xFFFFFFD6) + 42)) - (((v419 ^ 0xFFFFFFE6) - 28) ^ ((v419 ^ 0xFFFFFF90) - 106) ^ ((v419 ^ 0xFFFFFF89) - 115)) + 112;
  v424 = v423 & 0xFFFFFF84 | 0x1A;
  v425 = v423 ^ (2 * ((v423 ^ 0x10) & (2 * ((v423 ^ 0x10) & (2 * ((v423 ^ 0x10) & (2 * ((v423 ^ 0x10) & (2 * (((2 * (v423 & 0xFFFFFF84)) | 0x14) & (v423 ^ 0x10) ^ v424)) ^ v424)) ^ v424)) ^ v424)) ^ v424));
  LODWORD(v419) = (((v419 ^ 0xFFFFFFCE) + 50) ^ ((v419 ^ 0x75) - 117) ^ ((v419 ^ 0xFFFFFFBE) + 66)) + (((v425 ^ 0xFFFFFFC9) + 4) ^ ((v425 ^ 0xFFFFFFCD) + 8) ^ ((v425 ^ 0x7C) - 73)) + 95;
  v426 = v419 & 0xFFFFFF8F ^ 0x4E;
  LODWORD(v419) = v419 ^ (2 * ((v419 ^ 0x72) & (2 * ((v419 ^ 0x72) & (2 * ((v419 ^ 0x72) & (2 * ((v419 ^ 0x72) & (2 * ((v419 ^ 0x72) & (2 * ((v419 ^ 0x72) & (2 * v419) & 0x66 ^ v426)) ^ v426)) ^ v426)) ^ v426)) ^ v426)) ^ v426));
  LODWORD(v419) = v419 ^ 0x23 ^ (2 * ((v419 ^ 0xF) & v288) - ((4 * ((v419 ^ 0xF) & v288)) & 0x58) - 84);
  *(v422 + 604) = (((v419 & v19) >> v4) | (v419 << v14)) ^ v15 ^ 0x33;
  v427 = STACK[0x8070];
  LODWORD(v422) = *(v7 + ((16 * *(v427 + 8995)) & 0x50 ^ (*(v427 + 216) ^ 0x14) & ((16 * *(v427 + 8995)) ^ 0x8F) ^ 0xF1u) + 2326);
  LODWORD(v422) = v422 ^ 0x28 ^ (2 * ((v422 ^ 0x48) & LODWORD(STACK[0x5700])) - (((v422 ^ 0x48) & STACK[0x5700]) >> 4 << 6) + 96);
  *(v427 + 11) = ((v422 & v19) >> v3) ^ (v422 << v5) ^ v20 ^ 0x94;
  LODWORD(v422) = *(v7 + ((16 * *(STACK[0x8070] + 8995)) & 0x80 ^ 0xC6 ^ ((16 * *(STACK[0x8070] + 8995)) ^ 0x8F) & (*(STACK[0x8070] + 12553) ^ 0xCEu)) + 1550);
  LODWORD(v422) = v422 ^ 0x5C ^ (2 * (v288 & ~v422) - ((4 * (v288 & ~v422)) & 0x44) - 93);
  *(STACK[0x8070] + 12348) = (((v422 & v13) >> v4) + (v422 << v14)) ^ v15 ^ 0x33;
  LODWORD(v422) = *((*(STACK[0x8070] + 11960) & 0xF8 ^ ((16 * *(STACK[0x8070] + 8995)) ^ 0x77777777) & (*(STACK[0x8070] + 11960) ^ 0x40) ^ 8u) + v7 + 1550);
  LODWORD(v422) = v422 ^ 0xFFFFFFDC ^ (2 * (v288 & ~v422) - ((4 * (v288 & ~v422)) & 0x44) + 35);
  *(STACK[0x8070] + 11755) = (((v422 & v13) >> v4) + (v422 << v5)) ^ v15 ^ 0x33;
  LODWORD(v422) = (16 * *(STACK[0x8070] + 8995)) ^ 0x67;
  LODWORD(v422) = (*(STACK[0x8070] + 11367) ^ 5) & v422 ^ *(STACK[0x8070] + 11367) & 0xE8 ^ v422 & 0x45;
  v428 = ((v422 >> 6) ^ 2 | ((v422 ^ 0xFFFFFFF7) << 26)) ^ 0x3239099CLL;
  LODWORD(v428) = *(v7 + (((v428 >> 26) | (v428 << 6)) ^ 0x8E42670E) + 2326);
  v429 = (v428 & 0x22222222 | STACK[0x5700] & 0x18) ^ (v428 ^ 0x50) & (LODWORD(STACK[0x5700]) ^ 0x22);
  v430 = v428 ^ 0xFFFFFF95 ^ (2 * v429 - ((4 * v429) & 0xFFFFFFB8) - 35);
  *(STACK[0x8070] + 11162) = ((v430 & v19) >> v3) ^ (v430 << v14) ^ v20 ^ 0x94;
  v431 = *(v7 + (((16 * (*(STACK[0x8070] + 8995) & 3)) | 0x48) ^ ((16 * *(STACK[0x8070] + 8995)) ^ 0x8F) & (*(STACK[0x8070] + 10774) ^ 0x70u)) + 1550);
  v432 = v431 ^ 0x16 ^ (2 * (STACK[0x5700] & ~v431) - ((4 * (STACK[0x5700] & ~v431)) & 0xFFFFFFD0) - 23);
  *(STACK[0x8070] + 10569) = (((v432 & v13) >> v4) + (v432 << v14)) ^ v21;
  v433 = *((*(STACK[0x8070] + 10181) & 0xC8 ^ 0xB5 ^ ((16 * *(STACK[0x8070] + 8995)) ^ 0x47) & (*(STACK[0x8070] + 10181) ^ 0x48u)) + v7 + 2326);
  v434 = v433 ^ 0x4E ^ (2 * ((v433 ^ 0x48) & v288) - 4 * ((v433 ^ 0x48) & v288 & 3) + 6);
  *(STACK[0x8070] + 9976) = (((v434 & v19) >> v3) + (v434 << v5)) ^ v15 ^ 0x33;
  v435 = *(v7 + ((16 * *(STACK[0x8070] + 8995)) & 0xAA ^ 0xCE ^ (*(STACK[0x8070] + 9588) ^ 0xE6) & ((16 * *(STACK[0x8070] + 8995)) ^ 0x8Fu)) + 1550);
  v436 = v435 ^ 0xFFFFFFE9 ^ (2 * (STACK[0x5700] & ~v435) - ((4 * (STACK[0x5700] & ~v435)) & 0x2C) + 22);
  *(STACK[0x8070] + 9383) = (((v436 & v19) >> v3) | (v436 << v14)) ^ v15 ^ 0x33;
  v437 = *(v7 + ((16 * *(STACK[0x8070] + 8995)) & 0xE0 ^ 0x76 ^ ((16 * *(STACK[0x8070] + 8995)) ^ 0x8F) & (*(STACK[0x8070] + 8995) ^ 0xA3u)) + 2326);
  v438 = v437 ^ 0xFFFFFF8B ^ (2 * ((v437 ^ 0x48) & v288) - ((4 * ((v437 ^ 0x48) & v288)) & 0xFFFFFF87) - 61);
  *(STACK[0x8070] + 8790) = (((v438 & v13) >> v4) + (v438 << v5)) ^ v21;
  LODWORD(v428) = *(v7 + (((*(STACK[0x8070] + 8402) ^ 0x8D) & 0x8F | (*(STACK[0x8070] + 8402) ^ 0x42) & (16 * *(STACK[0x8070] + 8995))) ^ 0xC5u) + 1550);
  LODWORD(v428) = v428 ^ 0x77 ^ ((~(4 * (v288 & ~v428)) | 0xFFFFFFEF) + 2 * (v288 & ~v428) - 119);
  *(STACK[0x8070] + 8197) = (((v428 & v13) >> v3) + (v428 << v5)) ^ v21;
  LODWORD(v428) = *(v7 + (((16 * *(STACK[0x8070] + 8995)) ^ 0xDA) & (*(STACK[0x8070] + 7809) ^ 0x49) ^ *(STACK[0x8070] + 7809) & 0x55u) + 1550);
  LODWORD(v428) = v428 ^ 0xFFFFFFEE ^ (2 * (STACK[0x5700] & ~v428) - ((4 * (STACK[0x5700] & ~v428)) & 0x20) + 17);
  *(STACK[0x8070] + 7604) = (((v428 & v19) >> v4) + (v428 << v14)) ^ v15 ^ 0x33;
  LODWORD(v427) = *(v7 + ((16 * *(STACK[0x8070] + 8402)) & 0xC0 ^ (*(STACK[0x8070] + 3774) ^ 0x82) & ((16 * *(STACK[0x8070] + 8402)) ^ 0x8F) ^ 0x77u) + 2326);
  LODWORD(v427) = v427 ^ (2 * ((v427 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v427 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFF98) + 76) ^ 4;
  *(STACK[0x8070] + 7011) = (((v427 & v19) >> v4) + (v427 << v5)) ^ v15 ^ 0x33;
  LODWORD(v427) = *(v7 + (((16 * (*(STACK[0x8070] + 8402) & 1)) | 0x42) ^ (*(STACK[0x8070] + 3181) ^ 0x5A) & ((16 * *(STACK[0x8070] + 8402)) ^ 0x8Fu)) + 1550);
  LODWORD(v427) = v427 ^ 0x75 ^ (2 * (v288 & ~v427) - ((4 * (v288 & ~v427)) & 0x14) - 118);
  *(STACK[0x8070] + 6418) = (((v427 & v13) >> v3) + (v427 << v14)) ^ v21;
  LODWORD(v427) = *((*(STACK[0x8070] + 2588) & 0xC1 ^ 0xBD ^ ((16 * *(STACK[0x8070] + 8402)) ^ 0x4E) & (*(STACK[0x8070] + 2588) ^ 0x48u)) + v7 + 2326);
  LODWORD(v427) = v427 ^ 0xFFFFFFA3 ^ (2 * ((v427 ^ 0x48) & v288) - ((4 * ((v427 ^ 0x48) & v288)) & 0xFFFFFFD4) - 21);
  *(STACK[0x8070] + 5825) = (((v427 & v13) >> v3) | (v427 << v14)) ^ v21;
  LODWORD(v427) = *(((((16 * *(STACK[0x8070] + 8402)) ^ 0x85) & (*(STACK[0x8070] + 1995) ^ 0x40) | *(STACK[0x8070] + 1995) & 0xA) ^ 0x48u) + v7 + 1550);
  LODWORD(v427) = v427 ^ 0xFFFFFFDC ^ (2 * (STACK[0x5700] & ~v427) - ((4 * (STACK[0x5700] & ~v427)) & 0x44) + 35);
  *(STACK[0x8070] + 5232) = (((v427 & v19) >> v4) | (v427 << v5)) ^ v15 ^ 0x33;
  LODWORD(v427) = *(((((16 * *(STACK[0x8070] + 8402)) ^ 0x85) & (*(STACK[0x8070] + 1402) ^ 0x40) | *(STACK[0x8070] + 1402) & 0xA) ^ 0xF5u) + v7 + 2326);
  LODWORD(v427) = v427 ^ (2 * ((v427 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v427 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0x68) - 76) ^ 0xFFFFFFFC;
  *(STACK[0x8070] + 4639) = (((v427 & v19) >> v3) | (v427 << v14)) ^ v21;
  v439 = STACK[0x8070];
  LODWORD(v428) = *(v7 + ((16 * v439[8402]) & 0x70 ^ (v439[809] ^ 0x36) & ((16 * v439[8402]) ^ 0x8F) ^ 0xF3u) + 2326);
  LODWORD(v428) = v428 ^ (2 * ((v428 ^ 0x48) & v288) - ((4 * ((v428 ^ 0x48) & v288)) & 0x70) - 72) ^ 0xFFFFFFF0;
  v439[4046] = (((v428 & v13) >> v4) + (v428 << v5)) ^ v15 ^ 0x33;
  v440 = STACK[0x8070];
  LODWORD(v428) = *(v7 + ((16 * v440[8402]) & 0xAA ^ 0x74 ^ ((16 * v440[8402]) ^ 0x8F) & (v440[216] ^ 0xE1u)) + 2326);
  v441 = (2 * (v428 & 0x1E ^ (LODWORD(STACK[0x5700]) ^ 0xFFFFFF9E) & 0x28 ^ (v428 ^ 0x60) & (LODWORD(STACK[0x5700]) ^ 0xFFFFFF9E))) ^ 0x10;
  LODWORD(v428) = v428 ^ (v441 - ((2 * v441) & 0x6C) + 55) ^ 0x7F;
  v440[3453] = (((v428 & v19) >> v3) + (v428 << v5)) ^ v15 ^ 0x33;
  v442 = STACK[0x8070];
  LODWORD(v428) = *(v7 + ((16 * v442[8402]) & 0x55 ^ 0x41 ^ ((16 * v442[8402]) ^ 0x8F) & (v442[12553] ^ 0x19u)) + 1550);
  LODWORD(v428) = v428 ^ 0x4F ^ (2 * (v288 & ~v428) - ((4 * (v288 & ~v428)) & 0x60) - 80);
  v442[2860] = (((v428 & v13) >> v4) | (v428 << v14)) ^ v21;
  v443 = STACK[0x8070];
  LODWORD(v428) = *(v7 + ((16 * v443[8402]) & 0x70 ^ (v443[11960] ^ 0x38) & ((16 * v443[8402]) ^ 0x8F) ^ 0xFDu) + 2326);
  LODWORD(v428) = v428 ^ 0xFFFFFFB3 ^ (2 * ((v428 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v428 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFF7) - 5);
  v443[2267] = (((v428 & v19) >> v3) | (v428 << v14)) ^ v21;
  v444 = STACK[0x8070];
  v445 = *(v7 + (((v444[11367] ^ 0x8D) & 0x8F | (v444[11367] ^ 0x42) & (16 * v444[8402])) ^ 0x78u) + 2326);
  v446 = v445 ^ 0x77 ^ (2 * ((v445 ^ 0x48) & v288) - 4 * ((v445 ^ 0x48) & v288 & 0x1F) + 63);
  v444[1674] = ((v446 & v13) >> v4) ^ (v446 << v5) ^ v15 ^ 0x33;
  v447 = STACK[0x8070];
  v448 = *(v7 + ((16 * v447[8402]) & 0x10 ^ (v447[10774] ^ 0x58) & ((16 * v447[8402]) ^ 0x8F) ^ 0xFDu) + 2326);
  v449 = v448 ^ 0xFFFFFFD6 ^ (2 * ((v448 ^ 0x48) & v288) - 4 * ((v448 ^ 0x48) & v288 & 0xF) - 98);
  v447[1081] = ((v449 & v19) >> v3) ^ (v449 << v5) ^ v20 ^ 0x94;
  v450 = STACK[0x8070];
  v451 = *(((v450[10181] & 0xB3 | 0x40) ^ ((16 * v450[8402]) ^ 0x3C) & (v450[10181] ^ 0x4Bu)) + v7 + 1550);
  v452 = v451 ^ 0xFFFFFF86 ^ (2 * (STACK[0x5700] & ~v451) - 16 * ((STACK[0x5700] & ~v451) >> 2) + 121);
  v450[488] = (((v452 & v13) >> v4) | (v452 << v14)) ^ v15 ^ 0x33;
  v453 = STACK[0x8070];
  v454 = *(v7 + ((16 * v453[8402]) & 0xBF ^ 0x71 ^ (v453[9588] ^ 0xF4) & ((16 * v453[8402]) ^ 0x8Fu)) + 2326);
  v455 = v454 ^ 0xFFFFFFBA ^ (2 * ((v454 ^ 0x48) & v288) - ((4 * ((v454 ^ 0x48) & v288)) & 0xFFFFFFE7) - 14);
  v453[12825] = (((v455 & v19) >> v3) + (v455 << v14)) ^ v21;
  LODWORD(STACK[0x5178]) = 0;
  LOBYTE(v455) = *(v7 + ((16 * *(STACK[0x8070] + 8402)) & 0x10 ^ 0xF2 ^ (*(STACK[0x8070] + 8995) ^ 0x57) & ((16 * *(STACK[0x8070] + 8402)) ^ 0x8Fu)) + 2326);
  LOBYTE(v455) = v455 ^ 0xE8 ^ (2 * ((v455 ^ 0x48) & LOBYTE(STACK[0x5700])) - ((4 * ((v455 ^ 0x48) & LOBYTE(STACK[0x5700]))) & 0x40) - 96);
  v456 = ((v455 & v13) >> v4) ^ (v455 << v5);
  v457 = v456 & 2;
  v458 = v456 & 0xFD;
  if ((v457 & v15) != 0)
  {
    v457 = -v457;
  }

  *(STACK[0x8070] + 12232) = (v457 + LODWORD(STACK[0x5238])) ^ v458 ^ 0xB7;
  v459 = *(v7 + ((16 * *(STACK[0x8070] + 8402)) & 0xBF ^ ((16 * *(STACK[0x8070] + 8402)) ^ 0x8F) & (*(STACK[0x8070] + 8402) ^ 0xFD) ^ 0x78u) + 2326);
  v460 = v459 ^ 0xFFFFFFCC ^ ((~(4 * ((v459 ^ 0x48) & STACK[0x5700])) | 0xFFFFFFF7) + 2 * ((v459 ^ 0x48) & STACK[0x5700]) - 123);
  *(STACK[0x8070] + 11639) = ((v460 & v13) >> v4) ^ (v460 << v14) ^ v20 ^ 0x94;
  v461 = *(v7 + (((*(STACK[0x8070] + 7809) ^ 0x42) & ((16 * *(STACK[0x8070] + 8402)) ^ 0x87) | *(STACK[0x8070] + 7809) & 8) ^ 0xF7u) + 2326);
  v462 = v461 ^ 0x68 ^ (2 * (v461 & 0x47 ^ (v288 ^ 0xFFFFFFC7) & 0x60 ^ (v461 ^ 0x28) & (v288 ^ 0xFFFFFFC7)) - ((4 * ((v461 ^ 0x28) & (v288 ^ 0xFFFFFFC7))) & 0x40) - 96);
  *(STACK[0x8070] + 11046) = (((v462 & v19) >> v3) + (v462 << v5)) ^ v15 ^ 0x33;
  v463 = STACK[0x8070] + 7809;
  v464 = *(v7 + (((32 * ((*v463 & 2) != 0)) | 0x42) ^ (*(STACK[0x8070] + 3774) ^ 0x6A) & ((16 * *v463) ^ 0x8Fu)) + 1550);
  v465 = v464 ^ (2 * (v288 & ~v464) - ((4 * (v288 & ~v464)) & 0x38) + 28) ^ 0xFFFFFFE3;
  *(v463 + 2644) = (((v465 & v13) >> v4) + (v465 << v14)) ^ v15 ^ 0x33;
  v466 = STACK[0x8070] + 7809;
  LODWORD(v463) = *(v7 + ((16 * *v466) & 0xDF ^ 0xC5 ^ (*(STACK[0x8070] + 3181) ^ 0x9D) & ((16 * *v466) ^ 0x8Fu)) + 1550);
  LODWORD(v463) = v463 ^ 0x5F ^ (2 * (STACK[0x5700] & ~v463) - ((4 * (STACK[0x5700] & ~v463)) & 0x40) - 96);
  *(v466 + 2051) = ((v463 & v19) >> v3) ^ (v463 << v5) ^ v20 ^ 0x94;
  v467 = (STACK[0x8070] + 7809);
  LODWORD(v466) = *((*(STACK[0x8070] + 2588) & 0x50 ^ (*(STACK[0x8070] + 2588) ^ 0x24) & ((16 * *v467) ^ 0xFFFFFFDF) ^ ((16 * *v467) ^ 0xFFFFFFDF) & 0x6C ^ 0xBD) + v7 + 2326);
  LODWORD(v466) = v466 ^ 0xFFFFFFA4 ^ (2 * ((v466 ^ 0x48) & LODWORD(STACK[0x5700])) - ((4 * ((v466 ^ 0x48) & LODWORD(STACK[0x5700]))) & 0xFFFFFFD8) - 20);
  v467[1458] = (((v466 & v13) >> v3) + (v466 << v14)) ^ v275;
  if ((v288 & 0x20) != 0)
  {
    v468 = 96;
  }

  else
  {
    v468 = 32;
  }

  v469 = *(v7 + ((16 * *(STACK[0x8070] + 7809)) & 0xC0 ^ ((16 * *(STACK[0x8070] + 7809)) ^ 0x8F) & (*(STACK[0x8070] + 1995) ^ 0x8A) ^ 0x7Fu) + 2326);
  v470 = (v469 ^ 0x4B) & ((v468 + v288) ^ 0x20) ^ (v468 + v288) & 3;
  v471 = v469 ^ (2 * v470 - ((4 * v470) & 0xFFFFFF9F) + 79) ^ 7;
  *(STACK[0x8070] + 8674) = (((v471 & v19) >> v4) | (v471 << v5)) ^ v15 ^ 0x33;
  v472 = *((*(STACK[0x8070] + 1402) & 0xBB ^ 0xF5 ^ ((16 * *(STACK[0x8070] + 7809)) ^ 0x34) & (*(STACK[0x8070] + 1402) ^ 0x40u)) + v7 + 2326);
  v473 = v472 ^ 0x49 ^ ((2 * ((v472 ^ 0x48) & STACK[0x5700])) | 1);
  *(STACK[0x8070] + 8081) = ((v473 & v13) >> v4) ^ (v473 << v14) ^ v15 ^ 0x33;
  v474 = *(((16 * (*(STACK[0x8070] + 7809) & 0xF)) ^ 0x70 | *(STACK[0x8070] + 809) ^ 0xB5) + v7 + 2326);
  v475 = v474 ^ 0xFFFFFF92 ^ (2 * ((v474 ^ 0x48) & v288) - ((4 * ((v474 ^ 0x48) & v288)) & 0xFFFFFFB4) - 38);
  *(STACK[0x8070] + 7488) = (((v475 & v19) >> v3) + (v475 << v5)) ^ v275;
  v476 = *(v7 + ((16 * *(STACK[0x8070] + 7809)) & 0x55 ^ 0xF5 ^ ((16 * *(STACK[0x8070] + 7809)) ^ 0x8F) & (*(STACK[0x8070] + 216) ^ 0x10u)) + 2326);
  v477 = v476 ^ 0xFFFFFFBC ^ (2 * ((v476 ^ 0x48) & STACK[0x5700]) - ((4 * ((v476 ^ 0x48) & STACK[0x5700])) & 0xFFFFFFE8) - 12);
  *(STACK[0x8070] + 6895) = ((v477 & v19) >> v3) ^ (v477 << v5) ^ v15 ^ 0x33;
  v478 = *((*(STACK[0x8070] + 12553) & 0xEC ^ ((16 * *(STACK[0x8070] + 7809)) ^ 0x63) & (*(STACK[0x8070] + 12553) ^ 0x4C) ^ 8u) + v7 + 1550);
  v479 = v478 ^ 0xFFFFFFD9 ^ (2 * (v288 & ~v478) - ((4 * (v288 & ~v478)) & 0x4C) + 38);
  *(STACK[0x8070] + 6302) = (((v479 & v13) >> v4) + (v479 << v14)) ^ v275;
  v480 = *(v7 + (((32 * ((*(STACK[0x8070] + 7809) & 2) != 0)) | 0x46) ^ (*(STACK[0x8070] + 11960) ^ 0x6E) & ((16 * *(STACK[0x8070] + 7809)) ^ 0x8Fu)) + 1550);
  v481 = v480 ^ 0x6A ^ (2 * (v288 & ~v480) - ((4 * (v288 & ~v480)) & 0x28) - 107);
  *(STACK[0x8070] + 5709) = (((v481 & v19) >> v3) | (v481 << v5)) ^ v275;
  v482 = *((*(STACK[0x8070] + 11367) & 0x73 ^ 0xBD ^ ((16 * *(STACK[0x8070] + 7809)) ^ 0xFC) & (*(STACK[0x8070] + 11367) ^ 0x48u)) + v7 + 2326);
  v483 = v482 ^ 0xFFFFFFD1 ^ (2 * ((v482 ^ 0x48) & STACK[0x5700]) - ((4 * ((v482 ^ 0x48) & STACK[0x5700])) & 0x30) - 103);
  *(STACK[0x8070] + 5116) = (((v483 & v13) >> v4) + (v483 << v14)) ^ v15 ^ 0x33;
  v484 = *(v7 + ((16 * *(STACK[0x8070] + 7809)) & 0x60 ^ 0x46 ^ (*(STACK[0x8070] + 10774) ^ 0x2E) & ((16 * *(STACK[0x8070] + 7809)) ^ 0x8Fu)) + 1550);
  v485 = v484 ^ (2 * (STACK[0x5700] & ~v484) - 4 * (STACK[0x5700] & ~v484 & 0x1F) + 62) ^ 0xFFFFFFC1;
  *(STACK[0x8070] + 4523) = (((v485 & v19) >> v3) | (v485 << v14)) ^ v275;
  v486 = STACK[0x8070];
  v487 = *(v7 + ((16 * v486[7809]) & 0xE0 ^ (v486[10181] ^ 0xAB) & ((16 * v486[7809]) ^ 0x8F) ^ 0xC3u) + 1550);
  v488 = 2 * (v487 & 0x22222222 ^ (v288 ^ 0x22) & 0x72 ^ (v487 ^ 0xD) & (v288 ^ 0x22));
  v489 = v487 ^ 0x13 ^ ((v488 ^ 0x44) - 2 * ((v488 ^ 0x44) & 0x6E ^ v488 & 2) - 20);
  v486[3930] = (((v489 & v13) >> v4) | (v489 << v5)) ^ v15 ^ 0x33;
  v490 = STACK[0x8070];
  v491 = *(v7 + ((16 * v490[7809]) & 0x9F ^ (v490[9588] ^ 0xD8) & ((16 * v490[7809]) ^ 0x8F) ^ 0xC0u) + 1550);
  v492 = v491 ^ (-2 * (v288 & ~v491) + 126) ^ 0xFFFFFF81;
  v490[3337] = (((v492 & v13) >> v4) | (v492 << v14)) ^ v15 ^ 0x33;
  v493 = STACK[0x8070];
  v494 = *(((v493[8995] & 0xB1 | 0x40) ^ ((16 * v493[7809]) ^ 0x3E) & (v493[8995] ^ 0x49u)) + v7 + 1550);
  v495 = v494 ^ (2 * (STACK[0x5700] & ~v494) - 4 * (STACK[0x5700] & ~v494 & 7) - 113) ^ 0x70;
  v493[2744] = ((v495 & v19) >> v3) ^ (v495 << v5) ^ v20 ^ 0x94;
  v496 = STACK[0x8070];
  v497 = *(v7 + ((16 * v496[7809]) & 0x60 ^ 0x4F ^ (v496[8402] ^ 0x27) & ((16 * v496[7809]) ^ 0x8Fu)) + 1550);
  v498 = (2 * (v497 & 0x20 ^ STACK[0x5750] & 0x75 ^ (v497 ^ 0xA) & STACK[0x5750])) ^ 0x40;
  v499 = v497 ^ 0xFFFFFFAE ^ (v498 - ((2 * v498) & 0xFFFFFFA0) + 81);
  v496[2151] = ((v499 & v19) >> v3) ^ (v499 << v14) ^ v20 ^ 0x94;
  v500 = STACK[0x8070];
  v501 = *((((*(v500 + 7809) ^ 0x82) & 0xFFFFFF83 | *(v500 + 7809) & 0xC | (*(v500 + 7809) ^ 0x4D) & (16 * *(v500 + 7809))) ^ 0xCA) + v7 + 1550);
  v502 = v501 ^ (2 * (STACK[0x5700] & ~v501) - 32 * ((STACK[0x5700] & ~v501) >> 3) - 16) ^ 0xF;
  *(v500 + 1558) = (((v502 & v13) >> v4) + (v502 << v5)) ^ v15 ^ 0x33;
  LODWORD(STACK[0x2AF8]) = LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5670]);
  v503 = STACK[0x5580];
  LODWORD(STACK[0x5570]) = ((v19 & ((2 * v288) & 0x6A ^ 0x35)) >> v4) ^ (((2 * v288) & 0x6A ^ 0x35) << v5) ^ v15;
  LODWORD(STACK[0x5660]) = v20 ^ ((v503 & 0x30 ^ 0x18) << v14) ^ 0x6CFA1083 ^ ((v13 & (v503 & 0x30 ^ 0x18)) >> v3);
  LODWORD(STACK[0x56F0]) = v15 ^ 0xD01C9B90 ^ (((v13 & (v503 & 0x2C ^ 0x16)) >> v3) | ((v503 & 0x2C ^ 0x16) << v5));
  LODWORD(STACK[0x5750]) = v20 ^ 0x2584205D ^ (((v19 & ((2 * v288) & 0x72 ^ 0x39)) >> v4) + (((2 * v288) & 0x72 ^ 0x39) << v14));
  LODWORD(STACK[0x5650]) = v20 ^ 0xE7E30499 ^ (((v13 & ((2 * v288) & 0x8F ^ 0xC7)) >> v4) | ((((2 * v288) & 0xFFFFFF8F ^ 0xFFFFFFC7) & 0xCF) << v5));
  LODWORD(STACK[0x5670]) = v15 ^ 0xDA4C49D3 ^ ((((v503 & 0xDE ^ 0xEF) & v19) >> v3) + ((v503 & 0xDE ^ 0xEF) << v14));
  LODWORD(STACK[0x5630]) = ((v19 & ((2 * v288) & 0xA5 | 0x52) & 0xFE) >> v4) ^ (((2 * v288) & 0xA4 | 0x52) << v5) ^ v20;
  LODWORD(STACK[0x56E0]) = v15 ^ ((v503 & 6 ^ 3) << v5) ^ 0xD1BA80CF ^ ((v19 & (v503 & 6 ^ 3)) >> v4);
  LODWORD(STACK[0x5640]) = v20 ^ 0x3534E742 ^ (((v13 & ((2 * v288) & 0xF7 ^ 0xFB)) >> v3) | (((2 * v288) & 0xF7 ^ 0xFB) << v14));
  LODWORD(STACK[0x5560]) = ((v19 & (v503 & 0xAC ^ 0xD6) & 0xFE) >> v4) ^ (((v503 & 0xAC ^ 0xD6) & 0xFE) << v14) ^ v15;
  LODWORD(STACK[0x5580]) = ((((v503 & 0x5E ^ 0xAF) & v13) >> v3) + ((v503 & 0x5E ^ 0xAF) << v5)) ^ v20;
  LODWORD(STACK[0x5550]) = (((v13 & ((2 * v288) & 0xA6 ^ 0xD3)) >> v3) | (((2 * v288) & 0xA6 ^ 0xD3) << v5)) ^ v20;
  LODWORD(STACK[0x57C0]) = (((v19 & (v503 & 0x26 ^ 0x13)) >> v4) + ((v503 & 0x26 ^ 0x13) << v5)) ^ v20;
  LODWORD(STACK[0x57A0]) = (((v13 & (v503 & 0x42 | 0xA1)) >> v3) | ((v503 & 0x42 | 0xA1) << v14)) ^ v15;
  LODWORD(STACK[0x5740]) = v15 ^ ((((2 * v288) & 0x2C ^ 0x96) & 0xFE) << v14) ^ ((v13 & ((2 * v288) & 0x2C ^ 0x96) & 0xFE) >> v3) ^ 0xCB531E4A;
  LODWORD(v500) = STACK[0x55A0] - 13;
  v504 = v500 ^ 0x82;
  LODWORD(STACK[0x3FCC]) = v500 ^ 0x7559D682;
  LODWORD(STACK[0x3FC8]) = v500 & 0x264E8912;
  LODWORD(STACK[0x3728]) = LODWORD(STACK[0xFE4C]) + 2054120172;
  v505 = STACK[0x3A08];
  v506 = STACK[0x55F0] ^ STACK[0x5600] ^ STACK[0x55E0];
  v507 = v506 ^ (v506 >> 26) ^ STACK[0x3750];
  v508 = v507 ^ 0xF4C29045;
  v509 = v506 ^ (v506 << 23) ^ ((v506 ^ (v506 << 23)) >> 17) ^ v507 ^ ((v507 ^ 0xF4C29045) >> 26);
  v510 = v508 ^ (v508 << 23) ^ ((v508 ^ (v508 << 23)) >> 17) ^ v509 ^ (v509 >> 26);
  v511 = v509 ^ (v509 << 23) ^ ((v509 ^ (v509 << 23)) >> 17) ^ v510 ^ ((v510 ^ 0xF4C29045) >> 26);
  v512 = ((v510 ^ 0xF4C29045) << 23) ^ v510 ^ ((((v510 ^ 0xF4C29045) << 23) ^ v510 ^ 0xF4C29045) >> 17) ^ v511 ^ (v511 >> 26);
  v513 = v511 ^ (v511 << 23) ^ ((v511 ^ (v511 << 23)) >> 17) ^ v512 ^ (v512 >> 26);
  v514 = v512 ^ (v512 << 23) ^ ((v512 ^ (v512 << 23)) >> 17) ^ ((v513 ^ 0xF4C29045) >> 26);
  v515 = ((v513 ^ 0xF4C29045) << 23) ^ ((((v513 ^ 0xF4C29045) << 23) ^ v513 ^ 0xF4C29045) >> 17);
  v516 = v514 ^ v513;
  v517 = v515 ^ v514;
  v518 = STACK[0x5620];
  v519 = STACK[0x5620] + STACK[0x5610];
  v520 = (STACK[0x5620] + STACK[0x5610]);
  v521 = v520 + 19048568;
  v522 = ((v520 + 19048568) >> 8) & 0xA9;
  v523 = ((v520 + 19048568) >> 8) & 9;
  v524 = v517 ^ (v516 >> 26);
  v525 = v516 ^ (v516 << 23) ^ ((v516 ^ (v516 << 23)) >> 17) ^ v524 ^ (v524 >> 26);
  v526 = v524 ^ (v524 << 23) ^ ((v524 ^ (v524 << 23)) >> 17) ^ v525;
  v525 ^= 0xF4C29045uLL;
  v527 = v526 ^ (v525 >> 26);
  v528 = v525 ^ (v525 << 23) ^ ((v525 ^ (v525 << 23)) >> 17) ^ v527 ^ (v527 >> 26);
  v529 = v527 ^ (v527 << 23) ^ ((v527 ^ (v527 << 23)) >> 17) ^ v528;
  v528 ^= 0xF4C29045uLL;
  v530 = v529 ^ (v528 >> 26);
  v531 = v528 ^ (v528 << 23) ^ ((v528 ^ (v528 << 23)) >> 17) ^ v530 ^ (v530 >> 26);
  v532 = v530 ^ (v530 << 23) ^ ((v530 ^ (v530 << 23)) >> 17) ^ v531;
  v531 ^= 0xF4C29045uLL;
  v533 = v532 ^ (v531 >> 26);
  v534 = v531 ^ (v531 << 23) ^ ((v531 ^ (v531 << 23)) >> 17) ^ v533 ^ (v533 >> 26);
  v535 = v533 ^ (v533 << 23) ^ ((v533 ^ (v533 << 23)) >> 17) ^ v534 ^ ((v534 ^ 0xF4C29045) >> 26);
  v536 = ((v534 ^ 0xF4C29045) << 23) ^ v534 ^ ((((v534 ^ 0xF4C29045) << 23) ^ v534 ^ 0xF4C29045) >> 17) ^ v535 ^ (v535 >> 26);
  v537 = v535 ^ (v535 << 23) ^ ((v535 ^ (v535 << 23)) >> 17) ^ v536 ^ (v536 >> 26);
  v538 = v536 ^ (v536 << 23) ^ ((v536 ^ (v536 << 23)) >> 17) ^ v537;
  v537 ^= 0xF4C29045uLL;
  v539 = v538 ^ (v537 >> 26);
  v540 = v537 ^ (v537 << 23) ^ ((v537 ^ (v537 << 23)) >> 17) ^ v539 ^ (v539 >> 26);
  v541 = v539 ^ (v539 << 23) ^ ((v539 ^ (v539 << 23)) >> 17) ^ v540 ^ ((v540 ^ 0xF4C29045) >> 26);
  v542 = ((v540 ^ 0xF4C29045) << 23) ^ v540 ^ ((((v540 ^ 0xF4C29045) << 23) ^ v540 ^ 0xF4C29045) >> 17);
  v543 = 2 * v519;
  v544 = (STACK[0x55D0] ^ v505 ^ 0x45) + v505;
  v545 = v544 & 7;
  v546 = -v544 & 7;
  if ((v544 & 7) != 0)
  {
    v547 = 255;
  }

  else
  {
    v547 = 0;
  }

  v548 = v547 << v546;
  v549 = v508 + v506;
  if ((v544 & 7) != 0)
  {
    v550 = ~v548;
  }

  else
  {
    v550 = 0;
  }

  v551 = v549 & 7;
  v552 = -v549 & 7;
  if ((v549 & 7) != 0)
  {
    v553 = 255;
  }

  else
  {
    v553 = 0;
  }

  v554 = v553 << v552;
  v555 = 16843009 * v554;
  if (v551)
  {
    v556 = ~v554;
  }

  else
  {
    v556 = 0;
  }

  LODWORD(STACK[0x25D0]) = v555;
  v557 = v555 ^ v556 & v520;
  v558 = v542 ^ v541 ^ (v541 >> 26);
  v559 = v541 ^ (v541 << 23) ^ ((v541 ^ (v541 << 23)) >> 17) ^ v558 ^ (v558 >> 26);
  v560 = v558 ^ (v558 << 23) ^ ((v558 ^ (v558 << 23)) >> 17) ^ v559 ^ ((v559 ^ 0xF4C29045) >> 26);
  v561 = 16843009 * v548;
  LODWORD(STACK[0x2E14]) = v520;
  LODWORD(STACK[0x25C8]) = v561;
  v562 = v550 & v520 ^ v561;
  v563 = ((v559 ^ 0xF4C29045) << 23) ^ v559 ^ ((((v559 ^ 0xF4C29045) << 23) ^ v559 ^ 0xF4C29045) >> 17) ^ v560 ^ (v560 >> 26);
  v564 = v560 ^ (v560 << 23) ^ ((v560 ^ (v560 << 23)) >> 17) ^ v563 ^ (v563 >> 26);
  v565 = v563 ^ (v563 << 23) ^ ((v563 ^ (v563 << 23)) >> 17) ^ v564 ^ ((v564 ^ 0xF4C29045) >> 26);
  v566 = ((v564 ^ 0xF4C29045) << 23) ^ v564 ^ ((((v564 ^ 0xF4C29045) << 23) ^ v564 ^ 0xF4C29045) >> 17);
  v567 = (v506 + v518) | v521;
  LODWORD(STACK[0x25BC]) = v567;
  LODWORD(STACK[0x2E18]) = v523;
  LODWORD(v564) = 16843009 * (v523 ^ v567 ^ 7);
  LODWORD(STACK[0x25B8]) = ((v543 & 0xFFFFFF95 | 0x4A) << v545) & 0xFE ^ v564 ^ ((v557 & (v543 & 0x94 | 0x4A)) >> v546);
  LODWORD(STACK[0x2E0C]) = v521;
  LODWORD(STACK[0x25B4]) = (v505 + v518) | v521;
  LODWORD(STACK[0x2E10]) = v522;
  v568 = 16843009 * (((v505 + v518) | v521) ^ v522);
  LODWORD(STACK[0x25AC]) = v568 ^ 0x6CFA1083 ^ ((((v543 & 0x46 ^ 0x23) & v562) >> v552) | ((v543 & 0x46 ^ 0x23) << v551));
  LODWORD(STACK[0x25A8]) = v568 ^ 0x77BB3C37 ^ ((((v543 & 0x6E ^ 0xB7) & v562) >> v552) + ((v543 & 0x6E ^ 0xB7) << v545));
  v569 = v564 ^ 0x84848484;
  LODWORD(STACK[0x25A0]) = v564 ^ 0x822387FA ^ ((((v543 & 0x5A ^ 0xAD) & v557) >> v546) | ((v543 & 0x5A ^ 0xAD) << v551));
  LODWORD(STACK[0x259C]) = v568 ^ 0xE7E30499 ^ ((((v543 & 0xD6 ^ 0x6B) & v557) >> v546) + ((v543 & 0xD6 ^ 0x6B) << v545));
  LODWORD(STACK[0x2598]) = v564 ^ 0xDA4C49D3 ^ (((v562 & (v543 & 0xC ^ 0x86) & 0xFE) >> v552) | ((v543 & 0xC ^ 0xFFFFFF86) << v551) & 0xFE);
  LODWORD(STACK[0x25B0]) = v568 ^ 0x23232323;
  LODWORD(STACK[0x2594]) = v568 ^ 0x761D2768 ^ (((v557 & (v543 & 0x18 ^ 0x8C) & 0xFC) >> v552) + (((v543 & 0x18 ^ 0xFFFFFF8C) << v545) & 0xFC));
  LODWORD(STACK[0x2590]) = v564 ^ 0x929340E5 ^ (((v562 & (v543 & 0xA1 | 0x50) & 0xF0) >> v546) + (((v543 & 0xFFFFFFA1 | 0x50) << v551) & 0xF0));
  LODWORD(STACK[0x258C]) = ((((v543 & 0x8E ^ 0x47) & v562) >> v546) + ((v543 & 0x8E ^ 0x47) << v545)) ^ v564;
  LODWORD(STACK[0x2588]) = ((((v543 & 0xB6 ^ 0xDB) & v557) >> v546) + ((v543 & 0xB6 ^ 0xDB) << v545)) ^ v564;
  v570 = LODWORD(STACK[0x5560]);
  LODWORD(STACK[0x2584]) = ((((v543 & 0xD2 ^ 0x69) & v562) >> v552) + ((v543 & 0xD2 ^ 0x69) << v551)) ^ v564;
  LODWORD(STACK[0x2580]) = ((v543 & 0xE2 ^ 0xF1) << v545) ^ v568 ^ (((v543 & 0xE2 ^ 0xF1) & v557) >> v546);
  LODWORD(STACK[0x25D8]) = v551;
  LODWORD(STACK[0x25CC]) = v557;
  LODWORD(STACK[0x25D4]) = v552;
  v571 = LODWORD(STACK[0x5550]);
  LODWORD(STACK[0x257C]) = (((((2 * v519) & 0x86 ^ 0xC3) & v557) >> v552) + (((2 * v519) & 0x86 ^ 0xC3) << v551)) ^ v568;
  LODWORD(STACK[0x2578]) = (((v557 & (v543 & 0x2C ^ 0x16u)) >> v552) + ((v543 & 0x2C ^ 0x16) << v551)) ^ v568;
  LODWORD(STACK[0x2574]) = (((v562 & (v543 & 0xD4 ^ 0x6A) & 0xFE) >> v552) + (((v543 & 0xFFFFFFD4 ^ 0x6A) << v551) & 0xFE)) ^ v568;
  LODWORD(STACK[0x2E6C]) = v545;
  LODWORD(STACK[0x2E64]) = v562;
  LODWORD(STACK[0x2E70]) = v546;
  LODWORD(STACK[0x25A4]) = v569;
  LODWORD(STACK[0x2570]) = v569 ^ 0x4FD79ACE ^ ((v562 & (v543 & 0x6A ^ 0x35u)) >> v546) ^ ((v543 & 0x6A ^ 0x35) << v545);
  v572 = v519 & 0x7F;
  STACK[0x25C0] = v565;
  STACK[0x2568] = v566 ^ v565 ^ (v565 >> 26);
  v573 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5760]));
  STACK[0x5218] = STACK[0xC948];
  STACK[0x49F0] = STACK[0xFE40];
  LODWORD(STACK[0x2E08]) = v572;
  LODWORD(STACK[0x2E68]) = 16843009 * v572;
  STACK[0x49F8] = STACK[0xB3A0];
  LODWORD(STACK[0x3FC0]) = STACK[0x55C0] + 253;
  LODWORD(STACK[0x3FB8]) = STACK[0x55B0] + 208;
  LODWORD(STACK[0x3FB0]) = v504 + 249;
  LODWORD(STACK[0x3FAC]) = STACK[0x5590] + 219;
  return v573(LODWORD(STACK[0x57C0]), v571, v570, 589505314);
}

uint64_t sub_10071A6A0()
{
  v1 = STACK[0x57D8];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x55F8 ^ (v0 + 16680))))();
}

uint64_t sub_10071A724()
{
  v3 = *(v0 + 295);
  *(v0 + 1879) = v3;
  v4 = *(v0 + 2392);
  v5 = v4 & 0xFFFFFFF8;
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((v4 & 0xFFFFFFF8) - 1831847764)));
  v9 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (((2 * (v8 + v9)) & 0xB9F4EC19324DE7A8) - (v8 + v9) + 0x230589F366D90C2BLL) ^ 0xE1AAB7595928B4CFLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0xE8253F552F7797D4) + 0x74129FAA97BBCBEALL) ^ 0x11E0CB778F367F16;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x6FF046966119128DLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((0xC4887C33EA1268F4 - ((v17 + v16) | 0xC4887C33EA1268F4) + ((v17 + v16) | 0x3B7783CC15ED970BLL)) ^ 0x9AC51E09C29B8420, 8);
  v19 = (0xC4887C33EA1268F4 - ((v17 + v16) | 0xC4887C33EA1268F4) + ((v17 + v16) | 0x3B7783CC15ED970BLL)) ^ 0x9AC51E09C29B8420 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ v2;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xD8C7B31FCA19D9DELL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5455012E8AB1C38FLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  LOBYTE(v4) = 8 * (v4 & 7);
  *(v0 + 1880) = ((0xCEC859921A1359D6 - ((v26 + v25) | 0xCEC859921A1359D6) + ((v26 + v25) | 0x3137A66DE5ECA629)) ^ 0x5E78C6D1EBEEF8C9) >> v4;
  v27 = *(v6 + (v7 & ((v5 | 0xFF926651) - 1831847764 + (v5 | 0x6D99AE) + 1)));
  v28 = __ROR8__((v27 + v9 - ((2 * (v27 + v9)) & 0x260F072BDA3A39ELL) - 0x7ECF87C6A12E2E31) ^ 0x439F46936120692BLL, 8);
  v29 = (v27 + v9 - ((2 * (v27 + v9)) & 0x260F072BDA3A39ELL) - 0x7ECF87C6A12E2E31) ^ 0x439F46936120692BLL ^ __ROR8__(v27, 61);
  v30 = (((2 * ((v28 + v29) ^ 0xE0887BB3EC2E5CBFLL)) | 0xD00ED25AC5EF808) - ((v28 + v29) ^ 0xE0887BB3EC2E5CBFLL) + 0x797F896D29D083FCLL) ^ 0x3FA59FC228C9447;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x6FF046966119128DLL;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((2 * ((v33 + v34) ^ 0xE89F38BCED53077ELL)) | 0xB8C2FBDCE13C6A28) - ((v33 + v34) ^ 0xE89F38BCED53077ELL) + 0x239E82118F61CAECLL) ^ 0x954CD8974ABB2141;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v2;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5455012E8AB1C38FLL;
  *(STACK[0x8070] + 955) ^= v3 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v4);
  v42 = *(v0 + 3920) + 31;
  *(v0 + 296) = v42;
  v43 = STACK[0x57D8];
  v44 = *(STACK[0x57D8] + 8 * (v1 + 9834));
  *(v0 + 2400) = v42;
  *(v0 + 280) = v44;
  return (*(v43 + 8 * (LODWORD(STACK[0x4D50]) + 31504)))();
}

uint64_t sub_10071AAFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = v13 + (v8 + v10 + 7);
  v15 = *(*a8 + ((*v11 & ((v14 & 0xFFFFFFF8 & a2) + (v14 & 0xFFFFFFF8 | (a2 + 5)) - 919485655)) & 0xFFFFFFFFFFFFFFF8));
  v16 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (a3 - ((v16 + v15) | a3) + ((v16 + v15) | ((v9 - 5734) | 0x612) ^ 0xDF9996D6EF8C7368)) ^ 0x5467D7AD00F36558;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xF6BE8AFAA25FCCF6) + 0x7B5F457D512FE67BLL) ^ 0x4A0AD6915DBED22ELL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (a4 - ((v24 + v23) | a4) + ((v24 + v23) | 0xA280BB8A5D653CF8)) ^ 0x94E27A7F770B90C6;
  v26 = v10 - 1;
  v27 = v25 ^ __ROR8__(v23, 61);
  v28 = __ROR8__(v25, 8);
  v29 = (a1 - ((v28 + v27) | a1) + ((v28 + v27) | 0x1290133510AB1D47)) ^ 0x6F998CCFFC63EFF9;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x3F6AED682620914CLL) - 0x604A894BECEFB75ALL) ^ 0xBB2E36E835DF6D00;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0xC0C98F3B0CB52732) + 0x6064C79D865A9399) ^ 0x3ED6DD67022C10FBLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  *(v12 + v26 + 820) = (((((v37 + v36) & a6 ^ 0x8604100305411060) + ((v37 + v36) ^ 0x499BEF78B22E6F07) - (((v37 + v36) ^ 0x499BEF78B22E6F07) & a6)) ^ 0x88B32EFD04F1D163) >> (8 * (v14 & 7u))) ^ *v14;
  return (*(STACK[0x57D8] + 8 * ((12554 * (v26 == 0)) ^ v9)))();
}

uint64_t sub_10071AD98()
{
  v1 = STACK[0x57D8];
  STACK[0x6C78] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 15201) ^ 0x1C36) + v0)))();
}

uint64_t sub_10071ADCC@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x798A;
  v2 = a1 ^ 0x31EC;
  v3 = ((a1 ^ 0x798A) - 11346) | 0x812;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x452F)))(23);
  *STACK[0x9960] = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v3 ^ 0xFFFFEB1A) + v2)) ^ v1)))();
}

uint64_t sub_10071AE48(uint64_t a1)
{
  v5 = ((v2 - 1836737477 + ((v2 + 165563433) & 0xF621EF17)) ^ v1) > 7 && v3 - a1 > 0xF;
  v6 = *(STACK[0x57D8] + 8 * ((13 * v5) ^ v2));
  STACK[0x5660] = v3;
  return v6();
}

uint64_t sub_10071B08C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5124)))();
  STACK[0xBCD0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10071B0E8()
{
  v0 = STACK[0x1824];
  v1 = LODWORD(STACK[0x1824]) - 3703;
  v2 = STACK[0x98A0];
  v3 = LODWORD(STACK[0x673C]) + *(STACK[0x98A0] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xEBE0]) = v3;
  v4 = *(v2 - 0x1883660EE814440ELL) + ((v0 - 25295) ^ 0xB8509580);
  v3 -= 1202678146;
  v5 = v3 < 0x359A0AFA;
  v6 = v4 < v3;
  if (v5 != v4 < 0x359A0AFA)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (STACK[0xB338] == 0) | v7 & 1;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xEBE4]) = v9;
  return (*(STACK[0x57D8] + 8 * ((v8 * (v1 ^ 0x5870)) ^ v0)))();
}

uint64_t sub_10071B1E8(uint64_t a1, int a2)
{
  v9 = v3;
  v10 = -338224375 * ((*(STACK[0x5550] + v3) ^ 0xF3FCEEAC) - 1531385975 + ((2 * *(STACK[0x5550] + v3)) & 0x158)) - 589342325;
  v11 = (v10 ^ 0x8101D7D9) & (2 * (v10 & STACK[0x57B0])) ^ v10 & STACK[0x57B0];
  v12 = ((2 * (v10 ^ 0x9100DCF9)) ^ 0x3142B6C2) & (v10 ^ 0x9100DCF9) ^ (2 * (v10 ^ 0x9100DCF9)) & v5;
  v13 = v12 ^ 0x88A14921;
  v14 = (v12 ^ 0x80215341) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x62856D84) & v13 ^ (4 * v13) & v5;
  v16 = (v15 ^ 0x814900) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x98201261)) ^ 0x8A15B610) & (v15 ^ 0x98201261) ^ (16 * (v15 ^ 0x98201261)) & v5;
  v18 = v16 ^ (v5 + 1) ^ (v17 ^ 0x88011200) & (v16 << 8);
  v19 = v10 ^ (2 * ((v18 << 16) & 0x18A10000 ^ v18 ^ ((v18 << 16) ^ 0x5B610000) & (((v17 ^ 0x10A04961) << 8) & 0x18A10000 ^ 0x18A00000 ^ (((v17 ^ 0x10A04961) << 8) ^ 0x215B0000) & (v17 ^ 0x10A04961))));
  v20 = ((v19 ^ a2 ^ 0x3BEE7655) + 1384880872) ^ ((v19 ^ a2 ^ 0xFCA7ED8F) - 1782447810) ^ ((v19 ^ a2 ^ 0xCFE8AA80) - 1500690893);
  v21 = v9 - 655543081 + v20 + 795;
  v22 = (((v21 ^ 0x45344168) - 2139509939) ^ v21 ^ ((v21 ^ 0xE58C1B49) + 549581166) ^ ((v21 ^ 0x67F5B404) - 1564975582) ^ ((v21 ^ 0xFDFFFBFC) + 951194076)) >> 16;
  v23 = v20 - (((v22 ^ 0xF45F39C8) + 1210138347) ^ ((v22 ^ 0x5245ABE1) - 298079036) ^ ((v22 ^ 0xA61AA89B) + 442806202));
  v24 = ((((v9 - 1740696122 + v23) ^ 0x68804592) - 1426453388) ^ (v9 - 1740696122 + v23) ^ (((v9 - 1740696122 + v23) ^ 0xCAE0C997) + 144343159) ^ (((v9 - 1740696122 + v23) ^ 0xA03AC5E0) + 1648397320) ^ (((v9 - 1740696122 + v23) ^ 0x3FDFFFFD) - 39471587)) >> 8;
  v25 = v9 + v23 - (((v24 ^ 0x27EB6853) + 1113708711) ^ ((v24 ^ 0x2164CCD1) + 1156480037) ^ ((v24 ^ 0x6B22134) + 1664651714));
  v26 = ((v25 - 250800036) ^ 0xD6E14DF0) & (2 * ((v25 - 250800036) & 0xD8F049C0)) ^ (v25 - 250800036) & 0xD8F049C0;
  v27 = ((2 * ((v25 - 250800036) ^ 0xF681CEF0)) ^ 0x5CE30E60) & ((v25 - 250800036) ^ 0xF681CEF0) ^ (2 * ((v25 - 250800036) ^ 0xF681CEF0)) & v8;
  v28 = v27 ^ 0x22108110;
  v29 = (v27 ^ 0x4410600) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xB9C61CC0) & v28 ^ (4 * v28) & v8;
  v31 = v29 ^ v8 ^ (v30 ^ 0x28400400) & (16 * v29);
  v32 = (16 * (v30 ^ 0x6318330)) & v8 ^ 0x8618430 ^ ((16 * (v30 ^ 0x6318330)) ^ 0xE7187300) & (v30 ^ 0x6318330);
  v33 = (v31 << 8) & (v8 - 48) ^ v31 ^ ((v31 << 8) ^ 0x71873000) & v32;
  v34 = v19 ^ 0x1D25B50;
  v35 = (v25 - 250800036) ^ (2 * ((v33 << 16) & 0x2E710000 ^ v33 ^ ((v33 << 16) ^ 0x7300000) & ((v32 << 8) & 0x2E710000 ^ 0xE700000 ^ ((v32 << 8) ^ 0x71870000) & v32))) ^ 0x19083232;
  v36 = ((v35 ^ v34 ^ 0x46A0DE9A) - 1184947866) ^ ((v35 ^ v34 ^ 0xCCE559C3) + 857384509) ^ ((v35 ^ v34 ^ LODWORD(STACK[0xD40])) - 1380948161);
  v37 = v9 - 460238583 + v36;
  v38 = ((2 * (v37 ^ 0x5EBADDAB)) ^ 0x5B842648) & (v37 ^ 0x5EBADDAB) ^ (2 * (v37 ^ 0x5EBADDAB)) & v2;
  v39 = v38 ^ 0xA4421124;
  v40 = (v37 ^ 0xFA7ACCAF) & (2 * (v37 & 0xF378CE8F)) ^ v37 & 0xF378CE8F;
  v41 = (v38 ^ 0x9800200) & (4 * v40) ^ v40;
  v42 = ((4 * v39) ^ 0xB7084C90) & v39 ^ (4 * v39) & v2;
  v43 = v41 ^ v2 ^ (v42 ^ LODWORD(STACK[0xD44])) & (16 * v41);
  v44 = (16 * (v42 ^ 0x8C21324)) & (v2 - 4) ^ 0x21C20124 ^ ((16 * (v42 ^ 0x8C21324)) ^ 0xDC213240) & (v42 ^ 0x8C21324);
  v45 = (v43 << 8) & (v2 - 36) ^ v43 ^ ((v43 << 8) ^ 0xC2132400) & v44;
  v46 = (v37 ^ (2 * ((v45 << 16) & 0x2DC20000 ^ v45 ^ ((v45 << 16) ^ 0x13240000) & ((v44 << 8) & 0x2DC20000 ^ 0x2DC00000 ^ ((v44 << 8) ^ 0x42130000) & v44)))) >> 16;
  v47 = v36 - (((v46 ^ 0xBDB6D8EB) + 161458371) ^ ((v46 ^ 0x4662C1E0) - 229920310) ^ ((v46 ^ 0xFBD4B3F3) + 1342030811));
  v48 = v9 - 1073096333 + v47 + 3423;
  v49 = (v48 ^ 0xCF8B0392) & (2 * (v48 & 0xCC2A1398)) ^ v48 & 0xCC2A1398;
  v50 = ((2 * (v48 ^ 0xDFCF26B2)) ^ 0x27CA6A54) & (v48 ^ 0xDFCF26B2) ^ (2 * (v48 ^ 0xDFCF26B2)) & v6;
  v51 = v50 ^ 0x1025152A;
  v52 = (v50 ^ 0x1C00000) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x4F94D4A8) & v51 ^ (4 * v51) & (v6 - 2);
  v54 = (v53 ^ 0x3841422) & (16 * v52) ^ v52;
  v55 = ((16 * (v53 ^ 0x10612102)) ^ 0x3E5352A0) & (v53 ^ 0x10612102) ^ (16 * (v53 ^ 0x10612102)) & (v6 - 10);
  v56 = v54 ^ v6 ^ (v55 ^ 0x12411000) & (v54 << 8);
  v57 = (v48 ^ (2 * ((v56 << 16) & 0x13E50000 ^ v56 ^ ((v56 << 16) ^ 0x352A0000) & (((v55 ^ 0x1A4250A) << 8) & 0x13E50000 ^ 0x12C00000 ^ (((v55 ^ 0x1A4250A) << 8) ^ 0x65350000) & (v55 ^ 0x1A4250Au))))) >> 8;
  v58 = v9 + v47 - (((v57 ^ 0xED66D98F) + 2081011474) ^ ((v57 ^ 0x6B53FBDD) - 96692924) ^ ((v57 ^ 0x86FC822B) + 395570358));
  v59 = (v58 - 1866255800) ^ (((v58 - 1866255800) ^ 0xC5CB9E58) + 1399847522) ^ (((v58 - 1866255800) ^ 0x221F6935) - 1262809843) ^ (((v58 - 1866255800) ^ 0xF17213D4) + 1742108654) ^ (((v58 - 1866255800) ^ 0x7FFD7F7F) - 380036281) ^ 0x3C8EA0E4;
  v60 = ((v59 ^ v34 ^ 0x44FA69D7) - 1157261783) ^ ((v59 ^ v34 ^ 0x42BFCA85) - 1119865477) ^ ((v59 ^ v34 ^ 0x5AE3F27A) - 1524888186);
  v61 = ((((v60 + v9 - 2131948625) ^ 0xA9D13320) + 1919448665) ^ (v60 + v9 - 2131948625) ^ (((v60 + v9 - 2131948625) ^ 0x357B2A) - 611565997) ^ (((v60 + v9 - 2131948625) ^ 0x724B0D7E) - 1443739641) ^ (((v60 + v9 - 2131948625) ^ 0xFFE9FFF0) + 609270412)) >> 16;
  v62 = ((v61 ^ 0xC4BBA5B8) + 1433367321) ^ ((v61 ^ 0x8B472517) + 445903800) ^ ((v61 ^ 0x4FFCA4E9) - 567774646);
  v63 = v9 + 537082586 + v60 - v62;
  v64 = ((2 * (v63 ^ 0x5851B71B)) ^ 0x2C537C5C) & (v63 ^ 0x5851B71B) ^ (2 * (v63 ^ 0x5851B71B)) & v7;
  v65 = v64 ^ 0x92288222;
  v66 = (v63 ^ 0xCC71A531) & (2 * (v63 & 0xCE780935)) ^ v63 & 0xCE780935;
  v67 = (v64 ^ 0x2C0C) & (4 * v66) ^ v66;
  v68 = ((4 * v65) ^ 0x58A6F8B8) & v65 ^ (4 * v65) & (v7 - 2);
  v69 = (v68 ^ 0x1020B820) & (16 * v67) ^ v67;
  v70 = ((16 * (v68 ^ 0x86090606)) ^ 0x629BE2E0) & (v68 ^ 0x86090606) ^ (16 * (v68 ^ 0x86090606)) & (v7 - 14);
  v71 = v69 ^ v7 ^ (v70 ^ 0x209A200) & (v69 << 8);
  v72 = (v63 ^ (2 * ((v71 << 16) & 0x16290000 ^ v71 ^ ((v71 << 16) ^ 0x3E2E0000) & (((v70 ^ 0x94201C0E) << 8) & 0x16290000 ^ 0x16010000 ^ (((v70 ^ 0x94201C0E) << 8) ^ 0x29BE0000) & (v70 ^ 0x94201C0E))))) >> 8;
  v73 = v60 + v9 - v62 - (((v72 ^ 0xCF520650) + 573459251) ^ ((v72 ^ 0x613C08B8) - 1941944869) ^ ((v72 ^ 0xAEA0759D) + 1138505984));
  v74 = v9 + 1435536526 < v4;
  if (v4 < 0x55908C8D != v9 + 1435536526 < 0x55908C8D)
  {
    v74 = v4 < 0x55908C8D;
  }

  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x57C0]) | (4 * v74))))(3854190423, v73 - 440776873);
}

uint64_t sub_10071C314@<X0>(char a1@<W1>, int a2@<W8>)
{
  v7 = v4 + (v2 ^ (v6 - 671763642)) + (v3 & (2 * (v6 - 671763642)));
  v8 = *(STACK[0x57D8] + 8 * a2);
  v9 = (v7 + v5 - 0x28A54921035A27C3);
  v10 = ((*v9 ^ 0xFu) << 56) | ((v9[1] ^ 0xFu) << 48) | ((v9[2] ^ 0xFu) << 40) | ((v9[3] ^ 0xFu) << 32) | ((v9[4] ^ 0xFLL) << 24) | ((v9[5] ^ 0xFLL) << 16);
  v11 = ((v10 & 0xF59B914FADAB0000 | (((v9[6] ^ 0xFLL) << 8) ^ 0xA646EB052542C1DLL) & (v10 ^ 0xAE6FFEF45AF6FFFDLL)) ^ 0x16867D37218041B3) & (v9[7] ^ 0xFFFFFFFFFFFFFFF0) ^ (v9[7] & a1);
  return v8(0x67310FA72B6EDB77 * (((v11 ^ 0x9DC3DC103AA95A91) + 0x5F46446A01649155) ^ ((v11 ^ 0xD36E10820F2F44D5) + 0x11EB88F834E28F11) ^ ((v11 ^ 0x524FDF15465273EBLL) - 0x6F35B890826047D1)) + 0x62D2300F222F6CCLL);
}

uint64_t sub_10071C610()
{
  v1 = STACK[0x57D8];
  STACK[0xC328] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 137) | 0x2808) + 4115) ^ v0)))();
}

uint64_t sub_10071C668()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xBCA0]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 10415)))();
}

void *sub_10071C69C@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x57D8] + 8 * (((a1 + 944994267) & 0xC7ACB3FD ^ 0x3CA4) + a1));
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * a1);
  return v1(&STACK[0xC824]);
}

uint64_t sub_10071C720(int a1)
{
  v2 = *(STACK[0x5740] + (STACK[0x52C8] & ((a1 & 0x59EF3E18) + (a1 | 0x59EF3E1D) + 541915901)));
  v3 = (v2 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (v5 + v4 - ((2 * (v5 + v4)) & 0xD6BDA38F448CE212) - 0x14A12E385DB98EF7) ^ 0xD39660AD4543197ELL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) | 0x715E2C4C813F8920) - (v8 + v7) + 0x4750E9D9BF603B70) ^ 0x5D2FA75BCC5A21C1;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0xC54597E4CA2FA4F6) - (v11 + v10) - 0x62A2CBF26517D27BLL) ^ 0x830336A9B4422B01;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0x499F83ECC929738CLL) - 0x5B303E099B6B463ALL) ^ 0x7EAF8AFA6736065FLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0x207AD10A3035DDEALL) + 0x103D6885181AEEF5) ^ 0xEA088A48D324DF32;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD2F00CE620E5D3AELL;
  v21 = ((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v19, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5780];
  v22 = *(STACK[0x53F8] + (*STACK[0x51E8] & STACK[0x5110]));
  v23 = __ROR8__((v22 + STACK[0x5620]) ^ 0xB88801D4E1C76353, 8);
  v24 = (v22 + STACK[0x5620]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v22, 61);
  v25 = __ROR8__((((2 * (v23 + v24)) & 0x74414AE5220E5B5ELL) - (v23 + v24) - 0x3A20A57291072DB0) ^ 0xFD17EBE789FDBA27, 8);
  v26 = (((2 * (v23 + v24)) & 0x74414AE5220E5B5ELL) - (v23 + v24) - 0x3A20A57291072DB0) ^ 0xFD17EBE789FDBA27 ^ __ROR8__(v24, 61);
  v27 = (v25 + v26) ^ (((v1 - 988) | 0x820u) - 0x1A7F4E82733A395ALL);
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xE1A1FD5BD155F97ALL;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (((2 * (v30 + v31)) | 0x57C510E598E1E3FELL) - (v30 + v31) - 0x2BE28872CC70F1FFLL) ^ 0xF182C37ECFD24E66;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((2 * (v33 + v34)) & 0xFCB3AD909BA03806) - (v33 + v34) + 0x1A62937B22FE3FCLL) ^ 0xFB93CBFA7911D23BLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xD2F00CE620E5D3AELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  LODWORD(STACK[0x56F0]) = (((v21 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFFAB) - 122) ^ ((v21 ^ LODWORD(STACK[0x5790]) ^ 0x38) + 23) ^ ((v21 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFF93) - 66)) - 42;
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((((2 * (v39 + v38)) | 0x813A8CBDBB1BD1BCLL) - (v39 + v38) - 0x409D465EDD8DE8DELL) ^ 0xB4EE4D6F73FD9DA5) >> STACK[0x57B0]);
  v40 = *(STACK[0x57D8] + 8 * v1);
  STACK[0x52F8] = 50;
  return v40();
}

uint64_t sub_10071CBE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0x9328] = 0;
  STACK[0xA9F8] = 0;
  return (*(STACK[0x57D8] + 8 * (((v2 != 0x308E083E0C524CBELL) * ((v1 ^ 0x4BDC) - 1857)) ^ v1)))();
}

uint64_t sub_10071CC5C@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 - 6333;
  v4 = __ROR8__(a1 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = v4 - ((2 * v4 - 0x38C922E28775EE02) & 0xD8656605907EB3FELL) - 0x3031DE6E7B7B9D02;
  v6 = v5 ^ 0xE954916A01ED4F52;
  v5 ^= 0xF58FE51FE3C508ADLL;
  v7 = __ROR8__(v6, 8);
  v8 = ((((v7 + v5) << (((v3 - 27) & 0xD7u) - 85)) | 0x4501B99D78BCBB9ALL) - (v7 + v5) + 0x5D7F233143A1A233) ^ 0x5F283FEA8B3C7D5ALL;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0x3EB67E1BA2F1B7DBLL - ((v10 + v9) | 0x3EB67E1BA2F1B7DBLL) + ((v10 + v9) | 0xC14981E45D0E4824)) ^ 0xD171E5D17FC35FB6;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xF7DB5EB42CCB7E46) - (v13 + v12) - 0x7BEDAF5A1665BF24) ^ 0x3BE492BEC8940FEBLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xC5DB6C4E07B5162ALL) - (v16 + v15) + 0x1D1249D8FC2574EBLL) ^ 0x7A6F5100D8ED4481;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0xE75AD52F8DD4ADA2) - (v19 + v18) + 0xC5295683915A92FLL) ^ 0xF6504FB6C55F3F3BLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x7B5626353E243BAALL;
  *a1 = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (a1 & 7u))) ^ v2;
  return (*(STACK[0x57D8] + 8 * (v3 ^ 0x1371)))();
}

uint64_t sub_10071CF18()
{
  v2 = STACK[0x51B8] - 7476;
  v3 = 1978732275 * (v0 - v1) + 214676760;
  v4 = ((v3 ^ 0x5F80FB21) - 1397444153) ^ v3 ^ ((v3 ^ 0x668452E6) - 1783621630) ^ ((v3 ^ 0x7FFDF79B) - 1932935811) ^ ((v3 ^ 0x4A32EB44) + STACK[0x51B8] - 1190770354);
  LODWORD(STACK[0x867C]) = v4 ^ 0xDED7358C;
  LODWORD(STACK[0x8364]) += 4;
  v5 = (((v4 ^ 0x9449903F) - 1251911091) ^ ((v4 ^ 0x2313D607) + 37428341) ^ ((v4 ^ 0xBB91F320) - 1699137196)) + 1846891687;
  v6 = LODWORD(STACK[0x83F4]) + 648403010;
  v7 = v5 < 0x9BF8D413;
  v8 = v5 > v6;
  if (v6 < 0x9BF8D413 != v7)
  {
    v8 = v7;
  }

  return (*(STACK[0x57D8] + 8 * ((26 * v8) ^ v2)))();
}

void *sub_10071D0E0()
{
  v0 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x1D0C]) - 9057 + 5 * (LODWORD(STACK[0x1D0C]) ^ 0xDD8)));
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1D0C]));
  return v0(&STACK[0x7E38]);
}

uint64_t sub_10071D1CC@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717160535) ^ (1964904101 * ((((v2 - 240) | 0xB1F5D59) - (v2 - 240) + ((v2 - 240) & 0xF4E0A2A0)) ^ 0xF13DB6DD));
  STACK[0x1D4C8] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 21100)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 194)))(v4);
}

uint64_t sub_10071D2C4()
{
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0xEEC3B11F;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  STACK[0xEEE0] = 0;
  STACK[0xEEE8] = v0;
  v10 = 16777619 * ((-289165025 * v9 + 7) ^ (-289165025 * v9)) % 7;
  v11 = *(&STACK[0xEEE0] | v10);
  *(&STACK[0xEEE0] | v10) = 0;
  LOBYTE(STACK[0xEEE7]) = v11;
  v12 = 16777619 * ((-289165025 * v9 + 6) ^ (-289165025 * v9)) % 6;
  v13 = *(&STACK[0xEEE0] | v12);
  *(&STACK[0xEEE0] | v12) = STACK[0xEEE6];
  LOBYTE(STACK[0xEEE6]) = v13;
  v14 = 16777619 * ((-289165025 * v9 + 5) ^ (-289165025 * v9)) % 5;
  v15 = *(&STACK[0xEEE0] | v14);
  *(&STACK[0xEEE0] | v14) = STACK[0xEEE5];
  LOBYTE(STACK[0xEEE5]) = v15;
  v16 = STACK[0xEEE0];
  LOBYTE(STACK[0xEEE0]) = STACK[0xEEE4];
  LOBYTE(STACK[0xEEE4]) = v16;
  v17 = 16777619 * ((-289165025 * v9 + 3) ^ (-289165025 * v9)) % 3;
  v18 = *(&STACK[0xEEE0] | v17);
  *(&STACK[0xEEE0] | v17) = STACK[0xEEE3];
  LOBYTE(STACK[0xEEE3]) = v18;
  v19 = STACK[0xEEE1];
  LOBYTE(STACK[0xEEE2]) = STACK[0xEEE0];
  LOWORD(STACK[0xEEE0]) = v19;
  v20 = vdup_n_s32(-289165025 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -289165025 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEEE0] = vmla_s32(v22, STACK[0xEEE0], vdup_n_s32(0x1000193u));
  STACK[0xEEE8] ^= STACK[0xEEE0];
  STACK[0xEEE8] = vmul_s32(vsub_s32(STACK[0xEEE8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEEEA];
  LOWORD(STACK[0xEEE9]) = STACK[0xEEE8];
  LOBYTE(STACK[0xEEE8]) = v23;
  v24 = (&STACK[0xEEE8] | v17);
  v25 = *v24;
  *v24 = STACK[0xEEEB];
  LOBYTE(STACK[0xEEEB]) = v25;
  LOBYTE(v24) = STACK[0xEEE8];
  LOBYTE(STACK[0xEEE8]) = STACK[0xEEEC];
  LOBYTE(STACK[0xEEEC]) = v24;
  v26 = (&STACK[0xEEE8] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEEED];
  LOBYTE(STACK[0xEEED]) = v24;
  v27 = (&STACK[0xEEE8] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEEEE];
  LOBYTE(STACK[0xEEEE]) = v26;
  v28 = (&STACK[0xEEE8] | v10);
  v29 = *v28;
  *v28 = STACK[0xEEEF];
  LOBYTE(STACK[0xEEEF]) = v29;
  v30 = STACK[0xEEE8];
  v31 = (-289165025 * STACK[0xEEE8]) ^ v9;
  for (i = 1; i != 2; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_1012370F0;
  v38 = xmmword_101237100;
  v39 = xmmword_101237110;
  v40 = xmmword_101237120;
  v41 = vdupq_n_s32(v31);
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_high_u16(v46, v42));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)), v41), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_high_u16(v45, v42));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_101237130);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 16);
  *STACK[0x4420] = STACK[0xEEE8];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_10071D6E0()
{
  v2 = v0 - 1065379080 < v1;
  if (v1 < 0xEB77B198 != (v0 - 1065379080) < 0xEB77B198)
  {
    v2 = v1 < 0xEB77B198;
  }

  return (*(STACK[0x57D8] + 8 * ((54 * !v2) ^ LODWORD(STACK[0x5740]))))();
}

uint64_t sub_10071E228()
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 12936)))();
  v3 = (*(v2 + 8 * (v1 + 12936)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10071E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (STACK[0x51B8] - 22333) | 0x484;
  LODWORD(STACK[0xB6A8]) = -143113071;
  STACK[0x5F60] = 0;
  LODWORD(STACK[0x72D8]) = -769884012;
  LODWORD(STACK[0xA45C]) = -143113071;
  STACK[0x73C8] = STACK[0x6648] + 4;
  v5 = STACK[0x69FC];
  v6 = ((v5 + 291744356) ^ 0xEE9D455C) & (2 * ((v5 + 291744356) & 0xEE9C5598)) ^ (v5 + 291744356) & 0xEE9C5598;
  v7 = ((2 * ((v5 + 291744356) ^ (3 * (v4 ^ 0x18EF) - 426406122))) ^ 0x101365E8) & ((v5 + 291744356) ^ (3 * (v4 ^ 0x18EF) - 426406122)) ^ (2 * ((v5 + 291744356) ^ (3 * (v4 ^ 0x18EF) - 426406122))) & 0x809B2F4;
  v8 = v7 ^ 0x8089214;
  v9 = (v7 ^ 0x920F4) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x2026CBD0) & v8 ^ (4 * v8) & 0x809B2F4;
  v11 = (v10 ^ 0x82C0) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x8093024)) ^ 0x809B2F40) & (v10 ^ 0x8093024) ^ (16 * (v10 ^ 0x8093024)) & 0x809B2F0;
  v13 = v11 ^ 0x809B2F4 ^ (v12 ^ 0x922B4) & (v11 << 8);
  LODWORD(STACK[0x6A8C]) = (LODWORD(STACK[0x69FC]) + 291744356) ^ (2 * ((v13 << 16) & 0x8090000 ^ v13 ^ ((v13 << 16) ^ 0x32F40000) & (((v12 ^ 0x80090B4) << 8) & 0x8090000 ^ 0x90000 ^ (((v12 ^ 0x80090B4) << 8) ^ 0x9B20000) & (v12 ^ 0x80090B4)))) ^ 0x2C93B0E4;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x1448)))(a1, 22611, a3, a4, 19);
}

uint64_t sub_10071E478()
{
  v5 = LODWORD(STACK[0x4E60]) + 117 * (*(v4 + v0) ^ ((*(v4 + v0) ^ 0x15) + 73) ^ v2 ^ ((*(v4 + v0) ^ 0x21) + 3 * (v1 ^ 0xD8F2034E) - 120));
  v6 = v5 & 0x6D ^ 0x62;
  LODWORD(STACK[0x57C0]) = v5 ^ (2 * ((v5 ^ 0x28) & (2 * ((v5 ^ 0x28) & (2 * ((v5 ^ 0x28) & (2 * ((v5 ^ 0x28) & (2 * (((2 * (((2 * v5) & 0x52 | 0x29) & v5)) ^ 0x44) & v5 ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ 0x5B;
  v7 = *(STACK[0x57D8] + 8 * (v1 ^ 0xD8F247FB ^ (49958 * (v1 < 0x5070E1A5))));
  LODWORD(STACK[0x5250]) = 2;
  LODWORD(STACK[0x5348]) = v3;
  return v7();
}

uint64_t sub_10071E590(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = v10;
  v18 = v12 + v10;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = -2 - (((a8 - v19) | 0xAFDFE80EA55514A7) + ((v19 + v14) | (v11 + 10711) ^ 0x502017F15AAAB30ELL));
  v21 = v20 ^ 0x4067B69F8161A423;
  v20 ^= 0x303C9C90A5FB4F39uLL;
  v22 = (__ROR8__(v21, 8) + v20) ^ a6;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a5;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0xC36C8F74489C1B72) - (v26 + v25) + 0x1E49B845DBB1F247) ^ 0xB04A00C417904D8ALL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a7;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v15;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v16;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = v10 + 1;
  v37 = (((((2 * (v35 + v34)) & 0xA4920DEFCBBA27A0) - (v35 + v34) + 0x2DB6F9081A22EC2FLL) ^ 0x44E785A51D5AFDACLL) >> (8 * (v18 & 7u))) ^ *v18;
  v38 = v36 + v8 < v9;
  if (v9 < v8 != v36 > a4)
  {
    v38 = v9 < v8;
  }

  *(v13 + v17) = v37;
  return (*(STACK[0x57D8] + 8 * ((31295 * v38) ^ v11)))();
}

uint64_t sub_10071E754(uint64_t a1)
{
  *(a1 + 80) = 0;
  *a1 = 1459552792;
  *(a1 + 8) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 16) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 24) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 32) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 40) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 48) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 56) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 64) = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + 72) = 0;
  v3 = STACK[0xA468];
  *(v3 - 0x55A8D952E5D4684ALL) = 7;
  *(v3 - 0x55A8D952E5D46836) = 0;
  *(v3 - 0x55A8D952E5D46846) = 0xF0F0F0F0F0F0F0FLL;
  *(v3 - 0x55A8D952E5D4683ELL) = 0xF0F0F0F0F0F0F0FLL;
  *(v3 - 0x55A8D952E5D46832) = 0;
  *v2 = v3;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10071E82C@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 600) = (v2 - 1723131931) ^ (1917435887 * ((2 * (v1 & 0x5E5D3A78) - v1 + 564315523) ^ 0xC7199E85));
  *(v3 + 592) = a1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2D16)))(v4 - 240);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_10071E958@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v13 = STACK[0x3A08];
  STACK[0x5620] = v12;
  v14 = v13 + v12;
  STACK[0x56D0] = v10;
  if (v10)
  {
    v15 = ~a5;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(STACK[0x56C0]) = v11;
  LODWORD(STACK[0x4E44]) = v11 ^ v15 & v6;
  LODWORD(STACK[0x2E1C]) = v14;
  LODWORD(STACK[0x5770]) = a1 & STACK[0x5760];
  LODWORD(STACK[0x4D98]) = v14 | v7;
  LODWORD(STACK[0x5740]) = 16843009 * (a2 ^ (v14 | v7) ^ 7);
  LODWORD(STACK[0x5710]) = 16843009 * v8;
  LODWORD(STACK[0x5480]) = (16843009 * v8) ^ 0x23232323;
  STACK[0x5470] = v5;
  STACK[0x57B0] = a4 ^ (((a3 ^ (a3 << 23)) >> 17) + (a3 ^ (a3 << 23)) - 2 * (((a3 ^ (a3 << 23)) >> 17) & (a3 ^ (a3 << 23)))) ^ (v5 >> 26);
  return (*(STACK[0x57D8] + 8 * v9))(255);
}

uint64_t sub_10071EB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42)
{
  *(v43 - 200) = a2;
  v45 = *(v44 + 8 * v42);
  *(v43 - 212) = (v42 + 269817815) & 0xEFEAFFFD;
  return v45(a1, 204, 210, 78, v42 ^ 0x2015u, a13, vdupq_n_s32(a40 ^ a42 ^ a9), vdupq_n_s32(0xFDCE44E9), vdupq_n_s32(0xFC19C34B), vdupq_n_s32(0x3E63CB4u), vdupq_n_s32(0x3735D1AAu), vdupq_n_s32(0xC9CBE0D6), vdupq_n_s32(0x2D1E2898u), vdupq_n_s32(0xD3E019E8));
}

uint64_t sub_10071ED1C(uint64_t a1)
{
  v4 = v1 + v2 + 684;
  STACK[0x9D0] = *(v3 + 8 * v4);
  return (*(v3 + 8 * (v2 ^ 0xB7D096CE ^ v4)))(a1, 1211082140);
}

uint64_t sub_10071EE0C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 14065)))(v2);
}

uint64_t sub_10071EE40@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((~((v2 - 240) | 0x649BB7A8) + ((v2 - 240) & 0x649BB7A8)) ^ 0x6146A3D3));
  STACK[0x1D4C8] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 6269)))(v4);
}

uint64_t sub_10071EECC(uint64_t a1, uint64_t a2)
{
  v12 = a1 + v5 + (v2 ^ v7);
  v13.i64[0] = a1 + v5 + 15;
  v13.i64[1] = a1 + v5 + 14;
  v14.i64[0] = v12 + 8;
  v15.i64[0] = a1 + v5 + 13;
  v15.i64[1] = a1 + v5 + 12;
  v14.i64[1] = a1 + v5 + 16;
  *&STACK[0x5750] = v14;
  v16.i64[0] = a1 + v5 + 11;
  v16.i64[1] = a1 + v5 + 10;
  v17 = vandq_s8(v16, *&STACK[0x4D70]);
  v18 = vandq_s8(v15, *&STACK[0x4D70]);
  v19 = vandq_s8(v13, *&STACK[0x4D70]);
  v20 = vandq_s8(v14, *&STACK[0x4D70]);
  v21 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v23 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v24 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v25 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x56C0], v24), *&STACK[0x5700]), vorrq_s8(vaddq_s64(v24, *&STACK[0x4BD0]), *&STACK[0x5760]));
  v26 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x56C0], v22), *&STACK[0x5700]), vorrq_s8(vaddq_s64(v22, *&STACK[0x4BD0]), *&STACK[0x5760]));
  v27 = vdupq_n_s64(v6);
  v28 = vsubq_s64(v27, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x56C0], v21), *&STACK[0x5700]), vorrq_s8(vaddq_s64(v21, *&STACK[0x4BD0]), *&STACK[0x5760])));
  v29 = vsubq_s64(v27, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x56C0], v23), *&STACK[0x5700]), vorrq_s8(vaddq_s64(v23, *&STACK[0x4BD0]), *&STACK[0x5760])));
  v30 = vsubq_s64(v27, v25);
  v31 = vsubq_s64(v27, v26);
  v32 = veorq_s8(v30, *&STACK[0x56F0]);
  v33 = veorq_s8(v29, *&STACK[0x56F0]);
  v34 = veorq_s8(v29, *&STACK[0x56E0]);
  v35 = veorq_s8(v30, *&STACK[0x56E0]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v35);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v34);
  v38 = veorq_s8(v37, *&STACK[0x56D0]);
  v39 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v37, v11), *&STACK[0x5680]), v38), vandq_s8(v38, v11));
  v40 = veorq_s8(v36, *&STACK[0x56D0]);
  v41 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v36, v11), *&STACK[0x5680]), v40), vandq_s8(v40, v11)), *&STACK[0x5670]);
  v42 = veorq_s8(v39, *&STACK[0x5670]);
  v43 = vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL);
  v44 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v34, 3uLL), v34, 0x3DuLL));
  v45 = veorq_s8(v41, v43);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v44), *&STACK[0x4600]);
  v47 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v45), *&STACK[0x4600]);
  v49 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v50 = veorq_s8(v46, v47);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(v51, v49);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v53, v53), *&STACK[0x5660]), v53), *&STACK[0x5650]), *&STACK[0x57C0]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v52, v52), *&STACK[0x5660]), v52), *&STACK[0x5650]), *&STACK[0x57C0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = veorq_s8(vaddq_s64(v59, v57), *&STACK[0x57B0]);
  v62 = veorq_s8(v60, *&STACK[0x57B0]);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v62, v62), *&STACK[0x5630]), v62), *&STACK[0x57A0]), *&STACK[0x5780]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), *&STACK[0x5630]), v61), *&STACK[0x57A0]), *&STACK[0x5780]);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), *&STACK[0x5790])), *&STACK[0x5640]), *&STACK[0x5770]);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(v67, vandq_s8(vaddq_s64(v67, v67), *&STACK[0x5790])), *&STACK[0x5640]), *&STACK[0x5770]);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v70);
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), *&STACK[0x4490]);
  v77 = veorq_s8(v75, *&STACK[0x4490]);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vdupq_n_s64(v10);
  v120.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v81)));
  v120.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v79), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v81)));
  v82 = veorq_s8(v28, *&STACK[0x56F0]);
  v83 = veorq_s8(v28, *&STACK[0x56E0]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83);
  v85 = veorq_s8(v84, *&STACK[0x56D0]);
  v86 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v84, v11), *&STACK[0x5680]), v85), vandq_s8(v85, v11)), *&STACK[0x5670]);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), *&STACK[0x4600]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), *&STACK[0x5660]), v90), *&STACK[0x5650]), *&STACK[0x57C0]);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), *&STACK[0x57B0]);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v93, v93), *&STACK[0x5630]), v93), *&STACK[0x57A0]), *&STACK[0x5780]);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), *&STACK[0x5790])), *&STACK[0x5640]), *&STACK[0x5770]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), *&STACK[0x4490]);
  v120.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL))), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v81)));
  v100 = veorq_s8(v31, *&STACK[0x56F0]);
  v101 = veorq_s8(v31, *&STACK[0x56E0]);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = vandq_s8(v102, v11);
  v104 = veorq_s8(v102, *&STACK[0x56D0]);
  v105 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(v103, *&STACK[0x5680]), v104), vandq_s8(v104, v11)), *&STACK[0x5670]);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x4600]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), *&STACK[0x5660]), v109), *&STACK[0x5650]), *&STACK[0x57C0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), *&STACK[0x57B0]);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), *&STACK[0x5630]), v112), *&STACK[0x57A0]), *&STACK[0x5780]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), *&STACK[0x5790])), *&STACK[0x5640]), *&STACK[0x5770]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), *&STACK[0x4490]);
  v120.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5750], 3uLL), v81)));
  *(v12 + 1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v120, v9[26])), *(a2 + v5));
  return (*(STACK[0x57D8] + 8 * (((v4 == v5) * v8) ^ v3)))();
}

uint64_t sub_10071F518()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x290 ^ (v0 - 901875556) & 0x35C197CF)))();
}

uint64_t sub_10071F560@<X0>(int a1@<W5>, int a2@<W8>)
{
  v11 = *(v5 + 4008);
  v12 = *(v11 + v10 - 5896 * ((((v10 >> 3) * v4) >> 64) >> 4));
  v13 = *(v5 + 4000);
  v14 = *(v13 + 4 * (((v7 ^ 0x25F9BD10) + 2717 * (v12 | ((v12 < 0x1C) << 8)) - 628821947) % 0x2240));
  v15 = a2 + 3903 * (((v14 ^ 0xD157DA87) - 53703233) ^ ((v14 ^ 0xB160CF62) - 1661233060) ^ (v9 + (v14 ^ 0x60371514) + 599)) + 70;
  v16 = HIBYTE(v14);
  LOBYTE(v14) = *(v11 + v3 + 3903 * (BYTE1(v14) ^ 0x64) - 5896 * (((1456909 * (v3 + 3903 * (BYTE1(v14) ^ 0x64u))) >> 32) >> 1));
  v17 = *(v11 + v15 % 0x1708);
  v18 = v14 & 0xC6 | 0x31;
  LOBYTE(v12) = *(v11 + (3903 * (((v16 ^ 0x98F7CC7F) - 934468079) ^ ((v16 ^ 0x2A11B7C7) + 2058050985) ^ ((v16 ^ (a1 + 2861)) - 497249892)) + 780496609) % 0x1708);
  v19 = v12 & 0x58 ^ 0x7A;
  LOBYTE(v11) = *(v11 + v3 + 3903 * (BYTE2(v14) ^ 0xC5) - 5896 * (((1456909 * (v3 + 3903 * (BYTE2(v14) ^ 0xC5u))) >> 32) >> 1));
  v20 = v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & 0x22 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  LOBYTE(v14) = v11 & 0x98 ^ 0x5A;
  v21 = (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x58) << 16) | (((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0x98) << 8);
  LODWORD(v11) = v17 & 0xFFFFFFFE ^ 0xFFFFFF8D;
  v22 = (v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11;
  *(v13 + 4 * (v2 % 0x2240)) = (((((v20 ^ v8) & ~v21 | v21 & 0x178B00) << 8) ^ 0x64A1A528) & ((v17 ^ (2 * v22)) ^ 0xFFFFFFD1) | (v17 ^ (2 * v22)) & 0xD7) ^ 0xC010B80F;
  return (*(STACK[0x57D8] + 8 * ((24815 * (v6 == 0)) ^ v7)))();
}

uint64_t sub_10071F924@<X0>(int a1@<W8>)
{
  STACK[0x57C0] = STACK[0x58D8];
  v2 = STACK[0xBC10];
  STACK[0xC6B8] = STACK[0xBC10];
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x32676144483E81A6;
  v4 = *(v2 + 448) ^ 0x3F8637EF9040F3A9 ^ (v3 - 0x108D76B35876A488 - ((2 * v3) & 0xDEE512994F12B6F0));
  v5 = STACK[0x38D0];
  STACK[0x1D4D8] = STACK[0x38D0] + 0x3F8637EF9040F3A9;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4D4]) = v5 ^ (a1 - 22614) ^ 0xF234DB75;
  STACK[0x1D4C0] = v4 ^ v5;
  LODWORD(STACK[0x1D4E0]) = ((a1 - 22614) ^ 0xF234C4BF) + v5;
  LODWORD(STACK[0x1D4C8]) = ((a1 - 22614) ^ 0xF234CB79) - v5;
  LODWORD(STACK[0x1D4CC]) = v5 + a1 + 1451493860;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (a1 + 9182)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_10071FAC0@<X0>(int a1@<W8>)
{
  *(v4 + (a1 + 25)) = v3[27];
  *(v4 + (a1 + 24)) = v3[26];
  *(v4 + (a1 + 23)) = v3[25];
  *(v4 + (a1 + 22)) = v3[24];
  *(v4 + (a1 + 21)) = v3[23];
  *(v4 + (a1 + 20)) = v3[22];
  *(v4 + (a1 + 19)) = v3[21];
  *(v4 + ((41 * (v1 ^ 0x84300C20)) ^ 0x560) + a1) = v3[20];
  *(v4 + (a1 + 17)) = v3[19];
  *(v4 + (a1 + 16)) = v3[18];
  *(v4 + (a1 + 15)) = v3[17];
  *(v4 + (a1 + 14)) = v3[16];
  *(v4 + (a1 + 13)) = v3[15];
  *(v4 + (a1 + 12)) = v3[14];
  *(v4 + (a1 + 11)) = v3[13];
  *(v4 + (a1 + 10)) = v3[12];
  *(v4 + (a1 + 9)) = v3[11];
  *(v4 + (a1 + 8)) = v3[10];
  *(v4 + (a1 + 7)) = v3[9];
  *v2 = v3[8];
  return (*(STACK[0x57D8] + 8 * ((14387 * (v1 > 0xF4B44117)) ^ (v1 + 2077232059))))();
}

uint64_t sub_10071FC0C(int a1, int a2, unsigned int a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  HIDWORD(v21) = *(*(v8 + 8 * (a4 - 13961)) + 4 * (a5 ^ 0x1Du) - 12);
  LODWORD(v21) = HIDWORD(v21);
  v22 = (v21 >> 6) ^ (8 * (v21 >> 6)) ^ 0x84C22E3F;
  LODWORD(STACK[0x57C0]) = (a4 + 536855449) | v9;
  v23 = ((v22 & a6) << (((a4 - 103) | v9) + 2)) ^ v22;
  v24 = 563 * ((((v17 & (a5 ^ (2 * (a5 & a6)))) >> v14) + ((a5 ^ (2 * (a5 & a6))) << v16)) ^ v18);
  *(v10 + 4 * (v24 + v11 - 773 * ((5556232 * (v24 + v11)) >> 32))) = a2 ^ 0x41F113A3 ^ (((v23 & v19) >> v15) | ((v23 & v13) << v12));
  v25 = *(v20 + 2 * ((a5 ^ 0x92u) + 257)) ^ 0x7D66;
  *(v10 + 4 * (v24 - 773 * ((5556232 * v24) >> 32))) = ((((v25 ^ (2 * (v25 & a1))) & a3) >> v14) + (((v25 ^ (2 * (v25 & a1))) & a8) << v16)) ^ a7;
  return (*(STACK[0x57D8] + 8 * ((525 * (a5 == 255)) ^ a4)))();
}

uint64_t sub_10071FDB8()
{
  v3 = *(v1 + 295);
  v4 = *(v1 + 2120);
  v5 = v4 & 0xFFFFFFF8;
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((v4 & 0xFFFFFFF8 ^ 0xD73ECE29) + 1779372976 + ((2 * (v4 & 0xFFFFFFF8)) | 0x518263AD) - 3290)));
  *(v1 + 1857) = v3;
  v9 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (((2 * (v8 + v9)) & 0x8B2F00944BD14FC0) - (v8 + v9) - 0x4597804A25E8A7E1) ^ 0x78C7411FE5E6E0FBLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x65F254DD188DB4FCLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (0x7E7505105995611ELL - ((v13 + v14) | 0x7E7505105995611ELL) + ((v13 + v14) | 0x818AFAEFA66A9EE1)) ^ 0xEE7ABC79C7738C6CLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA1B29DC5D776132BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v2;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xD8C7B31FCA19D9DELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xC49F905E4EED84BELL) - (v23 + v22) - 0x624FC82F2776C260) ^ 0xC9E536FE5238FE2FLL;
  LOBYTE(v4) = 8 * (v4 & 7);
  *(v1 + 1858) = ((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v22, 61))) ^ 0x6F4F60BC0E025EE0) >> v4;
  v25 = *(v6 + (v7 & ((v5 | 0x3AB57E83) - 1831847764 + (v5 | 0xC54A817D))));
  v26 = (v25 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x65F254DD188DB4FCLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x6FF046966119128DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xA1B29DC5D776132BLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v2;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xD8C7B31FCA19D9DELL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (0xF60E9E097A86FDF8 - ((v38 + v37) | 0xF60E9E097A86FDF8) + ((v38 + v37) | 0x9F161F685790207)) ^ 0x5DA460D80FC8C188;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  **(v1 + 2104) = v3 ^ *(v1 + 2119) ^ (((((2 * (v41 + v40)) | 0x1DE0BF9BA6CB551ALL) - (v41 + v40) - 0xEF05FCDD365AA8DLL) ^ 0x61BF3F71DD67F46DLL) >> v4);
  v42 = *(v1 + 3920) + 14;
  *(v1 + 296) = v42;
  v43 = STACK[0x57D8];
  v44 = *(STACK[0x57D8] + 8 * (v0 ^ 0x2329));
  *(v1 + 2128) = v42;
  *(v1 + 280) = v44;
  return (*(v43 + 8 * (LODWORD(STACK[0x4D68]) + 29306)))();
}

uint64_t sub_100720130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = STACK[0x55A0];
  v9 = STACK[0xFE78];
  v10 = *(STACK[0xFE78] + a6 % (LODWORD(STACK[0x55A0]) ^ 0x7DF1u));
  v11 = STACK[0xFE70];
  v12 = *(STACK[0xFE70] + 4 * ((2717 * (v10 | ((v10 < 0x1C) << 8)) + 13166582) % 0x2240));
  LODWORD(STACK[0x4E28]) = *STACK[0x5600];
  LODWORD(STACK[0x4E38]) = *STACK[0x51C0];
  LODWORD(STACK[0x4E34]) = *STACK[0x57C0];
  LODWORD(STACK[0x4E50]) = *STACK[0x57B0];
  LODWORD(STACK[0x4E44]) = *STACK[0x53A0];
  LODWORD(STACK[0x4E78]) = *STACK[0x5440];
  LODWORD(STACK[0x4E70]) = *STACK[0x50E8];
  LODWORD(STACK[0x4E60]) = *STACK[0x5740];
  LODWORD(STACK[0x4E68]) = *STACK[0x4F60];
  LODWORD(STACK[0x4ED0]) = *STACK[0x54D0];
  v13 = *(v9 + (3903 * (((v12 ^ 0xBB1BA704) + 1934667432) ^ ((v12 ^ 0x9F387DC0) + 1467184228) ^ ((v12 ^ 0x2423DA35) - 328674409)) + 1345978704) % 0x1708);
  v14 = *(v9 + 3903 * (BYTE2(v12) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v12) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v15 = *(v9 + 3903 * (BYTE1(v12) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v12) ^ 0x64u) + 4008381)) >> 32) >> 1));
  LOBYTE(v9) = *(v9 + (3903 * (((HIBYTE(v12) ^ 0xA32D9049) + 1546745251) ^ ((HIBYTE(v12) ^ 0x2C8E92C7) - 745375955) ^ ((HIBYTE(v12) ^ 0x8FA302C2) + 1891624746)) - 2035561115) % 0x1708);
  v16 = v9 & 0x4C ^ 0x74;
  v17 = v14 & 0x98 ^ 0x5A;
  LOBYTE(v9) = v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  v18 = v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0x98;
  v19 = v15 & 0x2E ^ 0x25;
  v20 = (v18 << 8) | ((v9 ^ 0x4C) << 16);
  LODWORD(v9) = ((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x44) & (2 * (v19 ^ v15 & 0xA)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x6F75E5) & ~v20;
  v21 = v13 & 0xA2 ^ 0x67;
  v22 = v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x44) & (2 * ((v13 ^ 0x44) & 6 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  LODWORD(STACK[0x4E80]) = *STACK[0x5760];
  LODWORD(STACK[0x53B0]) = *STACK[0x5398];
  LODWORD(STACK[0x4EC8]) = *STACK[0x54A0];
  LODWORD(STACK[0x4EF8]) = *STACK[0x5160];
  *(v11 + 4 * (v7 % 0x2240)) = ((((v9 | v20 & 0x908A00) << 8) ^ 0x6AEAE18F) & (v22 ^ 0xFFFFFF7D) | v22 & 0x70) ^ 0x495A4E5E;
  return (*(STACK[0x57D8] + 8 * ((7244 * (v6 == 0)) ^ v8)))();
}

uint64_t sub_100720684@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x57D8];
  STACK[0x5A80] = *(STACK[0x57D8] + 8 * v3);
  STACK[0x5B48] = v1;
  STACK[0x8F30] = a1;
  LOBYTE(STACK[0x866F]) = v4;
  LODWORD(STACK[0xB44C]) = 0;
  return (*(v6 + 8 * ((153 * (v5 != ((v2 + 9642) | 0x2827u) - 0x2C73422C535075E5)) ^ v2)))();
}

uint64_t sub_100720700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xBD78];
  v9 = STACK[0x57D8];
  v10 = STACK[0x5E38];
  STACK[0x98C8] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x5490 ^ (231 * (v7 ^ 0x96E)))))(927787769, v8, a3, a4, a5, STACK[0x57C0], a7, v10);
}

uint64_t sub_100720890@<X0>(unint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x9E8] = *(v3 + 8 * a2);
  v6 = *(a1 + v5);
  STACK[0x6F0] = a1;
  v7 = *(a1 - 0x1883660EE814440ELL);
  v8 = 551690071 * ((~(v4 - 240) & 0x9DBBBFF04CF4C4D1 | (v4 - 240) & 0x6244400FB30B3B2ELL) ^ 0xEC26ED3E02199786);
  *(v4 - 216) = v7 - v8;
  *(v4 - 208) = v6 + v8;
  *(v4 - 240) = (v2 + 132004596) ^ v8;
  *(v4 - 236) = v8 ^ (v2 - 681663896) ^ 0xE8E;
  *(v4 - 228) = v2 - 681663896 - v8;
  *(v4 - 224) = v8;
  *(v4 - 232) = ((v2 - 681663896) ^ 0x14) - v8;
  (*(v3 + 8 * (v2 ^ 0xB7D0FFD6)))(v4 - 240);
  v9 = *(v3 + 8 * *(v4 - 220));
  STACK[0x6D0] = v6;
  STACK[0x6C0] = v7;
  return v9(1211071599);
}

uint64_t sub_1007209B8(uint64_t a1)
{
  if (v3)
  {
    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v2 + 8 * ((100 * (((v1 ^ v5) & 1) == 0)) ^ v1)))();
}

uint64_t sub_100720A28()
{
  STACK[0x1A28] = v2;
  v4 = STACK[0x8B8];
  STACK[0x1A30] = STACK[0x8B8];
  return (*(v3 + 8 * (((v2 - v4 > 9) * ((v0 + v1 - 3686 + 2516) ^ (v1 - 1573492178))) ^ v1)))();
}

uint64_t sub_100720A70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v11 = (((v8 ^ 0x8B) + 111) ^ 0x36) * a6 + 17937420;
  v12 = *(v10 + v11 - (((v11 * a8) >> 32) >> 1) * v9);
  LODWORD(STACK[0x36E0]) = v8 ^ 0xFFFFFFD0;
  LODWORD(STACK[0x3700]) = v8 ^ 0xFFFFFF8A;
  return (*(STACK[0x3AC0] + 8 * a4))(v8 ^ 0xFFFFFF9E, v8 ^ 0xFFFFFFCD, ((v12 ^ 0xE) >> 3) | (32 * (v12 ^ 0xEu)), 9544938, 97, v8 ^ 0xFFFFFF9C, 39, v8 ^ 0xFFFFFFA1);
}

uint64_t sub_100720BB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v11 = *(STACK[0xFE70] + a7 - 35072 * (a8 / 0x2240));
  v12 = v11;
  LOBYTE(v11) = *(STACK[0xFE78] + (3903 * ((((v11 >> (((a1 - 5) | 0x20) - 13)) ^ 0xCFCC0D3) - 707705794) ^ (((v11 >> (((a1 - 5) | 0x20) - 13)) ^ 0xDB836116) + 45016569) ^ (((v11 >> (((a1 - 5) | 0x20) - 13)) ^ 0xD77FA189) + 240264552)) - 482084704) % 0x1708);
  v13 = v11 & 0x5A ^ 0xFB;
  v14 = *(STACK[0xFE78] + 3903 * (BYTE2(v11) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v11) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v15 = *(STACK[0xFE78] + 3903 * (BYTE1(v11) ^ v8) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v11) ^ v8) + 4008381)) >> 32) >> 1));
  v16 = *(STACK[0xFE78] + (3903 * (((v12 ^ 0xF8D8DB99) - 275216440) ^ ((v12 ^ 0xABD6FBBE) - 1130977311) ^ ((v12 ^ 0x530E20D6) + 1145994377)) - 2114450835) % 0x1708);
  LOBYTE(v12) = v14 & 0xD4 ^ 0xB8;
  v17 = ((v14 ^ (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xD4) << 8;
  LOBYTE(v12) = v15 & 0xE4 | 3;
  v18 = v12 ^ v15 & 0xE;
  v19 = v17 & 0xFF00FFFF | (((v11 ^ (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & 0x3E ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x5A) << 16);
  v20 = (v15 ^ (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * (v15 & (2 * v12) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xCAE7B3;
  v21 = v16 & 0x62 ^ 0xC7;
  v22 = (v20 & (v19 ^ 0xFBFFFF)) + (v19 & 0x351800);
  LOBYTE(v19) = v16 ^ (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ 0x44) & (2 * ((v16 ^ 0x44) & 6 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  *(STACK[0xFE70] + v10 - 35072 * (v9 / 0x2240)) = (((v22 << 8) ^ 0xD800835E) & (v19 ^ 0xFFFFFFBC) | v19 & 0xA1) ^ 0x5E22BE8F;
  return (*(STACK[0x57D8] + 8 * ((27256 * (a6 == 0)) ^ a1)))();
}

uint64_t sub_100720F4C()
{
  v1 = STACK[0x57D8];
  STACK[0xA830] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1112 ^ (v0 + 10423))))();
}

uint64_t sub_100720FA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = a4 & (a3 + 8);
  v59 = v58 << (a5 ^ 0xCA);
  v60 = ((2 * (a4 ^ 0x5A94BE42)) ^ 0xF9D4758) & (a4 ^ 0x5A94BE42) ^ (2 * (a4 ^ 0x5A94BE42)) & 0x87CEA3AC;
  v61 = v60 ^ 0x8042A0A4;
  v62 = (v60 ^ 0x78A030C) & (4 * (v59 & (a4 ^ 0xD8109DCE) ^ v58)) ^ v59 & (a4 ^ 0xD8109DCE) ^ v58;
  v63 = ((4 * v61) ^ 0x1F3A8EB0) & v61 ^ (4 * v61) & 0x87CEA3AC;
  v64 = (v63 ^ 0x70A82AC) & (16 * v62) ^ v62;
  v65 = ((16 * (v63 ^ 0x80C4210C)) ^ 0x7CEA3AC0) & (v63 ^ 0x80C4210C) ^ (16 * (v63 ^ 0x80C4210C)) & 0x87CEA3A0;
  v66 = v64 ^ 0x87CEA3AC ^ (v65 ^ 0x4CA222C) & (v64 << 8);
  v67 = v59 & (a4 ^ 0x9D5BDDED) ^ v58;
  v68 = ((2 * (a4 ^ 0xAFEFD6A9)) ^ 0xE56B968E) & (a4 ^ 0xAFEFD6A9) ^ (2 * (a4 ^ 0xAFEFD6A9)) & 0x72B5CB46;
  v69 = (v68 ^ 0x60248201) & (4 * v67) ^ v67;
  v70 = ((4 * (v68 ^ 0x12944941)) ^ 0xCAD72D1C) & (v68 ^ 0x12944941) ^ (4 * (v68 ^ 0x12944941)) & 0x72B5CB44;
  v71 = (v70 ^ 0x42950903) & (16 * v69) ^ v69;
  v72 = ((16 * (v70 ^ 0x3020C243)) ^ 0x2B5CB470) & (v70 ^ 0x3020C243) ^ (16 * (v70 ^ 0x3020C243)) & 0x72B5CB40;
  v73 = v71 ^ 0x72B5CB47 ^ (v72 ^ 0x22148007) & (v71 << 8);
  v74 = (a4 ^ (2 * ((v73 << 16) & 0x72B50000 ^ v73 ^ ((v73 << 16) ^ 0x4B470000) & (((v72 ^ 0x50A14B07) << 8) & 0x72B50000 ^ 0x42340000 ^ (((v72 ^ 0x50A14B07) << 8) ^ 0x35CB0000) & (v72 ^ 0x50A14B07)))) ^ 0x43C4749E) + ((2 * a4) & 0xFFFFFFFC ^ (4 * ((v66 << 16) & 0x7CE0000 ^ v66 ^ ((v66 << 16) ^ 0x23AC0000) & (((v65 ^ 0x8304812C) << 8) & 0x7CE0000 ^ 0x14C0000 ^ (((v65 ^ 0x8304812C) << 8) ^ 0xEA30000) & (v65 ^ 0x8304812C)))) ^ 0xABBEB56C);
  v75 = (*(v57 + (a3 + a4 + 4)) ^ 0xFFFFFFFC) + 8 * (*(v57 + (a3 + a4 + 4)) >> 2);
  return (*(a57 + 8 * a5))(v75, a1, a2, (*(v57 + (a3 + a4 + 1)) ^ 0xFFFFFFEF) + ((2 * *(v57 + (a3 + a4 + 1))) & 0xFFDF) + 27, (*(v57 + (a3 + a4 + 7)) ^ 0x4D) + ((2 * *(v57 + (a3 + a4 + 7))) & 0xFF9Au) - 8, (*(v57 + v74) ^ 0xFFFFFFEF) + ((2 * *(v57 + v74)) & 0xFFDF) + 93, v75 ^ 0xFFFFFF80, (a4 - 8));
}

uint64_t sub_1007213F4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W8>)
{
  v7 = *(*(a1 + 4000) + v4 - 35072 * ((((v3 >> 6) * a2) >> 64) >> 1));
  *(*(a1 + 4008) + v5 % (1334 * (v6 ^ 0x4124) - 2108)) = (((v7 ^ 0x66) - 110) ^ ((v7 ^ 0xA1) + 87) ^ ((v7 ^ 0x36) - 62)) + 21;
  return (*(STACK[0x57D8] + 8 * ((73 * (a3 == 0)) | v6)))();
}

uint64_t sub_100721498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  STACK[0x3AD0] = v9;
  STACK[0x3AE8] = v7;
  STACK[0x3AF0] = STACK[0x3A70];
  v10 = *(v8 + 8 * (a7 - 5699));
  LODWORD(STACK[0x37D8]) = 1;
  return v10(a1, a2, a3, a4, a5, a6, STACK[0x37B8]);
}

uint64_t sub_1007217A8@<X0>(int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v9 = v6 - v8 + a4;
  v10 = v5 + v6 - v8;
  v11 = *(v10 - 15);
  *(v9 - 32) = *(v10 - 31);
  *(v9 - 16) = v11;
  return (*(v4 + 8 * (((a2 + v8 == v7) * a3) ^ a1)))();
}

uint64_t sub_100721840@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  STACK[0xF68] = *(v5 + 8 * v2);
  STACK[0xA88] = v4;
  STACK[0x1330] = v4 + v3;
  v11 = *(v4 + 68) & 0x3F;
  v12 = *(*STACK[0x768] + ((((v4 + (*(v4 + 68) & 0x3F)) & 0xFFFFFFF8) - 103642729) & *v6 & 0xFFFFFFFFFFFFFFF8));
  v13 = (v10 + a2 - 2598) ^ 0xF41651499F5E6952 ^ (__ROR8__((v4 + v11) & 0xFFFFFFFFFFFFFFF8, 8) + v12);
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x153242EE3CF06A49;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v9;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE5AF1AB32EBD3CDDLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a1;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xA82620A559D2DA78;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  *(v4 + v11) = (((__ROR8__((v24 + v25) ^ 0x5F8DEC3EA3980A1BLL, 8) + ((v24 + v25) ^ 0x5F8DEC3EA3980A1BLL ^ __ROR8__(v25, 61))) ^ v7) >> (8 * ((v4 + v11) & 7))) ^ 0x80;
  return (*(v5 + 8 * ((29950 * (v11 > 0x37)) ^ (v8 + a2 + 820))))();
}

uint64_t sub_100721A20()
{
  v3 = *(v0 + 2056);
  v4 = v3 & 0xFFFFFFF8;
  v5 = 2 * (v3 & 0xFFFFFFF8);
  v6 = *STACK[0x51E8];
  v7 = *STACK[0x51F0];
  v8 = *(v7 + (((((v5 | 0x34BB4389) + (v3 & 0xFFFFFFF8 ^ 0x65A25E3B)) & 0xFFFFFFF8) - 126707992) & v6));
  v9 = *(v0 + 295);
  v10 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (((v8 + v10) & 0x62520E9C357875DFLL ^ 0x400A8011384104) + ((v8 + v10) ^ 0x6736441E244036FBLL) - (((v8 + v10) ^ 0x6736441E244036FBLL) & 0x62520E9C357875DFLL)) ^ 0xC7CB74282EC9FBC0;
  v12 = v11 ^ __ROR8__(v8, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x65F254DD188DB4FCLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x6FF046966119128DLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0x2258F2FC896F0C5ALL) + 0x112C797E44B7862DLL) ^ 0xB09EE4BB93C19506;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v2;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = (((2 * (v21 + v22)) | 0xFD1C435A079C6CBELL) - (v21 + v22) + 0x171DE52FC31C9A1) ^ 0x264992B2C9D7EF81;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1790) = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3) ^ v9;
  v26 = *(v7 + (v6 & (((v4 + 339342020) ^ 0xB21301E6) + ((v5 + 678684040) & 0x642603C8) - 863812606) & 0xFFFFFFF8));
  v27 = (((2 * ((v26 + v10) ^ 0x5D0044E803CF0E1CLL)) | 0x1A9C522777C4A9EELL) - ((v26 + v10) ^ 0x5D0044E803CF0E1CLL) - 0xD4E2913BBE254F7) ^ 0x92E1535187DCE20FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x65F254DD188DB4FCLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((0xB350AE215D259D8BLL - ((v31 + v30) | 0xB350AE215D259D8BLL) + ((v31 + v30) | 0x4CAF51DEA2DA6274)) ^ 0x235F1748C3C370F9, 8);
  v33 = (0xB350AE215D259D8BLL - ((v31 + v30) | 0xB350AE215D259D8BLL) + ((v31 + v30) | 0x4CAF51DEA2DA6274)) ^ 0x235F1748C3C370F9 ^ __ROR8__(v30, 61);
  v34 = (((2 * (v32 + v33)) | 0x14AEF59DD64A4D8ELL) - (v32 + v33) + 0x75A8853114DAD939) ^ 0x2BE5E70B3C5335ECLL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0x9B458782D47CE4F8) - (v36 + v35) - 0x4DA2C3C16A3E727CLL) ^ 0xA2A6E3809FDB3A90;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0xA9A371AA10574E04) - 0x2B2E472AF7D458FELL) ^ 0x8084B9FB829A648DLL;
  **(v0 + 2040) = *(v0 + 2055) ^ v9 ^ (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61))) ^ 0x6F4F60BC0E025EE0) >> v3);
  v43 = (STACK[0x8070] + 6769);
  *(v0 + 2064) = v43;
  *(v0 + 2079) = *v43;
  v44 = *(v0 + 3920) + 10;
  *(v0 + 296) = v44;
  v45 = STACK[0x57D8];
  v46 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23C3));
  *(v0 + 2080) = v44;
  *(v0 + 280) = v46;
  return (*(v45 + 8 * (v1 + 20570)))();
}

uint64_t sub_100722024()
{
  v1 = LODWORD(STACK[0x423C]) | 0x6091;
  v2 = STACK[0x57D8];
  v3 = STACK[0x4238];
  STACK[0xCFD0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x4238]));
  return (*(v2 + 8 * ((v1 - 7766) ^ v3)))(v0);
}

uint64_t sub_100722228(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v12 = LODWORD(STACK[0x54E0]) | (LODWORD(STACK[0x5520]) << 16);
  LODWORD(STACK[0x5000]) = LODWORD(STACK[0x5600]) + LODWORD(STACK[0x55F0]);
  v13 = LODWORD(STACK[0x5530]) + LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x5238]) = LODWORD(STACK[0x5238]) | ((v12 + LODWORD(STACK[0x54F0])) << 8);
  LODWORD(STACK[0x4F50]) = LODWORD(STACK[0x54C0]) | (v13 << 8);
  LODWORD(STACK[0x4E20]) = LODWORD(STACK[0x5550]) | (LODWORD(STACK[0x5470]) << 8);
  LODWORD(STACK[0x5670]) = LODWORD(STACK[0x5450]);
  LODWORD(STACK[0x5600]) = v6 - 76;
  v14 = (LODWORD(STACK[0x5490]) << 8);
  LODWORD(STACK[0x5550]) = (v9 - 76);
  v15 = *(STACK[0x57D8] + 8 * (v5 ^ 0x59F5));
  LODWORD(STACK[0x5780]) = (a4 - 76);
  LODWORD(STACK[0x4FF8]) = LODWORD(STACK[0x5480]) | (LODWORD(STACK[0x54A0]) << 8);
  LODWORD(STACK[0x5540]) = ((((v4 - 76) << 8) | (v7 << 16) | (v8 - 76)) << 8) - 1275068416;
  return v15(255, ((v10 - 76) << 16) | ((v11 - 76) << 8) | (v10 - 76), (a3 - 76), 5789630, v14, 36215998, 144863992);
}

uint64_t sub_1007224C4(uint64_t a1)
{
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 5583 + ((v1 + 1836086619) & 0x928F9DDB))))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_100722608(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0x628];
  v6 = STACK[0x628] ^ 0x618E;
  STACK[0x630] = v6;
  v7 = (((1645 * a4 + 2113825) % 0xA88u) ^ 0x7ED5EFAFDE4D69BFLL) + STACK[0x638] + ((v6 - 4807) & (2 * ((1645 * a4 + 2113825) % 0xA88u)));
  v8 = *STACK[0x650];
  v9 = *STACK[0x660];
  LODWORD(v6) = *(v9 + (v8 & STACK[0x648]));
  v10 = *v4 ^ 0x21E69720;
  LODWORD(v7) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v7 + 565352001 + v6 - 963544004) & v10)) ^ *(v7 + 0x3B86C6F3E8957C2CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v7 + 565352001 + v6 - 963544002) & v10)) ^ (76 * (v7 + 65));
  v11 = STACK[0x640] + 4 * ((551 * (((v7 ^ 0xB5AEAFA9) + 840778854) ^ ((v7 ^ 0xFFC9C9CA) + 2021270023) ^ ((v7 ^ 0x4A676613) - 841708064)) - 337494051) % 0x1D48);
  v12 = *(v9 + (v8 & STACK[0x658]));
  v13 = (v11 + v12 + 673210728);
  v14 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + v12 + 673210726) & v10)) ^ *(v11 - 0x34EE34220E8AC3B8);
  v15 = v14 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v13 & v10)) ^ (333999 * v11);
  LODWORD(v11) = (v14 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((0x2A20C459044F03F8 * (*v4 ^ 0xDB653AB621E69720) + 0x2A20C459044F03F8 + v13) & (*v4 ^ 0xDB653AB621E69720))) ^ (-1962600273 * v11)) >> 24;
  LODWORD(v11) = 1645 * (((v11 ^ 0xE44D03BF) + 1172912509) ^ ((v11 ^ 0xA160EB77) + 12898741) ^ ((v11 ^ 0x452DE86B) - 460729687)) + 1407754409;
  v16 = 1645 * (BYTE1(v15) ^ 0x79) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE1(v15) ^ 0x79u) + 3391990)) >> 32) >> 3);
  v17 = *(v9 + (v8 & 0xC6917C3C));
  v18 = ((v11 % 0xA88) ^ 0xDFAFBDDEFBEEDFBFLL) + STACK[0x638] + ((2 * (v11 % 0xA88)) & 0x1F7E);
  v19 = 1645 * (BYTE2(v15) ^ 0x25) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE2(v15) ^ 0x25u) + 3391990)) >> 32) >> 3);
  v20 = (v19 ^ 0x39D7FCEFF7F79929) + STACK[0x638] + ((2 * v19) & 0x1252);
  v21 = (v16 ^ 0x6BFFEDF33EDFF7E3) + STACK[0x638] + ((2 * v16) & 0xFC6);
  v22 = (1645 * (((v15 ^ 0xAB66F229) + 1657985919) ^ ((v15 ^ 0xCAC1F509) + 58055775) ^ ((v15 ^ 0x61A707E9) - 1475137857)) - 444313789) % 0xA88;
  LODWORD(v20) = (*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + 134768343 + v17 - 963544004) & v10)) ^ *(v20 - 0x7F7B464C3114B33ELL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + 134768343 + v17 - 963544002) & v10)) ^ (76 * (v20 - 41))) << 8;
  v23 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 - 1054865379 + v17 - 963544004) & v10)) ^ *(v21 + 0x4E5CC8B08802EE08) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 - 1054865379 + v17 - 963544002) & v10)) ^ (76 * (v21 + 29));
  LODWORD(v18) = (((v20 & 0x900) + 2838746) ^ (v20 ^ 0xFF86D1) & (((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + 68231233 + v17 - 963544004) & v10)) ^ *(v18 - 0x2553073B350BF9D4) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + 68231233 + v17 - 963544002) & v10)) ^ (76 * (v18 + 65))) << 16) ^ 0x92F6D1)) & ~v23 | v23 & 0xF4;
  v24 = (v22 ^ 0x3F6FA7FDF7FFDDADLL) + STACK[0x638] + ((2 * v22) & 0x1B5A);
  LODWORD(v24) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v24 + 134226515 + v6 - 963544004) & v10)) ^ *(v24 + 0x7AED0EA5CEE3083ELL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v24 + 134226515 + v6 - 963544002) & v10)) ^ (76 * (v24 + 83));
  v25 = STACK[0x640] + 4 * ((551 * a4 + 710790) % 0x1D48u);
  *(v25 - 0x34EE34220E8AC3B8) = (-1962600273 * v25) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v25 + 673210726) & v10)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v25 + 673210728) & v10)) ^ 0xA2403B3E ^ (((v18 << 8) ^ 0xC8C339A7) & (v24 ^ 0xFFFFFF87) | v24 & 0x58);
  return (*(STACK[0x668] + 8 * ((11697 * (a4 == 255)) ^ v5)))();
}

uint64_t sub_100722C78@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8 * (a1 + 1211093098));
  LODWORD(STACK[0x8A0]) = -134613103;
  STACK[0x880] = v2;
  return v3();
}

uint64_t sub_100722DD4()
{
  v3 = *(v1 + 488);
  v2 = *(v1 + 496);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0x8623D90D) + 212623263 + ((2 * (v2 & 0xFFFFFFF8)) & 0xC47B210))) & 0xFFFFFFFFFFFFFFF8));
  v5 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v4) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x65F254DD188DB4FCLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0xBB1E31C0E007659CLL) - (v11 + v10) - 0x5D8F18E07003B2CELL) ^ 0xFC3D8525A775A1E5;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0xE22090269D631A40) - (v14 + v13) - 0x711048134EB18D20) ^ 0x9E146852BB54C5CCLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ 0x5455012E8AB1C38FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  LODWORD(v2) = 5621 * ((((((2 * ((v22 + v21) ^ 0xF3DD3AF7E5A4C87BLL)) | 0x2B60E4AB8A3EDAAALL) - ((v22 + v21) ^ 0xF3DD3AF7E5A4C87BLL) - 0x15B07255C51F6D55) ^ 0x8922281E2EB9FBCELL) >> (8 * (v2 & 7u))) ^ *(v1 + 295)) + 32028458;
  *(STACK[0xDCB8] + 3042) = *(STACK[0xDCB8] + v2 - 6152 * (((89362129 * v2) >> 32) >> 7));
  v23 = v3 + 19;
  *(v1 + 296) = v3 + 19;
  v24 = STACK[0x57D8];
  v25 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3185));
  *(v1 + 504) = v23;
  *(v1 + 280) = v25;
  return (*(v24 + 8 * (v0 + 8890)))();
}

uint64_t sub_100723150()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x452B)))(1032);
  STACK[0xD328] = v2 + 0x5BD893C955F67311;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 6534) ^ 0x61EB1F9B ^ ((v0 + 1089127360) | 0x21004400))) ^ v0)))();
}

uint64_t sub_100723280(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x5480] = v10;
  LODWORD(STACK[0x4738]) = LODWORD(STACK[0x54E0]) | LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x4860]) = LODWORD(STACK[0x5520]) | LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x47E8]) = LODWORD(STACK[0x5500]) | LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x4838]) = LODWORD(STACK[0x5398]) | LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x4720]) = LODWORD(STACK[0x5390]) | LODWORD(STACK[0x5388]);
  LODWORD(STACK[0x4830]) = LODWORD(STACK[0x5380]) | LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x4858]) = LODWORD(STACK[0x5378]) | LODWORD(STACK[0x5350]);
  LODWORD(STACK[0x46F0]) = LODWORD(STACK[0x5370]) | LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x4810]) = LODWORD(STACK[0x5368]) | LODWORD(STACK[0x5338]);
  v16 = v7 & 0x94 ^ 0xB0;
  v17 = v14 & 0xDA ^ 0x93;
  v18 = (((v7 ^ (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x94) << 16) | (((v14 ^ (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * (v17 ^ v14 & 0x2E)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xDA) << 8);
  v19 = a4 & 0x98 ^ 0x32;
  LODWORD(STACK[0x54E0]) = ((((a4 ^ (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x8797A0) & ~v18 | v18 & 0x786800) << 8) & 0xE89B2A00;
  v20 = v9 & 0xDA ^ 0x93;
  LOBYTE(v18) = v12 & 0x60 ^ 0x7E;
  v21 = (((v12 ^ (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x60) << 8) | (((v9 ^ (2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & (2 * (v20 ^ v9 & 0x2E)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xDA) << 16);
  v22 = a3 & 0x86 | 0x29;
  LODWORD(STACK[0x53B8]) = ((((a3 ^ (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & 0x32 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x2271E8) & (v21 ^ 0xBAF7FF) | v21 & 0xDD8E00) << 8) & 0x38667200;
  v23 = *(STACK[0x55E0] + 1965);
  v24 = v23 & 0x94 ^ 0xB0;
  v25 = *(STACK[0x53F8] + 3247);
  v26 = STACK[0x5730];
  LOBYTE(v21) = *(STACK[0x5730] + 547);
  v27 = v21 & 0x12 ^ 0xF7;
  v28 = (((v23 ^ (2 * ((v23 ^ v8) & (2 * ((v23 ^ v8) & (2 * ((v23 ^ v8) & (2 * ((v23 ^ v8) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0x94) << 8) | (((v21 ^ (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * (v27 ^ v21 & v15)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x12) << 16);
  v29 = v25 & 0xA4 ^ 0x98;
  LODWORD(STACK[0x54F0]) = ((((v25 ^ (2 * ((v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x428A2E) & ~v28 | v28 & 0xBD7500) << 8) & 0x2A43FA00;
  LOBYTE(v28) = *(a7 + 911);
  v30 = v28 & 0xDE ^ 0x15;
  v31 = (v28 ^ (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * (v30 ^ v28 & 0xAA)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)));
  LOBYTE(v28) = v13[2936];
  v32 = v13[2261];
  v33 = v32 & 0xD0 ^ 0x16;
  v34 = (v31 << 8) & 0xFF00FFFF | (((v32 ^ (2 * ((v32 ^ v8) & (2 * ((v32 ^ v8) & (2 * ((v32 ^ v8) & (2 * ((v32 ^ v8) & (2 * ((v32 ^ v8) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0xD0) << 16);
  v35 = v28 & 0xEC ^ 0x3C;
  v36 = (v34 ^ 0x1400FF) & ((v28 ^ (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0x1456A2) | v34 & 0xEBA900;
  v37 = STACK[0x5770];
  v38 = *(STACK[0x5770] + 1290);
  LOBYTE(v34) = *(v26 + 1609);
  v39 = v34 & 0xBC ^ 4;
  LOBYTE(v21) = v38 & 0x2E ^ 0xDD;
  LOBYTE(v26) = *STACK[0x5660];
  v40 = *(STACK[0x57B0] + 2701);
  v41 = (((v38 ^ (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * (v21 ^ v38 & 0x1A)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x2E) << 8) | (((v34 ^ (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0xBC) << 16);
  LOBYTE(v34) = (v40 & 0xB4 | 8) ^ v40 & 0x70;
  v42 = (((v40 ^ (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x3F9E4C) & (v41 ^ 0x3FFFFF) | v41 & 0xC06100) << 8;
  LOBYTE(v41) = v26 & 0xAA ^ 0x9B;
  v43 = (v26 ^ (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & 0x1E ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)));
  LODWORD(STACK[0x5520]) = (v42 ^ 0x804063FF) & (v43 ^ 0x8156E3BF) | v42 & 0x7EA91C00;
  LOBYTE(v34) = *(STACK[0x5720] + 2481);
  v44 = v34 & 0xA0 | 0x1E;
  LOBYTE(v21) = *(STACK[0x53E8] + 1950);
  v45 = v21 & 0x40 ^ 0x4E;
  LOBYTE(v34) = v34 ^ (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0xA0;
  v46 = v21 ^ (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & 0x1C ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  v47 = STACK[0x5300];
  LOBYTE(v21) = *(STACK[0x5300] + 3065);
  v48 = ((v46 ^ 0x40) << 8) | (v34 << 16);
  v49 = (v21 ^ (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * (v21 & v8)) ^ v21 & v8)) ^ v21 & v8)) ^ v21 & v8)) ^ (v21 & v8 | 0x40))));
  LODWORD(STACK[0x53A8]) = (((v49 ^ 0x9C3C55) & ~v48 | v48 & 0x63C300) << 8) & 0xF99A3100;
  v50 = *(STACK[0x55D0] + 4089);
  LOBYTE(v34) = v50 & 0x20 | 0xDE;
  v51 = v50 ^ (2 * ((v50 ^ v8) & (2 * ((v50 ^ v8) & (2 * ((v50 ^ v8) & (2 * ((v50 ^ v8) & (2 * ((v50 ^ v8) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  LOBYTE(v34) = v13[2974];
  LOBYTE(v48) = v34 & 0x2E ^ 0x5D;
  LOBYTE(v26) = *(v47 + 2898);
  LOBYTE(v47) = v26 & 0x5C ^ 0x54;
  v52 = (((v26 ^ (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0x5C) << 8) | (((v34 ^ (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * ((v34 ^ v8) & (2 * (v48 ^ v34 & 0x1A)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x2E) << 16);
  v53 = (v51 ^ 0x9B8214) & ~v52 | v52 & 0x647D00;
  v54 = *(v37 + 2572);
  LOBYTE(v52) = v54 & 0x60 ^ 0x7E;
  v55 = (v43 << 16) | (((v54 ^ (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0x60) << 8);
  LODWORD(STACK[0x53A0]) = (((v55 ^ 0xFFC1FFFF) & (v49 ^ 0x6ADCD2) | v55 & 0x952300) << 8) & 0xD88C3600;
  LOBYTE(v52) = *(STACK[0x5740] + 3232);
  LOBYTE(v26) = v52 & 0xA8 ^ 0x1A;
  v56 = *(STACK[0x5740] + 3634);
  LOBYTE(v37) = v56 & 0xB4 | 0xB;
  LOBYTE(v47) = v37 ^ v56 & 0x7E;
  v57 = (((v52 ^ (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xA8) << 16) | (((v56 ^ (2 * ((v56 ^ v8) & (2 * ((v56 ^ v8) & (2 * ((v56 ^ v8) & (2 * ((v56 ^ v8) & (2 * ((v56 ^ v8) & (2 * ((v56 ^ v8) & (2 * v37) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0xCA) << 8);
  LOBYTE(v26) = *(STACK[0x56C0] + 1457);
  v58 = v26 & 0x68 ^ 0x7A;
  LODWORD(STACK[0x5500]) = ((((v26 ^ (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0xDF2B76) & ~v57 | v57 & 0x20D400) << 8) & 0x42839600;
  LODWORD(STACK[0x4730]) = LODWORD(STACK[0x52A8]) ^ 0xC5FFDA00;
  LODWORD(STACK[0x5398]) = (v36 << 8) & 0xB2E0A300;
  LODWORD(STACK[0x5420]) = (v53 << 8) & 0x6DE60F00;
  return (*(STACK[0x57D8] + 8 * v11))();
}

uint64_t sub_1007240B0@<X0>(int a1@<W7>, unsigned __int8 *a2@<X8>)
{
  v6 = *a2;
  v7 = ((v6 ^ 0xFFFFFFA3) + 93) ^ -v6 ^ ((v6 ^ 0xFFFFFF8B) + 117);
  v8 = ((v6 >> (31 * (v2 ^ 0x8A) - 51)) + 5) ^ ((v6 >> (31 * (v2 ^ 0x8A) - 51)) - 67) ^ (((v6 >> (31 * (v2 ^ 0x8A) - 51)) ^ 0xFFFFFFA2) + 47);
  v9 = a1 + 5621 * ((((2 * v7 + 2) ^ 4) + (v7 ^ 4)) & 7);
  v10 = a1 + 5621 * ((((59 - v8) ^ 4) + 4 * v8 + 25) & 7);
  v11 = v9 - 6152 * (((44681065 * v9) >> 32) >> 6);
  v12 = *(v5 + 1368);
  v13 = *(v12 + v11);
  LOBYTE(v10) = *(v12 + v10 - 6152 * (((44681065 * v10) >> 32) >> 6));
  v14 = v13 & 0x64 ^ 0xF8;
  v15 = v10 & 0xA2 ^ 0x1F;
  v16 = v15 ^ v14 ^ (v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ (v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & 0x16 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(v12 + v11) = (((v10 ^ v13 ^ (2 * v16) ^ 0x65) + 90) ^ ((v10 ^ v13 ^ (2 * v16) ^ 0xAD) - 110) ^ ((v10 ^ v13 ^ (2 * v16) ^ 0xE) + 51)) + 81;
  return (*(STACK[0x57D8] + 8 * ((25139 * ((v4 | v3) >= 0)) ^ (v2 + 15981))))();
}

uint64_t sub_100724378()
{
  STACK[0xE68] = v2;
  v4 = (*(v3 + 8 * (v1 ^ 0x5F80)))((233 * (v1 ^ 0x23C7)) ^ (6 * (v1 ^ 0x2FB0) - 769874335) ^ v0);
  STACK[0xC08] = v4;
  return (*(v3 + 8 * ((101 * (v2 > v4)) ^ v1)))();
}

uint64_t sub_100724844@<X0>(uint64_t a1@<X8>)
{
  v8 = *v5;
  v9 = STACK[0x57D8];
  STACK[0xA5D0] = *(STACK[0x57D8] + 8 * v3);
  v10 = v4 + ((v2 - 8474) ^ 0x1F0E1C45);
  STACK[0xCF30] += 16;
  STACK[0xD730] = a1 + 0x48C82E84382AB3CDLL;
  STACK[0xD710] = v1;
  STACK[0xD718] = v8;
  STACK[0xD728] = a1 + 0x5C04FCCB0A717436;
  STACK[0xD700] = v1;
  LODWORD(STACK[0x5750]) = (((v10 ^ 0x9E98DC3D) + 1146828462) ^ v10 ^ ((v10 ^ 0xD4A64F5E) + 241542607) ^ ((v10 ^ 0x10FD7971) - 901868574) ^ ((v10 ^ (v6 - 120)) - 1522788882)) >> 3;
  return (*(v9 + 8 * ((16485 * (v7 == v1)) ^ v2)))();
}

uint64_t sub_100724990@<X0>(int a1@<W8>)
{
  *v1 = a1 + 1;
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v2 + 1717163628) ^ (1964904101 * ((2 * ((v3 - 240) & 0x277BFE98) - (v3 - 240) - 662437534) ^ 0x22A6EAE6));
  v4 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v2 + 24193)))(v3 - 240);
  return (*(v4 + 8 * ((41 * (((v2 + v2 + 29) ^ (*(STACK[0x4638] + 8) == 0)) & 1)) | v2)))();
}

uint64_t sub_100724AD8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((v3 - 704278940 - 2 * ((v3 - 240) & 0xD6058F54)) ^ 0x2C2764D0));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v3 - 240);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_100724C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = STACK[0x55E0];
  v8 = (LODWORD(STACK[0x55E0]) + 1549377517) & 0xA3A65D7F;
  v9 = *(a3 + 1368);
  v10 = (v9[v5 % 0x1808] - 76);
  LODWORD(STACK[0x5640]) = v8;
  v11 = *(a3 + 1360);
  v12 = *(v11 + 4 * (((v8 ^ 0xAFE23D) + 6419 * v10) % 0x2240));
  LODWORD(STACK[0x5540]) = *(STACK[0x5730] + 547);
  v13 = STACK[0x57B0];
  LODWORD(STACK[0x5570]) = v9[1108];
  LODWORD(STACK[0x5630]) = v9[3012];
  LODWORD(STACK[0x5620]) = *(STACK[0x5750] + 2443);
  LODWORD(STACK[0x5610]) = v9[2587];
  LODWORD(STACK[0x5600]) = v9[577];
  LODWORD(STACK[0x55F0]) = v9[1070];
  LODWORD(STACK[0x55A0]) = v9[979];
  v14 = *(v13 + 3892);
  v15 = v9[(5621 * (((v12 ^ 0x4A57B2B1) - 2090819188) ^ ((v12 ^ 0x320C6B7C) - 79988665) ^ ((v12 ^ 0x785BD92Bu) - 1318270446)) - 342781015) % 0x1808] - 76;
  *(v11 + 4 * (v6 % 0x2240)) = (((((((v9[5621 * (BYTE2(v12) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v12) ^ 0x38u) + 32028458)) >> 32) >> 7)] - 76) << 8) | (v9[(5621 * (((HIBYTE(v12) ^ 0x818BA62C) - 1753361715) ^ ((HIBYTE(v12) ^ 0x46D5EAE7) + 1344511496) ^ ((HIBYTE(v12) ^ 0xC75E4C89) - 777504662)) - 797329365) % 0x1808] << 16) | (v9[5621 * (BYTE1(v12) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v12) ^ 0x8Fu) + 32028458)) >> 32) >> 7)] - 76)) << 8) - 1275068416) ^ 0x7DADC69) & (v15 ^ 0xFFFFFFFD) | v15 & 0x96) ^ 0x45E2538F;
  return (*(STACK[0x57D8] + 8 * ((108 * (a5 != 0)) ^ v7)))(v14);
}

uint64_t sub_100724FAC@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, int a4@<W8>)
{
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x33D0]) | LODWORD(STACK[0x3410]);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x33C8]) | LODWORD(STACK[0x33E8]);
  LODWORD(STACK[0x33C8]) = STACK[0x5520] & (LODWORD(STACK[0x33C0]) ^ 0xBF987824);
  LODWORD(STACK[0x32E0]) = STACK[0x5600] & (v10 ^ 0x2B41DB29);
  LODWORD(STACK[0x33B0]) = STACK[0x33B8] & (v4 ^ 0x9D8BAD2B);
  LODWORD(STACK[0x33D0]) = STACK[0x33A0] & (LODWORD(STACK[0x33A8]) ^ 0xB05AF13D);
  LODWORD(STACK[0x33A8]) = a3 & (v5 ^ 0x97F69DE2);
  LODWORD(STACK[0x5600]) = a2 & (v9 ^ 0xAA54E327);
  LODWORD(STACK[0x3398]) = ((((16 * v8) ^ 0x322A0) + 2006078467) ^ a1) & v7;
  LODWORD(STACK[0x33B8]) = a4 & (v6 ^ 0x7C189248);
  v12 = *(v11 + 2587);
  v13 = STACK[0x5720];
  v14 = *(STACK[0x5720] + 1912);
  v15 = *(STACK[0x57C0] + 2663);
  v16 = v14 & 0xEC ^ 0xBC;
  v17 = v15 & 0x5A ^ 0x53;
  v18 = (((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xEC) << 16) | (((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * (v17 ^ v15 & 0x2E)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x5A) << 8);
  v19 = v12 & 0x96 ^ 0x31;
  v20 = (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * (v19 ^ v12 & 0x22)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x12FBEA) & ~v18 | v18 & 0xED0400) << 8;
  LODWORD(STACK[0x3388]) = v20 ^ 0x240080FF;
  LODWORD(STACK[0x5610]) = v20 & 0xDB760B00;
  v21 = *(STACK[0x54B0] + 888);
  v22 = v21 & 0x8A ^ 0xAB;
  v23 = STACK[0x5730];
  v24 = *(STACK[0x5730] + 16);
  v25 = *(STACK[0x56C0] + 1920);
  v26 = v24 & 0x9A ^ 0x33;
  v27 = (v24 ^ (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * (v26 ^ v24 & 0x2E)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)));
  v28 = v25 & 0x60 ^ 0x7E;
  v29 = (((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & 0x3E ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x8A) << 16) | (((v25 ^ (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x60) << 8);
  v30 = ((v27 ^ 0x6A034B) & ~v29 | v29 & 0x95FC00) << 8;
  LODWORD(STACK[0x3378]) = v30 ^ 0x107C2EFF;
  LODWORD(STACK[0x3390]) = v30 & 0x8D825000;
  LOBYTE(v30) = *(STACK[0x56F0] + 418);
  v31 = *(STACK[0x5790] + 797);
  v32 = v31 & 0xD2 ^ 0xFFFFFF97;
  v33 = (v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * (v32 ^ v31 & 0x26)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32;
  LOBYTE(v32) = *(v13 + 46);
  v34 = v32 & 0x24 | 0xD8;
  LOBYTE(v32) = v32 ^ (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v35 = v31 ^ (2 * v33) ^ 0xD2;
  LODWORD(STACK[0x3370]) = v32;
  LOBYTE(v33) = v30 & 0xEA ^ 0xBB;
  v36 = (v32 << 8) & 0xB100 | (v35 << 16) | ((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & 0x1E ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x4E8F) & ((v32 << 8) ^ 0x4AFF);
  LOBYTE(v35) = *(v23 + 1700);
  v37 = v35 & 0x1C ^ 0xF4;
  LOBYTE(v33) = *(v13 + 2147);
  v38 = v33 & 0xDC ^ 0x14;
  v39 = *(v23 + 835);
  v40 = (((v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x1C) << 16) | (((v33 ^ (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xDC) << 8);
  v41 = v39 & 0x58 ^ 0x52;
  v42 = *(STACK[0x5760] + 251);
  v43 = ((v39 ^ (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0x1EA729) & ~v40 | v40 & 0xE15800;
  v44 = v42 & 0x10 ^ 0xF6;
  v36 <<= 8;
  LODWORD(STACK[0x3410]) = ((v43 << 8) ^ 0xE05800FF) & ((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xEA5F707B) | (v43 << 8) & 0x15A08F00;
  LODWORD(STACK[0x3368]) = v36 ^ 0x971190FF;
  LODWORD(STACK[0x5520]) = v36 & 0x68C40F00;
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x3A08]) << 8;
  return (*(STACK[0x57D8] + 8 * v8))();
}

uint64_t sub_100725708()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xCB90]);
  STACK[0xCB90] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x205C])))(v1);
}

uint64_t sub_1007258E4()
{
  v5 = *(v3 + 1360);
  v6 = *(v5 + 4 * ((6419 * v0 + 3292947) % 0x2240u));
  v7 = 5621 * (((v6 ^ (627 * (v1 ^ 0x2067) + 1122655296)) - 333429397) ^ ((v6 ^ 0x44180AFA) - 355285670) ^ ((v6 ^ 0x6F280D5) - 1472704649)) + 382704428;
  v8 = *(*(v3 + 1368) + v7 - 6152 * (((v7 * v2) >> 32) >> 12));
  v9 = v8 & 0xBE ^ 0x85;
  *(v5 + 4 * ((6419 * v0 + 3292947) % 0x2240u)) = (v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ (v4 - 142);
  return (*(STACK[0x57D8] + 8 * ((229 * (v0 == 255)) ^ v1)))();
}

uint64_t sub_100725A3C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x7D956B33)))();
  return (*(v1 + 8 * ((v0 - 2106928061 + ((v0 - 2106907132) | 0x234)) ^ (31861 * (v0 == 1775210099)))))(v2);
}

uint64_t sub_100725C94()
{
  if (v0)
  {
    v3 = v1 == ((v2 + 3217) | 0x814) - 22614;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  return (*(STACK[0x57D8] + 8 * (((16 * v4) | (v4 << 6)) ^ v2)))();
}

uint64_t sub_100725CDC@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((1094233381 - ((v2 - 240) | 0x4138AD25) + ((v2 - 240) | 0xBEC752DA)) ^ 0x44E5B95E));
  STACK[0x1D4C8] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413u)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 11545)))(v4);
}

uint64_t sub_100725D74@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, char a5@<W4>, int a6@<W6>, int a7@<W8>)
{
  LODWORD(STACK[0x2A8]) = -a6;
  v13 = *a4;
  v14 = *a3;
  LODWORD(STACK[0x294]) = ((a7 ^ 0x5A) - 108 + v9 + (*v8 ^ v10) + (a5 & (2 * *v8)) + 44);
  LODWORD(STACK[0x2C0]) = ((v14 ^ 0xDC) + ((2 * v14) & 0xB8) + 36);
  LODWORD(STACK[0x2BC]) = (v11 + (v13 ^ a2) + (v12 & (2 * v13)) - 29);
  LODWORD(STACK[0x2F0]) = (a1 - 90);
  LODWORD(STACK[0x2B8]) = (v7 - 24);
  return (*(STACK[0x2F8] + 8 * (a7 ^ ((2 * ((LODWORD(STACK[0x2F4]) - 1161353954) < 0xFFFFFFF8)) | (8 * ((LODWORD(STACK[0x2F4]) - 1161353954) < 0xFFFFFFF8))))))();
}

uint64_t sub_100725E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = STACK[0x5640];
  *(*(v13 + 1360) + v8 - 35072 * ((((v9 >> 6) * v12) >> 64) >> 1)) = *(*(v13 + 1360) + v11 - 35072 * ((((v10 >> 6) * v12) >> 64) >> 1));
  return (*(STACK[0x57D8] + 8 * ((32400 * (a8 == ((v14 + 401650430) & 0xE80F773D) - 21565)) ^ v14)))(a1, a2, a3, a4, a5, a6, a7, (a8 + 1));
}

uint64_t sub_100725F68()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0x94B8] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x3BE4])))(v1);
}

uint64_t sub_100725FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = __ROR8__((v3 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = -2 - (((0xB1F49ABE1B6CA29CLL - v4) | 0x658EE3515D6E46C9) + ((v4 + 0x4E0B6541E4935D63) | 0x9A711CAEA291B936));
  v6 = __ROR8__(v5 ^ 0x8A36BDC0795AF64DLL, 8);
  v5 ^= 0xFA6D97CF5DC01D57;
  v7 = (((2 * (v6 + v5)) | 0xFB1D93A6ED8B4FD0) - (v6 + v5) - 0x7D8EC9D376C5A7E8) ^ 0x62F55B475B2A8607;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x1C02DF5B258263EDLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0xE9F12045A70D6BEELL) - (v11 + v10) - 0x74F89022D386B5F8) ^ 0xDAFB28A31FA70A3BLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x224C09CA440C0C0BLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((v16 + v15 - ((2 * (v16 + v15)) & 0x2762ADD54F5FDC68) + 0x13B156EAA7AFEE34) ^ 0xB228AF44F8288471, 8);
  v18 = (v16 + v15 - ((2 * (v16 + v15)) & 0x2762ADD54F5FDC68) + 0x13B156EAA7AFEE34) ^ 0xB228AF44F8288471 ^ __ROR8__(v15, 61);
  v19 = (v17 + v18) ^ 0xB2823E14A03C0367;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((v3 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((v22 + 0x4E0B6541E4935D63) | 0xE25DA48C5D882845) - ((v22 + 0x4E0B6541E4935D63) | 0x1DA25B73A277D7BALL) + 0x1DA25B73A277D7BALL;
  v24 = __ROR8__(v23 ^ 0xDE5FA1D79BC98C1, 8);
  v23 ^= 0x7DBED0125D2673DBuLL;
  v25 = (v24 + v23) ^ 0x1F7B92942DEF21EFLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = ((v21 + v20) & 0xFA99D4F0DEF41708 ^ 0x11C05088241100) + ((v21 + v20) ^ 0xFE8A3FAA77D8A67ALL) - (((v21 + v20) ^ 0xFE8A3FAA77D8A67ALL) & 0xFA99D4F0DEF41708);
  v28 = (__ROR8__(v25, 8) + v26) ^ 0x1C02DF5B258263EDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x51FC477E33DE4033;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = *(STACK[0x57D8] + 8 * v2);
  v33 = (v27 ^ 0x6D4297F7AE54A0F1) >> (8 * ((v3 + 10) & 7u));
  v34 = (__ROR8__(v30, 8) + v31) ^ 0x224C09CA440C0C0BLL;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) | 0x7DCA7F02D587C76FLL) - ((v36 + v35) | 0x823580FD2A783890) - 0x7DCA7F02D587C770) ^ 0xDC5386AC8A00AD2ALL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v3[10] = v33 ^ HIBYTE(a1) ^ 0x97;
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xB2823E14A03C0367;
  v40 = ((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0x69517CAD07781183) >> (8 * ((v3 + 11) & 7u));
  v41 = __ROR8__((v3 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (v41 + 0x4E0B6541E4935D63) ^ 0x9FE3749E00AE5B9ELL;
  v43 = __ROR8__((v41 + 0x4E0B6541E4935D63) ^ 0xEFB85E912434B084, 8);
  v44 = (((2 * ((v43 + v42) ^ 0x63AE6FF750753132)) | 0x98E181A53225CE1ELL) - ((v43 + v42) ^ 0x63AE6FF750753132) + 0x338F3F2D66ED18F1) ^ 0xB0A53DB1E488F7D2;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0x809A64E44EAD9B22) - 0x3FB2CD8DD8A9326FLL) ^ 0xDC4FED2902D4AE7CLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((v49 + v48) | 0x2BA94A1803A1CCB7) - ((v49 + v48) | 0xD456B5E7FC5E3348) - 0x2BA94A1803A1CCB8) ^ 0x7A550D66307F8C84;
  v51 = v50 ^ __ROR8__(v48, 61);
  v3[11] = v40 ^ BYTE6(a1) ^ 0x21;
  v52 = __ROR8__(v50, 8);
  v53 = (v52 + v51 - ((2 * (v52 + v51)) & 0x8073BCE190DCA408) + 0x4039DE70C86E5204) ^ 0x6275D7BA8C625E0FLL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xA199F9AE5F876A45;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0xCB037123AC522332) - (v57 + v56) - 0x6581B891D6291199) ^ 0xD7038685761512FELL;
  v3[12] = (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v56, 61))) ^ 0x69517CAD07781183) >> (8 * ((v3 + 12) & 7u))) ^ BYTE5(a1) ^ 0xDF;
  v59 = (__ROR8__((v3 + 13) & 0xFFFFFFFFFFFFFFF8, 8) + 0x4E0B6541E4935D63) & 0xF9FFFFFFFFFFFFFFLL;
  v60 = __ROR8__(v59 ^ 0xE9B85E912434B084, 8);
  v59 ^= 0x99E3749E00AE5B9ELL;
  v61 = (((v60 + v59) | 0x924E2ADFD67DB3CALL) - ((v60 + v59) | 0x6DB1D52029824C35) + 0x6DB1D52029824C35) ^ 0x8D35B84BFB929225;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x1C02DF5B258263EDLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x51FC477E33DE4033;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((v67 + v66) | 0x841AF42C05A629ECLL) - ((v67 + v66) | 0x7BE50BD3FA59D613) + 0x7BE50BD3FA59D613) ^ 0xA656FDE641AA25E7;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xA199F9AE5F876A45;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x12ADBAA4ECB8407CLL) + 0x956DD52765C203ELL) ^ 0xBBD4E346D6602359;
  v3[13] = (((__ROR8__(v73, 8) + (v73 ^ __ROR8__(v71, 61))) ^ 0x69517CAD07781183) >> (8 * ((v3 + 13) & 7u))) ^ BYTE4(a1) ^ 0x14;
  v74 = __ROR8__((v3 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((0xB1F49ABE1B6CA29CLL - v74) & 0xF9A5B2C873D617DFLL) + v74 + 0x4E0B6541E4935D63 - ((v74 + 0x4E0B6541E4935D63) & 0xFFA5B2C873D617DFLL);
  v76 = v75 ^ 0x101DEC5957E2A75BLL;
  v75 ^= 0x6046C65673784C41uLL;
  v77 = __ROR8__(v76, 8);
  v78 = (((2 * (v77 + v75)) | 0x78D4BE029440B406) - (v77 + v75) - 0x3C6A5F014A205A03) ^ 0x2311CD9567CF7BECLL;
  v79 = v78 ^ __ROR8__(v75, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x1C02DF5B258263EDLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * ((v82 + v81) ^ 0x7A02CD2F1D6630DALL)) | 0xC543C1F2FA5D1AAELL) - ((v82 + v81) ^ 0x7A02CD2F1D6630DALL) - 0x62A1E0F97D2E8D57) ^ 0x495F6AA85396FDBELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0x73382C9FD72ABD0ELL) - 0x4663E9B0146AA179) ^ 0x9BD01F85AF99528CLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0x26E4F1FA3738CBDALL) - (v88 + v87) - 0x137278FD1B9C65EDLL) ^ 0xB2EB8153441B0FA8;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xB2823E14A03C0367;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v3[14] = (((((v93 + v92) ^ 0xCBB21DE4AE040FC6 | 0x1C6044D8559970BBLL) - ((v93 + v92) ^ 0xCBB21DE4AE040FC6 | 0xE39FBB27AA668F44) - 0x1C6044D8559970BCLL) ^ 0xBE832591FCE56EFELL) >> (8 * ((v3 + 14) & 7u))) ^ BYTE3(a1) ^ 0xDF;
  v94 = __ROR8__((v3 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v95 = v94 - ((2 * v94 - 0x63E9357C36D9453ALL) & 0xE76FCA34CE4AEEE6) - 0x3E3CB5A3B4472B2ALL;
  v96 = v95 ^ 0x9C0FBB8B4311C7F7;
  v95 ^= 0xEC549184678B2CEDLL;
  v97 = __ROR8__(v96, 8);
  v98 = (((v97 + v95) & 0x19C09F11E1112385 ^ 0x408410C1000105) + ((v97 + v95) & 0xE63F60EE1EEEDC7ALL ^ 0xE2356062042ED813) - 1) ^ 0xFD0E76E6E8C1F8F8;
  v99 = v98 ^ __ROR8__(v95, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x1C02DF5B258263EDLL;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (v102 + v101 - ((2 * (v102 + v101)) & 0xC44660801F6C6BB8) + 0x622330400FB635DCLL) ^ 0x33DF773E3C6875EFLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = __ROR8__(v103, 8);
  v106 = __ROR8__((((2 * (v105 + v104)) | 0x493C9CEDAEB96EALL) - (v105 + v104) - 0x249E4E76D75CB75) ^ 0x2005ED2D2979C77ELL, 8);
  v107 = (((2 * (v105 + v104)) | 0x493C9CEDAEB96EALL) - (v105 + v104) - 0x249E4E76D75CB75) ^ 0x2005ED2D2979C77ELL ^ __ROR8__(v104, 61);
  v108 = (v106 + v107) ^ 0xA199F9AE5F876A45;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((2 * (v110 + v109)) | 0x5ADFE2DD1F6EB40CLL) - (v110 + v109) - 0x2D6FF16E8FB75A06) ^ 0x9FEDCF7A2F8B5961;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v3[15] = (((v113 + v112 - ((2 * (v113 + v112)) & 0xAFB0691368F17B2CLL) - 0x2827CB764B87426ALL) ^ 0xBE894824B300AC15) >> (8 * ((v3 + 15) & 7u))) ^ BYTE2(a1) ^ 0xAB;
  v114 = __ROR8__((v3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v115 = (v114 + 0x4E0B6541E4935D63) ^ 0x9FE3749E00AE5B9ELL;
  v116 = __ROR8__((v114 + 0x4E0B6541E4935D63) ^ 0xEFB85E912434B084, 8);
  v117 = (((v116 + v115) | 0x31D71FEA29DE7E9FLL) - ((v116 + v115) | 0xCE28E015D6218160) - 0x31D71FEA29DE7EA0) ^ 0x2EAC8D7E04315F70;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) | 0x7753630E4E8C1AFELL) - (v119 + v118) - 0x3BA9B18727460D7FLL) ^ 0x27AB6EDC02C46E92;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) & 0xCC96C9C44174701CLL) - (v122 + v121) - 0x664B64E220BA380FLL) ^ 0xC848DC63EC9B87C2;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = __ROR8__(v123, 8);
  v126 = __ROR8__((((v125 + v124) | 0x8F01B17285EF6F02) - ((v125 + v124) | 0x70FE4E8D7A1090FDLL) + 0x70FE4E8D7A1090FDLL) ^ 0xAD4DB8B8C1E36309, 8);
  v127 = (((v125 + v124) | 0x8F01B17285EF6F02) - ((v125 + v124) | 0x70FE4E8D7A1090FDLL) + 0x70FE4E8D7A1090FDLL) ^ 0xAD4DB8B8C1E36309 ^ __ROR8__(v124, 61);
  v128 = (((2 * (v126 + v127)) | 0x1678BD4A9EF7893CLL) - (v126 + v127) + 0x74C3A15AB0843B62) ^ 0x2AA5A70B10FCAEDBLL;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xB2823E14A03C0367;
  v131 = __ROR8__((v3 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v3[16] = (((__ROR8__(v130, 8) + (v130 ^ __ROR8__(v129, 61))) ^ 0x69517CAD07781183) >> (8 * ((v3 + 16) & 7u))) ^ BYTE1(a1) ^ 0xA1;
  v132 = (v131 + 0x4E0B6541E4935D63) ^ 0x9FE3749E00AE5B9ELL;
  v133 = (__ROR8__((v131 + 0x4E0B6541E4935D63) ^ 0xEFB85E912434B084, 8) + v132) ^ 0x1F7B92942DEF21EFLL;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = __ROR8__((((2 * (v135 + v134)) & 0x26CC6675BD7CE3ELL) - (v135 + v134) - 0x1366333ADEBE720) ^ 0xE2CB439777967B0DLL, 8);
  v137 = (((2 * (v135 + v134)) & 0x26CC6675BD7CE3ELL) - (v135 + v134) - 0x1366333ADEBE720) ^ 0xE2CB439777967B0DLL ^ __ROR8__(v134, 61);
  v138 = (v136 + v137) ^ 0x51FC477E33DE4033;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x224C09CA440C0C0BLL;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0xA199F9AE5F876A45;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (((2 * (v144 + v143)) & 0xD8D84BB4A111D4AELL) - (v144 + v143) + 0x1393DA25AF7715A8) ^ 0xA111E4310F4B16CFLL;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v3[17] = (((((v147 + v146) | 0xE1E7F2C2B7D1D432) - ((v147 + v146) | 0x1E180D3D482E2BCDLL) + 0x1E180D3D482E2BCDLL) ^ 0x88B68E6FB0A9C5B1) >> (8 * ((v3 + 17) & 7u))) ^ a1 ^ 0x3B;
  return v32();
}

uint64_t sub_100726F38@<X0>(unsigned int a1@<W8>)
{
  v4 = (v1 - 22613) ^ v2 ^ a1;
  LODWORD(STACK[0xDF5C]) = v4;
  v5 = 551690071 * ((v3 - 240) ^ 0x719D52CE4EED5357);
  STACK[0x1D4D8] = 4151854225 - v5;
  LODWORD(STACK[0x1D4CC]) = ((v1 - 22613) ^ 0x83EC5795) - v5;
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ v5;
  LODWORD(STACK[0x1D4C4]) = (v1 - 2081685538) ^ v5;
  LODWORD(STACK[0x1D4C8]) = ((v1 - 22613) ^ 0x83EC57D0) - v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  STACK[0x1D4E0] = v4 + v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2411)))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_100727010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  LODWORD(STACK[0x3280]) = LODWORD(STACK[0x4E60]) | LODWORD(STACK[0x4E70]);
  LODWORD(STACK[0x3288]) = LODWORD(STACK[0x4E10]) | LODWORD(STACK[0x4E24]);
  LODWORD(STACK[0x4E08]) &= LODWORD(STACK[0x32D0]) ^ 0x46820AD9;
  v13 = STACK[0x4DF8] & (LODWORD(STACK[0x4B90]) ^ 0x640F9A31u);
  LODWORD(STACK[0x4E60]) = STACK[0x3328] & (LODWORD(STACK[0x3338]) ^ 0xA686BE7E);
  v14 = STACK[0x3390];
  v15 = STACK[0x4DE0] & (LODWORD(STACK[0x3390]) ^ 0x6985788Du);
  LODWORD(STACK[0x4DF8]) = STACK[0x4DD8] & (LODWORD(STACK[0x3340]) ^ 0x1005F1E2);
  LODWORD(STACK[0x55A0]) = STACK[0x4DA8] & (LODWORD(STACK[0x4DB0]) ^ 0x7B834809);
  LODWORD(STACK[0x3294]) = STACK[0x4D58] & (LODWORD(STACK[0x3388]) ^ 0xE172B91) | LODWORD(STACK[0x4C68]);
  LODWORD(STACK[0x4DE0]) = STACK[0x4B80] & (v14 ^ 0x61772B5B);
  LODWORD(STACK[0x4E70]) = STACK[0x4B68] & (LODWORD(STACK[0x4B98]) ^ 0xCAE086B5);
  v16 = STACK[0x4B58] & (LODWORD(STACK[0x4DA0]) ^ 0xAD7FFA05);
  LODWORD(STACK[0x4DD8]) = STACK[0x4B50] & (LODWORD(STACK[0x4DB8]) ^ 0x8CA0ED78);
  LODWORD(STACK[0x4E10]) = STACK[0x3398] & (LODWORD(STACK[0x33A0]) ^ 0xE6740366);
  v17 = v9 & 0xC4 | 0x30;
  v18 = a8 & 0xB0 ^ 0xEE;
  v19 = a8 ^ 0x64;
  v20 = (((v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xC4) << 16) | (((a8 ^ (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xB0) << 8);
  LOBYTE(v14) = v8 & 0x74 ^ 0x48;
  LODWORD(STACK[0x4DC8]) = ((((v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14))) + 10991616) & ~v20 | v20 & 0x584700) << 8) & 0x80C0A00;
  v21 = v11 & 0x62 ^ 0xC7;
  v22 = v12 & 0xA ^ 0x93;
  v23 = (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & 0x2E ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xA) << 8) | (((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x44) & (2 * ((v11 ^ 0x44) & 6 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x62) << 16);
  LOBYTE(v14) = v10 & 0xB6 ^ 0xE9;
  v24 = v10 ^ 0x64;
  LODWORD(STACK[0x4E24]) = ((((v10 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v14 ^ v10 & 0x12)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0x1FA6AA) & ~v23 | v23 & 0xE05900) << 8) & 0x336E5E00;
  return (*(STACK[0x57D8] + 8 * a7))(v15, 3662619874, 21613735, v13, 1396538, v16);
}

uint64_t sub_100727554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50)
{
  v52 = (a50 ^ 0x271C0F91) & (2 * (a50 & 0xB61E0FD9)) ^ a50 & 0xB61E0FD9;
  v53 = ((2 * (a50 ^ 0xB141DB1)) ^ 0x7A1424D0) & (a50 ^ 0xB141DB1) ^ (2 * (a50 ^ 0xB141DB1)) & 0xBD0A1268;
  v54 = v53 ^ 0x850A1228;
  v55 = (v53 ^ 0x38000040) & (4 * v52) ^ v52;
  v56 = ((4 * v54) ^ 0xF42849A0) & v54 ^ (4 * v54) & 0xBD0A1268;
  v57 = v55 ^ 0xBD0A1268 ^ (v56 ^ 0xB4080020) & (16 * v55);
  v58 = (16 * (v56 ^ 0x9021248)) & 0xBD0A1260 ^ 0x2D0A1068 ^ ((16 * (v56 ^ 0x9021248)) ^ 0xD0A12680) & (v56 ^ 0x9021248);
  v59 = (v57 << 8) & 0xBD0A1200 ^ v57 ^ ((v57 << 8) ^ 0xA126800) & v58;
  v60 = ((2 * (a23 ^ 0x4192EDE7)) ^ 0x3FE2825E) & (a23 ^ 0x4192EDE7) ^ (2 * (a23 ^ 0x4192EDE7)) & 0x9FF1412E;
  v61 = v60 ^ 0x80114121;
  v62 = (v60 ^ 0x1B800000) & (4 * (a19 & (a23 ^ 0xDD53ACE7) ^ a22)) ^ a19 & (a23 ^ 0xDD53ACE7) ^ a22;
  v63 = ((4 * v61) ^ 0x7FC504BC) & v61 ^ (4 * v61) & 0x9FF1412C;
  v64 = (v63 ^ 0x1FC10020) & (16 * v62) ^ v62;
  v65 = ((16 * (v63 ^ 0x80304103)) ^ 0xFF1412F0) & (v63 ^ 0x80304103) ^ (16 * (v63 ^ 0x80304103)) & 0x9FF14120;
  v66 = v64 ^ 0x9FF1412F ^ (v65 ^ 0x9F100000) & (v64 << 8);
  return (*(v51 + 8 * v50))(342, 78, v50 ^ 0x3785u, (2 * ((v66 << 16) & 0x1FF10000 ^ v66 ^ ((v66 << 16) ^ 0x412F0000) & (((v65 ^ 0xE1410F) << 8) & 0x9FF10000 ^ 0xEB00000 ^ (((v65 ^ 0xE1410F) << 8) ^ 0xF1410000) & (v65 ^ 0xE1410F)) ^ v59 ^ (v59 << 16) & 0x3D0A0000 ^ ((v59 << 16) ^ 0x12680000) & ((v58 << 8) & 0x3D0A0000 ^ 0x35080000 ^ ((v58 << 8) ^ 0xA120000) & v58))) ^ a25, 4224825254, 24438);
}

uint64_t sub_10072797C@<X0>(int a1@<W8>)
{
  v4 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x15C8] = 0;
  LODWORD(STACK[0x938]) = -769884012;
  STACK[0xFF0] = 0;
  return (*(v3 + 8 * (((v4 == 0x308E083E0C524CBELL) * (((a1 - 12477) | 0x28) ^ (v2 - 535) ^ ((a1 + 646959568) | 0x91408001))) ^ a1)))();
}

uint64_t sub_100727A9C()
{
  v2 = STACK[0x7ED8];
  STACK[0x5C40] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 - 22598 + (v0 + 19883);
  LODWORD(STACK[0x6D50]) = 0;
  STACK[0xBF30] = 0;
  *v1 = 0;
  STACK[0x5FA0] = 0;
  STACK[0x6E98] = 0;
  LODWORD(STACK[0x8D9C]) = 103679699;
  LODWORD(STACK[0x70A4]) = -769884012;
  LODWORD(STACK[0x7040]) = -769884012;
  STACK[0xBAA0] = 0;
  STACK[0x9810] = 0;
  LODWORD(STACK[0x83F0]) = 103679699;
  LODWORD(STACK[0xBC70]) = -769884012;
  LODWORD(STACK[0x6450]) = -769884012;
  STACK[0x74F0] = 0;
  LODWORD(STACK[0x988C]) = 103679699;
  STACK[0x9818] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 + 1747)))();
}

uint64_t sub_100727B90()
{
  v1 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0xEDA0A100)))();
  return (*(v1 + 8 * (v0 ^ 0xEDA097E7 ^ (57323 * (v0 == -1212256317)))))();
}

uint64_t sub_100727C04@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 22462;
  LOWORD(STACK[0xD96E]) = a1;
  return (*(STACK[0x57D8] + 8 * ((v1 - 17679) ^ v2)))();
}

uint64_t sub_100727CBC()
{
  if (STACK[0x7280])
  {
    v2 = LODWORD(STACK[0xDFD0]) == v1;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * (((11 * (v0 ^ 0x611F)) ^ 0x410F) - 751)) ^ v0)))();
}

uint64_t sub_100727D5C()
{
  v3.i64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v3.i64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v4 = vsubq_s8(v2[1], vandq_s8(vaddq_s8(v2[1], v2[1]), v3));
  v5 = vandq_s8(vaddq_s8(*v2, *v2), v3);
  v3.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v3.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  *v0 = vaddq_s8(vsubq_s8(*v2, v5), v3);
  v0[1] = vaddq_s8(v4, v3);
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100727DAC@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v3 = __ROR8__((v2 + a1) & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = ((v3 - 0x1C64917143BAF701) & 0xCAB5BD89E6E9F790 ^ 0x8A14818926219000) + ((v3 - 0x1C64917143BAF701) ^ 0x44E37E46D0CA67BALL) - ((14442 * (a2 ^ 0x428Du) - 0x354A427619167944) & ((v3 - 0x1C64917143BAF701) ^ 0x44E37E46D0CA67BALL));
  v5 = v4 ^ 0x8B30E1A7FFF18687;
  v4 ^= 0x97EB95D21DD9C178;
  v6 = (__ROR8__(v5, 8) + v4) ^ 0xFDA8E32437622097;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) | 0x961D7296CF952196) - (v8 + v7) - 0x4B0EB94B67CA90CBLL) ^ 0x5B36DD7E45078759;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((v11 + v10) & 0x17B4F5D0B83F10E9 ^ 0x410840008201021) + ((v11 + v10) & 0xE84B0A2F47C0EF16 ^ 0xA041082246802613) - 1) ^ 0x1BA74E396FAE7904;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0xA2CA77FCE3B64F08) - (v14 + v13) - 0x51653BFE71DB2784) ^ 0xC9E7DCD9AAECE810;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5FD252103B569EALL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x7B5626353E243BAALL;
  return (*(STACK[0x57D8] + 8 * a2))((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * ((v2 + a1) & 7))) ^ *(v2 + a1));
}

uint64_t sub_100728050(unint64_t a1)
{
  v1 = STACK[0x3938];
  v2 = LODWORD(STACK[0x3938]) + 4942;
  STACK[0xA570] = a1;
  LODWORD(STACK[0x5D00]) = STACK[0xAD1C];
  STACK[0xBC78] = 0x2369327399A66D95;
  STACK[0x80E8] = 0;
  LODWORD(STACK[0xC2BC]) = -769884012;
  if (a1)
  {
    v3 = STACK[0xC2E8] == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || STACK[0xBC08] == 0;
  return (*(STACK[0x57D8] + 8 * ((v5 * ((v1 + 4934) ^ v2)) ^ v1)))();
}

uint64_t sub_1007282B4()
{
  v0 = *(STACK[0x57D8] + 8 * LODWORD(STACK[0x57A0]));
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x57A0]) - 430075103;
  return v0();
}

uint64_t sub_1007283A0()
{
  STACK[0x2AF0] = STACK[0x3958];
  v2 = STACK[0x3560];
  v3 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 14713));
  STACK[0x1C00] = STACK[0x3210];
  STACK[0x3828] = STACK[0x29C0];
  STACK[0x3830] = STACK[0x29C8];
  STACK[0x3930] = STACK[0x39A8];
  STACK[0x3090] = STACK[0x28E0];
  STACK[0x2AE8] = STACK[0x37A8];
  STACK[0x3098] = STACK[0x28E8];
  STACK[0x2AE0] = STACK[0x3698];
  STACK[0x3820] = STACK[0x29D0];
  STACK[0x3088] = STACK[0x28F0];
  STACK[0x30A0] = STACK[0x2990];
  STACK[0x30C0] = STACK[0x2BC8];
  STACK[0x3080] = STACK[0x2B90];
  STACK[0x1BF8] = STACK[0x3518];
  STACK[0x3960] = STACK[0x3998];
  STACK[0x1BF0] = STACK[0x3AD0];
  STACK[0x3A18] = STACK[0x3A08];
  STACK[0x39C8] = STACK[0x39A0];
  STACK[0x3078] = STACK[0x29D8];
  STACK[0x3810] = STACK[0x2AF8];
  STACK[0x3070] = STACK[0x2998];
  STACK[0x3068] = STACK[0x29F8];
  STACK[0x1BE8] = STACK[0x3408];
  STACK[0x2AD8] = STACK[0x3938];
  STACK[0x30B0] = STACK[0x2BD0];
  STACK[0x30B8] = STACK[0x29E0];
  STACK[0x2AD0] = STACK[0x36B0];
  STACK[0x1BE0] = STACK[0x3378];
  STACK[0x3060] = STACK[0x2A00];
  STACK[0x1BD8] = STACK[0x3520];
  STACK[0x3A68] = STACK[0x39E8];
  STACK[0x3908] = STACK[0x39F0];
  STACK[0x39B8] = STACK[0x3A00];
  STACK[0x3818] = STACK[0x2BD8];
  STACK[0x3050] = STACK[0x28F8];
  STACK[0x3040] = STACK[0x2900];
  STACK[0x2AC8] = STACK[0x36A8];
  STACK[0x30A8] = STACK[0x2B00];
  STACK[0x1BD0] = STACK[0x3528];
  STACK[0x38F0] = STACK[0x39F8];
  STACK[0x3058] = STACK[0x2A08];
  STACK[0x1BC8] = STACK[0x3398];
  STACK[0x2AC0] = STACK[0x33D8];
  STACK[0x3970] = STACK[0x3A80];
  STACK[0x3A10] = STACK[0x39E0];
  STACK[0x3038] = STACK[0x2908];
  STACK[0x3030] = STACK[0x29E8];
  STACK[0x3938] = STACK[0x2B08];
  STACK[0x1BC0] = STACK[0x3548];
  STACK[0x3020] = STACK[0x2A10];
  v4 = STACK[0x778];
  STACK[0x2240] = STACK[0x778];
  STACK[0x3A40] = v4;
  STACK[0x2AB8] = STACK[0x36D8];
  STACK[0x2AB0] = STACK[0x3798];
  v5 = STACK[0x33F8];
  STACK[0x3A20] = STACK[0x33F8];
  STACK[0x2220] = v5;
  STACK[0x3028] = STACK[0x2A18];
  STACK[0x3018] = STACK[0x29A0];
  STACK[0x2AA8] = STACK[0x3550];
  STACK[0x3010] = STACK[0x2910];
  STACK[0x2AA0] = STACK[0x36B8];
  STACK[0x2A98] = STACK[0x38F8];
  STACK[0x1BA8] = STACK[0x32B0];
  STACK[0x3968] = STACK[0x3A78];
  STACK[0x2A90] = STACK[0x3588];
  STACK[0x3048] = STACK[0x2B10];
  STACK[0x38E8] = STACK[0x3990];
  STACK[0x1BA0] = STACK[0x3AC8];
  v6 = STACK[0x33A0];
  STACK[0x2230] = STACK[0x33A0];
  STACK[0x3478] = v6;
  STACK[0x39B0] = v0;
  STACK[0x1B98] = STACK[0x33C8];
  STACK[0x3008] = STACK[0x2B98];
  v7 = STACK[0x3348];
  STACK[0x2238] = STACK[0x3348];
  STACK[0x3330] = v7;
  STACK[0x3000] = STACK[0x2918];
  v8 = STACK[0x3350];
  STACK[0x2228] = STACK[0x3350];
  STACK[0x3340] = v8;
  STACK[0x2FF8] = STACK[0x2920];
  STACK[0x3AC8] = STACK[0x2A20];
  STACK[0x3808] = STACK[0x2BE0];
  STACK[0x2A88] = STACK[0x33A8];
  v9 = STACK[0x3390];
  STACK[0x3338] = STACK[0x3390];
  STACK[0x21F8] = v9;
  STACK[0x3800] = STACK[0x2B18];
  STACK[0x38E0] = STACK[0x3988];
  STACK[0x1B90] = STACK[0x33E8];
  STACK[0x1B88] = STACK[0x3540];
  STACK[0x2A80] = STACK[0x3590];
  STACK[0x2FE8] = STACK[0x2BA0];
  STACK[0x2FE0] = STACK[0x2928];
  STACK[0x30D0] = STACK[0x2930];
  STACK[0x1B80] = STACK[0x3310];
  STACK[0x2A78] = STACK[0x33D0];
  STACK[0x2FF0] = STACK[0x2BA8];
  STACK[0x2FD8] = STACK[0x2938];
  STACK[0x1B78] = STACK[0x788];
  STACK[0x2A70] = STACK[0x3570];
  STACK[0x1B70] = STACK[0x3388];
  STACK[0x2FB8] = STACK[0x2940];
  STACK[0x2A68] = STACK[0x3578];
  STACK[0x2FC8] = STACK[0x2948];
  LODWORD(STACK[0x76C]) = STACK[0x3400];
  STACK[0x2FA8] = STACK[0x2A28];
  STACK[0x1B68] = STACK[0x33C0];
  STACK[0x1B60] = STACK[0x3538];
  STACK[0x2FB0] = STACK[0x2BB0];
  STACK[0x2FC0] = STACK[0x2B20];
  v10 = STACK[0x33F0];
  STACK[0x21D0] = STACK[0x33F0];
  STACK[0x3A38] = v10;
  STACK[0x2FA0] = STACK[0x2950];
  STACK[0x30C8] = STACK[0x2958];
  STACK[0x2FD0] = STACK[0x29F0];
  STACK[0x2F90] = STACK[0x29A8];
  v11 = STACK[0x33B0];
  STACK[0x21E0] = STACK[0x33B0];
  STACK[0x3318] = v11;
  v12 = STACK[0x3208];
  STACK[0x21E8] = STACK[0x3208];
  STACK[0x3A30] = v12;
  STACK[0x2F88] = STACK[0x2A30];
  STACK[0x2F80] = STACK[0x2960];
  STACK[0x2A60] = STACK[0x790];
  STACK[0x2F98] = STACK[0x2BE8];
  v13 = STACK[0x33E0];
  STACK[0x3320] = STACK[0x33E0];
  STACK[0x21B8] = v13;
  STACK[0x2A58] = STACK[0x39C0];
  STACK[0x3958] = STACK[0x2BF0];
  STACK[0x1B58] = STACK[0x780];
  LODWORD(STACK[0x3900]) = v1;
  STACK[0x2F70] = STACK[0x29B0];
  STACK[0x2A50] = STACK[0x3568];
  STACK[0x37F0] = STACK[0x2B28];
  v14 = STACK[0x3380];
  STACK[0x3328] = STACK[0x3380];
  STACK[0x2198] = v14;
  STACK[0x2F68] = STACK[0x2BB8];
  STACK[0x2F60] = STACK[0x2968];
  STACK[0x3AD0] = STACK[0x2A38];
  STACK[0x2F50] = STACK[0x2970];
  STACK[0x2F48] = STACK[0x2978];
  STACK[0x37E8] = STACK[0x2B30];
  STACK[0x2F58] = STACK[0x2BC0];
  STACK[0x2A48] = STACK[0x3580];
  STACK[0x2F40] = STACK[0x2980];
  STACK[0x1BB8] = STACK[0x3358];
  STACK[0x2F78] = STACK[0x2BF8];
  STACK[0x2F38] = STACK[0x2A40];
  STACK[0x1BB0] = STACK[0x3558];
  STACK[0x2F30] = STACK[0x2988];
  LODWORD(STACK[0x3A28]) = 61;
  LODWORD(STACK[0x37F8]) = v2;
  STACK[0x2210] = STACK[0x3A70];
  STACK[0x2208] = STACK[0x3368];
  STACK[0x2200] = STACK[0x3468];
  STACK[0x21F0] = STACK[0x3370];
  STACK[0x21D8] = STACK[0x3488];
  STACK[0x21C8] = STACK[0x3898];
  STACK[0x21C0] = STACK[0x3360];
  STACK[0x21B0] = STACK[0x3A88];
  STACK[0x21A8] = STACK[0x3470];
  STACK[0x21A0] = STACK[0x3A58];
  STACK[0x2218] = STACK[0x3480];
  return v3();
}

uint64_t sub_10072888C@<X0>(int a1@<W0>, unsigned __int8 a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  LODWORD(STACK[0x4370]) = LODWORD(STACK[0x53B0]) | LODWORD(STACK[0x4DF0]);
  LODWORD(STACK[0x4360]) = LODWORD(STACK[0x5270]) | LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x4358]) = LODWORD(STACK[0x4EB8]) | LODWORD(STACK[0x4ED0]);
  LODWORD(STACK[0x4E80]) &= a3 ^ 0xD7B7CB37;
  LODWORD(STACK[0x53B0]) = a5 & (a6 ^ 0x50CD797A);
  LODWORD(STACK[0x53B8]) = v15 & (a1 ^ 0x2AE9840F);
  LODWORD(STACK[0x5270]) = v10 & (v9 ^ 0x1E695468);
  LODWORD(STACK[0x4E24]) = v13 & (v12 ^ 0xB365D308);
  LODWORD(STACK[0x4ED0]) = a4 & (v14 ^ 0xAB487CF1);
  LODWORD(STACK[0x4EB8]) = v11 & (a2 ^ 0x5E33C37F);
  LODWORD(STACK[0x4E60]) = v8 & (v7 ^ 0x8CB0C16D);
  return (*(STACK[0x57D8] + 8 * v6))();
}

uint64_t sub_100728A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x5550] != ((v3 + 34) ^ 0x1170);
  STACK[0x57C0] = STACK[0xB0A0];
  return (*(STACK[0x57D8] + 8 * ((v4 * ((v3 - 588265591) & 0x23107F7E ^ 0x5868)) ^ v3)))(0x115F70B862FD06CELL, a2, a3, STACK[0x5540]);
}

uint64_t sub_100728B40()
{
  STACK[0x1CB8] = v1;
  v3 = STACK[0x1420];
  STACK[0x1CC0] = STACK[0x1420];
  return (*(v2 + 8 * ((9339 * (v1 - v3 > ((v0 - 3234) | 0x234u) - 1645)) ^ v0)))();
}

uint64_t sub_100728C1C@<X0>(int a1@<W0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v13 = (((a1 ^ v6) - 804694366) ^ ((a1 ^ 0x380F6F88) - 940535688) ^ ((a1 ^ 0xC5E5070F ^ (v3 - 554850441) & v7) + 974830014)) - 420265622;
  v14 = ((v13 ^ 0xDB45AD97) + 812421824) ^ v13 ^ ((v13 ^ 0x1AE2FB86) - 238304081) ^ ((v13 ^ 0xA8FE819) - 509159630) ^ ((v13 ^ v5) + 886522360);
  v15 = v14 ^ v8;
  v16 = __ROR8__((v9 + v15) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((0xB1F49ABE1B6CA29CLL - v16) & 0xD8FB6DFAA4CB855ALL) + v16 + 0x4E0B6541E4935D63 - ((v16 + 0x4E0B6541E4935D63) & 0xDEFB6DFAA4CB855ALL);
  v18 = __ROR8__(v17 ^ 0x3143336B80FF35DELL, 8);
  v17 ^= 0x41181964A465DEC4uLL;
  v19 = (((2 * (v18 + v17)) | 0xD987BC599400D648) - (v18 + v17) - 0x6CC3DE2CCA006B24) ^ 0x73B84CB8E7EF4ACBLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x1C02DF5B258263EDLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v4 - ((v23 + v22) | v4) + ((v23 + v22) | 0xC0468B335FF3F161)) ^ 0x91BACC4D6C2DB152;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a2;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v12;
  *(a3 + v15) = (((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v29, 61))) ^ v10) >> (8 * ((v9 + (v14 ^ v8)) & 7))) ^ *(v9 + v15);
  return (*(STACK[0x57D8] + 8 * ((v3 - 9233) ^ (2 * (v14 != v8)))))(v14 ^ 0xC6CA4043);
}

uint64_t sub_100728EB0()
{
  *(v2 + 592) = 0;
  *(v2 + 600) = (v1 - 1723126633) ^ (1917435887 * ((~(v0 | 0x9715ABB6) + (v0 & 0x9715ABB6)) ^ 0x8E510F4F));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x4044)))(v3 - 240);
  v7 = *STACK[0x4678] != 3785 * (v1 ^ 0x3C7C) - 30280 || *STACK[0x4630] == 0;
  return (*(v4 + 8 * ((223 * ((((v1 - 2078) ^ v7) & 1) == 0)) ^ v1)))(v5);
}

uint64_t sub_100728FE4@<X0>(_DWORD *a1@<X8>)
{
  *(v1 - 0x5A06F5D56BD24526) = 103679699;
  *a1 = 1251397511;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_100729034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  LODWORD(STACK[0x4B50]) = LODWORD(STACK[0x54E0]) | LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x4A18]) = LODWORD(STACK[0x5410]) | LODWORD(STACK[0x5470]);
  LODWORD(STACK[0x5128]) = LODWORD(STACK[0x5408]) | LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x4A58]) = LODWORD(STACK[0x5400]) | LODWORD(STACK[0x5430]);
  v18 = a5 & 0x9E ^ 0x35;
  v19 = v11 & 0x72 ^ 0x67;
  v20 = (((v11 ^ (2 * ((v11 ^ a7) & (2 * ((v11 ^ a7) & (2 * ((v11 ^ a7) & (2 * ((v11 ^ a7) & (2 * ((v11 ^ a7) & (2 * (v19 ^ v11 & 6)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x72) << 8) | (((a5 ^ (2 * ((a5 ^ a7) & (2 * ((a5 ^ a7) & (2 * ((a5 ^ a7) & (2 * ((a5 ^ a7) & (2 * ((a5 ^ a7) & (2 * (v18 ^ a5 & 0xAA)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x9E) << 16);
  v21 = a6 & 0x24 | 0xD8;
  LODWORD(STACK[0x5410]) = ((((a6 ^ (2 * ((a6 ^ a7) & (2 * ((a6 ^ a7) & (2 * ((a6 ^ a7) & (2 * ((a6 ^ a7) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xC8D67C) & ~v20 | v20 & 0x372900) << 8) & 0x92E40500;
  LOBYTE(v20) = v8 & 0x56 ^ 0x51;
  v22 = v7 & 0x9A ^ 0x33;
  v23 = (((v8 ^ (2 * ((v8 ^ a7) & (2 * ((v8 ^ a7) & (2 * ((v8 ^ a7) & (2 * ((v8 ^ a7) & (2 * ((v8 ^ a7) & (2 * (v20 ^ v8 & 0x22)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x56) << 16) | (((v7 ^ (2 * ((v7 ^ a7) & (2 * ((v7 ^ a7) & (2 * ((v7 ^ a7) & (2 * ((v7 ^ a7) & (2 * ((v7 ^ a7) & (2 * (v22 ^ v7 & 0x2E)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x9A) << 8);
  LOBYTE(v20) = v17 & 0x40 ^ 0x4E;
  v24 = STACK[0x5510];
  v25 = ((v24 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v24 ^ a7)) & 0x38 ^ 0x1C) & (v24 ^ a7))) ^ 0x1C) & (v24 ^ a7))) ^ 0x1C) & (v24 ^ a7))) ^ 0x5C) & (v24 ^ a7)))) ^ 0xCD96E1) & ~v23 | v23 & 0x326900;
  v26 = STACK[0x5520];
  LOBYTE(v23) = STACK[0x5520] & 0x32 ^ 0xC7;
  v27 = (((v17 ^ (2 * ((v17 ^ a7) & (2 * ((v17 ^ a7) & (2 * ((v17 ^ a7) & (2 * ((v17 ^ a7) & (2 * ((v17 ^ a7) & 0x1C ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x40) << 16) | (((v26 ^ (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * (v23 ^ v26 & 6)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x32) << 8);
  v28 = STACK[0x5600];
  LOBYTE(v23) = (v28 & 0xB4 | 0x41) ^ v28 & 0x82;
  v29 = ((v28 ^ (2 * ((v28 ^ a7) & (2 * ((v28 ^ a7) & (2 * ((v28 ^ a7) & (2 * ((v28 ^ a7) & (2 * ((v28 ^ a7) & (2 * (v28 & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x5A9D57) & ~v27 | v27 & 0xA56200;
  LOBYTE(v23) = v14 & 0x64 ^ 0xF8;
  v30 = STACK[0x5620];
  v31 = STACK[0x5620] & 0xFA ^ 0x23;
  v32 = (((v14 ^ (2 * ((v14 ^ a7) & (2 * ((v14 ^ a7) & (2 * ((v14 ^ a7) & (2 * ((v14 ^ a7) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x64) << 16) | (((v30 ^ (2 * ((v30 ^ a7) & (2 * ((v30 ^ a7) & (2 * ((v30 ^ a7) & (2 * ((v30 ^ a7) & (2 * ((v30 ^ a7) & (2 * (v31 ^ v30 & 0xE)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xFA) << 8);
  v33 = v16 & 0xEA ^ 0xBB;
  LODWORD(STACK[0x53E0]) = ((((v16 ^ (2 * ((v16 ^ a7) & (2 * ((v16 ^ a7) & (2 * ((v16 ^ a7) & (2 * ((v16 ^ a7) & (2 * ((v16 ^ a7) & (2 * ((v16 ^ a7) & 0x1E ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x5D2857) & ~v32 | v32 & 0xA2D700) << 8) & 0xEDF56A00;
  v34 = v9 & 0x46 ^ 0xC9;
  LOBYTE(v20) = v13 & 0x7C ^ 0x64;
  LOBYTE(v30) = v12 & 0xAC ^ 0x9C;
  LODWORD(STACK[0x53D8]) = (v25 << 8) & 0xE9102400;
  v35 = v29 << 8;
  v36 = (((v13 ^ (2 * ((v13 ^ a7) & (2 * ((v13 ^ a7) & (2 * ((v13 ^ a7) & (2 * ((v13 ^ a7) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x7C) << 16) | (((v9 ^ (2 * ((v9 ^ a7) & (2 * ((v9 ^ a7) & (2 * ((v9 ^ a7) & (2 * ((v9 ^ a7) & (2 * ((v9 ^ a7) & (2 * (v34 ^ v9 & 0x32)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x46) << 8);
  v37 = v15 & 0x42 ^ 0x4F;
  LODWORD(STACK[0x5440]) = v35 & 0x2FD3A200;
  v38 = (((v12 ^ (2 * ((v12 ^ a7) & (2 * ((v12 ^ a7) & (2 * ((v12 ^ a7) & (2 * ((v12 ^ a7) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xAC) << 16) | (((v15 ^ (2 * ((v15 ^ a7) & (2 * ((v15 ^ a7) & (2 * ((v15 ^ a7) & (2 * ((v15 ^ a7) & (2 * ((v15 ^ a7) & (2 * ((v15 ^ a7) & 0x36 ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x42) << 8);
  v39 = v10 & 0x66 ^ 0x79;
  v40 = (v10 ^ (2 * ((v10 ^ a7) & (2 * ((v10 ^ a7) & (2 * ((v10 ^ a7) & (2 * ((v10 ^ a7) & (2 * ((v10 ^ a7) & (2 * (v39 ^ v10 & 0x12)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)));
  v41 = ((v40 ^ 0x3D5D52) & (v36 ^ 0x7F5FFF) | v36 & 0xC2A200) << 8;
  v42 = STACK[0x5610];
  v43 = STACK[0x5610] & 0xCC ^ 0xC;
  LODWORD(STACK[0x5408]) = v41 & 0x58567D00;
  LODWORD(STACK[0x53D0]) = (((v40 ^ 0x28D0FB) & ~v38 | v38 & 0xD72F00) << 8) & 0x2C81EF00;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5530])))(v35 ^ 0x80201CFF, (v42 ^ (2 * ((v42 ^ a7) & (2 * ((v42 ^ a7) & (2 * ((v42 ^ a7) & (2 * ((v42 ^ a7) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43))), v41 ^ 0x82A082FF);
}

uint64_t sub_1007299D8()
{
  STACK[0x1D4C0] = STACK[0x3F60];
  LODWORD(STACK[0x1D4C8]) = v0 - 289235981 * ((1487965002 - ((v1 - 240) | 0x58B08B4A) + ((v1 - 240) | 0xA74F74B5)) ^ 0x20CDA48A) - 1201;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9222)))(v1 - 240);
  return (*(v2 + 8 * (v0 - 10905)))(v3);
}

uint64_t sub_100729A64()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 315414335)))();
  return (*(v1 + 8 * ((53360 * (v0 == ((v0 + 71053895) & 0xE907CBA) + 1911106847)) ^ (v0 + 315402865))))(v2);
}

uint64_t sub_100729AD8()
{
  v0 = STACK[0x28AC];
  v1 = LODWORD(STACK[0x28AC]) - 143140712;
  LODWORD(STACK[0xA154]) = -769884012;
  LOWORD(STACK[0x6DEE]) = -3415;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 4165)))(192);
  STACK[0x88B0] = v3;
  return (*(v2 + 8 * ((((LODWORD(STACK[0x2CC4]) ^ (v3 == 0)) & 1) * (v1 + 143113076)) ^ v0)))(88);
}

uint64_t sub_100729BA8()
{
  v2 = *(v0 + 3064);
  v3 = *(v0 + 3076);
  v4 = *(v0 + 3080);
  v5 = *(v0 + 3099);
  v6 = *(v0 + 3100);
  v7 = *(v0 + 3104);
  v8 = *(v0 + 3124);
  LODWORD(STACK[0x57C0]) = *(v0 + 3160);
  return (*(STACK[0x57D8] + 8 * v1))(v2, v4, v3, v8, v6, v5, v7);
}

uint64_t sub_100729C24()
{
  v3 = *v1;
  v4 = STACK[0x57D8];
  STACK[0xC250] = *(STACK[0x57D8] + 8 * v0);
  STACK[0xDE50] = v3;
  return (*(v4 + 8 * (((v3 == 0x30BDFED8F32E6831) * (((v2 - 20410) | 0x200) - 2237)) ^ (v2 - 1895))))();
}

uint64_t sub_100729D08@<X0>(uint64_t a1@<X8>)
{
  STACK[0x9E78] = v1;
  STACK[0x9668] = 0;
  LODWORD(STACK[0x915C]) = -769884012;
  STACK[0x7BF8] = 0;
  v5 = a1 == v3 || v1 == 0;
  return (*(STACK[0x57D8] + 8 * ((v5 * (((251 * (v2 ^ 0x4530) + 14711) | 0x1802) - 22503)) ^ v2)))();
}

uint64_t sub_100729F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = v63 & (v62 + 1);
  v65 = (v63 ^ 0xA3AF156F) << (((v60 + 67) & 0xFC) + 45);
  v66 = (v65 ^ 0x1C8C2D4C) & (v63 ^ 0xA3AF156F) ^ v65 & 0xE4616A6;
  v67 = v66 ^ 0x24212A2;
  v68 = (v66 ^ 0xC060484) & (4 * ((2 * v64) & (v63 ^ 0xA9ED13ED) ^ v64)) ^ (2 * v64) & (v63 ^ 0xA9ED13ED) ^ v64;
  v69 = ((4 * v67) ^ 0x39185A98) & v67 ^ (4 * v67) & 0xE4616A4;
  v70 = (v69 ^ 0x8001280) & (16 * v68) ^ v68;
  v71 = ((16 * (v69 ^ 0x6460426)) ^ 0xE4616A60) & (v69 ^ 0x6460426) ^ (16 * (v69 ^ 0x6460426)) & 0xE4616A0;
  v72 = v70 ^ 0xE4616A6 ^ (v71 ^ 0x4400200) & (v70 << 8);
  v73 = (4 * ((v72 << 16) & 0xE460000 ^ v72 ^ ((v72 << 16) ^ 0x16A60000) & (((v71 ^ 0xA061486) << 8) & 0xE460000 ^ 0x8400000 ^ (((v71 ^ 0xA061486) << 8) ^ 0x6160000) & (v71 ^ 0xA061486)))) ^ (4 * (v63 >> 1));
  v74 = ((2 * (v63 ^ 0x19DADE5E)) ^ 0x6867BB2E) & (v63 ^ 0x19DADE5E) ^ (2 * (v63 ^ 0x19DADE5E)) & 0xB433DD96;
  v75 = v74 ^ 0x94104491;
  v76 = (v74 ^ 0x20305994) & (4 * ((2 * v64) & (v63 ^ 0x9C8DBCC) ^ v64)) ^ (2 * v64) & (v63 ^ 0x9C8DBCC) ^ v64;
  v77 = ((4 * v75) ^ 0xD0CF765C) & v75 ^ (4 * v75) & 0xB433DD94;
  v78 = (v77 ^ 0x90035410) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0x24308983)) ^ 0x433DD970) & (v77 ^ 0x24308983) ^ (16 * (v77 ^ 0x24308983)) & 0xB433DD90;
  v80 = v78 ^ 0xB433DD97 ^ (v79 ^ 0x31D900) & (v78 << 8);
  v81 = v63 ^ (2 * ((v80 << 16) & 0x34330000 ^ v80 ^ ((v80 << 16) ^ 0x5D970000) & (((v79 ^ 0xB4020487) << 8) & 0x34330000 ^ 0x4220000 ^ (((v79 ^ 0xB4020487) << 8) ^ 0x33DD0000) & (v79 ^ 0xB4020487))));
  v82 = ((2 * (v63 ^ 0x18BE5562)) ^ 0x6AAEAD56) & (v63 ^ 0x18BE5562) ^ (2 * (v63 ^ 0x18BE5562)) & 0xB55756AA;
  v83 = (v82 ^ 0x20154481) & (4 * ((2 * v64) & (v63 ^ 0x9EC53E0) ^ v64)) ^ (2 * v64) & (v63 ^ 0x9EC53E0) ^ v64;
  v84 = ((4 * (v82 ^ 0x955152A9)) ^ 0xD55D5AAC) & (v82 ^ 0x955152A9) ^ (4 * (v82 ^ 0x955152A9)) & 0xB55756A8;
  v85 = (v84 ^ 0x955552A0) & (16 * v83) ^ v83;
  v86 = ((16 * (v84 ^ 0x20020403)) ^ 0x55756AB0) & (v84 ^ 0x20020403) ^ (16 * (v84 ^ 0x20020403)) & 0xB55756A0;
  v87 = v85 ^ 0xB55756AB ^ (v86 ^ 0x15554200) & (v85 << 8);
  v88 = (v87 << 16) & 0x35570000 ^ v87 ^ ((v87 << 16) ^ 0x56AB0000) & (((v86 ^ 0xA002140B) << 8) & 0x35570000 ^ 0x20010000 ^ (((v86 ^ 0xA002140B) << 8) ^ 0x57560000) & (v86 ^ 0xA002140B));
  v89 = (v81 ^ 0xC68336E1 ^ ((v73 ^ 0x7AD25D08) - 2 * ((v73 ^ 0x7AD25D08) & 0x54D471FC ^ v73 & 4) - 724274696)) + ((2 * ((v73 ^ 0x7AD25D08) & (v81 ^ 0xB04490C) ^ v73 & 0x19530E14)) ^ 0x30A41800);
  v90 = *(a43 + (v63 ^ (2 * v88) ^ 0x10BE5165) + ((2 * (((v63 ^ 0x6F7DF78D) + 1117058118) ^ v63 ^ ((v63 ^ 0x36267AD8) + 466581777) ^ ((v63 ^ 0x54B08F95) + 2035911774) ^ ((v63 ^ 0x5FFDFEF6) + 1913978176))) & 0xFFFFFFF4 ^ 0xA42DF864));
  return (*(a60 + 8 * v60))((v90 ^ 0x79) + ((2 * v90) & 0xFFFFFFF3), v63 - 8, a3, a4, (*(a43 + v61) ^ 0xFFFFFFB3) + ((2 * *(a43 + v61)) & 0x66) + 79, (((2 * *(a43 + v89)) & 0xFFF4) + (*(a43 + v89) ^ 0xFFFFFFFA)) ^ 0xFFFFFF80, a7, 4294967290, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_10072A598(uint64_t a1)
{
  LODWORD(STACK[0x4418]) = LODWORD(STACK[0x53F8]) | LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x46F0]) = LODWORD(STACK[0x53C0]) | LODWORD(STACK[0x53C8]);
  return (*(STACK[0x57D8] + 8 * v1))(a1, STACK[0x53B8] & (v2 ^ 0xD3C3B1C1));
}

uint64_t sub_10073CA30()
{
  v8 = (((v3 + 834699385) | 0x86100301) ^ (v1 - 1) ^ (v2 - v0)) + v3;
  *(v4 + v2) = (((-(v8 ^ (v3 + v6)) | v8) & 0x8000000000000000) != 0) ^ *(&STACK[0x1428] + v5) ^ v3 & 0x41 ^ 1;
  return (*(v7 + 8 * (v3 + 8666)))();
}

uint64_t sub_10073CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 - 71509239 + ((v5 - 1382745778) | 0x5004u);
  v8 = *(a4 + 24 * v7) - v6;
  return (*(STACK[0x57D8] + 8 * ((18500 * (((((v8 - v5) | (v5 - v8)) >> (((v5 + 63) | 0x10) ^ 0x4C)) & 1) == 0)) ^ (v5 - 1382738421))))(v7);
}

uint64_t sub_10073CB44(uint64_t a1)
{
  v2 = STACK[0x6760];
  v3 = STACK[0x878C];
  v4 = STACK[0xA7F8];
  LOBYTE(STACK[0x6013]) = 38;
  STACK[0xA6A0] = v2;
  LODWORD(STACK[0x8A2C]) = v3;
  STACK[0x6E28] = v4;
  STACK[0x5908] = &STACK[0xB530];
  STACK[0x8E78] = &STACK[0x93D8];
  LODWORD(STACK[0x9058]) = 2048;
  LODWORD(STACK[0xCF24]) = -1060642909;
  return (*(STACK[0x57D8] + 8 * (v1 - 16529)))(a1, &STACK[0x1D270], &STACK[0x67A7]);
}

uint64_t sub_10073CC60@<X0>(int a1@<W8>)
{
  STACK[0xCFE0] = v1;
  STACK[0x98C0] = v1 + (v2 ^ 0xF9D1F360) + a1;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x185F)))();
}

uint64_t sub_10073CCB8(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v19 = ((((6617 * (v9 ^ 0x5852)) ^ 0x679B) & (v13 ^ a8)) >> v14) ^ (((v13 ^ a8) & v15) << v17);
  v20 = a3 & (4 * ((v19 ^ (2 * (v19 & v16))) & v16)) ^ v19 ^ (2 * (v19 & v16));
  v21 = *((v20 ^ 0x9A0 ^ (16 * (v20 & v16)) & (4 * (v16 & a4)) & a5) + v18 + 2845) ^ 0x82;
  HIDWORD(v22) = v11;
  LODWORD(v22) = v21 << 24;
  v23 = 16 * ~*(v18 + ((v22 >> 28) ^ 0xBAu) + 260);
  LOBYTE(v21) = (*((((v21 & 0xF) + v10) ^ 0x2C) + v18 + 2584) ^ 0x98) & ~v23 | v23 & 0xDF;
  v24 = *(v18 + (v21 ^ 0x38u) + 22879);
  LOBYTE(v21) = (((v24 ^ 0x63) - 99) ^ ((v24 ^ 0x2F) - 47) ^ ((v24 ^ 0x49) - 73)) - (((v21 ^ 0x86) - 102) ^ ((v21 ^ 0xBE) - 94) ^ ((v21 ^ 0xCA) - 42)) + 55;
  v25 = v21 & 0x7E ^ 0xE1;
  v26 = v21 ^ 0x3C;
  v27 = (v21 ^ (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v25 ^ v21 & 2)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xD1;
  *(STACK[0x8070] + v12 % 0x3282) = *(STACK[0x8070] + 12337 * v27 - 12930 * (((1328683 * (12337 * v27)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((30989 * (v13 == 255)) ^ v8)))();
}

uint64_t sub_10073CED0(uint64_t a1)
{
  v2 = *(a1 + 12) + 1917435887 * ((((2 * a1) | 0xD6C0ADBA) - a1 + 346007843) ^ 0xDDB0DDB);
  result = (*(*(&off_101353600 + v2 + 1094299886) + 8 * (v2 ^ 0xBEC628B3) - 4))((*a1 + 1917435887 * ((((2 * a1) | 0x1ECEB161D6C0ADBALL) - a1 - 0xF6758B0EB6056DDLL) ^ 0xDA6C344E0DDB0DDBLL)) ^ 0xD7BE03F09B221367);
  *(a1 + 8) = result - ((2 * result) & 0x39137AB8) - 1668694692;
  return result;
}

uint64_t sub_10073CFFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v5)
  {
    v6 = *a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a4 + 8 * ((v7 * (13859 * (v4 ^ 0x1639) - 27712)) ^ v4)))();
}

uint64_t sub_10073D440@<X0>(int a1@<W8>)
{
  v2 = *(v1 - 0x30BDFED8F32E6551);
  v3 = ((3 * (a1 ^ 0x6743u)) ^ 0x37BDCB51CDBED506) + *STACK[0x40E8];
  v4 = v3 < 0xBD0786E0;
  v5 = v2 + 3171387104u < v3;
  if (v2 > ((73 * (a1 ^ 0x7BB3u)) ^ 0xFFFFFFFF42F8170DLL) != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(STACK[0x57D8] + 8 * (a1 + 8 * !v6)))();
}

uint64_t sub_10073D4E8()
{
  v0 = STACK[0x3A04];
  v1 = (LODWORD(STACK[0x3A04]) - 819236792) & 0x30D4C9ED;
  v2 = STACK[0x57D8];
  STACK[0x8690] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3A04]));
  return (*(v2 + 8 * ((v1 ^ 0x5881) + v0)))();
}

uint64_t sub_10073D604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v65 = *(&a61 + (1633 * a7 + 2129432) % 0xA88u);
  v66 = *(a5 + 4 * ((3677 * (v65 | ((v65 < 0x5F) << 8)) + 18624005) % (((v61 - 1288) | 0x1044) ^ 0x2685u)));
  v67 = ((v66 ^ 0xD4CC5A98) + 1533734921) ^ ((v66 ^ 0xEFA4D522) + 1610776499) ^ ((v66 ^ 0x3B688FC8) - 1261558439);
  LOBYTE(v66) = *(&a61 + (1633 * (((HIBYTE(v66) ^ 0x8E7FAC05) - 97241724) ^ ((HIBYTE(v66) ^ 0x807B0F53) - 198142250) ^ ((HIBYTE(v66) ^ 0xE04A3A3) + 2052012582)) + 704426362) % 0xA88);
  LOBYTE(v65) = *(&a61 + (1633 * v67 - 1441629077) % 0xA88);
  v68 = *(&a61 + (1633 * (((BYTE1(v66) ^ 0x34DB3CE7) - 1046149752) ^ ((BYTE1(v66) ^ 0xCA1D7D39) + 1063470170) ^ ((BYTE1(v66) ^ 0xFEC64113) + 196638836)) + 101490560) % 0xA88);
  LOBYTE(v67) = (v66 & 0xA1 | 0x54) ^ v66 & 0xE8;
  v69 = *(&a61 + (1633 * (((BYTE2(v66) ^ 0x7FBEA77E) - 546471917) ^ ((BYTE2(v66) ^ 0xF2662543) + 1387594288) ^ ((BYTE2(v66) ^ 0x8DD882C9) + 755738022)) + 491452277) % 0xA88);
  v70 = v69 & 0x11 ^ 0x78;
  v71 = v69 ^ (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * (((2 * v69) & 0xC2 | 0x21) & v69)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70));
  v72 = (v68 & 0xFFFFFFA1 | 0x52) ^ v68 & 0xFFFFFFE4;
  v73 = (v66 ^ 0x20) & (2 * ((v66 ^ 0x20) & (2 * ((v66 ^ 0x20) & (2 * ((v66 ^ 0x20) & (2 * (v66 & (2 * (v66 & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67;
  v74 = v71;
  v75 = (((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * (v68 & (2 * (v68 & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72) << 25) ^ (v68 << 24);
  v76 = (v66 ^ (2 * v73));
  HIDWORD(v77) = ~v68;
  LODWORD(v77) = v75;
  v78 = (v77 >> 25) ^ 0xFFFFFF87;
  v79 = v78 >> 4;
  v80 = ((v76 << 16) ^ 0x27B5843B) & ~(v74 << 8) | (v74 << 8) & 0x7B00;
  HIDWORD(v77) = v79 ^ 2;
  LODWORD(v77) = ((v79 | (16 * v78)) ^ 0x58) << 24;
  LOBYTE(v79) = v65 & 0x99 ^ 0xBC;
  v81 = v65 ^ (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * (((2 * v65) | 0x21) & v65)) ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79));
  *(a5 + 4 * (v63 + 3677 * a7 - ((((v63 + 3677 * a7) * v62) >> 32) >> 12) * v64)) = (((((((v77 >> 27) + 8519792 - ((2 * (v77 >> 27)) & 0x18) + 668) ^ 0xD5EC59) & (v80 ^ 0x36AC4) ^ v80 & 0xA81008) << 8) ^ 0x58D05A7) & (v81 ^ 0xFFFFFF26) | v81 & 0x58) ^ 0xF8695CD;
  return (*(a60 + 8 * ((29750 * (a7 == 255)) ^ v61)))();
}

uint64_t sub_10073DA70(uint64_t a1)
{
  v2 = 1917435887 * ((2 * (a1 & 0x36523A58) - a1 - 911358553) ^ 0x2F169EA1);
  v3 = *a1 - v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  v6 = ((*(a1 + 16) - v2) ^ 0xFAF6FBF7) + ((2 * (*(a1 + 16) - v2)) & 0xF5EDF7EE);
  v7 = 800103191 * ((((2 * &v9) | 0xE5430AC0) - &v9 - 1923188064) ^ 0x3E5C803);
  v10 = *(a1 + 8);
  v12 = v7 ^ (v3 - 194275455);
  v13 = v4;
  v14 = v5;
  v9 = v6 - v7 + 1335746048;
  result = (*(*(&off_101353600 + v3 - 194287881) + 8 * (v3 ^ 0xB94E298) - 4))(&v9);
  *(a1 + 32) = v11 - 319206056;
  return result;
}

uint64_t sub_10073DBE8(uint64_t a1)
{
  v1 = *(a1 + 3412);
  *(a1 + 3416) = v1;
  *(a1 + 3420) = (v1 - 1412131769) & 0x542B4F9E;
  *(a1 + 3424) = (v1 - 436265658) & 0x5BFF97FF;
  *(a1 + 3184) = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3392) + 12;
  v2 = STACK[0x57D8];
  *(a1 + 3168) = *(STACK[0x57D8] + 8 * (v1 + 6623));
  return (*(v2 + 8 * (v1 ^ 0x192D)))();
}

uint64_t sub_10073DC70()
{
  v2 = STACK[0x1C4C];
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + STACK[0x51B8];
  STACK[0x1D4D8] = v0 + v3;
  LODWORD(STACK[0x1D4C8]) = v2 - v3 - 2879;
  LODWORD(STACK[0x1D4D4]) = v2 ^ v3;
  STACK[0x1D4C0] = v3 ^ 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0x1D4E0]) = (v2 | 0x14) + v3;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_10073DD30(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_10073DD50()
{
  v2 = STACK[0x958];
  STACK[0x480] = STACK[0x958];
  return (*(v1 + 8 * ((49 * (*(v2 - 0x2369327399A66D91) != ((v0 - 11979) ^ 0x7B5D) - 22092)) ^ v0)))();
}

uint64_t sub_10073DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = STACK[0xFDC4];
  LODWORD(STACK[0x5228]) = LODWORD(STACK[0x5228]) | ((a6 + LODWORD(STACK[0x56E0])) << 8);
  LODWORD(STACK[0x51B0]) = v15 - 854350731;
  LODWORD(STACK[0x50C0]) = LODWORD(STACK[0x57A0]) + LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x57A0]) = v13;
  LODWORD(STACK[0x5780]) = (v14 + v12) << 8;
  v16 = *(STACK[0x57D8] + 8 * v11);
  LODWORD(STACK[0x50D8]) = v8 | (((v7 | (v6 << 16)) + v9) << 8);
  return v16(a1, a2, a3, a4, a5, v10 << 16);
}

uint64_t sub_10073DE98()
{
  v3 = 97 * (v0 ^ 0x2D42);
  v4 = (*(v2 + 8 * (v3 ^ 0x3243)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v3))(v4);
}

uint64_t sub_10073DED4(uint64_t a1)
{
  v2 = *(a1 + 8) ^ (1089234077 * ((-2 - ((a1 | 0x5DEAC459) + (~a1 | 0xA2153BA6))) ^ 0x4248E7DE));
  result = (*(*(&off_101353600 + v2 - 1518585633) + 8 * (v2 ^ 0x5A83B03B) - 4))(@"UniqueChipID", 0);
  *a1 = result - ((2 * result) & 0xE7C423F31E3CA084) - 0xC1DEE0670E1AFBELL;
  return result;
}

uint64_t sub_10073DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  v11 = (v9 ^ 0x1835) - 17423;
  LODWORD(STACK[0x3A28]) = v11;
  v12 = *(v10 + 8 * ((55 * (v6 < (v11 ^ 0x1136u))) ^ (v9 + 10729)));
  LODWORD(STACK[0x36E0]) = STACK[0x3900];
  STACK[0x3A50] = STACK[0x20D8];
  STACK[0x3A38] = STACK[0x20E0];
  STACK[0x3A70] = STACK[0x20E8];
  STACK[0x3A88] = STACK[0x20F0];
  STACK[0x3A80] = STACK[0x34E0];
  STACK[0x3A58] = STACK[0x20F8];
  STACK[0x3A78] = STACK[0x34E8];
  STACK[0x39A8] = STACK[0x3530];
  v13 = STACK[0x3AA8];
  STACK[0x3998] = STACK[0x34F0];
  STACK[0x3950] = STACK[0x3858];
  STACK[0x39A0] = STACK[0x34F8];
  v14 = STACK[0x39F0];
  STACK[0x3558] = STACK[0x3508];
  STACK[0x3AC8] = STACK[0x3500];
  STACK[0x3AE8] = STACK[0x2100];
  v15 = STACK[0x3AB8];
  STACK[0x3A48] = STACK[0x2108];
  STACK[0x3948] = STACK[0x3868];
  STACK[0x3AD0] = STACK[0x3510];
  STACK[0x3940] = STACK[0x3870];
  STACK[0x3A40] = STACK[0x2110];
  STACK[0x3A90] = STACK[0x2118];
  v16 = STACK[0x39D0];
  STACK[0x3A30] = STACK[0x2120];
  STACK[0x3AA0] = STACK[0x2128];
  return v12(v13, v14, v15, a4, a5, v8, v7, v16);
}

uint64_t sub_10073E0FC@<X0>(unsigned int a1@<W2>, unsigned int a2@<W8>)
{
  v5 = v4 < a2;
  if (v5 == a1 < a2)
  {
    v5 = a1 < v4;
  }

  return (*(STACK[0x2D0] + 8 * ((v3 + v2) | (8 * v5))))();
}

uint64_t sub_10073E210()
{
  v3 = STACK[0xEA0];
  STACK[0x1450] = STACK[0xE08];
  STACK[0xF90] = v3;
  return (*(v2 + 8 * (((v3 == 0x683CBC57EAB92A3ELL) * ((v0 - 9618) ^ 0xB7D0C5BE ^ (v1 - 16))) ^ v0)))();
}

void sub_10073E274()
{
  v0 = __chkstk_darwin();
  v1 = 1089234077 * ((~v0 & 0x23FDA966 | v0 & 0xDC025699) ^ 0xC3A0751E);
  v2 = *(v0 + 16) + v1;
  v3 = *(v0 + 32);
  v4 = *(v0 + 20) ^ v1;
  v5 = *(&off_101353600 + (v2 ^ 0x693E)) - 4;
  (*&v5[8 * (v2 ^ 0x1033)])(v18, 0, 296);
  v6 = -1308209611 * v4 - 1119351747;
  v7 = (v6 ^ 0xC3D0FC27) & (2 * (v6 & 0xE3D2FD37)) ^ v6 & 0xE3D2FD37;
  v8 = ((2 * (v6 ^ 0x81F0662F)) ^ 0xC4453630) & (v6 ^ 0x81F0662F) ^ (2 * (v6 ^ 0x81F0662F)) & 0x62229B18;
  v9 = v8 ^ 0x22228908;
  v10 = (v8 ^ 0x1010) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x888A6C60) & v9 ^ (4 * v9) & 0x62229B18;
  v12 = (v11 ^ 0x20808) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x62209318)) ^ 0x2229B180) & (v11 ^ 0x62209318) ^ (16 * (v11 ^ 0x62209318)) & 0x62229B10;
  v14 = v12 ^ 0x62229B18 ^ (v13 ^ 0x22209100) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x62220000 ^ v14 ^ ((v14 << 16) ^ 0x1B180000) & (((v13 ^ 0x40020A18) << 8) & 0x62220000 ^ 0x40200000 ^ (((v13 ^ 0x40020A18) << 8) ^ 0x229B0000) & (v13 ^ 0x40020A18))));
  if (v3)
  {
    v16 = (((v15 ^ 0x92E95B6D) + 1314969315) ^ ((v15 ^ 0x66B69E18) - 1170271336) ^ ((v15 ^ 0xD7C80E72) + 188843006)) == -14793047;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10073E534()
{
  v4 = (v0 + 1717162936) ^ (1964904101 * ((&v4 - 1042797165 - 2 * (&v4 & 0xC1D82D93)) ^ 0x3BFAC617));
  v5 = v1;
  return (*(v2 + 8 * (v0 + 23501)))(&v4);
}

uint64_t sub_10073E5CC()
{
  v3 = *(v0 + 776);
  v4 = *STACK[0x51F0];
  v5 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v4 + (((v3 & 0xFFFFFFF8) - 1831847764) & v5));
  v7 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = __ROR8__((((2 * (v7 + v6)) | 0x1BD2596EB1D28270) - (v7 + v6) + 0x7216D348A716BEC8) ^ 0x4F46121D6718F9DCLL, 8);
  v9 = (((2 * (v7 + v6)) | 0x1BD2596EB1D28270) - (v7 + v6) + 0x7216D348A716BEC8) ^ 0x4F46121D6718F9DCLL ^ __ROR8__(v6, 61);
  v10 = (((2 * (v8 + v9)) | 0x3748D5290A7D018ALL) - (v8 + v9) + 0x645B956B7AC17F3BLL) ^ 0xFE563E499DB33439;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x6FF046966119128DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ v2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0xDA073F72C889B708) - (v18 + v17) + 0x12FC60469BBB247CLL) ^ 0x35C42CA6AE5D025ALL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  LODWORD(v21) = 5621 * ((((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 32028458;
  LODWORD(v8) = v21 - 6152 * (((89362129 * v21) >> 32) >> 7);
  v22 = STACK[0xDCB8];
  *(v22 + 2511) = *(v22 + v8);
  v23 = STACK[0xDCA8] + 5;
  v24 = *(v4 + (((v23 & 0xFFFFFFF8 ^ 0x5E0D813E) - 2133772117 + ((2 * (v23 & 0xFFFFFFF8)) & 0xBC1B0270)) & v5));
  v25 = (__ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ 0x91364DCB68334DBLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x448D6F6CA711D855;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((((2 * (v29 + v28)) & 0xFC2AFBC81606F3F0) - (v29 + v28) + 0x1EA821BF4FC8607) ^ 0xF4187CC8FC56A47FLL, 8);
  v31 = (((2 * (v29 + v28)) & 0xFC2AFBC81606F3F0) - (v29 + v28) + 0x1EA821BF4FC8607) ^ 0xF4187CC8FC56A47FLL ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0x67536EC0FB8B549DLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0xEB66EBDA2DE428A4) - (v34 + v33) - 0x75B375ED16F21453) ^ 0x72CBCF4C611D61A1;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x24734B65A1E08459;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0x1C2E3D89607B971ELL) + 0xE171EC4B03DCB8FLL) ^ 0x4EDED12E8CF8006ELL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  LODWORD(v41) = 5621 * ((((((2 * (v42 + v41)) & 0xA8021F70D6FD45E2) - (v42 + v41) + 0x2BFEF04794815D0ELL) ^ 0x449DAC6971568FC8) >> (8 * (v23 & 7u))) ^ *v23) + 32028458;
  *(v22 + 2693) = *(v22 + v41 - 6152 * (((89362129 * v41) >> 32) >> 7));
  v43 = STACK[0xDCA0];
  *(v0 + 784) = STACK[0xDCA0];
  v43 += 15;
  *(v0 + 296) = v43;
  v44 = STACK[0x57D8];
  v45 = *(STACK[0x57D8] + 8 * (v1 ^ 0x2F08));
  *(v0 + 792) = v43;
  *(v0 + 280) = v45;
  return (*(v44 + 8 * (STACK[0x4D40] ^ 0x15E8)))();
}

uint64_t sub_10073EA64@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xC210] = *(STACK[0x57D8] + 8 * (a1 - 24981));
  return (*(v1 + 8 * (((14891 * ((a1 - 24981) ^ 0x4C1)) ^ 0x682F) + a1 - 24981)))();
}

uint64_t sub_10073EB34(int a1, uint64_t a2)
{
  v7 = v3 ^ 0x1791;
  v8 = ((v3 ^ 0x91) - 82) & 0xAF;
  LODWORD(STACK[0x3220]) = LODWORD(STACK[0x4E18]) + LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x4C68]) = v2 | LODWORD(STACK[0x4E00]);
  LODWORD(STACK[0x321C]) = v5 & (v4 ^ 0xCCF17434);
  LODWORD(STACK[0x4E00]) = a1 & (v6 ^ 0xB38CA393);
  v9 = *STACK[0x5338];
  v10 = *STACK[0x54D0];
  v11 = *STACK[0x4FC8];
  v12 = *STACK[0x4AB8];
  v13 = v8 ^ 0xA0 | v10 & 0xE4;
  v14 = v13 ^ v10 & 0xE;
  v15 = (v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * (v10 & (2 * v13) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14;
  v16 = (v11 & 0xE4 | 0x10) ^ v11 & 0xE0;
  v17 = (((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 4) << 8) | (((v10 ^ (2 * v15)) ^ 0xEA) << 16);
  v18 = v12 & 0x4E ^ 0xF5;
  v19 = (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v18 ^ v12 & 0xAA)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x700B0A) & ~v17 | v17 & 0x8FF400) << 8;
  v20 = v9 & 0xD0 ^ 0x3E;
  v21 = (v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)));
  LODWORD(STACK[0x31F8]) = v19 ^ 0x384B9FF;
  LODWORD(STACK[0x55A0]) = v19 & 0xAC784600;
  v22 = *STACK[0x50C8];
  LOBYTE(v19) = *STACK[0x5310];
  v23 = v19 & 0xA8 ^ 0xE2;
  LODWORD(STACK[0x3200]) = v21;
  v24 = (v21 << 8) & 0xFF00FFFF | (((v19 ^ (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x44) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xA8) << 16);
  LOBYTE(v17) = v22 & 0xB4 ^ 0x68;
  v25 = *STACK[0x5348];
  v26 = *STACK[0x4A90];
  LODWORD(STACK[0x3210]) = *STACK[0x5560];
  v27 = *STACK[0x50C0];
  LODWORD(STACK[0x3208]) = *STACK[0x52D0];
  LODWORD(STACK[0x3218]) = *STACK[0x5248];
  LODWORD(STACK[0x3214]) = *STACK[0x54B0];
  LODWORD(STACK[0x325C]) = *STACK[0x50F0];
  LODWORD(STACK[0x4B80]) = *STACK[0x5120];
  LODWORD(STACK[0x4B60]) = *STACK[0x4F00];
  LODWORD(STACK[0x4B58]) = *STACK[0x5368];
  LOBYTE(v21) = v25 & 0xB2 ^ 0xEF;
  v28 = v25 ^ 0x64;
  LODWORD(STACK[0x4DA8]) = *STACK[0x4B08];
  v29 = (((v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x8D2D6D) & ~v24 | v24 & 0x72D200) << 8;
  LODWORD(STACK[0x4DB8]) = *STACK[0x56E0];
  LODWORD(STACK[0x31E8]) = (v25 ^ (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v21 ^ v25 & 0x16)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)));
  LODWORD(STACK[0x4E18]) = v29 & 0xB7110600;
  LODWORD(STACK[0x31F0]) = v29 ^ 0x400220FF;
  v30 = *(STACK[0x57D8] + 8 * v7);
  LODWORD(STACK[0x4B78]) = *STACK[0x5090];
  LODWORD(STACK[0x4DA0]) = *STACK[0x5078];
  return v30(v27, a2, v26);
}

uint64_t sub_10073EFA0()
{
  LODWORD(STACK[0x870]) = 0;
  v2 = *(*STACK[0x710] + 4);
  v3 = (2 * v2) & 0xFFB6BFFE;
  v4 = STACK[0x678];
  v5 = (*(STACK[0x678] + 22) >> 1) | (*(STACK[0x678] + 22) << 7);
  v6 = ((*(STACK[0x678] + 53) - ((2 * *(STACK[0x678] + 53)) & 0x19A)) << 8) + 0x3B2C292F22A0CD00;
  v7 = STACK[0x670];
  STACK[0x6B0] = ((*(STACK[0x670] + 57) - ((2 * *(STACK[0x670] + 57)) & 0x48u) + 179) << 56) - 0xF00000000000000;
  v8 = ((*(STACK[0x718] + 36) - ((2 * *(STACK[0x718] + 36)) & 0x76u) + 13722997) << 40) - 0x3A0000000000;
  v9 = (v4[25] >> 5) | (8 * v4[25]);
  v10 = STACK[0x708];
  v11 = ((*(STACK[0x708] + 118) - ((2 * *(STACK[0x708] + 118)) & 0x192u) + 1909628922) << 32) - 0x3100000000;
  v12 = STACK[0x718];
  v13 = ((*(STACK[0x718] + 34) + (~(2 * *(STACK[0x718] + 34)) | 0xFFFFFFFF21)) << 24) - 0x7834031290000000;
  v14 = ((*(STACK[0x708] + 108) - ((2 * *(STACK[0x708] + 108)) & 0xA4u) + 39824) << 48) - 0x3E000000000000;
  v15 = v7[10];
  v16 = v4[41];
  LODWORD(STACK[0x890]) = v1 + 306287817;
  v17 = v2 ^ 0x7FDB5FFF;
  v18 = *(&off_101353600 + v1 + 1211071867);
  if (((*(v18 + 272 + ((v5 - ((2 * v5) & 0xEC) + 118) ^ 0x18) - ((2 * (v5 - ((2 * v5) & 0xFFEC) + 118)) & 0x18Eu) + 199) + ((v5 - ((2 * v5) & 0xEC) + 118) ^ 0x61)) & 0x40) != 0)
  {
    v19 = -64;
  }

  else
  {
    v19 = 64;
  }

  v20 = (-121 * ((v19 + *(v18 + 272 + ((v5 - ((2 * v5) & 0xEC) + 118) ^ 0x18) - ((2 * (v5 - ((2 * v5) & 0xFFEC) + 118)) & 0x18Eu) + 199) + ((v5 - ((2 * v5) & 0xEC) + 118) ^ 0x61)) ^ 0x80)) << 16;
  v21 = (v14 ^ 0x64ADFF0BDA165AACLL) & (v8 ^ 0x8FFFEC0BDA165AACLL);
  v22 = v15 - ((2 * v15) & 0x3A);
  v23 = v12;
  v24 = v20 & 0x2C0000 | ((v16 - ((2 * v16) & 0xA6) + 0x790C6A121154B753) & 0x20080010000000C7 ^ 0x4B51F36AF1FF0F29 ^ (v6 ^ 0x7A3F7ACC788C7238) & ((v16 - ((2 * v16) & 0xA6) + 0x790C6A121154B753) ^ 0x86F395EDEEAB486CLL)) & ~v20;
  v25 = v10[34];
  v26 = (v24 ^ 0x5420512654200AA9) & (v13 ^ 0xD1A98DDC6A711AE9) ^ v24 & 0xA99D8ECEFA8EE516;
  v27 = *(v18 + 540 + ((v9 - ((2 * v9) & 0xBC) + 94) ^ 0x7BLL));
  v28 = v7[27];
  v29 = v14 & 0x8165000000000000 ^ v21 ^ v26 & 0x331614A72B2580A0 ^ (v26 ^ 0x81950E4650084504) & (v11 ^ 0xBD3B7491D4DA7F5FLL) ^ 0x21312CF225EDA553;
  v30 = v7[2];
  v31 = v27 ^ 0x9C ^ (((16 * v27) ^ 0x10) - ((2 * ((16 * v27) ^ 0x10)) & 0x20) - 110);
  v32 = ((v4[49] - ((2 * v4[49]) & 0xFFFB)) << 24) + 0xA3B8F5EFD000000;
  v33 = v4[60];
  v34 = v4[68];
  LOBYTE(v21) = *(v18 + 540 + ((((*(v12 + 14) >> 5) | (8 * *(v12 + 14))) - ((*(v12 + 14) >> 4) & 0xC) + 6) ^ 0x23));
  v35 = v4[40];
  v36 = v4;
  v37 = v7[71] - ((2 * v7[71]) & 0xFF9Fu) + 93;
  v38 = v3 + v17 - 2145083391;
  STACK[0x880] = v38;
  v39 = v38 | (v37 << 56);
  v40 = ((v21 ^ (16 * v21) ^ 0x1E) - 1);
  v41 = ((v30 >> 1) | (v30 << 7)) + (~v30 | 0xFFFFFF93) - 73;
  v42 = ((v35 - ((2 * v35) & 0x118)) << 24) + 0x7B690D278C000000;
  v43 = (((v31 - 1) & 0x10 | (-v31 | 0xFFFFFFFFFFFFFF00) & (((v22 << 8) + 0x7AFACBE341BF1D00) ^ 0x19ECD1B1B882EFLL)) ^ 0x7AE32732F0079FEFLL) + (v40 << 16);
  v44 = v36[67];
  v45 = (v32 ^ 0xCE248D1921BE7E23) & ~v43 | v43 & 0x3BE0FDB8234181DCLL;
  v46 = v45 & 0x309AA59C74F0DAF2 ^ 0xCF7F5A67DFBF7F2FLL ^ (v45 ^ 0x3BE0FD200301010CLL) & ((((v33 - ((2 * v33) & 0x40u) + 8040524) << 40) - 0x2C0000000000) ^ 0xB5D57A638B0F250DLL);
  v47 = v46 - ((2 * v46) & 0x1E71FF0A68DEB82CLL) + 0xF38FF85346F5C16;
  v48 = (((v28 - ((2 * v28) & 0xD6u) - 1924628343) << 32) - 0x1E00000000) ^ 0x82707FEE346F5C16 ^ v47;
  v49 = v25 - ((2 * v25) & 0x14C) - 0x37845136AD92F75ALL;
  v50 = (((v41 ^ 0x32) + 99) ^ ((v41 ^ 0x2C) + 125) ^ ((v41 ^ 0xBF) - 16)) + *(v18 + 272 + (v41 ^ 0x1FLL)) + 107;
  LOBYTE(v25) = v50 & 0xC5 ^ 0x91;
  v51 = (((v34 - ((2 * v34) & 0xCu) + 8510) << 48) - 0x38000000000000) ^ 0x81667163C51AD1DLL ^ (v48 + 0x291067163C51AD1DLL - 2 * (v48 & 0x291067163C51AD3DLL ^ v47 & 0x20));
  v52 = ((v7[64] - ((2 * v7[64]) & 0xFFF3u) + 302824493) << 32) - 0x3400000000;
  v53 = (-121 * (v50 ^ (2 * ((v50 ^ 0x22) & (2 * ((v50 ^ 0x22) & (2 * ((v50 ^ 0x22) & (2 * ((v50 ^ 0x22) & (2 * ((v50 ^ 0x22) & (2 * ((((2 * v50) & 0x46 ^ 0x66) & 0x22 | v25) ^ ((2 * v50) & 0x46 ^ 0x66) & v50)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ 5));
  v54 = ((*(v12 + 22) - ((2 * *(v12 + 22)) & 0x162)) << 8) + 0x7D67503E9B01B100;
  v55 = ((v7[40] - ((2 * v7[40]) & 4u) + 64) << 56) - 0x3E00000000000000;
  v56 = v10[88];
  v57 = v7[74] - ((2 * v7[74]) & 0x128) + 0x190619FBF70C0594;
  v58 = ((v7[29] - ((2 * v7[29]) & 0xCu) + 35340) << 48) - 0x6000000000000;
  v59 = ((v7[60] - ((2 * v7[60]) & 0x19A)) << 16) - 3473408;
  STACK[0x6C0] = v0;
  v60 = (v49 & 0x2020010080D7CLL ^ 0x679008E1EC01A20ELL ^ ((v53 << 8) ^ 0x478C8C649414283) & (v49 ^ 0x668040178B80F701)) & ((v59 - 0x3E9E29E5AFFE0000) ^ 0x3E9E29E5B032FFFFLL) ^ (v59 - 0x3E9E29E5AFFE0000) & 0x800114184AB70000;
  v61 = (v60 ^ 0x1C1429C000101754) & (v42 ^ 0x5ED5EFA80D555F5CLL) ^ v60 & 0xDA431D707EAAA0A3;
  v62 = (v54 ^ 0x9E4EB2E6CAB8E123) & (v57 ^ 0xE6F9E60408F3FABBLL) ^ v57 & 0x18000001A00407DCLL;
  LOBYTE(v54) = ((v44 >> 5) | (8 * v44)) - 2 * (((v44 >> 5) | (8 * v44)) & 0x1F) - 97;
  v63 = ((v56 - ((2 * v56) & 0x88888888) + 4983631) << 40) - 0xB0000000000;
  v64 = ((v7[28] - ((2 * v7[28]) & 0x168u) + 1898982) << 40) - 0x320000000000;
  v65 = ((v7[59] - ((2 * v7[59]) & 0xB4)) << 16) + 0x39166968775A0000;
  v66 = v61 & 0x722AC525F93057DLL ^ 0xFFFFF7BFFFFDFFFFLL ^ (v61 ^ 0x1800094000200002) & (v52 ^ 0xEAD1E854A06CFA82);
  v67 = v36;
  LODWORD(v57) = v36[48];
  v68 = *(v23 + 39);
  v69 = v36[24] - ((2 * v36[24]) & 0x4C);
  LODWORD(v54) = *(v18 + 540 + (v54 ^ 0xBALL));
  v70 = v54 - (((v54 ^ 0x38) + 106) ^ ((v54 ^ 0xFFFFFF93) - 61) ^ ((v54 ^ 0xFFFFFFAA) - 4)) + 115;
  LODWORD(v36) = v70 & 0x1C | 0xFFFFFFA3;
  LODWORD(v23) = v70 ^ (2 * ((v70 ^ 0x5E) & (2 * ((v70 ^ 0x5E) & (2 * ((v70 ^ 0x5E) & (2 * ((v70 ^ 0x5E) & (2 * ((v70 ^ 0x5E) & (2 * ((v70 ^ 0x5E) & 2 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  v71 = v64 ^ 0x1CF9B40000000000;
  v72 = v66 ^ -v66 ^ ((v64 ^ 0x1CF9B40000000000) - (v64 ^ 0xE8C3559C49BE5723 ^ (v66 - ((2 * v66) & 0x6875C338937CAE46) - 0xBC51E63B641A8DDLL)));
  LODWORD(v66) = v54 + (((v23 ^ 0x3A) + 26) ^ ((v23 ^ 9) + 43) ^ ((v23 ^ 0xFFFFFFD1) - 13)) + 92;
  LODWORD(v54) = v66 & 0xFFFFFF82 ^ 0xFFFFFFD0;
  LODWORD(v54) = v66 ^ (2 * ((v66 ^ 0x60) & (2 * ((v66 ^ 0x60) & (2 * ((v66 ^ 0x60) & (2 * ((v66 ^ 0x60) & (2 * ((v66 ^ 0x60) & (2 * v54) | v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54));
  v73 = ((*v7 - ((2 * *v7) & 0x2Eu) + 179) << 56) - 0x1C00000000000000;
  v74 = (((v69 << 24) + 0x4B9C4E4726000000) ^ 0x36E206A375AC751) & (v62 ^ 0x4D61D260E67A248) ^ v62 & 0xB70D91D2EEA538AELL;
  LOBYTE(v62) = v54 ^ 0xEC ^ (((16 * v54) ^ 0x20) - ((((16 * v54) ^ 0x20u) >> 5) << 6) + 97);
  v75 = v72 + v71;
  LOBYTE(v71) = v62 - 1;
  v76 = ((v10[20] - ((2 * v10[20]) & 0xFFC7u) + 4823796) << 40) - 0x110000000000;
  v77 = v7[38] - ((2 * v7[38]) & 0x88) - 0x29E5D5B9CC9F51BCLL;
  v78 = v58 ^ 0xDBDA91B5CA88784CLL ^ (v75 + 0x51DC91B5CA88784CLL - 2 * (v75 & 0x51DC91B5CA88786FLL ^ v72 & 0x23));
  v79 = ((v63 ^ 0xD49AC5A339AC468BLL) & ~(v71 << 32) | (v71 << 32) & 0x5C00000000) ^ 0x989181A339AC468BLL | v74 & 0x7F8F01C6E357888DLL ^ 0xFBFBFEFDFDFFF7F7 ^ (v74 ^ 0x40411020E002000) & (v65 ^ 0xB96697516BF27772);
  v80 = v78 + 0x211B046CCC38D09CLL + (~(2 * v78) | 0xBDC9F726678E5EC9);
  v81 = ((v10[44] - ((2 * v10[44]) & 0x10u) + 176) << 56) - 0x2800000000000000;
  v82 = ((v76 ^ 0x822010C000000000) & ((v77 << 32) ^ 0xB05A3F8000000000) ^ v76 & 0x48856E0000000000) >> 38;
  v83 = v68 + 0x53EB41943E39D3C6 + (~(2 * v68) | 0xFFFFFFFFFFFFFE75);
  v84 = ((((v7[39] - ((2 * v7[39]) & 0xE4)) << 8) + 0x6E8311FB66F47200) ^ 0x60D916B6AC99B271) & (v83 ^ 0xAC14BE6BC1C62C36) ^ v83 & 0x4181008010101F8ELL;
  v85 = (((v57 - ((2 * v57) & 0xFFFFFF07) + 10670) << 50) - 0xAC000000000000) & 0xAFFC000000000000 ^ 0x22D9E7CE6B85ECB3 ^ ((v82 ^ 0xFD111D028C901430) & ((v77 << 58) ^ 0xC5111D028F9ADCB6) | v82 & 0x652349);
  v86 = ((v84 & 0x2EC848D85718F96FLL ^ 0xDFFFB7EFFAFFD7F5 ^ (v84 ^ 0xB024F83225820400) & ((((v7[96] - ((2 * v7[96]) & 0x62)) << 16) - 0x607C303A9DCF0000) ^ 0x4EB478E2CAD60690)) + (v85 << 38)) ^ (v85 >> 26);
  v87 = (v86 - ((2 * v86) & 0xE8E79A853377F862) + 0x7473CD4299BBFC31) ^ (((v67[78] - ((2 * v67[78]) & 0x6Au) + 37181) << 48) - 0x8000000000000);
  v88 = (v39 - 0xE00000000000000) ^ 0x44AF28B3B51DC214 ^ (v51 - ((2 * v51) & 0x4AA84269EA15D790) + 0x25542134F50AEBC8);
  v89 = (v73 ^ 0x9700000000000000) + (v87 ^ 0xEB821E56E8854F08) + ((2 * ((v87 ^ 0x6B020A16C8850200) & (v73 ^ 0x86E0A16CCBF2246) ^ v87 & 0x1F6E0A16CCBF2246)) ^ 0xE9FBEBD26EF5FBFFLL) + 1;
  v90 = STACK[0x6B0] ^ v89 ^ 0xEA99C1A6698D3136 ^ (v29 - ((2 * v29) & 0x1D33834CD31A626CLL) + 0x4E99C1A6698D3136);
  v91 = v88 ^ v55 ^ v80;
  v92 = v90 - 0x755B71A0EDC3889 - ((2 * v90) & 0xF15491CBE2478EEELL);
  v93 = ((v81 & 0x7E00000000000000 ^ (v81 ^ 0x77FF883F9A3E80DDLL) & ((((v10[90] - ((2 * v10[90]) & 0x104u) + 28852) << 48) - 0x32000000000000) ^ 0xF19D883F9A3E80DDLL) ^ 0x891F883F9A7E80DDLL ^ v79) - (v65 & 0x400000)) ^ (v65 & 0x400000 | 0x4F7D037FD4B9C301);
  v94 = v93 ^ v89;
  v95 = v93 ^ v89 ^ 0xF8AA48E5F123C777;
  v96 = v89 ^ 0xF8AA48E5F123C777;
  v97 = v91 ^ 0x921B528371BD0659;
  v98 = (v91 ^ 0x921B528371BD0659) & (__ROR8__(__ROR8__(v88, 4) ^ 0x6122152E438A0894, 60) ^ 0xEDDEAD1BC75F76B9);
  v99 = v98 + (v92 ^ 0x60A07696747F926BLL);
  v100 = v98 & (v92 ^ 0x60A07696747F926BLL);
  v101 = (v94 ^ 0x755B71A0EDC3888) & (v92 ^ 0x60A07696747F926BLL);
  v102 = v91 ^ 0x6DE4AD7C8E42F9A6;
  v103 = v95 ^ (v92 ^ 0x9F5F89698B806D94) & v88;
  if (!(0x6EB4EC0ED640F700 * v53))
  {
    v96 = ~v93;
  }

  v104 = v99 - 2 * v100;
  v105 = v95 & v96 ^ v97;
  v106 = v104 ^ 0x632AD668E013C7D0 ^ v103;
  v107 = (v106 >> 19) & v106;
  v108 = v107 & 0x1DF3BE4598E5;
  v109 = v104 ^ v88 ^ v93 & v102;
  v110 = (v106 >> 19) | v106;
  v111 = v107 & 0x20C41BA671ALL ^ -(v107 & 0x20C41BA671ALL) ^ ((v110 & 0x853E20C41BA671ALL) - (v110 & 0x853E20C41BA671ALL ^ v107 & 0x20C41BA671ALL));
  v112 = v105 ^ 0x6E807D10291F7139;
  v113 = -(v105 ^ 0x6E807D10291F7139);
  v114 = v110 & 0xF7AC1DF3BE4598E5 ^ v108 ^ (v111 + (v110 & 0x853E20C41BA671ALL));
  v115 = (v105 ^ 0x6E807D10291F7139) >> 1;
  v116 = (v105 ^ 0x6E807D10291F7139) >> 6;
  v117 = v115 & 0x59C1EE47CA3ED8E8 ^ (v105 ^ 0x6E807D10291F7139) & 0xD9C1EE47CA3ED8E8;
  v118 = v105 & 2;
  v119 = (v105 ^ 0x6E807D10291F7139) << 58;
  v120 = v93 ^ v101 ^ v105 ^ 0x468584D5EEC58272;
  v121 = (v114 & 0x40 | (v106 << 45)) ^ v114 & 0xFFFFFFFFFFFFFFBFLL;
  if ((v115 & v118) != 0)
  {
    v122 = -v118;
  }

  else
  {
    v122 = v118;
  }

  v123 = (v112 ^ v113 ^ (v115 - ((v122 + (v115 & 0x263E11B835C12717)) ^ (v117 | v112 & 0x263E11B835C12715) | (v122 + (v115 & 0x263E11B835C12717)) & v117))) + v115;
  *(&v124 + 1) = v109 ^ 0x1829DBD49149AC6DLL;
  *&v124 = v109;
  v125 = (v124 >> 61) ^ v109 ^ 0x1829DBD49149AC6DLL ^ ((v109 ^ 0x1829DBD49149AC6DLL) >> 39) ^ ((v109 ^ 0x1829DBD49149AC6DLL) << 25);
  v126 = ((v123 ^ (v116 | (v112 << 63)) | v119) & 0x70F15162F27FC885 ^ v119 & v123 & 0x7000000000000000 | (v123 ^ (v116 | (v112 << 63))) & 0x8F0EAE9D0D80377ALL ^ v119 & 0x8FFFFFFFFFFFFFFFLL) ^ v125;
  v127 = v103 ^ 0x8717DFE2A3B1E3F2 ^ __ROR8__(v103 ^ 0x8717DFE2A3B1E3F2, 7) ^ ((v103 ^ 0x8717DFE2A3B1E3F2) >> 41) ^ ((v103 ^ 0x8717DFE2A3B1E3F2) << 23);
  v128 = v120 ^ __ROR8__(v120, 10) ^ __ROR8__(v120, 17);
  v129 = v128 ^ v127;
  v130 = v127 ^ (v106 << 36) ^ (v121 & 0x43D37C48A8B7737BLL ^ (v106 >> 28) & 0x8A8B7737BLL | v121 & 0xBC2C83B757488C84 ^ (v106 >> 28) & 0x757488C84);
  v131 = v128 & ~v126;
  v132 = v127 & ~v128;
  v133 = v126 & ~v125 ^ v130;
  v134 = v130 & ~v129 ^ v128;
  v135 = v126 ^ v132;
  v136 = v125 & ~v130 ^ v129;
  v137 = v136 ^ 0x56AAE6BF024184FFLL ^ v133;
  v138 = v125 ^ 0xE6CB410EAF9D375FLL ^ v131 ^ v133;
  v139 = v138 >> 61;
  v140 = (v135 + v134 - 2 * (v135 & v134)) ^ 0x3378C4AC0693E070;
  *(&v124 + 1) = v135;
  *&v124 = v135 ^ 0x15C7857573502C40;
  v141 = v124 >> 1;
  *(&v124 + 1) = v135;
  *&v124 = v135 ^ 0x15C7857573502C40;
  v142 = v141 ^ v135 ^ 0x15C7857573502C40 ^ (v124 >> 6);
  v143 = (v138 >> (v129 & 0x27) >> (v129 & 0x27 ^ 0x27)) ^ v138 ^ (((8 * v138) ^ (v138 << 25)) & 0xFFFFFFFFFFFFFFF8 | (v138 >> 61));
  v144 = v136 ^ 0x62C1F2A9E89E4C79 ^ __ROR8__(v136 ^ 0x62C1F2A9E89E4C79, 7) ^ ((v136 ^ 0x62C1F2A9E89E4C79) >> 41) ^ ((v136 ^ 0x62C1F2A9E89E4C79) << 23);
  v145 = v143 ^ v142;
  v146 = v144 ^ (v137 << 36) ^ ((v137 >> 28) | (v137 << 45)) ^ __ROR8__(__ROR8__(v137, 37) & 0xFFFFC00007FFFFFFLL ^ __ROR8__(v137, 18), 46);
  v147 = v140 ^ (v140 << 47) ^ ((v140 >> 10) ^ (v140 >> 17) | (v140 << 54));
  v148 = v147 & ~(v143 ^ v142);
  v149 = v142 & ~v143 ^ v146;
  v150 = (v147 ^ -v147 ^ (v144 - (v147 ^ v144))) + v144;
  v151 = v150 ^ v143 & ~v146;
  v152 = v150 & ~v147 ^ v145;
  v153 = v149 ^ 0x7D752DD7DCC251B6 ^ v151;
  *&v124 = __ROR8__(__ROR8__(v151, 2) ^ 0x995AC995C67D92E6, 62);
  v154 = v143 ^ 0xEEAFC2D3EC65C482 ^ v148 ^ v149;
  v156 = v124 ^ 0x37C19C5AFDF6200;
  v157 = v147 ^ 0xD8700A4CB46F51B0 ^ v146 & ~v150 ^ v152;
  v158 = (((v152 ^ 0xE7E200F443AAFCDFLL) << 58) | 0x39F8803D10EABF3) ^ ((v152 >> 6) | ((v152 ^ 0xE7E200F443AAFCDFLL) << 63)) ^ ((v152 ^ 0xE7E200F443AAFCDFLL ^ -(v152 ^ 0xE7E200F443AAFCDFLL) ^ (((v152 ^ 0xE7E200F443AAFCDFLL) >> 1) - (((v152 ^ 0xE7E200F443AAFCDFLL) >> 1) ^ v152 ^ 0xE7E200F443AAFCDFLL))) + ((v152 ^ 0xE7E200F443AAFCDFLL) >> 1));
  *(&v124 + 1) = v124;
  *&v124 = v124 ^ 0x37C19C5AFDF6200;
  v159 = v124 >> 7;
  v160 = v158 & 0xFFFFF7FFFFFFFFFFLL;
  v161 = v154 ^ (v154 >> 39) ^ (8 * v154) ^ (v154 << 25) ^ (113 * (*(v18 + 811 + ((v154 >> 58) & 0x38 ^ 0xF)) ^ (v154 >> 58) & 0x38 ^ 0xBD));
  v162 = v158 & 0x80000000000;
  if ((v162 & v161) != 0)
  {
    v162 = -v162;
  }

  v163 = (v162 + v161) ^ v160;
  v164 = ((v157 >> 17) | (v157 << 54)) ^ (v157 << 47) ^ (((v157 >> 10) ^ -(v157 >> 10) ^ (v157 - ((v157 >> 10) ^ v157))) + v157);
  v165 = v159 ^ v156 ^ (v156 >> 41) ^ (v156 << 23);
  v155 = ((v153 >> 19) & 0x84AC53A3626 ^ v153 & 0xAA88484AC53A3626 | (v153 >> 19) & 0x17B53AC5C9D9 ^ v153 & 0x5577B7B53AC5C9D9) ^ (v153 << 45);
  v166 = (v155 ^ (v153 >> 28) | (v153 << 36)) ^ v155 & (v153 << 36) ^ v165;
  v167 = v163 & ~v161 ^ v166;
  v168 = v164 & ~v163 ^ v161;
  v169 = v166 & ~(v164 ^ v165);
  v170 = v168 | v167;
  v171 = v164 ^ v165 ^ v161 & ~v166;
  v172 = v168 & v166;
  v173 = v167 ^ v171 ^ 0xC5AB08FD33C1B5A7;
  v174 = v163 ^ v165 & ~v164;
  v175 = v172 ^ 0x318CC080266427A2 ^ v170;
  v176 = ((v167 ^ v171) & 0xFFFFFFFFF65AE808 ^ 0xC5AB08FD3240A000) >> (v137 & 0x1C) >> (v137 & 0x1C ^ 0x1C);
  v177 = __ROR8__(v175, 61);
  v178 = v171 ^ 0xA0B866C79876C7E4;
  v179 = (v175 >> 39) & 0x1850ECD ^ v175 & 0x5D2951E12D850ECDLL | (v175 >> 39) & 0x7AF132 ^ v175 & 0xA2D6AE1ED27AF132;
  v180 = v177 ^ (v175 << 25) ^ v179;
  *(&v181 + 1) = v174 + 0x32237A0B9C0468F5;
  *&v181 = v174 + 0x32237A0B9C0468F5 - ((2 * v174) & 0x6446F4173808D1EALL);
  v182 = (v181 >> 1) ^ v181 ^ (v181 >> 6) ^ (v181 << 58);
  v183 = v164 ^ 0xCC98C5A695FE0D08 ^ v169 ^ v174 ^ __ROR8__(v164 ^ 0xCC98C5A695FE0D08 ^ v169 ^ v174, 10) ^ ((v164 ^ 0xCC98C5A695FE0D08 ^ v169 ^ v174) >> 17) ^ ((v164 ^ 0xCC98C5A695FE0D08 ^ v169 ^ v174) << 47);
  v184 = __ROR8__(__ROR8__(v178, 28) & 0xFFFFFFF000001FFFLL ^ __ROR8__(((v178 >> 7) & 0x3F22F70BE306ABLL ^ v178 & 0x843F22F70BE306ABLL | (v178 >> 7) & 0x1C0DD08F41CF954 ^ v178 & 0x7BC0DD08F41CF954) ^ ((v178 >> 41) | (v178 << 57)), 51) ^ 0x37ADB97BCD6ED991, 13);
  v185 = v183 ^ v184;
  v186 = v173 ^ (v173 << 36) ^ __ROR8__(v173, 19) ^ v176 ^ v184;
  v187 = v185 ^ 0xCC89BD6DCBDE6B76;
  v188 = v186 ^ 0x3376429234219489;
  v189 = v186 ^ 0xCC89BD6DCBDE6B76;
  v190 = v189 ^ v182 & ~v180;
  v191 = ((v189 - v188) ^ 0xFFFFFFFFFFFFFFFELL) + v189;
  v192 = (v185 ^ 0xCC89BD6DCBDE6B76) & ~v183;
  v193 = (v185 & 0x20000000000) == 0;
  v194 = 0x20000000000;
  if (!v193)
  {
    v194 = 0xFFFFFE0000000000;
  }

  v195 = v194 + v187;
  v196 = v191 & v180;
  v197 = v180 ^ 0x68ABEAE5737B7693 ^ (v180 ^ ~v182) & v183 ^ v190;
  v198 = v190 & 0x2000;
  v199 = v192 ^ v182 ^ v180;
  v200 = v196 ^ v187;
  v201 = v190 & 0xFFFFFFFFFFFFDFFFLL;
  v202 = (v195 ^ 0xFFFFFDFFFFFFFFFFLL) & v189;
  if ((v200 & v198) != 0)
  {
    v203 = -v198;
  }

  else
  {
    v203 = v198;
  }

  v204 = v201 ^ 0xE78A8F8F26E90B2BLL ^ (v203 + v200);
  v205 = v199 ^ v183 ^ v202;
  v206 = v205 ^ 0x1DE76D00F7B2971ELL;
  *(&v207 + 1) = v199;
  *&v207 = v199 ^ 0xA2A16E7D4060C2ACLL;
  v208 = v197 ^ (v197 >> 61) ^ (v197 >> 39) ^ (8 * v197) ^ (v197 << 25);
  v209 = (v207 >> 1) ^ v199 ^ 0xA2A16E7D4060C2ACLL ^ ((v199 ^ 0xA2A16E7D4060C2ACLL) >> 6) ^ ((v199 ^ 0xA2A16E7D4060C2ACLL) << 58) ^ v208;
  v210 = (v206 ^ -v206 ^ (((v205 >> 10) ^ 0x779DB403DECA5) - ((v205 >> 10) ^ 0x779DB403DECA5 ^ v206))) + ((v205 >> 10) ^ 0x779DB403DECA5);
  v211 = v200 ^ 0xF14770720A54D309 ^ ((v200 ^ 0xF14770720A54D309) << 23) ^ (((v200 ^ 0xF14770720A54D309) >> 7) ^ ((v200 ^ 0xF14770720A54D309) >> 41) | ((v200 ^ 0xF14770720A54D309) << 57));
  v212 = 128;
  if ((v208 & 0x80) != 0)
  {
    v212 = -128;
  }

  v213 = v204 ^ __ROR8__(v204, 19) ^ (v204 >> 28) ^ (v204 << 36) ^ v211;
  v214 = ((v206 >> 17) | (v206 << 54)) ^ (v206 << 47) ^ v210;
  v215 = ((v212 + v208) ^ 0xFFFFFFFFFFFFFF7FLL) & v209;
  v216 = v213 & ~(v214 ^ v211);
  v217 = v211 & ~v214 ^ v209;
  v218 = v214 & ~v209;
  v219 = v213 ^ v215;
  v220 = v213 & v218;
  v221 = v208 & ~v213 ^ v214 ^ v211;
  v222 = v221 ^ v219;
  v223 = v219 | v218;
  v224 = v221 ^ v219 ^ 0xB1FD93A9C07EAC6DLL;
  v225 = (v222 << 45) ^ 0xC71F400000000000;
  v226 = v220 ^ v208 ^ v223;
  v227 = v226 ^ 0x9503C0FF64ECBF78;
  v228 = __ROR8__(v217 ^ v214 ^ v216, 6) ^ 0x7A792DF5FD0D51DBLL;
  v229 = v225 & 0x9F1E400000000000;
  v230 = ((v226 ^ 0x9503C0FF64ECBF78) >> 58) & 0x38;
  v231 = (((v222 >> 19) ^ 0x42736446713) - 2 * (((v222 >> 19) ^ 0x42736446713) & 0x18AF8E094BFLL ^ (v222 >> 19) & 0x28) - 0x6F3BDE75071F6B69) ^ v224;
  v193 = v139 == 0;
  v232 = 0x9F1E48139A512FFBLL;
  if (!v193)
  {
    v232 = v231 ^ 0x60E1B7EC65AED004;
  }

  v233 = v232 & v231;
  v234 = v217 + 0x60319059DF71CA55;
  v235 = __ROR8__(v228, 58);
  v236 = v217 + 0x60319059DF71CA55 - ((2 * v217) & 0xC06320B3BEE394AALL);
  v237 = (v230 ^ 0x6F) - ((2 * (v230 ^ 0x6F)) & 0x4A);
  v238 = v231 & 0x60E1B7EC65AED004 ^ v225 & 0x60E1A00000000000;
  v239 = v235 ^ 0x1607AC3376295AE8;
  v240 = *(v18 + 811 + (v230 ^ 0xF));
  v241 = ((v229 ^ 0x1C4176291DC1C1BELL ^ v233) & ~v238 | v238 & 0x60A081C4602E1000) ^ (v222 >> 28);
  v242 = ((((v235 ^ 0x1607AC3376295AE8) - (v235 ^ 0x1607AC3376295B6ALL)) ^ 0xFFFFFFFFFFFFFFFCLL) + (v235 ^ 0x1607AC3376295AE8)) >> 10;
  v243 = v241 ^ (v224 << 36);
  v244 = (v236 >> 6) | (v234 << 63);
  v245 = 113 * (v240 ^ 0x96 ^ (v237 - 91 - (((v237 - 91) >> 5) << 6) - 31));
  v246 = v221 ^ 0xA39DBBE78CD033FCLL;
  v247 = v227 ^ (8 * v226) ^ (v227 >> 39);
  v248 = v247 ^ v245;
  v67[41] = v241 ^ 0x8D;
  v249 = v248 ^ (v227 << 25);
  LOBYTE(v237) = BYTE3(v241);
  v250 = (v242 & 0x2439C26F00944 ^ (v235 ^ 0x1607AC3376295AE8) & 0x3C82439C26F00944 | v242 & 0x3DBC63D90FF6BBLL ^ (v235 ^ 0x1607AC3376295AE8) & 0xC37DBC63D90FF6BBLL) ^ ((v235 >> 17) | ((v235 ^ 0x1607AC3376295AE8) << 54));
  v251 = BYTE2(v241) ^ 0x5A;
  v252 = v18 + 15;
  LODWORD(v241) = *(v252 + (BYTE1(v241) ^ 0x5BLL));
  v253 = v236 ^ (v236 << 58) ^ (v236 >> 1) ^ v244;
  v254 = STACK[0x718];
  *(STACK[0x718] + 34) = v237 ^ 0xE;
  v255 = v221 ^ __ROR8__(v221 ^ 0xA39DBBE78CD033FCLL, 7);
  v67[22] = v251;
  HIDWORD(v235) = v241 ^ 2;
  LODWORD(v235) = (v241 ^ (16 * v241) & 0xC0 ^ ((32 * ((v241 >> 1) & 1)) | 0x40) ^ 0xF0) << 24;
  v256 = STACK[0x708];
  *(STACK[0x708] + 118) = BYTE4(v243) ^ 0x5B;
  v67[53] = v235 >> 27;
  v7[57] = ((HIBYTE(v243) ^ 0x92) - 2 * ((HIBYTE(v243) ^ 0x92) & 0x16 ^ HIBYTE(v243) & 4) - 110) ^ 0x92;
  v257 = __ROR8__(v246, 41);
  v258 = (v257 - ((2 * v257) & 0xE79F1ED7DCC7F95CLL) - 0xC307094119C0352) ^ v255;
  v193 = v179 == v177;
  v259 = 0xCD1511C38BECABA3;
  if (!v193)
  {
    v259 = v243 ^ 0x5F5DD19885B6482ELL;
  }

  v260 = (v259 ^ 0xEEEEEEEEEEEEEEEELL) & (v243 ^ 0x680000000000) ^ v259 & 0x570000000000;
  v261 = v250 ^ (v239 << 47);
  v7[71] = HIBYTE(v249) ^ 0xA8;
  v262 = (((((STACK[0x6C0] - LODWORD(STACK[0x890])) | (LODWORD(STACK[0x890]) - STACK[0x6C0])) & 0x80000000) != 0) | 0x72) ^ BYTE3(v249) ^ 0x55;
  v67[60] = BYTE5(v249) ^ 7;
  v7[27] = BYTE4(v249) ^ 0xFB;
  v67[25] = v248 ^ 0xC0;
  v254[14] = BYTE2(v247) ^ 0x65;
  v254[36] = BYTE5(v260) ^ 0x46;
  v7[2] = (BYTE1(v253) - ((2 * BYTE1(v253)) & 0xAC) + 86) ^ 0x56;
  v7[10] = BYTE1(v247) ^ 0xFB;
  v67[49] = v262;
  v67[68] = BYTE6(v249) ^ 0x1E;
  v263 = v67;
  v264 = v253 >> (v255 & 0x20 ^ 0x20) >> (v255 & 0x20);
  v7[60] = (v236 ^ (v236 >> 1) ^ v244) >> 16;
  v7[64] = (v264 - ((2 * v264) & 0x55) + 42) ^ 0x2A;
  v265 = v256;
  *(v256 + 108) = BYTE6(v243) ^ 0x48;
  *(v256 + 34) = v236 ^ (v236 >> 1) ^ v244;
  v263[40] = (v236 ^ (v236 >> 1) ^ v244) >> 24;
  LODWORD(v260) = *(v252 + BYTE5(v253) - ((v253 >> 39) & 0x170) + 184);
  HIDWORD(v266) = v260;
  LODWORD(v266) = ((((32 * v260) & 0x80) + ((16 * v260) & 0xE0 ^ 0x20) + 64) ^ v260) << 24;
  v7[29] = BYTE6(v253);
  v7[28] = (v266 >> 27) ^ 0x5A;
  LODWORD(v260) = *(v252 + (HIBYTE(v253) ^ 0xB8));
  v263[24] = BYTE3(v250) ^ 0xD6;
  *(v256 + 88) = BYTE5(v261) ^ 0xB;
  v7[59] = BYTE2(v250) ^ 0x19;
  v7[74] = v250 ^ 0x14;
  *(v256 + 90) = BYTE6(v261);
  *(v256 + 44) = HIBYTE(v261);
  v254[22] = BYTE1(v250) ^ 0xBB;
  v263[67] = BYTE4(v250) ^ 3;
  HIDWORD(v266) = v260 ^ 2;
  LODWORD(v266) = (v260 ^ (((16 * v260) & 0xFFFFFFE0 ^ 0x20) + (~(2 * ((16 * v260) & 0xFFFFFFE0 ^ 0x20)) | 0xBF) - 86) ^ 0xFFFFFFEF) << 24;
  v7[40] = (v266 >> 27) ^ 0x1A;
  v267 = *(v252 + (v258 ^ 0xEALL));
  v7[96] = BYTE2(v258) ^ 0xB3;
  v263[48] = BYTE3(v258) ^ 0x62;
  *v7 = HIBYTE(v258) ^ 0x50;
  v7[39] = BYTE1(v258) ^ 0xCF;
  v7[38] = BYTE4(v258) ^ 0x8C;
  v263[78] = BYTE6(v258) ^ 0x52;
  HIDWORD(v266) = v267 ^ 0x13;
  LODWORD(v266) = ((((32 * v267) & 0x80) + ((16 * v267) & 0xE0 ^ 0x20) + 80) ^ v267 ^ 0x13) << 24;
  v254[39] = (v266 >> 27) ^ 0x3A;
  *(v256 + 20) = BYTE5(v258) ^ 0x34;
  v268 = STACK[0x710];
  *(*STACK[0x710] + 4) = STACK[0x880] + 1;
  LODWORD(STACK[0x880]) = ((2 * *(v256 + 60)) & 0xFE7EEF9E) + (*(v256 + 60) ^ 0x7F3F77CF);
  v269 = *v268;
  LOBYTE(v260) = v7[67] - 67;
  LOBYTE(v267) = v260 & 0x5B ^ 0xF8;
  v270 = *(v256 + 18);
  STACK[0x6B0] = &byte_100F9AEEE[267];
  LODWORD(v261) = byte_100F9AEEE[((v260 ^ (2 * ((v260 ^ 0x6A) & (2 * ((v260 ^ 0x6A) & (2 * ((v260 ^ 0x6A) & (2 * ((v260 ^ 0x6A) & (2 * ((v260 ^ 0x6A) & (2 * ((v260 ^ 0xC3) & (2 * v260) & 0x56 ^ v267)) ^ v267)) ^ v267)) ^ v267)) ^ v267)) ^ v267))) ^ 0xB) + 267] + 97;
  v271 = *(v256 + 26);
  v272 = v254[11];
  v273 = ((*(v265 + 86) - ((2 * *(v265 + 86)) & 0x42)) << 8) - 0x4CAB8EA20D2BDF00;
  v274 = v7[22];
  v275 = *(v269 + 9);
  STACK[0x690] = v269;
  v276 = *(v256 + 30);
  v277 = v263;
  v278 = v263[63];
  v279 = ((v272 - ((2 * v272) & 0x9E)) << 16) + 0x2282AF79F94F0000;
  v280 = v275 - ((2 * v275) & 0x36) - 0x3025F11F988F58E5;
  v281 = (v280 ^ 0x3025F11F988F5804) & (v273 ^ 0x54C805710CE5CF07);
  v282 = ((v278 - ((2 * v278) & 0x44444444u) + 395566) << 40) - 0xC0000000000;
  LODWORD(v272) = v277[62];
  LODWORD(v275) = ((2 * v272) & 0x6E) + (v272 ^ 0x77EBFA37);
  v283 = ((v270 >> 1) | (v270 << 7)) + (~v270 | 0xFFFFFFA3) + 47;
  v284 = v280 & 0x8000080004011F8 ^ 0x62DFC74383052B4FLL ^ v281;
  v285 = *(v265 + 120) - ((2 * *(v265 + 120)) & 0xA2);
  v286 = ((v284 & (v279 ^ 0xDD7D508606B0FFFFLL) ^ v279 & 0x22800C10828B0000) & 0xEA24DF7DD7572BCLL ^ 0xFFDFBFFFFFFFCD53 ^ (v284 & (v279 ^ 0xDD7D508606B0FFFFLL) ^ v279 & 0x22800C10828B0000 ^ 0x503C400002800903) & ((((v271 - ((2 * v271) & 0x108)) << 24) - 0x64E78AE97C000000) ^ 0x6A45C71EA68A8D43)) + ((-29 * (v261 ^ 0x71 ^ (v261 >> 4) & 0xA)) << 32);
  v287 = v7[23];
  LODWORD(v281) = v277[61];
  v288 = v282 ^ ((((67 * byte_100F9AEEE[(((v283 ^ 0xFEA20A13) + 22935021) ^ ((v283 ^ 0xCFFEC905) + 805385979) ^ ((v283 ^ 0x315CC338) - 828162872)) + 6 + ((2 * v283) & 0x50)]) ^ 0xA1) - 51) << 48) ^ 0x98D2A7DF9F45328ALL ^ (v286 - 2 * (v286 & 0x1EDB85DF9F45328ELL ^ v284 & 4) - 0x61247A2060BACD76);
  v289 = v7[4];
  LOBYTE(v275) = byte_100F9AEEE[((v275 - ((2 * ((((v275 - 38305830) ^ 0xC2F4A8C0) + 1218981167) ^ (v275 - 38305830) ^ (((v275 - 38305830) ^ 0x56683A0F) + 1546960866) ^ (((v275 - 38305830) ^ 5) + 108) ^ (((v275 - 38305830) ^ 0x5A) + 54))) & 0xD8) - 455787979) ^ 0x5CC134AALL) + 537];
  STACK[0x6C0] = &byte_100F9AEEE[537];
  LODWORD(v279) = v254[40];
  v290 = *(v256 + 113);
  LOBYTE(v281) = byte_100F9AEEE[(((v281 >> 1) | (v281 << 7)) - (v281 & 0xD0) + 104) ^ 0x40];
  STACK[0x680] = byte_100F9AEEE;
  v291 = ((((v275 - 18) ^ 0x4A) >> 4) | (16 * ((v275 - 18) ^ 0x4A))) << 16;
  v292 = v288 - ((2 * v288) & 0x2882D1C4223E184);
  v293 = v254;
  v294 = (v291 & 0xB20000 | ((v287 - ((2 * v287) & 0xFFFFFFFFFFFFFF8FLL) - 0x5047042BF7B8F039) & 0x800000419591 ^ 0xA145078DA29807D1 ^ ((v287 - ((2 * v287) & 0xFFFFFFFFFFFFFF8FLL) - 0x5047042BF7B8F039) ^ 0x5047042BF7B8F028) & ((((v276 - ((2 * v276) & 0x15C)) << 8) + 0x341FBD421B63AE00) ^ 0x4ADEAABE5FF7C46ELL)) & ~v291) ^ 0xDF849071E64D683ELL;
  HIDWORD(v266) = byte_100F9AEEE[v274 - ((2 * v274) & 0x18C) + 735];
  LODWORD(v266) = (HIDWORD(v266) << 24) - 301989888;
  LODWORD(v288) = (((v266 >> 25) >> 7) & 1 | (2 * (v266 >> 25))) ^ 0x4A;
  v295 = ((v293[13] - ((2 * v293[13]) & 0xB6u) + 29312) << 48) - 0x25000000000000;
  v296 = ((v294 + ((((67 * v281) ^ 0xA1) - 51) << 24)) | 0x6E414FCD183F5DE9) ^ ((((v289 - ((2 * v289) & 8u) + 1390590996) << 32) - 0x1000000000) ^ 0x3CA3F3C9183F5DE9) & ~(v294 + ((((67 * v281) ^ 0xA1) - 51) << 24));
  v297 = (v296 - ((2 * v296) & 0x27C383478E578F60) - 0x6C1E3E5C38D43850) ^ (((v279 - ((2 * v279) & 0x1B8) + 10234633) << 40) - 0x2D0000000000);
  LODWORD(v279) = v7[63];
  v298 = v277[9] - ((2 * v277[9]) & 0x98) - 0x54341DC62BD1C1B4;
  LOBYTE(v274) = (v288 >> 4) | (16 * v288);
  v299 = ((v293[33] - ((2 * v293[33]) & 0xB6u) + 14660733) << 40) - 0x220000000000;
  v300 = (v295 ^ 0x725B000000000000) + (v297 ^ 0xFCB1DA3C72BC7B0) + ((2 * ((v297 ^ 0xFCB1080C52245A0) & (v295 ^ 0xCC0D080D5F27DA0) ^ v297 & 0x7E9BD080D5F27DA0)) ^ 0xE2E9DEFE75BB74BFLL);
  v301 = ((*(v265 + 71) - ((2 * *(v265 + 71)) & 0x1AE)) << 24) + 0x7FC4D461D7000000;
  v302 = ((*(v265 + 96) - ((2 * *(v265 + 96)) & 0x94u) + 1039304319) << 32) - 0x3500000000;
  LODWORD(v293) = (v279 & 1) << 7;
  v303 = (v274 << 16) & 0xF40000 | (v298 & 0x200000080000167 ^ 0x51949A3826E586FFLL ^ ((((v290 - ((2 * v290) & 0x194)) << 8) + 0x3C580825846BCA00) ^ 0x15A4688DA885AC98) & (v298 ^ 0x54341DC62BD1C1F7)) & ~(v274 << 16);
  v304 = v301 ^ 0x7FC4D461D7000000;
  v305 = v303 ^ 0x7A68FA908A0BE023 ^ -(v303 ^ 0x7A68FA908A0BE023) ^ ((v301 ^ 0x7FC4D461D7000000) - (v303 & 0x454E99A572EEFB8BLL ^ 0xFAF9FEDA8F1BE477 ^ (v303 ^ 0x8597056F75100454) & (v301 ^ 0xC575B23B5A110474)));
  LODWORD(v301) = *(v265 + 93) - ((2 * *(v265 + 93)) & 0xC4);
  v306 = (v299 ^ 0xD5F0890DB7D202C8) & (v302 ^ 0xC20D79E7FFD6F7FFLL) ^ v302 & 0x35B205F200000000;
  LODWORD(v290) = (v279 >> 1) - 1519454436 - (v279 & 0x68) + 24;
  v307 = *(v265 + 9) - ((2 * *(v265 + 9)) & 0x38);
  LOBYTE(v302) = 67 * byte_100F9AEEE[v290 ^ (v293 | 0xA56EF71C)];
  LODWORD(v290) = v7[41] - ((2 * v7[41]) & 0x164);
  v308 = (v306 ^ (v305 + v304) ^ 0x3FF6D64FB7D202C8) + 0x7FCFBE5E19718088 - 2 * ((v306 ^ (v305 + v304) ^ 0x3FF6D64FB7D202C8) & 0x7FCFBE5E1971808ELL ^ (v306 ^ (v305 + v304)) & 6);
  v309 = v277[56] - ((2 * v277[56]) & 0x64) - 0xEB626572847DBCELL;
  v310 = v277;
  v311 = (((*(v265 + 53) - ((2 * *(v265 + 53)) & 0xFF9Fu) + 9180) << 48) - 0xD000000000000) ^ 0x5C00BE5E19718088 ^ v308;
  v312 = ((((v7[82] - ((2 * v7[82]) & 0xFF7F)) << 8) - 0x7D1F05DB151B4100) ^ 0x38998C5F6394D7AELL) & (v309 ^ 0xEB626572847DB9CLL) ^ v309 & 0x4100818016000751;
  v313 = v312 & 0x38E73595EDC17C1CLL ^ 0xFF79FFFB9F7EEFFFLL ^ ((((v277[47] - ((2 * v277[47]) & 0x10)) << 16) - 0x2300D25240F80000) ^ 0x1BE7E7C7AD3683E3) & (v312 ^ 0x4860804608F9749);
  v314 = v311 - 2 * (v311 & 0x7E1D055B43F63EB7 ^ v308 & 0x27);
  v315 = v277[17] - ((2 * v277[17]) & 0x68);
  v316 = v277[6];
  v317 = ((v7[56] - ((2 * v7[56]) & 0x124u) + 752698517) << 32) - 0x300000000 + (((v302 ^ 0xA1) - 51) << 24);
  LODWORD(v302) = v277[69] - ((2 * v277[69]) & 0x44);
  LODWORD(v299) = v277[77] - ((2 * v277[77]) & 0x6E);
  v318 = v7[66] - ((2 * v7[66]) & 0x15E);
  v319 = *(v269 + 8) + (~(2 * *(v269 + 8)) | 0x55555555u) + 86;
  v320 = ((*(v265 + 1) - ((2 * *(v265 + 1)) & 0x46)) << 16) + 0x782359EDDA230000;
  v321 = ((v316 - ((2 * v316) & 0x17A) + 0x71E6E8E51FB1B1BDLL) & 0x200400200081063ELL ^ 0x43505918BB76DBCELL ^ ((((v277[38] - ((2 * v277[38]) & 0xC2)) << 8) + 0x66ABC8B9D326100) ^ 0xDB28C0D0831C18C1) & ((v316 - ((2 * v316) & 0x17A) + 0x71E6E8E51FB1B1BDLL) ^ 0x8E19171AE04E4E46)) & (v320 ^ 0x87DCA61225DCFFFFLL) ^ v320 & 0x4021588C5A260000;
  v322 = (LODWORD(STACK[0x880]) - 2134865871);
  STACK[0x6A0] = v322;
  v323 = (v322 - ((2 * v322) & 0x1E91AD4B8) - 0x1C9DFD200B7295A4) ^ (v319 << 56) ^ (v300 + 1);
  v324 = ((v285 + 6) << 56) - 0x3500000000000000;
  v325 = v292 + 0x144168E2111F0C2;
  v326 = v7[49];
  v327 = (v321 ^ 0x1C88210000005C8) & (((v307 << 24) + 0x3384EDCA1C000000) ^ 0xD9B1A1226FF925CALL) ^ v321 & 0x15CAB3178C06DA35;
  v328 = v327 & 0x455182EB6BC81E25 ^ 0xFEBF7DFFFFFFE7FBLL ^ (v327 ^ 0x1C8821000044000) & ((((v315 + 7973741) << 40) - 0x390000000000) ^ 0xC30549149437E1DALL);
  v329 = (((v302 - 574651306) << 32) - 0x3400000000) ^ 0x7FBFE4DC19F6432ELL ^ (v328 - ((2 * v328) & 0x4400C1FC33EC865CLL) - 0x5DFF9F01E609BCD2);
  v330 = (((v290 + 62908) << 48) - 0xA000000000000) ^ (((v326 - ((2 * v326) & 0xEAu) + 52) << 56) - 0x3F00000000000000) ^ (v317 ^ 0x2CDD449200000000 | v313 | (((v318 + 7922671) << 40) - 0x400000000000) ^ 0x78E3AF0000000000);
  LODWORD(v292) = v7[61];
  v331 = v323 ^ (((v301 + 241) << 56) - 0xF00000000000000) ^ (v314 - 0x1E2FAA4BC09C170);
  v332 = (((v299 + 20598) << 48) - 0x3F000000000000) ^ (((v292 - ((2 * v292) & 0x50) + 212) << 56) - 0x2C00000000000000) ^ 0xA90B124B2F8E1E04 ^ (v329 - ((2 * v329) & 0x227824965F1C3C08) + 0x513C124B2F8E1E04);
  v333 = v332 ^ v330;
  v334 = v325 ^ v324 ^ v332;
  v335 = v334 ^ (v331 ^ 0xD9FB6E6951AD847ELL) & (v323 ^ 0xA0341C32BEFC0D00);
  v323 ^= 0x5FCBE3CD4103F2FFuLL;
  v336 = (v334 ^ 0x3AA8981973CBB78ALL) & v323;
  v337 = v336 ^ v331 ^ 0xD9FB6E6951AD847ELL;
  v338 = (v333 ^ 0x7F02760D4E3601E0) & ((((v330 ^ 0x4BDE449932EC6A05) - (v330 ^ 0xB421BB66CD1395FALL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v330 ^ 0x4BDE449932EC6A05)) ^ v331 ^ 0xD9FB6E6951AD847ELL;
  v339 = (v333 ^ 0x7F02760D4E3601E0 ^ -(v333 ^ 0x7F02760D4E3601E0) ^ (((v337 + v336 - 2 * (v337 & v336)) ^ v337) - ((v337 + v336 - 2 * (v337 & v336)) ^ v337 ^ v333 ^ 0x7F02760D4E3601E0))) + ((v337 + v336 - 2 * (v337 & v336)) ^ v337);
  v340 = v335 ^ 0xA67DB18E6C278FA5 ^ v339;
  v341 = v330 ^ v338 ^ 0xD5BC04CDC29E877 ^ (v333 ^ 0x80FD89F2B1C9FE1FLL) & (v334 ^ 0xC55767E68C344875);
  v342 = v323 ^ (v330 ^ 0x4BDE449932EC6A05) & (v331 ^ 0x26049196AE527B81) ^ 0xDD7EBC321D7DE418 ^ v335;
  v339 ^= 0x8717DFE2A3B1E3F2;
  v343 = __ROR8__(v339, 7);
  v344 = v338 ^ 0x6E807D10291F7139 ^ __ROR8__(v338 ^ 0x6E807D10291F7139, 1) ^ ((v338 ^ 0x6E807D10291F7139) >> 6) ^ ((v338 ^ 0x6E807D10291F7139) << 58);
  v345 = v342 ^ (v342 >> 39) ^ (8 * v342) ^ (v342 << 25) ^ (v342 >> (v274 & 0x3D) >> (v274 & 0x3D ^ 0x3Du));
  v346 = v344 ^ v345;
  v347 = ((v339 ^ v343) + (v339 >> 41) - 2 * ((v339 ^ v343) & (v339 >> 41))) ^ (v339 << 23);
  v348 = v340 ^ __ROR8__(v340, 19) ^ (v340 >> 28) ^ (v340 << 36) ^ v347;
  v349 = (v341 << 54) & v341 ^ __ROR8__(v341, 17) ^ (v341 ^ (v341 >> 10) | (v341 << 54));
  v350 = v349 & ~(v344 ^ v345);
  v351 = (~(2 * (v347 ^ v349)) + (v347 ^ v349)) & v348 ^ v349;
  v352 = v348 ^ (v345 | ~v344);
  v353 = v345 & ~v348 ^ v347 ^ v349;
  v354 = v347 & ~v349 ^ v346;
  LOBYTE(v347) = v353 ^ v352;
  v355 = v353 ^ v352 ^ 0xA9551940FDBE7B00;
  v356 = (v351 - (v351 ^ -v351)) ^ -v351;
  v357 = __ROR8__(__ROR8__(v354, 42) ^ 0x954F4C3A5279D778, 22);
  v358 = __ROR8__(__ROR8__(v345 ^ v350 ^ ~v352, 29) ^ 0xC39582F56C7E565BLL, 35) ^ 0x4B448BC5D7EF8701;
  v359 = (((v356 + 2 * v351 - 2 * (v356 & v351)) ^ (v354 - (v351 ^ v354))) + v354) ^ 0x3378C4AC0693E070;
  v360 = v359 >> (v292 & 0xA) >> (v292 & 0xA ^ 0xA);
  v361 = __ROR8__(v358, 39) ^ (8 * v358) ^ __ROR8__(__ROR8__(v358, 52) ^ (v358 >> 61 << 12) ^ 0xA2F03A6BB10D978DLL, 12);
  v362 = ((v360 ^ -v360 ^ (v359 - (v360 ^ v359))) + v359) ^ ((v359 - ((2 * v359) & 0x195EE) + 51959) >> 17);
  v363 = (v359 << 54) ^ (v359 << 47) ^ v362;
  *(&v364 + 1) = v362;
  *&v364 = v363;
  v365 = (((v353 ^ 0x62C1F2A9E89E4C79uLL) >> 2) & 0x3FFFFF8000000000 | (((v353 ^ 0x62C1F2A9E89E4C79) & 0x7F) << 32)) ^ __ROR8__(v353 ^ 0x62C1F2A9E89E4C79 ^ ((v353 ^ 0x62C1F2A9E89E4C79uLL) >> 7) ^ ((v353 ^ 0x62C1F2A9E89E4C79) << 23), 25);
  v366 = v357 ^ 0xF29A67204E60C509 ^ ((v357 ^ 0xF29A67204E60C509) << 58) ^ (((v357 ^ 0xF29A67204E60C509) >> 1) ^ ((v357 ^ 0xF29A67204E60C509) >> 6) | (~v357 << 63)) ^ v361;
  v367 = ((v365 ^ 0xD5DD4CCBAC62E269) << (v347 & 0x19) << (v347 & 0x19 ^ 0x19)) ^ ((v365 >> 39) | 0x9758C5C4D2000000);
  v368 = v355 ^ __ROR8__(v355, 19) ^ (v355 >> 28) ^ ((v355 << 36) | 0x7F3BDFFE) ^ v367;
  v369 = v366 ^ 0x78DA2F03A6BB10D9;
  v370 = (v366 ^ 0x78DA2F03A6BB10D9) & (v361 ^ 0x8725D0FC5944EF26) ^ v368;
  v371 = v363 ^ v367;
  v372 = v361 ^ v370 ^ 0x78DA2F03D980CF27 ^ v363 & (v366 ^ 0x8725D0FC5944EF26);
  v373 = v371 ^ (v368 ^ 0xFFFFFFFF80C42001) & (v361 ^ 0x78DA2F03A6BB10D9);
  v374 = ((((2 * v372) & 0xDD5F85A7D8CB8904) + 0x11503D2C139A3B7ELL) ^ 0xFFFFFFFFFFFFFFFCLL) + v372;
  v375 = (v368 ^ 0x7F3BDFFE) & ~v371;
  v376 = (__ROR8__((v364 >> 32) ^ 0xD9C3AF30F79C94DALL, 32) ^ 0x8636B25263C50CFLL) & v371 ^ v369;
  v377 = byte_100F9AEEE[((v374 >> 61) ^ 0xA3) + 806];
  v378 = ((v377 ^ 0xBC) >> 6) ^ ((v377 ^ 0xBC) >> 4) ^ ((v377 ^ 0xFFFFFFBC) & 0xFFFFFFB8 | 7) ^ (v377 & 0x40 | (v377 ^ 0xFFFFFFBC) & 7);
  v379 = v370 ^ 0x7D752DD7A3F98E48 ^ v373 ^ ((v370 ^ 0x7D752DD7A3F98E48 ^ v373) << 36) ^ __ROR8__(v370 ^ 0x7D752DD7A3F98E48 ^ v373, 19) ^ ((v370 ^ 0x7D752DD7A3F98E48 ^ v373) >> (v272 & 4) >> (v272 & 0x18) >> (~v272 & 0x1C));
  v380 = v363 ^ 0xD8700A4CB46F51B0 ^ v375 ^ v376;
  v381 = ((v378 >> 2) | (v378 << 6));
  v382 = v376 ^ 0xE7E200F443AAFCDFLL ^ __ROR8__(v376 ^ 0xE7E200F443AAFCDFLL, 1) ^ ((v376 ^ 0xE7E200F443AAFCDFLL) >> 6) ^ ((v376 ^ 0xE7E200F443AAFCDFLL) << 58);
  v383 = 0x1000000000;
  if (((v373 ^ 0x66173F92B629299ALL) & 0x1000000000) != 0)
  {
    v383 = 0xFFFFFFF000000000;
  }

  v384 = v374 ^ v381 ^ (8 * v374) ^ (v374 >> 39) ^ (v374 << 25);
  v385 = v380 ^ (v380 << 47) ^ ((v380 >> 10) ^ (v380 >> 17) | (v380 << 54));
  v386 = v384 ^ v382;
  v387 = v373 ^ __ROR8__(v373 ^ 0x66173F92B629299ALL, 7) ^ ((v383 + (v373 ^ 0x66173F92B629299ALL)) >> 41) ^ ((v383 + (v373 ^ 0x66173F92B629299ALL)) << 23) ^ 0x6E173F92B629299ALL;
  v388 = v387 + v379 - 2 * (v387 & v379);
  v389 = v388 ^ v382 & ~v384;
  v390 = v387 ^ v385;
  v391 = v384 & ~v388 ^ v387 ^ v385;
  v392 = v386 ^ v387 & ~v385;
  v393 = v384 ^ 0x318CC080266427A2 ^ v385 & ~v386 ^ v389;
  v394 = v391 ^ v389;
  v395 = v393 << 25;
  v396 = v388 & ~v390 ^ v385 ^ v392;
  v397 = (v392 ^ 0x32237A0B9C0468F5) << 58;
  v398 = (v394 ^ 0xC5AB08FD33C1B5A7) << 36;
  v399 = (v394 >> 28) ^ __ROR8__(((v394 ^ 0xC5AB08FD33C1B5A7) >> 10) & 0x3FFFFFFFFFFE00 ^ __ROR8__(v394 ^ 0xC5AB08FD33C1B5A7 ^ ((v394 ^ 0xC5AB08FD33C1B5A7) << 45), 55) ^ 0xC9273997FC9C8068, 9) ^ 0x34649390914EC193;
  v400 = v393 ^ __ROR8__(v393, 61) ^ (v393 >> 39);
  v401 = v399 + v398 - 2 * (v399 & v398);
  v402 = (((v392 ^ 0x32237A0B9C0468F5) >> 6) ^ ((v392 ^ 0x32237A0B9C0468F5) >> 1) | ((v392 ^ 0x32237A0B9C0468F5) << 63)) ^ v392 ^ 0x32237A0B9C0468F5;
  *(&v403 + 1) = v396;
  *&v403 = v396 ^ 0xCC98C5A695FE0D08;
  v404 = (v403 >> 10) ^ v396 ^ 0xCC98C5A695FE0D08 ^ ((v396 ^ 0xCC98C5A695FE0D08) >> 17) ^ ((v396 ^ 0xCC98C5A695FE0D08) << 47);
  v405 = v397 & 0x800000000000000;
  v406 = v404 ^ 0xBDFFFFFFFFFFFFFFLL;
  v407 = (v395 ^ -v395 ^ (v400 - (v400 ^ v395))) + v400;
  v408 = (v404 ^ 0xBDFFFFFFFFFFFFFFLL) & 0x40000000;
  v409 = v391 ^ 0xA0B866C79876C7E4 ^ __ROR8__(v391 ^ 0xA0B866C79876C7E4, 7) ^ ((v391 ^ 0xA0B866C79876C7E4) << 23) ^ ((v391 ^ 0xA0B866C79876C7E4) >> 41);
  v410 = v404 ^ v409;
  v411 = v404 ^ v409 ^ 0x4200000000000000;
  v412 = v401 ^ v409;
  if ((v402 & v397 & 0x800000000000000) != 0)
  {
    v405 = -v405;
  }

  v413 = (v405 + v402) ^ v397 & 0xF7FFFFFFFFFFFFFFLL;
  v414 = v407 ^ v413;
  v415 = v412 ^ v413 & ~v407;
  if ((v408 & v409) != 0)
  {
    v416 = -v408;
  }

  else
  {
    v416 = (v404 ^ 0xBDFFFFFFFFFFFFFFLL) & 0x40000000;
  }

  v417 = v414 | v406;
  v418 = (v416 + v411) ^ v406 & 0xFFFFFFFFBFFFFFFFLL;
  v419 = v411 | v406;
  v420 = v412 & (v410 ^ 0xBDFFFFFFFFFFFFFFLL);
  v421 = v407 & ~v412 ^ v411;
  v422 = __ROR8__(v407 ^ ~v417 ^ v415, 39);
  v423 = (v419 - v418) ^ v414;
  v424 = v421 ^ v415;
  v425 = v424 ^ 0xE78A8F8F26E90B2BLL;
  v426 = ((v424 ^ 0xE78A8F8F26E90B2BLL) >> 19) & 0xFFFFFFFFFFFFFFBFLL;
  v427 = ((v424 ^ 0xE78A8F8F26E90B2BLL) >> 19) & 0x40;
  v428 = __ROR8__(v422 ^ 0xB0DA423CF308A5EBLL, 25) ^ 0xECF91F3D1E5A68EALL;
  v429 = (v424 ^ 0xE78A8F8F26E90B2BLL) >> 28;
  if ((v427 & v424) != 0)
  {
    v430 = -v427;
  }

  else
  {
    v430 = ((v424 ^ 0xE78A8F8F26E90B2BLL) >> 19) & 0x40;
  }

  v431 = __ROR8__((((v423 & 1) << 45) | 0xAB1C1726395A2FC4) ^ __ROR8__(v423 ^ 0xA2A16E7D4060C2ACLL ^ ((v423 ^ 0xA2A16E7D4060C2ACLL) >> 1), 18), 46) ^ __ROR8__(v423 ^ 0xA2A16E7D4060C2ACLL, 6);
  v432 = v428 ^ (v428 >> 61) ^ ((8 * v428) ^ (v428 << 25) ^ (v428 >> 39)) & ~((8 * v428) & (v428 >> 39));
  v433 = v404 ^ v420 ^ 0x5FE76D00F7B2971ELL ^ v423 ^ ((v404 ^ v420 ^ 0x5FE76D00F7B2971ELL ^ v423) << 47) ^ ((v404 ^ v420 ^ 0x5FE76D00F7B2971ELL ^ v423) >> 10) ^ (((v404 ^ v420 ^ 0x5FE76D00F7B2971ELL ^ v423) >> 17) | ((v404 ^ v420 ^ 0x5FE76D00F7B2971ELL ^ v423) << 54));
  v434 = __ROR8__((((v421 ^ 0xF14770720A54D309) & 0x1FFFFFFFFFFLL) << 7) ^ __ROR8__(v421 ^ 0xF14770720A54D309 ^ __ROR8__(v421 ^ 0xF14770720A54D309, 7) ^ ((v421 ^ 0xF14770720A54D309) >> 41), 16) ^ 0x7DF8D6B6F4422141, 48);
  v435 = (v432 ^ -v432 ^ ((v431 ^ 0x5C98E568BF12AC70) - (v431 ^ 0x5C98E568BF12AC70 ^ v432))) + (v431 ^ 0x5C98E568BF12AC70);
  v436 = v426 ^ (v425 << 36) ^ (v429 | (v425 << 45)) ^ (v430 + v425) ^ v434;
  v437 = v435 & ~v432 ^ v436;
  v438 = (v436 ^ 0x29490BBDDEBE8207) & v432 ^ v434 ^ v433;
  v439 = (v436 ^ 0xD6B6F44221417DF8) & (v434 ^ v433 ^ 0x29490BBDDEBE8207);
  v440 = (v437 - 0x4B6DD17B314C58 - ((2 * v437) & 0xFF69245D099D6750)) ^ v438;
  v441 = (v440 >> 19) ^ 0x9207F49F74ELL;
  v442 = v439 ^ v433;
  v443 = ((v440 ^ 0xFFB4922E84CEB3A8) << 45) ^ 0x73A4E00000000000;
  v444 = v432 ^ 0xD6B6F44221417DF8 ^ v433 & ~v435 ^ v437;
  v445 = v435 ^ (v434 ^ v433 ^ 0xD6B6F44221417DF8) & ~v433;
  v446 = v445 ^ (v442 - ((2 * v442) & 0xE77CFDB02C9D8F28) + 0x73BE7ED8164EC794);
  v447 = v446 ^ 0x4FC1756BD4297849;
  v448 = (v446 >> 17) ^ 0x57C8AD5F3A93;
  v449 = ((v443 | v441) + v443 - 2 * (v443 | v441)) ^ -v441;
  v450 = v449 ^ (v443 | v441);
  v451 = v446 ^ 0x4FC1756BD4297849 ^ (v446 >> 10);
  v452 = v450 + 2 * (v449 & v443);
  v453 = v445 ^ 0x112695BF434972E4;
  v454 = v444 ^ (v444 >> 61) ^ (v444 >> 39) ^ (8 * v444);
  v455 = v440 ^ __ROR8__(v440 ^ 0xFFB4922E84CEB3A8, 28) ^ v452;
  *(&v456 + 1) = v445;
  *&v456 = v445 ^ 0x112695BF434972E4;
  v457 = v448 ^ -v448 ^ ((((v451 ^ 0x7E1185A0370DEA4ALL) - 0x7CFEFD8717D0FBEDLL) ^ ((v451 ^ 0xBA034251D067D80) - 0x94F4C023DDB6C27) ^ ((v451 ^ 0x95CA7A0624994AD5) + 0x68DAFDDEFBBBA48ELL)) - (((v451 ^ v448 ^ 0x6C6BAF78952BE27) - 0x3957B63BC81807B7) ^ ((v451 ^ v448 ^ 0x6126F308981D59) - 0x3FF02A3F49D2A4C9) ^ ((v451 ^ v448 ^ 0xE6DC57878F587E61) + 0x26B2A4B431ED380FLL)) + 0x2A9EC54DE776829);
  v458 = v445 ^ 0x112695BF434972E4 ^ (v445 >> 6) ^ (v456 >> 1);
  LOBYTE(v448) = byte_100F9AEEE[(v455 ^ 0x3FLL) + 806] ^ 0xBC;
  v459 = (((v451 ^ 0xC9951E30A84E096DLL) + 0x348599E8776CE736) ^ ((v451 ^ 0xDD4BD596236E3CFDLL) + 0x205B524EFC4CD2A6) ^ ((v451 ^ 0xF4A5002585B2E88FLL) + 0x9B587FD5A9006D8)) - 0x144553420ED94467 + (((v457 ^ 0xE22160F0043F4909) - 0x21B7BD475F00258FLL) ^ ((v457 ^ 0xF5EC7D3CFD719D6) + 0x3337E59B6B178AB0) ^ ((v457 ^ 0xED7FA723CBE850DFLL) - 0x2EE97A9490D73C59));
  LODWORD(v457) = (v448 >> 6) ^ (v448 >> 4);
  LOBYTE(v457) = (v457 + v448 - 2 * (v457 & v448) - ((2 * (v457 + v448 - 2 * (v457 & v448))) & 0x36) + 27) ^ 0x82;
  *(v265 + 86) = BYTE1(v455) ^ 0xA8;
  v460 = STACK[0x690];
  *(v460 + 9) = ((v457 >> 2) | (v457 << 6)) ^ 0xA7;
  v461 = STACK[0x6B0];
  LODWORD(v457) = *(STACK[0x6B0] + (((BYTE2(v455) ^ 3) - 88) ^ 0x50)) + 97;
  v7[67] = ((BYTE4(v455) ^ 0x34) - ((2 * BYTE4(v455)) & 0x12) - 119) ^ 0x89;
  *(v265 + 26) = BYTE3(v455) ^ 0xD1;
  v7[23] = v454 ^ 0x42;
  *(v265 + 120) = HIBYTE(v455) ^ 0xA2;
  v310[63] = BYTE5(v455) ^ 0x28;
  v462 = v454 ^ (v444 << 25);
  LODWORD(v452) = ((v457 >> 4) & 0xA) + (v457 ^ 0x71) - 2 * ((v457 >> 4) & 0xA & v457);
  v463 = (v455 ^ 0xA2BA2834D103A89CLL) >> (v362 & 0x10) >> (v362 & 0x20) >> (~v362 & 0x30);
  v464 = STACK[0x718];
  v464[11] = -65 - 29 * ((v452 ^ 0x8B) + ((2 * v452) & 0x16));
  *(v265 + 18) = (v463 - ((2 * v463) & 0xCF) + 103) ^ 0x67;
  v465 = STACK[0x680];
  LOBYTE(v452) = 67 * *(STACK[0x680] + (((v454 >> 1) & 0x80 | (v454 >> 9)) ^ 0x51));
  *(v265 + 30) = (((v452 ^ 0xF0) + 99) ^ ((v452 ^ 0x9F) + 14) ^ ((v452 ^ 0xCE) + 93)) - 103;
  LODWORD(v452) = byte_100F9AEEE[(BYTE2(v454) ^ 0x99) + 806];
  v466 = v438 ^ 0xE5B0E482102D2F6BLL;
  v7[4] = ((BYTE4(v462) ^ 0xEF) - ((2 * (BYTE4(v462) ^ 0xEF)) & 0xE8) - 12) ^ 0xF4;
  *(v460 + 8) = HIBYTE(v462) ^ 4;
  v467 = (v438 >> 7) ^ (v438 >> 41) ^ v438 ^ 0xE5B0E482102D2F6BLL;
  v468 = ((v459 ^ 0x7FC1C78A9BE3013ALL) - 0x3A4EDCE8FC748361) ^ v459 ^ ((v459 ^ 0x55EFBB8D7041D85CLL) - 0x1060A0EF17D65A07) ^ ((v459 ^ 0xB0DD1ADA51CBACFALL) + 0xAADFE47C9A3D15FLL) ^ ((v459 ^ 0xDF7C7DBFDDFEF7C7) + 0x650C992245968A64);
  v469 = v467 & 0x400000000000 | (v466 << 57);
  v470 = v467 & 0xFFFFBFFFFFFFFFFFLL ^ (v466 << 23);
  *(v265 + 71) = BYTE3(v458) ^ 0x5B;
  LODWORD(v452) = v452 ^ (v452 >> 6) ^ (v452 >> 4);
  v464[40] = BYTE5(v462) ^ 0xF6;
  v7[22] = BYTE2(v458) ^ 0x84;
  DWORD1(v456) = v452 ^ 2;
  LODWORD(v456) = (v452 ^ 0xB0) << 24;
  v310[62] = v456 >> 26;
  v310[61] = BYTE3(v462) ^ 0x47;
  v464[13] = BYTE6(v462) ^ 0x86;
  *(v265 + 113) = BYTE1(v458) ^ 0xBD;
  v310[9] = v458 ^ 0x13;
  v471 = (((((v468 >> 8) ^ 0x458F1B62679782) << (v326 & 7)) - ((2 * (((v468 >> 8) ^ 0x458F1B62679782) << (v326 & 7))) & 0x92) + 457) ^ 0xC9) << (v326 & 7 ^ 7u);
  v310[56] = v468 ^ 0x5B;
  *(v265 + 53) = BYTE6(v458) ^ 0x31;
  v472 = (v447 << 47) ^ (v447 << 54) ^ v468;
  *(v265 + 93) = ((((v458 ^ (v453 << 58)) >> 56) & 0x27 ^ 0xE) & (((v458 ^ (v453 << 58)) >> 56) & 0xD8 ^ 0x6F) | ((v458 ^ (v453 << 58)) >> 56) & 0xD0) ^ 0x29;
  v464[33] = BYTE5(v458) ^ 0x9F;
  *(v265 + 96) = BYTE4(v458) ^ 0x44;
  LOBYTE(v471) = *(v465 + (((((v459 ^ 0x13A) + 31903) ^ v459 ^ ((v459 ^ 0xD85C) - 23047) ^ ((v459 ^ 0xACFA) - 11937) ^ ((v459 ^ 0xF7C7) - 30108)) >> 9) ^ 0x72B937C5CB626444 ^ (v471 + 0x72B937C5CB62642DLL - ((2 * v471) & 0x5A))));
  v7[63] = ((((v459 ^ 0x9BE3013A) + 59473055) ^ v459 ^ ((v459 ^ 0x7041D85C) - 399923719) ^ ((v459 ^ 0x51CBACFA) - 912010913) ^ ((v459 ^ 0xDDFEF7C7) + 1167493732)) >> 24) ^ 0x67;
  v7[82] = ((67 * v471) ^ 0xA1) - 51;
  v310[47] = ((((v459 ^ 0x9BE3013A) + 59473055) ^ v459 ^ ((v459 ^ 0x7041D85C) - 399923719) ^ ((v459 ^ 0x51CBACFA) - 912010913) ^ ((v459 ^ 0xDDFEF7C7) + 1167493732)) >> 16) ^ 0x97;
  LOBYTE(v471) = *(STACK[0x6C0] + (BYTE4(v468) ^ 0xA4));
  v7[66] = ((BYTE5(v472) ^ 0x1B) + (~(2 * (BYTE5(v472) ^ 0x1B)) | 0xA7) + 45) ^ 0x2C;
  v7[41] = ((BYTE6(v472) ^ 0xDD) - ((2 * (BYTE6(v472) ^ 0xDD)) & 0x9F) + 79) ^ 0x4F;
  LOBYTE(v471) = (((v471 - 18) ^ 0x4A) >> 4) | (16 * ((v471 - 18) ^ 0x4A));
  v7[56] = (v471 - ((2 * v471) & 0x6C) - 74) ^ 0xB6;
  v473 = *(v461 + (((HIBYTE(v472) ^ 0xA6) - 88) ^ 0x50));
  v310[6] = v467 ^ 0xC6;
  v310[77] = BYTE6(v470) ^ 0xD9;
  v310[17] = (((v470 ^ v469) >> 32) >> 8) ^ 0x59;
  v310[38] = BYTE1(v467) ^ 0x7A;
  *(v265 + 9) = ((v467 ^ (v466 << 23)) >> 24) ^ 0xCC;
  *(v265 + 1) = ((v467 ^ (v466 << 23)) >> 16) ^ 0xA4;
  v7[49] = -29 * ((v473 + 97) ^ 0x71 ^ ((v473 + 97) >> 4) & 0xA);
  v7[61] = ((((v470 ^ v469) >> 56) ^ 0x11) - ((2 * ((v470 ^ v469) >> 56)) & 0xC8) + 100) ^ 0x64;
  v310[69] = (v470 ^ v469 ^ 0x11D959F9CCA47AC6) >> (v392 & 0x20 ^ 0x20) >> (v392 & 0x20);
  *(v265 + 60) = STACK[0x6A0] + 1;
  v474 = STACK[0x8B0];
  LODWORD(STACK[0x880]) -= 573858817;
  STACK[0x1740] = v455 ^ 0x9BA6283CAA03E3F4;
  return (*(v474 + 8 * (LODWORD(STACK[0x890]) + 904802614)))();
}

uint64_t sub_1007433EC@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = STACK[0xBB0] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (v1 + 1211040356 + ((v1 - 2118121411) | 0x36100211) + 261)) ^ v1)))();
}

uint64_t sub_100743444(_DWORD *a1)
{
  v4 = v1 - 15444;
  v5 = ((*a1 ^ 0x9CC8DC7B) + 1664557957) ^ ((*a1 ^ 0x214654D) - 34891085) ^ (v2 + (*a1 ^ 0x4CC039A2) - 1814157604);
  LODWORD(STACK[0x2C4]) = v5;
  return (*(v3 + 8 * ((((((v4 + 1033421368) & 0xC267767F) - 1334188224) ^ (v4 - 75603431) & 0xB4FBBDA3) * (v4 + 313509582 + v5 == 1083400191)) ^ v4)))(4286690431, 4286690431);
}

uint64_t sub_100743A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  v30 = (2 * (a17 & 0xBD83B8FB)) & (a17 ^ 0x15F77AF3) ^ a17 & 0xBD83B8FB ^ ((2 * (a17 & 0xBD83B8FB)) & 0x28044000 | 0x608000);
  v31 = (2 * (a17 ^ 0x15F77AF3)) & 0xA874C208 ^ 0xA8144208 ^ ((2 * (a17 ^ 0x15F77AF3)) ^ 0x50E98410) & (a17 ^ 0x15F77AF3);
  v32 = (4 * v30) & 0xA874C208 ^ v30 ^ ((4 * v30) ^ 0x1820000) & v31;
  v33 = (4 * v31) & 0xA874C208 ^ 0x824C208 ^ ((4 * v31) ^ 0xA1D30820) & v31;
  v34 = v32 ^ (16 * v32) & 0xA874C200 ^ ((16 * v32) ^ 0x6080000) & v33 ^ 0xA8144208;
  v35 = (16 * v33) & 0xA874C200 ^ 0x2830C208 ^ ((16 * v33) ^ 0x874C2080) & v33;
  v36 = (v34 << 8) & 0xA874C200 ^ v34 ^ ((v34 << 8) ^ 0x74C20800) & v35;
  return (*(v29 + 8 * v28))(a1, ((v28 + 9129) | 0x1030u) + 1005216153, 502623595, a17 ^ (2 * ((v36 << 16) & 0x28740000 ^ v36 ^ ((v36 << 16) ^ 0x42080000) & ((v35 << 8) & 0x28740000 ^ 0x8340000 ^ ((v35 << 8) ^ 0x74C20000) & v35))) ^ a28 ^ 0x60F6C122, 3627);
}

uint64_t sub_100743D74()
{
  STACK[0xA328] = 0;
  LODWORD(STACK[0xA750]) = 0;
  STACK[0x8DA0] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x12D3 ^ (v0 + 10838))))();
}

uint64_t sub_100743E3C@<X0>(int a1@<W1>, __int16 a2@<W2>, uint64_t a3@<X3>, unsigned int a4@<W4>, __int16 a5@<W8>)
{
  v10 = *(v9 + ((a2 ^ 3) * a5 - 23161) % ((566 - v7) & a4));
  v11 = v8 + (((((v10 ^ 0xE8) + 24) ^ ((v6 ^ 0xE3 ^ v10) - 54) ^ ((v10 ^ 0x87) + 121)) + 98) ^ 0x4A) * v5;
  *(a3 + (a2 * v5 - (a2 * v5) / 0x3CAu * a1)) = *(a3 + (v11 - ((4427802 * v11) >> 32) * a1));
  return (*(STACK[0x2D0] + 8 * ((996 * (v7 != -291030458)) ^ v6)))();
}

uint64_t sub_100743F8C()
{
  v2 = *(v1 + 3064);
  v3 = *(v1 + 3076);
  v4 = *(v1 + 3080);
  v5 = *(v1 + 3099);
  v6 = *(v1 + 3100);
  v7 = *(v1 + 3104);
  v8 = *(v1 + 3124);
  LODWORD(STACK[0x57C0]) = *(v1 + 3160);
  return (*(STACK[0x57D8] + 8 * (v0 - 18019)))(v2, v4, v3, v8, v6, v5, v7);
}

uint64_t sub_1007440A8()
{
  v2 = *(v0 + 295);
  *(v0 + 2571) = v2;
  v3 = *(v0 + 2560);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v3 & 0xFFFFFFF8 ^ 0x8BCB7373) + 117753145 + ((2 * (v3 & 0xFFFFFFF8)) & 0x1796E6E0))));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (0xEC0BCA35815E07C3 - ((v7 + v8) | 0xEC0BCA35815E07C3) + ((v7 + v8) | 0x13F435CA7EA1F83CLL)) ^ 0xD15B0B60415040D8;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0x259B0BA0792374D2) + 0x12CD85D03C91BA69) ^ 0x773FD10D241C0E95;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0xD46D7E2F8EC80A24) - (v14 + v13) + 0x15C940E8389BFAEELL) ^ 0x85C6F981A67D179FLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA1B29DC5D776132BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v1;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xD8C7B31FCA19D9DELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x5455012E8AB1C38FLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  LOBYTE(v3) = 8 * (v3 & 7);
  v26 = ((((2 * (v25 + v24)) & 0x151C71836214CA48) - (v25 + v24) - 0xA8E38C1B10A6525) ^ 0x9A3EA78240F7C43BLL) >> v3;
  v27 = STACK[0x8070];
  v28 = *(STACK[0x8070] + 7362);
  *(v0 + 2572) = v26;
  v29 = *(v5 + (v6 & ((v4 & 0x8147BF1F) + (v4 | 0x8147BF1D) + 294156687)));
  v30 = (v29 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x9058ADC8BEBA5FB0 - ((v32 + v31) | 0x9058ADC8BEBA5FB0) + ((v32 + v31) | 0x6FA752374145A04FLL)) ^ 0xA5506EA59C814B3;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6FF046966119128DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((((2 * (v37 + v36)) | 0x19DD1CA414105ACCLL) - (v37 + v36) - 0xCEE8E520A082D66) ^ 0xAD5C1397DD7E3E4DLL, 8);
  v39 = (((2 * (v37 + v36)) | 0x19DD1CA414105ACCLL) - (v37 + v36) - 0xCEE8E520A082D66) ^ 0xAD5C1397DD7E3E4DLL ^ __ROR8__(v36, 61);
  v40 = (v38 + v39 - ((2 * (v38 + v39)) & 0x1B32C3CA7E90B6BCLL) - 0x72669E1AC0B7A4A2) ^ 0x629D41A4CAAD13B2;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xD8C7B31FCA19D9DELL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (0xABEF7B5EE1E87C07 - ((v44 + v43) | 0xABEF7B5EE1E87C07) + ((v44 + v43) | 0x541084A11E1783F8)) ^ 0x45858F94A64077;
  *(v27 + 7362) = v2 ^ v28 ^ (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x6F4F60BC0E025EE0) >> v3);
  v46 = (STACK[0x8070] + 6769);
  *(v0 + 2608) = v46;
  *(v0 + 2623) = *v46;
  v47 = *(v0 + 3920) + 42;
  *(v0 + 296) = v47;
  v48 = STACK[0x57D8];
  v49 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D50]) + 31610));
  *(v0 + 2624) = v47;
  *(v0 + 280) = v49;
  return (*(v48 + 8 * (LODWORD(STACK[0x4D68]) + 29306)))();
}

uint64_t sub_1007447D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, const char *a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q1>, int8x16_t a10@<Q2>, int8x16_t a11@<Q3>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v30 = vld4q_s8(a4);
  v20 = veorq_s8(v30.val[1], a11);
  _Q22 = vmovl_u8(*v20.i8);
  _Q21 = vmovl_high_u8(v20);
  __asm
  {
    SHLL2           V23.4S, V21.8H, #0x10
    SHLL2           V24.4S, V22.8H, #0x10
  }

  *v19 = veorq_s8(vbslq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q22.i8, 0x10uLL), vshll_n_u16(*&vmovl_u8(*&veorq_s8(v30.val[2], a11)), 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v30.val[0], a11))), 0x18uLL)), a9, veorq_s8(vmovl_u16(*&vmovl_u8(*v30.val[3].i8)), a8)), a10).u32[0];
  return (*(a7 + 8 * a2))(*(a7 + 8 * a2), a1, a2, a3, a4, 1994056361, a5, a6, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100744978()
{
  v0 = LODWORD(STACK[0x38EC]) - 5664;
  STACK[0xC2D8] = STACK[0x7280];
  LODWORD(STACK[0x723C]) = STACK[0xB654];
  LODWORD(STACK[0x708C]) = -276972023;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100744A04(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  LODWORD(STACK[0x37D8]) = 0;
  v17 = STACK[0x37F8];
  v18 = STACK[0x3850];
  v19 = STACK[0x37E8];
  v20 = v12;
  v21 = STACK[0x3838];
  v22 = STACK[0x3838];
  STACK[0x3AD8] = (v9 + 1928653769) & 0x8D0AEDF4;
  v23 = (STACK[0x3820] ^ 0xB8) * a7 + 9544938;
  v24 = v13 << 56;
  v26 = STACK[0x3830];
  v27 = STACK[0x3810];
  v28 = STACK[0x3AE0];
  v29 = *(STACK[0x3AE0] + v23 - 6784 * (((v23 * v14) >> 32) >> 1));
  v30 = (v22 << (((v9 - 55) & 0xF4u) + 72)) | (v17 << 48) | (STACK[0x3820] << 8) | (v19 << 32) | (STACK[0x3810] << 24) | (v11 << 56) | STACK[0x3818];
  LODWORD(v22) = 4647 * (a3 ^ 0x90) + 25186740;
  v31 = STACK[0x3828];
  v32 = v24 & 0xFFFFFFFF0000FFFFLL | (v10 << 40) | (a4 << 24) | (STACK[0x3828] << 16) | (a8 << 8) | (v18 << 32);
  v33 = *(STACK[0x3AE0] + v22 - 6784 * (((v22 * v14) >> 32) >> 1));
  v34 = v30 + (STACK[0x3830] << 16);
  v35 = STACK[0x3848];
  v36 = a5 | (v35 << 48) | v32;
  STACK[0x37C0] = v15 - v8;
  LODWORD(v30) = *(v28 + 4647 * (v35 ^ 0xC4) + 14331348 - 6784 * ((((4647 * (v35 ^ 0xC4u) + 14331348) * v14) >> 32) >> 1)) + 117;
  v37 = LODWORD(STACK[0x3AA8]) ^ 0x3F;
  STACK[0x35B0] = v34 ^ 0x66BD0F2FDE22E9FBLL;
  LODWORD(STACK[0x3480]) = (v33 ^ 0xFFFFFFC3) + 85;
  v38 = *(v28 + 4647 * v37 + 13123128 - 6784 * ((((4647 * v37 + 13123128) * v14) >> 32) >> 1)) - 71;
  STACK[0x3AB8] = v36;
  STACK[0x35B8] = v36 ^ 0x94E91598DF6A5424;
  v39 = LODWORD(STACK[0x3AA0]) ^ 0xB2;
  LOBYTE(v33) = STACK[0x3800] ^ 0x9A;
  LODWORD(STACK[0x3470]) = ((v29 - 87) ^ 0xFFFFFFFB) + 85;
  v40 = *(v28 + 4647 * v39 + 9544938 - 6784 * ((((4647 * v39 + 9544938) * v14) >> 32) >> 1)) - 87;
  LODWORD(v32) = *(v28 + 4647 * v33 + 25186740 - 6784 * ((((4647 * v33 + 25186740) * v14) >> 32) >> 1));
  LODWORD(STACK[0x33F0]) = (v38 ^ (v38 << 6) ^ (4 * v38) ^ 0xFFFFFFFE) + 26;
  LODWORD(STACK[0x34A0]) = (v30 ^ 0x12 ^ (v30 >> 2) & 0x12) + 26;
  LODWORD(STACK[0x3400]) = (v40 ^ 0xFFFFFFFB) + 85;
  v41 = *(v16 + 8 * v9);
  LODWORD(STACK[0x3458]) = (v32 ^ 0xFFFFFFC3) + 85;
  LODWORD(STACK[0x3AB0]) = 1;
  LODWORD(STACK[0x3430]) = STACK[0x3540];
  LODWORD(STACK[0x3428]) = STACK[0x35D0];
  LODWORD(STACK[0x3440]) = STACK[0x3550];
  LODWORD(STACK[0x3420]) = STACK[0x35D8];
  LODWORD(STACK[0x3418]) = STACK[0x3548];
  LODWORD(STACK[0x3410]) = STACK[0x35C0];
  LODWORD(STACK[0x3408]) = v20;
  LODWORD(STACK[0x3468]) = v31;
  LODWORD(STACK[0x3460]) = v17;
  LODWORD(STACK[0x3488]) = a4;
  LODWORD(STACK[0x33F8]) = STACK[0x3570];
  LODWORD(STACK[0x33B0]) = v27;
  LODWORD(STACK[0x33C0]) = v26;
  LODWORD(STACK[0x3448]) = STACK[0x37F0];
  LODWORD(STACK[0x33E8]) = STACK[0x37B8];
  LODWORD(STACK[0x3478]) = v18;
  LODWORD(STACK[0x33E0]) = STACK[0x3568];
  LODWORD(STACK[0x3450]) = STACK[0x37E0];
  LODWORD(STACK[0x3490]) = v19;
  LODWORD(STACK[0x3438]) = STACK[0x35C8];
  LODWORD(STACK[0x33D8]) = STACK[0x3538];
  LODWORD(STACK[0x3498]) = STACK[0x3808];
  LODWORD(STACK[0x3558]) = 1;
  LODWORD(STACK[0x33D0]) = STACK[0x3590];
  LODWORD(STACK[0x33C8]) = STACK[0x3580];
  LODWORD(STACK[0x33A8]) = STACK[0x3840];
  LODWORD(STACK[0x33A0]) = v21;
  STACK[0x37C8] = 0;
  return v41();
}

uint64_t sub_100744ECC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9A8] = a1;
  LODWORD(STACK[0x123C]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100744F6C()
{
  v4 = STACK[0xAA8] - 0x79CEC8CF5A6FCE72;
  v5 = STACK[0xF10];
  v6 = STACK[0xF98];
  STACK[0x1AC8] = &STACK[0x1D80] + v0;
  STACK[0xAB0] = v1;
  STACK[0xCE0] = v5;
  STACK[0x17A8] = v6;
  v7 = (*(v3 + 8 * (v2 ^ 0x411F)))();
  STACK[0x1300] = 0;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v6 == 0;
  return (*(v3 + 8 * ((25 * (((v2 - 69) ^ v10) & 1)) ^ v2)))(v7);
}

uint64_t sub_1007450A4@<X0>(unint64_t a1@<X8>)
{
  v8 = *(v4 + 3880);
  v9 = 1534937323 * ((-654333232 - ((v7 - 240) | 0xD8FFAAD0) + ((v7 - 240) | 0x2700552F)) ^ 0xE1EEAE68);
  STACK[0x25E0] = v1;
  *(v7 - 216) = (v5 + 8468) ^ v9;
  *(v7 - 212) = ((((v5 - 1163691267) & 0x455C7DFA) + 115474571) ^ v2) + v9;
  STACK[0x25F8] = a1;
  STACK[0x25D0] = a1;
  STACK[0x25F0] = v8;
  *(v7 - 228) = (v3 ^ 0x7B6DFFFF) - v9 + ((2 * v3) & 0xF6DBFFFE) - 1745193880;
  v10 = (*(v6 + 8 * (v5 + 22314)))(v7 - 240);
  return (*(v6 + 8 * v5))(v10);
}

uint64_t sub_1007451A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{
  *(v27 - 232) = (v24 - 1723111845) ^ (1917435887 * ((2 * ((v27 - 240) & 0x2465CFC8) - (v27 - 240) - 610652111) ^ 0x3D216B37));
  STACK[0x25D0] = a24;
  v28 = (*(v26 + 8 * (v24 + 31104)))(v27 - 240);
  *(v25 + 1176) = *(v26 + 8 * v24);
  return (*(v26 + 8 * ((((v24 - 610) | 0x6801) ^ 0x7B5C) + v24)))(v28);
}

uint64_t sub_100745360()
{
  v1 = v0 ^ 0xA96F2088;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 1452348146)))();
  STACK[0x6700] = 0;
  return (*(v2 + 8 * ((49341 * (v1 >= ((v1 + 1452321771) ^ 0xC9AED710))) ^ (v1 + 1452332772))))(v3);
}

uint64_t sub_1007453D0()
{
  *(v2 - 240) = 0;
  *(v2 - 232) = (v0 - 1723137048) ^ (1917435887 * ((v2 - 240) ^ 0xE6BB5B06));
  v3 = (*(v1 + 8 * (v0 + 5901)))(v2 - 240);
  v5 = **(&off_101353600 + v0 - 24995) != (v0 ^ 0x6523) || **(&off_101353600 + (v0 ^ 0x6179)) == 0;
  return (*(v1 + 8 * ((v5 * (v0 ^ 0x652C)) ^ v0)))(v3);
}

uint64_t sub_100745590(uint64_t a1, char a2)
{
  STACK[0x1BC0] = v3;
  v6 = STACK[0xA48];
  STACK[0x1BC8] = STACK[0xA48];
  return (*(v5 + 8 * ((1020 * ((((v2 - a2 + 81) ^ (v4 + 111)) ^ (v3 - v6 > 9)) & 1)) ^ v2)))();
}

uint64_t sub_1007455E4()
{
  LODWORD(STACK[0x1B68]) = v0;
  LODWORD(STACK[0x1674]) = v2;
  STACK[0xC80] = 0;
  LOBYTE(STACK[0x1B6F]) = 0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10074561C@<X0>(_BYTE *a1@<X8>)
{
  *a1 = LOBYTE(STACK[0xD8C]) ^ 0x87;
  a1[1] = LOBYTE(STACK[0xD8D]) ^ 0x87;
  a1[2] = LOBYTE(STACK[0xD8E]) ^ (-25 * (v1 ^ 0xC8) + 54);
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100745668@<X0>(int a1@<W0>, int a2@<W3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X8>, int8x16_t a6@<Q3>, int8x16_t a7@<Q4>)
{
  v11 = (v9 + (v7 + a2));
  v12 = *v11;
  v13 = v11[1];
  v14 = (a3 + v7);
  *v14 = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a7)), a6);
  v14[1] = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a7)), a6);
  return (*(a5 + 8 * ((1023 * ((v8 ^ (v10 - 989) ^ a4) + v7 != 64)) ^ (v8 + a1))))();
}

uint64_t sub_100745720()
{
  v1 = *(STACK[0xA1C8] + 24);
  STACK[0x8F38] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 + 6) ^ 0x4436) - 22556)) ^ v0)))();
}

uint64_t sub_1007457B0()
{
  v1 = STACK[0x82F0];
  LODWORD(STACK[0xBF5C]) = LODWORD(STACK[0xDEF4]) - 769884012 + (((*STACK[0x82F0] ^ 0xB8CC3179) + 1194577543) ^ ((*STACK[0x82F0] ^ 0x9EB3D987) + 1632380537) ^ (((v0 - 13207) | 0x200) + 194797951 + (*STACK[0x82F0] ^ 0xF463686A)));
  return (*(STACK[0x57D8] + 8 * ((25 * (*(v1 + 1768) == 0)) ^ v0)))();
}

uint64_t sub_10074586C()
{
  v3 = ((v0 + 10679) ^ 0x537D) - 143115930;
  v4 = STACK[0x7A00];
  v5 = v1 - 1;
  if (LODWORD(STACK[0x7A00]) == -769884024)
  {
    v5 = -143113071;
  }

  v6 = v2 == v3;
  v7 = v2 == v3;
  if (!v6)
  {
    v5 = v2;
  }

  LODWORD(STACK[0x7B24]) = v5;
  if (v4 != -769884024)
  {
    v7 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((56 * v7) ^ v0)))();
}

uint64_t sub_100745A48()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 12728)))();
  *(v0 + 8) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100745AC0(double a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = (v19 ^ a16 ^ ((v18 - 2958) | v21)) + v17;
  v29 = (v28 + v16) & 0xF;
  v31 = v23[25];
  v32.i64[0] = vqtbl4q_s8(*(&a2 - 1), v31).u64[0];
  v32.i64[1] = vqtbl4q_s8(*a5.n128_u64, v31).u64[0];
  v33 = vrev64q_s8(vmulq_s8(v32, v27));
  *(a12 + v28) = veorq_s8(veorq_s8(veorq_s8(*(v26 + v29), *(v20 + v28 + v16)), veorq_s8(*(v29 + v25 + 4), *(v24 + v29))), vextq_s8(v33, v33, 8uLL));
  return (*(STACK[0x57D8] + 8 * (((a13 == v19) * v22) ^ v18)))();
}

uint64_t sub_100745B80@<X0>(int a1@<W8>)
{
  v4 = (v1 - 1900) | 0x4310;
  LODWORD(STACK[0x5640]) = v4;
  v5 = *(STACK[0xDCB8] + v2 + (v4 ^ 0x18FF4FC) - 6152 * (((v4 ^ 0x18FF4FCu) + v2) / 0x1808));
  v6 = *(STACK[0xDCB0] + 4 * ((6419 * (v5 | ((v5 < 0x4C) << 8)) + 1161839) % 0x2240));
  v7 = 5621 * (((HIBYTE(v6) ^ 0x47E0D06) - 1740085597) ^ ((HIBYTE(v6) ^ 0xC0E140C1) + 1557605222) ^ ((HIBYTE(v6) ^ 0xC49F4D85) + 1487480354)) + 184123415;
  v8 = *(STACK[0xDCB8] + 5621 * (BYTE1(v6) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v6) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v9 = *(STACK[0xDCB8] + 5621 * (BYTE2(v6) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v6) ^ 0x38u) + 32028458)) >> 32) >> 7));
  LOBYTE(v6) = *(STACK[0xDCB8] + (5621 * (((v6 ^ 0xDC87C4B9) + 2008718261) ^ ((v6 ^ 0xEE1F62A) - 1512265432) ^ ((v6 ^ 0xD2663275) + 2036034937)) + 390958670) % 0x1808);
  LOBYTE(v7) = *(STACK[0xDCB8] + v7 % 0x1808);
  v10 = v7 & 0x10 ^ 0xF6;
  v11 = v9 & 0x36 | 0xC1;
  LOBYTE(v7) = v7 ^ (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v12 = v8 & 0xE0 ^ 0x3E;
  v13 = (v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x4F2EFE;
  v14 = ((v7 ^ 0x10) << 16) | (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * (((2 * (v9 & 0x36)) | 2) & v9 ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0x36) << 8);
  v15 = v6 & 0x2C ^ 0xDC;
  v16 = v6 ^ (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(STACK[0xDCB0] + 4 * (v3 % 0x2240)) = ((((v13 & ~v14 | v14 & 0xB0D100) << 8) ^ 0x35B3CB10) & (v16 ^ 0xFFFFFF9F) | v16 & 0xEF) ^ 0x38A55ADA;
  return (*(STACK[0x57D8] + 8 * ((27784 * (a1 == 0)) ^ v1)))();
}

uint64_t sub_100745F60()
{
  v0 = STACK[0x1574];
  v1 = STACK[0x57D8];
  STACK[0x6568] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1574]));
  return (*(v1 + 8 * ((v0 + 5457) ^ v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_100745FBC(int a1)
{
  v6 = ((((a1 - 1) | 3) ^ 0x37) + *(STACK[0xFE78] + (v5 + 3903 * v1) % 0x1708u));
  LOBYTE(v6) = *(STACK[0xFE78] + v2 + 3903 * v6 - 5896 * (((93242167 * (v2 + 3903 * v6)) >> 32) >> 7));
  v7 = v6 & 0x92 ^ 0x5F;
  v8 = v6 ^ 0x64;
  *(STACK[0xFE70] + 4 * ((v3 + 2717 * v1) % 0x2240u)) = (v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & 0x36 ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ (v4 - 142);
  return (*(STACK[0x57D8] + 8 * ((43 * ((v1 + 1) < 0x100)) ^ a1)))();
}

uint64_t sub_1007460E0@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0x57C0] = *(STACK[0x57D8] + 8 * v1);
  STACK[0xD940] = 0;
  return (*(v2 + 8 * (((STACK[0xD940] < 0x20) * ((a1 ^ 0x6EFF) - 22585)) ^ a1)))();
}

uint64_t sub_100746230()
{
  v3 = *(STACK[0x5730] + (v0 | 1));
  v4 = *(v2 + (v3 ^ (v1 - 53)) + 10005);
  v5 = STACK[0x5780];
  *(v5 + v0) = ((*(STACK[0x5730] + v0) ^ 0x20) - (*(STACK[0x5730] + v0) ^ 0x9E)) ^ 0x5C ^ *((*(STACK[0x5730] + v0) ^ 0xA1) + v2 + 10005);
  *(v5 + (v0 | 1)) = ((v3 ^ 0x20) - (v3 ^ 0x9E)) ^ 0x5C ^ v4;
  return (*(STACK[0x57D8] + 8 * ((11 * (v0 == 254)) ^ v1)))();
}

uint64_t sub_1007462D4()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x5E70] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2E90]));
  return (*(v1 + 8 * (v0 - 3061)))();
}

uint64_t sub_100746438(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  a4[15] = v4[15];
  a4[14] = v4[14];
  a4[13] = v4[13];
  a4[12] = v4[12];
  a4[11] = v4[11];
  a4[10] = v4[10];
  a4[9] = v4[9];
  a4[8] = v4[8];
  a4[7] = v4[7];
  a4[6] = v4[6];
  a4[5] = v4[5];
  a4[4] = v4[4];
  a4[3] = v4[3];
  a4[2] = v4[2];
  a4[1] = v4[1];
  *a4 = *v4;
  return (*(v6 + 8 * (v5 ^ 0x5602)))();
}

uint64_t sub_1007464EC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = STACK[0x1170];
  STACK[0xD08] = STACK[0x1170];
  return (*(v4 + 8 * (((v5 != 0x683CBC57EAB92A3ELL) * ((a3 + ((v3 - 2659204) & 0xB7F8B7B9) + 877) ^ 0x6D29)) ^ v3)))();
}

uint64_t sub_10074669C()
{
  v3 = STACK[0x578];
  v4 = 551690071 * ((v2 + 0x6CE66A205F8D5847 - 2 * ((v2 - 216) & 0x6CE66A205F8D591FLL)) ^ 0x1D7B38EE11600A48);
  v5 = LODWORD(STACK[0x574]) ^ v4;
  *(v2 - 216) = v4 ^ 0xBFAEBE85;
  *(v2 - 212) = v5;
  *(v2 - 208) = (v3 ^ 0x18) - v4;
  *(v2 - 204) = v3 - v4;
  *(v2 - 200) = v4;
  *(v2 - 192) = (v1 & 7 ^ 0xA88CF6B2) - v4;
  *(v2 - 184) = v4 + 2827810482;
  v6 = (*(v0 + 254520))(v2 - 216);
  return (*(v0 + 8 * *(v2 - 196)))(v6);
}

uint64_t sub_1007467A4()
{
  STACK[0x1A48] = v1;
  v3 = STACK[0x1588];
  STACK[0x1A50] = STACK[0x1588];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 + 10277) | 0x202) ^ 0x790A)) ^ v0)))();
}

uint64_t sub_10074688C()
{
  LODWORD(STACK[0x5710]) ^= 0x35EA56B1u;
  v8 = LODWORD(STACK[0x56E0]) - 762436488;
  LODWORD(STACK[0x55D0]) = (v8 ^ 0x652465D6) - 1947041502;
  LODWORD(STACK[0x55C0]) = (v8 ^ 0xBEB8BF3C) + 1349409740;
  v9 = LODWORD(STACK[0x5750]) - ((2 * LODWORD(STACK[0x5750])) & 0x6A971D7C) - 1253339458;
  LODWORD(STACK[0x5450]) = v0 ^ 0xB7A1FBEA;
  LODWORD(STACK[0x55B0]) = (v9 ^ v0 ^ 0xB7A1FBEA ^ -(v9 ^ v0 ^ 0xB7A1FBEA) ^ (v5 - (v9 ^ v0 ^ 0xB7A1FBEA ^ v5))) + v5;
  v10 = v2 & 0xFFFFFFF8 | ((-1959502585 * v6) >> 29);
  v11 = ((LODWORD(STACK[0x56D0]) + v10) ^ v4 & 0xFFFFFFEF) + 2 * (v10 & v4);
  v12 = 1017580945 * v11;
  v13 = (608174080 * v7) | ((-1723327343 * v7) >> 10);
  v14 = -1306525696 * v11;
  v15 = -2127015306 - 1040187392 * v10 + ((2004284513 * v10) >> 7) - ((2 * ((2004284513 * v10) >> 7)) & 0x270A4EC);
  v16 = v15 ^ (v13 - 2127015306 - 2 * (v13 & 0x138527F ^ ((-1723327343 * v7) >> 10) & 9));
  v17 = ((321356544 * v1) | ((-485283965 * v1) >> 24)) - v13;
  v18 = (v14 & 0xFFE00000 | (v12 >> 11)) - 959666308 - 2 * ((v14 & 0x46C00000 | (v12 >> 11) & 0x46CCA77D) ^ (v12 >> 11) & 1);
  v19 = __ROR4__(v18 ^ (v16 - 959666308 - ((2 * v16) & 0x8D994EF8)), 22);
  v20 = (v18 ^ 0xC6CCA77C) + ((v17 - 2127015306 - ((2 * v17) & 0x270A4EC)) ^ v15);
  v21 = (__ROR4__(v19 ^ 0x141E7BAF, 10) ^ 0x9853BB63) + v20;
  LODWORD(STACK[0x5430]) = v21;
  v22 = v21 ^ 0x549DBC9B;
  v23 = (((v15 ^ 0xA66EB9F5) + 1502692875) ^ ((v15 ^ 0xD7A6073B) + 676985029) ^ ((v15 ^ 0xF0F0ECB8) + 252646216)) - 1139594802 - (v21 ^ 0x549DBC9B);
  v24 = ((2 * (v23 & 0xC52528A8)) & 0x2020150 | v23 & 0xC52528A8) ^ (2 * (v23 & 0xC52528A8)) & (v23 ^ 0xD732857D);
  v25 = ((2 * (v23 ^ 0xD732857D)) ^ 0x242F5BAA) & (v23 ^ 0xD732857D) ^ (2 * (v23 ^ 0xD732857D)) & 0x1217ADD4;
  v26 = v25 ^ 0x1210A455;
  v27 = (v25 ^ 0x2050195) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x485EB754) & v26 ^ (4 * v26) & 0x1217ADD4;
  v29 = (v28 ^ 0x16A541) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x12010881)) ^ 0x217ADD50) & (v28 ^ 0x12010881) ^ (16 * (v28 ^ 0x12010881)) & 0x1217ADD0;
  v31 = v29 ^ 0x1217ADD5 ^ (v30 ^ 0x128D00) & (v29 << 8);
  v32 = v23 ^ (2 * ((v31 << 16) & 0x12170000 ^ v31 ^ ((v31 << 16) ^ 0x2DD50000) & (((v30 ^ 0x12052085) << 8) & 0x12170000 ^ 0x120000 ^ (((v30 ^ 0x12052085) << 8) ^ 0x17AD0000) & (v30 ^ 0x12052085))));
  LODWORD(STACK[0x54A0]) = v32;
  HIDWORD(v33) = v32 ^ 0x486F;
  LODWORD(v33) = v32 ^ 0xC4C60000;
  LODWORD(STACK[0x54B0]) = v18;
  v34 = v20 - v22 - ((2 * (v20 - v22)) & 0x93A4D60) + 77407920;
  HIDWORD(v33) = (v33 >> 15) ^ 0x76DA4BCC;
  LODWORD(v33) = HIDWORD(v33);
  LODWORD(STACK[0x54E0]) = v34;
  v35 = (-1253761024 * (v33 >> 17)) | ((1226156585 * (v33 >> 17)) >> 19);
  LODWORD(STACK[0x5460]) = v22 ^ v18;
  v36 = 1671811584 * (((v22 ^ v18 ^ 0x7E9E65) + 616715099) ^ ((v22 ^ v18 ^ 0x4FAEF4) + 1257464780) ^ ((v22 ^ v18 ^ 0x7D97ED) - 1665049901)) - 16762880 + ((-936258839 * (((v22 ^ v18 ^ 0x7DEC5CA7) + 1238405529) ^ ((v22 ^ v18 ^ 0x3AE0BB53) + 249329261) ^ ((v22 ^ v18 ^ 0x81C04088) - 1241739848)) + 889159708) >> 23);
  HIDWORD(v33) = v20 - v22;
  LODWORD(v33) = 937286448 - 475413543 * (((v34 ^ 0xDAB148A9) + 625915735) ^ ((v34 ^ 0x3530E742) - 892397378) ^ ((v34 ^ 0xEB1C895B) + 350451365));
  v37 = v33 >> 3;
  v38 = (v36 ^ (-1744044032 * v22 + ((1928226307 * v22) >> 14)) ^ v35) + v37;
  v39 = (-1904472765 * v38) >> 29;
  v40 = (1944087064 * v38) | v39;
  v41 = (381241600 * v36) | ((-1323910839 * v36) >> 24);
  v42 = (788529152 * v37) | ((-299063761 * v37) >> 8);
  v43 = ((v40 ^ ((1051405696 * v35) | ((-1736616357 * v35) >> 25))) + v41) ^ v42;
  v44 = (1368464128 * v43) | ((-229535461 * v43) >> 24);
  HIDWORD(v33) = v39;
  LODWORD(v33) = 1814139543 * v40;
  v45 = v33 >> 1;
  v46 = (-480017088 * v42) | ((596479509 * v42) >> 26);
  v47 = ((-583375104 * v41) | ((1843214951 * v41) >> 24)) + v46 + v45 + v44;
  v48 = 1533514960 * v45 + ((1974892877 * v45) >> 28);
  v49 = (-1821672276 * v44) | ((-455418069 * v44) >> 30);
  v50 = (-1511422720 * v47) | ((-1901729403 * v47) >> 24);
  v51 = v49 + (v48 ^ ((750129712 * v46) | ((-758423261 * v46) >> 28))) + v50;
  v52 = (v50 ^ (v49 + v48) ^ 0xB2590E03) + v51 + 164777983;
  v53 = ((v50 - v52) ^ 0x3DBFFFF6) - 553650528 + ((2 * (v50 - v52)) & 0x7B7FFFEC);
  v54 = (1950712799 * (v52 + v49)) >> 26;
  LODWORD(STACK[0x5440]) = v52 + v49;
  v55 = (291567552 * (v52 + v49)) | v54;
  v56 = 838860800 * v53 - 1275068416 + ((1582318873 * v53 + 1357544794) >> 7);
  LODWORD(STACK[0x5510]) = v52 ^ v51;
  v57 = (777158144 * (v52 ^ v51)) | ((-1047058113 * (v52 ^ v51)) >> 23);
  v58 = (v55 ^ ((-902155200 * v52) | ((187230417 * v52) >> 26)) ^ v56) - v57;
  v59 = (1879375872 * v58) | ((-802590715 * v58) >> 16);
  v60 = (-1893203968 * v56) | ((109711845 * v56) >> 13);
  HIDWORD(v33) = v54;
  LODWORD(v33) = 57385553 * v55;
  v61 = -452984832 * v57 + ((-244293147 * v57) >> 8);
  v62 = (v59 ^ (v33 >> 2)) - v60 + v61;
  v63 = (570846976 * v59) | ((1596065391 * v59) >> 24);
  v64 = (1375731712 * v62) | ((530681769 * v62) >> 7);
  v65 = (-2146940984 * v61) | ((-1878980359 * v61) >> 29);
  v66 = (-299786736 * v60 + ((1055005153 * v60) >> 28) + v63 - v64) ^ v65;
  v67 = (237207552 * v63) | ((-1946674105 * v63) >> 17);
  v68 = (-1211244544 * v64) | ((-96616849 * v64) >> 19);
  LODWORD(STACK[0x5490]) = -485694077 * v66;
  v69 = (-444399616 * v66) | ((-485694077 * v66) >> 16);
  v70 = (-127786681 * (v67 - v68)) ^ v69;
  v71 = v69 ^ (((-1742531776 * v65) | ((1180732493 * v65) >> 26)) + v67 + v68);
  v72 = v70 - v71 + 142302222;
  LODWORD(STACK[0x55A0]) = (v8 ^ 0x954A3C1D) + 2073876715;
  LODWORD(STACK[0x5500]) = v70 + 142302222 - 2 * (v72 & v71) + 1192669554 - ((2 * (v70 + 142302222 - 2 * (v72 & v71))) & 0x8E2D62E4);
  LODWORD(STACK[0x56E0]) = v8;
  LODWORD(STACK[0x5560]) = (v8 ^ 0x5FFFFDFF) - 1322706679;
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x56F0]) + 632826237;
  LODWORD(STACK[0x5590]) = (v53 ^ 0x490C3F1) - 405747047;
  LODWORD(STACK[0x5550]) = (v53 ^ 0x9CFE546D) + 2143182085;
  LODWORD(STACK[0x5580]) = (v53 ^ 0x572C9EF1) - 1267951719;
  LODWORD(STACK[0x56D0]) = v53;
  LODWORD(STACK[0x5570]) = (v53 ^ 0xD3FDFFFB) + 817755795;
  v73 = STACK[0x5740];
  LODWORD(STACK[0x54C0]) = v72 + v68 - 1135840304 - ((2 * (v72 + v68)) & 0x7898E7A0);
  v74 = STACK[0x5790];
  LODWORD(STACK[0x5540]) = HIWORD(LODWORD(STACK[0x5790])) ^ 0x64B1;
  LODWORD(STACK[0x5720]) = HIBYTE(v74) ^ 0x64;
  LODWORD(STACK[0x5700]) = HIBYTE(v3);
  LODWORD(STACK[0x5530]) = HIWORD(v3);
  LODWORD(STACK[0x5470]) = v3 >> 8;
  LODWORD(STACK[0x5520]) = HIWORD(v52);
  LODWORD(STACK[0x56F0]) = HIBYTE(v52);
  LODWORD(STACK[0x5480]) = v69;
  LODWORD(STACK[0x54F0]) = v72 ^ v69;
  return (*(STACK[0x57D8] + 8 * v73))(&off_101353600, 1533716288, 196);
}

uint64_t sub_1007475E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v7 - 6152 * (((v7 * v8) >> 64) >> 12);
  v10 = *(a5 + 1368);
  v11 = *(*(a5 + 1360) + 4 * ((((*(v10 + v9) | ((*(v10 + v9) < 0x4Cu) << 8)) + 763554393) * ((8275 * (v5 ^ 0x411E)) ^ 0x59B5u) - 695158828) % 0x2240));
  *(v10 + v9) = (((v11 ^ 0x7E) - 92) ^ ((v11 ^ 0xE) - 44) ^ ((v11 ^ 0x96) + 76)) + 16;
  return (*(STACK[0x57D8] + 8 * ((44 * (v6 == 0)) ^ v5)))();
}

uint64_t sub_100747700()
{
  v4 = *((*(STACK[0x8070] + (12337 * v0 + v2) % 0x3282u) ^ 0xFLL) + STACK[0x5490] + 13896);
  v5 = (((v4 ^ 0xFFFFFF99) + 103) ^ ((v4 ^ 8) - 8) ^ ((v4 ^ 0xFFFFFF94) + 108)) + 14;
  *(STACK[0x8070] + (12337 * v0 + v3) % 0x3282u) = v5 ^ (v5 >> 1) & 0xE ^ 0x77;
  return (*(STACK[0x57D8] + 8 * ((1950 * (v0 != 255)) ^ v1)))();
}

uint64_t sub_100747850(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x2C8]) = a7;
  LODWORD(STACK[0x2A4]) = a4;
  LODWORD(STACK[0x2A8]) = v7 - 1627895226;
  v12 = (*(&STACK[0x2E0] + LODWORD(STACK[0x280]) + 217 * a4 + 1193 - 970 * (((((LODWORD(STACK[0x280]) + 217 * a4 + 1193) >> 1) * v11) >> 32) >> 8)) ^ 0x56) << 8;
  v13 = 217 * a4 + 139314;
  v14 = ((*(&STACK[0x2E0] + 217 * a4 + 121086 - 970 * (((((217 * a4 + 121086) >> 1) * v11) >> 32) >> 8)) ^ 0x56) << 16) | ((*(&STACK[0x2E0] + 217 * a4 + 121303 - 970 * (((((217 * a4 + 121303) >> 1) * v11) >> 32) >> 8)) ^ 0x56) << 24);
  v15 = (*(&STACK[0x2E0] + v13 % 0x3CA) ^ 0xBC) << 8;
  v16 = *(&STACK[0x2E0] + (217 * a4 + 139531) % 0x3CAu) ^ 0xBC;
  v17 = a2 - 263022158;
  v18 = (*(&STACK[0x2E0] + 217 * a4 + 139097 - 970 * (((((217 * a4 + 139097) >> 1) * v11) >> 32) >> 8)) ^ 0xAF8ABCEF) & ~v15 | v15 & 0x4300;
  v19 = ((*(&STACK[0x2E0] + 217 * a4 + 120652 - 970 * (((((217 * a4 + 120652) >> 1) * v11) >> 32) >> 8)) ^ 0xA81B40F3) & ~v12 | v12 & 0xFFFFBFFF) ^ 0xA81B404F;
  v20 = (*(&STACK[0x2E0] + (((a4 + 3) | (252 - a4)) & 0xD9u) * (a4 + 644) % 0x3CA) ^ 0xBC) << 24;
  LODWORD(STACK[0x294]) = v20;
  v21 = v20 | (v16 << 16);
  v22 = STACK[0x2B8];
  v23 = LODWORD(STACK[0x2B8]) ^ a5;
  v24 = v14 + v19;
  LODWORD(STACK[0x298]) = 17 * v9;
  v25 = v21 + (v18 ^ 0xAF8ABC53);
  v26 = v25 ^ v22;
  v27 = 217 * a4 + 120869;
  LODWORD(STACK[0x290]) = v25 - v22;
  v28 = v24 ^ v17 ^ 0xEA;
  v29 = a3 ^ 0xEA ^ v24;
  v30 = 217 * a4 + 139965;
  v31 = *(&STACK[0x2E0] + (217 * a4 + 121737) % 0x3CAu);
  v32 = v8 ^ 0x90592141;
  v33 = (((*(&STACK[0x2E0] + (217 * a4 + 121520) % 0x3CAu) ^ 0xD86E471E) & ~((v31 ^ 0x56) << 8) | ((v31 ^ 0x56) << 8) & 0xB800) ^ 0xD86E47A2) + ((*(&STACK[0x2E0] + (217 * a4 + 121954) % 0x3CAu) ^ 0x56) << 16);
  v34 = *(&STACK[0x2E0] + (217 * a4 + 122171) % 0x3CAu);
  v35 = v10 - 2041226197 + v29;
  HIDWORD(v36) = (v34 >> 2) ^ 0xFFFFFFEF;
  LODWORD(v36) = v34 << 30;
  v37 = (v28 ^ v26) - v28;
  v38 = (217 * a4 + 140182) % 0x3CAu;
  v39 = -177545129 - v32;
  v40 = a3 ^ v17 ^ LODWORD(STACK[0x2A8]);
  LODWORD(STACK[0x2B8]) = v40;
  v41 = (a3 ^ v17) - (v10 - 1793728839);
  *(STACK[0x2B0] + 4 * ((17 * v9 + 1241) % 0x8Du)) = v35;
  v42 = v33 + (((v36 >> 30) ^ 0xEA) << 24);
  v43 = *(&STACK[0x2E0] + v30 % 0x3CA) ^ 0xE5440CF6;
  v44 = v32 - 1793728839;
  v45 = v32;
  v46 = LODWORD(STACK[0x2C8]) ^ 0x27A63064 ^ v23;
  LODWORD(STACK[0x2C8]) = v46;
  v47 = (v17 ^ 0x16292655) - 610004738 + v40;
  v48 = v23 - v44;
  v49 = (a5 ^ 0x16292655) - 610004738 + v46;
  v50 = (*(&STACK[0x2E0] + v38) ^ 0xBC) << 8;
  v51 = v37 ^ LODWORD(STACK[0x290]);
  v52 = ((*(&STACK[0x2E0] + (v13 + 1302) % 0x3CA) << 24) ^ 0xBC000000) + ((*(&STACK[0x2E0] + (v13 + 1085) % 0x3CA) ^ 0xBC) << 16) + ((v43 & ~v50 | v50 & 0xFFFFF3FF) ^ 0xE5440C4A);
  v53 = v51 ^ ((v26 ^ a5) - a5);
  v54 = v42 ^ v41 ^ 0xEA;
  v55 = ((v52 ^ v49 ^ v48) - v48) ^ (v52 - v49);
  v56 = (v10 - 1793728839) ^ 0x7F629C06;
  v57 = v41 - (v10 + v56);
  v58 = v39 + v53;
  v59 = STACK[0x298];
  v60 = (LODWORD(STACK[0x294]) ^ 0xFFF2BFFF) + LODWORD(STACK[0x294]);
  v61 = STACK[0x2D8];
  v62 = LODWORD(STACK[0x2D8]) - 141;
  v63 = v9;
  LODWORD(STACK[0x2C4]) = v9;
  if (v9 < 9)
  {
    v62 = v61;
  }

  LODWORD(STACK[0x2D8]) = v61;
  v64 = STACK[0x2B0];
  *(STACK[0x2B0] + 4 * v62) = v58;
  v65 = (*(&STACK[0x2E0] + (v27 + 1736) % 0x3CAu) ^ 0x56) << 8;
  v66 = (*(&STACK[0x2E0] + (v27 + 1519) % 0x3CAu) ^ 0x3AAEF8D9) & ~v65 | v65 & 0x700;
  v67 = (v54 ^ v52 ^ v49) - v54;
  *(v64 + 4 * ((v59 + 1258) % 0x8Du)) = v10 + 460012260 + (v47 ^ 0xEA ^ v42);
  v68 = 1793728839 - v45 + v48 - (((v52 & 0x7F6ADC06 ^ 0x7F6ADC06) + (v52 & 0x7F6ADC06)) & v60 ^ v44);
  v69 = (((*(&STACK[0x2E0] + (v27 + 1953) % 0x3CAu) ^ 0x56) << 16) | ((*(&STACK[0x2E0] + (v27 + 2170) % 0x3CAu) ^ 0x56) << 24)) + (v66 ^ 0x3AAEF865);
  v70 = LODWORD(STACK[0x2B8]) - 620442692;
  v71 = LODWORD(STACK[0x2C8]) - 620442692;
  v72 = v47 + v70;
  v73 = (*(&STACK[0x2E0] + (v13 + 1736) % 0x3CA) ^ 0xBC) << 8;
  v74 = (*(&STACK[0x2E0] + (v13 + 1519) % 0x3CA) ^ 0xCBB77BDD) & ~v73 | v73 & 0x8400;
  v75 = v55 ^ v67;
  v76 = v57 + 1793728839;
  v77 = (v44 ^ 0x7F629C06) - (v49 + v71);
  v78 = v49 + v71 - 1828725909;
  v79 = v56 - v72;
  if (v63 >= 8)
  {
    v80 = -124;
  }

  else
  {
    v80 = 17;
  }

  v81 = v75 - v45;
  v82 = (((*(&STACK[0x2E0] + (v13 + 2170) % 0x3CA) << 24) ^ 0xBC000000) + ((*(&STACK[0x2E0] + (v13 + 1953) % 0x3CA) ^ 0xBC) << 16) + (v74 ^ 0xCBB77B61)) ^ v77;
  *(v64 + 4 * (v80 + v61)) = v81 + 1616183710;
  v83 = (v72 - 1828725909) ^ 0xA9C9FC1B ^ v79;
  v84 = v76 ^ v70 ^ 0xA0B4E548;
  *(v64 + 4 * ((v59 + 1275) % 0x8Du)) = -2041226197 - v77 + (((v69 ^ v79 ^ 0xEA ^ v78) - v78) ^ ((v69 ^ v79 ^ 0xEA ^ (v72 - 1828725909) ^ v76 ^ v82) - ((v72 - 1828725909) ^ v76 ^ v82)) ^ ((v69 ^ v79 ^ 0xEA ^ v68) - v68));
  v85 = (*(&STACK[0x2E0] + (v27 + 2604) % 0x3CAu) ^ 0x56) << 8;
  v86 = v84 ^ (v72 - 1828725909);
  v87 = ((((*(&STACK[0x2E0] + (v27 + 2821) % 0x3CAu) ^ 0x56) << 16) | ((*(&STACK[0x2E0] + (v27 + 3038) % 0x3CAu) ^ 0x56) << 24)) + (((*(&STACK[0x2E0] + (v27 + 2387) % 0x3CAu) ^ 0x20969780) & ~v85 | v85 & 0x6800) ^ 0x2096973C)) ^ (v83 + v84) ^ 0xEA;
  *(v64 + 4 * ((v59 + 34) % 0x8Du)) = v79 - 177545129 + v82;
  *(v64 + 4 * ((v59 + 1292) % 0x8Du)) = v83 - 2041226197 + v87;
  v88 = (*(&STACK[0x2E0] + (v13 + 2604) % 0x3CA) ^ 0xBC) << 8;
  v89 = (*(&STACK[0x2E0] + (v13 + 2387) % 0x3CA) ^ 0xCE9079FD) & ~v88 | v88 & 0x8600;
  v90 = v77 ^ v78;
  v91 = v90 ^ 0x90592141;
  v90 ^= 0xA9C9FC1B;
  v92 = v68 ^ v71 ^ 0xA0B4E548;
  v93 = v92 ^ v78;
  v94 = v92 + v90;
  v95 = v93 + v90;
  v96 = (((*(&STACK[0x2E0] + (v13 + 3038) % 0x3CA) << 24) ^ 0xBC000000) + ((*(&STACK[0x2E0] + (v13 + 2821) % 0x3CA) ^ 0xBC) << 16) + (v89 ^ 0xCE907941)) ^ v94;
  v97 = (v87 ^ (v83 + v86) ^ (v57 + 1332477318) ^ v96) - (v87 ^ (v83 + v86) ^ (v57 + 1332477318));
  v98 = v91 - ((2 * v91) & 0x7321BAB4) - v68;
  v99 = (v96 ^ v95) - v95;
  v100 = v95 ^ (v98 + 1427046683);
  v101 = v68 - 461251521;
  v102 = (v96 ^ v101) - v101;
  v98 -= 651246754;
  v103 = (v94 + v101) ^ v98;
  v104 = v100 - v98;
  v105 = (v94 - 1787471205 - v104) ^ v103;
  v106 = -177545129 - v90 + (v97 ^ v102 ^ v99);
  v107 = STACK[0x2C4];
  *(v64 + 4 * ((v59 + 51) % 0x8Du)) = v106;
  v108 = *(STACK[0x2D0] + 8 * ((113 * (v107 < 0xC)) ^ LODWORD(STACK[0x28C])));
  LODWORD(STACK[0x2D8]) += 68;
  LODWORD(STACK[0x2B8]) = ((v104 ^ 0x5D7FF25) - (v98 - v105)) ^ (v103 + 736094670);
  return v108();
}