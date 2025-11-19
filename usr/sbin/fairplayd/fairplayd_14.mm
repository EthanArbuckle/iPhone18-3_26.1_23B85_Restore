uint64_t sub_100416F30()
{
  LODWORD(STACK[0xEA0]) = 0;
  LODWORD(STACK[0xE60]) = 0;
  v3 = (v2 + v1) | v0;
  v4 = STACK[0xF18];
  STACK[0x4648] = *(STACK[0xF18] + 8 * v3);
  v5 = *(v4 + 8 * ((v3 + 2489) ^ v3));
  LODWORD(STACK[0xE70]) = 1;
  return v5();
}

uint64_t sub_100417094()
{
  v2 = STACK[0x66A0];
  *(*v2 + 8) = v1;
  return (*(STACK[0xF18] + 8 * (((*(*v2 + 8) == 0) * ((((v0 ^ 0xBEDF) - 1729905255) & 0x671BFFFC) - 26420)) | v0 ^ 0xBEDF)))();
}

uint64_t sub_1004171A0@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * (a1 - 27342));
  return (*(v1 + 8 * (((a1 + 385631572) & 0xE903FFBB ^ 0xA8AD) + a1 - 27342)))();
}

uint64_t sub_10041723C()
{
  STACK[0x81A8] = *v2;
  STACK[0x97E8] = v0;
  LODWORD(STACK[0x6974]) = 103711528;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100417348()
{
  STACK[0x10EE8] = STACK[0x1F90];
  LOWORD(STACK[0x10EE0]) = 23473 * ((~(&STACK[0x10000] + 3800) & 0x7418 | (&STACK[0x10000] + 3800) & 0x8BE0) ^ 0xB93C) + 18192;
  LODWORD(STACK[0x10ED8]) = (v0 - 9296) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x75E77418 | (&STACK[0x10000] + 3800) & 0x8A188BE0) ^ 0x44E6B93C));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 29500)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((LODWORD(STACK[0x10EDC]) == v0 - 371888228) * (((v0 + 1469229194) & 0xA86D056A) + 48062)) ^ v0)))(v2);
}

uint64_t sub_100417458()
{
  v2 = *(*(STACK[0x2B08] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  v3 = 1022166737 * ((((2 * (&STACK[0x10000] + 3800)) | 0x2430953A) - (&STACK[0x10000] + 3800) + 1843901795) ^ 0x2808AB0F);
  LODWORD(STACK[0x10ED8]) = (v0 + 20997) ^ v3;
  LODWORD(STACK[0x10EDC]) = (((v0 - 12923) | 0xCC4) ^ 0x56327935) * v1 - v3 + 2011904846;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xAF06)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_1004175C0@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, __int16 a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v21 = *(v17 + ((((a4 - (v9 & v12)) ^ v20) * a6) & 0x1FF ^ 0x100));
  v22 = v21 & 0x76 ^ 0x60;
  v23 = 2899 * ((v21 ^ (2 * ((v21 ^ v14) & (2 * ((v21 ^ v14) & (2 * ((v21 ^ v14) & (2 * ((v21 ^ v14) & (2 * ((v21 ^ v14) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xE9) + 27920269;
  v24 = *(v11 + 4 * (v23 - (((13849149 * v23) >> 32) >> 5) * a8)) ^ 0x786222F2;
  v25 = *(v17 + (((v24 >> 24) * a6) & 0x1FF));
  v26 = v25 & 0x82 ^ 0xAE;
  v27 = *(v17 + ((BYTE2(v24) * a6) & 0x1FF));
  v28 = v27 & 0xB6 | 9;
  v29 = v28 ^ v27 & 0x7E;
  v30 = v24 * a6;
  LOBYTE(v24) = *(v17 + ((BYTE1(v24) * a6) & 0x1FF));
  v31 = v25 ^ (2 * ((v25 ^ v14) & (2 * ((v25 ^ v14) & (2 * ((v25 ^ v14) & (2 * ((v25 ^ v14) & (2 * ((v25 ^ v14) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v32 = v24 & 0x90 ^ 0x35;
  v33 = ((v31 ^ 0x82) << 16) | (((v27 ^ (2 * ((v27 ^ a1) & (2 * ((v27 ^ a1) & (2 * ((v27 ^ a1) & (2 * ((v27 ^ a1) & (2 * ((v27 ^ a1) & (2 * ((v27 ^ a1) & (2 * v28) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xC8) << 8);
  v34 = (*(v17 + (v30 & 0x1FF)) | ((*(v17 + (v30 & 0x1FF)) < 0x4Au) << 8)) + 1570093209;
  LODWORD(v24) = ((v24 ^ (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * (((2 * (v32 ^ v24 & 0x26)) ^ 0xCC) & (v24 ^ a1) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x22DAC7) & ~v33 | v33 & 0xDD2500;
  v35 = ((v34 ^ 0xAEBC6935) + 215363114) ^ v34 ^ ((v34 ^ 0xA9661B85) + 185359514) ^ ((v34 ^ 0xA7B034A4) + 98202553) ^ ((v34 ^ 0xFDFFFEF7) + 1603647980);
  v36 = 2 * ((v35 ^ 0x509580E3) & a3 ^ v35 & 0x52D7C174);
  LODWORD(v24) = v34 - (((v36 ^ 0x70B013B1) - 1713131703) ^ ((v36 ^ 0x99CD2C52) + 1889439916) ^ ((v36 ^ 0x48563F23) - 1593474085)) + 876268839 + (((v16 ^ (v24 << 8) ^ 0xF5F928AB) - 393653464) ^ ((v16 ^ (v24 << 8) ^ 0x88A76751) - 1781064482) ^ ((v16 ^ (v24 << 8) ^ 0x610FCD7E) + 2088744691));
  v37 = ((2 * (v24 ^ 0x5F5BF245)) ^ 0xD5BB9EC4) & (v24 ^ 0x5F5BF245) ^ (2 * (v24 ^ 0x5F5BF245)) & v19;
  v38 = 4 * (v37 ^ 0x2A444122);
  v39 = (v24 ^ 0x3557B807) & (2 * (v24 & 0xB5863D27)) ^ v24 & 0xB5863D27;
  v40 = (v38 ^ 0xAB773D88) & (v37 ^ 0x2A444122);
  v41 = (v37 ^ 0xC0198C00) & (4 * v39) ^ v39;
  v42 = v40 ^ v38 & v13;
  v43 = (v42 ^ 0xAA550D00) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x4088C262)) ^ 0xADDCF620) & (v42 ^ 0x4088C262) ^ (16 * (v42 ^ 0x4088C262)) & v13;
  v45 = v43 ^ v19 ^ (v44 ^ 0xA8DCC600) & (v43 << 8);
  *(v15 + 4 * (*(v11 + 4 * (a9 + a5 - (a5 + a9) / 0x26C4u * a8)) ^ 0x380493)) = v24 ^ (2 * ((v45 << 16) & v18 ^ v45 ^ ((v45 << 16) ^ 0x4F620000) & (((v44 ^ 0x42010942) << 8) & v18 ^ 0x22100000 ^ (((v44 ^ 0x42010942) << 8) ^ 0x5DCF0000) & (v44 ^ 0x42010942)))) ^ a7;
  return (*(STACK[0xF18] + 8 * (((a4 == 376) * a2) ^ v10)))();
}

uint64_t sub_100417AE0()
{
  v2 = STACK[0xB648];
  *(v1 + 56) = *STACK[0xB648];
  *v2 = v1;
  v3 = STACK[0xB640];
  *(v3 + 12) += v0 - 7698;
  *(v3 + 132) += *(v1 + 64);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100417EB8()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8AA3)))(((v1 - 1539834404) ^ 0x64B93E72u) + v0, STACK[0x8990], 20) > (v1 - 549962901) - 3745021203;
  return (*(v2 + 8 * ((10310 * v3) ^ v1)))();
}

uint64_t sub_100417F30()
{
  v2 = *(v0 + 8);
  v3 = *v2;
  STACK[0x3A00] = *v2;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (109 * (v1 ^ 0xC856) + (v1 ^ 0xFFFFBC39))) ^ v1)))();
}

uint64_t sub_100417F7C()
{
  v4.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v4.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v5.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v5.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *v0 = veorq_s8(vaddq_s8(vsubq_s8(*v2, vandq_s8(vaddq_s8(*v2, *v2), v4)), v5), *v1);
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x4EE8u)))();
}

uint64_t sub_100417FD4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x2180]) = v2;
  if (a1)
  {
    v3 = v2 == -371865839;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (((2 * a2) ^ 0xBEB3) + 26436)) ^ a2)))();
}

uint64_t sub_100418020()
{
  v2 = STACK[0x66A0];
  *(*v2 + 32) = v1;
  return (*(STACK[0xF18] + 8 * (((*(*v2 + 32) == 0) * (((v0 + 3862) | 0x184) - 26436)) ^ v0)))();
}

uint64_t sub_100418078()
{
  v1 = STACK[0xF18];
  STACK[0x9318] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xEAD3 ^ (v0 - 1185435818) & 0x46A8FEDE)))();
}

uint64_t sub_100418194()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xB45F)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004181F4@<X0>(int a1@<W8>)
{
  v4 = STACK[0xF18];
  STACK[0x78F8] = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0x55AC]) = v1;
  STACK[0x68A8] = v3;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x51C0] = (v6 + 512);
  STACK[0x5510] = (v6 + 768);
  STACK[0x7690] = v5 + 1072;
  v7 = *(v4 + 8 * (v2 + 16262));
  LODWORD(STACK[0x393C]) = -347583232;
  v8 = *(&off_1010A0B50 + v2 - 34871) - 337514554;
  STACK[0xEC0] = (v6 + 1049);
  v9 = v7(v8);
  return (*(v4 + 8 * (((v3 == 0) * (v2 ^ 0x8B27)) ^ (v2 - 24855))))(v9);
}

uint64_t sub_1004182BC@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = (((v9 ^ 0x798D9D49) - 2039323977) ^ ((v9 ^ 0x51B71A5E) - 1370954334) ^ ((LODWORD(STACK[0xE90]) ^ v9 ^ 0x39672557) - 963055358)) * v12 - 178781445;
  v24 = *(STACK[0xEC0] + 4 * (v23 - (((v23 * a2) >> 32) >> 9) * a3));
  v25 = (((v24 ^ 0x5CB91987) - 1555634567) ^ ((v24 ^ 0xD3D3D5E3) + 741091869) ^ ((v24 ^ 0x9E37458D) + 1640544883)) * v12 - 179052933;
  *(STACK[0xEC0] + 4 * (v25 - (((v25 * a2) >> 32) >> 9) * a3)) = v9;
  v26 = (((v9 ^ 0xC80F81D1) + 938507823) ^ ((v9 ^ 0x11194424) - 286868516) ^ ((v9 ^ 0xC84B4C1C) + 934589412)) + 1466989741;
  v27 = (v26 ^ 0xB9EC483C) & (2 * (v26 & 0xB9ED0D3D)) ^ v26 & 0xB9ED0D3D;
  v28 = ((2 * (v26 ^ 0xAB744046)) ^ 0x25329AF6) & (v26 ^ 0xAB744046) ^ (2 * (v26 ^ 0xAB744046)) & 0x12994D7A;
  v29 = v28 ^ 0x12894509;
  v30 = (v28 ^ 0x100870) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x4A6535EC) & v29 ^ (4 * v29) & v10;
  v32 = (v31 ^ a1) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ v11)) ^ a4) & (v31 ^ v11) ^ (16 * (v31 ^ v11)) & a5;
  v34 = v32 ^ a8 ^ (v33 ^ a7) & (v32 << 8);
  v35 = v26 ^ (2 * ((v34 << 16) & v14 ^ v34 ^ ((v34 << 16) ^ v16) & (((v33 ^ a6) << 8) & v14 ^ v15 ^ (((v33 ^ a6) << 8) ^ v13) & (v33 ^ a6))));
  return (*(STACK[0xF18] + 8 * ((((((v35 ^ v17) + v18) ^ ((v35 ^ v19) + v21) ^ ((v35 ^ v22) + a9)) + 291342825 > 0x17F) * v20) ^ LODWORD(STACK[0xE80]))))();
}

uint64_t sub_100418590()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2229)))();
}

uint64_t sub_100418654()
{
  v1 = STACK[0xF18];
  STACK[0x1C80] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((11720 * ((v0 ^ 0x4D0B7086u) > v0 + 368710259)) ^ (v0 + 15260))))(&STACK[0xB000]);
}

uint64_t sub_10041871C()
{
  v1 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x15A9 ^ (((v0 ^ 0x9C55A0C1) < 0x596A9902) * (((v0 - 924000817) & 0x37133FA6) + 8429)))))();
}

uint64_t sub_1004187A0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x48FB1348) + 1224414025) ^ 0xAEDD0886));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *(v2 + 296) = 0;
  return (*(v3 + 8 * (v1 - 5421)))(v4);
}

uint64_t sub_100418910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 31563;
  LODWORD(STACK[0xAD54]) = 371891400;
  return (*(STACK[0xF18] + 8 * v4))(a1, a2, a3, v3);
}

uint64_t sub_100418948()
{
  STACK[0x5F58] = 0;
  STACK[0x9570] = 0;
  STACK[0x2E68] = 0;
  STACK[0x5EE0] = 0;
  return (*(STACK[0xF18] + 8 * ((STACK[0x7B28] == 0) ^ (v0 | 0x3380))))();
}

uint64_t sub_1004189A4()
{
  v4 = *v3;
  v5 = STACK[0xF18];
  STACK[0x6FD0] = *(STACK[0xF18] + 8 * v2);
  STACK[0x9150] = v1;
  STACK[0x7578] = v4;
  STACK[0x7520] = v1 + 72;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3ED8] = v7;
  STACK[0x7770] = (v7 + 88);
  STACK[0x7690] = ((v0 - 423) | 0x50B0u) + v6 - 30791;
  STACK[0x8878] = 0;
  STACK[0x76A0] = 0;
  STACK[0x7948] = 0;
  LODWORD(STACK[0x6028]) = -371865839;
  return (*(v5 + 8 * (((v1 == 0) * (v0 - 10574)) ^ v0)))();
}

uint64_t sub_100418A8C()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -1892964141;
  return (*(STACK[0xF18] + 64 * (v1 ^ 0x1866)))();
}

uint64_t sub_100418B44()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))(v0);
  return (*(v2 + 8 * (v1 - 30139)))(v3);
}

uint64_t sub_100418CB8@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, unsigned int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v15 = *(STACK[0xEA0] + ((((a8 - ((2 * a8) & 0xF2) + 121) ^ LODWORD(STACK[0xE90])) * v12) & (v9 - 35746) ^ 0x100));
  v16 = ((v15 ^ (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & 0x12 ^ (v15 | 0xDB))) ^ (v15 | 0xDB))) ^ (v15 | 0xDB))) ^ (v15 | 0xDB))) ^ (v15 | 0xDB))) ^ (v15 | 0xDB)))) ^ 0x53) * a3 + 3484040;
  v17 = a7 + (*(v8 + v16 - (((v16 * v13) >> 32) >> 1) * a6) ^ 0x5E) * a3;
  *(v14 + (*(v10 + 4 * (a2 + ((a8 + 4864) ^ v11) * a1 - ((((a2 + ((a8 + 4864) ^ v11) * a1) * a4) >> 32) >> 13) * a5)) ^ 0x8B6B2AE6) + 8464) = *(v8 + v17 - (((v17 * v13) >> 32) >> 1) * a6) ^ 0x87;
  return (*(STACK[0xF18] + 8 * ((7 * (a8 != 255)) ^ v9)))();
}

uint64_t sub_100418DDC()
{
  v1 = STACK[0x82E8];
  v2 = 297845113 * ((((&STACK[0x10000] + 3800) | 0xAD4D50E3) + (~(&STACK[0x10000] + 3800) | 0x52B2AF1C)) ^ 0xDA7E4C7C);
  LODWORD(STACK[0x10F00]) = v0 - v2 + 1563152618;
  STACK[0x10EF8] = &STACK[0x8194];
  STACK[0x10ED8] = v1;
  STACK[0x10EE0] = &STACK[0x7594];
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x387C02B81FFF65DDLL;
  LODWORD(STACK[0x10F04]) = v2 + 1383988684;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 43974)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EF0]) == -371865839) * ((v0 + 32991) ^ 0x915)) ^ v0)))(v4);
}

uint64_t sub_100419184@<X0>(int a1@<W8>)
{
  if (a1 == v1)
  {
    v4 = 168;
  }

  else
  {
    v4 = 160;
  }

  v5 = *(*(v3 + v4) + 33) != ((v2 ^ 0x29) + 88);
  return (*(STACK[0xF18] + 8 * (((2 * v5) | (16 * v5)) ^ v2)))();
}

uint64_t sub_1004193CC@<X0>(int a1@<W8>)
{
  v4 = (((v1 ^ 0x2CD910FB) - 752423163) ^ ((v1 ^ 0xE5658BF) - 240539839) ^ (((((v3 - 2224) | 0x8FE1) - 883302540) ^ v1) + 883257515)) + 636430566;
  v5 = ((a1 + 1008296406) < 0x3C1961D5) ^ (v4 < 0x3C1961D5);
  v6 = a1 + 1008296406 > v4;
  if (v5)
  {
    v6 = (a1 + 1008296406) < 0x3C1961D5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v2;
  }

  return (*(STACK[0xF18] + 8 * ((33450 * (v7 == -371865839)) ^ v3)))();
}

uint64_t sub_1004194B4()
{
  v0 = STACK[0xF10] ^ 0x8B3B;
  v1 = STACK[0xF10] - 27303;
  STACK[0x9200] = &STACK[0xC3F9];
  return (*(STACK[0xF18] + 8 * ((13 * ((*(STACK[0x2748] + 84) & 4) == v0)) ^ v1)))();
}

uint64_t sub_10041959C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  v5 = STACK[0xF10] - 34105;
  LODWORD(STACK[0xA0A4]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x1E34)))(a1, a2, a3, v4, (((v3 ^ 0x8B19) % (LODWORD(STACK[0xA0AC]) ^ 0x83489D72)) ^ 0xCEBDEF7D) + 1904255694 + ((2 * ((v3 ^ 0x8B19) % (LODWORD(STACK[0xA0AC]) ^ 0x83489D72))) & 0x7A));
}

uint64_t sub_1004197E0()
{
  v2 = 297845113 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6D5D9728) + 1834850091) ^ 0x1A6E8BB5);
  LOBYTE(STACK[0x10EE4]) = 121 * ((&STACK[0x10000] - 40 - 2 * ((&STACK[0x10000] - 40) & 0x28) + 43) ^ 0xB5) + 10;
  LODWORD(STACK[0x10EDC]) = v2 + 210392093 + v0;
  LODWORD(STACK[0x10ED8]) = v1 - v2 + 1539827056;
  STACK[0x10EE8] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xA438F4F9)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((v1 < 0x94337800) * (v1 + 1539867435)) ^ (v1 + 1539834404))))(v4);
}

uint64_t sub_100419B1C()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xCD0F2D8D) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x32F0D270)) ^ 0x2B293642) + 296783349;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDFDF)))(&STACK[0x10ED8]);
  v3 = STACK[0x15A8];
  v4 = STACK[0x2D70];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = 588972879;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100419D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34074;
  LODWORD(STACK[0xA550]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1E17)))(a1, a2, a3);
}

uint64_t sub_100419DA8()
{
  v2 = STACK[0x2338];
  v3 = (v0 - 582701248);
  STACK[0x8198] = v3;
  *(v2 + 4 * v3) = 1488708788;
  *(STACK[0x6A88] + 8 * v3) = 0x981390C2FED9246;
  *(STACK[0x5A98] + 8 * v3) = 0x981390C2FED9246;
  *(STACK[0x6B20] + 8 * v3) = 0x981390C2FED9246;
  v4 = STACK[0x9408];
  *v4 = -371865840;
  *(v4 + 8) = 0x981390C2FED9246;
  *(v4 + 16) = -371865825;
  *(v4 + 24) = 0x981390C2FED9246;
  STACK[0x8BD0] = v4 + 24;
  *(v4 + 32) = -371865837;
  STACK[0x85D0] = v4 + 32;
  *(v4 + 40) = 0x981390C2FED9246;
  STACK[0x66C8] = v4 + 40;
  *(v4 + 48) = -371865835;
  *(v4 + 64) = -371865800;
  *(v4 + 56) = 0x981390C2FED9246;
  STACK[0x5450] = v4 + 56;
  STACK[0x4C30] = v4 + 64;
  *(v4 + 72) = 0x981390C2FED9246;
  STACK[0x88A0] = v4 + 72;
  *(v4 + 80) = -371865799;
  STACK[0x7398] = v4 + 80;
  STACK[0x5708] = v4 + 88;
  *(v4 + 88) = 0x981390C2FED9246;
  v5 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v1);
  return (*(v5 + 8 * ((10602 * (((v1 + 50514) ^ 0x12B7AE4D) + v1 > 0xE27C69F2)) ^ (v1 + 5760))))();
}

uint64_t sub_10041A1F4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 18292;
  v2 = STACK[0xF10] - 24521;
  v3 = STACK[0x78B0];
  *(v3 + 112) = 0x217E172EFA1E81CLL;
  v4 = *(v3 + 120);
  LODWORD(STACK[0x10EE0]) = (v0 + 329019703) ^ (1112314453 * ((((&STACK[0x10000] + 3800) | 0x65A5FD67) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x9A5A0298)) ^ 0x8AF3D7BE));
  STACK[0x10ED8] = v4;
  STACK[0x10EE8] = (v1 + 0x215F96C1AC640765) ^ &STACK[0xF28];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4019)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 120) = 0;
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_10041A2DC()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6918B648) - 384256434) ^ 0xF3EAD81) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 + 11821)))(v2);
}

uint64_t sub_10041A6B4()
{
  v2 = *(v1 + 8);
  STACK[0x7CB8] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762656202) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xF9028E70 | (&STACK[0x10000] + 3800) & 0x6FD7188) ^ 0xC8034354));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBDE0)))(&STACK[0x10ED8]);
  STACK[0x37B0] = v1 + 264;
  return (*(v3 + 8 * ((7 * (((-27 * (v0 ^ 0x4E) + 118) ^ (*(v1 + 264) == 0)) & 1)) ^ v0)))(v4);
}

uint64_t sub_10041AA24(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v9 = a4[33];
  v10 = a4[35];
  v11 = a4[37];
  v12 = a4[42];
  v13 = v6 + 756182772;
  v14 = ((2 * (v13 ^ 0x628D7123)) ^ 0xF081605E) & (v13 ^ 0x628D7123) ^ (2 * (v13 ^ 0x628D7123)) & 0x20002E;
  v15 = v14 ^ 0xB040E00D;
  v16 = v14 & 0x2861094;
  v17 = (LODWORD(STACK[0xE30]) ^ (4 * v14)) & (v14 ^ 0xB040E00D) ^ v14 & 0x2861094;
  v18 = ((16 * v17) ^ 0x96CCB0D4) & (v17 ^ 0x9040A00F) ^ v17 & 0x92C6B094;
  v19 = v18 ^ 0x9040A02F;
  v20 = (v13 & 0x10C | 0xB0206023) ^ (2 * ((v6 - 12) & 0xC)) & 8 ^ ((2 * ((v6 + 756182772) & 0x10C)) | 0x9040A000) & (v13 ^ 0x628D7123) ^ 0x40800C;
  v21 = (v18 << 8) ^ 0xD266B494;
  v18 &= 0x92C6B094;
  v22 = v20 ^ v16 ^ ((4 * v20) ^ 0x53453028) & v15 ^ v17 & 0x92C6B094 ^ ((16 * (v20 ^ v16 ^ ((4 * v20) ^ 0x53453028) & v15)) ^ 0x90C2B224) & (v17 ^ 0x9040A00F);
  v23 = (v22 << 8) ^ 0xF2269F94;
  v24 = v22 ^ v18;
  v25 = (2 * (v13 ^ 0xB5B319DA)) & 0x4088D6 ^ 0x408852 ^ ((2 * (v13 ^ 0xB5B319DA)) ^ 0xEFA711AC) & (v13 ^ 0xB5B319DA);
  v26 = v21 & v19 ^ v18;
  v27 = (4 * v25) & 0x675E88D0 ^ 0x62048886 ^ ((4 * v25) ^ 0xBC602358) & v25;
  v28 = v23 & v19;
  v29 = (16 * v27) & 0x675E88C0 ^ 0x2160096 ^ ((16 * v27) ^ 0x75E88D60) & v27;
  v30 = v26 & 0x12C6B094;
  v31 = v24 ^ v28;
  v32 = (v31 << 16) ^ 0xD2EDB094;
  v33 = (v13 & 0x10C | (16 * (((v13 & 0x10C) >> 3) & 1)) | 0x180080) ^ ((2 * ((v6 + 756182772) & 0x10C)) | 0x211A0000) & (v13 ^ 0xB5B319DA);
  v34 = ((4 * v33) ^ 0x217A0200) & v25;
  v35 = v32 & 0x3060A004;
  v36 = v32 & (v26 ^ 0x20200000);
  v37 = (16 * ((4 * v33) & 0x4480850 ^ v33 ^ v34)) & 0x675E88D0 ^ (4 * v33) & 0x4480850 ^ v33 ^ v34 ^ ((16 * ((4 * v33) & 0x4480850 ^ v33 ^ v34)) ^ 0x5800800) & v27;
  v38 = v31 ^ v30 ^ v36;
  v39 = v37 ^ (v37 << 8) & 0x675E8800 ^ ((v37 << 8) ^ 0x58088000) & v29 ^ 0x220E0056;
  v40 = v38 ^ v35;
  v41 = STACK[0xE20];
  v42 = (STACK[0xE20] + (((v6 + 756182772) ^ (2 * ((v39 << 16) & 0x675E0000 ^ v39 ^ ((v39 << 16) ^ 0x8D60000) & ((v29 << 8) & 0x675E0000 ^ 0x21560000 ^ ((v29 << 8) ^ 0x5E880000) & v29)))) & 0xFFFFFFEF ^ 0x1CFC80B0));
  STACK[0xED0] = v42;
  v43 = (STACK[0xE60] + v6);
  v44 = *(a6 + v7);
  LOBYTE(v39) = *v43 ^ *v42;
  v45 = 1864610357 * ((1864610357 * ((v42 ^ v44) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ v44) & 0x7FFFFFFF)) >> 16));
  v46 = v45 >> 24;
  v47 = STACK[0xEB0];
  v48 = STACK[0xEA0];
  v49 = 1864610357 * ((1864610357 * ((v44 ^ v43) & 0x7FFFFFFF)) ^ ((1864610357 * ((v44 ^ v43) & 0x7FFFFFFF)) >> 16));
  v50 = a4[34];
  v51 = a4[41];
  LOBYTE(v39) = v39 ^ *((v45 >> 24) + STACK[0xEB0] + 3) ^ *(STACK[0xEA0] + (v45 >> 24)) ^ *(v8 + (v45 >> 24));
  v52 = a4[44];
  LODWORD(v49) = *((v49 >> 24) + STACK[0xEB0] + 3) ^ *(STACK[0xEA0] + (v49 >> 24)) ^ *(v8 + (v49 >> 24)) ^ v49 ^ (99 * (v49 >> 24)) ^ v45;
  v53 = a4[45];
  v54 = v39 ^ v49 ^ (99 * v46);
  v55 = a4[40];
  if (((((v54 ^ 0x36) + 18) ^ ((v54 ^ 0xD2) - 10) ^ ((v54 ^ 0xE4) - 60)) + 88) < 0)
  {
    v56 = 105;
  }

  else
  {
    v56 = a4[47];
  }

  v57 = a4[32] ^ 0x5F;
  v58 = v13 ^ (2 * v40);
  v59 = a4[43];
  if (((((v54 ^ 0x91) - 73) ^ ((v54 ^ 0x73) + 85) ^ ((v54 ^ 0xE2) - 58)) + 88) < 0)
  {
    v60 = 105;
  }

  else
  {
    v60 = a4[39];
  }

  if ((v54 & 0x20) == 0)
  {
    v53 = 105;
    v11 = 105;
  }

  if ((v54 & 4) == 0)
  {
    v12 = 105;
    v50 = 105;
  }

  if ((v54 & 2) == 0)
  {
    v51 = 105;
    v9 = 105;
  }

  if ((v54 & 1) == 0)
  {
    v55 = 105;
    v57 = 54;
  }

  v61 = v55 ^ v57;
  v62 = a4[36];
  if (((v54 ^ 0xD8) & 0x10) != 0)
  {
    v52 = 105;
    v62 = 105;
  }

  if (((v54 ^ 0xD8) & 8) != 0)
  {
    v59 = 105;
    v63 = 105;
  }

  else
  {
    v63 = v10;
  }

  v64 = v58 & 0xFFFFFFDF;
  v65 = v61 ^ v50 ^ v11;
  v66 = (STACK[0xEC0] + v6);
  if (((v54 ^ 0xD8) & 0x40) != 0)
  {
    v67 = 105;
  }

  else
  {
    v67 = a4[38];
  }

  v68 = v9 ^ v51;
  v69 = a4[46];
  if (((v54 ^ 0xD8) & 0x40) != 0)
  {
    v69 = 105;
  }

  v70 = v65 ^ v68 ^ v12 ^ v53 ^ v63 ^ v62 ^ v67 ^ v59 ^ v52 ^ v69 ^ v60 ^ v56;
  v71 = (v41 + (v64 ^ 0xB22C5172));
  v72 = (((v70 ^ 0xE0) + 32) ^ ((v70 ^ 0x3D) - 61) ^ ((v70 ^ 0x82) + 126)) - 97;
  v73 = v72 & 0x48 ^ 0x44;
  *v66 = v72;
  v74 = 1864610357 * ((v71 ^ *(a6 + v7)) & 0x7FFFFFFF);
  v75 = *(v48 + ((1864610357 * (v74 ^ HIWORD(v74))) >> 24)) ^ *(((1864610357 * (v74 ^ HIWORD(v74))) >> 24) + v47 + 3) ^ *(v8 + ((1864610357 * (v74 ^ HIWORD(v74))) >> 24)) ^ *v71 ^ (53 * (v74 ^ BYTE2(v74))) ^ (99 * ((1864610357 * (v74 ^ HIWORD(v74))) >> 24)) ^ v72 ^ (2 * ((v72 ^ 0x40) & (2 * ((v72 ^ 0x40) & (2 * ((v72 ^ 0x40) & (2 * ((v72 ^ 0x40) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73));
  *v66 = (((v75 ^ 0xBE) + 79) ^ ((v75 ^ 0xCC) + 61) ^ ((v75 ^ 0x3A) - 53)) - 121;
  v76 = (STACK[0xE40] + v6);
  v77 = a4[46];
  v78 = *(a6 + v7);
  v79 = a4[44];
  v80 = 1864610357 * ((1864610357 * ((v78 ^ (v41 + v6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v78 ^ (v41 + v6)) & 0x7FFFFFFFu)) >> 16));
  v81 = v80 >> 24;
  v82 = 1864610357 * ((1864610357 * ((v78 ^ v76) & 0x7FFFFFFF)) ^ ((1864610357 * ((v78 ^ v76) & 0x7FFFFFFF)) >> 16));
  v83 = v82 >> 24;
  v84 = a4[42];
  v85 = *(v48 + (v80 >> 24)) ^ *((v80 >> 24) + v47 + 3) ^ *(v8 + (v80 >> 24)) ^ *((v82 >> 24) + v47 + 3) ^ *(v48 + (v82 >> 24)) ^ *(v8 + (v82 >> 24)) ^ *(v41 + v6);
  v86 = a4[40];
  LOBYTE(v82) = v82 ^ v80;
  v87 = a4[39];
  LOBYTE(v82) = v82 ^ *v76 ^ (99 * v83);
  v88 = a4[34];
  v89 = v85 ^ v82 ^ (99 * v81);
  v90 = a4[33];
  if (((((v89 ^ 0x55) + 115) ^ ((v89 ^ 0x33) + 21) ^ ((v89 ^ 0x66) + 66)) + 88) < 0)
  {
    v91 = 105;
  }

  else
  {
    v91 = a4[47];
  }

  v92 = a4[32] ^ 0x14;
  if (((((v89 ^ 0xE6) - 62) ^ ((v89 ^ 0x34) + 20) ^ ((v89 ^ 0xD2) - 10)) + 88) < 0)
  {
    v87 = 105;
  }

  if ((v89 & 0x20) != 0)
  {
    v93 = a4[45];
  }

  else
  {
    v93 = 105;
  }

  if ((v89 & 0x20) != 0)
  {
    v94 = a4[37];
  }

  else
  {
    v94 = 105;
  }

  if ((v89 & 4) == 0)
  {
    v84 = 105;
    v88 = 105;
  }

  if ((v89 & 2) != 0)
  {
    v95 = a4[41];
  }

  else
  {
    v95 = 105;
  }

  if ((v89 & 2) == 0)
  {
    v90 = 105;
  }

  if ((v89 & 1) == 0)
  {
    v86 = 105;
    v92 = 125;
  }

  v96 = v86 ^ v92;
  v97 = a4[38];
  v98 = v88 ^ v94;
  v99 = v89 ^ 0xD8;
  if ((v99 & 0x40) != 0)
  {
    v77 = 105;
    v97 = 105;
  }

  if ((v99 & 0x10) != 0)
  {
    v79 = 105;
    v100 = 105;
  }

  else
  {
    v100 = a4[36];
  }

  v101 = v96 ^ v98 ^ v90 ^ v95 ^ v84;
  v102 = a4[35];
  if ((v99 & 8) != 0)
  {
    v102 = 105;
  }

  v103 = v93 ^ v102 ^ v100;
  if ((v99 & 8) != 0)
  {
    v104 = 105;
  }

  else
  {
    v104 = a4[43];
  }

  v105 = v101 ^ v103 ^ v97 ^ v104 ^ v79 ^ v77 ^ v87 ^ v91;
  v106 = (((v105 ^ 0xFFFFFFFB) + 5) ^ ((v105 ^ 0x60) - 96) ^ ((v105 ^ 0xFFFFFF8F) + 113)) + 40;
  v107 = v106 & 0x1C ^ 0xFFFFFF98;
  *(v66 - 16) = v106;
  v108 = (v106 ^ 0x6C) & (2 * ((v106 ^ 0x6C) & (2 * ((v106 ^ 0x6C) & (2 * ((v106 ^ 0x6C) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107;
  v109 = 1864610357 * ((*(a6 + v7) ^ STACK[0xED0]) & 0x7FFFFFFF);
  v110 = 1864610357 * (v109 ^ HIWORD(v109));
  v111 = *(v48 + (v110 >> 24)) ^ *((v110 >> 24) + v47 + 3) ^ *(v8 + (v110 >> 24)) ^ *STACK[0xED0] ^ v110 ^ (99 * (v110 >> 24)) ^ v106 ^ (2 * v108);
  *(v66 - 16) = (((v111 ^ 0xC8) + 54) ^ ((v111 ^ 0x4A) - 72) ^ ((v111 ^ 0x9E) + 100)) + 50;
  return (*(STACK[0xF18] + 8 * ((9960 * (v6 == 15)) ^ LODWORD(STACK[0xE80]))))();
}

uint64_t sub_10041B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == (((a8 - 17489) | 0x4214) ^ 0xE9D59DC7))
  {
    v9 = LODWORD(STACK[0x8F14]);
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * a8))(a1, a2, v9);
}

uint64_t sub_10041B438()
{
  *(v2 + v4 + v3) = 0;
  STACK[0xA380] = v2 + v0 - 0x30E36F81284426A8;
  v5 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v1);
  return (*(v5 + 8 * ((((v1 ^ 0xBE6346E) < 0x871DBB29) * ((v1 ^ 0x148EA2AB) - 344890068)) ^ (v1 + 7414))))();
}

uint64_t sub_10041B524()
{
  LODWORD(STACK[0x10EE0]) = v1 - 353670337 * ((((&STACK[0x10000] + 3800) | 0xE0FC31C9) + (~(&STACK[0x10000] + 3800) | 0x1F03CE36)) ^ 0x54DDC9F5) + 24790;
  STACK[0x10ED8] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x980F)))(&STACK[0x10ED8]);
  v5 = (STACK[0x951C] & 4) == 0 || (((LODWORD(STACK[0x951C]) ^ 0x81F05AF1) + 2114954511) ^ ((LODWORD(STACK[0x951C]) ^ 0x88E391EB) + 1998351893) ^ (((v1 + 28256) ^ LODWORD(STACK[0x951C]) ^ 0xE0C6CE56) + (((v1 - 19290) | 0x104) ^ 0x1F39FA52))) - 371865839 < 0x30004;
  return (*(v2 + 8 * (v1 | (2 * v5))))(v3);
}

uint64_t sub_10041B760@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = (v2 + 1243139295) ^ (1012831759 * (((((&STACK[0x10000] + 3800) | 0xD473154E) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x2B8CEAB1)) ^ 0x3B1FFC3B));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 1243171752)))(&STACK[0x10ED8]);
  *(v1 + 128) = v3;
  return (*(v4 + 8 * (v2 ^ 0xB5E75B4B ^ (5152 * (v2 != 182566001)))))(v5);
}

uint64_t sub_10041B918@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0xF38] + 5) - ((2 * *(STACK[0xF38] + 5)) & 0x40) - 96;
  v2 = v1 & 0x83 ^ 3 | ((*(STACK[0xF38] + 4) + a1 - 59 - ((2 * *(STACK[0xF38] + 4)) & 0x40) + 51) ^ (a1 + 20)) & (v1 ^ 0xC8);
  v3 = *(STACK[0xF38] + 6) - ((2 * *(STACK[0xF38] + 6)) & 0x40) - 96;
  v4 = v2 & (v3 ^ 0xFB) | v3 & 0x83;
  v5 = *(STACK[0xF38] + 7) - ((2 * *(STACK[0xF38] + 7)) & 0x40) - 96;
  v6 = v4 & (v5 ^ 0xEF) | v5 & 0x83;
  v7 = *(STACK[0xF38] + 8) - ((2 * *(STACK[0xF38] + 8)) & 0x40) - 96;
  v8 = v6 & (v7 ^ 0x9D) | v7 & 0x83 ^ 2;
  v9 = *(STACK[0xF38] + 9) - ((2 * *(STACK[0xF38] + 9)) & 0x40) - 96;
  v10 = v8 & (v9 ^ 0x55) | v9 & 0x83 ^ 0x82;
  v11 = *(STACK[0xF38] + 10) - ((2 * *(STACK[0xF38] + 10)) & 0x40) - 96;
  v12 = v10 & (v11 ^ 0x55) | v11 & 0x83 ^ 0x82;
  v13 = *(STACK[0xF38] + 11) - ((2 * *(STACK[0xF38] + 11)) & 0x40) - 96;
  return (*(STACK[0xF18] + 8 * ((46163 * ((v12 & (v13 ^ 0xC0) | v13 & 0x83 ^ 3) == 124)) ^ a1)))();
}

uint64_t sub_10041BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = (STACK[0xF10] + 1588686496) & 0xA14EBEAF;
  LODWORD(STACK[0xA084]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (v4 ^ 0xB8CF) % (LODWORD(STACK[0xA08C]) ^ 0xFEB3D812) + 1077842507);
}

uint64_t sub_10041BC48(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16)
{
  v20 = (a16 + v16);
  v21 = (STACK[0xE70] + ((v20 + 1) << 7) + 4 * (a16 + a13 + 1));
  v22 = (STACK[0xE70] + ((v20 + 2) << 7) + 4 * (a16 + a13 + 2));
  v23 = (STACK[0xE70] + ((v20 + 3) << 7) + 4 * (a16 + a13 + 3));
  v24 = STACK[0xE70] + (v20 << 7);
  v25.i32[0] = *(v24 + 4 * (a16 + a13));
  v25.i32[1] = *v21;
  v25.i32[2] = *v22;
  v25.i32[3] = *v23;
  v26 = veorq_s8(v25, vdupq_n_s32(0x618C3F54u));
  v27 = vandq_s8(v25, a8);
  v28 = vaddq_s32(v26, v26);
  v29 = vdupq_n_s32(0xA7AE2960);
  v30 = veorq_s8(vandq_s8(vaddq_s32(v27, v27), veorq_s8(v25, vdupq_n_s32(0xE5881734))), v27);
  v31 = veorq_s8(vandq_s8(veorq_s8(v28, vdupq_n_s32(0x4F5C52C2u)), v26), vandq_s8(v28, v29));
  v32 = veorq_s8(v31, vdupq_n_s32(0xA0A22921));
  v33 = veorq_s8(vandq_s8(veorq_s8(v31, vdupq_n_s32(0x812A0041)), vshlq_n_s32(v30, 2uLL)), v30);
  v34 = vshlq_n_s32(v32, 2uLL);
  v35 = veorq_s8(vandq_s8(veorq_s8(v34, vdupq_n_s32(0x9EB8A584)), v32), vandq_s8(v34, v29));
  v36 = veorq_s8(v35, vdupq_n_s32(0x21060861u));
  v37 = veorq_s8(vandq_s8(veorq_s8(v35, vdupq_n_s32(0x86A82101)), vshlq_n_s32(v33, 4uLL)), v33);
  v38 = vshlq_n_s32(v36, 4uLL);
  v39 = veorq_s8(vandq_s8(veorq_s8(v38, vdupq_n_s32(0x7AE29610u)), v36), vandq_s8(v38, v29));
  v40 = veorq_s8(v39, vdupq_n_s32(0x850C2961));
  v41 = veorq_s8(veorq_s8(v37, vdupq_n_s32(0xA7AE2961)), vandq_s8(veorq_s8(v39, vdupq_n_s32(0x22A20061u)), vshlq_n_s32(v37, 8uLL)));
  v42 = vshlq_n_s32(v40, 8uLL);
  v43 = veorq_s8(veorq_s8(vandq_s8(v42, vdupq_n_s32(0xA7AE0000)), vdupq_n_s32(0x1860000u)), vandq_s8(veorq_s8(v42, vdupq_n_s32(0xAE290000)), v40));
  v44 = vshlq_n_s32(v41, 0x10uLL);
  v45 = veorq_s8(veorq_s8(vandq_s8(v44, vdupq_n_s32(0x27AE0000u)), v41), vandq_s8(veorq_s8(v44, vdupq_n_s32(0x29610000u)), v43));
  v46 = veorq_s8(veorq_s8(v25, v19), vaddq_s32(v45, v45));
  v47 = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v46, vdupq_n_s32(0xA15F0836)), vdupq_n_s32(0x63AE40FFu)), vaddq_s32(veorq_s8(v46, vdupq_n_s32(0x9360E3EE)), vdupq_n_s32(0x5191AB27u))), vaddq_s32(veorq_s8(v46, vdupq_n_s32(0xF901AF2F)), vdupq_n_s32(0x3BF0E7E8u))), vdupq_n_s32(0x300EDD8Bu));
  *(v24 + 4 * (a16 + a13)) = v47.i32[0];
  *v21 = v47.i32[1];
  *v22 = v47.i32[2];
  *v23 = v47.i32[3];
  return (*(STACK[0xF18] + 8 * (((a16 + 4 == v18) * ((v17 - 19964) ^ 0x3181)) ^ v17)))();
}

uint64_t sub_10041BEE8(uint64_t a1, int a2)
{
  v5 = a2 + 76891474 + (((*(STACK[0x2568] + 64) ^ 0xF3833A1E) + 209503714) ^ ((*(STACK[0x2568] + 64) ^ 0xC4A18BF) - 206182591) ^ ((*(STACK[0x2568] + 64) ^ 0x161CE5B0) - 370992560));
  v6 = (((v4 ^ 0x2B3C8E36) - 725388854) ^ ((v4 ^ 0x19F6556F) - 435574127) ^ ((((v2 ^ 0x5B5E) + 40904) ^ 0x24E0AC76) + (v4 ^ 0xDB1F1C48) + 15017 * (v2 ^ 0x5B5E))) + 76891474;
  v7 = v5 < 0x1ABF7E41;
  v8 = v5 > v6;
  if (v6 < 0x1ABF7E41 != v7)
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = 371891407;
  }

  else
  {
    v9 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((55910 * (v9 == -371865839)) ^ v2)))();
}

uint64_t sub_10041C134()
{
  v1 = LOBYTE(STACK[0x220F]);
  v2 = 360;
  if (LOBYTE(STACK[0x220F]))
  {
    v2 = 368;
  }

  v3 = *(STACK[0x45B0] + v2);
  v4 = STACK[0x1C18];
  v5 = (5 * (v0 ^ 0x4DB5)) ^ LODWORD(STACK[0x5D34]) ^ 0x74FD677E;
  v6 = (2 * LODWORD(STACK[0x5D34])) & 0xE9FA57FE;
  v7 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x9325E4F8) - ((&STACK[0x10000] + 3800) & 0x9325E4F8)) ^ 0x27041CC5);
  LODWORD(STACK[0x10EE0]) = v0 - v7 + 30933;
  STACK[0x10EF0] = v3;
  STACK[0x10EE8] = v4;
  LODWORD(STACK[0x10ED8]) = v5 - v7 + v6 - 539230308;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8847)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((475 * v1) ^ v0)))(v9);
}

uint64_t sub_10041C27C()
{
  LODWORD(STACK[0x17C8]) = v2;
  LODWORD(STACK[0x42B4]) = v0;
  v3 = (((v2 ^ 0x7D751C20) - 2104826912) ^ ((v2 ^ 0x9EAE3E5) + ((3 * (v1 ^ 0x8E88)) ^ 0xF61507B0)) ^ (((((v1 - 30129) | 0x508) - 1656086068) ^ v2) + 1656080172)) - 1073658893;
  v4 = (((LODWORD(STACK[0x947C]) ^ 0x5C33A59E) - 1546888606) ^ ((LODWORD(STACK[0x947C]) ^ 0x53CCADD7) - 1405922775) ^ ((LODWORD(STACK[0x947C]) ^ 0xE62ACF58) + 433402024)) - 1073658893;
  v5 = v4 < 0xD62B7CE2;
  v6 = v3 < v4;
  if (v3 < 0xD62B7CE2 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((11772 * v6) ^ v1)))();
}

uint64_t sub_10041C3F8@<X0>(int a1@<W8>)
{
  STACK[0xA1E8] = STACK[0x90D0] + 392;
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((a1 + 2564) ^ a1)))();
}

uint64_t sub_10041C510(int a1)
{
  v7 = *v3;
  v8 = (v6 + (v5 & v2));
  *v8 = *(v3 - 1);
  v8[1] = v7;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * a1) ^ v1)))();
}

uint64_t sub_10041C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0xB4C8] = v7;
  LODWORD(STACK[0xB4D4]) = a5;
  STACK[0xB4D8] = v5;
  return (*(STACK[0xF18] + 8 * ((((123 * (v6 ^ 0x810D)) ^ 0x10AF) * (v7 != 0)) ^ v6)))();
}

uint64_t sub_10041C6F4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  STACK[0xD80] = a3;
  STACK[0xD90] = a2;
  STACK[0xDA0] = a1;
  return (*(STACK[0xF18] + 8 * (((((v3 + 1230631788) & 0xB6A5EFBF) - 35619) * (v4 == 0)) ^ v3)))();
}

uint64_t sub_10041C854()
{
  v1 = STACK[0xF18];
  STACK[0x2F78] = *(STACK[0xF18] + 8 * (v0 ^ 0x8B38));
  return (*(v1 + 8 * (v0 ^ 0x826 ^ (((v0 ^ 0x8B38) + 29675) | 0x3005))))();
}

uint64_t sub_10041C908()
{
  v3 = ((((1361 * (v1 ^ 0x32F1)) ^ v2 ^ 0x218030F6) - 562099267) ^ ((v2 ^ 0xBE86BD5) - 199781333) ^ ((v2 ^ 0xC3BD5887) + 1011001209)) - 947988047;
  v4 = v0 - 576122208 < v3;
  if (v0 > 0x2256ED5F != v3 < 0xDDA912A0)
  {
    v4 = v3 < 0xDDA912A0;
  }

  return (*(STACK[0xF18] + 8 * ((52 * v4) ^ v1)))();
}

uint64_t sub_10041CA18@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -1586619595;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10041CA44()
{
  v1 = STACK[0x89B0];
  *v1 = -371865831;
  *(v1 + 8) = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (((v0 + 50518) ^ 0xD122) + v0)))();
}

uint64_t sub_10041CB84()
{
  v1 = STACK[0xF10] + 938384313;
  v2 = STACK[0x9368];
  *(v2 + 196) = v0;
  *(v2 + 260) = -371865840;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x37EF1E28 ^ (24633 * (v1 > 0x3393E887)))))();
}

uint64_t sub_10041CC64@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB4B0]) = v1;
  LODWORD(STACK[0xB4B4]) = v1 + a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10041CD50@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0xF18];
  STACK[0x31D8] = *(STACK[0xF18] + 8 * v2);
  STACK[0x1E68] = a1;
  STACK[0x47D8] = 0;
  LODWORD(STACK[0x491C]) = 0;
  return (*(v3 + 8 * (((*(a1 + 120) == 0) * (v1 ^ 0x1211 ^ (v1 - 1243278156) & 0x4A1AFAF9)) ^ (v1 + 4772))))();
}

uint64_t sub_10041CDEC()
{
  v4 = *(v0 + v1);
  v5 = STACK[0x7120];
  v6 = 1012831759 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB04EEE6) - (&STACK[0x10000] + 3800) + 2055047309) ^ 0x951161F9);
  LODWORD(STACK[0x10EF0]) = v2 - v6;
  STACK[0x10EF8] = v5;
  STACK[0x10EE8] = &STACK[0x854C];
  STACK[0x10EE0] = v4;
  LODWORD(STACK[0x10ED8]) = (v3 + 3702) ^ v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 ^ 0xEFE9)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((22197 * (LODWORD(STACK[0x10F00]) == v3 - 371894779 + ((v3 + 1329740253) & 0xB0BDEDEA))) ^ v3)))(v8);
}

uint64_t sub_10041CF38()
{
  LODWORD(STACK[0xB934]) = 1099819933;
  LOBYTE(STACK[0xB93B]) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10041CFFC()
{
  v1 = LODWORD(STACK[0x76C0]) + LODWORD(STACK[0x1EA4]) - 1699451797;
  v2 = STACK[0x83A0];
  STACK[0x3118] = STACK[0x83A0];
  LODWORD(STACK[0x4A48]) = STACK[0x836C];
  v3 = STACK[0x7690];
  STACK[0x1CA8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + ((v0 + 2586) ^ 0x8B2BLL);
  LODWORD(STACK[0x64B0]) = 1699451797;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4BF6)))();
  LODWORD(STACK[0x592C]) = v1;
  return (*(v4 + 8 * (((v2 == 0) * (v0 ^ 0x812B)) ^ v0)))(v5);
}

uint64_t sub_10041D0BC()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762633652) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD5FA)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((55854 * (*STACK[0x970] > ((106 * (v0 ^ 0x1FDC) - 6469) ^ v0 ^ 0x37D2))) ^ v0)))(v2);
}

uint64_t sub_10041D3D8()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 1272443511;
  return (*(STACK[0xF18] + 8 * ((5112 * (v1 > 0x6C90B618)) ^ (v1 + 963948022 + v1 + 964017284))))();
}

uint64_t sub_10041D490()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1186)))();
}

uint64_t sub_10041D704()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(v1);
  return (*(v2 + 8 * (v0 - 24475)))(v3);
}

uint64_t sub_10041D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W8>)
{
  v6 = (((a2 ^ 0x3200CF04) - 838913796) ^ ((a2 ^ 0xC46ED845) + 999368635) ^ ((a2 ^ 0x1FBBD050) - 532402256)) + v5 - 371873519;
  if (v6 >= 2)
  {
    a3 = a3;
  }

  else
  {
    a3 = a2;
  }

  if (v6 >= 2)
  {
    a4 = a4;
  }

  else
  {
    a4 = a5;
  }

  return (*(STACK[0xF18] + 8 * v5))(a1, a2, a3, a4);
}

uint64_t sub_10041DAC0@<X0>(int a1@<W8>)
{
  v5 = 72 * (v4 ^ 0x17A9D2D2);
  *(*(v1 + 112) + v5 + 40) = 0;
  *(*(v1 + 112) + v5 + 48) = -371865839;
  v6 = ((v2 << ((v3 + 27) & 0xBF ^ 0x98u)) & ((v3 ^ 0x9C85u) + 0x1DF3D72BBLL)) + (v2 ^ 0x72EFDEBFEF9EFEFBLL);
  STACK[0xB430] = v6 - 0x4A87555290F6B8FALL;
  v7 = STACK[0x7D20] - 0x6F6F2C6DBDB4388ELL;
  v8 = (v7 < 0x64376186) ^ (v6 - 0x72EFDEBF8B679D6DLL < 0x64376186);
  v9 = v6 - 0x72EFDEBF8B679D6DLL > v7;
  if (v8)
  {
    v9 = v6 - 0x72EFDEBF8B679D6DLL < 0x64376186;
  }

  if (v9)
  {
    a1 = 371891407;
  }

  LODWORD(STACK[0xB438]) = a1;
  v10 = a1 == -371865839;
  LOBYTE(STACK[0xB43F]) = v10;
  return (*(STACK[0xF18] + 8 * ((11829 * v10) ^ v3)))();
}

uint64_t sub_10041DC18()
{
  v3 = v1 ^ ((v1 ^ 0x34FD27F0) - 1295340713) ^ ((v1 ^ 0x7A70123D) - 62415204) ^ ((v1 ^ 0xC8BA39EF) + (v0 ^ 0x4E8D2D67)) ^ ((v1 ^ 0xFFFF7F7B) + 2043212766) ^ 0x2D9A912;
  v4 = 0x15E75BB8D015E76 * (((v3 ^ 0x7C1ED5551600AFLL) - 0x7C1ED5551600AFLL) ^ ((v3 ^ 0x75A791275FDCCC27) - 0x75A791275FDCCC27) ^ ((v3 ^ 0x75DB8FF271DB16C3) - 0x75DB8FF271DB16C3)) + 0x119840004F39AB37;
  v5 = (2 * (v4 & 0xB389F97F22737D5ALL)) & 0x600292F6444408A0 ^ v4 & 0xB389F97F22737D5ALL ^ ((2 * (v4 & 0xB389F97F22737D5ALL)) | 2) & (v4 ^ 0x4B2B6289E73774F2);
  v6 = (2 * (v4 ^ 0x4B2B6289E73774F2)) & 0xF8A29BF6C54409A8 ^ 0x8A28812454408A9 ^ ((2 * (v4 ^ 0x4B2B6289E73774F2)) ^ 0xF14537ED8A881352) & (v4 ^ 0x4B2B6289E73774F2);
  v7 = (4 * v5) & 0xD8228BF4814409A8 ^ v5 ^ ((4 * v5) | 4) & v6;
  v8 = (4 * v6) & 0xF8A29BF6C54409A8 ^ 0x18209024C0440909 ^ ((4 * v6) ^ 0xE28A6FDB151026A4) & v6;
  v9 = (16 * v7) & 0xF8A29BF6C54409A0 ^ v7 ^ ((16 * v7) ^ 0x10) & v8;
  v10 = (16 * v8) & 0xF8A29BF6C5440980 ^ 0x7082009281040129 ^ ((16 * v8) ^ 0x8A29BF6C54409A90) & v8;
  v11 = ((v9 << 8) ^ 0x100) & v10;
  v12 = (v10 << 8) & 0xF8A29BF6C5440900 ^ 0x58200932814400A9 ^ ((v10 << 8) ^ 0xA29BF6C54409A900) & v10;
  v13 = (v9 << 8) & 0xF8A29BF6C5440900 ^ v9 ^ v11 ^ (((v9 << 8) & 0xF8A29BF6C5440900 ^ v9 ^ v11) << 16) & 0xF8A29BF6C5440000 ^ ((((v9 << 8) & 0xF8A29BF6C5440900 ^ v9 ^ v11) << 16) ^ 0x1010000) & v12;
  v14 = v4 ^ (2 * (((v13 ^ 0xF8A29BF6C44408A8) << 32) & 0x78A29BF600000000 ^ v13 ^ 0xF8A29BF6C44408A8 ^ (((v13 ^ 0xF8A29BF6C44408A8) << 32) ^ 0x454409A900000000) & ((v12 << 16) & 0x78A29BF600000000 ^ 0x60001AB200000000 ^ ((v12 << 16) ^ 0x1BF6C54400000000) & v12)));
  v15 = ((v14 ^ 0x3F6F811A7F0A23EELL) + 0x54B6DC645F7AB570) ^ ((v14 ^ 0x7E677F82CC2EC5B8) + 0x15BE22FCEC5E533ALL);
  v16 = __CFADD__(187 * (v15 ^ ((v14 ^ 0x83C4234A1BDF885FLL) - 0x17E281CBC450E121)), 0x7D4B01F841C173EDLL) + (((v15 ^ ((v14 ^ 0x83C4234A1BDF885FLL) - 0x17E281CBC450E121)) * 0xBBuLL) >> 64) + 187 * ((__CFADD__(v14 ^ 0x3F6F811A7F0A23EELL, 0x54B6DC645F7AB570) - 1) ^ (__CFADD__(v14 ^ 0x7E677F82CC2EC5B8, 0x15BE22FCEC5E533ALL) - 1) ^ (__CFADD__(v14 ^ 0x83C4234A1BDF885FLL, 0xE81D7E343BAF1EDFLL) - 1)) + 1357116482;
  LODWORD(v14) = __CFADD__(187 * (v15 ^ ((v14 ^ 0x83C4234A1BDF885FLL) - 0x17E281CBC450E121)), 0x7D4B01F841C173EDLL) + (((v15 ^ ((v14 ^ 0x83C4234A1BDF885FLL) - 0x17E281CBC450E121)) * 0xBBuLL) >> 64) + 187 * ((__CFADD__(v14 ^ 0x3F6F811A7F0A23EELL, 0x54B6DC645F7AB570) - 1) ^ (__CFADD__(v14 ^ 0x7E677F82CC2EC5B8, 0x15BE22FCEC5E533ALL) - 1) ^ (__CFADD__(v14 ^ 0x83C4234A1BDF885FLL, 0xE81D7E343BAF1EDFLL) - 1)) + 63;
  LODWORD(v15) = *(v2 + (v16 - 1357116245) % 0xBBu);
  v17 = *(v2 + (v16 - 1357116289) % 0xBBu);
  v18 = (((v15 >> 5) | (8 * v15)) - ((2 * ((v15 >> 5) | (8 * v15))) & 0x5C) - 82) ^ *(v2 + v14);
  LODWORD(v13) = *(v2 + (v16 - 1357116387) % 0xBBu);
  *(v2 + v14) = (((v17 >> 3) | (32 * v17)) ^ 0x3F) + 2 * (((v17 >> 3) | (32 * v17)) & 0x3F) + (((v13 >> 1) | (v13 << 7)) ^ 4) - (v13 & 0xF6) + (((v18 ^ 0x71) - 4) ^ (117 - v18) ^ ((v18 ^ 0x20) - 85)) - 104;
  return (*(STACK[0xF18] + 8 * ((94 * (v1 != 2043180612)) ^ v0)))();
}

uint64_t sub_10041E170()
{
  LODWORD(STACK[0x7344]) = v0;
  LODWORD(STACK[0x8C80]) = v3;
  v4 = *v1;
  STACK[0x46F0] = v4;
  if (v4)
  {
    v5 = v3 == ((v2 - 797028040) & 0x2F8133FF ^ 0xE9D5D762);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  return (*(STACK[0xF18] + 8 * ((v6 * (5 * (v2 ^ 0x9B9B) + 11198)) ^ (v2 - 30049))))();
}

uint64_t sub_10041E27C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8930] + (v1 + LODWORD(STACK[0x649C]) - 1317739903);
  v3 = *v2;
  LODWORD(v2) = 1864610357 * ((v2 ^ *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8))) & 0x7FFFFFFF);
  v4 = 1864610357 * ((v2 >> (a1 - 20)) ^ v2);
  LOBYTE(v4) = *(STACK[0x8A0] + (v4 >> 24)) ^ v3 ^ *((v4 >> 24) + STACK[0x898] + 3) ^ *((v4 >> 24) + STACK[0x8A8] + 2) ^ v4 ^ (27 * BYTE3(v4));
  LOBYTE(STACK[0x39F6]) = (((v4 ^ 0xDE) + 45) ^ ((v4 ^ 0x6C) - 97) ^ ((v4 ^ 0xB2) + 65)) - ((((v1 - ((2 * v1) & 0xFB) - 3) ^ 0x8B) + 117) ^ (((v1 - ((2 * v1) & 0xFB) - 3) ^ 0xAF) + 81) ^ (((v1 - ((2 * v1) & 0xFB) - 3) ^ 0xD9) + 39)) + 95;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x15A2)))();
}

uint64_t sub_10041E42C()
{
  v2 = LODWORD(STACK[0x3BC4]) == (((v0 - 26002) | 0x434) ^ 0xE9D5921D) || LODWORD(STACK[0x3BC4]) == -371866069;
  v3 = 160;
  if (v2)
  {
    v3 = 168;
  }

  v4 = *(v1 + v3);
  STACK[0x3ED0] = v4;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (v0 - 46472)) ^ v0)))();
}

uint64_t sub_10041E5BC()
{
  v5 = STACK[0x782C];
  v6 = ((((&STACK[0x10000] + 3800) | 0xA7381937) + (~(&STACK[0x10000] + 3800) | 0x58C7E6C8)) ^ 0x11832B50) * v4;
  LODWORD(STACK[0x10ED8]) = (*v0 ^ v2) + v6;
  LODWORD(STACK[0x10EE0]) = (v1 + 515053717) ^ v6;
  LODWORD(STACK[0x10EE4]) = v6 ^ v5 ^ v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 + 36784)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((85 * (LODWORD(STACK[0x10EDC]) - 1890597110 >= (v1 ^ 0x3E95u) + 2147483122)) ^ v1)))(v8);
}

uint64_t sub_10041E698@<X0>(char a1@<W8>)
{
  v3 = STACK[0xE90] - STACK[0xEA0];
  *(v2 + (a1 - 48)) = (v3 >> ((v1 - 120) ^ 0x81u)) ^ 0xBC;
  *(v2 + (a1 - 47)) = BYTE2(v3) ^ 0x14;
  *(v2 + (a1 - 46)) = BYTE1(v3) ^ 0xB3;
  *(v2 + (a1 - 45)) = v3 ^ 0x7B;
  return (*(STACK[0xF18] + 8 * ((25338 * ((a1 - 44) < 0x10u)) ^ v1)))();
}

uint64_t sub_10041E754()
{
  v1 = STACK[0xF18];
  STACK[0x54B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 10958 + 53 * (v0 ^ 0x352))))();
}

uint64_t sub_10041E804()
{
  LODWORD(STACK[0x599C]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 2214)))();
}

uint64_t sub_10041E8D8()
{
  v2 = v1 + 519772001 + (((LODWORD(STACK[0x32BC]) ^ 0xD1F2B59C) + 772622948) ^ ((LODWORD(STACK[0x32BC]) ^ 0x7CFDA732) - 2096998194) ^ (((3 * (v0 ^ 0x392C) + 1155169764) ^ LODWORD(STACK[0x32BC])) - 1155192255));
  LODWORD(STACK[0x5798]) = v2 ^ ((v2 ^ 0x61E02F8E) - 1422229470) ^ ((v2 ^ 0x1915C608) - 741381720) ^ ((v2 ^ 0xF04F4609) + 982903207) ^ ((v2 ^ 0xBD9FFFDF) + 2001031281) ^ 0xDCF09741;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10041E9E8()
{
  v5 = (v0 + v2);
  v6 = (v3 + v2);
  v7 = v5[1];
  *v6 = *v5;
  v6[1] = v7;
  return (*(STACK[0xF18] + 8 * (((v2 == 64) * v4) ^ v1)))();
}

uint64_t sub_10041EA78()
{
  *(v1 - 0x7E666516A39B3472) = ((v0 + 872353209) ^ *v3) + ((2 * *v3) & 0x67FEB8AE) - 25840662;
  *(v1 + v2) = v3[1];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10041EC38()
{
  v1 = STACK[0x2A08];
  STACK[0x2F80] = STACK[0x2A08] + 1584;
  *(v1 + 1592) = STACK[0x7970];
  *(v1 + 1584) = STACK[0x4DC4];
  *(v1 + 1608) = STACK[0x42D0];
  *(v1 + 1600) = STACK[0x110C];
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762655247) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x8E0BB4E2 | (&STACK[0x10000] + 3800) & 0x71F44B18) ^ 0xBF0A79C6));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB927)))(&STACK[0x10ED8]);
  v5 = *STACK[0x970] != ((v0 - 1375832163) & 0x52019FFF) - 35643 || *STACK[0x940] == 0;
  return (*(v2 + 8 * ((1983 * ((v0 ^ 0xA5 ^ v5) & 1)) ^ v0)))(v3);
}

uint64_t sub_10041ED88@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBB70] = 0;
  STACK[0xBB78] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBB70] | v13);
  *(&STACK[0xBB70] | v13) = STACK[0xBB77];
  v17 = *(&STACK[0xBB70] | v14);
  *(&STACK[0xBB70] | v14) = STACK[0xBB76];
  v18 = *(&STACK[0xBB70] | v15);
  *(&STACK[0xBB70] | v15) = STACK[0xBB75];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBB77]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBB76]) = v17;
  LOBYTE(STACK[0xBB75]) = v18;
  v23 = STACK[0xBB70];
  LOBYTE(STACK[0xBB70]) = STACK[0xBB74];
  LOBYTE(STACK[0xBB74]) = v23;
  v24 = *(&STACK[0xBB70] | v20);
  *(&STACK[0xBB70] | v20) = STACK[0xBB73];
  LOBYTE(STACK[0xBB73]) = v24;
  v25 = STACK[0xBB71];
  LOBYTE(STACK[0xBB72]) = STACK[0xBB70];
  LOWORD(STACK[0xBB70]) = v25;
  STACK[0xBB70] = vmla_s32(v22, STACK[0xBB70], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBB78];
  v27 = (553300517 * STACK[0xBB78]) ^ v12;
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
  v48 = *(&STACK[0xBB78] + v13);
  *(&STACK[0xBB78] + v13) = STACK[0xBB7F];
  LOBYTE(STACK[0xBB7F]) = v48;
  v49 = *(&STACK[0xBB78] + v14);
  *(&STACK[0xBB78] + v14) = STACK[0xBB7E];
  LOBYTE(STACK[0xBB7E]) = v49;
  v50 = *(&STACK[0xBB78] + v15);
  *(&STACK[0xBB78] + v15) = STACK[0xBB7D];
  LOBYTE(STACK[0xBB7D]) = v50;
  v51 = STACK[0xBB78];
  LOBYTE(STACK[0xBB78]) = STACK[0xBB7C];
  LOBYTE(STACK[0xBB7C]) = v51;
  v52 = *(&STACK[0xBB78] + v20);
  *(&STACK[0xBB78] + v20) = STACK[0xBB7B];
  LOBYTE(STACK[0xBB7B]) = v52;
  v53 = STACK[0xBB79];
  LOBYTE(STACK[0xBB7A]) = STACK[0xBB78];
  LOWORD(STACK[0xBB78]) = v53;
  STACK[0xBB78] = vmla_s32(v22, STACK[0xBB78], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBB78] ^ STACK[0xBB70];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_10041F340@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8));
  v5 = ((v4 ^ (v3 + v1 - 48)) >> ((v2 - 8) & 0x7F ^ 0x4C)) + ((v4 ^ (v3 + v1 - 48)) & 1) - (((v4 ^ (v3 + v1 - 48)) >> ((v2 - 8) & 0x7F ^ 0x4C)) ^ 0x3FFFFFFF) + 0x3FFFFFFF;
  v6 = 1864610357 * (v5 & 3) - 565746582 * ((v5 >> 1) & 0x7FFFFFFE);
  v7 = 1864610357 * (v6 ^ HIWORD(v6));
  v8 = *(STACK[0x8A0] + (v7 >> 24)) ^ *(v3 + v1 - 48) ^ *((v7 >> 24) + STACK[0x898] + 3) ^ *((v7 >> 24) + STACK[0x8A8] + 2) ^ v7 ^ (27 * (v7 >> 24));
  LOBYTE(v8) = ((((v8 ^ 0x3B) + 98) ^ ((v8 ^ 0x8A) - 47) ^ ((v8 ^ 0xB1) - 20)) - 90) * v1 + 2;
  v9 = v8 & 0x9B ^ 0x56;
  v10 = 2 * ((2 * v8) & v8 ^ (2 * v8) ^ v9);
  v11 = 2 * ((2 * (v10 ^ v9 ^ v10 & v8)) ^ v9 ^ (2 * (v10 ^ v9 ^ v10 & v8)) & v8);
  v12 = 1864610357 * ((v4 ^ (v3 + v1 - 28)) & 3) - 565746582 * (((v4 ^ (v3 + v1 - 28)) >> 1) & 0x3FFFFFFE);
  v13 = 1864610357 * ((v12 ^ HIWORD(v12)) & 3) - 1131493164 * ((v12 ^ HIWORD(v12)) >> 2);
  v14 = 1864610357 * ((1864610357 * ((v4 ^ (v3 + v1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v4 ^ (v3 + v1)) & 0x7FFFFFFFu)) >> 16));
  v15 = 2 * ((2 * (v11 ^ v9 ^ v11 & v8)) ^ v9 ^ (2 * (v11 ^ v9 ^ v11 & v8)) & v8);
  *(v3 + v1) = *(v3 + v1 - 28) ^ *(STACK[0x8A0] + (v13 >> 24)) ^ *((v13 >> 24) + STACK[0x898] + 3) ^ v13 ^ *(STACK[0x8A0] + (v14 >> 24)) ^ *((v14 >> 24) + STACK[0x898] + 3) ^ (27 * BYTE3(v13)) ^ *(STACK[0x8A8] + ((v14 >> 24) & 0x5B) + 2 + ((v14 >> 24) & 0xA4)) ^ *(STACK[0x8A8] + ((v13 >> 24) & 0x49 | (4 * (((v13 >> 24) >> 1) & 1))) + ((72 - ((v13 >> 24) & 0xA4)) & 0xA4) + ((((v13 >> 24) & 0x12) + 2) & 0xFFFFFFF3)) ^ v14 ^ (27 * BYTE3(v14)) ^ v8 ^ (2 * (v15 ^ v9 ^ v15 & v8)) ^ 0x9B;
  return (*(STACK[0xF18] + 8 * ((44 * (v1 + 1 < *(a1 + 32))) ^ v2)))();
}

uint64_t sub_10041F644@<X0>(int a1@<W8>)
{
  v2 = STACK[0x76C8];
  v3 = STACK[0x6674];
  v4 = 17902189 * ((~(&STACK[0x10000] + 3800) & 0xC9FFA669 | (&STACK[0x10000] + 3800) & 0x36005990) ^ 0x47B0B079);
  LODWORD(STACK[0x10EF8]) = v4 + a1 + ((v1 - 15720) | 0x3904) - (((v1 - 15060) ^ 0x6B516C38) & (2 * a1)) - 1247251696;
  LODWORD(STACK[0x10EE0]) = v3 + v4;
  STACK[0x10ED8] = v2;
  STACK[0x10EF0] = &STACK[0x8F40];
  LODWORD(STACK[0x10EE8]) = v4 + v1 + 23776;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 34736)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((60960 * (LODWORD(STACK[0x10EE4]) == -371865839)) ^ v1)))(v6);
}

uint64_t sub_10041F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *STACK[0x5008] = v7;
  *STACK[0x1C40] = v8;
  return (*(STACK[0xF18] + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10041F844(uint64_t a1)
{
  *a1 = 807566967;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 36444)))(40000);
  *(a1 + 16) = v4;
  return (*(v3 + 8 * ((119 * (((v1 - 109) ^ (v4 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_10041F8C4()
{
  v2 = (v0 - 31800) | 0xC2;
  STACK[0x3E38] = v1 + 0x20DE4F5147E73171;
  v3 = LODWORD(STACK[0x5508]);
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x56A0)))((4 * ((v3 ^ 0xB2C445E8D6A454F6) & 0x3FFFFFFF)) ^ 0xFDC64F9C);
  STACK[0xED0] = v5;
  STACK[0x2338] = v5;
  LODWORD(STACK[0xEC0]) = v2;
  v6 = 576 * (((v3 ^ 0x900C7A) + 969647988) ^ ((v3 ^ 0x1F6F49) - 716913599) ^ ((v0 ^ 0x1703) + (v3 ^ 0x15AA422) + v2 + 738222895)) + 2006548490;
  v7 = (*(v4 + 8 * (v0 ^ 0x56A0)))(((v6 ^ 0xF9FE6599) - 1106435539) ^ v6 ^ ((v6 ^ 0xD872A3DB) - 1618877329) ^ ((v6 ^ 0x3276A36F) + 1971709147) ^ ((v6 ^ 0xABF6DD67) - 335177005) ^ 0xB80CB84ALL);
  STACK[0x7A30] = v7;
  v8 = 8 * ((v3 ^ 0xD6A454F6) & 0x1FFFFFFF);
  v9 = (*(v4 + 8 * (v0 ^ 0x56A0)))(v8 ^ 0xFB8C9F38);
  STACK[0x6A88] = v9;
  v10 = (*(v4 + 8 * (v0 ^ 0x56A0)))(v8 ^ 0xFB8C9F38);
  STACK[0x5A98] = v10;
  v11 = (*(v4 + 8 * (v0 + 11872)))(v8 ^ 0xFB8C9F38);
  STACK[0x6B20] = v11;
  if (v1)
  {
    v12 = STACK[0xED0] == 0;
  }

  else
  {
    v12 = 1;
  }

  v17 = !v12 && v7 != 0 && v9 != 0 && v10 != 0 && v11 != 0;
  return (*(v4 + 8 * (v17 ^ v0)))();
}

uint64_t sub_10041FB18(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = v8 < a2;
  if (v12 == v9 - 1909677950 < (v10 ^ 0xB85E601A ^ ((v10 ^ a8) * v11)))
  {
    v12 = v9 - 1909677950 < v8;
  }

  return (*(STACK[0xF18] + 8 * ((31 * v12) ^ (v10 - 25621))))();
}

uint64_t sub_10041FB90@<X0>(int a1@<W8>)
{
  STACK[0x1250] = STACK[0x8E88];
  LODWORD(STACK[0x7048]) = STACK[0x3444];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10041FC2C()
{
  v2 = (v0 - 26681) | 0x8A1B;
  v3 = v2 - 25975;
  LODWORD(STACK[0x10EE8]) = v2 + 1012831759 * (((~(&STACK[0x10000] + 3800) & 0x4A4D4228) - (~(&STACK[0x10000] + 3800) | 0x4A4D4229)) ^ 0x5ADE54A3) - 22395;
  STACK[0x10EF0] = 0;
  STACK[0x10EE0] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x461D)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_10041FD88()
{
  v1 = STACK[0xF18];
  STACK[0x3780] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 59640))();
}

uint64_t sub_10041FDBC()
{
  STACK[0x5400] = STACK[0x2B88];
  STACK[0x41A0] = &STACK[0x70C4];
  LODWORD(STACK[0x20CC]) = -371865835;
  LODWORD(STACK[0x38AC]) = -1772164065;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x3586)))();
}

uint64_t sub_10041FFC0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 43979)))(48);
  STACK[0x66B0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 + 27758) ^ 0x8B2D)) ^ v0)))();
}

uint64_t sub_100420078@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x981390C2FED9246;
  *(a1 + 8) = 95;
  STACK[0x5B50] = a1 + 9;
  LODWORD(STACK[0x4C5C]) = v2;
  return (*(STACK[0xF18] + 8 * (((((v1 ^ 0x9AD2) + 35628) ^ 0x818D ^ (180 * (v1 ^ 0x9AD2))) * (v4 == v3)) ^ v1)))();
}

uint64_t sub_1004200F0@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 - 487449483 < (v2 ^ 0xF7DDDCD4) + a1;
  if ((v1 - 487449483) < 0xF7DD8848 != a1 > 0x82277B7)
  {
    v3 = a1 > 0x82277B7;
  }

  return (*(STACK[0xF18] + 8 * (v2 ^ (2 * (((v2 - 45) ^ v3) & 1)))))();
}

uint64_t sub_1004201E8()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 1604278605;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x9F2Bu)))();
}

uint64_t sub_10042021C()
{
  v1 = STACK[0x990];
  v2 = *STACK[0x990];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762647309) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x24668E38) - (&STACK[0x10000] + 3800) - 610700860) ^ 0xEA98BCE0));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 30237)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*(v1 + 8) == ((v0 + 24007) ^ 0xB263)) * ((v0 + 13983) ^ 0x559E)) ^ v0)))(v4);
}

uint64_t sub_100420394()
{
  v1 = (v0 - 41471) | 0x2818;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 37191)))();
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1004204FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 288);
  LODWORD(STACK[0x10ED8]) = v1 - 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x55BC1BD8) - (&STACK[0x10000] + 3800) - 1438391261) ^ 0xBAD0F2A9) + 22751;
  STACK[0x10EE0] = v2;
  STACK[0x10EF8] = &STACK[0x8BA4];
  STACK[0x10EF0] = &STACK[0x6A98];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 37790)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((30468 * (LODWORD(STACK[0x10EE8]) == ((193 * (v1 ^ 0x37B2) - 1651923272) & 0x6276DF3B) - 371901482)) ^ v1)))(v4);
}

uint64_t sub_1004206B4()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x4394];
  LODWORD(STACK[0x35EC]) = 1693393259;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100420740()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * (v0 - 4155));
  return (*(v1 + 8 * ((v0 - 4155) ^ 0x18B ^ ((v0 != 179483860) * (v0 + 3659)))))();
}

uint64_t sub_100420888()
{
  STACK[0xB098] = v2;
  LODWORD(STACK[0xB0A4]) = *(v1 + 128);
  return (*(STACK[0xF18] + 8 * (((*(v2 + 120) == 0) * (((v0 - 143160505) ^ 0xF7774A82) + ((v0 - 143160505) & 0xDAFA83F6) + 764201248)) ^ (v0 + 9097))))();
}

uint64_t sub_100420944()
{
  v1 = *STACK[0xE50];
  v2 = *STACK[0xE58] >> ((((v0 - 75) | 0xA) - 78) ^ 0xBF);
  v3 = *(v1 + 4 * ((0xCD1F9D23 % v2) & 0x3FFFFFFC));
  LOWORD(v2) = ~*(v1 + 4 * (v3 & (v2 - 1)));
  v4 = STACK[0x8B0];
  v5 = *(STACK[0x8B0] - 527405895);
  v6 = *(STACK[0x8B8] + 4 * v5);
  v8 = v2 & (~v3 >> 16);
  v7 = v8 == 0;
  v9 = v8 + v8 * v6;
  if (v7)
  {
    v10 = *(STACK[0x8B8] + 4 * v5);
  }

  else
  {
    v10 = 0;
  }

  *(STACK[0x8B8] + 4 * v5) = (v10 + v9) * v6;
  *(v4 - 527405895) = (v5 + 1) % 6u;
  v11 = STACK[0x5F80];
  v12 = STACK[0x7EF0];
  v13 = STACK[0x5AA8];
  LODWORD(STACK[0x10EE4]) = v0 - 906386353 * ((-2 - (((&STACK[0x10000] + 3800) ^ 0x50080840 | 0xAE257705) + ((&STACK[0x10000] + 3800) ^ 0x2C047100 | 0x51DA88FA))) ^ 0xB2F24B9B) - 27388;
  STACK[0x10ED8] = v11;
  STACK[0x10EF0] = v12;
  STACK[0x10EE8] = v13;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v0 + 8735)))(&STACK[0x10ED8]);
  return (*(v14 + 8 * ((47 * (LODWORD(STACK[0x10EE0]) == -371865839)) ^ v0)))(v15);
}

uint64_t sub_100420ACC()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(v1);
  *(v2 + 512) = 0;
  return (*(v3 + 8 * (v0 + 5791)))(v4);
}

uint64_t sub_100420BE0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int a6@<W8>)
{
  v22 = v9 + (v11 + a6) * v8 - ((((v9 + (v11 + a6) * v8) * a4) >> 32) >> 7) * a3;
  v23 = ((2 * v22) & 0x1BA) + (v22 ^ 0xFBEBFF9D7C7DFEDDLL);
  v24 = v23 + 0x4140062838200E8;
  v25 = (v14 + 4 * v23 + 0x1050018A0E08048CLL);
  if (v24 < 0xFFFFFFFFFFFFFFC5)
  {
    v25 = (v15 + 4 * v24);
  }

  v26 = *v25;
  v27 = (v26 ^ 0x26A80812) - 648546322;
  v28 = (v26 ^ 0xF39457CD) + 208382003;
  v29 = (v26 ^ 0xF62E5DD1) + 164733487;
  v30 = v12 + 31;
  if ((v12 + 31) >= 0x13)
  {
    v30 = v12 + 12;
  }

  v31 = v27 ^ v28;
  if (v30 <= 3)
  {
    v32 = 3;
  }

  else
  {
    v32 = 22;
  }

  v33 = v31 ^ v29;
  v34 = ((2 * (v32 - v30)) & 0x1C) + ((v32 - v30) ^ 0xFFFFF73FCFF3BFEELL);
  v35 = (v17 + 4 * (v34 + 0x8C0300C400ALL));
  v36 = __CFADD__(v34 + 0x8C0300C400ALL, 8);
  v37 = (v16 + 4 * v34 + 0x2300C0310048);
  if (!v36)
  {
    v37 = v35;
  }

  v38 = *v37;
  v39 = ((2 * ((v30 + 19) % 0x13)) & 0x3C) + (((v30 + 19) % 0x13) ^ 0xF6D738FC7FEED5FELL);
  v40 = v39 + 0x928C703801129FALL;
  v41 = (v16 + 4 * v39 + 0x24A31C0E0044A808);
  v36 = __CFADD__(v40, 8);
  v42 = (v17 + 4 * v40);
  if (!v36)
  {
    v41 = v42;
  }

  v43 = ((v38 ^ 0x8B26E015) + 1960386539) ^ ((v38 ^ 0x81757195) + 2123009643);
  v44 = STACK[0x210];
  v45 = *v41 & 0x1F ^ 0xELL;
  *(v13 + 4 * v45) = *(v13 + 4 * v45) - 1726092850 * (v43 ^ ((v38 ^ 0x27AAE9AE) - 665512366)) + (a1 + v7 * (v33 + 1444553406)) * ((v43 ^ ((v38 ^ 0x27AAE9AE) - 665512366)) + 771323950) + 676762372;
  v46 = v21 - (((v21 * a4) >> 32) >> 7) * a3;
  v47 = ((2 * v46) & 0x1BE) + (v46 ^ 0x7DEAFD3BE8F2DFDFLL);
  v48 = v47 - 0x7DEAFD3BE8F2E01ALL;
  v49 = (v14 + 4 * v47 + 0x8540B105C348084);
  if (v48 < 0xFFFFFFFFFFFFFFC5)
  {
    v49 = (v15 + 4 * v48);
  }

  *(v44 + 4 * (a2 & 0x1F)) += v10 + v6 * ((((*v49 ^ 0x2F685738) - 795367224) ^ ((*v49 ^ 0xC0261F5) - 201482741) ^ ((*v49 ^ 0x7834C3) + v18)) + v19);
  return (*(STACK[0x228] + 8 * ((252 * (v12 != 0)) ^ a5)))((a1 + v20), (a2 + 17));
}

uint64_t sub_100420F48()
{
  STACK[0x5658] = STACK[0x6D60];
  LODWORD(STACK[0x2564]) = 1910623151;
  return (*(STACK[0xF18] + 8 * ((5614 * (v0 <= ((v0 - 641269620) ^ 0x4F9390D8))) ^ (v0 - 641304753))))();
}

uint64_t sub_100421060@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = *(STACK[0xF18] + 8 * v17);
  v19 = a9 + a1;
  *(v19 + v10) = ~v9 >> 56;
  *(v19 + v12) = BYTE6(v9) ^ v11;
  *(v19 + v14) = BYTE5(v9) ^ v13;
  *(v19 + v16) = BYTE4(v9) ^ v15;
  *(v19 + a3) = a2 ^ BYTE3(v9);
  *(v19 + a5) = a4 ^ BYTE2(v9);
  *(v19 + a7) = a6 ^ BYTE1(v9);
  *(v19 + a8) = v9 ^ 0xFC;
  return v18();
}

uint64_t sub_1004211AC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ v0)))();
  return (*(v2 + 8 * (v1 - 15620)))(v3);
}

uint64_t sub_100421470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + v6);
  v10 = (a4 + v6);
  *(v10 - 1) = *(a5 + v6 - 16);
  *v10 = v9;
  return (*(v5 + 8 * (((16 * (v8 != v6)) | (32 * (v8 != v6))) ^ v7)))();
}

uint64_t sub_1004214A4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = v2;
  *(v1 + 8) = a1;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1004214DC()
{
  v1 = STACK[0x1B78];
  v2 = STACK[0x97A0];
  *v1 = STACK[0x1090];
  *(v1 + 8) = v2;
  v3 = STACK[0x85B4];
  *(v1 + 16) = STACK[0x51D0];
  *(v1 + 20) = v3;
  return (*(STACK[0xF18] + 8 * ((((v0 ^ (STACK[0x29C8] == 0)) & 1) * (v0 ^ 0x8B25)) ^ (v0 + 9543))))();
}

uint64_t sub_100421548()
{
  v2 = *(v1 - 0x217E172EFA1E81CLL);
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0x84ABEB78 | 0x60CACECF) - ((&STACK[0x10000] + 3800) ^ 0x84ABEB78) + (((&STACK[0x10000] + 3800) ^ 0x84ABEB78) & 0x9F353130)) ^ 0x89F70A4B);
  LODWORD(STACK[0x10ED8]) = (((v0 + 34400687) | 0x98121004) + 1654476901 + (((*(v1 - 0x217E172EFA1E804) ^ 0xB64BAF60) + 1236553888) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x7C2DD52F) - 2083378479) ^ (v0 + 12315 + (*(v1 - 0x217E172EFA1E804) ^ 0x23B3BD5E) - 599016459))) ^ v3;
  STACK[0x10F00] = v1 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10EF8]) = v0 - v3 + 17615;
  STACK[0x10EF0] = v2;
  STACK[0x10EE0] = &STACK[0x86F8];
  STACK[0x10EE8] = &STACK[0x485C];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 29746)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((3664 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v0)))(v5);
}

uint64_t sub_100421750()
{
  v2 = STACK[0xF10] - 27287;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004217AC()
{
  LODWORD(STACK[0xB0AC]) = v1;
  LODWORD(STACK[0xB0A8]) = v0;
  v3 = ((v0 - ((2 * v0) & 0x1F81E01FALL) + 0x385E2D7FC0F010ALL) << (((v2 - 22) | 0x8E) ^ 0x8Cu)) - 104;
  STACK[0xB0B0] = v3 ^ 0xD9C6DE1D392BD9D1;
  v4 = 8 * (v1 - ((2 * v1) & 0x2305EACC)) - 0x45BEF1D773E854D0;
  v5 = ((((v2 + 1523560164) & 0xA530BF3F) + 0x2A3C73E43B04A6F8 + (v3 ^ 0xC055206FDD1141CLL)) ^ ((v3 ^ 0x69A2A68F35365F96) + 0x4F9B876DF3E279B9) ^ ((v3 ^ 0x7988E236289F4C62) + 0x5FB1C3D4EE4B6A4DLL)) + (((v4 ^ 0x471B1401D01A5557) - 0x20194680C6F7368ELL) ^ ((v4 ^ 0x73FBAB217B0FD368) - 0x14F9F9A06DE2B0B1) ^ ((v4 ^ 0x8EA1B10827022D0FLL) + 0x165C1C76CE10B12ALL)) - 0xF37F18690A05BF5;
  v6 = ((v5 ^ 0x8E67E4416926B8E6) + 0x3C02F2926DC9BBC1) ^ v5 ^ ((v5 ^ 0xFB42F455FECED787) + 0x4927E286FA21D4A2) ^ ((v5 ^ 0xC574864FD3276C16) + 0x7711909CD7C86F31) ^ ((v5 ^ 0xFDCB7F77BFDFFFAELL) + 0x4FAE69A4BB30FC89);
  STACK[0xB0B8] = v6 ^ 0x190FC1E6ADE0F3A4;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 44417)))(v6 ^ 0xFB10FCD9);
  STACK[0x8F78] = v8;
  return (*(v7 + 8 * (((4 * (v8 != 0)) | (8 * (v8 != 0))) ^ v2)))();
}

uint64_t sub_100421A98@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = STACK[0x55F8] + (*(*STACK[0xE50] + (*STACK[0xE58] & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91) + (*(*STACK[0xE50] + (*STACK[0xE58] & (((v1 - 34593) | 0x5442) - 1222356162))) & 0x7FFFFFFFFFFFFFFFLL ^ 0x8E6C9EDCFBEE12E4) + 1;
  *(STACK[0x1420] + 33) = 1;
  LODWORD(STACK[0x51FC]) = STACK[0x3CB4];
  return (*(STACK[0xF18] + 8 * (v1 | (4 * (((v2 == 0) ^ (v1 - 33) ^ 0xB7) & 1)))))();
}

uint64_t sub_100421BBC()
{
  v1 = STACK[0x1E30];
  v2 = 120 * STACK[0x1750];
  *(*(*(v1 + 520) + 8) + v2 + 8) = 0x981390C2FED9247;
  *(*(*(v1 + 520) + 8) + v2 + 112) = *(v1 + 480);
  *(v1 + 480) = 0;
  v3 = STACK[0xF18];
  STACK[0x7DD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 - 39841 + (v0 ^ 0xC215))))();
}

uint64_t sub_100421C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x508] = v7;
  LODWORD(STACK[0xE80]) = *(*STACK[0xE50] + (*STACK[0xE58] & 0x7D86BAEC));
  v8 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xE90]));
  v9 = 838 * (LODWORD(STACK[0xE90]) ^ 0x16FE);
  LODWORD(STACK[0xE00]) = v9;
  LODWORD(STACK[0xE70]) = v9 ^ 0x6A7DFEDA;
  return v8(a1, a2, a3, a4, a5, 1337, a7, 0x91EC2AA68C9E5990);
}

uint64_t sub_100421CE0()
{
  v1 = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  v2 = STACK[0x2CEC];
  v3 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1241C510) + 306300182) ^ 0xF467DED9);
  LODWORD(STACK[0x10EF4]) = ((LODWORD(STACK[0x1E10]) ^ 0xD01229B1) + 2094462928 + ((((v0 - 1625713602) & 0x60E6BFEA) - 72436) & (2 * LODWORD(STACK[0x1E10])) ^ 0x5FDB248C)) ^ v3;
  LODWORD(STACK[0x10F08]) = v0 - v3 + 1777275104;
  STACK[0x10F10] = v1;
  LODWORD(STACK[0x10EF0]) = v3 ^ 0xD30A034E;
  LODWORD(STACK[0x10ED8]) = (40409587 * v2 - 1378563772) ^ v3;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xC510) - 15082) ^ 0xDED9);
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F04]) = v3 + 2069619737;
  STACK[0x10EE0] = &STACK[0x23B4];
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 35883)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((40339 * (LODWORD(STACK[0x10F0C]) == -371865839)) ^ v0)))(v5);
}

uint64_t sub_100421F18()
{
  v2 = *v1;
  if (LODWORD(STACK[0xB57C]))
  {
    v3 = 751015022;
  }

  else
  {
    v3 = 751015086;
  }

  return (*(STACK[0xF18] + 8 * ((((v3 & ~v2 | v2 & 0x2CC3974E) == 751015758) * (((v0 + 304537026) ^ 0x1227AFF3) - 2150)) ^ v0)))();
}

uint64_t sub_100421F8C@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((((a1 - 1229385246) < 0x49420E3D) * ((a1 + 30263) ^ 0xBF7B)) ^ (a1 + 2282))))();
}

uint64_t sub_100421FEC()
{
  v1 = STACK[0x83A8];
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0x981390C2FED9246;
  *(v1 + 32) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10042202C@<X0>(int a1@<W8>)
{
  if (((((a1 - 30160) | 0x855) ^ 0x1B97) & v3) != 0)
  {
    v1 = v2;
  }

  LODWORD(STACK[0x5B4]) = v1;
  LODWORD(STACK[0x4EC]) = v1;
  STACK[0x520] = STACK[0x578];
  STACK[0x5C0] = STACK[0x500];
  v4 = STACK[0x7E0];
  STACK[0x658] = STACK[0x7E0];
  return (*(STACK[0x430] + 8 * ((194 * (v4 != 0)) ^ a1)))();
}

uint64_t sub_1004220A8()
{
  v0 = STACK[0xF10] - 26544;
  *STACK[0x2A80] = 137779131;
  *STACK[0x74E0] = 58;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100422140@<X0>(int a1@<W8>)
{
  v2 = STACK[0x9368];
  *(v2 + 256) = a1;
  *(v2 + 288) = STACK[0x14B8];
  *(v2 + 280) = STACK[0x87E0];
  v3 = STACK[0xF18];
  STACK[0x3298] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 143112))();
}

uint64_t sub_1004221F8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W8>)
{
  v21 = v4 - (((v4 * v10) >> 32) >> 7) * v11;
  v22 = (*(v17 + 4 * (v8 & 0x1F)) - 450790015) * v6[32];
  v23 = ((2 * v22) & 0x7EF6D5B6) + (v22 ^ 0xBF7B6ADB);
  v24 = ((2 * v21) & 0x1DE) + (v21 ^ 0x6DA5AFFCDBE72BEFLL);
  v25 = v24 - 0x6DA5AFFCDBE72C51;
  v26 = (v14 + 4 * v24 + 0x4969400C90635044);
  if (v25 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v26 = (v15 + 4 * v25);
  }

  v27 = ((*v26 ^ 0x106A823) - 17213475) ^ ((*v26 ^ 0x9056A514) + 1873369836) ^ ((*v26 ^ 0xEF9363A6) + 275553370);
  v28 = 73696428 * v23 - 1539985224 * *(v13 + 4 * (((v9 ^ 0xB3F62B0F) + 30886981) ^ v9 ^ ((v9 ^ 0xF6A329E9) + 1149390499) ^ ((v9 ^ 0xFF7F65BD) + 1298006775) ^ ((v9 ^ 0xF7F4FFEF) + 1171626149) ^ 0x4DDE98AFLL)) + 550050467 * v27 + (v27 + 2126737041) * (v23 + 532380290);
  v29 = ((v28 - 150583013) ^ 0x3A9D6D28) & (2 * ((v28 - 150583013) & 0xBADD4D29)) ^ (v28 - 150583013) & 0xBADD4D29;
  v30 = ((2 * ((v28 - 150583013) ^ 0x6A856F3A)) ^ 0xA0B04426) & ((v28 - 150583013) ^ 0x6A856F3A) ^ (2 * ((v28 - 150583013) ^ 0x6A856F3A)) & 0xD0582212;
  v31 = v30 ^ 0x50482211;
  v32 = (v30 ^ 0x80100000) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x4160884C) & v31 ^ (4 * v31) & v18;
  v34 = (v33 ^ 0x40400000) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x90182213)) ^ 0x5822130) & (v33 ^ 0x90182213) ^ (16 * (v33 ^ 0x90182213)) & v18;
  v36 = v34 ^ 0xD0582213 ^ (v35 ^ 0x2000) & (v34 << 8);
  v37 = (v28 - 150583013) ^ (2 * ((v36 << 16) & a3 ^ v36 ^ ((v36 << 16) ^ 0x22130000) & (((v35 ^ 0xD0580203) << 8) & a3 ^ 0x580000 ^ (((v35 ^ 0xD0580203) << 8) ^ 0x58220000) & (v35 ^ 0xD0580203)))) ^ 0x3126B620;
  *v6 = v37;
  v38 = v28 - 1310484858 - ((((v28 - 1310484858) * v10) >> 32) >> 7) * v11;
  v39 = ((2 * v38) & 0x1A4) + (v38 ^ 0xB373FFF59FFF4FD2);
  v40 = v39 + 0x4C8C000A6000AFCCLL;
  v41 = (v14 + 4 * v39 + 0x323000298002C0B8);
  v42 = __CFADD__(v40, 98);
  v43 = (v15 + 4 * v40);
  if (!v42)
  {
    v41 = v43;
  }

  *(v17 + 4 * (v8 & 0x1F)) += (((v37 ^ *v41 ^ 0xF99207DB) + 107870245) ^ ((v37 ^ *v41 ^ v16) + v12) ^ ((v37 ^ *v41 ^ v19) + v20)) * a4 + a1;
  return (*(STACK[0x228] + 8 * (((v7 == 0) * a2) ^ v5)))();
}

uint64_t sub_100422628()
{
  v2 = STACK[0x2DA0];
  STACK[0x5488] = STACK[0x2DA0];
  v3 = *(v1 + 65);
  STACK[0x2388] = v3;
  LODWORD(STACK[0x8A50]) = 1497668682;
  v5 = v2 == 0x217E172EFA1E81CLL || v3 == ((v0 - 4656) | 0x4151u) + 0x981390C2FED4667;
  return (*(STACK[0xF18] + 8 * ((98 * v5) ^ v0)))();
}

uint64_t sub_10042291C@<X0>(__int16 a1@<W8>)
{
  v2 = v1 | 0x1192;
  v3 = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  v4 = 139493411 * ((((&STACK[0x10000] + 3800) | 0x5E5D4F17) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xA1A2B0E8)) ^ 0x5270AE52);
  LOWORD(STACK[0x10EFC]) = -32733 * ((((&STACK[0x10000] + 3800) | 0x4F17) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xB0E8)) ^ 0xAE52) + a1 + ((v2 + 29584) ^ 0x9CFB) - 8105;
  LODWORD(STACK[0x10ED8]) = v2 - v4 + 40309;
  LODWORD(STACK[0x10EF8]) = v4 + 1133646169;
  STACK[0x10EE0] = &STACK[0x6428];
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10EE8]) = v4 - 466197451;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 46896)))(&STACK[0x10ED8]);
  v7 = STACK[0x10F00];
  LODWORD(STACK[0x1494]) = STACK[0x10F00];
  return (*(v5 + 8 * ((14 * (v7 == 1497668682)) ^ v2)))(v6);
}

uint64_t sub_100422A8C()
{
  STACK[0x3EF8] = STACK[0x9358];
  v1 = STACK[0x5660];
  STACK[0x5958] = STACK[0x5660];
  if (STACK[0x2080])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * ((v3 * (v0 ^ 0xD6D2 ^ (v0 - 12077) ^ 0xA61E)) ^ v0)))();
}

uint64_t sub_100422AF0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE0]) = v1 + 353670337 * ((2 * ((&STACK[0x10000] + 3800) & 0x34B00D78) - (&STACK[0x10000] + 3800) - 883953019) ^ 0x7F6E0AB8) - 233046814;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 50754)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((112837 * (v1 == -1406748288)) ^ (v1 + 37506))))(&STACK[0x550C]);
}

uint64_t sub_100422BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x1700] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * ((8447 * (v6 ^ 0xA40) - 30208) ^ v6)))(a1, a2, a3, a4, a5, a6, STACK[0x950]);
}

uint64_t sub_100422C0C()
{
  v1 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 1593316485) & 0x5EF82FAA) - 3516)))();
}

uint64_t sub_100422D64()
{
  v0 = STACK[0xF10] - 630;
  v1 = STACK[0xF10] ^ 0xFFC6;
  v2 = STACK[0xF10] - 8716;
  STACK[0x9E40] = &STACK[0x48C8];
  if (STACK[0xACB8])
  {
    v3 = LODWORD(STACK[0xACC0]) == v1 + v0 - 371930801;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((74 * v4) ^ v2)))();
}

uint64_t sub_100422DDC@<X0>(char a1@<W8>)
{
  v8 = *v2;
  *(v7 + (v1 + v5)) = v4 ^ a1;
  *(v7 + (v1 + v6)) = v3 ^ 0x77;
  return v8();
}

uint64_t sub_100422E10()
{
  v1 = 634647737 * STACK[0xE20];
  v2 = LODWORD(STACK[0xE30]) - v1;
  v3 = STACK[0xE40];
  LODWORD(STACK[0x10EE4]) = LODWORD(STACK[0xE40]) + v1;
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v1 - 1230214699;
  STACK[0x10EE8] = v0 ^ v1;
  STACK[0x10EF0] = 1189934578 - v1;
  LODWORD(STACK[0x10EDC]) = v2;
  LODWORD(STACK[0x10ED8]) = -v1;
  LODWORD(STACK[0x10EFC]) = v3 - v1 + 3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xD40])))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100422FA0@<X0>(int a1@<W8>)
{
  v4 = ((v1 + 461196798) ^ 0xC4EC3AE7) & (2 * (((a1 + 6665) ^ 0xE6CE813E) & (v1 + 461196798))) ^ ((a1 + 6665) ^ 0xE6CE813E) & (v1 + 461196798);
  v5 = ((2 * ((v1 + 461196798) ^ 0x791F2F)) ^ 0xCD6F4B96) & ((v1 + 461196798) ^ 0x791F2F) ^ (2 * ((v1 + 461196798) ^ 0x791F2F)) & 0xE6B7A5CA ^ 0x2290A449;
  v6 = (((2 * ((v1 + 461196798) ^ 0x791F2F)) ^ 0xCD6F4B96) & ((v1 + 461196798) ^ 0x791F2F) ^ (2 * ((v1 + 461196798) ^ 0x791F2F)) & 0xE6B7A5CA ^ 0x84A701C9) & (4 * v4) ^ v4;
  v7 = ((4 * v5) ^ 0x9ADE972C) & v5 ^ (4 * v5) & 0xE6B7A5C8;
  v8 = (v7 ^ 0x82968503) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x642120C3)) ^ 0x6B7A5CB0) & (v7 ^ 0x642120C3) ^ (16 * (v7 ^ 0x642120C3)) & 0xE6B7A5C0;
  STACK[0x5400] = v2;
  STACK[0x41A0] = v3;
  LODWORD(STACK[0x20CC]) = (v1 + 461196798) ^ (2 * ((((v9 ^ 0x8485A14B) << 8) & 0x66B7A100 ^ 0x26A524CB ^ (((v9 ^ 0x8485A14B) << 8) ^ 0xB7A5CB00) & (v9 ^ 0x8485A14B)) & (((v9 ^ 0x6232044B) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x6232044B) & (v8 << 8) ^ v8)) ^ 0xF1B7DF5;
  LODWORD(STACK[0x38AC]) = -1360343037;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100423148()
{
  v3 = *(STACK[0xF18] + 8 * (((v0 >= ((4 * v1) ^ 0x28AA4) + 1766717) * ((3 * (v1 ^ 0xB588)) ^ 0xBC01)) ^ (v1 - 14130)));
  STACK[0xEC0] = *(v2 + 8 * (v1 ^ 0x8FCE)) - 333318851;
  v4 = *(v2 + 8 * (v1 - 33478));
  STACK[0xEB0] = *(v2 + 8 * (v1 - 33450)) - 627980871;
  STACK[0xEA0] = *(v2 + 8 * (v1 - 32274)) - 1979134191;
  STACK[0xED0] = v4;
  return v3();
}

uint64_t sub_1004231FC()
{
  v2 = (v0 + 31702);
  v3 = (v1 - 84047948);
  v4 = *(STACK[0xACA0] + v3);
  v5 = STACK[0x9D08];
  STACK[0xD20] = v2;
  *(STACK[0x9D10] + (v2 ^ 0xCD966892640F13C0) + v3 + v5) = v4;
  v6 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xDE0]) = v1 - 1;
  return v6();
}

uint64_t sub_100423328(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4 - 32196;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a4 + 16238)))();
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_100423444()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((946 * (v0 ^ 0x42A)) ^ 0x74CD) + v0)))();
}

uint64_t sub_10042357C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  LODWORD(STACK[0xA020]) = STACK[0x98D4];
  v5 = *(STACK[0x80C8] + 32) + 1758384711;
  v6 = (v5 ^ 0xC6282D23) & (2 * (v5 & (v4 ^ 0x9731953F))) ^ v5 & (v4 ^ 0x9731953F);
  v7 = ((2 * (v5 ^ 0xC20A6C43)) ^ 0xAA7683EE) & (v5 ^ 0xC20A6C43) ^ (2 * (v5 ^ 0xC20A6C43)) & 0x553B41F6;
  v8 = v7 ^ 0x55094011;
  v9 = (v7 ^ 0x1E0) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x54ED07DC) & v8 ^ (4 * v8) & 0x553B41F4;
  v11 = (v10 ^ 0x542901C0) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x1124023)) ^ 0x53B41F70) & (v10 ^ 0x1124023) ^ (16 * (v10 ^ 0x1124023)) & 0x553B41F0;
  v13 = v11 ^ 0x553B41F7 ^ (v12 ^ 0x51300100) & (v11 << 8);
  LODWORD(STACK[0xA02C]) = v5 ^ (2 * ((v13 << 16) & 0x553B0000 ^ v13 ^ ((v13 << 16) ^ 0x41F70000) & (((v12 ^ 0x40B4087) << 8) & 0x553B0000 ^ 0x443A0000 ^ (((v12 ^ 0x40B4087) << 8) ^ 0x3B410000) & (v12 ^ 0x40B4087)))) ^ 0x3935E1A2;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_1004237AC()
{
  v1 = STACK[0x90D0] + 288;
  STACK[0x45C8] = v1;
  v2 = 634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xA84E918C) - (&STACK[0x10000] + 3800) - 1411860678) ^ 0x39B1673A);
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 19334;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125376;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50320)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0xE5E ^ (5053 * (v0 + 815402450 != ((v0 + 2447) | 0x2815) + 437948256)))))(v4);
}

uint64_t sub_1004239C4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = STACK[0xF18];
  STACK[0x2B90] = *(STACK[0xF18] + 8 * v9);
  STACK[0x4258] = a7;
  LODWORD(STACK[0x932C]) = v8;
  STACK[0x8508] = v11;
  STACK[0x1200] = a2;
  STACK[0x6FA8] = a1;
  LODWORD(STACK[0x9064]) = v10;
  *(v7 + 162) = 0;
  LODWORD(STACK[0x10EDC]) = (v12 + 439619987) ^ (1022166737 * ((((&STACK[0x10000] + 3800) | 0x1958AB04) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xE6A754F8)) ^ 0xA3484A96));
  v14 = (*(v13 + 8 * (v12 + 11462)))(&STACK[0x10ED8]);
  return (*(v13 + 8 * (((LOBYTE(STACK[0x10ED8]) == ((v12 + 83) ^ 0x42)) * (v12 - 40553)) | v12)))(v14);
}

uint64_t sub_100423ABC()
{
  v1 = (STACK[0xF10] ^ 0x8526) + 41498;
  v2 = STACK[0xF10] - 17678;
  LODWORD(STACK[0x8B48]) = v0;
  return (*(STACK[0xF18] + 8 * ((109 * (v0 != (v1 ^ 0xE9D57726))) ^ v2)))();
}

uint64_t sub_100423B14(int a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, uint64_t a6, char a7)
{
  v13 = ((a4[1] << 16) & 0x2C0000 ^ 0x49151D2A ^ ((((a4[2] << 8) ^ 0xE3899577) & (a4[3] ^ 0xFFAFFF6A) | a4[3] & 0x88) ^ 0x95A2CA9) & ((a4[1] << 16) ^ 0xFF62FFFF)) & ((*a4 << 24) ^ 0x62FFFFFF) ^ (*a4 << 24) & 0x5C000000;
  v14 = (a4[4] ^ 0xF) << 24;
  v15 = ((a4[5] << 16) & 0xC40000 ^ 0x61602011 ^ ((((a4[6] << 8) ^ 0xB0E33AD8) & (a4[7] ^ 0xF3FBFF46) | a4[7] & 0x27) ^ 0xB8D88395) & ((a4[5] << 16) ^ 0xFB66FFFF)) & (v14 ^ 0x6DFFFFFF) ^ v14 & 0x96000000;
  v16 = (a4[8] ^ v8) << 24;
  v17 = ((a4[9] << 16) & 0x77777777 ^ 0x2B778DDC ^ ((((a4[10] << 8) ^ 0x7B8D8060) & (a4[11] ^ 0xFB9FFFF6) | a4[11] & 0x9F) ^ 0xE3059E2E) & ((a4[9] << 16) ^ 0xFB42FFFF)) & (v16 ^ 0xC0FFFFFF) ^ v16 & 0x4C000000;
  v18 = ((a4[13] << 16) & 0xFFEFFFFF ^ 0xEEC21934 ^ ((((a4[14] << 8) ^ 0x5B877FCD) & (v11 ^ 0x5B87FF50) | v11 & v9) ^ 0xF3979279) & ((a4[13] << 16) ^ 0xFF6AFFFF)) & ((a4[12] << 24) ^ 0x62FFFFFF) ^ (a4[12] << 24) & 0xB9000000;
  v19 = v15 ^ v17;
  v20 = *(STACK[0xF18] + 8 * v10);
  v21 = (((v13 ^ 0x2E721EFC) + 759388878) ^ ((v13 ^ 0x68F36756) + 1807885160) ^ ((v13 ^ 0xF94B40D6) - 92666648)) + (((v17 ^ 0xCA975A87) - 1808165227) ^ ((v17 ^ 0xF8E83F28) - 1505299652) ^ ((v17 ^ 0x8D956BA0) - 751065164)) - (((v19 ^ 0x9E24825) + 558639616) ^ ((v19 ^ 0x6EFE4169) + 1179656372) ^ ((v19 ^ 0x2329031A) + 193422017)) - (((v18 ^ v19 ^ 0x466B23A6) + 2133606573) ^ ((v18 ^ v19 ^ 0xB350BC30) - 1978147013) ^ ((v18 ^ v19 ^ 0xD2266D25) - 345960912)) - 84532727;
  v22 = (((v19 ^ 0x8053E27) - 850590868) ^ ((v19 ^ 0xAE2B0B34) + 1801664121) ^ ((v19 ^ 0xC3AE910D) + 115780674)) - v21 + 1836567258;
  v23 = v13 ^ 0xFBFF332A ^ v19;
  v24 = (v18 ^ v19 ^ 0x8A4F0312) - v22;
  v25 = v24 - ((2 * v24) & 0x4F8248EA) + 666969205;
  v26 = v24 + (v22 ^ 0xBD9243CE);
  v27 = (v21 ^ ((v21 ^ 0x796F7423) - 1999573006) ^ ((v21 ^ 0x13FC4ABE) - 498871955) ^ ((v21 ^ 0x8B04254F) + 2059124382) ^ ((v21 ^ 0xEFD77FFF) + 510190638) ^ 0x70516EAE ^ v25) - v26;
  v28 = (v22 ^ 0xBD9243CE) - v27 - 1249157053;
  v29 = v27 - v28;
  v30 = v29 + (v26 ^ 0xFF924B00);
  v31 = v23 - (((v18 ^ 0xEB5020C9) - 392134287) ^ ((v18 ^ 0x2823721D) + 735302565) ^ ((v18 ^ 0x81EE0479) - 2111920703)) - v21 + v22 + 1857329172 + v29;
  v32 = v28 - v30 + 176723811;
  a4[3] = v31 - (v12 & (2 * v31)) - 99;
  a4[7] = v28 - v30 - (v12 & (2 * (v28 - v30 + 99)));
  a4[6] = (~(v32 >> 7) | 0xC5) + BYTE1(v32) - 98;
  v29 += 586373734;
  a4[5] = BYTE2(v32) - (v12 & (v32 >> 15)) - 99;
  a4[4] = HIBYTE(v32) - (v12 & (v32 >> 23)) - 99;
  a4[11] = v29 - (v12 & (2 * v29)) - 99;
  a4[10] = BYTE1(v29) - (v12 & (v29 >> 7)) - 99;
  v30 -= 1664960282;
  a4[2] = BYTE1(v31) - (v12 & (v31 >> 7)) - 99;
  a4[1] = BYTE2(v31) - (v12 & (v31 >> 15)) - 99;
  *a4 = HIBYTE(v31) - (v12 & (v31 >> 23)) - 99;
  a4[9] = BYTE2(v29) - (v12 & (v29 >> 15)) - 99;
  a4[8] = (~(v29 >> 23) | 0xC5) + HIBYTE(v29) - 98;
  a4[15] = v30 - (v12 & (2 * v30)) - 99;
  a4[14] = BYTE1(v30) - (v12 & (v30 >> 7)) - 99;
  a4[13] = BYTE2(v30) - (v12 & (v30 >> 15)) - 99;
  a4[12] = HIBYTE(v30) - (v12 & (v30 >> 23)) - 99;
  LOBYTE(STACK[0x3AE7]) = (BYTE1(v31) - (v12 & (v31 >> 7)) - 99) & 0xFB ^ 0x9A;
  LOBYTE(STACK[0x8C4F]) = a4[3] & 0xBF ^ 0x55;
  LOBYTE(STACK[0x1E3F]) = a4[4] & 0xF7 ^ a5;
  LOBYTE(STACK[0x8717]) = a4[5] & 0xFE ^ 0xA5;
  LOBYTE(STACK[0x257F]) = a4[6] & 0x7F ^ 0xBE;
  LOBYTE(STACK[0x7917]) = a4[7] & 0xFB ^ 0xAD;
  LOBYTE(STACK[0x39A7]) = a4[8] & 0xFE ^ 0x73;
  LOBYTE(STACK[0x6F8F]) = a4[9] & 0x7F ^ 0x15;
  LOBYTE(STACK[0x7C5F]) = a4[10] & 0xF7 ^ a7;
  LOBYTE(STACK[0x714F]) = a4[11] & 0xBF ^ 0xBE;
  LOBYTE(STACK[0x377F]) = a4[12] & 0xDF ^ v7;
  LOBYTE(STACK[0x780F]) = a4[13] & 0xF7 ^ 0x72;
  LOBYTE(STACK[0x6947]) = a4[14] & 0xDF ^ 0x3C;
  LOBYTE(STACK[0x7E7F]) = a4[15] & 0xFB ^ 0x46;
  return v20(*(&off_1010A0B50 + (a1 ^ 0x8D33)) - 676668694);
}

uint64_t sub_1004243D4()
{
  v3 = *(v1 + 24 * v0 + 16);
  LODWORD(STACK[0x2EDC]) = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 37899)))(v3 ^ 0xE9D5C711);
  STACK[0xAE30] = v5;
  return (*(v4 + 8 * ((67 * (((71 * (v2 ^ 0xE0)) ^ (v5 == 0)) & 1)) ^ v2)))();
}

uint64_t sub_100424494()
{
  v1 = STACK[0xF18];
  STACK[0x1518] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xBEC4 ^ (v0 + 34397))))();
}

uint64_t sub_1004244C8()
{
  v1 = STACK[0xF10] - 13381;
  v2 = STACK[0xF10] - 29230;
  v3 = STACK[0xF10] - 27586;
  STACK[0x8C50] = v0;
  return (*(STACK[0xF18] + 8 * ((((v2 ^ 0xFFFFB094) + v1) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_100424584@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v10 = ~v6 + v4;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = v3 + v10;
  *(v13 - 15) = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a2)), a3);
  *(v13 - 31) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a2)), a3);
  return (*(STACK[0xF18] + 8 * (((v8 + v6 == v5) * v9) ^ v7)))();
}

uint64_t sub_10042479C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 31676)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100424824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = (((a13 ^ 0x7A789071) - 2054721649) ^ ((a13 ^ 0xCB954F50) + 879407280) ^ ((a13 ^ 0x58381830) - 1480071216)) + 1249602097;
  v17 = v13 + ((5 * (v14 ^ 0x4366)) ^ 0x60A5A603) < v16;
  if (v16 < 0x60A5A320 != v13 > 0x9F5A5CDF)
  {
    v17 = v16 < 0x60A5A320;
  }

  return (*(v15 + 8 * ((11 * !v17) ^ v14)))();
}

uint64_t sub_1004248F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v7 = (a1 + 4 * v3);
  v8 = (v6 + 4 * v3);
  v9 = veorq_s8(v8[1], v7[1]);
  *v8 = veorq_s8(*v8, *v7);
  v8[1] = v9;
  return (*(v5 + 8 * (v2 | (32 * (v3 + v4 + a2 == 32)))))();
}

uint64_t sub_10042495C()
{
  v1 = STACK[0xF18];
  STACK[0x4580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0xB112) - 27668) ^ v0)))();
}

uint64_t sub_10042499C()
{
  v1 = LODWORD(STACK[0x5C24]) == -371865843;
  LOBYTE(STACK[0x4AFB]) = v1;
  return (*(STACK[0xF18] + 8 * ((v1 * ((v0 ^ 0x406F) - 2206)) ^ v0)))();
}

uint64_t sub_100424C20()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 479709856) & 0x1C97D79D) + 5112) ^ v0)))();
}

uint64_t sub_100424CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == ((a8 - 762144067) & 0x2D6D397F ^ 0xE9D5E76E))
  {
    v9 = LODWORD(STACK[0x3FE0]);
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * a8))(a1, a2, v9);
}

uint64_t sub_100424D04()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2329)))();
}

uint64_t sub_100424DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x6AF8] = v3;
  STACK[0x1138] = a3;
  LODWORD(STACK[0x1A38]) = -371865839;
  STACK[0x1198] = 0;
  return (*(STACK[0xF18] + 8 * (((a3 == 0) * (((v4 - 35321) | 0xC20) ^ 0xD6B)) | (v4 - 18219))))(a1, a2, 371891400);
}

uint64_t sub_100424E34()
{
  v0 = STACK[0xF10];
  v1 = 293 * (STACK[0xF10] ^ 0x8B0A);
  v2 = STACK[0xF10] - 33987;
  v3 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x1DEA ^ (11427 * (v0 - 1829429985 >= (v1 ^ 0xF11C1973))))))();
}

uint64_t sub_100424EAC()
{
  v0 = (STACK[0xF10] - 566004674) & 0x21BCA9D6;
  v1 = STACK[0xF10] + 14284;
  STACK[0x9D28] = &STACK[0x42A8];
  if (STACK[0x2920])
  {
    v2 = LODWORD(STACK[0x49CC]) == v0 - 371909183;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((26 * v3) ^ v1)))();
}

uint64_t sub_100424F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x6320];
  STACK[0x5D28] = &STACK[0x2A04];
  LODWORD(STACK[0x4704]) = -1048907466;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100425000()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x32D0];
  STACK[0x5D28] = &STACK[0x53EC];
  LODWORD(STACK[0x4704]) = 271115451;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100425050@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0xD64C58D9) + (~(&STACK[0x10000] + 3800) | 0x29B3A726)) ^ 0x306A4317));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 368) = 0;
  return (*(v3 + 8 * (v1 - 7868)))(v4);
}

uint64_t sub_100425158@<X0>(unint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0xDD0] = v4;
  STACK[0xDE0] = v3;
  STACK[0xDF0] = a1;
  v5 = v2 + 28406;
  **a2 = -1333593075;
  v6 = STACK[0x4CE8];
  v7 = *(*a2 + 16);
  STACK[0x7690] = ((v5 - 46145) ^ 0x22EAu) + STACK[0x7690] - 12437;
  STACK[0x73A0] = v7;
  STACK[0x52A0] = 0;
  STACK[0x9848] = 0;
  STACK[0x3668] = 0;
  STACK[0x5FA0] = 0;
  STACK[0x9388] = 0;
  STACK[0x8018] = 0;
  STACK[0x59D0] = 0;
  STACK[0x2DE8] = 0;
  STACK[0x7AF0] = 0;
  STACK[0x6F50] = 0;
  STACK[0x3B20] = 0;
  STACK[0x1900] = 0;
  STACK[0x3F50] = 0;
  return (*(STACK[0xF18] + 8 * (((v6 != 0) * (((v5 - 46145) | 0x8D00) ^ 0x9F06)) | v5)))();
}

uint64_t sub_1004252E0@<X0>(int a1@<W8>)
{
  *v1 = 0;
  *v2 = v3;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100425320()
{
  v1 = *(STACK[0xF18] + 8 * (v0 - 27766));
  LODWORD(STACK[0xEC0]) = 1724701209;
  return v1();
}

uint64_t sub_100425528()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x17EB) + v0)))();
}

uint64_t sub_100425564()
{
  v1 = STACK[0xF10] + 13359;
  v2 = (STACK[0xF10] - 26403) | 0x3E0;
  v4 = *(v0 + 8);
  v3 = v0 + 8;
  STACK[0x22F8] = v3;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762674651) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x57A2970) - 2055591566) ^ 0xB47BE456));
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x75D3)))(&STACK[0x10ED8]);
  STACK[0x24D8] = v3 + 160;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4318] = v7;
  STACK[0x1860] = (v7 + 116);
  STACK[0x6008] = (v7 + 136);
  STACK[0x9270] = (v7 + 152);
  STACK[0x9430] = (v7 + 168);
  STACK[0x7690] = v6 + 4272;
  STACK[0x4E28] = STACK[0x3DC0] ^ 0xC8D3AC11ADFE603DLL;
  LODWORD(STACK[0x7FC4]) = LODWORD(STACK[0x56C0]) ^ (v2 - 371876071);
  STACK[0x3120] = *(v3 + 168);
  (*(v5 + 8 * (v1 + 2925)))();
  (*(v5 + 8 * (v1 ^ 0x75BD)))(v7 + 152, 0, 16);
  STACK[0x4770] = (*(v5 + 8 * (v1 + 3025)))(16, 0x100004077774924);
  LODWORD(STACK[0x2E84]) = -371865839;
  STACK[0x88B0] = (*(v5 + 8 * (v1 ^ 0x7451)))(16, 0x100004077774924);
  LODWORD(STACK[0x394C]) = -371865839;
  v8 = (*(v5 + 8 * (v1 ^ 0x75A1)))(LODWORD(STACK[0x7FC4]), v7 + 168, 4096);
  return (*(v5 + 8 * ((236 * ((v8 ^ 0xFBCDFB7E) - 2077096830 + ((2 * v8) & 0xF79BF6FC) < 0x80000001)) ^ v1)))();
}

uint64_t sub_1004257B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (((LODWORD(STACK[0xAEF4]) ^ 0x7D0C80E5) - 2097971429) ^ ((LODWORD(STACK[0xAEF4]) ^ 0xFFF519D9) + 714279) ^ (((v7 + 1798046045) ^ LODWORD(STACK[0xAEF4])) - 1798069805)) + 168552865;
  v10 = (((v8 ^ 0x60EE28F8) + 1613862704) ^ ((v8 ^ 0x5C34C11C) + 1558937292) ^ ((v8 ^ ((v7 - 17616) | 0x56A) ^ 0xFB812650) - 77691666)) + 1488041350;
  v11 = v9 < 0x20362290;
  v12 = v9 > v10;
  if (v11 != v10 < 0x20362290)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return (*(STACK[0xF18] + 8 * ((477 * !v13) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100425970()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 6767;
  v2 = STACK[0xA1E8];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] + 634647737 * ((((2 * &STACK[0x10ED8]) | 0x5CC1C5BA) - &STACK[0x10ED8] - 778101469) ^ 0x43F6CD21) - 2058523928;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16714)))(&STACK[0x10ED8]);
  v4 = STACK[0xAF18];
  v5 = 139493411 * (((&STACK[0x10ED8] | 0x5EC83E76) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xA137C188)) ^ 0x52E5DF33);
  STACK[0x10EE8] = v2;
  STACK[0x10ED8] = v4;
  LODWORD(STACK[0x10EE0]) = v5 ^ 0x6C363EFB;
  LODWORD(STACK[0x10EE4]) = v0 - v5 - 19739;
  (*(v3 + 8 * (v0 ^ 0x4630)))(&STACK[0x10ED8]);
  v6 = STACK[0x6A20];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * (((&STACK[0x10ED8] | 0xB152266C) - (&STACK[0x10ED8] & 0xB1522668)) ^ 0x7E9140A) - 10545;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v6;
  v7 = (*(v3 + 8 * (v0 ^ 0x4636)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v7);
}

uint64_t sub_100425B48()
{
  STACK[0x2960] = v2;
  STACK[0x5AA0] = v1;
  LODWORD(STACK[0x8164]) = v5;
  STACK[0x2618] = v3;
  LODWORD(STACK[0x8E40]) = v4;
  v7 = STACK[0x7690];
  STACK[0x32D8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v7 + (v6 ^ 0x7028 ^ (v6 - 805791891) & 0x3007BB7Bu ^ 0xC361);
  STACK[0x2140] = v0 ^ 0x10A99C80114D1487;
  return (*(STACK[0xF18] + 8 * ((221 * (v0 == 0)) ^ v6)))();
}

uint64_t sub_100425C1C()
{
  v0 = STACK[0xF10] - 21764;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x4AC8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100425C60()
{
  v4 = (v2 ^ 0x1420999) & (2 * (v2 & 0x9403519C)) ^ v2 & 0x9403519C;
  v5 = ((2 * (v2 ^ 0x2946A1A2 ^ v1 ^ 0xB3E5)) ^ 0x7A8AF60A) & (v2 ^ 0x2946A1A2 ^ v1 ^ 0xB3E5) ^ (2 * (v2 ^ 0x2946A1A2 ^ v1 ^ 0xB3E5)) & 0xBD457B04;
  v6 = v5 ^ 0x85450905;
  v7 = (v5 ^ 0x30004200) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xF515EC14) & v6 ^ (4 * v6) & 0xBD457B04;
  v9 = (v8 ^ 0xB5056800) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8401301)) ^ 0xD457B050) & (v8 ^ 0x8401301) ^ (16 * (v8 ^ 0x8401301)) & 0xBD457B00;
  v11 = v9 ^ 0xBD457B05 ^ (v10 ^ 0x94453000) & (v9 << 8);
  v12 = v2 ^ (2 * ((v11 << 16) & 0x3D450000 ^ v11 ^ ((v11 << 16) ^ 0x7B050000) & (((v10 ^ 0x29004B05) << 8) & 0x3D450000 ^ 0x38040000 ^ (((v10 ^ 0x29004B05) << 8) ^ 0x457B0000) & (v10 ^ 0x29004B05)))) ^ 0x292B1501;
  v13 = 17902189 * (((&STACK[0x10ED8] | 0x5373750) - (&STACK[0x10ED8] | 0xFAC8C8AF) - 87504721) ^ 0x8B782140);
  LODWORD(STACK[0x10EE8]) = v13 + v1 + 26605;
  STACK[0x10EF0] = &STACK[0x73A8];
  LODWORD(STACK[0x10EF8]) = v12 + v13;
  STACK[0x10ED8] = v0;
  LODWORD(STACK[0x10EE0]) = v13 + 1497668682;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v1 + 37565)))(&STACK[0x10ED8]);
  return (*(v14 + 8 * ((40384 * (LODWORD(STACK[0x10EE4]) == v3)) ^ v1)))(v15);
}

uint64_t sub_100425E7C()
{
  v0 = STACK[0xF10] ^ 0x29B2;
  v1 = STACK[0xF10] - 31662;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 34421) ^ v1)))();
}

uint64_t sub_100425ED0@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF18];
  STACK[0x83F8] = (*(STACK[0xF18] + 8 * (v1 ^ 0xF247)))((16 * (a1 - ((2 * a1) & 0x9231882)) + 1226359824) ^ 0x4918C410u);
  return (*(v2 + 8 * ((41 * (((((*(STACK[0x850] - 914251479) << (v1 + 34)) ^ 0x4E9398FF) - 531074905) ^ (((*(STACK[0x850] - 914251479) << (v1 + 34)) ^ 0x59FDC611) - 147444151) ^ (((*(STACK[0x850] - 914251479) << (v1 + 34)) ^ 0x176E5EEE) - 1180322120)) == -1362368422)) ^ v1)))();
}

uint64_t sub_100426048()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x65AA)))(24);
  *(STACK[0x790] - 573165550) = v2;
  return (*(v1 + 8 * (((((v0 + 79) ^ (v2 == 0)) & 1) * ((v0 ^ 0x4F7245BD) - 1332931118)) ^ v0)))();
}

uint64_t sub_10042611C()
{
  v1 = STACK[0x5DD8];
  v2 = STACK[0x589C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = -524359966;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004261B0()
{
  v1 = STACK[0xF10];
  v2 = 271 * (STACK[0xF10] ^ 0x8B1E);
  v3 = STACK[0xF10] - 27097;
  LODWORD(STACK[0x4140]) = v0;
  return (*(STACK[0xF18] + 8 * (((v0 == (v2 ^ 0xE9D5E03A)) * (v1 - 7857)) ^ v3)))();
}

uint64_t sub_10042624C()
{
  v2 = *(STACK[0x78B0] + 120);
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x215F96C1AC644B2CLL;
  LODWORD(STACK[0x10EE0]) = (v1 + 329048456) ^ (1112314453 * ((((&STACK[0x10000] + 3800) | 0xB6CC79F9) - ((&STACK[0x10000] + 3800) & 0xB6CC79F8)) ^ 0x599A5320));
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 45112)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 120) = 0;
  return (*(v3 + 8 * ((411 * (v0 == ((v1 + 494248981) & 0xE28A4FFC ^ 0x162A926D))) ^ v1)))(v4);
}

uint64_t sub_100426444()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 33749));
  return (*(v1 + 8 * (v0 - 29776)))();
}

uint64_t sub_100426520()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF28A)))((v0 << (((v1 - 28) & 0xFD) + 15)) ^ 0x4EAE3888u);
  STACK[0x2890] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 11770) | 0x8123) - 35572)) ^ v1)))();
}

uint64_t sub_1004265B0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  *(v0 + 24) = 0;
  return (*(v2 + 8 * (v1 - 14869)))(v3);
}

uint64_t sub_1004266A8@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0xB600]) = a1;
  LOWORD(STACK[0xB602]) = v1;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((1957 * (v2 ^ 0x78C) - 1419) ^ v2 ^ (15107 * ((v2 - 620600963) > 0xE164401F)))))();
}

uint64_t sub_100426928()
{
  LODWORD(STACK[0xED0]) = v1;
  *(v2 + 132) -= *(v3 + 64);
  *(v2 + 12) += (9 * (v0 ^ 0x9A26)) ^ 0xFFFF7B12;
  v4 = *(v3 + 56);
  v5 = (STACK[0xEB0] + 56);
  if (!STACK[0xEB0])
  {
    v5 = STACK[0xE90];
  }

  STACK[0xEC0] = v4;
  *v5 = v4;
  *(v3 + 56) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004269D4()
{
  v1 = v0 - 31970;
  v2 = v0 - 34614;
  v3 = STACK[0xF18];
  v4 = *(STACK[0xF18] + 8 * v2);
  STACK[0xED0] = v4;
  STACK[0x8F00] = v4;
  return (*(v3 + 8 * ((v1 ^ 0x395F) + v2)))();
}

uint64_t sub_100426A14()
{
  v1 = STACK[0xF18];
  STACK[0x3780] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4602)))();
}

uint64_t sub_100426A58@<X0>(unsigned int a1@<W8>)
{
  *STACK[0x8C58] = STACK[0x4D80];
  *STACK[0x3DE8] = STACK[0x9164];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100426A98()
{
  v1 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 6947) ^ 0x3641) + v0)))();
}

uint64_t sub_100426ACC(unsigned int a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v12 = a4 < v10;
  *(v9 + v11) = a2;
  v13 = v11 + a3 + ((v8 + v7) | a1);
  v14 = v11 + a5 < a4;
  if (v12 == v13 > a6)
  {
    v12 = v14;
  }

  return (*(STACK[0xF18] + 8 * ((v12 * a7) ^ v8)))();
}

uint64_t sub_100426B6C()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x7F1D03C0) - (&STACK[0x10000] + 3800) + 14875704) ^ 0xE6C4E7F7) - 1374292651;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 1671029483)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((2569 * (v0 != ((v0 + 2030604872) & 0x235CD517) + 837383399)) ^ (v0 - 1671072875))))(v2);
}

uint64_t sub_100426C34@<X0>(int a1@<W8>)
{
  v1 = a1 - 15540;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 ^ 0x8E3) + v1)))();
}

uint64_t sub_100426C84()
{
  v1 = STACK[0xF10] - 18021;
  v2 = STACK[0xF10] - 31086;
  v3 = STACK[0xA460];
  *(v3 + 8) = v0;
  *(v3 + 16) = *(STACK[0x7408] + 24);
  return (*(STACK[0xF18] + 8 * (v1 + v2 - 7453)))();
}

uint64_t sub_100426CF0()
{
  v1 = STACK[0xF18];
  STACK[0x3780] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x3245) - 9034) ^ v0)))();
}

uint64_t sub_100426D30()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x20E6FBD9) - ((&STACK[0x10000] + 3800) & 0x20E6FBD8)) ^ 0xC6C0E016) + 296753103;
  v1 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  STACK[0x7690] -= 64;
  return (STACK[0x2740])(v1);
}

uint64_t sub_100426DBC()
{
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x1D10] = v2;
  STACK[0x7690] = v1 - 8128 + ((v0 - 8315) | 0x2200u);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE4]) = v0 - 193924789 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB9547F44) - (&STACK[0x10000] + 3800) + 592822366) ^ 0x6A110DC4) + 36919;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 43581)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v0 ^ (4 * (LODWORD(STACK[0x10EE0]) != -371865839)))))(v4);
}

uint64_t sub_100426EC4()
{
  STACK[0x7A28] = 0;
  STACK[0x5C50] = (((v0 ^ 0x3E9225EFAD94F439) - 0x3E9225EFAD94F439) ^ ((v0 ^ 0xFB1911DB0AE3955BLL) + 0x4E6EE24F51C6AA5) ^ (((3 * (v1 ^ 0x3924u) - 0x3A74CBCBB15DE4C8) ^ v0) + 0x3A74CBCBB15D598DLL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -1639185786;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100426FD8()
{
  v3 = v0 < v1;
  v4 = STACK[0xE80];
  *(STACK[0xED0] + v2) = -48;
  if (v3 == v2 + 1 > (((v4 - 18806) | 0x3C08) ^ 0x52521321u))
  {
    v3 = v2 - 1381117753 < v0;
  }

  return (*(STACK[0xF18] + 8 * (!v3 | v4)))();
}

uint64_t sub_100427090(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v16 = v9 - 1;
  v17 = ((v10 ^ a3) + a4) ^ v10 ^ ((v10 ^ a7) + a8) ^ ((v10 ^ v11) + v12) ^ ((v10 ^ a5 ^ (v8 + a1) & a2) + a6);
  *(&STACK[0x3FC] + v16) = ((((v17 ^ v15) + 43) ^ ((v17 ^ 0x50) + 116) ^ ((v17 ^ 0x21) + 3)) + 82) * (v10 + 79) + v10 * v14 + 78;
  return (*(v13 + 8 * ((449 * (v16 == 0)) ^ v8)))();
}

uint64_t sub_100427198()
{
  v9 = ((((v2 - 2813) ^ v3) + v5) ^ ((v2 - 2813) | v4)) + v8 < v0;
  if (v0 < v1 != v8 + 1 > v6)
  {
    v9 = v0 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((!v9 * v7) ^ v2)))();
}

uint64_t sub_1004272D0(unint64_t a1)
{
  STACK[0xEC0] = *(a1 + 136);
  STACK[0xED0] = a1;
  return (*(STACK[0xF18] + 8 * ((11 * (((v2 - 93) ^ 0x4F ^ (*(a1 + 16) == 0)) & 1)) | (v2 + v1))))();
}

uint64_t sub_10042731C()
{
  v0 = STACK[0xF10] ^ 0x68;
  v1 = STACK[0xF10] - 28553;
  v2 = (STACK[0xB0C8] + (LODWORD(STACK[0xB0D8]) - 1744516598));
  v2[7] = LOBYTE(STACK[0xC410]) ^ 0x5F;
  v2[6] = LOBYTE(STACK[0xC40F]) ^ 0x5F;
  v2[5] = LOBYTE(STACK[0xC40E]) ^ 0x5F;
  v2[4] = LOBYTE(STACK[0xC40D]) ^ (v0 + 12);
  v2[3] = LOBYTE(STACK[0xC40C]) ^ 0x5F;
  v2[2] = LOBYTE(STACK[0xC40B]) ^ 0x5F;
  v2[1] = LOBYTE(STACK[0xC40A]) ^ 0x5F;
  *v2 = LOBYTE(STACK[0xC409]) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10042743C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  STACK[0x8418] = 0;
  return (*(v1 + 8 * (v0 - 15935)))(v2);
}

uint64_t sub_10042752C()
{
  v1 = STACK[0xF18];
  STACK[0x2C40] = *(STACK[0xF18] + 8 * (v0 - 34427));
  return (*(v1 + 8 * ((v0 - 34427) ^ 0xDFB ^ (v0 - 1078987968) & 0x404FB9AD)))();
}

uint64_t sub_100427570()
{
  v1 = STACK[0x54A8];
  *(v1 + 464) = -371865801;
  STACK[0x15B8] = v1 + 0x69FFB0C731CA1380;
  *(v1 + 472) = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0xBB7 ^ (4393 * (((((v0 - 744497819) & 0x2C60E7F6) - 1626931496) ^ v0) > 0x917A346B)))))();
}

uint64_t sub_100427644()
{
  v1 = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  v2 = 155453101 * ((~(&STACK[0x10000] + 3800) & 0x7FAB7BC8 | (&STACK[0x10000] + 3800) & 0x80548430) ^ 0x998D6007);
  LODWORD(STACK[0x10EF4]) = ((LODWORD(STACK[0x46B0]) ^ 0x501221B1) - 53018672 + ((2 * LODWORD(STACK[0x46B0])) & 0xFFFF67EE ^ 0x5FDB248C)) ^ v2;
  LODWORD(STACK[0x10EF0]) = v2 ^ 0xE40DFA59;
  LODWORD(STACK[0x10F08]) = v0 - v2 + 1777281639;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((~(&STACK[0x10000] + 3800) & 0x7BC8 | (&STACK[0x10000] + 3800) & 0x8430) ^ 0x6007);
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x5670];
  LODWORD(STACK[0x10ED8]) = v2 ^ 0x7D6D5D82;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F04]) = v2 + 2069619737;
  STACK[0x10F10] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEFD6)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((30006 * (LODWORD(STACK[0x10F0C]) == (((v0 ^ 0xAE09) - 101181) ^ 0x162B38EF))) ^ v0)))(v4);
}

uint64_t sub_100427854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0xB608] = v9;
  LODWORD(STACK[0xB614]) = v7;
  STACK[0xB618] = v6;
  return (*(STACK[0xF18] + 8 * (((v9 == 0) * ((v8 - 13371) ^ (v8 - 11858) ^ 0xE7E)) ^ v8)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10042794C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v8 = *(STACK[0xED0] + 4 * ((2899 * (((a5 ^ 0xDB5BA1A) + 1052707071) ^ ((a5 ^ 0x215D8293) + 307703928) ^ ((a5 ^ 0x5ABEC102u) + 1773433831)) - 1922810221) % 0x26C4));
  v9 = ((((8 * a5) ^ LODWORD(STACK[0xD30])) + 1190774656) ^ (((8 * a5) ^ 0xF0B10871) + 1290974577) ^ (((8 * a5) ^ 0xB8BCBE5E) + 83821408)) * a2 - 446428496;
  v10 = ((((8 * a5) ^ 0x4BD50736) - 2022542205) ^ (((8 * a5) ^ 0x1EC40739) - 765234034) ^ (((8 * a5) ^ 0xE7A6CC61) + 721534934)) * a2 - 1702493891;
  v11 = ((((8 * a5) ^ 0x6817A6F5) - 222563737) ^ (((8 * a5) ^ 0x2CE62368) - 1236633604) ^ (((8 * a5) ^ 0xF64649F2) + 1827282274)) * a2 - 2015494485;
  v12 = ((v8 ^ 0x445F7B56) - 605571820) ^ ((v8 ^ 0xA67A7A3B) + 969061503) ^ ((v8 ^ 0x35EE3983) - 1437141049);
  v13 = ((((8 * a5) ^ 0x9F77024A) - 86939120) ^ (((8 * a5) ^ 0xDD46D46B) - 1193231313) ^ (((8 * a5) ^ 0xF0861A72) - 1793035720)) * a2 - 991568230;
  v14 = ((((8 * a5) ^ 0xABF32EB) + 1604457562) ^ (((8 * a5) ^ 0xE50B92E3) - 1340689326) ^ (((8 * a5) ^ 0x5D036C65) + 136202968)) * a2 + 341529632;
  v15 = *(STACK[0xEC0] + 4 * ((707 * v12 - 406767940) % 0x300));
  v16 = ((((8 * a5) ^ 0x84C6F582) + 909362952) ^ (((8 * a5) ^ 0x4AADFEF5) - 128398223) ^ (((8 * a5) ^ 0x7CDCC71F) - 836110949)) * a2 - 1575315710;
  v17 = ((((8 * a5) ^ 0x2B51A172) - 2101086778) ^ (((8 * a5) ^ 0x2EA053EB) - 2026764451) ^ (((8 * a5) ^ 0xB7463EF2) + 517237318)) * a2 + 950314443;
  v18 = (((8 * a5) ^ 0x80166B4D) - 618180024) ^ (((8 * a5) ^ 0x86A21C78) - 577559181) ^ (((8 * a5) ^ 0xB403BB63) - 281902486);
  v19 = ((((8 * a5) ^ 0xF53D171E) + 127126630) ^ (((8 * a5) ^ 0x3A77DFD6) - 925301586) ^ (((8 * a5) ^ 0x7DFD0498) - 1890328604)) * a2 + 1023268333;
  v20 = v9 - ((((v9 >> 5) * a7) >> 32) >> 1) * v7;
  v21 = v10 - ((((v10 >> 5) * a7) >> 32) >> 1) * v7;
  v22 = v11 - ((((v11 >> 5) * a7) >> 32) >> 1) * v7;
  v23 = v13 - ((((v13 >> 5) * a7) >> 32) >> 1) * v7;
  v24 = ((((8 * a5) ^ 0xF7CFF605) + 774967921) ^ (((8 * a5) ^ 0x80FF2673) + 1493287431) ^ (((8 * a5) ^ 0xC5871C1A) + 477755504)) * a2 - 1360162762;
  v25 = v14 - ((((v14 >> 5) * a7) >> 32) >> 1) * v7;
  v26 = v16 - ((((v16 >> 5) * a7) >> 32) >> 1) * v7;
  v27 = *(STACK[0xED0] + 4 * ((2899 * (((v15 ^ 0x28C38C0F) + 601133060) ^ ((v15 ^ 0xA383189E) - 1466694509) ^ ((v15 ^ 0x9A1D1D7C) - 1861615247)) + 1163964858) % 0x26C4));
  v28 = v17 - ((((v17 >> 5) * a7) >> 32) >> 1) * v7;
  v29 = v19 - ((((v19 >> 5) * a7) >> 32) >> 1) * v7;
  v30 = v24 - ((((v24 >> 5) * a7) >> 32) >> 1) * v7;
  v31 = ((((8 * a5) ^ 0xA0AE0B73) + 939752246) ^ (((8 * a5) ^ 0x41BCBD3A) - 653144707) ^ (((8 * a5) ^ 0x53A57A1C) - 888665509)) * a2 + 442996293;
  v32 = v31 - ((((v31 >> 5) * a7) >> 32) >> 1) * v7;
  v33 = STACK[0xEB0] + (((v27 ^ 0x512E2D07) - 1361980679) ^ ((v27 ^ 0x9E2EEE97) + 1641091433) ^ ((v27 ^ 0x29DCFF20) - 702349088)) - ((((2 * v27) & 0xD56C9AA4 ^ 0x5DE7F812) - 459260837) ^ (((2 * v27) & 0xD56C9AA4 ^ 0x4FAE8527) - 152485520) ^ (((2 * v27) & 0xD56C9AA4 ^ 0xD7616515) + 1848025438)) + 1308780139;
  v34 = ((((8 * a5) ^ 0x7238B0F8) + 303302251) ^ (((8 * a5) ^ 0x9E0436A4) - 30900169) ^ (((8 * a5) ^ 0x5E8B4A0E) + 1051196573)) * a2 + 302235840;
  v35 = 1864610357 * ((1864610357 * ((v33 ^ LODWORD(STACK[0xD40])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v33 ^ LODWORD(STACK[0xD40])) & 0x7FFFFFFF)) >> 16));
  v36 = v34 - ((((v34 >> 5) * a7) >> 32) >> 1) * v7;
  v37 = ((((8 * a5) ^ 0xF58595A) + 1750079109) ^ (((8 * a5) ^ 0x6D3169A2) + 171517565) ^ (((8 * a5) ^ 0xD0DEFCAF) - 1210666126)) * a2 - 1429086465;
  v38 = v37 - ((((v37 >> 5) * a7) >> 32) >> 1) * v7;
  v39 = ((((8 * a5) ^ 0xF940D4F3) + 1004958523) ^ (((8 * a5) ^ 0xDB16476B) + 431022243) ^ (((8 * a5) ^ 0x90E15FCC) + 1380448262)) * a2 - 1257451893;
  v40 = v39 - ((((v39 >> 5) * a7) >> 32) >> 1) * v7;
  v41 = ((((8 * a5) ^ 0x7CEF33F4) - 366609284) ^ (((8 * a5) ^ 0xB588709C) + 591576852) ^ (((8 * a5) ^ 0x7BD08F02) - 317046642)) * a2 + 1863754698;
  v42 = v35 ^ (-15 * (v35 >> 24));
  v43 = v41 - ((((v41 >> 5) * a7) >> 32) >> 1) * v7;
  v44 = *(STACK[0xE60] + (v35 >> 24)) ^ *v33;
  LOBYTE(v27) = *(STACK[0xE40] + (v35 >> 24)) ^ *(STACK[0xE30] + (v35 >> 24));
  LODWORD(v33) = (((a5 ^ 0x31C2476D) - 834815853) ^ ((a5 ^ 0x16CDA724) - 382576420) ^ ((a5 ^ 0x515919CB) - 1364793803)) - 1641232910;
  v45 = *(a4 + 8 * v20);
  v46 = *(a4 + 8 * v29);
  v47 = ((((8 * a5) ^ 0x1962B971) - 1242409711) ^ (((8 * a5) ^ 0x3CFA1DF9) - 1872039527) ^ (((8 * a5) ^ 0x972F68E1) + 1002407041)) * a2 - 2052476673;
  v48 = *(a4 + 8 * v22);
  v49 = ((v33 ^ 0x699CACD) - 558630562) ^ v33 ^ ((v33 ^ 0x9428AE3B) + 1275239852) ^ ((v33 ^ 0xCA9B5764) + 313615605) ^ ((v33 ^ 0x7FFFFFFD) - 1479160722);
  v50 = *(a4 + 8 * v40);
  v51 = v18 * a2 + 1580230660;
  v52 = v44 ^ v27 ^ v42;
  v53 = v45 ^ 0x791D3E42D595E6A3;
  if ((v52 & 1) == 0)
  {
    v53 = 0x2B5A19D9E16F24E2;
  }

  v54 = v48 ^ 0x44384B2180BE196CLL;
  if (v52)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0x56167EE0045E073;
  }

  v56 = v53 ^ STACK[0xE70];
  if ((v52 & 0x20) != 0)
  {
    v57 = *(a4 + 8 * v43) ^ 0x747B14EABC689B1DLL;
  }

  else
  {
    v57 = 0x352238253C936202;
  }

  v58 = v46 ^ 0x91AC038A7A92F312;
  v59 = v50 ^ 0xBE12C8A720DCBFD1;
  if ((v52 & 0x20) == 0)
  {
    v59 = 0xEC55EF3C14267D90;
  }

  v60 = 0xC3EB24114E683153;
  if ((v52 & 2) != 0)
  {
    v60 = v58;
  }

  v61 = v47 - ((((v47 >> 5) * a7) >> 32) >> 1) * v7;
  v62 = v51 - ((((v51 >> 5) * a7) >> 32) >> 1) * v7;
  v63 = ((v56 ^ 0x9D37DAF84DCFC319) + 0x62C82507B2303CE7) ^ ((v56 ^ 0x623C6C3640672BB2) - 0x623C6C3640672BB2) ^ ((v56 ^ 0x233DE7F61F16C87ALL) - 0x233DE7F61F16C87ALL);
  v64 = 2 * ((v56 ^ 0x5C36513812BE20D1) & (v60 ^ 0xB4467C9366470C5) ^ v56 & 0x48AF43D8780C4196);
  v65 = *(a4 + 8 * v25);
  v66 = *(a4 + 8 * v28);
  v67 = *(a4 + 8 * v23) ^ 0xDC3B878060F8ECA8;
  v68 = *(a4 + 8 * v36);
  v69 = v66 ^ 0x1CEDC1CA5E6957C4;
  v70 = (((v60 ^ 0x1AD5D989D76B55B5) - 0x1AD5D989D76B55B5) ^ ((v60 ^ 0x93888E599A5D4059) + 0x6C7771A665A2BFA7) ^ ((v60 ^ 0x4AB673C1035E24BFLL) - 0x4AB673C1035E24BFLL)) + v63 - (((v64 ^ 0x9F06D1271A4D37B9) - 0x645AFBBD984575C6) ^ ((v64 ^ 0x5AB54B6295054202) + 0x5E169E07E8F2FF83) ^ ((v64 ^ 0x55FF1875AF50749BLL) + 0x515CCD10D2A7C91CLL));
  v71 = *(a4 + 8 * v30) ^ 0x4DADD750C07FB0BALL;
  v72 = *(a4 + 8 * v21) ^ 0x6A250043A3E7BB4ALL;
  if ((v52 & 2) == 0)
  {
    v72 = 0x2B7C2C8C231C4255;
  }

  v73 = 0xCF4FB9F408449A5;
  if ((v52 & 8) != 0)
  {
    v73 = v71;
  }

  v74 = v68 ^ 0xD3254E2B256D3831;
  if ((v52 & 8) == 0)
  {
    v74 = 0x816269B01197FA70;
  }

  if ((v52 & 0x10) != 0)
  {
    v75 = v69;
  }

  else
  {
    v75 = 0x5DB4ED05DE92AEDBLL;
  }

  v76 = *(a4 + 8 * v32) ^ 0xE23D6EF71753173ELL;
  if ((v52 & 0x10) == 0)
  {
    v76 = 0xB07A496C23A9D57FLL;
  }

  v77 = *(a4 + 8 * v38) ^ 0x145804D074B575EELL;
  v78 = 0x8E7CA01B54022EE9;
  if ((v52 & 4) != 0)
  {
    v78 = v67;
    v79 = v65 ^ 0x4DFECFF290FBD922;
  }

  else
  {
    v79 = 0xCA7E33D1000203DLL;
  }

  v80 = 0x461F234B404FB7AFLL;
  if ((v52 & 0x40) != 0)
  {
    v80 = v77;
    v81 = *(a4 + 8 * v61) ^ 0x8E7E8809C6879F63;
  }

  else
  {
    v81 = 0xCF27A4C6467C667CLL;
  }

  v82 = ((2 * ((v70 - 0x4E24DAA76036907DLL) ^ 0xE97A8FCDD325A810)) ^ 0xD49E511798D26EA4) & ((v70 - 0x4E24DAA76036907DLL) ^ 0xE97A8FCDD325A810) ^ (2 * ((v70 - 0x4E24DAA76036907DLL) ^ 0xE97A8FCDD325A810)) & 0x6A4F288BCC693752;
  v83 = ((v70 - 0x4E24DAA76036907DLL) ^ 0xEB318745DF2C9E10) & (2 * ((v70 - 0x4E24DAA76036907DLL) & 0x8335A7461F4C9F42)) ^ (v70 - 0x4E24DAA76036907DLL) & 0x8335A7461F4C9F42;
  v84 = v82 ^ 0x2A41288844291152;
  v85 = (v82 ^ 0xE000088402600) & (4 * v83) ^ v83;
  v86 = ((4 * v84) ^ 0xA93CA22F31A4DD48) & v84 ^ (4 * v84) & 0x6A4F288BCC693750;
  v87 = ((16 * (v86 ^ 0x42430880CC492212)) ^ 0xA4F288BCC6937520) & (v86 ^ 0x42430880CC492212) ^ (16 * (v86 ^ 0x42430880CC492212)) & 0x6A4F288BCC693740;
  v88 = (v87 ^ 0x20420888C4013500) & (((v86 ^ 0x280C200B00201540) & (16 * v85) ^ v85) << 8) ^ (v86 ^ 0x280C200B00201540) & (16 * v85) ^ v85;
  v89 = (((v87 ^ 0x4A0D200308680252) << 8) ^ 0x4F288BCC69375200) & (v87 ^ 0x4A0D200308680252) ^ ((v87 ^ 0x4A0D200308680252) << 8) & 0x6A4F288BCC693200;
  v90 = v88 ^ 0x6A4F288BCC693752 ^ (v89 ^ 0x4A08088848210000) & (v88 << 16);
  v91 = (v90 << 32) & 0x6A4F288B00000000 ^ v90 ^ ((v90 << 32) ^ 0x4C69375200000000) & (((v89 ^ 0x2047200384482552) << 16) & 0x6A4F288B00000000 ^ 0x4244208200000000 ^ (((v89 ^ 0x2047200384482552) << 16) ^ 0x288BCC6900000000) & (v89 ^ 0x2047200384482552));
  v92 = v55 ^ STACK[0xE80] ^ v57 ^ v73 ^ v75 ^ v72 ^ v79 ^ v81;
  v93 = *(a4 + 8 * v26) ^ 0xC8A60EE9575B9804;
  if (((((v52 ^ 0x67) - 68) ^ ((v52 ^ 0x52) - 113) ^ ((v52 ^ 0x35) - 22)) + 35) >= 0)
  {
    v93 = 0x89FF2226D7A0611BLL;
  }

  STACK[0xE80] = v92 ^ v93;
  v94 = v80 ^ v78 ^ v74 ^ v59 ^ v76;
  v95 = *(a4 + 8 * v62) ^ 0x7F0FB9C392A0E5ACLL;
  if (((((v52 ^ 0x67) - 68) ^ ((v52 ^ 0x52) - 113) ^ ((v52 ^ 0x35) - 22)) + 35) >= 0)
  {
    v95 = 0x2D489E58A65A27EDLL;
  }

  v96 = v94 ^ v95 ^ (v70 - 0x4E24DAA76036907DLL) ^ (2 * v91);
  v97 = *(STACK[0xF18] + 8 * ((198 * ((((v49 ^ 0x285781D0) - 2043982909) ^ ((v49 ^ 0x1A3EBD92) - 1270712446) ^ ((v49 ^ 0x15BCF02Cu) - 1145030081)) + 1985411458 < 0x30)) ^ LODWORD(STACK[0xD50])));
  STACK[0xE70] = v96 ^ 0x8332C5CE04019E1;
  return v97();
}

uint64_t sub_100428BE4(unint64_t a1)
{
  STACK[0xA618] = a1;
  LODWORD(STACK[0xA624]) = v1;
  LODWORD(STACK[0x10ED8]) = (v2 + 12706) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB28A07EE) - (&STACK[0x10000] + 3800) - 1497695223) ^ 0x6844CED3));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((2 * (&STACK[0x10000] + 3800)) | 0x7EE) - (&STACK[0x10000] + 3800) - 1015) ^ 0xCED3) + 18068;
  STACK[0x10EE8] = &STACK[0xC422];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 51502)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((3 * (v2 ^ 0x2FEA)) ^ 0x906A) + v2)))(v4);
}

uint64_t sub_100428CB0(uint64_t a1)
{
  STACK[0x8D08] = *(a1 + 40);
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 38939)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100428E20()
{
  STACK[0x8FE8] = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986359923;
  LODWORD(STACK[0x704C]) = -2116087616;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100428F28@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 - 0x51C4112416C2EAD4 < v2 + 2373338074u;
  if (v2 > 0xFFFFFFFF7289BC25 != a1 - 0x51C4112416C2EAD4 < ((2137 * (v1 ^ 0xA295u)) ^ 0x8D765368uLL))
  {
    v3 = v2 > 0xFFFFFFFF7289BC25;
  }

  return (*(STACK[0xF18] + 8 * ((13 * v3) ^ v1)))();
}

uint64_t sub_100428FBC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x8880] = a1;
  v3 = *v2;
  STACK[0x8F70] = *v2;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v1 + 30035) ^ 0xFFFF3933) + v1 + 15184)) ^ v1)))();
}

uint64_t sub_10042900C()
{
  v2 = STACK[0x7234];
  *v0 = STACK[0x7234];
  *(v0 + 4) = -371865839;
  *(v0 + 8) = 34;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 17861)))(STACK[0x7DA8], STACK[0x9668] + 16, 12);
  return (*(v3 + 8 * (((v2 != 1) * ((v1 ^ 0x84FE) + 470)) ^ v1)))(v4);
}

uint64_t sub_10042907C(_DWORD *a1)
{
  v2 = v1 - 26639;
  v3 = (v1 - 784) | 0x310;
  v4 = (v1 - 810) | 0x32A;
  v5 = (v3 ^ 0xFFFF74C4) + *a1 == 0;
  *a1 += v3 ^ 0xFFFF74C4;
  v6 = v5;
  return (*(STACK[0xF18] + 8 * ((v6 * (v4 ^ 0x1E7C)) ^ v2)))();
}

uint64_t sub_1004290DC@<X0>(unint64_t a1@<X8>)
{
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0xDCB1E833) + (~(&STACK[0x10000] + 3800) | 0x234E17CC)) ^ 0x66A109A0);
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10EDC]) = 1446135777 * v2 - v3 + 2011869203 + (v1 ^ 0xB802);
  LODWORD(STACK[0x10ED8]) = (v1 + 33623) ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 38996)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100429430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xF10] ^ 0x2B78;
  v5 = STACK[0xF10] - 19946;
  LODWORD(STACK[0xA4F8]) = v3;
  return (*(STACK[0xF18] + 8 * v5))(a1, a2, a3, v4, LODWORD(STACK[0xA4F4]));
}

uint64_t sub_100429460@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBAE0] = 0;
  STACK[0xBAE8] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBAE0] | v13);
  *(&STACK[0xBAE0] | v13) = STACK[0xBAE7];
  v17 = *(&STACK[0xBAE0] | v14);
  *(&STACK[0xBAE0] | v14) = STACK[0xBAE6];
  v18 = *(&STACK[0xBAE0] | v15);
  *(&STACK[0xBAE0] | v15) = STACK[0xBAE5];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBAE7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBAE6]) = v17;
  LOBYTE(STACK[0xBAE5]) = v18;
  v23 = STACK[0xBAE0];
  LOBYTE(STACK[0xBAE0]) = STACK[0xBAE4];
  LOBYTE(STACK[0xBAE4]) = v23;
  v24 = *(&STACK[0xBAE0] | v20);
  *(&STACK[0xBAE0] | v20) = STACK[0xBAE3];
  LOBYTE(STACK[0xBAE3]) = v24;
  v25 = STACK[0xBAE1];
  LOBYTE(STACK[0xBAE2]) = STACK[0xBAE0];
  LOWORD(STACK[0xBAE0]) = v25;
  STACK[0xBAE0] = vmla_s32(v22, STACK[0xBAE0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBAE8];
  v27 = (553300517 * STACK[0xBAE8]) ^ v12;
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
  v48 = *(&STACK[0xBAE8] + v13);
  *(&STACK[0xBAE8] + v13) = STACK[0xBAEF];
  LOBYTE(STACK[0xBAEF]) = v48;
  v49 = *(&STACK[0xBAE8] + v14);
  *(&STACK[0xBAE8] + v14) = STACK[0xBAEE];
  LOBYTE(STACK[0xBAEE]) = v49;
  v50 = *(&STACK[0xBAE8] + v15);
  *(&STACK[0xBAE8] + v15) = STACK[0xBAED];
  LOBYTE(STACK[0xBAED]) = v50;
  v51 = STACK[0xBAE8];
  LOBYTE(STACK[0xBAE8]) = STACK[0xBAEC];
  LOBYTE(STACK[0xBAEC]) = v51;
  v52 = *(&STACK[0xBAE8] + v20);
  *(&STACK[0xBAE8] + v20) = STACK[0xBAEB];
  LOBYTE(STACK[0xBAEB]) = v52;
  v53 = STACK[0xBAE9];
  LOBYTE(STACK[0xBAEA]) = STACK[0xBAE8];
  LOWORD(STACK[0xBAE8]) = v53;
  STACK[0xBAE8] = vmla_s32(v22, STACK[0xBAE8], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBAE8] ^ STACK[0xBAE0];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100429968()
{
  v5 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  STACK[0x10EF8] = v2;
  STACK[0x10EE8] = v1;
  STACK[0x10EE0] = v4;
  LODWORD(STACK[0x10ED8]) = v5 + 532465831 + (((v0 ^ 0xC84D86F) - 210032751) ^ ((v0 ^ 0xF98A27B1) + 108386383) ^ ((v0 ^ 0x1CDBBF16 ^ (419 * ((v3 - 190332760) & 0xB58AF7B ^ 0x8B68))) - 484128975));
  LODWORD(STACK[0x10EDC]) = v3 - v5 + 8626;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0xD720)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EF0];
  LODWORD(STACK[0xAE54]) = STACK[0x10EF0];
  return (*(v6 + 8 * ((76 * (v8 != -371865839)) ^ v3)))(v7);
}

uint64_t sub_100429A90()
{
  v2 = ((((v0 ^ 0x134B) - 410452292) ^ v1) + 410448353) ^ ((v1 ^ 0x3848AC2E) - 944286766) ^ ((v1 ^ 0x3614EE1B ^ ((v0 - 5103) | 0x8302)) - 907306272);
  v3 = LODWORD(STACK[0x3908]) - 1892049299;
  v2 += 2031052154;
  v4 = (v3 < 0x8F399E69) ^ (v2 < 0x8F399E69);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x8F399E69;
  }

  return (*(STACK[0xF18] + 8 * ((118 * v5) ^ v0)))();
}

uint64_t sub_100429B6C()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762667617) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x9ADF0F78) - ((&STACK[0x10000] + 3800) | 0x6520F087) + 1696657543) ^ 0xABDEC25C));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6949)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((v0 - 6325) ^ 0x8B3B) || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * (327 * (v0 ^ 0xA39D) - 35630)) ^ v0)))(v2);
}

uint64_t sub_100429CCC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 9947)))(v2);
}

uint64_t sub_100429CF8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xF10] - 14567;
  *STACK[0x5B98] = v2;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, *(STACK[0x65A0] + 24));
}

uint64_t sub_100429D94()
{
  v2 = v1 - 17081;
  v3 = *(v0 - 0x7E666516A39B34A6);
  v4 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0xD28A2F57) + (~(&STACK[0x10000] + 3800) | 0x2D75D0A8)) ^ 0x45511DFD);
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EE8]) = v1 - 17081 - v4 - 416;
  LODWORD(STACK[0x10EEC]) = 824934060 - v4;
  LODWORD(STACK[0x10EDC]) = -1826624832 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 27499)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x6A6C]) = STACK[0x10ED8];
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_10042A030()
{
  v3 = v1 + 779131570;
  v4 = ((((v0 + 579846685) ^ v2) - 579895108) ^ ((v2 ^ 0x4FFD2720) - 1341990688) ^ ((v2 ^ 0x84B89F75) + 2068271433 + 7 * (v0 ^ 0xBF09))) + 407265711;
  v5 = (v3 < 0x2E709A9E) ^ (v4 < 0x2E709A9E);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0x2E709A9E;
  }

  return (*(STACK[0xF18] + 8 * ((237 * v6) ^ v0)))();
}

uint64_t sub_10042A108()
{
  v1 = *(STACK[0x60D8] + 8);
  STACK[0x2040] = STACK[0x60D8] + 8;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762664621) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xC50CE557) - ((&STACK[0x10000] + 3800) | 0x3AF31AA8) + 989010600) ^ 0xF40D2873));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 12925)))(&STACK[0x10ED8]);
  STACK[0x4788] = STACK[0x9110];
  STACK[0x2830] = STACK[0x6858];
  LODWORD(STACK[0x6384]) = 1260102635;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10042A270()
{
  v0 = STACK[0xF10] - 14431;
  v1 = *(*(&off_1010A0B50 + (STACK[0xF10] - 35008)) - 10283275);
  v2 = STACK[0xF10] - 31136;
  LOWORD(STACK[0x5226]) = *v1;
  LODWORD(STACK[0x5228]) = *(v1 + 2);
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0x5442) + v2)))();
}

uint64_t sub_10042A380@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  STACK[0x4480] = v7;
  STACK[0x19B8] = a2;
  STACK[0x5148] = v9;
  LODWORD(STACK[0x2E74]) = v6;
  STACK[0x88D8] = v2;
  LODWORD(STACK[0x35BC]) = v8;
  *(a1 + 168) = v3;
  STACK[0x41F0] = v4;
  v10 = STACK[0x7690];
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  *(a1 + 40) = v11;
  STACK[0x5C00] = (v11 + 576);
  STACK[0x9618] = (v11 + 624);
  STACK[0x33F8] = (v11 + 696);
  STACK[0x7690] = v10 + ((v5 - 289606212) ^ 0xEEBD3659 ^ (v5 - 289606212) & 0x1142FE9F ^ 0x3429);
  LODWORD(STACK[0x5584]) = -371865839;
  if (v9)
  {
    v12 = v2 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  return (*(STACK[0xF18] + 8 * ((29 * v13) ^ v5)))();
}

uint64_t sub_10042A454()
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 35149) ^ 0x12EF)))();
}

uint64_t sub_10042A6A0(uint64_t a1, uint64_t a2)
{
  STACK[0x1BF8] = STACK[0x97E8];
  STACK[0x9148] = v2;
  STACK[0x7B98] = 0;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) * (((v3 + 706356404) & 0xD5E559D8) - 2490)) ^ (v3 + 13349))))(a1, a2, 371891400);
}

uint64_t sub_10042A714@<X0>(unint64_t a1@<X8>)
{
  v3 = v2 - 29911;
  v4 = ((v1 ^ 0x5CCCA92628023410) - 0x5CCCA92628023410) ^ ((v1 ^ 0xFC9E03892351B40FLL) + 0x361FC76DCAE4BF1) ^ (((11 * (v3 ^ 0x449Au)) ^ ((v3 + 29911) + 0x5FAD55501D78FF69)) + (v1 ^ 0xA052AAAFE286470ELL));
  STACK[0xADB0] = v4 + 0x2F70F50D997BA0AFLL;
  STACK[0xADB8] = a1;
  return (*(STACK[0xF18] + 8 * ((54468 * (v4 - a1 + 3923101447u < 0xFFFFFFFFFFFFFFF6)) ^ v3)))();
}

uint64_t sub_10042A820()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x92E4]) = (((LODWORD(STACK[0xA060]) ^ LODWORD(STACK[0x98D4]) ^ 0x4C8B646F) + 1599260186) ^ ((LODWORD(STACK[0xA060]) ^ LODWORD(STACK[0x98D4]) ^ 0xBB748888) - 1465046273) ^ ((LODWORD(STACK[0xA060]) ^ LODWORD(STACK[0x98D4]) ^ 0xF7FFECE7) - 467251566)) - (((LODWORD(STACK[0xA068]) ^ (((STACK[0xF10] - 1105083772) & 0x41DDFFEE) + 1376954257)) - 1376974143) ^ ((LODWORD(STACK[0xA068]) ^ 0x2B4BA885) - 726378629) ^ ((LODWORD(STACK[0xA068]) ^ 0x908C9AAB) + 1869833557)) + 1554246562;
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_10042A9C0(int a1)
{
  LODWORD(STACK[0xED0]) = a1;
  v4 = v3 - STACK[0xEB0] - (v2 ^ 0x935E84BE ^ v1 ^ 0x37FD);
  v9 = STACK[0xEA0] > 0xF && v4 > 0xF && STACK[0xE90] > 0xF && STACK[0xE80] > 0xF && STACK[0xE70] > 0xF;
  return (*(STACK[0xF18] + 8 * ((v9 | (16 * v9)) ^ v1)))();
}

uint64_t sub_10042AAC8()
{
  STACK[0xB008] = *(v1 + 8);
  v3 = *(v1 + 16) ^ 0x5A2A6CC2;
  LODWORD(STACK[0xB014]) = v3;
  STACK[0xB018] = &STACK[0xC4D0] + v0;
  STACK[0x7690] = v0 + 16;
  return (*(STACK[0xF18] + 8 * ((109 * (((((v2 - 120) ^ 0x30) - 94) ^ (v3 < 0x18)) & 1)) ^ (v2 + 1416))))();
}

uint64_t sub_10042AB48()
{
  v1 = STACK[0x28D8] - (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL);
  STACK[0x47B8] = v1;
  LODWORD(STACK[0x8EC4]) = v1;
  v2 = STACK[0xF18];
  STACK[0x7A80] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1CB1 ^ (10910 * ((v0 - 1738836211) > 0xDA2A0C12)))))();
}

uint64_t sub_10042ADCC()
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * v1))();
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10042AE78@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x33BDFFFF;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 & 0x33BDFFFF ^ 0xF453u)))();
  *(v1 + 16) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10042AEB0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (v0 + 689));
  return (*(v1 + 8 * (v0 + 689 + ((v0 + 689) ^ 0x6480) - 21381)))();
}

uint64_t sub_10042B108()
{
  STACK[0x7C70] = *(v0 + 16);
  LODWORD(STACK[0xA34C]) = *(v0 + 24);
  return (*(STACK[0xF18] + 8 * ((v1 + 4615) ^ v1)))();
}

uint64_t sub_10042B1D8@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0xF2DA;
  v2 = ((a1 ^ 0xF2DA) - 30416) | 0x882A;
  STACK[0x7450] = STACK[0x8CD0] - ((((a1 ^ 0xF2DAu) + 4442) ^ 0x130272185FDBAFB7) & (2 * STACK[0x8CD0])) + 0x981390C2FED9246;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = ((a1 ^ 0xF2DA) - 1762656850) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x42F37FDA) - (&STACK[0x10000] + 3800) + 1585856531) ^ 0x907872C9));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4182)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v5 = 1;
  }

  else
  {
    v5 = *STACK[0x940] == 0;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((v6 * (v2 - 35612)) ^ v1)))(v4);
}

uint64_t sub_10042B2EC@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0xE60] + (v1 - 2070959791) % 0x480u);
  v3 = *(STACK[0xE60] + (v1 - 2070959999) % (a1 - 15999));
  v4 = *(STACK[0xE60] + (v1 - 2070959854) % 0x480u);
  v5 = v3 & 0xFC ^ 0xB1;
  v6 = v4 & 0x6E ^ 0xEA;
  v7 = v4 ^ (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * v6) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6));
  v8 = (v2 & 0x9A | 0x61) ^ v2 & 0xC6;
  v9 = v2 ^ (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ 0x4A;
  v10 = v3 & 0xDE ^ 0xA2;
  v11 = v3 ^ 0x18;
  v12 = (v7 ^ 0x91) & (v3 ^ (2 * ((v3 ^ 0x1A) & (2 * ((v3 ^ 0x1A) & (2 * ((v3 ^ 0x1A) & (2 * ((v3 ^ 0x1A) & (2 * (((2 * (v5 ^ v3 & 0x66)) ^ 4) & (v3 ^ 0x1A) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ 0xCD) ^ v7 & 0xCE;
  v13 = v4 & 0xC6 ^ 0x36;
  v14 = v4 ^ (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * ((v4 ^ 0x18) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v15 = (v14 ^ 0xC6) & (v3 ^ (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xEF) ^ v14 & 0x31;
  v16 = (v9 & 0x17 ^ v12 & 0x16 ^ (v12 ^ 0x68) & v9 ^ 0x2C) & ~v15 | v15 & 0xC5;
  v17 = *(STACK[0xE60] + (v1 - 2070959780) % 0x480u) + (((v16 ^ 0xE9) + 8) ^ ((v16 ^ 0x55) - 68) ^ ((v16 ^ 0x86) + 105)) + 56;
  v18 = v17 & 0x35 ^ 0xD4;
  v19 = v1 + STACK[0xE60];
  v20 = *(v19 - 2070959777);
  v21 = (~v20 & 0x66 | (8 * ((((v20 & (2 * (~v20 & 0x66))) | ~v20 & 0x66u) >> 2) & 3))) ^ (v20 & (2 * ((v20 & (2 * (~v20 & 0x66))) | ~v20 & 0x66)));
  v22 = (~v20 & 0x66 | (8 * ((v21 >> 2) & 3))) ^ v20 & (2 * v21);
  v23 = (~v20 & 0x66 | (8 * ((v22 >> 2) & 3))) ^ v20 & (2 * v22);
  v24 = v17 ^ v20 ^ (2 * ((~v20 & 0x66 | (8 * ((v23 >> 2) & 3))) ^ v20 & (2 * v23) ^ v18 ^ (v17 ^ 0xC) & (2 * ((v17 ^ 0xC) & (2 * ((v17 ^ 0xC) & (2 * ((v17 ^ 0xC) & (2 * ((v17 ^ 0xC) & (2 * (v17 & (2 * v17) & 0x1A ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))));
  *(v19 - 2070959777) = (((v24 ^ 0x1E) - 36) ^ ((v24 ^ 0x60) - 90) ^ ((v24 ^ 0x2D) - 23)) - 49;
  return (*(STACK[0xF18] + 8 * ((63800 * (v1 == 2070960928)) ^ a1)))();
}

uint64_t sub_10042B698()
{
  LODWORD(STACK[0x2098]) = -371865803;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9166)))(36);
  STACK[0x15C0] = v2;
  STACK[0x62F8] = v2;
  return (*(v1 + 8 * ((2046 * (((v0 + 61) ^ (v2 == 0)) & 1)) ^ v0)))();
}

uint64_t sub_10042B730()
{
  v1 = v0 - 28413;
  v2 = v0 - 9132;
  v3 = STACK[0x61A8];
  v4 = STACK[0x5878];
  v5 = STACK[0x5760];
  v6 = STACK[0xFA0];
  v7 = STACK[0x5260] ^ 0x31A344662EEAAE20;
  v8 = 353670337 * (&STACK[0x10ED8] ^ 0xF091B68BB421F83DLL);
  LODWORD(STACK[0x10EF0]) = 1923759940 - v8;
  STACK[0x10EF8] = v5;
  STACK[0x10F00] = v6;
  LODWORD(STACK[0x10ED8]) = (v1 + 16016) ^ v8;
  STACK[0x10EE8] = v7 - v8;
  STACK[0x10EE0] = v4;
  STACK[0x10F08] = v3 + 4;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD11D)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * (((LODWORD(STACK[0x10EF4]) == ((10 * (v1 ^ 0x12EF)) ^ 0xE9D5533B)) * (v2 ^ 0x3C11)) ^ v1)))(v10);
}

uint64_t sub_10042B844()
{
  v0 = (STACK[0xF10] - 33459) | 0x1406;
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x3FF4] & 0xFFFFFFDE;
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x56BC]) = (v0 - 2105315550) ^ v2;
  STACK[0x2E90] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = STACK[0x2DAC];
  LODWORD(STACK[0x2CE8]) = 2045206471;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10042B8EC()
{
  if (STACK[0x35F0])
  {
    v1 = LODWORD(STACK[0x5B4C]) == v0 - 371899876 + 19 * (v0 ^ 0x82B7);
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((2 * v2) | (4 * v2) | v0)))();
}

uint64_t sub_10042B948(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xED0];
  v3 = *(STACK[0xF18] + 8 * (LODWORD(STACK[0xED0]) - 24237));
  LODWORD(STACK[0xEC0]) = LODWORD(STACK[0xED0]) - 19928;
  return v3(49, a2, (v2 - 23071), 3001000364, 494700156, 523567104, 1966741261, 3246347560);
}

uint64_t sub_10042BA24()
{
  LODWORD(STACK[0x7A98]) = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762645231) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xF08A30B0) - ((&STACK[0x10000] + 3800) & 0xF08A30B0)) ^ 0xC18BFD94));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 32315)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*STACK[0x970] < 1) * ((v0 - 1546411393) ^ 0xA3D3EE17)) ^ v0)))(v3);
}

uint64_t sub_10042BB0C()
{
  v1 = STACK[0xF18];
  STACK[0x3450] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x57D) + v0)))();
}

uint64_t sub_10042BC48@<X0>(int a1@<W8>)
{
  v3 = (a1 + 22651003) & 0xFEA5FFE9;
  v4 = (a1 - 23163) | 0x4009;
  v5 = a1 - 22422;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))(v1);
  return (*(v6 + 8 * ((((v3 + 17714) ^ v4) * (v2 == 0)) ^ v5)))(v7);
}

uint64_t sub_10042BE34()
{
  v0 = STACK[0xF10] - 31616;
  v1 = STACK[0xF18];
  STACK[0x91E0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((5 * (v0 ^ 0x9C4) + 276) ^ v0)))();
}

uint64_t sub_10042BEE4(unsigned int a1, int a2, int a3, int a4)
{
  v15 = *(v12 + ((((a4 ^ v11) ^ 0xD4) * v9) & 0x1FF ^ 0x100));
  v16 = v15 & 0x1E ^ 0xF4;
  v17 = (v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xF8;
  *(v6 + (*(v10 + 4 * ((a4 ^ 0xB7B65FB1) * v8 + 17205565 - (((((a4 ^ 0xB7B65FB1) * v8 + 17205565) * a1) >> 32) >> 13) * a2)) ^ 0x8B6B2AE6) + 8464) = *(v4 + 2705 * v17 + 7693020 - (((18512791 * (2705 * v17 + 7693020)) >> 32) >> 4) * v7) ^ 0xC3;
  v13 = (((a4 ^ 0xB903C95C) + 1190934180) ^ ((a4 ^ 0x4B483A2F) - 1263024687) ^ (((v5 + 2123915284) & 0x81679FDD) + (a4 ^ 0x45FDAF00) - 1174293129)) - 715835852;
  v14 = ((v13 ^ 0xB50F197C) + 1466842948) ^ v13 ^ ((v13 ^ 0x6C5344BD) - 1909300605) ^ ((v13 ^ 0xB33D4F7E) + 1365010754) ^ ((v13 ^ 0x77FFCB7F) - 1784746687);
  return (*(STACK[0xF18] + 8 * ((9497 * ((((v14 ^ 0xA21F0087) - 137856308) ^ ((v14 ^ 0x26E04895) + 1932997338) ^ ((v14 ^ 0x996191D2) - 860427361)) + a3 < 0x100)) ^ v5)))();
}

uint64_t sub_10042C184@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x58E4]) = v1;
  LODWORD(STACK[0x52C4]) = v4;
  STACK[0x6CB0] = a1;
  STACK[0x88F0] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v2 - 6763) ^ 0xDEDD) - 21977)) ^ v2)))();
}

uint64_t sub_10042C2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  v5 = STACK[0xF10] - 34150;
  LODWORD(STACK[0xA060]) = STACK[0x98D4];
  v6 = *(STACK[0x80C8] + 32) + 1513094783;
  v7 = (v6 ^ 0x11C5B97A) & (2 * (v6 & (v3 ^ 0xA5D08A47))) ^ v6 & (v3 ^ 0xA5D08A47);
  v8 = ((2 * (v6 ^ 0x53E5B90A)) ^ 0xEC6B70EC) & (v6 ^ 0x53E5B90A) ^ (2 * (v6 ^ 0x53E5B90A)) & 0xF635B876;
  LODWORD(v3) = v8 ^ 0x12148812;
  v9 = (v8 ^ 0xA4148060) & (4 * v7) ^ v7;
  v10 = ((4 * v3) ^ 0xD8D6E1D8) & v3 ^ (4 * v3) & 0xF635B870;
  v11 = (v10 ^ 0xD014A040) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x26211826)) ^ 0x635B8760) & (v10 ^ 0x26211826) ^ (16 * (v10 ^ 0x26211826)) & 0xF635B860;
  v13 = v11 ^ 0xF635B876 ^ (v12 ^ 0x62118000) & (v11 << 8);
  v14 = v6 ^ (2 * ((v13 << 16) & 0x76350000 ^ v13 ^ ((v13 << 16) ^ 0x38760000) & (((v12 ^ 0x94243816) << 8) & 0x76350000 ^ 0x42050000 ^ (((v12 ^ 0x94243816) << 8) ^ 0x35B80000) & (v12 ^ 0x94243816))));
  LODWORD(STACK[0xA06C]) = v14 ^ 0x9E7A4C63;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x1DE3)))(a1, a2, a3, v4, ((0x90 % (v14 ^ 0x29D37190)) ^ 0xC7FEFFFF) + 2 * (0x90 % (v14 ^ 0x29D37190)) + 2017432140);
}

uint64_t sub_10042C4B0()
{
  v1 = STACK[0xF10];
  STACK[0x9F58] = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 24323)))();
}

uint64_t sub_10042C53C()
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((13597 * (((STACK[0xF10] - 35136) ^ 0x75FB82E5) < 0xD887E71)) ^ (STACK[0xF10] - 30778))))();
}

uint64_t sub_10042C6F4@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -390032770;
  return (*(STACK[0xF18] + 8 * (a1 - 30507)))();
}

uint64_t sub_10042C724@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = *(a1 + (v2 - 677796007) % 0x13Fu);
  v4 = (v2 - 22682 - 319 * ((((39651 * (v2 - 22682)) >> 16) + (((v2 - 22682 - ((39651 * (v2 - 22682)) >> 16)) & 0xFFFE) >> 1)) >> 8));
  v5 = ((v3 >> 5) | (8 * v3)) ^ *(a1 + v4);
  v6 = *(a1 + (v2 - 677796051) % (a2 - 30711));
  v7 = *(a1 + (v2 - 677796149) % 0x13Fu);
  v8 = (v7 >> 1) | (v7 << 7);
  v9 = (((v5 ^ 0xFFFFFFD4) + 54) ^ ((v5 ^ 0xD) - 19) ^ ((v5 ^ 0x7C) - 98)) + (((((v6 >> 3) | (32 * v6)) ^ 0xFFFFFFBF) - 125) ^ ((((v6 >> 3) | (32 * v6)) ^ 0x48) + 118) ^ ((((v6 >> 3) | (32 * v6)) ^ 0x1C) + 34)) - (((v8 ^ 0x71) + 59) ^ ((v8 ^ 0xFFFFFF92) - 38) ^ ((v8 ^ 0x4C) + 8)) + 2;
  LOBYTE(v8) = v9 & 0xF3 ^ 0x1E;
  v10 = v9 ^ 0x46;
  *(a1 + v4) = v9 ^ (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * ((v9 ^ 6) & (2 * v9) & 0xE ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ 0xAC;
  return (*(STACK[0xF18] + 8 * ((52909 * (v2 == 677797269)) ^ a2)))();
}

uint64_t sub_10042C9A0()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3C5B ^ (5 * (v0 ^ 0xD4D)))))();
}

uint64_t sub_10042CA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (STACK[0xF10] - 34873) | 0x500C;
  v8 = STACK[0xF10] - 31385;
  v9 = STACK[0xF18];
  STACK[0x8D40] = *(STACK[0xF18] + 8 * v8);
  return (*(v9 + 8 * ((v7 - 1311) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10042CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  LODWORD(STACK[0xDF0]) = v8 + 7;
  v10 = ((a6 << 8) | BYTE2(v7)) + 1403335582;
  if ((v10 + v9 + 1765284392) >= 0xFFFFFFE0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -1765284393 - v9;
  }

  LODWORD(STACK[0xE30]) = v11;
  return (*(STACK[0xF18] + 8 * ((109 * (v9 + ((a7 - 44989) | 0x823A) - 1090132047 == 36250812)) ^ a7)))();
}

uint64_t sub_10042CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0xF18];
  LODWORD(STACK[0xED0]) = v5 - 19818;
  v7 = *(v6 + 8 * (v5 - 19818));
  LODWORD(STACK[0xEC0]) = v5 ^ 0x8659;
  LODWORD(STACK[0xE80]) = v5 - 31746;
  return v7(1556248975, STACK[0xEA0], a3, a5, STACK[0xD90], STACK[0xDA0], STACK[0xEB0]);
}

uint64_t sub_10042CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (((v10 ^ 0x89B03F3C) + 976192831) ^ v10 ^ ((v10 ^ 0x3E86EC92) - 1927719279) ^ ((v10 ^ 0x84AB69AC) + 926208943) ^ ((v10 ^ 0x7FFDFFFF) - 865985022 + ((v6 - 17346) | 0x14))) & 0xFFFFFFFB;
  v13 = ((v12 ^ 0x9807B38A) + 2027575520) ^ ((v12 ^ 0xD5F72F51) + 891995141) ^ ((v12 ^ 0x190D926) - 515034508);
  v14 = v13 - 1616734380;
  v13 += 1527857309;
  v15 = (((v9 ^ 0xEC3D008) - 247713800) ^ ((v9 ^ 0x805253A3) + 2142088285) ^ ((v9 ^ 0x674444BA) - 1732527290)) - 240863657;
  v16 = v13 < 0x7CEEF46;
  v17 = v13 > v15;
  if (v15 < 0x7CEEF46 != v16)
  {
    v17 = v16;
  }

  if (v17)
  {
    v11 = v8;
  }

  if (v11 == -371865839)
  {
    v18 = v14;
  }

  else
  {
    v18 = v10;
  }

  v19 = (((v9 ^ 0x3561C832) - 895600690) ^ ((v9 ^ 0x8D638F98) + 1922855016) ^ ((v9 ^ 0x51D780BB) - 1373077691)) - 572354418;
  v20 = (v19 < 0xF40CC97D) ^ (v18 - 1481866352 < 0xF40CC97D);
  v21 = v18 - 1481866352 > v19;
  if (v20)
  {
    v21 = v18 - 1481866352 < 0xF40CC97D;
  }

  if (v21)
  {
    v11 = v8;
  }

  v22 = v7 + v18 - 1281377789;
  if (v11 == -371865839)
  {
    v18 += 16;
  }

  else
  {
    v22 = 0;
  }

  STACK[0x8E48] = v22;
  LODWORD(STACK[0x8B98]) = (((v9 ^ 0xAED8D871) + 1361520527) ^ ((v9 ^ 0xDFC468AB) + 540776277) ^ ((v9 ^ 0x98C977CB) + 1731627061)) - v18 + 909511930;
  v23 = (((v9 ^ 0xAB2F082C) + 1422981076) ^ ((v9 ^ 0xDACE1059) + 624029607) ^ ((v9 ^ 0x9834DF64) + 1741365404)) + 909511930;
  if ((((v9 ^ 0xCA42A414) + 901602284) ^ ((v9 ^ 0x313E828) - 51636264) ^ ((v9 ^ 0x20848B2D) - 545557293)) - 371865839 >= 0x14)
  {
    v24 = v11;
  }

  else
  {
    v24 = v8;
  }

  v25 = v7 + v18 - 1281377789;
  if (v24 == -371865839)
  {
    v26 = v23;
  }

  else
  {
    v25 = 0;
    v26 = v18;
  }

  STACK[0x8250] = v25;
  v27 = (((*(a6 + 2588) ^ 0x27631C01) - 660806657) ^ ((*(a6 + 2588) ^ 0x197DB060) - 427667552) ^ ((*(a6 + 2588) ^ 0xD7CB6B70) + 674534544)) - 1973247833;
  v28 = (v27 < 0xA08CD996) ^ (v26 + 1412207533 < 0xA08CD996);
  v29 = v26 + 1412207533 > v27;
  if (v28)
  {
    v29 = v26 + 1412207533 < 0xA08CD996;
  }

  if (v29)
  {
    v30 = v8;
  }

  else
  {
    v30 = v24;
  }

  LODWORD(STACK[0x5D08]) = v30;
  v31 = *(a4 + 4400) + v26 - 1281377789;
  if (v30 != -371865839)
  {
    v31 = 0;
  }

  STACK[0x47B0] = v31;
  return (*(STACK[0xF18] + 8 * ((54360 * (v30 == -371865839)) ^ v6)))();
}

uint64_t sub_10042D184()
{
  LODWORD(STACK[0x11DC]) = -347583202;
  STACK[0xED0] = STACK[0xBA68];
  v4 = (&STACK[0xC4D0] + v1);
  STACK[0x7690] = v0 - 8448;
  v5 = STACK[0xF18];
  v6 = *(STACK[0xF18] + 8 * (v3 ^ 0x41FA));
  v7 = *(&off_1010A0B50 + (v3 ^ 0x8DBA)) - 1686736087;
  STACK[0xEB0] = &STACK[0xC4D0] + v1 + 632;
  v8 = v6(v7);
  v4[47] = 0x8779455107D5AA5CLL;
  v4[48] = 0x6DB2A88E2F1E24C9;
  v4[49] = 0xFD03B85980AC4085;
  v4[50] = 0x71652A31BEF8863CLL;
  v4[51] = 0x8C162ECD42B18877;
  v4[52] = 0xF0ED3F25DCFC6EEALL;
  v4[53] = 0x87A1368E7DAE4612;
  v4[54] = 0xB2CA06FC8DC166DCLL;
  v4[55] = 0xB835B3548B4F908ALL;
  v4[56] = 0x7249CD6C2D1F4B03;
  v4[57] = 0x44195CAE87ECD243;
  v4[58] = 0x769C236121E21003;
  v4[59] = 0x1C26E374EB48116DLL;
  v4[60] = 0xA0F8C211930F983CLL;
  v4[61] = 0x4DE234B9E4927A38;
  v4[62] = 0xA25102FDF6CEAFDDLL;
  v4[63] = 0x9C6C6675F8A8FF45;
  v4[64] = 0x7A89019217F60AF5;
  v4[65] = 0x400C8C468BC929C7;
  v4[66] = 0x280DA5C2D30DC323;
  v4[67] = 0x37159A8D94CA8226;
  v4[68] = 0xAA699A0B03DE9D62;
  v4[69] = 0xDC5E2F3F4DA60516;
  v4[70] = 0xB865CD5B94D94004;
  v4[71] = 0x175E2F6D95577D75;
  v4[72] = 0xAD790575699501CLL;
  v4[73] = 0x3474A83F0B465222;
  v4[74] = 0x468CFA9D5708E769;
  v4[75] = 0x49C3EF55F5180DDCLL;
  v4[76] = 0x6F88966A92AC3AFALL;
  v4[77] = 0xEC39AD08B1EEEA09;
  STACK[0xEC0] = v4;
  v4[78] = 0x7A608B5E97F59741;
  return (*(v5 + 8 * ((14 * ((((v2 ^ 0x317FC571) - 830457201) ^ ((v2 ^ 0xEAA4815A) + 358317734) ^ (((v3 - 1100131138) & 0x4192A9E7 ^ 0xCF6C7F34) + (v2 ^ 0x3093092B))) - 347583292 < 0xFFFFFFC4)) ^ (v3 + 2746))))(v8);
}

uint64_t sub_10042D4F8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x5D18] = a1;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * (((~(&STACK[0x10000] + 3800) & 0x48765F64) - (~(&STACK[0x10000] + 3800) | 0x48765F65)) ^ 0xAE5044AA) + 296773567;
  STACK[0x10ED8] = STACK[0x800];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 36735)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10042D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == a8 - 371876120)
  {
    v9 = LODWORD(STACK[0x27DC]);
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * a8))(a1, a2, v9);
}

uint64_t sub_10042D634()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762642296) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xDDCA5723) - ((&STACK[0x10000] + 3800) | 0x2235A8DC) + 573941980) ^ 0xECCB9A07));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8BBE)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * ((v0 - 1759933708) & 0x68E6BF3F ^ ((v0 - 13004) | 0x8004) ^ 0xFAD3)) ^ v0)))(v2);
}

uint64_t sub_10042D838()
{
  LODWORD(STACK[0x1624]) = 0;
  LODWORD(STACK[0x56D4]) = 371891406;
  return (*(STACK[0xF18] + 8 * (v0 | 0x4000)))();
}

uint64_t sub_10042D874()
{
  STACK[0x3508] = v1;
  LODWORD(STACK[0x503C]) = -2133750669;
  return (*(STACK[0xF18] + 8 * (v0 - 292)))();
}

uint64_t sub_10042D8B4()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 1823510591) & 0x6CB0A5FF;
  v2 = STACK[0xF10] + 10596;
  v3 = STACK[0x39F8];
  v4 = STACK[0x78B0];
  *(v4 + 112) = STACK[0x39F8];
  STACK[0x10ED8] = &STACK[0x10AC];
  STACK[0x10EF0] = v3;
  STACK[0x10EE8] = v4 + 36;
  LODWORD(STACK[0x10EE0]) = (v0 - 22875) ^ (906386353 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x1199DBB8) + 295295933) ^ 0x20981699));
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x406E)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10EE4]) != -371865839) * (v1 ^ 0xA0D3)) ^ v2)))(v6);
}

uint64_t sub_10042DC14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (v9 - 515962982) & 0x1EC0E5BF;
  LODWORD(STACK[0xE90]) = v10;
  v11 = 1012831759 * ((2 * (((&STACK[0x10000] + 3800) ^ 0x3D5432BC) & 0x6DA294D4) - ((&STACK[0x10000] + 3800) ^ 0x3D5432BC) + 308112169) ^ 0x3F9A4F1F);
  LODWORD(STACK[0x10F0C]) = ((((v8 ^ 0x37586EDA ^ v9 ^ 0xD370) - 928572897) ^ ((v8 ^ 0xD1CE9430) + 774990800) ^ ((v8 ^ 0xF43B6C0) - 256113765 + v10)) - 129675808) ^ v11;
  STACK[0x10EF0] = a1;
  STACK[0x10EF8] = &STACK[0x7D74];
  STACK[0x10ED8] = &STACK[0x376C];
  STACK[0x10EE0] = &STACK[0x39A8];
  LODWORD(STACK[0x10F08]) = v9 - v11 + 26708;
  STACK[0x10F00] = &STACK[0x5CBC];
  LODWORD(STACK[0xEB0]) = v8;
  v12 = STACK[0xF18];
  v13 = *(STACK[0xF18] + 8 * (v9 + 29529));
  STACK[0xEC0] = a1;
  LODWORD(STACK[0xEA0]) = v7;
  v13(&STACK[0x10ED8]);
  return (*(v12 + 8 * ((50293 * (LODWORD(STACK[0x10EE8]) == -371865839)) ^ v9)))(STACK[0xEC0], a2, a3, a4, a5, a6, a7, 4294957768);
}

uint64_t sub_10042DF20()
{
  v1 = STACK[0x1188];
  LODWORD(STACK[0x10EE8]) = v0 + 906386353 * ((((&STACK[0x10000] + 3800) | 0x9AD2EAEC) - ((&STACK[0x10000] + 3800) & 0x9AD2EAE8)) ^ 0xABD327C8) + 1884360984;
  STACK[0x10EE0] = &STACK[0xF28] ^ 0x55BFEDB102C44187 ^ (v0 + 11664);
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD3F8)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10042E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 & 0x365126FF;
  v7 = STACK[0x19A0];
  v8 = STACK[0xF18];
  STACK[0x9020] = *(STACK[0xF18] + 8 * v6);
  return (*(v8 + 8 * (((144 * (v6 ^ 0x33)) ^ 0x4B8) + v6)))(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_10042E184()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3915)))();
}

uint64_t sub_10042E3BC@<X0>(int a1@<W8>)
{
  *(v1 - 0x20DE4F5147E73171) = -371865839;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (a1 ^ 0x9D70 ^ (6662 * (a1 ^ 0xBBA)))))();
}

uint64_t sub_10042E538()
{
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xC6E940D0) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x3916BF28)) ^ 0xAB7F6F2C);
  LODWORD(STACK[0x10ED8]) = (((((v1 + 2007799927) & 0x9E7DB77F) + (*(v2 - 0x217E172EFA1E804) ^ 0x9569C72C) + 1788223948) ^ ((*(v2 - 0x217E172EFA1E804) ^ 0xC1D51779) + 1042999431) ^ (((v1 + 371866625) | 0x8829) + (*(v2 - 0x217E172EFA1E804) ^ 0xBD691744) + 1117150593)) - 54746966) ^ v3;
  LODWORD(STACK[0x10EF8]) = v1 - v3 + 371905616;
  STACK[0x10EF0] = v0;
  STACK[0x10F00] = v2 - 0x217E172EFA1E800;
  STACK[0x10EE0] = &STACK[0x4A34];
  STACK[0x10EE8] = &STACK[0x4D54];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 371917747)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((31518 * (((LODWORD(STACK[0x10F08]) - v1) | (v1 - LODWORD(STACK[0x10F08]))) >= 0)) ^ (v1 + 371875520))))(v5);
}

uint64_t sub_10042E7DC@<X0>(int a1@<W8>)
{
  STACK[0x5C50] = 0x3AE1413A0D5C96D2;
  LODWORD(STACK[0x1374]) = 839017194;
  return (*(STACK[0xF18] + 8 * (a1 - 10247)))();
}

uint64_t sub_10042E8DC()
{
  v0 = LODWORD(STACK[0xCE0]) + 333516051;
  v1 = ((((LODWORD(STACK[0xE30]) - v0) | (v0 - LODWORD(STACK[0xE30]))) >> (((LOBYTE(STACK[0xCE0]) - 23) | 0x11) - 22)) ^ (LOBYTE(STACK[0xCE0]) - 23)) & 1;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x13E1E809 ^ (v1 | (16 * v1)))))();
}

uint64_t sub_10042E940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(STACK[0xF18] + 8 * (v5 - 4398));
  LODWORD(STACK[0x58D4]) = 417548132;
  return v6(3705736272, a2, 554569861, a4, a5, 3457205504, 1309671424, 1036910592);
}

uint64_t sub_10042E9E4()
{
  v1 = STACK[0xF10] - 29772;
  v2 = STACK[0xF10] - 33736;
  LODWORD(STACK[0xA24C]) = v0;
  *(STACK[0x28B0] - 0x10A99C80114D144BLL) = *STACK[0x69A0];
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v1 + v2 - 1911)))();
}

uint64_t sub_10042EAB0()
{
  v2 = STACK[0x7228];
  LODWORD(STACK[0x6AD8]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) | (4 * (v2 != 0))) ^ (v0 - 11185))))();
}

uint64_t sub_10042EBDC@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x28CDBCA9;
  v3 = (v2 - 3900) | 0x8B28;
  *((v1 - 1539007521) + STACK[0x9E38] + STACK[0x9DC0] - 0x705456CA445C3F5) = *(STACK[0xACE0] + (v1 - 1539007521)) ^ 0x5F;
  v4 = *(STACK[0xF18] + 8 * v2);
  LODWORD(STACK[0xEB0]) = v1 - 35644 + v3;
  return v4();
}

uint64_t sub_10042ED34()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x98F4)))(v0);
  *(v1 + 112) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10042ED70()
{
  v1 = STACK[0x2BF8];
  *v1 ^= 0x60u;
  v1[1] ^= 0x2Du;
  v1[2] = ~v1[2];
  v1[3] ^= 0x98u;
  v1[4] ^= 0x6Au;
  v1[5] ^= 0xCCu;
  v1[6] ^= ((v0 + 26) | 0x65) + 101;
  v1[7] ^= ((v0 + 77) | 8) ^ 0x18;
  v1[8] ^= 0xDu;
  v1[9] ^= 0x18u;
  v1[10] ^= 0xE3u;
  v1[11] ^= 0x33u;
  v1[12] ^= 0xEu;
  v2 = v1[14] ^ 0xF6;
  v3 = v1[15] ^ 0x48;
  v1[13] ^= 0x36u;
  v1[14] = v2;
  v1[15] = v3;
  STACK[0x10EE8] = STACK[0x3218];
  LODWORD(STACK[0x10EF0]) = v0 + 906386353 * ((((&STACK[0x10000] + 3800) | 0x8E8484C9) - ((&STACK[0x10000] + 3800) & 0x8E8484C8)) ^ 0xBF8549ED) - 6437;
  STACK[0x10ED8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x7C1D)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EE0];
  *v1 ^= 0x82u;
  v1[1] ^= 0xB2u;
  v1[2] ^= 0xB9u;
  v1[3] ^= 0xD2u;
  v1[4] ^= 0x97u;
  v1[5] ^= 0x11u;
  v1[6] ^= 0xB7u;
  v1[7] ^= 0x27u;
  v1[8] ^= 4u;
  v1[9] ^= 0x16u;
  v1[10] ^= 0x45u;
  v1[11] ^= 0x8Au;
  v1[12] ^= 0x2Eu;
  v1[13] ^= 0xC6u;
  v7 = v1[15] ^ 0xA8;
  v1[14] ^= 0x6Fu;
  LODWORD(STACK[0x2E9C]) = v6;
  v1[15] = v7;
  return (*(v4 + 8 * ((29856 * (v6 == -371865839)) ^ v0)))(v5);
}

uint64_t sub_10042F068(int a1)
{
  v4 = v2 < 0xECA058B7;
  *(v1 + v3) = 95;
  if (v4 == (v3 + 1) > 0xFFFFFFFF135FA748)
  {
    v4 = v3 + 3969931448 < v2;
  }

  return (*(STACK[0xF18] + 8 * ((!v4 * (a1 - 22992)) ^ a1)))();
}

uint64_t sub_10042F0D8()
{
  v1 = v0 & 0xFFFFFFFFBAEEB59FLL;
  v2 = STACK[0xF18];
  STACK[0x9318] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xEAED ^ ((v1 + 4475) | 0x9CCC))))();
}

uint64_t sub_10042F1F4@<X0>(unint64_t a1@<X8>)
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
  STACK[0xBC80] = 0;
  STACK[0xBC88] = a1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBC80] | v12);
  *(&STACK[0xBC80] | v12) = STACK[0xBC87];
  v16 = *(&STACK[0xBC80] | v13);
  *(&STACK[0xBC80] | v13) = STACK[0xBC86];
  v17 = *(&STACK[0xBC80] | v14);
  *(&STACK[0xBC80] | v14) = STACK[0xBC85];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBC87]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBC86]) = v16;
  LOBYTE(STACK[0xBC85]) = v17;
  v22 = STACK[0xBC80];
  LOBYTE(STACK[0xBC80]) = STACK[0xBC84];
  LOBYTE(STACK[0xBC84]) = v22;
  v23 = *(&STACK[0xBC80] | v18);
  *(&STACK[0xBC80] | v18) = STACK[0xBC83];
  LOBYTE(STACK[0xBC83]) = v23;
  v24 = STACK[0xBC81];
  LOBYTE(STACK[0xBC82]) = STACK[0xBC80];
  LOWORD(STACK[0xBC80]) = v24;
  STACK[0xBC80] = vmla_s32(v21, STACK[0xBC80], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBC88];
  v26 = (553300517 * STACK[0xBC88]) ^ v11;
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
  v47 = *(&STACK[0xBC88] + v12);
  *(&STACK[0xBC88] + v12) = STACK[0xBC8F];
  LOBYTE(STACK[0xBC8F]) = v47;
  v48 = *(&STACK[0xBC88] + v13);
  *(&STACK[0xBC88] + v13) = STACK[0xBC8E];
  LOBYTE(STACK[0xBC8E]) = v48;
  v49 = *(&STACK[0xBC88] + v14);
  *(&STACK[0xBC88] + v14) = STACK[0xBC8D];
  LOBYTE(STACK[0xBC8D]) = v49;
  v50 = STACK[0xBC88];
  LOBYTE(STACK[0xBC88]) = STACK[0xBC8C];
  LOBYTE(STACK[0xBC8C]) = v50;
  v51 = *(&STACK[0xBC88] + v18);
  *(&STACK[0xBC88] + v18) = STACK[0xBC8B];
  LOBYTE(STACK[0xBC8B]) = v51;
  v52 = STACK[0xBC89];
  LOBYTE(STACK[0xBC8A]) = STACK[0xBC88];
  LOWORD(STACK[0xBC88]) = v52;
  STACK[0xBC88] = vmla_s32(v21, STACK[0xBC88], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBC88] ^ STACK[0xBC80];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10042F690()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x10EE0]) = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x7AAEA2C0) - (&STACK[0x10000] + 3800) + 89218363) ^ 0xE37746F4) + STACK[0xF10] + 296753103;
  STACK[0x10ED8] = STACK[0x818];
  v1 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (STACK[0x50C8])(v1);
}

uint64_t sub_10042F720(uint64_t a1, int a2)
{
  LODWORD(STACK[0xAB48]) = a2 + 4;
  v5 = (((v4 ^ 0xFD2E3D2) - 265500418 + (v2 ^ 0x1AD7)) ^ ((v4 ^ 0x4C36FE42) - 1278672450) ^ (((((v2 - 1083297976) & 0x40918EDB) - 1439575434) ^ v4) + 1439573375)) - 1435055989;
  if (a2 - 1063190146 > v5 && v5 > 0xC0A10179)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v3;
  }

  LODWORD(STACK[0xAB4C]) = v7;
  return (*(STACK[0xF18] + 8 * ((7454 * (v7 == -371865839)) ^ v2)))();
}

uint64_t sub_10042F884()
{
  v0 = STACK[0xF10] + 7184;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x4DE0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10042F9A4()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x38DC]) = (((LODWORD(STACK[0xA040]) ^ LODWORD(STACK[0x98D4]) ^ 0xFAE5381E) + ((STACK[0xF10] - 1094925197) & 0x4142FDFF ^ 0xC8B658C6)) ^ ((LODWORD(STACK[0xA040]) ^ LODWORD(STACK[0x98D4]) ^ 0xE98D7C1A) - 606187164) ^ ((LODWORD(STACK[0xA040]) ^ LODWORD(STACK[0x98D4]) ^ 0x13684404) + 557541758)) - (((LODWORD(STACK[0xA048]) ^ 0xEC8AE919) + 326440679) ^ ((LODWORD(STACK[0xA048]) ^ 0x6399603E) - 1670996030) ^ ((LODWORD(STACK[0xA048]) ^ 0x66C64E36) - 1724272182)) - 204758715;
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_10042FAB0()
{
  v0 = STACK[0xF10] - 29772;
  v1 = STACK[0xF10] - 33710;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1BDE) + v1)))();
}

uint64_t sub_10042FB58(int a1)
{
  v3 = (((a1 ^ 0x3E6C0DED) - 1047268845) ^ ((a1 ^ 0x24C3F397) - 616821655) ^ ((a1 ^ 0xF37A396B) + 210093717)) + 48375031 + (((v2 ^ 0xC4D98AAE) + 992376146) ^ ((v2 ^ 0x5DC2AAE2) - 1573038818) ^ ((v2 ^ (v1 + 392845646) & 0xE895BEFF ^ 0x70CE57F7) - 1892607837));
  v4 = (v3 ^ 0x94E56D26) & (2 * (v3 & 0xD0C96937)) ^ v3 & 0xD0C96937;
  v5 = ((2 * (v3 ^ 0xB5F76F04)) ^ 0xCA7C0C66) & (v3 ^ 0xB5F76F04) ^ (2 * (v3 ^ 0xB5F76F04)) & 0x653E0632;
  v6 = v5 ^ 0x25020211;
  v7 = (v5 ^ 0x402C0420) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x94F818CC) & v6 ^ (4 * v6) & 0x653E0630;
  v9 = (v8 ^ 0x4380000) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x61060633)) ^ 0x53E06330) & (v8 ^ 0x61060633) ^ (16 * (v8 ^ 0x61060633)) & 0x653E0630;
  v11 = v9 ^ 0x653E0633 ^ (v10 ^ 0x41200200) & (v9 << 8);
  return (*(STACK[0xF18] + 8 * v1))(v3 ^ (2 * ((v11 << 16) & 0x653E0000 ^ v11 ^ ((v11 << 16) ^ 0x6330000) & (((v10 ^ 0x241E0403) << 8) & 0x653E0000 ^ 0x41380000 ^ (((v10 ^ 0x241E0403) << 8) ^ 0x3E060000) & (v10 ^ 0x241E0403)))) ^ 0xFB04A240);
}

uint64_t sub_10042FD7C@<X0>(unsigned int a1@<W8>)
{
  v3 = a1 + 1621 * (v1 ^ 0xB8F4) + ((a1 < (v1 + 69)) << 8) - 1992276590;
  v5 = v3 < 0x89407ED2 || v3 >= v2 - 1992262035;
  return (*(STACK[0xF18] + 8 * ((504 * v5) ^ v1)))();
}

uint64_t sub_10042FEAC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB028)))(48);
  STACK[0x1588] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 + 99)) & 1) * (v0 ^ 0x7AB7)) | v0)))();
}

uint64_t sub_100430004(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v8 = (((a4 ^ 0xB9CE1F16) + 1177673962) ^ ((a4 ^ 0x99309FC) - 160631292) ^ ((a4 ^ 0x5988D1FB) + 2282 * (a6 ^ 0x305C) - 1502189079)) - 1527114375;
  v9 = (((v6 ^ 0xACAB6925) + 1398052571) ^ ((v6 ^ 0x551519A8) - 1427446184) ^ ((v6 ^ 0x106BB79C) - 275494812)) - 1527114375;
  v10 = v8 < 0xBB244E68;
  v11 = v8 > v9;
  if (v9 < 0xBB244E68 != v10)
  {
    v11 = v10;
  }

  return (*(v7 + 8 * ((20299 * v11) ^ a6)))();
}

uint64_t sub_100430110@<X0>(int a1@<W8>)
{
  STACK[0x5548] = v2;
  STACK[0x3280] = v6;
  STACK[0x6F48] = v3;
  STACK[0x9748] = (STACK[0xEC0] ^ 0x7F32FFFDBBFDFFF1) + ((2 * STACK[0xEC0]) & 0xFE65FFFB77FBFFE2) - 0x6332B22C02945EEFLL + ((a1 - 11390) | 0x50D3u);
  STACK[0x6D48] = STACK[0xED0];
  STACK[0x50C0] = &STACK[0x4D30];
  STACK[0x1930] = &STACK[0x131C];
  STACK[0x3368] = v1;
  STACK[0x2DF8] = STACK[0xEB0];
  STACK[0x3C78] = v5;
  STACK[0x5E58] = v4;
  LODWORD(STACK[0x62F4]) = 2058370287;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004301D0()
{
  v2 = ((v0 - 34873) | 0x4030) - 371883041;
  v3 = v1 == v2;
  v4 = v1 != v2;
  v5 = v3;
  LOBYTE(STACK[0x6E73]) = v5;
  return (*(STACK[0xF18] + 8 * ((90 * v4) ^ (v0 - 11136))))();
}

uint64_t sub_100430224@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = ((529 * (((a1 - 34771) | 0x8321) ^ 0x8B1Eu) + 0x5FFF9E972B8FAB8ALL) ^ (v3 - 4)) + ((2 * (v3 - 4)) & 0x571FEFFA);
  *(v6 + v2 + v5) = *(a2 + v6 + v4);
  return (*(STACK[0xF18] + 8 * (a1 ^ ((4 * (v3 != 4)) | (16 * (v3 != 4))))))();
}

uint64_t sub_1004302A0@<X0>(int a1@<W8>)
{
  v1 = a1 | 0x20;
  v2 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((8788 * ((v1 - 148148099) < 0xFA2AA5A)) ^ (((v1 ^ 0x2BA8) - 3450) | v1))))();
}

uint64_t sub_100430304@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = v1 - 353670337 * ((~(&STACK[0x10000] + 3800) & 0xEBFAA9A2 | (&STACK[0x10000] + 3800) & 0x14055658) ^ 0x5FDB519F) - 10189;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 26724)))(&STACK[0x10ED8]);
  STACK[0x4BA8] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004303AC()
{
  LODWORD(STACK[0x90B8]) = v1;
  v2 = STACK[0x7ACC];
  STACK[0x8FE8] = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1751474532;
  LODWORD(STACK[0x704C]) = -2116087586;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100430434()
{
  STACK[0x5658] = STACK[0x3FE8];
  LODWORD(STACK[0x2564]) = 966098965;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10043046C@<X0>(uint64_t a1@<X8>)
{
  v4 = vaddq_s32(vsubq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(*(a1 + 4 * v2), vdupq_n_s32(0xA8F7226C)), vdupq_n_s32(0x5708DD94u)), vaddq_s32(veorq_s8(*(a1 + 4 * v2), vdupq_n_s32(0x89B6326D)), vdupq_n_s32(0x7649CD93u))), vaddq_s32(veorq_s8(*(a1 + 4 * v2), vdupq_n_s32(0x1AD70E35u)), vdupq_n_s32(0xE528F1CB))), *(STACK[0x220] + 4 * v2)), vdupq_n_s32(0x6A93355Cu));
  v5 = veorq_s8(v4, vdupq_n_s32(0x8798018F));
  v6 = vandq_s8(v4, vdupq_n_s32(0xD102E8D8));
  v7 = veorq_s8(vandq_s8(vaddq_s32(v6, v6), veorq_s8(v4, vdupq_n_s32(0x8598C09F))), v6);
  v8 = vaddq_s32(v5, v5);
  v9 = veorq_s8(vandq_s8(veorq_s8(v8, vdupq_n_s32(0xAD35D2AE)), v5), vandq_s8(v8, vdupq_n_s32(0x569AE956u)));
  v10 = veorq_s8(v9, vdupq_n_s32(0x528A2951u));
  v11 = veorq_s8(vandq_s8(veorq_s8(v9, vdupq_n_s32(0x1690C811u)), vshlq_n_s32(v7, 2uLL)), v7);
  v12 = vshlq_n_s32(v10, 2uLL);
  v13 = veorq_s8(vandq_s8(veorq_s8(v12, vdupq_n_s32(0x5A6BA55Cu)), v10), vandq_s8(v12, vdupq_n_s32(0x569AE954u)));
  v14 = veorq_s8(v13, vdupq_n_s32(0x4904803u));
  v15 = vshlq_n_s32(v14, 4uLL);
  v16 = veorq_s8(vandq_s8(veorq_s8(v13, vdupq_n_s32(0x520AA143u)), vshlq_n_s32(v11, 4uLL)), v11);
  v17 = veorq_s8(vandq_s8(veorq_s8(v15, vdupq_n_s32(0x69AE9570u)), v14), vandq_s8(v15, vdupq_n_s32(0x569AE950u)));
  v18 = veorq_s8(v17, vdupq_n_s32(0x16106807u));
  v19 = veorq_s8(veorq_s8(v16, vdupq_n_s32(0x569AE957u)), vandq_s8(veorq_s8(v17, vdupq_n_s32(0x408A8107u)), vshlq_n_s32(v16, 8uLL)));
  v20 = vshlq_n_s32(v18, 8uLL);
  v21 = vdupq_n_s32(0x569A0000u);
  v22 = vandq_s8(veorq_s8(v20, vdupq_n_s32(0x9AE90000)), v18);
  v23 = vshlq_n_s32(v19, 0x10uLL);
  v24 = veorq_s8(veorq_s8(vandq_s8(v23, v21), v19), vandq_s8(veorq_s8(v23, vdupq_n_s32(0x69570000u)), veorq_s8(veorq_s8(vandq_s8(v20, v21), vdupq_n_s32(0x44120000u)), v22)));
  *(a1 + 4 * v2) = veorq_s8(veorq_s8(v4, vdupq_n_s32(0xC7852442)), vaddq_s32(v24, v24));
  return (*(v3 + 8 * (((v2 == 28) * ((v1 + 469036033) & 0xE40AEEFF ^ 0x15B)) ^ v1)))();
}

uint64_t sub_100430768()
{
  v2 = v1 & 0xBFFDB377 | ((v1 & 0xBFFDB377 ^ 0x266CAB4A) << 32);
  v3 = (((v0 - v2) | (v2 - v0)) & 0x8000000000000000) == 0;
  return (*(STACK[0xF18] + 8 * ((4 * v3) | (16 * v3) | ((v1 & 0xBFFDB377 ^ 0x2FEDA9B7) + 804109269) ^ v1 & 0xBFFDB377)))();
}

uint64_t sub_1004307E4()
{
  LODWORD(STACK[0x772C]) = v0;
  v3 = *(*(STACK[0x1E30] + 520) + 4);
  v4 = v3 + 233846602;
  v5 = v3 > 0xF20FC8B5;
  if (v0 + 119148146 < ((v1 - 33153) | 0x8038u) + 233810959 != v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v0 + 119148146 < v4;
  }

  if (v2 != -371865839)
  {
    v6 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((v6 * (v1 ^ 0x9447)) ^ v1)))();
}

uint64_t sub_100430888()
{
  v3 = LODWORD(STACK[0x514]);
  v4 = *(v2 + 8 * v1);
  LODWORD(STACK[0x2B0]) = ((v1 - 1592523811) & 0x5EEBFBFF ^ 0xB7BDAE4A) + v0;
  return v4(4294967199, 802054951, v3);
}

uint64_t sub_100430AE0()
{
  v1 = STACK[0xF18];
  STACK[0x40E0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x18D6 ^ (((v0 + 612105037) < 0x45CBD4E8) * ((343 * (v0 ^ 0x2B5)) ^ 0xA44)))))();
}

uint64_t sub_100430C14()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 27410;
  v2 = STACK[0x91C0];
  *(v2 + 168) = 0;
  return (*(STACK[0xF18] + 8 * (((*(v2 + 176) != 0) * (v0 ^ 0x8B55)) ^ v1)))();
}

uint64_t sub_100430C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0x9FDC]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (v4 ^ 0x3FFF6434 ^ (0x27F0 % (LODWORD(STACK[0x9FE0]) ^ 0x70E3BE12u))) + 4109708 + ((2 * (0x27F0 % (LODWORD(STACK[0x9FE0]) ^ 0x70E3BE12u))) & 0x397E));
}

uint64_t sub_100430D2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a4 ^ 0x4192)))();
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_100430E8C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 11857;
  STACK[0x1068] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 35614) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100430ECC@<X0>(unint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = STACK[0xF18];
  STACK[0x53A0] = *(STACK[0xF18] + 8 * v3);
  STACK[0x15C8] = v2;
  STACK[0x1C58] = v5;
  STACK[0x95D0] = v1;
  v7 = STACK[0x7690];
  v8 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2E60] = v8;
  STACK[0x4628] = (v8 + 20);
  STACK[0x7690] = v7 + 48;
  LODWORD(STACK[0x7ACC]) = 1497668682;
  v10 = v2 != 0x217E172EFA1E81CLL && v5 != 0x217E172EFA1E81CLL;
  return (*(v6 + 8 * ((v10 * (((v4 - 1717427008) & 0x665DDF9D) - 36701)) ^ (v4 + 13134))))();
}

uint64_t sub_100430FB8@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF10] + 10463;
  v2 = ((((8409 * (v1 ^ 0xB419) - 3579) | 0x840) ^ 0x40005CD0) & a1) != 0;
  return (*(STACK[0xF18] + 8 * ((4 * v2) | (32 * v2) | v1)))();
}

uint64_t sub_100431040()
{
  *STACK[0x32D8] = *(v0 - 0x10A99C80114D144BLL);
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 46936))();
}

uint64_t sub_1004310A8()
{
  v0 = (STACK[0xF10] - 37358428) & 0x239D2FC;
  v1 = STACK[0xF10] - 31109;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] - 35389)) - 432626290);
  LOWORD(STACK[0x476A]) = *v2;
  LODWORD(STACK[0x476C]) = *(v2 + 2);
  return (*(STACK[0xF18] + 8 * (v1 - 19545 + v0)))();
}

uint64_t sub_100431134()
{
  v1 = STACK[0xF18];
  STACK[0x3468] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 6287 + ((v0 + 1979) | 0x820))))();
}

uint64_t sub_10043132C(unsigned int a1, int a2, int a3, char a4, char a5, int a6, int a7)
{
  v18 = a7 - 1;
  v19 = (v11 + v9 + v18);
  v20 = ((v19 ^ *(*v15 + (*v14 & a1))) & 0x7FFFFFFF) * a2;
  v21 = (v20 ^ HIWORD(v20)) * ((v7 ^ v12) + a3);
  *(v8 + v18) = *v19 ^ *(v17 + (v21 >> 24)) ^ *((v21 >> 24) + v13 + 1) ^ *((v21 >> 24) + v16 + 3) ^ v21 ^ (BYTE3(v21) * a4) ^ a5;
  return (*(STACK[0xF18] + 8 * (((v18 == 0) * a6) ^ v10)))();
}

uint64_t sub_1004313C0(unint64_t a1)
{
  LODWORD(STACK[0x1360]) = v2;
  STACK[0xB380] = v1;
  LODWORD(STACK[0x3FB0]) = v3;
  STACK[0x84D0] = a1;
  STACK[0x7690] -= 432;
  return (STACK[0x4AD0])();
}

uint64_t sub_1004314EC()
{
  v1 = STACK[0x7690];
  STACK[0x5C88] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = (((v0 + 26828) | 0xB22u) ^ 0x8BBBLL) + v1;
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = 2038422775;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004316A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3980]) = -371865839;
  STACK[0x17B8] = 0;
  v7 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (((v6 + 30347) ^ 0xC01C) + v6)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10043175C@<X0>(uint64_t a1@<X8>)
{
  v6 = *(a1 + (v3 + *(v2 + 56)));
  *(v5 + v3) = v6 + ~(v4 & (2 * v6)) + 96;
  return (*(STACK[0xF18] + 8 * ((510 * (v3 + 1 >= *(v2 + 60))) ^ v1)))();
}

uint64_t sub_1004318DC@<X0>(unint64_t a1@<X8>)
{
  v3 = (v1 - 5848920) & 0xB3FCF7FC;
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = v3 + 1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0x2F911400) - (&STACK[0x10000] + 3800) - 399018496) ^ 0x8013B8AB) + 1281111112;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 ^ 0xB3A4893F)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 104) = v2;
  return (*(v4 + 8 * ((((11881 * (v3 ^ 0xB3A443E3)) ^ 0xD3E4) * (v3 == -707235395)) ^ (v3 + 1281094613))))(v5);
}

uint64_t sub_100431A18()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 21286;
  v2 = STACK[0xF10] - 33972;
  v3 = STACK[0x2758];
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0x6D105EE9 | 0xA4A5EED2) - ((&STACK[0x10000] + 3800) ^ 0x6D105EE9 | 0x5B5A112D) + 1532629293) ^ 0xA4239FC7);
  LODWORD(STACK[0x10ED8]) = v4 - 1431125376;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EE8]) = v0 - v4 - 14660;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x403A)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v5 + 8 * v2);
  return (*(v5 + 8 * (v1 ^ v2 ^ 0x2500)))(v6);
}

uint64_t sub_100431B4C()
{
  v2 = *(v1 + 61);
  v3 = *(v1 + 37);
  STACK[0xE80] = v2 - 0x7183895F79D12E8;
  v4 = *(v1 + 45);
  v5 = *(v1 + 49);
  LODWORD(STACK[0xE70]) = (v0 ^ 0x13A4) + v4 - 1572930308;
  return (*(STACK[0xF18] + 8 * v0))(STACK[0x84D0], v2 - 0x7183895F79D12F0, v4, v5, v3, (v4 - 681233797), (v4 - 1966226754), 4294957768);
}

uint64_t sub_100431C18@<X0>(int a1@<W2>, int a2@<W8>)
{
  v5 = v2 - 1080;
  v6 = a1 - 170101379 < ((v2 + 4319) | 0x1189u) - 23527 && v4 == a2;
  return (*(v3 + 8 * ((855 * v6) ^ v5)))();
}

uint64_t sub_100431C6C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = 0;
  *(*a1 + 16) = 0;
  *(*a1 + 24) = 0;
  *(*a1 + 32) = 0;
  return (*(STACK[0xF18] + 8 * ((((STACK[0x3387] & 1) == 0) * (1193 * ((6 * (v1 ^ 0xB6A8)) ^ 0xA9F7) - 4985)) ^ (6 * (v1 ^ 0xB6A8)))))();
}

uint64_t sub_100431CE0()
{
  if (STACK[0x4558])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0 == ((1193 * (v1 ^ 0x8B3E)) ^ 0x174D);
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((v3 * ((v1 ^ 0xC176) - 18809)) ^ v1 ^ 0xC176)))();
}

uint64_t sub_100431D38()
{
  v3 = v1 - 0x22EE7697FA26B68FLL;
  v4 = v0 - 0x22EE7697FA26B68FLL;
  v5 = (v4 < 0x8F768B39) ^ (v3 < 0x8F768B39);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0x8F768B39;
  }

  return (*(STACK[0xF18] + 8 * (((4519 * (v2 ^ 0x7F30) - 22525) * v6) ^ v2)))();
}

uint64_t sub_100431DAC()
{
  v1 = STACK[0xF18];
  STACK[0x92C8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 7361 + ((v0 + 258) | 0x4958))))();
}

uint64_t sub_100431F4C()
{
  LODWORD(STACK[0x3D08]) = -371865839;
  *(STACK[0x4518] - 0x217E172EFA1E804) = *STACK[0x2AC0];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7AF ^ (v0 + 3908))))();
}

uint64_t sub_10043202C@<X0>(int a1@<W8>)
{
  v3 = v2 - 14246;
  v4 = (((a1 ^ 0x3960D1B9) - 962646457) ^ ((a1 ^ 0xC10B7431) + 1056213967) ^ (((v2 - 35611) | 0x45D) - 297690902 + (a1 ^ 0x11BE6299))) + 937001350;
  v5 = v4 < 0x4E03BA75;
  v6 = v1 + 1308867189 < v4;
  if (v1 > 0xB1FC458A != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((61304 * v6) ^ v3)))();
}

uint64_t sub_1004320F8@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = v1 + 1022166737 * ((((&STACK[0x10000] + 3800) | 0x4DBFC6D2) - ((&STACK[0x10000] + 3800) & 0x4DBFC6D0)) ^ 0xF7AF2740) + 8585;
  STACK[0x10EE0] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4033)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 + 4220)))(v3);
}

uint64_t sub_100432238(uint64_t a1)
{
  v2 = *(a1 + 8 * (v1 - 14095)) - 141163594 - STACK[0x63A8];
  v3 = *(a1 + 8 * (v1 ^ 0x2EC8u));
  v4 = *(a1 + 8 * (v1 & 0x1C191F5)) - 225287875 - STACK[0x63A8];
  v8 = STACK[0x20A0] - STACK[0x63A8] > 0xF && v2 > 0xF && v4 + 6 > 0xF && v3 - 1635452219 - STACK[0x63A8] > 0xF;
  return (*(STACK[0xF18] + 8 * ((v8 * (v1 - 29144 + 869 * (v1 ^ 0x3EFA))) | v1)))();
}

uint64_t sub_1004322F8()
{
  v2 = v1 - 32406;
  *v0 += v1 - 35642;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x406C1053) - ((&STACK[0x10000] + 3800) | 0xBF93EFAC) - 1080823892) ^ 0xA64A0B9C) + 296753103;
  v3 = v1 ^ 0x41F1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v4 + 8 * v2);
  return (*(v4 + 8 * (v2 ^ 0x1ACA)))(v5);
}

uint64_t sub_1004325FC()
{
  v2 = (((v0 + 41738081) & 0xFD82FFBB ^ 0xA2352519) + (v1 ^ 0x5DCA51DE)) ^ ((v1 ^ 0x89C957F4) + 1983293452) ^ ((v1 ^ 0x3DD6CE71 ^ ((v0 - 42460) | 0x908)) - 1037484347);
  v3 = LODWORD(STACK[0x3908]) + 1641430077;
  v2 += 1269564234;
  v4 = (v3 < 0x61D63C39) ^ (v2 < 0x61D63C39);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x61D63C39;
  }

  return (*(STACK[0xF18] + 8 * ((47 * v5) ^ v0)))();
}

uint64_t sub_1004326EC()
{
  v1 = (v0 - 3123) | 0x201;
  v2 = v1 + 2610;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100432720()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762656268) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBD22)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((61131 * (*STACK[0x970] > ((4409 * (v0 ^ 0x779F)) ^ 0x44E4))) ^ v0)))(v2);
}

uint64_t sub_1004327CC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1C28] = a1;
  LODWORD(STACK[0x2E34]) = v1;
  STACK[0x77E0] = v2;
  STACK[0x2B98] = v3;
  LODWORD(STACK[0x5C98]) = v4;
  LODWORD(STACK[0x10ED8]) = (v5 - 1762633373) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xF515D257) + (~(&STACK[0x10000] + 3800) | 0xAEA2DA8)) ^ 0xC4141F72));
  STACK[0x10EE0] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 ^ 0xD495)))(&STACK[0x10ED8]);
  v9 = *STACK[0x970] != ((v5 + 1341140671) & 0xB00FBFB5) - 3233 || *STACK[0x940] == 0;
  return (*(v6 + 8 * ((v9 * ((v5 - 279633489) & 0x10AADE6D ^ 0x1E2C)) ^ v5)))(v7);
}

uint64_t sub_100432BB8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 + 13977)))(v2);
}

uint64_t sub_100432DC0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  *(v2 + 4) = *(a2 + 16) - ((*(a2 + 16) << (((v4 - 63) ^ 0x4B) + 1)) & 0x482520C) - 2109658874;
  *(v2 + 140) = 0x45037CFE1622CB94;
  *(v2 + 152) = *(a2 + 312) - ((2 * *(a2 + 312)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  *(v2 + 160) = *(a2 + 304);
  *(v2 + 24) = *(a2 + 272);
  *(v2 + 20) = *(a2 + 168);
  v5 = a2 + v3 + 4;
  v6 = v3 + *(a1 + 8 * (v4 - 33228)) - 1472334770 - 44;
  v7 = v3 + *(a1 + 8 * (v4 - 31654)) - 1407196250 - 41;
  v8 = v3 + *(a1 + 8 * (v4 - 32286)) - 461935250 - 42;
  v12 = v5 < 0x10 || v6 < 0x10 || v7 < 0x10 || v8 < 0x10;
  return (*(STACK[0xF18] + 8 * ((71 * v12) ^ v4)))();
}

uint64_t sub_100432F44()
{
  if (STACK[0x61B0])
  {
    v2 = v1 == -371865839;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((181 * ((v3 ^ (21 * (v0 ^ 0xF1) + 1)) & 1)) ^ (v0 - 9752))))();
}

uint64_t sub_10043305C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + 5106 + ((a1 + 1924583621) & 0x8D49271F))))();
}

uint64_t sub_10043311C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a5 + 24;
  STACK[0x6788] = v6;
  v7 = *(v6 - 8);
  STACK[0x3D30] = v6 - 8;
  v8 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * (v5 + 1650));
  return (*(v8 + 8 * ((v5 + 1650) ^ (v5 + 32961) ^ 0x9E9E)))(a1, a2, a3, a4, v7);
}

uint64_t sub_100433164()
{
  STACK[0xEB0] = v0;
  v1 = STACK[0xD70];
  v2 = (LODWORD(STACK[0xD70]) + 1819578345) & 0x938BBBBB;
  v3 = (LODWORD(STACK[0xD70]) - 2934) | 0x35B;
  v4 = STACK[0xD80] == 614173694;
  LODWORD(STACK[0xE40]) = v3;
  return (*(STACK[0xF18] + 8 * (((v3 + v2 - 49809) * v4) ^ v1)))();
}

uint64_t sub_10043332C@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x39DA;
  v2 = 321 * (a1 ^ 0x62FB);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((a1 ^ 0x39DA) + 28464)))(32);
  STACK[0x3828] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (v2 + ((v1 + 24367) ^ 0xFFFF1EEC))) | v1)))();
}

uint64_t sub_10043339C()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * (v0 & 0xFFFFFFFF9B73BFDFLL));
  return (*(v1 + 8 * (((((v0 & 0x9B73BFDF) + 13113) | 0x2159) ^ 0x6564) + (v0 & 0x9B73BFDF))))();
}

uint64_t sub_100433438()
{
  LODWORD(STACK[0x50DC]) = v1;
  LODWORD(STACK[0x558C]) = v0;
  LODWORD(STACK[0x7E48]) = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == ((v2 - 5471) ^ 0xE9D5D019)) * (v2 ^ 0x7D34)) ^ v2)))();
}

uint64_t sub_100433554()
{
  v3 = STACK[0x124C];
  v4 = STACK[0x5880];
  v5 = 297845113 * ((((&STACK[0x10000] + 3800) | 0x8C2C596F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x73D3A690)) ^ 0xFB1F45F1);
  STACK[0x10ED8] = v2 ^ 0x12A07E5D2927AB6DLL;
  LODWORD(STACK[0x10EE0]) = v5 + v1 + 2045;
  LODWORD(STACK[0x10EF8]) = ((v1 + 31791 + (v3 ^ 0x224091C4) - 574692607) ^ ((v3 ^ 0x6110CEDB) - 1628491483) ^ ((v3 ^ 0xAA85980E) + 1434085362)) - v5 + 1626363843;
  STACK[0x10EF0] = v0;
  STACK[0x10EE8] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 48284)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((11537 * (LODWORD(STACK[0x10EE4]) == -371865839)) ^ v1)))(v7);
}

uint64_t sub_100433688()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 32031;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  LODWORD(STACK[0x97DC]) = v1 - 20;
  v4 = STACK[0xF18];
  STACK[0x3F30] = *(STACK[0xF18] + 8 * (v2 - 31348));
  return (*(v4 + 8 * (v3 + v2 - 31348 + 16480)))();
}

uint64_t sub_1004338DC()
{
  STACK[0x10ED8] = STACK[0x4CF8];
  LODWORD(STACK[0x10EE0]) = v0 - 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0xE54724FE) - (&STACK[0x10000] + 3800) - 1923322495) ^ 0x9DF5B8A6) + 5897;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x40C0)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 19725)))(v2);
}

uint64_t sub_10043396C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3944)))();
}

uint64_t sub_100433C30()
{
  v1 = LODWORD(STACK[0x3E80]) + *STACK[0x3E40];
  LODWORD(STACK[0x3E80]) = v1;
  v2 = ((LODWORD(STACK[0x17DC]) + 305878814 + v1) | ((LODWORD(STACK[0x17DC]) + 305878814 + v1 < ((v0 + 20625) ^ 0x8EF7u) + 868983407) << 32)) + 1252684377;
  v3 = STACK[0x6018] - 0x5D1E61E2B828E83;
  v4 = v2 < 0x7E761A90;
  v5 = v2 > v3;
  if (v3 < 0x7E761A90 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = -371865839;
  }

  LODWORD(STACK[0x33D4]) = v7;
  LOBYTE(STACK[0x3737]) = !v6;
  return (*(STACK[0xF18] + 8 * ((101 * v6) ^ v0)))();
}

uint64_t sub_100433D14()
{
  v2[20] = -338311408;
  v2[22] = *(v1 + 88);
  v2[21] = *(v1 + 84);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100433DA0()
{
  v1 = STACK[0x8AC8];
  v2 = STACK[0x7408] + 229;
  v3 = STACK[0x16C8] + 48;
  LODWORD(STACK[0x10EE8]) = (v0 - 25257) ^ (1022166737 * ((2 * ((&STACK[0x10000] + 3800) & 0x5C59908) - (&STACK[0x10000] + 3800) - 96835854) ^ 0x402A8760));
  STACK[0x10EE0] = v2;
  STACK[0x10EF0] = v3;
  STACK[0x10EF8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4A1F)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_100433ED0()
{
  v2 = STACK[0xF10] - 3262;
  v3 = (((STACK[0xF10] + 1149398820) & 0xBB7D37AE) - 8) * v0 + (LOBYTE(STACK[0x7D73]) + 126) * (v0 - 74) + 88;
  v4 = v3 & 0x48 ^ 0xF6;
  v5 = (*(STACK[0x80C8] + 8) + (19 * LODWORD(STACK[0x17DC]) - 2109080871) % (LODWORD(STACK[0x3D0C]) - 2052581038));
  v6 = *v5;
  LODWORD(v5) = 1864610357 * ((*(*STACK[0xE50] + (*v1 & 0x72D7ACF8)) ^ v5) & 0x7FFFFFFF);
  v7 = 1864610357 * (v5 ^ (v5 >> 16));
  *(STACK[0x7198] + LODWORD(STACK[0x249C])) = v6 ^ v3 ^ *(STACK[0x8A0] + (v7 >> 24)) ^ *((v7 >> 24) + STACK[0x898] + 3) ^ *((v7 >> 24) + STACK[0x8A8] + 2) ^ v7 ^ (27 * BYTE3(v7)) ^ (2 * ((v3 ^ 0x6C) & (2 * ((v3 ^ 0x6C) & (2 * ((v3 ^ 0x6C) & (2 * ((v3 ^ 0x6C) & (2 * ((v3 ^ 0x6C) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ 0x48;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100434080@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(a1 + 56);
  *(a1 + 72) = 34;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100434234()
{
  v1 = (v0 - 36736) | 0xC85;
  v2 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((v1 + 45052) ^ 0xA88F) + v1)))();
}

uint64_t sub_100434478(_DWORD *a1, void *a2, int a3)
{
  v3 = STACK[0xF10] - 30298;
  v4 = *a1 >> (((STACK[0xF10] - 27) | 0x44) - 98);
  v5 = *(*a2 + 4 * ((0xE66EA62C % v4) & 0x3FFFFFFC));
  v6 = STACK[0x8B0];
  v7 = *(STACK[0x8B0] - 527405895);
  v8 = *(STACK[0x8B8] + 4 * v7);
  v10 = (((STACK[0xF10] - 7477) | 0x1091) ^ 0x8168 ^ *(*a2 + 4 * (v5 & (v4 - 1)))) & ~HIWORD(v5);
  v9 = v10 == 0;
  v11 = v10 + v10 * v8;
  if (v9)
  {
    v12 = *(STACK[0x8B8] + 4 * v7);
  }

  else
  {
    v12 = 0;
  }

  *(STACK[0x8B8] + 4 * v7) = (v12 + v11) * v8;
  *(v6 - 527405895) = (v7 + 1) % 6u;
  if (!v9)
  {
    a3 = 371891350;
  }

  return (*(STACK[0xF18] + 8 * (v3 | (2 * (a3 != -371865839)))))();
}

uint64_t sub_1004347C0()
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x1D8B) + v0)))();
}

uint64_t sub_100434820()
{
  v3 = (v1 + 29876) % 0x5Eu;
  HIDWORD(v5) = *(v2 + 4 * ((v1 - 1950387077) % 0x5Eu));
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 27;
  v6 = *(v2 + 4 * v3) ^ __ROR4__(*(v2 + 4 * ((((v0 + 38454109) & 0xFDB5A1EF ^ 0x8BBFD502) + v1) % 0x5E)), 29);
  HIDWORD(v5) = *(v2 + 4 * ((v1 - 1950387175) % 0x5Eu));
  LODWORD(v5) = HIDWORD(v5);
  v7 = (((v6 ^ 0x989EFD08) + 275653567) ^ ((v6 ^ 0xCA1F2A20) + 1123021975) ^ ((v6 ^ 0x67ABE9DB) - 279234706)) + (((v4 ^ 0xED7CDF56) - 178980641) ^ ((v4 ^ 0x8072EA03) - 1738879604) ^ ((v4 ^ 0xE92364A7) - 250920144)) - ((((v5 >> 9) ^ 0xDFBE5128) - 731383734) ^ (((v5 >> 9) ^ 0x61B7F3DB) + 1785617083) ^ (((v5 >> 9) ^ 0xF9C3B246) - 233170136)) + 1728272606;
  v8 = ((2 * (v7 ^ 0x68E01F06)) ^ 0xC7A02A60) & (v7 ^ 0x68E01F06) ^ (2 * (v7 ^ 0x68E01F06)) & 0xE3D01530;
  v9 = (v7 ^ 0x6AA00B26) & (2 * (v7 & 0x8B300A36)) ^ v7 & 0x8B300A36;
  v10 = ((4 * (v8 ^ 0x20501510)) ^ 0x8F4054C0) & (v8 ^ 0x20501510) ^ (4 * (v8 ^ 0x20501510)) & 0xE3D01530;
  v11 = (v10 ^ 0x83401400) & (16 * ((v8 ^ 0x41800020) & (4 * v9) ^ v9)) ^ (v8 ^ 0x41800020) & (4 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x60900130)) ^ 0x3D015300) & (v10 ^ 0x60900130) ^ (16 * (v10 ^ 0x60900130)) & 0xE3D01500;
  v13 = v11 ^ 0xE3D01530 ^ (v12 ^ 0x21001100) & (v11 << 8);
  *(v2 + 4 * v3) = v7 ^ (2 * ((v13 << 16) & 0x63D00000 ^ v13 ^ ((v13 << 16) ^ 0x15300000) & (((v12 ^ 0xC2D00430) << 8) & 0x63D00000 ^ 0x23C00000 ^ (((v12 ^ 0xC2D00430) << 8) ^ 0x50150000) & (v12 ^ 0xC2D00430)))) ^ 0xDA914AD9;
  return (*(STACK[0xF18] + 8 * ((51 * (v1 != 1950387395)) ^ v0)))();
}

uint64_t sub_100434B94(_DWORD *a1)
{
  STACK[0xE90] = 0;
  STACK[0xEA0] = 0;
  *a1 = 1;
  v3 = v1 ^ (v2 - 33098) ^ 0x794E87ED87160FADLL;
  STACK[0xED0] = v3;
  STACK[0x2AB8] = v3;
  return (*(STACK[0xF18] + 8 * (v2 - 33098)))();
}

uint64_t sub_100434BF4(uint64_t a1)
{
  *(a1 + 8 * v7) = 0;
  v8 = v3 < v4;
  if (v8 == v7 + 1 > v5)
  {
    v8 = v2 + v7 - 304668903 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((!v8 * v6) ^ v1)))();
}

uint64_t sub_100434C90()
{
  v0 = STACK[0xF10] - 19098;
  *(STACK[0x78B0] + 168) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100434CFC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * a3);
  return (*(v3 + 8 * ((a3 + 12512) ^ a3)))();
}

uint64_t sub_100434E20()
{
  v2 = STACK[0xF10];
  v3 = (STACK[0xF10] - 34091) | 0x80C;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  LODWORD(STACK[0x50F4]) = v1;
  v4 = STACK[0xF18];
  STACK[0x3F30] = *(STACK[0xF18] + 8 * (v2 - 31397));
  return (*(v4 + 8 * (v2 - 14868 + v3)))();
}

uint64_t sub_100434EE0()
{
  STACK[0xE60] = v3;
  STACK[0xEB0] = v2;
  STACK[0xEA0] = v1;
  v4 = *(STACK[0xF18] + 8 * (v0 - 21549));
  LODWORD(STACK[0xE90]) = v0 - 1051291801;
  return v4();
}

uint64_t sub_100434FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = STACK[0x7878];
  LODWORD(STACK[0xED0]) = LOBYTE(STACK[0x6F8F]);
  v12 = STACK[0x9830];
  v13 = STACK[0x6410];
  v14 = STACK[0x8C4F];
  v15 = STACK[0xE58];
  v16 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v17 = STACK[0xE50];
  v18 = *STACK[0xE50];
  v19 = 1864610357 * (((STACK[0x6410] + 3) ^ *(v18 + v16)) & 0x7FFFFFFF);
  v20 = 1864610357 * (v19 ^ HIWORD(v19));
  v21 = *(v9 + (v20 >> 24)) ^ *((v20 >> 24) + v8 + 1) ^ *(a4 + (v20 >> 24)) ^ *(STACK[0x6410] + 3) ^ v20 ^ (-19 * BYTE3(v20));
  *(v11 + 224) = (((v21 ^ 0x1B) + 94) ^ ((v21 ^ 0x3B) + 126) ^ ((v21 ^ 0x20) + 103)) - 11;
  *(v11 + 225) = a8;
  v22 = STACK[0x257F];
  v23 = 1864610357 * ((*(v18 + v16) ^ (v13 + 2)) & 0x7FFFFFFF);
  v24 = 1864610357 * (v23 ^ HIWORD(v23));
  v25 = *(v9 + (v24 >> 24)) ^ *((v24 >> 24) + v8 + 1) ^ *(a4 + (v24 >> 24)) ^ *(v13 + 2) ^ v24 ^ (-19 * BYTE3(v24));
  *(v11 + 227) = (((v25 ^ 0x32) + 4) ^ ((v25 ^ 0xC1) - 15) ^ ((v25 ^ 0xF3) - 61)) - 39;
  *(v11 + 228) = v10;
  v26 = STACK[0x3AE7];
  LODWORD(v16) = 1864610357 * ((*(v18 + v16) ^ (v13 + 1)) & 0x7FFFFFFF);
  v27 = 1864610357 * (v16 ^ WORD1(v16));
  LOBYTE(v27) = *(v9 + (v27 >> 24)) ^ *((v27 >> 24) + v8 + 1) ^ *(a4 + (v27 >> 24)) ^ *(v13 + 1) ^ v27 ^ (-19 * BYTE3(v27));
  *(v11 + 230) = (((v27 ^ 5) + 44) ^ ((v27 ^ 0x6C) + 67) ^ ((v27 ^ 0x69) + 72)) + 2;
  v28 = STACK[0x7878];
  v28[231] = v26;
  v29 = *v17;
  v30 = *v15 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v27) = 1864610357 * ((*(*v17 + v30) ^ v13) & 0x7FFFFFFF);
  v31 = 1864610357 * (v27 ^ WORD1(v27));
  v32 = *(v9 + (v31 >> 24)) ^ *((v31 >> 24) + v8 + 1) ^ *(a4 + (v31 >> 24)) ^ *v13 ^ v31 ^ (-19 * BYTE3(v31));
  v28[233] = (((v32 ^ 0x29) + 79) ^ ((v32 ^ 0xBB) - 35) ^ ((v32 ^ 0x92) - 10)) - 26;
  v28[234] = v14;
  LODWORD(v29) = *(v29 + v30);
  LOBYTE(v30) = STACK[0x1E3F];
  v33 = 1864610357 * ((1864610357 * ((v29 ^ (v13 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v29 ^ (v13 + 7)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v33) = *(v9 + (v33 >> 24)) ^ *((v33 >> 24) + v8 + 1) ^ *(a4 + (v33 >> 24)) ^ *(v13 + 7) ^ v33 ^ (-19 * BYTE3(v33));
  v28[236] = (((v33 ^ 0x52) - 51) ^ ((v33 ^ 0x41) - 32) ^ ((v33 ^ 0x13) - 114)) - 90;
  v28[237] = v30;
  v34 = STACK[0x8717];
  v35 = *v17;
  v36 = *v15 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v30) = 1864610357 * ((*(*v17 + v36) ^ (v13 + 6)) & 0x7FFFFFFF);
  v37 = 1864610357 * (v30 ^ WORD1(v30));
  LOBYTE(v37) = *(v9 + (v37 >> 24)) ^ *((v37 >> 24) + v8 + 1) ^ *(a4 + (v37 >> 24)) ^ *(v13 + 6) ^ v37 ^ (-19 * BYTE3(v37));
  v28[239] = (((v37 ^ 0xF2) + 46) ^ ((v37 ^ 0xD8) + 8) ^ ((v37 ^ 0x2A) - 10)) - 101;
  *(v11 + 240) = v34;
  v38 = STACK[0x6410];
  LODWORD(v37) = 1864610357 * (((STACK[0x6410] + 5) ^ *(v35 + v36)) & 0x7FFFFFFF);
  v39 = 1864610357 * (v37 ^ WORD1(v37));
  v40 = *(v9 + (v39 >> 24)) ^ *((v39 >> 24) + v8 + 1) ^ *(a4 + (v39 >> 24)) ^ *(STACK[0x6410] + 5) ^ v39 ^ (-19 * BYTE3(v39));
  *(v11 + 242) = (((v40 ^ 0xC6) - 107) ^ ((v40 ^ 0x32) + 97) ^ ((v40 ^ 0xF4) - 89)) - 4;
  *(v11 + 243) = v22;
  LOBYTE(v39) = STACK[0x7917];
  v41 = 1864610357 * ((*(v35 + v36) ^ (v38 + 4)) & 0x7FFFFFFF);
  v42 = 1864610357 * (v41 ^ HIWORD(v41));
  v43 = STACK[0xF10];
  v44 = *(&off_1010A0B50 + (STACK[0xF10] - 31762)) - 1603215087;
  v45 = *(&off_1010A0B50 + (STACK[0xF10] - 34625)) - 1113198486;
  v46 = *(&off_1010A0B50 + (STACK[0xF10] ^ 0x858F)) - 1496180490;
  v47 = v45[v42 >> 24] ^ v44[v42 >> 24] ^ v46[v42 >> 24] ^ *(v38 + 4) ^ v42 ^ (-61 * BYTE3(v42));
  *(v11 + 245) = (((v47 ^ 0x63) + 97) ^ ((v47 ^ 0x78) + 124) ^ ((v47 ^ 0x1B) + 25)) + 82;
  *(v11 + 246) = v39;
  v48 = *(v38 + 11);
  v49 = STACK[0x7E7F];
  v50 = *v17;
  v51 = *v15 & 0xFFFFFFFFE6F073DCLL;
  v52 = STACK[0x39A7];
  LODWORD(v38) = 1864610357 * ((*(*v17 + v51) ^ (v38 + 11)) & 0x7FFFFFFF);
  v53 = 1864610357 * (v38 ^ WORD1(v38));
  LOBYTE(v53) = v45[v53 >> 24] ^ v44[v53 >> 24] ^ v46[v53 >> 24] ^ v48 ^ v53 ^ (-61 * BYTE3(v53));
  *(v11 + 248) = (((v53 ^ 0x37) + 54) ^ ((v53 ^ 0x77) + 118) ^ ((v53 ^ 0x40) + 67)) + 24;
  *(v11 + 249) = v52;
  LOBYTE(v53) = STACK[0x7C5F];
  LODWORD(v39) = 1864610357 * ((*(v50 + v51) ^ (v13 + 10)) & 0x7FFFFFFF);
  v54 = 1864610357 * (v39 ^ WORD1(v39));
  LOBYTE(v54) = v45[v54 >> 24] ^ v44[v54 >> 24] ^ v46[v54 >> 24] ^ *(v13 + 10) ^ v54 ^ (-61 * BYTE3(v54));
  *(v11 + 251) = (((v54 ^ 0xD7) - 71) ^ ((v54 ^ 0x67) + 9) ^ ((v54 ^ 0xB0) - 32)) - 91;
  *(v11 + 252) = STACK[0xED0];
  v55 = 1864610357 * ((*(v50 + v51) ^ (v13 + 9)) & 0x7FFFFFFF);
  v56 = 1864610357 * (v55 ^ HIWORD(v55));
  LOBYTE(v56) = v45[v56 >> 24] ^ v44[v56 >> 24] ^ v46[v56 >> 24] ^ *(v13 + 9) ^ v56 ^ (-61 * BYTE3(v56));
  *(v11 + 254) = (((v56 ^ 9) + 99) ^ ((v56 ^ 0x9B) - 15) ^ ((v56 ^ 0x92) - 6)) - 98;
  *(v11 + 255) = v53;
  LOBYTE(v53) = STACK[0x714F];
  LOBYTE(v50) = STACK[0x377F];
  LODWORD(v56) = 1864610357 * ((*(*v17 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v13 + 8)) & 0x7FFFFFFF);
  v57 = 1864610357 * (v56 ^ WORD1(v56));
  LOBYTE(v31) = v45[v57 >> 24] ^ v44[v57 >> 24] ^ v46[v57 >> 24] ^ *(v13 + 8) ^ v57 ^ (-61 * BYTE3(v57));
  *(v11 + 257) = (((v31 ^ 0x27) - 11) ^ ((v31 ^ 0x9D) + 79) ^ ((v31 ^ 0xBA) + 106)) - 87;
  *(v11 + 258) = v53;
  LOBYTE(v31) = STACK[0x780F];
  LODWORD(v53) = 1864610357 * ((*(*v17 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v13 + 15)) & 0x7FFFFFFF);
  v58 = 1864610357 * (v53 ^ WORD1(v53));
  LOBYTE(v58) = v45[v58 >> 24] ^ v44[v58 >> 24] ^ v46[v58 >> 24] ^ *(v13 + 15) ^ v58 ^ (-61 * BYTE3(v58));
  *(v11 + 260) = (((v58 ^ 8) + 115) ^ ((v58 ^ 0x82) - 7) ^ ((v58 ^ 0x8A) - 15)) - 74;
  *(v11 + 261) = v50;
  v59 = v15;
  LODWORD(v50) = 1864610357 * ((*(*v17 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v13 + 14)) & 0x7FFFFFFF);
  v60 = 1864610357 * (v50 ^ WORD1(v50));
  LOBYTE(v60) = v45[v60 >> 24] ^ v44[v60 >> 24] ^ v46[v60 >> 24] ^ *(v13 + 14) ^ v60 ^ (-61 * BYTE3(v60));
  *(v11 + 263) = (((v60 ^ 0xFD) - 103) ^ ((v60 ^ 0xFB) - 97) ^ ((v60 ^ 6) + 100)) - 68;
  *(v11 + 264) = v31;
  LOBYTE(v58) = STACK[0x6947];
  LODWORD(v31) = 1864610357 * ((*(*v17 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v13 + 13)) & 0x7FFFFFFF);
  v61 = 1864610357 * (v31 ^ WORD1(v31));
  LOBYTE(v61) = v45[v61 >> 24] ^ v44[v61 >> 24] ^ v46[v61 >> 24] ^ *(v13 + 13) ^ v61 ^ (-61 * BYTE3(v61));
  *(v11 + 266) = (((v61 ^ 0xCA) - 44) ^ ((v61 ^ 0x50) + 74) ^ ((v61 ^ 0x9A) - 124)) - 4;
  *(v11 + 267) = v58;
  LODWORD(v15) = 1864610357 * ((*(*v17 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v13 + 12)) & 0x7FFFFFFF);
  v62 = 1864610357 * (v15 ^ (v15 >> 16));
  LOBYTE(v62) = v45[v62 >> 24] ^ v44[v62 >> 24] ^ v46[v62 >> 24] ^ *(v13 + 12) ^ v62 ^ (-61 * BYTE3(v62));
  *(v11 + 269) = (((v62 ^ 0x1F) - 70) ^ ((v62 ^ 0x48) - 17) ^ ((v62 ^ 0x57) - 14)) + 110;
  *(v11 + 270) = v49;
  LODWORD(v60) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v63 = 1864610357 * ((1864610357 * ((v60 ^ (v12 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ (v12 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v63) = v45[v63 >> 24] ^ v44[v63 >> 24] ^ v46[v63 >> 24] ^ v12[3] ^ v63 ^ (-61 * ((1864610357 * ((1864610357 * ((v60 ^ (v12 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ (v12 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v64 = 1864610357 * ((1864610357 * ((v60 ^ (v12 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ (v12 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v64) = (v44[v64 >> 24] ^ v12[2] ^ v45[v64 >> 24] ^ v46[v64 >> 24] ^ (53 * ((53 * (v60 ^ (v12 + 2))) ^ ((1864610357 * ((v60 ^ (v12 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-61 * ((1864610357 * ((1864610357 * ((v60 ^ (v12 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ (v12 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v65 = 1864610357 * ((1864610357 * ((v60 ^ (v12 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ (v12 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v61) = (v44[v65 >> 24] ^ v12[1] ^ v45[v65 >> 24] ^ v46[v65 >> 24] ^ (53 * ((53 * (v60 ^ (v12 + 1))) ^ ((1864610357 * ((v60 ^ (v12 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-61 * ((1864610357 * ((1864610357 * ((v60 ^ (v12 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ (v12 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v66 = 1864610357 * ((1864610357 * ((v60 ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * ((v60 ^ v12) & 0x7FFFFFFF)) >> 16));
  *v11 = v63 & 0xB1 ^ 0x6A6B73A9 ^ (((((((v44[v66 >> 24] ^ v66 ^ v45[v66 >> 24] ^ v46[v66 >> 24] ^ (-61 * (v66 >> 24)) ^ *v12 ^ 0xF8) << 24) ^ 0x43190B0E) & ~v61 | v61 & 0xE60000) ^ 0x86413914) & ~v64 | v64 & 0xCD00) ^ 0x43DC6454) & (v63 ^ 0xFFFFFFDE);
  v67 = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v68 = STACK[0x4408];
  v69 = 1864610357 * ((1864610357 * ((v67 ^ (v12 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 7)) & 0x7FFFFFFFu)) >> 16));
  v70 = *(&off_1010A0B50 + (v43 ^ 0x8B17)) - 1341786578;
  v71 = *(&off_1010A0B50 + (v43 ^ 0x9A24)) - 43455815;
  v72 = *(&off_1010A0B50 + (v43 ^ 0x8883)) - 171801062;
  LODWORD(v69) = v70[(v69 >> 24) + 1] ^ v12[7] ^ v71[v69 >> 24] ^ v72[v69 >> 24] ^ v69 ^ (-43 * ((1864610357 * ((1864610357 * ((v67 ^ (v12 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 7)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v73 = 1864610357 * ((1864610357 * ((v67 ^ (v12 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 6)) & 0x7FFFFFFFu)) >> 16));
  v74 = (v44[v73 >> 24] ^ v12[6] ^ (53 * ((53 * (v67 ^ (v12 + 6))) ^ ((1864610357 * ((v67 ^ (v12 + 6)) & 0x7FFFFFFFu)) >> 16))) ^ v45[v73 >> 24] ^ v46[v73 >> 24] ^ (-61 * BYTE3(v73))) << 8;
  v75 = 1864610357 * ((1864610357 * ((v67 ^ (v12 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 5)) & 0x7FFFFFFFu)) >> 16));
  v76 = ((53 * ((53 * (v67 ^ (v12 + 5))) ^ ((1864610357 * ((v67 ^ (v12 + 5)) & 0x7FFFFFFFu)) >> 16))) ^ v12[5] ^ (-61 * ((1864610357 * ((1864610357 * ((v67 ^ (v12 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 5)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v44[v75 >> 24] ^ v45[v75 >> 24] ^ v46[v75 >> 24]);
  v77 = 1864610357 * ((1864610357 * ((v67 ^ (v12 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 4)) & 0x7FFFFFFFu)) >> 16));
  *(v11 + 4) = v69 & 0x97 ^ 0xAA59FA59 ^ ((((((((-61 * ((1864610357 * ((1864610357 * ((v67 ^ (v12 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v67 ^ (v12 + 4)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v77 ^ v44[v77 >> 24] ^ v45[v77 >> 24] ^ v46[v77 >> 24] ^ v12[4]) << 24) ^ 0x371F5008) & ~(v76 << 16) & 0xFF1FFFFF | (v76 >> 5 << 21)) ^ 0x71F60CB0) & ~v74 | v74 & 0xA300) ^ 0x77E4C8D0) & (v69 ^ 0xFFFFFFFB);
  v78 = *v17;
  v79 = *v59 & 0xFFFFFFFFE6F073DCLL;
  v80 = *(*v17 + v79);
  v81 = 1864610357 * ((1864610357 * ((v80 ^ (v12 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 11)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v81) = v71[v81 >> 24] ^ v70[(v81 >> 24) + 1] ^ v72[v81 >> 24] ^ v12[11] ^ v81 ^ (-43 * ((1864610357 * ((1864610357 * ((v80 ^ (v12 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 11)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v82 = 1864610357 * ((1864610357 * ((v80 ^ (v12 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 10)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v82) = (v70[(v82 >> 24) + 1] ^ v12[10] ^ v71[v82 >> 24] ^ v72[v82 >> 24] ^ (53 * ((53 * (v80 ^ (v12 + 10))) ^ ((1864610357 * ((v80 ^ (v12 + 10)) & 0x7FFFFFFFu)) >> 16))) ^ (-43 * ((1864610357 * ((1864610357 * ((v80 ^ (v12 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 10)) & 0x7FFFFFFFu)) >> 16))) >> 24))) << 8;
  v83 = 1864610357 * ((1864610357 * ((v80 ^ (v12 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 9)) & 0x7FFFFFFFu)) >> 16));
  v84 = (v70[(v83 >> 24) + 1] ^ v12[9] ^ v71[v83 >> 24] ^ v72[v83 >> 24] ^ (53 * ((53 * (v80 ^ (v12 + 9))) ^ ((1864610357 * ((v80 ^ (v12 + 9)) & 0x7FFFFFFFu)) >> 16))) ^ (-43 * ((1864610357 * ((1864610357 * ((v80 ^ (v12 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 9)) & 0x7FFFFFFFu)) >> 16))) >> 24))) << 16;
  v85 = 1864610357 * ((1864610357 * ((v80 ^ (v12 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v80 ^ (v12 + 8)) & 0x7FFFFFFFu)) >> 16));
  *(v11 + 8) = v81 & 0x64 ^ 0x6296291C ^ (((((((v70[(v85 >> 24) + 1] ^ v85 ^ v71[v85 >> 24] ^ v72[v85 >> 24] ^ (-43 * (v85 >> 24)) ^ v12[8] ^ 0x46) << 24) ^ 0xF95AA089) & ~v84 | v84 & 0xA50000) ^ 0x91153380) & ~v82 | v82 & 0x6C00) ^ 0x4F64A992) & (v81 ^ 0xFFFFFFFB);
  v86 = v12[15];
  v87 = *v17;
  v88 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v75) = *(*v17 + v88);
  v89 = 1864610357 * ((1864610357 * ((v75 ^ (v12 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v75 ^ (v12 + 15)) & 0x7FFFFFFF)) >> 16));
  v90 = 1864610357 * ((1864610357 * ((v75 ^ (v12 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v75 ^ (v12 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v90) = (v71[v90 >> 24] ^ v70[(v90 >> 24) + 1] ^ v72[v90 >> 24] ^ v12[14] ^ v90 ^ (-43 * BYTE3(v90))) << 8;
  LODWORD(v78) = *(v78 + v79);
  v91 = 1864610357 * ((1864610357 * ((v78 ^ (v12 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v78 ^ (v12 + 13)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v91) = (v70[(v91 >> 24) + 1] ^ v12[13] ^ v71[v91 >> 24] ^ v72[v91 >> 24] ^ v91 ^ (-43 * BYTE3(v91))) << 16;
  v92 = 1864610357 * ((1864610357 * ((v78 ^ (v12 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v78 ^ (v12 + 12)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 12) = ((v70[(v89 >> 24) + 1] ^ v86 ^ v71[v89 >> 24] ^ v72[v89 >> 24]) ^ (v89 ^ (-43 * BYTE3(v89)))) & 0x1E ^ 0x3135B73C ^ (((((((v71[v92 >> 24] ^ v70[(v92 >> 24) + 1] ^ v72[v92 >> 24] ^ v12[12] ^ v92 ^ (-43 * (v92 >> 24))) << 24) ^ 0xB6B0834B) & ~v91 | v91 & 0x4F0000) ^ 0xA9439583) & ~v90 | v90 & 0xE900) ^ 0x1BC47829) & ((v70[(v89 >> 24) + 1] ^ v86 ^ v71[v89 >> 24] ^ v72[v89 >> 24] ^ v89 ^ (-43 * BYTE3(v89))) ^ 0xFFFFFFEF);
  v93 = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v94 = 1864610357 * ((1864610357 * ((v93 ^ (v68 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v68 + 3)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v94) = v70[(v94 >> 24) + 1] ^ *(v68 + 3) ^ v71[v94 >> 24] ^ v72[v94 >> 24] ^ v94 ^ (-43 * ((1864610357 * ((1864610357 * ((v93 ^ (v68 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v68 + 3)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v95 = 1864610357 * ((1864610357 * ((v93 ^ (v68 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v68 + 2)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v95) = (v70[(v95 >> 24) + 1] ^ *(v68 + 2) ^ v71[v95 >> 24] ^ v72[v95 >> 24] ^ (53 * ((53 * (v93 ^ (v68 + 2))) ^ ((1864610357 * ((v93 ^ (v68 + 2)) & 0x7FFFFFFFu)) >> 16))) ^ (-43 * ((1864610357 * ((1864610357 * ((v93 ^ (v68 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v68 + 2)) & 0x7FFFFFFFu)) >> 16))) >> 24)));
  v96 = 1864610357 * ((1864610357 * ((v93 ^ (v68 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v68 + 1)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v91) = (v96 ^ v70[(v96 >> 24) + 1] ^ v71[v96 >> 24] ^ v72[v96 >> 24] ^ (-43 * ((1864610357 * ((1864610357 * ((v93 ^ (v68 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v68 + 1)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ *(v68 + 1)) << 16;
  LODWORD(v87) = 1864610357 * ((*(v87 + v88) ^ v68) & 0x7FFFFFFF);
  v97 = 1864610357 * (v87 ^ WORD1(v87));
  *(v11 + 16) = v94 & 0xF9 ^ 0x3E80846E ^ (((((((v71[v97 >> 24] ^ v70[(v97 >> 24) + 1] ^ v72[v97 >> 24] ^ *v68 ^ v97 ^ (-43 * (v97 >> 24))) << 24) ^ 0x38D5CEA6) & ~v91 | v91 & 0x2A0000) ^ 0xED533901) & ~(v95 << 8) & 0xFFFFF7FF | (((v95 >> 3) & 1) << 11)) ^ 0x7CA04DA1) & (v94 ^ 0xFFFFFFBF);
  v98 = *v17;
  v99 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v94) = *(*v17 + v99);
  v100 = 1864610357 * ((1864610357 * ((v94 ^ (v68 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 7)) & 0x7FFFFFFF)) >> 16));
  v101 = *(&off_1010A0B50 + (v43 ^ 0x864C)) - 1334662703;
  v102 = *(&off_1010A0B50 + (v43 ^ 0x9A3A)) - 786902615;
  v103 = *(&off_1010A0B50 + v43 - 35127) - 525474106;
  v104 = 107 * ((1864610357 * ((1864610357 * ((v94 ^ (v68 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v105 = v102[v100 >> 24] ^ v101[(v100 >> 24) + 3] ^ v103[v100 >> 24] ^ *(v68 + 7) ^ v100;
  v106 = 1864610357 * ((1864610357 * ((v94 ^ (v68 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v90) = v70[(v106 >> 24) + 1] ^ *(v68 + 6) ^ v71[v106 >> 24] ^ v72[v106 >> 24] ^ (53 * ((53 * (v94 ^ (v68 + 6))) ^ ((1864610357 * ((v94 ^ (v68 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-43 * ((1864610357 * ((1864610357 * ((v94 ^ (v68 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v107 = 1864610357 * ((1864610357 * ((v94 ^ (v68 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v96) = (v70[(v107 >> 24) + 1] ^ *(v68 + 5) ^ v71[v107 >> 24] ^ v72[v107 >> 24] ^ (53 * ((53 * (v94 ^ (v68 + 5))) ^ ((1864610357 * ((v94 ^ (v68 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-43 * ((1864610357 * ((1864610357 * ((v94 ^ (v68 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v108 = 1864610357 * ((1864610357 * ((v94 ^ (v68 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v68 + 4)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 20) = ((((((((v108 ^ v70[(v108 >> 24) + 1] ^ v71[v108 >> 24] ^ v72[v108 >> 24] ^ (-43 * (v108 >> 24)) ^ *(v68 + 4)) << 24) ^ 0x5B2D8DF3) & ~v96 | v96 & 0xD20000) ^ 0x39E08923) & ~(v90 << 8) | (v90 << 8) & 0xFBFF) ^ 0xB851FE5C) & (v105 ^ ~v104 | 0xFFFFFF00) | (v105 ^ v104) & 0x73) ^ 0x2570DA68;
  v109 = STACK[0x3528];
  v110 = *v17;
  v111 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v73) = *(*v17 + v111);
  v112 = 1864610357 * ((1864610357 * ((v73 ^ (v68 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v73 ^ (v68 + 11)) & 0x7FFFFFFF)) >> 16));
  v113 = 107 * ((1864610357 * ((1864610357 * ((v73 ^ (v68 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v73 ^ (v68 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v112) = v101[(v112 >> 24) + 3] ^ *(v68 + 11) ^ v102[v112 >> 24] ^ v103[v112 >> 24] ^ v112;
  v114 = 1864610357 * ((1864610357 * ((v73 ^ (v68 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v73 ^ (v68 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v114) = (v102[v114 >> 24] ^ v101[(v114 >> 24) + 3] ^ v103[v114 >> 24] ^ *(v68 + 10) ^ v114 ^ (107 * BYTE3(v114)));
  LODWORD(v98) = *(v98 + v99);
  v115 = 1864610357 * ((1864610357 * ((v98 ^ (v68 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v98 ^ (v68 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v115) = (v101[(v115 >> 24) + 3] ^ *(v68 + 9) ^ v102[v115 >> 24] ^ v103[v115 >> 24] ^ (53 * ((53 * (v98 ^ (v68 + 9))) ^ ((1864610357 * ((v98 ^ (v68 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v98 ^ (v68 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v98 ^ (v68 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v116 = 1864610357 * ((1864610357 * ((v98 ^ (v68 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v98 ^ (v68 + 8)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 24) = ((((((((v102[v116 >> 24] ^ v101[(v116 >> 24) + 3] ^ v103[v116 >> 24] ^ *(v68 + 8) ^ v116 ^ (107 * (v116 >> 24))) << 24) ^ 0x99347064) & ~v115 | v115 & 0xCB0000) ^ 0xE77C8914) & ~(v114 << 8) & 0xFFFFF9FF | (((v114 >> 1) & 3) << 9)) ^ 0x6D4235A7) & (v112 ^ ~v113 | 0xFFFFFF00) | (v112 ^ v113) & 0x28) ^ 0xED5E9CC2;
  v117 = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v118 = 1864610357 * ((1864610357 * ((v117 ^ (v68 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v117 ^ (v68 + 15)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v116) = v101[(v118 >> 24) + 3] ^ *(v68 + 15) ^ v102[v118 >> 24] ^ v103[v118 >> 24] ^ v118;
  v119 = 1864610357 * ((1864610357 * ((v117 ^ (v68 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v117 ^ (v68 + 14)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v119) = (v101[(v119 >> 24) + 3] ^ *(v68 + 14) ^ v102[v119 >> 24] ^ v103[v119 >> 24] ^ v119 ^ (107 * BYTE3(v119))) << 8;
  v120 = 1864610357 * ((1864610357 * ((v117 ^ (v68 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v117 ^ (v68 + 13)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v115) = (v120 ^ v101[(v120 >> 24) + 3] ^ v102[v120 >> 24] ^ v103[v120 >> 24] ^ (107 * BYTE3(v120)) ^ *(v68 + 13)) << 16;
  LODWORD(v110) = 1864610357 * ((*(v110 + v111) ^ (v68 + 12)) & 0x7FFFFFFF);
  v121 = 1864610357 * (v110 ^ WORD1(v110));
  *(v11 + 28) = ((((((((v102[v121 >> 24] ^ v101[(v121 >> 24) + 3] ^ v103[v121 >> 24] ^ *(v68 + 12) ^ v121 ^ (107 * (v121 >> 24))) << 24) ^ 0xF6A26F58) & ~v115 | v115 & 0x5D0000) ^ 0x5873A92D) & ~v119 | v119 & 0x3900) ^ 0xFF49D5D4) & (v116 ^ ~(107 * BYTE3(v118)) | 0xFFFFFF00) | (v116 ^ (107 * (v118 >> 24))) & 0x5E) ^ 0xC9A17A44;
  v122 = *v17;
  v123 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v111) = *(*v17 + v123);
  v124 = 1864610357 * ((1864610357 * ((v111 ^ (v109 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ (v109 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v124) = v102[v124 >> 24] ^ v101[(v124 >> 24) + 3] ^ v103[v124 >> 24] ^ v109[3] ^ (53 * ((53 * (v111 ^ (v109 + 3))) ^ ((1864610357 * ((v111 ^ (v109 + 3)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v111 ^ (v109 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ (v109 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v125 = 1864610357 * ((1864610357 * ((v111 ^ (v109 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ (v109 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v125) = (v101[(v125 >> 24) + 3] ^ v109[2] ^ v102[v125 >> 24] ^ v103[v125 >> 24] ^ (53 * ((53 * (v111 ^ (v109 + 2))) ^ ((1864610357 * ((v111 ^ (v109 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v111 ^ (v109 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ (v109 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v126 = 1864610357 * ((1864610357 * ((v111 ^ (v109 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ (v109 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v112) = (v101[(v126 >> 24) + 3] ^ v109[1] ^ v102[v126 >> 24] ^ v103[v126 >> 24] ^ (53 * ((53 * (v111 ^ (v109 + 1))) ^ ((1864610357 * ((v111 ^ (v109 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v111 ^ (v109 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ (v109 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v127 = 1864610357 * ((1864610357 * ((v111 ^ v109) & 0x7FFFFFFF)) ^ ((1864610357 * ((v111 ^ v109) & 0x7FFFFFFF)) >> 16));
  *(v11 + 32) = v124 & 0x3C ^ 0xC1305F46 ^ (((((((v127 ^ v101[(v127 >> 24) + 3] ^ v102[v127 >> 24] ^ v103[v127 >> 24] ^ (107 * (v127 >> 24)) ^ *v109) << 24) ^ 0xD293A801) & ~v112 | v112 & 0x6C0000) ^ 0xADE0DC89) & ~v125 | v125 & 0x8B00) ^ 0x58E4924B) & (v124 ^ 0xFFFFFFEB);
  v128 = *v17;
  v129 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v114) = *(*v17 + v129);
  v130 = 1864610357 * ((1864610357 * ((v114 ^ (v109 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 7)) & 0x7FFFFFFF)) >> 16));
  v131 = *(&off_1010A0B50 + (v43 ^ 0x8E39)) - 583820878;
  v132 = *(&off_1010A0B50 + v43 - 35480) - 826595747;
  v133 = *(&off_1010A0B50 + v43 - 34203) - 820136126;
  LODWORD(v130) = v131[(v130 >> 24) + 1] ^ v109[7] ^ v132[v130 >> 24] ^ v133[v130 >> 24] ^ v130 ^ (-73 * ((1864610357 * ((1864610357 * ((v114 ^ (v109 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v134 = 1864610357 * ((1864610357 * ((v114 ^ (v109 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v126) = v134 ^ v101[(v134 >> 24) + 3] ^ v102[v134 >> 24] ^ v103[v134 >> 24] ^ (107 * BYTE3(v134)) ^ v109[6];
  LODWORD(v122) = *(v122 + v123);
  v135 = 1864610357 * ((1864610357 * ((v122 ^ (v109 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v122 ^ (v109 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v135) = (v101[(v135 >> 24) + 3] ^ v109[5] ^ v102[v135 >> 24] ^ v103[v135 >> 24] ^ (53 * ((53 * (v122 ^ (v109 + 5))) ^ ((1864610357 * ((v122 ^ (v109 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v122 ^ (v109 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v122 ^ (v109 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24)));
  v136 = 1864610357 * ((1864610357 * ((v122 ^ (v109 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v122 ^ (v109 + 4)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 36) = v130 & 0x54 ^ 0xCBFEF11 ^ (((((((v102[v136 >> 24] ^ v101[(v136 >> 24) + 3] ^ v103[v136 >> 24] ^ v109[4] ^ v136 ^ (107 * (v136 >> 24))) << 24) ^ 0xCC1FD41B) & ~(v135 << 16) & 0xFF1FFFFF | (v135 >> 5 << 21)) ^ 0x51F7A908) & ~(v126 << 8) | (v126 << 8) & 0x8200) ^ 0xE4CEE6B8) & (v130 ^ 0xFFFFFFBF);
  LODWORD(v114) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v137 = 1864610357 * ((1864610357 * ((v114 ^ (v109 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v137) = v131[(v137 >> 24) + 1] ^ v109[11] ^ v132[v137 >> 24] ^ v133[v137 >> 24] ^ v137 ^ (-73 * ((1864610357 * ((1864610357 * ((v114 ^ (v109 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v138 = 1864610357 * ((1864610357 * ((v114 ^ (v109 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v138) = (v131[(v138 >> 24) + 1] ^ v109[10] ^ v132[v138 >> 24] ^ v133[v138 >> 24] ^ (53 * ((53 * (v114 ^ (v109 + 10))) ^ ((1864610357 * ((v114 ^ (v109 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-73 * ((1864610357 * ((1864610357 * ((v114 ^ (v109 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v139 = 1864610357 * ((1864610357 * ((v114 ^ (v109 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v103) = (v139 ^ v131[(v139 >> 24) + 1] ^ v132[v139 >> 24] ^ v133[v139 >> 24] ^ (-73 * ((1864610357 * ((1864610357 * ((v114 ^ (v109 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v109 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v109[9]);
  v140 = 1864610357 * ((1864610357 * ((*(v128 + v129) ^ (v109 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v128 + v129) ^ (v109 + 8)) & 0x7FFFFFFFu)) >> 16));
  *(v11 + 40) = v137 & 0x27 ^ 0xEC2B5F72 ^ (((((((v132[v140 >> 24] ^ v131[(v140 >> 24) + 1] ^ v133[v140 >> 24] ^ v109[8] ^ v140 ^ (-73 * (v140 >> 24))) << 24) ^ 0x1BCF2112) & ~(v103 << 16) & 0xFFCFFFFF | (((v103 >> 4) & 3) << 20)) ^ 0x2527C3C) & ~v138 | v138 & 0xA200) ^ 0xFA8907F6) & (v137 ^ 0xFFFFFFFE);
  v141 = v109[15];
  v142 = STACK[0x5A78];
  v143 = *v17;
  v144 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v128) = *(*v17 + v144);
  LODWORD(v139) = v109 + 14;
  LOBYTE(v134) = v109[14];
  LODWORD(v138) = v109 + 13;
  LOBYTE(v114) = v109[13];
  LODWORD(v103) = v109 + 12;
  LODWORD(v57) = v109[12];
  v145 = 1864610357 * ((1864610357 * ((v128 ^ (v109 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ (v109 + 15)) & 0x7FFFFFFF)) >> 16));
  v146 = 1864610357 * ((1864610357 * ((v128 ^ v139) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ v139) & 0x7FFFFFFF)) >> 16));
  LODWORD(v146) = (v131[(v146 >> 24) + 1] ^ v134 ^ v132[v146 >> 24] ^ v133[v146 >> 24] ^ (53 * ((53 * (v128 ^ v139)) ^ ((1864610357 * ((v128 ^ v139) & 0x7FFFFFFF)) >> 16))) ^ (-73 * ((1864610357 * ((1864610357 * ((v128 ^ v139) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ v139) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v147 = 1864610357 * ((1864610357 * ((v128 ^ v138) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ v138) & 0x7FFFFFFF)) >> 16));
  LODWORD(v147) = (v131[(v147 >> 24) + 1] ^ v114 ^ v132[v147 >> 24] ^ v133[v147 >> 24] ^ v147 ^ (-73 * BYTE3(v147))) << 16;
  v148 = 1864610357 * ((1864610357 * ((v128 ^ v103) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ v103) & 0x7FFFFFFF)) >> 16));
  *(v11 + 44) = (((((((v131[(v148 >> 24) + 1] ^ v148 ^ v132[v148 >> 24] ^ v133[v148 >> 24] ^ (-73 * (v148 >> 24)) ^ v57 ^ 0x3B) << 24) ^ 0x9E727943) & ~v147 | v147 & 0x8D0000) ^ 0xED9D93BC) & ~v146 | v146 & 0x1500) ^ 0x55C7C0FF | (v132[v145 >> 24] ^ v131[(v145 >> 24) + 1] ^ v133[v145 >> 24] ^ v141 ^ v145 ^ (-73 * BYTE3(v145)))) ^ 0xD964CFCA;
  v149 = STACK[0x8910];
  v150 = *v17;
  v151 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v114) = *(*v17 + v151);
  v152 = 1864610357 * ((1864610357 * ((v114 ^ (v142 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v100) = -73 * ((1864610357 * ((1864610357 * ((v114 ^ (v142 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v152) = v131[(v152 >> 24) + 1] ^ v142[3] ^ v132[v152 >> 24] ^ v133[v152 >> 24] ^ v152;
  v153 = 1864610357 * ((1864610357 * ((v114 ^ (v142 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v153) = (v132[v153 >> 24] ^ v131[(v153 >> 24) + 1] ^ v133[v153 >> 24] ^ v142[2] ^ v153 ^ (-73 * BYTE3(v153))) << 8;
  LODWORD(v143) = *(v143 + v144);
  v154 = 1864610357 * ((1864610357 * ((v143 ^ (v142 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v143 ^ (v142 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v154) = (v131[(v154 >> 24) + 1] ^ v142[1] ^ v132[v154 >> 24] ^ v133[v154 >> 24] ^ (53 * ((53 * (v143 ^ (v142 + 1))) ^ ((1864610357 * ((v143 ^ (v142 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-73 * ((1864610357 * ((1864610357 * ((v143 ^ (v142 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v143 ^ (v142 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v155 = 1864610357 * ((1864610357 * ((v143 ^ v142) & 0x7FFFFFFF)) ^ ((1864610357 * ((v143 ^ v142) & 0x7FFFFFFF)) >> 16));
  *(v11 + 48) = ((((((((v131[(v155 >> 24) + 1] ^ v132[v155 >> 24] ^ v133[v155 >> 24] ^ *v142 ^ v155 ^ (-73 * (v155 >> 24)) ^ 0xEB) << 24) ^ 0xA5998922) & ~v154 | v154 & 0x66666666) ^ 0xB2F25591) & ~v153 | v153 & 0x2300) ^ 0x9B49AEB0) & (v152 ^ ~v100 | 0xFFFFFF00) | (v152 ^ v100) & 0xFC) ^ 0xF0AB6E1E;
  LODWORD(v114) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v156 = 1864610357 * ((1864610357 * ((v114 ^ (v142 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 7)) & 0x7FFFFFFF)) >> 16));
  v157 = *(&off_1010A0B50 + (v43 ^ 0x8F1B)) - 28333630;
  v158 = *(&off_1010A0B50 + (v43 ^ 0x8DF7)) - 1975602738;
  v159 = *(&off_1010A0B50 + v43 - 31488) - 110193995;
  LODWORD(v73) = -37 * ((1864610357 * ((1864610357 * ((v114 ^ (v142 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v156) = v157[(v156 >> 24) + 3] ^ v142[7] ^ v158[v156 >> 24] ^ v159[v156 >> 24] ^ v156;
  v160 = 1864610357 * ((1864610357 * ((v114 ^ (v142 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 6)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v160) = (v131[(v160 >> 24) + 1] ^ v142[6] ^ (53 * ((53 * (v114 ^ (v142 + 6))) ^ ((1864610357 * ((v114 ^ (v142 + 6)) & 0x7FFFFFFF)) >> 16))) ^ v132[v160 >> 24] ^ v133[v160 >> 24] ^ (-73 * BYTE3(v160))) << 8;
  v161 = 1864610357 * ((1864610357 * ((v114 ^ (v142 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v142 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v153) = ((-73 * BYTE3(v161)) ^ v161 ^ v131[(v161 >> 24) + 1] ^ v132[v161 >> 24] ^ v133[v161 >> 24] ^ v142[5]) << 16;
  v162 = 1864610357 * ((1864610357 * ((*(v150 + v151) ^ (v142 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v150 + v151) ^ (v142 + 4)) & 0x7FFFFFFFu)) >> 16));
  *(v11 + 52) = ((((((((v131[(v162 >> 24) + 1] ^ v132[v162 >> 24] ^ v133[v162 >> 24] ^ v142[4] ^ v162 ^ (-73 * (v162 >> 24)) ^ 0xFFFFFFC3) << 24) ^ 0xB9304E0C) & ~v153 | v153 & 0xFFCFFFFF) ^ 0x4072DE84) & ~v160 | v160 & 0x6F00) ^ 0x4599ED8A) & (v156 ^ ~v73 | 0xFFFFFF00) | (v156 ^ v73) & 0xFD) ^ 0xE6326C47;
  v163 = *v17;
  v164 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v147) = *(*v17 + v164);
  v165 = 1864610357 * ((1864610357 * ((v147 ^ (v142 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v160) = -37 * ((1864610357 * ((1864610357 * ((v147 ^ (v142 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v165) = v158[v165 >> 24] ^ v157[(v165 >> 24) + 3] ^ v159[v165 >> 24] ^ v142[11] ^ v165;
  v166 = 1864610357 * ((1864610357 * ((v147 ^ (v142 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v166) = (v157[(v166 >> 24) + 3] ^ v142[10] ^ v158[v166 >> 24] ^ v159[v166 >> 24] ^ (53 * ((53 * (v147 ^ (v142 + 10))) ^ ((1864610357 * ((v147 ^ (v142 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-37 * ((1864610357 * ((1864610357 * ((v147 ^ (v142 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v167 = 1864610357 * ((1864610357 * ((v147 ^ (v142 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v153) = (v157[(v167 >> 24) + 3] ^ v142[9] ^ v158[v167 >> 24] ^ v159[v167 >> 24] ^ (53 * ((53 * (v147 ^ (v142 + 9))) ^ ((1864610357 * ((v147 ^ (v142 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-37 * ((1864610357 * ((1864610357 * ((v147 ^ (v142 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v168 = 1864610357 * ((1864610357 * ((v147 ^ (v142 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v142 + 8)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 56) = ((((((((v168 ^ v157[(v168 >> 24) + 3] ^ v158[v168 >> 24] ^ v159[v168 >> 24] ^ (-37 * (v168 >> 24)) ^ v142[8]) << 24) ^ 0x2D7B0A1A) & ~v153 | v153 & 0x840000) ^ 0x92CB5AC2) & ~v166 | v166 & 0xAF00) ^ 0xA90732FE) & (v165 ^ ~v160 | 0xFFFFFF00) | (v165 ^ v160) & 0xD9) ^ 0x535C24D7;
  v169 = v142[15];
  v170 = *v17;
  v171 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v167) = *(*v17 + v171);
  v172 = STACK[0x8910];
  v173 = 1864610357 * ((1864610357 * ((v167 ^ (v142 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v167 ^ (v142 + 15)) & 0x7FFFFFFF)) >> 16));
  v174 = 1864610357 * ((1864610357 * ((v167 ^ (v142 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v167 ^ (v142 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v174) = (v158[v174 >> 24] ^ v157[(v174 >> 24) + 3] ^ v159[v174 >> 24] ^ v142[14] ^ v174 ^ (-37 * BYTE3(v174))) << 8;
  LODWORD(v163) = *(v163 + v164);
  v175 = 1864610357 * ((1864610357 * ((v163 ^ (v142 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v163 ^ (v142 + 13)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v175) = (v157[(v175 >> 24) + 3] ^ v142[13] ^ v158[v175 >> 24] ^ v159[v175 >> 24] ^ v175 ^ (-37 * BYTE3(v175)));
  v176 = 1864610357 * ((1864610357 * ((v163 ^ (v142 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v163 ^ (v142 + 12)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 60) = (v157[(v173 >> 24) + 3] ^ v169 ^ v158[v173 >> 24] ^ v159[v173 >> 24] ^ v173 ^ (-37 * (v173 >> 24))) & 0xEF ^ 0x94CF3D4A ^ (((((((v158[v176 >> 24] ^ v157[(v176 >> 24) + 3] ^ v159[v176 >> 24] ^ v142[12] ^ v176 ^ (-37 * (v176 >> 24))) << 24) ^ 0x10BFCFB4) & ~(v175 << 16) & 0xFFBFFFFF | (((v175 >> 6) & 1) << 22)) ^ 0xADFB6F78) & ~v174 | v174 & 0x5F00) ^ 0xFE2548DC) & ((v157[(v173 >> 24) + 3] ^ v169 ^ v158[v173 >> 24] ^ v159[v173 >> 24] ^ v173 ^ (-37 * BYTE3(v173))) ^ 0xFFFFFFFD);
  LODWORD(v166) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v177 = 1864610357 * ((1864610357 * ((v166 ^ (v172 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v166 ^ (v172 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v174) = -37 * ((1864610357 * ((1864610357 * ((v166 ^ (v172 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v166 ^ (v172 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v177) = v157[(v177 >> 24) + 3] ^ *(v172 + 3) ^ v158[v177 >> 24] ^ v159[v177 >> 24] ^ v177;
  v178 = 1864610357 * ((1864610357 * ((v166 ^ (v172 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v166 ^ (v172 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v178) = (v157[(v178 >> 24) + 3] ^ *(v172 + 2) ^ v158[v178 >> 24] ^ v159[v178 >> 24] ^ (53 * ((53 * (v166 ^ (v172 + 2))) ^ ((1864610357 * ((v166 ^ (v172 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-37 * ((1864610357 * ((1864610357 * ((v166 ^ (v172 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v166 ^ (v172 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v179 = 1864610357 * ((1864610357 * ((v166 ^ (v172 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v166 ^ (v172 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v175) = (v179 ^ v157[(v179 >> 24) + 3] ^ v158[v179 >> 24] ^ v159[v179 >> 24] ^ (-37 * ((1864610357 * ((1864610357 * ((v166 ^ (v172 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v166 ^ (v172 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *(v172 + 1)) << 16;
  LODWORD(v170) = 1864610357 * ((*(v170 + v171) ^ v172) & 0x7FFFFFFF);
  v180 = 1864610357 * (v170 ^ WORD1(v170));
  *(v11 + 64) = ((((((((v157[(v180 >> 24) + 3] ^ v158[v180 >> 24] ^ v159[v180 >> 24] ^ *v172 ^ v180 ^ (-37 * (v180 >> 24)) ^ 0x5A) << 24) ^ 0xF4B7049A) & ~v175 | v175 & 0x480000) ^ 0x356F5D9E) & ~v178 | v178 & 0xA600) ^ 0xE98D81F9) & (v177 ^ ~v174 | 0xFFFFFF00) | (v177 ^ v174) & 2) ^ 0x75DCA75C;
  v181 = *v17;
  v182 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v147) = *(*v17 + v182);
  v183 = 1864610357 * ((1864610357 * ((v147 ^ (v149 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 7)) & 0x7FFFFFFF)) >> 16));
  v184 = STACK[0xF10];
  v185 = *(&off_1010A0B50 + (STACK[0xF10] - 34436)) - 294954223;
  v186 = *(&off_1010A0B50 + (STACK[0xF10] - 31053)) - 67633666;
  v187 = *(&off_1010A0B50 + (STACK[0xF10] ^ 0x828A)) - 1221832743;
  v188 = -23 * ((1864610357 * ((1864610357 * ((v147 ^ (v149 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v166) = v186[(v183 >> 24) + 3] ^ v185[(v183 >> 24) + 2] ^ v187[v183 >> 24] ^ v149[7] ^ v183;
  v189 = 1864610357 * ((1864610357 * ((v147 ^ (v149 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v174) = v157[(v189 >> 24) + 3] ^ v149[6] ^ v158[v189 >> 24] ^ v159[v189 >> 24] ^ (53 * ((53 * (v147 ^ (v149 + 6))) ^ ((1864610357 * ((v147 ^ (v149 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-37 * ((1864610357 * ((1864610357 * ((v147 ^ (v149 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v190 = 1864610357 * ((1864610357 * ((v147 ^ (v149 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v179) = v157[(v190 >> 24) + 3] ^ v149[5] ^ v158[v190 >> 24] ^ v159[v190 >> 24] ^ (53 * ((53 * (v147 ^ (v149 + 5))) ^ ((1864610357 * ((v147 ^ (v149 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-37 * ((1864610357 * ((1864610357 * ((v147 ^ (v149 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v191 = 1864610357 * ((1864610357 * ((v147 ^ (v149 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v149 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v157) = (v179 << 16) | ((v191 ^ v157[(v191 >> 24) + 3] ^ v158[v191 >> 24] ^ v159[v191 >> 24] ^ (-37 * (v191 >> 24)) ^ v149[4]) << 24) | (v174 << 8);
  *(v11 + 68) = (((v157 - ((2 * v157) & 0x761FA00) - 2085552744) ^ 0x46921A13) & (v166 ^ ~v188 | 0xFFFFFF00) | (v166 ^ v188) & 0x74) ^ 0x9215D332;
  v192 = v149[11];
  v193 = v149 + 11;
  v194 = *v17;
  v195 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v179) = *(*v17 + v195);
  LODWORD(v190) = v149 + 10;
  LOBYTE(v174) = v149[10];
  v196 = 1864610357 * ((1864610357 * ((v179 ^ (v149 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v179 ^ (v149 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v183) = *(v193 - 2);
  LODWORD(v189) = v185[(v196 >> 24) + 2] ^ v192 ^ v186[(v196 >> 24) + 3] ^ v187[v196 >> 24];
  v197 = *(v193 - 3);
  v198 = 1864610357 * ((1864610357 * ((v179 ^ v190) & 0x7FFFFFFF)) ^ ((1864610357 * ((v179 ^ v190) & 0x7FFFFFFF)) >> 16));
  LODWORD(v181) = *(v181 + v182);
  v199 = 1864610357 * ((1864610357 * ((v181 ^ (v193 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v181 ^ (v193 - 2)) & 0x7FFFFFFF)) >> 16));
  v200 = 1864610357 * ((1864610357 * ((v181 ^ (v193 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v181 ^ (v193 - 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v200) = ((v185[(v199 >> 24) + 2] ^ v183 ^ v186[(v199 >> 24) + 3] ^ v187[v199 >> 24] ^ v199 ^ (-23 * BYTE3(v199))) << 16) | ((v186[(v200 >> 24) + 3] ^ v185[(v200 >> 24) + 2] ^ v187[v200 >> 24] ^ v197 ^ v200 ^ (-23 * (v200 >> 24))) << 24) | ((v186[(v198 >> 24) + 3] ^ v185[(v198 >> 24) + 2] ^ v187[v198 >> 24] ^ v174 ^ v198 ^ (-23 * BYTE3(v198))) << 8);
  *(v11 + 72) = (((v200 - ((2 * v200) & 0x8D05E800) - 964496246) ^ 0x689DBE4E) & ((v189 ^ v196) ^ ~(-23 * BYTE3(v196)) | 0xFFFFFF00) | (v189 ^ v196 ^ (-23 * (v196 >> 24))) & 0x3B) ^ 0x63476F6;
  v201 = *(v172 + 15);
  LODWORD(v191) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  LODWORD(v166) = v172 + 14;
  LOBYTE(v190) = *(v172 + 14);
  LODWORD(v199) = v172 + 13;
  LOBYTE(v128) = *(v172 + 13);
  v202 = STACK[0x6248];
  LODWORD(v200) = v172 + 12;
  LODWORD(v196) = *(v172 + 12);
  v203 = 1864610357 * ((1864610357 * ((v191 ^ (v172 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v191 ^ (v172 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v174) = -23 * (v203 >> 24);
  LODWORD(v203) = v185[(v203 >> 24) + 2] ^ v201 ^ v186[(v203 >> 24) + 3] ^ v187[v203 >> 24] ^ v203;
  v204 = 1864610357 * ((1864610357 * ((v191 ^ v166) & 0x7FFFFFFF)) ^ ((1864610357 * ((v191 ^ v166) & 0x7FFFFFFF)) >> 16));
  v205 = 1864610357 * ((1864610357 * ((v191 ^ v199) & 0x7FFFFFFF)) ^ ((1864610357 * ((v191 ^ v199) & 0x7FFFFFFF)) >> 16));
  LODWORD(v194) = 1864610357 * ((*(v194 + v195) ^ v200) & 0x7FFFFFFF);
  v206 = 1864610357 * (v194 ^ WORD1(v194));
  LODWORD(v196) = ((v205 ^ v185[(v205 >> 24) + 2] ^ v186[(v205 >> 24) + 3] ^ v187[v205 >> 24] ^ (-23 * BYTE3(v205)) ^ v128) << 16) | ((v186[(v206 >> 24) + 3] ^ v185[(v206 >> 24) + 2] ^ v187[v206 >> 24] ^ v196 ^ v206 ^ (-23 * (v206 >> 24))) << 24) | ((v185[(v204 >> 24) + 2] ^ v190 ^ v186[(v204 >> 24) + 3] ^ v187[v204 >> 24] ^ v204 ^ (-23 * BYTE3(v204))) << 8);
  *(v11 + 76) = (((v196 - ((2 * v196) & 0xFA408400) + 2099266146) ^ 0x2EB9CBB0) & (v203 ^ ~v174 | 0xFFFFFF00) | (v203 ^ v174) & 0x2D) ^ 0x33055D98;
  v207 = *v17;
  v208 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v195) = *(*v17 + v208);
  v209 = 1864610357 * ((1864610357 * ((v195 ^ (v202 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v202 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v190) = -23 * ((1864610357 * ((1864610357 * ((v195 ^ (v202 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v202 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v209) = v186[(v209 >> 24) + 3] ^ v185[(v209 >> 24) + 2] ^ v187[v209 >> 24] ^ *(v202 + 3) ^ v209;
  v210 = 1864610357 * ((1864610357 * ((v195 ^ (v202 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v202 + 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v210) = v185[(v210 >> 24) + 2] ^ *(v202 + 2) ^ v186[(v210 >> 24) + 3] ^ v187[v210 >> 24] ^ (53 * ((53 * (v195 ^ (v202 + 2))) ^ ((1864610357 * ((v195 ^ (v202 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-23 * ((1864610357 * ((1864610357 * ((v195 ^ (v202 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v202 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v211 = 1864610357 * ((1864610357 * ((v195 ^ (v202 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v202 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v200) = (v185[(v211 >> 24) + 2] ^ *(v202 + 1) ^ v186[(v211 >> 24) + 3] ^ v187[v211 >> 24] ^ (53 * ((53 * (v195 ^ (v202 + 1))) ^ ((1864610357 * ((v195 ^ (v202 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-23 * ((1864610357 * ((1864610357 * ((v195 ^ (v202 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v202 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v212 = 1864610357 * ((1864610357 * ((v195 ^ v202) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ v202) & 0x7FFFFFFF)) >> 16));
  LODWORD(v212) = v200 & 0xFFFF00FF | ((v212 ^ v185[(v212 >> 24) + 2] ^ v186[(v212 >> 24) + 3] ^ v187[v212 >> 24] ^ (-23 * (v212 >> 24)) ^ *v202) << 24) | (v210 << 8);
  *(v11 + 80) = (((v212 - ((2 * v212) & 0xF709E200) - 75173393) ^ 0xEC8220F1) & (v209 ^ ~v190 | 0xFFFFFF00) | (v209 ^ v190) & 0xE1) ^ 0xCA4DE14F;
  v213 = *v17;
  v214 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v190) = *(*v17 + v214);
  v215 = 1864610357 * ((1864610357 * ((v190 ^ (v202 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 7)) & 0x7FFFFFFF)) >> 16));
  v216 = *(&off_1010A0B50 + (v184 ^ 0x803F)) - 981321786;
  v217 = *(&off_1010A0B50 + (v184 ^ 0x82C5)) - 888473970;
  v218 = *(&off_1010A0B50 + (v184 ^ 0x857C)) - 1047727839;
  LODWORD(v174) = 91 * ((1864610357 * ((1864610357 * ((v190 ^ (v202 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v215) = v216[(v215 >> 24) + 3] ^ *(v202 + 7) ^ v217[(v215 >> 24) + 6] ^ v218[v215 >> 24] ^ v215;
  v219 = 1864610357 * ((1864610357 * ((v190 ^ (v202 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v204) = v219 ^ v185[(v219 >> 24) + 2] ^ v186[(v219 >> 24) + 3] ^ v187[v219 >> 24] ^ (-23 * BYTE3(v219)) ^ *(v202 + 6);
  LODWORD(v208) = *(v207 + v208);
  v220 = 1864610357 * ((1864610357 * ((v208 ^ (v202 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v202 + 5)) & 0x7FFFFFFF)) >> 16));
  v221 = STACK[0x8F60];
  LODWORD(v220) = (v185[(v220 >> 24) + 2] ^ *(v202 + 5) ^ v186[(v220 >> 24) + 3] ^ v187[v220 >> 24] ^ (53 * ((53 * (v208 ^ (v202 + 5))) ^ ((1864610357 * ((v208 ^ (v202 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-23 * ((1864610357 * ((1864610357 * ((v208 ^ (v202 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v202 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v222 = 1864610357 * ((1864610357 * ((v208 ^ (v202 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v202 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v180) = v220 & 0xFFFF00FF | ((v186[(v222 >> 24) + 3] ^ v185[(v222 >> 24) + 2] ^ v187[v222 >> 24] ^ *(v202 + 4) ^ v222 ^ (-23 * (v222 >> 24))) << 24) | (v204 << 8);
  *(v11 + 84) = (((v180 - ((2 * v180) & 0x6C70E800) - 1237814263) ^ 0xA5DD8198) & (v215 ^ ~v174 | 0xFFFFFF00) | (v215 ^ v174) & 0x6E) ^ 0x4C46B243;
  LODWORD(v190) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v223 = 1864610357 * ((1864610357 * ((v190 ^ (v202 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v189) = 91 * ((1864610357 * ((1864610357 * ((v190 ^ (v202 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v223) = v216[(v223 >> 24) + 3] ^ *(v202 + 11) ^ v217[(v223 >> 24) + 6] ^ v218[v223 >> 24] ^ v223;
  v224 = 1864610357 * ((1864610357 * ((v190 ^ (v202 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 10)) & 0x7FFFFFFF)) >> 16));
  v225 = 1864610357 * ((1864610357 * ((v190 ^ (v202 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 9)) & 0x7FFFFFFF)) >> 16));
  v226 = 1864610357 * ((1864610357 * ((*(v213 + v214) ^ (v202 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v213 + v214) ^ (v202 + 8)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v226) = ((v225 ^ v216[(v225 >> 24) + 3] ^ v217[(v225 >> 24) + 6] ^ v218[v225 >> 24] ^ (91 * ((1864610357 * ((1864610357 * ((v190 ^ (v202 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *(v202 + 9)) << 16) | ((v217[(v226 >> 24) + 6] ^ v216[(v226 >> 24) + 3] ^ v218[v226 >> 24] ^ *(v202 + 8) ^ v226 ^ (91 * (v226 >> 24))) << 24) | ((v216[(v224 >> 24) + 3] ^ *(v202 + 10) ^ v217[(v224 >> 24) + 6] ^ v218[v224 >> 24] ^ (53 * ((53 * (v190 ^ (v202 + 10))) ^ ((1864610357 * ((v190 ^ (v202 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (91 * ((1864610357 * ((1864610357 * ((v190 ^ (v202 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ (v202 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  *(v11 + 88) = (((v226 - ((2 * v226) & 0x5C973C00) + 776707767) ^ 0xF916E175) & (v223 ^ ~v189 | 0xFFFFFF00) | (v223 ^ v189) & 0x3D) ^ 0x104B2D59;
  v227 = *v17;
  v228 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v187) = *(*v17 + v228);
  v229 = 1864610357 * ((1864610357 * ((v187 ^ (v202 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ (v202 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v185) = v217[(v229 >> 24) + 6] ^ v216[(v229 >> 24) + 3] ^ v218[v229 >> 24] ^ *(v202 + 15) ^ v229;
  v230 = 1864610357 * ((1864610357 * ((v187 ^ (v202 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ (v202 + 14)) & 0x7FFFFFFF)) >> 16));
  v231 = 1864610357 * ((1864610357 * ((v187 ^ (v202 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ (v202 + 13)) & 0x7FFFFFFF)) >> 16));
  v232 = 1864610357 * ((1864610357 * ((v187 ^ (v202 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ (v202 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v202) = ((v216[(v231 >> 24) + 3] ^ *(v202 + 13) ^ v217[(v231 >> 24) + 6] ^ v218[v231 >> 24] ^ v231 ^ (91 * BYTE3(v231))) << 16) | ((v232 ^ v216[(v232 >> 24) + 3] ^ v217[(v232 >> 24) + 6] ^ v218[v232 >> 24] ^ (91 * (v232 >> 24)) ^ *(v202 + 12)) << 24) | ((v216[(v230 >> 24) + 3] ^ *(v202 + 14) ^ v217[(v230 >> 24) + 6] ^ v218[v230 >> 24] ^ v230 ^ (91 * BYTE3(v230))) << 8);
  *(v11 + 92) = (((v202 - ((2 * v202) & 0xC8717C00) - 466043157) ^ 0x9029FF48) & (v185 ^ ~(91 * BYTE3(v229)) | 0xFFFFFF00) | (v185 ^ (91 * (v229 >> 24))) & 0x5C) ^ 0x4DB7F326;
  v233 = *v17;
  v234 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v220) = *(*v17 + v234);
  v235 = 1864610357 * ((1864610357 * ((v220 ^ (v221 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v220 ^ (v221 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v174) = 91 * ((1864610357 * ((1864610357 * ((v220 ^ (v221 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v220 ^ (v221 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v235) = v216[(v235 >> 24) + 3] ^ v221[3] ^ v217[(v235 >> 24) + 6] ^ v218[v235 >> 24] ^ v235;
  v236 = 1864610357 * ((1864610357 * ((v220 ^ (v221 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v220 ^ (v221 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v227) = *(v227 + v228);
  LOBYTE(v228) = v217[(v236 >> 24) + 6] ^ v216[(v236 >> 24) + 3] ^ v218[v236 >> 24] ^ v221[2] ^ v236 ^ (91 * BYTE3(v236));
  v237 = 1864610357 * ((1864610357 * ((v227 ^ (v221 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v227 ^ (v221 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v187) = (v216[(v237 >> 24) + 3] ^ v221[1] ^ v217[(v237 >> 24) + 6] ^ v218[v237 >> 24] ^ (53 * ((53 * (v227 ^ (v221 + 1))) ^ ((1864610357 * ((v227 ^ (v221 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (91 * ((1864610357 * ((1864610357 * ((v227 ^ (v221 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v227 ^ (v221 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v238 = 1864610357 * ((1864610357 * ((v227 ^ v221) & 0x7FFFFFFF)) ^ ((1864610357 * ((v227 ^ v221) & 0x7FFFFFFF)) >> 16));
  LODWORD(v238) = v187 & 0xFFFF00FF | ((v217[(v238 >> 24) + 6] ^ v216[(v238 >> 24) + 3] ^ v218[v238 >> 24] ^ *v221 ^ v238 ^ (91 * (v238 >> 24))) << 24) | (v228 << 8);
  *(v11 + 96) = ((v235 ^ v174) & 0x14 | 0x40000000) ^ 0xE83F64AC ^ ((v238 - ((2 * v238) & 0xE0D39200) + 1885981091) ^ 0xE9153E48) & (v235 ^ ~v174 | 0xFFFFFF00);
  LODWORD(v225) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v239 = 1864610357 * ((1864610357 * ((v225 ^ (v221 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v225 ^ (v221 + 7)) & 0x7FFFFFFF)) >> 16));
  v240 = *(&off_1010A0B50 + (v184 ^ 0x8273)) - 1676412886;
  v241 = *(&off_1010A0B50 + (v184 ^ 0x8577)) - 1639647922;
  v242 = *(&off_1010A0B50 + (v184 ^ 0x8865)) - 254657810;
  LOBYTE(v174) = -67 * ((1864610357 * ((1864610357 * ((v225 ^ (v221 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v225 ^ (v221 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v239) = v240[(v239 >> 24) + 4] ^ v221[7] ^ v241[(v239 >> 24) + 1] ^ v242[v239 >> 24] ^ v239;
  v243 = 1864610357 * ((1864610357 * ((v225 ^ (v221 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v225 ^ (v221 + 6)) & 0x7FFFFFFF)) >> 16));
  v244 = 1864610357 * ((1864610357 * ((v225 ^ (v221 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v225 ^ (v221 + 5)) & 0x7FFFFFFF)) >> 16));
  v245 = 1864610357 * ((1864610357 * ((*(v233 + v234) ^ (v221 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v233 + v234) ^ (v221 + 4)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v216) = (((91 * BYTE3(v244)) ^ v244 ^ v216[(v244 >> 24) + 3] ^ v217[(v244 >> 24) + 6] ^ v218[v244 >> 24] ^ v221[5]) << 16) | ((v217[(v245 >> 24) + 6] ^ v216[(v245 >> 24) + 3] ^ v218[v245 >> 24] ^ v221[4] ^ v245 ^ (91 * (v245 >> 24))) << 24) | ((v216[(v243 >> 24) + 3] ^ v221[6] ^ (53 * ((53 * (v225 ^ (v221 + 6))) ^ ((1864610357 * ((v225 ^ (v221 + 6)) & 0x7FFFFFFF)) >> 16))) ^ v217[(v243 >> 24) + 6] ^ v218[v243 >> 24] ^ (91 * BYTE3(v243))) << 8);
  *(v11 + 100) = (((v216 - ((2 * v216) & 0xB18FC600) - 657988771) ^ 0x3BECCB9C) & (v239 ^ ~v174 | 0xFFFFFF00) | (v239 ^ v174) & 0x3E) ^ 0x314E4874;
  v246 = v221[11];
  v247 = *v17;
  v248 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v187) = *(*v17 + v248);
  LODWORD(v243) = v221 + 10;
  LOBYTE(v239) = v221[10];
  LODWORD(v230) = v221 + 9;
  LOBYTE(v244) = v221[9];
  v249 = STACK[0x8F60];
  LODWORD(v217) = v221 + 8;
  LODWORD(v216) = v221[8];
  v250 = 1864610357 * ((1864610357 * ((v187 ^ (v221 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ (v221 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v211) = v241[(v250 >> 24) + 1] ^ v240[(v250 >> 24) + 4] ^ v242[v250 >> 24] ^ v246 ^ v250;
  v251 = 1864610357 * ((1864610357 * ((v187 ^ v243) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ v243) & 0x7FFFFFFF)) >> 16));
  v252 = 1864610357 * ((1864610357 * ((v187 ^ v230) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ v230) & 0x7FFFFFFF)) >> 16));
  v253 = 1864610357 * ((1864610357 * ((v187 ^ v217) & 0x7FFFFFFF)) ^ ((1864610357 * ((v187 ^ v217) & 0x7FFFFFFF)) >> 16));
  LODWORD(v216) = ((v240[(v252 >> 24) + 4] ^ v244 ^ v241[(v252 >> 24) + 1] ^ v242[v252 >> 24] ^ v252 ^ (-67 * BYTE3(v252))) << 16) | ((v253 ^ v240[(v253 >> 24) + 4] ^ v241[(v253 >> 24) + 1] ^ v242[v253 >> 24] ^ (-67 * (v253 >> 24)) ^ v216) << 24) | ((v240[(v251 >> 24) + 4] ^ v239 ^ v241[(v251 >> 24) + 1] ^ v242[v251 >> 24] ^ v251 ^ (-67 * BYTE3(v251))) << 8);
  *(v11 + 104) = ((v211 ^ (-67 * (v250 >> 24))) & 0x76 | 0xB0010000) ^ 0xC4AAB50C ^ ((v216 - ((2 * v216) & 0xEBC08E00) + 1977632643) ^ 0x3A1EBA0A) & (v211 ^ ~(-67 * BYTE3(v250)) | 0xFFFFFF00);
  v254 = *(v249 + 15);
  LODWORD(v252) = v249 + 14;
  LOBYTE(v251) = *(v249 + 14);
  v255 = v249 + 15;
  v256 = *v17;
  v257 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v243) = *(*v17 + v257);
  LODWORD(v244) = v249 + 13;
  v258 = 1864610357 * ((1864610357 * ((v243 ^ (v249 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v243 ^ (v249 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v174) = -67 * (v258 >> 24);
  LODWORD(v258) = v240[(v258 >> 24) + 4] ^ v254 ^ v241[(v258 >> 24) + 1] ^ v242[v258 >> 24] ^ v258;
  LOBYTE(v239) = v258 ^ ~v174;
  LODWORD(v211) = (v258 ^ v174) & 0xD4;
  v259 = 1864610357 * ((1864610357 * ((v243 ^ v252) & 0x7FFFFFFF)) ^ ((1864610357 * ((v243 ^ v252) & 0x7FFFFFFF)) >> 16));
  v260 = STACK[0x9608];
  LODWORD(v247) = *(v247 + v248);
  v261 = 1864610357 * ((1864610357 * ((v247 ^ v244) & 0x7FFFFFFF)) ^ ((1864610357 * ((v247 ^ v244) & 0x7FFFFFFF)) >> 16));
  v262 = 1864610357 * ((1864610357 * ((v247 ^ (v255 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v247 ^ (v255 - 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v262) = ((v240[(v261 >> 24) + 4] ^ *(v255 - 2) ^ v241[(v261 >> 24) + 1] ^ v242[v261 >> 24] ^ v261 ^ (-67 * BYTE3(v261))) << 16) | ((v241[(v262 >> 24) + 1] ^ v240[(v262 >> 24) + 4] ^ v242[v262 >> 24] ^ *(v255 - 3) ^ v262 ^ (-67 * (v262 >> 24))) << 24) | ((v241[(v259 >> 24) + 1] ^ v240[(v259 >> 24) + 4] ^ v242[v259 >> 24] ^ v251 ^ v259 ^ (-67 * BYTE3(v259))) << 8);
  *(v11 + 108) = (((v262 - ((2 * v262) & 0x94D80200) - 898891369) ^ 0xDB5A8EBC) & (v239 | 0xFFFFFF00) | v211) ^ 0xE50834AE;
  LODWORD(v262) = v260;
  LODWORD(v255) = v260;
  LODWORD(v257) = *(v256 + v257) ^ v260;
  LODWORD(v261) = *v260;
  LODWORD(v211) = *(v260 + 3);
  v263 = STACK[0x9608];
  LOBYTE(v250) = *(v260 + 2);
  LOBYTE(v254) = *(v260 + 1);
  LODWORD(v259) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v264 = 1864610357 * ((1864610357 * ((v259 ^ (v260 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v259 ^ (v260 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v239) = -67 * (v264 >> 24);
  LODWORD(v264) = v240[(v264 >> 24) + 4] ^ v211 ^ v241[(v264 >> 24) + 1] ^ v242[v264 >> 24] ^ v264;
  v265 = 1864610357 * ((1864610357 * ((v259 ^ (v262 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v259 ^ (v262 + 2)) & 0x7FFFFFFF)) >> 16));
  v266 = 1864610357 * ((1864610357 * ((v259 ^ (v255 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v259 ^ (v255 + 1)) & 0x7FFFFFFF)) >> 16));
  v267 = 1864610357 * ((1864610357 * (v257 & 0x7FFFFFFF)) ^ ((1864610357 * (v257 & 0x7FFFFFFF)) >> 16));
  LODWORD(v267) = ((v266 ^ v240[(v266 >> 24) + 4] ^ v241[(v266 >> 24) + 1] ^ v242[v266 >> 24] ^ (-67 * BYTE3(v266)) ^ v254) << 16) | ((v241[(v267 >> 24) + 1] ^ v240[(v267 >> 24) + 4] ^ v242[v267 >> 24] ^ v261 ^ v267 ^ (-67 * (v267 >> 24))) << 24) | ((v240[(v265 >> 24) + 4] ^ v250 ^ v241[(v265 >> 24) + 1] ^ v242[v265 >> 24] ^ v265 ^ (-67 * BYTE3(v265))) << 8);
  *(v11 + 112) = (((v267 - ((2 * v267) & 0x1D05FC00) - 1904017805) ^ 0xD4B4301A) & (v264 ^ ~v239 | 0xFFFFFF00) | (v264 ^ v239) & 0x96) ^ 0x4A2364F6;
  v268 = *v17;
  v269 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v211) = *(*v17 + v269);
  v270 = 1864610357 * ((1864610357 * ((v211 ^ (v263 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 7)) & 0x7FFFFFFF)) >> 16));
  v271 = *(&off_1010A0B50 + (v184 ^ 0x83C6)) - 1387546235;
  v272 = *(&off_1010A0B50 + v184 - 34487) - 1129317050;
  v273 = *(&off_1010A0B50 + v184 - 32753) - 678268358;
  LODWORD(v243) = -127 * ((1864610357 * ((1864610357 * ((v211 ^ (v263 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v250) = v272[v270 >> 24] ^ v271[v270 >> 24] ^ v273[v270 >> 24] ^ v263[7] ^ v270;
  v274 = 1864610357 * ((1864610357 * ((v211 ^ (v263 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v244) = v240[(v274 >> 24) + 4] ^ v263[6] ^ v241[(v274 >> 24) + 1] ^ v242[v274 >> 24] ^ (53 * ((53 * (v211 ^ (v263 + 6))) ^ ((1864610357 * ((v211 ^ (v263 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-67 * ((1864610357 * ((1864610357 * ((v211 ^ (v263 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v275 = 1864610357 * ((1864610357 * ((v211 ^ (v263 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v275) = v240[(v275 >> 24) + 4] ^ v263[5] ^ v241[(v275 >> 24) + 1] ^ v242[v275 >> 24] ^ (53 * ((53 * (v211 ^ (v263 + 5))) ^ ((1864610357 * ((v211 ^ (v263 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-67 * ((1864610357 * ((1864610357 * ((v211 ^ (v263 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v276 = 1864610357 * ((1864610357 * ((v211 ^ (v263 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v211 ^ (v263 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v240) = (v275 << 16) | ((v276 ^ v240[(v276 >> 24) + 4] ^ v241[(v276 >> 24) + 1] ^ v242[v276 >> 24] ^ (-67 * (v276 >> 24)) ^ v263[4]) << 24) | (v244 << 8);
  *(v11 + 116) = (((v240 - ((2 * v240) & 0x567DE400) + 725545647) ^ 0x33886193) & (v250 ^ ~v243 | 0xFFFFFF00) | (v250 ^ v243) & 0xC3) ^ 0x2DD08DB9;
  v277 = *v17;
  v278 = *v59 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v244) = *(*v17 + v278);
  v279 = 1864610357 * ((1864610357 * ((v244 ^ (v263 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v244 ^ (v263 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v275) = -127 * ((1864610357 * ((1864610357 * ((v244 ^ (v263 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v244 ^ (v263 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v279) = v271[v279 >> 24] ^ v263[11] ^ v272[v279 >> 24] ^ v273[v279 >> 24] ^ v279;
  v280 = 1864610357 * ((1864610357 * ((v244 ^ (v263 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v244 ^ (v263 + 10)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v280) = v272[v280 >> 24] ^ v271[v280 >> 24] ^ v273[v280 >> 24] ^ v263[10] ^ (53 * ((53 * (v244 ^ (v263 + 10))) ^ ((1864610357 * ((v244 ^ (v263 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-127 * ((1864610357 * ((1864610357 * ((v244 ^ (v263 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v244 ^ (v263 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v268) = *(v268 + v269);
  v281 = 1864610357 * ((1864610357 * ((v268 ^ (v263 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v268 ^ (v263 + 9)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v244) = v271[v281 >> 24] ^ v263[9] ^ v272[v281 >> 24] ^ v273[v281 >> 24];
  LOBYTE(v281) = (53 * ((53 * (v268 ^ (v263 + 9))) ^ ((1864610357 * ((v268 ^ (v263 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-127 * ((1864610357 * ((1864610357 * ((v268 ^ (v263 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v268 ^ (v263 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v282 = 1864610357 * ((1864610357 * ((v268 ^ (v263 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v268 ^ (v263 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v282) = ((v244 ^ v281) << 16) | ((v272[v282 >> 24] ^ v271[v282 >> 24] ^ v273[v282 >> 24] ^ v263[8] ^ v282 ^ (-127 * (v282 >> 24))) << 24) | (v280 << 8);
  *(v11 + 120) = (((v282 - ((2 * v282) & 0x9E82800) + 83104984) ^ 0x16B1AAD1) & (v279 ^ ~v275 | 0xFFFFFF00) | (v279 ^ v275) & 0xF6) ^ 0xFCBA4CD3;
  LOBYTE(v254) = v263[15];
  v263 += 15;
  LODWORD(v282) = *(*v17 + (*v59 & 0xFFFFFFFFE6F073DCLL));
  v283 = 1864610357 * ((1864610357 * ((v282 ^ v263) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ v263) & 0x7FFFFFFF)) >> 16));
  LODWORD(v244) = -127 * ((1864610357 * ((1864610357 * ((v282 ^ v263) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ v263) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v283) = v271[v283 >> 24] ^ v254 ^ v272[v283 >> 24] ^ v273[v283 >> 24] ^ v283;
  v284 = 1864610357 * ((1864610357 * ((v282 ^ (v263 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v263 - 1)) & 0x7FFFFFFF)) >> 16));
  v285 = 1864610357 * ((1864610357 * ((v282 ^ (v263 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v263 - 2)) & 0x7FFFFFFF)) >> 16));
  v286 = 1864610357 * ((1864610357 * ((*(v277 + v278) ^ (v263 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v277 + v278) ^ (v263 - 3)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v286) = ((v285 ^ v271[v285 >> 24] ^ v272[v285 >> 24] ^ v273[v285 >> 24] ^ (-127 * ((1864610357 * ((1864610357 * ((v282 ^ (v263 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v263 - 2)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *(v263 - 2)) << 16) | ((v272[v286 >> 24] ^ v271[v286 >> 24] ^ v273[v286 >> 24] ^ *(v263 - 3) ^ v286 ^ (-127 * (v286 >> 24))) << 24) | ((v271[v284 >> 24] ^ *(v263 - 1) ^ v272[v284 >> 24] ^ v273[v284 >> 24] ^ v284 ^ (-127 * ((1864610357 * ((1864610357 * ((v282 ^ (v263 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v263 - 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  *(v11 + 124) = (((v286 - 1478897774 + (~(2 * v286) | 0xB04C61FF)) ^ 0x67AB5996) & (v283 ^ ~v244 | 0xFFFFFF00) | (v283 ^ v244) & 0xF8) ^ 0xD2E6DA58;
  LODWORD(STACK[0x54E4]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v184 - 4752)))();
}

uint64_t sub_100439078@<X0>(char a1@<W0>, _DWORD *a2@<X1>, int a3@<W3>, int a4@<W8>)
{
  v22 = v5 - (((v5 * v10) >> 32) >> 7) * v11;
  v23 = 2 * (v22 & 0x7F) + (v22 ^ 0x367FD2CD75FF7F7FLL);
  v24 = v23 - 0x367FD2CD75FF7FBALL;
  v25 = (v13 + 4 * v23 + 0x2600B4CA28020204);
  if (v24 < 0xFFFFFFFFFFFFFFC5)
  {
    v25 = (v15 + 4 * v24);
  }

  v26 = *(v12 + 4 * (((v8 ^ 0xD2FB61AC) + 1308781582) ^ v8 ^ ((v8 ^ 0x565B8559) - 895317767) ^ ((v8 ^ 0x9019E954) + 216065270) ^ ((v8 ^ 0x77BFFFFF) - 347671969) ^ 0x6306F247));
  v27 = 999001243 * *a2 * (*(v16 + 4 * ((a1 + (v4 ^ 7) * v8) & 0x1F)) - 2024337095) - 1575070668 * (((((*v25 ^ 0xC8CEBE3D) + 925974979) ^ ((*v25 ^ 0x38DECA23) - 954124835) ^ ((*v25 ^ 0xD3027610) + 754813424)) - 1354188079) * (v26 - 95260618) + 1942570813 * v26);
  v28 = ((v27 - 2054994214) ^ 0xF99DECA3) & (2 * ((v27 - 2054994214) & 0xF9DDED03)) ^ (v27 - 2054994214) & 0xF9DDED03;
  v29 = ((2 * ((v27 - 2054994214) ^ 0xE88EFEA3)) ^ 0x22A62740) & ((v27 - 2054994214) ^ 0xE88EFEA3) ^ (2 * ((v27 - 2054994214) ^ 0xE88EFEA3)) & v14;
  v30 = v29 ^ 0x115110A0;
  v31 = (v29 ^ 0x20000) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x454C4E80) & v30 ^ (4 * v30) & v14;
  v33 = v31 ^ v14 ^ (v32 ^ 0x1400280) & (16 * v31);
  v34 = (16 * (v32 ^ 0x10131120)) & 0x11531380 ^ 0x4201A0 ^ ((16 * (v32 ^ 0x10131120)) ^ 0x15313A00) & (v32 ^ 0x10131120);
  v35 = (v33 << 8) & 0x11531300 ^ v33 ^ ((v33 << 8) ^ 0x5313A000) & v34;
  v36 = (v27 - 2054994214) ^ (2 * ((v35 << 16) & a3 ^ v35 ^ ((v35 << 16) ^ 0x13A00000) & ((v34 << 8) & a3 ^ ((v34 << 8) ^ 0x53130000) & v34 ^ 0x400000))) ^ 0xA1847AD2;
  *(a2 - 32) = v36;
  v37 = v27 + 2137076719 - ((((v27 + 2137076719) * v10) >> 32) >> 7) * v11;
  v38 = ((2 * v37) & 0xFC) + (v37 ^ 0xD7CFFCFFF15FB87ELL);
  v39 = v38 + 0x283003000EA04747;
  v40 = (v13 + 4 * v38 - 0x5F3FF3FFC57EE1F8);
  v41 = __CFADD__(v39, 59);
  v42 = (v15 + 4 * v39);
  if (!v41)
  {
    v40 = v42;
  }

  *(v16 + 4 * (v7 & 0x1F)) += (((v36 ^ *v40 ^ 0x2EF9D0E8) + 1359359768) ^ ((v36 ^ *v40 ^ 0x5C54BE67) + v17) ^ ((v36 ^ *v40 ^ v18) + v19)) * v20 + v21;
  return (*(STACK[0x228] + 8 * (((v9 == 0) * a4) ^ v6)))();
}

uint64_t sub_100439470()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 4259)))(v2);
}

uint64_t sub_10043992C()
{
  v2 = STACK[0x6804];
  STACK[0x8FE8] = v0;
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1936287598;
  LODWORD(STACK[0x704C]) = -2116087603;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xEC2515C5 ^ (7884 * (v1 >= (v1 ^ 0xEC25B9A7) - 1271922821)))))();
}

uint64_t sub_1004399C4@<X0>(int a1@<W4>, unint64_t a2@<X8>)
{
  STACK[0x7328] = v4;
  LODWORD(STACK[0x81F4]) = a1;
  STACK[0x73B8] = a2;
  LODWORD(STACK[0x4950]) = v2;
  STACK[0x81A0] = v5;
  LODWORD(STACK[0x27FC]) = -371865839;
  LODWORD(STACK[0x11B0]) = -371865839;
  LODWORD(STACK[0x26F0]) = -371865839;
  LODWORD(STACK[0x4724]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * ((7417 * (v3 ^ 0x9CAB)) ^ 0x7384)) ^ v3)))();
}

uint64_t sub_100439AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0xA40] = a7;
  v7 = STACK[0xE80];
  v8 = (LODWORD(STACK[0xE80]) + 20769) | 0x90;
  LODWORD(STACK[0xE70]) = *(*STACK[0xE50] + ((v8 + 2105932315) & *STACK[0xE58]));
  v9 = *(STACK[0xF18] + 8 * v7);
  LODWORD(STACK[0x520]) = STACK[0xDF0] & 0xFFFFFFF7;
  STACK[0xE20] = 0xE80883B6E6ACE7F0;
  LODWORD(STACK[0xE80]) = v8;
  LODWORD(STACK[0xE90]) = v8 ^ 0xC2CCE04C;
  return v9(a1, a2, 0x29B66FFF9EE34E0, a4, 1337);
}

uint64_t sub_100439C6C()
{
  v2 = STACK[0xF18];
  STACK[0x7690] += 16;
  v3 = (((v1 - 2366) | 0x540C) + (v0 ^ 0xBEBB20C1) + 1095000626) ^ ((v0 ^ 0x87FAE8EC) + 2013599508) ^ ((v0 ^ 0xD0940F3C) + 795603140);
  v4 = 17902189 * ((~(&STACK[0x10000] + 3800) & 0xAF53F494 | (&STACK[0x10000] + 3800) & 0x50AC0B68) ^ 0x211CE284);
  LODWORD(STACK[0x10EE0]) = v3 - v4 - 271025034;
  LODWORD(STACK[0x10ED8]) = v1 - v4 + 2174;
  v5 = (*(v2 + 8 * (v1 + 39279)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v5);
}

uint64_t sub_100439D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W5>, uint64_t a6@<X8>, __n128 a7@<Q1>, int8x16_t a8@<Q4>, uint64_t a9@<D5>, int8x16_t a10@<Q6>)
{
  v18 = (a2 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a8).u64[0];
  v20.i64[1] = a9;
  v21 = vrev64q_s8(vmulq_s8(v20, a10));
  *(a6 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v18 - 15), *(v12 + a2)), veorq_s8(*(v18 + v14 - 11), *(v18 + v13 - 14))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a3 == 0) * (((v16 + 208) | a4) + a5)) ^ v16)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_100439ED8()
{
  LODWORD(STACK[0xA04]) += 4;
  v1 = (((*(STACK[0x1EC0] + 80) ^ 0xF6E7D939) + 152577735) ^ ((*(STACK[0x1EC0] + 80) ^ 0x483E0491) - 1212023953) ^ ((*(STACK[0x1EC0] + 80) ^ 0x570C1AB9) - 1460411065)) == 371865839;
  return (*(v0 + 8 * ((4 * v1) | (8 * v1) | 0x7832u)))();
}

uint64_t sub_100439FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = 1321 * (v9 ^ 0x8B28);
  v13 = 267 * (v9 ^ 0x8B5E);
  v14 = v9 - 4498;
  v15 = (((v10 ^ 0xAF80C30D) + a7) ^ ((v10 ^ 0x77D85D39) - 2010668345) ^ (v13 - 831373948 + (v10 ^ 0x318D3B2E ^ v12))) - 1129086090;
  v16 = v7 + (((v8 ^ 0xC857F9E) - 210075550) ^ ((v8 ^ 0xA771B5D0) + 1485720112) ^ ((v8 ^ 0x42210D5F) - 1109462367));
  v17 = v16 < v11;
  v18 = v15 < v16;
  if (v17 != v15 < v11)
  {
    v18 = v17;
  }

  return (*(STACK[0xF18] + 8 * ((31 * v18) ^ v14)))();
}

uint64_t sub_10043A134()
{
  v1 = STACK[0xF10];
  *(STACK[0x2140] - 0x10A99C80114D144BLL) = *STACK[0x32D8];
  LODWORD(STACK[0xA520]) = v0;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v1 - 33671));
  return (*(v2 + 8 * ((v1 - 31196) ^ (v1 - 33671))))();
}

uint64_t sub_10043A238@<X0>(int a1@<W8>)
{
  if (v2)
  {
    v3 = a1 == -371865839;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (((v1 + 7988) | 0x442) ^ 0xE7DB)) ^ v1)))();
}

uint64_t sub_10043A27C@<X0>(int a1@<W8>)
{
  v2 = *(v1 - 0x217E172EFA1E80CLL);
  if (v2 == ((a1 + 2361) ^ 0xE9D58D6E) || v2 == -371865840)
  {
    v4 = -131670339;
  }

  else
  {
    v4 = -731040519;
  }

  LODWORD(STACK[0x6B94]) = v4;
  v5 = STACK[0xF18];
  STACK[0x8378] = *(STACK[0xF18] + 8 * (a1 - 14005));
  return (*(v5 + 8 * (a1 - 11351)))();
}

uint64_t sub_10043A30C()
{
  v5 = *(STACK[0xEA0] + ((495 * ((v3 - (((v1 - 38) ^ 0x75) & (2 * v3)) + 106) ^ LODWORD(STACK[0xEB0]))) & 0x1FF ^ 0x100));
  v6 = 2705 * (*(v0 + (2705 * (v5 | ((v5 < 0x4A) << 8)) + 1888090) % 0xE80) ^ 7) + 1395780;
  *(v4 + (*(v2 + 4 * ((2899 * ((v3 + 4608) ^ 0x3C2u) + 11268413) % 0x26C4)) ^ 0x8B6B2AE6) + 8464) = *(v0 + v6 - 3712 * (((2314099 * v6) >> 32) >> 1)) ^ 0x97;
  return (*(STACK[0xF18] + 8 * ((37687 * (v3 == 255)) ^ v1)))();
}

uint64_t sub_10043A57C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 328) = -371866021;
  STACK[0x8D20] = v1 - 0x10A99C80114D1457;
  *(a1 + 321) = 0;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x5DB)))();
}

uint64_t sub_10043A680()
{
  v2 = v1 ^ 0x6A353370;
  v4 = (STACK[0x3A4C] & 0xFFFFFFFE) != (v1 ^ 0x6A35661B) && LODWORD(STACK[0x3A4C]) != (((v2 - 2291) | 0x1100) ^ 0x5D7A);
  LOBYTE(STACK[0x20B7]) = v4;
  STACK[0x8BC8] = STACK[0x1C10];
  LODWORD(STACK[0xB7EC]) = v0;
  return (*(STACK[0xF18] + 8 * (v2 | (32 * (STACK[0x7980] != 0)))))();
}

uint64_t sub_10043A888()
{
  v2 = *(STACK[0x91B0] - 0x217E172EFA1E81CLL);
  v3 = 1022166737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xCDC1C98) - (&STACK[0x10000] + 3800) - 107875916) ^ 0xBC7EEFDE);
  LODWORD(STACK[0x10ED8]) = (v0 + 33824) ^ v3;
  LODWORD(STACK[0x10EDC]) = 1446135777 * v1 - v3 + 2011904846;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 39197)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * ((v0 - 9014) ^ 0xEFFB ^ (v0 + 1822652683) & 0x935CDFBF)) ^ v0)))(v5);
}

uint64_t sub_10043A9A4()
{
  v3 = v0 - 4462;
  v4 = v0 + 1110349733;
  v5 = STACK[0x1EC8];
  v6 = STACK[0x50B0];
  v7 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10EE0]) = v7 ^ LODWORD(STACK[0x4324]) ^ 0x45C14A32 ^ v4;
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EF8]) = v7 + 13504 + v3;
  STACK[0x10EF0] = v5;
  STACK[0x10EE8] = v2;
  STACK[0x10F00] = v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v3 ^ 0xA88F)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v3))(v9);
}

uint64_t sub_10043AC18@<X0>(int a1@<W8>)
{
  v1 = STACK[0x500];
  v2 = STACK[0x480];
  v2[15] = *(STACK[0x500] + 15);
  v2[14] = v1[14];
  v2[13] = v1[13];
  v2[12] = v1[12];
  v2[11] = v1[11];
  v2[10] = v1[10];
  v2[9] = v1[9];
  v2[8] = v1[8];
  v2[7] = v1[7];
  v2[6] = v1[6];
  v2[5] = v1[5];
  v2[4] = v1[4];
  v2[3] = v1[3];
  v2[2] = v1[2];
  v2[1] = v1[1];
  return (*(STACK[0x430] + 8 * a1))();
}

uint64_t sub_10043ACE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v18 = v13 + 109696729;
  v19 = v14 - 1190934968;
  v20 = (v19 ^ 0xEDF01BA3) & (2 * (v19 & 0xED855A28)) ^ v19 & 0xED855A28;
  v21 = ((2 * ((v14 - 1190934968) ^ 0x27F23BE3)) ^ 0x94EEC396) & ((v14 - 1190934968) ^ 0x27F23BE3) ^ (2 * ((v14 - 1190934968) ^ 0x27F23BE3)) & 0xCA7761CA;
  v22 = v21 ^ 0x4A112049;
  v23 = (v21 ^ 0x80264180) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x29DD872C) & v22 ^ (4 * v22) & 0xCA7761C8;
  v25 = (v24 ^ 0x8550100) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0xC22260C3)) ^ 0xA7761CB0) & (v24 ^ 0xC22260C3) ^ (16 * (v24 ^ 0xC22260C3)) & 0xCA7761C0;
  v27 = v25 ^ 0xCA7761CB ^ (v26 ^ 0x82760000) & (v25 << 8);
  v28 = v19 ^ (2 * ((v27 << 16) & 0x4A770000 ^ v27 ^ ((v27 << 16) ^ 0x61CB0000) & (((v26 ^ 0x4801614B) << 8) & 0x4A770000 ^ 0x8160000 ^ (((v26 ^ 0x4801614B) << 8) ^ 0x77610000) & (v26 ^ 0x4801614B))));
  v29 = a3 + 72370953 + (((v28 ^ 0xFA7AFCC8) + 1222346106) ^ ((v28 ^ 0x3442A151) - 2031888159) ^ ((v28 ^ 0x56CEDA90) - 462445790));
  v30 = ((v17 ^ 0x57F92748) + 1185959191) ^ v17 ^ ((v17 ^ 0x4BE0FDDE) + 1521063809) ^ ((v17 ^ 0xD4080C8) + 470411927) ^ ((v17 ^ 0xFFEFCFFF) - 291068510) ^ v28;
  v31 = ((v18 ^ 0xD34C50) - 1624504889) ^ v18 ^ ((v18 ^ 0xA6C4CC6B) + 960202238) ^ ((v18 ^ 0x39A8E9AD) - 1504206788) ^ ((v18 ^ 0xFFBFDFFF) + 1614845546);
  v32 = (((LODWORD(STACK[0x328]) ^ 0x40D1C013) + 88992297) ^ LODWORD(STACK[0x328]) ^ ((LODWORD(STACK[0x328]) ^ 0xAB3A15C) + 254774120) ^ ((LODWORD(STACK[0x328]) ^ (a13 - 1588737047) ^ 0xAEB1BE89) + 174317904) ^ ((LODWORD(STACK[0x328]) ^ (a13 - 1588737047) & 0x5EB1BF1F ^ 0xFFE4AE2) + 174216645)) & 0xC2359F7 | (((LODWORD(STACK[0x328]) ^ 0x7B1665F4) - 1635102768) ^ LODWORD(STACK[0x328]) ^ ((LODWORD(STACK[0x328]) ^ 0xD9BFF1B8) + 1008982916) ^ ((LODWORD(STACK[0x328]) ^ 0x4F353E6F) - 1431759787) ^ ((LODWORD(STACK[0x328]) ^ 0xF7FF7FE7) + 308499933)) & 0xF3DCA608;
  LODWORD(STACK[0x5B8]) = (((v28 ^ 0xB5044105) + 128268469) ^ ((v28 ^ 0xE01FEE86) + 1388222264) ^ ((v28 ^ 0xCDED288A) + 2135707964)) - (((v30 ^ 0xEC50B3EC) - 1594232517) ^ ((v30 ^ 0x3D283486) + 1904309841) ^ ((v30 ^ 0xA73895C2) - 342763755)) + 277959110;
  LODWORD(STACK[0x5C0]) = v16 + v15 - 841315171 + (((v31 ^ 0xDFD18C3C) + 414249688) ^ ((v31 ^ 0x9368D06F) + 1409920645) ^ ((v31 ^ 0x4DA2F48D) - 1966896537)) - 362165065;
  LODWORD(STACK[0x5B0]) = (((v29 ^ 0x49E81C17) + 1636189627) ^ ((v29 ^ 0x5939DBE2) + 1901560400) ^ ((v29 ^ 0xCEDE2783) - 424640977)) - 516747579;
  return (*(STACK[0x6A0] + 8 * ((13 * (v32 != 442750404)) ^ a13)))();
}

uint64_t sub_10043B558()
{
  v2 = STACK[0x6F98];
  *v2 = *(v1 + 56);
  *STACK[0x4198] = 6;
  return (*(STACK[0xF18] + 8 * ((122 * (*v2 == (((11 * (v0 ^ 0x630C) + 24097) | 0x431u) ^ 0x981390C2FEDF6B7))) ^ v0)))();
}

uint64_t sub_10043B6EC@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x6550] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((21817 * (a1 ^ 0x985) - 31033) ^ a1)))();
}

uint64_t sub_10043B7E8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0xC695;
  LODWORD(STACK[0x11FC]) = STACK[0x98D4];
  LODWORD(STACK[0x80D4]) = (((LODWORD(STACK[0x9FD4]) ^ 0x153DC664) - 356370020) ^ ((LODWORD(STACK[0x9FD4]) ^ 0x18816A25) - 411134501) ^ ((LODWORD(STACK[0x9FD4]) ^ (v1 - 462873182)) + 462853296)) - (((LODWORD(STACK[0x9FDC]) ^ 0x6906572D) - 1762023213) ^ ((LODWORD(STACK[0x9FDC]) ^ 0xEE998B2D) + 291927251) ^ ((LODWORD(STACK[0x9FDC]) ^ 0x6E4A1B11) - 1850350353)) + 1861760487;
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_10043B9DC()
{
  v3 = 1022166737 * (((&STACK[0x10ED8] | 0x31EAADA258E4A8EDLL) - (&STACK[0x10ED8] | 0xCE15525DA71B5712) - 0x31EAADA258E4A8EELL) ^ 0x4F60DFDFE2F4497FLL);
  STACK[0x10ED8] = ((STACK[0x9768] - (*(*v2 + (*v1 & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL)) > 0x7FFFFFFF6DC97911) ^ (*(STACK[0x2768] + 48) - (*(*v2 + (*v1 & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91) > 0x7FFFFFFF6DC97911) | v3;
  LODWORD(STACK[0x10EE4]) = v3 + v0 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((&STACK[0x10ED8] | 0x31EAADA258E4A8EDLL) - (&STACK[0x10ED8] | 0xCE15525DA71B5712) - 1491380462) ^ 0xE2F4497F);
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10EFC]) = ((v0 + 946650580) ^ 0x131A) + v3;
  LODWORD(STACK[0x10EEC]) = v0 + 946650580 - v3;
  LODWORD(STACK[0x10EE8]) = ((v0 + 946650580) & 0xFB7D4FF9) + v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EF8])))(v5);
}

uint64_t sub_10043BB5C@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 136) = v2;
  *(a1 + 8) = v1;
  *(a1 + 4) = v3 + 11678 + *(a1 + 4) - 23033;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10043BB90()
{
  STACK[0x1F30] = *(*(v0 + 160) + 40) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0xCD60E52FFB9405D6) + ((v1 + 627002575) & 0xDAA0FEEF ^ *(*STACK[0xE50] + (*STACK[0xE58] & 0x6DA0B6E8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x2C75849961C968EDLL) + 1;
  v2 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 1795)))();
}

uint64_t sub_10043BCAC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4058] = a1;
  LODWORD(STACK[0x4EEC]) = v1;
  v3 = (((LODWORD(STACK[0x6A6C]) ^ 0xE4FAAD48) + 453333688) ^ ((LODWORD(STACK[0x6A6C]) ^ 0x1E1BB041) - 505131073) ^ (((v2 - 17413) ^ LODWORD(STACK[0x6A6C]) ^ 0x1334CD10) - 322230808)) - 1588961903;
  v4 = v3 < 0xB7749680;
  v5 = ((v2 - 1669356306) & 0x63808B3F ^ 0xB7741DBB) + v1 < v3;
  if (v1 > 0x488B697F != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((29 * v5) ^ v2)))();
}

uint64_t sub_10043BDA0(uint64_t a1)
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x68E9)))(a1, STACK[0xB290], 20);
  return (*(v2 + 8 * ((232 * ((v3 ^ 0xDEE51FFFF7D3FEE1) + ((v1 - 362165257) & 0x1DBDF8EB ^ 0xA11AE00000046955) + (((v1 - 590490500) & 0x2331CD7E ^ 0xBDCA3FFFEFA7B8A0) & (2 * v3)) > 0x8000000000000013)) ^ v1)))();
}

uint64_t sub_10043BF1C()
{
  STACK[0x7690] = STACK[0x7690] - 10564 + (v0 ^ 0x20C6);
  LODWORD(STACK[0x69F4]) = v1;
  v2 = STACK[0xF18];
  STACK[0x1270] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x5225)))();
}

uint64_t sub_10043BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10] - 34222;
  LODWORD(STACK[0x9FA4]) = v4 ^ 0x22B05BC7;
  LODWORD(STACK[0x708C]) = HIDWORD(v4) ^ 0x51285C23;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x1922)))(a1, a2, a3, a4, ((0x11E3 % (LODWORD(STACK[0xB7DC]) ^ 0x2A090E70u)) ^ 0x2D0B3967) + 322132196 + ((2 * (0x11E3 % (LODWORD(STACK[0xB7DC]) ^ 0x2A090E70u))) & 0x32CE));
}

uint64_t sub_10043C064()
{
  STACK[0x7AC0] = v0 + 0xEC3AD30EA020D3CLL;
  v2 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 7941) ^ v1)))();
}

uint64_t sub_10043C168()
{
  v2 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10043C190()
{
  v0 = (STACK[0xF10] - 30907) | 0x405C;
  v1 = STACK[0xF10] - 31135;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] - 34762)) - 785967207);
  LOWORD(STACK[0x612A]) = *v2;
  LODWORD(STACK[0x612C]) = *(v2 + 2);
  return (*(STACK[0xF18] + 8 * ((v0 - 18743) ^ v1)))();
}

uint64_t sub_10043C214()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16739)))(v0);
  return (*(v2 + 8 * ((((v1 - 53155405) < 0x81B42623) * ((v1 - 53155405) ^ 0xFCD54A8C)) ^ (v1 - 29132))))(v3);
}

uint64_t sub_10043C2D8@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x1191C;
  v3 = (v2 - 3394) | 0x8913;
  LODWORD(STACK[0xCF0]) = v3;
  *(STACK[0x9D30] + STACK[0x2920] + (v3 ^ 0xB5DD0121) + v1 - 0x373AF31EA2C6E27ELL) = *(STACK[0x9D28] + (v3 ^ 0xB5DD0121) + v1) ^ 0x5F;
  v4 = *(STACK[0xF18] + 8 * v2);
  LODWORD(STACK[0xDD0]) = v1 - 1;
  return v4();
}

uint64_t sub_10043C354()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 25853)))(v3);
}

uint64_t sub_10043C398()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x9940];
  if (LOBYTE(STACK[0xBAAF]))
  {
    v2 = STACK[0xBAB0] + 229;
  }

  else
  {
    v2 = STACK[0xBAA0];
  }

  v3 = STACK[0xBA98];
  v4 = 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0xD2B65E7A) - (&STACK[0x10000] + 3800) + 379900099) ^ 0xF7D34F2);
  LOBYTE(STACK[0x10F14]) = -83 * ((((2 * (&STACK[0x10000] - 40)) | 0x7A) - (&STACK[0x10000] - 40) - 61) ^ 0xF2) + 68;
  v5 = *(v3 + 72);
  LODWORD(STACK[0x10F10]) = v0 - v4 - 35643;
  LODWORD(STACK[0x10EE8]) = v4 + 684692993;
  LOBYTE(STACK[0x10ED8]) = 48 - -83 * ((((2 * (&STACK[0x10000] - 40)) | 0x7A) - (&STACK[0x10000] - 40) - 61) ^ 0xF2);
  STACK[0x10F18] = v1;
  STACK[0x10EE0] = STACK[0x570];
  STACK[0x10F00] = STACK[0x578];
  STACK[0x10F08] = v2;
  STACK[0x10EF8] = v3 + 130;
  STACK[0x10EF0] = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 16725)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x6B9C]) = STACK[0x10EDC];
  STACK[0x7308] = *(v6 + 8 * (v0 - 34496));
  return (*(v6 + 8 * ((v0 - 7794) ^ (v0 - 34496))))(v7);
}

uint64_t sub_10043C4C0@<X0>(unsigned __int16 a1@<W8>)
{
  v3 = v1 < 0x74ABDDB7;
  v4 = (a1 | (((a1 >> 1) < 0x8ABu) << 16)) + 532793809;
  if (v3 == v4 < ((v2 + 1517240180) & 0xA590AFFC ^ 0x1FC1514F))
  {
    v3 = v2 + 1424582553 + v4 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((503 * !v3) ^ v2)))();
}

uint64_t sub_10043C67C(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x5A48]) = STACK[0x22E8];
  STACK[0x6A50] = v2;
  STACK[0x5908] = 0;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (v3 ^ 0x818F ^ v3 ^ 0x81BB)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_10043C738(_BYTE *a1)
{
  STACK[0xA218] = (((v1 ^ 0xBE5E33D55EE6EB7FLL) + 0x41A1CC2AA1191481) ^ ((v1 ^ 0xFACA14058960E517) + 0x535EBFA769F1AE9) ^ ((v1 ^ 0x449427D03E53C979) - 0x449427D03E53C979)) + 0x4A0136EC0EEA7E23;
  STACK[0xA220] = a1;
  *a1 = 2;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 + (v2 ^ 0x11C6) - 1837)))();
}

uint64_t sub_10043C95C@<X0>(int a1@<W0>, uint64_t a2@<X6>, _DWORD *a3@<X7>, int a4@<W8>)
{
  v15 = ((*(*v11 + (*a3 & v7)) ^ v5) & 0x7FFFFFFF) * v8;
  v16 = (v15 ^ HIWORD(v15)) * v8;
  *(v12 + v6) = *(v4 + v6) ^ *(a2 + (v16 >> 24)) ^ *(v14 + (v16 >> 24)) ^ *(v13 + (v16 >> 24)) ^ v16 ^ (BYTE3(v16) * v9) ^ v10;
  return (*(STACK[0xF18] + 8 * (((v6 != 0) * a1) ^ a4)))();
}

uint64_t sub_10043C9DC()
{
  v4 = (v1 | ((v1 < ((80 * (v2 ^ 0x9ED7)) ^ 0x33CBADCBu)) << 32)) - 453276976;
  v5 = v4 < 0x18C73307;
  v6 = v4 > v0 - 0x5D1E61E9131760CLL;
  if ((v0 - 0x5D1E61E9131760CLL) < 0x18C73307 != v5)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v3;
  }

  LODWORD(STACK[0x4888]) = v7;
  return (*(STACK[0xF18] + 8 * ((22875 * (v7 == ((v2 + 463872043) & 0xE459799B) - 371880314)) ^ v2)))();
}

uint64_t sub_10043CB48@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6130]) = -371865855;
  LODWORD(STACK[0x7414]) = 2;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10043CC38()
{
  STACK[0x10EE8] = v2;
  STACK[0x10EF0] = v1;
  STACK[0x10ED8] = &STACK[0x80C4];
  LODWORD(STACK[0x10EE0]) = (v0 - 22875) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x2288C68E) - ((&STACK[0x10000] + 3800) | 0xDD773971) - 579389071) ^ 0x13890BAA));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x406E)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v0 - 26091)))(v4);
}

uint64_t sub_10043CD3C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10EDC]) = (v1 - 7960) ^ (1012831759 * ((((&STACK[0x10000] + 3800) | 0xFBBCC2E3) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4433D18)) ^ 0xEB2FD469));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16339)))(&STACK[0x10ED8]);
  *(v2 + 96) = 0;
  return (*(v3 + 8 * (v1 - 6841)))(v4);
}

uint64_t sub_10043CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x3010];
  STACK[0x2598] = STACK[0x3010];
  return (*(STACK[0xF18] + 8 * (((((2 * v6) ^ 0x13D12) - 20230) * (v7 == 0)) ^ v6)))(a1, a2, a3, a4, a5, a6, 371891400);
}

uint64_t sub_10043CE78@<X0>(int a1@<W8>)
{
  v1 = a1 + 6922;
  STACK[0x10ED8] = *STACK[0x92B0];
  LODWORD(STACK[0x10EE0]) = a1 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x45246360) - (&STACK[0x10000] + 3800) + 987471004) ^ 0xDCFD8753) + 296753103;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10043CF34()
{
  v0 = (STACK[0xF10] + 1292693621) & 0xB2F2F7EF;
  v1 = STACK[0xF10] - 22493;
  STACK[0x9D38] = &STACK[0x42A8];
  if (STACK[0x2920])
  {
    v2 = LODWORD(STACK[0x49CC]) == (v0 ^ 0xE9D5B4B1);
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * ((59 * v3) ^ v1)))();
}

uint64_t sub_10043CFB0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W7>, int a9@<W8>)
{
  v21 = ((v20 ^ v11) + v12) ^ ((v20 ^ v13) + v14) ^ ((v20 ^ a1) + a2);
  v22 = (v21 + ((a9 + v10) ^ a3)) ^ (v16 - v21) ^ (((v21 + ((a9 + v10) ^ a3)) ^ a6) + a7) ^ (((v21 + ((a9 + v10) ^ a3)) ^ a4) + a5) ^ (((v21 + ((a9 + v10) ^ a3)) ^ a8) + v15);
  *(v9 + (v22 ^ v17)) = *(v18 + (v22 ^ v17) + v19);
  return (*(STACK[0xF18] + 8 * ((62 * (v22 == v17)) ^ a9)))();
}

uint64_t sub_10043D040(unint64_t a1)
{
  STACK[0x18E0] = a1;
  LODWORD(STACK[0x44F8]) = STACK[0x5A50];
  STACK[0x10EE0] = *STACK[0x4288];
  LODWORD(STACK[0x10ED8]) = v1 - 193924789 * ((((&STACK[0x10000] + 3800) | 0xAA316942) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x55CE96B8)) ^ 0x1C8A5B24) + 60349492;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16334)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((52135 * (((v2 - (v1 - 371901482)) | (v1 - 371901482 - v2)) >= 0)) ^ ((v1 ^ 0x162A2289) + v1 - 371901482))))(v4);
}

uint64_t sub_10043D174()
{
  v0 = LODWORD(STACK[0xED0]) - 23756;
  STACK[0x7690] += ((LODWORD(STACK[0xED0]) - 17847) | 0x2238u) ^ 0xFFFFFFFFFFFF980CLL;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10043D20C()
{
  v2 = ((2 * v0) & 0x2FF7577FF5BF64E4) + (v0 ^ 0x57FBABBFFADFB272) + STACK[0x2598];
  v3 = (*(v2 - 0x57FBABBFFADFB272) << ((v1 + 33) & 0x7F ^ 0x23)) | (*(v2 - 0x57FBABBFFADFB271) << 16) | (*(v2 - 0x57FBABBFFADFB270) << 8);
  LODWORD(v2) = *(v2 - 0x57FBABBFFADFB26FLL) - ((2 * *(v2 - 0x57FBABBFFADFB26FLL)) & 0xB6) + 1803538779;
  LODWORD(STACK[0x1574]) = v2 & 0x210095E0 ^ 0xC06A3C4E ^ ((v3 - ((2 * v3) & 0x3ADD5E00) - 1653690450) ^ 0x95D1C5B1) & (v2 ^ 0x94802EA4);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10043D33C@<X0>(int a1@<W8>)
{
  v4 = ((a1 ^ 0xCB) + v1);
  v5 = ((v1 + 17) & 0x46 | 0x98) ^ (v1 + 17) & 0x30;
  v6 = ((a1 ^ 0xCB) + v1) & 0xF;
  *(v3 + v4) = *(v2 + v4 + 68) ^ (v1 + 17) ^ *(v2 + v4 + 86) ^ *(STACK[0xEA0] + v6) ^ *(v6 + STACK[0xEB0] + 1) ^ *(STACK[0xEC0] + v6) ^ (15 * v6) ^ (2 * (((v1 + 17) ^ 0x44) & (2 * (((v1 + 17) ^ 0x44) & (2 * (((v1 + 17) ^ 0x44) & (2 * (((v1 + 17) ^ 0x44) & (2 * (((v1 + 17) ^ 0x44) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ 4;
  LODWORD(v4) = ((v1 + 1) | (((v1 + 1) < 0x5Du) << 8)) + 846;
  v7 = *(v2 + 102) - 31134 < 0x3AB;
  v8 = (v4 < 0x3AB) ^ v7;
  v9 = (*(v2 + 102) - 31134) > v4;
  if (!v8)
  {
    v7 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((27 * v7) ^ a1)))();
}

uint64_t sub_10043D518()
{
  STACK[0x1730] = STACK[0x6FF8];
  LODWORD(STACK[0x59E8]) = STACK[0x5C3C];
  LODWORD(STACK[0x2BF0]) = -1304553729;
  v1 = STACK[0xF18];
  STACK[0x6580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 5357)))();
}

uint64_t sub_10043D654(uint64_t a1, uint64_t a2)
{
  v3 = (STACK[0xF10] - 35495) | 0x6121;
  v4 = STACK[0xF10] - 35643;
  STACK[0x95A0] = STACK[0x79F8];
  LOWORD(STACK[0x79DE]) = ((((v2 - v4) | (v4 - v2)) & 0x80) >> 7) + 7085;
  LODWORD(STACK[0x16B4]) = 1427495620;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x4177 ^ v3)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10043D6CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  LODWORD(STACK[0xDF0]) = v6 + 7;
  v8 = STACK[0xED0];
  LODWORD(STACK[0xE30]) = v7 + (a6 - 102 - 31 * ((((9 * (a6 - 102)) >> 8) + (((a6 - 102 - ((9 * (a6 - 102)) >> 8)) & 0xFE) >> 1)) >> 4));
  return (*(STACK[0xF18] + 8 * (a3 ^ (199 * (v8 == 0)))))();
}

uint64_t sub_10043D80C()
{
  v2 = (((*(v1 + 16) ^ 0xD3AA9B04) + 743793916) ^ ((*(v1 + 16) ^ 0x5BAE37C7) - 1538144199) ^ ((((v0 + 27670) | 0x810) ^ 0x9E2E5D3F) + (*(v1 + 16) ^ 0x61D16BD2))) - 1642635066;
  v3 = (((LODWORD(STACK[0xA4BC]) ^ 0x8A3F966D) + 1975544211) ^ ((LODWORD(STACK[0xA4BC]) ^ 0xBD871D57) + 1115218601) ^ ((LODWORD(STACK[0xA4BC]) ^ 0xDE6D4C2B) + 563262421)) - 1642635066;
  v4 = v2 < 0xB44199B5;
  v5 = v2 > v3;
  if (v3 < 0xB44199B5 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((485 * !v5) ^ v0)))();
}

uint64_t sub_10043D974@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10043DA64@<X0>(int a1@<W8>)
{
  v5 = *v1;
  v6 = STACK[0xF18];
  STACK[0x82F8] = *(STACK[0xF18] + 8 * a1);
  STACK[0x7D30] = v5;
  STACK[0x4138] = v4;
  STACK[0x2410] = v3;
  return (*(v6 + 8 * (((v5 != 0x217E172EFA1E81CLL) * (v2 - 30669 + ((v2 - 28678) | 0x443))) ^ v2)))();
}

uint64_t sub_10043DB5C()
{
  v0 = STACK[0xF10] - 12952;
  v1 = STACK[0xF10] - 32356;
  v2 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x5FB3) + v1)))();
}

uint64_t sub_10043DBA0()
{
  v1 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((52 * (v0 ^ 0xC21) - 10189) ^ v0)))();
}

uint64_t sub_10043DCF0()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762644390) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x6D6153DB) + (~(&STACK[0x10000] + 3800) | 0x929EAC24)) ^ 0x5C609EFE));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x838C)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((123 * (*STACK[0x970] <= (v0 ^ 0x2F4D) - 26232)) ^ v0)))(v2);
}

uint64_t sub_10043DDE4()
{
  v1 = STACK[0xF10] - 18213;
  STACK[0x8E10] = v0;
  return (*(STACK[0xF18] + 8 * v1))(1897143663, 102, 1897143679);
}

uint64_t sub_10043DF1C@<X0>(int a1@<W8>)
{
  STACK[0x1278] = v4;
  STACK[0x66A0] = v6;
  v7 = STACK[0x7690];
  STACK[0x4738] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v7 + ((v1 - 42336) ^ (v1 - 23521) ^ 0x7991);
  STACK[0x1EC8] = v2;
  STACK[0x50B0] = v3;
  LODWORD(STACK[0x4324]) = v5;
  STACK[0x4CE8] = 0;
  LODWORD(STACK[0x5C24]) = a1;
  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(STACK[0xF18] + 8 * ((119 * v9) ^ v1)))();
}

uint64_t sub_10043E230(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v7 = v6 + 686767481;
  v8 = 3 * ((v6 + 686767481) ^ 0x28EFCD04);
  v9 = a1 + ((a5 - 450529458) << 7);
  v10 = *(v9 + 4 * (a4 - 1489456734));
  v11 = a3 ^ v10 ^ ((v10 ^ 0xB4AA9C59) + 1921550958) ^ ((v10 ^ 0xD099C2C5) + 381408498) ^ ((v10 ^ 0x79FBFDFF) - 1076237364) ^ ((v8 ^ 0xE237D7A6) + (v10 ^ 0x24154AA8));
  *(v9 + 4 * (a4 - 1489456734)) = (((v11 ^ 0x20608AE8) + 1916136615) ^ ((v11 ^ 0x6A9068B2) + 952438525) ^ ((v11 ^ 0x6EA1FA2F) + 1022663778)) - 1009161329;
  return (*(STACK[0xF18] + 8 * (v7 ^ 0x28EF7FD7 ^ (11078 * (((v5 - 1 - v7) | (v7 - (v5 - 1))) >= 0)))))();
}

uint64_t sub_10043E430()
{
  v2 = STACK[0x8DE0];
  *(v2 + 280) = v0;
  *(v2 + 288) = 0xE9D5C495E9D5C711;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDDCE)))(20) == 0;
  return (*(v3 + 8 * ((v4 * ((v1 ^ 0xCD18710F) + (v1 ^ 0x64C5) + 854009418)) ^ v1)))();
}

uint64_t sub_10043E608()
{
  v3 = *(v2 - 0x217E172EFA1E81CLL);
  v4 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10ED8]) = ((((*(v2 - 0x217E172EFA1E804) ^ 0xC589E811) + ((2 * (v1 - 25830)) ^ 0x3A7609A7)) ^ ((*(v2 - 0x217E172EFA1E804) ^ 0xDC5F6B1F) + 597726433) ^ (((v1 - 29178) | 0x892B) + (*(v2 - 0x217E172EFA1E804) ^ 0xF003441F) + 268185766)) - 54746966) ^ v4;
  STACK[0x10EE0] = &STACK[0x4284];
  STACK[0x10EE8] = &STACK[0x2094];
  LODWORD(STACK[0x10EF8]) = v1 - 25830 - v4 + 35901;
  STACK[0x10EF0] = v3;
  STACK[0x10F00] = v2 - 0x217E172EFA1E800;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * ((v1 - 25830) ^ 0xC5E0)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((40953 * (LODWORD(STACK[0x10F08]) == v0)) ^ (v1 - 25830))))(v6);
}

uint64_t sub_10043EAAC()
{
  v3 = *(v0 - 0x217E172EFA1E7ECLL);
  STACK[0x8F0] = v3;
  return (*(v2 + 8 * ((((((v1 - 22011) | 0xCE) - 14) ^ 0x3D3) * (v3 == 0)) ^ v1)))();
}

uint64_t sub_10043EB94()
{
  v1 = *STACK[0x3BD0];
  STACK[0x7060] = STACK[0x8508];
  STACK[0x3248] = v1;
  STACK[0x12D8] = 0;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (((v0 - 33563) | 0xB501) ^ 0xBD35)) ^ (v0 + 13161))))();
}

uint64_t sub_10043EBF4()
{
  *(*(v3 + 16) + 8 * v1) = v2;
  v4 = *(v3 + 8) + (((v0 - 32672) | 0x3408) ^ 0x34F8);
  ++*(v3 + 4);
  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10043ECCC()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x1AF9) + v0)))();
}

uint64_t sub_10043ED24@<X0>(int a1@<W8>)
{
  STACK[0x4F90] = *v3;
  LODWORD(STACK[0x22E8]) = v1 - ((v2 ^ 0xD3AB97E2) & (2 * v1)) + a1;
  LODWORD(STACK[0x35EC]) = 1693393267;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10043EEAC()
{
  v1 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xDA9D ^ (132 * (v0 ^ 0x4E8)))))();
}

uint64_t sub_10043EF28(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xADD8] = (((v1 ^ 0xDD2A15E0A4DA5EA5) + 0x22D5EA1F5B24E6C4 + (v2 ^ 0xE11Eu)) ^ ((v1 ^ 0x16DA7893885BFFBFLL) - 0x16DA7893885BFFBFLL) ^ (((((v2 + 10145) | 0x811u) - 0x340F928C3AAC2530) ^ v1) + 0x340F928C3AAB99F5)) + 0x797ADD5A0EE04F3;
  *(a1 + 16) = (((v1 ^ 0x1027273A) - 271001402) ^ ((v1 ^ 0x2C56E9F9) - 743893497) ^ ((v1 ^ 0xD5A409D2) + 710669870)) - 371865829;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 28431)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((38 * (v5 == 0)) | v2)))();
}

uint64_t sub_10043F090@<X0>(uint64_t a1@<X8>)
{
  *v1 = 362525631;
  v3 = STACK[0x2590];
  v4 = *(*a1 + 8);
  STACK[0x7690] += 3632;
  STACK[0x8D30] = v4;
  STACK[0xEB0] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((v2 - 31924) ^ (v2 - 18340) ^ 0x74BC)) ^ v2)))();
}

uint64_t sub_10043F0FC()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 32688)))();
  *(v2 + v1) = 0;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10043F1E4()
{
  v1 = v0 - 18844;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((v0 + 2367) ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10043F880@<X0>(int a1@<W8>)
{
  v3 = (a1 + 302947944) & 0xEDF1BDFE;
  LODWORD(STACK[0x197C]) = -371865839;
  LODWORD(STACK[0x10EF0]) = v3 - 139493411 * ((~(&STACK[0x10000] + 3800) & 0xF41F444 | (&STACK[0x10000] + 3800) & 0xF0BE0BB8) ^ 0x36C1501) - 10965;
  STACK[0x10EF8] = &STACK[0xC4D0] + v1;
  STACK[0x10EE8] = &STACK[0x197C];
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 11823)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x197C]) != -371865839) * (((v3 - 40030) | 0x7318) - 29586)) ^ v3)))(v5);
}

uint64_t sub_10043FB08()
{
  v1 = STACK[0xF18];
  STACK[0x81E0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 144392))();
}

uint64_t sub_10043FB44@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(STACK[0xF18] + 8 * ((((a2 + 19994) ^ 0x6A4B) * (LODWORD(STACK[0xE90]) != -371865784)) ^ a2));
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
  return v2(0xB8408CB4B9DC4841, 0xBB10DFE5E7189F3, 0x9F2632BF76345949, a1, 0x60D9CD4089CBA6B7, 0xB4B56A12200AB4CCLL, 1724701216, 0x4B4A95EDDFF54B34);
}

uint64_t sub_10043FDF0()
{
  LODWORD(STACK[0x29BC]) = v1;
  v2 = STACK[0x1B10];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393293;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_10043FE34()
{
  v0 = (STACK[0xF10] - 1173420868) & 0x45F07F8D;
  v1 = (STACK[0xF10] - 23287) | 0x8121;
  v2 = STACK[0xF10] + 4558;
  STACK[0x9640] = STACK[0xAF48];
  LODWORD(STACK[0x1594]) = STACK[0x7AFC];
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0xAF28]) == (v0 ^ 0xE9D5C894)) * (v1 ^ 0xE523)) ^ v2)))();
}

uint64_t sub_10043FF10()
{
  v1 = STACK[0x3A4];
  LODWORD(STACK[0xEA0]) = LODWORD(STACK[0x3A4]) ^ 0xFFFFFFDD;
  LODWORD(STACK[0xAA8]) = (v1 >> ((v0 ^ 0x9B) + 116)) ^ 0x2A;
  LODWORD(STACK[0x408]) = HIWORD(v1) ^ 0xFFFFFF9D;
  LODWORD(STACK[0x3A4]) = HIBYTE(v1) ^ 0x32279055;
  LODWORD(STACK[0x404]) = HIBYTE(v1) ^ 0xFFFFFF88;
  v2 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xDD0]) = 774913762;
  LODWORD(STACK[0x3E0]) = 186;
  LODWORD(STACK[0xA80]) = 186;
  LODWORD(STACK[0x3DC]) = 186;
  LODWORD(STACK[0xE90]) = 186;
  LODWORD(STACK[0x3F0]) = 186;
  LODWORD(STACK[0x400]) = 186;
  LODWORD(STACK[0x3E4]) = 186;
  LODWORD(STACK[0x3C4]) = 186;
  LODWORD(STACK[0x3BC]) = 186;
  LODWORD(STACK[0xA30]) = 186;
  LODWORD(STACK[0xA70]) = 186;
  LODWORD(STACK[0xDE0]) = 186;
  LODWORD(STACK[0xA60]) = 186;
  LODWORD(STACK[0x3C0]) = 186;
  LODWORD(STACK[0xA00]) = 186;
  LODWORD(STACK[0x3D4]) = 186;
  LODWORD(STACK[0x3F4]) = 186;
  LODWORD(STACK[0xAA0]) = 186;
  LODWORD(STACK[0xE70]) = 186;
  LODWORD(STACK[0x3D0]) = 186;
  LODWORD(STACK[0x9CC]) = 186;
  LODWORD(STACK[0x998]) = 186;
  LODWORD(STACK[0x3F8]) = 186;
  LODWORD(STACK[0x9F0]) = 186;
  LODWORD(STACK[0x3FC]) = 186;
  LODWORD(STACK[0x9E8]) = 186;
  LODWORD(STACK[0xA98]) = 186;
  LODWORD(STACK[0xE60]) = 186;
  LODWORD(STACK[0x3E8]) = 186;
  LODWORD(STACK[0x9E0]) = 186;
  LODWORD(STACK[0xA40]) = 186;
  LODWORD(STACK[0x508]) = 186;
  LODWORD(STACK[0xAB0]) = 186;
  LODWORD(STACK[0x3EC]) = 186;
  LODWORD(STACK[0x520]) = 186;
  LODWORD(STACK[0xE40]) = 186;
  LODWORD(STACK[0x3B8]) = 186;
  LODWORD(STACK[0xE80]) = 186;
  LODWORD(STACK[0x598]) = 186;
  LODWORD(STACK[0x518]) = 186;
  LODWORD(STACK[0xA10]) = 186;
  LODWORD(STACK[0x3D8]) = 186;
  LODWORD(STACK[0x3C8]) = 186;
  LODWORD(STACK[0x3CC]) = 186;
  LODWORD(STACK[0xA50]) = 186;
  LODWORD(STACK[0xD00]) = 186;
  LODWORD(STACK[0xA20]) = 186;
  LODWORD(STACK[0x500]) = 186;
  LODWORD(STACK[0x510]) = 186;
  return v2(186, 186, 186, 186, 186, 186);
}

uint64_t sub_100440160()
{
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x47D8) + 18398) ^ 0x8AFA) + 18064;
  STACK[0x10EE8] = &STACK[0x5BD4];
  LODWORD(STACK[0x10ED8]) = (v0 + 12294) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x7D5147D8) - 45004834) ^ 0xCC508AFA));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 51090)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0x9E5F ^ ((v0 + 1803) | 0x8111))))(v2);
}

uint64_t sub_100440220@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0xF18] + 8 * (((v2 != 0) * ((163 * (a1 ^ 0xA97D)) ^ (a1 - 8732))) | a1));
  STACK[0xE80] = v2;
  STACK[0xE40] = v1;
  return v3();
}

uint64_t sub_10044030C()
{
  v0 = STACK[0xF10] ^ 0x33B0;
  v1 = STACK[0xF10] - 34078;
  *(STACK[0x3378] + 88) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * ((v0 - 39520) ^ v1)))();
}

uint64_t sub_1004403B8()
{
  v3 = 48 * v0;
  *(*(v2 + 16) + v3 + 8) = STACK[0xE90];
  *(*(v2 + 16) + v3 + 36) = 1656647981;
  return (*(STACK[0xF18] + 8 * v1))(3923101457);
}

uint64_t sub_100440404()
{
  STACK[0x3508] = v0;
  LODWORD(STACK[0x503C]) = 1986828090;
  return (*(STACK[0xF18] + 8 * ((26832 * (v1 >= v1 + 1919131480)) ^ (v1 - 1567792907))))();
}

uint64_t sub_1004405F0@<X0>(int a1@<W8>)
{
  if (v2 == 0x981390C2FED9246)
  {
    v3 = 371891400;
  }

  else
  {
    v3 = -371865839;
  }

  LODWORD(STACK[0xEC0]) = v3;
  LODWORD(STACK[0xE40]) = (a1 - 24720) ^ 0x9B016A64;
  v4 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xE70]) = 906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xC0AA7C8) - 1945458742) ^ 0xBD0B6AEE);
  LODWORD(STACK[0xE80]) = v1;
  return v4();
}

uint64_t sub_1004406D0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 43677)))();
  return (*(v3 + 8 * ((110 * (((v1 + 18) ^ (v2 == 0)) & 1)) ^ v1)))(v2);
}

uint64_t sub_100440720()
{
  LODWORD(STACK[0x51B4]) = v0;
  v2 = (((*STACK[0x4E58] ^ 0xA91113C9) + 1458498615) ^ (((v1 - 1274385272) & 0x4BF5F3C3 ^ *STACK[0x4E58] ^ 0x44DE3494) - 1155437845) ^ (((v1 - 11557) ^ *STACK[0x4E58] ^ 0x41A55DD) - 68829645)) - 685642670;
  v3 = v2 < 0xED4C2541;
  v4 = v0 - 313776831 < v2;
  if (v0 > 0x12B3DABE == v3)
  {
    v3 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((102 * !v3) ^ v1)))();
}

uint64_t sub_1004408C4()
{
  LODWORD(STACK[0x1DC8]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((15720 * ((v0 ^ 0x44C57ED4u) > 0x5C9EDFF3)) ^ (v0 + 2345))))();
}

uint64_t sub_1004409B4()
{
  v1 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * (v0 - 33383));
  return (*(v1 + 8 * (((5 * ((v0 - 33383) ^ 0x821)) ^ 0x1CE0) + v0 - 33383)))();
}

uint64_t sub_1004409F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] + 11600;
  v4 = STACK[0xF10] - 34110;
  LODWORD(STACK[0x60A4]) = (v3 ^ 0xFFFF4775) & LODWORD(STACK[0x98D4]) ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DCB)))(a1, a2, a3, v3, ((0x2746 % (LODWORD(STACK[0xB340]) ^ 0xE20778B1)) ^ 0x97E7FE7B) - 1470721072 + ((2 * (0x2746 % (LODWORD(STACK[0xB340]) ^ 0xE20778B1))) & 0x7CF6));
}

uint64_t sub_100440B70()
{
  STACK[0xAE60] = v2;
  STACK[0xAE68] = v0;
  v3 = STACK[0x7690];
  STACK[0xAE70] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + 320;
  LODWORD(STACK[0x82C4]) = v2[18];
  LODWORD(STACK[0x670C]) = v2[19];
  LODWORD(STACK[0x1E70]) = v2[20];
  LODWORD(STACK[0x59C4]) = v2[21];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100440DDC()
{
  v0 = STACK[0xF10] - 22499;
  *(STACK[0x7B28] + 33) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100440E5C@<X0>(int a1@<W8>)
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
  STACK[0xBCF0] = 0;
  STACK[0xBCF8] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBCF0] | v12);
  *(&STACK[0xBCF0] | v12) = STACK[0xBCF7];
  v16 = *(&STACK[0xBCF0] | v13);
  *(&STACK[0xBCF0] | v13) = STACK[0xBCF6];
  v17 = *(&STACK[0xBCF0] | v14);
  *(&STACK[0xBCF0] | v14) = STACK[0xBCF5];
  v18 = vdup_n_s32(553300517 * v11);
  v19 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v20.i32[0] = v18.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBCF7]) = v15;
  v21 = veor_s8(vmul_s32(v20, v18), v18);
  LOBYTE(STACK[0xBCF6]) = v16;
  LOBYTE(STACK[0xBCF5]) = v17;
  v22 = STACK[0xBCF0];
  LOBYTE(STACK[0xBCF0]) = STACK[0xBCF4];
  LOBYTE(STACK[0xBCF4]) = v22;
  v23 = *(&STACK[0xBCF0] | v19);
  *(&STACK[0xBCF0] | v19) = STACK[0xBCF3];
  LOBYTE(STACK[0xBCF3]) = v23;
  v24 = STACK[0xBCF1];
  LOBYTE(STACK[0xBCF2]) = STACK[0xBCF0];
  LOWORD(STACK[0xBCF0]) = v24;
  STACK[0xBCF0] = vmla_s32(v21, STACK[0xBCF0], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBCF8];
  v26 = (553300517 * STACK[0xBCF8]) ^ v11;
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
    v56.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v33);
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
  v42 = STACK[0x940];
  do
  {
    v32.i64[0] = *(v40 + v36);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v26 + v43) ^ v26) % v43;
    v45 = *(v25 + 8 * v44) ^ *(v25 + 8 * v43);
    *(v25 + 8 * v43) = v45;
    v46 = *(v25 + 8 * v44) ^ v45;
    *(v25 + 8 * v44) = v46;
    *(v25 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBCF8] + v12);
  *(&STACK[0xBCF8] + v12) = STACK[0xBCFF];
  LOBYTE(STACK[0xBCFF]) = v48;
  v49 = *(&STACK[0xBCF8] + v13);
  *(&STACK[0xBCF8] + v13) = STACK[0xBCFE];
  LOBYTE(STACK[0xBCFE]) = v49;
  v50 = *(&STACK[0xBCF8] + v14);
  *(&STACK[0xBCF8] + v14) = STACK[0xBCFD];
  LOBYTE(STACK[0xBCFD]) = v50;
  v51 = STACK[0xBCF8];
  LOBYTE(STACK[0xBCF8]) = STACK[0xBCFC];
  LOBYTE(STACK[0xBCFC]) = v51;
  v52 = *(&STACK[0xBCF8] + v19);
  *(&STACK[0xBCF8] + v19) = STACK[0xBCFB];
  LOBYTE(STACK[0xBCFB]) = v52;
  v53 = STACK[0xBCF9];
  LOBYTE(STACK[0xBCFA]) = STACK[0xBCF8];
  LOWORD(STACK[0xBCF8]) = v53;
  STACK[0xBCF8] = vmla_s32(v21, STACK[0xBCF8], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBCF8] ^ STACK[0xBCF0];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100441300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] + 11600;
  v4 = STACK[0xF10] - 34171;
  LODWORD(STACK[0xA034]) = (STACK[0xF10] - 35645) & LODWORD(STACK[0x98D4]) ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DF6)))(a1, a2, a3, v3, ((0x88 % (LODWORD(STACK[0xA03C]) ^ 0x4952712Au)) ^ 0xEF3F7BDC) + 1358894703 + ((2 * (0x88 % (LODWORD(STACK[0xA03C]) ^ 0x4952712Au))) & 0x1B8));
}

uint64_t sub_100441420()
{
  v0 = STACK[0xF10] - 33956;
  v1 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x4E5 ^ (6624 * ((v0 ^ 0x711146D9u) < 0xC46C79A7)))))();
}

uint64_t sub_100441494()
{
  v0 = STACK[0xF10] - 25365;
  v1 = STACK[0x3810];
  STACK[0x36F0] = STACK[0x7958];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170670;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100441560@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unsigned int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v18 = (a1 ^ v12 ^ v13) + v11;
  v19 = (a3 & (2 * v18)) + (v18 ^ a2);
  v20 = ((a5 + v19) ^ *(*v17 + (*v16 & a6))) & 0x7FFFFFFF;
  v21 = ((v20 * a7) ^ ((v20 * a7) >> 16)) * a7;
  *(a5 + v19) = *(a8 + (v21 >> 24)) ^ *(v19 + v9 + v10) ^ *((v21 >> 24) + a4 + 2) ^ *((v21 >> 24) + v8 + 7) ^ v21 ^ (BYTE3(v21) * v14);
  return (*(STACK[0xF18] + 8 * (((v18 == 0) * v15) ^ a1)))();
}

uint64_t sub_100441758()
{
  STACK[0x10EE0] = v0;
  LODWORD(STACK[0x10ED8]) = v1 + 1603510583 * ((2 * ((&STACK[0x10000] + 3800) & 0x76CA8318) - (&STACK[0x10000] + 3800) + 154500321) ^ 0x9EEE4E4A) - 4883;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E4)))(&STACK[0x10ED8]);
  *(v3 + 104) = v2;
  return (*(v4 + 8 * (v1 - 6319)))(v5);
}

uint64_t sub_1004417E8()
{
  LODWORD(STACK[0x1AF4]) = v1;
  v4 = v2 + v3;
  v5 = (v4 - 1497668682) > 0x1DC9CF01;
  v6 = v1 - 1997433676 < (v4 - 1997433676);
  if ((v1 - 1997433676) < 0xE23630FE != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((v6 * (((v0 - 4736) | 0xC2) + 42381)) ^ v0)))();
}

uint64_t sub_100441BE4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = *(*(a1 + 352) + 44);
  v4 = v3 - 1301556676;
  v5 = v3 > 0x4D942DC3;
  if ((v2 + 1184240709) < 0xB26BD23C == v5)
  {
    v5 = v2 + 1184240709 < v4;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * (((a2 + 25983) ^ 0xAF2A) + 32489)) ^ a2)))();
}

uint64_t sub_100441C68@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x353C]) = a1;
  v3 = (((LODWORD(STACK[0x5508]) ^ 0xF5941BF5) + 174842891) ^ ((LODWORD(STACK[0x5508]) ^ 0x7806F87F) - 2013722751) ^ ((v1 ^ 0x644791F4 ^ LODWORD(STACK[0x5508])) - 1682384027)) + (v1 ^ 0x38579CD0);
  v4 = v3 < 0x4E8162AE;
  v5 = a1 + 863166298 < v3;
  if ((a1 + 863166298) < 0x4E8162AE != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != -371865839)
  {
    v6 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((26 * v6) ^ v1)))();
}

uint64_t sub_100441E08()
{
  STACK[0x8FE8] = v1;
  LODWORD(STACK[0x44A8]) = 1497668682;
  LODWORD(STACK[0x7FD8]) = 1986622573;
  LODWORD(STACK[0x4A8C]) = v2;
  STACK[0x5B78] = 0;
  LODWORD(STACK[0x704C]) = -2116087557;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100441EFC(unsigned int a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v44 = 4 * ((a11 + v17) & ((227 * (a15 ^ 0x8C94)) ^ 0x5B4Au));
  v45 = *(a14 + v44);
  v46 = veorq_s8(v45, *&STACK[0xE80]);
  v47 = vandq_s8(v45, a9);
  v48 = vaddq_s32(v46, v46);
  v49 = veorq_s8(vandq_s8(veorq_s8(v48, v29), v46), vandq_s8(v48, a8));
  v50 = veorq_s8(vandq_s8(vaddq_s32(v47, v47), veorq_s8(v45, v28)), v47);
  v51 = veorq_s8(v49, v30);
  v52 = vshlq_n_s32(v51, 2uLL);
  v53 = veorq_s8(vandq_s8(veorq_s8(v49, v27), vshlq_n_s32(v50, 2uLL)), v50);
  v54 = veorq_s8(vandq_s8(veorq_s8(v52, v31), v51), vandq_s8(v52, v32));
  v55 = veorq_s8(v54, v33);
  v56 = veorq_s8(vandq_s8(veorq_s8(v54, *&STACK[0xEC0]), vshlq_n_s32(v53, 4uLL)), v53);
  v57 = vshlq_n_s32(v55, 4uLL);
  v58 = veorq_s8(vandq_s8(veorq_s8(v57, v34), v55), vandq_s8(v57, v35));
  v59 = veorq_s8(v58, v36);
  v60 = veorq_s8(veorq_s8(v56, v37), vandq_s8(veorq_s8(v58, *&STACK[0xEB0]), vshlq_n_s32(v56, 8uLL)));
  v61 = vshlq_n_s32(v59, 8uLL);
  v62 = veorq_s8(veorq_s8(vandq_s8(v61, *&STACK[0xE90]), v38), vandq_s8(veorq_s8(v61, *&STACK[0xEA0]), v59));
  v63 = vshlq_n_s32(v60, 0x10uLL);
  v64 = *(v18 + 4 * a11);
  v65 = veorq_s8(veorq_s8(vandq_s8(v63, v40), v60), vandq_s8(veorq_s8(v63, v39), v62));
  v66 = veorq_s8(veorq_s8(veorq_s8(v45, veorq_s8(v64, vaddq_s32(veorq_s8(v64, v41), v42))), veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v64, v43), v20), vaddq_s32(veorq_s8(v64, v21), v22)), vaddq_s32(veorq_s8(v64, v23), v24))), vaddq_s32(v65, v65));
  *(a14 + v44) = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v66, v25), v26), vaddq_s32(veorq_s8(v66, vdupq_n_s32(a1)), vdupq_n_s32(a16))), vaddq_s32(veorq_s8(v66, vdupq_n_s32(a12)), vdupq_n_s32(v19))), vdupq_n_s32(v16));
  return (*(STACK[0xF18] + 8 * ((7148 * (a11 + 4 == STACK[0xED0])) ^ a15)))();
}

uint64_t sub_1004420F4()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9A46;
  LODWORD(STACK[0x1374]) = -2009601027;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100442160@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x6B30] = a1;
  v3 = v2 + ((a2 + 1953081509) & 0x8B963B5D) + LODWORD(STACK[0x5D58]) - 864832141;
  v4 = STACK[0x70E4];
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x658];
  STACK[0x2A60] = v3;
  STACK[0x85E8] = a1;
  LODWORD(STACK[0x4874]) = v4;
  LODWORD(STACK[0x726C]) = -187458874;
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100442268()
{
  v1 = *(STACK[0xF18] + 52040);
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v0);
  return v1();
}

uint64_t sub_1004422B0()
{
  v1 = STACK[0x1E50];
  v2 = STACK[0x5CA8];
  v3 = STACK[0x9298];
  LODWORD(STACK[0x10EF0]) = v0 - 1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0xF397B16A) - (&STACK[0x10000] + 3800) - 2043402421) ^ 0xEE10EA1E) + 3241;
  STACK[0x10ED8] = v1;
  STACK[0x10EE8] = v2;
  STACK[0x10EF8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 21669)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_100442484()
{
  *STACK[0x6F98] = v0;
  *STACK[0x4198] = 0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0x6AD2) - 20427) ^ v1)))();
}

uint64_t sub_10044258C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD2724A7F)))();
  *(v1 + 120) = 0;
  return (*(v2 + 8 * ((54114 * (v0 == 1346675181)) ^ (v0 + 764268022))))(v3);
}

uint64_t sub_100442644()
{
  v1 = 634647737 * STACK[0xDB0];
  v2 = -634647737 * LODWORD(STACK[0xDB0]);
  LODWORD(STACK[0x10EDC]) = LODWORD(STACK[0xDC0]) - v1;
  LODWORD(STACK[0x10ED8]) = v2;
  v3 = STACK[0xF10];
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v1 - 1230214699;
  LODWORD(STACK[0x10EE4]) = LODWORD(STACK[0xDE0]) + v1;
  STACK[0x10EF0] = 1189934578 - v1;
  STACK[0x10EE8] = v0 ^ v1;
  LODWORD(STACK[0x10EFC]) = LODWORD(STACK[0xDD0]) - v1;
  v4 = (*(STACK[0xF18] + 8 * (v3 + 16305)))(&STACK[0x10ED8]);
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0x10EE0])))(v4);
}

uint64_t sub_1004426EC()
{
  v5 = v0 - ((2 * v0) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x10ED8]) = (v4 + 10960) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xE86E71D8) - ((&STACK[0x10000] + 3800) | 0x17918E27) + 395415079) ^ 0x7FB54373));
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v4 ^ 0x9D6A)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x6954]) = STACK[0x10EDC];
  v8 = STACK[0x7690];
  STACK[0x2108] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v8 + 48;
  STACK[0x2DE0] = v3;
  STACK[0x2D68] = v5;
  STACK[0x3B58] = 0;
  return (*(v6 + 8 * ((((((v4 + 650188227) & 0xD93EF4AB) - 18377) ^ 0x18E7) * (v2 != v1)) ^ v4)))(v7);
}

uint64_t sub_10044280C()
{
  v2 = (v0 - 893506634) | 0xC0B80526;
  v3 = (v2 + 2126260881) & 0x9C89ADEE ^ LODWORD(STACK[0x9030]) ^ 0xC638F0F1;
  STACK[0x8FE8] = *(STACK[0x8A98] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087628;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v3;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0xE4BADA2E ^ (14611 * (v2 > 0xF58ECF7B)))))();
}

uint64_t sub_100442BCC@<X0>(unint64_t a1@<X8>)
{
  v4 = v2 + 6923;
  v5 = 634647737 * ((~(&STACK[0x10000] + 3800) & 0xD3B446E8 | (&STACK[0x10000] + 3800) & 0x2C4BB910) ^ 0xBE226914);
  LODWORD(STACK[0x10F04]) = v5 - 1096029615;
  LODWORD(STACK[0x10ED8]) = v1 + v5 + ((53 * ((v2 + 6923) ^ 0x2F4B)) ^ 0xF29916ED);
  LODWORD(STACK[0x10EE8]) = (v2 + 1678587831) ^ v5;
  STACK[0x10F10] = &STACK[0x6534];
  LODWORD(STACK[0x10F08]) = v3 ^ v5;
  STACK[0x10EF0] = a1;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x71CC86E8AD150F64;
  STACK[0x10EE0] = &STACK[0x8340];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 47073)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v4))(v7);
}

uint64_t sub_100442CD4()
{
  v2 = *(STACK[0xE60] + (v0 ^ 0xD94E598E) + v1);
  v3 = *(STACK[0xE60] + (v1 - 649173213));
  v4 = v2 & 0xA ^ 0x58;
  v5 = (v2 ^ (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * ((v2 ^ 0x18) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0xEF;
  v6 = 2115 * (((v5 ^ 0x350E) - 13582) ^ ((v5 ^ 0x2443) - 9283) ^ ((v5 ^ 0x11A8) - 4520)) - 30749;
  v7 = v6 & 0x2A40 ^ 0xAF2A;
  v8 = (v6 ^ (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * ((v6 ^ 0x5C0C) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xF919;
  v9 = 31 * (((v8 ^ 0x9BBC6B5D) + 1682150563) ^ ((v8 ^ 0xB25C832F) + 1302559953) ^ ((v8 ^ 0x29E03B2B) + 2082005)) + 2529223;
  LOBYTE(v7) = v3 & 0x3E ^ 0xD2;
  v10 = (v3 ^ (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0x82;
  v11 = 10923 * (((v10 ^ 0xDEE9) + 8471) ^ ((v10 ^ 0xCEDC) + 12580) ^ ((v10 ^ 0x1089) - 4233)) - 19305;
  v12 = v11 & 0x3781 ^ 0x4BC2;
  v13 = (v11 ^ (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * ((v11 ^ 0x20FC) & (2 * (v11 & (2 * v11) & 0x41FA ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x9963;
  v14 = (((6 * (((v13 ^ 0x5DC22B93) - 1573006227) ^ ((v13 ^ 0x2770740A) + 1485802486) ^ ((v13 ^ 0x7AB2F17Bu) + 88936069)) + 7936332) >> 16) - 116);
  LODWORD(STACK[0xED0]) = v14;
  return (*(STACK[0xF18] + 8 * ((43936 * ((((BYTE2(v9) < 0xDu) << 8) | BYTE2(v9)) + 934549264 + v14 - 934549277 > 0x1F)) ^ v0)))();
}

uint64_t sub_1004432DC@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v12 = (((*(v8 + 8) ^ a6) + v10) ^ ((*(v8 + 8) ^ a2) + a3) ^ (((((a7 + 58093514) ^ 0x376A10Du ^ a4) + ((a7 + 58093514) & a1)) ^ *(v8 + 8)) + a5)) + 0x981390C7ABDC99ELL;
  v13 = v12 < v9;
  v14 = v12 > v7;
  if (v7 < v9 != v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return (*(STACK[0xF18] + 8 * ((!v15 * v11) ^ a7)))(v8);
}

uint64_t sub_1004433D0()
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 35146) ^ 0x12F0)))();
}

uint64_t sub_100443608()
{
  v1 = STACK[0x1E60] + 32 * (((v0 + 809608681) & 0xCFBECFFB ^ 0x19BFBA08B5041FLL) + STACK[0x2EA0]) + 16;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3C88];
  STACK[0x5D28] = v1;
  LODWORD(STACK[0x4704]) = 395795808;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100443680()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 + 3288)))(v2);
}

uint64_t sub_100443708@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 304);
  LODWORD(STACK[0x10ED8]) = v1 + 1022166737 * ((((&STACK[0x10000] + 3800) | 0x197149B4) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xE68EB648)) ^ 0xA361A826) + 37861;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 45609)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004437E0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x860D)))();
  *(v0 + 120) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004438E8()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  *(v0 + 24) = 0;
  return (*(v2 + 8 * (v1 - 28084)))(v3);
}

uint64_t sub_1004439BC()
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
  STACK[0xC030] = 0;
  STACK[0xC038] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC030] | v10);
  *(&STACK[0xC030] | v10) = 0;
  LOBYTE(STACK[0xC037]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC030] | v12);
  *(&STACK[0xC030] | v12) = STACK[0xC036];
  LOBYTE(STACK[0xC036]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC030] | v14);
  *(&STACK[0xC030] | v14) = STACK[0xC035];
  LOBYTE(STACK[0xC035]) = v15;
  v16 = STACK[0xC030];
  LOBYTE(STACK[0xC030]) = STACK[0xC034];
  LOBYTE(STACK[0xC034]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC030] | v17);
  *(&STACK[0xC030] | v17) = STACK[0xC033];
  LOBYTE(STACK[0xC033]) = v18;
  v19 = STACK[0xC031];
  LOBYTE(STACK[0xC032]) = STACK[0xC030];
  LOWORD(STACK[0xC030]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC030] = vmla_s32(v22, STACK[0xC030], vdup_n_s32(0x1000193u));
  STACK[0xC038] ^= STACK[0xC030];
  STACK[0xC038] = vmul_s32(vsub_s32(STACK[0xC038], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC03A];
  LOWORD(STACK[0xC039]) = STACK[0xC038];
  LOBYTE(STACK[0xC038]) = v23;
  v24 = (&STACK[0xC038] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC03B];
  LOBYTE(STACK[0xC03B]) = v19;
  LOBYTE(v24) = STACK[0xC038];
  LOBYTE(STACK[0xC038]) = STACK[0xC03C];
  LOBYTE(STACK[0xC03C]) = v24;
  v25 = (&STACK[0xC038] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC03D];
  LOBYTE(STACK[0xC03D]) = v24;
  v26 = (&STACK[0xC038] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC03E];
  LOBYTE(STACK[0xC03E]) = v25;
  v27 = (&STACK[0xC038] | v10);
  v28 = *v27;
  *v27 = STACK[0xC03F];
  LOBYTE(STACK[0xC03F]) = v28;
  v29 = STACK[0xC038];
  v30 = (553300517 * STACK[0xC038]) ^ v9;
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
  *v43 = STACK[0xC038];
  return (*(STACK[0xF18] + 8 * (v1 + 10573)))(v48, v49);
}

uint64_t sub_100443E4C()
{
  v0 = STACK[0xF10];
  v1 = (2 * STACK[0xF10]) ^ 0x15BD8;
  LODWORD(STACK[0x7CD8]) = STACK[0x98D4];
  LODWORD(STACK[0x191C]) = (((LODWORD(STACK[0xA010]) ^ (v1 - 1153556193)) + 1153536307) ^ ((LODWORD(STACK[0xA010]) ^ 0x1579147B) - 360256635) ^ ((LODWORD(STACK[0xA010]) ^ 0x4792BDA7) - 1200799143)) - (((LODWORD(STACK[0xA018]) ^ 0xD7E39373) + 672951437) ^ ((LODWORD(STACK[0xA018]) ^ 0xA4F35735) + 1527556299) ^ ((LODWORD(STACK[0xA018]) ^ 0x9AC50357) + 1698364585));
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_100443F48()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xFB6EDCC1)))();
  return (*(v1 + 8 * ((24266 * (v0 >= (((v0 + 76671909) | 0x5050) ^ 0x78C888D8))) ^ (v0 + 76671643))))(v2);
}

uint64_t sub_100443FF8@<X0>(int a1@<W8>)
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  LODWORD(v10) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC230] = 0;
  STACK[0xC238] = v2 - 0x10A99C80114D1487;
  v11 = 16777619 * ((-901292213 * v10 + 7) ^ (-901292213 * v10)) % 7;
  v12 = *(&STACK[0xC230] | v11);
  *(&STACK[0xC230] | v11) = 0;
  LOBYTE(STACK[0xC237]) = v12;
  v13 = 16777619 * ((-901292213 * v10 + 6) ^ (-901292213 * v10)) % 6;
  v14 = *(&STACK[0xC230] | v13);
  *(&STACK[0xC230] | v13) = STACK[0xC236];
  LOBYTE(STACK[0xC236]) = v14;
  v15 = 16777619 * ((-901292213 * v10 + 5) ^ (-901292213 * v10)) % 5;
  v16 = *(&STACK[0xC230] | v15);
  *(&STACK[0xC230] | v15) = STACK[0xC235];
  LOBYTE(STACK[0xC235]) = v16;
  v17 = STACK[0xC230];
  LOBYTE(STACK[0xC230]) = STACK[0xC234];
  LOBYTE(STACK[0xC234]) = v17;
  v18 = 16777619 * ((-901292213 * v10 + 3) ^ (-901292213 * v10)) % 3;
  v19 = *(&STACK[0xC230] | v18);
  *(&STACK[0xC230] | v18) = STACK[0xC233];
  LOBYTE(STACK[0xC233]) = v19;
  v20 = STACK[0xC231];
  LOBYTE(STACK[0xC232]) = STACK[0xC230];
  LOWORD(STACK[0xC230]) = v20;
  v21 = vdup_n_s32(-901292213 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -901292213 * v10 + 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC230] = vmla_s32(v23, STACK[0xC230], vdup_n_s32(0x1000193u));
  STACK[0xC238] ^= STACK[0xC230];
  STACK[0xC238] = vmul_s32(vsub_s32(STACK[0xC238], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC23A];
  LOWORD(STACK[0xC239]) = STACK[0xC238];
  LOBYTE(STACK[0xC238]) = v24;
  v25 = (&STACK[0xC238] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC23B];
  LOBYTE(STACK[0xC23B]) = v20;
  LOBYTE(v25) = STACK[0xC238];
  LOBYTE(STACK[0xC238]) = STACK[0xC23C];
  LOBYTE(STACK[0xC23C]) = v25;
  v26 = (&STACK[0xC238] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC23D];
  LOBYTE(STACK[0xC23D]) = v25;
  v27 = (&STACK[0xC238] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC23E];
  LOBYTE(STACK[0xC23E]) = v26;
  v28 = (&STACK[0xC238] | v11);
  v29 = *v28;
  *v28 = STACK[0xC23F];
  LOBYTE(STACK[0xC23F]) = v29;
  v30 = STACK[0xC238];
  v31 = (-901292213 * STACK[0xC238]) ^ v10;
  for (i = 1; i != 48; ++i)
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
    v49.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_high_u16(v46, v41));
    v49.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v49.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v42), vsubq_s32(v40, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v49.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_high_u16(v45, v41));
    *(v30 + v36) = vqtbl4q_s8(v49, xmmword_100BC7660);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 384);
  v47 = STACK[0xC238];
  STACK[0x9698] = STACK[0xC238] + v1;
  return (*(STACK[0xF18] + 8 * ((*(v47 + 8) == 0x217E172EFA1E81CLL) | a1)))(&STACK[0xC000], v37, v38, v39, v40);
}

uint64_t sub_10044444C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 21411)))(24);
  STACK[0x1A40] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (21 * (v0 ^ 0x7623) - 4484)) ^ v0)))();
}

uint64_t sub_1004444F8()
{
  LODWORD(STACK[0x1B74]) = v0;
  STACK[0x5B28] = STACK[0x4F48];
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32548));
  return (*(v2 + 8 * (((v1 - 2333) ^ 0x8AA4) + v1 - 32548)))();
}

uint64_t sub_100444548()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xA90CDF68) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x56F32090)) ^ 0x980D124C));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16254)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v4 = 1;
  }

  else
  {
    v4 = *STACK[0x940] == 0;
  }

  v5 = v4;
  return (*(v2 + 8 * ((v5 * v0) ^ (v1 - 19257))))(v3);
}

uint64_t sub_1004445FC()
{
  STACK[0x3508] = STACK[0x4708];
  LODWORD(STACK[0x503C]) = -1784973595;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100444634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *STACK[0x2D78];
  v6 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * v4);
  return (*(v6 + 8 * ((v4 ^ 0x146F) + v4)))(a1, a2, a3, a4, v5);
}

uint64_t sub_100444674()
{
  v4 = STACK[0x10F8];
  STACK[0x10EE0] = *(*(STACK[0x10F8] - 0x10A99C80114D147FLL) + v1);
  LODWORD(STACK[0x10EDC]) = v3 + 17902189 * ((~&STACK[0x10ED8] & 0xCB0447A9 | &STACK[0x10ED8] & 0x34FBB850) ^ 0x454B51B9) - 274657873;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v3 ^ 0xDC0A)))(&STACK[0x10ED8]);
  v6 = STACK[0x10ED8];
  v7 = *(*(v4 - 0x10A99C80114D147FLL) + v1);
  v8 = ((LODWORD(STACK[0x4D64]) ^ 0xAD47CE7) - 718568679) ^ ((LODWORD(STACK[0x4D64]) ^ 0x3CFB755) + 1009797291) ^ ((LODWORD(STACK[0x4D64]) ^ 0xCE0CA3) - 13503651);
  v9 = 139493411 * ((~&STACK[0x10ED8] & 0xFFF0CA46 | &STACK[0x10ED8] & 0xF35B8) ^ 0xF3DD2B03);
  LODWORD(STACK[0x10EDC]) = (v3 + 1270042094) ^ v9;
  STACK[0x10EE0] = v7;
  LODWORD(STACK[0x10EE8]) = v9 + v6 + ((v3 - 4482) | 0xA020) + 144 * v8 - 2009115670;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x962C433804ECA67BLL;
  v10 = (*(v5 + 8 * (v3 + 46508)))(&STACK[0x10ED8]);
  v11 = *(v0 + v1);
  v12 = STACK[0x60E4];
  STACK[0x8FE8] = v11;
  LODWORD(STACK[0x44A8]) = v12;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v2 ^ 0xC6385557;
  STACK[0x5B78] = 0;
  LODWORD(STACK[0x704C]) = -2116087578;
  return (*(v5 + 8 * v3))(v10);
}

uint64_t sub_1004449D0()
{
  v2 = v1[1];
  v3 = (((*v1 ^ 0x4B9C962B) - 1268553259) ^ ((*v1 ^ 0x6AF7C11D) - 1794621725) ^ (((((v0 - 4914) | 0x1341) - 927049634) ^ *v1) + 927035353)) - 2070347111;
  v4 = v3 < 0x9AC33B88;
  v5 = v3 > v2 - 1698481272;
  if (v2 > 0x653CC477 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((115 * !v5) ^ v0)))();
}

uint64_t sub_100444B1C@<X0>(uint64_t a1@<X1>, unsigned __int8 a2@<W2>, unsigned int a3@<W3>, int a4@<W4>, unsigned int a5@<W5>, char a6@<W6>, char a7@<W8>)
{
  v13 = a5 < v8;
  v14 = a2 & a6 ^ a7 ^ (a2 ^ v10) & (2 * (a2 & a6));
  v15 = v12 + (((a2 ^ (2 * ((v7 ^ (2 * (a2 ^ v9))) & (a2 ^ v9) & ((4 * v14) ^ 8) ^ v14))) & 0x1F ^ 2u) << 7);
  *(v15 + 4 * a1) += v11;
  if (v13 == a3 < v8)
  {
    v13 = a3 < a5;
  }

  return (*(STACK[0xF18] + 8 * (a4 ^ (!v13 << 6))))();
}

uint64_t sub_100444BAC()
{
  STACK[0xEA0] = v2;
  LODWORD(STACK[0xE40]) = (v0 ^ 0x3A94) - 2075;
  v4 = STACK[0xBA40];
  STACK[0xD50] = STACK[0xBA30];
  STACK[0x7690] = v1 + 4096;
  LODWORD(STACK[0xD40]) = (((v3 ^ 0xEBF2B593) + 336415341) ^ ((v3 ^ 0x62FD695F) - 1660774751) ^ ((((v0 ^ 0x3A94) + 1648841270) ^ v3) - 1648857548)) - 347583232;
  LODWORD(STACK[0xD60]) = v3;
  v5 = *(STACK[0xF18] + 8 * (v0 ^ 0x3A94));
  LODWORD(STACK[0xD30]) = (((v3 ^ 0x99CD4A81) + 1714599295) ^ ((v3 ^ 0x6027509B) - 1613189275) ^ ((v3 ^ 0x12A2571A) - 312629018)) - 347583232;
  STACK[0xD90] = &STACK[0xC4D0] + v1;
  STACK[0xE90] = v4;
  return v5();
}

uint64_t sub_100444CCC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = ((v4 + a2 + a3) ^ *(*STACK[0xE50] + (*STACK[0xE58] & v5))) & v7;
  v12 = ((v11 * v8) ^ ((v11 * v8) >> 16)) * v8;
  *(v4 + a2 + a3) = *(STACK[0x8D8] + (v12 >> 24)) ^ *(v3 + a2 + a3) ^ *((v12 >> 24) + STACK[0x900] + 2) ^ *((v12 >> 24) + STACK[0x8F8] + 7) ^ v12 ^ (BYTE3(v12) * v9);
  return (*(STACK[0xF18] + 8 * (((a2 - 1 == v10) * a1) ^ v6)))();
}

uint64_t sub_100444DEC@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v18 = (((((v8 ^ 0xE63B) + 17473470) ^ a7) - 17490381) ^ ((a7 ^ 0x4CEA344B) - 1290417227) ^ ((a7 ^ 0xA43599AC ^ (v8 - 6393)) + 1540025705)) + 1183907806;
  v19 = (v18 ^ 0xBB629631) & (2 * (v18 & 0xA344C732)) ^ v18 & 0xA344C732;
  v20 = ((2 * (v18 ^ 0xFF631431)) ^ 0xB84FA606) & (v18 ^ 0xFF631431) ^ (2 * (v18 ^ 0xFF631431)) & a1;
  v21 = v20 ^ a2;
  v22 = (v20 ^ v9) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ a3) & v21 ^ (4 * v21) & v10;
  v24 = (v23 ^ a5) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ a4)) ^ a6) & (v23 ^ a4) ^ (16 * (v23 ^ a4)) & v10;
  v26 = v24 ^ v16 ^ (v25 ^ v15) & (v24 << 8);
  return (*(STACK[0xF18] + 8 * ((15 * ((v18 ^ (2 * ((v26 << 16) & v11 ^ v26 ^ ((v26 << 16) ^ v13) & (((v25 ^ v14) << 8) & v11 ^ v12 ^ (((v25 ^ v14) << 8) ^ v17) & (v25 ^ v14))))) == v7)) ^ v8)))();
}

uint64_t sub_100444F70()
{
  v1 = STACK[0x4E04];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393263;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100444FBC()
{
  STACK[0x3508] = STACK[0x4828];
  LODWORD(STACK[0x503C]) = 1638051016;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044507C@<X0>(int a1@<W8>)
{
  v3 = (*STACK[0x1998] + a1 - 1522976754 + ((v1 - 245170558) & 0xE9CAEF8u));
  v4 = 1864610357 * ((v3 ^ *(*STACK[0xE50] + (*v2 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v5 = 1864610357 * (v4 ^ HIWORD(v4));
  *v3 = *(STACK[0x918] + (v5 >> 24)) ^ *((v5 >> 24) + STACK[0x908] + 6) ^ *((v5 >> 24) + STACK[0x910] + 5) ^ v5 ^ (-53 * BYTE3(v5)) ^ 0x80;
  v6 = (((LODWORD(STACK[0x5C44]) ^ 0x8477B57F) + 2072529537) ^ ((LODWORD(STACK[0x5C44]) ^ 0x740C024F) - 1946944079) ^ ((LODWORD(STACK[0x5C44]) ^ 0x19AE7021) - 430862369)) - 962559240;
  v7 = v6 < 0xDCCABBE7;
  if ((a1 - 2113660834) < 0xDCCABBE7 == v7)
  {
    v7 = a1 - 2113660834 < v6;
  }

  return (*(STACK[0xF18] + 8 * ((26 * !v7) ^ v1)))();
}

uint64_t sub_100445388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] + 11600;
  v4 = STACK[0xF10] - 34201;
  LODWORD(STACK[0xA000]) = STACK[0x98D4];
  v5 = *(STACK[0x80C8] + 32) + 1758247822;
  v6 = (v5 ^ 0x56BA3249) & (2 * (v5 & (v3 ^ 0x9733FCE6))) ^ v5 & (v3 ^ 0x9733FCE6);
  v7 = ((2 * (v5 ^ 0x7C983243)) ^ 0xD756EC5C) & (v5 ^ 0x7C983243) ^ (2 * (v5 ^ 0x7C983243)) & 0xEBAB762E;
  v8 = v7 ^ 0x28A91222;
  v9 = (v7 ^ 0xC122200C) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xAEADD8B8) & v8 ^ (4 * v8) & 0xEBAB7628;
  v11 = (v10 ^ 0xAAA95020) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x41022606)) ^ 0xBAB762E0) & (v10 ^ 0x41022606) ^ (16 * (v10 ^ 0x41022606)) & 0xEBAB7620;
  v13 = v11 ^ 0xEBAB762E ^ (v12 ^ 0xAAA36200) & (v11 << 8);
  LODWORD(STACK[0xA00C]) = v5 ^ (2 * ((v13 << 16) & 0x6BAB0000 ^ v13 ^ ((v13 << 16) ^ 0x762E0000) & (((v12 ^ 0x4108140E) << 8) & 0x6BAB0000 ^ 0x40890000 ^ (((v12 ^ 0x4108140E) << 8) ^ 0x2B760000) & (v12 ^ 0x4108140E)))) ^ 0xB8466539;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1D94)))(a1, a2, a3);
}

uint64_t sub_100445634@<X0>(int a1@<W8>)
{
  STACK[0x4410] = STACK[0xEC0];
  LODWORD(STACK[0x15F4]) = (v1 + 660788053) ^ (((v1 + 660788053) ^ 0xD48C12FC) + 202441122) ^ (((v1 + 660788053) ^ 0x98323420) + 1085220734) ^ (((v1 + 660788053) ^ 0xFF7BFFFF) + 669445283) ^ (((v1 + 660788053) ^ 0x94A73581) + ((a1 + 515) | 0x5F0) + 1278856940) ^ 0xCEB72BB3;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004456F4()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v0 - 12863)))();
}

uint64_t sub_100445760()
{
  LODWORD(STACK[0x5A50]) = ((((8 * v0) ^ 0xCA479C79) + 1119262188) ^ (((8 * v0) ^ 0xADBA0C24) + 625673655) ^ ((((v1 ^ 0x813C) + 33703) ^ 0xA1A22A73) + ((8 * v0) ^ 0x2953A8D5))) + 966840050;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 17392)))();
  STACK[0x66B8] = v3;
  return (*(v2 + 8 * (v1 ^ (16 * (v3 == 0)))))();
}

uint64_t sub_1004458A4()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] ^ 0xA495;
  v3 = STACK[0xF10] + 2875;
  STACK[0x9120] = v0;
  return (*(STACK[0xF18] + 8 * (((((v0 == 0) ^ v1) & 1) * (v2 - 11979)) ^ v3)))();
}

uint64_t sub_1004458EC@<X0>(int a1@<W8>)
{
  *(v3 + 1524) = v2;
  *(v3 + 1520) = a1;
  return (*(STACK[0xF18] + 8 * (v1 - 29830)))();
}

uint64_t sub_10044590C()
{
  v1 = (2 * (v0 & 0x21)) & 0x40 ^ 0x19098040 | v0 & 0x21 | ((2 * (v0 & 0x21)) | 0x4844200) & (v0 ^ 0x86E9BECC);
  v2 = (2 * (v0 ^ 0x86E9BECC)) & 0x4000086C ^ 0x40000825 ^ ((2 * (v0 ^ 0x86E9BECC)) ^ 0xA69657DA) & (v0 ^ 0x86E9BECC);
  v3 = (4 * v1) & 0x5405088C ^ v1 ^ ((4 * v1) ^ 0x79ABC300) & v2;
  v4 = (4 * v2) & 0x5D8DCAEC ^ 0x988C049 ^ ((4 * v2) ^ 0x6BBAE9B4) & v2;
  v5 = (16 * v3) & 0x5D8DCAE0 ^ v3 ^ ((16 * v3) ^ 0xD0D80400) & v4;
  v6 = (16 * v4) & 0x5D8DCAC0 ^ 0x501402D ^ ((16 * v4) ^ 0xD8DCAED0) & v4;
  v7 = v5 ^ (v5 << 8) & 0x5D8DCA00 ^ ((v5 << 8) ^ 0x85804000) & v6 ^ 0x55880AAD;
  LODWORD(STACK[0xE30]) = (32 * v0) ^ (((v7 << 16) & 0x18D0000 ^ v7 ^ ((v7 << 16) ^ 0x2ED0000) & ((v6 << 8) & 0x18D0000 ^ 0x50000 ^ ((v6 << 8) ^ 0x1CA0000) & v6)) << 6) ^ 0xAE943CDE;
  STACK[0xED0] = v0 - 614173663;
  v8 = STACK[0xE40];
  STACK[0xEC0] = *(&off_1010A0B50 + LODWORD(STACK[0xE40]) - 10449) - 312340326;
  v9 = *(STACK[0xF18] + 8 * v8);
  STACK[0xD80] = v0;
  LODWORD(STACK[0xE20]) = v0 + 1400628640;
  v10 = (v8 - 10343) | 0x3082;
  LODWORD(STACK[0xD70]) = v10;
  LODWORD(STACK[0xE10]) = v10 ^ 0xC546283C;
  LODWORD(STACK[0xE00]) = v8 + 19106;
  LODWORD(STACK[0xEB0]) = v8 + 37817;
  LODWORD(STACK[0xDF0]) = v8 - 11050;
  LODWORD(STACK[0xDE0]) = v8 ^ 0x3883;
  LODWORD(STACK[0xDD0]) = v8 ^ 0xFC4F;
  LODWORD(STACK[0xDC0]) = v8 ^ 0x3A5C;
  return v9();
}

uint64_t sub_100445D38()
{
  v0 = STACK[0xF10] - 25365;
  STACK[0x36F0] = STACK[0x2E58];
  STACK[0x73E8] = STACK[0x1288];
  LODWORD(STACK[0x56B8]) = 744170667;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100445D78()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x474D)))(STACK[0x1860], v0 + 16, 20);
  v4 = (((2 * &STACK[0x10ED8]) | 0x187E079A4ED5737ELL) - &STACK[0x10ED8] - 0xC3F03CD276AB9BFLL) ^ 0xD6E4AC224AFC9643;
  LODWORD(STACK[0x10EE4]) = v1 + 1000582520 + 634647737 * v4;
  LODWORD(STACK[0x10ED8]) = -634647737 * v4;
  LODWORD(STACK[0x10EDC]) = ((v1 + 1000582520) ^ 0x134D) - 634647737 * v4;
  STACK[0x10EE8] = v3 ^ (634647737 * v4);
  STACK[0x10EF0] = -634647737 * v4;
  LODWORD(STACK[0x10EF8]) = v1 - 634647737 * v4 - 1230214699;
  LODWORD(STACK[0x10EFC]) = ((v1 + 1000582520) ^ 3) - 634647737 * v4;
  v5 = (*(v2 + 8 * (v1 + 16305)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100445EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34149;
  LODWORD(STACK[0xA064]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1DE0)))(a1, a2, a3);
}

uint64_t sub_100446018@<X0>(unsigned int a1@<W8>)
{
  if (LODWORD(STACK[0x7C3C]) == ((a1 + 712880921) & 0xD582BBBF) - 371901482)
  {
    v2 = 0;
  }

  else
  {
    v2 = STACK[0x1770];
  }

  *v1 = v2;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100446064(uint64_t a1, uint64_t a2)
{
  *STACK[0x14C8] = *v2;
  *STACK[0x88E8] = v4;
  *v2 = 0;
  *(v2 + 8) = 0xE9D5C711E9D5C711;
  v5 = *(v2 + 24);
  v6 = *(v2 + 20) & (v3 - 9322);
  *(v2 + 16) = -371865839;
  *(v2 + 20) = v6;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, v5);
}

uint64_t sub_1004460C0()
{
  v0 = STACK[0xF10] - 25365;
  v1 = STACK[0x7810];
  STACK[0x36F0] = STACK[0x7BE0];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170672;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100446100()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762659938) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xFFD304B2 | (&STACK[0x10000] + 3800) & 0x2CFB48) ^ 0xCED2C996));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 17608)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((v0 - 1209) | 0xA03) - 35643 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((989 * v4) ^ v0)))(v2);
}

uint64_t sub_1004461C0()
{
  v3 = (((v1 & 0xFFFFFFF0 ^ 0x2EBDABF8) - 777524215) ^ ((v1 & 0xFFFFFFF0 ^ 0x7E4859E) - 117521809) ^ (((v0 + 31434) ^ 0xD643E5E1) + (v1 & 0xFFFFFFF0 ^ 0x29592E66))) + 1924149506;
  v4 = (v3 ^ 0xEF31F7D9) & (2 * (v3 & 0x8E35871D)) ^ v3 & 0x8E35871D;
  v5 = ((2 * (v3 ^ 0xEB11F1D9)) ^ 0xCA48ED88) & (v3 ^ 0xEB11F1D9) ^ (2 * (v3 ^ 0xEB11F1D9)) & 0x652476C4;
  v6 = v5 ^ 0x25241244;
  v7 = (v5 ^ 0x40002480) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x9491DB10) & v6 ^ (4 * v6) & 0x652476C0;
  v9 = (v8 ^ 0x4005200) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x612424C4)) ^ 0x52476C40) & (v8 ^ 0x612424C4) ^ (16 * (v8 ^ 0x612424C4)) & 0x652476C0;
  v11 = v9 ^ 0x652476C4 ^ (v10 ^ 0x40046400) & (v9 << 8);
  LODWORD(STACK[0x5C44]) = v3 ^ (2 * ((v11 << 16) & 0x65240000 ^ v11 ^ ((v11 << 16) ^ 0x76C40000) & (((v10 ^ 0x25201284) << 8) & 0x65240000 ^ 0x41000000 ^ (((v10 ^ 0x25201284) << 8) ^ 0x24760000) & (v10 ^ 0x25201284)))) ^ 0x65A0AD84;
  LODWORD(STACK[0x5688]) = v1 - (v2 ^ 0xE9D5C711);
  return (*(STACK[0xF18] + 8 * (v0 + 14086)))();
}

uint64_t sub_100446504()
{
  v0 = STACK[0xF10];
  v1 = 9983 * (STACK[0xF10] ^ 0x8B38);
  v2 = STACK[0xF10] - 11999;
  STACK[0x9DD0] = &STACK[0x34DC];
  if (STACK[0xACB8])
  {
    v3 = LODWORD(STACK[0xACC0]) == v1 - 371895788;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (v0 ^ 0x8B13)) ^ v2)))();
}

uint64_t sub_10044658C()
{
  v1 = STACK[0x29BC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393290;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044660C()
{
  v1 = STACK[0x2E2C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393251;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004466F8()
{
  v3 = -1217736957 - (((v0 ^ 0x206985CA) - 543786442) ^ ((v0 ^ 0x495B41F3) - 1230717427) ^ (((v2 - 13174) ^ 0xBB2B20C7) + (v0 ^ 0x44D4B446)));
  v4 = v3 < 1699823458;
  v5 = v1 + 2137095630 < v3;
  if (v1 + 2137095630 < 1699823458 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((15221 * v5) ^ v2)))();
}

uint64_t sub_1004469F4@<X0>(int a1@<W0>, void *a2@<X7>, uint64_t a3@<X8>)
{
  v14 = v5 - 1;
  v15 = ((*(*a2 + (*v11 & v6)) ^ (a3 + v14)) & 0x7FFFFFFF) * v7;
  v16 = (v15 ^ HIWORD(v15)) * v7;
  *(a3 + v14) = *(v10 + (v16 >> v8)) ^ *(v3 + v14) ^ *((v16 >> v8) + v13 + 2) ^ *((v16 >> v8) + v12 + 4) ^ v16 ^ ((v16 >> v8) * v9);
  return (*(STACK[0xF18] + 8 * (((v14 != 0) * a1) ^ v4)))();
}

uint64_t sub_100446A74@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x90E8] = *(STACK[0xF18] + 8 * (a1 - 7992));
  return (*(v1 + 8 * ((a1 - 7992) ^ 0x5B83)))();
}

uint64_t sub_100446B38@<X0>(int a1@<W8>)
{
  *(v2 + 4044) = v1;
  *(v2 + 4040) = v3;
  v4 = LODWORD(STACK[0x35BC]) > 0x1894ADE0;
  if ((v1 + 1907410992) < 0xE76B521F == v4)
  {
    v4 = v1 + 1907410992 < LODWORD(STACK[0x35BC]) + ((29 * (((a1 - 32486) | 0x1A4) ^ 0x366E)) ^ 0xE76B67AD);
  }

  return (*(STACK[0xF18] + 8 * ((15 * v4) ^ a1)))();
}

uint64_t sub_100446BD0()
{
  v1.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v1.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(STACK[0xF18] + 8 * (v0 + 11202)))(v1, v2);
}

uint64_t sub_100446C08()
{
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x148E89EC ^ (v0 - 1650461419) & 0x76EEABF7)))();
}

uint64_t sub_100446CC0@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x5F44]) = v2;
  v3 = v2 - 163801741 < (LODWORD(STACK[0x59AC]) - 146450681);
  if ((v2 - 163801741) < 0xF7455707 != LODWORD(STACK[0x59AC]) > 0x8BAA8F8)
  {
    v3 = LODWORD(STACK[0x59AC]) > 0x8BAA8F8;
  }

  if (a1 != (((a2 - 17449) | 0xC89) ^ 0xE9D5DACC))
  {
    v3 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((242 * (((a2 + 114) ^ v3) & 1)) ^ a2)))();
}

uint64_t sub_100446E58()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 28138)))(v2);
}

uint64_t sub_100446F2C@<X0>(unint64_t *a1@<X7>, unint64_t a2@<X8>)
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
  STACK[0xBC70] = 0;
  STACK[0xBC78] = a2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBC70] | v13);
  *(&STACK[0xBC70] | v13) = STACK[0xBC77];
  v17 = *(&STACK[0xBC70] | v14);
  *(&STACK[0xBC70] | v14) = STACK[0xBC76];
  v18 = *(&STACK[0xBC70] | v15);
  *(&STACK[0xBC70] | v15) = STACK[0xBC75];
  v19 = v2 ^ 0x6A;
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21 = vdup_n_s32(553300517 * v12);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBC77]) = v16;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xBC76]) = v17;
  LOBYTE(STACK[0xBC75]) = v18;
  v24 = STACK[0xBC70];
  LOBYTE(STACK[0xBC70]) = STACK[0xBC74];
  LOBYTE(STACK[0xBC74]) = v24;
  v25 = *(&STACK[0xBC70] | v20);
  *(&STACK[0xBC70] | v20) = STACK[0xBC73];
  LOBYTE(STACK[0xBC73]) = v25;
  v26 = STACK[0xBC71];
  LOBYTE(STACK[0xBC72]) = STACK[0xBC70];
  LOWORD(STACK[0xBC70]) = v26;
  STACK[0xBC70] = vmla_s32(v23, STACK[0xBC70], vdup_n_s32(0x1000193u));
  v27 = STACK[0xBC78];
  v28 = (553300517 * STACK[0xBC78]) ^ v12;
  v29 = vdupq_n_s32(v28);
  v30 = xmmword_100BC7620;
  v31 = xmmword_100BC7630;
  v32 = xmmword_100BC7640;
  v33 = xmmword_100BC7650;
  v34.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v35.i64[0] = 0x9393939393939393;
  v35.i64[1] = 0x9393939393939393;
  v36.i64[0] = 0x1000000010;
  v36.i64[1] = 0x1000000010;
  do
  {
    v37 = *(v27 + v3);
    v57.val[1] = veorq_s8(vqtbl1q_s8(v37, xmmword_100BC7690), veorq_s8(v29, vmulq_s32(vaddq_s32(v32, v29), vsubq_s32(v32, v29))));
    v57.val[0] = veorq_s8(vqtbl1q_s8(v37, xmmword_100BC76A0), veorq_s8(v29, vmulq_s32(vaddq_s32(v33, v29), vsubq_s32(v33, v29))));
    v57.val[2] = veorq_s8(vqtbl1q_s8(v37, xmmword_100BC7680), veorq_s8(v29, vmulq_s32(vaddq_s32(v31, v29), vsubq_s32(v31, v29))));
    v57.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v37, xmmword_100BC7670), v29), vmulq_s32(vaddq_s32(v30, v29), vsubq_s32(v30, v29)));
    *(v27 + v3) = vmulq_s8(vqtbl4q_s8(v57, xmmword_100BC7660), v35);
    v3 += 16;
    v33 = vaddq_s32(v33, v36);
    v32 = vaddq_s32(v32, v36);
    v31 = vaddq_s32(v31, v36);
    v30 = vaddq_s32(v30, v36);
  }

  while (v3 != 576);
  v38 = 0;
  v39 = xmmword_100F52AE0;
  v40 = vdupq_n_s32(v28);
  v41 = xmmword_100F52AF0;
  v42 = v27 + 576;
  v43.i64[0] = 0x800000008;
  v43.i64[1] = 0x800000008;
  do
  {
    v34.i64[0] = *(v42 + v38);
    v56.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v34, xmmword_100BC7690), v40), vmulq_s32(vaddq_s32(v39, v40), vsubq_s32(v39, v40)));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v34, xmmword_100BC76A0), veorq_s8(v40, vmulq_s32(vaddq_s32(v41, v40), vsubq_s32(v41, v40))));
    v34 = vqtbl2q_s8(v56, xmmword_100F52AD0);
    *(v42 + v38) = vmul_s8(*v34.i8, 0x9393939393939393);
    v41 = vaddq_s32(v41, v43);
    v39 = vaddq_s32(v39, v43);
    v38 += 8;
  }

  while (v38 != 8);
  v44 = 72;
  do
  {
    v45 = 16777619 * ((v28 + v44) ^ v28) % v44;
    v46 = *(v27 + 8 * v45) ^ *(v27 + 8 * v44);
    *(v27 + 8 * v44) = v46;
    v47 = *(v27 + 8 * v45) ^ v46;
    *(v27 + 8 * v45) = v47;
    *(v27 + 8 * v44) ^= v47;
    v48 = v44-- + 1;
  }

  while (v48 > 2);
  v49 = *(&STACK[0xBC78] + v13);
  *(&STACK[0xBC78] + v13) = STACK[0xBC7F];
  LOBYTE(STACK[0xBC7F]) = v49;
  v50 = *(&STACK[0xBC78] + v14);
  *(&STACK[0xBC78] + v14) = STACK[0xBC7E];
  LOBYTE(STACK[0xBC7E]) = v50;
  v51 = *(&STACK[0xBC78] + v15);
  *(&STACK[0xBC78] + v15) = STACK[0xBC7D];
  LOBYTE(STACK[0xBC7D]) = v51;
  v52 = STACK[0xBC78];
  LOBYTE(STACK[0xBC78]) = STACK[0xBC7C];
  LOBYTE(STACK[0xBC7C]) = v52;
  v53 = *(&STACK[0xBC78] + v20);
  *(&STACK[0xBC78] + v20) = STACK[0xBC7B];
  LOBYTE(STACK[0xBC7B]) = v53;
  v54 = STACK[0xBC79];
  LOBYTE(STACK[0xBC7A]) = STACK[0xBC78];
  LOWORD(STACK[0xBC78]) = v54;
  STACK[0xBC78] = vmla_s32(v23, STACK[0xBC78], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBC78] ^ STACK[0xBC70];
  return (*(STACK[0xF18] + 8 * v19))();
}

uint64_t sub_1004473C8@<X0>(int a1@<W8>)
{
  v1 = a1 & 0xDEED86ED;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 & 0xDEED86ED ^ 0x4A2DCC44)))();
  return (*(v2 + 8 * (((751 * (v1 ^ 0x4A2D06DE) - 34529) * (v1 != 2107161765)) ^ (v1 - 1244455498))))(v3);
}

uint64_t sub_100447520()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 16693)))(v2);
}

uint64_t sub_10044768C(uint64_t a1)
{
  v6 = *v4;
  v7 = (v5 + v3);
  *v7 = *(v4 - 1);
  v7[1] = v6;
  return (*(STACK[0xF18] + 8 * (((a1 == 0) * v1) ^ v2)))(a1 - 32);
}

uint64_t sub_100447764()
{
  v3 = STACK[0xF18];
  STACK[0x78D0] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (((v0 == -371865839) * (((v1 - 16984) | 0x820) ^ 0x8827)) | v1)))();
}

uint64_t sub_1004478E4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v3 = (a2 | ((a2 < (v2 - 27)) << 8)) + 0x2C9EAE73D02BCB9ALL;
  STACK[0x85C0] = v3;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x9300];
  STACK[0x5D28] = a1 + 32 * v3 + 0x6C2A3185FA868560;
  LODWORD(STACK[0x4704]) = 835803447;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004479B4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  STACK[0x39E0] = 0;
  return (*(v1 + 8 * (v0 - 14286)))(v2);
}

uint64_t sub_100447B34()
{
  v0 = STACK[0xF10] - 30579;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x1CD0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100447BCC()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393324;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_100447C10()
{
  STACK[0x4958] = 0;
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = 1703319423;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100447C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v17 = a3 + v4;
  v18 = a3 - 23551 + v12;
  v19 = (a3 + v5 + v7);
  v20 = (v17 + v8);
  v21 = *v19;
  v22 = *(*v16 + (*v14 & v9));
  v23 = ((((v22 ^ v19) & 0x7FFFFFFF) * v10) ^ ((((v22 ^ v19) & 0x7FFFFFFF) * v10) >> 16)) * v10;
  v24 = ((((v22 ^ v20) & 0x7FFFFFFF) * v10) ^ ((((v22 ^ v20) & 0x7FFFFFFF) * v10) >> 16)) * v10;
  *v20 = *(v15 + (v23 >> 24)) ^ v21 ^ *((v23 >> 24) + v6 + 2) ^ *((v23 >> 24) + v13 + 1) ^ *(v15 + (v24 >> 24)) ^ *((v24 >> 24) + v6 + 2) ^ *((v24 >> 24) + v13 + 1) ^ v23 ^ v24 ^ (BYTE3(v23) * v11) ^ (BYTE3(v24) * v11);
  return (*(STACK[0xF18] + 8 * (((v18 == a1) * a2) ^ a4)))(a1, a2, v18);
}

uint64_t sub_100447D30()
{
  v1 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 3562) ^ v0)))();
}

uint64_t sub_100447D68@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W6>, int a5@<W8>, int32x4_t a6@<Q7>)
{
  v10 = (a1 + 4 * a3);
  v11 = *v10;
  v12 = v10[1];
  v13 = (a2 + 4 * ((a3 + v9) & 0x1F));
  v14 = vaddq_s32(vaddq_s32(v12, v13[1]), a6);
  *v13 = vaddq_s32(vaddq_s32(v11, *v13), a6);
  v13[1] = v14;
  return (*(STACK[0xF18] + 8 * (((a3 + 8 == v7) * ((a4 ^ v8) * a5 + v6)) ^ a4)))();
}

uint64_t sub_100447DC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v18 = a2 + (((a8 ^ LODWORD(STACK[0xE90])) + a6) ^ ((v14 ^ LODWORD(STACK[0xE90])) + v12) ^ ((a5 ^ LODWORD(STACK[0xE90])) + a3)) * (((v10 - 15906) | 0x180u) ^ 0x199999999999B470);
  v19 = ((v18 ^ a1) + v17) ^ v18 ^ ((v18 ^ v15) + v8) ^ ((v16 ^ v18) + STACK[0xDE0]) ^ ((STACK[0xDF0] ^ v18) + STACK[0xE00]) ^ STACK[0xE10];
  v20 = v19 ^ STACK[0xE20];
  v21 = v19 ^ STACK[0xE40];
  v22 = STACK[0xE70] ^ v19;
  v23 = __CFADD__(v22, STACK[0xE80]);
  v24 = (v20 + STACK[0xE30]) ^ (v21 + STACK[0xE60]) ^ (v22 + STACK[0xE80]);
  LODWORD(STACK[0xEC0]) = a7 + __CFADD__(v11, 10 * v24) + ((v24 * 0xAuLL) >> 64) + 10 * ((a4 + __CFADD__(v20, STACK[0xE30]) + v9) ^ (a4 + __CFADD__(v21, STACK[0xE60]) + v9) ^ (v13 + v23 + v9));
  return (*(STACK[0xF18] + 8 * v10))();
}

uint64_t sub_100447F04(uint64_t a1)
{
  v7 = STACK[0xB274];
  v8 = (LODWORD(STACK[0xB274]) ^ ((v1 - 11691) | 0x8928) ^ 0xB74B4EBD) + 1219771002;
  v9 = (LODWORD(STACK[0xB274]) ^ 0xE678BCD5) + 428294955;
  LODWORD(STACK[0xE30]) = STACK[0xB274];
  LODWORD(STACK[0xEC0]) = (((v7 ^ 0xBA7B3453) + 1166330797) ^ v9 ^ v8) + 1670566519;
  v10 = STACK[0xB288];
  STACK[0xEB0] = STACK[0x2C30];
  v11 = v2 + 16;
  STACK[0xEA0] = v10 - v3;
  STACK[0xE90] = v10 - v4;
  STACK[0xE80] = v10 - v5;
  STACK[0xE70] = v10 - v6 - 2;
  v13 = v3 < v2 + 16 && v2 < v3 + 16;
  if (v11 > v4 && v2 < v4 + 16)
  {
    v13 = 1;
  }

  if (v11 > v5 && v2 < v5 + 16)
  {
    v13 = 1;
  }

  v17 = v2 < v6 + 18 && v11 > v6 + 2 || v13;
  LODWORD(STACK[0xE60]) = v17;
  v18 = *(STACK[0xF18] + 8 * v1);
  *&STACK[0xE40] = xmmword_100F52B00;
  return v18(a1, 23702, 13);
}

uint64_t sub_100448034()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 8711;
  v2 = STACK[0xF10] - 28631;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 1762661292) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xDBD74824) - (&STACK[0x10000] + 3800) + 303324142) ^ 0xDCEA6936));
  STACK[0x10EE0] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16254)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*STACK[0x970] < 1) * (v1 ^ 0xADBD)) ^ v2)))(v4);
}

uint64_t sub_10044824C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2CD8] = a1;
  LODWORD(STACK[0xADC0]) = v3;
  LOWORD(STACK[0xADC6]) = v2;
  LODWORD(STACK[0xADC8]) = STACK[0x9094];
  LODWORD(STACK[0xADCC]) = STACK[0x4EBC];
  STACK[0xADD0] = STACK[0x1F98];
  STACK[0x8230] = STACK[0x4640];
  return (*(STACK[0xF18] + 8 * ((169 * (((a1 == 0) ^ (((v1 - 95) | 0x15) + ((v1 - 95) | 0x15) - 67)) & 1)) ^ ((v1 + 7329) | 0x3915))))();
}

uint64_t sub_1004482E0@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xAF82)))(a1);
  *(STACK[0x7588] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100448328()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 29558) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xED3CCE6E) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x12C33190)) ^ 0x7AE7FCC5));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 48572)))(&STACK[0x10ED8]);
  STACK[0x85B8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 - 5863 + (v0 ^ 0x6BC5))))(v2);
}

uint64_t sub_10044840C@<X0>(int a1@<W2>, int a2@<W8>)
{
  v2 = (a2 + 1070232754) & 0xC035C21F;
  v3 = (a2 - 29461) | 0x2100;
  v4 = a2 - 17142;
  v5 = STACK[0x9760];
  LODWORD(STACK[0x10ED8]) = a2 + 193924789 * ((~(&STACK[0x10000] + 3800) & 0x6CC597BF | (&STACK[0x10000] + 3800) & 0x933A6840) ^ 0xDA7EA5D9) - 32304;
  STACK[0x10EE0] = v5;
  v6 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (a2 + 16307)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xB268]) = a1;
  STACK[0x7690] -= 576;
  return (*(v6 + 8 * (((a1 == (v2 ^ 0xE9D5051C)) * (v3 + 42565)) ^ v4)))(v8);
}

uint64_t sub_100448540()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 23612)))(v2);
}

uint64_t sub_100448594@<X0>(unsigned int a1@<W8>)
{
  *(*(v3 + 16) + 8 * (v2 - 1625868320)) = 0x981390C2FED9246;
  v5 = v2 - 288735925;
  v6 = (a1 < v1) ^ (v5 < v1);
  v7 = v5 < a1;
  if (v6)
  {
    v7 = a1 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((v7 | (8 * v7)) ^ v4)))();
}

uint64_t sub_1004486A0()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x7B54];
  LODWORD(STACK[0x35EC]) = 1693393258;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044874C()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x29A8];
  LODWORD(STACK[0x35EC]) = 1693393319;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004487E8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(STACK[0xEC0]);
  return (*(v1 + 8 * (v0 - 13121)))(v2);
}

uint64_t sub_1004489B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  STACK[0x3AA0] = v4;
  STACK[0x4540] = 0;
  LODWORD(STACK[0x749C]) = -371865839;
  STACK[0x7110] = 0x21B095692AC82FA0;
  if (a3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0xF18] + 8 * ((v6 * (((v3 + 1930662112) & 0x8CEBBF7F) + ((v3 - 13700) | 0x200) - 39071)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_100448A44@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0xF18] + 8 * (a1 - 24179));
  LODWORD(STACK[0xEC0]) = 1724701212;
  return v1();
}

uint64_t sub_100448C2C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0xDF25;
  v2 = STACK[0xF10] - 34678;
  v3 = STACK[0x3530];
  v4 = STACK[0x1040];
  v5 = STACK[0x2CF0];
  v6 = 1112314453 * (((~(&STACK[0x10000] + 3800) | 0x2E9EFB40) + ((&STACK[0x10000] + 3800) | 0xD16104BF)) ^ 0x3E372E67);
  LODWORD(STACK[0x10EDC]) = (STACK[0xF10] + 679158052) ^ v6;
  LOWORD(STACK[0x10ED8]) = -28075 * (((~(&STACK[0x10000] + 3800) | 0xFB40) + ((&STACK[0x10000] + 3800) | 0x4BF)) ^ 0x2E67) + 3771;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EF0]) = v6 - 700240269;
  STACK[0x10EF8] = v5;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41CB)))(&STACK[0x10ED8]);
  STACK[0x9880] = *(v7 + 8 * v2);
  return (*(v7 + 8 * (v1 + v2 - 16938)))(v8);
}

uint64_t sub_100448D40()
{
  v1 = STACK[0xF10] - 5273;
  v2 = *STACK[0xE50];
  v3 = *STACK[0xE58] >> (STACK[0xF10] ^ 0x39);
  v4 = *(v2 + 4 * (((457 * (STACK[0xF10] ^ 0x8B19) + 713259078) % v3) & 0x3FFFFFFC));
  LOWORD(v3) = ~*(v2 + 4 * ((v3 - 1) & v4));
  LODWORD(v2) = ~v4;
  v5 = STACK[0x8B0];
  v6 = *(STACK[0x8B0] - 527405895);
  v7 = *(STACK[0x8B8] + 4 * v6);
  v9 = v3 & WORD1(v2);
  v8 = v9 == 0;
  v10 = v9 + v9 * v7;
  if (v8)
  {
    v11 = *(STACK[0x8B8] + 4 * v6);
  }

  else
  {
    v11 = 0;
  }

  *(STACK[0x8B8] + 4 * v6) = (v11 + v10) * v7;
  *(v5 - 527405895) = (v6 + 1) % 6u;
  v12 = STACK[0xAEBC];
  if (!v8)
  {
    v12 = 371891350;
  }

  LODWORD(STACK[0x22E0]) = v12;
  v13 = STACK[0x4438];
  *(v13 + 504) = 610231143;
  *(v13 + 376) = 0x981390C2FED9246;
  *(v13 + 392) = 0;
  *(v13 + 400) = 0u;
  *(v13 + 416) = 0u;
  *(v13 + 432) = 0x15DB1509EF155482;
  *(v13 + 440) = 0x981390C2FED9246;
  *(v13 + 496) = 0x15DB1509EF155482;
  *(v13 + 456) = 0;
  *(v13 + 464) = 0u;
  *(v13 + 480) = 0u;
  v14 = v12 == v0;
  LOBYTE(STACK[0x63EF]) = v14;
  return (*(STACK[0xF18] + 8 * ((54271 * v14) ^ v1)))();
}

uint64_t sub_100448FE8()
{
  v1 = STACK[0x9650];
  v2 = STACK[0x2488];
  v3 = STACK[0x9520];
  LODWORD(STACK[0x10EE4]) = v0 - 906386353 * ((((&STACK[0x10000] + 3800) | 0x9DC93535) - ((&STACK[0x10000] + 3800) & 0x9DC93530)) ^ 0xACC8F811) - 13929;
  STACK[0x10EE8] = v3;
  STACK[0x10EF0] = v2;
  STACK[0x10ED8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBFD2)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((53280 * (LODWORD(STACK[0x10EE0]) == ((v0 + 13193) | 0x431) + ((v0 - 28904) | 0x80C) - 371913023)) ^ v0)))(v5);
}

uint64_t sub_1004492F0()
{
  v0 = STACK[0xF10] - 31053;
  LODWORD(STACK[0x8784]) = (((LODWORD(STACK[0xA080]) ^ LODWORD(STACK[0x98D4]) ^ 0x6CE73C48) + 1297441881) ^ ((LODWORD(STACK[0xA080]) ^ LODWORD(STACK[0x98D4]) ^ 0xBD4AB037) - 1661409240) ^ ((LODWORD(STACK[0xA080]) ^ LODWORD(STACK[0x98D4]) ^ 0xD1AD8C7F) - 266349456)) - (((((STACK[0xF10] - 34359) | 0x48AA) ^ 0xB3224DFE ^ LODWORD(STACK[0xA088])) + 1289617328) ^ ((LODWORD(STACK[0xA088]) ^ 0x2E7E1682) - 780015234) ^ ((LODWORD(STACK[0xA088]) ^ 0x7489D1C3) - 1955189187)) + 1226668258;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x3BFF)))();
}

uint64_t sub_100449444()
{
  STACK[0x5C50] = ((2 * v1) & 0x11FB97FDELL) + (v1 ^ 0x3EE355FF8FDCBFEFLL) + (((v0 - 3124) | 0x8022u) ^ 0xFBFDEB3A7D7F5DE8);
  LODWORD(STACK[0x1374]) = 1544535787;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004494B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = STACK[0xE70] + (v5 << 7);
  v7 = *(v6 + 4 * a4);
  v8 = ((v7 ^ 0x769B5C4F) - 1330034052) ^ v7 ^ ((v7 ^ 0x36B66250) + ((v4 - 23115) ^ 0xF0945AC1)) ^ ((v7 ^ 0x60F2C2B) - 1070777824) ^ ((v7 ^ 0x7FFFFBFF) - 1176638004);
  *(v6 + 4 * a4) = (((v8 ^ 0xC59FC5C1) + 434186723) ^ ((v8 ^ 0xEEBC3358) + 851631996) ^ ((v8 ^ 0xA8DF292A) + 1956758794)) - 631523782;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1004495C8@<X0>(int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = v1 - 0x10A99C80114D1487;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v12 = v11 ^ (-901292213 * (v1 - 290264199)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
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
    v20 = *(v10 + v2);
    v27.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v27.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v27.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v27.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v10 + v2) = vmulq_s8(vqtbl4q_s8(v27, xmmword_100BC7660), v18);
    v2 += 16;
    v17 = vaddq_s32(v17, v19);
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
  }

  while (v2 != 384);
  v21 = (v1 - 0x10A99C80114D130FLL);
  for (i = 49; i > 2; --i)
  {
    v23 = 16777619 * ((i - 2 + v12) ^ v12) % (i - 2);
    v24 = *(v10 + 8 * v23) ^ *v21;
    *v21 = v24;
    v25 = *(v10 + 8 * v23) ^ v24;
    *(v10 + 8 * v23) = v25;
    *v21-- ^= v25;
  }

  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100449AE4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W7>, int a7@<W8>)
{
  v20 = ((2 * (v11 & v8)) | 0x40920400) & (v8 ^ 0x7B646DDA) ^ v11 & v8 ^ ((32 * (((v11 & v8) >> 4) & 1)) | 0x100000);
  v21 = (2 * (v8 ^ 0x7B646DDA)) & a1 ^ a1 ^ ((2 * (v8 ^ 0x7B646DDA)) ^ 0xF1E60C40) & (v8 ^ 0x7B646DDA);
  v22 = (4 * v20) & a3 ^ v20 ^ ((4 * v20) ^ 0x40D20400) & v21;
  v23 = (4 * v21) & a3 ^ 0x98120420 ^ ((4 * v21) ^ 0x227A1480) & v21;
  v24 = v22 ^ (16 * v22) & a3 ^ ((16 * v22) ^ 0x1000000) & v23 ^ 0xD8AA0420;
  v25 = (16 * v23) & a6 ^ 0x501A0420 ^ ((16 * v23) ^ 0x8BA04200) & v23;
  v26 = (v24 << 8) & a6 ^ v24 ^ ((v24 << 8) ^ 0xBA042000) & v25;
  v27 = (8 * ((v26 << 16) & v18 ^ v26 ^ ((v26 << 16) ^ 0x4200000) & ((v25 << 8) & v18 ^ 0xBA0000 ^ ((v25 << 8) ^ 0x1A040000) & v25))) ^ (4 * v8);
  v28 = *(v17 + (v27 ^ 0x8BA986E8) % v7);
  v29 = v28 & 0xFFFFFFFB ^ 0xFFFFFFA3;
  v30 = *(v17 + (v27 ^ 0x8BA986E9) % v7);
  v31 = ~v30 & 0x4B;
  v32 = 2 * ((v19 | (2 * ~v30)) & v30 | v31);
  v33 = 2 * ((v32 & v10 | v31) ^ v32 & v30);
  v34 = 2 * ((v33 & v10 | v31) ^ v33 & v30);
  v35 = v28 ^ (2 * ((v28 ^ v10) & (2 * ((v28 ^ v10) & (2 * ((v28 ^ v10) & (2 * ((v28 ^ v10) & (2 * ((v28 ^ v10) & (2 * ((v15 & (2 * v28) ^ 0x4E) & v28 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  LOBYTE(v29) = 2 * ((v34 & v10 | v31) ^ v34 & v30);
  LOBYTE(v29) = 2 * ((v29 & v10 | v31) ^ v29 & v30);
  v36 = *(v17 + (v27 ^ 0x8BA986EA) % v7);
  v37 = v36 & 0x25 | 0x58;
  LOBYTE(v29) = v30 ^ (2 * ((v29 & v10 | v31) ^ v29 & v30));
  v38 = v36 ^ (2 * ((v36 ^ v10) & (2 * ((v36 ^ v10) & (2 * ((v36 ^ v10) & (2 * ((v36 ^ v10) & (2 * ((v36 ^ v10) & (2 * (v36 & (2 * v36) & v15 ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37));
  v39 = *(v17 + (v27 ^ 0x8BA986EB) % v7);
  v40 = v39 & 0xFFFFFFC3 ^ 0xF;
  v41 = v39 ^ v10;
  v42 = v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * ((v15 & (2 * v39) ^ a7) & v41 ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40;
  *(v16 + 4 * v8 + a5) = (v39 ^ (2 * v42)) & v13 ^ a2 ^ (((v38 << 8) & 0xCFFF | ((((v29 << 16) ^ 0xFFA47DA0) & (((v35 ^ 0xC2) << 24) ^ 0x28EF7DA0) & 0xFFEFFFFF | (((v29 >> 4) & 1) << 20)) ^ 0x3AD64D72) & ((v38 << 8) ^ 0xFFFF57FE)) ^ v14) & ((v39 ^ (2 * v42)) ^ v12);
  return (*(STACK[0xF18] + 8 * (a4 ^ (56 * (((v8 + 1 - v9) | (v9 - (v8 + 1))) >> 63)))))();
}

uint64_t sub_100449F44()
{
  v1 = (STACK[0xF10] - 29498) | 0x4C4;
  v2 = (2 * STACK[0xF10]) ^ 0x1BF88;
  v3 = STACK[0xF10] - 3109;
  STACK[0x3250] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ v2 ^ 0xB51C) * (v0 != 0)) ^ v3)))();
}

uint64_t sub_100449F9C()
{
  v0 = *(STACK[0x78B0] + 508);
  v2 = v0 != 371865838 && v0 != LODWORD(STACK[0x10AC]);
  return (*(STACK[0xF18] + 8 * ((v2 * ((2 * (STACK[0xF10] - 29794)) ^ 0x2D8E)) ^ (STACK[0xF10] - 29794))))();
}

uint64_t sub_100449FF4()
{
  v0 = STACK[0xC50];
  *(STACK[0x6360] + 32) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044A024()
{
  *(v1 + 32) = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 12676)))(*(v0 + 2324));
  *(v1 + 40) = v4;
  return (*(v3 + 8 * (((v4 != 0) * ((v2 ^ 0x9912) - 1297 + 229 * (v2 ^ 0x9912))) ^ v2)))();
}

uint64_t sub_10044A0FC()
{
  STACK[0x10EE0] = *(v0 + 288);
  LODWORD(STACK[0x10ED8]) = v1 + 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192) + 18124;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 25872)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10044A1A0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 18942)))(v3);
}

uint64_t sub_10044A1D0@<X0>(int a1@<W8>)
{
  v5 = 23958;
  atomic_compare_exchange_strong(v4, &v5, v2);
  return (*(STACK[0xF18] + 8 * (((v5 == v3) * (a1 + 3878)) ^ v1)))();
}

uint64_t sub_10044A464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  v5 = STACK[0xF10] - 34080;
  LODWORD(STACK[0xA510]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * ((v3 ^ 0x9920) + v5)))(a1, a2, a3, v4, (LODWORD(STACK[0x4574]) + LODWORD(STACK[0x7804]) - 621609286));
}

uint64_t sub_10044A4C8()
{
  v1 = STACK[0xF18];
  STACK[0x2AE0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 1227110556) & 0x4924F82F ^ 0x90DE) + v0)))();
}

uint64_t sub_10044A528()
{
  v5 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  LODWORD(v12) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  STACK[0xC000] = 0;
  STACK[0xC008] = v2 - 0x10A99C80114D1487;
  v13 = 16777619 * ((-901292213 * v12 + 7) ^ (-901292213 * v12)) % 7;
  v14 = *(&STACK[0xC000] | v13);
  *(&STACK[0xC000] | v13) = 0;
  LOBYTE(STACK[0xC007]) = v14;
  v15 = 16777619 * ((-901292213 * v12 + 6) ^ (-901292213 * v12)) % 6;
  v16 = *(&STACK[0xC000] | v15);
  *(&STACK[0xC000] | v15) = STACK[0xC006];
  LOBYTE(STACK[0xC006]) = v16;
  v17 = 16777619 * ((-901292213 * v12 + 5) ^ (-901292213 * v12)) % 5;
  v18 = *(&STACK[0xC000] | v17);
  *(&STACK[0xC000] | v17) = STACK[0xC005];
  LOBYTE(STACK[0xC005]) = v18;
  v19 = STACK[0xC000];
  LOBYTE(STACK[0xC000]) = STACK[0xC004];
  LOBYTE(STACK[0xC004]) = v19;
  v20 = 16777619 * ((-901292213 * v12 + 3) ^ (-901292213 * v12)) % 3;
  v21 = *(&STACK[0xC000] | v20);
  *(&STACK[0xC000] | v20) = STACK[0xC003];
  LOBYTE(STACK[0xC003]) = v21;
  v22 = STACK[0xC001];
  LOBYTE(STACK[0xC002]) = STACK[0xC000];
  LOWORD(STACK[0xC000]) = v22;
  v23 = vdup_n_s32(-901292213 * v12);
  v24.i32[0] = v23.i32[0];
  v24.i32[1] = -901292213 * v12 + 1;
  v25 = veor_s8(vmul_s32(v24, v23), v23);
  STACK[0xC000] = vmla_s32(v25, STACK[0xC000], vdup_n_s32(0x1000193u));
  STACK[0xC008] ^= STACK[0xC000];
  STACK[0xC008] = vmul_s32(vsub_s32(STACK[0xC008], v25), vdup_n_s32(0x359C449Bu));
  v26 = STACK[0xC00A];
  LOWORD(STACK[0xC009]) = STACK[0xC008];
  LOBYTE(STACK[0xC008]) = v26;
  v27 = (&STACK[0xC008] | v20);
  LOBYTE(v22) = *v27;
  *v27 = STACK[0xC00B];
  LOBYTE(STACK[0xC00B]) = v22;
  LOBYTE(v27) = STACK[0xC008];
  LOBYTE(STACK[0xC008]) = STACK[0xC00C];
  LOBYTE(STACK[0xC00C]) = v27;
  v28 = (&STACK[0xC008] | v17);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xC00D];
  LOBYTE(STACK[0xC00D]) = v27;
  v29 = (&STACK[0xC008] | v15);
  LOBYTE(v28) = *v29;
  *v29 = STACK[0xC00E];
  LOBYTE(STACK[0xC00E]) = v28;
  v30 = (&STACK[0xC008] | v13);
  v31 = *v30;
  *v30 = STACK[0xC00F];
  LOBYTE(STACK[0xC00F]) = v31;
  v32 = STACK[0xC008];
  v33 = (-901292213 * STACK[0xC008]) ^ v12;
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
    v52.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v44), vsubq_s32(v41, v44)), v44), vmull_high_u16(v48, v43));
    v52.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v44), vsubq_s32(v40, v44)), v44), vmull_u16(*v47.i8, 0x9B009B009B009BLL));
    v52.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v44), vsubq_s32(v42, v44)), v44), vmull_u16(*v48.i8, 0x9B009B009B009BLL));
    v52.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v44), vsubq_s32(v39, v44)), v44), vmull_high_u16(v47, v43));
    *(v32 + v38) = vqtbl4q_s8(v52, xmmword_100BC7660);
    v38 += 16;
    v42 = vaddq_s32(v42, v45);
    v41 = vaddq_s32(v41, v45);
    v40 = vaddq_s32(v40, v45);
    v39 = vaddq_s32(v39, v45);
  }

  while (v38 != 384);
  STACK[0x7560] = STACK[0xC008] + v1;
  if (v4)
  {
    v49 = v3 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v49;
  return (*(STACK[0xF18] + 8 * ((((v50 ^ (v0 - 62)) & 1) * ((v0 ^ 0x91E0) - 47544)) ^ v0)))(v39, v40, v41, v42);
}

uint64_t sub_10044AA24()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 14688)))(STACK[0x1890]);
  LODWORD(STACK[0x3E30]) = v0;
  v5 = v0 != -371865839 || STACK[0x2240] == 0;
  return (*(v2 + 8 * ((v5 * (((v1 - 1008657242) & 0x3C1EDF7F) - 35985)) ^ v1)))(v3);
}

uint64_t sub_10044AC0C(int a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a2[6];
  v9 = ((*a2 & 4 ^ 0x98C3D9E) + 315462123) ^ (*a2 & 4 | 0x249E317B) ^ ((*a2 & 4 ^ 0x84225B4D) - 1620838598);
  v10 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0xF47E30D) - ((&STACK[0x10000] + 3800) & 0xF47E308)) ^ 0x989CD1A6);
  LODWORD(STACK[0xEB0]) = v6;
  LODWORD(STACK[0x10EE4]) = ((((v6 ^ 0x9EDA) + (v8 & 0x40000000) + 1859396483) ^ (v8 & 0x40000000 | 0xAF13903A) ^ ((v8 & 0x40000000 ^ 0xE423937B) - 1427071165)) + 400135175) ^ v10;
  LODWORD(STACK[0x10EE8]) = v10 - 574088259 + v6;
  LODWORD(STACK[0x10EDC]) = (v8 & 0x4000000 ^ 0x66480B67) + v10;
  LODWORD(STACK[0x10ED8]) = -1603510583 * ((((&STACK[0x10000] + 3800) | 0xF47E30D) - ((&STACK[0x10000] + 3800) & 0xF47E308)) ^ 0x989CD1A6) + 991889963 * v9 + 521681401;
  v11 = *(STACK[0xF18] + 8 * (v6 ^ 0xD9CB));
  LODWORD(STACK[0xEC0]) = a1;
  LODWORD(STACK[0xED0]) = a5;
  v11(&STACK[0x10ED8]);
  v15 = LODWORD(STACK[0xED0]);
  v16 = LODWORD(STACK[0xEC0]);
  *(a3 + 16 * v7 + 8) = ((LODWORD(STACK[0x10EE0]) ^ 0x94A6C15) - 1774294267) ^ LODWORD(STACK[0x10EE0]) ^ ((LODWORD(STACK[0x10EE0]) ^ 0x9AC285BB) + 95847083) ^ ((LODWORD(STACK[0x10EE0]) ^ 0x8CFCEE9C) + 327739790) ^ ((LODWORD(STACK[0x10EE0]) ^ 0x7FFFFFDC) - 527697714) ^ 0x981390C4F666AA8;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xEB0])))(v16, a2, a3, 3517266962, v15, a6, 12876, 3052709891);
}

uint64_t sub_10044B11C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x89F8] = v1;
  LODWORD(STACK[0x14F0]) = v2;
  STACK[0x1EA8] = a1;
  STACK[0x5D60] = 0;
  LODWORD(STACK[0x9784]) = -371865839;
  LOWORD(STACK[0x3D22]) = 12092;
  LODWORD(STACK[0x9094]) = -371865839;
  LODWORD(STACK[0x4EBC]) = -371865839;
  STACK[0x1F98] = 0xDE1EDD63F22226FELL;
  STACK[0x4640] = 0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 ^ 0x6D9A)))(16);
  STACK[0x89D8] = v5;
  return (*(v4 + 8 * ((((((v3 - 38650) ^ (v5 == 0)) & 1) == 0) * ((v3 - 7111) ^ 0x8B06)) ^ v3)))();
}

uint64_t sub_10044B23C()
{
  v1 = v0 | 0xD00;
  v2 = STACK[0xF18];
  STACK[0x22B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((v1 + 35331) ^ 0xD513) + v1)))();
}

uint64_t sub_10044B28C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x28E4]) = v0;
  v3 = STACK[0x49B0];
  v4 = (v1 - 371901482) ^ (16 * LODWORD(STACK[0x7738]));
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = 1068849388;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10044B414()
{
  v1 = *(STACK[0x7B28] + 8);
  STACK[0x5F58] = v1;
  return (*(STACK[0xF18] + 8 * (((v1 != 0) * (327 * ((v0 + 6553) ^ 0x3335) + ((v0 + 6553) ^ 0xFFFF47A5))) ^ (v0 + 6553))))();
}

uint64_t sub_10044B500()
{
  v2 = 9 * (*(v1 + 32) | ((*(v1 + 32) < 0x23u) << 8)) + (((v0 + 27357) | 0x911) ^ 0x189CF1C2) + 2102007493;
  v3 = v2 ^ ((v2 ^ 0xC5F2696) + 1715882944) ^ ((v2 ^ 0x30560FED) + 1515152069) ^ ((v2 ^ 0xD690667A) - 1131869356) ^ ((v2 ^ 0x7F7FDDD7) + 359051519) ^ 0x7C3355C7;
  LODWORD(STACK[0x74CC]) = v3;
  STACK[0x5C50] = (((v3 ^ 0x50DC7E08F6C5DA80) - 0x50DC7E08F6C5DA80) ^ ((v3 ^ 0xB34365EC17BF5517) + 0x4CBC9A13E840AAE9) ^ ((v3 ^ 0xE39F1BE408AF4886) + 0x1C60E41BF750B77ALL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = 177578530;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044B678()
{
  v1 = *STACK[0x1970];
  LOBYTE(STACK[0x2F4F]) = v1 == 0;
  return (*(STACK[0xF18] + 8 * (((v1 != 0) * (((v0 - 21939) | 0x308) - 29483)) ^ v0)))();
}

uint64_t sub_10044B6C4()
{
  v1 = STACK[0x2488];
  STACK[0x36F0] = STACK[0xF78];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170665;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044B72C()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762637381) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE76D)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * (((v0 + 6764) | 0x12B1) + ((v0 + 21294) | 0xA39) - 35935)) ^ v0)))(v2);
}

uint64_t sub_10044B818()
{
  v2 = STACK[0x68D8];
  STACK[0x6BB0] = STACK[0x68D8];
  v3 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10ED8]) = v3 - 1431125376;
  LODWORD(STACK[0x10EE8]) = v1 - v3 + 12326;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 43312)))(&STACK[0x10ED8]);
  v6 = (((v0 ^ 0x48539830) + 1030261313) ^ ((v0 ^ 0x8334E1A6) - 166726697) ^ (((v1 + 6665) ^ 0xE46AA3F2) + (v0 ^ 0x91518A57))) + 538029345;
  LODWORD(STACK[0x85F8]) = v6;
  v7 = (LODWORD(STACK[0x5D58]) + v6) ^ (((LODWORD(STACK[0x5D58]) + v6) ^ 0xBE6E98FB) - 1019564211) ^ (((LODWORD(STACK[0x5D58]) + v6) ^ 0x3400211B) + 1230247597) ^ (((LODWORD(STACK[0x5D58]) + v6) ^ 0x6D3A8E57) + 275692001) ^ (((LODWORD(STACK[0x5D58]) + v6) ^ 0x65FFFFFF) + 413911113) ^ 0x6B7E0F59;
  STACK[0x5400] = v2;
  STACK[0x41A0] = STACK[0x1110];
  LODWORD(STACK[0x20CC]) = v7;
  LODWORD(STACK[0x38AC]) = 306682745;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_10044B9AC@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + 36;
  LODWORD(STACK[0x10ED8]) = (v1 + 9447) ^ (1603510583 * (((&STACK[0x10ED8] | 0x2EE36532) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xD11C9AC8)) ^ 0xB9385799));
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 28461)))(&STACK[0x10ED8]);
  v4 = STACK[0x10EDC];
  v5 = STACK[0x78B0] + 96;
  v6 = 155453101 * (((&STACK[0x10ED8] | 0xBDC17C83) - (&STACK[0x10ED8] | 0x423E837C) + 1111393148) ^ 0x5BE7674C);
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10EE0]) = v4 - v6;
  STACK[0x10EF8] = v5;
  LODWORD(STACK[0x10ED8]) = v6 + v1 - 4948;
  LODWORD(STACK[0x10EF0]) = v6 ^ 0xE9D4C710;
  v7 = (*(v3 + 8 * (v1 + 28608)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v7);
}

uint64_t sub_10044BAD0@<X0>(int a1@<W8>)
{
  v1 = a1 - 8977;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10044BB40@<X0>(int a1@<W8>)
{
  v10 = *(v2 + v4);
  v11 = v4 + 1;
  v12 = v4 - 1;
  *(v5 + v12) = *(v1 + v12) ^ *(v6 + v12) ^ (-105 * v12) ^ (13 * v12) ^ *(v3 + v11) ^ v10 ^ *(v7 + v12) ^ *(v8 + v12) ^ *(v9 + v11);
  return (*(STACK[0xF18] + 8 * (((v12 == 0) * ((a1 - 20886) ^ 0x2F8C)) ^ a1)))();
}

uint64_t sub_10044BCB0()
{
  v1 = (((*(*(STACK[0x7768] + 16) + 8) ^ 0xF5037A1F604A9953) + 0xAFC85E09FB566ADLL) ^ ((*(*(STACK[0x7768] + 16) + 8) ^ 0xDCAFD6B74D0EDCB6) + 0x23502948B2F1234ALL) ^ ((((v0 ^ 0xB8E8u) + 31546 + 0x202D95A402A94C68) ^ *(*(STACK[0x7768] + 16) + 8)) - 0x202D95A402A9D7A3)) + 0x981390CF6E3D7B7;
  v2 = ((5 * (v0 ^ 0xB8E8u) + (STACK[0xA4B0] ^ 0x3CFB63FC8873E9F6) - 0x3CFB63FC887439FBLL) ^ ((STACK[0xA4B0] ^ 0xC721FC5EB6F442A5) + 0x38DE03A1490BBD5BLL) ^ ((STACK[0xA4B0] ^ 0xF25BA6AE116A3915) + 0xDA45951EE95C6EBLL)) + 0x981390CF6E3D7B7;
  v3 = (v1 < 0xC6F64571) ^ (v2 < 0xC6F64571);
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0xC6F64571;
  }

  return (*(STACK[0xF18] + 8 * ((487 * v4) ^ v0)))();
}

uint64_t sub_10044BED4()
{
  *(STACK[0x7980] + 136) = v1;
  v2 = STACK[0x7C04];
  if (!v1)
  {
    v2 = 371891397;
  }

  LODWORD(STACK[0xB7F8]) = v2;
  return (*(STACK[0xF18] + 8 * (((2 * (v2 != -371865839)) | (8 * (v2 != -371865839))) ^ v0)))();
}

uint64_t sub_10044BF38()
{
  v2 = STACK[0xF10] - 27280;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10044BFE0()
{
  v0 = STACK[0xF10] - 12952;
  v1 = STACK[0xF10] - 32456;
  v2 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x4737)))();
}

uint64_t sub_10044C024(uint64_t a1, uint64_t a2)
{
  *v2 = v4;
  v2[1] = v4;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 3923101457);
}

uint64_t sub_10044C084()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34166;
  LODWORD(STACK[0x9E98]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * ((10319 * (v1 == 507518835)) ^ (v0 - 29445))))();
}

uint64_t sub_10044C178()
{
  v3 = STACK[0x63F0];
  v4 = 155453101 * ((~v2 & 0xF024763193D14F27 | v2 & 0xFDB89CE6C2EB0D8) ^ 0x4C5328C475F754E8);
  LODWORD(STACK[0x10EF4]) = LODWORD(STACK[0x5234]) + v4;
  STACK[0x10EE8] = v3;
  STACK[0x10ED8] = (v0 ^ 0xD70A5CFED3DE16A1 ^ (327 * (v1 ^ 0x414Au))) - v4;
  STACK[0x10EF8] = &STACK[0x3314];
  LODWORD(STACK[0x10EE0]) = (v1 + 17198) ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8D1B)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((99 * (LODWORD(STACK[0x3314]) == 1497668682)) ^ v1)))(v6);
}

uint64_t sub_10044C284()
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 35150) ^ 0x12EC)))();
}

uint64_t sub_10044C4A8()
{
  v3 = v0 - 23247;
  v4 = *(v1 - 0x217E172EFA1E81CLL);
  v5 = (((((v0 - 28863) | 0x8A0A) ^ *v2 ^ 0x5A2BF79F) - 1512799396) ^ ((*v2 ^ 0x6CF84B33) - 1828211507) ^ (((((8 * (v0 - 23247)) ^ 0xF3A0) - 553212450) ^ *v2) + 553193338)) - 54746966;
  v6 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10EF8]) = v0 - 23247 - v6 + 33856;
  STACK[0x10EF0] = v4;
  STACK[0x10F00] = (v2 + 1);
  LODWORD(STACK[0x10ED8]) = v5 ^ v6;
  STACK[0x10EE0] = &STACK[0x8F34];
  STACK[0x10EE8] = &STACK[0x645C];
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * ((v0 - 23247) ^ 0xDDE5)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((40218 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v3)))(v8);
}

uint64_t sub_10044C6D4()
{
  v4 = v2 + 120 * v1;
  v5 = *(v4 + 24);
  STACK[0xB508] = v5;
  v6 = *(v4 + 16);
  LODWORD(STACK[0xB510]) = v6;
  STACK[0x9088] = v5;
  LODWORD(STACK[0x4714]) = v6;
  STACK[0x70B0] = 0;
  LODWORD(STACK[0x821C]) = 0;
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * (v3 ^ (v0 - 16105) ^ 0xD1F6)) ^ v0)))();
}

uint64_t sub_10044C7C4()
{
  v2 = 3 * (v1 ^ 0x2E3F);
  v3 = (v0 ^ 0xD9A0FF5A) + 643749814 + ((16 * v1) ^ 0x2A630);
  v4 = (v3 ^ ((v0 ^ 0xAECBD3BF) + 1362373697) ^ ((v0 ^ 0x9EBEFF8D ^ v2) + 1631654924)) == 0x1629946F || (v3 ^ ((v0 ^ 0xAECBD3BF) + 1362373697) ^ ((v0 ^ 0x9EBEFF8D ^ v2) + 1631654924)) == 371823724;
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

  return (*(STACK[0xF18] + 8 * ((28 * (v6 + v7 == 127)) ^ v1)))();
}

uint64_t sub_10044C8A0@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x3FA9;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 ^ 0xB13E)))();
  *(v1 + 16) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10044C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  LODWORD(STACK[0xED0]) = 1654347157;
  LODWORD(STACK[0xEC0]) = 1695446178;
  LODWORD(STACK[0xEB0]) = 1539007536;
  LODWORD(STACK[0xEA0]) = 753731862;
  LODWORD(STACK[0xE80]) = 1992430994;
  LODWORD(STACK[0xE70]) = 1950477078;
  LODWORD(STACK[0xE60]) = 585937571;
  LODWORD(STACK[0xE40]) = 336741229;
  LODWORD(STACK[0xE90]) = 1807920023;
  LODWORD(STACK[0xE10]) = 105781084;
  LODWORD(STACK[0xE30]) = 333551698;
  LODWORD(STACK[0xDC0]) = 46203797;
  LODWORD(STACK[0xDF0]) = 337732216;
  LODWORD(STACK[0xDD0]) = 1243772393;
  LODWORD(STACK[0xE00]) = 48128050;
  LODWORD(STACK[0xDE0]) = 84047963;
  LODWORD(STACK[0xE20]) = 1892052382;
  LODWORD(STACK[0xDA0]) = 2092435812;
  LODWORD(STACK[0xD80]) = 2036664210;
  LODWORD(STACK[0xD90]) = 1359699706;
  LODWORD(STACK[0xD70]) = 1698509618;
  v6 = STACK[0xF10];
  LODWORD(STACK[0xD40]) = STACK[0xF10];
  LODWORD(STACK[0xD60]) = v6;
  LODWORD(STACK[0xD30]) = v6;
  LODWORD(STACK[0xDB0]) = v6;
  LODWORD(STACK[0xD50]) = v6;
  STACK[0xD20] = v6;
  STACK[0xD00] = v6;
  LODWORD(STACK[0xCF0]) = v6;
  LODWORD(STACK[0xCC0]) = v6;
  LODWORD(STACK[0xCD0]) = v6;
  LODWORD(STACK[0xCE0]) = v6;
  LODWORD(STACK[0xCB0]) = v6;
  LODWORD(STACK[0xCA0]) = v6;
  LODWORD(STACK[0xC90]) = v6;
  return a6(377697279, 1912434185, v6, v6, 696465460);
}

uint64_t sub_10044CB30@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4F6C]) = a1;
  v3 = (((*(v2 + 16) ^ 0x44E71506) - 1155994886) ^ ((*(v2 + 16) ^ 0xBD86A89B) + 1115248485) ^ ((*(v2 + 16) ^ ((v1 ^ 0x34A8) + 280235262)) - 280263308)) + 1715286804;
  v4 = v3 < 0x7C676C03;
  v5 = a1 + 1019443486 < v3;
  if ((a1 + 1019443486) < 0x7C676C03 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((30 * !v5) ^ v1)))(*(v2 + 8));
}

uint64_t sub_10044CCA4()
{
  v2 = STACK[0x3B4];
  v3 = *(v1 + (LODWORD(STACK[0x3B4]) - 1515157398));
  v4 = *(v1 + (LODWORD(STACK[0x3B4]) - 1515157397));
  v5 = *(v1 + (LODWORD(STACK[0x3B4]) - 1515157396));
  LODWORD(STACK[0xED0]) = ~(2 * v5) | 0xFFFFFF8B;
  v6 = *(v1 + (v2 - 1515157395));
  LODWORD(STACK[0xE20]) = v0;
  v7 = *(v1 + (v2 - 1515157394));
  LODWORD(STACK[0xEA0]) = (2 * v6) & 0x74;
  LODWORD(STACK[0xEC0]) = (2 * v7) & 0x74;
  v8 = *(v1 + (v2 - 1515157393));
  v9 = *(v1 + (v2 - 1515157392));
  v10 = *(v1 + (v2 - 1515157391));
  v11 = *(v1 + (v2 - 1515157390));
  v12 = *(v1 + (v2 - 1515157389));
  v13 = *(v1 + (v2 - 1515157387));
  v14 = v1;
  v15 = *(v1 + (v2 - 1515157386));
  v16 = *(v1 + (v2 - 1515157353));
  v17 = ((v16 >> 3) | (32 * v16)) - ((2 * ((v16 >> 3) | (32 * v16))) & 0x3FDC) - 18;
  LODWORD(STACK[0xE80]) = (v17 >> 5) | (8 * v17);
  LODWORD(STACK[0xD30]) = v0 ^ 0x8873;
  v18 = *(v14 + (v2 - 1515157385));
  LODWORD(STACK[0xE90]) = v3 + ((2 * v3) & 0x74 ^ ((v0 ^ 0x8873) - 108));
  LODWORD(STACK[0xE70]) = v4 - ((2 * v4) & 0x74);
  v19 = *(v14 + (v2 - 1515157384));
  LODWORD(STACK[0xED0]) += v5;
  LODWORD(STACK[0xEA0]) = v6 - LODWORD(STACK[0xEA0]);
  v20 = *(v14 + (v2 - 1515157383));
  LODWORD(STACK[0xEC0]) = v7 - LODWORD(STACK[0xEC0]);
  LODWORD(STACK[0xE60]) = v8 - ((2 * v8) & 0x74);
  LODWORD(STACK[0xE40]) = v9 + (~(2 * v9) | 0xFFFFFF8B);
  v21 = *(v14 + (v2 - 1515157381));
  v22 = *(v14 + (v2 - 1515157380));
  v23 = *(v14 + (v2 - 1515157379));
  v24 = v15 - ((2 * v15) & 0x74);
  v25 = v18 - ((2 * v18) & 0x74);
  v26 = *(v14 + (v2 - 1515157378));
  v27 = v19 - ((2 * v19) & 0x74);
  v28 = v20 - ((2 * v20) & 0x74);
  v29 = *(v14 + (v2 - 1515157377));
  v30 = *(v14 + (v2 - 1515157376));
  v31 = v23 - ((2 * v23) & 0x74);
  v32 = *(v14 + (v2 - 1515157375));
  LODWORD(STACK[0xE10]) = v26 - ((2 * v26) & 0x74);
  LODWORD(STACK[0xE00]) = v29 - ((2 * v29) & 0x74);
  v33 = *(v14 + (v2 - 1515157374));
  LODWORD(STACK[0xDF0]) = v30 - ((2 * v30) & 0x74);
  LODWORD(STACK[0xDE0]) = v32 - ((2 * v32) & 0x74);
  v34 = *(v14 + (v2 - 1515157373));
  LODWORD(STACK[0xDA0]) = v33 - ((2 * v33) & 0x74);
  LODWORD(STACK[0xD90]) = v34 - ((2 * v34) & 0x74);
  v35 = *(v14 + (v2 - 1515157372));
  v36 = *(v14 + (v2 - 1515157371));
  LODWORD(STACK[0xD80]) = v35 - ((2 * v35) & 0x74);
  LODWORD(STACK[0xD50]) = v36 - ((2 * v36) & 0x74);
  v37 = *(v14 + (v2 - 1515157370));
  LODWORD(STACK[0xD00]) = v37 - ((2 * v37) & 0x74);
  v38 = *(v14 + (v2 - 1515157369));
  LODWORD(STACK[0xCA0]) = v38 + (~(2 * v38) | 0xFFFFFF8B);
  v39 = *(v14 + (v2 - 1515157368));
  LODWORD(STACK[0xC90]) = v39 - ((2 * v39) & 0x74);
  v40 = *(v14 + (v2 - 1515157367));
  LODWORD(STACK[0xC80]) = v40 - ((2 * v40) & 0x74);
  v41 = *(v14 + (v2 - 1515157366));
  v42 = *(v14 + (v2 - 1515157365));
  LODWORD(STACK[0xC70]) = v41 - ((2 * v41) & 0x74);
  LODWORD(STACK[0xC60]) = v42 - ((2 * v42) & 0x74);
  v43 = *(v14 + (v2 - 1515157364));
  LODWORD(STACK[0xC50]) = v43 - ((2 * v43) & 0x74);
  v44 = *(v14 + (v2 - 1515157363));
  LODWORD(STACK[0xC40]) = v44 - ((2 * v44) & 0x74);
  v45 = *(v14 + (v2 - 1515157362));
  LODWORD(STACK[0xC30]) = v45 - ((2 * v45) & 0x74);
  v46 = *(v14 + (v2 - 1515157361));
  LODWORD(STACK[0xC20]) = v46 - ((2 * v46) & 0x74);
  v47 = *(v14 + (v2 - 1515157360));
  v48 = *(v14 + (v2 - 1515157359));
  LODWORD(STACK[0xBE0]) = v47 - ((2 * v47) & 0x74);
  LODWORD(STACK[0xBD0]) = v48 - ((2 * v48) & 0x74);
  v49 = *(v14 + (v2 - 1515157358));
  LODWORD(STACK[0xBC0]) = v49 - ((2 * v49) & 0x74);
  v50 = *(v14 + (v2 - 1515157357));
  LODWORD(STACK[0xBB0]) = v50 - ((2 * v50) & 0x74);
  v51 = *(v14 + (v2 - 1515157356));
  LODWORD(STACK[0xBA0]) = v51 - ((2 * v51) & 0x74);
  v52 = *(v14 + (v2 - 1515157355));
  LODWORD(STACK[0xB90]) = v52 - ((2 * v52) & 0x74);
  v53 = *(v14 + (v2 - 1515157354));
  v54 = *(v14 + (v2 - 1515157352));
  LODWORD(STACK[0xB80]) = v53 - ((2 * v53) & 0x74);
  LODWORD(STACK[0xB70]) = v54 + (~(2 * v54) | 0xFFFFFF8B);
  v55 = *(v14 + (v2 - 1515157351));
  LODWORD(STACK[0xB60]) = v55 - ((2 * v55) & 0x74);
  v56 = *(v14 + (v2 - 1515157350));
  LODWORD(STACK[0xB50]) = v56 + (~(2 * v56) | 0xFFFFFF8B);
  v57 = *(v14 + (v2 - 1515157349));
  LODWORD(STACK[0xB40]) = v57 - ((2 * v57) & 0x74);
  v58 = *(v14 + (v2 - 1515157348));
  v59 = v58 - ((2 * v58) & 0x74);
  v60 = *(v14 + (v2 - 1515157347));
  v61 = *(v14 + (v2 - 1515157346));
  LODWORD(STACK[0xB30]) = v60 - ((2 * v60) & 0x74);
  LODWORD(STACK[0xB20]) = v61 - ((2 * v61) & 0x74);
  v62 = *(v14 + (v2 - 1515157345));
  LODWORD(STACK[0xB10]) = v62 - ((2 * v62) & 0x74);
  v63 = *(v14 + (v2 - 1515157344));
  LODWORD(STACK[0xB00]) = v63 - ((2 * v63) & 0x74);
  v64 = *(v14 + (v2 - 1515157343));
  LODWORD(STACK[0xAF0]) = v64 - ((2 * v64) & 0x74);
  v65 = *(v14 + (v2 - 1515157342));
  LODWORD(STACK[0xAE8]) = v65 - ((2 * v65) & 0x74);
  v66 = *(v14 + (v2 - 1515157341));
  v67 = *(v14 + (v2 - 1515157340));
  LODWORD(STACK[0xAE0]) = v66 - ((2 * v66) & 0x74);
  LODWORD(STACK[0xAD8]) = v67 - ((2 * v67) & 0x74);
  v68 = *(v14 + (v2 - 1515157339));
  LODWORD(STACK[0xAD0]) = v68 + (~(2 * v68) | 0xFFFFFF8B);
  v69 = *(v14 + (v2 - 1515157338));
  LODWORD(STACK[0xAC8]) = v69 - ((2 * v69) & 0x74);
  v70 = *(v14 + (v2 - 1515157337));
  LODWORD(STACK[0xAC0]) = v70 - ((2 * v70) & 0x74);
  v71 = *(v14 + (v2 - 1515157336));
  v72 = v71 - ((2 * v71) & 0x74);
  v73 = *(v14 + (v2 - 1515157335));
  LODWORD(STACK[0xA98]) = LODWORD(STACK[0xE70]) - 70;
  LODWORD(STACK[0x9E0]) = LODWORD(STACK[0xED0]) - 69;
  LODWORD(STACK[0xDB0]) = LODWORD(STACK[0xEA0]) - 70;
  LODWORD(STACK[0x598]) = LODWORD(STACK[0xE60]) - 70;
  LODWORD(STACK[0x510]) = v10 - ((2 * v10) & 0x74) - 70;
  LODWORD(STACK[0x9F0]) = v11 - ((2 * v11) & 0x74) - 70;
  LODWORD(STACK[0xD40]) = v12 + (~(2 * v12) | 0xFFFFFF8B) - 69;
  LODWORD(STACK[0xAA0]) = v13 - ((2 * v13) & 0x74) - 70;
  LODWORD(STACK[0xD60]) = v24 - 70;
  LODWORD(STACK[0xA30]) = v25 - 70;
  LODWORD(STACK[0xD70]) = v27 - 70;
  LODWORD(STACK[0xA00]) = v28 - 70;
  LODWORD(STACK[0xA40]) = v21 - ((2 * v21) & 0x74) - 70;
  LODWORD(STACK[0x9E8]) = v22 - ((2 * v22) & 0x74) - 70;
  LODWORD(STACK[0xEC0]) = v31 - 70;
  LODWORD(STACK[0xA70]) = LODWORD(STACK[0xDF0]) - 70;
  LODWORD(STACK[0xA50]) = LODWORD(STACK[0xDE0]) - 70;
  v74 = (LODWORD(STACK[0xDA0]) - 70);
  LODWORD(STACK[0x520]) = LODWORD(STACK[0xD90]) - 70;
  LODWORD(STACK[0xD90]) = LODWORD(STACK[0xD80]) - 70;
  LODWORD(STACK[0xE90]) = LODWORD(STACK[0xD50]) - 70;
  LODWORD(STACK[0xA20]) = LODWORD(STACK[0xCA0]) - 69;
  LODWORD(STACK[0xE40]) = LODWORD(STACK[0xC80]) - 70;
  LODWORD(STACK[0xD80]) = LODWORD(STACK[0xC60]) - 70;
  LODWORD(STACK[0xD00]) = LODWORD(STACK[0xC50]) - 70;
  LODWORD(STACK[0xDA0]) = LODWORD(STACK[0xC40]) - 70;
  LODWORD(STACK[0xD50]) = LODWORD(STACK[0xBE0]) - 70;
  LODWORD(STACK[0xE70]) = LODWORD(STACK[0xBD0]) - 70;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0xBB0]) - 70;
  LODWORD(STACK[0x518]) = LODWORD(STACK[0xBA0]) - 70;
  LODWORD(STACK[0xED0]) = LODWORD(STACK[0xB90]) - 70;
  LODWORD(STACK[0x998]) = LODWORD(STACK[0xB70]) - 69;
  LODWORD(STACK[0xA60]) = LODWORD(STACK[0xB40]) - 70;
  LODWORD(STACK[0x500]) = v59 - 70;
  LODWORD(STACK[0xE60]) = LODWORD(STACK[0xB30]) - 70;
  LODWORD(STACK[0xA80]) = LODWORD(STACK[0xB10]) - 70;
  LODWORD(STACK[0x9CC]) = LODWORD(STACK[0xB00]) - 70;
  LODWORD(STACK[0xE80]) = LODWORD(STACK[0xAF0]) - 70;
  LODWORD(STACK[0xA10]) = LODWORD(STACK[0xAE0]) - 70;
  LODWORD(STACK[0xAA8]) = v72 - 70;
  LODWORD(STACK[0xEA0]) = v73 - ((2 * v73) & 0x74) - 70;
  LODWORD(STACK[0x3B4]) = v2 + 64;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xE20])))(v74);
}

uint64_t sub_10044D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  LODWORD(STACK[0xA574]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x4F450F6A;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_10044D7D8@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0x2748] + 96);
  *(v1 + 4288) = v3;
  *(v1 + 4296) = v2;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (a1 ^ 0x560 ^ (a1 + 1227895156) & 0xB6CFCB7B)) | a1)))();
}

uint64_t sub_10044D858()
{
  v4 = STACK[0xF18];
  STACK[0x7E88] = *(STACK[0xF18] + 8 * v1);
  STACK[0x1070] = v0;
  return (*(v4 + 8 * (((v2 == 0x7E666516A39B34A6) * (((v3 - 565754933) & 0x21B8EBFF) - 35465)) ^ v3)))();
}

uint64_t sub_10044D8BC()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] - 33049) | 0x580;
  v3 = STACK[0xF10] - 19107;
  LODWORD(STACK[0x47A8]) = v0;
  return (*(STACK[0xF18] + 8 * (((v0 == v2 - 371869841) * (v1 ^ 0x97BE)) ^ v3)))();
}

uint64_t sub_10044D970()
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
  STACK[0xC080] = 0;
  STACK[0xC088] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC080] | v10);
  *(&STACK[0xC080] | v10) = 0;
  LOBYTE(STACK[0xC087]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC080] | v12);
  *(&STACK[0xC080] | v12) = STACK[0xC086];
  LOBYTE(STACK[0xC086]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC080] | v14);
  *(&STACK[0xC080] | v14) = STACK[0xC085];
  LOBYTE(STACK[0xC085]) = v15;
  v16 = STACK[0xC080];
  LOBYTE(STACK[0xC080]) = STACK[0xC084];
  LOBYTE(STACK[0xC084]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC080] | v17);
  *(&STACK[0xC080] | v17) = STACK[0xC083];
  LOBYTE(STACK[0xC083]) = v18;
  v19 = STACK[0xC081];
  LOBYTE(STACK[0xC082]) = STACK[0xC080];
  LOWORD(STACK[0xC080]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC080] = vmla_s32(v22, STACK[0xC080], vdup_n_s32(0x1000193u));
  STACK[0xC088] ^= STACK[0xC080];
  STACK[0xC088] = vmul_s32(vsub_s32(STACK[0xC088], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC08A];
  LOWORD(STACK[0xC089]) = STACK[0xC088];
  LOBYTE(STACK[0xC088]) = v23;
  v24 = (&STACK[0xC088] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC08B];
  LOBYTE(STACK[0xC08B]) = v19;
  LOBYTE(v24) = STACK[0xC088];
  LOBYTE(STACK[0xC088]) = STACK[0xC08C];
  LOBYTE(STACK[0xC08C]) = v24;
  v25 = (&STACK[0xC088] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC08D];
  LOBYTE(STACK[0xC08D]) = v24;
  v26 = (&STACK[0xC088] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC08E];
  LOBYTE(STACK[0xC08E]) = v25;
  v27 = (&STACK[0xC088] | v10);
  v28 = *v27;
  *v27 = STACK[0xC08F];
  LOBYTE(STACK[0xC08F]) = v28;
  v29 = STACK[0xC088];
  v30 = (553300517 * STACK[0xC088]) ^ v9;
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
  *STACK[0x940] = STACK[0xC088];
  return (*(STACK[0xF18] + 8 * (((v1 < 0x93A6FAD) * (v1 - 121388155)) ^ v1 & 0x2881BD4E)))(v47, v48);
}

uint64_t sub_10044DE4C()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xA11B ^ (v0 + 37502))))();
}

uint64_t sub_10044DFB8()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3C72 ^ (v0 + 3256))))();
}

uint64_t sub_10044DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (((v4 ^ 0x6C612768) - 1818306408) ^ ((v4 ^ 0x64A24A9B) - 1688357531) ^ ((v4 ^ 0xE38B20F3) + 477421325)) - 65527254;
  LODWORD(STACK[0x11DC]) = v5 ^ ((v5 ^ 0x66EFA6EA) - 1981838332) ^ ((v5 ^ 0xF43542B6) + 453339232) ^ ((v5 ^ 0xFDEBCEB1) + 316400729) ^ ((v5 ^ 0x7FFEFFFB) - 1865493229) ^ 0xFB879816;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xEA0])))(a1, a2, 109, a4, 1521630484, 909904358, 3971514369, 4294906008);
}

uint64_t sub_10044E274@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, int a3@<W6>, int a4@<W8>)
{
  v13 = a2 < v5;
  *(a1 + 4 * ((((v8 - (v10 + v9)) ^ (v10 + v9) ^ (((v10 + v9) ^ 0xF1) + 5)) ^ ((((v10 + v9) ^ v12) + 8) ^ (((v10 + v9) ^ v4) + (a3 ^ v12)))) & 0x1F ^ v8)) = *(v6 + 4 * (v10 + v7));
  if (v13 == v10 + a4 < v5)
  {
    v13 = v10 + a4 < a2;
  }

  return (*(STACK[0xF18] + 8 * ((!v13 * v11) ^ a3)))();
}

uint64_t sub_10044E584()
{
  v2 = 10 * (STACK[0xF10] ^ 0x9964);
  v3 = STACK[0xF10] - 7853;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  LODWORD(STACK[0x7B6C]) = v1;
  v4 = STACK[0x1B78];
  v5 = *(STACK[0x1B78] + 16);
  v6 = *(STACK[0x1B78] + 20);
  LODWORD(STACK[0x85B4]) = v6;
  LODWORD(STACK[0x51D0]) = v5;
  v7 = v4[1];
  STACK[0x1090] = *v4;
  STACK[0x97A0] = v7;
  v8 = STACK[0x21A0];
  LODWORD(STACK[0x8EB0]) = v6 + LODWORD(STACK[0x21A0]) - v1;
  return (*(STACK[0xF18] + 8 * (((v1 != v8) * (v2 - 46994)) ^ v3)))();
}

uint64_t sub_10044E6C4@<X0>(int a1@<W8>)
{
  v5 = ((a1 + v4 + 305878814) | (((a1 + v4 + 305878814) < 0x33CBA83B) << 32)) + 1167610960;
  v6 = v5 < 0x7963FC87;
  v7 = v5 > v1 - 0x5D1E61E3094AC8CLL;
  if (v1 - 0x5D1E61E3094AC8CLL < ((v2 - 1616719008) & 0x605CEFEF ^ 0x7963B049uLL) != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v3 = 371891407;
  }

  LODWORD(STACK[0x5D68]) = v3;
  return (*(STACK[0xF18] + 8 * ((13816 * (v3 == ((v2 - 1616719008) ^ 0x76769BCF))) ^ v2)))();
}

uint64_t sub_10044E7A0()
{
  v0 = (STACK[0xF10] - 35249) | 0x6605;
  v1 = STACK[0xF10] - 1759661275;
  *(STACK[0x1420] + 33) = 1;
  return (*(STACK[0xF18] + 8 * ((v1 + 1759606089 + v0) ^ (11704 * (v1 == 1751111637)))))();
}

uint64_t sub_10044E810()
{
  STACK[0x10EE8] = STACK[0x2C68];
  LODWORD(STACK[0x10ED8]) = (v0 - 23730) ^ (906386353 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x71C17C69) + ((&STACK[0x10000] + 3800) | 0x8E3E8396))) ^ 0x40C0B14D));
  LOWORD(STACK[0x10EE0]) = 23473 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x7C69) + ((&STACK[0x10000] + 3800) | 0x8396))) ^ 0xB14D) + 18124;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4566)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2, xmmword_100F52B70, 0, xmmword_100BC76A0, xmmword_100BC7690, xmmword_100BC7680, vdupq_n_s32(0x1951E636u), vdupq_n_s32(0xC4471F8A), vdupq_n_s32(0xDD16F9E3));
}

uint64_t sub_10044E94C()
{
  v1 = v0 ^ 0x821E;
  v2 = v0 - 33357;
  v3 = STACK[0xF18];
  STACK[0x4150] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((v1 + 6912) ^ v2)))();
}

uint64_t sub_10044EA74()
{
  v2 = (&STACK[0xC4D0] + STACK[0x7690]);
  STACK[0x7690] += 896;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF115)))(*(&off_1010A0B50 + v1 - 11028) - 1681876126, v2 + 79, 256);
  v2[47] = 0xF866463244689289;
  v2[48] = 0x4D4F03EA0684F8F1;
  v2[49] = 0xBE237D3ECB821021;
  v2[50] = 0x52090B3C017E3D51;
  v2[51] = 0xED512C9E4FAC9369;
  v2[52] = 0xECCE08145106D33ALL;
  v2[53] = 0xF150DB3B6E1FCDB7;
  v2[54] = 0x4917B68CEF2E4C4CLL;
  v2[55] = 0xCB29C798E6F2B944;
  v2[56] = 0x560594723795CEE7;
  v2[57] = 0xEF269F01D52BFBE8;
  v2[58] = 0x73A8F4F35E1AF3E6;
  v2[59] = 0x4DB1343DCED513F8;
  v2[60] = 0x979D4ACA7DF354BALL;
  v2[61] = 0x9AB657996C257044;
  v2[62] = 0x290AC92D93E86A4FLL;
  v2[63] = 0x2B8C3D9107D4240ELL;
  v2[64] = 0x1685C7061FD2668ELL;
  v2[65] = 0xE84B1D5934A95F87;
  v2[66] = 0x75E369261549D995;
  v2[67] = 0x949E86341F1AA46DLL;
  v2[68] = 0xA9CE7B6707ABDAF7;
  v2[69] = 0x7BA49633629A6554;
  v2[70] = 0x5314374DA55272ABLL;
  v2[71] = 0x50E9D8D65D24A0BALL;
  v2[72] = 0xF0D539E3F774C745;
  v2[73] = 0x5E6F0E4EA90BAE2;
  v2[74] = 0xC2FB5A598D2D6F12;
  v2[75] = 0x20BD5AB642DF3CCLL;
  v2[76] = 0xFEAFD12E0C125186;
  v2[77] = 0xFF888CC0A88D8D09;
  STACK[0xED0] = v2;
  v2[78] = 0xEBD00025B306E8CCLL;
  return (*(v3 + 8 * ((2013 * ((((v0 ^ v1 ^ 0x40A1976F) - 1084337339) ^ ((v0 ^ 0xBE5AC60C) + 1101347316) ^ (((v1 + 388919762) ^ v0) - 388935078)) - 371865847 > 0xFFFFFFF7)) ^ v1)))(v4);
}

uint64_t sub_10044EDD0(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 += v4 - 3232;
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x6B282210) - (&STACK[0x10000] + 3800) - 1797792274) ^ 0x72F1C621) + 296785513;
  STACK[0x10ED8] = 0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 ^ 0xC66B)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x1ACE)))(v6);
}

uint64_t sub_10044EEF4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 4824)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10044F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a3;
  STACK[0x2D40] = 0;
  STACK[0x2168] = 0x73411E761F177A2BLL;
  return (*(STACK[0xF18] + 8 * ((13 * ((((277 * (v3 ^ 0xB1DB)) ^ (v4 == 0)) & 1) == 0)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_10044F104@<X0>(unsigned int a1@<W8>)
{
  *(v1 + 80) = 0;
  STACK[0x5C48] = v1 + 0x6270A3FACC61C717;
  STACK[0xAB00] = v1 + 80;
  return (*(STACK[0xF18] + 8 * ((49 * (((a1 - 47) ^ (LODWORD(STACK[0x18F0]) == -371865839)) & 1)) ^ a1)))();
}

uint64_t sub_10044F178()
{
  v0 = STACK[0xF10] - 15757;
  v1 = STACK[0xF10] - 31099;
  LODWORD(STACK[0x67D4]) = STACK[0x98D4];
  LODWORD(STACK[0x7800]) = (((LODWORD(STACK[0xA000]) ^ 0xEF7E4B77) + 276935817) ^ ((LODWORD(STACK[0xA000]) ^ 0x801F399E) + 2145437282) ^ ((LODWORD(STACK[0xA000]) ^ 0x86B4B5F8) + (v0 ^ 0x794B07A6))) - (((LODWORD(STACK[0xA008]) ^ 0x1EE823A3) - 518529955) ^ ((LODWORD(STACK[0xA008]) ^ 0xABCE1898) + 1412556648) ^ ((LODWORD(STACK[0xA008]) ^ 0x5CF3FC2A) - 1559493674));
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x3BD1)))();
}

uint64_t sub_10044F2BC()
{
  STACK[0x5658] = STACK[0x27C8];
  LODWORD(STACK[0x2564]) = -629350135;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044F3DC(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10];
  v3 = STACK[0x9078];
  LODWORD(STACK[0x9F54]) = LODWORD(STACK[0x9F50]) + (((*STACK[0x9078] ^ 0xB4EFB23B) + 1259359685) ^ ((*STACK[0x9078] ^ 0xB402A11C) + 1274896100) ^ ((*STACK[0x9078] ^ 0xE938D436) + 382151626)) - 167461688;
  return (*(STACK[0xF18] + 8 * (v2 - 27580)))(a1, a2, *(v3 + 32) ^ 0xA365B90B);
}

uint64_t sub_10044F4A0@<X0>(int a1@<W8>)
{
  v2 = (v1 - 498523976) & 0x1DB6F6DF;
  v3 = (v1 - 812071760) & 0x3066FE9D;
  v4 = ((v3 + (a1 ^ 0x226C681C) - 577549989) ^ ((a1 ^ 0x6C4C0211) - 1816920593) ^ (((v2 - 1477113271) ^ a1) + 1477071588)) == 0x1629946F || ((v3 + (a1 ^ 0x226C681C) - 577549989) ^ ((a1 ^ 0x6C4C0211) - 1816920593) ^ (((v2 - 1477113271) ^ a1) + 1477071588)) == 371823724;
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

  return (*(STACK[0xF18] + 8 * ((212 * (v6 + v7 != 127)) ^ (v1 - 12490))))();
}

uint64_t sub_10044F6D4()
{
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((-2 - (((&STACK[0x10000] + 3800) ^ 0x8042000 | 0xB6A1CFDD) + ((&STACK[0x10000] + 3800) ^ 0x90008710 | 0x495E3022))) ^ 0x81DD4320) + 296782153;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD30B)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393320;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10044F944@<X0>(int a1@<W8>)
{
  STACK[0xA440] = ((2 * *(STACK[0x610] - 1072237815)) & 0x1EBEAB7A6) + (*(STACK[0x610] - 1072237815) ^ 0xF52B95FFF5F55BD3) + 0x7AFEEF9F0F9FEC7DLL;
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x23E0)))();
}

uint64_t sub_10044F9EC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xED0]) = 0;
  v3 = STACK[0xF18];
  STACK[0x4FE8] = *(STACK[0xF18] + 8 * a1);
  STACK[0x5CA0] = v2;
  STACK[0x1FA0] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (((v1 ^ 0x5223) - 12847) ^ v1)))();
}

uint64_t sub_10044FAD4()
{
  LODWORD(STACK[0x408C]) = v1;
  v2 = STACK[0x3DFC];
  STACK[0x8FE8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1684501865;
  LODWORD(STACK[0x704C]) = -2116087590;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044FC90()
{
  v1 = STACK[0x1EA8];
  STACK[0x1878] = STACK[0x1EA8];
  return (*(STACK[0xF18] + 8 * (((v1 != 0) * ((v0 ^ 0x12B3) - 47438)) ^ v0)))();
}

uint64_t sub_10044FCD4()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21555 + v0 + 25298)))();
}

uint64_t sub_10044FD14()
{
  LODWORD(STACK[0x3908]) += 20;
  STACK[0xACE0] = STACK[0x7D40] + 272;
  if (STACK[0xACB8])
  {
    v1 = LODWORD(STACK[0xACC0]) == ((v0 - 23886) | 0x240D) + ((v0 - 30407) ^ 0xE9D56563);
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return (*(STACK[0xF18] + 8 * ((74 * v2) ^ v0)))();
}

uint64_t sub_10044FDD8()
{
  v0 = STACK[0xF10] - 8881;
  STACK[0x39F8] = STACK[0x6D40];
  LOBYTE(STACK[0x5B6F]) = STACK[0x1FBF];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10044FE0C@<X0>(int a1@<W8>)
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
  STACK[0xBAD0] = 0;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBAD0] | v13);
  *(&STACK[0xBAD0] | v13) = STACK[0xBAD7];
  v17 = *(&STACK[0xBAD0] | v14);
  *(&STACK[0xBAD0] | v14) = STACK[0xBAD6];
  v18 = *(&STACK[0xBAD0] | v15);
  *(&STACK[0xBAD0] | v15) = STACK[0xBAD5];
  STACK[0xBAD8] = v1;
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBAD7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBAD6]) = v17;
  LOBYTE(STACK[0xBAD5]) = v18;
  v23 = STACK[0xBAD0];
  LOBYTE(STACK[0xBAD0]) = STACK[0xBAD4];
  LOBYTE(STACK[0xBAD4]) = v23;
  v24 = *(&STACK[0xBAD0] | v20);
  *(&STACK[0xBAD0] | v20) = STACK[0xBAD3];
  LOBYTE(STACK[0xBAD3]) = v24;
  v25 = STACK[0xBAD1];
  LOBYTE(STACK[0xBAD2]) = STACK[0xBAD0];
  LOWORD(STACK[0xBAD0]) = v25;
  STACK[0xBAD0] = vmla_s32(v22, STACK[0xBAD0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBAD8];
  v27 = (553300517 * STACK[0xBAD8]) ^ v12;
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
  v48 = *(&STACK[0xBAD8] + v13);
  *(&STACK[0xBAD8] + v13) = STACK[0xBADF];
  LOBYTE(STACK[0xBADF]) = v48;
  v49 = *(&STACK[0xBAD8] + v14);
  *(&STACK[0xBAD8] + v14) = STACK[0xBADE];
  LOBYTE(STACK[0xBADE]) = v49;
  v50 = *(&STACK[0xBAD8] + v15);
  *(&STACK[0xBAD8] + v15) = STACK[0xBADD];
  LOBYTE(STACK[0xBADD]) = v50;
  v51 = STACK[0xBAD8];
  LOBYTE(STACK[0xBAD8]) = STACK[0xBADC];
  LOBYTE(STACK[0xBADC]) = v51;
  v52 = *(&STACK[0xBAD8] + v20);
  *(&STACK[0xBAD8] + v20) = STACK[0xBADB];
  LOBYTE(STACK[0xBADB]) = v52;
  v53 = STACK[0xBAD9];
  LOBYTE(STACK[0xBADA]) = STACK[0xBAD8];
  LOWORD(STACK[0xBAD8]) = v53;
  STACK[0xBAD8] = vmla_s32(v22, STACK[0xBAD8], vdup_n_s32(0x1000193u));
  *v2 = STACK[0xBAD8] ^ STACK[0xBAD0];
  return (*(STACK[0xF18] + 8 * a1))();
}