uint64_t sub_1000E4D2C@<X0>(unint64_t a1@<X8>)
{
  v4 = 5 * (v2 ^ 0x10D);
  v5 = v1 < a1;
  *(STACK[0x678] + v3 + 0x7FCA8EE66E9DB564 + 44 * (v4 ^ 0xC9u) - 0x7FCA8EE66E9DBD78) = *STACK[0x890] ^ 0xC;
  if (v5 == a1 > 0x2A0D294F)
  {
    v5 = v1 > 0x2A0D294F;
  }

  return (*(&off_1002D7880 + ((453 * v5) ^ v4)))(0xB41F6D88F4B8B3F3, 89, 0x8035711991624288, 0x9F80377211A7F588);
}

uint64_t sub_1000E4E64@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  *(v3 + v5 - 2082682609) ^= *(v4 + v5 - 2082682609) ^ 0x81;
  v6 = v5 + 1 == (((v2 - 329) | 0x4C0u) ^ a2);
  return (*(a1 + 8 * (((2 * v6) | (4 * v6)) ^ v2)))();
}

uint64_t sub_1000E4EF4@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x8F4]) = v2;
  v4 = v2 == ((a2 - 1282683935) & 0x4C743997 ^ (v2 + 2036)) && STACK[0xA30] != 0;
  return (*(a1 + 8 * ((v4 * ((41 * (a2 ^ 0x2B4)) ^ 0x7B7)) ^ a2)))();
}

void sub_1000E4F40()
{
  v0 = STACK[0x908];
  v1 = STACK[0x800];
  JUMPOUT(0x1000E4F4CLL);
}

uint64_t sub_1000E50B0@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v6 = (a2 + v3 + v2);
  *v6 = 0xDFDFDFDFDFDFDFDFLL;
  v6[1] = 0xDFDFDFDFDFDFDFDFLL;
  return (*(a1 + 8 * ((30 * (514 * (v5 ^ 0x310) - 1012 != ((v5 ^ 0xFFFFFFFFFFFFFCE2) & v4))) ^ v5 ^ 0x1E)))();
}

uint64_t sub_1000E51CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  *(a1 + 56) = (v3 >> 21) ^ 0xED;
  *(a1 + 57) = v2 ^ (v3 >> 13);
  *(a1 + 58) = (v3 >> 5) ^ 0x17;
  HIDWORD(v5) = ((v1 ^ 0x491) + 106116369) ^ v3;
  LODWORD(v5) = v4 ^ 0x40000000;
  *(a1 + 59) = ((v5 >> 29) - ((2 * (v5 >> 29)) & 0x42) + 33) ^ 0xFE;
  *(a1 + 60) = (v4 >> 21) ^ 0x84;
  *(a1 + 61) = (v4 >> 13) ^ 0xE2;
  *(a1 + 62) = (v4 >> 5) ^ 0x30;
  return sub_1000E5268();
}

uint64_t sub_1000E53A4@<X0>(int a1@<W0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  *&v6 = 0xDFDFDFDFDFDFDFDFLL;
  *(&v6 + 1) = 0xDFDFDFDFDFDFDFDFLL;
  v7 = (a3 + v4 + v3);
  *v7 = v6;
  v7[1] = v6;
  return (*(a2 + 8 * ((114 * (((a1 - 886) ^ 0x113) != (v5 & 0x1FFFFFFE0))) ^ (a1 - 624))))();
}

uint64_t sub_1000E5654(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x930];
  v9 = STACK[0x930] + 16;
  v11 = STACK[0x930] < &unk_100259830 && v9 > &unk_100259820;
  if (v8 < a1 + 16 && v9 > a1)
  {
    v11 = 1;
  }

  if (v8 < a2 + 16 && v9 > a2)
  {
    v11 = 1;
  }

  v15 = v8 < a3 + 16 && v9 > a3 || v11;
  return (*(a7 + 8 * ((v15 * ((v7 - 1146327952) & 0x44538FD8 ^ 0x28 ^ (244 * (v7 ^ 0x783)))) ^ v7)))();
}

uint64_t sub_1000E56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *v7 = veorq_s8(*v7, xmmword_1002597C0);
  v9 = STACK[0xAA0];
  *(v9 + 64) = 0x4B67BDFCC6533912;
  *(v9 + 72) = 0xF669932C7EE11BA4;
  *(v9 + 80) = 0x9966CD3811EE45BLL;
  *(v9 + 92) = 0x1DCC6C5F76280D6FLL;
  STACK[0xA68] = *(a7 + 8 * (v8 ^ 0x3D5));
  STACK[0x9A0] = v9;
  LODWORD(STACK[0xA28]) = -310072649;
  STACK[0x658] = &unk_100265380;
  v10 = ((2 * *(v9 + 68)) & 0x54 ^ 0x50) + (*(v9 + 68) & 0x3F ^ 0x7FAFDD96);
  return (*(a7 + 8 * ((27 * ((((((((v8 ^ 0x3D5) + 1057193441) & 0xC0FC831F) + 582) ^ 0x57F) - 2142231961 + v10 - 1588) ^ 0xF77DDF97) + 142745641 + ((2 * ((((((v8 ^ 0x3D5) + 1057193441) & 0xC0FC831F) + 582) ^ 0x57F) - 2142231961 + v10 - 1588)) & 0xEEFBBF2E) < 0xFFFFFFC0)) ^ ((v8 ^ 0x3D5) + 1057193441) & 0xC0FC831F)))();
}

uint64_t sub_1000E57B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x818];
  v9 = *STACK[0x848];
  return (*(a7 + 8 * ((222 * (((v7 - 1) ^ ((*(STACK[0x768] + 112) | ((*(STACK[0x768] + 112) < 0x3B72CCAAuLL) << 32)) == 997379242)) & 1)) ^ (v7 - 1176))))(0x52A5F382ADAFD9EFLL);
}

uint64_t sub_1000E5854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = v10 < v7;
  *(v13 + v14 - 0x5397806591B63E5ELL) = -23 * *(v12 + v9 - 0x13713B217EA9D1E0) - 10;
  v16 = a1 - 0x52A5F382963AA8E8;
  v17 = a1 + 1;
  v18 = v15 ^ (v16 < v7);
  v19 = v16 < v10;
  if (!v18)
  {
    v15 = v19;
  }

  return (*(a7 + 8 * ((v15 * v11) ^ v8)))(v17);
}

uint64_t sub_1000E58F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v7 = STACK[0xA50];
  v8 = *v4;
  STACK[0x5B8] = v6 ^ 0x5F8BD335;
  LODWORD(STACK[0x5B0]) = v8 - 997379242;
  STACK[0x580] = a2;
  STACK[0x590] = v7 - (&STACK[0xB70] + a2) - 0x1B66A7A4305C90D2;
  STACK[0x5A8] = &STACK[0xB70] + a2 - v7 + 0x1B66A7A4305C90D2;
  STACK[0x5A0] = &STACK[0xB70] + a4 + 72;
  LODWORD(STACK[0x588]) = -86229012;
  STACK[0x598] = v5;
  LODWORD(STACK[0x5C0]) = 1711429890;
  return (*(a3 + 8 * (((dword_100313AA0 == 321650294) * (((v6 ^ 0x32) - 1611290723) ^ 0x9FF5AFD2)) | v6 ^ 0x32)))(a1, 1711429890);
}

uint64_t sub_1000E5CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 ^ 0x9FF5A7BD)))(0, &STACK[0x670]);
  v9 = ((v8 << ((v7 ^ 0x90) - 82)) & (23 * (v7 ^ 0x9FF5AF90) + 1072388113)) + (v8 ^ 0x9FF5AFC3);
  return (*(&off_1002D7880 + (v7 ^ 0x9FF5ADF0 ^ (126 * (((v9 - v7) | (v7 - v9)) >> 31)))))();
}

uint64_t sub_1000E5E7C()
{
  (*(v0 + 8 * (v1 + 73)))(LODWORD(STACK[0x6C4]));
  v2 = STACK[0x598];
  return (*(&off_1002D7880 + ((61 * ((((v1 - 1370) ^ (dword_100313AA0 == ((1034 * ((v1 + 7) ^ 0x819)) ^ 0x132BF662))) & 1) == 0)) ^ (v1 + 7))))(4294924396);
}

uint64_t sub_1000E600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x5A8] < 0x20;
  *v8 = 0;
  return (*(a7 + 8 * ((((v7 - 356) ^ 0x55E) * v9) ^ v7)))(0xB2FD8F91B85EAEF7, 0xDEE9341BE146A1C8, 1856, 262, 117, 1333);
}

uint64_t sub_1000E60F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v9 + v8 + 16);
  v12 = (v10 + v8);
  *v12 = *(v9 + v8);
  v12[1] = v11;
  return (*(a7 + 8 * (((v8 == ((v7 - 618) | a4) - 342) * a5) ^ v7)))();
}

uint64_t sub_1000E621C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v14 < a1;
  *(v9 + a2 + a5) = *(v10 + v13 + a4);
  if (v15 == v11 + a8 < v12)
  {
    v15 = v11 + a8 < v14;
  }

  return (*(a7 + 8 * ((v15 | (16 * v15)) ^ v8)))();
}

uint64_t sub_1000E627C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  *(v2 + 136) = STACK[0x5B0];
  STACK[0x920] = 140;
  v4 = (*(a1 + 8 * (v3 ^ 0x8BD)))((a2 - 321650294), 35, v2, 140, v2, &STACK[0x920]) == (v3 ^ 0xCC);
  return (*(&off_1002D7880 + ((372 * v4) ^ v3)))();
}

uint64_t sub_1000E6438@<X0>(unint64_t a1@<X3>, int a2@<W4>, uint64_t a3@<X6>, int a4@<W8>)
{
  v7 = *(v5 + v4 + 20);
  v8 = (v6 + v4);
  *v8 = *(v5 + v4 + 4);
  v8[1] = v7;
  return (*(a3 + 8 * (((v4 == ((a4 + 9) ^ a1)) * a2) ^ a4)))();
}

uint64_t sub_1000E6580@<X0>(int a1@<W8>)
{
  v1 = ((796406004 - 2 * ((((a1 + 1475719696) & 0xFF9BFC5D) + 678316987) & 0x2F7830EE)) ^ 0x2F7830E4);
  v2 = *(STACK[0x838] - 0x1B66A7A4305C90EELL + ((v1 + 0x23AF2DC312B96FF4 - ((2 * v1) & 0x475E5B862572DFE8)) ^ 0x23AF2DC312B96FF4)) ^ *(STACK[0x7B8] + v1) | 0xFFFFFF00;
  return (*(&off_1002D7880 + a1))(15, 796405998, 10, 796405988, 0x475E5B862572DFE8, 4294967189, 4294967253);
}

uint64_t sub_1000E680C()
{
  STACK[0x9E8] = 0;
  STACK[0x6D8] = v0;
  STACK[0x708] = STACK[0x5B8];
  v4 = *(v2 + 8 * v1);
  if (!qword_100314AA8)
  {
    qword_100314AA8 = v3;
    dword_100314CB0 = 255;
    v5 = -4;
    v6 = v3;
    do
    {
      *v6 |= ~*(v3 + 4 * (*v6 & 0x3ELL)) << 16;
      v6 += 4;
      v5 += 4;
    }

    while (v5 < 0x3B);
  }

  return v4();
}

uint64_t sub_1000E68E0()
{
  STACK[0x588] = v1;
  byte_100314AA0 = 1;
  return (*(v0 + 8 * (((LODWORD(STACK[0x6F4]) != 2036467818) * (((v2 - 1523) | 0x150) ^ 0x365)) ^ (v2 - 1318))))(4294925273);
}

uint64_t sub_1000E69C0()
{
  v3 = (*(v2 + 8 * (v1 + 309)))("mobileactivationd", *v0);
  v4 = (((3 * (v1 ^ 0x674)) ^ 0xFEFDF44E) & (2 * v3)) + (v3 ^ 0xFF7EFBFD) == v1 - 8457035;
  return (*(v2 + 8 * (((8 * v4) | (v4 << 7)) ^ v1)))();
}

uint64_t sub_1000E6B34()
{
  v3 = (*(v2 + 8 * (v1 + 1891)))("identityservicesd", *v0);
  v4 = ((2 * v3) & 0x9BFC9FBA) + (v3 ^ 0xCDFE4FDD) != v1 - 838972935 + ((v1 - 208) | 0x480);
  return (*(v2 + 8 * (v4 | (4 * v4) | v1)))();
}

uint64_t sub_1000E6D08()
{
  v4 = (*(v3 + 8 * (v2 - 1040142194)))("StoreKitUIService", *v0);
  v5 = ((((v2 - 1040143087) | 0xD) ^ 0x7BFEAAD3) & (2 * v4)) + (v4 ^ (v1 + 1694));
  return (*(v3 + 8 * (v2 ^ (v1 + 755) ^ (110 * ((((v5 - v2) | (v2 - v5)) >> (((v2 - 29) | 5) ^ 0xC8)) & 1)))))();
}

uint64_t sub_1000E6D9C()
{
  v3 = (*(v2 + 8 * (v1 + 880)))("appstored", *v0);
  v4 = ((2 * v3) & 0x6FDDEBD2) + ((v1 - 847) ^ 0x37EEF457 ^ v3) == 938407401;
  return (*(v2 + 8 * ((v4 | (32 * v4)) ^ v1)))();
}

uint64_t sub_1000E6EE4()
{
  v3 = v1 - 588;
  v4 = (*(v2 + 8 * (v3 + 1022)))("attributionkitd", *v0);
  return (*(v2 + 8 * ((250 * (((v4 << (v3 - 126)) & 0xF7FD26FA) + (v4 ^ 0x7BFE937D) != ((v3 + 160880472) & 0xF66926FF) + 2080280742)) ^ v3)))();
}

void sub_1000E7084()
{
  v0 = STACK[0x930];
  STACK[0x908] = STACK[0xAA0];
  STACK[0x800] = v0;
  JUMPOUT(0x1000A51D0);
}

uint64_t sub_1000E70A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 8 * ((113 * ((v8 >> 7) & 1)) ^ v7));
  STACK[0x5B0] = -v9;
  return v10();
}

uint64_t sub_1000E71F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + a1);
  v10.i64[0] = 0xCDCDCDCDCDCDCDCDLL;
  v10.i64[1] = 0xCDCDCDCDCDCDCDCDLL;
  v11 = veorq_s8(v9, v10);
  v12.i64[0] = 0x9A9A9A9A9A9A9A9ALL;
  v12.i64[1] = 0x9A9A9A9A9A9A9A9ALL;
  v13 = vandq_s8(vaddq_s8(v9, v9), v12);
  v12.i64[0] = 0x3B3B3B3B3B3B3B3BLL;
  v12.i64[1] = 0x3B3B3B3B3B3B3B3BLL;
  *(v8 + a1) = vaddq_s8(vaddq_s8(v11, v12), v13);
  return (*(a7 + 8 * ((88 * (a1 + 16 == ((a2 + 736) ^ 0x824))) ^ a2)))();
}

uint64_t sub_1000E729C()
{
  if (*STACK[0xA80] - 402993540 >= (v2 - 144))
  {
    v0 = -42023;
  }

  LODWORD(STACK[0x5B8]) = v0;
  return sub_1000DE218(((257 * ((v2 + 782) ^ 0x389)) ^ 0x71u) + v1, *(STACK[0x748] + 8), *(STACK[0x748] + 9), *(STACK[0x748] + 10), *(STACK[0x748] + 11), -671382963, -42, -21);
}

uint64_t sub_1000E7388@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X6>, int a5@<W8>)
{
  v8 = (((a5 - 198) | 2) ^ (a1 + 290) ^ v6) >> (v5 + 79);
  *(a2 + (v7 - 1927114619)) = (v8 - ((v8 << (90 * (a5 ^ 0xF1) - 13)) & 0xE6) - 13) ^ 0x44;
  return (*(a4 + 8 * ((1527 * (v7 - ((v8 - ((v8 << (90 * (a5 ^ 0xF1) - 13)) & 0xE6) - 13) != 68) == a3)) ^ a5)))();
}

uint64_t sub_1000E745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x15A8] = 0xB69C99EC2F942933;
  LODWORD(STACK[0x6EC]) = dword_100313AB4 - 761298293;
  v10 = dword_100313AB0;
  v11 = 218380439 * ((((2 * (v9 - 192)) | 0xAEB118D930272F2CLL) - (v9 - 192) + 0x28A7739367EC686ALL) ^ 0xC926B6FFA03612F7);
  *(v9 - 168) = ((v7 - 1010696226) ^ 0x62) - v11;
  *(v9 - 192) = v10 + v11;
  *(v9 - 160) = v8 - v11;
  *(v9 - 176) = (v7 - 1723653669) ^ v11;
  *(v9 - 172) = v7 - 1010696226 - v11;
  *(v9 - 184) = v11;
  *(v9 - 180) = ((v7 - 1010696226) ^ 0x2E) + v11;
  v12 = (*(a7 + 8 * (v7 | 0x60)))(v9 - 192);
  return (*(&off_1002D7880 + *(v9 - 152)))(v12);
}

uint64_t sub_1000E7564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x590] = v7;
  STACK[0x5B0] = (*(a7 + 8 * (v9 + 101)))(STACK[0x528] + STACK[0x560], 0x100004077774924);
  v10 = (*(&off_1002D7880 + v9 + 63))();
  v11 = v9 + 415339745 + v10 - ((2 * v10) & 0x31832FB6) - 1306;
  LODWORD(xmmword_100313AB8) = v11;
  v12 = v11 ^ 0x18C197DB ^ (v11 >> (((v9 - 16) | 0xB0) + 106));
  *(v8 + 4) = 432642151 - ((2 * (((1812433253 * v12) ^ 0xFEF7FF75) + ((-670100790 * v12) & 0xFDEFFEEA) + 878011448) + 426064040) & 0x31832FB6) + ((1812433253 * v12) ^ 0xFEF7FF75) + ((-670100790 * v12) & 0xFDEFFEEA);
  return (*(&off_1002D7880 + v9 - 762))();
}

uint64_t sub_1000E7804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v14 = (v11 + 4 * (v9 + v12));
  v15 = v9 + 1;
  *v14 = v14[397] ^ *(&STACK[0x15A8] + ((*(v11 + 4 * (v15 + v12)) & 1) == 0)) ^ ((((*(v11 + 4 * (v15 + v12)) & 0x7FFFFFFE | ((v7 - 723) ^ (v10 + 612)) & v8) ^ (a5 - 1)) - ((2 * ((*(v11 + 4 * (v15 + v12)) & 0x7FFFFFFE | ((v7 - 723) ^ (v10 + 612)) & v8) ^ (a5 - 1))) & 0x7F320C5Cu) - 1080490450) >> 1) ^ 0x7058AA24;
  return (*(a7 + 8 * ((3375 * (v15 == v13 + 3)) ^ v7)))();
}

uint64_t sub_1000E78A8@<X0>(uint64_t a1@<X6>, int a2@<W8>, int8x16_t a3@<Q7>)
{
  v5 = &unk_100313E44;
  v6 = vld1q_dup_f32(v5);
  v7 = a2 ^ 0x73Eu;
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  a3.i32[0] = *(v4 + 4 * (v7 - 1165));
  a3.i32[1] = dword_100313E4C;
  a3.i32[2] = dword_100313E50;
  v10 = vextq_s8(v6, a3, 0xCuLL);
  v11 = a3;
  v11.i32[3] = dword_100313E54;
  v12 = veorq_s8(vorrq_s8(vandq_s8(v11, vnegq_f32(v9)), vandq_s8(v10, v8)), vdupq_n_s32(0x18C197DAu));
  v13.i32[0] = *(v3 + 4 * ((*(v4 + 4 * (v7 - 1165)) & 1) == 0));
  v13.i32[1] = *(v3 + 4 * (~dword_100313E4C & 1));
  v13.i32[2] = *(v3 + 4 * (~dword_100313E50 & 1));
  v13.i32[3] = *(v3 + 4 * (~dword_100313E54 & 1));
  unk_100313E44 = veorq_s8(veorq_s8(veorq_s8(xmmword_100313AB8, v13), vdupq_n_s32(0x6861ACB0u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v12, vandq_s8(vaddq_s32(v12, v12), vdupq_n_s32(0x1FD6160Cu))), vdupq_n_s32(0x8FEB0B06)), 1uLL));
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000E79CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*v9 & 0x7FFFFFFE | v9[623] & 0x80000000) ^ v7;
  v9[623] = v9[396] ^ *(&STACK[0x15A8] + ((*v9 & 1) == 0)) ^ ((v10 + 1442595291 - 2 * (v10 & 0x55FC41DE ^ (((v8 + 655) | 0x14) + ((v8 + 675) ^ 0x7FFFFFE4)) & *v9)) >> 1) ^ 0x56A09DE;
  return (*(a7 + 8 * ((962 * (LODWORD(STACK[0x6EC]) > 0x26F)) ^ v8)))();
}

uint64_t sub_1000E7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x6EC]) = 0;
  v11 = LODWORD(STACK[0x6EC]);
  v12 = *(v8 + 4 * v11);
  LODWORD(STACK[0x6EC]) = v11 + 1;
  dword_100313AB4 = v11 + 761298294;
  v13 = 1614251083 * ((v9 - ((v10 - 192) | v9) + ((v10 - 192) | 0xCC07B1B567D3DCAFLL)) ^ 0x782D6A6A0FCAB14FLL);
  *(v10 - 176) = (dword_100313AB0 - 1722281989) ^ v13;
  *(v10 - 184) = -1614251083 * ((v9 - ((v10 - 192) | v9) + ((v10 - 192) | 0x67D3DCAF)) ^ 0xFCAB14F);
  *(v10 - 192) = (v7 - 283899874) ^ v13;
  *(v10 - 152) = 3278876614u - v13;
  *(v10 - 164) = -1345307945 - v13 + v7;
  *(v10 - 160) = ((v7 - 283899874) ^ 7) + v13;
  *(v10 - 168) = ((v7 - 283899874) | 5) ^ v13;
  v14 = (*(a7 + 8 * (v7 + 71)))(v10 - 192);
  return (*(&off_1002D7880 + *(v10 - 188)))(v14);
}

uint64_t sub_1000E7C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x598]) = v6;
  v8 = (v4 - 1667763422) & 0x63680E3D;
  LODWORD(STACK[0x6EC]) = v3;
  v9 = STACK[0x5B8];
  v10 = (*(a3 + 8 * (v4 ^ 0xED7)))(STACK[0x5B8] + 16, 0);
  v11 = v9[4] - 7285872 - ((v9[4] << (((v4 + 34) & 0x3D) - 19)) & 0xFF21A720);
  v9[1] = v9[6] - 7285872 - ((2 * v9[6]) & 0xFF21A720);
  v9[2] = v11;
  v12 = (*(&off_1002D7880 + v4 + 415))(v10);
  v9[3] = v12 - 7285872 - ((2 * v12) & 0xFF21A720);
  v13 = (*(&off_1002D7880 + (v4 ^ 0xEE7)))();
  *v9 = v13 - 7285872 - ((2 * v13) & 0xFF21A720);
  LODWORD(STACK[0x5A8]) = STACK[0x5B0] - ((2 * STACK[0x5B0]) & 0xB4BDF186) - 631310141;
  v14 = 734352403 * (((~(v7 - 192) | 0x7BD17F937F2BCB0CLL) + ((v7 - 192) | 0x842E806C80D434F3)) ^ 0x9CD436785DA0E8FCLL);
  LODWORD(STACK[0x5A0]) = v5 ^ 0x85F;
  v15 = (DWORD1(xmmword_100313AB8) ^ 0x144C5005 ^ (1664525 * (xmmword_100313AB8 ^ 0x18C197DB ^ (xmmword_100313AB8 >> 30)) - ((3329050 * (xmmword_100313AB8 ^ 0x18C197DB ^ (xmmword_100313AB8 >> 30))) & 0x191B8FBC) + 210618334)) + (*STACK[0x5B8] ^ 0xFF90D390);
  v16 = (v15 ^ 0x7EEBBDEE) + 963844018 + ((2 * v15) & 0xFDD77BDC);
  DWORD1(xmmword_100313AB8) = v16 - 2 * ((v16 + 128002656) & 0x18C197DF ^ v16 & 4) + 1617084987;
  *(v7 - 192) = (v8 + 588701159) ^ v14;
  *(v7 - 184) = v14 + 1028616660;
  *(v7 - 176) = -1174362589 - v14 + v8;
  *(v7 - 172) = ((v8 + 588701159) & 0xBB77E592) + v14;
  *(v7 - 168) = v14 + v8 + 588701159 - 19;
  *(v7 - 164) = 1 - v14;
  *(v7 - 152) = v14 + 1028616658;
  v17 = (*(&off_1002D7880 + (v8 ^ 0x73)))(v7 - 192);
  return (*(&off_1002D7880 + *(v7 - 160)))(v17);
}

uint64_t sub_1000E80B0()
{
  LODWORD(xmmword_100313AB8) = dword_100314474;
  *(v5 - 184) = (v2 + 1808507948) + v3;
  *(v5 - 168) = ((v0 + 1201391753) & 0xFFBBFE79) + v3;
  *(v5 - 164) = 1 - v3;
  *(v5 - 152) = v4;
  *(v5 - 192) = (v0 + 1201391753) ^ v3;
  *(v5 - 176) = -1174362589 - v3 + v0 + 568;
  *(v5 - 172) = ((v0 + 1201391753) ^ 0x5F) + v3;
  v6 = (*(v1 + 8 * (v0 + 651)))(v5 - 192);
  return (*(&off_1002D7880 + *(v5 - 160)))(v6);
}

uint64_t sub_1000E81AC@<X0>(int a1@<W8>)
{
  v4 = 156 * (a1 ^ 0x1B7);
  *(STACK[0x5B8] + 4 * (v2 - 963844017)) ^= *(STACK[0x5B0] + 4 * (v2 - 963844017)) ^ v4 ^ 0xF0321DCA;
  return (*(v1 + 8 * (((((624 * (a1 ^ 0x1B7)) ^ 0xFFFFE52F) + v3 == 1552887490) * ((v4 + 352) ^ 0x865)) ^ v4)))();
}

uint64_t sub_1000E82E4()
{
  STACK[0x650] = v0;
  STACK[0x900] = STACK[0x5B0];
  v1 = STACK[0x508];
  return (STACK[0x4E0])(STACK[0x4F0]);
}

uint64_t sub_1000E8368(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v9 + v7;
  if (v11 <= 0x40)
  {
    v11 = 64;
  }

  return (*(a7 + 8 * (((v8 - v10 - a2 + v11 < (((a1 - 818) | 0x840) ^ 0x855u)) * ((a1 - 248) ^ 0x245)) ^ a1)))();
}

uint64_t sub_1000E83E0(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = a2 + v9;
  v11 = v10 + v7;
  if ((v10 + v7) <= 0x40)
  {
    v11 = a4;
  }

  v12 = a5 + v11;
  v14 = v8 - v10 < v12 || v12 > 0xF;
  return (*(a7 + 8 * (((((a3 - 1546) ^ v14) & 1) == 0) | (4 * ((((a3 - 1546) ^ v14) & 1) == 0)) | a3)))();
}

uint64_t sub_1000E842C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v7 + v8 - 1);
  v13 = (v11 + v10 - byte_100259800) >= 0x10 && (v11 + v10 - byte_100265260) >= 0x10 && v11 + v10 + ~&unk_10027CA60 >= 0x10;
  v14 = v10 - v9 + v11;
  v16 = !v13 || v14 < 0x10;
  return (*(a7 + 8 * ((55 * ((v16 ^ (a3 + 121)) & 1)) ^ (a3 - 1163))))();
}

uint64_t sub_1000E855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x734]) = v6;
  v7 = STACK[0x9A0];
  return sub_1000E8574(a1, a2, a3, a4, a5, (v5 - 4));
}

uint64_t sub_1000E8574@<X0>(int a1@<W5>, uint64_t a2@<X6>, unint64_t a3@<X8>)
{
  v4 = STACK[0x9E8];
  v5 = LODWORD(STACK[0x604]);
  v6 = LODWORD(STACK[0x914]);
  LODWORD(STACK[0x5A0]) = STACK[0x954];
  v7 = STACK[0x9E4];
  v8 = LODWORD(STACK[0x8CC]);
  LODWORD(STACK[0x5B0]) = 1868749858;
  LODWORD(STACK[0x590]) = v7;
  STACK[0x598] = v4;
  return sub_1000DF34C(a1, a2, a3);
}

uint64_t sub_1000E85F0@<X0>(int a1@<W8>)
{
  v6 = v3 ^ 0x17;
  *(v5 + (v1 + a1)) = ((v6 + 61) | 0x10) ^ *(v4 + v2 - 1106666642) ^ byte_100259800[(v2 - 1106666642) & 0xF] ^ byte_100265260[(v2 - 1106666642) & 0xF] ^ (89 * ((v2 + 110) & 0xF)) ^ *(&unk_10027CA60 + ((v2 - 1106666642) & 0xF) + 1) ^ 0x4F;
  return (*(&off_1002D7880 + ((23 * ((a1 + v1 + 1) < 0x40)) ^ v6)))(byte_100259800, byte_100265260, 89, &unk_10027CA60, 79);
}

uint64_t sub_1000E86A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v10 - 833;
  v12 = v8 < v9 + v7 - 2068;
  *STACK[0x958] = 0;
  if (v12 == v7 > 0x1B68CB22)
  {
    v12 = v8 > 0x1B68CB22;
  }

  return (*(a7 + 8 * ((52 * !v12) ^ v11)))(0xC018B1217629B2C6);
}

uint64_t sub_1000E87BC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  STACK[0x4E0] = v4;
  STACK[0x4F0] = a1;
  STACK[0x508] = v5;
  v6 = (a4 - 196);
  v7 = ((&STACK[0x6EC] ^ 0xFFFFB5F6FEAEB6ABLL) + 0x4A0901514955 + ((v6 ^ 0xFFFF6BEDFD5D6E78) & (2 * &STACK[0x6EC]))) % 0x25;
  STACK[0x560] = (2 * v7) & 0x76;
  STACK[0x528] = (v7 ^ 0x675FFEFB9C7C19BBLL) - 0x675FFEFB9C7C19ABLL;
  STACK[0x5B8] += STACK[0x5B0] + 0x20102448601015;
  v8 = *(a3 + 8 * ((((((v6 - 814) | 0x814) ^ 0x29B78AC5) == 699892433) * (v6 - 664)) ^ v6));
  v9 = STACK[0x650];
  STACK[0x5B0] = STACK[0x900];
  STACK[0x580] = a2;
  return v8(197255495);
}

uint64_t sub_1000E8920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W8>)
{
  v18 = (v8 + v15 + v11);
  v19 = ((*(*(a1 + 2728) + v6) ^ v18) & (v14 ^ 0x7FFFFFFE)) * a6;
  v20 = (v19 ^ HIWORD(v19)) * a6;
  *v18 = *(v12 + (v20 >> 24)) ^ *(v7 + v17 + v10) ^ *((v20 >> 24) + v13 + 3) ^ *(a2 + (v20 >> 24)) ^ v20 ^ (BYTE3(v20) * a3);
  return (*(&off_1002D7880 + ((((v9 + a4) > 7) * a5) ^ v16)))();
}

uint64_t sub_1000E89BC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15)
{
  v18 = v16 ^ (a14 + 1338);
  v19 = &unk_100313E44;
  v20 = vld1q_dup_f32(v19);
  v21.i64[0] = 0x8000000080000000;
  v21.i64[1] = 0x8000000080000000;
  v22.i64[0] = 0x100000001;
  v22.i64[1] = 0x100000001;
  a8.i64[0] = *&dword_100313E48;
  a8.i32[2] = dword_100313E50;
  v23 = vextq_s8(v20, a8, 0xCuLL);
  v24 = a8;
  v24.i32[3] = *(v17 + 4 * (((v18 - 848379277) & 0x32913D5D) - 118));
  v25 = veorq_s8(vorrq_s8(vandq_s8(v24, vnegq_f32(v22)), vandq_s8(v23, v21)), vdupq_n_s32(0x18C197DAu));
  v26.i32[0] = *(v15 + 4 * ((dword_100313E48 & 1) == 0));
  v26.i32[1] = *(v15 + 4 * ((dword_100313E4C & 1) == 0));
  v26.i32[2] = *(v15 + 4 * ((dword_100313E50 & 1) == 0));
  v26.i32[3] = *(v15 + 4 * (~v24.i32[3] & 1));
  unk_100313E44 = veorq_s8(veorq_s8(veorq_s8(xmmword_100313AB8, v26), vdupq_n_s32(0x51E89C97u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v25, vandq_s8(vaddq_s32(v25, v25), vdupq_n_s32(0x5ED5EC34u))), vdupq_n_s32(0x2F6AF61Bu)), 1uLL));
  return (*(a15 + 8 * (v18 ^ 0x40F ^ (1016 * (((4 - v18) | (v18 - 4)) >= 0)))))();
}

uint64_t sub_1000E8B14@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = (((1034 * (v2 ^ 0x15F)) ^ ((v2 - 345) | 0x810) ^ 0x7FFFFFFE) & *v3 | v3[623] & 0x80000000) ^ a2;
  v3[623] = v3[396] ^ *(&STACK[0x15D8] + ((*v3 & 1) == 0)) ^ ((v4 - ((2 * v4) & 0xE8A4DE28) - 195924203) >> 1) ^ 0x3C74D010;
  return (*(a1 + 8 * ((35 * (LODWORD(STACK[0x88C]) > 0x26F)) ^ v2)))();
}

uint64_t sub_1000E8BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x88C]) = 0;
  v10 = LODWORD(STACK[0x88C]);
  LODWORD(STACK[0x88C]) = v10 + 1;
  v11 = *(v8 + 4 * v10);
  dword_100313AB4 = v10 + 761298294;
  v12 = (dword_100313AB0 + 1522243924);
  v13 = 734352403 * ((2 * ((v9 - 192) & 0xF744420CDE2F4A0) - (v9 - 192) + 0x708BBBDF321D0B59) ^ 0x68710DCBEF69D757);
  *(v9 - 152) = v13 + 2228435231;
  *(v9 - 192) = (v7 - 1382622821) ^ v13;
  *(v9 - 168) = ((v7 - 1382622821) ^ 2) + v13;
  *(v9 - 164) = 1 - v13;
  *(v9 - 184) = v12 + v13;
  *(v9 - 176) = -1174362589 - v13 + v7;
  *(v9 - 172) = ((v7 - 1382622821) ^ 0x5C) + v13;
  v14 = (*(a7 + 8 * (v7 ^ 0x73)))(v9 - 192);
  return (*(&off_1002D7880 + *(v9 - 160)))(v14);
}

void sub_1000E8CE4()
{
  v3 = LODWORD(STACK[0x560]);
  if (v0 >= ((v2 - 1485720549) & 0x588E43D1u) - 2066532066)
  {
    v4 = dword_100313AB0 + 1;
  }

  else
  {
    v4 = v1;
  }

  dword_100313AB0 = v4;
  v5 = STACK[0x5B8];
  JUMPOUT(0x1000E8E70);
}

uint64_t sub_1000E8F68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x560]) = a4;
  STACK[0x15D8] = 0xDF555745465DE79ALL;
  LODWORD(STACK[0x88C]) = dword_100313AB4 - 761298293;
  v10 = dword_100313AB0;
  v11 = ((~((v9 - 192) | v6) + ((v9 - 192) & v6)) ^ 0x49390B3A6B55B877) * v8;
  *(v9 - 192) = v11 + v7;
  v12 = v4 - 1806737896 - v11;
  *(v9 - 172) = v12;
  *(v9 - 168) = v12 - 8;
  *(v9 - 160) = v10 - v11;
  *(v9 - 184) = v11;
  *(v9 - 180) = v11 + v4 - 1806737896 - 36;
  *(v9 - 176) = (v4 - 1723653669) ^ v11;
  v13 = (*(v5 + 8 * (v4 ^ 0x60)))(v9 - 192);
  return (*(&off_1002D7880 + *(v9 - 152)))(v13);
}

uint64_t sub_1000E9184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v14 = (v12 + 4 * (v10 + v13));
  v15 = v10 + 1;
  *v14 = v14[397] ^ *(&STACK[0x15D8] + ((*(v12 + 4 * (v15 + v13)) & 1) == 0)) ^ ((((*(v12 + 4 * (v15 + v13)) & 0x7FFFFFFE | v9 & 0x80000000) ^ (a8 - 1)) - ((((*(v12 + 4 * (v15 + v13)) & 0x7FFFFFFE | v9 & 0x80000000) ^ (a8 - 1)) << (v8 + a6 - 101)) & 0x343E99D4) - 1709224725) >> 1) ^ 0xB5241EF;
  return (*(a7 + 8 * ((84 * (v15 != v11 + 3)) ^ v8)))();
}

void sub_1000E9230()
{
  STACK[0x9E8] = 32;
  STACK[0x8A8] = v0;
  STACK[0x960] = STACK[0x590];
  JUMPOUT(0x1000E6820);
}

uint64_t sub_1000E9248(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11)
{
  v23.val[0].i64[0] = (v20 + a8) & 0xF;
  v23.val[0].i64[1] = (a5 + a8 - 1) & 0xF;
  v23.val[1].i64[0] = (a5 + a8) & 0xFLL;
  v23.val[1].i64[1] = (a5 + a8 + 1) & 0xF;
  v23.val[2].i64[0] = (a5 + a8 + 2) & 0xF;
  v23.val[2].i64[1] = (v19 + a8 + v11) & 0xF;
  v23.val[3].i64[0] = (a5 + a8 + 4) & 0xF;
  v23.val[3].i64[1] = (a5 + a8 + 5) & 0xFLL;
  *(v17 + (v16 + a8)) = veor_s8(veor_s8(veor_s8(veor_s8(*(v12 + (v20 + a8)), *(v13 + v23.val[0].i64[0])), veor_s8(*(v14 + v23.val[0].i64[0]), *(v23.val[0].i64[0] + v15 + 1))), a3), vmul_s8(*&vqtbl4q_s8(v23, a1), a2));
  return (*(&off_1002D7880 + (((v18 == a8) * v21) ^ a11)))();
}

uint64_t sub_1000E931C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v7 + 84)))();
  v9 = STACK[0x520];
  return (*(a7 + 8 * (((LODWORD(STACK[0x92C]) == 0) * (454 * ((65 * (v7 ^ 0x810)) ^ 0x106) - 806)) ^ (65 * (v7 ^ 0x810)))))(STACK[0x510]);
}

void sub_1000E9380()
{
  v1 = STACK[0x518];
  *(v1 + 16) = STACK[0xA44];
  *(v1 + 8) = v0;
  sub_1000E9E10();
}

uint64_t sub_1000E93A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x9E8] = a3;
  STACK[0x728] = v9;
  STACK[0x6A0] = STACK[0x5B8];
  v10 = (*(a7 + 8 * (v7 + 2006)))(v8);
  v11 = STACK[0x448];
  v12 = LODWORD(STACK[0x450]);
  return sub_1000E93D8(v10);
}

uint64_t sub_1000E9664@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = a2 - 259;
  (*(a1 + 8 * (a2 ^ 0xC7C)))();
  STACK[0x940] = 0;
  return (*(&off_1002D7880 + (((*(STACK[0x8F8] + 8) != 0) * ((v2 + 1082) ^ 0x766)) ^ v2)))();
}

uint64_t sub_1000E96B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v8 + 1367)))();
  *(v9 + 8) = 0;
  *(v9 + 16) = 864389837;
  STACK[0x9E8] += (4 * (v8 + 1082)) ^ 0xFFFFFFFFFFFFE25CLL;
  return (*(&off_1002D7880 + ((SLODWORD(STACK[0x9D4]) >= ((4 * (v8 + 1082)) ^ 0x18E8) + 1595244532) ^ (4 * (v8 + 1082)) ^ 0x18E8)))(v7);
}

uint64_t sub_1000E9814@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (v2 ^ 0x817) * a2;
  (*(a1 + 8 * (v2 ^ 0x7C)))();
  STACK[0xA58] = 0;
  return (*(&off_1002D7880 + (((STACK[0x940] == 0) * (((v3 - 208) ^ 0xF0) + v3 + 51)) ^ v3)))();
}

uint64_t sub_1000E98FC()
{
  v0 = STACK[0x9B0];
  v1 = STACK[0x5F8];
  v2 = STACK[0x998];
  v3 = STACK[0xA90];
  v4 = STACK[0x880];
  v5 = STACK[0x850];
  return sub_1000E991C();
}

uint64_t sub_1000E991C@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x748] = a2;
  STACK[0x980] = v4;
  STACK[0x9D8] = v3;
  STACK[0xA00] = v5;
  STACK[0x958] = v2;
  STACK[0xA80] = v6;
  v9 = &STACK[0xB70] + v8;
  STACK[0x8B8] = &STACK[0xB70] + v8;
  STACK[0x8F8] = &STACK[0xB70] + v8;
  STACK[0x668] = &STACK[0xB70] + v8 + 0x1B66A7A4305C9106;
  STACK[0x9E8] = v8 + (v7 + 1328) - 1924;
  LODWORD(STACK[0xA8C]) = 1065086442;
  STACK[0xA58] = 0;
  STACK[0x940] = 0;
  *(v9 + 1) = 0;
  *(v9 + 4) = 864389837;
  STACK[0x8B0] = &STACK[0xB70] + v8 + 16;
  if (a2)
  {
    v10 = v4 == 0;
  }

  else
  {
    v10 = 1;
  }

  v15 = v10 || v3 == 0 || v5 == 0 || v2 == 0 || v6 == 0;
  return (*(a1 + 8 * ((v15 * (((v7 - 700) | 0x346) ^ 0x28F)) ^ v7)))();
}

uint64_t sub_1000E99E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x590]) = v9;
  LODWORD(STACK[0x78C]) = v9;
  return (*(a7 + 8 * (((v7 == 0) * (((v8 - 2052) | 0x82) + 615)) ^ (v8 - 1922))))();
}

uint64_t sub_1000E9A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = &STACK[0xB70] + STACK[0x9E8];
  v11 = 1686848693 * ((386068185 - ((v9 - 192) ^ 0xC7CD05CE | 0x1702EED9) + ((v9 - 192) ^ 0xC7CD05CE | 0xE8FD1126)) ^ 0xB15D92F4);
  v12 = LODWORD(STACK[0xA8C]) - v11 - 2 * ((((v8 - 1951) | 0x489) + 1897141874) & (LODWORD(STACK[0xA8C]) + 1082397190) ^ STACK[0xA8C] & 1) - 1315427072;
  *(v9 - 168) = v8 - v11 - 1125;
  *(v9 - 164) = v12;
  *(v9 - 176) = v10;
  *(v9 - 192) = v7;
  v13 = (*(a7 + 8 * (v8 ^ 0xFCF)))(v9 - 192);
  return (*(&off_1002D7880 + ((44 * (*(v9 - 184) != 0)) ^ v8)))(v13);
}

uint64_t sub_1000E9BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = off_100313AA8;
  LOBYTE(STACK[0x15B9]) = -89 * *off_100313AA8 - 105;
  LOBYTE(STACK[0x15BA]) = -89 * v8[1] - 105;
  LOBYTE(STACK[0x15BB]) = v8[2] * (-78 * (v7 ^ 0x6C) + 67) - 105;
  LOBYTE(STACK[0x15BC]) = v7 + 78 - 89 * v8[3] - 37;
  LOBYTE(STACK[0x15BD]) = -89 * v8[4] - 105;
  LOBYTE(STACK[0x15BE]) = -89 * v8[5] - 105;
  LOBYTE(STACK[0x15BF]) = -89 * v8[6] - 105;
  LOBYTE(STACK[0x15C0]) = -89 * v8[7] - 105;
  LOBYTE(STACK[0x15C1]) = -89 * v8[8] - 105;
  LOBYTE(STACK[0x15C2]) = -89 * v8[9] - 105;
  LOBYTE(STACK[0x15C3]) = -89 * v8[10] - 105;
  LOBYTE(STACK[0x15C4]) = -89 * v8[11] - 105;
  LOBYTE(STACK[0x15C5]) = -89 * v8[12] - 105;
  LOBYTE(STACK[0x15C6]) = -89 * v8[13] - 105;
  LOBYTE(STACK[0x15C7]) = -89 * v8[14] - 105;
  LOBYTE(STACK[0x15C8]) = -89 * v8[15] - 105;
  LOBYTE(STACK[0x15C9]) = -89 * v8[16] - 105;
  v9 = off_100313AA8;
  LOBYTE(STACK[0x15CA]) = -89 * off_100313AA8[17] - 105;
  LOBYTE(STACK[0x15CB]) = -89 * v9[18] - 105;
  LOBYTE(STACK[0x15CC]) = -89 * v9[19] - 105;
  LOBYTE(STACK[0x15CD]) = -89 * v9[20] - 105;
  LOBYTE(STACK[0x15CE]) = -89 * v9[21] - 105;
  LOBYTE(STACK[0x15CF]) = -89 * v9[22] - 105;
  v10 = (*(a7 + 8 * (v7 + 1302)))();
  v11 = (*(&off_1002D7880 + v7 + 1275))(0, &STACK[0x15B9], v10) == 0;
  return (*(&off_1002D7880 + ((232 * v11) ^ v7)))();
}

uint64_t sub_1000E9D70(unint64_t a1)
{
  v3 = *(v1 + 8 * (v2 + 1330));
  STACK[0x588] = a1;
  v4 = v3() == 0;
  return (*(&off_1002D7880 + ((v4 * (((v2 - 772) | 0x91) - 9)) ^ v2)))();
}

uint64_t sub_1000E9DC8()
{
  STACK[0x9E8] += 64;
  v2 = STACK[0x8F8];
  STACK[0x518] = STACK[0x8F8];
  return (*(v0 + 8 * ((501 * (v2 == 0)) ^ v1)))();
}

void sub_1000E9E10()
{
  STACK[0x9E8] = v0;
  (*(v1 + 8 * (v2 + 1288)))();
  (*(&off_1002D7880 + 2 * (v2 ^ 0x305) + 1922))(STACK[0x588]);
  JUMPOUT(0x1000A75E0);
}

uint64_t sub_1000E9E78()
{
  STACK[0x520] = v0;
  STACK[0x5B0] = &STACK[0xB70] + v0;
  STACK[0x5B8] = v3 ^ 0xFFDFEFDBB79FEC77 ^ ((&STACK[0xB70] + v0) << (v2 ^ 0xF5u)) & 0x10;
  v4 = (*(v1 + 8 * (v2 ^ 0x877)))();
  v5 = ((2 * v4) & 0xFB473F5BCFBE9CECLL) - (*(&off_1002D7880 + (v2 ^ 0x876)))() + (v4 ^ (103 * (v2 ^ 0xE3u)) ^ 0xFDA39FADE7DF4948) != 0xFDA39FADE7DF4E76;
  return (*(&off_1002D7880 + ((254 * v5) ^ v2 ^ 0x785)))();
}

uint64_t sub_1000E9F6C()
{
  v3 = v1 ^ 0x658;
  v4 = (*(v0 + 8 * (v3 ^ 0x9AA)))(v2);
  v5 = (v4 ^ 0xEFF5DBD9BDFB26AFLL) - (*(&off_1002D7880 + (v3 ^ 0x9AD)))() + ((v4 << (v3 ^ 0x2Du)) & 0xDFEBB7B37BF64D5ELL) == 0xEFF5DBD9BDFB26AFLL;
  return (*(&off_1002D7880 + ((180 * (((v3 - 101) ^ v5) & 1)) ^ v3)))();
}

uint64_t sub_1000EA020()
{
  v3 = (*(v0 + 8 * (v1 ^ 0xD41)))(v2);
  v4 = *(&off_1002D7880 + ((651 * ((((v1 - 1479) - 0x11045230250006) ^ v3) - (*(&off_1002D7880 + (v1 ^ 0xD4D)))() + ((2 * v3) & 0xFFDDF75B9FB5FFF4) - 0x4FAFAB235207F542 == ((v1 + 324335141) & 0xECAB079F ^ 0xB03F508A7DD30934))) ^ v1));
  v5 = STACK[0x520];
  return v4(v2);
}

uint64_t sub_1000EA100(unint64_t a1)
{
  v3 = *(v1 + 8 * (v2 + 2163));
  STACK[0x510] = a1;
  v4 = v3();
  v5 = STACK[0x520];
  return (*(&off_1002D7880 + ((((((v4 - v2) | (v2 - v4)) >> (v2 ^ 7)) & 1) == 0) | (v2 + 1478))))(STACK[0x510]);
}

uint64_t sub_1000EA178()
{
  LODWORD(STACK[0xA44]) = v2 + 8;
  v3 = (*(v0 + 8 * (v1 ^ 0x879)))(8, 0x100004077774924);
  v4 = STACK[0x520];
  return (*(&off_1002D7880 + (((v3 != 0) * ((((v1 ^ 0x7A1) - 1813) | 0x300) ^ 0x385)) ^ v1 ^ 0x7A1)))(STACK[0x510]);
}

uint64_t sub_1000EA1F8()
{
  *v3 = (HIBYTE(STACK[0x738]) - ((STACK[0x738] >> 55) & 0xC) + 6) ^ 6;
  v3[1] = ((STACK[0x738] >> ((((v1 - 84) | 2) - 78) ^ 0x31u)) - ((2 * (STACK[0x738] >> ((((v1 - 84) | 2) - 78) ^ 0x31u))) & 0xF8) - 4) ^ 0xFC;
  v3[2] = ((WORD2(STACK[0x738]) >> 8) + (~(STACK[0x738] >> 39) | 0xCB) - 101) ^ 0x9A;
  v3[3] = (HIDWORD(STACK[0x738]) - ((STACK[0x738] >> 31) & 0x48) + 36) ^ 0x24;
  v3[4] = (HIBYTE(LODWORD(STACK[0x738])) - ((LODWORD(STACK[0x738]) >> 23) & 0x70) - 72) ^ 0xB8;
  v3[5] = (HIWORD(LODWORD(STACK[0x738])) - ((LODWORD(STACK[0x738]) >> 15) & 0x2C) + 22) ^ 0x16;
  v3[6] = (BYTE1(LODWORD(STACK[0x738])) - ((LODWORD(STACK[0x738]) >> 7) & 0xA8) - 44) ^ 0xD4;
  v3[7] = (LOBYTE(STACK[0x738]) - ((2 * LOBYTE(STACK[0x738])) & 0x58) - 84) ^ 0xAC;
  v4 = v2;
  v5 = v0;
  v6 = (*(v0 + 8 * ((v1 - 468) ^ 0xDB4)))(8, v4) != 0;
  return (*(v5 + 8 * (((4 * v6) | (16 * v6)) ^ (v1 - 468))))();
}

uint64_t sub_1000EA41C()
{
  v3 = v2 < v0;
  *STACK[0x9D8] = 8;
  if (v3 == v0 + (v1 ^ 0x2Eu) - 2106 > 0xDED7B597)
  {
    v3 = v2 > 0xDED7B597;
  }

  return (*(&off_1002D7880 + ((58 * v3) ^ (v1 - 1410))))();
}

uint64_t sub_1000EA4C0()
{
  v3 = (*(v0 + 8 * (v1 ^ 0xF78)))(v2);
  v4 = (*(&off_1002D7880 + (v1 ^ 0xF47)))((((2 * v3) & 0x7FEEFDF3BEFFEFEELL) + (v3 ^ 0xBFF77EF9DF7FF7F7) - ((2 * (((2 * v3) & 0x7FEEFDF3BEFFEFEELL) + (v3 ^ 0xBFF77EF9DF7FF7F7)) - 0x7FEEFDF3BEFFEFECLL) & (((227 * (v1 ^ 0x73A) - 843) | 0x510u) ^ 0xBFC02FF71366E251)) - 0x601766FE55CC8476) ^ 0x5FE017FB89B37380, 0x100004077774924);
  STACK[0x828] = v4;
  v5 = STACK[0x520];
  return (*(&off_1002D7880 + (((32 * (v4 == 0)) | ((v4 == 0) << 6)) ^ v1)))(v2);
}

uint64_t sub_1000EA5E4(unint64_t a1)
{
  v7 = (*(v1 + 8 * (v2 ^ 0xDD5)))();
  v8 = *(&off_1002D7880 + (v2 ^ 0xDC4));
  STACK[0x510] = a1;
  v9 = v8(a1, v3, v4 ^ v5, v7);
  return (*(&off_1002D7880 + ((54 * (((((v2 - 47) ^ 0xBC) & (2 * v9)) + (v9 ^ 0xCF)) != 207)) ^ v2)))();
}

uint64_t sub_1000EA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (v9 ^ v7 ^ 0x114 ^ ((v7 ^ 0x676) + 329695467) & 0xEC5938E2 ^ 0xF634F979) + ((2 * v9) & 0xFF0F17DA ^ 0x13060700);
  LODWORD(STACK[0xA44]) = v10 - 1275199776;
  v11 = (*(a7 + 8 * ((v7 ^ 0x676) + 549)))(v10 - 2139589613, v8) == 0;
  return (*(&off_1002D7880 + (v11 ^ v7 ^ 0x676)))();
}

uint64_t sub_1000EA7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, int a3@<W8>)
{
  v10 = v8 + a1 + 0x4008810620800809;
  v11 = ((*(qword_100314AA8 + (dword_100314CB0 & v3)) ^ v10) & 0x7FFFFFFF) * a3;
  v12 = ((v11 >> (v7 ^ 0x41)) ^ v11) * a3;
  *v10 = *((v12 >> 24) + v6 + 3) ^ *(v5 + (v12 >> 24)) ^ *(v4 + (v12 >> 24)) ^ v12 ^ (-101 * BYTE3(v12));
  v13 = 659 * (v7 ^ 0x553);
  LODWORD(STACK[0x7D4]) = 0;
  LOWORD(v11) = v8 - ((v13 + 2 * v8 + 2796) & 0xFF3E) - 30808;
  v14 = STACK[0x5C0];
  v15 = *(a2 + 8 * (v7 ^ 0x573));
  return (*(a2 + 8 * ((3354 * ((v11 ^ 0x7F9Eu) > ((((v13 - 276) | 0x105) ^ 0xF2FA) + ((v13 - 18223) & 0x4A1C)))) ^ v13)))(0, v9);
}

void sub_1000EADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v7 + 84)))();
  v8 = LODWORD(STACK[0x834]);
  JUMPOUT(0x1000E9340);
}

void sub_1000EADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v7 + 84)))(STACK[0x828]);
  v8 = LODWORD(STACK[0x7D4]);
  JUMPOUT(0x1000E9340);
}

uint64_t sub_1000EAE18()
{
  v10 = -1063179407 * ((*(qword_100314AA8 + (dword_100314CB0 & (v0 ^ 0x701E2140u))) ^ (v6 + v8 + 2070279743)) & 0x7FFFFFFF);
  v11 = -1063179407 * (v10 ^ HIWORD(v10));
  *(v6 + v8 - 0x19BC2E1B849A09C1) = byte_10025AF70[v11 >> 24] ^ *(v5 + v9 - 0x413B9D506EFEDE57) ^ byte_10027D3C0[(v11 >> 24) + 3] ^ byte_1002607F0[v11 >> 24] ^ v11 ^ (-101 * BYTE3(v11));
  if (v2 < v3 != v7 - 0x2A3B9F808CD08A8CLL < v1)
  {
    v12 = v2 < v3;
  }

  else
  {
    v12 = v7 - 0x2A3B9F808CD08A8CLL < v2;
  }

  return (*(&off_1002D7880 + ((v12 * v4) ^ v0)))();
}

void sub_1000EAF44()
{
  v2.i64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v2.i64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v3 = vmvnq_s8(vandq_s8(vaddq_s8(*v1, *v1), v2));
  v2.i64[0] = 0xC8C8C8C8C8C8C8C8;
  v2.i64[1] = 0xC8C8C8C8C8C8C8C8;
  *v0 = vaddq_s8(vaddq_s8(*v1, v2), v3);
  JUMPOUT(0x1000EAF6CLL);
}

uint64_t sub_1000EB088()
{
  v3 = (*(v0 + 8 * (v1 ^ 0xEF7)))((v2 + ((v1 + 24636) & 0x9B3F) - 3119), 0x100004077774924);
  STACK[0x5B0] = v3 + 0x99187B47AA1D2C2;
  STACK[0x8E0] = v3 + 0x99187B47AA1D2C2;
  return (*(v0 + 8 * ((81 * (v3 == 0)) | v1)))(4294925268);
}

uint64_t sub_1000EB1A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(v5 + a2 - 0x60EAF96C38A3B98FLL) = *(v4 + a1 - 0x18AEEAA2F5A7427DLL) - ((((v8 - 6) | 0x98) + 12) & (2 * *(v4 + a1 - 0x18AEEAA2F5A7427DLL))) - 44;
  v9 = v3 < v2;
  if (v9 == v6 - 0x6A6E7D68A79A54A9 < v2)
  {
    v9 = v6 - 0x6A6E7D68A79A54A9 < v3;
  }

  return (*(v7 + 8 * (v9 | (16 * v9) | v8)))();
}

uint64_t sub_1000EB24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x834]) = a6;
  v8 = *(&off_1002D7880 + v6);
  v9 = STACK[0x5C0];
  return sub_1000E8738(v7, v7, a3, a4, a5, a6, &off_1002D7880);
}

uint64_t sub_1000EB27C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v16 = (a7 + v9);
  *(v15 + (a6 + v10)) = (v7 + 113) ^ *(v11 + v16) ^ *(v12 + (v16 & 0xF)) ^ *(v13 + (v16 & 0xF)) ^ *((v16 & 0xF) + v14 + 1) ^ ((v16 & 0xF) * a1);
  return (*(&off_1002D7880 + (v7 ^ (16 * (a7 + 1 + v9 >= v8)))))();
}

uint64_t sub_1000EB2F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = (v8 + v9) + v14;
  v16 = v15 - a5 - v10;
  v17 = (((a8 + 739) | 0x21) - 1052) & (a2 + 14);
  v18 = v15 - v11 - v17;
  v19 = v15 - v12 - v17;
  v20 = v15 + ~v13 - v17;
  v24 = v16 < 0x10 || v18 < 0x10 || v19 < 0x10 || v20 < 0x10;
  return (*(&off_1002D7880 + ((21 * (((a8 + 106) ^ v24) & 1)) ^ a8)))();
}

uint64_t sub_1000EB3F4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v14 = a6 | 0x462;
  STACK[0x5B8] = (a2 + 1) & 0xF;
  STACK[0x5B0] = (a2 + 2) & 0xF;
  STACK[0x5A8] = (a2 + 6) & 0xF;
  STACK[0x5A0] = (a2 + 7) & 0xF;
  v15 = a2 + v7;
  v16 = (v14 - 1475) | 0x410;
  v22.val[1].i64[0] = a2 & 0xF;
  v22.val[1].i64[1] = STACK[0x5B8];
  v22.val[2].i64[0] = STACK[0x5B0];
  v22.val[2].i64[1] = (a2 + 3) & 0xF;
  v22.val[3].i64[0] = (a2 + 4) & 0xF;
  v22.val[3].i64[1] = (a2 + 5) & 0xF;
  v23.val[0].i64[0] = STACK[0x5A8];
  v23.val[0].i64[1] = STACK[0x5A0];
  v23.val[1].i64[0] = a2 & 0xF ^ 8u;
  v23.val[1].i64[1] = (a2 + 9) & 0xF;
  v23.val[2].i64[0] = (a2 + 10) & 0xF;
  v23.val[2].i64[1] = (a2 + 11) & 0xF;
  v23.val[3].i64[0] = (a2 + 12) & 0xF;
  v23.val[3].i64[1] = (a2 + 13) & 0xF;
  v17 = STACK[0x5C0];
  v18 = vqtbl4q_s8(v23, xmmword_100259790).u64[0];
  v19.i64[0] = 0x5959595959595959;
  v19.i64[1] = 0x5959595959595959;
  v20.i64[0] = 0xDFDFDFDFDFDFDFDFLL;
  v20.i64[1] = 0xDFDFDFDFDFDFDFDFLL;
  v22.val[0].i64[0] = (v16 - 1313) & (a2 + v7);
  v22.val[0].i64[1] = (a2 - 1) & 0xF;
  v23.val[3].i64[0] = vqtbl4q_s8(v22, xmmword_100259790).u64[0];
  v23.val[3].i64[1] = v18;
  *(v13 + (v6 + v8)) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v9 + v15), *(v10 + ((v16 - 1313) & v15))), veorq_s8(*(v11 + ((v16 - 1313) & v15)), *(((v16 - 1313) & v15) + v12 + 1))), v20), vmulq_s8(v23.val[3], v19));
  return (*(&off_1002D7880 + ((474 * ((a4 & 0xFFFFFFF0) == 16)) ^ v14)))(905749228);
}

uint64_t sub_1000EB6B4(uint64_t a1, int a2)
{
  v4 = STACK[0x658];
  v5 = v2 - a2 + v3 - 905751028 + 2012415181 + 91 * (v3 ^ 0x68Fu) < 8;
  return (*(&off_1002D7880 + (((2 * v5) | (16 * v5)) ^ v3)))();
}

uint64_t sub_1000EB74C(uint64_t a1, char a2)
{
  v7 = v6 + v3 + v5 + ((v4 - 2113726259) | 0x48004092) + 818;
  v10 = ((v4 - 12 - a2 + 10) & 0xFu) >= (v7 & 0xF) && 1596640553 - v2 >= v7 && v7 < 0x10;
  return (*(&off_1002D7880 + ((125 * v10) ^ v4)))();
}

uint64_t sub_1000EB7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = (*(v9 + 68) ^ 0x4B67BDFC) + v8 - ((((*(v9 + 68) ^ 0x4B67BDFC) + v8) << (-68 * (a8 ^ 0x89) - 19)) & 0x96CF7BF8) + 1265090044;
  *(v9 + 68) = v10;
  return (*(&off_1002D7880 + ((726 * ((v10 ^ 0x4B67BDFC) < v8)) ^ a8)))();
}

uint64_t sub_1000EB894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = 131 * (v8 ^ 0x816);
  v10 = STACK[0x930];
  v11 = STACK[0xAA0];
  STACK[0xA68] = *(a7 + 8 * (v8 - 2031));
  STACK[0x9A0] = v11;
  LODWORD(STACK[0xA28]) = v7 + 16;
  STACK[0x658] = v10;
  v12 = ((v9 + 582) ^ 0x57F) + ((v7 + 16) ^ 0xED84AAA7) - 2142231977 + ((2 * *(v11 + 68)) & 0x54 ^ 0x50) + (*(v11 + 68) & 0x3F ^ 0x7FAFDD96) - 1588;
  return (*(a7 + 8 * ((27 * ((v12 ^ 0xF77DDF97) + 142745641 + ((2 * v12) & 0xEEFBBF2E) < 0xFFFFFFC0)) ^ v9)))();
}

void sub_1000EB8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xAA0];
  STACK[0xA68] = *(a7 + 8 * (v7 - 2025));
  JUMPOUT(0x1000EB8E0);
}

void sub_1000EB99C()
{
  STACK[0x908] = STACK[0xAA0];
  STACK[0x800] = STACK[0xA30];
  JUMPOUT(0x1000A51D0);
}

void sub_1000EBB8C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (923786993 * ((((2 * a1) | 0xC4A8E358) - a1 + 497782356) ^ 0x88B3CDE3));
  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 8);
  __asm { BRAA            X11, X17 }
}

void sub_1000EBC14(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v11 + 24);
  v13 = 1117245193 * (((&a5 | 0xBC0BA689) + (~&a5 | 0x43F45976)) ^ 0x6C086D81);
  a9 = *(v11 + 16);
  a10 = v12;
  v14 = v10 - 103367909;
  a7 = a1 + v13;
  a8 = v14 + v13 - 1005;
  (*(&off_1002D7880 + v14 + 78))(&a5);
  JUMPOUT(0x1000EC068);
}

uint64_t sub_1000EBC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 + 64);
  v7 = *(v4 + 72);
  v8 = *(v4 + 32);
  if (v5)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(&off_1002D7880 + ((220 * v10) ^ (v3 - 103368096))))(a1, a2, a3);
}

uint64_t sub_1000EBCEC()
{
  v4 = (3 * (v0 ^ 0x6294DA0) - 907) | 0x271;
  if (v3)
  {
    v5 = v2 == ((v4 + 26) ^ 0x30B);
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(v1 + 8 * ((v6 * ((v4 + 282) ^ 0x5EC)) ^ v4)))();
}

uint64_t sub_1000EBD40@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, char a4, __int16 a5, char a6, char *a7, uint64_t a8, char *a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17)
{
  v22 = 1574982917 * ((2 * (&a7 & 0x48228FF0) - &a7 + 937259017) ^ 0xCCF830B4);
  a10 = (v17 + 1289) ^ v22;
  a16 = -1238606479 - v22;
  a8 = v21;
  a9 = &a6;
  a11 = 0;
  a12 = 0x2F38A81C3234F21BLL;
  a7 = &a4;
  a17 = v19;
  a13 = a1;
  a14 = v20;
  v23 = (*(v18 + 8 * (v17 + 1386)))(&a7);
  return sub_1000EBFB4(v23);
}

uint64_t sub_1000EBDE0()
{
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 40);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v15 = *(v1 + 8);
  v14 = v9;
  v10 = v0 - 103367909;
  v11 = 1574982917 * (((v16 | 0xA8AC38BF) - (v16 & 0xA8AC38BF)) ^ 0x53897802);
  v16[0] = v7;
  v16[1] = v6;
  v23 = 1093722451 - v11;
  v20 = v8;
  v21 = &v14;
  v18 = v4;
  v19 = 0x2F38A81C3234F21BLL;
  v17 = v10 ^ v11;
  v16[2] = v5;
  v24 = &v15;
  result = (*(&off_1002D7880 + v10 + 97))(v16);
  *v2 = v22;
  v13 = *(v3 - 72);
  return result;
}

uint64_t sub_1000EBE8C(uint64_t a1)
{
  v5 = v1 - 103368942;
  v6 = v1 - 1074216053;
  v7 = v1 - 103368025;
  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v4 == 0;
  return (*(&off_1002D7880 + (((v6 ^ 0xC6221497 ^ v5) * v10) ^ v7)))(a1);
}

void sub_1000EBEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, unsigned int a14, int a15)
{
  (*(v17 + 8 * (v16 ^ (v15 + 2996))))("Inside PSCHello \n ");
  v18 = 1117245193 * ((((&a12 | 0x94831BC0) ^ 0xFFFFFFFE) - (~&a12 | 0x6B7CE43F)) ^ 0xBB7F2F36);
  a14 = v18 + 1;
  a15 = v18 + 970847139 + v16;
  (*(v17 + 8 * (v16 ^ (v15 + 3181))))(&a12);
  JUMPOUT(0x1000EBFB0);
}

void sub_1000EBFBC(int a1@<W8>, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, int *a12, uint64_t a13, int a14, unsigned int a15)
{
  a3 = a1;
  v16 = v15 - 103367909;
  v17 = 1574982917 * (((&a6 | 0x3A00169B) - &a6 + (&a6 & 0xC5FFE960)) ^ 0xC1255626);
  a7 = 0;
  a8 = 0;
  a6 = 0;
  a15 = -610014322 - v17;
  a10 = 0;
  a11 = 0x2F38A81C3234F21BLL;
  a9 = v16 ^ v17;
  a12 = &a3;
  a13 = 0;
  JUMPOUT(0x1000EC04CLL);
}

uint64_t sub_1000EC0A4(uint64_t result)
{
  v1 = 734352403 * (((result | 0x389D4DAC4BAB98FALL) - (result & 0x389D4DAC4BAB98FALL)) ^ 0x2067FBB896DF44F4);
  v2 = *(result + 8);
  v3 = v2 - v1;
  v4 = *(result + 24) - v1;
  v5 = *(result + 40);
  v6 = v5 - v1;
  v7 = *(result + 28) + v1;
  v8 = *(result + 20) - v1;
  v9 = *result ^ v1;
  v10 = v6 > v3;
  v11 = v5 == v2;
  if (v7)
  {
    v11 = v10;
  }

  if (!v11)
  {
    v9 = v4;
  }

  *(result + 32) = v9 ^ v8;
  return result;
}

void sub_1000EC138(uint64_t a1)
{
  v1 = 1614251083 * ((~a1 & 0x2FDA1D09036F562ELL | a1 & 0xD025E2F6FC90A9D1) ^ 0x9BF0C6D66B763BCELL);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 24) - v1;
  v4 = *(a1 + 8);
  __asm { BRAA            X13, X17 }
}

void sub_1000EC1DC(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v17 = ((-898538123 - (&a3 | 0xCA716575) + (&a3 | 0x358E9A8A)) ^ 0xCEABDA37) * v15;
  a6 = (v14 + a1) ^ v17;
  a9 = 0;
  a10 = 0;
  a12 = -1645014291 - v17;
  a4 = 0;
  a5 = 0;
  a13 = v16;
  a7 = 0;
  a8 = v13;
  a3 = 0;
  JUMPOUT(0x1000EC2B4);
}

uint64_t sub_1000EC24C@<X0>(int a1@<W8>)
{
  v10 = v4;
  memset(v11, 0, sizeof(v11));
  v15 = 0;
  v16 = 0;
  v7 = ((((v11 | 0xBFA8D688) ^ 0xFFFFFFFE) - (~v11 | 0x40572977)) ^ 0xBB7269CA) * v3;
  v18 = 351474413 - v7;
  v12 = (v2 + a1) ^ v7;
  v19 = &v10;
  v13 = 0;
  v14 = v1;
  result = (*(&off_1002D7880 + a1 + v2 + 97))(v11);
  *(v5 + 16) = v17;
  v9 = *(v6 - 24);
  return result;
}

void sub_1000EC308(uint64_t a1)
{
  v1 = 1407122579 * (a1 ^ 0x6D35E20E);
  v2 = *(a1 + 8) - v1;
  if (*a1)
  {
    v3 = (*(a1 + 16) ^ v1) == 1209580974;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000EC3B8()
{
  v3 = v2 - ((2 * v2 + 1875805378) & 0x9FE2A198) + ((((v1 + 1000374563) & 0xC45F7FCE) + 131633715) ^ v1);
  v4 = (*(v0 + 8 * ((v1 - 573) ^ 0xAE0)))(((2 * v3) & 0xA347BFE0 ^ 0x8342A180) + (v3 & 0xFFFFFFF0 ^ 0x1E528F3D) - 1369694187, 0x100004077774924);
  STACK[0x470] = v4;
  return (*(&off_1002D7880 + ((71 * (v4 != 0)) ^ (v1 - 573))))();
}

uint64_t sub_1000EC49C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x3BC]) = v6;
  *a1 = 1;
  return (*(a4 + 8 * ((27 * ((v7 | ((v7 < v5) << 32)) + 316063363 + (v4 ^ 0x2C1u) == 1525646138)) ^ v4)))();
}

uint64_t sub_1000EC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = v6 < v5;
  *(v9 + v4 - 0x33E7429357A87F59) = *(v8 + v12 - 0x28FD7E3661E092C4);
  if (v13 == v10 - 0x63B931F71B663987 < v5 + ((v11 - 1472) | 0x701u) - 1801)
  {
    v13 = v10 - 0x63B931F71B663987 < v6;
  }

  return (*(a4 + 8 * ((!v13 * v7) ^ v11)))();
}

uint64_t sub_1000EC5FC@<X0>(uint64_t a1@<X3>, unint64_t a2@<X4>, int a3@<W8>)
{
  STACK[0x3A0] = v6;
  STACK[0x3C0] = v5;
  STACK[0x3A8] = a2;
  *(a2 + v4 - 0x56A42708B3AB7887) = 0x80;
  v7 = a3 - 143235080 < ((43 * (v3 ^ 0x71D)) ^ 0x7FFFFCA3u);
  return (*(a1 + 8 * (((2 * v7) | (4 * v7)) ^ v3)))();
}

uint64_t sub_1000EC67C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  *(v3 + v4 + a2 + 846) = 0;
  v5 = (((v2 - 1289) | 0x15C) ^ v4) + a2 < 0x7FFFFFFF;
  return (*(a1 + 8 * ((2 * v5) | (4 * v5) | v2)))();
}

uint64_t sub_1000EC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  strcpy((v5 - 206), "com_apple_driver_FairPlayIOKit");
  v6 = (*(a4 + 8 * (v4 + 1271)))(v5 - 206) != 0;
  return (*(&off_1002D7880 + ((v6 * ((v4 + 939510908) & 0xDFFFFDDF ^ (v4 + 402639447))) ^ v4)))();
}

uint64_t sub_1000EC83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 ^ v5)))(LODWORD(STACK[0x4C4]), a1, &STACK[0x494]);
  v7 = ((v4 ^ (v5 + 952) ^ 0x2FFF9F78) & (2 * v6)) + (v6 ^ (v5 + 2190));
  return (*(&off_1002D7880 + ((2914 * (((v4 ^ (v5 + 67)) ^ (((v7 - v4) | (v4 - v7)) < 0)) & 1)) ^ (v4 - 402639452))))();
}

uint64_t sub_1000ECA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x550]) = 0;
  v6 = (v5 | ((v5 < 0x50A255B5) << 32)) + 609252040 != (v4 + 34) + 1962067886;
  return (*(a4 + 8 * ((v6 | (2 * v6)) ^ v4)))();
}

uint64_t sub_1000ECB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = v7 < v5;
  *(v9 + v6 - 0x27E4910ABB3BEA5ELL) = *(v8 + v11 - 0x2958BDD1BB8EFB4CLL);
  if (v12 == v10 - 0x75B1A0130450CDBELL < v5)
  {
    v12 = v10 - 0x75B1A0130450CDBELL < v7;
  }

  return (*(a4 + 8 * ((v12 | (2 * v12)) ^ v4)))();
}

uint64_t sub_1000ECBA4@<X0>(uint64_t a1@<X3>, int a2@<W5>, int a3@<W8>)
{
  LODWORD(STACK[0xD24]) = a2 + v4 + ((v3 - 141) | 0x494);
  STACK[0x488] = 2008;
  v5 = *(a1 + 8 * (v3 + 1954));
  LODWORD(STACK[0x3B0]) = a2;
  v6 = v5((a3 - 321650294), 34, &STACK[0x550], 2008, &STACK[0x550], &STACK[0x488]);
  v7 = LODWORD(STACK[0x3B0]);
  return (*(&off_1002D7880 + ((479 * (v6 == (((v3 + 451) | 8) ^ 0x29A))) ^ v3)))();
}

uint64_t sub_1000ECD44@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v8 = v3 < v2;
  *(v5 + v7 - 0x4C0036121F7B28A7) = *(&STACK[0x550] + v4 - 0xD0C43C323A59CB6);
  if (v8 == v6 - 0x16B2C0E2E341F555 < v2)
  {
    v8 = v6 - 0x16B2C0E2E341F555 < v3;
  }

  return (*(a1 + 8 * (((2 * !v8) | (4 * !v8)) ^ a2)))();
}

uint64_t sub_1000ECDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x420] = 0x210F19FEA6488315;
  v10 = 1686848693 * ((((v9 - 152) | 0x4C163C9) - ((v9 - 152) & 0x4C163C9)) ^ 0x9AACE5D5);
  *(v9 - 128) = v5 - v10 + 619;
  *(v9 - 124) = (v4 ^ 0x1B7DF60E) - v10;
  v11 = v9 - 206;
  *(v11 + 70) = v8 + v7;
  *(v11 + 54) = v6;
  v12 = (*(a4 + 8 * (v5 + 1921)))(v9 - 152);
  return (*(&off_1002D7880 + ((767 * (*(v9 - 144) == 692 * (((v5 + 897) | 0x86) ^ 0x4D5) - 2076)) ^ v5)))(v12);
}

uint64_t sub_1000ECEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x438] = 1;
  STACK[0x468] = 0;
  v5 = (*(a4 + 8 * (v4 ^ 0x64)))(0, "systemgroup.com.apple.pisco.suinfo", &STACK[0x438]) == 0;
  return (*(&off_1002D7880 + (((4 * ((((v4 ^ 0xCA) - 7) ^ v5) & 1)) & 0xBF | (((((v4 ^ 0xCA) - 7) ^ v5) & 1) << 6)) ^ v4)))();
}

uint64_t sub_1000ECF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 ^ 0xD8B)))();
  v7 = (*(&off_1002D7880 + v4 + 682))(((v4 - 1407) | 0x708u) - 642 + 0x400008093403001 + ((2 * v6) & 0xF7FFFEFED97F968ELL) + (v6 ^ 0xFBFFFF7F6CBFCB47), 0x100004077774924);
  return (*(&off_1002D7880 + ((23 * (v7 != 0)) ^ v4)))(a1);
}

uint64_t sub_1000ED0C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10 = v2 < v3;
  *(v5 + v8 - 0x1D9F17274159B43FLL) = *(v4 + a2 - 0x3528CD7E4813352CLL);
  if (v10 == v6 - 0x62107A7F98DBDDF6 < v9)
  {
    v10 = v6 - 0x62107A7F98DBDDF6 < v2;
  }

  return (*(a1 + 8 * (v7 | (2 * v10))))();
}

uint64_t sub_1000ED15C(uint64_t a1, uint64_t a2)
{
  strcpy((v2 + v4 + v3 + 1208), "/Library");
  v6 = (*(a2 + 8 * (v5 + 2009)))(v3, 493);
  return (*(&off_1002D7880 + ((1785 * (((((v5 + 733933183) & 0xD44114CE) - 536880264) & (2 * v6)) + (v6 ^ 0xEFFFEFBF) == -268439618)) ^ v5)))();
}

uint64_t sub_1000ED1F8()
{
  v2 = (*(v0 + 8 * ((v1 - 32) ^ 0x8EF)))();
  STACK[0x390] = 0;
  return (*(&off_1002D7880 + ((v1 - 32) | (32 * (*v2 == ((v1 + 360) | 0x10A) + 5 * ((v1 - 32) ^ 0x56) - 1823)))))();
}

uint64_t sub_1000ED25C()
{
  strcpy((v1 + 1216), "/ProvenanceV2");
  v4 = (*(v0 + 8 * (v3 ^ 0xC97)))(v2, 493);
  v5 = ((v4 << (19 * (v3 ^ 0xE) + 105)) & 0xFDADEFFE) + (((v3 ^ 0x40E) + 144) ^ 0x7ED6F767 ^ v4) != 2128017406;
  return (*(&off_1002D7880 + (v5 | (16 * v5) | v3)))();
}

uint64_t sub_1000ED30C()
{
  v2 = (*(v0 + 8 * (v1 + 2015)))();
  STACK[0x390] = 0;
  return (*(&off_1002D7880 + ((1976 * (*v2 == ((5 * (v1 ^ 0x3A)) ^ 0x33B))) ^ v1)))();
}

uint64_t sub_1000ED368()
{
  v6 = (v4 + 112) | 0x222u;
  *(v1 + 1229) = 0x6975732E6373702FLL;
  *(v5 + 0x400008093403001 + v2 + v6 + 427) = 0;
  STACK[0x468] = v2;
  STACK[0x390] = v2;
  (*(v0 + 8 * (v6 + 1325)))(LODWORD(STACK[0x398]));
  v7 = (*(&off_1002D7880 + v6 + 1342))(v3);
  return (*(&off_1002D7880 + (((v6 ^ 0x507) + 18 * (v6 ^ 0x30F) - 2229) ^ v6)))(v7);
}

uint64_t sub_1000ED460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 6 * (v4 ^ 0x28D);
  (*(a4 + 8 * (v6 + 1997)))(18);
  v7 = (*(&off_1002D7880 + v6 + 2020))(v5, 289);
  return (*(&off_1002D7880 + ((((((v7 << (((v6 + 85) & 0xED) + 52)) & 0xFEF5AFFE) + (v7 ^ 0xFF7AD7FF) - 2138757119) >> 31) * (v6 ^ 0x9D)) ^ v6)))();
}

uint64_t sub_1000ED58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 + 914)))();
  result = (*(&off_1002D7880 + v4 + 914))();
  *(v8 + 12) = -42908;
  v7 = *(v5 - 104);
  return result;
}

uint64_t sub_1000ED65C()
{
  v2 = v1 ^ 0x77;
  v3 = *(*(v0 + 8 * (v2 + 1914)))() == 2;
  return (*(&off_1002D7880 + ((v3 * ((v2 + 2048550130) & 0x85E59ADD ^ 0x3BA ^ (3 * (v2 ^ 0x2C6)))) ^ v2)))();
}

uint64_t sub_1000ED774()
{
  v4 = (LODWORD(STACK[0x3B0]) - 302845486) | ((LODWORD(STACK[0x3B0]) - 302845486 < ((v2 - 1633286668) & 0x6159FFBFu) + 1066846988) << 32);
  v5 = (*(v0 + 8 * (v2 ^ 0x8B4)))((v3 + v1), STACK[0x470], v4 - 1066848701);
  return (*(&off_1002D7880 + ((1831 * ((v5 ^ 0xFF9BDE7EDF77CEF7) - v4 + ((2 * v5) & 0xFF37BCFDBEEF9DEELL) == 0xFF9BDE7E9FE0FD3ALL)) ^ v2)))();
}

uint64_t sub_1000ED9DC@<X0>(int a1@<W8>)
{
  v3 = a1 - 720;
  v4 = (*(v1 + 8 * (a1 + 172)))(v2);
  v5 = (*(&off_1002D7880 + v3 + 966))(kCFAllocatorDefault, v2, (v4 + 156 * (v3 ^ 0x4C0) - 474551500 - ((2 * v4) & 0xC76DE028)) ^ 0xE3B6F014, 0) == 0;
  return (*(&off_1002D7880 + (((8 * v5) | (32 * v5)) ^ v3)))();
}

uint64_t sub_1000EDA8C(uint64_t a1)
{
  v6 = v2 ^ 0x36;
  v8 = (*(v1 + 8 * (v2 + 946)))(a1, kCFURLIsExcludedFromBackupKey, kCFBooleanTrue, 0);
  v9 = (((2 * v8) & 0xBF) + (v8 ^ ((v2 ^ 0x36) - 119)));
  (*(&off_1002D7880 + v2 + 948))(a1);
  if (v9 == 95)
  {
    v10 = -42913;
  }

  else
  {
    v10 = 0;
  }

  (*(&off_1002D7880 + v6 + 897))(v5);
  v11 = (*(&off_1002D7880 + v6 + 914))(v3);
  *(v4 + 16) = 0;
  return (*(&off_1002D7880 + ((684 * (v10 == (((v6 - 1002) | 0x402) ^ 0x4EE))) ^ (v6 - 1031))))(v11);
}

uint64_t sub_1000EDC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X8>)
{
  *(v7 + a1 - 0x448DBDDAA8CEDD8ALL) = *(v10 + v6 + ((v9 - 192) ^ 0xC63F561CC15EDF5CLL));
  v11 = v3 < v4;
  if (v11 == v8 - 0x7BBC52A22F955B72 < a3)
  {
    v11 = v8 - 0x7BBC52A22F955B72 < v3;
  }

  return (*(a2 + 8 * ((v11 * v5) ^ v9)))();
}

uint64_t sub_1000EDCA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  STACK[0x350] = a1;
  v11 = STACK[0x420];
  v12 = &a9 + STACK[0x420] - 0x210F19FEA6487DC5;
  STACK[0x3D0] = v12;
  STACK[0x420] = v11 + 160;
  v13 = off_100313AA8;
  *(v10 - 175) = -89 * *off_100313AA8 - 105;
  *(v10 - 174) = v13[1] * ((v9 + 78) & 0xFB ^ (v9 - 87) & 0xFE ^ 9) - 105;
  *(v10 - 173) = -89 * v13[2] - 105;
  *(v10 - 172) = -89 * v13[3] - 105;
  *(v10 - 171) = -89 * v13[4] - 105;
  *(v10 - 170) = -89 * v13[5] - 105;
  *(v10 - 169) = -89 * v13[6] - 105;
  *(v10 - 168) = -89 * v13[7] - 105;
  *(v10 - 167) = -89 * v13[8] - 105;
  *(v10 - 166) = -89 * v13[9] - 105;
  *(v10 - 165) = -89 * v13[10] - 105;
  *(v10 - 164) = -89 * v13[11] - 105;
  *(v10 - 163) = -89 * v13[12] - 105;
  *(v10 - 162) = -89 * v13[13] - 105;
  *(v10 - 161) = -89 * v13[14] - 105;
  *(v10 - 160) = -89 * v13[15] - 105;
  *(v10 - 159) = -89 * v13[16] - 105;
  v14 = off_100313AA8;
  *(v10 - 158) = -89 * off_100313AA8[17] - 105;
  *(v10 - 157) = -89 * v14[18] - 105;
  *(v10 - 156) = -89 * v14[19] - 105;
  *(v10 - 155) = -89 * v14[20] - 105;
  *(v10 - 154) = -89 * v14[21] - 105;
  *(v10 - 153) = -89 * v14[22] - 105;
  v15 = (*(a4 + 8 * (v9 + 1110)))();
  v16 = (*(&off_1002D7880 + v9 + 1083))(0, v10 - 175, v15) == 0;
  v17 = *(&off_1002D7880 + (((4 * v16) | (16 * v16)) ^ v9));
  STACK[0x378] = v12;
  return v17();
}

uint64_t sub_1000F05C8()
{
  LODWORD(STACK[0x398]) = v1;
  STACK[0x368] = v3;
  STACK[0x340] = v2;
  v5 = 5 * (v0 ^ 0x194);
  v6 = dword_100314CB0;
  STACK[0x3B0] = qword_100314AA8;
  LODWORD(STACK[0x3A8]) = (v5 + 454913035) & v6;
  v7 = (851842119 << (((v5 - 69) | 0xE0) + 33)) ^ ((v5 ^ 0x231) + 1703683354);
  v8 = (*(v4 + 8) + ((v7 - 436607624 - ((2 * v7) & 0xCBF3CAF0)) ^ 0xE5F9E578));
  v9 = *(STACK[0x3B0] + LODWORD(STACK[0x3A8]));
  v10 = *v8;
  v11 = -1063179407 * ((-1063179407 * ((v8 ^ v9) & 0x7FFFFFFF)) ^ ((-1063179407 * ((v8 ^ v9) & 0x7FFFFFFF)) >> 16));
  LODWORD(v11) = v10 != (byte_100283B50[v11 >> 24] ^ byte_100261FA0[v11 >> 24] ^ byte_100262FD0[(v11 >> 24) + 2] ^ v11 ^ (-97 * BYTE3(v11)));
  return (*(&off_1002D7880 + ((v11 | (2 * v11)) ^ v5)))(611878986);
}

uint64_t sub_1000F072C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = (v12 + (((v13 ^ 0x293) - 360 + a1) ^ (a1 + v10 - 2 * (v10 & (a1 + 142) ^ v7 & 0x10) + 127)));
  v16 = ((((v15 ^ v8) & 0x7FFFFFFF) * v6) ^ ((((v15 ^ v8) & 0x7FFFFFFF) * v6) >> 16)) * v6;
  return (*(v11 + 8 * ((1226 * ((v16 ^ *v15 ^ *(v14 + (v16 >> 24)) ^ *(v9 + (v16 >> 24) + 2) ^ *(a5 + (v16 >> 24)) ^ (BYTE3(v16) * v5)) > 47)) ^ v13)))();
}

uint64_t sub_1000F0888(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v9 ^ byte_100261FA0[a8] ^ *(v10 + a8) ^ *(v11 + v8) ^ (~(a2 - 31) * a8);
  v13 = STACK[0x378];
  return (*(&off_1002D7880 + ((((((a2 - 31) & ((a2 - 31) ^ v12) | (a2 - 31 - v12) & ~((a2 - 31) ^ v12)) >> 7) & 1) * (((a2 + 1777763196) & 0x96097DE5) + 682)) ^ ((a2 - 31) | 0x181))))();
}

uint64_t sub_1000F0920@<X0>(int a1@<W0>, uint64_t a2@<X4>, int a3@<W8>)
{
  v10 = (v7 + (((a3 ^ (a1 + 126)) + 422473495 + v8 + 806 + (~(2 * (a3 ^ (a1 + 126))) | 0xCDA311DB)) ^ 0x192E7712));
  v11 = *v10;
  v12 = ((((v10 ^ v5) & 0x7FFFFFFF) * v4) ^ ((((v10 ^ v5) & 0x7FFFFFFF) * v4) >> 16)) * v4;
  return (*(&off_1002D7880 + ((1409 * ((*(v9 + (v12 >> 24)) ^ v11 ^ *((v12 >> 24) + v6 + 2) ^ *(a2 + (v12 >> 24)) ^ v12 ^ (BYTE3(v12) * v3)) > 47)) ^ (v8 - 502))))();
}

uint64_t sub_1000F0BFC@<X0>(int a1@<W2>, uint64_t a2@<X4>, char a3@<W5>, int a4@<W8>)
{
  v14 = (v11 + (v12 ^ v9));
  v15 = ((((v14 ^ v7) & 0x7FFFFFFF) * v5) ^ ((((v14 ^ v7) & 0x7FFFFFFF) * v5) >> 16)) * v5;
  *v14 = v15 ^ (BYTE3(v15) * v4) ^ *(v13 + (v15 >> 24)) ^ *((v15 >> 24) + v8 + 2) ^ *(a2 + (v15 >> 24)) ^ 0x42 ^ (((((92 * (a4 ^ 0x4D)) ^ 0xD7) + v6) | (16 * a3 - ((32 * a3 + 32) & 0x80) - 47) ^ 0xC1) - ((2 * ((((92 * (a4 ^ 0x4D)) ^ 0xD7) + v6) | (16 * a3 - ((32 * a3 + 32) & 0x80) - 47) ^ 0xC1)) & 0x84) + 66);
  v16 = ((v9 + (v12 ^ v9) - ((2 * (v12 ^ v9) + 2) & (a1 + 884)) + 1) ^ (v9 - 3)) < 0x14;
  return (*(v10 + 8 * (a4 ^ ((16 * v16) | (v16 << 7)))))();
}

uint64_t sub_1000F0E48(uint64_t a1)
{
  STACK[0x368] = v3;
  STACK[0x340] = v2;
  v5 = (v1 + 975935864) ^ 0x3A2B9EF1;
  v6 = (*(v4 + 8) + v5);
  v7 = *v6;
  v8 = (a1 + v5);
  v9 = *(qword_100314AA8 + (dword_100314CB0 & 0x1B1D6D50));
  v10 = -1063179407 * ((-1063179407 * ((v6 ^ v9) & 0x7FFFFFFF)) ^ ((-1063179407 * ((v6 ^ v9) & 0x7FFFFFFF)) >> 16));
  v11 = -1063179407 * ((-1063179407 * ((v8 ^ v9) & 0x7FFFFFFF)) ^ ((-1063179407 * ((v8 ^ v9) & 0x7FFFFFFF)) >> 16));
  *v8 = byte_100261EA0[v10 >> 24] ^ v7 ^ byte_100261980[(v10 >> 24) + 2] ^ byte_100261020[v10 >> 24] ^ byte_100261EA0[v11 >> 24] ^ byte_100261980[(v11 >> 24) + 2] ^ byte_100261020[v11 >> 24] ^ v10 ^ v11 ^ (-53 * BYTE3(v10)) ^ (-53 * BYTE3(v11));
  return (*(&off_1002D7880 + ((204 * (((v5 + 975937265 - ((2 * v5 + 2) & 0x74573DE2) + 1) ^ 0x3A2B9EF1u) > 0x18)) ^ v1)))(1951874530);
}

uint64_t sub_1000F1020()
{
  v2 = v0 | 0x454;
  v3 = (*(&off_1002D7880 + ((v0 | 0x454) ^ 0xCBE)))();
  *(STACK[0x378] + 8) = v1;
  v4 = STACK[0x378];
  v4[4] = 767797713;
  *v4 = 65;
  return (*(&off_1002D7880 + (((*(STACK[0x350] + 1) == 1) * ((v2 ^ 0xA646BDD3) + 1505314583)) ^ (v2 - 144))))(v3);
}

uint64_t sub_1000F11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(STACK[0x350] + 2);
  STACK[0x388] = v7;
  v8 = (((v4 + v5 + 1210) ^ 0x428) & (2 * v7)) + (v7 ^ 0x7FBE967F);
  v9 = STACK[0x3A0];
  LODWORD(STACK[0x380]) = v8;
  LODWORD(v9) = v9 - v8;
  LODWORD(STACK[0x370]) = v9;
  v10 = ((v9 + 14) & ((v5 ^ (v6 + 1021)) - 1016)) + v6 - 2 * ((v9 + 14) & 7);
  return (*(a4 + 8 * ((165 * (((v10 - v5) | (v5 - v10)) >= 0)) ^ (v4 + v5 + 1066))))();
}

uint64_t sub_1000F1260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x380]) - 539001924;
  v6 = STACK[0x350] + 3;
  STACK[0x3A0] = STACK[0x420];
  LODWORD(STACK[0x4C8]) = -1405571675;
  STACK[0x3A8] = v6;
  v8 = v5 != 1604194875 && v6 == 0;
  return (*(a4 + 8 * ((63 * ((((503 * (v4 ^ 0x405)) ^ v8) & 1) == 0)) ^ v4)))();
}

uint64_t sub_1000F12F4@<X0>(int a1@<W8>)
{
  v4 = &STACK[0x550] + STACK[0x3A0];
  STACK[0x360] = v3 ^ 0xDEF0E60159B7783DLL;
  v5 = &v4[v3 ^ 0xDEF0E60159B7783DLL];
  STACK[0x390] = v5 + 255;
  STACK[0x330] = v5 + 510;
  STACK[0x398] = v5;
  STACK[0x348] = v5 + 528;
  STACK[0x3B0] = (v2 + a1 + 1758379953);
  return (*(&off_1002D7880 + (((((v1 + 1542183945) ^ 0x5BEBDB8Cu) + 1949670352 < (a1 + 1181873811)) * ((v1 + 1542183945) & 0xA414214F ^ 0x15E)) ^ (v1 - 391))))(&unk_100263AF0, qword_100314AA8, (v1 + 454912354) & dword_100314CB0, 2752782671, 1807792381);
}

uint64_t sub_1000F1428(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = v10 ^ (2 * v11);
  v18 = (v12 + a7 + v7);
  v19 = *v18;
  LODWORD(v18) = ((*(a2 + a3) ^ v18) & 0x7FFFFFFF) * v9;
  v20 = (v18 ^ (v18 >> 16)) * v9;
  v21 = byte_100261EA0[v20 >> 24] ^ v19 ^ byte_100261980[(v20 >> 24) + 2] ^ byte_100261020[v20 >> 24] ^ v20 ^ ((v20 >> 24) * (v17 - 35));
  *(STACK[0x398] + a7 + v7) = (v21 - ((2 * v21) & 0x1A) - 115) ^ *(a1 + a7 + v7) ^ v15;
  return (*(&off_1002D7880 + (((a7 + ((v17 - 972) | v13) + 62 * (v17 ^ v14) - 800 == v8 + 255) * v16) ^ v17)))();
}

void sub_1000F164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x420] = STACK[0x3A0];
  v4 = STACK[0x378];
  sub_1001194DC(a1, a2, a3, a4);
}

uint64_t sub_1000F1660@<X0>(int a1@<W8>)
{
  v2 = a1 + LODWORD(STACK[0x380]) + 722919044;
  v3 = &STACK[0x550] + STACK[0x3A0] - 0x210F19FEA6488315;
  STACK[0x420] = STACK[0x3A0] + 1088;
  (*(&off_1002D7880 + (v1 ^ 0x8CA)))(&unk_10025C490, v3 + 959, 64);
  v4 = *(&off_1002D7880 + v1 + 1974);
  STACK[0x3B0] = (v3 + 1023);
  v5 = v4(&unk_1002832C0, v3 + 1023, 64);
  return (*(&off_1002D7880 + ((125 * (v2 + 661053765 < ((v1 + 978) ^ 0x4A7 ^ ((v1 - 185) | 0xD2u)))) ^ v1)))(v5);
}

uint64_t sub_1000F1740()
{
  LODWORD(STACK[0x4C8]) = -1405571766;
  *(v2 + 640) = *(STACK[0x398] + 0 % (v0 + (v1 ^ 0xE0u)));
  return (*(&off_1002D7880 + v1))();
}

uint64_t sub_1000F17E4@<X0>(int a1@<W8>)
{
  v5 = (39651 * (v3 + 14526 + ((v4 - 1096) | 0x188))) >> 16;
  v6 = *(v1 + (v3 + a1 + 142) % 0x13Fu);
  v7 = (v3 + 14526 + ((v4 - 1096) | 0x188) - 319 * ((v5 + (((v3 + 14526 + ((v4 - 1096) | 0x188) - v5) & 0xFFFE) >> 1)) >> 8));
  HIDWORD(v8) = v6 ^ 0xC;
  LODWORD(v8) = (v6 ^ 0x40) << 24;
  v9 = *(v1 + (v3 + a1 + 98) % 0x13Fu);
  v10 = (v8 >> 29) - ((2 * (v8 >> 29)) & 0xFFFFFF92);
  HIDWORD(v8) = v9 ^ 4;
  LODWORD(v8) = (v9 ^ 0x48) << 24;
  v11 = ((v8 >> 27) ^ 0x6B) + ((2 * (v8 >> 27)) & 0xFFFFFFD6) + (*(v1 + v7) ^ (v10 - 55) ^ 0xFFFFFF85) - 107;
  HIDWORD(v8) = *(v1 + (v3 + a1) % 0x13Fu);
  LODWORD(v8) = (HIDWORD(v8) ^ 0x4C) << 24;
  v12 = ((v8 >> 25) ^ 0x34) - ((2 * (v8 >> 25)) & 0xFFFFFF96) + (v11 ^ 0x56) + ((2 * v11) & 0xFFFFFFAC) + 1;
  v13 = *(&off_1002D7880 + ((294 * (v3 + 1 == v2 + 1276)) ^ v4));
  *(v1 + v7) = v12 - ((2 * v12 - 22) & 0x99) - 63;
  return v13();
}

uint64_t sub_1000F1954(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, char a6)
{
  LODWORD(STACK[0x380]) = 0;
  v12 = v8[109] ^ v7;
  LODWORD(STACK[0x2D8]) = v6 + 1150;
  v13 = v12 - ((v12 << ((v6 + 126) ^ 0x2B)) & (((v6 + 1489260630) | 0x5082D88) - 1573682574)) + 1987235838;
  v14 = (v8[21] ^ v7) - ((2 * (v8[21] ^ v7)) & 0x54) + 1690062634;
  v15 = ((v14 ^ 0x64BC4F2A | v13 ^ 0x7672CFFE) - ((2 * (v14 ^ 0x64BC4F2A | v13 ^ 0x7672CFFE)) & 0x1A) + 77) & 0x73 ^ 0x41 | (((v14 ^ 0x64304F2A) & (v13 ^ 0x2CFFE)) - ((2 * ((v14 ^ 0x64304F2A) & (v13 ^ 0x2CFFE))) & 0x7AAFD5A6) + 1029171923) ^ 0x3D57EAD3;
  v16 = (v15 ^ 0x7766DDEF) - 2003230191 + ((2 * v15) & 0x6ECDBBDE);
  v17 = (((v16 * v16) ^ 0x73F9ABED) - 1945742317 + ((2 * v16 * v16) & 0xE7F357DA)) * v16;
  v18 = ((2 * v17) & 0xFB9BEB0A) + (v17 ^ 0x7DCDF585);
  LODWORD(STACK[0x338]) = v18;
  v19 = 28 - v18 - ((10 - 2 * v18) & 0xEE);
  LOBYTE(v17) = (*(v11 + (v8[40] & 0x3F ^ 0xCLL)) & 0x75 | v8[352] & 0x8A) ^ 8;
  v20 = v8[355];
  v21 = STACK[0x3B0];
  v22 = (*(STACK[0x3B0] + (v8[52] & 0x3F ^ 0xCLL)) ^ 8) & (v20 ^ 8);
  v23 = (v22 - ((2 * v22) & 0x3C) - 98) ^ 0x9E | v20 & 0xB8 ^ 0xB0;
  LOBYTE(v17) = (v17 - (v9 & (2 * v17)) + 75) ^ 0x4B;
  v24 = (v23 + (~(2 * v23) | 0xEB) - 117) ^ 0x8A;
  v25 = ((v24 | v17) - ((2 * (v24 | v17)) & 0x18) + 12) & 0x2B;
  LOBYTE(v17) = (v24 & v17) - ((2 * (v24 & v17)) & 0x18) - 116;
  LOBYTE(v17) = (v8[94] ^ v7) - (((v25 ^ 8 | v17 ^ 0x8C) - ((2 * (v25 ^ 8 | v17 ^ 0x8C)) & 4) - 126) ^ 0x82);
  v8[94] = v17 - ((2 * v17) & 0x99) + 76;
  v26 = (((2 * (v8[139] & 0x36)) ^ 0xF6) + ((byte_10025CCD0[v8[85] & 0x3F ^ 0xCLL] & 0x40 | v8[139] & 0x36) ^ 0x44) - 72) & 0xF7 ^ 0xBE;
  v8[64] ^= 0xB2 ^ (v26 - ((2 * v26) & 0x64) - 78);
  v27 = (v8[366] ^ 8) * (v8[366] ^ 8);
  LODWORD(STACK[0x328]) = (v8[343] ^ 8) - 45 * (((2 * v27) & 0xFFFFFFDF) + (v27 ^ 0x6F));
  v28 = *(v11 + (v8[157] & 0x3F ^ 0xCLL)) ^ 8;
  LODWORD(STACK[0x320]) = 13 - v28 - ((58 - 2 * v28) & 0x20);
  v29 = v8[125] & 0xC9 ^ 0x4A;
  LODWORD(STACK[0x318]) = v29 - 2 * (v29 & 3);
  v30 = *(v11 + (v8[104] & 0x3F ^ 0xCLL)) ^ 8;
  v31 = ((((v8[387] & 0x3E ^ 0x36 | v8[387] & 0xA1) - 2 * ((v8[387] & 0x3E ^ 0x36) & 7 | v8[387] & 1) + 15) ^ 7) - 8) & ((v30 * v30 - ((2 * v30 * v30) & 0xFFFFFFEF) + 119) ^ 0x77);
  v8[327] = -12;
  v32 = (v8[175] ^ v7) - (v8[52] ^ v7);
  v8[175] = v32 - ((2 * v32) & 0x99) + 76;
  v33 = 205 * (*(v21 + (v8[44] & 0x3F ^ 0xCLL)) ^ 8);
  LODWORD(STACK[0x310]) = (v33 >> 10) - ((v33 >> 9) & 0x40);
  v8[100] = (v8[100] ^ v7) - ((2 * (v8[100] ^ v7) - 6) & 0x99) + 73;
  LOBYTE(v33) = (v8[386] ^ 8) + (*(v11 + (v8[17] & 0x3F ^ 0xCLL)) ^ 8);
  v8[386] = v33 - ((2 * v33) & 0x10) + 8;
  v34 = (v8[101] ^ v7) + ((((((2 * (v8[415] & 0x8C)) ^ 0xEF) + ((v8[415] & 0x8C | byte_10025CCD0[v8[57] & 0x3F ^ 0xCLL] & 0x73) ^ 0x78) - 115) ^ 0x8Cu) / 3) ^ 0xFFFFFF81) - (((171 * ((((2 * (v8[415] & 0x8C)) ^ 0xEF) + ((v8[415] & 0x8C | byte_10025CCD0[v8[57] & 0x3F ^ 0xCLL] & 0x73) ^ 0x78) - 115) ^ 0x8Cu)) >> 8) & 0xFC) + 127;
  v35 = byte_10025CCD0[v8[217] & 0x3F ^ 0xCLL];
  v8[101] = v34 + (~(2 * v34) | 0x67) + 77;
  v36 = (((v35 & 0x75 ^ 0xFFFFFFFA) + ((2 * ((v35 & 0x75 ^ 0xFFFFFFFA) & 0x35 ^ (v35 | 0x7B))) ^ 0x1D) - 68) ^ 0xFFFFFFBB) & (v8[398] ^ 8);
  v37 = (v36 - ((2 * v36) & 0xFFFFFFA0) + 80) | v35 & 0x8A;
  v38 = ((v37 ^ 0x50) - ((2 * v37) & 0x4E) - 89) ^ 0xFFFFFFA7 | (v8[7] >> 1) ^ 0x26;
  LOBYTE(v38) = (v8[249] ^ v7) - ((v38 - ((2 * v38) & 0x1C) - 114) ^ 0x8E);
  v8[249] = v38 - ((2 * v38) & 0x99) + 76;
  v8[30] ^= 0x58u;
  LOBYTE(v38) = *(v11 + (v8[241] & 0x3F ^ 0xCLL)) & 0xFC | *v21 & 3;
  LOBYTE(v38) = (v38 ^ 0x53) + ((2 * v38) & 0xB6 ^ 0x10) - 91;
  LOBYTE(v38) = (((v38 * v38) ^ 0x7B) + ((2 * v38 * v38) & 0xF7) - 123) * v38;
  v8[215] = v38 - ((2 * v38) & 0x99) + 76;
  v8[446] = *(v11 + (v19 & 0x3F ^ 0x17));
  v39 = *(v11 + (v8[13] & 0x3F ^ 0xCLL));
  v40 = ((v39 & 0x2C ^ 0x8B) + ((2 * (v39 & 0x2C ^ (~v39 | 0x77))) ^ 3) - 74) ^ 0xB5;
  LOBYTE(v38) = (v8[146] ^ 0xB3) + 2 * (v8[146] ^ v7) + 1;
  LOBYTE(v38) = (((v38 * v38) ^ 0x77) - 119 + ((2 * v38 * v38) & 0xEE)) * v38;
  LOBYTE(v35) = v38 ^ 0xE9;
  v41 = (v40 - ((2 * v40) & 0x1A) + 1223236877) ^ 0x48E91D0D;
  LOBYTE(v38) = ((2 * v38) & 0xD2) + (v38 ^ 0xE9);
  LOBYTE(v33) = (v41 << ((v38 - 1) & 7)) + (~(2 * (v41 << ((v38 - 1) & 7))) | 0xBF);
  v42 = v41 >> ((2 - v38 - ((2 - 2 * v35) & 2)) & 7 ^ 1);
  v8[381] = (v42 - ((2 * v42) & 0xAC) + 86) ^ (v33 - 95) ^ 0xFE;
  v43 = (v8[131] ^ v7) - ((2 * (v8[131] ^ v7)) & 0xA0) - 1330498480;
  v44 = (v8[393] ^ 8) - ((2 * v8[393]) & 0x104) + 348637826;
  v45 = (((v44 ^ 0x14C7CA82 | v43 ^ 0xB0B23450) - (v10 & (2 * (v44 ^ 0x14C7CA82 | v43 ^ 0xB0B23450))) + 26) ^ 0x1A) & (v8[400] ^ 8);
  v46 = (v45 - ((2 * v45) & 0x44444444) - 128651998) ^ 0xF854ED22 | (((v44 ^ 0x10820282) & (v43 ^ 0x450)) - ((2 * ((v44 ^ 0x10820282) & (v43 ^ 0x450))) & 0x121EBADA) + 1225743725) ^ 0x490F5D6D;
  LOBYTE(v45) = *(v21 + (v8[220] & 0x3F ^ 0xCLL)) & 3 | 4;
  v47 = (v46 - ((2 * v46) & 0x16ABAAF6) - 1957309061) ^ 0x8B55D57B;
  v48 = (((v47 >> ((v45 ^ 0xEF) + 2 * v45 + 17)) - ((2 * (v47 >> ((v45 ^ 0xEF) + 2 * v45 + 17))) & 0xC8) + 228) ^ ((v47 << (-9 - ((v45 ^ 0xEF) + 2 * v45))) - ((2 * (v47 << (-9 - ((v45 ^ 0xEF) + 2 * v45)))) & 0xC0) + 96) ^ 0xFFFFFF84) + (v8[330] ^ 8);
  v8[330] = v48 + (~(2 * v48) | 0xEF) + 9;
  v49 = (v8[10] >> 1) ^ 0x26;
  LOBYTE(v44) = (*(v21 + (v8[27] & 0x3F ^ 0xCLL)) ^ 0x74) - 124 + ((2 * (*(v21 + (v8[27] & 0x3F ^ 0xCLL)) ^ 8)) & 0xF8);
  LOBYTE(v44) = v44 * v44;
  LOBYTE(v33) = v44 ^ 0xB3;
  v50 = (v49 - ((2 * v49) & 0x96) - 811507125) ^ 0xCFA1624B;
  LOBYTE(v44) = ((2 * v44) & 0x66) + (v44 ^ 0xB3);
  v51 = (v50 >> ((v44 + 5) & 7)) - ((2 * (v50 >> ((v44 + 5) & 7))) & 0xEC);
  v52 = v50 << ((4 - v44 - ((2 - 2 * v33) & 2)) & 7 ^ 1);
  LOBYTE(v52) = (v8[67] ^ v7) - ((v52 - ((2 * v52) & 0x8C) - 58) ^ (v51 + 118) ^ 0xB0);
  v8[67] = v52 - ((2 * v52) & 0x99) + 76;
  LOBYTE(v51) = v8[195];
  LOBYTE(v52) = (v51 ^ v7) - (byte_10025CCD0[v8[136] & 0x3F ^ 0xCLL] & a5 ^ 0xCE);
  v8[195] = v52 - 2 * (v52 & 0x4D ^ v51 & 1) + 76;
  v53 = 171 * (byte_10025CCD0[v8[56] & 0x3F ^ 0xCLL] ^ 0x96);
  LOBYTE(v51) = *(v11 + (v8[196] & 0x3F ^ 0xCLL)) ^ 8;
  LOBYTE(v44) = *(v21 + (v8[21] & 0x3F ^ 0xCLL)) ^ 8;
  LOBYTE(v33) = ((v44 | v51) + (~(2 * (v44 | v51)) | 0x6D) + 10) & 0x49;
  LOBYTE(v51) = v44 & v51;
  LOBYTE(v44) = v33 ^ 9 | (v51 - ((2 * v51) & 0x90) + 72) ^ a6;
  LOBYTE(v51) = (*(v21 + (v8[127] & 0x3F ^ 0xCLL)) ^ 8) - ((v44 - 2 * (v44 & 0xF ^ v51 & 6) - 119) ^ 0x89);
  LOBYTE(v51) = (v8[423] ^ 8) + (v51 ^ 0xFA) + ((2 * v51) & 0xF4) + 6;
  v8[423] = v51 - ((2 * v51) & 0x10) + 8;
  LOBYTE(v51) = ((115 - (*(v21 + (v8[65] & 0x3F ^ 0xCLL)) & 2)) ^ 0x7B) & (v8[140] ^ v7);
  v54 = *(v11 + (v8[182] & 0x3F ^ 0xCLL));
  v8[369] = v51 - ((2 * v51) & 0x10) + 8;
  v55 = ((v8[134] & 0x89 ^ 0x7C) - ((2 * (v8[134] & 0x89 ^ 0x7C)) & 0x38) - 100) ^ 0x9C;
  v8[321] = v55 / 5u - (((205 * v55) >> 9) & 0x10) + 8;
  v56 = 171 * (v8[339] ^ 8);
  v57 = *(v11 + (v8[39] & 0x3F ^ 0xCLL)) ^ 8;
  v58 = ((v57 - ((2 * v57 + 4) & 0x1E) + 33) & 0x32 | ((v56 >> 9) - ((v56 >> 8) & 0x74) + 58) & 0x4D) ^ 0x2A;
  LOBYTE(v58) = ((v58 - (v10 & (2 * v58)) - 102) ^ 0x9A) + (v8[330] ^ 8);
  v8[330] = v58 - ((2 * v58) & 0x10) + 8;
  LOBYTE(v33) = ~(v8[322] & 7) + 2 * (v8[322] & 7) + 1;
  LOBYTE(v57) = (5 - (~(v8[322] & 7) + 2 * (v8[322] & 7)) - ((6 - 2 * (~(v8[322] & 7) + 2 * (v8[322] & 7))) & 4)) & 7 ^ 6;
  v59 = ((0x37u >> v57) - ((0x6Eu >> v57) & 6) - 1692539837) ^ ((55 << v33) - ((110 << v33) & 0x2D0FAC4) - 2123858590);
  v60 = (((v59 & 0xFFFFFFD2 ^ 0x1A75992D) - ((2 * (v59 & 0xFFFFFFD2 ^ 0x1A75992D)) & 0x13E) + 671) ^ 0x29F) & (((v8[401] ^ 8) - ((2 * (v8[401] ^ 8)) & 0x15E) - 2128595281) ^ 0x812036AF);
  v61 = (v60 - ((2 * v60) & 0x46EC8218) + 594952460) ^ 0x2376410C | (((0x37u >> v57) - ((0x6Eu >> v57) & 6) + 67) ^ ((55 << v33) - ((110 << v33) & 0xC4) + 98)) & 0x2D ^ 0x21;
  v62 = ((v61 - ((2 * v61) & 0x38) + 28) ^ 0x1C) + ((((v31 - 4 * (v31 >> 1) - 122) ^ 3) - 8) ^ 0x36);
  LODWORD(STACK[0x304]) = v62 ^ 0xFFFFFFD5;
  LODWORD(STACK[0x2F8]) = (2 * v62) & 0xFFFFFFAA;
  LOBYTE(v62) = (v8[237] ^ v7) + (byte_10025CCD0[v8[201] & 0x3F ^ 0xCLL] ^ 0x8F);
  v8[237] = v62 + (~(2 * v62) | 0x67) + 77;
  v63 = *(v21 + (v8[120] & 0x3F ^ 0xCLL));
  v64 = (v8[400] ^ 8) - 1788880361 + (~(2 * v8[400]) | 0xFFFFFFD1) + 1;
  v65 = (v63 ^ 8) - ((2 * v63) & 0x1AA) - 1631159851;
  v66 = (((v65 ^ 0x9EC679D5 | v64 ^ 0x955FDA17) - ((2 * (v65 ^ 0x9EC679D5 | v64 ^ 0x955FDA17)) & 0x1FC) + 254) ^ 0xFE) & (((v8[392] ^ 8) - ((2 * v8[392]) & 0x64) - 1884405198) ^ 0x8FAE4232);
  v67 = (v66 - ((2 * v66) & 0x67667EB0) + 867385176) ^ 0x33B33F58 | (((v65 ^ 0x944641D5) & (v64 ^ 0x1A17)) - ((2 * ((v65 ^ 0x944641D5) & (v64 ^ 0x1A17))) & 0x283C813C) - 702660450) ^ 0xD61E409E;
  v68 = ((v8[436] ^ 8) - ((2 * (v8[436] ^ 8)) & 0x130) + 736610968) ^ 0x2BE7CA98;
  v69 = v67 - ((2 * v67) & 0x4CF00BD6) - 1502083605;
  v70 = ((v69 ^ 0xA67805EB | v68) - ((2 * (v69 ^ 0xA67805EB | v68)) & 0xFFFFFFE7) + 115) & 0x4F ^ 0x43 | (((v69 ^ 0x1EB) & v68) - ((2 * ((v69 ^ 0x1EB) & v68)) & 0x64C3C112) + 1919017097) ^ 0x7261E089;
  LODWORD(STACK[0x2E8]) = v70 - ((2 * v70) & 0xB8);
  STACK[0x358] = (((v54 ^ 8) + 13) ^ 0xFFFFFFEB) + (a3 & (2 * ((v54 ^ 8) + 13))) + 21;
  v71 = v8[327];
  v72 = ((*(v11 + (((((v54 ^ 8) + 13) ^ 0xEB) + (a3 & (2 * ((v54 ^ 8) + 13))) + 21) & 0x3F)) >> 1) ^ 4) & (v71 ^ 8);
  LOBYTE(v71) = (((v8[208] ^ v7) - ((2 * (v8[208] ^ v7) + 22) & 0x26) - 66) ^ 0x93) & (v71 ^ 0xF7);
  LOBYTE(v72) = (v71 + (~(2 * v71) | 0x11) - 8) ^ 0xF7 | (v72 + (~(2 * v72) | 0x1B) - 13) ^ 0xF2;
  LOBYTE(v72) = ((v72 + (~(2 * v72) | 0xCB) - 101) ^ 0x9A) + (v8[335] ^ 8);
  v8[335] = v72 - ((2 * v72) & 0x10) + 8;
  LOBYTE(v72) = *(v21 + (v8[162] & 0x3F ^ 0xCLL));
  LOBYTE(v72) = (((v72 | 0x7E) & (v8[323] ^ 8)) - 2 * ((v72 | 0x7E) & (v8[323] ^ 8) & 0x4F ^ v8[323] & 2) + 77) ^ 0x4D | v72 & 0x7E ^ 8;
  v8[394] ^= (((v72 + (~(2 * v72) | 0xB7) - 91) & 0xFE) >> 1) ^ 0x52;
  LOBYTE(v72) = *(v11 + (v8[65] & 0x3F ^ 0xCLL)) ^ 8;
  v8[356] ^= 0x7D ^ (v72 - ((2 * v72 + 98) & 0xA6) - 124);
  LOBYTE(v72) = (v8[436] ^ 8) - (v8[103] ^ v7);
  v8[436] = v72 - ((2 * v72) & 0x10) + 8;
  LOBYTE(v72) = *(v21 + (v8[173] & 0x3F ^ 0xCLL));
  LOBYTE(v72) = (v8[227] ^ v7) - ((((2 * v72) ^ 0x10) + (~(4 * v72) | 0x2F) - 22) ^ 0xE9);
  v8[227] = v72 - ((2 * v72) & 0x99) + 76;
  v73 = (v53 >> 9) - ((v53 >> 8) & 0x60) - 80;
  LODWORD(STACK[0x2F4]) = v73;
  *v21 ^= *(v21 + (v73 & 0x3F ^ 0x30)) ^ 8;
  LOBYTE(v53) = (v8[26] ^ v7) * (v8[26] ^ v7);
  LOBYTE(v53) = (v8[350] ^ 8) + (v53 ^ 0xC8) - ((2 * v53) & 0x6E) + 56;
  v8[350] = v53 - ((2 * v53) & 0x10) + 8;
  v74 = *(v11 + (v8[136] & 0x3F ^ 0xCLL)) ^ 8;
  v75 = (v8[385] ^ 8) - ((2 * (v8[385] ^ 8)) & 0xFA) + 1835458685;
  v76 = v74 - ((2 * v74) & 0x9A) + 2123314253;
  v77 = (((v76 ^ 0x7E8F344D | v75 ^ 0x6D66E07D) - ((2 * (v76 ^ 0x7E8F344D | v75 ^ 0x6D66E07D)) & 0x4AE) + 599) ^ 0x257) & (((v8[378] ^ 8) - ((2 * (v8[378] ^ 8)) & 0xF8) + 1929581948) ^ 0x7303157C);
  v78 = (v77 - ((2 * v77) & 0x1D8EA118) + 1321685132) ^ 0x4EC7508C | (((v76 ^ 0x6C06344D) & (v75 ^ 0x7D)) - ((2 * ((v76 ^ 0x6C06344D) & (v75 ^ 0x7D))) & 0x1838AD2) - 188627607) ^ 0xF4C1C569;
  v79 = v78 - ((2 * v78) & 0xBADF760) + 1171717040;
  v80 = (((v79 & 0xFFFFFFC2 ^ 0x45D6FBBD) - ((2 * (v79 & 0xFFFFFFC2 ^ 0x45D6FBBD)) & 0x1FC) + 254) ^ 0xFE) & ((((v8[374] >> 1) ^ 4) - (v8[374] & 0xE0) + 1278916464) ^ 0x4C3AB770);
  LOBYTE(v79) = (v80 - ((2 * v80) & 0x10) - 120) ^ 0x88 | v79 & 0xBD ^ 0xB0;
  v8[358] = (v79 - ((2 * v79) & 0x9A) + 77) ^ 0x45;
  v81 = (v8[422] ^ 8) - ((2 * (v8[422] ^ 8)) & 0x13A) - 1306045795;
  v82 = v81 & 0x8A;
  v83 = (((v8[92] ^ v7) - ((2 * (v8[92] ^ v7)) & 0xD6) - 442162069) ^ 0xA025246B) & (v81 ^ 0x2D62);
  v84 = (v83 - ((2 * v83) & 0x425F3922) - 516973423) ^ 0xE12F9C91 | v82 ^ 0x88;
  v85 = 205 * (v8[155] ^ v7);
  v86 = (v85 >> 10) - ((v85 >> 9) & 4) + 6;
  LOBYTE(v86) = ((2 * (v86 ^ 4)) & 0xA) + (v86 & 7 ^ 0x63);
  v87 = (v84 - ((2 * v84) & 0x5382A126) - 373206893) ^ 0xE9C15093;
  v88 = (v8[395] ^ 8) - (((v87 << (v86 - 101)) - ((2 * (v87 << (v86 - 101))) & 0x7C) + 190) ^ ((v87 >> ((5 - v86) & 7)) - ((2 * (v87 >> ((5 - v86) & 7))) & 0x10) + 136) ^ 0x36);
  v8[395] = v88 + (~(2 * v88) | 0xEF) + 9;
  v8[345] ^= 0xFDu;
  v8[343] = LOBYTE(STACK[0x328]) - 125 + (~(2 * (LOBYTE(STACK[0x328]) - 125)) | 0xEF) + 9;
  v89 = (v8[69] & a5) ^ 0x4E;
  v90 = ((v89 - ((2 * v89) & 0x18) + 13) ^ 0xD) * (*(v11 + (v8[116] & 0x3F ^ 0xCLL)) ^ 0xFFFFFFF7);
  LOBYTE(v89) = *(v21 + (v8[85] & 0x3F ^ 0xCLL));
  v8[96] = (((2 * v89) ^ 0x10) - ((4 * v89) & 0x88) - 60) ^ 0x77;
  v91 = ((v8[39] >> 1) & 0x6C ^ 0x24) + 102;
  v92 = (v91 ^ 0x37) + ((2 * v91) & 0x6C) - 55;
  LODWORD(STACK[0x2F0]) = v92;
  v93 = (v92 & 0xFE) - ((2 * v92) & 0xAC) + 822214743;
  LOBYTE(v92) = (*(v11 + (v93 & 0x3E ^ 0x16)) ^ 8) & (byte_10025CCD0[v8[33] & 0x3F ^ 0xCLL] ^ 0x70);
  v8[373] ^= 0x4B ^ (v92 - ((2 * v92) & 0x96) + 75);
  v94 = v8[239] & 0x3F ^ 0xCLL;
  v95 = *(v21 + v94) ^ 8 | v8[148] ^ v7;
  v96 = (v95 + (~(2 * v95) | 0xFFFFFFF9) - 124) & 0xFFFFFFC6 | *(v21 + (v8[105] & 0x3F ^ 0xCLL)) & 0x18;
  v97 = (v96 ^ 0xFFFFFF8A) - ((2 * v96) & 0xFFFFFFE3);
  LOBYTE(v76) = v8[354];
  LOBYTE(v96) = (v8[221] ^ v7) & (v76 ^ 8);
  LOBYTE(v76) = (v8[339] ^ 8) & (v76 ^ 0xF7);
  LOBYTE(v96) = (v76 - (a3 & (2 * v76)) - 21) ^ 0xEB | (v96 + (~(2 * v96) | 0xE9) - 116) ^ 0x8B;
  v8[441] = (v96 - ((2 * v96) & 0xCC) + 102) & 0x7F ^ 0x6E;
  v98 = 205 * (*(v11 + (v8[171] & 0x3F ^ 0xCLL)) ^ 8);
  v99 = (v8[24] ^ v7) + ((v98 >> 10) ^ 0xFFFFFFEC) + ((v98 >> 9) & 0x58) + 20;
  v8[44] ^= 0x51 ^ (v99 - ((2 * v99) & 0xA2) + 81);
  LOBYTE(v99) = v8[329];
  v100 = (v8[137] >> 1) & 0x24 | v99 & 0x53;
  v8[423] ^= 0x76 ^ ((v100 ^ 0x24) + ((2 * (v100 ^ (v99 | 0x7E))) ^ 0x4B) + 119);
  v8[344] ^= 0x89 ^ (3 * (((v8[67] & 0xD0 ^ 0x6F) + 126) ^ 0x82) + 119);
  v8[370] = -67;
  LOBYTE(v100) = *(v11 + (v8[37] & 0x3F ^ 0xCLL));
  v8[419] ^= 0xBDu;
  LOBYTE(v99) = v100 & 0x5E | v8[400] & 0xA1;
  LOBYTE(v99) = (((v99 ^ 8) + ((2 * v99) & 0xF8 ^ 0xEF) - 3) ^ 0xF2) + (v8[188] ^ v7);
  v101 = v99 - ((2 * v99) & 0x98);
  LODWORD(STACK[0x308]) = byte_10025CCD0[v94];
  LOBYTE(v100) = v8[61] ^ v7;
  LOBYTE(v99) = byte_10025CCD0[v8[193] & 0x3F ^ 0xCLL] ^ 0x70;
  v102 = (((v99 | v100) - (v9 & (2 * (v99 | v100))) - 53) ^ 0xCB) & (v8[403] ^ 8);
  v103 = (v102 - 2 * (v102 & 0x3F) + 63) ^ 0x3F | ((v99 & v100) - ((2 * (v99 & v100)) & 0x3A) + 29) ^ 0x1D;
  v104 = ((v103 - ((2 * v103) & 0xA) + 13) ^ 0xFA) + (v8[357] ^ 8);
  v8[357] = v104 - ((2 * v104 + 18) & 0x10) + 17;
  v105 = *(v11 + (v8[159] & 0x3F ^ 0xCLL)) ^ 8;
  LODWORD(STACK[0x328]) = v97 - 15;
  v106 = ((v105 & ((v97 - 15) ^ 0xE)) - ((2 * (v105 & ((v97 - 15) ^ 0xE))) & 0xB4) + 90) & 0x9D ^ 0x3A;
  v8[371] ^= (v106 - ((2 * v106) & 0x2A) + 85) ^ 0x55;
  LOBYTE(v99) = (v8[116] ^ v7) - ((2 * (v8[116] ^ v7)) & 0xD8) - 20;
  LOBYTE(v100) = (v8[416] ^ 8) - ((2 * v8[416]) & 0x68) - 76;
  v107 = (((v100 ^ 0xB4 | v99 ^ 0xEC) - ((2 * (v100 ^ 0xB4 | v99 ^ 0xEC)) & 0x8E) - 57) ^ 0xC7) & (((v8[349] ^ 8) - ((2 * (v8[349] ^ 8)) & 0x70) - 72) ^ 0xB8);
  v108 = (v107 - ((2 * v107) & 0x72) - 71) ^ 0xB9 | (((v100 ^ 0xB4) & (v99 ^ 0xEC)) - ((2 * ((v100 ^ 0xB4) & (v99 ^ 0xEC))) & 0x62) + 49) ^ 0x31;
  v109 = (v93 >> 1) ^ 0x1881002B;
  v110 = v108 - ((2 * v108) & 0x6E) - 73;
  LOBYTE(v109) = (((((v110 ^ 0xB7 | v109) - ((2 * (v110 ^ 0xB7 | v109)) & 0x22) - 111) ^ 0x91) & (v8[321] ^ 8)) - ((2 * ((((v110 ^ 0xB7 | v109) - ((2 * (v110 ^ 0xB7 | v109)) & 0x22) - 111) ^ 0x91) & (v8[321] ^ 8))) & 0x36) - 101) ^ 0x9B | (((v110 ^ 0xB7) & v109) - ((2 * ((v110 ^ 0xB7) & v109)) & 0x5A) - 83) ^ 0xAD;
  v8[347] = (v109 - 2 * (v109 & 0x1F) - 97) ^ 0x97;
  v8[188] = v101 + 76;
  v111 = *(v21 + ((v101 + 76) & 0x3F ^ 0xCLL));
  v112 = (v8[381] ^ 8) + 121 + (~(2 * (v8[381] ^ 8)) | 0xD);
  v113 = (v8[4] & 7 ^ 0x43) + 2 * (v8[4] & 7 ^ 4);
  v114 = ((v8[430] ^ 8) - ((2 * (v8[430] ^ 8)) & 0x77777777) - 959304773) ^ 0xC6D22BBB;
  v115 = (v114 << (v113 - 71)) - ((2 * (v114 << (v113 - 71))) & 0xE420491E) - 233823089;
  v116 = (v114 >> (~v113 & 7)) - ((2 * (v114 >> (~v113 & 7))) & 0xFBDDE66) - 941691085;
  v117 = (v8[415] ^ 8) - ((2 * v8[415]) & 0x68);
  v8[151] = v7;
  LOBYTE(v21) = *(v21 + (v8[41] & 0x3F ^ 0xCLL));
  v118 = (v8[247] ^ v7) - ((2 * v8[247]) & 0x22) - 111;
  LOBYTE(v21) = (v21 ^ 8) - 2 * (v21 & 7) + 7;
  v119 = (((v21 ^ 7 | v118 ^ 0x91) - ((2 * (v21 ^ 7 | v118 ^ 0x91)) & 0x82) - 63) ^ 0xC1) & ((v117 + 52) ^ 0x34);
  v120 = (v119 - ((2 * v119) & 0x48) + 36) ^ 0x24 | (((v21 ^ 7) & (v118 ^ 0x91)) - ((2 * ((v21 ^ 7) & (v118 ^ 0x91))) & 0xBE) + 95) ^ 0x5F;
  LOBYTE(v21) = v115 ^ v116 ^ 0xBC;
  v121 = (v120 - ((2 * v120) & 0xC6) + 99) ^ 0x63;
  LOBYTE(v116) = ((v121 | v21) + 18 + (~(2 * (v121 | v21)) | 0xDD)) ^ 0x11;
  v122 = ((v116 & ((v112 + 1) ^ 0x79)) - ((2 * (v116 & ((v112 + 1) ^ 0x79))) & 0x8A) - 59) ^ 0xC5 | ((v121 & v21) - ((2 * (v121 & v21)) & 0x94) + 74) ^ 0x4A;
  v123 = ((v122 - ((2 * v122) & 0x26) - 109) ^ 0x93) + (v8[354] ^ 8);
  v8[354] = v123 + (~(2 * v123) | 0xEF) + 9;
  v124 = (v8[442] ^ 8) - ((2 * v8[442]) & 0xAA) - 43;
  LOBYTE(v109) = (((v8[372] ^ 8) - ((2 * v8[372]) & 0xE8) - 12) ^ 0xF4) & (v124 ^ 0x2A);
  v125 = (v109 - ((2 * v109) & 6) + 3) ^ 3 | v124 & 0x23 ^ 1;
  v126 = (v125 ^ 0x97) + 105 + ((2 * v125) & 0x2E);
  v8[339] = (v126 * v126 - ((2 * v126 * v126) & 0xE7) + 115) ^ 0x7B;
  v127 = (v8[322] ^ 8) - (((v8[444] & 0x25) - 2 * ((v8[444] & 5 | 0x72) ^ (v8[444] | 0x7A)) + 98) ^ 0x58);
  v128 = (v8[361] ^ 8) + (v127 ^ 0x2E) + ((2 * v127) & 0x5C) - 46;
  v8[361] = v128 - ((2 * v128) & 0x10) + 8;
  v129 = LODWORD(STACK[0x4C8]) == -1405571750;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x318]) - 73;
  v130 = (LODWORD(STACK[0x310]) + 32);
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x2E8]) + 103;
  return (*(&off_1002D7880 + ((109 * v129) ^ v6)))();
}

uint64_t sub_1000F38C0@<X0>(char a1@<W2>, int a2@<W3>, char a3@<W8>)
{
  v10 = a1 ^ 0x50;
  v11 = a3 + v6;
  v12 = LODWORD(STACK[0x304]) + LODWORD(STACK[0x2F8]);
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x2F4]) ^ 0xFFFFFFB0;
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x2E0]);
  v13 = v7 == -1405571749;
  v14 = (a2 - 1065826325);
  v15 = STACK[0x390];
  *STACK[0x390] = ((((2 * (*STACK[0x390] ^ 0xC) + 6) & 8) + (((*STACK[0x390] ^ 0xC) + ((a2 - 21) ^ 0xBE)) ^ 0x84)) ^ 0xC) + 48;
  if (v7 == -1405571749)
  {
    v16 = v3;
  }

  else
  {
    v16 = v3 + 1;
  }

  v17 = *v16;
  if (v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = -69;
  }

  v19 = v17 ^ v18;
  if (v13)
  {
    v20 = v4;
  }

  else
  {
    v20 = v4 + 1;
  }

  v21 = *v20;
  v22 = 1;
  if (!v13)
  {
    v22 = 2;
  }

  v23 = v5;
  v24 = v19 ^ v21 ^ *(v5 + v22);
  if (v13)
  {
    v25 = v15;
  }

  else
  {
    v25 = (v15 + 1);
  }

  v26 = (((v24 ^ *v25) - 20) ^ 0x8F) + 2 * (((v24 ^ *v25) - 20) & 0xF) + 126;
  *v25 = v24 ^ ((v26 ^ 0x3C) + ((2 * v26) & 0x78) - 73);
  v27 = STACK[0x380];
  v28 = 2u % LODWORD(STACK[0x380]);
  v29 = (-69 * v28) ^ v3[v28] ^ v4[v28] ^ *(v28 + v5 + 1);
  *(v15 + v28) = v29 ^ ((((v29 ^ *(v15 + v28)) + 111) ^ 0x5F) + ((2 * ((v29 ^ *(v15 + v28)) + 111)) & 0xBF) - 95);
  v30 = 3 % v27;
  v31 = (-69 * v30) ^ v3[v30] ^ v4[v30] ^ *(v30 + v5 + 1);
  v32 = (v31 ^ *(v15 + v30)) + LODWORD(STACK[0x2F0]);
  *(v15 + v30) = v31 ^ ((v32 ^ 0x77) + ((2 * v32) & 0xEF) - 119);
  v33 = STACK[0x4C8];
  v34 = LODWORD(STACK[0x4C8]) ^ 0xAC38AD5A;
  v35 = 4 % v34;
  LOBYTE(v32) = (-69 * v35) ^ v3[v35] ^ v4[v35] ^ *(v35 + v5 + 1);
  *(v15 + v35) = v32 ^ (((((2 * ((v32 ^ *(v15 + v35)) - 3)) & 0xB2) + (((v32 ^ *(v15 + v35)) - 3) ^ 0x59)) | 5) + ((((2 * ((v32 ^ *(v15 + v35)) - 3)) & 0xB2) + (((v32 ^ *(v15 + v35)) - 3) ^ 0x59)) | 0xFA) - 88);
  v36 = 5 % v34;
  v37 = (75 * v36) ^ byte_100259880[v36] ^ byte_100261000[v36 + 7] ^ byte_100285090[v36 + 4];
  *(v15 + v36) = v37 ^ ((((v37 ^ *(v15 + v36)) + 17) ^ 0x77) + ((2 * ((v37 ^ *(v15 + v36)) + 17)) & 0xEF) - 119);
  v38 = 6 % v34;
  v39 = (byte_100259800[v38] ^ *(v15 + v38) ^ (89 * v38) ^ byte_100265260[v38] ^ *(&unk_10027CA60 + v38 + 1)) + v10;
  v40 = -39 * (((2 * v39) & 0x66) + (v39 ^ 0xB3));
  *(v15 + v38) = byte_100259880[v38] ^ (75 * v38) ^ byte_100261000[v38 + 7] ^ byte_100285090[v38 + 4] ^ (105 * (v40 + ((81 - v40) | 0xD) + ((v40 - 82) | 0xD)) + 97);
  v41 = 7 % v34;
  LOBYTE(v38) = (75 * v41) ^ byte_100259880[v41] ^ byte_100261000[v41 + 7] ^ byte_100285090[v41 + 4];
  *(v15 + v41) = v38 ^ ((((v38 ^ *(v15 + v41)) + 47) ^ 0xE9) + ((2 * ((v38 ^ *(v15 + v41)) + 47)) & 0xD2) + 23);
  v42 = 8 % v34;
  LOBYTE(v38) = v11 + (v3[v42] ^ *(v15 + v42) ^ (-69 * v42) ^ v4[v42] ^ *(v42 + v23 + 1)) - 28;
  *(v15 + v42) = byte_100259880[v42] ^ (75 * v42) ^ byte_100261000[v42 + 7] ^ byte_100285090[v42 + 4] ^ ((v38 ^ 0x9D) + ((2 * v38) & 0x3A) + 99);
  v43 = 9 % v34;
  LODWORD(v38) = (75 * v43) ^ byte_100259880[v43] ^ byte_100261000[v43 + 7] ^ byte_100285090[v43 + 4];
  v44 = (v38 ^ *(v15 + v43)) - 118;
  v45 = (v44 ^ 0xFE) + 4 * (v44 >> 1);
  *(v15 + v43) = v38 ^ (v45 + ((-127 - v45) | 0x68) + ((v45 + 126) | 0x68) - 101);
  v33 ^= 0xAC38AD5A;
  v46 = 0xA % v33;
  v47 = (75 * v46) ^ byte_100259880[v46] ^ byte_100261000[v46 + 7] ^ byte_100285090[v46 + 4];
  v48 = (v47 ^ *(v15 + v46)) - ((LODWORD(STACK[0x338]) - ((2 * LOBYTE(STACK[0x338]) + 118) & 0x7C) - 71) ^ 0x3E);
  *(v15 + v46) = v47 ^ (((((2 * v48) & 0xAE) + (v48 ^ 0x57) - 71) ^ 0x20) + ((2 * (((2 * v48) & 0xAE) + (v48 ^ 0x57)) + 114) & 0x40) - 48);
  v49 = 0xB % v33;
  LOBYTE(v48) = (75 * v49) ^ byte_100259880[v49] ^ byte_100261000[v49 + 7] ^ byte_100285090[v49 + 4];
  v50 = ((2 * ((v48 ^ *(v15 + v49)) - 44)) & 0x6C) + (((v48 ^ *(v15 + v49)) - 44) ^ 0x36);
  *(v15 + v49) = v48 ^ (v50 + ((15 - v50) | 0x1E) + ((v50 - 16) | 0x1E) - 83);
  v51 = 0xC % v33;
  v52 = (75 * v51) ^ byte_100259880[v51] ^ byte_100261000[v51 + 7] ^ byte_100285090[v51 + 4];
  v53 = (v52 ^ *(v15 + v51)) - ((LODWORD(STACK[0x318]) - 11) ^ 0x5C);
  *(v15 + v51) = v52 ^ ((v53 ^ 0x5F) + ((2 * v53) & 0xBF) + 1);
  v54 = STACK[0x4C8];
  LODWORD(v51) = LODWORD(STACK[0x4C8]) ^ 0xAC38AD5A;
  v55 = 0xD % v51;
  v56 = (v3[v55] ^ *(v15 + v55) ^ (-69 * v55) ^ v4[v55] ^ *(v55 + v23 + 1)) + (LODWORD(STACK[0x308]) ^ 0x70);
  *(v15 + v55) = byte_100259880[v55] ^ (75 * v55) ^ byte_100261000[v55 + 7] ^ byte_100285090[v55 + 4] ^ ((v56 ^ 0xDE) + ((2 * v56) & 0xBC) + 34);
  v57 = 0xE % v51;
  LOBYTE(v35) = (byte_100259880[v57] ^ *(v15 + v57) ^ (75 * v57) ^ byte_100261000[v57 + 7] ^ byte_100285090[v57 + 4]) + 42;
  *(v15 + v57) = byte_100259900[v57] ^ (-93 * v57) ^ byte_100264050[v57] ^ byte_100268ED0[v57] ^ (((((2 * v35) & 0xEF) + (v35 ^ 0xF7)) | 0xC3) + ((((2 * v35) & 0xEF) + (v35 ^ 0xF7)) & 0xC3 ^ 0xBC) - 118);
  LODWORD(v35) = 0xF % v51;
  LODWORD(v57) = (-93 * (0xF % v51)) ^ byte_100259900[0xF % v51] ^ byte_100264050[0xF % v51] ^ byte_100268ED0[0xF % v51];
  LOBYTE(v51) = (v57 ^ *(v15 + 0xF % v51)) - 75;
  *(v15 + v35) = v57 ^ ((v51 ^ 0x5F) + ((2 * v51) & 0xBF) - 95);
  LODWORD(v35) = v54 ^ 0xAC38AD5A;
  v58 = 0x10 % (v54 ^ 0xAC38AD5A);
  v59 = v23;
  v60 = v12 + (v3[v58 & 0xF] ^ *(v15 + v58) ^ v4[v58 & 0xF] ^ (-69 * (v58 & 0xF)) ^ *((v58 & 0xF) + v23 + 1)) + 43;
  *(v15 + v58) = byte_100259900[v58 & 0xF] ^ (-93 * (v58 & 0xF)) ^ byte_100264050[v58 & 0xF] ^ byte_100268ED0[v58 & 0xF] ^ ((v60 ^ 0x7B) + ((2 * v60) & 0xF7) - 123);
  v61 = 0x11 % (v54 ^ 0xAC38AD5A);
  LOBYTE(v51) = byte_100264050[v61 & 0xF] ^ byte_100259900[v61 & 0xF];
  v62 = byte_100268ED0[v61 & 0xF];
  LOBYTE(v58) = -93 * (v61 & 0xF);
  LOBYTE(v54) = (v51 ^ *(v15 + v61) ^ v62 ^ v58) + 35;
  LOBYTE(v54) = 97 * (((2 * v54) & 0x76) + (v54 ^ 0xBB)) - 1;
  *(v15 + v61) = v51 ^ v58 ^ v62 ^ (-99 - 95 * (((2 * v54) & 0x52) + (v54 ^ 0xA9)));
  v63 = 0x12 % v35;
  LOBYTE(v35) = (v3[v63 & 0xF] ^ *(v15 + v63) ^ v4[v63 & 0xF] ^ *((v63 & 0xF) + v59 + 1) ^ (-69 * (v63 & 0xF))) + (v8 ^ 0xF4);
  *(v15 + v63) = byte_100259900[v63 & 0xF] ^ (-93 * (v63 & 0xF)) ^ byte_100264050[v63 & 0xF] ^ byte_100268ED0[v63 & 0xF] ^ ((v35 ^ 0x7D) + ((2 * v35) & 0xFB) - 125);
  LODWORD(v35) = STACK[0x4C8];
  LODWORD(v63) = LODWORD(STACK[0x4C8]) ^ 0xAC38AD5A;
  v64 = 0x13 % v63;
  v65 = (v3[v64 & 0xF] ^ *(v15 + v64) ^ v4[v64 & 0xF] ^ *((v64 & 0xF) + v59 + 1) ^ (-69 * (v64 & 0xF))) + LODWORD(STACK[0x360]);
  *(v15 + v64) = byte_100259900[v64 & 0xF] ^ (-93 * (v64 & 0xF)) ^ byte_100264050[v64 & 0xF] ^ byte_100268ED0[v64 & 0xF] ^ (((2 * v65) & 0xAE) + (v65 ^ 0xD7) + ((15 - (((2 * v65) & 0xAE) + (v65 ^ 0xD7))) | 0x9E) + ((((2 * v65) & 0xAE) + (v65 ^ 0xD7) + 112) | 0x9E) - 116);
  v66 = 0x14 % v63;
  LOBYTE(v65) = byte_100264050[v66 & 0xF] ^ byte_100259900[v66 & 0xF] ^ (-93 * (v66 & 0xF)) ^ byte_100268ED0[v66 & 0xF];
  LOBYTE(v64) = 5 * (((2 * ((v65 ^ *(v15 + v66)) - 64)) & 0xFB) + (((v65 ^ *(v15 + v66)) - 64) ^ 0xFD));
  *(v15 + v66) = v65 ^ (51 * (((v64 - 93) | 0x42) - v64 + ((92 - v64) | 0x42)) + 16);
  v67 = 0x15 % v63;
  LOBYTE(v65) = byte_100264050[v67 & 0xF] ^ byte_100259900[v67 & 0xF];
  LOBYTE(v64) = byte_100268ED0[v67 & 0xF];
  LOBYTE(v63) = -93 * (v67 & 0xF);
  LOBYTE(v51) = (v65 ^ *(v15 + v67) ^ v64 ^ v63) - 26;
  *(v15 + v67) = v65 ^ v63 ^ v64 ^ ((v51 ^ 0xCE) + ((2 * v51) & 0x9C) + 50);
  LODWORD(v67) = v35 ^ 0xAC38AD5A;
  v68 = 0x16 % (v35 ^ 0xAC38AD5A);
  LOBYTE(v51) = byte_100268ED0[v68 & 0xF];
  LOBYTE(v65) = byte_100264050[v68 & 0xF] ^ byte_100259900[v68 & 0xF];
  LOBYTE(v35) = -93 * (v68 & 0xF);
  LOBYTE(v64) = (v65 ^ *(v15 + v68) ^ v51 ^ v35) - 95;
  *(v15 + v68) = v65 ^ v35 ^ v51 ^ (((2 * v64) & 0xFB) + (v64 ^ 0x7D) + ((35 - (((2 * v64) & 0xFB) + (v64 ^ 0x7D))) | 0x2F) + ((((2 * v64) & 0xFB) + (v64 ^ 0x7D) - 36) | 0x2F) + 85);
  v69 = 0x17 % v67;
  LOBYTE(v65) = (byte_100259800[v69 & 0xF] ^ *(v15 + v69) ^ byte_100265260[v69 & 0xF] ^ (89 * (v69 & 0xF)) ^ *(&unk_10027CA60 + (v69 & 0xF) + 1)) + (LODWORD(STACK[0x3A0]) ^ 0x7D);
  *(v15 + v69) = byte_100259900[v69 & 0xF] ^ (-93 * (v69 & 0xF)) ^ byte_100264050[v69 & 0xF] ^ byte_100268ED0[v69 & 0xF] ^ ((v65 ^ 0x9F) + 2 * (v65 & 0x1F) + 97);
  v70 = 0x18 % v67;
  LOBYTE(v67) = byte_100259900[v70 & 0xF] ^ *(v15 + v70) ^ byte_100264050[v70 & 0xF] ^ byte_100268ED0[v70 & 0xF] ^ (-93 * (v70 & 0xF));
  LOBYTE(v67) = ((v67 - 118) ^ 0x7F) + 2 * v67 + 2;
  *(v15 + v70) = byte_100259870[v70 & 0xF] ^ (-109 * (v70 & 0xF)) ^ byte_100265BB0[(v70 & 0xF) + 1] ^ byte_100265FF0[(v70 & 0xF) + 1] ^ ((v67 ^ 0xCA) + ((2 * v67) & 0x94) - 55);
  v71 = STACK[0x4C8];
  LODWORD(v70) = LODWORD(STACK[0x4C8]) ^ 0xAC38AD5A;
  v72 = 0x19 % v70;
  v73 = (v72 & 0xF) + 1;
  v74 = byte_100265BB0[v73];
  LOBYTE(v73) = byte_100265FF0[v73];
  v75 = v74 ^ byte_100259870[v72 & 0xF];
  v76 = -109 * (v72 & 0xF);
  LOBYTE(v51) = (v75 ^ *(v15 + v72) ^ v73 ^ v76) - 125;
  *(v15 + v72) = v75 ^ v76 ^ v73 ^ (((((2 * v51) & 0x6C) + (v51 ^ 0x36) - 37) | 0x1D) - ((4 - (((2 * v51) & 0x6C) + (v51 ^ 0x36))) & 0x1D) - 17);
  v77 = 0x1A % v70;
  v78 = byte_100265BB0[(v77 & 0xF) + 1] ^ byte_100259870[v77 & 0xF] ^ (-109 * (v77 & 0xF)) ^ byte_100265FF0[(v77 & 0xF) + 1];
  *(v15 + v77) = v78 ^ ((((v78 ^ *(v15 + v77)) + 118) ^ 0x52) + ((2 * ((v78 ^ *(v15 + v77)) + 118)) & 0xA4) - 82);
  v79 = 0x1B % v70;
  v80 = (v79 & 0xF) + 1;
  v81 = byte_100265BB0[v80];
  LOBYTE(v80) = byte_100265FF0[v80];
  LOBYTE(v51) = -109 * (v79 & 0xF);
  v82 = v81 ^ byte_100259870[v79 & 0xF];
  LOBYTE(v77) = (v82 ^ *(v15 + v79) ^ v80 ^ v51) + 55;
  *(v15 + v79) = v82 ^ v51 ^ v80 ^ (((2 * v77) & 0x6E) + (v77 ^ 0x37) + ((3 - (((2 * v77) & 0x6E) + (v77 ^ 0x37))) | 0x77) + ((((2 * v77) & 0x6E) + (v77 ^ 0x37) - 4) | 0x77) + 83);
  v71 ^= 0xAC38AD5A;
  v83 = 0x1C % v71;
  LOBYTE(v51) = byte_100265BB0[(v83 & 0xF) + 1] ^ byte_100259870[v83 & 0xF] ^ (-109 * (v83 & 0xF)) ^ byte_100265FF0[(v83 & 0xF) + 1];
  *(v15 + v83) = v51 ^ ((((v51 ^ *(v15 + v83)) + 115) ^ 0x3E) + ((2 * ((v51 ^ *(v15 + v83)) + 115)) & 0x7C) - 62);
  v84 = 0x1D % v71;
  v85 = (v84 & 0xF) + 1;
  LOBYTE(v51) = (v3[v84 & 0xF] ^ *(v15 + v84) ^ v4[v84 & 0xF] ^ *(v59 + v85) ^ (-69 * (v84 & 0xF))) + STACK[0x358];
  *(v15 + v84) = byte_100259870[v84 & 0xF] ^ (-109 * (v84 & 0xF)) ^ byte_100265BB0[v85] ^ byte_100265FF0[v85] ^ (((((2 * v51) & 0xEF) + (v51 ^ 0x77) - 16) ^ 0x1F) + (~(30 - 2 * (((2 * v51) & 0xEF) + (v51 ^ 0x77))) & 0x3E) + 122);
  v86 = 0x1E % v71;
  v87 = (v86 & 0xF) + 1;
  LOBYTE(v85) = byte_100265BB0[v87];
  LOBYTE(v87) = byte_100265FF0[v87];
  LOBYTE(v51) = -109 * (v86 & 0xF);
  LOBYTE(v80) = v85 ^ byte_100259870[v86 & 0xF];
  LOBYTE(v84) = (v80 ^ *(v15 + v86) ^ v87 ^ v51) + 81;
  *(v15 + v86) = v80 ^ v51 ^ v87 ^ (-127 - ((((2 * v84) & 0xFC) + (v84 ^ 0xFE)) ^ 0x7F));
  v88 = LODWORD(STACK[0x4C8]) ^ 0xAC38AD5A;
  v89 = v15;
  v90 = 0x1F % v88;
  v91 = (v90 & 0xF) + 1;
  v92 = (v3[v90 & 0xF] ^ *(v15 + v90) ^ v4[v90 & 0xF] ^ *(v59 + v91) ^ (-69 * (v90 & 0xF))) + (LODWORD(STACK[0x328]) ^ 0xFFFFFFF1);
  *(v89 + v90) = byte_100259870[v90 & 0xF] ^ (-109 * (v90 & 0xF)) ^ byte_100265BB0[v91] ^ byte_100265FF0[v91] ^ (((2 * (v92 & 0x3F) + (v92 ^ 0xBF) + 104) ^ 0x22) + ((2 * (2 * (v92 & 0x3F) + (v92 ^ 0xBF)) + 80) & 0x44) - 73);
  v93 = STACK[0x3B0];
  *(v89 + 0 % v88) ^= *(v9 + (((v14 - 507856629) | 0x78u) ^ 0xFFFFFFFFE1BAB833) + 507856693) ^ 8;
  return (*(&off_1002D7880 + ((505 * (((507856694 - v14) | (v14 - 507856694)) >> 63)) ^ (v14 - 507856509))))(v88, 2086391312, 976212573, 976212573, 542429926, 2086391312);
}

uint64_t sub_1000F4928(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (a2 - 2086391312) % a1;
  *(STACK[0x390] + v14) = *(v11 + v14) ^ *(a2 + v6 - 2086391312) ^ *(v8 + (v14 & 0xF)) ^ *(v9 + (v14 & 0xF) + 1) ^ ((v14 & 0xF) * (v7 ^ 0x6B)) ^ (113 * (v14 & 0xF)) ^ *(v10 + (v14 & 0xF) + 1) ^ *(v13 + (v14 & 0xF)) ^ byte_100259890[v14 & 0xF] ^ byte_100268BA0[(v14 & 0xF) + 1] ^ 8;
  return (*(v12 + 8 * ((342 * (a2 + 1 == a6 + 64)) ^ v7)))();
}

uint64_t sub_1000F4A60@<X0>(unsigned int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W8>)
{
  v8 = (a3 + v4 + 170) % a1;
  v9 = (a3 + v4 + 140) % a1;
  v10 = *(v7 + (v8 & 0xF)) ^ *(v5 + v8) ^ byte_100259890[v8 & 0xF] ^ (113 * (v8 & 0xF)) ^ byte_100268BA0[(v8 & 0xF) + 1];
  v11 = byte_100268BA0[(v9 & 0xF) + 1];
  v12 = *(v7 + (v9 & 0xF)) ^ *(v5 + v9) ^ byte_100259890[v9 & 0xF];
  HIDWORD(v14) = v12 ^ v9 ^ v11;
  LODWORD(v14) = (v12 ^ (113 * (((a3 + v4 + 140) % a1) & 0xF)) ^ v11) << 24;
  v13 = v14 >> 26;
  v15 = (a3 + v4) % a1;
  v16 = byte_100268BA0[(v15 & 0xF) + 1];
  v17 = *(v7 + (v15 & 0xF)) ^ *(v5 + v15) ^ byte_100259890[v15 & 0xF];
  HIDWORD(v14) = v17 ^ v15 ^ v16;
  LODWORD(v14) = (v17 ^ (113 * (((a3 + v4) % a1) & 0xF)) ^ v16) << 24;
  v18 = *(v6 + 8 * ((63 * (a3 + 1 == a2 + 256)) ^ a4));
  *(v5 + (a3 + v4 + 177) % a1) ^= (((v10 < 0) | (2 * v10)) - ((((a4 + 29) | 2) - 76) & (2 * ((v10 < 0) | (2 * v10)))) - 73) ^ (v13 - ((2 * v13) & 0xF7) + 123) ^ ((v14 >> 27) - ((2 * (v14 >> 27)) & 0xB4) + 90) ^ 0x96;
  return v18();
}

uint64_t sub_1000F4BCC(double a1, double a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8)
{
  v9 = (v8 - 2058778567) & 0x7AB677DF;
  v10 = STACK[0x4C8];
  STACK[0x420] -= 448;
  v11 = STACK[0x398];
  v11[74] = 0xE4641B730C06BE17;
  v11[75] = 0x1ECF5F429647D7CALL;
  v11[76] = 0xE130A0BD69B82835;
  *(v11 + 620) = 0x6B5AE86B11D6C7CALL;
  v12 = STACK[0x370];
  LODWORD(STACK[0x3B0]) = LODWORD(STACK[0x370]) - 1489073820;
  LODWORD(STACK[0x328]) = v12 + 1876707984;
  v13 = STACK[0x348];
  STACK[0x478] = STACK[0x348];
  STACK[0x3E0] = STACK[0x390];
  LODWORD(STACK[0x4CC]) = v10;
  LODWORD(STACK[0x4AC]) = 1724353818;
  STACK[0x3A0] = STACK[0x3A8] + STACK[0x388];
  LODWORD(STACK[0x338]) = v12 + 933615806;
  LODWORD(STACK[0x370]) = 844 * (((((v9 - 275) | (v12 + 933615742)) - (v12 + 933615742)) | (v12 + 933615742 - (v9 - 275)) & ~((v12 + 933615742) ^ (v9 - 275))) >> 31);
  v14 = STACK[0x3BC];
  LODWORD(STACK[0x3A8]) = LODWORD(STACK[0x3BC]) ^ 0x6BC;
  LODWORD(STACK[0x380]) = v14 ^ 0x449;
  v15.n128_u64[0] = 0x9E9E9E9E9E9E9E9ELL;
  v15.n128_u64[1] = 0x9E9E9E9E9E9E9E9ELL;
  v16.n128_u64[0] = 0x4F4F4F4F4F4F4F4FLL;
  v16.n128_u64[1] = 0x4F4F4F4F4F4F4F4FLL;
  a7.n128_u16[0] = 31097;
  a7.n128_u8[2] = 121;
  a7.n128_u8[3] = 121;
  a7.n128_u8[4] = 121;
  a7.n128_u8[5] = 121;
  a7.n128_u8[6] = 121;
  a7.n128_u8[7] = 121;
  a8.n128_u16[0] = 20303;
  a8.n128_u8[2] = 79;
  a8.n128_u8[3] = 79;
  a8.n128_u8[4] = 79;
  a8.n128_u8[5] = 79;
  a8.n128_u8[6] = 79;
  a8.n128_u8[7] = 79;
  LODWORD(STACK[0x320]) = v9 + 943091967;
  STACK[0x4B8] = v13;
  LODWORD(STACK[0x460]) = v10;
  STACK[0x4F8] = STACK[0x390];
  v17 = ((2 * (*(v13 + 68) & 0x3F)) ^ 0x66) + (*(v13 + 68) & 0x3F ^ 0x75FBFF8C);
  return (*(&off_1002D7880 + ((v9 + 1344) | (8 * (((v9 + 1576) ^ 0x7DFFA944 ^ ((v10 ^ 0xAC38AD5A) - 1979449279 + v17)) - 2113908735 + ((2 * ((v10 ^ 0xAC38AD5A) - 1979449279 + v17)) & 0xFBFF5F7E) < 0xFFFFFFC0)))))(xmmword_1002597D0, xmmword_1002597C0, xmmword_100259770, xmmword_100259790, v15, v16, a7, a8);
}

uint64_t sub_1000F4E7C(uint64_t a1, int a2, int a3)
{
  v5 = v4 + (((v3 ^ 0x74B) - 216) ^ 0x8A04009A);
  if (v5 <= 0x40)
  {
    v5 = 64;
  }

  v6 = STACK[0x390];
  return (*(&off_1002D7880 + ((488 * (1979449278 - a2 - a3 + v5 < 0xF)) ^ v3)))();
}

uint64_t sub_1000F4F18(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a3 + a2;
  if ((v10 - 1979449278) > 0x40)
  {
    v11 = v10 - 1979449278;
  }

  else
  {
    v11 = 64;
  }

  v12 = v8 + v11;
  v14 = v12 > 0xF || v9 + a8 + ((a5 + 1000) ^ 0x75FBFB7Eu) < v12;
  return (*(&off_1002D7880 + ((58 * (((a5 - 1) ^ v14) & 1)) ^ a5)))();
}

uint64_t sub_1000F4FA4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 1979449279);
  v11 = (a3 - v3 + v7) < 0x10 || (a3 - v4 + v7 - 4) < 0x10 || a3 - v5 + v7 - 2 < ((a1 + 2002443506) & 0x88A51FFD) - 416 || (a3 - v6 + v7) < 0x10;
  return (*(&off_1002D7880 + ((21 * v11) ^ a1)))();
}

uint64_t sub_1000F5184@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x3FC]) = v1;
  *(v3 + 184) = *(&off_1002D7880 + v2);
  v4 = 373 * (((v2 + 147) | 0x209) ^ 0x2BBu) + 136;
  STACK[0x420] += v4 ^ 0x232;
  LODWORD(STACK[0x42C]) = *(a1 + 72);
  LODWORD(STACK[0x40C]) = *(a1 + 76);
  LODWORD(STACK[0x4B0]) = *(a1 + 80);
  LODWORD(STACK[0x3EC]) = *(a1 + 84);
  return (*(&off_1002D7880 + ((((*(a1 + 96) ^ 0xE4) < (((v4 - 106) | 0xF0) ^ 0x77)) * (((8 * v4) ^ 0x1968) - 525)) ^ v4)))();
}

uint64_t sub_1000F5358@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = (v2 - 1715224285) & 0x663C3B39;
  v7 = *(a2 + 88);
  v8 = a2;
  v9 = ((((*v8 ^ a1) - ((2 * (*v8 ^ a1)) & 0x4E)) << 24) - 1493172224) ^ 0xA7000000;
  v10 = ((((v8[1] ^ a1) - ((2 * (v8[1] ^ a1)) & 0x12E)) << 16) + 261554176) ^ 0xF970000;
  v11 = (v10 + 983388501 - ((2 * v10) & 0x753A0000)) ^ 0x3A9D5155 | (v9 - 811271886 - ((2 * v9) & 0x9E000000)) ^ 0xCFA4F932;
  v12 = ((((v8[2] ^ a1) - ((2 * (v8[2] ^ a1)) & 0x130)) << 8) + 1727174656) ^ 0x66F29800;
  v13 = (v11 + 716909049 + (~(2 * v11) | 0xAA89AC0D) + 1) ^ 0x2ABB29F9 | (v12 + 1388064093 - ((2 * v12) & 0x25785A00)) ^ 0x52BC2D5D;
  LODWORD(v8) = (v13 - 1408090492 - ((2 * v13) & 0x58247D08)) ^ 0xAC123E84 | ((v8[3] ^ a1) + 129013874 - ((2 * (v8[3] ^ a1)) & 0xE4)) ^ 0x7B09872;
  *(v4 + ((v3 + 379197661) & 0xFFFFFFFC)) = v8 + v5 - ((2 * v8) & 0x78B61482);
  return (*(&off_1002D7880 + ((2678 * ((v3 + 379197665) < 0x40)) ^ v6)))(379197677, 379197677);
}

uint64_t sub_1000F5530(int a1, uint64_t a2, unsigned int a3)
{
  HIDWORD(v7) = *(v5 + 4 * (v4 + a1 - 8)) ^ *(v5 + 4 * (v4 + a1 - 3)) ^ *(v5 + 4 * (a1 + ((a3 + 757) ^ (v4 - 1315)))) ^ *(v5 + 4 * (v4 + a1 - 16));
  LODWORD(v7) = HIDWORD(v7);
  *(v5 + 4 * (a2 + v4)) = (v7 >> 31) + v6 - ((2 * (v7 >> 31)) & 0x78B61482);
  return (*(v3 + 8 * (((4 * ((a2 + 1 + v4) > 0x4F)) | (16 * ((a2 + 1 + v4) > 0x4F))) ^ a3)))(a2 + 1);
}

uint64_t sub_1000F55C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  HIDWORD(v18) = a8 ^ 0x102F4CB;
  LODWORD(v18) = a8 ^ 0xF0000000;
  v19 = (((a5 ^ 0xEFD0B34) & (v17 ^ v14)) + 786246971 - ((2 * ((a5 ^ 0xEFD0B34) & (v17 ^ v14))) & 0x5DBA5A76)) ^ 0x2EDD2D3B | (((a5 ^ v14) & (v12 ^ v14)) - 1840503531 - ((2 * ((a5 ^ v14) & (v12 ^ v14))) & 0x24984A2A)) ^ 0x924C2515;
  v20 = (v9 ^ 0x6CFCBAFA ^ (v18 >> 27)) + ((2 * (v18 >> 27)) & 0xD9F97FDE) - 1828503535 + ((v19 + 1446375891 - ((2 * v19) & 0xAC6BE3A6)) ^ 0x5635F1D3);
  v21 = (v8 ^ v14) + (v20 ^ 0x7DBBBFED) + ((2 * v20) & 0xFB777FDA) - 2109456365;
  v22 = (*(v15 + 4 * (v11 + v13)) ^ v16) + (v21 ^ 0x7DAFF7AF) + ((2 * v21) & 0xFB5FEF5E) - 2108684207;
  return (*(v10 + 8 * ((3370 * ((v11 + 1 + v13) < 0x14)) ^ v9)))();
}

uint64_t sub_1000F579C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  HIDWORD(v17) = (a3 - 1141) ^ 0x102F4F7 ^ a8;
  LODWORD(v17) = a8 ^ 0xF0000000;
  v18 = (v16 ^ v12 ^ v9 ^ v11) + ((v17 >> 27) ^ 0x3F2F6BBB) + ((2 * (v17 >> 27)) & 0x7E5ED776) - 1060072379;
  v19 = (v15 ^ v12) + (v18 ^ 0x33E7E7ED) + ((2 * v18) & 0x67CFCFDA) - 870836205;
  v20 = (*(v13 + 4 * (a2 + v10)) ^ v14) + (v19 ^ 0xFDEFEFEB) + ((2 * v19) & 0xFBDFDFD6) + 34607125;
  return (*(v8 + 8 * ((420 * ((a2 + 1 + v10) < 0x28)) ^ a3)))(v9);
}

uint64_t sub_1000F5904(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  HIDWORD(v15) = v8 ^ 0x102F4CB;
  LODWORD(v15) = v8 ^ 0xF0000000;
  v16 = v14 ^ (v10 + v5 + 1165 - 1225);
  v17 = a1 ^ v10;
  v18 = (((v16 | v17) + 449510396 - ((2 * (v16 | v17)) & 0x3595F7F8)) ^ 0x1ACAFBFC) & (a5 ^ v10);
  v19 = (v18 - 401796286 - ((2 * v18) & 0xD01A2684)) ^ 0xE80D1342 | ((v16 & v17) + 275517183 + (~(2 * (v16 & v17)) | 0xDF27E201) + 1) ^ 0x106C0EFF;
  v20 = ((v15 >> 27) ^ 0xF7FF3FFB) + ((2 * (v15 >> 27)) & 0xEFFE7FF6) + 134266885 + ((v19 - 627618624 - ((2 * v19) & 0xB52E9980)) ^ 0xDA974CC0);
  v21 = (v6 ^ v10) + (v20 ^ 0xFECFF2FF) + ((2 * v20) & 0xFD9FE5FE) + 19926273;
  v22 = (*(v11 + 4 * (v13 + v9)) ^ v12) + (v21 ^ 0xFDF7FFEC) + ((2 * v21) & 0xFBEFFFD8) + 34078740;
  return (*(v7 + 8 * (v5 ^ 0x4D6 ^ (372 * (((((v13 + 1 + v9) ^ v5) & v5) >> (__clz((v13 + 1 + v9) ^ v5 | 1) ^ 0x1F)) & 1)))))(v14, 379197721);
}

uint64_t sub_1000F5B18(uint64_t a1, int a2, int a3)
{
  HIDWORD(v13) = v4 ^ 0x102F4CB;
  LODWORD(v13) = v4 ^ 0xF0000000;
  v14 = (v7 ^ v8 ^ v12 ^ v5) + ((v11 - 465) ^ 0x4ABE279) + ((v13 >> 27) ^ 0xFB541F7F) + ((2 * (v13 >> 27)) & 0xF6A83EFE);
  v15 = (a3 ^ v8) + (v14 ^ 0xF37BBEFF) + ((2 * v14) & 0xE6F77DFE) + 209993985;
  v16 = (*(v9 + 4 * (a2 + v6)) ^ v10) + (v15 ^ 0x5F3DFFFD) + ((2 * v15) & 0xBE7BFFFA) - 1597898749;
  return (*(v3 + 8 * ((35 * ((a2 + 1 + v6) < 0x50)) ^ v11)))();
}

uint64_t sub_1000F5C64@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W7>, _DWORD *a4@<X8>)
{
  LODWORD(STACK[0x42C]) = v7;
  LODWORD(STACK[0x40C]) = v6;
  LODWORD(STACK[0x4B0]) = v9;
  LODWORD(STACK[0x3EC]) = v4;
  a4[22] = (a4[22] ^ v8) + a2 + v8 - (((a3 + 478) ^ (v5 + 938)) & (2 * ((a4[22] ^ v8) + a2)));
  v10 = a4[19];
  v11 = (a4[18] ^ v8) + (LODWORD(STACK[0x42C]) ^ v8);
  a4[18] = v11 + v8 - (v5 & (2 * v11));
  a4[19] = (v10 ^ v8) + (LODWORD(STACK[0x40C]) ^ v8) + v8 - (v5 & (2 * ((v10 ^ v8) + (LODWORD(STACK[0x40C]) ^ v8))));
  v12 = a4[21];
  v13 = (a4[20] ^ v8) + (LODWORD(STACK[0x4B0]) ^ v8);
  a4[20] = v13 + v8 - (v5 & (2 * v13));
  a4[21] = v8 + (v12 ^ v8) + (LODWORD(STACK[0x3EC]) ^ v8) - (v5 & (2 * ((v12 ^ v8) + (LODWORD(STACK[0x3EC]) ^ v8))));
  STACK[0x420] -= 320;
  return (STACK[0x510])(a1, LODWORD(STACK[0x3BC]));
}

uint64_t sub_1000F6BEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = v7 + v6;
  v11 = (v7 + v6) & (((v5 - 581) | 8u) ^ v9);
  **(v8 + 96) = *(*(v8 + 160) + v10) ^ byte_100259860[v11] ^ byte_100283C50[v11 + 4] ^ byte_10025F040[v11 + 2] ^ (121 * v11) ^ a4;
  return (*(v4 + 8 * v5))();
}

uint64_t sub_1000F6D10@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v5 + 168);
  v8 = v1 - 608;
  v9 = *(a1 + 72);
  *v7 = *v2 ^ v3[4] ^ HIBYTE(v9) ^ v4[2] ^ 0xF1;
  v7[1] = v6 ^ BYTE2(v9) ^ v2[1] ^ v3[5] ^ v4[3] ^ 2;
  v7[2] = (2 * v6) ^ BYTE1(v9) ^ v2[2] ^ v3[6] ^ v4[4] ^ 0xF4;
  v7[3] = v9 ^ (3 * v6) ^ v2[3] ^ v3[7] ^ v4[5] ^ 0xCB;
  v10 = *(a1 + 92) + 994583636;
  v11 = v10 < 0x4D1EEC0E;
  v12 = v10 > 0x4D1EEC12;
  if (v11)
  {
    v12 = v11;
  }

  return (*(&off_1002D7880 + ((302 * v12) ^ v8)))();
}

uint64_t sub_1000F6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x420] += ((v9 - 469) | 0x42u) ^ 0xFFFFFFFFFFFFFEC3;
  v10 = STACK[0x3D0];
  *(v8 + 64) = STACK[0x3D0] + 56;
  v10[31] = -463201421;
  v10[30] = 201768471;
  v10[32] = -1773676598;
  v10[33] = 516906818;
  v10[34] = 1773676597;
  v10[35] = -516906819;
  v10[38] = 1801119851;
  v10[37] = 299288522;
  v11 = STACK[0x3A0];
  STACK[0x3F0] = STACK[0x3A0];
  v12 = STACK[0x370];
  *(v8 + 136) = v11;
  return (*(a8 + 8 * ((v9 - 186) ^ v12)))();
}

uint64_t sub_1000F7018@<X0>(int a1@<W2>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v10 = *((v4 ^ v7) + v5 + v6 + v8);
  *(a3 + (a1 + v9)) = v10 - ((2 * v10) & 0x9F) + 79;
  return (*(a2 + 8 * (((((v3 + a1 - 2663) > 0x3F) << 6) | (((v3 + a1 - 2663) > 0x3F) << 8)) ^ v4)))();
}

uint64_t sub_1000F7074@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v9 = (a2 + (v4 & 0xFFFFFFE0));
  v10 = vaddq_s8(vsubq_s8(*(v6 + v4 + 16), vandq_s8(vaddq_s8(*(v6 + v4 + 16), *(v6 + v4 + 16)), a3)), a4);
  *v9 = vaddq_s8(vsubq_s8(*(v6 + v4), vandq_s8(vaddq_s8(*(v6 + v4), *(v6 + v4)), a3)), a4);
  v9[1] = v10;
  return (*(a1 + 8 * (((((v4 + (v5 - 41) + 9 - v5) | (v5 - (v4 + (v5 - 41) + 9))) >= 0) * v8) ^ (v5 | v7))))();
}

void sub_1000F70E4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x454]) = a2;
  v8 = *(a8 + 8 * a1);
  JUMPOUT(0x1000F5278);
}

uint64_t sub_1000F70F8@<X0>(uint64_t a1@<X7>, int8x16_t *a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v8 = (v4 + (v6 + v7));
  v9 = v8[1];
  *a2 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a3)), a4);
  a2[1] = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), a3)), a4);
  return (*(a1 + 8 * ((14 * (v5 != 1270)) ^ (v5 + 395))))((v6 + 64));
}

uint64_t sub_1000F716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = LODWORD(STACK[0x328]) < LODWORD(STACK[0x320]);
  v11 = v9 + ((v8 + 1872608187) & 0x906245BD ^ 0x1476C86C);
  v12 = v10 ^ (v11 < ((2 * v8) ^ 0x250u) + 943090940);
  v13 = v11 < LODWORD(STACK[0x328]);
  if (!v12)
  {
    v10 = v13;
  }

  return (*(a8 + 8 * ((1546 * v10) ^ v8)))();
}

uint64_t sub_1000F7200@<X0>(_BYTE *a1@<X8>)
{
  v9 = v4 < v8;
  *a1 = *(*(v2 + 136) + (v3 + v5)) - ((v1 ^ 0x48) & (2 * *(*(v2 + 136) + (v3 + v5)))) + 79;
  v10 = v7 + v3 + 1125;
  v11 = v9 ^ (v10 < v6 + 1555);
  v12 = v10 < v4;
  if (!v11)
  {
    v9 = v12;
  }

  return (*(&off_1002D7880 + ((!v9 | (2 * !v9)) ^ (v1 - 406))))();
}

uint64_t sub_1000F72A0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = STACK[0x338];
  v4 = (*(a2 + 68) ^ 0xE4641B73) + v3 - 463201421 - ((2 * ((*(a2 + 68) ^ 0xE4641B73) + v3)) & 0xC8C836E6);
  *(a2 + 68) = v4;
  return (*(a1 + 8 * ((((v4 ^ 0xE4641B73) >= v3) * (((v2 ^ 0x4A9) + 1224) ^ 0x4BC)) ^ v2)))();
}

uint64_t sub_1000F7304@<X0>(unint64_t a1@<X8>)
{
  v3 = &STACK[0x550] + v2 + (v1 ^ 0xDEF0E60159B77CFELL);
  STACK[0x4A0] = v3;
  STACK[0x420] = v2 + 32;
  STACK[0x4D8] = STACK[0x368];
  STACK[0x518] = *(&off_1002D7880 + v1);
  STACK[0x440] = a1;
  STACK[0x500] = v3;
  v4 = ((2 * *(a1 + 68)) & 0x6E ^ 0x66) + ((((v1 ^ 0x18) + 1027) | 0xC6) ^ *(a1 + 68) & 0x3F ^ 0x5BE7FA12);
  *(a1 + (v4 - 1541930743)) = -49;
  return (*(&off_1002D7880 + ((1006 * ((v4 - 1541930799) < 0xFFFFFFC8)) ^ v1 ^ 0x18)))();
}

uint64_t sub_1000F7F00@<X0>(int a1@<W0>, uint64_t a2@<X7>, uint64_t a3@<X8>, __n128 a4@<Q5>)
{
  v6 = (a3 + v4 + a2);
  *v6 = a4;
  v6[1] = a4;
  return (*(&off_1002D7880 + ((194 * (((a1 - 709) ^ 0x231) == (v5 & 0x1FFFFFFE0))) ^ (a1 - 355))))();
}

uint64_t sub_1000F8028@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>, double a3@<D7>)
{
  v6 = (a2 + v5 + a1);
  *v6 = a3;
  v6[1] = a3;
  return (*(&off_1002D7880 + ((510 * (((((16 - (v3 & 0xFFFFFFFFFFFFFFF0)) | ((v3 & 0xFFFFFFFFFFFFFFF0) - 16)) >> (((v4 + 95) | 1) ^ 0xB0u)) & 1) == 0)) ^ v4)))();
}

void sub_1000F80EC()
{
  *(v0 + 32) = STACK[0x348];
  STACK[0x3E0] = &unk_100265390;
  LODWORD(STACK[0x4CC]) = -1405571766;
  JUMPOUT(0x1000F8120);
}

void sub_1000F8180()
{
  *(v0 + 32) = STACK[0x348];
  v1 = STACK[0x330];
  STACK[0x3E0] = STACK[0x330];
  LODWORD(STACK[0x4CC]) = -1405571766;
  LODWORD(STACK[0x4AC]) = 1661482764;
  STACK[0x390] = v1;
  JUMPOUT(0x1000F4DB8);
}

void sub_1000F82CC(uint64_t a1@<X8>)
{
  v3 = (v1 + 1478294197) & 0xA7E3054A;
  v5 = *(a1 + 64);
  v4 = *(a1 + 68);
  *(a1 + 56) = ((8 * v4) ^ 0x98) - ((((8 * v4) ^ 0x98) << (v3 ^ 0x49)) & 0x90) + 79;
  *(a1 + 57) = (v4 >> 5) ^ 0x94;
  *(a1 + 58) = (v4 >> 13) ^ 0x6F;
  *(a1 + 59) = (v4 >> 21) ^ 0x6C;
  HIDWORD(v6) = v5 ^ 0xC06BE17;
  LODWORD(v6) = ~v4;
  *(a1 + 60) = (((v6 >> 29) ^ 0x80) - ((2 * (v6 >> 29)) & 0xFC) - 2) ^ 0x31;
  *(a1 + 61) = (v5 >> 5) ^ 0xBF;
  *(a1 + 62) = (v5 >> 13) ^ 0x7A;
  *(a1 + 63) = (v5 >> 21) ^ 0x2F;
  *(v2 + 184) = *(&off_1002D7880 + (v3 - 311));
  JUMPOUT(0x1000F5240);
}

uint64_t sub_1000F86B0@<X0>(int a1@<W0>, char a2@<W3>, int a3@<W5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v11 = (a1 + v8);
  *(a5 + ((((v6 ^ 0xB69F1F43) - 1493) | a3) ^ (v7 + 299)) + v5) = *(v10 + v11) ^ byte_100259860[v11 & 0xF] ^ byte_100283C50[(v11 & 0xF) + 4] ^ byte_10025F040[(v11 & 0xF) + 2] ^ (121 * (v11 & 0xF)) ^ a2;
  return (*(&off_1002D7880 + (((a1 + 1 + v8 < v9) * a4) ^ v6 ^ 0xB69F1F43)))();
}

uint64_t sub_1000F87D8(uint64_t a1, int a2)
{
  v2 = (a2 - 594) | 0x14;
  STACK[0x420] -= 32;
  v3 = STACK[0x378] + 40;
  STACK[0x538] = v3;
  STACK[0x548] = v3;
  v4 = STACK[0x340];
  STACK[0x520] = v3;
  STACK[0x528] = v4;
  STACK[0x350] = v3;
  LODWORD(STACK[0x3B0]) = v2;
  return (*(&off_1002D7880 + (((v2 + ((a2 - 1718360827) & 0x666C1DB7) - 1520) * (v3 == 0)) ^ a2)))();
}

uint64_t sub_1000F8858@<X0>(unint64_t a1@<X8>)
{
  v3 = (v2 - 496) | 9;
  v4 = v1 < a1;
  v5 = (((v3 + 1482986420) & 0xA79B6BFF) - 723) & 0xF;
  *(STACK[0x4D8] - 0x65A15E0907A5CBE7) = byte_100259850[v5] ^ *(STACK[0x4A0] + ((v3 + 1482986420) & 0xA79B6BFF) - 723) ^ byte_100259890[v5] ^ byte_100268BA0[v5 + 1] ^ (113 * ((v3 - 31) & 0xF));
  if (v4 == a1 > 0xAA62BBA1)
  {
    v4 = v1 > 0xAA62BBA1;
  }

  return (*(&off_1002D7880 + ((1561 * v4) ^ v3)))(2811980799);
}

uint64_t sub_1000F89AC()
{
  v0 = STACK[0x3B0];
  v1 = (LODWORD(STACK[0x3B0]) + 2006238042) & 0x886B3EF6;
  STACK[0x530] = 0;
  v2 = *(&off_1002D7880 + v0 + 1974);
  v3 = v2(1032);
  STACK[0x540] = v3;
  v4 = v2(1028);
  STACK[0x530] = v4;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  LODWORD(STACK[0x2F8]) = v1;
  return (*(&off_1002D7880 + ((v6 * (v1 ^ 0x2E4)) ^ v0)))();
}

uint64_t sub_1000F8A30()
{
  v0 = byte_100283410[*(STACK[0x378] + 26) ^ 0x18] ^ 0xE2 ^ ((*(STACK[0x378] + 26) ^ 0x1E) - ((2 * (*(STACK[0x378] + 26) ^ 0x1E) + 10) & 0xC) - 101);
  v1 = (((v0 - 2 * (v0 & 0x7F)) << 8) + 178552576) ^ 0xAA47F00;
  v2 = v1 - ((2 * v1) & 0x57170200);
  v3 = byte_10027C960[*(STACK[0x378] + 36) ^ 0xACLL];
  HIDWORD(v4) = v3 ^ 2;
  LODWORD(v4) = (v3 ^ 0x50) << 24;
  v5 = (v4 >> 26) - ((2 * (v4 >> 26)) & 0xFFFFFF8A) + 69;
  v6 = ((((v5 ^ ((v5 & 0xFE) >> 1) ^ 0x16) - ((2 * (v5 ^ ((v5 & 0xFE) >> 1) ^ 0x16)) & 0xFFFFFFE7)) << 24) - 218103808) ^ 0xF3000000;
  v7 = ((*(STACK[0x378] + 39) ^ 0x1F) - ((2 * (*(STACK[0x378] + 39) ^ 0x1F) + 42) & 0xFFFFFFC3) - 10) ^ byte_100283410[*(STACK[0x378] + 39) ^ 0x19];
  v8 = byte_100266F60[*(STACK[0x378] + 33) ^ 0xD3];
  v9 = (v6 - ((2 * v6) & 0x1C000000) + 235937943) ^ 0xE102097 | ((v7 ^ 0xFE) - ((2 * (v7 ^ 0xFE)) & 0x116) + 1900742539) ^ 0x714B078B;
  v10 = v9 - ((2 * v9) & 0x8D91A562);
  v11 = ((((v8 ^ (v8 >> 4) ^ ((v8 >> 5) | 0xA0) ^ 4) - ((2 * (v8 ^ (v8 >> 4))) & 0x30)) << 16) + 622329856) ^ 0x25180000;
  v12 = byte_100266F60[*(STACK[0x378] + 28) ^ 0xDDLL];
  v13 = STACK[0x528];
  STACK[0x390] = STACK[0x520];
  v14 = v13[11];
  STACK[0x398] = v14;
  LODWORD(v14) = byte_10025A560[v14 ^ 0x1F];
  v15 = v12 ^ (v12 >> 5) ^ (v12 >> 4) ^ 0xB5;
  v16 = ((v15 - ((2 * v15) & 0x20)) << 24) - 1879048192;
  v17 = (v16 ^ 0x90000000) - ((2 * v16) & 0xD8000000);
  v18 = v13[1];
  STACK[0x3A0] = v18;
  LODWORD(v14) = (v14 - ((2 * v14 + 2) & 4) - 53) ^ 0x89;
  v19 = (v11 - ((2 * v11) & 0x61360000) - 258242646) ^ 0xF09B87AA | (v14 - ((2 * v14) & 0x15A) - 2145513811) ^ 0x801E0EAD;
  LODWORD(v14) = v19 - ((2 * v19) & 0x45C63CB8);
  v20 = byte_10027C960[v18 ^ 0xA0];
  HIDWORD(v4) = v20 ^ 2;
  LODWORD(v4) = (v20 ^ 0x50) << 24;
  v21 = (v4 >> 26) - ((2 * (v4 >> 26)) & 0x62) + 49;
  v22 = (((((v21 ^ ((v21 & 0xFE) >> 1)) ^ 0x9B) - ((2 * (v21 ^ ((v21 & 0xFE) >> 1) ^ 0x9B)) & 0x1A4)) << 16) + 2027028480) ^ 0x78D20000;
  v23 = v13[3];
  v24 = v13[3];
  STACK[0x328] = v23;
  v25 = ((2 * (v23 ^ 0xB8)) & 0xFFFFFFF7) + (v23 ^ 0x9FBCF943);
  LODWORD(v18) = ((2 * (v24 ^ 0x84)) & 0x1AE) + (v24 ^ 0xF7F3E653);
  v26 = (v23 - ((2 * v23) & 0xFFFFFF0F) + 816020615) ^ (-951096618 - v25 - ((1064957038 - 2 * v25) & 0x4F24E13E)) ^ (-508125572 - v18 - ((-270021202 - 2 * v18) & 0xD3856F4A)) ^ 0xFEF3BB39;
  v27 = (v22 - ((2 * v22) & 0x1A1C0000) - 854672884) ^ 0xCD0EBA0C | (v2 + 1804304732) ^ 0x6B8B815C;
  v28 = byte_100266F60[(v26 - ((2 * v26 + 120) & 0xBEB5EC3E) + 1599796827) ^ 0x5F5AF61FLL];
  v29 = *v13;
  STACK[0x3A8] = v29;
  v30 = v28 ^ (v28 >> 5) ^ (v28 >> 4) ^ 0x4B;
  v31 = (v27 - ((2 * v27) & 0xCB953F2) + 106736121) ^ 0x65CA9F9 | (v30 - ((2 * v30) & 0x166) - 2034143309) ^ 0x86C16FB3;
  v32 = v31 - ((2 * v31) & 0xE1194120);
  v33 = byte_100266F60[v29 ^ 0xBC] ^ (byte_100266F60[v29 ^ 0xBC] >> 5) ^ (byte_100266F60[v29 ^ 0xBC] >> 4) ^ 6;
  v34 = (((v33 - ((2 * v33) & 0xD6)) << 24) + 1795162112) ^ 0x6B000000;
  v35 = v13[13];
  STACK[0x368] = v35;
  v36 = v34 - ((2 * v34) & 0x7E000000);
  v37 = byte_100266F60[v35 ^ 0xA1] ^ (byte_100266F60[v35 ^ 0xA1] >> 5) ^ (byte_100266F60[v35 ^ 0xA1] >> 4);
  LODWORD(v35) = ((((v37 ^ 9) - ((2 * v37) & 0x48)) << 16) + 572784640) ^ 0x22240000;
  v38 = (v32 + 1888264336) ^ 0x708CA090 | (v36 - 1085806961) ^ 0xBF47E68F;
  LODWORD(v23) = v38 - ((2 * v38) & 0x436841DA) - 1582030611;
  LODWORD(STACK[0x370]) = v23;
  v39 = v13[14];
  STACK[0x358] = v39;
  v40 = (byte_10025A560[v39 ^ 0x54] - ((2 * byte_10025A560[v39 ^ 0x54] + 18) & 0x1C) - 41) ^ 0xCA;
  v41 = (((v40 - ((2 * v40) & 0x1B6)) << 8) - 923149568) ^ 0xC8F9DB00;
  v42 = v13[7];
  STACK[0x320] = v42;
  LODWORD(v42) = byte_10027C960[v42 ^ 0x7F];
  HIDWORD(v4) = v42 ^ 2;
  LODWORD(v4) = (v42 ^ 0x50) << 24;
  v43 = (v41 - ((2 * v41) & 0x31655600) + 414362554) ^ 0x18B2ABBA | (v35 - ((2 * v35) & 0x41560000) + 1621823510) ^ 0x60AB1016;
  v44 = (v43 - ((2 * v43) & 0x20679DA4) - 801911086) ^ 0xD033CED2 | (v10 + 1187566257) ^ 0x46C8D2B1;
  v45 = v44 - ((2 * v44) & 0xC98CAF0) + 105670008;
  v46 = (v4 >> 26) - ((2 * (v4 >> 26)) & 0xFFFFFFB0) - 40;
  v47 = (((v46 ^ ((v46 & 0xFE) >> 1)) ^ 0x82) - ((2 * (v46 ^ ((v46 & 0xFE) >> 1) ^ 0x82)) & 4) - 1633188350) ^ 0x9EA78602 | (v17 - 329027591) ^ 0xEC636FF9;
  v48 = v13[8];
  STACK[0x380] = v48;
  v49 = byte_10027C960[v48 ^ 0x27];
  HIDWORD(v4) = v49 ^ 2;
  LODWORD(v4) = (v49 ^ 0x50) << 24;
  v50 = v13[10];
  STACK[0x2E8] = v50;
  LOBYTE(v24) = v50 + 113;
  LODWORD(v48) = (v4 >> 26) - ((2 * (v4 >> 26)) & 0xFFFFFFEC) + 118;
  LODWORD(v48) = ((((v48 ^ ((v48 & 0xFE) >> 1) ^ 0x2A) - ((2 * (v48 ^ ((v48 & 0xFE) >> 1) ^ 0x2A)) & 0xFFFFFFF7)) << 24) + 2063597568) ^ 0x7B000000;
  LODWORD(v14) = ((v48 - 1722624139 + (~(2 * v48) | 0xCDFFFFFF)) | 1) ^ 0x9952D775 | (v14 - 488432036) ^ 0xE2E31E5C;
  v51 = byte_10027C960[(v50 + 1564551281 - ((2 * v50) & 0xE2)) ^ 0x5D4128BB];
  HIDWORD(v4) = v51 ^ 2;
  LODWORD(v4) = (v51 ^ 0x50) << 24;
  v52 = (v4 >> 26) - ((2 * (v4 >> 26)) & 0x5E) - 81;
  LODWORD(v48) = ((v52 & 0xFE) >> 1) ^ 0x57;
  v52 ^= 0xFFFFFF89;
  LODWORD(v42) = v48 + v52;
  v53 = (2 * ((v48 & v52) - 2 * (v48 & v52 & 1)) + 14) ^ 2;
  v54 = (v42 ^ 0x1F) + 2 * (v42 & 0x1F) + ((v53 - ((2 * v53 + 40) & 0x3C) - 110) ^ 0x61) - 30;
  v55 = (((((v54 ^ 0xB) + ((2 * v54) & 0x16) - 11) - ((2 * ((v54 ^ 0xB) + ((2 * v54) & 0x16) - 11)) & 0x8C)) << 8) - 796834304) ^ 0xD0814600;
  v56 = (v55 - ((2 * v55) & 0x4AB54800) - 447044597) ^ 0xE55AA40B | (v14 - ((2 * v14) & 0xFF6F7F5C) + 2142748590) ^ 0x7FB7BFAE;
  LODWORD(v42) = v56 - 364051290 + (~(2 * v56) | 0x2B65F6B5);
  LODWORD(STACK[0x2D8]) = v42;
  STACK[0x2E0] = v13;
  v57 = v13[6];
  STACK[0x388] = v57;
  LODWORD(v57) = byte_10027C960[v57 ^ 0xC3];
  HIDWORD(v4) = v57 ^ 2;
  LODWORD(v4) = (v57 ^ 0x50) << 24;
  v58 = v13[5];
  STACK[0x308] = v58;
  LODWORD(v57) = (v4 >> 26) - ((2 * (v4 >> 26)) & 0xFFFFFFEC) + 118;
  LODWORD(v57) = (((((v57 ^ ((v57 & 0xFE) >> 1)) ^ 0x9E) - ((2 * (v57 ^ ((v57 & 0xFE) >> 1) ^ 0x9E)) & 0x1E2)) << 8) + 2104226048) ^ 0x7D6BF100;
  LODWORD(v57) = (v57 - ((2 * v57) & 0x4AAAAE00) + 626349838) ^ 0x2555570E | (v47 - ((2 * v47) & 0x64FFD2B4) - 1300240038) ^ 0xB27FE95A;
  v59 = dword_1002648F0[v37 ^ 0x6C] - ((2 * dword_1002648F0[v37 ^ 0x6C] - 947580636) & 0x8D97CE14) + 713977756;
  v60 = byte_100283410[v58 ^ 0x8C] ^ 0x2C ^ ((v58 ^ 0x8A) - ((2 * (v58 ^ 0x8A) + 2) & 6) - 104);
  v61 = (((v60 - ((2 * v60) & 0x74)) << 16) + 1698299904) ^ 0x653A0000;
  HIDWORD(v4) = v59 ^ 0x2CF;
  LODWORD(v4) = v59 ^ 0x6A6C0000;
  v62 = (v4 >> 16) - ((2 * (v4 >> 16)) & 0x57ABA52E) + 735433367;
  v63 = (v57 - ((2 * v57) & 0x9F2E3B0C) + 1335303558) ^ 0x4F971D86 | (v61 - ((2 * v61) & 0x48C80000) - 1536901691) ^ 0xA464BDC5;
  LODWORD(v58) = v63 - ((2 * v63) & 0x87EE072) - 2076217287;
  LODWORD(STACK[0x360]) = v58;
  LODWORD(v57) = dword_100266010[BYTE1(v45) ^ 0x20];
  HIDWORD(v4) = v57 ^ BYTE1(v45) ^ 0xC4B6FE;
  LODWORD(v4) = v57 ^ 0xFC000000;
  v64 = (v4 >> 24) - ((2 * (v4 >> 24)) & 0x90BEEBEA) - 933267979;
  LODWORD(v57) = dword_100266010[HIBYTE(v45) ^ 0x3B];
  HIDWORD(v4) = v57 ^ HIBYTE(v45) ^ 0xE5;
  LODWORD(v4) = v57 ^ 0xFCC4B600;
  v65 = v62 ^ dword_100266010[v7 ^ 0x3E];
  LODWORD(STACK[0x330]) = v45;
  v66 = v65 ^ v45 ^ v23 ^ ((v4 >> 8) - ((2 * (v4 >> 8)) & 0x69C03ECA) + 887103333) ^ v64;
  LODWORD(STACK[0x2C8]) = v66;
  v67 = v66 ^ 0x92C4000C;
  LODWORD(v29) = v58 ^ v66 ^ 0x92C4000C ^ v42 ^ 0x26CD9E57;
  v68 = dword_100266010[((v29 ^ v45) >> 16) ^ 0x99];
  HIDWORD(v4) = v68 ^ ((v29 ^ v45) >> 16) ^ 0xB647;
  LODWORD(v4) = v68 ^ 0xFCC40000;
  v69 = (v4 >> 16) - ((2 * (v4 >> 16)) & 0x9C12F2C4) + 1309243746;
  LODWORD(STACK[0x318]) = v29 ^ v45 ^ 0x64C2CDE5;
  v70 = ((v29 ^ v45) >> 8);
  v71 = dword_100266010[v70 ^ 0xBE];
  HIDWORD(v4) = v71 ^ v70 ^ 0xC4B660;
  LODWORD(v4) = v71 ^ 0xFC000000;
  v72 = (v4 >> 24) - ((2 * (v4 >> 24)) & 0xD3E966F4) + 1777644410;
  v73 = dword_100284580[((v29 ^ v45) >> 24) ^ 0x9B] - ((2 * dword_100284580[((v29 ^ v45) >> 24) ^ 0x9B] + 1284777362) & 0xCD714AA2) + 218282010;
  v74 = (v73 >> 1) & 0x4750C80A ^ v73;
  HIDWORD(v4) = v74 ^ 0xFFFFFFF1;
  LODWORD(v4) = v74 ^ 0x7C027B00;
  LODWORD(v58) = v58 ^ v67 ^ 0xE74412F1;
  LODWORD(STACK[0x348]) = v58;
  v75 = ((v4 >> 8) - ((2 * (v4 >> 8)) & 0xA8E4FF64) - 730693710) ^ dword_1002632F0[(v29 ^ v45) ^ 0x4D] ^ v67 ^ v69 ^ v72;
  LODWORD(STACK[0x304]) = v75;
  v75 ^= 0x52614F9Du;
  v76 = v58 ^ 0x761FE77C ^ v75;
  LODWORD(v58) = v75;
  LODWORD(STACK[0x2F8]) = v75;
  v77 = v76 - ((2 * v76) & 0x59A30604) + 751928066;
  LODWORD(STACK[0x2CC]) = v29;
  LODWORD(STACK[0x2A8]) = v77 ^ v29;
  v78 = v77 ^ v29 ^ v29 ^ v45 ^ 0x64C2CDE5;
  v79 = dword_100284580[HIBYTE(v78) ^ 0xE4];
  v80 = v79 - ((2 * v79 + 1284777362) & 0x50D54F96) - 827016556;
  v81 = (v80 >> 1) & 0x4750C80A ^ v80;
  HIDWORD(v4) = v81 ^ 0x63;
  LODWORD(v4) = v81 ^ 0x35907900;
  v82 = (v4 >> 8) - ((2 * (v4 >> 8)) & 0x338C61FA);
  v83 = dword_1002648F0[BYTE1(v78) ^ 0x31];
  v84 = v83 - ((2 * v83 + 1199903012) & 0x51FA0280) + 213879250;
  HIDWORD(v4) = v84 ^ 0x5AE485;
  LODWORD(v4) = v84 ^ 0x4000000;
  v85 = (v4 >> 24) - ((2 * (v4 >> 24)) & 0x3C56C942) + 506160289;
  LODWORD(v57) = dword_1002632F0[BYTE2(v78) ^ 0x8E];
  HIDWORD(v4) = v57 ^ 0xBB95;
  LODWORD(v4) = v57 ^ 0x41780000;
  v86 = v78 ^ 0x19923F08;
  LODWORD(STACK[0x2D0]) = v78 ^ 0x19923F08;
  v87 = ((v4 >> 16) - ((2 * (v4 >> 16)) & 0x3B4F0E16) - 1649965301) ^ dword_100266010[(v77 ^ v29 ^ v29 ^ v45 ^ 0xE5) ^ 0x30] ^ v85 ^ v58 ^ (v77 ^ v29 ^ v29 ^ v45 ^ 0xE5) ^ (v82 - 1715064579);
  LODWORD(STACK[0x29C]) = v87;
  LODWORD(v13) = v87 ^ 0xCB9E4D40;
  v88 = v87 ^ 0xCB9E4D40 ^ v29;
  v89 = v88 ^ 0x60EE7E67;
  LODWORD(STACK[0x2C0]) = v88 ^ 0x60EE7E67;
  LODWORD(v58) = v88 ^ v86;
  v90 = v88 ^ v86 ^ 0x1AA78DC3;
  v91 = dword_1002632F0[BYTE1(v90) ^ 0xE0];
  HIDWORD(v4) = v91 ^ 0x78BB95;
  LODWORD(v4) = v91 ^ 0x41000000;
  v92 = (v4 >> 24) - ((2 * (v4 >> 24)) & 0xBB474596) + 1571005131;
  v93 = dword_1002632F0[BYTE3(v58) ^ 0xCD];
  HIDWORD(v4) = v93 ^ 0x95;
  LODWORD(v4) = v93 ^ 0x4178BB00;
  LODWORD(STACK[0x2B0]) = v90;
  v94 = v92 ^ dword_1002632F0[v90 ^ 0x8E] ^ ((v4 >> 8) - ((2 * (v4 >> 8)) & 0x4D634B84) + 649176514);
  v95 = dword_100266010[BYTE2(v90) ^ 0x1B];
  HIDWORD(v4) = v95 ^ BYTE2(v90) ^ 0xB6C5;
  LODWORD(v4) = v95 ^ 0xFCC40000;
  v96 = v94 ^ ((v4 >> 16) - ((2 * (v4 >> 16)) & 0x11D42BEA) + 149558773);
  v97 = v77 ^ 0x370C2585 ^ v96;
  v98 = v97 ^ v89;
  LODWORD(STACK[0x2AC]) = v97;
  v99 = v97 ^ v89 ^ v58 ^ 0xDF8FFF01;
  v100 = dword_1002648F0[v99 ^ 0xB7];
  v101 = dword_100284580[HIBYTE(v99) ^ 0x6F];
  v102 = v101 - ((2 * v101 + 1284777362) & 0xA13F0268) + 1995019261;
  v103 = (v102 >> 1) & 0x4750C80A ^ v102;
  HIDWORD(v4) = v103 ^ 0x96;
  LODWORD(v4) = v103 ^ 0x8935DF00;
  v104 = (v4 >> 8) - ((2 * (v4 >> 8)) & 0xC7112E36) + 1669895963;
  LODWORD(STACK[0x280]) = v99 ^ 0x222DDEC;
  v105 = dword_100284580[((v99 ^ 0x222DDEC) >> 16) ^ 0xC3];
  v106 = v105 - ((2 * v105 + 211035538) & 0x2CD0322A) - 1129174050;
  v107 = (v106 >> 1) & 0x4750C80A ^ v106;
  HIDWORD(v4) = v107 ^ 0x8FB7;
  LODWORD(v4) = v107 ^ 0xC920000;
  v108 = (v4 >> 16) - ((2 * (v4 >> 16)) & 0x102562F4) - 2012040838;
  LODWORD(v48) = dword_1002632F0[((v99 ^ 0xDDEC) >> 8) ^ 0x60];
  HIDWORD(v4) = v48 ^ 0x78BB95;
  LODWORD(v4) = v48 ^ 0x41000000;
  LODWORD(STACK[0x290]) = v96 ^ v13;
  v109 = (v100 - ((2 * v100 + 126161188) & 0x3BE7EA9E) - 2118746655) ^ ((v4 >> 24) - ((2 * (v4 >> 24)) & 0xA3B5C2C6) + 1373299043) ^ v104 ^ v108 ^ v96 ^ v13 ^ 0xE6CD5D71;
  v110 = v109 ^ v77 ^ 0x370C2585 ^ v96;
  LODWORD(STACK[0x2A4]) = v110;
  LODWORD(v23) = v109;
  LODWORD(STACK[0x294]) = v109;
  v111 = v110 ^ 0xEA68FB13;
  v112 = v110 ^ 0xEA68FB13 ^ v58 ^ 0xDF8FFF01;
  v113 = dword_1002648F0[HIBYTE(v112) ^ 0xCB];
  LODWORD(v57) = (2 * v113 - ((4 * v113 + 661524652) & 0x63BA1D4C) + 1167333116) ^ 0x31DD0EA6;
  v114 = v113 + 275410520 + ((v57 - ((2 * v57 + 127668636) & 0x1E25946C) + 48288516) & 0x594FCB8A ^ 0xB6FD35FD);
  v115 = ((2 * v114) & 0xBDD3F7DA) + (v114 ^ 0x5EE9FBED);
  HIDWORD(v4) = v115 + 19;
  LODWORD(v4) = v115 - 1592392685;
  v116 = (v4 >> 8) - ((2 * (v4 >> 8)) & 0x17F84234) + 201072922;
  v117 = dword_1002648F0[BYTE2(v112) ^ 0x93];
  v118 = v117 - 878609370 + ((947580634 - 2 * v117) | 0x304218D9);
  HIDWORD(v4) = v118 ^ 0x1656;
  LODWORD(v4) = v118 ^ 0xCB790000;
  v119 = (v4 >> 16) - ((2 * (v4 >> 16)) & 0xFD733C20) + 2126093840;
  LODWORD(v48) = dword_100284580[BYTE1(v112) ^ 0xFA];
  LODWORD(v48) = v48 - ((2 * v48 + 1284777362) & 0x48676A98) + 1249757205;
  LODWORD(v50) = (v48 >> 1) & 0x4750C80A;
  HIDWORD(v4) = v50 ^ v48 ^ 0xC9E3E6;
  LODWORD(v4) = v50 ^ ~v48;
  v120 = v119 ^ dword_1002632F0[v112 ^ 0xCE] ^ ((v4 >> 24) - ((2 * (v4 >> 24)) & 0x3B42D854) + 497118250) ^ v23 ^ v116;
  LODWORD(STACK[0x254]) = v112;
  HIDWORD(v4) = v112 ^ 0x55555555;
  LODWORD(v4) = v112 ^ 0x9AC2DE80;
  v121 = (v4 >> 6) - ((2 * (v4 >> 6)) & 0xFC80E742) + 2118153121;
  HIDWORD(v4) = v121 ^ 0x8CB783;
  LODWORD(v4) = v121 ^ 0xBFFFFFFF;
  LODWORD(STACK[0x250]) = v98;
  v122 = v98 ^ 0x9DD4A6C0 ^ v111;
  LODWORD(v57) = v111 ^ v120;
  v123 = v120;
  LODWORD(STACK[0x27C]) = v120;
  v124 = v111 ^ v120 ^ 0x5E71DE05;
  LODWORD(STACK[0x278]) = v124 ^ v122;
  v125 = v124;
  LODWORD(STACK[0x284]) = v124;
  LODWORD(STACK[0x28C]) = v122;
  v126 = ((v4 >> 26) - ((2 * (v4 >> 26)) & 0x5A66E9D0) - 1389136664) ^ v124 ^ v122;
  v127 = dword_1002648F0[BYTE1(v126) ^ 0xC6];
  v128 = v127 - ((2 * v127 - 947580636) & 0xF3E933B2) - 575200661;
  HIDWORD(v4) = v128 ^ 0x537C1C;
  LODWORD(v4) = v128 ^ 0xD5000000;
  v129 = (v4 >> 24) - ((2 * (v4 >> 24)) & 0x80A415B2) + 1079118553;
  v130 = dword_100284580[HIBYTE(v126) ^ 0x66];
  v131 = v130 - ((2 * v130 + 211035538) & 0x28AEDDF6) - 1163820604;
  v132 = (v131 >> 1) & 0x4750C80A ^ v131;
  HIDWORD(v4) = v132 ^ 0x5B;
  LODWORD(v4) = v132 ^ 0xFBD7000;
  LODWORD(v48) = dword_1002648F0[v126 ^ 0x98];
  v133 = v129 ^ (v48 - ((2 * v48 - 947580636) & 0xC1225B28) + 1146336806) ^ v123 ^ ((v4 >> 8) - ((2 * (v4 >> 8)) & 0x53467C8E) + 698564167);
  HIDWORD(v4) = v133 ^ 0x2F2B83;
  LODWORD(v4) = v133 ^ 0xFD000000;
  v134 = (v4 >> 23) - ((2 * (v4 >> 23)) & 0x50F944CE) + 679256679;
  HIDWORD(v4) = v134 ^ 0x14F;
  LODWORD(v4) = v134 ^ 0x543F1800;
  v135 = (v4 >> 9) - ((2 * (v4 >> 9)) & 0xB0436582) + 1478603457;
  LODWORD(v42) = v126 ^ 0x11B984;
  LODWORD(STACK[0x288]) = v126 ^ 0x11B984;
  v136 = BYTE2(v126);
  v137 = dword_100266010[v136 ^ 0x8E];
  HIDWORD(v4) = v137 ^ v136 ^ 0xB650;
  LODWORD(v4) = v137 ^ 0xFCC40000;
  LODWORD(v29) = ((v4 >> 16) - ((2 * (v4 >> 16)) & 0x5DB03D4C) - 1361568090) ^ v135;
  v138 = v29 ^ v122 ^ v42;
  v139 = v29 ^ v122;
  LODWORD(STACK[0x274]) = v139;
  v140 = dword_1002632F0[HIBYTE(v138) ^ 0x1A];
  HIDWORD(v4) = v140 ^ 0x95;
  LODWORD(v4) = v140 ^ 0x4178BB00;
  v141 = (v4 >> 8) - ((2 * (v4 >> 8)) & 0x488C49FC);
  v142 = dword_100266010[BYTE1(v138) ^ 0x6F];
  HIDWORD(v4) = v142 ^ BYTE1(v138) ^ 0xC4B6B1;
  LODWORD(v4) = v142 ^ 0xFC000000;
  v143 = (v4 >> 24) - ((2 * (v4 >> 24)) & 0x8D420180) + 1184956608;
  v144 = dword_100284580[BYTE2(v138) ^ 0xA1];
  v145 = v144 - ((2 * v144 + 1284777362) & 0x4AA64332) - 878889886;
  LODWORD(v48) = ((((v145 & 0x8EA19015 ^ 0x4010011) >> (v24 & 1)) - ((2 * ((v145 & 0x8EA19015 ^ 0x4010011) >> (v24 & 1))) & 0x9BE3A02C) + 1576654646) ^ 0x5DF9D736) >> !(v24 & 1);
  v146 = (v48 - ((2 * v48) & 0xBB4B0516) + 1571127947) ^ v145;
  HIDWORD(v4) = v146 ^ 0x3DBA;
  LODWORD(v4) = v146 ^ 0x611C0000;
  v147 = v138 ^ 0x447FEE7D;
  LODWORD(STACK[0x264]) = v138 ^ 0x447FEE7D;
  v148 = dword_100266010[v138 ^ 0x94] ^ (v141 - 1538906882);
  LODWORD(STACK[0x270]) = v29;
  v149 = v148 ^ v29 ^ v138 ^ v143 ^ 0xE0C765AB ^ ((v4 >> 16) - ((2 * (v4 >> 16)) & 0x6F2D21BE) + 932614367);
  v150 = v139 ^ 0x2928E2FA;
  LODWORD(STACK[0x26C]) = v29 ^ v125;
  v151 = v149 ^ v29 ^ v125;
  v152 = v149;
  LODWORD(STACK[0x268]) = v149;
  v153 = v150 ^ v151;
  v154 = v150 ^ v151 ^ v147;
  v155 = v153;
  v156 = dword_100284580[v154 ^ 0xCC];
  v157 = v156 - ((2 * v156 + 211035538) & 0x2A07DC80) - 1152515831;
  v158 = (v157 >> 1) & 0x4750C80A ^ v157 ^ v152;
  HIDWORD(v4) = v158 ^ 0x8EDA60B;
  LODWORD(v4) = v158 ^ 0xBFFFFFFF;
  v159 = (v4 >> 28) - ((2 * (v4 >> 28)) & 0xF27B7046);
  v160 = dword_100284580[HIBYTE(v154) ^ 0xE3];
  v161 = v160 - ((2 * v160 + 211035538) & 0x29AC2DA0) - 1155520103;
  v162 = (v161 >> 1) & 0x4750C80A ^ v161;
  HIDWORD(v4) = (v159 + 2034088003) ^ 7;
  LODWORD(v4) = (v159 + 2034087971) ^ 0x2808F8C0;
  v163 = (v4 >> 4) - ((2 * (v4 >> 4)) & 0x43982016);
  HIDWORD(v4) = v162 ^ 0x70;
  LODWORD(v4) = v162 ^ 0xF7C8000;
  v164 = (v4 >> 8) - ((2 * (v4 >> 8)) & 0xCA860838);
  v165 = dword_100284580[BYTE2(v154) ^ 0xC1];
  v166 = v165 - ((2 * v165 + 211035538) & 0x33271728) - 1075995043;
  v167 = (v166 >> 1) & 0x4750C80A ^ v166;
  v168 = (((v167 ^ 0x1DD34B9E) - (v167 ^ 0x439D536) - ((2 * ((v167 ^ 0x1DD34B9E) - (v167 ^ 0x439D536))) & 0xC198BB4) + 101500378) ^ 0xF9F33A2A) + (v167 ^ 0x1DD34B9E);
  v169 = ((2 * v168) & 0xD5FE5FEE) + (v168 ^ 0x6AFF2FF7);
  HIDWORD(v4) = v169 + 53257;
  LODWORD(v4) = v169 - 1795108855;
  v170 = (v4 >> 16) - ((2 * (v4 >> 16)) & 0x2A675708) + 355707780;
  v171 = v154 ^ 0x6D3663CC;
  LODWORD(STACK[0x25C]) = v154 ^ 0x6D3663CC;
  v172 = dword_1002648F0[BYTE1(v154) ^ 0x61];
  v173 = v172 - ((2 * v172 - 947580636) & 0x8B995C7A) - 1450232113;
  HIDWORD(v4) = v173 ^ 0x6B4BF8;
  LODWORD(v4) = v173 ^ 0xE9000000;
  v174 = (v164 + 1698890780) ^ ((v4 >> 24) - ((2 * (v4 >> 24)) & 0xCE7B0906) - 415398781) ^ (v163 - 1580462069) ^ v170;
  v175 = v174 ^ (315498751 - (v174 ^ 0x5AFE6606) - ((1389892144 - 2 * (v174 ^ 0x5AFE6606)) & 0xD2C42FCE)) ^ ((v174 ^ 0x8C6D90E1) - ((2 * (v174 ^ 0x8C6D90E1) + 2) & 0x27AAB2BE) - 1814734496) ^ 0x92521A6;
  LODWORD(v42) = v175 - ((2 * v175 + 316150320) & 0x259B0E22) - 1137078231;
  v176 = v174 ^ v151;
  v177 = v155;
  LODWORD(STACK[0x258]) = v155;
  v178 = v174 ^ v151 ^ v155;
  v179 = v178 ^ 0x12C3B439;
  LODWORD(v23) = v178 ^ 0x12C3B439 ^ v171;
  v180 = dword_100284580[v178 ^ 0x39 ^ v171 ^ 0x8D];
  v181 = dword_1002632F0[BYTE3(v23) ^ 0x2B];
  HIDWORD(v4) = v181 ^ 0x95;
  LODWORD(v4) = v181 ^ 0x4178BB00;
  v182 = v180 - ((2 * v180 + 1284777362) & 0x96D6491E) + 1907701592;
  v183 = (v4 >> 8) - ((2 * (v4 >> 8)) & 0xD4F4A730) + 1786401688;
  v184 = dword_1002648F0[BYTE2(v23) ^ 0x5E];
  v185 = v184 - ((2 * v184 + 126161188) & 0x12C43E4E) - 316364871;
  HIDWORD(v4) = v185 ^ 0xFAE2;
  LODWORD(v4) = v185 ^ 0x25C50000;
  v186 = (v4 >> 16) - ((2 * (v4 >> 16)) & 0x90DEE9B2) + 1215263961;
  LODWORD(v48) = dword_1002648F0[BYTE1(v23) ^ 0xD4];
  LODWORD(v48) = v48 - 324641370 + ((410709722 - 2 * v48) | 0xEE3855D9);
  HIDWORD(v4) = v48 ^ 0x4430D6;
  LODWORD(v4) = v48 ^ 0x24000000;
  LODWORD(STACK[0x240]) = v42;
  v187 = v182 ^ (v182 >> 1) & 0x4750C80A ^ v183 ^ ((v4 >> 24) - ((2 * (v4 >> 24)) & 0x58C14A5E) - 1402952401) ^ v186 ^ v42 ^ 0x5D91A8F0;
  LODWORD(STACK[0x230]) = v187;
  LODWORD(v48) = v98 ^ 0xA0872416;
  LODWORD(STACK[0x260]) = (v98 ^ 0xA0872416) - (v176 ^ 0xEE1F9D8F) + 191174722 - ((2 * ((v98 ^ 0xA0872416) - (v176 ^ 0xEE1F9D8F))) & 0x16CA44D8);
  v188 = STACK[0x280];
  v189 = STACK[0x2C8];
  v190 = LODWORD(STACK[0x2C8]) ^ 0x5B26F3E1;
  v191 = (((v99 ^ 0xE98DED01) + v190) ^ 0x6C0C70) - ((2 * ((v99 ^ 0xE98DED01) + v190)) & 0xFF27E71E) - 7081072 + ((((2 * LODWORD(STACK[0x280])) ^ 0xD75E61DA) - ((2 * ((2 * LODWORD(STACK[0x280])) ^ 0xD75E61DA)) & 0xDBF3C23C) - 302391009) ^ 0xEDF9E11F);
  LODWORD(STACK[0x2B8]) = ((2 * v191) & 0xB73796F6) + (v191 ^ 0xDB9BCB7B) - ((2 * (((2 * v191) & 0xB73796F6) + (v191 ^ 0xDB9BCB7B)) + 72109992) & 0x399C7312) + 519332189;
  v192 = v13 ^ v77;
  v193 = STACK[0x254];
  v194 = (LODWORD(STACK[0x254]) ^ 0x255CA36C) + (v13 ^ v77 ^ 0x7BA47905);
  HIDWORD(v4) = v178 ^ 0x481F62B4;
  LODWORD(v4) = v176 ^ ~v177;
  v195 = v4 >> 31;
  LODWORD(STACK[0x23C]) = v194 - ((2 * v194) & 0xFF3CBF42);
  v196 = STACK[0x2A8];
  LODWORD(v50) = (LODWORD(STACK[0x2A8]) ^ 0x875D4E89) - 791267652;
  LODWORD(STACK[0x310]) = (v57 ^ 0x670B686E ^ v42) - ((2 * (v57 ^ 0x670B686E ^ v42) + 1796467446) & 0xAA24BA72) + 178016948;
  v197 = STACK[0x278];
  v198 = v48 - (LODWORD(STACK[0x278]) ^ 0xBB914662) - ((2 * (v48 - (LODWORD(STACK[0x278]) ^ 0xBB914662))) & 0xA8D36A8) + 88513364;
  v199 = v77;
  LODWORD(v57) = (v77 ^ 0x3A85D01E) + (v50 ^ 0xBDFF7FF2) + ((2 * v50) & 0x7BFEFFE4) + 1107329038;
  LODWORD(STACK[0x24C]) = v57 - ((2 * v57) & 0xBCDF997E);
  HIDWORD(v4) = v195;
  LODWORD(v4) = (v195 - ((2 * v195) & 0xE70BCE4) + 121134706) ^ 0xD25EA0DC;
  v200 = (v4 >> 1) - ((2 * (v4 >> 1)) & 0x78CE1CB8) - 1134096804;
  v201 = STACK[0x29C];
  LODWORD(v42) = STACK[0x270];
  LODWORD(v57) = (((LODWORD(STACK[0x29C]) ^ 0x16558028) + 1880555384) ^ 0xB35AFEEB) + ((2 * ((LODWORD(STACK[0x29C]) ^ 0x16558028) + 1880555384)) & 0x66B5FDD6) + 1285882133 + (LODWORD(STACK[0x270]) ^ 0x6AE87174);
  LODWORD(STACK[0x2BC]) = v57 - ((2 * v57) & 0x9AB4FB8C) + 1297776070;
  v202 = v151;
  LODWORD(v57) = ((2 * ((v200 ^ 0x32CB0608) + (v151 ^ 0x8430B217))) & 0xFA8D5FFC) + (((v200 ^ 0x32CB0608) + (v151 ^ 0x8430B217)) ^ 0xFD46AFFE);
  v203 = STACK[0x2D8];
  v204 = ((2 * ((LODWORD(STACK[0x2D8]) ^ 0xEB439D13) - (v58 ^ 0xB9540CFE))) & 0xFF6CFE7A) + (((LODWORD(STACK[0x2D8]) ^ 0xEB439D13) - (v58 ^ 0xB9540CFE)) ^ 0xFFB67F3D);
  LODWORD(STACK[0x298]) = v204 - ((2 * v204 + 117313916) & 0x715834A) + 2131348067;
  LODWORD(STACK[0x2A0]) = v57 - ((2 * v57 + 717199866) & 0xCC910A8C) + 2074628675;
  v205 = STACK[0x2A4];
  v206 = v176 ^ 0xE11B29F2 ^ v187;
  LODWORD(v57) = v206 ^ v179;
  v207 = v206;
  LODWORD(STACK[0x210]) = v206;
  LODWORD(v29) = v57 ^ 0x5F9E87D0;
  LODWORD(STACK[0x20C]) = v57 ^ 0x5F9E87D0;
  v208 = STACK[0x330];
  LODWORD(STACK[0x2F0]) = -1901270997 - (LODWORD(STACK[0x330]) ^ 0xA7AE63A1 ^ v57) - ((1509370640 - 2 * (LODWORD(STACK[0x330]) ^ 0xA7AE63A1 ^ v57)) & 0x4362A546);
  LODWORD(STACK[0x2B4]) = (v176 ^ 0xEE1F9D8F) + v190 - ((2 * ((v176 ^ 0xEE1F9D8F) + v190)) & 0x75811C8A) - 1161785787;
  v209 = STACK[0x27C];
  v210 = STACK[0x290];
  v211 = (LODWORD(STACK[0x27C]) ^ 0x7AFB1156) + (LODWORD(STACK[0x290]) ^ 0xECD2550E);
  LODWORD(v48) = v205;
  LODWORD(STACK[0x2F4]) = (LODWORD(STACK[0x304]) ^ 0x734F1C3 ^ v205 ^ 0xDD8B943C) - ((2 * (LODWORD(STACK[0x304]) ^ 0x734F1C3 ^ v205 ^ 0xDD8B943C) - 1836385514) & 0x85C537DE) - 1943529094;
  LODWORD(STACK[0x2D8]) = v203 ^ 0xA4B4850;
  LODWORD(STACK[0x238]) = v189 ^ 0xE34659F9;
  LODWORD(STACK[0x330]) = v208 ^ 0x1AC94C8A;
  v212 = LODWORD(STACK[0x23C]) - 6398047;
  LODWORD(STACK[0x22C]) = v199 ^ v212 ^ 0x4310875C;
  LODWORD(STACK[0x228]) = LODWORD(STACK[0x2B0]) ^ 0x235E3D48;
  LODWORD(STACK[0x220]) = v192 ^ 0xFB09C570;
  LODWORD(STACK[0x2A8]) = v196 ^ 0x20847831;
  LODWORD(STACK[0x218]) = v201 ^ 0x96F83C5D;
  LODWORD(v57) = v188 ^ 0x54984132;
  LODWORD(STACK[0x234]) = v205 ^ 0x871428CC;
  LODWORD(STACK[0x280]) = v197 ^ 0x7DA76D44;
  v612 = (v23 ^ 0x9410F2AA) + (v205 ^ 0x863E9168) - ((2 * ((v23 ^ 0x9410F2AA) + (v205 ^ 0x863E9168))) & 0xE3489B40) + 1906593184;
  LODWORD(STACK[0x214]) = LODWORD(STACK[0x250]) ^ v612 ^ 0xE7866148 ^ 0x4611CFB;
  LODWORD(STACK[0x224]) = v193 ^ 0x24761AC8;
  LODWORD(STACK[0x278]) = v209 ^ 0xBCCD3A70;
  LODWORD(STACK[0x250]) = v212 ^ v42 ^ 0xAD8B3A06;
  v616 = ((2 * v211) & 0xFDAFF342) + (v211 ^ 0xFED7F9A1) - ((2 * (((2 * v211) & 0xFDAFF342) + (v211 ^ 0xFED7F9A1)) - 2101917472) & 0x9ADE437A) + 248170029;
  v213 = STACK[0x2B8];
  HIDWORD(v4) = LODWORD(STACK[0x2B8]) ^ v616 ^ LODWORD(STACK[0x240]) ^ 0x1F99768E;
  LODWORD(v4) = LODWORD(STACK[0x2B8]) ^ v616 ^ LODWORD(STACK[0x240]);
  v214 = v4 >> 30;
  LODWORD(STACK[0x254]) = v202 ^ 0xE799EF5E;
  HIDWORD(v4) = 1 - v214;
  LODWORD(v4) = (v214 - ((2 * v214) & 0x155F5DC4) + 179285730) ^ 0x7DFA72E8;
  LODWORD(STACK[0x23C]) = (v4 >> 2) - ((2 * (v4 >> 2)) & 0xAFC7C0F6) + 1474551931;
  LODWORD(STACK[0x304]) = v213 ^ v616;
  v215 = v213 ^ v616 ^ 0xDC0C6636 ^ v176;
  v216 = v213 ^ v616 ^ 0xA6030913 ^ v23;
  v217 = v213 ^ v616 ^ 0xD8FDB1 ^ v200;
  v218 = (&unk_100259940 - 181383314) ^ v42 ^ 0xBF3A11ED;
  LODWORD(v42) = LODWORD(STACK[0x2AC]) ^ 0x309C42B9;
  v219 = STACK[0x25C];
  v220 = v207 ^ LODWORD(STACK[0x25C]);
  v221 = v29 ^ v220;
  v222 = v29 ^ v220 ^ 0x1BD14932 ^ v612 ^ 0xE7866148;
  LODWORD(STACK[0x290]) = v57 ^ v222;
  LODWORD(STACK[0x27C]) = v210 ^ 0x53E524D1 ^ v222;
  v223 = v42 ^ v222;
  v224 = v198 ^ 0x3D90BE88;
  v225 = STACK[0x310];
  v226 = LODWORD(STACK[0x310]) ^ v198 ^ 0x3D90BE88;
  v227 = v226 ^ LODWORD(STACK[0x294]);
  v228 = v227 ^ 0xAAF7104D;
  v229 = STACK[0x264];
  v230 = (v218 ^ LODWORD(STACK[0x264])) + (v227 ^ 0x11B8D1F7);
  LOBYTE(v205) = v230 + 50;
  v231 = v230 + 399156274 - 2 * v230 - 1252541406;
  v232 = LODWORD(STACK[0x284]) ^ 0x3174F3F7;
  v233 = v48 ^ 0xC8EA7342 ^ (LODWORD(STACK[0x24C]) - 563098433);
  v234 = v233 ^ LODWORD(STACK[0x348]);
  v235 = LODWORD(STACK[0x370]) ^ 0x7A47C5BD;
  v236 = LODWORD(STACK[0x360]) ^ 0x31C2D64B;
  LODWORD(v13) = v212 ^ 0xDE4C61FA ^ LODWORD(STACK[0x298]);
  LODWORD(STACK[0x29C]) = v212 ^ 0xDE4C61FA;
  LODWORD(v13) = v29 ^ v220 ^ 0x1BD14932 ^ v13;
  v237 = v13 ^ LODWORD(STACK[0x2D8]);
  v238 = v13 ^ LODWORD(STACK[0x330]);
  v239 = v13 ^ v235;
  v240 = v13 ^ v236;
  v241 = (v205 & 1) == 0;
  if (v205)
  {
    v242 = v237;
  }

  else
  {
    v242 = v238;
  }

  LODWORD(STACK[0x330]) = v242;
  if (v241)
  {
    v243 = v237;
  }

  else
  {
    v243 = v240;
  }

  LODWORD(STACK[0x360]) = v243;
  if (v241)
  {
    v244 = v240;
  }

  else
  {
    v244 = v239;
  }

  LODWORD(STACK[0x2D8]) = v244;
  if (v241)
  {
    v245 = v239;
  }

  else
  {
    v245 = v238;
  }

  LODWORD(STACK[0x348]) = v245;
  v246 = v234 & 0xFFFFFFFE ^ 0x78FD75A8 ^ ((v234 & 1 ^ 0x697E6D37) + 2 * (v234 & 1) + 1573540021);
  v247 = LODWORD(STACK[0x238]) ^ v233;
  v248 = LODWORD(STACK[0x2CC]) ^ 0x6CC659B9 ^ v233;
  v249 = LODWORD(STACK[0x318]) ^ 0xA7C8DDD ^ v233;
  v250 = LODWORD(STACK[0x2C0]) ^ 0x805091ED;
  v251 = LODWORD(STACK[0x2D0]) ^ 0xE2740DCA;
  v252 = LODWORD(STACK[0x2F8]) ^ 0xA9398DB2;
  v253 = LODWORD(STACK[0x28C]) ^ 0xF2675AEE;
  LODWORD(STACK[0x2B0]) = v226;
  v254 = LODWORD(STACK[0x234]) ^ v226;
  v255 = LODWORD(STACK[0x224]) ^ v226;
  v256 = v253 ^ v226;
  if (v241)
  {
    v257 = v256;
  }

  else
  {
    v257 = LODWORD(STACK[0x234]) ^ v226;
  }

  LODWORD(STACK[0x28C]) = v257;
  if (v241)
  {
    v258 = v255;
  }

  else
  {
    v258 = v256;
  }

  LODWORD(STACK[0x2D0]) = v258;
  if (v241)
  {
    v259 = v254;
  }

  else
  {
    v259 = v228;
  }

  LODWORD(STACK[0x2C0]) = v259;
  if (v241)
  {
    v260 = v228;
  }

  else
  {
    v260 = v255;
  }

  LODWORD(STACK[0x284]) = v260;
  v261 = LODWORD(STACK[0x288]) ^ 0x63B4A898;
  v262 = v213 ^ v224;
  LODWORD(STACK[0x240]) = v213 ^ v224;
  v263 = LODWORD(STACK[0x280]) ^ v213 ^ v224;
  v264 = LODWORD(STACK[0x278]) ^ v213 ^ v224;
  if (v241)
  {
    v265 = v263;
  }

  else
  {
    v265 = v232 ^ v262;
  }

  LODWORD(STACK[0x280]) = v265;
  if (v241)
  {
    v266 = v232 ^ v262;
  }

  else
  {
    v266 = v264;
  }

  LODWORD(STACK[0x294]) = v266;
  v267 = v261 ^ v262;
  if (v241)
  {
    v268 = v264;
  }

  else
  {
    v268 = v267;
  }

  LODWORD(STACK[0x270]) = v268;
  if (v241)
  {
    v269 = v267;
  }

  else
  {
    v269 = v263;
  }

  LODWORD(STACK[0x278]) = v269;
  LODWORD(STACK[0x2C8]) = v212;
  v270 = LODWORD(STACK[0x268]) ^ 0xB80F7C2F;
  v271 = LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x2F0]);
  v272 = v212 ^ LODWORD(STACK[0x26C]) ^ 0xBDED4F24 ^ LODWORD(STACK[0x2F0]);
  v273 = v212 ^ LODWORD(STACK[0x274]) ^ 0xE158A4B5 ^ LODWORD(STACK[0x2F0]);
  v274 = v212 ^ v229 ^ 0xE7816485 ^ LODWORD(STACK[0x2F0]);
  if (v241)
  {
    v275 = v212 ^ LODWORD(STACK[0x274]) ^ 0xE158A4B5 ^ LODWORD(STACK[0x2F0]);
  }

  else
  {
    v275 = v212 ^ LODWORD(STACK[0x26C]) ^ 0xBDED4F24 ^ LODWORD(STACK[0x2F0]);
  }

  LODWORD(STACK[0x274]) = v275;
  if (v241)
  {
    v276 = v274;
  }

  else
  {
    v276 = v273;
  }

  LODWORD(STACK[0x268]) = v276;
  if (v241)
  {
    v277 = v272;
  }

  else
  {
    v277 = v271;
  }

  LODWORD(STACK[0x264]) = v277;
  if (v241)
  {
    v278 = v271;
  }

  else
  {
    v278 = v274;
  }

  LODWORD(STACK[0x26C]) = v278;
  v279 = LODWORD(STACK[0x258]) ^ 0xCD927544;
  v615 = LODWORD(STACK[0x2B4]) ^ 0x3D828DB7;
  LODWORD(STACK[0x224]) = v225 ^ v615;
  v280 = LODWORD(STACK[0x254]) ^ v225 ^ v615;
  v281 = v270 ^ v225 ^ v615;
  v282 = v279 ^ v225 ^ v615;
  if (v241)
  {
    v283 = LODWORD(STACK[0x254]) ^ v225 ^ v615;
  }

  else
  {
    v283 = v281;
  }

  LODWORD(STACK[0x250]) = v283;
  if (v241)
  {
    v284 = v282;
  }

  else
  {
    v284 = v280;
  }

  LODWORD(STACK[0x24C]) = v284;
  if (v241)
  {
    v285 = v219 ^ 0xA55EAE58 ^ v225 ^ v615;
  }

  else
  {
    v285 = v282;
  }

  LODWORD(STACK[0x238]) = v285;
  if (v241)
  {
    v286 = v281;
  }

  else
  {
    v286 = v219 ^ 0xA55EAE58 ^ v225 ^ v615;
  }

  LODWORD(STACK[0x234]) = v286;
  v287 = LODWORD(STACK[0x23C]) ^ 0xE98474F4;
  if (v241)
  {
    v288 = v217;
  }

  else
  {
    v288 = v215;
  }

  LODWORD(STACK[0x254]) = v288;
  if (v241)
  {
    v289 = v216;
  }

  else
  {
    v289 = v217;
  }

  LODWORD(STACK[0x25C]) = v289;
  if (v241)
  {
    v290 = v287;
  }

  else
  {
    v290 = v216;
  }

  LODWORD(STACK[0x23C]) = v290;
  if (v241)
  {
    v291 = v215;
  }

  else
  {
    v291 = v287;
  }

  LODWORD(STACK[0x258]) = v291;
  v292 = STACK[0x2F4];
  v293 = LODWORD(STACK[0x2BC]) ^ LODWORD(STACK[0x2F4]);
  LODWORD(STACK[0x288]) = v293;
  v294 = v293 ^ v225;
  v295 = v294 ^ 0x6D37D854 ^ v220;
  v296 = v294 ^ 0x42A6DA2D ^ LODWORD(STACK[0x20C]);
  v297 = v294 ^ 0x2CFF480E ^ LODWORD(STACK[0x230]);
  v298 = v294 ^ 0xC7E48B70 ^ LODWORD(STACK[0x210]);
  v613 = LODWORD(STACK[0x260]) + 2602;
  v299 = LODWORD(STACK[0x22C]) ^ v613 ^ 0xC7E8802E;
  v300 = LODWORD(STACK[0x2A0]) ^ v292;
  LODWORD(STACK[0x260]) = v300;
  v301 = LODWORD(STACK[0x228]) ^ v300;
  v302 = LODWORD(STACK[0x220]) ^ v300;
  v303 = v613 ^ 0xC7E8802E ^ v212 ^ 0xDE4C61FA;
  LODWORD(STACK[0x370]) = v303;
  v304 = LODWORD(STACK[0x218]) ^ v300;
  v305 = LODWORD(STACK[0x214]) ^ v221;
  v306 = v250 ^ v300;
  if (v241)
  {
    v307 = LODWORD(STACK[0x2A8]) ^ v303;
  }

  else
  {
    v307 = v299;
  }

  LODWORD(STACK[0x318]) = v307;
  if (v241)
  {
    v308 = v246;
  }

  else
  {
    v308 = v247;
  }

  if (v241)
  {
    v309 = v249;
  }

  else
  {
    v309 = v248;
  }

  if (v241)
  {
    v310 = v301;
  }

  else
  {
    v310 = v306;
  }

  LODWORD(STACK[0x22C]) = v310;
  if (v241)
  {
    v311 = v223;
  }

  else
  {
    v311 = STACK[0x27C];
  }

  if (v241)
  {
    v312 = v302;
  }

  else
  {
    v312 = v304;
  }

  LODWORD(STACK[0x228]) = v312;
  if (v241)
  {
    v313 = STACK[0x290];
  }

  else
  {
    v313 = v305;
  }

  if (v241)
  {
    v314 = v297;
  }

  else
  {
    v314 = v295;
  }

  LODWORD(STACK[0x230]) = v314;
  if (v241)
  {
    v315 = v296;
  }

  else
  {
    v315 = v298;
  }

  if ((v231 & 2) != 0)
  {
    v316 = v308;
  }

  else
  {
    v316 = v309;
  }

  LODWORD(STACK[0x2F8]) = v316;
  v317 = byte_10025A560[STACK[0x2E8] ^ 0xA3];
  v318 = (v317 - ((2 * v317 - 110) & 0xC6) - 84) ^ 0x8D;
  v319 = (((v318 - ((2 * v318) & 0xD6)) << 8) - 1764267264) ^ 0x96D76B00;
  v320 = ((2 * STACK[0x320]) & 0x1AE) + (STACK[0x320] ^ 0xFBF8EAD7);
  v321 = ((2 * (STACK[0x320] ^ 0xFFFFFFFC)) & 0x12E) + (STACK[0x320] ^ 0x6FB3E70B);
  v322 = byte_10025A560[*(STACK[0x2E0] + 2) ^ 0xA6];
  v323 = (v320 + 67573033) ^ (-1929493319 - v320 - ((938595758 - 2 * v320) & 0x220AB3C4)) ^ (-1713945852 - v321 - ((1600639078 - 2 * v321) & 0x5446B5A2)) ^ 0xBB260333;
  v324 = v323 - ((2 * v323) & 0x9E6E7F84) - 818462782;
  v325 = ((v324 ^ 0xCF373FC2) - 748330315 - ((2 * (v324 ^ 0xCF373FC2) + 312) & 0xA6CAC566) + 154) ^ 0xD36562B5;
  v326 = (v322 - ((2 * v322 - 110) & 0xF0) + 65) ^ 0x20;
  v327 = (((v326 - ((2 * v326) & 0x176)) << 8) - 1997096192) ^ 0x88F6BB00;
  v328 = (v324 ^ 0xC2) - ((2 * (v324 ^ 0xC2) + 98) & 0xC3);
  v329 = (v327 - ((2 * v327) & 0x78CC00) - 1069783341) ^ 0xC03C66D3 | ((byte_10025A560[STACK[0x328] ^ 0xB5] - 55) - ((2 * (byte_10025A560[STACK[0x328] ^ 0xB5] - 55)) & 0x1C0) + 1353981152) ^ 0x50B41CE0;
  v330 = v329 - ((2 * v329) & 0x3D7BC3DC);
  v331 = byte_10027C960[STACK[0x358] ^ 0x4F];
  HIDWORD(v332) = v331 ^ 2;
  LODWORD(v332) = (v331 ^ 0x50) << 24;
  v333 = (v332 >> 26) - ((2 * (v332 >> 26)) & 0xFFFFFFB6) - 37;
  v334 = v333 ^ ((v333 & 0xFE) >> 1);
  v335 = ((((v334 ^ 0x97) - ((2 * (v334 ^ 0x97)) & 0x172)) << 8) - 23086848) ^ 0xFE9FB900;
  v336 = ((*(STACK[0x2E0] + 15) ^ 0x5B) - ((2 * (*(STACK[0x2E0] + 15) ^ 0x5B) + 10) & 0x14) - 97) ^ byte_100283410[*(STACK[0x2E0] + 15) ^ 0x5DLL];
  v337 = ((STACK[0x368] ^ 0x74) - ((2 * (STACK[0x368] ^ 0x74) + 42) & 0x396) - 32) ^ byte_100283410[STACK[0x368] ^ 0x72];
  v338 = (v335 - ((2 * v335) & 0x3FA20E00) + 1607534565) ^ 0x5FD107E5 | ((v336 ^ 0x9C) - ((2 * (v336 ^ 0x9C)) & 0x142) + 1003903137) ^ 0x3BD658A1;
  v339 = ((((v337 ^ 0x3B) - ((2 * (v337 ^ 0x3B)) & 0x1E6)) << 16) + 183697408) ^ 0xAF30000;
  v340 = v339 - ((2 * v339) & 0x7A5C0000);
  v341 = byte_10025A560[STACK[0x308] ^ 0x8A];
  v342 = (v341 - ((2 * v341 - 110) & 0xC8) + 45) ^ 0x5F;
  v343 = (((v342 - ((2 * v342) & 0x1C)) << 16) - 1056047104) ^ 0xC10E0000;
  v344 = byte_100283410[STACK[0x398] ^ 0x63] ^ 0xEC ^ ((STACK[0x398] ^ 0x65) - ((2 * (STACK[0x398] ^ 0x65) + 42) & 0xA0) - 27);
  v345 = (v344 - ((2 * v344) & 0xB0) + 2070262616) ^ 0x7B65B358 | (v319 - ((2 * v319) & 0x4B324E00) - 442947840) ^ 0xE5992700;
  v346 = byte_10025A560[*(STACK[0x2E0] + 9) ^ 0x18];
  v347 = v346 - ((2 * v346 + 18) & 0x40);
  v348 = byte_100283410[v325] ^ (v328 + 18) ^ 0x77;
  v349 = (v343 - ((2 * v343) & 0x65440000) + 849509284) ^ 0x32A27BA4 | (v348 - ((2 * v348) & 0x68) - 135165900) ^ 0xF7F18834;
  v350 = v349 - ((2 * v349) & 0x61C9EEF6);
  v351 = (((((v347 - 23) ^ 0x4F) - ((2 * ((v347 - 23) ^ 0x4F)) & 0x146)) << 16) + 346226688) ^ 0x14A30000;
  v352 = v351 - 1406054776 + (~(2 * v351) | 0xA79DFFFF);
  v353 = byte_10025A560[*(STACK[0x2E0] + 12) ^ 0x19];
  v354 = (2 * v353 - ((4 * v353 - 32) & 0xFFFFFFA0) + 65) ^ 0xFFFFFFD1;
  v355 = v353 + ((v354 - ((2 * v354 + 4) & 0x30) + 58) & 0x28 ^ 0xFFFFFFF7);
  v356 = byte_10025A560[STACK[0x380] ^ 0x28];
  v357 = ((v355 - 34) ^ 0xFFFFFF8E) + ((2 * (v355 - 34)) & 0x1C) + 114;
  v358 = (((v357 - ((2 * v357) & 0x68)) << 24) - 1275068416) ^ 0xB4000000;
  v359 = v358 - (v358 >> 28 << 29);
  v360 = (v352 + 1) ^ 0xAC314E88 | (v345 - ((2 * v345) & 0x3D5F1CA0) + 1588563536) ^ 0x5EAF8E50;
  v361 = v360 - ((2 * v360) & 0x3223255C);
  v362 = (v356 - ((2 * v356 + 18) & 0x46) + 108) ^ 0xDB;
  v363 = (((v362 - ((2 * v362) & 0xFFFFFFFB)) << 24) + 2097152000) ^ 0x7D000000;
  v364 = v363 - ((2 * v363) & 0xAAAAAAAA);
  v365 = (v359 + 1882116839) ^ 0x702ED2E7 | (v340 - 47279435) ^ 0xFD2E92B5;
  v366 = (v365 - ((2 * v365) & 0xB8AFC096) + 1549262923) ^ 0x5C57E04B | (v338 - ((2 * v338) & 0x3C706922) - 1640483695) ^ 0x9E383491;
  v367 = v366 - ((2 * v366) & 0x2E7D3284) - 1757505214;
  v368 = byte_10027C960[STACK[0x3A0] ^ 0xE0];
  HIDWORD(v332) = v368 ^ 2;
  LODWORD(v332) = (v368 ^ 0x50) << 24;
  v369 = (v332 >> 26) - ((2 * (v332 >> 26)) & 0x52) + 41;
  v370 = (((((v369 ^ ((v369 & 0xFE) >> 1)) ^ 0xE7) - ((2 * (v369 ^ ((v369 & 0xFE) >> 1) ^ 0xE7)) & 0x1B8)) << 16) - 170131456) ^ 0xF5DC0000;
  v371 = v370 - ((2 * v370) & 0x656A0000);
  v372 = (v361 + 1494323886) ^ 0x591192AE | (v364 + 1441262267) ^ 0x55E7EABB;
  v373 = byte_10025A560[*(STACK[0x2E0] + 4) ^ 0x4ALL];
  v374 = (v371 - 1296749428) ^ 0xB2B52C8C | (v330 - 1631723026) ^ 0x9EBDE1EE;
  v375 = (((((v373 - ((2 * v373 + 18) & 0x26) + 92) ^ 0xF1) - ((2 * ((v373 - ((2 * v373 + 18) & 0x26) + 92) ^ 0xF1)) & 0x56)) << 24) + 721420288) ^ 0x2B000000;
  v376 = (v375 - ((2 * v375) & 0x6C000000) - 1237866488) ^ 0xB637A808 | (v350 + 1894053755) ^ 0x70E4F77B;
  v377 = byte_100283410[STACK[0x388] ^ 0xC8] ^ 0xB9 ^ ((STACK[0x388] ^ 0xCE) - ((2 * (STACK[0x388] ^ 0xCE) + 42) & 0x66) + 72);
  v378 = (((v377 - ((2 * v377) & 0x1D4)) << 8) + 1565190656) ^ 0x5D4AEA00;
  v379 = (v376 - ((2 * v376) & 0xE607F9DE) + 1929641199) ^ 0x7303FCEF | (v378 - ((2 * v378) & 0x1D4A3800) - 1901782012) ^ 0x8EA51C04;
  v380 = byte_100266F60[STACK[0x3A8] ^ 0xDB];
  v381 = v380 ^ 0x4E ^ (v380 >> 4) ^ (((v380 ^ 0x4E) >> 5) | 0xA0) ^ 0xC6;
  v382 = (((v381 - ((2 * v381) & 0x2E)) << 24) - 1761607680) ^ 0x97000000;
  v383 = dword_100284580[v337 ^ 0x2B];
  v384 = v383 - ((2 * v383 + 1284777362) & 0xB65F2AEE) + 24750144;
  v385 = (v382 - ((2 * v382) & 0x88888888) + 1142050753) ^ 0x44124FC1 | (v374 - ((2 * v374) & 0xAD92A5E) - 982739665) ^ 0xC56C952F;
  v386 = (v384 >> 1) & 0x4750C80A ^ v384;
  HIDWORD(v332) = v386 ^ 0xC3D5;
  LODWORD(v332) = v386 ^ 0x47D50000;
  v387 = (v332 >> 16) - ((2 * (v332 >> 16)) & 0x10F7DD92) - 2005143863;
  v388 = dword_1002648F0[v357 ^ 0x55];
  v389 = v388 + 2001005665 + ((947580634 - 2 * v388) | 0xD8FB3863);
  HIDWORD(v332) = v389 ^ 0xB;
  LODWORD(v332) = v389 ^ 0xBF258600;
  v390 = (v332 >> 8) - ((2 * (v332 >> 8)) & 0x1C7D14B0) - 1908503976;
  v391 = dword_1002632F0[v334 ^ 0xB0];
  HIDWORD(v332) = v391 ^ 0x78BB95;
  LODWORD(v332) = v391 ^ 0x41000000;
  v392 = dword_100266010[v336 ^ 0x70] ^ ((v332 >> 24) - ((2 * (v332 >> 24)) & 0xAB251A56) + 1435667755) ^ v387 ^ (v385 - ((2 * v385) & 0x65F6195A) - 1292170067) ^ v390 ^ 0xA54B5949 ^ v367;
  v393 = (v372 - ((2 * v372) & 0xBC84A210) - 566079224) ^ 0x8BAED4A7;
  v394 = v392 ^ (v379 - ((2 * v379) & 0x877E782) - 2076445759);
  v395 = v393 ^ v394;
  v396 = v395 ^ v367;
  v397 = dword_100266010[((v395 ^ v367) >> 16) ^ 0xFE];
  v398 = __PAIR64__(v397 ^ ((v395 ^ v367) >> 16) ^ 0xB620u, v397 ^ 0xFCC40000) >> 16;
  if ((v231 & 2) != 0)
  {
    v399 = v311;
  }

  else
  {
    v399 = v313;
  }

  LODWORD(STACK[0x220]) = v399;
  v400 = dword_100284580[v396 ^ 0xF8];
  v401 = v400 - ((2 * v400 + 1284777362) & 0xA456754C) + 2020953455;
  v402 = dword_1002632F0[HIBYTE(v396) ^ 0x4C];
  v403 = ((~v402 << 31) - 2005467328) ^ 0x8876FF40;
  v404 = (v402 >> 1) ^ 0x4A;
  v402 >>= 1;
  v405 = ((v404 | v403) - 346006737 - 2 * (v404 & 0x3F ^ v402 & 0x10)) ^ 0xEB605B2F;
  v406 = (v405 | v402 & 0x7FFFFF80 ^ 0x20BC5D80) - 2 * ((v405 | v402 & 0x7FFFFF80 ^ 0x20BC5D80) & 0x6F908F57 ^ v405 & 0x11) + 1871744838;
  v407 = ((v406 << 25) ^ 0x76000000) - ((2 * ((v406 << 25) ^ 0x76000000)) & 0x6C000000) - 1222763046;
  v408 = ((((v406 >> 7) ^ 0x1F87D80) - ((v406 >> 7) ^ 0xFADF211E) - ((2 * (((v406 >> 7) ^ 0x1F87D80) - ((v406 >> 7) ^ 0xFADF211E))) & 0xBEF53F8) + 1710729724) ^ 0x9A085600) + ((v406 >> 7) ^ 0x1F87D80);
  v409 = v408 - ((2 * v408) & 0x92480180) - 920387392;
  v410 = v396 ^ 0xB7279692;
  v411 = BYTE1(v396);
  v412 = dword_100266010[v411 ^ 0xFA];
  HIDWORD(v413) = v412 ^ v411 ^ 0xC4B624;
  LODWORD(v413) = v412 ^ 0xFC000000;
  v414 = v401 ^ (v401 >> 1) & 0x4750C80A ^ v392 ^ v407 ^ (v398 + 999678719 + (~(2 * v398) | 0x88D43A03)) ^ ((v413 >> 24) - ((2 * (v413 >> 24)) & 0xE063E882) - 265161663) ^ 0x52F0BDD ^ v409;
  v415 = v394 ^ 0xE4C0E312 ^ v414;
  LODWORD(STACK[0x3A0]) = v415;
  v416 = v415 ^ v395;
  v417 = v416 ^ v410;
  v418 = v416;
  LODWORD(STACK[0x210]) = v416;
  v419 = dword_1002648F0[((v416 ^ v410) >> 16) ^ 0xAB];
  v420 = v419 - ((2 * v419 + 126161188) & 0xAA0D43E) - 384634191;
  HIDWORD(v413) = v420 ^ 0x8FDA;
  LODWORD(v413) = v420 ^ 0x29F70000;
  v421 = (v413 >> 16) - ((2 * (v413 >> 16)) & 0x86CDFB88) - 1016660540;
  v422 = dword_100266010[HIBYTE(v417) ^ 0x38];
  HIDWORD(v413) = v422 ^ HIBYTE(v417) ^ 0xE6;
  LODWORD(v413) = v422 ^ 0xFCC4B600;
  v423 = (v413 >> 8) - ((2 * (v413 >> 8)) & 0x12E9776C) + 158645174;
  v424 = dword_100266010[BYTE1(v417) ^ 0x85];
  HIDWORD(v413) = v424 ^ BYTE1(v417) ^ 0xC4B65B;
  LODWORD(v413) = v424 ^ 0xFC000000;
  v425 = v421 ^ dword_1002632F0[v417 ^ 0x11] ^ v423 ^ ((v413 >> 24) - ((2 * (v413 >> 24)) & 0x2939BCAE) - 1801658793);
  v426 = v425 ^ v394;
  v427 = v425 ^ v394 ^ 0x3D6378C2;
  v428 = v427 ^ v410;
  v429 = dword_100284580[((v427 ^ v410) >> 16) ^ 0xC7];
  v430 = STACK[0x330];
  if ((v231 & 2) != 0)
  {
    v430 = STACK[0x2D8];
  }

  LODWORD(STACK[0x308]) = v430;
  v431 = STACK[0x360];
  if ((v231 & 2) == 0)
  {
    v432 = STACK[0x348];
  }

  v433 = STACK[0x228];
  if ((v231 & 2) == 0)
  {
    v434 = STACK[0x22C];
  }

  v435 = STACK[0x2D0];
  if ((v231 & 2) != 0)
  {
    v435 = STACK[0x2C0];
  }

  LODWORD(STACK[0x328]) = v435;
  if ((v231 & 2) != 0)
  {
    v436 = STACK[0x28C];
  }

  else
  {
    v436 = STACK[0x284];
  }

  LODWORD(STACK[0x2E8]) = v436;
  v437 = STACK[0x294];
  if ((v231 & 2) != 0)
  {
    v437 = STACK[0x278];
  }

  LODWORD(STACK[0x398]) = v437;
  v438 = STACK[0x280];
  if ((v231 & 2) == 0)
  {
    v438 = STACK[0x270];
  }

  LODWORD(STACK[0x3A8]) = v438;
  v439 = STACK[0x274];
  if ((v231 & 2) == 0)
  {
    v439 = STACK[0x26C];
  }

  LODWORD(STACK[0x2E0]) = v439;
  v440 = STACK[0x268];
  if ((v231 & 2) == 0)
  {
    v440 = STACK[0x264];
  }

  LODWORD(STACK[0x358]) = v440;
  v441 = STACK[0x250];
  if ((v231 & 2) == 0)
  {
    v441 = STACK[0x238];
  }

  LODWORD(STACK[0x2A8]) = v441;
  v442 = STACK[0x24C];
  if ((v231 & 2) != 0)
  {
    v443 = STACK[0x234];
  }

  v444 = STACK[0x254];
  if ((v231 & 2) != 0)
  {
    v444 = STACK[0x23C];
  }

  LODWORD(STACK[0x2CC]) = v444;
  v445 = STACK[0x25C];
  if ((v231 & 2) == 0)
  {
    v445 = STACK[0x258];
  }

  LODWORD(STACK[0x2AC]) = v445;
  v446 = v429 - ((2 * v429 + 1284777362) & 0xAED3D2E0) - 38536135;
  v447 = (-1518272446 - v429 - ((-1284777362 - 2 * v429) & 0x97962616)) ^ v446 ^ 0xB03D00A9 ^ (-963995270 - (v446 ^ 0x4E8377D8) - ((869612880 - 2 * (v446 ^ 0x4E8377D8)) & 0x593FF5A4));
  v448 = (v447 - ((2 * v447 + 869612880) & 0xD9D05E5C) + 114478550) ^ (v446 >> 1) & 0x4750C80A;
  HIDWORD(v449) = v448 ^ 0xEF26;
  LODWORD(v449) = v448 ^ 0xEFF80000;
  v450 = dword_1002632F0[HIBYTE(v428) ^ 0xBD];
  v451 = (v449 >> 16) - ((2 * (v449 >> 16)) & 0x232E6CDC);
  HIDWORD(v449) = v450 ^ 0x95;
  LODWORD(v449) = v450 ^ 0x4178BB00;
  v452 = (v449 >> 8) - ((2 * (v449 >> 8)) & 0xEE3B7E94) + 1998438218;
  v453 = dword_100266010[BYTE1(v428) ^ 0x8D];
  HIDWORD(v449) = v453 ^ BYTE1(v428) ^ 0xC4B653;
  LODWORD(v449) = v453 ^ 0xFC000000;
  LODWORD(STACK[0x368]) = v428;
  v454 = v452 ^ dword_1002632F0[v428 ^ 0x7D];
  v455 = v425 ^ v414;
  LODWORD(STACK[0x388]) = v455;
  v456 = v454 ^ v455 ^ ((v449 >> 24) - ((2 * (v449 >> 24)) & 0x72E9BE70) - 1183523016) ^ (v451 + 295122542);
  v457 = v456 ^ v426;
  LODWORD(STACK[0x380]) = v427 ^ v418;
  v458 = v456 ^ v426 ^ v427 ^ v418;
  v459 = v458 ^ 0x156AC539 ^ v428;
  v460 = dword_100266010[BYTE1(v459) ^ 0x81];
  HIDWORD(v449) = v460 ^ BYTE1(v459) ^ 0xC4B65F;
  LODWORD(v449) = v460 ^ 0xFC000000;
  v461 = (v449 >> 24) - ((2 * (v449 >> 24)) & 0x7532936) - 2086038373;
  v462 = dword_100284580[BYTE2(v459) ^ 0x25];
  v463 = v462 - ((2 * v462 + 1284777362) & 0xB6672326) - 2122472356;
  v464 = (v463 >> 1) & 0x4750C80A ^ v463;
  HIDWORD(v449) = v464 ^ 0xC733;
  LODWORD(v449) = v464 ^ 0x87C90000;
  v465 = (v449 >> 16) - ((2 * (v449 >> 16)) & 0xB474DE32) - 633704679;
  v466 = dword_100284580[((HIBYTE(v459) ^ 0xC5) - 393992562 - ((2 * (HIBYTE(v459) ^ 0xC5)) & 0x55555555) + 28) ^ 0xE884268E];
  v467 = v466 - ((2 * v466 + 211035538) & 0x348B2770) + 1083156097;
  v468 = (v467 >> 1) & 0x4750C80A ^ v467;
  HIDWORD(v449) = v468 ^ 0x18;
  LODWORD(v449) = v468 ^ 0xC6AFC500;
  v469 = dword_100266010[v458 ^ 0x39 ^ v428 ^ 0x9E] ^ v465 ^ v456 ^ v458 ^ 0x39 ^ v428 ^ v461 ^ 0xEC87FAAF ^ ((v449 >> 8) - ((2 * (v449 >> 8)) & 0xB0DE83B6) + 1483686363);
  v470 = v469 ^ v457;
  LODWORD(STACK[0x20C]) = v470 ^ 0x91827EBA;
  v471 = v470 ^ 0x91827EBA ^ v458 ^ 0x156AC539;
  v472 = v471 ^ 0x282F930B;
  if ((v417 & 0xFF00) == 0xBC00)
  {
    v473 = v459 & 0x100 ^ 0xD5FB25F7;
  }

  else
  {
    v473 = v459 & 0x100 ^ 0x22B4903 ^ v471;
  }

  v241 = ((v473 ^ 0xD5FB25F7) & v472) == ((2 * ((v473 ^ 0xD5FB25F7) & v472)) & 0xE7A037E2);
  v474 = (((v315 ^ 0x9BFD1C85) + (LODWORD(STACK[0x230]) ^ 0x9BFD1C85)) ^ 0xB7FFBDE9) + ((2 * ((v315 ^ 0x9BFD1C85) + (LODWORD(STACK[0x230]) ^ 0x9BFD1C85))) & 0x6FFF7BD2) + 1207976472 + ((((2 * v315) ^ 0x37FA390A) - 1814734496 - ((2 * ((2 * v315) ^ 0x37FA390A)) & 0x27AACA58) + 3020) ^ 0x6C2A9AD3);
  LODWORD(STACK[0x320]) = v231;
  v475 = -704961033 - ((-2 * (v459 & 0x100)) & 0xABF64A00 | v459 & 0x100);
  if (v241)
  {
    v475 = v459 & 0x100 ^ 0xD5FB25F7;
  }

  v476 = ((v475 ^ 0xD5FB25F7) + v472 - ((2 * ((v475 ^ 0xD5FB25F7) + v472)) & 0xF37B2E60) + 2042468144) ^ v459 & 0xFFFFFEFF;
  v477 = dword_100266010[BYTE1(v476) ^ 0x98];
  HIDWORD(v478) = v477 ^ BYTE1(v476) ^ 0xC4B646;
  LODWORD(v478) = v477 ^ 0xFC000000;
  v479 = (v478 >> 24) - ((2 * (v478 >> 24)) & 0x151389F4) - 1970682630;
  v480 = dword_1002648F0[BYTE2(v476) ^ 0x7D];
  v481 = v480 - ((2 * v480 + 126161188) & 0xB232C26) + 1767120549;
  HIDWORD(v478) = v481 ^ 0x73D6;
  LODWORD(v478) = v481 ^ 0xA9360000;
  v482 = dword_100266010[HIBYTE(v476) ^ 0xC2];
  v483 = (v478 >> 16) - ((2 * (v478 >> 16)) & 0x3BA89A04) - 1647031038;
  HIDWORD(v478) = v482 ^ HIBYTE(v476) ^ 0x1C;
  LODWORD(v478) = v482 ^ 0xFCC4B600;
  v484 = v476 ^ 0x9C1C3129;
  v485 = dword_100284580[v476 ^ 0x9F];
  v486 = v485 - ((2 * v485 + 1284777362) & 0xC23ADD04) - 2023259829;
  v487 = v486 ^ (v486 >> 1) & 0x4750C80A ^ v469 ^ ((v478 >> 8) - ((2 * (v478 >> 8)) & 0xD8C487B2) - 329104423) ^ v479 ^ 0x64FF6C32 ^ v483;
  v488 = v487 ^ v458;
  v489 = v487 ^ v458 ^ 0xF38D34BE;
  LODWORD(STACK[0x208]) = v489;
  v490 = v489 ^ v484;
  v491 = dword_100266010[((v489 ^ v484) >> 16) ^ 0x75];
  HIDWORD(v478) = v491 ^ ((v489 ^ v484) >> 16) ^ 0xB6AB;
  LODWORD(v478) = v491 ^ 0xFCC40000;
  v492 = (v478 >> 16) - ((2 * (v478 >> 16)) & 0x4A895FB2) - 1522225191;
  v493 = dword_1002648F0[v490 ^ 0x34];
  v494 = dword_1002648F0[BYTE1(v490) ^ 0x44];
  v495 = v494 - ((2 * v494 - 947580636) & 0xD6A2B4EC) - 820780280;
  HIDWORD(v478) = v495 ^ 0xF6BFB3;
  LODWORD(v478) = v495 ^ 0xC7FFFFFF;
  v496 = (v478 >> 24) - ((2 * (v478 >> 24)) & 0xC45DB3C2) - 500246047;
  v497 = dword_100284580[HIBYTE(v490) ^ 0xD];
  v498 = v497 - ((2 * v497 + 211035538) & 0x29B36D22) + 992201050;
  v499 = (v498 >> 1) & 0x4750C80A ^ v498;
  HIDWORD(v478) = v499 ^ 0x31;
  LODWORD(v478) = v499 ^ 0xCF73E000;
  v500 = v496 ^ (v493 - ((2 * v493 - 947580636) & 0xB577D7AE) - 1099008919) ^ v492 ^ ((v478 >> 8) - ((2 * (v478 >> 8)) & 0xEC68E050) + 1983148072);
  v501 = v500 ^ v470;
  v502 = v500 ^ v470 ^ 0x485000D9;
  v503 = ((v502 ^ v484) >> 16) ^ 0xD9;
  v504 = dword_100284580[v503] - ((2 * dword_100284580[v503] + 1284777362) & 0x889B510C) - 359154865;
  v505 = (v504 >> 1) & 0x4750C80A ^ v504;
  HIDWORD(v478) = v505 ^ 0xF62C;
  LODWORD(v478) = v505 ^ 0x5FA70000;
  v506 = (v478 >> 16) - ((2 * (v478 >> 16)) & 0xA9F174FE);
  v507 = dword_100266010[((v502 ^ v484) >> 24) ^ 0x64];
  HIDWORD(v478) = v507 ^ ((v502 ^ v484) >> 24) ^ 0xBA;
  LODWORD(v478) = v507 ^ 0xFCC4B600;
  v508 = v506 + 1425586815;
  v509 = dword_1002632F0[((v502 ^ v484) >> 8) ^ 0xAC];
  v510 = ((((v509 ^ 0x4178BB95) << (v436 & 8 ^ 8)) - ((2 * ((v509 ^ 0x4178BB95) << (v436 & 8 ^ 8))) & 0x9DAF48A8) - 824728492) ^ 0xCED7A454) << (v436 & 8);
  v511 = ((v510 - ((2 * v510) & 0xCB412360) + 1705021872) ^ 0x65A091B0) + (HIBYTE(v509) ^ 0x41);
  v512 = v511 - ((2 * v511) & 0x835226F6) + 1101599611;
  v513 = v502 ^ v484 ^ 0x898AEC51;
  v514 = v500 ^ v487;
  v515 = dword_1002632F0[(v502 ^ v484) ^ 0xE] ^ v508 ^ v500 ^ v487 ^ ((v478 >> 8) - ((2 * (v478 >> 8)) & 0x4C645932) - 1506661223) ^ 0x6F2ECC5D ^ v512;
  LODWORD(STACK[0x204]) = v502 ^ v488;
  v516 = v501 ^ 0xB026F24E ^ v515;
  v517 = v502 ^ v488 ^ 0xC3106B5 ^ v516;
  v518 = (((((v517 ^ v513) >> 8) ^ 0xDC) + 99) ^ 0x7FC5DFCF) + ((2 * ((((v517 ^ v513) >> 8) ^ 0xDC) + 99)) & 0xFFFFFF9F) - 2143674318 + ((((2 * ((v517 ^ v513) >> 8)) ^ 0xB8) - (((v517 ^ v513) >> 6) & 4) + 130) & 0xC6 ^ 0xFFFFFF7D);
  v519 = (v518 - ((2 * v518) & 0x1E05E004) + 251850754) ^ dword_100266010[(v518 - ((2 * v518) & 0x1E05E004) + 251850754) ^ 0xF02F058];
  HIDWORD(v478) = v519 ^ 0xC64686;
  LODWORD(v478) = v519 ^ 0xF3FFFFFF;
  v520 = (v478 >> 24) - ((2 * (v478 >> 24)) & 0xDCBE2E0C);
  v521 = dword_100266010[((v517 ^ v513) >> 16) ^ 0xF6];
  HIDWORD(v478) = v521 ^ ((v517 ^ v513) >> 16) ^ 0xB628;
  LODWORD(v478) = v521 ^ 0xFCC40000;
  v522 = (v478 >> 16) - ((2 * (v478 >> 16)) & 0x676F9CCA) - 1279799707;
  v523 = dword_100284580[((v517 ^ v513) >> 24) ^ 0x31];
  v524 = v523 - ((2 * v523 + 1284777362) & 0x48E5174A) - 893608338;
  v525 = (v524 >> 1) & 0x4750C80A ^ v524;
  HIDWORD(v478) = v525 ^ 0xF;
  LODWORD(v478) = v525 ^ 0x3F885500;
  v526 = dword_1002648F0[(v517 ^ v502 ^ v484 ^ 0x51) ^ 0x98];
  v527 = ((v478 >> 8) - ((2 * (v478 >> 8)) & 0x25AE1946) - 1831400285) ^ (v526 - ((2 * v526 + 126161188) & 0xEAEE80E) + 1796865177) ^ v515 ^ v522 ^ (v520 + 1851725574);
  v528 = v527 ^ v516 ^ v517;
  v529 = dword_100284580[((((v478 >> 8) - ((2 * (v478 >> 8)) & 0x1946) + 3235) ^ (v526 - ((2 * v526 + 4388) & 0xE80E) - 871) ^ v515 ^ v522 ^ (v520 + 5894) ^ v516 ^ v517 ^ 0x1343 ^ v517 ^ v513) >> 8) ^ 0xFD];
  v530 = v529 - ((2 * v529 + 1284777362) & 0x95BB9B2E) + 1898438752;
  v531 = (v530 >> 1) & 0x4750C80A ^ v530;
  HIDWORD(v478) = v531 ^ 0x779335;
  LODWORD(v478) = v531 ^ 0x96000000;
  v532 = (v478 >> 24) - ((2 * (v478 >> 24)) & 0x881059C) - 2076146994;
  v533 = dword_1002648F0[((v528 ^ 0x5AE1343 ^ v517 ^ v513) >> 16) ^ 0xFC];
  v534 = v533 - 2 * ((v533 + 599951506) & 0x2ABA7BF7 ^ v533 & 1) - 1904409464;
  HIDWORD(v478) = v534 ^ 0x9E33;
  LODWORD(v478) = v534 ^ 0x861D0000;
  v535 = (v478 >> 16) - 893169511 - ((2 * (v478 >> 16)) & 0x9586A52E);
  v536 = (v528 ^ 0x5AE1343 ^ v517 ^ v513) >> 24;
  v537 = dword_100266010[v536 ^ 0x5E];
  HIDWORD(v478) = v537 ^ v536 ^ 0x80;
  LODWORD(v478) = v537 ^ 0xFCC4B600;
  v538 = (v527 ^ v516 ^ v517) ^ 0x43 ^ (v517 ^ v513);
  v539 = v532 ^ dword_100266010[v538 ^ 0x2C] ^ (v535 + 510) ^ v538 ^ ((v478 >> 8) - ((2 * (v478 >> 8)) & 0xFB46FF52) + 2107867049);
  v540 = v469 ^ LODWORD(STACK[0x2B0]);
  v541 = 2 * &unk_100259940;
  v542 = (&unk_100259940 - (v541 & 0x9B4EAAE0) - 844671617) ^ v500 ^ v487 ^ 0x3DEB3E88;
  v543 = STACK[0x2F0];
  v544 = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x29C]);
  v545 = v514 ^ v544;
  v546 = v513 ^ v544;
  v547 = (v542 ^ v513) - ((2 * (v542 ^ v513) + 111046358) & 0xD32FE74) + 300463781;
  v548 = ((2 * v540) & 0xF7BDBDD2 ^ 0x13291452) + (v540 ^ 0xF26B75C6);
  v611 = (v547 ^ LODWORD(STACK[0x398]) ^ 0xB31648B2) - 2 * ((v547 ^ LODWORD(STACK[0x398]) ^ 0xB31648B2) & 0x526F91BD ^ (v547 ^ LODWORD(STACK[0x398])) & 4) - 764440135;
  LODWORD(STACK[0x214]) = ((&unk_100259940 - (v541 & 0x89C85EE0) + 1155805050) ^ v545 ^ 0x8A3651D9 ^ v546 ^ 0x3E9E1554) - 1957742741;
  LODWORD(STACK[0x218]) = ((&unk_100259940 - (v541 & 0xBEDCCEC0) + 1601070954) ^ v546 ^ v545 ^ 0x8A3651D9 ^ 0x25145D44) - 1957742741;
  v614 = v417 ^ 0x41B3A7D8;
  v549 = LODWORD(STACK[0x210]) ^ 0xE153F296;
  v550 = LODWORD(STACK[0x3A0]) ^ 0x659ED4DD;
  LODWORD(STACK[0x2B0]) = v548;
  v551 = v548 + (v547 ^ 0x86997F3A) + 69276811 + 3212;
  v552 = v550 ^ LODWORD(STACK[0x370]);
  v553 = LODWORD(STACK[0x388]) ^ 0xDBE18DF5;
  v554 = LODWORD(STACK[0x368]) ^ 0x87758C24;
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x380]) ^ 0x868F306E;
  v555 = STACK[0x260];
  v556 = STACK[0x240];
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x240]) ^ 0xB62F9439 ^ v490;
  v557 = v487 ^ v556 ^ LODWORD(STACK[0x20C]) ^ 0x5847E80B;
  v558 = v556 ^ 0xD11F04AB ^ LODWORD(STACK[0x208]);
  v559 = v543 ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x204]) ^ 0x2EDEEDD5;
  v560 = LODWORD(STACK[0x224]) ^ 0x8E06F716 ^ v517;
  v561 = LODWORD(STACK[0x304]) ^ 0xCE911540 ^ v527;
  v562 = LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x288]);
  v563 = ((2 * ((LODWORD(STACK[0x2AC]) ^ 0xA8341129) - (LODWORD(STACK[0x2E0]) ^ 0x22F2054A))) & 0x97DF6FFE) + (((LODWORD(STACK[0x2AC]) ^ 0xA8341129) - (LODWORD(STACK[0x2E0]) ^ 0x22F2054A)) ^ 0xCBEFB7FF);
  v564 = ((v563 - ((2 * v563 - 875555440) & 0x986497BE) + 840586919) ^ 0xCCD3D1A7) - (LODWORD(STACK[0x2CC]) ^ 0xE3B2E38D);
  v565 = ((2 * ((LODWORD(STACK[0x358]) ^ 0x22F2054A) + (LODWORD(STACK[0x308]) ^ 0x4BBE14FD))) & 0xDFDDCDEE) + (((LODWORD(STACK[0x358]) ^ 0x22F2054A) + (LODWORD(STACK[0x308]) ^ 0x4BBE14FD)) ^ 0xEFEEE6F7);
  v566 = (2 * (v564 - ((2 * v564) & 0x32C2D1AC)) + 851628460) ^ 0x32C2D1AC;
  v567 = (v566 - ((2 * v566) & 0xBC37D86C) + 1578888247) ^ 0x5E1BEC37;
  v568 = v567 - ((2 * v567 + 68000104) & 0x6E7D13E) + 1366996307;
  v569 = (((LODWORD(STACK[0x2E8]) ^ 0xBB4FC1BA) + (LODWORD(STACK[0x3A8]) ^ 0x358F3788)) ^ 0x80405804) + (((LODWORD(STACK[0x2F8]) ^ 0x6D214C19) - 1347650702) ^ 0x6DEFEC55) + ((2 * ((LODWORD(STACK[0x2F8]) ^ 0x6D214C19) - 1347650702)) & 0xDBDFD8AA) - ((2 * ((LODWORD(STACK[0x2E8]) ^ 0xBB4FC1BA) + (LODWORD(STACK[0x3A8]) ^ 0x358F3788))) & 0xFF7F4FF6) + 1;
  v570 = ((v569 - ((2 * v569 + 597653324) & 0xE4EC1D7E) - 2075800987) >> 1) ^ 0x393B075F;
  v571 = v570 - ((2 * v570 + 134018866) & 0xE3202F5E) + 1972278088;
  v572 = (((v565 - ((2 * v565 + 37912372) & 0x303FC736) - 1723784395) ^ LODWORD(STACK[0x220])) >> 1) ^ 0x32BA2551;
  v573 = v572 - ((2 * v572 + 1991025026) & 0x4799B0AE);
  v574 = STACK[0x548];
  v575 = v573 - 551343848;
  v576 = (-(v574[(v574[(v574[*v574 & 1] & 1) == 0] & 1) == 0] & 1) - 161625425) ^ 0xF65DCAAF;
  v577 = LODWORD(STACK[0x3B0]) + 752;
  STACK[0x398] = 263 * (v577 ^ 0x382u);
  v607 = v614 ^ LODWORD(STACK[0x370]);
  v608 = LODWORD(STACK[0x3A0]) ^ v555;
  if (v551)
  {
    v578 = STACK[0x210];
  }

  LODWORD(STACK[0x224]) = v551;
  LODWORD(STACK[0x388]) = v571;
  LODWORD(STACK[0x3A8]) = v571 ^ 0xC41A1CD7;
  LODWORD(STACK[0x380]) = v575;
  LODWORD(STACK[0x3B0]) = v575 ^ 0x94B35F82;
  LODWORD(STACK[0x304]) = v568;
  LODWORD(STACK[0x3A0]) = v568 ^ 0xF5DF753;
  if (v576 <= 1)
  {
    v579 = 1;
  }

  else
  {
    v579 = v576;
  }

  v609 = 2 * LODWORD(STACK[0x214]);
  v610 = 2 * LODWORD(STACK[0x218]);
  v580 = (STACK[0x398] ^ 0xEEC2F023D97AACE7) + 0x113D0FDC2685542ALL;
  v581 = v574[v580];
  v582 = 0x594D01AFB39951C5 * v581 - ((0xB29A035F6732A38ALL * v581) & 0xD00E16F3B8A188B2) + 0x68070B79DC50C459;
  *(STACK[0x390] + 8 * v580) = v581 ^ 0x2020202020202020;
  v583 = (((v582 ^ 0x3B32431E3E13E137) + v580) ^ 0x4F2ED1EA7FB6D22ALL) - 0x4F2ED1EA7FB6D22ALL + ((2 * ((v582 ^ 0x3B32431E3E13E137) + v580)) & 0x9E5DA3D4FF6DA454);
  v584 = ((HIDWORD(v583) + 0x501EC264CCCD503ELL - ((v583 >> 31) & 0x1999AA07CLL)) ^ 0x501EC264CCCD503ELL) + v583;
  v585 = ((2 * v584) & 0xF7CCFBE7FFFCFCDELL) + (v584 ^ 0x7BE67DF3FFFE7E6FLL) - 0x7BE67DF3FFFE7E6FLL;
  v586 = v585 + (((v585 >> 16) - ((v585 >> 15) & 0x17F0EB34ED272) + 0x3FA2BF8759A76939) ^ 0xC05D4078A65896C6) + 1;
  v587 = (v586 ^ 0x69FDF6F9EBE6FB3ELL) - 0x69FDF6F9EBE6FB3ELL + ((2 * v586) & 0xD3FBEDF3D7CDF67CLL);
  v588 = (((v587 >> 8) - 0x48D575A77102270CLL - ((v587 >> 7) & 0x5514B11DFBB1E8)) ^ 0xB72A8A588EFDD8F4) + v587;
  v589 = v588 + 0x31B88653D7DDA54DLL - ((2 * v588) & 0x63710CA7AFBB4A9ALL);
  v590 = (v589 ^ 0x31B88653D7DDA54DLL) - ((2 * (v589 ^ 0x31B88653D7DDA54DLL) - 0x771DD8810C64362CLL) & 0xA64256F6F6672482) - 0x686DC0C50AFE88D5;
  v591 = (((v582 ^ 0x3B262002A7635618 ^ v590) + v580) ^ 0xE6957FB4DF1FDF8ELL) + 0x196A804B20E02072 + ((2 * ((v582 ^ 0x3B262002A7635618 ^ v590) + v580)) & 0xCD2AFF69BE3FBF1CLL);
  v592 = ((HIDWORD(v591) - 0x69EA9CFF71CEBEFLL - ((v591 >> 31) & 0x11C62822)) ^ 0xF961563008E31411) + v591;
  v593 = ((2 * v592) & 0xDDDFBD33F7F5D57ELL) + (v592 ^ 0x6EEFDE99FBFAEABFLL) - 0x6EEFDE99FBFAEABFLL;
  v594 = v593 + (((v593 >> 16) - ((v593 >> 15) & 0x5C0081ED85C8) + 0x4E1A2E0040F6C2E4) ^ 0xB1E5D1FFBF093D1BLL) + 1;
  v595 = (v594 ^ 0x7FF697FE77FAEFFBLL) - 0x7FF697FE77FAEFFBLL + ((2 * v594) & 0xFFED2FFCEFF5DFF6);
  v596 = (((v595 >> 8) + 0x1A070647E3FE323 - ((v595 >> 7) & 0x140E0C8FC7FC646)) ^ 0x1A070647E3FE323) + v595;
  v597 = v596 - 0x293569A450802220 - ((2 * v596) & 0xAD952CB75EFFBBC0);
  v598 = (v597 ^ 0xD6CA965BAF7FDDE0) - ((2 * (v597 ^ 0xD6CA965BAF7FDDE0) + 0x8E2277EF39BC9D4) & 0x78E876B4310A7AA0) - 0x7F1AB0E66DACDDC6;
  v599 = (((v582 ^ 0x54733023C4D5F909 ^ v598) + v580) ^ 0xB3EF7FFFEFFFFFEDLL) + 0x4C10800010000013 + ((2 * ((v582 ^ 0x54733023C4D5F909 ^ v598) + v580)) & 0x67DEFFFFDFFFFFDALL);
  v600 = ((HIDWORD(v599) + 0x65FFBC5CF0AAF3D4 - ((v599 >> 31) & 0x1E155E7A8)) ^ 0x65FFBC5CF0AAF3D4) + v599;
  v601 = ((2 * v600) & 0x7DDFFFFDC5EFEFDELL) + (v600 ^ 0x3EEFFFFEE2F7F7EFLL) - 0x3EEFFFFEE2F7F7EFLL;
  v602 = v601 + (((v601 >> 16) - ((v601 >> 15) & 0xCC787EA7DFF8) - 0x6DD499C3C0AC1004) ^ 0x6DD499C3C0AC1003) + 1;
  v603 = (v602 ^ 0x66FA2FFD7FFCFBDCLL) - 0x66FA2FFD7FFCFBDCLL + ((2 * v602) & 0xCDF45FFAFFF9F7B8);
  v604 = (((v603 >> 8) - 0x2FF54E6581391941 - ((v603 >> 7) & 0x156334FD8DCD7ELL)) ^ 0xD00AB19A7EC6E6BFLL) + v603;
  LODWORD(v604) = v604 - 1198358031 - ((2 * v604) & 0x712503E2);
  v605 = LODWORD(STACK[0x3A8]) ^ ((v589 ^ 0xD7DDA54D) - ((2 * (v589 ^ 0xD7DDA54D) + 432923882) & 0x1BC79CDE) - 892682012);
  LODWORD(STACK[0x3A0]) ^= v589 ^ v597 ^ 0xC030F95C ^ v604;
  LODWORD(STACK[0x3A8]) = v605 ^ ((v597 ^ 0xAF7FDDE0) - ((2 * (v597 ^ 0xAF7FDDE0) + 2043536618) & 0xC128EC64) - 1652856665) ^ 0x1295EAE9 ^ ((v604 ^ 0xB89281F1) - ((2 * (v604 ^ 0xB89281F1) + 2043536618) & 0xFFC4A568) - 1127660247);
  LODWORD(STACK[0x3B0]) ^= v590 ^ ((v597 ^ 0xAF7FDDE0) - ((2 * (v597 ^ 0xAF7FDDE0) - 207894060) & 0x310A7AA0) - 1840045510) ^ 0xC4EBBBB5 ^ ((v604 ^ 0xB89281F1) - ((2 * (v604 ^ 0xB89281F1) - 207894060) & 0x4EBA2948) + 556464526);
  return (*(&off_1002D7880 + ((25 * (v579 == 1)) ^ v577)))(0xF961563008E31411);
}

uint64_t sub_1000FDDE8()
{
  v1 = STACK[0x2D8];
  v2 = LODWORD(STACK[0x2D8]) ^ 0x3FD;
  v3 = v0 ^ 0xAC38AD5A;
  if ((v0 ^ 0xAC38AD5A) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v0 ^ 0xAC38AD5A;
  }

  LODWORD(STACK[0x380]) = v3;
  v6 = v3 < 8 || v4 - 17 < 0xFFFFFFF0;
  return (*(&off_1002D7880 + (((v2 - 1478) * v6) | v1)))();
}

uint64_t sub_1000FDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12.val[0].i64[0] = v10 & 8;
  v12.val[0].i64[1] = v10 & 8 | 1;
  v12.val[1].i64[0] = v12.val[0].i64[0] | 2;
  v12.val[1].i64[1] = v12.val[0].i64[0] | 3;
  v12.val[2].i64[0] = ((6 * ((a6 - 17) ^ 0x33F)) ^ 0x10A) & v10 | 4;
  v12.val[2].i64[1] = v12.val[0].i64[0] | 5;
  v12.val[3].i64[0] = v12.val[0].i64[0] | 6;
  v12.val[3].i64[1] = v12.val[0].i64[0] | 7;
  *(&STACK[0x550] + STACK[0x3A0] + STACK[0x360] + v10 + 255) = veor_s8(veor_s8(veor_s8(veor_s8(*(v7 + v12.val[0].i64[0]), *(v8 + v12.val[0].i64[0])), *(v9 + v12.val[0].i64[0] + 1)), 0x1818181818181818), vmul_s8(*&vqtbl4q_s8(v12, xmmword_100259770), 0xBBBBBBBBBBBBBBBBLL));
  return (*(&off_1002D7880 + ((49 * (((a6 - 781) & a7) - 8 != v10)) ^ (a6 - 17))))(xmmword_100259770);
}

uint64_t sub_1000FE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, int a25, uint64_t a26, uint64_t a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, uint64_t a50, uint64_t a51, int a52, int a53, int a54, uint64_t a55, uint64_t a56, int a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v81 = (v80 | ((v80 < 0x4ABA40AE) << 32)) - 1253720238;
  v82 = *(STACK[0x548] + 8 * v81);
  v83 = STACK[0x520];
  v83[v81] = v82 ^ 0x2020202020202020;
  v84 = v83[1];
  v559 = *v83;
  v558 = v83;
  v543 = 0x329A035F6732A38ALL * (*v83 ^ 0x2020202020202020);
  v545 = 0x594D01AFB39951C5 * (*v83 ^ 0x2020202020202020);
  v85 = v545 - (v543 & 0x65591F6D79D88A8ALL) + 0x32AC8FB6BCEC4545;
  v86 = (v85 ^ 0xDC67A2AAA15415DALL) + 0x42019A8400048A0FLL + ((2 * v85) & 0x7BFCCAF7FFF6EBE2 ^ 0x43308AA2BD56C042);
  v87 = ((HIDWORD(v86) - ((v86 >> 31) & 0x55B02836) - 0x5AB06BF1D527EBE5) ^ 0xA54F940E2AD8141BLL) + v86;
  v88 = ((2 * v87) & 0xFBCFF4E9D5FDBF6CLL) + (v87 ^ 0x7DE7FA74EAFEDFB6) - 0x7DE7FA74EAFEDFB6;
  v89 = v88 + (((v88 >> 16) - ((v88 >> 15) & 0xB1784349DBCELL) - 0x5D04A743DE5B1219) ^ 0x5D04A743DE5B1218) + 1;
  v90 = (v89 ^ 0xBADA3F817FFDDFC8) + 0x4525C07E80022038 + ((2 * v89) & 0x75B47F02FFFBBF90);
  v91 = (((v90 >> 8) - ((v90 >> 7) & 0x53583D530D3324) - 0x17D653E15679666ELL) ^ 0xE829AC1EA9869992) + v90;
  v92 = v91 - ((2 * v91) & 0x12E4F89B1ADA7CA2) + 0x9727C4D8D6D3E51;
  v93 = (v92 ^ 0x9727C4D8D6D3E51) - ((2 * (v92 ^ 0x9727C4D8D6D3E51) + 0x8E2277EF39BC9D4) & 0x278A21ADC2337E68) - 0x27C9DB69A5185BE2;
  v94 = (v93 ^ v85 ^ 0x5FE641176626CD88) + 0x1702188C42CC807 + ((2 * (v93 ^ v85)) & 0xFD1FBCEE77A66FF2 ^ 0x40133CC033A264E2);
  v95 = ((HIDWORD(v94) - ((v94 >> 31) & 0x17A2BF602) + 0x156D0DEFBD15FB01) ^ 0x156D0DEFBD15FB01) + v94;
  v96 = ((((((2 * v95) & 0xF5DFF7BBDF73ABB2) + (v95 ^ 0xFAEFFBDDEFB9D5D9) + 0x510042210462A27) >> 16) - (((((2 * v95) & 0xF5DFF7BBDF73ABB2) + (v95 ^ 0xFAEFFBDDEFB9D5D9) + 0x510042210462A27) >> 15) & 0x1F657498F096ELL) + 0x4AC3FB2BA4C784B7) ^ 0xB53C04D45B387B48) + ((2 * v95) & 0xF5DFF7BBDF73ABB2) + (v95 ^ 0xFAEFFBDDEFB9D5D9);
  v97 = v96 - ((2 * v96 + 0xA200844208C5450) & 0x3E0F26A3F1EFAAAELL) + 0x24179774093DFF7FLL;
  v98 = (2 * ((((v97 >> 8) ^ 0x1F079351F8F7D5) & (v97 ^ 0x1F079351F8F7D557)) - ((2 * (((v97 >> 8) ^ 0x1F079351F8F7D5) & (v97 ^ 0x1F079351F8F7D557))) & 0x1D20AE0103A5DA2)) + 0x3FD20AE0103A5DA2) ^ 0x3FD20AE0103A5DA2;
  v99 = ((v98 - ((2 * v98) & 0xF7B43C5224F57724) - 0x425E1D6ED85446DLL) ^ 0xFBDA1E29127ABB93) + (v97 ^ 0x1F1894C2A90F2282 ^ (v97 >> 8));
  v100 = v99 - ((2 * v99) & 0xB2F1EC9A1774E176) - 0x268709B2F4458F45;
  STACK[0x368] = v100;
  v101 = (v100 ^ 0xD978F64D0BBA70BBLL) - ((2 * (v100 ^ 0xD978F64D0BBA70BBLL) + 0x8E2277EF39BC9D4) & 0x50FCB3EFA5C653CELL) + 0x6CEF6DB74CB10ED1;
  v102 = (v101 ^ v85 ^ 0x2D1D69FCB5E09B11) - 0x37CFBFBDDBEFF7B3 + ((2 * (v101 ^ v85)) & 0x6F9F7F7BB7DFEF66 ^ 0x25852C02941EC944);
  v103 = ((HIDWORD(v102) - ((v102 >> 31) & 0x944C0162) + 0x3AC4D6624A2600B1) ^ 0x3AC4D6624A2600B1) + v102;
  v104 = ((2 * v103) & 0xFF33DBFFFBDEEA7CLL) + (v103 ^ 0xFF99EDFFFDEF753ELL) + 0x66120002108AC2;
  v105 = v104 + (((v104 >> 16) - ((v104 >> 15) & 0x11506D585CE38) + 0x7D3E8A836AC2E71CLL) ^ 0x82C1757C953D18E3) + 1;
  v106 = (v105 ^ 0xDDFCF7FFFFFECF3FLL) + 0x22030800000130C1 + ((2 * v105) & 0xBBF9EFFFFFFD9E7ELL);
  v107 = (((v106 >> 8) - ((v106 >> 7) & 0x151A2BE246CF5D8) + 0x67A8D15F12367AECLL) ^ 0x67A8D15F12367AECLL) + v106;
  v108 = v107 - ((2 * v107) & 0x9B672B8AC89DD19ELL) - 0x324C6A3A9BB11731;
  v109 = (v108 ^ 0xCDB395C5644EE8CFLL) - ((2 * (v108 ^ 0xCDB395C5644EE8CFLL) - 0x771DD8810C64362CLL) & 0xDA7611FCD6D96A3CLL) + 0x31AC1CBDE53A9A08;
  v84 ^= 0x2020202020202020uLL;
  v546 = 0xB29A035F6732A38ALL * v84;
  v548 = 0x594D01AFB39951C5 * v84;
  v110 = 0x594D01AFB39951C5 * v84 - ((0xB29A035F6732A38ALL * v84) & 0xAF63EACB93829E1CLL) + 0x57B1F565C9C14F0ELL;
  v111 = (((v110 ^ 0xBA8AFD9BA2ADFA10 ^ v109) + 1) ^ 0x39FFB8FEFFFEE57FLL) - 0x39FFB8FEFFFEE57FLL + ((2 * ((v110 ^ 0xBA8AFD9BA2ADFA10 ^ v109) + 1)) & 0x73FF71FDFFFDCAFELL);
  v112 = ((HIDWORD(v111) - ((v111 >> 31) & 0x4B679742) + 0x679D3C6325B3CBA1) ^ 0x679D3C6325B3CBA1) + v111;
  v113 = ((2 * v112) & 0x53ADF6F13EFFF9BCLL) + (v112 ^ 0x29D6FB789F7FFCDELL) - 0x29D6FB789F7FFCDELL;
  v114 = v113 + (((v113 >> 16) - ((v113 >> 15) & 0x13286ECFB94E6) - 0x192066BC8982358DLL) ^ 0x192066BC8982358CLL) + 1;
  v115 = (v114 ^ 0xD7FCDADFB16BFDF5) + 0x280325204E94020BLL + ((2 * v114) & 0xAFF9B5BF62D7FBEALL);
  v116 = (((v115 >> 8) - ((v115 >> 7) & 0xE28DD24D4B2D52) + 0x6C7146E926A596A9) ^ 0x6C7146E926A596A9) + v115;
  v117 = v116 - ((2 * v116) & 0xCE13713C9BC86CD8) - 0x18F64761B21BC994;
  v118 = (v117 ^ 0xE709B89E4DE4366CLL) - ((2 * (v117 ^ 0xE709B89E4DE4366CLL) + 0x8E2277EF39BC9D4) & 0x41B8956355FE83CCLL) - 0x1AB2A18EDB32D930;
  v119 = (((v110 ^ 0xF76DBFD4633E0EE8 ^ v118) + 1) ^ 0x49DBFF53FFBB56DFLL) - 0x49DBFF53FFBB56DFLL + ((2 * ((v110 ^ 0xF76DBFD4633E0EE8 ^ v118) + 1)) & 0x93B7FEA7FF76ADBELL);
  v120 = ((HIDWORD(v119) - ((v119 >> 31) & 0x156B11074) + 0x4013F88AB58883ALL) ^ 0x4013F88AB58883ALL) + v119;
  v121 = ((2 * v120) & 0xCFFFF9BB6F78CEFALL) + (v120 ^ 0xE7FFFCDDB7BC677DLL) + 0x1800032248439883;
  v122 = v121 + (((v121 >> 16) - ((v121 >> 15) & 0x14C76EFD505ALL) + 0x5E760A63B77EA82DLL) ^ 0xA189F59C488157D2) + 1;
  v123 = (v122 ^ 0xEFFFDF7DEEF5EF87) + 0x10002082110A1079 + ((2 * v122) & 0xDFFFBEFBDDEBDF0ELL);
  v124 = (((v123 >> 8) - ((v123 >> 7) & 0x1B2F1D10A1DB2C8) + 0x69D978E8850ED964) ^ 0x69D978E8850ED964) + v123;
  v125 = v124 - ((2 * v124) & 0x4C1D2746B70935B6) + 0x260E93A35B849ADBLL;
  v126 = (v125 ^ 0x260E93A35B849ADBLL) - ((2 * (v125 ^ 0x260E93A35B849ADBLL) + 0x8E2277EF39BC9D4) & 0x1CE0C4C2DEA08B84) + 0x52E17620E91E2AACLL;
  v127 = (((v110 ^ 0x59C19704A6910ACCLL ^ v126) + 1) ^ 0xDE7F5FDCBFAC7FF6) + 0x2180A0234053800ALL + ((2 * ((v110 ^ 0x59C19704A6910ACCLL ^ v126) + 1)) & 0xBCFEBFB97F58FFECLL);
  v128 = ((HIDWORD(v127) - ((v127 >> 31) & 0xF051C8B8) + 0x7AD755027828E45CLL) ^ 0x7AD755027828E45CLL) + v127;
  v129 = ((2 * v128) & 0xD1F9BF777DFBFDFELL) + (v128 ^ 0xE8FCDFBBBEFDFEFFLL) + 0x1703204441020101;
  v130 = v129 + (((~(v129 >> 15) | 0xFFFE74AF8D4E5597) + (v129 >> 16) - 0x41CD3A57C6A72ACBLL) ^ 0x41CD3A57C6A72ACBLL) + 1;
  v131 = (v130 ^ 0xE9D3DE737F7FFEDCLL) + 0x162C218C80800124 + ((2 * v130) & 0xD3A7BCE6FEFFFDB8);
  v132 = (((v131 >> 8) - ((v131 >> 7) & 0x132666FC2B66FDELL) + 0x49993337E15B37EFLL) ^ 0x49993337E15B37EFLL) + v131;
  v133 = ((2 * v132) & 0xFE95FF1F6DEFF66CLL) + (v132 ^ 0x7F4AFF8FB6F7FB36);
  v134 = ((((v133 + 0xE8C14AEC062C48DLL) >> 25) - (((v133 + 0xE8C14AEC062C48DLL) >> 24) & 0x170008B26ALL) - 0x22AF58F47FFBA6CBLL) ^ 0xDD50A70B80045935) + v133 + 0xE8C14AEC062C48DLL;
  v135 = ((2 * v134) & 0xD7EEFF7FFAABBDB6) + (v134 ^ 0x6BF77FBFFD55DEDBLL) - 0x6BF77FBFFD55DEDBLL;
  v136 = v135 + (((v135 >> 12) - ((v135 >> 11) & 0x35C7DF8F9CA40) + 0x7C21AE3EFC7CE520) ^ 0x83DE51C103831ADFLL) + 1;
  v137 = (v136 ^ 0xEFFE8DBFFDBAEDBCLL) + 0x1001724002451244 + ((2 * v136) & 0xDFFD1B7FFB75DB78);
  v138 = (((v137 >> 7) - ((v137 >> 6) & 0xBF232DEB0F4CFALL) - 0x5DA06E690A785983) ^ 0xA25F9196F587A67DLL) + v137;
  v139 = v138 - ((2 * v138) & 0x954E5BE2267DDEACLL) + 0x4AA72DF1133EEF56;
  v140 = ((((v139 >> 30) ^ 0x27913B540) + (v139 ^ 0x9E44ED50064E49DCLL)) ^ 0xE5FFFFFAEFFFFDBBLL) + 0x1A00000510000245 + ((2 * (((v139 >> 30) ^ 0x27913B540) + (v139 ^ 0x9E44ED50064E49DCLL))) & 0xCBFFFFF5DFFFFB76);
  v141 = (((v140 >> 11) - ((v140 >> 10) & 0x1901EEAC8282DELL) + 0x278C80F75641416FLL) ^ 0x278C80F75641416FLL) + v140;
  v142 = ((2 * v141) & 0xDF7BBFF6B6FAF666) + (v141 ^ 0x6FBDDFFB5B7D7B33) - 0x6FBDDFFB5B7D7B33;
  v143 = v142 + (((v142 >> 3) - ((v142 >> 2) & 0x35624B6DD9128D14) + 0x3AB125B6EC89468ALL) ^ 0xC54EDA491376B975) + 1;
  v144 = ((2 * v143) & 0xEFFBBE7E8DFDFFBELL) + (v143 ^ 0xF7FDDF3F46FEFFDFLL);
  STACK[0x2F8] = v144;
  v145 = ((((v144 + 0x57C02D6AED68086ELL) >> 25) - (((v144 + 0x57C02D6AED68086ELL) >> 24) & 0x40EB6215A8) - 0x6F9BA2DF8A4EF52CLL) ^ 0x90645D2075B10AD4) + v144 + 0x57C02D6AED68086ELL;
  v146 = ((2 * v145) & 0x9FFD93F1F3DF57BCLL) + (v145 ^ 0xCFFEC9F8F9EFABDELL) + 0x3001360706105422;
  v147 = v146 + (((v146 >> 14) - ((v146 >> 13) & 0x55331A9EE14FALL) - 0x224956672B08F583) ^ 0x224956672B08F582) + 1;
  v148 = ((2 * v147) & 0xFBF517FFF4BF8B7ELL) + (v147 ^ 0xFDFA8BFFFA5FC5BFLL) + 0x205740005A03A41;
  v149 = v148 + (((v148 >> 7) - ((v148 >> 6) & 0x23630DDEA6F014ALL) + 0x5B1B186EF53780A5) ^ 0xA4E4E7910AC87F5ALL) + 1;
  v150 = ((2 * v149) & 0xEFF9FFC8BFF5BDBCLL) + (v149 ^ 0x77FCFFE45FFADEDELL);
  v151 = v150 + 0x515511EFAFBA78DDLL + ((((v150 + 0x515511EFAFBA78DDLL) >> 28) - (((v150 + 0x515511EFAFBA78DDLL) >> 27) & 0x18D5B251FALL) + 0x445580C6AD928FDLL) ^ 0xFBBAA7F39526D702) + 1;
  v152 = ((2 * v151) & 0x5DED71FF5FFDEFEELL) + (v151 ^ 0xAEF6B8FFAFFEF7F7) + 0x5109470050010809;
  v153 = v152 + (((v152 >> 13) - ((v152 >> 12) & 0xDE9567716A898) - 0x6ED90B54C474ABB4) ^ 0x6ED90B54C474ABB3) + 1;
  v154 = (v153 ^ 0x3FEBF8F1DA7D5DFALL) - 0x3FEBF8F1DA7D5DFALL + ((2 * v153) & 0x7FD7F1E3B4FABBF4);
  v155 = (((v154 >> 5) - ((v154 >> 4) & 0x369E57030293678) + 0x39B4F2B818149B3CLL) ^ 0x39B4F2B818149B3CLL) + v154;
  v156 = v155 - ((2 * v155) & 0xAD175C4F9389072CLL) - 0x297451D8363B7C6ALL;
  v157 = ((2 * ((v156 ^ 0xDFC3F3CEF23F8F83) - ((v156 >> 29) ^ 0x6FE1F9E77))) & 0xD79FA37B9BBAFFE4) + (((v156 ^ 0xDFC3F3CEF23F8F83) - ((v156 >> 29) ^ 0x6FE1F9E77)) ^ 0x6BCFD1BDCDDD7FF2) - 0x6BCFD1BDCDDD7FF2;
  v158 = v157 + (((v157 >> 11) - ((v157 >> 10) & 0x115B5BE3F103D8) + 0x5788ADADF1F881ECLL) ^ 0xA87752520E077E13) + 1;
  v159 = (v158 ^ 0x3EFFBFF196DFEF39) - 0x3EFFBFF196DFEF39 + ((2 * v158) & 0x7DFF7FE32DBFDE72);
  v160 = (((v159 >> 8) - ((v159 >> 7) & 0x114F0214DA7538CLL) - 0x5F7587EF592C563ALL) ^ 0xA08A7810A6D3A9C6) + v159;
  v161 = ((2 * v160) & 0xE7DFAADFFDFDB7FELL) + (v160 ^ 0xF3EFD56FFEFEDBFFLL);
  v162 = ((((v161 - 0x116E9E936C8F4243) >> 31) - (((v161 - 0x116E9E936C8F4243) >> 30) & 0x2143FB7CCLL) + 0x3A6ECCD70A1FDBE6) ^ 0x3A6ECCD70A1FDBE6) + v161 - 0x116E9E936C8F4243;
  v163 = (v162 ^ 0xBDFAB97FD77D5F3DLL) + 0x420546802882A0C3 + ((2 * v162) & 0x7BF572FFAEFABE7ALL);
  v164 = (((v163 >> 15) - ((v163 >> 14) & 0xA046DF810F1ELL) + 0x58C450236FC0878FLL) ^ 0x58C450236FC0878FLL) + v163;
  v165 = (v164 ^ 0xF37F9F9BDFED7FF7) + 0xC80606420128009 + ((2 * v164) & 0xE6FF3F37BFDAFFEELL);
  v166 = (((v165 >> 5) - ((v165 >> 4) & 0x9D9E80BBE4AD4A0) - 0x63130BFA20DA95B0) ^ 0x9CECF405DF256A50) + v165;
  v167 = v166 - ((2 * v166) & 0x2FB5DC1B7C93EE7CLL) - 0x682511F241B608C2;
  LODWORD(v150) = ((v150 - 1610276574) ^ 0xBE49F73E ^ v167) - ((2 * ((v150 - 1610276574) ^ 0xBE49F73E ^ v167)) & 0xA612E79A) - 754355251;
  v168 = ((2 * ((v167 ^ 0xFE85D78717FEEDDELL) - ((v167 >> 28) ^ 0xFE85D7871))) & 0xFDBFDF7FB7F254F6) + (((v167 ^ 0xFE85D78717FEEDDELL) - ((v167 >> 28) ^ 0xFE85D7871)) ^ 0xFEDFEFBFDBF92A7BLL) + 0x12010402406D585;
  v169 = v168 + (((v168 >> 11) - ((v168 >> 10) & 0x3CDD12138E904) + 0xC1E6E8909C7482) ^ 0xFF3E19176F638B7DLL) + 1;
  v170 = ((((((2 * v169) & 0xDC9CF4FD5B79FB9ELL) + (v169 ^ 0x6E4E7A7EADBCFDCFLL) - 0x6E4E7A7EADBCFDCFLL) >> 5) - (((((2 * v169) & 0xDC9CF4FD5B79FB9ELL) + (v169 ^ 0x6E4E7A7EADBCFDCFLL) - 0x6E4E7A7EADBCFDCFLL) >> 4) & 0x566B1D09B3BA206) - 0x154CA717B2622EFDLL) ^ 0x154CA717B2622EFCLL) + ((2 * v169) & 0xDC9CF4FD5B79FB9ELL) + (v169 ^ 0x6E4E7A7EADBCFDCFLL);
  v171 = v170 - ((2 * v170 + 0x23630B02A4860464) & 0xC67591B3EE66CB8ALL) - 0xB13B1A4B6899809;
  v172 = ((((v171 >> 31) ^ 0xA3C8062) + (v171 ^ 0x51E40312046CC38)) ^ 0xBFFBFEFFEFDB79BBLL) + 0x4004010010248645 + ((2 * (((v171 >> 31) ^ 0xA3C8062) + (v171 ^ 0x51E40312046CC38))) & 0x7FF7FDFFDFB6F376);
  v173 = (((v172 >> 10) - ((v172 >> 9) & 0x5A147D21DA4C32) + 0x5D6D0A3E90ED2619) ^ 0x5D6D0A3E90ED2619) + v172;
  v174 = (v173 ^ 0x5BFB77FB3F6AFFE4) - 0x5BFB77FB3F6AFFE4 + ((2 * v173) & 0xB7F6EFF67ED5FFC8);
  v175 = (((v174 >> 7) - ((v174 >> 6) & 0xD48F2454C9B5FALL) + 0xE6A47922A64DAFDLL) ^ 0xE6A47922A64DAFDLL) + v174;
  v176 = ((2 * v175) & 0xEFBEFF8BEFD37DBELL) + (v175 ^ 0xF7DF7FC5F7E9BEDFLL);
  v177 = v176 + 0x16790FCA325C62DFLL + ((((v176 + 0x16790FCA325C62DFLL) >> 31) - (((v176 + 0x16790FCA325C62DFLL) >> 30) & 0x33326ACD6) - 0x4A9910FA666CA995) ^ 0x4A9910FA666CA994) + 1;
  v178 = (v177 ^ 0x6F5C67AFFCBFE4F5) - 0x6F5C67AFFCBFE4F5 + ((2 * v177) & 0xDEB8CF5FF97FC9EALL);
  v179 = (((v178 >> 15) - ((v178 >> 14) & 0xEB4AAFDC7D88) - 0x9458A5AA811C13CLL) ^ 0xF6BA75A557EE3EC4) + v178;
  LODWORD(v179) = (((v179 - ((2 * v179) & 0xD279A8F0C1F73C18) + 0x693CD47860FB9E0CLL) >> 7) ^ 0xF0C1F73C) + ((v179 - ((2 * v179) & 0xC1F73C18) + 1627102732) ^ 0x60FB9E0C);
  v180 = v101 ^ ((v92 ^ 0x8D6D3E51) - ((2 * (v92 ^ 0x8D6D3E51) - 207894060) & 0xC2337E68) + 1525130270) ^ ((v108 ^ 0x644EE8CF) - ((2 * (v108 ^ 0x644EE8CF) - 207894060) & 0xD6D96A3C) - 449144312) ^ ((v117 ^ 0x4DE4366C) - ((2 * (v117 ^ 0x4DE4366C) - 207894060) & 0x55FE83CC) + 617424592) ^ ((v125 ^ 0x5B849ADB) - ((2 * (v125 ^ 0x5B849ADB) - 207894060) & 0xDEA08B84) - 383898964) ^ LODWORD(STACK[0x380]) ^ (v133 - 2 * ((v133 + 1121315252) & 0x6B6CB51F ^ v132 & 1) + 776117970) ^ v150 ^ (v179 - ((2 * v179) & 0x820DBD44) + 1090969250);
  v181 = 0x594D01AFB39951C5 * v82 - ((0xB29A035F6732A38ALL * v82) & 0x9707589E0DED8D7CLL) - 0x347C53B0F9093942;
  v182 = (((a2 ^ v181 ^ 0xF008CFCFA1ABD21ALL) + v81) ^ 0x4D7F68FEFFDFFEE6) - 0x4D7F68FEFFDFFEE6 + ((2 * ((a2 ^ v181 ^ 0xF008CFCFA1ABD21ALL) + v81)) & 0x9AFED1FDFFBFFDCCLL);
  v183 = ((HIDWORD(v182) - ((v182 >> 31) & 0x2BF29AE2) - 0x3EB24E67EA06B28FLL) ^ 0xC14DB19815F94D71) + v182;
  v184 = ((2 * v183) & 0xFDD9FDBF57FAFEFCLL) + (v183 ^ 0x7EECFEDFABFD7F7ELL) - 0x7EECFEDFABFD7F7ELL;
  v185 = v184 + (((v184 >> 16) - ((v184 >> 15) & 0x135280D77686ELL) - 0x75E8656BF9444BC9) ^ 0x75E8656BF9444BC8) + 1;
  v186 = (v185 ^ 0xEBF7FFB531FF7BB7) + 0x1408004ACE008449 + ((2 * v185) & 0xD7EFFF6A63FEF76ELL);
  v187 = (((v186 >> 8) - ((v186 >> 7) & 0x1E3840C7320CCBCLL) - 0x7E0E3DF9C66F99A2) ^ 0x81F1C2063990665ELL) + v186;
  v188 = v187 - ((2 * v187) & 0x3B9E45F766BFC784) - 0x6230DD044CA01C3ELL;
  v189 = (v188 ^ 0x9DCF22FBB35FE3C2) - ((2 * (v188 ^ 0x9DCF22FBB35FE3C2) - 0x771DD8810C64362CLL) & 0x9376D6ED9607A7C0) - 0x71D380C9BB2E4736;
  STACK[0x390] = v189;
  v190 = (((v181 ^ 0x8238C739CDF5155ELL ^ v189) + v81) ^ 0xB3BFCFFEEFFF309FLL) + 0x4C4030011000CF61 + ((2 * ((v181 ^ 0x8238C739CDF5155ELL ^ v189) + v81)) & 0x677F9FFDDFFE613ELL);
  v191 = ((HIDWORD(v190) - ((v190 >> 31) & 0x1F34DAE0ALL) - 0x4026EDAB065928FBLL) ^ 0xBFD91254F9A6D705) + v190;
  v192 = ((2 * v191) & 0xBFFEFAFC1EF7BEEALL) + (v191 ^ 0x5FFF7D7E0F7BDF75) - 0x5FFF7D7E0F7BDF75;
  v193 = v192 + (((v192 >> 16) - ((v192 >> 15) & 0x361EC513F63ELL) - 0x3B41E4F09D7604E1) ^ 0x3B41E4F09D7604E0) + 1;
  v194 = (v193 ^ 0xFF6F7BD170C9B6EFLL) + 0x90842E8F364911 + ((2 * v193) & 0xFEDEF7A2E1936DDELL);
  v195 = (((v194 >> 8) - ((v194 >> 7) & 0x889ED7CD94DEC6) - 0x60BBB0941935909DLL) ^ 0x9F444F6BE6CA6F63) + v194;
  v196 = v195 - ((2 * v195) & 0x68B44F5ED1C929E0) + 0x345A27AF68E494F0;
  v542 = (v196 ^ 0x345A27AF68E494F0) - ((2 * (v196 ^ 0x345A27AF68E494F0) - 0x771DD8810C64362CLL) & 0xBC18FB77414B1198) - 0x5D826E84E58C924ALL;
  v197 = (((v181 ^ 0x958FD1F4A6534E72 ^ v542) + v81) ^ 0x5AEDFDEC6BF977BDLL) - 0x5AEDFDEC6BF977BDLL + ((2 * ((v181 ^ 0x958FD1F4A6534E72 ^ v542) + v81)) & 0xB5DBFBD8D7F2EF7ALL);
  v198 = ((HIDWORD(v197) - ((v197 >> 31) & 0x16574E3A0) + 0x544D15BCB2BA71D0) ^ 0x544D15BCB2BA71D0) + v197;
  v199 = ((2 * v198) & 0xFDBEF67658FFFFDALL) + (v198 ^ 0x7EDF7B3B2C7FFFEDLL) - 0x7EDF7B3B2C7FFFEDLL;
  v200 = v199 + (((v199 >> 16) - ((v199 >> 15) & 0x86590A212378) - 0x6751BCD37AEF6E44) ^ 0x6751BCD37AEF6E43) + 1;
  v201 = (v200 ^ 0x7FF77FF2695EF7FDLL) - 0x7FF77FF2695EF7FDLL + ((2 * v200) & 0xFFEEFFE4D2BDEFFALL);
  v202 = (((v201 >> 8) - ((v201 >> 7) & 0x7FC7F9E04AF420) - 0x23C01C030FDA85F0) ^ 0xDC3FE3FCF0257A10) + v201;
  v203 = ((2 * v202) & 0xFB1AFF67F7D7DCFCLL) + (v202 ^ 0x7D8D7FB3FBEBEE7ELL);
  v204 = ((((v203 + 0x1049948A7B6ED145) >> 25) - (((v203 + 0x1049948A7B6ED145) >> 24) & 0x4F1D3B6174) + 0x7C5B4AA78E9DB0BALL) ^ 0x7C5B4AA78E9DB0BALL) + v203 + 0x1049948A7B6ED145;
  v205 = ((2 * v204) & 0xEFBDD5FBADD77EFCLL) + (v204 ^ 0xF7DEEAFDD6EBBF7ELL) + 0x821150229144082;
  v206 = v205 + (((v205 >> 12) - ((v205 >> 11) & 0x17C1BDE75BC9F4) - 0x22341F210C521B06) ^ 0x22341F210C521B05) + 1;
  v207 = (v206 ^ 0xFF4FBEDFFEFB9FEFLL) + 0xB0412001046011 + ((2 * v206) & 0xFE9F7DBFFDF73FDELL);
  v208 = (((v207 >> 7) - ((v207 >> 6) & 0x2798F677CCAC464) + 0x713CC7B3BE656232) ^ 0x713CC7B3BE656232) + v207;
  v209 = v208 - ((2 * v208) & 0x107CBD8B616EE59ALL) + 0x83E5EC5B0B772CDLL;
  v210 = ((((v209 >> 30) ^ 0x373767992) + (v209 ^ 0xDCDD9E64A5C7D447)) ^ 0x496E3E7B6DAEFEFELL) - 0x496E3E7B6DAEFEFELL + ((2 * (((v209 >> 30) ^ 0x373767992) + (v209 ^ 0xDCDD9E64A5C7D447))) & 0x92DC7CF6DB5DFDFCLL);
  v211 = (((v210 >> 11) - ((v210 >> 10) & 0x41C4DC1FACE2ELL) + 0x29A20E26E0FD6717) ^ 0x29A20E26E0FD6717) + v210;
  v212 = ((2 * v211) & 0xB7AF5B77DB1778FELL) + (v211 ^ 0x5BD7ADBBED8BBC7FLL) - 0x5BD7ADBBED8BBC7FLL;
  v213 = v212 + (((v212 >> 3) - ((v212 >> 2) & 0x10AF3FC9E4F7A4B0) + 0x48579FE4F27BD258) ^ 0xB7A8601B0D842DA7) + 1;
  v214 = ((2 * v213) & 0xAFDB5BECFFAFBFDELL) + (v213 ^ 0x57EDADF67FD7DFEFLL);
  v215 = ((((v214 - 0x82FA14C4B70D7A2) >> 25) - (((v214 - 0x82FA14C4B70D7A2) >> 24) & 0xA902793B06) - 0x3D2C52AB7EC3627DLL) ^ 0xC2D3AD54813C9D83) + v214 - 0x82FA14C4B70D7A2;
  v216 = ((2 * v215) & 0xBDFEDD6FEAF2B3FELL) + (v215 ^ 0xDEFF6EB7F57959FFLL) + 0x210091480A86A601;
  v217 = v216 + (((v216 >> 14) - ((v216 >> 13) & 0x6131177900CBALL) + 0x51030988BBC8065DLL) ^ 0xAEFCF6774437F9A2) + 1;
  v218 = ((2 * v217) & 0xCF3FCB9F5BE77F76) + (v217 ^ 0xE79FE5CFADF3BFBBLL) + 0x18601A30520C4045;
  v219 = v218 + (((v218 >> 7) - ((v218 >> 6) & 0x31FD6B216D2E8B0) + 0x1B8FEB590B697458) ^ 0xE47014A6F4968BA7) + 1;
  v539 = ((2 * v219) & 0xEDF9FFE3DD7FEEDCLL) + (v219 ^ 0x76FCFFF1EEBFF76ELL);
  v220 = v539 + 0x525511E220F5604DLL + ((((v539 + 0x525511E220F5604DLL) >> 28) - (((v539 + 0x525511E220F5604DLL) >> 27) & 0x11BFD344E2) + 0x3757C978DFE9A271) ^ 0xC8A8368720165D8ELL) + 1;
  v221 = ((2 * v220) & 0xFF23FACAF5EFD4FALL) + (v220 ^ 0xFF91FD657AF7EA7DLL) + 0x6E029A85081583;
  v222 = v221 + (((v221 >> 13) - ((v221 >> 12) & 0x56B4ED4AA7848) + 0x3D52B5A76A553C24) ^ 0xC2AD4A5895AAC3DBLL) + 1;
  v223 = (v222 ^ 0xDFADEF263B2DFF72) + 0x205210D9C4D2008ELL + ((2 * v222) & 0xBF5BDE4C765BFEE4);
  v224 = (((v223 >> 5) - ((v223 >> 4) & 0x67F3D3C895D364ALL) - 0x1CC06161BB5164DBLL) ^ 0xE33F9E9E44AE9B25) + v223;
  v225 = v224 - ((2 * v224) & 0xC564B6FDD28B628ALL) + 0x62B25B7EE945B145;
  v226 = ((2 * ((v225 ^ 0x6BFA0697D2BEBD50) - ((v225 >> 29) ^ 0x35FD034BELL))) & 0x2EFEDB75EAF7EAFCLL) + (((v225 ^ 0x6BFA0697D2BEBD50) - ((v225 >> 29) ^ 0x35FD034BELL)) ^ 0x977F6DBAF57BF57ELL) + 0x688092450A840A82;
  v227 = v226 + (((v226 >> 11) - ((v226 >> 10) & 0x291770CB484198) - 0x798B74479A5BDF34) ^ 0x798B74479A5BDF33) + 1;
  v228 = (v227 ^ 0xEBFDFB73BE7EDA7FLL) + 0x1402048C41812581 + ((2 * v227) & 0xD7FBF6E77CFDB4FELL);
  v229 = (((v228 >> 8) - ((v228 >> 7) & 0x86936E7AD5AF82) - 0x6EBCB648C295283FLL) ^ 0x914349B73D6AD7C1) + v228;
  v230 = ((2 * v229) & 0x7E6FDE95BAADCFBALL) + (v229 ^ 0xBF37EF4ADD56E7DDLL);
  v231 = ((((v230 + 0x23494791B518B1DFLL) >> 31) - (((v230 + 0x23494791B518B1DFLL) >> 30) & 0x143C2F562) - 0x1917669B5E1E854FLL) ^ 0xE6E89964A1E17AB1) + v230 + 0x23494791B518B1DFLL;
  v232 = (v231 ^ 0xD3FDFDFBEFF87FD7) + 0x2C02020410078029 + ((2 * v231) & 0xA7FBFBF7DFF0FFAELL);
  v233 = (((v232 >> 15) - ((v232 >> 14) & 0x30B347A01847ELL) - 0x72F67A65C2FF3DC1) ^ 0x8D09859A3D00C23FLL) + v232;
  v234 = (v233 ^ 0x7FFCD77F77DD7FB6) - 0x7FFCD77F77DD7FB6 + ((2 * v233) & 0xFFF9AEFEEFBAFF6CLL);
  v235 = (((v234 >> 5) - ((v234 >> 4) & 0xC330073C10A2802) + 0x16198039E0851401) ^ 0x16198039E0851401) + v234;
  v236 = v235 - ((2 * v235) & 0x10BC7E02F0D8E2E4) - 0x77A1C0FE87938E8ELL;
  v237 = ((2 * ((v236 ^ 0xE101068BD1DB6B92) - ((v236 >> 28) ^ 0xE101068BDLL))) & 0xDFA4FFDFFFFEFF7ALL) + (((v236 ^ 0xE101068BD1DB6B92) - ((v236 >> 28) ^ 0xE101068BDLL)) ^ 0x6FD27FEFFFFF7FBDLL) - 0x6FD27FEFFFFF7FBDLL;
  v238 = v237 + (((v237 >> 11) - ((v237 >> 10) & 0x2847BF8277B7F8) - 0x2DEBDC203EC42404) ^ 0x2DEBDC203EC42403) + 1;
  v239 = ((((((2 * v238) & 0xAFFF7E2BFF79FF7ELL) + (v238 ^ 0x57FFBF15FFBCFFBFLL) - 0x57FFBF15FFBCFFBFLL) >> 5) - (((((2 * v238) & 0xAFFF7E2BFF79FF7ELL) + (v238 ^ 0x57FFBF15FFBCFFBFLL) - 0x57FFBF15FFBCFFBFLL) >> 4) & 0x1C821F298323C1CLL) + 0x50E410F94C191E0ELL) ^ 0xAF1BEF06B3E6E1F1) + ((2 * v238) & 0xAFFF7E2BFF79FF7ELL) + (v238 ^ 0x57FFBF15FFBCFFBFLL);
  v240 = v239 - ((2 * v239 + 0x500081D400860084) & 0xD9DCF1B21CF3320ELL) - 0x6B11463CF14366B7;
  v241 = ((((v240 >> 31) ^ 0x11595E063) + (v240 ^ 0x8ACAF031D90C30FALL)) ^ 0xFBD5F73BFF1777FELL) + 0x42A08C400E88802 + ((2 * (((v240 >> 31) ^ 0x11595E063) + (v240 ^ 0x8ACAF031D90C30FALL))) & 0xF7ABEE77FE2EEFFCLL);
  v242 = (((v241 >> 10) - ((v241 >> 9) & 0x511178AD49AC28) - 0x4E977743A95B29ECLL) ^ 0xB16888BC56A4D614) + v241;
  v243 = (v242 ^ 0x5A7FBDFDFFFFD6F9) - 0x5A7FBDFDFFFFD6F9 + ((2 * v242) & 0xB4FF7BFBFFFFADF2);
  v244 = (((v243 >> 7) - ((v243 >> 6) & 0x7A1C316702E030) + 0x103D0E18B3817018) ^ 0x103D0E18B3817018) + v243;
  v536 = ((2 * v244) & 0xE4FF9EEFFC5FFFFALL) + (v244 ^ 0x727FCF77FE2FFFFDLL);
  LODWORD(v132) = (v188 ^ 0xB35FE3C2) - ((2 * (v188 ^ 0xB35FE3C2) + 969794794) & 0x23E13B80) + 1322750005;
  v245 = 2 * v203 + 136848132;
  LODWORD(v188) = v188 ^ LODWORD(STACK[0x3A0]) ^ v196 ^ (v203 - (v245 & 0x9F5085A) + 151950767) ^ v225 ^ v209 ^ v240;
  LODWORD(STACK[0x208]) = v188;
  LODWORD(v240) = (((v230 + 581507107) ^ (v214 - 2144853999)) - 264115470 - ((2 * ((v230 + 581507107) ^ (v214 - 2144853999))) & 0xE083D5E4)) ^ 0xF041EAF2 ^ (((2 * v244) & 0xFC5FFFFA) + (v244 ^ 0xFE2FFFFD) + 30408707);
  v538 = v132 ^ LODWORD(STACK[0x3A8]) ^ ((v196 ^ 0x68E494F0) - ((2 * (v196 ^ 0x68E494F0) + 2043536618) & 0x40F158C8) + 1566547673) ^ (((v203 - (v245 & 0xA4FCB64A) + 1452436647) ^ 0x527E5B25) - ((2 * ((v203 - (v245 & 0xA4FCB64A) + 1452436647) ^ 0x527E5B25) + 2043536618) & 0xC258A05C) + 504578723) ^ (v240 - ((2 * v240) & 0xF57FE7E0) - 88083472);
  LODWORD(v240) = v188 ^ 0x1F ^ ((v188 ^ 0xF31F) >> 8) ^ ((v188 ^ 0xDF41F31F) >> 16) ^ ((v188 ^ 0xDF41F31F) >> 24) ^ 0x91;
  LODWORD(v132) = v538 ^ 0x8A ^ ((v538 ^ 0x50A4618Au) >> 24) ^ 9 ^ (((v538 ^ 0x618A) >> 8) ^ ((v538 ^ 0x50A4618Au) >> 16));
  LODWORD(v230) = 16843009 * v132 - ((33686018 * v132) & 0x5DD9B37E) + 787274175;
  LODWORD(STACK[0x288]) = v230;
  v246 = STACK[0x368];
  LODWORD(v244) = (STACK[0x368] ^ 0xBBA70BB) - ((2 * (STACK[0x368] ^ 0xBBA70BB) + 969794794) & 0x2D362A1E) + 1401030532;
  LODWORD(v196) = 16843009 * v240 - ((33686018 * v240) & 0x81CA77CA) - 1058718747;
  LODWORD(STACK[0x240]) = v196;
  LODWORD(v240) = (((v125 ^ 0x5B849ADB) - 1125715339) ^ 0xDFF7BBBF) + 537412673 + ((2 * ((v125 ^ 0x5B849ADB) - 1125715339)) & 0xBFEF777E);
  LODWORD(v244) = LODWORD(STACK[0x388]) ^ ((v92 ^ 0x8D6D3E51) - ((2 * (v92 ^ 0x8D6D3E51) + 2043536618) & 0xA5D5FDBE) - 1882066604) ^ v244 ^ ((v108 ^ 0x644EE8CF) + 198246430 + ((-2043536620 - 2 * (v108 ^ 0x644EE8CF)) | 0x622BE4AF)) ^ 0xE381380D ^ ((v117 ^ 0x4DE4366C) - ((2 * (v117 ^ 0x4DE4366C) + 2043536618) & 0x74069594) + 1995062591);
  LODWORD(v132) = (v240 + v244) ^ 0x3FFDFFF5;
  LODWORD(v209) = (2 * (v240 + v244)) & 0x7FFBFFEA;
  LODWORD(v244) = 2 * ((v240 & v244) - ((2 * (v240 & v244)) & 0x17318E6)) + 24320230;
  LODWORD(v244) = v132 + v209 - 1073610740 + (((v244 ^ 0x17318E6) - 2 * ((v244 ^ 0x17318E6) & 0x3FB993D6 ^ v244 & 0x10) - 1078357050) ^ 0x40466C39);
  LODWORD(v240) = 2 * v133 - 1844442732;
  LODWORD(v244) = (((v133 - (v240 & 0x88F7F882) - 1920728821) ^ 0x447BFC41) - ((2 * ((v133 - (v240 & 0x88F7F882) - 1920728821) ^ 0x447BFC41) + 2043536618) & 0x5A506D40) + 1779378453) ^ (v244 - ((2 * v244) & 0xC6CE9D08) - 479768956);
  LODWORD(v133) = v133 - (v240 & 0x939B8460) + 315999994;
  LODWORD(v240) = v156 ^ v139;
  LODWORD(v139) = (v161 + 16851969) ^ (STACK[0x2F8] - 1191116767);
  LODWORD(v171) = v92 ^ LODWORD(STACK[0x304]) ^ v246 ^ v108 ^ v117 ^ v125 ^ v133 ^ v240 ^ v171;
  LODWORD(STACK[0x204]) = v171;
  LODWORD(v133) = (v139 + 1009057318 - ((2 * v139) & 0x7849FC4C)) ^ 0x3C24FE26 ^ (v176 + 135676193);
  LODWORD(v139) = v244 ^ (v133 - ((2 * v133) & 0x763EAFC2) + 991909857);
  LODWORD(STACK[0x368]) = v139;
  v247 = v171 ^ 0x8C7ACAFC;
  LODWORD(v133) = BYTE2(v247) ^ HIBYTE(v247) ^ v171 ^ 0xFC ^ ((v171 ^ 0xCAFC) >> 8);
  LODWORD(v133) = ((2 * v133) & 0xEEEEEEEE ^ 0x4E) + (v133 ^ 0x3FEB69D8);
  v541 = 16843009 * v133 - ((33686018 * v133 - 395821294) & 0xC40EA9A6) - 700746660;
  LODWORD(v133) = (((1077936128 * v133 - (((v133 << 23) + 75497472) & 0x31000000) + 2061179864) ^ 0x989B1BD8) & 0xFFC00000 | (v541 >> 10)) ^ 0x3881D5;
  LODWORD(v133) = v133 - ((2 * v133) & 0xAE1E7DC2) - 686866719;
  LODWORD(v244) = v139 ^ 0x2A ^ ((v139 ^ 0x172A) >> 8) ^ ((v139 ^ 0xC54F172A) >> 16) ^ ((v139 ^ 0xC54F172A) >> 24) ^ 0x5F;
  HIDWORD(v248) = v133 ^ 0x5989F;
  LODWORD(v248) = v133 ^ 0xC0FFFFFF;
  v540 = (v248 >> 22) - ((2 * (v248 >> 22)) & 0x6553E18) + 53124876;
  LODWORD(v244) = (16843009 * v244 - ((33686018 * v244) & 0x2E2D9FFC) + 387371006) ^ v540;
  LODWORD(STACK[0x20C]) = v244;
  v531 = v244 ^ 0xF56E6366;
  LODWORD(v133) = (LODWORD(STACK[0x328]) ^ 0xBB4FC1BA) - (v244 ^ 0xF56E6366);
  LODWORD(STACK[0x2F8]) = v230 ^ v196;
  v249 = v230 ^ v196 ^ 0xB354BF07;
  LODWORD(v133) = v249 + (v133 ^ 0x7DBDDDAF) + ((2 * v133) & 0xFB7BBB5E) - 2109595055;
  LODWORD(v171) = v133 ^ 0x5AFBEABF;
  LODWORD(v139) = (2 * v133) & 0xB5F7D57E;
  LOBYTE(v133) = v180 ^ 0xC4;
  LODWORD(v209) = 2 * (v180 ^ 0x8A3A78C4);
  LODWORD(v176) = v180;
  v526 = v180;
  v534 = (v209 & 0xD5BFC5FA ^ 0x90B481A2) + (v180 ^ 0xBDBFCBEA);
  v530 = v139 + v171 + 830380963 * (v534 - 1082851525 - ((v180 ^ 0xA29F14B9) - 1344610434 + (v209 & 0xEBFE7B5C ^ 0xAAB42304)));
  v250 = v188 ^ 0xDF41F31F;
  v528 = v250;
  LODWORD(v132) = ((2 * v250) & 0xF4 ^ 0x54) + (v250 & 0x7F ^ 0x3EF6D754);
  LODWORD(STACK[0x328]) = 33686018 * v132;
  v532 = ((2 * v250) & 0xF4 ^ 0x54) + (v250 & 0x7F ^ 0x54);
  v251 = 16843009 * v132 - 603027722;
  v252 = v251 - ((33686018 * v132 - 244359924) & 0xC6ADB0E0);
  v253 = v133 & 7;
  v254 = (v176 + 5) & 7;
  if (v253 == 3)
  {
    v255 = 0;
  }

  else
  {
    v255 = 255;
  }

  v256 = v254 ^ 4;
  v257 = (v255 << (v254 ^ 4)) - ((2 * (v255 << (v254 ^ 4))) & 0xB6E0) + 1290460016;
  v258 = v203 - ((2 * v203 + 2076437720) & 0x4EBA2948);
  if (v253 == 3)
  {
    v259 = 0;
  }

  else
  {
    v259 = v257 ^ 0xB315248F;
  }

  if (a79)
  {
    a76 = a78;
  }

  if (a79)
  {
    a77 = a75;
  }

  if (a79)
  {
    a67 = a68;
  }

  if (a79)
  {
    a69 = a72;
  }

  if (a79)
  {
    a71 = a73;
  }

  if ((a79 & 1) == 0)
  {
    a80 = a70;
  }

  v266 = v258 + 624888592;
  v267 = STACK[0x290];
  if ((a79 & 1) == 0)
  {
    v267 = STACK[0x27C];
  }

  v268 = (v236 ^ (v539 + 289409170) ^ 0x786C7172) + 884151100 + ~(2 * ((v236 ^ (v539 + 289409170) ^ 0x786C7172) & 0x34B3133F ^ (v236 ^ (v539 + 289409170)) & 4));
  v269 = v536 - 0x64273FE7D3E9DE3FLL + ((((v536 - 0x64273FE7D3E9DE3FLL) >> 31) - (((v536 - 0x64273FE7D3E9DE3FLL) >> 30) & 0x33CE2D2CCLL) + 0x6976A71B9E716966) ^ 0x968958E4618E9699) + 1;
  v270 = (v269 ^ 0xD5DFAF579F9FFBFFLL) + 0x2A2050A860600401 + ((2 * v269) & 0xABBF5EAF3F3FF7FELL);
  v271 = (((v270 >> 15) - ((v270 >> 14) & 0xC67E1D2F350ELL) - 0x3FE39CC0F1686579) ^ 0xC01C633F0E979A87) + v270;
  LODWORD(v271) = (((v271 - ((2 * v271) & 0x7A748F8536316CCLL) - 0x7C2C5B83D64E749ALL) >> 7) ^ 0xF8536316) + ((v271 - ((2 * v271) & 0x536316CC) + 699501414) ^ 0x29B18B66);
  v272 = v542 ^ STACK[0x390] ^ LODWORD(STACK[0x3B0]) ^ v266 ^ v268 ^ (v271 - ((2 * v271) & 0xC1D12914) - 521628534);
  v273 = ((v272 ^ 3) - ((2 * (v272 ^ 3) + 2) & 4) + 3) & 7;
  v274 = v272 & 7;
  if (v274 == 4)
  {
    v275 = 0;
  }

  else
  {
    v275 = 255;
  }

  v276 = v273 ^ 2;
  v277 = (v275 << (v273 ^ 2)) - ((2 * (v275 << (v273 ^ 2))) & 0x663C);
  v278 = (STACK[0x320] & 2) == 0;
  v279 = STACK[0x330];
  if ((STACK[0x320] & 2) == 0)
  {
    v279 = STACK[0x2D8];
  }

  LODWORD(STACK[0x290]) = v279;
  v280 = STACK[0x22C];
  if (v278)
  {
    v281 = STACK[0x228];
  }

  v282 = STACK[0x28C];
  if (!v278)
  {
    v283 = STACK[0x284];
  }

  v284 = STACK[0x280];
  if (!v278)
  {
    v284 = STACK[0x270];
  }

  LODWORD(STACK[0x280]) = v284;
  v285 = STACK[0x250];
  if (!v278)
  {
    v285 = STACK[0x238];
  }

  LODWORD(STACK[0x284]) = v285;
  v286 = STACK[0x234];
  if (!v278)
  {
    v286 = STACK[0x24C];
  }

  v287 = STACK[0x230];
  if (!v278)
  {
    v287 = a74;
  }

  LODWORD(STACK[0x238]) = v287;
  if (v278)
  {
    v288 = a77;
  }

  else
  {
    v288 = a76;
  }

  LODWORD(STACK[0x250]) = v288;
  if (v278)
  {
    v289 = a76;
  }

  else
  {
    v289 = a77;
  }

  LODWORD(STACK[0x28C]) = v289;
  v290 = STACK[0x2D0];
  if (v278)
  {
    v290 = STACK[0x2C0];
  }

  LODWORD(STACK[0x27C]) = v290;
  v291 = STACK[0x268];
  if (!v278)
  {
    v291 = STACK[0x264];
  }

  LODWORD(STACK[0x268]) = v291;
  v292 = STACK[0x254];
  if (v278)
  {
    v293 = STACK[0x23C];
  }

  v294 = STACK[0x360];
  if (v278)
  {
    v296 = a69;
  }

  else
  {
    v295 = STACK[0x348];
    v296 = a71;
  }

  LODWORD(STACK[0x348]) = v296;
  if (v278)
  {
    v297 = a71;
  }

  else
  {
    v297 = a69;
  }

  LODWORD(STACK[0x264]) = v297;
  if (v278)
  {
    v298 = STACK[0x278];
  }

  else
  {
    v298 = STACK[0x294];
  }

  v299 = STACK[0x25C];
  if (v278)
  {
    v301 = v267;
  }

  else
  {
    v300 = STACK[0x258];
    v301 = a80;
  }

  LODWORD(STACK[0x24C]) = v301;
  if (v278)
  {
    v302 = a80;
  }

  else
  {
    v302 = v267;
  }

  LODWORD(STACK[0x254]) = v302;
  v303 = STACK[0x26C];
  if (v278)
  {
    v303 = STACK[0x274];
  }

  LODWORD(STACK[0x294]) = v303;
  v562 = LODWORD(STACK[0x214]) ^ 0x5D7F3CF9;
  LODWORD(STACK[0x214]) = LODWORD(STACK[0x218]) ^ 0x11E7E51F;
  v304 = a49 ^ LODWORD(STACK[0x370]) ^ 0xA8C88DD5;
  v305 = STACK[0x318];
  LODWORD(STACK[0x270]) = a67;
  v306 = (v277 + 708588318) ^ 0xD5C3CCE1;
  if (v274 == 4)
  {
    v306 = 0;
  }

  v307 = (STACK[0x224] & 1) == 0;
  if (STACK[0x224])
  {
    a24 = v304;
  }

  LODWORD(STACK[0x228]) = a24;
  if (v307)
  {
    v309 = a48 ^ LODWORD(STACK[0x260]) ^ 0x2795D96A;
  }

  else
  {
    v309 = a25;
  }

  LODWORD(STACK[0x274]) = v309;
  if (v307)
  {
    v310 = STACK[0x210];
  }

  else
  {
    v310 = a41;
  }

  LODWORD(STACK[0x23C]) = v310;
  if (!v307)
  {
    a40 = a39;
  }

  LODWORD(STACK[0x230]) = a40;
  if (!v307)
  {
    a36 = a35;
  }

  LODWORD(STACK[0x25C]) = a36;
  if (!v307)
  {
    a34 = a33;
  }

  LODWORD(STACK[0x22C]) = a34;
  if (!v307)
  {
    a30 = a28;
  }

  LODWORD(STACK[0x218]) = a30;
  v315 = ((2 * (v277 + 708588318)) & 0x92 ^ 0x10) + ((v277 + 30) ^ 0x67671F57);
  v316 = 16843009 * v315 - ((33686018 * v315 + 308359022) & 0x7990DCB6) - 2047277550;
  LODWORD(STACK[0x26C]) = v316;
  v317 = (184549376 * v315 - ((369098752 * v315 - 1174405120) & 0xC4000000) - 1077305193) ^ 0xE2C9A097;
  LODWORD(STACK[0x2C0]) = v538 ^ 0xD8B6C095;
  v318 = v315 + (((v286 ^ 0x6FB610B) - 16843010 * v315 - 1640593518) ^ 0x25BD5BFD) + ((2 * ((v286 ^ 0x6FB610B) - 16843010 * v315 - 1640593518)) & 0x4B7AB7FA) + (v316 ^ 0xBCC86E5B) + 1926988986;
  v561 = (v317 & (v538 ^ 0xD8B6C095)) - ((2 * (v317 & (v538 ^ 0xD8B6C095))) & 0x22222222);
  LODWORD(STACK[0x3B0]) = v318 - ((2 * v318) & 0x9515779C);
  LODWORD(STACK[0x2D8]) = (v306 & (LODWORD(STACK[0x208]) ^ 0x38B283F9)) - ((2 * (v306 & (LODWORD(STACK[0x208]) ^ 0x38B283F9))) & 0x5E);
  v319 = v273 ^ 0x20F37DC;
  v320 = v247;
  v527 = v247;
  v321 = ((2 * v247) & 0xE6 ^ 0x42) + (v247 & 0x7F ^ 0xEFA7FDDA);
  LODWORD(STACK[0x330]) = 33686018 * v321;
  v322 = (33686018 * v321 + 1859001882) & 0x5F2695AC;
  v323 = v254 ^ 0xFAE87C8A;
  v324 = ((2 * (v257 & 0x7F)) ^ 0xE0) + (v257 ^ 0xFFFE340F);
  LODWORD(STACK[0x210]) = v321;
  v325 = 16843009 * v321 + 653941237;
  LODWORD(STACK[0x260]) = 16843009 * v324 - ((33686018 * v324 - 1667458814) & 0xA8E40232);
  v326 = ((-50331648 * v324 - ((973078528 * v324 + 973078528) & 0x2C000000) + 334043251) ^ 0x96E91873) & (LODWORD(STACK[0x368]) ^ 0x754F172A);
  v327 = STACK[0x204];
  LODWORD(STACK[0x2D0]) = (v259 & (LODWORD(STACK[0x204]) ^ 0x4A76C61A)) - ((2 * (v259 & (LODWORD(STACK[0x204]) ^ 0x4A76C61A))) & 0x55555555);
  v529 = v252;
  LODWORD(STACK[0x370]) = v252 ^ 0x6356D870;
  v328 = (LODWORD(STACK[0x220]) ^ 0xA4B3B67E) - (v253 ^ 3);
  v329 = v325 - v322 - 18;
  LODWORD(STACK[0x234]) = v329;
  v330 = (((v252 ^ 0x6356D870) + a44) ^ 0x3FBF67FB) + (v329 ^ 0x506CB529) + ((2 * ((v252 ^ 0x6356D870) + a44)) & 0x7F7ECFF6) - 1069508602;
  v331 = v330 ^ 0x2FD2B2FF;
  v332 = (2 * v330) & 0x5FA565FE;
  v552 = v323 ^ v319;
  v555 = ((2 * LODWORD(STACK[0x2F8])) ^ 0x66A97E0E) - ((2 * ((2 * LODWORD(STACK[0x2F8])) ^ 0x66A97E0E)) & 0xAF154A34);
  v333 = (v274 ^ 4) + (v328 ^ 0x177B67FD) + ((2 * v328) & 0x2EF6CFFA) - 393963517;
  v554 = ((2 * LODWORD(STACK[0x20C])) ^ 0xEADCC6CC) - ((2 * ((2 * LODWORD(STACK[0x20C])) ^ 0xEADCC6CC)) & 0x2D142CB4);
  v334 = (((v298 ^ 0x358F3788) - v249) ^ 0xF4BEF91A) + v531 + ((2 * ((v298 ^ 0x358F3788) - v249)) & 0xE97DF234) + 188810982;
  v551 = v334 - ((2 * v334) & 0xDED09A70);
  LODWORD(STACK[0x3A8]) = v276;
  LODWORD(STACK[0x3A0]) = v256;
  LODWORD(STACK[0x360]) = v253 ^ 3;
  LODWORD(STACK[0x390]) = v274 ^ 4;
  v335 = v250 & 0xFFFFFF80;
  v336 = v252;
  v337 = (v252 ^ 0x70) + (v250 & 0xFFFFFF80 ^ 0x550BC000);
  v549 = v337 - 2 * (v337 & 0x31682E9E ^ v251 & 8);
  v338 = v327;
  v339 = a46 - (dword_100268EF0[(v327 ^ 0x1D20AC55u) % 0x101] ^ 0x89B1A76D);
  v340 = v329 ^ 0xD6 | v320 & 0xFFFFFF80 ^ 0xC60C0C80;
  v341 = v340 - 2 * (v340 & 0x335EB6B7 ^ v325 & 1) + 861845174;
  v342 = ((2 * ((v341 ^ 0x6408DCB6u) % 0x101)) & 0x24E) + (((v341 ^ 0x6408DCB6u) % 0x101) ^ 0x4FFB5527);
  v343 = (v339 ^ 0x37E97FF7) + ((2 * v339) & 0x6FD2FFEE) - 938049527 + (dword_100261A90[v342 - 1341871399] ^ (v342 - ((2 * v342 + 8300) & 0x5069A0) - 995375866) ^ 0x30D8DAB1);
  LODWORD(STACK[0x258]) = v343 - ((2 * v343) & 0x500A16B6);
  v344 = STACK[0x208];
  v345 = (LODWORD(STACK[0x208]) ^ 0x75B5CCCE) + ((137863802 * (v274 ^ 4)) & 0x1BF377FA) + ((-199503555 * (v274 ^ 4)) ^ 0xDF9BBFD) + v331 + v332 + ((399007110 * (v253 ^ 3)) & 0xFFB29FFE) + ((199503555 * (v253 ^ 3)) ^ 0xFFD94FFF) - 1034272506;
  v346 = (((LODWORD(STACK[0x268]) ^ 0x22F2054A) + 134808611 + (((2 * v272) ^ 0x99F69F10) & 0xEFEDF7BA ^ 0xE7A59538) + (v272 ^ 0xC8DF7AE9)) ^ 0x77FFDFFB) - ((((2 * v272) ^ 0x99F69F10) & 0xEEAD54FC ^ 0xE6A51478) + (v272 ^ 0x487F2B4A)) + ((2 * ((LODWORD(STACK[0x268]) ^ 0x22F2054A) + 134808611 + (((2 * v272) ^ 0x99F69F10) & 0xEFEDF7BA ^ 0xE7A59538) + (v272 ^ 0xC8DF7AE9))) & 0xEFFFBFF6);
  v556 = v346 - ((2 * v346 + 2125305094) & 0x4E7966C4);
  v347 = dword_1002657A0[(((v526 ^ 0xD7602917) - 2 * ((v526 ^ 0xD7602917) & 0x2C76A022 ^ v526 & 0x20) + 745971714) ^ 0x2C76A002) % 0x101];
  v348 = ((((v336 | v335) ^ 0x550BC070) - 2 * (((v336 | v335) ^ 0x550BC070) & 0x3110A9DB ^ v532 & 1) + 823175642) ^ 0x3110A9DA) + (v345 ^ 0xDF5BDC7F) + ((2 * v345) & 0xBEB7B8FE) + 547627905;
  LODWORD(STACK[0x278]) = v348 - ((2 * v348) & 0xF9F379A8);
  HIDWORD(v349) = v347 ^ 0x1046916;
  LODWORD(v349) = v347 ^ 0x1A000000;
  v350 = dword_10025A150[(v534 - 1793057533) % 0x101u];
  LODWORD(STACK[0x268]) = (v349 >> 25) - ((2 * (v349 >> 25)) & 0x2DE0049C) - 1762655666;
  v351 = (LODWORD(STACK[0x254]) ^ 0xA4B3B67E) + ((-1806517042 * (v338 ^ 0xAFD81C9D)) & 0xAD770B6E) + ((1244225127 * (v338 ^ 0xAFD81C9D)) ^ 0xD6BB85B7) + 692353609;
  v537 = 422364559 * LODWORD(STACK[0x2C0]) - ((39422750 * LODWORD(STACK[0x2C0])) & 0xC259DE2);
  v533 = 422364559 * (LODWORD(STACK[0x368]) ^ 0x90FEF542) - ((844729118 * (LODWORD(STACK[0x368]) ^ 0x90FEF542)) & 0xA2ADC972);
  v352 = (a66 ^ 0x4BBE14FD) + ((1097599614 * (v526 ^ 0x659899DF)) & 0x7F2B5F2A) + ((-1598683841 * (v526 ^ 0x659899DF)) ^ 0xBF95AF95) + 1080709227;
  v353 = ((1598683841 * (v272 ^ 0x8DD131FC)) ^ 0x6C6F9FFD) + ((-1097599614 * (v272 ^ 0x8DD131FC)) & 0xD8DF3FFA) + (v352 ^ 0x7FFE3EFE) + ((2 * v352) & 0xFFFC7DFC);
  v535 = v353 - ((2 * v353 + 656687626) & 0x66BE3076);
  v354 = v545 - (v543 & 0x38AA49793895FBACLL) - 0x63AADB4363B5022ALL;
  v355 = (v354 ^ 0x11B413B4A1542787) + 0x212B809020A200C1 + ((2 * v354) & 0xBDA8FEDFBEBBFE7ELL ^ 0x9C80D896BC13B070);
  v356 = ((HIDWORD(v355) - ((v355 >> 31) & 0x113FBE5BALL) - 0x399D683076020D23) ^ 0xC66297CF89FDF2DDLL) + v355;
  v357 = ((2 * v356) & 0x87CFFD2BADEEB6BELL) + (v356 ^ 0x43E7FE95D6F75B5FLL) - 0x43E7FE95D6F75B5FLL;
  v358 = v357 + (((v357 >> 16) - ((v357 >> 15) & 0x78E7FFE72AB4) - 0x5F0C38C000C6AA6) ^ 0x5F0C38C000C6AA5) + 1;
  v359 = (v358 ^ 0xEAE9A9D53FFFFEFFLL) + 0x1516562AC0000101 + ((2 * v358) & 0xD5D353AA7FFFFDFELL);
  v360 = (((v359 >> 8) - ((v359 >> 7) & 0x17F13FCA85476DCLL) + 0x52BF89FE542A3B6ELL) ^ 0x52BF89FE542A3B6ELL) + v359;
  v361 = ((2 * v360) & 0x76EB77BFEDFBB3F6) + (v360 ^ 0xBB75BBDFF6FDD9FBLL);
  v362 = (((v361 + 151135749) >> 2) - (((v361 + 151135749) >> 1) & 0x74E82AC) + 61292886) & 0x18F37BB7 ^ (v361 + 151135749);
  LODWORD(STACK[0x254]) = (v362 ^ 0xA34116) + 75066194 - 2 * ((v362 ^ 0xA34116) & 0x4796B6E ^ v362 & 0x28);
  v363 = v361 - ((2 * v361 + 0x11F6AFBF05A015DELL) & 0x2C967EE299429480) - 0x60B968AF308EAAD1;
  v364 = (v363 ^ v354 ^ 0x7BE5ACB2C2144A7DLL) + 0xE044880ED000215 + ((2 * (v363 ^ v354)) & 0xE3F76EFE25FFFBD6 ^ 0x34269A21D76B04);
  v365 = ((HIDWORD(v364) - ((v364 >> 31) & 0xCDF10266) + 0x40CF64866F88133) ^ 0x40CF64866F88133) + v364;
  v366 = ((2 * v365) & 0xEFBA6DB9FAB5BBBCLL) + (v365 ^ 0x77DD36DCFD5ADDDELL) - 0x77DD36DCFD5ADDDELL;
  v367 = v366 + (((v366 >> 16) - ((v366 >> 15) & 0x1A18FECF5E2B6) + 0x6AB1D0C7F67AF15BLL) ^ 0x954E2F3809850EA4) + 1;
  v368 = (v367 ^ 0x2FBFBAFB5BF1DFFELL) - 0x2FBFBAFB5BF1DFFELL + ((2 * v367) & 0x5F7F75F6B7E3BFFCLL);
  v369 = (((v368 >> 8) - ((v368 >> 7) & 0x17130457011A0FALL) + 0x33B89822B808D07DLL) ^ 0x33B89822B808D07DLL) + v368;
  v370 = ((2 * v369) & 0xB5FDBD25F3BFFCFELL) + (v369 ^ 0x5AFEDE92F9DFFE7FLL);
  v371 = (v370 + 102760833) ^ 0x10237832 ^ (((v370 + 102760833) >> 2) - (((v370 + 102760833) >> 1) & 0xE4EF074) + 388462650) & 0x18F37BB7;
  v544 = v371 - ((2 * v371) & 0x79912D80);
  v372 = v370 - ((2 * v370 - 0x2D1B95A70024332ALL) & 0xA69262659E5CB000) + 0x3CBB665F4F1C3E6BLL;
  v373 = (v372 ^ v354 ^ 0x3DE4EC392E135812) + 0xD0706488288023CLL + ((2 * (v372 ^ v354)) & 0xE5F1F36EFAEFFB88 ^ 0x8430230CA2C94B88);
  v374 = ((HIDWORD(v373) - ((v373 >> 31) & 0x19F23A44) + 0x2FBAF5450CF91D22) ^ 0x2FBAF5450CF91D22) + v373;
  v375 = ((2 * v374) & 0x7FDFCEFFFBFFFDFELL) + (v374 ^ 0x3FEFE77FFDFFFEFFLL) - 0x3FEFE77FFDFFFEFFLL;
  v376 = v375 + (((v375 >> 16) - ((v375 >> 15) & 0x1E306BF5F9226) - 0x61CD0E7CA05036EDLL) ^ 0x61CD0E7CA05036ECLL) + 1;
  v377 = (v376 ^ 0x6BFBFEE7F7FF5EFDLL) - 0x6BFBFEE7F7FF5EFDLL + ((2 * v376) & 0xD7F7FDCFEFFEBDFALL);
  v378 = (((v377 >> 8) - ((v377 >> 7) & 0x20A6E6A1D6A914) - 0x7EFAC8CAF14AB76) ^ 0xF810537350EB548ALL) + v377;
  v379 = ((2 * v378) & 0xF3DFF7FFFBD73FE0) + (v378 ^ 0x79EFFBFFFDEB9FF0);
  v380 = (v379 + 34889744) ^ 0x10013AA7 ^ (((v379 + 34889744) >> 2) - (((v379 + 34889744) >> 1) & 0xE13755E) + 386513583) & 0x18F37BB7;
  v381 = v380 - ((2 * v380) & 0x74B92E34);
  v382 = v379 - 2 * ((v379 + 0x117BF7BE244FALL) & 0x4AB2D23483CC4FLL ^ v378 & 1) - 0x3534356E4F99EEB8;
  v383 = v548 - (v546 & 0xC736A92FB4EE1C64) + 0x639B5497DA770E32;
  v384 = (((v383 ^ 0x63D1E645EEF4C27CLL ^ v382) + 1) ^ 0x4BFEBFAF9F6EDFCDLL) - 0x4BFEBFAF9F6EDFCDLL + ((2 * ((v383 ^ 0x63D1E645EEF4C27CLL ^ v382) + 1)) & 0x97FD7F5F3EDDBF9ALL);
  v385 = ((HIDWORD(v384) - ((v384 >> 31) & 0x63C510A) + 0x2F09CB0D031E2885) ^ 0x2F09CB0D031E2885) + v384;
  v386 = ((2 * v385) & 0xDBF7FEFFBF3D71DELL) + (v385 ^ 0xEDFBFF7FDF9EB8EFLL) + 0x1204008020614711;
  v387 = v386 + (((v386 >> 16) - ((v386 >> 15) & 0x1804CEB3C84ALL) + 0x7DAE0C026759E425) ^ 0x8251F3FD98A61BDALL) + 1;
  v388 = (v387 ^ 0x737B3D69E6EBBFBBLL) - 0x737B3D69E6EBBFBBLL + ((2 * v387) & 0xE6F67AD3CDD77F76);
  v389 = (((v388 >> 8) - ((v388 >> 7) & 0xA3DB4F9F8A1D7ELL) + 0x5651EDA7CFC50EBFLL) ^ 0x5651EDA7CFC50EBFLL) + v388;
  v390 = ((2 * v389) & 0x79BE9F5F52AFFEFELL) + (v389 ^ 0xBCDF4FAFA957FF7FLL);
  v391 = v390 - ((2 * v390 + 0xF23881FA0EBCAD6) & 0x2E5A944FF6DEB366) - 0x6140F1C8341AC0E2;
  v392 = (((v383 ^ 0x74B61EB021185781 ^ v391) + 1) ^ 0x8DF7D7EF3263FFE5) + 0x72082810CD9C001BLL + ((2 * ((v383 ^ 0x74B61EB021185781 ^ v391) + 1)) & 0x1BEFAFDE64C7FFCALL);
  v393 = ((HIDWORD(v392) - ((v392 >> 31) & 0x4BB9D5A6) + 0x1339845D25DCEAD3) ^ 0x1339845D25DCEAD3) + v392;
  v394 = ((((((2 * v393) & 0xFAFFDFCBFEE7BFFELL) + (v393 ^ 0xFD7FEFE5FF73DFFFLL) + 0x280101A008C2001) >> 16) - (((((2 * v393) & 0xFAFFDFCBFEE7BFFELL) + (v393 ^ 0xFD7FEFE5FF73DFFFLL) + 0x280101A008C2001) >> 15) & 0x10B55D9092196) + 0x4C6585AAEC8490CBLL) ^ 0xB39A7A55137B6F34) + ((2 * v393) & 0xFAFFDFCBFEE7BFFELL) + (v393 ^ 0xFD7FEFE5FF73DFFFLL);
  v395 = v394 - ((2 * v394 + 0x500203401184004) & 0x50C47F51F320829ELL) + 0x2AE24FC2FA1C6151;
  v396 = (2 * ((((v395 >> 8) ^ 0x28623FA8F99041) & (v395 ^ 0x28623FA8F990414FLL)) - ((2 * (((v395 >> 8) ^ 0x28623FA8F99041) & (v395 ^ 0x28623FA8F990414FLL))) & 0xAA069F4AC2E9E8)) + 0x5EAA069F4AC2E9E8) ^ 0x5EAA069F4AC2E9E8;
  v397 = ((v396 - ((2 * v396) & 0xF0DCE6983C25F98) + 0x4786E734C1E12FCDLL) ^ 0x4786E734C1E12FCDLL) + (v395 ^ 0x284A5D975169D10ELL ^ (v395 >> 8));
  v398 = ((2 * v397) & 0x5FDFB7FE359FA9DELL) + (v397 ^ 0x2FEFDBFF1ACFD4EFLL);
  v399 = v398 - ((2 * v398 + 0x29026F80BDFC1FF6) & 0xB901E3389DE347C2) - 0xEFDD6A352104C24;
  v400 = (((v383 ^ 0xBF1BA50B9486ADD3 ^ v399) + 1) ^ 0x1D3F6EF4FEAFFB7FLL) - 0x1D3F6EF4FEAFFB7FLL + ((2 * ((v383 ^ 0xBF1BA50B9486ADD3 ^ v399) + 1)) & 0x3A7EDDE9FD5FF6FELL);
  v401 = ((HIDWORD(v400) - ((v400 >> 31) & 0x7445B8F2) + 0x277D89B23A22DC79) ^ 0x277D89B23A22DC79) + v400;
  v402 = ((2 * v401) & 0xF79EDE7E7CDB7BFELL) + (v401 ^ 0x7BCF6F3F3E6DBDFFLL) - 0x7BCF6F3F3E6DBDFFLL;
  v403 = v402 + (((v402 >> 16) - ((v402 >> 15) & 0xCDE4E6F16EC2) - 0x3553990D8C87489FLL) ^ 0x3553990D8C87489ELL) + 1;
  v404 = (v403 ^ 0x54DAFBF7FDDBFEECLL) - 0x54DAFBF7FDDBFEECLL + ((2 * v403) & 0xA9B5F7EFFBB7FDD8);
  v405 = (((v404 >> 8) - ((v404 >> 7) & 0x12C61A76EAB5854) - 0x7769CF2C48AA53D6) ^ 0x889630D3B755AC2ALL) + v404;
  v406 = ((2 * v405) & 0xBDBEFFEEF6EAF77ELL) + (v405 ^ 0x5EDF7FF77B757BBFLL);
  LODWORD(v390) = (v390 + 1453850753) ^ 0x8E250B1 ^ (((v390 + 1453850753) >> 2) - (((v390 + 1453850753) >> 1) & 0x15CCA172) + 182866105) & 0x18F37BB7;
  v407 = v390 - ((2 * v390) & 0xDE4B0668);
  LODWORD(v398) = (v398 - 449828079) ^ 0x702A35 ^ (((v398 - 449828079) >> 2) - (((v398 - 449828079) >> 1) & 0x4E854EA) + 41167477) & 0x18F37BB7;
  v408 = v398 - ((2 * v398) & 0x14DBEE0E);
  LODWORD(v398) = (v406 - 2071296959) ^ 0x10413210 ^ (((v406 - 2071296959) >> 2) - (((v406 - 2071296959) >> 1) & 0x88364B0) + 339849816) & 0x18F37BB7;
  v409 = v398 - ((2 * v398) & 0x3567D29C);
  v410 = (STACK[0x224] & 2) == 0;
  LODWORD(STACK[0x224]);
  LODWORD(STACK[0x224]);
  if ((STACK[0x224] & 2) == 0)
  {
    v411 = STACK[0x228];
  }

  LODWORD(STACK[0x224]);
  LODWORD(STACK[0x224]);
  if ((STACK[0x224] & 2) != 0)
  {
    a54 = a52;
  }

  LODWORD(STACK[0x228]) = a54;
  v413 = STACK[0x23C];
  v414 = STACK[0x230];
  if (v410)
  {
    v415 = STACK[0x23C];
  }

  else
  {
    v415 = STACK[0x230];
  }

  if (v410)
  {
    v416 = STACK[0x230];
  }

  else
  {
    v416 = STACK[0x23C];
  }

  v417 = STACK[0x22C];
  v418 = STACK[0x218];
  if (v410)
  {
    v419 = STACK[0x22C];
  }

  else
  {
    v419 = STACK[0x218];
  }

  LODWORD(STACK[0x224]) = v419;
  if (v410)
  {
    v420 = v418;
  }

  else
  {
    v420 = v417;
  }

  LODWORD(STACK[0x220]) = v420;
  v421 = v272 ^ 0x5EDDDC24;
  if (v410)
  {
    v422 = STACK[0x274];
  }

  v423 = STACK[0x25C];
  v424 = LODWORD(STACK[0x20C]) ^ 0x7DD8672E;
  v425 = (LODWORD(STACK[0x238]) ^ 0x9BFD1C85) + ((937030082 * ((v549 + 828911254) ^ 0x31682E96)) & 0xE3FDEAFE) + ((468515041 * ((v549 + 828911254) ^ 0x31682E96)) ^ 0x71FEF57F) - 1912534399;
  v426 = (v549 + 828911254) ^ v528 ^ (((v549 + 828911254) ^ v528) >> 6) ^ (v333 - ((2 * v333) & 0x149A420) + 10801680);
  v427 = v527 ^ LODWORD(STACK[0x264]) ^ v341 ^ ((v341 ^ v527) >> 2);
  v428 = v552 ^ LODWORD(STACK[0x250]) ^ (v537 + 101895921) ^ LODWORD(STACK[0x2F8]) ^ (v555 - 678779621) ^ (v533 - 782834503) ^ v424 ^ (v554 + 378148443);
  v553 = LODWORD(STACK[0x204]) ^ 0xDA119CB1;
  LODWORD(STACK[0x274]) = v540 ^ 0x8C200839;
  v429 = v381 - 1168337126;
  LODWORD(STACK[0x20C]) = a62 ^ a64;
  v430 = v344 ^ 0x3DED4C95;
  v431 = LODWORD(STACK[0x260]) - 1564455526;
  v550 = LODWORD(STACK[0x368]) ^ 0x59E32908;
  v432 = v372 ^ v363 ^ v382 ^ v391 ^ v399 ^ (v406 - ((2 * v406 - 55520682) & 0x6907989C) + 853292409);
  v433 = v409 - 1699485362;
  if (v410)
  {
    v434 = a57;
  }

  else
  {
    v434 = a58;
  }

  LODWORD(STACK[0x204]) = v434;
  if (v410)
  {
    v435 = a58;
  }

  else
  {
    v435 = a57;
  }

  LODWORD(STACK[0x208]) = v435;
  LODWORD(STACK[0x25C]) = v424 ^ v541;
  v436 = LODWORD(STACK[0x234]) ^ v529;
  v437 = v436 ^ LODWORD(STACK[0x358]) ^ (v436 >> 3);
  LODWORD(STACK[0x260]) = v436 ^ (v551 - 278377160);
  LODWORD(STACK[0x230]) = v530 - ((2 * v530 + 1531229498) & 0xF5F8EC42) + 681496766;
  v438 = ((((v406 + 0x2EF79446FBE54404) >> 25) - (((v406 + 0x2EF79446FBE54404) >> 24) & 0xF9FAD49A00) + 0x4B26FCFD6A4D00) ^ 0x4B26FCFD6A4D00) + v406 + 0x2EF79446FBE54404;
  v439 = (v438 ^ 0x3EFBEFFEF59F72FBLL) - 0x3EFBEFFEF59F72FBLL + ((2 * v438) & 0x7DF7DFFDEB3EE5F6);
  v440 = (v439 >> 12) - ((v439 >> 11) & 0x1D4A2738777DE8) + 0x77CEA5139C3BBEF4;
  v441 = (((v440 ^ 0x77CEA5139C3BBEF4) + v439) ^ 0xBADAF97FDEECDBAFLL) + ((2 * ((v440 ^ 0x77CEA5139C3BBEF4) + v439)) & 0x75B5F2FFBDD9B75ELL) + 0x4525068021132452 + ((((2 * v440) ^ 0xEF9D4A2738777DE8) - 2 * (((2 * v440) ^ 0xEF9D4A2738777DE8) & 0x98D1FC92D10A8CLL ^ (2 * v440) & 4) + 0x5798D1FC92D10A89) ^ 0xA8672E036D2EF576);
  v442 = (v441 ^ 0xFDFFDB63BADD77FCLL) + 0x200249C45228804 + ((2 * v441) & 0xFBFFB6C775BAEFF8);
  v443 = (((v442 >> 7) - ((v442 >> 6) & 0x2B1E61B607719ECLL) + 0x4758F30DB03B8CF6) ^ 0x4758F30DB03B8CF6) + v442;
  v444 = v443 - ((2 * v443) & 0xA4B2DB20F18B4B76) + 0x52596D9078C5A5BBLL;
  v445 = ((((v444 >> 30) ^ 0x21AEAB4C5) + (v444 ^ 0x86BAAD316DB50331)) ^ 0x3FA72BFF53CFEAF9) - 0x3FA72BFF53CFEAF9 + ((2 * (((v444 >> 30) ^ 0x21AEAB4C5) + (v444 ^ 0x86BAAD316DB50331))) & 0x7F4E57FEA79FD5F2);
  v446 = (((v445 >> 11) - ((v445 >> 10) & 0x332FB80E6DB282) + 0x3A9997DC0736D941) ^ 0x3A9997DC0736D941) + v445;
  v447 = ((((((2 * v446) & 0xEEDA5FDDDBFC77AELL) + (v446 ^ 0x776D2FEEEDFE3BD7) - 0x776D2FEEEDFE3BD7) >> 3) - (((((2 * v446) & 0xEEDA5FDDDBFC77AELL) + (v446 ^ 0x776D2FEEEDFE3BD7) - 0x776D2FEEEDFE3BD7) >> 2) & 0x21E6FA28B43163ECLL) + 0x10F37D145A18B1F6) ^ 0xEF0C82EBA5E74E09) + ((2 * v446) & 0xEEDA5FDDDBFC77AELL) + (v446 ^ 0x776D2FEEEDFE3BD7);
  v448 = v447 - ((2 * v447 + 0x1125A02224038854) & 0xA62F2AFF403E458CLL) - 0x24559A6F4DDF1910;
  v449 = (((v448 ^ 0x5317957FA01F22C6) + 0x4FBE0CAA3467084DLL) ^ 0x7EB07FB7BFAEF7FDLL) - 0x7EB07FB7BFAEF7FDLL + ((2 * ((v448 ^ 0x5317957FA01F22C6) + 0x4FBE0CAA3467084DLL)) & 0xFD60FF6F7F5DEFFALL);
  v450 = (((v449 >> 25) - ((v449 >> 24) & 0x77FCD30268) + 0x3D8801BBFE698134) ^ 0x3D8801BBFE698134) + v449;
  v451 = ((2 * v450) & 0x5B53557FE5DFDCBCLL) + (v450 ^ 0xADA9AABFF2EFEE5ELL) + 0x525655400D1011A2;
  v452 = v451 + (((v451 >> 14) - ((v451 >> 13) & 0x55AB6EE40F2AELL) + 0x550EAD5B77207957) ^ 0xAAF152A488DF86A8) + 1;
  v453 = ((((((2 * v452) & 0xFFFF5F7378BF3F74) + (v452 ^ 0x7FFFAFB9BC5F9FBALL) - 0x7FFFAFB9BC5F9FBALL) >> 7) - (((((2 * v452) & 0xFFFF5F7378BF3F74) + (v452 ^ 0x7FFFAFB9BC5F9FBALL) - 0x7FFFAFB9BC5F9FBALL) >> 6) & 0x2826886118880CALL) + 0x5941344308C44065) ^ 0xA6BECBBCF73BBF9ALL) + ((2 * v452) & 0xFFFF5F7378BF3F74) + (v452 ^ 0x7FFFAFB9BC5F9FBALL);
  v454 = v453 - ((2 * v453 + 0xA08C8740C08ELL) & 0x458BBF5749351EE6) + 0x22C62FF1E83AEFBALL;
  v455 = ((2 * ((v454 ^ 0xA2C5DFABA49A8F73) - 0x36ADEE2BF04AA845)) & 0x7ECFFEFC2FFBDEFCLL) + (((v454 ^ 0xA2C5DFABA49A8F73) - 0x36ADEE2BF04AA845) ^ 0xBF67FF7E17FDEF7ELL) + 0x40980081E8021082;
  v456 = v455 + (((v455 >> 28) - ((v455 >> 27) & 0x4300DA802) - 0x484C683DE7F92BFFLL) ^ 0x484C683DE7F92BFELL) + 1;
  v457 = ((2 * v456) & 0x9AD773EDF63D31C8) + (v456 ^ 0xCD6BB9F6FB1E98E4) + 0x3294460904E1671CLL;
  v458 = v457 + (((v457 >> 13) - ((v457 >> 12) & 0xFF0DA51338D3ELL) + 0x1FAFF86D2899C69FLL) ^ 0xE0500792D7663960) + 1;
  v459 = (v458 ^ 0xFFEBCFB7FFFFDFFELL) + 0x14304800002002 + ((2 * v458) & 0xFFD79F6FFFFFBFFCLL);
  v460 = (((v459 >> 5) - ((v459 >> 4) & 0x4D9BB9D0E208100) - 0x3593223178EFBF80) ^ 0xCA6CDDCE87104080) + v459;
  v461 = v460 - ((2 * v460) & 0xC7F34DF7C152F870) + 0x63F9A6FBE0A97C38;
  LODWORD(v444) = v461 ^ v444;
  v462 = ((2 * ((v461 ^ 0x6AB1FB12DB52702DLL) - ((v461 >> 29) ^ 0x3558FD896))) & 0xF17BDFFB93F61AF6) + (((v461 ^ 0x6AB1FB12DB52702DLL) - ((v461 >> 29) ^ 0x3558FD896)) ^ 0xF8BDEFFDC9FB0D7BLL) + 0x74210023604F285;
  v463 = v462 + (((v462 >> 11) - ((v462 >> 10) & 0x29912CA42F5A0) + 0x45214C8965217AD0) ^ 0xBADEB3769ADE852FLL) + 1;
  v464 = (v463 ^ 0xEFF1FF1EEE7C93EELL) + 0x100E00E111836C12 + ((2 * v463) & 0xDFE3FE3DDCF927DCLL);
  v465 = (((v464 >> 8) - ((v464 >> 7) & 0xD4609A14523B7ELL) - 0x2595CFB2F5D6E241) ^ 0xDA6A304D0A291DBFLL) + v464;
  v466 = ((((v465 - ((2 * v465) & 0x2AFEFFFCDF9FFB2) - 0x7EA8080019030027) ^ 0x8157F7FFE6FCFFD9) - 0x1D7EC9236D906644) ^ 0xE3EFBBFA37ECDFDFLL) + 0x1C104405C8132021 + ((2 * (((v465 - ((2 * v465) & 0x2AFEFFFCDF9FFB2) - 0x7EA8080019030027) ^ 0x8157F7FFE6FCFFD9) - 0x1D7EC9236D906644)) & 0xC7DF77F46FD9BFBELL);
  v467 = (((v466 >> 31) - ((v466 >> 30) & 0x2F3BB88E6) + 0x6A7098E979DDC473) ^ 0x6A7098E979DDC473) + v466;
  v468 = (v467 ^ 0x7B5A2FAFE96328FDLL) - 0x7B5A2FAFE96328FDLL + ((2 * v467) & 0xF6B45F5FD2C651FALL);
  v469 = (((v468 >> 15) - ((v468 >> 14) & 0x10041DB4E51C0) - 0x7D557FDF1258D720) ^ 0x82AA8020EDA728E0) + v468;
  v470 = (v469 ^ 0x6FE2FEB3AD6CFB7FLL) - 0x6FE2FEB3AD6CFB7FLL + ((2 * v469) & 0xDFC5FD675AD9F6FELL);
  v471 = (((v470 >> 5) - ((v470 >> 4) & 0x3E3F60AB6758F8ELL) + 0x31F1FB055B3AC7C7) ^ 0x31F1FB055B3AC7C7) + v470;
  v472 = v471 - ((2 * v471) & 0x4CF713713AADA6E6) - 0x5984764762A92C8DLL;
  LODWORD(v454) = v472 ^ v454;
  v473 = ((2 * ((v472 ^ 0xCF24B03234E1C993) - ((v472 >> 28) ^ 0xCF24B0323))) & 0xBFEFEBF9FC9DFB7CLL) + (((v472 ^ 0xCF24B03234E1C993) - ((v472 >> 28) ^ 0xCF24B0323)) ^ 0x5FF7F5FCFE4EFDBELL) - 0x5FF7F5FCFE4EFDBELL;
  v474 = v473 + (((v473 >> 11) - ((v473 >> 10) & 0x12EB9935138CE6) + 0x4B2975CC9A89C673) ^ 0xB4D68A336576398CLL) + 1;
  v475 = ((((((2 * v474) & 0xBF7B75EF9DFBFEDELL) + (v474 ^ 0xDFBDBAF7CEFDFF6FLL) + 0x2042450831020091) >> 5) - (((((2 * v474) & 0xBF7B75EF9DFBFEDELL) + (v474 ^ 0xDFBDBAF7CEFDFF6FLL) + 0x2042450831020091) >> 4) & 0x803B505A54ED8ECLL) - 0x33FE257D2D58938ALL) ^ 0x33FE257D2D589389) + ((2 * v474) & 0xBF7B75EF9DFBFEDELL) + (v474 ^ 0xDFBDBAF7CEFDFF6FLL);
  v476 = v475 - ((2 * v475 + 0x40848A1062040124) & 0xB9065C34BA1663C4) + 0x7CC573228E0D3274;
  v477 = ((((v476 >> 31) ^ 0x754F4DE5) + (v476 ^ 0x3AA7A6F28A7E981FLL)) ^ 0x7BFF1F7EDEDAFE7BLL) - 0x7BFF1F7EDEDAFE7BLL + ((2 * (((v476 >> 31) ^ 0x754F4DE5) + (v476 ^ 0x3AA7A6F28A7E981FLL))) & 0xF7FE3EFDBDB5FCF6);
  v478 = (((v477 >> 10) - ((v477 >> 9) & 0x144CDDFD442158) + 0x7F4A266EFEA210ACLL) ^ 0x7F4A266EFEA210ACLL) + v477;
  LODWORD(v444) = v444 ^ v476 ^ ((v444 ^ v476) >> 2) & 0x18F37BB7;
  v479 = (v478 ^ 0xDFABEFFF6DDBAFEFLL) + 0x2054100092245011 + ((2 * v478) & 0xBF57DFFEDBB75FDELL);
  v480 = (((v479 >> 7) - ((v479 >> 6) & 0x35FF9FA01E28608) + 0x67AFFCFD00F14304) ^ 0x67AFFCFD00F14304) + v479;
  v481 = ((2 * (((v480 - ((2 * v480) & 0xE6D474D9FD7A127ALL) + 0x736A3A6CFEBD093DLL) ^ 0x736A3A6CFEBD093DLL) + 0xE588F902A4621BELL)) & 0xFBEBFF52CFDFBEEELL) + ((((v480 - ((2 * v480) & 0xE6D474D9FD7A127ALL) + 0x736A3A6CFEBD093DLL) ^ 0x736A3A6CFEBD093DLL) + 0xE588F902A4621BELL) ^ 0xFDF5FFA967EFDF77) + 0x20A005698102089;
  v482 = v481 + (((~(v481 >> 30) | 0xFFFFFFFC8812FD27) + (v481 >> 31) - 0x584D69FC44097E93) ^ 0x584D69FC44097E93) + 1;
  v483 = (v482 ^ 0xD5DFFFDDFCC7DFFFLL) + 0x2A20002203382001 + ((2 * v482) & 0xABBFFFBBF98FBFFELL);
  v484 = (((v483 >> 15) - ((v483 >> 14) & 0x13A837C362C40) + 0x1A869D41BE1B1620) ^ 0x1A869D41BE1B1620) + v483;
  v485 = (v484 ^ 0x7FFC27DF67FF7FFELL) - 0x7FFC27DF67FF7FFELL + ((2 * v484) & 0xFFF84FBECFFEFFFCLL);
  LODWORD(v485) = (((v485 >> 7) - 1633338252 - ((v485 >> 6) & 0x3D4A78E8)) ^ 0x9EA53C74) + v485;
  LODWORD(v454) = v454 ^ (v485 - ((2 * v485) & 0x75C24BDC) - 1159649810);
  v486 = STACK[0x304];
  LODWORD(v485) = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x348]) ^ (LODWORD(STACK[0x254]) - 12) ^ (v544 + 1019778752) ^ v429 ^ (v407 - 282754252) ^ (v408 - 1972504825) ^ v433 ^ v430 ^ ((v556 + 647200229) >> 2) & 0x18F37BB7;
  LODWORD(STACK[0x264]) = v556 + 647200229;
  LODWORD(v478) = v485 ^ ((v430 ^ v486 ^ (v556 + 647200229)) >> 2) & 0x18F37BB7 ^ v444;
  v487 = STACK[0x388];
  v488 = STACK[0x380];
  LODWORD(STACK[0x368]) = v421;
  HIDWORD(v489) = v487 ^ 0x17AF;
  LODWORD(v489) = v487 ^ 0x71900000;
  v490 = v432 ^ v488 ^ (v432 >> 2) & 0x18F37BB7 ^ v421 ^ ((v421 ^ v488) >> 2) & 0x18F37BB7 ^ (v535 - 957269696) ^ v454 ^ (v454 >> 2) & 0x18F37BB7;
  v491 = (v489 >> 18) - ((2 * (v489 >> 18)) & 0x3CE0B3FC) - 1636804098;
  HIDWORD(v489) = v491 ^ 0x97E;
  LODWORD(v489) = v491 ^ 0xDD77C000;
  v492 = ((v489 >> 14) + 1008964824 - ((2 * (v489 >> 14)) & 0x785D29B0) + 720896) ^ 0x6DD43FCF;
  v493 = (1173392991 - (v558[v558[v558[(v559 & 1) == 0] & 1] & 1] & 1)) ^ 0x45F08E5F;
  LODWORD(v485) = (v561 + 299054702) ^ LODWORD(STACK[0x26C]);
  v547 = (LODWORD(STACK[0x2D8]) + 47);
  LODWORD(STACK[0x348]) = v485;
  LODWORD(STACK[0x218]) = v485 ^ 0x7F2211BE;
  v557 = LODWORD(STACK[0x288]) ^ 0x433A79FB;
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x3B0]) + 1250606030;
  LODWORD(v454) = (LODWORD(STACK[0x2D0]) + 42);
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x240]) ^ 0x973D5F2D;
  LODWORD(STACK[0x358]) = v431 ^ v454;
  LODWORD(STACK[0x254]) = v437 ^ 0x45D5B53C;
  LODWORD(STACK[0x23C]) = v427 ^ 0x1A29FF9F;
  LODWORD(STACK[0x278]) += 2096741588;
  v560 = LODWORD(STACK[0x258]) - 1476064421;
  LODWORD(STACK[0x22C]) = v426;
  LODWORD(STACK[0x258]) = v426 ^ 0x7272D615;
  LODWORD(STACK[0x2D0]) = v478 ^ 0x96922F29;
  LODWORD(STACK[0x3B0]) = v486 ^ 0x632BD81;
  LODWORD(STACK[0x238]) = v490 ^ 0xFF4BC643;
  if (v493 <= 1)
  {
    v493 = 1;
  }

  v494 = STACK[0x398];
  v495 = ((STACK[0x398] - 1585) | 0x60) - 352;
  v496 = 0x594D01AFB39951C5 * (v558[v495] ^ 0x2020202020202020) - ((0x329A035F6732A38ALL * (v558[v495] ^ 0x2020202020202020)) & 0x3932BA9EFC8A4858) + 0x1C995D4F7E45242CLL;
  v497 = (((v496 ^ 0x4FAC15289C060142) + v495) ^ 0xFBFFFFFE7DDA3FCDLL) + 0x40000018225C033 + ((2 * ((v496 ^ 0x4FAC15289C060142) + v495)) & 0xF7FFFFFCFBB47F9ALL);
  v498 = ((HIDWORD(v497) + 0x3FC1D047705B076ALL - ((v497 >> 31) & 0xE0B60ED4)) ^ 0x3FC1D047705B076ALL) + v497;
  v499 = ((2 * v498) & 0xDB67FC7FCCF37BFCLL) + (v498 ^ 0xEDB3FE3FE679BDFELL) + 0x124C01C019864202;
  v500 = v499 + (((v499 >> 16) - ((v499 >> 15) & 0xEC4EE1D01C80) + 0x4926762770E80E40) ^ 0xB6D989D88F17F1BFLL) + 1;
  v501 = (v500 ^ 0xDAFE575FBF72BDE7) + 0x2501A8A0408D4219 + ((2 * v500) & 0xB5FCAEBF7EE57BCELL);
  v502 = (((v501 >> 8) - 0x19AAB44398AA5746 - ((v501 >> 7) & 0xAA9778CEAB5174)) ^ 0xE6554BBC6755A8BALL) + v501;
  v503 = ((2 * v502) & 0x59F7CDBAE7E7F79ELL) + (v502 ^ 0x2CFBE6DD73F3FBCFLL);
  v504 = (v503 - 1945369551) ^ 0x180050C6 ^ (((v503 - 1945369551) >> 2) - (((v503 - 1945369551) >> 1) & 0x1C86A19C) + 507728078) & 0x19BC76F7;
  v505 = v503 - ((2 * v503 - 1847202484) & 0xB94E73F0);
  v506 = v503 - ((2 * v503 + 0x2EEA59C40BB3D236) & 0x631709B6C6CFA41CLL) + 0x4900B1BD6941BB29;
  v507 = (((v496 ^ 0x2D12D9941D22F622 ^ v506) + v495) ^ 0xBEE5FFFFFD4FCFD6) + 0x411A000002B0302ALL + ((2 * ((v496 ^ 0x2D12D9941D22F622 ^ v506) + v495)) & 0x7DCBFFFFFA9F9FACLL);
  v508 = ((HIDWORD(v507) - 0x711095BCF24628B3 - ((v507 >> 31) & 0x1B73AE9A)) ^ 0x8EEF6A430DB9D74DLL) + v507;
  v509 = ((2 * v508) & 0xDFDF6FFDF5E68FBALL) + (v508 ^ 0xEFEFB7FEFAF347DDLL) + 0x10104801050CB823;
  v510 = v509 + (((v509 >> 16) - ((v509 >> 15) & 0x166C525F450BALL) + 0x37B1B36292FA285DLL) ^ 0xC84E4C9D6D05D7A2) + 1;
  v511 = (v510 ^ 0xEDE7B1BFEBEEF3E4) + 0x12184E4014110C1CLL + ((2 * v510) & 0xDBCF637FD7DDE7C8);
  v512 = (((v511 >> 8) + 0x33A2096D4199BECBLL - ((v511 >> 7) & 0x14412DA83337D96)) ^ 0x33A2096D4199BECBLL) + v511;
  v513 = ((2 * v512) & 0xDDDF2977FDEF7E78) + (v512 ^ 0xEEEF94BBFEF7BF3CLL);
  v514 = (v513 + 17318084) ^ 0x10AC0653 ^ (((v513 + 17318084) >> 2) - (((v513 + 17318084) >> 1) & 0x9580CB6) + 346818139) & 0x19BC76F7;
  v515 = v514 - ((2 * v514) & 0x44D87BA4);
  v516 = v513 - ((2 * v513 + 2078172786) & 0x57B1A6A) + 1085063278;
  v517 = v513 - ((2 * v513 - 0x54FD01F90A53B4A4) & 0xDBBE81C7E6F69F3ELL) + 0x4360BFE76E51754DLL;
  v518 = (((v496 ^ 0xF1461DAC8D3E6BB3 ^ v517) + v495) ^ 0xF79EFA2CFA3FFFCELL) + 0x86105D305C00032 + ((2 * ((v496 ^ 0xF1461DAC8D3E6BB3 ^ v517) + v495)) & 0xEF3DF459F47FFF9CLL);
  v519 = ((HIDWORD(v518) + 0x65713B0608C8BCDCLL - ((v518 >> 31) & 0x119179B8)) ^ 0x65713B0608C8BCDCLL) + v518;
  v520 = ((2 * v519) & 0xFED9BF0743FBBE6ELL) + (v519 ^ 0xFF6CDF83A1FDDF37) + 0x93207C5E0220C9;
  v521 = v520 + (((v520 >> 16) - ((v520 >> 15) & 0x13EBAC5289B58) - 0x7ECC60A29D6BB254) ^ 0x7ECC60A29D6BB253) + 1;
  v522 = (v521 ^ 0x57BDF8F7AFBD3D9BLL) - 0x57BDF8F7AFBD3D9BLL + ((2 * v521) & 0xAF7BF1EF5F7A7B36);
  v523 = (((v522 >> 8) + 0x6FEDA32BAFDD3BF4 - ((v522 >> 7) & 0x1DB46575FBA77E8)) ^ 0x6FEDA32BAFDD3BF4) + v522;
  LODWORD(v523) = ((2 * v523) & 0x7EF1BDFE) + (v523 ^ 0xBF78DEFF);
  LODWORD(v496) = (((v523 + 1082597633) >> 2) - (((v523 + 1082597633) >> 1) & 0x1736A4D2) + 463164009) & 0x19BC76F7 ^ (v523 + 1082597633);
  LODWORD(STACK[0x3B0]) ^= (v504 - ((2 * v504) & 0x93E3BF3E) + 1240588191) ^ (v515 + 577519058) ^ 0xE1F51C24 ^ ((v496 ^ 0x19985261) - 2 * ((v496 ^ 0x19985261) & 0xA68FE7F ^ v496 & 0x16) - 1972830615);
  v524 = v523 - ((2 * v523 - 86235412) & 0x24A7F08A) + 264375227;
  return (*(&off_1002D7880 + ((226 * (v493 == 1)) ^ v494)))(v492 ^ (v505 - 1516621666) ^ ((v505 - 1516621666) >> 2) & 0x19BC76F7 ^ (v516 >> 2) & 0x19BC76F7 ^ v516 ^ 0xDD591EAA ^ (v524 >> 2) & 0x19BC76F7 ^ v524, 0x33A2096D4199BECBLL, 0xE6554BBC6755A8BALL);
}

uint64_t sub_10010559C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, uint64_t a51, int a52)
{
  if ((STACK[0x320] & 2) != 0)
  {
    v56 = STACK[0x270];
  }

  else
  {
    v56 = STACK[0x318];
  }

  LODWORD(STACK[0x320]) = a41 ^ a52;
  v57 = a34 ^ LODWORD(STACK[0x2CC]) ^ HIDWORD(a30);
  LODWORD(STACK[0x270]) = LODWORD(STACK[0x268]) ^ HIDWORD(a33) ^ a32 ^ a40;
  v58 = LODWORD(STACK[0x26C]) ^ a25;
  LODWORD(STACK[0x268]) = HIDWORD(a34) - a35;
  v59 = a31 ^ a33;
  v60 = (v55 - 1196507809) & 0x475147EC;
  v61 = *(STACK[0x520] + 8 * a26) ^ 0x2020202020202020;
  v62 = 0x594D01AFB39951C5 * v61 - ((0x329A035F6732A38ALL * v61) & 0x3E7F22A2ADD26D64) - 0x60C06EAEA916C94ELL;
  v63 = ((((v60 + 0x2BA1C41F4FAB4DC2) ^ v62 ^ v53) + a26) ^ 0x1C6A6FEDEFD9BFE9) - 0x1C6A6FEDEFD9BFE9 + ((2 * (((v60 + 0x2BA1C41F4FAB4DC2) ^ v62 ^ v53) + a26)) & 0x38D4DFDBDFB37FD2);
  v64 = ((HIDWORD(v63) - ((v63 >> 31) & 0x1A037A0BELL) + 0x6F9EB46BD01BD05FLL) ^ 0x6F9EB46BD01BD05FLL) + v63;
  v65 = ((2 * v64) & 0xFF6EC9FFBEF35FF4) + (v64 ^ 0x7FB764FFDF79AFFALL) - 0x7FB764FFDF79AFFALL;
  v66 = v65 + (((v65 >> 16) - ((v65 >> 15) & 0x3A62DDE5E96) + 0x4A8901D316EF2F4BLL) ^ 0xB576FE2CE910D0B4) + 1;
  v67 = (v66 ^ 0xDFFFFFFDB7BEE1C9) + 0x2000000248411E37 + ((2 * v66) & 0xBFFFFFFB6F7DC392);
  v68 = (((v67 >> 8) - ((v67 >> 7) & 0x1CF65A9C118E1A2) + 0x76E7B2D4E08C70D1) ^ 0x76E7B2D4E08C70D1) + v67;
  v69 = ((2 * v68) & 0xF97B3DFFF7DEF9AALL) + (v68 ^ 0xFCBD9EFFFBEF7CD5);
  v70 = v69 - ((2 * v69 - 0x7099168104432FD6) & 0xCBE4A06471FFB3AELL) + 0x2DA5C4F1B6DE41ECLL;
  v71 = (((v62 ^ 0x7ACDC1636E16EF65 ^ v70) + a26) ^ 0x79F7D7C9C77EFABCLL) - 0x79F7D7C9C77EFABCLL + ((2 * ((v62 ^ 0x7ACDC1636E16EF65 ^ v70) + a26)) & 0xF3EFAF938EFDF578);
  v72 = ((HIDWORD(v71) - ((v71 >> 31) & 0x2BD3FA74) - 0x5A0B0389EA1602C6) ^ 0xA5F4FC7615E9FD3ALL) + v71;
  v73 = ((2 * v72) & 0x335ABDF6FD7FBFFALL) + (v72 ^ 0x99AD5EFB7EBFDFFDLL) + 0x6652A10481402003;
  v74 = v73 + (((v73 >> 16) - ((v73 >> 15) & 0x180E6F167F63ELL) + 0x769BC07378B3FB1FLL) ^ 0x89643F8C874C04E0) + 1;
  v75 = (v74 ^ 0x7E3DFFBA9BEBFFFDLL) - 0x7E3DFFBA9BEBFFFDLL + ((2 * v74) & 0xFC7BFF7537D7FFFALL);
  v76 = (((v75 >> 8) - ((v75 >> 7) & 0x285FB2069719ELL) + 0x6C0142FD9034B8CFLL) ^ 0x6C0142FD9034B8CFLL) + v75;
  v77 = ((2 * v76) & 0x77F3FBB137B1DDDELL) + (v76 ^ 0xBBF9FDD89BD8EEEFLL);
  v78 = v77 - ((2 * v77 + 0x10EE2BCDBBE9EBF6) & 0x313CDFEA9B47A076) + 0x211585DC2B98C636;
  v79 = (((v62 ^ 0x7A1FEA41B4AE689 ^ v78) + a26) ^ 0xEFB7E97DB5EFFD57) + 0x104816824A1002A9 + ((2 * ((v62 ^ 0x7A1FEA41B4AE689 ^ v78) + a26)) & 0xDF6FD2FB6BDFFAAELL);
  v80 = ((HIDWORD(v79) - ((v79 >> 31) & 0xCB3FAE38) - 0x5EC03A489A6028E4) ^ 0xA13FC5B7659FD71CLL) + v79;
  v81 = ((2 * v80) & 0xFFFCBDFEBFB3CB62) + (v80 ^ 0x7FFE5EFF5FD9E5B1) - 0x7FFE5EFF5FD9E5B1;
  v82 = v81 + (((v81 >> 16) - ((v81 >> 15) & 0x3A1B8641A3E6) - 0x440CE2F23CDF2E0DLL) ^ 0x440CE2F23CDF2E0CLL) + 1;
  v83 = (v82 ^ 0xFDFF8CFFFD1FFC1ELL) + 0x200730002E003E2 + ((2 * v82) & 0xFBFF19FFFA3FF83CLL);
  v84 = (((v83 >> 8) - ((v83 >> 7) & 0x17B2CA2C03FD86ALL) + 0x2BD9651601FEC35) ^ 0x2BD9651601FEC35) + v83;
  v85 = ((2 * v84) & 0xD9BFB6725FDBFF9ELL) + (v84 ^ 0xECDFDB392FEDFFCFLL);
  v86 = ((((v85 - 0x5F08C6FAB893400CLL) >> 25) - (((v85 - 0x5F08C6FAB893400CLL) >> 24) & 0xBE37E894) + 0x735A01805F1BF44ALL) ^ 0x735A01805F1BF44ALL) + v85 - 0x5F08C6FAB893400CLL;
  v87 = ((2 * v86) & 0xF7F76BFABDFFFE7ELL) + (v86 ^ 0x7BFBB5FD5EFFFF3FLL) - 0x7BFBB5FD5EFFFF3FLL;
  v88 = v87 + (((v87 >> 12) - ((v87 >> 11) & 0x166DB3C089247ALL) + 0x794B36D9E044923DLL) ^ 0x86B4C9261FBB6DC2) + 1;
  v89 = (v88 ^ 0x7BFB9CE7FFFE90BBLL) - 0x7BFB9CE7FFFE90BBLL + ((2 * v88) & 0xF7F739CFFFFD2176);
  v90 = (((v89 >> 7) - ((v89 >> 6) & 0x17E6C19DA844FC4) - 0x3340C9F312BDD81ELL) ^ 0xCCBF360CED4227E2) + v89;
  v91 = v90 - ((2 * v90) & 0xA60691C2D5B01F58) - 0x2CFCB71E9527F054;
  v92 = ((((v91 >> 30) ^ 0x1F822101) + (v91 ^ 0x7E088407FA8A926)) ^ 0x5DBE577FBFFAF677) - 0x5DBE577FBFFAF677 + ((2 * (((v91 >> 30) ^ 0x1F822101) + (v91 ^ 0x7E088407FA8A926))) & 0xBB7CAEFF7FF5ECEELL);
  v93 = (((v92 >> 11) - ((v92 >> 10) & 0x6253C3992ECA4) + 0x4383129E1CC97652) ^ 0x4383129E1CC97652) + v92;
  v94 = ((((((2 * v93) & 0xFDDABFDAFBB7BCFELL) + (v93 ^ 0x7EED5FED7DDBDE7FLL) - 0x7EED5FED7DDBDE7FLL) >> 3) - (((((2 * v93) & 0xFDDABFDAFBB7BCFELL) + (v93 ^ 0x7EED5FED7DDBDE7FLL) - 0x7EED5FED7DDBDE7FLL) >> 2) & 0x106239E336BF9974) - 0x17CEE30E64A03346) ^ 0x17CEE30E64A03345) + ((2 * v93) & 0xFDDABFDAFBB7BCFELL) + (v93 ^ 0x7EED5FED7DDBDE7FLL);
  v95 = v94 - ((2 * v94 + 0x225402504484304) & 0x9D91808C875FBB1ALL) - 0x30249FA73A2C00F1;
  v96 = (((v95 ^ 0x4EC8C04643AFDD8DLL) + 0x4FBE0CAA3467084DLL) ^ 0x93D3B5FAE7EFA77BLL) + 0x6C2C4A0518105885 + ((2 * ((v95 ^ 0x4EC8C04643AFDD8DLL) + 0x4FBE0CAA3467084DLL)) & 0x27A76BF5CFDF4EF6);
  v97 = (((v96 >> 25) - ((v96 >> 24) & 0xBBA4CAF26ELL) - 0x70D690222D9A86C9) ^ 0x8F296FDDD2657937) + v96;
  v98 = ((2 * v97) & 0xE5EFE3DA6FF3FCFELL) + (v97 ^ 0xF2F7F1ED37F9FE7FLL) + 0xD080E12C8060181;
  v99 = v98 + (((v98 >> 14) - ((v98 >> 13) & 0x2306080B72A88) + 0x36891830405B9544) ^ 0xC976E7CFBFA46ABBLL) + 1;
  v100 = ((((((2 * v99) & 0xF32EFD6DDFFDFF76) + (v99 ^ 0xF9977EB6EFFEFFBBLL) + 0x668814910010045) >> 7) - (((((2 * v99) & 0xF32EFD6DDFFDFF76) + (v99 ^ 0xF9977EB6EFFEFFBBLL) + 0x668814910010045) >> 6) & 0x1D15327F7048466) - 0x5717566C047DBDCDLL) ^ 0x5717566C047DBDCCLL) + ((2 * v99) & 0xF32EFD6DDFFDFF76) + (v99 ^ 0xF9977EB6EFFEFFBBLL);
  v101 = v100 - ((2 * v100 + 0xCD102922002008CLL) & 0xAE2F4324F02CCCC2) + 0x5D8022DB881766A7;
  v102 = ((2 * ((v101 ^ 0x5717A19278166661) - 0x36ADEE2BF04AA845)) & 0xCFE7BFEBEBBF9FFELL) + (((v101 ^ 0x5717A19278166661) - 0x36ADEE2BF04AA845) ^ 0x67F3DFF5F5DFCFFFLL) - 0x67F3DFF5F5DFCFFFLL;
  v103 = v102 + (((v102 >> 28) - ((v102 >> 27) & 0xA11C8CC5CLL) + 0x1919DBA508E4662ELL) ^ 0xE6E6245AF71B99D1) + 1;
  v104 = ((2 * v103) & 0xB771FFF97DFFBD7ELL) + (v103 ^ 0xDBB8FFFCBEFFDEBFLL) + 0x2447000341002141;
  v105 = v104 + (((v104 >> 13) - ((v104 >> 12) & 0x55C2A49045BCCLL) + 0x19C2AE1524822DE6) ^ 0xE63D51EADB7DD219) + 1;
  v106 = (v105 ^ 0x7CFEE1BFA94F6BFCLL) - 0x7CFEE1BFA94F6BFCLL + ((2 * v105) & 0xF9FDC37F529ED7F8);
  v107 = (((v106 >> 5) - ((v106 >> 4) & 0xF450D4D569903BELL) - 0x85D795954B37E21) ^ 0xF7A286A6AB4C81DFLL) + v106;
  v108 = v107 - ((2 * v107) & 0x5A861D0970D98832) + 0x2D430E84B86CC419;
  v109 = ((2 * ((v108 ^ 0x240B536D8397C80CLL) - ((v108 >> 29) ^ 0x1205A9B6CLL))) & 0x9F0CBB81F7FDD77ELL) + (((v108 ^ 0x240B536D8397C80CLL) - ((v108 >> 29) ^ 0x1205A9B6CLL)) ^ 0x4F865DC0FBFEEBBFLL) - 0x4F865DC0FBFEEBBFLL;
  v110 = v109 + (((v109 >> 11) - ((v109 >> 10) & 0x22E36EB0690C82) - 0x688E8E48A7CB79BFLL) ^ 0x688E8E48A7CB79BELL) + 1;
  v111 = (v110 ^ 0x6FF7FDD3BEDD5A79) - 0x6FF7FDD3BEDD5A79 + ((2 * v110) & 0xDFEFFBA77DBAB4F2);
  v112 = (((v111 >> 8) - ((v111 >> 7) & 0xA666F066D893A0) + 0x73533378336C49D0) ^ 0x73533378336C49D0) + v111;
  v113 = v112 - ((2 * v112) & 0xD2D46407AFD96792) - 0x1695CDFC28134C37;
  v114 = (((v113 ^ 0xE96A3203D7ECB3C9) - 0x1D7EC9236D906644) ^ 0x7FFFADDE7FFFEAB7) - 0x7FFFADDE7FFFEAB7 + ((2 * ((v113 ^ 0xE96A3203D7ECB3C9) - 0x1D7EC9236D906644)) & 0xFFFF5BBCFFFFD56ELL);
  v115 = (((v114 >> 31) - ((v114 >> 30) & 0x3C37831DELL) - 0x1B66F16E1E43E711) ^ 0xE4990E91E1BC18EFLL) + v114;
  v116 = (v115 ^ 0x5BDDE77D7FD3FBB3) - 0x5BDDE77D7FD3FBB3 + ((2 * v115) & 0xB7BBCEFAFFA7F766);
  v117 = (((v116 >> 15) - ((v116 >> 14) & 0x15B15A6E82292) - 0xF3152752C8BEEB7) ^ 0xF0CEAD8AD3741149) + v116;
  v118 = (v117 ^ 0x7E7BD63BCF7BFFBFLL) - 0x7E7BD63BCF7BFFBFLL + ((2 * v117) & 0xFCF7AC779EF7FF7ELL);
  v119 = (((v118 >> 5) - ((v118 >> 4) & 0xCDB9269F44B88ALL) + 0x66DC934FA25C45) ^ 0x66DC934FA25C45) + v118;
  v120 = v119 - ((2 * v119) & 0x806974D07DDDC222) - 0x3FCB4597C1111EEFLL;
  LODWORD(v68) = (v77 - ((2 * v77 + 1109133068) & 0x3B8135C6) - 1093755287) ^ (v69 - ((2 * v69 - 2115048640) & 0xC2649964) + 573162066) ^ (v85 - ((2 * v85 + 435283276) & 0xAD47660A) - 476273237) ^ v95 ^ v113;
  v121 = v68 ^ a1 ^ v52 & (v68 >> 2);
  v122 = ((2 * ((v120 ^ 0xA96B83E29759FBF1) - ((v120 >> 28) ^ 0xA96B83E29))) & 0x2F6FFFAEE9F45FDELL) + (((v120 ^ 0xA96B83E29759FBF1) - ((v120 >> 28) ^ 0xA96B83E29)) ^ 0x17B7FFD774FA2FEFLL) - 0x17B7FFD774FA2FEFLL;
  v123 = v122 + (((v122 >> 11) - ((v122 >> 10) & 0x1CF9D1BFD4D690) - 0x34518317201594B8) ^ 0x34518317201594B7) + 1;
  v124 = ((((((2 * v123) & 0xD97FBF767BBB9F7ELL) + (v123 ^ 0xECBFDFBB3DDDCFBFLL) + 0x13402044C2223041) >> 5) - (((((2 * v123) & 0xD97FBF767BBB9F7ELL) + (v123 ^ 0xECBFDFBB3DDDCFBFLL) + 0x13402044C2223041) >> 4) & 0x1249ABA43180D04) - 0x376DB2A2DE73F97ELL) ^ 0x376DB2A2DE73F97DLL) + ((2 * v123) & 0xD97FBF767BBB9F7ELL) + (v123 ^ 0xECBFDFBB3DDDCFBFLL);
  v125 = v124 - ((2 * v124 + 0x2680408984446084) & 0x56BEBBCB6EEA49C6) + 0x3E9F7E2A79975525;
  v126 = ((((v125 >> 31) ^ 0x9AF7AA1A) + (v125 ^ 0x4D7BD50D60008D1ELL)) ^ 0x3F17E8B3CFEFBF3FLL) - 0x3F17E8B3CFEFBF3FLL + ((2 * (((v125 >> 31) ^ 0x9AF7AA1A) + (v125 ^ 0x4D7BD50D60008D1ELL))) & 0x7E2FD1679FDF7E7ELL);
  v127 = (((v126 >> 10) - ((v126 >> 9) & 0x482CED4FCD0144) + 0x26E41676A7E680A2) ^ 0x26E41676A7E680A2) + v126;
  v128 = (v127 ^ 0x57BFDFFF6DDCFDFDLL) - 0x57BFDFFF6DDCFDFDLL + ((2 * v127) & 0xAF7FBFFEDBB9FBFALL);
  v129 = (((v128 >> 7) - ((v128 >> 6) & 0x2791E483D94D760) - 0x12C370DBE1359450) ^ 0xED3C8F241ECA6BB0) + v128;
  v130 = v129 - ((2 * v129) & 0xC340CB7B190D0ECALL) + 0x61A065BD8C868765;
  v131 = v52 & ((v129 - ((2 * v129) & 0x190D0ECA) - 1937340571) >> 2) ^ (v129 - ((2 * v129) & 0x190D0ECA) - 1937340571);
  LODWORD(v113) = (v131 & 0x80 | ((((v131 & 0x80) >> 7) & 1) << 8) | 0xF5DCB644) ^ 0x100;
  v132 = ((v113 + 170084668) & (v121 ^ 0xDB292201)) == ((2 * ((v113 + 170084668) & (v121 ^ 0xDB292201))) & 0x45A99550);
  v169 = a30 ^ a50 ^ HIDWORD(a29) ^ a28 ^ HIDWORD(a41) ^ LODWORD(STACK[0x2D0]) ^ a42 ^ HIDWORD(a24) ^ a24 ^ a23 ^ a27;
  v133 = (v69 + 68191019) ^ 0x119044C7 ^ (((v69 + 68191019) >> 2) - (((v69 + 68191019) >> 1) & 0xBA4899E) + 366101711) & v52;
  HIDWORD(a41) = v133 - ((2 * v133) & 0x7CF08EC2) - 1099413663;
  v134 = (v77 + 1680281873) ^ 0x10E4 ^ (((v77 + 1680281873) >> 2) - (((v77 + 1680281873) >> 1) & 0x88623C8) + 71504356) & v52;
  LODWORD(a40) = v134 - ((2 * v134) & 0x94BFCF86) - 899684413;
  v135 = (v85 - 804126671) ^ 0x19200431 ^ (((v85 - 804126671) >> 2) - (((v85 - 804126671) >> 1) & 0x1E431A72) + 522292537) & v52;
  HIDWORD(a34) = v135 - ((2 * v135) & 0x7A6CC46E) - 1120509385;
  v136 = v78 >> 2;
  LODWORD(v78) = ((v78 >> 2) & 0x18240413 ^ (v77 - ((2 * v77 - 1142297610) & 0x9B47A076) + 731432502) & 0xFE660413 | (v77 - ((2 * v77 - 1142297610) & 0x9B47A076) + 731432502) & 0x199FBEC) ^ 0x5D83D439;
  LODWORD(v69) = v85 - ((2 * v85 - 1816147402) & 0x3284C5B8) + 1663191031;
  v137 = v52 & (v70 >> 2) ^ v70 ^ v136 & 0x19872E4 ^ (v78 - ((2 * v78) & 0x33E0B58E) - 1712301369) ^ v69 ^ v52 & (v69 >> 2);
  LODWORD(a33) = v108 ^ v91 ^ v52 & ((v108 ^ v91) >> 2);
  v138 = v52 & (v120 >> 2) ^ v120;
  v139 = v113 + 258428732;
  v140 = -81740604 - v113;
  if (v132)
  {
    v140 = v139;
  }

  v141 = (v121 ^ 0xDB292206) - 88344064 + v140 - ((2 * ((v121 ^ 0xDB292206) - 88344064 + v140)) & 0x879E4F36) - 1009834085;
  v142 = ((2 * ((v130 ^ 0x61A065BD8C868765) + 0xE588F902A4621BELL)) & 0xF7429F8FBC7F3E7ELL) + (((v130 ^ 0x61A065BD8C868765) + 0xE588F902A4621BELL) ^ 0x7BA14FC7DE3F9F3FLL) - 0x7BA14FC7DE3F9F3FLL;
  v143 = v142 + (((v142 >> 31) - ((v142 >> 30) & 0x1916D8F2ELL) - 0x4F02E77337493869) ^ 0x4F02E77337493868) + 1;
  v144 = (v143 ^ 0x67E7EDEEB965A767) - 0x67E7EDEEB965A767 + ((2 * v143) & 0xCFCFDBDD72CB4ECELL);
  v145 = (((v144 >> 15) - ((v144 >> 14) & 0x9D71CF187176) - 0x3069B1471873C745) ^ 0xCF964EB8E78C38BBLL) + v144;
  v146 = (v145 ^ 0xFF6F7FF7DF7BFDE7) + 0x90800820840219 + ((2 * v145) & 0xFEDEFFEFBEF7FBCELL);
  LODWORD(v146) = (((v146 >> 7) - 891648336 - ((v146 >> 6) & 0x95B50D60)) ^ 0xCADA86B0) + v146;
  v147 = v56 ^ 0x14178BD3;
  v148 = a43 ^ LODWORD(STACK[0x304]) ^ v57;
  v149 = (2 * ((STACK[0x2C0] & v147) - ((2 * (STACK[0x2C0] & v147)) & 0x7356A114)) - 212426476) ^ 0xF356A114;
  v150 = ((LODWORD(STACK[0x2C0]) + v147) ^ 0x5DACA88F) + ((2 * (LODWORD(STACK[0x2C0]) + v147)) & 0xBB59511E) - 1571596430 + ((v149 + 1752306657 + (~(2 * v149) | 0x2F1BD83F)) ^ 0x978DEC1F);
  LODWORD(STACK[0x26C]) = v56;
  v151 = v56 ^ a20 ^ (v56 >> 2) & 0x19BC76F7 ^ (v150 - ((2 * v150) & 0xBF764534) - 541384038) ^ (((v150 - ((2 * v150) & 0xBF764534) - 541384038) ^ LODWORD(STACK[0x388])) >> 2) & 0x19BC76F7 ^ v131 & 0xFFFFFF7F ^ v141;
  v152 = (LODWORD(STACK[0x308]) >> 2) & 0x19BC76F7 ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x368]) ^ (((LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x308])) ^ LODWORD(STACK[0x368])) >> 2) & 0x19BC76F7 ^ v54;
  LODWORD(STACK[0x24C]) = LODWORD(STACK[0x25C]) ^ 0x1D6ED43D;
  HIDWORD(v168) = v152 ^ v137 ^ v101 ^ (v101 >> 2) & 0x19BC76F7 ^ v138 ^ (v146 - ((2 * v146) & 0x599D0D3E) + 751732383) ^ ((v146 - ((2 * v146) & 0x599D0D3E) + 751732383) >> 2) & 0x19BC76F7;
  LODWORD(a41) = v151;
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x234]) ^ 0xAF934AD6;
  LOBYTE(v152) = a39 ^ 3;
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x358]) ^ 0x54720133;
  LODWORD(STACK[0x318]) = v58;
  LODWORD(STACK[0x398]) = v58 ^ 0xBCC86E74;
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x348]) ^ 0x52E4A7CA;
  v153 = LODWORD(STACK[0x2F8]) ^ 0x29u;
  v154 = v59 ^ 0xED7E5575;
  STACK[0x2C0] = v125;
  LODWORD(STACK[0x2CC]) = v57;
  LODWORD(v168) = (v57 >> 2) & 0x19BC76F7;
  v155 = STACK[0x540];
  LODWORD(STACK[0x368]);
  v156 = ((((v60 ^ 0xFFFFF97A) - 1142783996) ^ 0xBBE27FDA) - ((2 * (((v60 ^ 0xFFFFF97A) - 1142783996) ^ 0xBBE27FDA)) & 0x11267ED0) - 2003615896) ^ 0xE0F4E000;
  v157 = ((v156 ^ 0x68) << v152) - ((2 * ((v156 ^ 0x68) << v152)) & 0xFFFFFFEC);
  v158 = ((((v156 ^ 0x68) & LOBYTE(STACK[0x380])) - ((2 * ((v156 ^ 0x68) & LOBYTE(STACK[0x380]))) & 0x5A) - 83) ^ 0xAD) >> LODWORD(STACK[0x3A0]);
  v159 = (2 * ((STACK[0x370] & 0xA7C66161) - ((2 * (STACK[0x370] & 0xA7C66161)) & 0x63AA6E46)) - 475369914) ^ 0xE3AA6E46;
  v160 = (v158 + ((2 * v158) & 0x80) + 64) ^ 0x40 | (v157 - 10) ^ 0xF6;
  v161 = (v159 - ((2 * v159) & 0x1A88B838) - 1924899812) ^ 0x2A823D7D;
  v162 = (((v161 & STACK[0x398]) - 1819240841 - ((2 * (v161 & STACK[0x398])) & 0x27212CEE)) ^ 0x93909677) >> LODWORD(STACK[0x3A8]);
  v163 = (((v161 & STACK[0x388]) + 1289062386 - ((2 * (v161 & STACK[0x388])) & 0x99AB0FE4)) ^ 0x4CD587F2) << LODWORD(STACK[0x390]);
  v164 = (2 * v163) & 0xE84678CC;
  v165 = ((v163 + 1948466278 - v164) ^ 0x74233C66) + ((v162 + 552443425 - ((2 * v162) & 0x41DB3C42)) ^ 0x20ED9E21);
  v166 = (v153 ^ (v160 - ((2 * v160) & 0x5C) + 46));
  *(STACK[0x530] + 4 * v166) = v154 ^ (v165 - ((2 * v165) & 0x7E3D7036) + 1058977819);
  *(v155 + 4 * v166) = v59 ^ 0x85A77B4A;
  return MEMORY[0x5CCE7DE40](v153, 2117955638, v60 ^ 0x47177F38, v154, v59, 656485614, 3774144513, v164, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v125 >> 2, a36, a37, a38, v168, a40, a41);
}

uint64_t sub_100117D98()
{
  v1 = STACK[0x2F8];
  (*(&off_1002D7880 + LODWORD(STACK[0x2F8]) + 1410))(v0);
  v2 = (*(&off_1002D7880 + (v1 ^ 0xA8E)))(STACK[0x530]);
  return sub_100117DD8(v2);
}

uint64_t sub_100117EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W8>)
{
  LODWORD(STACK[0x368]) = a4;
  v5 = a5 - 748;
  v6 = ((&STACK[0x4D4] ^ 0x54BDFBBFDDBED9FCLL) - 0x54BDFBBFDDBED9FCLL + ((2 * &STACK[0x4D4]) & 0xA97BF77FBB7DB3F8)) % 0x25;
  STACK[0x380] = (v6 << (v5 + 81)) & 0x32;
  STACK[0x370] = (v6 ^ 0xDFE3DF4BEFFCFFD9) + 0x201C20B410030037;
  STACK[0x360] = STACK[0x420];
  v7 = *(a3 + 8 * ((116 * ((((v5 ^ 0x32C) - 710) ^ 0x4BF7A388) == 1274521438)) ^ v5));
  v8 = STACK[0x3D8];
  STACK[0x3B0] = STACK[0x430];
  return v7(a1, a2, STACK[0x340]);
}

uint64_t sub_100118074(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(v8 + ((v10 + 98) & 0xF));
  v12 = *(v7 + ((v10 + 98) & 0xF)) ^ v11;
  *(STACK[0x390] + (v10 - 1651657374)) = *(v7 + ((v10 - 1651657374) & 0xFLL)) ^ v11 ^ *(((v10 + 98) & 0xF) + v9 + 1) ^ (-69 * ((v10 + 98) & 0xF)) ^ 0x18;
  return (*(&off_1002D7880 + (((v10 != a7 + 1651657374 + a2 - 14 - 1482) * (((a2 + 1287919025) | 0x11086402) - 1573683052)) ^ (a2 - 14))))();
}

uint64_t sub_100118120()
{
  v0 = STACK[0x3BC];
  STACK[0x3B0] = (*(&off_1002D7880 + LODWORD(STACK[0x3BC]) + 931))(STACK[0x370] + STACK[0x380], 0x100004077774924);
  v1 = (*(&off_1002D7880 + (v0 ^ 0xC85)))();
  v2 = v0 + 415341354 + v1 - ((2 * v1) & 0x31832FB6) - 2085;
  LODWORD(xmmword_100313AB8) = v2;
  DWORD1(xmmword_100313AB8) = 685121821 - ((2 * (((1812433253 * (v2 ^ 0x18C197DB ^ (v2 >> 30))) ^ 0xEFEB76BF) + (((v2 ^ 0x18C197DB ^ (v2 >> 30)) * ((v0 - 1621654493) ^ 0x47589A33)) & 0xDFD6ED7E) + 724506137) + 164292178) & 0x31832FB6) + ((1812433253 * (v2 ^ 0x18C197DB ^ (v2 >> 30))) ^ 0xEFEB76BF) + (((v2 ^ 0x18C197DB ^ (v2 >> 30)) * ((v0 - 1621654493) ^ 0x47589A33)) & 0xDFD6ED7E);
  return (*(&off_1002D7880 + v0 + 847))();
}

uint64_t sub_100118280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6 ^ (v8 + 2949);
  LODWORD(STACK[0x4D4]) = v5;
  v11 = (*(a5 + 8 * (v6 + 1621655402)))(v7 + 4, 0);
  v12 = v7[4] + 1616031516 - ((2 * v7[4]) & 0xC0A55E38);
  v7[1] = v7[6] + 1616031516 - ((2 * v7[6]) & 0xC0A55E38);
  v7[2] = v12;
  v13 = (*(&off_1002D7880 + (v6 ^ v8)))(v11);
  v7[3] = v13 + 1616031516 - ((v13 << (v6 ^ (v8 - 123) ^ 0xD7)) & 0xC0A55E38);
  v14 = (*(&off_1002D7880 + v6 + 1621655386))();
  *v7 = v14 + 1616031516 - ((2 * v14) & 0xC0A55E38);
  LODWORD(STACK[0x3A8]) = STACK[0x3B0] - ((2 * STACK[0x3B0]) & 0xF8742B2C) + 2084181398;
  v15 = STACK[0x3BC];
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x3BC]) + 830386473;
  LODWORD(STACK[0x398]) = v15 + 743797289;
  v16 = (DWORD1(xmmword_100313AB8) ^ 0xBA1309F3 ^ (1664525 * (xmmword_100313AB8 ^ 0x18C197DB ^ (xmmword_100313AB8 >> 30)) - ((3329050 * (xmmword_100313AB8 ^ 0x18C197DB ^ (xmmword_100313AB8 >> 30))) & 0x45A53C50) - 1563255256)) + (*v7 ^ 0x6052AF1C);
  v17 = (v16 ^ 0xDEA6FFB7) + 1556025907 + ((2 * v16) & 0xBD4DFF6E);
  DWORD1(xmmword_100313AB8) = v17 - ((2 * v17 + 154393644) & 0x31832FB6) - 581204495;
  v18 = 1614251083 * ((~((v9 - 152) | 0xB577FEE37E175F06) + ((v9 - 152) & 0xB577FEE37E175F06)) ^ 0xFEA2DAC3E9F1CD19);
  v19 = v9 - 206;
  *(v19 + 70) = v18 ^ 0xE1AFDF18;
  *(v9 - 144) = -1614251083 * ((~((v9 - 152) | 0x7E175F06) + ((v9 - 152) & 0x7E175F06)) ^ 0xE9F1CD19);
  *(v9 - 152) = (v10 + 796841064) ^ v18;
  *(v19 + 94) = 3786399510u - v18;
  *(v9 - 128) = (v10 + 796841125) ^ v18;
  *(v9 - 124) = -1345307115 - v18 + v10;
  *(v9 - 120) = v18 + v10 + 796841064 - 14;
  v20 = (*(&off_1002D7880 + (v10 ^ 0xC8D)))(v9 - 152);
  return (*(&off_1002D7880 + *(v9 - 148)))(v20);
}

uint64_t sub_10011865C()
{
  LODWORD(xmmword_100313AB8) = dword_100314474;
  *(v6 - 120) = v4 + v0 + 1635373080 + 52;
  v7 = v6 - 206;
  *(v7 + 70) = (v2 - 270763948) ^ v4;
  *(v6 - 144) = v5;
  *(v6 - 152) = (v0 + 1635373080) ^ v4;
  *(v6 - 128) = (v0 + 1635373129) ^ v4;
  *(v6 - 124) = -1345307115 - v4 + v0 - 285;
  *(v7 + 94) = v3;
  v8 = (*(v1 + 8 * (v0 + 616)))(v6 - 152);
  return (*(&off_1002D7880 + *(v6 - 148)))(v8);
}

uint64_t sub_1001188CC@<X0>(int a1@<W8>)
{
  v4 = v2;
  v5 = v2 + 1;
  v6 = *(&xmmword_100313AB8 + (v4 - 885558643));
  v7 = (*(&xmmword_100313AB8 + (v5 - 885558643)) ^ 0xC0E7322C ^ (1566083941 * (v6 ^ 0x18C197DB ^ (v6 >> 30)) - ((-1162799414 * (v6 ^ 0x18C197DB ^ (v6 >> 30))) & 0xB04D4BEE) - 668555785)) - v4;
  *(&xmmword_100313AB8 + (v5 - 885558643)) = v7 - ((2 * v7 + 697375460) & 0x31832FB6) + 1300899149;
  v8 = 734352403 * ((-2 - ((~(v3 - 152) | 0x1DFE4EB72E2FB5D1) + ((v3 - 152) | 0xE201B148D1D04A2ELL))) ^ 0x504F8A3F35B69DFLL);
  *(v3 - 128) = v8 + a1 + 963070425 + 31;
  *(v3 - 124) = 1 - v8;
  v9 = v3 - 206;
  *(v9 + 62) = (v4 - 190670834) + v8;
  *(v3 - 152) = (a1 + 963070425) ^ v8;
  *(v9 + 94) = v8 + 694887807;
  *(v3 - 136) = -1174361759 - v8 + a1;
  *(v3 - 132) = ((a1 + 963070425) ^ 0x50) + v8;
  v10 = (*(v1 + 8 * (a1 ^ 0xCB1)))(v3 - 152);
  return (*(&off_1002D7880 + *(v3 - 120)))(v10);
}

uint64_t sub_100118B10()
{
  v3 = v0 ^ 0x2A179B1D;
  if (((STACK[0x388] - v0) | (v0 - STACK[0x388])) <= (v0 ^ 0xD5E86034))
  {
    v4 = -1732143141;
  }

  else
  {
    v4 = -1732143140;
  }

  LODWORD(xmmword_100313AB8) = v4 - (v0 ^ 0x2A179FCA);
  (*(v1 + 8 * (v0 ^ 0x2A1797A3)))(STACK[0x3B0]);
  v11 = (v3 - 1225) | 0x422;
  v12 = &xmmword_100313AB8;
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15.i64[0] = 0x100000001;
  v15.i64[1] = 0x100000001;
  v5.i32[0] = DWORD1(xmmword_100313AB8);
  v5.i32[1] = *(&xmmword_100313AB8 + (v11 ^ 0x42DLL));
  v5.i32[2] = HIDWORD(xmmword_100313AB8);
  v6 = vextq_s8(v13, v5, 0xCuLL);
  v7 = v5;
  v7.i32[3] = dword_100313AC8[0];
  v8 = veorq_s8(vorrq_s8(vandq_s8(v7, vnegq_f32(v15)), vandq_s8(v6, v14)), vdupq_n_s32(0x18C197DAu));
  v9.i32[0] = *(v2 - 224 + 4 * ((BYTE4(xmmword_100313AB8) & 1) == 0));
  v9.i32[1] = *(v2 - 224 + 4 * ((*(&xmmword_100313AB8 + (v11 ^ 0x42DLL)) & 1) == 0));
  v9.i32[2] = *(v2 - 224 + 4 * (~HIDWORD(xmmword_100313AB8) & 1));
  v9.i32[3] = *(v2 - 224 + 4 * (~dword_100313AC8[0] & 1));
  xmmword_100313AB8 = veorq_s8(veorq_s8(veorq_s8(xmmword_1003140EC, v9), vdupq_n_s32(0x19457C94u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v8, vandq_s8(vaddq_s32(v8, v8), vdupq_n_s32(0x71336E7Cu))), vdupq_n_s32(0xB899B73E)), 1uLL));
  return (*(&off_1002D7880 + (v11 ^ 0x1C)))();
}

uint64_t sub_100118C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = (v11 + 4 * (v10 + a4));
  v14 = v10 + 1;
  *v13 = v13[397] ^ *(v12 - 224 + 4 * ((*(v11 + 4 * (v14 + a4)) & 1) == 0)) ^ ((((*(v11 + 4 * (v14 + a4)) & 0x7FFFFFFE | v9 & 0x80000000) ^ (a6 - 1)) - ((v8 ^ 0x10F85FE9) & (2 * ((*(v11 + 4 * (v14 + a4)) & 0x7FFFFFFE | v9 & 0x80000000) ^ (a6 - 1)))) - 1197885634) >> 1) ^ 0x19457C94;
  LODWORD(v13) = ((v14 - v8) | (v8 - v14)) >= 0;
  return (*(a8 + 8 * (((8 * v13) | (v13 << 9)) ^ (v8 - 1640705382))))();
}

uint64_t sub_100118D0C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = ((v16 ^ 0x8CDBF7BC) + 317667929) | 0x400;
  v20 = &unk_100313E44;
  v21 = vld1q_dup_f32(v20);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  v24 = (v19 + 436);
  a8.i32[0] = *(v18 + 4 * (v24 ^ 0x6D2));
  a8.i32[1] = dword_100313E4C;
  a8.i32[2] = dword_100313E50;
  v25 = vextq_s8(v21, a8, 0xCuLL);
  v26 = a8;
  v26.i32[3] = dword_100313E54;
  v27 = veorq_s8(vorrq_s8(vandq_s8(v26, vnegq_f32(v23)), vandq_s8(v25, v22)), vdupq_n_s32(0x18C197DAu));
  v28.i32[0] = *(v17 + 4 * ((*(v18 + 4 * (v24 ^ 0x6D2)) & 1) == 0));
  v28.i32[1] = *(v17 + 4 * (~dword_100313E4C & 1));
  v28.i32[2] = *(v17 + 4 * (~dword_100313E50 & 1));
  v28.i32[3] = *(v17 + 4 * (~dword_100313E54 & 1));
  unk_100313E44 = veorq_s8(veorq_s8(veorq_s8(xmmword_100313AB8, v28), vdupq_n_s32(0x7A575C4Du)), vshrq_n_u32(vaddq_s32(vsubq_s32(v27, vandq_s8(vaddq_s32(v27, v27), vdupq_n_s32(0xFD7BED18))), vdupq_n_s32(0x7EBDF68Cu)), 1uLL));
  return (*(a16 + 8 * v19))();
}

uint64_t sub_100118E50@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v5 = (*v3 & 0x7FFFFFFE | v3[623] & 0x80000000) ^ a2;
  v3[623] = v3[396] ^ *(v4 - 224 + 4 * ((*v3 & 1) == 0)) ^ ((v5 + ((v2 - 352) ^ 0x4C22B32F) - 2 * (v5 & 0x4C22B7FC ^ *v3 & 4)) >> ((v2 - 96) ^ 0xD7)) ^ 0x6318FCF7;
  return (*(a1 + 8 * ((3616 * (LODWORD(STACK[0x4D4]) > 0x26F)) ^ v2)))();
}

uint64_t sub_100118F04()
{
  LODWORD(STACK[0x4D4]) = 0;
  v2 = v0;
  v3 = LODWORD(STACK[0x4D4]);
  LODWORD(STACK[0x4D4]) = v3 + 1;
  v4 = *(&xmmword_100313AB8 + v3);
  dword_100313AB4 = v3 + 761298294;
  v5 = (dword_100313AB0 - 184653043);
  v6 = 734352403 * ((((v1 - 152) | 0x379DD0262443CE1BLL) - (v1 - 152) + ((v1 - 152) & 0xC8622FD9DBBC31E0)) ^ 0x2F676632F9371215);
  *(v1 - 124) = 1 - v6;
  *(v1 - 136) = -1174361759 - v6 + v2;
  *(v1 - 132) = ((v2 + 649460068) ^ 0x1B) + v6;
  *(v1 - 152) = (v2 + 649460068) ^ v6;
  v7 = v1 - 206;
  *(v7 + 62) = v5 + v6;
  *(v1 - 128) = v6 + v2 + 649460068 - 51;
  *(v7 + 94) = v6 + 521538264;
  v8 = (*(&off_1002D7880 + (v2 ^ 0xCB1)))(v1 - 152);
  return (*(&off_1002D7880 + *(v1 - 120)))(v8);
}

uint64_t sub_10011903C(uint64_t a1, uint64_t a2)
{
  if (v2 >= LODWORD(STACK[0x3BC]) + 521537026)
  {
    v4 = dword_100313AB0 + 1;
  }

  else
  {
    v4 = v3 + 1198;
  }

  dword_100313AB0 = v4;
  v5 = LODWORD(STACK[0x390]);
  return sub_1001191C8(a1, a2, STACK[0x340], &off_1002D7880, byte_100259860, byte_100283C50, byte_10025F040, 3508697990);
}

uint64_t sub_1001191C8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, int a7@<W8>)
{
  v11 = ((((a7 - 1166172578) & 0x45825EB5) - 106) ^ (a6 + 1082) ^ v8) >> (v7 - 62);
  LOBYTE(v11) = (v11 - ((2 * v11) & 0xD8) + 108) ^ 0x7E;
  *(a1 + (v10 - 1757063253)) = v11;
  return (*(a2 + 8 * ((4090 * (v10 - ((*(a3 + ((v10 - 1757063253) & 0xFLL)) ^ (121 * ((v10 - 85) & 0xF)) ^ *(((v10 - 1757063253) & 0xFLL) + a4 + 4) ^ *(((v10 - 1757063253) & 0xFLL) + a5 + 2)) != v11) == v9)) ^ a7)))();
}

uint64_t sub_1001192B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x390]) = v5;
  STACK[0xD80] = 0xDC0117D44509A70BLL;
  LODWORD(STACK[0x4D4]) = dword_100313AB4 - 761298293;
  v7 = dword_100313AB0;
  v8 = 218380439 * ((((2 * (v6 - 152)) | 0xC5A50A16762591B2) - (v6 - 152) - 0x62D2850B3B12C8D9) ^ 0x7CACBF9803374DB8);
  v9 = v6 - 206;
  *(v9 + 86) = 706191307 - v8;
  STACK[0x388] = v7;
  *(v9 + 54) = v7 + v8;
  *(v6 - 144) = v8;
  *(v6 - 140) = ((v4 + 2017757611) ^ 0x10) + v8;
  *(v6 - 132) = v4 + 2017757611 - v8;
  *(v6 - 128) = ((v4 + 2017757611) ^ 0x54) - v8;
  *(v6 - 136) = (v4 - 1723652839) ^ v8;
  v11 = (*(a4 + 8 * (v4 ^ 0xCA2)))(v6 - 152);
  return (*(a4 + 8 * *(v6 - 112)))(v11);
}

uint64_t sub_10011945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x368]);
  STACK[0x420] = STACK[0x360];
  STACK[0x3D8] = v4;
  STACK[0x430] = STACK[0x3B0];
  return (*(a4 + 8 * (((*(STACK[0x378] + 8) == 0) * (((v5 + 210494393) & 0xF3741CD6 ^ 0xFFFFFA28) + (v5 ^ 0x90))) ^ v5)))();
}

void sub_1001194DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 ^ 0xCBE)))(v7);
  *(v6 + 8) = 0;
  *(v6 + 16) = v5 + 3144;
  JUMPOUT(0x1000ED5A8);
}

void sub_100119510(uint64_t a1)
{
  v1 = 1377923 * ((a1 + 1081604151 - 2 * (a1 & 0x4077F837)) ^ 0x6E68820B);
  v2 = *(a1 + 8) ^ v1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  v6 = *(&off_1002D7880 + ((((*(&off_1002D7880 + v2 + 1511))(0x94D107FF7CAC8315 * *(v3 - 0x5D683D8EF4EDE1E1) - 0x2FA90CD539D610EFLL, v4, (v5 + v1), &v7, &v8) == 0) * ((v2 + 1018013322) & 0xC3525EFF ^ 0x800)) ^ v2));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100119620()
{
  v3 = v1 + 1413;
  v4 = ((v3 - 1949761565) ^ 0x8BC90202 ^ *(v2 - 0x5D683D8EF4EDE1C1) ^ 0x17B5BF92) + (((*(v2 - 0x5D683D8EF4EDE1D1) ^ 0xF2E67FE1) + 11) ^ 0x377FDFAF) - 931127215 + (((v3 - 1949761565) & 0x7436FCB2 ^ 0x6EFFBBFE) & (2 * ((*(v2 - 0x5D683D8EF4EDE1D1) ^ 0xF2E67FE1) + 11)));
  v5 = (*(v0 + 8 * (v3 + 111)))(((2 * v4) & 0xEBE5FE78) + (v4 ^ 0x75F2FF3C) - 1978859324, 0x100004077774924);
  return (*(v0 + 8 * ((51 * (v5 == 0)) ^ v3)))(v5, v6);
}

uint64_t sub_100119738(uint64_t a1)
{
  *a1 = -12851;
  *(a1 + 2) = -56;
  v6 = *(v2 + v4);
  *(a1 + 3) = ((v5 ^ 0x52) + 73) ^ HIBYTE(v6);
  *(a1 + 4) = BYTE2(v6) ^ 0x2F;
  *(a1 + 5) = (((v5 - 96) | 0x28) + 78) ^ BYTE1(v6);
  *(a1 + 6) = v6 ^ 0x28;
  v7 = *(v2 - 0x5D683D8EF4EDE1D9);
  return (*(v1 + 8 * ((7 * ((*(v2 + v4) ^ v3 ^ 0x7F9FE7DFBFB3E1E6) - 0x7F9FE7DF1DAA25BALL + ((2 * (*(v2 + v4) ^ v3)) & 0x17F67C3CCLL) != 2718546988)) ^ v5)))();
}

uint64_t sub_100119848(uint64_t a1, uint64_t a2)
{
  v10 = v6 < v2;
  *(v8 + v4 - 0x2F8A6C78F09A6B93) = *(v7 + v5 - 0x226CC7425D66C4FFLL);
  v11 = a2 - 0x5118C4C50DE4DFF4;
  v12 = a2 + 1;
  v13 = v10 ^ (v11 < v2);
  v14 = v11 < v6;
  if (!v13)
  {
    v10 = v14;
  }

  return (*(v9 + 8 * ((239 * v10) ^ v3)))(a1, v12);
}

uint64_t sub_1001198E0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (a2 + 1611300098) | 0x8D01050;
  v7 = ((2 * (((v6 - 1978929681) ^ *(v3 + v5)) + 7)) & 0xBB7F5BBE) + 2003763183 + ((217 * (((v6 - 1759154014) | 0x10A) ^ 0x399) - 574642192) ^ (((v6 - 1978929681) ^ *(v3 + v5)) + 7));
  v8 = *(v3 + v4);
  v9 = ((v7 | ((v7 < 0x552EADCE) << 32)) + a1 - 1429122510);
  *v9 = HIBYTE(v8) ^ 0xDE;
  v9[1] = BYTE2(v8) ^ 0x7C;
  v9[2] = BYTE1(v8) ^ 0x73;
  v9[3] = v8 ^ 0xB4;
  v10 = *(v3 - 0x5D683D8EF4EDE1C9);
  v11 = (*(v3 + v4) ^ 0x77F5DD54E95F4583) - 0x77F5DD5496106E0CLL + ((2 * (*(v3 + v4) ^ 0x17B5BA7Du)) & 0x1FDD5FFFCLL);
  return (*(v2 + 8 * ((61 * (((v11 - v6) | (v6 - v11)) >= 0)) ^ (v6 - 1759153748))))();
}

uint64_t sub_100119B04@<X0>(int a1@<W8>)
{
  v10 = v6 < v1;
  *(v7 + v4 - 0x190FE84129133045) = *(v3 + v5 + ((v2 + 593) ^ 0xEA1D022102B666C2));
  if (v10 == v8 - 0x4A0161930DFDAB5CLL < v1)
  {
    v10 = v8 - 0x4A0161930DFDAB5CLL < v6;
  }

  return (*(v9 + 8 * ((!v10 * a1) ^ v2)))();
}

uint64_t sub_100119B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14)
{
  v16 = *v14;
  v17 = v14[8];
  v18 = v14[3];
  *(v14[4] - 0x61F273179E46884ELL) = a12;
  *(v18 - 0x5D2B4A43FB20F38ELL) = a14 - ((a14 << ((v15 - 106) ^ 0x84)) & 0xFC1BB2CA) - 32646811;
  *(v17 - 0x19A6F59238F03C52) = a1;
  *(v16 - 0x361FD146DC902E64) = a11;
  return sub_100119C2C();
}

void sub_100119C50(uint64_t a1)
{
  v1 = *(a1 + 40) - 275407499 * ((2 * (a1 & 0xC566AEED) - a1 + 983126290) ^ 0x1ADFEFC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100119F44()
{
  (*(v3 + 8 * (v2 ^ 0x8C0)))();
  (*(v3 + 8 * (v2 + 1984)))(v1 - 0x5D683D8EF4EDE1E1);
  v5 = (((v2 - 35652841) & 0x562FFE5F) + 1299568862) & 0x5E7A2DFB;
  *(v0 + 120) = v4;
  v6 = (*(v3 + 8 * (v5 + 1920)))(40, 0x1010040725982CDLL) == 0;
  return (*(v3 + 8 * (((((v5 ^ 0x5CB ^ v6) & 1) == 0) | (2 * (((v5 ^ 0x5CB ^ v6) & 1) == 0))) ^ v5)))();
}

uint64_t sub_10011A068(uint64_t *a1)
{
  v6 = (v2 + 831633094) & 0xCE6E4E7E;
  v7 = *(v1 + 56) ^ v4;
  *a1 = *(v1 + 48) ^ v4;
  a1[1] = 0;
  a1[3] = 0;
  v8 = (*(v3 + 8 * (v6 ^ 0xE47)))(v7 ^ 0xF2E67FE1, 0x100004077774924);
  a1[1] = v8;
  return (*(v3 + 8 * (((v8 == 0) * ((((v6 + 549976578) | 0x87028494) + 1479901137) ^ ((v6 - 564) | 0xE5))) ^ v6)))(v8, v9);
}

uint64_t sub_10011A138@<X0>(int a1@<W8>)
{
  *(v1 + 16) = v5;
  v6 = (v2 ^ 0x73FF77FFBDFD7E3FLL) + ((2 * v2) & 0x17BFAFC7ELL) - 0x73FF77FF1632FEBALL + ((a1 + 774) | 0xEu);
  return (*(v4 + 8 * ((122 * (((v6 - v3) | (v3 - v6)) >= 0)) ^ a1)))();
}

uint64_t sub_10011A1EC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = v3 < v2;
  *(v6 + a1 - 0x25CF7A68AA4F62ACLL) = *(v5 + *v8 - 0x2F6D7194C3C62179) - ((2 * *(v5 + *v8 - 0x2F6D7194C3C62179)) & 0x92) - 55;
  if (v10 == v7 - 0x299EB4F907F27F5BLL < v2)
  {
    v10 = v7 - 0x299EB4F907F27F5BLL < v3;
  }

  return (*(v9 + 8 * ((!v10 * v4) ^ a2)))();
}

uint64_t sub_10011A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v14 = (*(v13 + 8 * (v12 ^ 0xD36)))((*(v10 + 24) - a10) ^ 0x17B5BA7Du, 0x100004077774924);
  *(v11 + 24) = v14;
  return (*(v13 + 8 * (((v14 != 0) * (((v12 + 1952202928) & 0x8BA3BEEF) - 1244)) ^ v12)))();
}

uint64_t sub_10011A3E4(uint64_t a1)
{
  v10 = *(v5 + *(v8 + 32) - 0x2A548663A5750AA6);
  *(v6 + a1 - 0x4532EA2DE7C824A6) = v10 - ((2 * v10) & 0x92) - 55;
  v11 = v7 - 0x64D46E9D66C1C1B0;
  v12 = (v3 < v2) ^ (v11 < v2);
  v13 = v11 < v3;
  if (v12)
  {
    v13 = v3 < v2;
  }

  return (*(v9 + 8 * ((!v13 * v4) ^ v1)))();
}

void sub_10011A490(uint64_t a1@<X8>)
{
  *(v2 + 120) = a1;
  *(v2 + 96) = (*(v2 + 96) & 0xFFFFFFFB ^ 0x7962086E) + 2036467818 + ((2 * ((*(v2 + 96) & 0xFFFFFFFB ^ 0x7962086E) & 0x7962086B ^ ((14 * (v1 ^ 0x1E4) + 2147483478) | *(v2 + 96)))) ^ 0xB) + 5;
  *v2 = 1714769701;
  *(v2 + 4) = 1147077104;
  *v3 = v2;
}

void sub_10011AB7C(uint64_t a1)
{
  v1 = 1686848693 * ((a1 + 1236239903 - 2 * (a1 & 0x49AF861F)) ^ 0xD7C20003);
  v2 = *(a1 + 24) + v1;
  v3 = *a1;
  v4 = ((*(a1 + 28) + v1) & 0xFFFFFFF0 ^ 0xF1141AF0) + 16;
  v5 = *(&off_1002D7880 + ((((*(&off_1002D7880 + (v2 ^ 0xB43)))(((2 * v4) & 0xFCFEFFE0) + (v4 ^ 0x7E7F7FFF) - 2122285055, 0x100004077774924) == 0) * (v2 ^ 0x348)) ^ v2));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011AD14@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (a2 + v5 + 803);
  *(a1 + v9) = *(v2 + (v9 & ((v6 - 362) - 426))) ^ *(v3 + (v9 & ((v6 - 362) - 426)) + 2) ^ *(v4 + (v9 & ((v6 - 362) - 426)) + 2) ^ (-127 * ((a2 + v5 + 35) & (v6 - 20))) ^ 0x80;
  v10 = v5 - 859791627 < (v7 + 1851281610);
  if ((v7 + 1851281610) < 0xECD7D0C9 != (v5 - 859791627) < 0xECD7D0C9)
  {
    v10 = (v7 + 1851281610) < 0xECD7D0C9;
  }

  return (*(v8 + 8 * (((4 * !v10) | (8 * !v10)) ^ v6)))();
}

uint64_t sub_10011ADB0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W8>)
{
  v12 = a2 < v9;
  v13 = (v8 ^ (v10 + 90)) + v6;
  v14 = a3 + v6 + 36;
  v15 = (v14 & 0xF) + 2;
  v16 = *(v4 + v15);
  LODWORD(v15) = *(v5 + v15);
  v17 = v16 ^ *(v3 + (v14 & 0xF)) ^ v15 ^ (-127 * (v14 & 0xF));
  *(a1 + (a3 + v6 + 804)) = v16 ^ *(v3 + ((a3 + v6 + 804) & 0xFLL)) ^ v15 ^ (-127 * (v14 & 0xF));
  v18 = v12 ^ (v13 < v9);
  v19 = v13 < a2;
  if (!v18)
  {
    v12 = v19;
  }

  return (*(v11 + 8 * ((4 * !v12) | (8 * !v12) | v7)))();
}

uint64_t sub_10011AEF0(_BYTE *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  HIDWORD(a39) = v54;
  v58 = *(&unk_10027CFA0 + (v57[8] ^ 0x46));
  v59 = byte_1002601B0[v57[7] ^ 0x2FLL];
  v60 = byte_100267C70[v57[9] ^ 0xACLL] ^ 0x5F;
  v61 = byte_100284980[v57[6] ^ 0x92];
  v62 = byte_100284980[v57[2] ^ 0xA5];
  v63 = byte_100267C70[v57[5] ^ 0x3CLL] ^ 0x3E;
  v64 = v57[10];
  v65 = byte_1002601B0[v57[3] ^ 0xCALL];
  v66 = v62 ^ 0xB2 ^ ((v62 >> 4) & 2 | 5);
  v67 = (((v66 - ((2 * v66) & 0xD8)) << 8) + 86469632) ^ 0x5276C00;
  v68 = byte_100267C70[v57[1] ^ 0xBELL] ^ 0x8B;
  v69 = (((v68 - ((2 * v68) & 0xD2)) << 16) - 1603731456) ^ 0xA0690000;
  v70 = 525345166 - ((v64 ^ 0x7F3A8FCF) + 2 * (v64 ^ 0x30)) - ((2121605168 - 2 * ((v64 ^ 0x7F3A8FCF) + 2 * (v64 ^ 0x30))) & 0x402B22EC);
  HIDWORD(v71) = v65 ^ 2;
  LODWORD(v71) = (v65 ^ 0xFFFFFFDF) << 24;
  v72 = (v71 >> 27) - ((2 * (v71 >> 27)) & 0xFFFFFFC3) - 31;
  v73 = (v69 - ((2 * v69) & 0x1DD00000) + 250146018) ^ 0xEE8ECE2 | (v67 - ((2 * v67) & 0x5510AE00) + 713578384) ^ 0x2A885790;
  v74 = ((2 * (v64 ^ 0x29)) & 0xFFFFFFDF) + (v64 ^ 0xEE5BFEC6);
  v75 = (v74 + 295960849) ^ v70 ^ (1611414983 - v74 - ((-591921698 - 2 * v74) & 0xE3607DB0)) ^ 0xD1A5AFAE;
  v76 = (v75 - 412209227 + (~(2 * v75) | 0x3123A095) + 1) ^ 0xE76E2FB5;
  v77 = v57[13];
  v78 = (v73 - ((2 * v73) & 0x983F2C8C) - 870345146) ^ 0xCC1F9646 | ((~(2 * (v72 ^ 0xD9 ^ (v72 >> 2) & 0x39)) | 0xFFFFFFD1) + (v72 ^ 0xD9 ^ (v72 >> 2) & 0x39) + 1850610968) ^ 0x6E4E1517;
  v79 = v78 - ((2 * v78) & 0xE2CD6D9C);
  v80 = v77 ^ 0xEFFFE7F3FF3F249ELL;
  v81 = (2 * (v77 ^ 0x21)) & 0x14ELL;
  v82 = 2 * ((v77 & 0xFFFFFFFFFFFFFFF1 ^ 0x31) - ((2 * (v77 & 0xFFFFFFFFFFFFFFF1 ^ 0x31)) & 0x3E)) - 0x6F9273F7747961CALL;
  v83 = byte_100284980[v76 + 25];
  v84 = v80 + v81 + 0x1000180C00C0DC4BLL + (((v82 ^ 0x906D8C088B869E36) - 2 * ((v82 ^ 0x906D8C088B869E36) & 0x4819478566E17E7CLL ^ v82 & 8) + 0x4819478566E17E74) ^ 0xB7E6B87A991E818BLL);
  v85 = ((2 * (v57[4] ^ 0x53)) & 0xFFFFFFF7) + (v57[4] ^ 0x7C7EBDAC);
  v86 = byte_100284980[v57[14] ^ 0x32];
  v87 = *(&unk_10027CFA0 + ((v85 + 2 * ((v85 + 1) & 2) - 2088680953) ^ 0xD63B7E1B) + ((2 * (v85 + 2 * ((v85 + 1) & 2) - 2088680953)) & 0xAC76FC36) + ((-4 * ((v85 + 1) & 2) + 1211945578) ^ 0xB7C32D95) + 700744166);
  LODWORD(v80) = ((((v86 ^ 0xA ^ ((v86 >> 4) & 2 | 0x59)) - ((2 * (v86 ^ 0xA ^ ((v86 >> 4) & 2 | 0x59))) & 0x11E)) << 8) - 777416960) ^ 0xD1A98F00;
  LODWORD(v84) = byte_100267C70[(v84 - ((2 * v84) & 0x20A6CB28) + 2421384596u) ^ 0x90536594] ^ 0x62;
  LODWORD(v84) = (((v84 - ((2 * v84) & 0x104)) << 16) + 1837236224) ^ 0x6D820000;
  LODWORD(v84) = (v80 - ((2 * v80) & 0x6799AE00) + 869062441) ^ 0x33CCD729 | (v84 - ((2 * v84) & 0x4EE80000) - 1485531506) ^ 0xA774968E;
  v88 = byte_1002601B0[v57[11] ^ 0xA8];
  v89 = *(&unk_10027CFA0 + (v57[12] ^ 0xF6));
  v90 = *(&unk_10027CFA0 + (*v57 ^ 0xEDLL));
  v91 = -7 * v90 + ((14 * v90 + 73) | 0x21);
  v92 = -7 * v89 - ((-14 * v89 - 74) & 0xFFFFFF88) + 31;
  v93 = v57[15];
  LODWORD(v80) = v92 ^ (v92 >> 4) ^ ((v92 >> 7) & 1 | 0x86) ^ 0x55;
  LODWORD(v80) = (((v80 - ((2 * v80) & 0x78)) << 24) + 1006632960) ^ 0x3C000000;
  LODWORD(v84) = (v80 - ((2 * v80) & 0x66666666) - 1281543962) ^ 0xB39D30E6 | (v84 - ((2 * v84) & 0x1AC5AC0) - 1059705504) ^ 0xC0D62D60;
  LODWORD(v80) = ((2 * (v93 ^ 0xFFFFFFBF)) & 0x1AC) + (v93 ^ 0x7FBFB761);
  v94 = (v93 ^ 0x920900D7) - ((2 * (v93 ^ 0xFFFFFF87)) & 0x152) + v80 + 1;
  LODWORD(v80) = byte_1002601B0[v80 - 2143270870 + ((v94 - ((2 * v94 + 1550749606) & 0x573E9A74) - 1713990387) ^ 0x5460B2C6)];
  v95 = (v91 + 75) ^ ((v91 + 75) >> 7) ^ ((v91 + 75) >> 4);
  v96 = ((((v95 ^ 0x9B) - ((2 * v95) & 0x88888888)) << 24) - 1006632960) ^ 0xC4000000;
  HIDWORD(v71) = v80 ^ 2;
  LODWORD(v71) = (v80 ^ 0xFFFFFFDF) << 24;
  LODWORD(v80) = (v71 >> 27) - 32 * ((v71 >> 27) >> 4) + 112;
  LODWORD(v82) = (v96 - ((2 * v96) & 0xEC000000) - 167352717) ^ 0xF6066673 | (v79 + 1902556878) ^ 0x7166B6CE;
  v97 = v82 - ((2 * v82) & 0x38EED744) + 477588386;
  LODWORD(a37) = (v80 ^ 0xBC ^ (v80 >> 2) & 0x39) - ((2 * (v80 ^ 0xBC ^ (v80 >> 2) & 0x39)) & 0x150) + 1633440936;
  LODWORD(v82) = (v84 - ((2 * v84) & 0xAAA6D2A) - 2058013035) ^ 0x85553695 | a37 ^ 0x615C54A8;
  HIDWORD(a32) = v82 - ((2 * v82) & 0x20CA88D2) - 1872411543;
  HIDWORD(a25) = v97;
  HIDWORD(a33) = ((2 * v97) & 0xFBD5B6F4 ^ 0x38C496C0) + (v97 ^ 0xE19DB01A);
  v98 = a2 ^ a3;
  HIDWORD(a29) = a2 ^ a3;
  if ((a2 ^ a3) <= 1)
  {
    v98 = 1;
  }

  v99 = v98 - 1;
  v100 = *a1;
  v101 = (((((a54 - 75) ^ 0x56) - 84) | 0x8B) - 69) ^ 0xBA;
  *a1 = v100 + ~(-11 * v101) - 22 * v101 - 3;
  v102 = 1978540753 * ((v100 ^ 0xF9EBFBEB) - 2048280086 + ((2 * v100) & 0x1D6)) + 427408935;
  v103 = v102 ^ 0x42B51E5A ^ (v102 % 0x101 + 1119166042 - ((2 * (v102 % 0x101)) & 0xB4));
  v104 = ((v103 + 397823353 - ((2 * v103) & 0x2F6C9AF2)) ^ 0x17B64D79) - 1398965027;
  v105 = (v104 - 1804957041 - ((2 * v104) & 0x28D5151E)) ^ 0xB9571047;
  v106 = ((v105 + 423884279 - ((2 * v105) & 0x3287EBEE)) ^ 0x1943F5F7) + 1504626158;
  v107 = ((2 * v106) & 0xF975FF7E) + (v106 ^ 0xFCBAFFBF);
  v108 = v107 + 203691999 - ((2 * (v107 + 203691999) + 109707396) & 0xE7C7E580) + 1999172354;
  v109 = ((2 * (v108 ^ 0xAC9D7CDD)) & 0x3F9FFFDE ^ 0x2787E580) + (v108 ^ 0x40B171F2);
  v110 = ((2 * ((v108 ^ 0x73E3F2C0) + 759012040)) & 0xF25EFFEE) + (((v108 ^ 0x73E3F2C0) + 759012040) ^ 0xF92F7FF7);
  HIDWORD(v111) = v108 ^ 0x13E3F2C0;
  LODWORD(v111) = v108 ^ 0x60000000;
  v112 = ((2 * (v111 >> 29)) & 0xEEFF1F30) + ((v111 >> 29) ^ 0xF77F8F98) - v109;
  v113 = (v110 + 114327561) ^ 0x1E0230A9 ^ (v112 - ((2 * v112 + 278978734) & 0x3C046152) - 967663360);
  v114 = ((v113 - 325725342 - ((2 * v113) & 0xD92BA6C4)) ^ 0xEC95D362) + 727968163;
  v115 = (v114 ^ 0xFDFDB6FB) + v107 + ((2 * v114) & 0xFBFB6DF6) - 1284839708;
  HIDWORD(a26) = a37 ^ 0x615C54A8;
  HIDWORD(a31) = HIDWORD(a33) + 2147329696;
  return (*(&off_1002D7880 + ((612 * (v99 == 0)) ^ a54)))(a1, v109 + 1862105947 + v115, v115, 3010127588, 2921592343, 612, 727968163, 1862105947, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, 0xFFFFFFB600000049, a31, a32, a33, a34, a35, a36, a37, v55, a39, v56, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10011BFA0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v58 = (v55 - 1625346864) & 0x60E0CFEB;
  v59 = v54 ^ v53 ^ (v56 + v58 + (*(a1 + 3) + 37) - (a5 & (2 * (*(a1 + 3) + 37))) - 873);
  v60 = v59 + v52 - ((v51 + 2 * v59) & a4);
  v61 = v58 + 167;
  v62 = ((((-1845326835 << (((v58 - 89) ^ 0x2A) - 57)) ^ 0x768A990E) - ((2 * ((-1845326835 << (((v58 - 89) ^ 0x2A) - 57)) ^ 0x768A990E)) & 0x4605B5FC) + 587389694) & 0xAD707EEC ^ 0x21005AEC) - 4;
  v63 = ((2 * v62) & 0xD76E1FE8) + (v62 ^ 0xEBB70FF4);
  v64 = *(a51 + v63 + 340324364);
  v65 = a3 - 1167759421 * (((2 * v64) & 0x172) + (v64 ^ 0x7DDFBFB9) + v63);
  v66 = 2 * ((v65 + 1067153010) % 0x101u);
  v67 = (v57 - 1433867176) ^ 0x3A14CF7E ^ ((((v65 + 1067153010) % 0x101u) ^ 0xDB5DF6FF) - v65 - 769107587 + v66 - 2 * (((((v65 + 1067153010) % 0x101u) ^ 0xDB5DF6FF) - v65 - 769107587 + v66 + 316553490) & 0x3A14CF7F ^ ((((v65 + 1067153010) % 0x101u) ^ 0xDB5DF6FF) - v65 - 769107587) & 1) + 1290995856);
  v68 = (v67 + 1798234400 - ((2 * v67) & 0xD65DC240)) ^ (a2 + 1125050136);
  v69 = (((v68 ^ 0x6B2EE120) + 147332978 - 2 * ((v68 ^ 0x6B2EE120) & 0x8C81F7F ^ v68 & 0xD)) ^ 0x8C81F72) + 663871899;
  v70 = (v60 ^ 0xFC651A43) + (v69 ^ 0x7EAF3F9F) + ((2 * v69) & 0xFD5E7F3E) - 2125414303;
  v71 = v70 - 1135712257 - ((2 * v70) & 0x789CCFFE);
  v72 = v71 ^ v60;
  v73 = ((2 * ((v71 ^ 0xBC4E67FF) + v57 - 1433867176)) & 0xC7DADFB6) + (((v71 ^ 0xBC4E67FF) + v57 - 1433867176) ^ 0xE3ED6FDB);
  v74 = ((2 * ((v71 ^ 0xBC4E67FF) + a2 + 1125050136)) & 0xDED7F6EA) + (((v71 ^ 0xBC4E67FF) + a2 + 1125050136) ^ 0x6F6BFB75) - 1869347701 + ((((16 * v71) ^ 0xC4E67FF0) + 1861780115 - ((2 * ((16 * v71) ^ 0xC4E67FF0)) & 0xDDF10520)) ^ 0x6EF88293);
  v75 = ((v71 >> 28) ^ 0xB) + (v74 ^ 0x1EFFFFFE) + ((2 * v74) & 0x3DFFFFFC) - 520093694;
  v76 = (v75 ^ 0x9D5F5FB5) - v73 + ((2 * v75) & 0x3ABEBF6A);
  v77 = v76 - ((2 * v76 + 219947084) & 0x6A45D0B2) + 2075195519;
  v78 = ((2 * (v72 ^ v77)) & 0xFCF73B3E ^ 0x64A5300C) + (v72 ^ v77 ^ 0x4D2D2599);
  return (*(&off_1002D7880 + (v61 | 0x46)))(a1, v78, (v78 - 1347944449), 2673967061, v61 ^ 0x72Au, (v61 ^ 0x72Au) - 825, 3159255039, 3141880966, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10011C4E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v46 = 205352207 * v42 - ((((v43 - 431) | 2) + 410704414 * v42 + 1522372976) & 0xF6F57124) - 1462140033;
  v47 = 1752694784 * v42 - ((-789577728 * v42 - 1362100224) & 0xA4400000) + 697297297;
  v48 = (((809171328 * a2 - ((544600832 * a2 + 1068962560) & 0x35A47B00) - 1699887341) ^ 0x9AD23D93) & 0xFFFFFF80 | ((-1402964493 * a2 - ((1489038310 * a2 + 67071526) & 0x99330E84) - 828817835) >> 25)) ^ 0x66;
  v49 = v48 - ((2 * v48) & 0xE9E249FE) - 185522945;
  v50 = ((((2113404928 * a4 + 1855455231) | 0x889FFFFF) + 1090781184 * a4 + 73822021) ^ 0x3BB26F44) & 0xFFFC0000 | ((-555265983 * a4 - ((1036951682 * a4 + 401630298) & 0x3BA0FB0Au) + 1237888946) >> 14);
  v51 = ((2 * v50) & 0xFFF0BDEC ^ 0xAC80) + (v50 ^ 0x7FF829B7);
  v52 = (v49 ^ 0xF4F124FF) - 2146983670 + v51;
  v53 = v52 ^ 0xC73657D9;
  v54 = (2 * v52) & 0x8E6CAFB2;
  v55 = ((2 * ((v47 ^ 0xD227E991) & 0xFFF80000 | (v46 >> 13))) & 0x7027FFEE ^ 0x7B7AA) + (((v47 ^ 0xD227E991) & 0xFFF80000 | (v46 >> 13)) ^ 0x38142422);
  v56 = ((1357107200 * (a3 ^ v45) - ((-1580752896 * (a3 ^ v45)) & 0xDC95A000) + 1850398862) ^ 0x6E4AD88E) & 0xFFFFF000 | ((373624381 * (a3 ^ v45) - ((747248762 * (a3 ^ v45)) & 0x87CEC01E) + 1139236879) >> 20);
  v57 = ((2 * v56) & 0x9D9EDAFE ^ 0x87C) + (v56 ^ 0xCECF6941);
  v58 = v53 + v54 + v57 - 863482724 + v55;
  v59 = -1476395008 * v58 - ((1342177280 * v58 + 0x10000000) & 0x55555555) - 218061590;
  v60 = (1252082677 * v58 - ((-1790801942 * v58 - 892161486) & 0xF354BD88) - 552355875) >> 5;
  v61 = ((-184549376 * v51 - ((-369098752 * v51 + 603979776) & 0xC7FFFFFF) + 1975087080) ^ 0xE3B96FE8 | ((-1336656907 * v51 - ((1621653482 * v51 + 23386404) & 0xDD0AA20E) - 281559655) >> 8)) ^ 0xEE8551;
  v62 = v61 - ((2 * v61) & 0x37A445E0) + 466756336;
  v63 = ((v60 | v59 ^ 0x2B00A4EA) ^ 0x3CD52F6) - ((2 * ((v60 | v59 ^ 0x2B00A4EA) ^ 0x3CD52F6)) & 0xB4A6E560) - 632065360;
  v64 = (((-1342177280 * v55 - ((1610612736 * v55 + 1610612736) & 0xC0000000) + 362984872) ^ 0xE5A2B5A8) & 0xF0000000 | ((2092611067 * v55 - ((-109745162 * v55 - 2048341082) & 0xAE340AE0) - 1710331069) >> 4)) ^ 0x571A057;
  v65 = v64 - ((2 * v64) & 0xAA18585C) + 1426861102;
  v66 = v65 ^ 0x550C2C2E;
  v67 = ((v63 ^ v62 ^ 0xC1815040) & (v65 ^ 0x550C2C2E)) - ((2 * ((v63 ^ v62 ^ 0xC1815040) & (v65 ^ 0x550C2C2E))) & 0x625D3C12);
  v68 = ((-2105010920 * v57 - ((84945456 * v57 - 566975952) & 0xFBCDBE10) - 318689243) ^ 0xFDE6DF0D) & 0xFFFFFFF8 | ((1884357283 * v57 - ((-526252730 * v57 - 70871994) & 0x8413388E) + 1072490090) >> 29);
  v69 = (v68 ^ 6) - ((2 * v68) & 0xAB092882) + 1434752065;
  v70 = ((((2 * v67 + 1650277394) ^ 0x625D3C12) - ((2 * ((2 * v67 + 1650277394) ^ 0x625D3C12)) & 0x5F1F214) + 49871114) ^ 0x2F8F90A) + (v65 ^ 0x948D7C6E ^ v63 ^ v62);
  v71 = v69 ^ 0x55849441;
  v72 = -1390970167 * (v69 ^ 0x55849441) - ((1513026962 * (v69 ^ 0x55849441)) & 0x9B0FE8F4) + 1300755578;
  v73 = (v70 - ((2 * v70) & 0xCFAB3480) - 405431744) ^ v69;
  v74 = ((2 * v73) & 0xF9EDFAEA ^ 0x60A01802) + (v73 ^ 0xCEA7F374);
  v75 = (1437658798 * v74 - ((727833948 * v74 + 773449972) & 0x2D1930C4)) & 0xFFFFFFFE | ((((1437658798 * v74 + 1460466810) & 0xC16EB1E4) + 1428654249 * v74 - 205378352) >> 31);
  v76 = ((((~(196485120 * v66) | 0xDA0B5FFF) + 635113472 * v66 - 1829088077) ^ 0x92FA54B2) & 0xFFFFF000 | ((-1421713999 * v66 - ((1451539298 * v66) & 0xB4EE7922) - 629719919) >> 20)) ^ 0xDA7;
  HIDWORD(v77) = v60 ^ 2;
  LODWORD(v77) = ((1902826330 * (v63 ^ 0xDA5372B0)) & 0xF6DEBF7E) + ((-1196070483 * (v63 ^ 0xDA5372B0)) ^ 0x7B6F5FBF) - 2070896575;
  v78 = ((2 * (v77 >> 2)) & 0xFFDF79FC) + ((v77 >> 2) ^ 0x7FEFBCFE);
  v79 = ((-1304428544 * v71 - ((1686110208 * v71) & 0xFE000000) + 2134267974) ^ 0x7F365846) & 0xFFC00000 | (v72 >> 10);
  v80 = ((2 * v79) & 0xEAFD637C ^ 0x244378) + (v79 ^ 0xF56DD043);
  v81 = ((2 * (v75 + 1838779612)) & 0xFEF7D76E ^ 0x2C111044) + ((v75 + 1838779612) ^ 0xE9F773D5);
  v82 = ((1207959552 * v78 - ((-1879048192 * v78 + 0x20000000) & 0xAAAAAAAA) + 1717666200) ^ 0xD6618198 | ((-778797056 * v78 - ((-1557594112 * v78 + 22151168) & 0xE13A0000) - 247064022) >> 20)) ^ 0x709;
  v83 = v82 - ((2 * v82) & 0x268AC602) - 1824169215;
  v84 = v83 ^ 0x93456301 | ((1392878377 * v78 - ((-1509210542 * v78 - 1533148508) & 0xD586EC38) + 1024620398) >> 17 << 12) ^ 0x3561000;
  v85 = v84 - 2 * (v84 & 0xEDC889C ^ v83 & 4) - 1898149736;
  HIDWORD(v77) = v85 ^ 0xBA9;
  LODWORD(v77) = v85 ^ 0x6347C000;
  v86 = (v77 >> 12) - ((2 * (v77 >> 12)) & 0x305D13E8) - 1741780492;
  v87 = ((v76 - ((2 * v76) & 0xB3329F12) + 1503219593) ^ 0x59994F89) - (v78 + v80) - v81 + 1961515635;
  v88 = ((1287521792 * v81 - ((-1719923712 * v81 - 1521521664) & 0xB49B1000) + 754269758) ^ 0x5A4D883E) & 0xFFFFFE00 | ((1134976771 * v81 - ((122469894 * v81 + 114468790) & 0x691F942) - 894283652) >> 23);
  v89 = (v88 ^ 0x106) - ((2 * v88) & 0xBA9385E2) + 1565115121;
  v90 = ((2 * v86) & 0xDE3F5AEE ^ 0x56200080) + (v86 ^ 0xC42FFD37);
  v91 = (((1649746176 * v80 - ((-995474944 * v80 - 704576512) & 0xC9BEFC00) + 1340080274) ^ 0x64DF7E92) & 0xFFFFFF00 | ((1633834273 * v80 - ((-1027298750 * v80 - 2116681468) & 0xDCE50DB2) + 794658651) >> 24)) ^ 0xEE;
  v92 = (((-868220928 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) - ((411041792 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) + 2021654528) & 0x5E000000) - 1420365759) ^ 0x2F16F041) & 0xFFC00000 | ((-1098505423 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) - ((2097956450 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) + 1629082594) & 0xEC7984A2) + 650751042) >> 10)) ^ 0x3D8F30;
  v93 = v92 - ((2 * v92) & 0xF49A2084) + 2051870786;
  v94 = ((v91 - ((2 * v91) & 0xCBC7E8AC) + 1709438038) ^ 0x65E3F456) - 1864346999 + v90;
  v95 = (((v89 ^ 0x5D49C2F1) - 1837968743) ^ 0xABD6DFFF) + v90 + ((2 * ((v89 ^ 0x5D49C2F1) - 1837968743)) & 0x57ADBFFE);
  v96 = v93 ^ 0x8C5EAAC2 ^ (v95 - ((2 * v95 - 904731372) & 0xEC277500) - 618844918);
  v97 = (v94 ^ 0xCBBFE5CB) + ((2 * v94) & 0x977FCB96) + 876616245 + (v89 ^ 0x5D49C2F1);
  v98 = v93 ^ (v97 - ((2 * v97) & 0xEDA5FC4) - 2022887454);
  v99 = (v96 - ((2 * v96 + 1179526172) & 0x8265C1F2) + 1683616519) ^ v98;
  v100 = ((2 * ((v99 ^ 0xCD7E720E) + (v98 ^ 0xFD203FA0))) & 0xDEFFFDCE) + (((v99 ^ 0xCD7E720E) + (v98 ^ 0xFD203FA0)) ^ 0xEF7FFEE7);
  LODWORD(v278) = v99 ^ 0x5577EE3E;
  v101 = ((2 * ((v93 ^ 0x7A4D1042) - (v99 ^ 0xCD7E720E))) & 0xEFFB4DB6) + (((v93 ^ 0x7A4D1042) - (v99 ^ 0xCD7E720E)) ^ 0x77FDA6DB);
  v102 = -2140037955 * v101 - ((14891386 * v101 + 1657190562) & 0x42CC0FFC) - 758553521;
  v103 = (v102 >> 25) ^ 0x648D81BA;
  HIDWORD(a42) = v100;
  v104 = -615081224 * v100 - 964151381;
  LODWORD(v277) = v99;
  HIDWORD(v77) = v99 ^ 0xE;
  LODWORD(v77) = ((-593246878 * (v99 ^ 0xCD7E720E)) & 0xEB2FCB8A) + ((-296623439 * (v99 ^ 0xCD7E720E)) ^ 0x7597E5C5) - 1972889029;
  v105 = ((2 * (v77 >> 4)) & 0xFBDF7F7E) + ((v77 >> 4) ^ 0xFDEFBFBF);
  LODWORD(a39) = v101;
  if (2 * ((((v102 >> 25) ^ 0x10) - 39 * ((211 * ((v102 >> 25) ^ 0x10)) >> 13)) & 0x1F) + ((((v102 >> 25) ^ 0x10) - 39 * ((211 * ((v102 >> 25) ^ 0x10)) >> 13)) ^ 0x7657FC9F) == 1985477791)
  {
    v106 = (110127367 * ((v102 ^ 0x20000000) >> 25)) >> 32;
    v103 = 39 * ((v106 ^ 0xF7ECE777) + 2 * v106) - ((78 * ((v106 ^ 0xF7ECE777) + 2 * v106) + 1976662462) & 0xC91B0354) - 1619640695;
  }

  HIDWORD(v276) = v99 ^ 0x5577EE3E ^ v89;
  v108 = (((v104 - ((380450288 * v100 + 471872624) & 0x10F03AE0)) ^ 0x8781D73) & 0xFFFFFFF8 | ((2070598495 * v100 - ((-153770306 * v100 + 797181582) & 0x86953A10) + 1527554127) >> 29)) ^ 2;
  v109 = v108 - 2 * (v108 & 0x66F9EEEE ^ v104 & 8) - 419827994;
  v110 = (((HIDWORD(v276) << 30) + 1264459956) ^ 0x8B5E20B4) & 0xC0000000 | ((-1870321173 * (HIDWORD(v276) ^ 0xC5405EC1) - ((554324950 * (HIDWORD(v276) ^ 0xC5405EC1)) & 0x5BDD2AE2) + 770610545) >> 2);
  v111 = ((2 * v110) & 0xFBA94AF8 ^ 0x12A14AB8) + (v110 ^ 0xF6AF0020);
  v107 = 953048704 * v101 - ((295484672 * v101 + 56381696) & 0x155AA000) + 1012627587;
  v112 = (v103 ^ 0x648D81AA | v107 ^ 0x8AAD5003) - ((2 * (v103 ^ 0x648D81AA | v107 ^ 0x8AAD5003)) & 0xA811FA2) - 2059366447;
  v113 = (v105 + v111 - ((2 * (v105 + v111) + 142030218) & 0xDAAAEAF2) - 242151362) ^ v109 ^ v112;
  v114 = ((2 * v113) & 0xEFFCEDFE ^ 0xDD8289C) + (v113 ^ 0xF91262B1);
  v115 = 246822219 * v111 - ((493644438 * v111 + 1553051992) & 0x42C88928) + 1336745280;
  v116 = 987288876 * v111 - 2 * ((987288876 * v111 + 421749424) & 0x1EBEE30C ^ (987288876 * v111) & 8) - 673036874;
  v117 = (((-587902640 * v114 - ((971678368 * v114 + 1838301856) & 0x562C41E0) - 1579204025) ^ 0xAB1620F7) & 0xFFFFFFF0 | ((1305433365 * v114 - ((-1684100566 * v114 + 2128159786) & 0xC1C500F0) - 1605430643) >> 28)) ^ 0xE;
  v118 = v117 - ((2 * v117) & 0x1457336C);
  v119 = (((1499352576 * (v109 ^ 0xE6F9EEE6) - ((851221504 * (v109 ^ 0xE6F9EEE6)) & 0x20AC2C00) - 1873406131) ^ 0x9056174D) & 0xFFFFFE00 | ((-567496921 * (v109 ^ 0xE6F9EEE6) - ((475618894 * (v109 ^ 0xE6F9EEE6)) & 0x1BC30EEE) - 1914599561) >> 23)) ^ 0x11B;
  v120 = v119 - ((2 * v119) & 0xA5C7EB34) + 1390671258;
  v121 = v120 ^ 0x52E3F59A;
  v122 = 1633186343 * (v120 ^ 0x52E3F59A) - ((-1028594610 * (v120 ^ 0x52E3F59A)) & 0xC3DDA10A) - 504442747;
  v118 += 170629558;
  HIDWORD(v123) = v103;
  LODWORD(v123) = ((1632740422 * (v112 ^ 0x85408FD1)) & 0x7EFEEF56) + ((-1331113437 * (v112 ^ 0x85408FD1)) ^ 0xBF7F77AB) + 1082165333;
  v124 = ((2 * (v123 >> 1)) & 0xF5FBBFFE) + ((v123 >> 1) ^ 0xFAFDDFFF);
  v125 = 893175897 * v124 - ((1786351794 * v124 + 938725554) & 0x6EF48D9A) + 1400123174;
  v126 = -2054160384 * v124 - ((186646528 * v124 + 186646528) & 0x94E00000) + 1343057134;
  v127 = ((v116 ^ 0x1EBEE306 | (v115 >> 30)) - 2 * ((v116 ^ 0x1EBEE306 | (v115 >> 30)) & 0x5EF6EF39 ^ v116 & 0x18) - 554242271) ^ 0xDEF6EF21 ^ (v124 + 84025345);
  v128 = (v127 - ((2 * v127) & 0x74BDABA4) + 979293650) ^ v120 ^ v118;
  v129 = ((2 * v128) & 0xB35973EA ^ 0x810973E8) + (v128 ^ 0x3B3A000B);
  v130 = ((v126 ^ 0xCA7D6CEE) & 0xFFF00000 | (v125 >> 12)) ^ 0x377A4;
  v131 = v130 - ((2 * v130) & 0x327806EC) + 423363446;
  v132 = 327155712 * v121 - ((654311424 * v121) & 0x8B000000) + 1170902077;
  v133 = ((2 * ((v132 ^ 0x45CA8C3D) & 0xFF800000 | (v122 >> 9))) & 0xEFEFEFFA ^ 0xE1EED0) + (((v132 ^ 0x45CA8C3D) & 0xFF800000 | (v122 >> 9)) ^ 0x77870095);
  v134 = (((-1263501312 * v129 - ((1767964672 * v129 + 220921856) & 0xCD4F0000) + 1832737914) ^ 0xE6A7DC7A) & 0xFFFF8000 | ((1157327201 * v129 - ((32953026 * v129 + 69343830) & 0x60E2B42) - 921165108) >> 17)) ^ 0x183;
  v135 = v134 - ((2 * v134) & 0xB0675DF8) - 667701508;
  v136 = ((((~(906428416 * (v118 ^ 0xA2B99B6)) | 0xB537FFFF) + 453214208 * (v118 ^ 0xA2B99B6) + 627313451) | 1) ^ 0x25640B2B) & 0xFFFF8000 | ((1762539015 * (v118 ^ 0xA2B99B6) - ((303852558 * (v118 ^ 0xA2B99B6)) & 0x22E7E2B6) + 292811099) >> 17);
  v137 = ((2 * v136) & 0xC6F2BEDE ^ 0x1052) + (v136 ^ 0x637957D6);
  v138 = v133 - 2012739581 + (((v131 ^ 0x193C0376) + 1668896726 - v137 + 1945 - ((2 * ((v131 ^ 0x193C0376) + 1668896726 - v137 + 1945)) & 0xC4248DBE) - 502118689) ^ v135 ^ 0x3A21E823);
  v139 = ((2 * v138) & 0xFED789BA) + (v138 ^ 0xFF6BC4DD);
  v140 = 930934653 * (v135 ^ 0xD833AEFC) - ((1861869306 * (v135 ^ 0xD833AEFC)) & 0xF2836890) - 113134520;
  v141 = (((2097152000 * (v135 ^ 0xD833AEFC) - ((2046820352 * (v135 ^ 0xD833AEFC)) & 0x60000000) - 1327765685) ^ 0xB0DBE74B) & 0xFF000000 | (v140 >> 8)) ^ 0xF941B4;
  v142 = v141 - 2 * (v141 & 0x65F46676 ^ (v140 >> 8) & 2) - 436967820;
  v143 = (((1035593984 * v137 - ((2071187968 * v137 + 1004139008) & 0x80B9BC00) + 1581897578) ^ 0x405CDE6A) & 0xFFFFFF00 | ((((1099205678 * v137 + 1539581453) | 0x9D558F5B) + 1597880809 * v137 - 2089605812) >> 24)) ^ 0xB1;
  v144 = v143 - ((2 * v143) & 0xA6DEFE96) + 1399816011;
  v145 = (((-136252416 * v133 - ((801236992 * v133 + 512079872) & 0x24956000) + 562924788) ^ 0x924AB0F4) & 0xFFFFFC00 | ((-377620419 * v133 - ((1392242810 * v133 + 742891886) & 0x677B1958) + 165764451) >> 22)) ^ 0xCE;
  v146 = (v144 ^ 0x536F7F4B) + ((v145 - ((2 * v145) & 0x31F02314) + 418910602) ^ 0x18F8118A);
  v147 = (((-1492173568 * v139 - ((1310620160 * v139 + 1011396096) & 0xEC25B600) - 1808321801) ^ 0xF612DBF7) & 0xFFFFFF00 | ((-1364783299 * v139 - ((1565400698 * v139 + 1631340718) & 0xEEBA7C42) - 1476697480) >> 24)) ^ 0x77;
  v148 = v147 - ((2 * v147) & 0x7F1D34AA) - 1081173419;
  v149 = ((-1443204679 * (v144 ^ 0xB69B193F ^ v142)) ^ 0x7E53DEFD) + ((1408557938 * (v144 ^ 0xB69B193F ^ v142)) & 0xFCA7BDFA);
  v142 ^= 0xE5F46674;
  v150 = (v146 ^ 0xF3FDFEF1) + ((2 * v146) & 0xE7FBFDE2) + (((v148 ^ 0xBF8E9A55) + v142) ^ 0xC0482048) - ((2 * ((v148 ^ 0xBF8E9A55) + v142)) & 0x7F6FBF6E) + 1;
  v151 = v149 + v150 - ((2 * (v149 + v150) - 2093813514) & 0xD1281016) + 707625094;
  v152 = (2 * (((v151 ^ 0x6894080B) & (v148 ^ 0xBF8E9A55)) - ((2 * ((v151 ^ 0x6894080B) & (v148 ^ 0xBF8E9A55))) & 0x28484B1C)) + 675826460) ^ 0x28484B1C;
  v153 = ((v152 - ((2 * v152) & 0x410D0E18) - 1601796340) ^ 0xA086870C) + (v148 ^ 0xD71A925E ^ v151);
  v154 = v153 - ((2 * v153) & 0x1DE25F9E) + 250687439;
  v280 = ((2 * (v150 + 1270472902 + (v154 ^ 0x1171570E))) & 0xEBFA4BFC) + ((v150 + 1270472902 + (v154 ^ 0x1171570E)) ^ 0x75FD25FE);
  v155 = (v154 ^ 0x1171570E) + v142 - ((2 * ((v154 ^ 0x1171570E) + v142)) & 0x963FF92E) + 1260387479;
  HIDWORD(a33) = v154;
  v156 = v154 ^ v148;
  v157 = (((285212672 * (v154 ^ 0x1171570E) - ((570425344 * (v154 ^ 0x1171570E)) & 0x68000000) + 883045376) ^ 0x34A23400) & 0xFF000000 | ((503783441 * (v154 ^ 0x1171570E) - ((1007566882 * (v154 ^ 0x1171570E)) & 0xF3AAD2A0) + 2044029264) >> 8)) ^ 0x79D569;
  v158 = v157 - ((2 * v157) & 0x46E36796);
  LODWORD(a29) = v156;
  HIDWORD(v123) = v155 ^ 0xFFFFFFF7;
  LODWORD(v123) = ((1075558978 * (v155 ^ 0x4B1FFC97)) & 0xFFEABFFE) + ((537779489 * (v155 ^ 0x4B1FFC97)) ^ 0x7FF55FFF) - 2146787327;
  v159 = ((2 * (v123 >> 5)) & 0xECDBD3F8) + ((v123 >> 5) ^ 0x766DE9FC);
  v160 = ((776293814 * (v156 ^ 0xAEFFCD5B)) & 0x2BFF7EFE) + ((1461888731 * (v156 ^ 0xAEFFCD5B)) ^ 0x95FFBF7F) + 1778401409;
  v161 = ((v160 >> 18) - ((v160 >> 17) & 0x468C) + 846373702) ^ 0x3272A346 | (-1447641088 * (v156 ^ 0xAEFFCD5B) - ((1399685120 * (v156 ^ 0xAEFFCD5B)) & 0xF6CA8000) + 2070233698) ^ 0x7B654262;
  v162 = ((2 * v161) & 0xFFFF7EF6) + (v161 ^ 0x7FFFBF7B);
  v163 = ((v158 - 1552829493) ^ 0xA371B3CB ^ (v159 - 1986914812)) - ((2 * ((v158 - 1552829493) ^ 0xA371B3CB ^ (v159 - 1986914812))) & 0x46D587A4);
  v164 = 1226754819 * v159 - ((-1841457658 * v159 + 1497816088) & 0xFC5FD4A0) + 718493788;
  v165 = ((v163 - 1553284142) ^ 0xA36AC3D2) - v162 + 2147467131;
  v166 = v165 ^ 0x6DDF7CD1;
  v167 = (2 * v165) & 0xDBBEF9A2;
  v168 = ((1315962880 * v280 - ((484442112 * v280 + 968884224) & 0x2A200000) - 1846154029) ^ 0x9515ECD3) & 0xFFF00000 | ((-187120409 * v280 - ((699501006 * v280 + 576225180) & 0x3093CB4E) - 1451874955) >> 12);
  v169 = ((2 * v168) & 0xFFF7EFDE ^ 0x3091C) + (v168 ^ 0xFFFA7371);
  v170 = v169 + v166 + v167 + 1716295599;
  v171 = 1033242112 * v159 - ((2066484224 * v159 + 230174720) & 0x4D478000) + 1837095391;
  v172 = ((1040187392 * v170 - ((1006632960 - (v170 << 26)) & 0x2C000000) - 1266619535) ^ 0x9680EB71) & 0xFE000000 | ((-67654241 * v170 - ((-135308482 * v170 - 1388279778) & 0xA1B7CA4C) + 662448437) >> 7);
  v173 = ((2 * v172) & 0xBFFFFFD8 ^ 0x3436F90) + (v172 ^ 0xDE5E4826);
  v174 = 1716671415 * v169 - ((212117358 * v169 + 165842510) & 0x8C1CD52) + 827469264;
  v175 = -306184192 * v169 - ((-612368384 * v169 - 1820327936) & 0xFCFFFFFF) + 1211050390;
  v176 = ((v171 ^ 0x26A3C1DF) & 0xFFFFFE00 | (v164 >> 23)) ^ 0x1FC;
  v177 = v176 - 2 * (v176 & 0x196E933F ^ (v164 >> 23) & 1);
  v178 = ((184549376 * v162 - ((369098752 * v162 + 234881024) & 0x12000000) - 1068052367) ^ 0x956D071) & 0xFF000000 | ((-1237210357 * v162 - ((1820546582 * v162 + 901855598) & 0x76DE7FFC) - 699409227) >> 8);
  v179 = ((2 * v178) & 0x7D3FFD3E ^ 0x36DC3E) + (v178 ^ 0xBEA491A0);
  v180 = ((v177 + 426677054) ^ 0x196E933E) - v173 - 536870932;
  v181 = v180 ^ 0xF8D7BF6A;
  v182 = (2 * v180) & 0xF1AF7ED4;
  v183 = ((2 * (v175 ^ 0x7E6F2996 | (v174 >> 10))) & 0x17FFF776 ^ 0x423072) + ((v175 ^ 0x7E6F2996 | (v174 >> 10)) ^ 0xBDEE382);
  v184 = 558765385 * v183 - ((1117530770 * v183 - 1933459110) & 0xD17580AA) - 1357143806;
  v185 = ((663039520 * v179 - 358311393) | 0x46B95BBF) + 1815963888 * v179;
  v186 = ((-1383617250 * v179 - 782911906) & 0xF6CCD67A) - 1455675023 * v179;
  v187 = ((128974848 * (v183 + v179 + v181 + v182 - 1988948777) - ((257949696 * (v183 + v179 + v181 + v182 - 1988948777) + 283115520) & 0x14600000) - 1028801645) ^ 0x8A3DBB93) & 0xFFF00000 | ((-1350168453 * (v183 + v179 + v181 + v182 - 1988948777) - ((1594630390 * (v183 + v179 + v181 + v182 - 1988948777) - 380778738) & 0xB0EDAEF2) + 1293794048) >> 12);
  v188 = ((2 * v187) & 0xDFAFBBDE ^ 0xB0ADA) + (v187 ^ 0x6FDA5A82);
  v189 = ((-1362308096 * v173 - ((26847232 * v173 + 73728) & 0x234C800) + 689633064) ^ 0x811A6728) & 0xFFFFFC00 | ((-1846824139 * v173 - 2 * ((-1846824139 * v173 + 107610148) & 0x249EC301 ^ (-1846824139 * v173) & 1) - 1425489116) >> 22);
  v190 = ((2 * v189) & 0xBFF3BFFE ^ 0x524) + (v189 ^ 0xDFF9DD6D);
  v191 = (((((v185 + 1733362966) ^ 0xDCA35225) & 0xFFFFFFF0 | ((v186 - 1678853741) >> 28)) - 2 * ((((v185 + 1733362966) ^ 0xDCA35225) & 0x55B4A0F0 | ((v186 - 1678853741) >> 28) & 0x55B4A0FF) ^ ((v186 - 1678853741) >> 28) & 2) - 709582595) ^ 0xD5B4A0FD) + 537272321 + v190;
  v192 = v191 ^ 0xEFDF5BEF;
  v193 = (2 * v191) & 0xDFBEB7DE;
  v194 = ((-2058207232 * v183 - ((178552832 * v183 + 810975232) & 0x32258000) + 1363032472) ^ 0x1912F998) & 0xFFFFC000 | (v184 >> 18);
  v195 = (v194 ^ 0xF2FDD4C5) + 1333719350 + ((2 * v194) & 0xE5FBDDD6 ^ 0x5454);
  v196 = 687250277 * (v188 - 683720936) - 124498115;
  v197 = v195 + v192 + v193 + 2086987704 + v188 - 683720936;
  HIDWORD(v123) = v184 >> 18;
  LODWORD(v123) = -166331077 * v195 + 721599333;
  v198 = ((v196 >> 7) - ((v196 >> 6) & 0x119496C) - 1098079050) ^ 0xBE8CA4B6 | (-905969664 * v188 - ((-1811939328 * v188 - 738197504) & 0xEC000000) + 1642527004) ^ 0xF7E6F91C;
  v199 = ((-989855744 * v190 - ((-1979711488 * v190 - 1979711488) & 0xD2000000) + 779421687) ^ 0x697507F7) & 0xFF000000 | ((-399728699 * v190 - ((5848970 * v190 + 92700554) & 0xB194462) + 1615847926) >> 8);
  v200 = v198 - ((2 * v198) & 0x7D15843E) - 1098202593;
  v201 = (v200 ^ 0xBE8AC21F) + ((2 * v199) & 0xE9E77F3C ^ 0x1031904) + (v199 ^ 0xF476333C);
  v202 = ((2 * (v201 + 185352290)) & 0xFACAFBEC) + ((v201 + 185352290) ^ 0x7D657DF6);
  v203 = (((-1127553072 * v197 - ((160812960 * v197 + 217390496) & 0x8EA9320) - 84944789) ^ 0x475499B) & 0xFFFFFFF0 | ((466398845 * v197 - ((932797690 * v197 - 19967526) & 0xA4FC0578) + 1374006185) >> 28)) ^ 0xD;
  v204 = v201 + ((v123 >> 1) ^ 0xFB6DACFE) + ((2 * (v123 >> 1)) & 0xF6DB59FC) + 262050660;
  v205 = v203 - ((2 * v203) & 0x3365F7DC) + 431160302;
  v206 = (v204 - ((2 * v204) & 0xCB0306DA) + 1702986605) ^ v205;
  v207 = ((2 * v206) & 0xFB5575AE ^ 0xF8447106) + (v206 ^ 0x199C254);
  v208 = (((v205 ^ 0x19B2FBEE) + 248800109 * v202 - 1738851262 - ((2 * ((v205 ^ 0x19B2FBEE) + 248800109 * v202 - 1738851262)) & 0x1644AC54) + 186799658) ^ 0x1835475A) - v207;
  v209 = v208 - ((2 * (v208 + 2108340951)) & 0xA6F773BE) + 1361474742;
  v210 = ((2 * ((v205 ^ 0x19B2FBEE) - (v209 ^ 0x8AA2A369))) & 0xFFDFC9FA) + (((v205 ^ 0x19B2FBEE) - (v209 ^ 0x8AA2A369)) ^ 0x7FEFE4FD);
  HIDWORD(a30) = v209;
  HIDWORD(v277) = v209 ^ 0xA65AD0BF;
  HIDWORD(a38) = v200;
  LODWORD(v276) = v209 ^ 0xA65AD0BF ^ v200;
  HIDWORD(v123) = v208 + 2108340951;
  LODWORD(v123) = ((1967511450 * (v209 ^ 0x8AA2A369)) & 0xFFBD7F76) + ((-1163727923 * (v209 ^ 0x8AA2A369)) ^ 0xFFDEBFBB) + 2179141;
  v211 = ((2 * (v123 >> 1)) & 0x7B6DEBCE) + ((v123 >> 1) ^ 0x3DB6F5E7);
  v212 = v196 >= 0x80;
  v213 = (900069355 * v210 - ((1800138710 * v210 + 1099915650) & 0x63C3C0EA) + 1386844470) >> 14;
  v214 = v213 ^ 0x20016;
  if (!v212)
  {
    v214 = 79982;
  }

  v215 = (((v214 & (v213 ^ 0xC787)) - ((2 * (v214 & (v213 ^ 0xC787))) & 0x3095C) - 34241362) ^ 0xFDF584AE) + (v213 & 0x2C791 ^ 0xC781);
  v216 = ((2 * v215) & 0xE6BFFF6) + (v215 ^ 0xA735FFFB);
  v217 = ((1828716544 * (v276 ^ 0x9272B1C9) - ((436207616 * (v276 ^ 0x9272B1C9)) & 0x26000000) - 1820604175) ^ 0x937BC8F1) & 0xFF000000 | ((-102768531 * (v276 ^ 0x9272B1C9) - ((1941946586 * (v276 ^ 0x9272B1C9)) & 0x6D5B6C1A) + 917353997) >> 8);
  v218 = ((2 * v217) & 0xF67F5FAC ^ 0x6D5B2C) + (v217 ^ 0xFB090260);
  HIDWORD(a24) = ((2 * (v207 - 2108340951 + (v209 ^ 0x8AA2A369))) & 0xBFFDFFE6) + ((v207 - 2108340951 + (v209 ^ 0x8AA2A369)) ^ 0x5FFEFFF3);
  v219 = ((2045034496 * HIDWORD(a24) - ((-516194304 - 204898304 * HIDWORD(a24)) & 0xC8290000) - 726508179) ^ 0xE4149D6D) & 0xFFFFC000 | ((-265427053 * HIDWORD(a24) - ((-530854106 * HIDWORD(a24) - 204503826) & 0xE8CEC006) + 1850679930) >> 18);
  v220 = ((2 * v219) & 0x7EBFEAFE ^ 0x2A32) + (v219 ^ 0xBF5FE866);
  LODWORD(a25) = v210;
  v221 = v216 - 542375936 * v210;
  v222 = (v221 + 466485253) ^ (v211 + v218 - ((2 * (v211 + v218) - 1911376762) & 0xFBE7B1C2) + 1157444388);
  v223 = (((v222 ^ 0x7DF3D8E1) - 2 * ((v222 ^ 0x7DF3D8E1) & 0x1927ADCE ^ v222 & 2) + 422030796) ^ 0x1927ADCC) - v220 - 1084230273;
  v224 = -22955227 * v218 - ((2101573194 * v218 + 25724964) & 0x6C10C766) + 1993123781;
  v225 = -651689984 * v218 - ((-1303379968 * v218 + 1092616192) & 0x84000000) - 493678192;
  v226 = ((-7151744 * v220 - ((-14303488 * v220 + 1803239168) & 0x8F4DD400)) & 0xFFFFFF80 | ((-1577114177 * v220 - ((1140738942 * v220 - 522783106) & 0xD947FEC0) + 1561295519) >> 25)) + 2103740800;
  v227 = ((2 * v226) & 0xD77FAFBA ^ 0x874D8428) + (v226 ^ 0x2C193DEB);
  v228 = ((v225 ^ 0xC2031190) & 0xFFF80000 | (v224 >> 13)) ^ 0x1B043;
  v229 = v228 - ((2 * v228) & 0xCAE384E4);
  HIDWORD(v230) = v223;
  LODWORD(v230) = 221006961 * (((2 * v223) & 0x5FEB7F98) + (v223 ^ 0xAFF5BFCC)) + 210093812;
  v231 = ((2 * (v230 >> 1)) & 0x5DFEDF7E) + ((v230 >> 1) ^ 0xAEFF6FBF);
  v232 = -1284025315 * v227 - ((1726916666 * v227 - 211152914) & 0xF4DD8E8C) + 1948503869;
  v233 = -1342701568 * v216 - ((1609564160 * v216 + 1605369856) & 0x6B900000) - 1515862263;
  v234 = 427369617 * v231 - ((854739234 * v231 + 2057810338) & 0x43B69EB6) - 1624299476;
  v235 = 1709478468 * v231 - ((1271473288 * v231 + 1788790408) & 0x6858EEC8) - 1451500887;
  v236 = (v233 ^ 0x35CDC709) & 0xFFF80000 | ((2056869375 * v221 + 1966202542 + ((2 * ((2056869375 * v221 + 2100342267) & 0x780130B3 ^ (2056869375 * v221 + 923795456) & 1)) ^ 0xFFFFFFFD)) >> 13);
  v237 = ((2 * v236) & 0x55FCEA7E ^ 0xC8012) + (v236 ^ 0xAAF9B536);
  v238 = -360472576 * v227 - ((352796672 * v227 + 33406976) & 0x2FD74000) - 1192589058;
  v239 = ((v229 + 1701954162) ^ 0x6571C272) - v227 - v237 - v231 - 977421093;
  v240 = ((2 * v239) & 0x7FCF8F76) + (v239 ^ 0x3FE7C7BB);
  v241 = ((2 * ((v235 ^ 0xB42C7765) & 0xFFFFFFFC | (v234 >> 30))) & 0xFF7A996A) + (((v235 ^ 0xB42C7765) & 0xFFFFFFFC | (v234 >> 30)) ^ 0x7FBD4CB5);
  v242 = ((715603968 * v240 - ((357466112 * v240 + 707297280) & 0x3B240000) - 1297720507) ^ 0x9D921B45) & 0xFFFFC000 | ((248556189 * v240 - ((497112378 * v240 - 997152606) & 0xD03FF714) + 1248350171) >> 18);
  v243 = ((2 * v242) & 0x79FBFBDC ^ 0x700C) + (v242 ^ 0xBCFDC7E9);
  v244 = 1651639615 * v241 - ((82053758 * v241 + 379661546) & 0x24DC5D98) + 2109654337;
  v245 = 1639021033 * v243 - ((-1016925230 * v243 + 1619052740) & 0xFD6BCA0A) + 787892583;
  v246 = ((v238 ^ 0x17EBA8FE) & 0xFFFFE000 | (v232 >> 19)) ^ 0xF4D;
  v247 = ((-521666560 * v237 - ((1104150528 * v237 + 1037041664) & 0x66666666) - 770018198) ^ 0x3332746A | ((-1752048611 * v237 - ((790870074 * v237 - 982046790) & 0xAC1E92CE) - 1194664636) >> 13)) ^ 0x2B07A;
  v248 = ((v247 - ((2 * v247) & 0xBE4E064C) - 551091418) ^ 0xDF270326) - 2143112373 + v241;
  v249 = ((2 * v248) & 0x73F3DFDA) + (v248 ^ 0x39F9EFED) + v243;
  v250 = 1585070080 * v243 - ((-1124827136 * v243 + 842072064) & 0x8F8C0000) + 1625210610;
  v251 = v246 - ((2 * v246) & 0xC9B2A952) + 1691964585;
  v252 = -269970977 * (v251 ^ 0x64D954A9) - ((-539941954 * (v251 ^ 0x64D954A9)) & 0xE6E8C1BA) - 210476835;
  v253 = -393093376 * (v251 ^ 0x64D954A9) - ((-786186752 * (v251 ^ 0x64D954A9)) & 0x8A200000);
  v254 = (v249 - ((2 * v249 + 303047754) & 0xF6B319FC) + 73506595) ^ v251;
  v255 = ((2 * v254) & 0x7E3BFFEE ^ 0x3E01B0AE) + (v254 ^ 0x209D27A0);
  v256 = ((((v244 ^ 0x126E2ECC) << (v244 & 0x18 ^ 8)) - ((2 * ((v244 ^ 0x126E2ECC) << (v244 & 0x18 ^ 8))) & 0xE9A753A0) - 187455024) ^ 0xF4D3A9D0) << ((63 * v241 - ((126 * v241 - 22) & 0x98) + 65) & 0x18 ^ 0x10);
  v257 = ((v250 ^ 0x47C63EF2) & 0xFFFFC000 | (v245 >> 18)) ^ 0x3FAD;
  v258 = (((v253 + 1158676483) ^ 0x45100003) & 0xFFFFFF00 | HIBYTE(v252)) ^ 0xF3;
  v259 = (v256 - ((2 * v256) & 0xBAC69750) - 580695128) ^ 0xDD634BA8 | (v244 >> 8) ^ 0x126E2E;
  v260 = ((2 * v259) & 0xDA7FFFF8) + (v259 ^ 0x6D3FFFFC);
  v261 = ((v258 - ((2 * v258) & 0x761BECE8) - 1156712844) ^ 0xBB0DF674) - v260 + 1832910844;
  v262 = v257 - ((2 * v257) & 0x96F42FE2) + 1266292721;
  v263 = (v262 ^ 0x4B7A17F1) + (v261 ^ 0xBEDFDDFD) + ((2 * v261) & 0x7DBFBBFA) + 1092624899;
  v264 = v263 - ((2 * v263) & 0x71D0D58) - 2087811412;
  v265 = ((2 * ((v262 ^ 0xB485E80E) - 1832910843 + v260)) & 0xDE7EBEF2) + (((v262 ^ 0xB485E80E) - 1832910843 + v260) ^ 0x6F3F5F79);
  v266 = (((539998368 * v255 - ((6254912 * v255 + 1037761344) & 0x299C8A80) - 1279540503) ^ 0x94CE4549) & 0xFFFFFFE0 | ((285310405 * v255 - ((570620810 * v255 - 1041311782) & 0x93B05B08) - 1429235343) >> 27)) ^ 0x19;
  v267 = ((2 * v265 - ((4 * v265 + 16941596) & 0x15C0420) + 36651807) & 0x3152B110 ^ 0xDFFDFFEF) + v265;
  v268 = v267 - ((2 * v267 + 1389621792) & 0x54401C76) + 1401554763;
  v269 = (2 * ((((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0x1BBB4C5C ^ v268) & ((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0xB215C4CB ^ v264)) - ((2 * (((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0x1BBB4C5C ^ v268) & ((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0xB215C4CB ^ v264))) & 0x4483624)) - 2075642332) ^ 0x84483624;
  v270 = ((v269 - ((2 * v269) & 0xDDA96C64) - 288049614) ^ 0xEED4B632) + (v264 ^ 0xA9AE8897 ^ v268);
  HIDWORD(v278) = ((2 * v270) & 0xFF3BFAFE) + (v270 ^ 0xFF9DFD7F) - ((2 * (((2 * v270) & 0xFF3BFAFE) + (v270 ^ 0xFF9DFD7F)) + 79117416) & 0x93559B0) - 554284276;
  v281 = (*(v44 + 8 * (v43 + 564)))(1032);
  return (*(v44 + 8 * ((39 * (v281 == 0)) ^ v43)))(v281, v271, v272, v273, v274, v44, 0, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v276, a24, a25, a26, a27, a28, a29, a30, v277, v278, a33, a34, a35, a36, a1, a38, a39, a40, a41, a42);
}

uint64_t sub_10011F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = ((0x21E966DDu % (v6 - 1553)) ^ 0xCB5FDFBF) + 2 * (0x21E966DDu % (v6 - 1553));
  if (v7 + 882909249 >= 3)
  {
    v8 = 1978345467;
  }

  else
  {
    v8 = 1978345470;
  }

  return (*(a6 + 8 * ((117 * (v8 + v7 == 1095436221)) ^ (v6 - 114))))(141636387, 599282036, 46711345, 1052047427, 2080107929, 3614675250, 1095436221);
}

uint64_t sub_1001213DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v48 = v45 + 1549;
  *(v47 - 208) = 0x906249FEB2907B24;
  *(v47 - 200) = 0x798D38F436DABF7FLL;
  *(v47 - 192) = 0x906249FEB2907B24;
  *(v47 - 184) = 0x798D38F436DABF7FLL;
  v50 = a2 != 1622093268 && (a2 & 0xF) == ((v45 + 774) ^ 0x4CB);
  return (*(v46 + 8 * ((11 * v50) ^ v48)))(a1, a2, 1622093268, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_100122F0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W8>)
{
  v13 = v10 < v8;
  if (v13 == a3 + 1455529988 < v8)
  {
    v13 = a3 + 1455529988 < v10;
  }

  v14 = (a1 + (v7 ^ 0x748C135E8B050469) + a3 + ((a3 < v9) << 32) - 0x748C135EDD186F47);
  v15 = (((a1 + (v7 ^ 0x8B050469) + a3 + 585601209) ^ *(*(v6 + 2728) + (*(v5 + 3248) & v4))) & 0x7FFFFFFF) * a4;
  *v14 ^= byte_10025B490[((v7 ^ 0x8B050469) + a3 + 585601209) & 0xF | (16 * (((v15 ^ HIWORD(v15)) * a4) >> 24))] ^ (113 * (v15 ^ BYTE2(v15)));
  return (*(v12 + 8 * ((!v13 * a2) ^ v11)))();
}

uint64_t sub_100123024@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (a1 + (v6 - 2122285071));
  v10 = *v9;
  LODWORD(v9) = ((v9 ^ *(*(v4 + 2728) + (*(v3 + 3248) & v2))) & 0x7FFFFFFF) * a2;
  v11 = (v9 ^ (v9 >> 16)) * a2;
  **(v7 + 16) = byte_100265280[v11 >> 24] ^ v10 ^ byte_100268BC0[v11 >> 24] ^ byte_10027B840[(v11 >> 24) + 5] ^ v11 ^ (-101 * BYTE3(v11));
  return (*(v8 + 8 * (v5 - 365)))();
}

uint64_t sub_10012315C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = (((HIDWORD(a32) ^ a25 ^ 0xD5BF2485) - ((2 * (HIDWORD(a32) ^ a25 ^ 0xD5BF2485) + 1071322170) & 0x21213820) - 1870780883) ^ 0x90909C10) + a21;
  v53 = (v52 ^ 0xEBF8FFF) - 247435263 + ((2 * v52) & 0x1D7F1FFE);
  v54 = (v53 ^ 0xA1C13AC5) - 2 * ((v53 ^ 0xA1C13AC5) & 0x2EB05E7F ^ v53 & 0x10) - 1364173201;
  v55 = (((v54 ^ 0xAEB05E6F) + v53) ^ 0x5F674B74) + ((2 * ((v54 ^ 0xAEB05E6F) + v53)) & 0xBECE96E8) - 1600605043 + ((((2 * v54) ^ 0x5D60BCDE) - ((2 * ((2 * v54) ^ 0x5D60BCDE)) & 0x42A8A170) - 1588309831) ^ 0x5EABAF46);
  v56 = ((v55 - ((2 * v55) & 0x4AA2858) - 2108353492) ^ 0x7DAAEBD2) + v53;
  v57 = (((v56 - 1744425056 - ((2 * v56) & 0x300C5F40) + 8) | 1) - 8) ^ 0x98062FA0;
  HIDWORD(a50) = 169 * (v51 ^ 0x8D);
  v58 = (((678018117 << (BYTE4(a50) ^ 0x53)) & 0xF7FDBBDE) + 1787804444 - ((678018117 << (BYTE4(a50) ^ 0x53)) & 0xC6FD757E) + 695939017) * ((v57 + 1783587643 + ((2 * (v57 & 0x6A4F633E ^ (v56 | 0xFFFFFFFB))) ^ 0xB) + 1) ^ 0x6A4F633B);
  LOBYTE(v58) = v58 - ((2 * v58) & 0x76) + 59;
  v59 = HIDWORD(a10) ^ a12 ^ 0x407983A6 ^ dword_10025F480[(v58 ^ v50) ^ 0xCF];
  v60 = a10 ^ 0x86B70F35 ^ (v59 - 2034823371 - ((2 * v59) & 0xD6E1E6A));
  *(a1 + 4 * (v58 ^ 0x3Bu)) = (v60 - ((2 * v60) & 0x4FE8E574) + 670331578) ^ 0x50076113;
  return (*(&off_1002D7880 + v51))(1111706867, 2074146592, 2625717568, 3338499454, 2080300527, 4160601054, 695939017, 71166582, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a1, a48, a49, a50);
}

uint64_t sub_1001234A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(a21) = -810860798;
  LODWORD(a17) = a26 ^ HIDWORD(a12) ^ HIDWORD(a36);
  v357 = v55 ^ 0xCB60F681;
  v56 = ((a51 + 24) ^ 0x51 ^ (11 * (v55 ^ 0x81))) + (((v55 ^ 0x81) * ((a51 + 77) ^ 9)) & 0x76) + *(a41 + (v55 ^ 0xCB60F681));
  v57 = byte_10027CFA0[(v56 - ((2 * v56 - 110) & 0x96) - 108) ^ 0x63];
  v58 = -7 * v57 - ((HIDWORD(a30) - 14 * v57) & 0xFFFFFFCA);
  v59 = (-7 * v57 - ((BYTE4(a30) - 14 * v57) & 0xCA) + 64);
  LODWORD(v356) = v55 & 0xFFFFFFFD ^ 0xCB60F683;
  v60 = v356 + 942870835 + ((2 * (v356 & 0x3833113D ^ (v55 | 0x7FFFFFF3))) ^ 0x1D) + 1;
  v61 = ((v58 + 64) ^ 0xFFFFFFE5) + 25;
  v62 = (50 * v57 - ((36 * v57 + 44) & 0x30) + 47) & 0x32;
  LOBYTE(v60) = ~(11 * (v60 ^ 0x33)) + *(a41 + (v60 ^ 0x38331133u)) + 22 * (v60 ^ 0x33);
  LODWORD(a43) = v55 & 0xFFFFFFF7;
  v63 = ((2 * v55) & 0xFFFFEBEC ^ 0x96C1E910) + (v55 & 0xFFFFFFF7 ^ 0x349F0377);
  v64 = byte_100284980[(v60 - ((2 * v60 + 10) & 0x20) + 21) ^ 0x43];
  v65 = (v62 ^ 0xFFFFFFCF) + (v61 ^ 0xFFFFFFBA) + ((2 * v61) & 0x74) + 71;
  v66 = v64 & 0xF0;
  v67 = (((v58 + 64) >> 7) & 1 | 0x64) ^ (v59 >> 4) ^ 0x25 ^ (v65 - 2 * (v65 & 0x4F ^ v61 & 1) + 78);
  v68 = ((v67 - ((2 * v67) & 0x74)) << 24) + 973078528;
  LOBYTE(v65) = -11 * v63 - ((-22 * v63 - 44) & 0x9A) - 73;
  v69 = (16 * v64 - ((32 * v64) & 0xC0) - 23) ^ (v64 & 0x20 | 0xC0);
  v70 = (((v66 & 0xFFFFFFF0 | (v69 >> 4)) ^ 0xA0) - 2 * ((v66 & 0x50 | (v69 >> 4) & 0x57) ^ (v69 >> 4) & 6) - 47) ^ 0xD3;
  v71 = (((v70 - ((2 * v70) & 0xAA)) << 8) + 442979584) ^ 0x1A675500;
  LOBYTE(v65) = (((v65 & 0x97 ^ 0xED) - ((2 * (v65 & 0x97 ^ 0xED)) & 0x42) + 33) ^ 0x20) & (((v65 & 0x68 ^ 0xDE) + 92 - ((2 * (v65 & 0x68 ^ 0xDE)) & 0xB8)) ^ 0x5C);
  LOBYTE(v63) = *(a41 + v63 + 2562) - ((v65 - ((2 * v65) & 0x18) - 116) ^ 0x8C);
  v72 = (v71 + 992805824 - ((2 * v71) & 0x765A0600)) ^ 0x3B2D03C0 | ((v68 ^ 0x3A000000) + 69590135 - ((2 * v68) & 0x8000000)) ^ 0x425DC77;
  v73 = v72 - 1473809954 - ((2 * v72) & 0x504EE3BC);
  v74 = byte_10027CFA0[(((v63 - ((2 * v63) & 0xAE) - 41) ^ 0xD4) + 4)];
  v75 = -7 * v74 + ((14 * v74 + 9) | 0xFFFFFFE3) - 22;
  v76 = (v55 & 0xFFFFFFFB ^ 0xCB60F685) - 1600766044 + ((2 * ((v55 & 0xFFFFFFFB ^ 0xCB60F685) & 0x20963FA8 ^ (v55 | 0x7FFFFFF7))) ^ 0x19) + 1;
  HIDWORD(v356) = v76 ^ 0xA0963FA4;
  v77 = ((22 * (v76 ^ 0xA4)) & 0x1E) + ((11 * (v76 ^ 0xFFFFFFA4)) ^ 0xF) + *(a41 + (v76 ^ 0xA0963FA4));
  v78 = (v77 + 100);
  v79 = v75 ^ (v75 >> 7) ^ (v75 >> 4) ^ 0x9B;
  v80 = (((v79 - ((2 * v79) & 0xD0)) << 24) + 1744830464) ^ 0x68000000;
  v81 = 2 * v77 - ((4 * v77 - 44) & 0xFFFFFF87) + 45;
  v82 = (v78 | ((v78 < 0x6F) << 8)) + (v81 & 0xB0 ^ 0x10818059) - ((2 * v81) & 0x140);
  v83 = byte_10027CFA0[(v82 - ((2 * v82 - 553844960) & 0xC6B9577A) - 757388467) ^ 0xE35CABBFLL];
  v84 = v80 - 711842171 - ((2 * v80) & 0xAA000000);
  v85 = -7 * v83 - ((HIDWORD(a30) - 14 * v83) & 0xFFFFFF9C) - 87;
  v86 = (v55 & 0xFFFFFFF4 ^ 0xCB60F68B) + 1864942129 - ((2 * (v55 & 0xFFFFFFF4 ^ 0xCB60F68B)) & 0xDE518462);
  LODWORD(a37) = v86 ^ 0x6F28C231;
  LOBYTE(v86) = ((11 * (v86 ^ 0x31)) ^ 0x3F) + ((22 * (v86 ^ 0x31)) & 0x7E) + *(a41 + (v86 ^ 0x6F28C231));
  v87 = (v85 >> 4) & 1 ^ (v85 >> 7) & 1;
  v88 = v86 - ((2 * v86 + 10) & 0x1C) + 83;
  v89 = (v85 >> 4) & 0xE;
  if ((v87 & v85) != 0)
  {
    v90 = (v85 ^ 0x4E) - v87 - ((2 * ((v85 ^ 0x4E) - v87)) & 0x30) + 24;
  }

  else
  {
    v90 = v85 ^ ((v85 >> 7) & 1 | 0xFFFFFFC8) ^ ((v85 >> 4) & 1 | 0x54) ^ 0xCA;
  }

  v91 = byte_1002601B0[v88 ^ 0x5CLL];
  v92 = ((((v89 ^ v90 ^ 0xFE) - ((2 * (v89 ^ v90 ^ 0xFE)) & 0xFFFFFFDF)) << 24) + 1862270976) ^ 0x6F000000;
  HIDWORD(v351) = v92 + 754790961 - ((2 * v92) & 0x58000000);
  LODWORD(v355) = v55 & 0xFFFFFFF9 ^ 0xCB60F687;
  v93 = ((11 * ((v355 - 75 - ((2 * v355) & 0x6A)) ^ 0xB5)) ^ 0xFB) + ((22 * ((v355 - 75 - ((2 * v355) & 0x6A)) ^ 0xB5)) & 0xF7) + *(a41 + ((v355 - 1564612171 - ((2 * v355) & 0x457BD36A)) ^ 0xA2BDE9B5));
  HIDWORD(v94) = v91 ^ 2;
  LODWORD(v94) = (v91 ^ 0xFFFFFFDF) << 24;
  v95 = byte_100284980[(v93 - ((2 * v93 + 18) & 0xAC) - 33) ^ 0x86];
  v96 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0xFFFFFF87) + 67;
  LODWORD(a35) = v55 & 0xFFFFFFF0 ^ 0xCB60F68F;
  v97 = ((11 * ((a35 - 46 - ((2 * a35) & 0xA4)) ^ 0xD2)) ^ 0x4E) + ((22 * ((a35 - 46 - ((2 * a35) & 0xA4)) ^ 0xD2)) & 0x9C) + *(a41 + ((a35 - 41217070 - ((2 * a35) & 0xFB1627A4)) ^ 0xFD8B13D2));
  v98 = v84 ^ 0xD5922685 | ((v96 ^ 0x53 ^ (v96 >> 2) & 0x39) + 617091380 - ((2 * (v96 ^ 0x53 ^ (v96 >> 2) & 0x39)) & 0x68)) ^ 0x24C81134;
  v99 = v98 - 1922914445 - ((2 * v98) & 0x1AC54EE6);
  v100 = byte_1002601B0[(v97 - ((2 * v97 + 108) & 0x6E) + 109) ^ 0x88];
  v101 = ((((v95 ^ 0x26 ^ (v95 >> 4) & 2) - ((2 * (v95 ^ 0x26 ^ (v95 >> 4) & 2)) & 0x1F8)) << 8) + 1881275392) ^ 0x7021FC00;
  HIDWORD(v94) = v100 ^ 2;
  LODWORD(v94) = (v100 ^ 0xFFFFFFDF) << 24;
  LODWORD(v351) = v101 - ((2 * v101) & 0x4649800);
  v102 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0x4E);
  HIDWORD(v355) = v55 & 0xFFFFFFF5 ^ 0xCB60F68B;
  v103 = HIDWORD(v355) + 644451115 + ((2 * (HIDWORD(v355) & 0x26698B35 ^ (v55 | 0x7FFFFFEB))) ^ 0x3D) + 1;
  LOBYTE(v103) = ((22 * (v103 ^ 0x2B)) & 0x76) + ((11 * (v103 ^ 0x2B)) ^ 0x3B) + *(a41 + (v103 ^ 0x26698B2Bu)) - 1;
  v104 = byte_100284980[(v103 - ((2 * v103 - 108) & 0x87) - 115) ^ 0x13];
  v105 = (((v104 >> 4) | 0xDDDDDDDD) ^ v104) & 0x6B ^ 0xFFFFFFDD;
  v106 = v104 & 0x94 ^ 0x8F ^ (v105 - ((2 * v105) & 0x36) - 101);
  v107 = (((v106 - ((2 * v106) & 0xD0)) << 8) + 318203904) ^ 0x12F76800;
  v108 = (v107 + 1367839487 - ((2 * v107) & 0x230F2400)) ^ 0x518792FF | v99 ^ 0x8D62A773;
  v109 = (v55 & 0xFFFFFFFC ^ 0xCB60F683) - 301555190 + ((2 * ((v55 & 0xFFFFFFFC ^ 0xCB60F683) & 0x6E06A21C ^ (v55 | 0x7FFFFFEB))) ^ 0x2D) + 1;
  LODWORD(a32) = v109 ^ 0xEE06A20A;
  LOBYTE(v109) = ((11 * (v109 ^ 0xA)) ^ 0xDF) + ((22 * (v109 ^ 0xA)) & 0xBF) + *(a41 + (v109 ^ 0xEE06A20A));
  v110 = byte_1002601B0[(v109 - ((2 * v109 + 74) & 0xC3) - 122) ^ 0x28];
  v111 = v108 - 1028660168 - ((2 * v108) & 0x855FC870);
  LODWORD(v354) = -882837879;
  v112 = (v55 & 0xFFFFFFF6 ^ 0xCB60F689) + 920096598 - ((2 * (v55 & 0xFFFFFFF6 ^ 0xCB60F689)) & 0x6DAF1EAC);
  HIDWORD(v94) = v110 ^ 2;
  LODWORD(v94) = (v110 ^ 0xFFFFFFDF) << 24;
  v113 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0xFFFFFFDA) + 109;
  v114 = (v113 ^ 0x6D) - ((2 * (v113 ^ 0x6D)) & 0xF2);
  LODWORD(a29) = v112 ^ 0x36D78F56;
  LOBYTE(v112) = ((11 * (v112 ^ 0x56)) ^ 0x7F) + 22 * (v112 ^ 0x56) + *(a41 + (v112 ^ 0x36D78F56));
  v115 = v73 ^ 0xA82771DE | (((v113 >> 2) & 0x39 ^ 0x19) + 887513580 - ((2 * ((v113 >> 2) & 0x39 ^ 0x19)) & 0xDDDDDDDD)) ^ 0x34E661EC;
  v116 = byte_100267C70[(v112 + ((116 - 2 * v112) | 0xBF) - 90) ^ 0x2ELL] ^ 0x72;
  v117 = (((v116 - ((2 * v116) & 0xA6)) << 16) + 173211648) ^ 0xA530000;
  v118 = (v55 & 0xFFFFFFF2 ^ 0xCB60F68D) - 1867622664 - ((2 * (v55 & 0xFFFFFFF2 ^ 0xCB60F68D)) & 0x215CADF0);
  v119 = v117 - ((2 * v117) & 0x9960000) - 993315335;
  HIDWORD(v354) = v118 ^ 0x90AE56F8;
  LOBYTE(v118) = ((11 * (v118 ^ 0xF8)) ^ 0x7F) + 22 * (v118 ^ 0xF8) + *(a41 + (v118 ^ 0x90AE56F8));
  v120 = (((v111 & 0xBE00647C | v119 & 0xA40000) ^ 0x82806438) - 338722506 - ((2 * ((v111 & 0xBE00647C | v119 & 0xA40000) ^ 0x82806438)) & 0x55080068)) ^ 0xEBCF8136 | (((v111 & 0x41009B83 | v119 & 0x5B0000) ^ 0x404B8000) - 955243687 - ((2 * ((v111 & 0x41009B83 | v119 & 0x5B0000) ^ 0x404B8000)) & 0x82200602)) ^ 0xC7102359;
  v111 ^= 0xC2AFE438;
  v121 = v111 - ((v120 - 1645447664 - ((2 * v120) & 0x3BD8EC20)) ^ 0x9DEC7610);
  v122 = (v119 ^ ((v119 ^ 0x3B34CA06) - ((2 * (v119 ^ 0x3B34CA06) + 2) & 0xE4CC3F04) - 228188285) ^ 0x1E2D9DA1 ^ (v121 - ((2 * v121) & 0x51016FB4) + 679524314)) + v111;
  v123 = byte_100267C70[(v118 - ((2 * v118 + 10) & 0xC3) + 102) ^ 0xD4] ^ 0x1A;
  v124 = (((v123 - ((2 * v123) & 0x17A)) << 16) + 1589444608) ^ 0x5EBD0000;
  v125 = (v102 + 39) ^ 0x2E ^ ((v102 + 39) >> 2) & 0x39;
  v126 = (v124 + 1684151868 - ((2 * v124) & 0x48C40000)) ^ 0x64621E3C | (v125 - 1652956683 - ((2 * v125) & 0x1EA)) ^ 0x9D79E1F5;
  v127 = v126 - 518155932 - ((2 * v126) & 0x423B22C8);
  v128 = (v55 & 0xFFFFFFFE ^ 0xCB60F681) + 2087556097 + ((2 * ((v55 & 0xFFFFFFFE ^ 0xCB60F681) & 0x7C6D9406 ^ (v55 | 0x7FFFFFF9))) ^ 0xF) + 1;
  LODWORD(v352) = v128 ^ 0x7C6D9401;
  LOBYTE(v119) = ((11 * (v128 | 1)) ^ 0x63) + ((22 * (v128 | 1)) & 0xC7) + *(a41 + (v128 ^ 0x7C6D9401));
  v129 = (v55 & 0xFFFFFFF1 ^ 0xCB60F68F) + 1620641771 + ((2 * ((v55 & 0xFFFFFFF1 ^ 0xCB60F68F) & 0x609907F1 ^ (v55 | 0x7FFFFFEF))) ^ 0x35) + 1;
  HIDWORD(v353) = v129 ^ 0x609907EB;
  LOBYTE(v129) = ((11 * (v129 ^ 0xEB)) ^ 0x3F) + ((22 * (v129 ^ 0xEB)) & 0x7E) + *(a41 + (v129 ^ 0x609907EB));
  v130 = (v55 & 0xFFFFFFF3 ^ 0xCB60F68D) + 1417713652 - ((2 * (v55 & 0xFFFFFFF3 ^ 0xCB60F68D)) & 0xA9012FE8);
  LOBYTE(v117) = v129 - ((2 * v129 + 10) & 0x12);
  v131 = byte_100267C70[(v119 - ((2 * v119 + 66) & 0xA4) - 13) ^ 2] ^ 0x28;
  v132 = (((v131 - ((2 * v131) & 0xB2)) << 16) + 2102984704) ^ 0x7D590000;
  v133 = (v132 - 266024838 - ((2 * v132) & 0x60480000)) ^ 0xF024C87A | (v114 - 1482150535) ^ 0x8A323DA8 ^ (v115 - ((2 * v115) & 0x5B3421A2) + 765071569);
  HIDWORD(a26) = v130 ^ 0x548097F4;
  LOBYTE(v114) = ((22 * (((v55 & 0xF3 ^ 0x8D) - 12 - ((2 * (v55 & 0xF3 ^ 0x8D)) & 0xE8)) ^ 0xF4)) & 0x7E) + ((11 * (v130 ^ 0xF4)) ^ 0xBF) + *(a41 + (v130 ^ 0x548097F4)) + 65;
  LODWORD(v353) = v55 & 0xFFFFFFFA ^ 0xCB60F685;
  LOBYTE(v129) = v114 - ((2 * v114) & 0xA2) + 81;
  LOBYTE(v130) = (2 * v129 - ((4 * v129) & 8) + 5) & 8;
  v134 = byte_100284980[(v117 + 78) ^ 0x6CLL];
  v135 = ((((v134 ^ 0xF7 ^ (v134 >> 4) & 2) - ((2 * (v134 ^ 0xF7 ^ (v134 >> 4) & 2)) & 0x12C)) << 8) + 877499904) ^ 0x344D9600;
  v136 = (v135 - 340489317 - ((2 * v135) & 0x57691600)) ^ 0xEBB48B9B | v127 ^ 0xE11D9164;
  v137 = byte_10027CFA0[(v130 + (v129 ^ 0x55) - 2 * ((v130 + (v129 ^ 0x55)) & 0x4F ^ (v129 ^ 0x55) & 3) + 76) ^ 0xD7];
  v138 = -7 * v137 + ((a30 + 14 * v137) | 0xFFFFFFAD) - 123;
  v139 = ((11 * ((v353 + 209138680 - ((2 * v353) & 0x18EE67F0)) ^ 0xFFFFFFF8)) ^ 0x6B) + ((22 * ((v353 + 209138680 - ((2 * v353) & 0x18EE67F0)) ^ 0xFFFFFFF8)) & 0xFFFFFFD6) + *(a41 + ((v353 + 209138680 - ((2 * v353) & 0x18EE67F0)) ^ 0xC7733F8u));
  HIDWORD(v352) = v55 & 0xFFFFFFF8 ^ 0xCB60F687;
  v140 = v138 & 0xC6 ^ (v138 >> 4) ^ ((v138 >> 7) & 1 | 0xFE) ^ 0x73 ^ ((v138 & 0x39 ^ 0xFFFFFFEF) - 2 * ((v138 & 0x39 ^ 0xFFFFFFEF) & 0xF) - 113);
  v141 = (((v140 - ((2 * v140) & 0x74)) << 24) - 1174405120) ^ 0xBA000000;
  v142 = v139 - ((2 * v139 + 50) & 0x54) - 61;
  v143 = ((v142 & 0xE ^ 0xFFFFFFF5) - ((2 * v142) & 0x10) - 56) ^ 0x48;
  v144 = (v142 ^ 0x3D792DB3) + ((2 * (v142 ^ 0x44)) & 0x1EE) + (v143 ^ 0x304208) - ((2 * v143) & 0x1EE);
  v145 = (2 * (v144 + 1) - 4 * ((v144 - 1034514431) & 0xC570EED ^ (v144 + 1) & 0x29) - 1654964856) ^ 0x18AE1D88;
  v146 = (v142 ^ 0xFB53BF02) + ((2 * (v142 ^ 0xFFFFFFB5)) & 0x16E) + 78397754 + ((v145 + 876450195 - ((2 * v145) & 0x687B2324)) ^ 0x343D9193);
  v147 = byte_100267C70[(v146 + 21258325 - ((2 * v146) & 0x288C0AA)) ^ 0x1446055] ^ 0x5C;
  v148 = (((v147 - ((2 * v147) & 0x19C)) << 16) - 1999765504) ^ 0x88CE0000;
  v149 = (v148 - 343893342 - ((2 * v148) & 0x57000000)) ^ 0xEB809AA2 | HIDWORD(v351) ^ 0x2CFD3231;
  v150 = (v141 + 2003128989 - ((2 * v141) & 0xEE000000)) ^ 0x7765529D | (v136 - 1908346371 - ((2 * v136) & 0x1C81E3FA)) ^ 0x8E40F1FD;
  LOBYTE(v139) = ((11 * ((BYTE4(v352) + 11 - ((2 * BYTE4(v352)) & 0x16)) ^ 0xB)) ^ 0xBF) + ((22 * ((BYTE4(v352) + 11 - ((2 * BYTE4(v352)) & 0x16)) ^ 0xB)) & 0x7E) + *(a41 + ((HIDWORD(v352) + 984372235 - ((2 * HIDWORD(v352)) & 0x7558A816)) ^ 0x3AAC540Bu));
  v151 = byte_1002601B0[(v139 - ((2 * v139 - 118) & 0xB0) - 99) ^ 0x2DLL];
  HIDWORD(v94) = v151 ^ 2;
  LODWORD(v94) = (v151 ^ 0xFFFFFFDF) << 24;
  v152 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0x5E);
  HIDWORD(v94) = (v122 ^ 0xEAFF77B2) + 352356430 + ((2 * v122) & 0xD5FEEF64);
  LODWORD(v94) = HIDWORD(v94);
  v153 = (v149 + 1608607483 - ((2 * v149) & 0xBFC2CDF6)) ^ 0x5FE166FB;
  v154 = v153 | (v351 + 19657) & 0x7F00 ^ 0x4C00;
  v155 = v154 - 877450494 - 2 * (v154 & 0x4BB32B22 ^ v153 & 0x20);
  v152 -= 81;
  v156 = (((v351 + 19657) & 0x8000) + 1386555650 + (v152 ^ 0xAF) - ((2 * (v152 ^ 0xAF)) & 4)) ^ 0x52A52902;
  v157 = (v156 + 931797404 - ((2 * v156) & 0x6F143338)) ^ 0x378A199C;
  v158 = v157 - (((v155 ^ 0xCBB32B02 | v157) + 212506879 - ((2 * (v155 ^ 0xCBB32B02 | v157)) & 0x195531FE)) ^ 0xCAA98FF);
  v159 = (((4 * HIDWORD(a21)) ^ 0x1BC75334) - ((2 * ((4 * HIDWORD(a21)) ^ 0x1BC75334)) & 0x9800FF48) + 1275101095) ^ ((HIDWORD(a21) >> 30) | 0xECE4C2A4);
  v160 = (v155 ^ ((v155 ^ 0x344CD4FD) - ((2 * (v155 ^ 0x344CD4FD) + 2) & 0x3E5A24D0) + 523047529) ^ 0x61BCEC4F ^ (v158 - ((2 * v158) & 0x6A45AA4A) - 1256008411)) + v157;
  v161 = ((2 * v160) & 0x7F7EEB5E) + (v160 ^ 0xBFBF75AF);
  v162 = ((v152 >> 2) & 0x39 ^ 0x29) - 220457546 - ((2 * ((v152 >> 2) & 0x39 ^ 0x29)) & 0x60);
  v163 = v161 + 1077971537;
  v164 = ((((v161 + 1077971537) ^ v162 ^ 0xF2DC15B6) - 2 * (((v161 + 1077971537) ^ v162 ^ 0xF2DC15B6) & 0x5F5A967F ^ ((v161 + 1077971537) ^ v162) & 8) - 547711369) ^ 0x20A56988) + v161;
  v165 = (v94 >> 30) - ((2 * (v94 >> 30)) & 0xE07639F6) + 1882922235;
  v166 = v159 ^ ~v165;
  v167 = v159 ^ 0xFB257B98 ^ v165;
  v168 = v150 - ((2 * v150) & 0xB8950C28) - 599095788;
  v169 = (v162 ^ 0xD23EA49) - ((2 * (v162 ^ 0xD23EA49) + 2) & 0xF43B778E) - 98714680;
  v170 = (v162 ^ v169 ^ 0x7CA3B2C7 ^ (v164 - ((2 * v164 - 2139024220) & 0xE8C4396C) - 1264408824)) + v163;
  v171 = HIDWORD(a35) ^ a36 ^ HIDWORD(a20);
  v172 = v171 ^ HIDWORD(a32) ^ v168;
  v173 = v171 ^ (((HIDWORD(a31) - 2112389658) ^ 0x36C800E7 ^ (v133 + 919077095 - ((2 * v133) & 0x6D9001CE))) - ((2 * ((HIDWORD(a31) - 2112389658) ^ 0x36C800E7 ^ (v133 + 919077095 - ((2 * v133) & 0x6D9001CE)))) & 0xC584A628) + 1656902420);
  v174 = v171 ^ ((__PAIR64__(v166, v167) >> 2) - ((2 * (__PAIR64__(v166, v167) >> 2)) & 0x1B0296A2) + 226577233);
  v175 = v171 ^ a31 ^ (v170 - ((2 * v170) & 0xDA88FE2E) - 314278121);
  v176 = *(a19 + 4 * (v172 ^ 0x84u)) ^ *(a49 + 4 * (HIBYTE(v173) ^ 0x1C)) ^ *(a53 + 4 * (BYTE1(v174) ^ 0x6Du)) ^ *(a47 + 4 * (BYTE2(v175) ^ 0xC0u));
  v177 = *(a49 + 4 * (HIBYTE(v175) ^ 2)) ^ *(a53 + 4 * (BYTE1(v172) ^ 0x5Bu)) ^ *(a19 + 4 * ((v171 ^ (((BYTE4(a31) - 26) ^ 0xE7 ^ (v133 - 25 - ((2 * v133) & 0xCE))) - ((2 * ((BYTE4(a31) - 26) ^ 0xE7 ^ (v133 - 25 - ((2 * v133) & 0xCE)))) & 0x28) + 20)) ^ 0x16u)) ^ *(a47 + 4 * (BYTE2(v174) ^ 0x77u));
  v178 = *(a53 + 4 * (BYTE1(v175) ^ 0x5Du));
  v179 = *(a47 + 4 * (BYTE2(v172) ^ 0xBAu)) ^ *(a53 + 4 * (((v171 ^ (((WORD2(a31) + 32230) ^ 0xE7 ^ (v133 + 231 - ((2 * v133) & 0x1CE))) - ((2 * ((WORD2(a31) + 32230) ^ 0xE7 ^ (v133 + 231 - ((2 * v133) & 0x1CE)))) & 0xA628) + 21268)) >> 8) ^ 0xDDu)) ^ *(a49 + 4 * (HIBYTE(v174) ^ 0xB1)) ^ *(a19 + 4 * (v175 ^ 0x81u));
  v180 = v178 ^ *(a49 + 4 * (HIBYTE(v172) ^ 0xD3)) ^ *(a19 + 4 * (v174 ^ 0x82u)) ^ *(a47 + 4 * (BYTE2(v173) ^ 0xF8u));
  v181 = *(a19 + 4 * (v180 ^ 0xB1u)) ^ 0x43075F2A;
  v182 = *(a47 + 4 * (BYTE2(v177) ^ 0xEEu)) ^ 0xC3F7EB70 ^ *(a53 + 4 * (BYTE1(v179) ^ 0xAu)) ^ *(a49 + 4 * (HIBYTE(v176) ^ 0x4C));
  v183 = v181 + v182;
  v184 = (v181 & v182) - ((2 * (v181 & v182)) & 0x3B331DDE);
  v185 = ((2 * v184 - 1154277922) ^ 0xBB331DDE) + 1975693405 - 2 * (((2 * v184 - 1154277922) ^ 0xBB331DDE) & 0x75C2B07C ^ (2 * v184 - 1154277922) & 0x20);
  v186 = *(a47 + 4 * (BYTE2(v179) ^ 0x49u)) ^ *(a49 + 4 * (HIBYTE(v177) ^ 0x99)) ^ *(a53 + 4 * (BYTE1(v180) ^ 0x55u)) ^ *(a19 + 4 * (v176 ^ 0x30u));
  v187 = *(a47 + 4 * (BYTE2(v176) ^ 0x2Cu));
  v188 = (v183 ^ 0x5A7F2FFD) + ((2 * v183) & 0xB4FE5FFA) - 1518284796 + (v185 ^ 0x8A3D4FA2);
  v189 = *(a53 + 4 * (BYTE1(v176) ^ 0x19u)) ^ *(a49 + 4 * (HIBYTE(v179) ^ 0x97));
  v190 = *(a53 + 4 * (BYTE1(v177) ^ 0x33u));
  v191 = v188 - ((2 * v188) & 0x1A4B21FA) - 1926917891;
  v192 = v189 ^ *(a47 + 4 * (BYTE2(v180) ^ 0xFEu)) ^ *(a19 + 4 * (v177 ^ 0x57u));
  v193 = v190 ^ v187 ^ *(a49 + 4 * (HIBYTE(v180) ^ 0x9B)) ^ *(a19 + 4 * (v179 ^ 0x10u));
  v194 = ((((v192 ^ 0xC0EA0B49) >> (v169 & 8)) - 134090637 - ((2 * ((v192 ^ 0xC0EA0B49) >> (v169 & 8))) & 0xF003E0E6)) ^ 0xF801F073) >> (v169 & 8 ^ 8);
  v195 = *(a53 + 4 * (BYTE1(v191) ^ 0x16u));
  v196 = *(a53 + 4 * ((v194 - ((2 * v194) & 0x34) - 102) ^ 0x9Au)) ^ *(a47 + 4 * (BYTE2(v186) ^ 0x53u)) ^ *(a19 + 4 * (v193 ^ 0xA2u)) ^ *(a49 + 4 * (HIBYTE(v191) ^ 0xC3));
  v197 = *(a19 + 4 * ((v188 - ((2 * v188) & 0xFA) - 3) ^ 0xA9u));
  v198 = *(a53 + 4 * (BYTE1(v193) ^ 0xEAu)) ^ *(a49 + 4 * (HIBYTE(v186) ^ 0xD7)) ^ *(a47 + 4 * (BYTE2(v192) ^ 0xEAu));
  v199 = *(a47 + 4 * (BYTE2(v191) ^ 0x98u));
  v200 = __PAIR64__(v198 ^ 0xF0B45A ^ v197, v198 ^ ~v197) >> 31;
  HIDWORD(v94) = ~v200;
  LODWORD(v94) = (v200 - ((2 * v200) & 0x14C6BBD8) + 174284268) ^ 0x17C2C136;
  v201 = (v94 >> 1) - ((2 * (v94 >> 1)) & 0x1F08956) + 16270507;
  v202 = *(a49 + 4 * (HIBYTE(v192) ^ 0xC0)) ^ *(a47 + 4 * (BYTE2(v193) ^ 0xE4u)) ^ *(a19 + 4 * (v186 ^ 3u)) ^ v195;
  HIDWORD(v94) = v202 ^ 0x45A;
  LODWORD(v94) = v202 ^ 0x80F0B000;
  v203 = (v94 >> 12) - ((2 * (v94 >> 12)) & 0xCE23070C) + 1729201030;
  v204 = *(a49 + 4 * (HIBYTE(v193) ^ 0xDB)) ^ *(a53 + 4 * (BYTE1(v186) ^ 0xB5u)) ^ *(a19 + 4 * (v192 ^ 0x49u)) ^ v199;
  HIDWORD(v94) = v203 ^ 0xE3BB5;
  LODWORD(v94) = v203 ^ 0xF2C00000;
  v205 = (v94 >> 20) + 1293493467 + (~(2 * (v94 >> 20)) | 0x65CDB64B);
  v206 = *(a47 + 4 * (BYTE2(v201) ^ 0xEEu)) ^ *(a49 + 4 * (HIBYTE(v196) ^ 0x42)) ^ *(a53 + 4 * (BYTE1(v205) ^ 0xA2u)) ^ *(a19 + 4 * (v204 ^ 0x8Du));
  v207 = *(a47 + 4 * (BYTE2(v205) ^ 0x46u)) ^ *(a49 + 4 * (HIBYTE(v201) ^ 0x1B)) ^ *(a53 + 4 * (BYTE1(v204) ^ 0x55u)) ^ *(a19 + 4 * (v196 ^ 0x3Fu));
  v208 = *(a19 + 4 * (v201 ^ 0xFAu)) ^ *(a53 + 4 * (BYTE1(v196) ^ 0xB5u)) ^ *(a47 + 4 * (BYTE2(v204) ^ 0x38u)) ^ *(a49 + 4 * (HIBYTE(v205) ^ 0x63));
  v209 = *(a49 + 4 * (HIBYTE(v204) ^ 0xE)) ^ *(a47 + 4 * (BYTE2(v196) ^ 0x95u)) ^ *(a53 + 4 * (BYTE1(v201) ^ 0x8Au)) ^ *(a19 + 4 * (((v94 >> 20) - 37 + (~(2 * (v94 >> 20)) | 0x4B)) ^ 0xA8u));
  v210 = *(a49 + 4 * (HIBYTE(v206) ^ 0xCC));
  v211 = ((((v209 ^ 0x226F4D3) >> (v210 & 8 ^ 8)) - 1547570049 - ((2 * ((v209 ^ 0x226F4D3) >> (v210 & 8 ^ 8))) & 0x4783E8FE)) ^ 0xA3C1F47F) >> (v210 & 8);
  v212 = *(a49 + 4 * (HIBYTE(v207) ^ 0x59)) ^ *(a47 + 4 * (BYTE2(v208) ^ 0xEEu)) ^ *(a19 + 4 * (v206 ^ 0x17u)) ^ *(a53 + 4 * ((v211 - ((2 * v211) & 0x36) - 101) ^ 0x9Bu));
  v213 = *(a49 + 4 * (HIBYTE(v209) ^ 2));
  v214 = *(a47 + 4 * (BYTE2(v207) ^ 0x32u)) ^ v210 ^ *(a53 + 4 * (BYTE1(v208) ^ 0x15u)) ^ *(a19 + 4 * (v209 ^ 0xD3u));
  v215 = *(a47 + 4 * (BYTE2(v206) ^ 0xF4u));
  v216 = v215 ^ 0xB159A015;
  v217 = v213 ^ ((v213 ^ 0x4CC44355) - ((2 * (v213 ^ 0x4CC44355) + 2) & 0xF866F20A) + 2083748102) ^ ((v215 ^ 0xB159A015) - (v213 ^ 0x2621CBF ^ v215) - ((2 * ((v215 ^ 0xB159A015) - (v213 ^ 0x2621CBF ^ v215))) & 0xC7B54B3C) - 472210018);
  v218 = (v217 ^ 0x2CD26031) + v216 - ((2 * ((v217 ^ 0x2CD26031) + v216)) & 0x5B1477BA) - 1383449635;
  v219 = *(a19 + 4 * (v208 ^ 4u));
  v220 = *(a19 + 4 * (v207 ^ 0x2Bu)) ^ *(a47 + 4 * (BYTE2(v209) ^ 0x26u)) ^ *(a53 + 4 * (BYTE1(v206) ^ 0xAAu)) ^ *(a49 + 4 * (HIBYTE(v208) ^ 0x8C));
  v221 = v219 ^ *(a53 + 4 * (BYTE1(v207) ^ 0xAAu)) ^ v218;
  v222 = *(a49 + 4 * (HIBYTE(v214) ^ 0xFD)) ^ *(a19 + 4 * ((v219 ^ *(a53 + 4 * (BYTE1(v207) ^ 0xAAu)) ^ v218) ^ 0xFu)) ^ *(a53 + 4 * (BYTE1(v220) ^ 0x33u)) ^ *(a47 + 4 * (BYTE2(v212) ^ 0x12u));
  v223 = *(a47 + 4 * (BYTE2(v214) ^ 0xD0u)) ^ *(a49 + 4 * (HIBYTE(v221) ^ 5));
  v224 = *(a53 + 4 * (BYTE1(v212) ^ 0x92u));
  v225 = *(a47 + 4 * (BYTE2(v220) ^ 0xCu)) ^ *(a19 + 4 * (v214 ^ 0xCBu)) ^ *(a53 + 4 * (BYTE1(v221) ^ 0x54u)) ^ *(a49 + 4 * (HIBYTE(v212) ^ 0x24));
  v226 = 2 * (((v224 ^ 0xC195F7CF) & (v223 ^ 0x2621CBF)) + (~(2 * ((v224 ^ 0xC195F7CF) & (v223 ^ 0x2621CBF))) | 0x3054C0FD)) - 810860796;
  v227 = (((v226 ^ 0xCFAB3F02) + 332661601 - ((2 * (v226 ^ 0xCFAB3F02)) & 0x27A806C0)) ^ 0x13D40361) + (v223 ^ 0xC3F7EB70 ^ v224);
  v228 = (((v226 ^ 0xCFAB3F02) + 1074332340 - 2 * ((v226 ^ 0xCFAB3F02) & 0x400902BC ^ v226 & 8)) ^ 0xBFF6FD4B) + (v227 ^ 0xFD7FFFAE) + ((2 * v227) & 0xFAFFFF5C) + 41943123;
  v229 = *(a49 + 4 * (HIBYTE(v220) ^ 0x28)) ^ *(a53 + 4 * (BYTE1(v214) ^ 0x8Cu)) ^ *(a47 + 4 * (BYTE2(v221) ^ 0x32u)) ^ *(a19 + 4 * (v212 ^ 0xBAu));
  v230 = (v228 - ((2 * v228) & 0x1AE93450) - 1921738200) ^ *(a19 + 4 * (v220 ^ 0xE4u));
  v231 = *(a47 + 4 * (BYTE2(v222) ^ 0x7Eu));
  v232 = *(a53 + 4 * (BYTE1(v229) ^ 0x5Eu)) ^ *(a49 + 4 * (HIBYTE(v222) ^ 0xC2)) ^ *(a47 + 4 * (BYTE2(v225) ^ 0x9Cu));
  v233 = *(a53 + 4 * ~(v222 >> 8));
  v234 = HIBYTE(v230) ^ 0xAA;
  v235 = *(a49 + 4 * (HIBYTE(v225) ^ 0x66)) ^ *(a47 + 4 * (BYTE2(v229) ^ 0x60u)) ^ *(a19 + 4 * (v222 ^ 0xA5u)) ^ *(a53 + 4 * (BYTE1(v230) ^ 0xE8u));
  v236 = *(a19 + 4 * (v230 ^ 0x94u));
  v237 = *(a49 + 4 * (HIBYTE(v229) ^ 0xCE)) ^ *(a47 + 4 * (BYTE2(v230) ^ 0xC9u));
  v238 = *(a19 + 4 * (v225 ^ 0x45u)) ^ v233;
  v239 = *(a53 + 4 * (BYTE1(v225) ^ 0xD9u)) ^ v231 ^ *(a19 + 4 * (v229 ^ 0xFBu));
  v240 = v238 ^ v237;
  v241 = v239 ^ *(a49 + 4 * v234);
  v242 = *(a53 + 4 * (((v238 ^ v237) >> 8) ^ 0x3Du));
  v243 = *(a19 + 4 * (v241 ^ 0xFAu));
  v244 = v242 ^ *(a47 + 4 * (BYTE2(v235) ^ 0xE7u));
  v245 = v244 ^ *(a49 + 4 * (((v236 ^ v232) >> 24) ^ 0x3A)) ^ 0xC3F7EB70;
  v246 = (v243 ^ 0x43075F2A) + v245;
  v247 = (2 * (((v243 ^ 0x43075F2A) & v245) + ~((2 * ((v243 ^ 0x43075F2A) & v245)) & 0x67401A3E)) + 1732254272) ^ 0x67401A3E;
  v248 = (v246 ^ 0x3E3AFF6A) - 1044053865 + ((2 * v246) & 0x7C75FED4) + ((v247 - ((2 * v247) & 0xB35E35FC) - 642835713) ^ 0x2650E500);
  v249 = *(a47 + 4 * (BYTE2(v240) ^ 0x77u)) ^ *(a49 + 4 * (HIBYTE(v235) ^ 0xDC)) ^ *(a53 + 4 * (BYTE1(v241) ^ 0x10u));
  v250 = *(a47 + 4 * (BYTE2(v241) ^ 0xCDu)) ^ *(a49 + 4 * (HIBYTE(v240) ^ 0x92));
  v251 = *(a19 + 4 * (v240 ^ 0x6Cu)) ^ *(a53 + 4 * (BYTE1(v235) ^ 0xD7u)) ^ *(a49 + 4 * (HIBYTE(v241) ^ 0xF6));
  v252 = v251 ^ *(a47 + 4 * (((v236 ^ v232) >> 16) ^ 0x8Bu));
  v253 = ((v252 & 0xB9239E9B ^ 0x4FFC6566) & (v252 & 0x46DC6164 ^ 0xFD6BBEFF)) + 2013407140 - 2 * ((v252 & 0xB9239E9B ^ 0x4FFC6566) & (v252 & 0x46DC6164 ^ 0xFD6BBEFF) & 0x780227B6 ^ (v252 & 0xB9239E9B ^ 0x4FFC6566) & 0x12);
  v254 = *(a19 + 4 * (v235 ^ 0xCDu));
  v255 = v250 ^ v254 ^ *(a53 + 4 * (((v236 ^ v232) >> 8) ^ 0xBAu));
  v256 = *(a19 + 4 * ((v236 ^ v232) ^ 0xD2u)) ^ v249;
  v257 = v248 - ((2 * v248) & 0xF179DF4E) - 121835609;
  v258 = *(a49 + 4 * (HIBYTE(v257) ^ 0xD)) ^ *(a53 + 4 * (BYTE1(v255) ^ 0x80u)) ^ *(a47 + 4 * (BYTE2(v256) ^ 0xD2u)) ^ *(a19 + 4 * (v253 ^ 0xA4u));
  HIDWORD(v94) = v258 ^ 0x30B45A;
  LODWORD(v94) = v258 ^ 0x80FFFFFF;
  v259 = (v94 >> 22) - ((2 * (v94 >> 22)) & 0x5F8FEB8E) - 1345849913;
  HIDWORD(v94) = v259 ^ 0x2F4;
  LODWORD(v94) = v259 ^ 0x112AD800;
  v260 = (v94 >> 10) - ((2 * (v94 >> 10)) & 0xE00CBCC2);
  v262 = *(a53 + 4 * (BYTE1(v256) ^ 9u)) ^ *(a49 + 4 * (HIBYTE(v253) ^ 0x78)) ^ *(a47 + 4 * (BYTE2(v257) ^ 0x89u));
  v263 = (v236 & 0x40 ^ 0x3FA54EFF) + 2 * (v236 & 0x40);
  v264 = *(a19 + 4 * ((v250 ^ v254 ^ *(a53 + 4 * (((v236 ^ v232) >> 8) ^ 0xBAu))) ^ 0xC6u));
  v265 = v264 & 0x425AB118;
  v266 = v262 ^ v264;
  v265 ^= 0x42021108u;
  v267 = (v262 & 0x425AB118 ^ 0x4252A110) + v265;
  v268 = (2 * ((v265 & (v262 ^ 0x4252A110)) - ((2 * (v265 & (v262 ^ 0x4252A110))) & 0x244220)) - 651768022) ^ 0xD926CF2A;
  v269 = (v267 ^ 0xBECFFFDE) + ((2 * v267) & 0xD9FE630) + 1093664803 + ((v268 - ((2 * v268) & 0x8A59FB6C) + 1160576439) ^ 0xBAD30248);
  v270 = v269 + 532198942 + (~(2 * v269) | 0xC08E93C5);
  v271 = v263 - 33621569;
  if (((v263 - 1067798271) & (v232 ^ 0xC3F7EB40)) + 1890901062 - ((2 * ((v263 - 1067798271) & (v232 ^ 0xC3F7EB40))) & 0xE169B800) != 1890901062)
  {
    v271 = 2101974973 - v263;
  }

  v272 = ((v232 ^ 0xC3F7EB70) - 1034176702 + v271 - ((2 * ((v232 ^ 0xC3F7EB70) - 1034176702 + v271)) & 0x11877474) + 147044922) ^ v236 & 0xFFFFFFBF;
  v273 = ((((v272 ^ 0xF1BFEB98) >> (v237 & 8 ^ 8)) + 26182870 - ((2 * ((v272 ^ 0xF1BFEB98) >> (v237 & 8 ^ 8))) & 0x31F09AC)) ^ 0x18F84D6) >> (v237 & 8);
  v274 = *(a19 + 4 * (v272 ^ 0x98u)) ^ v249;
  v275 = (2 * (v250 & 0x400)) ^ 0x800 | v250 & 0x400;
  v276 = v244 ^ v243 ^ *(a49 + 4 * (HIBYTE(v272) ^ 0xF1));
  v277 = *(a53 + 4 * ((v273 - ((2 * v273) & 0x80) - 64) ^ 0xC0u)) ^ 0xC195F7CF;
  v278 = ((v275 - 1024) & v277) + 294972454 - ((2 * ((v275 - 1024) & v277)) & 0x2329D810) == 294972454;
  v279 = v275 + 748492880;
  v280 = 748494928 - v275;
  if (!v278)
  {
    v279 = v280;
  }

  v281 = v251 ^ *(a47 + 4 * (BYTE2(v272) ^ 0xBFu));
  v282 = v250 & 0xFFFFFBFF ^ v254 ^ (v277 - 748493904 + v279 - ((2 * (v277 - 748493904 + v279)) & 0xE1CE1088) - 253294524);
  v283 = *(a47 + 4 * (BYTE2(v274) ^ 0xD2u)) ^ *(a19 + 4 * (v281 ^ 0x66u)) ^ *(a49 + 4 * (HIBYTE(v276) ^ 0x75)) ^ *(a53 + 4 * (BYTE1(v282) ^ 0x7Bu));
  v284 = *(a47 + 4 * (BYTE2(v281) ^ 0x68u)) ^ *(a53 + 4 * (BYTE1(v276) ^ 0x6Au));
  v285 = *(a47 + 4 * (BYTE2(v276) ^ 0xC5u)) ^ *(a49 + 4 * (HIBYTE(v281) ^ 0x4D));
  v286 = *(a47 + 4 * (BYTE2(v282) ^ 0x27u)) ^ *(a53 + 4 * (BYTE1(v281) ^ 0x24u)) ^ *(a49 + 4 * (HIBYTE(v274) ^ 0x29)) ^ *(a19 + 4 * (v276 ^ 0x67u));
  v287 = *(a49 + 4 * (HIBYTE(v282) ^ 0xA)) ^ v284 ^ *(a19 + 4 * ((*(a19 + 4 * (v272 ^ 0x98u)) ^ v249) ^ 0xF0u));
  v288 = v285 ^ *(a53 + 4 * (BYTE1(v274) ^ 9u));
  v289 = ((2 * v283) & 0x536FFEBA ^ 0x13619000) + (v283 ^ 0x240737FF);
  v290 = ((2 * v286) & 0xE7FFDBFC ^ 0x4124CA10) + (v286 ^ 0xD76D98F6);
  v291 = v288 ^ *(a19 + 4 * (v282 ^ 0x4Du));
  v292 = ((2 * (((v260 - 268018079) ^ 0x31A999D2) - 54983864)) & 0x83FEBBE8) + ((((v260 - 268018079) ^ 0x31A999D2) - 54983864) ^ 0x41FF5DF4) - v289;
  v261 = *(a47 + 4 * (BYTE2(v255) ^ 0x55u)) ^ *(a49 + 4 * (HIBYTE(v256) ^ 0x29)) ^ *(a53 + 4 * (BYTE1(v253) ^ 0x27u)) ^ *(a19 + 4 * (v257 ^ 0x9Au));
  v293 = (v261 & 0xFFFFFFEF ^ 0x180470F2 ^ ((v261 & 0x10 ^ 0x3C960612) - 24)) - 651653269;
  v294 = ((2 * v293) & 0xF5D6FFFE) + (v293 ^ 0x7AEB7FFF) - v290;
  v295 = v294 - ((2 * v294 - 232203266) & 0xDF50817C);
  v296 = ((2 * v291) & 0x7DF7BBE6 ^ 0x2557A340) + (v291 ^ 0xEC540C5B);
  v297 = ((2 * ((v266 & 0xBDA54EE7 ^ 0x4D47D7AD ^ v270) - 123154961)) & 0xFBF8EF4A) + (((v266 & 0xBDA54EE7 ^ 0x4D47D7AD ^ v270) - 123154961) ^ 0xFDFC77A5) - v296;
  v298 = ((2049466841 * ((v295 + 1757195965) ^ 0x9A7D37E4)) ^ 0xE99F6FF7) + ((-196033614 * ((v295 + 1757195965) ^ 0x9A7D37E4)) & 0xD33EDFEE);
  v299 = v297 - ((2 * v297 - 2114007908) & 0xD6FC1056) - 1401065863;
  v300 = (*(a19 + 4 * (v256 ^ 0xF0u)) ^ *(a47 + 4 * (BYTE2(v253) ^ 2u)) ^ *(a49 + 4 * (HIBYTE(v255) ^ 0x3B)) ^ 0x9F374194 ^ *(a53 + 4 * (BYTE1(v257) ^ 0x31u))) - 601152054;
  v301 = (v292 - ((2 * v292 + 1332822738) & 0x40273FC8) - 2016657075) ^ 0xE753055;
  v302 = ((2 * v287) & 0x7BEF5FEE ^ 0x3A6E0328) + (v287 ^ 0xA2C0EE63);
  v303 = ((2 * v300) & 0xDDB55EBC) + (v300 ^ 0x6EDAAF5E) - v302;
  v304 = ((1274095089 * v301) ^ 0xEBEDFF5F) + ((-1746777118 * v301) & 0xD7DBFEBE) + v298;
  v305 = (v303 - ((2 * v303 - 1640365774) & 0x81E3E420) + 269415081) ^ 0x92178B1A;
  v306 = 1932989815 * v305 - ((1718495982 * v305) & 0x46CBDF52) - 1553600599;
  v307 = ((2 * (v306 ^ (v298 + 375427081))) & 0xE153BA6E ^ 0x40439A42) + (v306 ^ (v298 + 375427081) ^ 0x53CC329E);
  v308 = v299 & 0xFFFFDFFF ^ 0xD57EF4A0 ^ (1895835661 - (~(2 * (v299 & 0x2000)) & 0x64005104 | v299 & 0x2000));
  v309 = 1308476001 * v308 - 940125343 - ((-1678015294 * v308) & 0x8FEDA6C2);
  v310 = v309 ^ v306;
  v311 = (v309 ^ (v304 + 712151210) ^ 0xC7F6D361) + 304385129 - 2 * ((v309 ^ (v304 + 712151210) ^ 0xC7F6D361) & 0x12248C6F ^ (v309 ^ (v304 + 712151210)) & 6);
  v312 = (v310 ^ 0x9B6CC337) + v304 - ((2 * ((v310 ^ 0x9B6CC337) + v304) + 350560598) & 0x2390432A) + 1010479680;
  v313 = v307 + 257303241;
  v314 = ((2 * ((v311 ^ 0x12248C69) + v307 + 257303241)) & 0xDEA7EFAE) + (((v311 ^ 0x12248C69) + v307 + 257303241) ^ 0xEF53F7D7);
  v315 = v312 ^ (-159475862 - v307 - ((22264430 - 2 * v307) & 0xBA97466));
  v316 = ((2 * v315) & 0xAEF3FF56 ^ 0x28313744) + (v315 ^ 0x4365640D);
  v317 = v314 - v316;
  v318 = (v310 ^ 0x755B1D5D ^ v312) - (v314 - v316) - 1747322836;
  v319 = ((2 * v318) & 0xF9D34F7E) + (v318 ^ 0x7CE9A7BF);
  v320 = v289 - v316 - 2 * ((v289 - v316 + 1092174368) & 0x583547FC ^ (v289 - v316) & 4) + 424577560;
  v321 = v302 - v319 - ((2 * (v302 - v319) + 277415412) & 0x2DEEDC04) + 1060892924;
  v322 = v290 - v317 - ((2 * (v290 - v317) + 687360456) & 0x36595CE0) - 1347890348;
  v323 = ((2 * v319 - ((4 * v319 + 207184132) & 0x58605A08) - 1302536825) ^ 0xAC302D05) + v313;
  v324 = v296 - v319 + (v323 ^ 0xF5AD5B7F) + ((2 * v323) & 0xEB5AB6FE);
  v325 = v324 - ((2 * v324 - 1937021276) & 0xF1C31918) - 1087946786;
  v326 = *(a24 + 4 * (HIBYTE(v325) ^ 0x78));
  v327 = (v326 & 0x400000 | ((((v326 & 0x400000u) >> 22) & 1) << 23) | 0xBF3DE37F) ^ 0x800000;
  v328 = *(a52 + 4 * (((v324 - ((2 * v324 + 26276) & 0x1918) + 16350) >> 8) ^ 0x8Cu)) ^ *(a24 + 4 * (HIBYTE(v322) ^ 0x1B)) ^ *(a22 + 4 * (BYTE2(v321) ^ 0xF7u)) ^ *(a55 + 4 * (v320 ^ 0xF8u));
  v329 = (v328 ^ 0xF9C9D622) + 2008156231 - 2 * ((v328 ^ 0xF9C9D622) & 0x77B20857 ^ v328 & 0x10);
  v330 = *(a22 + 4 * (BYTE2(v320) ^ 0x35u));
  v278 = ((v330 ^ 0x11800000) & (v327 + 1082268801)) + 1227073751 - ((2 * ((v330 ^ 0x11800000) & (v327 + 1082268801))) & 0x92041100) == 1227073751;
  v331 = v327 + 1811832283;
  v332 = -352705319 - v327;
  if (v278)
  {
    v332 = v331;
  }

  v333 = (v330 ^ 0x11BD6904) - 729563482 + v332 - ((2 * ((v330 ^ 0x11BD6904) - 729563482 + v332)) & 0x24C316B8);
  v334 = a17 ^ *(a24 + 4 * (HIBYTE(v320) ^ 0xD8)) ^ *(a22 + 4 * (BYTE2(v322) ^ 0x2Cu)) ^ *(a52 + 4 * (BYTE1(v321) ^ 0x6Eu)) ^ *(a55 + 4 * (v325 ^ 0x8Cu));
  v335 = *(a22 + 4 * (BYTE2(v325) ^ 0xE1u));
  v336 = a17 ^ *(a52 + 4 * (BYTE1(v322) ^ 0xAEu)) ^ *(a55 + 4 * (v321 ^ 2u)) ^ v326 & 0xFFBFFFFF;
  v337 = HIDWORD(a36) ^ HIDWORD(a37) ^ a26 ^ *(a24 + 4 * (HIBYTE(v321) ^ 0x96)) ^ *(a55 + 4 * (v322 ^ 0x70u)) ^ *(a52 + 4 * (BYTE1(v320) ^ 0x47u)) ^ v335;
  HIDWORD(v338) = v337 ^ 3;
  LODWORD(v338) = v337 ^ 0x8D9B6BB0;
  v339 = (v338 >> 3) - ((2 * (v338 >> 3)) & 0xD471D54E) - 365368665;
  HIDWORD(v338) = v339 ^ 0x17C47B27;
  LODWORD(v338) = v339 ^ 0x60000000;
  v340 = (v338 >> 29) - ((2 * (v338 >> 29)) & 0x459A1E96) - 1563619509;
  LOBYTE(v339) = ((v338 >> 29) - ((2 * (v338 >> 29)) & 0x96) + 75) & 8;
  v341 = ((((a17 ^ v329 ^ 0xB9082A1E) >> (v339 ^ 8)) - 1158375056 - ((2 * ((a17 ^ v329 ^ 0xB9082A1E) >> (v339 ^ 8))) & 0x75E932E0)) ^ 0xBAF49970) >> v339;
  v342 = byte_10027CA80[(v341 - ((2 * v341) & 8) + 4) ^ 0x70];
  *(a41 + v355) = v342 ^ 0xF2 ^ (v342 >> 2) & 0x1B;
  *(a41 + v356) = byte_10027CA80[BYTE1(v334) ^ 0xC8] ^ 0x31 ^ (byte_10027CA80[BYTE1(v334) ^ 0xC8] >> 2) & 0x1B;
  v343 = byte_10025FC90[BYTE2(v334) ^ 0x19];
  *(a41 + v352) = v343 ^ (v343 >> 4) ^ (v343 >> 1) ^ 0x3C;
  v344 = byte_10025FC90[BYTE2(v340) ^ 0x15];
  v345 = (v344 >> 3) ^ 0x16;
  v346 = 2 * ((v345 & (v344 ^ 0xB5)) - ((2 * (v345 & (v344 ^ 0xB5))) & 0x34));
  LOBYTE(v345) = ((v345 + (v344 ^ 0xB5)) ^ 0xAA) + ((2 * (v345 + (v344 ^ 0xB5))) & 0x54) + ((((v346 + 52) ^ 0x34) - ((2 * (v346 + 52)) & 0x94) + 74) ^ 0xB5) + 87;
  *(a41 + a29) = v344 ^ (((v345 - ((2 * v345) & 0x64) - 78) & 0xFE) >> 1) ^ 0xE1;
  v347 = v336 ^ (v333 + 308382556);
  LOBYTE(v345) = byte_100283510[HIBYTE(v347) ^ 0xBELL];
  LOBYTE(v345) = v345 - 2 * ((v345 + 6) & 7 ^ v345 & 1) + 28;
  *(a41 + HIDWORD(a26)) = v345 ^ 0xD1 ^ (((8 * v345) ^ 0x30) - ((2 * ((8 * v345) ^ 0x30)) & 0x20) - 112);
  *(a41 + a32) = byte_1002628D0[v334 ^ 0x98] ^ 0x1A;
  LOBYTE(v345) = byte_100283510[HIBYTE(v334) ^ 0xCLL];
  LOBYTE(v345) = v345 - ((2 * v345 + 44) & 0x50) - 66;
  *(a41 + v357) = v345 ^ 0x85 ^ (((8 * v345) ^ 0x40) - ((2 * ((8 * v345) ^ 0x40)) & 0xE0) - 16);
  *(a41 + a35) = byte_1002628D0[(v336 ^ (v333 + 92)) ^ 0xE1] ^ 0x9D;
  LOBYTE(v345) = byte_100283510[HIBYTE(v340) ^ 0x66];
  LOBYTE(v333) = v345 - ((2 * v345 + 44) & 0x34) - 80;
  *(a41 + (a43 ^ 0xCB60F689)) = v333 ^ 0x3D ^ (((8 * v333) ^ 0xD0) - 16 * (v345 & 1) - 118);
  LOBYTE(v345) = byte_10027CA80[BYTE1(v340) ^ 0x7FLL];
  LOBYTE(v333) = (((v345 ^ 0xD7) + 13) ^ 0x7B) + ((2 * ((v345 ^ 0xD7) + 13)) & 0xF7) + ((((2 * v345) ^ 0xAE) - ((2 * ((2 * v345) ^ 0xAE)) & 0x10) + 25) & 0x1A ^ 0xE7) - 122;
  *(a41 + HIDWORD(v355)) = (v345 >> 2) & 0x1B ^ (v333 - ((2 * v333) & 0xC3) - 31) ^ 0xF0;
  LOBYTE(v345) = byte_1002628D0[((v338 >> 29) - ((2 * (v338 >> 29)) & 0x96) + 75) ^ 0x61];
  LOBYTE(v333) = (v345 & 0x13 ^ 0xEE) - ((2 * (v345 & 0x13 ^ 0xEE)) & 0xB4) - 38;
  *(a41 + a37) = v333 & 0x59 ^ 0x58 ^ (((v345 & 0xEC ^ 0xD3) - ((2 * (v345 & 0xEC ^ 0xD3)) & 0x6E) - 73) ^ 0xEE) & (v333 ^ 0xDA);
  *(a41 + HIDWORD(v353)) = byte_10027CA80[BYTE1(v347) ^ 0xCDLL] ^ 0x39 ^ (byte_10027CA80[BYTE1(v347) ^ 0xCDLL] >> 2) & 0x1B;
  *(a41 + HIDWORD(v352)) = byte_1002628D0[(a17 ^ v329) ^ 0x1CLL] ^ 0xCF;
  LOBYTE(v345) = byte_100283510[((a17 ^ v329) >> 24) ^ 0xD3];
  LOBYTE(v345) = (v345 ^ 0x80) - ((2 * v345 + 44) & 0xD4);
  *(a41 + HIDWORD(v356)) = v345 ^ 0xD7 ^ (((8 * v345) ^ 0x50) - ((16 * v345) & 0x55) - 82);
  v348 = byte_10025FC90[((a17 ^ v329) >> 16) ^ 0x42];
  LOBYTE(v333) = (((v348 ^ 0xB5) + 98) ^ 0x37) + ((2 * ((v348 ^ 0xB5) + 98)) & 0x6E) + ((((2 * v348) ^ 0x6A) - ((2 * ((2 * v348) ^ 0x6A)) & 0x48) + 36) & 0xC4 ^ 0xFB) - 54;
  *(a41 + v353) = (v348 >> 4) ^ (v348 >> 1) ^ 0x86 ^ (v333 - ((2 * v333) & 0xAE) - 41);
  v349 = byte_10025FC90[BYTE2(v347) ^ 0x45];
  LOBYTE(v349) = (((v349 >> 4) ^ (v349 >> 1)) & 3 ^ v349 & 0x83 | ((v349 >> 4) ^ (v349 >> 1) ^ v349) & 0x7C) ^ 0xE;
  *(a41 + HIDWORD(v354)) = (v349 - ((2 * v349) & 0x5A) - 83) ^ 0xD1;
  HIDWORD(a23) = a51 - 179;
  return (*(&off_1002D7880 + ((704 * (((v357 - 882837887 - ((2 * v357 + 32) & 0x96C1ED02) + 16) ^ 0xCB60F681) < HIDWORD(a29))) ^ a51)))(byte_100283510, 52, byte_10025FC90, byte_1002628D0, 80, &off_1002D7880, a53, a52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v351, a26, v352, v353, a29, a30, a31, a32, v354, v355, a35, a36, a37, a38, a39, a40, a41, v356, a43, a44, a45);
}

char *sub_100126C64(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

_BYTE *sub_100126EC0(_BYTE *result, unsigned int a2, unint64_t a3)
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

void sub_10012741C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 56));
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100127468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = sub_10017DA30();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002255D4(a1);
  }

  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [WeakRetained request];
  (*(v4 + 16))(v4, v5);

  v6 = sub_10017DA30();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100225670(a1);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_100127744(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100129774(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        (*(v15 + 16))(v15, 1);
      }

      v7 = sub_100002880();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v9 = [v3 fm_logID];
      v16 = 138412546;
      v17 = v9;
      v18 = 2048;
      v19 = [v3 httpResponseStatus];
      v10 = "%@: successful with status %ld";
      v11 = v7;
      v12 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        v16 = 138412290;
        v17 = v9;
        v10 = "%@: Cancelled";
        v11 = v7;
        v12 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
LABEL_14:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v13 = [v3 httpResponseStatus];
      v14 = [v3 httpResponseError];
      v16 = 138412802;
      v17 = v9;
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v16, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_100129FB0(id a1)
{
  qword_1003144A8 = objc_alloc_init(FMDLocationManagerFactory);

  _objc_release_x1();
}

void sub_10012A05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDLocationManagerFactory proxy dealloc callback", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _discardLocationManager:v3];
}

void sub_10012A1C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) object];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      [v4 setDelegate:0];
      [v4 stopUpdatingLocation];
      v5 = [WeakRetained locationManagers];
      [v5 removeObject:v4];
    }
  }

  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained locationManagers];
    v8 = 134217984;
    v9 = [v7 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDLocationManagerFactory active location managers %ld", &v8, 0xCu);
  }
}

void sub_10012A3B8(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100225810(v1);
  }

  v2 = [[FMDMessageMgr_iOS alloc] initSingleton];
  v3 = qword_1003144B8;
  qword_1003144B8 = v2;
}

void sub_10012AD8C(uint64_t a1)
{
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, *(a1 + 32), sub_10012AE14, 0);
  if (RunLoopSource)
  {
    v2 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v2, kCFRunLoopCommonModes);

    CFRelease(v2);
  }
}

void sub_10012AE14(uint64_t a1, uint64_t a2)
{
  v3 = +[FMDMessageMgr_iOS sharedInstance];
  v4 = [v3 activeMessage];

  if (a2 == 1)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 fm_logID];
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Alternate button activated for message %@", &v18, 0xCu);
    }

    v11 = [v4 alternateButtonAction];

    if (v11)
    {
      v8 = [v4 alternateButtonAction];
      goto LABEL_11;
    }
  }

  else if (!a2)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 fm_logID];
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Default button activated for message %@", &v18, 0xCu);
    }

    v7 = [v4 defaultButtonAction];

    if (v7)
    {
      v8 = [v4 defaultButtonAction];
LABEL_11:
      v12 = v8;
      (*(v8 + 16))();
    }
  }

  v13 = +[FMDMessageMgr_iOS sharedInstance];
  [v13 setActiveMessage:0];

  v14 = +[FMDMessageMgr_iOS sharedInstance];
  [v14 setCfNotification:0];

  v15 = +[FMXPCTransactionManager sharedInstance];
  v16 = +[FMDMessageMgr_iOS sharedInstance];
  v17 = [v16 _xpcTransactionNameFor:v4];
  [v15 endTransaction:v17];
}

void sub_10012B120(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002259E4(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Playing XPC sound", v11, 2u);
  }
}

void sub_10012B204(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100225A50(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopped XPC sound", v11, 2u);
  }
}

void sub_10012B40C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10012D1B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10012D13CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012DB58(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [*(a1 + 32) cancelled];
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (v14)
  {
    [v15 _disablePowerAssertionForRequest:v16];
    [*(a1 + 40) _endXPCTransactionForRequest:*(a1 + 32)];
  }

  else
  {
    [v15 _handleResponseForRequest:v16 withStatus:a2 headers:v17 body:v11 location:v12 error:v13];
  }
}

void sub_10012EB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10012EB70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendRequest:v2];
}

id sub_10012F270(id a1)
{

  return a1;
}

void sub_10012F560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_10012F5AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request completed (extension='%@', request='%@')", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateRequestWithIdentifier:v3];
}

void sub_10012F68C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request interrupted (extension='%@', request='%@')", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateRequestWithIdentifier:v3];
}

void sub_10012F76C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request cancelled (extension='%@', request='%@')", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateRequestWithIdentifier:v3];
}

void sub_10012F978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012F990(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) requestIdentifier];
  v4 = v3 == 0;

  v5 = [*v2 extension];
  v6 = v5;
  if (v4)
  {
    v31 = [v5 identifier];

    v13 = [*(a1 + 32) extension];
    v42 = 0;
    v14 = [v13 beginExtensionRequestWithOptions:0 inputItems:0 error:&v42];
    v29 = v42;

    v15 = sub_10000BE38();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = v31;
        v45 = 2112;
        v46 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request begin (extension='%@', request='%@')", buf, 0x16u);
      }

      v17 = [*(a1 + 32) extension];
      v16 = [v17 _extensionContextForUUID:v14];

      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (*(a1 + 40))
          {
            [v16 setAccessoryDelegate:?];
          }
        }
      }

      v18 = [v16 _auxiliaryConnection];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = [NSString stringWithFormat:@"%p", *(*(*(a1 + 48) + 8) + 40), v29];
      objc_initWeak(buf, *(a1 + 32));
      v22 = *(*(*(a1 + 48) + 8) + 40);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10012FE50;
      v37[3] = &unk_1002CD428;
      v23 = v31;
      v38 = v23;
      v24 = v14;
      v39 = v24;
      v25 = v21;
      v40 = v25;
      objc_copyWeak(&v41, buf);
      [v22 setInterruptionHandler:v37];
      v26 = *(*(*(a1 + 48) + 8) + 40);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10012FEB4;
      v32[3] = &unk_1002CD428;
      v33 = v23;
      v27 = v24;
      v34 = v27;
      v28 = v25;
      v35 = v28;
      objc_copyWeak(&v36, buf);
      [v26 setInvalidationHandler:v32];
      [*(a1 + 32) setRequestIdentifier:v27];
      objc_destroyWeak(&v36);

      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100225E2C(v31, v29, v16);
    }
  }

  else
  {
    v7 = [*(a1 + 32) requestIdentifier];
    v30 = [v6 _extensionContextForUUID:v7];

    v8 = v30;
    if (v30)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v8 = v30;
      if (isKindOfClass)
      {
        if (*(a1 + 40))
        {
          [v30 setAccessoryDelegate:?];
          v8 = v30;
        }
      }
    }

    v10 = [v8 _auxiliaryConnection];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_10012FE18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_10012FE50(uint64_t a1)
{
  v2 = sub_10000BE38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100225EB4(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained invalidateRequestWithIdentifier:*(a1 + 40)];
}

void sub_10012FEB4(uint64_t a1)
{
  v2 = sub_10000BE38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100225F30(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained invalidateRequestWithIdentifier:*(a1 + 40)];
}

void sub_10012FFCC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) requestIdentifier];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = sub_10000BE38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100225FAC(v2, v4, v7);
    }

    v8 = [*v2 extension];
    v9 = [*v2 requestIdentifier];
    [v8 cancelExtensionRequestWithIdentifier:v9];

    [*v2 setRequestIdentifier:0];
  }
}

void sub_1001305E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 88));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_10013063C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Locator received location %@ for accessory %@", &v12, 0x16u);
  }

  v10 = [[FMDLocation alloc] initWithLocation:v6 eventType:*(a1 + 56) positionType:255];
  [WeakRetained setLocation:v10];
  [WeakRetained updateLocationMetaData];
  if (a4 == 5 || a4 == 3)
  {
    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 stopLocator];
  }
}

void sub_10013077C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained locator];
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Locator stopped %@ for accessory %@", &v8, 0x16u);
  }

  v6 = [WeakRetained locator];
  v7 = [v6 locatorPublisher];
  [v7 flushLocations];

  [WeakRetained _completeLocate];
}

void sub_100130B74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100130BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishAction];
}

void sub_100130BF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained accessoryUpdateFuture];
  v2 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.accessoryCurrentLocationAction" code:1 userInfo:0];
  [v1 finishWithError:v2];
}

NSDictionary *__cdecl sub_100131424(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_10013147C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(*(a1 + 32) + 8) account];
  v4 = [v3 authId];
  [v2 fm_safeSetObject:v4 forKey:@"X-Apple-PrsId"];

  return v2;
}

void sub_100131508(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else if (![(FMDRequest *)v2 cancelled])
    {
      v12 = sub_10017DDA4();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v11 = [(FMDRequest *)v2 fm_logID];
      *buf = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = [(FMDRequest *)v2 httpResponseStatus];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", buf, 0x16u);
      goto LABEL_14;
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = sub_10017DDA4();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = [(FMDRequest *)v2 fm_logID];
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_11:
      }
    }

    else if (v6)
    {
      v7 = [(FMDRequest *)v2 fm_logID];
      v8 = [(FMDRequest *)v2 httpResponseStatus];
      v9 = [(FMDRequest *)v2 httpResponseError];
      *buf = 138412802;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_11;
    }

    v10 = [(FMDRequest *)v2 httpResponseError];

    if (!v10)
    {
      v12 = [NSString stringWithFormat:@"Server returned error code %ld", [(FMDRequest *)v2 httpResponseStatus]];
      goto LABEL_16;
    }

    v11 = [(FMDRequest *)v2 httpResponseError];
    v12 = [NSString stringWithFormat:@"Error contacting the server: %@", v11];
LABEL_14:

LABEL_16:
  }
}

void sub_100131870(id a1)
{
  qword_1003144C8 = objc_alloc_init(ActionManager);

  _objc_release_x1();
}

void sub_100131A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100131A7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

  v7 = [v6 unsignedIntegerValue];
  [WeakRetained refreshTransactionState:v7];
}

void sub_100131C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100131C68(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    *buf = 138412546;
    v50 = *&v4;
    v51 = 2048;
    v52 = v5;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received enqueue for action %@ (0x%lX)", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v9 = *(a1 + 32);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v10 = [*(a1 + 40) nextRegisterDate];
  v11 = v10 != 0;

  if ((v11 & isKindOfClass) == 0)
  {
    goto LABEL_10;
  }

  v12 = *(a1 + 32);
  if (([(MetaAction *)v12 force]& 1) != 0)
  {
    goto LABEL_9;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = [*(a1 + 40) nextRegisterDate];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = v14 - v17;
  if (v18 >= 0.0)
  {
LABEL_9:

LABEL_10:
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) nextActionIdNumber]);
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    [*(a1 + 40) setNextActionIdNumber:{objc_msgSend(*(a1 + 40), "nextActionIdNumber") + 1}];
    v12 = [[MetaAction alloc] initWithAction:*(a1 + 32) id:*(*(*(a1 + 48) + 8) + 40)];
    v22 = sub_100002880();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v25 = *(a1 + 32);
      v26 = v24;
      v27 = objc_opt_class();
      *buf = 138413058;
      v50 = *&v24;
      v51 = 2048;
      v52 = v25;
      v53 = 2112;
      v54 = v27;
      v55 = 2048;
      v56 = v12;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Wrapping action %@ (0x%lX) in %@ (0x%lX)", buf, 0x2Au);
    }

    v29 = sub_100002880();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = *(a1 + 40);
      *buf = 138412802;
      v50 = *&v30;
      v51 = 2048;
      v52 = v12;
      v53 = 2112;
      v54 = v31;
      v32 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Enqueuing action %@ (0x%lX). Current actions : %@", buf, 0x20u);
    }

    [*(a1 + 40) _setDependenciesForNewAction:v12];
    objc_initWeak(&location, v12);
    objc_initWeak(&from, *(a1 + 40));
    v41 = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_1001321C4;
    v44 = &unk_1002CD388;
    objc_copyWeak(&v45, &location);
    objc_copyWeak(&v46, &from);
    [(MetaAction *)v12 setCompletionBlock:&v41];
    v33 = [*(a1 + 40) weakActions];
    [v33 addPointer:v12];

    v34 = +[NSDate date];
    [(MetaAction *)v12 setQueueAddedDate:v34];

    v35 = [*(a1 + 40) actionExecutionQueue];
    [v35 addOperation:v12];

    v36 = sub_100002880();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = *(a1 + 40);
      *buf = 138412802;
      v50 = *&v37;
      v51 = 2048;
      v52 = v12;
      v53 = 2112;
      v54 = v38;
      v39 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Enqueued action %@ (0x%lX). Current actions : %@", buf, 0x20u);
    }

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_17;
  }

  v40 = sub_100002880();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v50 = v18;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Throttling registers for %f", buf, 0xCu);
  }

LABEL_17:
}

void sub_100132184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1001321C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 metadataModsQueue];
  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100132288;
    v5[3] = &unk_1002CD478;
    v6 = WeakRetained;
    v7 = v3;
    dispatch_sync(v4, v5);
  }
}

void sub_100132288(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed action %@ (0x%lX). Current actions : %@", &v8, 0x20u);
  }
}

void sub_100132410(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000A984;
  v19 = sub_100002A8C;
  v20 = 0;
  v2 = [*(a1 + 32) weakActions];
  v3 = [v2 allObjects];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001325F8;
  v12 = &unk_1002CD630;
  v13 = *(a1 + 40);
  v14 = &v15;
  [v3 enumerateObjectsUsingBlock:&v9];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v16[5];
    v6 = objc_opt_class();
    v7 = v16[5];
    *buf = 138412546;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling action %@ (0x%lX)", buf, 0x16u);
  }

  [v16[5] cancel];
  _Block_object_dispose(&v15, 8);
}

void sub_1001325D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001325F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 actionId];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100132714(uint64_t a1)
{
  v1 = [*(a1 + 32) actionExecutionQueue];
  [v1 cancelAllOperations];
}

id sub_1001327EC(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ActionManager operation count %lu", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v5 = +[FMXPCTransactionManager sharedInstance];
    [v5 endTransaction:@"ActionManagerTransaction"];
    goto LABEL_7;
  }

  if (([*(a1 + 32) operationTransactionActive] & 1) == 0)
  {
    v5 = +[FMXPCTransactionManager sharedInstance];
    [v5 beginTransaction:@"ActionManagerTransaction"];
LABEL_7:
  }

  return [*(a1 + 32) setOperationTransactionActive:v4 != 0];
}

void sub_1001341E0(id a1)
{
  qword_1003144D8 = objc_alloc_init(FMDAbsintheV3SigningInterface);

  _objc_release_x1();
}

NSDictionary *__cdecl sub_100134394(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = +[FMDAbsintheV3SigningInterface pscSUIURL];
  v3 = [v2 URLByDeletingLastPathComponent];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading PSC.sui Folder %@, file %@", &v16, 0x16u);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v2 path];
  v7 = [v5 attributesOfItemAtPath:v6 error:0];

  if (v7)
  {
    [v1 fm_safeSetObject:v7 forKey:@"PSCFileAttributes"];
    v8 = @"PSCFileURL";
  }

  else
  {
    v8 = @"PSCFileNotFound";
  }

  v9 = [v2 absoluteString];
  [v1 fm_safeSetObject:v9 forKey:v8];

  v10 = +[NSFileManager defaultManager];
  v11 = [v3 path];
  v12 = [v10 attributesOfItemAtPath:v11 error:0];

  if (v12)
  {
    [v1 fm_safeSetObject:v12 forKey:@"PSCFolderAttributes"];
    v13 = @"PSCFolderURL";
  }

  else
  {
    v13 = @"PSCFolderNotFound";
  }

  v14 = [v3 absoluteString];
  [v1 fm_safeSetObject:v14 forKey:v13];

  return v1;
}

void sub_1001347AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001347D8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 48;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  [*(a1 + 32) signal];
}

void sub_1001349B4(uint64_t a1)
{
  v2 = objc_alloc_init(FMDAbsintheV3SigningSession);
  [(FMDAbsintheV3SigningSession *)v2 setActivationLockRequestUUID:*(a1 + 32)];
  [(FMDAbsintheV3SigningSession *)v2 setCause:*(a1 + 40)];
  [(FMDAbsintheV3SigningSession *)v2 setMode:*(a1 + 72) != 0];
  v3 = [*(a1 + 48) serverInteractionController];
  [(FMDAbsintheV3SigningSession *)v2 establishSessionWithServerInteractionController:v3];

  v4 = *(a1 + 56);
  v8 = 0;
  v5 = [(FMDAbsintheV3SigningSession *)v2 signatureForData:v4 error:&v8];
  v6 = v8;
  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v5);
  }
}

void sub_100135640(id a1)
{
  v1 = +[NSNull objectType];
  v10[0] = v1;
  v11[0] = objc_opt_class();
  v2 = +[NSURL objectType];
  v10[1] = v2;
  v11[1] = objc_opt_class();
  v3 = +[NSDate objectType];
  v10[2] = v3;
  v11[2] = objc_opt_class();
  v4 = +[NSString objectType];
  v10[3] = v4;
  v11[3] = objc_opt_class();
  v5 = +[NSNumber objectType];
  v10[4] = v5;
  v11[4] = objc_opt_class();
  v6 = +[NSArray objectType];
  v10[5] = v6;
  v11[5] = objc_opt_class();
  v7 = +[NSDictionary objectType];
  v10[6] = v7;
  v11[6] = objc_opt_class();
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
  v9 = qword_1003144E8;
  qword_1003144E8 = v8;
}

uint64_t sub_1001361C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001361DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100136458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_10017DF3C();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002262B8(v4, v6);
    }

    v7 = [*(a1 + 32) currentTask];
    [v7 finishWithError:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished evaluating policy.", v8, 2u);
    }

    v7 = [*(a1 + 32) currentTask];
    [v7 finishWithNoResult];
  }
}

void sub_100136F44(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100226390(v1);
  }

  v2 = [[FMDLostModeManager alloc] initSingleton];
  v3 = qword_1003144F8;
  qword_1003144F8 = v2;
}

NSDictionary *__cdecl sub_1001370CC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = +[FMDPreferencesMgr lostModeInfo];
  if (v2)
  {
    [v1 addEntriesFromDictionary:v2];
  }

  return v1;
}

void sub_100137AF0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.AOSNotification.LostModeDisabled" object:0];
}

void sub_100137C70(id a1)
{
  qword_100314508 = objc_alloc_init(FMDExtExtensionsDataSource);

  _objc_release_x1();
}

void sub_100137DEC(id a1)
{
  v3 = [[NSMutableSet alloc] initWithArray:&off_1002E88A0];
  [v3 addObject:@"com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FMDMagSafeExtension"];
  v1 = [NSSet setWithSet:v3];
  v2 = qword_100314518;
  qword_100314518 = v1;
}

void sub_100137FFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000BE38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error finding extensions %@", buf, 0xCu);
    }
  }

  else
  {
    if (![v5 count])
    {
      goto LABEL_22;
    }

    v8 = sub_10000BE38();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "all extensions %@", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v24 = 0;
      v25 = v5;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = [FMDExtExtensionsDataSource _allowedExtensionsIDForDataSource:v24];
          v15 = [v13 identifier];
          v16 = [v14 containsObject:v15];

          v17 = sub_10000BE38();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            if (v18)
            {
              *buf = 138412290;
              v35 = v13;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "found extension %@", buf, 0xCu);
            }

            v17 = [*(a1 + 32) extensions];
            v19 = [[FMDExtExtension alloc] initWithExtension:v13];
            v20 = [v13 identifier];
            [v17 setObject:v19 forKey:v20];
          }

          else if (v18)
          {
            *buf = 138412290;
            v35 = v13;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "skipping extension %@", buf, 0xCu);
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
      v6 = v24;
      v5 = v25;
    }
  }

LABEL_22:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100138388;
  block[3] = &unk_1002CD8B0;
  v21 = *(a1 + 40);
  v27 = v6;
  v28 = v21;
  v22 = qword_100314528;
  v23 = v6;
  if (v22 != -1)
  {
    dispatch_once(&qword_100314528, block);
  }
}

uint64_t sub_100138388(uint64_t a1)
{
  v2 = sub_10000BE38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Extension data source calling completion block", v5, 2u);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_10013868C(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100002880();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100226584(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OpenURL completed.", v6, 2u);
  }
}

void sub_10013946C(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100226688(v1);
  }

  v2 = objc_alloc_init(FMDBLEStateOwner);
  v3 = qword_100314530;
  qword_100314530 = v2;
}

void sub_10013964C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100139668(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained btAdvertiser];
    v4 = [v3 bluetoothState];
    if (v4 > 0xA)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_1002CD980[v4];
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BluetoothStateChangedNotification - new state %s", &v6, 0xCu);
  }

  [WeakRetained _updateBLEStatus];
}

void sub_100139760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _monitorWatchBLEStatus];
  [WeakRetained _updateBLEStatus];
}

void sub_100139888(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1002266CC(v3, v4);
    }

    v5 = [*(a1 + 32) btAdvertiser];
    [v5 invalidate];
  }
}

void sub_100139A20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100226744(v6, v8);
    }
  }

  else
  {
    if ([a2 bluetoothState] == 5)
    {
      v7 = @"on";
    }

    else
    {
      v7 = @"off";
    }

    [*(a1 + 32) setBlePowerStatus:v7];
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) blePowerStatus];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BluetoothState: %@", &v11, 0xCu);
    }
  }

  v10 = [*(a1 + 32) btController];
  [v10 invalidate];
}

void sub_100139B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBLEStatus];
}

void sub_10013A7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013A7E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 macAddress];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10013B6E0(id a1)
{
  qword_100314540 = objc_alloc_init(FMDDaemon);

  _objc_release_x1();
}

NSDictionary *__cdecl sub_10013B7EC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v15[0] = kFMDPrefDomain;
  v15[1] = kFMDNotBackedUpPrefDomain;
  v15[2] = kFMDPublicNotBackedUpPrefDomain;
  v15[3] = kFMDWatchPrefDomain;
  v15[4] = kFMDWatchNotBackedUpPrefDomain;
  [NSArray arrayWithObjects:v15 count:5];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = CFPreferencesCopyMultiple(0, v7, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        [v1 fm_safeSetObject:v8 forKey:{v7, v10}];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v1;
}

void sub_10013BDF4(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) apsHandlers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) apsHandlers];
        v9 = [v8 objectForKeyedSubscript:v7];

        [v9 resumeRegistrations];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10013C00C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) apsHandlerForEnvironment:v3];
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked in APS mach handlder %@:%@", &v6, 0x16u);
  }
}

void sub_10013C248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013C264(uint64_t a1)
{
  v2 = [*(a1 + 32) apsHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [FMAPSHandler alloc];
    v7 = *(a1 + 40);
    v8 = [@"com.apple.icloud.findmydeviced.aps-" stringByAppendingString:v7];
    v9 = [v6 initWithEnvironmentName:v7 launchOnDemandPort:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (([*(a1 + 32) startupComplete] & 1) == 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) suspendRegistrations];
    }

    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [*(a1 + 32) apsHandlers];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_10013C4F4(id a1)
{
  v38[0] = @"AppleLanguagePreferencesChangedNotification";
  v38[1] = @"AppleDatePreferencesChangedNotification";
  v38[2] = @"AppleTimePreferencesChangedNotification";
  v38[3] = @"AppleNumberPreferencesChangedNotification";
  v38[4] = @"AppleKeyboardsPreferencesChangedNotification";
  v38[5] = @"com.apple.language.changed";
  v32 = [NSArray arrayWithObjects:v38 count:6];
  v36[0] = MCPasscodeChangedNotification;
  v31 = [&stru_1002CDAB0 copy];
  v37[0] = v31;
  v36[1] = MCAllowPasscodeModificationChangedNotification;
  v30 = [&stru_1002CDAD0 copy];
  v37[1] = v30;
  v36[2] = @"com.apple.locationd.authorization";
  v29 = [&stru_1002CDAF0 copy];
  v37[2] = v29;
  v36[3] = v32;
  v28 = [&stru_1002CDB10 copy];
  v37[3] = v28;
  v36[4] = @"com.apple.purplebuddy.setupdone";
  v27 = [&stru_1002CDB30 copy];
  v37[4] = v27;
  v36[5] = NRPairedDeviceRegistryDeviceDidPairDarwinNotification;
  v26 = [&stru_1002CDB50 copy];
  v37[5] = v26;
  v36[6] = NRPairedDeviceRegistryDeviceDidUnpairDarwinNotification;
  v25 = [&stru_1002CDB70 copy];
  v37[6] = v25;
  v36[7] = kLockdownNotificationActivationStateChanged;
  v24 = [&stru_1002CDB90 copy];
  v37[7] = v24;
  v36[8] = @"com.apple.bluetooth.connection";
  v23 = [&stru_1002CDBB0 copy];
  v37[8] = v23;
  v36[9] = @"com.apple.bluetooth.pairing";
  v22 = [&stru_1002CDBD0 copy];
  v37[9] = v22;
  v36[10] = SPAccessoryDidPairNotification;
  v21 = [&stru_1002CDBF0 copy];
  v37[10] = v21;
  v36[11] = @"com.apple.icloud.findmydeviced.findkit.magSafe.added";
  v20 = [&stru_1002CDC10 copy];
  v37[11] = v20;
  v36[12] = @"com.apple.icloud.findmydeviced.findkit.magSafe.removed";
  v19 = [&stru_1002CDC30 copy];
  v37[12] = v19;
  v36[13] = @"com.apple.icloud.findmydeviced.findkit.magSafe.attach";
  v1 = [&stru_1002CDC50 copy];
  v37[13] = v1;
  v36[14] = @"com.apple.icloud.findmydeviced.findkit.magSafe.detach";
  v2 = [&stru_1002CDC70 copy];
  v37[14] = v2;
  v36[15] = @"com.apple.accessories.connection.passedMFi4Auth";
  v3 = [&stru_1002CDC90 copy];
  v37[15] = v3;
  v36[16] = @"com.apple.icloud.FindMy.addMagSafeAccessory";
  v4 = [&stru_1002CDCB0 copy];
  v37[16] = v4;
  v36[17] = @"com.apple.accessories.connection.MFi4AccessoryDisconnected";
  v5 = [&stru_1002CDCD0 copy];
  v37[17] = v5;
  v36[18] = @"com.apple.newdeviceoutreach.coverageupdated";
  v6 = [&stru_1002CDCF0 copy];
  v37[18] = v6;
  v36[19] = @"com.apple.locationd/Prefs";
  v7 = [&stru_1002CDD10 copy];
  v37[19] = v7;
  v36[20] = @"com.apple.system.hostname";
  v8 = [&stru_1002CDD30 copy];
  v37[20] = v8;
  v36[21] = @"com.apple.icloud.searchparty.selfbeaconchanged";
  v9 = [&stru_1002CDD50 copy];
  v37[21] = v9;
  v36[22] = @"com.apple.icloud.searchparty.secureLocations.liteLocationPublishRequest";
  v10 = [&stru_1002CDD70 copy];
  v37[22] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:23];
  v12 = qword_100314550;
  qword_100314550 = v11;

  v13 = +[NSMutableDictionary dictionary];
  v14 = qword_100314550;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10013D378;
  v33[3] = &unk_1002CDDC0;
  v34 = v13;
  v35 = v32;
  v15 = v32;
  v16 = v13;
  [v14 enumerateKeysAndObjectsUsingBlock:v33];
  v17 = [v16 copy];
  v18 = qword_100314550;
  qword_100314550 = v17;
}

void sub_10013CA3C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMDDevicePasscodeMayHaveChangedNotification" object:0];
}

void sub_10013CA94(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMDAllowPasscodeModificationChangedNotification" object:0];
}

void sub_10013CAEC(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMDLocationServiceAuthorizationChangedNotification" object:0];
}

void sub_10013CB44(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMDLocaleChangedNotification" object:0];
}

void sub_10013CB9C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"purplebuddy.setupdone" object:0];
}

void sub_10013CBF4(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"nano.devicedidpair" object:0];
}

void sub_10013CC4C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"nano.devicedidunpair" object:0];
}

void sub_10013CCA4(id a1)
{
  v1 = MAEGetActivationStateWithError();
  v2 = 0;
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100226A00();
    }
  }

  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received ActivationStateChanged. Current activation state : %@", buf, 0xCu);
  }

  if ([v1 isEqualToString:kMAActivationStateActivated])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is activated. Deleting any post wipe lost mode info...", buf, 2u);
    }

    [FMDPreferencesMgr setFMIPWipeLostModeInfo:0];
    v6 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v6 clearAllState];
  }
}

void sub_10013CE28(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMIPDeviceDidConnectBluetoothDevice" object:0];
}

void sub_10013CE80(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMIPDeviceDidPairBluetoothDevice" object:0];
}

void sub_10013CED8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"kFMDAccessoryDidPairLocalNotification" object:0];
}

void sub_10013CF30(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.icloud.findmydeviced.findkit.magSafe.added" object:0];
}

void sub_10013CF88(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.icloud.findmydeviced.findkit.magSafe.removed" object:0];
}

void sub_10013CFE0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.icloud.findmydeviced.findkit.magSafe.attach" object:0];
}

void sub_10013D038(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.icloud.findmydeviced.findkit.magSafe.detach" object:0];
}

void sub_10013D090(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.accessories.connection.passedMFi4Auth" object:0];
}

void sub_10013D0E8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.icloud.FindMy.addMagSafeAccessory" object:0];
}

void sub_10013D140(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.accessories.connection.MFi4AccessoryDisconnected" object:0];
}

void sub_10013D198(id a1)
{
  v1 = +[FMDCoreFollowUpManager sharedInstance];
  [v1 handleNDOCoverageUpdate];
}

void sub_10013D1E0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMDLocationServicesStateChangedNotification" object:0];
}

void sub_10013D238(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received darwin notification for host name change", v3, 2u);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"FMDDeviceNameMayHaveChangedNotification" object:0];
}

void sub_10013D2CC(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"kFMDDeviceSPSelfBeaconChangeNotification" object:0];
}

void sub_10013D324(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.icloud.searchparty.secureLocations.liteLocationPublishRequest" object:0];
}

void sub_10013D378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013D460;
  v9[3] = &unk_1002CDD98;
  v10 = a3;
  v11 = v5;
  v12 = *(a1 + 40);
  v6 = v5;
  v7 = v10;
  v8 = [v9 copy];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void sub_10013D460(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  v2[2]();
  v3 = *(a1 + 40);
  if ([*(a1 + 40) isEqual:*(a1 + 48)])
  {
    v4 = @"FMDLocaleChangedNotification";

    v3 = v4;
  }

  v5 = [NSString stringWithFormat:@"DarwinEvent.%@", v3];
  v6 = [[FMDEventLoggerEventScalar alloc] initWithEventName:v5];
  v7 = +[FMDEventLogger sharedLogger];
  v8 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v7 logEvent:v6 toFacilitiesNamed:v9];
}

void sub_10013D608(id a1)
{
  v1 = qword_100314560;
  qword_100314560 = &__NSDictionary0__struct;
}

void sub_10013DFBC()
{
  v0 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
  v1 = [v0 objectForKey:@"lostModeEnabled"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    v3 = MAEGetActivationStateWithError();
    v4 = 0;
    if (v4)
    {
      v5 = sub_100002880();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100226A00();
      }
    }

    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Doing fallback cleanup of postwipe preferences (notification).  Activation state: [%@]", buf, 0xCu);
    }

    [FMDPreferencesMgr setFMIPWipeLostModeInfo:0];
  }
}

void sub_10013EA8C(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fm_logID];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Making %@ inactive because wipe was received", &v7, 0xCu);
  }

  [*(a1 + 40) makeProviderInactive];
  v4 = [[WipeAction alloc] initWithProvider:*(a1 + 40)];
  [(WipeAction *)v4 setMaxDelayInterval:*(a1 + 48)];
  v5 = +[ActionManager sharedManager];
  v6 = [v5 enqueueAction:v4];
}

void sub_10013EBBC(id a1)
{
  qword_100314570 = objc_alloc_init(FMDStartupRegisterManager);

  _objc_release_x1();
}

void sub_10013EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013EE7C(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

id sub_10013F2CC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setInfo:v2];

  v3 = *(a1 + 32);

  return [v3 _saveInfo];
}

id sub_10013F3FC(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = *(a1 + 32);

  return [v3 _saveInfo];
}

id sub_10013F500(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _saveInfo];
}

void sub_10013F5F4(id a1)
{
  qword_100314580 = objc_alloc_init(FMDExtConfigurationRegistry);

  _objc_release_x1();
}

void sub_10013FE80(uint64_t a1)
{
  v1 = [*(a1 + 32) listner];
  [v1 supportedAccessoryTypesUpdated];
}

void sub_100140554(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"version"];
  v3 = [*(a1 + 40) version];
  if (!v3 || (v4 = v3, [*(a1 + 40) version], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v2, "compare:", v5), v5, v4, v6))
  {
    [*(a1 + 40) setVersion:v2];
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"accessoryTypes"];
    v8 = [[NSSet alloc] initWithArray:v7];
    [*(a1 + 40) setSupportedAccessories:v8];

    v9 = sub_10000BE38();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) version];
      v11 = [*(a1 + 40) supportedAccessories];
      *buf = 138412546;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SupportedAccessoryTypes updated with version = %@ and accessories = %@", buf, 0x16u);
    }

    [*(a1 + 40) _updateDisk];
    v12 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v19 = [*(a1 + 40) configurations];
          v20 = [v19 objectForKeyedSubscript:v18];

          if (!v20)
          {
            [v12 addObject:v18];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v21 = sub_10000BE38();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "accessoryTypesNeedConfig %@", buf, 0xCu);
    }

    [*(a1 + 40) fetchConfigForAccessoryTypes:v12];
    v22 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001408A0;
    block[3] = &unk_1002CD4C8;
    block[4] = *(a1 + 40);
    dispatch_async(v22, block);
  }
}

void sub_1001408A0(uint64_t a1)
{
  v1 = [*(a1 + 32) listner];
  [v1 supportedAccessoryTypesUpdated];
}

void sub_100140A58(id *a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a1[4];
  v1 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v36;
    v4 = &_mh_execute_header;
    v5 = @"statusCode";
    v6 = @"200";
    v30 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = sub_10000BE38();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v8;
          _os_log_impl(v4, v9, OS_LOG_TYPE_DEFAULT, "received configuration %@", buf, 0xCu);
        }

        v10 = sub_10000BE38();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 objectForKeyedSubscript:v5];
          *buf = 138412290;
          v40 = v11;
          _os_log_impl(v4, v10, OS_LOG_TYPE_DEFAULT, "received statusCode %@", buf, 0xCu);
        }

        v12 = [v8 objectForKeyedSubscript:v5];
        v13 = [v12 isEqualToString:v6];

        if (v13)
        {
          v14 = [[FMDExtAccessoryConfiguration alloc] initWithConfigurationInfo:v8];
          if (v14)
          {
            v15 = v5;
            v16 = v6;
            v17 = v4;
            v18 = [a1[5] configurations];
            v19 = [(FMDExtAccessoryConfiguration *)v14 accessoryType];
            v20 = [v18 objectForKeyedSubscript:v19];

            if (!v20 || (-[NSObject version](v20, "version"), v21 = objc_claimAutoreleasedReturnValue(), -[FMDExtAccessoryConfiguration version](v14, "version"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 isEqualToString:v22], v22, v21, (v23 & 1) == 0))
            {
              v24 = [a1[5] configurations];
              v25 = [(FMDExtAccessoryConfiguration *)v14 accessoryType];
              [v24 setObject:v14 forKeyedSubscript:v25];

              v26 = a1[6];
              v27 = [(FMDExtAccessoryConfiguration *)v14 accessoryType];
              [v26 addObject:v27];
            }

            v4 = v17;
            v6 = v16;
            v5 = v15;
            v3 = v30;
          }

          else
          {
            v20 = sub_10000BE38();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v8;
              _os_log_error_impl(v4, v20, OS_LOG_TYPE_ERROR, "Invalid configuration received %@", buf, 0xCu);
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v2 != v7);
      v2 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v2);
  }

  if ([a1[6] count])
  {
    [a1[5] _updateDisk];
    v28 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140E58;
    block[3] = &unk_1002CD478;
    v29 = a1[6];
    block[4] = a1[5];
    v34 = v29;
    dispatch_async(v28, block);
  }
}

void sub_100140E58(uint64_t a1)
{
  v2 = [*(a1 + 32) listner];
  [v2 configurationUpdated:*(a1 + 40)];
}

void sub_100140F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100140FAC(uint64_t a1)
{
  v4 = [*(a1 + 32) supportedAccessories];
  if ([v4 containsObject:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) defaultConfigurations];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
  }
}

void sub_10014117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100141194(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultConfigurations];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) defaultConfigurations];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = sub_10000BE38();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(*(*(a1 + 48) + 8) + 40) version];
      v11 = *(a1 + 40);
      v36 = 138412546;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found embedded default configuration version %@ for accessoryType %@ ", &v36, 0x16u);
    }
  }

  v12 = [*(a1 + 32) supportedAccessories];
  v13 = [v12 containsObject:*(a1 + 40)];

  if (v13)
  {
    v14 = [*(a1 + 32) configurations];
    v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];

    if (!v15)
    {
      v16 = sub_10000BE38();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100226C8C((a1 + 40), v16, v17, v18, v19, v20, v21, v22);
      }
    }

    v23 = [*(a1 + 32) configurations];
    v24 = [v23 objectForKeyedSubscript:*(a1 + 40)];

    v25 = sub_10000BE38();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 version];
      v27 = *v3;
      v36 = 138412546;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found server configuration version %@ for accessoryType %@ ", &v36, 0x16u);
    }

    v28 = *(*(a1 + 48) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v24;
  }

  else
  {
    v29 = sub_10000BE38();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100226C1C(v3, v29, v30, v31, v32, v33, v34, v35);
    }
  }
}

void sub_100141A30(id a1)
{
  qword_100314590 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

void sub_1001426C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1001428A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained terminate];
}

void sub_100142B2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCompletion:*(a1 + 32)];
}

id sub_100142D58(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  v4 = [*(a1 + 32) commandContext];
  v5 = [v4 lastCompletedIntentDictionary];
  v6 = [v5 objectForKeyedSubscript:@"id"];

  [v3 fm_safeSetObject:v6 forKey:@"lastCommandId"];

  return v3;
}